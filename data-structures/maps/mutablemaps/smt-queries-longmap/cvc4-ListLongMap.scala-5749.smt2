; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74354 () Bool)

(assert start!74354)

(declare-fun b_free!15089 () Bool)

(declare-fun b_next!15089 () Bool)

(assert (=> start!74354 (= b_free!15089 (not b_next!15089))))

(declare-fun tp!52942 () Bool)

(declare-fun b_and!24883 () Bool)

(assert (=> start!74354 (= tp!52942 b_and!24883)))

(declare-fun b!874494 () Bool)

(declare-fun res!594412 () Bool)

(declare-fun e!486909 () Bool)

(assert (=> b!874494 (=> (not res!594412) (not e!486909))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874494 (= res!594412 (validMask!0 mask!1196))))

(declare-fun b!874495 () Bool)

(declare-fun res!594411 () Bool)

(assert (=> b!874495 (=> (not res!594411) (not e!486909))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50778 0))(
  ( (array!50779 (arr!24413 (Array (_ BitVec 32) (_ BitVec 64))) (size!24854 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50778)

(declare-datatypes ((V!28157 0))(
  ( (V!28158 (val!8714 Int)) )
))
(declare-datatypes ((ValueCell!8227 0))(
  ( (ValueCellFull!8227 (v!11139 V!28157)) (EmptyCell!8227) )
))
(declare-datatypes ((array!50780 0))(
  ( (array!50781 (arr!24414 (Array (_ BitVec 32) ValueCell!8227)) (size!24855 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50780)

(assert (=> b!874495 (= res!594411 (and (= (size!24855 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24854 _keys!868) (size!24855 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874496 () Bool)

(declare-fun e!486911 () Bool)

(declare-fun e!486913 () Bool)

(declare-fun mapRes!27608 () Bool)

(assert (=> b!874496 (= e!486911 (and e!486913 mapRes!27608))))

(declare-fun condMapEmpty!27608 () Bool)

(declare-fun mapDefault!27608 () ValueCell!8227)

