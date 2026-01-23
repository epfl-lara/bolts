; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496680 () Bool)

(assert start!496680)

(declare-fun b!4806648 () Bool)

(declare-fun b_free!129899 () Bool)

(declare-fun b_next!130689 () Bool)

(assert (=> b!4806648 (= b_free!129899 (not b_next!130689))))

(declare-fun tp!1359079 () Bool)

(declare-fun b_and!341657 () Bool)

(assert (=> b!4806648 (= tp!1359079 b_and!341657)))

(declare-fun b!4806650 () Bool)

(declare-fun b_free!129901 () Bool)

(declare-fun b_next!130691 () Bool)

(assert (=> b!4806650 (= b_free!129901 (not b_next!130691))))

(declare-fun tp!1359080 () Bool)

(declare-fun b_and!341659 () Bool)

(assert (=> b!4806650 (= tp!1359080 b_and!341659)))

(declare-fun b!4806644 () Bool)

(declare-fun e!3002055 () Bool)

(declare-datatypes ((K!15989 0))(
  ( (K!15990 (val!21097 Int)) )
))
(declare-datatypes ((array!18304 0))(
  ( (array!18305 (arr!8163 (Array (_ BitVec 32) (_ BitVec 64))) (size!36409 (_ BitVec 32))) )
))
(declare-datatypes ((V!16235 0))(
  ( (V!16236 (val!21098 Int)) )
))
(declare-datatypes ((tuple2!57152 0))(
  ( (tuple2!57153 (_1!31870 K!15989) (_2!31870 V!16235)) )
))
(declare-datatypes ((List!54529 0))(
  ( (Nil!54405) (Cons!54405 (h!60837 tuple2!57152) (t!361983 List!54529)) )
))
(declare-datatypes ((array!18306 0))(
  ( (array!18307 (arr!8164 (Array (_ BitVec 32) List!54529)) (size!36410 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9978 0))(
  ( (LongMapFixedSize!9979 (defaultEntry!5407 Int) (mask!14954 (_ BitVec 32)) (extraKeys!5264 (_ BitVec 32)) (zeroValue!5277 List!54529) (minValue!5277 List!54529) (_size!10003 (_ BitVec 32)) (_keys!5331 array!18304) (_values!5302 array!18306) (_vacant!5054 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19721 0))(
  ( (Cell!19722 (v!48617 LongMapFixedSize!9978)) )
))
(declare-datatypes ((MutLongMap!4989 0))(
  ( (LongMap!4989 (underlying!10185 Cell!19721)) (MutLongMapExt!4988 (__x!33065 Int)) )
))
(declare-datatypes ((Hashable!7000 0))(
  ( (HashableExt!6999 (__x!33066 Int)) )
))
(declare-datatypes ((Cell!19723 0))(
  ( (Cell!19724 (v!48618 MutLongMap!4989)) )
))
(declare-datatypes ((MutableMap!4873 0))(
  ( (MutableMapExt!4872 (__x!33067 Int)) (HashMap!4873 (underlying!10186 Cell!19723) (hashF!13268 Hashable!7000) (_size!10004 (_ BitVec 32)) (defaultValue!5044 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4873)

(get-info :version)

(assert (=> b!4806644 (= e!3002055 (not ((_ is LongMap!4989) (v!48618 (underlying!10186 thiss!41921)))))))

(declare-datatypes ((tuple2!57154 0))(
  ( (tuple2!57155 (_1!31871 (_ BitVec 64)) (_2!31871 List!54529)) )
))
(declare-datatypes ((List!54530 0))(
  ( (Nil!54406) (Cons!54406 (h!60838 tuple2!57154) (t!361984 List!54530)) )
))
(declare-datatypes ((ListLongMap!5485 0))(
  ( (ListLongMap!5486 (toList!7050 List!54530)) )
))
(declare-fun lt!1960052 () ListLongMap!5485)

(declare-fun lt!1960053 () (_ BitVec 64))

(declare-datatypes ((Option!13233 0))(
  ( (None!13232) (Some!13232 (v!48619 List!54529)) )
))
(declare-fun isDefined!10372 (Option!13233) Bool)

(declare-fun getValueByKey!2430 (List!54530 (_ BitVec 64)) Option!13233)

(assert (=> b!4806644 (isDefined!10372 (getValueByKey!2430 (toList!7050 lt!1960052) lt!1960053))))

(declare-datatypes ((Unit!141265 0))(
  ( (Unit!141266) )
))
(declare-fun lt!1960050 () Unit!141265)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2218 (List!54530 (_ BitVec 64)) Unit!141265)

(assert (=> b!4806644 (= lt!1960050 (lemmaContainsKeyImpliesGetValueByKeyDefined!2218 (toList!7050 lt!1960052) lt!1960053))))

(declare-fun containsKey!4085 (List!54530 (_ BitVec 64)) Bool)

(assert (=> b!4806644 (containsKey!4085 (toList!7050 lt!1960052) lt!1960053)))

(declare-fun lt!1960054 () Unit!141265)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!220 (List!54530 (_ BitVec 64)) Unit!141265)

(assert (=> b!4806644 (= lt!1960054 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!220 (toList!7050 lt!1960052) lt!1960053))))

(declare-fun b!4806645 () Bool)

(declare-fun e!3002060 () Bool)

(declare-fun e!3002058 () Bool)

(declare-fun lt!1960051 () MutLongMap!4989)

(assert (=> b!4806645 (= e!3002060 (and e!3002058 ((_ is LongMap!4989) lt!1960051)))))

(assert (=> b!4806645 (= lt!1960051 (v!48618 (underlying!10186 thiss!41921)))))

(declare-fun b!4806646 () Bool)

(declare-fun res!2044931 () Bool)

(declare-fun e!3002056 () Bool)

(assert (=> b!4806646 (=> (not res!2044931) (not e!3002056))))

(declare-fun valid!3998 (MutableMap!4873) Bool)

(assert (=> b!4806646 (= res!2044931 (valid!3998 thiss!41921))))

(declare-fun b!4806647 () Bool)

(declare-fun e!3002057 () Bool)

(declare-fun e!3002059 () Bool)

(assert (=> b!4806647 (= e!3002057 e!3002059)))

(declare-fun tp!1359075 () Bool)

(declare-fun tp!1359076 () Bool)

(declare-fun e!3002061 () Bool)

(declare-fun array_inv!5875 (array!18304) Bool)

(declare-fun array_inv!5876 (array!18306) Bool)

(assert (=> b!4806648 (= e!3002059 (and tp!1359079 tp!1359076 tp!1359075 (array_inv!5875 (_keys!5331 (v!48617 (underlying!10185 (v!48618 (underlying!10186 thiss!41921)))))) (array_inv!5876 (_values!5302 (v!48617 (underlying!10185 (v!48618 (underlying!10186 thiss!41921)))))) e!3002061))))

(declare-fun mapIsEmpty!22097 () Bool)

(declare-fun mapRes!22097 () Bool)

(assert (=> mapIsEmpty!22097 mapRes!22097))

(declare-fun b!4806649 () Bool)

(declare-fun e!3002052 () Bool)

(assert (=> b!4806649 (= e!3002056 e!3002052)))

(declare-fun res!2044930 () Bool)

(assert (=> b!4806649 (=> (not res!2044930) (not e!3002052))))

(declare-fun contains!18068 (MutLongMap!4989 (_ BitVec 64)) Bool)

(assert (=> b!4806649 (= res!2044930 (contains!18068 (v!48618 (underlying!10186 thiss!41921)) lt!1960053))))

(declare-fun key!1652 () K!15989)

(declare-fun hash!5067 (Hashable!7000 K!15989) (_ BitVec 64))

(assert (=> b!4806649 (= lt!1960053 (hash!5067 (hashF!13268 thiss!41921) key!1652))))

(declare-fun e!3002053 () Bool)

(assert (=> b!4806650 (= e!3002053 (and e!3002060 tp!1359080))))

(declare-fun res!2044928 () Bool)

(assert (=> start!496680 (=> (not res!2044928) (not e!3002056))))

(assert (=> start!496680 (= res!2044928 ((_ is HashMap!4873) thiss!41921))))

(assert (=> start!496680 e!3002056))

(assert (=> start!496680 e!3002053))

(declare-fun tp_is_empty!33827 () Bool)

(assert (=> start!496680 tp_is_empty!33827))

(declare-fun mapNonEmpty!22097 () Bool)

(declare-fun tp!1359074 () Bool)

(declare-fun tp!1359077 () Bool)

(assert (=> mapNonEmpty!22097 (= mapRes!22097 (and tp!1359074 tp!1359077))))

(declare-fun mapValue!22097 () List!54529)

(declare-fun mapRest!22097 () (Array (_ BitVec 32) List!54529))

(declare-fun mapKey!22097 () (_ BitVec 32))

(assert (=> mapNonEmpty!22097 (= (arr!8164 (_values!5302 (v!48617 (underlying!10185 (v!48618 (underlying!10186 thiss!41921)))))) (store mapRest!22097 mapKey!22097 mapValue!22097))))

(declare-fun b!4806651 () Bool)

(declare-fun tp!1359078 () Bool)

(assert (=> b!4806651 (= e!3002061 (and tp!1359078 mapRes!22097))))

(declare-fun condMapEmpty!22097 () Bool)

(declare-fun mapDefault!22097 () List!54529)

(assert (=> b!4806651 (= condMapEmpty!22097 (= (arr!8164 (_values!5302 (v!48617 (underlying!10185 (v!48618 (underlying!10186 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54529)) mapDefault!22097)))))

(declare-fun b!4806652 () Bool)

(assert (=> b!4806652 (= e!3002058 e!3002057)))

(declare-fun b!4806653 () Bool)

(assert (=> b!4806653 (= e!3002052 e!3002055)))

(declare-fun res!2044929 () Bool)

(assert (=> b!4806653 (=> (not res!2044929) (not e!3002055))))

(declare-fun contains!18069 (List!54530 tuple2!57154) Bool)

(declare-fun apply!13071 (MutLongMap!4989 (_ BitVec 64)) List!54529)

(assert (=> b!4806653 (= res!2044929 (not (contains!18069 (toList!7050 lt!1960052) (tuple2!57155 lt!1960053 (apply!13071 (v!48618 (underlying!10186 thiss!41921)) lt!1960053)))))))

(declare-fun map!12317 (MutLongMap!4989) ListLongMap!5485)

(assert (=> b!4806653 (= lt!1960052 (map!12317 (v!48618 (underlying!10186 thiss!41921))))))

(assert (= (and start!496680 res!2044928) b!4806646))

(assert (= (and b!4806646 res!2044931) b!4806649))

(assert (= (and b!4806649 res!2044930) b!4806653))

(assert (= (and b!4806653 res!2044929) b!4806644))

(assert (= (and b!4806651 condMapEmpty!22097) mapIsEmpty!22097))

(assert (= (and b!4806651 (not condMapEmpty!22097)) mapNonEmpty!22097))

(assert (= b!4806648 b!4806651))

(assert (= b!4806647 b!4806648))

(assert (= b!4806652 b!4806647))

(assert (= (and b!4806645 ((_ is LongMap!4989) (v!48618 (underlying!10186 thiss!41921)))) b!4806652))

(assert (= b!4806650 b!4806645))

(assert (= (and start!496680 ((_ is HashMap!4873) thiss!41921)) b!4806650))

(declare-fun m!5792962 () Bool)

(assert (=> b!4806648 m!5792962))

(declare-fun m!5792964 () Bool)

(assert (=> b!4806648 m!5792964))

(declare-fun m!5792966 () Bool)

(assert (=> b!4806646 m!5792966))

(declare-fun m!5792968 () Bool)

(assert (=> mapNonEmpty!22097 m!5792968))

(declare-fun m!5792970 () Bool)

(assert (=> b!4806649 m!5792970))

(declare-fun m!5792972 () Bool)

(assert (=> b!4806649 m!5792972))

(declare-fun m!5792974 () Bool)

(assert (=> b!4806653 m!5792974))

(declare-fun m!5792976 () Bool)

(assert (=> b!4806653 m!5792976))

(declare-fun m!5792978 () Bool)

(assert (=> b!4806653 m!5792978))

(declare-fun m!5792980 () Bool)

(assert (=> b!4806644 m!5792980))

(declare-fun m!5792982 () Bool)

(assert (=> b!4806644 m!5792982))

(assert (=> b!4806644 m!5792980))

(declare-fun m!5792984 () Bool)

(assert (=> b!4806644 m!5792984))

(declare-fun m!5792986 () Bool)

(assert (=> b!4806644 m!5792986))

(declare-fun m!5792988 () Bool)

(assert (=> b!4806644 m!5792988))

(check-sat (not b!4806646) (not b_next!130689) (not b!4806653) (not b!4806644) (not b!4806651) b_and!341657 (not b_next!130691) b_and!341659 (not mapNonEmpty!22097) tp_is_empty!33827 (not b!4806648) (not b!4806649))
(check-sat b_and!341657 b_and!341659 (not b_next!130689) (not b_next!130691))
