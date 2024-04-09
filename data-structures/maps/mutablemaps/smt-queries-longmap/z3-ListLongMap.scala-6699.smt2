; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84196 () Bool)

(assert start!84196)

(declare-fun b_free!19869 () Bool)

(declare-fun b_next!19869 () Bool)

(assert (=> start!84196 (= b_free!19869 (not b_next!19869))))

(declare-fun tp!69211 () Bool)

(declare-fun b_and!31833 () Bool)

(assert (=> start!84196 (= tp!69211 b_and!31833)))

(declare-fun b!984097 () Bool)

(declare-fun res!658617 () Bool)

(declare-fun e!554816 () Bool)

(assert (=> b!984097 (=> (not res!658617) (not e!554816))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984097 (= res!658617 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984098 () Bool)

(declare-fun res!658620 () Bool)

(assert (=> b!984098 (=> (not res!658620) (not e!554816))))

(declare-datatypes ((array!61911 0))(
  ( (array!61912 (arr!29809 (Array (_ BitVec 32) (_ BitVec 64))) (size!30289 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61911)

(declare-datatypes ((List!20774 0))(
  ( (Nil!20771) (Cons!20770 (h!21932 (_ BitVec 64)) (t!29595 List!20774)) )
))
(declare-fun arrayNoDuplicates!0 (array!61911 (_ BitVec 32) List!20774) Bool)

(assert (=> b!984098 (= res!658620 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20771))))

(declare-fun mapNonEmpty!36485 () Bool)

(declare-fun mapRes!36485 () Bool)

(declare-fun tp!69212 () Bool)

(declare-fun e!554812 () Bool)

(assert (=> mapNonEmpty!36485 (= mapRes!36485 (and tp!69212 e!554812))))

(declare-datatypes ((V!35611 0))(
  ( (V!35612 (val!11536 Int)) )
))
(declare-datatypes ((ValueCell!11004 0))(
  ( (ValueCellFull!11004 (v!14098 V!35611)) (EmptyCell!11004) )
))
(declare-datatypes ((array!61913 0))(
  ( (array!61914 (arr!29810 (Array (_ BitVec 32) ValueCell!11004)) (size!30290 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61913)

(declare-fun mapValue!36485 () ValueCell!11004)

(declare-fun mapRest!36485 () (Array (_ BitVec 32) ValueCell!11004))

(declare-fun mapKey!36485 () (_ BitVec 32))

(assert (=> mapNonEmpty!36485 (= (arr!29810 _values!1278) (store mapRest!36485 mapKey!36485 mapValue!36485))))

(declare-fun b!984099 () Bool)

(declare-fun res!658619 () Bool)

(assert (=> b!984099 (=> (not res!658619) (not e!554816))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61911 (_ BitVec 32)) Bool)

(assert (=> b!984099 (= res!658619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984101 () Bool)

(declare-fun e!554813 () Bool)

(assert (=> b!984101 (= e!554816 e!554813)))

(declare-fun res!658616 () Bool)

(assert (=> b!984101 (=> (not res!658616) (not e!554813))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!984101 (= res!658616 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29809 _keys!1544) from!1932))))))

(declare-fun lt!436678 () V!35611)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15482 (ValueCell!11004 V!35611) V!35611)

(declare-fun dynLambda!1825 (Int (_ BitVec 64)) V!35611)

(assert (=> b!984101 (= lt!436678 (get!15482 (select (arr!29810 _values!1278) from!1932) (dynLambda!1825 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35611)

(declare-fun zeroValue!1220 () V!35611)

(declare-datatypes ((tuple2!14854 0))(
  ( (tuple2!14855 (_1!7437 (_ BitVec 64)) (_2!7437 V!35611)) )
))
(declare-datatypes ((List!20775 0))(
  ( (Nil!20772) (Cons!20771 (h!21933 tuple2!14854) (t!29596 List!20775)) )
))
(declare-datatypes ((ListLongMap!13565 0))(
  ( (ListLongMap!13566 (toList!6798 List!20775)) )
))
(declare-fun lt!436677 () ListLongMap!13565)

(declare-fun getCurrentListMapNoExtraKeys!3454 (array!61911 array!61913 (_ BitVec 32) (_ BitVec 32) V!35611 V!35611 (_ BitVec 32) Int) ListLongMap!13565)

(assert (=> b!984101 (= lt!436677 (getCurrentListMapNoExtraKeys!3454 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984102 () Bool)

(declare-fun res!658618 () Bool)

(assert (=> b!984102 (=> (not res!658618) (not e!554816))))

(assert (=> b!984102 (= res!658618 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30289 _keys!1544))))))

(declare-fun b!984100 () Bool)

(declare-fun e!554814 () Bool)

(declare-fun e!554815 () Bool)

(assert (=> b!984100 (= e!554814 (and e!554815 mapRes!36485))))

(declare-fun condMapEmpty!36485 () Bool)

(declare-fun mapDefault!36485 () ValueCell!11004)

(assert (=> b!984100 (= condMapEmpty!36485 (= (arr!29810 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11004)) mapDefault!36485)))))

(declare-fun res!658615 () Bool)

(assert (=> start!84196 (=> (not res!658615) (not e!554816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84196 (= res!658615 (validMask!0 mask!1948))))

(assert (=> start!84196 e!554816))

(assert (=> start!84196 true))

(declare-fun tp_is_empty!22971 () Bool)

(assert (=> start!84196 tp_is_empty!22971))

(declare-fun array_inv!22913 (array!61913) Bool)

(assert (=> start!84196 (and (array_inv!22913 _values!1278) e!554814)))

(assert (=> start!84196 tp!69211))

(declare-fun array_inv!22914 (array!61911) Bool)

(assert (=> start!84196 (array_inv!22914 _keys!1544)))

(declare-fun b!984103 () Bool)

(assert (=> b!984103 (= e!554812 tp_is_empty!22971)))

(declare-fun b!984104 () Bool)

(declare-fun res!658613 () Bool)

(assert (=> b!984104 (=> (not res!658613) (not e!554816))))

(assert (=> b!984104 (= res!658613 (and (= (size!30290 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30289 _keys!1544) (size!30290 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984105 () Bool)

(assert (=> b!984105 (= e!554813 (not true))))

(declare-fun lt!436681 () tuple2!14854)

(declare-fun lt!436680 () tuple2!14854)

(declare-fun +!2991 (ListLongMap!13565 tuple2!14854) ListLongMap!13565)

(assert (=> b!984105 (= (+!2991 (+!2991 lt!436677 lt!436681) lt!436680) (+!2991 (+!2991 lt!436677 lt!436680) lt!436681))))

(assert (=> b!984105 (= lt!436680 (tuple2!14855 (select (arr!29809 _keys!1544) from!1932) lt!436678))))

(assert (=> b!984105 (= lt!436681 (tuple2!14855 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32657 0))(
  ( (Unit!32658) )
))
(declare-fun lt!436679 () Unit!32657)

(declare-fun addCommutativeForDiffKeys!653 (ListLongMap!13565 (_ BitVec 64) V!35611 (_ BitVec 64) V!35611) Unit!32657)

(assert (=> b!984105 (= lt!436679 (addCommutativeForDiffKeys!653 lt!436677 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29809 _keys!1544) from!1932) lt!436678))))

(declare-fun b!984106 () Bool)

(declare-fun res!658614 () Bool)

(assert (=> b!984106 (=> (not res!658614) (not e!554816))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984106 (= res!658614 (validKeyInArray!0 (select (arr!29809 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36485 () Bool)

(assert (=> mapIsEmpty!36485 mapRes!36485))

(declare-fun b!984107 () Bool)

(assert (=> b!984107 (= e!554815 tp_is_empty!22971)))

(assert (= (and start!84196 res!658615) b!984104))

(assert (= (and b!984104 res!658613) b!984099))

(assert (= (and b!984099 res!658619) b!984098))

(assert (= (and b!984098 res!658620) b!984102))

(assert (= (and b!984102 res!658618) b!984106))

(assert (= (and b!984106 res!658614) b!984097))

(assert (= (and b!984097 res!658617) b!984101))

(assert (= (and b!984101 res!658616) b!984105))

(assert (= (and b!984100 condMapEmpty!36485) mapIsEmpty!36485))

(assert (= (and b!984100 (not condMapEmpty!36485)) mapNonEmpty!36485))

(get-info :version)

(assert (= (and mapNonEmpty!36485 ((_ is ValueCellFull!11004) mapValue!36485)) b!984103))

(assert (= (and b!984100 ((_ is ValueCellFull!11004) mapDefault!36485)) b!984107))

(assert (= start!84196 b!984100))

(declare-fun b_lambda!14931 () Bool)

(assert (=> (not b_lambda!14931) (not b!984101)))

(declare-fun t!29594 () Bool)

(declare-fun tb!6671 () Bool)

(assert (=> (and start!84196 (= defaultEntry!1281 defaultEntry!1281) t!29594) tb!6671))

(declare-fun result!13323 () Bool)

(assert (=> tb!6671 (= result!13323 tp_is_empty!22971)))

(assert (=> b!984101 t!29594))

(declare-fun b_and!31835 () Bool)

(assert (= b_and!31833 (and (=> t!29594 result!13323) b_and!31835)))

(declare-fun m!911295 () Bool)

(assert (=> mapNonEmpty!36485 m!911295))

(declare-fun m!911297 () Bool)

(assert (=> b!984105 m!911297))

(declare-fun m!911299 () Bool)

(assert (=> b!984105 m!911299))

(declare-fun m!911301 () Bool)

(assert (=> b!984105 m!911301))

(assert (=> b!984105 m!911297))

(declare-fun m!911303 () Bool)

(assert (=> b!984105 m!911303))

(assert (=> b!984105 m!911299))

(declare-fun m!911305 () Bool)

(assert (=> b!984105 m!911305))

(declare-fun m!911307 () Bool)

(assert (=> b!984105 m!911307))

(assert (=> b!984105 m!911305))

(declare-fun m!911309 () Bool)

(assert (=> b!984099 m!911309))

(assert (=> b!984101 m!911297))

(declare-fun m!911311 () Bool)

(assert (=> b!984101 m!911311))

(declare-fun m!911313 () Bool)

(assert (=> b!984101 m!911313))

(declare-fun m!911315 () Bool)

(assert (=> b!984101 m!911315))

(assert (=> b!984101 m!911311))

(assert (=> b!984101 m!911315))

(declare-fun m!911317 () Bool)

(assert (=> b!984101 m!911317))

(declare-fun m!911319 () Bool)

(assert (=> start!84196 m!911319))

(declare-fun m!911321 () Bool)

(assert (=> start!84196 m!911321))

(declare-fun m!911323 () Bool)

(assert (=> start!84196 m!911323))

(declare-fun m!911325 () Bool)

(assert (=> b!984098 m!911325))

(assert (=> b!984106 m!911297))

(assert (=> b!984106 m!911297))

(declare-fun m!911327 () Bool)

(assert (=> b!984106 m!911327))

(check-sat (not mapNonEmpty!36485) tp_is_empty!22971 (not b!984106) (not b_lambda!14931) (not b!984101) b_and!31835 (not start!84196) (not b!984099) (not b!984105) (not b_next!19869) (not b!984098))
(check-sat b_and!31835 (not b_next!19869))
