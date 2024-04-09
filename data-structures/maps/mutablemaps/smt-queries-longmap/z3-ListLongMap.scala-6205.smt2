; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79394 () Bool)

(assert start!79394)

(declare-fun b_free!17553 () Bool)

(declare-fun b_next!17553 () Bool)

(assert (=> start!79394 (= b_free!17553 (not b_next!17553))))

(declare-fun tp!61104 () Bool)

(declare-fun b_and!28683 () Bool)

(assert (=> start!79394 (= tp!61104 b_and!28683)))

(declare-fun b!932172 () Bool)

(declare-fun e!523517 () Bool)

(declare-datatypes ((array!56086 0))(
  ( (array!56087 (arr!26983 (Array (_ BitVec 32) (_ BitVec 64))) (size!27443 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56086)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!932172 (= e!523517 (not (or (bvsge (size!27443 _keys!1487) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!27443 _keys!1487)) (bvsle (bvsub from!1844 #b00000000000000000000000000000001) (size!27443 _keys!1487)))))))

(declare-datatypes ((V!31713 0))(
  ( (V!31714 (val!10081 Int)) )
))
(declare-datatypes ((tuple2!13310 0))(
  ( (tuple2!13311 (_1!6665 (_ BitVec 64)) (_2!6665 V!31713)) )
))
(declare-datatypes ((List!19122 0))(
  ( (Nil!19119) (Cons!19118 (h!20264 tuple2!13310) (t!27227 List!19122)) )
))
(declare-datatypes ((ListLongMap!12021 0))(
  ( (ListLongMap!12022 (toList!6026 List!19122)) )
))
(declare-fun lt!419788 () ListLongMap!12021)

(declare-fun lt!419787 () tuple2!13310)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5027 (ListLongMap!12021 (_ BitVec 64)) Bool)

(declare-fun +!2734 (ListLongMap!12021 tuple2!13310) ListLongMap!12021)

(assert (=> b!932172 (contains!5027 (+!2734 lt!419788 lt!419787) k0!1099)))

(declare-fun lt!419790 () (_ BitVec 64))

(declare-fun lt!419791 () V!31713)

(declare-datatypes ((Unit!31456 0))(
  ( (Unit!31457) )
))
(declare-fun lt!419786 () Unit!31456)

(declare-fun addStillContains!490 (ListLongMap!12021 (_ BitVec 64) V!31713 (_ BitVec 64)) Unit!31456)

(assert (=> b!932172 (= lt!419786 (addStillContains!490 lt!419788 lt!419790 lt!419791 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9549 0))(
  ( (ValueCellFull!9549 (v!12600 V!31713)) (EmptyCell!9549) )
))
(declare-datatypes ((array!56088 0))(
  ( (array!56089 (arr!26984 (Array (_ BitVec 32) ValueCell!9549)) (size!27444 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56088)

(declare-fun defaultEntry!1235 () Int)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31713)

(declare-fun minValue!1173 () V!31713)

(declare-fun getCurrentListMap!3220 (array!56086 array!56088 (_ BitVec 32) (_ BitVec 32) V!31713 V!31713 (_ BitVec 32) Int) ListLongMap!12021)

(assert (=> b!932172 (= (getCurrentListMap!3220 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2734 (getCurrentListMap!3220 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419787))))

(assert (=> b!932172 (= lt!419787 (tuple2!13311 lt!419790 lt!419791))))

(declare-fun get!14200 (ValueCell!9549 V!31713) V!31713)

(declare-fun dynLambda!1573 (Int (_ BitVec 64)) V!31713)

(assert (=> b!932172 (= lt!419791 (get!14200 (select (arr!26984 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1573 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!419789 () Unit!31456)

(declare-fun lemmaListMapRecursiveValidKeyArray!169 (array!56086 array!56088 (_ BitVec 32) (_ BitVec 32) V!31713 V!31713 (_ BitVec 32) Int) Unit!31456)

(assert (=> b!932172 (= lt!419789 (lemmaListMapRecursiveValidKeyArray!169 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932173 () Bool)

(declare-fun e!523522 () Bool)

(declare-fun e!523519 () Bool)

(assert (=> b!932173 (= e!523522 e!523519)))

(declare-fun res!627915 () Bool)

(assert (=> b!932173 (=> (not res!627915) (not e!523519))))

(assert (=> b!932173 (= res!627915 (contains!5027 lt!419788 k0!1099))))

(assert (=> b!932173 (= lt!419788 (getCurrentListMap!3220 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31851 () Bool)

(declare-fun mapRes!31851 () Bool)

(assert (=> mapIsEmpty!31851 mapRes!31851))

(declare-fun b!932174 () Bool)

(declare-fun res!627917 () Bool)

(assert (=> b!932174 (=> (not res!627917) (not e!523522))))

(assert (=> b!932174 (= res!627917 (and (= (size!27444 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27443 _keys!1487) (size!27444 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!932175 () Bool)

(declare-fun res!627911 () Bool)

(assert (=> b!932175 (=> (not res!627911) (not e!523519))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932175 (= res!627911 (validKeyInArray!0 k0!1099))))

(declare-fun b!932176 () Bool)

(declare-fun e!523523 () Bool)

(declare-fun e!523520 () Bool)

(assert (=> b!932176 (= e!523523 (and e!523520 mapRes!31851))))

(declare-fun condMapEmpty!31851 () Bool)

(declare-fun mapDefault!31851 () ValueCell!9549)

(assert (=> b!932176 (= condMapEmpty!31851 (= (arr!26984 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9549)) mapDefault!31851)))))

(declare-fun b!932177 () Bool)

(declare-fun res!627916 () Bool)

(assert (=> b!932177 (=> (not res!627916) (not e!523522))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56086 (_ BitVec 32)) Bool)

(assert (=> b!932177 (= res!627916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!932178 () Bool)

(declare-fun res!627912 () Bool)

(assert (=> b!932178 (=> (not res!627912) (not e!523519))))

(assert (=> b!932178 (= res!627912 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932179 () Bool)

(declare-fun e!523521 () Bool)

(declare-fun tp_is_empty!20061 () Bool)

(assert (=> b!932179 (= e!523521 tp_is_empty!20061)))

(declare-fun mapNonEmpty!31851 () Bool)

(declare-fun tp!61103 () Bool)

(assert (=> mapNonEmpty!31851 (= mapRes!31851 (and tp!61103 e!523521))))

(declare-fun mapRest!31851 () (Array (_ BitVec 32) ValueCell!9549))

(declare-fun mapValue!31851 () ValueCell!9549)

(declare-fun mapKey!31851 () (_ BitVec 32))

(assert (=> mapNonEmpty!31851 (= (arr!26984 _values!1231) (store mapRest!31851 mapKey!31851 mapValue!31851))))

(declare-fun b!932181 () Bool)

(assert (=> b!932181 (= e!523519 e!523517)))

(declare-fun res!627909 () Bool)

(assert (=> b!932181 (=> (not res!627909) (not e!523517))))

(assert (=> b!932181 (= res!627909 (validKeyInArray!0 lt!419790))))

(assert (=> b!932181 (= lt!419790 (select (arr!26983 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!932182 () Bool)

(declare-fun res!627913 () Bool)

(assert (=> b!932182 (=> (not res!627913) (not e!523522))))

(declare-datatypes ((List!19123 0))(
  ( (Nil!19120) (Cons!19119 (h!20265 (_ BitVec 64)) (t!27228 List!19123)) )
))
(declare-fun arrayNoDuplicates!0 (array!56086 (_ BitVec 32) List!19123) Bool)

(assert (=> b!932182 (= res!627913 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19120))))

(declare-fun b!932183 () Bool)

(declare-fun res!627914 () Bool)

(assert (=> b!932183 (=> (not res!627914) (not e!523519))))

(declare-fun v!791 () V!31713)

(declare-fun apply!811 (ListLongMap!12021 (_ BitVec 64)) V!31713)

(assert (=> b!932183 (= res!627914 (= (apply!811 lt!419788 k0!1099) v!791))))

(declare-fun b!932184 () Bool)

(assert (=> b!932184 (= e!523520 tp_is_empty!20061)))

(declare-fun b!932180 () Bool)

(declare-fun res!627908 () Bool)

(assert (=> b!932180 (=> (not res!627908) (not e!523522))))

(assert (=> b!932180 (= res!627908 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27443 _keys!1487))))))

(declare-fun res!627910 () Bool)

(assert (=> start!79394 (=> (not res!627910) (not e!523522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79394 (= res!627910 (validMask!0 mask!1881))))

(assert (=> start!79394 e!523522))

(assert (=> start!79394 true))

(assert (=> start!79394 tp_is_empty!20061))

(declare-fun array_inv!20972 (array!56088) Bool)

(assert (=> start!79394 (and (array_inv!20972 _values!1231) e!523523)))

(assert (=> start!79394 tp!61104))

(declare-fun array_inv!20973 (array!56086) Bool)

(assert (=> start!79394 (array_inv!20973 _keys!1487)))

(assert (= (and start!79394 res!627910) b!932174))

(assert (= (and b!932174 res!627917) b!932177))

(assert (= (and b!932177 res!627916) b!932182))

(assert (= (and b!932182 res!627913) b!932180))

(assert (= (and b!932180 res!627908) b!932173))

(assert (= (and b!932173 res!627915) b!932183))

(assert (= (and b!932183 res!627914) b!932178))

(assert (= (and b!932178 res!627912) b!932175))

(assert (= (and b!932175 res!627911) b!932181))

(assert (= (and b!932181 res!627909) b!932172))

(assert (= (and b!932176 condMapEmpty!31851) mapIsEmpty!31851))

(assert (= (and b!932176 (not condMapEmpty!31851)) mapNonEmpty!31851))

(get-info :version)

(assert (= (and mapNonEmpty!31851 ((_ is ValueCellFull!9549) mapValue!31851)) b!932179))

(assert (= (and b!932176 ((_ is ValueCellFull!9549) mapDefault!31851)) b!932184))

(assert (= start!79394 b!932176))

(declare-fun b_lambda!13917 () Bool)

(assert (=> (not b_lambda!13917) (not b!932172)))

(declare-fun t!27226 () Bool)

(declare-fun tb!5955 () Bool)

(assert (=> (and start!79394 (= defaultEntry!1235 defaultEntry!1235) t!27226) tb!5955))

(declare-fun result!11727 () Bool)

(assert (=> tb!5955 (= result!11727 tp_is_empty!20061)))

(assert (=> b!932172 t!27226))

(declare-fun b_and!28685 () Bool)

(assert (= b_and!28683 (and (=> t!27226 result!11727) b_and!28685)))

(declare-fun m!866239 () Bool)

(assert (=> b!932173 m!866239))

(declare-fun m!866241 () Bool)

(assert (=> b!932173 m!866241))

(declare-fun m!866243 () Bool)

(assert (=> mapNonEmpty!31851 m!866243))

(declare-fun m!866245 () Bool)

(assert (=> b!932182 m!866245))

(declare-fun m!866247 () Bool)

(assert (=> b!932172 m!866247))

(declare-fun m!866249 () Bool)

(assert (=> b!932172 m!866249))

(declare-fun m!866251 () Bool)

(assert (=> b!932172 m!866251))

(declare-fun m!866253 () Bool)

(assert (=> b!932172 m!866253))

(declare-fun m!866255 () Bool)

(assert (=> b!932172 m!866255))

(assert (=> b!932172 m!866247))

(declare-fun m!866257 () Bool)

(assert (=> b!932172 m!866257))

(assert (=> b!932172 m!866253))

(assert (=> b!932172 m!866255))

(declare-fun m!866259 () Bool)

(assert (=> b!932172 m!866259))

(declare-fun m!866261 () Bool)

(assert (=> b!932172 m!866261))

(assert (=> b!932172 m!866249))

(declare-fun m!866263 () Bool)

(assert (=> b!932172 m!866263))

(declare-fun m!866265 () Bool)

(assert (=> b!932172 m!866265))

(declare-fun m!866267 () Bool)

(assert (=> start!79394 m!866267))

(declare-fun m!866269 () Bool)

(assert (=> start!79394 m!866269))

(declare-fun m!866271 () Bool)

(assert (=> start!79394 m!866271))

(declare-fun m!866273 () Bool)

(assert (=> b!932177 m!866273))

(declare-fun m!866275 () Bool)

(assert (=> b!932175 m!866275))

(declare-fun m!866277 () Bool)

(assert (=> b!932181 m!866277))

(declare-fun m!866279 () Bool)

(assert (=> b!932181 m!866279))

(declare-fun m!866281 () Bool)

(assert (=> b!932183 m!866281))

(check-sat (not mapNonEmpty!31851) (not b!932173) (not b!932175) (not b!932183) (not start!79394) (not b_lambda!13917) (not b!932177) b_and!28685 (not b_next!17553) (not b!932181) (not b!932182) tp_is_empty!20061 (not b!932172))
(check-sat b_and!28685 (not b_next!17553))
