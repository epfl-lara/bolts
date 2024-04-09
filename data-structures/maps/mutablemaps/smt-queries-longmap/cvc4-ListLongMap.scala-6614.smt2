; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83644 () Bool)

(assert start!83644)

(declare-fun mapIsEmpty!35708 () Bool)

(declare-fun mapRes!35708 () Bool)

(assert (=> mapIsEmpty!35708 mapRes!35708))

(declare-fun b!976776 () Bool)

(declare-fun e!550551 () Bool)

(declare-fun tp_is_empty!22463 () Bool)

(assert (=> b!976776 (= e!550551 tp_is_empty!22463)))

(declare-fun mapNonEmpty!35708 () Bool)

(declare-fun tp!67961 () Bool)

(assert (=> mapNonEmpty!35708 (= mapRes!35708 (and tp!67961 e!550551))))

(declare-datatypes ((V!34933 0))(
  ( (V!34934 (val!11282 Int)) )
))
(declare-datatypes ((ValueCell!10750 0))(
  ( (ValueCellFull!10750 (v!13843 V!34933)) (EmptyCell!10750) )
))
(declare-datatypes ((array!60941 0))(
  ( (array!60942 (arr!29329 (Array (_ BitVec 32) ValueCell!10750)) (size!29809 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60941)

(declare-fun mapValue!35708 () ValueCell!10750)

(declare-fun mapKey!35708 () (_ BitVec 32))

(declare-fun mapRest!35708 () (Array (_ BitVec 32) ValueCell!10750))

(assert (=> mapNonEmpty!35708 (= (arr!29329 _values!1278) (store mapRest!35708 mapKey!35708 mapValue!35708))))

(declare-fun b!976777 () Bool)

(declare-fun e!550553 () Bool)

(assert (=> b!976777 (= e!550553 tp_is_empty!22463)))

(declare-fun b!976778 () Bool)

(declare-fun e!550554 () Bool)

(assert (=> b!976778 (= e!550554 (and e!550553 mapRes!35708))))

(declare-fun condMapEmpty!35708 () Bool)

(declare-fun mapDefault!35708 () ValueCell!10750)

