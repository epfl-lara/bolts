; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77576 () Bool)

(assert start!77576)

(declare-fun b_free!16133 () Bool)

(declare-fun b_next!16133 () Bool)

(assert (=> start!77576 (= b_free!16133 (not b_next!16133))))

(declare-fun tp!56661 () Bool)

(declare-fun b_and!26517 () Bool)

(assert (=> start!77576 (= tp!56661 b_and!26517)))

(declare-fun b!903380 () Bool)

(declare-fun e!506198 () Bool)

(declare-fun e!506195 () Bool)

(declare-fun mapRes!29539 () Bool)

(assert (=> b!903380 (= e!506198 (and e!506195 mapRes!29539))))

(declare-fun condMapEmpty!29539 () Bool)

(declare-datatypes ((V!29699 0))(
  ( (V!29700 (val!9326 Int)) )
))
(declare-datatypes ((ValueCell!8794 0))(
  ( (ValueCellFull!8794 (v!11831 V!29699)) (EmptyCell!8794) )
))
(declare-datatypes ((array!53142 0))(
  ( (array!53143 (arr!25526 (Array (_ BitVec 32) ValueCell!8794)) (size!25986 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53142)

(declare-fun mapDefault!29539 () ValueCell!8794)

