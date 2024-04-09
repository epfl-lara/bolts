; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104664 () Bool)

(assert start!104664)

(declare-fun mapNonEmpty!48790 () Bool)

(declare-fun mapRes!48790 () Bool)

(declare-fun tp!92892 () Bool)

(declare-fun e!707772 () Bool)

(assert (=> mapNonEmpty!48790 (= mapRes!48790 (and tp!92892 e!707772))))

(declare-datatypes ((V!47175 0))(
  ( (V!47176 (val!15741 Int)) )
))
(declare-datatypes ((ValueCell!14915 0))(
  ( (ValueCellFull!14915 (v!18437 V!47175)) (EmptyCell!14915) )
))
(declare-fun mapValue!48790 () ValueCell!14915)

(declare-fun mapKey!48790 () (_ BitVec 32))

(declare-datatypes ((array!80389 0))(
  ( (array!80390 (arr!38759 (Array (_ BitVec 32) ValueCell!14915)) (size!39296 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80389)

(declare-fun mapRest!48790 () (Array (_ BitVec 32) ValueCell!14915))

(assert (=> mapNonEmpty!48790 (= (arr!38759 _values!914) (store mapRest!48790 mapKey!48790 mapValue!48790))))

(declare-fun b!1247495 () Bool)

(declare-fun res!832466 () Bool)

(declare-fun e!707769 () Bool)

(assert (=> b!1247495 (=> (not res!832466) (not e!707769))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((array!80391 0))(
  ( (array!80392 (arr!38760 (Array (_ BitVec 32) (_ BitVec 64))) (size!39297 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80391)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247495 (= res!832466 (and (= (size!39296 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39297 _keys!1118) (size!39296 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247496 () Bool)

(declare-fun tp_is_empty!31357 () Bool)

(assert (=> b!1247496 (= e!707772 tp_is_empty!31357)))

(declare-fun b!1247497 () Bool)

(assert (=> b!1247497 (= e!707769 false)))

(declare-fun lt!563223 () Bool)

(declare-datatypes ((List!27699 0))(
  ( (Nil!27696) (Cons!27695 (h!28904 (_ BitVec 64)) (t!41175 List!27699)) )
))
(declare-fun arrayNoDuplicates!0 (array!80391 (_ BitVec 32) List!27699) Bool)

(assert (=> b!1247497 (= lt!563223 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27696))))

(declare-fun b!1247498 () Bool)

(declare-fun e!707768 () Bool)

(assert (=> b!1247498 (= e!707768 tp_is_empty!31357)))

(declare-fun b!1247499 () Bool)

(declare-fun e!707771 () Bool)

(assert (=> b!1247499 (= e!707771 (and e!707768 mapRes!48790))))

(declare-fun condMapEmpty!48790 () Bool)

(declare-fun mapDefault!48790 () ValueCell!14915)

