; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39912 () Bool)

(assert start!39912)

(declare-fun b_free!10171 () Bool)

(declare-fun b_next!10171 () Bool)

(assert (=> start!39912 (= b_free!10171 (not b_next!10171))))

(declare-fun tp!36041 () Bool)

(declare-fun b_and!18019 () Bool)

(assert (=> start!39912 (= tp!36041 b_and!18019)))

(declare-fun b!432307 () Bool)

(declare-fun res!254373 () Bool)

(declare-fun e!255715 () Bool)

(assert (=> b!432307 (=> (not res!254373) (not e!255715))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432307 (= res!254373 (validKeyInArray!0 k!794))))

(declare-fun b!432308 () Bool)

(declare-fun res!254380 () Bool)

(declare-fun e!255716 () Bool)

(assert (=> b!432308 (=> (not res!254380) (not e!255716))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!432308 (= res!254380 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18606 () Bool)

(declare-fun mapRes!18606 () Bool)

(assert (=> mapIsEmpty!18606 mapRes!18606))

(declare-fun b!432310 () Bool)

(declare-fun res!254377 () Bool)

(assert (=> b!432310 (=> (not res!254377) (not e!255715))))

(declare-datatypes ((array!26457 0))(
  ( (array!26458 (arr!12675 (Array (_ BitVec 32) (_ BitVec 64))) (size!13027 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26457)

(declare-fun arrayContainsKey!0 (array!26457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!432310 (= res!254377 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!432311 () Bool)

(declare-datatypes ((Unit!12733 0))(
  ( (Unit!12734) )
))
(declare-fun e!255721 () Unit!12733)

(declare-fun Unit!12735 () Unit!12733)

(assert (=> b!432311 (= e!255721 Unit!12735)))

(declare-fun lt!198314 () Unit!12733)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26457 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12733)

(assert (=> b!432311 (= lt!198314 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!432311 false))

(declare-fun b!432312 () Bool)

(declare-fun e!255723 () Bool)

(assert (=> b!432312 (= e!255723 true)))

(declare-datatypes ((V!16203 0))(
  ( (V!16204 (val!5706 Int)) )
))
(declare-datatypes ((tuple2!7466 0))(
  ( (tuple2!7467 (_1!3743 (_ BitVec 64)) (_2!3743 V!16203)) )
))
(declare-datatypes ((List!7519 0))(
  ( (Nil!7516) (Cons!7515 (h!8371 tuple2!7466) (t!13147 List!7519)) )
))
(declare-datatypes ((ListLongMap!6393 0))(
  ( (ListLongMap!6394 (toList!3212 List!7519)) )
))
(declare-fun lt!198323 () ListLongMap!6393)

(declare-fun lt!198322 () ListLongMap!6393)

(declare-fun lt!198319 () tuple2!7466)

(declare-fun lt!198327 () tuple2!7466)

(declare-fun +!1358 (ListLongMap!6393 tuple2!7466) ListLongMap!6393)

(assert (=> b!432312 (= lt!198323 (+!1358 (+!1358 lt!198322 lt!198319) lt!198327))))

(declare-fun lt!198318 () Unit!12733)

(declare-fun v!412 () V!16203)

(declare-fun lt!198313 () V!16203)

(declare-fun addCommutativeForDiffKeys!370 (ListLongMap!6393 (_ BitVec 64) V!16203 (_ BitVec 64) V!16203) Unit!12733)

(assert (=> b!432312 (= lt!198318 (addCommutativeForDiffKeys!370 lt!198322 k!794 v!412 (select (arr!12675 _keys!709) from!863) lt!198313))))

(declare-fun b!432313 () Bool)

(declare-fun e!255719 () Bool)

(declare-fun e!255717 () Bool)

(assert (=> b!432313 (= e!255719 (and e!255717 mapRes!18606))))

(declare-fun condMapEmpty!18606 () Bool)

(declare-datatypes ((ValueCell!5318 0))(
  ( (ValueCellFull!5318 (v!7949 V!16203)) (EmptyCell!5318) )
))
(declare-datatypes ((array!26459 0))(
  ( (array!26460 (arr!12676 (Array (_ BitVec 32) ValueCell!5318)) (size!13028 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26459)

(declare-fun mapDefault!18606 () ValueCell!5318)

