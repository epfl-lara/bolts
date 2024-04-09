; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110568 () Bool)

(assert start!110568)

(declare-fun b_free!29367 () Bool)

(declare-fun b_next!29367 () Bool)

(assert (=> start!110568 (= b_free!29367 (not b_next!29367))))

(declare-fun tp!103423 () Bool)

(declare-fun b_and!47585 () Bool)

(assert (=> start!110568 (= tp!103423 b_and!47585)))

(declare-fun b!1307442 () Bool)

(declare-fun res!867957 () Bool)

(declare-fun e!746090 () Bool)

(assert (=> b!1307442 (=> (not res!867957) (not e!746090))))

(declare-datatypes ((array!87169 0))(
  ( (array!87170 (arr!42060 (Array (_ BitVec 32) (_ BitVec 64))) (size!42611 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87169)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51899 0))(
  ( (V!51900 (val!17623 Int)) )
))
(declare-datatypes ((ValueCell!16650 0))(
  ( (ValueCellFull!16650 (v!20248 V!51899)) (EmptyCell!16650) )
))
(declare-datatypes ((array!87171 0))(
  ( (array!87172 (arr!42061 (Array (_ BitVec 32) ValueCell!16650)) (size!42612 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87171)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307442 (= res!867957 (and (= (size!42612 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42611 _keys!1628) (size!42612 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1307443 () Bool)

(declare-fun res!867955 () Bool)

(assert (=> b!1307443 (=> (not res!867955) (not e!746090))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1307443 (= res!867955 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42611 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54274 () Bool)

(declare-fun mapRes!54274 () Bool)

(assert (=> mapIsEmpty!54274 mapRes!54274))

(declare-fun res!867958 () Bool)

(assert (=> start!110568 (=> (not res!867958) (not e!746090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110568 (= res!867958 (validMask!0 mask!2040))))

(assert (=> start!110568 e!746090))

(assert (=> start!110568 tp!103423))

(declare-fun array_inv!31791 (array!87169) Bool)

(assert (=> start!110568 (array_inv!31791 _keys!1628)))

(assert (=> start!110568 true))

(declare-fun tp_is_empty!35097 () Bool)

(assert (=> start!110568 tp_is_empty!35097))

(declare-fun e!746087 () Bool)

(declare-fun array_inv!31792 (array!87171) Bool)

(assert (=> start!110568 (and (array_inv!31792 _values!1354) e!746087)))

(declare-fun b!1307444 () Bool)

(declare-fun e!746086 () Bool)

(assert (=> b!1307444 (= e!746086 tp_is_empty!35097)))

(declare-fun mapNonEmpty!54274 () Bool)

(declare-fun tp!103424 () Bool)

(declare-fun e!746089 () Bool)

(assert (=> mapNonEmpty!54274 (= mapRes!54274 (and tp!103424 e!746089))))

(declare-fun mapRest!54274 () (Array (_ BitVec 32) ValueCell!16650))

(declare-fun mapKey!54274 () (_ BitVec 32))

(declare-fun mapValue!54274 () ValueCell!16650)

(assert (=> mapNonEmpty!54274 (= (arr!42061 _values!1354) (store mapRest!54274 mapKey!54274 mapValue!54274))))

(declare-fun b!1307445 () Bool)

(assert (=> b!1307445 (= e!746090 false)))

(declare-fun minValue!1296 () V!51899)

(declare-fun zeroValue!1296 () V!51899)

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585001 () Bool)

(declare-datatypes ((tuple2!22850 0))(
  ( (tuple2!22851 (_1!11435 (_ BitVec 64)) (_2!11435 V!51899)) )
))
(declare-datatypes ((List!30023 0))(
  ( (Nil!30020) (Cons!30019 (h!31228 tuple2!22850) (t!43636 List!30023)) )
))
(declare-datatypes ((ListLongMap!20519 0))(
  ( (ListLongMap!20520 (toList!10275 List!30023)) )
))
(declare-fun contains!8361 (ListLongMap!20519 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5231 (array!87169 array!87171 (_ BitVec 32) (_ BitVec 32) V!51899 V!51899 (_ BitVec 32) Int) ListLongMap!20519)

(assert (=> b!1307445 (= lt!585001 (contains!8361 (getCurrentListMap!5231 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1307446 () Bool)

(declare-fun res!867956 () Bool)

(assert (=> b!1307446 (=> (not res!867956) (not e!746090))))

(declare-datatypes ((List!30024 0))(
  ( (Nil!30021) (Cons!30020 (h!31229 (_ BitVec 64)) (t!43637 List!30024)) )
))
(declare-fun arrayNoDuplicates!0 (array!87169 (_ BitVec 32) List!30024) Bool)

(assert (=> b!1307446 (= res!867956 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30021))))

(declare-fun b!1307447 () Bool)

(declare-fun res!867959 () Bool)

(assert (=> b!1307447 (=> (not res!867959) (not e!746090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87169 (_ BitVec 32)) Bool)

(assert (=> b!1307447 (= res!867959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307448 () Bool)

(assert (=> b!1307448 (= e!746087 (and e!746086 mapRes!54274))))

(declare-fun condMapEmpty!54274 () Bool)

(declare-fun mapDefault!54274 () ValueCell!16650)

(assert (=> b!1307448 (= condMapEmpty!54274 (= (arr!42061 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16650)) mapDefault!54274)))))

(declare-fun b!1307449 () Bool)

(assert (=> b!1307449 (= e!746089 tp_is_empty!35097)))

(assert (= (and start!110568 res!867958) b!1307442))

(assert (= (and b!1307442 res!867957) b!1307447))

(assert (= (and b!1307447 res!867959) b!1307446))

(assert (= (and b!1307446 res!867956) b!1307443))

(assert (= (and b!1307443 res!867955) b!1307445))

(assert (= (and b!1307448 condMapEmpty!54274) mapIsEmpty!54274))

(assert (= (and b!1307448 (not condMapEmpty!54274)) mapNonEmpty!54274))

(get-info :version)

(assert (= (and mapNonEmpty!54274 ((_ is ValueCellFull!16650) mapValue!54274)) b!1307449))

(assert (= (and b!1307448 ((_ is ValueCellFull!16650) mapDefault!54274)) b!1307444))

(assert (= start!110568 b!1307448))

(declare-fun m!1198141 () Bool)

(assert (=> b!1307446 m!1198141))

(declare-fun m!1198143 () Bool)

(assert (=> b!1307445 m!1198143))

(assert (=> b!1307445 m!1198143))

(declare-fun m!1198145 () Bool)

(assert (=> b!1307445 m!1198145))

(declare-fun m!1198147 () Bool)

(assert (=> start!110568 m!1198147))

(declare-fun m!1198149 () Bool)

(assert (=> start!110568 m!1198149))

(declare-fun m!1198151 () Bool)

(assert (=> start!110568 m!1198151))

(declare-fun m!1198153 () Bool)

(assert (=> b!1307447 m!1198153))

(declare-fun m!1198155 () Bool)

(assert (=> mapNonEmpty!54274 m!1198155))

(check-sat (not b!1307445) (not b_next!29367) (not b!1307446) (not b!1307447) tp_is_empty!35097 b_and!47585 (not start!110568) (not mapNonEmpty!54274))
(check-sat b_and!47585 (not b_next!29367))
