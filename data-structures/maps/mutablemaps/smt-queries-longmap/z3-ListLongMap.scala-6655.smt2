; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83932 () Bool)

(assert start!83932)

(declare-fun b_free!19713 () Bool)

(declare-fun b_next!19713 () Bool)

(assert (=> start!83932 (= b_free!19713 (not b_next!19713))))

(declare-fun tp!68582 () Bool)

(declare-fun b_and!31533 () Bool)

(assert (=> start!83932 (= tp!68582 b_and!31533)))

(declare-fun mapNonEmpty!36089 () Bool)

(declare-fun mapRes!36089 () Bool)

(declare-fun tp!68581 () Bool)

(declare-fun e!552616 () Bool)

(assert (=> mapNonEmpty!36089 (= mapRes!36089 (and tp!68581 e!552616))))

(declare-datatypes ((V!35259 0))(
  ( (V!35260 (val!11404 Int)) )
))
(declare-datatypes ((ValueCell!10872 0))(
  ( (ValueCellFull!10872 (v!13966 V!35259)) (EmptyCell!10872) )
))
(declare-fun mapValue!36089 () ValueCell!10872)

(declare-datatypes ((array!61421 0))(
  ( (array!61422 (arr!29564 (Array (_ BitVec 32) ValueCell!10872)) (size!30044 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61421)

(declare-fun mapKey!36089 () (_ BitVec 32))

(declare-fun mapRest!36089 () (Array (_ BitVec 32) ValueCell!10872))

(assert (=> mapNonEmpty!36089 (= (arr!29564 _values!1278) (store mapRest!36089 mapKey!36089 mapValue!36089))))

(declare-fun mapIsEmpty!36089 () Bool)

(assert (=> mapIsEmpty!36089 mapRes!36089))

(declare-fun b!980371 () Bool)

(declare-fun res!656225 () Bool)

(declare-fun e!552617 () Bool)

(assert (=> b!980371 (=> (not res!656225) (not e!552617))))

(declare-datatypes ((array!61423 0))(
  ( (array!61424 (arr!29565 (Array (_ BitVec 32) (_ BitVec 64))) (size!30045 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61423)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61423 (_ BitVec 32)) Bool)

(assert (=> b!980371 (= res!656225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980372 () Bool)

(declare-fun res!656222 () Bool)

(assert (=> b!980372 (=> (not res!656222) (not e!552617))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980372 (= res!656222 (and (= (size!30044 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30045 _keys!1544) (size!30044 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980373 () Bool)

(declare-fun e!552620 () Bool)

(declare-fun e!552618 () Bool)

(assert (=> b!980373 (= e!552620 (and e!552618 mapRes!36089))))

(declare-fun condMapEmpty!36089 () Bool)

(declare-fun mapDefault!36089 () ValueCell!10872)

(assert (=> b!980373 (= condMapEmpty!36089 (= (arr!29564 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10872)) mapDefault!36089)))))

(declare-fun b!980374 () Bool)

(declare-fun tp_is_empty!22707 () Bool)

(assert (=> b!980374 (= e!552618 tp_is_empty!22707)))

(declare-fun b!980375 () Bool)

(declare-fun res!656226 () Bool)

(assert (=> b!980375 (=> (not res!656226) (not e!552617))))

(declare-datatypes ((List!20628 0))(
  ( (Nil!20625) (Cons!20624 (h!21786 (_ BitVec 64)) (t!29305 List!20628)) )
))
(declare-fun arrayNoDuplicates!0 (array!61423 (_ BitVec 32) List!20628) Bool)

(assert (=> b!980375 (= res!656226 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20625))))

(declare-fun b!980376 () Bool)

(declare-fun res!656224 () Bool)

(assert (=> b!980376 (=> (not res!656224) (not e!552617))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!980376 (= res!656224 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30045 _keys!1544))))))

(declare-fun b!980377 () Bool)

(declare-fun e!552615 () Bool)

(assert (=> b!980377 (= e!552615 true)))

(declare-datatypes ((tuple2!14738 0))(
  ( (tuple2!14739 (_1!7379 (_ BitVec 64)) (_2!7379 V!35259)) )
))
(declare-fun lt!435329 () tuple2!14738)

(declare-datatypes ((List!20629 0))(
  ( (Nil!20626) (Cons!20625 (h!21787 tuple2!14738) (t!29306 List!20629)) )
))
(declare-datatypes ((ListLongMap!13449 0))(
  ( (ListLongMap!13450 (toList!6740 List!20629)) )
))
(declare-fun lt!435325 () ListLongMap!13449)

(declare-fun lt!435334 () ListLongMap!13449)

(declare-fun lt!435328 () tuple2!14738)

(declare-fun +!2946 (ListLongMap!13449 tuple2!14738) ListLongMap!13449)

(assert (=> b!980377 (= lt!435325 (+!2946 (+!2946 lt!435334 lt!435329) lt!435328))))

(declare-datatypes ((Unit!32567 0))(
  ( (Unit!32568) )
))
(declare-fun lt!435331 () Unit!32567)

(declare-fun zeroValue!1220 () V!35259)

(declare-fun lt!435327 () V!35259)

(declare-fun addCommutativeForDiffKeys!608 (ListLongMap!13449 (_ BitVec 64) V!35259 (_ BitVec 64) V!35259) Unit!32567)

(assert (=> b!980377 (= lt!435331 (addCommutativeForDiffKeys!608 lt!435334 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29565 _keys!1544) from!1932) lt!435327))))

(declare-fun b!980378 () Bool)

(assert (=> b!980378 (= e!552617 (not e!552615))))

(declare-fun res!656221 () Bool)

(assert (=> b!980378 (=> res!656221 e!552615)))

(assert (=> b!980378 (= res!656221 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29565 _keys!1544) from!1932)))))

(declare-fun lt!435332 () ListLongMap!13449)

(declare-fun lt!435333 () tuple2!14738)

(assert (=> b!980378 (= (+!2946 lt!435332 lt!435329) (+!2946 lt!435325 lt!435333))))

(declare-fun lt!435326 () ListLongMap!13449)

(assert (=> b!980378 (= lt!435325 (+!2946 lt!435326 lt!435329))))

(assert (=> b!980378 (= lt!435329 (tuple2!14739 (select (arr!29565 _keys!1544) from!1932) lt!435327))))

(assert (=> b!980378 (= lt!435332 (+!2946 lt!435326 lt!435333))))

(declare-fun minValue!1220 () V!35259)

(assert (=> b!980378 (= lt!435333 (tuple2!14739 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!435330 () Unit!32567)

(assert (=> b!980378 (= lt!435330 (addCommutativeForDiffKeys!608 lt!435326 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29565 _keys!1544) from!1932) lt!435327))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15348 (ValueCell!10872 V!35259) V!35259)

(declare-fun dynLambda!1779 (Int (_ BitVec 64)) V!35259)

(assert (=> b!980378 (= lt!435327 (get!15348 (select (arr!29564 _values!1278) from!1932) (dynLambda!1779 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!980378 (= lt!435326 (+!2946 lt!435334 lt!435328))))

(assert (=> b!980378 (= lt!435328 (tuple2!14739 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3404 (array!61423 array!61421 (_ BitVec 32) (_ BitVec 32) V!35259 V!35259 (_ BitVec 32) Int) ListLongMap!13449)

(assert (=> b!980378 (= lt!435334 (getCurrentListMapNoExtraKeys!3404 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun res!656219 () Bool)

(assert (=> start!83932 (=> (not res!656219) (not e!552617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83932 (= res!656219 (validMask!0 mask!1948))))

(assert (=> start!83932 e!552617))

(assert (=> start!83932 true))

(assert (=> start!83932 tp_is_empty!22707))

(declare-fun array_inv!22745 (array!61421) Bool)

(assert (=> start!83932 (and (array_inv!22745 _values!1278) e!552620)))

(assert (=> start!83932 tp!68582))

(declare-fun array_inv!22746 (array!61423) Bool)

(assert (=> start!83932 (array_inv!22746 _keys!1544)))

(declare-fun b!980379 () Bool)

(declare-fun res!656220 () Bool)

(assert (=> b!980379 (=> (not res!656220) (not e!552617))))

(assert (=> b!980379 (= res!656220 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!980380 () Bool)

(assert (=> b!980380 (= e!552616 tp_is_empty!22707)))

(declare-fun b!980381 () Bool)

(declare-fun res!656223 () Bool)

(assert (=> b!980381 (=> (not res!656223) (not e!552617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!980381 (= res!656223 (validKeyInArray!0 (select (arr!29565 _keys!1544) from!1932)))))

(assert (= (and start!83932 res!656219) b!980372))

(assert (= (and b!980372 res!656222) b!980371))

(assert (= (and b!980371 res!656225) b!980375))

(assert (= (and b!980375 res!656226) b!980376))

(assert (= (and b!980376 res!656224) b!980381))

(assert (= (and b!980381 res!656223) b!980379))

(assert (= (and b!980379 res!656220) b!980378))

(assert (= (and b!980378 (not res!656221)) b!980377))

(assert (= (and b!980373 condMapEmpty!36089) mapIsEmpty!36089))

(assert (= (and b!980373 (not condMapEmpty!36089)) mapNonEmpty!36089))

(get-info :version)

(assert (= (and mapNonEmpty!36089 ((_ is ValueCellFull!10872) mapValue!36089)) b!980380))

(assert (= (and b!980373 ((_ is ValueCellFull!10872) mapDefault!36089)) b!980374))

(assert (= start!83932 b!980373))

(declare-fun b_lambda!14787 () Bool)

(assert (=> (not b_lambda!14787) (not b!980378)))

(declare-fun t!29304 () Bool)

(declare-fun tb!6527 () Bool)

(assert (=> (and start!83932 (= defaultEntry!1281 defaultEntry!1281) t!29304) tb!6527))

(declare-fun result!13035 () Bool)

(assert (=> tb!6527 (= result!13035 tp_is_empty!22707)))

(assert (=> b!980378 t!29304))

(declare-fun b_and!31535 () Bool)

(assert (= b_and!31533 (and (=> t!29304 result!13035) b_and!31535)))

(declare-fun m!908003 () Bool)

(assert (=> b!980377 m!908003))

(assert (=> b!980377 m!908003))

(declare-fun m!908005 () Bool)

(assert (=> b!980377 m!908005))

(declare-fun m!908007 () Bool)

(assert (=> b!980377 m!908007))

(assert (=> b!980377 m!908007))

(declare-fun m!908009 () Bool)

(assert (=> b!980377 m!908009))

(declare-fun m!908011 () Bool)

(assert (=> b!980371 m!908011))

(declare-fun m!908013 () Bool)

(assert (=> b!980375 m!908013))

(assert (=> b!980381 m!908007))

(assert (=> b!980381 m!908007))

(declare-fun m!908015 () Bool)

(assert (=> b!980381 m!908015))

(declare-fun m!908017 () Bool)

(assert (=> mapNonEmpty!36089 m!908017))

(assert (=> b!980378 m!908007))

(declare-fun m!908019 () Bool)

(assert (=> b!980378 m!908019))

(declare-fun m!908021 () Bool)

(assert (=> b!980378 m!908021))

(assert (=> b!980378 m!908007))

(declare-fun m!908023 () Bool)

(assert (=> b!980378 m!908023))

(declare-fun m!908025 () Bool)

(assert (=> b!980378 m!908025))

(declare-fun m!908027 () Bool)

(assert (=> b!980378 m!908027))

(declare-fun m!908029 () Bool)

(assert (=> b!980378 m!908029))

(declare-fun m!908031 () Bool)

(assert (=> b!980378 m!908031))

(declare-fun m!908033 () Bool)

(assert (=> b!980378 m!908033))

(declare-fun m!908035 () Bool)

(assert (=> b!980378 m!908035))

(assert (=> b!980378 m!908031))

(assert (=> b!980378 m!908035))

(declare-fun m!908037 () Bool)

(assert (=> b!980378 m!908037))

(declare-fun m!908039 () Bool)

(assert (=> start!83932 m!908039))

(declare-fun m!908041 () Bool)

(assert (=> start!83932 m!908041))

(declare-fun m!908043 () Bool)

(assert (=> start!83932 m!908043))

(check-sat (not b!980375) b_and!31535 (not start!83932) (not b_lambda!14787) (not b!980371) tp_is_empty!22707 (not b!980377) (not b!980378) (not b!980381) (not b_next!19713) (not mapNonEmpty!36089))
(check-sat b_and!31535 (not b_next!19713))
