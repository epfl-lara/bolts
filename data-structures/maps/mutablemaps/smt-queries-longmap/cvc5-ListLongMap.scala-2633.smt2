; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39624 () Bool)

(assert start!39624)

(declare-fun b_free!9883 () Bool)

(declare-fun b_next!9883 () Bool)

(assert (=> start!39624 (= b_free!9883 (not b_next!9883))))

(declare-fun tp!35177 () Bool)

(declare-fun b_and!17557 () Bool)

(assert (=> start!39624 (= tp!35177 b_and!17557)))

(declare-fun b!424419 () Bool)

(declare-fun res!248371 () Bool)

(declare-fun e!252102 () Bool)

(assert (=> b!424419 (=> (not res!248371) (not e!252102))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424419 (= res!248371 (validMask!0 mask!1025))))

(declare-fun b!424420 () Bool)

(declare-fun res!248381 () Bool)

(assert (=> b!424420 (=> (not res!248381) (not e!252102))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25897 0))(
  ( (array!25898 (arr!12395 (Array (_ BitVec 32) (_ BitVec 64))) (size!12747 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25897)

(assert (=> b!424420 (= res!248381 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12747 _keys!709))))))

(declare-fun b!424421 () Bool)

(declare-fun res!248380 () Bool)

(assert (=> b!424421 (=> (not res!248380) (not e!252102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25897 (_ BitVec 32)) Bool)

(assert (=> b!424421 (= res!248380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424422 () Bool)

(declare-fun e!252098 () Bool)

(assert (=> b!424422 (= e!252098 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15819 0))(
  ( (V!15820 (val!5562 Int)) )
))
(declare-fun minValue!515 () V!15819)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5174 0))(
  ( (ValueCellFull!5174 (v!7805 V!15819)) (EmptyCell!5174) )
))
(declare-datatypes ((array!25899 0))(
  ( (array!25900 (arr!12396 (Array (_ BitVec 32) ValueCell!5174)) (size!12748 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25899)

(declare-fun zeroValue!515 () V!15819)

(declare-fun lt!194365 () array!25897)

(declare-fun v!412 () V!15819)

(declare-datatypes ((tuple2!7238 0))(
  ( (tuple2!7239 (_1!3629 (_ BitVec 64)) (_2!3629 V!15819)) )
))
(declare-datatypes ((List!7283 0))(
  ( (Nil!7280) (Cons!7279 (h!8135 tuple2!7238) (t!12735 List!7283)) )
))
(declare-datatypes ((ListLongMap!6165 0))(
  ( (ListLongMap!6166 (toList!3098 List!7283)) )
))
(declare-fun lt!194367 () ListLongMap!6165)

(declare-fun getCurrentListMapNoExtraKeys!1299 (array!25897 array!25899 (_ BitVec 32) (_ BitVec 32) V!15819 V!15819 (_ BitVec 32) Int) ListLongMap!6165)

(assert (=> b!424422 (= lt!194367 (getCurrentListMapNoExtraKeys!1299 lt!194365 (array!25900 (store (arr!12396 _values!549) i!563 (ValueCellFull!5174 v!412)) (size!12748 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194366 () ListLongMap!6165)

(assert (=> b!424422 (= lt!194366 (getCurrentListMapNoExtraKeys!1299 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424423 () Bool)

(declare-fun res!248377 () Bool)

(assert (=> b!424423 (=> (not res!248377) (not e!252098))))

(declare-datatypes ((List!7284 0))(
  ( (Nil!7281) (Cons!7280 (h!8136 (_ BitVec 64)) (t!12736 List!7284)) )
))
(declare-fun arrayNoDuplicates!0 (array!25897 (_ BitVec 32) List!7284) Bool)

(assert (=> b!424423 (= res!248377 (arrayNoDuplicates!0 lt!194365 #b00000000000000000000000000000000 Nil!7281))))

(declare-fun b!424424 () Bool)

(declare-fun res!248379 () Bool)

(assert (=> b!424424 (=> (not res!248379) (not e!252102))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25897 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424424 (= res!248379 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!248375 () Bool)

(assert (=> start!39624 (=> (not res!248375) (not e!252102))))

(assert (=> start!39624 (= res!248375 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12747 _keys!709))))))

(assert (=> start!39624 e!252102))

(declare-fun tp_is_empty!11035 () Bool)

(assert (=> start!39624 tp_is_empty!11035))

(assert (=> start!39624 tp!35177))

(assert (=> start!39624 true))

(declare-fun e!252103 () Bool)

(declare-fun array_inv!9036 (array!25899) Bool)

(assert (=> start!39624 (and (array_inv!9036 _values!549) e!252103)))

(declare-fun array_inv!9037 (array!25897) Bool)

(assert (=> start!39624 (array_inv!9037 _keys!709)))

(declare-fun mapIsEmpty!18174 () Bool)

(declare-fun mapRes!18174 () Bool)

(assert (=> mapIsEmpty!18174 mapRes!18174))

(declare-fun b!424425 () Bool)

(declare-fun res!248373 () Bool)

(assert (=> b!424425 (=> (not res!248373) (not e!252098))))

(assert (=> b!424425 (= res!248373 (bvsle from!863 i!563))))

(declare-fun b!424426 () Bool)

(declare-fun e!252099 () Bool)

(assert (=> b!424426 (= e!252099 tp_is_empty!11035)))

(declare-fun b!424427 () Bool)

(declare-fun e!252101 () Bool)

(assert (=> b!424427 (= e!252103 (and e!252101 mapRes!18174))))

(declare-fun condMapEmpty!18174 () Bool)

(declare-fun mapDefault!18174 () ValueCell!5174)

