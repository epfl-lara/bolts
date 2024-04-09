; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43228 () Bool)

(assert start!43228)

(declare-fun mapIsEmpty!22108 () Bool)

(declare-fun mapRes!22108 () Bool)

(assert (=> mapIsEmpty!22108 mapRes!22108))

(declare-fun res!285685 () Bool)

(declare-fun e!281608 () Bool)

(assert (=> start!43228 (=> (not res!285685) (not e!281608))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43228 (= res!285685 (validMask!0 mask!2352))))

(assert (=> start!43228 e!281608))

(assert (=> start!43228 true))

(declare-datatypes ((V!19217 0))(
  ( (V!19218 (val!6852 Int)) )
))
(declare-datatypes ((ValueCell!6443 0))(
  ( (ValueCellFull!6443 (v!9137 V!19217)) (EmptyCell!6443) )
))
(declare-datatypes ((array!30859 0))(
  ( (array!30860 (arr!14834 (Array (_ BitVec 32) ValueCell!6443)) (size!15192 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30859)

(declare-fun e!281610 () Bool)

(declare-fun array_inv!10692 (array!30859) Bool)

(assert (=> start!43228 (and (array_inv!10692 _values!1516) e!281610)))

(declare-datatypes ((array!30861 0))(
  ( (array!30862 (arr!14835 (Array (_ BitVec 32) (_ BitVec 64))) (size!15193 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30861)

(declare-fun array_inv!10693 (array!30861) Bool)

(assert (=> start!43228 (array_inv!10693 _keys!1874)))

(declare-fun b!478771 () Bool)

(assert (=> b!478771 (= e!281608 false)))

(declare-fun lt!217760 () Bool)

(declare-datatypes ((List!9105 0))(
  ( (Nil!9102) (Cons!9101 (h!9957 (_ BitVec 64)) (t!15319 List!9105)) )
))
(declare-fun arrayNoDuplicates!0 (array!30861 (_ BitVec 32) List!9105) Bool)

(assert (=> b!478771 (= lt!217760 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9102))))

(declare-fun mapNonEmpty!22108 () Bool)

(declare-fun tp!42583 () Bool)

(declare-fun e!281607 () Bool)

(assert (=> mapNonEmpty!22108 (= mapRes!22108 (and tp!42583 e!281607))))

(declare-fun mapKey!22108 () (_ BitVec 32))

(declare-fun mapRest!22108 () (Array (_ BitVec 32) ValueCell!6443))

(declare-fun mapValue!22108 () ValueCell!6443)

(assert (=> mapNonEmpty!22108 (= (arr!14834 _values!1516) (store mapRest!22108 mapKey!22108 mapValue!22108))))

(declare-fun b!478772 () Bool)

(declare-fun e!281611 () Bool)

(declare-fun tp_is_empty!13609 () Bool)

(assert (=> b!478772 (= e!281611 tp_is_empty!13609)))

(declare-fun b!478773 () Bool)

(declare-fun res!285686 () Bool)

(assert (=> b!478773 (=> (not res!285686) (not e!281608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30861 (_ BitVec 32)) Bool)

(assert (=> b!478773 (= res!285686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478774 () Bool)

(assert (=> b!478774 (= e!281610 (and e!281611 mapRes!22108))))

(declare-fun condMapEmpty!22108 () Bool)

(declare-fun mapDefault!22108 () ValueCell!6443)

