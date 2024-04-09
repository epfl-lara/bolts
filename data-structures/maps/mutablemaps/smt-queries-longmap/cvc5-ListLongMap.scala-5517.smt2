; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72914 () Bool)

(assert start!72914)

(declare-fun b_free!13801 () Bool)

(declare-fun b_next!13801 () Bool)

(assert (=> start!72914 (= b_free!13801 (not b_next!13801))))

(declare-fun tp!48908 () Bool)

(declare-fun b_and!22905 () Bool)

(assert (=> start!72914 (= tp!48908 b_and!22905)))

(declare-fun mapNonEmpty!25505 () Bool)

(declare-fun mapRes!25505 () Bool)

(declare-fun tp!48907 () Bool)

(declare-fun e!472214 () Bool)

(assert (=> mapNonEmpty!25505 (= mapRes!25505 (and tp!48907 e!472214))))

(declare-datatypes ((V!26297 0))(
  ( (V!26298 (val!8016 Int)) )
))
(declare-datatypes ((ValueCell!7529 0))(
  ( (ValueCellFull!7529 (v!10437 V!26297)) (EmptyCell!7529) )
))
(declare-fun mapRest!25505 () (Array (_ BitVec 32) ValueCell!7529))

(declare-fun mapValue!25505 () ValueCell!7529)

(declare-fun mapKey!25505 () (_ BitVec 32))

(declare-datatypes ((array!48074 0))(
  ( (array!48075 (arr!23064 (Array (_ BitVec 32) ValueCell!7529)) (size!23505 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48074)

(assert (=> mapNonEmpty!25505 (= (arr!23064 _values!688) (store mapRest!25505 mapKey!25505 mapValue!25505))))

(declare-fun b!845950 () Bool)

(declare-fun res!574839 () Bool)

(declare-fun e!472213 () Bool)

(assert (=> b!845950 (=> (not res!574839) (not e!472213))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48076 0))(
  ( (array!48077 (arr!23065 (Array (_ BitVec 32) (_ BitVec 64))) (size!23506 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48076)

(assert (=> b!845950 (= res!574839 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23506 _keys!868))))))

(declare-fun b!845951 () Bool)

(declare-fun tp_is_empty!15937 () Bool)

(assert (=> b!845951 (= e!472214 tp_is_empty!15937)))

(declare-fun mapIsEmpty!25505 () Bool)

(assert (=> mapIsEmpty!25505 mapRes!25505))

(declare-fun b!845952 () Bool)

(declare-fun e!472215 () Bool)

(assert (=> b!845952 (= e!472215 tp_is_empty!15937)))

(declare-fun b!845953 () Bool)

(declare-fun e!472211 () Bool)

(assert (=> b!845953 (= e!472211 (and e!472215 mapRes!25505))))

(declare-fun condMapEmpty!25505 () Bool)

(declare-fun mapDefault!25505 () ValueCell!7529)

