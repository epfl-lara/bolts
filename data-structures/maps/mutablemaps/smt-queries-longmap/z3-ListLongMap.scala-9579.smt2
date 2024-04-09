; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113374 () Bool)

(assert start!113374)

(declare-fun b_free!31389 () Bool)

(declare-fun b_next!31389 () Bool)

(assert (=> start!113374 (= b_free!31389 (not b_next!31389))))

(declare-fun tp!109972 () Bool)

(declare-fun b_and!50641 () Bool)

(assert (=> start!113374 (= tp!109972 b_and!50641)))

(declare-fun b!1344861 () Bool)

(declare-fun res!892409 () Bool)

(declare-fun e!765386 () Bool)

(assert (=> b!1344861 (=> (not res!892409) (not e!765386))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1344861 (= res!892409 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1344862 () Bool)

(declare-fun res!892403 () Bool)

(assert (=> b!1344862 (=> (not res!892403) (not e!765386))))

(declare-datatypes ((array!91575 0))(
  ( (array!91576 (arr!44239 (Array (_ BitVec 32) (_ BitVec 64))) (size!44790 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91575)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344862 (= res!892403 (validKeyInArray!0 (select (arr!44239 _keys!1571) from!1960)))))

(declare-fun b!1344863 () Bool)

(declare-fun res!892407 () Bool)

(assert (=> b!1344863 (=> (not res!892407) (not e!765386))))

(declare-fun k0!1142 () (_ BitVec 64))

(assert (=> b!1344863 (= res!892407 (not (= (select (arr!44239 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1344864 () Bool)

(declare-fun e!765385 () Bool)

(assert (=> b!1344864 (= e!765386 e!765385)))

(declare-fun res!892406 () Bool)

(assert (=> b!1344864 (=> (not res!892406) (not e!765385))))

(declare-datatypes ((V!54955 0))(
  ( (V!54956 (val!18769 Int)) )
))
(declare-fun lt!595184 () V!54955)

(declare-datatypes ((tuple2!24330 0))(
  ( (tuple2!24331 (_1!12175 (_ BitVec 64)) (_2!12175 V!54955)) )
))
(declare-datatypes ((List!31504 0))(
  ( (Nil!31501) (Cons!31500 (h!32709 tuple2!24330) (t!46057 List!31504)) )
))
(declare-datatypes ((ListLongMap!21999 0))(
  ( (ListLongMap!22000 (toList!11015 List!31504)) )
))
(declare-fun lt!595186 () ListLongMap!21999)

(declare-fun contains!9127 (ListLongMap!21999 (_ BitVec 64)) Bool)

(declare-fun +!4796 (ListLongMap!21999 tuple2!24330) ListLongMap!21999)

(assert (=> b!1344864 (= res!892406 (contains!9127 (+!4796 lt!595186 (tuple2!24331 (select (arr!44239 _keys!1571) from!1960) lt!595184)) k0!1142))))

(declare-fun minValue!1245 () V!54955)

(declare-fun defaultEntry!1306 () Int)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54955)

(declare-datatypes ((ValueCell!17796 0))(
  ( (ValueCellFull!17796 (v!21415 V!54955)) (EmptyCell!17796) )
))
(declare-datatypes ((array!91577 0))(
  ( (array!91578 (arr!44240 (Array (_ BitVec 32) ValueCell!17796)) (size!44791 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91577)

(declare-fun getCurrentListMapNoExtraKeys!6519 (array!91575 array!91577 (_ BitVec 32) (_ BitVec 32) V!54955 V!54955 (_ BitVec 32) Int) ListLongMap!21999)

(assert (=> b!1344864 (= lt!595186 (getCurrentListMapNoExtraKeys!6519 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22387 (ValueCell!17796 V!54955) V!54955)

(declare-fun dynLambda!3833 (Int (_ BitVec 64)) V!54955)

(assert (=> b!1344864 (= lt!595184 (get!22387 (select (arr!44240 _values!1303) from!1960) (dynLambda!3833 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!57790 () Bool)

(declare-fun mapRes!57790 () Bool)

(declare-fun tp!109973 () Bool)

(declare-fun e!765384 () Bool)

(assert (=> mapNonEmpty!57790 (= mapRes!57790 (and tp!109973 e!765384))))

(declare-fun mapKey!57790 () (_ BitVec 32))

(declare-fun mapRest!57790 () (Array (_ BitVec 32) ValueCell!17796))

(declare-fun mapValue!57790 () ValueCell!17796)

(assert (=> mapNonEmpty!57790 (= (arr!44240 _values!1303) (store mapRest!57790 mapKey!57790 mapValue!57790))))

(declare-fun b!1344865 () Bool)

(declare-fun res!892402 () Bool)

(assert (=> b!1344865 (=> (not res!892402) (not e!765386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91575 (_ BitVec 32)) Bool)

(assert (=> b!1344865 (= res!892402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1344866 () Bool)

(assert (=> b!1344866 (= e!765385 (not true))))

(assert (=> b!1344866 (contains!9127 lt!595186 k0!1142)))

(declare-datatypes ((Unit!44049 0))(
  ( (Unit!44050) )
))
(declare-fun lt!595185 () Unit!44049)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!384 ((_ BitVec 64) (_ BitVec 64) V!54955 ListLongMap!21999) Unit!44049)

(assert (=> b!1344866 (= lt!595185 (lemmaInListMapAfterAddingDiffThenInBefore!384 k0!1142 (select (arr!44239 _keys!1571) from!1960) lt!595184 lt!595186))))

(declare-fun b!1344867 () Bool)

(declare-fun e!765382 () Bool)

(declare-fun e!765383 () Bool)

(assert (=> b!1344867 (= e!765382 (and e!765383 mapRes!57790))))

(declare-fun condMapEmpty!57790 () Bool)

(declare-fun mapDefault!57790 () ValueCell!17796)

(assert (=> b!1344867 (= condMapEmpty!57790 (= (arr!44240 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17796)) mapDefault!57790)))))

(declare-fun mapIsEmpty!57790 () Bool)

(assert (=> mapIsEmpty!57790 mapRes!57790))

(declare-fun b!1344868 () Bool)

(declare-fun res!892404 () Bool)

(assert (=> b!1344868 (=> (not res!892404) (not e!765386))))

(declare-fun getCurrentListMap!5908 (array!91575 array!91577 (_ BitVec 32) (_ BitVec 32) V!54955 V!54955 (_ BitVec 32) Int) ListLongMap!21999)

(assert (=> b!1344868 (= res!892404 (contains!9127 (getCurrentListMap!5908 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun res!892399 () Bool)

(assert (=> start!113374 (=> (not res!892399) (not e!765386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113374 (= res!892399 (validMask!0 mask!1977))))

(assert (=> start!113374 e!765386))

(declare-fun tp_is_empty!37389 () Bool)

(assert (=> start!113374 tp_is_empty!37389))

(assert (=> start!113374 true))

(declare-fun array_inv!33253 (array!91575) Bool)

(assert (=> start!113374 (array_inv!33253 _keys!1571)))

(declare-fun array_inv!33254 (array!91577) Bool)

(assert (=> start!113374 (and (array_inv!33254 _values!1303) e!765382)))

(assert (=> start!113374 tp!109972))

(declare-fun b!1344869 () Bool)

(declare-fun res!892400 () Bool)

(assert (=> b!1344869 (=> (not res!892400) (not e!765386))))

(assert (=> b!1344869 (= res!892400 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44790 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344870 () Bool)

(declare-fun res!892408 () Bool)

(assert (=> b!1344870 (=> (not res!892408) (not e!765386))))

(assert (=> b!1344870 (= res!892408 (and (= (size!44791 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44790 _keys!1571) (size!44791 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1344871 () Bool)

(assert (=> b!1344871 (= e!765384 tp_is_empty!37389)))

(declare-fun b!1344872 () Bool)

(assert (=> b!1344872 (= e!765383 tp_is_empty!37389)))

(declare-fun b!1344873 () Bool)

(declare-fun res!892405 () Bool)

(assert (=> b!1344873 (=> (not res!892405) (not e!765386))))

(declare-datatypes ((List!31505 0))(
  ( (Nil!31502) (Cons!31501 (h!32710 (_ BitVec 64)) (t!46058 List!31505)) )
))
(declare-fun arrayNoDuplicates!0 (array!91575 (_ BitVec 32) List!31505) Bool)

(assert (=> b!1344873 (= res!892405 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31502))))

(declare-fun b!1344874 () Bool)

(declare-fun res!892401 () Bool)

(assert (=> b!1344874 (=> (not res!892401) (not e!765385))))

(assert (=> b!1344874 (= res!892401 (not (= k0!1142 (select (arr!44239 _keys!1571) from!1960))))))

(assert (= (and start!113374 res!892399) b!1344870))

(assert (= (and b!1344870 res!892408) b!1344865))

(assert (= (and b!1344865 res!892402) b!1344873))

(assert (= (and b!1344873 res!892405) b!1344869))

(assert (= (and b!1344869 res!892400) b!1344868))

(assert (= (and b!1344868 res!892404) b!1344863))

(assert (= (and b!1344863 res!892407) b!1344862))

(assert (= (and b!1344862 res!892403) b!1344861))

(assert (= (and b!1344861 res!892409) b!1344864))

(assert (= (and b!1344864 res!892406) b!1344874))

(assert (= (and b!1344874 res!892401) b!1344866))

(assert (= (and b!1344867 condMapEmpty!57790) mapIsEmpty!57790))

(assert (= (and b!1344867 (not condMapEmpty!57790)) mapNonEmpty!57790))

(get-info :version)

(assert (= (and mapNonEmpty!57790 ((_ is ValueCellFull!17796) mapValue!57790)) b!1344871))

(assert (= (and b!1344867 ((_ is ValueCellFull!17796) mapDefault!57790)) b!1344872))

(assert (= start!113374 b!1344867))

(declare-fun b_lambda!24521 () Bool)

(assert (=> (not b_lambda!24521) (not b!1344864)))

(declare-fun t!46056 () Bool)

(declare-fun tb!12357 () Bool)

(assert (=> (and start!113374 (= defaultEntry!1306 defaultEntry!1306) t!46056) tb!12357))

(declare-fun result!25797 () Bool)

(assert (=> tb!12357 (= result!25797 tp_is_empty!37389)))

(assert (=> b!1344864 t!46056))

(declare-fun b_and!50643 () Bool)

(assert (= b_and!50641 (and (=> t!46056 result!25797) b_and!50643)))

(declare-fun m!1232383 () Bool)

(assert (=> mapNonEmpty!57790 m!1232383))

(declare-fun m!1232385 () Bool)

(assert (=> b!1344868 m!1232385))

(assert (=> b!1344868 m!1232385))

(declare-fun m!1232387 () Bool)

(assert (=> b!1344868 m!1232387))

(declare-fun m!1232389 () Bool)

(assert (=> b!1344863 m!1232389))

(assert (=> b!1344874 m!1232389))

(declare-fun m!1232391 () Bool)

(assert (=> b!1344873 m!1232391))

(declare-fun m!1232393 () Bool)

(assert (=> b!1344866 m!1232393))

(assert (=> b!1344866 m!1232389))

(assert (=> b!1344866 m!1232389))

(declare-fun m!1232395 () Bool)

(assert (=> b!1344866 m!1232395))

(assert (=> b!1344862 m!1232389))

(assert (=> b!1344862 m!1232389))

(declare-fun m!1232397 () Bool)

(assert (=> b!1344862 m!1232397))

(declare-fun m!1232399 () Bool)

(assert (=> start!113374 m!1232399))

(declare-fun m!1232401 () Bool)

(assert (=> start!113374 m!1232401))

(declare-fun m!1232403 () Bool)

(assert (=> start!113374 m!1232403))

(declare-fun m!1232405 () Bool)

(assert (=> b!1344865 m!1232405))

(declare-fun m!1232407 () Bool)

(assert (=> b!1344864 m!1232407))

(declare-fun m!1232409 () Bool)

(assert (=> b!1344864 m!1232409))

(declare-fun m!1232411 () Bool)

(assert (=> b!1344864 m!1232411))

(declare-fun m!1232413 () Bool)

(assert (=> b!1344864 m!1232413))

(assert (=> b!1344864 m!1232409))

(assert (=> b!1344864 m!1232411))

(declare-fun m!1232415 () Bool)

(assert (=> b!1344864 m!1232415))

(declare-fun m!1232417 () Bool)

(assert (=> b!1344864 m!1232417))

(assert (=> b!1344864 m!1232415))

(assert (=> b!1344864 m!1232389))

(check-sat (not mapNonEmpty!57790) (not b!1344865) (not b_next!31389) (not b!1344866) (not b!1344873) (not b_lambda!24521) (not b!1344862) b_and!50643 (not b!1344868) tp_is_empty!37389 (not b!1344864) (not start!113374))
(check-sat b_and!50643 (not b_next!31389))
