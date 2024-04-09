; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93840 () Bool)

(assert start!93840)

(declare-fun b_free!21277 () Bool)

(declare-fun b_next!21277 () Bool)

(assert (=> start!93840 (= b_free!21277 (not b_next!21277))))

(declare-fun tp!75254 () Bool)

(declare-fun b_and!34009 () Bool)

(assert (=> start!93840 (= tp!75254 b_and!34009)))

(declare-fun b!1060920 () Bool)

(declare-fun e!604124 () Bool)

(declare-fun e!604126 () Bool)

(declare-fun mapRes!39301 () Bool)

(assert (=> b!1060920 (= e!604124 (and e!604126 mapRes!39301))))

(declare-fun condMapEmpty!39301 () Bool)

(declare-datatypes ((V!38585 0))(
  ( (V!38586 (val!12594 Int)) )
))
(declare-datatypes ((ValueCell!11840 0))(
  ( (ValueCellFull!11840 (v!15205 V!38585)) (EmptyCell!11840) )
))
(declare-datatypes ((array!67166 0))(
  ( (array!67167 (arr!32287 (Array (_ BitVec 32) ValueCell!11840)) (size!32824 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67166)

(declare-fun mapDefault!39301 () ValueCell!11840)

