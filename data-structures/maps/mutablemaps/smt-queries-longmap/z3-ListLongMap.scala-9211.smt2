; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110652 () Bool)

(assert start!110652)

(declare-fun b_free!29451 () Bool)

(declare-fun b_next!29451 () Bool)

(assert (=> start!110652 (= b_free!29451 (not b_next!29451))))

(declare-fun tp!103675 () Bool)

(declare-fun b_and!47669 () Bool)

(assert (=> start!110652 (= tp!103675 b_and!47669)))

(declare-fun res!868910 () Bool)

(declare-fun e!746716 () Bool)

(assert (=> start!110652 (=> (not res!868910) (not e!746716))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110652 (= res!868910 (validMask!0 mask!2040))))

(assert (=> start!110652 e!746716))

(assert (=> start!110652 tp!103675))

(declare-datatypes ((array!87327 0))(
  ( (array!87328 (arr!42139 (Array (_ BitVec 32) (_ BitVec 64))) (size!42690 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87327)

(declare-fun array_inv!31853 (array!87327) Bool)

(assert (=> start!110652 (array_inv!31853 _keys!1628)))

(assert (=> start!110652 true))

(declare-fun tp_is_empty!35181 () Bool)

(assert (=> start!110652 tp_is_empty!35181))

(declare-datatypes ((V!52011 0))(
  ( (V!52012 (val!17665 Int)) )
))
(declare-datatypes ((ValueCell!16692 0))(
  ( (ValueCellFull!16692 (v!20290 V!52011)) (EmptyCell!16692) )
))
(declare-datatypes ((array!87329 0))(
  ( (array!87330 (arr!42140 (Array (_ BitVec 32) ValueCell!16692)) (size!42691 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87329)

(declare-fun e!746720 () Bool)

(declare-fun array_inv!31854 (array!87329) Bool)

(assert (=> start!110652 (and (array_inv!31854 _values!1354) e!746720)))

(declare-fun b!1308774 () Bool)

(declare-fun res!868911 () Bool)

(assert (=> b!1308774 (=> (not res!868911) (not e!746716))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1308774 (= res!868911 (and (= (size!42691 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42690 _keys!1628) (size!42691 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308775 () Bool)

(declare-fun e!746719 () Bool)

(declare-fun mapRes!54400 () Bool)

(assert (=> b!1308775 (= e!746720 (and e!746719 mapRes!54400))))

(declare-fun condMapEmpty!54400 () Bool)

(declare-fun mapDefault!54400 () ValueCell!16692)

(assert (=> b!1308775 (= condMapEmpty!54400 (= (arr!42140 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16692)) mapDefault!54400)))))

(declare-fun b!1308776 () Bool)

(declare-fun res!868913 () Bool)

(assert (=> b!1308776 (=> (not res!868913) (not e!746716))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87327 (_ BitVec 32)) Bool)

(assert (=> b!1308776 (= res!868913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54400 () Bool)

(assert (=> mapIsEmpty!54400 mapRes!54400))

(declare-fun b!1308777 () Bool)

(declare-fun res!868909 () Bool)

(assert (=> b!1308777 (=> (not res!868909) (not e!746716))))

(declare-datatypes ((List!30083 0))(
  ( (Nil!30080) (Cons!30079 (h!31288 (_ BitVec 64)) (t!43696 List!30083)) )
))
(declare-fun arrayNoDuplicates!0 (array!87327 (_ BitVec 32) List!30083) Bool)

(assert (=> b!1308777 (= res!868909 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30080))))

(declare-fun b!1308778 () Bool)

(declare-fun res!868912 () Bool)

(assert (=> b!1308778 (=> (not res!868912) (not e!746716))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308778 (= res!868912 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42690 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308779 () Bool)

(declare-fun e!746718 () Bool)

(assert (=> b!1308779 (= e!746718 tp_is_empty!35181)))

(declare-fun b!1308780 () Bool)

(assert (=> b!1308780 (= e!746719 tp_is_empty!35181)))

(declare-fun b!1308781 () Bool)

(assert (=> b!1308781 (= e!746716 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585127 () Bool)

(declare-fun minValue!1296 () V!52011)

(declare-fun zeroValue!1296 () V!52011)

(declare-datatypes ((tuple2!22912 0))(
  ( (tuple2!22913 (_1!11466 (_ BitVec 64)) (_2!11466 V!52011)) )
))
(declare-datatypes ((List!30084 0))(
  ( (Nil!30081) (Cons!30080 (h!31289 tuple2!22912) (t!43697 List!30084)) )
))
(declare-datatypes ((ListLongMap!20581 0))(
  ( (ListLongMap!20582 (toList!10306 List!30084)) )
))
(declare-fun contains!8392 (ListLongMap!20581 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5262 (array!87327 array!87329 (_ BitVec 32) (_ BitVec 32) V!52011 V!52011 (_ BitVec 32) Int) ListLongMap!20581)

(assert (=> b!1308781 (= lt!585127 (contains!8392 (getCurrentListMap!5262 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapNonEmpty!54400 () Bool)

(declare-fun tp!103676 () Bool)

(assert (=> mapNonEmpty!54400 (= mapRes!54400 (and tp!103676 e!746718))))

(declare-fun mapValue!54400 () ValueCell!16692)

(declare-fun mapKey!54400 () (_ BitVec 32))

(declare-fun mapRest!54400 () (Array (_ BitVec 32) ValueCell!16692))

(assert (=> mapNonEmpty!54400 (= (arr!42140 _values!1354) (store mapRest!54400 mapKey!54400 mapValue!54400))))

(assert (= (and start!110652 res!868910) b!1308774))

(assert (= (and b!1308774 res!868911) b!1308776))

(assert (= (and b!1308776 res!868913) b!1308777))

(assert (= (and b!1308777 res!868909) b!1308778))

(assert (= (and b!1308778 res!868912) b!1308781))

(assert (= (and b!1308775 condMapEmpty!54400) mapIsEmpty!54400))

(assert (= (and b!1308775 (not condMapEmpty!54400)) mapNonEmpty!54400))

(get-info :version)

(assert (= (and mapNonEmpty!54400 ((_ is ValueCellFull!16692) mapValue!54400)) b!1308779))

(assert (= (and b!1308775 ((_ is ValueCellFull!16692) mapDefault!54400)) b!1308780))

(assert (= start!110652 b!1308775))

(declare-fun m!1199083 () Bool)

(assert (=> mapNonEmpty!54400 m!1199083))

(declare-fun m!1199085 () Bool)

(assert (=> b!1308776 m!1199085))

(declare-fun m!1199087 () Bool)

(assert (=> b!1308777 m!1199087))

(declare-fun m!1199089 () Bool)

(assert (=> b!1308781 m!1199089))

(assert (=> b!1308781 m!1199089))

(declare-fun m!1199091 () Bool)

(assert (=> b!1308781 m!1199091))

(declare-fun m!1199093 () Bool)

(assert (=> start!110652 m!1199093))

(declare-fun m!1199095 () Bool)

(assert (=> start!110652 m!1199095))

(declare-fun m!1199097 () Bool)

(assert (=> start!110652 m!1199097))

(check-sat (not b!1308776) (not start!110652) (not b_next!29451) b_and!47669 (not mapNonEmpty!54400) (not b!1308777) tp_is_empty!35181 (not b!1308781))
(check-sat b_and!47669 (not b_next!29451))
