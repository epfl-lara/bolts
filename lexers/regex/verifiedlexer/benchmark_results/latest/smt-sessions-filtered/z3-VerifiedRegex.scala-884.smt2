; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46584 () Bool)

(assert start!46584)

(declare-fun b_free!13391 () Bool)

(declare-fun b_next!13391 () Bool)

(assert (=> start!46584 (= b_free!13391 (not b_next!13391))))

(declare-fun tp!160231 () Bool)

(declare-fun b_and!50823 () Bool)

(assert (=> start!46584 (= tp!160231 b_and!50823)))

(declare-fun b!514181 () Bool)

(declare-fun b_free!13393 () Bool)

(declare-fun b_next!13393 () Bool)

(assert (=> b!514181 (= b_free!13393 (not b_next!13393))))

(declare-fun tp!160235 () Bool)

(declare-fun b_and!50825 () Bool)

(assert (=> b!514181 (= tp!160235 b_and!50825)))

(declare-fun b!514186 () Bool)

(declare-fun b_free!13395 () Bool)

(declare-fun b_next!13395 () Bool)

(assert (=> b!514186 (= b_free!13395 (not b_next!13395))))

(declare-fun tp!160234 () Bool)

(declare-fun b_and!50827 () Bool)

(assert (=> b!514186 (= tp!160234 b_and!50827)))

(declare-fun b!514180 () Bool)

(declare-fun res!217999 () Bool)

(declare-fun e!307342 () Bool)

(assert (=> b!514180 (=> (not res!217999) (not e!307342))))

(declare-datatypes ((V!1435 0))(
  ( (V!1436 (val!1733 Int)) )
))
(declare-datatypes ((K!1337 0))(
  ( (K!1338 (val!1734 Int)) )
))
(declare-datatypes ((tuple2!5626 0))(
  ( (tuple2!5627 (_1!3029 K!1337) (_2!3029 V!1435)) )
))
(declare-datatypes ((List!4686 0))(
  ( (Nil!4676) (Cons!4676 (h!10073 tuple2!5626) (t!73214 List!4686)) )
))
(declare-datatypes ((array!1869 0))(
  ( (array!1870 (arr!862 (Array (_ BitVec 32) List!4686)) (size!3796 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!461 0))(
  ( (HashableExt!460 (__x!3358 Int)) )
))
(declare-datatypes ((array!1871 0))(
  ( (array!1872 (arr!863 (Array (_ BitVec 32) (_ BitVec 64))) (size!3797 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!978 0))(
  ( (LongMapFixedSize!979 (defaultEntry!840 Int) (mask!1898 (_ BitVec 32)) (extraKeys!735 (_ BitVec 32)) (zeroValue!745 List!4686) (minValue!745 List!4686) (_size!1087 (_ BitVec 32)) (_keys!780 array!1871) (_values!767 array!1869) (_vacant!550 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1897 0))(
  ( (Cell!1898 (v!15695 LongMapFixedSize!978)) )
))
(declare-datatypes ((MutLongMap!489 0))(
  ( (LongMap!489 (underlying!1157 Cell!1897)) (MutLongMapExt!488 (__x!3359 Int)) )
))
(declare-datatypes ((Cell!1899 0))(
  ( (Cell!1900 (v!15696 MutLongMap!489)) )
))
(declare-datatypes ((MutableMap!461 0))(
  ( (MutableMapExt!460 (__x!3360 Int)) (HashMap!461 (underlying!1158 Cell!1899) (hashF!2337 Hashable!461) (_size!1088 (_ BitVec 32)) (defaultValue!610 Int)) )
))
(declare-fun hm!65 () MutableMap!461)

(declare-fun valid!446 (MutableMap!461) Bool)

(assert (=> b!514180 (= res!217999 (valid!446 hm!65))))

(declare-fun e!307337 () Bool)

(declare-fun e!307341 () Bool)

(declare-fun tp!160233 () Bool)

(declare-fun tp!160237 () Bool)

(declare-fun array_inv!623 (array!1871) Bool)

(declare-fun array_inv!624 (array!1869) Bool)

(assert (=> b!514181 (= e!307337 (and tp!160235 tp!160237 tp!160233 (array_inv!623 (_keys!780 (v!15695 (underlying!1157 (v!15696 (underlying!1158 hm!65)))))) (array_inv!624 (_values!767 (v!15695 (underlying!1157 (v!15696 (underlying!1158 hm!65)))))) e!307341))))

(declare-fun b!514182 () Bool)

(declare-fun e!307338 () Bool)

(declare-fun e!307346 () Bool)

(assert (=> b!514182 (= e!307338 e!307346)))

(declare-fun res!217997 () Bool)

(assert (=> b!514182 (=> (not res!217997) (not e!307346))))

(declare-datatypes ((tuple2!5628 0))(
  ( (tuple2!5629 (_1!3030 Bool) (_2!3030 MutableMap!461)) )
))
(declare-fun lt!212896 () tuple2!5628)

(assert (=> b!514182 (= res!217997 (valid!446 (_2!3030 lt!212896)))))

(declare-fun k0!1740 () K!1337)

(declare-fun remove!15 (MutableMap!461 K!1337) tuple2!5628)

(assert (=> b!514182 (= lt!212896 (remove!15 hm!65 k0!1740))))

(declare-datatypes ((ListMap!131 0))(
  ( (ListMap!132 (toList!380 List!4686)) )
))
(declare-fun lt!212893 () ListMap!131)

(declare-fun lt!212897 () ListMap!131)

(declare-fun -!12 (ListMap!131 K!1337) ListMap!131)

(assert (=> b!514182 (= lt!212893 (-!12 lt!212897 k0!1740))))

(declare-fun mapNonEmpty!1888 () Bool)

(declare-fun mapRes!1888 () Bool)

(declare-fun tp!160230 () Bool)

(declare-fun tp!160232 () Bool)

(assert (=> mapNonEmpty!1888 (= mapRes!1888 (and tp!160230 tp!160232))))

(declare-fun mapValue!1888 () List!4686)

(declare-fun mapKey!1888 () (_ BitVec 32))

(declare-fun mapRest!1888 () (Array (_ BitVec 32) List!4686))

(assert (=> mapNonEmpty!1888 (= (arr!862 (_values!767 (v!15695 (underlying!1157 (v!15696 (underlying!1158 hm!65)))))) (store mapRest!1888 mapKey!1888 mapValue!1888))))

(declare-fun b!514183 () Bool)

(assert (=> b!514183 (= e!307346 false)))

(declare-fun lt!212895 () Bool)

(declare-fun invariantList!46 (List!4686) Bool)

(declare-fun map!984 (MutableMap!461) ListMap!131)

(assert (=> b!514183 (= lt!212895 (invariantList!46 (toList!380 (map!984 (_2!3030 lt!212896)))))))

(declare-fun b!514184 () Bool)

(declare-fun e!307345 () Bool)

(declare-fun e!307340 () Bool)

(assert (=> b!514184 (= e!307345 e!307340)))

(declare-fun res!217998 () Bool)

(assert (=> start!46584 (=> (not res!217998) (not e!307342))))

(get-info :version)

(assert (=> start!46584 (= res!217998 ((_ is HashMap!461) hm!65))))

(assert (=> start!46584 e!307342))

(declare-fun e!307339 () Bool)

(assert (=> start!46584 e!307339))

(assert (=> start!46584 tp!160231))

(declare-fun tp_is_empty!2545 () Bool)

(assert (=> start!46584 tp_is_empty!2545))

(declare-fun b!514185 () Bool)

(assert (=> b!514185 (= e!307340 e!307337)))

(declare-fun mapIsEmpty!1888 () Bool)

(assert (=> mapIsEmpty!1888 mapRes!1888))

(declare-fun e!307344 () Bool)

(assert (=> b!514186 (= e!307339 (and e!307344 tp!160234))))

(declare-fun b!514187 () Bool)

(assert (=> b!514187 (= e!307342 e!307338)))

(declare-fun res!218000 () Bool)

(assert (=> b!514187 (=> (not res!218000) (not e!307338))))

(declare-fun p!6060 () Int)

(declare-fun forall!1364 (List!4686 Int) Bool)

(assert (=> b!514187 (= res!218000 (forall!1364 (toList!380 lt!212897) p!6060))))

(assert (=> b!514187 (= lt!212897 (map!984 hm!65))))

(declare-fun b!514188 () Bool)

(declare-fun tp!160236 () Bool)

(assert (=> b!514188 (= e!307341 (and tp!160236 mapRes!1888))))

(declare-fun condMapEmpty!1888 () Bool)

(declare-fun mapDefault!1888 () List!4686)

(assert (=> b!514188 (= condMapEmpty!1888 (= (arr!862 (_values!767 (v!15695 (underlying!1157 (v!15696 (underlying!1158 hm!65)))))) ((as const (Array (_ BitVec 32) List!4686)) mapDefault!1888)))))

(declare-fun b!514189 () Bool)

(declare-fun lt!212894 () MutLongMap!489)

(assert (=> b!514189 (= e!307344 (and e!307345 ((_ is LongMap!489) lt!212894)))))

(assert (=> b!514189 (= lt!212894 (v!15696 (underlying!1158 hm!65)))))

(assert (= (and start!46584 res!217998) b!514180))

(assert (= (and b!514180 res!217999) b!514187))

(assert (= (and b!514187 res!218000) b!514182))

(assert (= (and b!514182 res!217997) b!514183))

(assert (= (and b!514188 condMapEmpty!1888) mapIsEmpty!1888))

(assert (= (and b!514188 (not condMapEmpty!1888)) mapNonEmpty!1888))

(assert (= b!514181 b!514188))

(assert (= b!514185 b!514181))

(assert (= b!514184 b!514185))

(assert (= (and b!514189 ((_ is LongMap!489) (v!15696 (underlying!1158 hm!65)))) b!514184))

(assert (= b!514186 b!514189))

(assert (= (and start!46584 ((_ is HashMap!461) hm!65)) b!514186))

(declare-fun m!760249 () Bool)

(assert (=> b!514180 m!760249))

(declare-fun m!760251 () Bool)

(assert (=> b!514182 m!760251))

(declare-fun m!760253 () Bool)

(assert (=> b!514182 m!760253))

(declare-fun m!760255 () Bool)

(assert (=> b!514182 m!760255))

(declare-fun m!760257 () Bool)

(assert (=> b!514187 m!760257))

(declare-fun m!760259 () Bool)

(assert (=> b!514187 m!760259))

(declare-fun m!760261 () Bool)

(assert (=> b!514183 m!760261))

(declare-fun m!760263 () Bool)

(assert (=> b!514183 m!760263))

(declare-fun m!760265 () Bool)

(assert (=> b!514181 m!760265))

(declare-fun m!760267 () Bool)

(assert (=> b!514181 m!760267))

(declare-fun m!760269 () Bool)

(assert (=> mapNonEmpty!1888 m!760269))

(check-sat (not b_next!13393) (not mapNonEmpty!1888) (not b!514188) tp_is_empty!2545 (not b_next!13391) b_and!50827 (not b!514180) (not b!514183) (not b!514181) (not b!514182) (not b_next!13395) b_and!50823 b_and!50825 (not b!514187))
(check-sat (not b_next!13393) (not b_next!13391) b_and!50827 b_and!50825 (not b_next!13395) b_and!50823)
