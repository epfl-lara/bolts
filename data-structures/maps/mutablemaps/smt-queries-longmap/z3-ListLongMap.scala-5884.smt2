; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75864 () Bool)

(assert start!75864)

(declare-fun b!892123 () Bool)

(declare-fun b_free!15807 () Bool)

(declare-fun b_next!15807 () Bool)

(assert (=> b!892123 (= b_free!15807 (not b_next!15807))))

(declare-fun tp!55391 () Bool)

(declare-fun b_and!26065 () Bool)

(assert (=> b!892123 (= tp!55391 b_and!26065)))

(declare-fun mapIsEmpty!28757 () Bool)

(declare-fun mapRes!28757 () Bool)

(assert (=> mapIsEmpty!28757 mapRes!28757))

(declare-fun b!892117 () Bool)

(declare-fun res!604533 () Bool)

(declare-fun e!498000 () Bool)

(assert (=> b!892117 (=> res!604533 e!498000)))

(declare-datatypes ((array!52236 0))(
  ( (array!52237 (arr!25120 (Array (_ BitVec 32) (_ BitVec 64))) (size!25565 (_ BitVec 32))) )
))
(declare-datatypes ((V!29145 0))(
  ( (V!29146 (val!9118 Int)) )
))
(declare-datatypes ((ValueCell!8586 0))(
  ( (ValueCellFull!8586 (v!11590 V!29145)) (EmptyCell!8586) )
))
(declare-datatypes ((array!52238 0))(
  ( (array!52239 (arr!25121 (Array (_ BitVec 32) ValueCell!8586)) (size!25566 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4188 0))(
  ( (LongMapFixedSize!4189 (defaultEntry!5291 Int) (mask!25793 (_ BitVec 32)) (extraKeys!4985 (_ BitVec 32)) (zeroValue!5089 V!29145) (minValue!5089 V!29145) (_size!2149 (_ BitVec 32)) (_keys!9970 array!52236) (_values!5276 array!52238) (_vacant!2149 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4188)

(declare-datatypes ((List!17858 0))(
  ( (Nil!17855) (Cons!17854 (h!18985 (_ BitVec 64)) (t!25165 List!17858)) )
))
(declare-fun arrayNoDuplicates!0 (array!52236 (_ BitVec 32) List!17858) Bool)

(assert (=> b!892117 (= res!604533 (not (arrayNoDuplicates!0 (_keys!9970 thiss!1181) #b00000000000000000000000000000000 Nil!17855)))))

(declare-fun b!892118 () Bool)

(assert (=> b!892118 (= e!498000 true)))

(declare-fun lt!403050 () Bool)

(declare-datatypes ((tuple2!12008 0))(
  ( (tuple2!12009 (_1!6014 (_ BitVec 64)) (_2!6014 V!29145)) )
))
(declare-datatypes ((List!17859 0))(
  ( (Nil!17856) (Cons!17855 (h!18986 tuple2!12008) (t!25166 List!17859)) )
))
(declare-datatypes ((ListLongMap!10719 0))(
  ( (ListLongMap!10720 (toList!5375 List!17859)) )
))
(declare-fun lt!403048 () ListLongMap!10719)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4352 (ListLongMap!10719 (_ BitVec 64)) Bool)

(assert (=> b!892118 (= lt!403050 (contains!4352 lt!403048 key!785))))

(declare-fun b!892119 () Bool)

(declare-fun e!498002 () Bool)

(assert (=> b!892119 (= e!498002 e!498000)))

(declare-fun res!604529 () Bool)

(assert (=> b!892119 (=> res!604529 e!498000)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!892119 (= res!604529 (not (validMask!0 (mask!25793 thiss!1181))))))

(declare-datatypes ((SeekEntryResult!8836 0))(
  ( (MissingZero!8836 (index!37714 (_ BitVec 32))) (Found!8836 (index!37715 (_ BitVec 32))) (Intermediate!8836 (undefined!9648 Bool) (index!37716 (_ BitVec 32)) (x!75813 (_ BitVec 32))) (Undefined!8836) (MissingVacant!8836 (index!37717 (_ BitVec 32))) )
))
(declare-fun lt!403051 () SeekEntryResult!8836)

(assert (=> b!892119 (contains!4352 lt!403048 (select (arr!25120 (_keys!9970 thiss!1181)) (index!37715 lt!403051)))))

(declare-fun getCurrentListMap!2626 (array!52236 array!52238 (_ BitVec 32) (_ BitVec 32) V!29145 V!29145 (_ BitVec 32) Int) ListLongMap!10719)

(assert (=> b!892119 (= lt!403048 (getCurrentListMap!2626 (_keys!9970 thiss!1181) (_values!5276 thiss!1181) (mask!25793 thiss!1181) (extraKeys!4985 thiss!1181) (zeroValue!5089 thiss!1181) (minValue!5089 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5291 thiss!1181)))))

(declare-datatypes ((Unit!30353 0))(
  ( (Unit!30354) )
))
(declare-fun lt!403052 () Unit!30353)

(declare-fun lemmaValidKeyInArrayIsInListMap!219 (array!52236 array!52238 (_ BitVec 32) (_ BitVec 32) V!29145 V!29145 (_ BitVec 32) Int) Unit!30353)

(assert (=> b!892119 (= lt!403052 (lemmaValidKeyInArrayIsInListMap!219 (_keys!9970 thiss!1181) (_values!5276 thiss!1181) (mask!25793 thiss!1181) (extraKeys!4985 thiss!1181) (zeroValue!5089 thiss!1181) (minValue!5089 thiss!1181) (index!37715 lt!403051) (defaultEntry!5291 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52236 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!892119 (arrayContainsKey!0 (_keys!9970 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403053 () Unit!30353)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52236 (_ BitVec 64) (_ BitVec 32)) Unit!30353)

(assert (=> b!892119 (= lt!403053 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9970 thiss!1181) key!785 (index!37715 lt!403051)))))

(declare-fun b!892120 () Bool)

(declare-fun e!498005 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892120 (= e!498005 (inRange!0 (index!37715 lt!403051) (mask!25793 thiss!1181)))))

(declare-fun b!892121 () Bool)

(declare-fun res!604531 () Bool)

(assert (=> b!892121 (=> res!604531 e!498000)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52236 (_ BitVec 32)) Bool)

(assert (=> b!892121 (= res!604531 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9970 thiss!1181) (mask!25793 thiss!1181))))))

(declare-fun b!892122 () Bool)

(declare-fun e!498007 () Bool)

(assert (=> b!892122 (= e!498007 (not e!498002))))

(declare-fun res!604535 () Bool)

(assert (=> b!892122 (=> res!604535 e!498002)))

(get-info :version)

(assert (=> b!892122 (= res!604535 (not ((_ is Found!8836) lt!403051)))))

(assert (=> b!892122 e!498005))

(declare-fun res!604532 () Bool)

(assert (=> b!892122 (=> res!604532 e!498005)))

(assert (=> b!892122 (= res!604532 (not ((_ is Found!8836) lt!403051)))))

(declare-fun lt!403049 () Unit!30353)

(declare-fun lemmaSeekEntryGivesInRangeIndex!51 (array!52236 array!52238 (_ BitVec 32) (_ BitVec 32) V!29145 V!29145 (_ BitVec 64)) Unit!30353)

(assert (=> b!892122 (= lt!403049 (lemmaSeekEntryGivesInRangeIndex!51 (_keys!9970 thiss!1181) (_values!5276 thiss!1181) (mask!25793 thiss!1181) (extraKeys!4985 thiss!1181) (zeroValue!5089 thiss!1181) (minValue!5089 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52236 (_ BitVec 32)) SeekEntryResult!8836)

(assert (=> b!892122 (= lt!403051 (seekEntry!0 key!785 (_keys!9970 thiss!1181) (mask!25793 thiss!1181)))))

(declare-fun e!498008 () Bool)

(declare-fun e!498004 () Bool)

(declare-fun tp_is_empty!18135 () Bool)

(declare-fun array_inv!19706 (array!52236) Bool)

(declare-fun array_inv!19707 (array!52238) Bool)

(assert (=> b!892123 (= e!498008 (and tp!55391 tp_is_empty!18135 (array_inv!19706 (_keys!9970 thiss!1181)) (array_inv!19707 (_values!5276 thiss!1181)) e!498004))))

(declare-fun res!604536 () Bool)

(assert (=> start!75864 (=> (not res!604536) (not e!498007))))

(declare-fun valid!1607 (LongMapFixedSize!4188) Bool)

(assert (=> start!75864 (= res!604536 (valid!1607 thiss!1181))))

(assert (=> start!75864 e!498007))

(assert (=> start!75864 e!498008))

(assert (=> start!75864 true))

(declare-fun b!892124 () Bool)

(declare-fun res!604530 () Bool)

(assert (=> b!892124 (=> (not res!604530) (not e!498007))))

(assert (=> b!892124 (= res!604530 (not (= key!785 (bvneg key!785))))))

(declare-fun b!892125 () Bool)

(declare-fun e!498006 () Bool)

(assert (=> b!892125 (= e!498006 tp_is_empty!18135)))

(declare-fun b!892126 () Bool)

(declare-fun e!498001 () Bool)

(assert (=> b!892126 (= e!498004 (and e!498001 mapRes!28757))))

(declare-fun condMapEmpty!28757 () Bool)

(declare-fun mapDefault!28757 () ValueCell!8586)

(assert (=> b!892126 (= condMapEmpty!28757 (= (arr!25121 (_values!5276 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8586)) mapDefault!28757)))))

(declare-fun b!892127 () Bool)

(assert (=> b!892127 (= e!498001 tp_is_empty!18135)))

(declare-fun b!892128 () Bool)

(declare-fun res!604534 () Bool)

(assert (=> b!892128 (=> res!604534 e!498000)))

(assert (=> b!892128 (= res!604534 (or (not (= (size!25566 (_values!5276 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25793 thiss!1181)))) (not (= (size!25565 (_keys!9970 thiss!1181)) (size!25566 (_values!5276 thiss!1181)))) (bvslt (mask!25793 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4985 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4985 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!28757 () Bool)

(declare-fun tp!55390 () Bool)

(assert (=> mapNonEmpty!28757 (= mapRes!28757 (and tp!55390 e!498006))))

(declare-fun mapKey!28757 () (_ BitVec 32))

(declare-fun mapValue!28757 () ValueCell!8586)

(declare-fun mapRest!28757 () (Array (_ BitVec 32) ValueCell!8586))

(assert (=> mapNonEmpty!28757 (= (arr!25121 (_values!5276 thiss!1181)) (store mapRest!28757 mapKey!28757 mapValue!28757))))

(assert (= (and start!75864 res!604536) b!892124))

(assert (= (and b!892124 res!604530) b!892122))

(assert (= (and b!892122 (not res!604532)) b!892120))

(assert (= (and b!892122 (not res!604535)) b!892119))

(assert (= (and b!892119 (not res!604529)) b!892128))

(assert (= (and b!892128 (not res!604534)) b!892121))

(assert (= (and b!892121 (not res!604531)) b!892117))

(assert (= (and b!892117 (not res!604533)) b!892118))

(assert (= (and b!892126 condMapEmpty!28757) mapIsEmpty!28757))

(assert (= (and b!892126 (not condMapEmpty!28757)) mapNonEmpty!28757))

(assert (= (and mapNonEmpty!28757 ((_ is ValueCellFull!8586) mapValue!28757)) b!892125))

(assert (= (and b!892126 ((_ is ValueCellFull!8586) mapDefault!28757)) b!892127))

(assert (= b!892123 b!892126))

(assert (= start!75864 b!892123))

(declare-fun m!830489 () Bool)

(assert (=> start!75864 m!830489))

(declare-fun m!830491 () Bool)

(assert (=> b!892121 m!830491))

(declare-fun m!830493 () Bool)

(assert (=> b!892119 m!830493))

(declare-fun m!830495 () Bool)

(assert (=> b!892119 m!830495))

(declare-fun m!830497 () Bool)

(assert (=> b!892119 m!830497))

(declare-fun m!830499 () Bool)

(assert (=> b!892119 m!830499))

(assert (=> b!892119 m!830493))

(declare-fun m!830501 () Bool)

(assert (=> b!892119 m!830501))

(declare-fun m!830503 () Bool)

(assert (=> b!892119 m!830503))

(declare-fun m!830505 () Bool)

(assert (=> b!892119 m!830505))

(declare-fun m!830507 () Bool)

(assert (=> mapNonEmpty!28757 m!830507))

(declare-fun m!830509 () Bool)

(assert (=> b!892118 m!830509))

(declare-fun m!830511 () Bool)

(assert (=> b!892117 m!830511))

(declare-fun m!830513 () Bool)

(assert (=> b!892123 m!830513))

(declare-fun m!830515 () Bool)

(assert (=> b!892123 m!830515))

(declare-fun m!830517 () Bool)

(assert (=> b!892120 m!830517))

(declare-fun m!830519 () Bool)

(assert (=> b!892122 m!830519))

(declare-fun m!830521 () Bool)

(assert (=> b!892122 m!830521))

(check-sat (not b!892117) b_and!26065 (not b!892123) (not start!75864) (not b_next!15807) (not b!892119) tp_is_empty!18135 (not b!892121) (not mapNonEmpty!28757) (not b!892120) (not b!892122) (not b!892118))
(check-sat b_and!26065 (not b_next!15807))
