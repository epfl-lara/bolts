; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79706 () Bool)

(assert start!79706)

(declare-fun b_free!17727 () Bool)

(declare-fun b_next!17727 () Bool)

(assert (=> start!79706 (= b_free!17727 (not b_next!17727))))

(declare-fun tp!61637 () Bool)

(declare-fun b_and!29063 () Bool)

(assert (=> start!79706 (= tp!61637 b_and!29063)))

(declare-fun b!936988 () Bool)

(declare-datatypes ((Unit!31633 0))(
  ( (Unit!31634) )
))
(declare-fun e!526184 () Unit!31633)

(declare-fun Unit!31635 () Unit!31633)

(assert (=> b!936988 (= e!526184 Unit!31635)))

(declare-fun res!630839 () Bool)

(declare-fun e!526180 () Bool)

(assert (=> start!79706 (=> (not res!630839) (not e!526180))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79706 (= res!630839 (validMask!0 mask!1881))))

(assert (=> start!79706 e!526180))

(assert (=> start!79706 true))

(declare-fun tp_is_empty!20235 () Bool)

(assert (=> start!79706 tp_is_empty!20235))

(declare-datatypes ((V!31945 0))(
  ( (V!31946 (val!10168 Int)) )
))
(declare-datatypes ((ValueCell!9636 0))(
  ( (ValueCellFull!9636 (v!12693 V!31945)) (EmptyCell!9636) )
))
(declare-datatypes ((array!56434 0))(
  ( (array!56435 (arr!27153 (Array (_ BitVec 32) ValueCell!9636)) (size!27613 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56434)

(declare-fun e!526179 () Bool)

(declare-fun array_inv!21082 (array!56434) Bool)

(assert (=> start!79706 (and (array_inv!21082 _values!1231) e!526179)))

(assert (=> start!79706 tp!61637))

(declare-datatypes ((array!56436 0))(
  ( (array!56437 (arr!27154 (Array (_ BitVec 32) (_ BitVec 64))) (size!27614 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56436)

(declare-fun array_inv!21083 (array!56436) Bool)

(assert (=> start!79706 (array_inv!21083 _keys!1487)))

(declare-fun b!936989 () Bool)

(declare-fun e!526178 () Unit!31633)

(assert (=> b!936989 (= e!526178 e!526184)))

(declare-fun lt!422720 () (_ BitVec 64))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!936989 (= lt!422720 (select (arr!27154 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97440 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936989 (= c!97440 (validKeyInArray!0 lt!422720))))

(declare-fun b!936990 () Bool)

(declare-fun res!630840 () Bool)

(assert (=> b!936990 (=> (not res!630840) (not e!526180))))

(assert (=> b!936990 (= res!630840 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27614 _keys!1487))))))

(declare-fun b!936991 () Bool)

(declare-fun e!526175 () Bool)

(assert (=> b!936991 (= e!526175 tp_is_empty!20235)))

(declare-fun b!936992 () Bool)

(declare-fun res!630844 () Bool)

(assert (=> b!936992 (=> (not res!630844) (not e!526180))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!936992 (= res!630844 (and (= (size!27613 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27614 _keys!1487) (size!27613 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936993 () Bool)

(declare-fun mapRes!32124 () Bool)

(assert (=> b!936993 (= e!526179 (and e!526175 mapRes!32124))))

(declare-fun condMapEmpty!32124 () Bool)

(declare-fun mapDefault!32124 () ValueCell!9636)

(assert (=> b!936993 (= condMapEmpty!32124 (= (arr!27153 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9636)) mapDefault!32124)))))

(declare-fun b!936994 () Bool)

(declare-fun Unit!31636 () Unit!31633)

(assert (=> b!936994 (= e!526178 Unit!31636)))

(declare-fun b!936995 () Bool)

(declare-fun e!526181 () Bool)

(declare-fun e!526182 () Bool)

(assert (=> b!936995 (= e!526181 e!526182)))

(declare-fun res!630845 () Bool)

(assert (=> b!936995 (=> (not res!630845) (not e!526182))))

(declare-fun v!791 () V!31945)

(declare-fun lt!422724 () V!31945)

(assert (=> b!936995 (= res!630845 (and (= lt!422724 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13462 0))(
  ( (tuple2!13463 (_1!6741 (_ BitVec 64)) (_2!6741 V!31945)) )
))
(declare-datatypes ((List!19269 0))(
  ( (Nil!19266) (Cons!19265 (h!20411 tuple2!13462) (t!27548 List!19269)) )
))
(declare-datatypes ((ListLongMap!12173 0))(
  ( (ListLongMap!12174 (toList!6102 List!19269)) )
))
(declare-fun lt!422725 () ListLongMap!12173)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!880 (ListLongMap!12173 (_ BitVec 64)) V!31945)

(assert (=> b!936995 (= lt!422724 (apply!880 lt!422725 k0!1099))))

(declare-fun b!936996 () Bool)

(declare-fun e!526177 () Bool)

(assert (=> b!936996 (= e!526177 tp_is_empty!20235)))

(declare-fun b!936997 () Bool)

(assert (=> b!936997 (= e!526182 false)))

(declare-fun lt!422719 () Unit!31633)

(assert (=> b!936997 (= lt!422719 e!526178)))

(declare-fun c!97442 () Bool)

(assert (=> b!936997 (= c!97442 (validKeyInArray!0 k0!1099))))

(declare-fun b!936998 () Bool)

(declare-fun lt!422722 () ListLongMap!12173)

(assert (=> b!936998 (= (apply!880 lt!422722 k0!1099) lt!422724)))

(declare-fun lt!422721 () V!31945)

(declare-fun lt!422716 () Unit!31633)

(declare-fun addApplyDifferent!428 (ListLongMap!12173 (_ BitVec 64) V!31945 (_ BitVec 64)) Unit!31633)

(assert (=> b!936998 (= lt!422716 (addApplyDifferent!428 lt!422725 lt!422720 lt!422721 k0!1099))))

(assert (=> b!936998 (not (= lt!422720 k0!1099))))

(declare-fun lt!422715 () Unit!31633)

(declare-datatypes ((List!19270 0))(
  ( (Nil!19267) (Cons!19266 (h!20412 (_ BitVec 64)) (t!27549 List!19270)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56436 (_ BitVec 64) (_ BitVec 32) List!19270) Unit!31633)

(assert (=> b!936998 (= lt!422715 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19267))))

(declare-fun e!526183 () Bool)

(assert (=> b!936998 e!526183))

(declare-fun c!97441 () Bool)

(assert (=> b!936998 (= c!97441 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422718 () Unit!31633)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31945)

(declare-fun minValue!1173 () V!31945)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!311 (array!56436 array!56434 (_ BitVec 32) (_ BitVec 32) V!31945 V!31945 (_ BitVec 64) (_ BitVec 32) Int) Unit!31633)

(assert (=> b!936998 (= lt!422718 (lemmaListMapContainsThenArrayContainsFrom!311 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56436 (_ BitVec 32) List!19270) Bool)

(assert (=> b!936998 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19267)))

(declare-fun lt!422717 () Unit!31633)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56436 (_ BitVec 32) (_ BitVec 32)) Unit!31633)

(assert (=> b!936998 (= lt!422717 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5112 (ListLongMap!12173 (_ BitVec 64)) Bool)

(assert (=> b!936998 (contains!5112 lt!422722 k0!1099)))

(declare-fun lt!422714 () tuple2!13462)

(declare-fun +!2798 (ListLongMap!12173 tuple2!13462) ListLongMap!12173)

(assert (=> b!936998 (= lt!422722 (+!2798 lt!422725 lt!422714))))

(declare-fun lt!422713 () Unit!31633)

(declare-fun addStillContains!554 (ListLongMap!12173 (_ BitVec 64) V!31945 (_ BitVec 64)) Unit!31633)

(assert (=> b!936998 (= lt!422713 (addStillContains!554 lt!422725 lt!422720 lt!422721 k0!1099))))

(declare-fun getCurrentListMap!3291 (array!56436 array!56434 (_ BitVec 32) (_ BitVec 32) V!31945 V!31945 (_ BitVec 32) Int) ListLongMap!12173)

(assert (=> b!936998 (= (getCurrentListMap!3291 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2798 (getCurrentListMap!3291 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422714))))

(assert (=> b!936998 (= lt!422714 (tuple2!13463 lt!422720 lt!422721))))

(declare-fun get!14334 (ValueCell!9636 V!31945) V!31945)

(declare-fun dynLambda!1637 (Int (_ BitVec 64)) V!31945)

(assert (=> b!936998 (= lt!422721 (get!14334 (select (arr!27153 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1637 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422723 () Unit!31633)

(declare-fun lemmaListMapRecursiveValidKeyArray!233 (array!56436 array!56434 (_ BitVec 32) (_ BitVec 32) V!31945 V!31945 (_ BitVec 32) Int) Unit!31633)

(assert (=> b!936998 (= lt!422723 (lemmaListMapRecursiveValidKeyArray!233 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!936998 (= e!526184 lt!422716)))

(declare-fun b!936999 () Bool)

(declare-fun res!630843 () Bool)

(assert (=> b!936999 (=> (not res!630843) (not e!526180))))

(assert (=> b!936999 (= res!630843 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19267))))

(declare-fun b!937000 () Bool)

(declare-fun arrayContainsKey!0 (array!56436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!937000 (= e!526183 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!937001 () Bool)

(assert (=> b!937001 (= e!526183 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!937002 () Bool)

(assert (=> b!937002 (= e!526180 e!526181)))

(declare-fun res!630842 () Bool)

(assert (=> b!937002 (=> (not res!630842) (not e!526181))))

(assert (=> b!937002 (= res!630842 (contains!5112 lt!422725 k0!1099))))

(assert (=> b!937002 (= lt!422725 (getCurrentListMap!3291 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!937003 () Bool)

(declare-fun res!630841 () Bool)

(assert (=> b!937003 (=> (not res!630841) (not e!526180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56436 (_ BitVec 32)) Bool)

(assert (=> b!937003 (= res!630841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!32124 () Bool)

(assert (=> mapIsEmpty!32124 mapRes!32124))

(declare-fun mapNonEmpty!32124 () Bool)

(declare-fun tp!61638 () Bool)

(assert (=> mapNonEmpty!32124 (= mapRes!32124 (and tp!61638 e!526177))))

(declare-fun mapKey!32124 () (_ BitVec 32))

(declare-fun mapRest!32124 () (Array (_ BitVec 32) ValueCell!9636))

(declare-fun mapValue!32124 () ValueCell!9636)

(assert (=> mapNonEmpty!32124 (= (arr!27153 _values!1231) (store mapRest!32124 mapKey!32124 mapValue!32124))))

(assert (= (and start!79706 res!630839) b!936992))

(assert (= (and b!936992 res!630844) b!937003))

(assert (= (and b!937003 res!630841) b!936999))

(assert (= (and b!936999 res!630843) b!936990))

(assert (= (and b!936990 res!630840) b!937002))

(assert (= (and b!937002 res!630842) b!936995))

(assert (= (and b!936995 res!630845) b!936997))

(assert (= (and b!936997 c!97442) b!936989))

(assert (= (and b!936997 (not c!97442)) b!936994))

(assert (= (and b!936989 c!97440) b!936998))

(assert (= (and b!936989 (not c!97440)) b!936988))

(assert (= (and b!936998 c!97441) b!937000))

(assert (= (and b!936998 (not c!97441)) b!937001))

(assert (= (and b!936993 condMapEmpty!32124) mapIsEmpty!32124))

(assert (= (and b!936993 (not condMapEmpty!32124)) mapNonEmpty!32124))

(get-info :version)

(assert (= (and mapNonEmpty!32124 ((_ is ValueCellFull!9636) mapValue!32124)) b!936996))

(assert (= (and b!936993 ((_ is ValueCellFull!9636) mapDefault!32124)) b!936991))

(assert (= start!79706 b!936993))

(declare-fun b_lambda!14163 () Bool)

(assert (=> (not b_lambda!14163) (not b!936998)))

(declare-fun t!27547 () Bool)

(declare-fun tb!6129 () Bool)

(assert (=> (and start!79706 (= defaultEntry!1235 defaultEntry!1235) t!27547) tb!6129))

(declare-fun result!12083 () Bool)

(assert (=> tb!6129 (= result!12083 tp_is_empty!20235)))

(assert (=> b!936998 t!27547))

(declare-fun b_and!29065 () Bool)

(assert (= b_and!29063 (and (=> t!27547 result!12083) b_and!29065)))

(declare-fun m!871809 () Bool)

(assert (=> mapNonEmpty!32124 m!871809))

(declare-fun m!871811 () Bool)

(assert (=> b!936997 m!871811))

(declare-fun m!871813 () Bool)

(assert (=> b!936998 m!871813))

(declare-fun m!871815 () Bool)

(assert (=> b!936998 m!871815))

(declare-fun m!871817 () Bool)

(assert (=> b!936998 m!871817))

(declare-fun m!871819 () Bool)

(assert (=> b!936998 m!871819))

(declare-fun m!871821 () Bool)

(assert (=> b!936998 m!871821))

(assert (=> b!936998 m!871815))

(declare-fun m!871823 () Bool)

(assert (=> b!936998 m!871823))

(declare-fun m!871825 () Bool)

(assert (=> b!936998 m!871825))

(declare-fun m!871827 () Bool)

(assert (=> b!936998 m!871827))

(declare-fun m!871829 () Bool)

(assert (=> b!936998 m!871829))

(declare-fun m!871831 () Bool)

(assert (=> b!936998 m!871831))

(declare-fun m!871833 () Bool)

(assert (=> b!936998 m!871833))

(declare-fun m!871835 () Bool)

(assert (=> b!936998 m!871835))

(assert (=> b!936998 m!871821))

(declare-fun m!871837 () Bool)

(assert (=> b!936998 m!871837))

(declare-fun m!871839 () Bool)

(assert (=> b!936998 m!871839))

(declare-fun m!871841 () Bool)

(assert (=> b!936998 m!871841))

(assert (=> b!936998 m!871839))

(declare-fun m!871843 () Bool)

(assert (=> b!936998 m!871843))

(declare-fun m!871845 () Bool)

(assert (=> b!937003 m!871845))

(declare-fun m!871847 () Bool)

(assert (=> start!79706 m!871847))

(declare-fun m!871849 () Bool)

(assert (=> start!79706 m!871849))

(declare-fun m!871851 () Bool)

(assert (=> start!79706 m!871851))

(declare-fun m!871853 () Bool)

(assert (=> b!937002 m!871853))

(declare-fun m!871855 () Bool)

(assert (=> b!937002 m!871855))

(declare-fun m!871857 () Bool)

(assert (=> b!936999 m!871857))

(declare-fun m!871859 () Bool)

(assert (=> b!937000 m!871859))

(declare-fun m!871861 () Bool)

(assert (=> b!936989 m!871861))

(declare-fun m!871863 () Bool)

(assert (=> b!936989 m!871863))

(declare-fun m!871865 () Bool)

(assert (=> b!936995 m!871865))

(check-sat (not b!936995) (not b_next!17727) (not b!937003) (not b!936998) (not start!79706) (not b_lambda!14163) tp_is_empty!20235 (not b!936997) (not b!936989) (not b!936999) (not b!937000) (not mapNonEmpty!32124) b_and!29065 (not b!937002))
(check-sat b_and!29065 (not b_next!17727))
