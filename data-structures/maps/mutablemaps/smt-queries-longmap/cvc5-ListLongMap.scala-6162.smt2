; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79108 () Bool)

(assert start!79108)

(declare-fun b_free!17293 () Bool)

(declare-fun b_next!17293 () Bool)

(assert (=> start!79108 (= b_free!17293 (not b_next!17293))))

(declare-fun tp!60320 () Bool)

(declare-fun b_and!28341 () Bool)

(assert (=> start!79108 (= tp!60320 b_and!28341)))

(declare-fun b!927349 () Bool)

(declare-datatypes ((Unit!31369 0))(
  ( (Unit!31370) )
))
(declare-fun e!520651 () Unit!31369)

(declare-fun Unit!31371 () Unit!31369)

(assert (=> b!927349 (= e!520651 Unit!31371)))

(declare-fun b!927350 () Bool)

(declare-fun res!624744 () Bool)

(declare-fun e!520645 () Bool)

(assert (=> b!927350 (=> (not res!624744) (not e!520645))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55580 0))(
  ( (array!55581 (arr!26731 (Array (_ BitVec 32) (_ BitVec 64))) (size!27191 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55580)

(assert (=> b!927350 (= res!624744 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27191 _keys!1487))))))

(declare-fun b!927351 () Bool)

(declare-fun res!624742 () Bool)

(assert (=> b!927351 (=> (not res!624742) (not e!520645))))

(declare-datatypes ((List!18924 0))(
  ( (Nil!18921) (Cons!18920 (h!20066 (_ BitVec 64)) (t!26955 List!18924)) )
))
(declare-fun arrayNoDuplicates!0 (array!55580 (_ BitVec 32) List!18924) Bool)

(assert (=> b!927351 (= res!624742 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18921))))

(declare-fun b!927352 () Bool)

(declare-fun e!520654 () Bool)

(assert (=> b!927352 (= e!520654 (not true))))

(declare-fun e!520656 () Bool)

(assert (=> b!927352 e!520656))

(declare-fun res!624741 () Bool)

(assert (=> b!927352 (=> (not res!624741) (not e!520656))))

(declare-datatypes ((V!31367 0))(
  ( (V!31368 (val!9951 Int)) )
))
(declare-datatypes ((tuple2!13098 0))(
  ( (tuple2!13099 (_1!6559 (_ BitVec 64)) (_2!6559 V!31367)) )
))
(declare-datatypes ((List!18925 0))(
  ( (Nil!18922) (Cons!18921 (h!20067 tuple2!13098) (t!26956 List!18925)) )
))
(declare-datatypes ((ListLongMap!11809 0))(
  ( (ListLongMap!11810 (toList!5920 List!18925)) )
))
(declare-fun lt!418015 () ListLongMap!11809)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4939 (ListLongMap!11809 (_ BitVec 64)) Bool)

(assert (=> b!927352 (= res!624741 (contains!4939 lt!418015 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9419 0))(
  ( (ValueCellFull!9419 (v!12469 V!31367)) (EmptyCell!9419) )
))
(declare-datatypes ((array!55582 0))(
  ( (array!55583 (arr!26732 (Array (_ BitVec 32) ValueCell!9419)) (size!27192 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55582)

(declare-fun defaultEntry!1235 () Int)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31367)

(declare-fun minValue!1173 () V!31367)

(declare-fun getCurrentListMap!3133 (array!55580 array!55582 (_ BitVec 32) (_ BitVec 32) V!31367 V!31367 (_ BitVec 32) Int) ListLongMap!11809)

(assert (=> b!927352 (= lt!418015 (getCurrentListMap!3133 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31367)

(declare-fun lt!418010 () Unit!31369)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!97 (array!55580 array!55582 (_ BitVec 32) (_ BitVec 32) V!31367 V!31367 (_ BitVec 64) V!31367 (_ BitVec 32) Int) Unit!31369)

(assert (=> b!927352 (= lt!418010 (lemmaListMapApplyFromThenApplyFromZero!97 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927353 () Bool)

(declare-fun e!520650 () Bool)

(declare-fun tp_is_empty!19801 () Bool)

(assert (=> b!927353 (= e!520650 tp_is_empty!19801)))

(declare-fun b!927354 () Bool)

(declare-fun lt!418002 () ListLongMap!11809)

(declare-fun lt!418008 () V!31367)

(declare-fun apply!716 (ListLongMap!11809 (_ BitVec 64)) V!31367)

(assert (=> b!927354 (= (apply!716 lt!418002 k!1099) lt!418008)))

(declare-fun lt!418003 () Unit!31369)

(declare-fun lt!418012 () V!31367)

(declare-fun lt!418014 () (_ BitVec 64))

(declare-fun lt!418016 () ListLongMap!11809)

(declare-fun addApplyDifferent!396 (ListLongMap!11809 (_ BitVec 64) V!31367 (_ BitVec 64)) Unit!31369)

(assert (=> b!927354 (= lt!418003 (addApplyDifferent!396 lt!418016 lt!418014 lt!418012 k!1099))))

(assert (=> b!927354 (not (= lt!418014 k!1099))))

(declare-fun lt!418009 () Unit!31369)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55580 (_ BitVec 64) (_ BitVec 32) List!18924) Unit!31369)

(assert (=> b!927354 (= lt!418009 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18921))))

(declare-fun e!520649 () Bool)

(assert (=> b!927354 e!520649))

(declare-fun c!96797 () Bool)

(assert (=> b!927354 (= c!96797 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!418011 () Unit!31369)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!256 (array!55580 array!55582 (_ BitVec 32) (_ BitVec 32) V!31367 V!31367 (_ BitVec 64) (_ BitVec 32) Int) Unit!31369)

(assert (=> b!927354 (= lt!418011 (lemmaListMapContainsThenArrayContainsFrom!256 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!927354 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18921)))

(declare-fun lt!418004 () Unit!31369)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55580 (_ BitVec 32) (_ BitVec 32)) Unit!31369)

(assert (=> b!927354 (= lt!418004 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!927354 (contains!4939 lt!418002 k!1099)))

(declare-fun lt!418006 () tuple2!13098)

(declare-fun +!2710 (ListLongMap!11809 tuple2!13098) ListLongMap!11809)

(assert (=> b!927354 (= lt!418002 (+!2710 lt!418016 lt!418006))))

(declare-fun lt!418007 () Unit!31369)

(declare-fun addStillContains!472 (ListLongMap!11809 (_ BitVec 64) V!31367 (_ BitVec 64)) Unit!31369)

(assert (=> b!927354 (= lt!418007 (addStillContains!472 lt!418016 lt!418014 lt!418012 k!1099))))

(assert (=> b!927354 (= (getCurrentListMap!3133 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2710 (getCurrentListMap!3133 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418006))))

(assert (=> b!927354 (= lt!418006 (tuple2!13099 lt!418014 lt!418012))))

(declare-fun get!14087 (ValueCell!9419 V!31367) V!31367)

(declare-fun dynLambda!1549 (Int (_ BitVec 64)) V!31367)

(assert (=> b!927354 (= lt!418012 (get!14087 (select (arr!26732 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1549 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418013 () Unit!31369)

(declare-fun lemmaListMapRecursiveValidKeyArray!145 (array!55580 array!55582 (_ BitVec 32) (_ BitVec 32) V!31367 V!31367 (_ BitVec 32) Int) Unit!31369)

(assert (=> b!927354 (= lt!418013 (lemmaListMapRecursiveValidKeyArray!145 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!927354 (= e!520651 lt!418003)))

(declare-fun b!927355 () Bool)

(declare-fun e!520648 () Unit!31369)

(assert (=> b!927355 (= e!520648 e!520651)))

(assert (=> b!927355 (= lt!418014 (select (arr!26731 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96796 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927355 (= c!96796 (validKeyInArray!0 lt!418014))))

(declare-fun b!927356 () Bool)

(assert (=> b!927356 (= e!520656 (= (apply!716 lt!418015 k!1099) v!791))))

(declare-fun b!927357 () Bool)

(declare-fun res!624738 () Bool)

(assert (=> b!927357 (=> (not res!624738) (not e!520645))))

(assert (=> b!927357 (= res!624738 (and (= (size!27192 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27191 _keys!1487) (size!27192 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31458 () Bool)

(declare-fun mapRes!31458 () Bool)

(declare-fun tp!60321 () Bool)

(assert (=> mapNonEmpty!31458 (= mapRes!31458 (and tp!60321 e!520650))))

(declare-fun mapKey!31458 () (_ BitVec 32))

(declare-fun mapRest!31458 () (Array (_ BitVec 32) ValueCell!9419))

(declare-fun mapValue!31458 () ValueCell!9419)

(assert (=> mapNonEmpty!31458 (= (arr!26732 _values!1231) (store mapRest!31458 mapKey!31458 mapValue!31458))))

(declare-fun b!927358 () Bool)

(declare-fun res!624740 () Bool)

(assert (=> b!927358 (=> (not res!624740) (not e!520654))))

(declare-fun lt!418005 () ListLongMap!11809)

(assert (=> b!927358 (= res!624740 (= (apply!716 lt!418005 k!1099) v!791))))

(declare-fun b!927359 () Bool)

(declare-fun e!520653 () Bool)

(declare-fun e!520655 () Bool)

(assert (=> b!927359 (= e!520653 (and e!520655 mapRes!31458))))

(declare-fun condMapEmpty!31458 () Bool)

(declare-fun mapDefault!31458 () ValueCell!9419)

