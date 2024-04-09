; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8178 () Bool)

(assert start!8178)

(declare-fun b!51663 () Bool)

(declare-fun b_free!1605 () Bool)

(declare-fun b_next!1605 () Bool)

(assert (=> b!51663 (= b_free!1605 (not b_next!1605))))

(declare-fun tp!6905 () Bool)

(declare-fun b_and!2825 () Bool)

(assert (=> b!51663 (= tp!6905 b_and!2825)))

(declare-fun b!51651 () Bool)

(declare-fun b_free!1607 () Bool)

(declare-fun b_next!1607 () Bool)

(assert (=> b!51651 (= b_free!1607 (not b_next!1607))))

(declare-fun tp!6906 () Bool)

(declare-fun b_and!2827 () Bool)

(assert (=> b!51651 (= tp!6906 b_and!2827)))

(declare-fun tp_is_empty!2219 () Bool)

(declare-fun e!33524 () Bool)

(declare-datatypes ((V!2605 0))(
  ( (V!2606 (val!1154 Int)) )
))
(declare-datatypes ((array!3356 0))(
  ( (array!3357 (arr!1602 (Array (_ BitVec 32) (_ BitVec 64))) (size!1829 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!766 0))(
  ( (ValueCellFull!766 (v!2194 V!2605)) (EmptyCell!766) )
))
(declare-datatypes ((array!3358 0))(
  ( (array!3359 (arr!1603 (Array (_ BitVec 32) ValueCell!766)) (size!1830 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!440 0))(
  ( (LongMapFixedSize!441 (defaultEntry!1934 Int) (mask!5743 (_ BitVec 32)) (extraKeys!1825 (_ BitVec 32)) (zeroValue!1852 V!2605) (minValue!1852 V!2605) (_size!269 (_ BitVec 32)) (_keys!3550 array!3356) (_values!1917 array!3358) (_vacant!269 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!440)

(declare-fun e!33520 () Bool)

(declare-fun array_inv!931 (array!3356) Bool)

(declare-fun array_inv!932 (array!3358) Bool)

(assert (=> b!51651 (= e!33520 (and tp!6906 tp_is_empty!2219 (array_inv!931 (_keys!3550 newMap!16)) (array_inv!932 (_values!1917 newMap!16)) e!33524))))

(declare-fun b!51652 () Bool)

(declare-fun e!33514 () Bool)

(declare-fun mapRes!2315 () Bool)

(assert (=> b!51652 (= e!33524 (and e!33514 mapRes!2315))))

(declare-fun condMapEmpty!2315 () Bool)

(declare-fun mapDefault!2316 () ValueCell!766)

