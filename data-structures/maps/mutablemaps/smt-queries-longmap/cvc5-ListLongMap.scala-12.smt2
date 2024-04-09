; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!450 () Bool)

(assert start!450)

(declare-fun mapNonEmpty!23 () Bool)

(declare-fun mapRes!23 () Bool)

(declare-fun tp!263 () Bool)

(declare-fun e!1006 () Bool)

(assert (=> mapNonEmpty!23 (= mapRes!23 (and tp!263 e!1006))))

(declare-fun mapKey!23 () (_ BitVec 32))

(declare-datatypes ((V!251 0))(
  ( (V!252 (val!33 Int)) )
))
(declare-datatypes ((ValueCell!11 0))(
  ( (ValueCellFull!11 (v!1119 V!251)) (EmptyCell!11) )
))
(declare-datatypes ((array!41 0))(
  ( (array!42 (arr!19 (Array (_ BitVec 32) ValueCell!11)) (size!81 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!41)

(declare-fun mapValue!23 () ValueCell!11)

(declare-fun mapRest!23 () (Array (_ BitVec 32) ValueCell!11))

(assert (=> mapNonEmpty!23 (= (arr!19 _values!1492) (store mapRest!23 mapKey!23 mapValue!23))))

(declare-fun b!2669 () Bool)

(declare-fun e!1004 () Bool)

(declare-fun e!1007 () Bool)

(assert (=> b!2669 (= e!1004 (and e!1007 mapRes!23))))

(declare-fun condMapEmpty!23 () Bool)

(declare-fun mapDefault!23 () ValueCell!11)

