; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74568 () Bool)

(assert start!74568)

(declare-fun b_free!15229 () Bool)

(declare-fun b_next!15229 () Bool)

(assert (=> start!74568 (= b_free!15229 (not b_next!15229))))

(declare-fun tp!53370 () Bool)

(declare-fun b_and!25123 () Bool)

(assert (=> start!74568 (= tp!53370 b_and!25123)))

(declare-fun b!877964 () Bool)

(declare-fun e!488699 () Bool)

(declare-fun e!488703 () Bool)

(declare-fun mapRes!27825 () Bool)

(assert (=> b!877964 (= e!488699 (and e!488703 mapRes!27825))))

(declare-fun condMapEmpty!27825 () Bool)

(declare-datatypes ((V!28345 0))(
  ( (V!28346 (val!8784 Int)) )
))
(declare-datatypes ((ValueCell!8297 0))(
  ( (ValueCellFull!8297 (v!11220 V!28345)) (EmptyCell!8297) )
))
(declare-datatypes ((array!51056 0))(
  ( (array!51057 (arr!24550 (Array (_ BitVec 32) ValueCell!8297)) (size!24991 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51056)

(declare-fun mapDefault!27825 () ValueCell!8297)

