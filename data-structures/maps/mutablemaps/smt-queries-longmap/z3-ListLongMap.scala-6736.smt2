; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84434 () Bool)

(assert start!84434)

(declare-fun b_free!19977 () Bool)

(declare-fun b_next!19977 () Bool)

(assert (=> start!84434 (= b_free!19977 (not b_next!19977))))

(declare-fun tp!69710 () Bool)

(declare-fun b_and!32035 () Bool)

(assert (=> start!84434 (= tp!69710 b_and!32035)))

(declare-fun b!987096 () Bool)

(declare-fun res!660479 () Bool)

(declare-fun e!556661 () Bool)

(assert (=> b!987096 (=> (not res!660479) (not e!556661))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62335 0))(
  ( (array!62336 (arr!30020 (Array (_ BitVec 32) (_ BitVec 64))) (size!30500 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62335)

(assert (=> b!987096 (= res!660479 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30500 _keys!1544))))))

(declare-fun b!987097 () Bool)

(declare-fun res!660478 () Bool)

(assert (=> b!987097 (=> (not res!660478) (not e!556661))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62335 (_ BitVec 32)) Bool)

(assert (=> b!987097 (= res!660478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!987098 () Bool)

(declare-fun res!660477 () Bool)

(assert (=> b!987098 (=> (not res!660477) (not e!556661))))

(declare-datatypes ((List!20884 0))(
  ( (Nil!20881) (Cons!20880 (h!22042 (_ BitVec 64)) (t!29797 List!20884)) )
))
(declare-fun arrayNoDuplicates!0 (array!62335 (_ BitVec 32) List!20884) Bool)

(assert (=> b!987098 (= res!660477 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20881))))

(declare-fun b!987099 () Bool)

(declare-fun res!660482 () Bool)

(assert (=> b!987099 (=> (not res!660482) (not e!556661))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!987099 (= res!660482 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!987100 () Bool)

(declare-fun res!660480 () Bool)

(assert (=> b!987100 (=> (not res!660480) (not e!556661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!987100 (= res!660480 (validKeyInArray!0 (select (arr!30020 _keys!1544) from!1932)))))

(declare-fun b!987101 () Bool)

(assert (=> b!987101 (= e!556661 (not true))))

(declare-datatypes ((V!35907 0))(
  ( (V!35908 (val!11647 Int)) )
))
(declare-datatypes ((tuple2!14934 0))(
  ( (tuple2!14935 (_1!7477 (_ BitVec 64)) (_2!7477 V!35907)) )
))
(declare-datatypes ((List!20885 0))(
  ( (Nil!20882) (Cons!20881 (h!22043 tuple2!14934) (t!29798 List!20885)) )
))
(declare-datatypes ((ListLongMap!13645 0))(
  ( (ListLongMap!13646 (toList!6838 List!20885)) )
))
(declare-fun lt!437596 () ListLongMap!13645)

(declare-fun lt!437594 () tuple2!14934)

(declare-fun lt!437593 () tuple2!14934)

(declare-fun +!3026 (ListLongMap!13645 tuple2!14934) ListLongMap!13645)

(assert (=> b!987101 (= (+!3026 (+!3026 lt!437596 lt!437594) lt!437593) (+!3026 (+!3026 lt!437596 lt!437593) lt!437594))))

(declare-fun lt!437592 () V!35907)

(assert (=> b!987101 (= lt!437593 (tuple2!14935 (select (arr!30020 _keys!1544) from!1932) lt!437592))))

(declare-fun minValue!1220 () V!35907)

(assert (=> b!987101 (= lt!437594 (tuple2!14935 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32717 0))(
  ( (Unit!32718) )
))
(declare-fun lt!437595 () Unit!32717)

(declare-fun addCommutativeForDiffKeys!682 (ListLongMap!13645 (_ BitVec 64) V!35907 (_ BitVec 64) V!35907) Unit!32717)

(assert (=> b!987101 (= lt!437595 (addCommutativeForDiffKeys!682 lt!437596 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30020 _keys!1544) from!1932) lt!437592))))

(declare-datatypes ((ValueCell!11115 0))(
  ( (ValueCellFull!11115 (v!14210 V!35907)) (EmptyCell!11115) )
))
(declare-datatypes ((array!62337 0))(
  ( (array!62338 (arr!30021 (Array (_ BitVec 32) ValueCell!11115)) (size!30501 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62337)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15588 (ValueCell!11115 V!35907) V!35907)

(declare-fun dynLambda!1857 (Int (_ BitVec 64)) V!35907)

(assert (=> b!987101 (= lt!437592 (get!15588 (select (arr!30021 _values!1278) from!1932) (dynLambda!1857 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35907)

(declare-fun getCurrentListMapNoExtraKeys!3491 (array!62335 array!62337 (_ BitVec 32) (_ BitVec 32) V!35907 V!35907 (_ BitVec 32) Int) ListLongMap!13645)

(assert (=> b!987101 (= lt!437596 (+!3026 (getCurrentListMapNoExtraKeys!3491 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14935 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!987102 () Bool)

(declare-fun e!556659 () Bool)

(declare-fun tp_is_empty!23193 () Bool)

(assert (=> b!987102 (= e!556659 tp_is_empty!23193)))

(declare-fun mapIsEmpty!36821 () Bool)

(declare-fun mapRes!36821 () Bool)

(assert (=> mapIsEmpty!36821 mapRes!36821))

(declare-fun b!987103 () Bool)

(declare-fun res!660481 () Bool)

(assert (=> b!987103 (=> (not res!660481) (not e!556661))))

(assert (=> b!987103 (= res!660481 (and (= (size!30501 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30500 _keys!1544) (size!30501 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!660483 () Bool)

(assert (=> start!84434 (=> (not res!660483) (not e!556661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84434 (= res!660483 (validMask!0 mask!1948))))

(assert (=> start!84434 e!556661))

(assert (=> start!84434 true))

(assert (=> start!84434 tp_is_empty!23193))

(declare-fun e!556658 () Bool)

(declare-fun array_inv!23055 (array!62337) Bool)

(assert (=> start!84434 (and (array_inv!23055 _values!1278) e!556658)))

(assert (=> start!84434 tp!69710))

(declare-fun array_inv!23056 (array!62335) Bool)

(assert (=> start!84434 (array_inv!23056 _keys!1544)))

(declare-fun b!987104 () Bool)

(assert (=> b!987104 (= e!556658 (and e!556659 mapRes!36821))))

(declare-fun condMapEmpty!36821 () Bool)

(declare-fun mapDefault!36821 () ValueCell!11115)

(assert (=> b!987104 (= condMapEmpty!36821 (= (arr!30021 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11115)) mapDefault!36821)))))

(declare-fun b!987105 () Bool)

(declare-fun e!556660 () Bool)

(assert (=> b!987105 (= e!556660 tp_is_empty!23193)))

(declare-fun mapNonEmpty!36821 () Bool)

(declare-fun tp!69709 () Bool)

(assert (=> mapNonEmpty!36821 (= mapRes!36821 (and tp!69709 e!556660))))

(declare-fun mapRest!36821 () (Array (_ BitVec 32) ValueCell!11115))

(declare-fun mapKey!36821 () (_ BitVec 32))

(declare-fun mapValue!36821 () ValueCell!11115)

(assert (=> mapNonEmpty!36821 (= (arr!30021 _values!1278) (store mapRest!36821 mapKey!36821 mapValue!36821))))

(assert (= (and start!84434 res!660483) b!987103))

(assert (= (and b!987103 res!660481) b!987097))

(assert (= (and b!987097 res!660478) b!987098))

(assert (= (and b!987098 res!660477) b!987096))

(assert (= (and b!987096 res!660479) b!987100))

(assert (= (and b!987100 res!660480) b!987099))

(assert (= (and b!987099 res!660482) b!987101))

(assert (= (and b!987104 condMapEmpty!36821) mapIsEmpty!36821))

(assert (= (and b!987104 (not condMapEmpty!36821)) mapNonEmpty!36821))

(get-info :version)

(assert (= (and mapNonEmpty!36821 ((_ is ValueCellFull!11115) mapValue!36821)) b!987105))

(assert (= (and b!987104 ((_ is ValueCellFull!11115) mapDefault!36821)) b!987102))

(assert (= start!84434 b!987104))

(declare-fun b_lambda!15029 () Bool)

(assert (=> (not b_lambda!15029) (not b!987101)))

(declare-fun t!29796 () Bool)

(declare-fun tb!6763 () Bool)

(assert (=> (and start!84434 (= defaultEntry!1281 defaultEntry!1281) t!29796) tb!6763))

(declare-fun result!13509 () Bool)

(assert (=> tb!6763 (= result!13509 tp_is_empty!23193)))

(assert (=> b!987101 t!29796))

(declare-fun b_and!32037 () Bool)

(assert (= b_and!32035 (and (=> t!29796 result!13509) b_and!32037)))

(declare-fun m!913775 () Bool)

(assert (=> b!987098 m!913775))

(declare-fun m!913777 () Bool)

(assert (=> b!987101 m!913777))

(declare-fun m!913779 () Bool)

(assert (=> b!987101 m!913779))

(declare-fun m!913781 () Bool)

(assert (=> b!987101 m!913781))

(declare-fun m!913783 () Bool)

(assert (=> b!987101 m!913783))

(declare-fun m!913785 () Bool)

(assert (=> b!987101 m!913785))

(declare-fun m!913787 () Bool)

(assert (=> b!987101 m!913787))

(assert (=> b!987101 m!913785))

(declare-fun m!913789 () Bool)

(assert (=> b!987101 m!913789))

(assert (=> b!987101 m!913781))

(declare-fun m!913791 () Bool)

(assert (=> b!987101 m!913791))

(assert (=> b!987101 m!913779))

(assert (=> b!987101 m!913791))

(declare-fun m!913793 () Bool)

(assert (=> b!987101 m!913793))

(assert (=> b!987101 m!913789))

(declare-fun m!913795 () Bool)

(assert (=> b!987101 m!913795))

(assert (=> b!987101 m!913777))

(declare-fun m!913797 () Bool)

(assert (=> b!987101 m!913797))

(declare-fun m!913799 () Bool)

(assert (=> b!987097 m!913799))

(assert (=> b!987100 m!913777))

(assert (=> b!987100 m!913777))

(declare-fun m!913801 () Bool)

(assert (=> b!987100 m!913801))

(declare-fun m!913803 () Bool)

(assert (=> start!84434 m!913803))

(declare-fun m!913805 () Bool)

(assert (=> start!84434 m!913805))

(declare-fun m!913807 () Bool)

(assert (=> start!84434 m!913807))

(declare-fun m!913809 () Bool)

(assert (=> mapNonEmpty!36821 m!913809))

(check-sat (not b!987097) tp_is_empty!23193 (not b_lambda!15029) (not b!987101) (not b!987100) (not b!987098) (not start!84434) (not b_next!19977) b_and!32037 (not mapNonEmpty!36821))
(check-sat b_and!32037 (not b_next!19977))
