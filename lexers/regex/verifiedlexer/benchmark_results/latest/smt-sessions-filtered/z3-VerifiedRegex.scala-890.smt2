; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46644 () Bool)

(assert start!46644)

(declare-fun b!514807 () Bool)

(declare-fun b_free!13463 () Bool)

(declare-fun b_next!13463 () Bool)

(assert (=> b!514807 (= b_free!13463 (not b_next!13463))))

(declare-fun tp!160550 () Bool)

(declare-fun b_and!50901 () Bool)

(assert (=> b!514807 (= tp!160550 b_and!50901)))

(declare-fun b!514796 () Bool)

(declare-fun b_free!13465 () Bool)

(declare-fun b_next!13465 () Bool)

(assert (=> b!514796 (= b_free!13465 (not b_next!13465))))

(declare-fun tp!160552 () Bool)

(declare-fun b_and!50903 () Bool)

(assert (=> b!514796 (= tp!160552 b_and!50903)))

(declare-fun b_free!13467 () Bool)

(declare-fun b_next!13467 () Bool)

(assert (=> start!46644 (= b_free!13467 (not b_next!13467))))

(declare-fun tp!160555 () Bool)

(declare-fun b_and!50905 () Bool)

(assert (=> start!46644 (= tp!160555 b_and!50905)))

(declare-fun b!514795 () Bool)

(declare-fun e!307829 () Bool)

(assert (=> b!514795 (= e!307829 false)))

(declare-fun tp!160554 () Bool)

(declare-fun e!307823 () Bool)

(declare-fun tp!160553 () Bool)

(declare-datatypes ((V!1465 0))(
  ( (V!1466 (val!1757 Int)) )
))
(declare-datatypes ((K!1367 0))(
  ( (K!1368 (val!1758 Int)) )
))
(declare-datatypes ((tuple2!5684 0))(
  ( (tuple2!5685 (_1!3058 K!1367) (_2!3058 V!1465)) )
))
(declare-datatypes ((List!4702 0))(
  ( (Nil!4692) (Cons!4692 (h!10089 tuple2!5684) (t!73236 List!4702)) )
))
(declare-datatypes ((array!1921 0))(
  ( (array!1922 (arr!886 (Array (_ BitVec 32) List!4702)) (size!3820 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!473 0))(
  ( (HashableExt!472 (__x!3394 Int)) )
))
(declare-datatypes ((array!1923 0))(
  ( (array!1924 (arr!887 (Array (_ BitVec 32) (_ BitVec 64))) (size!3821 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1002 0))(
  ( (LongMapFixedSize!1003 (defaultEntry!852 Int) (mask!1916 (_ BitVec 32)) (extraKeys!747 (_ BitVec 32)) (zeroValue!757 List!4702) (minValue!757 List!4702) (_size!1111 (_ BitVec 32)) (_keys!792 array!1923) (_values!779 array!1921) (_vacant!562 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1945 0))(
  ( (Cell!1946 (v!15719 LongMapFixedSize!1002)) )
))
(declare-datatypes ((MutLongMap!501 0))(
  ( (LongMap!501 (underlying!1181 Cell!1945)) (MutLongMapExt!500 (__x!3395 Int)) )
))
(declare-datatypes ((Cell!1947 0))(
  ( (Cell!1948 (v!15720 MutLongMap!501)) )
))
(declare-datatypes ((MutableMap!473 0))(
  ( (MutableMapExt!472 (__x!3396 Int)) (HashMap!473 (underlying!1182 Cell!1947) (hashF!2349 Hashable!473) (_size!1112 (_ BitVec 32)) (defaultValue!622 Int)) )
))
(declare-fun hm!65 () MutableMap!473)

(declare-fun e!307824 () Bool)

(declare-fun array_inv!645 (array!1923) Bool)

(declare-fun array_inv!646 (array!1921) Bool)

(assert (=> b!514796 (= e!307824 (and tp!160552 tp!160553 tp!160554 (array_inv!645 (_keys!792 (v!15719 (underlying!1181 (v!15720 (underlying!1182 hm!65)))))) (array_inv!646 (_values!779 (v!15719 (underlying!1181 (v!15720 (underlying!1182 hm!65)))))) e!307823))))

(declare-fun b!514797 () Bool)

(declare-fun res!218318 () Bool)

(assert (=> b!514797 (=> (not res!218318) (not e!307829))))

(declare-datatypes ((ListMap!155 0))(
  ( (ListMap!156 (toList!394 List!4702)) )
))
(declare-fun lt!213285 () ListMap!155)

(declare-fun lt!213284 () ListMap!155)

(declare-fun eq!19 (ListMap!155 ListMap!155) Bool)

(assert (=> b!514797 (= res!218318 (eq!19 lt!213285 lt!213284))))

(declare-fun b!514798 () Bool)

(declare-fun e!307821 () Bool)

(declare-fun e!307827 () Bool)

(assert (=> b!514798 (= e!307821 e!307827)))

(declare-fun res!218324 () Bool)

(assert (=> b!514798 (=> (not res!218324) (not e!307827))))

(declare-datatypes ((tuple2!5686 0))(
  ( (tuple2!5687 (_1!3059 Bool) (_2!3059 MutableMap!473)) )
))
(declare-fun lt!213282 () tuple2!5686)

(declare-fun valid!458 (MutableMap!473) Bool)

(assert (=> b!514798 (= res!218324 (valid!458 (_2!3059 lt!213282)))))

(declare-fun k0!1740 () K!1367)

(declare-fun remove!23 (MutableMap!473 K!1367) tuple2!5686)

(assert (=> b!514798 (= lt!213282 (remove!23 hm!65 k0!1740))))

(declare-fun lt!213286 () ListMap!155)

(declare-fun -!20 (ListMap!155 K!1367) ListMap!155)

(assert (=> b!514798 (= lt!213286 (-!20 lt!213284 k0!1740))))

(declare-fun b!514799 () Bool)

(declare-fun res!218323 () Bool)

(assert (=> b!514799 (=> (not res!218323) (not e!307829))))

(declare-fun invariantList!57 (List!4702) Bool)

(assert (=> b!514799 (= res!218323 (invariantList!57 (toList!394 lt!213284)))))

(declare-fun b!514800 () Bool)

(declare-fun res!218319 () Bool)

(assert (=> b!514800 (=> (not res!218319) (not e!307829))))

(assert (=> b!514800 (= res!218319 (invariantList!57 (toList!394 lt!213286)))))

(declare-fun b!514801 () Bool)

(declare-fun e!307820 () Bool)

(declare-fun e!307825 () Bool)

(declare-fun lt!213283 () MutLongMap!501)

(get-info :version)

(assert (=> b!514801 (= e!307820 (and e!307825 ((_ is LongMap!501) lt!213283)))))

(assert (=> b!514801 (= lt!213283 (v!15720 (underlying!1182 hm!65)))))

(declare-fun b!514802 () Bool)

(assert (=> b!514802 (= e!307827 e!307829)))

(declare-fun res!218320 () Bool)

(assert (=> b!514802 (=> (not res!218320) (not e!307829))))

(assert (=> b!514802 (= res!218320 (invariantList!57 (toList!394 lt!213285)))))

(declare-fun map!1004 (MutableMap!473) ListMap!155)

(assert (=> b!514802 (= lt!213285 (map!1004 (_2!3059 lt!213282)))))

(declare-fun res!218317 () Bool)

(declare-fun e!307822 () Bool)

(assert (=> start!46644 (=> (not res!218317) (not e!307822))))

(assert (=> start!46644 (= res!218317 ((_ is HashMap!473) hm!65))))

(assert (=> start!46644 e!307822))

(declare-fun e!307830 () Bool)

(assert (=> start!46644 e!307830))

(declare-fun tp_is_empty!2573 () Bool)

(assert (=> start!46644 tp_is_empty!2573))

(assert (=> start!46644 tp!160555))

(declare-fun b!514803 () Bool)

(assert (=> b!514803 (= e!307822 e!307821)))

(declare-fun res!218321 () Bool)

(assert (=> b!514803 (=> (not res!218321) (not e!307821))))

(declare-fun p!6060 () Int)

(declare-fun forall!1378 (List!4702 Int) Bool)

(assert (=> b!514803 (= res!218321 (forall!1378 (toList!394 lt!213284) p!6060))))

(assert (=> b!514803 (= lt!213284 (map!1004 hm!65))))

(declare-fun b!514804 () Bool)

(declare-fun e!307828 () Bool)

(assert (=> b!514804 (= e!307828 e!307824)))

(declare-fun b!514805 () Bool)

(declare-fun tp!160551 () Bool)

(declare-fun mapRes!1930 () Bool)

(assert (=> b!514805 (= e!307823 (and tp!160551 mapRes!1930))))

(declare-fun condMapEmpty!1930 () Bool)

(declare-fun mapDefault!1930 () List!4702)

(assert (=> b!514805 (= condMapEmpty!1930 (= (arr!886 (_values!779 (v!15719 (underlying!1181 (v!15720 (underlying!1182 hm!65)))))) ((as const (Array (_ BitVec 32) List!4702)) mapDefault!1930)))))

(declare-fun b!514806 () Bool)

(declare-fun res!218316 () Bool)

(assert (=> b!514806 (=> (not res!218316) (not e!307829))))

(assert (=> b!514806 (= res!218316 (not (_1!3059 lt!213282)))))

(assert (=> b!514807 (= e!307830 (and e!307820 tp!160550))))

(declare-fun b!514808 () Bool)

(declare-fun res!218322 () Bool)

(assert (=> b!514808 (=> (not res!218322) (not e!307822))))

(assert (=> b!514808 (= res!218322 (valid!458 hm!65))))

(declare-fun mapIsEmpty!1930 () Bool)

(assert (=> mapIsEmpty!1930 mapRes!1930))

(declare-fun b!514809 () Bool)

(assert (=> b!514809 (= e!307825 e!307828)))

(declare-fun mapNonEmpty!1930 () Bool)

(declare-fun tp!160549 () Bool)

(declare-fun tp!160548 () Bool)

(assert (=> mapNonEmpty!1930 (= mapRes!1930 (and tp!160549 tp!160548))))

(declare-fun mapValue!1930 () List!4702)

(declare-fun mapRest!1930 () (Array (_ BitVec 32) List!4702))

(declare-fun mapKey!1930 () (_ BitVec 32))

(assert (=> mapNonEmpty!1930 (= (arr!886 (_values!779 (v!15719 (underlying!1181 (v!15720 (underlying!1182 hm!65)))))) (store mapRest!1930 mapKey!1930 mapValue!1930))))

(assert (= (and start!46644 res!218317) b!514808))

(assert (= (and b!514808 res!218322) b!514803))

(assert (= (and b!514803 res!218321) b!514798))

(assert (= (and b!514798 res!218324) b!514802))

(assert (= (and b!514802 res!218320) b!514806))

(assert (= (and b!514806 res!218316) b!514797))

(assert (= (and b!514797 res!218318) b!514800))

(assert (= (and b!514800 res!218319) b!514799))

(assert (= (and b!514799 res!218323) b!514795))

(assert (= (and b!514805 condMapEmpty!1930) mapIsEmpty!1930))

(assert (= (and b!514805 (not condMapEmpty!1930)) mapNonEmpty!1930))

(assert (= b!514796 b!514805))

(assert (= b!514804 b!514796))

(assert (= b!514809 b!514804))

(assert (= (and b!514801 ((_ is LongMap!501) (v!15720 (underlying!1182 hm!65)))) b!514809))

(assert (= b!514807 b!514801))

(assert (= (and start!46644 ((_ is HashMap!473) hm!65)) b!514807))

(declare-fun m!760813 () Bool)

(assert (=> mapNonEmpty!1930 m!760813))

(declare-fun m!760815 () Bool)

(assert (=> b!514800 m!760815))

(declare-fun m!760817 () Bool)

(assert (=> b!514797 m!760817))

(declare-fun m!760819 () Bool)

(assert (=> b!514808 m!760819))

(declare-fun m!760821 () Bool)

(assert (=> b!514803 m!760821))

(declare-fun m!760823 () Bool)

(assert (=> b!514803 m!760823))

(declare-fun m!760825 () Bool)

(assert (=> b!514798 m!760825))

(declare-fun m!760827 () Bool)

(assert (=> b!514798 m!760827))

(declare-fun m!760829 () Bool)

(assert (=> b!514798 m!760829))

(declare-fun m!760831 () Bool)

(assert (=> b!514796 m!760831))

(declare-fun m!760833 () Bool)

(assert (=> b!514796 m!760833))

(declare-fun m!760835 () Bool)

(assert (=> b!514799 m!760835))

(declare-fun m!760837 () Bool)

(assert (=> b!514802 m!760837))

(declare-fun m!760839 () Bool)

(assert (=> b!514802 m!760839))

(check-sat tp_is_empty!2573 (not b!514798) b_and!50903 (not b!514800) (not b_next!13467) (not b_next!13465) (not b!514799) (not b!514796) (not b!514803) (not b!514802) b_and!50901 (not b!514805) (not b!514808) b_and!50905 (not mapNonEmpty!1930) (not b_next!13463) (not b!514797))
(check-sat b_and!50903 (not b_next!13467) b_and!50901 b_and!50905 (not b_next!13463) (not b_next!13465))
