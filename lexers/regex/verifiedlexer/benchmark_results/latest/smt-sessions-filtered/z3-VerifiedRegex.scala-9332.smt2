; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496594 () Bool)

(assert start!496594)

(declare-fun b!4806059 () Bool)

(declare-fun b_free!129835 () Bool)

(declare-fun b_next!130625 () Bool)

(assert (=> b!4806059 (= b_free!129835 (not b_next!130625))))

(declare-fun tp!1358694 () Bool)

(declare-fun b_and!341589 () Bool)

(assert (=> b!4806059 (= tp!1358694 b_and!341589)))

(declare-fun b!4806057 () Bool)

(declare-fun b_free!129837 () Bool)

(declare-fun b_next!130627 () Bool)

(assert (=> b!4806057 (= b_free!129837 (not b_next!130627))))

(declare-fun tp!1358698 () Bool)

(declare-fun b_and!341591 () Bool)

(assert (=> b!4806057 (= tp!1358698 b_and!341591)))

(declare-fun res!2044688 () Bool)

(declare-fun e!3001523 () Bool)

(assert (=> start!496594 (=> (not res!2044688) (not e!3001523))))

(declare-datatypes ((K!15949 0))(
  ( (K!15950 (val!21065 Int)) )
))
(declare-datatypes ((array!18234 0))(
  ( (array!18235 (arr!8131 (Array (_ BitVec 32) (_ BitVec 64))) (size!36377 (_ BitVec 32))) )
))
(declare-datatypes ((V!16195 0))(
  ( (V!16196 (val!21066 Int)) )
))
(declare-datatypes ((tuple2!57098 0))(
  ( (tuple2!57099 (_1!31843 K!15949) (_2!31843 V!16195)) )
))
(declare-datatypes ((List!54502 0))(
  ( (Nil!54378) (Cons!54378 (h!60810 tuple2!57098) (t!361952 List!54502)) )
))
(declare-datatypes ((array!18236 0))(
  ( (array!18237 (arr!8132 (Array (_ BitVec 32) List!54502)) (size!36378 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9946 0))(
  ( (LongMapFixedSize!9947 (defaultEntry!5391 Int) (mask!14930 (_ BitVec 32)) (extraKeys!5248 (_ BitVec 32)) (zeroValue!5261 List!54502) (minValue!5261 List!54502) (_size!9971 (_ BitVec 32)) (_keys!5315 array!18234) (_values!5286 array!18236) (_vacant!5038 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19657 0))(
  ( (Cell!19658 (v!48580 LongMapFixedSize!9946)) )
))
(declare-datatypes ((MutLongMap!4973 0))(
  ( (LongMap!4973 (underlying!10153 Cell!19657)) (MutLongMapExt!4972 (__x!33017 Int)) )
))
(declare-datatypes ((Hashable!6984 0))(
  ( (HashableExt!6983 (__x!33018 Int)) )
))
(declare-datatypes ((Cell!19659 0))(
  ( (Cell!19660 (v!48581 MutLongMap!4973)) )
))
(declare-datatypes ((MutableMap!4857 0))(
  ( (MutableMapExt!4856 (__x!33019 Int)) (HashMap!4857 (underlying!10154 Cell!19659) (hashF!13252 Hashable!6984) (_size!9972 (_ BitVec 32)) (defaultValue!5028 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4857)

(get-info :version)

(assert (=> start!496594 (= res!2044688 ((_ is HashMap!4857) thiss!41921))))

(assert (=> start!496594 e!3001523))

(declare-fun e!3001522 () Bool)

(assert (=> start!496594 e!3001522))

(declare-fun tp_is_empty!33789 () Bool)

(assert (=> start!496594 tp_is_empty!33789))

(declare-fun b!4806054 () Bool)

(declare-fun e!3001525 () Bool)

(declare-fun e!3001521 () Bool)

(assert (=> b!4806054 (= e!3001525 e!3001521)))

(declare-fun b!4806055 () Bool)

(assert (=> b!4806055 (= e!3001523 (not ((_ is LongMap!4973) (v!48581 (underlying!10154 thiss!41921)))))))

(declare-datatypes ((tuple2!57100 0))(
  ( (tuple2!57101 (_1!31844 (_ BitVec 64)) (_2!31844 List!54502)) )
))
(declare-datatypes ((List!54503 0))(
  ( (Nil!54379) (Cons!54379 (h!60811 tuple2!57100) (t!361953 List!54503)) )
))
(declare-datatypes ((ListLongMap!5463 0))(
  ( (ListLongMap!5464 (toList!7039 List!54503)) )
))
(declare-fun lt!1959879 () ListLongMap!5463)

(declare-fun map!12297 (MutLongMap!4973) ListLongMap!5463)

(assert (=> b!4806055 (= lt!1959879 (map!12297 (v!48581 (underlying!10154 thiss!41921))))))

(declare-fun b!4806056 () Bool)

(declare-fun e!3001524 () Bool)

(assert (=> b!4806056 (= e!3001521 e!3001524)))

(declare-fun e!3001527 () Bool)

(assert (=> b!4806057 (= e!3001522 (and e!3001527 tp!1358698))))

(declare-fun mapIsEmpty!22040 () Bool)

(declare-fun mapRes!22040 () Bool)

(assert (=> mapIsEmpty!22040 mapRes!22040))

(declare-fun b!4806058 () Bool)

(declare-fun lt!1959880 () MutLongMap!4973)

(assert (=> b!4806058 (= e!3001527 (and e!3001525 ((_ is LongMap!4973) lt!1959880)))))

(assert (=> b!4806058 (= lt!1959880 (v!48581 (underlying!10154 thiss!41921)))))

(declare-fun tp!1358693 () Bool)

(declare-fun e!3001520 () Bool)

(declare-fun tp!1358695 () Bool)

(declare-fun array_inv!5857 (array!18234) Bool)

(declare-fun array_inv!5858 (array!18236) Bool)

(assert (=> b!4806059 (= e!3001524 (and tp!1358694 tp!1358693 tp!1358695 (array_inv!5857 (_keys!5315 (v!48580 (underlying!10153 (v!48581 (underlying!10154 thiss!41921)))))) (array_inv!5858 (_values!5286 (v!48580 (underlying!10153 (v!48581 (underlying!10154 thiss!41921)))))) e!3001520))))

(declare-fun b!4806060 () Bool)

(declare-fun res!2044687 () Bool)

(assert (=> b!4806060 (=> (not res!2044687) (not e!3001523))))

(declare-fun valid!3981 (MutableMap!4857) Bool)

(assert (=> b!4806060 (= res!2044687 (valid!3981 thiss!41921))))

(declare-fun b!4806061 () Bool)

(declare-fun res!2044686 () Bool)

(assert (=> b!4806061 (=> (not res!2044686) (not e!3001523))))

(declare-fun key!1652 () K!15949)

(declare-fun contains!18044 (MutLongMap!4973 (_ BitVec 64)) Bool)

(declare-fun hash!5053 (Hashable!6984 K!15949) (_ BitVec 64))

(assert (=> b!4806061 (= res!2044686 (contains!18044 (v!48581 (underlying!10154 thiss!41921)) (hash!5053 (hashF!13252 thiss!41921) key!1652)))))

(declare-fun b!4806062 () Bool)

(declare-fun tp!1358697 () Bool)

(assert (=> b!4806062 (= e!3001520 (and tp!1358697 mapRes!22040))))

(declare-fun condMapEmpty!22040 () Bool)

(declare-fun mapDefault!22040 () List!54502)

(assert (=> b!4806062 (= condMapEmpty!22040 (= (arr!8132 (_values!5286 (v!48580 (underlying!10153 (v!48581 (underlying!10154 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54502)) mapDefault!22040)))))

(declare-fun mapNonEmpty!22040 () Bool)

(declare-fun tp!1358699 () Bool)

(declare-fun tp!1358696 () Bool)

(assert (=> mapNonEmpty!22040 (= mapRes!22040 (and tp!1358699 tp!1358696))))

(declare-fun mapValue!22040 () List!54502)

(declare-fun mapKey!22040 () (_ BitVec 32))

(declare-fun mapRest!22040 () (Array (_ BitVec 32) List!54502))

(assert (=> mapNonEmpty!22040 (= (arr!8132 (_values!5286 (v!48580 (underlying!10153 (v!48581 (underlying!10154 thiss!41921)))))) (store mapRest!22040 mapKey!22040 mapValue!22040))))

(assert (= (and start!496594 res!2044688) b!4806060))

(assert (= (and b!4806060 res!2044687) b!4806061))

(assert (= (and b!4806061 res!2044686) b!4806055))

(assert (= (and b!4806062 condMapEmpty!22040) mapIsEmpty!22040))

(assert (= (and b!4806062 (not condMapEmpty!22040)) mapNonEmpty!22040))

(assert (= b!4806059 b!4806062))

(assert (= b!4806056 b!4806059))

(assert (= b!4806054 b!4806056))

(assert (= (and b!4806058 ((_ is LongMap!4973) (v!48581 (underlying!10154 thiss!41921)))) b!4806054))

(assert (= b!4806057 b!4806058))

(assert (= (and start!496594 ((_ is HashMap!4857) thiss!41921)) b!4806057))

(declare-fun m!5792554 () Bool)

(assert (=> b!4806055 m!5792554))

(declare-fun m!5792556 () Bool)

(assert (=> mapNonEmpty!22040 m!5792556))

(declare-fun m!5792558 () Bool)

(assert (=> b!4806060 m!5792558))

(declare-fun m!5792560 () Bool)

(assert (=> b!4806061 m!5792560))

(assert (=> b!4806061 m!5792560))

(declare-fun m!5792562 () Bool)

(assert (=> b!4806061 m!5792562))

(declare-fun m!5792564 () Bool)

(assert (=> b!4806059 m!5792564))

(declare-fun m!5792566 () Bool)

(assert (=> b!4806059 m!5792566))

(check-sat (not b!4806055) (not b_next!130627) b_and!341591 b_and!341589 (not mapNonEmpty!22040) (not b!4806062) (not b!4806059) tp_is_empty!33789 (not b_next!130625) (not b!4806061) (not b!4806060))
(check-sat b_and!341589 b_and!341591 (not b_next!130625) (not b_next!130627))
