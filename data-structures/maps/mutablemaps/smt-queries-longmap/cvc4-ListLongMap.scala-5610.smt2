; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73476 () Bool)

(assert start!73476)

(declare-fun b_free!14363 () Bool)

(declare-fun b_next!14363 () Bool)

(assert (=> start!73476 (= b_free!14363 (not b_next!14363))))

(declare-fun tp!50593 () Bool)

(declare-fun b_and!23737 () Bool)

(assert (=> start!73476 (= tp!50593 b_and!23737)))

(declare-fun b!857508 () Bool)

(declare-fun e!477958 () Bool)

(declare-fun tp_is_empty!16499 () Bool)

(assert (=> b!857508 (= e!477958 tp_is_empty!16499)))

(declare-fun b!857509 () Bool)

(declare-fun res!582628 () Bool)

(declare-fun e!477959 () Bool)

(assert (=> b!857509 (=> (not res!582628) (not e!477959))))

(declare-datatypes ((array!49162 0))(
  ( (array!49163 (arr!23608 (Array (_ BitVec 32) (_ BitVec 64))) (size!24049 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49162)

(declare-datatypes ((List!16805 0))(
  ( (Nil!16802) (Cons!16801 (h!17932 (_ BitVec 64)) (t!23454 List!16805)) )
))
(declare-fun arrayNoDuplicates!0 (array!49162 (_ BitVec 32) List!16805) Bool)

(assert (=> b!857509 (= res!582628 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16802))))

(declare-fun b!857510 () Bool)

(declare-fun res!582624 () Bool)

(assert (=> b!857510 (=> (not res!582624) (not e!477959))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!857510 (= res!582624 (and (= (select (arr!23608 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26348 () Bool)

(declare-fun mapRes!26348 () Bool)

(assert (=> mapIsEmpty!26348 mapRes!26348))

(declare-fun b!857511 () Bool)

(declare-fun res!582630 () Bool)

(assert (=> b!857511 (=> (not res!582630) (not e!477959))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49162 (_ BitVec 32)) Bool)

(assert (=> b!857511 (= res!582630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!582626 () Bool)

(assert (=> start!73476 (=> (not res!582626) (not e!477959))))

(assert (=> start!73476 (= res!582626 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24049 _keys!868))))))

(assert (=> start!73476 e!477959))

(assert (=> start!73476 tp_is_empty!16499))

(assert (=> start!73476 true))

(assert (=> start!73476 tp!50593))

(declare-fun array_inv!18682 (array!49162) Bool)

(assert (=> start!73476 (array_inv!18682 _keys!868)))

(declare-datatypes ((V!27045 0))(
  ( (V!27046 (val!8297 Int)) )
))
(declare-datatypes ((ValueCell!7810 0))(
  ( (ValueCellFull!7810 (v!10718 V!27045)) (EmptyCell!7810) )
))
(declare-datatypes ((array!49164 0))(
  ( (array!49165 (arr!23609 (Array (_ BitVec 32) ValueCell!7810)) (size!24050 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49164)

(declare-fun e!477955 () Bool)

(declare-fun array_inv!18683 (array!49164) Bool)

(assert (=> start!73476 (and (array_inv!18683 _values!688) e!477955)))

(declare-fun b!857512 () Bool)

(declare-fun e!477957 () Bool)

(assert (=> b!857512 (= e!477957 tp_is_empty!16499)))

(declare-fun mapNonEmpty!26348 () Bool)

(declare-fun tp!50594 () Bool)

(assert (=> mapNonEmpty!26348 (= mapRes!26348 (and tp!50594 e!477957))))

(declare-fun mapValue!26348 () ValueCell!7810)

(declare-fun mapRest!26348 () (Array (_ BitVec 32) ValueCell!7810))

(declare-fun mapKey!26348 () (_ BitVec 32))

(assert (=> mapNonEmpty!26348 (= (arr!23609 _values!688) (store mapRest!26348 mapKey!26348 mapValue!26348))))

(declare-fun b!857513 () Bool)

(declare-fun res!582627 () Bool)

(assert (=> b!857513 (=> (not res!582627) (not e!477959))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!857513 (= res!582627 (and (= (size!24050 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24049 _keys!868) (size!24050 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857514 () Bool)

(declare-fun res!582623 () Bool)

(assert (=> b!857514 (=> (not res!582623) (not e!477959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857514 (= res!582623 (validMask!0 mask!1196))))

(declare-fun b!857515 () Bool)

(declare-fun res!582625 () Bool)

(assert (=> b!857515 (=> (not res!582625) (not e!477959))))

(assert (=> b!857515 (= res!582625 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24049 _keys!868))))))

(declare-fun b!857516 () Bool)

(declare-fun res!582629 () Bool)

(assert (=> b!857516 (=> (not res!582629) (not e!477959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857516 (= res!582629 (validKeyInArray!0 k!854))))

(declare-fun b!857517 () Bool)

(assert (=> b!857517 (= e!477955 (and e!477958 mapRes!26348))))

(declare-fun condMapEmpty!26348 () Bool)

(declare-fun mapDefault!26348 () ValueCell!7810)

