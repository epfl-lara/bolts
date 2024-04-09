; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113230 () Bool)

(assert start!113230)

(declare-fun b_free!31245 () Bool)

(declare-fun b_next!31245 () Bool)

(assert (=> start!113230 (= b_free!31245 (not b_next!31245))))

(declare-fun tp!109541 () Bool)

(declare-fun b_and!50407 () Bool)

(assert (=> start!113230 (= tp!109541 b_and!50407)))

(declare-fun b!1342448 () Bool)

(declare-fun res!890729 () Bool)

(declare-fun e!764288 () Bool)

(assert (=> b!1342448 (=> (not res!890729) (not e!764288))))

(declare-datatypes ((array!91297 0))(
  ( (array!91298 (arr!44100 (Array (_ BitVec 32) (_ BitVec 64))) (size!44651 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91297)

(declare-datatypes ((List!31412 0))(
  ( (Nil!31409) (Cons!31408 (h!32617 (_ BitVec 64)) (t!45875 List!31412)) )
))
(declare-fun arrayNoDuplicates!0 (array!91297 (_ BitVec 32) List!31412) Bool)

(assert (=> b!1342448 (= res!890729 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31409))))

(declare-fun b!1342449 () Bool)

(declare-fun e!764291 () Bool)

(declare-fun tp_is_empty!37245 () Bool)

(assert (=> b!1342449 (= e!764291 tp_is_empty!37245)))

(declare-fun b!1342450 () Bool)

(declare-fun res!890731 () Bool)

(assert (=> b!1342450 (=> (not res!890731) (not e!764288))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1342450 (= res!890731 (not (= (select (arr!44100 _keys!1571) from!1960) k0!1142)))))

(declare-fun mapIsEmpty!57574 () Bool)

(declare-fun mapRes!57574 () Bool)

(assert (=> mapIsEmpty!57574 mapRes!57574))

(declare-fun b!1342451 () Bool)

(declare-fun res!890725 () Bool)

(assert (=> b!1342451 (=> (not res!890725) (not e!764288))))

(declare-datatypes ((V!54763 0))(
  ( (V!54764 (val!18697 Int)) )
))
(declare-fun minValue!1245 () V!54763)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54763)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17724 0))(
  ( (ValueCellFull!17724 (v!21343 V!54763)) (EmptyCell!17724) )
))
(declare-datatypes ((array!91299 0))(
  ( (array!91300 (arr!44101 (Array (_ BitVec 32) ValueCell!17724)) (size!44652 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91299)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24232 0))(
  ( (tuple2!24233 (_1!12126 (_ BitVec 64)) (_2!12126 V!54763)) )
))
(declare-datatypes ((List!31413 0))(
  ( (Nil!31410) (Cons!31409 (h!32618 tuple2!24232) (t!45876 List!31413)) )
))
(declare-datatypes ((ListLongMap!21901 0))(
  ( (ListLongMap!21902 (toList!10966 List!31413)) )
))
(declare-fun contains!9078 (ListLongMap!21901 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5864 (array!91297 array!91299 (_ BitVec 32) (_ BitVec 32) V!54763 V!54763 (_ BitVec 32) Int) ListLongMap!21901)

(assert (=> b!1342451 (= res!890725 (contains!9078 (getCurrentListMap!5864 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun res!890730 () Bool)

(assert (=> start!113230 (=> (not res!890730) (not e!764288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113230 (= res!890730 (validMask!0 mask!1977))))

(assert (=> start!113230 e!764288))

(assert (=> start!113230 tp_is_empty!37245))

(assert (=> start!113230 true))

(declare-fun array_inv!33159 (array!91297) Bool)

(assert (=> start!113230 (array_inv!33159 _keys!1571)))

(declare-fun e!764289 () Bool)

(declare-fun array_inv!33160 (array!91299) Bool)

(assert (=> start!113230 (and (array_inv!33160 _values!1303) e!764289)))

(assert (=> start!113230 tp!109541))

(declare-fun b!1342452 () Bool)

(declare-fun res!890728 () Bool)

(assert (=> b!1342452 (=> (not res!890728) (not e!764288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342452 (= res!890728 (validKeyInArray!0 (select (arr!44100 _keys!1571) from!1960)))))

(declare-fun mapNonEmpty!57574 () Bool)

(declare-fun tp!109540 () Bool)

(declare-fun e!764290 () Bool)

(assert (=> mapNonEmpty!57574 (= mapRes!57574 (and tp!109540 e!764290))))

(declare-fun mapValue!57574 () ValueCell!17724)

(declare-fun mapRest!57574 () (Array (_ BitVec 32) ValueCell!17724))

(declare-fun mapKey!57574 () (_ BitVec 32))

(assert (=> mapNonEmpty!57574 (= (arr!44101 _values!1303) (store mapRest!57574 mapKey!57574 mapValue!57574))))

(declare-fun b!1342453 () Bool)

(assert (=> b!1342453 (= e!764288 (not true))))

(declare-fun lt!594457 () ListLongMap!21901)

(assert (=> b!1342453 (contains!9078 lt!594457 k0!1142)))

(declare-fun lt!594460 () V!54763)

(declare-datatypes ((Unit!43999 0))(
  ( (Unit!44000) )
))
(declare-fun lt!594459 () Unit!43999)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!359 ((_ BitVec 64) (_ BitVec 64) V!54763 ListLongMap!21901) Unit!43999)

(assert (=> b!1342453 (= lt!594459 (lemmaInListMapAfterAddingDiffThenInBefore!359 k0!1142 (select (arr!44100 _keys!1571) from!1960) lt!594460 lt!594457))))

(declare-fun lt!594456 () ListLongMap!21901)

(assert (=> b!1342453 (contains!9078 lt!594456 k0!1142)))

(declare-fun lt!594458 () Unit!43999)

(assert (=> b!1342453 (= lt!594458 (lemmaInListMapAfterAddingDiffThenInBefore!359 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594456))))

(declare-fun +!4767 (ListLongMap!21901 tuple2!24232) ListLongMap!21901)

(assert (=> b!1342453 (= lt!594456 (+!4767 lt!594457 (tuple2!24233 (select (arr!44100 _keys!1571) from!1960) lt!594460)))))

(declare-fun get!22310 (ValueCell!17724 V!54763) V!54763)

(declare-fun dynLambda!3804 (Int (_ BitVec 64)) V!54763)

(assert (=> b!1342453 (= lt!594460 (get!22310 (select (arr!44101 _values!1303) from!1960) (dynLambda!3804 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6490 (array!91297 array!91299 (_ BitVec 32) (_ BitVec 32) V!54763 V!54763 (_ BitVec 32) Int) ListLongMap!21901)

(assert (=> b!1342453 (= lt!594457 (getCurrentListMapNoExtraKeys!6490 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1342454 () Bool)

(assert (=> b!1342454 (= e!764289 (and e!764291 mapRes!57574))))

(declare-fun condMapEmpty!57574 () Bool)

(declare-fun mapDefault!57574 () ValueCell!17724)

(assert (=> b!1342454 (= condMapEmpty!57574 (= (arr!44101 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17724)) mapDefault!57574)))))

(declare-fun b!1342455 () Bool)

(declare-fun res!890726 () Bool)

(assert (=> b!1342455 (=> (not res!890726) (not e!764288))))

(assert (=> b!1342455 (= res!890726 (and (= (size!44652 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44651 _keys!1571) (size!44652 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1342456 () Bool)

(declare-fun res!890732 () Bool)

(assert (=> b!1342456 (=> (not res!890732) (not e!764288))))

(assert (=> b!1342456 (= res!890732 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44651 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1342457 () Bool)

(declare-fun res!890724 () Bool)

(assert (=> b!1342457 (=> (not res!890724) (not e!764288))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91297 (_ BitVec 32)) Bool)

(assert (=> b!1342457 (= res!890724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1342458 () Bool)

(assert (=> b!1342458 (= e!764290 tp_is_empty!37245)))

(declare-fun b!1342459 () Bool)

(declare-fun res!890727 () Bool)

(assert (=> b!1342459 (=> (not res!890727) (not e!764288))))

(assert (=> b!1342459 (= res!890727 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!113230 res!890730) b!1342455))

(assert (= (and b!1342455 res!890726) b!1342457))

(assert (= (and b!1342457 res!890724) b!1342448))

(assert (= (and b!1342448 res!890729) b!1342456))

(assert (= (and b!1342456 res!890732) b!1342451))

(assert (= (and b!1342451 res!890725) b!1342450))

(assert (= (and b!1342450 res!890731) b!1342452))

(assert (= (and b!1342452 res!890728) b!1342459))

(assert (= (and b!1342459 res!890727) b!1342453))

(assert (= (and b!1342454 condMapEmpty!57574) mapIsEmpty!57574))

(assert (= (and b!1342454 (not condMapEmpty!57574)) mapNonEmpty!57574))

(get-info :version)

(assert (= (and mapNonEmpty!57574 ((_ is ValueCellFull!17724) mapValue!57574)) b!1342458))

(assert (= (and b!1342454 ((_ is ValueCellFull!17724) mapDefault!57574)) b!1342449))

(assert (= start!113230 b!1342454))

(declare-fun b_lambda!24431 () Bool)

(assert (=> (not b_lambda!24431) (not b!1342453)))

(declare-fun t!45874 () Bool)

(declare-fun tb!12267 () Bool)

(assert (=> (and start!113230 (= defaultEntry!1306 defaultEntry!1306) t!45874) tb!12267))

(declare-fun result!25617 () Bool)

(assert (=> tb!12267 (= result!25617 tp_is_empty!37245)))

(assert (=> b!1342453 t!45874))

(declare-fun b_and!50409 () Bool)

(assert (= b_and!50407 (and (=> t!45874 result!25617) b_and!50409)))

(declare-fun m!1230111 () Bool)

(assert (=> b!1342451 m!1230111))

(assert (=> b!1342451 m!1230111))

(declare-fun m!1230113 () Bool)

(assert (=> b!1342451 m!1230113))

(declare-fun m!1230115 () Bool)

(assert (=> b!1342452 m!1230115))

(assert (=> b!1342452 m!1230115))

(declare-fun m!1230117 () Bool)

(assert (=> b!1342452 m!1230117))

(declare-fun m!1230119 () Bool)

(assert (=> b!1342457 m!1230119))

(declare-fun m!1230121 () Bool)

(assert (=> b!1342453 m!1230121))

(declare-fun m!1230123 () Bool)

(assert (=> b!1342453 m!1230123))

(declare-fun m!1230125 () Bool)

(assert (=> b!1342453 m!1230125))

(declare-fun m!1230127 () Bool)

(assert (=> b!1342453 m!1230127))

(assert (=> b!1342453 m!1230123))

(assert (=> b!1342453 m!1230125))

(declare-fun m!1230129 () Bool)

(assert (=> b!1342453 m!1230129))

(declare-fun m!1230131 () Bool)

(assert (=> b!1342453 m!1230131))

(assert (=> b!1342453 m!1230115))

(declare-fun m!1230133 () Bool)

(assert (=> b!1342453 m!1230133))

(declare-fun m!1230135 () Bool)

(assert (=> b!1342453 m!1230135))

(assert (=> b!1342453 m!1230115))

(declare-fun m!1230137 () Bool)

(assert (=> b!1342453 m!1230137))

(declare-fun m!1230139 () Bool)

(assert (=> b!1342448 m!1230139))

(declare-fun m!1230141 () Bool)

(assert (=> start!113230 m!1230141))

(declare-fun m!1230143 () Bool)

(assert (=> start!113230 m!1230143))

(declare-fun m!1230145 () Bool)

(assert (=> start!113230 m!1230145))

(assert (=> b!1342450 m!1230115))

(declare-fun m!1230147 () Bool)

(assert (=> mapNonEmpty!57574 m!1230147))

(check-sat (not b!1342457) (not b!1342448) (not b!1342452) (not b_lambda!24431) (not start!113230) (not b!1342453) (not mapNonEmpty!57574) tp_is_empty!37245 (not b!1342451) (not b_next!31245) b_and!50409)
(check-sat b_and!50409 (not b_next!31245))
