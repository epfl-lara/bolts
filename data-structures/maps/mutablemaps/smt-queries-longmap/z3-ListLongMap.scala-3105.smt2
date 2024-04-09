; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43624 () Bool)

(assert start!43624)

(declare-fun b_free!12351 () Bool)

(declare-fun b_next!12351 () Bool)

(assert (=> start!43624 (= b_free!12351 (not b_next!12351))))

(declare-fun tp!43342 () Bool)

(declare-fun b_and!21133 () Bool)

(assert (=> start!43624 (= tp!43342 b_and!21133)))

(declare-fun b!483010 () Bool)

(declare-fun e!284255 () Bool)

(declare-fun tp_is_empty!13863 () Bool)

(assert (=> b!483010 (= e!284255 tp_is_empty!13863)))

(declare-fun b!483011 () Bool)

(declare-fun e!284251 () Bool)

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!483011 (= e!284251 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!483012 () Bool)

(declare-fun res!287926 () Bool)

(declare-fun e!284257 () Bool)

(assert (=> b!483012 (=> (not res!287926) (not e!284257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!483012 (= res!287926 (validKeyInArray!0 k0!1332))))

(declare-fun b!483013 () Bool)

(declare-fun e!284253 () Bool)

(assert (=> b!483013 (= e!284257 (not e!284253))))

(declare-fun res!287931 () Bool)

(assert (=> b!483013 (=> res!287931 e!284253)))

(declare-datatypes ((SeekEntryResult!3563 0))(
  ( (MissingZero!3563 (index!16431 (_ BitVec 32))) (Found!3563 (index!16432 (_ BitVec 32))) (Intermediate!3563 (undefined!4375 Bool) (index!16433 (_ BitVec 32)) (x!45362 (_ BitVec 32))) (Undefined!3563) (MissingVacant!3563 (index!16434 (_ BitVec 32))) )
))
(declare-fun lt!218973 () SeekEntryResult!3563)

(get-info :version)

(assert (=> b!483013 (= res!287931 (not ((_ is Found!3563) lt!218973)))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!31353 0))(
  ( (array!31354 (arr!15074 (Array (_ BitVec 32) (_ BitVec 64))) (size!15432 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31353)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31353 (_ BitVec 32)) SeekEntryResult!3563)

(assert (=> b!483013 (= lt!218973 (seekEntryOrOpen!0 k0!1332 _keys!1874 mask!2352))))

(declare-fun lt!218972 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31353 (_ BitVec 32)) Bool)

(assert (=> b!483013 (arrayForallSeekEntryOrOpenFound!0 lt!218972 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14134 0))(
  ( (Unit!14135) )
))
(declare-fun lt!218974 () Unit!14134)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31353 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14134)

(assert (=> b!483013 (= lt!218974 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218972))))

(declare-fun arrayScanForKey!0 (array!31353 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!483013 (= lt!218972 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (=> b!483013 e!284251))

(declare-fun c!57990 () Bool)

(assert (=> b!483013 (= c!57990 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((V!19555 0))(
  ( (V!19556 (val!6979 Int)) )
))
(declare-fun minValue!1458 () V!19555)

(declare-fun lt!218975 () Unit!14134)

(declare-fun zeroValue!1458 () V!19555)

(declare-datatypes ((ValueCell!6570 0))(
  ( (ValueCellFull!6570 (v!9270 V!19555)) (EmptyCell!6570) )
))
(declare-datatypes ((array!31355 0))(
  ( (array!31356 (arr!15075 (Array (_ BitVec 32) ValueCell!6570)) (size!15433 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31355)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!154 (array!31353 array!31355 (_ BitVec 32) (_ BitVec 32) V!19555 V!19555 (_ BitVec 64) Int) Unit!14134)

(assert (=> b!483013 (= lt!218975 (lemmaKeyInListMapIsInArray!154 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun res!287927 () Bool)

(assert (=> start!43624 (=> (not res!287927) (not e!284257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43624 (= res!287927 (validMask!0 mask!2352))))

(assert (=> start!43624 e!284257))

(assert (=> start!43624 true))

(assert (=> start!43624 tp_is_empty!13863))

(declare-fun e!284256 () Bool)

(declare-fun array_inv!10852 (array!31355) Bool)

(assert (=> start!43624 (and (array_inv!10852 _values!1516) e!284256)))

(assert (=> start!43624 tp!43342))

(declare-fun array_inv!10853 (array!31353) Bool)

(assert (=> start!43624 (array_inv!10853 _keys!1874)))

(declare-fun b!483014 () Bool)

(declare-fun arrayContainsKey!0 (array!31353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!483014 (= e!284251 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!483015 () Bool)

(declare-fun res!287928 () Bool)

(assert (=> b!483015 (=> (not res!287928) (not e!284257))))

(declare-datatypes ((tuple2!9160 0))(
  ( (tuple2!9161 (_1!4590 (_ BitVec 64)) (_2!4590 V!19555)) )
))
(declare-datatypes ((List!9276 0))(
  ( (Nil!9273) (Cons!9272 (h!10128 tuple2!9160) (t!15502 List!9276)) )
))
(declare-datatypes ((ListLongMap!8087 0))(
  ( (ListLongMap!8088 (toList!4059 List!9276)) )
))
(declare-fun contains!2672 (ListLongMap!8087 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2351 (array!31353 array!31355 (_ BitVec 32) (_ BitVec 32) V!19555 V!19555 (_ BitVec 32) Int) ListLongMap!8087)

(assert (=> b!483015 (= res!287928 (contains!2672 (getCurrentListMap!2351 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!483016 () Bool)

(declare-fun e!284252 () Bool)

(assert (=> b!483016 (= e!284252 tp_is_empty!13863)))

(declare-fun b!483017 () Bool)

(declare-fun res!287930 () Bool)

(assert (=> b!483017 (=> (not res!287930) (not e!284257))))

(assert (=> b!483017 (= res!287930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!483018 () Bool)

(assert (=> b!483018 (= e!284253 (and (bvsge (index!16432 lt!218973) #b00000000000000000000000000000000) (bvslt (index!16432 lt!218973) (size!15432 _keys!1874))))))

(declare-fun b!483019 () Bool)

(declare-fun res!287932 () Bool)

(assert (=> b!483019 (=> res!287932 e!284253)))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!483019 (= res!287932 (not (inRange!0 (index!16432 lt!218973) mask!2352)))))

(declare-fun mapIsEmpty!22510 () Bool)

(declare-fun mapRes!22510 () Bool)

(assert (=> mapIsEmpty!22510 mapRes!22510))

(declare-fun b!483020 () Bool)

(assert (=> b!483020 (= e!284256 (and e!284255 mapRes!22510))))

(declare-fun condMapEmpty!22510 () Bool)

(declare-fun mapDefault!22510 () ValueCell!6570)

(assert (=> b!483020 (= condMapEmpty!22510 (= (arr!15075 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6570)) mapDefault!22510)))))

(declare-fun b!483021 () Bool)

(declare-fun res!287929 () Bool)

(assert (=> b!483021 (=> (not res!287929) (not e!284257))))

(declare-datatypes ((List!9277 0))(
  ( (Nil!9274) (Cons!9273 (h!10129 (_ BitVec 64)) (t!15503 List!9277)) )
))
(declare-fun arrayNoDuplicates!0 (array!31353 (_ BitVec 32) List!9277) Bool)

(assert (=> b!483021 (= res!287929 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9274))))

(declare-fun mapNonEmpty!22510 () Bool)

(declare-fun tp!43341 () Bool)

(assert (=> mapNonEmpty!22510 (= mapRes!22510 (and tp!43341 e!284252))))

(declare-fun mapKey!22510 () (_ BitVec 32))

(declare-fun mapRest!22510 () (Array (_ BitVec 32) ValueCell!6570))

(declare-fun mapValue!22510 () ValueCell!6570)

(assert (=> mapNonEmpty!22510 (= (arr!15075 _values!1516) (store mapRest!22510 mapKey!22510 mapValue!22510))))

(declare-fun b!483022 () Bool)

(declare-fun res!287925 () Bool)

(assert (=> b!483022 (=> (not res!287925) (not e!284257))))

(assert (=> b!483022 (= res!287925 (and (= (size!15433 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15432 _keys!1874) (size!15433 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(assert (= (and start!43624 res!287927) b!483022))

(assert (= (and b!483022 res!287925) b!483017))

(assert (= (and b!483017 res!287930) b!483021))

(assert (= (and b!483021 res!287929) b!483015))

(assert (= (and b!483015 res!287928) b!483012))

(assert (= (and b!483012 res!287926) b!483013))

(assert (= (and b!483013 c!57990) b!483014))

(assert (= (and b!483013 (not c!57990)) b!483011))

(assert (= (and b!483013 (not res!287931)) b!483019))

(assert (= (and b!483019 (not res!287932)) b!483018))

(assert (= (and b!483020 condMapEmpty!22510) mapIsEmpty!22510))

(assert (= (and b!483020 (not condMapEmpty!22510)) mapNonEmpty!22510))

(assert (= (and mapNonEmpty!22510 ((_ is ValueCellFull!6570) mapValue!22510)) b!483016))

(assert (= (and b!483020 ((_ is ValueCellFull!6570) mapDefault!22510)) b!483010))

(assert (= start!43624 b!483020))

(declare-fun m!464075 () Bool)

(assert (=> start!43624 m!464075))

(declare-fun m!464077 () Bool)

(assert (=> start!43624 m!464077))

(declare-fun m!464079 () Bool)

(assert (=> start!43624 m!464079))

(declare-fun m!464081 () Bool)

(assert (=> b!483012 m!464081))

(declare-fun m!464083 () Bool)

(assert (=> b!483019 m!464083))

(declare-fun m!464085 () Bool)

(assert (=> b!483015 m!464085))

(assert (=> b!483015 m!464085))

(declare-fun m!464087 () Bool)

(assert (=> b!483015 m!464087))

(declare-fun m!464089 () Bool)

(assert (=> b!483013 m!464089))

(declare-fun m!464091 () Bool)

(assert (=> b!483013 m!464091))

(declare-fun m!464093 () Bool)

(assert (=> b!483013 m!464093))

(declare-fun m!464095 () Bool)

(assert (=> b!483013 m!464095))

(declare-fun m!464097 () Bool)

(assert (=> b!483013 m!464097))

(declare-fun m!464099 () Bool)

(assert (=> b!483017 m!464099))

(declare-fun m!464101 () Bool)

(assert (=> mapNonEmpty!22510 m!464101))

(declare-fun m!464103 () Bool)

(assert (=> b!483014 m!464103))

(declare-fun m!464105 () Bool)

(assert (=> b!483021 m!464105))

(check-sat (not mapNonEmpty!22510) (not b!483019) (not b!483015) (not b!483012) (not b!483014) tp_is_empty!13863 b_and!21133 (not b!483021) (not start!43624) (not b_next!12351) (not b!483013) (not b!483017))
(check-sat b_and!21133 (not b_next!12351))
(get-model)

(declare-fun d!76751 () Bool)

(declare-fun lt!218995 () SeekEntryResult!3563)

(assert (=> d!76751 (and (or ((_ is Undefined!3563) lt!218995) (not ((_ is Found!3563) lt!218995)) (and (bvsge (index!16432 lt!218995) #b00000000000000000000000000000000) (bvslt (index!16432 lt!218995) (size!15432 _keys!1874)))) (or ((_ is Undefined!3563) lt!218995) ((_ is Found!3563) lt!218995) (not ((_ is MissingZero!3563) lt!218995)) (and (bvsge (index!16431 lt!218995) #b00000000000000000000000000000000) (bvslt (index!16431 lt!218995) (size!15432 _keys!1874)))) (or ((_ is Undefined!3563) lt!218995) ((_ is Found!3563) lt!218995) ((_ is MissingZero!3563) lt!218995) (not ((_ is MissingVacant!3563) lt!218995)) (and (bvsge (index!16434 lt!218995) #b00000000000000000000000000000000) (bvslt (index!16434 lt!218995) (size!15432 _keys!1874)))) (or ((_ is Undefined!3563) lt!218995) (ite ((_ is Found!3563) lt!218995) (= (select (arr!15074 _keys!1874) (index!16432 lt!218995)) k0!1332) (ite ((_ is MissingZero!3563) lt!218995) (= (select (arr!15074 _keys!1874) (index!16431 lt!218995)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3563) lt!218995) (= (select (arr!15074 _keys!1874) (index!16434 lt!218995)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!284285 () SeekEntryResult!3563)

(assert (=> d!76751 (= lt!218995 e!284285)))

(declare-fun c!58000 () Bool)

(declare-fun lt!218994 () SeekEntryResult!3563)

(assert (=> d!76751 (= c!58000 (and ((_ is Intermediate!3563) lt!218994) (undefined!4375 lt!218994)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31353 (_ BitVec 32)) SeekEntryResult!3563)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!76751 (= lt!218994 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1332 mask!2352) k0!1332 _keys!1874 mask!2352))))

(assert (=> d!76751 (validMask!0 mask!2352)))

(assert (=> d!76751 (= (seekEntryOrOpen!0 k0!1332 _keys!1874 mask!2352) lt!218995)))

(declare-fun b!483074 () Bool)

(declare-fun e!284287 () SeekEntryResult!3563)

(assert (=> b!483074 (= e!284285 e!284287)))

(declare-fun lt!218996 () (_ BitVec 64))

(assert (=> b!483074 (= lt!218996 (select (arr!15074 _keys!1874) (index!16433 lt!218994)))))

(declare-fun c!58002 () Bool)

(assert (=> b!483074 (= c!58002 (= lt!218996 k0!1332))))

(declare-fun b!483075 () Bool)

(assert (=> b!483075 (= e!284287 (Found!3563 (index!16433 lt!218994)))))

(declare-fun b!483076 () Bool)

(declare-fun c!58001 () Bool)

(assert (=> b!483076 (= c!58001 (= lt!218996 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!284286 () SeekEntryResult!3563)

(assert (=> b!483076 (= e!284287 e!284286)))

(declare-fun b!483077 () Bool)

(assert (=> b!483077 (= e!284285 Undefined!3563)))

(declare-fun b!483078 () Bool)

(assert (=> b!483078 (= e!284286 (MissingZero!3563 (index!16433 lt!218994)))))

(declare-fun b!483079 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31353 (_ BitVec 32)) SeekEntryResult!3563)

(assert (=> b!483079 (= e!284286 (seekKeyOrZeroReturnVacant!0 (x!45362 lt!218994) (index!16433 lt!218994) (index!16433 lt!218994) k0!1332 _keys!1874 mask!2352))))

(assert (= (and d!76751 c!58000) b!483077))

(assert (= (and d!76751 (not c!58000)) b!483074))

(assert (= (and b!483074 c!58002) b!483075))

(assert (= (and b!483074 (not c!58002)) b!483076))

(assert (= (and b!483076 c!58001) b!483078))

(assert (= (and b!483076 (not c!58001)) b!483079))

(declare-fun m!464139 () Bool)

(assert (=> d!76751 m!464139))

(declare-fun m!464141 () Bool)

(assert (=> d!76751 m!464141))

(assert (=> d!76751 m!464139))

(declare-fun m!464143 () Bool)

(assert (=> d!76751 m!464143))

(assert (=> d!76751 m!464075))

(declare-fun m!464145 () Bool)

(assert (=> d!76751 m!464145))

(declare-fun m!464147 () Bool)

(assert (=> d!76751 m!464147))

(declare-fun m!464149 () Bool)

(assert (=> b!483074 m!464149))

(declare-fun m!464151 () Bool)

(assert (=> b!483079 m!464151))

(assert (=> b!483013 d!76751))

(declare-fun d!76753 () Bool)

(assert (=> d!76753 (arrayForallSeekEntryOrOpenFound!0 lt!218972 _keys!1874 mask!2352)))

(declare-fun lt!218999 () Unit!14134)

(declare-fun choose!38 (array!31353 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14134)

(assert (=> d!76753 (= lt!218999 (choose!38 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218972))))

(assert (=> d!76753 (validMask!0 mask!2352)))

(assert (=> d!76753 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218972) lt!218999)))

(declare-fun bs!15361 () Bool)

(assert (= bs!15361 d!76753))

(assert (=> bs!15361 m!464097))

(declare-fun m!464153 () Bool)

(assert (=> bs!15361 m!464153))

(assert (=> bs!15361 m!464075))

(assert (=> b!483013 d!76753))

(declare-fun d!76755 () Bool)

(declare-fun res!287962 () Bool)

(declare-fun e!284296 () Bool)

(assert (=> d!76755 (=> res!287962 e!284296)))

(assert (=> d!76755 (= res!287962 (bvsge lt!218972 (size!15432 _keys!1874)))))

(assert (=> d!76755 (= (arrayForallSeekEntryOrOpenFound!0 lt!218972 _keys!1874 mask!2352) e!284296)))

(declare-fun b!483088 () Bool)

(declare-fun e!284295 () Bool)

(assert (=> b!483088 (= e!284296 e!284295)))

(declare-fun c!58005 () Bool)

(assert (=> b!483088 (= c!58005 (validKeyInArray!0 (select (arr!15074 _keys!1874) lt!218972)))))

(declare-fun b!483089 () Bool)

(declare-fun e!284294 () Bool)

(declare-fun call!31011 () Bool)

(assert (=> b!483089 (= e!284294 call!31011)))

(declare-fun b!483090 () Bool)

(assert (=> b!483090 (= e!284295 call!31011)))

(declare-fun bm!31008 () Bool)

(assert (=> bm!31008 (= call!31011 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!218972 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!483091 () Bool)

(assert (=> b!483091 (= e!284295 e!284294)))

(declare-fun lt!219006 () (_ BitVec 64))

(assert (=> b!483091 (= lt!219006 (select (arr!15074 _keys!1874) lt!218972))))

(declare-fun lt!219007 () Unit!14134)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31353 (_ BitVec 64) (_ BitVec 32)) Unit!14134)

(assert (=> b!483091 (= lt!219007 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!219006 lt!218972))))

(assert (=> b!483091 (arrayContainsKey!0 _keys!1874 lt!219006 #b00000000000000000000000000000000)))

(declare-fun lt!219008 () Unit!14134)

(assert (=> b!483091 (= lt!219008 lt!219007)))

(declare-fun res!287961 () Bool)

(assert (=> b!483091 (= res!287961 (= (seekEntryOrOpen!0 (select (arr!15074 _keys!1874) lt!218972) _keys!1874 mask!2352) (Found!3563 lt!218972)))))

(assert (=> b!483091 (=> (not res!287961) (not e!284294))))

(assert (= (and d!76755 (not res!287962)) b!483088))

(assert (= (and b!483088 c!58005) b!483091))

(assert (= (and b!483088 (not c!58005)) b!483090))

(assert (= (and b!483091 res!287961) b!483089))

(assert (= (or b!483089 b!483090) bm!31008))

(declare-fun m!464155 () Bool)

(assert (=> b!483088 m!464155))

(assert (=> b!483088 m!464155))

(declare-fun m!464157 () Bool)

(assert (=> b!483088 m!464157))

(declare-fun m!464159 () Bool)

(assert (=> bm!31008 m!464159))

(assert (=> b!483091 m!464155))

(declare-fun m!464161 () Bool)

(assert (=> b!483091 m!464161))

(declare-fun m!464163 () Bool)

(assert (=> b!483091 m!464163))

(assert (=> b!483091 m!464155))

(declare-fun m!464165 () Bool)

(assert (=> b!483091 m!464165))

(assert (=> b!483013 d!76755))

(declare-fun d!76757 () Bool)

(declare-fun e!284299 () Bool)

(assert (=> d!76757 e!284299))

(declare-fun c!58008 () Bool)

(assert (=> d!76757 (= c!58008 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!219011 () Unit!14134)

(declare-fun choose!1388 (array!31353 array!31355 (_ BitVec 32) (_ BitVec 32) V!19555 V!19555 (_ BitVec 64) Int) Unit!14134)

(assert (=> d!76757 (= lt!219011 (choose!1388 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(assert (=> d!76757 (validMask!0 mask!2352)))

(assert (=> d!76757 (= (lemmaKeyInListMapIsInArray!154 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519) lt!219011)))

(declare-fun b!483096 () Bool)

(assert (=> b!483096 (= e!284299 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!483097 () Bool)

(assert (=> b!483097 (= e!284299 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!76757 c!58008) b!483096))

(assert (= (and d!76757 (not c!58008)) b!483097))

(declare-fun m!464167 () Bool)

(assert (=> d!76757 m!464167))

(assert (=> d!76757 m!464075))

(assert (=> b!483096 m!464103))

(assert (=> b!483013 d!76757))

(declare-fun d!76759 () Bool)

(declare-fun lt!219014 () (_ BitVec 32))

(assert (=> d!76759 (and (or (bvslt lt!219014 #b00000000000000000000000000000000) (bvsge lt!219014 (size!15432 _keys!1874)) (and (bvsge lt!219014 #b00000000000000000000000000000000) (bvslt lt!219014 (size!15432 _keys!1874)))) (bvsge lt!219014 #b00000000000000000000000000000000) (bvslt lt!219014 (size!15432 _keys!1874)) (= (select (arr!15074 _keys!1874) lt!219014) k0!1332))))

(declare-fun e!284302 () (_ BitVec 32))

(assert (=> d!76759 (= lt!219014 e!284302)))

(declare-fun c!58011 () Bool)

(assert (=> d!76759 (= c!58011 (= (select (arr!15074 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76759 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15432 _keys!1874)) (bvslt (size!15432 _keys!1874) #b01111111111111111111111111111111))))

(assert (=> d!76759 (= (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) lt!219014)))

(declare-fun b!483102 () Bool)

(assert (=> b!483102 (= e!284302 #b00000000000000000000000000000000)))

(declare-fun b!483103 () Bool)

(assert (=> b!483103 (= e!284302 (arrayScanForKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76759 c!58011) b!483102))

(assert (= (and d!76759 (not c!58011)) b!483103))

(declare-fun m!464169 () Bool)

(assert (=> d!76759 m!464169))

(declare-fun m!464171 () Bool)

(assert (=> d!76759 m!464171))

(declare-fun m!464173 () Bool)

(assert (=> b!483103 m!464173))

(assert (=> b!483013 d!76759))

(declare-fun d!76761 () Bool)

(assert (=> d!76761 (= (inRange!0 (index!16432 lt!218973) mask!2352) (and (bvsge (index!16432 lt!218973) #b00000000000000000000000000000000) (bvslt (index!16432 lt!218973) (bvadd mask!2352 #b00000000000000000000000000000001))))))

(assert (=> b!483019 d!76761))

(declare-fun d!76763 () Bool)

(declare-fun res!287967 () Bool)

(declare-fun e!284307 () Bool)

(assert (=> d!76763 (=> res!287967 e!284307)))

(assert (=> d!76763 (= res!287967 (= (select (arr!15074 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76763 (= (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) e!284307)))

(declare-fun b!483108 () Bool)

(declare-fun e!284308 () Bool)

(assert (=> b!483108 (= e!284307 e!284308)))

(declare-fun res!287968 () Bool)

(assert (=> b!483108 (=> (not res!287968) (not e!284308))))

(assert (=> b!483108 (= res!287968 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15432 _keys!1874)))))

(declare-fun b!483109 () Bool)

(assert (=> b!483109 (= e!284308 (arrayContainsKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76763 (not res!287967)) b!483108))

(assert (= (and b!483108 res!287968) b!483109))

(assert (=> d!76763 m!464171))

(declare-fun m!464175 () Bool)

(assert (=> b!483109 m!464175))

(assert (=> b!483014 d!76763))

(declare-fun d!76765 () Bool)

(declare-fun res!287970 () Bool)

(declare-fun e!284311 () Bool)

(assert (=> d!76765 (=> res!287970 e!284311)))

(assert (=> d!76765 (= res!287970 (bvsge #b00000000000000000000000000000000 (size!15432 _keys!1874)))))

(assert (=> d!76765 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!284311)))

(declare-fun b!483110 () Bool)

(declare-fun e!284310 () Bool)

(assert (=> b!483110 (= e!284311 e!284310)))

(declare-fun c!58012 () Bool)

(assert (=> b!483110 (= c!58012 (validKeyInArray!0 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!483111 () Bool)

(declare-fun e!284309 () Bool)

(declare-fun call!31012 () Bool)

(assert (=> b!483111 (= e!284309 call!31012)))

(declare-fun b!483112 () Bool)

(assert (=> b!483112 (= e!284310 call!31012)))

(declare-fun bm!31009 () Bool)

(assert (=> bm!31009 (= call!31012 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!483113 () Bool)

(assert (=> b!483113 (= e!284310 e!284309)))

(declare-fun lt!219015 () (_ BitVec 64))

(assert (=> b!483113 (= lt!219015 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!219016 () Unit!14134)

(assert (=> b!483113 (= lt!219016 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!219015 #b00000000000000000000000000000000))))

(assert (=> b!483113 (arrayContainsKey!0 _keys!1874 lt!219015 #b00000000000000000000000000000000)))

(declare-fun lt!219017 () Unit!14134)

(assert (=> b!483113 (= lt!219017 lt!219016)))

(declare-fun res!287969 () Bool)

(assert (=> b!483113 (= res!287969 (= (seekEntryOrOpen!0 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3563 #b00000000000000000000000000000000)))))

(assert (=> b!483113 (=> (not res!287969) (not e!284309))))

(assert (= (and d!76765 (not res!287970)) b!483110))

(assert (= (and b!483110 c!58012) b!483113))

(assert (= (and b!483110 (not c!58012)) b!483112))

(assert (= (and b!483113 res!287969) b!483111))

(assert (= (or b!483111 b!483112) bm!31009))

(assert (=> b!483110 m!464171))

(assert (=> b!483110 m!464171))

(declare-fun m!464177 () Bool)

(assert (=> b!483110 m!464177))

(declare-fun m!464179 () Bool)

(assert (=> bm!31009 m!464179))

(assert (=> b!483113 m!464171))

(declare-fun m!464181 () Bool)

(assert (=> b!483113 m!464181))

(declare-fun m!464183 () Bool)

(assert (=> b!483113 m!464183))

(assert (=> b!483113 m!464171))

(declare-fun m!464185 () Bool)

(assert (=> b!483113 m!464185))

(assert (=> b!483017 d!76765))

(declare-fun d!76767 () Bool)

(assert (=> d!76767 (= (validKeyInArray!0 k0!1332) (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!483012 d!76767))

(declare-fun d!76769 () Bool)

(assert (=> d!76769 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43624 d!76769))

(declare-fun d!76771 () Bool)

(assert (=> d!76771 (= (array_inv!10852 _values!1516) (bvsge (size!15433 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43624 d!76771))

(declare-fun d!76773 () Bool)

(assert (=> d!76773 (= (array_inv!10853 _keys!1874) (bvsge (size!15432 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43624 d!76773))

(declare-fun b!483124 () Bool)

(declare-fun e!284323 () Bool)

(declare-fun call!31015 () Bool)

(assert (=> b!483124 (= e!284323 call!31015)))

(declare-fun b!483125 () Bool)

(declare-fun e!284322 () Bool)

(declare-fun e!284321 () Bool)

(assert (=> b!483125 (= e!284322 e!284321)))

(declare-fun res!287979 () Bool)

(assert (=> b!483125 (=> (not res!287979) (not e!284321))))

(declare-fun e!284320 () Bool)

(assert (=> b!483125 (= res!287979 (not e!284320))))

(declare-fun res!287978 () Bool)

(assert (=> b!483125 (=> (not res!287978) (not e!284320))))

(assert (=> b!483125 (= res!287978 (validKeyInArray!0 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!31012 () Bool)

(declare-fun c!58015 () Bool)

(assert (=> bm!31012 (= call!31015 (arrayNoDuplicates!0 _keys!1874 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58015 (Cons!9273 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000) Nil!9274) Nil!9274)))))

(declare-fun b!483126 () Bool)

(assert (=> b!483126 (= e!284323 call!31015)))

(declare-fun d!76775 () Bool)

(declare-fun res!287977 () Bool)

(assert (=> d!76775 (=> res!287977 e!284322)))

(assert (=> d!76775 (= res!287977 (bvsge #b00000000000000000000000000000000 (size!15432 _keys!1874)))))

(assert (=> d!76775 (= (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9274) e!284322)))

(declare-fun b!483127 () Bool)

(declare-fun contains!2673 (List!9277 (_ BitVec 64)) Bool)

(assert (=> b!483127 (= e!284320 (contains!2673 Nil!9274 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!483128 () Bool)

(assert (=> b!483128 (= e!284321 e!284323)))

(assert (=> b!483128 (= c!58015 (validKeyInArray!0 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000)))))

(assert (= (and d!76775 (not res!287977)) b!483125))

(assert (= (and b!483125 res!287978) b!483127))

(assert (= (and b!483125 res!287979) b!483128))

(assert (= (and b!483128 c!58015) b!483124))

(assert (= (and b!483128 (not c!58015)) b!483126))

(assert (= (or b!483124 b!483126) bm!31012))

(assert (=> b!483125 m!464171))

(assert (=> b!483125 m!464171))

(assert (=> b!483125 m!464177))

(assert (=> bm!31012 m!464171))

(declare-fun m!464187 () Bool)

(assert (=> bm!31012 m!464187))

(assert (=> b!483127 m!464171))

(assert (=> b!483127 m!464171))

(declare-fun m!464189 () Bool)

(assert (=> b!483127 m!464189))

(assert (=> b!483128 m!464171))

(assert (=> b!483128 m!464171))

(assert (=> b!483128 m!464177))

(assert (=> b!483021 d!76775))

(declare-fun d!76777 () Bool)

(declare-fun e!284329 () Bool)

(assert (=> d!76777 e!284329))

(declare-fun res!287982 () Bool)

(assert (=> d!76777 (=> res!287982 e!284329)))

(declare-fun lt!219028 () Bool)

(assert (=> d!76777 (= res!287982 (not lt!219028))))

(declare-fun lt!219027 () Bool)

(assert (=> d!76777 (= lt!219028 lt!219027)))

(declare-fun lt!219029 () Unit!14134)

(declare-fun e!284328 () Unit!14134)

(assert (=> d!76777 (= lt!219029 e!284328)))

(declare-fun c!58018 () Bool)

(assert (=> d!76777 (= c!58018 lt!219027)))

(declare-fun containsKey!359 (List!9276 (_ BitVec 64)) Bool)

(assert (=> d!76777 (= lt!219027 (containsKey!359 (toList!4059 (getCurrentListMap!2351 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(assert (=> d!76777 (= (contains!2672 (getCurrentListMap!2351 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332) lt!219028)))

(declare-fun b!483135 () Bool)

(declare-fun lt!219026 () Unit!14134)

(assert (=> b!483135 (= e!284328 lt!219026)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!308 (List!9276 (_ BitVec 64)) Unit!14134)

(assert (=> b!483135 (= lt!219026 (lemmaContainsKeyImpliesGetValueByKeyDefined!308 (toList!4059 (getCurrentListMap!2351 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-datatypes ((Option!403 0))(
  ( (Some!402 (v!9272 V!19555)) (None!401) )
))
(declare-fun isDefined!309 (Option!403) Bool)

(declare-fun getValueByKey!397 (List!9276 (_ BitVec 64)) Option!403)

(assert (=> b!483135 (isDefined!309 (getValueByKey!397 (toList!4059 (getCurrentListMap!2351 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-fun b!483136 () Bool)

(declare-fun Unit!14136 () Unit!14134)

(assert (=> b!483136 (= e!284328 Unit!14136)))

(declare-fun b!483137 () Bool)

(assert (=> b!483137 (= e!284329 (isDefined!309 (getValueByKey!397 (toList!4059 (getCurrentListMap!2351 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332)))))

(assert (= (and d!76777 c!58018) b!483135))

(assert (= (and d!76777 (not c!58018)) b!483136))

(assert (= (and d!76777 (not res!287982)) b!483137))

(declare-fun m!464191 () Bool)

(assert (=> d!76777 m!464191))

(declare-fun m!464193 () Bool)

(assert (=> b!483135 m!464193))

(declare-fun m!464195 () Bool)

(assert (=> b!483135 m!464195))

(assert (=> b!483135 m!464195))

(declare-fun m!464197 () Bool)

(assert (=> b!483135 m!464197))

(assert (=> b!483137 m!464195))

(assert (=> b!483137 m!464195))

(assert (=> b!483137 m!464197))

(assert (=> b!483015 d!76777))

(declare-fun b!483180 () Bool)

(declare-fun e!284360 () ListLongMap!8087)

(declare-fun call!31036 () ListLongMap!8087)

(declare-fun +!1748 (ListLongMap!8087 tuple2!9160) ListLongMap!8087)

(assert (=> b!483180 (= e!284360 (+!1748 call!31036 (tuple2!9161 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458)))))

(declare-fun b!483181 () Bool)

(declare-fun e!284361 () Bool)

(declare-fun e!284358 () Bool)

(assert (=> b!483181 (= e!284361 e!284358)))

(declare-fun res!288005 () Bool)

(assert (=> b!483181 (=> (not res!288005) (not e!284358))))

(declare-fun lt!219085 () ListLongMap!8087)

(assert (=> b!483181 (= res!288005 (contains!2672 lt!219085 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000)))))

(assert (=> b!483181 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15432 _keys!1874)))))

(declare-fun b!483182 () Bool)

(declare-fun e!284359 () Bool)

(declare-fun e!284368 () Bool)

(assert (=> b!483182 (= e!284359 e!284368)))

(declare-fun res!288002 () Bool)

(declare-fun call!31030 () Bool)

(assert (=> b!483182 (= res!288002 call!31030)))

(assert (=> b!483182 (=> (not res!288002) (not e!284368))))

(declare-fun b!483183 () Bool)

(declare-fun e!284367 () Bool)

(declare-fun e!284356 () Bool)

(assert (=> b!483183 (= e!284367 e!284356)))

(declare-fun res!288007 () Bool)

(declare-fun call!31033 () Bool)

(assert (=> b!483183 (= res!288007 call!31033)))

(assert (=> b!483183 (=> (not res!288007) (not e!284356))))

(declare-fun bm!31027 () Bool)

(assert (=> bm!31027 (= call!31030 (contains!2672 lt!219085 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!483184 () Bool)

(declare-fun e!284362 () ListLongMap!8087)

(declare-fun call!31032 () ListLongMap!8087)

(assert (=> b!483184 (= e!284362 call!31032)))

(declare-fun call!31031 () ListLongMap!8087)

(declare-fun bm!31028 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2118 (array!31353 array!31355 (_ BitVec 32) (_ BitVec 32) V!19555 V!19555 (_ BitVec 32) Int) ListLongMap!8087)

(assert (=> bm!31028 (= call!31031 (getCurrentListMapNoExtraKeys!2118 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun b!483185 () Bool)

(declare-fun e!284365 () Unit!14134)

(declare-fun lt!219081 () Unit!14134)

(assert (=> b!483185 (= e!284365 lt!219081)))

(declare-fun lt!219075 () ListLongMap!8087)

(assert (=> b!483185 (= lt!219075 (getCurrentListMapNoExtraKeys!2118 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!219092 () (_ BitVec 64))

(assert (=> b!483185 (= lt!219092 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!219086 () (_ BitVec 64))

(assert (=> b!483185 (= lt!219086 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!219079 () Unit!14134)

(declare-fun addStillContains!303 (ListLongMap!8087 (_ BitVec 64) V!19555 (_ BitVec 64)) Unit!14134)

(assert (=> b!483185 (= lt!219079 (addStillContains!303 lt!219075 lt!219092 zeroValue!1458 lt!219086))))

(assert (=> b!483185 (contains!2672 (+!1748 lt!219075 (tuple2!9161 lt!219092 zeroValue!1458)) lt!219086)))

(declare-fun lt!219084 () Unit!14134)

(assert (=> b!483185 (= lt!219084 lt!219079)))

(declare-fun lt!219080 () ListLongMap!8087)

(assert (=> b!483185 (= lt!219080 (getCurrentListMapNoExtraKeys!2118 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!219083 () (_ BitVec 64))

(assert (=> b!483185 (= lt!219083 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!219074 () (_ BitVec 64))

(assert (=> b!483185 (= lt!219074 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!219094 () Unit!14134)

(declare-fun addApplyDifferent!303 (ListLongMap!8087 (_ BitVec 64) V!19555 (_ BitVec 64)) Unit!14134)

(assert (=> b!483185 (= lt!219094 (addApplyDifferent!303 lt!219080 lt!219083 minValue!1458 lt!219074))))

(declare-fun apply!345 (ListLongMap!8087 (_ BitVec 64)) V!19555)

(assert (=> b!483185 (= (apply!345 (+!1748 lt!219080 (tuple2!9161 lt!219083 minValue!1458)) lt!219074) (apply!345 lt!219080 lt!219074))))

(declare-fun lt!219087 () Unit!14134)

(assert (=> b!483185 (= lt!219087 lt!219094)))

(declare-fun lt!219093 () ListLongMap!8087)

(assert (=> b!483185 (= lt!219093 (getCurrentListMapNoExtraKeys!2118 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!219078 () (_ BitVec 64))

(assert (=> b!483185 (= lt!219078 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!219091 () (_ BitVec 64))

(assert (=> b!483185 (= lt!219091 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!219076 () Unit!14134)

(assert (=> b!483185 (= lt!219076 (addApplyDifferent!303 lt!219093 lt!219078 zeroValue!1458 lt!219091))))

(assert (=> b!483185 (= (apply!345 (+!1748 lt!219093 (tuple2!9161 lt!219078 zeroValue!1458)) lt!219091) (apply!345 lt!219093 lt!219091))))

(declare-fun lt!219077 () Unit!14134)

(assert (=> b!483185 (= lt!219077 lt!219076)))

(declare-fun lt!219089 () ListLongMap!8087)

(assert (=> b!483185 (= lt!219089 (getCurrentListMapNoExtraKeys!2118 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!219088 () (_ BitVec 64))

(assert (=> b!483185 (= lt!219088 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!219082 () (_ BitVec 64))

(assert (=> b!483185 (= lt!219082 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> b!483185 (= lt!219081 (addApplyDifferent!303 lt!219089 lt!219088 minValue!1458 lt!219082))))

(assert (=> b!483185 (= (apply!345 (+!1748 lt!219089 (tuple2!9161 lt!219088 minValue!1458)) lt!219082) (apply!345 lt!219089 lt!219082))))

(declare-fun bm!31029 () Bool)

(declare-fun call!31035 () ListLongMap!8087)

(assert (=> bm!31029 (= call!31035 call!31031)))

(declare-fun b!483186 () Bool)

(declare-fun res!288004 () Bool)

(declare-fun e!284363 () Bool)

(assert (=> b!483186 (=> (not res!288004) (not e!284363))))

(assert (=> b!483186 (= res!288004 e!284367)))

(declare-fun c!58031 () Bool)

(assert (=> b!483186 (= c!58031 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!76779 () Bool)

(assert (=> d!76779 e!284363))

(declare-fun res!288003 () Bool)

(assert (=> d!76779 (=> (not res!288003) (not e!284363))))

(assert (=> d!76779 (= res!288003 (or (bvsge #b00000000000000000000000000000000 (size!15432 _keys!1874)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15432 _keys!1874)))))))

(declare-fun lt!219090 () ListLongMap!8087)

(assert (=> d!76779 (= lt!219085 lt!219090)))

(declare-fun lt!219095 () Unit!14134)

(assert (=> d!76779 (= lt!219095 e!284365)))

(declare-fun c!58035 () Bool)

(declare-fun e!284366 () Bool)

(assert (=> d!76779 (= c!58035 e!284366)))

(declare-fun res!288008 () Bool)

(assert (=> d!76779 (=> (not res!288008) (not e!284366))))

(assert (=> d!76779 (= res!288008 (bvslt #b00000000000000000000000000000000 (size!15432 _keys!1874)))))

(assert (=> d!76779 (= lt!219090 e!284360)))

(declare-fun c!58033 () Bool)

(assert (=> d!76779 (= c!58033 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!76779 (validMask!0 mask!2352)))

(assert (=> d!76779 (= (getCurrentListMap!2351 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) lt!219085)))

(declare-fun b!483187 () Bool)

(assert (=> b!483187 (= e!284359 (not call!31030))))

(declare-fun call!31034 () ListLongMap!8087)

(declare-fun c!58034 () Bool)

(declare-fun bm!31030 () Bool)

(assert (=> bm!31030 (= call!31036 (+!1748 (ite c!58033 call!31031 (ite c!58034 call!31035 call!31034)) (ite (or c!58033 c!58034) (tuple2!9161 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1458) (tuple2!9161 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458))))))

(declare-fun b!483188 () Bool)

(declare-fun c!58036 () Bool)

(assert (=> b!483188 (= c!58036 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!284364 () ListLongMap!8087)

(assert (=> b!483188 (= e!284364 e!284362)))

(declare-fun b!483189 () Bool)

(assert (=> b!483189 (= e!284356 (= (apply!345 lt!219085 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1458))))

(declare-fun bm!31031 () Bool)

(assert (=> bm!31031 (= call!31032 call!31036)))

(declare-fun b!483190 () Bool)

(assert (=> b!483190 (= e!284368 (= (apply!345 lt!219085 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1458))))

(declare-fun bm!31032 () Bool)

(assert (=> bm!31032 (= call!31034 call!31035)))

(declare-fun b!483191 () Bool)

(assert (=> b!483191 (= e!284366 (validKeyInArray!0 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!31033 () Bool)

(assert (=> bm!31033 (= call!31033 (contains!2672 lt!219085 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!483192 () Bool)

(declare-fun res!288001 () Bool)

(assert (=> b!483192 (=> (not res!288001) (not e!284363))))

(assert (=> b!483192 (= res!288001 e!284361)))

(declare-fun res!288006 () Bool)

(assert (=> b!483192 (=> res!288006 e!284361)))

(declare-fun e!284357 () Bool)

(assert (=> b!483192 (= res!288006 (not e!284357))))

(declare-fun res!288009 () Bool)

(assert (=> b!483192 (=> (not res!288009) (not e!284357))))

(assert (=> b!483192 (= res!288009 (bvslt #b00000000000000000000000000000000 (size!15432 _keys!1874)))))

(declare-fun b!483193 () Bool)

(assert (=> b!483193 (= e!284357 (validKeyInArray!0 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!483194 () Bool)

(assert (=> b!483194 (= e!284367 (not call!31033))))

(declare-fun b!483195 () Bool)

(assert (=> b!483195 (= e!284363 e!284359)))

(declare-fun c!58032 () Bool)

(assert (=> b!483195 (= c!58032 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!483196 () Bool)

(declare-fun Unit!14137 () Unit!14134)

(assert (=> b!483196 (= e!284365 Unit!14137)))

(declare-fun b!483197 () Bool)

(assert (=> b!483197 (= e!284364 call!31032)))

(declare-fun b!483198 () Bool)

(assert (=> b!483198 (= e!284362 call!31034)))

(declare-fun b!483199 () Bool)

(assert (=> b!483199 (= e!284360 e!284364)))

(assert (=> b!483199 (= c!58034 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!483200 () Bool)

(declare-fun get!7309 (ValueCell!6570 V!19555) V!19555)

(declare-fun dynLambda!955 (Int (_ BitVec 64)) V!19555)

(assert (=> b!483200 (= e!284358 (= (apply!345 lt!219085 (select (arr!15074 _keys!1874) #b00000000000000000000000000000000)) (get!7309 (select (arr!15075 _values!1516) #b00000000000000000000000000000000) (dynLambda!955 defaultEntry!1519 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!483200 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15433 _values!1516)))))

(assert (=> b!483200 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15432 _keys!1874)))))

(assert (= (and d!76779 c!58033) b!483180))

(assert (= (and d!76779 (not c!58033)) b!483199))

(assert (= (and b!483199 c!58034) b!483197))

(assert (= (and b!483199 (not c!58034)) b!483188))

(assert (= (and b!483188 c!58036) b!483184))

(assert (= (and b!483188 (not c!58036)) b!483198))

(assert (= (or b!483184 b!483198) bm!31032))

(assert (= (or b!483197 bm!31032) bm!31029))

(assert (= (or b!483197 b!483184) bm!31031))

(assert (= (or b!483180 bm!31029) bm!31028))

(assert (= (or b!483180 bm!31031) bm!31030))

(assert (= (and d!76779 res!288008) b!483191))

(assert (= (and d!76779 c!58035) b!483185))

(assert (= (and d!76779 (not c!58035)) b!483196))

(assert (= (and d!76779 res!288003) b!483192))

(assert (= (and b!483192 res!288009) b!483193))

(assert (= (and b!483192 (not res!288006)) b!483181))

(assert (= (and b!483181 res!288005) b!483200))

(assert (= (and b!483192 res!288001) b!483186))

(assert (= (and b!483186 c!58031) b!483183))

(assert (= (and b!483186 (not c!58031)) b!483194))

(assert (= (and b!483183 res!288007) b!483189))

(assert (= (or b!483183 b!483194) bm!31033))

(assert (= (and b!483186 res!288004) b!483195))

(assert (= (and b!483195 c!58032) b!483182))

(assert (= (and b!483195 (not c!58032)) b!483187))

(assert (= (and b!483182 res!288002) b!483190))

(assert (= (or b!483182 b!483187) bm!31027))

(declare-fun b_lambda!10845 () Bool)

(assert (=> (not b_lambda!10845) (not b!483200)))

(declare-fun t!15506 () Bool)

(declare-fun tb!4179 () Bool)

(assert (=> (and start!43624 (= defaultEntry!1519 defaultEntry!1519) t!15506) tb!4179))

(declare-fun result!7789 () Bool)

(assert (=> tb!4179 (= result!7789 tp_is_empty!13863)))

(assert (=> b!483200 t!15506))

(declare-fun b_and!21137 () Bool)

(assert (= b_and!21133 (and (=> t!15506 result!7789) b_and!21137)))

(declare-fun m!464199 () Bool)

(assert (=> bm!31033 m!464199))

(assert (=> b!483181 m!464171))

(assert (=> b!483181 m!464171))

(declare-fun m!464201 () Bool)

(assert (=> b!483181 m!464201))

(declare-fun m!464203 () Bool)

(assert (=> bm!31030 m!464203))

(declare-fun m!464205 () Bool)

(assert (=> b!483190 m!464205))

(declare-fun m!464207 () Bool)

(assert (=> b!483189 m!464207))

(declare-fun m!464209 () Bool)

(assert (=> bm!31027 m!464209))

(assert (=> d!76779 m!464075))

(declare-fun m!464211 () Bool)

(assert (=> bm!31028 m!464211))

(declare-fun m!464213 () Bool)

(assert (=> b!483180 m!464213))

(assert (=> b!483193 m!464171))

(assert (=> b!483193 m!464171))

(assert (=> b!483193 m!464177))

(declare-fun m!464215 () Bool)

(assert (=> b!483200 m!464215))

(declare-fun m!464217 () Bool)

(assert (=> b!483200 m!464217))

(assert (=> b!483200 m!464215))

(declare-fun m!464219 () Bool)

(assert (=> b!483200 m!464219))

(assert (=> b!483200 m!464217))

(assert (=> b!483200 m!464171))

(assert (=> b!483200 m!464171))

(declare-fun m!464221 () Bool)

(assert (=> b!483200 m!464221))

(declare-fun m!464223 () Bool)

(assert (=> b!483185 m!464223))

(declare-fun m!464225 () Bool)

(assert (=> b!483185 m!464225))

(declare-fun m!464227 () Bool)

(assert (=> b!483185 m!464227))

(declare-fun m!464229 () Bool)

(assert (=> b!483185 m!464229))

(declare-fun m!464231 () Bool)

(assert (=> b!483185 m!464231))

(declare-fun m!464233 () Bool)

(assert (=> b!483185 m!464233))

(declare-fun m!464235 () Bool)

(assert (=> b!483185 m!464235))

(assert (=> b!483185 m!464211))

(declare-fun m!464237 () Bool)

(assert (=> b!483185 m!464237))

(assert (=> b!483185 m!464235))

(declare-fun m!464239 () Bool)

(assert (=> b!483185 m!464239))

(assert (=> b!483185 m!464229))

(assert (=> b!483185 m!464223))

(declare-fun m!464241 () Bool)

(assert (=> b!483185 m!464241))

(declare-fun m!464243 () Bool)

(assert (=> b!483185 m!464243))

(declare-fun m!464245 () Bool)

(assert (=> b!483185 m!464245))

(declare-fun m!464247 () Bool)

(assert (=> b!483185 m!464247))

(assert (=> b!483185 m!464225))

(declare-fun m!464249 () Bool)

(assert (=> b!483185 m!464249))

(assert (=> b!483185 m!464171))

(declare-fun m!464251 () Bool)

(assert (=> b!483185 m!464251))

(assert (=> b!483191 m!464171))

(assert (=> b!483191 m!464171))

(assert (=> b!483191 m!464177))

(assert (=> b!483015 d!76779))

(declare-fun condMapEmpty!22516 () Bool)

(declare-fun mapDefault!22516 () ValueCell!6570)

(assert (=> mapNonEmpty!22510 (= condMapEmpty!22516 (= mapRest!22510 ((as const (Array (_ BitVec 32) ValueCell!6570)) mapDefault!22516)))))

(declare-fun e!284374 () Bool)

(declare-fun mapRes!22516 () Bool)

(assert (=> mapNonEmpty!22510 (= tp!43341 (and e!284374 mapRes!22516))))

(declare-fun b!483209 () Bool)

(declare-fun e!284373 () Bool)

(assert (=> b!483209 (= e!284373 tp_is_empty!13863)))

(declare-fun mapNonEmpty!22516 () Bool)

(declare-fun tp!43351 () Bool)

(assert (=> mapNonEmpty!22516 (= mapRes!22516 (and tp!43351 e!284373))))

(declare-fun mapKey!22516 () (_ BitVec 32))

(declare-fun mapRest!22516 () (Array (_ BitVec 32) ValueCell!6570))

(declare-fun mapValue!22516 () ValueCell!6570)

(assert (=> mapNonEmpty!22516 (= mapRest!22510 (store mapRest!22516 mapKey!22516 mapValue!22516))))

(declare-fun mapIsEmpty!22516 () Bool)

(assert (=> mapIsEmpty!22516 mapRes!22516))

(declare-fun b!483210 () Bool)

(assert (=> b!483210 (= e!284374 tp_is_empty!13863)))

(assert (= (and mapNonEmpty!22510 condMapEmpty!22516) mapIsEmpty!22516))

(assert (= (and mapNonEmpty!22510 (not condMapEmpty!22516)) mapNonEmpty!22516))

(assert (= (and mapNonEmpty!22516 ((_ is ValueCellFull!6570) mapValue!22516)) b!483209))

(assert (= (and mapNonEmpty!22510 ((_ is ValueCellFull!6570) mapDefault!22516)) b!483210))

(declare-fun m!464253 () Bool)

(assert (=> mapNonEmpty!22516 m!464253))

(declare-fun b_lambda!10847 () Bool)

(assert (= b_lambda!10845 (or (and start!43624 b_free!12351) b_lambda!10847)))

(check-sat (not bm!31028) (not bm!31033) (not b!483079) (not bm!31027) (not b!483109) (not b!483191) (not b!483180) (not mapNonEmpty!22516) (not b!483113) tp_is_empty!13863 (not b_next!12351) (not bm!31012) (not b!483110) (not b!483103) (not d!76779) (not bm!31030) (not b!483181) (not b!483135) (not b!483193) (not b_lambda!10847) (not b!483088) (not d!76753) b_and!21137 (not bm!31009) (not b!483125) (not b!483091) (not d!76777) (not b!483128) (not b!483096) (not b!483200) (not b!483190) (not d!76757) (not b!483127) (not b!483185) (not bm!31008) (not b!483137) (not b!483189) (not d!76751))
(check-sat b_and!21137 (not b_next!12351))
