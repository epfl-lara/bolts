; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78260 () Bool)

(assert start!78260)

(declare-fun b_free!16723 () Bool)

(declare-fun b_next!16723 () Bool)

(assert (=> start!78260 (= b_free!16723 (not b_next!16723))))

(declare-fun tp!58447 () Bool)

(declare-fun b_and!27317 () Bool)

(assert (=> start!78260 (= tp!58447 b_and!27317)))

(declare-fun b!912953 () Bool)

(declare-fun res!615982 () Bool)

(declare-fun e!512107 () Bool)

(assert (=> b!912953 (=> (not res!615982) (not e!512107))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((V!30487 0))(
  ( (V!30488 (val!9621 Int)) )
))
(declare-fun zeroValue!1094 () V!30487)

(declare-datatypes ((array!54284 0))(
  ( (array!54285 (arr!26092 (Array (_ BitVec 32) (_ BitVec 64))) (size!26552 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54284)

(declare-fun k!1033 () (_ BitVec 64))

(declare-datatypes ((ValueCell!9089 0))(
  ( (ValueCellFull!9089 (v!12132 V!30487)) (EmptyCell!9089) )
))
(declare-datatypes ((array!54286 0))(
  ( (array!54287 (arr!26093 (Array (_ BitVec 32) ValueCell!9089)) (size!26553 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54286)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30487)

(declare-datatypes ((tuple2!12596 0))(
  ( (tuple2!12597 (_1!6308 (_ BitVec 64)) (_2!6308 V!30487)) )
))
(declare-datatypes ((List!18436 0))(
  ( (Nil!18433) (Cons!18432 (h!19578 tuple2!12596) (t!26033 List!18436)) )
))
(declare-datatypes ((ListLongMap!11307 0))(
  ( (ListLongMap!11308 (toList!5669 List!18436)) )
))
(declare-fun contains!4680 (ListLongMap!11307 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2899 (array!54284 array!54286 (_ BitVec 32) (_ BitVec 32) V!30487 V!30487 (_ BitVec 32) Int) ListLongMap!11307)

(assert (=> b!912953 (= res!615982 (contains!4680 (getCurrentListMap!2899 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!912954 () Bool)

(declare-fun res!615979 () Bool)

(assert (=> b!912954 (=> (not res!615979) (not e!512107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54284 (_ BitVec 32)) Bool)

(assert (=> b!912954 (= res!615979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30439 () Bool)

(declare-fun mapRes!30439 () Bool)

(assert (=> mapIsEmpty!30439 mapRes!30439))

(declare-fun mapNonEmpty!30439 () Bool)

(declare-fun tp!58446 () Bool)

(declare-fun e!512109 () Bool)

(assert (=> mapNonEmpty!30439 (= mapRes!30439 (and tp!58446 e!512109))))

(declare-fun mapValue!30439 () ValueCell!9089)

(declare-fun mapRest!30439 () (Array (_ BitVec 32) ValueCell!9089))

(declare-fun mapKey!30439 () (_ BitVec 32))

(assert (=> mapNonEmpty!30439 (= (arr!26093 _values!1152) (store mapRest!30439 mapKey!30439 mapValue!30439))))

(declare-fun b!912955 () Bool)

(declare-fun res!615978 () Bool)

(assert (=> b!912955 (=> (not res!615978) (not e!512107))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!912955 (= res!615978 (and (= (select (arr!26092 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912956 () Bool)

(declare-fun e!512111 () Bool)

(declare-fun tp_is_empty!19141 () Bool)

(assert (=> b!912956 (= e!512111 tp_is_empty!19141)))

(declare-fun b!912957 () Bool)

(assert (=> b!912957 (= e!512109 tp_is_empty!19141)))

(declare-fun b!912958 () Bool)

(declare-fun res!615977 () Bool)

(assert (=> b!912958 (=> (not res!615977) (not e!512107))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912958 (= res!615977 (inRange!0 i!717 mask!1756))))

(declare-fun b!912959 () Bool)

(declare-fun e!512110 () Bool)

(assert (=> b!912959 (= e!512110 (and e!512111 mapRes!30439))))

(declare-fun condMapEmpty!30439 () Bool)

(declare-fun mapDefault!30439 () ValueCell!9089)

