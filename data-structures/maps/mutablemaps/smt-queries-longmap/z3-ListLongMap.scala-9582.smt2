; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113392 () Bool)

(assert start!113392)

(declare-fun b_free!31407 () Bool)

(declare-fun b_next!31407 () Bool)

(assert (=> start!113392 (= b_free!31407 (not b_next!31407))))

(declare-fun tp!110026 () Bool)

(declare-fun b_and!50677 () Bool)

(assert (=> start!113392 (= tp!110026 b_and!50677)))

(declare-fun b!1345257 () Bool)

(declare-fun res!892703 () Bool)

(declare-fun e!765548 () Bool)

(assert (=> b!1345257 (=> (not res!892703) (not e!765548))))

(declare-datatypes ((V!54979 0))(
  ( (V!54980 (val!18778 Int)) )
))
(declare-fun minValue!1245 () V!54979)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91611 0))(
  ( (array!91612 (arr!44257 (Array (_ BitVec 32) (_ BitVec 64))) (size!44808 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91611)

(declare-fun zeroValue!1245 () V!54979)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17805 0))(
  ( (ValueCellFull!17805 (v!21424 V!54979)) (EmptyCell!17805) )
))
(declare-datatypes ((array!91613 0))(
  ( (array!91614 (arr!44258 (Array (_ BitVec 32) ValueCell!17805)) (size!44809 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91613)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24342 0))(
  ( (tuple2!24343 (_1!12181 (_ BitVec 64)) (_2!12181 V!54979)) )
))
(declare-datatypes ((List!31514 0))(
  ( (Nil!31511) (Cons!31510 (h!32719 tuple2!24342) (t!46085 List!31514)) )
))
(declare-datatypes ((ListLongMap!22011 0))(
  ( (ListLongMap!22012 (toList!11021 List!31514)) )
))
(declare-fun contains!9133 (ListLongMap!22011 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5913 (array!91611 array!91613 (_ BitVec 32) (_ BitVec 32) V!54979 V!54979 (_ BitVec 32) Int) ListLongMap!22011)

(assert (=> b!1345257 (= res!892703 (contains!9133 (getCurrentListMap!5913 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1345258 () Bool)

(declare-fun res!892706 () Bool)

(assert (=> b!1345258 (=> (not res!892706) (not e!765548))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1345258 (= res!892706 (validKeyInArray!0 (select (arr!44257 _keys!1571) from!1960)))))

(declare-fun mapIsEmpty!57817 () Bool)

(declare-fun mapRes!57817 () Bool)

(assert (=> mapIsEmpty!57817 mapRes!57817))

(declare-fun b!1345259 () Bool)

(declare-fun res!892705 () Bool)

(declare-fun e!765544 () Bool)

(assert (=> b!1345259 (=> (not res!892705) (not e!765544))))

(assert (=> b!1345259 (= res!892705 (not (= k0!1142 (select (arr!44257 _keys!1571) from!1960))))))

(declare-fun b!1345260 () Bool)

(declare-fun e!765545 () Bool)

(declare-fun tp_is_empty!37407 () Bool)

(assert (=> b!1345260 (= e!765545 tp_is_empty!37407)))

(declare-fun b!1345261 () Bool)

(declare-fun res!892700 () Bool)

(assert (=> b!1345261 (=> (not res!892700) (not e!765548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91611 (_ BitVec 32)) Bool)

(assert (=> b!1345261 (= res!892700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1345262 () Bool)

(assert (=> b!1345262 (= e!765544 (not true))))

(declare-fun lt!595266 () ListLongMap!22011)

(assert (=> b!1345262 (contains!9133 lt!595266 k0!1142)))

(declare-fun lt!595265 () V!54979)

(declare-datatypes ((Unit!44057 0))(
  ( (Unit!44058) )
))
(declare-fun lt!595267 () Unit!44057)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!388 ((_ BitVec 64) (_ BitVec 64) V!54979 ListLongMap!22011) Unit!44057)

(assert (=> b!1345262 (= lt!595267 (lemmaInListMapAfterAddingDiffThenInBefore!388 k0!1142 (select (arr!44257 _keys!1571) from!1960) lt!595265 lt!595266))))

(declare-fun b!1345264 () Bool)

(declare-fun res!892698 () Bool)

(assert (=> b!1345264 (=> (not res!892698) (not e!765548))))

(assert (=> b!1345264 (= res!892698 (not (= (select (arr!44257 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1345265 () Bool)

(declare-fun res!892701 () Bool)

(assert (=> b!1345265 (=> (not res!892701) (not e!765548))))

(assert (=> b!1345265 (= res!892701 (and (= (size!44809 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44808 _keys!1571) (size!44809 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1345266 () Bool)

(declare-fun res!892696 () Bool)

(assert (=> b!1345266 (=> (not res!892696) (not e!765548))))

(assert (=> b!1345266 (= res!892696 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345267 () Bool)

(declare-fun res!892697 () Bool)

(assert (=> b!1345267 (=> (not res!892697) (not e!765548))))

(declare-datatypes ((List!31515 0))(
  ( (Nil!31512) (Cons!31511 (h!32720 (_ BitVec 64)) (t!46086 List!31515)) )
))
(declare-fun arrayNoDuplicates!0 (array!91611 (_ BitVec 32) List!31515) Bool)

(assert (=> b!1345267 (= res!892697 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31512))))

(declare-fun b!1345268 () Bool)

(declare-fun e!765546 () Bool)

(assert (=> b!1345268 (= e!765546 tp_is_empty!37407)))

(declare-fun b!1345269 () Bool)

(declare-fun e!765543 () Bool)

(assert (=> b!1345269 (= e!765543 (and e!765546 mapRes!57817))))

(declare-fun condMapEmpty!57817 () Bool)

(declare-fun mapDefault!57817 () ValueCell!17805)

(assert (=> b!1345269 (= condMapEmpty!57817 (= (arr!44258 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17805)) mapDefault!57817)))))

(declare-fun mapNonEmpty!57817 () Bool)

(declare-fun tp!110027 () Bool)

(assert (=> mapNonEmpty!57817 (= mapRes!57817 (and tp!110027 e!765545))))

(declare-fun mapValue!57817 () ValueCell!17805)

(declare-fun mapKey!57817 () (_ BitVec 32))

(declare-fun mapRest!57817 () (Array (_ BitVec 32) ValueCell!17805))

(assert (=> mapNonEmpty!57817 (= (arr!44258 _values!1303) (store mapRest!57817 mapKey!57817 mapValue!57817))))

(declare-fun b!1345270 () Bool)

(declare-fun res!892699 () Bool)

(assert (=> b!1345270 (=> (not res!892699) (not e!765548))))

(assert (=> b!1345270 (= res!892699 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44808 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!892704 () Bool)

(assert (=> start!113392 (=> (not res!892704) (not e!765548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113392 (= res!892704 (validMask!0 mask!1977))))

(assert (=> start!113392 e!765548))

(assert (=> start!113392 tp_is_empty!37407))

(assert (=> start!113392 true))

(declare-fun array_inv!33265 (array!91611) Bool)

(assert (=> start!113392 (array_inv!33265 _keys!1571)))

(declare-fun array_inv!33266 (array!91613) Bool)

(assert (=> start!113392 (and (array_inv!33266 _values!1303) e!765543)))

(assert (=> start!113392 tp!110026))

(declare-fun b!1345263 () Bool)

(assert (=> b!1345263 (= e!765548 e!765544)))

(declare-fun res!892702 () Bool)

(assert (=> b!1345263 (=> (not res!892702) (not e!765544))))

(declare-fun +!4801 (ListLongMap!22011 tuple2!24342) ListLongMap!22011)

(assert (=> b!1345263 (= res!892702 (contains!9133 (+!4801 lt!595266 (tuple2!24343 (select (arr!44257 _keys!1571) from!1960) lt!595265)) k0!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6524 (array!91611 array!91613 (_ BitVec 32) (_ BitVec 32) V!54979 V!54979 (_ BitVec 32) Int) ListLongMap!22011)

(assert (=> b!1345263 (= lt!595266 (getCurrentListMapNoExtraKeys!6524 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22398 (ValueCell!17805 V!54979) V!54979)

(declare-fun dynLambda!3838 (Int (_ BitVec 64)) V!54979)

(assert (=> b!1345263 (= lt!595265 (get!22398 (select (arr!44258 _values!1303) from!1960) (dynLambda!3838 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113392 res!892704) b!1345265))

(assert (= (and b!1345265 res!892701) b!1345261))

(assert (= (and b!1345261 res!892700) b!1345267))

(assert (= (and b!1345267 res!892697) b!1345270))

(assert (= (and b!1345270 res!892699) b!1345257))

(assert (= (and b!1345257 res!892703) b!1345264))

(assert (= (and b!1345264 res!892698) b!1345258))

(assert (= (and b!1345258 res!892706) b!1345266))

(assert (= (and b!1345266 res!892696) b!1345263))

(assert (= (and b!1345263 res!892702) b!1345259))

(assert (= (and b!1345259 res!892705) b!1345262))

(assert (= (and b!1345269 condMapEmpty!57817) mapIsEmpty!57817))

(assert (= (and b!1345269 (not condMapEmpty!57817)) mapNonEmpty!57817))

(get-info :version)

(assert (= (and mapNonEmpty!57817 ((_ is ValueCellFull!17805) mapValue!57817)) b!1345260))

(assert (= (and b!1345269 ((_ is ValueCellFull!17805) mapDefault!57817)) b!1345268))

(assert (= start!113392 b!1345269))

(declare-fun b_lambda!24539 () Bool)

(assert (=> (not b_lambda!24539) (not b!1345263)))

(declare-fun t!46084 () Bool)

(declare-fun tb!12375 () Bool)

(assert (=> (and start!113392 (= defaultEntry!1306 defaultEntry!1306) t!46084) tb!12375))

(declare-fun result!25833 () Bool)

(assert (=> tb!12375 (= result!25833 tp_is_empty!37407)))

(assert (=> b!1345263 t!46084))

(declare-fun b_and!50679 () Bool)

(assert (= b_and!50677 (and (=> t!46084 result!25833) b_and!50679)))

(declare-fun m!1232707 () Bool)

(assert (=> mapNonEmpty!57817 m!1232707))

(declare-fun m!1232709 () Bool)

(assert (=> b!1345257 m!1232709))

(assert (=> b!1345257 m!1232709))

(declare-fun m!1232711 () Bool)

(assert (=> b!1345257 m!1232711))

(declare-fun m!1232713 () Bool)

(assert (=> b!1345259 m!1232713))

(declare-fun m!1232715 () Bool)

(assert (=> b!1345267 m!1232715))

(assert (=> b!1345264 m!1232713))

(declare-fun m!1232717 () Bool)

(assert (=> b!1345261 m!1232717))

(declare-fun m!1232719 () Bool)

(assert (=> b!1345262 m!1232719))

(assert (=> b!1345262 m!1232713))

(assert (=> b!1345262 m!1232713))

(declare-fun m!1232721 () Bool)

(assert (=> b!1345262 m!1232721))

(assert (=> b!1345258 m!1232713))

(assert (=> b!1345258 m!1232713))

(declare-fun m!1232723 () Bool)

(assert (=> b!1345258 m!1232723))

(declare-fun m!1232725 () Bool)

(assert (=> start!113392 m!1232725))

(declare-fun m!1232727 () Bool)

(assert (=> start!113392 m!1232727))

(declare-fun m!1232729 () Bool)

(assert (=> start!113392 m!1232729))

(declare-fun m!1232731 () Bool)

(assert (=> b!1345263 m!1232731))

(declare-fun m!1232733 () Bool)

(assert (=> b!1345263 m!1232733))

(declare-fun m!1232735 () Bool)

(assert (=> b!1345263 m!1232735))

(declare-fun m!1232737 () Bool)

(assert (=> b!1345263 m!1232737))

(assert (=> b!1345263 m!1232733))

(assert (=> b!1345263 m!1232735))

(assert (=> b!1345263 m!1232713))

(declare-fun m!1232739 () Bool)

(assert (=> b!1345263 m!1232739))

(assert (=> b!1345263 m!1232731))

(declare-fun m!1232741 () Bool)

(assert (=> b!1345263 m!1232741))

(check-sat (not b!1345257) (not b!1345258) b_and!50679 (not start!113392) (not mapNonEmpty!57817) (not b_lambda!24539) (not b!1345263) (not b!1345267) (not b_next!31407) (not b!1345262) tp_is_empty!37407 (not b!1345261))
(check-sat b_and!50679 (not b_next!31407))
