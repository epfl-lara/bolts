; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241834 () Bool)

(assert start!241834)

(declare-fun b!2478859 () Bool)

(declare-fun b_free!72105 () Bool)

(declare-fun b_next!72809 () Bool)

(assert (=> b!2478859 (= b_free!72105 (not b_next!72809))))

(declare-fun tp!793290 () Bool)

(declare-fun b_and!188343 () Bool)

(assert (=> b!2478859 (= tp!793290 b_and!188343)))

(declare-fun b!2478852 () Bool)

(declare-fun b_free!72107 () Bool)

(declare-fun b_next!72811 () Bool)

(assert (=> b!2478852 (= b_free!72107 (not b_next!72811))))

(declare-fun tp!793288 () Bool)

(declare-fun b_and!188345 () Bool)

(assert (=> b!2478852 (= tp!793288 b_and!188345)))

(declare-fun e!1573127 () Bool)

(declare-fun e!1573133 () Bool)

(assert (=> b!2478852 (= e!1573127 (and e!1573133 tp!793288))))

(declare-fun res!1049229 () Bool)

(declare-fun e!1573128 () Bool)

(assert (=> start!241834 (=> (not res!1049229) (not e!1573128))))

(declare-datatypes ((Hashable!3222 0))(
  ( (HashableExt!3221 (__x!18842 Int)) )
))
(declare-datatypes ((K!5365 0))(
  ( (K!5366 (val!8767 Int)) )
))
(declare-datatypes ((V!5567 0))(
  ( (V!5568 (val!8768 Int)) )
))
(declare-datatypes ((tuple2!28516 0))(
  ( (tuple2!28517 (_1!16799 K!5365) (_2!16799 V!5567)) )
))
(declare-datatypes ((List!29114 0))(
  ( (Nil!29014) (Cons!29014 (h!34416 tuple2!28516) (t!210763 List!29114)) )
))
(declare-datatypes ((array!11697 0))(
  ( (array!11698 (arr!5214 (Array (_ BitVec 32) List!29114)) (size!22633 (_ BitVec 32))) )
))
(declare-datatypes ((array!11699 0))(
  ( (array!11700 (arr!5215 (Array (_ BitVec 32) (_ BitVec 64))) (size!22634 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6624 0))(
  ( (LongMapFixedSize!6625 (defaultEntry!3686 Int) (mask!8457 (_ BitVec 32)) (extraKeys!3560 (_ BitVec 32)) (zeroValue!3570 List!29114) (minValue!3570 List!29114) (_size!6671 (_ BitVec 32)) (_keys!3609 array!11699) (_values!3592 array!11697) (_vacant!3373 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13065 0))(
  ( (Cell!13066 (v!31312 LongMapFixedSize!6624)) )
))
(declare-datatypes ((MutLongMap!3312 0))(
  ( (LongMap!3312 (underlying!6831 Cell!13065)) (MutLongMapExt!3311 (__x!18843 Int)) )
))
(declare-datatypes ((Cell!13067 0))(
  ( (Cell!13068 (v!31313 MutLongMap!3312)) )
))
(declare-datatypes ((MutableMap!3222 0))(
  ( (MutableMapExt!3221 (__x!18844 Int)) (HashMap!3222 (underlying!6832 Cell!13067) (hashF!5160 Hashable!3222) (_size!6672 (_ BitVec 32)) (defaultValue!3384 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3222)

(get-info :version)

(assert (=> start!241834 (= res!1049229 ((_ is HashMap!3222) thiss!42540))))

(assert (=> start!241834 e!1573128))

(assert (=> start!241834 e!1573127))

(declare-fun tp_is_empty!12139 () Bool)

(assert (=> start!241834 tp_is_empty!12139))

(declare-fun b!2478853 () Bool)

(declare-fun e!1573132 () Bool)

(declare-fun e!1573131 () Bool)

(assert (=> b!2478853 (= e!1573132 e!1573131)))

(declare-fun b!2478854 () Bool)

(declare-fun lt!885832 () MutLongMap!3312)

(assert (=> b!2478854 (= e!1573133 (and e!1573132 ((_ is LongMap!3312) lt!885832)))))

(assert (=> b!2478854 (= lt!885832 (v!31313 (underlying!6832 thiss!42540)))))

(declare-fun b!2478855 () Bool)

(declare-fun res!1049230 () Bool)

(assert (=> b!2478855 (=> (not res!1049230) (not e!1573128))))

(declare-fun valid!2524 (MutableMap!3222) Bool)

(assert (=> b!2478855 (= res!1049230 (valid!2524 thiss!42540))))

(declare-fun b!2478856 () Bool)

(declare-fun e!1573130 () Bool)

(assert (=> b!2478856 (= e!1573128 (not e!1573130))))

(declare-fun res!1049228 () Bool)

(assert (=> b!2478856 (=> res!1049228 e!1573130)))

(declare-datatypes ((tuple2!28518 0))(
  ( (tuple2!28519 (_1!16800 Bool) (_2!16800 MutLongMap!3312)) )
))
(declare-fun lt!885827 () tuple2!28518)

(assert (=> b!2478856 (= res!1049228 (not (_1!16800 lt!885827)))))

(declare-fun lt!885833 () List!29114)

(declare-fun noDuplicateKeys!54 (List!29114) Bool)

(assert (=> b!2478856 (noDuplicateKeys!54 lt!885833)))

(declare-datatypes ((Unit!42423 0))(
  ( (Unit!42424) )
))
(declare-fun lt!885824 () Unit!42423)

(declare-fun lt!885834 () List!29114)

(declare-fun key!2246 () K!5365)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!40 (List!29114 K!5365) Unit!42423)

(assert (=> b!2478856 (= lt!885824 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!40 lt!885834 key!2246))))

(declare-datatypes ((tuple2!28520 0))(
  ( (tuple2!28521 (_1!16801 Unit!42423) (_2!16801 MutableMap!3222)) )
))
(declare-fun lt!885826 () tuple2!28520)

(declare-fun lt!885831 () Cell!13067)

(declare-fun Unit!42425 () Unit!42423)

(declare-fun Unit!42426 () Unit!42423)

(assert (=> b!2478856 (= lt!885826 (ite (_1!16800 lt!885827) (tuple2!28521 Unit!42425 (HashMap!3222 lt!885831 (hashF!5160 thiss!42540) (bvsub (_size!6672 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3384 thiss!42540))) (tuple2!28521 Unit!42426 (HashMap!3222 lt!885831 (hashF!5160 thiss!42540) (_size!6672 thiss!42540) (defaultValue!3384 thiss!42540)))))))

(assert (=> b!2478856 (= lt!885831 (Cell!13068 (_2!16800 lt!885827)))))

(declare-fun lt!885823 () (_ BitVec 64))

(declare-fun update!157 (MutLongMap!3312 (_ BitVec 64) List!29114) tuple2!28518)

(assert (=> b!2478856 (= lt!885827 (update!157 (v!31313 (underlying!6832 thiss!42540)) lt!885823 lt!885833))))

(declare-fun removePairForKey!44 (List!29114 K!5365) List!29114)

(assert (=> b!2478856 (= lt!885833 (removePairForKey!44 lt!885834 key!2246))))

(declare-datatypes ((ListMap!989 0))(
  ( (ListMap!990 (toList!1503 List!29114)) )
))
(declare-fun lt!885822 () ListMap!989)

(declare-fun map!6097 (MutableMap!3222) ListMap!989)

(assert (=> b!2478856 (= lt!885822 (map!6097 thiss!42540))))

(declare-fun lambda!93590 () Int)

(declare-datatypes ((tuple2!28522 0))(
  ( (tuple2!28523 (_1!16802 (_ BitVec 64)) (_2!16802 List!29114)) )
))
(declare-datatypes ((List!29115 0))(
  ( (Nil!29015) (Cons!29015 (h!34417 tuple2!28522) (t!210764 List!29115)) )
))
(declare-datatypes ((ListLongMap!447 0))(
  ( (ListLongMap!448 (toList!1504 List!29115)) )
))
(declare-fun lt!885825 () ListLongMap!447)

(declare-fun lt!885828 () Unit!42423)

(declare-fun forallContained!825 (List!29115 Int tuple2!28522) Unit!42423)

(assert (=> b!2478856 (= lt!885828 (forallContained!825 (toList!1504 lt!885825) lambda!93590 (tuple2!28523 lt!885823 lt!885834)))))

(declare-fun map!6098 (MutLongMap!3312) ListLongMap!447)

(assert (=> b!2478856 (= lt!885825 (map!6098 (v!31313 (underlying!6832 thiss!42540))))))

(declare-fun apply!6870 (MutLongMap!3312 (_ BitVec 64)) List!29114)

(assert (=> b!2478856 (= lt!885834 (apply!6870 (v!31313 (underlying!6832 thiss!42540)) lt!885823))))

(declare-fun hash!641 (Hashable!3222 K!5365) (_ BitVec 64))

(assert (=> b!2478856 (= lt!885823 (hash!641 (hashF!5160 thiss!42540) key!2246))))

(declare-fun b!2478857 () Bool)

(declare-fun e!1573126 () Bool)

(declare-fun tp!793289 () Bool)

(declare-fun mapRes!15382 () Bool)

(assert (=> b!2478857 (= e!1573126 (and tp!793289 mapRes!15382))))

(declare-fun condMapEmpty!15382 () Bool)

(declare-fun mapDefault!15382 () List!29114)

(assert (=> b!2478857 (= condMapEmpty!15382 (= (arr!5214 (_values!3592 (v!31312 (underlying!6831 (v!31313 (underlying!6832 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29114)) mapDefault!15382)))))

(declare-fun b!2478858 () Bool)

(declare-fun res!1049227 () Bool)

(assert (=> b!2478858 (=> (not res!1049227) (not e!1573128))))

(declare-fun contains!5014 (MutableMap!3222 K!5365) Bool)

(assert (=> b!2478858 (= res!1049227 (contains!5014 thiss!42540 key!2246))))

(declare-fun mapNonEmpty!15382 () Bool)

(declare-fun tp!793292 () Bool)

(declare-fun tp!793286 () Bool)

(assert (=> mapNonEmpty!15382 (= mapRes!15382 (and tp!793292 tp!793286))))

(declare-fun mapKey!15382 () (_ BitVec 32))

(declare-fun mapValue!15382 () List!29114)

(declare-fun mapRest!15382 () (Array (_ BitVec 32) List!29114))

(assert (=> mapNonEmpty!15382 (= (arr!5214 (_values!3592 (v!31312 (underlying!6831 (v!31313 (underlying!6832 thiss!42540)))))) (store mapRest!15382 mapKey!15382 mapValue!15382))))

(declare-fun tp!793287 () Bool)

(declare-fun tp!793291 () Bool)

(declare-fun e!1573129 () Bool)

(declare-fun array_inv!3741 (array!11699) Bool)

(declare-fun array_inv!3742 (array!11697) Bool)

(assert (=> b!2478859 (= e!1573129 (and tp!793290 tp!793287 tp!793291 (array_inv!3741 (_keys!3609 (v!31312 (underlying!6831 (v!31313 (underlying!6832 thiss!42540)))))) (array_inv!3742 (_values!3592 (v!31312 (underlying!6831 (v!31313 (underlying!6832 thiss!42540)))))) e!1573126))))

(declare-fun b!2478860 () Bool)

(assert (=> b!2478860 (= e!1573131 e!1573129)))

(declare-fun mapIsEmpty!15382 () Bool)

(assert (=> mapIsEmpty!15382 mapRes!15382))

(declare-fun b!2478861 () Bool)

(assert (=> b!2478861 (= e!1573130 true)))

(declare-fun lt!885829 () Bool)

(assert (=> b!2478861 (= lt!885829 (noDuplicateKeys!54 lt!885834))))

(declare-fun allKeysSameHash!41 (List!29114 (_ BitVec 64) Hashable!3222) Bool)

(assert (=> b!2478861 (allKeysSameHash!41 lt!885834 lt!885823 (hashF!5160 (_2!16801 lt!885826)))))

(declare-fun lt!885830 () Unit!42423)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!37 (List!29115 (_ BitVec 64) List!29114 Hashable!3222) Unit!42423)

(assert (=> b!2478861 (= lt!885830 (lemmaInLongMapAllKeySameHashThenForTuple!37 (toList!1504 lt!885825) lt!885823 lt!885834 (hashF!5160 (_2!16801 lt!885826))))))

(assert (= (and start!241834 res!1049229) b!2478855))

(assert (= (and b!2478855 res!1049230) b!2478858))

(assert (= (and b!2478858 res!1049227) b!2478856))

(assert (= (and b!2478856 (not res!1049228)) b!2478861))

(assert (= (and b!2478857 condMapEmpty!15382) mapIsEmpty!15382))

(assert (= (and b!2478857 (not condMapEmpty!15382)) mapNonEmpty!15382))

(assert (= b!2478859 b!2478857))

(assert (= b!2478860 b!2478859))

(assert (= b!2478853 b!2478860))

(assert (= (and b!2478854 ((_ is LongMap!3312) (v!31313 (underlying!6832 thiss!42540)))) b!2478853))

(assert (= b!2478852 b!2478854))

(assert (= (and start!241834 ((_ is HashMap!3222) thiss!42540)) b!2478852))

(declare-fun m!2846463 () Bool)

(assert (=> b!2478859 m!2846463))

(declare-fun m!2846465 () Bool)

(assert (=> b!2478859 m!2846465))

(declare-fun m!2846467 () Bool)

(assert (=> b!2478855 m!2846467))

(declare-fun m!2846469 () Bool)

(assert (=> mapNonEmpty!15382 m!2846469))

(declare-fun m!2846471 () Bool)

(assert (=> b!2478861 m!2846471))

(declare-fun m!2846473 () Bool)

(assert (=> b!2478861 m!2846473))

(declare-fun m!2846475 () Bool)

(assert (=> b!2478861 m!2846475))

(declare-fun m!2846477 () Bool)

(assert (=> b!2478856 m!2846477))

(declare-fun m!2846479 () Bool)

(assert (=> b!2478856 m!2846479))

(declare-fun m!2846481 () Bool)

(assert (=> b!2478856 m!2846481))

(declare-fun m!2846483 () Bool)

(assert (=> b!2478856 m!2846483))

(declare-fun m!2846485 () Bool)

(assert (=> b!2478856 m!2846485))

(declare-fun m!2846487 () Bool)

(assert (=> b!2478856 m!2846487))

(declare-fun m!2846489 () Bool)

(assert (=> b!2478856 m!2846489))

(declare-fun m!2846491 () Bool)

(assert (=> b!2478856 m!2846491))

(declare-fun m!2846493 () Bool)

(assert (=> b!2478856 m!2846493))

(declare-fun m!2846495 () Bool)

(assert (=> b!2478858 m!2846495))

(check-sat (not b!2478858) b_and!188345 b_and!188343 (not b!2478855) (not b!2478861) (not b!2478859) (not b!2478857) (not b_next!72811) tp_is_empty!12139 (not b!2478856) (not mapNonEmpty!15382) (not b_next!72809))
(check-sat b_and!188345 b_and!188343 (not b_next!72809) (not b_next!72811))
