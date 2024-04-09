; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113188 () Bool)

(assert start!113188)

(declare-fun b_free!31203 () Bool)

(declare-fun b_next!31203 () Bool)

(assert (=> start!113188 (= b_free!31203 (not b_next!31203))))

(declare-fun tp!109414 () Bool)

(declare-fun b_and!50323 () Bool)

(assert (=> start!113188 (= tp!109414 b_and!50323)))

(declare-fun b!1341650 () Bool)

(declare-fun res!890164 () Bool)

(declare-fun e!763976 () Bool)

(assert (=> b!1341650 (=> (not res!890164) (not e!763976))))

(declare-datatypes ((array!91215 0))(
  ( (array!91216 (arr!44059 (Array (_ BitVec 32) (_ BitVec 64))) (size!44610 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91215)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341650 (= res!890164 (validKeyInArray!0 (select (arr!44059 _keys!1571) from!1960)))))

(declare-fun b!1341651 () Bool)

(declare-fun e!763973 () Bool)

(declare-fun tp_is_empty!37203 () Bool)

(assert (=> b!1341651 (= e!763973 tp_is_empty!37203)))

(declare-fun res!890163 () Bool)

(assert (=> start!113188 (=> (not res!890163) (not e!763976))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113188 (= res!890163 (validMask!0 mask!1977))))

(assert (=> start!113188 e!763976))

(assert (=> start!113188 tp_is_empty!37203))

(assert (=> start!113188 true))

(declare-fun array_inv!33129 (array!91215) Bool)

(assert (=> start!113188 (array_inv!33129 _keys!1571)))

(declare-datatypes ((V!54707 0))(
  ( (V!54708 (val!18676 Int)) )
))
(declare-datatypes ((ValueCell!17703 0))(
  ( (ValueCellFull!17703 (v!21322 V!54707)) (EmptyCell!17703) )
))
(declare-datatypes ((array!91217 0))(
  ( (array!91218 (arr!44060 (Array (_ BitVec 32) ValueCell!17703)) (size!44611 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91217)

(declare-fun e!763975 () Bool)

(declare-fun array_inv!33130 (array!91217) Bool)

(assert (=> start!113188 (and (array_inv!33130 _values!1303) e!763975)))

(assert (=> start!113188 tp!109414))

(declare-fun mapIsEmpty!57511 () Bool)

(declare-fun mapRes!57511 () Bool)

(assert (=> mapIsEmpty!57511 mapRes!57511))

(declare-fun b!1341652 () Bool)

(declare-fun res!890162 () Bool)

(assert (=> b!1341652 (=> (not res!890162) (not e!763976))))

(declare-datatypes ((List!31376 0))(
  ( (Nil!31373) (Cons!31372 (h!32581 (_ BitVec 64)) (t!45797 List!31376)) )
))
(declare-fun arrayNoDuplicates!0 (array!91215 (_ BitVec 32) List!31376) Bool)

(assert (=> b!1341652 (= res!890162 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31373))))

(declare-fun b!1341653 () Bool)

(declare-fun res!890161 () Bool)

(assert (=> b!1341653 (=> (not res!890161) (not e!763976))))

(declare-fun k0!1142 () (_ BitVec 64))

(assert (=> b!1341653 (= res!890161 (not (= (select (arr!44059 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1341654 () Bool)

(declare-fun res!890158 () Bool)

(assert (=> b!1341654 (=> (not res!890158) (not e!763976))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91215 (_ BitVec 32)) Bool)

(assert (=> b!1341654 (= res!890158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341655 () Bool)

(declare-fun res!890165 () Bool)

(assert (=> b!1341655 (=> (not res!890165) (not e!763976))))

(declare-fun minValue!1245 () V!54707)

(declare-fun zeroValue!1245 () V!54707)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24196 0))(
  ( (tuple2!24197 (_1!12108 (_ BitVec 64)) (_2!12108 V!54707)) )
))
(declare-datatypes ((List!31377 0))(
  ( (Nil!31374) (Cons!31373 (h!32582 tuple2!24196) (t!45798 List!31377)) )
))
(declare-datatypes ((ListLongMap!21865 0))(
  ( (ListLongMap!21866 (toList!10948 List!31377)) )
))
(declare-fun contains!9060 (ListLongMap!21865 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5848 (array!91215 array!91217 (_ BitVec 32) (_ BitVec 32) V!54707 V!54707 (_ BitVec 32) Int) ListLongMap!21865)

(assert (=> b!1341655 (= res!890165 (contains!9060 (getCurrentListMap!5848 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1341656 () Bool)

(declare-fun res!890160 () Bool)

(assert (=> b!1341656 (=> (not res!890160) (not e!763976))))

(assert (=> b!1341656 (= res!890160 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44610 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341657 () Bool)

(declare-fun res!890157 () Bool)

(assert (=> b!1341657 (=> (not res!890157) (not e!763976))))

(assert (=> b!1341657 (= res!890157 (and (= (size!44611 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44610 _keys!1571) (size!44611 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1341658 () Bool)

(declare-fun e!763972 () Bool)

(assert (=> b!1341658 (= e!763972 tp_is_empty!37203)))

(declare-fun mapNonEmpty!57511 () Bool)

(declare-fun tp!109415 () Bool)

(assert (=> mapNonEmpty!57511 (= mapRes!57511 (and tp!109415 e!763973))))

(declare-fun mapValue!57511 () ValueCell!17703)

(declare-fun mapRest!57511 () (Array (_ BitVec 32) ValueCell!17703))

(declare-fun mapKey!57511 () (_ BitVec 32))

(assert (=> mapNonEmpty!57511 (= (arr!44060 _values!1303) (store mapRest!57511 mapKey!57511 mapValue!57511))))

(declare-fun b!1341659 () Bool)

(assert (=> b!1341659 (= e!763976 (not true))))

(declare-fun lt!594143 () ListLongMap!21865)

(assert (=> b!1341659 (contains!9060 lt!594143 k0!1142)))

(declare-fun lt!594145 () V!54707)

(declare-datatypes ((Unit!43971 0))(
  ( (Unit!43972) )
))
(declare-fun lt!594141 () Unit!43971)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!345 ((_ BitVec 64) (_ BitVec 64) V!54707 ListLongMap!21865) Unit!43971)

(assert (=> b!1341659 (= lt!594141 (lemmaInListMapAfterAddingDiffThenInBefore!345 k0!1142 (select (arr!44059 _keys!1571) from!1960) lt!594145 lt!594143))))

(declare-fun lt!594144 () ListLongMap!21865)

(assert (=> b!1341659 (contains!9060 lt!594144 k0!1142)))

(declare-fun lt!594142 () Unit!43971)

(assert (=> b!1341659 (= lt!594142 (lemmaInListMapAfterAddingDiffThenInBefore!345 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594144))))

(declare-fun +!4753 (ListLongMap!21865 tuple2!24196) ListLongMap!21865)

(assert (=> b!1341659 (= lt!594144 (+!4753 lt!594143 (tuple2!24197 (select (arr!44059 _keys!1571) from!1960) lt!594145)))))

(declare-fun get!22282 (ValueCell!17703 V!54707) V!54707)

(declare-fun dynLambda!3790 (Int (_ BitVec 64)) V!54707)

(assert (=> b!1341659 (= lt!594145 (get!22282 (select (arr!44060 _values!1303) from!1960) (dynLambda!3790 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6476 (array!91215 array!91217 (_ BitVec 32) (_ BitVec 32) V!54707 V!54707 (_ BitVec 32) Int) ListLongMap!21865)

(assert (=> b!1341659 (= lt!594143 (getCurrentListMapNoExtraKeys!6476 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1341660 () Bool)

(declare-fun res!890159 () Bool)

(assert (=> b!1341660 (=> (not res!890159) (not e!763976))))

(assert (=> b!1341660 (= res!890159 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341661 () Bool)

(assert (=> b!1341661 (= e!763975 (and e!763972 mapRes!57511))))

(declare-fun condMapEmpty!57511 () Bool)

(declare-fun mapDefault!57511 () ValueCell!17703)

(assert (=> b!1341661 (= condMapEmpty!57511 (= (arr!44060 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17703)) mapDefault!57511)))))

(assert (= (and start!113188 res!890163) b!1341657))

(assert (= (and b!1341657 res!890157) b!1341654))

(assert (= (and b!1341654 res!890158) b!1341652))

(assert (= (and b!1341652 res!890162) b!1341656))

(assert (= (and b!1341656 res!890160) b!1341655))

(assert (= (and b!1341655 res!890165) b!1341653))

(assert (= (and b!1341653 res!890161) b!1341650))

(assert (= (and b!1341650 res!890164) b!1341660))

(assert (= (and b!1341660 res!890159) b!1341659))

(assert (= (and b!1341661 condMapEmpty!57511) mapIsEmpty!57511))

(assert (= (and b!1341661 (not condMapEmpty!57511)) mapNonEmpty!57511))

(get-info :version)

(assert (= (and mapNonEmpty!57511 ((_ is ValueCellFull!17703) mapValue!57511)) b!1341651))

(assert (= (and b!1341661 ((_ is ValueCellFull!17703) mapDefault!57511)) b!1341658))

(assert (= start!113188 b!1341661))

(declare-fun b_lambda!24389 () Bool)

(assert (=> (not b_lambda!24389) (not b!1341659)))

(declare-fun t!45796 () Bool)

(declare-fun tb!12225 () Bool)

(assert (=> (and start!113188 (= defaultEntry!1306 defaultEntry!1306) t!45796) tb!12225))

(declare-fun result!25533 () Bool)

(assert (=> tb!12225 (= result!25533 tp_is_empty!37203)))

(assert (=> b!1341659 t!45796))

(declare-fun b_and!50325 () Bool)

(assert (= b_and!50323 (and (=> t!45796 result!25533) b_and!50325)))

(declare-fun m!1229313 () Bool)

(assert (=> b!1341654 m!1229313))

(declare-fun m!1229315 () Bool)

(assert (=> b!1341652 m!1229315))

(declare-fun m!1229317 () Bool)

(assert (=> start!113188 m!1229317))

(declare-fun m!1229319 () Bool)

(assert (=> start!113188 m!1229319))

(declare-fun m!1229321 () Bool)

(assert (=> start!113188 m!1229321))

(declare-fun m!1229323 () Bool)

(assert (=> b!1341650 m!1229323))

(assert (=> b!1341650 m!1229323))

(declare-fun m!1229325 () Bool)

(assert (=> b!1341650 m!1229325))

(declare-fun m!1229327 () Bool)

(assert (=> b!1341659 m!1229327))

(declare-fun m!1229329 () Bool)

(assert (=> b!1341659 m!1229329))

(declare-fun m!1229331 () Bool)

(assert (=> b!1341659 m!1229331))

(assert (=> b!1341659 m!1229327))

(declare-fun m!1229333 () Bool)

(assert (=> b!1341659 m!1229333))

(declare-fun m!1229335 () Bool)

(assert (=> b!1341659 m!1229335))

(assert (=> b!1341659 m!1229323))

(declare-fun m!1229337 () Bool)

(assert (=> b!1341659 m!1229337))

(assert (=> b!1341659 m!1229323))

(declare-fun m!1229339 () Bool)

(assert (=> b!1341659 m!1229339))

(declare-fun m!1229341 () Bool)

(assert (=> b!1341659 m!1229341))

(assert (=> b!1341659 m!1229329))

(declare-fun m!1229343 () Bool)

(assert (=> b!1341659 m!1229343))

(declare-fun m!1229345 () Bool)

(assert (=> mapNonEmpty!57511 m!1229345))

(assert (=> b!1341653 m!1229323))

(declare-fun m!1229347 () Bool)

(assert (=> b!1341655 m!1229347))

(assert (=> b!1341655 m!1229347))

(declare-fun m!1229349 () Bool)

(assert (=> b!1341655 m!1229349))

(check-sat (not b_lambda!24389) (not mapNonEmpty!57511) tp_is_empty!37203 (not b!1341650) (not b!1341655) (not b!1341659) (not start!113188) b_and!50325 (not b_next!31203) (not b!1341652) (not b!1341654))
(check-sat b_and!50325 (not b_next!31203))
