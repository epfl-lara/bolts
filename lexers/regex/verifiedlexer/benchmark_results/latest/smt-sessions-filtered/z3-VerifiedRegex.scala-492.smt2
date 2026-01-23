; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13898 () Bool)

(assert start!13898)

(declare-fun b!133593 () Bool)

(declare-fun res!62431 () Bool)

(declare-fun e!77351 () Bool)

(assert (=> b!133593 (=> res!62431 e!77351)))

(declare-datatypes ((B!789 0))(
  ( (B!790 (val!880 Int)) )
))
(declare-datatypes ((List!2198 0))(
  ( (Nil!2192) (Cons!2192 (h!7589 B!789) (t!22784 List!2198)) )
))
(declare-fun lt!40330 () List!2198)

(declare-fun lt!40329 () List!2198)

(declare-fun subseq!57 (List!2198 List!2198) Bool)

(assert (=> b!133593 (= res!62431 (not (subseq!57 lt!40330 lt!40329)))))

(declare-fun b!133594 () Bool)

(declare-fun e!77350 () Bool)

(declare-fun tp_is_empty!1433 () Bool)

(declare-fun tp!70552 () Bool)

(assert (=> b!133594 (= e!77350 (and tp_is_empty!1433 tp!70552))))

(declare-fun b!133595 () Bool)

(declare-fun e!77348 () Bool)

(declare-fun tp!70550 () Bool)

(assert (=> b!133595 (= e!77348 (and tp_is_empty!1433 tp!70550))))

(declare-fun b!133596 () Bool)

(declare-fun e!77346 () Bool)

(declare-fun e!77349 () Bool)

(assert (=> b!133596 (= e!77346 e!77349)))

(declare-fun res!62438 () Bool)

(assert (=> b!133596 (=> res!62438 e!77349)))

(declare-fun noDuplicate!88 (List!2198) Bool)

(assert (=> b!133596 (= res!62438 (not (noDuplicate!88 lt!40330)))))

(declare-fun err!473 () List!2198)

(assert (=> b!133596 (= lt!40330 err!473)))

(assert (=> b!133596 true))

(assert (=> b!133596 e!77350))

(declare-fun b!133597 () Bool)

(declare-fun res!62432 () Bool)

(assert (=> b!133597 (=> (not res!62432) (not e!77346))))

(declare-fun e!77347 () Bool)

(assert (=> b!133597 (= res!62432 e!77347)))

(declare-fun res!62433 () Bool)

(assert (=> b!133597 (=> res!62433 e!77347)))

(declare-fun newList!20 () List!2198)

(get-info :version)

(assert (=> b!133597 (= res!62433 (not ((_ is Cons!2192) newList!20)))))

(declare-fun b!133598 () Bool)

(declare-fun e!77344 () Bool)

(declare-fun baseList!9 () List!2198)

(declare-fun contains!372 (List!2198 B!789) Bool)

(assert (=> b!133598 (= e!77344 (not (contains!372 baseList!9 (h!7589 newList!20))))))

(declare-fun res!62435 () Bool)

(assert (=> start!13898 (=> (not res!62435) (not e!77346))))

(assert (=> start!13898 (= res!62435 (noDuplicate!88 baseList!9))))

(assert (=> start!13898 e!77346))

(assert (=> start!13898 e!77348))

(declare-fun e!77345 () Bool)

(assert (=> start!13898 e!77345))

(declare-fun b!133599 () Bool)

(declare-fun isPrefix!185 (List!2198 List!2198) Bool)

(assert (=> b!133599 (= e!77351 (not (isPrefix!185 baseList!9 lt!40330)))))

(declare-fun b!133600 () Bool)

(declare-fun res!62430 () Bool)

(assert (=> b!133600 (=> (not res!62430) (not e!77346))))

(assert (=> b!133600 (= res!62430 e!77344)))

(declare-fun res!62436 () Bool)

(assert (=> b!133600 (=> res!62436 e!77344)))

(assert (=> b!133600 (= res!62436 (not ((_ is Cons!2192) newList!20)))))

(declare-fun b!133601 () Bool)

(declare-fun tp!70551 () Bool)

(assert (=> b!133601 (= e!77345 (and tp_is_empty!1433 tp!70551))))

(declare-fun b!133602 () Bool)

(assert (=> b!133602 (= e!77347 (contains!372 baseList!9 (h!7589 newList!20)))))

(declare-fun b!133603 () Bool)

(assert (=> b!133603 (= e!77349 e!77351)))

(declare-fun res!62437 () Bool)

(assert (=> b!133603 (=> res!62437 e!77351)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!303 (List!2198) (InoxSet B!789))

(assert (=> b!133603 (= res!62437 (not (= (content!303 lt!40329) (content!303 lt!40330))))))

(declare-fun ++!466 (List!2198 List!2198) List!2198)

(assert (=> b!133603 (= lt!40329 (++!466 baseList!9 newList!20))))

(declare-fun b!133604 () Bool)

(declare-fun res!62434 () Bool)

(assert (=> b!133604 (=> (not res!62434) (not e!77346))))

(assert (=> b!133604 (= res!62434 (not ((_ is Nil!2192) newList!20)))))

(assert (= (and start!13898 res!62435) b!133600))

(assert (= (and b!133600 (not res!62436)) b!133598))

(assert (= (and b!133600 res!62430) b!133597))

(assert (= (and b!133597 (not res!62433)) b!133602))

(assert (= (and b!133597 res!62432) b!133604))

(assert (= (and b!133604 res!62434) b!133596))

(assert (= (and b!133596 ((_ is Cons!2192) err!473)) b!133594))

(assert (= (and b!133596 (not res!62438)) b!133603))

(assert (= (and b!133603 (not res!62437)) b!133593))

(assert (= (and b!133593 (not res!62431)) b!133599))

(assert (= (and start!13898 ((_ is Cons!2192) baseList!9)) b!133595))

(assert (= (and start!13898 ((_ is Cons!2192) newList!20)) b!133601))

(declare-fun m!118605 () Bool)

(assert (=> b!133593 m!118605))

(declare-fun m!118607 () Bool)

(assert (=> b!133602 m!118607))

(assert (=> b!133598 m!118607))

(declare-fun m!118609 () Bool)

(assert (=> b!133599 m!118609))

(declare-fun m!118611 () Bool)

(assert (=> start!13898 m!118611))

(declare-fun m!118613 () Bool)

(assert (=> b!133596 m!118613))

(declare-fun m!118615 () Bool)

(assert (=> b!133603 m!118615))

(declare-fun m!118617 () Bool)

(assert (=> b!133603 m!118617))

(declare-fun m!118619 () Bool)

(assert (=> b!133603 m!118619))

(check-sat (not start!13898) (not b!133595) (not b!133593) (not b!133602) (not b!133594) (not b!133599) (not b!133596) (not b!133601) (not b!133603) tp_is_empty!1433 (not b!133598))
(check-sat)
