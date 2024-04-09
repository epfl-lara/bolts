; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79424 () Bool)

(assert start!79424)

(declare-fun b_free!17583 () Bool)

(declare-fun b_next!17583 () Bool)

(assert (=> start!79424 (= b_free!17583 (not b_next!17583))))

(declare-fun tp!61194 () Bool)

(declare-fun b_and!28743 () Bool)

(assert (=> start!79424 (= tp!61194 b_and!28743)))

(declare-fun b!932787 () Bool)

(declare-fun e!523833 () Bool)

(declare-fun tp_is_empty!20091 () Bool)

(assert (=> b!932787 (= e!523833 tp_is_empty!20091)))

(declare-fun b!932788 () Bool)

(declare-fun res!628362 () Bool)

(declare-fun e!523834 () Bool)

(assert (=> b!932788 (=> (not res!628362) (not e!523834))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!932788 (= res!628362 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932789 () Bool)

(declare-fun e!523835 () Bool)

(assert (=> b!932789 (= e!523835 e!523834)))

(declare-fun res!628358 () Bool)

(assert (=> b!932789 (=> (not res!628358) (not e!523834))))

(declare-datatypes ((V!31753 0))(
  ( (V!31754 (val!10096 Int)) )
))
(declare-datatypes ((tuple2!13336 0))(
  ( (tuple2!13337 (_1!6678 (_ BitVec 64)) (_2!6678 V!31753)) )
))
(declare-datatypes ((List!19144 0))(
  ( (Nil!19141) (Cons!19140 (h!20286 tuple2!13336) (t!27279 List!19144)) )
))
(declare-datatypes ((ListLongMap!12047 0))(
  ( (ListLongMap!12048 (toList!6039 List!19144)) )
))
(declare-fun lt!420091 () ListLongMap!12047)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5039 (ListLongMap!12047 (_ BitVec 64)) Bool)

(assert (=> b!932789 (= res!628358 (contains!5039 lt!420091 k0!1099))))

(declare-datatypes ((array!56142 0))(
  ( (array!56143 (arr!27011 (Array (_ BitVec 32) (_ BitVec 64))) (size!27471 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56142)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9564 0))(
  ( (ValueCellFull!9564 (v!12615 V!31753)) (EmptyCell!9564) )
))
(declare-datatypes ((array!56144 0))(
  ( (array!56145 (arr!27012 (Array (_ BitVec 32) ValueCell!9564)) (size!27472 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56144)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31753)

(declare-fun minValue!1173 () V!31753)

(declare-fun getCurrentListMap!3232 (array!56142 array!56144 (_ BitVec 32) (_ BitVec 32) V!31753 V!31753 (_ BitVec 32) Int) ListLongMap!12047)

(assert (=> b!932789 (= lt!420091 (getCurrentListMap!3232 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!932790 () Bool)

(declare-fun res!628363 () Bool)

(assert (=> b!932790 (=> (not res!628363) (not e!523835))))

(assert (=> b!932790 (= res!628363 (and (= (size!27472 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27471 _keys!1487) (size!27472 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31896 () Bool)

(declare-fun mapRes!31896 () Bool)

(declare-fun tp!61193 () Bool)

(assert (=> mapNonEmpty!31896 (= mapRes!31896 (and tp!61193 e!523833))))

(declare-fun mapValue!31896 () ValueCell!9564)

(declare-fun mapRest!31896 () (Array (_ BitVec 32) ValueCell!9564))

(declare-fun mapKey!31896 () (_ BitVec 32))

(assert (=> mapNonEmpty!31896 (= (arr!27012 _values!1231) (store mapRest!31896 mapKey!31896 mapValue!31896))))

(declare-fun b!932791 () Bool)

(declare-fun res!628367 () Bool)

(assert (=> b!932791 (=> (not res!628367) (not e!523834))))

(declare-fun v!791 () V!31753)

(declare-fun apply!823 (ListLongMap!12047 (_ BitVec 64)) V!31753)

(assert (=> b!932791 (= res!628367 (= (apply!823 lt!420091 k0!1099) v!791))))

(declare-fun b!932792 () Bool)

(declare-fun e!523832 () Bool)

(declare-fun e!523838 () Bool)

(assert (=> b!932792 (= e!523832 (and e!523838 mapRes!31896))))

(declare-fun condMapEmpty!31896 () Bool)

(declare-fun mapDefault!31896 () ValueCell!9564)

(assert (=> b!932792 (= condMapEmpty!31896 (= (arr!27012 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9564)) mapDefault!31896)))))

(declare-fun b!932793 () Bool)

(declare-fun e!523836 () Bool)

(assert (=> b!932793 (= e!523836 (not true))))

(declare-datatypes ((List!19145 0))(
  ( (Nil!19142) (Cons!19141 (h!20287 (_ BitVec 64)) (t!27280 List!19145)) )
))
(declare-fun arrayNoDuplicates!0 (array!56142 (_ BitVec 32) List!19145) Bool)

(assert (=> b!932793 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19142)))

(declare-datatypes ((Unit!31474 0))(
  ( (Unit!31475) )
))
(declare-fun lt!420089 () Unit!31474)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56142 (_ BitVec 32) (_ BitVec 32)) Unit!31474)

(assert (=> b!932793 (= lt!420089 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420093 () tuple2!13336)

(declare-fun +!2743 (ListLongMap!12047 tuple2!13336) ListLongMap!12047)

(assert (=> b!932793 (contains!5039 (+!2743 lt!420091 lt!420093) k0!1099)))

(declare-fun lt!420092 () V!31753)

(declare-fun lt!420094 () Unit!31474)

(declare-fun lt!420090 () (_ BitVec 64))

(declare-fun addStillContains!499 (ListLongMap!12047 (_ BitVec 64) V!31753 (_ BitVec 64)) Unit!31474)

(assert (=> b!932793 (= lt!420094 (addStillContains!499 lt!420091 lt!420090 lt!420092 k0!1099))))

(assert (=> b!932793 (= (getCurrentListMap!3232 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2743 (getCurrentListMap!3232 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420093))))

(assert (=> b!932793 (= lt!420093 (tuple2!13337 lt!420090 lt!420092))))

(declare-fun get!14219 (ValueCell!9564 V!31753) V!31753)

(declare-fun dynLambda!1582 (Int (_ BitVec 64)) V!31753)

(assert (=> b!932793 (= lt!420092 (get!14219 (select (arr!27012 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1582 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420088 () Unit!31474)

(declare-fun lemmaListMapRecursiveValidKeyArray!178 (array!56142 array!56144 (_ BitVec 32) (_ BitVec 32) V!31753 V!31753 (_ BitVec 32) Int) Unit!31474)

(assert (=> b!932793 (= lt!420088 (lemmaListMapRecursiveValidKeyArray!178 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932794 () Bool)

(declare-fun res!628365 () Bool)

(assert (=> b!932794 (=> (not res!628365) (not e!523835))))

(assert (=> b!932794 (= res!628365 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27471 _keys!1487))))))

(declare-fun res!628359 () Bool)

(assert (=> start!79424 (=> (not res!628359) (not e!523835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79424 (= res!628359 (validMask!0 mask!1881))))

(assert (=> start!79424 e!523835))

(assert (=> start!79424 true))

(assert (=> start!79424 tp_is_empty!20091))

(declare-fun array_inv!20990 (array!56144) Bool)

(assert (=> start!79424 (and (array_inv!20990 _values!1231) e!523832)))

(assert (=> start!79424 tp!61194))

(declare-fun array_inv!20991 (array!56142) Bool)

(assert (=> start!79424 (array_inv!20991 _keys!1487)))

(declare-fun mapIsEmpty!31896 () Bool)

(assert (=> mapIsEmpty!31896 mapRes!31896))

(declare-fun b!932795 () Bool)

(declare-fun res!628364 () Bool)

(assert (=> b!932795 (=> (not res!628364) (not e!523835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56142 (_ BitVec 32)) Bool)

(assert (=> b!932795 (= res!628364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!932796 () Bool)

(assert (=> b!932796 (= e!523838 tp_is_empty!20091)))

(declare-fun b!932797 () Bool)

(assert (=> b!932797 (= e!523834 e!523836)))

(declare-fun res!628361 () Bool)

(assert (=> b!932797 (=> (not res!628361) (not e!523836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932797 (= res!628361 (validKeyInArray!0 lt!420090))))

(assert (=> b!932797 (= lt!420090 (select (arr!27011 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!932798 () Bool)

(declare-fun res!628366 () Bool)

(assert (=> b!932798 (=> (not res!628366) (not e!523834))))

(assert (=> b!932798 (= res!628366 (validKeyInArray!0 k0!1099))))

(declare-fun b!932799 () Bool)

(declare-fun res!628360 () Bool)

(assert (=> b!932799 (=> (not res!628360) (not e!523835))))

(assert (=> b!932799 (= res!628360 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19142))))

(assert (= (and start!79424 res!628359) b!932790))

(assert (= (and b!932790 res!628363) b!932795))

(assert (= (and b!932795 res!628364) b!932799))

(assert (= (and b!932799 res!628360) b!932794))

(assert (= (and b!932794 res!628365) b!932789))

(assert (= (and b!932789 res!628358) b!932791))

(assert (= (and b!932791 res!628367) b!932788))

(assert (= (and b!932788 res!628362) b!932798))

(assert (= (and b!932798 res!628366) b!932797))

(assert (= (and b!932797 res!628361) b!932793))

(assert (= (and b!932792 condMapEmpty!31896) mapIsEmpty!31896))

(assert (= (and b!932792 (not condMapEmpty!31896)) mapNonEmpty!31896))

(get-info :version)

(assert (= (and mapNonEmpty!31896 ((_ is ValueCellFull!9564) mapValue!31896)) b!932787))

(assert (= (and b!932792 ((_ is ValueCellFull!9564) mapDefault!31896)) b!932796))

(assert (= start!79424 b!932792))

(declare-fun b_lambda!13947 () Bool)

(assert (=> (not b_lambda!13947) (not b!932793)))

(declare-fun t!27278 () Bool)

(declare-fun tb!5985 () Bool)

(assert (=> (and start!79424 (= defaultEntry!1235 defaultEntry!1235) t!27278) tb!5985))

(declare-fun result!11787 () Bool)

(assert (=> tb!5985 (= result!11787 tp_is_empty!20091)))

(assert (=> b!932793 t!27278))

(declare-fun b_and!28745 () Bool)

(assert (= b_and!28743 (and (=> t!27278 result!11787) b_and!28745)))

(declare-fun m!866939 () Bool)

(assert (=> b!932797 m!866939))

(declare-fun m!866941 () Bool)

(assert (=> b!932797 m!866941))

(declare-fun m!866943 () Bool)

(assert (=> b!932795 m!866943))

(declare-fun m!866945 () Bool)

(assert (=> b!932798 m!866945))

(declare-fun m!866947 () Bool)

(assert (=> b!932791 m!866947))

(declare-fun m!866949 () Bool)

(assert (=> start!79424 m!866949))

(declare-fun m!866951 () Bool)

(assert (=> start!79424 m!866951))

(declare-fun m!866953 () Bool)

(assert (=> start!79424 m!866953))

(declare-fun m!866955 () Bool)

(assert (=> b!932799 m!866955))

(declare-fun m!866957 () Bool)

(assert (=> b!932793 m!866957))

(declare-fun m!866959 () Bool)

(assert (=> b!932793 m!866959))

(assert (=> b!932793 m!866957))

(declare-fun m!866961 () Bool)

(assert (=> b!932793 m!866961))

(declare-fun m!866963 () Bool)

(assert (=> b!932793 m!866963))

(declare-fun m!866965 () Bool)

(assert (=> b!932793 m!866965))

(assert (=> b!932793 m!866959))

(assert (=> b!932793 m!866963))

(declare-fun m!866967 () Bool)

(assert (=> b!932793 m!866967))

(declare-fun m!866969 () Bool)

(assert (=> b!932793 m!866969))

(declare-fun m!866971 () Bool)

(assert (=> b!932793 m!866971))

(declare-fun m!866973 () Bool)

(assert (=> b!932793 m!866973))

(declare-fun m!866975 () Bool)

(assert (=> b!932793 m!866975))

(declare-fun m!866977 () Bool)

(assert (=> b!932793 m!866977))

(assert (=> b!932793 m!866971))

(declare-fun m!866979 () Bool)

(assert (=> b!932793 m!866979))

(declare-fun m!866981 () Bool)

(assert (=> b!932789 m!866981))

(declare-fun m!866983 () Bool)

(assert (=> b!932789 m!866983))

(declare-fun m!866985 () Bool)

(assert (=> mapNonEmpty!31896 m!866985))

(check-sat (not mapNonEmpty!31896) (not b!932791) b_and!28745 (not b!932798) tp_is_empty!20091 (not start!79424) (not b!932793) (not b!932799) (not b!932795) (not b!932797) (not b_next!17583) (not b!932789) (not b_lambda!13947))
(check-sat b_and!28745 (not b_next!17583))
