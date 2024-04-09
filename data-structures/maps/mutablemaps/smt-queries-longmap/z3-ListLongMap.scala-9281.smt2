; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111072 () Bool)

(assert start!111072)

(declare-fun b_free!29871 () Bool)

(declare-fun b_next!29871 () Bool)

(assert (=> start!111072 (= b_free!29871 (not b_next!29871))))

(declare-fun tp!104935 () Bool)

(declare-fun b_and!48089 () Bool)

(assert (=> start!111072 (= tp!104935 b_and!48089)))

(declare-fun b!1314525 () Bool)

(declare-fun res!872773 () Bool)

(declare-fun e!749869 () Bool)

(assert (=> b!1314525 (=> (not res!872773) (not e!749869))))

(declare-datatypes ((array!88135 0))(
  ( (array!88136 (arr!42543 (Array (_ BitVec 32) (_ BitVec 64))) (size!43094 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88135)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52571 0))(
  ( (V!52572 (val!17875 Int)) )
))
(declare-datatypes ((ValueCell!16902 0))(
  ( (ValueCellFull!16902 (v!20500 V!52571)) (EmptyCell!16902) )
))
(declare-datatypes ((array!88137 0))(
  ( (array!88138 (arr!42544 (Array (_ BitVec 32) ValueCell!16902)) (size!43095 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88137)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1314525 (= res!872773 (and (= (size!43095 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43094 _keys!1628) (size!43095 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55030 () Bool)

(declare-fun mapRes!55030 () Bool)

(assert (=> mapIsEmpty!55030 mapRes!55030))

(declare-fun b!1314526 () Bool)

(declare-fun e!749868 () Bool)

(declare-fun e!749866 () Bool)

(assert (=> b!1314526 (= e!749868 (and e!749866 mapRes!55030))))

(declare-fun condMapEmpty!55030 () Bool)

(declare-fun mapDefault!55030 () ValueCell!16902)

(assert (=> b!1314526 (= condMapEmpty!55030 (= (arr!42544 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16902)) mapDefault!55030)))))

(declare-fun res!872770 () Bool)

(assert (=> start!111072 (=> (not res!872770) (not e!749869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111072 (= res!872770 (validMask!0 mask!2040))))

(assert (=> start!111072 e!749869))

(assert (=> start!111072 tp!104935))

(declare-fun array_inv!32109 (array!88135) Bool)

(assert (=> start!111072 (array_inv!32109 _keys!1628)))

(assert (=> start!111072 true))

(declare-fun tp_is_empty!35601 () Bool)

(assert (=> start!111072 tp_is_empty!35601))

(declare-fun array_inv!32110 (array!88137) Bool)

(assert (=> start!111072 (and (array_inv!32110 _values!1354) e!749868)))

(declare-fun b!1314527 () Bool)

(assert (=> b!1314527 (= e!749869 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52571)

(declare-fun zeroValue!1296 () V!52571)

(declare-fun lt!585748 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23218 0))(
  ( (tuple2!23219 (_1!11619 (_ BitVec 64)) (_2!11619 V!52571)) )
))
(declare-datatypes ((List!30382 0))(
  ( (Nil!30379) (Cons!30378 (h!31587 tuple2!23218) (t!43995 List!30382)) )
))
(declare-datatypes ((ListLongMap!20887 0))(
  ( (ListLongMap!20888 (toList!10459 List!30382)) )
))
(declare-fun contains!8545 (ListLongMap!20887 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5415 (array!88135 array!88137 (_ BitVec 32) (_ BitVec 32) V!52571 V!52571 (_ BitVec 32) Int) ListLongMap!20887)

(assert (=> b!1314527 (= lt!585748 (contains!8545 (getCurrentListMap!5415 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1314528 () Bool)

(declare-fun res!872772 () Bool)

(assert (=> b!1314528 (=> (not res!872772) (not e!749869))))

(assert (=> b!1314528 (= res!872772 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43094 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314529 () Bool)

(declare-fun res!872774 () Bool)

(assert (=> b!1314529 (=> (not res!872774) (not e!749869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88135 (_ BitVec 32)) Bool)

(assert (=> b!1314529 (= res!872774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!55030 () Bool)

(declare-fun tp!104936 () Bool)

(declare-fun e!749867 () Bool)

(assert (=> mapNonEmpty!55030 (= mapRes!55030 (and tp!104936 e!749867))))

(declare-fun mapRest!55030 () (Array (_ BitVec 32) ValueCell!16902))

(declare-fun mapValue!55030 () ValueCell!16902)

(declare-fun mapKey!55030 () (_ BitVec 32))

(assert (=> mapNonEmpty!55030 (= (arr!42544 _values!1354) (store mapRest!55030 mapKey!55030 mapValue!55030))))

(declare-fun b!1314530 () Bool)

(assert (=> b!1314530 (= e!749867 tp_is_empty!35601)))

(declare-fun b!1314531 () Bool)

(declare-fun res!872771 () Bool)

(assert (=> b!1314531 (=> (not res!872771) (not e!749869))))

(declare-datatypes ((List!30383 0))(
  ( (Nil!30380) (Cons!30379 (h!31588 (_ BitVec 64)) (t!43996 List!30383)) )
))
(declare-fun arrayNoDuplicates!0 (array!88135 (_ BitVec 32) List!30383) Bool)

(assert (=> b!1314531 (= res!872771 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30380))))

(declare-fun b!1314532 () Bool)

(assert (=> b!1314532 (= e!749866 tp_is_empty!35601)))

(assert (= (and start!111072 res!872770) b!1314525))

(assert (= (and b!1314525 res!872773) b!1314529))

(assert (= (and b!1314529 res!872774) b!1314531))

(assert (= (and b!1314531 res!872771) b!1314528))

(assert (= (and b!1314528 res!872772) b!1314527))

(assert (= (and b!1314526 condMapEmpty!55030) mapIsEmpty!55030))

(assert (= (and b!1314526 (not condMapEmpty!55030)) mapNonEmpty!55030))

(get-info :version)

(assert (= (and mapNonEmpty!55030 ((_ is ValueCellFull!16902) mapValue!55030)) b!1314530))

(assert (= (and b!1314526 ((_ is ValueCellFull!16902) mapDefault!55030)) b!1314532))

(assert (= start!111072 b!1314526))

(declare-fun m!1203025 () Bool)

(assert (=> mapNonEmpty!55030 m!1203025))

(declare-fun m!1203027 () Bool)

(assert (=> b!1314529 m!1203027))

(declare-fun m!1203029 () Bool)

(assert (=> b!1314527 m!1203029))

(assert (=> b!1314527 m!1203029))

(declare-fun m!1203031 () Bool)

(assert (=> b!1314527 m!1203031))

(declare-fun m!1203033 () Bool)

(assert (=> start!111072 m!1203033))

(declare-fun m!1203035 () Bool)

(assert (=> start!111072 m!1203035))

(declare-fun m!1203037 () Bool)

(assert (=> start!111072 m!1203037))

(declare-fun m!1203039 () Bool)

(assert (=> b!1314531 m!1203039))

(check-sat tp_is_empty!35601 (not b!1314529) (not b!1314527) b_and!48089 (not mapNonEmpty!55030) (not b_next!29871) (not b!1314531) (not start!111072))
(check-sat b_and!48089 (not b_next!29871))
