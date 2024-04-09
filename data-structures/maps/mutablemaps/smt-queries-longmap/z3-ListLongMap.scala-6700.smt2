; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84202 () Bool)

(assert start!84202)

(declare-fun b_free!19875 () Bool)

(declare-fun b_next!19875 () Bool)

(assert (=> start!84202 (= b_free!19875 (not b_next!19875))))

(declare-fun tp!69230 () Bool)

(declare-fun b_and!31845 () Bool)

(assert (=> start!84202 (= tp!69230 b_and!31845)))

(declare-fun mapIsEmpty!36494 () Bool)

(declare-fun mapRes!36494 () Bool)

(assert (=> mapIsEmpty!36494 mapRes!36494))

(declare-fun b!984202 () Bool)

(declare-fun res!658689 () Bool)

(declare-fun e!554868 () Bool)

(assert (=> b!984202 (=> (not res!658689) (not e!554868))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61923 0))(
  ( (array!61924 (arr!29815 (Array (_ BitVec 32) (_ BitVec 64))) (size!30295 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61923)

(assert (=> b!984202 (= res!658689 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30295 _keys!1544))))))

(declare-fun b!984204 () Bool)

(declare-fun res!658690 () Bool)

(assert (=> b!984204 (=> (not res!658690) (not e!554868))))

(declare-datatypes ((List!20779 0))(
  ( (Nil!20776) (Cons!20775 (h!21937 (_ BitVec 64)) (t!29606 List!20779)) )
))
(declare-fun arrayNoDuplicates!0 (array!61923 (_ BitVec 32) List!20779) Bool)

(assert (=> b!984204 (= res!658690 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20776))))

(declare-fun b!984205 () Bool)

(declare-fun e!554869 () Bool)

(declare-fun tp_is_empty!22977 () Bool)

(assert (=> b!984205 (= e!554869 tp_is_empty!22977)))

(declare-fun b!984206 () Bool)

(declare-fun e!554870 () Bool)

(assert (=> b!984206 (= e!554868 e!554870)))

(declare-fun res!658692 () Bool)

(assert (=> b!984206 (=> (not res!658692) (not e!554870))))

(assert (=> b!984206 (= res!658692 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29815 _keys!1544) from!1932))))))

(declare-datatypes ((V!35619 0))(
  ( (V!35620 (val!11539 Int)) )
))
(declare-datatypes ((ValueCell!11007 0))(
  ( (ValueCellFull!11007 (v!14101 V!35619)) (EmptyCell!11007) )
))
(declare-datatypes ((array!61925 0))(
  ( (array!61926 (arr!29816 (Array (_ BitVec 32) ValueCell!11007)) (size!30296 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61925)

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!436724 () V!35619)

(declare-fun get!15486 (ValueCell!11007 V!35619) V!35619)

(declare-fun dynLambda!1827 (Int (_ BitVec 64)) V!35619)

(assert (=> b!984206 (= lt!436724 (get!15486 (select (arr!29816 _values!1278) from!1932) (dynLambda!1827 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35619)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35619)

(declare-datatypes ((tuple2!14858 0))(
  ( (tuple2!14859 (_1!7439 (_ BitVec 64)) (_2!7439 V!35619)) )
))
(declare-datatypes ((List!20780 0))(
  ( (Nil!20777) (Cons!20776 (h!21938 tuple2!14858) (t!29607 List!20780)) )
))
(declare-datatypes ((ListLongMap!13569 0))(
  ( (ListLongMap!13570 (toList!6800 List!20780)) )
))
(declare-fun lt!436726 () ListLongMap!13569)

(declare-fun getCurrentListMapNoExtraKeys!3456 (array!61923 array!61925 (_ BitVec 32) (_ BitVec 32) V!35619 V!35619 (_ BitVec 32) Int) ListLongMap!13569)

(assert (=> b!984206 (= lt!436726 (getCurrentListMapNoExtraKeys!3456 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984207 () Bool)

(assert (=> b!984207 (= e!554870 (not true))))

(declare-fun lt!436725 () tuple2!14858)

(declare-fun lt!436723 () tuple2!14858)

(declare-fun +!2992 (ListLongMap!13569 tuple2!14858) ListLongMap!13569)

(assert (=> b!984207 (= (+!2992 (+!2992 lt!436726 lt!436725) lt!436723) (+!2992 (+!2992 lt!436726 lt!436723) lt!436725))))

(assert (=> b!984207 (= lt!436723 (tuple2!14859 (select (arr!29815 _keys!1544) from!1932) lt!436724))))

(assert (=> b!984207 (= lt!436725 (tuple2!14859 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32659 0))(
  ( (Unit!32660) )
))
(declare-fun lt!436722 () Unit!32659)

(declare-fun addCommutativeForDiffKeys!654 (ListLongMap!13569 (_ BitVec 64) V!35619 (_ BitVec 64) V!35619) Unit!32659)

(assert (=> b!984207 (= lt!436722 (addCommutativeForDiffKeys!654 lt!436726 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29815 _keys!1544) from!1932) lt!436724))))

(declare-fun b!984208 () Bool)

(declare-fun res!658688 () Bool)

(assert (=> b!984208 (=> (not res!658688) (not e!554868))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984208 (= res!658688 (validKeyInArray!0 (select (arr!29815 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36494 () Bool)

(declare-fun tp!69229 () Bool)

(assert (=> mapNonEmpty!36494 (= mapRes!36494 (and tp!69229 e!554869))))

(declare-fun mapRest!36494 () (Array (_ BitVec 32) ValueCell!11007))

(declare-fun mapKey!36494 () (_ BitVec 32))

(declare-fun mapValue!36494 () ValueCell!11007)

(assert (=> mapNonEmpty!36494 (= (arr!29816 _values!1278) (store mapRest!36494 mapKey!36494 mapValue!36494))))

(declare-fun b!984203 () Bool)

(declare-fun res!658685 () Bool)

(assert (=> b!984203 (=> (not res!658685) (not e!554868))))

(assert (=> b!984203 (= res!658685 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!658691 () Bool)

(assert (=> start!84202 (=> (not res!658691) (not e!554868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84202 (= res!658691 (validMask!0 mask!1948))))

(assert (=> start!84202 e!554868))

(assert (=> start!84202 true))

(assert (=> start!84202 tp_is_empty!22977))

(declare-fun e!554867 () Bool)

(declare-fun array_inv!22917 (array!61925) Bool)

(assert (=> start!84202 (and (array_inv!22917 _values!1278) e!554867)))

(assert (=> start!84202 tp!69230))

(declare-fun array_inv!22918 (array!61923) Bool)

(assert (=> start!84202 (array_inv!22918 _keys!1544)))

(declare-fun b!984209 () Bool)

(declare-fun res!658687 () Bool)

(assert (=> b!984209 (=> (not res!658687) (not e!554868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61923 (_ BitVec 32)) Bool)

(assert (=> b!984209 (= res!658687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984210 () Bool)

(declare-fun e!554866 () Bool)

(assert (=> b!984210 (= e!554867 (and e!554866 mapRes!36494))))

(declare-fun condMapEmpty!36494 () Bool)

(declare-fun mapDefault!36494 () ValueCell!11007)

(assert (=> b!984210 (= condMapEmpty!36494 (= (arr!29816 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11007)) mapDefault!36494)))))

(declare-fun b!984211 () Bool)

(declare-fun res!658686 () Bool)

(assert (=> b!984211 (=> (not res!658686) (not e!554868))))

(assert (=> b!984211 (= res!658686 (and (= (size!30296 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30295 _keys!1544) (size!30296 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984212 () Bool)

(assert (=> b!984212 (= e!554866 tp_is_empty!22977)))

(assert (= (and start!84202 res!658691) b!984211))

(assert (= (and b!984211 res!658686) b!984209))

(assert (= (and b!984209 res!658687) b!984204))

(assert (= (and b!984204 res!658690) b!984202))

(assert (= (and b!984202 res!658689) b!984208))

(assert (= (and b!984208 res!658688) b!984203))

(assert (= (and b!984203 res!658685) b!984206))

(assert (= (and b!984206 res!658692) b!984207))

(assert (= (and b!984210 condMapEmpty!36494) mapIsEmpty!36494))

(assert (= (and b!984210 (not condMapEmpty!36494)) mapNonEmpty!36494))

(get-info :version)

(assert (= (and mapNonEmpty!36494 ((_ is ValueCellFull!11007) mapValue!36494)) b!984205))

(assert (= (and b!984210 ((_ is ValueCellFull!11007) mapDefault!36494)) b!984212))

(assert (= start!84202 b!984210))

(declare-fun b_lambda!14937 () Bool)

(assert (=> (not b_lambda!14937) (not b!984206)))

(declare-fun t!29605 () Bool)

(declare-fun tb!6677 () Bool)

(assert (=> (and start!84202 (= defaultEntry!1281 defaultEntry!1281) t!29605) tb!6677))

(declare-fun result!13335 () Bool)

(assert (=> tb!6677 (= result!13335 tp_is_empty!22977)))

(assert (=> b!984206 t!29605))

(declare-fun b_and!31847 () Bool)

(assert (= b_and!31845 (and (=> t!29605 result!13335) b_and!31847)))

(declare-fun m!911397 () Bool)

(assert (=> b!984208 m!911397))

(assert (=> b!984208 m!911397))

(declare-fun m!911399 () Bool)

(assert (=> b!984208 m!911399))

(assert (=> b!984207 m!911397))

(declare-fun m!911401 () Bool)

(assert (=> b!984207 m!911401))

(assert (=> b!984207 m!911397))

(declare-fun m!911403 () Bool)

(assert (=> b!984207 m!911403))

(declare-fun m!911405 () Bool)

(assert (=> b!984207 m!911405))

(assert (=> b!984207 m!911403))

(declare-fun m!911407 () Bool)

(assert (=> b!984207 m!911407))

(assert (=> b!984207 m!911405))

(declare-fun m!911409 () Bool)

(assert (=> b!984207 m!911409))

(assert (=> b!984206 m!911397))

(declare-fun m!911411 () Bool)

(assert (=> b!984206 m!911411))

(declare-fun m!911413 () Bool)

(assert (=> b!984206 m!911413))

(declare-fun m!911415 () Bool)

(assert (=> b!984206 m!911415))

(assert (=> b!984206 m!911411))

(assert (=> b!984206 m!911415))

(declare-fun m!911417 () Bool)

(assert (=> b!984206 m!911417))

(declare-fun m!911419 () Bool)

(assert (=> start!84202 m!911419))

(declare-fun m!911421 () Bool)

(assert (=> start!84202 m!911421))

(declare-fun m!911423 () Bool)

(assert (=> start!84202 m!911423))

(declare-fun m!911425 () Bool)

(assert (=> b!984204 m!911425))

(declare-fun m!911427 () Bool)

(assert (=> mapNonEmpty!36494 m!911427))

(declare-fun m!911429 () Bool)

(assert (=> b!984209 m!911429))

(check-sat (not b!984206) (not mapNonEmpty!36494) (not b!984209) (not b!984204) (not b_lambda!14937) (not start!84202) (not b!984207) tp_is_empty!22977 (not b_next!19875) (not b!984208) b_and!31847)
(check-sat b_and!31847 (not b_next!19875))
