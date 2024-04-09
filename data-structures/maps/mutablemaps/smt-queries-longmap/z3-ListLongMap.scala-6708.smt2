; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84250 () Bool)

(assert start!84250)

(declare-fun b_free!19923 () Bool)

(declare-fun b_next!19923 () Bool)

(assert (=> start!84250 (= b_free!19923 (not b_next!19923))))

(declare-fun tp!69374 () Bool)

(declare-fun b_and!31941 () Bool)

(assert (=> start!84250 (= tp!69374 b_and!31941)))

(declare-fun b!985042 () Bool)

(declare-fun res!659266 () Bool)

(declare-fun e!555297 () Bool)

(assert (=> b!985042 (=> (not res!659266) (not e!555297))))

(declare-datatypes ((array!62015 0))(
  ( (array!62016 (arr!29861 (Array (_ BitVec 32) (_ BitVec 64))) (size!30341 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62015)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62015 (_ BitVec 32)) Bool)

(assert (=> b!985042 (= res!659266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985043 () Bool)

(declare-fun e!555298 () Bool)

(declare-fun tp_is_empty!23025 () Bool)

(assert (=> b!985043 (= e!555298 tp_is_empty!23025)))

(declare-fun b!985044 () Bool)

(declare-fun e!555302 () Bool)

(declare-fun e!555300 () Bool)

(declare-fun mapRes!36566 () Bool)

(assert (=> b!985044 (= e!555302 (and e!555300 mapRes!36566))))

(declare-fun condMapEmpty!36566 () Bool)

(declare-datatypes ((V!35683 0))(
  ( (V!35684 (val!11563 Int)) )
))
(declare-datatypes ((ValueCell!11031 0))(
  ( (ValueCellFull!11031 (v!14125 V!35683)) (EmptyCell!11031) )
))
(declare-datatypes ((array!62017 0))(
  ( (array!62018 (arr!29862 (Array (_ BitVec 32) ValueCell!11031)) (size!30342 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62017)

(declare-fun mapDefault!36566 () ValueCell!11031)

(assert (=> b!985044 (= condMapEmpty!36566 (= (arr!29862 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11031)) mapDefault!36566)))))

(declare-fun mapIsEmpty!36566 () Bool)

(assert (=> mapIsEmpty!36566 mapRes!36566))

(declare-fun b!985045 () Bool)

(declare-fun res!659264 () Bool)

(assert (=> b!985045 (=> (not res!659264) (not e!555297))))

(declare-datatypes ((List!20813 0))(
  ( (Nil!20810) (Cons!20809 (h!21971 (_ BitVec 64)) (t!29688 List!20813)) )
))
(declare-fun arrayNoDuplicates!0 (array!62015 (_ BitVec 32) List!20813) Bool)

(assert (=> b!985045 (= res!659264 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20810))))

(declare-fun b!985046 () Bool)

(declare-fun res!659267 () Bool)

(assert (=> b!985046 (=> (not res!659267) (not e!555297))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985046 (= res!659267 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985047 () Bool)

(assert (=> b!985047 (= e!555300 tp_is_empty!23025)))

(declare-fun res!659265 () Bool)

(assert (=> start!84250 (=> (not res!659265) (not e!555297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84250 (= res!659265 (validMask!0 mask!1948))))

(assert (=> start!84250 e!555297))

(assert (=> start!84250 true))

(assert (=> start!84250 tp_is_empty!23025))

(declare-fun array_inv!22947 (array!62017) Bool)

(assert (=> start!84250 (and (array_inv!22947 _values!1278) e!555302)))

(assert (=> start!84250 tp!69374))

(declare-fun array_inv!22948 (array!62015) Bool)

(assert (=> start!84250 (array_inv!22948 _keys!1544)))

(declare-fun b!985048 () Bool)

(declare-fun e!555301 () Bool)

(assert (=> b!985048 (= e!555301 (not true))))

(declare-datatypes ((tuple2!14894 0))(
  ( (tuple2!14895 (_1!7457 (_ BitVec 64)) (_2!7457 V!35683)) )
))
(declare-datatypes ((List!20814 0))(
  ( (Nil!20811) (Cons!20810 (h!21972 tuple2!14894) (t!29689 List!20814)) )
))
(declare-datatypes ((ListLongMap!13605 0))(
  ( (ListLongMap!13606 (toList!6818 List!20814)) )
))
(declare-fun lt!437084 () ListLongMap!13605)

(declare-fun lt!437082 () tuple2!14894)

(declare-fun lt!437086 () tuple2!14894)

(declare-fun +!3007 (ListLongMap!13605 tuple2!14894) ListLongMap!13605)

(assert (=> b!985048 (= (+!3007 (+!3007 lt!437084 lt!437082) lt!437086) (+!3007 (+!3007 lt!437084 lt!437086) lt!437082))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun lt!437085 () V!35683)

(assert (=> b!985048 (= lt!437086 (tuple2!14895 (select (arr!29861 _keys!1544) from!1932) lt!437085))))

(declare-fun minValue!1220 () V!35683)

(assert (=> b!985048 (= lt!437082 (tuple2!14895 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32689 0))(
  ( (Unit!32690) )
))
(declare-fun lt!437083 () Unit!32689)

(declare-fun addCommutativeForDiffKeys!669 (ListLongMap!13605 (_ BitVec 64) V!35683 (_ BitVec 64) V!35683) Unit!32689)

(assert (=> b!985048 (= lt!437083 (addCommutativeForDiffKeys!669 lt!437084 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29861 _keys!1544) from!1932) lt!437085))))

(declare-fun b!985049 () Bool)

(declare-fun res!659268 () Bool)

(assert (=> b!985049 (=> (not res!659268) (not e!555297))))

(assert (=> b!985049 (= res!659268 (and (= (size!30342 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30341 _keys!1544) (size!30342 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985050 () Bool)

(declare-fun res!659262 () Bool)

(assert (=> b!985050 (=> (not res!659262) (not e!555297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985050 (= res!659262 (validKeyInArray!0 (select (arr!29861 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36566 () Bool)

(declare-fun tp!69373 () Bool)

(assert (=> mapNonEmpty!36566 (= mapRes!36566 (and tp!69373 e!555298))))

(declare-fun mapValue!36566 () ValueCell!11031)

(declare-fun mapKey!36566 () (_ BitVec 32))

(declare-fun mapRest!36566 () (Array (_ BitVec 32) ValueCell!11031))

(assert (=> mapNonEmpty!36566 (= (arr!29862 _values!1278) (store mapRest!36566 mapKey!36566 mapValue!36566))))

(declare-fun b!985051 () Bool)

(assert (=> b!985051 (= e!555297 e!555301)))

(declare-fun res!659263 () Bool)

(assert (=> b!985051 (=> (not res!659263) (not e!555301))))

(assert (=> b!985051 (= res!659263 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29861 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15519 (ValueCell!11031 V!35683) V!35683)

(declare-fun dynLambda!1844 (Int (_ BitVec 64)) V!35683)

(assert (=> b!985051 (= lt!437085 (get!15519 (select (arr!29862 _values!1278) from!1932) (dynLambda!1844 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35683)

(declare-fun getCurrentListMapNoExtraKeys!3473 (array!62015 array!62017 (_ BitVec 32) (_ BitVec 32) V!35683 V!35683 (_ BitVec 32) Int) ListLongMap!13605)

(assert (=> b!985051 (= lt!437084 (getCurrentListMapNoExtraKeys!3473 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!985052 () Bool)

(declare-fun res!659261 () Bool)

(assert (=> b!985052 (=> (not res!659261) (not e!555297))))

(assert (=> b!985052 (= res!659261 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30341 _keys!1544))))))

(assert (= (and start!84250 res!659265) b!985049))

(assert (= (and b!985049 res!659268) b!985042))

(assert (= (and b!985042 res!659266) b!985045))

(assert (= (and b!985045 res!659264) b!985052))

(assert (= (and b!985052 res!659261) b!985050))

(assert (= (and b!985050 res!659262) b!985046))

(assert (= (and b!985046 res!659267) b!985051))

(assert (= (and b!985051 res!659263) b!985048))

(assert (= (and b!985044 condMapEmpty!36566) mapIsEmpty!36566))

(assert (= (and b!985044 (not condMapEmpty!36566)) mapNonEmpty!36566))

(get-info :version)

(assert (= (and mapNonEmpty!36566 ((_ is ValueCellFull!11031) mapValue!36566)) b!985043))

(assert (= (and b!985044 ((_ is ValueCellFull!11031) mapDefault!36566)) b!985047))

(assert (= start!84250 b!985044))

(declare-fun b_lambda!14985 () Bool)

(assert (=> (not b_lambda!14985) (not b!985051)))

(declare-fun t!29687 () Bool)

(declare-fun tb!6725 () Bool)

(assert (=> (and start!84250 (= defaultEntry!1281 defaultEntry!1281) t!29687) tb!6725))

(declare-fun result!13431 () Bool)

(assert (=> tb!6725 (= result!13431 tp_is_empty!23025)))

(assert (=> b!985051 t!29687))

(declare-fun b_and!31943 () Bool)

(assert (= b_and!31941 (and (=> t!29687 result!13431) b_and!31943)))

(declare-fun m!912213 () Bool)

(assert (=> start!84250 m!912213))

(declare-fun m!912215 () Bool)

(assert (=> start!84250 m!912215))

(declare-fun m!912217 () Bool)

(assert (=> start!84250 m!912217))

(declare-fun m!912219 () Bool)

(assert (=> b!985045 m!912219))

(declare-fun m!912221 () Bool)

(assert (=> b!985050 m!912221))

(assert (=> b!985050 m!912221))

(declare-fun m!912223 () Bool)

(assert (=> b!985050 m!912223))

(assert (=> b!985051 m!912221))

(declare-fun m!912225 () Bool)

(assert (=> b!985051 m!912225))

(declare-fun m!912227 () Bool)

(assert (=> b!985051 m!912227))

(declare-fun m!912229 () Bool)

(assert (=> b!985051 m!912229))

(assert (=> b!985051 m!912225))

(assert (=> b!985051 m!912229))

(declare-fun m!912231 () Bool)

(assert (=> b!985051 m!912231))

(declare-fun m!912233 () Bool)

(assert (=> mapNonEmpty!36566 m!912233))

(declare-fun m!912235 () Bool)

(assert (=> b!985048 m!912235))

(declare-fun m!912237 () Bool)

(assert (=> b!985048 m!912237))

(assert (=> b!985048 m!912221))

(declare-fun m!912239 () Bool)

(assert (=> b!985048 m!912239))

(assert (=> b!985048 m!912221))

(declare-fun m!912241 () Bool)

(assert (=> b!985048 m!912241))

(assert (=> b!985048 m!912235))

(assert (=> b!985048 m!912239))

(declare-fun m!912243 () Bool)

(assert (=> b!985048 m!912243))

(declare-fun m!912245 () Bool)

(assert (=> b!985042 m!912245))

(check-sat b_and!31943 (not start!84250) (not b_lambda!14985) (not b!985045) (not b_next!19923) (not mapNonEmpty!36566) (not b!985042) (not b!985048) tp_is_empty!23025 (not b!985051) (not b!985050))
(check-sat b_and!31943 (not b_next!19923))
