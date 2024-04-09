; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79430 () Bool)

(assert start!79430)

(declare-fun b_free!17589 () Bool)

(declare-fun b_next!17589 () Bool)

(assert (=> start!79430 (= b_free!17589 (not b_next!17589))))

(declare-fun tp!61211 () Bool)

(declare-fun b_and!28755 () Bool)

(assert (=> start!79430 (= tp!61211 b_and!28755)))

(declare-fun mapNonEmpty!31905 () Bool)

(declare-fun mapRes!31905 () Bool)

(declare-fun tp!61212 () Bool)

(declare-fun e!523897 () Bool)

(assert (=> mapNonEmpty!31905 (= mapRes!31905 (and tp!61212 e!523897))))

(declare-datatypes ((V!31761 0))(
  ( (V!31762 (val!10099 Int)) )
))
(declare-datatypes ((ValueCell!9567 0))(
  ( (ValueCellFull!9567 (v!12618 V!31761)) (EmptyCell!9567) )
))
(declare-fun mapRest!31905 () (Array (_ BitVec 32) ValueCell!9567))

(declare-fun mapKey!31905 () (_ BitVec 32))

(declare-fun mapValue!31905 () ValueCell!9567)

(declare-datatypes ((array!56154 0))(
  ( (array!56155 (arr!27017 (Array (_ BitVec 32) ValueCell!9567)) (size!27477 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56154)

(assert (=> mapNonEmpty!31905 (= (arr!27017 _values!1231) (store mapRest!31905 mapKey!31905 mapValue!31905))))

(declare-fun b!932910 () Bool)

(declare-fun res!628450 () Bool)

(declare-fun e!523899 () Bool)

(assert (=> b!932910 (=> (not res!628450) (not e!523899))))

(declare-datatypes ((array!56156 0))(
  ( (array!56157 (arr!27018 (Array (_ BitVec 32) (_ BitVec 64))) (size!27478 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56156)

(declare-datatypes ((List!19149 0))(
  ( (Nil!19146) (Cons!19145 (h!20291 (_ BitVec 64)) (t!27290 List!19149)) )
))
(declare-fun arrayNoDuplicates!0 (array!56156 (_ BitVec 32) List!19149) Bool)

(assert (=> b!932910 (= res!628450 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19146))))

(declare-fun mapIsEmpty!31905 () Bool)

(assert (=> mapIsEmpty!31905 mapRes!31905))

(declare-fun b!932911 () Bool)

(declare-fun res!628455 () Bool)

(declare-fun e!523895 () Bool)

(assert (=> b!932911 (=> (not res!628455) (not e!523895))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932911 (= res!628455 (validKeyInArray!0 k0!1099))))

(declare-fun b!932912 () Bool)

(assert (=> b!932912 (= e!523899 e!523895)))

(declare-fun res!628448 () Bool)

(assert (=> b!932912 (=> (not res!628448) (not e!523895))))

(declare-datatypes ((tuple2!13342 0))(
  ( (tuple2!13343 (_1!6681 (_ BitVec 64)) (_2!6681 V!31761)) )
))
(declare-datatypes ((List!19150 0))(
  ( (Nil!19147) (Cons!19146 (h!20292 tuple2!13342) (t!27291 List!19150)) )
))
(declare-datatypes ((ListLongMap!12053 0))(
  ( (ListLongMap!12054 (toList!6042 List!19150)) )
))
(declare-fun lt!420151 () ListLongMap!12053)

(declare-fun contains!5041 (ListLongMap!12053 (_ BitVec 64)) Bool)

(assert (=> b!932912 (= res!628448 (contains!5041 lt!420151 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31761)

(declare-fun minValue!1173 () V!31761)

(declare-fun getCurrentListMap!3234 (array!56156 array!56154 (_ BitVec 32) (_ BitVec 32) V!31761 V!31761 (_ BitVec 32) Int) ListLongMap!12053)

(assert (=> b!932912 (= lt!420151 (getCurrentListMap!3234 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!932913 () Bool)

(declare-fun e!523901 () Bool)

(assert (=> b!932913 (= e!523901 (not true))))

(assert (=> b!932913 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19146)))

(declare-datatypes ((Unit!31478 0))(
  ( (Unit!31479) )
))
(declare-fun lt!420154 () Unit!31478)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56156 (_ BitVec 32) (_ BitVec 32)) Unit!31478)

(assert (=> b!932913 (= lt!420154 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420152 () tuple2!13342)

(declare-fun +!2745 (ListLongMap!12053 tuple2!13342) ListLongMap!12053)

(assert (=> b!932913 (contains!5041 (+!2745 lt!420151 lt!420152) k0!1099)))

(declare-fun lt!420157 () Unit!31478)

(declare-fun lt!420153 () V!31761)

(declare-fun lt!420155 () (_ BitVec 64))

(declare-fun addStillContains!501 (ListLongMap!12053 (_ BitVec 64) V!31761 (_ BitVec 64)) Unit!31478)

(assert (=> b!932913 (= lt!420157 (addStillContains!501 lt!420151 lt!420155 lt!420153 k0!1099))))

(assert (=> b!932913 (= (getCurrentListMap!3234 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2745 (getCurrentListMap!3234 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420152))))

(assert (=> b!932913 (= lt!420152 (tuple2!13343 lt!420155 lt!420153))))

(declare-fun get!14223 (ValueCell!9567 V!31761) V!31761)

(declare-fun dynLambda!1584 (Int (_ BitVec 64)) V!31761)

(assert (=> b!932913 (= lt!420153 (get!14223 (select (arr!27017 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1584 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420156 () Unit!31478)

(declare-fun lemmaListMapRecursiveValidKeyArray!180 (array!56156 array!56154 (_ BitVec 32) (_ BitVec 32) V!31761 V!31761 (_ BitVec 32) Int) Unit!31478)

(assert (=> b!932913 (= lt!420156 (lemmaListMapRecursiveValidKeyArray!180 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932915 () Bool)

(declare-fun res!628452 () Bool)

(assert (=> b!932915 (=> (not res!628452) (not e!523895))))

(declare-fun v!791 () V!31761)

(declare-fun apply!826 (ListLongMap!12053 (_ BitVec 64)) V!31761)

(assert (=> b!932915 (= res!628452 (= (apply!826 lt!420151 k0!1099) v!791))))

(declare-fun b!932916 () Bool)

(declare-fun res!628456 () Bool)

(assert (=> b!932916 (=> (not res!628456) (not e!523899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56156 (_ BitVec 32)) Bool)

(assert (=> b!932916 (= res!628456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!932917 () Bool)

(declare-fun res!628457 () Bool)

(assert (=> b!932917 (=> (not res!628457) (not e!523899))))

(assert (=> b!932917 (= res!628457 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27478 _keys!1487))))))

(declare-fun b!932918 () Bool)

(declare-fun res!628451 () Bool)

(assert (=> b!932918 (=> (not res!628451) (not e!523899))))

(assert (=> b!932918 (= res!628451 (and (= (size!27477 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27478 _keys!1487) (size!27477 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!932919 () Bool)

(declare-fun res!628454 () Bool)

(assert (=> b!932919 (=> (not res!628454) (not e!523895))))

(assert (=> b!932919 (= res!628454 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932920 () Bool)

(declare-fun tp_is_empty!20097 () Bool)

(assert (=> b!932920 (= e!523897 tp_is_empty!20097)))

(declare-fun b!932921 () Bool)

(declare-fun e!523900 () Bool)

(assert (=> b!932921 (= e!523900 tp_is_empty!20097)))

(declare-fun b!932922 () Bool)

(declare-fun e!523896 () Bool)

(assert (=> b!932922 (= e!523896 (and e!523900 mapRes!31905))))

(declare-fun condMapEmpty!31905 () Bool)

(declare-fun mapDefault!31905 () ValueCell!9567)

(assert (=> b!932922 (= condMapEmpty!31905 (= (arr!27017 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9567)) mapDefault!31905)))))

(declare-fun b!932914 () Bool)

(assert (=> b!932914 (= e!523895 e!523901)))

(declare-fun res!628453 () Bool)

(assert (=> b!932914 (=> (not res!628453) (not e!523901))))

(assert (=> b!932914 (= res!628453 (validKeyInArray!0 lt!420155))))

(assert (=> b!932914 (= lt!420155 (select (arr!27018 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!628449 () Bool)

(assert (=> start!79430 (=> (not res!628449) (not e!523899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79430 (= res!628449 (validMask!0 mask!1881))))

(assert (=> start!79430 e!523899))

(assert (=> start!79430 true))

(assert (=> start!79430 tp_is_empty!20097))

(declare-fun array_inv!20994 (array!56154) Bool)

(assert (=> start!79430 (and (array_inv!20994 _values!1231) e!523896)))

(assert (=> start!79430 tp!61211))

(declare-fun array_inv!20995 (array!56156) Bool)

(assert (=> start!79430 (array_inv!20995 _keys!1487)))

(assert (= (and start!79430 res!628449) b!932918))

(assert (= (and b!932918 res!628451) b!932916))

(assert (= (and b!932916 res!628456) b!932910))

(assert (= (and b!932910 res!628450) b!932917))

(assert (= (and b!932917 res!628457) b!932912))

(assert (= (and b!932912 res!628448) b!932915))

(assert (= (and b!932915 res!628452) b!932919))

(assert (= (and b!932919 res!628454) b!932911))

(assert (= (and b!932911 res!628455) b!932914))

(assert (= (and b!932914 res!628453) b!932913))

(assert (= (and b!932922 condMapEmpty!31905) mapIsEmpty!31905))

(assert (= (and b!932922 (not condMapEmpty!31905)) mapNonEmpty!31905))

(get-info :version)

(assert (= (and mapNonEmpty!31905 ((_ is ValueCellFull!9567) mapValue!31905)) b!932920))

(assert (= (and b!932922 ((_ is ValueCellFull!9567) mapDefault!31905)) b!932921))

(assert (= start!79430 b!932922))

(declare-fun b_lambda!13953 () Bool)

(assert (=> (not b_lambda!13953) (not b!932913)))

(declare-fun t!27289 () Bool)

(declare-fun tb!5991 () Bool)

(assert (=> (and start!79430 (= defaultEntry!1235 defaultEntry!1235) t!27289) tb!5991))

(declare-fun result!11799 () Bool)

(assert (=> tb!5991 (= result!11799 tp_is_empty!20097)))

(assert (=> b!932913 t!27289))

(declare-fun b_and!28757 () Bool)

(assert (= b_and!28755 (and (=> t!27289 result!11799) b_and!28757)))

(declare-fun m!867083 () Bool)

(assert (=> b!932912 m!867083))

(declare-fun m!867085 () Bool)

(assert (=> b!932912 m!867085))

(declare-fun m!867087 () Bool)

(assert (=> b!932914 m!867087))

(declare-fun m!867089 () Bool)

(assert (=> b!932914 m!867089))

(declare-fun m!867091 () Bool)

(assert (=> mapNonEmpty!31905 m!867091))

(declare-fun m!867093 () Bool)

(assert (=> b!932915 m!867093))

(declare-fun m!867095 () Bool)

(assert (=> b!932913 m!867095))

(declare-fun m!867097 () Bool)

(assert (=> b!932913 m!867097))

(declare-fun m!867099 () Bool)

(assert (=> b!932913 m!867099))

(declare-fun m!867101 () Bool)

(assert (=> b!932913 m!867101))

(declare-fun m!867103 () Bool)

(assert (=> b!932913 m!867103))

(declare-fun m!867105 () Bool)

(assert (=> b!932913 m!867105))

(declare-fun m!867107 () Bool)

(assert (=> b!932913 m!867107))

(declare-fun m!867109 () Bool)

(assert (=> b!932913 m!867109))

(declare-fun m!867111 () Bool)

(assert (=> b!932913 m!867111))

(declare-fun m!867113 () Bool)

(assert (=> b!932913 m!867113))

(declare-fun m!867115 () Bool)

(assert (=> b!932913 m!867115))

(assert (=> b!932913 m!867103))

(assert (=> b!932913 m!867105))

(assert (=> b!932913 m!867095))

(assert (=> b!932913 m!867099))

(declare-fun m!867117 () Bool)

(assert (=> b!932913 m!867117))

(declare-fun m!867119 () Bool)

(assert (=> b!932910 m!867119))

(declare-fun m!867121 () Bool)

(assert (=> start!79430 m!867121))

(declare-fun m!867123 () Bool)

(assert (=> start!79430 m!867123))

(declare-fun m!867125 () Bool)

(assert (=> start!79430 m!867125))

(declare-fun m!867127 () Bool)

(assert (=> b!932911 m!867127))

(declare-fun m!867129 () Bool)

(assert (=> b!932916 m!867129))

(check-sat (not mapNonEmpty!31905) (not b!932915) (not b!932913) (not b!932910) (not b!932914) (not b!932912) (not b!932916) b_and!28757 (not b!932911) tp_is_empty!20097 (not start!79430) (not b_lambda!13953) (not b_next!17589))
(check-sat b_and!28757 (not b_next!17589))
