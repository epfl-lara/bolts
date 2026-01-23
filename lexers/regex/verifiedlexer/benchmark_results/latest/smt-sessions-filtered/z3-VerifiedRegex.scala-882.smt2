; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46560 () Bool)

(assert start!46560)

(declare-fun b!513991 () Bool)

(declare-fun b_free!13367 () Bool)

(declare-fun b_next!13367 () Bool)

(assert (=> b!513991 (= b_free!13367 (not b_next!13367))))

(declare-fun tp!160120 () Bool)

(declare-fun b_and!50797 () Bool)

(assert (=> b!513991 (= tp!160120 b_and!50797)))

(declare-fun b!513992 () Bool)

(declare-fun b_free!13369 () Bool)

(declare-fun b_next!13369 () Bool)

(assert (=> b!513992 (= b_free!13369 (not b_next!13369))))

(declare-fun tp!160126 () Bool)

(declare-fun b_and!50799 () Bool)

(assert (=> b!513992 (= tp!160126 b_and!50799)))

(declare-fun b_free!13371 () Bool)

(declare-fun b_next!13371 () Bool)

(assert (=> start!46560 (= b_free!13371 (not b_next!13371))))

(declare-fun tp!160122 () Bool)

(declare-fun b_and!50801 () Bool)

(assert (=> start!46560 (= tp!160122 b_and!50801)))

(declare-fun mapNonEmpty!1873 () Bool)

(declare-fun mapRes!1873 () Bool)

(declare-fun tp!160125 () Bool)

(declare-fun tp!160124 () Bool)

(assert (=> mapNonEmpty!1873 (= mapRes!1873 (and tp!160125 tp!160124))))

(declare-fun mapKey!1873 () (_ BitVec 32))

(declare-datatypes ((V!1425 0))(
  ( (V!1426 (val!1725 Int)) )
))
(declare-datatypes ((K!1327 0))(
  ( (K!1328 (val!1726 Int)) )
))
(declare-datatypes ((tuple2!5604 0))(
  ( (tuple2!5605 (_1!3018 K!1327) (_2!3018 V!1425)) )
))
(declare-datatypes ((List!4680 0))(
  ( (Nil!4670) (Cons!4670 (h!10067 tuple2!5604) (t!73206 List!4680)) )
))
(declare-datatypes ((array!1851 0))(
  ( (array!1852 (arr!854 (Array (_ BitVec 32) List!4680)) (size!3788 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!457 0))(
  ( (HashableExt!456 (__x!3346 Int)) )
))
(declare-datatypes ((array!1853 0))(
  ( (array!1854 (arr!855 (Array (_ BitVec 32) (_ BitVec 64))) (size!3789 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!970 0))(
  ( (LongMapFixedSize!971 (defaultEntry!836 Int) (mask!1892 (_ BitVec 32)) (extraKeys!731 (_ BitVec 32)) (zeroValue!741 List!4680) (minValue!741 List!4680) (_size!1079 (_ BitVec 32)) (_keys!776 array!1853) (_values!763 array!1851) (_vacant!546 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1881 0))(
  ( (Cell!1882 (v!15687 LongMapFixedSize!970)) )
))
(declare-datatypes ((MutLongMap!485 0))(
  ( (LongMap!485 (underlying!1149 Cell!1881)) (MutLongMapExt!484 (__x!3347 Int)) )
))
(declare-datatypes ((Cell!1883 0))(
  ( (Cell!1884 (v!15688 MutLongMap!485)) )
))
(declare-datatypes ((MutableMap!457 0))(
  ( (MutableMapExt!456 (__x!3348 Int)) (HashMap!457 (underlying!1150 Cell!1883) (hashF!2333 Hashable!457) (_size!1080 (_ BitVec 32)) (defaultValue!606 Int)) )
))
(declare-fun hm!65 () MutableMap!457)

(declare-fun mapValue!1873 () List!4680)

(declare-fun mapRest!1873 () (Array (_ BitVec 32) List!4680))

(assert (=> mapNonEmpty!1873 (= (arr!854 (_values!763 (v!15687 (underlying!1149 (v!15688 (underlying!1150 hm!65)))))) (store mapRest!1873 mapKey!1873 mapValue!1873))))

(declare-fun b!513989 () Bool)

(declare-fun e!307177 () Bool)

(declare-fun e!307183 () Bool)

(assert (=> b!513989 (= e!307177 e!307183)))

(declare-fun b!513990 () Bool)

(declare-fun e!307182 () Bool)

(declare-fun e!307179 () Bool)

(assert (=> b!513990 (= e!307182 e!307179)))

(declare-fun res!217918 () Bool)

(assert (=> b!513990 (=> (not res!217918) (not e!307179))))

(declare-datatypes ((ListMap!123 0))(
  ( (ListMap!124 (toList!375 List!4680)) )
))
(declare-fun lt!212746 () ListMap!123)

(declare-fun p!6060 () Int)

(declare-fun forall!1359 (List!4680 Int) Bool)

(assert (=> b!513990 (= res!217918 (forall!1359 (toList!375 lt!212746) p!6060))))

(declare-fun map!977 (MutableMap!457) ListMap!123)

(assert (=> b!513990 (= lt!212746 (map!977 hm!65))))

(declare-fun tp!160119 () Bool)

(declare-fun tp!160123 () Bool)

(declare-fun e!307176 () Bool)

(declare-fun e!307175 () Bool)

(declare-fun array_inv!615 (array!1853) Bool)

(declare-fun array_inv!616 (array!1851) Bool)

(assert (=> b!513991 (= e!307175 (and tp!160120 tp!160123 tp!160119 (array_inv!615 (_keys!776 (v!15687 (underlying!1149 (v!15688 (underlying!1150 hm!65)))))) (array_inv!616 (_values!763 (v!15687 (underlying!1149 (v!15688 (underlying!1150 hm!65)))))) e!307176))))

(declare-fun mapIsEmpty!1873 () Bool)

(assert (=> mapIsEmpty!1873 mapRes!1873))

(declare-fun res!217920 () Bool)

(assert (=> start!46560 (=> (not res!217920) (not e!307182))))

(get-info :version)

(assert (=> start!46560 (= res!217920 ((_ is HashMap!457) hm!65))))

(assert (=> start!46560 e!307182))

(declare-fun e!307178 () Bool)

(assert (=> start!46560 e!307178))

(assert (=> start!46560 tp!160122))

(declare-fun tp_is_empty!2535 () Bool)

(assert (=> start!46560 tp_is_empty!2535))

(declare-fun e!307180 () Bool)

(assert (=> b!513992 (= e!307178 (and e!307180 tp!160126))))

(declare-fun b!513993 () Bool)

(assert (=> b!513993 (= e!307183 e!307175)))

(declare-fun b!513994 () Bool)

(declare-fun tp!160121 () Bool)

(assert (=> b!513994 (= e!307176 (and tp!160121 mapRes!1873))))

(declare-fun condMapEmpty!1873 () Bool)

(declare-fun mapDefault!1873 () List!4680)

(assert (=> b!513994 (= condMapEmpty!1873 (= (arr!854 (_values!763 (v!15687 (underlying!1149 (v!15688 (underlying!1150 hm!65)))))) ((as const (Array (_ BitVec 32) List!4680)) mapDefault!1873)))))

(declare-fun b!513995 () Bool)

(declare-fun res!217919 () Bool)

(assert (=> b!513995 (=> (not res!217919) (not e!307182))))

(declare-fun valid!441 (MutableMap!457) Bool)

(assert (=> b!513995 (= res!217919 (valid!441 hm!65))))

(declare-fun b!513996 () Bool)

(assert (=> b!513996 (= e!307179 false)))

(declare-fun lt!212743 () Bool)

(declare-fun k0!1740 () K!1327)

(declare-datatypes ((tuple2!5606 0))(
  ( (tuple2!5607 (_1!3019 Bool) (_2!3019 MutableMap!457)) )
))
(declare-fun remove!11 (MutableMap!457 K!1327) tuple2!5606)

(assert (=> b!513996 (= lt!212743 (valid!441 (_2!3019 (remove!11 hm!65 k0!1740))))))

(declare-fun lt!212745 () ListMap!123)

(declare-fun -!8 (ListMap!123 K!1327) ListMap!123)

(assert (=> b!513996 (= lt!212745 (-!8 lt!212746 k0!1740))))

(declare-fun b!513997 () Bool)

(declare-fun lt!212744 () MutLongMap!485)

(assert (=> b!513997 (= e!307180 (and e!307177 ((_ is LongMap!485) lt!212744)))))

(assert (=> b!513997 (= lt!212744 (v!15688 (underlying!1150 hm!65)))))

(assert (= (and start!46560 res!217920) b!513995))

(assert (= (and b!513995 res!217919) b!513990))

(assert (= (and b!513990 res!217918) b!513996))

(assert (= (and b!513994 condMapEmpty!1873) mapIsEmpty!1873))

(assert (= (and b!513994 (not condMapEmpty!1873)) mapNonEmpty!1873))

(assert (= b!513991 b!513994))

(assert (= b!513993 b!513991))

(assert (= b!513989 b!513993))

(assert (= (and b!513997 ((_ is LongMap!485) (v!15688 (underlying!1150 hm!65)))) b!513989))

(assert (= b!513992 b!513997))

(assert (= (and start!46560 ((_ is HashMap!457) hm!65)) b!513992))

(declare-fun m!760051 () Bool)

(assert (=> b!513996 m!760051))

(declare-fun m!760053 () Bool)

(assert (=> b!513996 m!760053))

(declare-fun m!760055 () Bool)

(assert (=> b!513996 m!760055))

(declare-fun m!760057 () Bool)

(assert (=> b!513995 m!760057))

(declare-fun m!760059 () Bool)

(assert (=> b!513991 m!760059))

(declare-fun m!760061 () Bool)

(assert (=> b!513991 m!760061))

(declare-fun m!760063 () Bool)

(assert (=> mapNonEmpty!1873 m!760063))

(declare-fun m!760065 () Bool)

(assert (=> b!513990 m!760065))

(declare-fun m!760067 () Bool)

(assert (=> b!513990 m!760067))

(check-sat (not b_next!13371) (not b!513990) tp_is_empty!2535 (not b!513994) (not b!513991) (not b!513996) b_and!50799 (not mapNonEmpty!1873) b_and!50801 (not b!513995) (not b_next!13367) (not b_next!13369) b_and!50797)
(check-sat (not b_next!13371) b_and!50799 b_and!50801 (not b_next!13367) (not b_next!13369) b_and!50797)
