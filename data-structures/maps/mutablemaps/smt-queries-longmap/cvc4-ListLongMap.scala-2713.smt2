; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40108 () Bool)

(assert start!40108)

(declare-fun b_free!10367 () Bool)

(declare-fun b_next!10367 () Bool)

(assert (=> start!40108 (= b_free!10367 (not b_next!10367))))

(declare-fun tp!36629 () Bool)

(declare-fun b_and!18353 () Bool)

(assert (=> start!40108 (= tp!36629 b_and!18353)))

(declare-fun b!437969 () Bool)

(declare-fun e!258393 () Bool)

(assert (=> b!437969 (= e!258393 (not true))))

(declare-datatypes ((V!16463 0))(
  ( (V!16464 (val!5804 Int)) )
))
(declare-fun minValue!515 () V!16463)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5416 0))(
  ( (ValueCellFull!5416 (v!8047 V!16463)) (EmptyCell!5416) )
))
(declare-datatypes ((array!26835 0))(
  ( (array!26836 (arr!12864 (Array (_ BitVec 32) ValueCell!5416)) (size!13216 (_ BitVec 32))) )
))
(declare-fun lt!201837 () array!26835)

(declare-fun _values!549 () array!26835)

(declare-fun zeroValue!515 () V!16463)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26837 0))(
  ( (array!26838 (arr!12865 (Array (_ BitVec 32) (_ BitVec 64))) (size!13217 (_ BitVec 32))) )
))
(declare-fun lt!201835 () array!26837)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!26837)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun v!412 () V!16463)

(declare-datatypes ((tuple2!7626 0))(
  ( (tuple2!7627 (_1!3823 (_ BitVec 64)) (_2!3823 V!16463)) )
))
(declare-datatypes ((List!7670 0))(
  ( (Nil!7667) (Cons!7666 (h!8522 tuple2!7626) (t!13434 List!7670)) )
))
(declare-datatypes ((ListLongMap!6553 0))(
  ( (ListLongMap!6554 (toList!3292 List!7670)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1474 (array!26837 array!26835 (_ BitVec 32) (_ BitVec 32) V!16463 V!16463 (_ BitVec 32) Int) ListLongMap!6553)

(declare-fun +!1435 (ListLongMap!6553 tuple2!7626) ListLongMap!6553)

(assert (=> b!437969 (= (getCurrentListMapNoExtraKeys!1474 lt!201835 lt!201837 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1435 (getCurrentListMapNoExtraKeys!1474 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7627 k!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12985 0))(
  ( (Unit!12986) )
))
(declare-fun lt!201833 () Unit!12985)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!613 (array!26837 array!26835 (_ BitVec 32) (_ BitVec 32) V!16463 V!16463 (_ BitVec 32) (_ BitVec 64) V!16463 (_ BitVec 32) Int) Unit!12985)

(assert (=> b!437969 (= lt!201833 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!613 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!437970 () Bool)

(declare-fun e!258391 () Bool)

(declare-fun e!258388 () Bool)

(declare-fun mapRes!18900 () Bool)

(assert (=> b!437970 (= e!258391 (and e!258388 mapRes!18900))))

(declare-fun condMapEmpty!18900 () Bool)

(declare-fun mapDefault!18900 () ValueCell!5416)

