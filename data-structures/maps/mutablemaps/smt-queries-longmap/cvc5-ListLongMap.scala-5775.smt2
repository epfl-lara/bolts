; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74580 () Bool)

(assert start!74580)

(declare-fun b_free!15241 () Bool)

(declare-fun b_next!15241 () Bool)

(assert (=> start!74580 (= b_free!15241 (not b_next!15241))))

(declare-fun tp!53406 () Bool)

(declare-fun b_and!25135 () Bool)

(assert (=> start!74580 (= tp!53406 b_and!25135)))

(declare-fun b!878162 () Bool)

(declare-fun e!488791 () Bool)

(declare-fun e!488789 () Bool)

(declare-fun mapRes!27843 () Bool)

(assert (=> b!878162 (= e!488791 (and e!488789 mapRes!27843))))

(declare-fun condMapEmpty!27843 () Bool)

(declare-datatypes ((V!28361 0))(
  ( (V!28362 (val!8790 Int)) )
))
(declare-datatypes ((ValueCell!8303 0))(
  ( (ValueCellFull!8303 (v!11226 V!28361)) (EmptyCell!8303) )
))
(declare-datatypes ((array!51078 0))(
  ( (array!51079 (arr!24561 (Array (_ BitVec 32) ValueCell!8303)) (size!25002 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51078)

(declare-fun mapDefault!27843 () ValueCell!8303)

