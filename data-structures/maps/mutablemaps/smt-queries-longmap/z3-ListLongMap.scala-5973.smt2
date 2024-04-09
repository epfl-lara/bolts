; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77694 () Bool)

(assert start!77694)

(declare-fun b_free!16251 () Bool)

(declare-fun b_next!16251 () Bool)

(assert (=> start!77694 (= b_free!16251 (not b_next!16251))))

(declare-fun tp!57016 () Bool)

(declare-fun b_and!26673 () Bool)

(assert (=> start!77694 (= tp!57016 b_and!26673)))

(declare-fun b!905506 () Bool)

(declare-fun e!507456 () Bool)

(declare-fun e!507454 () Bool)

(assert (=> b!905506 (= e!507456 (not e!507454))))

(declare-fun res!611170 () Bool)

(assert (=> b!905506 (=> res!611170 e!507454)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53368 0))(
  ( (array!53369 (arr!25639 (Array (_ BitVec 32) (_ BitVec 64))) (size!26099 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53368)

(assert (=> b!905506 (= res!611170 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26099 _keys!1386))))))

(declare-datatypes ((V!29857 0))(
  ( (V!29858 (val!9385 Int)) )
))
(declare-datatypes ((ValueCell!8853 0))(
  ( (ValueCellFull!8853 (v!11890 V!29857)) (EmptyCell!8853) )
))
(declare-datatypes ((array!53370 0))(
  ( (array!53371 (arr!25640 (Array (_ BitVec 32) ValueCell!8853)) (size!26100 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53370)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408580 () V!29857)

(declare-fun get!13487 (ValueCell!8853 V!29857) V!29857)

(declare-fun dynLambda!1337 (Int (_ BitVec 64)) V!29857)

(assert (=> b!905506 (= lt!408580 (get!13487 (select (arr!25640 _values!1152) i!717) (dynLambda!1337 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53368 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905506 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((Unit!30697 0))(
  ( (Unit!30698) )
))
(declare-fun lt!408581 () Unit!30697)

(declare-fun zeroValue!1094 () V!29857)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29857)

(declare-fun lemmaKeyInListMapIsInArray!210 (array!53368 array!53370 (_ BitVec 32) (_ BitVec 32) V!29857 V!29857 (_ BitVec 64) Int) Unit!30697)

(assert (=> b!905506 (= lt!408581 (lemmaKeyInListMapIsInArray!210 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!905507 () Bool)

(declare-fun e!507458 () Bool)

(assert (=> b!905507 (= e!507454 e!507458)))

(declare-fun res!611169 () Bool)

(assert (=> b!905507 (=> res!611169 e!507458)))

(declare-datatypes ((tuple2!12230 0))(
  ( (tuple2!12231 (_1!6125 (_ BitVec 64)) (_2!6125 V!29857)) )
))
(declare-datatypes ((List!18096 0))(
  ( (Nil!18093) (Cons!18092 (h!19238 tuple2!12230) (t!25527 List!18096)) )
))
(declare-datatypes ((ListLongMap!10941 0))(
  ( (ListLongMap!10942 (toList!5486 List!18096)) )
))
(declare-fun lt!408577 () ListLongMap!10941)

(declare-fun contains!4498 (ListLongMap!10941 (_ BitVec 64)) Bool)

(assert (=> b!905507 (= res!611169 (not (contains!4498 lt!408577 k0!1033)))))

(declare-fun getCurrentListMap!2722 (array!53368 array!53370 (_ BitVec 32) (_ BitVec 32) V!29857 V!29857 (_ BitVec 32) Int) ListLongMap!10941)

(assert (=> b!905507 (= lt!408577 (getCurrentListMap!2722 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun res!611166 () Bool)

(declare-fun e!507455 () Bool)

(assert (=> start!77694 (=> (not res!611166) (not e!507455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77694 (= res!611166 (validMask!0 mask!1756))))

(assert (=> start!77694 e!507455))

(declare-fun e!507457 () Bool)

(declare-fun array_inv!20064 (array!53370) Bool)

(assert (=> start!77694 (and (array_inv!20064 _values!1152) e!507457)))

(assert (=> start!77694 tp!57016))

(assert (=> start!77694 true))

(declare-fun tp_is_empty!18669 () Bool)

(assert (=> start!77694 tp_is_empty!18669))

(declare-fun array_inv!20065 (array!53368) Bool)

(assert (=> start!77694 (array_inv!20065 _keys!1386)))

(declare-fun b!905508 () Bool)

(assert (=> b!905508 (= e!507455 e!507456)))

(declare-fun res!611163 () Bool)

(assert (=> b!905508 (=> (not res!611163) (not e!507456))))

(declare-fun lt!408578 () ListLongMap!10941)

(assert (=> b!905508 (= res!611163 (contains!4498 lt!408578 k0!1033))))

(assert (=> b!905508 (= lt!408578 (getCurrentListMap!2722 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!905509 () Bool)

(declare-fun res!611165 () Bool)

(assert (=> b!905509 (=> res!611165 e!507458)))

(declare-fun apply!463 (ListLongMap!10941 (_ BitVec 64)) V!29857)

(assert (=> b!905509 (= res!611165 (not (= (apply!463 lt!408577 k0!1033) lt!408580)))))

(declare-fun b!905510 () Bool)

(declare-fun res!611168 () Bool)

(assert (=> b!905510 (=> (not res!611168) (not e!507456))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905510 (= res!611168 (inRange!0 i!717 mask!1756))))

(declare-fun b!905511 () Bool)

(declare-fun res!611171 () Bool)

(assert (=> b!905511 (=> (not res!611171) (not e!507455))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53368 (_ BitVec 32)) Bool)

(assert (=> b!905511 (= res!611171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!905512 () Bool)

(assert (=> b!905512 (= e!507458 true)))

(assert (=> b!905512 (= (apply!463 lt!408578 k0!1033) lt!408580)))

(declare-fun lt!408579 () Unit!30697)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!14 (array!53368 array!53370 (_ BitVec 32) (_ BitVec 32) V!29857 V!29857 (_ BitVec 64) V!29857 (_ BitVec 32) Int) Unit!30697)

(assert (=> b!905512 (= lt!408579 (lemmaListMapApplyFromThenApplyFromZero!14 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408580 i!717 defaultEntry!1160))))

(declare-fun b!905513 () Bool)

(declare-fun e!507459 () Bool)

(assert (=> b!905513 (= e!507459 tp_is_empty!18669)))

(declare-fun b!905514 () Bool)

(declare-fun res!611172 () Bool)

(assert (=> b!905514 (=> (not res!611172) (not e!507456))))

(assert (=> b!905514 (= res!611172 (and (= (select (arr!25639 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905515 () Bool)

(declare-fun res!611167 () Bool)

(assert (=> b!905515 (=> (not res!611167) (not e!507455))))

(declare-datatypes ((List!18097 0))(
  ( (Nil!18094) (Cons!18093 (h!19239 (_ BitVec 64)) (t!25528 List!18097)) )
))
(declare-fun arrayNoDuplicates!0 (array!53368 (_ BitVec 32) List!18097) Bool)

(assert (=> b!905515 (= res!611167 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18094))))

(declare-fun b!905516 () Bool)

(declare-fun e!507461 () Bool)

(declare-fun mapRes!29716 () Bool)

(assert (=> b!905516 (= e!507457 (and e!507461 mapRes!29716))))

(declare-fun condMapEmpty!29716 () Bool)

(declare-fun mapDefault!29716 () ValueCell!8853)

(assert (=> b!905516 (= condMapEmpty!29716 (= (arr!25640 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8853)) mapDefault!29716)))))

(declare-fun b!905517 () Bool)

(declare-fun res!611164 () Bool)

(assert (=> b!905517 (=> (not res!611164) (not e!507455))))

(assert (=> b!905517 (= res!611164 (and (= (size!26100 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26099 _keys!1386) (size!26100 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!905518 () Bool)

(assert (=> b!905518 (= e!507461 tp_is_empty!18669)))

(declare-fun mapNonEmpty!29716 () Bool)

(declare-fun tp!57015 () Bool)

(assert (=> mapNonEmpty!29716 (= mapRes!29716 (and tp!57015 e!507459))))

(declare-fun mapKey!29716 () (_ BitVec 32))

(declare-fun mapValue!29716 () ValueCell!8853)

(declare-fun mapRest!29716 () (Array (_ BitVec 32) ValueCell!8853))

(assert (=> mapNonEmpty!29716 (= (arr!25640 _values!1152) (store mapRest!29716 mapKey!29716 mapValue!29716))))

(declare-fun mapIsEmpty!29716 () Bool)

(assert (=> mapIsEmpty!29716 mapRes!29716))

(assert (= (and start!77694 res!611166) b!905517))

(assert (= (and b!905517 res!611164) b!905511))

(assert (= (and b!905511 res!611171) b!905515))

(assert (= (and b!905515 res!611167) b!905508))

(assert (= (and b!905508 res!611163) b!905510))

(assert (= (and b!905510 res!611168) b!905514))

(assert (= (and b!905514 res!611172) b!905506))

(assert (= (and b!905506 (not res!611170)) b!905507))

(assert (= (and b!905507 (not res!611169)) b!905509))

(assert (= (and b!905509 (not res!611165)) b!905512))

(assert (= (and b!905516 condMapEmpty!29716) mapIsEmpty!29716))

(assert (= (and b!905516 (not condMapEmpty!29716)) mapNonEmpty!29716))

(get-info :version)

(assert (= (and mapNonEmpty!29716 ((_ is ValueCellFull!8853) mapValue!29716)) b!905513))

(assert (= (and b!905516 ((_ is ValueCellFull!8853) mapDefault!29716)) b!905518))

(assert (= start!77694 b!905516))

(declare-fun b_lambda!13155 () Bool)

(assert (=> (not b_lambda!13155) (not b!905506)))

(declare-fun t!25526 () Bool)

(declare-fun tb!5281 () Bool)

(assert (=> (and start!77694 (= defaultEntry!1160 defaultEntry!1160) t!25526) tb!5281))

(declare-fun result!10349 () Bool)

(assert (=> tb!5281 (= result!10349 tp_is_empty!18669)))

(assert (=> b!905506 t!25526))

(declare-fun b_and!26675 () Bool)

(assert (= b_and!26673 (and (=> t!25526 result!10349) b_and!26675)))

(declare-fun m!841011 () Bool)

(assert (=> mapNonEmpty!29716 m!841011))

(declare-fun m!841013 () Bool)

(assert (=> b!905511 m!841013))

(declare-fun m!841015 () Bool)

(assert (=> b!905506 m!841015))

(declare-fun m!841017 () Bool)

(assert (=> b!905506 m!841017))

(declare-fun m!841019 () Bool)

(assert (=> b!905506 m!841019))

(declare-fun m!841021 () Bool)

(assert (=> b!905506 m!841021))

(assert (=> b!905506 m!841015))

(assert (=> b!905506 m!841019))

(declare-fun m!841023 () Bool)

(assert (=> b!905506 m!841023))

(declare-fun m!841025 () Bool)

(assert (=> b!905512 m!841025))

(declare-fun m!841027 () Bool)

(assert (=> b!905512 m!841027))

(declare-fun m!841029 () Bool)

(assert (=> b!905510 m!841029))

(declare-fun m!841031 () Bool)

(assert (=> b!905509 m!841031))

(declare-fun m!841033 () Bool)

(assert (=> b!905508 m!841033))

(declare-fun m!841035 () Bool)

(assert (=> b!905508 m!841035))

(declare-fun m!841037 () Bool)

(assert (=> b!905507 m!841037))

(declare-fun m!841039 () Bool)

(assert (=> b!905507 m!841039))

(declare-fun m!841041 () Bool)

(assert (=> b!905514 m!841041))

(declare-fun m!841043 () Bool)

(assert (=> start!77694 m!841043))

(declare-fun m!841045 () Bool)

(assert (=> start!77694 m!841045))

(declare-fun m!841047 () Bool)

(assert (=> start!77694 m!841047))

(declare-fun m!841049 () Bool)

(assert (=> b!905515 m!841049))

(check-sat (not b!905512) (not b_next!16251) b_and!26675 (not start!77694) (not b!905510) (not b!905509) (not b!905511) (not mapNonEmpty!29716) tp_is_empty!18669 (not b!905508) (not b!905507) (not b!905506) (not b!905515) (not b_lambda!13155))
(check-sat b_and!26675 (not b_next!16251))
