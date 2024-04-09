; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752 () Bool)

(assert start!752)

(declare-fun b_free!165 () Bool)

(declare-fun b_next!165 () Bool)

(assert (=> start!752 (= b_free!165 (not b_next!165))))

(declare-fun tp!721 () Bool)

(declare-fun b_and!309 () Bool)

(assert (=> start!752 (= tp!721 b_and!309)))

(declare-fun mapIsEmpty!332 () Bool)

(declare-fun mapRes!332 () Bool)

(assert (=> mapIsEmpty!332 mapRes!332))

(declare-fun b!5324 () Bool)

(declare-fun res!6181 () Bool)

(declare-fun e!2875 () Bool)

(assert (=> b!5324 (=> (not res!6181) (not e!2875))))

(declare-datatypes ((array!421 0))(
  ( (array!422 (arr!200 (Array (_ BitVec 32) (_ BitVec 64))) (size!262 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!421)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!421 (_ BitVec 32)) Bool)

(assert (=> b!5324 (= res!6181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!5325 () Bool)

(declare-fun e!2876 () Bool)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!421 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5325 (= e!2876 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!5326 () Bool)

(declare-fun res!6187 () Bool)

(assert (=> b!5326 (=> (not res!6187) (not e!2875))))

(declare-datatypes ((V!501 0))(
  ( (V!502 (val!127 Int)) )
))
(declare-datatypes ((ValueCell!105 0))(
  ( (ValueCellFull!105 (v!1217 V!501)) (EmptyCell!105) )
))
(declare-datatypes ((array!423 0))(
  ( (array!424 (arr!201 (Array (_ BitVec 32) ValueCell!105)) (size!263 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!423)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!5326 (= res!6187 (and (= (size!263 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!262 _keys!1806) (size!263 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!5327 () Bool)

(declare-fun e!2870 () Bool)

(declare-fun e!2871 () Bool)

(assert (=> b!5327 (= e!2870 (and e!2871 mapRes!332))))

(declare-fun condMapEmpty!332 () Bool)

(declare-fun mapDefault!332 () ValueCell!105)

(assert (=> b!5327 (= condMapEmpty!332 (= (arr!201 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!105)) mapDefault!332)))))

(declare-fun b!5328 () Bool)

(declare-fun e!2872 () Bool)

(assert (=> b!5328 (= e!2875 (not e!2872))))

(declare-fun res!6184 () Bool)

(assert (=> b!5328 (=> res!6184 e!2872)))

(assert (=> b!5328 (= res!6184 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(assert (=> b!5328 e!2876))

(declare-fun c!350 () Bool)

(assert (=> b!5328 (= c!350 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!501)

(declare-fun zeroValue!1434 () V!501)

(declare-datatypes ((Unit!65 0))(
  ( (Unit!66) )
))
(declare-fun lt!918 () Unit!65)

(declare-fun lemmaKeyInListMapIsInArray!19 (array!421 array!423 (_ BitVec 32) (_ BitVec 32) V!501 V!501 (_ BitVec 64) Int) Unit!65)

(assert (=> b!5328 (= lt!918 (lemmaKeyInListMapIsInArray!19 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!5329 () Bool)

(assert (=> b!5329 (= e!2872 (and (bvslt #b00000000000000000000000000000000 (size!262 _keys!1806)) (bvslt (size!262 _keys!1806) #b01111111111111111111111111111111)))))

(declare-fun b!5330 () Bool)

(declare-fun res!6185 () Bool)

(assert (=> b!5330 (=> (not res!6185) (not e!2875))))

(declare-datatypes ((List!128 0))(
  ( (Nil!125) (Cons!124 (h!690 (_ BitVec 64)) (t!2261 List!128)) )
))
(declare-fun arrayNoDuplicates!0 (array!421 (_ BitVec 32) List!128) Bool)

(assert (=> b!5330 (= res!6185 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!125))))

(declare-fun b!5331 () Bool)

(declare-fun res!6182 () Bool)

(assert (=> b!5331 (=> (not res!6182) (not e!2875))))

(declare-datatypes ((tuple2!118 0))(
  ( (tuple2!119 (_1!59 (_ BitVec 64)) (_2!59 V!501)) )
))
(declare-datatypes ((List!129 0))(
  ( (Nil!126) (Cons!125 (h!691 tuple2!118) (t!2262 List!129)) )
))
(declare-datatypes ((ListLongMap!123 0))(
  ( (ListLongMap!124 (toList!77 List!129)) )
))
(declare-fun contains!50 (ListLongMap!123 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!36 (array!421 array!423 (_ BitVec 32) (_ BitVec 32) V!501 V!501 (_ BitVec 32) Int) ListLongMap!123)

(assert (=> b!5331 (= res!6182 (contains!50 (getCurrentListMap!36 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun res!6183 () Bool)

(assert (=> start!752 (=> (not res!6183) (not e!2875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!752 (= res!6183 (validMask!0 mask!2250))))

(assert (=> start!752 e!2875))

(assert (=> start!752 tp!721))

(assert (=> start!752 true))

(declare-fun array_inv!141 (array!423) Bool)

(assert (=> start!752 (and (array_inv!141 _values!1492) e!2870)))

(declare-fun tp_is_empty!243 () Bool)

(assert (=> start!752 tp_is_empty!243))

(declare-fun array_inv!142 (array!421) Bool)

(assert (=> start!752 (array_inv!142 _keys!1806)))

(declare-fun b!5332 () Bool)

(assert (=> b!5332 (= e!2876 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!5333 () Bool)

(declare-fun res!6186 () Bool)

(assert (=> b!5333 (=> (not res!6186) (not e!2875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!5333 (= res!6186 (validKeyInArray!0 k0!1278))))

(declare-fun mapNonEmpty!332 () Bool)

(declare-fun tp!722 () Bool)

(declare-fun e!2874 () Bool)

(assert (=> mapNonEmpty!332 (= mapRes!332 (and tp!722 e!2874))))

(declare-fun mapRest!332 () (Array (_ BitVec 32) ValueCell!105))

(declare-fun mapValue!332 () ValueCell!105)

(declare-fun mapKey!332 () (_ BitVec 32))

(assert (=> mapNonEmpty!332 (= (arr!201 _values!1492) (store mapRest!332 mapKey!332 mapValue!332))))

(declare-fun b!5334 () Bool)

(assert (=> b!5334 (= e!2871 tp_is_empty!243)))

(declare-fun b!5335 () Bool)

(assert (=> b!5335 (= e!2874 tp_is_empty!243)))

(assert (= (and start!752 res!6183) b!5326))

(assert (= (and b!5326 res!6187) b!5324))

(assert (= (and b!5324 res!6181) b!5330))

(assert (= (and b!5330 res!6185) b!5331))

(assert (= (and b!5331 res!6182) b!5333))

(assert (= (and b!5333 res!6186) b!5328))

(assert (= (and b!5328 c!350) b!5325))

(assert (= (and b!5328 (not c!350)) b!5332))

(assert (= (and b!5328 (not res!6184)) b!5329))

(assert (= (and b!5327 condMapEmpty!332) mapIsEmpty!332))

(assert (= (and b!5327 (not condMapEmpty!332)) mapNonEmpty!332))

(get-info :version)

(assert (= (and mapNonEmpty!332 ((_ is ValueCellFull!105) mapValue!332)) b!5335))

(assert (= (and b!5327 ((_ is ValueCellFull!105) mapDefault!332)) b!5334))

(assert (= start!752 b!5327))

(declare-fun m!2943 () Bool)

(assert (=> b!5333 m!2943))

(declare-fun m!2945 () Bool)

(assert (=> b!5324 m!2945))

(declare-fun m!2947 () Bool)

(assert (=> b!5330 m!2947))

(declare-fun m!2949 () Bool)

(assert (=> start!752 m!2949))

(declare-fun m!2951 () Bool)

(assert (=> start!752 m!2951))

(declare-fun m!2953 () Bool)

(assert (=> start!752 m!2953))

(declare-fun m!2955 () Bool)

(assert (=> b!5325 m!2955))

(declare-fun m!2957 () Bool)

(assert (=> b!5331 m!2957))

(assert (=> b!5331 m!2957))

(declare-fun m!2959 () Bool)

(assert (=> b!5331 m!2959))

(assert (=> b!5328 m!2955))

(declare-fun m!2961 () Bool)

(assert (=> b!5328 m!2961))

(declare-fun m!2963 () Bool)

(assert (=> mapNonEmpty!332 m!2963))

(check-sat tp_is_empty!243 (not b!5324) (not b!5328) (not mapNonEmpty!332) (not start!752) (not b_next!165) (not b!5330) (not b!5331) b_and!309 (not b!5333) (not b!5325))
(check-sat b_and!309 (not b_next!165))
(get-model)

(declare-fun d!741 () Bool)

(declare-fun res!6213 () Bool)

(declare-fun e!2902 () Bool)

(assert (=> d!741 (=> res!6213 e!2902)))

(assert (=> d!741 (= res!6213 (= (select (arr!200 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!741 (= (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) e!2902)))

(declare-fun b!5376 () Bool)

(declare-fun e!2903 () Bool)

(assert (=> b!5376 (= e!2902 e!2903)))

(declare-fun res!6214 () Bool)

(assert (=> b!5376 (=> (not res!6214) (not e!2903))))

(assert (=> b!5376 (= res!6214 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!262 _keys!1806)))))

(declare-fun b!5377 () Bool)

(assert (=> b!5377 (= e!2903 (arrayContainsKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!741 (not res!6213)) b!5376))

(assert (= (and b!5376 res!6214) b!5377))

(declare-fun m!2987 () Bool)

(assert (=> d!741 m!2987))

(declare-fun m!2989 () Bool)

(assert (=> b!5377 m!2989))

(assert (=> b!5325 d!741))

(declare-fun d!743 () Bool)

(declare-fun e!2909 () Bool)

(assert (=> d!743 e!2909))

(declare-fun res!6217 () Bool)

(assert (=> d!743 (=> res!6217 e!2909)))

(declare-fun lt!932 () Bool)

(assert (=> d!743 (= res!6217 (not lt!932))))

(declare-fun lt!933 () Bool)

(assert (=> d!743 (= lt!932 lt!933)))

(declare-fun lt!931 () Unit!65)

(declare-fun e!2908 () Unit!65)

(assert (=> d!743 (= lt!931 e!2908)))

(declare-fun c!356 () Bool)

(assert (=> d!743 (= c!356 lt!933)))

(declare-fun containsKey!4 (List!129 (_ BitVec 64)) Bool)

(assert (=> d!743 (= lt!933 (containsKey!4 (toList!77 (getCurrentListMap!36 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(assert (=> d!743 (= (contains!50 (getCurrentListMap!36 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278) lt!932)))

(declare-fun b!5384 () Bool)

(declare-fun lt!930 () Unit!65)

(assert (=> b!5384 (= e!2908 lt!930)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!4 (List!129 (_ BitVec 64)) Unit!65)

(assert (=> b!5384 (= lt!930 (lemmaContainsKeyImpliesGetValueByKeyDefined!4 (toList!77 (getCurrentListMap!36 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-datatypes ((Option!16 0))(
  ( (Some!15 (v!1219 V!501)) (None!14) )
))
(declare-fun isDefined!5 (Option!16) Bool)

(declare-fun getValueByKey!10 (List!129 (_ BitVec 64)) Option!16)

(assert (=> b!5384 (isDefined!5 (getValueByKey!10 (toList!77 (getCurrentListMap!36 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-fun b!5385 () Bool)

(declare-fun Unit!67 () Unit!65)

(assert (=> b!5385 (= e!2908 Unit!67)))

(declare-fun b!5386 () Bool)

(assert (=> b!5386 (= e!2909 (isDefined!5 (getValueByKey!10 (toList!77 (getCurrentListMap!36 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278)))))

(assert (= (and d!743 c!356) b!5384))

(assert (= (and d!743 (not c!356)) b!5385))

(assert (= (and d!743 (not res!6217)) b!5386))

(declare-fun m!2991 () Bool)

(assert (=> d!743 m!2991))

(declare-fun m!2993 () Bool)

(assert (=> b!5384 m!2993))

(declare-fun m!2995 () Bool)

(assert (=> b!5384 m!2995))

(assert (=> b!5384 m!2995))

(declare-fun m!2997 () Bool)

(assert (=> b!5384 m!2997))

(assert (=> b!5386 m!2995))

(assert (=> b!5386 m!2995))

(assert (=> b!5386 m!2997))

(assert (=> b!5331 d!743))

(declare-fun b!5429 () Bool)

(declare-fun e!2944 () ListLongMap!123)

(declare-fun call!149 () ListLongMap!123)

(assert (=> b!5429 (= e!2944 call!149)))

(declare-fun b!5430 () Bool)

(declare-fun e!2936 () Bool)

(declare-fun e!2948 () Bool)

(assert (=> b!5430 (= e!2936 e!2948)))

(declare-fun res!6241 () Bool)

(declare-fun call!146 () Bool)

(assert (=> b!5430 (= res!6241 call!146)))

(assert (=> b!5430 (=> (not res!6241) (not e!2948))))

(declare-fun bm!140 () Bool)

(declare-fun call!148 () Bool)

(declare-fun lt!985 () ListLongMap!123)

(assert (=> bm!140 (= call!148 (contains!50 lt!985 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!141 () Bool)

(assert (=> bm!141 (= call!146 (contains!50 lt!985 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!5431 () Bool)

(declare-fun e!2946 () Unit!65)

(declare-fun Unit!68 () Unit!65)

(assert (=> b!5431 (= e!2946 Unit!68)))

(declare-fun b!5432 () Bool)

(declare-fun e!2938 () Bool)

(declare-fun apply!20 (ListLongMap!123 (_ BitVec 64)) V!501)

(assert (=> b!5432 (= e!2938 (= (apply!20 lt!985 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1434))))

(declare-fun b!5433 () Bool)

(assert (=> b!5433 (= e!2948 (= (apply!20 lt!985 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1434))))

(declare-fun bm!142 () Bool)

(declare-fun call!144 () ListLongMap!123)

(declare-fun call!143 () ListLongMap!123)

(assert (=> bm!142 (= call!144 call!143)))

(declare-fun bm!143 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4 (array!421 array!423 (_ BitVec 32) (_ BitVec 32) V!501 V!501 (_ BitVec 32) Int) ListLongMap!123)

(assert (=> bm!143 (= call!143 (getCurrentListMapNoExtraKeys!4 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun e!2942 () Bool)

(declare-fun b!5435 () Bool)

(declare-fun get!102 (ValueCell!105 V!501) V!501)

(declare-fun dynLambda!42 (Int (_ BitVec 64)) V!501)

(assert (=> b!5435 (= e!2942 (= (apply!20 lt!985 (select (arr!200 _keys!1806) #b00000000000000000000000000000000)) (get!102 (select (arr!201 _values!1492) #b00000000000000000000000000000000) (dynLambda!42 defaultEntry!1495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!5435 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!263 _values!1492)))))

(assert (=> b!5435 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!262 _keys!1806)))))

(declare-fun b!5436 () Bool)

(declare-fun e!2945 () Bool)

(assert (=> b!5436 (= e!2945 e!2938)))

(declare-fun res!6243 () Bool)

(assert (=> b!5436 (= res!6243 call!148)))

(assert (=> b!5436 (=> (not res!6243) (not e!2938))))

(declare-fun b!5437 () Bool)

(declare-fun e!2943 () ListLongMap!123)

(declare-fun call!147 () ListLongMap!123)

(assert (=> b!5437 (= e!2943 call!147)))

(declare-fun b!5438 () Bool)

(declare-fun res!6244 () Bool)

(declare-fun e!2947 () Bool)

(assert (=> b!5438 (=> (not res!6244) (not e!2947))))

(assert (=> b!5438 (= res!6244 e!2945)))

(declare-fun c!370 () Bool)

(assert (=> b!5438 (= c!370 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!5439 () Bool)

(declare-fun e!2939 () Bool)

(assert (=> b!5439 (= e!2939 (validKeyInArray!0 (select (arr!200 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!5440 () Bool)

(declare-fun e!2940 () Bool)

(assert (=> b!5440 (= e!2940 (validKeyInArray!0 (select (arr!200 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun bm!144 () Bool)

(assert (=> bm!144 (= call!149 call!144)))

(declare-fun b!5441 () Bool)

(declare-fun e!2937 () Bool)

(assert (=> b!5441 (= e!2937 e!2942)))

(declare-fun res!6237 () Bool)

(assert (=> b!5441 (=> (not res!6237) (not e!2942))))

(assert (=> b!5441 (= res!6237 (contains!50 lt!985 (select (arr!200 _keys!1806) #b00000000000000000000000000000000)))))

(assert (=> b!5441 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!262 _keys!1806)))))

(declare-fun bm!145 () Bool)

(declare-fun call!145 () ListLongMap!123)

(assert (=> bm!145 (= call!147 call!145)))

(declare-fun b!5442 () Bool)

(assert (=> b!5442 (= e!2947 e!2936)))

(declare-fun c!373 () Bool)

(assert (=> b!5442 (= c!373 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!5443 () Bool)

(declare-fun lt!982 () Unit!65)

(assert (=> b!5443 (= e!2946 lt!982)))

(declare-fun lt!997 () ListLongMap!123)

(assert (=> b!5443 (= lt!997 (getCurrentListMapNoExtraKeys!4 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!986 () (_ BitVec 64))

(assert (=> b!5443 (= lt!986 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!980 () (_ BitVec 64))

(assert (=> b!5443 (= lt!980 (select (arr!200 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!979 () Unit!65)

(declare-fun addStillContains!5 (ListLongMap!123 (_ BitVec 64) V!501 (_ BitVec 64)) Unit!65)

(assert (=> b!5443 (= lt!979 (addStillContains!5 lt!997 lt!986 zeroValue!1434 lt!980))))

(declare-fun +!7 (ListLongMap!123 tuple2!118) ListLongMap!123)

(assert (=> b!5443 (contains!50 (+!7 lt!997 (tuple2!119 lt!986 zeroValue!1434)) lt!980)))

(declare-fun lt!999 () Unit!65)

(assert (=> b!5443 (= lt!999 lt!979)))

(declare-fun lt!991 () ListLongMap!123)

(assert (=> b!5443 (= lt!991 (getCurrentListMapNoExtraKeys!4 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!992 () (_ BitVec 64))

(assert (=> b!5443 (= lt!992 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!995 () (_ BitVec 64))

(assert (=> b!5443 (= lt!995 (select (arr!200 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!987 () Unit!65)

(declare-fun addApplyDifferent!5 (ListLongMap!123 (_ BitVec 64) V!501 (_ BitVec 64)) Unit!65)

(assert (=> b!5443 (= lt!987 (addApplyDifferent!5 lt!991 lt!992 minValue!1434 lt!995))))

(assert (=> b!5443 (= (apply!20 (+!7 lt!991 (tuple2!119 lt!992 minValue!1434)) lt!995) (apply!20 lt!991 lt!995))))

(declare-fun lt!990 () Unit!65)

(assert (=> b!5443 (= lt!990 lt!987)))

(declare-fun lt!983 () ListLongMap!123)

(assert (=> b!5443 (= lt!983 (getCurrentListMapNoExtraKeys!4 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!984 () (_ BitVec 64))

(assert (=> b!5443 (= lt!984 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!994 () (_ BitVec 64))

(assert (=> b!5443 (= lt!994 (select (arr!200 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!978 () Unit!65)

(assert (=> b!5443 (= lt!978 (addApplyDifferent!5 lt!983 lt!984 zeroValue!1434 lt!994))))

(assert (=> b!5443 (= (apply!20 (+!7 lt!983 (tuple2!119 lt!984 zeroValue!1434)) lt!994) (apply!20 lt!983 lt!994))))

(declare-fun lt!988 () Unit!65)

(assert (=> b!5443 (= lt!988 lt!978)))

(declare-fun lt!998 () ListLongMap!123)

(assert (=> b!5443 (= lt!998 (getCurrentListMapNoExtraKeys!4 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!993 () (_ BitVec 64))

(assert (=> b!5443 (= lt!993 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!989 () (_ BitVec 64))

(assert (=> b!5443 (= lt!989 (select (arr!200 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> b!5443 (= lt!982 (addApplyDifferent!5 lt!998 lt!993 minValue!1434 lt!989))))

(assert (=> b!5443 (= (apply!20 (+!7 lt!998 (tuple2!119 lt!993 minValue!1434)) lt!989) (apply!20 lt!998 lt!989))))

(declare-fun c!369 () Bool)

(declare-fun c!371 () Bool)

(declare-fun bm!146 () Bool)

(assert (=> bm!146 (= call!145 (+!7 (ite c!371 call!143 (ite c!369 call!144 call!149)) (ite (or c!371 c!369) (tuple2!119 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1434) (tuple2!119 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434))))))

(declare-fun b!5444 () Bool)

(assert (=> b!5444 (= e!2936 (not call!146))))

(declare-fun b!5445 () Bool)

(declare-fun c!372 () Bool)

(assert (=> b!5445 (= c!372 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!5445 (= e!2943 e!2944)))

(declare-fun b!5446 () Bool)

(assert (=> b!5446 (= e!2945 (not call!148))))

(declare-fun b!5447 () Bool)

(declare-fun res!6236 () Bool)

(assert (=> b!5447 (=> (not res!6236) (not e!2947))))

(assert (=> b!5447 (= res!6236 e!2937)))

(declare-fun res!6242 () Bool)

(assert (=> b!5447 (=> res!6242 e!2937)))

(assert (=> b!5447 (= res!6242 (not e!2939))))

(declare-fun res!6239 () Bool)

(assert (=> b!5447 (=> (not res!6239) (not e!2939))))

(assert (=> b!5447 (= res!6239 (bvslt #b00000000000000000000000000000000 (size!262 _keys!1806)))))

(declare-fun b!5448 () Bool)

(declare-fun e!2941 () ListLongMap!123)

(assert (=> b!5448 (= e!2941 e!2943)))

(assert (=> b!5448 (= c!369 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!5449 () Bool)

(assert (=> b!5449 (= e!2944 call!147)))

(declare-fun b!5434 () Bool)

(assert (=> b!5434 (= e!2941 (+!7 call!145 (tuple2!119 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434)))))

(declare-fun d!745 () Bool)

(assert (=> d!745 e!2947))

(declare-fun res!6240 () Bool)

(assert (=> d!745 (=> (not res!6240) (not e!2947))))

(assert (=> d!745 (= res!6240 (or (bvsge #b00000000000000000000000000000000 (size!262 _keys!1806)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!262 _keys!1806)))))))

(declare-fun lt!996 () ListLongMap!123)

(assert (=> d!745 (= lt!985 lt!996)))

(declare-fun lt!981 () Unit!65)

(assert (=> d!745 (= lt!981 e!2946)))

(declare-fun c!374 () Bool)

(assert (=> d!745 (= c!374 e!2940)))

(declare-fun res!6238 () Bool)

(assert (=> d!745 (=> (not res!6238) (not e!2940))))

(assert (=> d!745 (= res!6238 (bvslt #b00000000000000000000000000000000 (size!262 _keys!1806)))))

(assert (=> d!745 (= lt!996 e!2941)))

(assert (=> d!745 (= c!371 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!745 (validMask!0 mask!2250)))

(assert (=> d!745 (= (getCurrentListMap!36 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) lt!985)))

(assert (= (and d!745 c!371) b!5434))

(assert (= (and d!745 (not c!371)) b!5448))

(assert (= (and b!5448 c!369) b!5437))

(assert (= (and b!5448 (not c!369)) b!5445))

(assert (= (and b!5445 c!372) b!5449))

(assert (= (and b!5445 (not c!372)) b!5429))

(assert (= (or b!5449 b!5429) bm!144))

(assert (= (or b!5437 bm!144) bm!142))

(assert (= (or b!5437 b!5449) bm!145))

(assert (= (or b!5434 bm!142) bm!143))

(assert (= (or b!5434 bm!145) bm!146))

(assert (= (and d!745 res!6238) b!5440))

(assert (= (and d!745 c!374) b!5443))

(assert (= (and d!745 (not c!374)) b!5431))

(assert (= (and d!745 res!6240) b!5447))

(assert (= (and b!5447 res!6239) b!5439))

(assert (= (and b!5447 (not res!6242)) b!5441))

(assert (= (and b!5441 res!6237) b!5435))

(assert (= (and b!5447 res!6236) b!5438))

(assert (= (and b!5438 c!370) b!5436))

(assert (= (and b!5438 (not c!370)) b!5446))

(assert (= (and b!5436 res!6243) b!5432))

(assert (= (or b!5436 b!5446) bm!140))

(assert (= (and b!5438 res!6244) b!5442))

(assert (= (and b!5442 c!373) b!5430))

(assert (= (and b!5442 (not c!373)) b!5444))

(assert (= (and b!5430 res!6241) b!5433))

(assert (= (or b!5430 b!5444) bm!141))

(declare-fun b_lambda!331 () Bool)

(assert (=> (not b_lambda!331) (not b!5435)))

(declare-fun t!2264 () Bool)

(declare-fun tb!133 () Bool)

(assert (=> (and start!752 (= defaultEntry!1495 defaultEntry!1495) t!2264) tb!133))

(declare-fun result!201 () Bool)

(assert (=> tb!133 (= result!201 tp_is_empty!243)))

(assert (=> b!5435 t!2264))

(declare-fun b_and!313 () Bool)

(assert (= b_and!309 (and (=> t!2264 result!201) b_and!313)))

(declare-fun m!2999 () Bool)

(assert (=> bm!143 m!2999))

(declare-fun m!3001 () Bool)

(assert (=> b!5432 m!3001))

(assert (=> b!5439 m!2987))

(assert (=> b!5439 m!2987))

(declare-fun m!3003 () Bool)

(assert (=> b!5439 m!3003))

(declare-fun m!3005 () Bool)

(assert (=> bm!141 m!3005))

(declare-fun m!3007 () Bool)

(assert (=> bm!140 m!3007))

(declare-fun m!3009 () Bool)

(assert (=> bm!146 m!3009))

(declare-fun m!3011 () Bool)

(assert (=> b!5443 m!3011))

(declare-fun m!3013 () Bool)

(assert (=> b!5443 m!3013))

(declare-fun m!3015 () Bool)

(assert (=> b!5443 m!3015))

(declare-fun m!3017 () Bool)

(assert (=> b!5443 m!3017))

(declare-fun m!3019 () Bool)

(assert (=> b!5443 m!3019))

(declare-fun m!3021 () Bool)

(assert (=> b!5443 m!3021))

(declare-fun m!3023 () Bool)

(assert (=> b!5443 m!3023))

(assert (=> b!5443 m!2999))

(declare-fun m!3025 () Bool)

(assert (=> b!5443 m!3025))

(declare-fun m!3027 () Bool)

(assert (=> b!5443 m!3027))

(declare-fun m!3029 () Bool)

(assert (=> b!5443 m!3029))

(assert (=> b!5443 m!3025))

(assert (=> b!5443 m!3015))

(declare-fun m!3031 () Bool)

(assert (=> b!5443 m!3031))

(declare-fun m!3033 () Bool)

(assert (=> b!5443 m!3033))

(declare-fun m!3035 () Bool)

(assert (=> b!5443 m!3035))

(assert (=> b!5443 m!3021))

(declare-fun m!3037 () Bool)

(assert (=> b!5443 m!3037))

(assert (=> b!5443 m!3011))

(declare-fun m!3039 () Bool)

(assert (=> b!5443 m!3039))

(assert (=> b!5443 m!2987))

(declare-fun m!3041 () Bool)

(assert (=> b!5435 m!3041))

(declare-fun m!3043 () Bool)

(assert (=> b!5435 m!3043))

(assert (=> b!5435 m!2987))

(declare-fun m!3045 () Bool)

(assert (=> b!5435 m!3045))

(assert (=> b!5435 m!3041))

(assert (=> b!5435 m!3043))

(declare-fun m!3047 () Bool)

(assert (=> b!5435 m!3047))

(assert (=> b!5435 m!2987))

(assert (=> b!5441 m!2987))

(assert (=> b!5441 m!2987))

(declare-fun m!3049 () Bool)

(assert (=> b!5441 m!3049))

(declare-fun m!3051 () Bool)

(assert (=> b!5434 m!3051))

(assert (=> d!745 m!2949))

(assert (=> b!5440 m!2987))

(assert (=> b!5440 m!2987))

(assert (=> b!5440 m!3003))

(declare-fun m!3053 () Bool)

(assert (=> b!5433 m!3053))

(assert (=> b!5331 d!745))

(declare-fun b!5460 () Bool)

(declare-fun e!2956 () Bool)

(declare-fun call!152 () Bool)

(assert (=> b!5460 (= e!2956 call!152)))

(declare-fun b!5461 () Bool)

(declare-fun e!2955 () Bool)

(assert (=> b!5461 (= e!2955 call!152)))

(declare-fun b!5462 () Bool)

(assert (=> b!5462 (= e!2955 e!2956)))

(declare-fun lt!1008 () (_ BitVec 64))

(assert (=> b!5462 (= lt!1008 (select (arr!200 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1007 () Unit!65)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!421 (_ BitVec 64) (_ BitVec 32)) Unit!65)

(assert (=> b!5462 (= lt!1007 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!1008 #b00000000000000000000000000000000))))

(assert (=> b!5462 (arrayContainsKey!0 _keys!1806 lt!1008 #b00000000000000000000000000000000)))

(declare-fun lt!1006 () Unit!65)

(assert (=> b!5462 (= lt!1006 lt!1007)))

(declare-fun res!6249 () Bool)

(declare-datatypes ((SeekEntryResult!13 0))(
  ( (MissingZero!13 (index!2171 (_ BitVec 32))) (Found!13 (index!2172 (_ BitVec 32))) (Intermediate!13 (undefined!825 Bool) (index!2173 (_ BitVec 32)) (x!2447 (_ BitVec 32))) (Undefined!13) (MissingVacant!13 (index!2174 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!421 (_ BitVec 32)) SeekEntryResult!13)

(assert (=> b!5462 (= res!6249 (= (seekEntryOrOpen!0 (select (arr!200 _keys!1806) #b00000000000000000000000000000000) _keys!1806 mask!2250) (Found!13 #b00000000000000000000000000000000)))))

(assert (=> b!5462 (=> (not res!6249) (not e!2956))))

(declare-fun bm!149 () Bool)

(assert (=> bm!149 (= call!152 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun b!5463 () Bool)

(declare-fun e!2957 () Bool)

(assert (=> b!5463 (= e!2957 e!2955)))

(declare-fun c!377 () Bool)

(assert (=> b!5463 (= c!377 (validKeyInArray!0 (select (arr!200 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun d!747 () Bool)

(declare-fun res!6250 () Bool)

(assert (=> d!747 (=> res!6250 e!2957)))

(assert (=> d!747 (= res!6250 (bvsge #b00000000000000000000000000000000 (size!262 _keys!1806)))))

(assert (=> d!747 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250) e!2957)))

(assert (= (and d!747 (not res!6250)) b!5463))

(assert (= (and b!5463 c!377) b!5462))

(assert (= (and b!5463 (not c!377)) b!5461))

(assert (= (and b!5462 res!6249) b!5460))

(assert (= (or b!5460 b!5461) bm!149))

(assert (=> b!5462 m!2987))

(declare-fun m!3055 () Bool)

(assert (=> b!5462 m!3055))

(declare-fun m!3057 () Bool)

(assert (=> b!5462 m!3057))

(assert (=> b!5462 m!2987))

(declare-fun m!3059 () Bool)

(assert (=> b!5462 m!3059))

(declare-fun m!3061 () Bool)

(assert (=> bm!149 m!3061))

(assert (=> b!5463 m!2987))

(assert (=> b!5463 m!2987))

(assert (=> b!5463 m!3003))

(assert (=> b!5324 d!747))

(declare-fun b!5474 () Bool)

(declare-fun e!2966 () Bool)

(declare-fun contains!51 (List!128 (_ BitVec 64)) Bool)

(assert (=> b!5474 (= e!2966 (contains!51 Nil!125 (select (arr!200 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!5475 () Bool)

(declare-fun e!2967 () Bool)

(declare-fun e!2969 () Bool)

(assert (=> b!5475 (= e!2967 e!2969)))

(declare-fun res!6259 () Bool)

(assert (=> b!5475 (=> (not res!6259) (not e!2969))))

(assert (=> b!5475 (= res!6259 (not e!2966))))

(declare-fun res!6257 () Bool)

(assert (=> b!5475 (=> (not res!6257) (not e!2966))))

(assert (=> b!5475 (= res!6257 (validKeyInArray!0 (select (arr!200 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!5476 () Bool)

(declare-fun e!2968 () Bool)

(declare-fun call!155 () Bool)

(assert (=> b!5476 (= e!2968 call!155)))

(declare-fun b!5477 () Bool)

(assert (=> b!5477 (= e!2969 e!2968)))

(declare-fun c!380 () Bool)

(assert (=> b!5477 (= c!380 (validKeyInArray!0 (select (arr!200 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!5478 () Bool)

(assert (=> b!5478 (= e!2968 call!155)))

(declare-fun d!749 () Bool)

(declare-fun res!6258 () Bool)

(assert (=> d!749 (=> res!6258 e!2967)))

(assert (=> d!749 (= res!6258 (bvsge #b00000000000000000000000000000000 (size!262 _keys!1806)))))

(assert (=> d!749 (= (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!125) e!2967)))

(declare-fun bm!152 () Bool)

(assert (=> bm!152 (= call!155 (arrayNoDuplicates!0 _keys!1806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!380 (Cons!124 (select (arr!200 _keys!1806) #b00000000000000000000000000000000) Nil!125) Nil!125)))))

(assert (= (and d!749 (not res!6258)) b!5475))

(assert (= (and b!5475 res!6257) b!5474))

(assert (= (and b!5475 res!6259) b!5477))

(assert (= (and b!5477 c!380) b!5478))

(assert (= (and b!5477 (not c!380)) b!5476))

(assert (= (or b!5478 b!5476) bm!152))

(assert (=> b!5474 m!2987))

(assert (=> b!5474 m!2987))

(declare-fun m!3063 () Bool)

(assert (=> b!5474 m!3063))

(assert (=> b!5475 m!2987))

(assert (=> b!5475 m!2987))

(assert (=> b!5475 m!3003))

(assert (=> b!5477 m!2987))

(assert (=> b!5477 m!2987))

(assert (=> b!5477 m!3003))

(assert (=> bm!152 m!2987))

(declare-fun m!3065 () Bool)

(assert (=> bm!152 m!3065))

(assert (=> b!5330 d!749))

(assert (=> b!5328 d!741))

(declare-fun d!751 () Bool)

(declare-fun e!2972 () Bool)

(assert (=> d!751 e!2972))

(declare-fun c!383 () Bool)

(assert (=> d!751 (= c!383 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1011 () Unit!65)

(declare-fun choose!138 (array!421 array!423 (_ BitVec 32) (_ BitVec 32) V!501 V!501 (_ BitVec 64) Int) Unit!65)

(assert (=> d!751 (= lt!1011 (choose!138 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(assert (=> d!751 (validMask!0 mask!2250)))

(assert (=> d!751 (= (lemmaKeyInListMapIsInArray!19 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495) lt!1011)))

(declare-fun b!5483 () Bool)

(assert (=> b!5483 (= e!2972 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!5484 () Bool)

(assert (=> b!5484 (= e!2972 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!751 c!383) b!5483))

(assert (= (and d!751 (not c!383)) b!5484))

(declare-fun m!3067 () Bool)

(assert (=> d!751 m!3067))

(assert (=> d!751 m!2949))

(assert (=> b!5483 m!2955))

(assert (=> b!5328 d!751))

(declare-fun d!753 () Bool)

(assert (=> d!753 (= (validKeyInArray!0 k0!1278) (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!5333 d!753))

(declare-fun d!755 () Bool)

(assert (=> d!755 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!752 d!755))

(declare-fun d!757 () Bool)

(assert (=> d!757 (= (array_inv!141 _values!1492) (bvsge (size!263 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!752 d!757))

(declare-fun d!759 () Bool)

(assert (=> d!759 (= (array_inv!142 _keys!1806) (bvsge (size!262 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!752 d!759))

(declare-fun b!5491 () Bool)

(declare-fun e!2978 () Bool)

(assert (=> b!5491 (= e!2978 tp_is_empty!243)))

(declare-fun mapIsEmpty!338 () Bool)

(declare-fun mapRes!338 () Bool)

(assert (=> mapIsEmpty!338 mapRes!338))

(declare-fun mapNonEmpty!338 () Bool)

(declare-fun tp!731 () Bool)

(assert (=> mapNonEmpty!338 (= mapRes!338 (and tp!731 e!2978))))

(declare-fun mapValue!338 () ValueCell!105)

(declare-fun mapKey!338 () (_ BitVec 32))

(declare-fun mapRest!338 () (Array (_ BitVec 32) ValueCell!105))

(assert (=> mapNonEmpty!338 (= mapRest!332 (store mapRest!338 mapKey!338 mapValue!338))))

(declare-fun condMapEmpty!338 () Bool)

(declare-fun mapDefault!338 () ValueCell!105)

(assert (=> mapNonEmpty!332 (= condMapEmpty!338 (= mapRest!332 ((as const (Array (_ BitVec 32) ValueCell!105)) mapDefault!338)))))

(declare-fun e!2977 () Bool)

(assert (=> mapNonEmpty!332 (= tp!722 (and e!2977 mapRes!338))))

(declare-fun b!5492 () Bool)

(assert (=> b!5492 (= e!2977 tp_is_empty!243)))

(assert (= (and mapNonEmpty!332 condMapEmpty!338) mapIsEmpty!338))

(assert (= (and mapNonEmpty!332 (not condMapEmpty!338)) mapNonEmpty!338))

(assert (= (and mapNonEmpty!338 ((_ is ValueCellFull!105) mapValue!338)) b!5491))

(assert (= (and mapNonEmpty!332 ((_ is ValueCellFull!105) mapDefault!338)) b!5492))

(declare-fun m!3069 () Bool)

(assert (=> mapNonEmpty!338 m!3069))

(declare-fun b_lambda!333 () Bool)

(assert (= b_lambda!331 (or (and start!752 b_free!165) b_lambda!333)))

(check-sat tp_is_empty!243 (not b_next!165) (not b!5384) (not b!5443) (not b!5463) (not b!5434) (not b!5483) (not d!745) (not b!5435) (not b!5477) (not bm!141) (not b!5474) (not b!5377) (not b!5386) (not b_lambda!333) (not bm!152) (not b!5432) (not bm!149) b_and!313 (not b!5439) (not bm!143) (not d!743) (not b!5433) (not bm!146) (not b!5475) (not b!5441) (not bm!140) (not b!5440) (not b!5462) (not mapNonEmpty!338) (not d!751))
(check-sat b_and!313 (not b_next!165))
