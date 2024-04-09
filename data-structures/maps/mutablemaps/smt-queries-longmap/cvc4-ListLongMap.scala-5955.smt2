; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77588 () Bool)

(assert start!77588)

(declare-fun b_free!16145 () Bool)

(declare-fun b_next!16145 () Bool)

(assert (=> start!77588 (= b_free!16145 (not b_next!16145))))

(declare-fun tp!56697 () Bool)

(declare-fun b_and!26529 () Bool)

(assert (=> start!77588 (= tp!56697 b_and!26529)))

(declare-fun b!903506 () Bool)

(declare-fun e!506284 () Bool)

(declare-fun e!506287 () Bool)

(declare-fun mapRes!29557 () Bool)

(assert (=> b!903506 (= e!506284 (and e!506287 mapRes!29557))))

(declare-fun condMapEmpty!29557 () Bool)

(declare-datatypes ((V!29715 0))(
  ( (V!29716 (val!9332 Int)) )
))
(declare-datatypes ((ValueCell!8800 0))(
  ( (ValueCellFull!8800 (v!11837 V!29715)) (EmptyCell!8800) )
))
(declare-datatypes ((array!53164 0))(
  ( (array!53165 (arr!25537 (Array (_ BitVec 32) ValueCell!8800)) (size!25997 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53164)

(declare-fun mapDefault!29557 () ValueCell!8800)

