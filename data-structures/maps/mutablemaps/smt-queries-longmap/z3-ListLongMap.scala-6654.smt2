; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83926 () Bool)

(assert start!83926)

(declare-fun b_free!19707 () Bool)

(declare-fun b_next!19707 () Bool)

(assert (=> start!83926 (= b_free!19707 (not b_next!19707))))

(declare-fun tp!68563 () Bool)

(declare-fun b_and!31521 () Bool)

(assert (=> start!83926 (= tp!68563 b_and!31521)))

(declare-fun res!656148 () Bool)

(declare-fun e!552561 () Bool)

(assert (=> start!83926 (=> (not res!656148) (not e!552561))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83926 (= res!656148 (validMask!0 mask!1948))))

(assert (=> start!83926 e!552561))

(assert (=> start!83926 true))

(declare-fun tp_is_empty!22701 () Bool)

(assert (=> start!83926 tp_is_empty!22701))

(declare-datatypes ((V!35251 0))(
  ( (V!35252 (val!11401 Int)) )
))
(declare-datatypes ((ValueCell!10869 0))(
  ( (ValueCellFull!10869 (v!13963 V!35251)) (EmptyCell!10869) )
))
(declare-datatypes ((array!61409 0))(
  ( (array!61410 (arr!29558 (Array (_ BitVec 32) ValueCell!10869)) (size!30038 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61409)

(declare-fun e!552564 () Bool)

(declare-fun array_inv!22739 (array!61409) Bool)

(assert (=> start!83926 (and (array_inv!22739 _values!1278) e!552564)))

(assert (=> start!83926 tp!68563))

(declare-datatypes ((array!61411 0))(
  ( (array!61412 (arr!29559 (Array (_ BitVec 32) (_ BitVec 64))) (size!30039 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61411)

(declare-fun array_inv!22740 (array!61411) Bool)

(assert (=> start!83926 (array_inv!22740 _keys!1544)))

(declare-fun b!980266 () Bool)

(declare-fun e!552562 () Bool)

(declare-fun mapRes!36080 () Bool)

(assert (=> b!980266 (= e!552564 (and e!552562 mapRes!36080))))

(declare-fun condMapEmpty!36080 () Bool)

(declare-fun mapDefault!36080 () ValueCell!10869)

(assert (=> b!980266 (= condMapEmpty!36080 (= (arr!29558 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10869)) mapDefault!36080)))))

(declare-fun b!980267 () Bool)

(declare-fun res!656150 () Bool)

(assert (=> b!980267 (=> (not res!656150) (not e!552561))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!980267 (= res!656150 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30039 _keys!1544))))))

(declare-fun b!980268 () Bool)

(declare-fun e!552563 () Bool)

(assert (=> b!980268 (= e!552563 tp_is_empty!22701)))

(declare-fun b!980269 () Bool)

(declare-fun res!656149 () Bool)

(assert (=> b!980269 (=> (not res!656149) (not e!552561))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980269 (= res!656149 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!980270 () Bool)

(declare-fun e!552566 () Bool)

(assert (=> b!980270 (= e!552566 true)))

(declare-datatypes ((tuple2!14732 0))(
  ( (tuple2!14733 (_1!7376 (_ BitVec 64)) (_2!7376 V!35251)) )
))
(declare-fun lt!435243 () tuple2!14732)

(declare-datatypes ((List!20622 0))(
  ( (Nil!20619) (Cons!20618 (h!21780 tuple2!14732) (t!29293 List!20622)) )
))
(declare-datatypes ((ListLongMap!13443 0))(
  ( (ListLongMap!13444 (toList!6737 List!20622)) )
))
(declare-fun lt!435244 () ListLongMap!13443)

(declare-fun lt!435242 () ListLongMap!13443)

(declare-fun lt!435241 () tuple2!14732)

(declare-fun +!2943 (ListLongMap!13443 tuple2!14732) ListLongMap!13443)

(assert (=> b!980270 (= lt!435242 (+!2943 (+!2943 lt!435244 lt!435241) lt!435243))))

(declare-fun zeroValue!1220 () V!35251)

(declare-datatypes ((Unit!32561 0))(
  ( (Unit!32562) )
))
(declare-fun lt!435240 () Unit!32561)

(declare-fun lt!435235 () V!35251)

(declare-fun addCommutativeForDiffKeys!605 (ListLongMap!13443 (_ BitVec 64) V!35251 (_ BitVec 64) V!35251) Unit!32561)

(assert (=> b!980270 (= lt!435240 (addCommutativeForDiffKeys!605 lt!435244 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29559 _keys!1544) from!1932) lt!435235))))

(declare-fun b!980271 () Bool)

(declare-fun res!656153 () Bool)

(assert (=> b!980271 (=> (not res!656153) (not e!552561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!980271 (= res!656153 (validKeyInArray!0 (select (arr!29559 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36080 () Bool)

(declare-fun tp!68564 () Bool)

(assert (=> mapNonEmpty!36080 (= mapRes!36080 (and tp!68564 e!552563))))

(declare-fun mapRest!36080 () (Array (_ BitVec 32) ValueCell!10869))

(declare-fun mapKey!36080 () (_ BitVec 32))

(declare-fun mapValue!36080 () ValueCell!10869)

(assert (=> mapNonEmpty!36080 (= (arr!29558 _values!1278) (store mapRest!36080 mapKey!36080 mapValue!36080))))

(declare-fun mapIsEmpty!36080 () Bool)

(assert (=> mapIsEmpty!36080 mapRes!36080))

(declare-fun b!980272 () Bool)

(declare-fun res!656154 () Bool)

(assert (=> b!980272 (=> (not res!656154) (not e!552561))))

(assert (=> b!980272 (= res!656154 (and (= (size!30038 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30039 _keys!1544) (size!30038 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980273 () Bool)

(assert (=> b!980273 (= e!552562 tp_is_empty!22701)))

(declare-fun b!980274 () Bool)

(declare-fun res!656152 () Bool)

(assert (=> b!980274 (=> (not res!656152) (not e!552561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61411 (_ BitVec 32)) Bool)

(assert (=> b!980274 (= res!656152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980275 () Bool)

(declare-fun res!656151 () Bool)

(assert (=> b!980275 (=> (not res!656151) (not e!552561))))

(declare-datatypes ((List!20623 0))(
  ( (Nil!20620) (Cons!20619 (h!21781 (_ BitVec 64)) (t!29294 List!20623)) )
))
(declare-fun arrayNoDuplicates!0 (array!61411 (_ BitVec 32) List!20623) Bool)

(assert (=> b!980275 (= res!656151 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20620))))

(declare-fun b!980276 () Bool)

(assert (=> b!980276 (= e!552561 (not e!552566))))

(declare-fun res!656147 () Bool)

(assert (=> b!980276 (=> res!656147 e!552566)))

(assert (=> b!980276 (= res!656147 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29559 _keys!1544) from!1932)))))

(declare-fun lt!435239 () tuple2!14732)

(declare-fun lt!435237 () ListLongMap!13443)

(assert (=> b!980276 (= (+!2943 lt!435237 lt!435241) (+!2943 lt!435242 lt!435239))))

(declare-fun lt!435238 () ListLongMap!13443)

(assert (=> b!980276 (= lt!435242 (+!2943 lt!435238 lt!435241))))

(assert (=> b!980276 (= lt!435241 (tuple2!14733 (select (arr!29559 _keys!1544) from!1932) lt!435235))))

(assert (=> b!980276 (= lt!435237 (+!2943 lt!435238 lt!435239))))

(declare-fun minValue!1220 () V!35251)

(assert (=> b!980276 (= lt!435239 (tuple2!14733 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!435236 () Unit!32561)

(assert (=> b!980276 (= lt!435236 (addCommutativeForDiffKeys!605 lt!435238 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29559 _keys!1544) from!1932) lt!435235))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15343 (ValueCell!10869 V!35251) V!35251)

(declare-fun dynLambda!1776 (Int (_ BitVec 64)) V!35251)

(assert (=> b!980276 (= lt!435235 (get!15343 (select (arr!29558 _values!1278) from!1932) (dynLambda!1776 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!980276 (= lt!435238 (+!2943 lt!435244 lt!435243))))

(assert (=> b!980276 (= lt!435243 (tuple2!14733 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3401 (array!61411 array!61409 (_ BitVec 32) (_ BitVec 32) V!35251 V!35251 (_ BitVec 32) Int) ListLongMap!13443)

(assert (=> b!980276 (= lt!435244 (getCurrentListMapNoExtraKeys!3401 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(assert (= (and start!83926 res!656148) b!980272))

(assert (= (and b!980272 res!656154) b!980274))

(assert (= (and b!980274 res!656152) b!980275))

(assert (= (and b!980275 res!656151) b!980267))

(assert (= (and b!980267 res!656150) b!980271))

(assert (= (and b!980271 res!656153) b!980269))

(assert (= (and b!980269 res!656149) b!980276))

(assert (= (and b!980276 (not res!656147)) b!980270))

(assert (= (and b!980266 condMapEmpty!36080) mapIsEmpty!36080))

(assert (= (and b!980266 (not condMapEmpty!36080)) mapNonEmpty!36080))

(get-info :version)

(assert (= (and mapNonEmpty!36080 ((_ is ValueCellFull!10869) mapValue!36080)) b!980268))

(assert (= (and b!980266 ((_ is ValueCellFull!10869) mapDefault!36080)) b!980273))

(assert (= start!83926 b!980266))

(declare-fun b_lambda!14781 () Bool)

(assert (=> (not b_lambda!14781) (not b!980276)))

(declare-fun t!29292 () Bool)

(declare-fun tb!6521 () Bool)

(assert (=> (and start!83926 (= defaultEntry!1281 defaultEntry!1281) t!29292) tb!6521))

(declare-fun result!13023 () Bool)

(assert (=> tb!6521 (= result!13023 tp_is_empty!22701)))

(assert (=> b!980276 t!29292))

(declare-fun b_and!31523 () Bool)

(assert (= b_and!31521 (and (=> t!29292 result!13023) b_and!31523)))

(declare-fun m!907877 () Bool)

(assert (=> b!980274 m!907877))

(declare-fun m!907879 () Bool)

(assert (=> mapNonEmpty!36080 m!907879))

(declare-fun m!907881 () Bool)

(assert (=> b!980270 m!907881))

(assert (=> b!980270 m!907881))

(declare-fun m!907883 () Bool)

(assert (=> b!980270 m!907883))

(declare-fun m!907885 () Bool)

(assert (=> b!980270 m!907885))

(assert (=> b!980270 m!907885))

(declare-fun m!907887 () Bool)

(assert (=> b!980270 m!907887))

(declare-fun m!907889 () Bool)

(assert (=> b!980275 m!907889))

(assert (=> b!980271 m!907885))

(assert (=> b!980271 m!907885))

(declare-fun m!907891 () Bool)

(assert (=> b!980271 m!907891))

(declare-fun m!907893 () Bool)

(assert (=> start!83926 m!907893))

(declare-fun m!907895 () Bool)

(assert (=> start!83926 m!907895))

(declare-fun m!907897 () Bool)

(assert (=> start!83926 m!907897))

(declare-fun m!907899 () Bool)

(assert (=> b!980276 m!907899))

(assert (=> b!980276 m!907885))

(declare-fun m!907901 () Bool)

(assert (=> b!980276 m!907901))

(declare-fun m!907903 () Bool)

(assert (=> b!980276 m!907903))

(assert (=> b!980276 m!907885))

(declare-fun m!907905 () Bool)

(assert (=> b!980276 m!907905))

(declare-fun m!907907 () Bool)

(assert (=> b!980276 m!907907))

(declare-fun m!907909 () Bool)

(assert (=> b!980276 m!907909))

(declare-fun m!907911 () Bool)

(assert (=> b!980276 m!907911))

(declare-fun m!907913 () Bool)

(assert (=> b!980276 m!907913))

(declare-fun m!907915 () Bool)

(assert (=> b!980276 m!907915))

(assert (=> b!980276 m!907901))

(assert (=> b!980276 m!907915))

(declare-fun m!907917 () Bool)

(assert (=> b!980276 m!907917))

(check-sat (not b!980274) (not b!980275) tp_is_empty!22701 b_and!31523 (not b_lambda!14781) (not b!980270) (not mapNonEmpty!36080) (not b_next!19707) (not start!83926) (not b!980271) (not b!980276))
(check-sat b_and!31523 (not b_next!19707))
