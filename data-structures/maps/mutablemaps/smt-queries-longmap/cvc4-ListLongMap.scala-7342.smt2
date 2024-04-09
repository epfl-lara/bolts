; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93784 () Bool)

(assert start!93784)

(declare-fun b_free!21233 () Bool)

(declare-fun b_next!21233 () Bool)

(assert (=> start!93784 (= b_free!21233 (not b_next!21233))))

(declare-fun tp!75120 () Bool)

(declare-fun b_and!33961 () Bool)

(assert (=> start!93784 (= tp!75120 b_and!33961)))

(declare-fun b!1060385 () Bool)

(declare-fun e!603747 () Bool)

(declare-fun e!603749 () Bool)

(declare-fun mapRes!39232 () Bool)

(assert (=> b!1060385 (= e!603747 (and e!603749 mapRes!39232))))

(declare-fun condMapEmpty!39232 () Bool)

(declare-datatypes ((V!38525 0))(
  ( (V!38526 (val!12572 Int)) )
))
(declare-datatypes ((ValueCell!11818 0))(
  ( (ValueCellFull!11818 (v!15183 V!38525)) (EmptyCell!11818) )
))
(declare-datatypes ((array!67082 0))(
  ( (array!67083 (arr!32246 (Array (_ BitVec 32) ValueCell!11818)) (size!32783 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67082)

(declare-fun mapDefault!39232 () ValueCell!11818)

