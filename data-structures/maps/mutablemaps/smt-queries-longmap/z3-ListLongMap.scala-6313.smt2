; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80996 () Bool)

(assert start!80996)

(declare-fun b!948275 () Bool)

(declare-fun b_free!18201 () Bool)

(declare-fun b_next!18201 () Bool)

(assert (=> b!948275 (= b_free!18201 (not b_next!18201))))

(declare-fun tp!63178 () Bool)

(declare-fun b_and!29651 () Bool)

(assert (=> b!948275 (= tp!63178 b_and!29651)))

(declare-fun b!948273 () Bool)

(declare-fun e!533844 () Bool)

(declare-fun e!533848 () Bool)

(declare-fun mapRes!32954 () Bool)

(assert (=> b!948273 (= e!533844 (and e!533848 mapRes!32954))))

(declare-fun condMapEmpty!32954 () Bool)

(declare-datatypes ((V!32577 0))(
  ( (V!32578 (val!10405 Int)) )
))
(declare-datatypes ((ValueCell!9873 0))(
  ( (ValueCellFull!9873 (v!12942 V!32577)) (EmptyCell!9873) )
))
(declare-datatypes ((array!57446 0))(
  ( (array!57447 (arr!27625 (Array (_ BitVec 32) ValueCell!9873)) (size!28100 (_ BitVec 32))) )
))
(declare-datatypes ((array!57448 0))(
  ( (array!57449 (arr!27626 (Array (_ BitVec 32) (_ BitVec 64))) (size!28101 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4896 0))(
  ( (LongMapFixedSize!4897 (defaultEntry!5750 Int) (mask!27503 (_ BitVec 32)) (extraKeys!5482 (_ BitVec 32)) (zeroValue!5586 V!32577) (minValue!5586 V!32577) (_size!2503 (_ BitVec 32)) (_keys!10665 array!57448) (_values!5773 array!57446) (_vacant!2503 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4896)

(declare-fun mapDefault!32954 () ValueCell!9873)

(assert (=> b!948273 (= condMapEmpty!32954 (= (arr!27625 (_values!5773 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9873)) mapDefault!32954)))))

(declare-fun b!948274 () Bool)

(declare-fun e!533846 () Bool)

(declare-fun tp_is_empty!20709 () Bool)

(assert (=> b!948274 (= e!533846 tp_is_empty!20709)))

(declare-fun e!533849 () Bool)

(declare-fun array_inv!21392 (array!57448) Bool)

(declare-fun array_inv!21393 (array!57446) Bool)

(assert (=> b!948275 (= e!533849 (and tp!63178 tp_is_empty!20709 (array_inv!21392 (_keys!10665 thiss!1141)) (array_inv!21393 (_values!5773 thiss!1141)) e!533844))))

(declare-fun b!948276 () Bool)

(declare-fun res!636309 () Bool)

(declare-fun e!533847 () Bool)

(assert (=> b!948276 (=> (not res!636309) (not e!533847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!948276 (= res!636309 (validMask!0 (mask!27503 thiss!1141)))))

(declare-fun b!948277 () Bool)

(assert (=> b!948277 (= e!533848 tp_is_empty!20709)))

(declare-fun mapIsEmpty!32954 () Bool)

(assert (=> mapIsEmpty!32954 mapRes!32954))

(declare-fun b!948279 () Bool)

(declare-fun res!636307 () Bool)

(assert (=> b!948279 (=> (not res!636307) (not e!533847))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9118 0))(
  ( (MissingZero!9118 (index!38842 (_ BitVec 32))) (Found!9118 (index!38843 (_ BitVec 32))) (Intermediate!9118 (undefined!9930 Bool) (index!38844 (_ BitVec 32)) (x!81589 (_ BitVec 32))) (Undefined!9118) (MissingVacant!9118 (index!38845 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57448 (_ BitVec 32)) SeekEntryResult!9118)

(assert (=> b!948279 (= res!636307 (not ((_ is Found!9118) (seekEntry!0 key!756 (_keys!10665 thiss!1141) (mask!27503 thiss!1141)))))))

(declare-fun mapNonEmpty!32954 () Bool)

(declare-fun tp!63179 () Bool)

(assert (=> mapNonEmpty!32954 (= mapRes!32954 (and tp!63179 e!533846))))

(declare-fun mapRest!32954 () (Array (_ BitVec 32) ValueCell!9873))

(declare-fun mapKey!32954 () (_ BitVec 32))

(declare-fun mapValue!32954 () ValueCell!9873)

(assert (=> mapNonEmpty!32954 (= (arr!27625 (_values!5773 thiss!1141)) (store mapRest!32954 mapKey!32954 mapValue!32954))))

(declare-fun b!948280 () Bool)

(declare-fun res!636310 () Bool)

(assert (=> b!948280 (=> (not res!636310) (not e!533847))))

(assert (=> b!948280 (= res!636310 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!948281 () Bool)

(declare-fun res!636311 () Bool)

(assert (=> b!948281 (=> (not res!636311) (not e!533847))))

(declare-datatypes ((tuple2!13622 0))(
  ( (tuple2!13623 (_1!6821 (_ BitVec 64)) (_2!6821 V!32577)) )
))
(declare-datatypes ((List!19449 0))(
  ( (Nil!19446) (Cons!19445 (h!20602 tuple2!13622) (t!27784 List!19449)) )
))
(declare-datatypes ((ListLongMap!12333 0))(
  ( (ListLongMap!12334 (toList!6182 List!19449)) )
))
(declare-fun contains!5217 (ListLongMap!12333 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3367 (array!57448 array!57446 (_ BitVec 32) (_ BitVec 32) V!32577 V!32577 (_ BitVec 32) Int) ListLongMap!12333)

(assert (=> b!948281 (= res!636311 (contains!5217 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)) key!756))))

(declare-fun b!948278 () Bool)

(assert (=> b!948278 (= e!533847 (and (= (size!28100 (_values!5773 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27503 thiss!1141))) (not (= (size!28101 (_keys!10665 thiss!1141)) (size!28100 (_values!5773 thiss!1141))))))))

(declare-fun res!636308 () Bool)

(assert (=> start!80996 (=> (not res!636308) (not e!533847))))

(declare-fun valid!1841 (LongMapFixedSize!4896) Bool)

(assert (=> start!80996 (= res!636308 (valid!1841 thiss!1141))))

(assert (=> start!80996 e!533847))

(assert (=> start!80996 e!533849))

(assert (=> start!80996 true))

(assert (= (and start!80996 res!636308) b!948280))

(assert (= (and b!948280 res!636310) b!948279))

(assert (= (and b!948279 res!636307) b!948281))

(assert (= (and b!948281 res!636311) b!948276))

(assert (= (and b!948276 res!636309) b!948278))

(assert (= (and b!948273 condMapEmpty!32954) mapIsEmpty!32954))

(assert (= (and b!948273 (not condMapEmpty!32954)) mapNonEmpty!32954))

(assert (= (and mapNonEmpty!32954 ((_ is ValueCellFull!9873) mapValue!32954)) b!948274))

(assert (= (and b!948273 ((_ is ValueCellFull!9873) mapDefault!32954)) b!948277))

(assert (= b!948275 b!948273))

(assert (= start!80996 b!948275))

(declare-fun m!881153 () Bool)

(assert (=> mapNonEmpty!32954 m!881153))

(declare-fun m!881155 () Bool)

(assert (=> b!948281 m!881155))

(assert (=> b!948281 m!881155))

(declare-fun m!881157 () Bool)

(assert (=> b!948281 m!881157))

(declare-fun m!881159 () Bool)

(assert (=> b!948276 m!881159))

(declare-fun m!881161 () Bool)

(assert (=> b!948279 m!881161))

(declare-fun m!881163 () Bool)

(assert (=> start!80996 m!881163))

(declare-fun m!881165 () Bool)

(assert (=> b!948275 m!881165))

(declare-fun m!881167 () Bool)

(assert (=> b!948275 m!881167))

(check-sat (not b!948275) (not start!80996) b_and!29651 (not mapNonEmpty!32954) tp_is_empty!20709 (not b!948279) (not b!948276) (not b!948281) (not b_next!18201))
(check-sat b_and!29651 (not b_next!18201))
(get-model)

(declare-fun d!114763 () Bool)

(assert (=> d!114763 (= (validMask!0 (mask!27503 thiss!1141)) (and (or (= (mask!27503 thiss!1141) #b00000000000000000000000000000111) (= (mask!27503 thiss!1141) #b00000000000000000000000000001111) (= (mask!27503 thiss!1141) #b00000000000000000000000000011111) (= (mask!27503 thiss!1141) #b00000000000000000000000000111111) (= (mask!27503 thiss!1141) #b00000000000000000000000001111111) (= (mask!27503 thiss!1141) #b00000000000000000000000011111111) (= (mask!27503 thiss!1141) #b00000000000000000000000111111111) (= (mask!27503 thiss!1141) #b00000000000000000000001111111111) (= (mask!27503 thiss!1141) #b00000000000000000000011111111111) (= (mask!27503 thiss!1141) #b00000000000000000000111111111111) (= (mask!27503 thiss!1141) #b00000000000000000001111111111111) (= (mask!27503 thiss!1141) #b00000000000000000011111111111111) (= (mask!27503 thiss!1141) #b00000000000000000111111111111111) (= (mask!27503 thiss!1141) #b00000000000000001111111111111111) (= (mask!27503 thiss!1141) #b00000000000000011111111111111111) (= (mask!27503 thiss!1141) #b00000000000000111111111111111111) (= (mask!27503 thiss!1141) #b00000000000001111111111111111111) (= (mask!27503 thiss!1141) #b00000000000011111111111111111111) (= (mask!27503 thiss!1141) #b00000000000111111111111111111111) (= (mask!27503 thiss!1141) #b00000000001111111111111111111111) (= (mask!27503 thiss!1141) #b00000000011111111111111111111111) (= (mask!27503 thiss!1141) #b00000000111111111111111111111111) (= (mask!27503 thiss!1141) #b00000001111111111111111111111111) (= (mask!27503 thiss!1141) #b00000011111111111111111111111111) (= (mask!27503 thiss!1141) #b00000111111111111111111111111111) (= (mask!27503 thiss!1141) #b00001111111111111111111111111111) (= (mask!27503 thiss!1141) #b00011111111111111111111111111111) (= (mask!27503 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27503 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!948276 d!114763))

(declare-fun d!114765 () Bool)

(declare-fun res!636333 () Bool)

(declare-fun e!533870 () Bool)

(assert (=> d!114765 (=> (not res!636333) (not e!533870))))

(declare-fun simpleValid!367 (LongMapFixedSize!4896) Bool)

(assert (=> d!114765 (= res!636333 (simpleValid!367 thiss!1141))))

(assert (=> d!114765 (= (valid!1841 thiss!1141) e!533870)))

(declare-fun b!948315 () Bool)

(declare-fun res!636334 () Bool)

(assert (=> b!948315 (=> (not res!636334) (not e!533870))))

(declare-fun arrayCountValidKeys!0 (array!57448 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!948315 (= res!636334 (= (arrayCountValidKeys!0 (_keys!10665 thiss!1141) #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))) (_size!2503 thiss!1141)))))

(declare-fun b!948316 () Bool)

(declare-fun res!636335 () Bool)

(assert (=> b!948316 (=> (not res!636335) (not e!533870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57448 (_ BitVec 32)) Bool)

(assert (=> b!948316 (= res!636335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10665 thiss!1141) (mask!27503 thiss!1141)))))

(declare-fun b!948317 () Bool)

(declare-datatypes ((List!19450 0))(
  ( (Nil!19447) (Cons!19446 (h!20603 (_ BitVec 64)) (t!27787 List!19450)) )
))
(declare-fun arrayNoDuplicates!0 (array!57448 (_ BitVec 32) List!19450) Bool)

(assert (=> b!948317 (= e!533870 (arrayNoDuplicates!0 (_keys!10665 thiss!1141) #b00000000000000000000000000000000 Nil!19447))))

(assert (= (and d!114765 res!636333) b!948315))

(assert (= (and b!948315 res!636334) b!948316))

(assert (= (and b!948316 res!636335) b!948317))

(declare-fun m!881185 () Bool)

(assert (=> d!114765 m!881185))

(declare-fun m!881187 () Bool)

(assert (=> b!948315 m!881187))

(declare-fun m!881189 () Bool)

(assert (=> b!948316 m!881189))

(declare-fun m!881191 () Bool)

(assert (=> b!948317 m!881191))

(assert (=> start!80996 d!114765))

(declare-fun b!948330 () Bool)

(declare-fun e!533879 () SeekEntryResult!9118)

(declare-fun lt!426996 () SeekEntryResult!9118)

(assert (=> b!948330 (= e!533879 (MissingZero!9118 (index!38844 lt!426996)))))

(declare-fun d!114767 () Bool)

(declare-fun lt!426998 () SeekEntryResult!9118)

(assert (=> d!114767 (and (or ((_ is MissingVacant!9118) lt!426998) (not ((_ is Found!9118) lt!426998)) (and (bvsge (index!38843 lt!426998) #b00000000000000000000000000000000) (bvslt (index!38843 lt!426998) (size!28101 (_keys!10665 thiss!1141))))) (not ((_ is MissingVacant!9118) lt!426998)) (or (not ((_ is Found!9118) lt!426998)) (= (select (arr!27626 (_keys!10665 thiss!1141)) (index!38843 lt!426998)) key!756)))))

(declare-fun e!533877 () SeekEntryResult!9118)

(assert (=> d!114767 (= lt!426998 e!533877)))

(declare-fun c!98788 () Bool)

(assert (=> d!114767 (= c!98788 (and ((_ is Intermediate!9118) lt!426996) (undefined!9930 lt!426996)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57448 (_ BitVec 32)) SeekEntryResult!9118)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114767 (= lt!426996 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27503 thiss!1141)) key!756 (_keys!10665 thiss!1141) (mask!27503 thiss!1141)))))

(assert (=> d!114767 (validMask!0 (mask!27503 thiss!1141))))

(assert (=> d!114767 (= (seekEntry!0 key!756 (_keys!10665 thiss!1141) (mask!27503 thiss!1141)) lt!426998)))

(declare-fun b!948331 () Bool)

(assert (=> b!948331 (= e!533877 Undefined!9118)))

(declare-fun b!948332 () Bool)

(declare-fun e!533878 () SeekEntryResult!9118)

(assert (=> b!948332 (= e!533877 e!533878)))

(declare-fun lt!426995 () (_ BitVec 64))

(assert (=> b!948332 (= lt!426995 (select (arr!27626 (_keys!10665 thiss!1141)) (index!38844 lt!426996)))))

(declare-fun c!98790 () Bool)

(assert (=> b!948332 (= c!98790 (= lt!426995 key!756))))

(declare-fun b!948333 () Bool)

(declare-fun lt!426997 () SeekEntryResult!9118)

(assert (=> b!948333 (= e!533879 (ite ((_ is MissingVacant!9118) lt!426997) (MissingZero!9118 (index!38845 lt!426997)) lt!426997))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57448 (_ BitVec 32)) SeekEntryResult!9118)

(assert (=> b!948333 (= lt!426997 (seekKeyOrZeroReturnVacant!0 (x!81589 lt!426996) (index!38844 lt!426996) (index!38844 lt!426996) key!756 (_keys!10665 thiss!1141) (mask!27503 thiss!1141)))))

(declare-fun b!948334 () Bool)

(assert (=> b!948334 (= e!533878 (Found!9118 (index!38844 lt!426996)))))

(declare-fun b!948335 () Bool)

(declare-fun c!98789 () Bool)

(assert (=> b!948335 (= c!98789 (= lt!426995 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!948335 (= e!533878 e!533879)))

(assert (= (and d!114767 c!98788) b!948331))

(assert (= (and d!114767 (not c!98788)) b!948332))

(assert (= (and b!948332 c!98790) b!948334))

(assert (= (and b!948332 (not c!98790)) b!948335))

(assert (= (and b!948335 c!98789) b!948330))

(assert (= (and b!948335 (not c!98789)) b!948333))

(declare-fun m!881193 () Bool)

(assert (=> d!114767 m!881193))

(declare-fun m!881195 () Bool)

(assert (=> d!114767 m!881195))

(assert (=> d!114767 m!881195))

(declare-fun m!881197 () Bool)

(assert (=> d!114767 m!881197))

(assert (=> d!114767 m!881159))

(declare-fun m!881199 () Bool)

(assert (=> b!948332 m!881199))

(declare-fun m!881201 () Bool)

(assert (=> b!948333 m!881201))

(assert (=> b!948279 d!114767))

(declare-fun d!114769 () Bool)

(assert (=> d!114769 (= (array_inv!21392 (_keys!10665 thiss!1141)) (bvsge (size!28101 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!948275 d!114769))

(declare-fun d!114771 () Bool)

(assert (=> d!114771 (= (array_inv!21393 (_values!5773 thiss!1141)) (bvsge (size!28100 (_values!5773 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!948275 d!114771))

(declare-fun d!114773 () Bool)

(declare-fun e!533884 () Bool)

(assert (=> d!114773 e!533884))

(declare-fun res!636338 () Bool)

(assert (=> d!114773 (=> res!636338 e!533884)))

(declare-fun lt!427007 () Bool)

(assert (=> d!114773 (= res!636338 (not lt!427007))))

(declare-fun lt!427008 () Bool)

(assert (=> d!114773 (= lt!427007 lt!427008)))

(declare-datatypes ((Unit!31944 0))(
  ( (Unit!31945) )
))
(declare-fun lt!427009 () Unit!31944)

(declare-fun e!533885 () Unit!31944)

(assert (=> d!114773 (= lt!427009 e!533885)))

(declare-fun c!98793 () Bool)

(assert (=> d!114773 (= c!98793 lt!427008)))

(declare-fun containsKey!459 (List!19449 (_ BitVec 64)) Bool)

(assert (=> d!114773 (= lt!427008 (containsKey!459 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))) key!756))))

(assert (=> d!114773 (= (contains!5217 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)) key!756) lt!427007)))

(declare-fun b!948342 () Bool)

(declare-fun lt!427010 () Unit!31944)

(assert (=> b!948342 (= e!533885 lt!427010)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!354 (List!19449 (_ BitVec 64)) Unit!31944)

(assert (=> b!948342 (= lt!427010 (lemmaContainsKeyImpliesGetValueByKeyDefined!354 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))) key!756))))

(declare-datatypes ((Option!500 0))(
  ( (Some!499 (v!12944 V!32577)) (None!498) )
))
(declare-fun isDefined!364 (Option!500) Bool)

(declare-fun getValueByKey!494 (List!19449 (_ BitVec 64)) Option!500)

(assert (=> b!948342 (isDefined!364 (getValueByKey!494 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))) key!756))))

(declare-fun b!948343 () Bool)

(declare-fun Unit!31946 () Unit!31944)

(assert (=> b!948343 (= e!533885 Unit!31946)))

(declare-fun b!948344 () Bool)

(assert (=> b!948344 (= e!533884 (isDefined!364 (getValueByKey!494 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))) key!756)))))

(assert (= (and d!114773 c!98793) b!948342))

(assert (= (and d!114773 (not c!98793)) b!948343))

(assert (= (and d!114773 (not res!636338)) b!948344))

(declare-fun m!881203 () Bool)

(assert (=> d!114773 m!881203))

(declare-fun m!881205 () Bool)

(assert (=> b!948342 m!881205))

(declare-fun m!881207 () Bool)

(assert (=> b!948342 m!881207))

(assert (=> b!948342 m!881207))

(declare-fun m!881209 () Bool)

(assert (=> b!948342 m!881209))

(assert (=> b!948344 m!881207))

(assert (=> b!948344 m!881207))

(assert (=> b!948344 m!881209))

(assert (=> b!948281 d!114773))

(declare-fun b!948387 () Bool)

(declare-fun e!533912 () Bool)

(declare-fun lt!427055 () ListLongMap!12333)

(declare-fun apply!907 (ListLongMap!12333 (_ BitVec 64)) V!32577)

(declare-fun get!14527 (ValueCell!9873 V!32577) V!32577)

(declare-fun dynLambda!1660 (Int (_ BitVec 64)) V!32577)

(assert (=> b!948387 (= e!533912 (= (apply!907 lt!427055 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)) (get!14527 (select (arr!27625 (_values!5773 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1660 (defaultEntry!5750 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!948387 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28100 (_values!5773 thiss!1141))))))

(assert (=> b!948387 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))

(declare-fun d!114775 () Bool)

(declare-fun e!533924 () Bool)

(assert (=> d!114775 e!533924))

(declare-fun res!636365 () Bool)

(assert (=> d!114775 (=> (not res!636365) (not e!533924))))

(assert (=> d!114775 (= res!636365 (or (bvsge #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))))

(declare-fun lt!427074 () ListLongMap!12333)

(assert (=> d!114775 (= lt!427055 lt!427074)))

(declare-fun lt!427060 () Unit!31944)

(declare-fun e!533922 () Unit!31944)

(assert (=> d!114775 (= lt!427060 e!533922)))

(declare-fun c!98810 () Bool)

(declare-fun e!533919 () Bool)

(assert (=> d!114775 (= c!98810 e!533919)))

(declare-fun res!636359 () Bool)

(assert (=> d!114775 (=> (not res!636359) (not e!533919))))

(assert (=> d!114775 (= res!636359 (bvslt #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))

(declare-fun e!533915 () ListLongMap!12333)

(assert (=> d!114775 (= lt!427074 e!533915)))

(declare-fun c!98811 () Bool)

(assert (=> d!114775 (= c!98811 (and (not (= (bvand (extraKeys!5482 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5482 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!114775 (validMask!0 (mask!27503 thiss!1141))))

(assert (=> d!114775 (= (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)) lt!427055)))

(declare-fun b!948388 () Bool)

(declare-fun e!533918 () ListLongMap!12333)

(declare-fun call!41216 () ListLongMap!12333)

(assert (=> b!948388 (= e!533918 call!41216)))

(declare-fun b!948389 () Bool)

(declare-fun Unit!31947 () Unit!31944)

(assert (=> b!948389 (= e!533922 Unit!31947)))

(declare-fun bm!41211 () Bool)

(declare-fun call!41219 () ListLongMap!12333)

(declare-fun call!41218 () ListLongMap!12333)

(assert (=> bm!41211 (= call!41219 call!41218)))

(declare-fun b!948390 () Bool)

(declare-fun res!636361 () Bool)

(assert (=> b!948390 (=> (not res!636361) (not e!533924))))

(declare-fun e!533916 () Bool)

(assert (=> b!948390 (= res!636361 e!533916)))

(declare-fun res!636364 () Bool)

(assert (=> b!948390 (=> res!636364 e!533916)))

(declare-fun e!533920 () Bool)

(assert (=> b!948390 (= res!636364 (not e!533920))))

(declare-fun res!636363 () Bool)

(assert (=> b!948390 (=> (not res!636363) (not e!533920))))

(assert (=> b!948390 (= res!636363 (bvslt #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))

(declare-fun b!948391 () Bool)

(declare-fun e!533913 () Bool)

(declare-fun e!533923 () Bool)

(assert (=> b!948391 (= e!533913 e!533923)))

(declare-fun res!636358 () Bool)

(declare-fun call!41220 () Bool)

(assert (=> b!948391 (= res!636358 call!41220)))

(assert (=> b!948391 (=> (not res!636358) (not e!533923))))

(declare-fun b!948392 () Bool)

(declare-fun e!533917 () Bool)

(declare-fun e!533914 () Bool)

(assert (=> b!948392 (= e!533917 e!533914)))

(declare-fun res!636360 () Bool)

(declare-fun call!41214 () Bool)

(assert (=> b!948392 (= res!636360 call!41214)))

(assert (=> b!948392 (=> (not res!636360) (not e!533914))))

(declare-fun b!948393 () Bool)

(assert (=> b!948393 (= e!533917 (not call!41214))))

(declare-fun b!948394 () Bool)

(declare-fun call!41217 () ListLongMap!12333)

(assert (=> b!948394 (= e!533918 call!41217)))

(declare-fun c!98809 () Bool)

(declare-fun call!41215 () ListLongMap!12333)

(declare-fun bm!41212 () Bool)

(declare-fun +!2821 (ListLongMap!12333 tuple2!13622) ListLongMap!12333)

(assert (=> bm!41212 (= call!41215 (+!2821 (ite c!98811 call!41218 (ite c!98809 call!41219 call!41217)) (ite (or c!98811 c!98809) (tuple2!13623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5586 thiss!1141)) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141)))))))

(declare-fun b!948395 () Bool)

(assert (=> b!948395 (= e!533923 (= (apply!907 lt!427055 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5586 thiss!1141)))))

(declare-fun b!948396 () Bool)

(declare-fun c!98807 () Bool)

(assert (=> b!948396 (= c!98807 (and (not (= (bvand (extraKeys!5482 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5482 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!533921 () ListLongMap!12333)

(assert (=> b!948396 (= e!533921 e!533918)))

(declare-fun b!948397 () Bool)

(declare-fun lt!427071 () Unit!31944)

(assert (=> b!948397 (= e!533922 lt!427071)))

(declare-fun lt!427066 () ListLongMap!12333)

(declare-fun getCurrentListMapNoExtraKeys!3327 (array!57448 array!57446 (_ BitVec 32) (_ BitVec 32) V!32577 V!32577 (_ BitVec 32) Int) ListLongMap!12333)

(assert (=> b!948397 (= lt!427066 (getCurrentListMapNoExtraKeys!3327 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))))

(declare-fun lt!427067 () (_ BitVec 64))

(assert (=> b!948397 (= lt!427067 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427076 () (_ BitVec 64))

(assert (=> b!948397 (= lt!427076 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427056 () Unit!31944)

(declare-fun addStillContains!577 (ListLongMap!12333 (_ BitVec 64) V!32577 (_ BitVec 64)) Unit!31944)

(assert (=> b!948397 (= lt!427056 (addStillContains!577 lt!427066 lt!427067 (zeroValue!5586 thiss!1141) lt!427076))))

(assert (=> b!948397 (contains!5217 (+!2821 lt!427066 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141))) lt!427076)))

(declare-fun lt!427065 () Unit!31944)

(assert (=> b!948397 (= lt!427065 lt!427056)))

(declare-fun lt!427058 () ListLongMap!12333)

(assert (=> b!948397 (= lt!427058 (getCurrentListMapNoExtraKeys!3327 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))))

(declare-fun lt!427070 () (_ BitVec 64))

(assert (=> b!948397 (= lt!427070 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427061 () (_ BitVec 64))

(assert (=> b!948397 (= lt!427061 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427075 () Unit!31944)

(declare-fun addApplyDifferent!451 (ListLongMap!12333 (_ BitVec 64) V!32577 (_ BitVec 64)) Unit!31944)

(assert (=> b!948397 (= lt!427075 (addApplyDifferent!451 lt!427058 lt!427070 (minValue!5586 thiss!1141) lt!427061))))

(assert (=> b!948397 (= (apply!907 (+!2821 lt!427058 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141))) lt!427061) (apply!907 lt!427058 lt!427061))))

(declare-fun lt!427062 () Unit!31944)

(assert (=> b!948397 (= lt!427062 lt!427075)))

(declare-fun lt!427059 () ListLongMap!12333)

(assert (=> b!948397 (= lt!427059 (getCurrentListMapNoExtraKeys!3327 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))))

(declare-fun lt!427064 () (_ BitVec 64))

(assert (=> b!948397 (= lt!427064 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427072 () (_ BitVec 64))

(assert (=> b!948397 (= lt!427072 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427057 () Unit!31944)

(assert (=> b!948397 (= lt!427057 (addApplyDifferent!451 lt!427059 lt!427064 (zeroValue!5586 thiss!1141) lt!427072))))

(assert (=> b!948397 (= (apply!907 (+!2821 lt!427059 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141))) lt!427072) (apply!907 lt!427059 lt!427072))))

(declare-fun lt!427063 () Unit!31944)

(assert (=> b!948397 (= lt!427063 lt!427057)))

(declare-fun lt!427069 () ListLongMap!12333)

(assert (=> b!948397 (= lt!427069 (getCurrentListMapNoExtraKeys!3327 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))))

(declare-fun lt!427068 () (_ BitVec 64))

(assert (=> b!948397 (= lt!427068 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427073 () (_ BitVec 64))

(assert (=> b!948397 (= lt!427073 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!948397 (= lt!427071 (addApplyDifferent!451 lt!427069 lt!427068 (minValue!5586 thiss!1141) lt!427073))))

(assert (=> b!948397 (= (apply!907 (+!2821 lt!427069 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141))) lt!427073) (apply!907 lt!427069 lt!427073))))

(declare-fun b!948398 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!948398 (= e!533920 (validKeyInArray!0 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948399 () Bool)

(declare-fun res!636357 () Bool)

(assert (=> b!948399 (=> (not res!636357) (not e!533924))))

(assert (=> b!948399 (= res!636357 e!533913)))

(declare-fun c!98808 () Bool)

(assert (=> b!948399 (= c!98808 (not (= (bvand (extraKeys!5482 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!948400 () Bool)

(assert (=> b!948400 (= e!533915 e!533921)))

(assert (=> b!948400 (= c!98809 (and (not (= (bvand (extraKeys!5482 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5482 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!948401 () Bool)

(assert (=> b!948401 (= e!533915 (+!2821 call!41215 (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141))))))

(declare-fun b!948402 () Bool)

(assert (=> b!948402 (= e!533913 (not call!41220))))

(declare-fun b!948403 () Bool)

(assert (=> b!948403 (= e!533924 e!533917)))

(declare-fun c!98806 () Bool)

(assert (=> b!948403 (= c!98806 (not (= (bvand (extraKeys!5482 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!41213 () Bool)

(assert (=> bm!41213 (= call!41218 (getCurrentListMapNoExtraKeys!3327 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))))

(declare-fun b!948404 () Bool)

(assert (=> b!948404 (= e!533919 (validKeyInArray!0 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41214 () Bool)

(assert (=> bm!41214 (= call!41214 (contains!5217 lt!427055 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!948405 () Bool)

(assert (=> b!948405 (= e!533921 call!41216)))

(declare-fun b!948406 () Bool)

(assert (=> b!948406 (= e!533914 (= (apply!907 lt!427055 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5586 thiss!1141)))))

(declare-fun bm!41215 () Bool)

(assert (=> bm!41215 (= call!41217 call!41219)))

(declare-fun bm!41216 () Bool)

(assert (=> bm!41216 (= call!41216 call!41215)))

(declare-fun b!948407 () Bool)

(assert (=> b!948407 (= e!533916 e!533912)))

(declare-fun res!636362 () Bool)

(assert (=> b!948407 (=> (not res!636362) (not e!533912))))

(assert (=> b!948407 (= res!636362 (contains!5217 lt!427055 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!948407 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))

(declare-fun bm!41217 () Bool)

(assert (=> bm!41217 (= call!41220 (contains!5217 lt!427055 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!114775 c!98811) b!948401))

(assert (= (and d!114775 (not c!98811)) b!948400))

(assert (= (and b!948400 c!98809) b!948405))

(assert (= (and b!948400 (not c!98809)) b!948396))

(assert (= (and b!948396 c!98807) b!948388))

(assert (= (and b!948396 (not c!98807)) b!948394))

(assert (= (or b!948388 b!948394) bm!41215))

(assert (= (or b!948405 bm!41215) bm!41211))

(assert (= (or b!948405 b!948388) bm!41216))

(assert (= (or b!948401 bm!41211) bm!41213))

(assert (= (or b!948401 bm!41216) bm!41212))

(assert (= (and d!114775 res!636359) b!948404))

(assert (= (and d!114775 c!98810) b!948397))

(assert (= (and d!114775 (not c!98810)) b!948389))

(assert (= (and d!114775 res!636365) b!948390))

(assert (= (and b!948390 res!636363) b!948398))

(assert (= (and b!948390 (not res!636364)) b!948407))

(assert (= (and b!948407 res!636362) b!948387))

(assert (= (and b!948390 res!636361) b!948399))

(assert (= (and b!948399 c!98808) b!948391))

(assert (= (and b!948399 (not c!98808)) b!948402))

(assert (= (and b!948391 res!636358) b!948395))

(assert (= (or b!948391 b!948402) bm!41217))

(assert (= (and b!948399 res!636357) b!948403))

(assert (= (and b!948403 c!98806) b!948392))

(assert (= (and b!948403 (not c!98806)) b!948393))

(assert (= (and b!948392 res!636360) b!948406))

(assert (= (or b!948392 b!948393) bm!41214))

(declare-fun b_lambda!14349 () Bool)

(assert (=> (not b_lambda!14349) (not b!948387)))

(declare-fun t!27786 () Bool)

(declare-fun tb!6187 () Bool)

(assert (=> (and b!948275 (= (defaultEntry!5750 thiss!1141) (defaultEntry!5750 thiss!1141)) t!27786) tb!6187))

(declare-fun result!12267 () Bool)

(assert (=> tb!6187 (= result!12267 tp_is_empty!20709)))

(assert (=> b!948387 t!27786))

(declare-fun b_and!29655 () Bool)

(assert (= b_and!29651 (and (=> t!27786 result!12267) b_and!29655)))

(declare-fun m!881211 () Bool)

(assert (=> b!948397 m!881211))

(declare-fun m!881213 () Bool)

(assert (=> b!948397 m!881213))

(declare-fun m!881215 () Bool)

(assert (=> b!948397 m!881215))

(declare-fun m!881217 () Bool)

(assert (=> b!948397 m!881217))

(declare-fun m!881219 () Bool)

(assert (=> b!948397 m!881219))

(declare-fun m!881221 () Bool)

(assert (=> b!948397 m!881221))

(declare-fun m!881223 () Bool)

(assert (=> b!948397 m!881223))

(declare-fun m!881225 () Bool)

(assert (=> b!948397 m!881225))

(assert (=> b!948397 m!881221))

(declare-fun m!881227 () Bool)

(assert (=> b!948397 m!881227))

(declare-fun m!881229 () Bool)

(assert (=> b!948397 m!881229))

(assert (=> b!948397 m!881229))

(declare-fun m!881231 () Bool)

(assert (=> b!948397 m!881231))

(declare-fun m!881233 () Bool)

(assert (=> b!948397 m!881233))

(assert (=> b!948397 m!881219))

(declare-fun m!881235 () Bool)

(assert (=> b!948397 m!881235))

(declare-fun m!881237 () Bool)

(assert (=> b!948397 m!881237))

(assert (=> b!948397 m!881225))

(declare-fun m!881239 () Bool)

(assert (=> b!948397 m!881239))

(declare-fun m!881241 () Bool)

(assert (=> b!948397 m!881241))

(declare-fun m!881243 () Bool)

(assert (=> b!948397 m!881243))

(declare-fun m!881245 () Bool)

(assert (=> bm!41214 m!881245))

(assert (=> b!948387 m!881243))

(declare-fun m!881247 () Bool)

(assert (=> b!948387 m!881247))

(declare-fun m!881249 () Bool)

(assert (=> b!948387 m!881249))

(declare-fun m!881251 () Bool)

(assert (=> b!948387 m!881251))

(assert (=> b!948387 m!881251))

(assert (=> b!948387 m!881249))

(declare-fun m!881253 () Bool)

(assert (=> b!948387 m!881253))

(assert (=> b!948387 m!881243))

(declare-fun m!881255 () Bool)

(assert (=> bm!41212 m!881255))

(declare-fun m!881257 () Bool)

(assert (=> b!948395 m!881257))

(assert (=> bm!41213 m!881217))

(assert (=> d!114775 m!881159))

(declare-fun m!881259 () Bool)

(assert (=> b!948401 m!881259))

(declare-fun m!881261 () Bool)

(assert (=> bm!41217 m!881261))

(assert (=> b!948404 m!881243))

(assert (=> b!948404 m!881243))

(declare-fun m!881263 () Bool)

(assert (=> b!948404 m!881263))

(assert (=> b!948398 m!881243))

(assert (=> b!948398 m!881243))

(assert (=> b!948398 m!881263))

(assert (=> b!948407 m!881243))

(assert (=> b!948407 m!881243))

(declare-fun m!881265 () Bool)

(assert (=> b!948407 m!881265))

(declare-fun m!881267 () Bool)

(assert (=> b!948406 m!881267))

(assert (=> b!948281 d!114775))

(declare-fun b!948417 () Bool)

(declare-fun e!533930 () Bool)

(assert (=> b!948417 (= e!533930 tp_is_empty!20709)))

(declare-fun condMapEmpty!32960 () Bool)

(declare-fun mapDefault!32960 () ValueCell!9873)

(assert (=> mapNonEmpty!32954 (= condMapEmpty!32960 (= mapRest!32954 ((as const (Array (_ BitVec 32) ValueCell!9873)) mapDefault!32960)))))

(declare-fun mapRes!32960 () Bool)

(assert (=> mapNonEmpty!32954 (= tp!63179 (and e!533930 mapRes!32960))))

(declare-fun mapIsEmpty!32960 () Bool)

(assert (=> mapIsEmpty!32960 mapRes!32960))

(declare-fun b!948416 () Bool)

(declare-fun e!533929 () Bool)

(assert (=> b!948416 (= e!533929 tp_is_empty!20709)))

(declare-fun mapNonEmpty!32960 () Bool)

(declare-fun tp!63188 () Bool)

(assert (=> mapNonEmpty!32960 (= mapRes!32960 (and tp!63188 e!533929))))

(declare-fun mapKey!32960 () (_ BitVec 32))

(declare-fun mapValue!32960 () ValueCell!9873)

(declare-fun mapRest!32960 () (Array (_ BitVec 32) ValueCell!9873))

(assert (=> mapNonEmpty!32960 (= mapRest!32954 (store mapRest!32960 mapKey!32960 mapValue!32960))))

(assert (= (and mapNonEmpty!32954 condMapEmpty!32960) mapIsEmpty!32960))

(assert (= (and mapNonEmpty!32954 (not condMapEmpty!32960)) mapNonEmpty!32960))

(assert (= (and mapNonEmpty!32960 ((_ is ValueCellFull!9873) mapValue!32960)) b!948416))

(assert (= (and mapNonEmpty!32954 ((_ is ValueCellFull!9873) mapDefault!32960)) b!948417))

(declare-fun m!881269 () Bool)

(assert (=> mapNonEmpty!32960 m!881269))

(declare-fun b_lambda!14351 () Bool)

(assert (= b_lambda!14349 (or (and b!948275 b_free!18201) b_lambda!14351)))

(check-sat (not b!948395) (not b!948406) (not b_lambda!14351) b_and!29655 (not b!948342) (not b!948333) (not d!114775) (not b!948344) (not bm!41212) (not b_next!18201) (not d!114767) (not b!948407) (not bm!41214) (not b!948316) (not b!948404) (not b!948315) tp_is_empty!20709 (not bm!41213) (not b!948387) (not mapNonEmpty!32960) (not b!948398) (not b!948397) (not d!114765) (not b!948317) (not bm!41217) (not d!114773) (not b!948401))
(check-sat b_and!29655 (not b_next!18201))
(get-model)

(declare-fun d!114777 () Bool)

(declare-fun e!533931 () Bool)

(assert (=> d!114777 e!533931))

(declare-fun res!636366 () Bool)

(assert (=> d!114777 (=> res!636366 e!533931)))

(declare-fun lt!427077 () Bool)

(assert (=> d!114777 (= res!636366 (not lt!427077))))

(declare-fun lt!427078 () Bool)

(assert (=> d!114777 (= lt!427077 lt!427078)))

(declare-fun lt!427079 () Unit!31944)

(declare-fun e!533932 () Unit!31944)

(assert (=> d!114777 (= lt!427079 e!533932)))

(declare-fun c!98812 () Bool)

(assert (=> d!114777 (= c!98812 lt!427078)))

(assert (=> d!114777 (= lt!427078 (containsKey!459 (toList!6182 lt!427055) (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!114777 (= (contains!5217 lt!427055 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)) lt!427077)))

(declare-fun b!948418 () Bool)

(declare-fun lt!427080 () Unit!31944)

(assert (=> b!948418 (= e!533932 lt!427080)))

(assert (=> b!948418 (= lt!427080 (lemmaContainsKeyImpliesGetValueByKeyDefined!354 (toList!6182 lt!427055) (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!948418 (isDefined!364 (getValueByKey!494 (toList!6182 lt!427055) (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948419 () Bool)

(declare-fun Unit!31948 () Unit!31944)

(assert (=> b!948419 (= e!533932 Unit!31948)))

(declare-fun b!948420 () Bool)

(assert (=> b!948420 (= e!533931 (isDefined!364 (getValueByKey!494 (toList!6182 lt!427055) (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000))))))

(assert (= (and d!114777 c!98812) b!948418))

(assert (= (and d!114777 (not c!98812)) b!948419))

(assert (= (and d!114777 (not res!636366)) b!948420))

(assert (=> d!114777 m!881243))

(declare-fun m!881271 () Bool)

(assert (=> d!114777 m!881271))

(assert (=> b!948418 m!881243))

(declare-fun m!881273 () Bool)

(assert (=> b!948418 m!881273))

(assert (=> b!948418 m!881243))

(declare-fun m!881275 () Bool)

(assert (=> b!948418 m!881275))

(assert (=> b!948418 m!881275))

(declare-fun m!881277 () Bool)

(assert (=> b!948418 m!881277))

(assert (=> b!948420 m!881243))

(assert (=> b!948420 m!881275))

(assert (=> b!948420 m!881275))

(assert (=> b!948420 m!881277))

(assert (=> b!948407 d!114777))

(declare-fun d!114779 () Bool)

(assert (=> d!114779 (= (validKeyInArray!0 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)) (and (not (= (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!948398 d!114779))

(declare-fun b!948431 () Bool)

(declare-fun e!533941 () Bool)

(declare-fun e!533942 () Bool)

(assert (=> b!948431 (= e!533941 e!533942)))

(declare-fun c!98815 () Bool)

(assert (=> b!948431 (= c!98815 (validKeyInArray!0 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948432 () Bool)

(declare-fun e!533944 () Bool)

(assert (=> b!948432 (= e!533944 e!533941)))

(declare-fun res!636374 () Bool)

(assert (=> b!948432 (=> (not res!636374) (not e!533941))))

(declare-fun e!533943 () Bool)

(assert (=> b!948432 (= res!636374 (not e!533943))))

(declare-fun res!636375 () Bool)

(assert (=> b!948432 (=> (not res!636375) (not e!533943))))

(assert (=> b!948432 (= res!636375 (validKeyInArray!0 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948433 () Bool)

(declare-fun call!41223 () Bool)

(assert (=> b!948433 (= e!533942 call!41223)))

(declare-fun d!114781 () Bool)

(declare-fun res!636373 () Bool)

(assert (=> d!114781 (=> res!636373 e!533944)))

(assert (=> d!114781 (= res!636373 (bvsge #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))

(assert (=> d!114781 (= (arrayNoDuplicates!0 (_keys!10665 thiss!1141) #b00000000000000000000000000000000 Nil!19447) e!533944)))

(declare-fun b!948434 () Bool)

(assert (=> b!948434 (= e!533942 call!41223)))

(declare-fun bm!41220 () Bool)

(assert (=> bm!41220 (= call!41223 (arrayNoDuplicates!0 (_keys!10665 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98815 (Cons!19446 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000) Nil!19447) Nil!19447)))))

(declare-fun b!948435 () Bool)

(declare-fun contains!5218 (List!19450 (_ BitVec 64)) Bool)

(assert (=> b!948435 (= e!533943 (contains!5218 Nil!19447 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114781 (not res!636373)) b!948432))

(assert (= (and b!948432 res!636375) b!948435))

(assert (= (and b!948432 res!636374) b!948431))

(assert (= (and b!948431 c!98815) b!948434))

(assert (= (and b!948431 (not c!98815)) b!948433))

(assert (= (or b!948434 b!948433) bm!41220))

(assert (=> b!948431 m!881243))

(assert (=> b!948431 m!881243))

(assert (=> b!948431 m!881263))

(assert (=> b!948432 m!881243))

(assert (=> b!948432 m!881243))

(assert (=> b!948432 m!881263))

(assert (=> bm!41220 m!881243))

(declare-fun m!881279 () Bool)

(assert (=> bm!41220 m!881279))

(assert (=> b!948435 m!881243))

(assert (=> b!948435 m!881243))

(declare-fun m!881281 () Bool)

(assert (=> b!948435 m!881281))

(assert (=> b!948317 d!114781))

(declare-fun d!114783 () Bool)

(declare-fun res!636380 () Bool)

(declare-fun e!533949 () Bool)

(assert (=> d!114783 (=> res!636380 e!533949)))

(assert (=> d!114783 (= res!636380 (and ((_ is Cons!19445) (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))) (= (_1!6821 (h!20602 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))))) key!756)))))

(assert (=> d!114783 (= (containsKey!459 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))) key!756) e!533949)))

(declare-fun b!948440 () Bool)

(declare-fun e!533950 () Bool)

(assert (=> b!948440 (= e!533949 e!533950)))

(declare-fun res!636381 () Bool)

(assert (=> b!948440 (=> (not res!636381) (not e!533950))))

(assert (=> b!948440 (= res!636381 (and (or (not ((_ is Cons!19445) (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))))) (bvsle (_1!6821 (h!20602 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))))) key!756)) ((_ is Cons!19445) (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))) (bvslt (_1!6821 (h!20602 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))))) key!756)))))

(declare-fun b!948441 () Bool)

(assert (=> b!948441 (= e!533950 (containsKey!459 (t!27784 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))) key!756))))

(assert (= (and d!114783 (not res!636380)) b!948440))

(assert (= (and b!948440 res!636381) b!948441))

(declare-fun m!881283 () Bool)

(assert (=> b!948441 m!881283))

(assert (=> d!114773 d!114783))

(declare-fun d!114785 () Bool)

(declare-fun get!14528 (Option!500) V!32577)

(assert (=> d!114785 (= (apply!907 lt!427069 lt!427073) (get!14528 (getValueByKey!494 (toList!6182 lt!427069) lt!427073)))))

(declare-fun bs!26650 () Bool)

(assert (= bs!26650 d!114785))

(declare-fun m!881285 () Bool)

(assert (=> bs!26650 m!881285))

(assert (=> bs!26650 m!881285))

(declare-fun m!881287 () Bool)

(assert (=> bs!26650 m!881287))

(assert (=> b!948397 d!114785))

(declare-fun d!114787 () Bool)

(assert (=> d!114787 (= (apply!907 (+!2821 lt!427069 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141))) lt!427073) (get!14528 (getValueByKey!494 (toList!6182 (+!2821 lt!427069 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141)))) lt!427073)))))

(declare-fun bs!26651 () Bool)

(assert (= bs!26651 d!114787))

(declare-fun m!881289 () Bool)

(assert (=> bs!26651 m!881289))

(assert (=> bs!26651 m!881289))

(declare-fun m!881291 () Bool)

(assert (=> bs!26651 m!881291))

(assert (=> b!948397 d!114787))

(declare-fun d!114789 () Bool)

(declare-fun e!533953 () Bool)

(assert (=> d!114789 e!533953))

(declare-fun res!636386 () Bool)

(assert (=> d!114789 (=> (not res!636386) (not e!533953))))

(declare-fun lt!427091 () ListLongMap!12333)

(assert (=> d!114789 (= res!636386 (contains!5217 lt!427091 (_1!6821 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141)))))))

(declare-fun lt!427090 () List!19449)

(assert (=> d!114789 (= lt!427091 (ListLongMap!12334 lt!427090))))

(declare-fun lt!427092 () Unit!31944)

(declare-fun lt!427089 () Unit!31944)

(assert (=> d!114789 (= lt!427092 lt!427089)))

(assert (=> d!114789 (= (getValueByKey!494 lt!427090 (_1!6821 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141)))) (Some!499 (_2!6821 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!264 (List!19449 (_ BitVec 64) V!32577) Unit!31944)

(assert (=> d!114789 (= lt!427089 (lemmaContainsTupThenGetReturnValue!264 lt!427090 (_1!6821 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141))) (_2!6821 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141)))))))

(declare-fun insertStrictlySorted!320 (List!19449 (_ BitVec 64) V!32577) List!19449)

(assert (=> d!114789 (= lt!427090 (insertStrictlySorted!320 (toList!6182 lt!427066) (_1!6821 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141))) (_2!6821 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141)))))))

(assert (=> d!114789 (= (+!2821 lt!427066 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141))) lt!427091)))

(declare-fun b!948446 () Bool)

(declare-fun res!636387 () Bool)

(assert (=> b!948446 (=> (not res!636387) (not e!533953))))

(assert (=> b!948446 (= res!636387 (= (getValueByKey!494 (toList!6182 lt!427091) (_1!6821 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141)))) (Some!499 (_2!6821 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141))))))))

(declare-fun b!948447 () Bool)

(declare-fun contains!5219 (List!19449 tuple2!13622) Bool)

(assert (=> b!948447 (= e!533953 (contains!5219 (toList!6182 lt!427091) (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141))))))

(assert (= (and d!114789 res!636386) b!948446))

(assert (= (and b!948446 res!636387) b!948447))

(declare-fun m!881293 () Bool)

(assert (=> d!114789 m!881293))

(declare-fun m!881295 () Bool)

(assert (=> d!114789 m!881295))

(declare-fun m!881297 () Bool)

(assert (=> d!114789 m!881297))

(declare-fun m!881299 () Bool)

(assert (=> d!114789 m!881299))

(declare-fun m!881301 () Bool)

(assert (=> b!948446 m!881301))

(declare-fun m!881303 () Bool)

(assert (=> b!948447 m!881303))

(assert (=> b!948397 d!114789))

(declare-fun d!114791 () Bool)

(declare-fun e!533954 () Bool)

(assert (=> d!114791 e!533954))

(declare-fun res!636388 () Bool)

(assert (=> d!114791 (=> (not res!636388) (not e!533954))))

(declare-fun lt!427095 () ListLongMap!12333)

(assert (=> d!114791 (= res!636388 (contains!5217 lt!427095 (_1!6821 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141)))))))

(declare-fun lt!427094 () List!19449)

(assert (=> d!114791 (= lt!427095 (ListLongMap!12334 lt!427094))))

(declare-fun lt!427096 () Unit!31944)

(declare-fun lt!427093 () Unit!31944)

(assert (=> d!114791 (= lt!427096 lt!427093)))

(assert (=> d!114791 (= (getValueByKey!494 lt!427094 (_1!6821 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141)))) (Some!499 (_2!6821 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141)))))))

(assert (=> d!114791 (= lt!427093 (lemmaContainsTupThenGetReturnValue!264 lt!427094 (_1!6821 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141))) (_2!6821 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141)))))))

(assert (=> d!114791 (= lt!427094 (insertStrictlySorted!320 (toList!6182 lt!427058) (_1!6821 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141))) (_2!6821 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141)))))))

(assert (=> d!114791 (= (+!2821 lt!427058 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141))) lt!427095)))

(declare-fun b!948448 () Bool)

(declare-fun res!636389 () Bool)

(assert (=> b!948448 (=> (not res!636389) (not e!533954))))

(assert (=> b!948448 (= res!636389 (= (getValueByKey!494 (toList!6182 lt!427095) (_1!6821 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141)))) (Some!499 (_2!6821 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141))))))))

(declare-fun b!948449 () Bool)

(assert (=> b!948449 (= e!533954 (contains!5219 (toList!6182 lt!427095) (tuple2!13623 lt!427070 (minValue!5586 thiss!1141))))))

(assert (= (and d!114791 res!636388) b!948448))

(assert (= (and b!948448 res!636389) b!948449))

(declare-fun m!881305 () Bool)

(assert (=> d!114791 m!881305))

(declare-fun m!881307 () Bool)

(assert (=> d!114791 m!881307))

(declare-fun m!881309 () Bool)

(assert (=> d!114791 m!881309))

(declare-fun m!881311 () Bool)

(assert (=> d!114791 m!881311))

(declare-fun m!881313 () Bool)

(assert (=> b!948448 m!881313))

(declare-fun m!881315 () Bool)

(assert (=> b!948449 m!881315))

(assert (=> b!948397 d!114791))

(declare-fun d!114793 () Bool)

(assert (=> d!114793 (= (apply!907 lt!427059 lt!427072) (get!14528 (getValueByKey!494 (toList!6182 lt!427059) lt!427072)))))

(declare-fun bs!26652 () Bool)

(assert (= bs!26652 d!114793))

(declare-fun m!881317 () Bool)

(assert (=> bs!26652 m!881317))

(assert (=> bs!26652 m!881317))

(declare-fun m!881319 () Bool)

(assert (=> bs!26652 m!881319))

(assert (=> b!948397 d!114793))

(declare-fun d!114795 () Bool)

(declare-fun e!533955 () Bool)

(assert (=> d!114795 e!533955))

(declare-fun res!636390 () Bool)

(assert (=> d!114795 (=> (not res!636390) (not e!533955))))

(declare-fun lt!427099 () ListLongMap!12333)

(assert (=> d!114795 (= res!636390 (contains!5217 lt!427099 (_1!6821 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141)))))))

(declare-fun lt!427098 () List!19449)

(assert (=> d!114795 (= lt!427099 (ListLongMap!12334 lt!427098))))

(declare-fun lt!427100 () Unit!31944)

(declare-fun lt!427097 () Unit!31944)

(assert (=> d!114795 (= lt!427100 lt!427097)))

(assert (=> d!114795 (= (getValueByKey!494 lt!427098 (_1!6821 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141)))) (Some!499 (_2!6821 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141)))))))

(assert (=> d!114795 (= lt!427097 (lemmaContainsTupThenGetReturnValue!264 lt!427098 (_1!6821 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141))) (_2!6821 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141)))))))

(assert (=> d!114795 (= lt!427098 (insertStrictlySorted!320 (toList!6182 lt!427069) (_1!6821 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141))) (_2!6821 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141)))))))

(assert (=> d!114795 (= (+!2821 lt!427069 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141))) lt!427099)))

(declare-fun b!948450 () Bool)

(declare-fun res!636391 () Bool)

(assert (=> b!948450 (=> (not res!636391) (not e!533955))))

(assert (=> b!948450 (= res!636391 (= (getValueByKey!494 (toList!6182 lt!427099) (_1!6821 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141)))) (Some!499 (_2!6821 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141))))))))

(declare-fun b!948451 () Bool)

(assert (=> b!948451 (= e!533955 (contains!5219 (toList!6182 lt!427099) (tuple2!13623 lt!427068 (minValue!5586 thiss!1141))))))

(assert (= (and d!114795 res!636390) b!948450))

(assert (= (and b!948450 res!636391) b!948451))

(declare-fun m!881321 () Bool)

(assert (=> d!114795 m!881321))

(declare-fun m!881323 () Bool)

(assert (=> d!114795 m!881323))

(declare-fun m!881325 () Bool)

(assert (=> d!114795 m!881325))

(declare-fun m!881327 () Bool)

(assert (=> d!114795 m!881327))

(declare-fun m!881329 () Bool)

(assert (=> b!948450 m!881329))

(declare-fun m!881331 () Bool)

(assert (=> b!948451 m!881331))

(assert (=> b!948397 d!114795))

(declare-fun d!114797 () Bool)

(assert (=> d!114797 (= (apply!907 (+!2821 lt!427069 (tuple2!13623 lt!427068 (minValue!5586 thiss!1141))) lt!427073) (apply!907 lt!427069 lt!427073))))

(declare-fun lt!427103 () Unit!31944)

(declare-fun choose!1583 (ListLongMap!12333 (_ BitVec 64) V!32577 (_ BitVec 64)) Unit!31944)

(assert (=> d!114797 (= lt!427103 (choose!1583 lt!427069 lt!427068 (minValue!5586 thiss!1141) lt!427073))))

(declare-fun e!533958 () Bool)

(assert (=> d!114797 e!533958))

(declare-fun res!636394 () Bool)

(assert (=> d!114797 (=> (not res!636394) (not e!533958))))

(assert (=> d!114797 (= res!636394 (contains!5217 lt!427069 lt!427073))))

(assert (=> d!114797 (= (addApplyDifferent!451 lt!427069 lt!427068 (minValue!5586 thiss!1141) lt!427073) lt!427103)))

(declare-fun b!948455 () Bool)

(assert (=> b!948455 (= e!533958 (not (= lt!427073 lt!427068)))))

(assert (= (and d!114797 res!636394) b!948455))

(declare-fun m!881333 () Bool)

(assert (=> d!114797 m!881333))

(assert (=> d!114797 m!881221))

(assert (=> d!114797 m!881223))

(declare-fun m!881335 () Bool)

(assert (=> d!114797 m!881335))

(assert (=> d!114797 m!881211))

(assert (=> d!114797 m!881221))

(assert (=> b!948397 d!114797))

(declare-fun d!114799 () Bool)

(assert (=> d!114799 (= (apply!907 (+!2821 lt!427058 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141))) lt!427061) (apply!907 lt!427058 lt!427061))))

(declare-fun lt!427104 () Unit!31944)

(assert (=> d!114799 (= lt!427104 (choose!1583 lt!427058 lt!427070 (minValue!5586 thiss!1141) lt!427061))))

(declare-fun e!533959 () Bool)

(assert (=> d!114799 e!533959))

(declare-fun res!636395 () Bool)

(assert (=> d!114799 (=> (not res!636395) (not e!533959))))

(assert (=> d!114799 (= res!636395 (contains!5217 lt!427058 lt!427061))))

(assert (=> d!114799 (= (addApplyDifferent!451 lt!427058 lt!427070 (minValue!5586 thiss!1141) lt!427061) lt!427104)))

(declare-fun b!948456 () Bool)

(assert (=> b!948456 (= e!533959 (not (= lt!427061 lt!427070)))))

(assert (= (and d!114799 res!636395) b!948456))

(declare-fun m!881337 () Bool)

(assert (=> d!114799 m!881337))

(assert (=> d!114799 m!881229))

(assert (=> d!114799 m!881231))

(declare-fun m!881339 () Bool)

(assert (=> d!114799 m!881339))

(assert (=> d!114799 m!881213))

(assert (=> d!114799 m!881229))

(assert (=> b!948397 d!114799))

(declare-fun d!114801 () Bool)

(assert (=> d!114801 (contains!5217 (+!2821 lt!427066 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141))) lt!427076)))

(declare-fun lt!427107 () Unit!31944)

(declare-fun choose!1584 (ListLongMap!12333 (_ BitVec 64) V!32577 (_ BitVec 64)) Unit!31944)

(assert (=> d!114801 (= lt!427107 (choose!1584 lt!427066 lt!427067 (zeroValue!5586 thiss!1141) lt!427076))))

(assert (=> d!114801 (contains!5217 lt!427066 lt!427076)))

(assert (=> d!114801 (= (addStillContains!577 lt!427066 lt!427067 (zeroValue!5586 thiss!1141) lt!427076) lt!427107)))

(declare-fun bs!26653 () Bool)

(assert (= bs!26653 d!114801))

(assert (=> bs!26653 m!881225))

(assert (=> bs!26653 m!881225))

(assert (=> bs!26653 m!881239))

(declare-fun m!881341 () Bool)

(assert (=> bs!26653 m!881341))

(declare-fun m!881343 () Bool)

(assert (=> bs!26653 m!881343))

(assert (=> b!948397 d!114801))

(declare-fun d!114803 () Bool)

(declare-fun e!533960 () Bool)

(assert (=> d!114803 e!533960))

(declare-fun res!636396 () Bool)

(assert (=> d!114803 (=> res!636396 e!533960)))

(declare-fun lt!427108 () Bool)

(assert (=> d!114803 (= res!636396 (not lt!427108))))

(declare-fun lt!427109 () Bool)

(assert (=> d!114803 (= lt!427108 lt!427109)))

(declare-fun lt!427110 () Unit!31944)

(declare-fun e!533961 () Unit!31944)

(assert (=> d!114803 (= lt!427110 e!533961)))

(declare-fun c!98816 () Bool)

(assert (=> d!114803 (= c!98816 lt!427109)))

(assert (=> d!114803 (= lt!427109 (containsKey!459 (toList!6182 (+!2821 lt!427066 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141)))) lt!427076))))

(assert (=> d!114803 (= (contains!5217 (+!2821 lt!427066 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141))) lt!427076) lt!427108)))

(declare-fun b!948458 () Bool)

(declare-fun lt!427111 () Unit!31944)

(assert (=> b!948458 (= e!533961 lt!427111)))

(assert (=> b!948458 (= lt!427111 (lemmaContainsKeyImpliesGetValueByKeyDefined!354 (toList!6182 (+!2821 lt!427066 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141)))) lt!427076))))

(assert (=> b!948458 (isDefined!364 (getValueByKey!494 (toList!6182 (+!2821 lt!427066 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141)))) lt!427076))))

(declare-fun b!948459 () Bool)

(declare-fun Unit!31949 () Unit!31944)

(assert (=> b!948459 (= e!533961 Unit!31949)))

(declare-fun b!948460 () Bool)

(assert (=> b!948460 (= e!533960 (isDefined!364 (getValueByKey!494 (toList!6182 (+!2821 lt!427066 (tuple2!13623 lt!427067 (zeroValue!5586 thiss!1141)))) lt!427076)))))

(assert (= (and d!114803 c!98816) b!948458))

(assert (= (and d!114803 (not c!98816)) b!948459))

(assert (= (and d!114803 (not res!636396)) b!948460))

(declare-fun m!881345 () Bool)

(assert (=> d!114803 m!881345))

(declare-fun m!881347 () Bool)

(assert (=> b!948458 m!881347))

(declare-fun m!881349 () Bool)

(assert (=> b!948458 m!881349))

(assert (=> b!948458 m!881349))

(declare-fun m!881351 () Bool)

(assert (=> b!948458 m!881351))

(assert (=> b!948460 m!881349))

(assert (=> b!948460 m!881349))

(assert (=> b!948460 m!881351))

(assert (=> b!948397 d!114803))

(declare-fun d!114805 () Bool)

(assert (=> d!114805 (= (apply!907 (+!2821 lt!427058 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141))) lt!427061) (get!14528 (getValueByKey!494 (toList!6182 (+!2821 lt!427058 (tuple2!13623 lt!427070 (minValue!5586 thiss!1141)))) lt!427061)))))

(declare-fun bs!26654 () Bool)

(assert (= bs!26654 d!114805))

(declare-fun m!881353 () Bool)

(assert (=> bs!26654 m!881353))

(assert (=> bs!26654 m!881353))

(declare-fun m!881355 () Bool)

(assert (=> bs!26654 m!881355))

(assert (=> b!948397 d!114805))

(declare-fun d!114807 () Bool)

(declare-fun e!533962 () Bool)

(assert (=> d!114807 e!533962))

(declare-fun res!636397 () Bool)

(assert (=> d!114807 (=> (not res!636397) (not e!533962))))

(declare-fun lt!427114 () ListLongMap!12333)

(assert (=> d!114807 (= res!636397 (contains!5217 lt!427114 (_1!6821 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141)))))))

(declare-fun lt!427113 () List!19449)

(assert (=> d!114807 (= lt!427114 (ListLongMap!12334 lt!427113))))

(declare-fun lt!427115 () Unit!31944)

(declare-fun lt!427112 () Unit!31944)

(assert (=> d!114807 (= lt!427115 lt!427112)))

(assert (=> d!114807 (= (getValueByKey!494 lt!427113 (_1!6821 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141)))) (Some!499 (_2!6821 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141)))))))

(assert (=> d!114807 (= lt!427112 (lemmaContainsTupThenGetReturnValue!264 lt!427113 (_1!6821 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141))) (_2!6821 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141)))))))

(assert (=> d!114807 (= lt!427113 (insertStrictlySorted!320 (toList!6182 lt!427059) (_1!6821 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141))) (_2!6821 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141)))))))

(assert (=> d!114807 (= (+!2821 lt!427059 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141))) lt!427114)))

(declare-fun b!948461 () Bool)

(declare-fun res!636398 () Bool)

(assert (=> b!948461 (=> (not res!636398) (not e!533962))))

(assert (=> b!948461 (= res!636398 (= (getValueByKey!494 (toList!6182 lt!427114) (_1!6821 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141)))) (Some!499 (_2!6821 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141))))))))

(declare-fun b!948462 () Bool)

(assert (=> b!948462 (= e!533962 (contains!5219 (toList!6182 lt!427114) (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141))))))

(assert (= (and d!114807 res!636397) b!948461))

(assert (= (and b!948461 res!636398) b!948462))

(declare-fun m!881357 () Bool)

(assert (=> d!114807 m!881357))

(declare-fun m!881359 () Bool)

(assert (=> d!114807 m!881359))

(declare-fun m!881361 () Bool)

(assert (=> d!114807 m!881361))

(declare-fun m!881363 () Bool)

(assert (=> d!114807 m!881363))

(declare-fun m!881365 () Bool)

(assert (=> b!948461 m!881365))

(declare-fun m!881367 () Bool)

(assert (=> b!948462 m!881367))

(assert (=> b!948397 d!114807))

(declare-fun d!114809 () Bool)

(assert (=> d!114809 (= (apply!907 (+!2821 lt!427059 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141))) lt!427072) (get!14528 (getValueByKey!494 (toList!6182 (+!2821 lt!427059 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141)))) lt!427072)))))

(declare-fun bs!26655 () Bool)

(assert (= bs!26655 d!114809))

(declare-fun m!881369 () Bool)

(assert (=> bs!26655 m!881369))

(assert (=> bs!26655 m!881369))

(declare-fun m!881371 () Bool)

(assert (=> bs!26655 m!881371))

(assert (=> b!948397 d!114809))

(declare-fun d!114811 () Bool)

(assert (=> d!114811 (= (apply!907 lt!427058 lt!427061) (get!14528 (getValueByKey!494 (toList!6182 lt!427058) lt!427061)))))

(declare-fun bs!26656 () Bool)

(assert (= bs!26656 d!114811))

(declare-fun m!881373 () Bool)

(assert (=> bs!26656 m!881373))

(assert (=> bs!26656 m!881373))

(declare-fun m!881375 () Bool)

(assert (=> bs!26656 m!881375))

(assert (=> b!948397 d!114811))

(declare-fun b!948487 () Bool)

(declare-fun e!533981 () Bool)

(assert (=> b!948487 (= e!533981 (validKeyInArray!0 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!948487 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!948488 () Bool)

(declare-fun e!533982 () Bool)

(declare-fun e!533979 () Bool)

(assert (=> b!948488 (= e!533982 e!533979)))

(assert (=> b!948488 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))

(declare-fun res!636409 () Bool)

(declare-fun lt!427132 () ListLongMap!12333)

(assert (=> b!948488 (= res!636409 (contains!5217 lt!427132 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!948488 (=> (not res!636409) (not e!533979))))

(declare-fun d!114813 () Bool)

(declare-fun e!533978 () Bool)

(assert (=> d!114813 e!533978))

(declare-fun res!636408 () Bool)

(assert (=> d!114813 (=> (not res!636408) (not e!533978))))

(assert (=> d!114813 (= res!636408 (not (contains!5217 lt!427132 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!533983 () ListLongMap!12333)

(assert (=> d!114813 (= lt!427132 e!533983)))

(declare-fun c!98828 () Bool)

(assert (=> d!114813 (= c!98828 (bvsge #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))

(assert (=> d!114813 (validMask!0 (mask!27503 thiss!1141))))

(assert (=> d!114813 (= (getCurrentListMapNoExtraKeys!3327 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)) lt!427132)))

(declare-fun b!948489 () Bool)

(declare-fun e!533980 () ListLongMap!12333)

(assert (=> b!948489 (= e!533983 e!533980)))

(declare-fun c!98825 () Bool)

(assert (=> b!948489 (= c!98825 (validKeyInArray!0 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948490 () Bool)

(declare-fun e!533977 () Bool)

(assert (=> b!948490 (= e!533977 (= lt!427132 (getCurrentListMapNoExtraKeys!3327 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5750 thiss!1141))))))

(declare-fun b!948491 () Bool)

(assert (=> b!948491 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))

(assert (=> b!948491 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28100 (_values!5773 thiss!1141))))))

(assert (=> b!948491 (= e!533979 (= (apply!907 lt!427132 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)) (get!14527 (select (arr!27625 (_values!5773 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1660 (defaultEntry!5750 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!948492 () Bool)

(declare-fun res!636407 () Bool)

(assert (=> b!948492 (=> (not res!636407) (not e!533978))))

(assert (=> b!948492 (= res!636407 (not (contains!5217 lt!427132 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!948493 () Bool)

(declare-fun lt!427135 () Unit!31944)

(declare-fun lt!427130 () Unit!31944)

(assert (=> b!948493 (= lt!427135 lt!427130)))

(declare-fun lt!427136 () ListLongMap!12333)

(declare-fun lt!427133 () (_ BitVec 64))

(declare-fun lt!427131 () (_ BitVec 64))

(declare-fun lt!427134 () V!32577)

(assert (=> b!948493 (not (contains!5217 (+!2821 lt!427136 (tuple2!13623 lt!427133 lt!427134)) lt!427131))))

(declare-fun addStillNotContains!226 (ListLongMap!12333 (_ BitVec 64) V!32577 (_ BitVec 64)) Unit!31944)

(assert (=> b!948493 (= lt!427130 (addStillNotContains!226 lt!427136 lt!427133 lt!427134 lt!427131))))

(assert (=> b!948493 (= lt!427131 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!948493 (= lt!427134 (get!14527 (select (arr!27625 (_values!5773 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1660 (defaultEntry!5750 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!948493 (= lt!427133 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun call!41226 () ListLongMap!12333)

(assert (=> b!948493 (= lt!427136 call!41226)))

(assert (=> b!948493 (= e!533980 (+!2821 call!41226 (tuple2!13623 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000) (get!14527 (select (arr!27625 (_values!5773 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1660 (defaultEntry!5750 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!948494 () Bool)

(assert (=> b!948494 (= e!533983 (ListLongMap!12334 Nil!19446))))

(declare-fun b!948495 () Bool)

(declare-fun isEmpty!711 (ListLongMap!12333) Bool)

(assert (=> b!948495 (= e!533977 (isEmpty!711 lt!427132))))

(declare-fun b!948496 () Bool)

(assert (=> b!948496 (= e!533982 e!533977)))

(declare-fun c!98826 () Bool)

(assert (=> b!948496 (= c!98826 (bvslt #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))

(declare-fun b!948497 () Bool)

(assert (=> b!948497 (= e!533980 call!41226)))

(declare-fun bm!41223 () Bool)

(assert (=> bm!41223 (= call!41226 (getCurrentListMapNoExtraKeys!3327 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5750 thiss!1141)))))

(declare-fun b!948498 () Bool)

(assert (=> b!948498 (= e!533978 e!533982)))

(declare-fun c!98827 () Bool)

(assert (=> b!948498 (= c!98827 e!533981)))

(declare-fun res!636410 () Bool)

(assert (=> b!948498 (=> (not res!636410) (not e!533981))))

(assert (=> b!948498 (= res!636410 (bvslt #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))

(assert (= (and d!114813 c!98828) b!948494))

(assert (= (and d!114813 (not c!98828)) b!948489))

(assert (= (and b!948489 c!98825) b!948493))

(assert (= (and b!948489 (not c!98825)) b!948497))

(assert (= (or b!948493 b!948497) bm!41223))

(assert (= (and d!114813 res!636408) b!948492))

(assert (= (and b!948492 res!636407) b!948498))

(assert (= (and b!948498 res!636410) b!948487))

(assert (= (and b!948498 c!98827) b!948488))

(assert (= (and b!948498 (not c!98827)) b!948496))

(assert (= (and b!948488 res!636409) b!948491))

(assert (= (and b!948496 c!98826) b!948490))

(assert (= (and b!948496 (not c!98826)) b!948495))

(declare-fun b_lambda!14353 () Bool)

(assert (=> (not b_lambda!14353) (not b!948491)))

(assert (=> b!948491 t!27786))

(declare-fun b_and!29657 () Bool)

(assert (= b_and!29655 (and (=> t!27786 result!12267) b_and!29657)))

(declare-fun b_lambda!14355 () Bool)

(assert (=> (not b_lambda!14355) (not b!948493)))

(assert (=> b!948493 t!27786))

(declare-fun b_and!29659 () Bool)

(assert (= b_and!29657 (and (=> t!27786 result!12267) b_and!29659)))

(assert (=> b!948488 m!881243))

(assert (=> b!948488 m!881243))

(declare-fun m!881377 () Bool)

(assert (=> b!948488 m!881377))

(declare-fun m!881379 () Bool)

(assert (=> b!948495 m!881379))

(assert (=> b!948491 m!881249))

(assert (=> b!948491 m!881251))

(assert (=> b!948491 m!881243))

(assert (=> b!948491 m!881243))

(declare-fun m!881381 () Bool)

(assert (=> b!948491 m!881381))

(assert (=> b!948491 m!881251))

(assert (=> b!948491 m!881249))

(assert (=> b!948491 m!881253))

(assert (=> b!948489 m!881243))

(assert (=> b!948489 m!881243))

(assert (=> b!948489 m!881263))

(declare-fun m!881383 () Bool)

(assert (=> bm!41223 m!881383))

(declare-fun m!881385 () Bool)

(assert (=> b!948493 m!881385))

(assert (=> b!948493 m!881249))

(declare-fun m!881387 () Bool)

(assert (=> b!948493 m!881387))

(declare-fun m!881389 () Bool)

(assert (=> b!948493 m!881389))

(assert (=> b!948493 m!881251))

(assert (=> b!948493 m!881243))

(assert (=> b!948493 m!881251))

(assert (=> b!948493 m!881249))

(assert (=> b!948493 m!881253))

(assert (=> b!948493 m!881387))

(declare-fun m!881391 () Bool)

(assert (=> b!948493 m!881391))

(declare-fun m!881393 () Bool)

(assert (=> d!114813 m!881393))

(assert (=> d!114813 m!881159))

(assert (=> b!948487 m!881243))

(assert (=> b!948487 m!881243))

(assert (=> b!948487 m!881263))

(declare-fun m!881395 () Bool)

(assert (=> b!948492 m!881395))

(assert (=> b!948490 m!881383))

(assert (=> b!948397 d!114813))

(declare-fun d!114815 () Bool)

(assert (=> d!114815 (= (apply!907 (+!2821 lt!427059 (tuple2!13623 lt!427064 (zeroValue!5586 thiss!1141))) lt!427072) (apply!907 lt!427059 lt!427072))))

(declare-fun lt!427137 () Unit!31944)

(assert (=> d!114815 (= lt!427137 (choose!1583 lt!427059 lt!427064 (zeroValue!5586 thiss!1141) lt!427072))))

(declare-fun e!533984 () Bool)

(assert (=> d!114815 e!533984))

(declare-fun res!636411 () Bool)

(assert (=> d!114815 (=> (not res!636411) (not e!533984))))

(assert (=> d!114815 (= res!636411 (contains!5217 lt!427059 lt!427072))))

(assert (=> d!114815 (= (addApplyDifferent!451 lt!427059 lt!427064 (zeroValue!5586 thiss!1141) lt!427072) lt!427137)))

(declare-fun b!948499 () Bool)

(assert (=> b!948499 (= e!533984 (not (= lt!427072 lt!427064)))))

(assert (= (and d!114815 res!636411) b!948499))

(declare-fun m!881397 () Bool)

(assert (=> d!114815 m!881397))

(assert (=> d!114815 m!881219))

(assert (=> d!114815 m!881235))

(declare-fun m!881399 () Bool)

(assert (=> d!114815 m!881399))

(assert (=> d!114815 m!881215))

(assert (=> d!114815 m!881219))

(assert (=> b!948397 d!114815))

(declare-fun b!948508 () Bool)

(declare-fun e!533993 () Bool)

(declare-fun e!533992 () Bool)

(assert (=> b!948508 (= e!533993 e!533992)))

(declare-fun c!98831 () Bool)

(assert (=> b!948508 (= c!98831 (validKeyInArray!0 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41226 () Bool)

(declare-fun call!41229 () Bool)

(assert (=> bm!41226 (= call!41229 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10665 thiss!1141) (mask!27503 thiss!1141)))))

(declare-fun d!114817 () Bool)

(declare-fun res!636417 () Bool)

(assert (=> d!114817 (=> res!636417 e!533993)))

(assert (=> d!114817 (= res!636417 (bvsge #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))

(assert (=> d!114817 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10665 thiss!1141) (mask!27503 thiss!1141)) e!533993)))

(declare-fun b!948509 () Bool)

(assert (=> b!948509 (= e!533992 call!41229)))

(declare-fun b!948510 () Bool)

(declare-fun e!533991 () Bool)

(assert (=> b!948510 (= e!533992 e!533991)))

(declare-fun lt!427145 () (_ BitVec 64))

(assert (=> b!948510 (= lt!427145 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427146 () Unit!31944)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57448 (_ BitVec 64) (_ BitVec 32)) Unit!31944)

(assert (=> b!948510 (= lt!427146 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10665 thiss!1141) lt!427145 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!948510 (arrayContainsKey!0 (_keys!10665 thiss!1141) lt!427145 #b00000000000000000000000000000000)))

(declare-fun lt!427144 () Unit!31944)

(assert (=> b!948510 (= lt!427144 lt!427146)))

(declare-fun res!636416 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57448 (_ BitVec 32)) SeekEntryResult!9118)

(assert (=> b!948510 (= res!636416 (= (seekEntryOrOpen!0 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000) (_keys!10665 thiss!1141) (mask!27503 thiss!1141)) (Found!9118 #b00000000000000000000000000000000)))))

(assert (=> b!948510 (=> (not res!636416) (not e!533991))))

(declare-fun b!948511 () Bool)

(assert (=> b!948511 (= e!533991 call!41229)))

(assert (= (and d!114817 (not res!636417)) b!948508))

(assert (= (and b!948508 c!98831) b!948510))

(assert (= (and b!948508 (not c!98831)) b!948509))

(assert (= (and b!948510 res!636416) b!948511))

(assert (= (or b!948511 b!948509) bm!41226))

(assert (=> b!948508 m!881243))

(assert (=> b!948508 m!881243))

(assert (=> b!948508 m!881263))

(declare-fun m!881401 () Bool)

(assert (=> bm!41226 m!881401))

(assert (=> b!948510 m!881243))

(declare-fun m!881403 () Bool)

(assert (=> b!948510 m!881403))

(declare-fun m!881405 () Bool)

(assert (=> b!948510 m!881405))

(assert (=> b!948510 m!881243))

(declare-fun m!881407 () Bool)

(assert (=> b!948510 m!881407))

(assert (=> b!948316 d!114817))

(declare-fun d!114819 () Bool)

(assert (=> d!114819 (= (apply!907 lt!427055 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14528 (getValueByKey!494 (toList!6182 lt!427055) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26657 () Bool)

(assert (= bs!26657 d!114819))

(declare-fun m!881409 () Bool)

(assert (=> bs!26657 m!881409))

(assert (=> bs!26657 m!881409))

(declare-fun m!881411 () Bool)

(assert (=> bs!26657 m!881411))

(assert (=> b!948406 d!114819))

(declare-fun b!948530 () Bool)

(declare-fun e!534004 () Bool)

(declare-fun e!534005 () Bool)

(assert (=> b!948530 (= e!534004 e!534005)))

(declare-fun res!636424 () Bool)

(declare-fun lt!427151 () SeekEntryResult!9118)

(assert (=> b!948530 (= res!636424 (and ((_ is Intermediate!9118) lt!427151) (not (undefined!9930 lt!427151)) (bvslt (x!81589 lt!427151) #b01111111111111111111111111111110) (bvsge (x!81589 lt!427151) #b00000000000000000000000000000000) (bvsge (x!81589 lt!427151) #b00000000000000000000000000000000)))))

(assert (=> b!948530 (=> (not res!636424) (not e!534005))))

(declare-fun b!948531 () Bool)

(assert (=> b!948531 (= e!534004 (bvsge (x!81589 lt!427151) #b01111111111111111111111111111110))))

(declare-fun b!948532 () Bool)

(declare-fun e!534008 () SeekEntryResult!9118)

(assert (=> b!948532 (= e!534008 (Intermediate!9118 false (toIndex!0 key!756 (mask!27503 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!948533 () Bool)

(declare-fun e!534006 () SeekEntryResult!9118)

(assert (=> b!948533 (= e!534006 (Intermediate!9118 true (toIndex!0 key!756 (mask!27503 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!948534 () Bool)

(assert (=> b!948534 (= e!534006 e!534008)))

(declare-fun c!98839 () Bool)

(declare-fun lt!427152 () (_ BitVec 64))

(assert (=> b!948534 (= c!98839 (or (= lt!427152 key!756) (= (bvadd lt!427152 lt!427152) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!948535 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!948535 (= e!534008 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27503 thiss!1141)) #b00000000000000000000000000000000 (mask!27503 thiss!1141)) key!756 (_keys!10665 thiss!1141) (mask!27503 thiss!1141)))))

(declare-fun b!948536 () Bool)

(assert (=> b!948536 (and (bvsge (index!38844 lt!427151) #b00000000000000000000000000000000) (bvslt (index!38844 lt!427151) (size!28101 (_keys!10665 thiss!1141))))))

(declare-fun res!636425 () Bool)

(assert (=> b!948536 (= res!636425 (= (select (arr!27626 (_keys!10665 thiss!1141)) (index!38844 lt!427151)) key!756))))

(declare-fun e!534007 () Bool)

(assert (=> b!948536 (=> res!636425 e!534007)))

(assert (=> b!948536 (= e!534005 e!534007)))

(declare-fun b!948537 () Bool)

(assert (=> b!948537 (and (bvsge (index!38844 lt!427151) #b00000000000000000000000000000000) (bvslt (index!38844 lt!427151) (size!28101 (_keys!10665 thiss!1141))))))

(declare-fun res!636426 () Bool)

(assert (=> b!948537 (= res!636426 (= (select (arr!27626 (_keys!10665 thiss!1141)) (index!38844 lt!427151)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!948537 (=> res!636426 e!534007)))

(declare-fun d!114821 () Bool)

(assert (=> d!114821 e!534004))

(declare-fun c!98838 () Bool)

(assert (=> d!114821 (= c!98838 (and ((_ is Intermediate!9118) lt!427151) (undefined!9930 lt!427151)))))

(assert (=> d!114821 (= lt!427151 e!534006)))

(declare-fun c!98840 () Bool)

(assert (=> d!114821 (= c!98840 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!114821 (= lt!427152 (select (arr!27626 (_keys!10665 thiss!1141)) (toIndex!0 key!756 (mask!27503 thiss!1141))))))

(assert (=> d!114821 (validMask!0 (mask!27503 thiss!1141))))

(assert (=> d!114821 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27503 thiss!1141)) key!756 (_keys!10665 thiss!1141) (mask!27503 thiss!1141)) lt!427151)))

(declare-fun b!948538 () Bool)

(assert (=> b!948538 (and (bvsge (index!38844 lt!427151) #b00000000000000000000000000000000) (bvslt (index!38844 lt!427151) (size!28101 (_keys!10665 thiss!1141))))))

(assert (=> b!948538 (= e!534007 (= (select (arr!27626 (_keys!10665 thiss!1141)) (index!38844 lt!427151)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!114821 c!98840) b!948533))

(assert (= (and d!114821 (not c!98840)) b!948534))

(assert (= (and b!948534 c!98839) b!948532))

(assert (= (and b!948534 (not c!98839)) b!948535))

(assert (= (and d!114821 c!98838) b!948531))

(assert (= (and d!114821 (not c!98838)) b!948530))

(assert (= (and b!948530 res!636424) b!948536))

(assert (= (and b!948536 (not res!636425)) b!948537))

(assert (= (and b!948537 (not res!636426)) b!948538))

(assert (=> b!948535 m!881195))

(declare-fun m!881413 () Bool)

(assert (=> b!948535 m!881413))

(assert (=> b!948535 m!881413))

(declare-fun m!881415 () Bool)

(assert (=> b!948535 m!881415))

(declare-fun m!881417 () Bool)

(assert (=> b!948536 m!881417))

(assert (=> b!948537 m!881417))

(assert (=> d!114821 m!881195))

(declare-fun m!881419 () Bool)

(assert (=> d!114821 m!881419))

(assert (=> d!114821 m!881159))

(assert (=> b!948538 m!881417))

(assert (=> d!114767 d!114821))

(declare-fun d!114823 () Bool)

(declare-fun lt!427158 () (_ BitVec 32))

(declare-fun lt!427157 () (_ BitVec 32))

(assert (=> d!114823 (= lt!427158 (bvmul (bvxor lt!427157 (bvlshr lt!427157 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114823 (= lt!427157 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114823 (and (bvsge (mask!27503 thiss!1141) #b00000000000000000000000000000000) (let ((res!636427 (let ((h!20604 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!81606 (bvmul (bvxor h!20604 (bvlshr h!20604 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!81606 (bvlshr x!81606 #b00000000000000000000000000001101)) (mask!27503 thiss!1141)))))) (and (bvslt res!636427 (bvadd (mask!27503 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!636427 #b00000000000000000000000000000000))))))

(assert (=> d!114823 (= (toIndex!0 key!756 (mask!27503 thiss!1141)) (bvand (bvxor lt!427158 (bvlshr lt!427158 #b00000000000000000000000000001101)) (mask!27503 thiss!1141)))))

(assert (=> d!114767 d!114823))

(assert (=> d!114767 d!114763))

(declare-fun d!114825 () Bool)

(declare-fun e!534009 () Bool)

(assert (=> d!114825 e!534009))

(declare-fun res!636428 () Bool)

(assert (=> d!114825 (=> res!636428 e!534009)))

(declare-fun lt!427159 () Bool)

(assert (=> d!114825 (= res!636428 (not lt!427159))))

(declare-fun lt!427160 () Bool)

(assert (=> d!114825 (= lt!427159 lt!427160)))

(declare-fun lt!427161 () Unit!31944)

(declare-fun e!534010 () Unit!31944)

(assert (=> d!114825 (= lt!427161 e!534010)))

(declare-fun c!98841 () Bool)

(assert (=> d!114825 (= c!98841 lt!427160)))

(assert (=> d!114825 (= lt!427160 (containsKey!459 (toList!6182 lt!427055) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!114825 (= (contains!5217 lt!427055 #b1000000000000000000000000000000000000000000000000000000000000000) lt!427159)))

(declare-fun b!948539 () Bool)

(declare-fun lt!427162 () Unit!31944)

(assert (=> b!948539 (= e!534010 lt!427162)))

(assert (=> b!948539 (= lt!427162 (lemmaContainsKeyImpliesGetValueByKeyDefined!354 (toList!6182 lt!427055) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!948539 (isDefined!364 (getValueByKey!494 (toList!6182 lt!427055) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!948540 () Bool)

(declare-fun Unit!31950 () Unit!31944)

(assert (=> b!948540 (= e!534010 Unit!31950)))

(declare-fun b!948541 () Bool)

(assert (=> b!948541 (= e!534009 (isDefined!364 (getValueByKey!494 (toList!6182 lt!427055) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114825 c!98841) b!948539))

(assert (= (and d!114825 (not c!98841)) b!948540))

(assert (= (and d!114825 (not res!636428)) b!948541))

(declare-fun m!881421 () Bool)

(assert (=> d!114825 m!881421))

(declare-fun m!881423 () Bool)

(assert (=> b!948539 m!881423))

(assert (=> b!948539 m!881409))

(assert (=> b!948539 m!881409))

(declare-fun m!881425 () Bool)

(assert (=> b!948539 m!881425))

(assert (=> b!948541 m!881409))

(assert (=> b!948541 m!881409))

(assert (=> b!948541 m!881425))

(assert (=> bm!41214 d!114825))

(declare-fun d!114827 () Bool)

(declare-fun res!636439 () Bool)

(declare-fun e!534013 () Bool)

(assert (=> d!114827 (=> (not res!636439) (not e!534013))))

(assert (=> d!114827 (= res!636439 (validMask!0 (mask!27503 thiss!1141)))))

(assert (=> d!114827 (= (simpleValid!367 thiss!1141) e!534013)))

(declare-fun b!948550 () Bool)

(declare-fun res!636437 () Bool)

(assert (=> b!948550 (=> (not res!636437) (not e!534013))))

(assert (=> b!948550 (= res!636437 (and (= (size!28100 (_values!5773 thiss!1141)) (bvadd (mask!27503 thiss!1141) #b00000000000000000000000000000001)) (= (size!28101 (_keys!10665 thiss!1141)) (size!28100 (_values!5773 thiss!1141))) (bvsge (_size!2503 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2503 thiss!1141) (bvadd (mask!27503 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!948553 () Bool)

(assert (=> b!948553 (= e!534013 (and (bvsge (extraKeys!5482 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5482 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2503 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!948551 () Bool)

(declare-fun res!636438 () Bool)

(assert (=> b!948551 (=> (not res!636438) (not e!534013))))

(declare-fun size!28104 (LongMapFixedSize!4896) (_ BitVec 32))

(assert (=> b!948551 (= res!636438 (bvsge (size!28104 thiss!1141) (_size!2503 thiss!1141)))))

(declare-fun b!948552 () Bool)

(declare-fun res!636440 () Bool)

(assert (=> b!948552 (=> (not res!636440) (not e!534013))))

(assert (=> b!948552 (= res!636440 (= (size!28104 thiss!1141) (bvadd (_size!2503 thiss!1141) (bvsdiv (bvadd (extraKeys!5482 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!114827 res!636439) b!948550))

(assert (= (and b!948550 res!636437) b!948551))

(assert (= (and b!948551 res!636438) b!948552))

(assert (= (and b!948552 res!636440) b!948553))

(assert (=> d!114827 m!881159))

(declare-fun m!881427 () Bool)

(assert (=> b!948551 m!881427))

(assert (=> b!948552 m!881427))

(assert (=> d!114765 d!114827))

(declare-fun d!114829 () Bool)

(assert (=> d!114829 (= (apply!907 lt!427055 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)) (get!14528 (getValueByKey!494 (toList!6182 lt!427055) (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000))))))

(declare-fun bs!26658 () Bool)

(assert (= bs!26658 d!114829))

(assert (=> bs!26658 m!881243))

(assert (=> bs!26658 m!881275))

(assert (=> bs!26658 m!881275))

(declare-fun m!881429 () Bool)

(assert (=> bs!26658 m!881429))

(assert (=> b!948387 d!114829))

(declare-fun d!114831 () Bool)

(declare-fun c!98844 () Bool)

(assert (=> d!114831 (= c!98844 ((_ is ValueCellFull!9873) (select (arr!27625 (_values!5773 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!534016 () V!32577)

(assert (=> d!114831 (= (get!14527 (select (arr!27625 (_values!5773 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1660 (defaultEntry!5750 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)) e!534016)))

(declare-fun b!948558 () Bool)

(declare-fun get!14529 (ValueCell!9873 V!32577) V!32577)

(assert (=> b!948558 (= e!534016 (get!14529 (select (arr!27625 (_values!5773 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1660 (defaultEntry!5750 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!948559 () Bool)

(declare-fun get!14530 (ValueCell!9873 V!32577) V!32577)

(assert (=> b!948559 (= e!534016 (get!14530 (select (arr!27625 (_values!5773 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1660 (defaultEntry!5750 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114831 c!98844) b!948558))

(assert (= (and d!114831 (not c!98844)) b!948559))

(assert (=> b!948558 m!881251))

(assert (=> b!948558 m!881249))

(declare-fun m!881431 () Bool)

(assert (=> b!948558 m!881431))

(assert (=> b!948559 m!881251))

(assert (=> b!948559 m!881249))

(declare-fun m!881433 () Bool)

(assert (=> b!948559 m!881433))

(assert (=> b!948387 d!114831))

(declare-fun b!948572 () Bool)

(declare-fun c!98852 () Bool)

(declare-fun lt!427167 () (_ BitVec 64))

(assert (=> b!948572 (= c!98852 (= lt!427167 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!534025 () SeekEntryResult!9118)

(declare-fun e!534024 () SeekEntryResult!9118)

(assert (=> b!948572 (= e!534025 e!534024)))

(declare-fun b!948573 () Bool)

(assert (=> b!948573 (= e!534025 (Found!9118 (index!38844 lt!426996)))))

(declare-fun b!948574 () Bool)

(declare-fun e!534023 () SeekEntryResult!9118)

(assert (=> b!948574 (= e!534023 e!534025)))

(declare-fun c!98851 () Bool)

(assert (=> b!948574 (= c!98851 (= lt!427167 key!756))))

(declare-fun lt!427168 () SeekEntryResult!9118)

(declare-fun d!114833 () Bool)

(assert (=> d!114833 (and (or ((_ is Undefined!9118) lt!427168) (not ((_ is Found!9118) lt!427168)) (and (bvsge (index!38843 lt!427168) #b00000000000000000000000000000000) (bvslt (index!38843 lt!427168) (size!28101 (_keys!10665 thiss!1141))))) (or ((_ is Undefined!9118) lt!427168) ((_ is Found!9118) lt!427168) (not ((_ is MissingVacant!9118) lt!427168)) (not (= (index!38845 lt!427168) (index!38844 lt!426996))) (and (bvsge (index!38845 lt!427168) #b00000000000000000000000000000000) (bvslt (index!38845 lt!427168) (size!28101 (_keys!10665 thiss!1141))))) (or ((_ is Undefined!9118) lt!427168) (ite ((_ is Found!9118) lt!427168) (= (select (arr!27626 (_keys!10665 thiss!1141)) (index!38843 lt!427168)) key!756) (and ((_ is MissingVacant!9118) lt!427168) (= (index!38845 lt!427168) (index!38844 lt!426996)) (= (select (arr!27626 (_keys!10665 thiss!1141)) (index!38845 lt!427168)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!114833 (= lt!427168 e!534023)))

(declare-fun c!98853 () Bool)

(assert (=> d!114833 (= c!98853 (bvsge (x!81589 lt!426996) #b01111111111111111111111111111110))))

(assert (=> d!114833 (= lt!427167 (select (arr!27626 (_keys!10665 thiss!1141)) (index!38844 lt!426996)))))

(assert (=> d!114833 (validMask!0 (mask!27503 thiss!1141))))

(assert (=> d!114833 (= (seekKeyOrZeroReturnVacant!0 (x!81589 lt!426996) (index!38844 lt!426996) (index!38844 lt!426996) key!756 (_keys!10665 thiss!1141) (mask!27503 thiss!1141)) lt!427168)))

(declare-fun b!948575 () Bool)

(assert (=> b!948575 (= e!534024 (seekKeyOrZeroReturnVacant!0 (bvadd (x!81589 lt!426996) #b00000000000000000000000000000001) (nextIndex!0 (index!38844 lt!426996) (x!81589 lt!426996) (mask!27503 thiss!1141)) (index!38844 lt!426996) key!756 (_keys!10665 thiss!1141) (mask!27503 thiss!1141)))))

(declare-fun b!948576 () Bool)

(assert (=> b!948576 (= e!534023 Undefined!9118)))

(declare-fun b!948577 () Bool)

(assert (=> b!948577 (= e!534024 (MissingVacant!9118 (index!38844 lt!426996)))))

(assert (= (and d!114833 c!98853) b!948576))

(assert (= (and d!114833 (not c!98853)) b!948574))

(assert (= (and b!948574 c!98851) b!948573))

(assert (= (and b!948574 (not c!98851)) b!948572))

(assert (= (and b!948572 c!98852) b!948577))

(assert (= (and b!948572 (not c!98852)) b!948575))

(declare-fun m!881435 () Bool)

(assert (=> d!114833 m!881435))

(declare-fun m!881437 () Bool)

(assert (=> d!114833 m!881437))

(assert (=> d!114833 m!881199))

(assert (=> d!114833 m!881159))

(declare-fun m!881439 () Bool)

(assert (=> b!948575 m!881439))

(assert (=> b!948575 m!881439))

(declare-fun m!881441 () Bool)

(assert (=> b!948575 m!881441))

(assert (=> b!948333 d!114833))

(declare-fun b!948586 () Bool)

(declare-fun e!534031 () (_ BitVec 32))

(assert (=> b!948586 (= e!534031 #b00000000000000000000000000000000)))

(declare-fun b!948587 () Bool)

(declare-fun e!534030 () (_ BitVec 32))

(declare-fun call!41232 () (_ BitVec 32))

(assert (=> b!948587 (= e!534030 call!41232)))

(declare-fun bm!41229 () Bool)

(assert (=> bm!41229 (= call!41232 (arrayCountValidKeys!0 (_keys!10665 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28101 (_keys!10665 thiss!1141))))))

(declare-fun d!114835 () Bool)

(declare-fun lt!427171 () (_ BitVec 32))

(assert (=> d!114835 (and (bvsge lt!427171 #b00000000000000000000000000000000) (bvsle lt!427171 (bvsub (size!28101 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!114835 (= lt!427171 e!534031)))

(declare-fun c!98859 () Bool)

(assert (=> d!114835 (= c!98859 (bvsge #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))))))

(assert (=> d!114835 (and (bvsle #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!28101 (_keys!10665 thiss!1141)) (size!28101 (_keys!10665 thiss!1141))))))

(assert (=> d!114835 (= (arrayCountValidKeys!0 (_keys!10665 thiss!1141) #b00000000000000000000000000000000 (size!28101 (_keys!10665 thiss!1141))) lt!427171)))

(declare-fun b!948588 () Bool)

(assert (=> b!948588 (= e!534030 (bvadd #b00000000000000000000000000000001 call!41232))))

(declare-fun b!948589 () Bool)

(assert (=> b!948589 (= e!534031 e!534030)))

(declare-fun c!98858 () Bool)

(assert (=> b!948589 (= c!98858 (validKeyInArray!0 (select (arr!27626 (_keys!10665 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114835 c!98859) b!948586))

(assert (= (and d!114835 (not c!98859)) b!948589))

(assert (= (and b!948589 c!98858) b!948588))

(assert (= (and b!948589 (not c!98858)) b!948587))

(assert (= (or b!948588 b!948587) bm!41229))

(declare-fun m!881443 () Bool)

(assert (=> bm!41229 m!881443))

(assert (=> b!948589 m!881243))

(assert (=> b!948589 m!881243))

(assert (=> b!948589 m!881263))

(assert (=> b!948315 d!114835))

(declare-fun d!114837 () Bool)

(declare-fun e!534032 () Bool)

(assert (=> d!114837 e!534032))

(declare-fun res!636441 () Bool)

(assert (=> d!114837 (=> (not res!636441) (not e!534032))))

(declare-fun lt!427174 () ListLongMap!12333)

(assert (=> d!114837 (= res!636441 (contains!5217 lt!427174 (_1!6821 (ite (or c!98811 c!98809) (tuple2!13623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5586 thiss!1141)) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141))))))))

(declare-fun lt!427173 () List!19449)

(assert (=> d!114837 (= lt!427174 (ListLongMap!12334 lt!427173))))

(declare-fun lt!427175 () Unit!31944)

(declare-fun lt!427172 () Unit!31944)

(assert (=> d!114837 (= lt!427175 lt!427172)))

(assert (=> d!114837 (= (getValueByKey!494 lt!427173 (_1!6821 (ite (or c!98811 c!98809) (tuple2!13623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5586 thiss!1141)) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141))))) (Some!499 (_2!6821 (ite (or c!98811 c!98809) (tuple2!13623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5586 thiss!1141)) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141))))))))

(assert (=> d!114837 (= lt!427172 (lemmaContainsTupThenGetReturnValue!264 lt!427173 (_1!6821 (ite (or c!98811 c!98809) (tuple2!13623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5586 thiss!1141)) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141)))) (_2!6821 (ite (or c!98811 c!98809) (tuple2!13623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5586 thiss!1141)) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141))))))))

(assert (=> d!114837 (= lt!427173 (insertStrictlySorted!320 (toList!6182 (ite c!98811 call!41218 (ite c!98809 call!41219 call!41217))) (_1!6821 (ite (or c!98811 c!98809) (tuple2!13623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5586 thiss!1141)) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141)))) (_2!6821 (ite (or c!98811 c!98809) (tuple2!13623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5586 thiss!1141)) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141))))))))

(assert (=> d!114837 (= (+!2821 (ite c!98811 call!41218 (ite c!98809 call!41219 call!41217)) (ite (or c!98811 c!98809) (tuple2!13623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5586 thiss!1141)) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141)))) lt!427174)))

(declare-fun b!948590 () Bool)

(declare-fun res!636442 () Bool)

(assert (=> b!948590 (=> (not res!636442) (not e!534032))))

(assert (=> b!948590 (= res!636442 (= (getValueByKey!494 (toList!6182 lt!427174) (_1!6821 (ite (or c!98811 c!98809) (tuple2!13623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5586 thiss!1141)) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141))))) (Some!499 (_2!6821 (ite (or c!98811 c!98809) (tuple2!13623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5586 thiss!1141)) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141)))))))))

(declare-fun b!948591 () Bool)

(assert (=> b!948591 (= e!534032 (contains!5219 (toList!6182 lt!427174) (ite (or c!98811 c!98809) (tuple2!13623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5586 thiss!1141)) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141)))))))

(assert (= (and d!114837 res!636441) b!948590))

(assert (= (and b!948590 res!636442) b!948591))

(declare-fun m!881445 () Bool)

(assert (=> d!114837 m!881445))

(declare-fun m!881447 () Bool)

(assert (=> d!114837 m!881447))

(declare-fun m!881449 () Bool)

(assert (=> d!114837 m!881449))

(declare-fun m!881451 () Bool)

(assert (=> d!114837 m!881451))

(declare-fun m!881453 () Bool)

(assert (=> b!948590 m!881453))

(declare-fun m!881455 () Bool)

(assert (=> b!948591 m!881455))

(assert (=> bm!41212 d!114837))

(assert (=> b!948404 d!114779))

(declare-fun d!114839 () Bool)

(assert (=> d!114839 (= (apply!907 lt!427055 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14528 (getValueByKey!494 (toList!6182 lt!427055) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26659 () Bool)

(assert (= bs!26659 d!114839))

(declare-fun m!881457 () Bool)

(assert (=> bs!26659 m!881457))

(assert (=> bs!26659 m!881457))

(declare-fun m!881459 () Bool)

(assert (=> bs!26659 m!881459))

(assert (=> b!948395 d!114839))

(declare-fun d!114841 () Bool)

(declare-fun isEmpty!712 (Option!500) Bool)

(assert (=> d!114841 (= (isDefined!364 (getValueByKey!494 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))) key!756)) (not (isEmpty!712 (getValueByKey!494 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))) key!756))))))

(declare-fun bs!26660 () Bool)

(assert (= bs!26660 d!114841))

(assert (=> bs!26660 m!881207))

(declare-fun m!881461 () Bool)

(assert (=> bs!26660 m!881461))

(assert (=> b!948344 d!114841))

(declare-fun b!948601 () Bool)

(declare-fun e!534037 () Option!500)

(declare-fun e!534038 () Option!500)

(assert (=> b!948601 (= e!534037 e!534038)))

(declare-fun c!98865 () Bool)

(assert (=> b!948601 (= c!98865 (and ((_ is Cons!19445) (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))) (not (= (_1!6821 (h!20602 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))))) key!756))))))

(declare-fun b!948602 () Bool)

(assert (=> b!948602 (= e!534038 (getValueByKey!494 (t!27784 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))) key!756))))

(declare-fun b!948600 () Bool)

(assert (=> b!948600 (= e!534037 (Some!499 (_2!6821 (h!20602 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))))))))

(declare-fun d!114843 () Bool)

(declare-fun c!98864 () Bool)

(assert (=> d!114843 (= c!98864 (and ((_ is Cons!19445) (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))) (= (_1!6821 (h!20602 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))))) key!756)))))

(assert (=> d!114843 (= (getValueByKey!494 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))) key!756) e!534037)))

(declare-fun b!948603 () Bool)

(assert (=> b!948603 (= e!534038 None!498)))

(assert (= (and d!114843 c!98864) b!948600))

(assert (= (and d!114843 (not c!98864)) b!948601))

(assert (= (and b!948601 c!98865) b!948602))

(assert (= (and b!948601 (not c!98865)) b!948603))

(declare-fun m!881463 () Bool)

(assert (=> b!948602 m!881463))

(assert (=> b!948344 d!114843))

(assert (=> bm!41213 d!114813))

(assert (=> d!114775 d!114763))

(declare-fun d!114845 () Bool)

(declare-fun e!534039 () Bool)

(assert (=> d!114845 e!534039))

(declare-fun res!636443 () Bool)

(assert (=> d!114845 (=> (not res!636443) (not e!534039))))

(declare-fun lt!427178 () ListLongMap!12333)

(assert (=> d!114845 (= res!636443 (contains!5217 lt!427178 (_1!6821 (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141)))))))

(declare-fun lt!427177 () List!19449)

(assert (=> d!114845 (= lt!427178 (ListLongMap!12334 lt!427177))))

(declare-fun lt!427179 () Unit!31944)

(declare-fun lt!427176 () Unit!31944)

(assert (=> d!114845 (= lt!427179 lt!427176)))

(assert (=> d!114845 (= (getValueByKey!494 lt!427177 (_1!6821 (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141)))) (Some!499 (_2!6821 (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141)))))))

(assert (=> d!114845 (= lt!427176 (lemmaContainsTupThenGetReturnValue!264 lt!427177 (_1!6821 (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141))) (_2!6821 (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141)))))))

(assert (=> d!114845 (= lt!427177 (insertStrictlySorted!320 (toList!6182 call!41215) (_1!6821 (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141))) (_2!6821 (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141)))))))

(assert (=> d!114845 (= (+!2821 call!41215 (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141))) lt!427178)))

(declare-fun b!948604 () Bool)

(declare-fun res!636444 () Bool)

(assert (=> b!948604 (=> (not res!636444) (not e!534039))))

(assert (=> b!948604 (= res!636444 (= (getValueByKey!494 (toList!6182 lt!427178) (_1!6821 (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141)))) (Some!499 (_2!6821 (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141))))))))

(declare-fun b!948605 () Bool)

(assert (=> b!948605 (= e!534039 (contains!5219 (toList!6182 lt!427178) (tuple2!13623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5586 thiss!1141))))))

(assert (= (and d!114845 res!636443) b!948604))

(assert (= (and b!948604 res!636444) b!948605))

(declare-fun m!881465 () Bool)

(assert (=> d!114845 m!881465))

(declare-fun m!881467 () Bool)

(assert (=> d!114845 m!881467))

(declare-fun m!881469 () Bool)

(assert (=> d!114845 m!881469))

(declare-fun m!881471 () Bool)

(assert (=> d!114845 m!881471))

(declare-fun m!881473 () Bool)

(assert (=> b!948604 m!881473))

(declare-fun m!881475 () Bool)

(assert (=> b!948605 m!881475))

(assert (=> b!948401 d!114845))

(declare-fun d!114847 () Bool)

(declare-fun e!534040 () Bool)

(assert (=> d!114847 e!534040))

(declare-fun res!636445 () Bool)

(assert (=> d!114847 (=> res!636445 e!534040)))

(declare-fun lt!427180 () Bool)

(assert (=> d!114847 (= res!636445 (not lt!427180))))

(declare-fun lt!427181 () Bool)

(assert (=> d!114847 (= lt!427180 lt!427181)))

(declare-fun lt!427182 () Unit!31944)

(declare-fun e!534041 () Unit!31944)

(assert (=> d!114847 (= lt!427182 e!534041)))

(declare-fun c!98866 () Bool)

(assert (=> d!114847 (= c!98866 lt!427181)))

(assert (=> d!114847 (= lt!427181 (containsKey!459 (toList!6182 lt!427055) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!114847 (= (contains!5217 lt!427055 #b0000000000000000000000000000000000000000000000000000000000000000) lt!427180)))

(declare-fun b!948606 () Bool)

(declare-fun lt!427183 () Unit!31944)

(assert (=> b!948606 (= e!534041 lt!427183)))

(assert (=> b!948606 (= lt!427183 (lemmaContainsKeyImpliesGetValueByKeyDefined!354 (toList!6182 lt!427055) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!948606 (isDefined!364 (getValueByKey!494 (toList!6182 lt!427055) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!948607 () Bool)

(declare-fun Unit!31951 () Unit!31944)

(assert (=> b!948607 (= e!534041 Unit!31951)))

(declare-fun b!948608 () Bool)

(assert (=> b!948608 (= e!534040 (isDefined!364 (getValueByKey!494 (toList!6182 lt!427055) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114847 c!98866) b!948606))

(assert (= (and d!114847 (not c!98866)) b!948607))

(assert (= (and d!114847 (not res!636445)) b!948608))

(declare-fun m!881477 () Bool)

(assert (=> d!114847 m!881477))

(declare-fun m!881479 () Bool)

(assert (=> b!948606 m!881479))

(assert (=> b!948606 m!881457))

(assert (=> b!948606 m!881457))

(declare-fun m!881481 () Bool)

(assert (=> b!948606 m!881481))

(assert (=> b!948608 m!881457))

(assert (=> b!948608 m!881457))

(assert (=> b!948608 m!881481))

(assert (=> bm!41217 d!114847))

(declare-fun d!114849 () Bool)

(assert (=> d!114849 (isDefined!364 (getValueByKey!494 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))) key!756))))

(declare-fun lt!427186 () Unit!31944)

(declare-fun choose!1585 (List!19449 (_ BitVec 64)) Unit!31944)

(assert (=> d!114849 (= lt!427186 (choose!1585 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))) key!756))))

(declare-fun e!534044 () Bool)

(assert (=> d!114849 e!534044))

(declare-fun res!636448 () Bool)

(assert (=> d!114849 (=> (not res!636448) (not e!534044))))

(declare-fun isStrictlySorted!505 (List!19449) Bool)

(assert (=> d!114849 (= res!636448 (isStrictlySorted!505 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141)))))))

(assert (=> d!114849 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!354 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))) key!756) lt!427186)))

(declare-fun b!948611 () Bool)

(assert (=> b!948611 (= e!534044 (containsKey!459 (toList!6182 (getCurrentListMap!3367 (_keys!10665 thiss!1141) (_values!5773 thiss!1141) (mask!27503 thiss!1141) (extraKeys!5482 thiss!1141) (zeroValue!5586 thiss!1141) (minValue!5586 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5750 thiss!1141))) key!756))))

(assert (= (and d!114849 res!636448) b!948611))

(assert (=> d!114849 m!881207))

(assert (=> d!114849 m!881207))

(assert (=> d!114849 m!881209))

(declare-fun m!881483 () Bool)

(assert (=> d!114849 m!881483))

(declare-fun m!881485 () Bool)

(assert (=> d!114849 m!881485))

(assert (=> b!948611 m!881203))

(assert (=> b!948342 d!114849))

(assert (=> b!948342 d!114841))

(assert (=> b!948342 d!114843))

(declare-fun b!948613 () Bool)

(declare-fun e!534046 () Bool)

(assert (=> b!948613 (= e!534046 tp_is_empty!20709)))

(declare-fun condMapEmpty!32961 () Bool)

(declare-fun mapDefault!32961 () ValueCell!9873)

(assert (=> mapNonEmpty!32960 (= condMapEmpty!32961 (= mapRest!32960 ((as const (Array (_ BitVec 32) ValueCell!9873)) mapDefault!32961)))))

(declare-fun mapRes!32961 () Bool)

(assert (=> mapNonEmpty!32960 (= tp!63188 (and e!534046 mapRes!32961))))

(declare-fun mapIsEmpty!32961 () Bool)

(assert (=> mapIsEmpty!32961 mapRes!32961))

(declare-fun b!948612 () Bool)

(declare-fun e!534045 () Bool)

(assert (=> b!948612 (= e!534045 tp_is_empty!20709)))

(declare-fun mapNonEmpty!32961 () Bool)

(declare-fun tp!63189 () Bool)

(assert (=> mapNonEmpty!32961 (= mapRes!32961 (and tp!63189 e!534045))))

(declare-fun mapValue!32961 () ValueCell!9873)

(declare-fun mapKey!32961 () (_ BitVec 32))

(declare-fun mapRest!32961 () (Array (_ BitVec 32) ValueCell!9873))

(assert (=> mapNonEmpty!32961 (= mapRest!32960 (store mapRest!32961 mapKey!32961 mapValue!32961))))

(assert (= (and mapNonEmpty!32960 condMapEmpty!32961) mapIsEmpty!32961))

(assert (= (and mapNonEmpty!32960 (not condMapEmpty!32961)) mapNonEmpty!32961))

(assert (= (and mapNonEmpty!32961 ((_ is ValueCellFull!9873) mapValue!32961)) b!948612))

(assert (= (and mapNonEmpty!32960 ((_ is ValueCellFull!9873) mapDefault!32961)) b!948613))

(declare-fun m!881487 () Bool)

(assert (=> mapNonEmpty!32961 m!881487))

(declare-fun b_lambda!14357 () Bool)

(assert (= b_lambda!14353 (or (and b!948275 b_free!18201) b_lambda!14357)))

(declare-fun b_lambda!14359 () Bool)

(assert (= b_lambda!14355 (or (and b!948275 b_free!18201) b_lambda!14359)))

(check-sat (not b!948462) tp_is_empty!20709 (not b!948492) (not b!948418) (not b!948611) (not bm!41223) (not d!114801) (not b!948508) (not d!114787) (not b!948605) (not d!114797) (not d!114813) (not b!948490) (not d!114785) (not b!948510) (not d!114791) (not d!114847) (not b!948446) (not d!114819) b_and!29659 (not b_lambda!14351) (not d!114849) (not d!114815) (not b!948559) (not b!948552) (not d!114837) (not bm!41229) (not b!948451) (not b!948432) (not b!948458) (not b_lambda!14357) (not b!948488) (not mapNonEmpty!32961) (not b!948589) (not d!114811) (not d!114845) (not d!114829) (not b!948604) (not b!948420) (not b!948539) (not d!114827) (not b!948461) (not b_lambda!14359) (not b!948551) (not b!948541) (not b!948441) (not d!114789) (not d!114821) (not b!948487) (not d!114825) (not b!948590) (not b!948535) (not d!114833) (not d!114793) (not bm!41220) (not d!114839) (not b!948450) (not b!948448) (not b!948431) (not d!114807) (not b!948491) (not d!114795) (not b!948489) (not b!948449) (not d!114799) (not bm!41226) (not b!948447) (not b!948591) (not b!948558) (not b!948493) (not d!114805) (not b_next!18201) (not b!948608) (not b!948602) (not b!948495) (not d!114803) (not b!948460) (not d!114777) (not d!114841) (not b!948435) (not b!948606) (not b!948575) (not d!114809))
(check-sat b_and!29659 (not b_next!18201))
