; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75842 () Bool)

(assert start!75842)

(declare-fun b!891728 () Bool)

(declare-fun b_free!15785 () Bool)

(declare-fun b_next!15785 () Bool)

(assert (=> b!891728 (= b_free!15785 (not b_next!15785))))

(declare-fun tp!55324 () Bool)

(declare-fun b_and!26043 () Bool)

(assert (=> b!891728 (= tp!55324 b_and!26043)))

(declare-fun b!891721 () Bool)

(declare-fun res!604272 () Bool)

(declare-fun e!497709 () Bool)

(assert (=> b!891721 (=> res!604272 e!497709)))

(declare-datatypes ((array!52192 0))(
  ( (array!52193 (arr!25098 (Array (_ BitVec 32) (_ BitVec 64))) (size!25543 (_ BitVec 32))) )
))
(declare-datatypes ((V!29115 0))(
  ( (V!29116 (val!9107 Int)) )
))
(declare-datatypes ((ValueCell!8575 0))(
  ( (ValueCellFull!8575 (v!11579 V!29115)) (EmptyCell!8575) )
))
(declare-datatypes ((array!52194 0))(
  ( (array!52195 (arr!25099 (Array (_ BitVec 32) ValueCell!8575)) (size!25544 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4166 0))(
  ( (LongMapFixedSize!4167 (defaultEntry!5280 Int) (mask!25774 (_ BitVec 32)) (extraKeys!4974 (_ BitVec 32)) (zeroValue!5078 V!29115) (minValue!5078 V!29115) (_size!2138 (_ BitVec 32)) (_keys!9959 array!52192) (_values!5265 array!52194) (_vacant!2138 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4166)

(assert (=> b!891721 (= res!604272 (or (not (= (size!25544 (_values!5265 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25774 thiss!1181)))) (not (= (size!25543 (_keys!9959 thiss!1181)) (size!25544 (_values!5265 thiss!1181)))) (bvslt (mask!25774 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4974 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4974 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!28724 () Bool)

(declare-fun mapRes!28724 () Bool)

(assert (=> mapIsEmpty!28724 mapRes!28724))

(declare-fun b!891722 () Bool)

(declare-fun res!604268 () Bool)

(assert (=> b!891722 (=> res!604268 e!497709)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52192 (_ BitVec 32)) Bool)

(assert (=> b!891722 (= res!604268 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9959 thiss!1181) (mask!25774 thiss!1181))))))

(declare-fun b!891724 () Bool)

(declare-fun e!497706 () Bool)

(declare-fun tp_is_empty!18113 () Bool)

(assert (=> b!891724 (= e!497706 tp_is_empty!18113)))

(declare-fun b!891725 () Bool)

(declare-fun e!497707 () Bool)

(assert (=> b!891725 (= e!497707 tp_is_empty!18113)))

(declare-fun b!891726 () Bool)

(assert (=> b!891726 (= e!497709 true)))

(declare-fun lt!402852 () Bool)

(declare-datatypes ((tuple2!11990 0))(
  ( (tuple2!11991 (_1!6005 (_ BitVec 64)) (_2!6005 V!29115)) )
))
(declare-datatypes ((List!17839 0))(
  ( (Nil!17836) (Cons!17835 (h!18966 tuple2!11990) (t!25146 List!17839)) )
))
(declare-datatypes ((ListLongMap!10701 0))(
  ( (ListLongMap!10702 (toList!5366 List!17839)) )
))
(declare-fun lt!402854 () ListLongMap!10701)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4343 (ListLongMap!10701 (_ BitVec 64)) Bool)

(assert (=> b!891726 (= lt!402852 (contains!4343 lt!402854 key!785))))

(declare-fun b!891727 () Bool)

(declare-fun e!497704 () Bool)

(declare-fun e!497710 () Bool)

(assert (=> b!891727 (= e!497704 (not e!497710))))

(declare-fun res!604269 () Bool)

(assert (=> b!891727 (=> res!604269 e!497710)))

(declare-datatypes ((SeekEntryResult!8827 0))(
  ( (MissingZero!8827 (index!37678 (_ BitVec 32))) (Found!8827 (index!37679 (_ BitVec 32))) (Intermediate!8827 (undefined!9639 Bool) (index!37680 (_ BitVec 32)) (x!75772 (_ BitVec 32))) (Undefined!8827) (MissingVacant!8827 (index!37681 (_ BitVec 32))) )
))
(declare-fun lt!402855 () SeekEntryResult!8827)

(assert (=> b!891727 (= res!604269 (not (is-Found!8827 lt!402855)))))

(declare-fun e!497708 () Bool)

(assert (=> b!891727 e!497708))

(declare-fun res!604265 () Bool)

(assert (=> b!891727 (=> res!604265 e!497708)))

(assert (=> b!891727 (= res!604265 (not (is-Found!8827 lt!402855)))))

(declare-datatypes ((Unit!30337 0))(
  ( (Unit!30338) )
))
(declare-fun lt!402850 () Unit!30337)

(declare-fun lemmaSeekEntryGivesInRangeIndex!45 (array!52192 array!52194 (_ BitVec 32) (_ BitVec 32) V!29115 V!29115 (_ BitVec 64)) Unit!30337)

(assert (=> b!891727 (= lt!402850 (lemmaSeekEntryGivesInRangeIndex!45 (_keys!9959 thiss!1181) (_values!5265 thiss!1181) (mask!25774 thiss!1181) (extraKeys!4974 thiss!1181) (zeroValue!5078 thiss!1181) (minValue!5078 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52192 (_ BitVec 32)) SeekEntryResult!8827)

(assert (=> b!891727 (= lt!402855 (seekEntry!0 key!785 (_keys!9959 thiss!1181) (mask!25774 thiss!1181)))))

(declare-fun mapNonEmpty!28724 () Bool)

(declare-fun tp!55325 () Bool)

(assert (=> mapNonEmpty!28724 (= mapRes!28724 (and tp!55325 e!497706))))

(declare-fun mapRest!28724 () (Array (_ BitVec 32) ValueCell!8575))

(declare-fun mapKey!28724 () (_ BitVec 32))

(declare-fun mapValue!28724 () ValueCell!8575)

(assert (=> mapNonEmpty!28724 (= (arr!25099 (_values!5265 thiss!1181)) (store mapRest!28724 mapKey!28724 mapValue!28724))))

(declare-fun e!497705 () Bool)

(declare-fun e!497711 () Bool)

(declare-fun array_inv!19690 (array!52192) Bool)

(declare-fun array_inv!19691 (array!52194) Bool)

(assert (=> b!891728 (= e!497711 (and tp!55324 tp_is_empty!18113 (array_inv!19690 (_keys!9959 thiss!1181)) (array_inv!19691 (_values!5265 thiss!1181)) e!497705))))

(declare-fun b!891729 () Bool)

(declare-fun res!604271 () Bool)

(assert (=> b!891729 (=> res!604271 e!497709)))

(declare-datatypes ((List!17840 0))(
  ( (Nil!17837) (Cons!17836 (h!18967 (_ BitVec 64)) (t!25147 List!17840)) )
))
(declare-fun arrayNoDuplicates!0 (array!52192 (_ BitVec 32) List!17840) Bool)

(assert (=> b!891729 (= res!604271 (not (arrayNoDuplicates!0 (_keys!9959 thiss!1181) #b00000000000000000000000000000000 Nil!17837)))))

(declare-fun b!891730 () Bool)

(assert (=> b!891730 (= e!497710 e!497709)))

(declare-fun res!604266 () Bool)

(assert (=> b!891730 (=> res!604266 e!497709)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891730 (= res!604266 (not (validMask!0 (mask!25774 thiss!1181))))))

(assert (=> b!891730 (contains!4343 lt!402854 (select (arr!25098 (_keys!9959 thiss!1181)) (index!37679 lt!402855)))))

(declare-fun getCurrentListMap!2619 (array!52192 array!52194 (_ BitVec 32) (_ BitVec 32) V!29115 V!29115 (_ BitVec 32) Int) ListLongMap!10701)

(assert (=> b!891730 (= lt!402854 (getCurrentListMap!2619 (_keys!9959 thiss!1181) (_values!5265 thiss!1181) (mask!25774 thiss!1181) (extraKeys!4974 thiss!1181) (zeroValue!5078 thiss!1181) (minValue!5078 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5280 thiss!1181)))))

(declare-fun lt!402853 () Unit!30337)

(declare-fun lemmaValidKeyInArrayIsInListMap!212 (array!52192 array!52194 (_ BitVec 32) (_ BitVec 32) V!29115 V!29115 (_ BitVec 32) Int) Unit!30337)

(assert (=> b!891730 (= lt!402853 (lemmaValidKeyInArrayIsInListMap!212 (_keys!9959 thiss!1181) (_values!5265 thiss!1181) (mask!25774 thiss!1181) (extraKeys!4974 thiss!1181) (zeroValue!5078 thiss!1181) (minValue!5078 thiss!1181) (index!37679 lt!402855) (defaultEntry!5280 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52192 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891730 (arrayContainsKey!0 (_keys!9959 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402851 () Unit!30337)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52192 (_ BitVec 64) (_ BitVec 32)) Unit!30337)

(assert (=> b!891730 (= lt!402851 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9959 thiss!1181) key!785 (index!37679 lt!402855)))))

(declare-fun b!891723 () Bool)

(assert (=> b!891723 (= e!497705 (and e!497707 mapRes!28724))))

(declare-fun condMapEmpty!28724 () Bool)

(declare-fun mapDefault!28724 () ValueCell!8575)

