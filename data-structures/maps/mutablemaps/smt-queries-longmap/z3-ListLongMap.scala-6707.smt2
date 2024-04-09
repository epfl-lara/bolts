; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84244 () Bool)

(assert start!84244)

(declare-fun b_free!19917 () Bool)

(declare-fun b_next!19917 () Bool)

(assert (=> start!84244 (= b_free!19917 (not b_next!19917))))

(declare-fun tp!69355 () Bool)

(declare-fun b_and!31929 () Bool)

(assert (=> start!84244 (= tp!69355 b_and!31929)))

(declare-fun b!984937 () Bool)

(declare-fun res!659193 () Bool)

(declare-fun e!555248 () Bool)

(assert (=> b!984937 (=> (not res!659193) (not e!555248))))

(declare-datatypes ((array!62005 0))(
  ( (array!62006 (arr!29856 (Array (_ BitVec 32) (_ BitVec 64))) (size!30336 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62005)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984937 (= res!659193 (validKeyInArray!0 (select (arr!29856 _keys!1544) from!1932)))))

(declare-fun b!984938 () Bool)

(declare-fun e!555246 () Bool)

(declare-fun e!555243 () Bool)

(declare-fun mapRes!36557 () Bool)

(assert (=> b!984938 (= e!555246 (and e!555243 mapRes!36557))))

(declare-fun condMapEmpty!36557 () Bool)

(declare-datatypes ((V!35675 0))(
  ( (V!35676 (val!11560 Int)) )
))
(declare-datatypes ((ValueCell!11028 0))(
  ( (ValueCellFull!11028 (v!14122 V!35675)) (EmptyCell!11028) )
))
(declare-datatypes ((array!62007 0))(
  ( (array!62008 (arr!29857 (Array (_ BitVec 32) ValueCell!11028)) (size!30337 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62007)

(declare-fun mapDefault!36557 () ValueCell!11028)

(assert (=> b!984938 (= condMapEmpty!36557 (= (arr!29857 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11028)) mapDefault!36557)))))

(declare-fun b!984939 () Bool)

(declare-fun res!659189 () Bool)

(assert (=> b!984939 (=> (not res!659189) (not e!555248))))

(assert (=> b!984939 (= res!659189 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30336 _keys!1544))))))

(declare-fun b!984940 () Bool)

(declare-fun e!555247 () Bool)

(assert (=> b!984940 (= e!555247 (not true))))

(declare-datatypes ((tuple2!14890 0))(
  ( (tuple2!14891 (_1!7455 (_ BitVec 64)) (_2!7455 V!35675)) )
))
(declare-datatypes ((List!20809 0))(
  ( (Nil!20806) (Cons!20805 (h!21967 tuple2!14890) (t!29678 List!20809)) )
))
(declare-datatypes ((ListLongMap!13601 0))(
  ( (ListLongMap!13602 (toList!6816 List!20809)) )
))
(declare-fun lt!437037 () ListLongMap!13601)

(declare-fun lt!437040 () tuple2!14890)

(declare-fun lt!437038 () tuple2!14890)

(declare-fun +!3006 (ListLongMap!13601 tuple2!14890) ListLongMap!13601)

(assert (=> b!984940 (= (+!3006 (+!3006 lt!437037 lt!437040) lt!437038) (+!3006 (+!3006 lt!437037 lt!437038) lt!437040))))

(declare-fun lt!437041 () V!35675)

(assert (=> b!984940 (= lt!437038 (tuple2!14891 (select (arr!29856 _keys!1544) from!1932) lt!437041))))

(declare-fun minValue!1220 () V!35675)

(assert (=> b!984940 (= lt!437040 (tuple2!14891 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32687 0))(
  ( (Unit!32688) )
))
(declare-fun lt!437039 () Unit!32687)

(declare-fun addCommutativeForDiffKeys!668 (ListLongMap!13601 (_ BitVec 64) V!35675 (_ BitVec 64) V!35675) Unit!32687)

(assert (=> b!984940 (= lt!437039 (addCommutativeForDiffKeys!668 lt!437037 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29856 _keys!1544) from!1932) lt!437041))))

(declare-fun b!984941 () Bool)

(declare-fun res!659190 () Bool)

(assert (=> b!984941 (=> (not res!659190) (not e!555248))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984941 (= res!659190 (and (= (size!30337 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30336 _keys!1544) (size!30337 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984942 () Bool)

(declare-fun tp_is_empty!23019 () Bool)

(assert (=> b!984942 (= e!555243 tp_is_empty!23019)))

(declare-fun b!984943 () Bool)

(declare-fun e!555245 () Bool)

(assert (=> b!984943 (= e!555245 tp_is_empty!23019)))

(declare-fun b!984944 () Bool)

(declare-fun res!659196 () Bool)

(assert (=> b!984944 (=> (not res!659196) (not e!555248))))

(declare-datatypes ((List!20810 0))(
  ( (Nil!20807) (Cons!20806 (h!21968 (_ BitVec 64)) (t!29679 List!20810)) )
))
(declare-fun arrayNoDuplicates!0 (array!62005 (_ BitVec 32) List!20810) Bool)

(assert (=> b!984944 (= res!659196 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20807))))

(declare-fun b!984945 () Bool)

(declare-fun res!659195 () Bool)

(assert (=> b!984945 (=> (not res!659195) (not e!555248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62005 (_ BitVec 32)) Bool)

(assert (=> b!984945 (= res!659195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36557 () Bool)

(assert (=> mapIsEmpty!36557 mapRes!36557))

(declare-fun b!984947 () Bool)

(declare-fun res!659191 () Bool)

(assert (=> b!984947 (=> (not res!659191) (not e!555248))))

(assert (=> b!984947 (= res!659191 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36557 () Bool)

(declare-fun tp!69356 () Bool)

(assert (=> mapNonEmpty!36557 (= mapRes!36557 (and tp!69356 e!555245))))

(declare-fun mapKey!36557 () (_ BitVec 32))

(declare-fun mapValue!36557 () ValueCell!11028)

(declare-fun mapRest!36557 () (Array (_ BitVec 32) ValueCell!11028))

(assert (=> mapNonEmpty!36557 (= (arr!29857 _values!1278) (store mapRest!36557 mapKey!36557 mapValue!36557))))

(declare-fun res!659194 () Bool)

(assert (=> start!84244 (=> (not res!659194) (not e!555248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84244 (= res!659194 (validMask!0 mask!1948))))

(assert (=> start!84244 e!555248))

(assert (=> start!84244 true))

(assert (=> start!84244 tp_is_empty!23019))

(declare-fun array_inv!22945 (array!62007) Bool)

(assert (=> start!84244 (and (array_inv!22945 _values!1278) e!555246)))

(assert (=> start!84244 tp!69355))

(declare-fun array_inv!22946 (array!62005) Bool)

(assert (=> start!84244 (array_inv!22946 _keys!1544)))

(declare-fun b!984946 () Bool)

(assert (=> b!984946 (= e!555248 e!555247)))

(declare-fun res!659192 () Bool)

(assert (=> b!984946 (=> (not res!659192) (not e!555247))))

(assert (=> b!984946 (= res!659192 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29856 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15515 (ValueCell!11028 V!35675) V!35675)

(declare-fun dynLambda!1842 (Int (_ BitVec 64)) V!35675)

(assert (=> b!984946 (= lt!437041 (get!15515 (select (arr!29857 _values!1278) from!1932) (dynLambda!1842 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35675)

(declare-fun getCurrentListMapNoExtraKeys!3471 (array!62005 array!62007 (_ BitVec 32) (_ BitVec 32) V!35675 V!35675 (_ BitVec 32) Int) ListLongMap!13601)

(assert (=> b!984946 (= lt!437037 (getCurrentListMapNoExtraKeys!3471 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(assert (= (and start!84244 res!659194) b!984941))

(assert (= (and b!984941 res!659190) b!984945))

(assert (= (and b!984945 res!659195) b!984944))

(assert (= (and b!984944 res!659196) b!984939))

(assert (= (and b!984939 res!659189) b!984937))

(assert (= (and b!984937 res!659193) b!984947))

(assert (= (and b!984947 res!659191) b!984946))

(assert (= (and b!984946 res!659192) b!984940))

(assert (= (and b!984938 condMapEmpty!36557) mapIsEmpty!36557))

(assert (= (and b!984938 (not condMapEmpty!36557)) mapNonEmpty!36557))

(get-info :version)

(assert (= (and mapNonEmpty!36557 ((_ is ValueCellFull!11028) mapValue!36557)) b!984943))

(assert (= (and b!984938 ((_ is ValueCellFull!11028) mapDefault!36557)) b!984942))

(assert (= start!84244 b!984938))

(declare-fun b_lambda!14979 () Bool)

(assert (=> (not b_lambda!14979) (not b!984946)))

(declare-fun t!29677 () Bool)

(declare-fun tb!6719 () Bool)

(assert (=> (and start!84244 (= defaultEntry!1281 defaultEntry!1281) t!29677) tb!6719))

(declare-fun result!13419 () Bool)

(assert (=> tb!6719 (= result!13419 tp_is_empty!23019)))

(assert (=> b!984946 t!29677))

(declare-fun b_and!31931 () Bool)

(assert (= b_and!31929 (and (=> t!29677 result!13419) b_and!31931)))

(declare-fun m!912111 () Bool)

(assert (=> b!984940 m!912111))

(declare-fun m!912113 () Bool)

(assert (=> b!984940 m!912113))

(declare-fun m!912115 () Bool)

(assert (=> b!984940 m!912115))

(assert (=> b!984940 m!912111))

(declare-fun m!912117 () Bool)

(assert (=> b!984940 m!912117))

(declare-fun m!912119 () Bool)

(assert (=> b!984940 m!912119))

(declare-fun m!912121 () Bool)

(assert (=> b!984940 m!912121))

(assert (=> b!984940 m!912113))

(assert (=> b!984940 m!912119))

(declare-fun m!912123 () Bool)

(assert (=> start!84244 m!912123))

(declare-fun m!912125 () Bool)

(assert (=> start!84244 m!912125))

(declare-fun m!912127 () Bool)

(assert (=> start!84244 m!912127))

(declare-fun m!912129 () Bool)

(assert (=> mapNonEmpty!36557 m!912129))

(assert (=> b!984946 m!912111))

(declare-fun m!912131 () Bool)

(assert (=> b!984946 m!912131))

(declare-fun m!912133 () Bool)

(assert (=> b!984946 m!912133))

(declare-fun m!912135 () Bool)

(assert (=> b!984946 m!912135))

(assert (=> b!984946 m!912131))

(assert (=> b!984946 m!912135))

(declare-fun m!912137 () Bool)

(assert (=> b!984946 m!912137))

(assert (=> b!984937 m!912111))

(assert (=> b!984937 m!912111))

(declare-fun m!912139 () Bool)

(assert (=> b!984937 m!912139))

(declare-fun m!912141 () Bool)

(assert (=> b!984944 m!912141))

(declare-fun m!912143 () Bool)

(assert (=> b!984945 m!912143))

(check-sat (not b_lambda!14979) (not start!84244) (not b!984944) (not b_next!19917) b_and!31931 (not b!984945) (not mapNonEmpty!36557) tp_is_empty!23019 (not b!984940) (not b!984937) (not b!984946))
(check-sat b_and!31931 (not b_next!19917))
