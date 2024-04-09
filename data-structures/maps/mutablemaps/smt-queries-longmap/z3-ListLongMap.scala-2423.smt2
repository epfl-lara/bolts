; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38284 () Bool)

(assert start!38284)

(declare-fun mapNonEmpty!16269 () Bool)

(declare-fun mapRes!16269 () Bool)

(declare-fun tp!32064 () Bool)

(declare-fun e!238958 () Bool)

(assert (=> mapNonEmpty!16269 (= mapRes!16269 (and tp!32064 e!238958))))

(declare-fun mapKey!16269 () (_ BitVec 32))

(declare-datatypes ((V!14141 0))(
  ( (V!14142 (val!4933 Int)) )
))
(declare-datatypes ((ValueCell!4545 0))(
  ( (ValueCellFull!4545 (v!7174 V!14141)) (EmptyCell!4545) )
))
(declare-fun mapValue!16269 () ValueCell!4545)

(declare-datatypes ((array!23435 0))(
  ( (array!23436 (arr!11170 (Array (_ BitVec 32) ValueCell!4545)) (size!11522 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23435)

(declare-fun mapRest!16269 () (Array (_ BitVec 32) ValueCell!4545))

(assert (=> mapNonEmpty!16269 (= (arr!11170 _values!549) (store mapRest!16269 mapKey!16269 mapValue!16269))))

(declare-fun b!394677 () Bool)

(declare-fun e!238957 () Bool)

(declare-datatypes ((List!6457 0))(
  ( (Nil!6454) (Cons!6453 (h!7309 (_ BitVec 64)) (t!11639 List!6457)) )
))
(declare-fun noDuplicate!192 (List!6457) Bool)

(assert (=> b!394677 (= e!238957 (not (noDuplicate!192 Nil!6454)))))

(declare-fun b!394678 () Bool)

(declare-fun res!226298 () Bool)

(assert (=> b!394678 (=> (not res!226298) (not e!238957))))

(declare-datatypes ((array!23437 0))(
  ( (array!23438 (arr!11171 (Array (_ BitVec 32) (_ BitVec 64))) (size!11523 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23437)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!394678 (= res!226298 (and (= (size!11522 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11523 _keys!709) (size!11522 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!394679 () Bool)

(declare-fun res!226297 () Bool)

(assert (=> b!394679 (=> (not res!226297) (not e!238957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394679 (= res!226297 (validMask!0 mask!1025))))

(declare-fun b!394680 () Bool)

(declare-fun e!238956 () Bool)

(declare-fun tp_is_empty!9777 () Bool)

(assert (=> b!394680 (= e!238956 tp_is_empty!9777)))

(declare-fun b!394681 () Bool)

(assert (=> b!394681 (= e!238958 tp_is_empty!9777)))

(declare-fun res!226295 () Bool)

(assert (=> start!38284 (=> (not res!226295) (not e!238957))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38284 (= res!226295 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11523 _keys!709))))))

(assert (=> start!38284 e!238957))

(assert (=> start!38284 true))

(declare-fun e!238955 () Bool)

(declare-fun array_inv!8178 (array!23435) Bool)

(assert (=> start!38284 (and (array_inv!8178 _values!549) e!238955)))

(declare-fun array_inv!8179 (array!23437) Bool)

(assert (=> start!38284 (array_inv!8179 _keys!709)))

(declare-fun mapIsEmpty!16269 () Bool)

(assert (=> mapIsEmpty!16269 mapRes!16269))

(declare-fun b!394682 () Bool)

(declare-fun res!226294 () Bool)

(assert (=> b!394682 (=> (not res!226294) (not e!238957))))

(assert (=> b!394682 (= res!226294 (and (bvsle #b00000000000000000000000000000000 (size!11523 _keys!709)) (bvslt (size!11523 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun b!394683 () Bool)

(declare-fun res!226296 () Bool)

(assert (=> b!394683 (=> (not res!226296) (not e!238957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23437 (_ BitVec 32)) Bool)

(assert (=> b!394683 (= res!226296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!394684 () Bool)

(assert (=> b!394684 (= e!238955 (and e!238956 mapRes!16269))))

(declare-fun condMapEmpty!16269 () Bool)

(declare-fun mapDefault!16269 () ValueCell!4545)

(assert (=> b!394684 (= condMapEmpty!16269 (= (arr!11170 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4545)) mapDefault!16269)))))

(assert (= (and start!38284 res!226295) b!394679))

(assert (= (and b!394679 res!226297) b!394678))

(assert (= (and b!394678 res!226298) b!394683))

(assert (= (and b!394683 res!226296) b!394682))

(assert (= (and b!394682 res!226294) b!394677))

(assert (= (and b!394684 condMapEmpty!16269) mapIsEmpty!16269))

(assert (= (and b!394684 (not condMapEmpty!16269)) mapNonEmpty!16269))

(get-info :version)

(assert (= (and mapNonEmpty!16269 ((_ is ValueCellFull!4545) mapValue!16269)) b!394681))

(assert (= (and b!394684 ((_ is ValueCellFull!4545) mapDefault!16269)) b!394680))

(assert (= start!38284 b!394684))

(declare-fun m!391019 () Bool)

(assert (=> b!394683 m!391019))

(declare-fun m!391021 () Bool)

(assert (=> b!394679 m!391021))

(declare-fun m!391023 () Bool)

(assert (=> b!394677 m!391023))

(declare-fun m!391025 () Bool)

(assert (=> mapNonEmpty!16269 m!391025))

(declare-fun m!391027 () Bool)

(assert (=> start!38284 m!391027))

(declare-fun m!391029 () Bool)

(assert (=> start!38284 m!391029))

(check-sat (not b!394683) (not b!394677) (not mapNonEmpty!16269) tp_is_empty!9777 (not b!394679) (not start!38284))
(check-sat)
(get-model)

(declare-fun d!73173 () Bool)

(declare-fun res!226318 () Bool)

(declare-fun e!238979 () Bool)

(assert (=> d!73173 (=> res!226318 e!238979)))

(assert (=> d!73173 (= res!226318 ((_ is Nil!6454) Nil!6454))))

(assert (=> d!73173 (= (noDuplicate!192 Nil!6454) e!238979)))

(declare-fun b!394713 () Bool)

(declare-fun e!238980 () Bool)

(assert (=> b!394713 (= e!238979 e!238980)))

(declare-fun res!226319 () Bool)

(assert (=> b!394713 (=> (not res!226319) (not e!238980))))

(declare-fun contains!2477 (List!6457 (_ BitVec 64)) Bool)

(assert (=> b!394713 (= res!226319 (not (contains!2477 (t!11639 Nil!6454) (h!7309 Nil!6454))))))

(declare-fun b!394714 () Bool)

(assert (=> b!394714 (= e!238980 (noDuplicate!192 (t!11639 Nil!6454)))))

(assert (= (and d!73173 (not res!226318)) b!394713))

(assert (= (and b!394713 res!226319) b!394714))

(declare-fun m!391043 () Bool)

(assert (=> b!394713 m!391043))

(declare-fun m!391045 () Bool)

(assert (=> b!394714 m!391045))

(assert (=> b!394677 d!73173))

(declare-fun d!73175 () Bool)

(assert (=> d!73175 (= (array_inv!8178 _values!549) (bvsge (size!11522 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!38284 d!73175))

(declare-fun d!73177 () Bool)

(assert (=> d!73177 (= (array_inv!8179 _keys!709) (bvsge (size!11523 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!38284 d!73177))

(declare-fun d!73179 () Bool)

(assert (=> d!73179 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!394679 d!73179))

(declare-fun d!73181 () Bool)

(declare-fun res!226325 () Bool)

(declare-fun e!238989 () Bool)

(assert (=> d!73181 (=> res!226325 e!238989)))

(assert (=> d!73181 (= res!226325 (bvsge #b00000000000000000000000000000000 (size!11523 _keys!709)))))

(assert (=> d!73181 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!238989)))

(declare-fun b!394723 () Bool)

(declare-fun e!238988 () Bool)

(declare-fun e!238987 () Bool)

(assert (=> b!394723 (= e!238988 e!238987)))

(declare-fun lt!187004 () (_ BitVec 64))

(assert (=> b!394723 (= lt!187004 (select (arr!11171 _keys!709) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!12023 0))(
  ( (Unit!12024) )
))
(declare-fun lt!187005 () Unit!12023)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23437 (_ BitVec 64) (_ BitVec 32)) Unit!12023)

(assert (=> b!394723 (= lt!187005 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!187004 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!23437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!394723 (arrayContainsKey!0 _keys!709 lt!187004 #b00000000000000000000000000000000)))

(declare-fun lt!187006 () Unit!12023)

(assert (=> b!394723 (= lt!187006 lt!187005)))

(declare-fun res!226324 () Bool)

(declare-datatypes ((SeekEntryResult!3509 0))(
  ( (MissingZero!3509 (index!16215 (_ BitVec 32))) (Found!3509 (index!16216 (_ BitVec 32))) (Intermediate!3509 (undefined!4321 Bool) (index!16217 (_ BitVec 32)) (x!38566 (_ BitVec 32))) (Undefined!3509) (MissingVacant!3509 (index!16218 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23437 (_ BitVec 32)) SeekEntryResult!3509)

(assert (=> b!394723 (= res!226324 (= (seekEntryOrOpen!0 (select (arr!11171 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3509 #b00000000000000000000000000000000)))))

(assert (=> b!394723 (=> (not res!226324) (not e!238987))))

(declare-fun bm!27860 () Bool)

(declare-fun call!27863 () Bool)

(assert (=> bm!27860 (= call!27863 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!394724 () Bool)

(assert (=> b!394724 (= e!238987 call!27863)))

(declare-fun b!394725 () Bool)

(assert (=> b!394725 (= e!238989 e!238988)))

(declare-fun c!54467 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!394725 (= c!54467 (validKeyInArray!0 (select (arr!11171 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!394726 () Bool)

(assert (=> b!394726 (= e!238988 call!27863)))

(assert (= (and d!73181 (not res!226325)) b!394725))

(assert (= (and b!394725 c!54467) b!394723))

(assert (= (and b!394725 (not c!54467)) b!394726))

(assert (= (and b!394723 res!226324) b!394724))

(assert (= (or b!394724 b!394726) bm!27860))

(declare-fun m!391047 () Bool)

(assert (=> b!394723 m!391047))

(declare-fun m!391049 () Bool)

(assert (=> b!394723 m!391049))

(declare-fun m!391051 () Bool)

(assert (=> b!394723 m!391051))

(assert (=> b!394723 m!391047))

(declare-fun m!391053 () Bool)

(assert (=> b!394723 m!391053))

(declare-fun m!391055 () Bool)

(assert (=> bm!27860 m!391055))

(assert (=> b!394725 m!391047))

(assert (=> b!394725 m!391047))

(declare-fun m!391057 () Bool)

(assert (=> b!394725 m!391057))

(assert (=> b!394683 d!73181))

(declare-fun b!394734 () Bool)

(declare-fun e!238994 () Bool)

(assert (=> b!394734 (= e!238994 tp_is_empty!9777)))

(declare-fun mapNonEmpty!16275 () Bool)

(declare-fun mapRes!16275 () Bool)

(declare-fun tp!32070 () Bool)

(declare-fun e!238995 () Bool)

(assert (=> mapNonEmpty!16275 (= mapRes!16275 (and tp!32070 e!238995))))

(declare-fun mapRest!16275 () (Array (_ BitVec 32) ValueCell!4545))

(declare-fun mapKey!16275 () (_ BitVec 32))

(declare-fun mapValue!16275 () ValueCell!4545)

(assert (=> mapNonEmpty!16275 (= mapRest!16269 (store mapRest!16275 mapKey!16275 mapValue!16275))))

(declare-fun b!394733 () Bool)

(assert (=> b!394733 (= e!238995 tp_is_empty!9777)))

(declare-fun mapIsEmpty!16275 () Bool)

(assert (=> mapIsEmpty!16275 mapRes!16275))

(declare-fun condMapEmpty!16275 () Bool)

(declare-fun mapDefault!16275 () ValueCell!4545)

(assert (=> mapNonEmpty!16269 (= condMapEmpty!16275 (= mapRest!16269 ((as const (Array (_ BitVec 32) ValueCell!4545)) mapDefault!16275)))))

(assert (=> mapNonEmpty!16269 (= tp!32064 (and e!238994 mapRes!16275))))

(assert (= (and mapNonEmpty!16269 condMapEmpty!16275) mapIsEmpty!16275))

(assert (= (and mapNonEmpty!16269 (not condMapEmpty!16275)) mapNonEmpty!16275))

(assert (= (and mapNonEmpty!16275 ((_ is ValueCellFull!4545) mapValue!16275)) b!394733))

(assert (= (and mapNonEmpty!16269 ((_ is ValueCellFull!4545) mapDefault!16275)) b!394734))

(declare-fun m!391059 () Bool)

(assert (=> mapNonEmpty!16275 m!391059))

(check-sat (not b!394723) (not b!394725) tp_is_empty!9777 (not b!394713) (not bm!27860) (not mapNonEmpty!16275) (not b!394714))
(check-sat)
