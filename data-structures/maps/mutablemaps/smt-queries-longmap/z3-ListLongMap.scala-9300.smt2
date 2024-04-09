; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111186 () Bool)

(assert start!111186)

(declare-fun b_free!29985 () Bool)

(declare-fun b_next!29985 () Bool)

(assert (=> start!111186 (= b_free!29985 (not b_next!29985))))

(declare-fun tp!105277 () Bool)

(declare-fun b_and!48203 () Bool)

(assert (=> start!111186 (= tp!105277 b_and!48203)))

(declare-fun b!1315929 () Bool)

(declare-fun e!750721 () Bool)

(declare-fun tp_is_empty!35715 () Bool)

(assert (=> b!1315929 (= e!750721 tp_is_empty!35715)))

(declare-fun mapNonEmpty!55201 () Bool)

(declare-fun mapRes!55201 () Bool)

(declare-fun tp!105278 () Bool)

(assert (=> mapNonEmpty!55201 (= mapRes!55201 (and tp!105278 e!750721))))

(declare-fun mapKey!55201 () (_ BitVec 32))

(declare-datatypes ((V!52723 0))(
  ( (V!52724 (val!17932 Int)) )
))
(declare-datatypes ((ValueCell!16959 0))(
  ( (ValueCellFull!16959 (v!20557 V!52723)) (EmptyCell!16959) )
))
(declare-fun mapRest!55201 () (Array (_ BitVec 32) ValueCell!16959))

(declare-fun mapValue!55201 () ValueCell!16959)

(declare-datatypes ((array!88347 0))(
  ( (array!88348 (arr!42649 (Array (_ BitVec 32) ValueCell!16959)) (size!43200 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88347)

(assert (=> mapNonEmpty!55201 (= (arr!42649 _values!1354) (store mapRest!55201 mapKey!55201 mapValue!55201))))

(declare-fun b!1315930 () Bool)

(declare-fun res!873663 () Bool)

(declare-fun e!750724 () Bool)

(assert (=> b!1315930 (=> (not res!873663) (not e!750724))))

(declare-datatypes ((array!88349 0))(
  ( (array!88350 (arr!42650 (Array (_ BitVec 32) (_ BitVec 64))) (size!43201 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88349)

(declare-datatypes ((List!30448 0))(
  ( (Nil!30445) (Cons!30444 (h!31653 (_ BitVec 64)) (t!44061 List!30448)) )
))
(declare-fun arrayNoDuplicates!0 (array!88349 (_ BitVec 32) List!30448) Bool)

(assert (=> b!1315930 (= res!873663 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30445))))

(declare-fun b!1315931 () Bool)

(declare-fun e!750725 () Bool)

(declare-fun e!750723 () Bool)

(assert (=> b!1315931 (= e!750725 (and e!750723 mapRes!55201))))

(declare-fun condMapEmpty!55201 () Bool)

(declare-fun mapDefault!55201 () ValueCell!16959)

(assert (=> b!1315931 (= condMapEmpty!55201 (= (arr!42649 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16959)) mapDefault!55201)))))

(declare-fun b!1315932 () Bool)

(assert (=> b!1315932 (= e!750724 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585919 () Bool)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52723)

(declare-fun zeroValue!1296 () V!52723)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23278 0))(
  ( (tuple2!23279 (_1!11649 (_ BitVec 64)) (_2!11649 V!52723)) )
))
(declare-datatypes ((List!30449 0))(
  ( (Nil!30446) (Cons!30445 (h!31654 tuple2!23278) (t!44062 List!30449)) )
))
(declare-datatypes ((ListLongMap!20947 0))(
  ( (ListLongMap!20948 (toList!10489 List!30449)) )
))
(declare-fun contains!8575 (ListLongMap!20947 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5445 (array!88349 array!88347 (_ BitVec 32) (_ BitVec 32) V!52723 V!52723 (_ BitVec 32) Int) ListLongMap!20947)

(assert (=> b!1315932 (= lt!585919 (contains!8575 (getCurrentListMap!5445 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1315933 () Bool)

(assert (=> b!1315933 (= e!750723 tp_is_empty!35715)))

(declare-fun res!873664 () Bool)

(assert (=> start!111186 (=> (not res!873664) (not e!750724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111186 (= res!873664 (validMask!0 mask!2040))))

(assert (=> start!111186 e!750724))

(assert (=> start!111186 tp!105277))

(declare-fun array_inv!32177 (array!88349) Bool)

(assert (=> start!111186 (array_inv!32177 _keys!1628)))

(assert (=> start!111186 true))

(assert (=> start!111186 tp_is_empty!35715))

(declare-fun array_inv!32178 (array!88347) Bool)

(assert (=> start!111186 (and (array_inv!32178 _values!1354) e!750725)))

(declare-fun b!1315934 () Bool)

(declare-fun res!873662 () Bool)

(assert (=> b!1315934 (=> (not res!873662) (not e!750724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88349 (_ BitVec 32)) Bool)

(assert (=> b!1315934 (= res!873662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!55201 () Bool)

(assert (=> mapIsEmpty!55201 mapRes!55201))

(declare-fun b!1315935 () Bool)

(declare-fun res!873665 () Bool)

(assert (=> b!1315935 (=> (not res!873665) (not e!750724))))

(assert (=> b!1315935 (= res!873665 (and (= (size!43200 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43201 _keys!1628) (size!43200 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315936 () Bool)

(declare-fun res!873661 () Bool)

(assert (=> b!1315936 (=> (not res!873661) (not e!750724))))

(assert (=> b!1315936 (= res!873661 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43201 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!111186 res!873664) b!1315935))

(assert (= (and b!1315935 res!873665) b!1315934))

(assert (= (and b!1315934 res!873662) b!1315930))

(assert (= (and b!1315930 res!873663) b!1315936))

(assert (= (and b!1315936 res!873661) b!1315932))

(assert (= (and b!1315931 condMapEmpty!55201) mapIsEmpty!55201))

(assert (= (and b!1315931 (not condMapEmpty!55201)) mapNonEmpty!55201))

(get-info :version)

(assert (= (and mapNonEmpty!55201 ((_ is ValueCellFull!16959) mapValue!55201)) b!1315929))

(assert (= (and b!1315931 ((_ is ValueCellFull!16959) mapDefault!55201)) b!1315933))

(assert (= start!111186 b!1315931))

(declare-fun m!1203967 () Bool)

(assert (=> b!1315930 m!1203967))

(declare-fun m!1203969 () Bool)

(assert (=> start!111186 m!1203969))

(declare-fun m!1203971 () Bool)

(assert (=> start!111186 m!1203971))

(declare-fun m!1203973 () Bool)

(assert (=> start!111186 m!1203973))

(declare-fun m!1203975 () Bool)

(assert (=> b!1315934 m!1203975))

(declare-fun m!1203977 () Bool)

(assert (=> mapNonEmpty!55201 m!1203977))

(declare-fun m!1203979 () Bool)

(assert (=> b!1315932 m!1203979))

(assert (=> b!1315932 m!1203979))

(declare-fun m!1203981 () Bool)

(assert (=> b!1315932 m!1203981))

(check-sat (not b!1315930) (not start!111186) (not b!1315934) (not b!1315932) (not mapNonEmpty!55201) tp_is_empty!35715 b_and!48203 (not b_next!29985))
(check-sat b_and!48203 (not b_next!29985))
