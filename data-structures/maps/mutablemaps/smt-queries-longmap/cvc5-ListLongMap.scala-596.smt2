; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15730 () Bool)

(assert start!15730)

(declare-fun b!156760 () Bool)

(declare-fun b_free!3385 () Bool)

(declare-fun b_next!3385 () Bool)

(assert (=> b!156760 (= b_free!3385 (not b_next!3385))))

(declare-fun tp!12679 () Bool)

(declare-fun b_and!9817 () Bool)

(assert (=> b!156760 (= tp!12679 b_and!9817)))

(declare-fun b!156761 () Bool)

(declare-fun e!102539 () Bool)

(declare-fun tp_is_empty!3187 () Bool)

(assert (=> b!156761 (= e!102539 tp_is_empty!3187)))

(declare-fun b!156762 () Bool)

(declare-fun res!74116 () Bool)

(declare-fun e!102540 () Bool)

(assert (=> b!156762 (=> (not res!74116) (not e!102540))))

(declare-datatypes ((V!3897 0))(
  ( (V!3898 (val!1638 Int)) )
))
(declare-datatypes ((ValueCell!1250 0))(
  ( (ValueCellFull!1250 (v!3499 V!3897)) (EmptyCell!1250) )
))
(declare-datatypes ((array!5426 0))(
  ( (array!5427 (arr!2570 (Array (_ BitVec 32) (_ BitVec 64))) (size!2848 (_ BitVec 32))) )
))
(declare-datatypes ((array!5428 0))(
  ( (array!5429 (arr!2571 (Array (_ BitVec 32) ValueCell!1250)) (size!2849 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1408 0))(
  ( (LongMapFixedSize!1409 (defaultEntry!3146 Int) (mask!7607 (_ BitVec 32)) (extraKeys!2887 (_ BitVec 32)) (zeroValue!2989 V!3897) (minValue!2989 V!3897) (_size!753 (_ BitVec 32)) (_keys!4921 array!5426) (_values!3129 array!5428) (_vacant!753 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1408)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5426 (_ BitVec 32)) Bool)

(assert (=> b!156762 (= res!74116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4921 thiss!1248) (mask!7607 thiss!1248)))))

(declare-fun mapNonEmpty!5423 () Bool)

(declare-fun mapRes!5423 () Bool)

(declare-fun tp!12680 () Bool)

(assert (=> mapNonEmpty!5423 (= mapRes!5423 (and tp!12680 e!102539))))

(declare-fun mapRest!5423 () (Array (_ BitVec 32) ValueCell!1250))

(declare-fun mapValue!5423 () ValueCell!1250)

(declare-fun mapKey!5423 () (_ BitVec 32))

(assert (=> mapNonEmpty!5423 (= (arr!2571 (_values!3129 thiss!1248)) (store mapRest!5423 mapKey!5423 mapValue!5423))))

(declare-fun b!156763 () Bool)

(declare-fun res!74114 () Bool)

(assert (=> b!156763 (=> (not res!74114) (not e!102540))))

(assert (=> b!156763 (= res!74114 (and (= (size!2849 (_values!3129 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7607 thiss!1248))) (= (size!2848 (_keys!4921 thiss!1248)) (size!2849 (_values!3129 thiss!1248))) (bvsge (mask!7607 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2887 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2887 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2887 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2887 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2887 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2887 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2887 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156764 () Bool)

(assert (=> b!156764 (= e!102540 false)))

(declare-fun lt!81614 () Bool)

(declare-datatypes ((List!1878 0))(
  ( (Nil!1875) (Cons!1874 (h!2483 (_ BitVec 64)) (t!6688 List!1878)) )
))
(declare-fun arrayNoDuplicates!0 (array!5426 (_ BitVec 32) List!1878) Bool)

(assert (=> b!156764 (= lt!81614 (arrayNoDuplicates!0 (_keys!4921 thiss!1248) #b00000000000000000000000000000000 Nil!1875))))

(declare-fun b!156765 () Bool)

(declare-fun e!102538 () Bool)

(declare-fun e!102537 () Bool)

(assert (=> b!156765 (= e!102538 (and e!102537 mapRes!5423))))

(declare-fun condMapEmpty!5423 () Bool)

(declare-fun mapDefault!5423 () ValueCell!1250)

