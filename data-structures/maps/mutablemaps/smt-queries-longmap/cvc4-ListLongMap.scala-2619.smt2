; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39544 () Bool)

(assert start!39544)

(declare-fun b_free!9803 () Bool)

(declare-fun b_next!9803 () Bool)

(assert (=> start!39544 (= b_free!9803 (not b_next!9803))))

(declare-fun tp!34938 () Bool)

(declare-fun b_and!17477 () Bool)

(assert (=> start!39544 (= tp!34938 b_and!17477)))

(declare-fun b!422619 () Bool)

(declare-fun res!246937 () Bool)

(declare-fun e!251378 () Bool)

(assert (=> b!422619 (=> (not res!246937) (not e!251378))))

(declare-datatypes ((array!25737 0))(
  ( (array!25738 (arr!12315 (Array (_ BitVec 32) (_ BitVec 64))) (size!12667 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25737)

(declare-datatypes ((List!7222 0))(
  ( (Nil!7219) (Cons!7218 (h!8074 (_ BitVec 64)) (t!12674 List!7222)) )
))
(declare-fun arrayNoDuplicates!0 (array!25737 (_ BitVec 32) List!7222) Bool)

(assert (=> b!422619 (= res!246937 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7219))))

(declare-fun b!422620 () Bool)

(declare-fun res!246938 () Bool)

(assert (=> b!422620 (=> (not res!246938) (not e!251378))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422620 (= res!246938 (validMask!0 mask!1025))))

(declare-fun b!422621 () Bool)

(declare-fun res!246931 () Bool)

(assert (=> b!422621 (=> (not res!246931) (not e!251378))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422621 (= res!246931 (validKeyInArray!0 k!794))))

(declare-fun b!422622 () Bool)

(declare-fun res!246940 () Bool)

(assert (=> b!422622 (=> (not res!246940) (not e!251378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25737 (_ BitVec 32)) Bool)

(assert (=> b!422622 (= res!246940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422623 () Bool)

(declare-fun e!251379 () Bool)

(assert (=> b!422623 (= e!251379 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15711 0))(
  ( (V!15712 (val!5522 Int)) )
))
(declare-fun minValue!515 () V!15711)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!194006 () array!25737)

(declare-fun zeroValue!515 () V!15711)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!7178 0))(
  ( (tuple2!7179 (_1!3599 (_ BitVec 64)) (_2!3599 V!15711)) )
))
(declare-datatypes ((List!7223 0))(
  ( (Nil!7220) (Cons!7219 (h!8075 tuple2!7178) (t!12675 List!7223)) )
))
(declare-datatypes ((ListLongMap!6105 0))(
  ( (ListLongMap!6106 (toList!3068 List!7223)) )
))
(declare-fun lt!194007 () ListLongMap!6105)

(declare-fun v!412 () V!15711)

(declare-datatypes ((ValueCell!5134 0))(
  ( (ValueCellFull!5134 (v!7765 V!15711)) (EmptyCell!5134) )
))
(declare-datatypes ((array!25739 0))(
  ( (array!25740 (arr!12316 (Array (_ BitVec 32) ValueCell!5134)) (size!12668 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25739)

(declare-fun getCurrentListMapNoExtraKeys!1269 (array!25737 array!25739 (_ BitVec 32) (_ BitVec 32) V!15711 V!15711 (_ BitVec 32) Int) ListLongMap!6105)

(assert (=> b!422623 (= lt!194007 (getCurrentListMapNoExtraKeys!1269 lt!194006 (array!25740 (store (arr!12316 _values!549) i!563 (ValueCellFull!5134 v!412)) (size!12668 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194005 () ListLongMap!6105)

(assert (=> b!422623 (= lt!194005 (getCurrentListMapNoExtraKeys!1269 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!18054 () Bool)

(declare-fun mapRes!18054 () Bool)

(declare-fun tp!34937 () Bool)

(declare-fun e!251380 () Bool)

(assert (=> mapNonEmpty!18054 (= mapRes!18054 (and tp!34937 e!251380))))

(declare-fun mapKey!18054 () (_ BitVec 32))

(declare-fun mapRest!18054 () (Array (_ BitVec 32) ValueCell!5134))

(declare-fun mapValue!18054 () ValueCell!5134)

(assert (=> mapNonEmpty!18054 (= (arr!12316 _values!549) (store mapRest!18054 mapKey!18054 mapValue!18054))))

(declare-fun b!422624 () Bool)

(assert (=> b!422624 (= e!251378 e!251379)))

(declare-fun res!246934 () Bool)

(assert (=> b!422624 (=> (not res!246934) (not e!251379))))

(assert (=> b!422624 (= res!246934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194006 mask!1025))))

(assert (=> b!422624 (= lt!194006 (array!25738 (store (arr!12315 _keys!709) i!563 k!794) (size!12667 _keys!709)))))

(declare-fun b!422625 () Bool)

(declare-fun res!246932 () Bool)

(assert (=> b!422625 (=> (not res!246932) (not e!251378))))

(assert (=> b!422625 (= res!246932 (and (= (size!12668 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12667 _keys!709) (size!12668 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!246942 () Bool)

(assert (=> start!39544 (=> (not res!246942) (not e!251378))))

(assert (=> start!39544 (= res!246942 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12667 _keys!709))))))

(assert (=> start!39544 e!251378))

(declare-fun tp_is_empty!10955 () Bool)

(assert (=> start!39544 tp_is_empty!10955))

(assert (=> start!39544 tp!34938))

(assert (=> start!39544 true))

(declare-fun e!251381 () Bool)

(declare-fun array_inv!8972 (array!25739) Bool)

(assert (=> start!39544 (and (array_inv!8972 _values!549) e!251381)))

(declare-fun array_inv!8973 (array!25737) Bool)

(assert (=> start!39544 (array_inv!8973 _keys!709)))

(declare-fun b!422626 () Bool)

(declare-fun res!246939 () Bool)

(assert (=> b!422626 (=> (not res!246939) (not e!251378))))

(assert (=> b!422626 (= res!246939 (or (= (select (arr!12315 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12315 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!422627 () Bool)

(declare-fun res!246936 () Bool)

(assert (=> b!422627 (=> (not res!246936) (not e!251379))))

(assert (=> b!422627 (= res!246936 (arrayNoDuplicates!0 lt!194006 #b00000000000000000000000000000000 Nil!7219))))

(declare-fun mapIsEmpty!18054 () Bool)

(assert (=> mapIsEmpty!18054 mapRes!18054))

(declare-fun b!422628 () Bool)

(declare-fun res!246933 () Bool)

(assert (=> b!422628 (=> (not res!246933) (not e!251378))))

(declare-fun arrayContainsKey!0 (array!25737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422628 (= res!246933 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!422629 () Bool)

(declare-fun e!251383 () Bool)

(assert (=> b!422629 (= e!251383 tp_is_empty!10955)))

(declare-fun b!422630 () Bool)

(assert (=> b!422630 (= e!251381 (and e!251383 mapRes!18054))))

(declare-fun condMapEmpty!18054 () Bool)

(declare-fun mapDefault!18054 () ValueCell!5134)

