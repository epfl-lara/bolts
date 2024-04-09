; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84190 () Bool)

(assert start!84190)

(declare-fun b_free!19863 () Bool)

(declare-fun b_next!19863 () Bool)

(assert (=> start!84190 (= b_free!19863 (not b_next!19863))))

(declare-fun tp!69193 () Bool)

(declare-fun b_and!31821 () Bool)

(assert (=> start!84190 (= tp!69193 b_and!31821)))

(declare-fun b!983992 () Bool)

(declare-fun e!554757 () Bool)

(declare-fun e!554762 () Bool)

(declare-fun mapRes!36476 () Bool)

(assert (=> b!983992 (= e!554757 (and e!554762 mapRes!36476))))

(declare-fun condMapEmpty!36476 () Bool)

(declare-datatypes ((V!35603 0))(
  ( (V!35604 (val!11533 Int)) )
))
(declare-datatypes ((ValueCell!11001 0))(
  ( (ValueCellFull!11001 (v!14095 V!35603)) (EmptyCell!11001) )
))
(declare-datatypes ((array!61899 0))(
  ( (array!61900 (arr!29803 (Array (_ BitVec 32) ValueCell!11001)) (size!30283 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61899)

(declare-fun mapDefault!36476 () ValueCell!11001)

(assert (=> b!983992 (= condMapEmpty!36476 (= (arr!29803 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11001)) mapDefault!36476)))))

(declare-fun b!983993 () Bool)

(declare-fun tp_is_empty!22965 () Bool)

(assert (=> b!983993 (= e!554762 tp_is_empty!22965)))

(declare-fun b!983994 () Bool)

(declare-fun res!658542 () Bool)

(declare-fun e!554759 () Bool)

(assert (=> b!983994 (=> (not res!658542) (not e!554759))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983994 (= res!658542 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!36476 () Bool)

(assert (=> mapIsEmpty!36476 mapRes!36476))

(declare-fun b!983995 () Bool)

(declare-fun res!658541 () Bool)

(assert (=> b!983995 (=> (not res!658541) (not e!554759))))

(declare-datatypes ((array!61901 0))(
  ( (array!61902 (arr!29804 (Array (_ BitVec 32) (_ BitVec 64))) (size!30284 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61901)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61901 (_ BitVec 32)) Bool)

(assert (=> b!983995 (= res!658541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!658546 () Bool)

(assert (=> start!84190 (=> (not res!658546) (not e!554759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84190 (= res!658546 (validMask!0 mask!1948))))

(assert (=> start!84190 e!554759))

(assert (=> start!84190 true))

(assert (=> start!84190 tp_is_empty!22965))

(declare-fun array_inv!22909 (array!61899) Bool)

(assert (=> start!84190 (and (array_inv!22909 _values!1278) e!554757)))

(assert (=> start!84190 tp!69193))

(declare-fun array_inv!22910 (array!61901) Bool)

(assert (=> start!84190 (array_inv!22910 _keys!1544)))

(declare-fun mapNonEmpty!36476 () Bool)

(declare-fun tp!69194 () Bool)

(declare-fun e!554758 () Bool)

(assert (=> mapNonEmpty!36476 (= mapRes!36476 (and tp!69194 e!554758))))

(declare-fun mapRest!36476 () (Array (_ BitVec 32) ValueCell!11001))

(declare-fun mapKey!36476 () (_ BitVec 32))

(declare-fun mapValue!36476 () ValueCell!11001)

(assert (=> mapNonEmpty!36476 (= (arr!29803 _values!1278) (store mapRest!36476 mapKey!36476 mapValue!36476))))

(declare-fun b!983996 () Bool)

(declare-fun e!554760 () Bool)

(assert (=> b!983996 (= e!554760 (not true))))

(declare-datatypes ((tuple2!14848 0))(
  ( (tuple2!14849 (_1!7434 (_ BitVec 64)) (_2!7434 V!35603)) )
))
(declare-datatypes ((List!20769 0))(
  ( (Nil!20766) (Cons!20765 (h!21927 tuple2!14848) (t!29584 List!20769)) )
))
(declare-datatypes ((ListLongMap!13559 0))(
  ( (ListLongMap!13560 (toList!6795 List!20769)) )
))
(declare-fun lt!436634 () ListLongMap!13559)

(declare-fun lt!436633 () tuple2!14848)

(declare-fun lt!436636 () tuple2!14848)

(declare-fun +!2988 (ListLongMap!13559 tuple2!14848) ListLongMap!13559)

(assert (=> b!983996 (= (+!2988 (+!2988 lt!436634 lt!436633) lt!436636) (+!2988 (+!2988 lt!436634 lt!436636) lt!436633))))

(declare-fun lt!436632 () V!35603)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!983996 (= lt!436636 (tuple2!14849 (select (arr!29804 _keys!1544) from!1932) lt!436632))))

(declare-fun minValue!1220 () V!35603)

(assert (=> b!983996 (= lt!436633 (tuple2!14849 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32651 0))(
  ( (Unit!32652) )
))
(declare-fun lt!436635 () Unit!32651)

(declare-fun addCommutativeForDiffKeys!650 (ListLongMap!13559 (_ BitVec 64) V!35603 (_ BitVec 64) V!35603) Unit!32651)

(assert (=> b!983996 (= lt!436635 (addCommutativeForDiffKeys!650 lt!436634 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29804 _keys!1544) from!1932) lt!436632))))

(declare-fun b!983997 () Bool)

(declare-fun res!658543 () Bool)

(assert (=> b!983997 (=> (not res!658543) (not e!554759))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!983997 (= res!658543 (validKeyInArray!0 (select (arr!29804 _keys!1544) from!1932)))))

(declare-fun b!983998 () Bool)

(declare-fun res!658548 () Bool)

(assert (=> b!983998 (=> (not res!658548) (not e!554759))))

(assert (=> b!983998 (= res!658548 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30284 _keys!1544))))))

(declare-fun b!983999 () Bool)

(assert (=> b!983999 (= e!554758 tp_is_empty!22965)))

(declare-fun b!984000 () Bool)

(declare-fun res!658547 () Bool)

(assert (=> b!984000 (=> (not res!658547) (not e!554759))))

(assert (=> b!984000 (= res!658547 (and (= (size!30283 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30284 _keys!1544) (size!30283 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984001 () Bool)

(declare-fun res!658545 () Bool)

(assert (=> b!984001 (=> (not res!658545) (not e!554759))))

(declare-datatypes ((List!20770 0))(
  ( (Nil!20767) (Cons!20766 (h!21928 (_ BitVec 64)) (t!29585 List!20770)) )
))
(declare-fun arrayNoDuplicates!0 (array!61901 (_ BitVec 32) List!20770) Bool)

(assert (=> b!984001 (= res!658545 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20767))))

(declare-fun b!984002 () Bool)

(assert (=> b!984002 (= e!554759 e!554760)))

(declare-fun res!658544 () Bool)

(assert (=> b!984002 (=> (not res!658544) (not e!554760))))

(assert (=> b!984002 (= res!658544 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29804 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15479 (ValueCell!11001 V!35603) V!35603)

(declare-fun dynLambda!1824 (Int (_ BitVec 64)) V!35603)

(assert (=> b!984002 (= lt!436632 (get!15479 (select (arr!29803 _values!1278) from!1932) (dynLambda!1824 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35603)

(declare-fun getCurrentListMapNoExtraKeys!3453 (array!61901 array!61899 (_ BitVec 32) (_ BitVec 32) V!35603 V!35603 (_ BitVec 32) Int) ListLongMap!13559)

(assert (=> b!984002 (= lt!436634 (getCurrentListMapNoExtraKeys!3453 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(assert (= (and start!84190 res!658546) b!984000))

(assert (= (and b!984000 res!658547) b!983995))

(assert (= (and b!983995 res!658541) b!984001))

(assert (= (and b!984001 res!658545) b!983998))

(assert (= (and b!983998 res!658548) b!983997))

(assert (= (and b!983997 res!658543) b!983994))

(assert (= (and b!983994 res!658542) b!984002))

(assert (= (and b!984002 res!658544) b!983996))

(assert (= (and b!983992 condMapEmpty!36476) mapIsEmpty!36476))

(assert (= (and b!983992 (not condMapEmpty!36476)) mapNonEmpty!36476))

(get-info :version)

(assert (= (and mapNonEmpty!36476 ((_ is ValueCellFull!11001) mapValue!36476)) b!983999))

(assert (= (and b!983992 ((_ is ValueCellFull!11001) mapDefault!36476)) b!983993))

(assert (= start!84190 b!983992))

(declare-fun b_lambda!14925 () Bool)

(assert (=> (not b_lambda!14925) (not b!984002)))

(declare-fun t!29583 () Bool)

(declare-fun tb!6665 () Bool)

(assert (=> (and start!84190 (= defaultEntry!1281 defaultEntry!1281) t!29583) tb!6665))

(declare-fun result!13311 () Bool)

(assert (=> tb!6665 (= result!13311 tp_is_empty!22965)))

(assert (=> b!984002 t!29583))

(declare-fun b_and!31823 () Bool)

(assert (= b_and!31821 (and (=> t!29583 result!13311) b_and!31823)))

(declare-fun m!911193 () Bool)

(assert (=> b!983996 m!911193))

(declare-fun m!911195 () Bool)

(assert (=> b!983996 m!911195))

(declare-fun m!911197 () Bool)

(assert (=> b!983996 m!911197))

(declare-fun m!911199 () Bool)

(assert (=> b!983996 m!911199))

(assert (=> b!983996 m!911193))

(declare-fun m!911201 () Bool)

(assert (=> b!983996 m!911201))

(assert (=> b!983996 m!911195))

(declare-fun m!911203 () Bool)

(assert (=> b!983996 m!911203))

(assert (=> b!983996 m!911197))

(declare-fun m!911205 () Bool)

(assert (=> start!84190 m!911205))

(declare-fun m!911207 () Bool)

(assert (=> start!84190 m!911207))

(declare-fun m!911209 () Bool)

(assert (=> start!84190 m!911209))

(assert (=> b!984002 m!911195))

(declare-fun m!911211 () Bool)

(assert (=> b!984002 m!911211))

(declare-fun m!911213 () Bool)

(assert (=> b!984002 m!911213))

(declare-fun m!911215 () Bool)

(assert (=> b!984002 m!911215))

(assert (=> b!984002 m!911211))

(assert (=> b!984002 m!911215))

(declare-fun m!911217 () Bool)

(assert (=> b!984002 m!911217))

(assert (=> b!983997 m!911195))

(assert (=> b!983997 m!911195))

(declare-fun m!911219 () Bool)

(assert (=> b!983997 m!911219))

(declare-fun m!911221 () Bool)

(assert (=> b!983995 m!911221))

(declare-fun m!911223 () Bool)

(assert (=> mapNonEmpty!36476 m!911223))

(declare-fun m!911225 () Bool)

(assert (=> b!984001 m!911225))

(check-sat (not start!84190) b_and!31823 tp_is_empty!22965 (not b!983995) (not b!983997) (not b_lambda!14925) (not b!984002) (not mapNonEmpty!36476) (not b!983996) (not b!984001) (not b_next!19863))
(check-sat b_and!31823 (not b_next!19863))
