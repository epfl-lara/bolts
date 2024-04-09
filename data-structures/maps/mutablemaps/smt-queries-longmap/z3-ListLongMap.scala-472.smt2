; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9232 () Bool)

(assert start!9232)

(declare-fun b!65852 () Bool)

(declare-fun b_free!2057 () Bool)

(declare-fun b_next!2057 () Bool)

(assert (=> b!65852 (= b_free!2057 (not b_next!2057))))

(declare-fun tp!8319 () Bool)

(declare-fun b_and!4057 () Bool)

(assert (=> b!65852 (= tp!8319 b_and!4057)))

(declare-fun b!65857 () Bool)

(declare-fun b_free!2059 () Bool)

(declare-fun b_next!2059 () Bool)

(assert (=> b!65857 (= b_free!2059 (not b_next!2059))))

(declare-fun tp!8321 () Bool)

(declare-fun b_and!4059 () Bool)

(assert (=> b!65857 (= tp!8321 b_and!4059)))

(declare-fun b!65843 () Bool)

(declare-fun res!35726 () Bool)

(declare-fun e!43207 () Bool)

(assert (=> b!65843 (=> (not res!35726) (not e!43207))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!2907 0))(
  ( (V!2908 (val!1267 Int)) )
))
(declare-datatypes ((array!3826 0))(
  ( (array!3827 (arr!1828 (Array (_ BitVec 32) (_ BitVec 64))) (size!2063 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!879 0))(
  ( (ValueCellFull!879 (v!2470 V!2907)) (EmptyCell!879) )
))
(declare-datatypes ((array!3828 0))(
  ( (array!3829 (arr!1829 (Array (_ BitVec 32) ValueCell!879)) (size!2064 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!666 0))(
  ( (LongMapFixedSize!667 (defaultEntry!2141 Int) (mask!6073 (_ BitVec 32)) (extraKeys!2012 (_ BitVec 32)) (zeroValue!2049 V!2907) (minValue!2049 V!2907) (_size!382 (_ BitVec 32)) (_keys!3781 array!3826) (_values!2124 array!3828) (_vacant!382 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!476 0))(
  ( (Cell!477 (v!2471 LongMapFixedSize!666)) )
))
(declare-datatypes ((LongMap!476 0))(
  ( (LongMap!477 (underlying!249 Cell!476)) )
))
(declare-fun thiss!992 () LongMap!476)

(assert (=> b!65843 (= res!35726 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992)))))))))

(declare-fun b!65844 () Bool)

(declare-fun e!43194 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!65844 (= e!43194 (not (validMask!0 (mask!6073 (v!2471 (underlying!249 thiss!992))))))))

(declare-datatypes ((tuple2!2104 0))(
  ( (tuple2!2105 (_1!1062 (_ BitVec 64)) (_2!1062 V!2907)) )
))
(declare-datatypes ((List!1486 0))(
  ( (Nil!1483) (Cons!1482 (h!2066 tuple2!2104) (t!4960 List!1486)) )
))
(declare-datatypes ((ListLongMap!1413 0))(
  ( (ListLongMap!1414 (toList!722 List!1486)) )
))
(declare-fun lt!28179 () ListLongMap!1413)

(declare-fun lt!28178 () tuple2!2104)

(declare-fun lt!28180 () tuple2!2104)

(declare-fun +!86 (ListLongMap!1413 tuple2!2104) ListLongMap!1413)

(assert (=> b!65844 (= (+!86 (+!86 lt!28179 lt!28178) lt!28180) (+!86 (+!86 lt!28179 lt!28180) lt!28178))))

(assert (=> b!65844 (= lt!28180 (tuple2!2105 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2049 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun lt!28185 () V!2907)

(assert (=> b!65844 (= lt!28178 (tuple2!2105 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) lt!28185))))

(declare-datatypes ((Unit!1821 0))(
  ( (Unit!1822) )
))
(declare-fun lt!28181 () Unit!1821)

(declare-fun addCommutativeForDiffKeys!5 (ListLongMap!1413 (_ BitVec 64) V!2907 (_ BitVec 64) V!2907) Unit!1821)

(assert (=> b!65844 (= lt!28181 (addCommutativeForDiffKeys!5 lt!28179 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) lt!28185 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2049 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!50 (array!3826 array!3828 (_ BitVec 32) (_ BitVec 32) V!2907 V!2907 (_ BitVec 32) Int) ListLongMap!1413)

(assert (=> b!65844 (= lt!28179 (getCurrentListMapNoExtraKeys!50 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun mapIsEmpty!3053 () Bool)

(declare-fun mapRes!3054 () Bool)

(assert (=> mapIsEmpty!3053 mapRes!3054))

(declare-fun mapNonEmpty!3053 () Bool)

(declare-fun mapRes!3053 () Bool)

(declare-fun tp!8320 () Bool)

(declare-fun e!43199 () Bool)

(assert (=> mapNonEmpty!3053 (= mapRes!3053 (and tp!8320 e!43199))))

(declare-fun mapKey!3053 () (_ BitVec 32))

(declare-fun mapRest!3053 () (Array (_ BitVec 32) ValueCell!879))

(declare-fun mapValue!3054 () ValueCell!879)

(assert (=> mapNonEmpty!3053 (= (arr!1829 (_values!2124 (v!2471 (underlying!249 thiss!992)))) (store mapRest!3053 mapKey!3053 mapValue!3054))))

(declare-fun b!65846 () Bool)

(declare-fun e!43197 () Bool)

(declare-fun e!43191 () Bool)

(assert (=> b!65846 (= e!43197 e!43191)))

(declare-fun b!65847 () Bool)

(declare-fun e!43193 () Bool)

(declare-fun tp_is_empty!2445 () Bool)

(assert (=> b!65847 (= e!43193 tp_is_empty!2445)))

(declare-fun b!65848 () Bool)

(assert (=> b!65848 (= e!43199 tp_is_empty!2445)))

(declare-fun b!65849 () Bool)

(declare-fun e!43206 () Bool)

(assert (=> b!65849 (= e!43207 e!43206)))

(declare-fun res!35722 () Bool)

(assert (=> b!65849 (=> (not res!35722) (not e!43206))))

(declare-fun lt!28186 () ListLongMap!1413)

(declare-fun lt!28187 () ListLongMap!1413)

(assert (=> b!65849 (= res!35722 (= lt!28186 lt!28187))))

(declare-fun newMap!16 () LongMapFixedSize!666)

(declare-fun map!1140 (LongMapFixedSize!666) ListLongMap!1413)

(assert (=> b!65849 (= lt!28187 (map!1140 newMap!16))))

(declare-fun getCurrentListMap!418 (array!3826 array!3828 (_ BitVec 32) (_ BitVec 32) V!2907 V!2907 (_ BitVec 32) Int) ListLongMap!1413)

(assert (=> b!65849 (= lt!28186 (getCurrentListMap!418 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun b!65850 () Bool)

(declare-fun e!43202 () Unit!1821)

(declare-fun Unit!1823 () Unit!1821)

(assert (=> b!65850 (= e!43202 Unit!1823)))

(declare-fun b!65851 () Bool)

(declare-fun e!43200 () Bool)

(declare-fun e!43195 () Bool)

(assert (=> b!65851 (= e!43200 (and e!43195 mapRes!3054))))

(declare-fun condMapEmpty!3054 () Bool)

(declare-fun mapDefault!3053 () ValueCell!879)

(assert (=> b!65851 (= condMapEmpty!3054 (= (arr!1829 (_values!2124 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!879)) mapDefault!3053)))))

(declare-fun e!43204 () Bool)

(declare-fun e!43203 () Bool)

(declare-fun array_inv!1085 (array!3826) Bool)

(declare-fun array_inv!1086 (array!3828) Bool)

(assert (=> b!65852 (= e!43204 (and tp!8319 tp_is_empty!2445 (array_inv!1085 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (array_inv!1086 (_values!2124 (v!2471 (underlying!249 thiss!992)))) e!43203))))

(declare-fun b!65853 () Bool)

(assert (=> b!65853 (= e!43191 e!43204)))

(declare-fun b!65854 () Bool)

(declare-fun Unit!1824 () Unit!1821)

(assert (=> b!65854 (= e!43202 Unit!1824)))

(declare-fun lt!28183 () Unit!1821)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!43 (array!3826 array!3828 (_ BitVec 32) (_ BitVec 32) V!2907 V!2907 (_ BitVec 64) (_ BitVec 32) Int) Unit!1821)

(assert (=> b!65854 (= lt!28183 (lemmaListMapContainsThenArrayContainsFrom!43 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!65854 (arrayContainsKey!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!28176 () Unit!1821)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3826 (_ BitVec 32) (_ BitVec 32)) Unit!1821)

(assert (=> b!65854 (= lt!28176 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1487 0))(
  ( (Nil!1484) (Cons!1483 (h!2067 (_ BitVec 64)) (t!4961 List!1487)) )
))
(declare-fun arrayNoDuplicates!0 (array!3826 (_ BitVec 32) List!1487) Bool)

(assert (=> b!65854 (arrayNoDuplicates!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) from!355 Nil!1484)))

(declare-fun lt!28182 () Unit!1821)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3826 (_ BitVec 32) (_ BitVec 64) List!1487) Unit!1821)

(assert (=> b!65854 (= lt!28182 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (Cons!1483 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) Nil!1484)))))

(assert (=> b!65854 false))

(declare-fun b!65855 () Bool)

(declare-fun e!43198 () Bool)

(assert (=> b!65855 (= e!43198 e!43194)))

(declare-fun res!35728 () Bool)

(assert (=> b!65855 (=> (not res!35728) (not e!43194))))

(declare-datatypes ((tuple2!2106 0))(
  ( (tuple2!2107 (_1!1063 Bool) (_2!1063 LongMapFixedSize!666)) )
))
(declare-fun lt!28177 () tuple2!2106)

(assert (=> b!65855 (= res!35728 (and (_1!1063 lt!28177) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!28184 () Unit!1821)

(assert (=> b!65855 (= lt!28184 e!43202)))

(declare-fun c!9042 () Bool)

(declare-fun contains!713 (ListLongMap!1413 (_ BitVec 64)) Bool)

(assert (=> b!65855 (= c!9042 (contains!713 lt!28187 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(declare-fun update!95 (LongMapFixedSize!666 (_ BitVec 64) V!2907) tuple2!2106)

(assert (=> b!65855 (= lt!28177 (update!95 newMap!16 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) lt!28185))))

(declare-fun mapIsEmpty!3054 () Bool)

(assert (=> mapIsEmpty!3054 mapRes!3053))

(declare-fun res!35727 () Bool)

(assert (=> start!9232 (=> (not res!35727) (not e!43207))))

(declare-fun valid!275 (LongMap!476) Bool)

(assert (=> start!9232 (= res!35727 (valid!275 thiss!992))))

(assert (=> start!9232 e!43207))

(assert (=> start!9232 e!43197))

(assert (=> start!9232 true))

(declare-fun e!43205 () Bool)

(assert (=> start!9232 e!43205))

(declare-fun b!65845 () Bool)

(assert (=> b!65845 (= e!43206 e!43198)))

(declare-fun res!35725 () Bool)

(assert (=> b!65845 (=> (not res!35725) (not e!43198))))

(assert (=> b!65845 (= res!35725 (and (not (= (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1122 (ValueCell!879 V!2907) V!2907)

(declare-fun dynLambda!323 (Int (_ BitVec 64)) V!2907)

(assert (=> b!65845 (= lt!28185 (get!1122 (select (arr!1829 (_values!2124 (v!2471 (underlying!249 thiss!992)))) from!355) (dynLambda!323 (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!65856 () Bool)

(declare-fun res!35724 () Bool)

(assert (=> b!65856 (=> (not res!35724) (not e!43207))))

(declare-fun valid!276 (LongMapFixedSize!666) Bool)

(assert (=> b!65856 (= res!35724 (valid!276 newMap!16))))

(assert (=> b!65857 (= e!43205 (and tp!8321 tp_is_empty!2445 (array_inv!1085 (_keys!3781 newMap!16)) (array_inv!1086 (_values!2124 newMap!16)) e!43200))))

(declare-fun b!65858 () Bool)

(declare-fun e!43201 () Bool)

(assert (=> b!65858 (= e!43201 tp_is_empty!2445)))

(declare-fun mapNonEmpty!3054 () Bool)

(declare-fun tp!8322 () Bool)

(assert (=> mapNonEmpty!3054 (= mapRes!3054 (and tp!8322 e!43193))))

(declare-fun mapKey!3054 () (_ BitVec 32))

(declare-fun mapValue!3053 () ValueCell!879)

(declare-fun mapRest!3054 () (Array (_ BitVec 32) ValueCell!879))

(assert (=> mapNonEmpty!3054 (= (arr!1829 (_values!2124 newMap!16)) (store mapRest!3054 mapKey!3054 mapValue!3053))))

(declare-fun b!65859 () Bool)

(assert (=> b!65859 (= e!43195 tp_is_empty!2445)))

(declare-fun b!65860 () Bool)

(declare-fun res!35723 () Bool)

(assert (=> b!65860 (=> (not res!35723) (not e!43207))))

(assert (=> b!65860 (= res!35723 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6073 newMap!16)) (_size!382 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun b!65861 () Bool)

(assert (=> b!65861 (= e!43203 (and e!43201 mapRes!3053))))

(declare-fun condMapEmpty!3053 () Bool)

(declare-fun mapDefault!3054 () ValueCell!879)

(assert (=> b!65861 (= condMapEmpty!3053 (= (arr!1829 (_values!2124 (v!2471 (underlying!249 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!879)) mapDefault!3054)))))

(assert (= (and start!9232 res!35727) b!65843))

(assert (= (and b!65843 res!35726) b!65856))

(assert (= (and b!65856 res!35724) b!65860))

(assert (= (and b!65860 res!35723) b!65849))

(assert (= (and b!65849 res!35722) b!65845))

(assert (= (and b!65845 res!35725) b!65855))

(assert (= (and b!65855 c!9042) b!65854))

(assert (= (and b!65855 (not c!9042)) b!65850))

(assert (= (and b!65855 res!35728) b!65844))

(assert (= (and b!65861 condMapEmpty!3053) mapIsEmpty!3054))

(assert (= (and b!65861 (not condMapEmpty!3053)) mapNonEmpty!3053))

(get-info :version)

(assert (= (and mapNonEmpty!3053 ((_ is ValueCellFull!879) mapValue!3054)) b!65848))

(assert (= (and b!65861 ((_ is ValueCellFull!879) mapDefault!3054)) b!65858))

(assert (= b!65852 b!65861))

(assert (= b!65853 b!65852))

(assert (= b!65846 b!65853))

(assert (= start!9232 b!65846))

(assert (= (and b!65851 condMapEmpty!3054) mapIsEmpty!3053))

(assert (= (and b!65851 (not condMapEmpty!3054)) mapNonEmpty!3054))

(assert (= (and mapNonEmpty!3054 ((_ is ValueCellFull!879) mapValue!3053)) b!65847))

(assert (= (and b!65851 ((_ is ValueCellFull!879) mapDefault!3053)) b!65859))

(assert (= b!65857 b!65851))

(assert (= start!9232 b!65857))

(declare-fun b_lambda!2957 () Bool)

(assert (=> (not b_lambda!2957) (not b!65845)))

(declare-fun t!4957 () Bool)

(declare-fun tb!1449 () Bool)

(assert (=> (and b!65852 (= (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))) t!4957) tb!1449))

(declare-fun result!2561 () Bool)

(assert (=> tb!1449 (= result!2561 tp_is_empty!2445)))

(assert (=> b!65845 t!4957))

(declare-fun b_and!4061 () Bool)

(assert (= b_and!4057 (and (=> t!4957 result!2561) b_and!4061)))

(declare-fun tb!1451 () Bool)

(declare-fun t!4959 () Bool)

(assert (=> (and b!65857 (= (defaultEntry!2141 newMap!16) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))) t!4959) tb!1451))

(declare-fun result!2565 () Bool)

(assert (= result!2565 result!2561))

(assert (=> b!65845 t!4959))

(declare-fun b_and!4063 () Bool)

(assert (= b_and!4059 (and (=> t!4959 result!2565) b_and!4063)))

(declare-fun m!60321 () Bool)

(assert (=> mapNonEmpty!3053 m!60321))

(declare-fun m!60323 () Bool)

(assert (=> b!65856 m!60323))

(declare-fun m!60325 () Bool)

(assert (=> b!65852 m!60325))

(declare-fun m!60327 () Bool)

(assert (=> b!65852 m!60327))

(declare-fun m!60329 () Bool)

(assert (=> b!65855 m!60329))

(assert (=> b!65855 m!60329))

(declare-fun m!60331 () Bool)

(assert (=> b!65855 m!60331))

(assert (=> b!65855 m!60329))

(declare-fun m!60333 () Bool)

(assert (=> b!65855 m!60333))

(declare-fun m!60335 () Bool)

(assert (=> start!9232 m!60335))

(declare-fun m!60337 () Bool)

(assert (=> b!65844 m!60337))

(declare-fun m!60339 () Bool)

(assert (=> b!65844 m!60339))

(assert (=> b!65844 m!60329))

(declare-fun m!60341 () Bool)

(assert (=> b!65844 m!60341))

(declare-fun m!60343 () Bool)

(assert (=> b!65844 m!60343))

(assert (=> b!65844 m!60329))

(declare-fun m!60345 () Bool)

(assert (=> b!65844 m!60345))

(declare-fun m!60347 () Bool)

(assert (=> b!65844 m!60347))

(assert (=> b!65844 m!60341))

(assert (=> b!65844 m!60339))

(declare-fun m!60349 () Bool)

(assert (=> b!65844 m!60349))

(declare-fun m!60351 () Bool)

(assert (=> mapNonEmpty!3054 m!60351))

(declare-fun m!60353 () Bool)

(assert (=> b!65849 m!60353))

(declare-fun m!60355 () Bool)

(assert (=> b!65849 m!60355))

(declare-fun m!60357 () Bool)

(assert (=> b!65854 m!60357))

(declare-fun m!60359 () Bool)

(assert (=> b!65854 m!60359))

(assert (=> b!65854 m!60329))

(declare-fun m!60361 () Bool)

(assert (=> b!65854 m!60361))

(assert (=> b!65854 m!60329))

(assert (=> b!65854 m!60329))

(declare-fun m!60363 () Bool)

(assert (=> b!65854 m!60363))

(assert (=> b!65854 m!60329))

(declare-fun m!60365 () Bool)

(assert (=> b!65854 m!60365))

(declare-fun m!60367 () Bool)

(assert (=> b!65857 m!60367))

(declare-fun m!60369 () Bool)

(assert (=> b!65857 m!60369))

(assert (=> b!65845 m!60329))

(declare-fun m!60371 () Bool)

(assert (=> b!65845 m!60371))

(declare-fun m!60373 () Bool)

(assert (=> b!65845 m!60373))

(assert (=> b!65845 m!60371))

(assert (=> b!65845 m!60373))

(declare-fun m!60375 () Bool)

(assert (=> b!65845 m!60375))

(check-sat (not b!65849) (not b!65856) (not b!65855) (not b!65857) (not mapNonEmpty!3054) (not b!65845) (not b!65844) (not start!9232) (not b_lambda!2957) (not b_next!2059) b_and!4061 (not b!65852) tp_is_empty!2445 b_and!4063 (not b_next!2057) (not mapNonEmpty!3053) (not b!65854))
(check-sat b_and!4061 b_and!4063 (not b_next!2057) (not b_next!2059))
(get-model)

(declare-fun b_lambda!2961 () Bool)

(assert (= b_lambda!2957 (or (and b!65852 b_free!2057) (and b!65857 b_free!2059 (= (defaultEntry!2141 newMap!16) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))))) b_lambda!2961)))

(check-sat (not b!65849) (not b!65856) (not b!65855) (not b!65857) (not mapNonEmpty!3054) (not b_lambda!2961) (not b!65845) (not b!65844) (not start!9232) (not b_next!2059) b_and!4061 (not b!65852) tp_is_empty!2445 b_and!4063 (not b_next!2057) (not mapNonEmpty!3053) (not b!65854))
(check-sat b_and!4061 b_and!4063 (not b_next!2057) (not b_next!2059))
(get-model)

(declare-fun d!13647 () Bool)

(declare-fun e!43264 () Bool)

(assert (=> d!13647 e!43264))

(declare-fun res!35752 () Bool)

(assert (=> d!13647 (=> res!35752 e!43264)))

(declare-fun lt!28234 () Bool)

(assert (=> d!13647 (= res!35752 (not lt!28234))))

(declare-fun lt!28233 () Bool)

(assert (=> d!13647 (= lt!28234 lt!28233)))

(declare-fun lt!28235 () Unit!1821)

(declare-fun e!43263 () Unit!1821)

(assert (=> d!13647 (= lt!28235 e!43263)))

(declare-fun c!9048 () Bool)

(assert (=> d!13647 (= c!9048 lt!28233)))

(declare-fun containsKey!132 (List!1486 (_ BitVec 64)) Bool)

(assert (=> d!13647 (= lt!28233 (containsKey!132 (toList!722 lt!28187) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(assert (=> d!13647 (= (contains!713 lt!28187 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)) lt!28234)))

(declare-fun b!65929 () Bool)

(declare-fun lt!28232 () Unit!1821)

(assert (=> b!65929 (= e!43263 lt!28232)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!81 (List!1486 (_ BitVec 64)) Unit!1821)

(assert (=> b!65929 (= lt!28232 (lemmaContainsKeyImpliesGetValueByKeyDefined!81 (toList!722 lt!28187) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(declare-datatypes ((Option!134 0))(
  ( (Some!133 (v!2475 V!2907)) (None!132) )
))
(declare-fun isDefined!82 (Option!134) Bool)

(declare-fun getValueByKey!128 (List!1486 (_ BitVec 64)) Option!134)

(assert (=> b!65929 (isDefined!82 (getValueByKey!128 (toList!722 lt!28187) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(declare-fun b!65930 () Bool)

(declare-fun Unit!1829 () Unit!1821)

(assert (=> b!65930 (= e!43263 Unit!1829)))

(declare-fun b!65931 () Bool)

(assert (=> b!65931 (= e!43264 (isDefined!82 (getValueByKey!128 (toList!722 lt!28187) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355))))))

(assert (= (and d!13647 c!9048) b!65929))

(assert (= (and d!13647 (not c!9048)) b!65930))

(assert (= (and d!13647 (not res!35752)) b!65931))

(assert (=> d!13647 m!60329))

(declare-fun m!60433 () Bool)

(assert (=> d!13647 m!60433))

(assert (=> b!65929 m!60329))

(declare-fun m!60435 () Bool)

(assert (=> b!65929 m!60435))

(assert (=> b!65929 m!60329))

(declare-fun m!60437 () Bool)

(assert (=> b!65929 m!60437))

(assert (=> b!65929 m!60437))

(declare-fun m!60439 () Bool)

(assert (=> b!65929 m!60439))

(assert (=> b!65931 m!60329))

(assert (=> b!65931 m!60437))

(assert (=> b!65931 m!60437))

(assert (=> b!65931 m!60439))

(assert (=> b!65855 d!13647))

(declare-fun b!66012 () Bool)

(declare-fun e!43326 () ListLongMap!1413)

(declare-fun call!5440 () ListLongMap!1413)

(assert (=> b!66012 (= e!43326 call!5440)))

(declare-fun b!66013 () Bool)

(declare-fun e!43324 () Bool)

(declare-datatypes ((SeekEntryResult!242 0))(
  ( (MissingZero!242 (index!3096 (_ BitVec 32))) (Found!242 (index!3097 (_ BitVec 32))) (Intermediate!242 (undefined!1054 Bool) (index!3098 (_ BitVec 32)) (x!10671 (_ BitVec 32))) (Undefined!242) (MissingVacant!242 (index!3099 (_ BitVec 32))) )
))
(declare-fun lt!28314 () SeekEntryResult!242)

(assert (=> b!66013 (= e!43324 ((_ is Undefined!242) lt!28314))))

(declare-fun d!13649 () Bool)

(declare-fun e!43318 () Bool)

(assert (=> d!13649 e!43318))

(declare-fun res!35789 () Bool)

(assert (=> d!13649 (=> (not res!35789) (not e!43318))))

(declare-fun lt!28303 () tuple2!2106)

(assert (=> d!13649 (= res!35789 (valid!276 (_2!1063 lt!28303)))))

(declare-fun e!43310 () tuple2!2106)

(assert (=> d!13649 (= lt!28303 e!43310)))

(declare-fun c!9078 () Bool)

(assert (=> d!13649 (= c!9078 (= (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (bvneg (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355))))))

(assert (=> d!13649 (valid!276 newMap!16)))

(assert (=> d!13649 (= (update!95 newMap!16 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) lt!28185) lt!28303)))

(declare-fun call!5419 () ListLongMap!1413)

(declare-fun e!43325 () Bool)

(declare-fun call!5431 () ListLongMap!1413)

(declare-fun b!66014 () Bool)

(assert (=> b!66014 (= e!43325 (= call!5419 (+!86 call!5431 (tuple2!2105 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) lt!28185))))))

(declare-fun b!66015 () Bool)

(declare-fun e!43322 () Bool)

(declare-fun call!5428 () Bool)

(assert (=> b!66015 (= e!43322 (not call!5428))))

(declare-fun b!66016 () Bool)

(declare-fun lt!28309 () array!3828)

(assert (=> b!66016 (= e!43326 (getCurrentListMap!418 (_keys!3781 newMap!16) lt!28309 (mask!6073 newMap!16) (extraKeys!2012 newMap!16) (zeroValue!2049 newMap!16) (minValue!2049 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2141 newMap!16)))))

(declare-fun bm!5415 () Bool)

(declare-fun c!9075 () Bool)

(declare-fun c!9085 () Bool)

(assert (=> bm!5415 (= c!9075 c!9085)))

(declare-fun call!5427 () Bool)

(declare-fun lt!28316 () SeekEntryResult!242)

(assert (=> bm!5415 (= call!5427 (contains!713 e!43326 (ite c!9085 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (select (arr!1828 (_keys!3781 newMap!16)) (index!3097 lt!28316)))))))

(declare-fun b!66017 () Bool)

(declare-fun e!43315 () Bool)

(assert (=> b!66017 (= e!43315 (not call!5428))))

(declare-fun e!43323 () Bool)

(declare-fun b!66018 () Bool)

(declare-fun lt!28315 () SeekEntryResult!242)

(assert (=> b!66018 (= e!43323 (= (select (arr!1828 (_keys!3781 newMap!16)) (index!3097 lt!28315)) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(declare-fun b!66019 () Bool)

(declare-fun e!43317 () Unit!1821)

(declare-fun lt!28310 () Unit!1821)

(assert (=> b!66019 (= e!43317 lt!28310)))

(declare-fun call!5432 () Unit!1821)

(assert (=> b!66019 (= lt!28310 call!5432)))

(declare-fun lt!28298 () SeekEntryResult!242)

(declare-fun call!5423 () SeekEntryResult!242)

(assert (=> b!66019 (= lt!28298 call!5423)))

(declare-fun c!9084 () Bool)

(assert (=> b!66019 (= c!9084 ((_ is MissingZero!242) lt!28298))))

(declare-fun e!43311 () Bool)

(assert (=> b!66019 e!43311))

(declare-fun b!66020 () Bool)

(declare-fun c!9082 () Bool)

(assert (=> b!66020 (= c!9082 ((_ is MissingVacant!242) lt!28298))))

(declare-fun e!43327 () Bool)

(assert (=> b!66020 (= e!43311 e!43327)))

(declare-fun bm!5416 () Bool)

(declare-fun call!5420 () SeekEntryResult!242)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3826 (_ BitVec 32)) SeekEntryResult!242)

(assert (=> bm!5416 (= call!5420 (seekEntryOrOpen!0 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (_keys!3781 newMap!16) (mask!6073 newMap!16)))))

(declare-fun b!66021 () Bool)

(declare-fun e!43312 () Unit!1821)

(declare-fun Unit!1830 () Unit!1821)

(assert (=> b!66021 (= e!43312 Unit!1830)))

(declare-fun lt!28311 () Unit!1821)

(assert (=> b!66021 (= lt!28311 call!5432)))

(declare-fun call!5429 () SeekEntryResult!242)

(assert (=> b!66021 (= lt!28314 call!5429)))

(declare-fun c!9083 () Bool)

(assert (=> b!66021 (= c!9083 ((_ is MissingZero!242) lt!28314))))

(declare-fun e!43309 () Bool)

(assert (=> b!66021 e!43309))

(declare-fun lt!28301 () Unit!1821)

(assert (=> b!66021 (= lt!28301 lt!28311)))

(assert (=> b!66021 false))

(declare-fun b!66022 () Bool)

(declare-fun c!9079 () Bool)

(assert (=> b!66022 (= c!9079 ((_ is MissingVacant!242) lt!28314))))

(assert (=> b!66022 (= e!43309 e!43324)))

(declare-fun bm!5417 () Bool)

(declare-fun call!5426 () ListLongMap!1413)

(declare-fun call!5433 () ListLongMap!1413)

(assert (=> bm!5417 (= call!5426 call!5433)))

(declare-fun b!66023 () Bool)

(declare-fun e!43308 () Bool)

(declare-fun call!5424 () Bool)

(assert (=> b!66023 (= e!43308 (not call!5424))))

(declare-fun bm!5418 () Bool)

(declare-fun call!5438 () Bool)

(declare-fun call!5425 () Bool)

(assert (=> bm!5418 (= call!5438 call!5425)))

(declare-fun b!66024 () Bool)

(declare-fun res!35792 () Bool)

(declare-fun e!43314 () Bool)

(assert (=> b!66024 (=> (not res!35792) (not e!43314))))

(assert (=> b!66024 (= res!35792 (= (select (arr!1828 (_keys!3781 newMap!16)) (index!3096 lt!28298)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!5419 () Bool)

(assert (=> bm!5419 (= call!5419 (map!1140 (_2!1063 lt!28303)))))

(declare-fun bm!5420 () Bool)

(declare-fun call!5436 () ListLongMap!1413)

(declare-fun lt!28312 () (_ BitVec 32))

(declare-fun lt!28307 () (_ BitVec 32))

(declare-fun c!9080 () Bool)

(assert (=> bm!5420 (= call!5436 (getCurrentListMap!418 (_keys!3781 newMap!16) (_values!2124 newMap!16) (mask!6073 newMap!16) (ite c!9078 (ite c!9080 lt!28307 lt!28312) (extraKeys!2012 newMap!16)) (ite (and c!9078 c!9080) lt!28185 (zeroValue!2049 newMap!16)) (ite c!9078 (ite c!9080 (minValue!2049 newMap!16) lt!28185) (minValue!2049 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2141 newMap!16)))))

(declare-fun bm!5421 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!20 (array!3826 array!3828 (_ BitVec 32) (_ BitVec 32) V!2907 V!2907 (_ BitVec 64) Int) Unit!1821)

(assert (=> bm!5421 (= call!5432 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!20 (_keys!3781 newMap!16) (_values!2124 newMap!16) (mask!6073 newMap!16) (extraKeys!2012 newMap!16) (zeroValue!2049 newMap!16) (minValue!2049 newMap!16) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (defaultEntry!2141 newMap!16)))))

(declare-fun bm!5422 () Bool)

(declare-fun call!5422 () Bool)

(assert (=> bm!5422 (= call!5425 call!5422)))

(declare-fun b!66025 () Bool)

(declare-fun res!35782 () Bool)

(assert (=> b!66025 (=> (not res!35782) (not e!43315))))

(assert (=> b!66025 (= res!35782 (= (select (arr!1828 (_keys!3781 newMap!16)) (index!3096 lt!28314)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!5423 () Bool)

(assert (=> bm!5423 (= call!5429 call!5420)))

(declare-fun b!66026 () Bool)

(assert (=> b!66026 (= e!43324 e!43322)))

(declare-fun res!35783 () Bool)

(assert (=> b!66026 (= res!35783 call!5438)))

(assert (=> b!66026 (=> (not res!35783) (not e!43322))))

(declare-fun b!66027 () Bool)

(declare-fun lt!28297 () Unit!1821)

(declare-fun lt!28313 () Unit!1821)

(assert (=> b!66027 (= lt!28297 lt!28313)))

(assert (=> b!66027 call!5427))

(declare-fun lemmaValidKeyInArrayIsInListMap!78 (array!3826 array!3828 (_ BitVec 32) (_ BitVec 32) V!2907 V!2907 (_ BitVec 32) Int) Unit!1821)

(assert (=> b!66027 (= lt!28313 (lemmaValidKeyInArrayIsInListMap!78 (_keys!3781 newMap!16) lt!28309 (mask!6073 newMap!16) (extraKeys!2012 newMap!16) (zeroValue!2049 newMap!16) (minValue!2049 newMap!16) (index!3097 lt!28316) (defaultEntry!2141 newMap!16)))))

(assert (=> b!66027 (= lt!28309 (array!3829 (store (arr!1829 (_values!2124 newMap!16)) (index!3097 lt!28316) (ValueCellFull!879 lt!28185)) (size!2064 (_values!2124 newMap!16))))))

(declare-fun lt!28295 () Unit!1821)

(declare-fun lt!28292 () Unit!1821)

(assert (=> b!66027 (= lt!28295 lt!28292)))

(declare-fun call!5434 () ListLongMap!1413)

(assert (=> b!66027 (= call!5434 call!5440)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!20 (array!3826 array!3828 (_ BitVec 32) (_ BitVec 32) V!2907 V!2907 (_ BitVec 32) (_ BitVec 64) V!2907 Int) Unit!1821)

(assert (=> b!66027 (= lt!28292 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!20 (_keys!3781 newMap!16) (_values!2124 newMap!16) (mask!6073 newMap!16) (extraKeys!2012 newMap!16) (zeroValue!2049 newMap!16) (minValue!2049 newMap!16) (index!3097 lt!28316) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) lt!28185 (defaultEntry!2141 newMap!16)))))

(declare-fun lt!28304 () Unit!1821)

(assert (=> b!66027 (= lt!28304 e!43312)))

(declare-fun c!9086 () Bool)

(assert (=> b!66027 (= c!9086 (contains!713 call!5436 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(declare-fun e!43313 () tuple2!2106)

(assert (=> b!66027 (= e!43313 (tuple2!2107 true (LongMapFixedSize!667 (defaultEntry!2141 newMap!16) (mask!6073 newMap!16) (extraKeys!2012 newMap!16) (zeroValue!2049 newMap!16) (minValue!2049 newMap!16) (_size!382 newMap!16) (_keys!3781 newMap!16) (array!3829 (store (arr!1829 (_values!2124 newMap!16)) (index!3097 lt!28316) (ValueCellFull!879 lt!28185)) (size!2064 (_values!2124 newMap!16))) (_vacant!382 newMap!16))))))

(declare-fun c!9081 () Bool)

(declare-fun bm!5424 () Bool)

(declare-fun lt!28302 () SeekEntryResult!242)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!5424 (= call!5422 (inRange!0 (ite c!9085 (ite c!9081 (index!3097 lt!28302) (ite c!9084 (index!3096 lt!28298) (index!3099 lt!28298))) (ite c!9086 (index!3097 lt!28315) (ite c!9083 (index!3096 lt!28314) (index!3099 lt!28314)))) (mask!6073 newMap!16)))))

(declare-fun b!66028 () Bool)

(declare-fun res!35793 () Bool)

(assert (=> b!66028 (=> (not res!35793) (not e!43314))))

(declare-fun call!5439 () Bool)

(assert (=> b!66028 (= res!35793 call!5439)))

(assert (=> b!66028 (= e!43311 e!43314)))

(declare-fun c!9087 () Bool)

(declare-fun bm!5425 () Bool)

(declare-fun call!5421 () tuple2!2106)

(declare-fun updateHelperNewKey!20 (LongMapFixedSize!666 (_ BitVec 64) V!2907 (_ BitVec 32)) tuple2!2106)

(assert (=> bm!5425 (= call!5421 (updateHelperNewKey!20 newMap!16 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) lt!28185 (ite c!9087 (index!3099 lt!28316) (index!3096 lt!28316))))))

(declare-fun bm!5426 () Bool)

(declare-fun call!5437 () Bool)

(assert (=> bm!5426 (= call!5428 call!5437)))

(declare-fun b!66029 () Bool)

(declare-fun e!43321 () Bool)

(assert (=> b!66029 (= e!43321 (= call!5419 call!5431))))

(declare-fun b!66030 () Bool)

(assert (=> b!66030 (= e!43314 (not call!5424))))

(declare-fun b!66031 () Bool)

(assert (=> b!66031 (= e!43318 e!43321)))

(declare-fun c!9077 () Bool)

(assert (=> b!66031 (= c!9077 (_1!1063 lt!28303))))

(declare-fun b!66032 () Bool)

(declare-fun res!35791 () Bool)

(assert (=> b!66032 (=> (not res!35791) (not e!43315))))

(assert (=> b!66032 (= res!35791 call!5438)))

(assert (=> b!66032 (= e!43309 e!43315)))

(declare-fun b!66033 () Bool)

(declare-fun lt!28296 () Unit!1821)

(assert (=> b!66033 (= lt!28296 e!43317)))

(assert (=> b!66033 (= c!9081 call!5427)))

(declare-fun e!43319 () tuple2!2106)

(assert (=> b!66033 (= e!43319 (tuple2!2107 false newMap!16))))

(declare-fun b!66034 () Bool)

(declare-fun lt!28300 () Unit!1821)

(declare-fun lt!28306 () Unit!1821)

(assert (=> b!66034 (= lt!28300 lt!28306)))

(declare-fun call!5435 () ListLongMap!1413)

(declare-fun call!5430 () ListLongMap!1413)

(assert (=> b!66034 (= call!5435 call!5430)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!20 (array!3826 array!3828 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2907 V!2907 V!2907 Int) Unit!1821)

(assert (=> b!66034 (= lt!28306 (lemmaChangeLongMinValueKeyThenAddPairToListMap!20 (_keys!3781 newMap!16) (_values!2124 newMap!16) (mask!6073 newMap!16) (extraKeys!2012 newMap!16) lt!28312 (zeroValue!2049 newMap!16) (minValue!2049 newMap!16) lt!28185 (defaultEntry!2141 newMap!16)))))

(assert (=> b!66034 (= lt!28312 (bvor (extraKeys!2012 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!43307 () tuple2!2106)

(assert (=> b!66034 (= e!43307 (tuple2!2107 true (LongMapFixedSize!667 (defaultEntry!2141 newMap!16) (mask!6073 newMap!16) (bvor (extraKeys!2012 newMap!16) #b00000000000000000000000000000010) (zeroValue!2049 newMap!16) lt!28185 (_size!382 newMap!16) (_keys!3781 newMap!16) (_values!2124 newMap!16) (_vacant!382 newMap!16))))))

(declare-fun bm!5427 () Bool)

(assert (=> bm!5427 (= call!5440 call!5433)))

(declare-fun bm!5428 () Bool)

(assert (=> bm!5428 (= call!5433 (getCurrentListMap!418 (_keys!3781 newMap!16) (ite (or c!9078 c!9085) (_values!2124 newMap!16) (array!3829 (store (arr!1829 (_values!2124 newMap!16)) (index!3097 lt!28316) (ValueCellFull!879 lt!28185)) (size!2064 (_values!2124 newMap!16)))) (mask!6073 newMap!16) (extraKeys!2012 newMap!16) (zeroValue!2049 newMap!16) (minValue!2049 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2141 newMap!16)))))

(declare-fun b!66035 () Bool)

(declare-fun res!35794 () Bool)

(assert (=> b!66035 (= res!35794 (= (select (arr!1828 (_keys!3781 newMap!16)) (index!3099 lt!28298)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!66035 (=> (not res!35794) (not e!43308))))

(declare-fun b!66036 () Bool)

(assert (=> b!66036 (= e!43327 e!43308)))

(declare-fun res!35787 () Bool)

(assert (=> b!66036 (= res!35787 call!5439)))

(assert (=> b!66036 (=> (not res!35787) (not e!43308))))

(declare-fun e!43320 () Bool)

(declare-fun b!66037 () Bool)

(assert (=> b!66037 (= e!43320 (= (select (arr!1828 (_keys!3781 newMap!16)) (index!3097 lt!28302)) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(declare-fun b!66038 () Bool)

(declare-fun res!35781 () Bool)

(assert (=> b!66038 (= res!35781 call!5425)))

(assert (=> b!66038 (=> (not res!35781) (not e!43323))))

(declare-fun bm!5429 () Bool)

(assert (=> bm!5429 (= call!5424 call!5437)))

(declare-fun b!66039 () Bool)

(declare-fun lt!28299 () tuple2!2106)

(assert (=> b!66039 (= lt!28299 call!5421)))

(assert (=> b!66039 (= e!43313 (tuple2!2107 (_1!1063 lt!28299) (_2!1063 lt!28299)))))

(declare-fun call!5418 () Unit!1821)

(declare-fun bm!5430 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!20 (array!3826 array!3828 (_ BitVec 32) (_ BitVec 32) V!2907 V!2907 (_ BitVec 64) Int) Unit!1821)

(assert (=> bm!5430 (= call!5418 (lemmaInListMapThenSeekEntryOrOpenFindsIt!20 (_keys!3781 newMap!16) (_values!2124 newMap!16) (mask!6073 newMap!16) (extraKeys!2012 newMap!16) (zeroValue!2049 newMap!16) (minValue!2049 newMap!16) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (defaultEntry!2141 newMap!16)))))

(declare-fun bm!5431 () Bool)

(assert (=> bm!5431 (= call!5437 (arrayContainsKey!0 (_keys!3781 newMap!16) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!66040 () Bool)

(declare-fun lt!28290 () Unit!1821)

(declare-fun lt!28308 () Unit!1821)

(assert (=> b!66040 (= lt!28290 lt!28308)))

(assert (=> b!66040 (= call!5435 call!5430)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!20 (array!3826 array!3828 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2907 V!2907 V!2907 Int) Unit!1821)

(assert (=> b!66040 (= lt!28308 (lemmaChangeZeroKeyThenAddPairToListMap!20 (_keys!3781 newMap!16) (_values!2124 newMap!16) (mask!6073 newMap!16) (extraKeys!2012 newMap!16) lt!28307 (zeroValue!2049 newMap!16) lt!28185 (minValue!2049 newMap!16) (defaultEntry!2141 newMap!16)))))

(assert (=> b!66040 (= lt!28307 (bvor (extraKeys!2012 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!66040 (= e!43307 (tuple2!2107 true (LongMapFixedSize!667 (defaultEntry!2141 newMap!16) (mask!6073 newMap!16) (bvor (extraKeys!2012 newMap!16) #b00000000000000000000000000000001) lt!28185 (minValue!2049 newMap!16) (_size!382 newMap!16) (_keys!3781 newMap!16) (_values!2124 newMap!16) (_vacant!382 newMap!16))))))

(declare-fun b!66041 () Bool)

(assert (=> b!66041 (= e!43310 e!43319)))

(assert (=> b!66041 (= lt!28316 (seekEntryOrOpen!0 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (_keys!3781 newMap!16) (mask!6073 newMap!16)))))

(assert (=> b!66041 (= c!9085 ((_ is Undefined!242) lt!28316))))

(declare-fun bm!5432 () Bool)

(assert (=> bm!5432 (= call!5435 call!5434)))

(declare-fun bm!5433 () Bool)

(assert (=> bm!5433 (= call!5434 (+!86 (ite c!9078 call!5426 call!5436) (ite c!9078 (ite c!9080 (tuple2!2105 #b0000000000000000000000000000000000000000000000000000000000000000 lt!28185) (tuple2!2105 #b1000000000000000000000000000000000000000000000000000000000000000 lt!28185)) (tuple2!2105 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) lt!28185))))))

(declare-fun b!66042 () Bool)

(declare-fun e!43316 () tuple2!2106)

(assert (=> b!66042 (= e!43316 e!43313)))

(declare-fun c!9076 () Bool)

(assert (=> b!66042 (= c!9076 ((_ is MissingZero!242) lt!28316))))

(declare-fun b!66043 () Bool)

(assert (=> b!66043 (= e!43310 e!43307)))

(assert (=> b!66043 (= c!9080 (= (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!5434 () Bool)

(declare-fun call!5441 () Bool)

(assert (=> bm!5434 (= call!5439 call!5441)))

(declare-fun b!66044 () Bool)

(declare-fun Unit!1831 () Unit!1821)

(assert (=> b!66044 (= e!43317 Unit!1831)))

(declare-fun lt!28305 () Unit!1821)

(assert (=> b!66044 (= lt!28305 call!5418)))

(assert (=> b!66044 (= lt!28302 call!5423)))

(declare-fun res!35790 () Bool)

(assert (=> b!66044 (= res!35790 ((_ is Found!242) lt!28302))))

(assert (=> b!66044 (=> (not res!35790) (not e!43320))))

(assert (=> b!66044 e!43320))

(declare-fun lt!28291 () Unit!1821)

(assert (=> b!66044 (= lt!28291 lt!28305)))

(assert (=> b!66044 false))

(declare-fun bm!5435 () Bool)

(assert (=> bm!5435 (= call!5430 call!5436)))

(declare-fun b!66045 () Bool)

(declare-fun lt!28294 () Unit!1821)

(assert (=> b!66045 (= e!43312 lt!28294)))

(assert (=> b!66045 (= lt!28294 call!5418)))

(assert (=> b!66045 (= lt!28315 call!5429)))

(declare-fun res!35786 () Bool)

(assert (=> b!66045 (= res!35786 ((_ is Found!242) lt!28315))))

(assert (=> b!66045 (=> (not res!35786) (not e!43323))))

(assert (=> b!66045 e!43323))

(declare-fun bm!5436 () Bool)

(assert (=> bm!5436 (= call!5441 call!5422)))

(declare-fun b!66046 () Bool)

(declare-fun res!35788 () Bool)

(assert (=> b!66046 (= res!35788 call!5441)))

(assert (=> b!66046 (=> (not res!35788) (not e!43320))))

(declare-fun b!66047 () Bool)

(assert (=> b!66047 (= e!43321 e!43325)))

(declare-fun res!35784 () Bool)

(assert (=> b!66047 (= res!35784 (contains!713 call!5419 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(assert (=> b!66047 (=> (not res!35784) (not e!43325))))

(declare-fun bm!5437 () Bool)

(assert (=> bm!5437 (= call!5423 call!5420)))

(declare-fun b!66048 () Bool)

(assert (=> b!66048 (= c!9087 ((_ is MissingVacant!242) lt!28316))))

(assert (=> b!66048 (= e!43319 e!43316)))

(declare-fun b!66049 () Bool)

(assert (=> b!66049 (= e!43327 ((_ is Undefined!242) lt!28298))))

(declare-fun b!66050 () Bool)

(declare-fun lt!28293 () tuple2!2106)

(assert (=> b!66050 (= e!43316 (tuple2!2107 (_1!1063 lt!28293) (_2!1063 lt!28293)))))

(assert (=> b!66050 (= lt!28293 call!5421)))

(declare-fun bm!5438 () Bool)

(assert (=> bm!5438 (= call!5431 (map!1140 newMap!16))))

(declare-fun b!66051 () Bool)

(declare-fun res!35785 () Bool)

(assert (=> b!66051 (= res!35785 (= (select (arr!1828 (_keys!3781 newMap!16)) (index!3099 lt!28314)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!66051 (=> (not res!35785) (not e!43322))))

(assert (= (and d!13649 c!9078) b!66043))

(assert (= (and d!13649 (not c!9078)) b!66041))

(assert (= (and b!66043 c!9080) b!66040))

(assert (= (and b!66043 (not c!9080)) b!66034))

(assert (= (or b!66040 b!66034) bm!5417))

(assert (= (or b!66040 b!66034) bm!5435))

(assert (= (or b!66040 b!66034) bm!5432))

(assert (= (and b!66041 c!9085) b!66033))

(assert (= (and b!66041 (not c!9085)) b!66048))

(assert (= (and b!66033 c!9081) b!66044))

(assert (= (and b!66033 (not c!9081)) b!66019))

(assert (= (and b!66044 res!35790) b!66046))

(assert (= (and b!66046 res!35788) b!66037))

(assert (= (and b!66019 c!9084) b!66028))

(assert (= (and b!66019 (not c!9084)) b!66020))

(assert (= (and b!66028 res!35793) b!66024))

(assert (= (and b!66024 res!35792) b!66030))

(assert (= (and b!66020 c!9082) b!66036))

(assert (= (and b!66020 (not c!9082)) b!66049))

(assert (= (and b!66036 res!35787) b!66035))

(assert (= (and b!66035 res!35794) b!66023))

(assert (= (or b!66028 b!66036) bm!5434))

(assert (= (or b!66030 b!66023) bm!5429))

(assert (= (or b!66046 bm!5434) bm!5436))

(assert (= (or b!66044 b!66019) bm!5437))

(assert (= (and b!66048 c!9087) b!66050))

(assert (= (and b!66048 (not c!9087)) b!66042))

(assert (= (and b!66042 c!9076) b!66039))

(assert (= (and b!66042 (not c!9076)) b!66027))

(assert (= (and b!66027 c!9086) b!66045))

(assert (= (and b!66027 (not c!9086)) b!66021))

(assert (= (and b!66045 res!35786) b!66038))

(assert (= (and b!66038 res!35781) b!66018))

(assert (= (and b!66021 c!9083) b!66032))

(assert (= (and b!66021 (not c!9083)) b!66022))

(assert (= (and b!66032 res!35791) b!66025))

(assert (= (and b!66025 res!35782) b!66017))

(assert (= (and b!66022 c!9079) b!66026))

(assert (= (and b!66022 (not c!9079)) b!66013))

(assert (= (and b!66026 res!35783) b!66051))

(assert (= (and b!66051 res!35785) b!66015))

(assert (= (or b!66032 b!66026) bm!5418))

(assert (= (or b!66017 b!66015) bm!5426))

(assert (= (or b!66038 bm!5418) bm!5422))

(assert (= (or b!66045 b!66021) bm!5423))

(assert (= (or b!66050 b!66039) bm!5425))

(assert (= (or bm!5429 bm!5426) bm!5431))

(assert (= (or bm!5437 bm!5423) bm!5416))

(assert (= (or b!66019 b!66021) bm!5421))

(assert (= (or b!66044 b!66045) bm!5430))

(assert (= (or bm!5436 bm!5422) bm!5424))

(assert (= (or b!66033 b!66027) bm!5427))

(assert (= (or b!66033 b!66027) bm!5415))

(assert (= (and bm!5415 c!9075) b!66012))

(assert (= (and bm!5415 (not c!9075)) b!66016))

(assert (= (or bm!5417 bm!5427) bm!5428))

(assert (= (or bm!5435 b!66027) bm!5420))

(assert (= (or bm!5432 b!66027) bm!5433))

(assert (= (and d!13649 res!35789) b!66031))

(assert (= (and b!66031 c!9077) b!66047))

(assert (= (and b!66031 (not c!9077)) b!66029))

(assert (= (and b!66047 res!35784) b!66014))

(assert (= (or b!66014 b!66029) bm!5438))

(assert (= (or b!66047 b!66014 b!66029) bm!5419))

(declare-fun m!60441 () Bool)

(assert (=> b!66040 m!60441))

(declare-fun m!60443 () Bool)

(assert (=> b!66037 m!60443))

(declare-fun m!60445 () Bool)

(assert (=> b!66014 m!60445))

(declare-fun m!60447 () Bool)

(assert (=> b!66018 m!60447))

(declare-fun m!60449 () Bool)

(assert (=> bm!5433 m!60449))

(declare-fun m!60451 () Bool)

(assert (=> b!66024 m!60451))

(assert (=> b!66047 m!60329))

(declare-fun m!60453 () Bool)

(assert (=> b!66047 m!60453))

(declare-fun m!60455 () Bool)

(assert (=> b!66025 m!60455))

(declare-fun m!60457 () Bool)

(assert (=> bm!5424 m!60457))

(declare-fun m!60459 () Bool)

(assert (=> d!13649 m!60459))

(assert (=> d!13649 m!60323))

(declare-fun m!60461 () Bool)

(assert (=> bm!5419 m!60461))

(assert (=> b!66041 m!60329))

(declare-fun m!60463 () Bool)

(assert (=> b!66041 m!60463))

(assert (=> bm!5416 m!60329))

(assert (=> bm!5416 m!60463))

(declare-fun m!60465 () Bool)

(assert (=> b!66051 m!60465))

(assert (=> bm!5425 m!60329))

(declare-fun m!60467 () Bool)

(assert (=> bm!5425 m!60467))

(assert (=> bm!5438 m!60353))

(declare-fun m!60469 () Bool)

(assert (=> b!66016 m!60469))

(declare-fun m!60471 () Bool)

(assert (=> b!66027 m!60471))

(declare-fun m!60473 () Bool)

(assert (=> b!66027 m!60473))

(assert (=> b!66027 m!60329))

(declare-fun m!60475 () Bool)

(assert (=> b!66027 m!60475))

(assert (=> b!66027 m!60329))

(declare-fun m!60477 () Bool)

(assert (=> b!66027 m!60477))

(declare-fun m!60479 () Bool)

(assert (=> b!66035 m!60479))

(declare-fun m!60481 () Bool)

(assert (=> bm!5415 m!60481))

(declare-fun m!60483 () Bool)

(assert (=> bm!5415 m!60483))

(assert (=> bm!5431 m!60329))

(declare-fun m!60485 () Bool)

(assert (=> bm!5431 m!60485))

(declare-fun m!60487 () Bool)

(assert (=> bm!5420 m!60487))

(assert (=> bm!5421 m!60329))

(declare-fun m!60489 () Bool)

(assert (=> bm!5421 m!60489))

(assert (=> bm!5430 m!60329))

(declare-fun m!60491 () Bool)

(assert (=> bm!5430 m!60491))

(declare-fun m!60493 () Bool)

(assert (=> b!66034 m!60493))

(assert (=> bm!5428 m!60473))

(declare-fun m!60495 () Bool)

(assert (=> bm!5428 m!60495))

(assert (=> b!65855 d!13649))

(declare-fun d!13651 () Bool)

(assert (=> d!13651 (= (map!1140 newMap!16) (getCurrentListMap!418 (_keys!3781 newMap!16) (_values!2124 newMap!16) (mask!6073 newMap!16) (extraKeys!2012 newMap!16) (zeroValue!2049 newMap!16) (minValue!2049 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2141 newMap!16)))))

(declare-fun bs!2834 () Bool)

(assert (= bs!2834 d!13651))

(declare-fun m!60497 () Bool)

(assert (=> bs!2834 m!60497))

(assert (=> b!65849 d!13651))

(declare-fun b!66094 () Bool)

(declare-fun e!43358 () Bool)

(declare-fun lt!28364 () ListLongMap!1413)

(declare-fun apply!71 (ListLongMap!1413 (_ BitVec 64)) V!2907)

(assert (=> b!66094 (= e!43358 (= (apply!71 lt!28364 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1122 (select (arr!1829 (_values!2124 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!323 (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!66094 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2064 (_values!2124 (v!2471 (underlying!249 thiss!992))))))))

(assert (=> b!66094 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))))))

(declare-fun b!66095 () Bool)

(declare-fun res!35813 () Bool)

(declare-fun e!43355 () Bool)

(assert (=> b!66095 (=> (not res!35813) (not e!43355))))

(declare-fun e!43359 () Bool)

(assert (=> b!66095 (= res!35813 e!43359)))

(declare-fun res!35818 () Bool)

(assert (=> b!66095 (=> res!35818 e!43359)))

(declare-fun e!43363 () Bool)

(assert (=> b!66095 (= res!35818 (not e!43363))))

(declare-fun res!35815 () Bool)

(assert (=> b!66095 (=> (not res!35815) (not e!43363))))

(assert (=> b!66095 (= res!35815 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))))))

(declare-fun bm!5453 () Bool)

(declare-fun call!5462 () Bool)

(assert (=> bm!5453 (= call!5462 (contains!713 lt!28364 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!66096 () Bool)

(declare-fun e!43360 () ListLongMap!1413)

(declare-fun call!5461 () ListLongMap!1413)

(assert (=> b!66096 (= e!43360 (+!86 call!5461 (tuple2!2105 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2049 (v!2471 (underlying!249 thiss!992))))))))

(declare-fun b!66097 () Bool)

(declare-fun c!9100 () Bool)

(assert (=> b!66097 (= c!9100 (and (not (= (bvand (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!43356 () ListLongMap!1413)

(declare-fun e!43354 () ListLongMap!1413)

(assert (=> b!66097 (= e!43356 e!43354)))

(declare-fun b!66098 () Bool)

(declare-fun e!43364 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!66098 (= e!43364 (validKeyInArray!0 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!5454 () Bool)

(declare-fun call!5459 () ListLongMap!1413)

(declare-fun call!5457 () ListLongMap!1413)

(assert (=> bm!5454 (= call!5459 call!5457)))

(declare-fun b!66099 () Bool)

(declare-fun e!43362 () Bool)

(assert (=> b!66099 (= e!43362 (= (apply!71 lt!28364 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2049 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun b!66100 () Bool)

(declare-fun e!43361 () Unit!1821)

(declare-fun lt!28371 () Unit!1821)

(assert (=> b!66100 (= e!43361 lt!28371)))

(declare-fun lt!28365 () ListLongMap!1413)

(assert (=> b!66100 (= lt!28365 (getCurrentListMapNoExtraKeys!50 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun lt!28362 () (_ BitVec 64))

(assert (=> b!66100 (= lt!28362 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!28372 () (_ BitVec 64))

(assert (=> b!66100 (= lt!28372 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!28366 () Unit!1821)

(declare-fun addStillContains!47 (ListLongMap!1413 (_ BitVec 64) V!2907 (_ BitVec 64)) Unit!1821)

(assert (=> b!66100 (= lt!28366 (addStillContains!47 lt!28365 lt!28362 (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) lt!28372))))

(assert (=> b!66100 (contains!713 (+!86 lt!28365 (tuple2!2105 lt!28362 (zeroValue!2049 (v!2471 (underlying!249 thiss!992))))) lt!28372)))

(declare-fun lt!28370 () Unit!1821)

(assert (=> b!66100 (= lt!28370 lt!28366)))

(declare-fun lt!28369 () ListLongMap!1413)

(assert (=> b!66100 (= lt!28369 (getCurrentListMapNoExtraKeys!50 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun lt!28363 () (_ BitVec 64))

(assert (=> b!66100 (= lt!28363 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!28376 () (_ BitVec 64))

(assert (=> b!66100 (= lt!28376 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!28374 () Unit!1821)

(declare-fun addApplyDifferent!47 (ListLongMap!1413 (_ BitVec 64) V!2907 (_ BitVec 64)) Unit!1821)

(assert (=> b!66100 (= lt!28374 (addApplyDifferent!47 lt!28369 lt!28363 (minValue!2049 (v!2471 (underlying!249 thiss!992))) lt!28376))))

(assert (=> b!66100 (= (apply!71 (+!86 lt!28369 (tuple2!2105 lt!28363 (minValue!2049 (v!2471 (underlying!249 thiss!992))))) lt!28376) (apply!71 lt!28369 lt!28376))))

(declare-fun lt!28375 () Unit!1821)

(assert (=> b!66100 (= lt!28375 lt!28374)))

(declare-fun lt!28367 () ListLongMap!1413)

(assert (=> b!66100 (= lt!28367 (getCurrentListMapNoExtraKeys!50 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun lt!28377 () (_ BitVec 64))

(assert (=> b!66100 (= lt!28377 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!28379 () (_ BitVec 64))

(assert (=> b!66100 (= lt!28379 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!28382 () Unit!1821)

(assert (=> b!66100 (= lt!28382 (addApplyDifferent!47 lt!28367 lt!28377 (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) lt!28379))))

(assert (=> b!66100 (= (apply!71 (+!86 lt!28367 (tuple2!2105 lt!28377 (zeroValue!2049 (v!2471 (underlying!249 thiss!992))))) lt!28379) (apply!71 lt!28367 lt!28379))))

(declare-fun lt!28378 () Unit!1821)

(assert (=> b!66100 (= lt!28378 lt!28382)))

(declare-fun lt!28381 () ListLongMap!1413)

(assert (=> b!66100 (= lt!28381 (getCurrentListMapNoExtraKeys!50 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun lt!28368 () (_ BitVec 64))

(assert (=> b!66100 (= lt!28368 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!28380 () (_ BitVec 64))

(assert (=> b!66100 (= lt!28380 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!66100 (= lt!28371 (addApplyDifferent!47 lt!28381 lt!28368 (minValue!2049 (v!2471 (underlying!249 thiss!992))) lt!28380))))

(assert (=> b!66100 (= (apply!71 (+!86 lt!28381 (tuple2!2105 lt!28368 (minValue!2049 (v!2471 (underlying!249 thiss!992))))) lt!28380) (apply!71 lt!28381 lt!28380))))

(declare-fun b!66101 () Bool)

(assert (=> b!66101 (= e!43359 e!43358)))

(declare-fun res!35821 () Bool)

(assert (=> b!66101 (=> (not res!35821) (not e!43358))))

(assert (=> b!66101 (= res!35821 (contains!713 lt!28364 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!66101 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))))))

(declare-fun b!66102 () Bool)

(declare-fun Unit!1832 () Unit!1821)

(assert (=> b!66102 (= e!43361 Unit!1832)))

(declare-fun b!66104 () Bool)

(declare-fun res!35817 () Bool)

(assert (=> b!66104 (=> (not res!35817) (not e!43355))))

(declare-fun e!43365 () Bool)

(assert (=> b!66104 (= res!35817 e!43365)))

(declare-fun c!9105 () Bool)

(assert (=> b!66104 (= c!9105 (not (= (bvand (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!66105 () Bool)

(declare-fun e!43357 () Bool)

(assert (=> b!66105 (= e!43355 e!43357)))

(declare-fun c!9104 () Bool)

(assert (=> b!66105 (= c!9104 (not (= (bvand (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!66106 () Bool)

(declare-fun call!5460 () ListLongMap!1413)

(assert (=> b!66106 (= e!43354 call!5460)))

(declare-fun b!66107 () Bool)

(assert (=> b!66107 (= e!43363 (validKeyInArray!0 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!66108 () Bool)

(declare-fun call!5458 () ListLongMap!1413)

(assert (=> b!66108 (= e!43354 call!5458)))

(declare-fun c!9102 () Bool)

(declare-fun c!9103 () Bool)

(declare-fun bm!5455 () Bool)

(assert (=> bm!5455 (= call!5461 (+!86 (ite c!9103 call!5457 (ite c!9102 call!5459 call!5458)) (ite (or c!9103 c!9102) (tuple2!2105 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2049 (v!2471 (underlying!249 thiss!992)))) (tuple2!2105 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2049 (v!2471 (underlying!249 thiss!992)))))))))

(declare-fun b!66109 () Bool)

(assert (=> b!66109 (= e!43356 call!5460)))

(declare-fun bm!5456 () Bool)

(declare-fun call!5456 () Bool)

(assert (=> bm!5456 (= call!5456 (contains!713 lt!28364 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!5457 () Bool)

(assert (=> bm!5457 (= call!5457 (getCurrentListMapNoExtraKeys!50 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun b!66110 () Bool)

(declare-fun e!43366 () Bool)

(assert (=> b!66110 (= e!43366 (= (apply!71 lt!28364 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2049 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun b!66111 () Bool)

(assert (=> b!66111 (= e!43357 e!43362)))

(declare-fun res!35820 () Bool)

(assert (=> b!66111 (= res!35820 call!5456)))

(assert (=> b!66111 (=> (not res!35820) (not e!43362))))

(declare-fun b!66112 () Bool)

(assert (=> b!66112 (= e!43365 e!43366)))

(declare-fun res!35816 () Bool)

(assert (=> b!66112 (= res!35816 call!5462)))

(assert (=> b!66112 (=> (not res!35816) (not e!43366))))

(declare-fun bm!5458 () Bool)

(assert (=> bm!5458 (= call!5460 call!5461)))

(declare-fun bm!5459 () Bool)

(assert (=> bm!5459 (= call!5458 call!5459)))

(declare-fun b!66113 () Bool)

(assert (=> b!66113 (= e!43365 (not call!5462))))

(declare-fun b!66114 () Bool)

(assert (=> b!66114 (= e!43360 e!43356)))

(assert (=> b!66114 (= c!9102 (and (not (= (bvand (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!13653 () Bool)

(assert (=> d!13653 e!43355))

(declare-fun res!35819 () Bool)

(assert (=> d!13653 (=> (not res!35819) (not e!43355))))

(assert (=> d!13653 (= res!35819 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))))))))

(declare-fun lt!28361 () ListLongMap!1413)

(assert (=> d!13653 (= lt!28364 lt!28361)))

(declare-fun lt!28373 () Unit!1821)

(assert (=> d!13653 (= lt!28373 e!43361)))

(declare-fun c!9101 () Bool)

(assert (=> d!13653 (= c!9101 e!43364)))

(declare-fun res!35814 () Bool)

(assert (=> d!13653 (=> (not res!35814) (not e!43364))))

(assert (=> d!13653 (= res!35814 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))))))

(assert (=> d!13653 (= lt!28361 e!43360)))

(assert (=> d!13653 (= c!9103 (and (not (= (bvand (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!13653 (validMask!0 (mask!6073 (v!2471 (underlying!249 thiss!992))))))

(assert (=> d!13653 (= (getCurrentListMap!418 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))) lt!28364)))

(declare-fun b!66103 () Bool)

(assert (=> b!66103 (= e!43357 (not call!5456))))

(assert (= (and d!13653 c!9103) b!66096))

(assert (= (and d!13653 (not c!9103)) b!66114))

(assert (= (and b!66114 c!9102) b!66109))

(assert (= (and b!66114 (not c!9102)) b!66097))

(assert (= (and b!66097 c!9100) b!66106))

(assert (= (and b!66097 (not c!9100)) b!66108))

(assert (= (or b!66106 b!66108) bm!5459))

(assert (= (or b!66109 bm!5459) bm!5454))

(assert (= (or b!66109 b!66106) bm!5458))

(assert (= (or b!66096 bm!5454) bm!5457))

(assert (= (or b!66096 bm!5458) bm!5455))

(assert (= (and d!13653 res!35814) b!66098))

(assert (= (and d!13653 c!9101) b!66100))

(assert (= (and d!13653 (not c!9101)) b!66102))

(assert (= (and d!13653 res!35819) b!66095))

(assert (= (and b!66095 res!35815) b!66107))

(assert (= (and b!66095 (not res!35818)) b!66101))

(assert (= (and b!66101 res!35821) b!66094))

(assert (= (and b!66095 res!35813) b!66104))

(assert (= (and b!66104 c!9105) b!66112))

(assert (= (and b!66104 (not c!9105)) b!66113))

(assert (= (and b!66112 res!35816) b!66110))

(assert (= (or b!66112 b!66113) bm!5453))

(assert (= (and b!66104 res!35817) b!66105))

(assert (= (and b!66105 c!9104) b!66111))

(assert (= (and b!66105 (not c!9104)) b!66103))

(assert (= (and b!66111 res!35820) b!66099))

(assert (= (or b!66111 b!66103) bm!5456))

(declare-fun b_lambda!2963 () Bool)

(assert (=> (not b_lambda!2963) (not b!66094)))

(assert (=> b!66094 t!4957))

(declare-fun b_and!4073 () Bool)

(assert (= b_and!4061 (and (=> t!4957 result!2561) b_and!4073)))

(assert (=> b!66094 t!4959))

(declare-fun b_and!4075 () Bool)

(assert (= b_and!4063 (and (=> t!4959 result!2565) b_and!4075)))

(declare-fun m!60499 () Bool)

(assert (=> bm!5455 m!60499))

(assert (=> bm!5457 m!60347))

(declare-fun m!60501 () Bool)

(assert (=> b!66099 m!60501))

(declare-fun m!60503 () Bool)

(assert (=> b!66107 m!60503))

(assert (=> b!66107 m!60503))

(declare-fun m!60505 () Bool)

(assert (=> b!66107 m!60505))

(declare-fun m!60507 () Bool)

(assert (=> bm!5456 m!60507))

(assert (=> b!66098 m!60503))

(assert (=> b!66098 m!60503))

(assert (=> b!66098 m!60505))

(declare-fun m!60509 () Bool)

(assert (=> b!66100 m!60509))

(declare-fun m!60511 () Bool)

(assert (=> b!66100 m!60511))

(declare-fun m!60513 () Bool)

(assert (=> b!66100 m!60513))

(declare-fun m!60515 () Bool)

(assert (=> b!66100 m!60515))

(assert (=> b!66100 m!60347))

(assert (=> b!66100 m!60515))

(declare-fun m!60517 () Bool)

(assert (=> b!66100 m!60517))

(declare-fun m!60519 () Bool)

(assert (=> b!66100 m!60519))

(declare-fun m!60521 () Bool)

(assert (=> b!66100 m!60521))

(declare-fun m!60523 () Bool)

(assert (=> b!66100 m!60523))

(assert (=> b!66100 m!60503))

(assert (=> b!66100 m!60521))

(declare-fun m!60525 () Bool)

(assert (=> b!66100 m!60525))

(declare-fun m!60527 () Bool)

(assert (=> b!66100 m!60527))

(assert (=> b!66100 m!60509))

(declare-fun m!60529 () Bool)

(assert (=> b!66100 m!60529))

(declare-fun m!60531 () Bool)

(assert (=> b!66100 m!60531))

(declare-fun m!60533 () Bool)

(assert (=> b!66100 m!60533))

(declare-fun m!60535 () Bool)

(assert (=> b!66100 m!60535))

(assert (=> b!66100 m!60529))

(declare-fun m!60537 () Bool)

(assert (=> b!66100 m!60537))

(assert (=> b!66101 m!60503))

(assert (=> b!66101 m!60503))

(declare-fun m!60539 () Bool)

(assert (=> b!66101 m!60539))

(declare-fun m!60541 () Bool)

(assert (=> bm!5453 m!60541))

(declare-fun m!60543 () Bool)

(assert (=> b!66110 m!60543))

(declare-fun m!60545 () Bool)

(assert (=> b!66096 m!60545))

(declare-fun m!60547 () Bool)

(assert (=> b!66094 m!60547))

(assert (=> b!66094 m!60503))

(assert (=> b!66094 m!60547))

(assert (=> b!66094 m!60373))

(declare-fun m!60549 () Bool)

(assert (=> b!66094 m!60549))

(assert (=> b!66094 m!60373))

(assert (=> b!66094 m!60503))

(declare-fun m!60551 () Bool)

(assert (=> b!66094 m!60551))

(assert (=> d!13653 m!60337))

(assert (=> b!65849 d!13653))

(declare-fun d!13655 () Bool)

(assert (=> d!13655 (not (arrayContainsKey!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!28385 () Unit!1821)

(declare-fun choose!68 (array!3826 (_ BitVec 32) (_ BitVec 64) List!1487) Unit!1821)

(assert (=> d!13655 (= lt!28385 (choose!68 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (Cons!1483 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) Nil!1484)))))

(assert (=> d!13655 (bvslt (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!13655 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (Cons!1483 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) Nil!1484)) lt!28385)))

(declare-fun bs!2835 () Bool)

(assert (= bs!2835 d!13655))

(assert (=> bs!2835 m!60329))

(assert (=> bs!2835 m!60363))

(assert (=> bs!2835 m!60329))

(declare-fun m!60553 () Bool)

(assert (=> bs!2835 m!60553))

(assert (=> b!65854 d!13655))

(declare-fun d!13657 () Bool)

(assert (=> d!13657 (arrayNoDuplicates!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) from!355 Nil!1484)))

(declare-fun lt!28388 () Unit!1821)

(declare-fun choose!39 (array!3826 (_ BitVec 32) (_ BitVec 32)) Unit!1821)

(assert (=> d!13657 (= lt!28388 (choose!39 (_keys!3781 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!13657 (bvslt (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!13657 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000000 from!355) lt!28388)))

(declare-fun bs!2836 () Bool)

(assert (= bs!2836 d!13657))

(assert (=> bs!2836 m!60359))

(declare-fun m!60555 () Bool)

(assert (=> bs!2836 m!60555))

(assert (=> b!65854 d!13657))

(declare-fun d!13659 () Bool)

(declare-fun res!35826 () Bool)

(declare-fun e!43371 () Bool)

(assert (=> d!13659 (=> res!35826 e!43371)))

(assert (=> d!13659 (= res!35826 (= (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(assert (=> d!13659 (= (arrayContainsKey!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!43371)))

(declare-fun b!66119 () Bool)

(declare-fun e!43372 () Bool)

(assert (=> b!66119 (= e!43371 e!43372)))

(declare-fun res!35827 () Bool)

(assert (=> b!66119 (=> (not res!35827) (not e!43372))))

(assert (=> b!66119 (= res!35827 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))))))

(declare-fun b!66120 () Bool)

(assert (=> b!66120 (= e!43372 (arrayContainsKey!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!13659 (not res!35826)) b!66119))

(assert (= (and b!66119 res!35827) b!66120))

(assert (=> d!13659 m!60503))

(assert (=> b!66120 m!60329))

(declare-fun m!60557 () Bool)

(assert (=> b!66120 m!60557))

(assert (=> b!65854 d!13659))

(declare-fun d!13661 () Bool)

(declare-fun e!43375 () Bool)

(assert (=> d!13661 e!43375))

(declare-fun c!9108 () Bool)

(assert (=> d!13661 (= c!9108 (and (not (= (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!28391 () Unit!1821)

(declare-fun choose!371 (array!3826 array!3828 (_ BitVec 32) (_ BitVec 32) V!2907 V!2907 (_ BitVec 64) (_ BitVec 32) Int) Unit!1821)

(assert (=> d!13661 (= lt!28391 (choose!371 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))))))

(assert (=> d!13661 (validMask!0 (mask!6073 (v!2471 (underlying!249 thiss!992))))))

(assert (=> d!13661 (= (lemmaListMapContainsThenArrayContainsFrom!43 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))) lt!28391)))

(declare-fun b!66125 () Bool)

(assert (=> b!66125 (= e!43375 (arrayContainsKey!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!66126 () Bool)

(assert (=> b!66126 (= e!43375 (ite (= (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!13661 c!9108) b!66125))

(assert (= (and d!13661 (not c!9108)) b!66126))

(assert (=> d!13661 m!60329))

(declare-fun m!60559 () Bool)

(assert (=> d!13661 m!60559))

(assert (=> d!13661 m!60337))

(assert (=> b!66125 m!60329))

(assert (=> b!66125 m!60363))

(assert (=> b!65854 d!13661))

(declare-fun b!66137 () Bool)

(declare-fun e!43386 () Bool)

(declare-fun e!43384 () Bool)

(assert (=> b!66137 (= e!43386 e!43384)))

(declare-fun c!9111 () Bool)

(assert (=> b!66137 (= c!9111 (validKeyInArray!0 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(declare-fun d!13663 () Bool)

(declare-fun res!35836 () Bool)

(declare-fun e!43385 () Bool)

(assert (=> d!13663 (=> res!35836 e!43385)))

(assert (=> d!13663 (= res!35836 (bvsge from!355 (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))))))

(assert (=> d!13663 (= (arrayNoDuplicates!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) from!355 Nil!1484) e!43385)))

(declare-fun b!66138 () Bool)

(assert (=> b!66138 (= e!43385 e!43386)))

(declare-fun res!35834 () Bool)

(assert (=> b!66138 (=> (not res!35834) (not e!43386))))

(declare-fun e!43387 () Bool)

(assert (=> b!66138 (= res!35834 (not e!43387))))

(declare-fun res!35835 () Bool)

(assert (=> b!66138 (=> (not res!35835) (not e!43387))))

(assert (=> b!66138 (= res!35835 (validKeyInArray!0 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(declare-fun call!5465 () Bool)

(declare-fun bm!5462 () Bool)

(assert (=> bm!5462 (= call!5465 (arrayNoDuplicates!0 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!9111 (Cons!1483 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) Nil!1484) Nil!1484)))))

(declare-fun b!66139 () Bool)

(assert (=> b!66139 (= e!43384 call!5465)))

(declare-fun b!66140 () Bool)

(declare-fun contains!714 (List!1487 (_ BitVec 64)) Bool)

(assert (=> b!66140 (= e!43387 (contains!714 Nil!1484 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(declare-fun b!66141 () Bool)

(assert (=> b!66141 (= e!43384 call!5465)))

(assert (= (and d!13663 (not res!35836)) b!66138))

(assert (= (and b!66138 res!35835) b!66140))

(assert (= (and b!66138 res!35834) b!66137))

(assert (= (and b!66137 c!9111) b!66139))

(assert (= (and b!66137 (not c!9111)) b!66141))

(assert (= (or b!66139 b!66141) bm!5462))

(assert (=> b!66137 m!60329))

(assert (=> b!66137 m!60329))

(declare-fun m!60561 () Bool)

(assert (=> b!66137 m!60561))

(assert (=> b!66138 m!60329))

(assert (=> b!66138 m!60329))

(assert (=> b!66138 m!60561))

(assert (=> bm!5462 m!60329))

(declare-fun m!60563 () Bool)

(assert (=> bm!5462 m!60563))

(assert (=> b!66140 m!60329))

(assert (=> b!66140 m!60329))

(declare-fun m!60565 () Bool)

(assert (=> b!66140 m!60565))

(assert (=> b!65854 d!13663))

(declare-fun d!13665 () Bool)

(declare-fun c!9114 () Bool)

(assert (=> d!13665 (= c!9114 ((_ is ValueCellFull!879) (select (arr!1829 (_values!2124 (v!2471 (underlying!249 thiss!992)))) from!355)))))

(declare-fun e!43390 () V!2907)

(assert (=> d!13665 (= (get!1122 (select (arr!1829 (_values!2124 (v!2471 (underlying!249 thiss!992)))) from!355) (dynLambda!323 (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!43390)))

(declare-fun b!66146 () Bool)

(declare-fun get!1123 (ValueCell!879 V!2907) V!2907)

(assert (=> b!66146 (= e!43390 (get!1123 (select (arr!1829 (_values!2124 (v!2471 (underlying!249 thiss!992)))) from!355) (dynLambda!323 (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!66147 () Bool)

(declare-fun get!1124 (ValueCell!879 V!2907) V!2907)

(assert (=> b!66147 (= e!43390 (get!1124 (select (arr!1829 (_values!2124 (v!2471 (underlying!249 thiss!992)))) from!355) (dynLambda!323 (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!13665 c!9114) b!66146))

(assert (= (and d!13665 (not c!9114)) b!66147))

(assert (=> b!66146 m!60371))

(assert (=> b!66146 m!60373))

(declare-fun m!60567 () Bool)

(assert (=> b!66146 m!60567))

(assert (=> b!66147 m!60371))

(assert (=> b!66147 m!60373))

(declare-fun m!60569 () Bool)

(assert (=> b!66147 m!60569))

(assert (=> b!65845 d!13665))

(declare-fun d!13667 () Bool)

(declare-fun e!43393 () Bool)

(assert (=> d!13667 e!43393))

(declare-fun res!35842 () Bool)

(assert (=> d!13667 (=> (not res!35842) (not e!43393))))

(declare-fun lt!28402 () ListLongMap!1413)

(assert (=> d!13667 (= res!35842 (contains!713 lt!28402 (_1!1062 lt!28178)))))

(declare-fun lt!28401 () List!1486)

(assert (=> d!13667 (= lt!28402 (ListLongMap!1414 lt!28401))))

(declare-fun lt!28400 () Unit!1821)

(declare-fun lt!28403 () Unit!1821)

(assert (=> d!13667 (= lt!28400 lt!28403)))

(assert (=> d!13667 (= (getValueByKey!128 lt!28401 (_1!1062 lt!28178)) (Some!133 (_2!1062 lt!28178)))))

(declare-fun lemmaContainsTupThenGetReturnValue!47 (List!1486 (_ BitVec 64) V!2907) Unit!1821)

(assert (=> d!13667 (= lt!28403 (lemmaContainsTupThenGetReturnValue!47 lt!28401 (_1!1062 lt!28178) (_2!1062 lt!28178)))))

(declare-fun insertStrictlySorted!49 (List!1486 (_ BitVec 64) V!2907) List!1486)

(assert (=> d!13667 (= lt!28401 (insertStrictlySorted!49 (toList!722 lt!28179) (_1!1062 lt!28178) (_2!1062 lt!28178)))))

(assert (=> d!13667 (= (+!86 lt!28179 lt!28178) lt!28402)))

(declare-fun b!66152 () Bool)

(declare-fun res!35841 () Bool)

(assert (=> b!66152 (=> (not res!35841) (not e!43393))))

(assert (=> b!66152 (= res!35841 (= (getValueByKey!128 (toList!722 lt!28402) (_1!1062 lt!28178)) (Some!133 (_2!1062 lt!28178))))))

(declare-fun b!66153 () Bool)

(declare-fun contains!715 (List!1486 tuple2!2104) Bool)

(assert (=> b!66153 (= e!43393 (contains!715 (toList!722 lt!28402) lt!28178))))

(assert (= (and d!13667 res!35842) b!66152))

(assert (= (and b!66152 res!35841) b!66153))

(declare-fun m!60571 () Bool)

(assert (=> d!13667 m!60571))

(declare-fun m!60573 () Bool)

(assert (=> d!13667 m!60573))

(declare-fun m!60575 () Bool)

(assert (=> d!13667 m!60575))

(declare-fun m!60577 () Bool)

(assert (=> d!13667 m!60577))

(declare-fun m!60579 () Bool)

(assert (=> b!66152 m!60579))

(declare-fun m!60581 () Bool)

(assert (=> b!66153 m!60581))

(assert (=> b!65844 d!13667))

(declare-fun b!66178 () Bool)

(declare-fun e!43410 () ListLongMap!1413)

(declare-fun call!5468 () ListLongMap!1413)

(assert (=> b!66178 (= e!43410 call!5468)))

(declare-fun d!13669 () Bool)

(declare-fun e!43414 () Bool)

(assert (=> d!13669 e!43414))

(declare-fun res!35851 () Bool)

(assert (=> d!13669 (=> (not res!35851) (not e!43414))))

(declare-fun lt!28422 () ListLongMap!1413)

(assert (=> d!13669 (= res!35851 (not (contains!713 lt!28422 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!43413 () ListLongMap!1413)

(assert (=> d!13669 (= lt!28422 e!43413)))

(declare-fun c!9125 () Bool)

(assert (=> d!13669 (= c!9125 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))))))

(assert (=> d!13669 (validMask!0 (mask!6073 (v!2471 (underlying!249 thiss!992))))))

(assert (=> d!13669 (= (getCurrentListMapNoExtraKeys!50 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))) lt!28422)))

(declare-fun b!66179 () Bool)

(assert (=> b!66179 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))))))

(assert (=> b!66179 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2064 (_values!2124 (v!2471 (underlying!249 thiss!992))))))))

(declare-fun e!43408 () Bool)

(assert (=> b!66179 (= e!43408 (= (apply!71 lt!28422 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1122 (select (arr!1829 (_values!2124 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!323 (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!66180 () Bool)

(assert (=> b!66180 (= e!43413 e!43410)))

(declare-fun c!9123 () Bool)

(assert (=> b!66180 (= c!9123 (validKeyInArray!0 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!66181 () Bool)

(declare-fun e!43409 () Bool)

(assert (=> b!66181 (= e!43409 e!43408)))

(assert (=> b!66181 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))))))

(declare-fun res!35854 () Bool)

(assert (=> b!66181 (= res!35854 (contains!713 lt!28422 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!66181 (=> (not res!35854) (not e!43408))))

(declare-fun b!66182 () Bool)

(declare-fun lt!28419 () Unit!1821)

(declare-fun lt!28420 () Unit!1821)

(assert (=> b!66182 (= lt!28419 lt!28420)))

(declare-fun lt!28421 () ListLongMap!1413)

(declare-fun lt!28423 () V!2907)

(declare-fun lt!28424 () (_ BitVec 64))

(declare-fun lt!28418 () (_ BitVec 64))

(assert (=> b!66182 (not (contains!713 (+!86 lt!28421 (tuple2!2105 lt!28418 lt!28423)) lt!28424))))

(declare-fun addStillNotContains!22 (ListLongMap!1413 (_ BitVec 64) V!2907 (_ BitVec 64)) Unit!1821)

(assert (=> b!66182 (= lt!28420 (addStillNotContains!22 lt!28421 lt!28418 lt!28423 lt!28424))))

(assert (=> b!66182 (= lt!28424 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!66182 (= lt!28423 (get!1122 (select (arr!1829 (_values!2124 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!323 (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!66182 (= lt!28418 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!66182 (= lt!28421 call!5468)))

(assert (=> b!66182 (= e!43410 (+!86 call!5468 (tuple2!2105 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1122 (select (arr!1829 (_values!2124 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!323 (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!66183 () Bool)

(declare-fun res!35853 () Bool)

(assert (=> b!66183 (=> (not res!35853) (not e!43414))))

(assert (=> b!66183 (= res!35853 (not (contains!713 lt!28422 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!66184 () Bool)

(assert (=> b!66184 (= e!43413 (ListLongMap!1414 Nil!1483))))

(declare-fun bm!5465 () Bool)

(assert (=> bm!5465 (= call!5468 (getCurrentListMapNoExtraKeys!50 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992)))))))

(declare-fun b!66185 () Bool)

(declare-fun e!43411 () Bool)

(assert (=> b!66185 (= e!43409 e!43411)))

(declare-fun c!9124 () Bool)

(assert (=> b!66185 (= c!9124 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))))))

(declare-fun b!66186 () Bool)

(declare-fun isEmpty!311 (ListLongMap!1413) Bool)

(assert (=> b!66186 (= e!43411 (isEmpty!311 lt!28422))))

(declare-fun b!66187 () Bool)

(declare-fun e!43412 () Bool)

(assert (=> b!66187 (= e!43412 (validKeyInArray!0 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!66187 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!66188 () Bool)

(assert (=> b!66188 (= e!43411 (= lt!28422 (getCurrentListMapNoExtraKeys!50 (_keys!3781 (v!2471 (underlying!249 thiss!992))) (_values!2124 (v!2471 (underlying!249 thiss!992))) (mask!6073 (v!2471 (underlying!249 thiss!992))) (extraKeys!2012 (v!2471 (underlying!249 thiss!992))) (zeroValue!2049 (v!2471 (underlying!249 thiss!992))) (minValue!2049 (v!2471 (underlying!249 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))))))))

(declare-fun b!66189 () Bool)

(assert (=> b!66189 (= e!43414 e!43409)))

(declare-fun c!9126 () Bool)

(assert (=> b!66189 (= c!9126 e!43412)))

(declare-fun res!35852 () Bool)

(assert (=> b!66189 (=> (not res!35852) (not e!43412))))

(assert (=> b!66189 (= res!35852 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992))))))))

(assert (= (and d!13669 c!9125) b!66184))

(assert (= (and d!13669 (not c!9125)) b!66180))

(assert (= (and b!66180 c!9123) b!66182))

(assert (= (and b!66180 (not c!9123)) b!66178))

(assert (= (or b!66182 b!66178) bm!5465))

(assert (= (and d!13669 res!35851) b!66183))

(assert (= (and b!66183 res!35853) b!66189))

(assert (= (and b!66189 res!35852) b!66187))

(assert (= (and b!66189 c!9126) b!66181))

(assert (= (and b!66189 (not c!9126)) b!66185))

(assert (= (and b!66181 res!35854) b!66179))

(assert (= (and b!66185 c!9124) b!66188))

(assert (= (and b!66185 (not c!9124)) b!66186))

(declare-fun b_lambda!2965 () Bool)

(assert (=> (not b_lambda!2965) (not b!66179)))

(assert (=> b!66179 t!4957))

(declare-fun b_and!4077 () Bool)

(assert (= b_and!4073 (and (=> t!4957 result!2561) b_and!4077)))

(assert (=> b!66179 t!4959))

(declare-fun b_and!4079 () Bool)

(assert (= b_and!4075 (and (=> t!4959 result!2565) b_and!4079)))

(declare-fun b_lambda!2967 () Bool)

(assert (=> (not b_lambda!2967) (not b!66182)))

(assert (=> b!66182 t!4957))

(declare-fun b_and!4081 () Bool)

(assert (= b_and!4077 (and (=> t!4957 result!2561) b_and!4081)))

(assert (=> b!66182 t!4959))

(declare-fun b_and!4083 () Bool)

(assert (= b_and!4079 (and (=> t!4959 result!2565) b_and!4083)))

(declare-fun m!60583 () Bool)

(assert (=> d!13669 m!60583))

(assert (=> d!13669 m!60337))

(declare-fun m!60585 () Bool)

(assert (=> b!66188 m!60585))

(assert (=> b!66182 m!60373))

(assert (=> b!66182 m!60547))

(assert (=> b!66182 m!60503))

(declare-fun m!60587 () Bool)

(assert (=> b!66182 m!60587))

(declare-fun m!60589 () Bool)

(assert (=> b!66182 m!60589))

(declare-fun m!60591 () Bool)

(assert (=> b!66182 m!60591))

(assert (=> b!66182 m!60547))

(assert (=> b!66182 m!60373))

(assert (=> b!66182 m!60549))

(assert (=> b!66182 m!60589))

(declare-fun m!60593 () Bool)

(assert (=> b!66182 m!60593))

(assert (=> b!66187 m!60503))

(assert (=> b!66187 m!60503))

(assert (=> b!66187 m!60505))

(assert (=> b!66180 m!60503))

(assert (=> b!66180 m!60503))

(assert (=> b!66180 m!60505))

(declare-fun m!60595 () Bool)

(assert (=> b!66183 m!60595))

(assert (=> bm!5465 m!60585))

(assert (=> b!66179 m!60373))

(assert (=> b!66179 m!60547))

(assert (=> b!66179 m!60503))

(assert (=> b!66179 m!60503))

(declare-fun m!60597 () Bool)

(assert (=> b!66179 m!60597))

(assert (=> b!66179 m!60547))

(assert (=> b!66179 m!60373))

(assert (=> b!66179 m!60549))

(declare-fun m!60599 () Bool)

(assert (=> b!66186 m!60599))

(assert (=> b!66181 m!60503))

(assert (=> b!66181 m!60503))

(declare-fun m!60601 () Bool)

(assert (=> b!66181 m!60601))

(assert (=> b!65844 d!13669))

(declare-fun d!13671 () Bool)

(declare-fun e!43415 () Bool)

(assert (=> d!13671 e!43415))

(declare-fun res!35856 () Bool)

(assert (=> d!13671 (=> (not res!35856) (not e!43415))))

(declare-fun lt!28427 () ListLongMap!1413)

(assert (=> d!13671 (= res!35856 (contains!713 lt!28427 (_1!1062 lt!28180)))))

(declare-fun lt!28426 () List!1486)

(assert (=> d!13671 (= lt!28427 (ListLongMap!1414 lt!28426))))

(declare-fun lt!28425 () Unit!1821)

(declare-fun lt!28428 () Unit!1821)

(assert (=> d!13671 (= lt!28425 lt!28428)))

(assert (=> d!13671 (= (getValueByKey!128 lt!28426 (_1!1062 lt!28180)) (Some!133 (_2!1062 lt!28180)))))

(assert (=> d!13671 (= lt!28428 (lemmaContainsTupThenGetReturnValue!47 lt!28426 (_1!1062 lt!28180) (_2!1062 lt!28180)))))

(assert (=> d!13671 (= lt!28426 (insertStrictlySorted!49 (toList!722 lt!28179) (_1!1062 lt!28180) (_2!1062 lt!28180)))))

(assert (=> d!13671 (= (+!86 lt!28179 lt!28180) lt!28427)))

(declare-fun b!66190 () Bool)

(declare-fun res!35855 () Bool)

(assert (=> b!66190 (=> (not res!35855) (not e!43415))))

(assert (=> b!66190 (= res!35855 (= (getValueByKey!128 (toList!722 lt!28427) (_1!1062 lt!28180)) (Some!133 (_2!1062 lt!28180))))))

(declare-fun b!66191 () Bool)

(assert (=> b!66191 (= e!43415 (contains!715 (toList!722 lt!28427) lt!28180))))

(assert (= (and d!13671 res!35856) b!66190))

(assert (= (and b!66190 res!35855) b!66191))

(declare-fun m!60603 () Bool)

(assert (=> d!13671 m!60603))

(declare-fun m!60605 () Bool)

(assert (=> d!13671 m!60605))

(declare-fun m!60607 () Bool)

(assert (=> d!13671 m!60607))

(declare-fun m!60609 () Bool)

(assert (=> d!13671 m!60609))

(declare-fun m!60611 () Bool)

(assert (=> b!66190 m!60611))

(declare-fun m!60613 () Bool)

(assert (=> b!66191 m!60613))

(assert (=> b!65844 d!13671))

(declare-fun d!13673 () Bool)

(assert (=> d!13673 (= (+!86 (+!86 lt!28179 (tuple2!2105 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) lt!28185)) (tuple2!2105 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2049 (v!2471 (underlying!249 thiss!992))))) (+!86 (+!86 lt!28179 (tuple2!2105 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2049 (v!2471 (underlying!249 thiss!992))))) (tuple2!2105 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) lt!28185)))))

(declare-fun lt!28431 () Unit!1821)

(declare-fun choose!372 (ListLongMap!1413 (_ BitVec 64) V!2907 (_ BitVec 64) V!2907) Unit!1821)

(assert (=> d!13673 (= lt!28431 (choose!372 lt!28179 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) lt!28185 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2049 (v!2471 (underlying!249 thiss!992)))))))

(assert (=> d!13673 (not (= (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!13673 (= (addCommutativeForDiffKeys!5 lt!28179 (select (arr!1828 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) from!355) lt!28185 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2049 (v!2471 (underlying!249 thiss!992)))) lt!28431)))

(declare-fun bs!2837 () Bool)

(assert (= bs!2837 d!13673))

(declare-fun m!60615 () Bool)

(assert (=> bs!2837 m!60615))

(assert (=> bs!2837 m!60329))

(declare-fun m!60617 () Bool)

(assert (=> bs!2837 m!60617))

(declare-fun m!60619 () Bool)

(assert (=> bs!2837 m!60619))

(assert (=> bs!2837 m!60615))

(declare-fun m!60621 () Bool)

(assert (=> bs!2837 m!60621))

(assert (=> bs!2837 m!60619))

(declare-fun m!60623 () Bool)

(assert (=> bs!2837 m!60623))

(assert (=> b!65844 d!13673))

(declare-fun d!13675 () Bool)

(declare-fun e!43416 () Bool)

(assert (=> d!13675 e!43416))

(declare-fun res!35858 () Bool)

(assert (=> d!13675 (=> (not res!35858) (not e!43416))))

(declare-fun lt!28434 () ListLongMap!1413)

(assert (=> d!13675 (= res!35858 (contains!713 lt!28434 (_1!1062 lt!28180)))))

(declare-fun lt!28433 () List!1486)

(assert (=> d!13675 (= lt!28434 (ListLongMap!1414 lt!28433))))

(declare-fun lt!28432 () Unit!1821)

(declare-fun lt!28435 () Unit!1821)

(assert (=> d!13675 (= lt!28432 lt!28435)))

(assert (=> d!13675 (= (getValueByKey!128 lt!28433 (_1!1062 lt!28180)) (Some!133 (_2!1062 lt!28180)))))

(assert (=> d!13675 (= lt!28435 (lemmaContainsTupThenGetReturnValue!47 lt!28433 (_1!1062 lt!28180) (_2!1062 lt!28180)))))

(assert (=> d!13675 (= lt!28433 (insertStrictlySorted!49 (toList!722 (+!86 lt!28179 lt!28178)) (_1!1062 lt!28180) (_2!1062 lt!28180)))))

(assert (=> d!13675 (= (+!86 (+!86 lt!28179 lt!28178) lt!28180) lt!28434)))

(declare-fun b!66192 () Bool)

(declare-fun res!35857 () Bool)

(assert (=> b!66192 (=> (not res!35857) (not e!43416))))

(assert (=> b!66192 (= res!35857 (= (getValueByKey!128 (toList!722 lt!28434) (_1!1062 lt!28180)) (Some!133 (_2!1062 lt!28180))))))

(declare-fun b!66193 () Bool)

(assert (=> b!66193 (= e!43416 (contains!715 (toList!722 lt!28434) lt!28180))))

(assert (= (and d!13675 res!35858) b!66192))

(assert (= (and b!66192 res!35857) b!66193))

(declare-fun m!60625 () Bool)

(assert (=> d!13675 m!60625))

(declare-fun m!60627 () Bool)

(assert (=> d!13675 m!60627))

(declare-fun m!60629 () Bool)

(assert (=> d!13675 m!60629))

(declare-fun m!60631 () Bool)

(assert (=> d!13675 m!60631))

(declare-fun m!60633 () Bool)

(assert (=> b!66192 m!60633))

(declare-fun m!60635 () Bool)

(assert (=> b!66193 m!60635))

(assert (=> b!65844 d!13675))

(declare-fun d!13677 () Bool)

(assert (=> d!13677 (= (validMask!0 (mask!6073 (v!2471 (underlying!249 thiss!992)))) (and (or (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000000111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000001111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000011111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000000111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000001111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000011111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000000111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000001111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000011111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000000111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000001111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000011111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000000111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000001111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000011111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000000111111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000001111111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000011111111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000000111111111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000001111111111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000011111111111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000000111111111111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000001111111111111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000011111111111111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00000111111111111111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00001111111111111111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00011111111111111111111111111111) (= (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6073 (v!2471 (underlying!249 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!65844 d!13677))

(declare-fun d!13679 () Bool)

(declare-fun e!43417 () Bool)

(assert (=> d!13679 e!43417))

(declare-fun res!35860 () Bool)

(assert (=> d!13679 (=> (not res!35860) (not e!43417))))

(declare-fun lt!28438 () ListLongMap!1413)

(assert (=> d!13679 (= res!35860 (contains!713 lt!28438 (_1!1062 lt!28178)))))

(declare-fun lt!28437 () List!1486)

(assert (=> d!13679 (= lt!28438 (ListLongMap!1414 lt!28437))))

(declare-fun lt!28436 () Unit!1821)

(declare-fun lt!28439 () Unit!1821)

(assert (=> d!13679 (= lt!28436 lt!28439)))

(assert (=> d!13679 (= (getValueByKey!128 lt!28437 (_1!1062 lt!28178)) (Some!133 (_2!1062 lt!28178)))))

(assert (=> d!13679 (= lt!28439 (lemmaContainsTupThenGetReturnValue!47 lt!28437 (_1!1062 lt!28178) (_2!1062 lt!28178)))))

(assert (=> d!13679 (= lt!28437 (insertStrictlySorted!49 (toList!722 (+!86 lt!28179 lt!28180)) (_1!1062 lt!28178) (_2!1062 lt!28178)))))

(assert (=> d!13679 (= (+!86 (+!86 lt!28179 lt!28180) lt!28178) lt!28438)))

(declare-fun b!66194 () Bool)

(declare-fun res!35859 () Bool)

(assert (=> b!66194 (=> (not res!35859) (not e!43417))))

(assert (=> b!66194 (= res!35859 (= (getValueByKey!128 (toList!722 lt!28438) (_1!1062 lt!28178)) (Some!133 (_2!1062 lt!28178))))))

(declare-fun b!66195 () Bool)

(assert (=> b!66195 (= e!43417 (contains!715 (toList!722 lt!28438) lt!28178))))

(assert (= (and d!13679 res!35860) b!66194))

(assert (= (and b!66194 res!35859) b!66195))

(declare-fun m!60637 () Bool)

(assert (=> d!13679 m!60637))

(declare-fun m!60639 () Bool)

(assert (=> d!13679 m!60639))

(declare-fun m!60641 () Bool)

(assert (=> d!13679 m!60641))

(declare-fun m!60643 () Bool)

(assert (=> d!13679 m!60643))

(declare-fun m!60645 () Bool)

(assert (=> b!66194 m!60645))

(declare-fun m!60647 () Bool)

(assert (=> b!66195 m!60647))

(assert (=> b!65844 d!13679))

(declare-fun d!13681 () Bool)

(assert (=> d!13681 (= (array_inv!1085 (_keys!3781 newMap!16)) (bvsge (size!2063 (_keys!3781 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!65857 d!13681))

(declare-fun d!13683 () Bool)

(assert (=> d!13683 (= (array_inv!1086 (_values!2124 newMap!16)) (bvsge (size!2064 (_values!2124 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!65857 d!13683))

(declare-fun d!13685 () Bool)

(assert (=> d!13685 (= (array_inv!1085 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) (bvsge (size!2063 (_keys!3781 (v!2471 (underlying!249 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!65852 d!13685))

(declare-fun d!13687 () Bool)

(assert (=> d!13687 (= (array_inv!1086 (_values!2124 (v!2471 (underlying!249 thiss!992)))) (bvsge (size!2064 (_values!2124 (v!2471 (underlying!249 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!65852 d!13687))

(declare-fun d!13689 () Bool)

(declare-fun res!35867 () Bool)

(declare-fun e!43420 () Bool)

(assert (=> d!13689 (=> (not res!35867) (not e!43420))))

(declare-fun simpleValid!46 (LongMapFixedSize!666) Bool)

(assert (=> d!13689 (= res!35867 (simpleValid!46 newMap!16))))

(assert (=> d!13689 (= (valid!276 newMap!16) e!43420)))

(declare-fun b!66202 () Bool)

(declare-fun res!35868 () Bool)

(assert (=> b!66202 (=> (not res!35868) (not e!43420))))

(declare-fun arrayCountValidKeys!0 (array!3826 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!66202 (= res!35868 (= (arrayCountValidKeys!0 (_keys!3781 newMap!16) #b00000000000000000000000000000000 (size!2063 (_keys!3781 newMap!16))) (_size!382 newMap!16)))))

(declare-fun b!66203 () Bool)

(declare-fun res!35869 () Bool)

(assert (=> b!66203 (=> (not res!35869) (not e!43420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3826 (_ BitVec 32)) Bool)

(assert (=> b!66203 (= res!35869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3781 newMap!16) (mask!6073 newMap!16)))))

(declare-fun b!66204 () Bool)

(assert (=> b!66204 (= e!43420 (arrayNoDuplicates!0 (_keys!3781 newMap!16) #b00000000000000000000000000000000 Nil!1484))))

(assert (= (and d!13689 res!35867) b!66202))

(assert (= (and b!66202 res!35868) b!66203))

(assert (= (and b!66203 res!35869) b!66204))

(declare-fun m!60649 () Bool)

(assert (=> d!13689 m!60649))

(declare-fun m!60651 () Bool)

(assert (=> b!66202 m!60651))

(declare-fun m!60653 () Bool)

(assert (=> b!66203 m!60653))

(declare-fun m!60655 () Bool)

(assert (=> b!66204 m!60655))

(assert (=> b!65856 d!13689))

(declare-fun d!13691 () Bool)

(assert (=> d!13691 (= (valid!275 thiss!992) (valid!276 (v!2471 (underlying!249 thiss!992))))))

(declare-fun bs!2838 () Bool)

(assert (= bs!2838 d!13691))

(declare-fun m!60657 () Bool)

(assert (=> bs!2838 m!60657))

(assert (=> start!9232 d!13691))

(declare-fun mapIsEmpty!3063 () Bool)

(declare-fun mapRes!3063 () Bool)

(assert (=> mapIsEmpty!3063 mapRes!3063))

(declare-fun mapNonEmpty!3063 () Bool)

(declare-fun tp!8337 () Bool)

(declare-fun e!43426 () Bool)

(assert (=> mapNonEmpty!3063 (= mapRes!3063 (and tp!8337 e!43426))))

(declare-fun mapValue!3063 () ValueCell!879)

(declare-fun mapRest!3063 () (Array (_ BitVec 32) ValueCell!879))

(declare-fun mapKey!3063 () (_ BitVec 32))

(assert (=> mapNonEmpty!3063 (= mapRest!3053 (store mapRest!3063 mapKey!3063 mapValue!3063))))

(declare-fun b!66212 () Bool)

(declare-fun e!43425 () Bool)

(assert (=> b!66212 (= e!43425 tp_is_empty!2445)))

(declare-fun b!66211 () Bool)

(assert (=> b!66211 (= e!43426 tp_is_empty!2445)))

(declare-fun condMapEmpty!3063 () Bool)

(declare-fun mapDefault!3063 () ValueCell!879)

(assert (=> mapNonEmpty!3053 (= condMapEmpty!3063 (= mapRest!3053 ((as const (Array (_ BitVec 32) ValueCell!879)) mapDefault!3063)))))

(assert (=> mapNonEmpty!3053 (= tp!8320 (and e!43425 mapRes!3063))))

(assert (= (and mapNonEmpty!3053 condMapEmpty!3063) mapIsEmpty!3063))

(assert (= (and mapNonEmpty!3053 (not condMapEmpty!3063)) mapNonEmpty!3063))

(assert (= (and mapNonEmpty!3063 ((_ is ValueCellFull!879) mapValue!3063)) b!66211))

(assert (= (and mapNonEmpty!3053 ((_ is ValueCellFull!879) mapDefault!3063)) b!66212))

(declare-fun m!60659 () Bool)

(assert (=> mapNonEmpty!3063 m!60659))

(declare-fun mapIsEmpty!3064 () Bool)

(declare-fun mapRes!3064 () Bool)

(assert (=> mapIsEmpty!3064 mapRes!3064))

(declare-fun mapNonEmpty!3064 () Bool)

(declare-fun tp!8338 () Bool)

(declare-fun e!43428 () Bool)

(assert (=> mapNonEmpty!3064 (= mapRes!3064 (and tp!8338 e!43428))))

(declare-fun mapRest!3064 () (Array (_ BitVec 32) ValueCell!879))

(declare-fun mapKey!3064 () (_ BitVec 32))

(declare-fun mapValue!3064 () ValueCell!879)

(assert (=> mapNonEmpty!3064 (= mapRest!3054 (store mapRest!3064 mapKey!3064 mapValue!3064))))

(declare-fun b!66214 () Bool)

(declare-fun e!43427 () Bool)

(assert (=> b!66214 (= e!43427 tp_is_empty!2445)))

(declare-fun b!66213 () Bool)

(assert (=> b!66213 (= e!43428 tp_is_empty!2445)))

(declare-fun condMapEmpty!3064 () Bool)

(declare-fun mapDefault!3064 () ValueCell!879)

(assert (=> mapNonEmpty!3054 (= condMapEmpty!3064 (= mapRest!3054 ((as const (Array (_ BitVec 32) ValueCell!879)) mapDefault!3064)))))

(assert (=> mapNonEmpty!3054 (= tp!8322 (and e!43427 mapRes!3064))))

(assert (= (and mapNonEmpty!3054 condMapEmpty!3064) mapIsEmpty!3064))

(assert (= (and mapNonEmpty!3054 (not condMapEmpty!3064)) mapNonEmpty!3064))

(assert (= (and mapNonEmpty!3064 ((_ is ValueCellFull!879) mapValue!3064)) b!66213))

(assert (= (and mapNonEmpty!3054 ((_ is ValueCellFull!879) mapDefault!3064)) b!66214))

(declare-fun m!60661 () Bool)

(assert (=> mapNonEmpty!3064 m!60661))

(declare-fun b_lambda!2969 () Bool)

(assert (= b_lambda!2963 (or (and b!65852 b_free!2057) (and b!65857 b_free!2059 (= (defaultEntry!2141 newMap!16) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))))) b_lambda!2969)))

(declare-fun b_lambda!2971 () Bool)

(assert (= b_lambda!2967 (or (and b!65852 b_free!2057) (and b!65857 b_free!2059 (= (defaultEntry!2141 newMap!16) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))))) b_lambda!2971)))

(declare-fun b_lambda!2973 () Bool)

(assert (= b_lambda!2965 (or (and b!65852 b_free!2057) (and b!65857 b_free!2059 (= (defaultEntry!2141 newMap!16) (defaultEntry!2141 (v!2471 (underlying!249 thiss!992))))) b_lambda!2973)))

(check-sat (not bm!5415) (not b!66179) (not b_lambda!2961) (not b!66180) (not bm!5425) (not d!13675) (not b!66047) (not b!66188) (not bm!5455) (not bm!5457) (not d!13679) (not bm!5428) (not b!66014) (not b!66098) (not b!66193) (not mapNonEmpty!3064) (not b!66016) (not bm!5421) (not b!66187) (not b!66183) (not b!66099) (not d!13651) (not b!65929) (not b!66186) (not bm!5420) (not b!66203) (not bm!5438) (not b!66100) (not d!13671) (not b!66182) (not mapNonEmpty!3063) (not b!66101) (not b!66181) (not bm!5430) (not bm!5462) (not b!66191) (not b!66152) (not bm!5465) b_and!4081 (not d!13649) (not b!66034) tp_is_empty!2445 (not d!13673) b_and!4083 (not d!13667) (not b!66040) (not bm!5431) (not d!13661) (not b_next!2057) (not bm!5419) (not b!66027) (not b!66153) (not b!65931) (not d!13669) (not b!66140) (not d!13655) (not b!66138) (not d!13689) (not b!66190) (not b!66125) (not b!66204) (not d!13647) (not b!66107) (not b!66194) (not b!66147) (not bm!5424) (not b!66096) (not b_lambda!2969) (not bm!5416) (not d!13691) (not d!13653) (not b!66195) (not b!66137) (not b!66110) (not bm!5456) (not d!13657) (not bm!5453) (not b!66146) (not b_lambda!2971) (not b_lambda!2973) (not b!66120) (not b!66202) (not bm!5433) (not b!66192) (not b!66041) (not b!66094) (not b_next!2059))
(check-sat b_and!4081 b_and!4083 (not b_next!2057) (not b_next!2059))
