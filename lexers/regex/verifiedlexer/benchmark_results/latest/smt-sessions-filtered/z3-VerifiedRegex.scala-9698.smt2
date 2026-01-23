; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507930 () Bool)

(assert start!507930)

(declare-fun b!4860534 () Bool)

(declare-fun b_free!130435 () Bool)

(declare-fun b_next!131225 () Bool)

(assert (=> b!4860534 (= b_free!130435 (not b_next!131225))))

(declare-fun tp!1367268 () Bool)

(declare-fun b_and!342287 () Bool)

(assert (=> b!4860534 (= tp!1367268 b_and!342287)))

(declare-fun b!4860539 () Bool)

(declare-fun b_free!130437 () Bool)

(declare-fun b_next!131227 () Bool)

(assert (=> b!4860539 (= b_free!130437 (not b_next!131227))))

(declare-fun tp!1367274 () Bool)

(declare-fun b_and!342289 () Bool)

(assert (=> b!4860539 (= tp!1367274 b_and!342289)))

(declare-fun mapIsEmpty!22598 () Bool)

(declare-fun mapRes!22598 () Bool)

(assert (=> mapIsEmpty!22598 mapRes!22598))

(declare-fun b!4860525 () Bool)

(declare-fun e!3038754 () Bool)

(declare-fun tp!1367273 () Bool)

(assert (=> b!4860525 (= e!3038754 (and tp!1367273 mapRes!22598))))

(declare-fun condMapEmpty!22598 () Bool)

(declare-datatypes ((C!26364 0))(
  ( (C!26365 (val!22444 Int)) )
))
(declare-datatypes ((Regex!13083 0))(
  ( (ElementMatch!13083 (c!826815 C!26364)) (Concat!21402 (regOne!26678 Regex!13083) (regTwo!26678 Regex!13083)) (EmptyExpr!13083) (Star!13083 (reg!13412 Regex!13083)) (EmptyLang!13083) (Union!13083 (regOne!26679 Regex!13083) (regTwo!26679 Regex!13083)) )
))
(declare-datatypes ((List!55921 0))(
  ( (Nil!55797) (Cons!55797 (h!62245 Regex!13083) (t!363541 List!55921)) )
))
(declare-datatypes ((Context!5946 0))(
  ( (Context!5947 (exprs!3473 List!55921)) )
))
(declare-datatypes ((tuple3!5538 0))(
  ( (tuple3!5539 (_1!33103 Regex!13083) (_2!33103 Context!5946) (_3!3302 C!26364)) )
))
(declare-datatypes ((array!18895 0))(
  ( (array!18896 (arr!8432 (Array (_ BitVec 32) (_ BitVec 64))) (size!36775 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!59602 0))(
  ( (tuple2!59603 (_1!33104 tuple3!5538) (_2!33104 (InoxSet Context!5946))) )
))
(declare-datatypes ((List!55922 0))(
  ( (Nil!55798) (Cons!55798 (h!62246 tuple2!59602) (t!363542 List!55922)) )
))
(declare-datatypes ((array!18897 0))(
  ( (array!18898 (arr!8433 (Array (_ BitVec 32) List!55922)) (size!36776 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10248 0))(
  ( (LongMapFixedSize!10249 (defaultEntry!5549 Int) (mask!15463 (_ BitVec 32)) (extraKeys!5408 (_ BitVec 32)) (zeroValue!5421 List!55922) (minValue!5421 List!55922) (_size!10261 (_ BitVec 32)) (_keys!5478 array!18895) (_values!5446 array!18897) (_vacant!5189 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20237 0))(
  ( (Cell!20238 (v!49631 LongMapFixedSize!10248)) )
))
(declare-datatypes ((MutLongMap!5124 0))(
  ( (LongMap!5124 (underlying!10443 Cell!20237)) (MutLongMapExt!5123 (__x!33892 Int)) )
))
(declare-datatypes ((Cell!20239 0))(
  ( (Cell!20240 (v!49632 MutLongMap!5124)) )
))
(declare-datatypes ((Hashable!7569 0))(
  ( (HashableExt!7568 (__x!33893 Int)) )
))
(declare-datatypes ((MutableMap!4996 0))(
  ( (MutableMapExt!4995 (__x!33894 Int)) (HashMap!4996 (underlying!10444 Cell!20239) (hashF!13836 Hashable!7569) (_size!10262 (_ BitVec 32)) (defaultValue!5167 Int)) )
))
(declare-fun m!3472 () MutableMap!4996)

(declare-fun mapDefault!22598 () List!55922)

(assert (=> b!4860525 (= condMapEmpty!22598 (= (arr!8433 (_values!5446 (v!49631 (underlying!10443 (v!49632 (underlying!10444 m!3472)))))) ((as const (Array (_ BitVec 32) List!55922)) mapDefault!22598)))))

(declare-fun b!4860526 () Bool)

(declare-fun e!3038752 () Bool)

(declare-fun tp!1367278 () Bool)

(declare-fun tp!1367272 () Bool)

(assert (=> b!4860526 (= e!3038752 (and tp!1367278 tp!1367272))))

(declare-fun mapNonEmpty!22598 () Bool)

(declare-fun tp!1367277 () Bool)

(declare-fun tp!1367271 () Bool)

(assert (=> mapNonEmpty!22598 (= mapRes!22598 (and tp!1367277 tp!1367271))))

(declare-fun mapValue!22598 () List!55922)

(declare-fun mapRest!22598 () (Array (_ BitVec 32) List!55922))

(declare-fun mapKey!22598 () (_ BitVec 32))

(assert (=> mapNonEmpty!22598 (= (arr!8433 (_values!5446 (v!49631 (underlying!10443 (v!49632 (underlying!10444 m!3472)))))) (store mapRest!22598 mapKey!22598 mapValue!22598))))

(declare-fun b!4860527 () Bool)

(declare-fun res!2074974 () Bool)

(declare-fun e!3038758 () Bool)

(assert (=> b!4860527 (=> (not res!2074974) (not e!3038758))))

(declare-fun valid!4146 (MutableMap!4996) Bool)

(assert (=> b!4860527 (= res!2074974 (valid!4146 m!3472))))

(declare-fun b!4860528 () Bool)

(assert (=> b!4860528 (= e!3038758 false)))

(declare-fun b!4860529 () Bool)

(declare-fun tp!1367266 () Bool)

(declare-fun tp!1367276 () Bool)

(assert (=> b!4860529 (= e!3038752 (and tp!1367266 tp!1367276))))

(declare-fun res!2074973 () Bool)

(assert (=> start!507930 (=> (not res!2074973) (not e!3038758))))

(get-info :version)

(assert (=> start!507930 (= res!2074973 ((_ is HashMap!4996) m!3472))))

(assert (=> start!507930 e!3038758))

(declare-fun e!3038749 () Bool)

(assert (=> start!507930 e!3038749))

(declare-fun condSetEmpty!27360 () Bool)

(declare-fun _$7!21 () tuple2!59602)

(assert (=> start!507930 (= condSetEmpty!27360 (= (_2!33104 _$7!21) ((as const (Array Context!5946 Bool)) false)))))

(declare-fun setRes!27360 () Bool)

(declare-fun tp_is_empty!35579 () Bool)

(declare-fun e!3038751 () Bool)

(declare-fun inv!71672 (Context!5946) Bool)

(assert (=> start!507930 (and e!3038752 (inv!71672 (_2!33103 (_1!33104 _$7!21))) e!3038751 tp_is_empty!35579 setRes!27360)))

(declare-fun tp!1367270 () Bool)

(declare-fun setNonEmpty!27360 () Bool)

(declare-fun setElem!27360 () Context!5946)

(declare-fun e!3038750 () Bool)

(assert (=> setNonEmpty!27360 (= setRes!27360 (and tp!1367270 (inv!71672 setElem!27360) e!3038750))))

(declare-fun setRest!27360 () (InoxSet Context!5946))

(assert (=> setNonEmpty!27360 (= (_2!33104 _$7!21) ((_ map or) (store ((as const (Array Context!5946 Bool)) false) setElem!27360 true) setRest!27360))))

(declare-fun b!4860530 () Bool)

(declare-fun e!3038748 () Bool)

(declare-fun e!3038756 () Bool)

(declare-fun lt!1992291 () MutLongMap!5124)

(assert (=> b!4860530 (= e!3038748 (and e!3038756 ((_ is LongMap!5124) lt!1992291)))))

(assert (=> b!4860530 (= lt!1992291 (v!49632 (underlying!10444 m!3472)))))

(declare-fun setIsEmpty!27360 () Bool)

(assert (=> setIsEmpty!27360 setRes!27360))

(declare-fun b!4860531 () Bool)

(declare-fun tp!1367265 () Bool)

(assert (=> b!4860531 (= e!3038752 tp!1367265)))

(declare-fun b!4860532 () Bool)

(declare-fun e!3038757 () Bool)

(declare-fun e!3038755 () Bool)

(assert (=> b!4860532 (= e!3038757 e!3038755)))

(declare-fun b!4860533 () Bool)

(declare-fun tp!1367267 () Bool)

(assert (=> b!4860533 (= e!3038751 tp!1367267)))

(assert (=> b!4860534 (= e!3038749 (and e!3038748 tp!1367268))))

(declare-fun b!4860535 () Bool)

(assert (=> b!4860535 (= e!3038756 e!3038757)))

(declare-fun b!4860536 () Bool)

(assert (=> b!4860536 (= e!3038752 tp_is_empty!35579)))

(declare-fun b!4860537 () Bool)

(declare-fun res!2074975 () Bool)

(assert (=> b!4860537 (=> (not res!2074975) (not e!3038758))))

(declare-fun invariantList!1898 (List!55922) Bool)

(declare-datatypes ((ListMap!7165 0))(
  ( (ListMap!7166 (toList!7919 List!55922)) )
))
(declare-fun map!12840 (MutableMap!4996) ListMap!7165)

(assert (=> b!4860537 (= res!2074975 (invariantList!1898 (toList!7919 (map!12840 m!3472))))))

(declare-fun b!4860538 () Bool)

(declare-fun tp!1367269 () Bool)

(assert (=> b!4860538 (= e!3038750 tp!1367269)))

(declare-fun tp!1367275 () Bool)

(declare-fun tp!1367279 () Bool)

(declare-fun array_inv!6090 (array!18895) Bool)

(declare-fun array_inv!6091 (array!18897) Bool)

(assert (=> b!4860539 (= e!3038755 (and tp!1367274 tp!1367279 tp!1367275 (array_inv!6090 (_keys!5478 (v!49631 (underlying!10443 (v!49632 (underlying!10444 m!3472)))))) (array_inv!6091 (_values!5446 (v!49631 (underlying!10443 (v!49632 (underlying!10444 m!3472)))))) e!3038754))))

(assert (= (and start!507930 res!2074973) b!4860527))

(assert (= (and b!4860527 res!2074974) b!4860537))

(assert (= (and b!4860537 res!2074975) b!4860528))

(assert (= (and b!4860525 condMapEmpty!22598) mapIsEmpty!22598))

(assert (= (and b!4860525 (not condMapEmpty!22598)) mapNonEmpty!22598))

(assert (= b!4860539 b!4860525))

(assert (= b!4860532 b!4860539))

(assert (= b!4860535 b!4860532))

(assert (= (and b!4860530 ((_ is LongMap!5124) (v!49632 (underlying!10444 m!3472)))) b!4860535))

(assert (= b!4860534 b!4860530))

(assert (= (and start!507930 ((_ is HashMap!4996) m!3472)) b!4860534))

(assert (= (and start!507930 ((_ is ElementMatch!13083) (_1!33103 (_1!33104 _$7!21)))) b!4860536))

(assert (= (and start!507930 ((_ is Concat!21402) (_1!33103 (_1!33104 _$7!21)))) b!4860529))

(assert (= (and start!507930 ((_ is Star!13083) (_1!33103 (_1!33104 _$7!21)))) b!4860531))

(assert (= (and start!507930 ((_ is Union!13083) (_1!33103 (_1!33104 _$7!21)))) b!4860526))

(assert (= start!507930 b!4860533))

(assert (= (and start!507930 condSetEmpty!27360) setIsEmpty!27360))

(assert (= (and start!507930 (not condSetEmpty!27360)) setNonEmpty!27360))

(assert (= setNonEmpty!27360 b!4860538))

(declare-fun m!5858578 () Bool)

(assert (=> b!4860537 m!5858578))

(declare-fun m!5858580 () Bool)

(assert (=> b!4860537 m!5858580))

(declare-fun m!5858582 () Bool)

(assert (=> mapNonEmpty!22598 m!5858582))

(declare-fun m!5858584 () Bool)

(assert (=> b!4860539 m!5858584))

(declare-fun m!5858586 () Bool)

(assert (=> b!4860539 m!5858586))

(declare-fun m!5858588 () Bool)

(assert (=> b!4860527 m!5858588))

(declare-fun m!5858590 () Bool)

(assert (=> start!507930 m!5858590))

(declare-fun m!5858592 () Bool)

(assert (=> setNonEmpty!27360 m!5858592))

(check-sat (not b!4860531) (not b!4860525) (not b!4860526) b_and!342289 (not b!4860537) (not b!4860529) (not b!4860527) (not b!4860533) (not setNonEmpty!27360) (not b!4860539) b_and!342287 (not b!4860538) (not mapNonEmpty!22598) (not b_next!131227) tp_is_empty!35579 (not start!507930) (not b_next!131225))
(check-sat b_and!342289 b_and!342287 (not b_next!131225) (not b_next!131227))
