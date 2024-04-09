; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16652 () Bool)

(assert start!16652)

(declare-fun b!166200 () Bool)

(declare-fun b_free!3945 () Bool)

(declare-fun b_next!3945 () Bool)

(assert (=> b!166200 (= b_free!3945 (not b_next!3945))))

(declare-fun tp!14436 () Bool)

(declare-fun b_and!10377 () Bool)

(assert (=> b!166200 (= tp!14436 b_and!10377)))

(declare-fun b!166195 () Bool)

(declare-datatypes ((Unit!5049 0))(
  ( (Unit!5050) )
))
(declare-fun e!109025 () Unit!5049)

(declare-fun Unit!5051 () Unit!5049)

(assert (=> b!166195 (= e!109025 Unit!5051)))

(declare-fun lt!83252 () Unit!5049)

(declare-datatypes ((V!4643 0))(
  ( (V!4644 (val!1918 Int)) )
))
(declare-datatypes ((ValueCell!1530 0))(
  ( (ValueCellFull!1530 (v!3779 V!4643)) (EmptyCell!1530) )
))
(declare-datatypes ((array!6590 0))(
  ( (array!6591 (arr!3130 (Array (_ BitVec 32) (_ BitVec 64))) (size!3418 (_ BitVec 32))) )
))
(declare-datatypes ((array!6592 0))(
  ( (array!6593 (arr!3131 (Array (_ BitVec 32) ValueCell!1530)) (size!3419 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1968 0))(
  ( (LongMapFixedSize!1969 (defaultEntry!3426 Int) (mask!8153 (_ BitVec 32)) (extraKeys!3167 (_ BitVec 32)) (zeroValue!3269 V!4643) (minValue!3269 V!4643) (_size!1033 (_ BitVec 32)) (_keys!5251 array!6590) (_values!3409 array!6592) (_vacant!1033 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1968)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!83 (array!6590 array!6592 (_ BitVec 32) (_ BitVec 32) V!4643 V!4643 (_ BitVec 64) Int) Unit!5049)

(assert (=> b!166195 (= lt!83252 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!83 (_keys!5251 thiss!1248) (_values!3409 thiss!1248) (mask!8153 thiss!1248) (extraKeys!3167 thiss!1248) (zeroValue!3269 thiss!1248) (minValue!3269 thiss!1248) key!828 (defaultEntry!3426 thiss!1248)))))

(assert (=> b!166195 false))

(declare-fun b!166196 () Bool)

(declare-fun e!109030 () Bool)

(declare-fun e!109024 () Bool)

(declare-fun mapRes!6339 () Bool)

(assert (=> b!166196 (= e!109030 (and e!109024 mapRes!6339))))

(declare-fun condMapEmpty!6339 () Bool)

(declare-fun mapDefault!6339 () ValueCell!1530)

(assert (=> b!166196 (= condMapEmpty!6339 (= (arr!3131 (_values!3409 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1530)) mapDefault!6339)))))

(declare-fun b!166197 () Bool)

(declare-fun e!109021 () Bool)

(assert (=> b!166197 (= e!109021 false)))

(declare-fun lt!83255 () Bool)

(declare-datatypes ((List!2104 0))(
  ( (Nil!2101) (Cons!2100 (h!2717 (_ BitVec 64)) (t!6914 List!2104)) )
))
(declare-fun arrayNoDuplicates!0 (array!6590 (_ BitVec 32) List!2104) Bool)

(assert (=> b!166197 (= lt!83255 (arrayNoDuplicates!0 (_keys!5251 thiss!1248) #b00000000000000000000000000000000 Nil!2101))))

(declare-fun b!166198 () Bool)

(declare-fun res!78989 () Bool)

(assert (=> b!166198 (=> (not res!78989) (not e!109021))))

(assert (=> b!166198 (= res!78989 (and (= (size!3419 (_values!3409 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8153 thiss!1248))) (= (size!3418 (_keys!5251 thiss!1248)) (size!3419 (_values!3409 thiss!1248))) (bvsge (mask!8153 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3167 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3167 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!78992 () Bool)

(declare-fun e!109023 () Bool)

(assert (=> start!16652 (=> (not res!78992) (not e!109023))))

(declare-fun valid!857 (LongMapFixedSize!1968) Bool)

(assert (=> start!16652 (= res!78992 (valid!857 thiss!1248))))

(assert (=> start!16652 e!109023))

(declare-fun e!109026 () Bool)

(assert (=> start!16652 e!109026))

(assert (=> start!16652 true))

(declare-fun mapIsEmpty!6339 () Bool)

(assert (=> mapIsEmpty!6339 mapRes!6339))

(declare-fun b!166199 () Bool)

(declare-fun e!109027 () Bool)

(declare-datatypes ((SeekEntryResult!462 0))(
  ( (MissingZero!462 (index!4016 (_ BitVec 32))) (Found!462 (index!4017 (_ BitVec 32))) (Intermediate!462 (undefined!1274 Bool) (index!4018 (_ BitVec 32)) (x!18426 (_ BitVec 32))) (Undefined!462) (MissingVacant!462 (index!4019 (_ BitVec 32))) )
))
(declare-fun lt!83251 () SeekEntryResult!462)

(assert (=> b!166199 (= e!109027 (= (select (arr!3130 (_keys!5251 thiss!1248)) (index!4017 lt!83251)) key!828))))

(declare-fun tp_is_empty!3747 () Bool)

(declare-fun array_inv!1997 (array!6590) Bool)

(declare-fun array_inv!1998 (array!6592) Bool)

(assert (=> b!166200 (= e!109026 (and tp!14436 tp_is_empty!3747 (array_inv!1997 (_keys!5251 thiss!1248)) (array_inv!1998 (_values!3409 thiss!1248)) e!109030))))

(declare-fun mapNonEmpty!6339 () Bool)

(declare-fun tp!14435 () Bool)

(declare-fun e!109022 () Bool)

(assert (=> mapNonEmpty!6339 (= mapRes!6339 (and tp!14435 e!109022))))

(declare-fun mapValue!6339 () ValueCell!1530)

(declare-fun mapRest!6339 () (Array (_ BitVec 32) ValueCell!1530))

(declare-fun mapKey!6339 () (_ BitVec 32))

(assert (=> mapNonEmpty!6339 (= (arr!3131 (_values!3409 thiss!1248)) (store mapRest!6339 mapKey!6339 mapValue!6339))))

(declare-fun b!166201 () Bool)

(declare-fun lt!83253 () Unit!5049)

(assert (=> b!166201 (= e!109025 lt!83253)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!85 (array!6590 array!6592 (_ BitVec 32) (_ BitVec 32) V!4643 V!4643 (_ BitVec 64) Int) Unit!5049)

(assert (=> b!166201 (= lt!83253 (lemmaInListMapThenSeekEntryOrOpenFindsIt!85 (_keys!5251 thiss!1248) (_values!3409 thiss!1248) (mask!8153 thiss!1248) (extraKeys!3167 thiss!1248) (zeroValue!3269 thiss!1248) (minValue!3269 thiss!1248) key!828 (defaultEntry!3426 thiss!1248)))))

(declare-fun res!78991 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166201 (= res!78991 (inRange!0 (index!4017 lt!83251) (mask!8153 thiss!1248)))))

(assert (=> b!166201 (=> (not res!78991) (not e!109027))))

(assert (=> b!166201 e!109027))

(declare-fun b!166202 () Bool)

(declare-fun e!109029 () Bool)

(assert (=> b!166202 (= e!109029 e!109021)))

(declare-fun res!78988 () Bool)

(assert (=> b!166202 (=> (not res!78988) (not e!109021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166202 (= res!78988 (validMask!0 (mask!8153 thiss!1248)))))

(declare-fun lt!83254 () Unit!5049)

(assert (=> b!166202 (= lt!83254 e!109025)))

(declare-fun c!30180 () Bool)

(declare-datatypes ((tuple2!3094 0))(
  ( (tuple2!3095 (_1!1557 (_ BitVec 64)) (_2!1557 V!4643)) )
))
(declare-datatypes ((List!2105 0))(
  ( (Nil!2102) (Cons!2101 (h!2718 tuple2!3094) (t!6915 List!2105)) )
))
(declare-datatypes ((ListLongMap!2063 0))(
  ( (ListLongMap!2064 (toList!1047 List!2105)) )
))
(declare-fun contains!1083 (ListLongMap!2063 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!700 (array!6590 array!6592 (_ BitVec 32) (_ BitVec 32) V!4643 V!4643 (_ BitVec 32) Int) ListLongMap!2063)

(assert (=> b!166202 (= c!30180 (contains!1083 (getCurrentListMap!700 (_keys!5251 thiss!1248) (_values!3409 thiss!1248) (mask!8153 thiss!1248) (extraKeys!3167 thiss!1248) (zeroValue!3269 thiss!1248) (minValue!3269 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3426 thiss!1248)) key!828))))

(declare-fun b!166203 () Bool)

(declare-fun res!78987 () Bool)

(assert (=> b!166203 (=> (not res!78987) (not e!109023))))

(assert (=> b!166203 (= res!78987 (not (= key!828 (bvneg key!828))))))

(declare-fun b!166204 () Bool)

(assert (=> b!166204 (= e!109023 e!109029)))

(declare-fun res!78990 () Bool)

(assert (=> b!166204 (=> (not res!78990) (not e!109029))))

(get-info :version)

(assert (=> b!166204 (= res!78990 (and (not ((_ is Undefined!462) lt!83251)) (not ((_ is MissingVacant!462) lt!83251)) (not ((_ is MissingZero!462) lt!83251)) ((_ is Found!462) lt!83251)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6590 (_ BitVec 32)) SeekEntryResult!462)

(assert (=> b!166204 (= lt!83251 (seekEntryOrOpen!0 key!828 (_keys!5251 thiss!1248) (mask!8153 thiss!1248)))))

(declare-fun b!166205 () Bool)

(declare-fun res!78993 () Bool)

(assert (=> b!166205 (=> (not res!78993) (not e!109021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6590 (_ BitVec 32)) Bool)

(assert (=> b!166205 (= res!78993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5251 thiss!1248) (mask!8153 thiss!1248)))))

(declare-fun b!166206 () Bool)

(assert (=> b!166206 (= e!109022 tp_is_empty!3747)))

(declare-fun b!166207 () Bool)

(assert (=> b!166207 (= e!109024 tp_is_empty!3747)))

(assert (= (and start!16652 res!78992) b!166203))

(assert (= (and b!166203 res!78987) b!166204))

(assert (= (and b!166204 res!78990) b!166202))

(assert (= (and b!166202 c!30180) b!166201))

(assert (= (and b!166202 (not c!30180)) b!166195))

(assert (= (and b!166201 res!78991) b!166199))

(assert (= (and b!166202 res!78988) b!166198))

(assert (= (and b!166198 res!78989) b!166205))

(assert (= (and b!166205 res!78993) b!166197))

(assert (= (and b!166196 condMapEmpty!6339) mapIsEmpty!6339))

(assert (= (and b!166196 (not condMapEmpty!6339)) mapNonEmpty!6339))

(assert (= (and mapNonEmpty!6339 ((_ is ValueCellFull!1530) mapValue!6339)) b!166206))

(assert (= (and b!166196 ((_ is ValueCellFull!1530) mapDefault!6339)) b!166207))

(assert (= b!166200 b!166196))

(assert (= start!16652 b!166200))

(declare-fun m!195717 () Bool)

(assert (=> b!166205 m!195717))

(declare-fun m!195719 () Bool)

(assert (=> b!166199 m!195719))

(declare-fun m!195721 () Bool)

(assert (=> mapNonEmpty!6339 m!195721))

(declare-fun m!195723 () Bool)

(assert (=> b!166197 m!195723))

(declare-fun m!195725 () Bool)

(assert (=> b!166204 m!195725))

(declare-fun m!195727 () Bool)

(assert (=> b!166201 m!195727))

(declare-fun m!195729 () Bool)

(assert (=> b!166201 m!195729))

(declare-fun m!195731 () Bool)

(assert (=> b!166200 m!195731))

(declare-fun m!195733 () Bool)

(assert (=> b!166200 m!195733))

(declare-fun m!195735 () Bool)

(assert (=> b!166195 m!195735))

(declare-fun m!195737 () Bool)

(assert (=> b!166202 m!195737))

(declare-fun m!195739 () Bool)

(assert (=> b!166202 m!195739))

(assert (=> b!166202 m!195739))

(declare-fun m!195741 () Bool)

(assert (=> b!166202 m!195741))

(declare-fun m!195743 () Bool)

(assert (=> start!16652 m!195743))

(check-sat (not start!16652) (not b_next!3945) tp_is_empty!3747 (not b!166200) (not b!166201) (not b!166204) (not b!166205) b_and!10377 (not mapNonEmpty!6339) (not b!166195) (not b!166202) (not b!166197))
(check-sat b_and!10377 (not b_next!3945))
