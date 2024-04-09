; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91180 () Bool)

(assert start!91180)

(declare-fun b!1040306 () Bool)

(declare-fun b_free!21011 () Bool)

(declare-fun b_next!21011 () Bool)

(assert (=> b!1040306 (= b_free!21011 (not b_next!21011))))

(declare-fun tp!74228 () Bool)

(declare-fun b_and!33561 () Bool)

(assert (=> b!1040306 (= tp!74228 b_and!33561)))

(declare-fun res!693677 () Bool)

(declare-fun e!589005 () Bool)

(assert (=> start!91180 (=> (not res!693677) (not e!589005))))

(declare-datatypes ((V!37847 0))(
  ( (V!37848 (val!12416 Int)) )
))
(declare-datatypes ((ValueCell!11662 0))(
  ( (ValueCellFull!11662 (v!15004 V!37847)) (EmptyCell!11662) )
))
(declare-datatypes ((array!65582 0))(
  ( (array!65583 (arr!31553 (Array (_ BitVec 32) (_ BitVec 64))) (size!32085 (_ BitVec 32))) )
))
(declare-datatypes ((array!65584 0))(
  ( (array!65585 (arr!31554 (Array (_ BitVec 32) ValueCell!11662)) (size!32086 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5918 0))(
  ( (LongMapFixedSize!5919 (defaultEntry!6341 Int) (mask!30327 (_ BitVec 32)) (extraKeys!6069 (_ BitVec 32)) (zeroValue!6175 V!37847) (minValue!6175 V!37847) (_size!3014 (_ BitVec 32)) (_keys!11558 array!65582) (_values!6364 array!65584) (_vacant!3014 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5918)

(declare-fun valid!2178 (LongMapFixedSize!5918) Bool)

(assert (=> start!91180 (= res!693677 (valid!2178 thiss!1427))))

(assert (=> start!91180 e!589005))

(declare-fun e!589006 () Bool)

(assert (=> start!91180 e!589006))

(assert (=> start!91180 true))

(declare-fun mapIsEmpty!38674 () Bool)

(declare-fun mapRes!38674 () Bool)

(assert (=> mapIsEmpty!38674 mapRes!38674))

(declare-fun b!1040303 () Bool)

(declare-fun e!589010 () Bool)

(declare-fun e!589009 () Bool)

(assert (=> b!1040303 (= e!589010 (and e!589009 mapRes!38674))))

(declare-fun condMapEmpty!38674 () Bool)

(declare-fun mapDefault!38674 () ValueCell!11662)

