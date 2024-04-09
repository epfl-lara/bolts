; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93624 () Bool)

(assert start!93624)

(declare-fun mapIsEmpty!39040 () Bool)

(declare-fun mapRes!39040 () Bool)

(assert (=> mapIsEmpty!39040 mapRes!39040))

(declare-fun b!1059066 () Bool)

(declare-fun e!602747 () Bool)

(declare-fun tp_is_empty!24923 () Bool)

(assert (=> b!1059066 (= e!602747 tp_is_empty!24923)))

(declare-fun b!1059067 () Bool)

(declare-fun e!602746 () Bool)

(assert (=> b!1059067 (= e!602746 tp_is_empty!24923)))

(declare-fun b!1059065 () Bool)

(declare-fun e!602748 () Bool)

(assert (=> b!1059065 (= e!602748 (and e!602746 mapRes!39040))))

(declare-fun condMapEmpty!39040 () Bool)

(declare-datatypes ((V!38365 0))(
  ( (V!38366 (val!12512 Int)) )
))
(declare-datatypes ((ValueCell!11758 0))(
  ( (ValueCellFull!11758 (v!15122 V!38365)) (EmptyCell!11758) )
))
(declare-datatypes ((array!66852 0))(
  ( (array!66853 (arr!32135 (Array (_ BitVec 32) ValueCell!11758)) (size!32672 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66852)

(declare-fun mapDefault!39040 () ValueCell!11758)

