; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39592 () Bool)

(assert start!39592)

(declare-fun b_free!9851 () Bool)

(declare-fun b_next!9851 () Bool)

(assert (=> start!39592 (= b_free!9851 (not b_next!9851))))

(declare-fun tp!35082 () Bool)

(declare-fun b_and!17525 () Bool)

(assert (=> start!39592 (= tp!35082 b_and!17525)))

(declare-fun b!423699 () Bool)

(declare-fun res!247797 () Bool)

(declare-fun e!251814 () Bool)

(assert (=> b!423699 (=> (not res!247797) (not e!251814))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!423699 (= res!247797 (bvsle from!863 i!563))))

(declare-fun b!423700 () Bool)

(declare-fun res!247800 () Bool)

(declare-fun e!251815 () Bool)

(assert (=> b!423700 (=> (not res!247800) (not e!251815))))

(declare-datatypes ((array!25833 0))(
  ( (array!25834 (arr!12363 (Array (_ BitVec 32) (_ BitVec 64))) (size!12715 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25833)

(declare-datatypes ((List!7259 0))(
  ( (Nil!7256) (Cons!7255 (h!8111 (_ BitVec 64)) (t!12711 List!7259)) )
))
(declare-fun arrayNoDuplicates!0 (array!25833 (_ BitVec 32) List!7259) Bool)

(assert (=> b!423700 (= res!247800 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7256))))

(declare-fun b!423701 () Bool)

(declare-fun res!247795 () Bool)

(assert (=> b!423701 (=> (not res!247795) (not e!251815))))

(assert (=> b!423701 (= res!247795 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12715 _keys!709))))))

(declare-fun b!423703 () Bool)

(declare-fun e!251810 () Bool)

(declare-fun tp_is_empty!11003 () Bool)

(assert (=> b!423703 (= e!251810 tp_is_empty!11003)))

(declare-fun b!423704 () Bool)

(declare-fun res!247801 () Bool)

(assert (=> b!423704 (=> (not res!247801) (not e!251815))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423704 (= res!247801 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!18126 () Bool)

(declare-fun mapRes!18126 () Bool)

(declare-fun tp!35081 () Bool)

(declare-fun e!251811 () Bool)

(assert (=> mapNonEmpty!18126 (= mapRes!18126 (and tp!35081 e!251811))))

(declare-datatypes ((V!15775 0))(
  ( (V!15776 (val!5546 Int)) )
))
(declare-datatypes ((ValueCell!5158 0))(
  ( (ValueCellFull!5158 (v!7789 V!15775)) (EmptyCell!5158) )
))
(declare-fun mapRest!18126 () (Array (_ BitVec 32) ValueCell!5158))

(declare-datatypes ((array!25835 0))(
  ( (array!25836 (arr!12364 (Array (_ BitVec 32) ValueCell!5158)) (size!12716 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25835)

(declare-fun mapValue!18126 () ValueCell!5158)

(declare-fun mapKey!18126 () (_ BitVec 32))

(assert (=> mapNonEmpty!18126 (= (arr!12364 _values!549) (store mapRest!18126 mapKey!18126 mapValue!18126))))

(declare-fun b!423705 () Bool)

(declare-fun res!247799 () Bool)

(assert (=> b!423705 (=> (not res!247799) (not e!251815))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423705 (= res!247799 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!423706 () Bool)

(assert (=> b!423706 (= e!251815 e!251814)))

(declare-fun res!247805 () Bool)

(assert (=> b!423706 (=> (not res!247805) (not e!251814))))

(declare-fun lt!194221 () array!25833)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25833 (_ BitVec 32)) Bool)

(assert (=> b!423706 (= res!247805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194221 mask!1025))))

(assert (=> b!423706 (= lt!194221 (array!25834 (store (arr!12363 _keys!709) i!563 k!794) (size!12715 _keys!709)))))

(declare-fun b!423707 () Bool)

(assert (=> b!423707 (= e!251814 false)))

(declare-fun minValue!515 () V!15775)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15775)

(declare-datatypes ((tuple2!7212 0))(
  ( (tuple2!7213 (_1!3616 (_ BitVec 64)) (_2!3616 V!15775)) )
))
(declare-datatypes ((List!7260 0))(
  ( (Nil!7257) (Cons!7256 (h!8112 tuple2!7212) (t!12712 List!7260)) )
))
(declare-datatypes ((ListLongMap!6139 0))(
  ( (ListLongMap!6140 (toList!3085 List!7260)) )
))
(declare-fun lt!194223 () ListLongMap!6139)

(declare-fun defaultEntry!557 () Int)

(declare-fun v!412 () V!15775)

(declare-fun getCurrentListMapNoExtraKeys!1286 (array!25833 array!25835 (_ BitVec 32) (_ BitVec 32) V!15775 V!15775 (_ BitVec 32) Int) ListLongMap!6139)

(assert (=> b!423707 (= lt!194223 (getCurrentListMapNoExtraKeys!1286 lt!194221 (array!25836 (store (arr!12364 _values!549) i!563 (ValueCellFull!5158 v!412)) (size!12716 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194222 () ListLongMap!6139)

(assert (=> b!423707 (= lt!194222 (getCurrentListMapNoExtraKeys!1286 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423708 () Bool)

(declare-fun res!247806 () Bool)

(assert (=> b!423708 (=> (not res!247806) (not e!251815))))

(assert (=> b!423708 (= res!247806 (and (= (size!12716 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12715 _keys!709) (size!12716 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423709 () Bool)

(assert (=> b!423709 (= e!251811 tp_is_empty!11003)))

(declare-fun b!423710 () Bool)

(declare-fun res!247802 () Bool)

(assert (=> b!423710 (=> (not res!247802) (not e!251815))))

(assert (=> b!423710 (= res!247802 (or (= (select (arr!12363 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12363 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423702 () Bool)

(declare-fun res!247798 () Bool)

(assert (=> b!423702 (=> (not res!247798) (not e!251814))))

(assert (=> b!423702 (= res!247798 (arrayNoDuplicates!0 lt!194221 #b00000000000000000000000000000000 Nil!7256))))

(declare-fun res!247803 () Bool)

(assert (=> start!39592 (=> (not res!247803) (not e!251815))))

(assert (=> start!39592 (= res!247803 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12715 _keys!709))))))

(assert (=> start!39592 e!251815))

(assert (=> start!39592 tp_is_empty!11003))

(assert (=> start!39592 tp!35082))

(assert (=> start!39592 true))

(declare-fun e!251813 () Bool)

(declare-fun array_inv!9014 (array!25835) Bool)

(assert (=> start!39592 (and (array_inv!9014 _values!549) e!251813)))

(declare-fun array_inv!9015 (array!25833) Bool)

(assert (=> start!39592 (array_inv!9015 _keys!709)))

(declare-fun b!423711 () Bool)

(declare-fun res!247804 () Bool)

(assert (=> b!423711 (=> (not res!247804) (not e!251815))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423711 (= res!247804 (validKeyInArray!0 k!794))))

(declare-fun b!423712 () Bool)

(assert (=> b!423712 (= e!251813 (and e!251810 mapRes!18126))))

(declare-fun condMapEmpty!18126 () Bool)

(declare-fun mapDefault!18126 () ValueCell!5158)

