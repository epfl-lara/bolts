; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42240 () Bool)

(assert start!42240)

(declare-fun b_free!11751 () Bool)

(declare-fun b_next!11751 () Bool)

(assert (=> start!42240 (= b_free!11751 (not b_next!11751))))

(declare-fun tp!41278 () Bool)

(declare-fun b_and!20199 () Bool)

(assert (=> start!42240 (= tp!41278 b_and!20199)))

(declare-fun b!471156 () Bool)

(declare-fun e!276135 () Bool)

(declare-fun tp_is_empty!13179 () Bool)

(assert (=> b!471156 (= e!276135 tp_is_empty!13179)))

(declare-fun res!281558 () Bool)

(declare-fun e!276136 () Bool)

(assert (=> start!42240 (=> (not res!281558) (not e!276136))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42240 (= res!281558 (validMask!0 mask!1365))))

(assert (=> start!42240 e!276136))

(assert (=> start!42240 tp_is_empty!13179))

(assert (=> start!42240 tp!41278))

(assert (=> start!42240 true))

(declare-datatypes ((array!30085 0))(
  ( (array!30086 (arr!14462 (Array (_ BitVec 32) (_ BitVec 64))) (size!14814 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30085)

(declare-fun array_inv!10432 (array!30085) Bool)

(assert (=> start!42240 (array_inv!10432 _keys!1025)))

(declare-datatypes ((V!18677 0))(
  ( (V!18678 (val!6634 Int)) )
))
(declare-datatypes ((ValueCell!6246 0))(
  ( (ValueCellFull!6246 (v!8921 V!18677)) (EmptyCell!6246) )
))
(declare-datatypes ((array!30087 0))(
  ( (array!30088 (arr!14463 (Array (_ BitVec 32) ValueCell!6246)) (size!14815 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30087)

(declare-fun e!276134 () Bool)

(declare-fun array_inv!10433 (array!30087) Bool)

(assert (=> start!42240 (and (array_inv!10433 _values!833) e!276134)))

(declare-fun b!471157 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!471157 (= e!276136 (not (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!14814 _keys!1025)))))))

(declare-datatypes ((tuple2!8710 0))(
  ( (tuple2!8711 (_1!4365 (_ BitVec 64)) (_2!4365 V!18677)) )
))
(declare-datatypes ((List!8830 0))(
  ( (Nil!8827) (Cons!8826 (h!9682 tuple2!8710) (t!14802 List!8830)) )
))
(declare-datatypes ((ListLongMap!7637 0))(
  ( (ListLongMap!7638 (toList!3834 List!8830)) )
))
(declare-fun lt!213810 () ListLongMap!7637)

(declare-fun lt!213811 () ListLongMap!7637)

(assert (=> b!471157 (= lt!213810 lt!213811)))

(declare-datatypes ((Unit!13794 0))(
  ( (Unit!13795) )
))
(declare-fun lt!213812 () Unit!13794)

(declare-fun minValueBefore!38 () V!18677)

(declare-fun zeroValue!794 () V!18677)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18677)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!191 (array!30085 array!30087 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18677 V!18677 V!18677 V!18677 (_ BitVec 32) Int) Unit!13794)

(assert (=> b!471157 (= lt!213812 (lemmaNoChangeToArrayThenSameMapNoExtras!191 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1996 (array!30085 array!30087 (_ BitVec 32) (_ BitVec 32) V!18677 V!18677 (_ BitVec 32) Int) ListLongMap!7637)

(assert (=> b!471157 (= lt!213811 (getCurrentListMapNoExtraKeys!1996 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471157 (= lt!213810 (getCurrentListMapNoExtraKeys!1996 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471158 () Bool)

(declare-fun res!281557 () Bool)

(assert (=> b!471158 (=> (not res!281557) (not e!276136))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30085 (_ BitVec 32)) Bool)

(assert (=> b!471158 (= res!281557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21472 () Bool)

(declare-fun mapRes!21472 () Bool)

(assert (=> mapIsEmpty!21472 mapRes!21472))

(declare-fun b!471159 () Bool)

(declare-fun res!281559 () Bool)

(assert (=> b!471159 (=> (not res!281559) (not e!276136))))

(assert (=> b!471159 (= res!281559 (and (= (size!14815 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14814 _keys!1025) (size!14815 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471160 () Bool)

(declare-fun e!276138 () Bool)

(assert (=> b!471160 (= e!276138 tp_is_empty!13179)))

(declare-fun mapNonEmpty!21472 () Bool)

(declare-fun tp!41277 () Bool)

(assert (=> mapNonEmpty!21472 (= mapRes!21472 (and tp!41277 e!276135))))

(declare-fun mapKey!21472 () (_ BitVec 32))

(declare-fun mapRest!21472 () (Array (_ BitVec 32) ValueCell!6246))

(declare-fun mapValue!21472 () ValueCell!6246)

(assert (=> mapNonEmpty!21472 (= (arr!14463 _values!833) (store mapRest!21472 mapKey!21472 mapValue!21472))))

(declare-fun b!471161 () Bool)

(assert (=> b!471161 (= e!276134 (and e!276138 mapRes!21472))))

(declare-fun condMapEmpty!21472 () Bool)

(declare-fun mapDefault!21472 () ValueCell!6246)

(assert (=> b!471161 (= condMapEmpty!21472 (= (arr!14463 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6246)) mapDefault!21472)))))

(declare-fun b!471162 () Bool)

(declare-fun res!281560 () Bool)

(assert (=> b!471162 (=> (not res!281560) (not e!276136))))

(declare-datatypes ((List!8831 0))(
  ( (Nil!8828) (Cons!8827 (h!9683 (_ BitVec 64)) (t!14803 List!8831)) )
))
(declare-fun arrayNoDuplicates!0 (array!30085 (_ BitVec 32) List!8831) Bool)

(assert (=> b!471162 (= res!281560 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8828))))

(assert (= (and start!42240 res!281558) b!471159))

(assert (= (and b!471159 res!281559) b!471158))

(assert (= (and b!471158 res!281557) b!471162))

(assert (= (and b!471162 res!281560) b!471157))

(assert (= (and b!471161 condMapEmpty!21472) mapIsEmpty!21472))

(assert (= (and b!471161 (not condMapEmpty!21472)) mapNonEmpty!21472))

(get-info :version)

(assert (= (and mapNonEmpty!21472 ((_ is ValueCellFull!6246) mapValue!21472)) b!471156))

(assert (= (and b!471161 ((_ is ValueCellFull!6246) mapDefault!21472)) b!471160))

(assert (= start!42240 b!471161))

(declare-fun m!453343 () Bool)

(assert (=> start!42240 m!453343))

(declare-fun m!453345 () Bool)

(assert (=> start!42240 m!453345))

(declare-fun m!453347 () Bool)

(assert (=> start!42240 m!453347))

(declare-fun m!453349 () Bool)

(assert (=> b!471158 m!453349))

(declare-fun m!453351 () Bool)

(assert (=> b!471162 m!453351))

(declare-fun m!453353 () Bool)

(assert (=> mapNonEmpty!21472 m!453353))

(declare-fun m!453355 () Bool)

(assert (=> b!471157 m!453355))

(declare-fun m!453357 () Bool)

(assert (=> b!471157 m!453357))

(declare-fun m!453359 () Bool)

(assert (=> b!471157 m!453359))

(check-sat (not start!42240) (not mapNonEmpty!21472) (not b!471162) (not b!471158) tp_is_empty!13179 (not b!471157) (not b_next!11751) b_and!20199)
(check-sat b_and!20199 (not b_next!11751))
(get-model)

(declare-fun bm!30438 () Bool)

(declare-fun call!30441 () Bool)

(assert (=> bm!30438 (= call!30441 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!471192 () Bool)

(declare-fun e!276160 () Bool)

(assert (=> b!471192 (= e!276160 call!30441)))

(declare-fun b!471193 () Bool)

(declare-fun e!276161 () Bool)

(assert (=> b!471193 (= e!276160 e!276161)))

(declare-fun lt!213828 () (_ BitVec 64))

(assert (=> b!471193 (= lt!213828 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!213830 () Unit!13794)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30085 (_ BitVec 64) (_ BitVec 32)) Unit!13794)

(assert (=> b!471193 (= lt!213830 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!213828 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30085 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!471193 (arrayContainsKey!0 _keys!1025 lt!213828 #b00000000000000000000000000000000)))

(declare-fun lt!213829 () Unit!13794)

(assert (=> b!471193 (= lt!213829 lt!213830)))

(declare-fun res!281578 () Bool)

(declare-datatypes ((SeekEntryResult!3541 0))(
  ( (MissingZero!3541 (index!16343 (_ BitVec 32))) (Found!3541 (index!16344 (_ BitVec 32))) (Intermediate!3541 (undefined!4353 Bool) (index!16345 (_ BitVec 32)) (x!44155 (_ BitVec 32))) (Undefined!3541) (MissingVacant!3541 (index!16346 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30085 (_ BitVec 32)) SeekEntryResult!3541)

(assert (=> b!471193 (= res!281578 (= (seekEntryOrOpen!0 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3541 #b00000000000000000000000000000000)))))

(assert (=> b!471193 (=> (not res!281578) (not e!276161))))

(declare-fun b!471194 () Bool)

(assert (=> b!471194 (= e!276161 call!30441)))

(declare-fun d!75271 () Bool)

(declare-fun res!281577 () Bool)

(declare-fun e!276162 () Bool)

(assert (=> d!75271 (=> res!281577 e!276162)))

(assert (=> d!75271 (= res!281577 (bvsge #b00000000000000000000000000000000 (size!14814 _keys!1025)))))

(assert (=> d!75271 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!276162)))

(declare-fun b!471195 () Bool)

(assert (=> b!471195 (= e!276162 e!276160)))

(declare-fun c!56892 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!471195 (= c!56892 (validKeyInArray!0 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75271 (not res!281577)) b!471195))

(assert (= (and b!471195 c!56892) b!471193))

(assert (= (and b!471195 (not c!56892)) b!471192))

(assert (= (and b!471193 res!281578) b!471194))

(assert (= (or b!471194 b!471192) bm!30438))

(declare-fun m!453379 () Bool)

(assert (=> bm!30438 m!453379))

(declare-fun m!453381 () Bool)

(assert (=> b!471193 m!453381))

(declare-fun m!453383 () Bool)

(assert (=> b!471193 m!453383))

(declare-fun m!453385 () Bool)

(assert (=> b!471193 m!453385))

(assert (=> b!471193 m!453381))

(declare-fun m!453387 () Bool)

(assert (=> b!471193 m!453387))

(assert (=> b!471195 m!453381))

(assert (=> b!471195 m!453381))

(declare-fun m!453389 () Bool)

(assert (=> b!471195 m!453389))

(assert (=> b!471158 d!75271))

(declare-fun d!75273 () Bool)

(declare-fun res!281585 () Bool)

(declare-fun e!276172 () Bool)

(assert (=> d!75273 (=> res!281585 e!276172)))

(assert (=> d!75273 (= res!281585 (bvsge #b00000000000000000000000000000000 (size!14814 _keys!1025)))))

(assert (=> d!75273 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8828) e!276172)))

(declare-fun b!471206 () Bool)

(declare-fun e!276174 () Bool)

(declare-fun call!30444 () Bool)

(assert (=> b!471206 (= e!276174 call!30444)))

(declare-fun b!471207 () Bool)

(declare-fun e!276171 () Bool)

(declare-fun contains!2545 (List!8831 (_ BitVec 64)) Bool)

(assert (=> b!471207 (= e!276171 (contains!2545 Nil!8828 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!471208 () Bool)

(declare-fun e!276173 () Bool)

(assert (=> b!471208 (= e!276173 e!276174)))

(declare-fun c!56895 () Bool)

(assert (=> b!471208 (= c!56895 (validKeyInArray!0 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!471209 () Bool)

(assert (=> b!471209 (= e!276174 call!30444)))

(declare-fun b!471210 () Bool)

(assert (=> b!471210 (= e!276172 e!276173)))

(declare-fun res!281586 () Bool)

(assert (=> b!471210 (=> (not res!281586) (not e!276173))))

(assert (=> b!471210 (= res!281586 (not e!276171))))

(declare-fun res!281587 () Bool)

(assert (=> b!471210 (=> (not res!281587) (not e!276171))))

(assert (=> b!471210 (= res!281587 (validKeyInArray!0 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30441 () Bool)

(assert (=> bm!30441 (= call!30444 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56895 (Cons!8827 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000) Nil!8828) Nil!8828)))))

(assert (= (and d!75273 (not res!281585)) b!471210))

(assert (= (and b!471210 res!281587) b!471207))

(assert (= (and b!471210 res!281586) b!471208))

(assert (= (and b!471208 c!56895) b!471209))

(assert (= (and b!471208 (not c!56895)) b!471206))

(assert (= (or b!471209 b!471206) bm!30441))

(assert (=> b!471207 m!453381))

(assert (=> b!471207 m!453381))

(declare-fun m!453391 () Bool)

(assert (=> b!471207 m!453391))

(assert (=> b!471208 m!453381))

(assert (=> b!471208 m!453381))

(assert (=> b!471208 m!453389))

(assert (=> b!471210 m!453381))

(assert (=> b!471210 m!453381))

(assert (=> b!471210 m!453389))

(assert (=> bm!30441 m!453381))

(declare-fun m!453393 () Bool)

(assert (=> bm!30441 m!453393))

(assert (=> b!471162 d!75273))

(declare-fun d!75275 () Bool)

(assert (=> d!75275 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42240 d!75275))

(declare-fun d!75277 () Bool)

(assert (=> d!75277 (= (array_inv!10432 _keys!1025) (bvsge (size!14814 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42240 d!75277))

(declare-fun d!75279 () Bool)

(assert (=> d!75279 (= (array_inv!10433 _values!833) (bvsge (size!14815 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42240 d!75279))

(declare-fun d!75281 () Bool)

(assert (=> d!75281 (= (getCurrentListMapNoExtraKeys!1996 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!1996 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213833 () Unit!13794)

(declare-fun choose!1356 (array!30085 array!30087 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18677 V!18677 V!18677 V!18677 (_ BitVec 32) Int) Unit!13794)

(assert (=> d!75281 (= lt!213833 (choose!1356 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75281 (validMask!0 mask!1365)))

(assert (=> d!75281 (= (lemmaNoChangeToArrayThenSameMapNoExtras!191 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!213833)))

(declare-fun bs!14944 () Bool)

(assert (= bs!14944 d!75281))

(assert (=> bs!14944 m!453359))

(assert (=> bs!14944 m!453357))

(declare-fun m!453395 () Bool)

(assert (=> bs!14944 m!453395))

(assert (=> bs!14944 m!453343))

(assert (=> b!471157 d!75281))

(declare-fun d!75283 () Bool)

(declare-fun e!276189 () Bool)

(assert (=> d!75283 e!276189))

(declare-fun res!281596 () Bool)

(assert (=> d!75283 (=> (not res!281596) (not e!276189))))

(declare-fun lt!213852 () ListLongMap!7637)

(declare-fun contains!2546 (ListLongMap!7637 (_ BitVec 64)) Bool)

(assert (=> d!75283 (= res!281596 (not (contains!2546 lt!213852 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!276191 () ListLongMap!7637)

(assert (=> d!75283 (= lt!213852 e!276191)))

(declare-fun c!56904 () Bool)

(assert (=> d!75283 (= c!56904 (bvsge #b00000000000000000000000000000000 (size!14814 _keys!1025)))))

(assert (=> d!75283 (validMask!0 mask!1365)))

(assert (=> d!75283 (= (getCurrentListMapNoExtraKeys!1996 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!213852)))

(declare-fun b!471235 () Bool)

(declare-fun e!276193 () ListLongMap!7637)

(assert (=> b!471235 (= e!276191 e!276193)))

(declare-fun c!56905 () Bool)

(assert (=> b!471235 (= c!56905 (validKeyInArray!0 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!471236 () Bool)

(declare-fun e!276190 () Bool)

(assert (=> b!471236 (= e!276189 e!276190)))

(declare-fun c!56907 () Bool)

(declare-fun e!276195 () Bool)

(assert (=> b!471236 (= c!56907 e!276195)))

(declare-fun res!281597 () Bool)

(assert (=> b!471236 (=> (not res!281597) (not e!276195))))

(assert (=> b!471236 (= res!281597 (bvslt #b00000000000000000000000000000000 (size!14814 _keys!1025)))))

(declare-fun b!471237 () Bool)

(declare-fun lt!213849 () Unit!13794)

(declare-fun lt!213853 () Unit!13794)

(assert (=> b!471237 (= lt!213849 lt!213853)))

(declare-fun lt!213851 () (_ BitVec 64))

(declare-fun lt!213850 () V!18677)

(declare-fun lt!213848 () ListLongMap!7637)

(declare-fun lt!213854 () (_ BitVec 64))

(declare-fun +!1686 (ListLongMap!7637 tuple2!8710) ListLongMap!7637)

(assert (=> b!471237 (not (contains!2546 (+!1686 lt!213848 (tuple2!8711 lt!213851 lt!213850)) lt!213854))))

(declare-fun addStillNotContains!164 (ListLongMap!7637 (_ BitVec 64) V!18677 (_ BitVec 64)) Unit!13794)

(assert (=> b!471237 (= lt!213853 (addStillNotContains!164 lt!213848 lt!213851 lt!213850 lt!213854))))

(assert (=> b!471237 (= lt!213854 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!7063 (ValueCell!6246 V!18677) V!18677)

(declare-fun dynLambda!921 (Int (_ BitVec 64)) V!18677)

(assert (=> b!471237 (= lt!213850 (get!7063 (select (arr!14463 _values!833) #b00000000000000000000000000000000) (dynLambda!921 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!471237 (= lt!213851 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30447 () ListLongMap!7637)

(assert (=> b!471237 (= lt!213848 call!30447)))

(assert (=> b!471237 (= e!276193 (+!1686 call!30447 (tuple2!8711 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000) (get!7063 (select (arr!14463 _values!833) #b00000000000000000000000000000000) (dynLambda!921 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!471238 () Bool)

(declare-fun e!276192 () Bool)

(assert (=> b!471238 (= e!276190 e!276192)))

(assert (=> b!471238 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14814 _keys!1025)))))

(declare-fun res!281599 () Bool)

(assert (=> b!471238 (= res!281599 (contains!2546 lt!213852 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!471238 (=> (not res!281599) (not e!276192))))

(declare-fun b!471239 () Bool)

(assert (=> b!471239 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14814 _keys!1025)))))

(assert (=> b!471239 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14815 _values!833)))))

(declare-fun apply!329 (ListLongMap!7637 (_ BitVec 64)) V!18677)

(assert (=> b!471239 (= e!276192 (= (apply!329 lt!213852 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000)) (get!7063 (select (arr!14463 _values!833) #b00000000000000000000000000000000) (dynLambda!921 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!471240 () Bool)

(declare-fun e!276194 () Bool)

(declare-fun isEmpty!581 (ListLongMap!7637) Bool)

(assert (=> b!471240 (= e!276194 (isEmpty!581 lt!213852))))

(declare-fun b!471241 () Bool)

(assert (=> b!471241 (= e!276191 (ListLongMap!7638 Nil!8827))))

(declare-fun b!471242 () Bool)

(assert (=> b!471242 (= e!276194 (= lt!213852 (getCurrentListMapNoExtraKeys!1996 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!471243 () Bool)

(assert (=> b!471243 (= e!276193 call!30447)))

(declare-fun b!471244 () Bool)

(assert (=> b!471244 (= e!276190 e!276194)))

(declare-fun c!56906 () Bool)

(assert (=> b!471244 (= c!56906 (bvslt #b00000000000000000000000000000000 (size!14814 _keys!1025)))))

(declare-fun b!471245 () Bool)

(declare-fun res!281598 () Bool)

(assert (=> b!471245 (=> (not res!281598) (not e!276189))))

(assert (=> b!471245 (= res!281598 (not (contains!2546 lt!213852 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!471246 () Bool)

(assert (=> b!471246 (= e!276195 (validKeyInArray!0 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!471246 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!30444 () Bool)

(assert (=> bm!30444 (= call!30447 (getCurrentListMapNoExtraKeys!1996 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(assert (= (and d!75283 c!56904) b!471241))

(assert (= (and d!75283 (not c!56904)) b!471235))

(assert (= (and b!471235 c!56905) b!471237))

(assert (= (and b!471235 (not c!56905)) b!471243))

(assert (= (or b!471237 b!471243) bm!30444))

(assert (= (and d!75283 res!281596) b!471245))

(assert (= (and b!471245 res!281598) b!471236))

(assert (= (and b!471236 res!281597) b!471246))

(assert (= (and b!471236 c!56907) b!471238))

(assert (= (and b!471236 (not c!56907)) b!471244))

(assert (= (and b!471238 res!281599) b!471239))

(assert (= (and b!471244 c!56906) b!471242))

(assert (= (and b!471244 (not c!56906)) b!471240))

(declare-fun b_lambda!10183 () Bool)

(assert (=> (not b_lambda!10183) (not b!471237)))

(declare-fun t!14806 () Bool)

(declare-fun tb!3931 () Bool)

(assert (=> (and start!42240 (= defaultEntry!841 defaultEntry!841) t!14806) tb!3931))

(declare-fun result!7435 () Bool)

(assert (=> tb!3931 (= result!7435 tp_is_empty!13179)))

(assert (=> b!471237 t!14806))

(declare-fun b_and!20203 () Bool)

(assert (= b_and!20199 (and (=> t!14806 result!7435) b_and!20203)))

(declare-fun b_lambda!10185 () Bool)

(assert (=> (not b_lambda!10185) (not b!471239)))

(assert (=> b!471239 t!14806))

(declare-fun b_and!20205 () Bool)

(assert (= b_and!20203 (and (=> t!14806 result!7435) b_and!20205)))

(assert (=> b!471238 m!453381))

(assert (=> b!471238 m!453381))

(declare-fun m!453397 () Bool)

(assert (=> b!471238 m!453397))

(declare-fun m!453399 () Bool)

(assert (=> b!471245 m!453399))

(declare-fun m!453401 () Bool)

(assert (=> bm!30444 m!453401))

(assert (=> b!471239 m!453381))

(assert (=> b!471239 m!453381))

(declare-fun m!453403 () Bool)

(assert (=> b!471239 m!453403))

(declare-fun m!453405 () Bool)

(assert (=> b!471239 m!453405))

(assert (=> b!471239 m!453405))

(declare-fun m!453407 () Bool)

(assert (=> b!471239 m!453407))

(declare-fun m!453409 () Bool)

(assert (=> b!471239 m!453409))

(assert (=> b!471239 m!453407))

(assert (=> b!471246 m!453381))

(assert (=> b!471246 m!453381))

(assert (=> b!471246 m!453389))

(declare-fun m!453411 () Bool)

(assert (=> d!75283 m!453411))

(assert (=> d!75283 m!453343))

(assert (=> b!471237 m!453381))

(declare-fun m!453413 () Bool)

(assert (=> b!471237 m!453413))

(declare-fun m!453415 () Bool)

(assert (=> b!471237 m!453415))

(declare-fun m!453417 () Bool)

(assert (=> b!471237 m!453417))

(assert (=> b!471237 m!453405))

(declare-fun m!453419 () Bool)

(assert (=> b!471237 m!453419))

(assert (=> b!471237 m!453405))

(assert (=> b!471237 m!453407))

(assert (=> b!471237 m!453409))

(assert (=> b!471237 m!453407))

(assert (=> b!471237 m!453413))

(assert (=> b!471242 m!453401))

(declare-fun m!453421 () Bool)

(assert (=> b!471240 m!453421))

(assert (=> b!471235 m!453381))

(assert (=> b!471235 m!453381))

(assert (=> b!471235 m!453389))

(assert (=> b!471157 d!75283))

(declare-fun d!75285 () Bool)

(declare-fun e!276196 () Bool)

(assert (=> d!75285 e!276196))

(declare-fun res!281600 () Bool)

(assert (=> d!75285 (=> (not res!281600) (not e!276196))))

(declare-fun lt!213859 () ListLongMap!7637)

(assert (=> d!75285 (= res!281600 (not (contains!2546 lt!213859 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!276198 () ListLongMap!7637)

(assert (=> d!75285 (= lt!213859 e!276198)))

(declare-fun c!56908 () Bool)

(assert (=> d!75285 (= c!56908 (bvsge #b00000000000000000000000000000000 (size!14814 _keys!1025)))))

(assert (=> d!75285 (validMask!0 mask!1365)))

(assert (=> d!75285 (= (getCurrentListMapNoExtraKeys!1996 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!213859)))

(declare-fun b!471249 () Bool)

(declare-fun e!276200 () ListLongMap!7637)

(assert (=> b!471249 (= e!276198 e!276200)))

(declare-fun c!56909 () Bool)

(assert (=> b!471249 (= c!56909 (validKeyInArray!0 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!471250 () Bool)

(declare-fun e!276197 () Bool)

(assert (=> b!471250 (= e!276196 e!276197)))

(declare-fun c!56911 () Bool)

(declare-fun e!276202 () Bool)

(assert (=> b!471250 (= c!56911 e!276202)))

(declare-fun res!281601 () Bool)

(assert (=> b!471250 (=> (not res!281601) (not e!276202))))

(assert (=> b!471250 (= res!281601 (bvslt #b00000000000000000000000000000000 (size!14814 _keys!1025)))))

(declare-fun b!471251 () Bool)

(declare-fun lt!213856 () Unit!13794)

(declare-fun lt!213860 () Unit!13794)

(assert (=> b!471251 (= lt!213856 lt!213860)))

(declare-fun lt!213857 () V!18677)

(declare-fun lt!213858 () (_ BitVec 64))

(declare-fun lt!213855 () ListLongMap!7637)

(declare-fun lt!213861 () (_ BitVec 64))

(assert (=> b!471251 (not (contains!2546 (+!1686 lt!213855 (tuple2!8711 lt!213858 lt!213857)) lt!213861))))

(assert (=> b!471251 (= lt!213860 (addStillNotContains!164 lt!213855 lt!213858 lt!213857 lt!213861))))

(assert (=> b!471251 (= lt!213861 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!471251 (= lt!213857 (get!7063 (select (arr!14463 _values!833) #b00000000000000000000000000000000) (dynLambda!921 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!471251 (= lt!213858 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30448 () ListLongMap!7637)

(assert (=> b!471251 (= lt!213855 call!30448)))

(assert (=> b!471251 (= e!276200 (+!1686 call!30448 (tuple2!8711 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000) (get!7063 (select (arr!14463 _values!833) #b00000000000000000000000000000000) (dynLambda!921 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!471252 () Bool)

(declare-fun e!276199 () Bool)

(assert (=> b!471252 (= e!276197 e!276199)))

(assert (=> b!471252 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14814 _keys!1025)))))

(declare-fun res!281603 () Bool)

(assert (=> b!471252 (= res!281603 (contains!2546 lt!213859 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!471252 (=> (not res!281603) (not e!276199))))

(declare-fun b!471253 () Bool)

(assert (=> b!471253 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14814 _keys!1025)))))

(assert (=> b!471253 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14815 _values!833)))))

(assert (=> b!471253 (= e!276199 (= (apply!329 lt!213859 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000)) (get!7063 (select (arr!14463 _values!833) #b00000000000000000000000000000000) (dynLambda!921 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!471254 () Bool)

(declare-fun e!276201 () Bool)

(assert (=> b!471254 (= e!276201 (isEmpty!581 lt!213859))))

(declare-fun b!471255 () Bool)

(assert (=> b!471255 (= e!276198 (ListLongMap!7638 Nil!8827))))

(declare-fun b!471256 () Bool)

(assert (=> b!471256 (= e!276201 (= lt!213859 (getCurrentListMapNoExtraKeys!1996 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!471257 () Bool)

(assert (=> b!471257 (= e!276200 call!30448)))

(declare-fun b!471258 () Bool)

(assert (=> b!471258 (= e!276197 e!276201)))

(declare-fun c!56910 () Bool)

(assert (=> b!471258 (= c!56910 (bvslt #b00000000000000000000000000000000 (size!14814 _keys!1025)))))

(declare-fun b!471259 () Bool)

(declare-fun res!281602 () Bool)

(assert (=> b!471259 (=> (not res!281602) (not e!276196))))

(assert (=> b!471259 (= res!281602 (not (contains!2546 lt!213859 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!471260 () Bool)

(assert (=> b!471260 (= e!276202 (validKeyInArray!0 (select (arr!14462 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!471260 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!30445 () Bool)

(assert (=> bm!30445 (= call!30448 (getCurrentListMapNoExtraKeys!1996 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(assert (= (and d!75285 c!56908) b!471255))

(assert (= (and d!75285 (not c!56908)) b!471249))

(assert (= (and b!471249 c!56909) b!471251))

(assert (= (and b!471249 (not c!56909)) b!471257))

(assert (= (or b!471251 b!471257) bm!30445))

(assert (= (and d!75285 res!281600) b!471259))

(assert (= (and b!471259 res!281602) b!471250))

(assert (= (and b!471250 res!281601) b!471260))

(assert (= (and b!471250 c!56911) b!471252))

(assert (= (and b!471250 (not c!56911)) b!471258))

(assert (= (and b!471252 res!281603) b!471253))

(assert (= (and b!471258 c!56910) b!471256))

(assert (= (and b!471258 (not c!56910)) b!471254))

(declare-fun b_lambda!10187 () Bool)

(assert (=> (not b_lambda!10187) (not b!471251)))

(assert (=> b!471251 t!14806))

(declare-fun b_and!20207 () Bool)

(assert (= b_and!20205 (and (=> t!14806 result!7435) b_and!20207)))

(declare-fun b_lambda!10189 () Bool)

(assert (=> (not b_lambda!10189) (not b!471253)))

(assert (=> b!471253 t!14806))

(declare-fun b_and!20209 () Bool)

(assert (= b_and!20207 (and (=> t!14806 result!7435) b_and!20209)))

(assert (=> b!471252 m!453381))

(assert (=> b!471252 m!453381))

(declare-fun m!453423 () Bool)

(assert (=> b!471252 m!453423))

(declare-fun m!453425 () Bool)

(assert (=> b!471259 m!453425))

(declare-fun m!453427 () Bool)

(assert (=> bm!30445 m!453427))

(assert (=> b!471253 m!453381))

(assert (=> b!471253 m!453381))

(declare-fun m!453429 () Bool)

(assert (=> b!471253 m!453429))

(assert (=> b!471253 m!453405))

(assert (=> b!471253 m!453405))

(assert (=> b!471253 m!453407))

(assert (=> b!471253 m!453409))

(assert (=> b!471253 m!453407))

(assert (=> b!471260 m!453381))

(assert (=> b!471260 m!453381))

(assert (=> b!471260 m!453389))

(declare-fun m!453431 () Bool)

(assert (=> d!75285 m!453431))

(assert (=> d!75285 m!453343))

(assert (=> b!471251 m!453381))

(declare-fun m!453433 () Bool)

(assert (=> b!471251 m!453433))

(declare-fun m!453435 () Bool)

(assert (=> b!471251 m!453435))

(declare-fun m!453437 () Bool)

(assert (=> b!471251 m!453437))

(assert (=> b!471251 m!453405))

(declare-fun m!453439 () Bool)

(assert (=> b!471251 m!453439))

(assert (=> b!471251 m!453405))

(assert (=> b!471251 m!453407))

(assert (=> b!471251 m!453409))

(assert (=> b!471251 m!453407))

(assert (=> b!471251 m!453433))

(assert (=> b!471256 m!453427))

(declare-fun m!453441 () Bool)

(assert (=> b!471254 m!453441))

(assert (=> b!471249 m!453381))

(assert (=> b!471249 m!453381))

(assert (=> b!471249 m!453389))

(assert (=> b!471157 d!75285))

(declare-fun mapIsEmpty!21478 () Bool)

(declare-fun mapRes!21478 () Bool)

(assert (=> mapIsEmpty!21478 mapRes!21478))

(declare-fun condMapEmpty!21478 () Bool)

(declare-fun mapDefault!21478 () ValueCell!6246)

(assert (=> mapNonEmpty!21472 (= condMapEmpty!21478 (= mapRest!21472 ((as const (Array (_ BitVec 32) ValueCell!6246)) mapDefault!21478)))))

(declare-fun e!276208 () Bool)

(assert (=> mapNonEmpty!21472 (= tp!41277 (and e!276208 mapRes!21478))))

(declare-fun b!471267 () Bool)

(declare-fun e!276207 () Bool)

(assert (=> b!471267 (= e!276207 tp_is_empty!13179)))

(declare-fun b!471268 () Bool)

(assert (=> b!471268 (= e!276208 tp_is_empty!13179)))

(declare-fun mapNonEmpty!21478 () Bool)

(declare-fun tp!41287 () Bool)

(assert (=> mapNonEmpty!21478 (= mapRes!21478 (and tp!41287 e!276207))))

(declare-fun mapKey!21478 () (_ BitVec 32))

(declare-fun mapRest!21478 () (Array (_ BitVec 32) ValueCell!6246))

(declare-fun mapValue!21478 () ValueCell!6246)

(assert (=> mapNonEmpty!21478 (= mapRest!21472 (store mapRest!21478 mapKey!21478 mapValue!21478))))

(assert (= (and mapNonEmpty!21472 condMapEmpty!21478) mapIsEmpty!21478))

(assert (= (and mapNonEmpty!21472 (not condMapEmpty!21478)) mapNonEmpty!21478))

(assert (= (and mapNonEmpty!21478 ((_ is ValueCellFull!6246) mapValue!21478)) b!471267))

(assert (= (and mapNonEmpty!21472 ((_ is ValueCellFull!6246) mapDefault!21478)) b!471268))

(declare-fun m!453443 () Bool)

(assert (=> mapNonEmpty!21478 m!453443))

(declare-fun b_lambda!10191 () Bool)

(assert (= b_lambda!10183 (or (and start!42240 b_free!11751) b_lambda!10191)))

(declare-fun b_lambda!10193 () Bool)

(assert (= b_lambda!10189 (or (and start!42240 b_free!11751) b_lambda!10193)))

(declare-fun b_lambda!10195 () Bool)

(assert (= b_lambda!10185 (or (and start!42240 b_free!11751) b_lambda!10195)))

(declare-fun b_lambda!10197 () Bool)

(assert (= b_lambda!10187 (or (and start!42240 b_free!11751) b_lambda!10197)))

(check-sat (not b!471210) (not b!471252) (not b!471240) (not bm!30438) tp_is_empty!13179 (not bm!30441) (not mapNonEmpty!21478) (not d!75285) (not b!471195) (not b_lambda!10195) (not b!471259) (not b_lambda!10197) (not b_lambda!10193) (not b!471254) (not b!471245) (not b!471237) (not b!471207) (not b!471256) (not b!471251) b_and!20209 (not b!471208) (not b!471239) (not b!471193) (not b!471246) (not b!471238) (not bm!30445) (not b_lambda!10191) (not b!471253) (not b!471260) (not d!75283) (not b_next!11751) (not bm!30444) (not d!75281) (not b!471249) (not b!471242) (not b!471235))
(check-sat b_and!20209 (not b_next!11751))
