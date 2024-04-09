; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110670 () Bool)

(assert start!110670)

(declare-fun b_free!29469 () Bool)

(declare-fun b_next!29469 () Bool)

(assert (=> start!110670 (= b_free!29469 (not b_next!29469))))

(declare-fun tp!103730 () Bool)

(declare-fun b_and!47687 () Bool)

(assert (=> start!110670 (= tp!103730 b_and!47687)))

(declare-fun mapNonEmpty!54427 () Bool)

(declare-fun mapRes!54427 () Bool)

(declare-fun tp!103729 () Bool)

(declare-fun e!746851 () Bool)

(assert (=> mapNonEmpty!54427 (= mapRes!54427 (and tp!103729 e!746851))))

(declare-datatypes ((V!52035 0))(
  ( (V!52036 (val!17674 Int)) )
))
(declare-datatypes ((ValueCell!16701 0))(
  ( (ValueCellFull!16701 (v!20299 V!52035)) (EmptyCell!16701) )
))
(declare-datatypes ((array!87361 0))(
  ( (array!87362 (arr!42156 (Array (_ BitVec 32) ValueCell!16701)) (size!42707 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87361)

(declare-fun mapRest!54427 () (Array (_ BitVec 32) ValueCell!16701))

(declare-fun mapKey!54427 () (_ BitVec 32))

(declare-fun mapValue!54427 () ValueCell!16701)

(assert (=> mapNonEmpty!54427 (= (arr!42156 _values!1354) (store mapRest!54427 mapKey!54427 mapValue!54427))))

(declare-fun res!869048 () Bool)

(declare-fun e!746854 () Bool)

(assert (=> start!110670 (=> (not res!869048) (not e!746854))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110670 (= res!869048 (validMask!0 mask!2040))))

(assert (=> start!110670 e!746854))

(assert (=> start!110670 tp!103730))

(declare-datatypes ((array!87363 0))(
  ( (array!87364 (arr!42157 (Array (_ BitVec 32) (_ BitVec 64))) (size!42708 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87363)

(declare-fun array_inv!31865 (array!87363) Bool)

(assert (=> start!110670 (array_inv!31865 _keys!1628)))

(assert (=> start!110670 true))

(declare-fun tp_is_empty!35199 () Bool)

(assert (=> start!110670 tp_is_empty!35199))

(declare-fun e!746852 () Bool)

(declare-fun array_inv!31866 (array!87361) Bool)

(assert (=> start!110670 (and (array_inv!31866 _values!1354) e!746852)))

(declare-fun b!1308990 () Bool)

(declare-fun e!746855 () Bool)

(assert (=> b!1308990 (= e!746855 tp_is_empty!35199)))

(declare-fun b!1308991 () Bool)

(declare-fun res!869047 () Bool)

(assert (=> b!1308991 (=> (not res!869047) (not e!746854))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308991 (= res!869047 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42708 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308992 () Bool)

(declare-fun res!869045 () Bool)

(assert (=> b!1308992 (=> (not res!869045) (not e!746854))))

(declare-datatypes ((List!30095 0))(
  ( (Nil!30092) (Cons!30091 (h!31300 (_ BitVec 64)) (t!43708 List!30095)) )
))
(declare-fun arrayNoDuplicates!0 (array!87363 (_ BitVec 32) List!30095) Bool)

(assert (=> b!1308992 (= res!869045 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30092))))

(declare-fun mapIsEmpty!54427 () Bool)

(assert (=> mapIsEmpty!54427 mapRes!54427))

(declare-fun b!1308993 () Bool)

(assert (=> b!1308993 (= e!746854 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52035)

(declare-fun zeroValue!1296 () V!52035)

(declare-fun lt!585154 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22922 0))(
  ( (tuple2!22923 (_1!11471 (_ BitVec 64)) (_2!11471 V!52035)) )
))
(declare-datatypes ((List!30096 0))(
  ( (Nil!30093) (Cons!30092 (h!31301 tuple2!22922) (t!43709 List!30096)) )
))
(declare-datatypes ((ListLongMap!20591 0))(
  ( (ListLongMap!20592 (toList!10311 List!30096)) )
))
(declare-fun contains!8397 (ListLongMap!20591 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5267 (array!87363 array!87361 (_ BitVec 32) (_ BitVec 32) V!52035 V!52035 (_ BitVec 32) Int) ListLongMap!20591)

(assert (=> b!1308993 (= lt!585154 (contains!8397 (getCurrentListMap!5267 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1308994 () Bool)

(assert (=> b!1308994 (= e!746851 tp_is_empty!35199)))

(declare-fun b!1308995 () Bool)

(declare-fun res!869044 () Bool)

(assert (=> b!1308995 (=> (not res!869044) (not e!746854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87363 (_ BitVec 32)) Bool)

(assert (=> b!1308995 (= res!869044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308996 () Bool)

(assert (=> b!1308996 (= e!746852 (and e!746855 mapRes!54427))))

(declare-fun condMapEmpty!54427 () Bool)

(declare-fun mapDefault!54427 () ValueCell!16701)

(assert (=> b!1308996 (= condMapEmpty!54427 (= (arr!42156 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16701)) mapDefault!54427)))))

(declare-fun b!1308997 () Bool)

(declare-fun res!869046 () Bool)

(assert (=> b!1308997 (=> (not res!869046) (not e!746854))))

(assert (=> b!1308997 (= res!869046 (and (= (size!42707 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42708 _keys!1628) (size!42707 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(assert (= (and start!110670 res!869048) b!1308997))

(assert (= (and b!1308997 res!869046) b!1308995))

(assert (= (and b!1308995 res!869044) b!1308992))

(assert (= (and b!1308992 res!869045) b!1308991))

(assert (= (and b!1308991 res!869047) b!1308993))

(assert (= (and b!1308996 condMapEmpty!54427) mapIsEmpty!54427))

(assert (= (and b!1308996 (not condMapEmpty!54427)) mapNonEmpty!54427))

(get-info :version)

(assert (= (and mapNonEmpty!54427 ((_ is ValueCellFull!16701) mapValue!54427)) b!1308994))

(assert (= (and b!1308996 ((_ is ValueCellFull!16701) mapDefault!54427)) b!1308990))

(assert (= start!110670 b!1308996))

(declare-fun m!1199227 () Bool)

(assert (=> b!1308993 m!1199227))

(assert (=> b!1308993 m!1199227))

(declare-fun m!1199229 () Bool)

(assert (=> b!1308993 m!1199229))

(declare-fun m!1199231 () Bool)

(assert (=> start!110670 m!1199231))

(declare-fun m!1199233 () Bool)

(assert (=> start!110670 m!1199233))

(declare-fun m!1199235 () Bool)

(assert (=> start!110670 m!1199235))

(declare-fun m!1199237 () Bool)

(assert (=> mapNonEmpty!54427 m!1199237))

(declare-fun m!1199239 () Bool)

(assert (=> b!1308992 m!1199239))

(declare-fun m!1199241 () Bool)

(assert (=> b!1308995 m!1199241))

(check-sat (not b!1308993) (not b_next!29469) (not start!110670) tp_is_empty!35199 (not b!1308995) b_and!47687 (not b!1308992) (not mapNonEmpty!54427))
(check-sat b_and!47687 (not b_next!29469))
