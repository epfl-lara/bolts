; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113212 () Bool)

(assert start!113212)

(declare-fun b_free!31227 () Bool)

(declare-fun b_next!31227 () Bool)

(assert (=> start!113212 (= b_free!31227 (not b_next!31227))))

(declare-fun tp!109486 () Bool)

(declare-fun b_and!50371 () Bool)

(assert (=> start!113212 (= tp!109486 b_and!50371)))

(declare-fun b!1342106 () Bool)

(declare-fun res!890481 () Bool)

(declare-fun e!764156 () Bool)

(assert (=> b!1342106 (=> (not res!890481) (not e!764156))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1342106 (= res!890481 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1342107 () Bool)

(declare-fun res!890486 () Bool)

(assert (=> b!1342107 (=> (not res!890486) (not e!764156))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91263 0))(
  ( (array!91264 (arr!44083 (Array (_ BitVec 32) (_ BitVec 64))) (size!44634 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91263)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1342107 (= res!890486 (not (= (select (arr!44083 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1342108 () Bool)

(declare-fun e!764152 () Bool)

(declare-fun tp_is_empty!37227 () Bool)

(assert (=> b!1342108 (= e!764152 tp_is_empty!37227)))

(declare-fun b!1342109 () Bool)

(declare-fun res!890485 () Bool)

(assert (=> b!1342109 (=> (not res!890485) (not e!764156))))

(declare-datatypes ((V!54739 0))(
  ( (V!54740 (val!18688 Int)) )
))
(declare-fun minValue!1245 () V!54739)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54739)

(declare-datatypes ((ValueCell!17715 0))(
  ( (ValueCellFull!17715 (v!21334 V!54739)) (EmptyCell!17715) )
))
(declare-datatypes ((array!91265 0))(
  ( (array!91266 (arr!44084 (Array (_ BitVec 32) ValueCell!17715)) (size!44635 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91265)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24218 0))(
  ( (tuple2!24219 (_1!12119 (_ BitVec 64)) (_2!12119 V!54739)) )
))
(declare-datatypes ((List!31398 0))(
  ( (Nil!31395) (Cons!31394 (h!32603 tuple2!24218) (t!45843 List!31398)) )
))
(declare-datatypes ((ListLongMap!21887 0))(
  ( (ListLongMap!21888 (toList!10959 List!31398)) )
))
(declare-fun contains!9071 (ListLongMap!21887 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5859 (array!91263 array!91265 (_ BitVec 32) (_ BitVec 32) V!54739 V!54739 (_ BitVec 32) Int) ListLongMap!21887)

(assert (=> b!1342109 (= res!890485 (contains!9071 (getCurrentListMap!5859 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1342110 () Bool)

(declare-fun res!890483 () Bool)

(assert (=> b!1342110 (=> (not res!890483) (not e!764156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91263 (_ BitVec 32)) Bool)

(assert (=> b!1342110 (= res!890483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!890489 () Bool)

(assert (=> start!113212 (=> (not res!890489) (not e!764156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113212 (= res!890489 (validMask!0 mask!1977))))

(assert (=> start!113212 e!764156))

(assert (=> start!113212 tp_is_empty!37227))

(assert (=> start!113212 true))

(declare-fun array_inv!33147 (array!91263) Bool)

(assert (=> start!113212 (array_inv!33147 _keys!1571)))

(declare-fun e!764155 () Bool)

(declare-fun array_inv!33148 (array!91265) Bool)

(assert (=> start!113212 (and (array_inv!33148 _values!1303) e!764155)))

(assert (=> start!113212 tp!109486))

(declare-fun b!1342111 () Bool)

(declare-fun res!890484 () Bool)

(assert (=> b!1342111 (=> (not res!890484) (not e!764156))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342111 (= res!890484 (validKeyInArray!0 (select (arr!44083 _keys!1571) from!1960)))))

(declare-fun b!1342112 () Bool)

(declare-fun res!890488 () Bool)

(assert (=> b!1342112 (=> (not res!890488) (not e!764156))))

(assert (=> b!1342112 (= res!890488 (and (= (size!44635 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44634 _keys!1571) (size!44635 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1342113 () Bool)

(declare-fun e!764154 () Bool)

(assert (=> b!1342113 (= e!764154 tp_is_empty!37227)))

(declare-fun b!1342114 () Bool)

(declare-fun mapRes!57547 () Bool)

(assert (=> b!1342114 (= e!764155 (and e!764152 mapRes!57547))))

(declare-fun condMapEmpty!57547 () Bool)

(declare-fun mapDefault!57547 () ValueCell!17715)

(assert (=> b!1342114 (= condMapEmpty!57547 (= (arr!44084 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17715)) mapDefault!57547)))))

(declare-fun b!1342115 () Bool)

(declare-fun res!890482 () Bool)

(assert (=> b!1342115 (=> (not res!890482) (not e!764156))))

(assert (=> b!1342115 (= res!890482 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44634 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1342116 () Bool)

(declare-fun res!890487 () Bool)

(assert (=> b!1342116 (=> (not res!890487) (not e!764156))))

(declare-datatypes ((List!31399 0))(
  ( (Nil!31396) (Cons!31395 (h!32604 (_ BitVec 64)) (t!45844 List!31399)) )
))
(declare-fun arrayNoDuplicates!0 (array!91263 (_ BitVec 32) List!31399) Bool)

(assert (=> b!1342116 (= res!890487 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31396))))

(declare-fun mapNonEmpty!57547 () Bool)

(declare-fun tp!109487 () Bool)

(assert (=> mapNonEmpty!57547 (= mapRes!57547 (and tp!109487 e!764154))))

(declare-fun mapValue!57547 () ValueCell!17715)

(declare-fun mapKey!57547 () (_ BitVec 32))

(declare-fun mapRest!57547 () (Array (_ BitVec 32) ValueCell!17715))

(assert (=> mapNonEmpty!57547 (= (arr!44084 _values!1303) (store mapRest!57547 mapKey!57547 mapValue!57547))))

(declare-fun mapIsEmpty!57547 () Bool)

(assert (=> mapIsEmpty!57547 mapRes!57547))

(declare-fun b!1342117 () Bool)

(assert (=> b!1342117 (= e!764156 (not true))))

(declare-fun lt!594322 () ListLongMap!21887)

(assert (=> b!1342117 (contains!9071 lt!594322 k0!1142)))

(declare-fun lt!594321 () V!54739)

(declare-datatypes ((Unit!43989 0))(
  ( (Unit!43990) )
))
(declare-fun lt!594325 () Unit!43989)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!354 ((_ BitVec 64) (_ BitVec 64) V!54739 ListLongMap!21887) Unit!43989)

(assert (=> b!1342117 (= lt!594325 (lemmaInListMapAfterAddingDiffThenInBefore!354 k0!1142 (select (arr!44083 _keys!1571) from!1960) lt!594321 lt!594322))))

(declare-fun lt!594324 () ListLongMap!21887)

(assert (=> b!1342117 (contains!9071 lt!594324 k0!1142)))

(declare-fun lt!594323 () Unit!43989)

(assert (=> b!1342117 (= lt!594323 (lemmaInListMapAfterAddingDiffThenInBefore!354 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594324))))

(declare-fun +!4762 (ListLongMap!21887 tuple2!24218) ListLongMap!21887)

(assert (=> b!1342117 (= lt!594324 (+!4762 lt!594322 (tuple2!24219 (select (arr!44083 _keys!1571) from!1960) lt!594321)))))

(declare-fun get!22299 (ValueCell!17715 V!54739) V!54739)

(declare-fun dynLambda!3799 (Int (_ BitVec 64)) V!54739)

(assert (=> b!1342117 (= lt!594321 (get!22299 (select (arr!44084 _values!1303) from!1960) (dynLambda!3799 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6485 (array!91263 array!91265 (_ BitVec 32) (_ BitVec 32) V!54739 V!54739 (_ BitVec 32) Int) ListLongMap!21887)

(assert (=> b!1342117 (= lt!594322 (getCurrentListMapNoExtraKeys!6485 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(assert (= (and start!113212 res!890489) b!1342112))

(assert (= (and b!1342112 res!890488) b!1342110))

(assert (= (and b!1342110 res!890483) b!1342116))

(assert (= (and b!1342116 res!890487) b!1342115))

(assert (= (and b!1342115 res!890482) b!1342109))

(assert (= (and b!1342109 res!890485) b!1342107))

(assert (= (and b!1342107 res!890486) b!1342111))

(assert (= (and b!1342111 res!890484) b!1342106))

(assert (= (and b!1342106 res!890481) b!1342117))

(assert (= (and b!1342114 condMapEmpty!57547) mapIsEmpty!57547))

(assert (= (and b!1342114 (not condMapEmpty!57547)) mapNonEmpty!57547))

(get-info :version)

(assert (= (and mapNonEmpty!57547 ((_ is ValueCellFull!17715) mapValue!57547)) b!1342113))

(assert (= (and b!1342114 ((_ is ValueCellFull!17715) mapDefault!57547)) b!1342108))

(assert (= start!113212 b!1342114))

(declare-fun b_lambda!24413 () Bool)

(assert (=> (not b_lambda!24413) (not b!1342117)))

(declare-fun t!45842 () Bool)

(declare-fun tb!12249 () Bool)

(assert (=> (and start!113212 (= defaultEntry!1306 defaultEntry!1306) t!45842) tb!12249))

(declare-fun result!25581 () Bool)

(assert (=> tb!12249 (= result!25581 tp_is_empty!37227)))

(assert (=> b!1342117 t!45842))

(declare-fun b_and!50373 () Bool)

(assert (= b_and!50371 (and (=> t!45842 result!25581) b_and!50373)))

(declare-fun m!1229769 () Bool)

(assert (=> b!1342117 m!1229769))

(declare-fun m!1229771 () Bool)

(assert (=> b!1342117 m!1229771))

(declare-fun m!1229773 () Bool)

(assert (=> b!1342117 m!1229773))

(declare-fun m!1229775 () Bool)

(assert (=> b!1342117 m!1229775))

(declare-fun m!1229777 () Bool)

(assert (=> b!1342117 m!1229777))

(declare-fun m!1229779 () Bool)

(assert (=> b!1342117 m!1229779))

(assert (=> b!1342117 m!1229775))

(declare-fun m!1229781 () Bool)

(assert (=> b!1342117 m!1229781))

(declare-fun m!1229783 () Bool)

(assert (=> b!1342117 m!1229783))

(assert (=> b!1342117 m!1229777))

(declare-fun m!1229785 () Bool)

(assert (=> b!1342117 m!1229785))

(assert (=> b!1342117 m!1229769))

(declare-fun m!1229787 () Bool)

(assert (=> b!1342117 m!1229787))

(declare-fun m!1229789 () Bool)

(assert (=> b!1342116 m!1229789))

(assert (=> b!1342107 m!1229769))

(declare-fun m!1229791 () Bool)

(assert (=> b!1342109 m!1229791))

(assert (=> b!1342109 m!1229791))

(declare-fun m!1229793 () Bool)

(assert (=> b!1342109 m!1229793))

(declare-fun m!1229795 () Bool)

(assert (=> b!1342110 m!1229795))

(declare-fun m!1229797 () Bool)

(assert (=> start!113212 m!1229797))

(declare-fun m!1229799 () Bool)

(assert (=> start!113212 m!1229799))

(declare-fun m!1229801 () Bool)

(assert (=> start!113212 m!1229801))

(assert (=> b!1342111 m!1229769))

(assert (=> b!1342111 m!1229769))

(declare-fun m!1229803 () Bool)

(assert (=> b!1342111 m!1229803))

(declare-fun m!1229805 () Bool)

(assert (=> mapNonEmpty!57547 m!1229805))

(check-sat (not mapNonEmpty!57547) tp_is_empty!37227 (not start!113212) (not b!1342111) (not b!1342109) (not b!1342116) (not b_next!31227) (not b_lambda!24413) b_and!50373 (not b!1342110) (not b!1342117))
(check-sat b_and!50373 (not b_next!31227))
