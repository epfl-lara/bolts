; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106020 () Bool)

(assert start!106020)

(declare-fun b_free!27473 () Bool)

(declare-fun b_next!27473 () Bool)

(assert (=> start!106020 (= b_free!27473 (not b_next!27473))))

(declare-fun tp!95961 () Bool)

(declare-fun b_and!45421 () Bool)

(assert (=> start!106020 (= tp!95961 b_and!45421)))

(declare-fun b!1262071 () Bool)

(declare-fun e!718421 () Bool)

(declare-fun e!718419 () Bool)

(declare-fun mapRes!50374 () Bool)

(assert (=> b!1262071 (= e!718421 (and e!718419 mapRes!50374))))

(declare-fun condMapEmpty!50374 () Bool)

(declare-datatypes ((V!48531 0))(
  ( (V!48532 (val!16250 Int)) )
))
(declare-datatypes ((ValueCell!15424 0))(
  ( (ValueCellFull!15424 (v!18956 V!48531)) (EmptyCell!15424) )
))
(declare-datatypes ((array!82353 0))(
  ( (array!82354 (arr!39722 (Array (_ BitVec 32) ValueCell!15424)) (size!40259 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82353)

(declare-fun mapDefault!50374 () ValueCell!15424)

