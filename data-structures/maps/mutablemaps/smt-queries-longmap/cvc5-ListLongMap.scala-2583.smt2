; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39324 () Bool)

(assert start!39324)

(declare-fun b_free!9583 () Bool)

(declare-fun b_next!9583 () Bool)

(assert (=> start!39324 (= b_free!9583 (not b_next!9583))))

(declare-fun tp!34278 () Bool)

(declare-fun b_and!17059 () Bool)

(assert (=> start!39324 (= tp!34278 b_and!17059)))

(declare-fun b!416291 () Bool)

(declare-fun res!242392 () Bool)

(declare-fun e!248516 () Bool)

(assert (=> b!416291 (=> (not res!242392) (not e!248516))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15419 0))(
  ( (V!15420 (val!5412 Int)) )
))
(declare-datatypes ((ValueCell!5024 0))(
  ( (ValueCellFull!5024 (v!7655 V!15419)) (EmptyCell!5024) )
))
(declare-datatypes ((array!25305 0))(
  ( (array!25306 (arr!12099 (Array (_ BitVec 32) ValueCell!5024)) (size!12451 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25305)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25307 0))(
  ( (array!25308 (arr!12100 (Array (_ BitVec 32) (_ BitVec 64))) (size!12452 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25307)

(assert (=> b!416291 (= res!242392 (and (= (size!12451 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12452 _keys!709) (size!12451 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!416292 () Bool)

(declare-fun e!248513 () Bool)

(assert (=> b!416292 (= e!248513 true)))

(declare-fun lt!190656 () V!15419)

(declare-datatypes ((tuple2!6984 0))(
  ( (tuple2!6985 (_1!3502 (_ BitVec 64)) (_2!3502 V!15419)) )
))
(declare-fun lt!190658 () tuple2!6984)

(declare-datatypes ((List!7038 0))(
  ( (Nil!7035) (Cons!7034 (h!7890 tuple2!6984) (t!12294 List!7038)) )
))
(declare-datatypes ((ListLongMap!5911 0))(
  ( (ListLongMap!5912 (toList!2971 List!7038)) )
))
(declare-fun lt!190662 () ListLongMap!5911)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun +!1183 (ListLongMap!5911 tuple2!6984) ListLongMap!5911)

(assert (=> b!416292 (= (+!1183 lt!190662 lt!190658) (+!1183 (+!1183 lt!190662 (tuple2!6985 k!794 lt!190656)) lt!190658))))

(declare-fun lt!190659 () V!15419)

(assert (=> b!416292 (= lt!190658 (tuple2!6985 k!794 lt!190659))))

(declare-datatypes ((Unit!12265 0))(
  ( (Unit!12266) )
))
(declare-fun lt!190660 () Unit!12265)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!7 (ListLongMap!5911 (_ BitVec 64) V!15419 V!15419) Unit!12265)

(assert (=> b!416292 (= lt!190660 (addSameAsAddTwiceSameKeyDiffValues!7 lt!190662 k!794 lt!190656 lt!190659))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!190655 () V!15419)

(declare-fun get!5984 (ValueCell!5024 V!15419) V!15419)

(assert (=> b!416292 (= lt!190656 (get!5984 (select (arr!12099 _values!549) from!863) lt!190655))))

(declare-fun lt!190661 () array!25307)

(declare-fun lt!190663 () ListLongMap!5911)

(assert (=> b!416292 (= lt!190663 (+!1183 lt!190662 (tuple2!6985 (select (arr!12100 lt!190661) from!863) lt!190659)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15419)

(assert (=> b!416292 (= lt!190659 (get!5984 (select (store (arr!12099 _values!549) i!563 (ValueCellFull!5024 v!412)) from!863) lt!190655))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!669 (Int (_ BitVec 64)) V!15419)

(assert (=> b!416292 (= lt!190655 (dynLambda!669 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15419)

(declare-fun lt!190664 () array!25305)

(declare-fun zeroValue!515 () V!15419)

(declare-fun getCurrentListMapNoExtraKeys!1175 (array!25307 array!25305 (_ BitVec 32) (_ BitVec 32) V!15419 V!15419 (_ BitVec 32) Int) ListLongMap!5911)

(assert (=> b!416292 (= lt!190662 (getCurrentListMapNoExtraKeys!1175 lt!190661 lt!190664 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416294 () Bool)

(declare-fun e!248518 () Bool)

(declare-fun e!248515 () Bool)

(declare-fun mapRes!17724 () Bool)

(assert (=> b!416294 (= e!248518 (and e!248515 mapRes!17724))))

(declare-fun condMapEmpty!17724 () Bool)

(declare-fun mapDefault!17724 () ValueCell!5024)

