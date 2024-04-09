; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20356 () Bool)

(assert start!20356)

(declare-fun b_free!5003 () Bool)

(declare-fun b_next!5003 () Bool)

(assert (=> start!20356 (= b_free!5003 (not b_next!5003))))

(declare-fun tp!18040 () Bool)

(declare-fun b_and!11767 () Bool)

(assert (=> start!20356 (= tp!18040 b_and!11767)))

(declare-fun b!200638 () Bool)

(declare-fun e!131566 () Bool)

(declare-fun e!131564 () Bool)

(assert (=> b!200638 (= e!131566 (not e!131564))))

(declare-fun res!95681 () Bool)

(assert (=> b!200638 (=> res!95681 e!131564)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200638 (= res!95681 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6125 0))(
  ( (V!6126 (val!2474 Int)) )
))
(declare-datatypes ((ValueCell!2086 0))(
  ( (ValueCellFull!2086 (v!4440 V!6125)) (EmptyCell!2086) )
))
(declare-datatypes ((array!8948 0))(
  ( (array!8949 (arr!4224 (Array (_ BitVec 32) ValueCell!2086)) (size!4549 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8948)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!3736 0))(
  ( (tuple2!3737 (_1!1878 (_ BitVec 64)) (_2!1878 V!6125)) )
))
(declare-datatypes ((List!2677 0))(
  ( (Nil!2674) (Cons!2673 (h!3315 tuple2!3736) (t!7616 List!2677)) )
))
(declare-datatypes ((ListLongMap!2663 0))(
  ( (ListLongMap!2664 (toList!1347 List!2677)) )
))
(declare-fun lt!99397 () ListLongMap!2663)

(declare-fun zeroValue!615 () V!6125)

(declare-datatypes ((array!8950 0))(
  ( (array!8951 (arr!4225 (Array (_ BitVec 32) (_ BitVec 64))) (size!4550 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8950)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6125)

(declare-fun getCurrentListMap!932 (array!8950 array!8948 (_ BitVec 32) (_ BitVec 32) V!6125 V!6125 (_ BitVec 32) Int) ListLongMap!2663)

(assert (=> b!200638 (= lt!99397 (getCurrentListMap!932 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99395 () ListLongMap!2663)

(declare-fun lt!99386 () array!8948)

(assert (=> b!200638 (= lt!99395 (getCurrentListMap!932 _keys!825 lt!99386 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99384 () ListLongMap!2663)

(declare-fun lt!99387 () ListLongMap!2663)

(assert (=> b!200638 (and (= lt!99384 lt!99387) (= lt!99387 lt!99384))))

(declare-fun lt!99389 () ListLongMap!2663)

(declare-fun lt!99394 () tuple2!3736)

(declare-fun +!364 (ListLongMap!2663 tuple2!3736) ListLongMap!2663)

(assert (=> b!200638 (= lt!99387 (+!364 lt!99389 lt!99394))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6125)

(assert (=> b!200638 (= lt!99394 (tuple2!3737 k!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6035 0))(
  ( (Unit!6036) )
))
(declare-fun lt!99383 () Unit!6035)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!45 (array!8950 array!8948 (_ BitVec 32) (_ BitVec 32) V!6125 V!6125 (_ BitVec 32) (_ BitVec 64) V!6125 (_ BitVec 32) Int) Unit!6035)

(assert (=> b!200638 (= lt!99383 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!45 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!303 (array!8950 array!8948 (_ BitVec 32) (_ BitVec 32) V!6125 V!6125 (_ BitVec 32) Int) ListLongMap!2663)

(assert (=> b!200638 (= lt!99384 (getCurrentListMapNoExtraKeys!303 _keys!825 lt!99386 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200638 (= lt!99386 (array!8949 (store (arr!4224 _values!649) i!601 (ValueCellFull!2086 v!520)) (size!4549 _values!649)))))

(assert (=> b!200638 (= lt!99389 (getCurrentListMapNoExtraKeys!303 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!8357 () Bool)

(declare-fun mapRes!8357 () Bool)

(declare-fun tp!18041 () Bool)

(declare-fun e!131561 () Bool)

(assert (=> mapNonEmpty!8357 (= mapRes!8357 (and tp!18041 e!131561))))

(declare-fun mapValue!8357 () ValueCell!2086)

(declare-fun mapRest!8357 () (Array (_ BitVec 32) ValueCell!2086))

(declare-fun mapKey!8357 () (_ BitVec 32))

(assert (=> mapNonEmpty!8357 (= (arr!4224 _values!649) (store mapRest!8357 mapKey!8357 mapValue!8357))))

(declare-fun b!200639 () Bool)

(declare-fun res!95680 () Bool)

(assert (=> b!200639 (=> (not res!95680) (not e!131566))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200639 (= res!95680 (validKeyInArray!0 k!843))))

(declare-fun b!200640 () Bool)

(declare-fun tp_is_empty!4859 () Bool)

(assert (=> b!200640 (= e!131561 tp_is_empty!4859)))

(declare-fun b!200641 () Bool)

(declare-fun res!95683 () Bool)

(assert (=> b!200641 (=> (not res!95683) (not e!131566))))

(assert (=> b!200641 (= res!95683 (and (= (size!4549 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4550 _keys!825) (size!4549 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200642 () Bool)

(declare-fun res!95684 () Bool)

(assert (=> b!200642 (=> (not res!95684) (not e!131566))))

(declare-datatypes ((List!2678 0))(
  ( (Nil!2675) (Cons!2674 (h!3316 (_ BitVec 64)) (t!7617 List!2678)) )
))
(declare-fun arrayNoDuplicates!0 (array!8950 (_ BitVec 32) List!2678) Bool)

(assert (=> b!200642 (= res!95684 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2675))))

(declare-fun b!200643 () Bool)

(declare-fun e!131560 () Bool)

(declare-fun e!131563 () Bool)

(assert (=> b!200643 (= e!131560 (and e!131563 mapRes!8357))))

(declare-fun condMapEmpty!8357 () Bool)

(declare-fun mapDefault!8357 () ValueCell!2086)

