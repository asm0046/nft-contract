;; NFT sözleşmesini test etmek için bazı senaryolar
(define-private (asserts-true (condition bool))
  (if (not condition) (err u999) (ok true))
)

(begin
  ;; Mint a new token
  (asserts-true (is-ok (mint u1 tx-sender)))
  
  ;; Check the owner of the minted token
  (asserts-true (is-eq (get-owner u1) (ok tx-sender)))
  
  ;; Mint another token to a different recipient
  (let ((recipient 'SP2C2X4QK8ZQ3BPDQ0E14G3HXHNEBPGNEEVZVW6GJ))
    (asserts-true (is-ok (mint u2 recipient)))
    (asserts-true (is-eq (get-owner u2) (ok recipient)))
  )
)
