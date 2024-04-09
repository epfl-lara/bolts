; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112496 () Bool)

(assert start!112496)

(declare-fun b_free!30855 () Bool)

(declare-fun b_next!30855 () Bool)

(assert (=> start!112496 (= b_free!30855 (not b_next!30855))))

(declare-fun tp!108203 () Bool)

(declare-fun b_and!49721 () Bool)

(assert (=> start!112496 (= tp!108203 b_and!49721)))

(declare-fun b!1333365 () Bool)

(declare-fun res!884932 () Bool)

(declare-fun e!759594 () Bool)

(assert (=> b!1333365 (=> (not res!884932) (not e!759594))))

(declare-datatypes ((V!54123 0))(
  ( (V!54124 (val!18457 Int)) )
))
(declare-datatypes ((ValueCell!17484 0))(
  ( (ValueCellFull!17484 (v!21092 V!54123)) (EmptyCell!17484) )
))
(declare-datatypes ((array!90377 0))(
  ( (array!90378 (arr!43650 (Array (_ BitVec 32) ValueCell!17484)) (size!44201 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90377)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90379 0))(
  ( (array!90380 (arr!43651 (Array (_ BitVec 32) (_ BitVec 64))) (size!44202 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90379)

(assert (=> b!1333365 (= res!884932 (and (= (size!44201 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44202 _keys!1590) (size!44201 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333366 () Bool)

(declare-fun e!759591 () Bool)

(assert (=> b!1333366 (= e!759591 (not true))))

(declare-datatypes ((tuple2!23944 0))(
  ( (tuple2!23945 (_1!11982 (_ BitVec 64)) (_2!11982 V!54123)) )
))
(declare-datatypes ((List!31121 0))(
  ( (Nil!31118) (Cons!31117 (h!32326 tuple2!23944) (t!45342 List!31121)) )
))
(declare-datatypes ((ListLongMap!21613 0))(
  ( (ListLongMap!21614 (toList!10822 List!31121)) )
))
(declare-fun lt!592070 () ListLongMap!21613)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8922 (ListLongMap!21613 (_ BitVec 64)) Bool)

(assert (=> b!1333366 (contains!8922 lt!592070 k0!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!592068 () V!54123)

(declare-datatypes ((Unit!43793 0))(
  ( (Unit!43794) )
))
(declare-fun lt!592069 () Unit!43793)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!288 ((_ BitVec 64) (_ BitVec 64) V!54123 ListLongMap!21613) Unit!43793)

(assert (=> b!1333366 (= lt!592069 (lemmaInListMapAfterAddingDiffThenInBefore!288 k0!1153 (select (arr!43651 _keys!1590) from!1980) lt!592068 lt!592070))))

(declare-fun mapNonEmpty!56821 () Bool)

(declare-fun mapRes!56821 () Bool)

(declare-fun tp!108202 () Bool)

(declare-fun e!759592 () Bool)

(assert (=> mapNonEmpty!56821 (= mapRes!56821 (and tp!108202 e!759592))))

(declare-fun mapRest!56821 () (Array (_ BitVec 32) ValueCell!17484))

(declare-fun mapKey!56821 () (_ BitVec 32))

(declare-fun mapValue!56821 () ValueCell!17484)

(assert (=> mapNonEmpty!56821 (= (arr!43650 _values!1320) (store mapRest!56821 mapKey!56821 mapValue!56821))))

(declare-fun b!1333367 () Bool)

(declare-fun res!884942 () Bool)

(assert (=> b!1333367 (=> (not res!884942) (not e!759594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333367 (= res!884942 (validKeyInArray!0 (select (arr!43651 _keys!1590) from!1980)))))

(declare-fun b!1333368 () Bool)

(declare-fun tp_is_empty!36765 () Bool)

(assert (=> b!1333368 (= e!759592 tp_is_empty!36765)))

(declare-fun b!1333369 () Bool)

(declare-fun res!884934 () Bool)

(assert (=> b!1333369 (=> (not res!884934) (not e!759594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90379 (_ BitVec 32)) Bool)

(assert (=> b!1333369 (= res!884934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!884939 () Bool)

(assert (=> start!112496 (=> (not res!884939) (not e!759594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112496 (= res!884939 (validMask!0 mask!1998))))

(assert (=> start!112496 e!759594))

(declare-fun e!759595 () Bool)

(declare-fun array_inv!32865 (array!90377) Bool)

(assert (=> start!112496 (and (array_inv!32865 _values!1320) e!759595)))

(assert (=> start!112496 true))

(declare-fun array_inv!32866 (array!90379) Bool)

(assert (=> start!112496 (array_inv!32866 _keys!1590)))

(assert (=> start!112496 tp!108203))

(assert (=> start!112496 tp_is_empty!36765))

(declare-fun b!1333370 () Bool)

(declare-fun e!759593 () Bool)

(assert (=> b!1333370 (= e!759593 tp_is_empty!36765)))

(declare-fun b!1333371 () Bool)

(declare-fun res!884937 () Bool)

(assert (=> b!1333371 (=> (not res!884937) (not e!759594))))

(declare-datatypes ((List!31122 0))(
  ( (Nil!31119) (Cons!31118 (h!32327 (_ BitVec 64)) (t!45343 List!31122)) )
))
(declare-fun arrayNoDuplicates!0 (array!90379 (_ BitVec 32) List!31122) Bool)

(assert (=> b!1333371 (= res!884937 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31119))))

(declare-fun b!1333372 () Bool)

(assert (=> b!1333372 (= e!759595 (and e!759593 mapRes!56821))))

(declare-fun condMapEmpty!56821 () Bool)

(declare-fun mapDefault!56821 () ValueCell!17484)

(assert (=> b!1333372 (= condMapEmpty!56821 (= (arr!43650 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17484)) mapDefault!56821)))))

(declare-fun b!1333373 () Bool)

(declare-fun res!884933 () Bool)

(assert (=> b!1333373 (=> (not res!884933) (not e!759594))))

(assert (=> b!1333373 (= res!884933 (not (= (select (arr!43651 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1333374 () Bool)

(declare-fun res!884936 () Bool)

(assert (=> b!1333374 (=> (not res!884936) (not e!759594))))

(assert (=> b!1333374 (= res!884936 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333375 () Bool)

(declare-fun res!884938 () Bool)

(assert (=> b!1333375 (=> (not res!884938) (not e!759591))))

(assert (=> b!1333375 (= res!884938 (not (= k0!1153 (select (arr!43651 _keys!1590) from!1980))))))

(declare-fun b!1333376 () Bool)

(declare-fun res!884941 () Bool)

(assert (=> b!1333376 (=> (not res!884941) (not e!759594))))

(assert (=> b!1333376 (= res!884941 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44202 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333377 () Bool)

(assert (=> b!1333377 (= e!759594 e!759591)))

(declare-fun res!884935 () Bool)

(assert (=> b!1333377 (=> (not res!884935) (not e!759591))))

(declare-fun +!4688 (ListLongMap!21613 tuple2!23944) ListLongMap!21613)

(assert (=> b!1333377 (= res!884935 (contains!8922 (+!4688 lt!592070 (tuple2!23945 (select (arr!43651 _keys!1590) from!1980) lt!592068)) k0!1153))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54123)

(declare-fun zeroValue!1262 () V!54123)

(declare-fun getCurrentListMapNoExtraKeys!6406 (array!90379 array!90377 (_ BitVec 32) (_ BitVec 32) V!54123 V!54123 (_ BitVec 32) Int) ListLongMap!21613)

(assert (=> b!1333377 (= lt!592070 (getCurrentListMapNoExtraKeys!6406 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22058 (ValueCell!17484 V!54123) V!54123)

(declare-fun dynLambda!3725 (Int (_ BitVec 64)) V!54123)

(assert (=> b!1333377 (= lt!592068 (get!22058 (select (arr!43650 _values!1320) from!1980) (dynLambda!3725 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!56821 () Bool)

(assert (=> mapIsEmpty!56821 mapRes!56821))

(declare-fun b!1333378 () Bool)

(declare-fun res!884940 () Bool)

(assert (=> b!1333378 (=> (not res!884940) (not e!759594))))

(declare-fun getCurrentListMap!5742 (array!90379 array!90377 (_ BitVec 32) (_ BitVec 32) V!54123 V!54123 (_ BitVec 32) Int) ListLongMap!21613)

(assert (=> b!1333378 (= res!884940 (contains!8922 (getCurrentListMap!5742 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(assert (= (and start!112496 res!884939) b!1333365))

(assert (= (and b!1333365 res!884932) b!1333369))

(assert (= (and b!1333369 res!884934) b!1333371))

(assert (= (and b!1333371 res!884937) b!1333376))

(assert (= (and b!1333376 res!884941) b!1333378))

(assert (= (and b!1333378 res!884940) b!1333373))

(assert (= (and b!1333373 res!884933) b!1333367))

(assert (= (and b!1333367 res!884942) b!1333374))

(assert (= (and b!1333374 res!884936) b!1333377))

(assert (= (and b!1333377 res!884935) b!1333375))

(assert (= (and b!1333375 res!884938) b!1333366))

(assert (= (and b!1333372 condMapEmpty!56821) mapIsEmpty!56821))

(assert (= (and b!1333372 (not condMapEmpty!56821)) mapNonEmpty!56821))

(get-info :version)

(assert (= (and mapNonEmpty!56821 ((_ is ValueCellFull!17484) mapValue!56821)) b!1333368))

(assert (= (and b!1333372 ((_ is ValueCellFull!17484) mapDefault!56821)) b!1333370))

(assert (= start!112496 b!1333372))

(declare-fun b_lambda!24071 () Bool)

(assert (=> (not b_lambda!24071) (not b!1333377)))

(declare-fun t!45341 () Bool)

(declare-fun tb!12025 () Bool)

(assert (=> (and start!112496 (= defaultEntry!1323 defaultEntry!1323) t!45341) tb!12025))

(declare-fun result!25113 () Bool)

(assert (=> tb!12025 (= result!25113 tp_is_empty!36765)))

(assert (=> b!1333377 t!45341))

(declare-fun b_and!49723 () Bool)

(assert (= b_and!49721 (and (=> t!45341 result!25113) b_and!49723)))

(declare-fun m!1221951 () Bool)

(assert (=> mapNonEmpty!56821 m!1221951))

(declare-fun m!1221953 () Bool)

(assert (=> b!1333367 m!1221953))

(assert (=> b!1333367 m!1221953))

(declare-fun m!1221955 () Bool)

(assert (=> b!1333367 m!1221955))

(assert (=> b!1333373 m!1221953))

(assert (=> b!1333375 m!1221953))

(declare-fun m!1221957 () Bool)

(assert (=> start!112496 m!1221957))

(declare-fun m!1221959 () Bool)

(assert (=> start!112496 m!1221959))

(declare-fun m!1221961 () Bool)

(assert (=> start!112496 m!1221961))

(declare-fun m!1221963 () Bool)

(assert (=> b!1333377 m!1221963))

(declare-fun m!1221965 () Bool)

(assert (=> b!1333377 m!1221965))

(assert (=> b!1333377 m!1221963))

(declare-fun m!1221967 () Bool)

(assert (=> b!1333377 m!1221967))

(declare-fun m!1221969 () Bool)

(assert (=> b!1333377 m!1221969))

(declare-fun m!1221971 () Bool)

(assert (=> b!1333377 m!1221971))

(declare-fun m!1221973 () Bool)

(assert (=> b!1333377 m!1221973))

(assert (=> b!1333377 m!1221969))

(assert (=> b!1333377 m!1221965))

(assert (=> b!1333377 m!1221953))

(declare-fun m!1221975 () Bool)

(assert (=> b!1333378 m!1221975))

(assert (=> b!1333378 m!1221975))

(declare-fun m!1221977 () Bool)

(assert (=> b!1333378 m!1221977))

(declare-fun m!1221979 () Bool)

(assert (=> b!1333366 m!1221979))

(assert (=> b!1333366 m!1221953))

(assert (=> b!1333366 m!1221953))

(declare-fun m!1221981 () Bool)

(assert (=> b!1333366 m!1221981))

(declare-fun m!1221983 () Bool)

(assert (=> b!1333369 m!1221983))

(declare-fun m!1221985 () Bool)

(assert (=> b!1333371 m!1221985))

(check-sat (not start!112496) (not b!1333367) (not b!1333369) (not mapNonEmpty!56821) tp_is_empty!36765 (not b!1333366) (not b!1333378) (not b_lambda!24071) b_and!49723 (not b!1333377) (not b_next!30855) (not b!1333371))
(check-sat b_and!49723 (not b_next!30855))
