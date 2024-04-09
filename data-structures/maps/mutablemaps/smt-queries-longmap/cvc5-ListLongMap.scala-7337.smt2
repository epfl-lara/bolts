; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93750 () Bool)

(assert start!93750)

(declare-fun b_free!21199 () Bool)

(declare-fun b_next!21199 () Bool)

(assert (=> start!93750 (= b_free!21199 (not b_next!21199))))

(declare-fun tp!75018 () Bool)

(declare-fun b_and!33927 () Bool)

(assert (=> start!93750 (= tp!75018 b_and!33927)))

(declare-fun b!1060028 () Bool)

(declare-fun e!603494 () Bool)

(declare-fun e!603493 () Bool)

(declare-fun mapRes!39181 () Bool)

(assert (=> b!1060028 (= e!603494 (and e!603493 mapRes!39181))))

(declare-fun condMapEmpty!39181 () Bool)

(declare-datatypes ((V!38481 0))(
  ( (V!38482 (val!12555 Int)) )
))
(declare-datatypes ((ValueCell!11801 0))(
  ( (ValueCellFull!11801 (v!15166 V!38481)) (EmptyCell!11801) )
))
(declare-datatypes ((array!67022 0))(
  ( (array!67023 (arr!32216 (Array (_ BitVec 32) ValueCell!11801)) (size!32753 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67022)

(declare-fun mapDefault!39181 () ValueCell!11801)

