; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21970 () Bool)

(assert start!21970)

(declare-fun b!224606 () Bool)

(declare-fun b_free!6025 () Bool)

(declare-fun b_next!6025 () Bool)

(assert (=> b!224606 (= b_free!6025 (not b_next!6025))))

(declare-fun tp!21217 () Bool)

(declare-fun b_and!12941 () Bool)

(assert (=> b!224606 (= tp!21217 b_and!12941)))

(declare-fun res!110548 () Bool)

(declare-fun e!145805 () Bool)

(assert (=> start!21970 (=> (not res!110548) (not e!145805))))

(declare-datatypes ((V!7497 0))(
  ( (V!7498 (val!2988 Int)) )
))
(declare-datatypes ((ValueCell!2600 0))(
  ( (ValueCellFull!2600 (v!5004 V!7497)) (EmptyCell!2600) )
))
(declare-datatypes ((array!11016 0))(
  ( (array!11017 (arr!5227 (Array (_ BitVec 32) ValueCell!2600)) (size!5560 (_ BitVec 32))) )
))
(declare-datatypes ((array!11018 0))(
  ( (array!11019 (arr!5228 (Array (_ BitVec 32) (_ BitVec 64))) (size!5561 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3100 0))(
  ( (LongMapFixedSize!3101 (defaultEntry!4209 Int) (mask!10045 (_ BitVec 32)) (extraKeys!3946 (_ BitVec 32)) (zeroValue!4050 V!7497) (minValue!4050 V!7497) (_size!1599 (_ BitVec 32)) (_keys!6263 array!11018) (_values!4192 array!11016) (_vacant!1599 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3100)

(declare-fun valid!1242 (LongMapFixedSize!3100) Bool)

(assert (=> start!21970 (= res!110548 (valid!1242 thiss!1504))))

(assert (=> start!21970 e!145805))

(declare-fun e!145808 () Bool)

(assert (=> start!21970 e!145808))

(assert (=> start!21970 true))

(declare-fun b!224593 () Bool)

(declare-fun e!145807 () Bool)

(declare-fun call!20908 () Bool)

(assert (=> b!224593 (= e!145807 (not call!20908))))

(declare-fun b!224594 () Bool)

(declare-fun e!145812 () Bool)

(declare-fun tp_is_empty!5887 () Bool)

(assert (=> b!224594 (= e!145812 tp_is_empty!5887)))

(declare-fun b!224595 () Bool)

(declare-fun res!110541 () Bool)

(declare-fun e!145811 () Bool)

(assert (=> b!224595 (=> (not res!110541) (not e!145811))))

(declare-fun call!20907 () Bool)

(assert (=> b!224595 (= res!110541 call!20907)))

(declare-fun e!145815 () Bool)

(assert (=> b!224595 (= e!145815 e!145811)))

(declare-fun b!224596 () Bool)

(declare-fun e!145809 () Bool)

(declare-fun mapRes!10000 () Bool)

(assert (=> b!224596 (= e!145809 (and e!145812 mapRes!10000))))

(declare-fun condMapEmpty!10000 () Bool)

(declare-fun mapDefault!10000 () ValueCell!2600)

