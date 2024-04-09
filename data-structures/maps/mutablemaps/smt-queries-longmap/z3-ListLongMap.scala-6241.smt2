; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79900 () Bool)

(assert start!79900)

(declare-fun b_free!17769 () Bool)

(declare-fun b_next!17769 () Bool)

(assert (=> start!79900 (= b_free!17769 (not b_next!17769))))

(declare-fun tp!61772 () Bool)

(declare-fun b_and!29195 () Bool)

(assert (=> start!79900 (= tp!61772 b_and!29195)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun e!527547 () Bool)

(declare-fun b!939180 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((array!56518 0))(
  ( (array!56519 (arr!27193 (Array (_ BitVec 32) (_ BitVec 64))) (size!27653 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56518)

(declare-fun arrayContainsKey!0 (array!56518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!939180 (= e!527547 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!939181 () Bool)

(declare-fun res!631835 () Bool)

(declare-fun e!527551 () Bool)

(assert (=> b!939181 (=> (not res!631835) (not e!527551))))

(declare-datatypes ((List!19303 0))(
  ( (Nil!19300) (Cons!19299 (h!20445 (_ BitVec 64)) (t!27624 List!19303)) )
))
(declare-fun arrayNoDuplicates!0 (array!56518 (_ BitVec 32) List!19303) Bool)

(assert (=> b!939181 (= res!631835 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19300))))

(declare-fun b!939182 () Bool)

(declare-fun e!527549 () Bool)

(declare-fun e!527545 () Bool)

(assert (=> b!939182 (= e!527549 e!527545)))

(declare-fun res!631841 () Bool)

(assert (=> b!939182 (=> (not res!631841) (not e!527545))))

(assert (=> b!939182 (= res!631841 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27653 _keys!1487)))))

(declare-datatypes ((Unit!31745 0))(
  ( (Unit!31746) )
))
(declare-fun lt!424407 () Unit!31745)

(declare-fun e!527544 () Unit!31745)

(assert (=> b!939182 (= lt!424407 e!527544)))

(declare-fun c!97910 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!939182 (= c!97910 (validKeyInArray!0 k0!1099))))

(declare-fun b!939183 () Bool)

(declare-fun e!527543 () Bool)

(assert (=> b!939183 (= e!527543 (not true))))

(declare-datatypes ((V!32001 0))(
  ( (V!32002 (val!10189 Int)) )
))
(declare-fun lt!424419 () V!32001)

(declare-datatypes ((tuple2!13496 0))(
  ( (tuple2!13497 (_1!6758 (_ BitVec 64)) (_2!6758 V!32001)) )
))
(declare-datatypes ((List!19304 0))(
  ( (Nil!19301) (Cons!19300 (h!20446 tuple2!13496) (t!27625 List!19304)) )
))
(declare-datatypes ((ListLongMap!12207 0))(
  ( (ListLongMap!12208 (toList!6119 List!19304)) )
))
(declare-fun lt!424417 () ListLongMap!12207)

(declare-fun apply!897 (ListLongMap!12207 (_ BitVec 64)) V!32001)

(assert (=> b!939183 (= lt!424419 (apply!897 lt!424417 k0!1099))))

(declare-fun e!527553 () Bool)

(assert (=> b!939183 e!527553))

(declare-fun res!631836 () Bool)

(assert (=> b!939183 (=> (not res!631836) (not e!527553))))

(declare-fun contains!5132 (ListLongMap!12207 (_ BitVec 64)) Bool)

(assert (=> b!939183 (= res!631836 (contains!5132 lt!424417 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9657 0))(
  ( (ValueCellFull!9657 (v!12720 V!32001)) (EmptyCell!9657) )
))
(declare-datatypes ((array!56520 0))(
  ( (array!56521 (arr!27194 (Array (_ BitVec 32) ValueCell!9657)) (size!27654 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56520)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!32001)

(declare-fun minValue!1173 () V!32001)

(declare-fun getCurrentListMap!3307 (array!56518 array!56520 (_ BitVec 32) (_ BitVec 32) V!32001 V!32001 (_ BitVec 32) Int) ListLongMap!12207)

(assert (=> b!939183 (= lt!424417 (getCurrentListMap!3307 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!32001)

(declare-fun lt!424406 () Unit!31745)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!111 (array!56518 array!56520 (_ BitVec 32) (_ BitVec 32) V!32001 V!32001 (_ BitVec 64) V!32001 (_ BitVec 32) Int) Unit!31745)

(assert (=> b!939183 (= lt!424406 (lemmaListMapApplyFromThenApplyFromZero!111 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!939184 () Bool)

(declare-fun e!527552 () Unit!31745)

(assert (=> b!939184 (= e!527544 e!527552)))

(declare-fun lt!424422 () (_ BitVec 64))

(assert (=> b!939184 (= lt!424422 (select (arr!27193 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97909 () Bool)

(assert (=> b!939184 (= c!97909 (validKeyInArray!0 lt!424422))))

(declare-fun b!939185 () Bool)

(declare-fun res!631840 () Bool)

(assert (=> b!939185 (=> (not res!631840) (not e!527543))))

(declare-fun lt!424408 () ListLongMap!12207)

(assert (=> b!939185 (= res!631840 (= (apply!897 lt!424408 k0!1099) v!791))))

(declare-fun mapIsEmpty!32195 () Bool)

(declare-fun mapRes!32195 () Bool)

(assert (=> mapIsEmpty!32195 mapRes!32195))

(declare-fun b!939186 () Bool)

(assert (=> b!939186 (= e!527547 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!939187 () Bool)

(declare-fun Unit!31747 () Unit!31745)

(assert (=> b!939187 (= e!527552 Unit!31747)))

(declare-fun b!939189 () Bool)

(declare-fun e!527555 () Bool)

(assert (=> b!939189 (= e!527551 e!527555)))

(declare-fun res!631843 () Bool)

(assert (=> b!939189 (=> (not res!631843) (not e!527555))))

(declare-fun lt!424420 () ListLongMap!12207)

(assert (=> b!939189 (= res!631843 (contains!5132 lt!424420 k0!1099))))

(assert (=> b!939189 (= lt!424420 (getCurrentListMap!3307 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!939190 () Bool)

(assert (=> b!939190 (= e!527555 e!527549)))

(declare-fun res!631839 () Bool)

(assert (=> b!939190 (=> (not res!631839) (not e!527549))))

(declare-fun lt!424413 () V!32001)

(assert (=> b!939190 (= res!631839 (and (= lt!424413 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!939190 (= lt!424413 (apply!897 lt!424420 k0!1099))))

(declare-fun b!939191 () Bool)

(declare-fun e!527550 () Bool)

(declare-fun tp_is_empty!20277 () Bool)

(assert (=> b!939191 (= e!527550 tp_is_empty!20277)))

(declare-fun b!939192 () Bool)

(declare-fun e!527548 () Bool)

(assert (=> b!939192 (= e!527548 tp_is_empty!20277)))

(declare-fun b!939193 () Bool)

(declare-fun e!527546 () Bool)

(assert (=> b!939193 (= e!527546 (and e!527548 mapRes!32195))))

(declare-fun condMapEmpty!32195 () Bool)

(declare-fun mapDefault!32195 () ValueCell!9657)

(assert (=> b!939193 (= condMapEmpty!32195 (= (arr!27194 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9657)) mapDefault!32195)))))

(declare-fun b!939194 () Bool)

(assert (=> b!939194 (= e!527545 e!527543)))

(declare-fun res!631844 () Bool)

(assert (=> b!939194 (=> (not res!631844) (not e!527543))))

(assert (=> b!939194 (= res!631844 (contains!5132 lt!424408 k0!1099))))

(assert (=> b!939194 (= lt!424408 (getCurrentListMap!3307 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!939195 () Bool)

(declare-fun res!631834 () Bool)

(assert (=> b!939195 (=> (not res!631834) (not e!527551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56518 (_ BitVec 32)) Bool)

(assert (=> b!939195 (= res!631834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!939196 () Bool)

(assert (=> b!939196 (= e!527553 (= (apply!897 lt!424417 k0!1099) v!791))))

(declare-fun b!939197 () Bool)

(declare-fun lt!424409 () ListLongMap!12207)

(assert (=> b!939197 (= (apply!897 lt!424409 k0!1099) lt!424413)))

(declare-fun lt!424412 () Unit!31745)

(declare-fun lt!424418 () V!32001)

(declare-fun addApplyDifferent!443 (ListLongMap!12207 (_ BitVec 64) V!32001 (_ BitVec 64)) Unit!31745)

(assert (=> b!939197 (= lt!424412 (addApplyDifferent!443 lt!424420 lt!424422 lt!424418 k0!1099))))

(assert (=> b!939197 (not (= lt!424422 k0!1099))))

(declare-fun lt!424421 () Unit!31745)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56518 (_ BitVec 64) (_ BitVec 32) List!19303) Unit!31745)

(assert (=> b!939197 (= lt!424421 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19300))))

(assert (=> b!939197 e!527547))

(declare-fun c!97911 () Bool)

(assert (=> b!939197 (= c!97911 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!424410 () Unit!31745)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!326 (array!56518 array!56520 (_ BitVec 32) (_ BitVec 32) V!32001 V!32001 (_ BitVec 64) (_ BitVec 32) Int) Unit!31745)

(assert (=> b!939197 (= lt!424410 (lemmaListMapContainsThenArrayContainsFrom!326 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!939197 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19300)))

(declare-fun lt!424411 () Unit!31745)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56518 (_ BitVec 32) (_ BitVec 32)) Unit!31745)

(assert (=> b!939197 (= lt!424411 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!939197 (contains!5132 lt!424409 k0!1099)))

(declare-fun lt!424416 () tuple2!13496)

(declare-fun +!2813 (ListLongMap!12207 tuple2!13496) ListLongMap!12207)

(assert (=> b!939197 (= lt!424409 (+!2813 lt!424420 lt!424416))))

(declare-fun lt!424414 () Unit!31745)

(declare-fun addStillContains!569 (ListLongMap!12207 (_ BitVec 64) V!32001 (_ BitVec 64)) Unit!31745)

(assert (=> b!939197 (= lt!424414 (addStillContains!569 lt!424420 lt!424422 lt!424418 k0!1099))))

(assert (=> b!939197 (= (getCurrentListMap!3307 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2813 (getCurrentListMap!3307 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!424416))))

(assert (=> b!939197 (= lt!424416 (tuple2!13497 lt!424422 lt!424418))))

(declare-fun get!14369 (ValueCell!9657 V!32001) V!32001)

(declare-fun dynLambda!1652 (Int (_ BitVec 64)) V!32001)

(assert (=> b!939197 (= lt!424418 (get!14369 (select (arr!27194 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1652 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!424415 () Unit!31745)

(declare-fun lemmaListMapRecursiveValidKeyArray!248 (array!56518 array!56520 (_ BitVec 32) (_ BitVec 32) V!32001 V!32001 (_ BitVec 32) Int) Unit!31745)

(assert (=> b!939197 (= lt!424415 (lemmaListMapRecursiveValidKeyArray!248 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!939197 (= e!527552 lt!424412)))

(declare-fun b!939198 () Bool)

(declare-fun res!631837 () Bool)

(assert (=> b!939198 (=> (not res!631837) (not e!527551))))

(assert (=> b!939198 (= res!631837 (and (= (size!27654 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27653 _keys!1487) (size!27654 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!939199 () Bool)

(declare-fun res!631838 () Bool)

(assert (=> b!939199 (=> (not res!631838) (not e!527551))))

(assert (=> b!939199 (= res!631838 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27653 _keys!1487))))))

(declare-fun mapNonEmpty!32195 () Bool)

(declare-fun tp!61771 () Bool)

(assert (=> mapNonEmpty!32195 (= mapRes!32195 (and tp!61771 e!527550))))

(declare-fun mapKey!32195 () (_ BitVec 32))

(declare-fun mapRest!32195 () (Array (_ BitVec 32) ValueCell!9657))

(declare-fun mapValue!32195 () ValueCell!9657)

(assert (=> mapNonEmpty!32195 (= (arr!27194 _values!1231) (store mapRest!32195 mapKey!32195 mapValue!32195))))

(declare-fun res!631842 () Bool)

(assert (=> start!79900 (=> (not res!631842) (not e!527551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79900 (= res!631842 (validMask!0 mask!1881))))

(assert (=> start!79900 e!527551))

(assert (=> start!79900 true))

(assert (=> start!79900 tp_is_empty!20277))

(declare-fun array_inv!21104 (array!56520) Bool)

(assert (=> start!79900 (and (array_inv!21104 _values!1231) e!527546)))

(assert (=> start!79900 tp!61772))

(declare-fun array_inv!21105 (array!56518) Bool)

(assert (=> start!79900 (array_inv!21105 _keys!1487)))

(declare-fun b!939188 () Bool)

(declare-fun Unit!31748 () Unit!31745)

(assert (=> b!939188 (= e!527544 Unit!31748)))

(assert (= (and start!79900 res!631842) b!939198))

(assert (= (and b!939198 res!631837) b!939195))

(assert (= (and b!939195 res!631834) b!939181))

(assert (= (and b!939181 res!631835) b!939199))

(assert (= (and b!939199 res!631838) b!939189))

(assert (= (and b!939189 res!631843) b!939190))

(assert (= (and b!939190 res!631839) b!939182))

(assert (= (and b!939182 c!97910) b!939184))

(assert (= (and b!939182 (not c!97910)) b!939188))

(assert (= (and b!939184 c!97909) b!939197))

(assert (= (and b!939184 (not c!97909)) b!939187))

(assert (= (and b!939197 c!97911) b!939180))

(assert (= (and b!939197 (not c!97911)) b!939186))

(assert (= (and b!939182 res!631841) b!939194))

(assert (= (and b!939194 res!631844) b!939185))

(assert (= (and b!939185 res!631840) b!939183))

(assert (= (and b!939183 res!631836) b!939196))

(assert (= (and b!939193 condMapEmpty!32195) mapIsEmpty!32195))

(assert (= (and b!939193 (not condMapEmpty!32195)) mapNonEmpty!32195))

(get-info :version)

(assert (= (and mapNonEmpty!32195 ((_ is ValueCellFull!9657) mapValue!32195)) b!939191))

(assert (= (and b!939193 ((_ is ValueCellFull!9657) mapDefault!32195)) b!939192))

(assert (= start!79900 b!939193))

(declare-fun b_lambda!14305 () Bool)

(assert (=> (not b_lambda!14305) (not b!939197)))

(declare-fun t!27623 () Bool)

(declare-fun tb!6171 () Bool)

(assert (=> (and start!79900 (= defaultEntry!1235 defaultEntry!1235) t!27623) tb!6171))

(declare-fun result!12171 () Bool)

(assert (=> tb!6171 (= result!12171 tp_is_empty!20277)))

(assert (=> b!939197 t!27623))

(declare-fun b_and!29197 () Bool)

(assert (= b_and!29195 (and (=> t!27623 result!12171) b_and!29197)))

(declare-fun m!875119 () Bool)

(assert (=> b!939195 m!875119))

(declare-fun m!875121 () Bool)

(assert (=> b!939184 m!875121))

(declare-fun m!875123 () Bool)

(assert (=> b!939184 m!875123))

(declare-fun m!875125 () Bool)

(assert (=> b!939180 m!875125))

(declare-fun m!875127 () Bool)

(assert (=> b!939183 m!875127))

(declare-fun m!875129 () Bool)

(assert (=> b!939183 m!875129))

(declare-fun m!875131 () Bool)

(assert (=> b!939183 m!875131))

(declare-fun m!875133 () Bool)

(assert (=> b!939183 m!875133))

(declare-fun m!875135 () Bool)

(assert (=> b!939185 m!875135))

(declare-fun m!875137 () Bool)

(assert (=> b!939197 m!875137))

(declare-fun m!875139 () Bool)

(assert (=> b!939197 m!875139))

(declare-fun m!875141 () Bool)

(assert (=> b!939197 m!875141))

(declare-fun m!875143 () Bool)

(assert (=> b!939197 m!875143))

(assert (=> b!939197 m!875139))

(assert (=> b!939197 m!875141))

(declare-fun m!875145 () Bool)

(assert (=> b!939197 m!875145))

(declare-fun m!875147 () Bool)

(assert (=> b!939197 m!875147))

(declare-fun m!875149 () Bool)

(assert (=> b!939197 m!875149))

(declare-fun m!875151 () Bool)

(assert (=> b!939197 m!875151))

(declare-fun m!875153 () Bool)

(assert (=> b!939197 m!875153))

(declare-fun m!875155 () Bool)

(assert (=> b!939197 m!875155))

(declare-fun m!875157 () Bool)

(assert (=> b!939197 m!875157))

(declare-fun m!875159 () Bool)

(assert (=> b!939197 m!875159))

(declare-fun m!875161 () Bool)

(assert (=> b!939197 m!875161))

(declare-fun m!875163 () Bool)

(assert (=> b!939197 m!875163))

(declare-fun m!875165 () Bool)

(assert (=> b!939197 m!875165))

(declare-fun m!875167 () Bool)

(assert (=> b!939197 m!875167))

(assert (=> b!939197 m!875165))

(declare-fun m!875169 () Bool)

(assert (=> mapNonEmpty!32195 m!875169))

(declare-fun m!875171 () Bool)

(assert (=> b!939189 m!875171))

(declare-fun m!875173 () Bool)

(assert (=> b!939189 m!875173))

(declare-fun m!875175 () Bool)

(assert (=> b!939194 m!875175))

(assert (=> b!939194 m!875147))

(declare-fun m!875177 () Bool)

(assert (=> start!79900 m!875177))

(declare-fun m!875179 () Bool)

(assert (=> start!79900 m!875179))

(declare-fun m!875181 () Bool)

(assert (=> start!79900 m!875181))

(assert (=> b!939196 m!875127))

(declare-fun m!875183 () Bool)

(assert (=> b!939181 m!875183))

(declare-fun m!875185 () Bool)

(assert (=> b!939182 m!875185))

(declare-fun m!875187 () Bool)

(assert (=> b!939190 m!875187))

(check-sat (not b!939184) (not b!939182) (not b!939180) (not b_next!17769) tp_is_empty!20277 (not b!939194) (not b!939196) (not mapNonEmpty!32195) (not b!939190) (not b!939181) b_and!29197 (not b!939185) (not start!79900) (not b!939195) (not b_lambda!14305) (not b!939183) (not b!939197) (not b!939189))
(check-sat b_and!29197 (not b_next!17769))
