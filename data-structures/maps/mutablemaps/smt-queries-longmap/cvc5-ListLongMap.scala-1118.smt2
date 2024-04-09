; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22966 () Bool)

(assert start!22966)

(declare-fun b!240075 () Bool)

(declare-fun b_free!6457 () Bool)

(declare-fun b_next!6457 () Bool)

(assert (=> b!240075 (= b_free!6457 (not b_next!6457))))

(declare-fun tp!22574 () Bool)

(declare-fun b_and!13441 () Bool)

(assert (=> b!240075 (= tp!22574 b_and!13441)))

(declare-fun b!240069 () Bool)

(declare-fun res!117695 () Bool)

(declare-fun e!155865 () Bool)

(assert (=> b!240069 (=> (not res!117695) (not e!155865))))

(declare-datatypes ((V!8073 0))(
  ( (V!8074 (val!3204 Int)) )
))
(declare-datatypes ((ValueCell!2816 0))(
  ( (ValueCellFull!2816 (v!5238 V!8073)) (EmptyCell!2816) )
))
(declare-datatypes ((array!11916 0))(
  ( (array!11917 (arr!5659 (Array (_ BitVec 32) ValueCell!2816)) (size!6000 (_ BitVec 32))) )
))
(declare-datatypes ((array!11918 0))(
  ( (array!11919 (arr!5660 (Array (_ BitVec 32) (_ BitVec 64))) (size!6001 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3532 0))(
  ( (LongMapFixedSize!3533 (defaultEntry!4451 Int) (mask!10505 (_ BitVec 32)) (extraKeys!4188 (_ BitVec 32)) (zeroValue!4292 V!8073) (minValue!4292 V!8073) (_size!1815 (_ BitVec 32)) (_keys!6553 array!11918) (_values!4434 array!11916) (_vacant!1815 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3532)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!240069 (= res!117695 (validMask!0 (mask!10505 thiss!1504)))))

(declare-fun b!240070 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!240070 (= e!155865 (not (validKeyInArray!0 key!932)))))

(declare-fun b!240071 () Bool)

(declare-fun res!117705 () Bool)

(declare-datatypes ((SeekEntryResult!1052 0))(
  ( (MissingZero!1052 (index!6378 (_ BitVec 32))) (Found!1052 (index!6379 (_ BitVec 32))) (Intermediate!1052 (undefined!1864 Bool) (index!6380 (_ BitVec 32)) (x!24156 (_ BitVec 32))) (Undefined!1052) (MissingVacant!1052 (index!6381 (_ BitVec 32))) )
))
(declare-fun lt!120940 () SeekEntryResult!1052)

(assert (=> b!240071 (= res!117705 (= (select (arr!5660 (_keys!6553 thiss!1504)) (index!6381 lt!120940)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155863 () Bool)

(assert (=> b!240071 (=> (not res!117705) (not e!155863))))

(declare-fun b!240072 () Bool)

(declare-datatypes ((Unit!7379 0))(
  ( (Unit!7380) )
))
(declare-fun e!155861 () Unit!7379)

(declare-fun lt!120942 () Unit!7379)

(assert (=> b!240072 (= e!155861 lt!120942)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!347 (array!11918 array!11916 (_ BitVec 32) (_ BitVec 32) V!8073 V!8073 (_ BitVec 64) Int) Unit!7379)

(assert (=> b!240072 (= lt!120942 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!347 (_keys!6553 thiss!1504) (_values!4434 thiss!1504) (mask!10505 thiss!1504) (extraKeys!4188 thiss!1504) (zeroValue!4292 thiss!1504) (minValue!4292 thiss!1504) key!932 (defaultEntry!4451 thiss!1504)))))

(declare-fun c!39991 () Bool)

(assert (=> b!240072 (= c!39991 (is-MissingZero!1052 lt!120940))))

(declare-fun e!155858 () Bool)

(assert (=> b!240072 e!155858))

(declare-fun b!240073 () Bool)

(declare-fun e!155864 () Bool)

(declare-fun tp_is_empty!6319 () Bool)

(assert (=> b!240073 (= e!155864 tp_is_empty!6319)))

(declare-fun b!240074 () Bool)

(declare-fun res!117696 () Bool)

(assert (=> b!240074 (=> (not res!117696) (not e!155865))))

(assert (=> b!240074 (= res!117696 (and (= (size!6000 (_values!4434 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10505 thiss!1504))) (= (size!6001 (_keys!6553 thiss!1504)) (size!6000 (_values!4434 thiss!1504))) (bvsge (mask!10505 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4188 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4188 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!10710 () Bool)

(declare-fun mapRes!10710 () Bool)

(assert (=> mapIsEmpty!10710 mapRes!10710))

(declare-fun e!155860 () Bool)

(declare-fun e!155867 () Bool)

(declare-fun array_inv!3735 (array!11918) Bool)

(declare-fun array_inv!3736 (array!11916) Bool)

(assert (=> b!240075 (= e!155860 (and tp!22574 tp_is_empty!6319 (array_inv!3735 (_keys!6553 thiss!1504)) (array_inv!3736 (_values!4434 thiss!1504)) e!155867))))

(declare-fun b!240076 () Bool)

(declare-fun e!155870 () Bool)

(assert (=> b!240076 (= e!155870 (is-Undefined!1052 lt!120940))))

(declare-fun b!240077 () Bool)

(declare-fun e!155869 () Bool)

(assert (=> b!240077 (= e!155869 tp_is_empty!6319)))

(declare-fun b!240078 () Bool)

(declare-fun res!117702 () Bool)

(assert (=> b!240078 (=> (not res!117702) (not e!155865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11918 (_ BitVec 32)) Bool)

(assert (=> b!240078 (= res!117702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6553 thiss!1504) (mask!10505 thiss!1504)))))

(declare-fun b!240079 () Bool)

(declare-fun call!22330 () Bool)

(assert (=> b!240079 (= e!155863 (not call!22330))))

(declare-fun b!240080 () Bool)

(declare-fun e!155859 () Bool)

(declare-fun e!155868 () Bool)

(assert (=> b!240080 (= e!155859 e!155868)))

(declare-fun res!117699 () Bool)

(assert (=> b!240080 (=> (not res!117699) (not e!155868))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!240080 (= res!117699 (or (= lt!120940 (MissingZero!1052 index!297)) (= lt!120940 (MissingVacant!1052 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11918 (_ BitVec 32)) SeekEntryResult!1052)

(assert (=> b!240080 (= lt!120940 (seekEntryOrOpen!0 key!932 (_keys!6553 thiss!1504) (mask!10505 thiss!1504)))))

(declare-fun b!240081 () Bool)

(assert (=> b!240081 (= e!155870 e!155863)))

(declare-fun res!117698 () Bool)

(declare-fun call!22329 () Bool)

(assert (=> b!240081 (= res!117698 call!22329)))

(assert (=> b!240081 (=> (not res!117698) (not e!155863))))

(declare-fun mapNonEmpty!10710 () Bool)

(declare-fun tp!22575 () Bool)

(assert (=> mapNonEmpty!10710 (= mapRes!10710 (and tp!22575 e!155864))))

(declare-fun mapValue!10710 () ValueCell!2816)

(declare-fun mapRest!10710 () (Array (_ BitVec 32) ValueCell!2816))

(declare-fun mapKey!10710 () (_ BitVec 32))

(assert (=> mapNonEmpty!10710 (= (arr!5659 (_values!4434 thiss!1504)) (store mapRest!10710 mapKey!10710 mapValue!10710))))

(declare-fun b!240082 () Bool)

(declare-fun res!117707 () Bool)

(declare-fun e!155866 () Bool)

(assert (=> b!240082 (=> (not res!117707) (not e!155866))))

(assert (=> b!240082 (= res!117707 (= (select (arr!5660 (_keys!6553 thiss!1504)) (index!6378 lt!120940)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!240083 () Bool)

(declare-fun res!117703 () Bool)

(assert (=> b!240083 (=> (not res!117703) (not e!155865))))

(declare-fun arrayContainsKey!0 (array!11918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!240083 (= res!117703 (arrayContainsKey!0 (_keys!6553 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!22326 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22326 (= call!22329 (inRange!0 (ite c!39991 (index!6378 lt!120940) (index!6381 lt!120940)) (mask!10505 thiss!1504)))))

(declare-fun b!240084 () Bool)

(declare-fun res!117706 () Bool)

(assert (=> b!240084 (=> (not res!117706) (not e!155859))))

(assert (=> b!240084 (= res!117706 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!22327 () Bool)

(assert (=> bm!22327 (= call!22330 (arrayContainsKey!0 (_keys!6553 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240085 () Bool)

(assert (=> b!240085 (= e!155868 e!155865)))

(declare-fun res!117701 () Bool)

(assert (=> b!240085 (=> (not res!117701) (not e!155865))))

(assert (=> b!240085 (= res!117701 (inRange!0 index!297 (mask!10505 thiss!1504)))))

(declare-fun lt!120943 () Unit!7379)

(assert (=> b!240085 (= lt!120943 e!155861)))

(declare-fun c!39989 () Bool)

(declare-datatypes ((tuple2!4718 0))(
  ( (tuple2!4719 (_1!2369 (_ BitVec 64)) (_2!2369 V!8073)) )
))
(declare-datatypes ((List!3625 0))(
  ( (Nil!3622) (Cons!3621 (h!4277 tuple2!4718) (t!8628 List!3625)) )
))
(declare-datatypes ((ListLongMap!3645 0))(
  ( (ListLongMap!3646 (toList!1838 List!3625)) )
))
(declare-fun contains!1720 (ListLongMap!3645 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1361 (array!11918 array!11916 (_ BitVec 32) (_ BitVec 32) V!8073 V!8073 (_ BitVec 32) Int) ListLongMap!3645)

(assert (=> b!240085 (= c!39989 (contains!1720 (getCurrentListMap!1361 (_keys!6553 thiss!1504) (_values!4434 thiss!1504) (mask!10505 thiss!1504) (extraKeys!4188 thiss!1504) (zeroValue!4292 thiss!1504) (minValue!4292 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4451 thiss!1504)) key!932))))

(declare-fun res!117700 () Bool)

(assert (=> start!22966 (=> (not res!117700) (not e!155859))))

(declare-fun valid!1383 (LongMapFixedSize!3532) Bool)

(assert (=> start!22966 (= res!117700 (valid!1383 thiss!1504))))

(assert (=> start!22966 e!155859))

(assert (=> start!22966 e!155860))

(assert (=> start!22966 true))

(declare-fun b!240086 () Bool)

(declare-fun res!117697 () Bool)

(assert (=> b!240086 (=> (not res!117697) (not e!155866))))

(assert (=> b!240086 (= res!117697 call!22329)))

(assert (=> b!240086 (= e!155858 e!155866)))

(declare-fun b!240087 () Bool)

(assert (=> b!240087 (= e!155866 (not call!22330))))

(declare-fun b!240088 () Bool)

(declare-fun Unit!7381 () Unit!7379)

(assert (=> b!240088 (= e!155861 Unit!7381)))

(declare-fun lt!120941 () Unit!7379)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!337 (array!11918 array!11916 (_ BitVec 32) (_ BitVec 32) V!8073 V!8073 (_ BitVec 64) Int) Unit!7379)

(assert (=> b!240088 (= lt!120941 (lemmaInListMapThenSeekEntryOrOpenFindsIt!337 (_keys!6553 thiss!1504) (_values!4434 thiss!1504) (mask!10505 thiss!1504) (extraKeys!4188 thiss!1504) (zeroValue!4292 thiss!1504) (minValue!4292 thiss!1504) key!932 (defaultEntry!4451 thiss!1504)))))

(assert (=> b!240088 false))

(declare-fun b!240089 () Bool)

(declare-fun res!117704 () Bool)

(assert (=> b!240089 (=> (not res!117704) (not e!155865))))

(declare-datatypes ((List!3626 0))(
  ( (Nil!3623) (Cons!3622 (h!4278 (_ BitVec 64)) (t!8629 List!3626)) )
))
(declare-fun arrayNoDuplicates!0 (array!11918 (_ BitVec 32) List!3626) Bool)

(assert (=> b!240089 (= res!117704 (arrayNoDuplicates!0 (_keys!6553 thiss!1504) #b00000000000000000000000000000000 Nil!3623))))

(declare-fun b!240090 () Bool)

(declare-fun c!39990 () Bool)

(assert (=> b!240090 (= c!39990 (is-MissingVacant!1052 lt!120940))))

(assert (=> b!240090 (= e!155858 e!155870)))

(declare-fun b!240091 () Bool)

(assert (=> b!240091 (= e!155867 (and e!155869 mapRes!10710))))

(declare-fun condMapEmpty!10710 () Bool)

(declare-fun mapDefault!10710 () ValueCell!2816)

