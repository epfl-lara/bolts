; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80998 () Bool)

(assert start!80998)

(declare-fun b!948306 () Bool)

(declare-fun b_free!18203 () Bool)

(declare-fun b_next!18203 () Bool)

(assert (=> b!948306 (= b_free!18203 (not b_next!18203))))

(declare-fun tp!63185 () Bool)

(declare-fun b_and!29653 () Bool)

(assert (=> b!948306 (= tp!63185 b_and!29653)))

(declare-fun b!948300 () Bool)

(declare-fun e!533864 () Bool)

(declare-datatypes ((V!32579 0))(
  ( (V!32580 (val!10406 Int)) )
))
(declare-datatypes ((ValueCell!9874 0))(
  ( (ValueCellFull!9874 (v!12943 V!32579)) (EmptyCell!9874) )
))
(declare-datatypes ((array!57450 0))(
  ( (array!57451 (arr!27627 (Array (_ BitVec 32) ValueCell!9874)) (size!28102 (_ BitVec 32))) )
))
(declare-datatypes ((array!57452 0))(
  ( (array!57453 (arr!27628 (Array (_ BitVec 32) (_ BitVec 64))) (size!28103 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4898 0))(
  ( (LongMapFixedSize!4899 (defaultEntry!5751 Int) (mask!27504 (_ BitVec 32)) (extraKeys!5483 (_ BitVec 32)) (zeroValue!5587 V!32579) (minValue!5587 V!32579) (_size!2504 (_ BitVec 32)) (_keys!10666 array!57452) (_values!5774 array!57450) (_vacant!2504 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4898)

(assert (=> b!948300 (= e!533864 (and (= (size!28102 (_values!5774 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27504 thiss!1141))) (not (= (size!28103 (_keys!10666 thiss!1141)) (size!28102 (_values!5774 thiss!1141))))))))

(declare-fun b!948301 () Bool)

(declare-fun e!533865 () Bool)

(declare-fun e!533867 () Bool)

(declare-fun mapRes!32957 () Bool)

(assert (=> b!948301 (= e!533865 (and e!533867 mapRes!32957))))

(declare-fun condMapEmpty!32957 () Bool)

(declare-fun mapDefault!32957 () ValueCell!9874)

