; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110748 () Bool)

(assert start!110748)

(declare-fun b_free!29547 () Bool)

(declare-fun b_next!29547 () Bool)

(assert (=> start!110748 (= b_free!29547 (not b_next!29547))))

(declare-fun tp!103964 () Bool)

(declare-fun b_and!47765 () Bool)

(assert (=> start!110748 (= tp!103964 b_and!47765)))

(declare-fun b!1310091 () Bool)

(declare-fun res!869794 () Bool)

(declare-fun e!747440 () Bool)

(assert (=> b!1310091 (=> (not res!869794) (not e!747440))))

(declare-datatypes ((array!87509 0))(
  ( (array!87510 (arr!42230 (Array (_ BitVec 32) (_ BitVec 64))) (size!42781 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87509)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52139 0))(
  ( (V!52140 (val!17713 Int)) )
))
(declare-datatypes ((ValueCell!16740 0))(
  ( (ValueCellFull!16740 (v!20338 V!52139)) (EmptyCell!16740) )
))
(declare-datatypes ((array!87511 0))(
  ( (array!87512 (arr!42231 (Array (_ BitVec 32) ValueCell!16740)) (size!42782 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87511)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1310091 (= res!869794 (and (= (size!42782 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42781 _keys!1628) (size!42782 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54544 () Bool)

(declare-fun mapRes!54544 () Bool)

(assert (=> mapIsEmpty!54544 mapRes!54544))

(declare-fun b!1310092 () Bool)

(declare-fun res!869797 () Bool)

(assert (=> b!1310092 (=> (not res!869797) (not e!747440))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52139)

(declare-fun zeroValue!1296 () V!52139)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22986 0))(
  ( (tuple2!22987 (_1!11503 (_ BitVec 64)) (_2!11503 V!52139)) )
))
(declare-datatypes ((List!30152 0))(
  ( (Nil!30149) (Cons!30148 (h!31357 tuple2!22986) (t!43765 List!30152)) )
))
(declare-datatypes ((ListLongMap!20655 0))(
  ( (ListLongMap!20656 (toList!10343 List!30152)) )
))
(declare-fun contains!8429 (ListLongMap!20655 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5299 (array!87509 array!87511 (_ BitVec 32) (_ BitVec 32) V!52139 V!52139 (_ BitVec 32) Int) ListLongMap!20655)

(assert (=> b!1310092 (= res!869797 (contains!8429 (getCurrentListMap!5299 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapNonEmpty!54544 () Bool)

(declare-fun tp!103963 () Bool)

(declare-fun e!747437 () Bool)

(assert (=> mapNonEmpty!54544 (= mapRes!54544 (and tp!103963 e!747437))))

(declare-fun mapValue!54544 () ValueCell!16740)

(declare-fun mapKey!54544 () (_ BitVec 32))

(declare-fun mapRest!54544 () (Array (_ BitVec 32) ValueCell!16740))

(assert (=> mapNonEmpty!54544 (= (arr!42231 _values!1354) (store mapRest!54544 mapKey!54544 mapValue!54544))))

(declare-fun b!1310093 () Bool)

(declare-fun res!869795 () Bool)

(assert (=> b!1310093 (=> (not res!869795) (not e!747440))))

(declare-datatypes ((List!30153 0))(
  ( (Nil!30150) (Cons!30149 (h!31358 (_ BitVec 64)) (t!43766 List!30153)) )
))
(declare-fun arrayNoDuplicates!0 (array!87509 (_ BitVec 32) List!30153) Bool)

(assert (=> b!1310093 (= res!869795 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30150))))

(declare-fun b!1310094 () Bool)

(declare-fun tp_is_empty!35277 () Bool)

(assert (=> b!1310094 (= e!747437 tp_is_empty!35277)))

(declare-fun b!1310095 () Bool)

(declare-fun res!869799 () Bool)

(assert (=> b!1310095 (=> (not res!869799) (not e!747440))))

(assert (=> b!1310095 (= res!869799 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42781 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310096 () Bool)

(assert (=> b!1310096 (= e!747440 (not true))))

(assert (=> b!1310096 (contains!8429 (getCurrentListMap!5299 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43276 0))(
  ( (Unit!43277) )
))
(declare-fun lt!585271 () Unit!43276)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!12 (array!87509 array!87511 (_ BitVec 32) (_ BitVec 32) V!52139 V!52139 (_ BitVec 64) (_ BitVec 32) Int) Unit!43276)

(assert (=> b!1310096 (= lt!585271 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!12 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1310097 () Bool)

(declare-fun e!747436 () Bool)

(assert (=> b!1310097 (= e!747436 tp_is_empty!35277)))

(declare-fun b!1310098 () Bool)

(declare-fun res!869801 () Bool)

(assert (=> b!1310098 (=> (not res!869801) (not e!747440))))

(assert (=> b!1310098 (= res!869801 (not (= (select (arr!42230 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1310099 () Bool)

(declare-fun e!747438 () Bool)

(assert (=> b!1310099 (= e!747438 (and e!747436 mapRes!54544))))

(declare-fun condMapEmpty!54544 () Bool)

(declare-fun mapDefault!54544 () ValueCell!16740)

(assert (=> b!1310099 (= condMapEmpty!54544 (= (arr!42231 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16740)) mapDefault!54544)))))

(declare-fun b!1310090 () Bool)

(declare-fun res!869796 () Bool)

(assert (=> b!1310090 (=> (not res!869796) (not e!747440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1310090 (= res!869796 (validKeyInArray!0 (select (arr!42230 _keys!1628) from!2020)))))

(declare-fun res!869800 () Bool)

(assert (=> start!110748 (=> (not res!869800) (not e!747440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110748 (= res!869800 (validMask!0 mask!2040))))

(assert (=> start!110748 e!747440))

(assert (=> start!110748 tp!103964))

(declare-fun array_inv!31905 (array!87509) Bool)

(assert (=> start!110748 (array_inv!31905 _keys!1628)))

(assert (=> start!110748 true))

(assert (=> start!110748 tp_is_empty!35277))

(declare-fun array_inv!31906 (array!87511) Bool)

(assert (=> start!110748 (and (array_inv!31906 _values!1354) e!747438)))

(declare-fun b!1310100 () Bool)

(declare-fun res!869793 () Bool)

(assert (=> b!1310100 (=> (not res!869793) (not e!747440))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87509 (_ BitVec 32)) Bool)

(assert (=> b!1310100 (= res!869793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310101 () Bool)

(declare-fun res!869798 () Bool)

(assert (=> b!1310101 (=> (not res!869798) (not e!747440))))

(assert (=> b!1310101 (= res!869798 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!110748 res!869800) b!1310091))

(assert (= (and b!1310091 res!869794) b!1310100))

(assert (= (and b!1310100 res!869793) b!1310093))

(assert (= (and b!1310093 res!869795) b!1310095))

(assert (= (and b!1310095 res!869799) b!1310092))

(assert (= (and b!1310092 res!869797) b!1310098))

(assert (= (and b!1310098 res!869801) b!1310090))

(assert (= (and b!1310090 res!869796) b!1310101))

(assert (= (and b!1310101 res!869798) b!1310096))

(assert (= (and b!1310099 condMapEmpty!54544) mapIsEmpty!54544))

(assert (= (and b!1310099 (not condMapEmpty!54544)) mapNonEmpty!54544))

(get-info :version)

(assert (= (and mapNonEmpty!54544 ((_ is ValueCellFull!16740) mapValue!54544)) b!1310094))

(assert (= (and b!1310099 ((_ is ValueCellFull!16740) mapDefault!54544)) b!1310097))

(assert (= start!110748 b!1310099))

(declare-fun m!1199981 () Bool)

(assert (=> b!1310092 m!1199981))

(assert (=> b!1310092 m!1199981))

(declare-fun m!1199983 () Bool)

(assert (=> b!1310092 m!1199983))

(declare-fun m!1199985 () Bool)

(assert (=> b!1310096 m!1199985))

(assert (=> b!1310096 m!1199985))

(declare-fun m!1199987 () Bool)

(assert (=> b!1310096 m!1199987))

(declare-fun m!1199989 () Bool)

(assert (=> b!1310096 m!1199989))

(declare-fun m!1199991 () Bool)

(assert (=> b!1310090 m!1199991))

(assert (=> b!1310090 m!1199991))

(declare-fun m!1199993 () Bool)

(assert (=> b!1310090 m!1199993))

(declare-fun m!1199995 () Bool)

(assert (=> b!1310100 m!1199995))

(declare-fun m!1199997 () Bool)

(assert (=> mapNonEmpty!54544 m!1199997))

(declare-fun m!1199999 () Bool)

(assert (=> start!110748 m!1199999))

(declare-fun m!1200001 () Bool)

(assert (=> start!110748 m!1200001))

(declare-fun m!1200003 () Bool)

(assert (=> start!110748 m!1200003))

(declare-fun m!1200005 () Bool)

(assert (=> b!1310093 m!1200005))

(assert (=> b!1310098 m!1199991))

(check-sat (not b!1310096) (not b!1310100) (not b!1310093) b_and!47765 (not b!1310090) tp_is_empty!35277 (not b_next!29547) (not mapNonEmpty!54544) (not start!110748) (not b!1310092))
(check-sat b_and!47765 (not b_next!29547))
