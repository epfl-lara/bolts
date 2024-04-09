; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89402 () Bool)

(assert start!89402)

(declare-fun b!1024350 () Bool)

(declare-fun b_free!20365 () Bool)

(declare-fun b_next!20365 () Bool)

(assert (=> b!1024350 (= b_free!20365 (not b_next!20365))))

(declare-fun tp!72141 () Bool)

(declare-fun b_and!32629 () Bool)

(assert (=> b!1024350 (= tp!72141 b_and!32629)))

(declare-fun mapIsEmpty!37556 () Bool)

(declare-fun mapRes!37556 () Bool)

(assert (=> mapIsEmpty!37556 mapRes!37556))

(declare-fun b!1024342 () Bool)

(declare-fun res!685924 () Bool)

(declare-fun e!577443 () Bool)

(assert (=> b!1024342 (=> res!685924 e!577443)))

(declare-datatypes ((List!21831 0))(
  ( (Nil!21828) (Cons!21827 (h!23025 (_ BitVec 64)) (t!30900 List!21831)) )
))
(declare-fun contains!5959 (List!21831 (_ BitVec 64)) Bool)

(assert (=> b!1024342 (= res!685924 (contains!5959 Nil!21828 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024343 () Bool)

(declare-fun e!577446 () Bool)

(declare-fun e!577441 () Bool)

(assert (=> b!1024343 (= e!577446 (and e!577441 mapRes!37556))))

(declare-fun condMapEmpty!37556 () Bool)

(declare-datatypes ((V!36987 0))(
  ( (V!36988 (val!12093 Int)) )
))
(declare-datatypes ((ValueCell!11339 0))(
  ( (ValueCellFull!11339 (v!14663 V!36987)) (EmptyCell!11339) )
))
(declare-datatypes ((array!64204 0))(
  ( (array!64205 (arr!30907 (Array (_ BitVec 32) (_ BitVec 64))) (size!31421 (_ BitVec 32))) )
))
(declare-datatypes ((array!64206 0))(
  ( (array!64207 (arr!30908 (Array (_ BitVec 32) ValueCell!11339)) (size!31422 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5272 0))(
  ( (LongMapFixedSize!5273 (defaultEntry!5988 Int) (mask!29633 (_ BitVec 32)) (extraKeys!5720 (_ BitVec 32)) (zeroValue!5824 V!36987) (minValue!5824 V!36987) (_size!2691 (_ BitVec 32)) (_keys!11132 array!64204) (_values!6011 array!64206) (_vacant!2691 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5272)

(declare-fun mapDefault!37556 () ValueCell!11339)

