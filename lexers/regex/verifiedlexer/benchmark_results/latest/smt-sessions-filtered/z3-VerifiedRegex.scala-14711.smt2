; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757966 () Bool)

(assert start!757966)

(declare-fun res!3181564 () Bool)

(declare-fun e!4742257 () Bool)

(assert (=> start!757966 (=> res!3181564 e!4742257)))

(declare-datatypes ((K!22688 0))(
  ( (K!22689 (val!32823 Int)) )
))
(declare-datatypes ((B!4481 0))(
  ( (B!4482 (val!32824 Int)) )
))
(declare-datatypes ((tuple2!70788 0))(
  ( (tuple2!70789 (_1!38697 K!22688) (_2!38697 B!4481)) )
))
(declare-datatypes ((List!75600 0))(
  ( (Nil!75474) (Cons!75474 (h!81922 tuple2!70788) (t!391372 List!75600)) )
))
(declare-datatypes ((ListMap!7191 0))(
  ( (ListMap!7192 (toList!11870 List!75600)) )
))
(declare-fun lt!2723070 () ListMap!7191)

(declare-fun key!1636 () K!22688)

(declare-fun contains!21087 (ListMap!7191 K!22688) Bool)

(assert (=> start!757966 (= res!3181564 (contains!21087 lt!2723070 key!1636))))

(declare-fun thiss!41873 () ListMap!7191)

(declare-fun removePresrvNoDuplicatedKeys!411 (List!75600 K!22688) List!75600)

(assert (=> start!757966 (= lt!2723070 (ListMap!7192 (removePresrvNoDuplicatedKeys!411 (toList!11870 thiss!41873) key!1636)))))

(assert (=> start!757966 e!4742257))

(declare-fun e!4742258 () Bool)

(declare-fun inv!97177 (ListMap!7191) Bool)

(assert (=> start!757966 (and (inv!97177 thiss!41873) e!4742258)))

(declare-fun tp_is_empty!54697 () Bool)

(assert (=> start!757966 tp_is_empty!54697))

(declare-fun b!8048477 () Bool)

(declare-datatypes ((List!75601 0))(
  ( (Nil!75475) (Cons!75475 (h!81923 K!22688) (t!391373 List!75601)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16083 (List!75601) (InoxSet K!22688))

(declare-fun keys!30765 (ListMap!7191) List!75601)

(assert (=> b!8048477 (= e!4742257 (not (= ((_ map and) (content!16083 (keys!30765 thiss!41873)) ((_ map not) (store ((as const (Array K!22688 Bool)) false) key!1636 true))) (content!16083 (keys!30765 lt!2723070)))))))

(declare-fun b!8048478 () Bool)

(declare-fun tp!2413347 () Bool)

(assert (=> b!8048478 (= e!4742258 tp!2413347)))

(assert (= (and start!757966 (not res!3181564)) b!8048477))

(assert (= start!757966 b!8048478))

(declare-fun m!8399678 () Bool)

(assert (=> start!757966 m!8399678))

(declare-fun m!8399680 () Bool)

(assert (=> start!757966 m!8399680))

(declare-fun m!8399682 () Bool)

(assert (=> start!757966 m!8399682))

(declare-fun m!8399684 () Bool)

(assert (=> b!8048477 m!8399684))

(declare-fun m!8399686 () Bool)

(assert (=> b!8048477 m!8399686))

(assert (=> b!8048477 m!8399684))

(declare-fun m!8399688 () Bool)

(assert (=> b!8048477 m!8399688))

(declare-fun m!8399690 () Bool)

(assert (=> b!8048477 m!8399690))

(declare-fun m!8399692 () Bool)

(assert (=> b!8048477 m!8399692))

(assert (=> b!8048477 m!8399688))

(check-sat (not b!8048477) (not start!757966) (not b!8048478) tp_is_empty!54697)
(check-sat)
(get-model)

(declare-fun d!2396954 () Bool)

(declare-fun c!1475601 () Bool)

(get-info :version)

(assert (=> d!2396954 (= c!1475601 ((_ is Nil!75475) (keys!30765 thiss!41873)))))

(declare-fun e!4742261 () (InoxSet K!22688))

(assert (=> d!2396954 (= (content!16083 (keys!30765 thiss!41873)) e!4742261)))

(declare-fun b!8048483 () Bool)

(assert (=> b!8048483 (= e!4742261 ((as const (Array K!22688 Bool)) false))))

(declare-fun b!8048484 () Bool)

(assert (=> b!8048484 (= e!4742261 ((_ map or) (store ((as const (Array K!22688 Bool)) false) (h!81923 (keys!30765 thiss!41873)) true) (content!16083 (t!391373 (keys!30765 thiss!41873)))))))

(assert (= (and d!2396954 c!1475601) b!8048483))

(assert (= (and d!2396954 (not c!1475601)) b!8048484))

(declare-fun m!8399694 () Bool)

(assert (=> b!8048484 m!8399694))

(declare-fun m!8399696 () Bool)

(assert (=> b!8048484 m!8399696))

(assert (=> b!8048477 d!2396954))

(declare-fun b!8048586 () Bool)

(assert (=> b!8048586 true))

(declare-fun d!2396956 () Bool)

(declare-fun e!4742316 () Bool)

(assert (=> d!2396956 e!4742316))

(declare-fun res!3181595 () Bool)

(assert (=> d!2396956 (=> (not res!3181595) (not e!4742316))))

(declare-fun lt!2723153 () List!75601)

(declare-fun noDuplicate!3165 (List!75601) Bool)

(assert (=> d!2396956 (= res!3181595 (noDuplicate!3165 lt!2723153))))

(declare-fun getKeysList!1220 (List!75600) List!75601)

(assert (=> d!2396956 (= lt!2723153 (getKeysList!1220 (toList!11870 thiss!41873)))))

(assert (=> d!2396956 (= (keys!30765 thiss!41873) lt!2723153)))

(declare-fun b!8048585 () Bool)

(declare-fun res!3181597 () Bool)

(assert (=> b!8048585 (=> (not res!3181597) (not e!4742316))))

(declare-fun length!822 (List!75601) Int)

(declare-fun length!823 (List!75600) Int)

(assert (=> b!8048585 (= res!3181597 (= (length!822 lt!2723153) (length!823 (toList!11870 thiss!41873))))))

(declare-fun res!3181596 () Bool)

(assert (=> b!8048586 (=> (not res!3181596) (not e!4742316))))

(declare-fun lambda!472808 () Int)

(declare-fun forall!18480 (List!75601 Int) Bool)

(assert (=> b!8048586 (= res!3181596 (forall!18480 lt!2723153 lambda!472808))))

(declare-fun lambda!472809 () Int)

(declare-fun b!8048587 () Bool)

(declare-fun map!18772 (List!75600 Int) List!75601)

(assert (=> b!8048587 (= e!4742316 (= (content!16083 lt!2723153) (content!16083 (map!18772 (toList!11870 thiss!41873) lambda!472809))))))

(assert (= (and d!2396956 res!3181595) b!8048585))

(assert (= (and b!8048585 res!3181597) b!8048586))

(assert (= (and b!8048586 res!3181596) b!8048587))

(declare-fun m!8399776 () Bool)

(assert (=> d!2396956 m!8399776))

(declare-fun m!8399778 () Bool)

(assert (=> d!2396956 m!8399778))

(declare-fun m!8399780 () Bool)

(assert (=> b!8048585 m!8399780))

(declare-fun m!8399782 () Bool)

(assert (=> b!8048585 m!8399782))

(declare-fun m!8399784 () Bool)

(assert (=> b!8048586 m!8399784))

(declare-fun m!8399786 () Bool)

(assert (=> b!8048587 m!8399786))

(declare-fun m!8399788 () Bool)

(assert (=> b!8048587 m!8399788))

(assert (=> b!8048587 m!8399788))

(declare-fun m!8399790 () Bool)

(assert (=> b!8048587 m!8399790))

(assert (=> b!8048477 d!2396956))

(declare-fun d!2396966 () Bool)

(declare-fun c!1475638 () Bool)

(assert (=> d!2396966 (= c!1475638 ((_ is Nil!75475) (keys!30765 lt!2723070)))))

(declare-fun e!4742317 () (InoxSet K!22688))

(assert (=> d!2396966 (= (content!16083 (keys!30765 lt!2723070)) e!4742317)))

(declare-fun b!8048590 () Bool)

(assert (=> b!8048590 (= e!4742317 ((as const (Array K!22688 Bool)) false))))

(declare-fun b!8048591 () Bool)

(assert (=> b!8048591 (= e!4742317 ((_ map or) (store ((as const (Array K!22688 Bool)) false) (h!81923 (keys!30765 lt!2723070)) true) (content!16083 (t!391373 (keys!30765 lt!2723070)))))))

(assert (= (and d!2396966 c!1475638) b!8048590))

(assert (= (and d!2396966 (not c!1475638)) b!8048591))

(declare-fun m!8399792 () Bool)

(assert (=> b!8048591 m!8399792))

(declare-fun m!8399794 () Bool)

(assert (=> b!8048591 m!8399794))

(assert (=> b!8048477 d!2396966))

(declare-fun bs!1971812 () Bool)

(declare-fun b!8048593 () Bool)

(assert (= bs!1971812 (and b!8048593 b!8048586)))

(declare-fun lambda!472810 () Int)

(assert (=> bs!1971812 (= (= (toList!11870 lt!2723070) (toList!11870 thiss!41873)) (= lambda!472810 lambda!472808))))

(assert (=> b!8048593 true))

(declare-fun bs!1971813 () Bool)

(declare-fun b!8048594 () Bool)

(assert (= bs!1971813 (and b!8048594 b!8048587)))

(declare-fun lambda!472811 () Int)

(assert (=> bs!1971813 (= lambda!472811 lambda!472809)))

(declare-fun d!2396968 () Bool)

(declare-fun e!4742318 () Bool)

(assert (=> d!2396968 e!4742318))

(declare-fun res!3181598 () Bool)

(assert (=> d!2396968 (=> (not res!3181598) (not e!4742318))))

(declare-fun lt!2723154 () List!75601)

(assert (=> d!2396968 (= res!3181598 (noDuplicate!3165 lt!2723154))))

(assert (=> d!2396968 (= lt!2723154 (getKeysList!1220 (toList!11870 lt!2723070)))))

(assert (=> d!2396968 (= (keys!30765 lt!2723070) lt!2723154)))

(declare-fun b!8048592 () Bool)

(declare-fun res!3181600 () Bool)

(assert (=> b!8048592 (=> (not res!3181600) (not e!4742318))))

(assert (=> b!8048592 (= res!3181600 (= (length!822 lt!2723154) (length!823 (toList!11870 lt!2723070))))))

(declare-fun res!3181599 () Bool)

(assert (=> b!8048593 (=> (not res!3181599) (not e!4742318))))

(assert (=> b!8048593 (= res!3181599 (forall!18480 lt!2723154 lambda!472810))))

(assert (=> b!8048594 (= e!4742318 (= (content!16083 lt!2723154) (content!16083 (map!18772 (toList!11870 lt!2723070) lambda!472811))))))

(assert (= (and d!2396968 res!3181598) b!8048592))

(assert (= (and b!8048592 res!3181600) b!8048593))

(assert (= (and b!8048593 res!3181599) b!8048594))

(declare-fun m!8399796 () Bool)

(assert (=> d!2396968 m!8399796))

(declare-fun m!8399798 () Bool)

(assert (=> d!2396968 m!8399798))

(declare-fun m!8399800 () Bool)

(assert (=> b!8048592 m!8399800))

(declare-fun m!8399802 () Bool)

(assert (=> b!8048592 m!8399802))

(declare-fun m!8399804 () Bool)

(assert (=> b!8048593 m!8399804))

(declare-fun m!8399806 () Bool)

(assert (=> b!8048594 m!8399806))

(declare-fun m!8399808 () Bool)

(assert (=> b!8048594 m!8399808))

(assert (=> b!8048594 m!8399808))

(declare-fun m!8399810 () Bool)

(assert (=> b!8048594 m!8399810))

(assert (=> b!8048477 d!2396968))

(declare-fun b!8048613 () Bool)

(declare-datatypes ((Unit!171206 0))(
  ( (Unit!171207) )
))
(declare-fun e!4742336 () Unit!171206)

(declare-fun Unit!171208 () Unit!171206)

(assert (=> b!8048613 (= e!4742336 Unit!171208)))

(declare-fun b!8048614 () Bool)

(declare-fun e!4742332 () Unit!171206)

(declare-fun lt!2723173 () Unit!171206)

(assert (=> b!8048614 (= e!4742332 lt!2723173)))

(declare-fun lt!2723174 () Unit!171206)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2532 (List!75600 K!22688) Unit!171206)

(assert (=> b!8048614 (= lt!2723174 (lemmaContainsKeyImpliesGetValueByKeyDefined!2532 (toList!11870 lt!2723070) key!1636))))

(declare-datatypes ((Option!17977 0))(
  ( (None!17976) (Some!17976 (v!55257 B!4481)) )
))
(declare-fun isDefined!14510 (Option!17977) Bool)

(declare-fun getValueByKey!2761 (List!75600 K!22688) Option!17977)

(assert (=> b!8048614 (isDefined!14510 (getValueByKey!2761 (toList!11870 lt!2723070) key!1636))))

(declare-fun lt!2723176 () Unit!171206)

(assert (=> b!8048614 (= lt!2723176 lt!2723174)))

(declare-fun lemmaInListThenGetKeysListContains!1215 (List!75600 K!22688) Unit!171206)

(assert (=> b!8048614 (= lt!2723173 (lemmaInListThenGetKeysListContains!1215 (toList!11870 lt!2723070) key!1636))))

(declare-fun call!746768 () Bool)

(assert (=> b!8048614 call!746768))

(declare-fun b!8048615 () Bool)

(declare-fun e!4742333 () Bool)

(declare-fun e!4742334 () Bool)

(assert (=> b!8048615 (= e!4742333 e!4742334)))

(declare-fun res!3181607 () Bool)

(assert (=> b!8048615 (=> (not res!3181607) (not e!4742334))))

(assert (=> b!8048615 (= res!3181607 (isDefined!14510 (getValueByKey!2761 (toList!11870 lt!2723070) key!1636)))))

(declare-fun b!8048616 () Bool)

(declare-fun contains!21089 (List!75601 K!22688) Bool)

(assert (=> b!8048616 (= e!4742334 (contains!21089 (keys!30765 lt!2723070) key!1636))))

(declare-fun b!8048617 () Bool)

(declare-fun e!4742335 () Bool)

(assert (=> b!8048617 (= e!4742335 (not (contains!21089 (keys!30765 lt!2723070) key!1636)))))

(declare-fun b!8048618 () Bool)

(declare-fun e!4742331 () List!75601)

(assert (=> b!8048618 (= e!4742331 (getKeysList!1220 (toList!11870 lt!2723070)))))

(declare-fun b!8048619 () Bool)

(assert (=> b!8048619 (= e!4742332 e!4742336)))

(declare-fun c!1475645 () Bool)

(assert (=> b!8048619 (= c!1475645 call!746768)))

(declare-fun b!8048620 () Bool)

(assert (=> b!8048620 (= e!4742331 (keys!30765 lt!2723070))))

(declare-fun d!2396970 () Bool)

(assert (=> d!2396970 e!4742333))

(declare-fun res!3181609 () Bool)

(assert (=> d!2396970 (=> res!3181609 e!4742333)))

(assert (=> d!2396970 (= res!3181609 e!4742335)))

(declare-fun res!3181608 () Bool)

(assert (=> d!2396970 (=> (not res!3181608) (not e!4742335))))

(declare-fun lt!2723177 () Bool)

(assert (=> d!2396970 (= res!3181608 (not lt!2723177))))

(declare-fun lt!2723178 () Bool)

(assert (=> d!2396970 (= lt!2723177 lt!2723178)))

(declare-fun lt!2723172 () Unit!171206)

(assert (=> d!2396970 (= lt!2723172 e!4742332)))

(declare-fun c!1475646 () Bool)

(assert (=> d!2396970 (= c!1475646 lt!2723178)))

(declare-fun containsKey!4784 (List!75600 K!22688) Bool)

(assert (=> d!2396970 (= lt!2723178 (containsKey!4784 (toList!11870 lt!2723070) key!1636))))

(assert (=> d!2396970 (= (contains!21087 lt!2723070 key!1636) lt!2723177)))

(declare-fun bm!746763 () Bool)

(assert (=> bm!746763 (= call!746768 (contains!21089 e!4742331 key!1636))))

(declare-fun c!1475647 () Bool)

(assert (=> bm!746763 (= c!1475647 c!1475646)))

(declare-fun b!8048621 () Bool)

(assert (=> b!8048621 false))

(declare-fun lt!2723171 () Unit!171206)

(declare-fun lt!2723175 () Unit!171206)

(assert (=> b!8048621 (= lt!2723171 lt!2723175)))

(assert (=> b!8048621 (containsKey!4784 (toList!11870 lt!2723070) key!1636)))

(declare-fun lemmaInGetKeysListThenContainsKey!1220 (List!75600 K!22688) Unit!171206)

(assert (=> b!8048621 (= lt!2723175 (lemmaInGetKeysListThenContainsKey!1220 (toList!11870 lt!2723070) key!1636))))

(declare-fun Unit!171212 () Unit!171206)

(assert (=> b!8048621 (= e!4742336 Unit!171212)))

(assert (= (and d!2396970 c!1475646) b!8048614))

(assert (= (and d!2396970 (not c!1475646)) b!8048619))

(assert (= (and b!8048619 c!1475645) b!8048621))

(assert (= (and b!8048619 (not c!1475645)) b!8048613))

(assert (= (or b!8048614 b!8048619) bm!746763))

(assert (= (and bm!746763 c!1475647) b!8048618))

(assert (= (and bm!746763 (not c!1475647)) b!8048620))

(assert (= (and d!2396970 res!3181608) b!8048617))

(assert (= (and d!2396970 (not res!3181609)) b!8048615))

(assert (= (and b!8048615 res!3181607) b!8048616))

(declare-fun m!8399812 () Bool)

(assert (=> b!8048614 m!8399812))

(declare-fun m!8399814 () Bool)

(assert (=> b!8048614 m!8399814))

(assert (=> b!8048614 m!8399814))

(declare-fun m!8399816 () Bool)

(assert (=> b!8048614 m!8399816))

(declare-fun m!8399818 () Bool)

(assert (=> b!8048614 m!8399818))

(assert (=> b!8048617 m!8399684))

(assert (=> b!8048617 m!8399684))

(declare-fun m!8399820 () Bool)

(assert (=> b!8048617 m!8399820))

(assert (=> b!8048618 m!8399798))

(declare-fun m!8399822 () Bool)

(assert (=> bm!746763 m!8399822))

(assert (=> b!8048615 m!8399814))

(assert (=> b!8048615 m!8399814))

(assert (=> b!8048615 m!8399816))

(declare-fun m!8399824 () Bool)

(assert (=> b!8048621 m!8399824))

(declare-fun m!8399826 () Bool)

(assert (=> b!8048621 m!8399826))

(assert (=> b!8048616 m!8399684))

(assert (=> b!8048616 m!8399684))

(assert (=> b!8048616 m!8399820))

(assert (=> b!8048620 m!8399684))

(assert (=> d!2396970 m!8399824))

(assert (=> start!757966 d!2396970))

(declare-fun bm!746776 () Bool)

(declare-fun call!746785 () (InoxSet tuple2!70788))

(declare-fun content!16085 (List!75600) (InoxSet tuple2!70788))

(assert (=> bm!746776 (= call!746785 (content!16085 (toList!11870 thiss!41873)))))

(declare-fun b!8048677 () Bool)

(declare-fun e!4742367 () List!75600)

(assert (=> b!8048677 (= e!4742367 Nil!75474)))

(declare-fun b!8048678 () Bool)

(declare-fun e!4742368 () List!75600)

(assert (=> b!8048678 (= e!4742368 e!4742367)))

(declare-fun c!1475669 () Bool)

(assert (=> b!8048678 (= c!1475669 (and ((_ is Cons!75474) (toList!11870 thiss!41873)) (not (= (_1!38697 (h!81922 (toList!11870 thiss!41873))) key!1636))))))

(declare-fun bm!746777 () Bool)

(declare-fun call!746781 () Bool)

(declare-fun c!1475670 () Bool)

(declare-fun lt!2723227 () K!22688)

(assert (=> bm!746777 (= call!746781 (containsKey!4784 (t!391372 (toList!11870 thiss!41873)) (ite c!1475670 lt!2723227 (_1!38697 (h!81922 (toList!11870 thiss!41873))))))))

(declare-fun b!8048679 () Bool)

(declare-fun e!4742363 () Unit!171206)

(declare-fun Unit!171216 () Unit!171206)

(assert (=> b!8048679 (= e!4742363 Unit!171216)))

(declare-fun b!8048680 () Bool)

(declare-fun lt!2723225 () Unit!171206)

(assert (=> b!8048680 (= lt!2723225 e!4742363)))

(declare-fun c!1475667 () Bool)

(declare-fun call!746783 () Bool)

(assert (=> b!8048680 (= c!1475667 call!746783)))

(declare-fun lt!2723230 () Unit!171206)

(declare-fun e!4742369 () Unit!171206)

(assert (=> b!8048680 (= lt!2723230 e!4742369)))

(declare-fun c!1475668 () Bool)

(assert (=> b!8048680 (= c!1475668 (contains!21089 (getKeysList!1220 (t!391372 (toList!11870 thiss!41873))) (_1!38697 (h!81922 (toList!11870 thiss!41873)))))))

(declare-fun lt!2723233 () List!75600)

(declare-fun $colon$colon!3427 (List!75600 tuple2!70788) List!75600)

(assert (=> b!8048680 (= lt!2723233 ($colon$colon!3427 (removePresrvNoDuplicatedKeys!411 (t!391372 (toList!11870 thiss!41873)) key!1636) (h!81922 (toList!11870 thiss!41873))))))

(assert (=> b!8048680 (= e!4742367 lt!2723233)))

(declare-fun b!8048681 () Bool)

(declare-fun res!3181624 () Bool)

(declare-fun e!4742364 () Bool)

(assert (=> b!8048681 (=> (not res!3181624) (not e!4742364))))

(declare-fun lt!2723232 () List!75600)

(assert (=> b!8048681 (= res!3181624 (not (containsKey!4784 lt!2723232 key!1636)))))

(declare-fun b!8048682 () Bool)

(declare-fun e!4742365 () List!75600)

(assert (=> b!8048682 (= e!4742365 (removePresrvNoDuplicatedKeys!411 (t!391372 (toList!11870 thiss!41873)) key!1636))))

(declare-fun call!746782 () (InoxSet tuple2!70788))

(declare-fun b!8048683 () Bool)

(declare-fun get!27170 (Option!17977) B!4481)

(assert (=> b!8048683 (= call!746782 ((_ map and) call!746785 ((_ map not) (store ((as const (Array tuple2!70788 Bool)) false) (tuple2!70789 key!1636 (get!27170 (getValueByKey!2761 (toList!11870 thiss!41873) key!1636))) true))))))

(declare-fun lt!2723234 () Unit!171206)

(declare-fun e!4742371 () Unit!171206)

(assert (=> b!8048683 (= lt!2723234 e!4742371)))

(declare-fun c!1475666 () Bool)

(declare-fun contains!21091 (List!75600 tuple2!70788) Bool)

(assert (=> b!8048683 (= c!1475666 (contains!21091 (t!391372 (toList!11870 thiss!41873)) (tuple2!70789 key!1636 (get!27170 (getValueByKey!2761 (toList!11870 thiss!41873) key!1636)))))))

(declare-fun e!4742366 () Unit!171206)

(declare-fun Unit!171217 () Unit!171206)

(assert (=> b!8048683 (= e!4742366 Unit!171217)))

(declare-fun b!8048684 () Bool)

(declare-fun Unit!171218 () Unit!171206)

(assert (=> b!8048684 (= e!4742371 Unit!171218)))

(declare-fun lt!2723221 () B!4481)

(assert (=> b!8048684 (= lt!2723221 (get!27170 (getValueByKey!2761 (toList!11870 thiss!41873) key!1636)))))

(assert (=> b!8048684 (= lt!2723227 key!1636)))

(declare-fun lt!2723228 () K!22688)

(assert (=> b!8048684 (= lt!2723228 key!1636)))

(declare-fun lt!2723226 () Unit!171206)

(declare-fun lemmaContainsTupleThenContainsKey!113 (List!75600 K!22688 B!4481) Unit!171206)

(assert (=> b!8048684 (= lt!2723226 (lemmaContainsTupleThenContainsKey!113 (t!391372 (toList!11870 thiss!41873)) lt!2723227 (get!27170 (getValueByKey!2761 (toList!11870 thiss!41873) key!1636))))))

(assert (=> b!8048684 call!746781))

(declare-fun lt!2723218 () Unit!171206)

(assert (=> b!8048684 (= lt!2723218 lt!2723226)))

(assert (=> b!8048684 false))

(declare-fun bm!746778 () Bool)

(assert (=> bm!746778 (= call!746783 (containsKey!4784 e!4742365 (ite c!1475670 key!1636 (_1!38697 (h!81922 (toList!11870 thiss!41873))))))))

(declare-fun c!1475665 () Bool)

(assert (=> bm!746778 (= c!1475665 c!1475670)))

(declare-fun bm!746779 () Bool)

(declare-fun call!746784 () (InoxSet tuple2!70788))

(assert (=> bm!746779 (= call!746784 (content!16085 (toList!11870 thiss!41873)))))

(declare-fun b!8048685 () Bool)

(assert (=> b!8048685 (= e!4742365 (toList!11870 thiss!41873))))

(declare-fun b!8048686 () Bool)

(declare-fun Unit!171219 () Unit!171206)

(assert (=> b!8048686 (= e!4742369 Unit!171219)))

(declare-fun lt!2723219 () Unit!171206)

(assert (=> b!8048686 (= lt!2723219 (lemmaInGetKeysListThenContainsKey!1220 (t!391372 (toList!11870 thiss!41873)) (_1!38697 (h!81922 (toList!11870 thiss!41873)))))))

(assert (=> b!8048686 call!746781))

(declare-fun lt!2723223 () Unit!171206)

(assert (=> b!8048686 (= lt!2723223 lt!2723219)))

(assert (=> b!8048686 false))

(declare-fun d!2396972 () Bool)

(assert (=> d!2396972 e!4742364))

(declare-fun res!3181623 () Bool)

(assert (=> d!2396972 (=> (not res!3181623) (not e!4742364))))

(declare-fun invariantList!1912 (List!75600) Bool)

(assert (=> d!2396972 (= res!3181623 (invariantList!1912 lt!2723232))))

(assert (=> d!2396972 (= lt!2723232 e!4742368)))

(assert (=> d!2396972 (= c!1475670 (and ((_ is Cons!75474) (toList!11870 thiss!41873)) (= (_1!38697 (h!81922 (toList!11870 thiss!41873))) key!1636)))))

(assert (=> d!2396972 (invariantList!1912 (toList!11870 thiss!41873))))

(assert (=> d!2396972 (= (removePresrvNoDuplicatedKeys!411 (toList!11870 thiss!41873) key!1636) lt!2723232)))

(declare-fun bm!746780 () Bool)

(assert (=> bm!746780 (= call!746782 (content!16085 (t!391372 (toList!11870 thiss!41873))))))

(declare-fun bm!746781 () Bool)

(declare-fun call!746786 () (InoxSet tuple2!70788))

(assert (=> bm!746781 (= call!746786 (content!16085 lt!2723232))))

(declare-fun b!8048687 () Bool)

(assert (=> b!8048687 (= e!4742368 (t!391372 (toList!11870 thiss!41873)))))

(declare-fun c!1475671 () Bool)

(assert (=> b!8048687 (= c!1475671 call!746783)))

(declare-fun lt!2723217 () Unit!171206)

(assert (=> b!8048687 (= lt!2723217 e!4742366)))

(declare-fun b!8048688 () Bool)

(declare-fun res!3181622 () Bool)

(assert (=> b!8048688 (=> (not res!3181622) (not e!4742364))))

(assert (=> b!8048688 (= res!3181622 (= (content!16083 (getKeysList!1220 lt!2723232)) ((_ map and) (content!16083 (getKeysList!1220 (toList!11870 thiss!41873))) ((_ map not) (store ((as const (Array K!22688 Bool)) false) key!1636 true)))))))

(declare-fun b!8048689 () Bool)

(declare-fun e!4742370 () Bool)

(assert (=> b!8048689 (= e!4742364 e!4742370)))

(declare-fun c!1475672 () Bool)

(assert (=> b!8048689 (= c!1475672 (containsKey!4784 (toList!11870 thiss!41873) key!1636))))

(declare-fun b!8048690 () Bool)

(assert (=> b!8048690 (= e!4742370 (= call!746786 ((_ map and) call!746784 ((_ map not) (store ((as const (Array tuple2!70788 Bool)) false) (tuple2!70789 key!1636 (get!27170 (getValueByKey!2761 (toList!11870 thiss!41873) key!1636))) true)))))))

(assert (=> b!8048690 (containsKey!4784 (toList!11870 thiss!41873) key!1636)))

(declare-fun lt!2723224 () Unit!171206)

(assert (=> b!8048690 (= lt!2723224 (lemmaContainsKeyImpliesGetValueByKeyDefined!2532 (toList!11870 thiss!41873) key!1636))))

(assert (=> b!8048690 (isDefined!14510 (getValueByKey!2761 (toList!11870 thiss!41873) key!1636))))

(declare-fun lt!2723222 () Unit!171206)

(assert (=> b!8048690 (= lt!2723222 lt!2723224)))

(declare-fun b!8048691 () Bool)

(assert (=> b!8048691 (= call!746782 call!746785)))

(declare-fun Unit!171220 () Unit!171206)

(assert (=> b!8048691 (= e!4742366 Unit!171220)))

(declare-fun b!8048692 () Bool)

(declare-fun Unit!171221 () Unit!171206)

(assert (=> b!8048692 (= e!4742369 Unit!171221)))

(declare-fun b!8048693 () Bool)

(assert (=> b!8048693 (= e!4742370 (= call!746786 call!746784))))

(declare-fun b!8048694 () Bool)

(declare-fun Unit!171222 () Unit!171206)

(assert (=> b!8048694 (= e!4742363 Unit!171222)))

(declare-fun lt!2723229 () List!75600)

(assert (=> b!8048694 (= lt!2723229 (removePresrvNoDuplicatedKeys!411 (t!391372 (toList!11870 thiss!41873)) key!1636))))

(declare-fun lt!2723231 () Unit!171206)

(assert (=> b!8048694 (= lt!2723231 (lemmaInListThenGetKeysListContains!1215 lt!2723229 (_1!38697 (h!81922 (toList!11870 thiss!41873)))))))

(assert (=> b!8048694 (contains!21089 (getKeysList!1220 lt!2723229) (_1!38697 (h!81922 (toList!11870 thiss!41873))))))

(declare-fun lt!2723220 () Unit!171206)

(assert (=> b!8048694 (= lt!2723220 lt!2723231)))

(assert (=> b!8048694 false))

(declare-fun b!8048695 () Bool)

(declare-fun Unit!171223 () Unit!171206)

(assert (=> b!8048695 (= e!4742371 Unit!171223)))

(assert (= (and d!2396972 c!1475670) b!8048687))

(assert (= (and d!2396972 (not c!1475670)) b!8048678))

(assert (= (and b!8048687 c!1475671) b!8048683))

(assert (= (and b!8048687 (not c!1475671)) b!8048691))

(assert (= (and b!8048683 c!1475666) b!8048684))

(assert (= (and b!8048683 (not c!1475666)) b!8048695))

(assert (= (or b!8048683 b!8048691) bm!746780))

(assert (= (or b!8048683 b!8048691) bm!746776))

(assert (= (and b!8048678 c!1475669) b!8048680))

(assert (= (and b!8048678 (not c!1475669)) b!8048677))

(assert (= (and b!8048680 c!1475668) b!8048686))

(assert (= (and b!8048680 (not c!1475668)) b!8048692))

(assert (= (and b!8048680 c!1475667) b!8048694))

(assert (= (and b!8048680 (not c!1475667)) b!8048679))

(assert (= (or b!8048684 b!8048686) bm!746777))

(assert (= (or b!8048687 b!8048680) bm!746778))

(assert (= (and bm!746778 c!1475665) b!8048685))

(assert (= (and bm!746778 (not c!1475665)) b!8048682))

(assert (= (and d!2396972 res!3181623) b!8048681))

(assert (= (and b!8048681 res!3181624) b!8048688))

(assert (= (and b!8048688 res!3181622) b!8048689))

(assert (= (and b!8048689 c!1475672) b!8048690))

(assert (= (and b!8048689 (not c!1475672)) b!8048693))

(assert (= (or b!8048690 b!8048693) bm!746781))

(assert (= (or b!8048690 b!8048693) bm!746779))

(declare-fun m!8399860 () Bool)

(assert (=> b!8048682 m!8399860))

(declare-fun m!8399862 () Bool)

(assert (=> d!2396972 m!8399862))

(declare-fun m!8399864 () Bool)

(assert (=> d!2396972 m!8399864))

(declare-fun m!8399866 () Bool)

(assert (=> b!8048683 m!8399866))

(assert (=> b!8048683 m!8399866))

(declare-fun m!8399868 () Bool)

(assert (=> b!8048683 m!8399868))

(declare-fun m!8399870 () Bool)

(assert (=> b!8048683 m!8399870))

(declare-fun m!8399872 () Bool)

(assert (=> b!8048683 m!8399872))

(declare-fun m!8399874 () Bool)

(assert (=> b!8048690 m!8399874))

(assert (=> b!8048690 m!8399866))

(declare-fun m!8399876 () Bool)

(assert (=> b!8048690 m!8399876))

(assert (=> b!8048690 m!8399866))

(assert (=> b!8048690 m!8399866))

(assert (=> b!8048690 m!8399868))

(assert (=> b!8048690 m!8399870))

(declare-fun m!8399878 () Bool)

(assert (=> b!8048690 m!8399878))

(assert (=> b!8048694 m!8399860))

(declare-fun m!8399880 () Bool)

(assert (=> b!8048694 m!8399880))

(declare-fun m!8399882 () Bool)

(assert (=> b!8048694 m!8399882))

(assert (=> b!8048694 m!8399882))

(declare-fun m!8399884 () Bool)

(assert (=> b!8048694 m!8399884))

(declare-fun m!8399886 () Bool)

(assert (=> bm!746777 m!8399886))

(declare-fun m!8399888 () Bool)

(assert (=> b!8048688 m!8399888))

(declare-fun m!8399890 () Bool)

(assert (=> b!8048688 m!8399890))

(assert (=> b!8048688 m!8399778))

(declare-fun m!8399892 () Bool)

(assert (=> b!8048688 m!8399892))

(assert (=> b!8048688 m!8399692))

(assert (=> b!8048688 m!8399888))

(assert (=> b!8048688 m!8399778))

(assert (=> b!8048684 m!8399866))

(assert (=> b!8048684 m!8399866))

(assert (=> b!8048684 m!8399868))

(assert (=> b!8048684 m!8399868))

(declare-fun m!8399894 () Bool)

(assert (=> b!8048684 m!8399894))

(declare-fun m!8399896 () Bool)

(assert (=> b!8048680 m!8399896))

(assert (=> b!8048680 m!8399896))

(declare-fun m!8399898 () Bool)

(assert (=> b!8048680 m!8399898))

(assert (=> b!8048680 m!8399860))

(assert (=> b!8048680 m!8399860))

(declare-fun m!8399900 () Bool)

(assert (=> b!8048680 m!8399900))

(declare-fun m!8399902 () Bool)

(assert (=> bm!746781 m!8399902))

(declare-fun m!8399904 () Bool)

(assert (=> bm!746779 m!8399904))

(assert (=> b!8048689 m!8399878))

(declare-fun m!8399906 () Bool)

(assert (=> b!8048686 m!8399906))

(declare-fun m!8399908 () Bool)

(assert (=> bm!746778 m!8399908))

(assert (=> bm!746776 m!8399904))

(declare-fun m!8399910 () Bool)

(assert (=> b!8048681 m!8399910))

(declare-fun m!8399912 () Bool)

(assert (=> bm!746780 m!8399912))

(assert (=> start!757966 d!2396972))

(declare-fun d!2396978 () Bool)

(assert (=> d!2396978 (= (inv!97177 thiss!41873) (invariantList!1912 (toList!11870 thiss!41873)))))

(declare-fun bs!1971816 () Bool)

(assert (= bs!1971816 d!2396978))

(assert (=> bs!1971816 m!8399864))

(assert (=> start!757966 d!2396978))

(declare-fun tp_is_empty!54701 () Bool)

(declare-fun b!8048700 () Bool)

(declare-fun e!4742374 () Bool)

(declare-fun tp!2413353 () Bool)

(assert (=> b!8048700 (= e!4742374 (and tp_is_empty!54697 tp_is_empty!54701 tp!2413353))))

(assert (=> b!8048478 (= tp!2413347 e!4742374)))

(assert (= (and b!8048478 ((_ is Cons!75474) (toList!11870 thiss!41873))) b!8048700))

(check-sat tp_is_empty!54701 (not b!8048484) (not b!8048690) (not b!8048591) (not b!8048620) (not b!8048614) (not bm!746780) (not b!8048585) (not b!8048618) (not b!8048689) (not d!2396972) (not b!8048681) (not b!8048617) tp_is_empty!54697 (not d!2396968) (not b!8048680) (not d!2396978) (not b!8048700) (not b!8048594) (not bm!746779) (not b!8048615) (not b!8048694) (not b!8048616) (not b!8048587) (not d!2396970) (not bm!746776) (not b!8048593) (not b!8048682) (not b!8048683) (not bm!746777) (not d!2396956) (not b!8048688) (not b!8048586) (not b!8048686) (not b!8048592) (not bm!746778) (not b!8048684) (not bm!746763) (not b!8048621) (not bm!746781))
(check-sat)
