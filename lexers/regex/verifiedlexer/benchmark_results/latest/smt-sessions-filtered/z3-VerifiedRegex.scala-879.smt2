; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46520 () Bool)

(assert start!46520)

(declare-fun b!513696 () Bool)

(declare-fun b_free!13331 () Bool)

(declare-fun b_next!13331 () Bool)

(assert (=> b!513696 (= b_free!13331 (not b_next!13331))))

(declare-fun tp!159951 () Bool)

(declare-fun b_and!50757 () Bool)

(assert (=> b!513696 (= tp!159951 b_and!50757)))

(declare-fun b_free!13333 () Bool)

(declare-fun b_next!13333 () Bool)

(assert (=> start!46520 (= b_free!13333 (not b_next!13333))))

(declare-fun tp!159950 () Bool)

(declare-fun b_and!50759 () Bool)

(assert (=> start!46520 (= tp!159950 b_and!50759)))

(declare-fun b!513695 () Bool)

(declare-fun b_free!13335 () Bool)

(declare-fun b_next!13335 () Bool)

(assert (=> b!513695 (= b_free!13335 (not b_next!13335))))

(declare-fun tp!159947 () Bool)

(declare-fun b_and!50761 () Bool)

(assert (=> b!513695 (= tp!159947 b_and!50761)))

(declare-fun mapNonEmpty!1849 () Bool)

(declare-fun mapRes!1849 () Bool)

(declare-fun tp!159946 () Bool)

(declare-fun tp!159949 () Bool)

(assert (=> mapNonEmpty!1849 (= mapRes!1849 (and tp!159946 tp!159949))))

(declare-datatypes ((K!1312 0))(
  ( (K!1313 (val!1713 Int)) )
))
(declare-datatypes ((V!1410 0))(
  ( (V!1411 (val!1714 Int)) )
))
(declare-datatypes ((tuple2!5572 0))(
  ( (tuple2!5573 (_1!3002 K!1312) (_2!3002 V!1410)) )
))
(declare-datatypes ((List!4670 0))(
  ( (Nil!4660) (Cons!4660 (h!10057 tuple2!5572) (t!73192 List!4670)) )
))
(declare-fun mapValue!1849 () List!4670)

(declare-datatypes ((array!1823 0))(
  ( (array!1824 (arr!842 (Array (_ BitVec 32) List!4670)) (size!3776 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!451 0))(
  ( (HashableExt!450 (__x!3328 Int)) )
))
(declare-datatypes ((array!1825 0))(
  ( (array!1826 (arr!843 (Array (_ BitVec 32) (_ BitVec 64))) (size!3777 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!958 0))(
  ( (LongMapFixedSize!959 (defaultEntry!830 Int) (mask!1883 (_ BitVec 32)) (extraKeys!725 (_ BitVec 32)) (zeroValue!735 List!4670) (minValue!735 List!4670) (_size!1067 (_ BitVec 32)) (_keys!770 array!1825) (_values!757 array!1823) (_vacant!540 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1857 0))(
  ( (Cell!1858 (v!15675 LongMapFixedSize!958)) )
))
(declare-datatypes ((MutLongMap!479 0))(
  ( (LongMap!479 (underlying!1137 Cell!1857)) (MutLongMapExt!478 (__x!3329 Int)) )
))
(declare-datatypes ((Cell!1859 0))(
  ( (Cell!1860 (v!15676 MutLongMap!479)) )
))
(declare-datatypes ((MutableMap!451 0))(
  ( (MutableMapExt!450 (__x!3330 Int)) (HashMap!451 (underlying!1138 Cell!1859) (hashF!2327 Hashable!451) (_size!1068 (_ BitVec 32)) (defaultValue!600 Int)) )
))
(declare-fun hm!65 () MutableMap!451)

(declare-fun mapKey!1849 () (_ BitVec 32))

(declare-fun mapRest!1849 () (Array (_ BitVec 32) List!4670))

(assert (=> mapNonEmpty!1849 (= (arr!842 (_values!757 (v!15675 (underlying!1137 (v!15676 (underlying!1138 hm!65)))))) (store mapRest!1849 mapKey!1849 mapValue!1849))))

(declare-fun b!513691 () Bool)

(declare-fun e!306924 () Bool)

(declare-fun tp!159948 () Bool)

(assert (=> b!513691 (= e!306924 (and tp!159948 mapRes!1849))))

(declare-fun condMapEmpty!1849 () Bool)

(declare-fun mapDefault!1849 () List!4670)

(assert (=> b!513691 (= condMapEmpty!1849 (= (arr!842 (_values!757 (v!15675 (underlying!1137 (v!15676 (underlying!1138 hm!65)))))) ((as const (Array (_ BitVec 32) List!4670)) mapDefault!1849)))))

(declare-fun b!513692 () Bool)

(declare-fun e!306930 () Bool)

(declare-fun e!306929 () Bool)

(assert (=> b!513692 (= e!306930 e!306929)))

(declare-fun b!513693 () Bool)

(declare-fun e!306923 () Bool)

(assert (=> b!513693 (= e!306923 false)))

(declare-datatypes ((ListMap!113 0))(
  ( (ListMap!114 (toList!368 List!4670)) )
))
(declare-fun lt!212487 () ListMap!113)

(declare-fun lt!212488 () ListMap!113)

(declare-fun k0!1740 () K!1312)

(declare-fun -!3 (ListMap!113 K!1312) ListMap!113)

(assert (=> b!513693 (= lt!212487 (-!3 lt!212488 k0!1740))))

(declare-fun b!513694 () Bool)

(declare-fun e!306922 () Bool)

(assert (=> b!513694 (= e!306922 e!306923)))

(declare-fun res!217808 () Bool)

(assert (=> b!513694 (=> (not res!217808) (not e!306923))))

(declare-fun p!6060 () Int)

(declare-fun forall!1353 (List!4670 Int) Bool)

(assert (=> b!513694 (= res!217808 (forall!1353 (toList!368 lt!212488) p!6060))))

(declare-fun map!968 (MutableMap!451) ListMap!113)

(assert (=> b!513694 (= lt!212488 (map!968 hm!65))))

(declare-fun e!306927 () Bool)

(declare-fun tp!159945 () Bool)

(declare-fun tp!159952 () Bool)

(declare-fun array_inv!605 (array!1825) Bool)

(declare-fun array_inv!606 (array!1823) Bool)

(assert (=> b!513695 (= e!306927 (and tp!159947 tp!159945 tp!159952 (array_inv!605 (_keys!770 (v!15675 (underlying!1137 (v!15676 (underlying!1138 hm!65)))))) (array_inv!606 (_values!757 (v!15675 (underlying!1137 (v!15676 (underlying!1138 hm!65)))))) e!306924))))

(declare-fun e!306925 () Bool)

(declare-fun e!306928 () Bool)

(assert (=> b!513696 (= e!306925 (and e!306928 tp!159951))))

(declare-fun res!217809 () Bool)

(assert (=> start!46520 (=> (not res!217809) (not e!306922))))

(get-info :version)

(assert (=> start!46520 (= res!217809 ((_ is HashMap!451) hm!65))))

(assert (=> start!46520 e!306922))

(assert (=> start!46520 e!306925))

(assert (=> start!46520 tp!159950))

(declare-fun tp_is_empty!2519 () Bool)

(assert (=> start!46520 tp_is_empty!2519))

(declare-fun b!513697 () Bool)

(declare-fun res!217810 () Bool)

(assert (=> b!513697 (=> (not res!217810) (not e!306922))))

(declare-fun valid!434 (MutableMap!451) Bool)

(assert (=> b!513697 (= res!217810 (valid!434 hm!65))))

(declare-fun b!513698 () Bool)

(assert (=> b!513698 (= e!306929 e!306927)))

(declare-fun mapIsEmpty!1849 () Bool)

(assert (=> mapIsEmpty!1849 mapRes!1849))

(declare-fun b!513699 () Bool)

(declare-fun lt!212486 () MutLongMap!479)

(assert (=> b!513699 (= e!306928 (and e!306930 ((_ is LongMap!479) lt!212486)))))

(assert (=> b!513699 (= lt!212486 (v!15676 (underlying!1138 hm!65)))))

(assert (= (and start!46520 res!217809) b!513697))

(assert (= (and b!513697 res!217810) b!513694))

(assert (= (and b!513694 res!217808) b!513693))

(assert (= (and b!513691 condMapEmpty!1849) mapIsEmpty!1849))

(assert (= (and b!513691 (not condMapEmpty!1849)) mapNonEmpty!1849))

(assert (= b!513695 b!513691))

(assert (= b!513698 b!513695))

(assert (= b!513692 b!513698))

(assert (= (and b!513699 ((_ is LongMap!479) (v!15676 (underlying!1138 hm!65)))) b!513692))

(assert (= b!513696 b!513699))

(assert (= (and start!46520 ((_ is HashMap!451) hm!65)) b!513696))

(declare-fun m!759743 () Bool)

(assert (=> b!513697 m!759743))

(declare-fun m!759745 () Bool)

(assert (=> mapNonEmpty!1849 m!759745))

(declare-fun m!759747 () Bool)

(assert (=> b!513695 m!759747))

(declare-fun m!759749 () Bool)

(assert (=> b!513695 m!759749))

(declare-fun m!759751 () Bool)

(assert (=> b!513694 m!759751))

(declare-fun m!759753 () Bool)

(assert (=> b!513694 m!759753))

(declare-fun m!759755 () Bool)

(assert (=> b!513693 m!759755))

(check-sat (not b!513697) b_and!50759 (not mapNonEmpty!1849) (not b!513693) (not b_next!13335) b_and!50761 tp_is_empty!2519 (not b!513695) (not b_next!13331) (not b!513694) b_and!50757 (not b!513691) (not b_next!13333))
(check-sat b_and!50757 b_and!50759 (not b_next!13335) b_and!50761 (not b_next!13333) (not b_next!13331))
