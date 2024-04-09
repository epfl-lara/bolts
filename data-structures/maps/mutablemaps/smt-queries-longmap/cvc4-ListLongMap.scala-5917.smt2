; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76776 () Bool)

(assert start!76776)

(declare-fun b!897997 () Bool)

(declare-fun b_free!16007 () Bool)

(declare-fun b_next!16007 () Bool)

(assert (=> b!897997 (= b_free!16007 (not b_next!16007))))

(declare-fun tp!56084 () Bool)

(declare-fun b_and!26317 () Bool)

(assert (=> b!897997 (= tp!56084 b_and!26317)))

(declare-fun b!897987 () Bool)

(declare-fun res!607027 () Bool)

(declare-fun e!502295 () Bool)

(assert (=> b!897987 (=> (not res!607027) (not e!502295))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!897987 (= res!607027 (not (= key!785 (bvneg key!785))))))

(declare-fun b!897988 () Bool)

(declare-fun e!502293 () Bool)

(declare-fun e!502298 () Bool)

(declare-fun mapRes!29151 () Bool)

(assert (=> b!897988 (= e!502293 (and e!502298 mapRes!29151))))

(declare-fun condMapEmpty!29151 () Bool)

(declare-datatypes ((array!52690 0))(
  ( (array!52691 (arr!25320 (Array (_ BitVec 32) (_ BitVec 64))) (size!25776 (_ BitVec 32))) )
))
(declare-datatypes ((V!29411 0))(
  ( (V!29412 (val!9218 Int)) )
))
(declare-datatypes ((ValueCell!8686 0))(
  ( (ValueCellFull!8686 (v!11705 V!29411)) (EmptyCell!8686) )
))
(declare-datatypes ((array!52692 0))(
  ( (array!52693 (arr!25321 (Array (_ BitVec 32) ValueCell!8686)) (size!25777 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4388 0))(
  ( (LongMapFixedSize!4389 (defaultEntry!5406 Int) (mask!26116 (_ BitVec 32)) (extraKeys!5120 (_ BitVec 32)) (zeroValue!5224 V!29411) (minValue!5224 V!29411) (_size!2249 (_ BitVec 32)) (_keys!10172 array!52690) (_values!5411 array!52692) (_vacant!2249 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4388)

(declare-fun mapDefault!29151 () ValueCell!8686)

