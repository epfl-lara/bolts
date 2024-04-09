; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104656 () Bool)

(assert start!104656)

(declare-fun b!1247423 () Bool)

(declare-fun e!707712 () Bool)

(assert (=> b!1247423 (= e!707712 false)))

(declare-fun lt!563211 () Bool)

(declare-datatypes ((array!80375 0))(
  ( (array!80376 (arr!38752 (Array (_ BitVec 32) (_ BitVec 64))) (size!39289 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80375)

(declare-datatypes ((List!27696 0))(
  ( (Nil!27693) (Cons!27692 (h!28901 (_ BitVec 64)) (t!41172 List!27696)) )
))
(declare-fun arrayNoDuplicates!0 (array!80375 (_ BitVec 32) List!27696) Bool)

(assert (=> b!1247423 (= lt!563211 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27693))))

(declare-fun b!1247424 () Bool)

(declare-fun e!707709 () Bool)

(declare-fun tp_is_empty!31349 () Bool)

(assert (=> b!1247424 (= e!707709 tp_is_empty!31349)))

(declare-fun b!1247425 () Bool)

(declare-fun res!832430 () Bool)

(assert (=> b!1247425 (=> (not res!832430) (not e!707712))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80375 (_ BitVec 32)) Bool)

(assert (=> b!1247425 (= res!832430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!48778 () Bool)

(declare-fun mapRes!48778 () Bool)

(assert (=> mapIsEmpty!48778 mapRes!48778))

(declare-fun mapNonEmpty!48778 () Bool)

(declare-fun tp!92880 () Bool)

(declare-fun e!707708 () Bool)

(assert (=> mapNonEmpty!48778 (= mapRes!48778 (and tp!92880 e!707708))))

(declare-datatypes ((V!47163 0))(
  ( (V!47164 (val!15737 Int)) )
))
(declare-datatypes ((ValueCell!14911 0))(
  ( (ValueCellFull!14911 (v!18433 V!47163)) (EmptyCell!14911) )
))
(declare-fun mapValue!48778 () ValueCell!14911)

(declare-fun mapRest!48778 () (Array (_ BitVec 32) ValueCell!14911))

(declare-datatypes ((array!80377 0))(
  ( (array!80378 (arr!38753 (Array (_ BitVec 32) ValueCell!14911)) (size!39290 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80377)

(declare-fun mapKey!48778 () (_ BitVec 32))

(assert (=> mapNonEmpty!48778 (= (arr!38753 _values!914) (store mapRest!48778 mapKey!48778 mapValue!48778))))

(declare-fun b!1247426 () Bool)

(assert (=> b!1247426 (= e!707708 tp_is_empty!31349)))

(declare-fun b!1247427 () Bool)

(declare-fun res!832431 () Bool)

(assert (=> b!1247427 (=> (not res!832431) (not e!707712))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247427 (= res!832431 (and (= (size!39290 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39289 _keys!1118) (size!39290 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247428 () Bool)

(declare-fun e!707710 () Bool)

(assert (=> b!1247428 (= e!707710 (and e!707709 mapRes!48778))))

(declare-fun condMapEmpty!48778 () Bool)

(declare-fun mapDefault!48778 () ValueCell!14911)

