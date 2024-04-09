; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111448 () Bool)

(assert start!111448)

(declare-fun b_free!30069 () Bool)

(declare-fun b_next!30069 () Bool)

(assert (=> start!111448 (= b_free!30069 (not b_next!30069))))

(declare-fun tp!105683 () Bool)

(declare-fun b_and!48307 () Bool)

(assert (=> start!111448 (= tp!105683 b_and!48307)))

(declare-fun b!1318324 () Bool)

(declare-fun res!875027 () Bool)

(declare-fun e!752330 () Bool)

(assert (=> b!1318324 (=> (not res!875027) (not e!752330))))

(declare-datatypes ((array!88679 0))(
  ( (array!88680 (arr!42809 (Array (_ BitVec 32) (_ BitVec 64))) (size!43360 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88679)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52955 0))(
  ( (V!52956 (val!18019 Int)) )
))
(declare-datatypes ((ValueCell!17046 0))(
  ( (ValueCellFull!17046 (v!20647 V!52955)) (EmptyCell!17046) )
))
(declare-datatypes ((array!88681 0))(
  ( (array!88682 (arr!42810 (Array (_ BitVec 32) ValueCell!17046)) (size!43361 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88681)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1318324 (= res!875027 (and (= (size!43361 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43360 _keys!1609) (size!43361 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1318325 () Bool)

(declare-fun res!875031 () Bool)

(assert (=> b!1318325 (=> (not res!875031) (not e!752330))))

(declare-datatypes ((List!30532 0))(
  ( (Nil!30529) (Cons!30528 (h!31737 (_ BitVec 64)) (t!44157 List!30532)) )
))
(declare-fun arrayNoDuplicates!0 (array!88679 (_ BitVec 32) List!30532) Bool)

(assert (=> b!1318325 (= res!875031 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30529))))

(declare-fun b!1318326 () Bool)

(declare-fun res!875026 () Bool)

(assert (=> b!1318326 (=> (not res!875026) (not e!752330))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1318326 (= res!875026 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43360 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!55481 () Bool)

(declare-fun mapRes!55481 () Bool)

(assert (=> mapIsEmpty!55481 mapRes!55481))

(declare-fun b!1318327 () Bool)

(declare-fun res!875032 () Bool)

(assert (=> b!1318327 (=> (not res!875032) (not e!752330))))

(assert (=> b!1318327 (= res!875032 (not (= (select (arr!42809 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1318328 () Bool)

(declare-fun res!875030 () Bool)

(assert (=> b!1318328 (=> (not res!875030) (not e!752330))))

(declare-fun zeroValue!1279 () V!52955)

(declare-fun minValue!1279 () V!52955)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23340 0))(
  ( (tuple2!23341 (_1!11680 (_ BitVec 64)) (_2!11680 V!52955)) )
))
(declare-datatypes ((List!30533 0))(
  ( (Nil!30530) (Cons!30529 (h!31738 tuple2!23340) (t!44158 List!30533)) )
))
(declare-datatypes ((ListLongMap!21009 0))(
  ( (ListLongMap!21010 (toList!10520 List!30533)) )
))
(declare-fun contains!8611 (ListLongMap!21009 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5476 (array!88679 array!88681 (_ BitVec 32) (_ BitVec 32) V!52955 V!52955 (_ BitVec 32) Int) ListLongMap!21009)

(assert (=> b!1318328 (= res!875030 (contains!8611 (getCurrentListMap!5476 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1318329 () Bool)

(declare-fun res!875025 () Bool)

(assert (=> b!1318329 (=> (not res!875025) (not e!752330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88679 (_ BitVec 32)) Bool)

(assert (=> b!1318329 (= res!875025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1318330 () Bool)

(assert (=> b!1318330 (= e!752330 false)))

(declare-fun lt!586402 () Bool)

(declare-fun +!4481 (ListLongMap!21009 tuple2!23340) ListLongMap!21009)

(declare-fun getCurrentListMapNoExtraKeys!6196 (array!88679 array!88681 (_ BitVec 32) (_ BitVec 32) V!52955 V!52955 (_ BitVec 32) Int) ListLongMap!21009)

(declare-fun get!21551 (ValueCell!17046 V!52955) V!52955)

(declare-fun dynLambda!3518 (Int (_ BitVec 64)) V!52955)

(assert (=> b!1318330 (= lt!586402 (contains!8611 (+!4481 (+!4481 (+!4481 (getCurrentListMapNoExtraKeys!6196 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23341 (select (arr!42809 _keys!1609) from!2000) (get!21551 (select (arr!42810 _values!1337) from!2000) (dynLambda!3518 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23341 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23341 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164))))

(declare-fun res!875028 () Bool)

(assert (=> start!111448 (=> (not res!875028) (not e!752330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111448 (= res!875028 (validMask!0 mask!2019))))

(assert (=> start!111448 e!752330))

(declare-fun array_inv!32281 (array!88679) Bool)

(assert (=> start!111448 (array_inv!32281 _keys!1609)))

(assert (=> start!111448 true))

(declare-fun tp_is_empty!35889 () Bool)

(assert (=> start!111448 tp_is_empty!35889))

(declare-fun e!752331 () Bool)

(declare-fun array_inv!32282 (array!88681) Bool)

(assert (=> start!111448 (and (array_inv!32282 _values!1337) e!752331)))

(assert (=> start!111448 tp!105683))

(declare-fun b!1318331 () Bool)

(declare-fun e!752328 () Bool)

(assert (=> b!1318331 (= e!752331 (and e!752328 mapRes!55481))))

(declare-fun condMapEmpty!55481 () Bool)

(declare-fun mapDefault!55481 () ValueCell!17046)

(assert (=> b!1318331 (= condMapEmpty!55481 (= (arr!42810 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17046)) mapDefault!55481)))))

(declare-fun b!1318332 () Bool)

(assert (=> b!1318332 (= e!752328 tp_is_empty!35889)))

(declare-fun mapNonEmpty!55481 () Bool)

(declare-fun tp!105684 () Bool)

(declare-fun e!752329 () Bool)

(assert (=> mapNonEmpty!55481 (= mapRes!55481 (and tp!105684 e!752329))))

(declare-fun mapValue!55481 () ValueCell!17046)

(declare-fun mapKey!55481 () (_ BitVec 32))

(declare-fun mapRest!55481 () (Array (_ BitVec 32) ValueCell!17046))

(assert (=> mapNonEmpty!55481 (= (arr!42810 _values!1337) (store mapRest!55481 mapKey!55481 mapValue!55481))))

(declare-fun b!1318333 () Bool)

(assert (=> b!1318333 (= e!752329 tp_is_empty!35889)))

(declare-fun b!1318334 () Bool)

(declare-fun res!875029 () Bool)

(assert (=> b!1318334 (=> (not res!875029) (not e!752330))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318334 (= res!875029 (validKeyInArray!0 (select (arr!42809 _keys!1609) from!2000)))))

(assert (= (and start!111448 res!875028) b!1318324))

(assert (= (and b!1318324 res!875027) b!1318329))

(assert (= (and b!1318329 res!875025) b!1318325))

(assert (= (and b!1318325 res!875031) b!1318326))

(assert (= (and b!1318326 res!875026) b!1318328))

(assert (= (and b!1318328 res!875030) b!1318327))

(assert (= (and b!1318327 res!875032) b!1318334))

(assert (= (and b!1318334 res!875029) b!1318330))

(assert (= (and b!1318331 condMapEmpty!55481) mapIsEmpty!55481))

(assert (= (and b!1318331 (not condMapEmpty!55481)) mapNonEmpty!55481))

(get-info :version)

(assert (= (and mapNonEmpty!55481 ((_ is ValueCellFull!17046) mapValue!55481)) b!1318333))

(assert (= (and b!1318331 ((_ is ValueCellFull!17046) mapDefault!55481)) b!1318332))

(assert (= start!111448 b!1318331))

(declare-fun b_lambda!23405 () Bool)

(assert (=> (not b_lambda!23405) (not b!1318330)))

(declare-fun t!44156 () Bool)

(declare-fun tb!11429 () Bool)

(assert (=> (and start!111448 (= defaultEntry!1340 defaultEntry!1340) t!44156) tb!11429))

(declare-fun result!23905 () Bool)

(assert (=> tb!11429 (= result!23905 tp_is_empty!35889)))

(assert (=> b!1318330 t!44156))

(declare-fun b_and!48309 () Bool)

(assert (= b_and!48307 (and (=> t!44156 result!23905) b_and!48309)))

(declare-fun m!1205931 () Bool)

(assert (=> b!1318334 m!1205931))

(assert (=> b!1318334 m!1205931))

(declare-fun m!1205933 () Bool)

(assert (=> b!1318334 m!1205933))

(declare-fun m!1205935 () Bool)

(assert (=> b!1318328 m!1205935))

(assert (=> b!1318328 m!1205935))

(declare-fun m!1205937 () Bool)

(assert (=> b!1318328 m!1205937))

(declare-fun m!1205939 () Bool)

(assert (=> b!1318330 m!1205939))

(declare-fun m!1205941 () Bool)

(assert (=> b!1318330 m!1205941))

(assert (=> b!1318330 m!1205939))

(declare-fun m!1205943 () Bool)

(assert (=> b!1318330 m!1205943))

(declare-fun m!1205945 () Bool)

(assert (=> b!1318330 m!1205945))

(declare-fun m!1205947 () Bool)

(assert (=> b!1318330 m!1205947))

(declare-fun m!1205949 () Bool)

(assert (=> b!1318330 m!1205949))

(assert (=> b!1318330 m!1205943))

(declare-fun m!1205951 () Bool)

(assert (=> b!1318330 m!1205951))

(assert (=> b!1318330 m!1205931))

(assert (=> b!1318330 m!1205951))

(assert (=> b!1318330 m!1205945))

(assert (=> b!1318330 m!1205949))

(assert (=> b!1318330 m!1205941))

(declare-fun m!1205953 () Bool)

(assert (=> b!1318330 m!1205953))

(assert (=> b!1318327 m!1205931))

(declare-fun m!1205955 () Bool)

(assert (=> mapNonEmpty!55481 m!1205955))

(declare-fun m!1205957 () Bool)

(assert (=> b!1318325 m!1205957))

(declare-fun m!1205959 () Bool)

(assert (=> start!111448 m!1205959))

(declare-fun m!1205961 () Bool)

(assert (=> start!111448 m!1205961))

(declare-fun m!1205963 () Bool)

(assert (=> start!111448 m!1205963))

(declare-fun m!1205965 () Bool)

(assert (=> b!1318329 m!1205965))

(check-sat (not b!1318329) (not b!1318325) (not mapNonEmpty!55481) (not b_next!30069) (not start!111448) b_and!48309 (not b!1318330) (not b!1318328) tp_is_empty!35889 (not b_lambda!23405) (not b!1318334))
(check-sat b_and!48309 (not b_next!30069))
