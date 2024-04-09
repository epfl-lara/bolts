; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113206 () Bool)

(assert start!113206)

(declare-fun b_free!31221 () Bool)

(declare-fun b_next!31221 () Bool)

(assert (=> start!113206 (= b_free!31221 (not b_next!31221))))

(declare-fun tp!109469 () Bool)

(declare-fun b_and!50359 () Bool)

(assert (=> start!113206 (= tp!109469 b_and!50359)))

(declare-fun b!1341992 () Bool)

(declare-fun res!890403 () Bool)

(declare-fun e!764111 () Bool)

(assert (=> b!1341992 (=> (not res!890403) (not e!764111))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91251 0))(
  ( (array!91252 (arr!44077 (Array (_ BitVec 32) (_ BitVec 64))) (size!44628 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91251)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1341992 (= res!890403 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44628 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341993 () Bool)

(declare-fun e!764108 () Bool)

(declare-fun tp_is_empty!37221 () Bool)

(assert (=> b!1341993 (= e!764108 tp_is_empty!37221)))

(declare-fun b!1341994 () Bool)

(declare-fun res!890407 () Bool)

(assert (=> b!1341994 (=> (not res!890407) (not e!764111))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((V!54731 0))(
  ( (V!54732 (val!18685 Int)) )
))
(declare-datatypes ((ValueCell!17712 0))(
  ( (ValueCellFull!17712 (v!21331 V!54731)) (EmptyCell!17712) )
))
(declare-datatypes ((array!91253 0))(
  ( (array!91254 (arr!44078 (Array (_ BitVec 32) ValueCell!17712)) (size!44629 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91253)

(assert (=> b!1341994 (= res!890407 (and (= (size!44629 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44628 _keys!1571) (size!44629 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1341995 () Bool)

(declare-fun res!890406 () Bool)

(assert (=> b!1341995 (=> (not res!890406) (not e!764111))))

(declare-datatypes ((List!31392 0))(
  ( (Nil!31389) (Cons!31388 (h!32597 (_ BitVec 64)) (t!45831 List!31392)) )
))
(declare-fun arrayNoDuplicates!0 (array!91251 (_ BitVec 32) List!31392) Bool)

(assert (=> b!1341995 (= res!890406 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31389))))

(declare-fun b!1341996 () Bool)

(assert (=> b!1341996 (= e!764111 (not true))))

(declare-datatypes ((tuple2!24212 0))(
  ( (tuple2!24213 (_1!12116 (_ BitVec 64)) (_2!12116 V!54731)) )
))
(declare-datatypes ((List!31393 0))(
  ( (Nil!31390) (Cons!31389 (h!32598 tuple2!24212) (t!45832 List!31393)) )
))
(declare-datatypes ((ListLongMap!21881 0))(
  ( (ListLongMap!21882 (toList!10956 List!31393)) )
))
(declare-fun lt!594277 () ListLongMap!21881)

(declare-fun contains!9068 (ListLongMap!21881 (_ BitVec 64)) Bool)

(assert (=> b!1341996 (contains!9068 lt!594277 k0!1142)))

(declare-fun lt!594279 () V!54731)

(declare-datatypes ((Unit!43985 0))(
  ( (Unit!43986) )
))
(declare-fun lt!594280 () Unit!43985)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!352 ((_ BitVec 64) (_ BitVec 64) V!54731 ListLongMap!21881) Unit!43985)

(assert (=> b!1341996 (= lt!594280 (lemmaInListMapAfterAddingDiffThenInBefore!352 k0!1142 (select (arr!44077 _keys!1571) from!1960) lt!594279 lt!594277))))

(declare-fun lt!594278 () ListLongMap!21881)

(assert (=> b!1341996 (contains!9068 lt!594278 k0!1142)))

(declare-fun lt!594276 () Unit!43985)

(declare-fun zeroValue!1245 () V!54731)

(assert (=> b!1341996 (= lt!594276 (lemmaInListMapAfterAddingDiffThenInBefore!352 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594278))))

(declare-fun +!4760 (ListLongMap!21881 tuple2!24212) ListLongMap!21881)

(assert (=> b!1341996 (= lt!594278 (+!4760 lt!594277 (tuple2!24213 (select (arr!44077 _keys!1571) from!1960) lt!594279)))))

(declare-fun defaultEntry!1306 () Int)

(declare-fun get!22295 (ValueCell!17712 V!54731) V!54731)

(declare-fun dynLambda!3797 (Int (_ BitVec 64)) V!54731)

(assert (=> b!1341996 (= lt!594279 (get!22295 (select (arr!44078 _values!1303) from!1960) (dynLambda!3797 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54731)

(declare-fun getCurrentListMapNoExtraKeys!6483 (array!91251 array!91253 (_ BitVec 32) (_ BitVec 32) V!54731 V!54731 (_ BitVec 32) Int) ListLongMap!21881)

(assert (=> b!1341996 (= lt!594277 (getCurrentListMapNoExtraKeys!6483 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1341997 () Bool)

(declare-fun res!890400 () Bool)

(assert (=> b!1341997 (=> (not res!890400) (not e!764111))))

(assert (=> b!1341997 (= res!890400 (not (= (select (arr!44077 _keys!1571) from!1960) k0!1142)))))

(declare-fun mapIsEmpty!57538 () Bool)

(declare-fun mapRes!57538 () Bool)

(assert (=> mapIsEmpty!57538 mapRes!57538))

(declare-fun mapNonEmpty!57538 () Bool)

(declare-fun tp!109468 () Bool)

(assert (=> mapNonEmpty!57538 (= mapRes!57538 (and tp!109468 e!764108))))

(declare-fun mapValue!57538 () ValueCell!17712)

(declare-fun mapKey!57538 () (_ BitVec 32))

(declare-fun mapRest!57538 () (Array (_ BitVec 32) ValueCell!17712))

(assert (=> mapNonEmpty!57538 (= (arr!44078 _values!1303) (store mapRest!57538 mapKey!57538 mapValue!57538))))

(declare-fun b!1341999 () Bool)

(declare-fun res!890405 () Bool)

(assert (=> b!1341999 (=> (not res!890405) (not e!764111))))

(declare-fun getCurrentListMap!5856 (array!91251 array!91253 (_ BitVec 32) (_ BitVec 32) V!54731 V!54731 (_ BitVec 32) Int) ListLongMap!21881)

(assert (=> b!1341999 (= res!890405 (contains!9068 (getCurrentListMap!5856 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1342000 () Bool)

(declare-fun res!890402 () Bool)

(assert (=> b!1342000 (=> (not res!890402) (not e!764111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91251 (_ BitVec 32)) Bool)

(assert (=> b!1342000 (= res!890402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341998 () Bool)

(declare-fun res!890408 () Bool)

(assert (=> b!1341998 (=> (not res!890408) (not e!764111))))

(assert (=> b!1341998 (= res!890408 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!890404 () Bool)

(assert (=> start!113206 (=> (not res!890404) (not e!764111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113206 (= res!890404 (validMask!0 mask!1977))))

(assert (=> start!113206 e!764111))

(assert (=> start!113206 tp_is_empty!37221))

(assert (=> start!113206 true))

(declare-fun array_inv!33143 (array!91251) Bool)

(assert (=> start!113206 (array_inv!33143 _keys!1571)))

(declare-fun e!764110 () Bool)

(declare-fun array_inv!33144 (array!91253) Bool)

(assert (=> start!113206 (and (array_inv!33144 _values!1303) e!764110)))

(assert (=> start!113206 tp!109469))

(declare-fun b!1342001 () Bool)

(declare-fun res!890401 () Bool)

(assert (=> b!1342001 (=> (not res!890401) (not e!764111))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342001 (= res!890401 (validKeyInArray!0 (select (arr!44077 _keys!1571) from!1960)))))

(declare-fun b!1342002 () Bool)

(declare-fun e!764109 () Bool)

(assert (=> b!1342002 (= e!764110 (and e!764109 mapRes!57538))))

(declare-fun condMapEmpty!57538 () Bool)

(declare-fun mapDefault!57538 () ValueCell!17712)

(assert (=> b!1342002 (= condMapEmpty!57538 (= (arr!44078 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17712)) mapDefault!57538)))))

(declare-fun b!1342003 () Bool)

(assert (=> b!1342003 (= e!764109 tp_is_empty!37221)))

(assert (= (and start!113206 res!890404) b!1341994))

(assert (= (and b!1341994 res!890407) b!1342000))

(assert (= (and b!1342000 res!890402) b!1341995))

(assert (= (and b!1341995 res!890406) b!1341992))

(assert (= (and b!1341992 res!890403) b!1341999))

(assert (= (and b!1341999 res!890405) b!1341997))

(assert (= (and b!1341997 res!890400) b!1342001))

(assert (= (and b!1342001 res!890401) b!1341998))

(assert (= (and b!1341998 res!890408) b!1341996))

(assert (= (and b!1342002 condMapEmpty!57538) mapIsEmpty!57538))

(assert (= (and b!1342002 (not condMapEmpty!57538)) mapNonEmpty!57538))

(get-info :version)

(assert (= (and mapNonEmpty!57538 ((_ is ValueCellFull!17712) mapValue!57538)) b!1341993))

(assert (= (and b!1342002 ((_ is ValueCellFull!17712) mapDefault!57538)) b!1342003))

(assert (= start!113206 b!1342002))

(declare-fun b_lambda!24407 () Bool)

(assert (=> (not b_lambda!24407) (not b!1341996)))

(declare-fun t!45830 () Bool)

(declare-fun tb!12243 () Bool)

(assert (=> (and start!113206 (= defaultEntry!1306 defaultEntry!1306) t!45830) tb!12243))

(declare-fun result!25569 () Bool)

(assert (=> tb!12243 (= result!25569 tp_is_empty!37221)))

(assert (=> b!1341996 t!45830))

(declare-fun b_and!50361 () Bool)

(assert (= b_and!50359 (and (=> t!45830 result!25569) b_and!50361)))

(declare-fun m!1229655 () Bool)

(assert (=> start!113206 m!1229655))

(declare-fun m!1229657 () Bool)

(assert (=> start!113206 m!1229657))

(declare-fun m!1229659 () Bool)

(assert (=> start!113206 m!1229659))

(declare-fun m!1229661 () Bool)

(assert (=> b!1341995 m!1229661))

(declare-fun m!1229663 () Bool)

(assert (=> b!1341999 m!1229663))

(assert (=> b!1341999 m!1229663))

(declare-fun m!1229665 () Bool)

(assert (=> b!1341999 m!1229665))

(declare-fun m!1229667 () Bool)

(assert (=> b!1341996 m!1229667))

(declare-fun m!1229669 () Bool)

(assert (=> b!1341996 m!1229669))

(declare-fun m!1229671 () Bool)

(assert (=> b!1341996 m!1229671))

(declare-fun m!1229673 () Bool)

(assert (=> b!1341996 m!1229673))

(assert (=> b!1341996 m!1229669))

(declare-fun m!1229675 () Bool)

(assert (=> b!1341996 m!1229675))

(declare-fun m!1229677 () Bool)

(assert (=> b!1341996 m!1229677))

(assert (=> b!1341996 m!1229671))

(declare-fun m!1229679 () Bool)

(assert (=> b!1341996 m!1229679))

(declare-fun m!1229681 () Bool)

(assert (=> b!1341996 m!1229681))

(assert (=> b!1341996 m!1229675))

(declare-fun m!1229683 () Bool)

(assert (=> b!1341996 m!1229683))

(declare-fun m!1229685 () Bool)

(assert (=> b!1341996 m!1229685))

(declare-fun m!1229687 () Bool)

(assert (=> b!1342000 m!1229687))

(assert (=> b!1341997 m!1229675))

(declare-fun m!1229689 () Bool)

(assert (=> mapNonEmpty!57538 m!1229689))

(assert (=> b!1342001 m!1229675))

(assert (=> b!1342001 m!1229675))

(declare-fun m!1229691 () Bool)

(assert (=> b!1342001 m!1229691))

(check-sat (not b!1341995) (not b!1341999) (not b_next!31221) (not b_lambda!24407) (not mapNonEmpty!57538) b_and!50361 (not b!1342001) (not b!1342000) (not start!113206) tp_is_empty!37221 (not b!1341996))
(check-sat b_and!50361 (not b_next!31221))
