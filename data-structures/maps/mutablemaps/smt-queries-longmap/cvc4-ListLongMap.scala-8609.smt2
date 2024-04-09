; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104938 () Bool)

(assert start!104938)

(declare-fun b_free!26693 () Bool)

(declare-fun b_next!26693 () Bool)

(assert (=> start!104938 (= b_free!26693 (not b_next!26693))))

(declare-fun tp!93573 () Bool)

(declare-fun b_and!44479 () Bool)

(assert (=> start!104938 (= tp!93573 b_and!44479)))

(declare-fun b!1250250 () Bool)

(declare-fun e!709785 () Bool)

(declare-fun e!709784 () Bool)

(declare-fun mapRes!49156 () Bool)

(assert (=> b!1250250 (= e!709785 (and e!709784 mapRes!49156))))

(declare-fun condMapEmpty!49156 () Bool)

(declare-datatypes ((V!47491 0))(
  ( (V!47492 (val!15860 Int)) )
))
(declare-datatypes ((ValueCell!15034 0))(
  ( (ValueCellFull!15034 (v!18556 V!47491)) (EmptyCell!15034) )
))
(declare-datatypes ((array!80841 0))(
  ( (array!80842 (arr!38982 (Array (_ BitVec 32) ValueCell!15034)) (size!39519 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80841)

(declare-fun mapDefault!49156 () ValueCell!15034)

