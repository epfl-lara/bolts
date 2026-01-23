; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412358 () Bool)

(assert start!412358)

(declare-fun b!4295377 () Bool)

(declare-fun b_free!127751 () Bool)

(declare-fun b_next!128455 () Bool)

(assert (=> b!4295377 (= b_free!127751 (not b_next!128455))))

(declare-fun tp!1318983 () Bool)

(declare-fun b_and!338967 () Bool)

(assert (=> b!4295377 (= tp!1318983 b_and!338967)))

(declare-fun b!4295375 () Bool)

(declare-fun b_free!127753 () Bool)

(declare-fun b_next!128457 () Bool)

(assert (=> b!4295375 (= b_free!127753 (not b_next!128457))))

(declare-fun tp!1318981 () Bool)

(declare-fun b_and!338969 () Bool)

(assert (=> b!4295375 (= tp!1318981 b_and!338969)))

(declare-fun b!4295370 () Bool)

(declare-fun e!2669321 () Bool)

(declare-datatypes ((C!26172 0))(
  ( (C!26173 (val!15412 Int)) )
))
(declare-datatypes ((Regex!12987 0))(
  ( (ElementMatch!12987 (c!730840 C!26172)) (Concat!21306 (regOne!26486 Regex!12987) (regTwo!26486 Regex!12987)) (EmptyExpr!12987) (Star!12987 (reg!13316 Regex!12987)) (EmptyLang!12987) (Union!12987 (regOne!26487 Regex!12987) (regTwo!26487 Regex!12987)) )
))
(declare-datatypes ((List!47948 0))(
  ( (Nil!47824) (Cons!47824 (h!53244 Regex!12987) (t!354555 List!47948)) )
))
(declare-datatypes ((Context!5754 0))(
  ( (Context!5755 (exprs!3377 List!47948)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45584 0))(
  ( (tuple2!45585 (_1!26071 (InoxSet Context!5754)) (_2!26071 Int)) )
))
(declare-datatypes ((tuple2!45586 0))(
  ( (tuple2!45587 (_1!26072 tuple2!45584) (_2!26072 Int)) )
))
(declare-datatypes ((List!47949 0))(
  ( (Nil!47825) (Cons!47825 (h!53245 tuple2!45586) (t!354556 List!47949)) )
))
(declare-datatypes ((array!15940 0))(
  ( (array!15941 (arr!7123 (Array (_ BitVec 32) (_ BitVec 64))) (size!35129 (_ BitVec 32))) )
))
(declare-datatypes ((array!15942 0))(
  ( (array!15943 (arr!7124 (Array (_ BitVec 32) List!47949)) (size!35130 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8938 0))(
  ( (LongMapFixedSize!8939 (defaultEntry!4854 Int) (mask!12932 (_ BitVec 32)) (extraKeys!4718 (_ BitVec 32)) (zeroValue!4728 List!47949) (minValue!4728 List!47949) (_size!8981 (_ BitVec 32)) (_keys!4769 array!15940) (_values!4750 array!15942) (_vacant!4530 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17685 0))(
  ( (Cell!17686 (v!41769 LongMapFixedSize!8938)) )
))
(declare-datatypes ((MutLongMap!4469 0))(
  ( (LongMap!4469 (underlying!9167 Cell!17685)) (MutLongMapExt!4468 (__x!29432 Int)) )
))
(declare-datatypes ((Cell!17687 0))(
  ( (Cell!17688 (v!41770 MutLongMap!4469)) )
))
(declare-datatypes ((Hashable!4385 0))(
  ( (HashableExt!4384 (__x!29433 Int)) )
))
(declare-datatypes ((MutableMap!4375 0))(
  ( (MutableMapExt!4374 (__x!29434 Int)) (HashMap!4375 (underlying!9168 Cell!17687) (hashF!6417 Hashable!4385) (_size!8982 (_ BitVec 32)) (defaultValue!4546 Int)) )
))
(declare-datatypes ((List!47950 0))(
  ( (Nil!47826) (Cons!47826 (h!53246 C!26172) (t!354557 List!47950)) )
))
(declare-datatypes ((IArray!28917 0))(
  ( (IArray!28918 (innerList!14516 List!47950)) )
))
(declare-datatypes ((Conc!14428 0))(
  ( (Node!14428 (left!35464 Conc!14428) (right!35794 Conc!14428) (csize!29086 Int) (cheight!14639 Int)) (Leaf!22323 (xs!17734 IArray!28917) (csize!29087 Int)) (Empty!14428) )
))
(declare-datatypes ((BalanceConc!28346 0))(
  ( (BalanceConc!28347 (c!730841 Conc!14428)) )
))
(declare-datatypes ((CacheFindLongestMatch!544 0))(
  ( (CacheFindLongestMatch!545 (cache!4515 MutableMap!4375) (totalInput!4400 BalanceConc!28346)) )
))
(declare-fun thiss!29019 () CacheFindLongestMatch!544)

(declare-fun tp!1318984 () Bool)

(declare-fun inv!63362 (Conc!14428) Bool)

(assert (=> b!4295370 (= e!2669321 (and (inv!63362 (c!730841 (totalInput!4400 thiss!29019))) tp!1318984))))

(declare-fun b!4295371 () Bool)

(declare-fun e!2669318 () Bool)

(declare-fun e!2669313 () Bool)

(assert (=> b!4295371 (= e!2669318 e!2669313)))

(declare-fun b!4295372 () Bool)

(declare-fun e!2669320 () Bool)

(declare-fun lt!1517907 () MutLongMap!4469)

(get-info :version)

(assert (=> b!4295372 (= e!2669320 (and e!2669318 ((_ is LongMap!4469) lt!1517907)))))

(assert (=> b!4295372 (= lt!1517907 (v!41770 (underlying!9168 (cache!4515 thiss!29019))))))

(declare-fun b!4295373 () Bool)

(declare-fun res!1760664 () Bool)

(declare-fun e!2669322 () Bool)

(assert (=> b!4295373 (=> (not res!1760664) (not e!2669322))))

(declare-fun validCacheMapFindLongestMatch!84 (MutableMap!4375 BalanceConc!28346) Bool)

(assert (=> b!4295373 (= res!1760664 (validCacheMapFindLongestMatch!84 (cache!4515 thiss!29019) (totalInput!4400 thiss!29019)))))

(declare-fun b!4295374 () Bool)

(declare-fun e!2669316 () Bool)

(assert (=> b!4295374 (= e!2669313 e!2669316)))

(declare-fun tp!1318985 () Bool)

(declare-fun e!2669315 () Bool)

(declare-fun tp!1318987 () Bool)

(declare-fun array_inv!5105 (array!15940) Bool)

(declare-fun array_inv!5106 (array!15942) Bool)

(assert (=> b!4295375 (= e!2669316 (and tp!1318981 tp!1318985 tp!1318987 (array_inv!5105 (_keys!4769 (v!41769 (underlying!9167 (v!41770 (underlying!9168 (cache!4515 thiss!29019))))))) (array_inv!5106 (_values!4750 (v!41769 (underlying!9167 (v!41770 (underlying!9168 (cache!4515 thiss!29019))))))) e!2669315))))

(declare-fun b!4295376 () Bool)

(declare-fun tp!1318986 () Bool)

(declare-fun mapRes!20091 () Bool)

(assert (=> b!4295376 (= e!2669315 (and tp!1318986 mapRes!20091))))

(declare-fun condMapEmpty!20091 () Bool)

(declare-fun mapDefault!20091 () List!47949)

(assert (=> b!4295376 (= condMapEmpty!20091 (= (arr!7124 (_values!4750 (v!41769 (underlying!9167 (v!41770 (underlying!9168 (cache!4515 thiss!29019))))))) ((as const (Array (_ BitVec 32) List!47949)) mapDefault!20091)))))

(declare-fun e!2669319 () Bool)

(assert (=> b!4295377 (= e!2669319 (and e!2669320 tp!1318983))))

(declare-fun res!1760666 () Bool)

(assert (=> start!412358 (=> (not res!1760666) (not e!2669322))))

(declare-fun localTotalInput!12 () BalanceConc!28346)

(assert (=> start!412358 (= res!1760666 (= localTotalInput!12 (totalInput!4400 thiss!29019)))))

(assert (=> start!412358 e!2669322))

(declare-fun e!2669317 () Bool)

(declare-fun inv!63363 (BalanceConc!28346) Bool)

(assert (=> start!412358 (and (inv!63363 localTotalInput!12) e!2669317)))

(declare-fun e!2669314 () Bool)

(declare-fun inv!63364 (CacheFindLongestMatch!544) Bool)

(assert (=> start!412358 (and (inv!63364 thiss!29019) e!2669314)))

(assert (=> start!412358 true))

(declare-fun mapIsEmpty!20091 () Bool)

(assert (=> mapIsEmpty!20091 mapRes!20091))

(declare-fun mapNonEmpty!20091 () Bool)

(declare-fun tp!1318980 () Bool)

(declare-fun tp!1318979 () Bool)

(assert (=> mapNonEmpty!20091 (= mapRes!20091 (and tp!1318980 tp!1318979))))

(declare-fun mapValue!20091 () List!47949)

(declare-fun mapRest!20091 () (Array (_ BitVec 32) List!47949))

(declare-fun mapKey!20091 () (_ BitVec 32))

(assert (=> mapNonEmpty!20091 (= (arr!7124 (_values!4750 (v!41769 (underlying!9167 (v!41770 (underlying!9168 (cache!4515 thiss!29019))))))) (store mapRest!20091 mapKey!20091 mapValue!20091))))

(declare-fun b!4295378 () Bool)

(assert (=> b!4295378 (= e!2669322 false)))

(declare-fun lt!1517906 () Int)

(declare-fun size!35131 (BalanceConc!28346) Int)

(assert (=> b!4295378 (= lt!1517906 (size!35131 (totalInput!4400 thiss!29019)))))

(declare-fun b!4295379 () Bool)

(declare-fun res!1760665 () Bool)

(assert (=> b!4295379 (=> (not res!1760665) (not e!2669322))))

(declare-fun from!940 () Int)

(assert (=> b!4295379 (= res!1760665 (>= from!940 0))))

(declare-fun b!4295380 () Bool)

(declare-fun tp!1318982 () Bool)

(assert (=> b!4295380 (= e!2669317 (and (inv!63362 (c!730841 localTotalInput!12)) tp!1318982))))

(declare-fun b!4295381 () Bool)

(assert (=> b!4295381 (= e!2669314 (and e!2669319 (inv!63363 (totalInput!4400 thiss!29019)) e!2669321))))

(assert (= (and start!412358 res!1760666) b!4295373))

(assert (= (and b!4295373 res!1760664) b!4295379))

(assert (= (and b!4295379 res!1760665) b!4295378))

(assert (= start!412358 b!4295380))

(assert (= (and b!4295376 condMapEmpty!20091) mapIsEmpty!20091))

(assert (= (and b!4295376 (not condMapEmpty!20091)) mapNonEmpty!20091))

(assert (= b!4295375 b!4295376))

(assert (= b!4295374 b!4295375))

(assert (= b!4295371 b!4295374))

(assert (= (and b!4295372 ((_ is LongMap!4469) (v!41770 (underlying!9168 (cache!4515 thiss!29019))))) b!4295371))

(assert (= b!4295377 b!4295372))

(assert (= (and b!4295381 ((_ is HashMap!4375) (cache!4515 thiss!29019))) b!4295377))

(assert (= b!4295381 b!4295370))

(assert (= start!412358 b!4295381))

(declare-fun m!4887955 () Bool)

(assert (=> mapNonEmpty!20091 m!4887955))

(declare-fun m!4887957 () Bool)

(assert (=> start!412358 m!4887957))

(declare-fun m!4887959 () Bool)

(assert (=> start!412358 m!4887959))

(declare-fun m!4887961 () Bool)

(assert (=> b!4295375 m!4887961))

(declare-fun m!4887963 () Bool)

(assert (=> b!4295375 m!4887963))

(declare-fun m!4887965 () Bool)

(assert (=> b!4295381 m!4887965))

(declare-fun m!4887967 () Bool)

(assert (=> b!4295378 m!4887967))

(declare-fun m!4887969 () Bool)

(assert (=> b!4295380 m!4887969))

(declare-fun m!4887971 () Bool)

(assert (=> b!4295373 m!4887971))

(declare-fun m!4887973 () Bool)

(assert (=> b!4295370 m!4887973))

(check-sat (not start!412358) (not b!4295378) b_and!338969 (not mapNonEmpty!20091) (not b!4295376) (not b!4295373) (not b!4295375) (not b!4295380) (not b!4295381) (not b!4295370) (not b_next!128455) (not b_next!128457) b_and!338967)
(check-sat b_and!338967 b_and!338969 (not b_next!128455) (not b_next!128457))
