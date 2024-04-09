; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39630 () Bool)

(assert start!39630)

(declare-fun b_free!9889 () Bool)

(declare-fun b_next!9889 () Bool)

(assert (=> start!39630 (= b_free!9889 (not b_next!9889))))

(declare-fun tp!35196 () Bool)

(declare-fun b_and!17563 () Bool)

(assert (=> start!39630 (= tp!35196 b_and!17563)))

(declare-fun b!424556 () Bool)

(declare-fun e!252156 () Bool)

(assert (=> b!424556 (= e!252156 (not true))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((V!15827 0))(
  ( (V!15828 (val!5565 Int)) )
))
(declare-datatypes ((ValueCell!5177 0))(
  ( (ValueCellFull!5177 (v!7808 V!15827)) (EmptyCell!5177) )
))
(declare-datatypes ((array!25909 0))(
  ( (array!25910 (arr!12401 (Array (_ BitVec 32) ValueCell!5177)) (size!12753 (_ BitVec 32))) )
))
(declare-fun lt!194396 () array!25909)

(declare-fun _values!549 () array!25909)

(declare-fun zeroValue!515 () V!15827)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15827)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25911 0))(
  ( (array!25912 (arr!12402 (Array (_ BitVec 32) (_ BitVec 64))) (size!12754 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25911)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15827)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!194398 () array!25911)

(declare-datatypes ((tuple2!7242 0))(
  ( (tuple2!7243 (_1!3631 (_ BitVec 64)) (_2!3631 V!15827)) )
))
(declare-datatypes ((List!7287 0))(
  ( (Nil!7284) (Cons!7283 (h!8139 tuple2!7242) (t!12739 List!7287)) )
))
(declare-datatypes ((ListLongMap!6169 0))(
  ( (ListLongMap!6170 (toList!3100 List!7287)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1301 (array!25911 array!25909 (_ BitVec 32) (_ BitVec 32) V!15827 V!15827 (_ BitVec 32) Int) ListLongMap!6169)

(declare-fun +!1263 (ListLongMap!6169 tuple2!7242) ListLongMap!6169)

(assert (=> b!424556 (= (getCurrentListMapNoExtraKeys!1301 lt!194398 lt!194396 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1263 (getCurrentListMapNoExtraKeys!1301 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7243 k!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12429 0))(
  ( (Unit!12430) )
))
(declare-fun lt!194397 () Unit!12429)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!465 (array!25911 array!25909 (_ BitVec 32) (_ BitVec 32) V!15827 V!15827 (_ BitVec 32) (_ BitVec 64) V!15827 (_ BitVec 32) Int) Unit!12429)

(assert (=> b!424556 (= lt!194397 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!465 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!424557 () Bool)

(declare-fun res!248490 () Bool)

(declare-fun e!252158 () Bool)

(assert (=> b!424557 (=> (not res!248490) (not e!252158))))

(assert (=> b!424557 (= res!248490 (and (= (size!12753 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12754 _keys!709) (size!12753 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424559 () Bool)

(declare-fun e!252159 () Bool)

(assert (=> b!424559 (= e!252158 e!252159)))

(declare-fun res!248488 () Bool)

(assert (=> b!424559 (=> (not res!248488) (not e!252159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25911 (_ BitVec 32)) Bool)

(assert (=> b!424559 (= res!248488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194398 mask!1025))))

(assert (=> b!424559 (= lt!194398 (array!25912 (store (arr!12402 _keys!709) i!563 k!794) (size!12754 _keys!709)))))

(declare-fun b!424560 () Bool)

(declare-fun res!248481 () Bool)

(assert (=> b!424560 (=> (not res!248481) (not e!252158))))

(assert (=> b!424560 (= res!248481 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12754 _keys!709))))))

(declare-fun b!424561 () Bool)

(declare-fun res!248486 () Bool)

(assert (=> b!424561 (=> (not res!248486) (not e!252158))))

(declare-fun arrayContainsKey!0 (array!25911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424561 (= res!248486 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!424562 () Bool)

(declare-fun res!248489 () Bool)

(assert (=> b!424562 (=> (not res!248489) (not e!252158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424562 (= res!248489 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!18183 () Bool)

(declare-fun mapRes!18183 () Bool)

(assert (=> mapIsEmpty!18183 mapRes!18183))

(declare-fun b!424563 () Bool)

(declare-fun res!248482 () Bool)

(assert (=> b!424563 (=> (not res!248482) (not e!252158))))

(declare-datatypes ((List!7288 0))(
  ( (Nil!7285) (Cons!7284 (h!8140 (_ BitVec 64)) (t!12740 List!7288)) )
))
(declare-fun arrayNoDuplicates!0 (array!25911 (_ BitVec 32) List!7288) Bool)

(assert (=> b!424563 (= res!248482 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7285))))

(declare-fun b!424564 () Bool)

(declare-fun e!252160 () Bool)

(declare-fun tp_is_empty!11041 () Bool)

(assert (=> b!424564 (= e!252160 tp_is_empty!11041)))

(declare-fun b!424565 () Bool)

(declare-fun res!248493 () Bool)

(assert (=> b!424565 (=> (not res!248493) (not e!252158))))

(assert (=> b!424565 (= res!248493 (or (= (select (arr!12402 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12402 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!424558 () Bool)

(declare-fun e!252155 () Bool)

(assert (=> b!424558 (= e!252155 tp_is_empty!11041)))

(declare-fun res!248487 () Bool)

(assert (=> start!39630 (=> (not res!248487) (not e!252158))))

(assert (=> start!39630 (= res!248487 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12754 _keys!709))))))

(assert (=> start!39630 e!252158))

(assert (=> start!39630 tp_is_empty!11041))

(assert (=> start!39630 tp!35196))

(assert (=> start!39630 true))

(declare-fun e!252157 () Bool)

(declare-fun array_inv!9040 (array!25909) Bool)

(assert (=> start!39630 (and (array_inv!9040 _values!549) e!252157)))

(declare-fun array_inv!9041 (array!25911) Bool)

(assert (=> start!39630 (array_inv!9041 _keys!709)))

(declare-fun b!424566 () Bool)

(assert (=> b!424566 (= e!252159 e!252156)))

(declare-fun res!248484 () Bool)

(assert (=> b!424566 (=> (not res!248484) (not e!252156))))

(assert (=> b!424566 (= res!248484 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!194399 () ListLongMap!6169)

(assert (=> b!424566 (= lt!194399 (getCurrentListMapNoExtraKeys!1301 lt!194398 lt!194396 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!424566 (= lt!194396 (array!25910 (store (arr!12401 _values!549) i!563 (ValueCellFull!5177 v!412)) (size!12753 _values!549)))))

(declare-fun lt!194400 () ListLongMap!6169)

(assert (=> b!424566 (= lt!194400 (getCurrentListMapNoExtraKeys!1301 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424567 () Bool)

(declare-fun res!248485 () Bool)

(assert (=> b!424567 (=> (not res!248485) (not e!252158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424567 (= res!248485 (validMask!0 mask!1025))))

(declare-fun b!424568 () Bool)

(declare-fun res!248492 () Bool)

(assert (=> b!424568 (=> (not res!248492) (not e!252158))))

(assert (=> b!424568 (= res!248492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424569 () Bool)

(declare-fun res!248491 () Bool)

(assert (=> b!424569 (=> (not res!248491) (not e!252159))))

(assert (=> b!424569 (= res!248491 (arrayNoDuplicates!0 lt!194398 #b00000000000000000000000000000000 Nil!7285))))

(declare-fun b!424570 () Bool)

(declare-fun res!248483 () Bool)

(assert (=> b!424570 (=> (not res!248483) (not e!252159))))

(assert (=> b!424570 (= res!248483 (bvsle from!863 i!563))))

(declare-fun b!424571 () Bool)

(assert (=> b!424571 (= e!252157 (and e!252160 mapRes!18183))))

(declare-fun condMapEmpty!18183 () Bool)

(declare-fun mapDefault!18183 () ValueCell!5177)

