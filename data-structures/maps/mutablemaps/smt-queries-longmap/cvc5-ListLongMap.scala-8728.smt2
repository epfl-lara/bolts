; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105898 () Bool)

(assert start!105898)

(declare-fun b_free!27403 () Bool)

(declare-fun b_next!27403 () Bool)

(assert (=> start!105898 (= b_free!27403 (not b_next!27403))))

(declare-fun tp!95742 () Bool)

(declare-fun b_and!45321 () Bool)

(assert (=> start!105898 (= tp!95742 b_and!45321)))

(declare-fun mapIsEmpty!50260 () Bool)

(declare-fun mapRes!50260 () Bool)

(assert (=> mapIsEmpty!50260 mapRes!50260))

(declare-fun b!1260881 () Bool)

(declare-fun e!717593 () Bool)

(declare-fun tp_is_empty!32305 () Bool)

(assert (=> b!1260881 (= e!717593 tp_is_empty!32305)))

(declare-fun b!1260882 () Bool)

(declare-fun res!840331 () Bool)

(declare-fun e!717594 () Bool)

(assert (=> b!1260882 (=> (not res!840331) (not e!717594))))

(declare-datatypes ((array!82215 0))(
  ( (array!82216 (arr!39656 (Array (_ BitVec 32) (_ BitVec 64))) (size!40193 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82215)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82215 (_ BitVec 32)) Bool)

(assert (=> b!1260882 (= res!840331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260883 () Bool)

(declare-fun res!840332 () Bool)

(assert (=> b!1260883 (=> (not res!840332) (not e!717594))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48439 0))(
  ( (V!48440 (val!16215 Int)) )
))
(declare-datatypes ((ValueCell!15389 0))(
  ( (ValueCellFull!15389 (v!18919 V!48439)) (EmptyCell!15389) )
))
(declare-datatypes ((array!82217 0))(
  ( (array!82218 (arr!39657 (Array (_ BitVec 32) ValueCell!15389)) (size!40194 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82217)

(assert (=> b!1260883 (= res!840332 (and (= (size!40194 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40193 _keys!1118) (size!40194 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!840334 () Bool)

(assert (=> start!105898 (=> (not res!840334) (not e!717594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105898 (= res!840334 (validMask!0 mask!1466))))

(assert (=> start!105898 e!717594))

(assert (=> start!105898 true))

(assert (=> start!105898 tp!95742))

(assert (=> start!105898 tp_is_empty!32305))

(declare-fun array_inv!30143 (array!82215) Bool)

(assert (=> start!105898 (array_inv!30143 _keys!1118)))

(declare-fun e!717592 () Bool)

(declare-fun array_inv!30144 (array!82217) Bool)

(assert (=> start!105898 (and (array_inv!30144 _values!914) e!717592)))

(declare-fun mapNonEmpty!50260 () Bool)

(declare-fun tp!95741 () Bool)

(assert (=> mapNonEmpty!50260 (= mapRes!50260 (and tp!95741 e!717593))))

(declare-fun mapRest!50260 () (Array (_ BitVec 32) ValueCell!15389))

(declare-fun mapValue!50260 () ValueCell!15389)

(declare-fun mapKey!50260 () (_ BitVec 32))

(assert (=> mapNonEmpty!50260 (= (arr!39657 _values!914) (store mapRest!50260 mapKey!50260 mapValue!50260))))

(declare-fun b!1260884 () Bool)

(declare-fun e!717595 () Bool)

(assert (=> b!1260884 (= e!717595 tp_is_empty!32305)))

(declare-fun b!1260885 () Bool)

(assert (=> b!1260885 (= e!717594 false)))

(declare-fun minValueAfter!43 () V!48439)

(declare-fun zeroValue!871 () V!48439)

(declare-datatypes ((tuple2!21128 0))(
  ( (tuple2!21129 (_1!10574 (_ BitVec 64)) (_2!10574 V!48439)) )
))
(declare-datatypes ((List!28350 0))(
  ( (Nil!28347) (Cons!28346 (h!29555 tuple2!21128) (t!41856 List!28350)) )
))
(declare-datatypes ((ListLongMap!19013 0))(
  ( (ListLongMap!19014 (toList!9522 List!28350)) )
))
(declare-fun lt!571433 () ListLongMap!19013)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5863 (array!82215 array!82217 (_ BitVec 32) (_ BitVec 32) V!48439 V!48439 (_ BitVec 32) Int) ListLongMap!19013)

(assert (=> b!1260885 (= lt!571433 (getCurrentListMapNoExtraKeys!5863 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun minValueBefore!43 () V!48439)

(declare-fun lt!571432 () ListLongMap!19013)

(assert (=> b!1260885 (= lt!571432 (getCurrentListMapNoExtraKeys!5863 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260886 () Bool)

(declare-fun res!840333 () Bool)

(assert (=> b!1260886 (=> (not res!840333) (not e!717594))))

(declare-datatypes ((List!28351 0))(
  ( (Nil!28348) (Cons!28347 (h!29556 (_ BitVec 64)) (t!41857 List!28351)) )
))
(declare-fun arrayNoDuplicates!0 (array!82215 (_ BitVec 32) List!28351) Bool)

(assert (=> b!1260886 (= res!840333 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28348))))

(declare-fun b!1260887 () Bool)

(assert (=> b!1260887 (= e!717592 (and e!717595 mapRes!50260))))

(declare-fun condMapEmpty!50260 () Bool)

(declare-fun mapDefault!50260 () ValueCell!15389)

