; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73386 () Bool)

(assert start!73386)

(declare-fun b_free!14273 () Bool)

(declare-fun b_next!14273 () Bool)

(assert (=> start!73386 (= b_free!14273 (not b_next!14273))))

(declare-fun tp!50324 () Bool)

(declare-fun b_and!23647 () Bool)

(assert (=> start!73386 (= tp!50324 b_and!23647)))

(declare-fun b!855888 () Bool)

(declare-fun res!581407 () Bool)

(declare-fun e!477149 () Bool)

(assert (=> b!855888 (=> (not res!581407) (not e!477149))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855888 (= res!581407 (validKeyInArray!0 k!854))))

(declare-fun b!855889 () Bool)

(declare-fun res!581411 () Bool)

(assert (=> b!855889 (=> (not res!581411) (not e!477149))))

(declare-datatypes ((array!48988 0))(
  ( (array!48989 (arr!23521 (Array (_ BitVec 32) (_ BitVec 64))) (size!23962 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48988)

(declare-datatypes ((List!16740 0))(
  ( (Nil!16737) (Cons!16736 (h!17867 (_ BitVec 64)) (t!23389 List!16740)) )
))
(declare-fun arrayNoDuplicates!0 (array!48988 (_ BitVec 32) List!16740) Bool)

(assert (=> b!855889 (= res!581411 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16737))))

(declare-fun b!855890 () Bool)

(declare-fun res!581409 () Bool)

(assert (=> b!855890 (=> (not res!581409) (not e!477149))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26925 0))(
  ( (V!26926 (val!8252 Int)) )
))
(declare-datatypes ((ValueCell!7765 0))(
  ( (ValueCellFull!7765 (v!10673 V!26925)) (EmptyCell!7765) )
))
(declare-datatypes ((array!48990 0))(
  ( (array!48991 (arr!23522 (Array (_ BitVec 32) ValueCell!7765)) (size!23963 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48990)

(assert (=> b!855890 (= res!581409 (and (= (size!23963 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23962 _keys!868) (size!23963 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855891 () Bool)

(declare-fun e!477148 () Bool)

(declare-fun e!477147 () Bool)

(declare-fun mapRes!26213 () Bool)

(assert (=> b!855891 (= e!477148 (and e!477147 mapRes!26213))))

(declare-fun condMapEmpty!26213 () Bool)

(declare-fun mapDefault!26213 () ValueCell!7765)

