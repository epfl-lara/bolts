; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78894 () Bool)

(assert start!78894)

(declare-fun b_free!17079 () Bool)

(declare-fun b_next!17079 () Bool)

(assert (=> start!78894 (= b_free!17079 (not b_next!17079))))

(declare-fun tp!59678 () Bool)

(declare-fun b_and!27913 () Bool)

(assert (=> start!78894 (= tp!59678 b_and!27913)))

(declare-fun b!921389 () Bool)

(declare-fun res!621475 () Bool)

(declare-fun e!517078 () Bool)

(assert (=> b!921389 (=> (not res!621475) (not e!517078))))

(declare-datatypes ((array!55164 0))(
  ( (array!55165 (arr!26523 (Array (_ BitVec 32) (_ BitVec 64))) (size!26983 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55164)

(declare-datatypes ((List!18741 0))(
  ( (Nil!18738) (Cons!18737 (h!19883 (_ BitVec 64)) (t!26558 List!18741)) )
))
(declare-fun arrayNoDuplicates!0 (array!55164 (_ BitVec 32) List!18741) Bool)

(assert (=> b!921389 (= res!621475 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18738))))

(declare-fun b!921390 () Bool)

(declare-fun e!517080 () Bool)

(declare-fun e!517076 () Bool)

(declare-fun mapRes!31137 () Bool)

(assert (=> b!921390 (= e!517080 (and e!517076 mapRes!31137))))

(declare-fun condMapEmpty!31137 () Bool)

(declare-datatypes ((V!31081 0))(
  ( (V!31082 (val!9844 Int)) )
))
(declare-datatypes ((ValueCell!9312 0))(
  ( (ValueCellFull!9312 (v!12362 V!31081)) (EmptyCell!9312) )
))
(declare-datatypes ((array!55166 0))(
  ( (array!55167 (arr!26524 (Array (_ BitVec 32) ValueCell!9312)) (size!26984 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55166)

(declare-fun mapDefault!31137 () ValueCell!9312)

(assert (=> b!921390 (= condMapEmpty!31137 (= (arr!26524 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9312)) mapDefault!31137)))))

(declare-fun b!921391 () Bool)

(declare-fun e!517072 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!921391 (= e!517072 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!921392 () Bool)

(declare-fun res!621467 () Bool)

(declare-fun e!517077 () Bool)

(assert (=> b!921392 (=> res!621467 e!517077)))

(declare-fun contains!4847 (List!18741 (_ BitVec 64)) Bool)

(assert (=> b!921392 (= res!621467 (contains!4847 Nil!18738 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921393 () Bool)

(declare-fun res!621471 () Bool)

(assert (=> b!921393 (=> (not res!621471) (not e!517078))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55164 (_ BitVec 32)) Bool)

(assert (=> b!921393 (= res!621471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!921394 () Bool)

(assert (=> b!921394 (= e!517077 true)))

(declare-fun lt!413694 () Bool)

(assert (=> b!921394 (= lt!413694 (contains!4847 Nil!18738 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921395 () Bool)

(declare-fun e!517075 () Bool)

(assert (=> b!921395 (= e!517075 (not e!517077))))

(declare-fun res!621478 () Bool)

(assert (=> b!921395 (=> res!621478 e!517077)))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!921395 (= res!621478 (or (bvsge (size!26983 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26983 _keys!1487))))))

(assert (=> b!921395 e!517072))

(declare-fun c!96038 () Bool)

(assert (=> b!921395 (= c!96038 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((Unit!31081 0))(
  ( (Unit!31082) )
))
(declare-fun lt!413689 () Unit!31081)

(declare-fun zeroValue!1173 () V!31081)

(declare-fun minValue!1173 () V!31081)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!183 (array!55164 array!55166 (_ BitVec 32) (_ BitVec 32) V!31081 V!31081 (_ BitVec 64) (_ BitVec 32) Int) Unit!31081)

(assert (=> b!921395 (= lt!413689 (lemmaListMapContainsThenArrayContainsFrom!183 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!921395 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18738)))

(declare-fun lt!413688 () Unit!31081)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55164 (_ BitVec 32) (_ BitVec 32)) Unit!31081)

(assert (=> b!921395 (= lt!413688 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12900 0))(
  ( (tuple2!12901 (_1!6460 (_ BitVec 64)) (_2!6460 V!31081)) )
))
(declare-datatypes ((List!18742 0))(
  ( (Nil!18739) (Cons!18738 (h!19884 tuple2!12900) (t!26559 List!18742)) )
))
(declare-datatypes ((ListLongMap!11611 0))(
  ( (ListLongMap!11612 (toList!5821 List!18742)) )
))
(declare-fun lt!413690 () ListLongMap!11611)

(declare-fun lt!413687 () tuple2!12900)

(declare-fun contains!4848 (ListLongMap!11611 (_ BitVec 64)) Bool)

(declare-fun +!2637 (ListLongMap!11611 tuple2!12900) ListLongMap!11611)

(assert (=> b!921395 (contains!4848 (+!2637 lt!413690 lt!413687) k0!1099)))

(declare-fun lt!413686 () (_ BitVec 64))

(declare-fun lt!413692 () Unit!31081)

(declare-fun lt!413693 () V!31081)

(declare-fun addStillContains!399 (ListLongMap!11611 (_ BitVec 64) V!31081 (_ BitVec 64)) Unit!31081)

(assert (=> b!921395 (= lt!413692 (addStillContains!399 lt!413690 lt!413686 lt!413693 k0!1099))))

(declare-fun getCurrentListMap!3043 (array!55164 array!55166 (_ BitVec 32) (_ BitVec 32) V!31081 V!31081 (_ BitVec 32) Int) ListLongMap!11611)

(assert (=> b!921395 (= (getCurrentListMap!3043 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2637 (getCurrentListMap!3043 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413687))))

(assert (=> b!921395 (= lt!413687 (tuple2!12901 lt!413686 lt!413693))))

(declare-fun get!13942 (ValueCell!9312 V!31081) V!31081)

(declare-fun dynLambda!1476 (Int (_ BitVec 64)) V!31081)

(assert (=> b!921395 (= lt!413693 (get!13942 (select (arr!26524 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1476 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413691 () Unit!31081)

(declare-fun lemmaListMapRecursiveValidKeyArray!72 (array!55164 array!55166 (_ BitVec 32) (_ BitVec 32) V!31081 V!31081 (_ BitVec 32) Int) Unit!31081)

(assert (=> b!921395 (= lt!413691 (lemmaListMapRecursiveValidKeyArray!72 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapNonEmpty!31137 () Bool)

(declare-fun tp!59679 () Bool)

(declare-fun e!517074 () Bool)

(assert (=> mapNonEmpty!31137 (= mapRes!31137 (and tp!59679 e!517074))))

(declare-fun mapKey!31137 () (_ BitVec 32))

(declare-fun mapRest!31137 () (Array (_ BitVec 32) ValueCell!9312))

(declare-fun mapValue!31137 () ValueCell!9312)

(assert (=> mapNonEmpty!31137 (= (arr!26524 _values!1231) (store mapRest!31137 mapKey!31137 mapValue!31137))))

(declare-fun b!921396 () Bool)

(declare-fun res!621468 () Bool)

(assert (=> b!921396 (=> res!621468 e!517077)))

(declare-fun noDuplicate!1348 (List!18741) Bool)

(assert (=> b!921396 (= res!621468 (not (noDuplicate!1348 Nil!18738)))))

(declare-fun res!621473 () Bool)

(assert (=> start!78894 (=> (not res!621473) (not e!517078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78894 (= res!621473 (validMask!0 mask!1881))))

(assert (=> start!78894 e!517078))

(assert (=> start!78894 true))

(declare-fun tp_is_empty!19587 () Bool)

(assert (=> start!78894 tp_is_empty!19587))

(declare-fun array_inv!20650 (array!55166) Bool)

(assert (=> start!78894 (and (array_inv!20650 _values!1231) e!517080)))

(assert (=> start!78894 tp!59678))

(declare-fun array_inv!20651 (array!55164) Bool)

(assert (=> start!78894 (array_inv!20651 _keys!1487)))

(declare-fun b!921397 () Bool)

(assert (=> b!921397 (= e!517074 tp_is_empty!19587)))

(declare-fun mapIsEmpty!31137 () Bool)

(assert (=> mapIsEmpty!31137 mapRes!31137))

(declare-fun b!921398 () Bool)

(declare-fun arrayContainsKey!0 (array!55164 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921398 (= e!517072 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!921399 () Bool)

(assert (=> b!921399 (= e!517076 tp_is_empty!19587)))

(declare-fun b!921400 () Bool)

(declare-fun e!517073 () Bool)

(assert (=> b!921400 (= e!517073 e!517075)))

(declare-fun res!621476 () Bool)

(assert (=> b!921400 (=> (not res!621476) (not e!517075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921400 (= res!621476 (validKeyInArray!0 lt!413686))))

(assert (=> b!921400 (= lt!413686 (select (arr!26523 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!921401 () Bool)

(declare-fun res!621470 () Bool)

(assert (=> b!921401 (=> (not res!621470) (not e!517073))))

(assert (=> b!921401 (= res!621470 (validKeyInArray!0 k0!1099))))

(declare-fun b!921402 () Bool)

(assert (=> b!921402 (= e!517078 e!517073)))

(declare-fun res!621479 () Bool)

(assert (=> b!921402 (=> (not res!621479) (not e!517073))))

(assert (=> b!921402 (= res!621479 (contains!4848 lt!413690 k0!1099))))

(assert (=> b!921402 (= lt!413690 (getCurrentListMap!3043 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!921403 () Bool)

(declare-fun res!621472 () Bool)

(assert (=> b!921403 (=> (not res!621472) (not e!517073))))

(declare-fun v!791 () V!31081)

(declare-fun apply!629 (ListLongMap!11611 (_ BitVec 64)) V!31081)

(assert (=> b!921403 (= res!621472 (= (apply!629 lt!413690 k0!1099) v!791))))

(declare-fun b!921404 () Bool)

(declare-fun res!621477 () Bool)

(assert (=> b!921404 (=> (not res!621477) (not e!517078))))

(assert (=> b!921404 (= res!621477 (and (= (size!26984 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26983 _keys!1487) (size!26984 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!921405 () Bool)

(declare-fun res!621469 () Bool)

(assert (=> b!921405 (=> (not res!621469) (not e!517073))))

(assert (=> b!921405 (= res!621469 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!921406 () Bool)

(declare-fun res!621474 () Bool)

(assert (=> b!921406 (=> (not res!621474) (not e!517078))))

(assert (=> b!921406 (= res!621474 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26983 _keys!1487))))))

(assert (= (and start!78894 res!621473) b!921404))

(assert (= (and b!921404 res!621477) b!921393))

(assert (= (and b!921393 res!621471) b!921389))

(assert (= (and b!921389 res!621475) b!921406))

(assert (= (and b!921406 res!621474) b!921402))

(assert (= (and b!921402 res!621479) b!921403))

(assert (= (and b!921403 res!621472) b!921405))

(assert (= (and b!921405 res!621469) b!921401))

(assert (= (and b!921401 res!621470) b!921400))

(assert (= (and b!921400 res!621476) b!921395))

(assert (= (and b!921395 c!96038) b!921398))

(assert (= (and b!921395 (not c!96038)) b!921391))

(assert (= (and b!921395 (not res!621478)) b!921396))

(assert (= (and b!921396 (not res!621468)) b!921392))

(assert (= (and b!921392 (not res!621467)) b!921394))

(assert (= (and b!921390 condMapEmpty!31137) mapIsEmpty!31137))

(assert (= (and b!921390 (not condMapEmpty!31137)) mapNonEmpty!31137))

(get-info :version)

(assert (= (and mapNonEmpty!31137 ((_ is ValueCellFull!9312) mapValue!31137)) b!921397))

(assert (= (and b!921390 ((_ is ValueCellFull!9312) mapDefault!31137)) b!921399))

(assert (= start!78894 b!921390))

(declare-fun b_lambda!13611 () Bool)

(assert (=> (not b_lambda!13611) (not b!921395)))

(declare-fun t!26557 () Bool)

(declare-fun tb!5667 () Bool)

(assert (=> (and start!78894 (= defaultEntry!1235 defaultEntry!1235) t!26557) tb!5667))

(declare-fun result!11149 () Bool)

(assert (=> tb!5667 (= result!11149 tp_is_empty!19587)))

(assert (=> b!921395 t!26557))

(declare-fun b_and!27915 () Bool)

(assert (= b_and!27913 (and (=> t!26557 result!11149) b_and!27915)))

(declare-fun m!855455 () Bool)

(assert (=> b!921400 m!855455))

(declare-fun m!855457 () Bool)

(assert (=> b!921400 m!855457))

(declare-fun m!855459 () Bool)

(assert (=> b!921401 m!855459))

(declare-fun m!855461 () Bool)

(assert (=> b!921395 m!855461))

(declare-fun m!855463 () Bool)

(assert (=> b!921395 m!855463))

(declare-fun m!855465 () Bool)

(assert (=> b!921395 m!855465))

(declare-fun m!855467 () Bool)

(assert (=> b!921395 m!855467))

(declare-fun m!855469 () Bool)

(assert (=> b!921395 m!855469))

(assert (=> b!921395 m!855467))

(assert (=> b!921395 m!855469))

(declare-fun m!855471 () Bool)

(assert (=> b!921395 m!855471))

(declare-fun m!855473 () Bool)

(assert (=> b!921395 m!855473))

(declare-fun m!855475 () Bool)

(assert (=> b!921395 m!855475))

(declare-fun m!855477 () Bool)

(assert (=> b!921395 m!855477))

(declare-fun m!855479 () Bool)

(assert (=> b!921395 m!855479))

(declare-fun m!855481 () Bool)

(assert (=> b!921395 m!855481))

(declare-fun m!855483 () Bool)

(assert (=> b!921395 m!855483))

(assert (=> b!921395 m!855463))

(assert (=> b!921395 m!855481))

(declare-fun m!855485 () Bool)

(assert (=> b!921395 m!855485))

(declare-fun m!855487 () Bool)

(assert (=> b!921392 m!855487))

(declare-fun m!855489 () Bool)

(assert (=> b!921398 m!855489))

(declare-fun m!855491 () Bool)

(assert (=> b!921403 m!855491))

(declare-fun m!855493 () Bool)

(assert (=> mapNonEmpty!31137 m!855493))

(declare-fun m!855495 () Bool)

(assert (=> b!921402 m!855495))

(declare-fun m!855497 () Bool)

(assert (=> b!921402 m!855497))

(declare-fun m!855499 () Bool)

(assert (=> b!921394 m!855499))

(declare-fun m!855501 () Bool)

(assert (=> start!78894 m!855501))

(declare-fun m!855503 () Bool)

(assert (=> start!78894 m!855503))

(declare-fun m!855505 () Bool)

(assert (=> start!78894 m!855505))

(declare-fun m!855507 () Bool)

(assert (=> b!921389 m!855507))

(declare-fun m!855509 () Bool)

(assert (=> b!921396 m!855509))

(declare-fun m!855511 () Bool)

(assert (=> b!921393 m!855511))

(check-sat (not b!921389) (not b!921396) (not b_next!17079) (not b_lambda!13611) (not b!921400) (not b!921402) (not b!921398) (not mapNonEmpty!31137) (not b!921401) (not start!78894) (not b!921394) tp_is_empty!19587 (not b!921392) (not b!921395) b_and!27915 (not b!921393) (not b!921403))
(check-sat b_and!27915 (not b_next!17079))
