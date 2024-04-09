; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113182 () Bool)

(assert start!113182)

(declare-fun b_free!31197 () Bool)

(declare-fun b_next!31197 () Bool)

(assert (=> start!113182 (= b_free!31197 (not b_next!31197))))

(declare-fun tp!109397 () Bool)

(declare-fun b_and!50311 () Bool)

(assert (=> start!113182 (= tp!109397 b_and!50311)))

(declare-fun b!1341536 () Bool)

(declare-fun res!890083 () Bool)

(declare-fun e!763927 () Bool)

(assert (=> b!1341536 (=> (not res!890083) (not e!763927))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1341536 (= res!890083 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341537 () Bool)

(declare-fun e!763928 () Bool)

(declare-fun tp_is_empty!37197 () Bool)

(assert (=> b!1341537 (= e!763928 tp_is_empty!37197)))

(declare-fun b!1341538 () Bool)

(declare-fun res!890084 () Bool)

(assert (=> b!1341538 (=> (not res!890084) (not e!763927))))

(declare-datatypes ((V!54699 0))(
  ( (V!54700 (val!18673 Int)) )
))
(declare-fun minValue!1245 () V!54699)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91203 0))(
  ( (array!91204 (arr!44053 (Array (_ BitVec 32) (_ BitVec 64))) (size!44604 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91203)

(declare-fun zeroValue!1245 () V!54699)

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17700 0))(
  ( (ValueCellFull!17700 (v!21319 V!54699)) (EmptyCell!17700) )
))
(declare-datatypes ((array!91205 0))(
  ( (array!91206 (arr!44054 (Array (_ BitVec 32) ValueCell!17700)) (size!44605 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91205)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24192 0))(
  ( (tuple2!24193 (_1!12106 (_ BitVec 64)) (_2!12106 V!54699)) )
))
(declare-datatypes ((List!31373 0))(
  ( (Nil!31370) (Cons!31369 (h!32578 tuple2!24192) (t!45788 List!31373)) )
))
(declare-datatypes ((ListLongMap!21861 0))(
  ( (ListLongMap!21862 (toList!10946 List!31373)) )
))
(declare-fun contains!9058 (ListLongMap!21861 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5847 (array!91203 array!91205 (_ BitVec 32) (_ BitVec 32) V!54699 V!54699 (_ BitVec 32) Int) ListLongMap!21861)

(assert (=> b!1341538 (= res!890084 (contains!9058 (getCurrentListMap!5847 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapIsEmpty!57502 () Bool)

(declare-fun mapRes!57502 () Bool)

(assert (=> mapIsEmpty!57502 mapRes!57502))

(declare-fun b!1341539 () Bool)

(declare-fun res!890081 () Bool)

(assert (=> b!1341539 (=> (not res!890081) (not e!763927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341539 (= res!890081 (validKeyInArray!0 (select (arr!44053 _keys!1571) from!1960)))))

(declare-fun b!1341540 () Bool)

(declare-fun res!890079 () Bool)

(assert (=> b!1341540 (=> (not res!890079) (not e!763927))))

(assert (=> b!1341540 (= res!890079 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44604 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341541 () Bool)

(declare-fun e!763930 () Bool)

(assert (=> b!1341541 (= e!763930 (and e!763928 mapRes!57502))))

(declare-fun condMapEmpty!57502 () Bool)

(declare-fun mapDefault!57502 () ValueCell!17700)

(assert (=> b!1341541 (= condMapEmpty!57502 (= (arr!44054 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17700)) mapDefault!57502)))))

(declare-fun b!1341542 () Bool)

(declare-fun res!890076 () Bool)

(assert (=> b!1341542 (=> (not res!890076) (not e!763927))))

(assert (=> b!1341542 (= res!890076 (not (= (select (arr!44053 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1341543 () Bool)

(assert (=> b!1341543 (= e!763927 (not true))))

(declare-fun lt!594108 () ListLongMap!21861)

(assert (=> b!1341543 (contains!9058 lt!594108 k0!1142)))

(declare-datatypes ((Unit!43967 0))(
  ( (Unit!43968) )
))
(declare-fun lt!594109 () Unit!43967)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!343 ((_ BitVec 64) (_ BitVec 64) V!54699 ListLongMap!21861) Unit!43967)

(assert (=> b!1341543 (= lt!594109 (lemmaInListMapAfterAddingDiffThenInBefore!343 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594108))))

(declare-fun +!4751 (ListLongMap!21861 tuple2!24192) ListLongMap!21861)

(declare-fun getCurrentListMapNoExtraKeys!6474 (array!91203 array!91205 (_ BitVec 32) (_ BitVec 32) V!54699 V!54699 (_ BitVec 32) Int) ListLongMap!21861)

(declare-fun get!22278 (ValueCell!17700 V!54699) V!54699)

(declare-fun dynLambda!3788 (Int (_ BitVec 64)) V!54699)

(assert (=> b!1341543 (= lt!594108 (+!4751 (getCurrentListMapNoExtraKeys!6474 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24193 (select (arr!44053 _keys!1571) from!1960) (get!22278 (select (arr!44054 _values!1303) from!1960) (dynLambda!3788 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1341544 () Bool)

(declare-fun res!890080 () Bool)

(assert (=> b!1341544 (=> (not res!890080) (not e!763927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91203 (_ BitVec 32)) Bool)

(assert (=> b!1341544 (= res!890080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!890082 () Bool)

(assert (=> start!113182 (=> (not res!890082) (not e!763927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113182 (= res!890082 (validMask!0 mask!1977))))

(assert (=> start!113182 e!763927))

(assert (=> start!113182 tp_is_empty!37197))

(assert (=> start!113182 true))

(declare-fun array_inv!33125 (array!91203) Bool)

(assert (=> start!113182 (array_inv!33125 _keys!1571)))

(declare-fun array_inv!33126 (array!91205) Bool)

(assert (=> start!113182 (and (array_inv!33126 _values!1303) e!763930)))

(assert (=> start!113182 tp!109397))

(declare-fun b!1341545 () Bool)

(declare-fun e!763931 () Bool)

(assert (=> b!1341545 (= e!763931 tp_is_empty!37197)))

(declare-fun mapNonEmpty!57502 () Bool)

(declare-fun tp!109396 () Bool)

(assert (=> mapNonEmpty!57502 (= mapRes!57502 (and tp!109396 e!763931))))

(declare-fun mapValue!57502 () ValueCell!17700)

(declare-fun mapRest!57502 () (Array (_ BitVec 32) ValueCell!17700))

(declare-fun mapKey!57502 () (_ BitVec 32))

(assert (=> mapNonEmpty!57502 (= (arr!44054 _values!1303) (store mapRest!57502 mapKey!57502 mapValue!57502))))

(declare-fun b!1341546 () Bool)

(declare-fun res!890077 () Bool)

(assert (=> b!1341546 (=> (not res!890077) (not e!763927))))

(assert (=> b!1341546 (= res!890077 (and (= (size!44605 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44604 _keys!1571) (size!44605 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1341547 () Bool)

(declare-fun res!890078 () Bool)

(assert (=> b!1341547 (=> (not res!890078) (not e!763927))))

(declare-datatypes ((List!31374 0))(
  ( (Nil!31371) (Cons!31370 (h!32579 (_ BitVec 64)) (t!45789 List!31374)) )
))
(declare-fun arrayNoDuplicates!0 (array!91203 (_ BitVec 32) List!31374) Bool)

(assert (=> b!1341547 (= res!890078 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31371))))

(assert (= (and start!113182 res!890082) b!1341546))

(assert (= (and b!1341546 res!890077) b!1341544))

(assert (= (and b!1341544 res!890080) b!1341547))

(assert (= (and b!1341547 res!890078) b!1341540))

(assert (= (and b!1341540 res!890079) b!1341538))

(assert (= (and b!1341538 res!890084) b!1341542))

(assert (= (and b!1341542 res!890076) b!1341539))

(assert (= (and b!1341539 res!890081) b!1341536))

(assert (= (and b!1341536 res!890083) b!1341543))

(assert (= (and b!1341541 condMapEmpty!57502) mapIsEmpty!57502))

(assert (= (and b!1341541 (not condMapEmpty!57502)) mapNonEmpty!57502))

(get-info :version)

(assert (= (and mapNonEmpty!57502 ((_ is ValueCellFull!17700) mapValue!57502)) b!1341545))

(assert (= (and b!1341541 ((_ is ValueCellFull!17700) mapDefault!57502)) b!1341537))

(assert (= start!113182 b!1341541))

(declare-fun b_lambda!24383 () Bool)

(assert (=> (not b_lambda!24383) (not b!1341543)))

(declare-fun t!45787 () Bool)

(declare-fun tb!12219 () Bool)

(assert (=> (and start!113182 (= defaultEntry!1306 defaultEntry!1306) t!45787) tb!12219))

(declare-fun result!25521 () Bool)

(assert (=> tb!12219 (= result!25521 tp_is_empty!37197)))

(assert (=> b!1341543 t!45787))

(declare-fun b_and!50313 () Bool)

(assert (= b_and!50311 (and (=> t!45787 result!25521) b_and!50313)))

(declare-fun m!1229207 () Bool)

(assert (=> b!1341542 m!1229207))

(declare-fun m!1229209 () Bool)

(assert (=> mapNonEmpty!57502 m!1229209))

(declare-fun m!1229211 () Bool)

(assert (=> b!1341544 m!1229211))

(declare-fun m!1229213 () Bool)

(assert (=> start!113182 m!1229213))

(declare-fun m!1229215 () Bool)

(assert (=> start!113182 m!1229215))

(declare-fun m!1229217 () Bool)

(assert (=> start!113182 m!1229217))

(assert (=> b!1341539 m!1229207))

(assert (=> b!1341539 m!1229207))

(declare-fun m!1229219 () Bool)

(assert (=> b!1341539 m!1229219))

(declare-fun m!1229221 () Bool)

(assert (=> b!1341543 m!1229221))

(declare-fun m!1229223 () Bool)

(assert (=> b!1341543 m!1229223))

(declare-fun m!1229225 () Bool)

(assert (=> b!1341543 m!1229225))

(declare-fun m!1229227 () Bool)

(assert (=> b!1341543 m!1229227))

(assert (=> b!1341543 m!1229221))

(declare-fun m!1229229 () Bool)

(assert (=> b!1341543 m!1229229))

(assert (=> b!1341543 m!1229223))

(declare-fun m!1229231 () Bool)

(assert (=> b!1341543 m!1229231))

(assert (=> b!1341543 m!1229225))

(declare-fun m!1229233 () Bool)

(assert (=> b!1341543 m!1229233))

(assert (=> b!1341543 m!1229207))

(declare-fun m!1229235 () Bool)

(assert (=> b!1341547 m!1229235))

(declare-fun m!1229237 () Bool)

(assert (=> b!1341538 m!1229237))

(assert (=> b!1341538 m!1229237))

(declare-fun m!1229239 () Bool)

(assert (=> b!1341538 m!1229239))

(check-sat tp_is_empty!37197 (not b!1341538) (not b_lambda!24383) (not mapNonEmpty!57502) (not start!113182) (not b_next!31197) (not b!1341544) (not b!1341547) (not b!1341543) b_and!50313 (not b!1341539))
(check-sat b_and!50313 (not b_next!31197))
