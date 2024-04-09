; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104650 () Bool)

(assert start!104650)

(declare-fun b!1247369 () Bool)

(declare-fun e!707664 () Bool)

(declare-fun tp_is_empty!31343 () Bool)

(assert (=> b!1247369 (= e!707664 tp_is_empty!31343)))

(declare-fun mapIsEmpty!48769 () Bool)

(declare-fun mapRes!48769 () Bool)

(assert (=> mapIsEmpty!48769 mapRes!48769))

(declare-fun mapNonEmpty!48769 () Bool)

(declare-fun tp!92871 () Bool)

(declare-fun e!707665 () Bool)

(assert (=> mapNonEmpty!48769 (= mapRes!48769 (and tp!92871 e!707665))))

(declare-datatypes ((V!47155 0))(
  ( (V!47156 (val!15734 Int)) )
))
(declare-datatypes ((ValueCell!14908 0))(
  ( (ValueCellFull!14908 (v!18430 V!47155)) (EmptyCell!14908) )
))
(declare-fun mapValue!48769 () ValueCell!14908)

(declare-fun mapRest!48769 () (Array (_ BitVec 32) ValueCell!14908))

(declare-fun mapKey!48769 () (_ BitVec 32))

(declare-datatypes ((array!80363 0))(
  ( (array!80364 (arr!38746 (Array (_ BitVec 32) ValueCell!14908)) (size!39283 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80363)

(assert (=> mapNonEmpty!48769 (= (arr!38746 _values!914) (store mapRest!48769 mapKey!48769 mapValue!48769))))

(declare-fun b!1247370 () Bool)

(declare-fun e!707666 () Bool)

(assert (=> b!1247370 (= e!707666 false)))

(declare-fun lt!563202 () Bool)

(declare-datatypes ((array!80365 0))(
  ( (array!80366 (arr!38747 (Array (_ BitVec 32) (_ BitVec 64))) (size!39284 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80365)

(declare-datatypes ((List!27693 0))(
  ( (Nil!27690) (Cons!27689 (h!28898 (_ BitVec 64)) (t!41169 List!27693)) )
))
(declare-fun arrayNoDuplicates!0 (array!80365 (_ BitVec 32) List!27693) Bool)

(assert (=> b!1247370 (= lt!563202 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27690))))

(declare-fun res!832403 () Bool)

(assert (=> start!104650 (=> (not res!832403) (not e!707666))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104650 (= res!832403 (validMask!0 mask!1466))))

(assert (=> start!104650 e!707666))

(assert (=> start!104650 true))

(declare-fun array_inv!29511 (array!80365) Bool)

(assert (=> start!104650 (array_inv!29511 _keys!1118)))

(declare-fun e!707663 () Bool)

(declare-fun array_inv!29512 (array!80363) Bool)

(assert (=> start!104650 (and (array_inv!29512 _values!914) e!707663)))

(declare-fun b!1247371 () Bool)

(declare-fun res!832402 () Bool)

(assert (=> b!1247371 (=> (not res!832402) (not e!707666))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247371 (= res!832402 (and (= (size!39283 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39284 _keys!1118) (size!39283 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247372 () Bool)

(declare-fun res!832404 () Bool)

(assert (=> b!1247372 (=> (not res!832404) (not e!707666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80365 (_ BitVec 32)) Bool)

(assert (=> b!1247372 (= res!832404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247373 () Bool)

(assert (=> b!1247373 (= e!707665 tp_is_empty!31343)))

(declare-fun b!1247374 () Bool)

(assert (=> b!1247374 (= e!707663 (and e!707664 mapRes!48769))))

(declare-fun condMapEmpty!48769 () Bool)

(declare-fun mapDefault!48769 () ValueCell!14908)

