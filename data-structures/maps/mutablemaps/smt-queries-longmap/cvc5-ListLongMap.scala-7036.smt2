; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89264 () Bool)

(assert start!89264)

(declare-fun b!1023034 () Bool)

(declare-fun b_free!20269 () Bool)

(declare-fun b_next!20269 () Bool)

(assert (=> b!1023034 (= b_free!20269 (not b_next!20269))))

(declare-fun tp!71842 () Bool)

(declare-fun b_and!32509 () Bool)

(assert (=> b!1023034 (= tp!71842 b_and!32509)))

(declare-fun b!1023032 () Bool)

(declare-fun res!685290 () Bool)

(declare-fun e!576468 () Bool)

(assert (=> b!1023032 (=> (not res!685290) (not e!576468))))

(declare-datatypes ((V!36859 0))(
  ( (V!36860 (val!12045 Int)) )
))
(declare-datatypes ((ValueCell!11291 0))(
  ( (ValueCellFull!11291 (v!14615 V!36859)) (EmptyCell!11291) )
))
(declare-datatypes ((array!64006 0))(
  ( (array!64007 (arr!30811 (Array (_ BitVec 32) (_ BitVec 64))) (size!31323 (_ BitVec 32))) )
))
(declare-datatypes ((array!64008 0))(
  ( (array!64009 (arr!30812 (Array (_ BitVec 32) ValueCell!11291)) (size!31324 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5176 0))(
  ( (LongMapFixedSize!5177 (defaultEntry!5940 Int) (mask!29548 (_ BitVec 32)) (extraKeys!5672 (_ BitVec 32)) (zeroValue!5776 V!36859) (minValue!5776 V!36859) (_size!2643 (_ BitVec 32)) (_keys!11082 array!64006) (_values!5963 array!64008) (_vacant!2643 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5176)

(assert (=> b!1023032 (= res!685290 (and (= (size!31324 (_values!5963 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29548 thiss!1427))) (= (size!31323 (_keys!11082 thiss!1427)) (size!31324 (_values!5963 thiss!1427))) (bvsge (mask!29548 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5672 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5672 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5672 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5672 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5672 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5672 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5672 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1023033 () Bool)

(declare-fun e!576469 () Bool)

(declare-fun tp_is_empty!23989 () Bool)

(assert (=> b!1023033 (= e!576469 tp_is_empty!23989)))

(declare-fun mapIsEmpty!37401 () Bool)

(declare-fun mapRes!37401 () Bool)

(assert (=> mapIsEmpty!37401 mapRes!37401))

(declare-fun e!576467 () Bool)

(declare-fun e!576465 () Bool)

(declare-fun array_inv!23749 (array!64006) Bool)

(declare-fun array_inv!23750 (array!64008) Bool)

(assert (=> b!1023034 (= e!576465 (and tp!71842 tp_is_empty!23989 (array_inv!23749 (_keys!11082 thiss!1427)) (array_inv!23750 (_values!5963 thiss!1427)) e!576467))))

(declare-fun b!1023035 () Bool)

(declare-fun res!685289 () Bool)

(assert (=> b!1023035 (=> (not res!685289) (not e!576468))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023035 (= res!685289 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023036 () Bool)

(assert (=> b!1023036 (= e!576467 (and e!576469 mapRes!37401))))

(declare-fun condMapEmpty!37401 () Bool)

(declare-fun mapDefault!37401 () ValueCell!11291)

