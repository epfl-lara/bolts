; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132246 () Bool)

(assert start!132246)

(declare-fun b_free!31889 () Bool)

(declare-fun b_next!31889 () Bool)

(assert (=> start!132246 (= b_free!31889 (not b_next!31889))))

(declare-fun tp!111925 () Bool)

(declare-fun b_and!51329 () Bool)

(assert (=> start!132246 (= tp!111925 b_and!51329)))

(declare-fun b!1550983 () Bool)

(declare-fun res!1062295 () Bool)

(declare-fun e!863406 () Bool)

(assert (=> b!1550983 (=> (not res!1062295) (not e!863406))))

(declare-datatypes ((array!103487 0))(
  ( (array!103488 (arr!49939 (Array (_ BitVec 32) (_ BitVec 64))) (size!50490 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103487)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103487 (_ BitVec 32)) Bool)

(assert (=> b!1550983 (= res!1062295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1550984 () Bool)

(declare-datatypes ((V!59329 0))(
  ( (V!59330 (val!19160 Int)) )
))
(declare-datatypes ((tuple2!24838 0))(
  ( (tuple2!24839 (_1!12429 (_ BitVec 64)) (_2!12429 V!59329)) )
))
(declare-datatypes ((List!36325 0))(
  ( (Nil!36322) (Cons!36321 (h!37767 tuple2!24838) (t!51042 List!36325)) )
))
(declare-datatypes ((ListLongMap!22459 0))(
  ( (ListLongMap!22460 (toList!11245 List!36325)) )
))
(declare-fun e!863404 () ListLongMap!22459)

(declare-fun call!70923 () ListLongMap!22459)

(assert (=> b!1550984 (= e!863404 call!70923)))

(declare-fun zeroValue!436 () V!59329)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18172 0))(
  ( (ValueCellFull!18172 (v!21960 V!59329)) (EmptyCell!18172) )
))
(declare-datatypes ((array!103489 0))(
  ( (array!103490 (arr!49940 (Array (_ BitVec 32) ValueCell!18172)) (size!50491 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103489)

(declare-fun call!70920 () ListLongMap!22459)

(declare-fun minValue!436 () V!59329)

(declare-fun bm!70916 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6671 (array!103487 array!103489 (_ BitVec 32) (_ BitVec 32) V!59329 V!59329 (_ BitVec 32) Int) ListLongMap!22459)

(assert (=> bm!70916 (= call!70920 (getCurrentListMapNoExtraKeys!6671 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1550985 () Bool)

(declare-fun e!863408 () ListLongMap!22459)

(declare-fun call!70919 () ListLongMap!22459)

(declare-fun +!4953 (ListLongMap!22459 tuple2!24838) ListLongMap!22459)

(assert (=> b!1550985 (= e!863408 (+!4953 call!70919 (tuple2!24839 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1550986 () Bool)

(declare-fun e!863405 () Bool)

(assert (=> b!1550986 (= e!863406 e!863405)))

(declare-fun res!1062297 () Bool)

(assert (=> b!1550986 (=> (not res!1062297) (not e!863405))))

(assert (=> b!1550986 (= res!1062297 (bvslt from!762 (size!50490 _keys!618)))))

(declare-fun lt!668445 () ListLongMap!22459)

(assert (=> b!1550986 (= lt!668445 e!863408)))

(declare-fun c!142644 () Bool)

(declare-fun lt!668444 () Bool)

(assert (=> b!1550986 (= c!142644 (and (not lt!668444) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1550986 (= lt!668444 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun call!70921 () ListLongMap!22459)

(declare-fun c!142643 () Bool)

(declare-fun call!70922 () ListLongMap!22459)

(declare-fun bm!70917 () Bool)

(assert (=> bm!70917 (= call!70919 (+!4953 (ite c!142644 call!70920 (ite c!142643 call!70922 call!70921)) (ite (or c!142644 c!142643) (tuple2!24839 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24839 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!70918 () Bool)

(assert (=> bm!70918 (= call!70921 call!70922)))

(declare-fun mapNonEmpty!58957 () Bool)

(declare-fun mapRes!58957 () Bool)

(declare-fun tp!111926 () Bool)

(declare-fun e!863409 () Bool)

(assert (=> mapNonEmpty!58957 (= mapRes!58957 (and tp!111926 e!863409))))

(declare-fun mapRest!58957 () (Array (_ BitVec 32) ValueCell!18172))

(declare-fun mapKey!58957 () (_ BitVec 32))

(declare-fun mapValue!58957 () ValueCell!18172)

(assert (=> mapNonEmpty!58957 (= (arr!49940 _values!470) (store mapRest!58957 mapKey!58957 mapValue!58957))))

(declare-fun res!1062299 () Bool)

(assert (=> start!132246 (=> (not res!1062299) (not e!863406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132246 (= res!1062299 (validMask!0 mask!926))))

(assert (=> start!132246 e!863406))

(declare-fun array_inv!38751 (array!103487) Bool)

(assert (=> start!132246 (array_inv!38751 _keys!618)))

(declare-fun tp_is_empty!38165 () Bool)

(assert (=> start!132246 tp_is_empty!38165))

(assert (=> start!132246 true))

(assert (=> start!132246 tp!111925))

(declare-fun e!863407 () Bool)

(declare-fun array_inv!38752 (array!103489) Bool)

(assert (=> start!132246 (and (array_inv!38752 _values!470) e!863407)))

(declare-fun bm!70919 () Bool)

(assert (=> bm!70919 (= call!70922 call!70920)))

(declare-fun b!1550987 () Bool)

(declare-fun e!863412 () Bool)

(assert (=> b!1550987 (= e!863407 (and e!863412 mapRes!58957))))

(declare-fun condMapEmpty!58957 () Bool)

(declare-fun mapDefault!58957 () ValueCell!18172)

