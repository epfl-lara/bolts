; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39550 () Bool)

(assert start!39550)

(declare-fun b_free!9809 () Bool)

(declare-fun b_next!9809 () Bool)

(assert (=> start!39550 (= b_free!9809 (not b_next!9809))))

(declare-fun tp!34955 () Bool)

(declare-fun b_and!17483 () Bool)

(assert (=> start!39550 (= tp!34955 b_and!17483)))

(declare-fun b!422754 () Bool)

(declare-fun res!247050 () Bool)

(declare-fun e!251436 () Bool)

(assert (=> b!422754 (=> (not res!247050) (not e!251436))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422754 (= res!247050 (validKeyInArray!0 k!794))))

(declare-fun b!422755 () Bool)

(declare-fun e!251434 () Bool)

(assert (=> b!422755 (= e!251434 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15719 0))(
  ( (V!15720 (val!5525 Int)) )
))
(declare-fun minValue!515 () V!15719)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5137 0))(
  ( (ValueCellFull!5137 (v!7768 V!15719)) (EmptyCell!5137) )
))
(declare-datatypes ((array!25749 0))(
  ( (array!25750 (arr!12321 (Array (_ BitVec 32) ValueCell!5137)) (size!12673 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25749)

(declare-fun zeroValue!515 () V!15719)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!7182 0))(
  ( (tuple2!7183 (_1!3601 (_ BitVec 64)) (_2!3601 V!15719)) )
))
(declare-datatypes ((List!7227 0))(
  ( (Nil!7224) (Cons!7223 (h!8079 tuple2!7182) (t!12679 List!7227)) )
))
(declare-datatypes ((ListLongMap!6109 0))(
  ( (ListLongMap!6110 (toList!3070 List!7227)) )
))
(declare-fun lt!194033 () ListLongMap!6109)

(declare-fun v!412 () V!15719)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25751 0))(
  ( (array!25752 (arr!12322 (Array (_ BitVec 32) (_ BitVec 64))) (size!12674 (_ BitVec 32))) )
))
(declare-fun lt!194032 () array!25751)

(declare-fun getCurrentListMapNoExtraKeys!1271 (array!25751 array!25749 (_ BitVec 32) (_ BitVec 32) V!15719 V!15719 (_ BitVec 32) Int) ListLongMap!6109)

(assert (=> b!422755 (= lt!194033 (getCurrentListMapNoExtraKeys!1271 lt!194032 (array!25750 (store (arr!12321 _values!549) i!563 (ValueCellFull!5137 v!412)) (size!12673 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194034 () ListLongMap!6109)

(declare-fun _keys!709 () array!25751)

(assert (=> b!422755 (= lt!194034 (getCurrentListMapNoExtraKeys!1271 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422756 () Bool)

(declare-fun res!247044 () Bool)

(assert (=> b!422756 (=> (not res!247044) (not e!251436))))

(declare-datatypes ((List!7228 0))(
  ( (Nil!7225) (Cons!7224 (h!8080 (_ BitVec 64)) (t!12680 List!7228)) )
))
(declare-fun arrayNoDuplicates!0 (array!25751 (_ BitVec 32) List!7228) Bool)

(assert (=> b!422756 (= res!247044 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7225))))

(declare-fun b!422757 () Bool)

(declare-fun res!247049 () Bool)

(assert (=> b!422757 (=> (not res!247049) (not e!251436))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25751 (_ BitVec 32)) Bool)

(assert (=> b!422757 (= res!247049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422758 () Bool)

(declare-fun res!247043 () Bool)

(assert (=> b!422758 (=> (not res!247043) (not e!251434))))

(assert (=> b!422758 (= res!247043 (arrayNoDuplicates!0 lt!194032 #b00000000000000000000000000000000 Nil!7225))))

(declare-fun b!422759 () Bool)

(declare-fun res!247040 () Bool)

(assert (=> b!422759 (=> (not res!247040) (not e!251436))))

(assert (=> b!422759 (= res!247040 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12674 _keys!709))))))

(declare-fun b!422760 () Bool)

(declare-fun e!251432 () Bool)

(declare-fun tp_is_empty!10961 () Bool)

(assert (=> b!422760 (= e!251432 tp_is_empty!10961)))

(declare-fun b!422761 () Bool)

(declare-fun res!247039 () Bool)

(assert (=> b!422761 (=> (not res!247039) (not e!251436))))

(assert (=> b!422761 (= res!247039 (or (= (select (arr!12322 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12322 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!422762 () Bool)

(declare-fun res!247045 () Bool)

(assert (=> b!422762 (=> (not res!247045) (not e!251434))))

(assert (=> b!422762 (= res!247045 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18063 () Bool)

(declare-fun mapRes!18063 () Bool)

(assert (=> mapIsEmpty!18063 mapRes!18063))

(declare-fun b!422763 () Bool)

(declare-fun res!247046 () Bool)

(assert (=> b!422763 (=> (not res!247046) (not e!251436))))

(declare-fun arrayContainsKey!0 (array!25751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422763 (= res!247046 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!422764 () Bool)

(declare-fun res!247047 () Bool)

(assert (=> b!422764 (=> (not res!247047) (not e!251436))))

(assert (=> b!422764 (= res!247047 (and (= (size!12673 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12674 _keys!709) (size!12673 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!247041 () Bool)

(assert (=> start!39550 (=> (not res!247041) (not e!251436))))

(assert (=> start!39550 (= res!247041 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12674 _keys!709))))))

(assert (=> start!39550 e!251436))

(assert (=> start!39550 tp_is_empty!10961))

(assert (=> start!39550 tp!34955))

(assert (=> start!39550 true))

(declare-fun e!251437 () Bool)

(declare-fun array_inv!8978 (array!25749) Bool)

(assert (=> start!39550 (and (array_inv!8978 _values!549) e!251437)))

(declare-fun array_inv!8979 (array!25751) Bool)

(assert (=> start!39550 (array_inv!8979 _keys!709)))

(declare-fun mapNonEmpty!18063 () Bool)

(declare-fun tp!34956 () Bool)

(declare-fun e!251435 () Bool)

(assert (=> mapNonEmpty!18063 (= mapRes!18063 (and tp!34956 e!251435))))

(declare-fun mapRest!18063 () (Array (_ BitVec 32) ValueCell!5137))

(declare-fun mapValue!18063 () ValueCell!5137)

(declare-fun mapKey!18063 () (_ BitVec 32))

(assert (=> mapNonEmpty!18063 (= (arr!12321 _values!549) (store mapRest!18063 mapKey!18063 mapValue!18063))))

(declare-fun b!422765 () Bool)

(declare-fun res!247042 () Bool)

(assert (=> b!422765 (=> (not res!247042) (not e!251436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422765 (= res!247042 (validMask!0 mask!1025))))

(declare-fun b!422766 () Bool)

(assert (=> b!422766 (= e!251437 (and e!251432 mapRes!18063))))

(declare-fun condMapEmpty!18063 () Bool)

(declare-fun mapDefault!18063 () ValueCell!5137)

