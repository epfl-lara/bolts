; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132142 () Bool)

(assert start!132142)

(declare-fun b_free!31823 () Bool)

(declare-fun b_next!31823 () Bool)

(assert (=> start!132142 (= b_free!31823 (not b_next!31823))))

(declare-fun tp!111721 () Bool)

(declare-fun b_and!51243 () Bool)

(assert (=> start!132142 (= tp!111721 b_and!51243)))

(declare-fun mapNonEmpty!58852 () Bool)

(declare-fun mapRes!58852 () Bool)

(declare-fun tp!111722 () Bool)

(declare-fun e!862290 () Bool)

(assert (=> mapNonEmpty!58852 (= mapRes!58852 (and tp!111722 e!862290))))

(declare-datatypes ((V!59241 0))(
  ( (V!59242 (val!19127 Int)) )
))
(declare-datatypes ((ValueCell!18139 0))(
  ( (ValueCellFull!18139 (v!21925 V!59241)) (EmptyCell!18139) )
))
(declare-fun mapValue!58852 () ValueCell!18139)

(declare-fun mapKey!58852 () (_ BitVec 32))

(declare-fun mapRest!58852 () (Array (_ BitVec 32) ValueCell!18139))

(declare-datatypes ((array!103359 0))(
  ( (array!103360 (arr!49877 (Array (_ BitVec 32) ValueCell!18139)) (size!50428 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103359)

(assert (=> mapNonEmpty!58852 (= (arr!49877 _values!470) (store mapRest!58852 mapKey!58852 mapValue!58852))))

(declare-fun b!1549066 () Bool)

(declare-fun e!862293 () Bool)

(declare-fun e!862289 () Bool)

(assert (=> b!1549066 (= e!862293 e!862289)))

(declare-fun res!1061464 () Bool)

(assert (=> b!1549066 (=> (not res!1061464) (not e!862289))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103361 0))(
  ( (array!103362 (arr!49878 (Array (_ BitVec 32) (_ BitVec 64))) (size!50429 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103361)

(assert (=> b!1549066 (= res!1061464 (bvslt from!762 (size!50429 _keys!618)))))

(declare-datatypes ((tuple2!24776 0))(
  ( (tuple2!24777 (_1!12398 (_ BitVec 64)) (_2!12398 V!59241)) )
))
(declare-datatypes ((List!36276 0))(
  ( (Nil!36273) (Cons!36272 (h!37718 tuple2!24776) (t!50977 List!36276)) )
))
(declare-datatypes ((ListLongMap!22397 0))(
  ( (ListLongMap!22398 (toList!11214 List!36276)) )
))
(declare-fun lt!667643 () ListLongMap!22397)

(declare-fun e!862291 () ListLongMap!22397)

(assert (=> b!1549066 (= lt!667643 e!862291)))

(declare-fun c!142267 () Bool)

(declare-fun lt!667640 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1549066 (= c!142267 (and (not lt!667640) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549066 (= lt!667640 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun call!70398 () ListLongMap!22397)

(declare-fun zeroValue!436 () V!59241)

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun minValue!436 () V!59241)

(declare-fun bm!70394 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6651 (array!103361 array!103359 (_ BitVec 32) (_ BitVec 32) V!59241 V!59241 (_ BitVec 32) Int) ListLongMap!22397)

(assert (=> bm!70394 (= call!70398 (getCurrentListMapNoExtraKeys!6651 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!70395 () Bool)

(declare-fun call!70399 () ListLongMap!22397)

(declare-fun call!70400 () ListLongMap!22397)

(assert (=> bm!70395 (= call!70399 call!70400)))

(declare-fun b!1549067 () Bool)

(declare-fun tp_is_empty!38099 () Bool)

(assert (=> b!1549067 (= e!862290 tp_is_empty!38099)))

(declare-fun b!1549068 () Bool)

(declare-fun res!1061460 () Bool)

(assert (=> b!1549068 (=> (not res!1061460) (not e!862293))))

(assert (=> b!1549068 (= res!1061460 (and (= (size!50428 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50429 _keys!618) (size!50428 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1549069 () Bool)

(declare-fun e!862288 () Bool)

(declare-fun e!862286 () Bool)

(assert (=> b!1549069 (= e!862288 (and e!862286 mapRes!58852))))

(declare-fun condMapEmpty!58852 () Bool)

(declare-fun mapDefault!58852 () ValueCell!18139)

