; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21878 () Bool)

(assert start!21878)

(declare-fun b!220755 () Bool)

(declare-fun b_free!5933 () Bool)

(declare-fun b_next!5933 () Bool)

(assert (=> b!220755 (= b_free!5933 (not b_next!5933))))

(declare-fun tp!20941 () Bool)

(declare-fun b_and!12849 () Bool)

(assert (=> b!220755 (= tp!20941 b_and!12849)))

(declare-fun b!220742 () Bool)

(declare-fun c!36711 () Bool)

(declare-datatypes ((SeekEntryResult!826 0))(
  ( (MissingZero!826 (index!5474 (_ BitVec 32))) (Found!826 (index!5475 (_ BitVec 32))) (Intermediate!826 (undefined!1638 Bool) (index!5476 (_ BitVec 32)) (x!22982 (_ BitVec 32))) (Undefined!826) (MissingVacant!826 (index!5477 (_ BitVec 32))) )
))
(declare-fun lt!112281 () SeekEntryResult!826)

(assert (=> b!220742 (= c!36711 (is-MissingVacant!826 lt!112281))))

(declare-fun e!143522 () Bool)

(declare-fun e!143523 () Bool)

(assert (=> b!220742 (= e!143522 e!143523)))

(declare-fun c!36713 () Bool)

(declare-fun call!20632 () Bool)

(declare-fun bm!20628 () Bool)

(declare-datatypes ((V!7373 0))(
  ( (V!7374 (val!2942 Int)) )
))
(declare-datatypes ((ValueCell!2554 0))(
  ( (ValueCellFull!2554 (v!4958 V!7373)) (EmptyCell!2554) )
))
(declare-datatypes ((array!10832 0))(
  ( (array!10833 (arr!5135 (Array (_ BitVec 32) ValueCell!2554)) (size!5468 (_ BitVec 32))) )
))
(declare-datatypes ((array!10834 0))(
  ( (array!10835 (arr!5136 (Array (_ BitVec 32) (_ BitVec 64))) (size!5469 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3008 0))(
  ( (LongMapFixedSize!3009 (defaultEntry!4163 Int) (mask!9967 (_ BitVec 32)) (extraKeys!3900 (_ BitVec 32)) (zeroValue!4004 V!7373) (minValue!4004 V!7373) (_size!1553 (_ BitVec 32)) (_keys!6217 array!10834) (_values!4146 array!10832) (_vacant!1553 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3008)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20628 (= call!20632 (inRange!0 (ite c!36713 (index!5474 lt!112281) (index!5477 lt!112281)) (mask!9967 thiss!1504)))))

(declare-fun mapIsEmpty!9862 () Bool)

(declare-fun mapRes!9862 () Bool)

(assert (=> mapIsEmpty!9862 mapRes!9862))

(declare-fun b!220743 () Bool)

(declare-datatypes ((Unit!6585 0))(
  ( (Unit!6586) )
))
(declare-fun e!143518 () Unit!6585)

(declare-fun lt!112280 () Unit!6585)

(assert (=> b!220743 (= e!143518 lt!112280)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!217 (array!10834 array!10832 (_ BitVec 32) (_ BitVec 32) V!7373 V!7373 (_ BitVec 64) Int) Unit!6585)

(assert (=> b!220743 (= lt!112280 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!217 (_keys!6217 thiss!1504) (_values!4146 thiss!1504) (mask!9967 thiss!1504) (extraKeys!3900 thiss!1504) (zeroValue!4004 thiss!1504) (minValue!4004 thiss!1504) key!932 (defaultEntry!4163 thiss!1504)))))

(assert (=> b!220743 (= c!36713 (is-MissingZero!826 lt!112281))))

(assert (=> b!220743 e!143522))

(declare-fun b!220744 () Bool)

(declare-fun e!143513 () Bool)

(assert (=> b!220744 (= e!143513 false)))

(declare-fun lt!112283 () Bool)

(declare-datatypes ((List!3287 0))(
  ( (Nil!3284) (Cons!3283 (h!3931 (_ BitVec 64)) (t!8254 List!3287)) )
))
(declare-fun arrayNoDuplicates!0 (array!10834 (_ BitVec 32) List!3287) Bool)

(assert (=> b!220744 (= lt!112283 (arrayNoDuplicates!0 (_keys!6217 thiss!1504) #b00000000000000000000000000000000 Nil!3284))))

(declare-fun b!220745 () Bool)

(declare-fun e!143516 () Bool)

(declare-fun tp_is_empty!5795 () Bool)

(assert (=> b!220745 (= e!143516 tp_is_empty!5795)))

(declare-fun b!220746 () Bool)

(declare-fun res!108275 () Bool)

(declare-fun e!143514 () Bool)

(assert (=> b!220746 (=> (not res!108275) (not e!143514))))

(assert (=> b!220746 (= res!108275 (= (select (arr!5136 (_keys!6217 thiss!1504)) (index!5474 lt!112281)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!108274 () Bool)

(declare-fun e!143521 () Bool)

(assert (=> start!21878 (=> (not res!108274) (not e!143521))))

(declare-fun valid!1205 (LongMapFixedSize!3008) Bool)

(assert (=> start!21878 (= res!108274 (valid!1205 thiss!1504))))

(assert (=> start!21878 e!143521))

(declare-fun e!143524 () Bool)

(assert (=> start!21878 e!143524))

(assert (=> start!21878 true))

(declare-fun b!220747 () Bool)

(declare-fun res!108276 () Bool)

(assert (=> b!220747 (= res!108276 (= (select (arr!5136 (_keys!6217 thiss!1504)) (index!5477 lt!112281)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!143515 () Bool)

(assert (=> b!220747 (=> (not res!108276) (not e!143515))))

(declare-fun b!220748 () Bool)

(declare-fun res!108273 () Bool)

(assert (=> b!220748 (=> (not res!108273) (not e!143513))))

(assert (=> b!220748 (= res!108273 (and (= (size!5468 (_values!4146 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9967 thiss!1504))) (= (size!5469 (_keys!6217 thiss!1504)) (size!5468 (_values!4146 thiss!1504))) (bvsge (mask!9967 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3900 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3900 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!220749 () Bool)

(declare-fun e!143520 () Bool)

(assert (=> b!220749 (= e!143520 e!143513)))

(declare-fun res!108280 () Bool)

(assert (=> b!220749 (=> (not res!108280) (not e!143513))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!220749 (= res!108280 (inRange!0 index!297 (mask!9967 thiss!1504)))))

(declare-fun lt!112282 () Unit!6585)

(assert (=> b!220749 (= lt!112282 e!143518)))

(declare-fun c!36712 () Bool)

(declare-datatypes ((tuple2!4360 0))(
  ( (tuple2!4361 (_1!2190 (_ BitVec 64)) (_2!2190 V!7373)) )
))
(declare-datatypes ((List!3288 0))(
  ( (Nil!3285) (Cons!3284 (h!3932 tuple2!4360) (t!8255 List!3288)) )
))
(declare-datatypes ((ListLongMap!3287 0))(
  ( (ListLongMap!3288 (toList!1659 List!3288)) )
))
(declare-fun contains!1496 (ListLongMap!3287 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1182 (array!10834 array!10832 (_ BitVec 32) (_ BitVec 32) V!7373 V!7373 (_ BitVec 32) Int) ListLongMap!3287)

(assert (=> b!220749 (= c!36712 (contains!1496 (getCurrentListMap!1182 (_keys!6217 thiss!1504) (_values!4146 thiss!1504) (mask!9967 thiss!1504) (extraKeys!3900 thiss!1504) (zeroValue!4004 thiss!1504) (minValue!4004 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4163 thiss!1504)) key!932))))

(declare-fun b!220750 () Bool)

(declare-fun call!20631 () Bool)

(assert (=> b!220750 (= e!143515 (not call!20631))))

(declare-fun b!220751 () Bool)

(declare-fun Unit!6587 () Unit!6585)

(assert (=> b!220751 (= e!143518 Unit!6587)))

(declare-fun lt!112284 () Unit!6585)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!208 (array!10834 array!10832 (_ BitVec 32) (_ BitVec 32) V!7373 V!7373 (_ BitVec 64) Int) Unit!6585)

(assert (=> b!220751 (= lt!112284 (lemmaInListMapThenSeekEntryOrOpenFindsIt!208 (_keys!6217 thiss!1504) (_values!4146 thiss!1504) (mask!9967 thiss!1504) (extraKeys!3900 thiss!1504) (zeroValue!4004 thiss!1504) (minValue!4004 thiss!1504) key!932 (defaultEntry!4163 thiss!1504)))))

(assert (=> b!220751 false))

(declare-fun bm!20629 () Bool)

(declare-fun arrayContainsKey!0 (array!10834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20629 (= call!20631 (arrayContainsKey!0 (_keys!6217 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220752 () Bool)

(declare-fun e!143517 () Bool)

(assert (=> b!220752 (= e!143517 (and e!143516 mapRes!9862))))

(declare-fun condMapEmpty!9862 () Bool)

(declare-fun mapDefault!9862 () ValueCell!2554)

