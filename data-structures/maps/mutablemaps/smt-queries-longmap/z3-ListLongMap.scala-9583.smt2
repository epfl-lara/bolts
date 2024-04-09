; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113398 () Bool)

(assert start!113398)

(declare-fun b_free!31413 () Bool)

(declare-fun b_next!31413 () Bool)

(assert (=> start!113398 (= b_free!31413 (not b_next!31413))))

(declare-fun tp!110044 () Bool)

(declare-fun b_and!50689 () Bool)

(assert (=> start!113398 (= tp!110044 b_and!50689)))

(declare-fun b!1345389 () Bool)

(declare-fun res!892799 () Bool)

(declare-fun e!765602 () Bool)

(assert (=> b!1345389 (=> (not res!892799) (not e!765602))))

(declare-datatypes ((array!91623 0))(
  ( (array!91624 (arr!44263 (Array (_ BitVec 32) (_ BitVec 64))) (size!44814 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91623)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1345389 (= res!892799 (validKeyInArray!0 (select (arr!44263 _keys!1571) from!1960)))))

(declare-fun b!1345390 () Bool)

(declare-fun res!892805 () Bool)

(assert (=> b!1345390 (=> (not res!892805) (not e!765602))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91623 (_ BitVec 32)) Bool)

(assert (=> b!1345390 (= res!892805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1345391 () Bool)

(declare-fun e!765598 () Bool)

(assert (=> b!1345391 (= e!765602 e!765598)))

(declare-fun res!892795 () Bool)

(assert (=> b!1345391 (=> (not res!892795) (not e!765598))))

(declare-datatypes ((V!54987 0))(
  ( (V!54988 (val!18781 Int)) )
))
(declare-fun lt!595292 () V!54987)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24348 0))(
  ( (tuple2!24349 (_1!12184 (_ BitVec 64)) (_2!12184 V!54987)) )
))
(declare-datatypes ((List!31520 0))(
  ( (Nil!31517) (Cons!31516 (h!32725 tuple2!24348) (t!46097 List!31520)) )
))
(declare-datatypes ((ListLongMap!22017 0))(
  ( (ListLongMap!22018 (toList!11024 List!31520)) )
))
(declare-fun lt!595293 () ListLongMap!22017)

(declare-fun contains!9136 (ListLongMap!22017 (_ BitVec 64)) Bool)

(declare-fun +!4804 (ListLongMap!22017 tuple2!24348) ListLongMap!22017)

(assert (=> b!1345391 (= res!892795 (contains!9136 (+!4804 lt!595293 (tuple2!24349 (select (arr!44263 _keys!1571) from!1960) lt!595292)) k0!1142))))

(declare-fun minValue!1245 () V!54987)

(declare-fun zeroValue!1245 () V!54987)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17808 0))(
  ( (ValueCellFull!17808 (v!21427 V!54987)) (EmptyCell!17808) )
))
(declare-datatypes ((array!91625 0))(
  ( (array!91626 (arr!44264 (Array (_ BitVec 32) ValueCell!17808)) (size!44815 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91625)

(declare-fun defaultEntry!1306 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6527 (array!91623 array!91625 (_ BitVec 32) (_ BitVec 32) V!54987 V!54987 (_ BitVec 32) Int) ListLongMap!22017)

(assert (=> b!1345391 (= lt!595293 (getCurrentListMapNoExtraKeys!6527 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22403 (ValueCell!17808 V!54987) V!54987)

(declare-fun dynLambda!3841 (Int (_ BitVec 64)) V!54987)

(assert (=> b!1345391 (= lt!595292 (get!22403 (select (arr!44264 _values!1303) from!1960) (dynLambda!3841 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!892801 () Bool)

(assert (=> start!113398 (=> (not res!892801) (not e!765602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113398 (= res!892801 (validMask!0 mask!1977))))

(assert (=> start!113398 e!765602))

(declare-fun tp_is_empty!37413 () Bool)

(assert (=> start!113398 tp_is_empty!37413))

(assert (=> start!113398 true))

(declare-fun array_inv!33271 (array!91623) Bool)

(assert (=> start!113398 (array_inv!33271 _keys!1571)))

(declare-fun e!765601 () Bool)

(declare-fun array_inv!33272 (array!91625) Bool)

(assert (=> start!113398 (and (array_inv!33272 _values!1303) e!765601)))

(assert (=> start!113398 tp!110044))

(declare-fun b!1345392 () Bool)

(declare-fun res!892797 () Bool)

(assert (=> b!1345392 (=> (not res!892797) (not e!765602))))

(declare-datatypes ((List!31521 0))(
  ( (Nil!31518) (Cons!31517 (h!32726 (_ BitVec 64)) (t!46098 List!31521)) )
))
(declare-fun arrayNoDuplicates!0 (array!91623 (_ BitVec 32) List!31521) Bool)

(assert (=> b!1345392 (= res!892797 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31518))))

(declare-fun b!1345393 () Bool)

(assert (=> b!1345393 (= e!765598 (not true))))

(assert (=> b!1345393 (contains!9136 lt!595293 k0!1142)))

(declare-datatypes ((Unit!44063 0))(
  ( (Unit!44064) )
))
(declare-fun lt!595294 () Unit!44063)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!391 ((_ BitVec 64) (_ BitVec 64) V!54987 ListLongMap!22017) Unit!44063)

(assert (=> b!1345393 (= lt!595294 (lemmaInListMapAfterAddingDiffThenInBefore!391 k0!1142 (select (arr!44263 _keys!1571) from!1960) lt!595292 lt!595293))))

(declare-fun b!1345394 () Bool)

(declare-fun res!892796 () Bool)

(assert (=> b!1345394 (=> (not res!892796) (not e!765602))))

(assert (=> b!1345394 (= res!892796 (and (= (size!44815 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44814 _keys!1571) (size!44815 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1345395 () Bool)

(declare-fun res!892802 () Bool)

(assert (=> b!1345395 (=> (not res!892802) (not e!765602))))

(assert (=> b!1345395 (= res!892802 (not (= (select (arr!44263 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1345396 () Bool)

(declare-fun e!765600 () Bool)

(assert (=> b!1345396 (= e!765600 tp_is_empty!37413)))

(declare-fun mapIsEmpty!57826 () Bool)

(declare-fun mapRes!57826 () Bool)

(assert (=> mapIsEmpty!57826 mapRes!57826))

(declare-fun b!1345397 () Bool)

(declare-fun res!892803 () Bool)

(assert (=> b!1345397 (=> (not res!892803) (not e!765602))))

(assert (=> b!1345397 (= res!892803 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44814 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1345398 () Bool)

(declare-fun res!892804 () Bool)

(assert (=> b!1345398 (=> (not res!892804) (not e!765602))))

(declare-fun getCurrentListMap!5916 (array!91623 array!91625 (_ BitVec 32) (_ BitVec 32) V!54987 V!54987 (_ BitVec 32) Int) ListLongMap!22017)

(assert (=> b!1345398 (= res!892804 (contains!9136 (getCurrentListMap!5916 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1345399 () Bool)

(declare-fun res!892798 () Bool)

(assert (=> b!1345399 (=> (not res!892798) (not e!765598))))

(assert (=> b!1345399 (= res!892798 (not (= k0!1142 (select (arr!44263 _keys!1571) from!1960))))))

(declare-fun b!1345400 () Bool)

(assert (=> b!1345400 (= e!765601 (and e!765600 mapRes!57826))))

(declare-fun condMapEmpty!57826 () Bool)

(declare-fun mapDefault!57826 () ValueCell!17808)

(assert (=> b!1345400 (= condMapEmpty!57826 (= (arr!44264 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17808)) mapDefault!57826)))))

(declare-fun b!1345401 () Bool)

(declare-fun res!892800 () Bool)

(assert (=> b!1345401 (=> (not res!892800) (not e!765602))))

(assert (=> b!1345401 (= res!892800 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345402 () Bool)

(declare-fun e!765597 () Bool)

(assert (=> b!1345402 (= e!765597 tp_is_empty!37413)))

(declare-fun mapNonEmpty!57826 () Bool)

(declare-fun tp!110045 () Bool)

(assert (=> mapNonEmpty!57826 (= mapRes!57826 (and tp!110045 e!765597))))

(declare-fun mapValue!57826 () ValueCell!17808)

(declare-fun mapKey!57826 () (_ BitVec 32))

(declare-fun mapRest!57826 () (Array (_ BitVec 32) ValueCell!17808))

(assert (=> mapNonEmpty!57826 (= (arr!44264 _values!1303) (store mapRest!57826 mapKey!57826 mapValue!57826))))

(assert (= (and start!113398 res!892801) b!1345394))

(assert (= (and b!1345394 res!892796) b!1345390))

(assert (= (and b!1345390 res!892805) b!1345392))

(assert (= (and b!1345392 res!892797) b!1345397))

(assert (= (and b!1345397 res!892803) b!1345398))

(assert (= (and b!1345398 res!892804) b!1345395))

(assert (= (and b!1345395 res!892802) b!1345389))

(assert (= (and b!1345389 res!892799) b!1345401))

(assert (= (and b!1345401 res!892800) b!1345391))

(assert (= (and b!1345391 res!892795) b!1345399))

(assert (= (and b!1345399 res!892798) b!1345393))

(assert (= (and b!1345400 condMapEmpty!57826) mapIsEmpty!57826))

(assert (= (and b!1345400 (not condMapEmpty!57826)) mapNonEmpty!57826))

(get-info :version)

(assert (= (and mapNonEmpty!57826 ((_ is ValueCellFull!17808) mapValue!57826)) b!1345402))

(assert (= (and b!1345400 ((_ is ValueCellFull!17808) mapDefault!57826)) b!1345396))

(assert (= start!113398 b!1345400))

(declare-fun b_lambda!24545 () Bool)

(assert (=> (not b_lambda!24545) (not b!1345391)))

(declare-fun t!46096 () Bool)

(declare-fun tb!12381 () Bool)

(assert (=> (and start!113398 (= defaultEntry!1306 defaultEntry!1306) t!46096) tb!12381))

(declare-fun result!25845 () Bool)

(assert (=> tb!12381 (= result!25845 tp_is_empty!37413)))

(assert (=> b!1345391 t!46096))

(declare-fun b_and!50691 () Bool)

(assert (= b_and!50689 (and (=> t!46096 result!25845) b_and!50691)))

(declare-fun m!1232815 () Bool)

(assert (=> b!1345389 m!1232815))

(assert (=> b!1345389 m!1232815))

(declare-fun m!1232817 () Bool)

(assert (=> b!1345389 m!1232817))

(assert (=> b!1345399 m!1232815))

(declare-fun m!1232819 () Bool)

(assert (=> b!1345392 m!1232819))

(declare-fun m!1232821 () Bool)

(assert (=> b!1345390 m!1232821))

(declare-fun m!1232823 () Bool)

(assert (=> b!1345398 m!1232823))

(assert (=> b!1345398 m!1232823))

(declare-fun m!1232825 () Bool)

(assert (=> b!1345398 m!1232825))

(declare-fun m!1232827 () Bool)

(assert (=> b!1345393 m!1232827))

(assert (=> b!1345393 m!1232815))

(assert (=> b!1345393 m!1232815))

(declare-fun m!1232829 () Bool)

(assert (=> b!1345393 m!1232829))

(assert (=> b!1345395 m!1232815))

(declare-fun m!1232831 () Bool)

(assert (=> mapNonEmpty!57826 m!1232831))

(declare-fun m!1232833 () Bool)

(assert (=> start!113398 m!1232833))

(declare-fun m!1232835 () Bool)

(assert (=> start!113398 m!1232835))

(declare-fun m!1232837 () Bool)

(assert (=> start!113398 m!1232837))

(declare-fun m!1232839 () Bool)

(assert (=> b!1345391 m!1232839))

(declare-fun m!1232841 () Bool)

(assert (=> b!1345391 m!1232841))

(declare-fun m!1232843 () Bool)

(assert (=> b!1345391 m!1232843))

(declare-fun m!1232845 () Bool)

(assert (=> b!1345391 m!1232845))

(assert (=> b!1345391 m!1232841))

(assert (=> b!1345391 m!1232843))

(assert (=> b!1345391 m!1232815))

(declare-fun m!1232847 () Bool)

(assert (=> b!1345391 m!1232847))

(declare-fun m!1232849 () Bool)

(assert (=> b!1345391 m!1232849))

(assert (=> b!1345391 m!1232847))

(check-sat (not b!1345398) (not mapNonEmpty!57826) (not b!1345389) (not start!113398) (not b_next!31413) (not b!1345390) (not b!1345393) b_and!50691 tp_is_empty!37413 (not b!1345391) (not b!1345392) (not b_lambda!24545))
(check-sat b_and!50691 (not b_next!31413))
