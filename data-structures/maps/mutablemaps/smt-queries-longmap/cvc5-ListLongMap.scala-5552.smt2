; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73124 () Bool)

(assert start!73124)

(declare-fun b_free!14011 () Bool)

(declare-fun b_next!14011 () Bool)

(assert (=> start!73124 (= b_free!14011 (not b_next!14011))))

(declare-fun tp!49537 () Bool)

(declare-fun b_and!23199 () Bool)

(assert (=> start!73124 (= tp!49537 b_and!23199)))

(declare-fun b!850263 () Bool)

(declare-fun e!474344 () Bool)

(declare-fun tp_is_empty!16147 () Bool)

(assert (=> b!850263 (= e!474344 tp_is_empty!16147)))

(declare-fun b!850264 () Bool)

(declare-fun res!577706 () Bool)

(declare-fun e!474348 () Bool)

(assert (=> b!850264 (=> (not res!577706) (not e!474348))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!48484 0))(
  ( (array!48485 (arr!23269 (Array (_ BitVec 32) (_ BitVec 64))) (size!23710 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48484)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!850264 (= res!577706 (and (= (select (arr!23269 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!850265 () Bool)

(declare-fun e!474347 () Bool)

(declare-fun mapRes!25820 () Bool)

(assert (=> b!850265 (= e!474347 (and e!474344 mapRes!25820))))

(declare-fun condMapEmpty!25820 () Bool)

(declare-datatypes ((V!26577 0))(
  ( (V!26578 (val!8121 Int)) )
))
(declare-datatypes ((ValueCell!7634 0))(
  ( (ValueCellFull!7634 (v!10542 V!26577)) (EmptyCell!7634) )
))
(declare-datatypes ((array!48486 0))(
  ( (array!48487 (arr!23270 (Array (_ BitVec 32) ValueCell!7634)) (size!23711 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48486)

(declare-fun mapDefault!25820 () ValueCell!7634)

