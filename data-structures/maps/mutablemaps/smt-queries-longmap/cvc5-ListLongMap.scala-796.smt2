; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19078 () Bool)

(assert start!19078)

(declare-fun b!187745 () Bool)

(declare-fun b_free!4615 () Bool)

(declare-fun b_next!4615 () Bool)

(assert (=> b!187745 (= b_free!4615 (not b_next!4615))))

(declare-fun tp!16661 () Bool)

(declare-fun b_and!11257 () Bool)

(assert (=> b!187745 (= tp!16661 b_and!11257)))

(declare-fun res!88781 () Bool)

(declare-fun e!123569 () Bool)

(assert (=> start!19078 (=> (not res!88781) (not e!123569))))

(declare-datatypes ((V!5497 0))(
  ( (V!5498 (val!2238 Int)) )
))
(declare-datatypes ((ValueCell!1850 0))(
  ( (ValueCellFull!1850 (v!4150 V!5497)) (EmptyCell!1850) )
))
(declare-datatypes ((array!7992 0))(
  ( (array!7993 (arr!3770 (Array (_ BitVec 32) (_ BitVec 64))) (size!4089 (_ BitVec 32))) )
))
(declare-datatypes ((array!7994 0))(
  ( (array!7995 (arr!3771 (Array (_ BitVec 32) ValueCell!1850)) (size!4090 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2608 0))(
  ( (LongMapFixedSize!2609 (defaultEntry!3830 Int) (mask!8984 (_ BitVec 32)) (extraKeys!3567 (_ BitVec 32)) (zeroValue!3671 V!5497) (minValue!3671 V!5497) (_size!1353 (_ BitVec 32)) (_keys!5785 array!7992) (_values!3813 array!7994) (_vacant!1353 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2608)

(declare-fun valid!1065 (LongMapFixedSize!2608) Bool)

(assert (=> start!19078 (= res!88781 (valid!1065 thiss!1248))))

(assert (=> start!19078 e!123569))

(declare-fun e!123572 () Bool)

(assert (=> start!19078 e!123572))

(assert (=> start!19078 true))

(declare-fun b!187742 () Bool)

(declare-datatypes ((Unit!5655 0))(
  ( (Unit!5656) )
))
(declare-fun e!123571 () Unit!5655)

(declare-fun lt!92943 () Unit!5655)

(assert (=> b!187742 (= e!123571 lt!92943)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!152 (array!7992 array!7994 (_ BitVec 32) (_ BitVec 32) V!5497 V!5497 (_ BitVec 64) Int) Unit!5655)

(assert (=> b!187742 (= lt!92943 (lemmaInListMapThenSeekEntryOrOpenFindsIt!152 (_keys!5785 thiss!1248) (_values!3813 thiss!1248) (mask!8984 thiss!1248) (extraKeys!3567 thiss!1248) (zeroValue!3671 thiss!1248) (minValue!3671 thiss!1248) key!828 (defaultEntry!3830 thiss!1248)))))

(declare-fun res!88780 () Bool)

(declare-datatypes ((SeekEntryResult!659 0))(
  ( (MissingZero!659 (index!4806 (_ BitVec 32))) (Found!659 (index!4807 (_ BitVec 32))) (Intermediate!659 (undefined!1471 Bool) (index!4808 (_ BitVec 32)) (x!20319 (_ BitVec 32))) (Undefined!659) (MissingVacant!659 (index!4809 (_ BitVec 32))) )
))
(declare-fun lt!92944 () SeekEntryResult!659)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!187742 (= res!88780 (inRange!0 (index!4807 lt!92944) (mask!8984 thiss!1248)))))

(declare-fun e!123567 () Bool)

(assert (=> b!187742 (=> (not res!88780) (not e!123567))))

(assert (=> b!187742 e!123567))

(declare-fun mapIsEmpty!7560 () Bool)

(declare-fun mapRes!7560 () Bool)

(assert (=> mapIsEmpty!7560 mapRes!7560))

(declare-fun b!187743 () Bool)

(assert (=> b!187743 (= e!123567 (= (select (arr!3770 (_keys!5785 thiss!1248)) (index!4807 lt!92944)) key!828))))

(declare-fun b!187744 () Bool)

(declare-fun Unit!5657 () Unit!5655)

(assert (=> b!187744 (= e!123571 Unit!5657)))

(declare-fun lt!92942 () Unit!5655)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!153 (array!7992 array!7994 (_ BitVec 32) (_ BitVec 32) V!5497 V!5497 (_ BitVec 64) Int) Unit!5655)

(assert (=> b!187744 (= lt!92942 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!153 (_keys!5785 thiss!1248) (_values!3813 thiss!1248) (mask!8984 thiss!1248) (extraKeys!3567 thiss!1248) (zeroValue!3671 thiss!1248) (minValue!3671 thiss!1248) key!828 (defaultEntry!3830 thiss!1248)))))

(assert (=> b!187744 false))

(declare-fun tp_is_empty!4387 () Bool)

(declare-fun e!123565 () Bool)

(declare-fun array_inv!2431 (array!7992) Bool)

(declare-fun array_inv!2432 (array!7994) Bool)

(assert (=> b!187745 (= e!123572 (and tp!16661 tp_is_empty!4387 (array_inv!2431 (_keys!5785 thiss!1248)) (array_inv!2432 (_values!3813 thiss!1248)) e!123565))))

(declare-fun b!187746 () Bool)

(declare-fun e!123570 () Bool)

(assert (=> b!187746 (= e!123570 tp_is_empty!4387)))

(declare-fun b!187747 () Bool)

(declare-fun e!123566 () Bool)

(declare-fun e!123573 () Bool)

(assert (=> b!187747 (= e!123566 e!123573)))

(declare-fun res!88777 () Bool)

(assert (=> b!187747 (=> (not res!88777) (not e!123573))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!187747 (= res!88777 (validMask!0 (mask!8984 thiss!1248)))))

(declare-fun lt!92941 () Unit!5655)

(assert (=> b!187747 (= lt!92941 e!123571)))

(declare-fun c!33714 () Bool)

(declare-datatypes ((tuple2!3476 0))(
  ( (tuple2!3477 (_1!1748 (_ BitVec 64)) (_2!1748 V!5497)) )
))
(declare-datatypes ((List!2404 0))(
  ( (Nil!2401) (Cons!2400 (h!3036 tuple2!3476) (t!7306 List!2404)) )
))
(declare-datatypes ((ListLongMap!2407 0))(
  ( (ListLongMap!2408 (toList!1219 List!2404)) )
))
(declare-fun contains!1315 (ListLongMap!2407 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!862 (array!7992 array!7994 (_ BitVec 32) (_ BitVec 32) V!5497 V!5497 (_ BitVec 32) Int) ListLongMap!2407)

(assert (=> b!187747 (= c!33714 (contains!1315 (getCurrentListMap!862 (_keys!5785 thiss!1248) (_values!3813 thiss!1248) (mask!8984 thiss!1248) (extraKeys!3567 thiss!1248) (zeroValue!3671 thiss!1248) (minValue!3671 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3830 thiss!1248)) key!828))))

(declare-fun b!187748 () Bool)

(declare-fun e!123568 () Bool)

(assert (=> b!187748 (= e!123565 (and e!123568 mapRes!7560))))

(declare-fun condMapEmpty!7560 () Bool)

(declare-fun mapDefault!7560 () ValueCell!1850)

