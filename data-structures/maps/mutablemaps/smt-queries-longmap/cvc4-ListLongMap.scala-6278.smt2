; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80322 () Bool)

(assert start!80322)

(declare-fun b!943123 () Bool)

(declare-fun b_free!17993 () Bool)

(declare-fun b_next!17993 () Bool)

(assert (=> b!943123 (= b_free!17993 (not b_next!17993))))

(declare-fun tp!62485 () Bool)

(declare-fun b_and!29423 () Bool)

(assert (=> b!943123 (= tp!62485 b_and!29423)))

(declare-fun b!943117 () Bool)

(declare-fun e!530296 () Bool)

(assert (=> b!943117 (= e!530296 false)))

(declare-fun lt!425184 () Bool)

(declare-datatypes ((V!32299 0))(
  ( (V!32300 (val!10301 Int)) )
))
(declare-datatypes ((ValueCell!9769 0))(
  ( (ValueCellFull!9769 (v!12832 V!32299)) (EmptyCell!9769) )
))
(declare-datatypes ((array!56990 0))(
  ( (array!56991 (arr!27417 (Array (_ BitVec 32) ValueCell!9769)) (size!27883 (_ BitVec 32))) )
))
(declare-datatypes ((array!56992 0))(
  ( (array!56993 (arr!27418 (Array (_ BitVec 32) (_ BitVec 64))) (size!27884 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4688 0))(
  ( (LongMapFixedSize!4689 (defaultEntry!5635 Int) (mask!27252 (_ BitVec 32)) (extraKeys!5367 (_ BitVec 32)) (zeroValue!5471 V!32299) (minValue!5471 V!32299) (_size!2399 (_ BitVec 32)) (_keys!10505 array!56992) (_values!5658 array!56990) (_vacant!2399 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4688)

(declare-datatypes ((List!19377 0))(
  ( (Nil!19374) (Cons!19373 (h!20523 (_ BitVec 64)) (t!27700 List!19377)) )
))
(declare-fun arrayNoDuplicates!0 (array!56992 (_ BitVec 32) List!19377) Bool)

(assert (=> b!943117 (= lt!425184 (arrayNoDuplicates!0 (_keys!10505 thiss!1141) #b00000000000000000000000000000000 Nil!19374))))

(declare-fun b!943118 () Bool)

(declare-fun e!530299 () Bool)

(declare-fun tp_is_empty!20501 () Bool)

(assert (=> b!943118 (= e!530299 tp_is_empty!20501)))

(declare-fun b!943119 () Bool)

(declare-fun res!633834 () Bool)

(assert (=> b!943119 (=> (not res!633834) (not e!530296))))

(assert (=> b!943119 (= res!633834 (and (= (size!27883 (_values!5658 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27252 thiss!1141))) (= (size!27884 (_keys!10505 thiss!1141)) (size!27883 (_values!5658 thiss!1141))) (bvsge (mask!27252 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5367 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5367 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!943120 () Bool)

(declare-fun res!633833 () Bool)

(assert (=> b!943120 (=> (not res!633833) (not e!530296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!943120 (= res!633833 (validMask!0 (mask!27252 thiss!1141)))))

(declare-fun b!943121 () Bool)

(declare-fun res!633828 () Bool)

(assert (=> b!943121 (=> (not res!633828) (not e!530296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56992 (_ BitVec 32)) Bool)

(assert (=> b!943121 (= res!633828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10505 thiss!1141) (mask!27252 thiss!1141)))))

(declare-fun mapIsEmpty!32573 () Bool)

(declare-fun mapRes!32573 () Bool)

(assert (=> mapIsEmpty!32573 mapRes!32573))

(declare-fun b!943122 () Bool)

(declare-fun e!530298 () Bool)

(assert (=> b!943122 (= e!530298 tp_is_empty!20501)))

(declare-fun res!633832 () Bool)

(assert (=> start!80322 (=> (not res!633832) (not e!530296))))

(declare-fun valid!1773 (LongMapFixedSize!4688) Bool)

(assert (=> start!80322 (= res!633832 (valid!1773 thiss!1141))))

(assert (=> start!80322 e!530296))

(declare-fun e!530297 () Bool)

(assert (=> start!80322 e!530297))

(assert (=> start!80322 true))

(declare-fun e!530295 () Bool)

(declare-fun array_inv!21256 (array!56992) Bool)

(declare-fun array_inv!21257 (array!56990) Bool)

(assert (=> b!943123 (= e!530297 (and tp!62485 tp_is_empty!20501 (array_inv!21256 (_keys!10505 thiss!1141)) (array_inv!21257 (_values!5658 thiss!1141)) e!530295))))

(declare-fun b!943124 () Bool)

(declare-fun res!633829 () Bool)

(assert (=> b!943124 (=> (not res!633829) (not e!530296))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9038 0))(
  ( (MissingZero!9038 (index!38522 (_ BitVec 32))) (Found!9038 (index!38523 (_ BitVec 32))) (Intermediate!9038 (undefined!9850 Bool) (index!38524 (_ BitVec 32)) (x!80984 (_ BitVec 32))) (Undefined!9038) (MissingVacant!9038 (index!38525 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56992 (_ BitVec 32)) SeekEntryResult!9038)

(assert (=> b!943124 (= res!633829 (not (is-Found!9038 (seekEntry!0 key!756 (_keys!10505 thiss!1141) (mask!27252 thiss!1141)))))))

(declare-fun b!943125 () Bool)

(declare-fun res!633830 () Bool)

(assert (=> b!943125 (=> (not res!633830) (not e!530296))))

(declare-datatypes ((tuple2!13540 0))(
  ( (tuple2!13541 (_1!6780 (_ BitVec 64)) (_2!6780 V!32299)) )
))
(declare-datatypes ((List!19378 0))(
  ( (Nil!19375) (Cons!19374 (h!20524 tuple2!13540) (t!27701 List!19378)) )
))
(declare-datatypes ((ListLongMap!12251 0))(
  ( (ListLongMap!12252 (toList!6141 List!19378)) )
))
(declare-fun contains!5162 (ListLongMap!12251 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3329 (array!56992 array!56990 (_ BitVec 32) (_ BitVec 32) V!32299 V!32299 (_ BitVec 32) Int) ListLongMap!12251)

(assert (=> b!943125 (= res!633830 (contains!5162 (getCurrentListMap!3329 (_keys!10505 thiss!1141) (_values!5658 thiss!1141) (mask!27252 thiss!1141) (extraKeys!5367 thiss!1141) (zeroValue!5471 thiss!1141) (minValue!5471 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5635 thiss!1141)) key!756))))

(declare-fun mapNonEmpty!32573 () Bool)

(declare-fun tp!62486 () Bool)

(assert (=> mapNonEmpty!32573 (= mapRes!32573 (and tp!62486 e!530298))))

(declare-fun mapKey!32573 () (_ BitVec 32))

(declare-fun mapValue!32573 () ValueCell!9769)

(declare-fun mapRest!32573 () (Array (_ BitVec 32) ValueCell!9769))

(assert (=> mapNonEmpty!32573 (= (arr!27417 (_values!5658 thiss!1141)) (store mapRest!32573 mapKey!32573 mapValue!32573))))

(declare-fun b!943126 () Bool)

(declare-fun res!633831 () Bool)

(assert (=> b!943126 (=> (not res!633831) (not e!530296))))

(assert (=> b!943126 (= res!633831 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943127 () Bool)

(assert (=> b!943127 (= e!530295 (and e!530299 mapRes!32573))))

(declare-fun condMapEmpty!32573 () Bool)

(declare-fun mapDefault!32573 () ValueCell!9769)

