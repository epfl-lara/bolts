; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77704 () Bool)

(assert start!77704)

(declare-fun b_free!16261 () Bool)

(declare-fun b_next!16261 () Bool)

(assert (=> start!77704 (= b_free!16261 (not b_next!16261))))

(declare-fun tp!57045 () Bool)

(declare-fun b_and!26693 () Bool)

(assert (=> start!77704 (= tp!57045 b_and!26693)))

(declare-fun mapNonEmpty!29731 () Bool)

(declare-fun mapRes!29731 () Bool)

(declare-fun tp!57046 () Bool)

(declare-fun e!507579 () Bool)

(assert (=> mapNonEmpty!29731 (= mapRes!29731 (and tp!57046 e!507579))))

(declare-datatypes ((V!29871 0))(
  ( (V!29872 (val!9390 Int)) )
))
(declare-datatypes ((ValueCell!8858 0))(
  ( (ValueCellFull!8858 (v!11895 V!29871)) (EmptyCell!8858) )
))
(declare-datatypes ((array!53388 0))(
  ( (array!53389 (arr!25649 (Array (_ BitVec 32) ValueCell!8858)) (size!26109 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53388)

(declare-fun mapKey!29731 () (_ BitVec 32))

(declare-fun mapValue!29731 () ValueCell!8858)

(declare-fun mapRest!29731 () (Array (_ BitVec 32) ValueCell!8858))

(assert (=> mapNonEmpty!29731 (= (arr!25649 _values!1152) (store mapRest!29731 mapKey!29731 mapValue!29731))))

(declare-fun b!905711 () Bool)

(declare-fun res!611314 () Bool)

(declare-fun e!507581 () Bool)

(assert (=> b!905711 (=> (not res!611314) (not e!507581))))

(declare-datatypes ((array!53390 0))(
  ( (array!53391 (arr!25650 (Array (_ BitVec 32) (_ BitVec 64))) (size!26110 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53390)

(declare-datatypes ((List!18103 0))(
  ( (Nil!18100) (Cons!18099 (h!19245 (_ BitVec 64)) (t!25544 List!18103)) )
))
(declare-fun arrayNoDuplicates!0 (array!53390 (_ BitVec 32) List!18103) Bool)

(assert (=> b!905711 (= res!611314 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18100))))

(declare-fun b!905712 () Bool)

(declare-fun res!611320 () Bool)

(declare-fun e!507576 () Bool)

(assert (=> b!905712 (=> (not res!611320) (not e!507576))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!905712 (= res!611320 (and (= (select (arr!25650 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905713 () Bool)

(declare-fun e!507575 () Bool)

(declare-fun e!507574 () Bool)

(assert (=> b!905713 (= e!507575 (and e!507574 mapRes!29731))))

(declare-fun condMapEmpty!29731 () Bool)

(declare-fun mapDefault!29731 () ValueCell!8858)

