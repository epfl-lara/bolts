; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21748 () Bool)

(assert start!21748)

(declare-fun b!218681 () Bool)

(declare-fun b_free!5885 () Bool)

(declare-fun b_next!5885 () Bool)

(assert (=> b!218681 (= b_free!5885 (not b_next!5885))))

(declare-fun tp!20790 () Bool)

(declare-fun b_and!12793 () Bool)

(assert (=> b!218681 (= tp!20790 b_and!12793)))

(declare-fun b!218680 () Bool)

(declare-fun e!142283 () Bool)

(declare-fun call!20415 () Bool)

(assert (=> b!218680 (= e!142283 (not call!20415))))

(declare-fun tp_is_empty!5747 () Bool)

(declare-datatypes ((V!7309 0))(
  ( (V!7310 (val!2918 Int)) )
))
(declare-datatypes ((ValueCell!2530 0))(
  ( (ValueCellFull!2530 (v!4932 V!7309)) (EmptyCell!2530) )
))
(declare-datatypes ((array!10732 0))(
  ( (array!10733 (arr!5087 (Array (_ BitVec 32) ValueCell!2530)) (size!5419 (_ BitVec 32))) )
))
(declare-datatypes ((array!10734 0))(
  ( (array!10735 (arr!5088 (Array (_ BitVec 32) (_ BitVec 64))) (size!5420 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2960 0))(
  ( (LongMapFixedSize!2961 (defaultEntry!4130 Int) (mask!9909 (_ BitVec 32)) (extraKeys!3867 (_ BitVec 32)) (zeroValue!3971 V!7309) (minValue!3971 V!7309) (_size!1529 (_ BitVec 32)) (_keys!6179 array!10734) (_values!4113 array!10732) (_vacant!1529 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2960)

(declare-fun e!142277 () Bool)

(declare-fun e!142278 () Bool)

(declare-fun array_inv!3359 (array!10734) Bool)

(declare-fun array_inv!3360 (array!10732) Bool)

(assert (=> b!218681 (= e!142278 (and tp!20790 tp_is_empty!5747 (array_inv!3359 (_keys!6179 thiss!1504)) (array_inv!3360 (_values!4113 thiss!1504)) e!142277))))

(declare-fun b!218682 () Bool)

(declare-fun res!107223 () Bool)

(declare-fun e!142287 () Bool)

(assert (=> b!218682 (=> (not res!107223) (not e!142287))))

(declare-datatypes ((SeekEntryResult!803 0))(
  ( (MissingZero!803 (index!5382 (_ BitVec 32))) (Found!803 (index!5383 (_ BitVec 32))) (Intermediate!803 (undefined!1615 Bool) (index!5384 (_ BitVec 32)) (x!22867 (_ BitVec 32))) (Undefined!803) (MissingVacant!803 (index!5385 (_ BitVec 32))) )
))
(declare-fun lt!111618 () SeekEntryResult!803)

(assert (=> b!218682 (= res!107223 (= (select (arr!5088 (_keys!6179 thiss!1504)) (index!5382 lt!111618)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!218683 () Bool)

(declare-fun e!142281 () Bool)

(declare-fun e!142279 () Bool)

(assert (=> b!218683 (= e!142281 e!142279)))

(declare-fun res!107226 () Bool)

(assert (=> b!218683 (=> (not res!107226) (not e!142279))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218683 (= res!107226 (or (= lt!111618 (MissingZero!803 index!297)) (= lt!111618 (MissingVacant!803 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10734 (_ BitVec 32)) SeekEntryResult!803)

(assert (=> b!218683 (= lt!111618 (seekEntryOrOpen!0 key!932 (_keys!6179 thiss!1504) (mask!9909 thiss!1504)))))

(declare-fun b!218684 () Bool)

(assert (=> b!218684 (= e!142287 (not call!20415))))

(declare-fun bm!20412 () Bool)

(declare-fun arrayContainsKey!0 (array!10734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20412 (= call!20415 (arrayContainsKey!0 (_keys!6179 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!218685 () Bool)

(declare-datatypes ((Unit!6518 0))(
  ( (Unit!6519) )
))
(declare-fun e!142286 () Unit!6518)

(declare-fun Unit!6520 () Unit!6518)

(assert (=> b!218685 (= e!142286 Unit!6520)))

(declare-fun lt!111619 () Unit!6518)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!191 (array!10734 array!10732 (_ BitVec 32) (_ BitVec 32) V!7309 V!7309 (_ BitVec 64) Int) Unit!6518)

(assert (=> b!218685 (= lt!111619 (lemmaInListMapThenSeekEntryOrOpenFindsIt!191 (_keys!6179 thiss!1504) (_values!4113 thiss!1504) (mask!9909 thiss!1504) (extraKeys!3867 thiss!1504) (zeroValue!3971 thiss!1504) (minValue!3971 thiss!1504) key!932 (defaultEntry!4130 thiss!1504)))))

(assert (=> b!218685 false))

(declare-fun b!218686 () Bool)

(declare-fun e!142275 () Bool)

(assert (=> b!218686 (= e!142275 e!142283)))

(declare-fun res!107219 () Bool)

(declare-fun call!20416 () Bool)

(assert (=> b!218686 (= res!107219 call!20416)))

(assert (=> b!218686 (=> (not res!107219) (not e!142283))))

(declare-fun mapIsEmpty!9783 () Bool)

(declare-fun mapRes!9783 () Bool)

(assert (=> mapIsEmpty!9783 mapRes!9783))

(declare-fun bm!20413 () Bool)

(declare-fun c!36363 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20413 (= call!20416 (inRange!0 (ite c!36363 (index!5382 lt!111618) (index!5385 lt!111618)) (mask!9909 thiss!1504)))))

(declare-fun b!218687 () Bool)

(declare-fun c!36362 () Bool)

(assert (=> b!218687 (= c!36362 (is-MissingVacant!803 lt!111618))))

(declare-fun e!142284 () Bool)

(assert (=> b!218687 (= e!142284 e!142275)))

(declare-fun b!218688 () Bool)

(assert (=> b!218688 (= e!142275 (is-Undefined!803 lt!111618))))

(declare-fun b!218689 () Bool)

(declare-fun e!142280 () Bool)

(assert (=> b!218689 (= e!142280 (bvsge #b00000000000000000000000000000000 (size!5420 (_keys!6179 thiss!1504))))))

(declare-fun res!107221 () Bool)

(assert (=> start!21748 (=> (not res!107221) (not e!142281))))

(declare-fun valid!1190 (LongMapFixedSize!2960) Bool)

(assert (=> start!21748 (= res!107221 (valid!1190 thiss!1504))))

(assert (=> start!21748 e!142281))

(assert (=> start!21748 e!142278))

(assert (=> start!21748 true))

(declare-fun b!218690 () Bool)

(declare-fun res!107220 () Bool)

(assert (=> b!218690 (=> (not res!107220) (not e!142287))))

(assert (=> b!218690 (= res!107220 call!20416)))

(assert (=> b!218690 (= e!142284 e!142287)))

(declare-fun b!218691 () Bool)

(declare-fun e!142276 () Bool)

(assert (=> b!218691 (= e!142276 tp_is_empty!5747)))

(declare-fun b!218692 () Bool)

(assert (=> b!218692 (= e!142277 (and e!142276 mapRes!9783))))

(declare-fun condMapEmpty!9783 () Bool)

(declare-fun mapDefault!9783 () ValueCell!2530)

