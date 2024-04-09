; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75846 () Bool)

(assert start!75846)

(declare-fun b!891798 () Bool)

(declare-fun b_free!15789 () Bool)

(declare-fun b_next!15789 () Bool)

(assert (=> b!891798 (= b_free!15789 (not b_next!15789))))

(declare-fun tp!55337 () Bool)

(declare-fun b_and!26047 () Bool)

(assert (=> b!891798 (= tp!55337 b_and!26047)))

(declare-fun b!891793 () Bool)

(declare-fun res!604315 () Bool)

(declare-fun e!497763 () Bool)

(assert (=> b!891793 (=> res!604315 e!497763)))

(declare-datatypes ((array!52200 0))(
  ( (array!52201 (arr!25102 (Array (_ BitVec 32) (_ BitVec 64))) (size!25547 (_ BitVec 32))) )
))
(declare-datatypes ((V!29121 0))(
  ( (V!29122 (val!9109 Int)) )
))
(declare-datatypes ((ValueCell!8577 0))(
  ( (ValueCellFull!8577 (v!11581 V!29121)) (EmptyCell!8577) )
))
(declare-datatypes ((array!52202 0))(
  ( (array!52203 (arr!25103 (Array (_ BitVec 32) ValueCell!8577)) (size!25548 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4170 0))(
  ( (LongMapFixedSize!4171 (defaultEntry!5282 Int) (mask!25778 (_ BitVec 32)) (extraKeys!4976 (_ BitVec 32)) (zeroValue!5080 V!29121) (minValue!5080 V!29121) (_size!2140 (_ BitVec 32)) (_keys!9961 array!52200) (_values!5267 array!52202) (_vacant!2140 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4170)

(assert (=> b!891793 (= res!604315 (or (not (= (size!25548 (_values!5267 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25778 thiss!1181)))) (not (= (size!25547 (_keys!9961 thiss!1181)) (size!25548 (_values!5267 thiss!1181)))) (bvslt (mask!25778 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4976 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4976 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!28730 () Bool)

(declare-fun mapRes!28730 () Bool)

(declare-fun tp!55336 () Bool)

(declare-fun e!497762 () Bool)

(assert (=> mapNonEmpty!28730 (= mapRes!28730 (and tp!55336 e!497762))))

(declare-fun mapValue!28730 () ValueCell!8577)

(declare-fun mapRest!28730 () (Array (_ BitVec 32) ValueCell!8577))

(declare-fun mapKey!28730 () (_ BitVec 32))

(assert (=> mapNonEmpty!28730 (= (arr!25103 (_values!5267 thiss!1181)) (store mapRest!28730 mapKey!28730 mapValue!28730))))

(declare-fun b!891794 () Bool)

(declare-fun e!497761 () Bool)

(declare-fun e!497759 () Bool)

(assert (=> b!891794 (= e!497761 (not e!497759))))

(declare-fun res!604318 () Bool)

(assert (=> b!891794 (=> res!604318 e!497759)))

(declare-datatypes ((SeekEntryResult!8829 0))(
  ( (MissingZero!8829 (index!37686 (_ BitVec 32))) (Found!8829 (index!37687 (_ BitVec 32))) (Intermediate!8829 (undefined!9641 Bool) (index!37688 (_ BitVec 32)) (x!75782 (_ BitVec 32))) (Undefined!8829) (MissingVacant!8829 (index!37689 (_ BitVec 32))) )
))
(declare-fun lt!402889 () SeekEntryResult!8829)

(get-info :version)

(assert (=> b!891794 (= res!604318 (not ((_ is Found!8829) lt!402889)))))

(declare-fun e!497757 () Bool)

(assert (=> b!891794 e!497757))

(declare-fun res!604314 () Bool)

(assert (=> b!891794 (=> res!604314 e!497757)))

(assert (=> b!891794 (= res!604314 (not ((_ is Found!8829) lt!402889)))))

(declare-datatypes ((Unit!30341 0))(
  ( (Unit!30342) )
))
(declare-fun lt!402886 () Unit!30341)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!47 (array!52200 array!52202 (_ BitVec 32) (_ BitVec 32) V!29121 V!29121 (_ BitVec 64)) Unit!30341)

(assert (=> b!891794 (= lt!402886 (lemmaSeekEntryGivesInRangeIndex!47 (_keys!9961 thiss!1181) (_values!5267 thiss!1181) (mask!25778 thiss!1181) (extraKeys!4976 thiss!1181) (zeroValue!5080 thiss!1181) (minValue!5080 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52200 (_ BitVec 32)) SeekEntryResult!8829)

(assert (=> b!891794 (= lt!402889 (seekEntry!0 key!785 (_keys!9961 thiss!1181) (mask!25778 thiss!1181)))))

(declare-fun b!891795 () Bool)

(declare-fun res!604317 () Bool)

(assert (=> b!891795 (=> res!604317 e!497763)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52200 (_ BitVec 32)) Bool)

(assert (=> b!891795 (= res!604317 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9961 thiss!1181) (mask!25778 thiss!1181))))))

(declare-fun b!891796 () Bool)

(assert (=> b!891796 (= e!497763 true)))

(declare-fun lt!402888 () Bool)

(declare-datatypes ((tuple2!11994 0))(
  ( (tuple2!11995 (_1!6007 (_ BitVec 64)) (_2!6007 V!29121)) )
))
(declare-datatypes ((List!17843 0))(
  ( (Nil!17840) (Cons!17839 (h!18970 tuple2!11994) (t!25150 List!17843)) )
))
(declare-datatypes ((ListLongMap!10705 0))(
  ( (ListLongMap!10706 (toList!5368 List!17843)) )
))
(declare-fun lt!402887 () ListLongMap!10705)

(declare-fun contains!4345 (ListLongMap!10705 (_ BitVec 64)) Bool)

(assert (=> b!891796 (= lt!402888 (contains!4345 lt!402887 key!785))))

(declare-fun b!891797 () Bool)

(declare-fun e!497758 () Bool)

(declare-fun tp_is_empty!18117 () Bool)

(assert (=> b!891797 (= e!497758 tp_is_empty!18117)))

(declare-fun e!497765 () Bool)

(declare-fun e!497764 () Bool)

(declare-fun array_inv!19694 (array!52200) Bool)

(declare-fun array_inv!19695 (array!52202) Bool)

(assert (=> b!891798 (= e!497764 (and tp!55337 tp_is_empty!18117 (array_inv!19694 (_keys!9961 thiss!1181)) (array_inv!19695 (_values!5267 thiss!1181)) e!497765))))

(declare-fun res!604316 () Bool)

(assert (=> start!75846 (=> (not res!604316) (not e!497761))))

(declare-fun valid!1601 (LongMapFixedSize!4170) Bool)

(assert (=> start!75846 (= res!604316 (valid!1601 thiss!1181))))

(assert (=> start!75846 e!497761))

(assert (=> start!75846 e!497764))

(assert (=> start!75846 true))

(declare-fun b!891799 () Bool)

(assert (=> b!891799 (= e!497759 e!497763)))

(declare-fun res!604319 () Bool)

(assert (=> b!891799 (=> res!604319 e!497763)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891799 (= res!604319 (not (validMask!0 (mask!25778 thiss!1181))))))

(assert (=> b!891799 (contains!4345 lt!402887 (select (arr!25102 (_keys!9961 thiss!1181)) (index!37687 lt!402889)))))

(declare-fun getCurrentListMap!2621 (array!52200 array!52202 (_ BitVec 32) (_ BitVec 32) V!29121 V!29121 (_ BitVec 32) Int) ListLongMap!10705)

(assert (=> b!891799 (= lt!402887 (getCurrentListMap!2621 (_keys!9961 thiss!1181) (_values!5267 thiss!1181) (mask!25778 thiss!1181) (extraKeys!4976 thiss!1181) (zeroValue!5080 thiss!1181) (minValue!5080 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5282 thiss!1181)))))

(declare-fun lt!402890 () Unit!30341)

(declare-fun lemmaValidKeyInArrayIsInListMap!214 (array!52200 array!52202 (_ BitVec 32) (_ BitVec 32) V!29121 V!29121 (_ BitVec 32) Int) Unit!30341)

(assert (=> b!891799 (= lt!402890 (lemmaValidKeyInArrayIsInListMap!214 (_keys!9961 thiss!1181) (_values!5267 thiss!1181) (mask!25778 thiss!1181) (extraKeys!4976 thiss!1181) (zeroValue!5080 thiss!1181) (minValue!5080 thiss!1181) (index!37687 lt!402889) (defaultEntry!5282 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891799 (arrayContainsKey!0 (_keys!9961 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402891 () Unit!30341)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52200 (_ BitVec 64) (_ BitVec 32)) Unit!30341)

(assert (=> b!891799 (= lt!402891 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9961 thiss!1181) key!785 (index!37687 lt!402889)))))

(declare-fun b!891800 () Bool)

(declare-fun res!604320 () Bool)

(assert (=> b!891800 (=> res!604320 e!497763)))

(declare-datatypes ((List!17844 0))(
  ( (Nil!17841) (Cons!17840 (h!18971 (_ BitVec 64)) (t!25151 List!17844)) )
))
(declare-fun arrayNoDuplicates!0 (array!52200 (_ BitVec 32) List!17844) Bool)

(assert (=> b!891800 (= res!604320 (not (arrayNoDuplicates!0 (_keys!9961 thiss!1181) #b00000000000000000000000000000000 Nil!17841)))))

(declare-fun b!891801 () Bool)

(declare-fun res!604313 () Bool)

(assert (=> b!891801 (=> (not res!604313) (not e!497761))))

(assert (=> b!891801 (= res!604313 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28730 () Bool)

(assert (=> mapIsEmpty!28730 mapRes!28730))

(declare-fun b!891802 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891802 (= e!497757 (inRange!0 (index!37687 lt!402889) (mask!25778 thiss!1181)))))

(declare-fun b!891803 () Bool)

(assert (=> b!891803 (= e!497765 (and e!497758 mapRes!28730))))

(declare-fun condMapEmpty!28730 () Bool)

(declare-fun mapDefault!28730 () ValueCell!8577)

(assert (=> b!891803 (= condMapEmpty!28730 (= (arr!25103 (_values!5267 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8577)) mapDefault!28730)))))

(declare-fun b!891804 () Bool)

(assert (=> b!891804 (= e!497762 tp_is_empty!18117)))

(assert (= (and start!75846 res!604316) b!891801))

(assert (= (and b!891801 res!604313) b!891794))

(assert (= (and b!891794 (not res!604314)) b!891802))

(assert (= (and b!891794 (not res!604318)) b!891799))

(assert (= (and b!891799 (not res!604319)) b!891793))

(assert (= (and b!891793 (not res!604315)) b!891795))

(assert (= (and b!891795 (not res!604317)) b!891800))

(assert (= (and b!891800 (not res!604320)) b!891796))

(assert (= (and b!891803 condMapEmpty!28730) mapIsEmpty!28730))

(assert (= (and b!891803 (not condMapEmpty!28730)) mapNonEmpty!28730))

(assert (= (and mapNonEmpty!28730 ((_ is ValueCellFull!8577) mapValue!28730)) b!891804))

(assert (= (and b!891803 ((_ is ValueCellFull!8577) mapDefault!28730)) b!891797))

(assert (= b!891798 b!891803))

(assert (= start!75846 b!891798))

(declare-fun m!830183 () Bool)

(assert (=> b!891802 m!830183))

(declare-fun m!830185 () Bool)

(assert (=> mapNonEmpty!28730 m!830185))

(declare-fun m!830187 () Bool)

(assert (=> b!891794 m!830187))

(declare-fun m!830189 () Bool)

(assert (=> b!891794 m!830189))

(declare-fun m!830191 () Bool)

(assert (=> b!891800 m!830191))

(declare-fun m!830193 () Bool)

(assert (=> b!891799 m!830193))

(declare-fun m!830195 () Bool)

(assert (=> b!891799 m!830195))

(declare-fun m!830197 () Bool)

(assert (=> b!891799 m!830197))

(declare-fun m!830199 () Bool)

(assert (=> b!891799 m!830199))

(declare-fun m!830201 () Bool)

(assert (=> b!891799 m!830201))

(declare-fun m!830203 () Bool)

(assert (=> b!891799 m!830203))

(declare-fun m!830205 () Bool)

(assert (=> b!891799 m!830205))

(assert (=> b!891799 m!830195))

(declare-fun m!830207 () Bool)

(assert (=> start!75846 m!830207))

(declare-fun m!830209 () Bool)

(assert (=> b!891796 m!830209))

(declare-fun m!830211 () Bool)

(assert (=> b!891798 m!830211))

(declare-fun m!830213 () Bool)

(assert (=> b!891798 m!830213))

(declare-fun m!830215 () Bool)

(assert (=> b!891795 m!830215))

(check-sat (not start!75846) (not b!891799) (not b!891802) (not b!891795) tp_is_empty!18117 (not b!891794) (not b!891800) (not mapNonEmpty!28730) (not b!891796) (not b_next!15789) b_and!26047 (not b!891798))
(check-sat b_and!26047 (not b_next!15789))
