; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16082 () Bool)

(assert start!16082)

(declare-fun b!159520 () Bool)

(declare-fun b_free!3531 () Bool)

(declare-fun b_next!3531 () Bool)

(assert (=> b!159520 (= b_free!3531 (not b_next!3531))))

(declare-fun tp!13163 () Bool)

(declare-fun b_and!9963 () Bool)

(assert (=> b!159520 (= tp!13163 b_and!9963)))

(declare-fun b!159517 () Bool)

(declare-fun e!104408 () Bool)

(assert (=> b!159517 (= e!104408 false)))

(declare-fun lt!82031 () Bool)

(declare-datatypes ((V!4091 0))(
  ( (V!4092 (val!1711 Int)) )
))
(declare-datatypes ((ValueCell!1323 0))(
  ( (ValueCellFull!1323 (v!3572 V!4091)) (EmptyCell!1323) )
))
(declare-datatypes ((array!5744 0))(
  ( (array!5745 (arr!2716 (Array (_ BitVec 32) (_ BitVec 64))) (size!3000 (_ BitVec 32))) )
))
(declare-datatypes ((array!5746 0))(
  ( (array!5747 (arr!2717 (Array (_ BitVec 32) ValueCell!1323)) (size!3001 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1554 0))(
  ( (LongMapFixedSize!1555 (defaultEntry!3219 Int) (mask!7771 (_ BitVec 32)) (extraKeys!2960 (_ BitVec 32)) (zeroValue!3062 V!4091) (minValue!3062 V!4091) (_size!826 (_ BitVec 32)) (_keys!5020 array!5744) (_values!3202 array!5746) (_vacant!826 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1554)

(declare-datatypes ((List!1925 0))(
  ( (Nil!1922) (Cons!1921 (h!2534 (_ BitVec 64)) (t!6735 List!1925)) )
))
(declare-fun arrayNoDuplicates!0 (array!5744 (_ BitVec 32) List!1925) Bool)

(assert (=> b!159517 (= lt!82031 (arrayNoDuplicates!0 (_keys!5020 thiss!1248) #b00000000000000000000000000000000 Nil!1922))))

(declare-fun b!159518 () Bool)

(declare-fun e!104410 () Bool)

(declare-fun tp_is_empty!3333 () Bool)

(assert (=> b!159518 (= e!104410 tp_is_empty!3333)))

(declare-fun mapNonEmpty!5687 () Bool)

(declare-fun mapRes!5687 () Bool)

(declare-fun tp!13162 () Bool)

(assert (=> mapNonEmpty!5687 (= mapRes!5687 (and tp!13162 e!104410))))

(declare-fun mapValue!5687 () ValueCell!1323)

(declare-fun mapKey!5687 () (_ BitVec 32))

(declare-fun mapRest!5687 () (Array (_ BitVec 32) ValueCell!1323))

(assert (=> mapNonEmpty!5687 (= (arr!2717 (_values!3202 thiss!1248)) (store mapRest!5687 mapKey!5687 mapValue!5687))))

(declare-fun mapIsEmpty!5687 () Bool)

(assert (=> mapIsEmpty!5687 mapRes!5687))

(declare-fun e!104406 () Bool)

(declare-fun e!104407 () Bool)

(declare-fun array_inv!1719 (array!5744) Bool)

(declare-fun array_inv!1720 (array!5746) Bool)

(assert (=> b!159520 (= e!104407 (and tp!13163 tp_is_empty!3333 (array_inv!1719 (_keys!5020 thiss!1248)) (array_inv!1720 (_values!3202 thiss!1248)) e!104406))))

(declare-fun b!159521 () Bool)

(declare-fun e!104409 () Bool)

(assert (=> b!159521 (= e!104406 (and e!104409 mapRes!5687))))

(declare-fun condMapEmpty!5687 () Bool)

(declare-fun mapDefault!5687 () ValueCell!1323)

(assert (=> b!159521 (= condMapEmpty!5687 (= (arr!2717 (_values!3202 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1323)) mapDefault!5687)))))

(declare-fun b!159522 () Bool)

(declare-fun res!75401 () Bool)

(assert (=> b!159522 (=> (not res!75401) (not e!104408))))

(assert (=> b!159522 (= res!75401 (and (= (size!3001 (_values!3202 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7771 thiss!1248))) (= (size!3000 (_keys!5020 thiss!1248)) (size!3001 (_values!3202 thiss!1248))) (bvsge (mask!7771 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2960 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2960 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159523 () Bool)

(declare-fun res!75403 () Bool)

(assert (=> b!159523 (=> (not res!75403) (not e!104408))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!159523 (= res!75403 (not (= key!828 (bvneg key!828))))))

(declare-fun b!159519 () Bool)

(declare-fun res!75402 () Bool)

(assert (=> b!159519 (=> (not res!75402) (not e!104408))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!325 0))(
  ( (MissingZero!325 (index!3468 (_ BitVec 32))) (Found!325 (index!3469 (_ BitVec 32))) (Intermediate!325 (undefined!1137 Bool) (index!3470 (_ BitVec 32)) (x!17629 (_ BitVec 32))) (Undefined!325) (MissingVacant!325 (index!3471 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5744 (_ BitVec 32)) SeekEntryResult!325)

(assert (=> b!159519 (= res!75402 ((_ is Undefined!325) (seekEntryOrOpen!0 key!828 (_keys!5020 thiss!1248) (mask!7771 thiss!1248))))))

(declare-fun res!75405 () Bool)

(assert (=> start!16082 (=> (not res!75405) (not e!104408))))

(declare-fun valid!721 (LongMapFixedSize!1554) Bool)

(assert (=> start!16082 (= res!75405 (valid!721 thiss!1248))))

(assert (=> start!16082 e!104408))

(assert (=> start!16082 e!104407))

(assert (=> start!16082 true))

(declare-fun b!159524 () Bool)

(declare-fun res!75404 () Bool)

(assert (=> b!159524 (=> (not res!75404) (not e!104408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159524 (= res!75404 (validMask!0 (mask!7771 thiss!1248)))))

(declare-fun b!159525 () Bool)

(declare-fun res!75406 () Bool)

(assert (=> b!159525 (=> (not res!75406) (not e!104408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5744 (_ BitVec 32)) Bool)

(assert (=> b!159525 (= res!75406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5020 thiss!1248) (mask!7771 thiss!1248)))))

(declare-fun b!159526 () Bool)

(declare-fun res!75407 () Bool)

(assert (=> b!159526 (=> (not res!75407) (not e!104408))))

(declare-datatypes ((tuple2!2872 0))(
  ( (tuple2!2873 (_1!1446 (_ BitVec 64)) (_2!1446 V!4091)) )
))
(declare-datatypes ((List!1926 0))(
  ( (Nil!1923) (Cons!1922 (h!2535 tuple2!2872) (t!6736 List!1926)) )
))
(declare-datatypes ((ListLongMap!1881 0))(
  ( (ListLongMap!1882 (toList!956 List!1926)) )
))
(declare-fun contains!986 (ListLongMap!1881 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!616 (array!5744 array!5746 (_ BitVec 32) (_ BitVec 32) V!4091 V!4091 (_ BitVec 32) Int) ListLongMap!1881)

(assert (=> b!159526 (= res!75407 (contains!986 (getCurrentListMap!616 (_keys!5020 thiss!1248) (_values!3202 thiss!1248) (mask!7771 thiss!1248) (extraKeys!2960 thiss!1248) (zeroValue!3062 thiss!1248) (minValue!3062 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3219 thiss!1248)) key!828))))

(declare-fun b!159527 () Bool)

(assert (=> b!159527 (= e!104409 tp_is_empty!3333)))

(assert (= (and start!16082 res!75405) b!159523))

(assert (= (and b!159523 res!75403) b!159519))

(assert (= (and b!159519 res!75402) b!159526))

(assert (= (and b!159526 res!75407) b!159524))

(assert (= (and b!159524 res!75404) b!159522))

(assert (= (and b!159522 res!75401) b!159525))

(assert (= (and b!159525 res!75406) b!159517))

(assert (= (and b!159521 condMapEmpty!5687) mapIsEmpty!5687))

(assert (= (and b!159521 (not condMapEmpty!5687)) mapNonEmpty!5687))

(assert (= (and mapNonEmpty!5687 ((_ is ValueCellFull!1323) mapValue!5687)) b!159518))

(assert (= (and b!159521 ((_ is ValueCellFull!1323) mapDefault!5687)) b!159527))

(assert (= b!159520 b!159521))

(assert (= start!16082 b!159520))

(declare-fun m!191755 () Bool)

(assert (=> start!16082 m!191755))

(declare-fun m!191757 () Bool)

(assert (=> b!159524 m!191757))

(declare-fun m!191759 () Bool)

(assert (=> b!159517 m!191759))

(declare-fun m!191761 () Bool)

(assert (=> b!159519 m!191761))

(declare-fun m!191763 () Bool)

(assert (=> b!159525 m!191763))

(declare-fun m!191765 () Bool)

(assert (=> b!159526 m!191765))

(assert (=> b!159526 m!191765))

(declare-fun m!191767 () Bool)

(assert (=> b!159526 m!191767))

(declare-fun m!191769 () Bool)

(assert (=> mapNonEmpty!5687 m!191769))

(declare-fun m!191771 () Bool)

(assert (=> b!159520 m!191771))

(declare-fun m!191773 () Bool)

(assert (=> b!159520 m!191773))

(check-sat (not b!159525) (not b!159519) (not mapNonEmpty!5687) (not b!159524) b_and!9963 (not b!159526) (not b!159517) (not b_next!3531) (not start!16082) (not b!159520) tp_is_empty!3333)
(check-sat b_and!9963 (not b_next!3531))
