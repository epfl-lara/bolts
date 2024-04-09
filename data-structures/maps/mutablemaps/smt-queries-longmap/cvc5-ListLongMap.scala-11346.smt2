; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132012 () Bool)

(assert start!132012)

(declare-fun b_free!31693 () Bool)

(declare-fun b_next!31693 () Bool)

(assert (=> start!132012 (= b_free!31693 (not b_next!31693))))

(declare-fun tp!111331 () Bool)

(declare-fun b_and!51113 () Bool)

(assert (=> start!132012 (= tp!111331 b_and!51113)))

(declare-fun bm!69419 () Bool)

(declare-datatypes ((V!59069 0))(
  ( (V!59070 (val!19062 Int)) )
))
(declare-datatypes ((tuple2!24650 0))(
  ( (tuple2!24651 (_1!12335 (_ BitVec 64)) (_2!12335 V!59069)) )
))
(declare-datatypes ((List!36162 0))(
  ( (Nil!36159) (Cons!36158 (h!37604 tuple2!24650) (t!50863 List!36162)) )
))
(declare-datatypes ((ListLongMap!22271 0))(
  ( (ListLongMap!22272 (toList!11151 List!36162)) )
))
(declare-fun call!69425 () ListLongMap!22271)

(declare-fun call!69426 () ListLongMap!22271)

(assert (=> bm!69419 (= call!69425 call!69426)))

(declare-fun b!1545946 () Bool)

(declare-fun res!1060099 () Bool)

(declare-fun e!860535 () Bool)

(assert (=> b!1545946 (=> (not res!1060099) (not e!860535))))

(declare-datatypes ((array!103107 0))(
  ( (array!103108 (arr!49751 (Array (_ BitVec 32) (_ BitVec 64))) (size!50302 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103107)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18074 0))(
  ( (ValueCellFull!18074 (v!21860 V!59069)) (EmptyCell!18074) )
))
(declare-datatypes ((array!103109 0))(
  ( (array!103110 (arr!49752 (Array (_ BitVec 32) ValueCell!18074)) (size!50303 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103109)

(assert (=> b!1545946 (= res!1060099 (and (= (size!50303 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50302 _keys!618) (size!50303 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1545947 () Bool)

(declare-fun e!860539 () ListLongMap!22271)

(assert (=> b!1545947 (= e!860539 call!69425)))

(declare-fun mapNonEmpty!58657 () Bool)

(declare-fun mapRes!58657 () Bool)

(declare-fun tp!111332 () Bool)

(declare-fun e!860534 () Bool)

(assert (=> mapNonEmpty!58657 (= mapRes!58657 (and tp!111332 e!860534))))

(declare-fun mapValue!58657 () ValueCell!18074)

(declare-fun mapKey!58657 () (_ BitVec 32))

(declare-fun mapRest!58657 () (Array (_ BitVec 32) ValueCell!18074))

(assert (=> mapNonEmpty!58657 (= (arr!49752 _values!470) (store mapRest!58657 mapKey!58657 mapValue!58657))))

(declare-fun res!1060096 () Bool)

(assert (=> start!132012 (=> (not res!1060096) (not e!860535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132012 (= res!1060096 (validMask!0 mask!926))))

(assert (=> start!132012 e!860535))

(declare-fun array_inv!38617 (array!103107) Bool)

(assert (=> start!132012 (array_inv!38617 _keys!618)))

(declare-fun tp_is_empty!37969 () Bool)

(assert (=> start!132012 tp_is_empty!37969))

(assert (=> start!132012 true))

(assert (=> start!132012 tp!111331))

(declare-fun e!860536 () Bool)

(declare-fun array_inv!38618 (array!103109) Bool)

(assert (=> start!132012 (and (array_inv!38618 _values!470) e!860536)))

(declare-fun b!1545948 () Bool)

(declare-fun res!1060094 () Bool)

(assert (=> b!1545948 (=> (not res!1060094) (not e!860535))))

(declare-datatypes ((List!36163 0))(
  ( (Nil!36160) (Cons!36159 (h!37605 (_ BitVec 64)) (t!50864 List!36163)) )
))
(declare-fun arrayNoDuplicates!0 (array!103107 (_ BitVec 32) List!36163) Bool)

(assert (=> b!1545948 (= res!1060094 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36160))))

(declare-fun bm!69420 () Bool)

(declare-fun call!69423 () ListLongMap!22271)

(declare-fun call!69424 () ListLongMap!22271)

(assert (=> bm!69420 (= call!69423 call!69424)))

(declare-fun b!1545949 () Bool)

(declare-fun res!1060098 () Bool)

(declare-fun e!860538 () Bool)

(assert (=> b!1545949 (=> (not res!1060098) (not e!860538))))

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1545949 (= res!1060098 (validKeyInArray!0 (select (arr!49751 _keys!618) from!762)))))

(declare-fun b!1545950 () Bool)

(declare-fun e!860533 () Bool)

(assert (=> b!1545950 (= e!860536 (and e!860533 mapRes!58657))))

(declare-fun condMapEmpty!58657 () Bool)

(declare-fun mapDefault!58657 () ValueCell!18074)

