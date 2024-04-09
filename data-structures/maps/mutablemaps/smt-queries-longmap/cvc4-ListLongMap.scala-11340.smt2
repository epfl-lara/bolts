; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131980 () Bool)

(assert start!131980)

(declare-fun b_free!31661 () Bool)

(declare-fun b_next!31661 () Bool)

(assert (=> start!131980 (= b_free!31661 (not b_next!31661))))

(declare-fun tp!111236 () Bool)

(declare-fun b_and!51081 () Bool)

(assert (=> start!131980 (= tp!111236 b_and!51081)))

(declare-fun b!1545178 () Bool)

(declare-datatypes ((V!59025 0))(
  ( (V!59026 (val!19046 Int)) )
))
(declare-datatypes ((tuple2!24620 0))(
  ( (tuple2!24621 (_1!12320 (_ BitVec 64)) (_2!12320 V!59025)) )
))
(declare-datatypes ((List!36138 0))(
  ( (Nil!36135) (Cons!36134 (h!37580 tuple2!24620) (t!50839 List!36138)) )
))
(declare-datatypes ((ListLongMap!22241 0))(
  ( (ListLongMap!22242 (toList!11136 List!36138)) )
))
(declare-fun e!860099 () ListLongMap!22241)

(declare-fun call!69185 () ListLongMap!22241)

(assert (=> b!1545178 (= e!860099 call!69185)))

(declare-fun b!1545179 () Bool)

(declare-fun e!860101 () Bool)

(declare-fun tp_is_empty!37937 () Bool)

(assert (=> b!1545179 (= e!860101 tp_is_empty!37937)))

(declare-fun bm!69179 () Bool)

(declare-fun call!69183 () ListLongMap!22241)

(assert (=> bm!69179 (= call!69185 call!69183)))

(declare-fun b!1545180 () Bool)

(declare-fun e!860106 () Bool)

(declare-fun e!860105 () Bool)

(assert (=> b!1545180 (= e!860106 e!860105)))

(declare-fun res!1059761 () Bool)

(assert (=> b!1545180 (=> (not res!1059761) (not e!860105))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103047 0))(
  ( (array!103048 (arr!49721 (Array (_ BitVec 32) (_ BitVec 64))) (size!50272 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103047)

(assert (=> b!1545180 (= res!1059761 (bvslt from!762 (size!50272 _keys!618)))))

(declare-fun lt!666203 () ListLongMap!22241)

(declare-fun e!860103 () ListLongMap!22241)

(assert (=> b!1545180 (= lt!666203 e!860103)))

(declare-fun c!141538 () Bool)

(declare-fun lt!666205 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1545180 (= c!141538 (and (not lt!666205) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1545180 (= lt!666205 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!58609 () Bool)

(declare-fun mapRes!58609 () Bool)

(assert (=> mapIsEmpty!58609 mapRes!58609))

(declare-fun b!1545181 () Bool)

(declare-fun call!69186 () ListLongMap!22241)

(assert (=> b!1545181 (= e!860099 call!69186)))

(declare-fun zeroValue!436 () V!59025)

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18058 0))(
  ( (ValueCellFull!18058 (v!21844 V!59025)) (EmptyCell!18058) )
))
(declare-datatypes ((array!103049 0))(
  ( (array!103050 (arr!49722 (Array (_ BitVec 32) ValueCell!18058)) (size!50273 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103049)

(declare-fun bm!69180 () Bool)

(declare-fun minValue!436 () V!59025)

(declare-fun call!69184 () ListLongMap!22241)

(declare-fun getCurrentListMapNoExtraKeys!6585 (array!103047 array!103049 (_ BitVec 32) (_ BitVec 32) V!59025 V!59025 (_ BitVec 32) Int) ListLongMap!22241)

(assert (=> bm!69180 (= call!69184 (getCurrentListMapNoExtraKeys!6585 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!69181 () Bool)

(declare-fun call!69182 () ListLongMap!22241)

(assert (=> bm!69181 (= call!69186 call!69182)))

(declare-fun b!1545182 () Bool)

(declare-fun res!1059763 () Bool)

(assert (=> b!1545182 (=> (not res!1059763) (not e!860106))))

(assert (=> b!1545182 (= res!1059763 (and (= (size!50273 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50272 _keys!618) (size!50273 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1545183 () Bool)

(declare-fun c!141539 () Bool)

(assert (=> b!1545183 (= c!141539 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666205))))

(declare-fun e!860104 () ListLongMap!22241)

(assert (=> b!1545183 (= e!860104 e!860099)))

(declare-fun b!1545184 () Bool)

(declare-fun e!860102 () Bool)

(declare-fun e!860107 () Bool)

(assert (=> b!1545184 (= e!860102 (and e!860107 mapRes!58609))))

(declare-fun condMapEmpty!58609 () Bool)

(declare-fun mapDefault!58609 () ValueCell!18058)

