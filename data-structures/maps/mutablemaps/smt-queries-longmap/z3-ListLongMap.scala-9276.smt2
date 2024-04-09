; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111042 () Bool)

(assert start!111042)

(declare-fun b_free!29841 () Bool)

(declare-fun b_next!29841 () Bool)

(assert (=> start!111042 (= b_free!29841 (not b_next!29841))))

(declare-fun tp!104846 () Bool)

(declare-fun b_and!48059 () Bool)

(assert (=> start!111042 (= tp!104846 b_and!48059)))

(declare-fun mapIsEmpty!54985 () Bool)

(declare-fun mapRes!54985 () Bool)

(assert (=> mapIsEmpty!54985 mapRes!54985))

(declare-fun b!1314149 () Bool)

(declare-fun res!872529 () Bool)

(declare-fun e!749641 () Bool)

(assert (=> b!1314149 (=> (not res!872529) (not e!749641))))

(declare-datatypes ((array!88079 0))(
  ( (array!88080 (arr!42515 (Array (_ BitVec 32) (_ BitVec 64))) (size!43066 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88079)

(declare-datatypes ((List!30362 0))(
  ( (Nil!30359) (Cons!30358 (h!31567 (_ BitVec 64)) (t!43975 List!30362)) )
))
(declare-fun arrayNoDuplicates!0 (array!88079 (_ BitVec 32) List!30362) Bool)

(assert (=> b!1314149 (= res!872529 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30359))))

(declare-fun b!1314150 () Bool)

(declare-fun res!872535 () Bool)

(assert (=> b!1314150 (=> (not res!872535) (not e!749641))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52531 0))(
  ( (V!52532 (val!17860 Int)) )
))
(declare-datatypes ((ValueCell!16887 0))(
  ( (ValueCellFull!16887 (v!20485 V!52531)) (EmptyCell!16887) )
))
(declare-datatypes ((array!88081 0))(
  ( (array!88082 (arr!42516 (Array (_ BitVec 32) ValueCell!16887)) (size!43067 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88081)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1314150 (= res!872535 (and (= (size!43067 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43066 _keys!1628) (size!43067 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314151 () Bool)

(declare-fun e!749643 () Bool)

(declare-fun tp_is_empty!35571 () Bool)

(assert (=> b!1314151 (= e!749643 tp_is_empty!35571)))

(declare-fun b!1314152 () Bool)

(declare-fun res!872533 () Bool)

(assert (=> b!1314152 (=> (not res!872533) (not e!749641))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314152 (= res!872533 (not (= (select (arr!42515 _keys!1628) from!2020) k0!1175)))))

(declare-fun res!872531 () Bool)

(assert (=> start!111042 (=> (not res!872531) (not e!749641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111042 (= res!872531 (validMask!0 mask!2040))))

(assert (=> start!111042 e!749641))

(assert (=> start!111042 tp!104846))

(declare-fun array_inv!32093 (array!88079) Bool)

(assert (=> start!111042 (array_inv!32093 _keys!1628)))

(assert (=> start!111042 true))

(assert (=> start!111042 tp_is_empty!35571))

(declare-fun e!749644 () Bool)

(declare-fun array_inv!32094 (array!88081) Bool)

(assert (=> start!111042 (and (array_inv!32094 _values!1354) e!749644)))

(declare-fun b!1314153 () Bool)

(declare-fun res!872532 () Bool)

(assert (=> b!1314153 (=> (not res!872532) (not e!749641))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52531)

(declare-fun zeroValue!1296 () V!52531)

(declare-datatypes ((tuple2!23198 0))(
  ( (tuple2!23199 (_1!11609 (_ BitVec 64)) (_2!11609 V!52531)) )
))
(declare-datatypes ((List!30363 0))(
  ( (Nil!30360) (Cons!30359 (h!31568 tuple2!23198) (t!43976 List!30363)) )
))
(declare-datatypes ((ListLongMap!20867 0))(
  ( (ListLongMap!20868 (toList!10449 List!30363)) )
))
(declare-fun contains!8535 (ListLongMap!20867 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5405 (array!88079 array!88081 (_ BitVec 32) (_ BitVec 32) V!52531 V!52531 (_ BitVec 32) Int) ListLongMap!20867)

(assert (=> b!1314153 (= res!872532 (contains!8535 (getCurrentListMap!5405 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapNonEmpty!54985 () Bool)

(declare-fun tp!104845 () Bool)

(declare-fun e!749645 () Bool)

(assert (=> mapNonEmpty!54985 (= mapRes!54985 (and tp!104845 e!749645))))

(declare-fun mapRest!54985 () (Array (_ BitVec 32) ValueCell!16887))

(declare-fun mapKey!54985 () (_ BitVec 32))

(declare-fun mapValue!54985 () ValueCell!16887)

(assert (=> mapNonEmpty!54985 (= (arr!42516 _values!1354) (store mapRest!54985 mapKey!54985 mapValue!54985))))

(declare-fun b!1314154 () Bool)

(assert (=> b!1314154 (= e!749644 (and e!749643 mapRes!54985))))

(declare-fun condMapEmpty!54985 () Bool)

(declare-fun mapDefault!54985 () ValueCell!16887)

(assert (=> b!1314154 (= condMapEmpty!54985 (= (arr!42516 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16887)) mapDefault!54985)))))

(declare-fun b!1314155 () Bool)

(assert (=> b!1314155 (= e!749645 tp_is_empty!35571)))

(declare-fun b!1314156 () Bool)

(declare-fun res!872537 () Bool)

(assert (=> b!1314156 (=> (not res!872537) (not e!749641))))

(assert (=> b!1314156 (= res!872537 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1314157 () Bool)

(assert (=> b!1314157 (= e!749641 (not true))))

(assert (=> b!1314157 (contains!8535 (getCurrentListMap!5405 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43332 0))(
  ( (Unit!43333) )
))
(declare-fun lt!585703 () Unit!43332)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!17 (array!88079 array!88081 (_ BitVec 32) (_ BitVec 32) V!52531 V!52531 (_ BitVec 64) (_ BitVec 32) Int) Unit!43332)

(assert (=> b!1314157 (= lt!585703 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!17 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1314158 () Bool)

(declare-fun res!872536 () Bool)

(assert (=> b!1314158 (=> (not res!872536) (not e!749641))))

(assert (=> b!1314158 (= res!872536 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43066 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314159 () Bool)

(declare-fun res!872530 () Bool)

(assert (=> b!1314159 (=> (not res!872530) (not e!749641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88079 (_ BitVec 32)) Bool)

(assert (=> b!1314159 (= res!872530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314160 () Bool)

(declare-fun res!872534 () Bool)

(assert (=> b!1314160 (=> (not res!872534) (not e!749641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1314160 (= res!872534 (validKeyInArray!0 (select (arr!42515 _keys!1628) from!2020)))))

(assert (= (and start!111042 res!872531) b!1314150))

(assert (= (and b!1314150 res!872535) b!1314159))

(assert (= (and b!1314159 res!872530) b!1314149))

(assert (= (and b!1314149 res!872529) b!1314158))

(assert (= (and b!1314158 res!872536) b!1314153))

(assert (= (and b!1314153 res!872532) b!1314152))

(assert (= (and b!1314152 res!872533) b!1314160))

(assert (= (and b!1314160 res!872534) b!1314156))

(assert (= (and b!1314156 res!872537) b!1314157))

(assert (= (and b!1314154 condMapEmpty!54985) mapIsEmpty!54985))

(assert (= (and b!1314154 (not condMapEmpty!54985)) mapNonEmpty!54985))

(get-info :version)

(assert (= (and mapNonEmpty!54985 ((_ is ValueCellFull!16887) mapValue!54985)) b!1314155))

(assert (= (and b!1314154 ((_ is ValueCellFull!16887) mapDefault!54985)) b!1314151))

(assert (= start!111042 b!1314154))

(declare-fun m!1202765 () Bool)

(assert (=> b!1314153 m!1202765))

(assert (=> b!1314153 m!1202765))

(declare-fun m!1202767 () Bool)

(assert (=> b!1314153 m!1202767))

(declare-fun m!1202769 () Bool)

(assert (=> b!1314157 m!1202769))

(assert (=> b!1314157 m!1202769))

(declare-fun m!1202771 () Bool)

(assert (=> b!1314157 m!1202771))

(declare-fun m!1202773 () Bool)

(assert (=> b!1314157 m!1202773))

(declare-fun m!1202775 () Bool)

(assert (=> start!111042 m!1202775))

(declare-fun m!1202777 () Bool)

(assert (=> start!111042 m!1202777))

(declare-fun m!1202779 () Bool)

(assert (=> start!111042 m!1202779))

(declare-fun m!1202781 () Bool)

(assert (=> mapNonEmpty!54985 m!1202781))

(declare-fun m!1202783 () Bool)

(assert (=> b!1314149 m!1202783))

(declare-fun m!1202785 () Bool)

(assert (=> b!1314160 m!1202785))

(assert (=> b!1314160 m!1202785))

(declare-fun m!1202787 () Bool)

(assert (=> b!1314160 m!1202787))

(declare-fun m!1202789 () Bool)

(assert (=> b!1314159 m!1202789))

(assert (=> b!1314152 m!1202785))

(check-sat (not b_next!29841) (not b!1314157) b_and!48059 (not mapNonEmpty!54985) (not b!1314160) (not start!111042) (not b!1314159) (not b!1314149) tp_is_empty!35571 (not b!1314153))
(check-sat b_and!48059 (not b_next!29841))
