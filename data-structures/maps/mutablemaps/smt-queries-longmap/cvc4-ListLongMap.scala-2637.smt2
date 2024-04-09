; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39652 () Bool)

(assert start!39652)

(declare-fun b_free!9911 () Bool)

(declare-fun b_next!9911 () Bool)

(assert (=> start!39652 (= b_free!9911 (not b_next!9911))))

(declare-fun tp!35261 () Bool)

(declare-fun b_and!17585 () Bool)

(assert (=> start!39652 (= tp!35261 b_and!17585)))

(declare-fun b!425084 () Bool)

(declare-fun res!248922 () Bool)

(declare-fun e!252386 () Bool)

(assert (=> b!425084 (=> (not res!248922) (not e!252386))))

(declare-datatypes ((array!25953 0))(
  ( (array!25954 (arr!12423 (Array (_ BitVec 32) (_ BitVec 64))) (size!12775 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25953)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25953 (_ BitVec 32)) Bool)

(assert (=> b!425084 (= res!248922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!425085 () Bool)

(declare-fun res!248912 () Bool)

(assert (=> b!425085 (=> (not res!248912) (not e!252386))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15855 0))(
  ( (V!15856 (val!5576 Int)) )
))
(declare-datatypes ((ValueCell!5188 0))(
  ( (ValueCellFull!5188 (v!7819 V!15855)) (EmptyCell!5188) )
))
(declare-datatypes ((array!25955 0))(
  ( (array!25956 (arr!12424 (Array (_ BitVec 32) ValueCell!5188)) (size!12776 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25955)

(assert (=> b!425085 (= res!248912 (and (= (size!12776 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12775 _keys!709) (size!12776 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!18216 () Bool)

(declare-fun mapRes!18216 () Bool)

(assert (=> mapIsEmpty!18216 mapRes!18216))

(declare-fun b!425086 () Bool)

(declare-fun e!252391 () Bool)

(declare-fun e!252385 () Bool)

(assert (=> b!425086 (= e!252391 e!252385)))

(declare-fun res!248913 () Bool)

(assert (=> b!425086 (=> (not res!248913) (not e!252385))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425086 (= res!248913 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!15855)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!194565 () array!25955)

(declare-fun lt!194564 () array!25953)

(declare-fun zeroValue!515 () V!15855)

(declare-datatypes ((tuple2!7262 0))(
  ( (tuple2!7263 (_1!3641 (_ BitVec 64)) (_2!3641 V!15855)) )
))
(declare-datatypes ((List!7307 0))(
  ( (Nil!7304) (Cons!7303 (h!8159 tuple2!7262) (t!12759 List!7307)) )
))
(declare-datatypes ((ListLongMap!6189 0))(
  ( (ListLongMap!6190 (toList!3110 List!7307)) )
))
(declare-fun lt!194562 () ListLongMap!6189)

(declare-fun getCurrentListMapNoExtraKeys!1311 (array!25953 array!25955 (_ BitVec 32) (_ BitVec 32) V!15855 V!15855 (_ BitVec 32) Int) ListLongMap!6189)

(assert (=> b!425086 (= lt!194562 (getCurrentListMapNoExtraKeys!1311 lt!194564 lt!194565 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15855)

(assert (=> b!425086 (= lt!194565 (array!25956 (store (arr!12424 _values!549) i!563 (ValueCellFull!5188 v!412)) (size!12776 _values!549)))))

(declare-fun lt!194563 () ListLongMap!6189)

(assert (=> b!425086 (= lt!194563 (getCurrentListMapNoExtraKeys!1311 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!248918 () Bool)

(assert (=> start!39652 (=> (not res!248918) (not e!252386))))

(assert (=> start!39652 (= res!248918 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12775 _keys!709))))))

(assert (=> start!39652 e!252386))

(declare-fun tp_is_empty!11063 () Bool)

(assert (=> start!39652 tp_is_empty!11063))

(assert (=> start!39652 tp!35261))

(assert (=> start!39652 true))

(declare-fun e!252388 () Bool)

(declare-fun array_inv!9056 (array!25955) Bool)

(assert (=> start!39652 (and (array_inv!9056 _values!549) e!252388)))

(declare-fun array_inv!9057 (array!25953) Bool)

(assert (=> start!39652 (array_inv!9057 _keys!709)))

(declare-fun b!425087 () Bool)

(declare-fun e!252389 () Bool)

(assert (=> b!425087 (= e!252388 (and e!252389 mapRes!18216))))

(declare-fun condMapEmpty!18216 () Bool)

(declare-fun mapDefault!18216 () ValueCell!5188)

