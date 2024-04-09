; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8060 () Bool)

(assert start!8060)

(declare-fun b!50604 () Bool)

(declare-fun b_free!1549 () Bool)

(declare-fun b_next!1549 () Bool)

(assert (=> b!50604 (= b_free!1549 (not b_next!1549))))

(declare-fun tp!6714 () Bool)

(declare-fun b_and!2769 () Bool)

(assert (=> b!50604 (= tp!6714 b_and!2769)))

(declare-fun b!50593 () Bool)

(declare-fun b_free!1551 () Bool)

(declare-fun b_next!1551 () Bool)

(assert (=> b!50593 (= b_free!1551 (not b_next!1551))))

(declare-fun tp!6711 () Bool)

(declare-fun b_and!2771 () Bool)

(assert (=> b!50593 (= tp!6711 b_and!2771)))

(declare-fun b!50590 () Bool)

(declare-fun e!32703 () Bool)

(declare-fun tp_is_empty!2191 () Bool)

(assert (=> b!50590 (= e!32703 tp_is_empty!2191)))

(declare-fun b!50591 () Bool)

(declare-fun e!32704 () Bool)

(declare-fun mapRes!2207 () Bool)

(assert (=> b!50591 (= e!32704 (and e!32703 mapRes!2207))))

(declare-fun condMapEmpty!2208 () Bool)

(declare-datatypes ((V!2569 0))(
  ( (V!2570 (val!1140 Int)) )
))
(declare-datatypes ((array!3294 0))(
  ( (array!3295 (arr!1574 (Array (_ BitVec 32) (_ BitVec 64))) (size!1798 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!752 0))(
  ( (ValueCellFull!752 (v!2164 V!2569)) (EmptyCell!752) )
))
(declare-datatypes ((array!3296 0))(
  ( (array!3297 (arr!1575 (Array (_ BitVec 32) ValueCell!752)) (size!1799 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!412 0))(
  ( (LongMapFixedSize!413 (defaultEntry!1920 Int) (mask!5712 (_ BitVec 32)) (extraKeys!1811 (_ BitVec 32)) (zeroValue!1838 V!2569) (minValue!1838 V!2569) (_size!255 (_ BitVec 32)) (_keys!3530 array!3294) (_values!1903 array!3296) (_vacant!255 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!234 0))(
  ( (Cell!235 (v!2165 LongMapFixedSize!412)) )
))
(declare-datatypes ((LongMap!234 0))(
  ( (LongMap!235 (underlying!128 Cell!234)) )
))
(declare-fun thiss!992 () LongMap!234)

(declare-fun mapDefault!2208 () ValueCell!752)

