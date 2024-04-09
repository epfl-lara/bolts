; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22984 () Bool)

(assert start!22984)

(declare-fun b!240683 () Bool)

(declare-fun b_free!6475 () Bool)

(declare-fun b_next!6475 () Bool)

(assert (=> b!240683 (= b_free!6475 (not b_next!6475))))

(declare-fun tp!22629 () Bool)

(declare-fun b_and!13459 () Bool)

(assert (=> b!240683 (= tp!22629 b_and!13459)))

(declare-fun b!240682 () Bool)

(declare-fun res!118039 () Bool)

(declare-datatypes ((V!8097 0))(
  ( (V!8098 (val!3213 Int)) )
))
(declare-datatypes ((ValueCell!2825 0))(
  ( (ValueCellFull!2825 (v!5247 V!8097)) (EmptyCell!2825) )
))
(declare-datatypes ((array!11952 0))(
  ( (array!11953 (arr!5677 (Array (_ BitVec 32) ValueCell!2825)) (size!6018 (_ BitVec 32))) )
))
(declare-datatypes ((array!11954 0))(
  ( (array!11955 (arr!5678 (Array (_ BitVec 32) (_ BitVec 64))) (size!6019 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3550 0))(
  ( (LongMapFixedSize!3551 (defaultEntry!4460 Int) (mask!10520 (_ BitVec 32)) (extraKeys!4197 (_ BitVec 32)) (zeroValue!4301 V!8097) (minValue!4301 V!8097) (_size!1824 (_ BitVec 32)) (_keys!6562 array!11954) (_values!4443 array!11952) (_vacant!1824 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3550)

(declare-datatypes ((SeekEntryResult!1060 0))(
  ( (MissingZero!1060 (index!6410 (_ BitVec 32))) (Found!1060 (index!6411 (_ BitVec 32))) (Intermediate!1060 (undefined!1872 Bool) (index!6412 (_ BitVec 32)) (x!24188 (_ BitVec 32))) (Undefined!1060) (MissingVacant!1060 (index!6413 (_ BitVec 32))) )
))
(declare-fun lt!121064 () SeekEntryResult!1060)

(assert (=> b!240682 (= res!118039 (= (select (arr!5678 (_keys!6562 thiss!1504)) (index!6413 lt!121064)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!156214 () Bool)

(assert (=> b!240682 (=> (not res!118039) (not e!156214))))

(declare-fun e!156212 () Bool)

(declare-fun tp_is_empty!6337 () Bool)

(declare-fun e!156210 () Bool)

(declare-fun array_inv!3747 (array!11954) Bool)

(declare-fun array_inv!3748 (array!11952) Bool)

(assert (=> b!240683 (= e!156210 (and tp!22629 tp_is_empty!6337 (array_inv!3747 (_keys!6562 thiss!1504)) (array_inv!3748 (_values!4443 thiss!1504)) e!156212))))

(declare-fun b!240684 () Bool)

(declare-fun e!156211 () Bool)

(assert (=> b!240684 (= e!156211 e!156214)))

(declare-fun res!118046 () Bool)

(declare-fun call!22384 () Bool)

(assert (=> b!240684 (= res!118046 call!22384)))

(assert (=> b!240684 (=> (not res!118046) (not e!156214))))

(declare-fun b!240685 () Bool)

(declare-fun e!156217 () Bool)

(assert (=> b!240685 (= e!156217 (not false))))

(declare-fun lt!121062 () Bool)

(assert (=> b!240685 lt!121062))

(declare-datatypes ((Unit!7404 0))(
  ( (Unit!7405) )
))
(declare-fun lt!121066 () Unit!7404)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!149 (array!11954 array!11952 (_ BitVec 32) (_ BitVec 32) V!8097 V!8097 (_ BitVec 64) (_ BitVec 32) Int) Unit!7404)

(assert (=> b!240685 (= lt!121066 (lemmaArrayContainsKeyThenInListMap!149 (_keys!6562 thiss!1504) (_values!4443 thiss!1504) (mask!10520 thiss!1504) (extraKeys!4197 thiss!1504) (zeroValue!4301 thiss!1504) (minValue!4301 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4460 thiss!1504)))))

(declare-fun b!240686 () Bool)

(declare-fun e!156213 () Bool)

(assert (=> b!240686 (= e!156213 tp_is_empty!6337)))

(declare-fun b!240687 () Bool)

(assert (=> b!240687 (= e!156211 (is-Undefined!1060 lt!121064))))

(declare-fun b!240688 () Bool)

(declare-fun e!156216 () Bool)

(declare-fun call!22383 () Bool)

(assert (=> b!240688 (= e!156216 (not call!22383))))

(declare-fun b!240689 () Bool)

(declare-fun res!118043 () Bool)

(assert (=> b!240689 (=> (not res!118043) (not e!156216))))

(assert (=> b!240689 (= res!118043 (= (select (arr!5678 (_keys!6562 thiss!1504)) (index!6410 lt!121064)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!240690 () Bool)

(declare-fun res!118038 () Bool)

(assert (=> b!240690 (=> (not res!118038) (not e!156216))))

(assert (=> b!240690 (= res!118038 call!22384)))

(declare-fun e!156218 () Bool)

(assert (=> b!240690 (= e!156218 e!156216)))

(declare-fun res!118044 () Bool)

(declare-fun e!156209 () Bool)

(assert (=> start!22984 (=> (not res!118044) (not e!156209))))

(declare-fun valid!1388 (LongMapFixedSize!3550) Bool)

(assert (=> start!22984 (= res!118044 (valid!1388 thiss!1504))))

(assert (=> start!22984 e!156209))

(assert (=> start!22984 e!156210))

(assert (=> start!22984 true))

(declare-fun mapIsEmpty!10737 () Bool)

(declare-fun mapRes!10737 () Bool)

(assert (=> mapIsEmpty!10737 mapRes!10737))

(declare-fun b!240691 () Bool)

(declare-fun e!156215 () Bool)

(assert (=> b!240691 (= e!156215 e!156217)))

(declare-fun res!118042 () Bool)

(assert (=> b!240691 (=> (not res!118042) (not e!156217))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!240691 (= res!118042 (inRange!0 index!297 (mask!10520 thiss!1504)))))

(declare-fun lt!121065 () Unit!7404)

(declare-fun e!156221 () Unit!7404)

(assert (=> b!240691 (= lt!121065 e!156221)))

(declare-fun c!40072 () Bool)

(assert (=> b!240691 (= c!40072 lt!121062)))

(declare-datatypes ((tuple2!4730 0))(
  ( (tuple2!4731 (_1!2375 (_ BitVec 64)) (_2!2375 V!8097)) )
))
(declare-datatypes ((List!3638 0))(
  ( (Nil!3635) (Cons!3634 (h!4290 tuple2!4730) (t!8641 List!3638)) )
))
(declare-datatypes ((ListLongMap!3657 0))(
  ( (ListLongMap!3658 (toList!1844 List!3638)) )
))
(declare-fun contains!1726 (ListLongMap!3657 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1367 (array!11954 array!11952 (_ BitVec 32) (_ BitVec 32) V!8097 V!8097 (_ BitVec 32) Int) ListLongMap!3657)

(assert (=> b!240691 (= lt!121062 (contains!1726 (getCurrentListMap!1367 (_keys!6562 thiss!1504) (_values!4443 thiss!1504) (mask!10520 thiss!1504) (extraKeys!4197 thiss!1504) (zeroValue!4301 thiss!1504) (minValue!4301 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4460 thiss!1504)) key!932))))

(declare-fun b!240692 () Bool)

(declare-fun e!156220 () Bool)

(assert (=> b!240692 (= e!156212 (and e!156220 mapRes!10737))))

(declare-fun condMapEmpty!10737 () Bool)

(declare-fun mapDefault!10737 () ValueCell!2825)

