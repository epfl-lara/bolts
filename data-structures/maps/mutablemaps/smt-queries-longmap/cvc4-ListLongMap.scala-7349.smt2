; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93838 () Bool)

(assert start!93838)

(declare-fun b_free!21275 () Bool)

(declare-fun b_next!21275 () Bool)

(assert (=> start!93838 (= b_free!21275 (not b_next!21275))))

(declare-fun tp!75248 () Bool)

(declare-fun b_and!34007 () Bool)

(assert (=> start!93838 (= tp!75248 b_and!34007)))

(declare-fun b!1060899 () Bool)

(declare-fun e!604110 () Bool)

(declare-fun e!604108 () Bool)

(declare-fun mapRes!39298 () Bool)

(assert (=> b!1060899 (= e!604110 (and e!604108 mapRes!39298))))

(declare-fun condMapEmpty!39298 () Bool)

(declare-datatypes ((V!38581 0))(
  ( (V!38582 (val!12593 Int)) )
))
(declare-datatypes ((ValueCell!11839 0))(
  ( (ValueCellFull!11839 (v!15204 V!38581)) (EmptyCell!11839) )
))
(declare-datatypes ((array!67164 0))(
  ( (array!67165 (arr!32286 (Array (_ BitVec 32) ValueCell!11839)) (size!32823 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67164)

(declare-fun mapDefault!39298 () ValueCell!11839)

