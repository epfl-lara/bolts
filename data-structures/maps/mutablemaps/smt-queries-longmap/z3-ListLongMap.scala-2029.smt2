; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35328 () Bool)

(assert start!35328)

(declare-fun b!353580 () Bool)

(declare-fun e!216605 () Bool)

(declare-fun tp_is_empty!7797 () Bool)

(assert (=> b!353580 (= e!216605 tp_is_empty!7797)))

(declare-fun b!353581 () Bool)

(declare-fun res!196091 () Bool)

(declare-fun e!216601 () Bool)

(assert (=> b!353581 (=> (not res!196091) (not e!216601))))

(declare-datatypes ((List!5296 0))(
  ( (Nil!5293) (Cons!5292 (h!6148 (_ BitVec 64)) (t!10454 List!5296)) )
))
(declare-fun noDuplicate!178 (List!5296) Bool)

(assert (=> b!353581 (= res!196091 (noDuplicate!178 Nil!5293))))

(declare-fun b!353582 () Bool)

(declare-fun res!196089 () Bool)

(assert (=> b!353582 (=> (not res!196089) (not e!216601))))

(declare-datatypes ((array!19149 0))(
  ( (array!19150 (arr!9067 (Array (_ BitVec 32) (_ BitVec 64))) (size!9419 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19149)

(assert (=> b!353582 (= res!196089 (and (bvsle #b00000000000000000000000000000000 (size!9419 _keys!1456)) (bvslt (size!9419 _keys!1456) #b01111111111111111111111111111111)))))

(declare-fun b!353583 () Bool)

(declare-fun res!196090 () Bool)

(assert (=> b!353583 (=> (not res!196090) (not e!216601))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11373 0))(
  ( (V!11374 (val!3943 Int)) )
))
(declare-datatypes ((ValueCell!3555 0))(
  ( (ValueCellFull!3555 (v!6132 V!11373)) (EmptyCell!3555) )
))
(declare-datatypes ((array!19151 0))(
  ( (array!19152 (arr!9068 (Array (_ BitVec 32) ValueCell!3555)) (size!9420 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19151)

(assert (=> b!353583 (= res!196090 (and (= (size!9420 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9419 _keys!1456) (size!9420 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!353584 () Bool)

(declare-fun e!216602 () Bool)

(declare-fun mapRes!13197 () Bool)

(assert (=> b!353584 (= e!216602 (and e!216605 mapRes!13197))))

(declare-fun condMapEmpty!13197 () Bool)

(declare-fun mapDefault!13197 () ValueCell!3555)

(assert (=> b!353584 (= condMapEmpty!13197 (= (arr!9068 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3555)) mapDefault!13197)))))

(declare-fun b!353585 () Bool)

(declare-fun e!216606 () Bool)

(assert (=> b!353585 (= e!216606 tp_is_empty!7797)))

(declare-fun mapNonEmpty!13197 () Bool)

(declare-fun tp!27093 () Bool)

(assert (=> mapNonEmpty!13197 (= mapRes!13197 (and tp!27093 e!216606))))

(declare-fun mapKey!13197 () (_ BitVec 32))

(declare-fun mapRest!13197 () (Array (_ BitVec 32) ValueCell!3555))

(declare-fun mapValue!13197 () ValueCell!3555)

(assert (=> mapNonEmpty!13197 (= (arr!9068 _values!1208) (store mapRest!13197 mapKey!13197 mapValue!13197))))

(declare-fun b!353587 () Bool)

(declare-fun e!216604 () Bool)

(declare-fun contains!2381 (List!5296 (_ BitVec 64)) Bool)

(assert (=> b!353587 (= e!216604 (contains!2381 Nil!5293 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!353588 () Bool)

(assert (=> b!353588 (= e!216601 e!216604)))

(declare-fun res!196094 () Bool)

(assert (=> b!353588 (=> res!196094 e!216604)))

(assert (=> b!353588 (= res!196094 (contains!2381 Nil!5293 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!13197 () Bool)

(assert (=> mapIsEmpty!13197 mapRes!13197))

(declare-fun b!353586 () Bool)

(declare-fun res!196092 () Bool)

(assert (=> b!353586 (=> (not res!196092) (not e!216601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19149 (_ BitVec 32)) Bool)

(assert (=> b!353586 (= res!196092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!196093 () Bool)

(assert (=> start!35328 (=> (not res!196093) (not e!216601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35328 (= res!196093 (validMask!0 mask!1842))))

(assert (=> start!35328 e!216601))

(assert (=> start!35328 true))

(declare-fun array_inv!6674 (array!19151) Bool)

(assert (=> start!35328 (and (array_inv!6674 _values!1208) e!216602)))

(declare-fun array_inv!6675 (array!19149) Bool)

(assert (=> start!35328 (array_inv!6675 _keys!1456)))

(assert (= (and start!35328 res!196093) b!353583))

(assert (= (and b!353583 res!196090) b!353586))

(assert (= (and b!353586 res!196092) b!353582))

(assert (= (and b!353582 res!196089) b!353581))

(assert (= (and b!353581 res!196091) b!353588))

(assert (= (and b!353588 (not res!196094)) b!353587))

(assert (= (and b!353584 condMapEmpty!13197) mapIsEmpty!13197))

(assert (= (and b!353584 (not condMapEmpty!13197)) mapNonEmpty!13197))

(get-info :version)

(assert (= (and mapNonEmpty!13197 ((_ is ValueCellFull!3555) mapValue!13197)) b!353585))

(assert (= (and b!353584 ((_ is ValueCellFull!3555) mapDefault!13197)) b!353580))

(assert (= start!35328 b!353584))

(declare-fun m!352863 () Bool)

(assert (=> b!353581 m!352863))

(declare-fun m!352865 () Bool)

(assert (=> mapNonEmpty!13197 m!352865))

(declare-fun m!352867 () Bool)

(assert (=> b!353586 m!352867))

(declare-fun m!352869 () Bool)

(assert (=> b!353587 m!352869))

(declare-fun m!352871 () Bool)

(assert (=> b!353588 m!352871))

(declare-fun m!352873 () Bool)

(assert (=> start!35328 m!352873))

(declare-fun m!352875 () Bool)

(assert (=> start!35328 m!352875))

(declare-fun m!352877 () Bool)

(assert (=> start!35328 m!352877))

(check-sat (not b!353588) (not b!353586) (not start!35328) tp_is_empty!7797 (not b!353587) (not mapNonEmpty!13197) (not b!353581))
(check-sat)
(get-model)

(declare-fun d!71521 () Bool)

(declare-fun lt!165564 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!197 (List!5296) (InoxSet (_ BitVec 64)))

(assert (=> d!71521 (= lt!165564 (select (content!197 Nil!5293) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!216629 () Bool)

(assert (=> d!71521 (= lt!165564 e!216629)))

(declare-fun res!196118 () Bool)

(assert (=> d!71521 (=> (not res!196118) (not e!216629))))

(assert (=> d!71521 (= res!196118 ((_ is Cons!5292) Nil!5293))))

(assert (=> d!71521 (= (contains!2381 Nil!5293 #b0000000000000000000000000000000000000000000000000000000000000000) lt!165564)))

(declare-fun b!353620 () Bool)

(declare-fun e!216630 () Bool)

(assert (=> b!353620 (= e!216629 e!216630)))

(declare-fun res!196117 () Bool)

(assert (=> b!353620 (=> res!196117 e!216630)))

(assert (=> b!353620 (= res!196117 (= (h!6148 Nil!5293) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!353621 () Bool)

(assert (=> b!353621 (= e!216630 (contains!2381 (t!10454 Nil!5293) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!71521 res!196118) b!353620))

(assert (= (and b!353620 (not res!196117)) b!353621))

(declare-fun m!352895 () Bool)

(assert (=> d!71521 m!352895))

(declare-fun m!352897 () Bool)

(assert (=> d!71521 m!352897))

(declare-fun m!352899 () Bool)

(assert (=> b!353621 m!352899))

(assert (=> b!353588 d!71521))

(declare-fun d!71523 () Bool)

(assert (=> d!71523 (= (validMask!0 mask!1842) (and (or (= mask!1842 #b00000000000000000000000000000111) (= mask!1842 #b00000000000000000000000000001111) (= mask!1842 #b00000000000000000000000000011111) (= mask!1842 #b00000000000000000000000000111111) (= mask!1842 #b00000000000000000000000001111111) (= mask!1842 #b00000000000000000000000011111111) (= mask!1842 #b00000000000000000000000111111111) (= mask!1842 #b00000000000000000000001111111111) (= mask!1842 #b00000000000000000000011111111111) (= mask!1842 #b00000000000000000000111111111111) (= mask!1842 #b00000000000000000001111111111111) (= mask!1842 #b00000000000000000011111111111111) (= mask!1842 #b00000000000000000111111111111111) (= mask!1842 #b00000000000000001111111111111111) (= mask!1842 #b00000000000000011111111111111111) (= mask!1842 #b00000000000000111111111111111111) (= mask!1842 #b00000000000001111111111111111111) (= mask!1842 #b00000000000011111111111111111111) (= mask!1842 #b00000000000111111111111111111111) (= mask!1842 #b00000000001111111111111111111111) (= mask!1842 #b00000000011111111111111111111111) (= mask!1842 #b00000000111111111111111111111111) (= mask!1842 #b00000001111111111111111111111111) (= mask!1842 #b00000011111111111111111111111111) (= mask!1842 #b00000111111111111111111111111111) (= mask!1842 #b00001111111111111111111111111111) (= mask!1842 #b00011111111111111111111111111111) (= mask!1842 #b00111111111111111111111111111111)) (bvsle mask!1842 #b00111111111111111111111111111111)))))

(assert (=> start!35328 d!71523))

(declare-fun d!71525 () Bool)

(assert (=> d!71525 (= (array_inv!6674 _values!1208) (bvsge (size!9420 _values!1208) #b00000000000000000000000000000000))))

(assert (=> start!35328 d!71525))

(declare-fun d!71527 () Bool)

(assert (=> d!71527 (= (array_inv!6675 _keys!1456) (bvsge (size!9419 _keys!1456) #b00000000000000000000000000000000))))

(assert (=> start!35328 d!71527))

(declare-fun d!71529 () Bool)

(declare-fun lt!165565 () Bool)

(assert (=> d!71529 (= lt!165565 (select (content!197 Nil!5293) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!216631 () Bool)

(assert (=> d!71529 (= lt!165565 e!216631)))

(declare-fun res!196120 () Bool)

(assert (=> d!71529 (=> (not res!196120) (not e!216631))))

(assert (=> d!71529 (= res!196120 ((_ is Cons!5292) Nil!5293))))

(assert (=> d!71529 (= (contains!2381 Nil!5293 #b1000000000000000000000000000000000000000000000000000000000000000) lt!165565)))

(declare-fun b!353622 () Bool)

(declare-fun e!216632 () Bool)

(assert (=> b!353622 (= e!216631 e!216632)))

(declare-fun res!196119 () Bool)

(assert (=> b!353622 (=> res!196119 e!216632)))

(assert (=> b!353622 (= res!196119 (= (h!6148 Nil!5293) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!353623 () Bool)

(assert (=> b!353623 (= e!216632 (contains!2381 (t!10454 Nil!5293) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!71529 res!196120) b!353622))

(assert (= (and b!353622 (not res!196119)) b!353623))

(assert (=> d!71529 m!352895))

(declare-fun m!352901 () Bool)

(assert (=> d!71529 m!352901))

(declare-fun m!352903 () Bool)

(assert (=> b!353623 m!352903))

(assert (=> b!353587 d!71529))

(declare-fun b!353632 () Bool)

(declare-fun e!216641 () Bool)

(declare-fun e!216640 () Bool)

(assert (=> b!353632 (= e!216641 e!216640)))

(declare-fun lt!165573 () (_ BitVec 64))

(assert (=> b!353632 (= lt!165573 (select (arr!9067 _keys!1456) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10921 0))(
  ( (Unit!10922) )
))
(declare-fun lt!165574 () Unit!10921)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!19149 (_ BitVec 64) (_ BitVec 32)) Unit!10921)

(assert (=> b!353632 (= lt!165574 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1456 lt!165573 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!19149 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!353632 (arrayContainsKey!0 _keys!1456 lt!165573 #b00000000000000000000000000000000)))

(declare-fun lt!165572 () Unit!10921)

(assert (=> b!353632 (= lt!165572 lt!165574)))

(declare-fun res!196125 () Bool)

(declare-datatypes ((SeekEntryResult!3477 0))(
  ( (MissingZero!3477 (index!16087 (_ BitVec 32))) (Found!3477 (index!16088 (_ BitVec 32))) (Intermediate!3477 (undefined!4289 Bool) (index!16089 (_ BitVec 32)) (x!35206 (_ BitVec 32))) (Undefined!3477) (MissingVacant!3477 (index!16090 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19149 (_ BitVec 32)) SeekEntryResult!3477)

(assert (=> b!353632 (= res!196125 (= (seekEntryOrOpen!0 (select (arr!9067 _keys!1456) #b00000000000000000000000000000000) _keys!1456 mask!1842) (Found!3477 #b00000000000000000000000000000000)))))

(assert (=> b!353632 (=> (not res!196125) (not e!216640))))

(declare-fun b!353633 () Bool)

(declare-fun call!27149 () Bool)

(assert (=> b!353633 (= e!216641 call!27149)))

(declare-fun b!353634 () Bool)

(declare-fun e!216639 () Bool)

(assert (=> b!353634 (= e!216639 e!216641)))

(declare-fun c!53624 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!353634 (= c!53624 (validKeyInArray!0 (select (arr!9067 _keys!1456) #b00000000000000000000000000000000)))))

(declare-fun d!71531 () Bool)

(declare-fun res!196126 () Bool)

(assert (=> d!71531 (=> res!196126 e!216639)))

(assert (=> d!71531 (= res!196126 (bvsge #b00000000000000000000000000000000 (size!9419 _keys!1456)))))

(assert (=> d!71531 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842) e!216639)))

(declare-fun b!353635 () Bool)

(assert (=> b!353635 (= e!216640 call!27149)))

(declare-fun bm!27146 () Bool)

(assert (=> bm!27146 (= call!27149 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1456 mask!1842))))

(assert (= (and d!71531 (not res!196126)) b!353634))

(assert (= (and b!353634 c!53624) b!353632))

(assert (= (and b!353634 (not c!53624)) b!353633))

(assert (= (and b!353632 res!196125) b!353635))

(assert (= (or b!353635 b!353633) bm!27146))

(declare-fun m!352905 () Bool)

(assert (=> b!353632 m!352905))

(declare-fun m!352907 () Bool)

(assert (=> b!353632 m!352907))

(declare-fun m!352909 () Bool)

(assert (=> b!353632 m!352909))

(assert (=> b!353632 m!352905))

(declare-fun m!352911 () Bool)

(assert (=> b!353632 m!352911))

(assert (=> b!353634 m!352905))

(assert (=> b!353634 m!352905))

(declare-fun m!352913 () Bool)

(assert (=> b!353634 m!352913))

(declare-fun m!352915 () Bool)

(assert (=> bm!27146 m!352915))

(assert (=> b!353586 d!71531))

(declare-fun d!71533 () Bool)

(declare-fun res!196131 () Bool)

(declare-fun e!216646 () Bool)

(assert (=> d!71533 (=> res!196131 e!216646)))

(assert (=> d!71533 (= res!196131 ((_ is Nil!5293) Nil!5293))))

(assert (=> d!71533 (= (noDuplicate!178 Nil!5293) e!216646)))

(declare-fun b!353640 () Bool)

(declare-fun e!216647 () Bool)

(assert (=> b!353640 (= e!216646 e!216647)))

(declare-fun res!196132 () Bool)

(assert (=> b!353640 (=> (not res!196132) (not e!216647))))

(assert (=> b!353640 (= res!196132 (not (contains!2381 (t!10454 Nil!5293) (h!6148 Nil!5293))))))

(declare-fun b!353641 () Bool)

(assert (=> b!353641 (= e!216647 (noDuplicate!178 (t!10454 Nil!5293)))))

(assert (= (and d!71533 (not res!196131)) b!353640))

(assert (= (and b!353640 res!196132) b!353641))

(declare-fun m!352917 () Bool)

(assert (=> b!353640 m!352917))

(declare-fun m!352919 () Bool)

(assert (=> b!353641 m!352919))

(assert (=> b!353581 d!71533))

(declare-fun mapIsEmpty!13203 () Bool)

(declare-fun mapRes!13203 () Bool)

(assert (=> mapIsEmpty!13203 mapRes!13203))

(declare-fun mapNonEmpty!13203 () Bool)

(declare-fun tp!27099 () Bool)

(declare-fun e!216653 () Bool)

(assert (=> mapNonEmpty!13203 (= mapRes!13203 (and tp!27099 e!216653))))

(declare-fun mapValue!13203 () ValueCell!3555)

(declare-fun mapRest!13203 () (Array (_ BitVec 32) ValueCell!3555))

(declare-fun mapKey!13203 () (_ BitVec 32))

(assert (=> mapNonEmpty!13203 (= mapRest!13197 (store mapRest!13203 mapKey!13203 mapValue!13203))))

(declare-fun b!353648 () Bool)

(assert (=> b!353648 (= e!216653 tp_is_empty!7797)))

(declare-fun condMapEmpty!13203 () Bool)

(declare-fun mapDefault!13203 () ValueCell!3555)

(assert (=> mapNonEmpty!13197 (= condMapEmpty!13203 (= mapRest!13197 ((as const (Array (_ BitVec 32) ValueCell!3555)) mapDefault!13203)))))

(declare-fun e!216652 () Bool)

(assert (=> mapNonEmpty!13197 (= tp!27093 (and e!216652 mapRes!13203))))

(declare-fun b!353649 () Bool)

(assert (=> b!353649 (= e!216652 tp_is_empty!7797)))

(assert (= (and mapNonEmpty!13197 condMapEmpty!13203) mapIsEmpty!13203))

(assert (= (and mapNonEmpty!13197 (not condMapEmpty!13203)) mapNonEmpty!13203))

(assert (= (and mapNonEmpty!13203 ((_ is ValueCellFull!3555) mapValue!13203)) b!353648))

(assert (= (and mapNonEmpty!13197 ((_ is ValueCellFull!3555) mapDefault!13203)) b!353649))

(declare-fun m!352921 () Bool)

(assert (=> mapNonEmpty!13203 m!352921))

(check-sat (not b!353621) (not mapNonEmpty!13203) (not d!71521) (not b!353632) (not b!353641) tp_is_empty!7797 (not d!71529) (not b!353623) (not bm!27146) (not b!353640) (not b!353634))
(check-sat)
