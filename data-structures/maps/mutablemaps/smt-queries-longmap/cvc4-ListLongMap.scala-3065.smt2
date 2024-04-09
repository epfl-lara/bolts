; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43244 () Bool)

(assert start!43244)

(declare-fun mapNonEmpty!22132 () Bool)

(declare-fun mapRes!22132 () Bool)

(declare-fun tp!42607 () Bool)

(declare-fun e!281728 () Bool)

(assert (=> mapNonEmpty!22132 (= mapRes!22132 (and tp!42607 e!281728))))

(declare-datatypes ((V!19237 0))(
  ( (V!19238 (val!6860 Int)) )
))
(declare-datatypes ((ValueCell!6451 0))(
  ( (ValueCellFull!6451 (v!9145 V!19237)) (EmptyCell!6451) )
))
(declare-fun mapRest!22132 () (Array (_ BitVec 32) ValueCell!6451))

(declare-datatypes ((array!30889 0))(
  ( (array!30890 (arr!14849 (Array (_ BitVec 32) ValueCell!6451)) (size!15207 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30889)

(declare-fun mapKey!22132 () (_ BitVec 32))

(declare-fun mapValue!22132 () ValueCell!6451)

(assert (=> mapNonEmpty!22132 (= (arr!14849 _values!1516) (store mapRest!22132 mapKey!22132 mapValue!22132))))

(declare-fun b!478923 () Bool)

(declare-fun res!285766 () Bool)

(declare-fun e!281730 () Bool)

(assert (=> b!478923 (=> (not res!285766) (not e!281730))))

(declare-datatypes ((array!30891 0))(
  ( (array!30892 (arr!14850 (Array (_ BitVec 32) (_ BitVec 64))) (size!15208 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30891)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30891 (_ BitVec 32)) Bool)

(assert (=> b!478923 (= res!285766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478924 () Bool)

(declare-fun e!281727 () Bool)

(declare-fun tp_is_empty!13625 () Bool)

(assert (=> b!478924 (= e!281727 tp_is_empty!13625)))

(declare-fun mapIsEmpty!22132 () Bool)

(assert (=> mapIsEmpty!22132 mapRes!22132))

(declare-fun b!478925 () Bool)

(declare-fun res!285765 () Bool)

(assert (=> b!478925 (=> (not res!285765) (not e!281730))))

(declare-datatypes ((List!9112 0))(
  ( (Nil!9109) (Cons!9108 (h!9964 (_ BitVec 64)) (t!15326 List!9112)) )
))
(declare-fun arrayNoDuplicates!0 (array!30891 (_ BitVec 32) List!9112) Bool)

(assert (=> b!478925 (= res!285765 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9109))))

(declare-fun b!478926 () Bool)

(declare-fun res!285768 () Bool)

(assert (=> b!478926 (=> (not res!285768) (not e!281730))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478926 (= res!285768 (and (= (size!15207 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15208 _keys!1874) (size!15207 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun res!285767 () Bool)

(assert (=> start!43244 (=> (not res!285767) (not e!281730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43244 (= res!285767 (validMask!0 mask!2352))))

(assert (=> start!43244 e!281730))

(assert (=> start!43244 true))

(declare-fun e!281729 () Bool)

(declare-fun array_inv!10700 (array!30889) Bool)

(assert (=> start!43244 (and (array_inv!10700 _values!1516) e!281729)))

(declare-fun array_inv!10701 (array!30891) Bool)

(assert (=> start!43244 (array_inv!10701 _keys!1874)))

(declare-fun b!478927 () Bool)

(assert (=> b!478927 (= e!281729 (and e!281727 mapRes!22132))))

(declare-fun condMapEmpty!22132 () Bool)

(declare-fun mapDefault!22132 () ValueCell!6451)

