; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93856 () Bool)

(assert start!93856)

(declare-fun b_free!21293 () Bool)

(declare-fun b_next!21293 () Bool)

(assert (=> start!93856 (= b_free!21293 (not b_next!21293))))

(declare-fun tp!75302 () Bool)

(declare-fun b_and!34025 () Bool)

(assert (=> start!93856 (= tp!75302 b_and!34025)))

(declare-fun b!1061088 () Bool)

(declare-fun e!604245 () Bool)

(declare-fun e!604247 () Bool)

(declare-fun mapRes!39325 () Bool)

(assert (=> b!1061088 (= e!604245 (and e!604247 mapRes!39325))))

(declare-fun condMapEmpty!39325 () Bool)

(declare-datatypes ((V!38605 0))(
  ( (V!38606 (val!12602 Int)) )
))
(declare-datatypes ((ValueCell!11848 0))(
  ( (ValueCellFull!11848 (v!15213 V!38605)) (EmptyCell!11848) )
))
(declare-datatypes ((array!67196 0))(
  ( (array!67197 (arr!32302 (Array (_ BitVec 32) ValueCell!11848)) (size!32839 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67196)

(declare-fun mapDefault!39325 () ValueCell!11848)

