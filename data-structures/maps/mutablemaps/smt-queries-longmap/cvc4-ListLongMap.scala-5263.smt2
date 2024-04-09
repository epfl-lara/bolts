; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70740 () Bool)

(assert start!70740)

(declare-fun b_free!12989 () Bool)

(declare-fun b_next!12989 () Bool)

(assert (=> start!70740 (= b_free!12989 (not b_next!12989))))

(declare-fun tp!45709 () Bool)

(declare-fun b_and!21869 () Bool)

(assert (=> start!70740 (= tp!45709 b_and!21869)))

(declare-fun mapIsEmpty!23656 () Bool)

(declare-fun mapRes!23656 () Bool)

(assert (=> mapIsEmpty!23656 mapRes!23656))

(declare-fun b!821227 () Bool)

(declare-fun e!456427 () Bool)

(declare-fun e!456428 () Bool)

(assert (=> b!821227 (= e!456427 (and e!456428 mapRes!23656))))

(declare-fun condMapEmpty!23656 () Bool)

(declare-datatypes ((V!24599 0))(
  ( (V!24600 (val!7397 Int)) )
))
(declare-datatypes ((ValueCell!6934 0))(
  ( (ValueCellFull!6934 (v!9824 V!24599)) (EmptyCell!6934) )
))
(declare-datatypes ((array!45556 0))(
  ( (array!45557 (arr!21825 (Array (_ BitVec 32) ValueCell!6934)) (size!22246 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45556)

(declare-fun mapDefault!23656 () ValueCell!6934)

