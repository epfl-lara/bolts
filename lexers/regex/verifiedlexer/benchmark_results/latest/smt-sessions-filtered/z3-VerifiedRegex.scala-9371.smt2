; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497294 () Bool)

(assert start!497294)

(declare-fun b!4810590 () Bool)

(declare-fun b_free!130147 () Bool)

(declare-fun b_next!130937 () Bool)

(assert (=> b!4810590 (= b_free!130147 (not b_next!130937))))

(declare-fun tp!1360574 () Bool)

(declare-fun b_and!341931 () Bool)

(assert (=> b!4810590 (= tp!1360574 b_and!341931)))

(declare-fun b!4810582 () Bool)

(declare-fun b_free!130149 () Bool)

(declare-fun b_next!130939 () Bool)

(assert (=> b!4810582 (= b_free!130149 (not b_next!130939))))

(declare-fun tp!1360572 () Bool)

(declare-fun b_and!341933 () Bool)

(assert (=> b!4810582 (= tp!1360572 b_and!341933)))

(declare-fun e!3005107 () Bool)

(declare-fun e!3005105 () Bool)

(assert (=> b!4810582 (= e!3005107 (and e!3005105 tp!1360572))))

(declare-fun res!2046277 () Bool)

(declare-fun e!3005108 () Bool)

(assert (=> start!497294 (=> (not res!2046277) (not e!3005108))))

(declare-datatypes ((K!16144 0))(
  ( (K!16145 (val!21221 Int)) )
))
(declare-datatypes ((array!18578 0))(
  ( (array!18579 (arr!8287 (Array (_ BitVec 32) (_ BitVec 64))) (size!36533 (_ BitVec 32))) )
))
(declare-datatypes ((V!16390 0))(
  ( (V!16391 (val!21222 Int)) )
))
(declare-datatypes ((tuple2!57388 0))(
  ( (tuple2!57389 (_1!31988 K!16144) (_2!31988 V!16390)) )
))
(declare-datatypes ((List!54655 0))(
  ( (Nil!54531) (Cons!54531 (h!60963 tuple2!57388) (t!362135 List!54655)) )
))
(declare-datatypes ((array!18580 0))(
  ( (array!18581 (arr!8288 (Array (_ BitVec 32) List!54655)) (size!36534 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10102 0))(
  ( (LongMapFixedSize!10103 (defaultEntry!5469 Int) (mask!15047 (_ BitVec 32)) (extraKeys!5326 (_ BitVec 32)) (zeroValue!5339 List!54655) (minValue!5339 List!54655) (_size!10127 (_ BitVec 32)) (_keys!5393 array!18578) (_values!5364 array!18580) (_vacant!5116 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19969 0))(
  ( (Cell!19970 (v!48843 LongMapFixedSize!10102)) )
))
(declare-datatypes ((MutLongMap!5051 0))(
  ( (LongMap!5051 (underlying!10309 Cell!19969)) (MutLongMapExt!5050 (__x!33251 Int)) )
))
(declare-datatypes ((Hashable!7062 0))(
  ( (HashableExt!7061 (__x!33252 Int)) )
))
(declare-datatypes ((Cell!19971 0))(
  ( (Cell!19972 (v!48844 MutLongMap!5051)) )
))
(declare-datatypes ((MutableMap!4935 0))(
  ( (MutableMapExt!4934 (__x!33253 Int)) (HashMap!4935 (underlying!10310 Cell!19971) (hashF!13336 Hashable!7062) (_size!10128 (_ BitVec 32)) (defaultValue!5106 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4935)

(get-info :version)

(assert (=> start!497294 (= res!2046277 ((_ is HashMap!4935) thiss!41921))))

(assert (=> start!497294 e!3005108))

(assert (=> start!497294 e!3005107))

(declare-fun tp_is_empty!33977 () Bool)

(assert (=> start!497294 tp_is_empty!33977))

(declare-fun b!4810583 () Bool)

(declare-fun res!2046276 () Bool)

(assert (=> b!4810583 (=> (not res!2046276) (not e!3005108))))

(declare-fun valid!4077 (MutableMap!4935) Bool)

(assert (=> b!4810583 (= res!2046276 (valid!4077 thiss!41921))))

(declare-fun b!4810584 () Bool)

(declare-fun res!2046278 () Bool)

(assert (=> b!4810584 (=> (not res!2046278) (not e!3005108))))

(declare-fun key!1652 () K!16144)

(declare-fun contains!18257 (MutLongMap!5051 (_ BitVec 64)) Bool)

(declare-fun hash!5131 (Hashable!7062 K!16144) (_ BitVec 64))

(assert (=> b!4810584 (= res!2046278 (contains!18257 (v!48844 (underlying!10310 thiss!41921)) (hash!5131 (hashF!13336 thiss!41921) key!1652)))))

(declare-fun b!4810585 () Bool)

(assert (=> b!4810585 (= e!3005108 false)))

(declare-datatypes ((tuple2!57390 0))(
  ( (tuple2!57391 (_1!31989 (_ BitVec 64)) (_2!31989 List!54655)) )
))
(declare-datatypes ((List!54656 0))(
  ( (Nil!54532) (Cons!54532 (h!60964 tuple2!57390) (t!362136 List!54656)) )
))
(declare-datatypes ((ListLongMap!5597 0))(
  ( (ListLongMap!5598 (toList!7140 List!54656)) )
))
(declare-fun lt!1962631 () ListLongMap!5597)

(declare-fun map!12413 (MutLongMap!5051) ListLongMap!5597)

(assert (=> b!4810585 (= lt!1962631 (map!12413 (v!48844 (underlying!10310 thiss!41921))))))

(declare-fun mapIsEmpty!22322 () Bool)

(declare-fun mapRes!22322 () Bool)

(assert (=> mapIsEmpty!22322 mapRes!22322))

(declare-fun b!4810586 () Bool)

(declare-fun e!3005109 () Bool)

(declare-fun lt!1962630 () MutLongMap!5051)

(assert (=> b!4810586 (= e!3005105 (and e!3005109 ((_ is LongMap!5051) lt!1962630)))))

(assert (=> b!4810586 (= lt!1962630 (v!48844 (underlying!10310 thiss!41921)))))

(declare-fun b!4810587 () Bool)

(declare-fun e!3005110 () Bool)

(assert (=> b!4810587 (= e!3005109 e!3005110)))

(declare-fun b!4810588 () Bool)

(declare-fun e!3005111 () Bool)

(assert (=> b!4810588 (= e!3005110 e!3005111)))

(declare-fun b!4810589 () Bool)

(declare-fun e!3005112 () Bool)

(declare-fun tp!1360571 () Bool)

(assert (=> b!4810589 (= e!3005112 (and tp!1360571 mapRes!22322))))

(declare-fun condMapEmpty!22322 () Bool)

(declare-fun mapDefault!22322 () List!54655)

(assert (=> b!4810589 (= condMapEmpty!22322 (= (arr!8288 (_values!5364 (v!48843 (underlying!10309 (v!48844 (underlying!10310 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54655)) mapDefault!22322)))))

(declare-fun tp!1360573 () Bool)

(declare-fun tp!1360575 () Bool)

(declare-fun array_inv!5983 (array!18578) Bool)

(declare-fun array_inv!5984 (array!18580) Bool)

(assert (=> b!4810590 (= e!3005111 (and tp!1360574 tp!1360573 tp!1360575 (array_inv!5983 (_keys!5393 (v!48843 (underlying!10309 (v!48844 (underlying!10310 thiss!41921)))))) (array_inv!5984 (_values!5364 (v!48843 (underlying!10309 (v!48844 (underlying!10310 thiss!41921)))))) e!3005112))))

(declare-fun mapNonEmpty!22322 () Bool)

(declare-fun tp!1360577 () Bool)

(declare-fun tp!1360576 () Bool)

(assert (=> mapNonEmpty!22322 (= mapRes!22322 (and tp!1360577 tp!1360576))))

(declare-fun mapKey!22322 () (_ BitVec 32))

(declare-fun mapValue!22322 () List!54655)

(declare-fun mapRest!22322 () (Array (_ BitVec 32) List!54655))

(assert (=> mapNonEmpty!22322 (= (arr!8288 (_values!5364 (v!48843 (underlying!10309 (v!48844 (underlying!10310 thiss!41921)))))) (store mapRest!22322 mapKey!22322 mapValue!22322))))

(assert (= (and start!497294 res!2046277) b!4810583))

(assert (= (and b!4810583 res!2046276) b!4810584))

(assert (= (and b!4810584 res!2046278) b!4810585))

(assert (= (and b!4810589 condMapEmpty!22322) mapIsEmpty!22322))

(assert (= (and b!4810589 (not condMapEmpty!22322)) mapNonEmpty!22322))

(assert (= b!4810590 b!4810589))

(assert (= b!4810588 b!4810590))

(assert (= b!4810587 b!4810588))

(assert (= (and b!4810586 ((_ is LongMap!5051) (v!48844 (underlying!10310 thiss!41921)))) b!4810587))

(assert (= b!4810582 b!4810586))

(assert (= (and start!497294 ((_ is HashMap!4935) thiss!41921)) b!4810582))

(declare-fun m!5796488 () Bool)

(assert (=> b!4810584 m!5796488))

(assert (=> b!4810584 m!5796488))

(declare-fun m!5796490 () Bool)

(assert (=> b!4810584 m!5796490))

(declare-fun m!5796492 () Bool)

(assert (=> b!4810583 m!5796492))

(declare-fun m!5796494 () Bool)

(assert (=> b!4810590 m!5796494))

(declare-fun m!5796496 () Bool)

(assert (=> b!4810590 m!5796496))

(declare-fun m!5796498 () Bool)

(assert (=> b!4810585 m!5796498))

(declare-fun m!5796500 () Bool)

(assert (=> mapNonEmpty!22322 m!5796500))

(check-sat (not b!4810585) (not b!4810589) (not b_next!130939) (not b!4810584) (not b!4810590) b_and!341931 (not b_next!130937) tp_is_empty!33977 (not b!4810583) (not mapNonEmpty!22322) b_and!341933)
(check-sat b_and!341931 b_and!341933 (not b_next!130937) (not b_next!130939))
