; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79344 () Bool)

(assert start!79344)

(declare-fun b_free!17529 () Bool)

(declare-fun b_next!17529 () Bool)

(assert (=> start!79344 (= b_free!17529 (not b_next!17529))))

(declare-fun tp!61029 () Bool)

(declare-fun b_and!28627 () Bool)

(assert (=> start!79344 (= tp!61029 b_and!28627)))

(declare-fun mapNonEmpty!31812 () Bool)

(declare-fun mapRes!31812 () Bool)

(declare-fun tp!61028 () Bool)

(declare-fun e!523161 () Bool)

(assert (=> mapNonEmpty!31812 (= mapRes!31812 (and tp!61028 e!523161))))

(declare-datatypes ((V!31681 0))(
  ( (V!31682 (val!10069 Int)) )
))
(declare-datatypes ((ValueCell!9537 0))(
  ( (ValueCellFull!9537 (v!12587 V!31681)) (EmptyCell!9537) )
))
(declare-datatypes ((array!56042 0))(
  ( (array!56043 (arr!26962 (Array (_ BitVec 32) ValueCell!9537)) (size!27422 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56042)

(declare-fun mapKey!31812 () (_ BitVec 32))

(declare-fun mapValue!31812 () ValueCell!9537)

(declare-fun mapRest!31812 () (Array (_ BitVec 32) ValueCell!9537))

(assert (=> mapNonEmpty!31812 (= (arr!26962 _values!1231) (store mapRest!31812 mapKey!31812 mapValue!31812))))

(declare-fun b!931510 () Bool)

(declare-fun e!523155 () Bool)

(declare-fun e!523158 () Bool)

(assert (=> b!931510 (= e!523155 (and e!523158 mapRes!31812))))

(declare-fun condMapEmpty!31812 () Bool)

(declare-fun mapDefault!31812 () ValueCell!9537)

(assert (=> b!931510 (= condMapEmpty!31812 (= (arr!26962 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9537)) mapDefault!31812)))))

(declare-fun b!931511 () Bool)

(declare-fun e!523157 () Bool)

(assert (=> b!931511 (= e!523157 (not true))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!419427 () (_ BitVec 64))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((array!56044 0))(
  ( (array!56045 (arr!26963 (Array (_ BitVec 32) (_ BitVec 64))) (size!27423 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56044)

(declare-fun zeroValue!1173 () V!31681)

(declare-fun minValue!1173 () V!31681)

(declare-datatypes ((tuple2!13294 0))(
  ( (tuple2!13295 (_1!6657 (_ BitVec 64)) (_2!6657 V!31681)) )
))
(declare-datatypes ((List!19109 0))(
  ( (Nil!19106) (Cons!19105 (h!20251 tuple2!13294) (t!27190 List!19109)) )
))
(declare-datatypes ((ListLongMap!12005 0))(
  ( (ListLongMap!12006 (toList!6018 List!19109)) )
))
(declare-fun getCurrentListMap!3214 (array!56044 array!56042 (_ BitVec 32) (_ BitVec 32) V!31681 V!31681 (_ BitVec 32) Int) ListLongMap!12005)

(declare-fun +!2728 (ListLongMap!12005 tuple2!13294) ListLongMap!12005)

(declare-fun get!14183 (ValueCell!9537 V!31681) V!31681)

(declare-fun dynLambda!1567 (Int (_ BitVec 64)) V!31681)

(assert (=> b!931511 (= (getCurrentListMap!3214 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2728 (getCurrentListMap!3214 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!13295 lt!419427 (get!14183 (select (arr!26962 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1567 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!31439 0))(
  ( (Unit!31440) )
))
(declare-fun lt!419425 () Unit!31439)

(declare-fun lemmaListMapRecursiveValidKeyArray!163 (array!56044 array!56042 (_ BitVec 32) (_ BitVec 32) V!31681 V!31681 (_ BitVec 32) Int) Unit!31439)

(assert (=> b!931511 (= lt!419425 (lemmaListMapRecursiveValidKeyArray!163 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!31812 () Bool)

(assert (=> mapIsEmpty!31812 mapRes!31812))

(declare-fun b!931512 () Bool)

(declare-fun res!627480 () Bool)

(declare-fun e!523156 () Bool)

(assert (=> b!931512 (=> (not res!627480) (not e!523156))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931512 (= res!627480 (validKeyInArray!0 k0!1099))))

(declare-fun b!931513 () Bool)

(declare-fun res!627481 () Bool)

(declare-fun e!523159 () Bool)

(assert (=> b!931513 (=> (not res!627481) (not e!523159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56044 (_ BitVec 32)) Bool)

(assert (=> b!931513 (= res!627481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931514 () Bool)

(declare-fun res!627479 () Bool)

(assert (=> b!931514 (=> (not res!627479) (not e!523156))))

(assert (=> b!931514 (= res!627479 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!931515 () Bool)

(declare-fun res!627473 () Bool)

(assert (=> b!931515 (=> (not res!627473) (not e!523159))))

(declare-datatypes ((List!19110 0))(
  ( (Nil!19107) (Cons!19106 (h!20252 (_ BitVec 64)) (t!27191 List!19110)) )
))
(declare-fun arrayNoDuplicates!0 (array!56044 (_ BitVec 32) List!19110) Bool)

(assert (=> b!931515 (= res!627473 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19107))))

(declare-fun b!931516 () Bool)

(declare-fun res!627475 () Bool)

(assert (=> b!931516 (=> (not res!627475) (not e!523159))))

(assert (=> b!931516 (= res!627475 (and (= (size!27422 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27423 _keys!1487) (size!27422 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!931517 () Bool)

(declare-fun tp_is_empty!20037 () Bool)

(assert (=> b!931517 (= e!523158 tp_is_empty!20037)))

(declare-fun b!931518 () Bool)

(declare-fun res!627478 () Bool)

(assert (=> b!931518 (=> (not res!627478) (not e!523156))))

(declare-fun v!791 () V!31681)

(declare-fun lt!419426 () ListLongMap!12005)

(declare-fun apply!804 (ListLongMap!12005 (_ BitVec 64)) V!31681)

(assert (=> b!931518 (= res!627478 (= (apply!804 lt!419426 k0!1099) v!791))))

(declare-fun b!931520 () Bool)

(assert (=> b!931520 (= e!523161 tp_is_empty!20037)))

(declare-fun b!931521 () Bool)

(assert (=> b!931521 (= e!523156 e!523157)))

(declare-fun res!627476 () Bool)

(assert (=> b!931521 (=> (not res!627476) (not e!523157))))

(assert (=> b!931521 (= res!627476 (validKeyInArray!0 lt!419427))))

(assert (=> b!931521 (= lt!419427 (select (arr!26963 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!931522 () Bool)

(declare-fun res!627477 () Bool)

(assert (=> b!931522 (=> (not res!627477) (not e!523159))))

(assert (=> b!931522 (= res!627477 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27423 _keys!1487))))))

(declare-fun b!931519 () Bool)

(assert (=> b!931519 (= e!523159 e!523156)))

(declare-fun res!627474 () Bool)

(assert (=> b!931519 (=> (not res!627474) (not e!523156))))

(declare-fun contains!5019 (ListLongMap!12005 (_ BitVec 64)) Bool)

(assert (=> b!931519 (= res!627474 (contains!5019 lt!419426 k0!1099))))

(assert (=> b!931519 (= lt!419426 (getCurrentListMap!3214 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!627482 () Bool)

(assert (=> start!79344 (=> (not res!627482) (not e!523159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79344 (= res!627482 (validMask!0 mask!1881))))

(assert (=> start!79344 e!523159))

(assert (=> start!79344 true))

(assert (=> start!79344 tp_is_empty!20037))

(declare-fun array_inv!20958 (array!56042) Bool)

(assert (=> start!79344 (and (array_inv!20958 _values!1231) e!523155)))

(assert (=> start!79344 tp!61029))

(declare-fun array_inv!20959 (array!56044) Bool)

(assert (=> start!79344 (array_inv!20959 _keys!1487)))

(assert (= (and start!79344 res!627482) b!931516))

(assert (= (and b!931516 res!627475) b!931513))

(assert (= (and b!931513 res!627481) b!931515))

(assert (= (and b!931515 res!627473) b!931522))

(assert (= (and b!931522 res!627477) b!931519))

(assert (= (and b!931519 res!627474) b!931518))

(assert (= (and b!931518 res!627478) b!931514))

(assert (= (and b!931514 res!627479) b!931512))

(assert (= (and b!931512 res!627480) b!931521))

(assert (= (and b!931521 res!627476) b!931511))

(assert (= (and b!931510 condMapEmpty!31812) mapIsEmpty!31812))

(assert (= (and b!931510 (not condMapEmpty!31812)) mapNonEmpty!31812))

(get-info :version)

(assert (= (and mapNonEmpty!31812 ((_ is ValueCellFull!9537) mapValue!31812)) b!931520))

(assert (= (and b!931510 ((_ is ValueCellFull!9537) mapDefault!31812)) b!931517))

(assert (= start!79344 b!931510))

(declare-fun b_lambda!13875 () Bool)

(assert (=> (not b_lambda!13875) (not b!931511)))

(declare-fun t!27189 () Bool)

(declare-fun tb!5931 () Bool)

(assert (=> (and start!79344 (= defaultEntry!1235 defaultEntry!1235) t!27189) tb!5931))

(declare-fun result!11677 () Bool)

(assert (=> tb!5931 (= result!11677 tp_is_empty!20037)))

(assert (=> b!931511 t!27189))

(declare-fun b_and!28629 () Bool)

(assert (= b_and!28627 (and (=> t!27189 result!11677) b_and!28629)))

(declare-fun m!865485 () Bool)

(assert (=> b!931519 m!865485))

(declare-fun m!865487 () Bool)

(assert (=> b!931519 m!865487))

(declare-fun m!865489 () Bool)

(assert (=> b!931518 m!865489))

(declare-fun m!865491 () Bool)

(assert (=> b!931513 m!865491))

(declare-fun m!865493 () Bool)

(assert (=> b!931512 m!865493))

(declare-fun m!865495 () Bool)

(assert (=> b!931511 m!865495))

(declare-fun m!865497 () Bool)

(assert (=> b!931511 m!865497))

(declare-fun m!865499 () Bool)

(assert (=> b!931511 m!865499))

(declare-fun m!865501 () Bool)

(assert (=> b!931511 m!865501))

(assert (=> b!931511 m!865499))

(assert (=> b!931511 m!865501))

(declare-fun m!865503 () Bool)

(assert (=> b!931511 m!865503))

(declare-fun m!865505 () Bool)

(assert (=> b!931511 m!865505))

(assert (=> b!931511 m!865495))

(declare-fun m!865507 () Bool)

(assert (=> b!931511 m!865507))

(declare-fun m!865509 () Bool)

(assert (=> start!79344 m!865509))

(declare-fun m!865511 () Bool)

(assert (=> start!79344 m!865511))

(declare-fun m!865513 () Bool)

(assert (=> start!79344 m!865513))

(declare-fun m!865515 () Bool)

(assert (=> b!931515 m!865515))

(declare-fun m!865517 () Bool)

(assert (=> b!931521 m!865517))

(declare-fun m!865519 () Bool)

(assert (=> b!931521 m!865519))

(declare-fun m!865521 () Bool)

(assert (=> mapNonEmpty!31812 m!865521))

(check-sat tp_is_empty!20037 (not start!79344) (not b!931512) (not mapNonEmpty!31812) (not b!931519) (not b!931513) (not b_next!17529) (not b!931515) (not b!931521) (not b_lambda!13875) b_and!28629 (not b!931511) (not b!931518))
(check-sat b_and!28629 (not b_next!17529))
