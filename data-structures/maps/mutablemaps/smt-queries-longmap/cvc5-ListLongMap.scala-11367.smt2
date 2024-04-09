; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132138 () Bool)

(assert start!132138)

(declare-fun b_free!31819 () Bool)

(declare-fun b_next!31819 () Bool)

(assert (=> start!132138 (= b_free!31819 (not b_next!31819))))

(declare-fun tp!111710 () Bool)

(declare-fun b_and!51239 () Bool)

(assert (=> start!132138 (= tp!111710 b_and!51239)))

(declare-fun mapIsEmpty!58846 () Bool)

(declare-fun mapRes!58846 () Bool)

(assert (=> mapIsEmpty!58846 mapRes!58846))

(declare-fun b!1548970 () Bool)

(declare-fun res!1061419 () Bool)

(declare-fun e!862235 () Bool)

(assert (=> b!1548970 (=> (not res!1061419) (not e!862235))))

(declare-datatypes ((array!103351 0))(
  ( (array!103352 (arr!49873 (Array (_ BitVec 32) (_ BitVec 64))) (size!50424 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103351)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548970 (= res!1061419 (validKeyInArray!0 (select (arr!49873 _keys!618) from!762)))))

(declare-fun b!1548971 () Bool)

(declare-datatypes ((V!59237 0))(
  ( (V!59238 (val!19125 Int)) )
))
(declare-datatypes ((tuple2!24772 0))(
  ( (tuple2!24773 (_1!12396 (_ BitVec 64)) (_2!12396 V!59237)) )
))
(declare-datatypes ((List!36272 0))(
  ( (Nil!36269) (Cons!36268 (h!37714 tuple2!24772) (t!50973 List!36272)) )
))
(declare-datatypes ((ListLongMap!22393 0))(
  ( (ListLongMap!22394 (toList!11212 List!36272)) )
))
(declare-fun e!862239 () ListLongMap!22393)

(declare-fun call!70368 () ListLongMap!22393)

(declare-fun minValue!436 () V!59237)

(declare-fun +!4930 (ListLongMap!22393 tuple2!24772) ListLongMap!22393)

(assert (=> b!1548971 (= e!862239 (+!4930 call!70368 (tuple2!24773 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1548972 () Bool)

(declare-fun e!862234 () Bool)

(assert (=> b!1548972 (= e!862234 e!862235)))

(declare-fun res!1061417 () Bool)

(assert (=> b!1548972 (=> (not res!1061417) (not e!862235))))

(assert (=> b!1548972 (= res!1061417 (bvslt from!762 (size!50424 _keys!618)))))

(declare-fun lt!667588 () ListLongMap!22393)

(assert (=> b!1548972 (= lt!667588 e!862239)))

(declare-fun c!142249 () Bool)

(declare-fun lt!667589 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1548972 (= c!142249 (and (not lt!667589) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548972 (= lt!667589 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!58846 () Bool)

(declare-fun tp!111709 () Bool)

(declare-fun e!862236 () Bool)

(assert (=> mapNonEmpty!58846 (= mapRes!58846 (and tp!111709 e!862236))))

(declare-datatypes ((ValueCell!18137 0))(
  ( (ValueCellFull!18137 (v!21923 V!59237)) (EmptyCell!18137) )
))
(declare-fun mapRest!58846 () (Array (_ BitVec 32) ValueCell!18137))

(declare-datatypes ((array!103353 0))(
  ( (array!103354 (arr!49874 (Array (_ BitVec 32) ValueCell!18137)) (size!50425 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103353)

(declare-fun mapValue!58846 () ValueCell!18137)

(declare-fun mapKey!58846 () (_ BitVec 32))

(assert (=> mapNonEmpty!58846 (= (arr!49874 _values!470) (store mapRest!58846 mapKey!58846 mapValue!58846))))

(declare-fun b!1548974 () Bool)

(declare-fun c!142250 () Bool)

(assert (=> b!1548974 (= c!142250 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667589))))

(declare-fun e!862232 () ListLongMap!22393)

(declare-fun e!862237 () ListLongMap!22393)

(assert (=> b!1548974 (= e!862232 e!862237)))

(declare-fun b!1548975 () Bool)

(declare-fun tp_is_empty!38095 () Bool)

(assert (=> b!1548975 (= e!862236 tp_is_empty!38095)))

(declare-fun b!1548976 () Bool)

(declare-fun call!70367 () ListLongMap!22393)

(assert (=> b!1548976 (= e!862237 call!70367)))

(declare-fun b!1548977 () Bool)

(assert (=> b!1548977 (= e!862239 e!862232)))

(declare-fun c!142248 () Bool)

(assert (=> b!1548977 (= c!142248 (and (not lt!667589) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!70364 () Bool)

(assert (=> bm!70364 (= call!70367 call!70368)))

(declare-fun b!1548978 () Bool)

(declare-fun res!1061418 () Bool)

(assert (=> b!1548978 (=> (not res!1061418) (not e!862234))))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1548978 (= res!1061418 (and (= (size!50425 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50424 _keys!618) (size!50425 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!436 () V!59237)

(declare-fun call!70369 () ListLongMap!22393)

(declare-fun bm!70365 () Bool)

(declare-fun call!70370 () ListLongMap!22393)

(declare-fun call!70371 () ListLongMap!22393)

(assert (=> bm!70365 (= call!70368 (+!4930 (ite c!142249 call!70370 (ite c!142248 call!70371 call!70369)) (ite (or c!142249 c!142248) (tuple2!24773 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24773 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1548979 () Bool)

(declare-fun res!1061423 () Bool)

(assert (=> b!1548979 (=> (not res!1061423) (not e!862234))))

(declare-datatypes ((List!36273 0))(
  ( (Nil!36270) (Cons!36269 (h!37715 (_ BitVec 64)) (t!50974 List!36273)) )
))
(declare-fun arrayNoDuplicates!0 (array!103351 (_ BitVec 32) List!36273) Bool)

(assert (=> b!1548979 (= res!1061423 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36270))))

(declare-fun b!1548980 () Bool)

(declare-fun e!862238 () Bool)

(declare-fun e!862233 () Bool)

(assert (=> b!1548980 (= e!862238 (and e!862233 mapRes!58846))))

(declare-fun condMapEmpty!58846 () Bool)

(declare-fun mapDefault!58846 () ValueCell!18137)

