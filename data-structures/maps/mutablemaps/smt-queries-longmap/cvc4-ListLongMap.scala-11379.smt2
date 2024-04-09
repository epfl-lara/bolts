; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132252 () Bool)

(assert start!132252)

(declare-fun b_free!31895 () Bool)

(declare-fun b_next!31895 () Bool)

(assert (=> start!132252 (= b_free!31895 (not b_next!31895))))

(declare-fun tp!111944 () Bool)

(declare-fun b_and!51335 () Bool)

(assert (=> start!132252 (= tp!111944 b_and!51335)))

(declare-fun bm!70961 () Bool)

(declare-datatypes ((V!59337 0))(
  ( (V!59338 (val!19163 Int)) )
))
(declare-datatypes ((tuple2!24842 0))(
  ( (tuple2!24843 (_1!12431 (_ BitVec 64)) (_2!12431 V!59337)) )
))
(declare-datatypes ((List!36328 0))(
  ( (Nil!36325) (Cons!36324 (h!37770 tuple2!24842) (t!51045 List!36328)) )
))
(declare-datatypes ((ListLongMap!22463 0))(
  ( (ListLongMap!22464 (toList!11247 List!36328)) )
))
(declare-fun call!70967 () ListLongMap!22463)

(declare-fun call!70964 () ListLongMap!22463)

(assert (=> bm!70961 (= call!70967 call!70964)))

(declare-fun b!1551135 () Bool)

(declare-fun res!1062367 () Bool)

(declare-fun e!863493 () Bool)

(assert (=> b!1551135 (=> (not res!1062367) (not e!863493))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18175 0))(
  ( (ValueCellFull!18175 (v!21963 V!59337)) (EmptyCell!18175) )
))
(declare-datatypes ((array!103497 0))(
  ( (array!103498 (arr!49944 (Array (_ BitVec 32) ValueCell!18175)) (size!50495 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103497)

(declare-datatypes ((array!103499 0))(
  ( (array!103500 (arr!49945 (Array (_ BitVec 32) (_ BitVec 64))) (size!50496 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103499)

(assert (=> b!1551135 (= res!1062367 (and (= (size!50495 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50496 _keys!618) (size!50495 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1551136 () Bool)

(declare-fun e!863502 () Bool)

(declare-fun e!863496 () Bool)

(declare-fun mapRes!58966 () Bool)

(assert (=> b!1551136 (= e!863502 (and e!863496 mapRes!58966))))

(declare-fun condMapEmpty!58966 () Bool)

(declare-fun mapDefault!58966 () ValueCell!18175)

