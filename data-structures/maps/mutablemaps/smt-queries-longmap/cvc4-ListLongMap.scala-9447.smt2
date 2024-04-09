; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112330 () Bool)

(assert start!112330)

(declare-fun b_free!30689 () Bool)

(declare-fun b_next!30689 () Bool)

(assert (=> start!112330 (= b_free!30689 (not b_next!30689))))

(declare-fun tp!107705 () Bool)

(declare-fun b_and!49443 () Bool)

(assert (=> start!112330 (= tp!107705 b_and!49443)))

(declare-fun b!1330552 () Bool)

(declare-fun res!882980 () Bool)

(declare-fun e!758340 () Bool)

(assert (=> b!1330552 (=> (not res!882980) (not e!758340))))

(declare-datatypes ((array!90051 0))(
  ( (array!90052 (arr!43487 (Array (_ BitVec 32) (_ BitVec 64))) (size!44038 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90051)

(declare-datatypes ((List!30998 0))(
  ( (Nil!30995) (Cons!30994 (h!32203 (_ BitVec 64)) (t!45107 List!30998)) )
))
(declare-fun arrayNoDuplicates!0 (array!90051 (_ BitVec 32) List!30998) Bool)

(assert (=> b!1330552 (= res!882980 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30995))))

(declare-fun res!882978 () Bool)

(assert (=> start!112330 (=> (not res!882978) (not e!758340))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112330 (= res!882978 (validMask!0 mask!1998))))

(assert (=> start!112330 e!758340))

(declare-datatypes ((V!53901 0))(
  ( (V!53902 (val!18374 Int)) )
))
(declare-datatypes ((ValueCell!17401 0))(
  ( (ValueCellFull!17401 (v!21009 V!53901)) (EmptyCell!17401) )
))
(declare-datatypes ((array!90053 0))(
  ( (array!90054 (arr!43488 (Array (_ BitVec 32) ValueCell!17401)) (size!44039 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90053)

(declare-fun e!758343 () Bool)

(declare-fun array_inv!32759 (array!90053) Bool)

(assert (=> start!112330 (and (array_inv!32759 _values!1320) e!758343)))

(assert (=> start!112330 true))

(declare-fun array_inv!32760 (array!90051) Bool)

(assert (=> start!112330 (array_inv!32760 _keys!1590)))

(assert (=> start!112330 tp!107705))

(declare-fun tp_is_empty!36599 () Bool)

(assert (=> start!112330 tp_is_empty!36599))

(declare-fun b!1330553 () Bool)

(declare-fun res!882984 () Bool)

(assert (=> b!1330553 (=> (not res!882984) (not e!758340))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330553 (= res!882984 (validKeyInArray!0 (select (arr!43487 _keys!1590) from!1980)))))

(declare-fun b!1330554 () Bool)

(assert (=> b!1330554 (= e!758340 (not true))))

(declare-datatypes ((tuple2!23810 0))(
  ( (tuple2!23811 (_1!11915 (_ BitVec 64)) (_2!11915 V!53901)) )
))
(declare-datatypes ((List!30999 0))(
  ( (Nil!30996) (Cons!30995 (h!32204 tuple2!23810) (t!45108 List!30999)) )
))
(declare-datatypes ((ListLongMap!21479 0))(
  ( (ListLongMap!21480 (toList!10755 List!30999)) )
))
(declare-fun lt!591159 () ListLongMap!21479)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8855 (ListLongMap!21479 (_ BitVec 64)) Bool)

(assert (=> b!1330554 (contains!8855 lt!591159 k!1153)))

(declare-datatypes ((Unit!43721 0))(
  ( (Unit!43722) )
))
(declare-fun lt!591158 () Unit!43721)

(declare-fun lt!591160 () V!53901)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!252 ((_ BitVec 64) (_ BitVec 64) V!53901 ListLongMap!21479) Unit!43721)

(assert (=> b!1330554 (= lt!591158 (lemmaInListMapAfterAddingDiffThenInBefore!252 k!1153 (select (arr!43487 _keys!1590) from!1980) lt!591160 lt!591159))))

(declare-fun lt!591161 () ListLongMap!21479)

(assert (=> b!1330554 (contains!8855 lt!591161 k!1153)))

(declare-fun lt!591157 () Unit!43721)

(declare-fun minValue!1262 () V!53901)

(assert (=> b!1330554 (= lt!591157 (lemmaInListMapAfterAddingDiffThenInBefore!252 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591161))))

(declare-fun +!4647 (ListLongMap!21479 tuple2!23810) ListLongMap!21479)

(assert (=> b!1330554 (= lt!591161 (+!4647 lt!591159 (tuple2!23811 (select (arr!43487 _keys!1590) from!1980) lt!591160)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21961 (ValueCell!17401 V!53901) V!53901)

(declare-fun dynLambda!3684 (Int (_ BitVec 64)) V!53901)

(assert (=> b!1330554 (= lt!591160 (get!21961 (select (arr!43488 _values!1320) from!1980) (dynLambda!3684 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53901)

(declare-fun getCurrentListMapNoExtraKeys!6365 (array!90051 array!90053 (_ BitVec 32) (_ BitVec 32) V!53901 V!53901 (_ BitVec 32) Int) ListLongMap!21479)

(assert (=> b!1330554 (= lt!591159 (getCurrentListMapNoExtraKeys!6365 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1330555 () Bool)

(declare-fun res!882983 () Bool)

(assert (=> b!1330555 (=> (not res!882983) (not e!758340))))

(assert (=> b!1330555 (= res!882983 (and (= (size!44039 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44038 _keys!1590) (size!44039 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1330556 () Bool)

(declare-fun res!882981 () Bool)

(assert (=> b!1330556 (=> (not res!882981) (not e!758340))))

(assert (=> b!1330556 (= res!882981 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1330557 () Bool)

(declare-fun res!882982 () Bool)

(assert (=> b!1330557 (=> (not res!882982) (not e!758340))))

(assert (=> b!1330557 (= res!882982 (not (= (select (arr!43487 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1330558 () Bool)

(declare-fun res!882985 () Bool)

(assert (=> b!1330558 (=> (not res!882985) (not e!758340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90051 (_ BitVec 32)) Bool)

(assert (=> b!1330558 (= res!882985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330559 () Bool)

(declare-fun e!758344 () Bool)

(assert (=> b!1330559 (= e!758344 tp_is_empty!36599)))

(declare-fun mapNonEmpty!56572 () Bool)

(declare-fun mapRes!56572 () Bool)

(declare-fun tp!107704 () Bool)

(assert (=> mapNonEmpty!56572 (= mapRes!56572 (and tp!107704 e!758344))))

(declare-fun mapKey!56572 () (_ BitVec 32))

(declare-fun mapRest!56572 () (Array (_ BitVec 32) ValueCell!17401))

(declare-fun mapValue!56572 () ValueCell!17401)

(assert (=> mapNonEmpty!56572 (= (arr!43488 _values!1320) (store mapRest!56572 mapKey!56572 mapValue!56572))))

(declare-fun b!1330560 () Bool)

(declare-fun e!758341 () Bool)

(assert (=> b!1330560 (= e!758343 (and e!758341 mapRes!56572))))

(declare-fun condMapEmpty!56572 () Bool)

(declare-fun mapDefault!56572 () ValueCell!17401)

