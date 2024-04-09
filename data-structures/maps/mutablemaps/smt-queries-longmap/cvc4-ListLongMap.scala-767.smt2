; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18086 () Bool)

(assert start!18086)

(declare-fun b!179948 () Bool)

(declare-fun b_free!4445 () Bool)

(declare-fun b_next!4445 () Bool)

(assert (=> b!179948 (= b_free!4445 (not b_next!4445))))

(declare-fun tp!16066 () Bool)

(declare-fun b_and!10997 () Bool)

(assert (=> b!179948 (= tp!16066 b_and!10997)))

(declare-fun e!118526 () Bool)

(declare-fun tp_is_empty!4217 () Bool)

(declare-datatypes ((V!5269 0))(
  ( (V!5270 (val!2153 Int)) )
))
(declare-datatypes ((ValueCell!1765 0))(
  ( (ValueCellFull!1765 (v!4038 V!5269)) (EmptyCell!1765) )
))
(declare-datatypes ((array!7602 0))(
  ( (array!7603 (arr!3600 (Array (_ BitVec 32) (_ BitVec 64))) (size!3908 (_ BitVec 32))) )
))
(declare-datatypes ((array!7604 0))(
  ( (array!7605 (arr!3601 (Array (_ BitVec 32) ValueCell!1765)) (size!3909 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2438 0))(
  ( (LongMapFixedSize!2439 (defaultEntry!3695 Int) (mask!8688 (_ BitVec 32)) (extraKeys!3432 (_ BitVec 32)) (zeroValue!3536 V!5269) (minValue!3536 V!5269) (_size!1268 (_ BitVec 32)) (_keys!5586 array!7602) (_values!3678 array!7604) (_vacant!1268 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2438)

(declare-fun e!118525 () Bool)

(declare-fun array_inv!2309 (array!7602) Bool)

(declare-fun array_inv!2310 (array!7604) Bool)

(assert (=> b!179948 (= e!118526 (and tp!16066 tp_is_empty!4217 (array_inv!2309 (_keys!5586 thiss!1248)) (array_inv!2310 (_values!3678 thiss!1248)) e!118525))))

(declare-fun b!179949 () Bool)

(declare-fun e!118527 () Bool)

(assert (=> b!179949 (= e!118527 false)))

(declare-datatypes ((tuple2!3342 0))(
  ( (tuple2!3343 (_1!1681 (_ BitVec 64)) (_2!1681 V!5269)) )
))
(declare-datatypes ((List!2307 0))(
  ( (Nil!2304) (Cons!2303 (h!2928 tuple2!3342) (t!7163 List!2307)) )
))
(declare-datatypes ((ListLongMap!2283 0))(
  ( (ListLongMap!2284 (toList!1157 List!2307)) )
))
(declare-fun lt!88892 () ListLongMap!2283)

(declare-fun map!1928 (LongMapFixedSize!2438) ListLongMap!2283)

(assert (=> b!179949 (= lt!88892 (map!1928 thiss!1248))))

(declare-datatypes ((Unit!5475 0))(
  ( (Unit!5476) )
))
(declare-fun lt!88891 () Unit!5475)

(declare-fun e!118530 () Unit!5475)

(assert (=> b!179949 (= lt!88891 e!118530)))

(declare-fun c!32227 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun contains!1227 (ListLongMap!2283 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!804 (array!7602 array!7604 (_ BitVec 32) (_ BitVec 32) V!5269 V!5269 (_ BitVec 32) Int) ListLongMap!2283)

(assert (=> b!179949 (= c!32227 (contains!1227 (getCurrentListMap!804 (_keys!5586 thiss!1248) (_values!3678 thiss!1248) (mask!8688 thiss!1248) (extraKeys!3432 thiss!1248) (zeroValue!3536 thiss!1248) (minValue!3536 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3695 thiss!1248)) key!828))))

(declare-fun b!179950 () Bool)

(declare-fun res!85256 () Bool)

(assert (=> b!179950 (=> (not res!85256) (not e!118527))))

(declare-datatypes ((SeekEntryResult!598 0))(
  ( (MissingZero!598 (index!4560 (_ BitVec 32))) (Found!598 (index!4561 (_ BitVec 32))) (Intermediate!598 (undefined!1410 Bool) (index!4562 (_ BitVec 32)) (x!19680 (_ BitVec 32))) (Undefined!598) (MissingVacant!598 (index!4563 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7602 (_ BitVec 32)) SeekEntryResult!598)

(assert (=> b!179950 (= res!85256 (is-Undefined!598 (seekEntryOrOpen!0 key!828 (_keys!5586 thiss!1248) (mask!8688 thiss!1248))))))

(declare-fun b!179951 () Bool)

(declare-fun e!118524 () Bool)

(declare-fun mapRes!7219 () Bool)

(assert (=> b!179951 (= e!118525 (and e!118524 mapRes!7219))))

(declare-fun condMapEmpty!7219 () Bool)

(declare-fun mapDefault!7219 () ValueCell!1765)

