; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84106 () Bool)

(assert start!84106)

(declare-fun b_free!19833 () Bool)

(declare-fun b_next!19833 () Bool)

(assert (=> start!84106 (= b_free!19833 (not b_next!19833))))

(declare-fun tp!69022 () Bool)

(declare-fun b_and!31767 () Bool)

(assert (=> start!84106 (= tp!69022 b_and!31767)))

(declare-fun b!982969 () Bool)

(declare-fun res!657921 () Bool)

(declare-fun e!554093 () Bool)

(assert (=> b!982969 (=> (not res!657921) (not e!554093))))

(declare-datatypes ((array!61745 0))(
  ( (array!61746 (arr!29726 (Array (_ BitVec 32) (_ BitVec 64))) (size!30206 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61745)

(declare-datatypes ((List!20731 0))(
  ( (Nil!20728) (Cons!20727 (h!21889 (_ BitVec 64)) (t!29522 List!20731)) )
))
(declare-fun arrayNoDuplicates!0 (array!61745 (_ BitVec 32) List!20731) Bool)

(assert (=> b!982969 (= res!657921 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20728))))

(declare-fun b!982970 () Bool)

(declare-fun res!657924 () Bool)

(assert (=> b!982970 (=> (not res!657924) (not e!554093))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!982970 (= res!657924 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30206 _keys!1544))))))

(declare-fun b!982971 () Bool)

(declare-fun res!657925 () Bool)

(assert (=> b!982971 (=> (not res!657925) (not e!554093))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982971 (= res!657925 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982972 () Bool)

(declare-fun e!554096 () Bool)

(declare-fun tp_is_empty!22881 () Bool)

(assert (=> b!982972 (= e!554096 tp_is_empty!22881)))

(declare-fun b!982973 () Bool)

(declare-fun e!554095 () Bool)

(assert (=> b!982973 (= e!554093 e!554095)))

(declare-fun res!657920 () Bool)

(assert (=> b!982973 (=> (not res!657920) (not e!554095))))

(assert (=> b!982973 (= res!657920 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29726 _keys!1544) from!1932))))))

(declare-datatypes ((V!35491 0))(
  ( (V!35492 (val!11491 Int)) )
))
(declare-datatypes ((ValueCell!10959 0))(
  ( (ValueCellFull!10959 (v!14053 V!35491)) (EmptyCell!10959) )
))
(declare-datatypes ((array!61747 0))(
  ( (array!61748 (arr!29727 (Array (_ BitVec 32) ValueCell!10959)) (size!30207 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61747)

(declare-fun lt!436371 () V!35491)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15443 (ValueCell!10959 V!35491) V!35491)

(declare-fun dynLambda!1816 (Int (_ BitVec 64)) V!35491)

(assert (=> b!982973 (= lt!436371 (get!15443 (select (arr!29727 _values!1278) from!1932) (dynLambda!1816 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35491)

(declare-datatypes ((tuple2!14826 0))(
  ( (tuple2!14827 (_1!7423 (_ BitVec 64)) (_2!7423 V!35491)) )
))
(declare-datatypes ((List!20732 0))(
  ( (Nil!20729) (Cons!20728 (h!21890 tuple2!14826) (t!29523 List!20732)) )
))
(declare-datatypes ((ListLongMap!13537 0))(
  ( (ListLongMap!13538 (toList!6784 List!20732)) )
))
(declare-fun lt!436372 () ListLongMap!13537)

(declare-fun zeroValue!1220 () V!35491)

(declare-fun getCurrentListMapNoExtraKeys!3443 (array!61745 array!61747 (_ BitVec 32) (_ BitVec 32) V!35491 V!35491 (_ BitVec 32) Int) ListLongMap!13537)

(assert (=> b!982973 (= lt!436372 (getCurrentListMapNoExtraKeys!3443 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982974 () Bool)

(declare-fun e!554092 () Bool)

(assert (=> b!982974 (= e!554092 tp_is_empty!22881)))

(declare-fun mapIsEmpty!36350 () Bool)

(declare-fun mapRes!36350 () Bool)

(assert (=> mapIsEmpty!36350 mapRes!36350))

(declare-fun res!657923 () Bool)

(assert (=> start!84106 (=> (not res!657923) (not e!554093))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84106 (= res!657923 (validMask!0 mask!1948))))

(assert (=> start!84106 e!554093))

(assert (=> start!84106 true))

(assert (=> start!84106 tp_is_empty!22881))

(declare-fun e!554091 () Bool)

(declare-fun array_inv!22855 (array!61747) Bool)

(assert (=> start!84106 (and (array_inv!22855 _values!1278) e!554091)))

(assert (=> start!84106 tp!69022))

(declare-fun array_inv!22856 (array!61745) Bool)

(assert (=> start!84106 (array_inv!22856 _keys!1544)))

(declare-fun b!982975 () Bool)

(declare-fun res!657922 () Bool)

(assert (=> b!982975 (=> (not res!657922) (not e!554093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61745 (_ BitVec 32)) Bool)

(assert (=> b!982975 (= res!657922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982976 () Bool)

(declare-fun res!657927 () Bool)

(assert (=> b!982976 (=> (not res!657927) (not e!554093))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982976 (= res!657927 (validKeyInArray!0 (select (arr!29726 _keys!1544) from!1932)))))

(declare-fun b!982977 () Bool)

(declare-fun res!657926 () Bool)

(assert (=> b!982977 (=> (not res!657926) (not e!554093))))

(assert (=> b!982977 (= res!657926 (and (= (size!30207 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30206 _keys!1544) (size!30207 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982978 () Bool)

(assert (=> b!982978 (= e!554091 (and e!554096 mapRes!36350))))

(declare-fun condMapEmpty!36350 () Bool)

(declare-fun mapDefault!36350 () ValueCell!10959)

(assert (=> b!982978 (= condMapEmpty!36350 (= (arr!29727 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10959)) mapDefault!36350)))))

(declare-fun b!982979 () Bool)

(assert (=> b!982979 (= e!554095 (not true))))

(declare-fun lt!436374 () tuple2!14826)

(declare-fun lt!436375 () tuple2!14826)

(declare-fun +!2980 (ListLongMap!13537 tuple2!14826) ListLongMap!13537)

(assert (=> b!982979 (= (+!2980 (+!2980 lt!436372 lt!436374) lt!436375) (+!2980 (+!2980 lt!436372 lt!436375) lt!436374))))

(assert (=> b!982979 (= lt!436375 (tuple2!14827 (select (arr!29726 _keys!1544) from!1932) lt!436371))))

(assert (=> b!982979 (= lt!436374 (tuple2!14827 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32635 0))(
  ( (Unit!32636) )
))
(declare-fun lt!436373 () Unit!32635)

(declare-fun addCommutativeForDiffKeys!642 (ListLongMap!13537 (_ BitVec 64) V!35491 (_ BitVec 64) V!35491) Unit!32635)

(assert (=> b!982979 (= lt!436373 (addCommutativeForDiffKeys!642 lt!436372 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29726 _keys!1544) from!1932) lt!436371))))

(declare-fun mapNonEmpty!36350 () Bool)

(declare-fun tp!69023 () Bool)

(assert (=> mapNonEmpty!36350 (= mapRes!36350 (and tp!69023 e!554092))))

(declare-fun mapRest!36350 () (Array (_ BitVec 32) ValueCell!10959))

(declare-fun mapValue!36350 () ValueCell!10959)

(declare-fun mapKey!36350 () (_ BitVec 32))

(assert (=> mapNonEmpty!36350 (= (arr!29727 _values!1278) (store mapRest!36350 mapKey!36350 mapValue!36350))))

(assert (= (and start!84106 res!657923) b!982977))

(assert (= (and b!982977 res!657926) b!982975))

(assert (= (and b!982975 res!657922) b!982969))

(assert (= (and b!982969 res!657921) b!982970))

(assert (= (and b!982970 res!657924) b!982976))

(assert (= (and b!982976 res!657927) b!982971))

(assert (= (and b!982971 res!657925) b!982973))

(assert (= (and b!982973 res!657920) b!982979))

(assert (= (and b!982978 condMapEmpty!36350) mapIsEmpty!36350))

(assert (= (and b!982978 (not condMapEmpty!36350)) mapNonEmpty!36350))

(get-info :version)

(assert (= (and mapNonEmpty!36350 ((_ is ValueCellFull!10959) mapValue!36350)) b!982974))

(assert (= (and b!982978 ((_ is ValueCellFull!10959) mapDefault!36350)) b!982972))

(assert (= start!84106 b!982978))

(declare-fun b_lambda!14901 () Bool)

(assert (=> (not b_lambda!14901) (not b!982973)))

(declare-fun t!29521 () Bool)

(declare-fun tb!6641 () Bool)

(assert (=> (and start!84106 (= defaultEntry!1281 defaultEntry!1281) t!29521) tb!6641))

(declare-fun result!13263 () Bool)

(assert (=> tb!6641 (= result!13263 tp_is_empty!22881)))

(assert (=> b!982973 t!29521))

(declare-fun b_and!31769 () Bool)

(assert (= b_and!31767 (and (=> t!29521 result!13263) b_and!31769)))

(declare-fun m!910395 () Bool)

(assert (=> b!982979 m!910395))

(declare-fun m!910397 () Bool)

(assert (=> b!982979 m!910397))

(declare-fun m!910399 () Bool)

(assert (=> b!982979 m!910399))

(assert (=> b!982979 m!910395))

(declare-fun m!910401 () Bool)

(assert (=> b!982979 m!910401))

(assert (=> b!982979 m!910397))

(declare-fun m!910403 () Bool)

(assert (=> b!982979 m!910403))

(declare-fun m!910405 () Bool)

(assert (=> b!982979 m!910405))

(assert (=> b!982979 m!910403))

(assert (=> b!982973 m!910395))

(declare-fun m!910407 () Bool)

(assert (=> b!982973 m!910407))

(declare-fun m!910409 () Bool)

(assert (=> b!982973 m!910409))

(declare-fun m!910411 () Bool)

(assert (=> b!982973 m!910411))

(assert (=> b!982973 m!910407))

(assert (=> b!982973 m!910411))

(declare-fun m!910413 () Bool)

(assert (=> b!982973 m!910413))

(declare-fun m!910415 () Bool)

(assert (=> start!84106 m!910415))

(declare-fun m!910417 () Bool)

(assert (=> start!84106 m!910417))

(declare-fun m!910419 () Bool)

(assert (=> start!84106 m!910419))

(assert (=> b!982976 m!910395))

(assert (=> b!982976 m!910395))

(declare-fun m!910421 () Bool)

(assert (=> b!982976 m!910421))

(declare-fun m!910423 () Bool)

(assert (=> mapNonEmpty!36350 m!910423))

(declare-fun m!910425 () Bool)

(assert (=> b!982975 m!910425))

(declare-fun m!910427 () Bool)

(assert (=> b!982969 m!910427))

(check-sat (not b!982979) (not start!84106) (not b_next!19833) b_and!31769 tp_is_empty!22881 (not mapNonEmpty!36350) (not b_lambda!14901) (not b!982976) (not b!982973) (not b!982969) (not b!982975))
(check-sat b_and!31769 (not b_next!19833))
