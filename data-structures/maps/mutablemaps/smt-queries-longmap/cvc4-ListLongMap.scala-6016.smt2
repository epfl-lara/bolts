; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77996 () Bool)

(assert start!77996)

(declare-fun b_free!16511 () Bool)

(declare-fun b_next!16511 () Bool)

(assert (=> start!77996 (= b_free!16511 (not b_next!16511))))

(declare-fun tp!57801 () Bool)

(declare-fun b_and!27099 () Bool)

(assert (=> start!77996 (= tp!57801 b_and!27099)))

(declare-fun res!614278 () Bool)

(declare-fun e!510294 () Bool)

(assert (=> start!77996 (=> (not res!614278) (not e!510294))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77996 (= res!614278 (validMask!0 mask!1756))))

(assert (=> start!77996 e!510294))

(declare-datatypes ((V!30203 0))(
  ( (V!30204 (val!9515 Int)) )
))
(declare-datatypes ((ValueCell!8983 0))(
  ( (ValueCellFull!8983 (v!12023 V!30203)) (EmptyCell!8983) )
))
(declare-datatypes ((array!53872 0))(
  ( (array!53873 (arr!25889 (Array (_ BitVec 32) ValueCell!8983)) (size!26349 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53872)

(declare-fun e!510296 () Bool)

(declare-fun array_inv!20226 (array!53872) Bool)

(assert (=> start!77996 (and (array_inv!20226 _values!1152) e!510296)))

(assert (=> start!77996 tp!57801))

(assert (=> start!77996 true))

(declare-fun tp_is_empty!18929 () Bool)

(assert (=> start!77996 tp_is_empty!18929))

(declare-datatypes ((array!53874 0))(
  ( (array!53875 (arr!25890 (Array (_ BitVec 32) (_ BitVec 64))) (size!26350 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53874)

(declare-fun array_inv!20227 (array!53874) Bool)

(assert (=> start!77996 (array_inv!20227 _keys!1386)))

(declare-fun mapIsEmpty!30112 () Bool)

(declare-fun mapRes!30112 () Bool)

(assert (=> mapIsEmpty!30112 mapRes!30112))

(declare-fun b!910103 () Bool)

(declare-fun e!510293 () Bool)

(assert (=> b!910103 (= e!510296 (and e!510293 mapRes!30112))))

(declare-fun condMapEmpty!30112 () Bool)

(declare-fun mapDefault!30112 () ValueCell!8983)

