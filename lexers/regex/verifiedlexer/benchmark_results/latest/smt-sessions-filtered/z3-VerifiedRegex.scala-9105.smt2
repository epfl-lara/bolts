; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486934 () Bool)

(assert start!486934)

(declare-fun b!4761413 () Bool)

(declare-fun b_free!129397 () Bool)

(declare-fun b_next!130101 () Bool)

(assert (=> b!4761413 (= b_free!129397 (not b_next!130101))))

(declare-fun tp!1354013 () Bool)

(declare-fun b_and!341025 () Bool)

(assert (=> b!4761413 (= tp!1354013 b_and!341025)))

(declare-fun b!4761409 () Bool)

(declare-fun b_free!129399 () Bool)

(declare-fun b_next!130103 () Bool)

(assert (=> b!4761409 (= b_free!129399 (not b_next!130103))))

(declare-fun tp!1354017 () Bool)

(declare-fun b_and!341027 () Bool)

(assert (=> b!4761409 (= tp!1354017 b_and!341027)))

(declare-fun b_free!129401 () Bool)

(declare-fun b_next!130105 () Bool)

(assert (=> start!486934 (= b_free!129401 (not b_next!130105))))

(declare-fun tp!1354014 () Bool)

(declare-fun b_and!341029 () Bool)

(assert (=> start!486934 (= tp!1354014 b_and!341029)))

(declare-fun e!2971324 () Bool)

(declare-fun e!2971323 () Bool)

(assert (=> b!4761409 (= e!2971324 (and e!2971323 tp!1354017))))

(declare-fun b!4761410 () Bool)

(declare-fun e!2971322 () Bool)

(declare-fun tp!1354019 () Bool)

(declare-fun mapRes!21641 () Bool)

(assert (=> b!4761410 (= e!2971322 (and tp!1354019 mapRes!21641))))

(declare-fun condMapEmpty!21641 () Bool)

(declare-datatypes ((array!17764 0))(
  ( (array!17765 (arr!7923 (Array (_ BitVec 32) (_ BitVec 64))) (size!36150 (_ BitVec 32))) )
))
(declare-datatypes ((K!14814 0))(
  ( (K!14815 (val!20157 Int)) )
))
(declare-datatypes ((V!15060 0))(
  ( (V!15061 (val!20158 Int)) )
))
(declare-datatypes ((tuple2!55342 0))(
  ( (tuple2!55343 (_1!30965 K!14814) (_2!30965 V!15060)) )
))
(declare-datatypes ((List!53513 0))(
  ( (Nil!53389) (Cons!53389 (h!59800 tuple2!55342) (t!360875 List!53513)) )
))
(declare-datatypes ((array!17766 0))(
  ( (array!17767 (arr!7924 (Array (_ BitVec 32) List!53513)) (size!36151 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9738 0))(
  ( (LongMapFixedSize!9739 (defaultEntry!5283 Int) (mask!14589 (_ BitVec 32)) (extraKeys!5139 (_ BitVec 32)) (zeroValue!5152 List!53513) (minValue!5152 List!53513) (_size!9763 (_ BitVec 32)) (_keys!5204 array!17764) (_values!5177 array!17766) (_vacant!4934 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19241 0))(
  ( (Cell!19242 (v!47437 LongMapFixedSize!9738)) )
))
(declare-datatypes ((MutLongMap!4869 0))(
  ( (LongMap!4869 (underlying!9945 Cell!19241)) (MutLongMapExt!4868 (__x!32355 Int)) )
))
(declare-datatypes ((Cell!19243 0))(
  ( (Cell!19244 (v!47438 MutLongMap!4869)) )
))
(declare-datatypes ((Hashable!6530 0))(
  ( (HashableExt!6529 (__x!32356 Int)) )
))
(declare-datatypes ((MutableMap!4753 0))(
  ( (MutableMapExt!4752 (__x!32357 Int)) (HashMap!4753 (underlying!9946 Cell!19243) (hashF!12340 Hashable!6530) (_size!9764 (_ BitVec 32)) (defaultValue!4924 Int)) )
))
(declare-fun hm!63 () MutableMap!4753)

(declare-fun mapDefault!21641 () List!53513)

(assert (=> b!4761410 (= condMapEmpty!21641 (= (arr!7924 (_values!5177 (v!47437 (underlying!9945 (v!47438 (underlying!9946 hm!63)))))) ((as const (Array (_ BitVec 32) List!53513)) mapDefault!21641)))))

(declare-fun b!4761411 () Bool)

(declare-fun e!2971321 () Bool)

(declare-fun e!2971325 () Bool)

(assert (=> b!4761411 (= e!2971321 e!2971325)))

(declare-fun res!2019380 () Bool)

(assert (=> b!4761411 (=> (not res!2019380) (not e!2971325))))

(declare-datatypes ((ListMap!5725 0))(
  ( (ListMap!5726 (toList!6223 List!53513)) )
))
(declare-fun lt!1925257 () ListMap!5725)

(declare-fun p!6026 () Int)

(declare-fun forall!11845 (List!53513 Int) Bool)

(assert (=> b!4761411 (= res!2019380 (forall!11845 (toList!6223 lt!1925257) p!6026))))

(declare-fun map!11887 (MutableMap!4753) ListMap!5725)

(assert (=> b!4761411 (= lt!1925257 (map!11887 hm!63))))

(declare-fun b!4761412 () Bool)

(declare-fun e!2971319 () Bool)

(declare-fun e!2971326 () Bool)

(assert (=> b!4761412 (= e!2971319 e!2971326)))

(declare-fun tp!1354015 () Bool)

(declare-fun tp!1354012 () Bool)

(declare-fun e!2971327 () Bool)

(declare-fun array_inv!5701 (array!17764) Bool)

(declare-fun array_inv!5702 (array!17766) Bool)

(assert (=> b!4761413 (= e!2971327 (and tp!1354013 tp!1354012 tp!1354015 (array_inv!5701 (_keys!5204 (v!47437 (underlying!9945 (v!47438 (underlying!9946 hm!63)))))) (array_inv!5702 (_values!5177 (v!47437 (underlying!9945 (v!47438 (underlying!9946 hm!63)))))) e!2971322))))

(declare-fun b!4761414 () Bool)

(declare-fun e!2971320 () Bool)

(assert (=> b!4761414 (= e!2971320 false)))

(declare-datatypes ((Option!12611 0))(
  ( (None!12610) (Some!12610 (v!47439 V!15060)) )
))
(declare-fun lt!1925256 () Option!12611)

(declare-fun k0!1662 () K!14814)

(declare-fun getValueByKey!2141 (List!53513 K!14814) Option!12611)

(assert (=> b!4761414 (= lt!1925256 (getValueByKey!2141 (toList!6223 lt!1925257) k0!1662))))

(declare-fun b!4761415 () Bool)

(declare-fun res!2019378 () Bool)

(assert (=> b!4761415 (=> (not res!2019378) (not e!2971325))))

(declare-fun contains!16689 (MutableMap!4753 K!14814) Bool)

(assert (=> b!4761415 (= res!2019378 (contains!16689 hm!63 k0!1662))))

(declare-fun b!4761416 () Bool)

(assert (=> b!4761416 (= e!2971326 e!2971327)))

(declare-fun b!4761417 () Bool)

(assert (=> b!4761417 (= e!2971325 e!2971320)))

(declare-fun res!2019376 () Bool)

(assert (=> b!4761417 (=> (not res!2019376) (not e!2971320))))

(declare-fun invariantList!1651 (List!53513) Bool)

(assert (=> b!4761417 (= res!2019376 (invariantList!1651 (toList!6223 lt!1925257)))))

(declare-fun lt!1925259 () V!15060)

(declare-fun apply!12549 (MutableMap!4753 K!14814) V!15060)

(assert (=> b!4761417 (= lt!1925259 (apply!12549 hm!63 k0!1662))))

(declare-fun b!4761418 () Bool)

(declare-fun lt!1925258 () MutLongMap!4869)

(get-info :version)

(assert (=> b!4761418 (= e!2971323 (and e!2971319 ((_ is LongMap!4869) lt!1925258)))))

(assert (=> b!4761418 (= lt!1925258 (v!47438 (underlying!9946 hm!63)))))

(declare-fun b!4761419 () Bool)

(declare-fun res!2019377 () Bool)

(assert (=> b!4761419 (=> (not res!2019377) (not e!2971321))))

(declare-fun valid!3863 (MutableMap!4753) Bool)

(assert (=> b!4761419 (= res!2019377 (valid!3863 hm!63))))

(declare-fun mapNonEmpty!21641 () Bool)

(declare-fun tp!1354018 () Bool)

(declare-fun tp!1354016 () Bool)

(assert (=> mapNonEmpty!21641 (= mapRes!21641 (and tp!1354018 tp!1354016))))

(declare-fun mapValue!21641 () List!53513)

(declare-fun mapKey!21641 () (_ BitVec 32))

(declare-fun mapRest!21641 () (Array (_ BitVec 32) List!53513))

(assert (=> mapNonEmpty!21641 (= (arr!7924 (_values!5177 (v!47437 (underlying!9945 (v!47438 (underlying!9946 hm!63)))))) (store mapRest!21641 mapKey!21641 mapValue!21641))))

(declare-fun res!2019379 () Bool)

(assert (=> start!486934 (=> (not res!2019379) (not e!2971321))))

(assert (=> start!486934 (= res!2019379 ((_ is HashMap!4753) hm!63))))

(assert (=> start!486934 e!2971321))

(assert (=> start!486934 e!2971324))

(assert (=> start!486934 tp!1354014))

(declare-fun tp_is_empty!32303 () Bool)

(assert (=> start!486934 tp_is_empty!32303))

(declare-fun mapIsEmpty!21641 () Bool)

(assert (=> mapIsEmpty!21641 mapRes!21641))

(assert (= (and start!486934 res!2019379) b!4761419))

(assert (= (and b!4761419 res!2019377) b!4761411))

(assert (= (and b!4761411 res!2019380) b!4761415))

(assert (= (and b!4761415 res!2019378) b!4761417))

(assert (= (and b!4761417 res!2019376) b!4761414))

(assert (= (and b!4761410 condMapEmpty!21641) mapIsEmpty!21641))

(assert (= (and b!4761410 (not condMapEmpty!21641)) mapNonEmpty!21641))

(assert (= b!4761413 b!4761410))

(assert (= b!4761416 b!4761413))

(assert (= b!4761412 b!4761416))

(assert (= (and b!4761418 ((_ is LongMap!4869) (v!47438 (underlying!9946 hm!63)))) b!4761412))

(assert (= b!4761409 b!4761418))

(assert (= (and start!486934 ((_ is HashMap!4753) hm!63)) b!4761409))

(declare-fun m!5730526 () Bool)

(assert (=> b!4761414 m!5730526))

(declare-fun m!5730528 () Bool)

(assert (=> b!4761415 m!5730528))

(declare-fun m!5730530 () Bool)

(assert (=> mapNonEmpty!21641 m!5730530))

(declare-fun m!5730532 () Bool)

(assert (=> b!4761419 m!5730532))

(declare-fun m!5730534 () Bool)

(assert (=> b!4761417 m!5730534))

(declare-fun m!5730536 () Bool)

(assert (=> b!4761417 m!5730536))

(declare-fun m!5730538 () Bool)

(assert (=> b!4761413 m!5730538))

(declare-fun m!5730540 () Bool)

(assert (=> b!4761413 m!5730540))

(declare-fun m!5730542 () Bool)

(assert (=> b!4761411 m!5730542))

(declare-fun m!5730544 () Bool)

(assert (=> b!4761411 m!5730544))

(check-sat (not b!4761413) (not b!4761411) b_and!341029 b_and!341025 b_and!341027 (not b!4761419) (not b!4761415) tp_is_empty!32303 (not mapNonEmpty!21641) (not b_next!130103) (not b_next!130105) (not b_next!130101) (not b!4761414) (not b!4761410) (not b!4761417))
(check-sat b_and!341029 b_and!341025 b_and!341027 (not b_next!130101) (not b_next!130103) (not b_next!130105))
