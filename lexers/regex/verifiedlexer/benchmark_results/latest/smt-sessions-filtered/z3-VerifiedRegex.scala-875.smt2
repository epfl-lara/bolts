; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46452 () Bool)

(assert start!46452)

(declare-fun b!513172 () Bool)

(declare-fun b_free!13289 () Bool)

(declare-fun b_next!13289 () Bool)

(assert (=> b!513172 (= b_free!13289 (not b_next!13289))))

(declare-fun tp!159725 () Bool)

(declare-fun b_and!50715 () Bool)

(assert (=> b!513172 (= tp!159725 b_and!50715)))

(declare-fun b!513168 () Bool)

(declare-fun b_free!13291 () Bool)

(declare-fun b_next!13291 () Bool)

(assert (=> b!513168 (= b_free!13291 (not b_next!13291))))

(declare-fun tp!159722 () Bool)

(declare-fun b_and!50717 () Bool)

(assert (=> b!513168 (= tp!159722 b_and!50717)))

(declare-fun b!513167 () Bool)

(declare-fun e!306525 () Bool)

(declare-fun e!306524 () Bool)

(assert (=> b!513167 (= e!306525 e!306524)))

(declare-fun e!306523 () Bool)

(declare-fun e!306531 () Bool)

(assert (=> b!513168 (= e!306523 (and e!306531 tp!159722))))

(declare-fun res!217631 () Bool)

(declare-fun e!306529 () Bool)

(assert (=> start!46452 (=> (not res!217631) (not e!306529))))

(declare-datatypes ((V!1390 0))(
  ( (V!1391 (val!1697 Int)) )
))
(declare-datatypes ((K!1292 0))(
  ( (K!1293 (val!1698 Int)) )
))
(declare-datatypes ((array!1789 0))(
  ( (array!1790 (arr!826 (Array (_ BitVec 32) (_ BitVec 64))) (size!3760 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!5546 0))(
  ( (tuple2!5547 (_1!2989 K!1292) (_2!2989 V!1390)) )
))
(declare-datatypes ((List!4660 0))(
  ( (Nil!4650) (Cons!4650 (h!10047 tuple2!5546) (t!73182 List!4660)) )
))
(declare-datatypes ((array!1791 0))(
  ( (array!1792 (arr!827 (Array (_ BitVec 32) List!4660)) (size!3761 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!942 0))(
  ( (LongMapFixedSize!943 (defaultEntry!822 Int) (mask!1871 (_ BitVec 32)) (extraKeys!717 (_ BitVec 32)) (zeroValue!727 List!4660) (minValue!727 List!4660) (_size!1051 (_ BitVec 32)) (_keys!762 array!1789) (_values!749 array!1791) (_vacant!532 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!443 0))(
  ( (HashableExt!442 (__x!3304 Int)) )
))
(declare-datatypes ((Cell!1825 0))(
  ( (Cell!1826 (v!15654 LongMapFixedSize!942)) )
))
(declare-datatypes ((MutLongMap!471 0))(
  ( (LongMap!471 (underlying!1121 Cell!1825)) (MutLongMapExt!470 (__x!3305 Int)) )
))
(declare-datatypes ((Cell!1827 0))(
  ( (Cell!1828 (v!15655 MutLongMap!471)) )
))
(declare-datatypes ((MutableMap!443 0))(
  ( (MutableMapExt!442 (__x!3306 Int)) (HashMap!443 (underlying!1122 Cell!1827) (hashF!2319 Hashable!443) (_size!1052 (_ BitVec 32)) (defaultValue!592 Int)) )
))
(declare-fun thiss!47794 () MutableMap!443)

(get-info :version)

(assert (=> start!46452 (= res!217631 ((_ is MutableMapExt!442) thiss!47794))))

(assert (=> start!46452 e!306529))

(assert (=> start!46452 e!306523))

(declare-fun tp_is_empty!2497 () Bool)

(assert (=> start!46452 tp_is_empty!2497))

(declare-fun tp_is_empty!2499 () Bool)

(assert (=> start!46452 tp_is_empty!2499))

(declare-fun b!513169 () Bool)

(declare-fun e!306528 () Bool)

(declare-fun tp!159721 () Bool)

(declare-fun mapRes!1818 () Bool)

(assert (=> b!513169 (= e!306528 (and tp!159721 mapRes!1818))))

(declare-fun condMapEmpty!1818 () Bool)

(declare-fun mapDefault!1818 () List!4660)

(assert (=> b!513169 (= condMapEmpty!1818 (= (arr!827 (_values!749 (v!15654 (underlying!1121 (v!15655 (underlying!1122 thiss!47794)))))) ((as const (Array (_ BitVec 32) List!4660)) mapDefault!1818)))))

(declare-fun b!513170 () Bool)

(declare-fun e!306527 () Bool)

(assert (=> b!513170 (= e!306527 false)))

(declare-fun lt!212289 () Bool)

(declare-datatypes ((tuple2!5548 0))(
  ( (tuple2!5549 (_1!2990 Bool) (_2!2990 MutableMap!443)) )
))
(declare-fun lt!212288 () tuple2!5548)

(declare-fun key!7215 () K!1292)

(declare-datatypes ((ListMap!103 0))(
  ( (ListMap!104 (toList!362 List!4660)) )
))
(declare-fun contains!1053 (ListMap!103 K!1292) Bool)

(declare-fun abstractMap!36 (MutableMap!443) ListMap!103)

(assert (=> b!513170 (= lt!212289 (contains!1053 (abstractMap!36 (_2!2990 lt!212288)) key!7215))))

(declare-fun b!513171 () Bool)

(declare-fun res!217634 () Bool)

(assert (=> b!513171 (=> (not res!217634) (not e!306529))))

(declare-fun valid!426 (MutableMap!443) Bool)

(assert (=> b!513171 (= res!217634 (valid!426 thiss!47794))))

(declare-fun tp!159724 () Bool)

(declare-fun tp!159723 () Bool)

(declare-fun array_inv!591 (array!1789) Bool)

(declare-fun array_inv!592 (array!1791) Bool)

(assert (=> b!513172 (= e!306524 (and tp!159725 tp!159723 tp!159724 (array_inv!591 (_keys!762 (v!15654 (underlying!1121 (v!15655 (underlying!1122 thiss!47794)))))) (array_inv!592 (_values!749 (v!15654 (underlying!1121 (v!15655 (underlying!1122 thiss!47794)))))) e!306528))))

(declare-fun mapIsEmpty!1818 () Bool)

(assert (=> mapIsEmpty!1818 mapRes!1818))

(declare-fun b!513173 () Bool)

(declare-fun e!306530 () Bool)

(assert (=> b!513173 (= e!306530 e!306525)))

(declare-fun mapNonEmpty!1818 () Bool)

(declare-fun tp!159726 () Bool)

(declare-fun tp!159727 () Bool)

(assert (=> mapNonEmpty!1818 (= mapRes!1818 (and tp!159726 tp!159727))))

(declare-fun mapKey!1818 () (_ BitVec 32))

(declare-fun mapRest!1818 () (Array (_ BitVec 32) List!4660))

(declare-fun mapValue!1818 () List!4660)

(assert (=> mapNonEmpty!1818 (= (arr!827 (_values!749 (v!15654 (underlying!1121 (v!15655 (underlying!1122 thiss!47794)))))) (store mapRest!1818 mapKey!1818 mapValue!1818))))

(declare-fun b!513174 () Bool)

(declare-fun res!217632 () Bool)

(assert (=> b!513174 (=> (not res!217632) (not e!306527))))

(assert (=> b!513174 (= res!217632 (_1!2990 lt!212288))))

(declare-fun b!513175 () Bool)

(declare-fun res!217633 () Bool)

(assert (=> b!513175 (=> (not res!217633) (not e!306527))))

(assert (=> b!513175 (= res!217633 (valid!426 (_2!2990 lt!212288)))))

(declare-fun b!513176 () Bool)

(declare-fun lt!212290 () MutLongMap!471)

(assert (=> b!513176 (= e!306531 (and e!306530 ((_ is LongMap!471) lt!212290)))))

(assert (=> b!513176 (= lt!212290 (v!15655 (underlying!1122 thiss!47794)))))

(declare-fun b!513177 () Bool)

(assert (=> b!513177 (= e!306529 e!306527)))

(declare-fun res!217635 () Bool)

(assert (=> b!513177 (=> (not res!217635) (not e!306527))))

(assert (=> b!513177 (= res!217635 ((_ is MutableMapExt!442) (_2!2990 lt!212288)))))

(declare-fun v!11800 () V!1390)

(declare-fun choose!3658 (MutableMap!443 K!1292 V!1390) tuple2!5548)

(assert (=> b!513177 (= lt!212288 (choose!3658 thiss!47794 key!7215 v!11800))))

(assert (= (and start!46452 res!217631) b!513171))

(assert (= (and b!513171 res!217634) b!513177))

(assert (= (and b!513177 res!217635) b!513175))

(assert (= (and b!513175 res!217633) b!513174))

(assert (= (and b!513174 res!217632) b!513170))

(assert (= (and b!513169 condMapEmpty!1818) mapIsEmpty!1818))

(assert (= (and b!513169 (not condMapEmpty!1818)) mapNonEmpty!1818))

(assert (= b!513172 b!513169))

(assert (= b!513167 b!513172))

(assert (= b!513173 b!513167))

(assert (= (and b!513176 ((_ is LongMap!471) (v!15655 (underlying!1122 thiss!47794)))) b!513173))

(assert (= b!513168 b!513176))

(assert (= (and start!46452 ((_ is HashMap!443) thiss!47794)) b!513168))

(declare-fun m!759365 () Bool)

(assert (=> b!513171 m!759365))

(declare-fun m!759367 () Bool)

(assert (=> b!513170 m!759367))

(assert (=> b!513170 m!759367))

(declare-fun m!759369 () Bool)

(assert (=> b!513170 m!759369))

(declare-fun m!759371 () Bool)

(assert (=> b!513175 m!759371))

(declare-fun m!759373 () Bool)

(assert (=> mapNonEmpty!1818 m!759373))

(declare-fun m!759375 () Bool)

(assert (=> b!513172 m!759375))

(declare-fun m!759377 () Bool)

(assert (=> b!513172 m!759377))

(declare-fun m!759379 () Bool)

(assert (=> b!513177 m!759379))

(check-sat (not b!513177) (not b!513175) (not b!513171) (not b_next!13291) (not mapNonEmpty!1818) (not b!513170) tp_is_empty!2499 tp_is_empty!2497 (not b!513169) b_and!50715 (not b!513172) (not b_next!13289) b_and!50717)
(check-sat b_and!50715 b_and!50717 (not b_next!13291) (not b_next!13289))
