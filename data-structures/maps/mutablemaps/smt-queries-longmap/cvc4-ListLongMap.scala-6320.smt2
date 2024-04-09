; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81238 () Bool)

(assert start!81238)

(declare-fun b!950188 () Bool)

(declare-fun b_free!18245 () Bool)

(declare-fun b_next!18245 () Bool)

(assert (=> b!950188 (= b_free!18245 (not b_next!18245))))

(declare-fun tp!63331 () Bool)

(declare-fun b_and!29719 () Bool)

(assert (=> b!950188 (= tp!63331 b_and!29719)))

(declare-fun b!950185 () Bool)

(declare-fun e!534996 () Bool)

(declare-fun tp_is_empty!20753 () Bool)

(assert (=> b!950185 (= e!534996 tp_is_empty!20753)))

(declare-fun b!950186 () Bool)

(declare-fun e!534999 () Bool)

(assert (=> b!950186 (= e!534999 tp_is_empty!20753)))

(declare-fun b!950187 () Bool)

(declare-fun e!535001 () Bool)

(declare-fun mapRes!33041 () Bool)

(assert (=> b!950187 (= e!535001 (and e!534996 mapRes!33041))))

(declare-fun condMapEmpty!33041 () Bool)

(declare-datatypes ((V!32635 0))(
  ( (V!32636 (val!10427 Int)) )
))
(declare-datatypes ((ValueCell!9895 0))(
  ( (ValueCellFull!9895 (v!12970 V!32635)) (EmptyCell!9895) )
))
(declare-datatypes ((array!57546 0))(
  ( (array!57547 (arr!27669 (Array (_ BitVec 32) ValueCell!9895)) (size!28147 (_ BitVec 32))) )
))
(declare-datatypes ((array!57548 0))(
  ( (array!57549 (arr!27670 (Array (_ BitVec 32) (_ BitVec 64))) (size!28148 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4940 0))(
  ( (LongMapFixedSize!4941 (defaultEntry!5781 Int) (mask!27574 (_ BitVec 32)) (extraKeys!5513 (_ BitVec 32)) (zeroValue!5617 V!32635) (minValue!5617 V!32635) (_size!2525 (_ BitVec 32)) (_keys!10713 array!57548) (_values!5804 array!57546) (_vacant!2525 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4940)

(declare-fun mapDefault!33041 () ValueCell!9895)

