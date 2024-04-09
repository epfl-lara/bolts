; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16142 () Bool)

(assert start!16142)

(declare-fun b!160509 () Bool)

(declare-fun b_free!3591 () Bool)

(declare-fun b_next!3591 () Bool)

(assert (=> b!160509 (= b_free!3591 (not b_next!3591))))

(declare-fun tp!13342 () Bool)

(declare-fun b_and!10023 () Bool)

(assert (=> b!160509 (= tp!13342 b_and!10023)))

(declare-fun b!160507 () Bool)

(declare-fun res!76033 () Bool)

(declare-fun e!104946 () Bool)

(assert (=> b!160507 (=> (not res!76033) (not e!104946))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!160507 (= res!76033 (not (= key!828 (bvneg key!828))))))

(declare-fun res!76035 () Bool)

(assert (=> start!16142 (=> (not res!76035) (not e!104946))))

(declare-datatypes ((V!4171 0))(
  ( (V!4172 (val!1741 Int)) )
))
(declare-datatypes ((ValueCell!1353 0))(
  ( (ValueCellFull!1353 (v!3602 V!4171)) (EmptyCell!1353) )
))
(declare-datatypes ((array!5864 0))(
  ( (array!5865 (arr!2776 (Array (_ BitVec 32) (_ BitVec 64))) (size!3060 (_ BitVec 32))) )
))
(declare-datatypes ((array!5866 0))(
  ( (array!5867 (arr!2777 (Array (_ BitVec 32) ValueCell!1353)) (size!3061 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1614 0))(
  ( (LongMapFixedSize!1615 (defaultEntry!3249 Int) (mask!7821 (_ BitVec 32)) (extraKeys!2990 (_ BitVec 32)) (zeroValue!3092 V!4171) (minValue!3092 V!4171) (_size!856 (_ BitVec 32)) (_keys!5050 array!5864) (_values!3232 array!5866) (_vacant!856 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1614)

(declare-fun valid!742 (LongMapFixedSize!1614) Bool)

(assert (=> start!16142 (= res!76035 (valid!742 thiss!1248))))

(assert (=> start!16142 e!104946))

(declare-fun e!104947 () Bool)

(assert (=> start!16142 e!104947))

(assert (=> start!16142 true))

(declare-fun b!160508 () Bool)

(declare-fun e!104948 () Bool)

(declare-fun tp_is_empty!3393 () Bool)

(assert (=> b!160508 (= e!104948 tp_is_empty!3393)))

(declare-fun e!104950 () Bool)

(declare-fun array_inv!1763 (array!5864) Bool)

(declare-fun array_inv!1764 (array!5866) Bool)

(assert (=> b!160509 (= e!104947 (and tp!13342 tp_is_empty!3393 (array_inv!1763 (_keys!5050 thiss!1248)) (array_inv!1764 (_values!3232 thiss!1248)) e!104950))))

(declare-fun b!160510 () Bool)

(declare-fun res!76032 () Bool)

(assert (=> b!160510 (=> (not res!76032) (not e!104946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160510 (= res!76032 (validMask!0 (mask!7821 thiss!1248)))))

(declare-fun b!160511 () Bool)

(declare-fun mapRes!5777 () Bool)

(assert (=> b!160511 (= e!104950 (and e!104948 mapRes!5777))))

(declare-fun condMapEmpty!5777 () Bool)

(declare-fun mapDefault!5777 () ValueCell!1353)

(assert (=> b!160511 (= condMapEmpty!5777 (= (arr!2777 (_values!3232 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1353)) mapDefault!5777)))))

(declare-fun mapIsEmpty!5777 () Bool)

(assert (=> mapIsEmpty!5777 mapRes!5777))

(declare-fun b!160512 () Bool)

(declare-fun res!76037 () Bool)

(assert (=> b!160512 (=> (not res!76037) (not e!104946))))

(assert (=> b!160512 (= res!76037 (and (= (size!3061 (_values!3232 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7821 thiss!1248))) (= (size!3060 (_keys!5050 thiss!1248)) (size!3061 (_values!3232 thiss!1248))) (bvsge (mask!7821 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2990 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2990 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160513 () Bool)

(declare-fun e!104951 () Bool)

(assert (=> b!160513 (= e!104951 tp_is_empty!3393)))

(declare-fun b!160514 () Bool)

(assert (=> b!160514 (= e!104946 false)))

(declare-fun lt!82121 () Bool)

(declare-datatypes ((List!1968 0))(
  ( (Nil!1965) (Cons!1964 (h!2577 (_ BitVec 64)) (t!6778 List!1968)) )
))
(declare-fun arrayNoDuplicates!0 (array!5864 (_ BitVec 32) List!1968) Bool)

(assert (=> b!160514 (= lt!82121 (arrayNoDuplicates!0 (_keys!5050 thiss!1248) #b00000000000000000000000000000000 Nil!1965))))

(declare-fun b!160515 () Bool)

(declare-fun res!76031 () Bool)

(assert (=> b!160515 (=> (not res!76031) (not e!104946))))

(declare-datatypes ((tuple2!2912 0))(
  ( (tuple2!2913 (_1!1466 (_ BitVec 64)) (_2!1466 V!4171)) )
))
(declare-datatypes ((List!1969 0))(
  ( (Nil!1966) (Cons!1965 (h!2578 tuple2!2912) (t!6779 List!1969)) )
))
(declare-datatypes ((ListLongMap!1921 0))(
  ( (ListLongMap!1922 (toList!976 List!1969)) )
))
(declare-fun contains!1006 (ListLongMap!1921 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!636 (array!5864 array!5866 (_ BitVec 32) (_ BitVec 32) V!4171 V!4171 (_ BitVec 32) Int) ListLongMap!1921)

(assert (=> b!160515 (= res!76031 (not (contains!1006 (getCurrentListMap!636 (_keys!5050 thiss!1248) (_values!3232 thiss!1248) (mask!7821 thiss!1248) (extraKeys!2990 thiss!1248) (zeroValue!3092 thiss!1248) (minValue!3092 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3249 thiss!1248)) key!828)))))

(declare-fun mapNonEmpty!5777 () Bool)

(declare-fun tp!13343 () Bool)

(assert (=> mapNonEmpty!5777 (= mapRes!5777 (and tp!13343 e!104951))))

(declare-fun mapValue!5777 () ValueCell!1353)

(declare-fun mapRest!5777 () (Array (_ BitVec 32) ValueCell!1353))

(declare-fun mapKey!5777 () (_ BitVec 32))

(assert (=> mapNonEmpty!5777 (= (arr!2777 (_values!3232 thiss!1248)) (store mapRest!5777 mapKey!5777 mapValue!5777))))

(declare-fun b!160516 () Bool)

(declare-fun res!76034 () Bool)

(assert (=> b!160516 (=> (not res!76034) (not e!104946))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!344 0))(
  ( (MissingZero!344 (index!3544 (_ BitVec 32))) (Found!344 (index!3545 (_ BitVec 32))) (Intermediate!344 (undefined!1156 Bool) (index!3546 (_ BitVec 32)) (x!17728 (_ BitVec 32))) (Undefined!344) (MissingVacant!344 (index!3547 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5864 (_ BitVec 32)) SeekEntryResult!344)

(assert (=> b!160516 (= res!76034 ((_ is Undefined!344) (seekEntryOrOpen!0 key!828 (_keys!5050 thiss!1248) (mask!7821 thiss!1248))))))

(declare-fun b!160517 () Bool)

(declare-fun res!76036 () Bool)

(assert (=> b!160517 (=> (not res!76036) (not e!104946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5864 (_ BitVec 32)) Bool)

(assert (=> b!160517 (= res!76036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5050 thiss!1248) (mask!7821 thiss!1248)))))

(assert (= (and start!16142 res!76035) b!160507))

(assert (= (and b!160507 res!76033) b!160516))

(assert (= (and b!160516 res!76034) b!160515))

(assert (= (and b!160515 res!76031) b!160510))

(assert (= (and b!160510 res!76032) b!160512))

(assert (= (and b!160512 res!76037) b!160517))

(assert (= (and b!160517 res!76036) b!160514))

(assert (= (and b!160511 condMapEmpty!5777) mapIsEmpty!5777))

(assert (= (and b!160511 (not condMapEmpty!5777)) mapNonEmpty!5777))

(assert (= (and mapNonEmpty!5777 ((_ is ValueCellFull!1353) mapValue!5777)) b!160513))

(assert (= (and b!160511 ((_ is ValueCellFull!1353) mapDefault!5777)) b!160508))

(assert (= b!160509 b!160511))

(assert (= start!16142 b!160509))

(declare-fun m!192355 () Bool)

(assert (=> b!160509 m!192355))

(declare-fun m!192357 () Bool)

(assert (=> b!160509 m!192357))

(declare-fun m!192359 () Bool)

(assert (=> mapNonEmpty!5777 m!192359))

(declare-fun m!192361 () Bool)

(assert (=> b!160514 m!192361))

(declare-fun m!192363 () Bool)

(assert (=> b!160517 m!192363))

(declare-fun m!192365 () Bool)

(assert (=> b!160510 m!192365))

(declare-fun m!192367 () Bool)

(assert (=> start!16142 m!192367))

(declare-fun m!192369 () Bool)

(assert (=> b!160515 m!192369))

(assert (=> b!160515 m!192369))

(declare-fun m!192371 () Bool)

(assert (=> b!160515 m!192371))

(declare-fun m!192373 () Bool)

(assert (=> b!160516 m!192373))

(check-sat b_and!10023 (not mapNonEmpty!5777) (not start!16142) (not b_next!3591) tp_is_empty!3393 (not b!160514) (not b!160517) (not b!160516) (not b!160510) (not b!160509) (not b!160515))
(check-sat b_and!10023 (not b_next!3591))
