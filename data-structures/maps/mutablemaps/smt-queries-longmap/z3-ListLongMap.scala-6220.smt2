; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79516 () Bool)

(assert start!79516)

(declare-fun b_free!17643 () Bool)

(declare-fun b_next!17643 () Bool)

(assert (=> start!79516 (= b_free!17643 (not b_next!17643))))

(declare-fun tp!61377 () Bool)

(declare-fun b_and!28871 () Bool)

(assert (=> start!79516 (= tp!61377 b_and!28871)))

(declare-fun b!934268 () Bool)

(declare-fun res!629342 () Bool)

(declare-fun e!524622 () Bool)

(assert (=> b!934268 (=> (not res!629342) (not e!524622))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56260 0))(
  ( (array!56261 (arr!27069 (Array (_ BitVec 32) (_ BitVec 64))) (size!27529 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56260)

(assert (=> b!934268 (= res!629342 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27529 _keys!1487))))))

(declare-fun b!934269 () Bool)

(declare-fun e!524621 () Bool)

(declare-fun e!524617 () Bool)

(assert (=> b!934269 (= e!524621 e!524617)))

(declare-fun res!629348 () Bool)

(assert (=> b!934269 (=> (not res!629348) (not e!524617))))

(declare-fun lt!420917 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934269 (= res!629348 (validKeyInArray!0 lt!420917))))

(assert (=> b!934269 (= lt!420917 (select (arr!27069 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapIsEmpty!31989 () Bool)

(declare-fun mapRes!31989 () Bool)

(assert (=> mapIsEmpty!31989 mapRes!31989))

(declare-fun b!934270 () Bool)

(assert (=> b!934270 (= e!524617 (not true))))

(declare-fun e!524623 () Bool)

(assert (=> b!934270 e!524623))

(declare-fun c!97073 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(assert (=> b!934270 (= c!97073 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((Unit!31521 0))(
  ( (Unit!31522) )
))
(declare-fun lt!420914 () Unit!31521)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31833 0))(
  ( (V!31834 (val!10126 Int)) )
))
(declare-datatypes ((ValueCell!9594 0))(
  ( (ValueCellFull!9594 (v!12646 V!31833)) (EmptyCell!9594) )
))
(declare-datatypes ((array!56262 0))(
  ( (array!56263 (arr!27070 (Array (_ BitVec 32) ValueCell!9594)) (size!27530 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56262)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31833)

(declare-fun minValue!1173 () V!31833)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!277 (array!56260 array!56262 (_ BitVec 32) (_ BitVec 32) V!31833 V!31833 (_ BitVec 64) (_ BitVec 32) Int) Unit!31521)

(assert (=> b!934270 (= lt!420914 (lemmaListMapContainsThenArrayContainsFrom!277 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!19195 0))(
  ( (Nil!19192) (Cons!19191 (h!20337 (_ BitVec 64)) (t!27390 List!19195)) )
))
(declare-fun arrayNoDuplicates!0 (array!56260 (_ BitVec 32) List!19195) Bool)

(assert (=> b!934270 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19192)))

(declare-fun lt!420916 () Unit!31521)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56260 (_ BitVec 32) (_ BitVec 32)) Unit!31521)

(assert (=> b!934270 (= lt!420916 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!13388 0))(
  ( (tuple2!13389 (_1!6704 (_ BitVec 64)) (_2!6704 V!31833)) )
))
(declare-datatypes ((List!19196 0))(
  ( (Nil!19193) (Cons!19192 (h!20338 tuple2!13388) (t!27391 List!19196)) )
))
(declare-datatypes ((ListLongMap!12099 0))(
  ( (ListLongMap!12100 (toList!6065 List!19196)) )
))
(declare-fun lt!420920 () ListLongMap!12099)

(declare-fun lt!420918 () tuple2!13388)

(declare-fun contains!5066 (ListLongMap!12099 (_ BitVec 64)) Bool)

(declare-fun +!2764 (ListLongMap!12099 tuple2!13388) ListLongMap!12099)

(assert (=> b!934270 (contains!5066 (+!2764 lt!420920 lt!420918) k0!1099)))

(declare-fun lt!420913 () Unit!31521)

(declare-fun lt!420915 () V!31833)

(declare-fun addStillContains!520 (ListLongMap!12099 (_ BitVec 64) V!31833 (_ BitVec 64)) Unit!31521)

(assert (=> b!934270 (= lt!420913 (addStillContains!520 lt!420920 lt!420917 lt!420915 k0!1099))))

(declare-fun getCurrentListMap!3257 (array!56260 array!56262 (_ BitVec 32) (_ BitVec 32) V!31833 V!31833 (_ BitVec 32) Int) ListLongMap!12099)

(assert (=> b!934270 (= (getCurrentListMap!3257 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2764 (getCurrentListMap!3257 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420918))))

(assert (=> b!934270 (= lt!420918 (tuple2!13389 lt!420917 lt!420915))))

(declare-fun get!14263 (ValueCell!9594 V!31833) V!31833)

(declare-fun dynLambda!1603 (Int (_ BitVec 64)) V!31833)

(assert (=> b!934270 (= lt!420915 (get!14263 (select (arr!27070 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1603 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420919 () Unit!31521)

(declare-fun lemmaListMapRecursiveValidKeyArray!199 (array!56260 array!56262 (_ BitVec 32) (_ BitVec 32) V!31833 V!31833 (_ BitVec 32) Int) Unit!31521)

(assert (=> b!934270 (= lt!420919 (lemmaListMapRecursiveValidKeyArray!199 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934271 () Bool)

(declare-fun res!629351 () Bool)

(assert (=> b!934271 (=> (not res!629351) (not e!524621))))

(assert (=> b!934271 (= res!629351 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun res!629345 () Bool)

(assert (=> start!79516 (=> (not res!629345) (not e!524622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79516 (= res!629345 (validMask!0 mask!1881))))

(assert (=> start!79516 e!524622))

(assert (=> start!79516 true))

(declare-fun tp_is_empty!20151 () Bool)

(assert (=> start!79516 tp_is_empty!20151))

(declare-fun e!524618 () Bool)

(declare-fun array_inv!21020 (array!56262) Bool)

(assert (=> start!79516 (and (array_inv!21020 _values!1231) e!524618)))

(assert (=> start!79516 tp!61377))

(declare-fun array_inv!21021 (array!56260) Bool)

(assert (=> start!79516 (array_inv!21021 _keys!1487)))

(declare-fun b!934272 () Bool)

(declare-fun e!524620 () Bool)

(assert (=> b!934272 (= e!524620 tp_is_empty!20151)))

(declare-fun b!934273 () Bool)

(assert (=> b!934273 (= e!524623 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!934274 () Bool)

(declare-fun res!629344 () Bool)

(assert (=> b!934274 (=> (not res!629344) (not e!524621))))

(assert (=> b!934274 (= res!629344 (validKeyInArray!0 k0!1099))))

(declare-fun b!934275 () Bool)

(declare-fun e!524619 () Bool)

(assert (=> b!934275 (= e!524619 tp_is_empty!20151)))

(declare-fun b!934276 () Bool)

(declare-fun res!629343 () Bool)

(assert (=> b!934276 (=> (not res!629343) (not e!524622))))

(assert (=> b!934276 (= res!629343 (and (= (size!27530 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27529 _keys!1487) (size!27530 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934277 () Bool)

(assert (=> b!934277 (= e!524618 (and e!524620 mapRes!31989))))

(declare-fun condMapEmpty!31989 () Bool)

(declare-fun mapDefault!31989 () ValueCell!9594)

(assert (=> b!934277 (= condMapEmpty!31989 (= (arr!27070 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9594)) mapDefault!31989)))))

(declare-fun b!934278 () Bool)

(declare-fun res!629350 () Bool)

(assert (=> b!934278 (=> (not res!629350) (not e!524622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56260 (_ BitVec 32)) Bool)

(assert (=> b!934278 (= res!629350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!934279 () Bool)

(declare-fun res!629347 () Bool)

(assert (=> b!934279 (=> (not res!629347) (not e!524622))))

(assert (=> b!934279 (= res!629347 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19192))))

(declare-fun b!934280 () Bool)

(assert (=> b!934280 (= e!524622 e!524621)))

(declare-fun res!629346 () Bool)

(assert (=> b!934280 (=> (not res!629346) (not e!524621))))

(assert (=> b!934280 (= res!629346 (contains!5066 lt!420920 k0!1099))))

(assert (=> b!934280 (= lt!420920 (getCurrentListMap!3257 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934281 () Bool)

(declare-fun res!629349 () Bool)

(assert (=> b!934281 (=> (not res!629349) (not e!524621))))

(declare-fun v!791 () V!31833)

(declare-fun apply!845 (ListLongMap!12099 (_ BitVec 64)) V!31833)

(assert (=> b!934281 (= res!629349 (= (apply!845 lt!420920 k0!1099) v!791))))

(declare-fun b!934282 () Bool)

(declare-fun arrayContainsKey!0 (array!56260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934282 (= e!524623 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun mapNonEmpty!31989 () Bool)

(declare-fun tp!61376 () Bool)

(assert (=> mapNonEmpty!31989 (= mapRes!31989 (and tp!61376 e!524619))))

(declare-fun mapRest!31989 () (Array (_ BitVec 32) ValueCell!9594))

(declare-fun mapKey!31989 () (_ BitVec 32))

(declare-fun mapValue!31989 () ValueCell!9594)

(assert (=> mapNonEmpty!31989 (= (arr!27070 _values!1231) (store mapRest!31989 mapKey!31989 mapValue!31989))))

(assert (= (and start!79516 res!629345) b!934276))

(assert (= (and b!934276 res!629343) b!934278))

(assert (= (and b!934278 res!629350) b!934279))

(assert (= (and b!934279 res!629347) b!934268))

(assert (= (and b!934268 res!629342) b!934280))

(assert (= (and b!934280 res!629346) b!934281))

(assert (= (and b!934281 res!629349) b!934271))

(assert (= (and b!934271 res!629351) b!934274))

(assert (= (and b!934274 res!629344) b!934269))

(assert (= (and b!934269 res!629348) b!934270))

(assert (= (and b!934270 c!97073) b!934282))

(assert (= (and b!934270 (not c!97073)) b!934273))

(assert (= (and b!934277 condMapEmpty!31989) mapIsEmpty!31989))

(assert (= (and b!934277 (not condMapEmpty!31989)) mapNonEmpty!31989))

(get-info :version)

(assert (= (and mapNonEmpty!31989 ((_ is ValueCellFull!9594) mapValue!31989)) b!934275))

(assert (= (and b!934277 ((_ is ValueCellFull!9594) mapDefault!31989)) b!934272))

(assert (= start!79516 b!934277))

(declare-fun b_lambda!14025 () Bool)

(assert (=> (not b_lambda!14025) (not b!934270)))

(declare-fun t!27389 () Bool)

(declare-fun tb!6045 () Bool)

(assert (=> (and start!79516 (= defaultEntry!1235 defaultEntry!1235) t!27389) tb!6045))

(declare-fun result!11909 () Bool)

(assert (=> tb!6045 (= result!11909 tp_is_empty!20151)))

(assert (=> b!934270 t!27389))

(declare-fun b_and!28873 () Bool)

(assert (= b_and!28871 (and (=> t!27389 result!11909) b_and!28873)))

(declare-fun m!868667 () Bool)

(assert (=> b!934281 m!868667))

(declare-fun m!868669 () Bool)

(assert (=> mapNonEmpty!31989 m!868669))

(declare-fun m!868671 () Bool)

(assert (=> start!79516 m!868671))

(declare-fun m!868673 () Bool)

(assert (=> start!79516 m!868673))

(declare-fun m!868675 () Bool)

(assert (=> start!79516 m!868675))

(declare-fun m!868677 () Bool)

(assert (=> b!934279 m!868677))

(declare-fun m!868679 () Bool)

(assert (=> b!934282 m!868679))

(declare-fun m!868681 () Bool)

(assert (=> b!934278 m!868681))

(declare-fun m!868683 () Bool)

(assert (=> b!934274 m!868683))

(declare-fun m!868685 () Bool)

(assert (=> b!934270 m!868685))

(declare-fun m!868687 () Bool)

(assert (=> b!934270 m!868687))

(declare-fun m!868689 () Bool)

(assert (=> b!934270 m!868689))

(declare-fun m!868691 () Bool)

(assert (=> b!934270 m!868691))

(declare-fun m!868693 () Bool)

(assert (=> b!934270 m!868693))

(assert (=> b!934270 m!868685))

(declare-fun m!868695 () Bool)

(assert (=> b!934270 m!868695))

(declare-fun m!868697 () Bool)

(assert (=> b!934270 m!868697))

(declare-fun m!868699 () Bool)

(assert (=> b!934270 m!868699))

(assert (=> b!934270 m!868693))

(assert (=> b!934270 m!868697))

(declare-fun m!868701 () Bool)

(assert (=> b!934270 m!868701))

(declare-fun m!868703 () Bool)

(assert (=> b!934270 m!868703))

(declare-fun m!868705 () Bool)

(assert (=> b!934270 m!868705))

(declare-fun m!868707 () Bool)

(assert (=> b!934270 m!868707))

(assert (=> b!934270 m!868689))

(declare-fun m!868709 () Bool)

(assert (=> b!934270 m!868709))

(declare-fun m!868711 () Bool)

(assert (=> b!934269 m!868711))

(declare-fun m!868713 () Bool)

(assert (=> b!934269 m!868713))

(declare-fun m!868715 () Bool)

(assert (=> b!934280 m!868715))

(declare-fun m!868717 () Bool)

(assert (=> b!934280 m!868717))

(check-sat (not b!934279) (not b!934270) (not b!934269) (not b_next!17643) (not b!934280) b_and!28873 (not b!934278) (not mapNonEmpty!31989) (not b!934281) (not b_lambda!14025) (not b!934282) tp_is_empty!20151 (not start!79516) (not b!934274))
(check-sat b_and!28873 (not b_next!17643))
