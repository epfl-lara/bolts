; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83920 () Bool)

(assert start!83920)

(declare-fun b_free!19701 () Bool)

(declare-fun b_next!19701 () Bool)

(assert (=> start!83920 (= b_free!19701 (not b_next!19701))))

(declare-fun tp!68546 () Bool)

(declare-fun b_and!31509 () Bool)

(assert (=> start!83920 (= tp!68546 b_and!31509)))

(declare-fun b!980161 () Bool)

(declare-fun e!552512 () Bool)

(declare-fun tp_is_empty!22695 () Bool)

(assert (=> b!980161 (= e!552512 tp_is_empty!22695)))

(declare-fun b!980162 () Bool)

(declare-fun e!552507 () Bool)

(assert (=> b!980162 (= e!552507 true)))

(declare-datatypes ((V!35243 0))(
  ( (V!35244 (val!11398 Int)) )
))
(declare-datatypes ((tuple2!14728 0))(
  ( (tuple2!14729 (_1!7374 (_ BitVec 64)) (_2!7374 V!35243)) )
))
(declare-datatypes ((List!20619 0))(
  ( (Nil!20616) (Cons!20615 (h!21777 tuple2!14728) (t!29284 List!20619)) )
))
(declare-datatypes ((ListLongMap!13439 0))(
  ( (ListLongMap!13440 (toList!6735 List!20619)) )
))
(declare-fun lt!435148 () ListLongMap!13439)

(declare-fun lt!435153 () tuple2!14728)

(declare-fun lt!435146 () ListLongMap!13439)

(declare-fun lt!435152 () tuple2!14728)

(declare-fun +!2941 (ListLongMap!13439 tuple2!14728) ListLongMap!13439)

(assert (=> b!980162 (= lt!435146 (+!2941 (+!2941 lt!435148 lt!435152) lt!435153))))

(declare-datatypes ((Unit!32557 0))(
  ( (Unit!32558) )
))
(declare-fun lt!435150 () Unit!32557)

(declare-fun zeroValue!1220 () V!35243)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61399 0))(
  ( (array!61400 (arr!29553 (Array (_ BitVec 32) (_ BitVec 64))) (size!30033 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61399)

(declare-fun lt!435154 () V!35243)

(declare-fun addCommutativeForDiffKeys!603 (ListLongMap!13439 (_ BitVec 64) V!35243 (_ BitVec 64) V!35243) Unit!32557)

(assert (=> b!980162 (= lt!435150 (addCommutativeForDiffKeys!603 lt!435148 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29553 _keys!1544) from!1932) lt!435154))))

(declare-fun b!980163 () Bool)

(declare-fun e!552508 () Bool)

(assert (=> b!980163 (= e!552508 tp_is_empty!22695)))

(declare-fun b!980164 () Bool)

(declare-fun res!656076 () Bool)

(declare-fun e!552510 () Bool)

(assert (=> b!980164 (=> (not res!656076) (not e!552510))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980164 (= res!656076 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!980165 () Bool)

(declare-fun res!656078 () Bool)

(assert (=> b!980165 (=> (not res!656078) (not e!552510))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10866 0))(
  ( (ValueCellFull!10866 (v!13960 V!35243)) (EmptyCell!10866) )
))
(declare-datatypes ((array!61401 0))(
  ( (array!61402 (arr!29554 (Array (_ BitVec 32) ValueCell!10866)) (size!30034 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61401)

(assert (=> b!980165 (= res!656078 (and (= (size!30034 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30033 _keys!1544) (size!30034 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980166 () Bool)

(declare-fun e!552511 () Bool)

(declare-fun mapRes!36071 () Bool)

(assert (=> b!980166 (= e!552511 (and e!552512 mapRes!36071))))

(declare-fun condMapEmpty!36071 () Bool)

(declare-fun mapDefault!36071 () ValueCell!10866)

(assert (=> b!980166 (= condMapEmpty!36071 (= (arr!29554 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10866)) mapDefault!36071)))))

(declare-fun b!980168 () Bool)

(assert (=> b!980168 (= e!552510 (not e!552507))))

(declare-fun res!656079 () Bool)

(assert (=> b!980168 (=> res!656079 e!552507)))

(assert (=> b!980168 (= res!656079 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29553 _keys!1544) from!1932)))))

(declare-fun lt!435147 () tuple2!14728)

(declare-fun lt!435145 () ListLongMap!13439)

(assert (=> b!980168 (= (+!2941 lt!435145 lt!435152) (+!2941 lt!435146 lt!435147))))

(declare-fun lt!435151 () ListLongMap!13439)

(assert (=> b!980168 (= lt!435146 (+!2941 lt!435151 lt!435152))))

(assert (=> b!980168 (= lt!435152 (tuple2!14729 (select (arr!29553 _keys!1544) from!1932) lt!435154))))

(assert (=> b!980168 (= lt!435145 (+!2941 lt!435151 lt!435147))))

(declare-fun minValue!1220 () V!35243)

(assert (=> b!980168 (= lt!435147 (tuple2!14729 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!435149 () Unit!32557)

(assert (=> b!980168 (= lt!435149 (addCommutativeForDiffKeys!603 lt!435151 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29553 _keys!1544) from!1932) lt!435154))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15339 (ValueCell!10866 V!35243) V!35243)

(declare-fun dynLambda!1774 (Int (_ BitVec 64)) V!35243)

(assert (=> b!980168 (= lt!435154 (get!15339 (select (arr!29554 _values!1278) from!1932) (dynLambda!1774 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!980168 (= lt!435151 (+!2941 lt!435148 lt!435153))))

(assert (=> b!980168 (= lt!435153 (tuple2!14729 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3399 (array!61399 array!61401 (_ BitVec 32) (_ BitVec 32) V!35243 V!35243 (_ BitVec 32) Int) ListLongMap!13439)

(assert (=> b!980168 (= lt!435148 (getCurrentListMapNoExtraKeys!3399 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!980169 () Bool)

(declare-fun res!656075 () Bool)

(assert (=> b!980169 (=> (not res!656075) (not e!552510))))

(assert (=> b!980169 (= res!656075 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30033 _keys!1544))))))

(declare-fun b!980170 () Bool)

(declare-fun res!656081 () Bool)

(assert (=> b!980170 (=> (not res!656081) (not e!552510))))

(declare-datatypes ((List!20620 0))(
  ( (Nil!20617) (Cons!20616 (h!21778 (_ BitVec 64)) (t!29285 List!20620)) )
))
(declare-fun arrayNoDuplicates!0 (array!61399 (_ BitVec 32) List!20620) Bool)

(assert (=> b!980170 (= res!656081 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20617))))

(declare-fun mapNonEmpty!36071 () Bool)

(declare-fun tp!68545 () Bool)

(assert (=> mapNonEmpty!36071 (= mapRes!36071 (and tp!68545 e!552508))))

(declare-fun mapKey!36071 () (_ BitVec 32))

(declare-fun mapValue!36071 () ValueCell!10866)

(declare-fun mapRest!36071 () (Array (_ BitVec 32) ValueCell!10866))

(assert (=> mapNonEmpty!36071 (= (arr!29554 _values!1278) (store mapRest!36071 mapKey!36071 mapValue!36071))))

(declare-fun mapIsEmpty!36071 () Bool)

(assert (=> mapIsEmpty!36071 mapRes!36071))

(declare-fun b!980171 () Bool)

(declare-fun res!656080 () Bool)

(assert (=> b!980171 (=> (not res!656080) (not e!552510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61399 (_ BitVec 32)) Bool)

(assert (=> b!980171 (= res!656080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980167 () Bool)

(declare-fun res!656082 () Bool)

(assert (=> b!980167 (=> (not res!656082) (not e!552510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!980167 (= res!656082 (validKeyInArray!0 (select (arr!29553 _keys!1544) from!1932)))))

(declare-fun res!656077 () Bool)

(assert (=> start!83920 (=> (not res!656077) (not e!552510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83920 (= res!656077 (validMask!0 mask!1948))))

(assert (=> start!83920 e!552510))

(assert (=> start!83920 true))

(assert (=> start!83920 tp_is_empty!22695))

(declare-fun array_inv!22735 (array!61401) Bool)

(assert (=> start!83920 (and (array_inv!22735 _values!1278) e!552511)))

(assert (=> start!83920 tp!68546))

(declare-fun array_inv!22736 (array!61399) Bool)

(assert (=> start!83920 (array_inv!22736 _keys!1544)))

(assert (= (and start!83920 res!656077) b!980165))

(assert (= (and b!980165 res!656078) b!980171))

(assert (= (and b!980171 res!656080) b!980170))

(assert (= (and b!980170 res!656081) b!980169))

(assert (= (and b!980169 res!656075) b!980167))

(assert (= (and b!980167 res!656082) b!980164))

(assert (= (and b!980164 res!656076) b!980168))

(assert (= (and b!980168 (not res!656079)) b!980162))

(assert (= (and b!980166 condMapEmpty!36071) mapIsEmpty!36071))

(assert (= (and b!980166 (not condMapEmpty!36071)) mapNonEmpty!36071))

(get-info :version)

(assert (= (and mapNonEmpty!36071 ((_ is ValueCellFull!10866) mapValue!36071)) b!980163))

(assert (= (and b!980166 ((_ is ValueCellFull!10866) mapDefault!36071)) b!980161))

(assert (= start!83920 b!980166))

(declare-fun b_lambda!14775 () Bool)

(assert (=> (not b_lambda!14775) (not b!980168)))

(declare-fun t!29283 () Bool)

(declare-fun tb!6515 () Bool)

(assert (=> (and start!83920 (= defaultEntry!1281 defaultEntry!1281) t!29283) tb!6515))

(declare-fun result!13011 () Bool)

(assert (=> tb!6515 (= result!13011 tp_is_empty!22695)))

(assert (=> b!980168 t!29283))

(declare-fun b_and!31511 () Bool)

(assert (= b_and!31509 (and (=> t!29283 result!13011) b_and!31511)))

(declare-fun m!907751 () Bool)

(assert (=> b!980171 m!907751))

(declare-fun m!907753 () Bool)

(assert (=> mapNonEmpty!36071 m!907753))

(declare-fun m!907755 () Bool)

(assert (=> start!83920 m!907755))

(declare-fun m!907757 () Bool)

(assert (=> start!83920 m!907757))

(declare-fun m!907759 () Bool)

(assert (=> start!83920 m!907759))

(declare-fun m!907761 () Bool)

(assert (=> b!980168 m!907761))

(declare-fun m!907763 () Bool)

(assert (=> b!980168 m!907763))

(declare-fun m!907765 () Bool)

(assert (=> b!980168 m!907765))

(declare-fun m!907767 () Bool)

(assert (=> b!980168 m!907767))

(declare-fun m!907769 () Bool)

(assert (=> b!980168 m!907769))

(declare-fun m!907771 () Bool)

(assert (=> b!980168 m!907771))

(assert (=> b!980168 m!907763))

(declare-fun m!907773 () Bool)

(assert (=> b!980168 m!907773))

(declare-fun m!907775 () Bool)

(assert (=> b!980168 m!907775))

(declare-fun m!907777 () Bool)

(assert (=> b!980168 m!907777))

(declare-fun m!907779 () Bool)

(assert (=> b!980168 m!907779))

(assert (=> b!980168 m!907765))

(assert (=> b!980168 m!907779))

(declare-fun m!907781 () Bool)

(assert (=> b!980168 m!907781))

(declare-fun m!907783 () Bool)

(assert (=> b!980170 m!907783))

(assert (=> b!980167 m!907763))

(assert (=> b!980167 m!907763))

(declare-fun m!907785 () Bool)

(assert (=> b!980167 m!907785))

(declare-fun m!907787 () Bool)

(assert (=> b!980162 m!907787))

(assert (=> b!980162 m!907787))

(declare-fun m!907789 () Bool)

(assert (=> b!980162 m!907789))

(assert (=> b!980162 m!907763))

(assert (=> b!980162 m!907763))

(declare-fun m!907791 () Bool)

(assert (=> b!980162 m!907791))

(check-sat (not b!980162) tp_is_empty!22695 b_and!31511 (not b!980167) (not b_lambda!14775) (not b!980171) (not b_next!19701) (not start!83920) (not mapNonEmpty!36071) (not b!980170) (not b!980168))
(check-sat b_and!31511 (not b_next!19701))
