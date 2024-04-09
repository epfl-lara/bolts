; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84208 () Bool)

(assert start!84208)

(declare-fun b_free!19881 () Bool)

(declare-fun b_next!19881 () Bool)

(assert (=> start!84208 (= b_free!19881 (not b_next!19881))))

(declare-fun tp!69247 () Bool)

(declare-fun b_and!31857 () Bool)

(assert (=> start!84208 (= tp!69247 b_and!31857)))

(declare-fun b!984308 () Bool)

(declare-fun res!658757 () Bool)

(declare-fun e!554921 () Bool)

(assert (=> b!984308 (=> (not res!658757) (not e!554921))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984308 (= res!658757 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!36503 () Bool)

(declare-fun mapRes!36503 () Bool)

(assert (=> mapIsEmpty!36503 mapRes!36503))

(declare-fun b!984309 () Bool)

(declare-fun e!554924 () Bool)

(assert (=> b!984309 (= e!554921 e!554924)))

(declare-fun res!658762 () Bool)

(assert (=> b!984309 (=> (not res!658762) (not e!554924))))

(declare-datatypes ((array!61935 0))(
  ( (array!61936 (arr!29821 (Array (_ BitVec 32) (_ BitVec 64))) (size!30301 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61935)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!984309 (= res!658762 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29821 _keys!1544) from!1932))))))

(declare-datatypes ((V!35627 0))(
  ( (V!35628 (val!11542 Int)) )
))
(declare-fun lt!436770 () V!35627)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((ValueCell!11010 0))(
  ( (ValueCellFull!11010 (v!14104 V!35627)) (EmptyCell!11010) )
))
(declare-datatypes ((array!61937 0))(
  ( (array!61938 (arr!29822 (Array (_ BitVec 32) ValueCell!11010)) (size!30302 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61937)

(declare-fun get!15489 (ValueCell!11010 V!35627) V!35627)

(declare-fun dynLambda!1828 (Int (_ BitVec 64)) V!35627)

(assert (=> b!984309 (= lt!436770 (get!15489 (select (arr!29822 _values!1278) from!1932) (dynLambda!1828 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35627)

(declare-datatypes ((tuple2!14862 0))(
  ( (tuple2!14863 (_1!7441 (_ BitVec 64)) (_2!7441 V!35627)) )
))
(declare-datatypes ((List!20782 0))(
  ( (Nil!20779) (Cons!20778 (h!21940 tuple2!14862) (t!29615 List!20782)) )
))
(declare-datatypes ((ListLongMap!13573 0))(
  ( (ListLongMap!13574 (toList!6802 List!20782)) )
))
(declare-fun lt!436771 () ListLongMap!13573)

(declare-fun zeroValue!1220 () V!35627)

(declare-fun getCurrentListMapNoExtraKeys!3457 (array!61935 array!61937 (_ BitVec 32) (_ BitVec 32) V!35627 V!35627 (_ BitVec 32) Int) ListLongMap!13573)

(assert (=> b!984309 (= lt!436771 (getCurrentListMapNoExtraKeys!3457 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984310 () Bool)

(declare-fun e!554923 () Bool)

(declare-fun tp_is_empty!22983 () Bool)

(assert (=> b!984310 (= e!554923 tp_is_empty!22983)))

(declare-fun b!984311 () Bool)

(declare-fun e!554922 () Bool)

(declare-fun e!554919 () Bool)

(assert (=> b!984311 (= e!554922 (and e!554919 mapRes!36503))))

(declare-fun condMapEmpty!36503 () Bool)

(declare-fun mapDefault!36503 () ValueCell!11010)

(assert (=> b!984311 (= condMapEmpty!36503 (= (arr!29822 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11010)) mapDefault!36503)))))

(declare-fun mapNonEmpty!36503 () Bool)

(declare-fun tp!69248 () Bool)

(assert (=> mapNonEmpty!36503 (= mapRes!36503 (and tp!69248 e!554923))))

(declare-fun mapValue!36503 () ValueCell!11010)

(declare-fun mapKey!36503 () (_ BitVec 32))

(declare-fun mapRest!36503 () (Array (_ BitVec 32) ValueCell!11010))

(assert (=> mapNonEmpty!36503 (= (arr!29822 _values!1278) (store mapRest!36503 mapKey!36503 mapValue!36503))))

(declare-fun res!658764 () Bool)

(assert (=> start!84208 (=> (not res!658764) (not e!554921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84208 (= res!658764 (validMask!0 mask!1948))))

(assert (=> start!84208 e!554921))

(assert (=> start!84208 true))

(assert (=> start!84208 tp_is_empty!22983))

(declare-fun array_inv!22919 (array!61937) Bool)

(assert (=> start!84208 (and (array_inv!22919 _values!1278) e!554922)))

(assert (=> start!84208 tp!69247))

(declare-fun array_inv!22920 (array!61935) Bool)

(assert (=> start!84208 (array_inv!22920 _keys!1544)))

(declare-fun b!984307 () Bool)

(declare-fun res!658763 () Bool)

(assert (=> b!984307 (=> (not res!658763) (not e!554921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61935 (_ BitVec 32)) Bool)

(assert (=> b!984307 (= res!658763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984312 () Bool)

(declare-fun res!658759 () Bool)

(assert (=> b!984312 (=> (not res!658759) (not e!554921))))

(declare-datatypes ((List!20783 0))(
  ( (Nil!20780) (Cons!20779 (h!21941 (_ BitVec 64)) (t!29616 List!20783)) )
))
(declare-fun arrayNoDuplicates!0 (array!61935 (_ BitVec 32) List!20783) Bool)

(assert (=> b!984312 (= res!658759 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20780))))

(declare-fun b!984313 () Bool)

(declare-fun res!658758 () Bool)

(assert (=> b!984313 (=> (not res!658758) (not e!554921))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984313 (= res!658758 (validKeyInArray!0 (select (arr!29821 _keys!1544) from!1932)))))

(declare-fun b!984314 () Bool)

(declare-fun res!658760 () Bool)

(assert (=> b!984314 (=> (not res!658760) (not e!554921))))

(assert (=> b!984314 (= res!658760 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30301 _keys!1544))))))

(declare-fun b!984315 () Bool)

(assert (=> b!984315 (= e!554919 tp_is_empty!22983)))

(declare-fun b!984316 () Bool)

(declare-fun res!658761 () Bool)

(assert (=> b!984316 (=> (not res!658761) (not e!554921))))

(assert (=> b!984316 (= res!658761 (and (= (size!30302 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30301 _keys!1544) (size!30302 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984317 () Bool)

(assert (=> b!984317 (= e!554924 (not true))))

(declare-fun lt!436767 () tuple2!14862)

(declare-fun lt!436769 () tuple2!14862)

(declare-fun +!2994 (ListLongMap!13573 tuple2!14862) ListLongMap!13573)

(assert (=> b!984317 (= (+!2994 (+!2994 lt!436771 lt!436767) lt!436769) (+!2994 (+!2994 lt!436771 lt!436769) lt!436767))))

(assert (=> b!984317 (= lt!436769 (tuple2!14863 (select (arr!29821 _keys!1544) from!1932) lt!436770))))

(assert (=> b!984317 (= lt!436767 (tuple2!14863 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32663 0))(
  ( (Unit!32664) )
))
(declare-fun lt!436768 () Unit!32663)

(declare-fun addCommutativeForDiffKeys!656 (ListLongMap!13573 (_ BitVec 64) V!35627 (_ BitVec 64) V!35627) Unit!32663)

(assert (=> b!984317 (= lt!436768 (addCommutativeForDiffKeys!656 lt!436771 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29821 _keys!1544) from!1932) lt!436770))))

(assert (= (and start!84208 res!658764) b!984316))

(assert (= (and b!984316 res!658761) b!984307))

(assert (= (and b!984307 res!658763) b!984312))

(assert (= (and b!984312 res!658759) b!984314))

(assert (= (and b!984314 res!658760) b!984313))

(assert (= (and b!984313 res!658758) b!984308))

(assert (= (and b!984308 res!658757) b!984309))

(assert (= (and b!984309 res!658762) b!984317))

(assert (= (and b!984311 condMapEmpty!36503) mapIsEmpty!36503))

(assert (= (and b!984311 (not condMapEmpty!36503)) mapNonEmpty!36503))

(get-info :version)

(assert (= (and mapNonEmpty!36503 ((_ is ValueCellFull!11010) mapValue!36503)) b!984310))

(assert (= (and b!984311 ((_ is ValueCellFull!11010) mapDefault!36503)) b!984315))

(assert (= start!84208 b!984311))

(declare-fun b_lambda!14943 () Bool)

(assert (=> (not b_lambda!14943) (not b!984309)))

(declare-fun t!29614 () Bool)

(declare-fun tb!6683 () Bool)

(assert (=> (and start!84208 (= defaultEntry!1281 defaultEntry!1281) t!29614) tb!6683))

(declare-fun result!13347 () Bool)

(assert (=> tb!6683 (= result!13347 tp_is_empty!22983)))

(assert (=> b!984309 t!29614))

(declare-fun b_and!31859 () Bool)

(assert (= b_and!31857 (and (=> t!29614 result!13347) b_and!31859)))

(declare-fun m!911499 () Bool)

(assert (=> b!984309 m!911499))

(declare-fun m!911501 () Bool)

(assert (=> b!984309 m!911501))

(declare-fun m!911503 () Bool)

(assert (=> b!984309 m!911503))

(declare-fun m!911505 () Bool)

(assert (=> b!984309 m!911505))

(assert (=> b!984309 m!911501))

(assert (=> b!984309 m!911505))

(declare-fun m!911507 () Bool)

(assert (=> b!984309 m!911507))

(declare-fun m!911509 () Bool)

(assert (=> b!984307 m!911509))

(declare-fun m!911511 () Bool)

(assert (=> start!84208 m!911511))

(declare-fun m!911513 () Bool)

(assert (=> start!84208 m!911513))

(declare-fun m!911515 () Bool)

(assert (=> start!84208 m!911515))

(declare-fun m!911517 () Bool)

(assert (=> b!984312 m!911517))

(assert (=> b!984313 m!911499))

(assert (=> b!984313 m!911499))

(declare-fun m!911519 () Bool)

(assert (=> b!984313 m!911519))

(declare-fun m!911521 () Bool)

(assert (=> mapNonEmpty!36503 m!911521))

(assert (=> b!984317 m!911499))

(declare-fun m!911523 () Bool)

(assert (=> b!984317 m!911523))

(assert (=> b!984317 m!911499))

(declare-fun m!911525 () Bool)

(assert (=> b!984317 m!911525))

(declare-fun m!911527 () Bool)

(assert (=> b!984317 m!911527))

(declare-fun m!911529 () Bool)

(assert (=> b!984317 m!911529))

(assert (=> b!984317 m!911523))

(declare-fun m!911531 () Bool)

(assert (=> b!984317 m!911531))

(assert (=> b!984317 m!911527))

(check-sat tp_is_empty!22983 (not b!984313) (not b!984312) (not b_next!19881) (not mapNonEmpty!36503) b_and!31859 (not b!984309) (not b!984317) (not b!984307) (not start!84208) (not b_lambda!14943))
(check-sat b_and!31859 (not b_next!19881))
