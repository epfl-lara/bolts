; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72968 () Bool)

(assert start!72968)

(declare-fun b_free!13855 () Bool)

(declare-fun b_next!13855 () Bool)

(assert (=> start!72968 (= b_free!13855 (not b_next!13855))))

(declare-fun tp!49069 () Bool)

(declare-fun b_and!22959 () Bool)

(assert (=> start!72968 (= tp!49069 b_and!22959)))

(declare-fun mapNonEmpty!25586 () Bool)

(declare-fun mapRes!25586 () Bool)

(declare-fun tp!49070 () Bool)

(declare-fun e!472619 () Bool)

(assert (=> mapNonEmpty!25586 (= mapRes!25586 (and tp!49070 e!472619))))

(declare-datatypes ((V!26369 0))(
  ( (V!26370 (val!8043 Int)) )
))
(declare-datatypes ((ValueCell!7556 0))(
  ( (ValueCellFull!7556 (v!10464 V!26369)) (EmptyCell!7556) )
))
(declare-fun mapRest!25586 () (Array (_ BitVec 32) ValueCell!7556))

(declare-datatypes ((array!48178 0))(
  ( (array!48179 (arr!23116 (Array (_ BitVec 32) ValueCell!7556)) (size!23557 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48178)

(declare-fun mapValue!25586 () ValueCell!7556)

(declare-fun mapKey!25586 () (_ BitVec 32))

(assert (=> mapNonEmpty!25586 (= (arr!23116 _values!688) (store mapRest!25586 mapKey!25586 mapValue!25586))))

(declare-fun b!846842 () Bool)

(declare-fun res!575488 () Bool)

(declare-fun e!472618 () Bool)

(assert (=> b!846842 (=> (not res!575488) (not e!472618))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48180 0))(
  ( (array!48181 (arr!23117 (Array (_ BitVec 32) (_ BitVec 64))) (size!23558 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48180)

(assert (=> b!846842 (= res!575488 (and (= (size!23557 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23558 _keys!868) (size!23557 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25586 () Bool)

(assert (=> mapIsEmpty!25586 mapRes!25586))

(declare-fun b!846843 () Bool)

(declare-fun res!575487 () Bool)

(assert (=> b!846843 (=> (not res!575487) (not e!472618))))

(declare-datatypes ((List!16434 0))(
  ( (Nil!16431) (Cons!16430 (h!17561 (_ BitVec 64)) (t!22813 List!16434)) )
))
(declare-fun arrayNoDuplicates!0 (array!48180 (_ BitVec 32) List!16434) Bool)

(assert (=> b!846843 (= res!575487 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16431))))

(declare-fun b!846844 () Bool)

(declare-fun res!575490 () Bool)

(assert (=> b!846844 (=> (not res!575490) (not e!472618))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!846844 (= res!575490 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23558 _keys!868))))))

(declare-fun b!846845 () Bool)

(declare-fun e!472617 () Bool)

(declare-fun e!472620 () Bool)

(assert (=> b!846845 (= e!472617 (and e!472620 mapRes!25586))))

(declare-fun condMapEmpty!25586 () Bool)

(declare-fun mapDefault!25586 () ValueCell!7556)

