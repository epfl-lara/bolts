; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89138 () Bool)

(assert start!89138)

(declare-fun b!1021417 () Bool)

(declare-fun b_free!20143 () Bool)

(declare-fun b_next!20143 () Bool)

(assert (=> b!1021417 (= b_free!20143 (not b_next!20143))))

(declare-fun tp!71465 () Bool)

(declare-fun b_and!32359 () Bool)

(assert (=> b!1021417 (= tp!71465 b_and!32359)))

(declare-fun mapIsEmpty!37212 () Bool)

(declare-fun mapRes!37212 () Bool)

(assert (=> mapIsEmpty!37212 mapRes!37212))

(declare-fun b!1021415 () Bool)

(declare-fun res!684453 () Bool)

(declare-fun e!575330 () Bool)

(assert (=> b!1021415 (=> (not res!684453) (not e!575330))))

(declare-datatypes ((V!36691 0))(
  ( (V!36692 (val!11982 Int)) )
))
(declare-datatypes ((ValueCell!11228 0))(
  ( (ValueCellFull!11228 (v!14552 V!36691)) (EmptyCell!11228) )
))
(declare-datatypes ((array!63754 0))(
  ( (array!63755 (arr!30685 (Array (_ BitVec 32) (_ BitVec 64))) (size!31197 (_ BitVec 32))) )
))
(declare-datatypes ((array!63756 0))(
  ( (array!63757 (arr!30686 (Array (_ BitVec 32) ValueCell!11228)) (size!31198 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5050 0))(
  ( (LongMapFixedSize!5051 (defaultEntry!5877 Int) (mask!29443 (_ BitVec 32)) (extraKeys!5609 (_ BitVec 32)) (zeroValue!5713 V!36691) (minValue!5713 V!36691) (_size!2580 (_ BitVec 32)) (_keys!11019 array!63754) (_values!5900 array!63756) (_vacant!2580 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5050)

(assert (=> b!1021415 (= res!684453 (and (= (size!31198 (_values!5900 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29443 thiss!1427))) (= (size!31197 (_keys!11019 thiss!1427)) (size!31198 (_values!5900 thiss!1427))) (bvsge (mask!29443 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5609 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5609 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5609 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5609 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5609 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5609 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5609 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1021416 () Bool)

(declare-fun res!684455 () Bool)

(assert (=> b!1021416 (=> (not res!684455) (not e!575330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63754 (_ BitVec 32)) Bool)

(assert (=> b!1021416 (= res!684455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11019 thiss!1427) (mask!29443 thiss!1427)))))

(declare-fun e!575331 () Bool)

(declare-fun e!575335 () Bool)

(declare-fun tp_is_empty!23863 () Bool)

(declare-fun array_inv!23659 (array!63754) Bool)

(declare-fun array_inv!23660 (array!63756) Bool)

(assert (=> b!1021417 (= e!575331 (and tp!71465 tp_is_empty!23863 (array_inv!23659 (_keys!11019 thiss!1427)) (array_inv!23660 (_values!5900 thiss!1427)) e!575335))))

(declare-fun b!1021418 () Bool)

(declare-fun e!575332 () Bool)

(assert (=> b!1021418 (= e!575332 tp_is_empty!23863)))

(declare-fun b!1021419 () Bool)

(declare-fun e!575333 () Bool)

(assert (=> b!1021419 (= e!575333 tp_is_empty!23863)))

(declare-fun b!1021420 () Bool)

(assert (=> b!1021420 (= e!575335 (and e!575333 mapRes!37212))))

(declare-fun condMapEmpty!37212 () Bool)

(declare-fun mapDefault!37212 () ValueCell!11228)

