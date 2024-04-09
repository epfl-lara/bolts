; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38330 () Bool)

(assert start!38330)

(declare-fun res!226548 () Bool)

(declare-fun e!239195 () Bool)

(assert (=> start!38330 (=> (not res!226548) (not e!239195))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23487 0))(
  ( (array!23488 (arr!11194 (Array (_ BitVec 32) (_ BitVec 64))) (size!11546 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23487)

(assert (=> start!38330 (= res!226548 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11546 _keys!709))))))

(assert (=> start!38330 e!239195))

(assert (=> start!38330 true))

(declare-datatypes ((V!14173 0))(
  ( (V!14174 (val!4945 Int)) )
))
(declare-datatypes ((ValueCell!4557 0))(
  ( (ValueCellFull!4557 (v!7187 V!14173)) (EmptyCell!4557) )
))
(declare-datatypes ((array!23489 0))(
  ( (array!23490 (arr!11195 (Array (_ BitVec 32) ValueCell!4557)) (size!11547 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23489)

(declare-fun e!239197 () Bool)

(declare-fun array_inv!8196 (array!23489) Bool)

(assert (=> start!38330 (and (array_inv!8196 _values!549) e!239197)))

(declare-fun array_inv!8197 (array!23487) Bool)

(assert (=> start!38330 (array_inv!8197 _keys!709)))

(declare-fun b!395062 () Bool)

(declare-fun res!226546 () Bool)

(assert (=> b!395062 (=> (not res!226546) (not e!239195))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23487 (_ BitVec 32)) Bool)

(assert (=> b!395062 (= res!226546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395063 () Bool)

(declare-fun e!239198 () Bool)

(declare-fun tp_is_empty!9801 () Bool)

(assert (=> b!395063 (= e!239198 tp_is_empty!9801)))

(declare-fun b!395064 () Bool)

(declare-fun e!239196 () Bool)

(assert (=> b!395064 (= e!239196 tp_is_empty!9801)))

(declare-fun b!395065 () Bool)

(declare-fun res!226549 () Bool)

(assert (=> b!395065 (=> (not res!226549) (not e!239195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395065 (= res!226549 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16311 () Bool)

(declare-fun mapRes!16311 () Bool)

(assert (=> mapIsEmpty!16311 mapRes!16311))

(declare-fun b!395066 () Bool)

(assert (=> b!395066 (= e!239197 (and e!239196 mapRes!16311))))

(declare-fun condMapEmpty!16311 () Bool)

(declare-fun mapDefault!16311 () ValueCell!4557)

(assert (=> b!395066 (= condMapEmpty!16311 (= (arr!11195 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4557)) mapDefault!16311)))))

(declare-fun b!395067 () Bool)

(declare-fun res!226545 () Bool)

(assert (=> b!395067 (=> (not res!226545) (not e!239195))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!395067 (= res!226545 (validKeyInArray!0 k0!794))))

(declare-fun b!395068 () Bool)

(declare-fun res!226543 () Bool)

(assert (=> b!395068 (=> (not res!226543) (not e!239195))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!395068 (= res!226543 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11546 _keys!709))))))

(declare-fun b!395069 () Bool)

(declare-fun res!226544 () Bool)

(assert (=> b!395069 (=> (not res!226544) (not e!239195))))

(declare-datatypes ((List!6469 0))(
  ( (Nil!6466) (Cons!6465 (h!7321 (_ BitVec 64)) (t!11651 List!6469)) )
))
(declare-fun arrayNoDuplicates!0 (array!23487 (_ BitVec 32) List!6469) Bool)

(assert (=> b!395069 (= res!226544 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6466))))

(declare-fun mapNonEmpty!16311 () Bool)

(declare-fun tp!32106 () Bool)

(assert (=> mapNonEmpty!16311 (= mapRes!16311 (and tp!32106 e!239198))))

(declare-fun mapRest!16311 () (Array (_ BitVec 32) ValueCell!4557))

(declare-fun mapValue!16311 () ValueCell!4557)

(declare-fun mapKey!16311 () (_ BitVec 32))

(assert (=> mapNonEmpty!16311 (= (arr!11195 _values!549) (store mapRest!16311 mapKey!16311 mapValue!16311))))

(declare-fun b!395070 () Bool)

(assert (=> b!395070 (= e!239195 (and (or (= (select (arr!11194 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11194 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!11546 _keys!709)) (bvsge (size!11546 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun b!395071 () Bool)

(declare-fun res!226547 () Bool)

(assert (=> b!395071 (=> (not res!226547) (not e!239195))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!395071 (= res!226547 (and (= (size!11547 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11546 _keys!709) (size!11547 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(assert (= (and start!38330 res!226548) b!395065))

(assert (= (and b!395065 res!226549) b!395071))

(assert (= (and b!395071 res!226547) b!395062))

(assert (= (and b!395062 res!226546) b!395069))

(assert (= (and b!395069 res!226544) b!395068))

(assert (= (and b!395068 res!226543) b!395067))

(assert (= (and b!395067 res!226545) b!395070))

(assert (= (and b!395066 condMapEmpty!16311) mapIsEmpty!16311))

(assert (= (and b!395066 (not condMapEmpty!16311)) mapNonEmpty!16311))

(get-info :version)

(assert (= (and mapNonEmpty!16311 ((_ is ValueCellFull!4557) mapValue!16311)) b!395063))

(assert (= (and b!395066 ((_ is ValueCellFull!4557) mapDefault!16311)) b!395064))

(assert (= start!38330 b!395066))

(declare-fun m!391237 () Bool)

(assert (=> b!395070 m!391237))

(declare-fun m!391239 () Bool)

(assert (=> mapNonEmpty!16311 m!391239))

(declare-fun m!391241 () Bool)

(assert (=> start!38330 m!391241))

(declare-fun m!391243 () Bool)

(assert (=> start!38330 m!391243))

(declare-fun m!391245 () Bool)

(assert (=> b!395062 m!391245))

(declare-fun m!391247 () Bool)

(assert (=> b!395065 m!391247))

(declare-fun m!391249 () Bool)

(assert (=> b!395069 m!391249))

(declare-fun m!391251 () Bool)

(assert (=> b!395067 m!391251))

(check-sat (not b!395062) (not b!395065) (not start!38330) tp_is_empty!9801 (not b!395069) (not b!395067) (not mapNonEmpty!16311))
(check-sat)
(get-model)

(declare-fun d!73205 () Bool)

(assert (=> d!73205 (= (array_inv!8196 _values!549) (bvsge (size!11547 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!38330 d!73205))

(declare-fun d!73207 () Bool)

(assert (=> d!73207 (= (array_inv!8197 _keys!709) (bvsge (size!11546 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!38330 d!73207))

(declare-fun d!73209 () Bool)

(assert (=> d!73209 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!395067 d!73209))

(declare-fun b!395110 () Bool)

(declare-fun e!239222 () Bool)

(declare-fun call!27869 () Bool)

(assert (=> b!395110 (= e!239222 call!27869)))

(declare-fun b!395111 () Bool)

(declare-fun e!239220 () Bool)

(declare-fun e!239221 () Bool)

(assert (=> b!395111 (= e!239220 e!239221)))

(declare-fun c!54473 () Bool)

(assert (=> b!395111 (= c!54473 (validKeyInArray!0 (select (arr!11194 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!395112 () Bool)

(assert (=> b!395112 (= e!239221 call!27869)))

(declare-fun d!73211 () Bool)

(declare-fun res!226575 () Bool)

(assert (=> d!73211 (=> res!226575 e!239220)))

(assert (=> d!73211 (= res!226575 (bvsge #b00000000000000000000000000000000 (size!11546 _keys!709)))))

(assert (=> d!73211 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!239220)))

(declare-fun b!395113 () Bool)

(assert (=> b!395113 (= e!239221 e!239222)))

(declare-fun lt!187036 () (_ BitVec 64))

(assert (=> b!395113 (= lt!187036 (select (arr!11194 _keys!709) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!12027 0))(
  ( (Unit!12028) )
))
(declare-fun lt!187035 () Unit!12027)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23487 (_ BitVec 64) (_ BitVec 32)) Unit!12027)

(assert (=> b!395113 (= lt!187035 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!187036 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!23487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!395113 (arrayContainsKey!0 _keys!709 lt!187036 #b00000000000000000000000000000000)))

(declare-fun lt!187037 () Unit!12027)

(assert (=> b!395113 (= lt!187037 lt!187035)))

(declare-fun res!226576 () Bool)

(declare-datatypes ((SeekEntryResult!3511 0))(
  ( (MissingZero!3511 (index!16223 (_ BitVec 32))) (Found!3511 (index!16224 (_ BitVec 32))) (Intermediate!3511 (undefined!4323 Bool) (index!16225 (_ BitVec 32)) (x!38604 (_ BitVec 32))) (Undefined!3511) (MissingVacant!3511 (index!16226 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23487 (_ BitVec 32)) SeekEntryResult!3511)

(assert (=> b!395113 (= res!226576 (= (seekEntryOrOpen!0 (select (arr!11194 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3511 #b00000000000000000000000000000000)))))

(assert (=> b!395113 (=> (not res!226576) (not e!239222))))

(declare-fun bm!27866 () Bool)

(assert (=> bm!27866 (= call!27869 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(assert (= (and d!73211 (not res!226575)) b!395111))

(assert (= (and b!395111 c!54473) b!395113))

(assert (= (and b!395111 (not c!54473)) b!395112))

(assert (= (and b!395113 res!226576) b!395110))

(assert (= (or b!395110 b!395112) bm!27866))

(declare-fun m!391269 () Bool)

(assert (=> b!395111 m!391269))

(assert (=> b!395111 m!391269))

(declare-fun m!391271 () Bool)

(assert (=> b!395111 m!391271))

(assert (=> b!395113 m!391269))

(declare-fun m!391273 () Bool)

(assert (=> b!395113 m!391273))

(declare-fun m!391275 () Bool)

(assert (=> b!395113 m!391275))

(assert (=> b!395113 m!391269))

(declare-fun m!391277 () Bool)

(assert (=> b!395113 m!391277))

(declare-fun m!391279 () Bool)

(assert (=> bm!27866 m!391279))

(assert (=> b!395062 d!73211))

(declare-fun d!73213 () Bool)

(assert (=> d!73213 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!395065 d!73213))

(declare-fun b!395124 () Bool)

(declare-fun e!239233 () Bool)

(declare-fun e!239231 () Bool)

(assert (=> b!395124 (= e!239233 e!239231)))

(declare-fun res!226583 () Bool)

(assert (=> b!395124 (=> (not res!226583) (not e!239231))))

(declare-fun e!239232 () Bool)

(assert (=> b!395124 (= res!226583 (not e!239232))))

(declare-fun res!226585 () Bool)

(assert (=> b!395124 (=> (not res!226585) (not e!239232))))

(assert (=> b!395124 (= res!226585 (validKeyInArray!0 (select (arr!11194 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun d!73215 () Bool)

(declare-fun res!226584 () Bool)

(assert (=> d!73215 (=> res!226584 e!239233)))

(assert (=> d!73215 (= res!226584 (bvsge #b00000000000000000000000000000000 (size!11546 _keys!709)))))

(assert (=> d!73215 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6466) e!239233)))

(declare-fun b!395125 () Bool)

(declare-fun e!239234 () Bool)

(assert (=> b!395125 (= e!239231 e!239234)))

(declare-fun c!54476 () Bool)

(assert (=> b!395125 (= c!54476 (validKeyInArray!0 (select (arr!11194 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!27869 () Bool)

(declare-fun call!27872 () Bool)

(assert (=> bm!27869 (= call!27872 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54476 (Cons!6465 (select (arr!11194 _keys!709) #b00000000000000000000000000000000) Nil!6466) Nil!6466)))))

(declare-fun b!395126 () Bool)

(declare-fun contains!2481 (List!6469 (_ BitVec 64)) Bool)

(assert (=> b!395126 (= e!239232 (contains!2481 Nil!6466 (select (arr!11194 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!395127 () Bool)

(assert (=> b!395127 (= e!239234 call!27872)))

(declare-fun b!395128 () Bool)

(assert (=> b!395128 (= e!239234 call!27872)))

(assert (= (and d!73215 (not res!226584)) b!395124))

(assert (= (and b!395124 res!226585) b!395126))

(assert (= (and b!395124 res!226583) b!395125))

(assert (= (and b!395125 c!54476) b!395128))

(assert (= (and b!395125 (not c!54476)) b!395127))

(assert (= (or b!395128 b!395127) bm!27869))

(assert (=> b!395124 m!391269))

(assert (=> b!395124 m!391269))

(assert (=> b!395124 m!391271))

(assert (=> b!395125 m!391269))

(assert (=> b!395125 m!391269))

(assert (=> b!395125 m!391271))

(assert (=> bm!27869 m!391269))

(declare-fun m!391281 () Bool)

(assert (=> bm!27869 m!391281))

(assert (=> b!395126 m!391269))

(assert (=> b!395126 m!391269))

(declare-fun m!391283 () Bool)

(assert (=> b!395126 m!391283))

(assert (=> b!395069 d!73215))

(declare-fun b!395136 () Bool)

(declare-fun e!239240 () Bool)

(assert (=> b!395136 (= e!239240 tp_is_empty!9801)))

(declare-fun mapNonEmpty!16317 () Bool)

(declare-fun mapRes!16317 () Bool)

(declare-fun tp!32112 () Bool)

(declare-fun e!239239 () Bool)

(assert (=> mapNonEmpty!16317 (= mapRes!16317 (and tp!32112 e!239239))))

(declare-fun mapValue!16317 () ValueCell!4557)

(declare-fun mapKey!16317 () (_ BitVec 32))

(declare-fun mapRest!16317 () (Array (_ BitVec 32) ValueCell!4557))

(assert (=> mapNonEmpty!16317 (= mapRest!16311 (store mapRest!16317 mapKey!16317 mapValue!16317))))

(declare-fun mapIsEmpty!16317 () Bool)

(assert (=> mapIsEmpty!16317 mapRes!16317))

(declare-fun condMapEmpty!16317 () Bool)

(declare-fun mapDefault!16317 () ValueCell!4557)

(assert (=> mapNonEmpty!16311 (= condMapEmpty!16317 (= mapRest!16311 ((as const (Array (_ BitVec 32) ValueCell!4557)) mapDefault!16317)))))

(assert (=> mapNonEmpty!16311 (= tp!32106 (and e!239240 mapRes!16317))))

(declare-fun b!395135 () Bool)

(assert (=> b!395135 (= e!239239 tp_is_empty!9801)))

(assert (= (and mapNonEmpty!16311 condMapEmpty!16317) mapIsEmpty!16317))

(assert (= (and mapNonEmpty!16311 (not condMapEmpty!16317)) mapNonEmpty!16317))

(assert (= (and mapNonEmpty!16317 ((_ is ValueCellFull!4557) mapValue!16317)) b!395135))

(assert (= (and mapNonEmpty!16311 ((_ is ValueCellFull!4557) mapDefault!16317)) b!395136))

(declare-fun m!391285 () Bool)

(assert (=> mapNonEmpty!16317 m!391285))

(check-sat (not b!395126) (not bm!27869) (not mapNonEmpty!16317) (not b!395124) (not b!395111) (not b!395113) (not bm!27866) (not b!395125) tp_is_empty!9801)
(check-sat)
