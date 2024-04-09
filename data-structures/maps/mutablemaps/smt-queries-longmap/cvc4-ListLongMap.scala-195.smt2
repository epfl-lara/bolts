; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3792 () Bool)

(assert start!3792)

(declare-fun b!26569 () Bool)

(declare-fun res!15748 () Bool)

(declare-fun e!17322 () Bool)

(assert (=> b!26569 (=> (not res!15748) (not e!17322))))

(declare-datatypes ((V!1311 0))(
  ( (V!1312 (val!584 Int)) )
))
(declare-datatypes ((ValueCell!358 0))(
  ( (ValueCellFull!358 (v!1670 V!1311)) (EmptyCell!358) )
))
(declare-datatypes ((array!1461 0))(
  ( (array!1462 (arr!688 (Array (_ BitVec 32) ValueCell!358)) (size!789 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1461)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1463 0))(
  ( (array!1464 (arr!689 (Array (_ BitVec 32) (_ BitVec 64))) (size!790 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1463)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!26569 (= res!15748 (and (= (size!789 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!790 _keys!1833) (size!789 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26570 () Bool)

(declare-fun e!17326 () Bool)

(declare-fun tp_is_empty!1115 () Bool)

(assert (=> b!26570 (= e!17326 tp_is_empty!1115)))

(declare-fun mapIsEmpty!1189 () Bool)

(declare-fun mapRes!1189 () Bool)

(assert (=> mapIsEmpty!1189 mapRes!1189))

(declare-fun b!26571 () Bool)

(declare-fun e!17325 () Bool)

(assert (=> b!26571 (= e!17325 tp_is_empty!1115)))

(declare-fun b!26572 () Bool)

(assert (=> b!26572 (= e!17322 false)))

(declare-fun lt!10392 () Bool)

(declare-datatypes ((List!592 0))(
  ( (Nil!589) (Cons!588 (h!1155 (_ BitVec 64)) (t!3281 List!592)) )
))
(declare-fun arrayNoDuplicates!0 (array!1463 (_ BitVec 32) List!592) Bool)

(assert (=> b!26572 (= lt!10392 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!589))))

(declare-fun b!26573 () Bool)

(declare-fun res!15746 () Bool)

(assert (=> b!26573 (=> (not res!15746) (not e!17322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1463 (_ BitVec 32)) Bool)

(assert (=> b!26573 (= res!15746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!15747 () Bool)

(assert (=> start!3792 (=> (not res!15747) (not e!17322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3792 (= res!15747 (validMask!0 mask!2294))))

(assert (=> start!3792 e!17322))

(assert (=> start!3792 true))

(declare-fun e!17323 () Bool)

(declare-fun array_inv!473 (array!1461) Bool)

(assert (=> start!3792 (and (array_inv!473 _values!1501) e!17323)))

(declare-fun array_inv!474 (array!1463) Bool)

(assert (=> start!3792 (array_inv!474 _keys!1833)))

(declare-fun mapNonEmpty!1189 () Bool)

(declare-fun tp!3709 () Bool)

(assert (=> mapNonEmpty!1189 (= mapRes!1189 (and tp!3709 e!17326))))

(declare-fun mapRest!1189 () (Array (_ BitVec 32) ValueCell!358))

(declare-fun mapKey!1189 () (_ BitVec 32))

(declare-fun mapValue!1189 () ValueCell!358)

(assert (=> mapNonEmpty!1189 (= (arr!688 _values!1501) (store mapRest!1189 mapKey!1189 mapValue!1189))))

(declare-fun b!26574 () Bool)

(assert (=> b!26574 (= e!17323 (and e!17325 mapRes!1189))))

(declare-fun condMapEmpty!1189 () Bool)

(declare-fun mapDefault!1189 () ValueCell!358)

