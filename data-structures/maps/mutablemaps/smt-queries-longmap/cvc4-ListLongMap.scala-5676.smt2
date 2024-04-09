; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73872 () Bool)

(assert start!73872)

(declare-fun b_free!14759 () Bool)

(declare-fun b_next!14759 () Bool)

(assert (=> start!73872 (= b_free!14759 (not b_next!14759))))

(declare-fun tp!51781 () Bool)

(declare-fun b_and!24515 () Bool)

(assert (=> start!73872 (= tp!51781 b_and!24515)))

(declare-fun b!867075 () Bool)

(declare-fun res!589238 () Bool)

(declare-fun e!483021 () Bool)

(assert (=> b!867075 (=> (not res!589238) (not e!483021))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49930 0))(
  ( (array!49931 (arr!23992 (Array (_ BitVec 32) (_ BitVec 64))) (size!24433 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49930)

(declare-datatypes ((V!27573 0))(
  ( (V!27574 (val!8495 Int)) )
))
(declare-datatypes ((ValueCell!8008 0))(
  ( (ValueCellFull!8008 (v!10916 V!27573)) (EmptyCell!8008) )
))
(declare-datatypes ((array!49932 0))(
  ( (array!49933 (arr!23993 (Array (_ BitVec 32) ValueCell!8008)) (size!24434 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49932)

(assert (=> b!867075 (= res!589238 (and (= (size!24434 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24433 _keys!868) (size!24434 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!867076 () Bool)

(declare-fun res!589239 () Bool)

(assert (=> b!867076 (=> (not res!589239) (not e!483021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867076 (= res!589239 (validMask!0 mask!1196))))

(declare-fun b!867077 () Bool)

(declare-fun e!483019 () Bool)

(declare-fun e!483020 () Bool)

(declare-fun mapRes!26942 () Bool)

(assert (=> b!867077 (= e!483019 (and e!483020 mapRes!26942))))

(declare-fun condMapEmpty!26942 () Bool)

(declare-fun mapDefault!26942 () ValueCell!8008)

