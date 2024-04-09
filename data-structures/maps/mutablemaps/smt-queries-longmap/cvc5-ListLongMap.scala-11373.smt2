; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132174 () Bool)

(assert start!132174)

(declare-fun b_free!31855 () Bool)

(declare-fun b_next!31855 () Bool)

(assert (=> start!132174 (= b_free!31855 (not b_next!31855))))

(declare-fun tp!111818 () Bool)

(declare-fun b_and!51287 () Bool)

(assert (=> start!132174 (= tp!111818 b_and!51287)))

(declare-fun b!1549986 () Bool)

(declare-fun res!1061865 () Bool)

(declare-fun e!862830 () Bool)

(assert (=> b!1549986 (=> (not res!1061865) (not e!862830))))

(declare-datatypes ((array!103421 0))(
  ( (array!103422 (arr!49908 (Array (_ BitVec 32) (_ BitVec 64))) (size!50459 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103421)

(declare-datatypes ((List!36300 0))(
  ( (Nil!36297) (Cons!36296 (h!37742 (_ BitVec 64)) (t!51013 List!36300)) )
))
(declare-fun arrayNoDuplicates!0 (array!103421 (_ BitVec 32) List!36300) Bool)

(assert (=> b!1549986 (= res!1061865 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36297))))

(declare-fun b!1549987 () Bool)

(declare-fun res!1061867 () Bool)

(assert (=> b!1549987 (=> (not res!1061867) (not e!862830))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103421 (_ BitVec 32)) Bool)

(assert (=> b!1549987 (= res!1061867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-datatypes ((V!59285 0))(
  ( (V!59286 (val!19143 Int)) )
))
(declare-fun zeroValue!436 () V!59285)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!70643 () Bool)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18155 0))(
  ( (ValueCellFull!18155 (v!21941 V!59285)) (EmptyCell!18155) )
))
(declare-datatypes ((array!103423 0))(
  ( (array!103424 (arr!49909 (Array (_ BitVec 32) ValueCell!18155)) (size!50460 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103423)

(declare-fun minValue!436 () V!59285)

(declare-datatypes ((tuple2!24806 0))(
  ( (tuple2!24807 (_1!12413 (_ BitVec 64)) (_2!12413 V!59285)) )
))
(declare-datatypes ((List!36301 0))(
  ( (Nil!36298) (Cons!36297 (h!37743 tuple2!24806) (t!51014 List!36301)) )
))
(declare-datatypes ((ListLongMap!22427 0))(
  ( (ListLongMap!22428 (toList!11229 List!36301)) )
))
(declare-fun call!70646 () ListLongMap!22427)

(declare-fun getCurrentListMapNoExtraKeys!6661 (array!103421 array!103423 (_ BitVec 32) (_ BitVec 32) V!59285 V!59285 (_ BitVec 32) Int) ListLongMap!22427)

(assert (=> bm!70643 (= call!70646 (getCurrentListMapNoExtraKeys!6661 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1549988 () Bool)

(declare-fun res!1061866 () Bool)

(assert (=> b!1549988 (=> (not res!1061866) (not e!862830))))

(assert (=> b!1549988 (= res!1061866 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50459 _keys!618))))))

(declare-fun bm!70644 () Bool)

(declare-fun call!70648 () ListLongMap!22427)

(assert (=> bm!70644 (= call!70648 call!70646)))

(declare-fun b!1549989 () Bool)

(assert (=> b!1549989 (= e!862830 false)))

(declare-fun lt!668147 () ListLongMap!22427)

(declare-fun e!862829 () ListLongMap!22427)

(assert (=> b!1549989 (= lt!668147 e!862829)))

(declare-fun c!142447 () Bool)

(declare-fun lt!668146 () Bool)

(assert (=> b!1549989 (= c!142447 (and (not lt!668146) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549989 (= lt!668146 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1549990 () Bool)

(declare-fun e!862825 () ListLongMap!22427)

(declare-fun call!70650 () ListLongMap!22427)

(assert (=> b!1549990 (= e!862825 call!70650)))

(declare-fun b!1549991 () Bool)

(declare-fun call!70647 () ListLongMap!22427)

(declare-fun +!4940 (ListLongMap!22427 tuple2!24806) ListLongMap!22427)

(assert (=> b!1549991 (= e!862829 (+!4940 call!70647 (tuple2!24807 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1549992 () Bool)

(assert (=> b!1549992 (= e!862829 e!862825)))

(declare-fun c!142448 () Bool)

(assert (=> b!1549992 (= c!142448 (and (not lt!668146) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!70645 () Bool)

(assert (=> bm!70645 (= call!70650 call!70647)))

(declare-fun mapIsEmpty!58900 () Bool)

(declare-fun mapRes!58900 () Bool)

(assert (=> mapIsEmpty!58900 mapRes!58900))

(declare-fun b!1549993 () Bool)

(declare-fun e!862826 () Bool)

(declare-fun e!862827 () Bool)

(assert (=> b!1549993 (= e!862826 (and e!862827 mapRes!58900))))

(declare-fun condMapEmpty!58900 () Bool)

(declare-fun mapDefault!58900 () ValueCell!18155)

