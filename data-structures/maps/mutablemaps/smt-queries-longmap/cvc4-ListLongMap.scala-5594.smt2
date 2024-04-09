; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73380 () Bool)

(assert start!73380)

(declare-fun b_free!14267 () Bool)

(declare-fun b_next!14267 () Bool)

(assert (=> start!73380 (= b_free!14267 (not b_next!14267))))

(declare-fun tp!50306 () Bool)

(declare-fun b_and!23641 () Bool)

(assert (=> start!73380 (= tp!50306 b_and!23641)))

(declare-fun b!855781 () Bool)

(declare-fun res!581332 () Bool)

(declare-fun e!477093 () Bool)

(assert (=> b!855781 (=> (not res!581332) (not e!477093))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48976 0))(
  ( (array!48977 (arr!23515 (Array (_ BitVec 32) (_ BitVec 64))) (size!23956 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48976)

(declare-datatypes ((V!26917 0))(
  ( (V!26918 (val!8249 Int)) )
))
(declare-datatypes ((ValueCell!7762 0))(
  ( (ValueCellFull!7762 (v!10670 V!26917)) (EmptyCell!7762) )
))
(declare-datatypes ((array!48978 0))(
  ( (array!48979 (arr!23516 (Array (_ BitVec 32) ValueCell!7762)) (size!23957 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48978)

(assert (=> b!855781 (= res!581332 (and (= (size!23957 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23956 _keys!868) (size!23957 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855782 () Bool)

(declare-fun res!581329 () Bool)

(assert (=> b!855782 (=> (not res!581329) (not e!477093))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855782 (= res!581329 (validMask!0 mask!1196))))

(declare-fun b!855783 () Bool)

(declare-fun res!581333 () Bool)

(assert (=> b!855783 (=> (not res!581333) (not e!477093))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855783 (= res!581333 (validKeyInArray!0 k!854))))

(declare-fun b!855784 () Bool)

(declare-fun e!477095 () Bool)

(declare-fun tp_is_empty!16403 () Bool)

(assert (=> b!855784 (= e!477095 tp_is_empty!16403)))

(declare-fun b!855785 () Bool)

(declare-fun e!477094 () Bool)

(declare-fun mapRes!26204 () Bool)

(assert (=> b!855785 (= e!477094 (and e!477095 mapRes!26204))))

(declare-fun condMapEmpty!26204 () Bool)

(declare-fun mapDefault!26204 () ValueCell!7762)

