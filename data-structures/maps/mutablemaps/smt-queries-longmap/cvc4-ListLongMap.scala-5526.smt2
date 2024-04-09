; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72972 () Bool)

(assert start!72972)

(declare-fun b_free!13859 () Bool)

(declare-fun b_next!13859 () Bool)

(assert (=> start!72972 (= b_free!13859 (not b_next!13859))))

(declare-fun tp!49082 () Bool)

(declare-fun b_and!22963 () Bool)

(assert (=> start!72972 (= tp!49082 b_and!22963)))

(declare-fun b!846907 () Bool)

(declare-fun res!575534 () Bool)

(declare-fun e!472649 () Bool)

(assert (=> b!846907 (=> (not res!575534) (not e!472649))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48186 0))(
  ( (array!48187 (arr!23120 (Array (_ BitVec 32) (_ BitVec 64))) (size!23561 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48186)

(assert (=> b!846907 (= res!575534 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23561 _keys!868))))))

(declare-fun res!575533 () Bool)

(assert (=> start!72972 (=> (not res!575533) (not e!472649))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72972 (= res!575533 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23561 _keys!868))))))

(assert (=> start!72972 e!472649))

(declare-fun tp_is_empty!15995 () Bool)

(assert (=> start!72972 tp_is_empty!15995))

(assert (=> start!72972 true))

(assert (=> start!72972 tp!49082))

(declare-fun array_inv!18346 (array!48186) Bool)

(assert (=> start!72972 (array_inv!18346 _keys!868)))

(declare-datatypes ((V!26373 0))(
  ( (V!26374 (val!8045 Int)) )
))
(declare-datatypes ((ValueCell!7558 0))(
  ( (ValueCellFull!7558 (v!10466 V!26373)) (EmptyCell!7558) )
))
(declare-datatypes ((array!48188 0))(
  ( (array!48189 (arr!23121 (Array (_ BitVec 32) ValueCell!7558)) (size!23562 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48188)

(declare-fun e!472646 () Bool)

(declare-fun array_inv!18347 (array!48188) Bool)

(assert (=> start!72972 (and (array_inv!18347 _values!688) e!472646)))

(declare-fun b!846908 () Bool)

(declare-fun e!472648 () Bool)

(declare-fun mapRes!25592 () Bool)

(assert (=> b!846908 (= e!472646 (and e!472648 mapRes!25592))))

(declare-fun condMapEmpty!25592 () Bool)

(declare-fun mapDefault!25592 () ValueCell!7558)

