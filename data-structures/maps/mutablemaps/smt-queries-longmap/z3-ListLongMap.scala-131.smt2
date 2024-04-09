; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2310 () Bool)

(assert start!2310)

(declare-fun res!11527 () Bool)

(declare-fun e!9165 () Bool)

(assert (=> start!2310 (=> (not res!11527) (not e!9165))))

(declare-datatypes ((B!586 0))(
  ( (B!587 (val!391 Int)) )
))
(declare-datatypes ((tuple2!564 0))(
  ( (tuple2!565 (_1!282 (_ BitVec 64)) (_2!282 B!586)) )
))
(declare-datatypes ((List!444 0))(
  ( (Nil!441) (Cons!440 (h!1006 tuple2!564) (t!2846 List!444)) )
))
(declare-datatypes ((ListLongMap!395 0))(
  ( (ListLongMap!396 (toList!213 List!444)) )
))
(declare-fun thiss!169 () ListLongMap!395)

(declare-fun isEmpty!112 (ListLongMap!395) Bool)

(assert (=> start!2310 (= res!11527 (not (isEmpty!112 thiss!169)))))

(assert (=> start!2310 e!9165))

(declare-fun e!9166 () Bool)

(declare-fun inv!753 (ListLongMap!395) Bool)

(assert (=> start!2310 (and (inv!753 thiss!169) e!9166)))

(declare-fun b!15163 () Bool)

(assert (=> b!15163 (= e!9165 (= (toList!213 thiss!169) Nil!441))))

(declare-fun b!15164 () Bool)

(declare-fun tp!2450 () Bool)

(assert (=> b!15164 (= e!9166 tp!2450)))

(assert (= (and start!2310 res!11527) b!15163))

(assert (= start!2310 b!15164))

(declare-fun m!10091 () Bool)

(assert (=> start!2310 m!10091))

(declare-fun m!10093 () Bool)

(assert (=> start!2310 m!10093))

(check-sat (not start!2310) (not b!15164))
(check-sat)
(get-model)

(declare-fun d!2521 () Bool)

(declare-fun isEmpty!114 (List!444) Bool)

(assert (=> d!2521 (= (isEmpty!112 thiss!169) (isEmpty!114 (toList!213 thiss!169)))))

(declare-fun bs!633 () Bool)

(assert (= bs!633 d!2521))

(declare-fun m!10100 () Bool)

(assert (=> bs!633 m!10100))

(assert (=> start!2310 d!2521))

(declare-fun d!2527 () Bool)

(declare-fun isStrictlySorted!131 (List!444) Bool)

(assert (=> d!2527 (= (inv!753 thiss!169) (isStrictlySorted!131 (toList!213 thiss!169)))))

(declare-fun bs!635 () Bool)

(assert (= bs!635 d!2527))

(declare-fun m!10105 () Bool)

(assert (=> bs!635 m!10105))

(assert (=> start!2310 d!2527))

(declare-fun b!15180 () Bool)

(declare-fun e!9178 () Bool)

(declare-fun tp_is_empty!765 () Bool)

(declare-fun tp!2459 () Bool)

(assert (=> b!15180 (= e!9178 (and tp_is_empty!765 tp!2459))))

(assert (=> b!15164 (= tp!2450 e!9178)))

(get-info :version)

(assert (= (and b!15164 ((_ is Cons!440) (toList!213 thiss!169))) b!15180))

(check-sat (not d!2521) (not d!2527) (not b!15180) tp_is_empty!765)
(check-sat)
(get-model)

(declare-fun d!2533 () Bool)

(assert (=> d!2533 (= (isEmpty!114 (toList!213 thiss!169)) ((_ is Nil!441) (toList!213 thiss!169)))))

(assert (=> d!2521 d!2533))

(declare-fun d!2537 () Bool)

(declare-fun res!11541 () Bool)

(declare-fun e!9192 () Bool)

(assert (=> d!2537 (=> res!11541 e!9192)))

(assert (=> d!2537 (= res!11541 (or ((_ is Nil!441) (toList!213 thiss!169)) ((_ is Nil!441) (t!2846 (toList!213 thiss!169)))))))

(assert (=> d!2537 (= (isStrictlySorted!131 (toList!213 thiss!169)) e!9192)))

(declare-fun b!15196 () Bool)

(declare-fun e!9193 () Bool)

(assert (=> b!15196 (= e!9192 e!9193)))

(declare-fun res!11542 () Bool)

(assert (=> b!15196 (=> (not res!11542) (not e!9193))))

(assert (=> b!15196 (= res!11542 (bvslt (_1!282 (h!1006 (toList!213 thiss!169))) (_1!282 (h!1006 (t!2846 (toList!213 thiss!169))))))))

(declare-fun b!15197 () Bool)

(assert (=> b!15197 (= e!9193 (isStrictlySorted!131 (t!2846 (toList!213 thiss!169))))))

(assert (= (and d!2537 (not res!11541)) b!15196))

(assert (= (and b!15196 res!11542) b!15197))

(declare-fun m!10113 () Bool)

(assert (=> b!15197 m!10113))

(assert (=> d!2527 d!2537))

(declare-fun b!15198 () Bool)

(declare-fun e!9194 () Bool)

(declare-fun tp!2463 () Bool)

(assert (=> b!15198 (= e!9194 (and tp_is_empty!765 tp!2463))))

(assert (=> b!15180 (= tp!2459 e!9194)))

(assert (= (and b!15180 ((_ is Cons!440) (t!2846 (toList!213 thiss!169)))) b!15198))

(check-sat (not b!15197) (not b!15198) tp_is_empty!765)
(check-sat)
