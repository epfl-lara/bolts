; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72884 () Bool)

(assert start!72884)

(declare-fun b_free!13771 () Bool)

(declare-fun b_next!13771 () Bool)

(assert (=> start!72884 (= b_free!13771 (not b_next!13771))))

(declare-fun tp!48818 () Bool)

(declare-fun b_and!22875 () Bool)

(assert (=> start!72884 (= tp!48818 b_and!22875)))

(declare-fun res!574478 () Bool)

(declare-fun e!471988 () Bool)

(assert (=> start!72884 (=> (not res!574478) (not e!471988))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48016 0))(
  ( (array!48017 (arr!23035 (Array (_ BitVec 32) (_ BitVec 64))) (size!23476 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48016)

(assert (=> start!72884 (= res!574478 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23476 _keys!868))))))

(assert (=> start!72884 e!471988))

(assert (=> start!72884 true))

(assert (=> start!72884 tp!48818))

(declare-fun array_inv!18286 (array!48016) Bool)

(assert (=> start!72884 (array_inv!18286 _keys!868)))

(declare-datatypes ((V!26257 0))(
  ( (V!26258 (val!8001 Int)) )
))
(declare-datatypes ((ValueCell!7514 0))(
  ( (ValueCellFull!7514 (v!10422 V!26257)) (EmptyCell!7514) )
))
(declare-datatypes ((array!48018 0))(
  ( (array!48019 (arr!23036 (Array (_ BitVec 32) ValueCell!7514)) (size!23477 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48018)

(declare-fun e!471986 () Bool)

(declare-fun array_inv!18287 (array!48018) Bool)

(assert (=> start!72884 (and (array_inv!18287 _values!688) e!471986)))

(declare-fun tp_is_empty!15907 () Bool)

(assert (=> start!72884 tp_is_empty!15907))

(declare-fun b!845455 () Bool)

(declare-fun e!471990 () Bool)

(assert (=> b!845455 (= e!471990 tp_is_empty!15907)))

(declare-fun b!845456 () Bool)

(declare-fun res!574477 () Bool)

(assert (=> b!845456 (=> (not res!574477) (not e!471988))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!845456 (= res!574477 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23476 _keys!868))))))

(declare-fun b!845457 () Bool)

(declare-fun res!574475 () Bool)

(assert (=> b!845457 (=> (not res!574475) (not e!471988))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48016 (_ BitVec 32)) Bool)

(assert (=> b!845457 (= res!574475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!845458 () Bool)

(declare-fun res!574480 () Bool)

(assert (=> b!845458 (=> (not res!574480) (not e!471988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845458 (= res!574480 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25460 () Bool)

(declare-fun mapRes!25460 () Bool)

(assert (=> mapIsEmpty!25460 mapRes!25460))

(declare-fun b!845459 () Bool)

(declare-fun res!574482 () Bool)

(assert (=> b!845459 (=> (not res!574482) (not e!471988))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!845459 (= res!574482 (and (= (size!23477 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23476 _keys!868) (size!23477 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845460 () Bool)

(declare-fun res!574479 () Bool)

(assert (=> b!845460 (=> (not res!574479) (not e!471988))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!845460 (= res!574479 (and (= (select (arr!23035 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!845461 () Bool)

(declare-fun e!471987 () Bool)

(assert (=> b!845461 (= e!471986 (and e!471987 mapRes!25460))))

(declare-fun condMapEmpty!25460 () Bool)

(declare-fun mapDefault!25460 () ValueCell!7514)

