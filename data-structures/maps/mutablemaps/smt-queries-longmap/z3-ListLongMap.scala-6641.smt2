; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83848 () Bool)

(assert start!83848)

(declare-fun b_free!19629 () Bool)

(declare-fun b_next!19629 () Bool)

(assert (=> start!83848 (= b_free!19629 (not b_next!19629))))

(declare-fun tp!68330 () Bool)

(declare-fun b_and!31365 () Bool)

(assert (=> start!83848 (= tp!68330 b_and!31365)))

(declare-fun b!978901 () Bool)

(declare-fun e!551861 () Bool)

(declare-fun e!551862 () Bool)

(assert (=> b!978901 (= e!551861 (not e!551862))))

(declare-fun res!655218 () Bool)

(assert (=> b!978901 (=> res!655218 e!551862)))

(declare-datatypes ((array!61259 0))(
  ( (array!61260 (arr!29483 (Array (_ BitVec 32) (_ BitVec 64))) (size!29963 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61259)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!978901 (= res!655218 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29483 _keys!1544) from!1932)))))

(declare-datatypes ((V!35147 0))(
  ( (V!35148 (val!11362 Int)) )
))
(declare-datatypes ((tuple2!14666 0))(
  ( (tuple2!14667 (_1!7343 (_ BitVec 64)) (_2!7343 V!35147)) )
))
(declare-fun lt!434074 () tuple2!14666)

(declare-fun lt!434069 () tuple2!14666)

(declare-datatypes ((List!20564 0))(
  ( (Nil!20561) (Cons!20560 (h!21722 tuple2!14666) (t!29157 List!20564)) )
))
(declare-datatypes ((ListLongMap!13377 0))(
  ( (ListLongMap!13378 (toList!6704 List!20564)) )
))
(declare-fun lt!434070 () ListLongMap!13377)

(declare-fun lt!434066 () ListLongMap!13377)

(declare-fun +!2910 (ListLongMap!13377 tuple2!14666) ListLongMap!13377)

(assert (=> b!978901 (= (+!2910 lt!434066 lt!434069) (+!2910 lt!434070 lt!434074))))

(declare-fun lt!434073 () ListLongMap!13377)

(assert (=> b!978901 (= lt!434070 (+!2910 lt!434073 lt!434069))))

(declare-fun lt!434071 () V!35147)

(assert (=> b!978901 (= lt!434069 (tuple2!14667 (select (arr!29483 _keys!1544) from!1932) lt!434071))))

(assert (=> b!978901 (= lt!434066 (+!2910 lt!434073 lt!434074))))

(declare-fun minValue!1220 () V!35147)

(assert (=> b!978901 (= lt!434074 (tuple2!14667 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32495 0))(
  ( (Unit!32496) )
))
(declare-fun lt!434067 () Unit!32495)

(declare-fun addCommutativeForDiffKeys!572 (ListLongMap!13377 (_ BitVec 64) V!35147 (_ BitVec 64) V!35147) Unit!32495)

(assert (=> b!978901 (= lt!434067 (addCommutativeForDiffKeys!572 lt!434073 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29483 _keys!1544) from!1932) lt!434071))))

(declare-datatypes ((ValueCell!10830 0))(
  ( (ValueCellFull!10830 (v!13924 V!35147)) (EmptyCell!10830) )
))
(declare-datatypes ((array!61261 0))(
  ( (array!61262 (arr!29484 (Array (_ BitVec 32) ValueCell!10830)) (size!29964 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61261)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15287 (ValueCell!10830 V!35147) V!35147)

(declare-fun dynLambda!1746 (Int (_ BitVec 64)) V!35147)

(assert (=> b!978901 (= lt!434071 (get!15287 (select (arr!29484 _values!1278) from!1932) (dynLambda!1746 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434065 () ListLongMap!13377)

(declare-fun lt!434068 () tuple2!14666)

(assert (=> b!978901 (= lt!434073 (+!2910 lt!434065 lt!434068))))

(declare-fun zeroValue!1220 () V!35147)

(assert (=> b!978901 (= lt!434068 (tuple2!14667 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3371 (array!61259 array!61261 (_ BitVec 32) (_ BitVec 32) V!35147 V!35147 (_ BitVec 32) Int) ListLongMap!13377)

(assert (=> b!978901 (= lt!434065 (getCurrentListMapNoExtraKeys!3371 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!978902 () Bool)

(declare-fun e!551864 () Bool)

(declare-fun e!551859 () Bool)

(declare-fun mapRes!35963 () Bool)

(assert (=> b!978902 (= e!551864 (and e!551859 mapRes!35963))))

(declare-fun condMapEmpty!35963 () Bool)

(declare-fun mapDefault!35963 () ValueCell!10830)

(assert (=> b!978902 (= condMapEmpty!35963 (= (arr!29484 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10830)) mapDefault!35963)))))

(declare-fun b!978903 () Bool)

(declare-fun res!655216 () Bool)

(assert (=> b!978903 (=> (not res!655216) (not e!551861))))

(assert (=> b!978903 (= res!655216 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!35963 () Bool)

(declare-fun tp!68329 () Bool)

(declare-fun e!551863 () Bool)

(assert (=> mapNonEmpty!35963 (= mapRes!35963 (and tp!68329 e!551863))))

(declare-fun mapKey!35963 () (_ BitVec 32))

(declare-fun mapRest!35963 () (Array (_ BitVec 32) ValueCell!10830))

(declare-fun mapValue!35963 () ValueCell!10830)

(assert (=> mapNonEmpty!35963 (= (arr!29484 _values!1278) (store mapRest!35963 mapKey!35963 mapValue!35963))))

(declare-fun b!978905 () Bool)

(declare-fun res!655214 () Bool)

(assert (=> b!978905 (=> (not res!655214) (not e!551861))))

(declare-datatypes ((List!20565 0))(
  ( (Nil!20562) (Cons!20561 (h!21723 (_ BitVec 64)) (t!29158 List!20565)) )
))
(declare-fun arrayNoDuplicates!0 (array!61259 (_ BitVec 32) List!20565) Bool)

(assert (=> b!978905 (= res!655214 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20562))))

(declare-fun b!978906 () Bool)

(declare-fun res!655215 () Bool)

(assert (=> b!978906 (=> (not res!655215) (not e!551861))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978906 (= res!655215 (validKeyInArray!0 (select (arr!29483 _keys!1544) from!1932)))))

(declare-fun b!978907 () Bool)

(declare-fun tp_is_empty!22623 () Bool)

(assert (=> b!978907 (= e!551863 tp_is_empty!22623)))

(declare-fun b!978908 () Bool)

(declare-fun res!655211 () Bool)

(assert (=> b!978908 (=> (not res!655211) (not e!551861))))

(assert (=> b!978908 (= res!655211 (and (= (size!29964 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29963 _keys!1544) (size!29964 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978909 () Bool)

(declare-fun res!655213 () Bool)

(assert (=> b!978909 (=> (not res!655213) (not e!551861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61259 (_ BitVec 32)) Bool)

(assert (=> b!978909 (= res!655213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978910 () Bool)

(assert (=> b!978910 (= e!551859 tp_is_empty!22623)))

(declare-fun b!978911 () Bool)

(declare-fun res!655212 () Bool)

(assert (=> b!978911 (=> (not res!655212) (not e!551861))))

(assert (=> b!978911 (= res!655212 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29963 _keys!1544))))))

(declare-fun mapIsEmpty!35963 () Bool)

(assert (=> mapIsEmpty!35963 mapRes!35963))

(declare-fun b!978904 () Bool)

(assert (=> b!978904 (= e!551862 true)))

(assert (=> b!978904 (= lt!434070 (+!2910 (+!2910 lt!434065 lt!434069) lt!434068))))

(declare-fun lt!434072 () Unit!32495)

(assert (=> b!978904 (= lt!434072 (addCommutativeForDiffKeys!572 lt!434065 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29483 _keys!1544) from!1932) lt!434071))))

(declare-fun res!655217 () Bool)

(assert (=> start!83848 (=> (not res!655217) (not e!551861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83848 (= res!655217 (validMask!0 mask!1948))))

(assert (=> start!83848 e!551861))

(assert (=> start!83848 true))

(assert (=> start!83848 tp_is_empty!22623))

(declare-fun array_inv!22693 (array!61261) Bool)

(assert (=> start!83848 (and (array_inv!22693 _values!1278) e!551864)))

(assert (=> start!83848 tp!68330))

(declare-fun array_inv!22694 (array!61259) Bool)

(assert (=> start!83848 (array_inv!22694 _keys!1544)))

(assert (= (and start!83848 res!655217) b!978908))

(assert (= (and b!978908 res!655211) b!978909))

(assert (= (and b!978909 res!655213) b!978905))

(assert (= (and b!978905 res!655214) b!978911))

(assert (= (and b!978911 res!655212) b!978906))

(assert (= (and b!978906 res!655215) b!978903))

(assert (= (and b!978903 res!655216) b!978901))

(assert (= (and b!978901 (not res!655218)) b!978904))

(assert (= (and b!978902 condMapEmpty!35963) mapIsEmpty!35963))

(assert (= (and b!978902 (not condMapEmpty!35963)) mapNonEmpty!35963))

(get-info :version)

(assert (= (and mapNonEmpty!35963 ((_ is ValueCellFull!10830) mapValue!35963)) b!978907))

(assert (= (and b!978902 ((_ is ValueCellFull!10830) mapDefault!35963)) b!978910))

(assert (= start!83848 b!978902))

(declare-fun b_lambda!14703 () Bool)

(assert (=> (not b_lambda!14703) (not b!978901)))

(declare-fun t!29156 () Bool)

(declare-fun tb!6443 () Bool)

(assert (=> (and start!83848 (= defaultEntry!1281 defaultEntry!1281) t!29156) tb!6443))

(declare-fun result!12867 () Bool)

(assert (=> tb!6443 (= result!12867 tp_is_empty!22623)))

(assert (=> b!978901 t!29156))

(declare-fun b_and!31367 () Bool)

(assert (= b_and!31365 (and (=> t!29156 result!12867) b_and!31367)))

(declare-fun m!906239 () Bool)

(assert (=> b!978906 m!906239))

(assert (=> b!978906 m!906239))

(declare-fun m!906241 () Bool)

(assert (=> b!978906 m!906241))

(declare-fun m!906243 () Bool)

(assert (=> start!83848 m!906243))

(declare-fun m!906245 () Bool)

(assert (=> start!83848 m!906245))

(declare-fun m!906247 () Bool)

(assert (=> start!83848 m!906247))

(declare-fun m!906249 () Bool)

(assert (=> mapNonEmpty!35963 m!906249))

(declare-fun m!906251 () Bool)

(assert (=> b!978905 m!906251))

(declare-fun m!906253 () Bool)

(assert (=> b!978904 m!906253))

(assert (=> b!978904 m!906253))

(declare-fun m!906255 () Bool)

(assert (=> b!978904 m!906255))

(assert (=> b!978904 m!906239))

(assert (=> b!978904 m!906239))

(declare-fun m!906257 () Bool)

(assert (=> b!978904 m!906257))

(assert (=> b!978901 m!906239))

(declare-fun m!906259 () Bool)

(assert (=> b!978901 m!906259))

(assert (=> b!978901 m!906239))

(declare-fun m!906261 () Bool)

(assert (=> b!978901 m!906261))

(declare-fun m!906263 () Bool)

(assert (=> b!978901 m!906263))

(declare-fun m!906265 () Bool)

(assert (=> b!978901 m!906265))

(declare-fun m!906267 () Bool)

(assert (=> b!978901 m!906267))

(declare-fun m!906269 () Bool)

(assert (=> b!978901 m!906269))

(declare-fun m!906271 () Bool)

(assert (=> b!978901 m!906271))

(declare-fun m!906273 () Bool)

(assert (=> b!978901 m!906273))

(declare-fun m!906275 () Bool)

(assert (=> b!978901 m!906275))

(assert (=> b!978901 m!906259))

(assert (=> b!978901 m!906275))

(declare-fun m!906277 () Bool)

(assert (=> b!978901 m!906277))

(declare-fun m!906279 () Bool)

(assert (=> b!978909 m!906279))

(check-sat (not b!978905) (not b!978909) (not b_next!19629) (not b!978906) (not b!978901) tp_is_empty!22623 (not start!83848) (not b_lambda!14703) (not b!978904) b_and!31367 (not mapNonEmpty!35963))
(check-sat b_and!31367 (not b_next!19629))
