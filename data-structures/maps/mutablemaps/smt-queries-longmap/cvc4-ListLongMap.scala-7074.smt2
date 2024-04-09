; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89538 () Bool)

(assert start!89538)

(declare-fun b!1026408 () Bool)

(declare-fun b_free!20501 () Bool)

(declare-fun b_next!20501 () Bool)

(assert (=> b!1026408 (= b_free!20501 (not b_next!20501))))

(declare-fun tp!72549 () Bool)

(declare-fun b_and!32765 () Bool)

(assert (=> b!1026408 (= tp!72549 b_and!32765)))

(declare-fun b!1026407 () Bool)

(declare-fun res!687173 () Bool)

(declare-fun e!579080 () Bool)

(assert (=> b!1026407 (=> (not res!687173) (not e!579080))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026407 (= res!687173 (not (= key!909 (bvneg key!909))))))

(declare-datatypes ((V!37167 0))(
  ( (V!37168 (val!12161 Int)) )
))
(declare-datatypes ((ValueCell!11407 0))(
  ( (ValueCellFull!11407 (v!14731 V!37167)) (EmptyCell!11407) )
))
(declare-datatypes ((array!64476 0))(
  ( (array!64477 (arr!31043 (Array (_ BitVec 32) (_ BitVec 64))) (size!31557 (_ BitVec 32))) )
))
(declare-datatypes ((array!64478 0))(
  ( (array!64479 (arr!31044 (Array (_ BitVec 32) ValueCell!11407)) (size!31558 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5408 0))(
  ( (LongMapFixedSize!5409 (defaultEntry!6056 Int) (mask!29745 (_ BitVec 32)) (extraKeys!5788 (_ BitVec 32)) (zeroValue!5892 V!37167) (minValue!5892 V!37167) (_size!2759 (_ BitVec 32)) (_keys!11200 array!64476) (_values!6079 array!64478) (_vacant!2759 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5408)

(declare-fun tp_is_empty!24221 () Bool)

(declare-fun e!579073 () Bool)

(declare-fun e!579075 () Bool)

(declare-fun array_inv!23889 (array!64476) Bool)

(declare-fun array_inv!23890 (array!64478) Bool)

(assert (=> b!1026408 (= e!579075 (and tp!72549 tp_is_empty!24221 (array_inv!23889 (_keys!11200 thiss!1427)) (array_inv!23890 (_values!6079 thiss!1427)) e!579073))))

(declare-fun b!1026409 () Bool)

(declare-fun e!579074 () Bool)

(declare-fun mapRes!37760 () Bool)

(assert (=> b!1026409 (= e!579073 (and e!579074 mapRes!37760))))

(declare-fun condMapEmpty!37760 () Bool)

(declare-fun mapDefault!37760 () ValueCell!11407)

