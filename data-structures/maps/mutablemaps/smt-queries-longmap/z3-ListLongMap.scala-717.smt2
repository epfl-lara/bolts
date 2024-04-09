; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16820 () Bool)

(assert start!16820)

(declare-fun b!169338 () Bool)

(declare-fun b_free!4127 () Bool)

(declare-fun b_next!4127 () Bool)

(assert (=> b!169338 (= b_free!4127 (not b_next!4127))))

(declare-fun tp!14985 () Bool)

(declare-fun b_and!10559 () Bool)

(assert (=> b!169338 (= tp!14985 b_and!10559)))

(declare-fun b!169346 () Bool)

(declare-fun b_free!4129 () Bool)

(declare-fun b_next!4129 () Bool)

(assert (=> b!169346 (= b_free!4129 (not b_next!4129))))

(declare-fun tp!14986 () Bool)

(declare-fun b_and!10561 () Bool)

(assert (=> b!169346 (= tp!14986 b_and!10561)))

(declare-fun b!169336 () Bool)

(declare-fun e!111577 () Bool)

(assert (=> b!169336 (= e!111577 false)))

(declare-fun lt!84924 () Bool)

(declare-datatypes ((V!4867 0))(
  ( (V!4868 (val!2002 Int)) )
))
(declare-datatypes ((ValueCell!1614 0))(
  ( (ValueCellFull!1614 (v!3863 V!4867)) (EmptyCell!1614) )
))
(declare-datatypes ((array!6926 0))(
  ( (array!6927 (arr!3298 (Array (_ BitVec 32) (_ BitVec 64))) (size!3586 (_ BitVec 32))) )
))
(declare-datatypes ((array!6928 0))(
  ( (array!6929 (arr!3299 (Array (_ BitVec 32) ValueCell!1614)) (size!3587 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2136 0))(
  ( (LongMapFixedSize!2137 (defaultEntry!3510 Int) (mask!8293 (_ BitVec 32)) (extraKeys!3251 (_ BitVec 32)) (zeroValue!3353 V!4867) (minValue!3353 V!4867) (_size!1117 (_ BitVec 32)) (_keys!5335 array!6926) (_values!3493 array!6928) (_vacant!1117 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!3210 0))(
  ( (tuple2!3211 (_1!1615 Bool) (_2!1615 LongMapFixedSize!2136)) )
))
(declare-fun lt!84926 () tuple2!3210)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3212 0))(
  ( (tuple2!3213 (_1!1616 (_ BitVec 64)) (_2!1616 V!4867)) )
))
(declare-datatypes ((List!2202 0))(
  ( (Nil!2199) (Cons!2198 (h!2815 tuple2!3212) (t!7012 List!2202)) )
))
(declare-datatypes ((ListLongMap!2167 0))(
  ( (ListLongMap!2168 (toList!1099 List!2202)) )
))
(declare-fun contains!1135 (ListLongMap!2167 (_ BitVec 64)) Bool)

(declare-fun map!1820 (LongMapFixedSize!2136) ListLongMap!2167)

(assert (=> b!169336 (= lt!84924 (contains!1135 (map!1820 (_2!1615 lt!84926)) key!828))))

(declare-fun b!169337 () Bool)

(declare-fun e!111574 () Bool)

(declare-fun e!111576 () Bool)

(declare-fun mapRes!6614 () Bool)

(assert (=> b!169337 (= e!111574 (and e!111576 mapRes!6614))))

(declare-fun condMapEmpty!6615 () Bool)

(declare-fun thiss!1248 () LongMapFixedSize!2136)

(declare-fun mapDefault!6614 () ValueCell!1614)

(assert (=> b!169337 (= condMapEmpty!6615 (= (arr!3299 (_values!3493 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1614)) mapDefault!6614)))))

(declare-fun mapNonEmpty!6614 () Bool)

(declare-fun mapRes!6615 () Bool)

(declare-fun tp!14987 () Bool)

(declare-fun e!111583 () Bool)

(assert (=> mapNonEmpty!6614 (= mapRes!6615 (and tp!14987 e!111583))))

(declare-fun mapValue!6615 () ValueCell!1614)

(declare-fun mapKey!6615 () (_ BitVec 32))

(declare-fun err!67 () tuple2!3210)

(declare-fun mapRest!6614 () (Array (_ BitVec 32) ValueCell!1614))

(assert (=> mapNonEmpty!6614 (= (arr!3299 (_values!3493 (_2!1615 err!67))) (store mapRest!6614 mapKey!6615 mapValue!6615))))

(declare-fun mapIsEmpty!6614 () Bool)

(assert (=> mapIsEmpty!6614 mapRes!6614))

(declare-fun tp_is_empty!3915 () Bool)

(declare-fun e!111579 () Bool)

(declare-fun e!111584 () Bool)

(declare-fun array_inv!2109 (array!6926) Bool)

(declare-fun array_inv!2110 (array!6928) Bool)

(assert (=> b!169338 (= e!111579 (and tp!14985 tp_is_empty!3915 (array_inv!2109 (_keys!5335 (_2!1615 err!67))) (array_inv!2110 (_values!3493 (_2!1615 err!67))) e!111584))))

(declare-fun b!169339 () Bool)

(assert (=> b!169339 (= e!111583 tp_is_empty!3915)))

(declare-fun b!169340 () Bool)

(declare-fun e!111580 () Bool)

(assert (=> b!169340 (= e!111580 e!111577)))

(declare-fun res!80570 () Bool)

(assert (=> b!169340 (=> (not res!80570) (not e!111577))))

(declare-fun valid!914 (LongMapFixedSize!2136) Bool)

(assert (=> b!169340 (= res!80570 (valid!914 (_2!1615 lt!84926)))))

(assert (=> b!169340 (= lt!84926 err!67)))

(assert (=> b!169340 true))

(assert (=> b!169340 e!111579))

(declare-fun b!169341 () Bool)

(declare-fun res!80572 () Bool)

(assert (=> b!169341 (=> (not res!80572) (not e!111577))))

(assert (=> b!169341 (= res!80572 (_1!1615 lt!84926))))

(declare-fun b!169342 () Bool)

(declare-fun e!111586 () Bool)

(assert (=> b!169342 (= e!111586 tp_is_empty!3915)))

(declare-fun b!169343 () Bool)

(assert (=> b!169343 (= e!111584 (and e!111586 mapRes!6615))))

(declare-fun condMapEmpty!6614 () Bool)

(declare-fun mapDefault!6615 () ValueCell!1614)

(assert (=> b!169343 (= condMapEmpty!6614 (= (arr!3299 (_values!3493 (_2!1615 err!67))) ((as const (Array (_ BitVec 32) ValueCell!1614)) mapDefault!6615)))))

(declare-fun mapIsEmpty!6615 () Bool)

(assert (=> mapIsEmpty!6615 mapRes!6615))

(declare-fun res!80574 () Bool)

(declare-fun e!111575 () Bool)

(assert (=> start!16820 (=> (not res!80574) (not e!111575))))

(assert (=> start!16820 (= res!80574 (valid!914 thiss!1248))))

(assert (=> start!16820 e!111575))

(declare-fun e!111582 () Bool)

(assert (=> start!16820 e!111582))

(assert (=> start!16820 true))

(declare-fun b!169344 () Bool)

(assert (=> b!169344 (= e!111576 tp_is_empty!3915)))

(declare-fun b!169345 () Bool)

(declare-fun res!80573 () Bool)

(assert (=> b!169345 (=> (not res!80573) (not e!111575))))

(assert (=> b!169345 (= res!80573 (not (= key!828 (bvneg key!828))))))

(assert (=> b!169346 (= e!111582 (and tp!14986 tp_is_empty!3915 (array_inv!2109 (_keys!5335 thiss!1248)) (array_inv!2110 (_values!3493 thiss!1248)) e!111574))))

(declare-fun b!169347 () Bool)

(declare-fun e!111585 () Bool)

(assert (=> b!169347 (= e!111585 tp_is_empty!3915)))

(declare-fun b!169348 () Bool)

(assert (=> b!169348 (= e!111575 e!111580)))

(declare-fun res!80571 () Bool)

(assert (=> b!169348 (=> (not res!80571) (not e!111580))))

(declare-datatypes ((SeekEntryResult!533 0))(
  ( (MissingZero!533 (index!4300 (_ BitVec 32))) (Found!533 (index!4301 (_ BitVec 32))) (Intermediate!533 (undefined!1345 Bool) (index!4302 (_ BitVec 32)) (x!18721 (_ BitVec 32))) (Undefined!533) (MissingVacant!533 (index!4303 (_ BitVec 32))) )
))
(declare-fun lt!84925 () SeekEntryResult!533)

(get-info :version)

(assert (=> b!169348 (= res!80571 (and (not ((_ is Undefined!533) lt!84925)) (not ((_ is MissingVacant!533) lt!84925)) (not ((_ is MissingZero!533) lt!84925)) (not ((_ is Found!533) lt!84925))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6926 (_ BitVec 32)) SeekEntryResult!533)

(assert (=> b!169348 (= lt!84925 (seekEntryOrOpen!0 key!828 (_keys!5335 thiss!1248) (mask!8293 thiss!1248)))))

(declare-fun mapNonEmpty!6615 () Bool)

(declare-fun tp!14988 () Bool)

(assert (=> mapNonEmpty!6615 (= mapRes!6614 (and tp!14988 e!111585))))

(declare-fun mapValue!6614 () ValueCell!1614)

(declare-fun mapKey!6614 () (_ BitVec 32))

(declare-fun mapRest!6615 () (Array (_ BitVec 32) ValueCell!1614))

(assert (=> mapNonEmpty!6615 (= (arr!3299 (_values!3493 thiss!1248)) (store mapRest!6615 mapKey!6614 mapValue!6614))))

(assert (= (and start!16820 res!80574) b!169345))

(assert (= (and b!169345 res!80573) b!169348))

(assert (= (and b!169348 res!80571) b!169340))

(assert (= (and b!169343 condMapEmpty!6614) mapIsEmpty!6615))

(assert (= (and b!169343 (not condMapEmpty!6614)) mapNonEmpty!6614))

(assert (= (and mapNonEmpty!6614 ((_ is ValueCellFull!1614) mapValue!6615)) b!169339))

(assert (= (and b!169343 ((_ is ValueCellFull!1614) mapDefault!6615)) b!169342))

(assert (= b!169338 b!169343))

(assert (= b!169340 b!169338))

(assert (= (and b!169340 res!80570) b!169341))

(assert (= (and b!169341 res!80572) b!169336))

(assert (= (and b!169337 condMapEmpty!6615) mapIsEmpty!6614))

(assert (= (and b!169337 (not condMapEmpty!6615)) mapNonEmpty!6615))

(assert (= (and mapNonEmpty!6615 ((_ is ValueCellFull!1614) mapValue!6614)) b!169347))

(assert (= (and b!169337 ((_ is ValueCellFull!1614) mapDefault!6614)) b!169344))

(assert (= b!169346 b!169337))

(assert (= start!16820 b!169346))

(declare-fun m!198399 () Bool)

(assert (=> mapNonEmpty!6615 m!198399))

(declare-fun m!198401 () Bool)

(assert (=> b!169338 m!198401))

(declare-fun m!198403 () Bool)

(assert (=> b!169338 m!198403))

(declare-fun m!198405 () Bool)

(assert (=> start!16820 m!198405))

(declare-fun m!198407 () Bool)

(assert (=> b!169336 m!198407))

(assert (=> b!169336 m!198407))

(declare-fun m!198409 () Bool)

(assert (=> b!169336 m!198409))

(declare-fun m!198411 () Bool)

(assert (=> b!169348 m!198411))

(declare-fun m!198413 () Bool)

(assert (=> mapNonEmpty!6614 m!198413))

(declare-fun m!198415 () Bool)

(assert (=> b!169340 m!198415))

(declare-fun m!198417 () Bool)

(assert (=> b!169346 m!198417))

(declare-fun m!198419 () Bool)

(assert (=> b!169346 m!198419))

(check-sat b_and!10559 (not b!169348) tp_is_empty!3915 (not b_next!4129) (not b!169346) (not b!169338) (not b_next!4127) b_and!10561 (not start!16820) (not mapNonEmpty!6615) (not b!169336) (not mapNonEmpty!6614) (not b!169340))
(check-sat b_and!10559 b_and!10561 (not b_next!4129) (not b_next!4127))
