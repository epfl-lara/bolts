; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39562 () Bool)

(assert start!39562)

(declare-fun b_free!9821 () Bool)

(declare-fun b_next!9821 () Bool)

(assert (=> start!39562 (= b_free!9821 (not b_next!9821))))

(declare-fun tp!34992 () Bool)

(declare-fun b_and!17495 () Bool)

(assert (=> start!39562 (= tp!34992 b_and!17495)))

(declare-fun res!247257 () Bool)

(declare-fun e!251543 () Bool)

(assert (=> start!39562 (=> (not res!247257) (not e!251543))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25773 0))(
  ( (array!25774 (arr!12333 (Array (_ BitVec 32) (_ BitVec 64))) (size!12685 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25773)

(assert (=> start!39562 (= res!247257 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12685 _keys!709))))))

(assert (=> start!39562 e!251543))

(declare-fun tp_is_empty!10973 () Bool)

(assert (=> start!39562 tp_is_empty!10973))

(assert (=> start!39562 tp!34992))

(assert (=> start!39562 true))

(declare-datatypes ((V!15735 0))(
  ( (V!15736 (val!5531 Int)) )
))
(declare-datatypes ((ValueCell!5143 0))(
  ( (ValueCellFull!5143 (v!7774 V!15735)) (EmptyCell!5143) )
))
(declare-datatypes ((array!25775 0))(
  ( (array!25776 (arr!12334 (Array (_ BitVec 32) ValueCell!5143)) (size!12686 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25775)

(declare-fun e!251540 () Bool)

(declare-fun array_inv!8988 (array!25775) Bool)

(assert (=> start!39562 (and (array_inv!8988 _values!549) e!251540)))

(declare-fun array_inv!8989 (array!25773) Bool)

(assert (=> start!39562 (array_inv!8989 _keys!709)))

(declare-fun mapIsEmpty!18081 () Bool)

(declare-fun mapRes!18081 () Bool)

(assert (=> mapIsEmpty!18081 mapRes!18081))

(declare-fun mapNonEmpty!18081 () Bool)

(declare-fun tp!34991 () Bool)

(declare-fun e!251541 () Bool)

(assert (=> mapNonEmpty!18081 (= mapRes!18081 (and tp!34991 e!251541))))

(declare-fun mapValue!18081 () ValueCell!5143)

(declare-fun mapKey!18081 () (_ BitVec 32))

(declare-fun mapRest!18081 () (Array (_ BitVec 32) ValueCell!5143))

(assert (=> mapNonEmpty!18081 (= (arr!12334 _values!549) (store mapRest!18081 mapKey!18081 mapValue!18081))))

(declare-fun b!423024 () Bool)

(declare-fun e!251545 () Bool)

(assert (=> b!423024 (= e!251545 false)))

(declare-fun minValue!515 () V!15735)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!194087 () array!25773)

(declare-fun zeroValue!515 () V!15735)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15735)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7192 0))(
  ( (tuple2!7193 (_1!3606 (_ BitVec 64)) (_2!3606 V!15735)) )
))
(declare-datatypes ((List!7237 0))(
  ( (Nil!7234) (Cons!7233 (h!8089 tuple2!7192) (t!12689 List!7237)) )
))
(declare-datatypes ((ListLongMap!6119 0))(
  ( (ListLongMap!6120 (toList!3075 List!7237)) )
))
(declare-fun lt!194086 () ListLongMap!6119)

(declare-fun getCurrentListMapNoExtraKeys!1276 (array!25773 array!25775 (_ BitVec 32) (_ BitVec 32) V!15735 V!15735 (_ BitVec 32) Int) ListLongMap!6119)

(assert (=> b!423024 (= lt!194086 (getCurrentListMapNoExtraKeys!1276 lt!194087 (array!25776 (store (arr!12334 _values!549) i!563 (ValueCellFull!5143 v!412)) (size!12686 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194088 () ListLongMap!6119)

(assert (=> b!423024 (= lt!194088 (getCurrentListMapNoExtraKeys!1276 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423025 () Bool)

(declare-fun res!247265 () Bool)

(assert (=> b!423025 (=> (not res!247265) (not e!251545))))

(assert (=> b!423025 (= res!247265 (bvsle from!863 i!563))))

(declare-fun b!423026 () Bool)

(declare-fun res!247260 () Bool)

(assert (=> b!423026 (=> (not res!247260) (not e!251545))))

(declare-datatypes ((List!7238 0))(
  ( (Nil!7235) (Cons!7234 (h!8090 (_ BitVec 64)) (t!12690 List!7238)) )
))
(declare-fun arrayNoDuplicates!0 (array!25773 (_ BitVec 32) List!7238) Bool)

(assert (=> b!423026 (= res!247260 (arrayNoDuplicates!0 lt!194087 #b00000000000000000000000000000000 Nil!7235))))

(declare-fun b!423027 () Bool)

(declare-fun res!247266 () Bool)

(assert (=> b!423027 (=> (not res!247266) (not e!251543))))

(assert (=> b!423027 (= res!247266 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7235))))

(declare-fun b!423028 () Bool)

(declare-fun e!251542 () Bool)

(assert (=> b!423028 (= e!251542 tp_is_empty!10973)))

(declare-fun b!423029 () Bool)

(declare-fun res!247256 () Bool)

(assert (=> b!423029 (=> (not res!247256) (not e!251543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25773 (_ BitVec 32)) Bool)

(assert (=> b!423029 (= res!247256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!423030 () Bool)

(declare-fun res!247263 () Bool)

(assert (=> b!423030 (=> (not res!247263) (not e!251543))))

(assert (=> b!423030 (= res!247263 (and (= (size!12686 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12685 _keys!709) (size!12686 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423031 () Bool)

(declare-fun res!247261 () Bool)

(assert (=> b!423031 (=> (not res!247261) (not e!251543))))

(assert (=> b!423031 (= res!247261 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12685 _keys!709))))))

(declare-fun b!423032 () Bool)

(declare-fun res!247264 () Bool)

(assert (=> b!423032 (=> (not res!247264) (not e!251543))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423032 (= res!247264 (validKeyInArray!0 k!794))))

(declare-fun b!423033 () Bool)

(assert (=> b!423033 (= e!251541 tp_is_empty!10973)))

(declare-fun b!423034 () Bool)

(declare-fun res!247262 () Bool)

(assert (=> b!423034 (=> (not res!247262) (not e!251543))))

(assert (=> b!423034 (= res!247262 (or (= (select (arr!12333 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12333 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423035 () Bool)

(declare-fun res!247255 () Bool)

(assert (=> b!423035 (=> (not res!247255) (not e!251543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423035 (= res!247255 (validMask!0 mask!1025))))

(declare-fun b!423036 () Bool)

(assert (=> b!423036 (= e!251543 e!251545)))

(declare-fun res!247258 () Bool)

(assert (=> b!423036 (=> (not res!247258) (not e!251545))))

(assert (=> b!423036 (= res!247258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194087 mask!1025))))

(assert (=> b!423036 (= lt!194087 (array!25774 (store (arr!12333 _keys!709) i!563 k!794) (size!12685 _keys!709)))))

(declare-fun b!423037 () Bool)

(assert (=> b!423037 (= e!251540 (and e!251542 mapRes!18081))))

(declare-fun condMapEmpty!18081 () Bool)

(declare-fun mapDefault!18081 () ValueCell!5143)

