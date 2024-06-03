(define-non-fungible-token my-nft uint)

(define-map token-owners
  ((token-id uint))
  ((owner principal))
)

(define-public (mint (token-id uint) (recipient principal))
  (begin
    (try! (nft-mint? my-nft token-id recipient))
    (map-insert token-owners ((token-id token-id)) ((owner recipient)))
    (ok true)
  )
)

(define-read-only (get-owner (token-id uint))
  (ok (get owner (map-get? token-owners ((token-id token-id)))))
)
