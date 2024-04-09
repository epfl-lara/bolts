; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75852 () Bool)

(assert start!75852)

(declare-fun b!891901 () Bool)

(declare-fun b_free!15795 () Bool)

(declare-fun b_next!15795 () Bool)

(assert (=> b!891901 (= b_free!15795 (not b_next!15795))))

(declare-fun tp!55354 () Bool)

(declare-fun b_and!26053 () Bool)

(assert (=> b!891901 (= tp!55354 b_and!26053)))

(declare-fun tp_is_empty!18123 () Bool)

(declare-datatypes ((array!52212 0))(
  ( (array!52213 (arr!25108 (Array (_ BitVec 32) (_ BitVec 64))) (size!25553 (_ BitVec 32))) )
))
(declare-datatypes ((V!29129 0))(
  ( (V!29130 (val!9112 Int)) )
))
(declare-datatypes ((ValueCell!8580 0))(
  ( (ValueCellFull!8580 (v!11584 V!29129)) (EmptyCell!8580) )
))
(declare-datatypes ((array!52214 0))(
  ( (array!52215 (arr!25109 (Array (_ BitVec 32) ValueCell!8580)) (size!25554 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4176 0))(
  ( (LongMapFixedSize!4177 (defaultEntry!5285 Int) (mask!25783 (_ BitVec 32)) (extraKeys!4979 (_ BitVec 32)) (zeroValue!5083 V!29129) (minValue!5083 V!29129) (_size!2143 (_ BitVec 32)) (_keys!9964 array!52212) (_values!5270 array!52214) (_vacant!2143 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4176)

(declare-fun e!497845 () Bool)

(declare-fun e!497838 () Bool)

(declare-fun array_inv!19698 (array!52212) Bool)

(declare-fun array_inv!19699 (array!52214) Bool)

(assert (=> b!891901 (= e!497845 (and tp!55354 tp_is_empty!18123 (array_inv!19698 (_keys!9964 thiss!1181)) (array_inv!19699 (_values!5270 thiss!1181)) e!497838))))

(declare-fun b!891902 () Bool)

(declare-fun e!497843 () Bool)

(declare-fun e!497839 () Bool)

(assert (=> b!891902 (= e!497843 (not e!497839))))

(declare-fun res!604390 () Bool)

(assert (=> b!891902 (=> res!604390 e!497839)))

(declare-datatypes ((SeekEntryResult!8831 0))(
  ( (MissingZero!8831 (index!37694 (_ BitVec 32))) (Found!8831 (index!37695 (_ BitVec 32))) (Intermediate!8831 (undefined!9643 Bool) (index!37696 (_ BitVec 32)) (x!75792 (_ BitVec 32))) (Undefined!8831) (MissingVacant!8831 (index!37697 (_ BitVec 32))) )
))
(declare-fun lt!402940 () SeekEntryResult!8831)

(get-info :version)

(assert (=> b!891902 (= res!604390 (not ((_ is Found!8831) lt!402940)))))

(declare-fun e!497846 () Bool)

(assert (=> b!891902 e!497846))

(declare-fun res!604389 () Bool)

(assert (=> b!891902 (=> res!604389 e!497846)))

(assert (=> b!891902 (= res!604389 (not ((_ is Found!8831) lt!402940)))))

(declare-datatypes ((Unit!30345 0))(
  ( (Unit!30346) )
))
(declare-fun lt!402943 () Unit!30345)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!48 (array!52212 array!52214 (_ BitVec 32) (_ BitVec 32) V!29129 V!29129 (_ BitVec 64)) Unit!30345)

(assert (=> b!891902 (= lt!402943 (lemmaSeekEntryGivesInRangeIndex!48 (_keys!9964 thiss!1181) (_values!5270 thiss!1181) (mask!25783 thiss!1181) (extraKeys!4979 thiss!1181) (zeroValue!5083 thiss!1181) (minValue!5083 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52212 (_ BitVec 32)) SeekEntryResult!8831)

(assert (=> b!891902 (= lt!402940 (seekEntry!0 key!785 (_keys!9964 thiss!1181) (mask!25783 thiss!1181)))))

(declare-fun b!891903 () Bool)

(declare-fun e!497841 () Bool)

(assert (=> b!891903 (= e!497841 tp_is_empty!18123)))

(declare-fun b!891904 () Bool)

(declare-fun mapRes!28739 () Bool)

(assert (=> b!891904 (= e!497838 (and e!497841 mapRes!28739))))

(declare-fun condMapEmpty!28739 () Bool)

(declare-fun mapDefault!28739 () ValueCell!8580)

(assert (=> b!891904 (= condMapEmpty!28739 (= (arr!25109 (_values!5270 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8580)) mapDefault!28739)))))

(declare-fun b!891905 () Bool)

(declare-fun e!497842 () Bool)

(assert (=> b!891905 (= e!497839 e!497842)))

(declare-fun res!604387 () Bool)

(assert (=> b!891905 (=> res!604387 e!497842)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891905 (= res!604387 (not (validMask!0 (mask!25783 thiss!1181))))))

(declare-datatypes ((tuple2!11998 0))(
  ( (tuple2!11999 (_1!6009 (_ BitVec 64)) (_2!6009 V!29129)) )
))
(declare-datatypes ((List!17847 0))(
  ( (Nil!17844) (Cons!17843 (h!18974 tuple2!11998) (t!25154 List!17847)) )
))
(declare-datatypes ((ListLongMap!10709 0))(
  ( (ListLongMap!10710 (toList!5370 List!17847)) )
))
(declare-fun lt!402945 () ListLongMap!10709)

(declare-fun contains!4347 (ListLongMap!10709 (_ BitVec 64)) Bool)

(assert (=> b!891905 (contains!4347 lt!402945 (select (arr!25108 (_keys!9964 thiss!1181)) (index!37695 lt!402940)))))

(declare-fun getCurrentListMap!2623 (array!52212 array!52214 (_ BitVec 32) (_ BitVec 32) V!29129 V!29129 (_ BitVec 32) Int) ListLongMap!10709)

(assert (=> b!891905 (= lt!402945 (getCurrentListMap!2623 (_keys!9964 thiss!1181) (_values!5270 thiss!1181) (mask!25783 thiss!1181) (extraKeys!4979 thiss!1181) (zeroValue!5083 thiss!1181) (minValue!5083 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5285 thiss!1181)))))

(declare-fun lt!402941 () Unit!30345)

(declare-fun lemmaValidKeyInArrayIsInListMap!216 (array!52212 array!52214 (_ BitVec 32) (_ BitVec 32) V!29129 V!29129 (_ BitVec 32) Int) Unit!30345)

(assert (=> b!891905 (= lt!402941 (lemmaValidKeyInArrayIsInListMap!216 (_keys!9964 thiss!1181) (_values!5270 thiss!1181) (mask!25783 thiss!1181) (extraKeys!4979 thiss!1181) (zeroValue!5083 thiss!1181) (minValue!5083 thiss!1181) (index!37695 lt!402940) (defaultEntry!5285 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52212 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891905 (arrayContainsKey!0 (_keys!9964 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402942 () Unit!30345)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52212 (_ BitVec 64) (_ BitVec 32)) Unit!30345)

(assert (=> b!891905 (= lt!402942 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9964 thiss!1181) key!785 (index!37695 lt!402940)))))

(declare-fun res!604391 () Bool)

(assert (=> start!75852 (=> (not res!604391) (not e!497843))))

(declare-fun valid!1603 (LongMapFixedSize!4176) Bool)

(assert (=> start!75852 (= res!604391 (valid!1603 thiss!1181))))

(assert (=> start!75852 e!497843))

(assert (=> start!75852 e!497845))

(assert (=> start!75852 true))

(declare-fun b!891906 () Bool)

(declare-fun res!604392 () Bool)

(assert (=> b!891906 (=> res!604392 e!497842)))

(declare-datatypes ((List!17848 0))(
  ( (Nil!17845) (Cons!17844 (h!18975 (_ BitVec 64)) (t!25155 List!17848)) )
))
(declare-fun arrayNoDuplicates!0 (array!52212 (_ BitVec 32) List!17848) Bool)

(assert (=> b!891906 (= res!604392 (not (arrayNoDuplicates!0 (_keys!9964 thiss!1181) #b00000000000000000000000000000000 Nil!17845)))))

(declare-fun b!891907 () Bool)

(declare-fun res!604388 () Bool)

(assert (=> b!891907 (=> res!604388 e!497842)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52212 (_ BitVec 32)) Bool)

(assert (=> b!891907 (= res!604388 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9964 thiss!1181) (mask!25783 thiss!1181))))))

(declare-fun b!891908 () Bool)

(declare-fun res!604385 () Bool)

(assert (=> b!891908 (=> res!604385 e!497842)))

(assert (=> b!891908 (= res!604385 (or (not (= (size!25554 (_values!5270 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25783 thiss!1181)))) (not (= (size!25553 (_keys!9964 thiss!1181)) (size!25554 (_values!5270 thiss!1181)))) (bvslt (mask!25783 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4979 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4979 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!891909 () Bool)

(assert (=> b!891909 (= e!497842 true)))

(declare-fun lt!402944 () Bool)

(assert (=> b!891909 (= lt!402944 (contains!4347 lt!402945 key!785))))

(declare-fun b!891910 () Bool)

(declare-fun e!497844 () Bool)

(assert (=> b!891910 (= e!497844 tp_is_empty!18123)))

(declare-fun mapNonEmpty!28739 () Bool)

(declare-fun tp!55355 () Bool)

(assert (=> mapNonEmpty!28739 (= mapRes!28739 (and tp!55355 e!497844))))

(declare-fun mapValue!28739 () ValueCell!8580)

(declare-fun mapRest!28739 () (Array (_ BitVec 32) ValueCell!8580))

(declare-fun mapKey!28739 () (_ BitVec 32))

(assert (=> mapNonEmpty!28739 (= (arr!25109 (_values!5270 thiss!1181)) (store mapRest!28739 mapKey!28739 mapValue!28739))))

(declare-fun mapIsEmpty!28739 () Bool)

(assert (=> mapIsEmpty!28739 mapRes!28739))

(declare-fun b!891911 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891911 (= e!497846 (inRange!0 (index!37695 lt!402940) (mask!25783 thiss!1181)))))

(declare-fun b!891912 () Bool)

(declare-fun res!604386 () Bool)

(assert (=> b!891912 (=> (not res!604386) (not e!497843))))

(assert (=> b!891912 (= res!604386 (not (= key!785 (bvneg key!785))))))

(assert (= (and start!75852 res!604391) b!891912))

(assert (= (and b!891912 res!604386) b!891902))

(assert (= (and b!891902 (not res!604389)) b!891911))

(assert (= (and b!891902 (not res!604390)) b!891905))

(assert (= (and b!891905 (not res!604387)) b!891908))

(assert (= (and b!891908 (not res!604385)) b!891907))

(assert (= (and b!891907 (not res!604388)) b!891906))

(assert (= (and b!891906 (not res!604392)) b!891909))

(assert (= (and b!891904 condMapEmpty!28739) mapIsEmpty!28739))

(assert (= (and b!891904 (not condMapEmpty!28739)) mapNonEmpty!28739))

(assert (= (and mapNonEmpty!28739 ((_ is ValueCellFull!8580) mapValue!28739)) b!891910))

(assert (= (and b!891904 ((_ is ValueCellFull!8580) mapDefault!28739)) b!891903))

(assert (= b!891901 b!891904))

(assert (= start!75852 b!891901))

(declare-fun m!830285 () Bool)

(assert (=> b!891905 m!830285))

(declare-fun m!830287 () Bool)

(assert (=> b!891905 m!830287))

(declare-fun m!830289 () Bool)

(assert (=> b!891905 m!830289))

(assert (=> b!891905 m!830285))

(declare-fun m!830291 () Bool)

(assert (=> b!891905 m!830291))

(declare-fun m!830293 () Bool)

(assert (=> b!891905 m!830293))

(declare-fun m!830295 () Bool)

(assert (=> b!891905 m!830295))

(declare-fun m!830297 () Bool)

(assert (=> b!891905 m!830297))

(declare-fun m!830299 () Bool)

(assert (=> b!891909 m!830299))

(declare-fun m!830301 () Bool)

(assert (=> b!891906 m!830301))

(declare-fun m!830303 () Bool)

(assert (=> b!891902 m!830303))

(declare-fun m!830305 () Bool)

(assert (=> b!891902 m!830305))

(declare-fun m!830307 () Bool)

(assert (=> b!891907 m!830307))

(declare-fun m!830309 () Bool)

(assert (=> mapNonEmpty!28739 m!830309))

(declare-fun m!830311 () Bool)

(assert (=> b!891911 m!830311))

(declare-fun m!830313 () Bool)

(assert (=> b!891901 m!830313))

(declare-fun m!830315 () Bool)

(assert (=> b!891901 m!830315))

(declare-fun m!830317 () Bool)

(assert (=> start!75852 m!830317))

(check-sat (not b!891902) b_and!26053 (not mapNonEmpty!28739) (not b!891901) (not b!891905) tp_is_empty!18123 (not b!891907) (not b!891909) (not b!891911) (not b_next!15795) (not b!891906) (not start!75852))
(check-sat b_and!26053 (not b_next!15795))
