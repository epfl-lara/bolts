; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73844 () Bool)

(assert start!73844)

(declare-fun b_free!14731 () Bool)

(declare-fun b_next!14731 () Bool)

(assert (=> start!73844 (= b_free!14731 (not b_next!14731))))

(declare-fun tp!51698 () Bool)

(declare-fun b_and!24459 () Bool)

(assert (=> start!73844 (= tp!51698 b_and!24459)))

(declare-fun b!866375 () Bool)

(declare-fun res!588783 () Bool)

(declare-fun e!482648 () Bool)

(assert (=> b!866375 (=> (not res!588783) (not e!482648))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866375 (= res!588783 (validKeyInArray!0 k!854))))

(declare-fun b!866376 () Bool)

(declare-fun res!588778 () Bool)

(assert (=> b!866376 (=> (not res!588778) (not e!482648))))

(declare-datatypes ((array!49874 0))(
  ( (array!49875 (arr!23964 (Array (_ BitVec 32) (_ BitVec 64))) (size!24405 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49874)

(declare-datatypes ((List!17113 0))(
  ( (Nil!17110) (Cons!17109 (h!18240 (_ BitVec 64)) (t!24118 List!17113)) )
))
(declare-fun arrayNoDuplicates!0 (array!49874 (_ BitVec 32) List!17113) Bool)

(assert (=> b!866376 (= res!588778 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17110))))

(declare-fun mapNonEmpty!26900 () Bool)

(declare-fun mapRes!26900 () Bool)

(declare-fun tp!51697 () Bool)

(declare-fun e!482644 () Bool)

(assert (=> mapNonEmpty!26900 (= mapRes!26900 (and tp!51697 e!482644))))

(declare-datatypes ((V!27537 0))(
  ( (V!27538 (val!8481 Int)) )
))
(declare-datatypes ((ValueCell!7994 0))(
  ( (ValueCellFull!7994 (v!10902 V!27537)) (EmptyCell!7994) )
))
(declare-fun mapRest!26900 () (Array (_ BitVec 32) ValueCell!7994))

(declare-fun mapKey!26900 () (_ BitVec 32))

(declare-datatypes ((array!49876 0))(
  ( (array!49877 (arr!23965 (Array (_ BitVec 32) ValueCell!7994)) (size!24406 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49876)

(declare-fun mapValue!26900 () ValueCell!7994)

(assert (=> mapNonEmpty!26900 (= (arr!23965 _values!688) (store mapRest!26900 mapKey!26900 mapValue!26900))))

(declare-fun b!866377 () Bool)

(declare-fun e!482645 () Bool)

(declare-fun e!482649 () Bool)

(assert (=> b!866377 (= e!482645 (and e!482649 mapRes!26900))))

(declare-fun condMapEmpty!26900 () Bool)

(declare-fun mapDefault!26900 () ValueCell!7994)

