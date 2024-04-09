; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77690 () Bool)

(assert start!77690)

(declare-fun b_free!16247 () Bool)

(declare-fun b_next!16247 () Bool)

(assert (=> start!77690 (= b_free!16247 (not b_next!16247))))

(declare-fun tp!57003 () Bool)

(declare-fun b_and!26665 () Bool)

(assert (=> start!77690 (= tp!57003 b_and!26665)))

(declare-fun b!905424 () Bool)

(declare-fun e!507413 () Bool)

(declare-fun e!507409 () Bool)

(assert (=> b!905424 (= e!507413 e!507409)))

(declare-fun res!611110 () Bool)

(assert (=> b!905424 (=> (not res!611110) (not e!507409))))

(declare-datatypes ((V!29851 0))(
  ( (V!29852 (val!9383 Int)) )
))
(declare-datatypes ((tuple2!12226 0))(
  ( (tuple2!12227 (_1!6123 (_ BitVec 64)) (_2!6123 V!29851)) )
))
(declare-datatypes ((List!18093 0))(
  ( (Nil!18090) (Cons!18089 (h!19235 tuple2!12226) (t!25520 List!18093)) )
))
(declare-datatypes ((ListLongMap!10937 0))(
  ( (ListLongMap!10938 (toList!5484 List!18093)) )
))
(declare-fun lt!408548 () ListLongMap!10937)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4496 (ListLongMap!10937 (_ BitVec 64)) Bool)

(assert (=> b!905424 (= res!611110 (contains!4496 lt!408548 k!1033))))

(declare-datatypes ((ValueCell!8851 0))(
  ( (ValueCellFull!8851 (v!11888 V!29851)) (EmptyCell!8851) )
))
(declare-datatypes ((array!53360 0))(
  ( (array!53361 (arr!25635 (Array (_ BitVec 32) ValueCell!8851)) (size!26095 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53360)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29851)

(declare-datatypes ((array!53362 0))(
  ( (array!53363 (arr!25636 (Array (_ BitVec 32) (_ BitVec 64))) (size!26096 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53362)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29851)

(declare-fun getCurrentListMap!2720 (array!53362 array!53360 (_ BitVec 32) (_ BitVec 32) V!29851 V!29851 (_ BitVec 32) Int) ListLongMap!10937)

(assert (=> b!905424 (= lt!408548 (getCurrentListMap!2720 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapIsEmpty!29710 () Bool)

(declare-fun mapRes!29710 () Bool)

(assert (=> mapIsEmpty!29710 mapRes!29710))

(declare-fun b!905425 () Bool)

(declare-fun res!611111 () Bool)

(declare-fun e!507408 () Bool)

(assert (=> b!905425 (=> res!611111 e!507408)))

(declare-fun lt!408547 () ListLongMap!10937)

(declare-fun lt!408550 () V!29851)

(declare-fun apply!461 (ListLongMap!10937 (_ BitVec 64)) V!29851)

(assert (=> b!905425 (= res!611111 (not (= (apply!461 lt!408547 k!1033) lt!408550)))))

(declare-fun b!905426 () Bool)

(declare-fun e!507412 () Bool)

(assert (=> b!905426 (= e!507412 e!507408)))

(declare-fun res!611108 () Bool)

(assert (=> b!905426 (=> res!611108 e!507408)))

(assert (=> b!905426 (= res!611108 (not (contains!4496 lt!408547 k!1033)))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!905426 (= lt!408547 (getCurrentListMap!2720 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!905427 () Bool)

(declare-fun e!507410 () Bool)

(declare-fun tp_is_empty!18665 () Bool)

(assert (=> b!905427 (= e!507410 tp_is_empty!18665)))

(declare-fun b!905428 () Bool)

(assert (=> b!905428 (= e!507409 (not e!507412))))

(declare-fun res!611107 () Bool)

(assert (=> b!905428 (=> res!611107 e!507412)))

(assert (=> b!905428 (= res!611107 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26096 _keys!1386))))))

(declare-fun get!13483 (ValueCell!8851 V!29851) V!29851)

(declare-fun dynLambda!1335 (Int (_ BitVec 64)) V!29851)

(assert (=> b!905428 (= lt!408550 (get!13483 (select (arr!25635 _values!1152) i!717) (dynLambda!1335 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905428 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30693 0))(
  ( (Unit!30694) )
))
(declare-fun lt!408549 () Unit!30693)

(declare-fun lemmaKeyInListMapIsInArray!208 (array!53362 array!53360 (_ BitVec 32) (_ BitVec 32) V!29851 V!29851 (_ BitVec 64) Int) Unit!30693)

(assert (=> b!905428 (= lt!408549 (lemmaKeyInListMapIsInArray!208 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!905429 () Bool)

(declare-fun e!507406 () Bool)

(declare-fun e!507411 () Bool)

(assert (=> b!905429 (= e!507406 (and e!507411 mapRes!29710))))

(declare-fun condMapEmpty!29710 () Bool)

(declare-fun mapDefault!29710 () ValueCell!8851)

