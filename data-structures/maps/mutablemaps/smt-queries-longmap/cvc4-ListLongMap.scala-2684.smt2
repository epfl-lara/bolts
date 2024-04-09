; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39934 () Bool)

(assert start!39934)

(declare-fun b_free!10193 () Bool)

(declare-fun b_next!10193 () Bool)

(assert (=> start!39934 (= b_free!10193 (not b_next!10193))))

(declare-fun tp!36107 () Bool)

(declare-fun b_and!18063 () Bool)

(assert (=> start!39934 (= tp!36107 b_and!18063)))

(declare-fun b!432989 () Bool)

(declare-fun e!256053 () Bool)

(declare-fun e!256051 () Bool)

(assert (=> b!432989 (= e!256053 (not e!256051))))

(declare-fun res!254872 () Bool)

(assert (=> b!432989 (=> res!254872 e!256051)))

(declare-datatypes ((array!26499 0))(
  ( (array!26500 (arr!12696 (Array (_ BitVec 32) (_ BitVec 64))) (size!13048 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26499)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432989 (= res!254872 (not (validKeyInArray!0 (select (arr!12696 _keys!709) from!863))))))

(declare-datatypes ((V!16231 0))(
  ( (V!16232 (val!5717 Int)) )
))
(declare-datatypes ((tuple2!7486 0))(
  ( (tuple2!7487 (_1!3753 (_ BitVec 64)) (_2!3753 V!16231)) )
))
(declare-datatypes ((List!7536 0))(
  ( (Nil!7533) (Cons!7532 (h!8388 tuple2!7486) (t!13186 List!7536)) )
))
(declare-datatypes ((ListLongMap!6413 0))(
  ( (ListLongMap!6414 (toList!3222 List!7536)) )
))
(declare-fun lt!198811 () ListLongMap!6413)

(declare-fun lt!198818 () ListLongMap!6413)

(assert (=> b!432989 (= lt!198811 lt!198818)))

(declare-fun lt!198813 () ListLongMap!6413)

(declare-fun lt!198812 () tuple2!7486)

(declare-fun +!1368 (ListLongMap!6413 tuple2!7486) ListLongMap!6413)

(assert (=> b!432989 (= lt!198818 (+!1368 lt!198813 lt!198812))))

(declare-fun minValue!515 () V!16231)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16231)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5329 0))(
  ( (ValueCellFull!5329 (v!7960 V!16231)) (EmptyCell!5329) )
))
(declare-datatypes ((array!26501 0))(
  ( (array!26502 (arr!12697 (Array (_ BitVec 32) ValueCell!5329)) (size!13049 (_ BitVec 32))) )
))
(declare-fun lt!198808 () array!26501)

(declare-fun lt!198815 () array!26499)

(declare-fun getCurrentListMapNoExtraKeys!1412 (array!26499 array!26501 (_ BitVec 32) (_ BitVec 32) V!16231 V!16231 (_ BitVec 32) Int) ListLongMap!6413)

(assert (=> b!432989 (= lt!198811 (getCurrentListMapNoExtraKeys!1412 lt!198815 lt!198808 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!16231)

(assert (=> b!432989 (= lt!198812 (tuple2!7487 k!794 v!412))))

(declare-fun _values!549 () array!26501)

(assert (=> b!432989 (= lt!198813 (getCurrentListMapNoExtraKeys!1412 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12769 0))(
  ( (Unit!12770) )
))
(declare-fun lt!198816 () Unit!12769)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!556 (array!26499 array!26501 (_ BitVec 32) (_ BitVec 32) V!16231 V!16231 (_ BitVec 32) (_ BitVec 64) V!16231 (_ BitVec 32) Int) Unit!12769)

(assert (=> b!432989 (= lt!198816 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!556 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!432990 () Bool)

(declare-fun res!254869 () Bool)

(declare-fun e!256046 () Bool)

(assert (=> b!432990 (=> (not res!254869) (not e!256046))))

(declare-fun arrayContainsKey!0 (array!26499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!432990 (= res!254869 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!432991 () Bool)

(declare-fun res!254877 () Bool)

(assert (=> b!432991 (=> (not res!254877) (not e!256046))))

(assert (=> b!432991 (= res!254877 (and (= (size!13049 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13048 _keys!709) (size!13049 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!432992 () Bool)

(declare-fun e!256045 () Bool)

(assert (=> b!432992 (= e!256045 true)))

(declare-fun lt!198819 () ListLongMap!6413)

(declare-fun lt!198822 () tuple2!7486)

(assert (=> b!432992 (= lt!198819 (+!1368 (+!1368 lt!198813 lt!198822) lt!198812))))

(declare-fun lt!198814 () Unit!12769)

(declare-fun lt!198821 () V!16231)

(declare-fun addCommutativeForDiffKeys!378 (ListLongMap!6413 (_ BitVec 64) V!16231 (_ BitVec 64) V!16231) Unit!12769)

(assert (=> b!432992 (= lt!198814 (addCommutativeForDiffKeys!378 lt!198813 k!794 v!412 (select (arr!12696 _keys!709) from!863) lt!198821))))

(declare-fun b!432993 () Bool)

(declare-fun res!254870 () Bool)

(assert (=> b!432993 (=> (not res!254870) (not e!256046))))

(assert (=> b!432993 (= res!254870 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13048 _keys!709))))))

(declare-fun b!432994 () Bool)

(declare-fun e!256052 () Bool)

(declare-fun e!256050 () Bool)

(declare-fun mapRes!18639 () Bool)

(assert (=> b!432994 (= e!256052 (and e!256050 mapRes!18639))))

(declare-fun condMapEmpty!18639 () Bool)

(declare-fun mapDefault!18639 () ValueCell!5329)

