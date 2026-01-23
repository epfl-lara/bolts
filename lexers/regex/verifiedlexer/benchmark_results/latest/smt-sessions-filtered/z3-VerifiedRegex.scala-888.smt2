; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46620 () Bool)

(assert start!46620)

(declare-fun b_free!13439 () Bool)

(declare-fun b_next!13439 () Bool)

(assert (=> start!46620 (= b_free!13439 (not b_next!13439))))

(declare-fun tp!160444 () Bool)

(declare-fun b_and!50875 () Bool)

(assert (=> start!46620 (= tp!160444 b_and!50875)))

(declare-fun b!514579 () Bool)

(declare-fun b_free!13441 () Bool)

(declare-fun b_next!13441 () Bool)

(assert (=> b!514579 (= b_free!13441 (not b_next!13441))))

(declare-fun tp!160440 () Bool)

(declare-fun b_and!50877 () Bool)

(assert (=> b!514579 (= tp!160440 b_and!50877)))

(declare-fun b!514578 () Bool)

(declare-fun b_free!13443 () Bool)

(declare-fun b_next!13443 () Bool)

(assert (=> b!514578 (= b_free!13443 (not b_next!13443))))

(declare-fun tp!160439 () Bool)

(declare-fun b_and!50879 () Bool)

(assert (=> b!514578 (= tp!160439 b_and!50879)))

(declare-fun b!514574 () Bool)

(declare-fun e!307650 () Bool)

(declare-fun e!307660 () Bool)

(assert (=> b!514574 (= e!307650 e!307660)))

(declare-fun res!218213 () Bool)

(declare-fun e!307656 () Bool)

(assert (=> start!46620 (=> (not res!218213) (not e!307656))))

(declare-datatypes ((V!1455 0))(
  ( (V!1456 (val!1749 Int)) )
))
(declare-datatypes ((K!1357 0))(
  ( (K!1358 (val!1750 Int)) )
))
(declare-datatypes ((tuple2!5662 0))(
  ( (tuple2!5663 (_1!3047 K!1357) (_2!3047 V!1455)) )
))
(declare-datatypes ((List!4696 0))(
  ( (Nil!4686) (Cons!4686 (h!10083 tuple2!5662) (t!73228 List!4696)) )
))
(declare-datatypes ((array!1903 0))(
  ( (array!1904 (arr!878 (Array (_ BitVec 32) List!4696)) (size!3812 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!469 0))(
  ( (HashableExt!468 (__x!3382 Int)) )
))
(declare-datatypes ((array!1905 0))(
  ( (array!1906 (arr!879 (Array (_ BitVec 32) (_ BitVec 64))) (size!3813 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!994 0))(
  ( (LongMapFixedSize!995 (defaultEntry!848 Int) (mask!1910 (_ BitVec 32)) (extraKeys!743 (_ BitVec 32)) (zeroValue!753 List!4696) (minValue!753 List!4696) (_size!1103 (_ BitVec 32)) (_keys!788 array!1905) (_values!775 array!1903) (_vacant!558 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1929 0))(
  ( (Cell!1930 (v!15711 LongMapFixedSize!994)) )
))
(declare-datatypes ((MutLongMap!497 0))(
  ( (LongMap!497 (underlying!1173 Cell!1929)) (MutLongMapExt!496 (__x!3383 Int)) )
))
(declare-datatypes ((Cell!1931 0))(
  ( (Cell!1932 (v!15712 MutLongMap!497)) )
))
(declare-datatypes ((MutableMap!469 0))(
  ( (MutableMapExt!468 (__x!3384 Int)) (HashMap!469 (underlying!1174 Cell!1931) (hashF!2345 Hashable!469) (_size!1104 (_ BitVec 32)) (defaultValue!618 Int)) )
))
(declare-fun hm!65 () MutableMap!469)

(get-info :version)

(assert (=> start!46620 (= res!218213 ((_ is HashMap!469) hm!65))))

(assert (=> start!46620 e!307656))

(declare-fun e!307658 () Bool)

(assert (=> start!46620 e!307658))

(assert (=> start!46620 tp!160444))

(declare-fun tp_is_empty!2563 () Bool)

(assert (=> start!46620 tp_is_empty!2563))

(declare-fun b!514575 () Bool)

(declare-fun res!218207 () Bool)

(declare-fun e!307654 () Bool)

(assert (=> b!514575 (=> (not res!218207) (not e!307654))))

(declare-datatypes ((tuple2!5664 0))(
  ( (tuple2!5665 (_1!3048 Bool) (_2!3048 MutableMap!469)) )
))
(declare-fun lt!213131 () tuple2!5664)

(assert (=> b!514575 (= res!218207 (_1!3048 lt!213131))))

(declare-fun b!514576 () Bool)

(declare-fun e!307655 () Bool)

(declare-fun e!307652 () Bool)

(declare-fun lt!213130 () MutLongMap!497)

(assert (=> b!514576 (= e!307655 (and e!307652 ((_ is LongMap!497) lt!213130)))))

(assert (=> b!514576 (= lt!213130 (v!15712 (underlying!1174 hm!65)))))

(declare-fun b!514577 () Bool)

(declare-fun e!307659 () Bool)

(assert (=> b!514577 (= e!307656 e!307659)))

(declare-fun res!218209 () Bool)

(assert (=> b!514577 (=> (not res!218209) (not e!307659))))

(declare-datatypes ((ListMap!147 0))(
  ( (ListMap!148 (toList!389 List!4696)) )
))
(declare-fun lt!213134 () ListMap!147)

(declare-fun p!6060 () Int)

(declare-fun forall!1373 (List!4696 Int) Bool)

(assert (=> b!514577 (= res!218209 (forall!1373 (toList!389 lt!213134) p!6060))))

(declare-fun map!997 (MutableMap!469) ListMap!147)

(assert (=> b!514577 (= lt!213134 (map!997 hm!65))))

(assert (=> b!514578 (= e!307658 (and e!307655 tp!160439))))

(declare-fun tp!160437 () Bool)

(declare-fun e!307651 () Bool)

(declare-fun tp!160443 () Bool)

(declare-fun array_inv!637 (array!1905) Bool)

(declare-fun array_inv!638 (array!1903) Bool)

(assert (=> b!514579 (= e!307660 (and tp!160440 tp!160437 tp!160443 (array_inv!637 (_keys!788 (v!15711 (underlying!1173 (v!15712 (underlying!1174 hm!65)))))) (array_inv!638 (_values!775 (v!15711 (underlying!1173 (v!15712 (underlying!1174 hm!65)))))) e!307651))))

(declare-fun b!514580 () Bool)

(declare-fun res!218211 () Bool)

(assert (=> b!514580 (=> (not res!218211) (not e!307654))))

(declare-fun lt!213132 () ListMap!147)

(declare-fun lt!213133 () ListMap!147)

(declare-fun eq!16 (ListMap!147 ListMap!147) Bool)

(assert (=> b!514580 (= res!218211 (eq!16 lt!213132 lt!213133))))

(declare-fun b!514581 () Bool)

(declare-fun tp!160442 () Bool)

(declare-fun mapRes!1915 () Bool)

(assert (=> b!514581 (= e!307651 (and tp!160442 mapRes!1915))))

(declare-fun condMapEmpty!1915 () Bool)

(declare-fun mapDefault!1915 () List!4696)

(assert (=> b!514581 (= condMapEmpty!1915 (= (arr!878 (_values!775 (v!15711 (underlying!1173 (v!15712 (underlying!1174 hm!65)))))) ((as const (Array (_ BitVec 32) List!4696)) mapDefault!1915)))))

(declare-fun b!514582 () Bool)

(declare-fun e!307661 () Bool)

(assert (=> b!514582 (= e!307661 e!307654)))

(declare-fun res!218208 () Bool)

(assert (=> b!514582 (=> (not res!218208) (not e!307654))))

(declare-fun invariantList!53 (List!4696) Bool)

(assert (=> b!514582 (= res!218208 (invariantList!53 (toList!389 lt!213132)))))

(assert (=> b!514582 (= lt!213132 (map!997 (_2!3048 lt!213131)))))

(declare-fun b!514583 () Bool)

(declare-fun e!307653 () Bool)

(assert (=> b!514583 (= e!307653 true)))

(declare-fun b!514584 () Bool)

(declare-fun res!218210 () Bool)

(assert (=> b!514584 (=> (not res!218210) (not e!307656))))

(declare-fun valid!453 (MutableMap!469) Bool)

(assert (=> b!514584 (= res!218210 (valid!453 hm!65))))

(declare-fun b!514585 () Bool)

(assert (=> b!514585 (= e!307654 (not e!307653))))

(declare-fun res!218212 () Bool)

(assert (=> b!514585 (=> res!218212 e!307653)))

(assert (=> b!514585 (= res!218212 (not (invariantList!53 (toList!389 lt!213133))))))

(assert (=> b!514585 (forall!1373 (toList!389 lt!213133) p!6060)))

(declare-datatypes ((Unit!8467 0))(
  ( (Unit!8468) )
))
(declare-fun lt!213135 () Unit!8467)

(declare-fun lemmaForallSubset!5 (List!4696 List!4696 Int) Unit!8467)

(assert (=> b!514585 (= lt!213135 (lemmaForallSubset!5 (toList!389 lt!213133) (toList!389 lt!213134) p!6060))))

(declare-fun mapNonEmpty!1915 () Bool)

(declare-fun tp!160438 () Bool)

(declare-fun tp!160441 () Bool)

(assert (=> mapNonEmpty!1915 (= mapRes!1915 (and tp!160438 tp!160441))))

(declare-fun mapRest!1915 () (Array (_ BitVec 32) List!4696))

(declare-fun mapKey!1915 () (_ BitVec 32))

(declare-fun mapValue!1915 () List!4696)

(assert (=> mapNonEmpty!1915 (= (arr!878 (_values!775 (v!15711 (underlying!1173 (v!15712 (underlying!1174 hm!65)))))) (store mapRest!1915 mapKey!1915 mapValue!1915))))

(declare-fun b!514586 () Bool)

(assert (=> b!514586 (= e!307652 e!307650)))

(declare-fun b!514587 () Bool)

(assert (=> b!514587 (= e!307659 e!307661)))

(declare-fun res!218214 () Bool)

(assert (=> b!514587 (=> (not res!218214) (not e!307661))))

(assert (=> b!514587 (= res!218214 (valid!453 (_2!3048 lt!213131)))))

(declare-fun k0!1740 () K!1357)

(declare-fun remove!20 (MutableMap!469 K!1357) tuple2!5664)

(assert (=> b!514587 (= lt!213131 (remove!20 hm!65 k0!1740))))

(declare-fun -!17 (ListMap!147 K!1357) ListMap!147)

(assert (=> b!514587 (= lt!213133 (-!17 lt!213134 k0!1740))))

(declare-fun mapIsEmpty!1915 () Bool)

(assert (=> mapIsEmpty!1915 mapRes!1915))

(assert (= (and start!46620 res!218213) b!514584))

(assert (= (and b!514584 res!218210) b!514577))

(assert (= (and b!514577 res!218209) b!514587))

(assert (= (and b!514587 res!218214) b!514582))

(assert (= (and b!514582 res!218208) b!514575))

(assert (= (and b!514575 res!218207) b!514580))

(assert (= (and b!514580 res!218211) b!514585))

(assert (= (and b!514585 (not res!218212)) b!514583))

(assert (= (and b!514581 condMapEmpty!1915) mapIsEmpty!1915))

(assert (= (and b!514581 (not condMapEmpty!1915)) mapNonEmpty!1915))

(assert (= b!514579 b!514581))

(assert (= b!514574 b!514579))

(assert (= b!514586 b!514574))

(assert (= (and b!514576 ((_ is LongMap!497) (v!15712 (underlying!1174 hm!65)))) b!514586))

(assert (= b!514578 b!514576))

(assert (= (and start!46620 ((_ is HashMap!469) hm!65)) b!514578))

(declare-fun m!760597 () Bool)

(assert (=> b!514585 m!760597))

(declare-fun m!760599 () Bool)

(assert (=> b!514585 m!760599))

(declare-fun m!760601 () Bool)

(assert (=> b!514585 m!760601))

(declare-fun m!760603 () Bool)

(assert (=> b!514577 m!760603))

(declare-fun m!760605 () Bool)

(assert (=> b!514577 m!760605))

(declare-fun m!760607 () Bool)

(assert (=> mapNonEmpty!1915 m!760607))

(declare-fun m!760609 () Bool)

(assert (=> b!514587 m!760609))

(declare-fun m!760611 () Bool)

(assert (=> b!514587 m!760611))

(declare-fun m!760613 () Bool)

(assert (=> b!514587 m!760613))

(declare-fun m!760615 () Bool)

(assert (=> b!514580 m!760615))

(declare-fun m!760617 () Bool)

(assert (=> b!514582 m!760617))

(declare-fun m!760619 () Bool)

(assert (=> b!514582 m!760619))

(declare-fun m!760621 () Bool)

(assert (=> b!514584 m!760621))

(declare-fun m!760623 () Bool)

(assert (=> b!514579 m!760623))

(declare-fun m!760625 () Bool)

(assert (=> b!514579 m!760625))

(check-sat (not b!514580) b_and!50875 (not b!514577) (not b!514581) (not mapNonEmpty!1915) (not b_next!13441) (not b!514584) (not b_next!13439) (not b!514582) tp_is_empty!2563 b_and!50879 (not b!514587) (not b_next!13443) (not b!514585) (not b!514579) b_and!50877)
(check-sat b_and!50875 (not b_next!13443) (not b_next!13441) b_and!50877 (not b_next!13439) b_and!50879)
