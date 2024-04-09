; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8096 () Bool)

(assert start!8096)

(declare-fun b!50873 () Bool)

(declare-fun b_free!1561 () Bool)

(declare-fun b_next!1561 () Bool)

(assert (=> b!50873 (= b_free!1561 (not b_next!1561))))

(declare-fun tp!6757 () Bool)

(declare-fun b_and!2781 () Bool)

(assert (=> b!50873 (= tp!6757 b_and!2781)))

(declare-fun b!50871 () Bool)

(declare-fun b_free!1563 () Bool)

(declare-fun b_next!1563 () Bool)

(assert (=> b!50871 (= b_free!1563 (not b_next!1563))))

(declare-fun tp!6758 () Bool)

(declare-fun b_and!2783 () Bool)

(assert (=> b!50871 (= tp!6758 b_and!2783)))

(declare-fun b!50866 () Bool)

(declare-fun e!32916 () Bool)

(declare-fun tp_is_empty!2197 () Bool)

(assert (=> b!50866 (= e!32916 tp_is_empty!2197)))

(declare-fun mapNonEmpty!2233 () Bool)

(declare-fun mapRes!2234 () Bool)

(declare-fun tp!6756 () Bool)

(declare-fun e!32914 () Bool)

(assert (=> mapNonEmpty!2233 (= mapRes!2234 (and tp!6756 e!32914))))

(declare-datatypes ((V!2577 0))(
  ( (V!2578 (val!1143 Int)) )
))
(declare-datatypes ((ValueCell!755 0))(
  ( (ValueCellFull!755 (v!2171 V!2577)) (EmptyCell!755) )
))
(declare-fun mapValue!2233 () ValueCell!755)

(declare-fun mapKey!2234 () (_ BitVec 32))

(declare-fun mapRest!2234 () (Array (_ BitVec 32) ValueCell!755))

(declare-datatypes ((array!3308 0))(
  ( (array!3309 (arr!1580 (Array (_ BitVec 32) (_ BitVec 64))) (size!1805 (_ BitVec 32))) )
))
(declare-datatypes ((array!3310 0))(
  ( (array!3311 (arr!1581 (Array (_ BitVec 32) ValueCell!755)) (size!1806 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!418 0))(
  ( (LongMapFixedSize!419 (defaultEntry!1923 Int) (mask!5720 (_ BitVec 32)) (extraKeys!1814 (_ BitVec 32)) (zeroValue!1841 V!2577) (minValue!1841 V!2577) (_size!258 (_ BitVec 32)) (_keys!3535 array!3308) (_values!1906 array!3310) (_vacant!258 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!240 0))(
  ( (Cell!241 (v!2172 LongMapFixedSize!418)) )
))
(declare-datatypes ((LongMap!240 0))(
  ( (LongMap!241 (underlying!131 Cell!240)) )
))
(declare-fun thiss!992 () LongMap!240)

(assert (=> mapNonEmpty!2233 (= (arr!1581 (_values!1906 (v!2172 (underlying!131 thiss!992)))) (store mapRest!2234 mapKey!2234 mapValue!2233))))

(declare-fun b!50868 () Bool)

(declare-fun e!32909 () Bool)

(declare-fun e!32907 () Bool)

(assert (=> b!50868 (= e!32909 e!32907)))

(declare-fun mapIsEmpty!2233 () Bool)

(declare-fun mapRes!2233 () Bool)

(assert (=> mapIsEmpty!2233 mapRes!2233))

(declare-fun mapIsEmpty!2234 () Bool)

(assert (=> mapIsEmpty!2234 mapRes!2234))

(declare-fun b!50869 () Bool)

(declare-fun e!32911 () Bool)

(declare-fun e!32915 () Bool)

(assert (=> b!50869 (= e!32911 (and e!32915 mapRes!2234))))

(declare-fun condMapEmpty!2234 () Bool)

(declare-fun mapDefault!2233 () ValueCell!755)

