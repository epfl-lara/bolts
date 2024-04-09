; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25248 () Bool)

(assert start!25248)

(declare-fun b!262816 () Bool)

(declare-fun b_free!6793 () Bool)

(declare-fun b_next!6793 () Bool)

(assert (=> b!262816 (= b_free!6793 (not b_next!6793))))

(declare-fun tp!23715 () Bool)

(declare-fun b_and!13953 () Bool)

(assert (=> b!262816 (= tp!23715 b_and!13953)))

(declare-fun b!262807 () Bool)

(declare-fun e!170330 () Bool)

(declare-fun tp_is_empty!6655 () Bool)

(assert (=> b!262807 (= e!170330 tp_is_empty!6655)))

(declare-fun b!262808 () Bool)

(declare-fun e!170329 () Bool)

(declare-fun e!170326 () Bool)

(assert (=> b!262808 (= e!170329 e!170326)))

(declare-fun res!128384 () Bool)

(assert (=> b!262808 (=> (not res!128384) (not e!170326))))

(declare-datatypes ((V!8521 0))(
  ( (V!8522 (val!3372 Int)) )
))
(declare-datatypes ((tuple2!4972 0))(
  ( (tuple2!4973 (_1!2496 (_ BitVec 64)) (_2!2496 V!8521)) )
))
(declare-datatypes ((List!3871 0))(
  ( (Nil!3868) (Cons!3867 (h!4533 tuple2!4972) (t!8956 List!3871)) )
))
(declare-datatypes ((ListLongMap!3899 0))(
  ( (ListLongMap!3900 (toList!1965 List!3871)) )
))
(declare-fun lt!132970 () ListLongMap!3899)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun contains!1910 (ListLongMap!3899 (_ BitVec 64)) Bool)

(assert (=> b!262808 (= res!128384 (contains!1910 lt!132970 key!932))))

(declare-datatypes ((ValueCell!2984 0))(
  ( (ValueCellFull!2984 (v!5499 V!8521)) (EmptyCell!2984) )
))
(declare-datatypes ((array!12670 0))(
  ( (array!12671 (arr!5995 (Array (_ BitVec 32) ValueCell!2984)) (size!6346 (_ BitVec 32))) )
))
(declare-datatypes ((array!12672 0))(
  ( (array!12673 (arr!5996 (Array (_ BitVec 32) (_ BitVec 64))) (size!6347 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3868 0))(
  ( (LongMapFixedSize!3869 (defaultEntry!4842 Int) (mask!11208 (_ BitVec 32)) (extraKeys!4579 (_ BitVec 32)) (zeroValue!4683 V!8521) (minValue!4683 V!8521) (_size!1983 (_ BitVec 32)) (_keys!7034 array!12672) (_values!4825 array!12670) (_vacant!1983 (_ BitVec 32))) )
))
(declare-fun lt!132968 () LongMapFixedSize!3868)

(declare-fun map!2756 (LongMapFixedSize!3868) ListLongMap!3899)

(assert (=> b!262808 (= lt!132970 (map!2756 lt!132968))))

(declare-fun b!262809 () Bool)

(declare-fun res!128380 () Bool)

(declare-fun e!170319 () Bool)

(assert (=> b!262809 (=> (not res!128380) (not e!170319))))

(declare-fun call!25140 () Bool)

(assert (=> b!262809 (= res!128380 call!25140)))

(declare-fun e!170328 () Bool)

(assert (=> b!262809 (= e!170328 e!170319)))

(declare-fun b!262810 () Bool)

(declare-datatypes ((Unit!8185 0))(
  ( (Unit!8186) )
))
(declare-fun e!170332 () Unit!8185)

(declare-fun lt!132965 () Unit!8185)

(assert (=> b!262810 (= e!170332 lt!132965)))

(declare-fun thiss!1504 () LongMapFixedSize!3868)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!452 (array!12672 array!12670 (_ BitVec 32) (_ BitVec 32) V!8521 V!8521 (_ BitVec 64) Int) Unit!8185)

(assert (=> b!262810 (= lt!132965 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!452 (_keys!7034 thiss!1504) (_values!4825 thiss!1504) (mask!11208 thiss!1504) (extraKeys!4579 thiss!1504) (zeroValue!4683 thiss!1504) (minValue!4683 thiss!1504) key!932 (defaultEntry!4842 thiss!1504)))))

(declare-fun c!44792 () Bool)

(declare-datatypes ((SeekEntryResult!1209 0))(
  ( (MissingZero!1209 (index!7006 (_ BitVec 32))) (Found!1209 (index!7007 (_ BitVec 32))) (Intermediate!1209 (undefined!2021 Bool) (index!7008 (_ BitVec 32)) (x!25251 (_ BitVec 32))) (Undefined!1209) (MissingVacant!1209 (index!7009 (_ BitVec 32))) )
))
(declare-fun lt!132978 () SeekEntryResult!1209)

(assert (=> b!262810 (= c!44792 (is-MissingZero!1209 lt!132978))))

(assert (=> b!262810 e!170328))

(declare-fun b!262811 () Bool)

(declare-fun e!170331 () Bool)

(declare-fun e!170327 () Bool)

(assert (=> b!262811 (= e!170331 e!170327)))

(declare-fun res!128378 () Bool)

(assert (=> b!262811 (=> (not res!128378) (not e!170327))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!262811 (= res!128378 (inRange!0 index!297 (mask!11208 thiss!1504)))))

(declare-fun lt!132983 () Unit!8185)

(assert (=> b!262811 (= lt!132983 e!170332)))

(declare-fun c!44790 () Bool)

(declare-fun lt!132974 () ListLongMap!3899)

(assert (=> b!262811 (= c!44790 (contains!1910 lt!132974 key!932))))

(declare-fun getCurrentListMap!1488 (array!12672 array!12670 (_ BitVec 32) (_ BitVec 32) V!8521 V!8521 (_ BitVec 32) Int) ListLongMap!3899)

(assert (=> b!262811 (= lt!132974 (getCurrentListMap!1488 (_keys!7034 thiss!1504) (_values!4825 thiss!1504) (mask!11208 thiss!1504) (extraKeys!4579 thiss!1504) (zeroValue!4683 thiss!1504) (minValue!4683 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4842 thiss!1504)))))

(declare-fun b!262812 () Bool)

(declare-fun e!170324 () Bool)

(assert (=> b!262812 (= e!170324 (is-Undefined!1209 lt!132978))))

(declare-fun b!262813 () Bool)

(declare-fun call!25139 () Bool)

(assert (=> b!262813 (= e!170319 (not call!25139))))

(declare-fun b!262814 () Bool)

(declare-fun c!44793 () Bool)

(assert (=> b!262814 (= c!44793 (is-MissingVacant!1209 lt!132978))))

(assert (=> b!262814 (= e!170328 e!170324)))

(declare-fun b!262815 () Bool)

(declare-fun res!128379 () Bool)

(declare-fun e!170318 () Bool)

(assert (=> b!262815 (=> (not res!128379) (not e!170318))))

(assert (=> b!262815 (= res!128379 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!170323 () Bool)

(declare-fun e!170322 () Bool)

(declare-fun array_inv!3951 (array!12672) Bool)

(declare-fun array_inv!3952 (array!12670) Bool)

(assert (=> b!262816 (= e!170323 (and tp!23715 tp_is_empty!6655 (array_inv!3951 (_keys!7034 thiss!1504)) (array_inv!3952 (_values!4825 thiss!1504)) e!170322))))

(declare-fun b!262817 () Bool)

(declare-fun mapRes!11347 () Bool)

(assert (=> b!262817 (= e!170322 (and e!170330 mapRes!11347))))

(declare-fun condMapEmpty!11347 () Bool)

(declare-fun mapDefault!11347 () ValueCell!2984)

