; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39676 () Bool)

(assert start!39676)

(declare-fun b_free!9935 () Bool)

(declare-fun b_next!9935 () Bool)

(assert (=> start!39676 (= b_free!9935 (not b_next!9935))))

(declare-fun tp!35334 () Bool)

(declare-fun b_and!17609 () Bool)

(assert (=> start!39676 (= tp!35334 b_and!17609)))

(declare-fun b!425660 () Bool)

(declare-fun res!249380 () Bool)

(declare-fun e!252642 () Bool)

(assert (=> b!425660 (=> (not res!249380) (not e!252642))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425660 (= res!249380 (validKeyInArray!0 k!794))))

(declare-fun b!425661 () Bool)

(declare-fun e!252639 () Bool)

(declare-fun tp_is_empty!11087 () Bool)

(assert (=> b!425661 (= e!252639 tp_is_empty!11087)))

(declare-fun mapNonEmpty!18252 () Bool)

(declare-fun mapRes!18252 () Bool)

(declare-fun tp!35333 () Bool)

(declare-fun e!252637 () Bool)

(assert (=> mapNonEmpty!18252 (= mapRes!18252 (and tp!35333 e!252637))))

(declare-datatypes ((V!15887 0))(
  ( (V!15888 (val!5588 Int)) )
))
(declare-datatypes ((ValueCell!5200 0))(
  ( (ValueCellFull!5200 (v!7831 V!15887)) (EmptyCell!5200) )
))
(declare-fun mapValue!18252 () ValueCell!5200)

(declare-fun mapKey!18252 () (_ BitVec 32))

(declare-fun mapRest!18252 () (Array (_ BitVec 32) ValueCell!5200))

(declare-datatypes ((array!25999 0))(
  ( (array!26000 (arr!12446 (Array (_ BitVec 32) ValueCell!5200)) (size!12798 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25999)

(assert (=> mapNonEmpty!18252 (= (arr!12446 _values!549) (store mapRest!18252 mapKey!18252 mapValue!18252))))

(declare-fun b!425662 () Bool)

(declare-fun e!252640 () Bool)

(assert (=> b!425662 (= e!252642 e!252640)))

(declare-fun res!249379 () Bool)

(assert (=> b!425662 (=> (not res!249379) (not e!252640))))

(declare-datatypes ((array!26001 0))(
  ( (array!26002 (arr!12447 (Array (_ BitVec 32) (_ BitVec 64))) (size!12799 (_ BitVec 32))) )
))
(declare-fun lt!194745 () array!26001)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26001 (_ BitVec 32)) Bool)

(assert (=> b!425662 (= res!249379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194745 mask!1025))))

(declare-fun _keys!709 () array!26001)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425662 (= lt!194745 (array!26002 (store (arr!12447 _keys!709) i!563 k!794) (size!12799 _keys!709)))))

(declare-fun b!425663 () Bool)

(declare-fun res!249381 () Bool)

(assert (=> b!425663 (=> (not res!249381) (not e!252642))))

(assert (=> b!425663 (= res!249381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!249386 () Bool)

(assert (=> start!39676 (=> (not res!249386) (not e!252642))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39676 (= res!249386 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12799 _keys!709))))))

(assert (=> start!39676 e!252642))

(assert (=> start!39676 tp_is_empty!11087))

(assert (=> start!39676 tp!35334))

(assert (=> start!39676 true))

(declare-fun e!252638 () Bool)

(declare-fun array_inv!9070 (array!25999) Bool)

(assert (=> start!39676 (and (array_inv!9070 _values!549) e!252638)))

(declare-fun array_inv!9071 (array!26001) Bool)

(assert (=> start!39676 (array_inv!9071 _keys!709)))

(declare-fun b!425664 () Bool)

(declare-fun res!249378 () Bool)

(assert (=> b!425664 (=> (not res!249378) (not e!252642))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!425664 (= res!249378 (and (= (size!12798 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12799 _keys!709) (size!12798 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!425665 () Bool)

(assert (=> b!425665 (= e!252637 tp_is_empty!11087)))

(declare-fun b!425666 () Bool)

(declare-fun res!249385 () Bool)

(assert (=> b!425666 (=> (not res!249385) (not e!252640))))

(assert (=> b!425666 (= res!249385 (bvsle from!863 i!563))))

(declare-fun b!425667 () Bool)

(declare-fun res!249384 () Bool)

(assert (=> b!425667 (=> (not res!249384) (not e!252642))))

(assert (=> b!425667 (= res!249384 (or (= (select (arr!12447 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12447 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!425668 () Bool)

(declare-fun res!249388 () Bool)

(assert (=> b!425668 (=> (not res!249388) (not e!252640))))

(declare-datatypes ((List!7325 0))(
  ( (Nil!7322) (Cons!7321 (h!8177 (_ BitVec 64)) (t!12777 List!7325)) )
))
(declare-fun arrayNoDuplicates!0 (array!26001 (_ BitVec 32) List!7325) Bool)

(assert (=> b!425668 (= res!249388 (arrayNoDuplicates!0 lt!194745 #b00000000000000000000000000000000 Nil!7322))))

(declare-fun b!425669 () Bool)

(declare-fun res!249389 () Bool)

(assert (=> b!425669 (=> (not res!249389) (not e!252642))))

(assert (=> b!425669 (= res!249389 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12799 _keys!709))))))

(declare-fun b!425670 () Bool)

(declare-fun e!252641 () Bool)

(assert (=> b!425670 (= e!252640 e!252641)))

(declare-fun res!249387 () Bool)

(assert (=> b!425670 (=> (not res!249387) (not e!252641))))

(assert (=> b!425670 (= res!249387 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!15887)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!194742 () array!25999)

(declare-fun zeroValue!515 () V!15887)

(declare-datatypes ((tuple2!7280 0))(
  ( (tuple2!7281 (_1!3650 (_ BitVec 64)) (_2!3650 V!15887)) )
))
(declare-datatypes ((List!7326 0))(
  ( (Nil!7323) (Cons!7322 (h!8178 tuple2!7280) (t!12778 List!7326)) )
))
(declare-datatypes ((ListLongMap!6207 0))(
  ( (ListLongMap!6208 (toList!3119 List!7326)) )
))
(declare-fun lt!194741 () ListLongMap!6207)

(declare-fun getCurrentListMapNoExtraKeys!1320 (array!26001 array!25999 (_ BitVec 32) (_ BitVec 32) V!15887 V!15887 (_ BitVec 32) Int) ListLongMap!6207)

(assert (=> b!425670 (= lt!194741 (getCurrentListMapNoExtraKeys!1320 lt!194745 lt!194742 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15887)

(assert (=> b!425670 (= lt!194742 (array!26000 (store (arr!12446 _values!549) i!563 (ValueCellFull!5200 v!412)) (size!12798 _values!549)))))

(declare-fun lt!194743 () ListLongMap!6207)

(assert (=> b!425670 (= lt!194743 (getCurrentListMapNoExtraKeys!1320 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!425671 () Bool)

(declare-fun res!249382 () Bool)

(assert (=> b!425671 (=> (not res!249382) (not e!252642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425671 (= res!249382 (validMask!0 mask!1025))))

(declare-fun b!425672 () Bool)

(declare-fun res!249390 () Bool)

(assert (=> b!425672 (=> (not res!249390) (not e!252642))))

(declare-fun arrayContainsKey!0 (array!26001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425672 (= res!249390 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!425673 () Bool)

(declare-fun res!249383 () Bool)

(assert (=> b!425673 (=> (not res!249383) (not e!252642))))

(assert (=> b!425673 (= res!249383 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7322))))

(declare-fun b!425674 () Bool)

(assert (=> b!425674 (= e!252641 (not true))))

(declare-fun +!1277 (ListLongMap!6207 tuple2!7280) ListLongMap!6207)

(assert (=> b!425674 (= (getCurrentListMapNoExtraKeys!1320 lt!194745 lt!194742 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1277 (getCurrentListMapNoExtraKeys!1320 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7281 k!794 v!412)))))

(declare-datatypes ((Unit!12457 0))(
  ( (Unit!12458) )
))
(declare-fun lt!194744 () Unit!12457)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!479 (array!26001 array!25999 (_ BitVec 32) (_ BitVec 32) V!15887 V!15887 (_ BitVec 32) (_ BitVec 64) V!15887 (_ BitVec 32) Int) Unit!12457)

(assert (=> b!425674 (= lt!194744 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!479 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!18252 () Bool)

(assert (=> mapIsEmpty!18252 mapRes!18252))

(declare-fun b!425675 () Bool)

(assert (=> b!425675 (= e!252638 (and e!252639 mapRes!18252))))

(declare-fun condMapEmpty!18252 () Bool)

(declare-fun mapDefault!18252 () ValueCell!5200)

