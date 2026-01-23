; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46648 () Bool)

(assert start!46648)

(declare-fun b!514875 () Bool)

(declare-fun b_free!13475 () Bool)

(declare-fun b_next!13475 () Bool)

(assert (=> b!514875 (= b_free!13475 (not b_next!13475))))

(declare-fun tp!160599 () Bool)

(declare-fun b_and!50913 () Bool)

(assert (=> b!514875 (= tp!160599 b_and!50913)))

(declare-fun b!514886 () Bool)

(declare-fun b_free!13477 () Bool)

(declare-fun b_next!13477 () Bool)

(assert (=> b!514886 (= b_free!13477 (not b_next!13477))))

(declare-fun tp!160598 () Bool)

(declare-fun b_and!50915 () Bool)

(assert (=> b!514886 (= tp!160598 b_and!50915)))

(declare-fun b_free!13479 () Bool)

(declare-fun b_next!13479 () Bool)

(assert (=> start!46648 (= b_free!13479 (not b_next!13479))))

(declare-fun tp!160602 () Bool)

(declare-fun b_and!50917 () Bool)

(assert (=> start!46648 (= tp!160602 b_and!50917)))

(declare-fun bm!37438 () Bool)

(declare-fun call!37443 () Bool)

(declare-datatypes ((K!1372 0))(
  ( (K!1373 (val!1761 Int)) )
))
(declare-datatypes ((V!1470 0))(
  ( (V!1471 (val!1762 Int)) )
))
(declare-datatypes ((tuple2!5690 0))(
  ( (tuple2!5691 (_1!3061 K!1372) (_2!3061 V!1470)) )
))
(declare-datatypes ((List!4704 0))(
  ( (Nil!4694) (Cons!4694 (h!10091 tuple2!5690) (t!73238 List!4704)) )
))
(declare-datatypes ((ListMap!159 0))(
  ( (ListMap!160 (toList!396 List!4704)) )
))
(declare-fun lt!213338 () ListMap!159)

(declare-fun p!6060 () Int)

(declare-fun forall!1379 (List!4704 Int) Bool)

(assert (=> bm!37438 (= call!37443 (forall!1379 (toList!396 lt!213338) p!6060))))

(declare-fun e!307897 () Bool)

(declare-fun e!307901 () Bool)

(assert (=> b!514875 (= e!307897 (and e!307901 tp!160599))))

(declare-fun b!514876 () Bool)

(declare-fun e!307896 () Bool)

(declare-fun e!307895 () Bool)

(assert (=> b!514876 (= e!307896 e!307895)))

(declare-fun res!218354 () Bool)

(assert (=> b!514876 (=> (not res!218354) (not e!307895))))

(declare-datatypes ((array!1929 0))(
  ( (array!1930 (arr!890 (Array (_ BitVec 32) List!4704)) (size!3824 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!475 0))(
  ( (HashableExt!474 (__x!3400 Int)) )
))
(declare-datatypes ((array!1931 0))(
  ( (array!1932 (arr!891 (Array (_ BitVec 32) (_ BitVec 64))) (size!3825 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1006 0))(
  ( (LongMapFixedSize!1007 (defaultEntry!854 Int) (mask!1919 (_ BitVec 32)) (extraKeys!749 (_ BitVec 32)) (zeroValue!759 List!4704) (minValue!759 List!4704) (_size!1115 (_ BitVec 32)) (_keys!794 array!1931) (_values!781 array!1929) (_vacant!564 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1953 0))(
  ( (Cell!1954 (v!15723 LongMapFixedSize!1006)) )
))
(declare-datatypes ((MutLongMap!503 0))(
  ( (LongMap!503 (underlying!1185 Cell!1953)) (MutLongMapExt!502 (__x!3401 Int)) )
))
(declare-datatypes ((Cell!1955 0))(
  ( (Cell!1956 (v!15724 MutLongMap!503)) )
))
(declare-datatypes ((MutableMap!475 0))(
  ( (MutableMapExt!474 (__x!3402 Int)) (HashMap!475 (underlying!1186 Cell!1955) (hashF!2351 Hashable!475) (_size!1116 (_ BitVec 32)) (defaultValue!624 Int)) )
))
(declare-datatypes ((tuple2!5692 0))(
  ( (tuple2!5693 (_1!3062 Bool) (_2!3062 MutableMap!475)) )
))
(declare-fun lt!213337 () tuple2!5692)

(declare-fun valid!459 (MutableMap!475) Bool)

(assert (=> b!514876 (= res!218354 (valid!459 (_2!3062 lt!213337)))))

(declare-fun hm!65 () MutableMap!475)

(declare-fun k0!1740 () K!1372)

(declare-fun remove!24 (MutableMap!475 K!1372) tuple2!5692)

(assert (=> b!514876 (= lt!213337 (remove!24 hm!65 k0!1740))))

(declare-fun lt!213339 () ListMap!159)

(declare-fun -!21 (ListMap!159 K!1372) ListMap!159)

(assert (=> b!514876 (= lt!213338 (-!21 lt!213339 k0!1740))))

(declare-fun res!218353 () Bool)

(declare-fun e!307894 () Bool)

(assert (=> start!46648 (=> (not res!218353) (not e!307894))))

(get-info :version)

(assert (=> start!46648 (= res!218353 ((_ is HashMap!475) hm!65))))

(assert (=> start!46648 e!307894))

(assert (=> start!46648 e!307897))

(assert (=> start!46648 tp!160602))

(declare-fun tp_is_empty!2577 () Bool)

(assert (=> start!46648 tp_is_empty!2577))

(declare-fun mapIsEmpty!1936 () Bool)

(declare-fun mapRes!1936 () Bool)

(assert (=> mapIsEmpty!1936 mapRes!1936))

(declare-fun b!514877 () Bool)

(declare-datatypes ((Unit!8482 0))(
  ( (Unit!8483) )
))
(declare-fun e!307902 () Unit!8482)

(declare-fun lt!213332 () Unit!8482)

(assert (=> b!514877 (= e!307902 lt!213332)))

(declare-fun lt!213334 () Unit!8482)

(declare-fun lemmaForallSubset!7 (List!4704 List!4704 Int) Unit!8482)

(assert (=> b!514877 (= lt!213334 (lemmaForallSubset!7 (toList!396 lt!213338) (toList!396 lt!213339) p!6060))))

(assert (=> b!514877 call!37443))

(declare-fun call!37444 () Unit!8482)

(assert (=> b!514877 (= lt!213332 call!37444)))

(declare-fun lt!213333 () ListMap!159)

(assert (=> b!514877 (forall!1379 (toList!396 lt!213333) p!6060)))

(declare-fun b!514878 () Bool)

(declare-fun res!218350 () Bool)

(assert (=> b!514878 (=> (not res!218350) (not e!307894))))

(assert (=> b!514878 (= res!218350 (valid!459 hm!65))))

(declare-fun b!514879 () Bool)

(declare-fun e!307893 () Bool)

(declare-fun lt!213340 () MutLongMap!503)

(assert (=> b!514879 (= e!307901 (and e!307893 ((_ is LongMap!503) lt!213340)))))

(assert (=> b!514879 (= lt!213340 (v!15724 (underlying!1186 hm!65)))))

(declare-fun b!514880 () Bool)

(declare-fun e!307892 () Bool)

(assert (=> b!514880 (= e!307892 false)))

(declare-fun lt!213336 () Unit!8482)

(assert (=> b!514880 (= lt!213336 e!307902)))

(declare-fun c!99819 () Bool)

(assert (=> b!514880 (= c!99819 (_1!3062 lt!213337))))

(declare-fun b!514881 () Bool)

(assert (=> b!514881 (= e!307894 e!307896)))

(declare-fun res!218352 () Bool)

(assert (=> b!514881 (=> (not res!218352) (not e!307896))))

(assert (=> b!514881 (= res!218352 (forall!1379 (toList!396 lt!213339) p!6060))))

(declare-fun map!1006 (MutableMap!475) ListMap!159)

(assert (=> b!514881 (= lt!213339 (map!1006 hm!65))))

(declare-fun b!514882 () Bool)

(declare-fun e!307898 () Bool)

(declare-fun tp!160597 () Bool)

(assert (=> b!514882 (= e!307898 (and tp!160597 mapRes!1936))))

(declare-fun condMapEmpty!1936 () Bool)

(declare-fun mapDefault!1936 () List!4704)

(assert (=> b!514882 (= condMapEmpty!1936 (= (arr!890 (_values!781 (v!15723 (underlying!1185 (v!15724 (underlying!1186 hm!65)))))) ((as const (Array (_ BitVec 32) List!4704)) mapDefault!1936)))))

(declare-fun b!514883 () Bool)

(declare-fun e!307899 () Bool)

(declare-fun e!307891 () Bool)

(assert (=> b!514883 (= e!307899 e!307891)))

(declare-fun b!514884 () Bool)

(assert (=> b!514884 (= e!307895 e!307892)))

(declare-fun res!218351 () Bool)

(assert (=> b!514884 (=> (not res!218351) (not e!307892))))

(declare-fun invariantList!58 (List!4704) Bool)

(assert (=> b!514884 (= res!218351 (invariantList!58 (toList!396 lt!213333)))))

(assert (=> b!514884 (= lt!213333 (map!1006 (_2!3062 lt!213337)))))

(declare-fun bm!37439 () Bool)

(assert (=> bm!37439 (= call!37444 (lemmaForallSubset!7 (ite c!99819 (toList!396 lt!213333) (toList!396 lt!213338)) (ite c!99819 (toList!396 lt!213338) (toList!396 lt!213339)) p!6060))))

(declare-fun mapNonEmpty!1936 () Bool)

(declare-fun tp!160603 () Bool)

(declare-fun tp!160601 () Bool)

(assert (=> mapNonEmpty!1936 (= mapRes!1936 (and tp!160603 tp!160601))))

(declare-fun mapRest!1936 () (Array (_ BitVec 32) List!4704))

(declare-fun mapValue!1936 () List!4704)

(declare-fun mapKey!1936 () (_ BitVec 32))

(assert (=> mapNonEmpty!1936 (= (arr!890 (_values!781 (v!15723 (underlying!1185 (v!15724 (underlying!1186 hm!65)))))) (store mapRest!1936 mapKey!1936 mapValue!1936))))

(declare-fun b!514885 () Bool)

(declare-fun lt!213335 () Unit!8482)

(assert (=> b!514885 (= e!307902 lt!213335)))

(assert (=> b!514885 (= lt!213335 call!37444)))

(assert (=> b!514885 call!37443))

(declare-fun tp!160600 () Bool)

(declare-fun tp!160596 () Bool)

(declare-fun array_inv!647 (array!1931) Bool)

(declare-fun array_inv!648 (array!1929) Bool)

(assert (=> b!514886 (= e!307891 (and tp!160598 tp!160596 tp!160600 (array_inv!647 (_keys!794 (v!15723 (underlying!1185 (v!15724 (underlying!1186 hm!65)))))) (array_inv!648 (_values!781 (v!15723 (underlying!1185 (v!15724 (underlying!1186 hm!65)))))) e!307898))))

(declare-fun b!514887 () Bool)

(assert (=> b!514887 (= e!307893 e!307899)))

(assert (= (and start!46648 res!218353) b!514878))

(assert (= (and b!514878 res!218350) b!514881))

(assert (= (and b!514881 res!218352) b!514876))

(assert (= (and b!514876 res!218354) b!514884))

(assert (= (and b!514884 res!218351) b!514880))

(assert (= (and b!514880 c!99819) b!514877))

(assert (= (and b!514880 (not c!99819)) b!514885))

(assert (= (or b!514877 b!514885) bm!37439))

(assert (= (or b!514877 b!514885) bm!37438))

(assert (= (and b!514882 condMapEmpty!1936) mapIsEmpty!1936))

(assert (= (and b!514882 (not condMapEmpty!1936)) mapNonEmpty!1936))

(assert (= b!514886 b!514882))

(assert (= b!514883 b!514886))

(assert (= b!514887 b!514883))

(assert (= (and b!514879 ((_ is LongMap!503) (v!15724 (underlying!1186 hm!65)))) b!514887))

(assert (= b!514875 b!514879))

(assert (= (and start!46648 ((_ is HashMap!475) hm!65)) b!514875))

(declare-fun m!760871 () Bool)

(assert (=> bm!37439 m!760871))

(declare-fun m!760873 () Bool)

(assert (=> mapNonEmpty!1936 m!760873))

(declare-fun m!760875 () Bool)

(assert (=> b!514876 m!760875))

(declare-fun m!760877 () Bool)

(assert (=> b!514876 m!760877))

(declare-fun m!760879 () Bool)

(assert (=> b!514876 m!760879))

(declare-fun m!760881 () Bool)

(assert (=> b!514884 m!760881))

(declare-fun m!760883 () Bool)

(assert (=> b!514884 m!760883))

(declare-fun m!760885 () Bool)

(assert (=> bm!37438 m!760885))

(declare-fun m!760887 () Bool)

(assert (=> b!514881 m!760887))

(declare-fun m!760889 () Bool)

(assert (=> b!514881 m!760889))

(declare-fun m!760891 () Bool)

(assert (=> b!514886 m!760891))

(declare-fun m!760893 () Bool)

(assert (=> b!514886 m!760893))

(declare-fun m!760895 () Bool)

(assert (=> b!514878 m!760895))

(declare-fun m!760897 () Bool)

(assert (=> b!514877 m!760897))

(declare-fun m!760899 () Bool)

(assert (=> b!514877 m!760899))

(check-sat (not b_next!13475) (not b!514886) (not b!514884) (not b!514882) (not bm!37439) tp_is_empty!2577 b_and!50917 (not b!514877) (not b_next!13477) (not mapNonEmpty!1936) (not b!514878) (not b_next!13479) (not b!514876) b_and!50915 (not b!514881) (not bm!37438) b_and!50913)
(check-sat (not b_next!13475) (not b_next!13479) b_and!50915 b_and!50917 (not b_next!13477) b_and!50913)
