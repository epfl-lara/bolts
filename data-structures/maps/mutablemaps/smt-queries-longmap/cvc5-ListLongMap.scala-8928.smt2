; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108292 () Bool)

(assert start!108292)

(declare-fun b!1278083 () Bool)

(declare-fun e!730060 () Bool)

(declare-fun tp_is_empty!33481 () Bool)

(assert (=> b!1278083 (= e!730060 tp_is_empty!33481)))

(declare-fun b!1278084 () Bool)

(declare-fun e!730061 () Bool)

(assert (=> b!1278084 (= e!730061 tp_is_empty!33481)))

(declare-fun mapNonEmpty!51761 () Bool)

(declare-fun mapRes!51761 () Bool)

(declare-fun tp!98736 () Bool)

(assert (=> mapNonEmpty!51761 (= mapRes!51761 (and tp!98736 e!730061))))

(declare-datatypes ((V!49745 0))(
  ( (V!49746 (val!16815 Int)) )
))
(declare-datatypes ((ValueCell!15842 0))(
  ( (ValueCellFull!15842 (v!19412 V!49745)) (EmptyCell!15842) )
))
(declare-fun mapRest!51761 () (Array (_ BitVec 32) ValueCell!15842))

(declare-datatypes ((array!83997 0))(
  ( (array!83998 (arr!40502 (Array (_ BitVec 32) ValueCell!15842)) (size!41053 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!83997)

(declare-fun mapValue!51761 () ValueCell!15842)

(declare-fun mapKey!51761 () (_ BitVec 32))

(assert (=> mapNonEmpty!51761 (= (arr!40502 _values!1445) (store mapRest!51761 mapKey!51761 mapValue!51761))))

(declare-fun b!1278085 () Bool)

(declare-fun e!730058 () Bool)

(assert (=> b!1278085 (= e!730058 (and e!730060 mapRes!51761))))

(declare-fun condMapEmpty!51761 () Bool)

(declare-fun mapDefault!51761 () ValueCell!15842)

