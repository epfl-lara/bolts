; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78966 () Bool)

(assert start!78966)

(declare-fun b_free!17151 () Bool)

(declare-fun b_next!17151 () Bool)

(assert (=> start!78966 (= b_free!17151 (not b_next!17151))))

(declare-fun tp!59895 () Bool)

(declare-fun b_and!28057 () Bool)

(assert (=> start!78966 (= tp!59895 b_and!28057)))

(declare-fun mapIsEmpty!31245 () Bool)

(declare-fun mapRes!31245 () Bool)

(assert (=> mapIsEmpty!31245 mapRes!31245))

(declare-fun b!923135 () Bool)

(declare-fun e!517977 () Bool)

(declare-fun e!517972 () Bool)

(assert (=> b!923135 (= e!517977 (and e!517972 mapRes!31245))))

(declare-fun condMapEmpty!31245 () Bool)

(declare-datatypes ((V!31177 0))(
  ( (V!31178 (val!9880 Int)) )
))
(declare-datatypes ((ValueCell!9348 0))(
  ( (ValueCellFull!9348 (v!12398 V!31177)) (EmptyCell!9348) )
))
(declare-datatypes ((array!55304 0))(
  ( (array!55305 (arr!26593 (Array (_ BitVec 32) ValueCell!9348)) (size!27053 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55304)

(declare-fun mapDefault!31245 () ValueCell!9348)

(assert (=> b!923135 (= condMapEmpty!31245 (= (arr!26593 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9348)) mapDefault!31245)))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun e!517970 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun b!923136 () Bool)

(declare-datatypes ((array!55306 0))(
  ( (array!55307 (arr!26594 (Array (_ BitVec 32) (_ BitVec 64))) (size!27054 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55306)

(declare-fun arrayContainsKey!0 (array!55306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923136 (= e!517970 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!923137 () Bool)

(declare-fun res!622581 () Bool)

(declare-fun e!517973 () Bool)

(assert (=> b!923137 (=> (not res!622581) (not e!517973))))

(assert (=> b!923137 (= res!622581 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27054 _keys!1487))))))

(declare-fun b!923138 () Bool)

(declare-fun e!517980 () Bool)

(assert (=> b!923138 (= e!517980 false)))

(declare-fun lt!414698 () V!31177)

(declare-datatypes ((tuple2!12968 0))(
  ( (tuple2!12969 (_1!6494 (_ BitVec 64)) (_2!6494 V!31177)) )
))
(declare-datatypes ((List!18804 0))(
  ( (Nil!18801) (Cons!18800 (h!19946 tuple2!12968) (t!26693 List!18804)) )
))
(declare-datatypes ((ListLongMap!11679 0))(
  ( (ListLongMap!11680 (toList!5855 List!18804)) )
))
(declare-fun lt!414700 () ListLongMap!11679)

(declare-fun apply!659 (ListLongMap!11679 (_ BitVec 64)) V!31177)

(assert (=> b!923138 (= lt!414698 (apply!659 lt!414700 k0!1099))))

(declare-fun mapNonEmpty!31245 () Bool)

(declare-fun tp!59894 () Bool)

(declare-fun e!517979 () Bool)

(assert (=> mapNonEmpty!31245 (= mapRes!31245 (and tp!59894 e!517979))))

(declare-fun mapRest!31245 () (Array (_ BitVec 32) ValueCell!9348))

(declare-fun mapKey!31245 () (_ BitVec 32))

(declare-fun mapValue!31245 () ValueCell!9348)

(assert (=> mapNonEmpty!31245 (= (arr!26593 _values!1231) (store mapRest!31245 mapKey!31245 mapValue!31245))))

(declare-fun b!923139 () Bool)

(declare-fun tp_is_empty!19659 () Bool)

(assert (=> b!923139 (= e!517972 tp_is_empty!19659)))

(declare-fun b!923140 () Bool)

(declare-fun lt!414691 () ListLongMap!11679)

(declare-fun lt!414689 () V!31177)

(assert (=> b!923140 (= (apply!659 lt!414691 k0!1099) lt!414689)))

(declare-fun lt!414699 () ListLongMap!11679)

(declare-datatypes ((Unit!31139 0))(
  ( (Unit!31140) )
))
(declare-fun lt!414701 () Unit!31139)

(declare-fun lt!414702 () V!31177)

(declare-fun lt!414693 () (_ BitVec 64))

(declare-fun addApplyDifferent!352 (ListLongMap!11679 (_ BitVec 64) V!31177 (_ BitVec 64)) Unit!31139)

(assert (=> b!923140 (= lt!414701 (addApplyDifferent!352 lt!414699 lt!414693 lt!414702 k0!1099))))

(assert (=> b!923140 (not (= lt!414693 k0!1099))))

(declare-fun lt!414688 () Unit!31139)

(declare-datatypes ((List!18805 0))(
  ( (Nil!18802) (Cons!18801 (h!19947 (_ BitVec 64)) (t!26694 List!18805)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55306 (_ BitVec 64) (_ BitVec 32) List!18805) Unit!31139)

(assert (=> b!923140 (= lt!414688 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18802))))

(assert (=> b!923140 e!517970))

(declare-fun c!96158 () Bool)

(assert (=> b!923140 (= c!96158 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!414690 () Unit!31139)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31177)

(declare-fun minValue!1173 () V!31177)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!212 (array!55306 array!55304 (_ BitVec 32) (_ BitVec 32) V!31177 V!31177 (_ BitVec 64) (_ BitVec 32) Int) Unit!31139)

(assert (=> b!923140 (= lt!414690 (lemmaListMapContainsThenArrayContainsFrom!212 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55306 (_ BitVec 32) List!18805) Bool)

(assert (=> b!923140 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18802)))

(declare-fun lt!414697 () Unit!31139)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55306 (_ BitVec 32) (_ BitVec 32)) Unit!31139)

(assert (=> b!923140 (= lt!414697 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4879 (ListLongMap!11679 (_ BitVec 64)) Bool)

(assert (=> b!923140 (contains!4879 lt!414691 k0!1099)))

(declare-fun lt!414696 () tuple2!12968)

(declare-fun +!2666 (ListLongMap!11679 tuple2!12968) ListLongMap!11679)

(assert (=> b!923140 (= lt!414691 (+!2666 lt!414699 lt!414696))))

(declare-fun lt!414694 () Unit!31139)

(declare-fun addStillContains!428 (ListLongMap!11679 (_ BitVec 64) V!31177 (_ BitVec 64)) Unit!31139)

(assert (=> b!923140 (= lt!414694 (addStillContains!428 lt!414699 lt!414693 lt!414702 k0!1099))))

(declare-fun getCurrentListMap!3073 (array!55306 array!55304 (_ BitVec 32) (_ BitVec 32) V!31177 V!31177 (_ BitVec 32) Int) ListLongMap!11679)

(assert (=> b!923140 (= (getCurrentListMap!3073 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2666 (getCurrentListMap!3073 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414696))))

(assert (=> b!923140 (= lt!414696 (tuple2!12969 lt!414693 lt!414702))))

(declare-fun get!13995 (ValueCell!9348 V!31177) V!31177)

(declare-fun dynLambda!1505 (Int (_ BitVec 64)) V!31177)

(assert (=> b!923140 (= lt!414702 (get!13995 (select (arr!26593 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1505 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414692 () Unit!31139)

(declare-fun lemmaListMapRecursiveValidKeyArray!101 (array!55306 array!55304 (_ BitVec 32) (_ BitVec 32) V!31177 V!31177 (_ BitVec 32) Int) Unit!31139)

(assert (=> b!923140 (= lt!414692 (lemmaListMapRecursiveValidKeyArray!101 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!517971 () Unit!31139)

(assert (=> b!923140 (= e!517971 lt!414701)))

(declare-fun b!923141 () Bool)

(declare-fun e!517978 () Unit!31139)

(assert (=> b!923141 (= e!517978 e!517971)))

(assert (=> b!923141 (= lt!414693 (select (arr!26594 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96157 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923141 (= c!96157 (validKeyInArray!0 lt!414693))))

(declare-fun res!622583 () Bool)

(assert (=> start!78966 (=> (not res!622583) (not e!517973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78966 (= res!622583 (validMask!0 mask!1881))))

(assert (=> start!78966 e!517973))

(assert (=> start!78966 true))

(assert (=> start!78966 tp_is_empty!19659))

(declare-fun array_inv!20704 (array!55304) Bool)

(assert (=> start!78966 (and (array_inv!20704 _values!1231) e!517977)))

(assert (=> start!78966 tp!59895))

(declare-fun array_inv!20705 (array!55306) Bool)

(assert (=> start!78966 (array_inv!20705 _keys!1487)))

(declare-fun b!923142 () Bool)

(declare-fun Unit!31141 () Unit!31139)

(assert (=> b!923142 (= e!517978 Unit!31141)))

(declare-fun b!923143 () Bool)

(assert (=> b!923143 (= e!517979 tp_is_empty!19659)))

(declare-fun b!923144 () Bool)

(declare-fun e!517969 () Bool)

(declare-fun e!517976 () Bool)

(assert (=> b!923144 (= e!517969 e!517976)))

(declare-fun res!622588 () Bool)

(assert (=> b!923144 (=> (not res!622588) (not e!517976))))

(assert (=> b!923144 (= res!622588 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27054 _keys!1487)))))

(declare-fun lt!414695 () Unit!31139)

(assert (=> b!923144 (= lt!414695 e!517978)))

(declare-fun c!96156 () Bool)

(assert (=> b!923144 (= c!96156 (validKeyInArray!0 k0!1099))))

(declare-fun b!923145 () Bool)

(declare-fun e!517975 () Bool)

(assert (=> b!923145 (= e!517975 e!517969)))

(declare-fun res!622585 () Bool)

(assert (=> b!923145 (=> (not res!622585) (not e!517969))))

(declare-fun v!791 () V!31177)

(assert (=> b!923145 (= res!622585 (and (= lt!414689 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!923145 (= lt!414689 (apply!659 lt!414699 k0!1099))))

(declare-fun b!923146 () Bool)

(declare-fun Unit!31142 () Unit!31139)

(assert (=> b!923146 (= e!517971 Unit!31142)))

(declare-fun b!923147 () Bool)

(declare-fun res!622584 () Bool)

(assert (=> b!923147 (=> (not res!622584) (not e!517973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55306 (_ BitVec 32)) Bool)

(assert (=> b!923147 (= res!622584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!923148 () Bool)

(assert (=> b!923148 (= e!517973 e!517975)))

(declare-fun res!622589 () Bool)

(assert (=> b!923148 (=> (not res!622589) (not e!517975))))

(assert (=> b!923148 (= res!622589 (contains!4879 lt!414699 k0!1099))))

(assert (=> b!923148 (= lt!414699 (getCurrentListMap!3073 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!923149 () Bool)

(assert (=> b!923149 (= e!517976 e!517980)))

(declare-fun res!622587 () Bool)

(assert (=> b!923149 (=> (not res!622587) (not e!517980))))

(assert (=> b!923149 (= res!622587 (contains!4879 lt!414700 k0!1099))))

(assert (=> b!923149 (= lt!414700 (getCurrentListMap!3073 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!923150 () Bool)

(declare-fun res!622582 () Bool)

(assert (=> b!923150 (=> (not res!622582) (not e!517973))))

(assert (=> b!923150 (= res!622582 (and (= (size!27053 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27054 _keys!1487) (size!27053 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!923151 () Bool)

(assert (=> b!923151 (= e!517970 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!923152 () Bool)

(declare-fun res!622586 () Bool)

(assert (=> b!923152 (=> (not res!622586) (not e!517973))))

(assert (=> b!923152 (= res!622586 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18802))))

(assert (= (and start!78966 res!622583) b!923150))

(assert (= (and b!923150 res!622582) b!923147))

(assert (= (and b!923147 res!622584) b!923152))

(assert (= (and b!923152 res!622586) b!923137))

(assert (= (and b!923137 res!622581) b!923148))

(assert (= (and b!923148 res!622589) b!923145))

(assert (= (and b!923145 res!622585) b!923144))

(assert (= (and b!923144 c!96156) b!923141))

(assert (= (and b!923144 (not c!96156)) b!923142))

(assert (= (and b!923141 c!96157) b!923140))

(assert (= (and b!923141 (not c!96157)) b!923146))

(assert (= (and b!923140 c!96158) b!923136))

(assert (= (and b!923140 (not c!96158)) b!923151))

(assert (= (and b!923144 res!622588) b!923149))

(assert (= (and b!923149 res!622587) b!923138))

(assert (= (and b!923135 condMapEmpty!31245) mapIsEmpty!31245))

(assert (= (and b!923135 (not condMapEmpty!31245)) mapNonEmpty!31245))

(get-info :version)

(assert (= (and mapNonEmpty!31245 ((_ is ValueCellFull!9348) mapValue!31245)) b!923143))

(assert (= (and b!923135 ((_ is ValueCellFull!9348) mapDefault!31245)) b!923139))

(assert (= start!78966 b!923135))

(declare-fun b_lambda!13683 () Bool)

(assert (=> (not b_lambda!13683) (not b!923140)))

(declare-fun t!26692 () Bool)

(declare-fun tb!5739 () Bool)

(assert (=> (and start!78966 (= defaultEntry!1235 defaultEntry!1235) t!26692) tb!5739))

(declare-fun result!11293 () Bool)

(assert (=> tb!5739 (= result!11293 tp_is_empty!19659)))

(assert (=> b!923140 t!26692))

(declare-fun b_and!28059 () Bool)

(assert (= b_and!28057 (and (=> t!26692 result!11293) b_and!28059)))

(declare-fun m!857427 () Bool)

(assert (=> b!923140 m!857427))

(declare-fun m!857429 () Bool)

(assert (=> b!923140 m!857429))

(declare-fun m!857431 () Bool)

(assert (=> b!923140 m!857431))

(declare-fun m!857433 () Bool)

(assert (=> b!923140 m!857433))

(assert (=> b!923140 m!857431))

(declare-fun m!857435 () Bool)

(assert (=> b!923140 m!857435))

(declare-fun m!857437 () Bool)

(assert (=> b!923140 m!857437))

(declare-fun m!857439 () Bool)

(assert (=> b!923140 m!857439))

(declare-fun m!857441 () Bool)

(assert (=> b!923140 m!857441))

(declare-fun m!857443 () Bool)

(assert (=> b!923140 m!857443))

(declare-fun m!857445 () Bool)

(assert (=> b!923140 m!857445))

(declare-fun m!857447 () Bool)

(assert (=> b!923140 m!857447))

(assert (=> b!923140 m!857433))

(declare-fun m!857449 () Bool)

(assert (=> b!923140 m!857449))

(declare-fun m!857451 () Bool)

(assert (=> b!923140 m!857451))

(assert (=> b!923140 m!857449))

(declare-fun m!857453 () Bool)

(assert (=> b!923140 m!857453))

(declare-fun m!857455 () Bool)

(assert (=> b!923140 m!857455))

(declare-fun m!857457 () Bool)

(assert (=> b!923140 m!857457))

(declare-fun m!857459 () Bool)

(assert (=> start!78966 m!857459))

(declare-fun m!857461 () Bool)

(assert (=> start!78966 m!857461))

(declare-fun m!857463 () Bool)

(assert (=> start!78966 m!857463))

(declare-fun m!857465 () Bool)

(assert (=> b!923138 m!857465))

(declare-fun m!857467 () Bool)

(assert (=> mapNonEmpty!31245 m!857467))

(declare-fun m!857469 () Bool)

(assert (=> b!923144 m!857469))

(declare-fun m!857471 () Bool)

(assert (=> b!923145 m!857471))

(declare-fun m!857473 () Bool)

(assert (=> b!923148 m!857473))

(declare-fun m!857475 () Bool)

(assert (=> b!923148 m!857475))

(declare-fun m!857477 () Bool)

(assert (=> b!923147 m!857477))

(declare-fun m!857479 () Bool)

(assert (=> b!923141 m!857479))

(declare-fun m!857481 () Bool)

(assert (=> b!923141 m!857481))

(declare-fun m!857483 () Bool)

(assert (=> b!923152 m!857483))

(declare-fun m!857485 () Bool)

(assert (=> b!923136 m!857485))

(declare-fun m!857487 () Bool)

(assert (=> b!923149 m!857487))

(assert (=> b!923149 m!857437))

(check-sat (not b!923141) (not b!923148) (not b!923138) (not b!923140) (not mapNonEmpty!31245) (not b!923145) (not b_lambda!13683) b_and!28059 (not start!78966) (not b!923144) (not b!923147) tp_is_empty!19659 (not b!923152) (not b_next!17151) (not b!923149) (not b!923136))
(check-sat b_and!28059 (not b_next!17151))
