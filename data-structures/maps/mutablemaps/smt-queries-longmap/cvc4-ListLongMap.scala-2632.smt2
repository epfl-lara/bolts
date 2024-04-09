; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39622 () Bool)

(assert start!39622)

(declare-fun b_free!9881 () Bool)

(declare-fun b_next!9881 () Bool)

(assert (=> start!39622 (= b_free!9881 (not b_next!9881))))

(declare-fun tp!35171 () Bool)

(declare-fun b_and!17555 () Bool)

(assert (=> start!39622 (= tp!35171 b_and!17555)))

(declare-fun b!424374 () Bool)

(declare-fun e!252083 () Bool)

(assert (=> b!424374 (= e!252083 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15815 0))(
  ( (V!15816 (val!5561 Int)) )
))
(declare-fun minValue!515 () V!15815)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5173 0))(
  ( (ValueCellFull!5173 (v!7804 V!15815)) (EmptyCell!5173) )
))
(declare-datatypes ((array!25893 0))(
  ( (array!25894 (arr!12393 (Array (_ BitVec 32) ValueCell!5173)) (size!12745 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25893)

(declare-datatypes ((tuple2!7236 0))(
  ( (tuple2!7237 (_1!3628 (_ BitVec 64)) (_2!3628 V!15815)) )
))
(declare-datatypes ((List!7282 0))(
  ( (Nil!7279) (Cons!7278 (h!8134 tuple2!7236) (t!12734 List!7282)) )
))
(declare-datatypes ((ListLongMap!6163 0))(
  ( (ListLongMap!6164 (toList!3097 List!7282)) )
))
(declare-fun lt!194357 () ListLongMap!6163)

(declare-fun zeroValue!515 () V!15815)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25895 0))(
  ( (array!25896 (arr!12394 (Array (_ BitVec 32) (_ BitVec 64))) (size!12746 (_ BitVec 32))) )
))
(declare-fun lt!194356 () array!25895)

(declare-fun v!412 () V!15815)

(declare-fun getCurrentListMapNoExtraKeys!1298 (array!25895 array!25893 (_ BitVec 32) (_ BitVec 32) V!15815 V!15815 (_ BitVec 32) Int) ListLongMap!6163)

(assert (=> b!424374 (= lt!194357 (getCurrentListMapNoExtraKeys!1298 lt!194356 (array!25894 (store (arr!12393 _values!549) i!563 (ValueCellFull!5173 v!412)) (size!12745 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _keys!709 () array!25895)

(declare-fun lt!194358 () ListLongMap!6163)

(assert (=> b!424374 (= lt!194358 (getCurrentListMapNoExtraKeys!1298 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424375 () Bool)

(declare-fun e!252081 () Bool)

(declare-fun tp_is_empty!11033 () Bool)

(assert (=> b!424375 (= e!252081 tp_is_empty!11033)))

(declare-fun res!248338 () Bool)

(declare-fun e!252084 () Bool)

(assert (=> start!39622 (=> (not res!248338) (not e!252084))))

(assert (=> start!39622 (= res!248338 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12746 _keys!709))))))

(assert (=> start!39622 e!252084))

(assert (=> start!39622 tp_is_empty!11033))

(assert (=> start!39622 tp!35171))

(assert (=> start!39622 true))

(declare-fun e!252085 () Bool)

(declare-fun array_inv!9034 (array!25893) Bool)

(assert (=> start!39622 (and (array_inv!9034 _values!549) e!252085)))

(declare-fun array_inv!9035 (array!25895) Bool)

(assert (=> start!39622 (array_inv!9035 _keys!709)))

(declare-fun mapIsEmpty!18171 () Bool)

(declare-fun mapRes!18171 () Bool)

(assert (=> mapIsEmpty!18171 mapRes!18171))

(declare-fun b!424376 () Bool)

(declare-fun res!248340 () Bool)

(assert (=> b!424376 (=> (not res!248340) (not e!252084))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424376 (= res!248340 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!424377 () Bool)

(declare-fun res!248345 () Bool)

(assert (=> b!424377 (=> (not res!248345) (not e!252084))))

(assert (=> b!424377 (= res!248345 (and (= (size!12745 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12746 _keys!709) (size!12745 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424378 () Bool)

(declare-fun e!252080 () Bool)

(assert (=> b!424378 (= e!252085 (and e!252080 mapRes!18171))))

(declare-fun condMapEmpty!18171 () Bool)

(declare-fun mapDefault!18171 () ValueCell!5173)

