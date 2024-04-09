; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90018 () Bool)

(assert start!90018)

(declare-fun b!1030463 () Bool)

(declare-fun b_free!20621 () Bool)

(declare-fun b_next!20621 () Bool)

(assert (=> b!1030463 (= b_free!20621 (not b_next!20621))))

(declare-fun tp!72931 () Bool)

(declare-fun b_and!33021 () Bool)

(assert (=> b!1030463 (= tp!72931 b_and!33021)))

(declare-fun res!689173 () Bool)

(declare-fun e!581946 () Bool)

(assert (=> start!90018 (=> (not res!689173) (not e!581946))))

(declare-datatypes ((V!37327 0))(
  ( (V!37328 (val!12221 Int)) )
))
(declare-datatypes ((ValueCell!11467 0))(
  ( (ValueCellFull!11467 (v!14799 V!37327)) (EmptyCell!11467) )
))
(declare-datatypes ((array!64728 0))(
  ( (array!64729 (arr!31163 (Array (_ BitVec 32) (_ BitVec 64))) (size!31681 (_ BitVec 32))) )
))
(declare-datatypes ((array!64730 0))(
  ( (array!64731 (arr!31164 (Array (_ BitVec 32) ValueCell!11467)) (size!31682 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5528 0))(
  ( (LongMapFixedSize!5529 (defaultEntry!6136 Int) (mask!29909 (_ BitVec 32)) (extraKeys!5868 (_ BitVec 32)) (zeroValue!5972 V!37327) (minValue!5972 V!37327) (_size!2819 (_ BitVec 32)) (_keys!11304 array!64728) (_values!6159 array!64730) (_vacant!2819 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5528)

(declare-fun valid!2046 (LongMapFixedSize!5528) Bool)

(assert (=> start!90018 (= res!689173 (valid!2046 thiss!1427))))

(assert (=> start!90018 e!581946))

(declare-fun e!581943 () Bool)

(assert (=> start!90018 e!581943))

(assert (=> start!90018 true))

(declare-fun b!1030457 () Bool)

(declare-fun e!581944 () Bool)

(declare-fun e!581948 () Bool)

(declare-fun mapRes!37962 () Bool)

(assert (=> b!1030457 (= e!581944 (and e!581948 mapRes!37962))))

(declare-fun condMapEmpty!37962 () Bool)

(declare-fun mapDefault!37962 () ValueCell!11467)

