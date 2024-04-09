; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75858 () Bool)

(assert start!75858)

(declare-fun b!892017 () Bool)

(declare-fun b_free!15801 () Bool)

(declare-fun b_next!15801 () Bool)

(assert (=> b!892017 (= b_free!15801 (not b_next!15801))))

(declare-fun tp!55372 () Bool)

(declare-fun b_and!26059 () Bool)

(assert (=> b!892017 (= tp!55372 b_and!26059)))

(declare-fun b!892009 () Bool)

(declare-fun e!497924 () Bool)

(declare-fun tp_is_empty!18129 () Bool)

(assert (=> b!892009 (= e!497924 tp_is_empty!18129)))

(declare-fun b!892010 () Bool)

(declare-fun e!497927 () Bool)

(assert (=> b!892010 (= e!497927 tp_is_empty!18129)))

(declare-fun b!892011 () Bool)

(declare-fun e!497919 () Bool)

(declare-datatypes ((SeekEntryResult!8833 0))(
  ( (MissingZero!8833 (index!37702 (_ BitVec 32))) (Found!8833 (index!37703 (_ BitVec 32))) (Intermediate!8833 (undefined!9645 Bool) (index!37704 (_ BitVec 32)) (x!75802 (_ BitVec 32))) (Undefined!8833) (MissingVacant!8833 (index!37705 (_ BitVec 32))) )
))
(declare-fun lt!402994 () SeekEntryResult!8833)

(declare-datatypes ((array!52224 0))(
  ( (array!52225 (arr!25114 (Array (_ BitVec 32) (_ BitVec 64))) (size!25559 (_ BitVec 32))) )
))
(declare-datatypes ((V!29137 0))(
  ( (V!29138 (val!9115 Int)) )
))
(declare-datatypes ((ValueCell!8583 0))(
  ( (ValueCellFull!8583 (v!11587 V!29137)) (EmptyCell!8583) )
))
(declare-datatypes ((array!52226 0))(
  ( (array!52227 (arr!25115 (Array (_ BitVec 32) ValueCell!8583)) (size!25560 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4182 0))(
  ( (LongMapFixedSize!4183 (defaultEntry!5288 Int) (mask!25788 (_ BitVec 32)) (extraKeys!4982 (_ BitVec 32)) (zeroValue!5086 V!29137) (minValue!5086 V!29137) (_size!2146 (_ BitVec 32)) (_keys!9967 array!52224) (_values!5273 array!52226) (_vacant!2146 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4182)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892011 (= e!497919 (inRange!0 (index!37703 lt!402994) (mask!25788 thiss!1181)))))

(declare-fun b!892012 () Bool)

(declare-fun res!604457 () Bool)

(declare-fun e!497926 () Bool)

(assert (=> b!892012 (=> res!604457 e!497926)))

(declare-datatypes ((List!17852 0))(
  ( (Nil!17849) (Cons!17848 (h!18979 (_ BitVec 64)) (t!25159 List!17852)) )
))
(declare-fun arrayNoDuplicates!0 (array!52224 (_ BitVec 32) List!17852) Bool)

(assert (=> b!892012 (= res!604457 (not (arrayNoDuplicates!0 (_keys!9967 thiss!1181) #b00000000000000000000000000000000 Nil!17849)))))

(declare-fun b!892013 () Bool)

(declare-fun res!604464 () Bool)

(assert (=> b!892013 (=> res!604464 e!497926)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52224 (_ BitVec 32)) Bool)

(assert (=> b!892013 (= res!604464 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9967 thiss!1181) (mask!25788 thiss!1181))))))

(declare-fun b!892014 () Bool)

(assert (=> b!892014 (= e!497926 true)))

(declare-fun lt!402998 () Bool)

(declare-datatypes ((tuple2!12002 0))(
  ( (tuple2!12003 (_1!6011 (_ BitVec 64)) (_2!6011 V!29137)) )
))
(declare-datatypes ((List!17853 0))(
  ( (Nil!17850) (Cons!17849 (h!18980 tuple2!12002) (t!25160 List!17853)) )
))
(declare-datatypes ((ListLongMap!10713 0))(
  ( (ListLongMap!10714 (toList!5372 List!17853)) )
))
(declare-fun lt!402997 () ListLongMap!10713)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4349 (ListLongMap!10713 (_ BitVec 64)) Bool)

(assert (=> b!892014 (= lt!402998 (contains!4349 lt!402997 key!785))))

(declare-fun b!892015 () Bool)

(declare-fun e!497922 () Bool)

(declare-fun e!497925 () Bool)

(assert (=> b!892015 (= e!497922 (not e!497925))))

(declare-fun res!604459 () Bool)

(assert (=> b!892015 (=> res!604459 e!497925)))

(get-info :version)

(assert (=> b!892015 (= res!604459 (not ((_ is Found!8833) lt!402994)))))

(assert (=> b!892015 e!497919))

(declare-fun res!604458 () Bool)

(assert (=> b!892015 (=> res!604458 e!497919)))

(assert (=> b!892015 (= res!604458 (not ((_ is Found!8833) lt!402994)))))

(declare-datatypes ((Unit!30349 0))(
  ( (Unit!30350) )
))
(declare-fun lt!402996 () Unit!30349)

(declare-fun lemmaSeekEntryGivesInRangeIndex!50 (array!52224 array!52226 (_ BitVec 32) (_ BitVec 32) V!29137 V!29137 (_ BitVec 64)) Unit!30349)

(assert (=> b!892015 (= lt!402996 (lemmaSeekEntryGivesInRangeIndex!50 (_keys!9967 thiss!1181) (_values!5273 thiss!1181) (mask!25788 thiss!1181) (extraKeys!4982 thiss!1181) (zeroValue!5086 thiss!1181) (minValue!5086 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52224 (_ BitVec 32)) SeekEntryResult!8833)

(assert (=> b!892015 (= lt!402994 (seekEntry!0 key!785 (_keys!9967 thiss!1181) (mask!25788 thiss!1181)))))

(declare-fun b!892016 () Bool)

(declare-fun e!497923 () Bool)

(declare-fun mapRes!28748 () Bool)

(assert (=> b!892016 (= e!497923 (and e!497924 mapRes!28748))))

(declare-fun condMapEmpty!28748 () Bool)

(declare-fun mapDefault!28748 () ValueCell!8583)

(assert (=> b!892016 (= condMapEmpty!28748 (= (arr!25115 (_values!5273 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8583)) mapDefault!28748)))))

(declare-fun e!497921 () Bool)

(declare-fun array_inv!19702 (array!52224) Bool)

(declare-fun array_inv!19703 (array!52226) Bool)

(assert (=> b!892017 (= e!497921 (and tp!55372 tp_is_empty!18129 (array_inv!19702 (_keys!9967 thiss!1181)) (array_inv!19703 (_values!5273 thiss!1181)) e!497923))))

(declare-fun b!892018 () Bool)

(assert (=> b!892018 (= e!497925 e!497926)))

(declare-fun res!604462 () Bool)

(assert (=> b!892018 (=> res!604462 e!497926)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!892018 (= res!604462 (not (validMask!0 (mask!25788 thiss!1181))))))

(assert (=> b!892018 (contains!4349 lt!402997 (select (arr!25114 (_keys!9967 thiss!1181)) (index!37703 lt!402994)))))

(declare-fun getCurrentListMap!2624 (array!52224 array!52226 (_ BitVec 32) (_ BitVec 32) V!29137 V!29137 (_ BitVec 32) Int) ListLongMap!10713)

(assert (=> b!892018 (= lt!402997 (getCurrentListMap!2624 (_keys!9967 thiss!1181) (_values!5273 thiss!1181) (mask!25788 thiss!1181) (extraKeys!4982 thiss!1181) (zeroValue!5086 thiss!1181) (minValue!5086 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5288 thiss!1181)))))

(declare-fun lt!402995 () Unit!30349)

(declare-fun lemmaValidKeyInArrayIsInListMap!217 (array!52224 array!52226 (_ BitVec 32) (_ BitVec 32) V!29137 V!29137 (_ BitVec 32) Int) Unit!30349)

(assert (=> b!892018 (= lt!402995 (lemmaValidKeyInArrayIsInListMap!217 (_keys!9967 thiss!1181) (_values!5273 thiss!1181) (mask!25788 thiss!1181) (extraKeys!4982 thiss!1181) (zeroValue!5086 thiss!1181) (minValue!5086 thiss!1181) (index!37703 lt!402994) (defaultEntry!5288 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!892018 (arrayContainsKey!0 (_keys!9967 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402999 () Unit!30349)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52224 (_ BitVec 64) (_ BitVec 32)) Unit!30349)

(assert (=> b!892018 (= lt!402999 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9967 thiss!1181) key!785 (index!37703 lt!402994)))))

(declare-fun mapNonEmpty!28748 () Bool)

(declare-fun tp!55373 () Bool)

(assert (=> mapNonEmpty!28748 (= mapRes!28748 (and tp!55373 e!497927))))

(declare-fun mapRest!28748 () (Array (_ BitVec 32) ValueCell!8583))

(declare-fun mapKey!28748 () (_ BitVec 32))

(declare-fun mapValue!28748 () ValueCell!8583)

(assert (=> mapNonEmpty!28748 (= (arr!25115 (_values!5273 thiss!1181)) (store mapRest!28748 mapKey!28748 mapValue!28748))))

(declare-fun mapIsEmpty!28748 () Bool)

(assert (=> mapIsEmpty!28748 mapRes!28748))

(declare-fun res!604460 () Bool)

(assert (=> start!75858 (=> (not res!604460) (not e!497922))))

(declare-fun valid!1605 (LongMapFixedSize!4182) Bool)

(assert (=> start!75858 (= res!604460 (valid!1605 thiss!1181))))

(assert (=> start!75858 e!497922))

(assert (=> start!75858 e!497921))

(assert (=> start!75858 true))

(declare-fun b!892019 () Bool)

(declare-fun res!604463 () Bool)

(assert (=> b!892019 (=> res!604463 e!497926)))

(assert (=> b!892019 (= res!604463 (or (not (= (size!25560 (_values!5273 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25788 thiss!1181)))) (not (= (size!25559 (_keys!9967 thiss!1181)) (size!25560 (_values!5273 thiss!1181)))) (bvslt (mask!25788 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4982 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4982 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!892020 () Bool)

(declare-fun res!604461 () Bool)

(assert (=> b!892020 (=> (not res!604461) (not e!497922))))

(assert (=> b!892020 (= res!604461 (not (= key!785 (bvneg key!785))))))

(assert (= (and start!75858 res!604460) b!892020))

(assert (= (and b!892020 res!604461) b!892015))

(assert (= (and b!892015 (not res!604458)) b!892011))

(assert (= (and b!892015 (not res!604459)) b!892018))

(assert (= (and b!892018 (not res!604462)) b!892019))

(assert (= (and b!892019 (not res!604463)) b!892013))

(assert (= (and b!892013 (not res!604464)) b!892012))

(assert (= (and b!892012 (not res!604457)) b!892014))

(assert (= (and b!892016 condMapEmpty!28748) mapIsEmpty!28748))

(assert (= (and b!892016 (not condMapEmpty!28748)) mapNonEmpty!28748))

(assert (= (and mapNonEmpty!28748 ((_ is ValueCellFull!8583) mapValue!28748)) b!892010))

(assert (= (and b!892016 ((_ is ValueCellFull!8583) mapDefault!28748)) b!892009))

(assert (= b!892017 b!892016))

(assert (= start!75858 b!892017))

(declare-fun m!830387 () Bool)

(assert (=> start!75858 m!830387))

(declare-fun m!830389 () Bool)

(assert (=> b!892014 m!830389))

(declare-fun m!830391 () Bool)

(assert (=> b!892015 m!830391))

(declare-fun m!830393 () Bool)

(assert (=> b!892015 m!830393))

(declare-fun m!830395 () Bool)

(assert (=> b!892013 m!830395))

(declare-fun m!830397 () Bool)

(assert (=> b!892018 m!830397))

(declare-fun m!830399 () Bool)

(assert (=> b!892018 m!830399))

(declare-fun m!830401 () Bool)

(assert (=> b!892018 m!830401))

(declare-fun m!830403 () Bool)

(assert (=> b!892018 m!830403))

(declare-fun m!830405 () Bool)

(assert (=> b!892018 m!830405))

(assert (=> b!892018 m!830397))

(declare-fun m!830407 () Bool)

(assert (=> b!892018 m!830407))

(declare-fun m!830409 () Bool)

(assert (=> b!892018 m!830409))

(declare-fun m!830411 () Bool)

(assert (=> b!892017 m!830411))

(declare-fun m!830413 () Bool)

(assert (=> b!892017 m!830413))

(declare-fun m!830415 () Bool)

(assert (=> mapNonEmpty!28748 m!830415))

(declare-fun m!830417 () Bool)

(assert (=> b!892011 m!830417))

(declare-fun m!830419 () Bool)

(assert (=> b!892012 m!830419))

(check-sat (not b!892018) (not b!892014) (not b!892017) tp_is_empty!18129 (not b!892015) (not mapNonEmpty!28748) (not b!892012) (not start!75858) (not b_next!15801) (not b!892013) b_and!26059 (not b!892011))
(check-sat b_and!26059 (not b_next!15801))
