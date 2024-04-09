; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75774 () Bool)

(assert start!75774)

(declare-fun b!890556 () Bool)

(declare-fun b_free!15717 () Bool)

(declare-fun b_next!15717 () Bool)

(assert (=> b!890556 (= b_free!15717 (not b_next!15717))))

(declare-fun tp!55121 () Bool)

(declare-fun b_and!25975 () Bool)

(assert (=> b!890556 (= tp!55121 b_and!25975)))

(declare-fun b!890546 () Bool)

(declare-fun res!603499 () Bool)

(declare-fun e!496791 () Bool)

(assert (=> b!890546 (=> res!603499 e!496791)))

(declare-datatypes ((array!52056 0))(
  ( (array!52057 (arr!25030 (Array (_ BitVec 32) (_ BitVec 64))) (size!25475 (_ BitVec 32))) )
))
(declare-datatypes ((V!29025 0))(
  ( (V!29026 (val!9073 Int)) )
))
(declare-datatypes ((ValueCell!8541 0))(
  ( (ValueCellFull!8541 (v!11545 V!29025)) (EmptyCell!8541) )
))
(declare-datatypes ((array!52058 0))(
  ( (array!52059 (arr!25031 (Array (_ BitVec 32) ValueCell!8541)) (size!25476 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4098 0))(
  ( (LongMapFixedSize!4099 (defaultEntry!5246 Int) (mask!25718 (_ BitVec 32)) (extraKeys!4940 (_ BitVec 32)) (zeroValue!5044 V!29025) (minValue!5044 V!29025) (_size!2104 (_ BitVec 32)) (_keys!9925 array!52056) (_values!5231 array!52058) (_vacant!2104 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4098)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52056 (_ BitVec 32)) Bool)

(assert (=> b!890546 (= res!603499 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9925 thiss!1181) (mask!25718 thiss!1181))))))

(declare-fun b!890547 () Bool)

(declare-fun e!496788 () Bool)

(declare-fun tp_is_empty!18045 () Bool)

(assert (=> b!890547 (= e!496788 tp_is_empty!18045)))

(declare-fun mapNonEmpty!28622 () Bool)

(declare-fun mapRes!28622 () Bool)

(declare-fun tp!55120 () Bool)

(assert (=> mapNonEmpty!28622 (= mapRes!28622 (and tp!55120 e!496788))))

(declare-fun mapKey!28622 () (_ BitVec 32))

(declare-fun mapRest!28622 () (Array (_ BitVec 32) ValueCell!8541))

(declare-fun mapValue!28622 () ValueCell!8541)

(assert (=> mapNonEmpty!28622 (= (arr!25031 (_values!5231 thiss!1181)) (store mapRest!28622 mapKey!28622 mapValue!28622))))

(declare-fun b!890548 () Bool)

(declare-fun res!603500 () Bool)

(declare-fun e!496790 () Bool)

(assert (=> b!890548 (=> (not res!603500) (not e!496790))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!890548 (= res!603500 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890549 () Bool)

(declare-fun e!496787 () Bool)

(assert (=> b!890549 (= e!496790 (not e!496787))))

(declare-fun res!603498 () Bool)

(assert (=> b!890549 (=> res!603498 e!496787)))

(declare-datatypes ((SeekEntryResult!8800 0))(
  ( (MissingZero!8800 (index!37570 (_ BitVec 32))) (Found!8800 (index!37571 (_ BitVec 32))) (Intermediate!8800 (undefined!9612 Bool) (index!37572 (_ BitVec 32)) (x!75657 (_ BitVec 32))) (Undefined!8800) (MissingVacant!8800 (index!37573 (_ BitVec 32))) )
))
(declare-fun lt!402338 () SeekEntryResult!8800)

(get-info :version)

(assert (=> b!890549 (= res!603498 (not ((_ is Found!8800) lt!402338)))))

(declare-fun e!496793 () Bool)

(assert (=> b!890549 e!496793))

(declare-fun res!603504 () Bool)

(assert (=> b!890549 (=> res!603504 e!496793)))

(assert (=> b!890549 (= res!603504 (not ((_ is Found!8800) lt!402338)))))

(declare-datatypes ((Unit!30285 0))(
  ( (Unit!30286) )
))
(declare-fun lt!402339 () Unit!30285)

(declare-fun lemmaSeekEntryGivesInRangeIndex!22 (array!52056 array!52058 (_ BitVec 32) (_ BitVec 32) V!29025 V!29025 (_ BitVec 64)) Unit!30285)

(assert (=> b!890549 (= lt!402339 (lemmaSeekEntryGivesInRangeIndex!22 (_keys!9925 thiss!1181) (_values!5231 thiss!1181) (mask!25718 thiss!1181) (extraKeys!4940 thiss!1181) (zeroValue!5044 thiss!1181) (minValue!5044 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52056 (_ BitVec 32)) SeekEntryResult!8800)

(assert (=> b!890549 (= lt!402338 (seekEntry!0 key!785 (_keys!9925 thiss!1181) (mask!25718 thiss!1181)))))

(declare-fun res!603502 () Bool)

(assert (=> start!75774 (=> (not res!603502) (not e!496790))))

(declare-fun valid!1580 (LongMapFixedSize!4098) Bool)

(assert (=> start!75774 (= res!603502 (valid!1580 thiss!1181))))

(assert (=> start!75774 e!496790))

(declare-fun e!496785 () Bool)

(assert (=> start!75774 e!496785))

(assert (=> start!75774 true))

(declare-fun b!890550 () Bool)

(assert (=> b!890550 (= e!496791 true)))

(declare-fun lt!402337 () Bool)

(declare-datatypes ((List!17808 0))(
  ( (Nil!17805) (Cons!17804 (h!18935 (_ BitVec 64)) (t!25115 List!17808)) )
))
(declare-fun arrayNoDuplicates!0 (array!52056 (_ BitVec 32) List!17808) Bool)

(assert (=> b!890550 (= lt!402337 (arrayNoDuplicates!0 (_keys!9925 thiss!1181) #b00000000000000000000000000000000 Nil!17805))))

(declare-fun b!890551 () Bool)

(declare-fun res!603503 () Bool)

(assert (=> b!890551 (=> res!603503 e!496791)))

(assert (=> b!890551 (= res!603503 (or (not (= (size!25476 (_values!5231 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25718 thiss!1181)))) (not (= (size!25475 (_keys!9925 thiss!1181)) (size!25476 (_values!5231 thiss!1181)))) (bvslt (mask!25718 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4940 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4940 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890552 () Bool)

(assert (=> b!890552 (= e!496787 e!496791)))

(declare-fun res!603501 () Bool)

(assert (=> b!890552 (=> res!603501 e!496791)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890552 (= res!603501 (not (validMask!0 (mask!25718 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890552 (arrayContainsKey!0 (_keys!9925 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402336 () Unit!30285)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52056 (_ BitVec 64) (_ BitVec 32)) Unit!30285)

(assert (=> b!890552 (= lt!402336 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9925 thiss!1181) key!785 (index!37571 lt!402338)))))

(declare-fun b!890553 () Bool)

(declare-fun e!496789 () Bool)

(declare-fun e!496786 () Bool)

(assert (=> b!890553 (= e!496789 (and e!496786 mapRes!28622))))

(declare-fun condMapEmpty!28622 () Bool)

(declare-fun mapDefault!28622 () ValueCell!8541)

(assert (=> b!890553 (= condMapEmpty!28622 (= (arr!25031 (_values!5231 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8541)) mapDefault!28622)))))

(declare-fun mapIsEmpty!28622 () Bool)

(assert (=> mapIsEmpty!28622 mapRes!28622))

(declare-fun b!890554 () Bool)

(assert (=> b!890554 (= e!496786 tp_is_empty!18045)))

(declare-fun b!890555 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890555 (= e!496793 (inRange!0 (index!37571 lt!402338) (mask!25718 thiss!1181)))))

(declare-fun array_inv!19650 (array!52056) Bool)

(declare-fun array_inv!19651 (array!52058) Bool)

(assert (=> b!890556 (= e!496785 (and tp!55121 tp_is_empty!18045 (array_inv!19650 (_keys!9925 thiss!1181)) (array_inv!19651 (_values!5231 thiss!1181)) e!496789))))

(assert (= (and start!75774 res!603502) b!890548))

(assert (= (and b!890548 res!603500) b!890549))

(assert (= (and b!890549 (not res!603504)) b!890555))

(assert (= (and b!890549 (not res!603498)) b!890552))

(assert (= (and b!890552 (not res!603501)) b!890551))

(assert (= (and b!890551 (not res!603503)) b!890546))

(assert (= (and b!890546 (not res!603499)) b!890550))

(assert (= (and b!890553 condMapEmpty!28622) mapIsEmpty!28622))

(assert (= (and b!890553 (not condMapEmpty!28622)) mapNonEmpty!28622))

(assert (= (and mapNonEmpty!28622 ((_ is ValueCellFull!8541) mapValue!28622)) b!890547))

(assert (= (and b!890553 ((_ is ValueCellFull!8541) mapDefault!28622)) b!890554))

(assert (= b!890556 b!890553))

(assert (= start!75774 b!890556))

(declare-fun m!829129 () Bool)

(assert (=> b!890546 m!829129))

(declare-fun m!829131 () Bool)

(assert (=> mapNonEmpty!28622 m!829131))

(declare-fun m!829133 () Bool)

(assert (=> start!75774 m!829133))

(declare-fun m!829135 () Bool)

(assert (=> b!890550 m!829135))

(declare-fun m!829137 () Bool)

(assert (=> b!890549 m!829137))

(declare-fun m!829139 () Bool)

(assert (=> b!890549 m!829139))

(declare-fun m!829141 () Bool)

(assert (=> b!890556 m!829141))

(declare-fun m!829143 () Bool)

(assert (=> b!890556 m!829143))

(declare-fun m!829145 () Bool)

(assert (=> b!890552 m!829145))

(declare-fun m!829147 () Bool)

(assert (=> b!890552 m!829147))

(declare-fun m!829149 () Bool)

(assert (=> b!890552 m!829149))

(declare-fun m!829151 () Bool)

(assert (=> b!890555 m!829151))

(check-sat (not mapNonEmpty!28622) (not b!890550) tp_is_empty!18045 (not b!890549) (not b_next!15717) b_and!25975 (not b!890552) (not start!75774) (not b!890546) (not b!890555) (not b!890556))
(check-sat b_and!25975 (not b_next!15717))
