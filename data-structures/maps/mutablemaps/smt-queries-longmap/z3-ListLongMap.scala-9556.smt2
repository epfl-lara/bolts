; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113236 () Bool)

(assert start!113236)

(declare-fun b_free!31251 () Bool)

(declare-fun b_next!31251 () Bool)

(assert (=> start!113236 (= b_free!31251 (not b_next!31251))))

(declare-fun tp!109558 () Bool)

(declare-fun b_and!50419 () Bool)

(assert (=> start!113236 (= tp!109558 b_and!50419)))

(declare-fun b!1342562 () Bool)

(declare-fun res!890807 () Bool)

(declare-fun e!764336 () Bool)

(assert (=> b!1342562 (=> (not res!890807) (not e!764336))))

(declare-datatypes ((array!91307 0))(
  ( (array!91308 (arr!44105 (Array (_ BitVec 32) (_ BitVec 64))) (size!44656 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91307)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342562 (= res!890807 (validKeyInArray!0 (select (arr!44105 _keys!1571) from!1960)))))

(declare-fun b!1342563 () Bool)

(declare-fun res!890810 () Bool)

(assert (=> b!1342563 (=> (not res!890810) (not e!764336))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91307 (_ BitVec 32)) Bool)

(assert (=> b!1342563 (= res!890810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1342564 () Bool)

(declare-fun e!764335 () Bool)

(declare-fun tp_is_empty!37251 () Bool)

(assert (=> b!1342564 (= e!764335 tp_is_empty!37251)))

(declare-fun b!1342566 () Bool)

(declare-fun res!890813 () Bool)

(assert (=> b!1342566 (=> (not res!890813) (not e!764336))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1342566 (= res!890813 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1342567 () Bool)

(assert (=> b!1342567 (= e!764336 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!54771 0))(
  ( (V!54772 (val!18700 Int)) )
))
(declare-datatypes ((tuple2!24236 0))(
  ( (tuple2!24237 (_1!12128 (_ BitVec 64)) (_2!12128 V!54771)) )
))
(declare-datatypes ((List!31416 0))(
  ( (Nil!31413) (Cons!31412 (h!32621 tuple2!24236) (t!45885 List!31416)) )
))
(declare-datatypes ((ListLongMap!21905 0))(
  ( (ListLongMap!21906 (toList!10968 List!31416)) )
))
(declare-fun lt!594505 () ListLongMap!21905)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun contains!9080 (ListLongMap!21905 (_ BitVec 64)) Bool)

(assert (=> b!1342567 (contains!9080 lt!594505 k0!1142)))

(declare-fun lt!594501 () V!54771)

(declare-datatypes ((Unit!44003 0))(
  ( (Unit!44004) )
))
(declare-fun lt!594504 () Unit!44003)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!361 ((_ BitVec 64) (_ BitVec 64) V!54771 ListLongMap!21905) Unit!44003)

(assert (=> b!1342567 (= lt!594504 (lemmaInListMapAfterAddingDiffThenInBefore!361 k0!1142 (select (arr!44105 _keys!1571) from!1960) lt!594501 lt!594505))))

(declare-fun lt!594503 () ListLongMap!21905)

(assert (=> b!1342567 (contains!9080 lt!594503 k0!1142)))

(declare-fun zeroValue!1245 () V!54771)

(declare-fun lt!594502 () Unit!44003)

(assert (=> b!1342567 (= lt!594502 (lemmaInListMapAfterAddingDiffThenInBefore!361 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594503))))

(declare-fun +!4769 (ListLongMap!21905 tuple2!24236) ListLongMap!21905)

(assert (=> b!1342567 (= lt!594503 (+!4769 lt!594505 (tuple2!24237 (select (arr!44105 _keys!1571) from!1960) lt!594501)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17727 0))(
  ( (ValueCellFull!17727 (v!21346 V!54771)) (EmptyCell!17727) )
))
(declare-datatypes ((array!91309 0))(
  ( (array!91310 (arr!44106 (Array (_ BitVec 32) ValueCell!17727)) (size!44657 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91309)

(declare-fun get!22314 (ValueCell!17727 V!54771) V!54771)

(declare-fun dynLambda!3806 (Int (_ BitVec 64)) V!54771)

(assert (=> b!1342567 (= lt!594501 (get!22314 (select (arr!44106 _values!1303) from!1960) (dynLambda!3806 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54771)

(declare-fun getCurrentListMapNoExtraKeys!6492 (array!91307 array!91309 (_ BitVec 32) (_ BitVec 32) V!54771 V!54771 (_ BitVec 32) Int) ListLongMap!21905)

(assert (=> b!1342567 (= lt!594505 (getCurrentListMapNoExtraKeys!6492 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun mapNonEmpty!57583 () Bool)

(declare-fun mapRes!57583 () Bool)

(declare-fun tp!109559 () Bool)

(declare-fun e!764334 () Bool)

(assert (=> mapNonEmpty!57583 (= mapRes!57583 (and tp!109559 e!764334))))

(declare-fun mapValue!57583 () ValueCell!17727)

(declare-fun mapRest!57583 () (Array (_ BitVec 32) ValueCell!17727))

(declare-fun mapKey!57583 () (_ BitVec 32))

(assert (=> mapNonEmpty!57583 (= (arr!44106 _values!1303) (store mapRest!57583 mapKey!57583 mapValue!57583))))

(declare-fun b!1342568 () Bool)

(declare-fun res!890808 () Bool)

(assert (=> b!1342568 (=> (not res!890808) (not e!764336))))

(assert (=> b!1342568 (= res!890808 (and (= (size!44657 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44656 _keys!1571) (size!44657 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1342569 () Bool)

(declare-fun res!890811 () Bool)

(assert (=> b!1342569 (=> (not res!890811) (not e!764336))))

(declare-fun getCurrentListMap!5865 (array!91307 array!91309 (_ BitVec 32) (_ BitVec 32) V!54771 V!54771 (_ BitVec 32) Int) ListLongMap!21905)

(assert (=> b!1342569 (= res!890811 (contains!9080 (getCurrentListMap!5865 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1342570 () Bool)

(declare-fun res!890805 () Bool)

(assert (=> b!1342570 (=> (not res!890805) (not e!764336))))

(assert (=> b!1342570 (= res!890805 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44656 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1342571 () Bool)

(declare-fun res!890806 () Bool)

(assert (=> b!1342571 (=> (not res!890806) (not e!764336))))

(declare-datatypes ((List!31417 0))(
  ( (Nil!31414) (Cons!31413 (h!32622 (_ BitVec 64)) (t!45886 List!31417)) )
))
(declare-fun arrayNoDuplicates!0 (array!91307 (_ BitVec 32) List!31417) Bool)

(assert (=> b!1342571 (= res!890806 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31414))))

(declare-fun b!1342572 () Bool)

(declare-fun res!890809 () Bool)

(assert (=> b!1342572 (=> (not res!890809) (not e!764336))))

(assert (=> b!1342572 (= res!890809 (not (= (select (arr!44105 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1342573 () Bool)

(declare-fun e!764332 () Bool)

(assert (=> b!1342573 (= e!764332 (and e!764335 mapRes!57583))))

(declare-fun condMapEmpty!57583 () Bool)

(declare-fun mapDefault!57583 () ValueCell!17727)

(assert (=> b!1342573 (= condMapEmpty!57583 (= (arr!44106 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17727)) mapDefault!57583)))))

(declare-fun mapIsEmpty!57583 () Bool)

(assert (=> mapIsEmpty!57583 mapRes!57583))

(declare-fun res!890812 () Bool)

(assert (=> start!113236 (=> (not res!890812) (not e!764336))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113236 (= res!890812 (validMask!0 mask!1977))))

(assert (=> start!113236 e!764336))

(assert (=> start!113236 tp_is_empty!37251))

(assert (=> start!113236 true))

(declare-fun array_inv!33163 (array!91307) Bool)

(assert (=> start!113236 (array_inv!33163 _keys!1571)))

(declare-fun array_inv!33164 (array!91309) Bool)

(assert (=> start!113236 (and (array_inv!33164 _values!1303) e!764332)))

(assert (=> start!113236 tp!109558))

(declare-fun b!1342565 () Bool)

(assert (=> b!1342565 (= e!764334 tp_is_empty!37251)))

(assert (= (and start!113236 res!890812) b!1342568))

(assert (= (and b!1342568 res!890808) b!1342563))

(assert (= (and b!1342563 res!890810) b!1342571))

(assert (= (and b!1342571 res!890806) b!1342570))

(assert (= (and b!1342570 res!890805) b!1342569))

(assert (= (and b!1342569 res!890811) b!1342572))

(assert (= (and b!1342572 res!890809) b!1342562))

(assert (= (and b!1342562 res!890807) b!1342566))

(assert (= (and b!1342566 res!890813) b!1342567))

(assert (= (and b!1342573 condMapEmpty!57583) mapIsEmpty!57583))

(assert (= (and b!1342573 (not condMapEmpty!57583)) mapNonEmpty!57583))

(get-info :version)

(assert (= (and mapNonEmpty!57583 ((_ is ValueCellFull!17727) mapValue!57583)) b!1342565))

(assert (= (and b!1342573 ((_ is ValueCellFull!17727) mapDefault!57583)) b!1342564))

(assert (= start!113236 b!1342573))

(declare-fun b_lambda!24437 () Bool)

(assert (=> (not b_lambda!24437) (not b!1342567)))

(declare-fun t!45884 () Bool)

(declare-fun tb!12273 () Bool)

(assert (=> (and start!113236 (= defaultEntry!1306 defaultEntry!1306) t!45884) tb!12273))

(declare-fun result!25629 () Bool)

(assert (=> tb!12273 (= result!25629 tp_is_empty!37251)))

(assert (=> b!1342567 t!45884))

(declare-fun b_and!50421 () Bool)

(assert (= b_and!50419 (and (=> t!45884 result!25629) b_and!50421)))

(declare-fun m!1230225 () Bool)

(assert (=> b!1342562 m!1230225))

(assert (=> b!1342562 m!1230225))

(declare-fun m!1230227 () Bool)

(assert (=> b!1342562 m!1230227))

(declare-fun m!1230229 () Bool)

(assert (=> b!1342563 m!1230229))

(declare-fun m!1230231 () Bool)

(assert (=> mapNonEmpty!57583 m!1230231))

(declare-fun m!1230233 () Bool)

(assert (=> start!113236 m!1230233))

(declare-fun m!1230235 () Bool)

(assert (=> start!113236 m!1230235))

(declare-fun m!1230237 () Bool)

(assert (=> start!113236 m!1230237))

(declare-fun m!1230239 () Bool)

(assert (=> b!1342571 m!1230239))

(declare-fun m!1230241 () Bool)

(assert (=> b!1342569 m!1230241))

(assert (=> b!1342569 m!1230241))

(declare-fun m!1230243 () Bool)

(assert (=> b!1342569 m!1230243))

(assert (=> b!1342572 m!1230225))

(declare-fun m!1230245 () Bool)

(assert (=> b!1342567 m!1230245))

(declare-fun m!1230247 () Bool)

(assert (=> b!1342567 m!1230247))

(declare-fun m!1230249 () Bool)

(assert (=> b!1342567 m!1230249))

(declare-fun m!1230251 () Bool)

(assert (=> b!1342567 m!1230251))

(declare-fun m!1230253 () Bool)

(assert (=> b!1342567 m!1230253))

(assert (=> b!1342567 m!1230225))

(declare-fun m!1230255 () Bool)

(assert (=> b!1342567 m!1230255))

(assert (=> b!1342567 m!1230249))

(declare-fun m!1230257 () Bool)

(assert (=> b!1342567 m!1230257))

(assert (=> b!1342567 m!1230225))

(declare-fun m!1230259 () Bool)

(assert (=> b!1342567 m!1230259))

(assert (=> b!1342567 m!1230251))

(declare-fun m!1230261 () Bool)

(assert (=> b!1342567 m!1230261))

(check-sat (not start!113236) (not b!1342567) tp_is_empty!37251 (not b!1342569) (not mapNonEmpty!57583) (not b!1342563) (not b_next!31251) b_and!50421 (not b!1342571) (not b!1342562) (not b_lambda!24437))
(check-sat b_and!50421 (not b_next!31251))
