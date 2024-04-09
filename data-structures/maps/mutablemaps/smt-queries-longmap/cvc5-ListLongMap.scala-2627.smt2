; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39588 () Bool)

(assert start!39588)

(declare-fun b_free!9847 () Bool)

(declare-fun b_next!9847 () Bool)

(assert (=> start!39588 (= b_free!9847 (not b_next!9847))))

(declare-fun tp!35070 () Bool)

(declare-fun b_and!17521 () Bool)

(assert (=> start!39588 (= tp!35070 b_and!17521)))

(declare-fun mapIsEmpty!18120 () Bool)

(declare-fun mapRes!18120 () Bool)

(assert (=> mapIsEmpty!18120 mapRes!18120))

(declare-fun b!423609 () Bool)

(declare-fun res!247725 () Bool)

(declare-fun e!251775 () Bool)

(assert (=> b!423609 (=> (not res!247725) (not e!251775))))

(declare-datatypes ((array!25825 0))(
  ( (array!25826 (arr!12359 (Array (_ BitVec 32) (_ BitVec 64))) (size!12711 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25825)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15771 0))(
  ( (V!15772 (val!5544 Int)) )
))
(declare-datatypes ((ValueCell!5156 0))(
  ( (ValueCellFull!5156 (v!7787 V!15771)) (EmptyCell!5156) )
))
(declare-datatypes ((array!25827 0))(
  ( (array!25828 (arr!12360 (Array (_ BitVec 32) ValueCell!5156)) (size!12712 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25827)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!423609 (= res!247725 (and (= (size!12712 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12711 _keys!709) (size!12712 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!247723 () Bool)

(assert (=> start!39588 (=> (not res!247723) (not e!251775))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39588 (= res!247723 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12711 _keys!709))))))

(assert (=> start!39588 e!251775))

(declare-fun tp_is_empty!10999 () Bool)

(assert (=> start!39588 tp_is_empty!10999))

(assert (=> start!39588 tp!35070))

(assert (=> start!39588 true))

(declare-fun e!251778 () Bool)

(declare-fun array_inv!9010 (array!25827) Bool)

(assert (=> start!39588 (and (array_inv!9010 _values!549) e!251778)))

(declare-fun array_inv!9011 (array!25825) Bool)

(assert (=> start!39588 (array_inv!9011 _keys!709)))

(declare-fun b!423610 () Bool)

(declare-fun res!247730 () Bool)

(assert (=> b!423610 (=> (not res!247730) (not e!251775))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!423610 (= res!247730 (or (= (select (arr!12359 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12359 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423611 () Bool)

(declare-fun res!247732 () Bool)

(assert (=> b!423611 (=> (not res!247732) (not e!251775))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423611 (= res!247732 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!18120 () Bool)

(declare-fun tp!35069 () Bool)

(declare-fun e!251776 () Bool)

(assert (=> mapNonEmpty!18120 (= mapRes!18120 (and tp!35069 e!251776))))

(declare-fun mapRest!18120 () (Array (_ BitVec 32) ValueCell!5156))

(declare-fun mapValue!18120 () ValueCell!5156)

(declare-fun mapKey!18120 () (_ BitVec 32))

(assert (=> mapNonEmpty!18120 (= (arr!12360 _values!549) (store mapRest!18120 mapKey!18120 mapValue!18120))))

(declare-fun b!423612 () Bool)

(declare-fun res!247728 () Bool)

(assert (=> b!423612 (=> (not res!247728) (not e!251775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423612 (= res!247728 (validMask!0 mask!1025))))

(declare-fun b!423613 () Bool)

(declare-fun res!247727 () Bool)

(declare-fun e!251777 () Bool)

(assert (=> b!423613 (=> (not res!247727) (not e!251777))))

(assert (=> b!423613 (= res!247727 (bvsle from!863 i!563))))

(declare-fun b!423614 () Bool)

(declare-fun res!247731 () Bool)

(assert (=> b!423614 (=> (not res!247731) (not e!251777))))

(declare-fun lt!194203 () array!25825)

(declare-datatypes ((List!7256 0))(
  ( (Nil!7253) (Cons!7252 (h!8108 (_ BitVec 64)) (t!12708 List!7256)) )
))
(declare-fun arrayNoDuplicates!0 (array!25825 (_ BitVec 32) List!7256) Bool)

(assert (=> b!423614 (= res!247731 (arrayNoDuplicates!0 lt!194203 #b00000000000000000000000000000000 Nil!7253))))

(declare-fun b!423615 () Bool)

(declare-fun res!247724 () Bool)

(assert (=> b!423615 (=> (not res!247724) (not e!251775))))

(assert (=> b!423615 (= res!247724 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12711 _keys!709))))))

(declare-fun b!423616 () Bool)

(assert (=> b!423616 (= e!251775 e!251777)))

(declare-fun res!247729 () Bool)

(assert (=> b!423616 (=> (not res!247729) (not e!251777))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25825 (_ BitVec 32)) Bool)

(assert (=> b!423616 (= res!247729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194203 mask!1025))))

(assert (=> b!423616 (= lt!194203 (array!25826 (store (arr!12359 _keys!709) i!563 k!794) (size!12711 _keys!709)))))

(declare-fun b!423617 () Bool)

(declare-fun res!247726 () Bool)

(assert (=> b!423617 (=> (not res!247726) (not e!251775))))

(assert (=> b!423617 (= res!247726 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7253))))

(declare-fun b!423618 () Bool)

(assert (=> b!423618 (= e!251776 tp_is_empty!10999)))

(declare-fun b!423619 () Bool)

(declare-fun res!247733 () Bool)

(assert (=> b!423619 (=> (not res!247733) (not e!251775))))

(declare-fun arrayContainsKey!0 (array!25825 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423619 (= res!247733 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!423620 () Bool)

(declare-fun e!251774 () Bool)

(assert (=> b!423620 (= e!251778 (and e!251774 mapRes!18120))))

(declare-fun condMapEmpty!18120 () Bool)

(declare-fun mapDefault!18120 () ValueCell!5156)

