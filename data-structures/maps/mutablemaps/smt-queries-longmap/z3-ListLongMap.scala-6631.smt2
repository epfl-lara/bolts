; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83788 () Bool)

(assert start!83788)

(declare-fun b_free!19569 () Bool)

(declare-fun b_next!19569 () Bool)

(assert (=> start!83788 (= b_free!19569 (not b_next!19569))))

(declare-fun tp!68150 () Bool)

(declare-fun b_and!31245 () Bool)

(assert (=> start!83788 (= tp!68150 b_and!31245)))

(declare-fun b!977927 () Bool)

(declare-fun res!654567 () Bool)

(declare-fun e!551395 () Bool)

(assert (=> b!977927 (=> (not res!654567) (not e!551395))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61143 0))(
  ( (array!61144 (arr!29425 (Array (_ BitVec 32) (_ BitVec 64))) (size!29905 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61143)

(assert (=> b!977927 (= res!654567 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29905 _keys!1544))))))

(declare-fun b!977928 () Bool)

(declare-fun res!654572 () Bool)

(assert (=> b!977928 (=> (not res!654572) (not e!551395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!977928 (= res!654572 (validKeyInArray!0 (select (arr!29425 _keys!1544) from!1932)))))

(declare-fun b!977929 () Bool)

(declare-fun e!551397 () Bool)

(declare-fun e!551398 () Bool)

(declare-fun mapRes!35873 () Bool)

(assert (=> b!977929 (= e!551397 (and e!551398 mapRes!35873))))

(declare-fun condMapEmpty!35873 () Bool)

(declare-datatypes ((V!35067 0))(
  ( (V!35068 (val!11332 Int)) )
))
(declare-datatypes ((ValueCell!10800 0))(
  ( (ValueCellFull!10800 (v!13894 V!35067)) (EmptyCell!10800) )
))
(declare-datatypes ((array!61145 0))(
  ( (array!61146 (arr!29426 (Array (_ BitVec 32) ValueCell!10800)) (size!29906 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61145)

(declare-fun mapDefault!35873 () ValueCell!10800)

(assert (=> b!977929 (= condMapEmpty!35873 (= (arr!29426 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10800)) mapDefault!35873)))))

(declare-fun res!654569 () Bool)

(assert (=> start!83788 (=> (not res!654569) (not e!551395))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83788 (= res!654569 (validMask!0 mask!1948))))

(assert (=> start!83788 e!551395))

(assert (=> start!83788 true))

(declare-fun tp_is_empty!22563 () Bool)

(assert (=> start!83788 tp_is_empty!22563))

(declare-fun array_inv!22645 (array!61145) Bool)

(assert (=> start!83788 (and (array_inv!22645 _values!1278) e!551397)))

(assert (=> start!83788 tp!68150))

(declare-fun array_inv!22646 (array!61143) Bool)

(assert (=> start!83788 (array_inv!22646 _keys!1544)))

(declare-fun b!977930 () Bool)

(declare-fun res!654573 () Bool)

(assert (=> b!977930 (=> (not res!654573) (not e!551395))))

(declare-datatypes ((List!20526 0))(
  ( (Nil!20523) (Cons!20522 (h!21684 (_ BitVec 64)) (t!29059 List!20526)) )
))
(declare-fun arrayNoDuplicates!0 (array!61143 (_ BitVec 32) List!20526) Bool)

(assert (=> b!977930 (= res!654573 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20523))))

(declare-fun mapNonEmpty!35873 () Bool)

(declare-fun tp!68149 () Bool)

(declare-fun e!551399 () Bool)

(assert (=> mapNonEmpty!35873 (= mapRes!35873 (and tp!68149 e!551399))))

(declare-fun mapKey!35873 () (_ BitVec 32))

(declare-fun mapValue!35873 () ValueCell!10800)

(declare-fun mapRest!35873 () (Array (_ BitVec 32) ValueCell!10800))

(assert (=> mapNonEmpty!35873 (= (arr!29426 _values!1278) (store mapRest!35873 mapKey!35873 mapValue!35873))))

(declare-fun b!977931 () Bool)

(assert (=> b!977931 (= e!551395 (not true))))

(declare-datatypes ((tuple2!14626 0))(
  ( (tuple2!14627 (_1!7323 (_ BitVec 64)) (_2!7323 V!35067)) )
))
(declare-datatypes ((List!20527 0))(
  ( (Nil!20524) (Cons!20523 (h!21685 tuple2!14626) (t!29060 List!20527)) )
))
(declare-datatypes ((ListLongMap!13337 0))(
  ( (ListLongMap!13338 (toList!6684 List!20527)) )
))
(declare-fun lt!433546 () ListLongMap!13337)

(declare-fun lt!433548 () tuple2!14626)

(declare-fun lt!433547 () tuple2!14626)

(declare-fun +!2890 (ListLongMap!13337 tuple2!14626) ListLongMap!13337)

(assert (=> b!977931 (= (+!2890 (+!2890 lt!433546 lt!433548) lt!433547) (+!2890 (+!2890 lt!433546 lt!433547) lt!433548))))

(declare-fun lt!433545 () V!35067)

(assert (=> b!977931 (= lt!433547 (tuple2!14627 (select (arr!29425 _keys!1544) from!1932) lt!433545))))

(declare-fun minValue!1220 () V!35067)

(assert (=> b!977931 (= lt!433548 (tuple2!14627 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32455 0))(
  ( (Unit!32456) )
))
(declare-fun lt!433549 () Unit!32455)

(declare-fun addCommutativeForDiffKeys!552 (ListLongMap!13337 (_ BitVec 64) V!35067 (_ BitVec 64) V!35067) Unit!32455)

(assert (=> b!977931 (= lt!433549 (addCommutativeForDiffKeys!552 lt!433546 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29425 _keys!1544) from!1932) lt!433545))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15247 (ValueCell!10800 V!35067) V!35067)

(declare-fun dynLambda!1726 (Int (_ BitVec 64)) V!35067)

(assert (=> b!977931 (= lt!433545 (get!15247 (select (arr!29426 _values!1278) from!1932) (dynLambda!1726 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35067)

(declare-fun getCurrentListMapNoExtraKeys!3351 (array!61143 array!61145 (_ BitVec 32) (_ BitVec 32) V!35067 V!35067 (_ BitVec 32) Int) ListLongMap!13337)

(assert (=> b!977931 (= lt!433546 (+!2890 (getCurrentListMapNoExtraKeys!3351 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14627 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!977932 () Bool)

(declare-fun res!654571 () Bool)

(assert (=> b!977932 (=> (not res!654571) (not e!551395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61143 (_ BitVec 32)) Bool)

(assert (=> b!977932 (= res!654571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977933 () Bool)

(assert (=> b!977933 (= e!551399 tp_is_empty!22563)))

(declare-fun mapIsEmpty!35873 () Bool)

(assert (=> mapIsEmpty!35873 mapRes!35873))

(declare-fun b!977934 () Bool)

(assert (=> b!977934 (= e!551398 tp_is_empty!22563)))

(declare-fun b!977935 () Bool)

(declare-fun res!654568 () Bool)

(assert (=> b!977935 (=> (not res!654568) (not e!551395))))

(assert (=> b!977935 (= res!654568 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!977936 () Bool)

(declare-fun res!654570 () Bool)

(assert (=> b!977936 (=> (not res!654570) (not e!551395))))

(assert (=> b!977936 (= res!654570 (and (= (size!29906 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29905 _keys!1544) (size!29906 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(assert (= (and start!83788 res!654569) b!977936))

(assert (= (and b!977936 res!654570) b!977932))

(assert (= (and b!977932 res!654571) b!977930))

(assert (= (and b!977930 res!654573) b!977927))

(assert (= (and b!977927 res!654567) b!977928))

(assert (= (and b!977928 res!654572) b!977935))

(assert (= (and b!977935 res!654568) b!977931))

(assert (= (and b!977929 condMapEmpty!35873) mapIsEmpty!35873))

(assert (= (and b!977929 (not condMapEmpty!35873)) mapNonEmpty!35873))

(get-info :version)

(assert (= (and mapNonEmpty!35873 ((_ is ValueCellFull!10800) mapValue!35873)) b!977933))

(assert (= (and b!977929 ((_ is ValueCellFull!10800) mapDefault!35873)) b!977934))

(assert (= start!83788 b!977929))

(declare-fun b_lambda!14643 () Bool)

(assert (=> (not b_lambda!14643) (not b!977931)))

(declare-fun t!29058 () Bool)

(declare-fun tb!6383 () Bool)

(assert (=> (and start!83788 (= defaultEntry!1281 defaultEntry!1281) t!29058) tb!6383))

(declare-fun result!12747 () Bool)

(assert (=> tb!6383 (= result!12747 tp_is_empty!22563)))

(assert (=> b!977931 t!29058))

(declare-fun b_and!31247 () Bool)

(assert (= b_and!31245 (and (=> t!29058 result!12747) b_and!31247)))

(declare-fun m!905135 () Bool)

(assert (=> mapNonEmpty!35873 m!905135))

(declare-fun m!905137 () Bool)

(assert (=> b!977930 m!905137))

(declare-fun m!905139 () Bool)

(assert (=> start!83788 m!905139))

(declare-fun m!905141 () Bool)

(assert (=> start!83788 m!905141))

(declare-fun m!905143 () Bool)

(assert (=> start!83788 m!905143))

(declare-fun m!905145 () Bool)

(assert (=> b!977932 m!905145))

(declare-fun m!905147 () Bool)

(assert (=> b!977931 m!905147))

(declare-fun m!905149 () Bool)

(assert (=> b!977931 m!905149))

(declare-fun m!905151 () Bool)

(assert (=> b!977931 m!905151))

(assert (=> b!977931 m!905149))

(declare-fun m!905153 () Bool)

(assert (=> b!977931 m!905153))

(declare-fun m!905155 () Bool)

(assert (=> b!977931 m!905155))

(declare-fun m!905157 () Bool)

(assert (=> b!977931 m!905157))

(declare-fun m!905159 () Bool)

(assert (=> b!977931 m!905159))

(assert (=> b!977931 m!905157))

(assert (=> b!977931 m!905155))

(declare-fun m!905161 () Bool)

(assert (=> b!977931 m!905161))

(assert (=> b!977931 m!905147))

(declare-fun m!905163 () Bool)

(assert (=> b!977931 m!905163))

(declare-fun m!905165 () Bool)

(assert (=> b!977931 m!905165))

(assert (=> b!977931 m!905151))

(assert (=> b!977931 m!905165))

(declare-fun m!905167 () Bool)

(assert (=> b!977931 m!905167))

(assert (=> b!977928 m!905149))

(assert (=> b!977928 m!905149))

(declare-fun m!905169 () Bool)

(assert (=> b!977928 m!905169))

(check-sat (not b!977932) (not b!977931) (not mapNonEmpty!35873) (not start!83788) (not b_next!19569) (not b_lambda!14643) b_and!31247 (not b!977930) (not b!977928) tp_is_empty!22563)
(check-sat b_and!31247 (not b_next!19569))
