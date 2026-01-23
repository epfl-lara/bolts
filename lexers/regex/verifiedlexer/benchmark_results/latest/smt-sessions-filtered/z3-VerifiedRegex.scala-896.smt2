; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46734 () Bool)

(assert start!46734)

(declare-fun b_free!13535 () Bool)

(declare-fun b_next!13535 () Bool)

(assert (=> start!46734 (= b_free!13535 (not b_next!13535))))

(declare-fun tp!160897 () Bool)

(declare-fun b_and!50985 () Bool)

(assert (=> start!46734 (= tp!160897 b_and!50985)))

(declare-fun b!515489 () Bool)

(declare-fun b_free!13537 () Bool)

(declare-fun b_next!13537 () Bool)

(assert (=> b!515489 (= b_free!13537 (not b_next!13537))))

(declare-fun tp!160899 () Bool)

(declare-fun b_and!50987 () Bool)

(assert (=> b!515489 (= tp!160899 b_and!50987)))

(declare-fun b!515490 () Bool)

(declare-fun b_free!13539 () Bool)

(declare-fun b_next!13539 () Bool)

(assert (=> b!515490 (= b_free!13539 (not b_next!13539))))

(declare-fun tp!160903 () Bool)

(declare-fun b_and!50989 () Bool)

(assert (=> b!515490 (= tp!160903 b_and!50989)))

(declare-fun mapNonEmpty!1978 () Bool)

(declare-fun mapRes!1978 () Bool)

(declare-fun tp!160900 () Bool)

(declare-fun tp!160898 () Bool)

(assert (=> mapNonEmpty!1978 (= mapRes!1978 (and tp!160900 tp!160898))))

(declare-datatypes ((K!1397 0))(
  ( (K!1398 (val!1781 Int)) )
))
(declare-datatypes ((V!1495 0))(
  ( (V!1496 (val!1782 Int)) )
))
(declare-datatypes ((tuple2!5752 0))(
  ( (tuple2!5753 (_1!3092 K!1397) (_2!3092 V!1495)) )
))
(declare-datatypes ((List!4722 0))(
  ( (Nil!4712) (Cons!4712 (h!10109 tuple2!5752) (t!73268 List!4722)) )
))
(declare-fun mapRest!1978 () (Array (_ BitVec 32) List!4722))

(declare-fun mapValue!1978 () List!4722)

(declare-datatypes ((array!1977 0))(
  ( (array!1978 (arr!910 (Array (_ BitVec 32) List!4722)) (size!3844 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!485 0))(
  ( (HashableExt!484 (__x!3430 Int)) )
))
(declare-datatypes ((array!1979 0))(
  ( (array!1980 (arr!911 (Array (_ BitVec 32) (_ BitVec 64))) (size!3845 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1026 0))(
  ( (LongMapFixedSize!1027 (defaultEntry!864 Int) (mask!1934 (_ BitVec 32)) (extraKeys!759 (_ BitVec 32)) (zeroValue!769 List!4722) (minValue!769 List!4722) (_size!1135 (_ BitVec 32)) (_keys!804 array!1979) (_values!791 array!1977) (_vacant!574 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1993 0))(
  ( (Cell!1994 (v!15743 LongMapFixedSize!1026)) )
))
(declare-datatypes ((MutLongMap!513 0))(
  ( (LongMap!513 (underlying!1205 Cell!1993)) (MutLongMapExt!512 (__x!3431 Int)) )
))
(declare-datatypes ((Cell!1995 0))(
  ( (Cell!1996 (v!15744 MutLongMap!513)) )
))
(declare-datatypes ((MutableMap!485 0))(
  ( (MutableMapExt!484 (__x!3432 Int)) (HashMap!485 (underlying!1206 Cell!1995) (hashF!2361 Hashable!485) (_size!1136 (_ BitVec 32)) (defaultValue!634 Int)) )
))
(declare-fun hm!65 () MutableMap!485)

(declare-fun mapKey!1978 () (_ BitVec 32))

(assert (=> mapNonEmpty!1978 (= (arr!910 (_values!791 (v!15743 (underlying!1205 (v!15744 (underlying!1206 hm!65)))))) (store mapRest!1978 mapKey!1978 mapValue!1978))))

(declare-fun b!515480 () Bool)

(declare-fun e!308389 () Bool)

(declare-fun e!308395 () Bool)

(assert (=> b!515480 (= e!308389 e!308395)))

(declare-fun res!218602 () Bool)

(assert (=> b!515480 (=> (not res!218602) (not e!308395))))

(declare-datatypes ((ListMap!177 0))(
  ( (ListMap!178 (toList!409 List!4722)) )
))
(declare-fun lt!213890 () ListMap!177)

(declare-fun invariantList!67 (List!4722) Bool)

(assert (=> b!515480 (= res!218602 (invariantList!67 (toList!409 lt!213890)))))

(declare-datatypes ((tuple2!5754 0))(
  ( (tuple2!5755 (_1!3093 Bool) (_2!3093 MutableMap!485)) )
))
(declare-fun lt!213889 () tuple2!5754)

(declare-fun map!1024 (MutableMap!485) ListMap!177)

(assert (=> b!515480 (= lt!213890 (map!1024 (_2!3093 lt!213889)))))

(declare-fun b!515481 () Bool)

(declare-fun e!308394 () Bool)

(declare-fun e!308392 () Bool)

(assert (=> b!515481 (= e!308394 e!308392)))

(declare-fun b!515483 () Bool)

(declare-fun res!218601 () Bool)

(assert (=> b!515483 (=> (not res!218601) (not e!308395))))

(assert (=> b!515483 (= res!218601 (_1!3093 lt!213889))))

(declare-fun b!515484 () Bool)

(declare-fun e!308387 () Bool)

(assert (=> b!515484 (= e!308387 e!308394)))

(declare-fun b!515485 () Bool)

(declare-fun e!308391 () Bool)

(declare-fun tp!160902 () Bool)

(assert (=> b!515485 (= e!308391 (and tp!160902 mapRes!1978))))

(declare-fun condMapEmpty!1978 () Bool)

(declare-fun mapDefault!1978 () List!4722)

(assert (=> b!515485 (= condMapEmpty!1978 (= (arr!910 (_values!791 (v!15743 (underlying!1205 (v!15744 (underlying!1206 hm!65)))))) ((as const (Array (_ BitVec 32) List!4722)) mapDefault!1978)))))

(declare-fun b!515486 () Bool)

(declare-fun e!308386 () Bool)

(declare-fun e!308393 () Bool)

(assert (=> b!515486 (= e!308386 e!308393)))

(declare-fun res!218605 () Bool)

(assert (=> b!515486 (=> (not res!218605) (not e!308393))))

(declare-fun lt!213891 () ListMap!177)

(declare-fun p!6060 () Int)

(declare-fun forall!1392 (List!4722 Int) Bool)

(assert (=> b!515486 (= res!218605 (forall!1392 (toList!409 lt!213891) p!6060))))

(assert (=> b!515486 (= lt!213891 (map!1024 hm!65))))

(declare-fun res!218604 () Bool)

(assert (=> start!46734 (=> (not res!218604) (not e!308386))))

(get-info :version)

(assert (=> start!46734 (= res!218604 ((_ is HashMap!485) hm!65))))

(assert (=> start!46734 e!308386))

(declare-fun e!308390 () Bool)

(assert (=> start!46734 e!308390))

(assert (=> start!46734 tp!160897))

(declare-fun tp_is_empty!2605 () Bool)

(assert (=> start!46734 tp_is_empty!2605))

(declare-fun b!515482 () Bool)

(assert (=> b!515482 (= e!308395 false)))

(declare-fun lt!213888 () Bool)

(declare-fun lt!213893 () ListMap!177)

(declare-fun eq!26 (ListMap!177 ListMap!177) Bool)

(assert (=> b!515482 (= lt!213888 (eq!26 lt!213890 lt!213893))))

(declare-fun mapIsEmpty!1978 () Bool)

(assert (=> mapIsEmpty!1978 mapRes!1978))

(declare-fun b!515487 () Bool)

(declare-fun res!218603 () Bool)

(assert (=> b!515487 (=> (not res!218603) (not e!308386))))

(declare-fun valid!473 (MutableMap!485) Bool)

(assert (=> b!515487 (= res!218603 (valid!473 hm!65))))

(declare-fun b!515488 () Bool)

(declare-fun e!308396 () Bool)

(declare-fun lt!213892 () MutLongMap!513)

(assert (=> b!515488 (= e!308396 (and e!308387 ((_ is LongMap!513) lt!213892)))))

(assert (=> b!515488 (= lt!213892 (v!15744 (underlying!1206 hm!65)))))

(assert (=> b!515489 (= e!308390 (and e!308396 tp!160899))))

(declare-fun tp!160901 () Bool)

(declare-fun tp!160896 () Bool)

(declare-fun array_inv!665 (array!1979) Bool)

(declare-fun array_inv!666 (array!1977) Bool)

(assert (=> b!515490 (= e!308392 (and tp!160903 tp!160896 tp!160901 (array_inv!665 (_keys!804 (v!15743 (underlying!1205 (v!15744 (underlying!1206 hm!65)))))) (array_inv!666 (_values!791 (v!15743 (underlying!1205 (v!15744 (underlying!1206 hm!65)))))) e!308391))))

(declare-fun b!515491 () Bool)

(assert (=> b!515491 (= e!308393 e!308389)))

(declare-fun res!218606 () Bool)

(assert (=> b!515491 (=> (not res!218606) (not e!308389))))

(assert (=> b!515491 (= res!218606 (valid!473 (_2!3093 lt!213889)))))

(declare-fun k0!1740 () K!1397)

(declare-fun remove!33 (MutableMap!485 K!1397) tuple2!5754)

(assert (=> b!515491 (= lt!213889 (remove!33 hm!65 k0!1740))))

(declare-fun -!30 (ListMap!177 K!1397) ListMap!177)

(assert (=> b!515491 (= lt!213893 (-!30 lt!213891 k0!1740))))

(assert (= (and start!46734 res!218604) b!515487))

(assert (= (and b!515487 res!218603) b!515486))

(assert (= (and b!515486 res!218605) b!515491))

(assert (= (and b!515491 res!218606) b!515480))

(assert (= (and b!515480 res!218602) b!515483))

(assert (= (and b!515483 res!218601) b!515482))

(assert (= (and b!515485 condMapEmpty!1978) mapIsEmpty!1978))

(assert (= (and b!515485 (not condMapEmpty!1978)) mapNonEmpty!1978))

(assert (= b!515490 b!515485))

(assert (= b!515481 b!515490))

(assert (= b!515484 b!515481))

(assert (= (and b!515488 ((_ is LongMap!513) (v!15744 (underlying!1206 hm!65)))) b!515484))

(assert (= b!515489 b!515488))

(assert (= (and start!46734 ((_ is HashMap!485) hm!65)) b!515489))

(declare-fun m!761581 () Bool)

(assert (=> b!515486 m!761581))

(declare-fun m!761583 () Bool)

(assert (=> b!515486 m!761583))

(declare-fun m!761585 () Bool)

(assert (=> b!515480 m!761585))

(declare-fun m!761587 () Bool)

(assert (=> b!515480 m!761587))

(declare-fun m!761589 () Bool)

(assert (=> b!515491 m!761589))

(declare-fun m!761591 () Bool)

(assert (=> b!515491 m!761591))

(declare-fun m!761593 () Bool)

(assert (=> b!515491 m!761593))

(declare-fun m!761595 () Bool)

(assert (=> b!515487 m!761595))

(declare-fun m!761597 () Bool)

(assert (=> b!515482 m!761597))

(declare-fun m!761599 () Bool)

(assert (=> mapNonEmpty!1978 m!761599))

(declare-fun m!761601 () Bool)

(assert (=> b!515490 m!761601))

(declare-fun m!761603 () Bool)

(assert (=> b!515490 m!761603))

(check-sat (not mapNonEmpty!1978) (not b!515490) (not b!515491) (not b_next!13537) (not b_next!13535) tp_is_empty!2605 (not b!515486) b_and!50989 b_and!50985 b_and!50987 (not b!515485) (not b!515480) (not b_next!13539) (not b!515487) (not b!515482))
(check-sat (not b_next!13539) (not b_next!13537) (not b_next!13535) b_and!50989 b_and!50985 b_and!50987)
