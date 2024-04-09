; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113266 () Bool)

(assert start!113266)

(declare-fun b_free!31281 () Bool)

(declare-fun b_next!31281 () Bool)

(assert (=> start!113266 (= b_free!31281 (not b_next!31281))))

(declare-fun tp!109649 () Bool)

(declare-fun b_and!50479 () Bool)

(assert (=> start!113266 (= tp!109649 b_and!50479)))

(declare-fun res!891217 () Bool)

(declare-fun e!764559 () Bool)

(assert (=> start!113266 (=> (not res!891217) (not e!764559))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113266 (= res!891217 (validMask!0 mask!1977))))

(assert (=> start!113266 e!764559))

(declare-fun tp_is_empty!37281 () Bool)

(assert (=> start!113266 tp_is_empty!37281))

(assert (=> start!113266 true))

(declare-datatypes ((array!91363 0))(
  ( (array!91364 (arr!44133 (Array (_ BitVec 32) (_ BitVec 64))) (size!44684 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91363)

(declare-fun array_inv!33183 (array!91363) Bool)

(assert (=> start!113266 (array_inv!33183 _keys!1571)))

(declare-datatypes ((V!54811 0))(
  ( (V!54812 (val!18715 Int)) )
))
(declare-datatypes ((ValueCell!17742 0))(
  ( (ValueCellFull!17742 (v!21361 V!54811)) (EmptyCell!17742) )
))
(declare-datatypes ((array!91365 0))(
  ( (array!91366 (arr!44134 (Array (_ BitVec 32) ValueCell!17742)) (size!44685 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91365)

(declare-fun e!764557 () Bool)

(declare-fun array_inv!33184 (array!91365) Bool)

(assert (=> start!113266 (and (array_inv!33184 _values!1303) e!764557)))

(assert (=> start!113266 tp!109649))

(declare-fun b!1343132 () Bool)

(declare-fun res!891212 () Bool)

(assert (=> b!1343132 (=> (not res!891212) (not e!764559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91363 (_ BitVec 32)) Bool)

(assert (=> b!1343132 (= res!891212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343133 () Bool)

(declare-fun res!891215 () Bool)

(assert (=> b!1343133 (=> (not res!891215) (not e!764559))))

(declare-fun minValue!1245 () V!54811)

(declare-fun zeroValue!1245 () V!54811)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((tuple2!24258 0))(
  ( (tuple2!24259 (_1!12139 (_ BitVec 64)) (_2!12139 V!54811)) )
))
(declare-datatypes ((List!31436 0))(
  ( (Nil!31433) (Cons!31432 (h!32641 tuple2!24258) (t!45935 List!31436)) )
))
(declare-datatypes ((ListLongMap!21927 0))(
  ( (ListLongMap!21928 (toList!10979 List!31436)) )
))
(declare-fun contains!9091 (ListLongMap!21927 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5875 (array!91363 array!91365 (_ BitVec 32) (_ BitVec 32) V!54811 V!54811 (_ BitVec 32) Int) ListLongMap!21927)

(assert (=> b!1343133 (= res!891215 (contains!9091 (getCurrentListMap!5875 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1343134 () Bool)

(declare-fun res!891214 () Bool)

(assert (=> b!1343134 (=> (not res!891214) (not e!764559))))

(assert (=> b!1343134 (= res!891214 (and (= (size!44685 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44684 _keys!1571) (size!44685 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343135 () Bool)

(declare-fun e!764560 () Bool)

(assert (=> b!1343135 (= e!764560 tp_is_empty!37281)))

(declare-fun mapNonEmpty!57628 () Bool)

(declare-fun mapRes!57628 () Bool)

(declare-fun tp!109648 () Bool)

(assert (=> mapNonEmpty!57628 (= mapRes!57628 (and tp!109648 e!764560))))

(declare-fun mapValue!57628 () ValueCell!17742)

(declare-fun mapKey!57628 () (_ BitVec 32))

(declare-fun mapRest!57628 () (Array (_ BitVec 32) ValueCell!17742))

(assert (=> mapNonEmpty!57628 (= (arr!44134 _values!1303) (store mapRest!57628 mapKey!57628 mapValue!57628))))

(declare-fun b!1343136 () Bool)

(assert (=> b!1343136 (= e!764559 (not true))))

(declare-fun lt!594759 () ListLongMap!21927)

(declare-fun +!4777 (ListLongMap!21927 tuple2!24258) ListLongMap!21927)

(assert (=> b!1343136 (contains!9091 (+!4777 lt!594759 (tuple2!24259 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))

(declare-datatypes ((Unit!44019 0))(
  ( (Unit!44020) )
))
(declare-fun lt!594762 () Unit!44019)

(declare-fun addStillContains!1203 (ListLongMap!21927 (_ BitVec 64) V!54811 (_ BitVec 64)) Unit!44019)

(assert (=> b!1343136 (= lt!594762 (addStillContains!1203 lt!594759 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k0!1142))))

(assert (=> b!1343136 (contains!9091 lt!594759 k0!1142)))

(declare-fun lt!594763 () V!54811)

(declare-fun lt!594761 () Unit!44019)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!369 ((_ BitVec 64) (_ BitVec 64) V!54811 ListLongMap!21927) Unit!44019)

(assert (=> b!1343136 (= lt!594761 (lemmaInListMapAfterAddingDiffThenInBefore!369 k0!1142 (select (arr!44133 _keys!1571) from!1960) lt!594763 lt!594759))))

(declare-fun lt!594760 () ListLongMap!21927)

(assert (=> b!1343136 (contains!9091 lt!594760 k0!1142)))

(declare-fun lt!594758 () Unit!44019)

(assert (=> b!1343136 (= lt!594758 (lemmaInListMapAfterAddingDiffThenInBefore!369 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594760))))

(assert (=> b!1343136 (= lt!594760 (+!4777 lt!594759 (tuple2!24259 (select (arr!44133 _keys!1571) from!1960) lt!594763)))))

(declare-fun get!22332 (ValueCell!17742 V!54811) V!54811)

(declare-fun dynLambda!3814 (Int (_ BitVec 64)) V!54811)

(assert (=> b!1343136 (= lt!594763 (get!22332 (select (arr!44134 _values!1303) from!1960) (dynLambda!3814 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6500 (array!91363 array!91365 (_ BitVec 32) (_ BitVec 32) V!54811 V!54811 (_ BitVec 32) Int) ListLongMap!21927)

(assert (=> b!1343136 (= lt!594759 (getCurrentListMapNoExtraKeys!6500 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1343137 () Bool)

(declare-fun res!891210 () Bool)

(assert (=> b!1343137 (=> (not res!891210) (not e!764559))))

(declare-datatypes ((List!31437 0))(
  ( (Nil!31434) (Cons!31433 (h!32642 (_ BitVec 64)) (t!45936 List!31437)) )
))
(declare-fun arrayNoDuplicates!0 (array!91363 (_ BitVec 32) List!31437) Bool)

(assert (=> b!1343137 (= res!891210 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31434))))

(declare-fun b!1343138 () Bool)

(declare-fun e!764558 () Bool)

(assert (=> b!1343138 (= e!764558 tp_is_empty!37281)))

(declare-fun mapIsEmpty!57628 () Bool)

(assert (=> mapIsEmpty!57628 mapRes!57628))

(declare-fun b!1343139 () Bool)

(declare-fun res!891216 () Bool)

(assert (=> b!1343139 (=> (not res!891216) (not e!764559))))

(assert (=> b!1343139 (= res!891216 (not (= (select (arr!44133 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1343140 () Bool)

(assert (=> b!1343140 (= e!764557 (and e!764558 mapRes!57628))))

(declare-fun condMapEmpty!57628 () Bool)

(declare-fun mapDefault!57628 () ValueCell!17742)

(assert (=> b!1343140 (= condMapEmpty!57628 (= (arr!44134 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17742)) mapDefault!57628)))))

(declare-fun b!1343141 () Bool)

(declare-fun res!891211 () Bool)

(assert (=> b!1343141 (=> (not res!891211) (not e!764559))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343141 (= res!891211 (validKeyInArray!0 (select (arr!44133 _keys!1571) from!1960)))))

(declare-fun b!1343142 () Bool)

(declare-fun res!891218 () Bool)

(assert (=> b!1343142 (=> (not res!891218) (not e!764559))))

(assert (=> b!1343142 (= res!891218 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1343143 () Bool)

(declare-fun res!891213 () Bool)

(assert (=> b!1343143 (=> (not res!891213) (not e!764559))))

(assert (=> b!1343143 (= res!891213 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44684 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!113266 res!891217) b!1343134))

(assert (= (and b!1343134 res!891214) b!1343132))

(assert (= (and b!1343132 res!891212) b!1343137))

(assert (= (and b!1343137 res!891210) b!1343143))

(assert (= (and b!1343143 res!891213) b!1343133))

(assert (= (and b!1343133 res!891215) b!1343139))

(assert (= (and b!1343139 res!891216) b!1343141))

(assert (= (and b!1343141 res!891211) b!1343142))

(assert (= (and b!1343142 res!891218) b!1343136))

(assert (= (and b!1343140 condMapEmpty!57628) mapIsEmpty!57628))

(assert (= (and b!1343140 (not condMapEmpty!57628)) mapNonEmpty!57628))

(get-info :version)

(assert (= (and mapNonEmpty!57628 ((_ is ValueCellFull!17742) mapValue!57628)) b!1343135))

(assert (= (and b!1343140 ((_ is ValueCellFull!17742) mapDefault!57628)) b!1343138))

(assert (= start!113266 b!1343140))

(declare-fun b_lambda!24467 () Bool)

(assert (=> (not b_lambda!24467) (not b!1343136)))

(declare-fun t!45934 () Bool)

(declare-fun tb!12303 () Bool)

(assert (=> (and start!113266 (= defaultEntry!1306 defaultEntry!1306) t!45934) tb!12303))

(declare-fun result!25689 () Bool)

(assert (=> tb!12303 (= result!25689 tp_is_empty!37281)))

(assert (=> b!1343136 t!45934))

(declare-fun b_and!50481 () Bool)

(assert (= b_and!50479 (and (=> t!45934 result!25689) b_and!50481)))

(declare-fun m!1230855 () Bool)

(assert (=> b!1343132 m!1230855))

(declare-fun m!1230857 () Bool)

(assert (=> b!1343136 m!1230857))

(declare-fun m!1230859 () Bool)

(assert (=> b!1343136 m!1230859))

(declare-fun m!1230861 () Bool)

(assert (=> b!1343136 m!1230861))

(declare-fun m!1230863 () Bool)

(assert (=> b!1343136 m!1230863))

(declare-fun m!1230865 () Bool)

(assert (=> b!1343136 m!1230865))

(declare-fun m!1230867 () Bool)

(assert (=> b!1343136 m!1230867))

(declare-fun m!1230869 () Bool)

(assert (=> b!1343136 m!1230869))

(assert (=> b!1343136 m!1230863))

(declare-fun m!1230871 () Bool)

(assert (=> b!1343136 m!1230871))

(declare-fun m!1230873 () Bool)

(assert (=> b!1343136 m!1230873))

(declare-fun m!1230875 () Bool)

(assert (=> b!1343136 m!1230875))

(assert (=> b!1343136 m!1230873))

(declare-fun m!1230877 () Bool)

(assert (=> b!1343136 m!1230877))

(assert (=> b!1343136 m!1230865))

(assert (=> b!1343136 m!1230857))

(declare-fun m!1230879 () Bool)

(assert (=> b!1343136 m!1230879))

(declare-fun m!1230881 () Bool)

(assert (=> b!1343136 m!1230881))

(declare-fun m!1230883 () Bool)

(assert (=> start!113266 m!1230883))

(declare-fun m!1230885 () Bool)

(assert (=> start!113266 m!1230885))

(declare-fun m!1230887 () Bool)

(assert (=> start!113266 m!1230887))

(declare-fun m!1230889 () Bool)

(assert (=> b!1343133 m!1230889))

(assert (=> b!1343133 m!1230889))

(declare-fun m!1230891 () Bool)

(assert (=> b!1343133 m!1230891))

(assert (=> b!1343141 m!1230873))

(assert (=> b!1343141 m!1230873))

(declare-fun m!1230893 () Bool)

(assert (=> b!1343141 m!1230893))

(assert (=> b!1343139 m!1230873))

(declare-fun m!1230895 () Bool)

(assert (=> b!1343137 m!1230895))

(declare-fun m!1230897 () Bool)

(assert (=> mapNonEmpty!57628 m!1230897))

(check-sat (not start!113266) (not b!1343136) (not b_lambda!24467) (not b!1343141) (not b!1343132) (not b!1343133) (not b_next!31281) (not b!1343137) b_and!50481 (not mapNonEmpty!57628) tp_is_empty!37281)
(check-sat b_and!50481 (not b_next!31281))
