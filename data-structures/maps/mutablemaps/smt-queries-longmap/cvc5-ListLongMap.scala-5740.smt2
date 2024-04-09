; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74296 () Bool)

(assert start!74296)

(declare-fun b_free!15031 () Bool)

(declare-fun b_next!15031 () Bool)

(assert (=> start!74296 (= b_free!15031 (not b_next!15031))))

(declare-fun tp!52768 () Bool)

(declare-fun b_and!24825 () Bool)

(assert (=> start!74296 (= tp!52768 b_and!24825)))

(declare-fun b!873536 () Bool)

(declare-fun e!486475 () Bool)

(declare-fun tp_is_empty!17275 () Bool)

(assert (=> b!873536 (= e!486475 tp_is_empty!17275)))

(declare-fun b!873537 () Bool)

(declare-fun res!593713 () Bool)

(declare-fun e!486478 () Bool)

(assert (=> b!873537 (=> (not res!593713) (not e!486478))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50666 0))(
  ( (array!50667 (arr!24357 (Array (_ BitVec 32) (_ BitVec 64))) (size!24798 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50666)

(declare-datatypes ((V!28081 0))(
  ( (V!28082 (val!8685 Int)) )
))
(declare-datatypes ((ValueCell!8198 0))(
  ( (ValueCellFull!8198 (v!11110 V!28081)) (EmptyCell!8198) )
))
(declare-datatypes ((array!50668 0))(
  ( (array!50669 (arr!24358 (Array (_ BitVec 32) ValueCell!8198)) (size!24799 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50668)

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!873537 (= res!593713 (and (= (size!24799 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24798 _keys!868) (size!24799 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873538 () Bool)

(declare-fun res!593714 () Bool)

(assert (=> b!873538 (=> (not res!593714) (not e!486478))))

(declare-datatypes ((List!17359 0))(
  ( (Nil!17356) (Cons!17355 (h!18486 (_ BitVec 64)) (t!24408 List!17359)) )
))
(declare-fun arrayNoDuplicates!0 (array!50666 (_ BitVec 32) List!17359) Bool)

(assert (=> b!873538 (= res!593714 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17356))))

(declare-fun b!873539 () Bool)

(declare-fun res!593716 () Bool)

(assert (=> b!873539 (=> (not res!593716) (not e!486478))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!873539 (= res!593716 (and (= (select (arr!24357 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!873540 () Bool)

(declare-fun e!486477 () Bool)

(declare-fun mapRes!27521 () Bool)

(assert (=> b!873540 (= e!486477 (and e!486475 mapRes!27521))))

(declare-fun condMapEmpty!27521 () Bool)

(declare-fun mapDefault!27521 () ValueCell!8198)

