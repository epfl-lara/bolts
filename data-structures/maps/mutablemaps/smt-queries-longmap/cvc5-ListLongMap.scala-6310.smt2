; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80892 () Bool)

(assert start!80892)

(declare-fun b!947497 () Bool)

(declare-fun b_free!18181 () Bool)

(declare-fun b_next!18181 () Bool)

(assert (=> b!947497 (= b_free!18181 (not b_next!18181))))

(declare-fun tp!63108 () Bool)

(declare-fun b_and!29621 () Bool)

(assert (=> b!947497 (= tp!63108 b_and!29621)))

(declare-fun mapNonEmpty!32914 () Bool)

(declare-fun mapRes!32914 () Bool)

(declare-fun tp!63109 () Bool)

(declare-fun e!533346 () Bool)

(assert (=> mapNonEmpty!32914 (= mapRes!32914 (and tp!63109 e!533346))))

(declare-fun mapKey!32914 () (_ BitVec 32))

(declare-datatypes ((V!32551 0))(
  ( (V!32552 (val!10395 Int)) )
))
(declare-datatypes ((ValueCell!9863 0))(
  ( (ValueCellFull!9863 (v!12929 V!32551)) (EmptyCell!9863) )
))
(declare-fun mapValue!32914 () ValueCell!9863)

(declare-datatypes ((array!57400 0))(
  ( (array!57401 (arr!27605 (Array (_ BitVec 32) ValueCell!9863)) (size!28079 (_ BitVec 32))) )
))
(declare-datatypes ((array!57402 0))(
  ( (array!57403 (arr!27606 (Array (_ BitVec 32) (_ BitVec 64))) (size!28080 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4876 0))(
  ( (LongMapFixedSize!4877 (defaultEntry!5735 Int) (mask!27473 (_ BitVec 32)) (extraKeys!5467 (_ BitVec 32)) (zeroValue!5571 V!32551) (minValue!5571 V!32551) (_size!2493 (_ BitVec 32)) (_keys!10644 array!57402) (_values!5758 array!57400) (_vacant!2493 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4876)

(declare-fun mapRest!32914 () (Array (_ BitVec 32) ValueCell!9863))

(assert (=> mapNonEmpty!32914 (= (arr!27605 (_values!5758 thiss!1141)) (store mapRest!32914 mapKey!32914 mapValue!32914))))

(declare-fun mapIsEmpty!32914 () Bool)

(assert (=> mapIsEmpty!32914 mapRes!32914))

(declare-fun res!635972 () Bool)

(declare-fun e!533341 () Bool)

(assert (=> start!80892 (=> (not res!635972) (not e!533341))))

(declare-fun valid!1835 (LongMapFixedSize!4876) Bool)

(assert (=> start!80892 (= res!635972 (valid!1835 thiss!1141))))

(assert (=> start!80892 e!533341))

(declare-fun e!533342 () Bool)

(assert (=> start!80892 e!533342))

(assert (=> start!80892 true))

(declare-fun b!947491 () Bool)

(declare-fun res!635971 () Bool)

(assert (=> b!947491 (=> (not res!635971) (not e!533341))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!947491 (= res!635971 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!947492 () Bool)

(declare-fun e!533347 () Bool)

(declare-fun e!533343 () Bool)

(assert (=> b!947492 (= e!533347 (and e!533343 mapRes!32914))))

(declare-fun condMapEmpty!32914 () Bool)

(declare-fun mapDefault!32914 () ValueCell!9863)

