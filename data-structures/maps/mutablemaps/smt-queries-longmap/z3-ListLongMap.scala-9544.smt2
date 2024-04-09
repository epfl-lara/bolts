; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113164 () Bool)

(assert start!113164)

(declare-fun b_free!31179 () Bool)

(declare-fun b_next!31179 () Bool)

(assert (=> start!113164 (= b_free!31179 (not b_next!31179))))

(declare-fun tp!109343 () Bool)

(declare-fun b_and!50275 () Bool)

(assert (=> start!113164 (= tp!109343 b_and!50275)))

(declare-fun b!1341194 () Bool)

(declare-fun res!889839 () Bool)

(declare-fun e!763795 () Bool)

(assert (=> b!1341194 (=> (not res!889839) (not e!763795))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91167 0))(
  ( (array!91168 (arr!44035 (Array (_ BitVec 32) (_ BitVec 64))) (size!44586 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91167)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54675 0))(
  ( (V!54676 (val!18664 Int)) )
))
(declare-datatypes ((ValueCell!17691 0))(
  ( (ValueCellFull!17691 (v!21310 V!54675)) (EmptyCell!17691) )
))
(declare-datatypes ((array!91169 0))(
  ( (array!91170 (arr!44036 (Array (_ BitVec 32) ValueCell!17691)) (size!44587 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91169)

(assert (=> b!1341194 (= res!889839 (and (= (size!44587 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44586 _keys!1571) (size!44587 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1341195 () Bool)

(declare-fun res!889833 () Bool)

(assert (=> b!1341195 (=> (not res!889833) (not e!763795))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1341195 (= res!889833 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44586 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!57475 () Bool)

(declare-fun mapRes!57475 () Bool)

(declare-fun tp!109342 () Bool)

(declare-fun e!763796 () Bool)

(assert (=> mapNonEmpty!57475 (= mapRes!57475 (and tp!109342 e!763796))))

(declare-fun mapKey!57475 () (_ BitVec 32))

(declare-fun mapValue!57475 () ValueCell!17691)

(declare-fun mapRest!57475 () (Array (_ BitVec 32) ValueCell!17691))

(assert (=> mapNonEmpty!57475 (= (arr!44036 _values!1303) (store mapRest!57475 mapKey!57475 mapValue!57475))))

(declare-fun b!1341196 () Bool)

(declare-fun res!889838 () Bool)

(assert (=> b!1341196 (=> (not res!889838) (not e!763795))))

(assert (=> b!1341196 (= res!889838 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341197 () Bool)

(declare-fun tp_is_empty!37179 () Bool)

(assert (=> b!1341197 (= e!763796 tp_is_empty!37179)))

(declare-fun b!1341198 () Bool)

(declare-fun e!763793 () Bool)

(declare-fun e!763792 () Bool)

(assert (=> b!1341198 (= e!763793 (and e!763792 mapRes!57475))))

(declare-fun condMapEmpty!57475 () Bool)

(declare-fun mapDefault!57475 () ValueCell!17691)

(assert (=> b!1341198 (= condMapEmpty!57475 (= (arr!44036 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17691)) mapDefault!57475)))))

(declare-fun b!1341199 () Bool)

(declare-fun res!889836 () Bool)

(assert (=> b!1341199 (=> (not res!889836) (not e!763795))))

(declare-fun minValue!1245 () V!54675)

(declare-fun zeroValue!1245 () V!54675)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24178 0))(
  ( (tuple2!24179 (_1!12099 (_ BitVec 64)) (_2!12099 V!54675)) )
))
(declare-datatypes ((List!31360 0))(
  ( (Nil!31357) (Cons!31356 (h!32565 tuple2!24178) (t!45757 List!31360)) )
))
(declare-datatypes ((ListLongMap!21847 0))(
  ( (ListLongMap!21848 (toList!10939 List!31360)) )
))
(declare-fun contains!9051 (ListLongMap!21847 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5840 (array!91167 array!91169 (_ BitVec 32) (_ BitVec 32) V!54675 V!54675 (_ BitVec 32) Int) ListLongMap!21847)

(assert (=> b!1341199 (= res!889836 (contains!9051 (getCurrentListMap!5840 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1341200 () Bool)

(declare-fun res!889841 () Bool)

(assert (=> b!1341200 (=> (not res!889841) (not e!763795))))

(declare-datatypes ((List!31361 0))(
  ( (Nil!31358) (Cons!31357 (h!32566 (_ BitVec 64)) (t!45758 List!31361)) )
))
(declare-fun arrayNoDuplicates!0 (array!91167 (_ BitVec 32) List!31361) Bool)

(assert (=> b!1341200 (= res!889841 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31358))))

(declare-fun b!1341201 () Bool)

(assert (=> b!1341201 (= e!763792 tp_is_empty!37179)))

(declare-fun mapIsEmpty!57475 () Bool)

(assert (=> mapIsEmpty!57475 mapRes!57475))

(declare-fun b!1341202 () Bool)

(declare-fun res!889840 () Bool)

(assert (=> b!1341202 (=> (not res!889840) (not e!763795))))

(assert (=> b!1341202 (= res!889840 (not (= (select (arr!44035 _keys!1571) from!1960) k0!1142)))))

(declare-fun res!889835 () Bool)

(assert (=> start!113164 (=> (not res!889835) (not e!763795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113164 (= res!889835 (validMask!0 mask!1977))))

(assert (=> start!113164 e!763795))

(assert (=> start!113164 tp_is_empty!37179))

(assert (=> start!113164 true))

(declare-fun array_inv!33115 (array!91167) Bool)

(assert (=> start!113164 (array_inv!33115 _keys!1571)))

(declare-fun array_inv!33116 (array!91169) Bool)

(assert (=> start!113164 (and (array_inv!33116 _values!1303) e!763793)))

(assert (=> start!113164 tp!109343))

(declare-fun b!1341203 () Bool)

(declare-fun res!889837 () Bool)

(assert (=> b!1341203 (=> (not res!889837) (not e!763795))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91167 (_ BitVec 32)) Bool)

(assert (=> b!1341203 (= res!889837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341204 () Bool)

(declare-fun res!889834 () Bool)

(assert (=> b!1341204 (=> (not res!889834) (not e!763795))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341204 (= res!889834 (validKeyInArray!0 (select (arr!44035 _keys!1571) from!1960)))))

(declare-fun b!1341205 () Bool)

(assert (=> b!1341205 (= e!763795 (not true))))

(declare-fun lt!594054 () ListLongMap!21847)

(assert (=> b!1341205 (contains!9051 lt!594054 k0!1142)))

(declare-datatypes ((Unit!43955 0))(
  ( (Unit!43956) )
))
(declare-fun lt!594055 () Unit!43955)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!337 ((_ BitVec 64) (_ BitVec 64) V!54675 ListLongMap!21847) Unit!43955)

(assert (=> b!1341205 (= lt!594055 (lemmaInListMapAfterAddingDiffThenInBefore!337 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594054))))

(declare-fun +!4745 (ListLongMap!21847 tuple2!24178) ListLongMap!21847)

(declare-fun getCurrentListMapNoExtraKeys!6468 (array!91167 array!91169 (_ BitVec 32) (_ BitVec 32) V!54675 V!54675 (_ BitVec 32) Int) ListLongMap!21847)

(declare-fun get!22266 (ValueCell!17691 V!54675) V!54675)

(declare-fun dynLambda!3782 (Int (_ BitVec 64)) V!54675)

(assert (=> b!1341205 (= lt!594054 (+!4745 (getCurrentListMapNoExtraKeys!6468 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24179 (select (arr!44035 _keys!1571) from!1960) (get!22266 (select (arr!44036 _values!1303) from!1960) (dynLambda!3782 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and start!113164 res!889835) b!1341194))

(assert (= (and b!1341194 res!889839) b!1341203))

(assert (= (and b!1341203 res!889837) b!1341200))

(assert (= (and b!1341200 res!889841) b!1341195))

(assert (= (and b!1341195 res!889833) b!1341199))

(assert (= (and b!1341199 res!889836) b!1341202))

(assert (= (and b!1341202 res!889840) b!1341204))

(assert (= (and b!1341204 res!889834) b!1341196))

(assert (= (and b!1341196 res!889838) b!1341205))

(assert (= (and b!1341198 condMapEmpty!57475) mapIsEmpty!57475))

(assert (= (and b!1341198 (not condMapEmpty!57475)) mapNonEmpty!57475))

(get-info :version)

(assert (= (and mapNonEmpty!57475 ((_ is ValueCellFull!17691) mapValue!57475)) b!1341197))

(assert (= (and b!1341198 ((_ is ValueCellFull!17691) mapDefault!57475)) b!1341201))

(assert (= start!113164 b!1341198))

(declare-fun b_lambda!24365 () Bool)

(assert (=> (not b_lambda!24365) (not b!1341205)))

(declare-fun t!45756 () Bool)

(declare-fun tb!12201 () Bool)

(assert (=> (and start!113164 (= defaultEntry!1306 defaultEntry!1306) t!45756) tb!12201))

(declare-fun result!25485 () Bool)

(assert (=> tb!12201 (= result!25485 tp_is_empty!37179)))

(assert (=> b!1341205 t!45756))

(declare-fun b_and!50277 () Bool)

(assert (= b_and!50275 (and (=> t!45756 result!25485) b_and!50277)))

(declare-fun m!1228901 () Bool)

(assert (=> b!1341199 m!1228901))

(assert (=> b!1341199 m!1228901))

(declare-fun m!1228903 () Bool)

(assert (=> b!1341199 m!1228903))

(declare-fun m!1228905 () Bool)

(assert (=> start!113164 m!1228905))

(declare-fun m!1228907 () Bool)

(assert (=> start!113164 m!1228907))

(declare-fun m!1228909 () Bool)

(assert (=> start!113164 m!1228909))

(declare-fun m!1228911 () Bool)

(assert (=> b!1341200 m!1228911))

(declare-fun m!1228913 () Bool)

(assert (=> b!1341203 m!1228913))

(declare-fun m!1228915 () Bool)

(assert (=> b!1341202 m!1228915))

(declare-fun m!1228917 () Bool)

(assert (=> b!1341205 m!1228917))

(declare-fun m!1228919 () Bool)

(assert (=> b!1341205 m!1228919))

(declare-fun m!1228921 () Bool)

(assert (=> b!1341205 m!1228921))

(declare-fun m!1228923 () Bool)

(assert (=> b!1341205 m!1228923))

(declare-fun m!1228925 () Bool)

(assert (=> b!1341205 m!1228925))

(assert (=> b!1341205 m!1228919))

(declare-fun m!1228927 () Bool)

(assert (=> b!1341205 m!1228927))

(assert (=> b!1341205 m!1228921))

(assert (=> b!1341205 m!1228923))

(declare-fun m!1228929 () Bool)

(assert (=> b!1341205 m!1228929))

(assert (=> b!1341205 m!1228915))

(declare-fun m!1228931 () Bool)

(assert (=> mapNonEmpty!57475 m!1228931))

(assert (=> b!1341204 m!1228915))

(assert (=> b!1341204 m!1228915))

(declare-fun m!1228933 () Bool)

(assert (=> b!1341204 m!1228933))

(check-sat (not b!1341204) b_and!50277 (not mapNonEmpty!57475) (not start!113164) (not b!1341200) (not b!1341199) (not b!1341203) tp_is_empty!37179 (not b!1341205) (not b_lambda!24365) (not b_next!31179))
(check-sat b_and!50277 (not b_next!31179))
