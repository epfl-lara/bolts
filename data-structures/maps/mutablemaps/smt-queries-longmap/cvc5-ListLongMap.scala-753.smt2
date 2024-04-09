; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17678 () Bool)

(assert start!17678)

(declare-fun b!176551 () Bool)

(declare-fun b_free!4357 () Bool)

(declare-fun b_next!4357 () Bool)

(assert (=> b!176551 (= b_free!4357 (not b_next!4357))))

(declare-fun tp!15765 () Bool)

(declare-fun b_and!10871 () Bool)

(assert (=> b!176551 (= tp!15765 b_and!10871)))

(declare-fun b!176544 () Bool)

(declare-fun res!83674 () Bool)

(declare-fun e!116474 () Bool)

(assert (=> b!176544 (=> (not res!83674) (not e!116474))))

(declare-datatypes ((V!5153 0))(
  ( (V!5154 (val!2109 Int)) )
))
(declare-datatypes ((ValueCell!1721 0))(
  ( (ValueCellFull!1721 (v!3983 V!5153)) (EmptyCell!1721) )
))
(declare-datatypes ((array!7404 0))(
  ( (array!7405 (arr!3512 (Array (_ BitVec 32) (_ BitVec 64))) (size!3816 (_ BitVec 32))) )
))
(declare-datatypes ((array!7406 0))(
  ( (array!7407 (arr!3513 (Array (_ BitVec 32) ValueCell!1721)) (size!3817 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2350 0))(
  ( (LongMapFixedSize!2351 (defaultEntry!3636 Int) (mask!8558 (_ BitVec 32)) (extraKeys!3373 (_ BitVec 32)) (zeroValue!3477 V!5153) (minValue!3477 V!5153) (_size!1224 (_ BitVec 32)) (_keys!5499 array!7404) (_values!3619 array!7406) (_vacant!1224 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2350)

(assert (=> b!176544 (= res!83674 (and (= (size!3817 (_values!3619 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8558 thiss!1248))) (= (size!3816 (_keys!5499 thiss!1248)) (size!3817 (_values!3619 thiss!1248))) (bvsge (mask!8558 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3373 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3373 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!176545 () Bool)

(declare-fun res!83673 () Bool)

(assert (=> b!176545 (=> (not res!83673) (not e!116474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7404 (_ BitVec 32)) Bool)

(assert (=> b!176545 (= res!83673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5499 thiss!1248) (mask!8558 thiss!1248)))))

(declare-fun b!176546 () Bool)

(declare-fun res!83676 () Bool)

(assert (=> b!176546 (=> (not res!83676) (not e!116474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!176546 (= res!83676 (validMask!0 (mask!8558 thiss!1248)))))

(declare-fun b!176547 () Bool)

(declare-datatypes ((List!2255 0))(
  ( (Nil!2252) (Cons!2251 (h!2872 (_ BitVec 64)) (t!7089 List!2255)) )
))
(declare-fun arrayNoDuplicates!0 (array!7404 (_ BitVec 32) List!2255) Bool)

(assert (=> b!176547 (= e!116474 (not (arrayNoDuplicates!0 (_keys!5499 thiss!1248) #b00000000000000000000000000000000 Nil!2252)))))

(declare-fun b!176548 () Bool)

(declare-fun e!116476 () Bool)

(declare-fun tp_is_empty!4129 () Bool)

(assert (=> b!176548 (= e!116476 tp_is_empty!4129)))

(declare-fun b!176549 () Bool)

(declare-fun res!83678 () Bool)

(assert (=> b!176549 (=> (not res!83678) (not e!116474))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!565 0))(
  ( (MissingZero!565 (index!4428 (_ BitVec 32))) (Found!565 (index!4429 (_ BitVec 32))) (Intermediate!565 (undefined!1377 Bool) (index!4430 (_ BitVec 32)) (x!19393 (_ BitVec 32))) (Undefined!565) (MissingVacant!565 (index!4431 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7404 (_ BitVec 32)) SeekEntryResult!565)

(assert (=> b!176549 (= res!83678 (is-Undefined!565 (seekEntryOrOpen!0 key!828 (_keys!5499 thiss!1248) (mask!8558 thiss!1248))))))

(declare-fun b!176550 () Bool)

(declare-fun e!116475 () Bool)

(assert (=> b!176550 (= e!116475 tp_is_empty!4129)))

(declare-fun e!116479 () Bool)

(declare-fun e!116478 () Bool)

(declare-fun array_inv!2239 (array!7404) Bool)

(declare-fun array_inv!2240 (array!7406) Bool)

(assert (=> b!176551 (= e!116478 (and tp!15765 tp_is_empty!4129 (array_inv!2239 (_keys!5499 thiss!1248)) (array_inv!2240 (_values!3619 thiss!1248)) e!116479))))

(declare-fun mapIsEmpty!7050 () Bool)

(declare-fun mapRes!7050 () Bool)

(assert (=> mapIsEmpty!7050 mapRes!7050))

(declare-fun b!176552 () Bool)

(declare-fun res!83672 () Bool)

(assert (=> b!176552 (=> (not res!83672) (not e!116474))))

(declare-datatypes ((tuple2!3278 0))(
  ( (tuple2!3279 (_1!1649 (_ BitVec 64)) (_2!1649 V!5153)) )
))
(declare-datatypes ((List!2256 0))(
  ( (Nil!2253) (Cons!2252 (h!2873 tuple2!3278) (t!7090 List!2256)) )
))
(declare-datatypes ((ListLongMap!2219 0))(
  ( (ListLongMap!2220 (toList!1125 List!2256)) )
))
(declare-fun contains!1183 (ListLongMap!2219 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!772 (array!7404 array!7406 (_ BitVec 32) (_ BitVec 32) V!5153 V!5153 (_ BitVec 32) Int) ListLongMap!2219)

(assert (=> b!176552 (= res!83672 (contains!1183 (getCurrentListMap!772 (_keys!5499 thiss!1248) (_values!3619 thiss!1248) (mask!8558 thiss!1248) (extraKeys!3373 thiss!1248) (zeroValue!3477 thiss!1248) (minValue!3477 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3636 thiss!1248)) key!828))))

(declare-fun mapNonEmpty!7050 () Bool)

(declare-fun tp!15764 () Bool)

(assert (=> mapNonEmpty!7050 (= mapRes!7050 (and tp!15764 e!116475))))

(declare-fun mapValue!7050 () ValueCell!1721)

(declare-fun mapRest!7050 () (Array (_ BitVec 32) ValueCell!1721))

(declare-fun mapKey!7050 () (_ BitVec 32))

(assert (=> mapNonEmpty!7050 (= (arr!3513 (_values!3619 thiss!1248)) (store mapRest!7050 mapKey!7050 mapValue!7050))))

(declare-fun b!176553 () Bool)

(assert (=> b!176553 (= e!116479 (and e!116476 mapRes!7050))))

(declare-fun condMapEmpty!7050 () Bool)

(declare-fun mapDefault!7050 () ValueCell!1721)

