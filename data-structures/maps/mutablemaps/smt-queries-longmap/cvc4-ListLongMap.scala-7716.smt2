; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96992 () Bool)

(assert start!96992)

(declare-fun mapNonEmpty!42709 () Bool)

(declare-fun mapRes!42709 () Bool)

(declare-fun tp!81630 () Bool)

(declare-fun e!629629 () Bool)

(assert (=> mapNonEmpty!42709 (= mapRes!42709 (and tp!81630 e!629629))))

(declare-datatypes ((V!41493 0))(
  ( (V!41494 (val!13694 Int)) )
))
(declare-datatypes ((ValueCell!12928 0))(
  ( (ValueCellFull!12928 (v!16326 V!41493)) (EmptyCell!12928) )
))
(declare-fun mapValue!42709 () ValueCell!12928)

(declare-fun mapRest!42709 () (Array (_ BitVec 32) ValueCell!12928))

(declare-fun mapKey!42709 () (_ BitVec 32))

(declare-datatypes ((array!71426 0))(
  ( (array!71427 (arr!34369 (Array (_ BitVec 32) ValueCell!12928)) (size!34906 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71426)

(assert (=> mapNonEmpty!42709 (= (arr!34369 _values!996) (store mapRest!42709 mapKey!42709 mapValue!42709))))

(declare-fun b!1103013 () Bool)

(declare-fun e!629631 () Bool)

(declare-fun e!629630 () Bool)

(assert (=> b!1103013 (= e!629631 (and e!629630 mapRes!42709))))

(declare-fun condMapEmpty!42709 () Bool)

(declare-fun mapDefault!42709 () ValueCell!12928)

