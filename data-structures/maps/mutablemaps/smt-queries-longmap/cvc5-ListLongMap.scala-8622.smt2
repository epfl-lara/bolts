; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105034 () Bool)

(assert start!105034)

(declare-fun b_free!26767 () Bool)

(declare-fun b_next!26767 () Bool)

(assert (=> start!105034 (= b_free!26767 (not b_next!26767))))

(declare-fun tp!93798 () Bool)

(declare-fun b_and!44563 () Bool)

(assert (=> start!105034 (= tp!93798 b_and!44563)))

(declare-fun b!1251406 () Bool)

(declare-fun e!710659 () Bool)

(declare-fun e!710660 () Bool)

(declare-fun mapRes!49270 () Bool)

(assert (=> b!1251406 (= e!710659 (and e!710660 mapRes!49270))))

(declare-fun condMapEmpty!49270 () Bool)

(declare-datatypes ((V!47591 0))(
  ( (V!47592 (val!15897 Int)) )
))
(declare-datatypes ((ValueCell!15071 0))(
  ( (ValueCellFull!15071 (v!18594 V!47591)) (EmptyCell!15071) )
))
(declare-datatypes ((array!80983 0))(
  ( (array!80984 (arr!39052 (Array (_ BitVec 32) ValueCell!15071)) (size!39589 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80983)

(declare-fun mapDefault!49270 () ValueCell!15071)

