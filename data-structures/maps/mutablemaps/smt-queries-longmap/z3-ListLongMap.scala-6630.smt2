; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83782 () Bool)

(assert start!83782)

(declare-fun b_free!19563 () Bool)

(declare-fun b_next!19563 () Bool)

(assert (=> start!83782 (= b_free!19563 (not b_next!19563))))

(declare-fun tp!68132 () Bool)

(declare-fun b_and!31233 () Bool)

(assert (=> start!83782 (= tp!68132 b_and!31233)))

(declare-fun mapNonEmpty!35864 () Bool)

(declare-fun mapRes!35864 () Bool)

(declare-fun tp!68131 () Bool)

(declare-fun e!551352 () Bool)

(assert (=> mapNonEmpty!35864 (= mapRes!35864 (and tp!68131 e!551352))))

(declare-fun mapKey!35864 () (_ BitVec 32))

(declare-datatypes ((V!35059 0))(
  ( (V!35060 (val!11329 Int)) )
))
(declare-datatypes ((ValueCell!10797 0))(
  ( (ValueCellFull!10797 (v!13891 V!35059)) (EmptyCell!10797) )
))
(declare-datatypes ((array!61131 0))(
  ( (array!61132 (arr!29419 (Array (_ BitVec 32) ValueCell!10797)) (size!29899 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61131)

(declare-fun mapValue!35864 () ValueCell!10797)

(declare-fun mapRest!35864 () (Array (_ BitVec 32) ValueCell!10797))

(assert (=> mapNonEmpty!35864 (= (arr!29419 _values!1278) (store mapRest!35864 mapKey!35864 mapValue!35864))))

(declare-fun b!977831 () Bool)

(declare-fun e!551351 () Bool)

(assert (=> b!977831 (= e!551351 (not true))))

(declare-datatypes ((tuple2!14622 0))(
  ( (tuple2!14623 (_1!7321 (_ BitVec 64)) (_2!7321 V!35059)) )
))
(declare-datatypes ((List!20522 0))(
  ( (Nil!20519) (Cons!20518 (h!21680 tuple2!14622) (t!29049 List!20522)) )
))
(declare-datatypes ((ListLongMap!13333 0))(
  ( (ListLongMap!13334 (toList!6682 List!20522)) )
))
(declare-fun lt!433502 () ListLongMap!13333)

(declare-fun lt!433503 () tuple2!14622)

(declare-fun lt!433500 () tuple2!14622)

(declare-fun +!2888 (ListLongMap!13333 tuple2!14622) ListLongMap!13333)

(assert (=> b!977831 (= (+!2888 (+!2888 lt!433502 lt!433503) lt!433500) (+!2888 (+!2888 lt!433502 lt!433500) lt!433503))))

(declare-fun lt!433501 () V!35059)

(declare-datatypes ((array!61133 0))(
  ( (array!61134 (arr!29420 (Array (_ BitVec 32) (_ BitVec 64))) (size!29900 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61133)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!977831 (= lt!433500 (tuple2!14623 (select (arr!29420 _keys!1544) from!1932) lt!433501))))

(declare-fun minValue!1220 () V!35059)

(assert (=> b!977831 (= lt!433503 (tuple2!14623 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32451 0))(
  ( (Unit!32452) )
))
(declare-fun lt!433504 () Unit!32451)

(declare-fun addCommutativeForDiffKeys!550 (ListLongMap!13333 (_ BitVec 64) V!35059 (_ BitVec 64) V!35059) Unit!32451)

(assert (=> b!977831 (= lt!433504 (addCommutativeForDiffKeys!550 lt!433502 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29420 _keys!1544) from!1932) lt!433501))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15243 (ValueCell!10797 V!35059) V!35059)

(declare-fun dynLambda!1724 (Int (_ BitVec 64)) V!35059)

(assert (=> b!977831 (= lt!433501 (get!15243 (select (arr!29419 _values!1278) from!1932) (dynLambda!1724 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35059)

(declare-fun getCurrentListMapNoExtraKeys!3349 (array!61133 array!61131 (_ BitVec 32) (_ BitVec 32) V!35059 V!35059 (_ BitVec 32) Int) ListLongMap!13333)

(assert (=> b!977831 (= lt!433502 (+!2888 (getCurrentListMapNoExtraKeys!3349 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14623 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!977832 () Bool)

(declare-fun tp_is_empty!22557 () Bool)

(assert (=> b!977832 (= e!551352 tp_is_empty!22557)))

(declare-fun b!977833 () Bool)

(declare-fun res!654504 () Bool)

(assert (=> b!977833 (=> (not res!654504) (not e!551351))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!977833 (= res!654504 (validKeyInArray!0 (select (arr!29420 _keys!1544) from!1932)))))

(declare-fun b!977834 () Bool)

(declare-fun e!551354 () Bool)

(assert (=> b!977834 (= e!551354 tp_is_empty!22557)))

(declare-fun res!654506 () Bool)

(assert (=> start!83782 (=> (not res!654506) (not e!551351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83782 (= res!654506 (validMask!0 mask!1948))))

(assert (=> start!83782 e!551351))

(assert (=> start!83782 true))

(assert (=> start!83782 tp_is_empty!22557))

(declare-fun e!551350 () Bool)

(declare-fun array_inv!22643 (array!61131) Bool)

(assert (=> start!83782 (and (array_inv!22643 _values!1278) e!551350)))

(assert (=> start!83782 tp!68132))

(declare-fun array_inv!22644 (array!61133) Bool)

(assert (=> start!83782 (array_inv!22644 _keys!1544)))

(declare-fun b!977835 () Bool)

(assert (=> b!977835 (= e!551350 (and e!551354 mapRes!35864))))

(declare-fun condMapEmpty!35864 () Bool)

(declare-fun mapDefault!35864 () ValueCell!10797)

(assert (=> b!977835 (= condMapEmpty!35864 (= (arr!29419 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10797)) mapDefault!35864)))))

(declare-fun b!977836 () Bool)

(declare-fun res!654509 () Bool)

(assert (=> b!977836 (=> (not res!654509) (not e!551351))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61133 (_ BitVec 32)) Bool)

(assert (=> b!977836 (= res!654509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977837 () Bool)

(declare-fun res!654507 () Bool)

(assert (=> b!977837 (=> (not res!654507) (not e!551351))))

(assert (=> b!977837 (= res!654507 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29900 _keys!1544))))))

(declare-fun b!977838 () Bool)

(declare-fun res!654505 () Bool)

(assert (=> b!977838 (=> (not res!654505) (not e!551351))))

(assert (=> b!977838 (= res!654505 (and (= (size!29899 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29900 _keys!1544) (size!29899 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977839 () Bool)

(declare-fun res!654510 () Bool)

(assert (=> b!977839 (=> (not res!654510) (not e!551351))))

(assert (=> b!977839 (= res!654510 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!977840 () Bool)

(declare-fun res!654508 () Bool)

(assert (=> b!977840 (=> (not res!654508) (not e!551351))))

(declare-datatypes ((List!20523 0))(
  ( (Nil!20520) (Cons!20519 (h!21681 (_ BitVec 64)) (t!29050 List!20523)) )
))
(declare-fun arrayNoDuplicates!0 (array!61133 (_ BitVec 32) List!20523) Bool)

(assert (=> b!977840 (= res!654508 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20520))))

(declare-fun mapIsEmpty!35864 () Bool)

(assert (=> mapIsEmpty!35864 mapRes!35864))

(assert (= (and start!83782 res!654506) b!977838))

(assert (= (and b!977838 res!654505) b!977836))

(assert (= (and b!977836 res!654509) b!977840))

(assert (= (and b!977840 res!654508) b!977837))

(assert (= (and b!977837 res!654507) b!977833))

(assert (= (and b!977833 res!654504) b!977839))

(assert (= (and b!977839 res!654510) b!977831))

(assert (= (and b!977835 condMapEmpty!35864) mapIsEmpty!35864))

(assert (= (and b!977835 (not condMapEmpty!35864)) mapNonEmpty!35864))

(get-info :version)

(assert (= (and mapNonEmpty!35864 ((_ is ValueCellFull!10797) mapValue!35864)) b!977832))

(assert (= (and b!977835 ((_ is ValueCellFull!10797) mapDefault!35864)) b!977834))

(assert (= start!83782 b!977835))

(declare-fun b_lambda!14637 () Bool)

(assert (=> (not b_lambda!14637) (not b!977831)))

(declare-fun t!29048 () Bool)

(declare-fun tb!6377 () Bool)

(assert (=> (and start!83782 (= defaultEntry!1281 defaultEntry!1281) t!29048) tb!6377))

(declare-fun result!12735 () Bool)

(assert (=> tb!6377 (= result!12735 tp_is_empty!22557)))

(assert (=> b!977831 t!29048))

(declare-fun b_and!31235 () Bool)

(assert (= b_and!31233 (and (=> t!29048 result!12735) b_and!31235)))

(declare-fun m!905027 () Bool)

(assert (=> start!83782 m!905027))

(declare-fun m!905029 () Bool)

(assert (=> start!83782 m!905029))

(declare-fun m!905031 () Bool)

(assert (=> start!83782 m!905031))

(declare-fun m!905033 () Bool)

(assert (=> b!977833 m!905033))

(assert (=> b!977833 m!905033))

(declare-fun m!905035 () Bool)

(assert (=> b!977833 m!905035))

(declare-fun m!905037 () Bool)

(assert (=> mapNonEmpty!35864 m!905037))

(declare-fun m!905039 () Bool)

(assert (=> b!977836 m!905039))

(assert (=> b!977831 m!905033))

(declare-fun m!905041 () Bool)

(assert (=> b!977831 m!905041))

(assert (=> b!977831 m!905033))

(declare-fun m!905043 () Bool)

(assert (=> b!977831 m!905043))

(declare-fun m!905045 () Bool)

(assert (=> b!977831 m!905045))

(declare-fun m!905047 () Bool)

(assert (=> b!977831 m!905047))

(declare-fun m!905049 () Bool)

(assert (=> b!977831 m!905049))

(declare-fun m!905051 () Bool)

(assert (=> b!977831 m!905051))

(assert (=> b!977831 m!905049))

(declare-fun m!905053 () Bool)

(assert (=> b!977831 m!905053))

(assert (=> b!977831 m!905051))

(declare-fun m!905055 () Bool)

(assert (=> b!977831 m!905055))

(assert (=> b!977831 m!905045))

(declare-fun m!905057 () Bool)

(assert (=> b!977831 m!905057))

(assert (=> b!977831 m!905043))

(assert (=> b!977831 m!905057))

(declare-fun m!905059 () Bool)

(assert (=> b!977831 m!905059))

(declare-fun m!905061 () Bool)

(assert (=> b!977840 m!905061))

(check-sat (not b!977840) (not b!977836) b_and!31235 (not b_lambda!14637) (not b_next!19563) (not start!83782) (not b!977831) tp_is_empty!22557 (not mapNonEmpty!35864) (not b!977833))
(check-sat b_and!31235 (not b_next!19563))
