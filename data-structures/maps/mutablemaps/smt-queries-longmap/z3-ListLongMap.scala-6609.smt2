; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83568 () Bool)

(assert start!83568)

(declare-fun b_free!19527 () Bool)

(declare-fun b_next!19527 () Bool)

(assert (=> start!83568 (= b_free!19527 (not b_next!19527))))

(declare-fun tp!67869 () Bool)

(declare-fun b_and!31167 () Bool)

(assert (=> start!83568 (= tp!67869 b_and!31167)))

(declare-fun b!975968 () Bool)

(declare-fun res!653469 () Bool)

(declare-fun e!550047 () Bool)

(assert (=> b!975968 (=> (not res!653469) (not e!550047))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34891 0))(
  ( (V!34892 (val!11266 Int)) )
))
(declare-datatypes ((ValueCell!10734 0))(
  ( (ValueCellFull!10734 (v!13825 V!34891)) (EmptyCell!10734) )
))
(declare-datatypes ((array!60877 0))(
  ( (array!60878 (arr!29298 (Array (_ BitVec 32) ValueCell!10734)) (size!29778 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60877)

(declare-fun zeroValue!1367 () V!34891)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34891)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60879 0))(
  ( (array!60880 (arr!29299 (Array (_ BitVec 32) (_ BitVec 64))) (size!29779 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60879)

(declare-datatypes ((tuple2!14594 0))(
  ( (tuple2!14595 (_1!7307 (_ BitVec 64)) (_2!7307 V!34891)) )
))
(declare-datatypes ((List!20466 0))(
  ( (Nil!20463) (Cons!20462 (h!21624 tuple2!14594) (t!28973 List!20466)) )
))
(declare-datatypes ((ListLongMap!13305 0))(
  ( (ListLongMap!13306 (toList!6668 List!20466)) )
))
(declare-fun contains!5699 (ListLongMap!13305 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3853 (array!60879 array!60877 (_ BitVec 32) (_ BitVec 32) V!34891 V!34891 (_ BitVec 32) Int) ListLongMap!13305)

(assert (=> b!975968 (= res!653469 (contains!5699 (getCurrentListMap!3853 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29299 _keys!1717) i!822)))))

(declare-fun b!975969 () Bool)

(declare-fun res!653467 () Bool)

(assert (=> b!975969 (=> (not res!653467) (not e!550047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60879 (_ BitVec 32)) Bool)

(assert (=> b!975969 (= res!653467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!653471 () Bool)

(assert (=> start!83568 (=> (not res!653471) (not e!550047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83568 (= res!653471 (validMask!0 mask!2147))))

(assert (=> start!83568 e!550047))

(assert (=> start!83568 true))

(declare-fun e!550049 () Bool)

(declare-fun array_inv!22555 (array!60877) Bool)

(assert (=> start!83568 (and (array_inv!22555 _values!1425) e!550049)))

(declare-fun tp_is_empty!22431 () Bool)

(assert (=> start!83568 tp_is_empty!22431))

(assert (=> start!83568 tp!67869))

(declare-fun array_inv!22556 (array!60879) Bool)

(assert (=> start!83568 (array_inv!22556 _keys!1717)))

(declare-fun mapNonEmpty!35656 () Bool)

(declare-fun mapRes!35656 () Bool)

(declare-fun tp!67870 () Bool)

(declare-fun e!550045 () Bool)

(assert (=> mapNonEmpty!35656 (= mapRes!35656 (and tp!67870 e!550045))))

(declare-fun mapKey!35656 () (_ BitVec 32))

(declare-fun mapRest!35656 () (Array (_ BitVec 32) ValueCell!10734))

(declare-fun mapValue!35656 () ValueCell!10734)

(assert (=> mapNonEmpty!35656 (= (arr!29298 _values!1425) (store mapRest!35656 mapKey!35656 mapValue!35656))))

(declare-fun mapIsEmpty!35656 () Bool)

(assert (=> mapIsEmpty!35656 mapRes!35656))

(declare-fun b!975970 () Bool)

(declare-fun res!653473 () Bool)

(assert (=> b!975970 (=> (not res!653473) (not e!550047))))

(assert (=> b!975970 (= res!653473 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29779 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29779 _keys!1717))))))

(declare-fun b!975971 () Bool)

(declare-fun e!550046 () Bool)

(assert (=> b!975971 (= e!550047 e!550046)))

(declare-fun res!653470 () Bool)

(assert (=> b!975971 (=> (not res!653470) (not e!550046))))

(declare-fun lt!432937 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975971 (= res!653470 (validKeyInArray!0 lt!432937))))

(assert (=> b!975971 (= lt!432937 (select (arr!29299 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!432936 () ListLongMap!13305)

(assert (=> b!975971 (= lt!432936 (getCurrentListMap!3853 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975972 () Bool)

(declare-fun res!653466 () Bool)

(assert (=> b!975972 (=> (not res!653466) (not e!550047))))

(assert (=> b!975972 (= res!653466 (and (= (size!29778 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29779 _keys!1717) (size!29778 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975973 () Bool)

(assert (=> b!975973 (= e!550045 tp_is_empty!22431)))

(declare-fun b!975974 () Bool)

(declare-fun res!653472 () Bool)

(assert (=> b!975974 (=> (not res!653472) (not e!550047))))

(assert (=> b!975974 (= res!653472 (validKeyInArray!0 (select (arr!29299 _keys!1717) i!822)))))

(declare-fun b!975975 () Bool)

(assert (=> b!975975 (= e!550046 (not true))))

(declare-fun +!2879 (ListLongMap!13305 tuple2!14594) ListLongMap!13305)

(declare-fun get!15192 (ValueCell!10734 V!34891) V!34891)

(declare-fun dynLambda!1718 (Int (_ BitVec 64)) V!34891)

(assert (=> b!975975 (= lt!432936 (+!2879 (getCurrentListMap!3853 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14595 lt!432937 (get!15192 (select (arr!29298 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1718 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32419 0))(
  ( (Unit!32420) )
))
(declare-fun lt!432935 () Unit!32419)

(declare-fun lemmaListMapRecursiveValidKeyArray!290 (array!60879 array!60877 (_ BitVec 32) (_ BitVec 32) V!34891 V!34891 (_ BitVec 32) Int) Unit!32419)

(assert (=> b!975975 (= lt!432935 (lemmaListMapRecursiveValidKeyArray!290 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975976 () Bool)

(declare-fun e!550050 () Bool)

(assert (=> b!975976 (= e!550050 tp_is_empty!22431)))

(declare-fun b!975977 () Bool)

(declare-fun res!653468 () Bool)

(assert (=> b!975977 (=> (not res!653468) (not e!550047))))

(declare-datatypes ((List!20467 0))(
  ( (Nil!20464) (Cons!20463 (h!21625 (_ BitVec 64)) (t!28974 List!20467)) )
))
(declare-fun arrayNoDuplicates!0 (array!60879 (_ BitVec 32) List!20467) Bool)

(assert (=> b!975977 (= res!653468 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20464))))

(declare-fun b!975978 () Bool)

(assert (=> b!975978 (= e!550049 (and e!550050 mapRes!35656))))

(declare-fun condMapEmpty!35656 () Bool)

(declare-fun mapDefault!35656 () ValueCell!10734)

(assert (=> b!975978 (= condMapEmpty!35656 (= (arr!29298 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10734)) mapDefault!35656)))))

(assert (= (and start!83568 res!653471) b!975972))

(assert (= (and b!975972 res!653466) b!975969))

(assert (= (and b!975969 res!653467) b!975977))

(assert (= (and b!975977 res!653468) b!975970))

(assert (= (and b!975970 res!653473) b!975974))

(assert (= (and b!975974 res!653472) b!975968))

(assert (= (and b!975968 res!653469) b!975971))

(assert (= (and b!975971 res!653470) b!975975))

(assert (= (and b!975978 condMapEmpty!35656) mapIsEmpty!35656))

(assert (= (and b!975978 (not condMapEmpty!35656)) mapNonEmpty!35656))

(get-info :version)

(assert (= (and mapNonEmpty!35656 ((_ is ValueCellFull!10734) mapValue!35656)) b!975973))

(assert (= (and b!975978 ((_ is ValueCellFull!10734) mapDefault!35656)) b!975976))

(assert (= start!83568 b!975978))

(declare-fun b_lambda!14595 () Bool)

(assert (=> (not b_lambda!14595) (not b!975975)))

(declare-fun t!28972 () Bool)

(declare-fun tb!6357 () Bool)

(assert (=> (and start!83568 (= defaultEntry!1428 defaultEntry!1428) t!28972) tb!6357))

(declare-fun result!12683 () Bool)

(assert (=> tb!6357 (= result!12683 tp_is_empty!22431)))

(assert (=> b!975975 t!28972))

(declare-fun b_and!31169 () Bool)

(assert (= b_and!31167 (and (=> t!28972 result!12683) b_and!31169)))

(declare-fun m!903265 () Bool)

(assert (=> b!975971 m!903265))

(declare-fun m!903267 () Bool)

(assert (=> b!975971 m!903267))

(declare-fun m!903269 () Bool)

(assert (=> b!975971 m!903269))

(declare-fun m!903271 () Bool)

(assert (=> b!975974 m!903271))

(assert (=> b!975974 m!903271))

(declare-fun m!903273 () Bool)

(assert (=> b!975974 m!903273))

(declare-fun m!903275 () Bool)

(assert (=> mapNonEmpty!35656 m!903275))

(declare-fun m!903277 () Bool)

(assert (=> b!975969 m!903277))

(declare-fun m!903279 () Bool)

(assert (=> start!83568 m!903279))

(declare-fun m!903281 () Bool)

(assert (=> start!83568 m!903281))

(declare-fun m!903283 () Bool)

(assert (=> start!83568 m!903283))

(declare-fun m!903285 () Bool)

(assert (=> b!975975 m!903285))

(declare-fun m!903287 () Bool)

(assert (=> b!975975 m!903287))

(declare-fun m!903289 () Bool)

(assert (=> b!975975 m!903289))

(assert (=> b!975975 m!903285))

(assert (=> b!975975 m!903289))

(declare-fun m!903291 () Bool)

(assert (=> b!975975 m!903291))

(declare-fun m!903293 () Bool)

(assert (=> b!975975 m!903293))

(assert (=> b!975975 m!903287))

(declare-fun m!903295 () Bool)

(assert (=> b!975975 m!903295))

(declare-fun m!903297 () Bool)

(assert (=> b!975977 m!903297))

(declare-fun m!903299 () Bool)

(assert (=> b!975968 m!903299))

(assert (=> b!975968 m!903271))

(assert (=> b!975968 m!903299))

(assert (=> b!975968 m!903271))

(declare-fun m!903301 () Bool)

(assert (=> b!975968 m!903301))

(check-sat (not b!975977) (not b_lambda!14595) (not b!975975) (not b!975974) (not mapNonEmpty!35656) (not b!975969) (not b!975971) (not b!975968) b_and!31169 (not start!83568) (not b_next!19527) tp_is_empty!22431)
(check-sat b_and!31169 (not b_next!19527))
