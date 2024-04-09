; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16580 () Bool)

(assert start!16580)

(declare-fun b!165001 () Bool)

(declare-fun b_free!3873 () Bool)

(declare-fun b_next!3873 () Bool)

(assert (=> b!165001 (= b_free!3873 (not b_next!3873))))

(declare-fun tp!14220 () Bool)

(declare-fun b_and!10305 () Bool)

(assert (=> b!165001 (= tp!14220 b_and!10305)))

(declare-fun b!164997 () Bool)

(declare-fun res!78237 () Bool)

(declare-fun e!108250 () Bool)

(assert (=> b!164997 (=> (not res!78237) (not e!108250))))

(declare-datatypes ((V!4547 0))(
  ( (V!4548 (val!1882 Int)) )
))
(declare-datatypes ((ValueCell!1494 0))(
  ( (ValueCellFull!1494 (v!3743 V!4547)) (EmptyCell!1494) )
))
(declare-datatypes ((array!6446 0))(
  ( (array!6447 (arr!3058 (Array (_ BitVec 32) (_ BitVec 64))) (size!3346 (_ BitVec 32))) )
))
(declare-datatypes ((array!6448 0))(
  ( (array!6449 (arr!3059 (Array (_ BitVec 32) ValueCell!1494)) (size!3347 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1896 0))(
  ( (LongMapFixedSize!1897 (defaultEntry!3390 Int) (mask!8093 (_ BitVec 32)) (extraKeys!3131 (_ BitVec 32)) (zeroValue!3233 V!4547) (minValue!3233 V!4547) (_size!997 (_ BitVec 32)) (_keys!5215 array!6446) (_values!3373 array!6448) (_vacant!997 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1896)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3048 0))(
  ( (tuple2!3049 (_1!1534 (_ BitVec 64)) (_2!1534 V!4547)) )
))
(declare-datatypes ((List!2054 0))(
  ( (Nil!2051) (Cons!2050 (h!2667 tuple2!3048) (t!6864 List!2054)) )
))
(declare-datatypes ((ListLongMap!2017 0))(
  ( (ListLongMap!2018 (toList!1024 List!2054)) )
))
(declare-fun contains!1060 (ListLongMap!2017 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!677 (array!6446 array!6448 (_ BitVec 32) (_ BitVec 32) V!4547 V!4547 (_ BitVec 32) Int) ListLongMap!2017)

(assert (=> b!164997 (= res!78237 (contains!1060 (getCurrentListMap!677 (_keys!5215 thiss!1248) (_values!3373 thiss!1248) (mask!8093 thiss!1248) (extraKeys!3131 thiss!1248) (zeroValue!3233 thiss!1248) (minValue!3233 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3390 thiss!1248)) key!828))))

(declare-fun b!164998 () Bool)

(declare-fun e!108251 () Bool)

(assert (=> b!164998 (= e!108251 e!108250)))

(declare-fun res!78231 () Bool)

(assert (=> b!164998 (=> (not res!78231) (not e!108250))))

(declare-datatypes ((SeekEntryResult!437 0))(
  ( (MissingZero!437 (index!3916 (_ BitVec 32))) (Found!437 (index!3917 (_ BitVec 32))) (Intermediate!437 (undefined!1249 Bool) (index!3918 (_ BitVec 32)) (x!18305 (_ BitVec 32))) (Undefined!437) (MissingVacant!437 (index!3919 (_ BitVec 32))) )
))
(declare-fun lt!83020 () SeekEntryResult!437)

(get-info :version)

(assert (=> b!164998 (= res!78231 (and (not ((_ is Undefined!437) lt!83020)) (not ((_ is MissingVacant!437) lt!83020)) (not ((_ is MissingZero!437) lt!83020)) ((_ is Found!437) lt!83020)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6446 (_ BitVec 32)) SeekEntryResult!437)

(assert (=> b!164998 (= lt!83020 (seekEntryOrOpen!0 key!828 (_keys!5215 thiss!1248) (mask!8093 thiss!1248)))))

(declare-fun b!164999 () Bool)

(declare-fun e!108253 () Bool)

(declare-fun tp_is_empty!3675 () Bool)

(assert (=> b!164999 (= e!108253 tp_is_empty!3675)))

(declare-fun b!165000 () Bool)

(assert (=> b!165000 (= e!108250 false)))

(declare-fun lt!83021 () Bool)

(declare-datatypes ((List!2055 0))(
  ( (Nil!2052) (Cons!2051 (h!2668 (_ BitVec 64)) (t!6865 List!2055)) )
))
(declare-fun arrayNoDuplicates!0 (array!6446 (_ BitVec 32) List!2055) Bool)

(assert (=> b!165000 (= lt!83021 (arrayNoDuplicates!0 (_keys!5215 thiss!1248) #b00000000000000000000000000000000 Nil!2052))))

(declare-fun e!108252 () Bool)

(declare-fun e!108254 () Bool)

(declare-fun array_inv!1953 (array!6446) Bool)

(declare-fun array_inv!1954 (array!6448) Bool)

(assert (=> b!165001 (= e!108254 (and tp!14220 tp_is_empty!3675 (array_inv!1953 (_keys!5215 thiss!1248)) (array_inv!1954 (_values!3373 thiss!1248)) e!108252))))

(declare-fun b!165002 () Bool)

(declare-fun res!78234 () Bool)

(assert (=> b!165002 (=> (not res!78234) (not e!108251))))

(assert (=> b!165002 (= res!78234 (not (= key!828 (bvneg key!828))))))

(declare-fun res!78235 () Bool)

(assert (=> start!16580 (=> (not res!78235) (not e!108251))))

(declare-fun valid!833 (LongMapFixedSize!1896) Bool)

(assert (=> start!16580 (= res!78235 (valid!833 thiss!1248))))

(assert (=> start!16580 e!108251))

(assert (=> start!16580 e!108254))

(assert (=> start!16580 true))

(declare-fun b!165003 () Bool)

(declare-fun res!78236 () Bool)

(assert (=> b!165003 (=> (not res!78236) (not e!108250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6446 (_ BitVec 32)) Bool)

(assert (=> b!165003 (= res!78236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5215 thiss!1248) (mask!8093 thiss!1248)))))

(declare-fun b!165004 () Bool)

(declare-fun e!108256 () Bool)

(assert (=> b!165004 (= e!108256 tp_is_empty!3675)))

(declare-fun b!165005 () Bool)

(declare-fun res!78232 () Bool)

(assert (=> b!165005 (=> (not res!78232) (not e!108250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165005 (= res!78232 (validMask!0 (mask!8093 thiss!1248)))))

(declare-fun mapNonEmpty!6231 () Bool)

(declare-fun mapRes!6231 () Bool)

(declare-fun tp!14219 () Bool)

(assert (=> mapNonEmpty!6231 (= mapRes!6231 (and tp!14219 e!108253))))

(declare-fun mapRest!6231 () (Array (_ BitVec 32) ValueCell!1494))

(declare-fun mapKey!6231 () (_ BitVec 32))

(declare-fun mapValue!6231 () ValueCell!1494)

(assert (=> mapNonEmpty!6231 (= (arr!3059 (_values!3373 thiss!1248)) (store mapRest!6231 mapKey!6231 mapValue!6231))))

(declare-fun b!165006 () Bool)

(assert (=> b!165006 (= e!108252 (and e!108256 mapRes!6231))))

(declare-fun condMapEmpty!6231 () Bool)

(declare-fun mapDefault!6231 () ValueCell!1494)

(assert (=> b!165006 (= condMapEmpty!6231 (= (arr!3059 (_values!3373 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1494)) mapDefault!6231)))))

(declare-fun b!165007 () Bool)

(declare-fun res!78233 () Bool)

(assert (=> b!165007 (=> (not res!78233) (not e!108250))))

(assert (=> b!165007 (= res!78233 (and (= (size!3347 (_values!3373 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8093 thiss!1248))) (= (size!3346 (_keys!5215 thiss!1248)) (size!3347 (_values!3373 thiss!1248))) (bvsge (mask!8093 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3131 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3131 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!6231 () Bool)

(assert (=> mapIsEmpty!6231 mapRes!6231))

(assert (= (and start!16580 res!78235) b!165002))

(assert (= (and b!165002 res!78234) b!164998))

(assert (= (and b!164998 res!78231) b!164997))

(assert (= (and b!164997 res!78237) b!165005))

(assert (= (and b!165005 res!78232) b!165007))

(assert (= (and b!165007 res!78233) b!165003))

(assert (= (and b!165003 res!78236) b!165000))

(assert (= (and b!165006 condMapEmpty!6231) mapIsEmpty!6231))

(assert (= (and b!165006 (not condMapEmpty!6231)) mapNonEmpty!6231))

(assert (= (and mapNonEmpty!6231 ((_ is ValueCellFull!1494) mapValue!6231)) b!164999))

(assert (= (and b!165006 ((_ is ValueCellFull!1494) mapDefault!6231)) b!165004))

(assert (= b!165001 b!165006))

(assert (= start!16580 b!165001))

(declare-fun m!194989 () Bool)

(assert (=> b!165000 m!194989))

(declare-fun m!194991 () Bool)

(assert (=> b!164997 m!194991))

(assert (=> b!164997 m!194991))

(declare-fun m!194993 () Bool)

(assert (=> b!164997 m!194993))

(declare-fun m!194995 () Bool)

(assert (=> b!165003 m!194995))

(declare-fun m!194997 () Bool)

(assert (=> b!164998 m!194997))

(declare-fun m!194999 () Bool)

(assert (=> mapNonEmpty!6231 m!194999))

(declare-fun m!195001 () Bool)

(assert (=> b!165005 m!195001))

(declare-fun m!195003 () Bool)

(assert (=> b!165001 m!195003))

(declare-fun m!195005 () Bool)

(assert (=> b!165001 m!195005))

(declare-fun m!195007 () Bool)

(assert (=> start!16580 m!195007))

(check-sat b_and!10305 (not mapNonEmpty!6231) (not b!165000) (not b!164998) (not start!16580) (not b!165005) (not b!165001) (not b!165003) (not b_next!3873) (not b!164997) tp_is_empty!3675)
(check-sat b_and!10305 (not b_next!3873))
