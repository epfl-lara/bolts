; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1116 () Bool)

(assert start!1116)

(declare-fun b_free!387 () Bool)

(declare-fun b_next!387 () Bool)

(assert (=> start!1116 (= b_free!387 (not b_next!387))))

(declare-fun tp!1405 () Bool)

(declare-fun b_and!543 () Bool)

(assert (=> start!1116 (= tp!1405 b_and!543)))

(declare-fun b!9864 () Bool)

(declare-fun res!8716 () Bool)

(declare-fun e!5656 () Bool)

(assert (=> b!9864 (=> (not res!8716) (not e!5656))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!797 0))(
  ( (V!798 (val!238 Int)) )
))
(declare-datatypes ((ValueCell!216 0))(
  ( (ValueCellFull!216 (v!1334 V!797)) (EmptyCell!216) )
))
(declare-datatypes ((array!855 0))(
  ( (array!856 (arr!411 (Array (_ BitVec 32) ValueCell!216)) (size!473 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!855)

(declare-fun minValue!1434 () V!797)

(declare-datatypes ((array!857 0))(
  ( (array!858 (arr!412 (Array (_ BitVec 32) (_ BitVec 64))) (size!474 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!857)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!797)

(declare-datatypes ((tuple2!258 0))(
  ( (tuple2!259 (_1!129 (_ BitVec 64)) (_2!129 V!797)) )
))
(declare-datatypes ((List!283 0))(
  ( (Nil!280) (Cons!279 (h!845 tuple2!258) (t!2428 List!283)) )
))
(declare-datatypes ((ListLongMap!263 0))(
  ( (ListLongMap!264 (toList!147 List!283)) )
))
(declare-fun contains!126 (ListLongMap!263 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!106 (array!857 array!855 (_ BitVec 32) (_ BitVec 32) V!797 V!797 (_ BitVec 32) Int) ListLongMap!263)

(assert (=> b!9864 (= res!8716 (contains!126 (getCurrentListMap!106 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!9865 () Bool)

(declare-fun res!8724 () Bool)

(declare-fun e!5660 () Bool)

(assert (=> b!9865 (=> (not res!8724) (not e!5660))))

(declare-datatypes ((SeekEntryResult!43 0))(
  ( (MissingZero!43 (index!2291 (_ BitVec 32))) (Found!43 (index!2292 (_ BitVec 32))) (Intermediate!43 (undefined!855 Bool) (index!2293 (_ BitVec 32)) (x!2823 (_ BitVec 32))) (Undefined!43) (MissingVacant!43 (index!2294 (_ BitVec 32))) )
))
(declare-fun lt!2333 () SeekEntryResult!43)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!9865 (= res!8724 (inRange!0 (index!2292 lt!2333) mask!2250))))

(declare-fun b!9866 () Bool)

(declare-fun e!5654 () Bool)

(declare-fun arrayContainsKey!0 (array!857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9866 (= e!5654 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!9867 () Bool)

(declare-fun e!5659 () Bool)

(declare-fun e!5658 () Bool)

(declare-fun mapRes!683 () Bool)

(assert (=> b!9867 (= e!5659 (and e!5658 mapRes!683))))

(declare-fun condMapEmpty!683 () Bool)

(declare-fun mapDefault!683 () ValueCell!216)

(assert (=> b!9867 (= condMapEmpty!683 (= (arr!411 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!216)) mapDefault!683)))))

(declare-fun mapIsEmpty!683 () Bool)

(assert (=> mapIsEmpty!683 mapRes!683))

(declare-fun b!9868 () Bool)

(declare-fun res!8725 () Bool)

(assert (=> b!9868 (=> (not res!8725) (not e!5656))))

(assert (=> b!9868 (= res!8725 (and (= (size!473 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!474 _keys!1806) (size!473 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!9869 () Bool)

(declare-fun e!5655 () Bool)

(declare-fun tp_is_empty!465 () Bool)

(assert (=> b!9869 (= e!5655 tp_is_empty!465)))

(declare-fun res!8717 () Bool)

(assert (=> start!1116 (=> (not res!8717) (not e!5656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1116 (= res!8717 (validMask!0 mask!2250))))

(assert (=> start!1116 e!5656))

(assert (=> start!1116 tp!1405))

(assert (=> start!1116 true))

(declare-fun array_inv!297 (array!855) Bool)

(assert (=> start!1116 (and (array_inv!297 _values!1492) e!5659)))

(assert (=> start!1116 tp_is_empty!465))

(declare-fun array_inv!298 (array!857) Bool)

(assert (=> start!1116 (array_inv!298 _keys!1806)))

(declare-fun b!9870 () Bool)

(assert (=> b!9870 (= e!5658 tp_is_empty!465)))

(declare-fun b!9871 () Bool)

(declare-fun e!5652 () Bool)

(assert (=> b!9871 (= e!5652 e!5660)))

(declare-fun res!8722 () Bool)

(assert (=> b!9871 (=> (not res!8722) (not e!5660))))

(get-info :version)

(assert (=> b!9871 (= res!8722 ((_ is Found!43) lt!2333))))

(declare-fun lt!2331 () (_ BitVec 32))

(assert (=> b!9871 (and ((_ is Found!43) lt!2333) (= (index!2292 lt!2333) lt!2331))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!857 (_ BitVec 32)) SeekEntryResult!43)

(assert (=> b!9871 (= lt!2333 (seekEntry!0 k0!1278 _keys!1806 mask!2250))))

(declare-datatypes ((Unit!203 0))(
  ( (Unit!204) )
))
(declare-fun lt!2330 () Unit!203)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!857 (_ BitVec 32)) Unit!203)

(assert (=> b!9871 (= lt!2330 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1278 lt!2331 _keys!1806 mask!2250))))

(declare-fun b!9872 () Bool)

(declare-fun res!8719 () Bool)

(assert (=> b!9872 (=> res!8719 e!5652)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!857 (_ BitVec 32)) SeekEntryResult!43)

(assert (=> b!9872 (= res!8719 (not (= (seekEntryOrOpen!0 k0!1278 _keys!1806 mask!2250) (Found!43 lt!2331))))))

(declare-fun b!9873 () Bool)

(declare-fun e!5653 () Bool)

(assert (=> b!9873 (= e!5656 (not e!5653))))

(declare-fun res!8718 () Bool)

(assert (=> b!9873 (=> res!8718 e!5653)))

(assert (=> b!9873 (= res!8718 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(assert (=> b!9873 e!5654))

(declare-fun c!823 () Bool)

(assert (=> b!9873 (= c!823 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!2332 () Unit!203)

(declare-fun lemmaKeyInListMapIsInArray!76 (array!857 array!855 (_ BitVec 32) (_ BitVec 32) V!797 V!797 (_ BitVec 64) Int) Unit!203)

(assert (=> b!9873 (= lt!2332 (lemmaKeyInListMapIsInArray!76 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun mapNonEmpty!683 () Bool)

(declare-fun tp!1406 () Bool)

(assert (=> mapNonEmpty!683 (= mapRes!683 (and tp!1406 e!5655))))

(declare-fun mapRest!683 () (Array (_ BitVec 32) ValueCell!216))

(declare-fun mapKey!683 () (_ BitVec 32))

(declare-fun mapValue!683 () ValueCell!216)

(assert (=> mapNonEmpty!683 (= (arr!411 _values!1492) (store mapRest!683 mapKey!683 mapValue!683))))

(declare-fun b!9874 () Bool)

(declare-fun res!8723 () Bool)

(assert (=> b!9874 (=> (not res!8723) (not e!5656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!857 (_ BitVec 32)) Bool)

(assert (=> b!9874 (= res!8723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!9875 () Bool)

(declare-fun res!8720 () Bool)

(assert (=> b!9875 (=> (not res!8720) (not e!5656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!9875 (= res!8720 (validKeyInArray!0 k0!1278))))

(declare-fun b!9876 () Bool)

(assert (=> b!9876 (= e!5653 e!5652)))

(declare-fun res!8721 () Bool)

(assert (=> b!9876 (=> res!8721 e!5652)))

(assert (=> b!9876 (= res!8721 (not (= (size!474 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(assert (=> b!9876 (arrayForallSeekEntryOrOpenFound!0 lt!2331 _keys!1806 mask!2250)))

(declare-fun lt!2334 () Unit!203)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!857 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!203)

(assert (=> b!9876 (= lt!2334 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2331))))

(declare-fun arrayScanForKey!0 (array!857 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!9876 (= lt!2331 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!9877 () Bool)

(declare-fun res!8726 () Bool)

(assert (=> b!9877 (=> (not res!8726) (not e!5656))))

(declare-datatypes ((List!284 0))(
  ( (Nil!281) (Cons!280 (h!846 (_ BitVec 64)) (t!2429 List!284)) )
))
(declare-fun arrayNoDuplicates!0 (array!857 (_ BitVec 32) List!284) Bool)

(assert (=> b!9877 (= res!8726 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!281))))

(declare-fun b!9878 () Bool)

(assert (=> b!9878 (= e!5654 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!9879 () Bool)

(assert (=> b!9879 (= e!5660 (= (select (arr!412 _keys!1806) (index!2292 lt!2333)) k0!1278))))

(assert (= (and start!1116 res!8717) b!9868))

(assert (= (and b!9868 res!8725) b!9874))

(assert (= (and b!9874 res!8723) b!9877))

(assert (= (and b!9877 res!8726) b!9864))

(assert (= (and b!9864 res!8716) b!9875))

(assert (= (and b!9875 res!8720) b!9873))

(assert (= (and b!9873 c!823) b!9866))

(assert (= (and b!9873 (not c!823)) b!9878))

(assert (= (and b!9873 (not res!8718)) b!9876))

(assert (= (and b!9876 (not res!8721)) b!9872))

(assert (= (and b!9872 (not res!8719)) b!9871))

(assert (= (and b!9871 res!8722) b!9865))

(assert (= (and b!9865 res!8724) b!9879))

(assert (= (and b!9867 condMapEmpty!683) mapIsEmpty!683))

(assert (= (and b!9867 (not condMapEmpty!683)) mapNonEmpty!683))

(assert (= (and mapNonEmpty!683 ((_ is ValueCellFull!216) mapValue!683)) b!9869))

(assert (= (and b!9867 ((_ is ValueCellFull!216) mapDefault!683)) b!9870))

(assert (= start!1116 b!9867))

(declare-fun m!6249 () Bool)

(assert (=> b!9876 m!6249))

(declare-fun m!6251 () Bool)

(assert (=> b!9876 m!6251))

(declare-fun m!6253 () Bool)

(assert (=> b!9876 m!6253))

(declare-fun m!6255 () Bool)

(assert (=> b!9874 m!6255))

(declare-fun m!6257 () Bool)

(assert (=> b!9875 m!6257))

(declare-fun m!6259 () Bool)

(assert (=> mapNonEmpty!683 m!6259))

(declare-fun m!6261 () Bool)

(assert (=> b!9872 m!6261))

(declare-fun m!6263 () Bool)

(assert (=> b!9864 m!6263))

(assert (=> b!9864 m!6263))

(declare-fun m!6265 () Bool)

(assert (=> b!9864 m!6265))

(declare-fun m!6267 () Bool)

(assert (=> b!9879 m!6267))

(declare-fun m!6269 () Bool)

(assert (=> b!9877 m!6269))

(declare-fun m!6271 () Bool)

(assert (=> b!9871 m!6271))

(declare-fun m!6273 () Bool)

(assert (=> b!9871 m!6273))

(declare-fun m!6275 () Bool)

(assert (=> start!1116 m!6275))

(declare-fun m!6277 () Bool)

(assert (=> start!1116 m!6277))

(declare-fun m!6279 () Bool)

(assert (=> start!1116 m!6279))

(declare-fun m!6281 () Bool)

(assert (=> b!9873 m!6281))

(declare-fun m!6283 () Bool)

(assert (=> b!9873 m!6283))

(assert (=> b!9866 m!6281))

(declare-fun m!6285 () Bool)

(assert (=> b!9865 m!6285))

(check-sat (not mapNonEmpty!683) (not start!1116) (not b!9873) (not b_next!387) tp_is_empty!465 (not b!9875) (not b!9874) b_and!543 (not b!9866) (not b!9872) (not b!9865) (not b!9864) (not b!9877) (not b!9876) (not b!9871))
(check-sat b_and!543 (not b_next!387))
(get-model)

(declare-fun b!9940 () Bool)

(declare-fun c!834 () Bool)

(declare-fun lt!2361 () (_ BitVec 64))

(assert (=> b!9940 (= c!834 (= lt!2361 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!5695 () SeekEntryResult!43)

(declare-fun e!5696 () SeekEntryResult!43)

(assert (=> b!9940 (= e!5695 e!5696)))

(declare-fun b!9941 () Bool)

(declare-fun e!5694 () SeekEntryResult!43)

(assert (=> b!9941 (= e!5694 Undefined!43)))

(declare-fun b!9942 () Bool)

(declare-fun lt!2360 () SeekEntryResult!43)

(assert (=> b!9942 (= e!5696 (ite ((_ is MissingVacant!43) lt!2360) (MissingZero!43 (index!2294 lt!2360)) lt!2360))))

(declare-fun lt!2358 () SeekEntryResult!43)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!857 (_ BitVec 32)) SeekEntryResult!43)

(assert (=> b!9942 (= lt!2360 (seekKeyOrZeroReturnVacant!0 (x!2823 lt!2358) (index!2293 lt!2358) (index!2293 lt!2358) k0!1278 _keys!1806 mask!2250))))

(declare-fun d!961 () Bool)

(declare-fun lt!2359 () SeekEntryResult!43)

(assert (=> d!961 (and (or ((_ is MissingVacant!43) lt!2359) (not ((_ is Found!43) lt!2359)) (and (bvsge (index!2292 lt!2359) #b00000000000000000000000000000000) (bvslt (index!2292 lt!2359) (size!474 _keys!1806)))) (not ((_ is MissingVacant!43) lt!2359)) (or (not ((_ is Found!43) lt!2359)) (= (select (arr!412 _keys!1806) (index!2292 lt!2359)) k0!1278)))))

(assert (=> d!961 (= lt!2359 e!5694)))

(declare-fun c!835 () Bool)

(assert (=> d!961 (= c!835 (and ((_ is Intermediate!43) lt!2358) (undefined!855 lt!2358)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!857 (_ BitVec 32)) SeekEntryResult!43)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!961 (= lt!2358 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1278 mask!2250) k0!1278 _keys!1806 mask!2250))))

(assert (=> d!961 (validMask!0 mask!2250)))

(assert (=> d!961 (= (seekEntry!0 k0!1278 _keys!1806 mask!2250) lt!2359)))

(declare-fun b!9943 () Bool)

(assert (=> b!9943 (= e!5696 (MissingZero!43 (index!2293 lt!2358)))))

(declare-fun b!9944 () Bool)

(assert (=> b!9944 (= e!5694 e!5695)))

(assert (=> b!9944 (= lt!2361 (select (arr!412 _keys!1806) (index!2293 lt!2358)))))

(declare-fun c!833 () Bool)

(assert (=> b!9944 (= c!833 (= lt!2361 k0!1278))))

(declare-fun b!9945 () Bool)

(assert (=> b!9945 (= e!5695 (Found!43 (index!2293 lt!2358)))))

(assert (= (and d!961 c!835) b!9941))

(assert (= (and d!961 (not c!835)) b!9944))

(assert (= (and b!9944 c!833) b!9945))

(assert (= (and b!9944 (not c!833)) b!9940))

(assert (= (and b!9940 c!834) b!9943))

(assert (= (and b!9940 (not c!834)) b!9942))

(declare-fun m!6325 () Bool)

(assert (=> b!9942 m!6325))

(declare-fun m!6327 () Bool)

(assert (=> d!961 m!6327))

(declare-fun m!6329 () Bool)

(assert (=> d!961 m!6329))

(assert (=> d!961 m!6329))

(declare-fun m!6331 () Bool)

(assert (=> d!961 m!6331))

(assert (=> d!961 m!6275))

(declare-fun m!6333 () Bool)

(assert (=> b!9944 m!6333))

(assert (=> b!9871 d!961))

(declare-fun d!963 () Bool)

(declare-fun lt!2367 () SeekEntryResult!43)

(assert (=> d!963 (and ((_ is Found!43) lt!2367) (= (index!2292 lt!2367) lt!2331))))

(assert (=> d!963 (= lt!2367 (seekEntry!0 k0!1278 _keys!1806 mask!2250))))

(declare-fun lt!2366 () Unit!203)

(declare-fun choose!0 ((_ BitVec 64) (_ BitVec 32) array!857 (_ BitVec 32)) Unit!203)

(assert (=> d!963 (= lt!2366 (choose!0 k0!1278 lt!2331 _keys!1806 mask!2250))))

(assert (=> d!963 (validMask!0 mask!2250)))

(assert (=> d!963 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1278 lt!2331 _keys!1806 mask!2250) lt!2366)))

(declare-fun bs!337 () Bool)

(assert (= bs!337 d!963))

(assert (=> bs!337 m!6271))

(declare-fun m!6335 () Bool)

(assert (=> bs!337 m!6335))

(assert (=> bs!337 m!6275))

(assert (=> b!9871 d!963))

(declare-fun b!9958 () Bool)

(declare-fun e!5703 () SeekEntryResult!43)

(assert (=> b!9958 (= e!5703 Undefined!43)))

(declare-fun b!9960 () Bool)

(declare-fun e!5704 () SeekEntryResult!43)

(assert (=> b!9960 (= e!5703 e!5704)))

(declare-fun lt!2375 () (_ BitVec 64))

(declare-fun lt!2374 () SeekEntryResult!43)

(assert (=> b!9960 (= lt!2375 (select (arr!412 _keys!1806) (index!2293 lt!2374)))))

(declare-fun c!842 () Bool)

(assert (=> b!9960 (= c!842 (= lt!2375 k0!1278))))

(declare-fun b!9961 () Bool)

(assert (=> b!9961 (= e!5704 (Found!43 (index!2293 lt!2374)))))

(declare-fun b!9962 () Bool)

(declare-fun e!5705 () SeekEntryResult!43)

(assert (=> b!9962 (= e!5705 (MissingZero!43 (index!2293 lt!2374)))))

(declare-fun b!9963 () Bool)

(declare-fun c!843 () Bool)

(assert (=> b!9963 (= c!843 (= lt!2375 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!9963 (= e!5704 e!5705)))

(declare-fun b!9959 () Bool)

(assert (=> b!9959 (= e!5705 (seekKeyOrZeroReturnVacant!0 (x!2823 lt!2374) (index!2293 lt!2374) (index!2293 lt!2374) k0!1278 _keys!1806 mask!2250))))

(declare-fun d!965 () Bool)

(declare-fun lt!2376 () SeekEntryResult!43)

(assert (=> d!965 (and (or ((_ is Undefined!43) lt!2376) (not ((_ is Found!43) lt!2376)) (and (bvsge (index!2292 lt!2376) #b00000000000000000000000000000000) (bvslt (index!2292 lt!2376) (size!474 _keys!1806)))) (or ((_ is Undefined!43) lt!2376) ((_ is Found!43) lt!2376) (not ((_ is MissingZero!43) lt!2376)) (and (bvsge (index!2291 lt!2376) #b00000000000000000000000000000000) (bvslt (index!2291 lt!2376) (size!474 _keys!1806)))) (or ((_ is Undefined!43) lt!2376) ((_ is Found!43) lt!2376) ((_ is MissingZero!43) lt!2376) (not ((_ is MissingVacant!43) lt!2376)) (and (bvsge (index!2294 lt!2376) #b00000000000000000000000000000000) (bvslt (index!2294 lt!2376) (size!474 _keys!1806)))) (or ((_ is Undefined!43) lt!2376) (ite ((_ is Found!43) lt!2376) (= (select (arr!412 _keys!1806) (index!2292 lt!2376)) k0!1278) (ite ((_ is MissingZero!43) lt!2376) (= (select (arr!412 _keys!1806) (index!2291 lt!2376)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!43) lt!2376) (= (select (arr!412 _keys!1806) (index!2294 lt!2376)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!965 (= lt!2376 e!5703)))

(declare-fun c!844 () Bool)

(assert (=> d!965 (= c!844 (and ((_ is Intermediate!43) lt!2374) (undefined!855 lt!2374)))))

(assert (=> d!965 (= lt!2374 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1278 mask!2250) k0!1278 _keys!1806 mask!2250))))

(assert (=> d!965 (validMask!0 mask!2250)))

(assert (=> d!965 (= (seekEntryOrOpen!0 k0!1278 _keys!1806 mask!2250) lt!2376)))

(assert (= (and d!965 c!844) b!9958))

(assert (= (and d!965 (not c!844)) b!9960))

(assert (= (and b!9960 c!842) b!9961))

(assert (= (and b!9960 (not c!842)) b!9963))

(assert (= (and b!9963 c!843) b!9962))

(assert (= (and b!9963 (not c!843)) b!9959))

(declare-fun m!6337 () Bool)

(assert (=> b!9960 m!6337))

(declare-fun m!6339 () Bool)

(assert (=> b!9959 m!6339))

(declare-fun m!6341 () Bool)

(assert (=> d!965 m!6341))

(assert (=> d!965 m!6275))

(declare-fun m!6343 () Bool)

(assert (=> d!965 m!6343))

(assert (=> d!965 m!6329))

(declare-fun m!6345 () Bool)

(assert (=> d!965 m!6345))

(assert (=> d!965 m!6329))

(assert (=> d!965 m!6331))

(assert (=> b!9872 d!965))

(declare-fun d!967 () Bool)

(assert (=> d!967 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!1116 d!967))

(declare-fun d!969 () Bool)

(assert (=> d!969 (= (array_inv!297 _values!1492) (bvsge (size!473 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!1116 d!969))

(declare-fun d!971 () Bool)

(assert (=> d!971 (= (array_inv!298 _keys!1806) (bvsge (size!474 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!1116 d!971))

(declare-fun d!973 () Bool)

(declare-fun e!5710 () Bool)

(assert (=> d!973 e!5710))

(declare-fun res!8762 () Bool)

(assert (=> d!973 (=> res!8762 e!5710)))

(declare-fun lt!2385 () Bool)

(assert (=> d!973 (= res!8762 (not lt!2385))))

(declare-fun lt!2386 () Bool)

(assert (=> d!973 (= lt!2385 lt!2386)))

(declare-fun lt!2388 () Unit!203)

(declare-fun e!5711 () Unit!203)

(assert (=> d!973 (= lt!2388 e!5711)))

(declare-fun c!847 () Bool)

(assert (=> d!973 (= c!847 lt!2386)))

(declare-fun containsKey!10 (List!283 (_ BitVec 64)) Bool)

(assert (=> d!973 (= lt!2386 (containsKey!10 (toList!147 (getCurrentListMap!106 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(assert (=> d!973 (= (contains!126 (getCurrentListMap!106 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278) lt!2385)))

(declare-fun b!9970 () Bool)

(declare-fun lt!2387 () Unit!203)

(assert (=> b!9970 (= e!5711 lt!2387)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!10 (List!283 (_ BitVec 64)) Unit!203)

(assert (=> b!9970 (= lt!2387 (lemmaContainsKeyImpliesGetValueByKeyDefined!10 (toList!147 (getCurrentListMap!106 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-datatypes ((Option!22 0))(
  ( (Some!21 (v!1336 V!797)) (None!20) )
))
(declare-fun isDefined!11 (Option!22) Bool)

(declare-fun getValueByKey!16 (List!283 (_ BitVec 64)) Option!22)

(assert (=> b!9970 (isDefined!11 (getValueByKey!16 (toList!147 (getCurrentListMap!106 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-fun b!9971 () Bool)

(declare-fun Unit!207 () Unit!203)

(assert (=> b!9971 (= e!5711 Unit!207)))

(declare-fun b!9972 () Bool)

(assert (=> b!9972 (= e!5710 (isDefined!11 (getValueByKey!16 (toList!147 (getCurrentListMap!106 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278)))))

(assert (= (and d!973 c!847) b!9970))

(assert (= (and d!973 (not c!847)) b!9971))

(assert (= (and d!973 (not res!8762)) b!9972))

(declare-fun m!6347 () Bool)

(assert (=> d!973 m!6347))

(declare-fun m!6349 () Bool)

(assert (=> b!9970 m!6349))

(declare-fun m!6351 () Bool)

(assert (=> b!9970 m!6351))

(assert (=> b!9970 m!6351))

(declare-fun m!6353 () Bool)

(assert (=> b!9970 m!6353))

(assert (=> b!9972 m!6351))

(assert (=> b!9972 m!6351))

(assert (=> b!9972 m!6353))

(assert (=> b!9864 d!973))

(declare-fun b!10015 () Bool)

(declare-fun e!5743 () Bool)

(declare-fun lt!2445 () ListLongMap!263)

(declare-fun apply!26 (ListLongMap!263 (_ BitVec 64)) V!797)

(assert (=> b!10015 (= e!5743 (= (apply!26 lt!2445 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1434))))

(declare-fun b!10016 () Bool)

(declare-fun e!5742 () Unit!203)

(declare-fun lt!2434 () Unit!203)

(assert (=> b!10016 (= e!5742 lt!2434)))

(declare-fun lt!2440 () ListLongMap!263)

(declare-fun getCurrentListMapNoExtraKeys!10 (array!857 array!855 (_ BitVec 32) (_ BitVec 32) V!797 V!797 (_ BitVec 32) Int) ListLongMap!263)

(assert (=> b!10016 (= lt!2440 (getCurrentListMapNoExtraKeys!10 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!2436 () (_ BitVec 64))

(assert (=> b!10016 (= lt!2436 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!2443 () (_ BitVec 64))

(assert (=> b!10016 (= lt!2443 (select (arr!412 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!2438 () Unit!203)

(declare-fun addStillContains!11 (ListLongMap!263 (_ BitVec 64) V!797 (_ BitVec 64)) Unit!203)

(assert (=> b!10016 (= lt!2438 (addStillContains!11 lt!2440 lt!2436 zeroValue!1434 lt!2443))))

(declare-fun +!13 (ListLongMap!263 tuple2!258) ListLongMap!263)

(assert (=> b!10016 (contains!126 (+!13 lt!2440 (tuple2!259 lt!2436 zeroValue!1434)) lt!2443)))

(declare-fun lt!2453 () Unit!203)

(assert (=> b!10016 (= lt!2453 lt!2438)))

(declare-fun lt!2437 () ListLongMap!263)

(assert (=> b!10016 (= lt!2437 (getCurrentListMapNoExtraKeys!10 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!2452 () (_ BitVec 64))

(assert (=> b!10016 (= lt!2452 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!2454 () (_ BitVec 64))

(assert (=> b!10016 (= lt!2454 (select (arr!412 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!2441 () Unit!203)

(declare-fun addApplyDifferent!11 (ListLongMap!263 (_ BitVec 64) V!797 (_ BitVec 64)) Unit!203)

(assert (=> b!10016 (= lt!2441 (addApplyDifferent!11 lt!2437 lt!2452 minValue!1434 lt!2454))))

(assert (=> b!10016 (= (apply!26 (+!13 lt!2437 (tuple2!259 lt!2452 minValue!1434)) lt!2454) (apply!26 lt!2437 lt!2454))))

(declare-fun lt!2451 () Unit!203)

(assert (=> b!10016 (= lt!2451 lt!2441)))

(declare-fun lt!2442 () ListLongMap!263)

(assert (=> b!10016 (= lt!2442 (getCurrentListMapNoExtraKeys!10 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!2447 () (_ BitVec 64))

(assert (=> b!10016 (= lt!2447 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!2450 () (_ BitVec 64))

(assert (=> b!10016 (= lt!2450 (select (arr!412 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!2444 () Unit!203)

(assert (=> b!10016 (= lt!2444 (addApplyDifferent!11 lt!2442 lt!2447 zeroValue!1434 lt!2450))))

(assert (=> b!10016 (= (apply!26 (+!13 lt!2442 (tuple2!259 lt!2447 zeroValue!1434)) lt!2450) (apply!26 lt!2442 lt!2450))))

(declare-fun lt!2435 () Unit!203)

(assert (=> b!10016 (= lt!2435 lt!2444)))

(declare-fun lt!2448 () ListLongMap!263)

(assert (=> b!10016 (= lt!2448 (getCurrentListMapNoExtraKeys!10 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!2433 () (_ BitVec 64))

(assert (=> b!10016 (= lt!2433 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!2439 () (_ BitVec 64))

(assert (=> b!10016 (= lt!2439 (select (arr!412 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> b!10016 (= lt!2434 (addApplyDifferent!11 lt!2448 lt!2433 minValue!1434 lt!2439))))

(assert (=> b!10016 (= (apply!26 (+!13 lt!2448 (tuple2!259 lt!2433 minValue!1434)) lt!2439) (apply!26 lt!2448 lt!2439))))

(declare-fun bm!304 () Bool)

(declare-fun call!309 () ListLongMap!263)

(declare-fun call!312 () ListLongMap!263)

(assert (=> bm!304 (= call!309 call!312)))

(declare-fun b!10017 () Bool)

(declare-fun e!5748 () Bool)

(declare-fun call!311 () Bool)

(assert (=> b!10017 (= e!5748 (not call!311))))

(declare-fun b!10018 () Bool)

(declare-fun e!5741 () Bool)

(declare-fun call!308 () Bool)

(assert (=> b!10018 (= e!5741 (not call!308))))

(declare-fun b!10019 () Bool)

(declare-fun e!5738 () ListLongMap!263)

(declare-fun call!313 () ListLongMap!263)

(assert (=> b!10019 (= e!5738 call!313)))

(declare-fun b!10020 () Bool)

(declare-fun e!5746 () Bool)

(assert (=> b!10020 (= e!5746 (validKeyInArray!0 (select (arr!412 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!10021 () Bool)

(declare-fun e!5744 () ListLongMap!263)

(assert (=> b!10021 (= e!5744 (+!13 call!312 (tuple2!259 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434)))))

(declare-fun b!10022 () Bool)

(declare-fun res!8781 () Bool)

(declare-fun e!5745 () Bool)

(assert (=> b!10022 (=> (not res!8781) (not e!5745))))

(declare-fun e!5740 () Bool)

(assert (=> b!10022 (= res!8781 e!5740)))

(declare-fun res!8782 () Bool)

(assert (=> b!10022 (=> res!8782 e!5740)))

(assert (=> b!10022 (= res!8782 (not e!5746))))

(declare-fun res!8789 () Bool)

(assert (=> b!10022 (=> (not res!8789) (not e!5746))))

(assert (=> b!10022 (= res!8789 (bvslt #b00000000000000000000000000000000 (size!474 _keys!1806)))))

(declare-fun e!5739 () Bool)

(declare-fun b!10023 () Bool)

(declare-fun get!182 (ValueCell!216 V!797) V!797)

(declare-fun dynLambda!48 (Int (_ BitVec 64)) V!797)

(assert (=> b!10023 (= e!5739 (= (apply!26 lt!2445 (select (arr!412 _keys!1806) #b00000000000000000000000000000000)) (get!182 (select (arr!411 _values!1492) #b00000000000000000000000000000000) (dynLambda!48 defaultEntry!1495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!10023 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!473 _values!1492)))))

(assert (=> b!10023 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!474 _keys!1806)))))

(declare-fun bm!305 () Bool)

(assert (=> bm!305 (= call!308 (contains!126 lt!2445 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!10024 () Bool)

(declare-fun e!5749 () Bool)

(assert (=> b!10024 (= e!5748 e!5749)))

(declare-fun res!8783 () Bool)

(assert (=> b!10024 (= res!8783 call!311)))

(assert (=> b!10024 (=> (not res!8783) (not e!5749))))

(declare-fun b!10025 () Bool)

(declare-fun e!5750 () Bool)

(assert (=> b!10025 (= e!5750 (validKeyInArray!0 (select (arr!412 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun bm!306 () Bool)

(assert (=> bm!306 (= call!311 (contains!126 lt!2445 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!10026 () Bool)

(declare-fun e!5747 () ListLongMap!263)

(assert (=> b!10026 (= e!5744 e!5747)))

(declare-fun c!865 () Bool)

(assert (=> b!10026 (= c!865 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!10027 () Bool)

(assert (=> b!10027 (= e!5738 call!309)))

(declare-fun b!10028 () Bool)

(declare-fun res!8787 () Bool)

(assert (=> b!10028 (=> (not res!8787) (not e!5745))))

(assert (=> b!10028 (= res!8787 e!5748)))

(declare-fun c!860 () Bool)

(assert (=> b!10028 (= c!860 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!10029 () Bool)

(declare-fun Unit!208 () Unit!203)

(assert (=> b!10029 (= e!5742 Unit!208)))

(declare-fun b!10030 () Bool)

(assert (=> b!10030 (= e!5747 call!309)))

(declare-fun b!10031 () Bool)

(assert (=> b!10031 (= e!5741 e!5743)))

(declare-fun res!8786 () Bool)

(assert (=> b!10031 (= res!8786 call!308)))

(assert (=> b!10031 (=> (not res!8786) (not e!5743))))

(declare-fun b!10032 () Bool)

(assert (=> b!10032 (= e!5740 e!5739)))

(declare-fun res!8784 () Bool)

(assert (=> b!10032 (=> (not res!8784) (not e!5739))))

(assert (=> b!10032 (= res!8784 (contains!126 lt!2445 (select (arr!412 _keys!1806) #b00000000000000000000000000000000)))))

(assert (=> b!10032 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!474 _keys!1806)))))

(declare-fun bm!307 () Bool)

(declare-fun call!307 () ListLongMap!263)

(declare-fun call!310 () ListLongMap!263)

(assert (=> bm!307 (= call!307 call!310)))

(declare-fun c!863 () Bool)

(declare-fun bm!308 () Bool)

(assert (=> bm!308 (= call!312 (+!13 (ite c!863 call!310 (ite c!865 call!307 call!313)) (ite (or c!863 c!865) (tuple2!259 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1434) (tuple2!259 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434))))))

(declare-fun b!10033 () Bool)

(assert (=> b!10033 (= e!5745 e!5741)))

(declare-fun c!861 () Bool)

(assert (=> b!10033 (= c!861 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!309 () Bool)

(assert (=> bm!309 (= call!313 call!307)))

(declare-fun b!10034 () Bool)

(declare-fun c!862 () Bool)

(assert (=> b!10034 (= c!862 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!10034 (= e!5747 e!5738)))

(declare-fun d!975 () Bool)

(assert (=> d!975 e!5745))

(declare-fun res!8785 () Bool)

(assert (=> d!975 (=> (not res!8785) (not e!5745))))

(assert (=> d!975 (= res!8785 (or (bvsge #b00000000000000000000000000000000 (size!474 _keys!1806)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!474 _keys!1806)))))))

(declare-fun lt!2449 () ListLongMap!263)

(assert (=> d!975 (= lt!2445 lt!2449)))

(declare-fun lt!2446 () Unit!203)

(assert (=> d!975 (= lt!2446 e!5742)))

(declare-fun c!864 () Bool)

(assert (=> d!975 (= c!864 e!5750)))

(declare-fun res!8788 () Bool)

(assert (=> d!975 (=> (not res!8788) (not e!5750))))

(assert (=> d!975 (= res!8788 (bvslt #b00000000000000000000000000000000 (size!474 _keys!1806)))))

(assert (=> d!975 (= lt!2449 e!5744)))

(assert (=> d!975 (= c!863 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!975 (validMask!0 mask!2250)))

(assert (=> d!975 (= (getCurrentListMap!106 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) lt!2445)))

(declare-fun b!10035 () Bool)

(assert (=> b!10035 (= e!5749 (= (apply!26 lt!2445 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1434))))

(declare-fun bm!310 () Bool)

(assert (=> bm!310 (= call!310 (getCurrentListMapNoExtraKeys!10 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(assert (= (and d!975 c!863) b!10021))

(assert (= (and d!975 (not c!863)) b!10026))

(assert (= (and b!10026 c!865) b!10030))

(assert (= (and b!10026 (not c!865)) b!10034))

(assert (= (and b!10034 c!862) b!10027))

(assert (= (and b!10034 (not c!862)) b!10019))

(assert (= (or b!10027 b!10019) bm!309))

(assert (= (or b!10030 bm!309) bm!307))

(assert (= (or b!10030 b!10027) bm!304))

(assert (= (or b!10021 bm!307) bm!310))

(assert (= (or b!10021 bm!304) bm!308))

(assert (= (and d!975 res!8788) b!10025))

(assert (= (and d!975 c!864) b!10016))

(assert (= (and d!975 (not c!864)) b!10029))

(assert (= (and d!975 res!8785) b!10022))

(assert (= (and b!10022 res!8789) b!10020))

(assert (= (and b!10022 (not res!8782)) b!10032))

(assert (= (and b!10032 res!8784) b!10023))

(assert (= (and b!10022 res!8781) b!10028))

(assert (= (and b!10028 c!860) b!10024))

(assert (= (and b!10028 (not c!860)) b!10017))

(assert (= (and b!10024 res!8783) b!10035))

(assert (= (or b!10024 b!10017) bm!306))

(assert (= (and b!10028 res!8787) b!10033))

(assert (= (and b!10033 c!861) b!10031))

(assert (= (and b!10033 (not c!861)) b!10018))

(assert (= (and b!10031 res!8786) b!10015))

(assert (= (or b!10031 b!10018) bm!305))

(declare-fun b_lambda!355 () Bool)

(assert (=> (not b_lambda!355) (not b!10023)))

(declare-fun t!2433 () Bool)

(declare-fun tb!145 () Bool)

(assert (=> (and start!1116 (= defaultEntry!1495 defaultEntry!1495) t!2433) tb!145))

(declare-fun result!237 () Bool)

(assert (=> tb!145 (= result!237 tp_is_empty!465)))

(assert (=> b!10023 t!2433))

(declare-fun b_and!547 () Bool)

(assert (= b_and!543 (and (=> t!2433 result!237) b_and!547)))

(declare-fun m!6355 () Bool)

(assert (=> b!10032 m!6355))

(assert (=> b!10032 m!6355))

(declare-fun m!6357 () Bool)

(assert (=> b!10032 m!6357))

(declare-fun m!6359 () Bool)

(assert (=> b!10016 m!6359))

(declare-fun m!6361 () Bool)

(assert (=> b!10016 m!6361))

(declare-fun m!6363 () Bool)

(assert (=> b!10016 m!6363))

(declare-fun m!6365 () Bool)

(assert (=> b!10016 m!6365))

(declare-fun m!6367 () Bool)

(assert (=> b!10016 m!6367))

(assert (=> b!10016 m!6361))

(declare-fun m!6369 () Bool)

(assert (=> b!10016 m!6369))

(declare-fun m!6371 () Bool)

(assert (=> b!10016 m!6371))

(declare-fun m!6373 () Bool)

(assert (=> b!10016 m!6373))

(declare-fun m!6375 () Bool)

(assert (=> b!10016 m!6375))

(declare-fun m!6377 () Bool)

(assert (=> b!10016 m!6377))

(declare-fun m!6379 () Bool)

(assert (=> b!10016 m!6379))

(declare-fun m!6381 () Bool)

(assert (=> b!10016 m!6381))

(assert (=> b!10016 m!6355))

(assert (=> b!10016 m!6375))

(assert (=> b!10016 m!6363))

(assert (=> b!10016 m!6379))

(declare-fun m!6383 () Bool)

(assert (=> b!10016 m!6383))

(declare-fun m!6385 () Bool)

(assert (=> b!10016 m!6385))

(declare-fun m!6387 () Bool)

(assert (=> b!10016 m!6387))

(declare-fun m!6389 () Bool)

(assert (=> b!10016 m!6389))

(assert (=> b!10025 m!6355))

(assert (=> b!10025 m!6355))

(declare-fun m!6391 () Bool)

(assert (=> b!10025 m!6391))

(declare-fun m!6393 () Bool)

(assert (=> bm!308 m!6393))

(declare-fun m!6395 () Bool)

(assert (=> b!10035 m!6395))

(declare-fun m!6397 () Bool)

(assert (=> b!10021 m!6397))

(declare-fun m!6399 () Bool)

(assert (=> bm!306 m!6399))

(declare-fun m!6401 () Bool)

(assert (=> b!10015 m!6401))

(declare-fun m!6403 () Bool)

(assert (=> bm!305 m!6403))

(assert (=> d!975 m!6275))

(declare-fun m!6405 () Bool)

(assert (=> b!10023 m!6405))

(declare-fun m!6407 () Bool)

(assert (=> b!10023 m!6407))

(assert (=> b!10023 m!6355))

(declare-fun m!6409 () Bool)

(assert (=> b!10023 m!6409))

(assert (=> b!10023 m!6355))

(assert (=> b!10023 m!6407))

(assert (=> b!10023 m!6405))

(declare-fun m!6411 () Bool)

(assert (=> b!10023 m!6411))

(assert (=> bm!310 m!6371))

(assert (=> b!10020 m!6355))

(assert (=> b!10020 m!6355))

(assert (=> b!10020 m!6391))

(assert (=> b!9864 d!975))

(declare-fun d!977 () Bool)

(declare-fun res!8794 () Bool)

(declare-fun e!5755 () Bool)

(assert (=> d!977 (=> res!8794 e!5755)))

(assert (=> d!977 (= res!8794 (= (select (arr!412 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!977 (= (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) e!5755)))

(declare-fun b!10042 () Bool)

(declare-fun e!5756 () Bool)

(assert (=> b!10042 (= e!5755 e!5756)))

(declare-fun res!8795 () Bool)

(assert (=> b!10042 (=> (not res!8795) (not e!5756))))

(assert (=> b!10042 (= res!8795 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!474 _keys!1806)))))

(declare-fun b!10043 () Bool)

(assert (=> b!10043 (= e!5756 (arrayContainsKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!977 (not res!8794)) b!10042))

(assert (= (and b!10042 res!8795) b!10043))

(assert (=> d!977 m!6355))

(declare-fun m!6413 () Bool)

(assert (=> b!10043 m!6413))

(assert (=> b!9873 d!977))

(declare-fun d!979 () Bool)

(declare-fun e!5759 () Bool)

(assert (=> d!979 e!5759))

(declare-fun c!868 () Bool)

(assert (=> d!979 (= c!868 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!2457 () Unit!203)

(declare-fun choose!144 (array!857 array!855 (_ BitVec 32) (_ BitVec 32) V!797 V!797 (_ BitVec 64) Int) Unit!203)

(assert (=> d!979 (= lt!2457 (choose!144 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(assert (=> d!979 (validMask!0 mask!2250)))

(assert (=> d!979 (= (lemmaKeyInListMapIsInArray!76 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495) lt!2457)))

(declare-fun b!10048 () Bool)

(assert (=> b!10048 (= e!5759 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!10049 () Bool)

(assert (=> b!10049 (= e!5759 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!979 c!868) b!10048))

(assert (= (and d!979 (not c!868)) b!10049))

(declare-fun m!6415 () Bool)

(assert (=> d!979 m!6415))

(assert (=> d!979 m!6275))

(assert (=> b!10048 m!6281))

(assert (=> b!9873 d!979))

(declare-fun d!981 () Bool)

(assert (=> d!981 (= (inRange!0 (index!2292 lt!2333) mask!2250) (and (bvsge (index!2292 lt!2333) #b00000000000000000000000000000000) (bvslt (index!2292 lt!2333) (bvadd mask!2250 #b00000000000000000000000000000001))))))

(assert (=> b!9865 d!981))

(declare-fun bm!313 () Bool)

(declare-fun call!316 () Bool)

(assert (=> bm!313 (= call!316 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun b!10058 () Bool)

(declare-fun e!5768 () Bool)

(assert (=> b!10058 (= e!5768 call!316)))

(declare-fun d!983 () Bool)

(declare-fun res!8800 () Bool)

(declare-fun e!5767 () Bool)

(assert (=> d!983 (=> res!8800 e!5767)))

(assert (=> d!983 (= res!8800 (bvsge #b00000000000000000000000000000000 (size!474 _keys!1806)))))

(assert (=> d!983 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250) e!5767)))

(declare-fun b!10059 () Bool)

(declare-fun e!5766 () Bool)

(assert (=> b!10059 (= e!5767 e!5766)))

(declare-fun c!871 () Bool)

(assert (=> b!10059 (= c!871 (validKeyInArray!0 (select (arr!412 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!10060 () Bool)

(assert (=> b!10060 (= e!5766 e!5768)))

(declare-fun lt!2466 () (_ BitVec 64))

(assert (=> b!10060 (= lt!2466 (select (arr!412 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!2464 () Unit!203)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!857 (_ BitVec 64) (_ BitVec 32)) Unit!203)

(assert (=> b!10060 (= lt!2464 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!2466 #b00000000000000000000000000000000))))

(assert (=> b!10060 (arrayContainsKey!0 _keys!1806 lt!2466 #b00000000000000000000000000000000)))

(declare-fun lt!2465 () Unit!203)

(assert (=> b!10060 (= lt!2465 lt!2464)))

(declare-fun res!8801 () Bool)

(assert (=> b!10060 (= res!8801 (= (seekEntryOrOpen!0 (select (arr!412 _keys!1806) #b00000000000000000000000000000000) _keys!1806 mask!2250) (Found!43 #b00000000000000000000000000000000)))))

(assert (=> b!10060 (=> (not res!8801) (not e!5768))))

(declare-fun b!10061 () Bool)

(assert (=> b!10061 (= e!5766 call!316)))

(assert (= (and d!983 (not res!8800)) b!10059))

(assert (= (and b!10059 c!871) b!10060))

(assert (= (and b!10059 (not c!871)) b!10061))

(assert (= (and b!10060 res!8801) b!10058))

(assert (= (or b!10058 b!10061) bm!313))

(declare-fun m!6417 () Bool)

(assert (=> bm!313 m!6417))

(assert (=> b!10059 m!6355))

(assert (=> b!10059 m!6355))

(assert (=> b!10059 m!6391))

(assert (=> b!10060 m!6355))

(declare-fun m!6419 () Bool)

(assert (=> b!10060 m!6419))

(declare-fun m!6421 () Bool)

(assert (=> b!10060 m!6421))

(assert (=> b!10060 m!6355))

(declare-fun m!6423 () Bool)

(assert (=> b!10060 m!6423))

(assert (=> b!9874 d!983))

(declare-fun d!985 () Bool)

(assert (=> d!985 (= (validKeyInArray!0 k0!1278) (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!9875 d!985))

(assert (=> b!9866 d!977))

(declare-fun call!317 () Bool)

(declare-fun bm!314 () Bool)

(assert (=> bm!314 (= call!317 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!2331 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun b!10062 () Bool)

(declare-fun e!5771 () Bool)

(assert (=> b!10062 (= e!5771 call!317)))

(declare-fun d!987 () Bool)

(declare-fun res!8802 () Bool)

(declare-fun e!5770 () Bool)

(assert (=> d!987 (=> res!8802 e!5770)))

(assert (=> d!987 (= res!8802 (bvsge lt!2331 (size!474 _keys!1806)))))

(assert (=> d!987 (= (arrayForallSeekEntryOrOpenFound!0 lt!2331 _keys!1806 mask!2250) e!5770)))

(declare-fun b!10063 () Bool)

(declare-fun e!5769 () Bool)

(assert (=> b!10063 (= e!5770 e!5769)))

(declare-fun c!872 () Bool)

(assert (=> b!10063 (= c!872 (validKeyInArray!0 (select (arr!412 _keys!1806) lt!2331)))))

(declare-fun b!10064 () Bool)

(assert (=> b!10064 (= e!5769 e!5771)))

(declare-fun lt!2469 () (_ BitVec 64))

(assert (=> b!10064 (= lt!2469 (select (arr!412 _keys!1806) lt!2331))))

(declare-fun lt!2467 () Unit!203)

(assert (=> b!10064 (= lt!2467 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!2469 lt!2331))))

(assert (=> b!10064 (arrayContainsKey!0 _keys!1806 lt!2469 #b00000000000000000000000000000000)))

(declare-fun lt!2468 () Unit!203)

(assert (=> b!10064 (= lt!2468 lt!2467)))

(declare-fun res!8803 () Bool)

(assert (=> b!10064 (= res!8803 (= (seekEntryOrOpen!0 (select (arr!412 _keys!1806) lt!2331) _keys!1806 mask!2250) (Found!43 lt!2331)))))

(assert (=> b!10064 (=> (not res!8803) (not e!5771))))

(declare-fun b!10065 () Bool)

(assert (=> b!10065 (= e!5769 call!317)))

(assert (= (and d!987 (not res!8802)) b!10063))

(assert (= (and b!10063 c!872) b!10064))

(assert (= (and b!10063 (not c!872)) b!10065))

(assert (= (and b!10064 res!8803) b!10062))

(assert (= (or b!10062 b!10065) bm!314))

(declare-fun m!6425 () Bool)

(assert (=> bm!314 m!6425))

(declare-fun m!6427 () Bool)

(assert (=> b!10063 m!6427))

(assert (=> b!10063 m!6427))

(declare-fun m!6429 () Bool)

(assert (=> b!10063 m!6429))

(assert (=> b!10064 m!6427))

(declare-fun m!6431 () Bool)

(assert (=> b!10064 m!6431))

(declare-fun m!6433 () Bool)

(assert (=> b!10064 m!6433))

(assert (=> b!10064 m!6427))

(declare-fun m!6435 () Bool)

(assert (=> b!10064 m!6435))

(assert (=> b!9876 d!987))

(declare-fun d!989 () Bool)

(assert (=> d!989 (arrayForallSeekEntryOrOpenFound!0 lt!2331 _keys!1806 mask!2250)))

(declare-fun lt!2472 () Unit!203)

(declare-fun choose!38 (array!857 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!203)

(assert (=> d!989 (= lt!2472 (choose!38 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2331))))

(assert (=> d!989 (validMask!0 mask!2250)))

(assert (=> d!989 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2331) lt!2472)))

(declare-fun bs!338 () Bool)

(assert (= bs!338 d!989))

(assert (=> bs!338 m!6249))

(declare-fun m!6437 () Bool)

(assert (=> bs!338 m!6437))

(assert (=> bs!338 m!6275))

(assert (=> b!9876 d!989))

(declare-fun d!991 () Bool)

(declare-fun lt!2475 () (_ BitVec 32))

(assert (=> d!991 (and (or (bvslt lt!2475 #b00000000000000000000000000000000) (bvsge lt!2475 (size!474 _keys!1806)) (and (bvsge lt!2475 #b00000000000000000000000000000000) (bvslt lt!2475 (size!474 _keys!1806)))) (bvsge lt!2475 #b00000000000000000000000000000000) (bvslt lt!2475 (size!474 _keys!1806)) (= (select (arr!412 _keys!1806) lt!2475) k0!1278))))

(declare-fun e!5774 () (_ BitVec 32))

(assert (=> d!991 (= lt!2475 e!5774)))

(declare-fun c!875 () Bool)

(assert (=> d!991 (= c!875 (= (select (arr!412 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!991 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!474 _keys!1806)) (bvslt (size!474 _keys!1806) #b01111111111111111111111111111111))))

(assert (=> d!991 (= (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) lt!2475)))

(declare-fun b!10070 () Bool)

(assert (=> b!10070 (= e!5774 #b00000000000000000000000000000000)))

(declare-fun b!10071 () Bool)

(assert (=> b!10071 (= e!5774 (arrayScanForKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!991 c!875) b!10070))

(assert (= (and d!991 (not c!875)) b!10071))

(declare-fun m!6439 () Bool)

(assert (=> d!991 m!6439))

(assert (=> d!991 m!6355))

(declare-fun m!6441 () Bool)

(assert (=> b!10071 m!6441))

(assert (=> b!9876 d!991))

(declare-fun b!10082 () Bool)

(declare-fun e!5786 () Bool)

(declare-fun e!5785 () Bool)

(assert (=> b!10082 (= e!5786 e!5785)))

(declare-fun c!878 () Bool)

(assert (=> b!10082 (= c!878 (validKeyInArray!0 (select (arr!412 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun d!993 () Bool)

(declare-fun res!8812 () Bool)

(declare-fun e!5783 () Bool)

(assert (=> d!993 (=> res!8812 e!5783)))

(assert (=> d!993 (= res!8812 (bvsge #b00000000000000000000000000000000 (size!474 _keys!1806)))))

(assert (=> d!993 (= (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!281) e!5783)))

(declare-fun b!10083 () Bool)

(assert (=> b!10083 (= e!5783 e!5786)))

(declare-fun res!8811 () Bool)

(assert (=> b!10083 (=> (not res!8811) (not e!5786))))

(declare-fun e!5784 () Bool)

(assert (=> b!10083 (= res!8811 (not e!5784))))

(declare-fun res!8810 () Bool)

(assert (=> b!10083 (=> (not res!8810) (not e!5784))))

(assert (=> b!10083 (= res!8810 (validKeyInArray!0 (select (arr!412 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!10084 () Bool)

(declare-fun call!320 () Bool)

(assert (=> b!10084 (= e!5785 call!320)))

(declare-fun b!10085 () Bool)

(assert (=> b!10085 (= e!5785 call!320)))

(declare-fun bm!317 () Bool)

(assert (=> bm!317 (= call!320 (arrayNoDuplicates!0 _keys!1806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!878 (Cons!280 (select (arr!412 _keys!1806) #b00000000000000000000000000000000) Nil!281) Nil!281)))))

(declare-fun b!10086 () Bool)

(declare-fun contains!128 (List!284 (_ BitVec 64)) Bool)

(assert (=> b!10086 (= e!5784 (contains!128 Nil!281 (select (arr!412 _keys!1806) #b00000000000000000000000000000000)))))

(assert (= (and d!993 (not res!8812)) b!10083))

(assert (= (and b!10083 res!8810) b!10086))

(assert (= (and b!10083 res!8811) b!10082))

(assert (= (and b!10082 c!878) b!10084))

(assert (= (and b!10082 (not c!878)) b!10085))

(assert (= (or b!10084 b!10085) bm!317))

(assert (=> b!10082 m!6355))

(assert (=> b!10082 m!6355))

(assert (=> b!10082 m!6391))

(assert (=> b!10083 m!6355))

(assert (=> b!10083 m!6355))

(assert (=> b!10083 m!6391))

(assert (=> bm!317 m!6355))

(declare-fun m!6443 () Bool)

(assert (=> bm!317 m!6443))

(assert (=> b!10086 m!6355))

(assert (=> b!10086 m!6355))

(declare-fun m!6445 () Bool)

(assert (=> b!10086 m!6445))

(assert (=> b!9877 d!993))

(declare-fun b!10094 () Bool)

(declare-fun e!5791 () Bool)

(assert (=> b!10094 (= e!5791 tp_is_empty!465)))

(declare-fun b!10093 () Bool)

(declare-fun e!5792 () Bool)

(assert (=> b!10093 (= e!5792 tp_is_empty!465)))

(declare-fun condMapEmpty!689 () Bool)

(declare-fun mapDefault!689 () ValueCell!216)

(assert (=> mapNonEmpty!683 (= condMapEmpty!689 (= mapRest!683 ((as const (Array (_ BitVec 32) ValueCell!216)) mapDefault!689)))))

(declare-fun mapRes!689 () Bool)

(assert (=> mapNonEmpty!683 (= tp!1406 (and e!5791 mapRes!689))))

(declare-fun mapNonEmpty!689 () Bool)

(declare-fun tp!1415 () Bool)

(assert (=> mapNonEmpty!689 (= mapRes!689 (and tp!1415 e!5792))))

(declare-fun mapKey!689 () (_ BitVec 32))

(declare-fun mapValue!689 () ValueCell!216)

(declare-fun mapRest!689 () (Array (_ BitVec 32) ValueCell!216))

(assert (=> mapNonEmpty!689 (= mapRest!683 (store mapRest!689 mapKey!689 mapValue!689))))

(declare-fun mapIsEmpty!689 () Bool)

(assert (=> mapIsEmpty!689 mapRes!689))

(assert (= (and mapNonEmpty!683 condMapEmpty!689) mapIsEmpty!689))

(assert (= (and mapNonEmpty!683 (not condMapEmpty!689)) mapNonEmpty!689))

(assert (= (and mapNonEmpty!689 ((_ is ValueCellFull!216) mapValue!689)) b!10093))

(assert (= (and mapNonEmpty!683 ((_ is ValueCellFull!216) mapDefault!689)) b!10094))

(declare-fun m!6447 () Bool)

(assert (=> mapNonEmpty!689 m!6447))

(declare-fun b_lambda!357 () Bool)

(assert (= b_lambda!355 (or (and start!1116 b_free!387) b_lambda!357)))

(check-sat (not b!10086) (not bm!310) (not b!10063) (not bm!314) (not bm!308) (not d!975) (not b_next!387) (not bm!317) (not d!973) (not b!10025) (not b!9972) (not mapNonEmpty!689) (not d!989) (not b!10048) (not bm!305) tp_is_empty!465 (not b!9942) (not b!10020) (not b!10021) (not b!9970) (not d!979) (not bm!306) (not b_lambda!357) (not b!10060) (not bm!313) (not d!963) (not b!10032) (not b!10059) (not b!10071) (not b!10083) (not b!10016) (not b!9959) (not b!10064) (not b!10023) (not d!965) (not b!10015) (not b!10043) b_and!547 (not b!10035) (not b!10082) (not d!961))
(check-sat b_and!547 (not b_next!387))
