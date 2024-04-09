; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75822 () Bool)

(assert start!75822)

(declare-fun b!891367 () Bool)

(declare-fun b_free!15765 () Bool)

(declare-fun b_next!15765 () Bool)

(assert (=> b!891367 (= b_free!15765 (not b_next!15765))))

(declare-fun tp!55265 () Bool)

(declare-fun b_and!26023 () Bool)

(assert (=> b!891367 (= tp!55265 b_and!26023)))

(declare-fun b!891361 () Bool)

(declare-fun e!497436 () Bool)

(declare-fun e!497434 () Bool)

(assert (=> b!891361 (= e!497436 (not e!497434))))

(declare-fun res!604030 () Bool)

(assert (=> b!891361 (=> res!604030 e!497434)))

(declare-datatypes ((SeekEntryResult!8820 0))(
  ( (MissingZero!8820 (index!37650 (_ BitVec 32))) (Found!8820 (index!37651 (_ BitVec 32))) (Intermediate!8820 (undefined!9632 Bool) (index!37652 (_ BitVec 32)) (x!75741 (_ BitVec 32))) (Undefined!8820) (MissingVacant!8820 (index!37653 (_ BitVec 32))) )
))
(declare-fun lt!402670 () SeekEntryResult!8820)

(get-info :version)

(assert (=> b!891361 (= res!604030 (not ((_ is Found!8820) lt!402670)))))

(declare-fun e!497435 () Bool)

(assert (=> b!891361 e!497435))

(declare-fun res!604031 () Bool)

(assert (=> b!891361 (=> res!604031 e!497435)))

(assert (=> b!891361 (= res!604031 (not ((_ is Found!8820) lt!402670)))))

(declare-datatypes ((Unit!30323 0))(
  ( (Unit!30324) )
))
(declare-fun lt!402671 () Unit!30323)

(declare-datatypes ((array!52152 0))(
  ( (array!52153 (arr!25078 (Array (_ BitVec 32) (_ BitVec 64))) (size!25523 (_ BitVec 32))) )
))
(declare-datatypes ((V!29089 0))(
  ( (V!29090 (val!9097 Int)) )
))
(declare-datatypes ((ValueCell!8565 0))(
  ( (ValueCellFull!8565 (v!11569 V!29089)) (EmptyCell!8565) )
))
(declare-datatypes ((array!52154 0))(
  ( (array!52155 (arr!25079 (Array (_ BitVec 32) ValueCell!8565)) (size!25524 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4146 0))(
  ( (LongMapFixedSize!4147 (defaultEntry!5270 Int) (mask!25758 (_ BitVec 32)) (extraKeys!4964 (_ BitVec 32)) (zeroValue!5068 V!29089) (minValue!5068 V!29089) (_size!2128 (_ BitVec 32)) (_keys!9949 array!52152) (_values!5255 array!52154) (_vacant!2128 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4146)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!40 (array!52152 array!52154 (_ BitVec 32) (_ BitVec 32) V!29089 V!29089 (_ BitVec 64)) Unit!30323)

(assert (=> b!891361 (= lt!402671 (lemmaSeekEntryGivesInRangeIndex!40 (_keys!9949 thiss!1181) (_values!5255 thiss!1181) (mask!25758 thiss!1181) (extraKeys!4964 thiss!1181) (zeroValue!5068 thiss!1181) (minValue!5068 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52152 (_ BitVec 32)) SeekEntryResult!8820)

(assert (=> b!891361 (= lt!402670 (seekEntry!0 key!785 (_keys!9949 thiss!1181) (mask!25758 thiss!1181)))))

(declare-fun b!891362 () Bool)

(declare-fun e!497439 () Bool)

(declare-fun tp_is_empty!18093 () Bool)

(assert (=> b!891362 (= e!497439 tp_is_empty!18093)))

(declare-fun b!891363 () Bool)

(declare-fun res!604029 () Bool)

(assert (=> b!891363 (=> (not res!604029) (not e!497436))))

(assert (=> b!891363 (= res!604029 (not (= key!785 (bvneg key!785))))))

(declare-fun b!891364 () Bool)

(declare-fun res!604026 () Bool)

(declare-fun e!497437 () Bool)

(assert (=> b!891364 (=> res!604026 e!497437)))

(declare-datatypes ((List!17827 0))(
  ( (Nil!17824) (Cons!17823 (h!18954 (_ BitVec 64)) (t!25134 List!17827)) )
))
(declare-fun arrayNoDuplicates!0 (array!52152 (_ BitVec 32) List!17827) Bool)

(assert (=> b!891364 (= res!604026 (not (arrayNoDuplicates!0 (_keys!9949 thiss!1181) #b00000000000000000000000000000000 Nil!17824)))))

(declare-fun b!891365 () Bool)

(assert (=> b!891365 (= e!497437 true)))

(declare-fun lt!402673 () Bool)

(declare-datatypes ((tuple2!11974 0))(
  ( (tuple2!11975 (_1!5997 (_ BitVec 64)) (_2!5997 V!29089)) )
))
(declare-datatypes ((List!17828 0))(
  ( (Nil!17825) (Cons!17824 (h!18955 tuple2!11974) (t!25135 List!17828)) )
))
(declare-datatypes ((ListLongMap!10685 0))(
  ( (ListLongMap!10686 (toList!5358 List!17828)) )
))
(declare-fun lt!402675 () ListLongMap!10685)

(declare-fun contains!4335 (ListLongMap!10685 (_ BitVec 64)) Bool)

(assert (=> b!891365 (= lt!402673 (contains!4335 lt!402675 key!785))))

(declare-fun mapNonEmpty!28694 () Bool)

(declare-fun mapRes!28694 () Bool)

(declare-fun tp!55264 () Bool)

(assert (=> mapNonEmpty!28694 (= mapRes!28694 (and tp!55264 e!497439))))

(declare-fun mapRest!28694 () (Array (_ BitVec 32) ValueCell!8565))

(declare-fun mapKey!28694 () (_ BitVec 32))

(declare-fun mapValue!28694 () ValueCell!8565)

(assert (=> mapNonEmpty!28694 (= (arr!25079 (_values!5255 thiss!1181)) (store mapRest!28694 mapKey!28694 mapValue!28694))))

(declare-fun e!497441 () Bool)

(declare-fun e!497433 () Bool)

(declare-fun array_inv!19678 (array!52152) Bool)

(declare-fun array_inv!19679 (array!52154) Bool)

(assert (=> b!891367 (= e!497433 (and tp!55265 tp_is_empty!18093 (array_inv!19678 (_keys!9949 thiss!1181)) (array_inv!19679 (_values!5255 thiss!1181)) e!497441))))

(declare-fun b!891368 () Bool)

(declare-fun res!604032 () Bool)

(assert (=> b!891368 (=> res!604032 e!497437)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52152 (_ BitVec 32)) Bool)

(assert (=> b!891368 (= res!604032 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9949 thiss!1181) (mask!25758 thiss!1181))))))

(declare-fun b!891369 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891369 (= e!497435 (inRange!0 (index!37651 lt!402670) (mask!25758 thiss!1181)))))

(declare-fun b!891370 () Bool)

(assert (=> b!891370 (= e!497434 e!497437)))

(declare-fun res!604028 () Bool)

(assert (=> b!891370 (=> res!604028 e!497437)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891370 (= res!604028 (not (validMask!0 (mask!25758 thiss!1181))))))

(assert (=> b!891370 (contains!4335 lt!402675 (select (arr!25078 (_keys!9949 thiss!1181)) (index!37651 lt!402670)))))

(declare-fun getCurrentListMap!2612 (array!52152 array!52154 (_ BitVec 32) (_ BitVec 32) V!29089 V!29089 (_ BitVec 32) Int) ListLongMap!10685)

(assert (=> b!891370 (= lt!402675 (getCurrentListMap!2612 (_keys!9949 thiss!1181) (_values!5255 thiss!1181) (mask!25758 thiss!1181) (extraKeys!4964 thiss!1181) (zeroValue!5068 thiss!1181) (minValue!5068 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5270 thiss!1181)))))

(declare-fun lt!402674 () Unit!30323)

(declare-fun lemmaValidKeyInArrayIsInListMap!205 (array!52152 array!52154 (_ BitVec 32) (_ BitVec 32) V!29089 V!29089 (_ BitVec 32) Int) Unit!30323)

(assert (=> b!891370 (= lt!402674 (lemmaValidKeyInArrayIsInListMap!205 (_keys!9949 thiss!1181) (_values!5255 thiss!1181) (mask!25758 thiss!1181) (extraKeys!4964 thiss!1181) (zeroValue!5068 thiss!1181) (minValue!5068 thiss!1181) (index!37651 lt!402670) (defaultEntry!5270 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891370 (arrayContainsKey!0 (_keys!9949 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402672 () Unit!30323)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52152 (_ BitVec 64) (_ BitVec 32)) Unit!30323)

(assert (=> b!891370 (= lt!402672 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9949 thiss!1181) key!785 (index!37651 lt!402670)))))

(declare-fun b!891371 () Bool)

(declare-fun e!497440 () Bool)

(assert (=> b!891371 (= e!497441 (and e!497440 mapRes!28694))))

(declare-fun condMapEmpty!28694 () Bool)

(declare-fun mapDefault!28694 () ValueCell!8565)

(assert (=> b!891371 (= condMapEmpty!28694 (= (arr!25079 (_values!5255 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8565)) mapDefault!28694)))))

(declare-fun b!891366 () Bool)

(declare-fun res!604025 () Bool)

(assert (=> b!891366 (=> res!604025 e!497437)))

(assert (=> b!891366 (= res!604025 (or (not (= (size!25524 (_values!5255 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25758 thiss!1181)))) (not (= (size!25523 (_keys!9949 thiss!1181)) (size!25524 (_values!5255 thiss!1181)))) (bvslt (mask!25758 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4964 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4964 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun res!604027 () Bool)

(assert (=> start!75822 (=> (not res!604027) (not e!497436))))

(declare-fun valid!1596 (LongMapFixedSize!4146) Bool)

(assert (=> start!75822 (= res!604027 (valid!1596 thiss!1181))))

(assert (=> start!75822 e!497436))

(assert (=> start!75822 e!497433))

(assert (=> start!75822 true))

(declare-fun mapIsEmpty!28694 () Bool)

(assert (=> mapIsEmpty!28694 mapRes!28694))

(declare-fun b!891372 () Bool)

(assert (=> b!891372 (= e!497440 tp_is_empty!18093)))

(assert (= (and start!75822 res!604027) b!891363))

(assert (= (and b!891363 res!604029) b!891361))

(assert (= (and b!891361 (not res!604031)) b!891369))

(assert (= (and b!891361 (not res!604030)) b!891370))

(assert (= (and b!891370 (not res!604028)) b!891366))

(assert (= (and b!891366 (not res!604025)) b!891368))

(assert (= (and b!891368 (not res!604032)) b!891364))

(assert (= (and b!891364 (not res!604026)) b!891365))

(assert (= (and b!891371 condMapEmpty!28694) mapIsEmpty!28694))

(assert (= (and b!891371 (not condMapEmpty!28694)) mapNonEmpty!28694))

(assert (= (and mapNonEmpty!28694 ((_ is ValueCellFull!8565) mapValue!28694)) b!891362))

(assert (= (and b!891371 ((_ is ValueCellFull!8565) mapDefault!28694)) b!891372))

(assert (= b!891367 b!891371))

(assert (= start!75822 b!891367))

(declare-fun m!829775 () Bool)

(assert (=> mapNonEmpty!28694 m!829775))

(declare-fun m!829777 () Bool)

(assert (=> b!891368 m!829777))

(declare-fun m!829779 () Bool)

(assert (=> b!891370 m!829779))

(declare-fun m!829781 () Bool)

(assert (=> b!891370 m!829781))

(declare-fun m!829783 () Bool)

(assert (=> b!891370 m!829783))

(declare-fun m!829785 () Bool)

(assert (=> b!891370 m!829785))

(assert (=> b!891370 m!829783))

(declare-fun m!829787 () Bool)

(assert (=> b!891370 m!829787))

(declare-fun m!829789 () Bool)

(assert (=> b!891370 m!829789))

(declare-fun m!829791 () Bool)

(assert (=> b!891370 m!829791))

(declare-fun m!829793 () Bool)

(assert (=> b!891365 m!829793))

(declare-fun m!829795 () Bool)

(assert (=> b!891367 m!829795))

(declare-fun m!829797 () Bool)

(assert (=> b!891367 m!829797))

(declare-fun m!829799 () Bool)

(assert (=> start!75822 m!829799))

(declare-fun m!829801 () Bool)

(assert (=> b!891361 m!829801))

(declare-fun m!829803 () Bool)

(assert (=> b!891361 m!829803))

(declare-fun m!829805 () Bool)

(assert (=> b!891364 m!829805))

(declare-fun m!829807 () Bool)

(assert (=> b!891369 m!829807))

(check-sat (not mapNonEmpty!28694) (not b!891365) (not b_next!15765) (not b!891361) b_and!26023 (not start!75822) (not b!891368) (not b!891367) tp_is_empty!18093 (not b!891364) (not b!891370) (not b!891369))
(check-sat b_and!26023 (not b_next!15765))
