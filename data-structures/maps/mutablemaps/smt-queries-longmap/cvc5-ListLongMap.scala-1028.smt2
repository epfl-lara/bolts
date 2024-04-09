; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21862 () Bool)

(assert start!21862)

(declare-fun b!220215 () Bool)

(declare-fun b_free!5917 () Bool)

(declare-fun b_next!5917 () Bool)

(assert (=> b!220215 (= b_free!5917 (not b_next!5917))))

(declare-fun tp!20892 () Bool)

(declare-fun b_and!12833 () Bool)

(assert (=> b!220215 (= tp!20892 b_and!12833)))

(declare-fun b!220214 () Bool)

(declare-fun e!143211 () Bool)

(declare-fun tp_is_empty!5779 () Bool)

(assert (=> b!220214 (= e!143211 tp_is_empty!5779)))

(declare-fun mapIsEmpty!9838 () Bool)

(declare-fun mapRes!9838 () Bool)

(assert (=> mapIsEmpty!9838 mapRes!9838))

(declare-datatypes ((V!7353 0))(
  ( (V!7354 (val!2934 Int)) )
))
(declare-datatypes ((ValueCell!2546 0))(
  ( (ValueCellFull!2546 (v!4950 V!7353)) (EmptyCell!2546) )
))
(declare-datatypes ((array!10800 0))(
  ( (array!10801 (arr!5119 (Array (_ BitVec 32) ValueCell!2546)) (size!5452 (_ BitVec 32))) )
))
(declare-datatypes ((array!10802 0))(
  ( (array!10803 (arr!5120 (Array (_ BitVec 32) (_ BitVec 64))) (size!5453 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2992 0))(
  ( (LongMapFixedSize!2993 (defaultEntry!4155 Int) (mask!9955 (_ BitVec 32)) (extraKeys!3892 (_ BitVec 32)) (zeroValue!3996 V!7353) (minValue!3996 V!7353) (_size!1545 (_ BitVec 32)) (_keys!6209 array!10802) (_values!4138 array!10800) (_vacant!1545 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2992)

(declare-fun e!143208 () Bool)

(declare-fun e!143207 () Bool)

(declare-fun array_inv!3379 (array!10802) Bool)

(declare-fun array_inv!3380 (array!10800) Bool)

(assert (=> b!220215 (= e!143207 (and tp!20892 tp_is_empty!5779 (array_inv!3379 (_keys!6209 thiss!1504)) (array_inv!3380 (_values!4138 thiss!1504)) e!143208))))

(declare-fun b!220216 () Bool)

(declare-fun c!36640 () Bool)

(declare-datatypes ((SeekEntryResult!819 0))(
  ( (MissingZero!819 (index!5446 (_ BitVec 32))) (Found!819 (index!5447 (_ BitVec 32))) (Intermediate!819 (undefined!1631 Bool) (index!5448 (_ BitVec 32)) (x!22959 (_ BitVec 32))) (Undefined!819) (MissingVacant!819 (index!5449 (_ BitVec 32))) )
))
(declare-fun lt!112161 () SeekEntryResult!819)

(assert (=> b!220216 (= c!36640 (is-MissingVacant!819 lt!112161))))

(declare-fun e!143202 () Bool)

(declare-fun e!143209 () Bool)

(assert (=> b!220216 (= e!143202 e!143209)))

(declare-fun b!220217 () Bool)

(declare-fun e!143212 () Bool)

(declare-fun e!143200 () Bool)

(assert (=> b!220217 (= e!143212 e!143200)))

(declare-fun res!107992 () Bool)

(assert (=> b!220217 (=> (not res!107992) (not e!143200))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!220217 (= res!107992 (or (= lt!112161 (MissingZero!819 index!297)) (= lt!112161 (MissingVacant!819 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10802 (_ BitVec 32)) SeekEntryResult!819)

(assert (=> b!220217 (= lt!112161 (seekEntryOrOpen!0 key!932 (_keys!6209 thiss!1504) (mask!9955 thiss!1504)))))

(declare-fun res!107988 () Bool)

(assert (=> start!21862 (=> (not res!107988) (not e!143212))))

(declare-fun valid!1200 (LongMapFixedSize!2992) Bool)

(assert (=> start!21862 (= res!107988 (valid!1200 thiss!1504))))

(assert (=> start!21862 e!143212))

(assert (=> start!21862 e!143207))

(assert (=> start!21862 true))

(declare-fun b!220218 () Bool)

(declare-fun res!107987 () Bool)

(declare-fun e!143210 () Bool)

(assert (=> b!220218 (=> (not res!107987) (not e!143210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!220218 (= res!107987 (validMask!0 (mask!9955 thiss!1504)))))

(declare-fun b!220219 () Bool)

(declare-datatypes ((Unit!6566 0))(
  ( (Unit!6567) )
))
(declare-fun e!143204 () Unit!6566)

(declare-fun lt!112164 () Unit!6566)

(assert (=> b!220219 (= e!143204 lt!112164)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!212 (array!10802 array!10800 (_ BitVec 32) (_ BitVec 32) V!7353 V!7353 (_ BitVec 64) Int) Unit!6566)

(assert (=> b!220219 (= lt!112164 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!212 (_keys!6209 thiss!1504) (_values!4138 thiss!1504) (mask!9955 thiss!1504) (extraKeys!3892 thiss!1504) (zeroValue!3996 thiss!1504) (minValue!3996 thiss!1504) key!932 (defaultEntry!4155 thiss!1504)))))

(declare-fun c!36639 () Bool)

(assert (=> b!220219 (= c!36639 (is-MissingZero!819 lt!112161))))

(assert (=> b!220219 e!143202))

(declare-fun b!220220 () Bool)

(declare-fun res!107985 () Bool)

(assert (=> b!220220 (=> (not res!107985) (not e!143210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10802 (_ BitVec 32)) Bool)

(assert (=> b!220220 (= res!107985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6209 thiss!1504) (mask!9955 thiss!1504)))))

(declare-fun b!220221 () Bool)

(declare-fun res!107984 () Bool)

(declare-fun e!143206 () Bool)

(assert (=> b!220221 (=> (not res!107984) (not e!143206))))

(assert (=> b!220221 (= res!107984 (= (select (arr!5120 (_keys!6209 thiss!1504)) (index!5446 lt!112161)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!220222 () Bool)

(assert (=> b!220222 (= e!143209 (is-Undefined!819 lt!112161))))

(declare-fun b!220223 () Bool)

(declare-fun res!107989 () Bool)

(assert (=> b!220223 (=> (not res!107989) (not e!143210))))

(assert (=> b!220223 (= res!107989 (and (= (size!5452 (_values!4138 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9955 thiss!1504))) (= (size!5453 (_keys!6209 thiss!1504)) (size!5452 (_values!4138 thiss!1504))) (bvsge (mask!9955 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3892 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3892 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!220224 () Bool)

(declare-fun res!107991 () Bool)

(assert (=> b!220224 (=> (not res!107991) (not e!143206))))

(declare-fun call!20583 () Bool)

(assert (=> b!220224 (= res!107991 call!20583)))

(assert (=> b!220224 (= e!143202 e!143206)))

(declare-fun b!220225 () Bool)

(declare-fun res!107995 () Bool)

(assert (=> b!220225 (=> (not res!107995) (not e!143210))))

(declare-fun arrayContainsKey!0 (array!10802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!220225 (= res!107995 (arrayContainsKey!0 (_keys!6209 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!20580 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20580 (= call!20583 (inRange!0 (ite c!36639 (index!5446 lt!112161) (index!5449 lt!112161)) (mask!9955 thiss!1504)))))

(declare-fun b!220226 () Bool)

(declare-fun e!143205 () Bool)

(assert (=> b!220226 (= e!143208 (and e!143205 mapRes!9838))))

(declare-fun condMapEmpty!9838 () Bool)

(declare-fun mapDefault!9838 () ValueCell!2546)

