; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81540 () Bool)

(assert start!81540)

(declare-fun b!952362 () Bool)

(declare-fun b_free!18293 () Bool)

(declare-fun b_next!18293 () Bool)

(assert (=> b!952362 (= b_free!18293 (not b_next!18293))))

(declare-fun tp!63501 () Bool)

(declare-fun b_and!29791 () Bool)

(assert (=> b!952362 (= tp!63501 b_and!29791)))

(declare-fun b!952353 () Bool)

(declare-fun e!536385 () Bool)

(declare-fun e!536381 () Bool)

(declare-fun mapRes!33139 () Bool)

(assert (=> b!952353 (= e!536385 (and e!536381 mapRes!33139))))

(declare-fun condMapEmpty!33139 () Bool)

(declare-datatypes ((V!32699 0))(
  ( (V!32700 (val!10451 Int)) )
))
(declare-datatypes ((ValueCell!9919 0))(
  ( (ValueCellFull!9919 (v!13002 V!32699)) (EmptyCell!9919) )
))
(declare-datatypes ((array!57658 0))(
  ( (array!57659 (arr!27717 (Array (_ BitVec 32) ValueCell!9919)) (size!28197 (_ BitVec 32))) )
))
(declare-datatypes ((array!57660 0))(
  ( (array!57661 (arr!27718 (Array (_ BitVec 32) (_ BitVec 64))) (size!28198 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4988 0))(
  ( (LongMapFixedSize!4989 (defaultEntry!5825 Int) (mask!27666 (_ BitVec 32)) (extraKeys!5557 (_ BitVec 32)) (zeroValue!5661 V!32699) (minValue!5661 V!32699) (_size!2549 (_ BitVec 32)) (_keys!10775 array!57660) (_values!5848 array!57658) (_vacant!2549 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4988)

(declare-fun mapDefault!33139 () ValueCell!9919)

