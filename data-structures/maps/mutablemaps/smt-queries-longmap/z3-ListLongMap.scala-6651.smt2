; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83908 () Bool)

(assert start!83908)

(declare-fun b_free!19689 () Bool)

(declare-fun b_next!19689 () Bool)

(assert (=> start!83908 (= b_free!19689 (not b_next!19689))))

(declare-fun tp!68509 () Bool)

(declare-fun b_and!31485 () Bool)

(assert (=> start!83908 (= tp!68509 b_and!31485)))

(declare-fun b!979951 () Bool)

(declare-fun res!655935 () Bool)

(declare-fun e!552400 () Bool)

(assert (=> b!979951 (=> (not res!655935) (not e!552400))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!979951 (= res!655935 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!979952 () Bool)

(declare-fun e!552401 () Bool)

(declare-fun tp_is_empty!22683 () Bool)

(assert (=> b!979952 (= e!552401 tp_is_empty!22683)))

(declare-fun mapIsEmpty!36053 () Bool)

(declare-fun mapRes!36053 () Bool)

(assert (=> mapIsEmpty!36053 mapRes!36053))

(declare-fun b!979953 () Bool)

(declare-fun e!552402 () Bool)

(assert (=> b!979953 (= e!552402 tp_is_empty!22683)))

(declare-fun res!655938 () Bool)

(assert (=> start!83908 (=> (not res!655938) (not e!552400))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83908 (= res!655938 (validMask!0 mask!1948))))

(assert (=> start!83908 e!552400))

(assert (=> start!83908 true))

(assert (=> start!83908 tp_is_empty!22683))

(declare-datatypes ((V!35227 0))(
  ( (V!35228 (val!11392 Int)) )
))
(declare-datatypes ((ValueCell!10860 0))(
  ( (ValueCellFull!10860 (v!13954 V!35227)) (EmptyCell!10860) )
))
(declare-datatypes ((array!61375 0))(
  ( (array!61376 (arr!29541 (Array (_ BitVec 32) ValueCell!10860)) (size!30021 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61375)

(declare-fun e!552404 () Bool)

(declare-fun array_inv!22725 (array!61375) Bool)

(assert (=> start!83908 (and (array_inv!22725 _values!1278) e!552404)))

(assert (=> start!83908 tp!68509))

(declare-datatypes ((array!61377 0))(
  ( (array!61378 (arr!29542 (Array (_ BitVec 32) (_ BitVec 64))) (size!30022 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61377)

(declare-fun array_inv!22726 (array!61377) Bool)

(assert (=> start!83908 (array_inv!22726 _keys!1544)))

(declare-fun b!979954 () Bool)

(declare-fun res!655931 () Bool)

(assert (=> b!979954 (=> (not res!655931) (not e!552400))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979954 (= res!655931 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30022 _keys!1544))))))

(declare-fun b!979955 () Bool)

(declare-fun e!552399 () Bool)

(assert (=> b!979955 (= e!552400 (not e!552399))))

(declare-fun res!655932 () Bool)

(assert (=> b!979955 (=> res!655932 e!552399)))

(assert (=> b!979955 (= res!655932 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29542 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14716 0))(
  ( (tuple2!14717 (_1!7368 (_ BitVec 64)) (_2!7368 V!35227)) )
))
(declare-fun lt!434966 () tuple2!14716)

(declare-datatypes ((List!20607 0))(
  ( (Nil!20604) (Cons!20603 (h!21765 tuple2!14716) (t!29260 List!20607)) )
))
(declare-datatypes ((ListLongMap!13427 0))(
  ( (ListLongMap!13428 (toList!6729 List!20607)) )
))
(declare-fun lt!434974 () ListLongMap!13427)

(declare-fun lt!434970 () ListLongMap!13427)

(declare-fun lt!434971 () tuple2!14716)

(declare-fun +!2935 (ListLongMap!13427 tuple2!14716) ListLongMap!13427)

(assert (=> b!979955 (= (+!2935 lt!434974 lt!434971) (+!2935 lt!434970 lt!434966))))

(declare-fun lt!434965 () ListLongMap!13427)

(assert (=> b!979955 (= lt!434970 (+!2935 lt!434965 lt!434971))))

(declare-fun lt!434973 () V!35227)

(assert (=> b!979955 (= lt!434971 (tuple2!14717 (select (arr!29542 _keys!1544) from!1932) lt!434973))))

(assert (=> b!979955 (= lt!434974 (+!2935 lt!434965 lt!434966))))

(declare-fun minValue!1220 () V!35227)

(assert (=> b!979955 (= lt!434966 (tuple2!14717 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32545 0))(
  ( (Unit!32546) )
))
(declare-fun lt!434969 () Unit!32545)

(declare-fun addCommutativeForDiffKeys!597 (ListLongMap!13427 (_ BitVec 64) V!35227 (_ BitVec 64) V!35227) Unit!32545)

(assert (=> b!979955 (= lt!434969 (addCommutativeForDiffKeys!597 lt!434965 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29542 _keys!1544) from!1932) lt!434973))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15330 (ValueCell!10860 V!35227) V!35227)

(declare-fun dynLambda!1769 (Int (_ BitVec 64)) V!35227)

(assert (=> b!979955 (= lt!434973 (get!15330 (select (arr!29541 _values!1278) from!1932) (dynLambda!1769 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434972 () ListLongMap!13427)

(declare-fun lt!434968 () tuple2!14716)

(assert (=> b!979955 (= lt!434965 (+!2935 lt!434972 lt!434968))))

(declare-fun zeroValue!1220 () V!35227)

(assert (=> b!979955 (= lt!434968 (tuple2!14717 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3394 (array!61377 array!61375 (_ BitVec 32) (_ BitVec 32) V!35227 V!35227 (_ BitVec 32) Int) ListLongMap!13427)

(assert (=> b!979955 (= lt!434972 (getCurrentListMapNoExtraKeys!3394 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979956 () Bool)

(assert (=> b!979956 (= e!552399 true)))

(assert (=> b!979956 (= lt!434970 (+!2935 (+!2935 lt!434972 lt!434971) lt!434968))))

(declare-fun lt!434967 () Unit!32545)

(assert (=> b!979956 (= lt!434967 (addCommutativeForDiffKeys!597 lt!434972 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29542 _keys!1544) from!1932) lt!434973))))

(declare-fun b!979957 () Bool)

(assert (=> b!979957 (= e!552404 (and e!552402 mapRes!36053))))

(declare-fun condMapEmpty!36053 () Bool)

(declare-fun mapDefault!36053 () ValueCell!10860)

(assert (=> b!979957 (= condMapEmpty!36053 (= (arr!29541 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10860)) mapDefault!36053)))))

(declare-fun b!979958 () Bool)

(declare-fun res!655933 () Bool)

(assert (=> b!979958 (=> (not res!655933) (not e!552400))))

(declare-datatypes ((List!20608 0))(
  ( (Nil!20605) (Cons!20604 (h!21766 (_ BitVec 64)) (t!29261 List!20608)) )
))
(declare-fun arrayNoDuplicates!0 (array!61377 (_ BitVec 32) List!20608) Bool)

(assert (=> b!979958 (= res!655933 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20605))))

(declare-fun mapNonEmpty!36053 () Bool)

(declare-fun tp!68510 () Bool)

(assert (=> mapNonEmpty!36053 (= mapRes!36053 (and tp!68510 e!552401))))

(declare-fun mapKey!36053 () (_ BitVec 32))

(declare-fun mapRest!36053 () (Array (_ BitVec 32) ValueCell!10860))

(declare-fun mapValue!36053 () ValueCell!10860)

(assert (=> mapNonEmpty!36053 (= (arr!29541 _values!1278) (store mapRest!36053 mapKey!36053 mapValue!36053))))

(declare-fun b!979959 () Bool)

(declare-fun res!655937 () Bool)

(assert (=> b!979959 (=> (not res!655937) (not e!552400))))

(assert (=> b!979959 (= res!655937 (and (= (size!30021 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30022 _keys!1544) (size!30021 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979960 () Bool)

(declare-fun res!655934 () Bool)

(assert (=> b!979960 (=> (not res!655934) (not e!552400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979960 (= res!655934 (validKeyInArray!0 (select (arr!29542 _keys!1544) from!1932)))))

(declare-fun b!979961 () Bool)

(declare-fun res!655936 () Bool)

(assert (=> b!979961 (=> (not res!655936) (not e!552400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61377 (_ BitVec 32)) Bool)

(assert (=> b!979961 (= res!655936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(assert (= (and start!83908 res!655938) b!979959))

(assert (= (and b!979959 res!655937) b!979961))

(assert (= (and b!979961 res!655936) b!979958))

(assert (= (and b!979958 res!655933) b!979954))

(assert (= (and b!979954 res!655931) b!979960))

(assert (= (and b!979960 res!655934) b!979951))

(assert (= (and b!979951 res!655935) b!979955))

(assert (= (and b!979955 (not res!655932)) b!979956))

(assert (= (and b!979957 condMapEmpty!36053) mapIsEmpty!36053))

(assert (= (and b!979957 (not condMapEmpty!36053)) mapNonEmpty!36053))

(get-info :version)

(assert (= (and mapNonEmpty!36053 ((_ is ValueCellFull!10860) mapValue!36053)) b!979952))

(assert (= (and b!979957 ((_ is ValueCellFull!10860) mapDefault!36053)) b!979953))

(assert (= start!83908 b!979957))

(declare-fun b_lambda!14763 () Bool)

(assert (=> (not b_lambda!14763) (not b!979955)))

(declare-fun t!29259 () Bool)

(declare-fun tb!6503 () Bool)

(assert (=> (and start!83908 (= defaultEntry!1281 defaultEntry!1281) t!29259) tb!6503))

(declare-fun result!12987 () Bool)

(assert (=> tb!6503 (= result!12987 tp_is_empty!22683)))

(assert (=> b!979955 t!29259))

(declare-fun b_and!31487 () Bool)

(assert (= b_and!31485 (and (=> t!29259 result!12987) b_and!31487)))

(declare-fun m!907499 () Bool)

(assert (=> mapNonEmpty!36053 m!907499))

(declare-fun m!907501 () Bool)

(assert (=> b!979955 m!907501))

(declare-fun m!907503 () Bool)

(assert (=> b!979955 m!907503))

(assert (=> b!979955 m!907503))

(declare-fun m!907505 () Bool)

(assert (=> b!979955 m!907505))

(declare-fun m!907507 () Bool)

(assert (=> b!979955 m!907507))

(declare-fun m!907509 () Bool)

(assert (=> b!979955 m!907509))

(declare-fun m!907511 () Bool)

(assert (=> b!979955 m!907511))

(declare-fun m!907513 () Bool)

(assert (=> b!979955 m!907513))

(declare-fun m!907515 () Bool)

(assert (=> b!979955 m!907515))

(declare-fun m!907517 () Bool)

(assert (=> b!979955 m!907517))

(declare-fun m!907519 () Bool)

(assert (=> b!979955 m!907519))

(assert (=> b!979955 m!907515))

(assert (=> b!979955 m!907519))

(declare-fun m!907521 () Bool)

(assert (=> b!979955 m!907521))

(declare-fun m!907523 () Bool)

(assert (=> b!979961 m!907523))

(declare-fun m!907525 () Bool)

(assert (=> b!979958 m!907525))

(declare-fun m!907527 () Bool)

(assert (=> start!83908 m!907527))

(declare-fun m!907529 () Bool)

(assert (=> start!83908 m!907529))

(declare-fun m!907531 () Bool)

(assert (=> start!83908 m!907531))

(declare-fun m!907533 () Bool)

(assert (=> b!979956 m!907533))

(assert (=> b!979956 m!907533))

(declare-fun m!907535 () Bool)

(assert (=> b!979956 m!907535))

(assert (=> b!979956 m!907503))

(assert (=> b!979956 m!907503))

(declare-fun m!907537 () Bool)

(assert (=> b!979956 m!907537))

(assert (=> b!979960 m!907503))

(assert (=> b!979960 m!907503))

(declare-fun m!907539 () Bool)

(assert (=> b!979960 m!907539))

(check-sat (not start!83908) (not b!979955) (not b_next!19689) (not b!979958) tp_is_empty!22683 (not mapNonEmpty!36053) (not b!979956) b_and!31487 (not b_lambda!14763) (not b!979961) (not b!979960))
(check-sat b_and!31487 (not b_next!19689))
