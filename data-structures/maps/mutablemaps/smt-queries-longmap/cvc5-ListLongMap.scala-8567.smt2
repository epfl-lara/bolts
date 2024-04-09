; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104646 () Bool)

(assert start!104646)

(declare-fun b!1247333 () Bool)

(declare-fun e!707635 () Bool)

(declare-fun tp_is_empty!31339 () Bool)

(assert (=> b!1247333 (= e!707635 tp_is_empty!31339)))

(declare-fun mapNonEmpty!48763 () Bool)

(declare-fun mapRes!48763 () Bool)

(declare-fun tp!92865 () Bool)

(declare-fun e!707633 () Bool)

(assert (=> mapNonEmpty!48763 (= mapRes!48763 (and tp!92865 e!707633))))

(declare-datatypes ((V!47151 0))(
  ( (V!47152 (val!15732 Int)) )
))
(declare-datatypes ((ValueCell!14906 0))(
  ( (ValueCellFull!14906 (v!18428 V!47151)) (EmptyCell!14906) )
))
(declare-fun mapValue!48763 () ValueCell!14906)

(declare-datatypes ((array!80355 0))(
  ( (array!80356 (arr!38742 (Array (_ BitVec 32) ValueCell!14906)) (size!39279 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80355)

(declare-fun mapRest!48763 () (Array (_ BitVec 32) ValueCell!14906))

(declare-fun mapKey!48763 () (_ BitVec 32))

(assert (=> mapNonEmpty!48763 (= (arr!38742 _values!914) (store mapRest!48763 mapKey!48763 mapValue!48763))))

(declare-fun b!1247334 () Bool)

(declare-fun res!832385 () Bool)

(declare-fun e!707637 () Bool)

(assert (=> b!1247334 (=> (not res!832385) (not e!707637))))

(declare-datatypes ((array!80357 0))(
  ( (array!80358 (arr!38743 (Array (_ BitVec 32) (_ BitVec 64))) (size!39280 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80357)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80357 (_ BitVec 32)) Bool)

(assert (=> b!1247334 (= res!832385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247335 () Bool)

(declare-fun res!832386 () Bool)

(assert (=> b!1247335 (=> (not res!832386) (not e!707637))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247335 (= res!832386 (and (= (size!39279 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39280 _keys!1118) (size!39279 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247336 () Bool)

(assert (=> b!1247336 (= e!707637 false)))

(declare-fun lt!563196 () Bool)

(declare-datatypes ((List!27691 0))(
  ( (Nil!27688) (Cons!27687 (h!28896 (_ BitVec 64)) (t!41167 List!27691)) )
))
(declare-fun arrayNoDuplicates!0 (array!80357 (_ BitVec 32) List!27691) Bool)

(assert (=> b!1247336 (= lt!563196 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27688))))

(declare-fun mapIsEmpty!48763 () Bool)

(assert (=> mapIsEmpty!48763 mapRes!48763))

(declare-fun b!1247337 () Bool)

(declare-fun e!707634 () Bool)

(assert (=> b!1247337 (= e!707634 (and e!707635 mapRes!48763))))

(declare-fun condMapEmpty!48763 () Bool)

(declare-fun mapDefault!48763 () ValueCell!14906)

