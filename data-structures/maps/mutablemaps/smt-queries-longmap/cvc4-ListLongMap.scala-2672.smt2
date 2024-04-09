; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39862 () Bool)

(assert start!39862)

(declare-fun b_free!10121 () Bool)

(declare-fun b_next!10121 () Bool)

(assert (=> start!39862 (= b_free!10121 (not b_next!10121))))

(declare-fun tp!35892 () Bool)

(declare-fun b_and!17919 () Bool)

(assert (=> start!39862 (= tp!35892 b_and!17919)))

(declare-fun res!253247 () Bool)

(declare-fun e!254970 () Bool)

(assert (=> start!39862 (=> (not res!253247) (not e!254970))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26359 0))(
  ( (array!26360 (arr!12626 (Array (_ BitVec 32) (_ BitVec 64))) (size!12978 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26359)

(assert (=> start!39862 (= res!253247 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12978 _keys!709))))))

(assert (=> start!39862 e!254970))

(declare-fun tp_is_empty!11273 () Bool)

(assert (=> start!39862 tp_is_empty!11273))

(assert (=> start!39862 tp!35892))

(assert (=> start!39862 true))

(declare-datatypes ((V!16135 0))(
  ( (V!16136 (val!5681 Int)) )
))
(declare-datatypes ((ValueCell!5293 0))(
  ( (ValueCellFull!5293 (v!7924 V!16135)) (EmptyCell!5293) )
))
(declare-datatypes ((array!26361 0))(
  ( (array!26362 (arr!12627 (Array (_ BitVec 32) ValueCell!5293)) (size!12979 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26361)

(declare-fun e!254972 () Bool)

(declare-fun array_inv!9184 (array!26361) Bool)

(assert (=> start!39862 (and (array_inv!9184 _values!549) e!254972)))

(declare-fun array_inv!9185 (array!26359) Bool)

(assert (=> start!39862 (array_inv!9185 _keys!709)))

(declare-fun b!430757 () Bool)

(declare-fun res!253253 () Bool)

(assert (=> b!430757 (=> (not res!253253) (not e!254970))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!430757 (= res!253253 (validKeyInArray!0 k!794))))

(declare-fun b!430758 () Bool)

(declare-fun res!253260 () Bool)

(assert (=> b!430758 (=> (not res!253260) (not e!254970))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!430758 (= res!253260 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12978 _keys!709))))))

(declare-fun b!430759 () Bool)

(declare-fun res!253258 () Bool)

(declare-fun e!254965 () Bool)

(assert (=> b!430759 (=> (not res!253258) (not e!254965))))

(assert (=> b!430759 (= res!253258 (bvsle from!863 i!563))))

(declare-fun b!430760 () Bool)

(declare-fun e!254971 () Bool)

(assert (=> b!430760 (= e!254971 tp_is_empty!11273)))

(declare-fun b!430761 () Bool)

(assert (=> b!430761 (= e!254970 e!254965)))

(declare-fun res!253255 () Bool)

(assert (=> b!430761 (=> (not res!253255) (not e!254965))))

(declare-fun lt!197188 () array!26359)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26359 (_ BitVec 32)) Bool)

(assert (=> b!430761 (= res!253255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197188 mask!1025))))

(assert (=> b!430761 (= lt!197188 (array!26360 (store (arr!12626 _keys!709) i!563 k!794) (size!12978 _keys!709)))))

(declare-fun b!430762 () Bool)

(declare-fun e!254968 () Bool)

(declare-fun e!254967 () Bool)

(assert (=> b!430762 (= e!254968 (not e!254967))))

(declare-fun res!253246 () Bool)

(assert (=> b!430762 (=> res!253246 e!254967)))

(assert (=> b!430762 (= res!253246 (not (validKeyInArray!0 (select (arr!12626 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7420 0))(
  ( (tuple2!7421 (_1!3720 (_ BitVec 64)) (_2!3720 V!16135)) )
))
(declare-datatypes ((List!7474 0))(
  ( (Nil!7471) (Cons!7470 (h!8326 tuple2!7420) (t!13052 List!7474)) )
))
(declare-datatypes ((ListLongMap!6347 0))(
  ( (ListLongMap!6348 (toList!3189 List!7474)) )
))
(declare-fun lt!197192 () ListLongMap!6347)

(declare-fun lt!197197 () ListLongMap!6347)

(assert (=> b!430762 (= lt!197192 lt!197197)))

(declare-fun lt!197202 () ListLongMap!6347)

(declare-fun lt!197190 () tuple2!7420)

(declare-fun +!1337 (ListLongMap!6347 tuple2!7420) ListLongMap!6347)

(assert (=> b!430762 (= lt!197197 (+!1337 lt!197202 lt!197190))))

(declare-fun minValue!515 () V!16135)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16135)

(declare-fun lt!197200 () array!26361)

(declare-fun getCurrentListMapNoExtraKeys!1385 (array!26359 array!26361 (_ BitVec 32) (_ BitVec 32) V!16135 V!16135 (_ BitVec 32) Int) ListLongMap!6347)

(assert (=> b!430762 (= lt!197192 (getCurrentListMapNoExtraKeys!1385 lt!197188 lt!197200 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16135)

(assert (=> b!430762 (= lt!197190 (tuple2!7421 k!794 v!412))))

(assert (=> b!430762 (= lt!197202 (getCurrentListMapNoExtraKeys!1385 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12654 0))(
  ( (Unit!12655) )
))
(declare-fun lt!197191 () Unit!12654)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!532 (array!26359 array!26361 (_ BitVec 32) (_ BitVec 32) V!16135 V!16135 (_ BitVec 32) (_ BitVec 64) V!16135 (_ BitVec 32) Int) Unit!12654)

(assert (=> b!430762 (= lt!197191 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!532 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!430763 () Bool)

(declare-fun res!253259 () Bool)

(assert (=> b!430763 (=> (not res!253259) (not e!254970))))

(declare-datatypes ((List!7475 0))(
  ( (Nil!7472) (Cons!7471 (h!8327 (_ BitVec 64)) (t!13053 List!7475)) )
))
(declare-fun arrayNoDuplicates!0 (array!26359 (_ BitVec 32) List!7475) Bool)

(assert (=> b!430763 (= res!253259 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7472))))

(declare-fun b!430764 () Bool)

(declare-fun res!253248 () Bool)

(assert (=> b!430764 (=> (not res!253248) (not e!254970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!430764 (= res!253248 (validMask!0 mask!1025))))

(declare-fun b!430765 () Bool)

(assert (=> b!430765 (= e!254965 e!254968)))

(declare-fun res!253251 () Bool)

(assert (=> b!430765 (=> (not res!253251) (not e!254968))))

(assert (=> b!430765 (= res!253251 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!197193 () ListLongMap!6347)

(assert (=> b!430765 (= lt!197193 (getCurrentListMapNoExtraKeys!1385 lt!197188 lt!197200 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!430765 (= lt!197200 (array!26362 (store (arr!12627 _values!549) i!563 (ValueCellFull!5293 v!412)) (size!12979 _values!549)))))

(declare-fun lt!197196 () ListLongMap!6347)

(assert (=> b!430765 (= lt!197196 (getCurrentListMapNoExtraKeys!1385 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!430766 () Bool)

(declare-fun e!254969 () Unit!12654)

(declare-fun Unit!12656 () Unit!12654)

(assert (=> b!430766 (= e!254969 Unit!12656)))

(declare-fun b!430767 () Bool)

(declare-fun res!253254 () Bool)

(assert (=> b!430767 (=> (not res!253254) (not e!254965))))

(assert (=> b!430767 (= res!253254 (arrayNoDuplicates!0 lt!197188 #b00000000000000000000000000000000 Nil!7472))))

(declare-fun b!430768 () Bool)

(declare-fun e!254973 () Bool)

(assert (=> b!430768 (= e!254967 e!254973)))

(declare-fun res!253249 () Bool)

(assert (=> b!430768 (=> res!253249 e!254973)))

(assert (=> b!430768 (= res!253249 (= k!794 (select (arr!12626 _keys!709) from!863)))))

(assert (=> b!430768 (not (= (select (arr!12626 _keys!709) from!863) k!794))))

(declare-fun lt!197195 () Unit!12654)

(assert (=> b!430768 (= lt!197195 e!254969)))

(declare-fun c!55442 () Bool)

(assert (=> b!430768 (= c!55442 (= (select (arr!12626 _keys!709) from!863) k!794))))

(declare-fun lt!197201 () ListLongMap!6347)

(assert (=> b!430768 (= lt!197193 lt!197201)))

(declare-fun lt!197199 () tuple2!7420)

(assert (=> b!430768 (= lt!197201 (+!1337 lt!197197 lt!197199))))

(declare-fun lt!197198 () V!16135)

(assert (=> b!430768 (= lt!197199 (tuple2!7421 (select (arr!12626 _keys!709) from!863) lt!197198))))

(declare-fun get!6273 (ValueCell!5293 V!16135) V!16135)

(declare-fun dynLambda!780 (Int (_ BitVec 64)) V!16135)

(assert (=> b!430768 (= lt!197198 (get!6273 (select (arr!12627 _values!549) from!863) (dynLambda!780 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430769 () Bool)

(declare-fun res!253256 () Bool)

(assert (=> b!430769 (=> (not res!253256) (not e!254970))))

(assert (=> b!430769 (= res!253256 (or (= (select (arr!12626 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12626 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430770 () Bool)

(assert (=> b!430770 (= e!254973 true)))

(assert (=> b!430770 (= lt!197201 (+!1337 (+!1337 lt!197202 lt!197199) lt!197190))))

(declare-fun lt!197189 () Unit!12654)

(declare-fun addCommutativeForDiffKeys!355 (ListLongMap!6347 (_ BitVec 64) V!16135 (_ BitVec 64) V!16135) Unit!12654)

(assert (=> b!430770 (= lt!197189 (addCommutativeForDiffKeys!355 lt!197202 k!794 v!412 (select (arr!12626 _keys!709) from!863) lt!197198))))

(declare-fun b!430771 () Bool)

(declare-fun res!253257 () Bool)

(assert (=> b!430771 (=> (not res!253257) (not e!254970))))

(assert (=> b!430771 (= res!253257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!430772 () Bool)

(declare-fun e!254974 () Bool)

(assert (=> b!430772 (= e!254974 tp_is_empty!11273)))

(declare-fun b!430773 () Bool)

(declare-fun res!253250 () Bool)

(assert (=> b!430773 (=> (not res!253250) (not e!254970))))

(assert (=> b!430773 (= res!253250 (and (= (size!12979 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12978 _keys!709) (size!12979 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!430774 () Bool)

(declare-fun Unit!12657 () Unit!12654)

(assert (=> b!430774 (= e!254969 Unit!12657)))

(declare-fun lt!197194 () Unit!12654)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26359 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12654)

(assert (=> b!430774 (= lt!197194 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!430774 false))

(declare-fun mapIsEmpty!18531 () Bool)

(declare-fun mapRes!18531 () Bool)

(assert (=> mapIsEmpty!18531 mapRes!18531))

(declare-fun b!430775 () Bool)

(declare-fun res!253252 () Bool)

(assert (=> b!430775 (=> (not res!253252) (not e!254970))))

(declare-fun arrayContainsKey!0 (array!26359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!430775 (= res!253252 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!430776 () Bool)

(assert (=> b!430776 (= e!254972 (and e!254974 mapRes!18531))))

(declare-fun condMapEmpty!18531 () Bool)

(declare-fun mapDefault!18531 () ValueCell!5293)

