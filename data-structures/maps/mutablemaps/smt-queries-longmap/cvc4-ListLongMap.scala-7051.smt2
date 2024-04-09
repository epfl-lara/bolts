; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89400 () Bool)

(assert start!89400)

(declare-fun b!1024311 () Bool)

(declare-fun b_free!20363 () Bool)

(declare-fun b_next!20363 () Bool)

(assert (=> b!1024311 (= b_free!20363 (not b_next!20363))))

(declare-fun tp!72135 () Bool)

(declare-fun b_and!32627 () Bool)

(assert (=> b!1024311 (= tp!72135 b_and!32627)))

(declare-fun b!1024309 () Bool)

(declare-fun e!577420 () Bool)

(declare-fun e!577418 () Bool)

(assert (=> b!1024309 (= e!577420 e!577418)))

(declare-fun res!685904 () Bool)

(assert (=> b!1024309 (=> (not res!685904) (not e!577418))))

(declare-datatypes ((SeekEntryResult!9583 0))(
  ( (MissingZero!9583 (index!40702 (_ BitVec 32))) (Found!9583 (index!40703 (_ BitVec 32))) (Intermediate!9583 (undefined!10395 Bool) (index!40704 (_ BitVec 32)) (x!91056 (_ BitVec 32))) (Undefined!9583) (MissingVacant!9583 (index!40705 (_ BitVec 32))) )
))
(declare-fun lt!450572 () SeekEntryResult!9583)

(assert (=> b!1024309 (= res!685904 (is-Found!9583 lt!450572))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!36983 0))(
  ( (V!36984 (val!12092 Int)) )
))
(declare-datatypes ((ValueCell!11338 0))(
  ( (ValueCellFull!11338 (v!14662 V!36983)) (EmptyCell!11338) )
))
(declare-datatypes ((array!64200 0))(
  ( (array!64201 (arr!30905 (Array (_ BitVec 32) (_ BitVec 64))) (size!31419 (_ BitVec 32))) )
))
(declare-datatypes ((array!64202 0))(
  ( (array!64203 (arr!30906 (Array (_ BitVec 32) ValueCell!11338)) (size!31420 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5270 0))(
  ( (LongMapFixedSize!5271 (defaultEntry!5987 Int) (mask!29630 (_ BitVec 32)) (extraKeys!5719 (_ BitVec 32)) (zeroValue!5823 V!36983) (minValue!5823 V!36983) (_size!2690 (_ BitVec 32)) (_keys!11131 array!64200) (_values!6010 array!64202) (_vacant!2690 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5270)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64200 (_ BitVec 32)) SeekEntryResult!9583)

(assert (=> b!1024309 (= lt!450572 (seekEntry!0 key!909 (_keys!11131 thiss!1427) (mask!29630 thiss!1427)))))

(declare-fun b!1024310 () Bool)

(declare-fun e!577417 () Bool)

(declare-fun tp_is_empty!24083 () Bool)

(assert (=> b!1024310 (= e!577417 tp_is_empty!24083)))

(declare-fun e!577421 () Bool)

(declare-fun e!577423 () Bool)

(declare-fun array_inv!23805 (array!64200) Bool)

(declare-fun array_inv!23806 (array!64202) Bool)

(assert (=> b!1024311 (= e!577421 (and tp!72135 tp_is_empty!24083 (array_inv!23805 (_keys!11131 thiss!1427)) (array_inv!23806 (_values!6010 thiss!1427)) e!577423))))

(declare-fun b!1024313 () Bool)

(declare-fun e!577422 () Bool)

(declare-fun mapRes!37553 () Bool)

(assert (=> b!1024313 (= e!577423 (and e!577422 mapRes!37553))))

(declare-fun condMapEmpty!37553 () Bool)

(declare-fun mapDefault!37553 () ValueCell!11338)

