; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113410 () Bool)

(assert start!113410)

(declare-fun b_free!31425 () Bool)

(declare-fun b_next!31425 () Bool)

(assert (=> start!113410 (= b_free!31425 (not b_next!31425))))

(declare-fun tp!110081 () Bool)

(declare-fun b_and!50713 () Bool)

(assert (=> start!113410 (= tp!110081 b_and!50713)))

(declare-fun b!1345653 () Bool)

(declare-fun e!765706 () Bool)

(declare-fun tp_is_empty!37425 () Bool)

(assert (=> b!1345653 (= e!765706 tp_is_empty!37425)))

(declare-fun b!1345654 () Bool)

(declare-fun res!893000 () Bool)

(declare-fun e!765710 () Bool)

(assert (=> b!1345654 (=> (not res!893000) (not e!765710))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91647 0))(
  ( (array!91648 (arr!44275 (Array (_ BitVec 32) (_ BitVec 64))) (size!44826 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91647)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1345654 (= res!893000 (not (= (select (arr!44275 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1345655 () Bool)

(declare-fun res!892993 () Bool)

(assert (=> b!1345655 (=> (not res!892993) (not e!765710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1345655 (= res!892993 (validKeyInArray!0 (select (arr!44275 _keys!1571) from!1960)))))

(declare-fun mapIsEmpty!57844 () Bool)

(declare-fun mapRes!57844 () Bool)

(assert (=> mapIsEmpty!57844 mapRes!57844))

(declare-fun b!1345656 () Bool)

(declare-fun e!765705 () Bool)

(assert (=> b!1345656 (= e!765705 (and e!765706 mapRes!57844))))

(declare-fun condMapEmpty!57844 () Bool)

(declare-datatypes ((V!55003 0))(
  ( (V!55004 (val!18787 Int)) )
))
(declare-datatypes ((ValueCell!17814 0))(
  ( (ValueCellFull!17814 (v!21433 V!55003)) (EmptyCell!17814) )
))
(declare-datatypes ((array!91649 0))(
  ( (array!91650 (arr!44276 (Array (_ BitVec 32) ValueCell!17814)) (size!44827 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91649)

(declare-fun mapDefault!57844 () ValueCell!17814)

(assert (=> b!1345656 (= condMapEmpty!57844 (= (arr!44276 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17814)) mapDefault!57844)))))

(declare-fun b!1345657 () Bool)

(declare-fun res!892995 () Bool)

(assert (=> b!1345657 (=> (not res!892995) (not e!765710))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91647 (_ BitVec 32)) Bool)

(assert (=> b!1345657 (= res!892995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1345658 () Bool)

(declare-fun res!892996 () Bool)

(assert (=> b!1345658 (=> (not res!892996) (not e!765710))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1345658 (= res!892996 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345659 () Bool)

(declare-fun e!765709 () Bool)

(assert (=> b!1345659 (= e!765709 (not true))))

(declare-datatypes ((tuple2!24360 0))(
  ( (tuple2!24361 (_1!12190 (_ BitVec 64)) (_2!12190 V!55003)) )
))
(declare-datatypes ((List!31530 0))(
  ( (Nil!31527) (Cons!31526 (h!32735 tuple2!24360) (t!46119 List!31530)) )
))
(declare-datatypes ((ListLongMap!22029 0))(
  ( (ListLongMap!22030 (toList!11030 List!31530)) )
))
(declare-fun lt!595346 () ListLongMap!22029)

(declare-fun contains!9142 (ListLongMap!22029 (_ BitVec 64)) Bool)

(assert (=> b!1345659 (contains!9142 lt!595346 k0!1142)))

(declare-datatypes ((Unit!44075 0))(
  ( (Unit!44076) )
))
(declare-fun lt!595347 () Unit!44075)

(declare-fun lt!595348 () V!55003)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!397 ((_ BitVec 64) (_ BitVec 64) V!55003 ListLongMap!22029) Unit!44075)

(assert (=> b!1345659 (= lt!595347 (lemmaInListMapAfterAddingDiffThenInBefore!397 k0!1142 (select (arr!44275 _keys!1571) from!1960) lt!595348 lt!595346))))

(declare-fun b!1345660 () Bool)

(declare-fun res!893003 () Bool)

(assert (=> b!1345660 (=> (not res!893003) (not e!765710))))

(assert (=> b!1345660 (= res!893003 (and (= (size!44827 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44826 _keys!1571) (size!44827 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1345661 () Bool)

(declare-fun res!892997 () Bool)

(assert (=> b!1345661 (=> (not res!892997) (not e!765710))))

(declare-fun minValue!1245 () V!55003)

(declare-fun zeroValue!1245 () V!55003)

(declare-fun defaultEntry!1306 () Int)

(declare-fun getCurrentListMap!5921 (array!91647 array!91649 (_ BitVec 32) (_ BitVec 32) V!55003 V!55003 (_ BitVec 32) Int) ListLongMap!22029)

(assert (=> b!1345661 (= res!892997 (contains!9142 (getCurrentListMap!5921 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1345662 () Bool)

(declare-fun e!765707 () Bool)

(assert (=> b!1345662 (= e!765707 tp_is_empty!37425)))

(declare-fun res!892999 () Bool)

(assert (=> start!113410 (=> (not res!892999) (not e!765710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113410 (= res!892999 (validMask!0 mask!1977))))

(assert (=> start!113410 e!765710))

(assert (=> start!113410 tp_is_empty!37425))

(assert (=> start!113410 true))

(declare-fun array_inv!33279 (array!91647) Bool)

(assert (=> start!113410 (array_inv!33279 _keys!1571)))

(declare-fun array_inv!33280 (array!91649) Bool)

(assert (=> start!113410 (and (array_inv!33280 _values!1303) e!765705)))

(assert (=> start!113410 tp!110081))

(declare-fun b!1345663 () Bool)

(declare-fun res!892998 () Bool)

(assert (=> b!1345663 (=> (not res!892998) (not e!765710))))

(assert (=> b!1345663 (= res!892998 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44826 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1345664 () Bool)

(assert (=> b!1345664 (= e!765710 e!765709)))

(declare-fun res!893001 () Bool)

(assert (=> b!1345664 (=> (not res!893001) (not e!765709))))

(declare-fun +!4808 (ListLongMap!22029 tuple2!24360) ListLongMap!22029)

(assert (=> b!1345664 (= res!893001 (contains!9142 (+!4808 lt!595346 (tuple2!24361 (select (arr!44275 _keys!1571) from!1960) lt!595348)) k0!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6531 (array!91647 array!91649 (_ BitVec 32) (_ BitVec 32) V!55003 V!55003 (_ BitVec 32) Int) ListLongMap!22029)

(assert (=> b!1345664 (= lt!595346 (getCurrentListMapNoExtraKeys!6531 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22411 (ValueCell!17814 V!55003) V!55003)

(declare-fun dynLambda!3845 (Int (_ BitVec 64)) V!55003)

(assert (=> b!1345664 (= lt!595348 (get!22411 (select (arr!44276 _values!1303) from!1960) (dynLambda!3845 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1345665 () Bool)

(declare-fun res!892994 () Bool)

(assert (=> b!1345665 (=> (not res!892994) (not e!765710))))

(declare-datatypes ((List!31531 0))(
  ( (Nil!31528) (Cons!31527 (h!32736 (_ BitVec 64)) (t!46120 List!31531)) )
))
(declare-fun arrayNoDuplicates!0 (array!91647 (_ BitVec 32) List!31531) Bool)

(assert (=> b!1345665 (= res!892994 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31528))))

(declare-fun b!1345666 () Bool)

(declare-fun res!893002 () Bool)

(assert (=> b!1345666 (=> (not res!893002) (not e!765709))))

(assert (=> b!1345666 (= res!893002 (not (= k0!1142 (select (arr!44275 _keys!1571) from!1960))))))

(declare-fun mapNonEmpty!57844 () Bool)

(declare-fun tp!110080 () Bool)

(assert (=> mapNonEmpty!57844 (= mapRes!57844 (and tp!110080 e!765707))))

(declare-fun mapRest!57844 () (Array (_ BitVec 32) ValueCell!17814))

(declare-fun mapKey!57844 () (_ BitVec 32))

(declare-fun mapValue!57844 () ValueCell!17814)

(assert (=> mapNonEmpty!57844 (= (arr!44276 _values!1303) (store mapRest!57844 mapKey!57844 mapValue!57844))))

(assert (= (and start!113410 res!892999) b!1345660))

(assert (= (and b!1345660 res!893003) b!1345657))

(assert (= (and b!1345657 res!892995) b!1345665))

(assert (= (and b!1345665 res!892994) b!1345663))

(assert (= (and b!1345663 res!892998) b!1345661))

(assert (= (and b!1345661 res!892997) b!1345654))

(assert (= (and b!1345654 res!893000) b!1345655))

(assert (= (and b!1345655 res!892993) b!1345658))

(assert (= (and b!1345658 res!892996) b!1345664))

(assert (= (and b!1345664 res!893001) b!1345666))

(assert (= (and b!1345666 res!893002) b!1345659))

(assert (= (and b!1345656 condMapEmpty!57844) mapIsEmpty!57844))

(assert (= (and b!1345656 (not condMapEmpty!57844)) mapNonEmpty!57844))

(get-info :version)

(assert (= (and mapNonEmpty!57844 ((_ is ValueCellFull!17814) mapValue!57844)) b!1345662))

(assert (= (and b!1345656 ((_ is ValueCellFull!17814) mapDefault!57844)) b!1345653))

(assert (= start!113410 b!1345656))

(declare-fun b_lambda!24557 () Bool)

(assert (=> (not b_lambda!24557) (not b!1345664)))

(declare-fun t!46118 () Bool)

(declare-fun tb!12393 () Bool)

(assert (=> (and start!113410 (= defaultEntry!1306 defaultEntry!1306) t!46118) tb!12393))

(declare-fun result!25869 () Bool)

(assert (=> tb!12393 (= result!25869 tp_is_empty!37425)))

(assert (=> b!1345664 t!46118))

(declare-fun b_and!50715 () Bool)

(assert (= b_and!50713 (and (=> t!46118 result!25869) b_and!50715)))

(declare-fun m!1233031 () Bool)

(assert (=> b!1345659 m!1233031))

(declare-fun m!1233033 () Bool)

(assert (=> b!1345659 m!1233033))

(assert (=> b!1345659 m!1233033))

(declare-fun m!1233035 () Bool)

(assert (=> b!1345659 m!1233035))

(assert (=> b!1345666 m!1233033))

(declare-fun m!1233037 () Bool)

(assert (=> start!113410 m!1233037))

(declare-fun m!1233039 () Bool)

(assert (=> start!113410 m!1233039))

(declare-fun m!1233041 () Bool)

(assert (=> start!113410 m!1233041))

(declare-fun m!1233043 () Bool)

(assert (=> b!1345664 m!1233043))

(declare-fun m!1233045 () Bool)

(assert (=> b!1345664 m!1233045))

(declare-fun m!1233047 () Bool)

(assert (=> b!1345664 m!1233047))

(declare-fun m!1233049 () Bool)

(assert (=> b!1345664 m!1233049))

(declare-fun m!1233051 () Bool)

(assert (=> b!1345664 m!1233051))

(declare-fun m!1233053 () Bool)

(assert (=> b!1345664 m!1233053))

(assert (=> b!1345664 m!1233049))

(assert (=> b!1345664 m!1233045))

(assert (=> b!1345664 m!1233051))

(assert (=> b!1345664 m!1233033))

(declare-fun m!1233055 () Bool)

(assert (=> b!1345657 m!1233055))

(assert (=> b!1345654 m!1233033))

(declare-fun m!1233057 () Bool)

(assert (=> mapNonEmpty!57844 m!1233057))

(assert (=> b!1345655 m!1233033))

(assert (=> b!1345655 m!1233033))

(declare-fun m!1233059 () Bool)

(assert (=> b!1345655 m!1233059))

(declare-fun m!1233061 () Bool)

(assert (=> b!1345665 m!1233061))

(declare-fun m!1233063 () Bool)

(assert (=> b!1345661 m!1233063))

(assert (=> b!1345661 m!1233063))

(declare-fun m!1233065 () Bool)

(assert (=> b!1345661 m!1233065))

(check-sat (not b!1345659) (not b_lambda!24557) (not mapNonEmpty!57844) (not b!1345664) (not b!1345661) (not b!1345655) (not b_next!31425) (not start!113410) (not b!1345657) tp_is_empty!37425 b_and!50715 (not b!1345665))
(check-sat b_and!50715 (not b_next!31425))
