; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73446 () Bool)

(assert start!73446)

(declare-fun b_free!14333 () Bool)

(declare-fun b_next!14333 () Bool)

(assert (=> start!73446 (= b_free!14333 (not b_next!14333))))

(declare-fun tp!50503 () Bool)

(declare-fun b_and!23707 () Bool)

(assert (=> start!73446 (= tp!50503 b_and!23707)))

(declare-fun b!856968 () Bool)

(declare-fun res!582217 () Bool)

(declare-fun e!477687 () Bool)

(assert (=> b!856968 (=> (not res!582217) (not e!477687))))

(declare-datatypes ((array!49104 0))(
  ( (array!49105 (arr!23579 (Array (_ BitVec 32) (_ BitVec 64))) (size!24020 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49104)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49104 (_ BitVec 32)) Bool)

(assert (=> b!856968 (= res!582217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!856969 () Bool)

(declare-fun res!582221 () Bool)

(assert (=> b!856969 (=> (not res!582221) (not e!477687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856969 (= res!582221 (validMask!0 mask!1196))))

(declare-fun b!856970 () Bool)

(declare-fun res!582224 () Bool)

(assert (=> b!856970 (=> (not res!582224) (not e!477687))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!856970 (= res!582224 (and (= (select (arr!23579 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!856971 () Bool)

(declare-fun e!477690 () Bool)

(declare-fun tp_is_empty!16469 () Bool)

(assert (=> b!856971 (= e!477690 tp_is_empty!16469)))

(declare-fun b!856972 () Bool)

(declare-fun e!477689 () Bool)

(declare-fun mapRes!26303 () Bool)

(assert (=> b!856972 (= e!477689 (and e!477690 mapRes!26303))))

(declare-fun condMapEmpty!26303 () Bool)

(declare-datatypes ((V!27005 0))(
  ( (V!27006 (val!8282 Int)) )
))
(declare-datatypes ((ValueCell!7795 0))(
  ( (ValueCellFull!7795 (v!10703 V!27005)) (EmptyCell!7795) )
))
(declare-datatypes ((array!49106 0))(
  ( (array!49107 (arr!23580 (Array (_ BitVec 32) ValueCell!7795)) (size!24021 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49106)

(declare-fun mapDefault!26303 () ValueCell!7795)

