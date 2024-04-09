; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113582 () Bool)

(assert start!113582)

(declare-fun b_free!31539 () Bool)

(declare-fun b_next!31539 () Bool)

(assert (=> start!113582 (= b_free!31539 (not b_next!31539))))

(declare-fun tp!110426 () Bool)

(declare-fun b_and!50877 () Bool)

(assert (=> start!113582 (= tp!110426 b_and!50877)))

(declare-fun b!1347782 () Bool)

(declare-fun res!894355 () Bool)

(declare-fun e!766818 () Bool)

(assert (=> b!1347782 (=> (not res!894355) (not e!766818))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1347782 (= res!894355 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1347783 () Bool)

(declare-fun e!766819 () Bool)

(declare-fun tp_is_empty!37539 () Bool)

(assert (=> b!1347783 (= e!766819 tp_is_empty!37539)))

(declare-fun b!1347784 () Bool)

(declare-fun res!894354 () Bool)

(assert (=> b!1347784 (=> (not res!894354) (not e!766818))))

(declare-datatypes ((array!91869 0))(
  ( (array!91870 (arr!44385 (Array (_ BitVec 32) (_ BitVec 64))) (size!44936 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91869)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1347784 (= res!894354 (validKeyInArray!0 (select (arr!44385 _keys!1571) from!1960)))))

(declare-fun b!1347785 () Bool)

(declare-fun res!894356 () Bool)

(assert (=> b!1347785 (=> (not res!894356) (not e!766818))))

(declare-fun k0!1142 () (_ BitVec 64))

(assert (=> b!1347785 (= res!894356 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44936 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!58019 () Bool)

(declare-fun mapRes!58019 () Bool)

(declare-fun tp!110427 () Bool)

(declare-fun e!766816 () Bool)

(assert (=> mapNonEmpty!58019 (= mapRes!58019 (and tp!110427 e!766816))))

(declare-datatypes ((V!55155 0))(
  ( (V!55156 (val!18844 Int)) )
))
(declare-datatypes ((ValueCell!17871 0))(
  ( (ValueCellFull!17871 (v!21493 V!55155)) (EmptyCell!17871) )
))
(declare-fun mapValue!58019 () ValueCell!17871)

(declare-fun mapKey!58019 () (_ BitVec 32))

(declare-fun mapRest!58019 () (Array (_ BitVec 32) ValueCell!17871))

(declare-datatypes ((array!91871 0))(
  ( (array!91872 (arr!44386 (Array (_ BitVec 32) ValueCell!17871)) (size!44937 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91871)

(assert (=> mapNonEmpty!58019 (= (arr!44386 _values!1303) (store mapRest!58019 mapKey!58019 mapValue!58019))))

(declare-fun res!894350 () Bool)

(assert (=> start!113582 (=> (not res!894350) (not e!766818))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113582 (= res!894350 (validMask!0 mask!1977))))

(assert (=> start!113582 e!766818))

(assert (=> start!113582 tp_is_empty!37539))

(assert (=> start!113582 true))

(declare-fun array_inv!33349 (array!91869) Bool)

(assert (=> start!113582 (array_inv!33349 _keys!1571)))

(declare-fun e!766817 () Bool)

(declare-fun array_inv!33350 (array!91871) Bool)

(assert (=> start!113582 (and (array_inv!33350 _values!1303) e!766817)))

(assert (=> start!113582 tp!110426))

(declare-fun b!1347786 () Bool)

(declare-fun res!894358 () Bool)

(assert (=> b!1347786 (=> (not res!894358) (not e!766818))))

(assert (=> b!1347786 (= res!894358 (not (= (select (arr!44385 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1347787 () Bool)

(declare-fun res!894353 () Bool)

(assert (=> b!1347787 (=> (not res!894353) (not e!766818))))

(declare-fun minValue!1245 () V!55155)

(declare-fun zeroValue!1245 () V!55155)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24438 0))(
  ( (tuple2!24439 (_1!12229 (_ BitVec 64)) (_2!12229 V!55155)) )
))
(declare-datatypes ((List!31607 0))(
  ( (Nil!31604) (Cons!31603 (h!32812 tuple2!24438) (t!46232 List!31607)) )
))
(declare-datatypes ((ListLongMap!22107 0))(
  ( (ListLongMap!22108 (toList!11069 List!31607)) )
))
(declare-fun contains!9182 (ListLongMap!22107 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5959 (array!91869 array!91871 (_ BitVec 32) (_ BitVec 32) V!55155 V!55155 (_ BitVec 32) Int) ListLongMap!22107)

(assert (=> b!1347787 (= res!894353 (contains!9182 (getCurrentListMap!5959 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1347788 () Bool)

(assert (=> b!1347788 (= e!766816 tp_is_empty!37539)))

(declare-fun b!1347789 () Bool)

(declare-fun res!894351 () Bool)

(assert (=> b!1347789 (=> (not res!894351) (not e!766818))))

(assert (=> b!1347789 (= res!894351 (and (= (size!44937 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44936 _keys!1571) (size!44937 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1347790 () Bool)

(assert (=> b!1347790 (= e!766817 (and e!766819 mapRes!58019))))

(declare-fun condMapEmpty!58019 () Bool)

(declare-fun mapDefault!58019 () ValueCell!17871)

(assert (=> b!1347790 (= condMapEmpty!58019 (= (arr!44386 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17871)) mapDefault!58019)))))

(declare-fun b!1347791 () Bool)

(declare-fun res!894357 () Bool)

(assert (=> b!1347791 (=> (not res!894357) (not e!766818))))

(declare-datatypes ((List!31608 0))(
  ( (Nil!31605) (Cons!31604 (h!32813 (_ BitVec 64)) (t!46233 List!31608)) )
))
(declare-fun arrayNoDuplicates!0 (array!91869 (_ BitVec 32) List!31608) Bool)

(assert (=> b!1347791 (= res!894357 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31605))))

(declare-fun b!1347792 () Bool)

(declare-fun res!894352 () Bool)

(assert (=> b!1347792 (=> (not res!894352) (not e!766818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91869 (_ BitVec 32)) Bool)

(assert (=> b!1347792 (= res!894352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!58019 () Bool)

(assert (=> mapIsEmpty!58019 mapRes!58019))

(declare-fun b!1347793 () Bool)

(assert (=> b!1347793 (= e!766818 (not true))))

(declare-fun lt!595807 () ListLongMap!22107)

(assert (=> b!1347793 (contains!9182 lt!595807 k0!1142)))

(declare-datatypes ((Unit!44104 0))(
  ( (Unit!44105) )
))
(declare-fun lt!595808 () Unit!44104)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!404 ((_ BitVec 64) (_ BitVec 64) V!55155 ListLongMap!22107) Unit!44104)

(assert (=> b!1347793 (= lt!595808 (lemmaInListMapAfterAddingDiffThenInBefore!404 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595807))))

(declare-fun +!4818 (ListLongMap!22107 tuple2!24438) ListLongMap!22107)

(declare-fun getCurrentListMapNoExtraKeys!6545 (array!91869 array!91871 (_ BitVec 32) (_ BitVec 32) V!55155 V!55155 (_ BitVec 32) Int) ListLongMap!22107)

(declare-fun get!22462 (ValueCell!17871 V!55155) V!55155)

(declare-fun dynLambda!3855 (Int (_ BitVec 64)) V!55155)

(assert (=> b!1347793 (= lt!595807 (+!4818 (getCurrentListMapNoExtraKeys!6545 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24439 (select (arr!44385 _keys!1571) from!1960) (get!22462 (select (arr!44386 _values!1303) from!1960) (dynLambda!3855 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and start!113582 res!894350) b!1347789))

(assert (= (and b!1347789 res!894351) b!1347792))

(assert (= (and b!1347792 res!894352) b!1347791))

(assert (= (and b!1347791 res!894357) b!1347785))

(assert (= (and b!1347785 res!894356) b!1347787))

(assert (= (and b!1347787 res!894353) b!1347786))

(assert (= (and b!1347786 res!894358) b!1347784))

(assert (= (and b!1347784 res!894354) b!1347782))

(assert (= (and b!1347782 res!894355) b!1347793))

(assert (= (and b!1347790 condMapEmpty!58019) mapIsEmpty!58019))

(assert (= (and b!1347790 (not condMapEmpty!58019)) mapNonEmpty!58019))

(get-info :version)

(assert (= (and mapNonEmpty!58019 ((_ is ValueCellFull!17871) mapValue!58019)) b!1347788))

(assert (= (and b!1347790 ((_ is ValueCellFull!17871) mapDefault!58019)) b!1347783))

(assert (= start!113582 b!1347790))

(declare-fun b_lambda!24623 () Bool)

(assert (=> (not b_lambda!24623) (not b!1347793)))

(declare-fun t!46231 () Bool)

(declare-fun tb!12429 () Bool)

(assert (=> (and start!113582 (= defaultEntry!1306 defaultEntry!1306) t!46231) tb!12429))

(declare-fun result!25943 () Bool)

(assert (=> tb!12429 (= result!25943 tp_is_empty!37539)))

(assert (=> b!1347793 t!46231))

(declare-fun b_and!50879 () Bool)

(assert (= b_and!50877 (and (=> t!46231 result!25943) b_and!50879)))

(declare-fun m!1234863 () Bool)

(assert (=> mapNonEmpty!58019 m!1234863))

(declare-fun m!1234865 () Bool)

(assert (=> b!1347793 m!1234865))

(declare-fun m!1234867 () Bool)

(assert (=> b!1347793 m!1234867))

(declare-fun m!1234869 () Bool)

(assert (=> b!1347793 m!1234869))

(declare-fun m!1234871 () Bool)

(assert (=> b!1347793 m!1234871))

(assert (=> b!1347793 m!1234867))

(assert (=> b!1347793 m!1234869))

(declare-fun m!1234873 () Bool)

(assert (=> b!1347793 m!1234873))

(declare-fun m!1234875 () Bool)

(assert (=> b!1347793 m!1234875))

(assert (=> b!1347793 m!1234865))

(declare-fun m!1234877 () Bool)

(assert (=> b!1347793 m!1234877))

(declare-fun m!1234879 () Bool)

(assert (=> b!1347793 m!1234879))

(declare-fun m!1234881 () Bool)

(assert (=> start!113582 m!1234881))

(declare-fun m!1234883 () Bool)

(assert (=> start!113582 m!1234883))

(declare-fun m!1234885 () Bool)

(assert (=> start!113582 m!1234885))

(assert (=> b!1347786 m!1234875))

(declare-fun m!1234887 () Bool)

(assert (=> b!1347791 m!1234887))

(declare-fun m!1234889 () Bool)

(assert (=> b!1347792 m!1234889))

(declare-fun m!1234891 () Bool)

(assert (=> b!1347787 m!1234891))

(assert (=> b!1347787 m!1234891))

(declare-fun m!1234893 () Bool)

(assert (=> b!1347787 m!1234893))

(assert (=> b!1347784 m!1234875))

(assert (=> b!1347784 m!1234875))

(declare-fun m!1234895 () Bool)

(assert (=> b!1347784 m!1234895))

(check-sat (not b!1347787) (not b_next!31539) (not b!1347792) b_and!50879 (not mapNonEmpty!58019) (not b_lambda!24623) (not b!1347784) (not start!113582) tp_is_empty!37539 (not b!1347793) (not b!1347791))
(check-sat b_and!50879 (not b_next!31539))
