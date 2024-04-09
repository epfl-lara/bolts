; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131868 () Bool)

(assert start!131868)

(declare-fun mapNonEmpty!58441 () Bool)

(declare-fun mapRes!58441 () Bool)

(declare-fun tp!110969 () Bool)

(declare-fun e!858952 () Bool)

(assert (=> mapNonEmpty!58441 (= mapRes!58441 (and tp!110969 e!858952))))

(declare-datatypes ((V!58877 0))(
  ( (V!58878 (val!18990 Int)) )
))
(declare-datatypes ((ValueCell!18002 0))(
  ( (ValueCellFull!18002 (v!21788 V!58877)) (EmptyCell!18002) )
))
(declare-fun mapRest!58441 () (Array (_ BitVec 32) ValueCell!18002))

(declare-fun mapKey!58441 () (_ BitVec 32))

(declare-datatypes ((array!102829 0))(
  ( (array!102830 (arr!49612 (Array (_ BitVec 32) ValueCell!18002)) (size!50163 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102829)

(declare-fun mapValue!58441 () ValueCell!18002)

(assert (=> mapNonEmpty!58441 (= (arr!49612 _values!470) (store mapRest!58441 mapKey!58441 mapValue!58441))))

(declare-fun b!1543352 () Bool)

(declare-fun e!858948 () Bool)

(declare-fun e!858949 () Bool)

(assert (=> b!1543352 (= e!858948 (and e!858949 mapRes!58441))))

(declare-fun condMapEmpty!58441 () Bool)

(declare-fun mapDefault!58441 () ValueCell!18002)

