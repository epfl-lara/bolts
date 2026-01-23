; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13270 () Bool)

(assert start!13270)

(declare-fun b!128691 () Bool)

(declare-fun b_free!3979 () Bool)

(declare-fun b_next!3979 () Bool)

(assert (=> b!128691 (= b_free!3979 (not b_next!3979))))

(declare-fun tp!70022 () Bool)

(declare-fun b_and!6109 () Bool)

(assert (=> b!128691 (= tp!70022 b_and!6109)))

(declare-fun b!128686 () Bool)

(declare-fun res!59300 () Bool)

(declare-fun e!74071 () Bool)

(assert (=> b!128686 (=> (not res!59300) (not e!74071))))

(declare-datatypes ((V!941 0))(
  ( (V!942 (val!810 Int)) )
))
(declare-datatypes ((array!1659 0))(
  ( (array!1660 (arr!770 (Array (_ BitVec 32) V!941)) (size!1964 (_ BitVec 32))) )
))
(declare-datatypes ((array!1661 0))(
  ( (array!1662 (arr!771 (Array (_ BitVec 32) (_ BitVec 64))) (size!1965 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!886 0))(
  ( (LongMapFixedSize!887 (defaultEntry!782 Int) (mask!1426 (_ BitVec 32)) (extraKeys!689 (_ BitVec 32)) (zeroValue!699 V!941) (minValue!699 V!941) (_size!1008 (_ BitVec 32)) (_keys!734 array!1661) (_values!721 array!1659) (_vacant!504 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1739 0))(
  ( (Cell!1740 (v!13468 LongMapFixedSize!886)) )
))
(declare-datatypes ((MutLongMap!443 0))(
  ( (LongMap!443 (underlying!1074 Cell!1739)) (MutLongMapExt!442 (__x!2242 Int)) )
))
(declare-fun thiss!47465 () MutLongMap!443)

(get-info :version)

(assert (=> b!128686 (= res!59300 (not ((_ is LongMap!443) thiss!47465)))))

(declare-fun mapIsEmpty!1705 () Bool)

(declare-fun mapRes!1705 () Bool)

(assert (=> mapIsEmpty!1705 mapRes!1705))

(declare-fun b!128688 () Bool)

(declare-fun e!74068 () Bool)

(assert (=> b!128688 (= e!74068 false)))

(declare-datatypes ((Option!203 0))(
  ( (None!202) (Some!202 (v!13469 V!941)) )
))
(declare-fun lt!38481 () Option!203)

(declare-fun key!7065 () (_ BitVec 64))

(declare-datatypes ((tuple2!2410 0))(
  ( (tuple2!2411 (_1!1415 (_ BitVec 64)) (_2!1415 V!941)) )
))
(declare-datatypes ((List!2130 0))(
  ( (Nil!2124) (Cons!2124 (h!7521 tuple2!2410) (t!22706 List!2130)) )
))
(declare-fun getValueByKey!7 (List!2130 (_ BitVec 64)) Option!203)

(declare-datatypes ((ListLongMap!33 0))(
  ( (ListLongMap!34 (toList!288 List!2130)) )
))
(declare-fun abstractMap!22 (MutLongMap!443) ListLongMap!33)

(assert (=> b!128688 (= lt!38481 (getValueByKey!7 (toList!288 (abstractMap!22 thiss!47465)) key!7065))))

(declare-fun b!128689 () Bool)

(declare-fun e!74065 () Bool)

(declare-fun tp_is_empty!1293 () Bool)

(assert (=> b!128689 (= e!74065 (and tp_is_empty!1293 mapRes!1705))))

(declare-fun condMapEmpty!1705 () Bool)

(declare-fun mapDefault!1705 () V!941)

(assert (=> b!128689 (= condMapEmpty!1705 (= (arr!770 (_values!721 (v!13468 (underlying!1074 thiss!47465)))) ((as const (Array (_ BitVec 32) V!941)) mapDefault!1705)))))

(declare-fun b!128690 () Bool)

(declare-fun e!74069 () Bool)

(declare-fun e!74070 () Bool)

(assert (=> b!128690 (= e!74069 e!74070)))

(declare-fun e!74066 () Bool)

(declare-fun array_inv!557 (array!1661) Bool)

(declare-fun array_inv!558 (array!1659) Bool)

(assert (=> b!128691 (= e!74066 (and tp!70022 tp_is_empty!1293 (array_inv!557 (_keys!734 (v!13468 (underlying!1074 thiss!47465)))) (array_inv!558 (_values!721 (v!13468 (underlying!1074 thiss!47465)))) e!74065))))

(declare-fun b!128692 () Bool)

(assert (=> b!128692 (= e!74070 e!74066)))

(declare-fun mapNonEmpty!1705 () Bool)

(declare-fun tp!70023 () Bool)

(assert (=> mapNonEmpty!1705 (= mapRes!1705 (and tp!70023 tp_is_empty!1293))))

(declare-fun mapValue!1705 () V!941)

(declare-fun mapRest!1705 () (Array (_ BitVec 32) V!941))

(declare-fun mapKey!1705 () (_ BitVec 32))

(assert (=> mapNonEmpty!1705 (= (arr!770 (_values!721 (v!13468 (underlying!1074 thiss!47465)))) (store mapRest!1705 mapKey!1705 mapValue!1705))))

(declare-fun b!128687 () Bool)

(assert (=> b!128687 (= e!74071 e!74068)))

(declare-fun res!59301 () Bool)

(assert (=> b!128687 (=> (not res!59301) (not e!74068))))

(declare-fun contains!301 (MutLongMap!443 (_ BitVec 64)) Bool)

(assert (=> b!128687 (= res!59301 (contains!301 thiss!47465 key!7065))))

(declare-fun lt!38480 () V!941)

(declare-fun apply!286 (MutLongMap!443 (_ BitVec 64)) V!941)

(assert (=> b!128687 (= lt!38480 (apply!286 thiss!47465 key!7065))))

(declare-fun res!59302 () Bool)

(assert (=> start!13270 (=> (not res!59302) (not e!74071))))

(declare-fun valid!396 (MutLongMap!443) Bool)

(assert (=> start!13270 (= res!59302 (valid!396 thiss!47465))))

(assert (=> start!13270 e!74071))

(assert (=> start!13270 e!74069))

(assert (=> start!13270 true))

(assert (= (and start!13270 res!59302) b!128686))

(assert (= (and b!128686 res!59300) b!128687))

(assert (= (and b!128687 res!59301) b!128688))

(assert (= (and b!128689 condMapEmpty!1705) mapIsEmpty!1705))

(assert (= (and b!128689 (not condMapEmpty!1705)) mapNonEmpty!1705))

(assert (= b!128691 b!128689))

(assert (= b!128692 b!128691))

(assert (= b!128690 b!128692))

(assert (= (and start!13270 ((_ is LongMap!443) thiss!47465)) b!128690))

(declare-fun m!113285 () Bool)

(assert (=> mapNonEmpty!1705 m!113285))

(declare-fun m!113287 () Bool)

(assert (=> start!13270 m!113287))

(declare-fun m!113289 () Bool)

(assert (=> b!128688 m!113289))

(declare-fun m!113291 () Bool)

(assert (=> b!128688 m!113291))

(declare-fun m!113293 () Bool)

(assert (=> b!128687 m!113293))

(declare-fun m!113295 () Bool)

(assert (=> b!128687 m!113295))

(declare-fun m!113297 () Bool)

(assert (=> b!128691 m!113297))

(declare-fun m!113299 () Bool)

(assert (=> b!128691 m!113299))

(check-sat (not b!128688) (not b!128687) (not b!128691) (not mapNonEmpty!1705) b_and!6109 tp_is_empty!1293 (not start!13270) (not b_next!3979))
(check-sat b_and!6109 (not b_next!3979))
