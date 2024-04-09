; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81126 () Bool)

(assert start!81126)

(declare-fun b!949209 () Bool)

(declare-fun b_free!18217 () Bool)

(declare-fun b_next!18217 () Bool)

(assert (=> b!949209 (= b_free!18217 (not b_next!18217))))

(declare-fun tp!63238 () Bool)

(declare-fun b_and!29681 () Bool)

(assert (=> b!949209 (= tp!63238 b_and!29681)))

(declare-fun b!949208 () Bool)

(declare-fun res!636714 () Bool)

(declare-fun e!534413 () Bool)

(assert (=> b!949208 (=> (not res!636714) (not e!534413))))

(declare-datatypes ((V!32599 0))(
  ( (V!32600 (val!10413 Int)) )
))
(declare-datatypes ((ValueCell!9881 0))(
  ( (ValueCellFull!9881 (v!12953 V!32599)) (EmptyCell!9881) )
))
(declare-datatypes ((array!57484 0))(
  ( (array!57485 (arr!27641 (Array (_ BitVec 32) ValueCell!9881)) (size!28118 (_ BitVec 32))) )
))
(declare-datatypes ((array!57486 0))(
  ( (array!57487 (arr!27642 (Array (_ BitVec 32) (_ BitVec 64))) (size!28119 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4912 0))(
  ( (LongMapFixedSize!4913 (defaultEntry!5763 Int) (mask!27536 (_ BitVec 32)) (extraKeys!5495 (_ BitVec 32)) (zeroValue!5599 V!32599) (minValue!5599 V!32599) (_size!2511 (_ BitVec 32)) (_keys!10687 array!57486) (_values!5786 array!57484) (_vacant!2511 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4912)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!949208 (= res!636714 (validMask!0 (mask!27536 thiss!1141)))))

(declare-fun tp_is_empty!20725 () Bool)

(declare-fun e!534410 () Bool)

(declare-fun e!534411 () Bool)

(declare-fun array_inv!21402 (array!57486) Bool)

(declare-fun array_inv!21403 (array!57484) Bool)

(assert (=> b!949209 (= e!534411 (and tp!63238 tp_is_empty!20725 (array_inv!21402 (_keys!10687 thiss!1141)) (array_inv!21403 (_values!5786 thiss!1141)) e!534410))))

(declare-fun b!949210 () Bool)

(declare-fun e!534414 () Bool)

(assert (=> b!949210 (= e!534414 tp_is_empty!20725)))

(declare-fun b!949211 () Bool)

(declare-fun e!534409 () Bool)

(assert (=> b!949211 (= e!534409 tp_is_empty!20725)))

(declare-fun b!949212 () Bool)

(declare-fun mapRes!32989 () Bool)

(assert (=> b!949212 (= e!534410 (and e!534409 mapRes!32989))))

(declare-fun condMapEmpty!32989 () Bool)

(declare-fun mapDefault!32989 () ValueCell!9881)

