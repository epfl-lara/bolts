; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131824 () Bool)

(assert start!131824)

(declare-fun b!1542956 () Bool)

(declare-fun e!858620 () Bool)

(declare-fun e!858622 () Bool)

(declare-fun mapRes!58375 () Bool)

(assert (=> b!1542956 (= e!858620 (and e!858622 mapRes!58375))))

(declare-fun condMapEmpty!58375 () Bool)

(declare-datatypes ((V!58817 0))(
  ( (V!58818 (val!18968 Int)) )
))
(declare-datatypes ((ValueCell!17980 0))(
  ( (ValueCellFull!17980 (v!21766 V!58817)) (EmptyCell!17980) )
))
(declare-datatypes ((array!102749 0))(
  ( (array!102750 (arr!49572 (Array (_ BitVec 32) ValueCell!17980)) (size!50123 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102749)

(declare-fun mapDefault!58375 () ValueCell!17980)

