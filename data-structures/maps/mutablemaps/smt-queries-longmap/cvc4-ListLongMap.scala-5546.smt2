; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73092 () Bool)

(assert start!73092)

(declare-fun b_free!13979 () Bool)

(declare-fun b_next!13979 () Bool)

(assert (=> start!73092 (= b_free!13979 (not b_next!13979))))

(declare-fun tp!49441 () Bool)

(declare-fun b_and!23135 () Bool)

(assert (=> start!73092 (= tp!49441 b_and!23135)))

(declare-fun b!849511 () Bool)

(declare-fun res!577226 () Bool)

(declare-fun e!473958 () Bool)

(assert (=> b!849511 (=> (not res!577226) (not e!473958))))

(declare-datatypes ((array!48422 0))(
  ( (array!48423 (arr!23238 (Array (_ BitVec 32) (_ BitVec 64))) (size!23679 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48422)

(declare-datatypes ((List!16527 0))(
  ( (Nil!16524) (Cons!16523 (h!17654 (_ BitVec 64)) (t!22960 List!16527)) )
))
(declare-fun arrayNoDuplicates!0 (array!48422 (_ BitVec 32) List!16527) Bool)

(assert (=> b!849511 (= res!577226 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16524))))

(declare-fun b!849513 () Bool)

(declare-fun e!473964 () Bool)

(declare-fun e!473957 () Bool)

(declare-fun mapRes!25772 () Bool)

(assert (=> b!849513 (= e!473964 (and e!473957 mapRes!25772))))

(declare-fun condMapEmpty!25772 () Bool)

(declare-datatypes ((V!26533 0))(
  ( (V!26534 (val!8105 Int)) )
))
(declare-datatypes ((ValueCell!7618 0))(
  ( (ValueCellFull!7618 (v!10526 V!26533)) (EmptyCell!7618) )
))
(declare-datatypes ((array!48424 0))(
  ( (array!48425 (arr!23239 (Array (_ BitVec 32) ValueCell!7618)) (size!23680 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48424)

(declare-fun mapDefault!25772 () ValueCell!7618)

