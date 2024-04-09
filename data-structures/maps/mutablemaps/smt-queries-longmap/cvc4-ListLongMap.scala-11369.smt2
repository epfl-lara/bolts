; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132154 () Bool)

(assert start!132154)

(declare-fun b_free!31835 () Bool)

(declare-fun b_next!31835 () Bool)

(assert (=> start!132154 (= b_free!31835 (not b_next!31835))))

(declare-fun tp!111758 () Bool)

(declare-fun b_and!51255 () Bool)

(assert (=> start!132154 (= tp!111758 b_and!51255)))

(declare-fun b!1549354 () Bool)

(declare-fun res!1061586 () Bool)

(declare-fun e!862449 () Bool)

(assert (=> b!1549354 (=> (not res!1061586) (not e!862449))))

(declare-datatypes ((array!103383 0))(
  ( (array!103384 (arr!49889 (Array (_ BitVec 32) (_ BitVec 64))) (size!50440 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103383)

(declare-datatypes ((List!36285 0))(
  ( (Nil!36282) (Cons!36281 (h!37727 (_ BitVec 64)) (t!50986 List!36285)) )
))
(declare-fun arrayNoDuplicates!0 (array!103383 (_ BitVec 32) List!36285) Bool)

(assert (=> b!1549354 (= res!1061586 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36282))))

(declare-fun b!1549355 () Bool)

(declare-fun e!862448 () Bool)

(assert (=> b!1549355 (= e!862449 e!862448)))

(declare-fun res!1061585 () Bool)

(assert (=> b!1549355 (=> (not res!1061585) (not e!862448))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1549355 (= res!1061585 (bvslt from!762 (size!50440 _keys!618)))))

(declare-datatypes ((V!59257 0))(
  ( (V!59258 (val!19133 Int)) )
))
(declare-datatypes ((tuple2!24788 0))(
  ( (tuple2!24789 (_1!12404 (_ BitVec 64)) (_2!12404 V!59257)) )
))
(declare-datatypes ((List!36286 0))(
  ( (Nil!36283) (Cons!36282 (h!37728 tuple2!24788) (t!50987 List!36286)) )
))
(declare-datatypes ((ListLongMap!22409 0))(
  ( (ListLongMap!22410 (toList!11220 List!36286)) )
))
(declare-fun lt!667812 () ListLongMap!22409)

(declare-fun e!862455 () ListLongMap!22409)

(assert (=> b!1549355 (= lt!667812 e!862455)))

(declare-fun c!142322 () Bool)

(declare-fun lt!667811 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1549355 (= c!142322 (and (not lt!667811) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549355 (= lt!667811 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1549356 () Bool)

(declare-fun e!862450 () ListLongMap!22409)

(declare-fun call!70490 () ListLongMap!22409)

(assert (=> b!1549356 (= e!862450 call!70490)))

(declare-fun bm!70484 () Bool)

(declare-fun call!70487 () ListLongMap!22409)

(assert (=> bm!70484 (= call!70490 call!70487)))

(declare-fun b!1549357 () Bool)

(declare-fun e!862454 () Bool)

(declare-fun tp_is_empty!38111 () Bool)

(assert (=> b!1549357 (= e!862454 tp_is_empty!38111)))

(declare-fun b!1549358 () Bool)

(declare-fun e!862452 () Bool)

(declare-fun e!862453 () Bool)

(declare-fun mapRes!58870 () Bool)

(assert (=> b!1549358 (= e!862452 (and e!862453 mapRes!58870))))

(declare-fun condMapEmpty!58870 () Bool)

(declare-datatypes ((ValueCell!18145 0))(
  ( (ValueCellFull!18145 (v!21931 V!59257)) (EmptyCell!18145) )
))
(declare-datatypes ((array!103385 0))(
  ( (array!103386 (arr!49890 (Array (_ BitVec 32) ValueCell!18145)) (size!50441 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103385)

(declare-fun mapDefault!58870 () ValueCell!18145)

