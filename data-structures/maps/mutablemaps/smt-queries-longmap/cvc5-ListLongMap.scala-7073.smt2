; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89528 () Bool)

(assert start!89528)

(declare-fun b!1026263 () Bool)

(declare-fun b_free!20491 () Bool)

(declare-fun b_next!20491 () Bool)

(assert (=> b!1026263 (= b_free!20491 (not b_next!20491))))

(declare-fun tp!72519 () Bool)

(declare-fun b_and!32755 () Bool)

(assert (=> b!1026263 (= tp!72519 b_and!32755)))

(declare-fun b!1026257 () Bool)

(declare-fun e!578958 () Bool)

(declare-fun tp_is_empty!24211 () Bool)

(assert (=> b!1026257 (= e!578958 tp_is_empty!24211)))

(declare-fun b!1026258 () Bool)

(declare-fun e!578959 () Bool)

(assert (=> b!1026258 (= e!578959 tp_is_empty!24211)))

(declare-fun b!1026259 () Bool)

(declare-fun res!687083 () Bool)

(declare-fun e!578956 () Bool)

(assert (=> b!1026259 (=> res!687083 e!578956)))

(declare-datatypes ((V!37155 0))(
  ( (V!37156 (val!12156 Int)) )
))
(declare-datatypes ((ValueCell!11402 0))(
  ( (ValueCellFull!11402 (v!14726 V!37155)) (EmptyCell!11402) )
))
(declare-datatypes ((array!64456 0))(
  ( (array!64457 (arr!31033 (Array (_ BitVec 32) (_ BitVec 64))) (size!31547 (_ BitVec 32))) )
))
(declare-datatypes ((array!64458 0))(
  ( (array!64459 (arr!31034 (Array (_ BitVec 32) ValueCell!11402)) (size!31548 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5398 0))(
  ( (LongMapFixedSize!5399 (defaultEntry!6051 Int) (mask!29738 (_ BitVec 32)) (extraKeys!5783 (_ BitVec 32)) (zeroValue!5887 V!37155) (minValue!5887 V!37155) (_size!2754 (_ BitVec 32)) (_keys!11195 array!64456) (_values!6074 array!64458) (_vacant!2754 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5398)

(assert (=> b!1026259 (= res!687083 (or (not (= (size!31548 (_values!6074 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29738 thiss!1427)))) (not (= (size!31547 (_keys!11195 thiss!1427)) (size!31548 (_values!6074 thiss!1427)))) (bvslt (mask!29738 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5783 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5783 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!37745 () Bool)

(declare-fun mapRes!37745 () Bool)

(assert (=> mapIsEmpty!37745 mapRes!37745))

(declare-fun b!1026260 () Bool)

(declare-fun e!578955 () Bool)

(assert (=> b!1026260 (= e!578955 (and e!578959 mapRes!37745))))

(declare-fun condMapEmpty!37745 () Bool)

(declare-fun mapDefault!37745 () ValueCell!11402)

