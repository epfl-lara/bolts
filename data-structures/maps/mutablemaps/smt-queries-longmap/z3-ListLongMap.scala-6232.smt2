; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79694 () Bool)

(assert start!79694)

(declare-fun b_free!17715 () Bool)

(declare-fun b_next!17715 () Bool)

(assert (=> start!79694 (= b_free!17715 (not b_next!17715))))

(declare-fun tp!61601 () Bool)

(declare-fun b_and!29039 () Bool)

(assert (=> start!79694 (= tp!61601 b_and!29039)))

(declare-fun b!936688 () Bool)

(declare-datatypes ((Unit!31613 0))(
  ( (Unit!31614) )
))
(declare-fun e!525999 () Unit!31613)

(declare-fun e!525997 () Unit!31613)

(assert (=> b!936688 (= e!525999 e!525997)))

(declare-fun lt!422491 () (_ BitVec 64))

(declare-datatypes ((array!56410 0))(
  ( (array!56411 (arr!27141 (Array (_ BitVec 32) (_ BitVec 64))) (size!27601 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56410)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!936688 (= lt!422491 (select (arr!27141 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97387 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936688 (= c!97387 (validKeyInArray!0 lt!422491))))

(declare-fun b!936689 () Bool)

(declare-fun res!630717 () Bool)

(declare-fun e!525995 () Bool)

(assert (=> b!936689 (=> (not res!630717) (not e!525995))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56410 (_ BitVec 32)) Bool)

(assert (=> b!936689 (= res!630717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun e!526004 () Bool)

(declare-fun b!936690 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936690 (= e!526004 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!936691 () Bool)

(declare-datatypes ((V!31929 0))(
  ( (V!31930 (val!10162 Int)) )
))
(declare-datatypes ((tuple2!13450 0))(
  ( (tuple2!13451 (_1!6735 (_ BitVec 64)) (_2!6735 V!31929)) )
))
(declare-datatypes ((List!19257 0))(
  ( (Nil!19254) (Cons!19253 (h!20399 tuple2!13450) (t!27524 List!19257)) )
))
(declare-datatypes ((ListLongMap!12161 0))(
  ( (ListLongMap!12162 (toList!6096 List!19257)) )
))
(declare-fun lt!422487 () ListLongMap!12161)

(declare-fun lt!422480 () V!31929)

(declare-fun apply!874 (ListLongMap!12161 (_ BitVec 64)) V!31929)

(assert (=> b!936691 (= (apply!874 lt!422487 k0!1099) lt!422480)))

(declare-fun lt!422485 () Unit!31613)

(declare-fun lt!422488 () ListLongMap!12161)

(declare-fun lt!422483 () V!31929)

(declare-fun addApplyDifferent!422 (ListLongMap!12161 (_ BitVec 64) V!31929 (_ BitVec 64)) Unit!31613)

(assert (=> b!936691 (= lt!422485 (addApplyDifferent!422 lt!422488 lt!422491 lt!422483 k0!1099))))

(assert (=> b!936691 (not (= lt!422491 k0!1099))))

(declare-fun lt!422479 () Unit!31613)

(declare-datatypes ((List!19258 0))(
  ( (Nil!19255) (Cons!19254 (h!20400 (_ BitVec 64)) (t!27525 List!19258)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56410 (_ BitVec 64) (_ BitVec 32) List!19258) Unit!31613)

(assert (=> b!936691 (= lt!422479 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19255))))

(assert (=> b!936691 e!526004))

(declare-fun c!97386 () Bool)

(assert (=> b!936691 (= c!97386 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422489 () Unit!31613)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9630 0))(
  ( (ValueCellFull!9630 (v!12687 V!31929)) (EmptyCell!9630) )
))
(declare-datatypes ((array!56412 0))(
  ( (array!56413 (arr!27142 (Array (_ BitVec 32) ValueCell!9630)) (size!27602 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56412)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31929)

(declare-fun minValue!1173 () V!31929)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!305 (array!56410 array!56412 (_ BitVec 32) (_ BitVec 32) V!31929 V!31929 (_ BitVec 64) (_ BitVec 32) Int) Unit!31613)

(assert (=> b!936691 (= lt!422489 (lemmaListMapContainsThenArrayContainsFrom!305 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56410 (_ BitVec 32) List!19258) Bool)

(assert (=> b!936691 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19255)))

(declare-fun lt!422486 () Unit!31613)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56410 (_ BitVec 32) (_ BitVec 32)) Unit!31613)

(assert (=> b!936691 (= lt!422486 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5106 (ListLongMap!12161 (_ BitVec 64)) Bool)

(assert (=> b!936691 (contains!5106 lt!422487 k0!1099)))

(declare-fun lt!422490 () tuple2!13450)

(declare-fun +!2792 (ListLongMap!12161 tuple2!13450) ListLongMap!12161)

(assert (=> b!936691 (= lt!422487 (+!2792 lt!422488 lt!422490))))

(declare-fun lt!422481 () Unit!31613)

(declare-fun addStillContains!548 (ListLongMap!12161 (_ BitVec 64) V!31929 (_ BitVec 64)) Unit!31613)

(assert (=> b!936691 (= lt!422481 (addStillContains!548 lt!422488 lt!422491 lt!422483 k0!1099))))

(declare-fun getCurrentListMap!3285 (array!56410 array!56412 (_ BitVec 32) (_ BitVec 32) V!31929 V!31929 (_ BitVec 32) Int) ListLongMap!12161)

(assert (=> b!936691 (= (getCurrentListMap!3285 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2792 (getCurrentListMap!3285 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422490))))

(assert (=> b!936691 (= lt!422490 (tuple2!13451 lt!422491 lt!422483))))

(declare-fun get!14324 (ValueCell!9630 V!31929) V!31929)

(declare-fun dynLambda!1631 (Int (_ BitVec 64)) V!31929)

(assert (=> b!936691 (= lt!422483 (get!14324 (select (arr!27142 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1631 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422484 () Unit!31613)

(declare-fun lemmaListMapRecursiveValidKeyArray!227 (array!56410 array!56412 (_ BitVec 32) (_ BitVec 32) V!31929 V!31929 (_ BitVec 32) Int) Unit!31613)

(assert (=> b!936691 (= lt!422484 (lemmaListMapRecursiveValidKeyArray!227 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!936691 (= e!525997 lt!422485)))

(declare-fun res!630716 () Bool)

(assert (=> start!79694 (=> (not res!630716) (not e!525995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79694 (= res!630716 (validMask!0 mask!1881))))

(assert (=> start!79694 e!525995))

(assert (=> start!79694 true))

(declare-fun tp_is_empty!20223 () Bool)

(assert (=> start!79694 tp_is_empty!20223))

(declare-fun e!526001 () Bool)

(declare-fun array_inv!21076 (array!56412) Bool)

(assert (=> start!79694 (and (array_inv!21076 _values!1231) e!526001)))

(assert (=> start!79694 tp!61601))

(declare-fun array_inv!21077 (array!56410) Bool)

(assert (=> start!79694 (array_inv!21077 _keys!1487)))

(declare-fun b!936692 () Bool)

(assert (=> b!936692 (= e!526004 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!936693 () Bool)

(declare-fun e!526003 () Bool)

(declare-fun e!526000 () Bool)

(assert (=> b!936693 (= e!526003 e!526000)))

(declare-fun res!630713 () Bool)

(assert (=> b!936693 (=> (not res!630713) (not e!526000))))

(declare-fun v!791 () V!31929)

(assert (=> b!936693 (= res!630713 (and (= lt!422480 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!936693 (= lt!422480 (apply!874 lt!422488 k0!1099))))

(declare-fun b!936694 () Bool)

(assert (=> b!936694 (= e!526000 false)))

(declare-fun lt!422482 () Unit!31613)

(assert (=> b!936694 (= lt!422482 e!525999)))

(declare-fun c!97388 () Bool)

(assert (=> b!936694 (= c!97388 (validKeyInArray!0 k0!1099))))

(declare-fun b!936695 () Bool)

(declare-fun res!630714 () Bool)

(assert (=> b!936695 (=> (not res!630714) (not e!525995))))

(assert (=> b!936695 (= res!630714 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19255))))

(declare-fun b!936696 () Bool)

(declare-fun Unit!31615 () Unit!31613)

(assert (=> b!936696 (= e!525997 Unit!31615)))

(declare-fun b!936697 () Bool)

(declare-fun e!526002 () Bool)

(assert (=> b!936697 (= e!526002 tp_is_empty!20223)))

(declare-fun b!936698 () Bool)

(declare-fun e!525996 () Bool)

(declare-fun mapRes!32106 () Bool)

(assert (=> b!936698 (= e!526001 (and e!525996 mapRes!32106))))

(declare-fun condMapEmpty!32106 () Bool)

(declare-fun mapDefault!32106 () ValueCell!9630)

(assert (=> b!936698 (= condMapEmpty!32106 (= (arr!27142 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9630)) mapDefault!32106)))))

(declare-fun mapNonEmpty!32106 () Bool)

(declare-fun tp!61602 () Bool)

(assert (=> mapNonEmpty!32106 (= mapRes!32106 (and tp!61602 e!526002))))

(declare-fun mapKey!32106 () (_ BitVec 32))

(declare-fun mapRest!32106 () (Array (_ BitVec 32) ValueCell!9630))

(declare-fun mapValue!32106 () ValueCell!9630)

(assert (=> mapNonEmpty!32106 (= (arr!27142 _values!1231) (store mapRest!32106 mapKey!32106 mapValue!32106))))

(declare-fun b!936699 () Bool)

(assert (=> b!936699 (= e!525996 tp_is_empty!20223)))

(declare-fun b!936700 () Bool)

(declare-fun Unit!31616 () Unit!31613)

(assert (=> b!936700 (= e!525999 Unit!31616)))

(declare-fun b!936701 () Bool)

(declare-fun res!630719 () Bool)

(assert (=> b!936701 (=> (not res!630719) (not e!525995))))

(assert (=> b!936701 (= res!630719 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27601 _keys!1487))))))

(declare-fun b!936702 () Bool)

(declare-fun res!630718 () Bool)

(assert (=> b!936702 (=> (not res!630718) (not e!525995))))

(assert (=> b!936702 (= res!630718 (and (= (size!27602 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27601 _keys!1487) (size!27602 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936703 () Bool)

(assert (=> b!936703 (= e!525995 e!526003)))

(declare-fun res!630715 () Bool)

(assert (=> b!936703 (=> (not res!630715) (not e!526003))))

(assert (=> b!936703 (= res!630715 (contains!5106 lt!422488 k0!1099))))

(assert (=> b!936703 (= lt!422488 (getCurrentListMap!3285 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!32106 () Bool)

(assert (=> mapIsEmpty!32106 mapRes!32106))

(assert (= (and start!79694 res!630716) b!936702))

(assert (= (and b!936702 res!630718) b!936689))

(assert (= (and b!936689 res!630717) b!936695))

(assert (= (and b!936695 res!630714) b!936701))

(assert (= (and b!936701 res!630719) b!936703))

(assert (= (and b!936703 res!630715) b!936693))

(assert (= (and b!936693 res!630713) b!936694))

(assert (= (and b!936694 c!97388) b!936688))

(assert (= (and b!936694 (not c!97388)) b!936700))

(assert (= (and b!936688 c!97387) b!936691))

(assert (= (and b!936688 (not c!97387)) b!936696))

(assert (= (and b!936691 c!97386) b!936690))

(assert (= (and b!936691 (not c!97386)) b!936692))

(assert (= (and b!936698 condMapEmpty!32106) mapIsEmpty!32106))

(assert (= (and b!936698 (not condMapEmpty!32106)) mapNonEmpty!32106))

(get-info :version)

(assert (= (and mapNonEmpty!32106 ((_ is ValueCellFull!9630) mapValue!32106)) b!936697))

(assert (= (and b!936698 ((_ is ValueCellFull!9630) mapDefault!32106)) b!936699))

(assert (= start!79694 b!936698))

(declare-fun b_lambda!14151 () Bool)

(assert (=> (not b_lambda!14151) (not b!936691)))

(declare-fun t!27523 () Bool)

(declare-fun tb!6117 () Bool)

(assert (=> (and start!79694 (= defaultEntry!1235 defaultEntry!1235) t!27523) tb!6117))

(declare-fun result!12059 () Bool)

(assert (=> tb!6117 (= result!12059 tp_is_empty!20223)))

(assert (=> b!936691 t!27523))

(declare-fun b_and!29041 () Bool)

(assert (= b_and!29039 (and (=> t!27523 result!12059) b_and!29041)))

(declare-fun m!871461 () Bool)

(assert (=> b!936695 m!871461))

(declare-fun m!871463 () Bool)

(assert (=> b!936693 m!871463))

(declare-fun m!871465 () Bool)

(assert (=> start!79694 m!871465))

(declare-fun m!871467 () Bool)

(assert (=> start!79694 m!871467))

(declare-fun m!871469 () Bool)

(assert (=> start!79694 m!871469))

(declare-fun m!871471 () Bool)

(assert (=> b!936689 m!871471))

(declare-fun m!871473 () Bool)

(assert (=> b!936688 m!871473))

(declare-fun m!871475 () Bool)

(assert (=> b!936688 m!871475))

(declare-fun m!871477 () Bool)

(assert (=> b!936691 m!871477))

(declare-fun m!871479 () Bool)

(assert (=> b!936691 m!871479))

(declare-fun m!871481 () Bool)

(assert (=> b!936691 m!871481))

(declare-fun m!871483 () Bool)

(assert (=> b!936691 m!871483))

(declare-fun m!871485 () Bool)

(assert (=> b!936691 m!871485))

(declare-fun m!871487 () Bool)

(assert (=> b!936691 m!871487))

(declare-fun m!871489 () Bool)

(assert (=> b!936691 m!871489))

(assert (=> b!936691 m!871481))

(declare-fun m!871491 () Bool)

(assert (=> b!936691 m!871491))

(declare-fun m!871493 () Bool)

(assert (=> b!936691 m!871493))

(declare-fun m!871495 () Bool)

(assert (=> b!936691 m!871495))

(declare-fun m!871497 () Bool)

(assert (=> b!936691 m!871497))

(declare-fun m!871499 () Bool)

(assert (=> b!936691 m!871499))

(declare-fun m!871501 () Bool)

(assert (=> b!936691 m!871501))

(assert (=> b!936691 m!871491))

(declare-fun m!871503 () Bool)

(assert (=> b!936691 m!871503))

(declare-fun m!871505 () Bool)

(assert (=> b!936691 m!871505))

(assert (=> b!936691 m!871483))

(declare-fun m!871507 () Bool)

(assert (=> b!936691 m!871507))

(declare-fun m!871509 () Bool)

(assert (=> b!936690 m!871509))

(declare-fun m!871511 () Bool)

(assert (=> b!936694 m!871511))

(declare-fun m!871513 () Bool)

(assert (=> b!936703 m!871513))

(declare-fun m!871515 () Bool)

(assert (=> b!936703 m!871515))

(declare-fun m!871517 () Bool)

(assert (=> mapNonEmpty!32106 m!871517))

(check-sat (not mapNonEmpty!32106) (not b!936690) b_and!29041 (not b!936694) (not b!936695) (not b!936693) (not b!936688) (not b_lambda!14151) (not start!79694) (not b!936703) tp_is_empty!20223 (not b!936691) (not b!936689) (not b_next!17715))
(check-sat b_and!29041 (not b_next!17715))
