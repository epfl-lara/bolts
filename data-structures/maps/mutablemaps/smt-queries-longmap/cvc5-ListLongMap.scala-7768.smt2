; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97388 () Bool)

(assert start!97388)

(declare-fun b_free!23323 () Bool)

(declare-fun b_next!23323 () Bool)

(assert (=> start!97388 (= b_free!23323 (not b_next!23323))))

(declare-fun tp!82268 () Bool)

(declare-fun b_and!37501 () Bool)

(assert (=> start!97388 (= tp!82268 b_and!37501)))

(declare-fun b!1109431 () Bool)

(declare-fun res!740463 () Bool)

(declare-fun e!632842 () Bool)

(assert (=> b!1109431 (=> (not res!740463) (not e!632842))))

(declare-datatypes ((array!72034 0))(
  ( (array!72035 (arr!34666 (Array (_ BitVec 32) (_ BitVec 64))) (size!35203 (_ BitVec 32))) )
))
(declare-fun lt!495967 () array!72034)

(declare-datatypes ((List!24312 0))(
  ( (Nil!24309) (Cons!24308 (h!25517 (_ BitVec 64)) (t!34688 List!24312)) )
))
(declare-fun arrayNoDuplicates!0 (array!72034 (_ BitVec 32) List!24312) Bool)

(assert (=> b!1109431 (= res!740463 (arrayNoDuplicates!0 lt!495967 #b00000000000000000000000000000000 Nil!24309))))

(declare-fun b!1109432 () Bool)

(declare-fun e!632844 () Bool)

(declare-datatypes ((V!41905 0))(
  ( (V!41906 (val!13848 Int)) )
))
(declare-datatypes ((tuple2!17574 0))(
  ( (tuple2!17575 (_1!8797 (_ BitVec 64)) (_2!8797 V!41905)) )
))
(declare-datatypes ((List!24313 0))(
  ( (Nil!24310) (Cons!24309 (h!25518 tuple2!17574) (t!34689 List!24313)) )
))
(declare-datatypes ((ListLongMap!15555 0))(
  ( (ListLongMap!15556 (toList!7793 List!24313)) )
))
(declare-fun call!46667 () ListLongMap!15555)

(declare-fun call!46666 () ListLongMap!15555)

(assert (=> b!1109432 (= e!632844 (= call!46667 call!46666))))

(declare-fun mapIsEmpty!43192 () Bool)

(declare-fun mapRes!43192 () Bool)

(assert (=> mapIsEmpty!43192 mapRes!43192))

(declare-fun b!1109433 () Bool)

(declare-fun res!740456 () Bool)

(declare-fun e!632847 () Bool)

(assert (=> b!1109433 (=> (not res!740456) (not e!632847))))

(declare-fun _keys!1208 () array!72034)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72034 (_ BitVec 32)) Bool)

(assert (=> b!1109433 (= res!740456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1109435 () Bool)

(declare-fun e!632849 () Bool)

(declare-fun e!632846 () Bool)

(assert (=> b!1109435 (= e!632849 (and e!632846 mapRes!43192))))

(declare-fun condMapEmpty!43192 () Bool)

(declare-datatypes ((ValueCell!13082 0))(
  ( (ValueCellFull!13082 (v!16482 V!41905)) (EmptyCell!13082) )
))
(declare-datatypes ((array!72036 0))(
  ( (array!72037 (arr!34667 (Array (_ BitVec 32) ValueCell!13082)) (size!35204 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72036)

(declare-fun mapDefault!43192 () ValueCell!13082)

