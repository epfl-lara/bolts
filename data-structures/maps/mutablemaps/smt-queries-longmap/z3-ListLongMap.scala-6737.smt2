; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84440 () Bool)

(assert start!84440)

(declare-fun b_free!19983 () Bool)

(declare-fun b_next!19983 () Bool)

(assert (=> start!84440 (= b_free!19983 (not b_next!19983))))

(declare-fun tp!69728 () Bool)

(declare-fun b_and!32047 () Bool)

(assert (=> start!84440 (= tp!69728 b_and!32047)))

(declare-fun b!987192 () Bool)

(declare-fun res!660546 () Bool)

(declare-fun e!556702 () Bool)

(assert (=> b!987192 (=> (not res!660546) (not e!556702))))

(declare-datatypes ((array!62345 0))(
  ( (array!62346 (arr!30025 (Array (_ BitVec 32) (_ BitVec 64))) (size!30505 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62345)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62345 (_ BitVec 32)) Bool)

(assert (=> b!987192 (= res!660546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!987193 () Bool)

(declare-fun e!556704 () Bool)

(declare-fun tp_is_empty!23199 () Bool)

(assert (=> b!987193 (= e!556704 tp_is_empty!23199)))

(declare-fun res!660540 () Bool)

(assert (=> start!84440 (=> (not res!660540) (not e!556702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84440 (= res!660540 (validMask!0 mask!1948))))

(assert (=> start!84440 e!556702))

(assert (=> start!84440 true))

(assert (=> start!84440 tp_is_empty!23199))

(declare-datatypes ((V!35915 0))(
  ( (V!35916 (val!11650 Int)) )
))
(declare-datatypes ((ValueCell!11118 0))(
  ( (ValueCellFull!11118 (v!14213 V!35915)) (EmptyCell!11118) )
))
(declare-datatypes ((array!62347 0))(
  ( (array!62348 (arr!30026 (Array (_ BitVec 32) ValueCell!11118)) (size!30506 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62347)

(declare-fun e!556703 () Bool)

(declare-fun array_inv!23059 (array!62347) Bool)

(assert (=> start!84440 (and (array_inv!23059 _values!1278) e!556703)))

(assert (=> start!84440 tp!69728))

(declare-fun array_inv!23060 (array!62345) Bool)

(assert (=> start!84440 (array_inv!23060 _keys!1544)))

(declare-fun b!987194 () Bool)

(declare-fun res!660541 () Bool)

(assert (=> b!987194 (=> (not res!660541) (not e!556702))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!987194 (= res!660541 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!987195 () Bool)

(declare-fun res!660544 () Bool)

(assert (=> b!987195 (=> (not res!660544) (not e!556702))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!987195 (= res!660544 (validKeyInArray!0 (select (arr!30025 _keys!1544) from!1932)))))

(declare-fun b!987196 () Bool)

(declare-fun e!556705 () Bool)

(assert (=> b!987196 (= e!556705 tp_is_empty!23199)))

(declare-fun mapIsEmpty!36830 () Bool)

(declare-fun mapRes!36830 () Bool)

(assert (=> mapIsEmpty!36830 mapRes!36830))

(declare-fun mapNonEmpty!36830 () Bool)

(declare-fun tp!69727 () Bool)

(assert (=> mapNonEmpty!36830 (= mapRes!36830 (and tp!69727 e!556705))))

(declare-fun mapRest!36830 () (Array (_ BitVec 32) ValueCell!11118))

(declare-fun mapValue!36830 () ValueCell!11118)

(declare-fun mapKey!36830 () (_ BitVec 32))

(assert (=> mapNonEmpty!36830 (= (arr!30026 _values!1278) (store mapRest!36830 mapKey!36830 mapValue!36830))))

(declare-fun b!987197 () Bool)

(declare-fun res!660545 () Bool)

(assert (=> b!987197 (=> (not res!660545) (not e!556702))))

(assert (=> b!987197 (= res!660545 (and (= (size!30506 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30505 _keys!1544) (size!30506 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!987198 () Bool)

(declare-fun res!660543 () Bool)

(assert (=> b!987198 (=> (not res!660543) (not e!556702))))

(assert (=> b!987198 (= res!660543 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30505 _keys!1544))))))

(declare-fun b!987199 () Bool)

(assert (=> b!987199 (= e!556702 (not (bvslt from!1932 (size!30506 _values!1278))))))

(declare-datatypes ((tuple2!14938 0))(
  ( (tuple2!14939 (_1!7479 (_ BitVec 64)) (_2!7479 V!35915)) )
))
(declare-datatypes ((List!20888 0))(
  ( (Nil!20885) (Cons!20884 (h!22046 tuple2!14938) (t!29807 List!20888)) )
))
(declare-datatypes ((ListLongMap!13649 0))(
  ( (ListLongMap!13650 (toList!6840 List!20888)) )
))
(declare-fun lt!437639 () ListLongMap!13649)

(declare-fun lt!437641 () tuple2!14938)

(declare-fun lt!437638 () tuple2!14938)

(declare-fun +!3028 (ListLongMap!13649 tuple2!14938) ListLongMap!13649)

(assert (=> b!987199 (= (+!3028 (+!3028 lt!437639 lt!437641) lt!437638) (+!3028 (+!3028 lt!437639 lt!437638) lt!437641))))

(declare-fun lt!437640 () V!35915)

(assert (=> b!987199 (= lt!437638 (tuple2!14939 (select (arr!30025 _keys!1544) from!1932) lt!437640))))

(declare-fun minValue!1220 () V!35915)

(assert (=> b!987199 (= lt!437641 (tuple2!14939 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32721 0))(
  ( (Unit!32722) )
))
(declare-fun lt!437637 () Unit!32721)

(declare-fun addCommutativeForDiffKeys!684 (ListLongMap!13649 (_ BitVec 64) V!35915 (_ BitVec 64) V!35915) Unit!32721)

(assert (=> b!987199 (= lt!437637 (addCommutativeForDiffKeys!684 lt!437639 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30025 _keys!1544) from!1932) lt!437640))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15592 (ValueCell!11118 V!35915) V!35915)

(declare-fun dynLambda!1859 (Int (_ BitVec 64)) V!35915)

(assert (=> b!987199 (= lt!437640 (get!15592 (select (arr!30026 _values!1278) from!1932) (dynLambda!1859 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35915)

(declare-fun getCurrentListMapNoExtraKeys!3493 (array!62345 array!62347 (_ BitVec 32) (_ BitVec 32) V!35915 V!35915 (_ BitVec 32) Int) ListLongMap!13649)

(assert (=> b!987199 (= lt!437639 (+!3028 (getCurrentListMapNoExtraKeys!3493 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14939 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!987200 () Bool)

(assert (=> b!987200 (= e!556703 (and e!556704 mapRes!36830))))

(declare-fun condMapEmpty!36830 () Bool)

(declare-fun mapDefault!36830 () ValueCell!11118)

(assert (=> b!987200 (= condMapEmpty!36830 (= (arr!30026 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11118)) mapDefault!36830)))))

(declare-fun b!987201 () Bool)

(declare-fun res!660542 () Bool)

(assert (=> b!987201 (=> (not res!660542) (not e!556702))))

(declare-datatypes ((List!20889 0))(
  ( (Nil!20886) (Cons!20885 (h!22047 (_ BitVec 64)) (t!29808 List!20889)) )
))
(declare-fun arrayNoDuplicates!0 (array!62345 (_ BitVec 32) List!20889) Bool)

(assert (=> b!987201 (= res!660542 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20886))))

(assert (= (and start!84440 res!660540) b!987197))

(assert (= (and b!987197 res!660545) b!987192))

(assert (= (and b!987192 res!660546) b!987201))

(assert (= (and b!987201 res!660542) b!987198))

(assert (= (and b!987198 res!660543) b!987195))

(assert (= (and b!987195 res!660544) b!987194))

(assert (= (and b!987194 res!660541) b!987199))

(assert (= (and b!987200 condMapEmpty!36830) mapIsEmpty!36830))

(assert (= (and b!987200 (not condMapEmpty!36830)) mapNonEmpty!36830))

(get-info :version)

(assert (= (and mapNonEmpty!36830 ((_ is ValueCellFull!11118) mapValue!36830)) b!987196))

(assert (= (and b!987200 ((_ is ValueCellFull!11118) mapDefault!36830)) b!987193))

(assert (= start!84440 b!987200))

(declare-fun b_lambda!15035 () Bool)

(assert (=> (not b_lambda!15035) (not b!987199)))

(declare-fun t!29806 () Bool)

(declare-fun tb!6769 () Bool)

(assert (=> (and start!84440 (= defaultEntry!1281 defaultEntry!1281) t!29806) tb!6769))

(declare-fun result!13521 () Bool)

(assert (=> tb!6769 (= result!13521 tp_is_empty!23199)))

(assert (=> b!987199 t!29806))

(declare-fun b_and!32049 () Bool)

(assert (= b_and!32047 (and (=> t!29806 result!13521) b_and!32049)))

(declare-fun m!913883 () Bool)

(assert (=> b!987201 m!913883))

(declare-fun m!913885 () Bool)

(assert (=> mapNonEmpty!36830 m!913885))

(declare-fun m!913887 () Bool)

(assert (=> b!987195 m!913887))

(assert (=> b!987195 m!913887))

(declare-fun m!913889 () Bool)

(assert (=> b!987195 m!913889))

(declare-fun m!913891 () Bool)

(assert (=> b!987192 m!913891))

(assert (=> b!987199 m!913887))

(declare-fun m!913893 () Bool)

(assert (=> b!987199 m!913893))

(declare-fun m!913895 () Bool)

(assert (=> b!987199 m!913895))

(declare-fun m!913897 () Bool)

(assert (=> b!987199 m!913897))

(declare-fun m!913899 () Bool)

(assert (=> b!987199 m!913899))

(declare-fun m!913901 () Bool)

(assert (=> b!987199 m!913901))

(assert (=> b!987199 m!913895))

(assert (=> b!987199 m!913901))

(declare-fun m!913903 () Bool)

(assert (=> b!987199 m!913903))

(assert (=> b!987199 m!913887))

(declare-fun m!913905 () Bool)

(assert (=> b!987199 m!913905))

(assert (=> b!987199 m!913899))

(declare-fun m!913907 () Bool)

(assert (=> b!987199 m!913907))

(declare-fun m!913909 () Bool)

(assert (=> b!987199 m!913909))

(assert (=> b!987199 m!913893))

(assert (=> b!987199 m!913909))

(declare-fun m!913911 () Bool)

(assert (=> b!987199 m!913911))

(declare-fun m!913913 () Bool)

(assert (=> start!84440 m!913913))

(declare-fun m!913915 () Bool)

(assert (=> start!84440 m!913915))

(declare-fun m!913917 () Bool)

(assert (=> start!84440 m!913917))

(check-sat (not start!84440) (not b!987201) tp_is_empty!23199 (not b!987199) (not b_next!19983) b_and!32049 (not b_lambda!15035) (not b!987195) (not b!987192) (not mapNonEmpty!36830))
(check-sat b_and!32049 (not b_next!19983))
