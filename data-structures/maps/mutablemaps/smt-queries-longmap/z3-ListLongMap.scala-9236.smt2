; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110802 () Bool)

(assert start!110802)

(declare-fun b_free!29601 () Bool)

(declare-fun b_next!29601 () Bool)

(assert (=> start!110802 (= b_free!29601 (not b_next!29601))))

(declare-fun tp!104126 () Bool)

(declare-fun b_and!47819 () Bool)

(assert (=> start!110802 (= tp!104126 b_and!47819)))

(declare-fun b!1310898 () Bool)

(declare-fun e!747843 () Bool)

(declare-fun e!747845 () Bool)

(declare-fun mapRes!54625 () Bool)

(assert (=> b!1310898 (= e!747843 (and e!747845 mapRes!54625))))

(declare-fun condMapEmpty!54625 () Bool)

(declare-datatypes ((V!52211 0))(
  ( (V!52212 (val!17740 Int)) )
))
(declare-datatypes ((ValueCell!16767 0))(
  ( (ValueCellFull!16767 (v!20365 V!52211)) (EmptyCell!16767) )
))
(declare-datatypes ((array!87613 0))(
  ( (array!87614 (arr!42282 (Array (_ BitVec 32) ValueCell!16767)) (size!42833 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87613)

(declare-fun mapDefault!54625 () ValueCell!16767)

(assert (=> b!1310898 (= condMapEmpty!54625 (= (arr!42282 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16767)) mapDefault!54625)))))

(declare-fun b!1310899 () Bool)

(declare-fun res!870358 () Bool)

(declare-fun e!747841 () Bool)

(assert (=> b!1310899 (=> (not res!870358) (not e!747841))))

(declare-datatypes ((array!87615 0))(
  ( (array!87616 (arr!42283 (Array (_ BitVec 32) (_ BitVec 64))) (size!42834 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87615)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1310899 (= res!870358 (and (= (size!42833 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42834 _keys!1628) (size!42833 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!870360 () Bool)

(assert (=> start!110802 (=> (not res!870360) (not e!747841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110802 (= res!870360 (validMask!0 mask!2040))))

(assert (=> start!110802 e!747841))

(assert (=> start!110802 tp!104126))

(declare-fun array_inv!31939 (array!87615) Bool)

(assert (=> start!110802 (array_inv!31939 _keys!1628)))

(assert (=> start!110802 true))

(declare-fun tp_is_empty!35331 () Bool)

(assert (=> start!110802 tp_is_empty!35331))

(declare-fun array_inv!31940 (array!87613) Bool)

(assert (=> start!110802 (and (array_inv!31940 _values!1354) e!747843)))

(declare-fun b!1310900 () Bool)

(declare-fun res!870359 () Bool)

(assert (=> b!1310900 (=> (not res!870359) (not e!747841))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1310900 (= res!870359 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42834 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310901 () Bool)

(assert (=> b!1310901 (= e!747841 false)))

(declare-fun minValue!1296 () V!52211)

(declare-fun zeroValue!1296 () V!52211)

(declare-fun lt!585352 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((tuple2!23024 0))(
  ( (tuple2!23025 (_1!11522 (_ BitVec 64)) (_2!11522 V!52211)) )
))
(declare-datatypes ((List!30190 0))(
  ( (Nil!30187) (Cons!30186 (h!31395 tuple2!23024) (t!43803 List!30190)) )
))
(declare-datatypes ((ListLongMap!20693 0))(
  ( (ListLongMap!20694 (toList!10362 List!30190)) )
))
(declare-fun contains!8448 (ListLongMap!20693 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5318 (array!87615 array!87613 (_ BitVec 32) (_ BitVec 32) V!52211 V!52211 (_ BitVec 32) Int) ListLongMap!20693)

(assert (=> b!1310901 (= lt!585352 (contains!8448 (getCurrentListMap!5318 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1310902 () Bool)

(declare-fun res!870362 () Bool)

(assert (=> b!1310902 (=> (not res!870362) (not e!747841))))

(declare-datatypes ((List!30191 0))(
  ( (Nil!30188) (Cons!30187 (h!31396 (_ BitVec 64)) (t!43804 List!30191)) )
))
(declare-fun arrayNoDuplicates!0 (array!87615 (_ BitVec 32) List!30191) Bool)

(assert (=> b!1310902 (= res!870362 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30188))))

(declare-fun b!1310903 () Bool)

(assert (=> b!1310903 (= e!747845 tp_is_empty!35331)))

(declare-fun b!1310904 () Bool)

(declare-fun e!747842 () Bool)

(assert (=> b!1310904 (= e!747842 tp_is_empty!35331)))

(declare-fun mapNonEmpty!54625 () Bool)

(declare-fun tp!104125 () Bool)

(assert (=> mapNonEmpty!54625 (= mapRes!54625 (and tp!104125 e!747842))))

(declare-fun mapValue!54625 () ValueCell!16767)

(declare-fun mapKey!54625 () (_ BitVec 32))

(declare-fun mapRest!54625 () (Array (_ BitVec 32) ValueCell!16767))

(assert (=> mapNonEmpty!54625 (= (arr!42282 _values!1354) (store mapRest!54625 mapKey!54625 mapValue!54625))))

(declare-fun mapIsEmpty!54625 () Bool)

(assert (=> mapIsEmpty!54625 mapRes!54625))

(declare-fun b!1310905 () Bool)

(declare-fun res!870361 () Bool)

(assert (=> b!1310905 (=> (not res!870361) (not e!747841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87615 (_ BitVec 32)) Bool)

(assert (=> b!1310905 (= res!870361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(assert (= (and start!110802 res!870360) b!1310899))

(assert (= (and b!1310899 res!870358) b!1310905))

(assert (= (and b!1310905 res!870361) b!1310902))

(assert (= (and b!1310902 res!870362) b!1310900))

(assert (= (and b!1310900 res!870359) b!1310901))

(assert (= (and b!1310898 condMapEmpty!54625) mapIsEmpty!54625))

(assert (= (and b!1310898 (not condMapEmpty!54625)) mapNonEmpty!54625))

(get-info :version)

(assert (= (and mapNonEmpty!54625 ((_ is ValueCellFull!16767) mapValue!54625)) b!1310904))

(assert (= (and b!1310898 ((_ is ValueCellFull!16767) mapDefault!54625)) b!1310903))

(assert (= start!110802 b!1310898))

(declare-fun m!1200553 () Bool)

(assert (=> b!1310901 m!1200553))

(assert (=> b!1310901 m!1200553))

(declare-fun m!1200555 () Bool)

(assert (=> b!1310901 m!1200555))

(declare-fun m!1200557 () Bool)

(assert (=> mapNonEmpty!54625 m!1200557))

(declare-fun m!1200559 () Bool)

(assert (=> b!1310905 m!1200559))

(declare-fun m!1200561 () Bool)

(assert (=> start!110802 m!1200561))

(declare-fun m!1200563 () Bool)

(assert (=> start!110802 m!1200563))

(declare-fun m!1200565 () Bool)

(assert (=> start!110802 m!1200565))

(declare-fun m!1200567 () Bool)

(assert (=> b!1310902 m!1200567))

(check-sat (not mapNonEmpty!54625) (not b!1310901) b_and!47819 (not b!1310905) (not b_next!29601) tp_is_empty!35331 (not start!110802) (not b!1310902))
(check-sat b_and!47819 (not b_next!29601))
