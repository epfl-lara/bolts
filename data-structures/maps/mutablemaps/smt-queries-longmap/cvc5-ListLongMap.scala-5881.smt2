; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75844 () Bool)

(assert start!75844)

(declare-fun b!891758 () Bool)

(declare-fun b_free!15787 () Bool)

(declare-fun b_next!15787 () Bool)

(assert (=> b!891758 (= b_free!15787 (not b_next!15787))))

(declare-fun tp!55331 () Bool)

(declare-fun b_and!26045 () Bool)

(assert (=> b!891758 (= tp!55331 b_and!26045)))

(declare-fun b!891757 () Bool)

(declare-fun res!604296 () Bool)

(declare-fun e!497736 () Bool)

(assert (=> b!891757 (=> res!604296 e!497736)))

(declare-datatypes ((array!52196 0))(
  ( (array!52197 (arr!25100 (Array (_ BitVec 32) (_ BitVec 64))) (size!25545 (_ BitVec 32))) )
))
(declare-datatypes ((V!29119 0))(
  ( (V!29120 (val!9108 Int)) )
))
(declare-datatypes ((ValueCell!8576 0))(
  ( (ValueCellFull!8576 (v!11580 V!29119)) (EmptyCell!8576) )
))
(declare-datatypes ((array!52198 0))(
  ( (array!52199 (arr!25101 (Array (_ BitVec 32) ValueCell!8576)) (size!25546 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4168 0))(
  ( (LongMapFixedSize!4169 (defaultEntry!5281 Int) (mask!25777 (_ BitVec 32)) (extraKeys!4975 (_ BitVec 32)) (zeroValue!5079 V!29119) (minValue!5079 V!29119) (_size!2139 (_ BitVec 32)) (_keys!9960 array!52196) (_values!5266 array!52198) (_vacant!2139 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4168)

(declare-datatypes ((List!17841 0))(
  ( (Nil!17838) (Cons!17837 (h!18968 (_ BitVec 64)) (t!25148 List!17841)) )
))
(declare-fun arrayNoDuplicates!0 (array!52196 (_ BitVec 32) List!17841) Bool)

(assert (=> b!891757 (= res!604296 (not (arrayNoDuplicates!0 (_keys!9960 thiss!1181) #b00000000000000000000000000000000 Nil!17838)))))

(declare-fun mapIsEmpty!28727 () Bool)

(declare-fun mapRes!28727 () Bool)

(assert (=> mapIsEmpty!28727 mapRes!28727))

(declare-fun e!497730 () Bool)

(declare-fun e!497738 () Bool)

(declare-fun tp_is_empty!18115 () Bool)

(declare-fun array_inv!19692 (array!52196) Bool)

(declare-fun array_inv!19693 (array!52198) Bool)

(assert (=> b!891758 (= e!497730 (and tp!55331 tp_is_empty!18115 (array_inv!19692 (_keys!9960 thiss!1181)) (array_inv!19693 (_values!5266 thiss!1181)) e!497738))))

(declare-fun b!891759 () Bool)

(declare-fun e!497733 () Bool)

(assert (=> b!891759 (= e!497733 tp_is_empty!18115)))

(declare-fun b!891760 () Bool)

(declare-fun e!497735 () Bool)

(assert (=> b!891760 (= e!497735 e!497736)))

(declare-fun res!604289 () Bool)

(assert (=> b!891760 (=> res!604289 e!497736)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891760 (= res!604289 (not (validMask!0 (mask!25777 thiss!1181))))))

(declare-datatypes ((tuple2!11992 0))(
  ( (tuple2!11993 (_1!6006 (_ BitVec 64)) (_2!6006 V!29119)) )
))
(declare-datatypes ((List!17842 0))(
  ( (Nil!17839) (Cons!17838 (h!18969 tuple2!11992) (t!25149 List!17842)) )
))
(declare-datatypes ((ListLongMap!10703 0))(
  ( (ListLongMap!10704 (toList!5367 List!17842)) )
))
(declare-fun lt!402871 () ListLongMap!10703)

(declare-datatypes ((SeekEntryResult!8828 0))(
  ( (MissingZero!8828 (index!37682 (_ BitVec 32))) (Found!8828 (index!37683 (_ BitVec 32))) (Intermediate!8828 (undefined!9640 Bool) (index!37684 (_ BitVec 32)) (x!75781 (_ BitVec 32))) (Undefined!8828) (MissingVacant!8828 (index!37685 (_ BitVec 32))) )
))
(declare-fun lt!402868 () SeekEntryResult!8828)

(declare-fun contains!4344 (ListLongMap!10703 (_ BitVec 64)) Bool)

(assert (=> b!891760 (contains!4344 lt!402871 (select (arr!25100 (_keys!9960 thiss!1181)) (index!37683 lt!402868)))))

(declare-fun getCurrentListMap!2620 (array!52196 array!52198 (_ BitVec 32) (_ BitVec 32) V!29119 V!29119 (_ BitVec 32) Int) ListLongMap!10703)

(assert (=> b!891760 (= lt!402871 (getCurrentListMap!2620 (_keys!9960 thiss!1181) (_values!5266 thiss!1181) (mask!25777 thiss!1181) (extraKeys!4975 thiss!1181) (zeroValue!5079 thiss!1181) (minValue!5079 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5281 thiss!1181)))))

(declare-datatypes ((Unit!30339 0))(
  ( (Unit!30340) )
))
(declare-fun lt!402870 () Unit!30339)

(declare-fun lemmaValidKeyInArrayIsInListMap!213 (array!52196 array!52198 (_ BitVec 32) (_ BitVec 32) V!29119 V!29119 (_ BitVec 32) Int) Unit!30339)

(assert (=> b!891760 (= lt!402870 (lemmaValidKeyInArrayIsInListMap!213 (_keys!9960 thiss!1181) (_values!5266 thiss!1181) (mask!25777 thiss!1181) (extraKeys!4975 thiss!1181) (zeroValue!5079 thiss!1181) (minValue!5079 thiss!1181) (index!37683 lt!402868) (defaultEntry!5281 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891760 (arrayContainsKey!0 (_keys!9960 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402869 () Unit!30339)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52196 (_ BitVec 64) (_ BitVec 32)) Unit!30339)

(assert (=> b!891760 (= lt!402869 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9960 thiss!1181) key!785 (index!37683 lt!402868)))))

(declare-fun b!891761 () Bool)

(declare-fun e!497734 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891761 (= e!497734 (inRange!0 (index!37683 lt!402868) (mask!25777 thiss!1181)))))

(declare-fun b!891762 () Bool)

(declare-fun e!497737 () Bool)

(assert (=> b!891762 (= e!497737 (not e!497735))))

(declare-fun res!604291 () Bool)

(assert (=> b!891762 (=> res!604291 e!497735)))

(assert (=> b!891762 (= res!604291 (not (is-Found!8828 lt!402868)))))

(assert (=> b!891762 e!497734))

(declare-fun res!604293 () Bool)

(assert (=> b!891762 (=> res!604293 e!497734)))

(assert (=> b!891762 (= res!604293 (not (is-Found!8828 lt!402868)))))

(declare-fun lt!402873 () Unit!30339)

(declare-fun lemmaSeekEntryGivesInRangeIndex!46 (array!52196 array!52198 (_ BitVec 32) (_ BitVec 32) V!29119 V!29119 (_ BitVec 64)) Unit!30339)

(assert (=> b!891762 (= lt!402873 (lemmaSeekEntryGivesInRangeIndex!46 (_keys!9960 thiss!1181) (_values!5266 thiss!1181) (mask!25777 thiss!1181) (extraKeys!4975 thiss!1181) (zeroValue!5079 thiss!1181) (minValue!5079 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52196 (_ BitVec 32)) SeekEntryResult!8828)

(assert (=> b!891762 (= lt!402868 (seekEntry!0 key!785 (_keys!9960 thiss!1181) (mask!25777 thiss!1181)))))

(declare-fun b!891763 () Bool)

(declare-fun e!497732 () Bool)

(assert (=> b!891763 (= e!497738 (and e!497732 mapRes!28727))))

(declare-fun condMapEmpty!28727 () Bool)

(declare-fun mapDefault!28727 () ValueCell!8576)

