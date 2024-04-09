; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90284 () Bool)

(assert start!90284)

(declare-fun b!1033105 () Bool)

(declare-fun b_free!20767 () Bool)

(declare-fun b_next!20767 () Bool)

(assert (=> b!1033105 (= b_free!20767 (not b_next!20767))))

(declare-fun tp!73396 () Bool)

(declare-fun b_and!33253 () Bool)

(assert (=> b!1033105 (= tp!73396 b_and!33253)))

(declare-fun b!1033101 () Bool)

(declare-fun res!690431 () Bool)

(declare-fun e!583908 () Bool)

(assert (=> b!1033101 (=> (not res!690431) (not e!583908))))

(declare-datatypes ((V!37523 0))(
  ( (V!37524 (val!12294 Int)) )
))
(declare-datatypes ((ValueCell!11540 0))(
  ( (ValueCellFull!11540 (v!14872 V!37523)) (EmptyCell!11540) )
))
(declare-datatypes ((array!65034 0))(
  ( (array!65035 (arr!31309 (Array (_ BitVec 32) (_ BitVec 64))) (size!31832 (_ BitVec 32))) )
))
(declare-datatypes ((array!65036 0))(
  ( (array!65037 (arr!31310 (Array (_ BitVec 32) ValueCell!11540)) (size!31833 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5674 0))(
  ( (LongMapFixedSize!5675 (defaultEntry!6211 Int) (mask!30049 (_ BitVec 32)) (extraKeys!5943 (_ BitVec 32)) (zeroValue!6047 V!37523) (minValue!6047 V!37523) (_size!2892 (_ BitVec 32)) (_keys!11386 array!65034) (_values!6234 array!65036) (_vacant!2892 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5674)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033101 (= res!690431 (validMask!0 (mask!30049 thiss!1427)))))

(declare-fun b!1033102 () Bool)

(assert (=> b!1033102 (= e!583908 (and (= (size!31833 (_values!6234 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30049 thiss!1427))) (= (size!31832 (_keys!11386 thiss!1427)) (size!31833 (_values!6234 thiss!1427))) (bvsge (mask!30049 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5943 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5943 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5943 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsgt (bvand (extraKeys!5943 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!38207 () Bool)

(declare-fun mapRes!38207 () Bool)

(assert (=> mapIsEmpty!38207 mapRes!38207))

(declare-fun b!1033103 () Bool)

(declare-fun e!583909 () Bool)

(declare-fun e!583910 () Bool)

(assert (=> b!1033103 (= e!583909 (and e!583910 mapRes!38207))))

(declare-fun condMapEmpty!38207 () Bool)

(declare-fun mapDefault!38207 () ValueCell!11540)

