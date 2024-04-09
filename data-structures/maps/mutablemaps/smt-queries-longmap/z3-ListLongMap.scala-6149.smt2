; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79032 () Bool)

(assert start!79032)

(declare-fun b_free!17217 () Bool)

(declare-fun b_next!17217 () Bool)

(assert (=> start!79032 (= b_free!17217 (not b_next!17217))))

(declare-fun tp!60093 () Bool)

(declare-fun b_and!28189 () Bool)

(assert (=> start!79032 (= tp!60093 b_and!28189)))

(declare-fun b!924993 () Bool)

(declare-datatypes ((Unit!31252 0))(
  ( (Unit!31253) )
))
(declare-fun e!519163 () Unit!31252)

(declare-fun e!519170 () Unit!31252)

(assert (=> b!924993 (= e!519163 e!519170)))

(declare-fun lt!416188 () (_ BitVec 64))

(declare-datatypes ((array!55432 0))(
  ( (array!55433 (arr!26657 (Array (_ BitVec 32) (_ BitVec 64))) (size!27117 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55432)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!924993 (= lt!416188 (select (arr!26657 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96455 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924993 (= c!96455 (validKeyInArray!0 lt!416188))))

(declare-fun b!924994 () Bool)

(declare-fun e!519166 () Bool)

(declare-fun tp_is_empty!19725 () Bool)

(assert (=> b!924994 (= e!519166 tp_is_empty!19725)))

(declare-fun b!924995 () Bool)

(declare-fun res!623482 () Bool)

(declare-fun e!519173 () Bool)

(assert (=> b!924995 (=> (not res!623482) (not e!519173))))

(assert (=> b!924995 (= res!623482 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27117 _keys!1487))))))

(declare-fun b!924996 () Bool)

(declare-fun e!519172 () Bool)

(assert (=> b!924996 (= e!519172 (not true))))

(declare-fun e!519164 () Bool)

(assert (=> b!924996 e!519164))

(declare-fun res!623486 () Bool)

(assert (=> b!924996 (=> (not res!623486) (not e!519164))))

(declare-datatypes ((V!31265 0))(
  ( (V!31266 (val!9913 Int)) )
))
(declare-datatypes ((tuple2!13028 0))(
  ( (tuple2!13029 (_1!6524 (_ BitVec 64)) (_2!6524 V!31265)) )
))
(declare-datatypes ((List!18864 0))(
  ( (Nil!18861) (Cons!18860 (h!20006 tuple2!13028) (t!26819 List!18864)) )
))
(declare-datatypes ((ListLongMap!11739 0))(
  ( (ListLongMap!11740 (toList!5885 List!18864)) )
))
(declare-fun lt!416181 () ListLongMap!11739)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4909 (ListLongMap!11739 (_ BitVec 64)) Bool)

(assert (=> b!924996 (= res!623486 (contains!4909 lt!416181 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9381 0))(
  ( (ValueCellFull!9381 (v!12431 V!31265)) (EmptyCell!9381) )
))
(declare-datatypes ((array!55434 0))(
  ( (array!55435 (arr!26658 (Array (_ BitVec 32) ValueCell!9381)) (size!27118 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55434)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31265)

(declare-fun minValue!1173 () V!31265)

(declare-fun getCurrentListMap!3103 (array!55432 array!55434 (_ BitVec 32) (_ BitVec 32) V!31265 V!31265 (_ BitVec 32) Int) ListLongMap!11739)

(assert (=> b!924996 (= lt!416181 (getCurrentListMap!3103 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31265)

(declare-fun lt!416182 () Unit!31252)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!71 (array!55432 array!55434 (_ BitVec 32) (_ BitVec 32) V!31265 V!31265 (_ BitVec 64) V!31265 (_ BitVec 32) Int) Unit!31252)

(assert (=> b!924996 (= lt!416182 (lemmaListMapApplyFromThenApplyFromZero!71 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!924997 () Bool)

(declare-fun e!519174 () Bool)

(declare-fun e!519165 () Bool)

(assert (=> b!924997 (= e!519174 e!519165)))

(declare-fun res!623485 () Bool)

(assert (=> b!924997 (=> (not res!623485) (not e!519165))))

(assert (=> b!924997 (= res!623485 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27117 _keys!1487)))))

(declare-fun lt!416178 () Unit!31252)

(assert (=> b!924997 (= lt!416178 e!519163)))

(declare-fun c!96454 () Bool)

(assert (=> b!924997 (= c!96454 (validKeyInArray!0 k0!1099))))

(declare-fun b!924998 () Bool)

(declare-fun e!519169 () Bool)

(assert (=> b!924998 (= e!519169 tp_is_empty!19725)))

(declare-fun mapIsEmpty!31344 () Bool)

(declare-fun mapRes!31344 () Bool)

(assert (=> mapIsEmpty!31344 mapRes!31344))

(declare-fun b!924999 () Bool)

(declare-fun res!623484 () Bool)

(assert (=> b!924999 (=> (not res!623484) (not e!519173))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55432 (_ BitVec 32)) Bool)

(assert (=> b!924999 (= res!623484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31344 () Bool)

(declare-fun tp!60092 () Bool)

(assert (=> mapNonEmpty!31344 (= mapRes!31344 (and tp!60092 e!519169))))

(declare-fun mapKey!31344 () (_ BitVec 32))

(declare-fun mapRest!31344 () (Array (_ BitVec 32) ValueCell!9381))

(declare-fun mapValue!31344 () ValueCell!9381)

(assert (=> mapNonEmpty!31344 (= (arr!26658 _values!1231) (store mapRest!31344 mapKey!31344 mapValue!31344))))

(declare-fun b!925000 () Bool)

(declare-fun res!623492 () Bool)

(assert (=> b!925000 (=> (not res!623492) (not e!519173))))

(declare-datatypes ((List!18865 0))(
  ( (Nil!18862) (Cons!18861 (h!20007 (_ BitVec 64)) (t!26820 List!18865)) )
))
(declare-fun arrayNoDuplicates!0 (array!55432 (_ BitVec 32) List!18865) Bool)

(assert (=> b!925000 (= res!623492 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18862))))

(declare-fun b!925001 () Bool)

(declare-fun e!519167 () Bool)

(assert (=> b!925001 (= e!519167 e!519174)))

(declare-fun res!623491 () Bool)

(assert (=> b!925001 (=> (not res!623491) (not e!519174))))

(declare-fun lt!416180 () V!31265)

(assert (=> b!925001 (= res!623491 (and (= lt!416180 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!416183 () ListLongMap!11739)

(declare-fun apply!686 (ListLongMap!11739 (_ BitVec 64)) V!31265)

(assert (=> b!925001 (= lt!416180 (apply!686 lt!416183 k0!1099))))

(declare-fun b!925002 () Bool)

(assert (=> b!925002 (= e!519165 e!519172)))

(declare-fun res!623489 () Bool)

(assert (=> b!925002 (=> (not res!623489) (not e!519172))))

(declare-fun lt!416192 () ListLongMap!11739)

(assert (=> b!925002 (= res!623489 (contains!4909 lt!416192 k0!1099))))

(assert (=> b!925002 (= lt!416192 (getCurrentListMap!3103 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!623490 () Bool)

(assert (=> start!79032 (=> (not res!623490) (not e!519173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79032 (= res!623490 (validMask!0 mask!1881))))

(assert (=> start!79032 e!519173))

(assert (=> start!79032 true))

(assert (=> start!79032 tp_is_empty!19725))

(declare-fun e!519171 () Bool)

(declare-fun array_inv!20758 (array!55434) Bool)

(assert (=> start!79032 (and (array_inv!20758 _values!1231) e!519171)))

(assert (=> start!79032 tp!60093))

(declare-fun array_inv!20759 (array!55432) Bool)

(assert (=> start!79032 (array_inv!20759 _keys!1487)))

(declare-fun b!925003 () Bool)

(declare-fun res!623487 () Bool)

(assert (=> b!925003 (=> (not res!623487) (not e!519173))))

(assert (=> b!925003 (= res!623487 (and (= (size!27118 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27117 _keys!1487) (size!27118 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!925004 () Bool)

(declare-fun Unit!31254 () Unit!31252)

(assert (=> b!925004 (= e!519170 Unit!31254)))

(declare-fun b!925005 () Bool)

(assert (=> b!925005 (= e!519171 (and e!519166 mapRes!31344))))

(declare-fun condMapEmpty!31344 () Bool)

(declare-fun mapDefault!31344 () ValueCell!9381)

(assert (=> b!925005 (= condMapEmpty!31344 (= (arr!26658 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9381)) mapDefault!31344)))))

(declare-fun b!925006 () Bool)

(declare-fun lt!416184 () ListLongMap!11739)

(assert (=> b!925006 (= (apply!686 lt!416184 k0!1099) lt!416180)))

(declare-fun lt!416186 () V!31265)

(declare-fun lt!416191 () Unit!31252)

(declare-fun addApplyDifferent!375 (ListLongMap!11739 (_ BitVec 64) V!31265 (_ BitVec 64)) Unit!31252)

(assert (=> b!925006 (= lt!416191 (addApplyDifferent!375 lt!416183 lt!416188 lt!416186 k0!1099))))

(assert (=> b!925006 (not (= lt!416188 k0!1099))))

(declare-fun lt!416185 () Unit!31252)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55432 (_ BitVec 64) (_ BitVec 32) List!18865) Unit!31252)

(assert (=> b!925006 (= lt!416185 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18862))))

(declare-fun e!519162 () Bool)

(assert (=> b!925006 e!519162))

(declare-fun c!96453 () Bool)

(assert (=> b!925006 (= c!96453 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!416190 () Unit!31252)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!235 (array!55432 array!55434 (_ BitVec 32) (_ BitVec 32) V!31265 V!31265 (_ BitVec 64) (_ BitVec 32) Int) Unit!31252)

(assert (=> b!925006 (= lt!416190 (lemmaListMapContainsThenArrayContainsFrom!235 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!925006 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18862)))

(declare-fun lt!416193 () Unit!31252)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55432 (_ BitVec 32) (_ BitVec 32)) Unit!31252)

(assert (=> b!925006 (= lt!416193 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!925006 (contains!4909 lt!416184 k0!1099)))

(declare-fun lt!416187 () tuple2!13028)

(declare-fun +!2689 (ListLongMap!11739 tuple2!13028) ListLongMap!11739)

(assert (=> b!925006 (= lt!416184 (+!2689 lt!416183 lt!416187))))

(declare-fun lt!416189 () Unit!31252)

(declare-fun addStillContains!451 (ListLongMap!11739 (_ BitVec 64) V!31265 (_ BitVec 64)) Unit!31252)

(assert (=> b!925006 (= lt!416189 (addStillContains!451 lt!416183 lt!416188 lt!416186 k0!1099))))

(assert (=> b!925006 (= (getCurrentListMap!3103 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2689 (getCurrentListMap!3103 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!416187))))

(assert (=> b!925006 (= lt!416187 (tuple2!13029 lt!416188 lt!416186))))

(declare-fun get!14040 (ValueCell!9381 V!31265) V!31265)

(declare-fun dynLambda!1528 (Int (_ BitVec 64)) V!31265)

(assert (=> b!925006 (= lt!416186 (get!14040 (select (arr!26658 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1528 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!416179 () Unit!31252)

(declare-fun lemmaListMapRecursiveValidKeyArray!124 (array!55432 array!55434 (_ BitVec 32) (_ BitVec 32) V!31265 V!31265 (_ BitVec 32) Int) Unit!31252)

(assert (=> b!925006 (= lt!416179 (lemmaListMapRecursiveValidKeyArray!124 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!925006 (= e!519170 lt!416191)))

(declare-fun b!925007 () Bool)

(assert (=> b!925007 (= e!519164 (= (apply!686 lt!416181 k0!1099) v!791))))

(declare-fun b!925008 () Bool)

(assert (=> b!925008 (= e!519173 e!519167)))

(declare-fun res!623483 () Bool)

(assert (=> b!925008 (=> (not res!623483) (not e!519167))))

(assert (=> b!925008 (= res!623483 (contains!4909 lt!416183 k0!1099))))

(assert (=> b!925008 (= lt!416183 (getCurrentListMap!3103 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!925009 () Bool)

(assert (=> b!925009 (= e!519162 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!925010 () Bool)

(declare-fun res!623488 () Bool)

(assert (=> b!925010 (=> (not res!623488) (not e!519172))))

(assert (=> b!925010 (= res!623488 (= (apply!686 lt!416192 k0!1099) v!791))))

(declare-fun b!925011 () Bool)

(declare-fun arrayContainsKey!0 (array!55432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!925011 (= e!519162 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!925012 () Bool)

(declare-fun Unit!31255 () Unit!31252)

(assert (=> b!925012 (= e!519163 Unit!31255)))

(assert (= (and start!79032 res!623490) b!925003))

(assert (= (and b!925003 res!623487) b!924999))

(assert (= (and b!924999 res!623484) b!925000))

(assert (= (and b!925000 res!623492) b!924995))

(assert (= (and b!924995 res!623482) b!925008))

(assert (= (and b!925008 res!623483) b!925001))

(assert (= (and b!925001 res!623491) b!924997))

(assert (= (and b!924997 c!96454) b!924993))

(assert (= (and b!924997 (not c!96454)) b!925012))

(assert (= (and b!924993 c!96455) b!925006))

(assert (= (and b!924993 (not c!96455)) b!925004))

(assert (= (and b!925006 c!96453) b!925011))

(assert (= (and b!925006 (not c!96453)) b!925009))

(assert (= (and b!924997 res!623485) b!925002))

(assert (= (and b!925002 res!623489) b!925010))

(assert (= (and b!925010 res!623488) b!924996))

(assert (= (and b!924996 res!623486) b!925007))

(assert (= (and b!925005 condMapEmpty!31344) mapIsEmpty!31344))

(assert (= (and b!925005 (not condMapEmpty!31344)) mapNonEmpty!31344))

(get-info :version)

(assert (= (and mapNonEmpty!31344 ((_ is ValueCellFull!9381) mapValue!31344)) b!924998))

(assert (= (and b!925005 ((_ is ValueCellFull!9381) mapDefault!31344)) b!924994))

(assert (= start!79032 b!925005))

(declare-fun b_lambda!13749 () Bool)

(assert (=> (not b_lambda!13749) (not b!925006)))

(declare-fun t!26818 () Bool)

(declare-fun tb!5805 () Bool)

(assert (=> (and start!79032 (= defaultEntry!1235 defaultEntry!1235) t!26818) tb!5805))

(declare-fun result!11425 () Bool)

(assert (=> tb!5805 (= result!11425 tp_is_empty!19725)))

(assert (=> b!925006 t!26818))

(declare-fun b_and!28191 () Bool)

(assert (= b_and!28189 (and (=> t!26818 result!11425) b_and!28191)))

(declare-fun m!859481 () Bool)

(assert (=> mapNonEmpty!31344 m!859481))

(declare-fun m!859483 () Bool)

(assert (=> b!924993 m!859483))

(declare-fun m!859485 () Bool)

(assert (=> b!924993 m!859485))

(declare-fun m!859487 () Bool)

(assert (=> b!924997 m!859487))

(declare-fun m!859489 () Bool)

(assert (=> b!924996 m!859489))

(declare-fun m!859491 () Bool)

(assert (=> b!924996 m!859491))

(declare-fun m!859493 () Bool)

(assert (=> b!924996 m!859493))

(declare-fun m!859495 () Bool)

(assert (=> b!925011 m!859495))

(declare-fun m!859497 () Bool)

(assert (=> b!925007 m!859497))

(declare-fun m!859499 () Bool)

(assert (=> b!925006 m!859499))

(declare-fun m!859501 () Bool)

(assert (=> b!925006 m!859501))

(declare-fun m!859503 () Bool)

(assert (=> b!925006 m!859503))

(declare-fun m!859505 () Bool)

(assert (=> b!925006 m!859505))

(declare-fun m!859507 () Bool)

(assert (=> b!925006 m!859507))

(assert (=> b!925006 m!859499))

(assert (=> b!925006 m!859503))

(declare-fun m!859509 () Bool)

(assert (=> b!925006 m!859509))

(declare-fun m!859511 () Bool)

(assert (=> b!925006 m!859511))

(declare-fun m!859513 () Bool)

(assert (=> b!925006 m!859513))

(declare-fun m!859515 () Bool)

(assert (=> b!925006 m!859515))

(declare-fun m!859517 () Bool)

(assert (=> b!925006 m!859517))

(declare-fun m!859519 () Bool)

(assert (=> b!925006 m!859519))

(declare-fun m!859521 () Bool)

(assert (=> b!925006 m!859521))

(declare-fun m!859523 () Bool)

(assert (=> b!925006 m!859523))

(declare-fun m!859525 () Bool)

(assert (=> b!925006 m!859525))

(assert (=> b!925006 m!859521))

(declare-fun m!859527 () Bool)

(assert (=> b!925006 m!859527))

(declare-fun m!859529 () Bool)

(assert (=> b!925006 m!859529))

(declare-fun m!859531 () Bool)

(assert (=> b!925001 m!859531))

(declare-fun m!859533 () Bool)

(assert (=> start!79032 m!859533))

(declare-fun m!859535 () Bool)

(assert (=> start!79032 m!859535))

(declare-fun m!859537 () Bool)

(assert (=> start!79032 m!859537))

(declare-fun m!859539 () Bool)

(assert (=> b!925000 m!859539))

(declare-fun m!859541 () Bool)

(assert (=> b!925008 m!859541))

(declare-fun m!859543 () Bool)

(assert (=> b!925008 m!859543))

(declare-fun m!859545 () Bool)

(assert (=> b!925002 m!859545))

(assert (=> b!925002 m!859511))

(declare-fun m!859547 () Bool)

(assert (=> b!924999 m!859547))

(declare-fun m!859549 () Bool)

(assert (=> b!925010 m!859549))

(check-sat (not b!924997) (not b!924996) (not b!925001) (not mapNonEmpty!31344) (not b!925007) (not b!925010) (not b!924993) (not b!925000) (not b_next!17217) (not b_lambda!13749) (not b!925011) b_and!28191 (not b!925006) (not start!79032) (not b!925008) (not b!925002) (not b!924999) tp_is_empty!19725)
(check-sat b_and!28191 (not b_next!17217))
