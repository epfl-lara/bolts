; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412366 () Bool)

(assert start!412366)

(declare-fun b!4295585 () Bool)

(declare-fun b_free!127767 () Bool)

(declare-fun b_next!128471 () Bool)

(assert (=> b!4295585 (= b_free!127767 (not b_next!128471))))

(declare-fun tp!1319113 () Bool)

(declare-fun b_and!338983 () Bool)

(assert (=> b!4295585 (= tp!1319113 b_and!338983)))

(declare-fun b!4295584 () Bool)

(declare-fun b_free!127769 () Bool)

(declare-fun b_next!128473 () Bool)

(assert (=> b!4295584 (= b_free!127769 (not b_next!128473))))

(declare-fun tp!1319116 () Bool)

(declare-fun b_and!338985 () Bool)

(assert (=> b!4295584 (= tp!1319116 b_and!338985)))

(declare-fun b!4295578 () Bool)

(assert (=> b!4295578 true))

(declare-fun b!4295571 () Bool)

(declare-fun e!2669469 () Bool)

(declare-fun tp!1319111 () Bool)

(assert (=> b!4295571 (= e!2669469 tp!1319111)))

(declare-fun mapNonEmpty!20103 () Bool)

(declare-fun mapRes!20103 () Bool)

(declare-fun tp!1319110 () Bool)

(declare-fun tp!1319117 () Bool)

(assert (=> mapNonEmpty!20103 (= mapRes!20103 (and tp!1319110 tp!1319117))))

(declare-datatypes ((C!26180 0))(
  ( (C!26181 (val!15416 Int)) )
))
(declare-datatypes ((Regex!12991 0))(
  ( (ElementMatch!12991 (c!730848 C!26180)) (Concat!21310 (regOne!26494 Regex!12991) (regTwo!26494 Regex!12991)) (EmptyExpr!12991) (Star!12991 (reg!13320 Regex!12991)) (EmptyLang!12991) (Union!12991 (regOne!26495 Regex!12991) (regTwo!26495 Regex!12991)) )
))
(declare-datatypes ((List!47960 0))(
  ( (Nil!47836) (Cons!47836 (h!53256 Regex!12991) (t!354567 List!47960)) )
))
(declare-datatypes ((Context!5762 0))(
  ( (Context!5763 (exprs!3381 List!47960)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45602 0))(
  ( (tuple2!45603 (_1!26080 (InoxSet Context!5762)) (_2!26080 Int)) )
))
(declare-datatypes ((tuple2!45604 0))(
  ( (tuple2!45605 (_1!26081 tuple2!45602) (_2!26081 Int)) )
))
(declare-datatypes ((List!47961 0))(
  ( (Nil!47837) (Cons!47837 (h!53257 tuple2!45604) (t!354568 List!47961)) )
))
(declare-fun mapRest!20103 () (Array (_ BitVec 32) List!47961))

(declare-fun mapValue!20103 () List!47961)

(declare-datatypes ((array!15956 0))(
  ( (array!15957 (arr!7131 (Array (_ BitVec 32) (_ BitVec 64))) (size!35141 (_ BitVec 32))) )
))
(declare-datatypes ((array!15958 0))(
  ( (array!15959 (arr!7132 (Array (_ BitVec 32) List!47961)) (size!35142 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8946 0))(
  ( (LongMapFixedSize!8947 (defaultEntry!4858 Int) (mask!12938 (_ BitVec 32)) (extraKeys!4722 (_ BitVec 32)) (zeroValue!4732 List!47961) (minValue!4732 List!47961) (_size!8989 (_ BitVec 32)) (_keys!4773 array!15956) (_values!4754 array!15958) (_vacant!4534 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17701 0))(
  ( (Cell!17702 (v!41777 LongMapFixedSize!8946)) )
))
(declare-datatypes ((MutLongMap!4473 0))(
  ( (LongMap!4473 (underlying!9175 Cell!17701)) (MutLongMapExt!4472 (__x!29444 Int)) )
))
(declare-datatypes ((Cell!17703 0))(
  ( (Cell!17704 (v!41778 MutLongMap!4473)) )
))
(declare-datatypes ((Hashable!4389 0))(
  ( (HashableExt!4388 (__x!29445 Int)) )
))
(declare-datatypes ((MutableMap!4379 0))(
  ( (MutableMapExt!4378 (__x!29446 Int)) (HashMap!4379 (underlying!9176 Cell!17703) (hashF!6421 Hashable!4389) (_size!8990 (_ BitVec 32)) (defaultValue!4550 Int)) )
))
(declare-datatypes ((List!47962 0))(
  ( (Nil!47838) (Cons!47838 (h!53258 C!26180) (t!354569 List!47962)) )
))
(declare-datatypes ((IArray!28925 0))(
  ( (IArray!28926 (innerList!14520 List!47962)) )
))
(declare-datatypes ((Conc!14432 0))(
  ( (Node!14432 (left!35478 Conc!14432) (right!35808 Conc!14432) (csize!29094 Int) (cheight!14643 Int)) (Leaf!22329 (xs!17738 IArray!28925) (csize!29095 Int)) (Empty!14432) )
))
(declare-datatypes ((BalanceConc!28354 0))(
  ( (BalanceConc!28355 (c!730849 Conc!14432)) )
))
(declare-datatypes ((CacheFindLongestMatch!552 0))(
  ( (CacheFindLongestMatch!553 (cache!4519 MutableMap!4379) (totalInput!4404 BalanceConc!28354)) )
))
(declare-fun thiss!29019 () CacheFindLongestMatch!552)

(declare-fun mapKey!20103 () (_ BitVec 32))

(assert (=> mapNonEmpty!20103 (= (arr!7132 (_values!4754 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))) (store mapRest!20103 mapKey!20103 mapValue!20103))))

(declare-fun b!4295572 () Bool)

(declare-fun e!2669476 () Bool)

(declare-fun e!2669468 () Bool)

(assert (=> b!4295572 (= e!2669476 e!2669468)))

(declare-fun b!4295573 () Bool)

(declare-fun e!2669479 () Bool)

(declare-fun localTotalInput!12 () BalanceConc!28354)

(declare-fun tp!1319115 () Bool)

(declare-fun inv!63379 (Conc!14432) Bool)

(assert (=> b!4295573 (= e!2669479 (and (inv!63379 (c!730849 localTotalInput!12)) tp!1319115))))

(declare-fun b!4295574 () Bool)

(declare-fun e!2669475 () Bool)

(declare-fun e!2669471 () Bool)

(assert (=> b!4295574 (= e!2669475 e!2669471)))

(declare-fun res!1760740 () Bool)

(assert (=> b!4295574 (=> (not res!1760740) (not e!2669471))))

(declare-fun from!940 () Int)

(declare-fun lt!1517949 () Int)

(assert (=> b!4295574 (= res!1760740 (<= from!940 lt!1517949))))

(declare-fun size!35143 (BalanceConc!28354) Int)

(assert (=> b!4295574 (= lt!1517949 (size!35143 (totalInput!4404 thiss!29019)))))

(declare-fun mapIsEmpty!20103 () Bool)

(assert (=> mapIsEmpty!20103 mapRes!20103))

(declare-fun b!4295575 () Bool)

(declare-fun res!1760743 () Bool)

(assert (=> b!4295575 (=> (not res!1760743) (not e!2669471))))

(declare-fun z!500 () (InoxSet Context!5762))

(declare-fun res!14399 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!46 ((InoxSet Context!5762) Int BalanceConc!28354 Int) Int)

(assert (=> b!4295575 (= res!1760743 (= res!14399 (findLongestMatchInnerZipperFastV2!46 z!500 from!940 (totalInput!4404 thiss!29019) lt!1517949)))))

(declare-fun b!4295576 () Bool)

(declare-fun e!2669473 () Bool)

(assert (=> b!4295576 (= e!2669473 e!2669476)))

(declare-fun b!4295577 () Bool)

(declare-fun res!1760744 () Bool)

(assert (=> b!4295577 (=> (not res!1760744) (not e!2669475))))

(assert (=> b!4295577 (= res!1760744 (>= from!940 0))))

(get-info :version)

(assert (=> b!4295578 (= e!2669471 (not ((_ is HashMap!4379) (cache!4519 thiss!29019))))))

(declare-fun lambda!131672 () Int)

(declare-fun lt!1517946 () tuple2!45602)

(declare-fun forall!8566 (List!47961 Int) Bool)

(declare-datatypes ((ListMap!1397 0))(
  ( (ListMap!1398 (toList!2135 List!47961)) )
))
(declare-fun map!9817 (MutableMap!4379) ListMap!1397)

(declare-datatypes ((tuple2!45606 0))(
  ( (tuple2!45607 (_1!26082 Bool) (_2!26082 MutableMap!4379)) )
))
(declare-fun update!287 (MutableMap!4379 tuple2!45602 Int) tuple2!45606)

(assert (=> b!4295578 (forall!8566 (toList!2135 (map!9817 (_2!26082 (update!287 (cache!4519 thiss!29019) lt!1517946 res!14399)))) lambda!131672)))

(declare-datatypes ((Unit!66435 0))(
  ( (Unit!66436) )
))
(declare-fun lt!1517948 () Unit!66435)

(declare-fun lemmaUpdatePreservesForallPairs!39 (MutableMap!4379 tuple2!45602 Int Int) Unit!66435)

(assert (=> b!4295578 (= lt!1517948 (lemmaUpdatePreservesForallPairs!39 (cache!4519 thiss!29019) lt!1517946 res!14399 lambda!131672))))

(assert (=> b!4295578 (= lt!1517946 (tuple2!45603 z!500 from!940))))

(declare-fun b!4295579 () Bool)

(declare-fun e!2669474 () Bool)

(declare-fun tp!1319119 () Bool)

(assert (=> b!4295579 (= e!2669474 (and (inv!63379 (c!730849 (totalInput!4404 thiss!29019))) tp!1319119))))

(declare-fun res!1760742 () Bool)

(assert (=> start!412366 (=> (not res!1760742) (not e!2669475))))

(assert (=> start!412366 (= res!1760742 (= localTotalInput!12 (totalInput!4404 thiss!29019)))))

(assert (=> start!412366 e!2669475))

(declare-fun condSetEmpty!26713 () Bool)

(assert (=> start!412366 (= condSetEmpty!26713 (= z!500 ((as const (Array Context!5762 Bool)) false)))))

(declare-fun setRes!26713 () Bool)

(assert (=> start!412366 setRes!26713))

(assert (=> start!412366 true))

(declare-fun e!2669467 () Bool)

(declare-fun inv!63380 (CacheFindLongestMatch!552) Bool)

(assert (=> start!412366 (and (inv!63380 thiss!29019) e!2669467)))

(declare-fun inv!63381 (BalanceConc!28354) Bool)

(assert (=> start!412366 (and (inv!63381 localTotalInput!12) e!2669479)))

(declare-fun tp!1319112 () Bool)

(declare-fun setNonEmpty!26713 () Bool)

(declare-fun setElem!26713 () Context!5762)

(declare-fun inv!63382 (Context!5762) Bool)

(assert (=> setNonEmpty!26713 (= setRes!26713 (and tp!1319112 (inv!63382 setElem!26713) e!2669469))))

(declare-fun setRest!26713 () (InoxSet Context!5762))

(assert (=> setNonEmpty!26713 (= z!500 ((_ map or) (store ((as const (Array Context!5762 Bool)) false) setElem!26713 true) setRest!26713))))

(declare-fun setIsEmpty!26713 () Bool)

(assert (=> setIsEmpty!26713 setRes!26713))

(declare-fun b!4295580 () Bool)

(declare-fun e!2669478 () Bool)

(assert (=> b!4295580 (= e!2669467 (and e!2669478 (inv!63381 (totalInput!4404 thiss!29019)) e!2669474))))

(declare-fun b!4295581 () Bool)

(declare-fun e!2669470 () Bool)

(declare-fun lt!1517947 () MutLongMap!4473)

(assert (=> b!4295581 (= e!2669470 (and e!2669473 ((_ is LongMap!4473) lt!1517947)))))

(assert (=> b!4295581 (= lt!1517947 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))

(declare-fun b!4295582 () Bool)

(declare-fun res!1760741 () Bool)

(assert (=> b!4295582 (=> (not res!1760741) (not e!2669475))))

(declare-fun validCacheMapFindLongestMatch!87 (MutableMap!4379 BalanceConc!28354) Bool)

(assert (=> b!4295582 (= res!1760741 (validCacheMapFindLongestMatch!87 (cache!4519 thiss!29019) (totalInput!4404 thiss!29019)))))

(declare-fun b!4295583 () Bool)

(declare-fun e!2669472 () Bool)

(declare-fun tp!1319109 () Bool)

(assert (=> b!4295583 (= e!2669472 (and tp!1319109 mapRes!20103))))

(declare-fun condMapEmpty!20103 () Bool)

(declare-fun mapDefault!20103 () List!47961)

(assert (=> b!4295583 (= condMapEmpty!20103 (= (arr!7132 (_values!4754 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))) ((as const (Array (_ BitVec 32) List!47961)) mapDefault!20103)))))

(assert (=> b!4295584 (= e!2669478 (and e!2669470 tp!1319116))))

(declare-fun tp!1319114 () Bool)

(declare-fun tp!1319118 () Bool)

(declare-fun array_inv!5111 (array!15956) Bool)

(declare-fun array_inv!5112 (array!15958) Bool)

(assert (=> b!4295585 (= e!2669468 (and tp!1319113 tp!1319118 tp!1319114 (array_inv!5111 (_keys!4773 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))) (array_inv!5112 (_values!4754 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))) e!2669472))))

(assert (= (and start!412366 res!1760742) b!4295582))

(assert (= (and b!4295582 res!1760741) b!4295577))

(assert (= (and b!4295577 res!1760744) b!4295574))

(assert (= (and b!4295574 res!1760740) b!4295575))

(assert (= (and b!4295575 res!1760743) b!4295578))

(assert (= (and start!412366 condSetEmpty!26713) setIsEmpty!26713))

(assert (= (and start!412366 (not condSetEmpty!26713)) setNonEmpty!26713))

(assert (= setNonEmpty!26713 b!4295571))

(assert (= (and b!4295583 condMapEmpty!20103) mapIsEmpty!20103))

(assert (= (and b!4295583 (not condMapEmpty!20103)) mapNonEmpty!20103))

(assert (= b!4295585 b!4295583))

(assert (= b!4295572 b!4295585))

(assert (= b!4295576 b!4295572))

(assert (= (and b!4295581 ((_ is LongMap!4473) (v!41778 (underlying!9176 (cache!4519 thiss!29019))))) b!4295576))

(assert (= b!4295584 b!4295581))

(assert (= (and b!4295580 ((_ is HashMap!4379) (cache!4519 thiss!29019))) b!4295584))

(assert (= b!4295580 b!4295579))

(assert (= start!412366 b!4295580))

(assert (= start!412366 b!4295573))

(declare-fun m!4888071 () Bool)

(assert (=> b!4295574 m!4888071))

(declare-fun m!4888073 () Bool)

(assert (=> b!4295580 m!4888073))

(declare-fun m!4888075 () Bool)

(assert (=> b!4295585 m!4888075))

(declare-fun m!4888077 () Bool)

(assert (=> b!4295585 m!4888077))

(declare-fun m!4888079 () Bool)

(assert (=> mapNonEmpty!20103 m!4888079))

(declare-fun m!4888081 () Bool)

(assert (=> b!4295579 m!4888081))

(declare-fun m!4888083 () Bool)

(assert (=> b!4295575 m!4888083))

(declare-fun m!4888085 () Bool)

(assert (=> b!4295573 m!4888085))

(declare-fun m!4888087 () Bool)

(assert (=> b!4295582 m!4888087))

(declare-fun m!4888089 () Bool)

(assert (=> b!4295578 m!4888089))

(declare-fun m!4888091 () Bool)

(assert (=> b!4295578 m!4888091))

(declare-fun m!4888093 () Bool)

(assert (=> b!4295578 m!4888093))

(declare-fun m!4888095 () Bool)

(assert (=> b!4295578 m!4888095))

(declare-fun m!4888097 () Bool)

(assert (=> start!412366 m!4888097))

(declare-fun m!4888099 () Bool)

(assert (=> start!412366 m!4888099))

(declare-fun m!4888101 () Bool)

(assert (=> setNonEmpty!26713 m!4888101))

(check-sat (not b!4295583) (not b!4295578) (not start!412366) (not b_next!128471) b_and!338985 (not b!4295585) b_and!338983 (not b!4295575) (not b!4295579) (not b!4295573) (not b!4295574) (not mapNonEmpty!20103) (not b!4295580) (not b!4295571) (not b_next!128473) (not setNonEmpty!26713) (not b!4295582))
(check-sat b_and!338985 b_and!338983 (not b_next!128473) (not b_next!128471))
(get-model)

(declare-fun d!1266073 () Bool)

(declare-fun res!1760747 () Bool)

(declare-fun e!2669482 () Bool)

(assert (=> d!1266073 (=> (not res!1760747) (not e!2669482))))

(assert (=> d!1266073 (= res!1760747 ((_ is HashMap!4379) (cache!4519 thiss!29019)))))

(assert (=> d!1266073 (= (inv!63380 thiss!29019) e!2669482)))

(declare-fun b!4295590 () Bool)

(assert (=> b!4295590 (= e!2669482 (validCacheMapFindLongestMatch!87 (cache!4519 thiss!29019) (totalInput!4404 thiss!29019)))))

(assert (= (and d!1266073 res!1760747) b!4295590))

(assert (=> b!4295590 m!4888087))

(assert (=> start!412366 d!1266073))

(declare-fun d!1266075 () Bool)

(declare-fun isBalanced!3889 (Conc!14432) Bool)

(assert (=> d!1266075 (= (inv!63381 localTotalInput!12) (isBalanced!3889 (c!730849 localTotalInput!12)))))

(declare-fun bs!603777 () Bool)

(assert (= bs!603777 d!1266075))

(declare-fun m!4888103 () Bool)

(assert (=> bs!603777 m!4888103))

(assert (=> start!412366 d!1266075))

(declare-fun bs!603778 () Bool)

(declare-fun b!4295596 () Bool)

(assert (= bs!603778 (and b!4295596 b!4295578)))

(declare-fun lambda!131675 () Int)

(assert (=> bs!603778 (= (= (totalInput!4404 thiss!29019) localTotalInput!12) (= lambda!131675 lambda!131672))))

(assert (=> b!4295596 true))

(declare-fun d!1266077 () Bool)

(declare-fun res!1760752 () Bool)

(declare-fun e!2669485 () Bool)

(assert (=> d!1266077 (=> (not res!1760752) (not e!2669485))))

(declare-fun valid!3451 (MutableMap!4379) Bool)

(assert (=> d!1266077 (= res!1760752 (valid!3451 (cache!4519 thiss!29019)))))

(assert (=> d!1266077 (= (validCacheMapFindLongestMatch!87 (cache!4519 thiss!29019) (totalInput!4404 thiss!29019)) e!2669485)))

(declare-fun b!4295595 () Bool)

(declare-fun res!1760753 () Bool)

(assert (=> b!4295595 (=> (not res!1760753) (not e!2669485))))

(declare-fun invariantList!517 (List!47961) Bool)

(assert (=> b!4295595 (= res!1760753 (invariantList!517 (toList!2135 (map!9817 (cache!4519 thiss!29019)))))))

(assert (=> b!4295596 (= e!2669485 (forall!8566 (toList!2135 (map!9817 (cache!4519 thiss!29019))) lambda!131675))))

(assert (= (and d!1266077 res!1760752) b!4295595))

(assert (= (and b!4295595 res!1760753) b!4295596))

(declare-fun m!4888106 () Bool)

(assert (=> d!1266077 m!4888106))

(declare-fun m!4888108 () Bool)

(assert (=> b!4295595 m!4888108))

(declare-fun m!4888110 () Bool)

(assert (=> b!4295595 m!4888110))

(assert (=> b!4295596 m!4888108))

(declare-fun m!4888112 () Bool)

(assert (=> b!4295596 m!4888112))

(assert (=> b!4295582 d!1266077))

(declare-fun d!1266079 () Bool)

(declare-fun lt!1517952 () Int)

(declare-fun size!35144 (List!47962) Int)

(declare-fun list!17366 (BalanceConc!28354) List!47962)

(assert (=> d!1266079 (= lt!1517952 (size!35144 (list!17366 (totalInput!4404 thiss!29019))))))

(declare-fun size!35145 (Conc!14432) Int)

(assert (=> d!1266079 (= lt!1517952 (size!35145 (c!730849 (totalInput!4404 thiss!29019))))))

(assert (=> d!1266079 (= (size!35143 (totalInput!4404 thiss!29019)) lt!1517952)))

(declare-fun bs!603779 () Bool)

(assert (= bs!603779 d!1266079))

(declare-fun m!4888114 () Bool)

(assert (=> bs!603779 m!4888114))

(assert (=> bs!603779 m!4888114))

(declare-fun m!4888116 () Bool)

(assert (=> bs!603779 m!4888116))

(declare-fun m!4888118 () Bool)

(assert (=> bs!603779 m!4888118))

(assert (=> b!4295574 d!1266079))

(declare-fun d!1266081 () Bool)

(declare-fun res!1760758 () Bool)

(declare-fun e!2669490 () Bool)

(assert (=> d!1266081 (=> res!1760758 e!2669490)))

(assert (=> d!1266081 (= res!1760758 ((_ is Nil!47837) (toList!2135 (map!9817 (_2!26082 (update!287 (cache!4519 thiss!29019) lt!1517946 res!14399))))))))

(assert (=> d!1266081 (= (forall!8566 (toList!2135 (map!9817 (_2!26082 (update!287 (cache!4519 thiss!29019) lt!1517946 res!14399)))) lambda!131672) e!2669490)))

(declare-fun b!4295601 () Bool)

(declare-fun e!2669491 () Bool)

(assert (=> b!4295601 (= e!2669490 e!2669491)))

(declare-fun res!1760759 () Bool)

(assert (=> b!4295601 (=> (not res!1760759) (not e!2669491))))

(declare-fun dynLambda!20328 (Int tuple2!45604) Bool)

(assert (=> b!4295601 (= res!1760759 (dynLambda!20328 lambda!131672 (h!53257 (toList!2135 (map!9817 (_2!26082 (update!287 (cache!4519 thiss!29019) lt!1517946 res!14399)))))))))

(declare-fun b!4295602 () Bool)

(assert (=> b!4295602 (= e!2669491 (forall!8566 (t!354568 (toList!2135 (map!9817 (_2!26082 (update!287 (cache!4519 thiss!29019) lt!1517946 res!14399))))) lambda!131672))))

(assert (= (and d!1266081 (not res!1760758)) b!4295601))

(assert (= (and b!4295601 res!1760759) b!4295602))

(declare-fun b_lambda!126121 () Bool)

(assert (=> (not b_lambda!126121) (not b!4295601)))

(declare-fun m!4888120 () Bool)

(assert (=> b!4295601 m!4888120))

(declare-fun m!4888122 () Bool)

(assert (=> b!4295602 m!4888122))

(assert (=> b!4295578 d!1266081))

(declare-fun d!1266083 () Bool)

(declare-fun lt!1517955 () ListMap!1397)

(assert (=> d!1266083 (invariantList!517 (toList!2135 lt!1517955))))

(declare-datatypes ((tuple2!45608 0))(
  ( (tuple2!45609 (_1!26083 (_ BitVec 64)) (_2!26083 List!47961)) )
))
(declare-datatypes ((List!47963 0))(
  ( (Nil!47839) (Cons!47839 (h!53259 tuple2!45608) (t!354570 List!47963)) )
))
(declare-fun extractMap!253 (List!47963) ListMap!1397)

(declare-datatypes ((ListLongMap!767 0))(
  ( (ListLongMap!768 (toList!2136 List!47963)) )
))
(declare-fun map!9818 (MutLongMap!4473) ListLongMap!767)

(assert (=> d!1266083 (= lt!1517955 (extractMap!253 (toList!2136 (map!9818 (v!41778 (underlying!9176 (_2!26082 (update!287 (cache!4519 thiss!29019) lt!1517946 res!14399))))))))))

(assert (=> d!1266083 (valid!3451 (_2!26082 (update!287 (cache!4519 thiss!29019) lt!1517946 res!14399)))))

(assert (=> d!1266083 (= (map!9817 (_2!26082 (update!287 (cache!4519 thiss!29019) lt!1517946 res!14399))) lt!1517955)))

(declare-fun bs!603780 () Bool)

(assert (= bs!603780 d!1266083))

(declare-fun m!4888124 () Bool)

(assert (=> bs!603780 m!4888124))

(declare-fun m!4888126 () Bool)

(assert (=> bs!603780 m!4888126))

(declare-fun m!4888128 () Bool)

(assert (=> bs!603780 m!4888128))

(declare-fun m!4888130 () Bool)

(assert (=> bs!603780 m!4888130))

(assert (=> b!4295578 d!1266083))

(declare-fun bs!603781 () Bool)

(declare-fun b!4295643 () Bool)

(declare-fun b!4295650 () Bool)

(assert (= bs!603781 (and b!4295643 b!4295650)))

(declare-fun lambda!131685 () Int)

(declare-fun lambda!131684 () Int)

(assert (=> bs!603781 (= lambda!131685 lambda!131684)))

(declare-fun b!4295641 () Bool)

(declare-fun e!2669521 () Unit!66435)

(declare-fun Unit!66437 () Unit!66435)

(assert (=> b!4295641 (= e!2669521 Unit!66437)))

(declare-fun b!4295642 () Bool)

(declare-fun e!2669522 () List!47961)

(assert (=> b!4295642 (= e!2669522 Nil!47837)))

(declare-fun bm!294589 () Bool)

(declare-fun call!294606 () ListMap!1397)

(declare-fun lt!1518098 () ListLongMap!767)

(assert (=> bm!294589 (= call!294606 (extractMap!253 (toList!2136 lt!1518098)))))

(declare-fun bm!294590 () Bool)

(declare-fun call!294598 () ListMap!1397)

(declare-fun call!294624 () ListLongMap!767)

(assert (=> bm!294590 (= call!294598 (extractMap!253 (toList!2136 call!294624)))))

(declare-fun call!294595 () ListLongMap!767)

(declare-fun bm!294591 () Bool)

(declare-fun c!730865 () Bool)

(declare-fun call!294602 () Bool)

(declare-fun forall!8567 (List!47963 Int) Bool)

(assert (=> bm!294591 (= call!294602 (forall!8567 (toList!2136 call!294595) (ite c!730865 lambda!131684 lambda!131685)))))

(declare-fun bm!294592 () Bool)

(declare-fun call!294617 () ListMap!1397)

(declare-fun call!294609 () ListMap!1397)

(assert (=> bm!294592 (= call!294617 call!294609)))

(declare-fun lt!1518093 () (_ BitVec 64))

(declare-fun lt!1518100 () List!47961)

(declare-fun call!294618 () Unit!66435)

(declare-fun lt!1518107 () List!47961)

(declare-fun bm!294593 () Bool)

(declare-fun lt!1518114 () (_ BitVec 64))

(declare-fun lemmaRemovePairForKeyPreservesHash!94 (List!47961 tuple2!45602 (_ BitVec 64) Hashable!4389) Unit!66435)

(assert (=> bm!294593 (= call!294618 (lemmaRemovePairForKeyPreservesHash!94 (ite c!730865 lt!1518100 lt!1518107) lt!1517946 (ite c!730865 lt!1518093 lt!1518114) (hashF!6421 (cache!4519 thiss!29019))))))

(declare-fun bm!294594 () Bool)

(declare-fun call!294596 () ListMap!1397)

(declare-fun lt!1518097 () tuple2!45606)

(assert (=> bm!294594 (= call!294596 (map!9817 (_2!26082 lt!1518097)))))

(declare-fun bm!294595 () Bool)

(declare-fun call!294612 () ListMap!1397)

(declare-fun +!129 (ListMap!1397 tuple2!45604) ListMap!1397)

(assert (=> bm!294595 (= call!294612 (+!129 call!294606 (tuple2!45605 lt!1517946 res!14399)))))

(declare-fun lt!1518119 () List!47961)

(declare-fun lt!1518109 () List!47961)

(declare-fun bm!294596 () Bool)

(declare-fun +!130 (ListLongMap!767 tuple2!45608) ListLongMap!767)

(assert (=> bm!294596 (= call!294624 (+!130 lt!1518098 (ite c!730865 (tuple2!45609 lt!1518093 lt!1518119) (tuple2!45609 lt!1518114 lt!1518109))))))

(declare-fun d!1266085 () Bool)

(declare-fun e!2669514 () Bool)

(assert (=> d!1266085 e!2669514))

(declare-fun res!1760772 () Bool)

(assert (=> d!1266085 (=> (not res!1760772) (not e!2669514))))

(assert (=> d!1266085 (= res!1760772 ((_ is HashMap!4379) (_2!26082 lt!1518097)))))

(declare-fun lt!1518067 () tuple2!45606)

(assert (=> d!1266085 (= lt!1518097 (tuple2!45607 (_1!26082 lt!1518067) (_2!26082 lt!1518067)))))

(declare-fun e!2669524 () tuple2!45606)

(assert (=> d!1266085 (= lt!1518067 e!2669524)))

(declare-fun contains!9796 (MutableMap!4379 tuple2!45602) Bool)

(assert (=> d!1266085 (= c!730865 (contains!9796 (cache!4519 thiss!29019) lt!1517946))))

(assert (=> d!1266085 (= lt!1518098 (map!9818 (v!41778 (underlying!9176 (cache!4519 thiss!29019)))))))

(declare-fun lt!1518103 () ListMap!1397)

(assert (=> d!1266085 (= lt!1518103 (map!9817 (cache!4519 thiss!29019)))))

(assert (=> d!1266085 (valid!3451 (cache!4519 thiss!29019))))

(assert (=> d!1266085 (= (update!287 (cache!4519 thiss!29019) lt!1517946 res!14399) lt!1518097)))

(declare-fun call!294613 () ListMap!1397)

(declare-fun contains!9797 (ListMap!1397 tuple2!45602) Bool)

(assert (=> b!4295643 (contains!9797 call!294613 lt!1517946)))

(declare-fun lt!1518077 () Unit!66435)

(declare-fun Unit!66438 () Unit!66435)

(assert (=> b!4295643 (= lt!1518077 Unit!66438)))

(declare-fun call!294620 () ListMap!1397)

(assert (=> b!4295643 (contains!9797 call!294620 lt!1517946)))

(declare-fun lt!1518086 () Unit!66435)

(declare-fun lt!1518110 () Unit!66435)

(assert (=> b!4295643 (= lt!1518086 lt!1518110)))

(declare-fun call!294621 () Bool)

(declare-fun call!294600 () Bool)

(assert (=> b!4295643 (= call!294621 call!294600)))

(declare-fun call!294601 () Unit!66435)

(assert (=> b!4295643 (= lt!1518110 call!294601)))

(declare-fun lt!1518084 () ListMap!1397)

(assert (=> b!4295643 (= lt!1518084 call!294620)))

(declare-fun lt!1518116 () ListMap!1397)

(assert (=> b!4295643 (= lt!1518116 call!294613)))

(declare-fun lt!1518115 () Unit!66435)

(declare-fun Unit!66439 () Unit!66435)

(assert (=> b!4295643 (= lt!1518115 Unit!66439)))

(declare-fun call!294623 () Bool)

(assert (=> b!4295643 call!294623))

(declare-fun lt!1518120 () Unit!66435)

(declare-fun Unit!66440 () Unit!66435)

(assert (=> b!4295643 (= lt!1518120 Unit!66440)))

(declare-fun call!294611 () Bool)

(assert (=> b!4295643 call!294611))

(declare-fun lt!1518091 () Unit!66435)

(declare-fun Unit!66441 () Unit!66435)

(assert (=> b!4295643 (= lt!1518091 Unit!66441)))

(assert (=> b!4295643 call!294602))

(declare-fun lt!1518117 () Unit!66435)

(declare-fun lt!1518072 () Unit!66435)

(assert (=> b!4295643 (= lt!1518117 lt!1518072)))

(declare-fun call!294616 () Bool)

(assert (=> b!4295643 call!294616))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!19 (ListLongMap!767 (_ BitVec 64) List!47961 tuple2!45602 Int Hashable!4389) Unit!66435)

(assert (=> b!4295643 (= lt!1518072 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!19 lt!1518098 lt!1518114 lt!1518109 lt!1517946 res!14399 (hashF!6421 (cache!4519 thiss!29019))))))

(declare-fun lt!1518095 () Unit!66435)

(declare-fun lt!1518089 () Unit!66435)

(assert (=> b!4295643 (= lt!1518095 lt!1518089)))

(declare-fun e!2669520 () Bool)

(assert (=> b!4295643 e!2669520))

(declare-fun res!1760773 () Bool)

(assert (=> b!4295643 (=> (not res!1760773) (not e!2669520))))

(declare-fun call!294610 () Bool)

(assert (=> b!4295643 (= res!1760773 call!294610)))

(declare-fun lt!1518080 () ListLongMap!767)

(assert (=> b!4295643 (= lt!1518080 call!294624)))

(declare-fun call!294604 () Unit!66435)

(assert (=> b!4295643 (= lt!1518089 call!294604)))

(declare-fun lt!1518111 () Unit!66435)

(assert (=> b!4295643 (= lt!1518111 e!2669521)))

(declare-fun c!730870 () Bool)

(declare-fun isEmpty!28031 (List!47961) Bool)

(assert (=> b!4295643 (= c!730870 (not (isEmpty!28031 lt!1518107)))))

(declare-fun e!2669523 () Unit!66435)

(declare-fun Unit!66442 () Unit!66435)

(assert (=> b!4295643 (= e!2669523 Unit!66442)))

(declare-fun call!294615 () List!47961)

(declare-fun bm!294597 () Bool)

(declare-fun apply!10852 (MutLongMap!4473 (_ BitVec 64)) List!47961)

(assert (=> bm!294597 (= call!294615 (apply!10852 (v!41778 (underlying!9176 (cache!4519 thiss!29019))) (ite c!730865 lt!1518093 lt!1518114)))))

(declare-fun b!4295644 () Bool)

(declare-fun e!2669519 () Bool)

(assert (=> b!4295644 (= e!2669514 e!2669519)))

(declare-fun c!730869 () Bool)

(assert (=> b!4295644 (= c!730869 (_1!26082 lt!1518097))))

(declare-fun bm!294598 () Bool)

(declare-datatypes ((tuple2!45610 0))(
  ( (tuple2!45611 (_1!26084 Bool) (_2!26084 MutLongMap!4473)) )
))
(declare-fun call!294622 () tuple2!45610)

(declare-fun update!288 (MutLongMap!4473 (_ BitVec 64) List!47961) tuple2!45610)

(assert (=> bm!294598 (= call!294622 (update!288 (v!41778 (underlying!9176 (cache!4519 thiss!29019))) (ite c!730865 lt!1518093 lt!1518114) (ite c!730865 lt!1518119 lt!1518109)))))

(declare-fun b!4295645 () Bool)

(declare-fun e!2669517 () Bool)

(assert (=> b!4295645 (= e!2669519 e!2669517)))

(declare-fun res!1760771 () Bool)

(assert (=> b!4295645 (= res!1760771 (contains!9797 call!294596 lt!1517946))))

(assert (=> b!4295645 (=> (not res!1760771) (not e!2669517))))

(declare-fun bm!294599 () Bool)

(declare-fun call!294599 () (_ BitVec 64))

(declare-fun hash!823 (Hashable!4389 tuple2!45602) (_ BitVec 64))

(assert (=> bm!294599 (= call!294599 (hash!823 (hashF!6421 (cache!4519 thiss!29019)) lt!1517946))))

(declare-fun b!4295646 () Bool)

(assert (=> b!4295646 (= call!294613 lt!1518103)))

(declare-fun lt!1518075 () Unit!66435)

(declare-fun Unit!66443 () Unit!66435)

(assert (=> b!4295646 (= lt!1518075 Unit!66443)))

(declare-fun call!294614 () Bool)

(assert (=> b!4295646 call!294614))

(declare-fun Unit!66444 () Unit!66435)

(assert (=> b!4295646 (= e!2669523 Unit!66444)))

(declare-fun bm!294600 () Bool)

(declare-fun call!294607 () ListMap!1397)

(assert (=> bm!294600 (= call!294607 (map!9817 (cache!4519 thiss!29019)))))

(declare-fun bm!294601 () Bool)

(declare-fun lt!1518094 () MutableMap!4379)

(declare-fun lt!1518087 () MutableMap!4379)

(assert (=> bm!294601 (= call!294614 (valid!3451 (ite c!730865 lt!1518087 lt!1518094)))))

(declare-fun lt!1518076 () tuple2!45610)

(declare-fun lt!1518102 () tuple2!45610)

(declare-fun bm!294602 () Bool)

(assert (=> bm!294602 (= call!294595 (map!9818 (ite c!730865 (_2!26084 lt!1518102) (_2!26084 lt!1518076))))))

(declare-fun bm!294603 () Bool)

(assert (=> bm!294603 (= call!294613 call!294609)))

(declare-fun bm!294604 () Bool)

(declare-fun call!294594 () Bool)

(declare-fun e!2669518 () ListMap!1397)

(declare-fun eq!80 (ListMap!1397 ListMap!1397) Bool)

(assert (=> bm!294604 (= call!294594 (eq!80 call!294596 e!2669518))))

(declare-fun c!730867 () Bool)

(assert (=> bm!294604 (= c!730867 c!730869)))

(declare-fun b!4295647 () Bool)

(declare-fun call!294619 () Bool)

(assert (=> b!4295647 (= e!2669520 call!294619)))

(declare-fun b!4295648 () Bool)

(assert (=> b!4295648 (= call!294617 lt!1518103)))

(declare-fun lt!1518068 () Unit!66435)

(declare-fun Unit!66445 () Unit!66435)

(assert (=> b!4295648 (= lt!1518068 Unit!66445)))

(assert (=> b!4295648 call!294614))

(declare-fun e!2669515 () Unit!66435)

(declare-fun Unit!66446 () Unit!66435)

(assert (=> b!4295648 (= e!2669515 Unit!66446)))

(declare-fun b!4295649 () Bool)

(declare-fun lt!1518073 () Unit!66435)

(assert (=> b!4295649 (= e!2669521 lt!1518073)))

(declare-fun lt!1518071 () Unit!66435)

(declare-fun call!294608 () Unit!66435)

(assert (=> b!4295649 (= lt!1518071 call!294608)))

(declare-fun call!294597 () Bool)

(assert (=> b!4295649 call!294597))

(declare-fun lt!1518066 () Unit!66435)

(assert (=> b!4295649 (= lt!1518066 lt!1518071)))

(assert (=> b!4295649 (= lt!1518073 call!294618)))

(declare-fun call!294603 () Bool)

(assert (=> b!4295649 call!294603))

(assert (=> b!4295650 call!294623))

(declare-fun lt!1518096 () Unit!66435)

(declare-fun Unit!66447 () Unit!66435)

(assert (=> b!4295650 (= lt!1518096 Unit!66447)))

(assert (=> b!4295650 call!294611))

(declare-fun lt!1518088 () Unit!66435)

(declare-fun Unit!66448 () Unit!66435)

(assert (=> b!4295650 (= lt!1518088 Unit!66448)))

(assert (=> b!4295650 call!294602))

(declare-fun lt!1518118 () Unit!66435)

(declare-fun lt!1518085 () Unit!66435)

(assert (=> b!4295650 (= lt!1518118 lt!1518085)))

(assert (=> b!4295650 (= call!294621 call!294600)))

(assert (=> b!4295650 (= lt!1518085 call!294601)))

(declare-fun lt!1518106 () ListMap!1397)

(assert (=> b!4295650 (= lt!1518106 call!294620)))

(declare-fun lt!1518090 () ListMap!1397)

(assert (=> b!4295650 (= lt!1518090 call!294617)))

(declare-fun lt!1518113 () Unit!66435)

(declare-fun lt!1518101 () Unit!66435)

(assert (=> b!4295650 (= lt!1518113 lt!1518101)))

(assert (=> b!4295650 call!294616))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!19 (ListLongMap!767 (_ BitVec 64) List!47961 tuple2!45602 Int Hashable!4389) Unit!66435)

(assert (=> b!4295650 (= lt!1518101 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!19 lt!1518098 lt!1518093 lt!1518119 lt!1517946 res!14399 (hashF!6421 (cache!4519 thiss!29019))))))

(declare-fun lt!1518082 () Unit!66435)

(declare-fun lt!1518078 () Unit!66435)

(assert (=> b!4295650 (= lt!1518082 lt!1518078)))

(declare-fun e!2669516 () Bool)

(assert (=> b!4295650 e!2669516))

(declare-fun res!1760770 () Bool)

(assert (=> b!4295650 (=> (not res!1760770) (not e!2669516))))

(assert (=> b!4295650 (= res!1760770 call!294610)))

(declare-fun lt!1518069 () ListLongMap!767)

(assert (=> b!4295650 (= lt!1518069 call!294624)))

(assert (=> b!4295650 (= lt!1518078 call!294604)))

(declare-fun lt!1518104 () Unit!66435)

(declare-fun Unit!66449 () Unit!66435)

(assert (=> b!4295650 (= lt!1518104 Unit!66449)))

(declare-fun noDuplicateKeys!135 (List!47961) Bool)

(assert (=> b!4295650 (noDuplicateKeys!135 lt!1518119)))

(declare-fun lt!1518079 () Unit!66435)

(declare-fun Unit!66450 () Unit!66435)

(assert (=> b!4295650 (= lt!1518079 Unit!66450)))

(declare-fun call!294605 () List!47961)

(declare-fun containsKey!212 (List!47961 tuple2!45602) Bool)

(assert (=> b!4295650 (not (containsKey!212 call!294605 lt!1517946))))

(declare-fun lt!1518112 () Unit!66435)

(declare-fun Unit!66451 () Unit!66435)

(assert (=> b!4295650 (= lt!1518112 Unit!66451)))

(declare-fun lt!1518083 () Unit!66435)

(declare-fun lt!1518074 () Unit!66435)

(assert (=> b!4295650 (= lt!1518083 lt!1518074)))

(assert (=> b!4295650 (noDuplicateKeys!135 call!294605)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!112 (List!47961 tuple2!45602) Unit!66435)

(assert (=> b!4295650 (= lt!1518074 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!112 lt!1518100 lt!1517946))))

(declare-fun lt!1518099 () Unit!66435)

(declare-fun lt!1518070 () Unit!66435)

(assert (=> b!4295650 (= lt!1518099 lt!1518070)))

(assert (=> b!4295650 call!294603))

(assert (=> b!4295650 (= lt!1518070 call!294618)))

(declare-fun lt!1518081 () Unit!66435)

(declare-fun lt!1518105 () Unit!66435)

(assert (=> b!4295650 (= lt!1518081 lt!1518105)))

(assert (=> b!4295650 call!294597))

(assert (=> b!4295650 (= lt!1518105 call!294608)))

(declare-fun Unit!66452 () Unit!66435)

(assert (=> b!4295650 (= e!2669515 Unit!66452)))

(declare-fun bm!294605 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!98 (List!47963 (_ BitVec 64) List!47961 Hashable!4389) Unit!66435)

(assert (=> bm!294605 (= call!294608 (lemmaInLongMapAllKeySameHashThenForTuple!98 (toList!2136 lt!1518098) (ite c!730865 lt!1518093 lt!1518114) (ite c!730865 lt!1518100 lt!1518107) (hashF!6421 (cache!4519 thiss!29019))))))

(declare-fun bm!294606 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!85 (ListLongMap!767 (_ BitVec 64) List!47961 Hashable!4389) Unit!66435)

(assert (=> bm!294606 (= call!294604 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!85 lt!1518098 (ite c!730865 lt!1518093 lt!1518114) (ite c!730865 lt!1518119 lt!1518109) (hashF!6421 (cache!4519 thiss!29019))))))

(declare-fun bm!294607 () Bool)

(assert (=> bm!294607 (= call!294620 (+!129 lt!1518103 (tuple2!45605 lt!1517946 res!14399)))))

(declare-fun bm!294608 () Bool)

(assert (=> bm!294608 (= call!294610 (forall!8567 (ite c!730865 (toList!2136 lt!1518069) (toList!2136 lt!1518080)) (ite c!730865 lambda!131684 lambda!131685)))))

(declare-fun bm!294609 () Bool)

(assert (=> bm!294609 (= call!294616 (eq!80 call!294598 call!294612))))

(declare-fun bm!294610 () Bool)

(declare-fun allKeysSameHashInMap!252 (ListLongMap!767 Hashable!4389) Bool)

(assert (=> bm!294610 (= call!294619 (allKeysSameHashInMap!252 (ite c!730865 lt!1518069 lt!1518080) (hashF!6421 (cache!4519 thiss!29019))))))

(declare-fun b!4295651 () Bool)

(declare-datatypes ((tuple2!45612 0))(
  ( (tuple2!45613 (_1!26085 Unit!66435) (_2!26085 MutableMap!4379)) )
))
(declare-fun Unit!66453 () Unit!66435)

(declare-fun Unit!66454 () Unit!66435)

(assert (=> b!4295651 (= e!2669524 (tuple2!45607 (_1!26084 lt!1518076) (_2!26085 (ite (_1!26084 lt!1518076) (tuple2!45613 Unit!66453 (HashMap!4379 (Cell!17704 (_2!26084 lt!1518076)) (hashF!6421 (cache!4519 thiss!29019)) (bvadd (_size!8990 (cache!4519 thiss!29019)) #b00000000000000000000000000000001) (defaultValue!4550 (cache!4519 thiss!29019)))) (tuple2!45613 Unit!66454 lt!1518094)))))))

(assert (=> b!4295651 (= lt!1518114 call!294599)))

(declare-fun c!730868 () Bool)

(declare-fun contains!9798 (MutLongMap!4473 (_ BitVec 64)) Bool)

(assert (=> b!4295651 (= c!730868 (contains!9798 (v!41778 (underlying!9176 (cache!4519 thiss!29019))) lt!1518114))))

(assert (=> b!4295651 (= lt!1518107 e!2669522)))

(assert (=> b!4295651 (= lt!1518109 (Cons!47837 (tuple2!45605 lt!1517946 res!14399) lt!1518107))))

(assert (=> b!4295651 (= lt!1518076 call!294622)))

(assert (=> b!4295651 (= lt!1518094 (HashMap!4379 (Cell!17704 (_2!26084 lt!1518076)) (hashF!6421 (cache!4519 thiss!29019)) (_size!8990 (cache!4519 thiss!29019)) (defaultValue!4550 (cache!4519 thiss!29019))))))

(declare-fun c!730864 () Bool)

(assert (=> b!4295651 (= c!730864 (_1!26084 lt!1518076))))

(declare-fun lt!1518108 () Unit!66435)

(assert (=> b!4295651 (= lt!1518108 e!2669523)))

(declare-fun b!4295652 () Bool)

(assert (=> b!4295652 (= e!2669522 call!294615)))

(declare-fun b!4295653 () Bool)

(declare-fun Unit!66455 () Unit!66435)

(declare-fun Unit!66456 () Unit!66435)

(assert (=> b!4295653 (= e!2669524 (tuple2!45607 (_1!26084 lt!1518102) (_2!26085 (ite false (tuple2!45613 Unit!66455 (HashMap!4379 (Cell!17704 (_2!26084 lt!1518102)) (hashF!6421 (cache!4519 thiss!29019)) (bvadd (_size!8990 (cache!4519 thiss!29019)) #b00000000000000000000000000000001) (defaultValue!4550 (cache!4519 thiss!29019)))) (tuple2!45613 Unit!66456 lt!1518087)))))))

(assert (=> b!4295653 (= lt!1518093 call!294599)))

(assert (=> b!4295653 (= lt!1518100 call!294615)))

(assert (=> b!4295653 (= lt!1518119 (Cons!47837 (tuple2!45605 lt!1517946 res!14399) call!294605))))

(assert (=> b!4295653 (= lt!1518102 call!294622)))

(assert (=> b!4295653 (= lt!1518087 (HashMap!4379 (Cell!17704 (_2!26084 lt!1518102)) (hashF!6421 (cache!4519 thiss!29019)) (_size!8990 (cache!4519 thiss!29019)) (defaultValue!4550 (cache!4519 thiss!29019))))))

(declare-fun c!730866 () Bool)

(assert (=> b!4295653 (= c!730866 (_1!26084 lt!1518102))))

(declare-fun lt!1518092 () Unit!66435)

(assert (=> b!4295653 (= lt!1518092 e!2669515)))

(declare-fun bm!294611 () Bool)

(assert (=> bm!294611 (= call!294609 (map!9817 (ite c!730865 lt!1518087 lt!1518094)))))

(declare-fun bm!294612 () Bool)

(declare-fun allKeysSameHash!107 (List!47961 (_ BitVec 64) Hashable!4389) Bool)

(assert (=> bm!294612 (= call!294603 (allKeysSameHash!107 call!294605 (ite c!730865 lt!1518093 lt!1518114) (hashF!6421 (cache!4519 thiss!29019))))))

(declare-fun bm!294613 () Bool)

(assert (=> bm!294613 (= call!294597 (allKeysSameHash!107 (ite c!730865 lt!1518100 lt!1518107) (ite c!730865 lt!1518093 lt!1518114) (hashF!6421 (cache!4519 thiss!29019))))))

(declare-fun b!4295654 () Bool)

(assert (=> b!4295654 (= e!2669517 call!294594)))

(declare-fun b!4295655 () Bool)

(assert (=> b!4295655 (= e!2669518 (+!129 call!294607 (tuple2!45605 lt!1517946 res!14399)))))

(declare-fun bm!294614 () Bool)

(assert (=> bm!294614 (= call!294621 (contains!9797 (ite c!730865 lt!1518090 lt!1518116) lt!1517946))))

(declare-fun b!4295656 () Bool)

(assert (=> b!4295656 (= e!2669519 call!294594)))

(declare-fun bm!294615 () Bool)

(assert (=> bm!294615 (= call!294611 (allKeysSameHashInMap!252 call!294595 (hashF!6421 (cache!4519 thiss!29019))))))

(declare-fun bm!294616 () Bool)

(declare-fun lemmaEquivalentThenSameContains!19 (ListMap!1397 ListMap!1397 tuple2!45602) Unit!66435)

(assert (=> bm!294616 (= call!294601 (lemmaEquivalentThenSameContains!19 (ite c!730865 lt!1518090 lt!1518116) (ite c!730865 lt!1518106 lt!1518084) lt!1517946))))

(declare-fun b!4295657 () Bool)

(assert (=> b!4295657 (= e!2669518 call!294607)))

(declare-fun bm!294617 () Bool)

(assert (=> bm!294617 (= call!294623 (eq!80 (ite c!730865 call!294617 call!294613) call!294620))))

(declare-fun bm!294618 () Bool)

(declare-fun removePairForKey!124 (List!47961 tuple2!45602) List!47961)

(assert (=> bm!294618 (= call!294605 (removePairForKey!124 (ite c!730865 lt!1518100 lt!1518107) lt!1517946))))

(declare-fun bm!294619 () Bool)

(assert (=> bm!294619 (= call!294600 (contains!9797 (ite c!730865 lt!1518106 lt!1518084) lt!1517946))))

(declare-fun b!4295658 () Bool)

(assert (=> b!4295658 (= e!2669516 call!294619)))

(declare-fun b!4295659 () Bool)

(declare-fun res!1760774 () Bool)

(assert (=> b!4295659 (=> (not res!1760774) (not e!2669514))))

(assert (=> b!4295659 (= res!1760774 (valid!3451 (_2!26082 lt!1518097)))))

(assert (= (and d!1266085 c!730865) b!4295653))

(assert (= (and d!1266085 (not c!730865)) b!4295651))

(assert (= (and b!4295653 c!730866) b!4295650))

(assert (= (and b!4295653 (not c!730866)) b!4295648))

(assert (= (and b!4295650 res!1760770) b!4295658))

(assert (= (or b!4295650 b!4295648) bm!294592))

(assert (= (and b!4295651 c!730868) b!4295652))

(assert (= (and b!4295651 (not c!730868)) b!4295642))

(assert (= (and b!4295651 c!730864) b!4295643))

(assert (= (and b!4295651 (not c!730864)) b!4295646))

(assert (= (and b!4295643 c!730870) b!4295649))

(assert (= (and b!4295643 (not c!730870)) b!4295641))

(assert (= (and b!4295643 res!1760773) b!4295647))

(assert (= (or b!4295643 b!4295646) bm!294603))

(assert (= (or b!4295650 b!4295643) bm!294596))

(assert (= (or b!4295653 b!4295652) bm!294597))

(assert (= (or b!4295650 b!4295643) bm!294589))

(assert (= (or b!4295650 b!4295649) bm!294593))

(assert (= (or b!4295650 b!4295643) bm!294606))

(assert (= (or b!4295650 b!4295643) bm!294616))

(assert (= (or b!4295650 b!4295649) bm!294605))

(assert (= (or b!4295650 b!4295643) bm!294608))

(assert (= (or b!4295650 b!4295649) bm!294613))

(assert (= (or b!4295650 b!4295643) bm!294619))

(assert (= (or b!4295650 b!4295643) bm!294602))

(assert (= (or b!4295653 b!4295651) bm!294599))

(assert (= (or b!4295650 b!4295643) bm!294614))

(assert (= (or b!4295658 b!4295647) bm!294610))

(assert (= (or b!4295648 b!4295646) bm!294601))

(assert (= (or bm!294592 bm!294603) bm!294611))

(assert (= (or b!4295653 b!4295651) bm!294598))

(assert (= (or b!4295650 b!4295653 b!4295649) bm!294618))

(assert (= (or b!4295650 b!4295643) bm!294607))

(assert (= (or b!4295650 b!4295643) bm!294615))

(assert (= (or b!4295650 b!4295643) bm!294590))

(assert (= (or b!4295650 b!4295643) bm!294617))

(assert (= (or b!4295650 b!4295643) bm!294591))

(assert (= (or b!4295650 b!4295643) bm!294595))

(assert (= (or b!4295650 b!4295649) bm!294612))

(assert (= (or b!4295650 b!4295643) bm!294609))

(assert (= (and d!1266085 res!1760772) b!4295659))

(assert (= (and b!4295659 res!1760774) b!4295644))

(assert (= (and b!4295644 c!730869) b!4295645))

(assert (= (and b!4295644 (not c!730869)) b!4295656))

(assert (= (and b!4295645 res!1760771) b!4295654))

(assert (= (or b!4295654 b!4295656) bm!294600))

(assert (= (or b!4295645 b!4295654 b!4295656) bm!294594))

(assert (= (or b!4295654 b!4295656) bm!294604))

(assert (= (and bm!294604 c!730867) b!4295655))

(assert (= (and bm!294604 (not c!730867)) b!4295657))

(declare-fun m!4888132 () Bool)

(assert (=> bm!294608 m!4888132))

(declare-fun m!4888134 () Bool)

(assert (=> bm!294602 m!4888134))

(declare-fun m!4888136 () Bool)

(assert (=> b!4295643 m!4888136))

(declare-fun m!4888138 () Bool)

(assert (=> b!4295643 m!4888138))

(declare-fun m!4888140 () Bool)

(assert (=> b!4295643 m!4888140))

(declare-fun m!4888142 () Bool)

(assert (=> b!4295643 m!4888142))

(declare-fun m!4888144 () Bool)

(assert (=> bm!294616 m!4888144))

(declare-fun m!4888146 () Bool)

(assert (=> b!4295650 m!4888146))

(declare-fun m!4888148 () Bool)

(assert (=> b!4295650 m!4888148))

(declare-fun m!4888150 () Bool)

(assert (=> b!4295650 m!4888150))

(declare-fun m!4888152 () Bool)

(assert (=> b!4295650 m!4888152))

(declare-fun m!4888154 () Bool)

(assert (=> b!4295650 m!4888154))

(declare-fun m!4888156 () Bool)

(assert (=> b!4295655 m!4888156))

(declare-fun m!4888158 () Bool)

(assert (=> bm!294601 m!4888158))

(declare-fun m!4888160 () Bool)

(assert (=> bm!294590 m!4888160))

(declare-fun m!4888162 () Bool)

(assert (=> bm!294614 m!4888162))

(declare-fun m!4888164 () Bool)

(assert (=> bm!294611 m!4888164))

(declare-fun m!4888166 () Bool)

(assert (=> bm!294598 m!4888166))

(declare-fun m!4888168 () Bool)

(assert (=> bm!294617 m!4888168))

(declare-fun m!4888170 () Bool)

(assert (=> bm!294613 m!4888170))

(declare-fun m!4888172 () Bool)

(assert (=> bm!294606 m!4888172))

(declare-fun m!4888174 () Bool)

(assert (=> bm!294615 m!4888174))

(assert (=> bm!294600 m!4888108))

(declare-fun m!4888176 () Bool)

(assert (=> b!4295651 m!4888176))

(declare-fun m!4888178 () Bool)

(assert (=> bm!294618 m!4888178))

(declare-fun m!4888180 () Bool)

(assert (=> bm!294599 m!4888180))

(declare-fun m!4888182 () Bool)

(assert (=> bm!294619 m!4888182))

(declare-fun m!4888184 () Bool)

(assert (=> bm!294589 m!4888184))

(declare-fun m!4888186 () Bool)

(assert (=> bm!294610 m!4888186))

(declare-fun m!4888188 () Bool)

(assert (=> bm!294591 m!4888188))

(declare-fun m!4888190 () Bool)

(assert (=> bm!294597 m!4888190))

(declare-fun m!4888192 () Bool)

(assert (=> d!1266085 m!4888192))

(declare-fun m!4888194 () Bool)

(assert (=> d!1266085 m!4888194))

(assert (=> d!1266085 m!4888108))

(assert (=> d!1266085 m!4888106))

(declare-fun m!4888196 () Bool)

(assert (=> bm!294594 m!4888196))

(declare-fun m!4888198 () Bool)

(assert (=> bm!294605 m!4888198))

(declare-fun m!4888200 () Bool)

(assert (=> bm!294595 m!4888200))

(declare-fun m!4888202 () Bool)

(assert (=> bm!294609 m!4888202))

(declare-fun m!4888204 () Bool)

(assert (=> bm!294596 m!4888204))

(declare-fun m!4888206 () Bool)

(assert (=> bm!294604 m!4888206))

(declare-fun m!4888208 () Bool)

(assert (=> b!4295659 m!4888208))

(declare-fun m!4888210 () Bool)

(assert (=> bm!294607 m!4888210))

(declare-fun m!4888212 () Bool)

(assert (=> bm!294593 m!4888212))

(declare-fun m!4888214 () Bool)

(assert (=> b!4295645 m!4888214))

(declare-fun m!4888216 () Bool)

(assert (=> bm!294612 m!4888216))

(assert (=> b!4295578 d!1266085))

(declare-fun d!1266087 () Bool)

(declare-fun e!2669527 () Bool)

(assert (=> d!1266087 e!2669527))

(declare-fun res!1760777 () Bool)

(assert (=> d!1266087 (=> (not res!1760777) (not e!2669527))))

(assert (=> d!1266087 (= res!1760777 (and (or (not ((_ is HashMap!4379) (cache!4519 thiss!29019))) ((_ is HashMap!4379) (cache!4519 thiss!29019))) ((_ is HashMap!4379) (cache!4519 thiss!29019))))))

(declare-fun lt!1518135 () Unit!66435)

(declare-fun choose!26158 (MutableMap!4379 tuple2!45602 Int Int) Unit!66435)

(assert (=> d!1266087 (= lt!1518135 (choose!26158 (cache!4519 thiss!29019) lt!1517946 res!14399 lambda!131672))))

(assert (=> d!1266087 (valid!3451 (cache!4519 thiss!29019))))

(assert (=> d!1266087 (= (lemmaUpdatePreservesForallPairs!39 (cache!4519 thiss!29019) lt!1517946 res!14399 lambda!131672) lt!1518135)))

(declare-fun b!4295662 () Bool)

(declare-fun lt!1518138 () MutableMap!4379)

(assert (=> b!4295662 (= e!2669527 (forall!8566 (toList!2135 (map!9817 lt!1518138)) lambda!131672))))

(assert (=> b!4295662 ((_ is HashMap!4379) lt!1518138)))

(declare-fun lt!1518133 () MutableMap!4379)

(assert (=> b!4295662 (= lt!1518138 lt!1518133)))

(assert (=> b!4295662 ((_ is HashMap!4379) lt!1518133)))

(declare-fun lt!1518137 () MutableMap!4379)

(assert (=> b!4295662 (= lt!1518133 lt!1518137)))

(assert (=> b!4295662 ((_ is HashMap!4379) lt!1518137)))

(declare-fun lt!1518134 () tuple2!45606)

(assert (=> b!4295662 (= lt!1518137 (_2!26082 lt!1518134))))

(assert (=> b!4295662 ((_ is HashMap!4379) (_2!26082 lt!1518134))))

(declare-fun lt!1518136 () tuple2!45606)

(assert (=> b!4295662 (= lt!1518134 lt!1518136)))

(assert (=> b!4295662 ((_ is HashMap!4379) (_2!26082 lt!1518136))))

(assert (=> b!4295662 (= lt!1518136 (update!287 (cache!4519 thiss!29019) lt!1517946 res!14399))))

(assert (= (and d!1266087 res!1760777) b!4295662))

(declare-fun m!4888218 () Bool)

(assert (=> d!1266087 m!4888218))

(assert (=> d!1266087 m!4888106))

(declare-fun m!4888220 () Bool)

(assert (=> b!4295662 m!4888220))

(declare-fun m!4888222 () Bool)

(assert (=> b!4295662 m!4888222))

(assert (=> b!4295662 m!4888089))

(assert (=> b!4295578 d!1266087))

(declare-fun d!1266089 () Bool)

(declare-fun c!730873 () Bool)

(assert (=> d!1266089 (= c!730873 ((_ is Node!14432) (c!730849 localTotalInput!12)))))

(declare-fun e!2669532 () Bool)

(assert (=> d!1266089 (= (inv!63379 (c!730849 localTotalInput!12)) e!2669532)))

(declare-fun b!4295669 () Bool)

(declare-fun inv!63383 (Conc!14432) Bool)

(assert (=> b!4295669 (= e!2669532 (inv!63383 (c!730849 localTotalInput!12)))))

(declare-fun b!4295670 () Bool)

(declare-fun e!2669533 () Bool)

(assert (=> b!4295670 (= e!2669532 e!2669533)))

(declare-fun res!1760780 () Bool)

(assert (=> b!4295670 (= res!1760780 (not ((_ is Leaf!22329) (c!730849 localTotalInput!12))))))

(assert (=> b!4295670 (=> res!1760780 e!2669533)))

(declare-fun b!4295671 () Bool)

(declare-fun inv!63384 (Conc!14432) Bool)

(assert (=> b!4295671 (= e!2669533 (inv!63384 (c!730849 localTotalInput!12)))))

(assert (= (and d!1266089 c!730873) b!4295669))

(assert (= (and d!1266089 (not c!730873)) b!4295670))

(assert (= (and b!4295670 (not res!1760780)) b!4295671))

(declare-fun m!4888224 () Bool)

(assert (=> b!4295669 m!4888224))

(declare-fun m!4888226 () Bool)

(assert (=> b!4295671 m!4888226))

(assert (=> b!4295573 d!1266089))

(declare-fun d!1266091 () Bool)

(assert (=> d!1266091 (= (inv!63381 (totalInput!4404 thiss!29019)) (isBalanced!3889 (c!730849 (totalInput!4404 thiss!29019))))))

(declare-fun bs!603782 () Bool)

(assert (= bs!603782 d!1266091))

(declare-fun m!4888228 () Bool)

(assert (=> bs!603782 m!4888228))

(assert (=> b!4295580 d!1266091))

(declare-fun d!1266093 () Bool)

(assert (=> d!1266093 (= (array_inv!5111 (_keys!4773 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))) (bvsge (size!35141 (_keys!4773 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4295585 d!1266093))

(declare-fun d!1266095 () Bool)

(assert (=> d!1266095 (= (array_inv!5112 (_values!4754 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))) (bvsge (size!35142 (_values!4754 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4295585 d!1266095))

(declare-fun d!1266097 () Bool)

(declare-fun lt!1518147 () Int)

(assert (=> d!1266097 (and (>= lt!1518147 0) (<= lt!1518147 (- lt!1517949 from!940)))))

(declare-fun e!2669547 () Int)

(assert (=> d!1266097 (= lt!1518147 e!2669547)))

(declare-fun c!730881 () Bool)

(declare-fun e!2669544 () Bool)

(assert (=> d!1266097 (= c!730881 e!2669544)))

(declare-fun res!1760785 () Bool)

(assert (=> d!1266097 (=> res!1760785 e!2669544)))

(assert (=> d!1266097 (= res!1760785 (= from!940 lt!1517949))))

(declare-fun e!2669545 () Bool)

(assert (=> d!1266097 e!2669545))

(declare-fun res!1760786 () Bool)

(assert (=> d!1266097 (=> (not res!1760786) (not e!2669545))))

(assert (=> d!1266097 (= res!1760786 (>= from!940 0))))

(assert (=> d!1266097 (= (findLongestMatchInnerZipperFastV2!46 z!500 from!940 (totalInput!4404 thiss!29019) lt!1517949) lt!1518147)))

(declare-fun b!4295688 () Bool)

(declare-fun lostCauseZipper!656 ((InoxSet Context!5762)) Bool)

(assert (=> b!4295688 (= e!2669544 (lostCauseZipper!656 z!500))))

(declare-fun b!4295689 () Bool)

(assert (=> b!4295689 (= e!2669547 0)))

(declare-fun b!4295690 () Bool)

(declare-fun e!2669546 () Int)

(assert (=> b!4295690 (= e!2669547 e!2669546)))

(declare-fun lt!1518146 () (InoxSet Context!5762))

(declare-fun derivationStepZipper!553 ((InoxSet Context!5762) C!26180) (InoxSet Context!5762))

(declare-fun apply!10853 (BalanceConc!28354 Int) C!26180)

(assert (=> b!4295690 (= lt!1518146 (derivationStepZipper!553 z!500 (apply!10853 (totalInput!4404 thiss!29019) from!940)))))

(declare-fun lt!1518145 () Int)

(assert (=> b!4295690 (= lt!1518145 (findLongestMatchInnerZipperFastV2!46 lt!1518146 (+ from!940 1) (totalInput!4404 thiss!29019) lt!1517949))))

(declare-fun c!730882 () Bool)

(assert (=> b!4295690 (= c!730882 (> lt!1518145 0))))

(declare-fun b!4295691 () Bool)

(assert (=> b!4295691 (= e!2669545 (<= from!940 (size!35143 (totalInput!4404 thiss!29019))))))

(declare-fun b!4295692 () Bool)

(assert (=> b!4295692 (= e!2669546 (+ 1 lt!1518145))))

(declare-fun b!4295693 () Bool)

(declare-fun e!2669548 () Int)

(assert (=> b!4295693 (= e!2669548 0)))

(declare-fun b!4295694 () Bool)

(declare-fun c!730880 () Bool)

(declare-fun nullableZipper!776 ((InoxSet Context!5762)) Bool)

(assert (=> b!4295694 (= c!730880 (nullableZipper!776 lt!1518146))))

(assert (=> b!4295694 (= e!2669546 e!2669548)))

(declare-fun b!4295695 () Bool)

(assert (=> b!4295695 (= e!2669548 1)))

(assert (= (and d!1266097 res!1760786) b!4295691))

(assert (= (and d!1266097 (not res!1760785)) b!4295688))

(assert (= (and d!1266097 c!730881) b!4295689))

(assert (= (and d!1266097 (not c!730881)) b!4295690))

(assert (= (and b!4295690 c!730882) b!4295692))

(assert (= (and b!4295690 (not c!730882)) b!4295694))

(assert (= (and b!4295694 c!730880) b!4295695))

(assert (= (and b!4295694 (not c!730880)) b!4295693))

(declare-fun m!4888230 () Bool)

(assert (=> b!4295688 m!4888230))

(declare-fun m!4888232 () Bool)

(assert (=> b!4295690 m!4888232))

(assert (=> b!4295690 m!4888232))

(declare-fun m!4888234 () Bool)

(assert (=> b!4295690 m!4888234))

(declare-fun m!4888236 () Bool)

(assert (=> b!4295690 m!4888236))

(assert (=> b!4295691 m!4888071))

(declare-fun m!4888238 () Bool)

(assert (=> b!4295694 m!4888238))

(assert (=> b!4295575 d!1266097))

(declare-fun d!1266099 () Bool)

(declare-fun lambda!131688 () Int)

(declare-fun forall!8568 (List!47960 Int) Bool)

(assert (=> d!1266099 (= (inv!63382 setElem!26713) (forall!8568 (exprs!3381 setElem!26713) lambda!131688))))

(declare-fun bs!603783 () Bool)

(assert (= bs!603783 d!1266099))

(declare-fun m!4888240 () Bool)

(assert (=> bs!603783 m!4888240))

(assert (=> setNonEmpty!26713 d!1266099))

(declare-fun d!1266101 () Bool)

(declare-fun c!730883 () Bool)

(assert (=> d!1266101 (= c!730883 ((_ is Node!14432) (c!730849 (totalInput!4404 thiss!29019))))))

(declare-fun e!2669549 () Bool)

(assert (=> d!1266101 (= (inv!63379 (c!730849 (totalInput!4404 thiss!29019))) e!2669549)))

(declare-fun b!4295696 () Bool)

(assert (=> b!4295696 (= e!2669549 (inv!63383 (c!730849 (totalInput!4404 thiss!29019))))))

(declare-fun b!4295697 () Bool)

(declare-fun e!2669550 () Bool)

(assert (=> b!4295697 (= e!2669549 e!2669550)))

(declare-fun res!1760787 () Bool)

(assert (=> b!4295697 (= res!1760787 (not ((_ is Leaf!22329) (c!730849 (totalInput!4404 thiss!29019)))))))

(assert (=> b!4295697 (=> res!1760787 e!2669550)))

(declare-fun b!4295698 () Bool)

(assert (=> b!4295698 (= e!2669550 (inv!63384 (c!730849 (totalInput!4404 thiss!29019))))))

(assert (= (and d!1266101 c!730883) b!4295696))

(assert (= (and d!1266101 (not c!730883)) b!4295697))

(assert (= (and b!4295697 (not res!1760787)) b!4295698))

(declare-fun m!4888242 () Bool)

(assert (=> b!4295696 m!4888242))

(declare-fun m!4888244 () Bool)

(assert (=> b!4295698 m!4888244))

(assert (=> b!4295579 d!1266101))

(declare-fun e!2669556 () Bool)

(declare-fun tp!1319127 () Bool)

(declare-fun tp!1319128 () Bool)

(declare-fun b!4295707 () Bool)

(assert (=> b!4295707 (= e!2669556 (and (inv!63379 (left!35478 (c!730849 localTotalInput!12))) tp!1319127 (inv!63379 (right!35808 (c!730849 localTotalInput!12))) tp!1319128))))

(declare-fun b!4295709 () Bool)

(declare-fun e!2669555 () Bool)

(declare-fun tp!1319126 () Bool)

(assert (=> b!4295709 (= e!2669555 tp!1319126)))

(declare-fun b!4295708 () Bool)

(declare-fun inv!63385 (IArray!28925) Bool)

(assert (=> b!4295708 (= e!2669556 (and (inv!63385 (xs!17738 (c!730849 localTotalInput!12))) e!2669555))))

(assert (=> b!4295573 (= tp!1319115 (and (inv!63379 (c!730849 localTotalInput!12)) e!2669556))))

(assert (= (and b!4295573 ((_ is Node!14432) (c!730849 localTotalInput!12))) b!4295707))

(assert (= b!4295708 b!4295709))

(assert (= (and b!4295573 ((_ is Leaf!22329) (c!730849 localTotalInput!12))) b!4295708))

(declare-fun m!4888246 () Bool)

(assert (=> b!4295707 m!4888246))

(declare-fun m!4888248 () Bool)

(assert (=> b!4295707 m!4888248))

(declare-fun m!4888250 () Bool)

(assert (=> b!4295708 m!4888250))

(assert (=> b!4295573 m!4888085))

(declare-fun setIsEmpty!26716 () Bool)

(declare-fun setRes!26716 () Bool)

(assert (=> setIsEmpty!26716 setRes!26716))

(declare-fun b!4295717 () Bool)

(declare-fun e!2669562 () Bool)

(declare-fun tp!1319137 () Bool)

(assert (=> b!4295717 (= e!2669562 tp!1319137)))

(declare-fun e!2669561 () Bool)

(assert (=> b!4295585 (= tp!1319118 e!2669561)))

(declare-fun b!4295716 () Bool)

(declare-fun tp!1319136 () Bool)

(assert (=> b!4295716 (= e!2669561 (and setRes!26716 tp!1319136))))

(declare-fun condSetEmpty!26716 () Bool)

(assert (=> b!4295716 (= condSetEmpty!26716 (= (_1!26080 (_1!26081 (h!53257 (zeroValue!4732 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))))) ((as const (Array Context!5762 Bool)) false)))))

(declare-fun setNonEmpty!26716 () Bool)

(declare-fun setElem!26716 () Context!5762)

(declare-fun tp!1319135 () Bool)

(assert (=> setNonEmpty!26716 (= setRes!26716 (and tp!1319135 (inv!63382 setElem!26716) e!2669562))))

(declare-fun setRest!26716 () (InoxSet Context!5762))

(assert (=> setNonEmpty!26716 (= (_1!26080 (_1!26081 (h!53257 (zeroValue!4732 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5762 Bool)) false) setElem!26716 true) setRest!26716))))

(assert (= (and b!4295716 condSetEmpty!26716) setIsEmpty!26716))

(assert (= (and b!4295716 (not condSetEmpty!26716)) setNonEmpty!26716))

(assert (= setNonEmpty!26716 b!4295717))

(assert (= (and b!4295585 ((_ is Cons!47837) (zeroValue!4732 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019)))))))) b!4295716))

(declare-fun m!4888252 () Bool)

(assert (=> setNonEmpty!26716 m!4888252))

(declare-fun setIsEmpty!26717 () Bool)

(declare-fun setRes!26717 () Bool)

(assert (=> setIsEmpty!26717 setRes!26717))

(declare-fun b!4295719 () Bool)

(declare-fun e!2669564 () Bool)

(declare-fun tp!1319140 () Bool)

(assert (=> b!4295719 (= e!2669564 tp!1319140)))

(declare-fun e!2669563 () Bool)

(assert (=> b!4295585 (= tp!1319114 e!2669563)))

(declare-fun b!4295718 () Bool)

(declare-fun tp!1319139 () Bool)

(assert (=> b!4295718 (= e!2669563 (and setRes!26717 tp!1319139))))

(declare-fun condSetEmpty!26717 () Bool)

(assert (=> b!4295718 (= condSetEmpty!26717 (= (_1!26080 (_1!26081 (h!53257 (minValue!4732 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))))) ((as const (Array Context!5762 Bool)) false)))))

(declare-fun tp!1319138 () Bool)

(declare-fun setNonEmpty!26717 () Bool)

(declare-fun setElem!26717 () Context!5762)

(assert (=> setNonEmpty!26717 (= setRes!26717 (and tp!1319138 (inv!63382 setElem!26717) e!2669564))))

(declare-fun setRest!26717 () (InoxSet Context!5762))

(assert (=> setNonEmpty!26717 (= (_1!26080 (_1!26081 (h!53257 (minValue!4732 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5762 Bool)) false) setElem!26717 true) setRest!26717))))

(assert (= (and b!4295718 condSetEmpty!26717) setIsEmpty!26717))

(assert (= (and b!4295718 (not condSetEmpty!26717)) setNonEmpty!26717))

(assert (= setNonEmpty!26717 b!4295719))

(assert (= (and b!4295585 ((_ is Cons!47837) (minValue!4732 (v!41777 (underlying!9175 (v!41778 (underlying!9176 (cache!4519 thiss!29019)))))))) b!4295718))

(declare-fun m!4888254 () Bool)

(assert (=> setNonEmpty!26717 m!4888254))

(declare-fun mapIsEmpty!20106 () Bool)

(declare-fun mapRes!20106 () Bool)

(assert (=> mapIsEmpty!20106 mapRes!20106))

(declare-fun mapNonEmpty!20106 () Bool)

(declare-fun tp!1319160 () Bool)

(declare-fun e!2669575 () Bool)

(assert (=> mapNonEmpty!20106 (= mapRes!20106 (and tp!1319160 e!2669575))))

(declare-fun mapValue!20106 () List!47961)

(declare-fun mapKey!20106 () (_ BitVec 32))

(declare-fun mapRest!20106 () (Array (_ BitVec 32) List!47961))

(assert (=> mapNonEmpty!20106 (= mapRest!20103 (store mapRest!20106 mapKey!20106 mapValue!20106))))

(declare-fun e!2669573 () Bool)

(declare-fun setElem!26722 () Context!5762)

(declare-fun setNonEmpty!26722 () Bool)

(declare-fun tp!1319161 () Bool)

(declare-fun setRes!26722 () Bool)

(assert (=> setNonEmpty!26722 (= setRes!26722 (and tp!1319161 (inv!63382 setElem!26722) e!2669573))))

(declare-fun mapDefault!20106 () List!47961)

(declare-fun setRest!26722 () (InoxSet Context!5762))

(assert (=> setNonEmpty!26722 (= (_1!26080 (_1!26081 (h!53257 mapDefault!20106))) ((_ map or) (store ((as const (Array Context!5762 Bool)) false) setElem!26722 true) setRest!26722))))

(declare-fun b!4295731 () Bool)

(declare-fun e!2669576 () Bool)

(declare-fun tp!1319158 () Bool)

(assert (=> b!4295731 (= e!2669576 tp!1319158)))

(declare-fun b!4295732 () Bool)

(declare-fun setRes!26723 () Bool)

(declare-fun tp!1319159 () Bool)

(assert (=> b!4295732 (= e!2669575 (and setRes!26723 tp!1319159))))

(declare-fun condSetEmpty!26723 () Bool)

(assert (=> b!4295732 (= condSetEmpty!26723 (= (_1!26080 (_1!26081 (h!53257 mapValue!20106))) ((as const (Array Context!5762 Bool)) false)))))

(declare-fun b!4295733 () Bool)

(declare-fun tp!1319157 () Bool)

(assert (=> b!4295733 (= e!2669573 tp!1319157)))

(declare-fun setNonEmpty!26723 () Bool)

(declare-fun setElem!26723 () Context!5762)

(declare-fun tp!1319155 () Bool)

(assert (=> setNonEmpty!26723 (= setRes!26723 (and tp!1319155 (inv!63382 setElem!26723) e!2669576))))

(declare-fun setRest!26723 () (InoxSet Context!5762))

(assert (=> setNonEmpty!26723 (= (_1!26080 (_1!26081 (h!53257 mapValue!20106))) ((_ map or) (store ((as const (Array Context!5762 Bool)) false) setElem!26723 true) setRest!26723))))

(declare-fun setIsEmpty!26722 () Bool)

(assert (=> setIsEmpty!26722 setRes!26722))

(declare-fun setIsEmpty!26723 () Bool)

(assert (=> setIsEmpty!26723 setRes!26723))

(declare-fun condMapEmpty!20106 () Bool)

(assert (=> mapNonEmpty!20103 (= condMapEmpty!20106 (= mapRest!20103 ((as const (Array (_ BitVec 32) List!47961)) mapDefault!20106)))))

(declare-fun e!2669574 () Bool)

(assert (=> mapNonEmpty!20103 (= tp!1319110 (and e!2669574 mapRes!20106))))

(declare-fun b!4295730 () Bool)

(declare-fun tp!1319156 () Bool)

(assert (=> b!4295730 (= e!2669574 (and setRes!26722 tp!1319156))))

(declare-fun condSetEmpty!26722 () Bool)

(assert (=> b!4295730 (= condSetEmpty!26722 (= (_1!26080 (_1!26081 (h!53257 mapDefault!20106))) ((as const (Array Context!5762 Bool)) false)))))

(assert (= (and mapNonEmpty!20103 condMapEmpty!20106) mapIsEmpty!20106))

(assert (= (and mapNonEmpty!20103 (not condMapEmpty!20106)) mapNonEmpty!20106))

(assert (= (and b!4295732 condSetEmpty!26723) setIsEmpty!26723))

(assert (= (and b!4295732 (not condSetEmpty!26723)) setNonEmpty!26723))

(assert (= setNonEmpty!26723 b!4295731))

(assert (= (and mapNonEmpty!20106 ((_ is Cons!47837) mapValue!20106)) b!4295732))

(assert (= (and b!4295730 condSetEmpty!26722) setIsEmpty!26722))

(assert (= (and b!4295730 (not condSetEmpty!26722)) setNonEmpty!26722))

(assert (= setNonEmpty!26722 b!4295733))

(assert (= (and mapNonEmpty!20103 ((_ is Cons!47837) mapDefault!20106)) b!4295730))

(declare-fun m!4888256 () Bool)

(assert (=> mapNonEmpty!20106 m!4888256))

(declare-fun m!4888258 () Bool)

(assert (=> setNonEmpty!26722 m!4888258))

(declare-fun m!4888260 () Bool)

(assert (=> setNonEmpty!26723 m!4888260))

(declare-fun setIsEmpty!26724 () Bool)

(declare-fun setRes!26724 () Bool)

(assert (=> setIsEmpty!26724 setRes!26724))

(declare-fun b!4295735 () Bool)

(declare-fun e!2669578 () Bool)

(declare-fun tp!1319164 () Bool)

(assert (=> b!4295735 (= e!2669578 tp!1319164)))

(declare-fun e!2669577 () Bool)

(assert (=> mapNonEmpty!20103 (= tp!1319117 e!2669577)))

(declare-fun b!4295734 () Bool)

(declare-fun tp!1319163 () Bool)

(assert (=> b!4295734 (= e!2669577 (and setRes!26724 tp!1319163))))

(declare-fun condSetEmpty!26724 () Bool)

(assert (=> b!4295734 (= condSetEmpty!26724 (= (_1!26080 (_1!26081 (h!53257 mapValue!20103))) ((as const (Array Context!5762 Bool)) false)))))

(declare-fun setElem!26724 () Context!5762)

(declare-fun tp!1319162 () Bool)

(declare-fun setNonEmpty!26724 () Bool)

(assert (=> setNonEmpty!26724 (= setRes!26724 (and tp!1319162 (inv!63382 setElem!26724) e!2669578))))

(declare-fun setRest!26724 () (InoxSet Context!5762))

(assert (=> setNonEmpty!26724 (= (_1!26080 (_1!26081 (h!53257 mapValue!20103))) ((_ map or) (store ((as const (Array Context!5762 Bool)) false) setElem!26724 true) setRest!26724))))

(assert (= (and b!4295734 condSetEmpty!26724) setIsEmpty!26724))

(assert (= (and b!4295734 (not condSetEmpty!26724)) setNonEmpty!26724))

(assert (= setNonEmpty!26724 b!4295735))

(assert (= (and mapNonEmpty!20103 ((_ is Cons!47837) mapValue!20103)) b!4295734))

(declare-fun m!4888262 () Bool)

(assert (=> setNonEmpty!26724 m!4888262))

(declare-fun condSetEmpty!26727 () Bool)

(assert (=> setNonEmpty!26713 (= condSetEmpty!26727 (= setRest!26713 ((as const (Array Context!5762 Bool)) false)))))

(declare-fun setRes!26727 () Bool)

(assert (=> setNonEmpty!26713 (= tp!1319112 setRes!26727)))

(declare-fun setIsEmpty!26727 () Bool)

(assert (=> setIsEmpty!26727 setRes!26727))

(declare-fun setElem!26727 () Context!5762)

(declare-fun setNonEmpty!26727 () Bool)

(declare-fun tp!1319170 () Bool)

(declare-fun e!2669581 () Bool)

(assert (=> setNonEmpty!26727 (= setRes!26727 (and tp!1319170 (inv!63382 setElem!26727) e!2669581))))

(declare-fun setRest!26727 () (InoxSet Context!5762))

(assert (=> setNonEmpty!26727 (= setRest!26713 ((_ map or) (store ((as const (Array Context!5762 Bool)) false) setElem!26727 true) setRest!26727))))

(declare-fun b!4295740 () Bool)

(declare-fun tp!1319169 () Bool)

(assert (=> b!4295740 (= e!2669581 tp!1319169)))

(assert (= (and setNonEmpty!26713 condSetEmpty!26727) setIsEmpty!26727))

(assert (= (and setNonEmpty!26713 (not condSetEmpty!26727)) setNonEmpty!26727))

(assert (= setNonEmpty!26727 b!4295740))

(declare-fun m!4888264 () Bool)

(assert (=> setNonEmpty!26727 m!4888264))

(declare-fun b!4295745 () Bool)

(declare-fun e!2669584 () Bool)

(declare-fun tp!1319175 () Bool)

(declare-fun tp!1319176 () Bool)

(assert (=> b!4295745 (= e!2669584 (and tp!1319175 tp!1319176))))

(assert (=> b!4295571 (= tp!1319111 e!2669584)))

(assert (= (and b!4295571 ((_ is Cons!47836) (exprs!3381 setElem!26713))) b!4295745))

(declare-fun setIsEmpty!26728 () Bool)

(declare-fun setRes!26728 () Bool)

(assert (=> setIsEmpty!26728 setRes!26728))

(declare-fun b!4295747 () Bool)

(declare-fun e!2669586 () Bool)

(declare-fun tp!1319179 () Bool)

(assert (=> b!4295747 (= e!2669586 tp!1319179)))

(declare-fun e!2669585 () Bool)

(assert (=> b!4295583 (= tp!1319109 e!2669585)))

(declare-fun b!4295746 () Bool)

(declare-fun tp!1319178 () Bool)

(assert (=> b!4295746 (= e!2669585 (and setRes!26728 tp!1319178))))

(declare-fun condSetEmpty!26728 () Bool)

(assert (=> b!4295746 (= condSetEmpty!26728 (= (_1!26080 (_1!26081 (h!53257 mapDefault!20103))) ((as const (Array Context!5762 Bool)) false)))))

(declare-fun setElem!26728 () Context!5762)

(declare-fun setNonEmpty!26728 () Bool)

(declare-fun tp!1319177 () Bool)

(assert (=> setNonEmpty!26728 (= setRes!26728 (and tp!1319177 (inv!63382 setElem!26728) e!2669586))))

(declare-fun setRest!26728 () (InoxSet Context!5762))

(assert (=> setNonEmpty!26728 (= (_1!26080 (_1!26081 (h!53257 mapDefault!20103))) ((_ map or) (store ((as const (Array Context!5762 Bool)) false) setElem!26728 true) setRest!26728))))

(assert (= (and b!4295746 condSetEmpty!26728) setIsEmpty!26728))

(assert (= (and b!4295746 (not condSetEmpty!26728)) setNonEmpty!26728))

(assert (= setNonEmpty!26728 b!4295747))

(assert (= (and b!4295583 ((_ is Cons!47837) mapDefault!20103)) b!4295746))

(declare-fun m!4888266 () Bool)

(assert (=> setNonEmpty!26728 m!4888266))

(declare-fun tp!1319182 () Bool)

(declare-fun tp!1319181 () Bool)

(declare-fun e!2669588 () Bool)

(declare-fun b!4295748 () Bool)

(assert (=> b!4295748 (= e!2669588 (and (inv!63379 (left!35478 (c!730849 (totalInput!4404 thiss!29019)))) tp!1319181 (inv!63379 (right!35808 (c!730849 (totalInput!4404 thiss!29019)))) tp!1319182))))

(declare-fun b!4295750 () Bool)

(declare-fun e!2669587 () Bool)

(declare-fun tp!1319180 () Bool)

(assert (=> b!4295750 (= e!2669587 tp!1319180)))

(declare-fun b!4295749 () Bool)

(assert (=> b!4295749 (= e!2669588 (and (inv!63385 (xs!17738 (c!730849 (totalInput!4404 thiss!29019)))) e!2669587))))

(assert (=> b!4295579 (= tp!1319119 (and (inv!63379 (c!730849 (totalInput!4404 thiss!29019))) e!2669588))))

(assert (= (and b!4295579 ((_ is Node!14432) (c!730849 (totalInput!4404 thiss!29019)))) b!4295748))

(assert (= b!4295749 b!4295750))

(assert (= (and b!4295579 ((_ is Leaf!22329) (c!730849 (totalInput!4404 thiss!29019)))) b!4295749))

(declare-fun m!4888268 () Bool)

(assert (=> b!4295748 m!4888268))

(declare-fun m!4888270 () Bool)

(assert (=> b!4295748 m!4888270))

(declare-fun m!4888272 () Bool)

(assert (=> b!4295749 m!4888272))

(assert (=> b!4295579 m!4888081))

(declare-fun b_lambda!126123 () Bool)

(assert (= b_lambda!126121 (or b!4295578 b_lambda!126123)))

(declare-fun bs!603784 () Bool)

(declare-fun d!1266103 () Bool)

(assert (= bs!603784 (and d!1266103 b!4295578)))

(declare-fun validCacheMapFindLongestMatchBody!8 (tuple2!45604 BalanceConc!28354) Bool)

(assert (=> bs!603784 (= (dynLambda!20328 lambda!131672 (h!53257 (toList!2135 (map!9817 (_2!26082 (update!287 (cache!4519 thiss!29019) lt!1517946 res!14399)))))) (validCacheMapFindLongestMatchBody!8 (h!53257 (toList!2135 (map!9817 (_2!26082 (update!287 (cache!4519 thiss!29019) lt!1517946 res!14399))))) localTotalInput!12))))

(declare-fun m!4888274 () Bool)

(assert (=> bs!603784 m!4888274))

(assert (=> b!4295601 d!1266103))

(check-sat (not b!4295595) (not bm!294598) (not bm!294591) (not b!4295671) (not bm!294608) (not d!1266085) (not bm!294604) (not bm!294600) (not bm!294614) (not mapNonEmpty!20106) (not b!4295688) (not b!4295746) (not setNonEmpty!26722) (not d!1266099) (not bm!294618) (not b!4295650) (not setNonEmpty!26727) (not b_next!128473) (not b!4295696) (not b!4295709) (not b!4295718) (not bm!294595) (not b!4295732) (not d!1266083) (not b!4295716) (not bm!294601) (not b!4295602) (not b_next!128471) (not b!4295691) (not bm!294590) (not b!4295750) (not setNonEmpty!26724) (not bm!294597) (not b!4295719) (not bm!294613) (not b!4295698) (not b!4295740) (not bs!603784) b_and!338985 (not setNonEmpty!26716) (not bm!294589) (not d!1266079) (not b!4295690) b_and!338983 (not b!4295735) (not b!4295748) (not b!4295596) (not b!4295747) (not b!4295731) (not b!4295662) (not bm!294607) (not bm!294599) (not bm!294615) (not bm!294610) (not b!4295745) (not b!4295708) (not bm!294609) (not bm!294612) (not b!4295579) (not bm!294594) (not bm!294602) (not b!4295573) (not setNonEmpty!26728) (not b!4295749) (not bm!294596) (not b!4295643) (not b!4295645) (not b!4295730) (not b!4295651) (not setNonEmpty!26717) (not d!1266075) (not b_lambda!126123) (not b!4295717) (not bm!294606) (not d!1266091) (not b!4295694) (not d!1266077) (not b!4295707) (not bm!294611) (not bm!294619) (not b!4295659) (not bm!294616) (not b!4295655) (not bm!294605) (not setNonEmpty!26723) (not b!4295733) (not b!4295590) (not b!4295669) (not d!1266087) (not b!4295734) (not bm!294617) (not bm!294593))
(check-sat b_and!338985 b_and!338983 (not b_next!128473) (not b_next!128471))
