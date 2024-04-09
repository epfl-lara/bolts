; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93620 () Bool)

(assert start!93620)

(declare-fun b!1059029 () Bool)

(declare-fun e!602717 () Bool)

(declare-fun e!602714 () Bool)

(declare-fun mapRes!39034 () Bool)

(assert (=> b!1059029 (= e!602717 (and e!602714 mapRes!39034))))

(declare-fun condMapEmpty!39034 () Bool)

(declare-datatypes ((V!38361 0))(
  ( (V!38362 (val!12510 Int)) )
))
(declare-datatypes ((ValueCell!11756 0))(
  ( (ValueCellFull!11756 (v!15120 V!38361)) (EmptyCell!11756) )
))
(declare-datatypes ((array!66846 0))(
  ( (array!66847 (arr!32132 (Array (_ BitVec 32) ValueCell!11756)) (size!32669 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66846)

(declare-fun mapDefault!39034 () ValueCell!11756)

