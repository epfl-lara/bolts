; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39612 () Bool)

(assert start!39612)

(declare-fun b_free!9871 () Bool)

(declare-fun b_next!9871 () Bool)

(assert (=> start!39612 (= b_free!9871 (not b_next!9871))))

(declare-fun tp!35141 () Bool)

(declare-fun b_and!17545 () Bool)

(assert (=> start!39612 (= tp!35141 b_and!17545)))

(declare-fun b!424149 () Bool)

(declare-fun e!251991 () Bool)

(assert (=> b!424149 (= e!251991 false)))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15803 0))(
  ( (V!15804 (val!5556 Int)) )
))
(declare-datatypes ((ValueCell!5168 0))(
  ( (ValueCellFull!5168 (v!7799 V!15803)) (EmptyCell!5168) )
))
(declare-datatypes ((array!25873 0))(
  ( (array!25874 (arr!12383 (Array (_ BitVec 32) ValueCell!5168)) (size!12735 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25873)

(declare-fun zeroValue!515 () V!15803)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25875 0))(
  ( (array!25876 (arr!12384 (Array (_ BitVec 32) (_ BitVec 64))) (size!12736 (_ BitVec 32))) )
))
(declare-fun lt!194313 () array!25875)

(declare-fun v!412 () V!15803)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7226 0))(
  ( (tuple2!7227 (_1!3623 (_ BitVec 64)) (_2!3623 V!15803)) )
))
(declare-datatypes ((List!7273 0))(
  ( (Nil!7270) (Cons!7269 (h!8125 tuple2!7226) (t!12725 List!7273)) )
))
(declare-datatypes ((ListLongMap!6153 0))(
  ( (ListLongMap!6154 (toList!3092 List!7273)) )
))
(declare-fun lt!194312 () ListLongMap!6153)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15803)

(declare-fun getCurrentListMapNoExtraKeys!1293 (array!25875 array!25873 (_ BitVec 32) (_ BitVec 32) V!15803 V!15803 (_ BitVec 32) Int) ListLongMap!6153)

(assert (=> b!424149 (= lt!194312 (getCurrentListMapNoExtraKeys!1293 lt!194313 (array!25874 (store (arr!12383 _values!549) i!563 (ValueCellFull!5168 v!412)) (size!12735 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _keys!709 () array!25875)

(declare-fun lt!194311 () ListLongMap!6153)

(assert (=> b!424149 (= lt!194311 (getCurrentListMapNoExtraKeys!1293 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424150 () Bool)

(declare-fun res!248156 () Bool)

(assert (=> b!424150 (=> (not res!248156) (not e!251991))))

(assert (=> b!424150 (= res!248156 (bvsle from!863 i!563))))

(declare-fun b!424151 () Bool)

(declare-fun res!248159 () Bool)

(declare-fun e!251993 () Bool)

(assert (=> b!424151 (=> (not res!248159) (not e!251993))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424151 (= res!248159 (validKeyInArray!0 k!794))))

(declare-fun b!424152 () Bool)

(declare-fun res!248164 () Bool)

(assert (=> b!424152 (=> (not res!248164) (not e!251993))))

(declare-datatypes ((List!7274 0))(
  ( (Nil!7271) (Cons!7270 (h!8126 (_ BitVec 64)) (t!12726 List!7274)) )
))
(declare-fun arrayNoDuplicates!0 (array!25875 (_ BitVec 32) List!7274) Bool)

(assert (=> b!424152 (= res!248164 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7271))))

(declare-fun res!248158 () Bool)

(assert (=> start!39612 (=> (not res!248158) (not e!251993))))

(assert (=> start!39612 (= res!248158 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12736 _keys!709))))))

(assert (=> start!39612 e!251993))

(declare-fun tp_is_empty!11023 () Bool)

(assert (=> start!39612 tp_is_empty!11023))

(assert (=> start!39612 tp!35141))

(assert (=> start!39612 true))

(declare-fun e!251990 () Bool)

(declare-fun array_inv!9028 (array!25873) Bool)

(assert (=> start!39612 (and (array_inv!9028 _values!549) e!251990)))

(declare-fun array_inv!9029 (array!25875) Bool)

(assert (=> start!39612 (array_inv!9029 _keys!709)))

(declare-fun b!424153 () Bool)

(declare-fun res!248166 () Bool)

(assert (=> b!424153 (=> (not res!248166) (not e!251993))))

(assert (=> b!424153 (= res!248166 (or (= (select (arr!12384 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12384 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18156 () Bool)

(declare-fun mapRes!18156 () Bool)

(declare-fun tp!35142 () Bool)

(declare-fun e!251995 () Bool)

(assert (=> mapNonEmpty!18156 (= mapRes!18156 (and tp!35142 e!251995))))

(declare-fun mapValue!18156 () ValueCell!5168)

(declare-fun mapKey!18156 () (_ BitVec 32))

(declare-fun mapRest!18156 () (Array (_ BitVec 32) ValueCell!5168))

(assert (=> mapNonEmpty!18156 (= (arr!12383 _values!549) (store mapRest!18156 mapKey!18156 mapValue!18156))))

(declare-fun mapIsEmpty!18156 () Bool)

(assert (=> mapIsEmpty!18156 mapRes!18156))

(declare-fun b!424154 () Bool)

(declare-fun res!248163 () Bool)

(assert (=> b!424154 (=> (not res!248163) (not e!251993))))

(assert (=> b!424154 (= res!248163 (and (= (size!12735 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12736 _keys!709) (size!12735 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424155 () Bool)

(declare-fun res!248161 () Bool)

(assert (=> b!424155 (=> (not res!248161) (not e!251991))))

(assert (=> b!424155 (= res!248161 (arrayNoDuplicates!0 lt!194313 #b00000000000000000000000000000000 Nil!7271))))

(declare-fun b!424156 () Bool)

(declare-fun res!248162 () Bool)

(assert (=> b!424156 (=> (not res!248162) (not e!251993))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25875 (_ BitVec 32)) Bool)

(assert (=> b!424156 (= res!248162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424157 () Bool)

(declare-fun res!248165 () Bool)

(assert (=> b!424157 (=> (not res!248165) (not e!251993))))

(assert (=> b!424157 (= res!248165 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12736 _keys!709))))))

(declare-fun b!424158 () Bool)

(declare-fun res!248160 () Bool)

(assert (=> b!424158 (=> (not res!248160) (not e!251993))))

(declare-fun arrayContainsKey!0 (array!25875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424158 (= res!248160 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!424159 () Bool)

(assert (=> b!424159 (= e!251993 e!251991)))

(declare-fun res!248157 () Bool)

(assert (=> b!424159 (=> (not res!248157) (not e!251991))))

(assert (=> b!424159 (= res!248157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194313 mask!1025))))

(assert (=> b!424159 (= lt!194313 (array!25876 (store (arr!12384 _keys!709) i!563 k!794) (size!12736 _keys!709)))))

(declare-fun b!424160 () Bool)

(declare-fun e!251992 () Bool)

(assert (=> b!424160 (= e!251990 (and e!251992 mapRes!18156))))

(declare-fun condMapEmpty!18156 () Bool)

(declare-fun mapDefault!18156 () ValueCell!5168)

