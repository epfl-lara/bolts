; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89408 () Bool)

(assert start!89408)

(declare-fun b!1024441 () Bool)

(declare-fun b_free!20371 () Bool)

(declare-fun b_next!20371 () Bool)

(assert (=> b!1024441 (= b_free!20371 (not b_next!20371))))

(declare-fun tp!72159 () Bool)

(declare-fun b_and!32635 () Bool)

(assert (=> b!1024441 (= tp!72159 b_and!32635)))

(declare-fun e!577517 () Bool)

(declare-fun e!577516 () Bool)

(declare-fun tp_is_empty!24091 () Bool)

(declare-datatypes ((V!36995 0))(
  ( (V!36996 (val!12096 Int)) )
))
(declare-datatypes ((ValueCell!11342 0))(
  ( (ValueCellFull!11342 (v!14666 V!36995)) (EmptyCell!11342) )
))
(declare-datatypes ((array!64216 0))(
  ( (array!64217 (arr!30913 (Array (_ BitVec 32) (_ BitVec 64))) (size!31427 (_ BitVec 32))) )
))
(declare-datatypes ((array!64218 0))(
  ( (array!64219 (arr!30914 (Array (_ BitVec 32) ValueCell!11342)) (size!31428 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5278 0))(
  ( (LongMapFixedSize!5279 (defaultEntry!5991 Int) (mask!29638 (_ BitVec 32)) (extraKeys!5723 (_ BitVec 32)) (zeroValue!5827 V!36995) (minValue!5827 V!36995) (_size!2694 (_ BitVec 32)) (_keys!11135 array!64216) (_values!6014 array!64218) (_vacant!2694 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5278)

(declare-fun array_inv!23811 (array!64216) Bool)

(declare-fun array_inv!23812 (array!64218) Bool)

(assert (=> b!1024441 (= e!577516 (and tp!72159 tp_is_empty!24091 (array_inv!23811 (_keys!11135 thiss!1427)) (array_inv!23812 (_values!6014 thiss!1427)) e!577517))))

(declare-fun b!1024442 () Bool)

(declare-fun e!577514 () Bool)

(assert (=> b!1024442 (= e!577514 tp_is_empty!24091)))

(declare-fun mapNonEmpty!37565 () Bool)

(declare-fun mapRes!37565 () Bool)

(declare-fun tp!72160 () Bool)

(assert (=> mapNonEmpty!37565 (= mapRes!37565 (and tp!72160 e!577514))))

(declare-fun mapKey!37565 () (_ BitVec 32))

(declare-fun mapValue!37565 () ValueCell!11342)

(declare-fun mapRest!37565 () (Array (_ BitVec 32) ValueCell!11342))

(assert (=> mapNonEmpty!37565 (= (arr!30914 (_values!6014 thiss!1427)) (store mapRest!37565 mapKey!37565 mapValue!37565))))

(declare-fun b!1024443 () Bool)

(declare-fun res!685987 () Bool)

(declare-fun e!577513 () Bool)

(assert (=> b!1024443 (=> res!685987 e!577513)))

(declare-datatypes ((List!21834 0))(
  ( (Nil!21831) (Cons!21830 (h!23028 (_ BitVec 64)) (t!30903 List!21834)) )
))
(declare-fun contains!5962 (List!21834 (_ BitVec 64)) Bool)

(assert (=> b!1024443 (= res!685987 (contains!5962 Nil!21831 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37565 () Bool)

(assert (=> mapIsEmpty!37565 mapRes!37565))

(declare-fun b!1024444 () Bool)

(declare-fun res!685991 () Bool)

(assert (=> b!1024444 (=> res!685991 e!577513)))

(assert (=> b!1024444 (= res!685991 (contains!5962 Nil!21831 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!685986 () Bool)

(declare-fun e!577518 () Bool)

(assert (=> start!89408 (=> (not res!685986) (not e!577518))))

(declare-fun valid!1962 (LongMapFixedSize!5278) Bool)

(assert (=> start!89408 (= res!685986 (valid!1962 thiss!1427))))

(assert (=> start!89408 e!577518))

(assert (=> start!89408 e!577516))

(assert (=> start!89408 true))

(declare-fun b!1024445 () Bool)

(declare-fun res!685992 () Bool)

(assert (=> b!1024445 (=> (not res!685992) (not e!577518))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1024445 (= res!685992 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024446 () Bool)

(declare-fun e!577515 () Bool)

(assert (=> b!1024446 (= e!577517 (and e!577515 mapRes!37565))))

(declare-fun condMapEmpty!37565 () Bool)

(declare-fun mapDefault!37565 () ValueCell!11342)

