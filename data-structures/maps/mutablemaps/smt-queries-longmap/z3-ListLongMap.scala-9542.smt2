; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113152 () Bool)

(assert start!113152)

(declare-fun b_free!31167 () Bool)

(declare-fun b_next!31167 () Bool)

(assert (=> start!113152 (= b_free!31167 (not b_next!31167))))

(declare-fun tp!109307 () Bool)

(declare-fun b_and!50251 () Bool)

(assert (=> start!113152 (= tp!109307 b_and!50251)))

(declare-fun mapIsEmpty!57457 () Bool)

(declare-fun mapRes!57457 () Bool)

(assert (=> mapIsEmpty!57457 mapRes!57457))

(declare-fun b!1340966 () Bool)

(declare-fun res!889671 () Bool)

(declare-fun e!763704 () Bool)

(assert (=> b!1340966 (=> (not res!889671) (not e!763704))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91143 0))(
  ( (array!91144 (arr!44023 (Array (_ BitVec 32) (_ BitVec 64))) (size!44574 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91143)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1340966 (= res!889671 (not (= (select (arr!44023 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1340967 () Bool)

(declare-fun res!889677 () Bool)

(assert (=> b!1340967 (=> (not res!889677) (not e!763704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340967 (= res!889677 (validKeyInArray!0 (select (arr!44023 _keys!1571) from!1960)))))

(declare-fun b!1340968 () Bool)

(declare-fun res!889678 () Bool)

(assert (=> b!1340968 (=> (not res!889678) (not e!763704))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1340968 (= res!889678 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44574 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1340969 () Bool)

(declare-fun res!889673 () Bool)

(assert (=> b!1340969 (=> (not res!889673) (not e!763704))))

(assert (=> b!1340969 (= res!889673 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340970 () Bool)

(declare-fun res!889679 () Bool)

(assert (=> b!1340970 (=> (not res!889679) (not e!763704))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((V!54659 0))(
  ( (V!54660 (val!18658 Int)) )
))
(declare-datatypes ((ValueCell!17685 0))(
  ( (ValueCellFull!17685 (v!21304 V!54659)) (EmptyCell!17685) )
))
(declare-datatypes ((array!91145 0))(
  ( (array!91146 (arr!44024 (Array (_ BitVec 32) ValueCell!17685)) (size!44575 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91145)

(assert (=> b!1340970 (= res!889679 (and (= (size!44575 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44574 _keys!1571) (size!44575 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun res!889676 () Bool)

(assert (=> start!113152 (=> (not res!889676) (not e!763704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113152 (= res!889676 (validMask!0 mask!1977))))

(assert (=> start!113152 e!763704))

(declare-fun tp_is_empty!37167 () Bool)

(assert (=> start!113152 tp_is_empty!37167))

(assert (=> start!113152 true))

(declare-fun array_inv!33107 (array!91143) Bool)

(assert (=> start!113152 (array_inv!33107 _keys!1571)))

(declare-fun e!763706 () Bool)

(declare-fun array_inv!33108 (array!91145) Bool)

(assert (=> start!113152 (and (array_inv!33108 _values!1303) e!763706)))

(assert (=> start!113152 tp!109307))

(declare-fun b!1340971 () Bool)

(declare-fun e!763703 () Bool)

(assert (=> b!1340971 (= e!763706 (and e!763703 mapRes!57457))))

(declare-fun condMapEmpty!57457 () Bool)

(declare-fun mapDefault!57457 () ValueCell!17685)

(assert (=> b!1340971 (= condMapEmpty!57457 (= (arr!44024 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17685)) mapDefault!57457)))))

(declare-fun b!1340972 () Bool)

(assert (=> b!1340972 (= e!763704 (not true))))

(declare-datatypes ((tuple2!24166 0))(
  ( (tuple2!24167 (_1!12093 (_ BitVec 64)) (_2!12093 V!54659)) )
))
(declare-datatypes ((List!31349 0))(
  ( (Nil!31346) (Cons!31345 (h!32554 tuple2!24166) (t!45734 List!31349)) )
))
(declare-datatypes ((ListLongMap!21835 0))(
  ( (ListLongMap!21836 (toList!10933 List!31349)) )
))
(declare-fun lt!594018 () ListLongMap!21835)

(declare-fun contains!9045 (ListLongMap!21835 (_ BitVec 64)) Bool)

(assert (=> b!1340972 (contains!9045 lt!594018 k0!1142)))

(declare-datatypes ((Unit!43943 0))(
  ( (Unit!43944) )
))
(declare-fun lt!594019 () Unit!43943)

(declare-fun zeroValue!1245 () V!54659)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!331 ((_ BitVec 64) (_ BitVec 64) V!54659 ListLongMap!21835) Unit!43943)

(assert (=> b!1340972 (= lt!594019 (lemmaInListMapAfterAddingDiffThenInBefore!331 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594018))))

(declare-fun minValue!1245 () V!54659)

(declare-fun defaultEntry!1306 () Int)

(declare-fun +!4739 (ListLongMap!21835 tuple2!24166) ListLongMap!21835)

(declare-fun getCurrentListMapNoExtraKeys!6462 (array!91143 array!91145 (_ BitVec 32) (_ BitVec 32) V!54659 V!54659 (_ BitVec 32) Int) ListLongMap!21835)

(declare-fun get!22256 (ValueCell!17685 V!54659) V!54659)

(declare-fun dynLambda!3776 (Int (_ BitVec 64)) V!54659)

(assert (=> b!1340972 (= lt!594018 (+!4739 (getCurrentListMapNoExtraKeys!6462 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24167 (select (arr!44023 _keys!1571) from!1960) (get!22256 (select (arr!44024 _values!1303) from!1960) (dynLambda!3776 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1340973 () Bool)

(assert (=> b!1340973 (= e!763703 tp_is_empty!37167)))

(declare-fun b!1340974 () Bool)

(declare-fun res!889675 () Bool)

(assert (=> b!1340974 (=> (not res!889675) (not e!763704))))

(declare-fun getCurrentListMap!5835 (array!91143 array!91145 (_ BitVec 32) (_ BitVec 32) V!54659 V!54659 (_ BitVec 32) Int) ListLongMap!21835)

(assert (=> b!1340974 (= res!889675 (contains!9045 (getCurrentListMap!5835 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1340975 () Bool)

(declare-fun res!889672 () Bool)

(assert (=> b!1340975 (=> (not res!889672) (not e!763704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91143 (_ BitVec 32)) Bool)

(assert (=> b!1340975 (= res!889672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340976 () Bool)

(declare-fun res!889674 () Bool)

(assert (=> b!1340976 (=> (not res!889674) (not e!763704))))

(declare-datatypes ((List!31350 0))(
  ( (Nil!31347) (Cons!31346 (h!32555 (_ BitVec 64)) (t!45735 List!31350)) )
))
(declare-fun arrayNoDuplicates!0 (array!91143 (_ BitVec 32) List!31350) Bool)

(assert (=> b!1340976 (= res!889674 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31347))))

(declare-fun mapNonEmpty!57457 () Bool)

(declare-fun tp!109306 () Bool)

(declare-fun e!763705 () Bool)

(assert (=> mapNonEmpty!57457 (= mapRes!57457 (and tp!109306 e!763705))))

(declare-fun mapKey!57457 () (_ BitVec 32))

(declare-fun mapRest!57457 () (Array (_ BitVec 32) ValueCell!17685))

(declare-fun mapValue!57457 () ValueCell!17685)

(assert (=> mapNonEmpty!57457 (= (arr!44024 _values!1303) (store mapRest!57457 mapKey!57457 mapValue!57457))))

(declare-fun b!1340977 () Bool)

(assert (=> b!1340977 (= e!763705 tp_is_empty!37167)))

(assert (= (and start!113152 res!889676) b!1340970))

(assert (= (and b!1340970 res!889679) b!1340975))

(assert (= (and b!1340975 res!889672) b!1340976))

(assert (= (and b!1340976 res!889674) b!1340968))

(assert (= (and b!1340968 res!889678) b!1340974))

(assert (= (and b!1340974 res!889675) b!1340966))

(assert (= (and b!1340966 res!889671) b!1340967))

(assert (= (and b!1340967 res!889677) b!1340969))

(assert (= (and b!1340969 res!889673) b!1340972))

(assert (= (and b!1340971 condMapEmpty!57457) mapIsEmpty!57457))

(assert (= (and b!1340971 (not condMapEmpty!57457)) mapNonEmpty!57457))

(get-info :version)

(assert (= (and mapNonEmpty!57457 ((_ is ValueCellFull!17685) mapValue!57457)) b!1340977))

(assert (= (and b!1340971 ((_ is ValueCellFull!17685) mapDefault!57457)) b!1340973))

(assert (= start!113152 b!1340971))

(declare-fun b_lambda!24353 () Bool)

(assert (=> (not b_lambda!24353) (not b!1340972)))

(declare-fun t!45733 () Bool)

(declare-fun tb!12189 () Bool)

(assert (=> (and start!113152 (= defaultEntry!1306 defaultEntry!1306) t!45733) tb!12189))

(declare-fun result!25461 () Bool)

(assert (=> tb!12189 (= result!25461 tp_is_empty!37167)))

(assert (=> b!1340972 t!45733))

(declare-fun b_and!50253 () Bool)

(assert (= b_and!50251 (and (=> t!45733 result!25461) b_and!50253)))

(declare-fun m!1228697 () Bool)

(assert (=> b!1340974 m!1228697))

(assert (=> b!1340974 m!1228697))

(declare-fun m!1228699 () Bool)

(assert (=> b!1340974 m!1228699))

(declare-fun m!1228701 () Bool)

(assert (=> b!1340972 m!1228701))

(declare-fun m!1228703 () Bool)

(assert (=> b!1340972 m!1228703))

(declare-fun m!1228705 () Bool)

(assert (=> b!1340972 m!1228705))

(declare-fun m!1228707 () Bool)

(assert (=> b!1340972 m!1228707))

(assert (=> b!1340972 m!1228701))

(declare-fun m!1228709 () Bool)

(assert (=> b!1340972 m!1228709))

(assert (=> b!1340972 m!1228703))

(assert (=> b!1340972 m!1228705))

(declare-fun m!1228711 () Bool)

(assert (=> b!1340972 m!1228711))

(declare-fun m!1228713 () Bool)

(assert (=> b!1340972 m!1228713))

(declare-fun m!1228715 () Bool)

(assert (=> b!1340972 m!1228715))

(assert (=> b!1340966 m!1228715))

(assert (=> b!1340967 m!1228715))

(assert (=> b!1340967 m!1228715))

(declare-fun m!1228717 () Bool)

(assert (=> b!1340967 m!1228717))

(declare-fun m!1228719 () Bool)

(assert (=> b!1340976 m!1228719))

(declare-fun m!1228721 () Bool)

(assert (=> start!113152 m!1228721))

(declare-fun m!1228723 () Bool)

(assert (=> start!113152 m!1228723))

(declare-fun m!1228725 () Bool)

(assert (=> start!113152 m!1228725))

(declare-fun m!1228727 () Bool)

(assert (=> b!1340975 m!1228727))

(declare-fun m!1228729 () Bool)

(assert (=> mapNonEmpty!57457 m!1228729))

(check-sat (not mapNonEmpty!57457) (not b!1340975) b_and!50253 (not b!1340967) (not b!1340976) (not b_next!31167) (not start!113152) (not b!1340972) (not b!1340974) tp_is_empty!37167 (not b_lambda!24353))
(check-sat b_and!50253 (not b_next!31167))
