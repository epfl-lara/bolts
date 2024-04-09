; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83830 () Bool)

(assert start!83830)

(declare-fun b_free!19611 () Bool)

(declare-fun b_next!19611 () Bool)

(assert (=> start!83830 (= b_free!19611 (not b_next!19611))))

(declare-fun tp!68275 () Bool)

(declare-fun b_and!31329 () Bool)

(assert (=> start!83830 (= tp!68275 b_and!31329)))

(declare-fun b!978599 () Bool)

(declare-fun res!655013 () Bool)

(declare-fun e!551712 () Bool)

(assert (=> b!978599 (=> (not res!655013) (not e!551712))))

(declare-datatypes ((array!61225 0))(
  ( (array!61226 (arr!29466 (Array (_ BitVec 32) (_ BitVec 64))) (size!29946 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61225)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61225 (_ BitVec 32)) Bool)

(assert (=> b!978599 (= res!655013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978600 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!978600 (= e!551712 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!35123 0))(
  ( (V!35124 (val!11353 Int)) )
))
(declare-datatypes ((tuple2!14654 0))(
  ( (tuple2!14655 (_1!7337 (_ BitVec 64)) (_2!7337 V!35123)) )
))
(declare-datatypes ((List!20553 0))(
  ( (Nil!20550) (Cons!20549 (h!21711 tuple2!14654) (t!29128 List!20553)) )
))
(declare-datatypes ((ListLongMap!13365 0))(
  ( (ListLongMap!13366 (toList!6698 List!20553)) )
))
(declare-fun lt!433863 () ListLongMap!13365)

(declare-fun lt!433864 () tuple2!14654)

(declare-fun lt!433862 () tuple2!14654)

(declare-fun +!2904 (ListLongMap!13365 tuple2!14654) ListLongMap!13365)

(assert (=> b!978600 (= (+!2904 (+!2904 lt!433863 lt!433864) lt!433862) (+!2904 (+!2904 lt!433863 lt!433862) lt!433864))))

(declare-fun lt!433861 () V!35123)

(assert (=> b!978600 (= lt!433862 (tuple2!14655 (select (arr!29466 _keys!1544) from!1932) lt!433861))))

(declare-fun minValue!1220 () V!35123)

(assert (=> b!978600 (= lt!433864 (tuple2!14655 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32483 0))(
  ( (Unit!32484) )
))
(declare-fun lt!433860 () Unit!32483)

(declare-fun addCommutativeForDiffKeys!566 (ListLongMap!13365 (_ BitVec 64) V!35123 (_ BitVec 64) V!35123) Unit!32483)

(assert (=> b!978600 (= lt!433860 (addCommutativeForDiffKeys!566 lt!433863 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29466 _keys!1544) from!1932) lt!433861))))

(declare-datatypes ((ValueCell!10821 0))(
  ( (ValueCellFull!10821 (v!13915 V!35123)) (EmptyCell!10821) )
))
(declare-datatypes ((array!61227 0))(
  ( (array!61228 (arr!29467 (Array (_ BitVec 32) ValueCell!10821)) (size!29947 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61227)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15275 (ValueCell!10821 V!35123) V!35123)

(declare-fun dynLambda!1740 (Int (_ BitVec 64)) V!35123)

(assert (=> b!978600 (= lt!433861 (get!15275 (select (arr!29467 _values!1278) from!1932) (dynLambda!1740 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35123)

(declare-fun getCurrentListMapNoExtraKeys!3365 (array!61225 array!61227 (_ BitVec 32) (_ BitVec 32) V!35123 V!35123 (_ BitVec 32) Int) ListLongMap!13365)

(assert (=> b!978600 (= lt!433863 (+!2904 (getCurrentListMapNoExtraKeys!3365 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14655 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun mapIsEmpty!35936 () Bool)

(declare-fun mapRes!35936 () Bool)

(assert (=> mapIsEmpty!35936 mapRes!35936))

(declare-fun b!978601 () Bool)

(declare-fun res!655008 () Bool)

(assert (=> b!978601 (=> (not res!655008) (not e!551712))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978601 (= res!655008 (validKeyInArray!0 (select (arr!29466 _keys!1544) from!1932)))))

(declare-fun b!978602 () Bool)

(declare-fun e!551714 () Bool)

(declare-fun tp_is_empty!22605 () Bool)

(assert (=> b!978602 (= e!551714 tp_is_empty!22605)))

(declare-fun res!655012 () Bool)

(assert (=> start!83830 (=> (not res!655012) (not e!551712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83830 (= res!655012 (validMask!0 mask!1948))))

(assert (=> start!83830 e!551712))

(assert (=> start!83830 true))

(assert (=> start!83830 tp_is_empty!22605))

(declare-fun e!551711 () Bool)

(declare-fun array_inv!22679 (array!61227) Bool)

(assert (=> start!83830 (and (array_inv!22679 _values!1278) e!551711)))

(assert (=> start!83830 tp!68275))

(declare-fun array_inv!22680 (array!61225) Bool)

(assert (=> start!83830 (array_inv!22680 _keys!1544)))

(declare-fun mapNonEmpty!35936 () Bool)

(declare-fun tp!68276 () Bool)

(declare-fun e!551713 () Bool)

(assert (=> mapNonEmpty!35936 (= mapRes!35936 (and tp!68276 e!551713))))

(declare-fun mapValue!35936 () ValueCell!10821)

(declare-fun mapRest!35936 () (Array (_ BitVec 32) ValueCell!10821))

(declare-fun mapKey!35936 () (_ BitVec 32))

(assert (=> mapNonEmpty!35936 (= (arr!29467 _values!1278) (store mapRest!35936 mapKey!35936 mapValue!35936))))

(declare-fun b!978603 () Bool)

(declare-fun res!655014 () Bool)

(assert (=> b!978603 (=> (not res!655014) (not e!551712))))

(assert (=> b!978603 (= res!655014 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978604 () Bool)

(declare-fun res!655010 () Bool)

(assert (=> b!978604 (=> (not res!655010) (not e!551712))))

(assert (=> b!978604 (= res!655010 (and (= (size!29947 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29946 _keys!1544) (size!29947 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978605 () Bool)

(declare-fun res!655011 () Bool)

(assert (=> b!978605 (=> (not res!655011) (not e!551712))))

(assert (=> b!978605 (= res!655011 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29946 _keys!1544))))))

(declare-fun b!978606 () Bool)

(assert (=> b!978606 (= e!551711 (and e!551714 mapRes!35936))))

(declare-fun condMapEmpty!35936 () Bool)

(declare-fun mapDefault!35936 () ValueCell!10821)

(assert (=> b!978606 (= condMapEmpty!35936 (= (arr!29467 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10821)) mapDefault!35936)))))

(declare-fun b!978607 () Bool)

(assert (=> b!978607 (= e!551713 tp_is_empty!22605)))

(declare-fun b!978608 () Bool)

(declare-fun res!655009 () Bool)

(assert (=> b!978608 (=> (not res!655009) (not e!551712))))

(declare-datatypes ((List!20554 0))(
  ( (Nil!20551) (Cons!20550 (h!21712 (_ BitVec 64)) (t!29129 List!20554)) )
))
(declare-fun arrayNoDuplicates!0 (array!61225 (_ BitVec 32) List!20554) Bool)

(assert (=> b!978608 (= res!655009 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20551))))

(assert (= (and start!83830 res!655012) b!978604))

(assert (= (and b!978604 res!655010) b!978599))

(assert (= (and b!978599 res!655013) b!978608))

(assert (= (and b!978608 res!655009) b!978605))

(assert (= (and b!978605 res!655011) b!978601))

(assert (= (and b!978601 res!655008) b!978603))

(assert (= (and b!978603 res!655014) b!978600))

(assert (= (and b!978606 condMapEmpty!35936) mapIsEmpty!35936))

(assert (= (and b!978606 (not condMapEmpty!35936)) mapNonEmpty!35936))

(get-info :version)

(assert (= (and mapNonEmpty!35936 ((_ is ValueCellFull!10821) mapValue!35936)) b!978607))

(assert (= (and b!978606 ((_ is ValueCellFull!10821) mapDefault!35936)) b!978602))

(assert (= start!83830 b!978606))

(declare-fun b_lambda!14685 () Bool)

(assert (=> (not b_lambda!14685) (not b!978600)))

(declare-fun t!29127 () Bool)

(declare-fun tb!6425 () Bool)

(assert (=> (and start!83830 (= defaultEntry!1281 defaultEntry!1281) t!29127) tb!6425))

(declare-fun result!12831 () Bool)

(assert (=> tb!6425 (= result!12831 tp_is_empty!22605)))

(assert (=> b!978600 t!29127))

(declare-fun b_and!31331 () Bool)

(assert (= b_and!31329 (and (=> t!29127 result!12831) b_and!31331)))

(declare-fun m!905891 () Bool)

(assert (=> b!978600 m!905891))

(declare-fun m!905893 () Bool)

(assert (=> b!978600 m!905893))

(declare-fun m!905895 () Bool)

(assert (=> b!978600 m!905895))

(declare-fun m!905897 () Bool)

(assert (=> b!978600 m!905897))

(declare-fun m!905899 () Bool)

(assert (=> b!978600 m!905899))

(assert (=> b!978600 m!905893))

(assert (=> b!978600 m!905891))

(declare-fun m!905901 () Bool)

(assert (=> b!978600 m!905901))

(declare-fun m!905903 () Bool)

(assert (=> b!978600 m!905903))

(assert (=> b!978600 m!905903))

(declare-fun m!905905 () Bool)

(assert (=> b!978600 m!905905))

(declare-fun m!905907 () Bool)

(assert (=> b!978600 m!905907))

(assert (=> b!978600 m!905897))

(declare-fun m!905909 () Bool)

(assert (=> b!978600 m!905909))

(assert (=> b!978600 m!905907))

(assert (=> b!978600 m!905909))

(declare-fun m!905911 () Bool)

(assert (=> b!978600 m!905911))

(declare-fun m!905913 () Bool)

(assert (=> mapNonEmpty!35936 m!905913))

(assert (=> b!978601 m!905891))

(assert (=> b!978601 m!905891))

(declare-fun m!905915 () Bool)

(assert (=> b!978601 m!905915))

(declare-fun m!905917 () Bool)

(assert (=> start!83830 m!905917))

(declare-fun m!905919 () Bool)

(assert (=> start!83830 m!905919))

(declare-fun m!905921 () Bool)

(assert (=> start!83830 m!905921))

(declare-fun m!905923 () Bool)

(assert (=> b!978599 m!905923))

(declare-fun m!905925 () Bool)

(assert (=> b!978608 m!905925))

(check-sat (not b!978599) (not b!978600) (not mapNonEmpty!35936) (not b!978608) (not b_lambda!14685) tp_is_empty!22605 b_and!31331 (not b_next!19611) (not start!83830) (not b!978601))
(check-sat b_and!31331 (not b_next!19611))
