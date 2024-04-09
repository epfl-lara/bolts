; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39640 () Bool)

(assert start!39640)

(declare-fun b_free!9899 () Bool)

(declare-fun b_next!9899 () Bool)

(assert (=> start!39640 (= b_free!9899 (not b_next!9899))))

(declare-fun tp!35225 () Bool)

(declare-fun b_and!17573 () Bool)

(assert (=> start!39640 (= tp!35225 b_and!17573)))

(declare-fun b!424796 () Bool)

(declare-fun e!252259 () Bool)

(declare-fun e!252265 () Bool)

(assert (=> b!424796 (= e!252259 e!252265)))

(declare-fun res!248681 () Bool)

(assert (=> b!424796 (=> (not res!248681) (not e!252265))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424796 (= res!248681 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15839 0))(
  ( (V!15840 (val!5570 Int)) )
))
(declare-fun minValue!515 () V!15839)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!25929 0))(
  ( (array!25930 (arr!12411 (Array (_ BitVec 32) (_ BitVec 64))) (size!12763 (_ BitVec 32))) )
))
(declare-fun lt!194472 () array!25929)

(declare-fun zeroValue!515 () V!15839)

(declare-datatypes ((ValueCell!5182 0))(
  ( (ValueCellFull!5182 (v!7813 V!15839)) (EmptyCell!5182) )
))
(declare-datatypes ((array!25931 0))(
  ( (array!25932 (arr!12412 (Array (_ BitVec 32) ValueCell!5182)) (size!12764 (_ BitVec 32))) )
))
(declare-fun lt!194473 () array!25931)

(declare-datatypes ((tuple2!7252 0))(
  ( (tuple2!7253 (_1!3636 (_ BitVec 64)) (_2!3636 V!15839)) )
))
(declare-datatypes ((List!7297 0))(
  ( (Nil!7294) (Cons!7293 (h!8149 tuple2!7252) (t!12749 List!7297)) )
))
(declare-datatypes ((ListLongMap!6179 0))(
  ( (ListLongMap!6180 (toList!3105 List!7297)) )
))
(declare-fun lt!194471 () ListLongMap!6179)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1306 (array!25929 array!25931 (_ BitVec 32) (_ BitVec 32) V!15839 V!15839 (_ BitVec 32) Int) ListLongMap!6179)

(assert (=> b!424796 (= lt!194471 (getCurrentListMapNoExtraKeys!1306 lt!194472 lt!194473 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25931)

(declare-fun v!412 () V!15839)

(assert (=> b!424796 (= lt!194473 (array!25932 (store (arr!12412 _values!549) i!563 (ValueCellFull!5182 v!412)) (size!12764 _values!549)))))

(declare-fun lt!194474 () ListLongMap!6179)

(declare-fun _keys!709 () array!25929)

(assert (=> b!424796 (= lt!194474 (getCurrentListMapNoExtraKeys!1306 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424797 () Bool)

(declare-fun res!248679 () Bool)

(declare-fun e!252262 () Bool)

(assert (=> b!424797 (=> (not res!248679) (not e!252262))))

(assert (=> b!424797 (= res!248679 (and (= (size!12764 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12763 _keys!709) (size!12764 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424798 () Bool)

(declare-fun e!252260 () Bool)

(declare-fun e!252261 () Bool)

(declare-fun mapRes!18198 () Bool)

(assert (=> b!424798 (= e!252260 (and e!252261 mapRes!18198))))

(declare-fun condMapEmpty!18198 () Bool)

(declare-fun mapDefault!18198 () ValueCell!5182)

