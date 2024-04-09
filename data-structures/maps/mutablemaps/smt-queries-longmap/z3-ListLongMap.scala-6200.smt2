; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79338 () Bool)

(assert start!79338)

(declare-fun b_free!17523 () Bool)

(declare-fun b_next!17523 () Bool)

(assert (=> start!79338 (= b_free!17523 (not b_next!17523))))

(declare-fun tp!61011 () Bool)

(declare-fun b_and!28615 () Bool)

(assert (=> start!79338 (= tp!61011 b_and!28615)))

(declare-fun b!931387 () Bool)

(declare-fun e!523093 () Bool)

(declare-fun e!523094 () Bool)

(declare-fun mapRes!31803 () Bool)

(assert (=> b!931387 (= e!523093 (and e!523094 mapRes!31803))))

(declare-fun condMapEmpty!31803 () Bool)

(declare-datatypes ((V!31673 0))(
  ( (V!31674 (val!10066 Int)) )
))
(declare-datatypes ((ValueCell!9534 0))(
  ( (ValueCellFull!9534 (v!12584 V!31673)) (EmptyCell!9534) )
))
(declare-datatypes ((array!56030 0))(
  ( (array!56031 (arr!26956 (Array (_ BitVec 32) ValueCell!9534)) (size!27416 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56030)

(declare-fun mapDefault!31803 () ValueCell!9534)

(assert (=> b!931387 (= condMapEmpty!31803 (= (arr!26956 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9534)) mapDefault!31803)))))

(declare-fun b!931388 () Bool)

(declare-fun e!523095 () Bool)

(declare-fun tp_is_empty!20031 () Bool)

(assert (=> b!931388 (= e!523095 tp_is_empty!20031)))

(declare-fun b!931389 () Bool)

(declare-fun e!523096 () Bool)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!931389 (= e!523096 (not (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27416 _values!1231))))))

(declare-datatypes ((array!56032 0))(
  ( (array!56033 (arr!26957 (Array (_ BitVec 32) (_ BitVec 64))) (size!27417 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56032)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!419399 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!31673)

(declare-fun minValue!1173 () V!31673)

(declare-datatypes ((tuple2!13288 0))(
  ( (tuple2!13289 (_1!6654 (_ BitVec 64)) (_2!6654 V!31673)) )
))
(declare-datatypes ((List!19104 0))(
  ( (Nil!19101) (Cons!19100 (h!20246 tuple2!13288) (t!27179 List!19104)) )
))
(declare-datatypes ((ListLongMap!11999 0))(
  ( (ListLongMap!12000 (toList!6015 List!19104)) )
))
(declare-fun getCurrentListMap!3212 (array!56032 array!56030 (_ BitVec 32) (_ BitVec 32) V!31673 V!31673 (_ BitVec 32) Int) ListLongMap!11999)

(declare-fun +!2726 (ListLongMap!11999 tuple2!13288) ListLongMap!11999)

(declare-fun get!14179 (ValueCell!9534 V!31673) V!31673)

(declare-fun dynLambda!1565 (Int (_ BitVec 64)) V!31673)

(assert (=> b!931389 (= (getCurrentListMap!3212 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2726 (getCurrentListMap!3212 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!13289 lt!419399 (get!14179 (select (arr!26956 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1565 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!31435 0))(
  ( (Unit!31436) )
))
(declare-fun lt!419398 () Unit!31435)

(declare-fun lemmaListMapRecursiveValidKeyArray!161 (array!56032 array!56030 (_ BitVec 32) (_ BitVec 32) V!31673 V!31673 (_ BitVec 32) Int) Unit!31435)

(assert (=> b!931389 (= lt!419398 (lemmaListMapRecursiveValidKeyArray!161 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!627388 () Bool)

(declare-fun e!523092 () Bool)

(assert (=> start!79338 (=> (not res!627388) (not e!523092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79338 (= res!627388 (validMask!0 mask!1881))))

(assert (=> start!79338 e!523092))

(assert (=> start!79338 true))

(assert (=> start!79338 tp_is_empty!20031))

(declare-fun array_inv!20954 (array!56030) Bool)

(assert (=> start!79338 (and (array_inv!20954 _values!1231) e!523093)))

(assert (=> start!79338 tp!61011))

(declare-fun array_inv!20955 (array!56032) Bool)

(assert (=> start!79338 (array_inv!20955 _keys!1487)))

(declare-fun b!931390 () Bool)

(declare-fun res!627390 () Bool)

(assert (=> b!931390 (=> (not res!627390) (not e!523092))))

(assert (=> b!931390 (= res!627390 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27417 _keys!1487))))))

(declare-fun b!931391 () Bool)

(declare-fun e!523097 () Bool)

(assert (=> b!931391 (= e!523097 e!523096)))

(declare-fun res!627387 () Bool)

(assert (=> b!931391 (=> (not res!627387) (not e!523096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931391 (= res!627387 (validKeyInArray!0 lt!419399))))

(assert (=> b!931391 (= lt!419399 (select (arr!26957 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!931392 () Bool)

(declare-fun res!627384 () Bool)

(assert (=> b!931392 (=> (not res!627384) (not e!523097))))

(assert (=> b!931392 (= res!627384 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!931393 () Bool)

(declare-fun res!627389 () Bool)

(assert (=> b!931393 (=> (not res!627389) (not e!523092))))

(assert (=> b!931393 (= res!627389 (and (= (size!27416 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27417 _keys!1487) (size!27416 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!931394 () Bool)

(declare-fun res!627383 () Bool)

(assert (=> b!931394 (=> (not res!627383) (not e!523097))))

(declare-fun lt!419400 () ListLongMap!11999)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31673)

(declare-fun apply!801 (ListLongMap!11999 (_ BitVec 64)) V!31673)

(assert (=> b!931394 (= res!627383 (= (apply!801 lt!419400 k0!1099) v!791))))

(declare-fun b!931395 () Bool)

(declare-fun res!627392 () Bool)

(assert (=> b!931395 (=> (not res!627392) (not e!523092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56032 (_ BitVec 32)) Bool)

(assert (=> b!931395 (= res!627392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931396 () Bool)

(assert (=> b!931396 (= e!523092 e!523097)))

(declare-fun res!627391 () Bool)

(assert (=> b!931396 (=> (not res!627391) (not e!523097))))

(declare-fun contains!5017 (ListLongMap!11999 (_ BitVec 64)) Bool)

(assert (=> b!931396 (= res!627391 (contains!5017 lt!419400 k0!1099))))

(assert (=> b!931396 (= lt!419400 (getCurrentListMap!3212 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31803 () Bool)

(assert (=> mapIsEmpty!31803 mapRes!31803))

(declare-fun b!931397 () Bool)

(declare-fun res!627385 () Bool)

(assert (=> b!931397 (=> (not res!627385) (not e!523097))))

(assert (=> b!931397 (= res!627385 (validKeyInArray!0 k0!1099))))

(declare-fun mapNonEmpty!31803 () Bool)

(declare-fun tp!61010 () Bool)

(assert (=> mapNonEmpty!31803 (= mapRes!31803 (and tp!61010 e!523095))))

(declare-fun mapRest!31803 () (Array (_ BitVec 32) ValueCell!9534))

(declare-fun mapValue!31803 () ValueCell!9534)

(declare-fun mapKey!31803 () (_ BitVec 32))

(assert (=> mapNonEmpty!31803 (= (arr!26956 _values!1231) (store mapRest!31803 mapKey!31803 mapValue!31803))))

(declare-fun b!931398 () Bool)

(assert (=> b!931398 (= e!523094 tp_is_empty!20031)))

(declare-fun b!931399 () Bool)

(declare-fun res!627386 () Bool)

(assert (=> b!931399 (=> (not res!627386) (not e!523092))))

(declare-datatypes ((List!19105 0))(
  ( (Nil!19102) (Cons!19101 (h!20247 (_ BitVec 64)) (t!27180 List!19105)) )
))
(declare-fun arrayNoDuplicates!0 (array!56032 (_ BitVec 32) List!19105) Bool)

(assert (=> b!931399 (= res!627386 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19102))))

(assert (= (and start!79338 res!627388) b!931393))

(assert (= (and b!931393 res!627389) b!931395))

(assert (= (and b!931395 res!627392) b!931399))

(assert (= (and b!931399 res!627386) b!931390))

(assert (= (and b!931390 res!627390) b!931396))

(assert (= (and b!931396 res!627391) b!931394))

(assert (= (and b!931394 res!627383) b!931392))

(assert (= (and b!931392 res!627384) b!931397))

(assert (= (and b!931397 res!627385) b!931391))

(assert (= (and b!931391 res!627387) b!931389))

(assert (= (and b!931387 condMapEmpty!31803) mapIsEmpty!31803))

(assert (= (and b!931387 (not condMapEmpty!31803)) mapNonEmpty!31803))

(get-info :version)

(assert (= (and mapNonEmpty!31803 ((_ is ValueCellFull!9534) mapValue!31803)) b!931388))

(assert (= (and b!931387 ((_ is ValueCellFull!9534) mapDefault!31803)) b!931398))

(assert (= start!79338 b!931387))

(declare-fun b_lambda!13869 () Bool)

(assert (=> (not b_lambda!13869) (not b!931389)))

(declare-fun t!27178 () Bool)

(declare-fun tb!5925 () Bool)

(assert (=> (and start!79338 (= defaultEntry!1235 defaultEntry!1235) t!27178) tb!5925))

(declare-fun result!11665 () Bool)

(assert (=> tb!5925 (= result!11665 tp_is_empty!20031)))

(assert (=> b!931389 t!27178))

(declare-fun b_and!28617 () Bool)

(assert (= b_and!28615 (and (=> t!27178 result!11665) b_and!28617)))

(declare-fun m!865371 () Bool)

(assert (=> start!79338 m!865371))

(declare-fun m!865373 () Bool)

(assert (=> start!79338 m!865373))

(declare-fun m!865375 () Bool)

(assert (=> start!79338 m!865375))

(declare-fun m!865377 () Bool)

(assert (=> b!931399 m!865377))

(declare-fun m!865379 () Bool)

(assert (=> b!931389 m!865379))

(declare-fun m!865381 () Bool)

(assert (=> b!931389 m!865381))

(declare-fun m!865383 () Bool)

(assert (=> b!931389 m!865383))

(declare-fun m!865385 () Bool)

(assert (=> b!931389 m!865385))

(assert (=> b!931389 m!865379))

(assert (=> b!931389 m!865381))

(declare-fun m!865387 () Bool)

(assert (=> b!931389 m!865387))

(declare-fun m!865389 () Bool)

(assert (=> b!931389 m!865389))

(assert (=> b!931389 m!865383))

(declare-fun m!865391 () Bool)

(assert (=> b!931389 m!865391))

(declare-fun m!865393 () Bool)

(assert (=> b!931394 m!865393))

(declare-fun m!865395 () Bool)

(assert (=> b!931395 m!865395))

(declare-fun m!865397 () Bool)

(assert (=> b!931397 m!865397))

(declare-fun m!865399 () Bool)

(assert (=> mapNonEmpty!31803 m!865399))

(declare-fun m!865401 () Bool)

(assert (=> b!931391 m!865401))

(declare-fun m!865403 () Bool)

(assert (=> b!931391 m!865403))

(declare-fun m!865405 () Bool)

(assert (=> b!931396 m!865405))

(declare-fun m!865407 () Bool)

(assert (=> b!931396 m!865407))

(check-sat (not b!931396) tp_is_empty!20031 (not start!79338) (not b!931399) (not b!931389) (not b!931395) (not b_lambda!13869) (not b!931394) b_and!28617 (not b!931391) (not mapNonEmpty!31803) (not b_next!17523) (not b!931397))
(check-sat b_and!28617 (not b_next!17523))
