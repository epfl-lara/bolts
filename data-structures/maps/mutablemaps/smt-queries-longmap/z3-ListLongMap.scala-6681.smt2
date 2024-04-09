; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84088 () Bool)

(assert start!84088)

(declare-fun b_free!19815 () Bool)

(declare-fun b_next!19815 () Bool)

(assert (=> start!84088 (= b_free!19815 (not b_next!19815))))

(declare-fun tp!68968 () Bool)

(declare-fun b_and!31731 () Bool)

(assert (=> start!84088 (= tp!68968 b_and!31731)))

(declare-fun mapNonEmpty!36323 () Bool)

(declare-fun mapRes!36323 () Bool)

(declare-fun tp!68969 () Bool)

(declare-fun e!553932 () Bool)

(assert (=> mapNonEmpty!36323 (= mapRes!36323 (and tp!68969 e!553932))))

(declare-datatypes ((V!35467 0))(
  ( (V!35468 (val!11482 Int)) )
))
(declare-datatypes ((ValueCell!10950 0))(
  ( (ValueCellFull!10950 (v!14044 V!35467)) (EmptyCell!10950) )
))
(declare-datatypes ((array!61711 0))(
  ( (array!61712 (arr!29709 (Array (_ BitVec 32) ValueCell!10950)) (size!30189 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61711)

(declare-fun mapValue!36323 () ValueCell!10950)

(declare-fun mapRest!36323 () (Array (_ BitVec 32) ValueCell!10950))

(declare-fun mapKey!36323 () (_ BitVec 32))

(assert (=> mapNonEmpty!36323 (= (arr!29709 _values!1278) (store mapRest!36323 mapKey!36323 mapValue!36323))))

(declare-fun b!982654 () Bool)

(declare-fun res!657710 () Bool)

(declare-fun e!553934 () Bool)

(assert (=> b!982654 (=> (not res!657710) (not e!553934))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61713 0))(
  ( (array!61714 (arr!29710 (Array (_ BitVec 32) (_ BitVec 64))) (size!30190 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61713)

(declare-fun mask!1948 () (_ BitVec 32))

(assert (=> b!982654 (= res!657710 (and (= (size!30189 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30190 _keys!1544) (size!30189 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982655 () Bool)

(declare-fun res!657706 () Bool)

(assert (=> b!982655 (=> (not res!657706) (not e!553934))))

(declare-datatypes ((List!20721 0))(
  ( (Nil!20718) (Cons!20717 (h!21879 (_ BitVec 64)) (t!29494 List!20721)) )
))
(declare-fun arrayNoDuplicates!0 (array!61713 (_ BitVec 32) List!20721) Bool)

(assert (=> b!982655 (= res!657706 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20718))))

(declare-fun b!982656 () Bool)

(declare-fun res!657704 () Bool)

(assert (=> b!982656 (=> (not res!657704) (not e!553934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61713 (_ BitVec 32)) Bool)

(assert (=> b!982656 (= res!657704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982657 () Bool)

(declare-fun res!657705 () Bool)

(assert (=> b!982657 (=> (not res!657705) (not e!553934))))

(assert (=> b!982657 (= res!657705 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982658 () Bool)

(declare-fun tp_is_empty!22863 () Bool)

(assert (=> b!982658 (= e!553932 tp_is_empty!22863)))

(declare-fun mapIsEmpty!36323 () Bool)

(assert (=> mapIsEmpty!36323 mapRes!36323))

(declare-fun b!982659 () Bool)

(declare-fun res!657708 () Bool)

(assert (=> b!982659 (=> (not res!657708) (not e!553934))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!982659 (= res!657708 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30190 _keys!1544))))))

(declare-fun b!982660 () Bool)

(declare-fun res!657711 () Bool)

(assert (=> b!982660 (=> (not res!657711) (not e!553934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982660 (= res!657711 (validKeyInArray!0 (select (arr!29710 _keys!1544) from!1932)))))

(declare-fun b!982661 () Bool)

(declare-fun e!553931 () Bool)

(assert (=> b!982661 (= e!553934 e!553931)))

(declare-fun res!657707 () Bool)

(assert (=> b!982661 (=> (not res!657707) (not e!553931))))

(assert (=> b!982661 (= res!657707 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29710 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!436239 () V!35467)

(declare-fun get!15432 (ValueCell!10950 V!35467) V!35467)

(declare-fun dynLambda!1811 (Int (_ BitVec 64)) V!35467)

(assert (=> b!982661 (= lt!436239 (get!15432 (select (arr!29709 _values!1278) from!1932) (dynLambda!1811 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35467)

(declare-datatypes ((tuple2!14816 0))(
  ( (tuple2!14817 (_1!7418 (_ BitVec 64)) (_2!7418 V!35467)) )
))
(declare-datatypes ((List!20722 0))(
  ( (Nil!20719) (Cons!20718 (h!21880 tuple2!14816) (t!29495 List!20722)) )
))
(declare-datatypes ((ListLongMap!13527 0))(
  ( (ListLongMap!13528 (toList!6779 List!20722)) )
))
(declare-fun lt!436236 () ListLongMap!13527)

(declare-fun zeroValue!1220 () V!35467)

(declare-fun getCurrentListMapNoExtraKeys!3438 (array!61713 array!61711 (_ BitVec 32) (_ BitVec 32) V!35467 V!35467 (_ BitVec 32) Int) ListLongMap!13527)

(assert (=> b!982661 (= lt!436236 (getCurrentListMapNoExtraKeys!3438 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982662 () Bool)

(assert (=> b!982662 (= e!553931 (not true))))

(declare-fun lt!436237 () tuple2!14816)

(declare-fun lt!436238 () tuple2!14816)

(declare-fun +!2977 (ListLongMap!13527 tuple2!14816) ListLongMap!13527)

(assert (=> b!982662 (= (+!2977 (+!2977 lt!436236 lt!436237) lt!436238) (+!2977 (+!2977 lt!436236 lt!436238) lt!436237))))

(assert (=> b!982662 (= lt!436238 (tuple2!14817 (select (arr!29710 _keys!1544) from!1932) lt!436239))))

(assert (=> b!982662 (= lt!436237 (tuple2!14817 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32629 0))(
  ( (Unit!32630) )
))
(declare-fun lt!436240 () Unit!32629)

(declare-fun addCommutativeForDiffKeys!639 (ListLongMap!13527 (_ BitVec 64) V!35467 (_ BitVec 64) V!35467) Unit!32629)

(assert (=> b!982662 (= lt!436240 (addCommutativeForDiffKeys!639 lt!436236 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29710 _keys!1544) from!1932) lt!436239))))

(declare-fun res!657709 () Bool)

(assert (=> start!84088 (=> (not res!657709) (not e!553934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84088 (= res!657709 (validMask!0 mask!1948))))

(assert (=> start!84088 e!553934))

(assert (=> start!84088 true))

(assert (=> start!84088 tp_is_empty!22863))

(declare-fun e!553933 () Bool)

(declare-fun array_inv!22845 (array!61711) Bool)

(assert (=> start!84088 (and (array_inv!22845 _values!1278) e!553933)))

(assert (=> start!84088 tp!68968))

(declare-fun array_inv!22846 (array!61713) Bool)

(assert (=> start!84088 (array_inv!22846 _keys!1544)))

(declare-fun b!982663 () Bool)

(declare-fun e!553929 () Bool)

(assert (=> b!982663 (= e!553929 tp_is_empty!22863)))

(declare-fun b!982664 () Bool)

(assert (=> b!982664 (= e!553933 (and e!553929 mapRes!36323))))

(declare-fun condMapEmpty!36323 () Bool)

(declare-fun mapDefault!36323 () ValueCell!10950)

(assert (=> b!982664 (= condMapEmpty!36323 (= (arr!29709 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10950)) mapDefault!36323)))))

(assert (= (and start!84088 res!657709) b!982654))

(assert (= (and b!982654 res!657710) b!982656))

(assert (= (and b!982656 res!657704) b!982655))

(assert (= (and b!982655 res!657706) b!982659))

(assert (= (and b!982659 res!657708) b!982660))

(assert (= (and b!982660 res!657711) b!982657))

(assert (= (and b!982657 res!657705) b!982661))

(assert (= (and b!982661 res!657707) b!982662))

(assert (= (and b!982664 condMapEmpty!36323) mapIsEmpty!36323))

(assert (= (and b!982664 (not condMapEmpty!36323)) mapNonEmpty!36323))

(get-info :version)

(assert (= (and mapNonEmpty!36323 ((_ is ValueCellFull!10950) mapValue!36323)) b!982658))

(assert (= (and b!982664 ((_ is ValueCellFull!10950) mapDefault!36323)) b!982663))

(assert (= start!84088 b!982664))

(declare-fun b_lambda!14883 () Bool)

(assert (=> (not b_lambda!14883) (not b!982661)))

(declare-fun t!29493 () Bool)

(declare-fun tb!6623 () Bool)

(assert (=> (and start!84088 (= defaultEntry!1281 defaultEntry!1281) t!29493) tb!6623))

(declare-fun result!13227 () Bool)

(assert (=> tb!6623 (= result!13227 tp_is_empty!22863)))

(assert (=> b!982661 t!29493))

(declare-fun b_and!31733 () Bool)

(assert (= b_and!31731 (and (=> t!29493 result!13227) b_and!31733)))

(declare-fun m!910089 () Bool)

(assert (=> b!982660 m!910089))

(assert (=> b!982660 m!910089))

(declare-fun m!910091 () Bool)

(assert (=> b!982660 m!910091))

(declare-fun m!910093 () Bool)

(assert (=> b!982662 m!910093))

(declare-fun m!910095 () Bool)

(assert (=> b!982662 m!910095))

(declare-fun m!910097 () Bool)

(assert (=> b!982662 m!910097))

(assert (=> b!982662 m!910089))

(declare-fun m!910099 () Bool)

(assert (=> b!982662 m!910099))

(assert (=> b!982662 m!910097))

(declare-fun m!910101 () Bool)

(assert (=> b!982662 m!910101))

(assert (=> b!982662 m!910089))

(assert (=> b!982662 m!910093))

(declare-fun m!910103 () Bool)

(assert (=> b!982656 m!910103))

(assert (=> b!982661 m!910089))

(declare-fun m!910105 () Bool)

(assert (=> b!982661 m!910105))

(declare-fun m!910107 () Bool)

(assert (=> b!982661 m!910107))

(declare-fun m!910109 () Bool)

(assert (=> b!982661 m!910109))

(assert (=> b!982661 m!910105))

(assert (=> b!982661 m!910109))

(declare-fun m!910111 () Bool)

(assert (=> b!982661 m!910111))

(declare-fun m!910113 () Bool)

(assert (=> start!84088 m!910113))

(declare-fun m!910115 () Bool)

(assert (=> start!84088 m!910115))

(declare-fun m!910117 () Bool)

(assert (=> start!84088 m!910117))

(declare-fun m!910119 () Bool)

(assert (=> b!982655 m!910119))

(declare-fun m!910121 () Bool)

(assert (=> mapNonEmpty!36323 m!910121))

(check-sat (not mapNonEmpty!36323) (not b_next!19815) tp_is_empty!22863 (not b!982662) (not b!982656) (not b_lambda!14883) (not start!84088) (not b!982655) (not b!982660) (not b!982661) b_and!31733)
(check-sat b_and!31733 (not b_next!19815))
