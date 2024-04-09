; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131848 () Bool)

(assert start!131848)

(declare-fun b!1543172 () Bool)

(declare-fun e!858802 () Bool)

(declare-fun tp_is_empty!37805 () Bool)

(assert (=> b!1543172 (= e!858802 tp_is_empty!37805)))

(declare-fun b!1543173 () Bool)

(declare-fun e!858801 () Bool)

(declare-fun e!858799 () Bool)

(declare-fun mapRes!58411 () Bool)

(assert (=> b!1543173 (= e!858801 (and e!858799 mapRes!58411))))

(declare-fun condMapEmpty!58411 () Bool)

(declare-datatypes ((V!58849 0))(
  ( (V!58850 (val!18980 Int)) )
))
(declare-datatypes ((ValueCell!17992 0))(
  ( (ValueCellFull!17992 (v!21778 V!58849)) (EmptyCell!17992) )
))
(declare-datatypes ((array!102791 0))(
  ( (array!102792 (arr!49593 (Array (_ BitVec 32) ValueCell!17992)) (size!50144 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102791)

(declare-fun mapDefault!58411 () ValueCell!17992)

