; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93606 () Bool)

(assert start!93606)

(declare-fun b!1058955 () Bool)

(declare-fun e!602657 () Bool)

(declare-fun e!602658 () Bool)

(declare-fun mapRes!39022 () Bool)

(assert (=> b!1058955 (= e!602657 (and e!602658 mapRes!39022))))

(declare-fun condMapEmpty!39022 () Bool)

(declare-datatypes ((V!38353 0))(
  ( (V!38354 (val!12507 Int)) )
))
(declare-datatypes ((ValueCell!11753 0))(
  ( (ValueCellFull!11753 (v!15117 V!38353)) (EmptyCell!11753) )
))
(declare-datatypes ((array!66834 0))(
  ( (array!66835 (arr!32127 (Array (_ BitVec 32) ValueCell!11753)) (size!32664 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66834)

(declare-fun mapDefault!39022 () ValueCell!11753)

