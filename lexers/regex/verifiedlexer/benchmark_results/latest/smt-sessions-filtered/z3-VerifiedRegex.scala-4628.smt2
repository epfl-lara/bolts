; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242276 () Bool)

(assert start!242276)

(declare-fun b!2482416 () Bool)

(declare-fun b_free!72361 () Bool)

(declare-fun b_next!73065 () Bool)

(assert (=> b!2482416 (= b_free!72361 (not b_next!73065))))

(declare-fun tp!794779 () Bool)

(declare-fun b_and!188611 () Bool)

(assert (=> b!2482416 (= tp!794779 b_and!188611)))

(declare-fun b!2482410 () Bool)

(declare-fun b_free!72363 () Bool)

(declare-fun b_next!73067 () Bool)

(assert (=> b!2482410 (= b_free!72363 (not b_next!73067))))

(declare-fun tp!794776 () Bool)

(declare-fun b_and!188613 () Bool)

(assert (=> b!2482410 (= tp!794776 b_and!188613)))

(declare-fun b!2482409 () Bool)

(declare-fun e!1575867 () Bool)

(declare-fun e!1575865 () Bool)

(assert (=> b!2482409 (= e!1575867 e!1575865)))

(declare-fun b!2482411 () Bool)

(declare-fun e!1575869 () Bool)

(declare-fun tp!794780 () Bool)

(declare-fun mapRes!15602 () Bool)

(assert (=> b!2482411 (= e!1575869 (and tp!794780 mapRes!15602))))

(declare-fun condMapEmpty!15602 () Bool)

(declare-datatypes ((Hashable!3286 0))(
  ( (HashableExt!3285 (__x!19034 Int)) )
))
(declare-datatypes ((K!5525 0))(
  ( (K!5526 (val!8895 Int)) )
))
(declare-datatypes ((V!5727 0))(
  ( (V!5728 (val!8896 Int)) )
))
(declare-datatypes ((tuple2!28880 0))(
  ( (tuple2!28881 (_1!16981 K!5525) (_2!16981 V!5727)) )
))
(declare-datatypes ((List!29229 0))(
  ( (Nil!29129) (Cons!29129 (h!34535 tuple2!28880) (t!210890 List!29229)) )
))
(declare-datatypes ((array!11971 0))(
  ( (array!11972 (arr!5342 (Array (_ BitVec 32) List!29229)) (size!22761 (_ BitVec 32))) )
))
(declare-datatypes ((array!11973 0))(
  ( (array!11974 (arr!5343 (Array (_ BitVec 32) (_ BitVec 64))) (size!22762 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6752 0))(
  ( (LongMapFixedSize!6753 (defaultEntry!3750 Int) (mask!8553 (_ BitVec 32)) (extraKeys!3624 (_ BitVec 32)) (zeroValue!3634 List!29229) (minValue!3634 List!29229) (_size!6799 (_ BitVec 32)) (_keys!3673 array!11973) (_values!3656 array!11971) (_vacant!3437 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13321 0))(
  ( (Cell!13322 (v!31482 LongMapFixedSize!6752)) )
))
(declare-datatypes ((MutLongMap!3376 0))(
  ( (LongMap!3376 (underlying!6959 Cell!13321)) (MutLongMapExt!3375 (__x!19035 Int)) )
))
(declare-datatypes ((Cell!13323 0))(
  ( (Cell!13324 (v!31483 MutLongMap!3376)) )
))
(declare-datatypes ((MutableMap!3286 0))(
  ( (MutableMapExt!3285 (__x!19036 Int)) (HashMap!3286 (underlying!6960 Cell!13323) (hashF!5249 Hashable!3286) (_size!6800 (_ BitVec 32)) (defaultValue!3448 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3286)

(declare-fun mapDefault!15602 () List!29229)

(assert (=> b!2482411 (= condMapEmpty!15602 (= (arr!5342 (_values!3656 (v!31482 (underlying!6959 (v!31483 (underlying!6960 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29229)) mapDefault!15602)))))

(declare-fun b!2482412 () Bool)

(declare-fun e!1575862 () Bool)

(declare-fun e!1575866 () Bool)

(declare-fun lt!888922 () MutLongMap!3376)

(get-info :version)

(assert (=> b!2482412 (= e!1575862 (and e!1575866 ((_ is LongMap!3376) lt!888922)))))

(assert (=> b!2482412 (= lt!888922 (v!31483 (underlying!6960 thiss!42540)))))

(declare-fun b!2482413 () Bool)

(declare-fun res!1050873 () Bool)

(declare-fun e!1575868 () Bool)

(assert (=> b!2482413 (=> (not res!1050873) (not e!1575868))))

(declare-fun valid!2580 (MutableMap!3286) Bool)

(assert (=> b!2482413 (= res!1050873 (valid!2580 thiss!42540))))

(declare-fun mapNonEmpty!15602 () Bool)

(declare-fun tp!794774 () Bool)

(declare-fun tp!794775 () Bool)

(assert (=> mapNonEmpty!15602 (= mapRes!15602 (and tp!794774 tp!794775))))

(declare-fun mapValue!15602 () List!29229)

(declare-fun mapKey!15602 () (_ BitVec 32))

(declare-fun mapRest!15602 () (Array (_ BitVec 32) List!29229))

(assert (=> mapNonEmpty!15602 (= (arr!5342 (_values!3656 (v!31482 (underlying!6959 (v!31483 (underlying!6960 thiss!42540)))))) (store mapRest!15602 mapKey!15602 mapValue!15602))))

(declare-fun b!2482414 () Bool)

(declare-fun res!1050874 () Bool)

(assert (=> b!2482414 (=> (not res!1050874) (not e!1575868))))

(declare-fun key!2246 () K!5525)

(declare-fun contains!5125 (MutableMap!3286 K!5525) Bool)

(assert (=> b!2482414 (= res!1050874 (contains!5125 thiss!42540 key!2246))))

(declare-fun lt!888920 () Cell!13323)

(declare-fun b!2482415 () Bool)

(declare-datatypes ((tuple2!28882 0))(
  ( (tuple2!28883 (_1!16982 Bool) (_2!16982 MutLongMap!3376)) )
))
(declare-fun lt!888916 () tuple2!28882)

(declare-datatypes ((Unit!42646 0))(
  ( (Unit!42647) )
))
(declare-datatypes ((tuple2!28884 0))(
  ( (tuple2!28885 (_1!16983 Unit!42646) (_2!16983 MutableMap!3286)) )
))
(declare-fun Unit!42648 () Unit!42646)

(declare-fun Unit!42649 () Unit!42646)

(assert (=> b!2482415 (= e!1575868 (not ((_ is HashMap!3286) (_2!16983 (ite (_1!16982 lt!888916) (tuple2!28885 Unit!42648 (HashMap!3286 lt!888920 (hashF!5249 thiss!42540) (bvsub (_size!6800 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3448 thiss!42540))) (tuple2!28885 Unit!42649 (HashMap!3286 lt!888920 (hashF!5249 thiss!42540) (_size!6800 thiss!42540) (defaultValue!3448 thiss!42540))))))))))

(assert (=> b!2482415 (= lt!888920 (Cell!13324 (_2!16982 lt!888916)))))

(declare-fun lt!888921 () List!29229)

(declare-fun lt!888918 () (_ BitVec 64))

(declare-fun update!193 (MutLongMap!3376 (_ BitVec 64) List!29229) tuple2!28882)

(declare-fun removePairForKey!77 (List!29229 K!5525) List!29229)

(assert (=> b!2482415 (= lt!888916 (update!193 (v!31483 (underlying!6960 thiss!42540)) lt!888918 (removePairForKey!77 lt!888921 key!2246)))))

(declare-datatypes ((ListMap!1079 0))(
  ( (ListMap!1080 (toList!1597 List!29229)) )
))
(declare-fun lt!888917 () ListMap!1079)

(declare-fun map!6223 (MutableMap!3286) ListMap!1079)

(assert (=> b!2482415 (= lt!888917 (map!6223 thiss!42540))))

(declare-fun lt!888919 () Unit!42646)

(declare-fun lambda!94093 () Int)

(declare-datatypes ((tuple2!28886 0))(
  ( (tuple2!28887 (_1!16984 (_ BitVec 64)) (_2!16984 List!29229)) )
))
(declare-datatypes ((List!29230 0))(
  ( (Nil!29130) (Cons!29130 (h!34536 tuple2!28886) (t!210891 List!29230)) )
))
(declare-fun forallContained!866 (List!29230 Int tuple2!28886) Unit!42646)

(declare-datatypes ((ListLongMap!545 0))(
  ( (ListLongMap!546 (toList!1598 List!29230)) )
))
(declare-fun map!6224 (MutLongMap!3376) ListLongMap!545)

(assert (=> b!2482415 (= lt!888919 (forallContained!866 (toList!1598 (map!6224 (v!31483 (underlying!6960 thiss!42540)))) lambda!94093 (tuple2!28887 lt!888918 lt!888921)))))

(declare-fun apply!6930 (MutLongMap!3376 (_ BitVec 64)) List!29229)

(assert (=> b!2482415 (= lt!888921 (apply!6930 (v!31483 (underlying!6960 thiss!42540)) lt!888918))))

(declare-fun hash!700 (Hashable!3286 K!5525) (_ BitVec 64))

(assert (=> b!2482415 (= lt!888918 (hash!700 (hashF!5249 thiss!42540) key!2246))))

(declare-fun tp!794777 () Bool)

(declare-fun tp!794778 () Bool)

(declare-fun array_inv!3835 (array!11973) Bool)

(declare-fun array_inv!3836 (array!11971) Bool)

(assert (=> b!2482416 (= e!1575865 (and tp!794779 tp!794778 tp!794777 (array_inv!3835 (_keys!3673 (v!31482 (underlying!6959 (v!31483 (underlying!6960 thiss!42540)))))) (array_inv!3836 (_values!3656 (v!31482 (underlying!6959 (v!31483 (underlying!6960 thiss!42540)))))) e!1575869))))

(declare-fun e!1575864 () Bool)

(assert (=> b!2482410 (= e!1575864 (and e!1575862 tp!794776))))

(declare-fun res!1050872 () Bool)

(assert (=> start!242276 (=> (not res!1050872) (not e!1575868))))

(assert (=> start!242276 (= res!1050872 ((_ is HashMap!3286) thiss!42540))))

(assert (=> start!242276 e!1575868))

(assert (=> start!242276 e!1575864))

(declare-fun tp_is_empty!12285 () Bool)

(assert (=> start!242276 tp_is_empty!12285))

(declare-fun b!2482417 () Bool)

(assert (=> b!2482417 (= e!1575866 e!1575867)))

(declare-fun mapIsEmpty!15602 () Bool)

(assert (=> mapIsEmpty!15602 mapRes!15602))

(assert (= (and start!242276 res!1050872) b!2482413))

(assert (= (and b!2482413 res!1050873) b!2482414))

(assert (= (and b!2482414 res!1050874) b!2482415))

(assert (= (and b!2482411 condMapEmpty!15602) mapIsEmpty!15602))

(assert (= (and b!2482411 (not condMapEmpty!15602)) mapNonEmpty!15602))

(assert (= b!2482416 b!2482411))

(assert (= b!2482409 b!2482416))

(assert (= b!2482417 b!2482409))

(assert (= (and b!2482412 ((_ is LongMap!3376) (v!31483 (underlying!6960 thiss!42540)))) b!2482417))

(assert (= b!2482410 b!2482412))

(assert (= (and start!242276 ((_ is HashMap!3286) thiss!42540)) b!2482410))

(declare-fun m!2850453 () Bool)

(assert (=> b!2482415 m!2850453))

(declare-fun m!2850455 () Bool)

(assert (=> b!2482415 m!2850455))

(declare-fun m!2850457 () Bool)

(assert (=> b!2482415 m!2850457))

(declare-fun m!2850459 () Bool)

(assert (=> b!2482415 m!2850459))

(assert (=> b!2482415 m!2850459))

(declare-fun m!2850461 () Bool)

(assert (=> b!2482415 m!2850461))

(declare-fun m!2850463 () Bool)

(assert (=> b!2482415 m!2850463))

(declare-fun m!2850465 () Bool)

(assert (=> b!2482415 m!2850465))

(declare-fun m!2850467 () Bool)

(assert (=> mapNonEmpty!15602 m!2850467))

(declare-fun m!2850469 () Bool)

(assert (=> b!2482414 m!2850469))

(declare-fun m!2850471 () Bool)

(assert (=> b!2482416 m!2850471))

(declare-fun m!2850473 () Bool)

(assert (=> b!2482416 m!2850473))

(declare-fun m!2850475 () Bool)

(assert (=> b!2482413 m!2850475))

(check-sat (not b!2482414) (not b_next!73067) b_and!188613 tp_is_empty!12285 (not b!2482415) (not b!2482411) (not b!2482413) (not b_next!73065) (not mapNonEmpty!15602) b_and!188611 (not b!2482416))
(check-sat b_and!188613 b_and!188611 (not b_next!73065) (not b_next!73067))
