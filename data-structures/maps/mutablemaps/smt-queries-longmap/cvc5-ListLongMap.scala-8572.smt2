; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104676 () Bool)

(assert start!104676)

(declare-fun b!1247603 () Bool)

(declare-fun res!832520 () Bool)

(declare-fun e!707858 () Bool)

(assert (=> b!1247603 (=> (not res!832520) (not e!707858))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80409 0))(
  ( (array!80410 (arr!38769 (Array (_ BitVec 32) (_ BitVec 64))) (size!39306 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80409)

(declare-datatypes ((V!47191 0))(
  ( (V!47192 (val!15747 Int)) )
))
(declare-datatypes ((ValueCell!14921 0))(
  ( (ValueCellFull!14921 (v!18443 V!47191)) (EmptyCell!14921) )
))
(declare-datatypes ((array!80411 0))(
  ( (array!80412 (arr!38770 (Array (_ BitVec 32) ValueCell!14921)) (size!39307 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80411)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1247603 (= res!832520 (and (= (size!39307 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39306 _keys!1118) (size!39307 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247604 () Bool)

(declare-fun e!707862 () Bool)

(declare-fun tp_is_empty!31369 () Bool)

(assert (=> b!1247604 (= e!707862 tp_is_empty!31369)))

(declare-fun b!1247605 () Bool)

(assert (=> b!1247605 (= e!707858 false)))

(declare-fun lt!563241 () Bool)

(declare-datatypes ((List!27702 0))(
  ( (Nil!27699) (Cons!27698 (h!28907 (_ BitVec 64)) (t!41178 List!27702)) )
))
(declare-fun arrayNoDuplicates!0 (array!80409 (_ BitVec 32) List!27702) Bool)

(assert (=> b!1247605 (= lt!563241 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27699))))

(declare-fun mapIsEmpty!48808 () Bool)

(declare-fun mapRes!48808 () Bool)

(assert (=> mapIsEmpty!48808 mapRes!48808))

(declare-fun b!1247606 () Bool)

(declare-fun res!832521 () Bool)

(assert (=> b!1247606 (=> (not res!832521) (not e!707858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80409 (_ BitVec 32)) Bool)

(assert (=> b!1247606 (= res!832521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!832519 () Bool)

(assert (=> start!104676 (=> (not res!832519) (not e!707858))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104676 (= res!832519 (validMask!0 mask!1466))))

(assert (=> start!104676 e!707858))

(assert (=> start!104676 true))

(declare-fun array_inv!29525 (array!80409) Bool)

(assert (=> start!104676 (array_inv!29525 _keys!1118)))

(declare-fun e!707861 () Bool)

(declare-fun array_inv!29526 (array!80411) Bool)

(assert (=> start!104676 (and (array_inv!29526 _values!914) e!707861)))

(declare-fun b!1247607 () Bool)

(declare-fun e!707860 () Bool)

(assert (=> b!1247607 (= e!707860 tp_is_empty!31369)))

(declare-fun b!1247608 () Bool)

(assert (=> b!1247608 (= e!707861 (and e!707860 mapRes!48808))))

(declare-fun condMapEmpty!48808 () Bool)

(declare-fun mapDefault!48808 () ValueCell!14921)

