; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107688 () Bool)

(assert start!107688)

(declare-fun e!775741 () Bool)

(declare-datatypes ((BalanceConc!7972 0) (Conc!4020 0) (List!12248 0) (IArray!8045 0) (Object!2222 0))(
  ( (BalanceConc!7973 (c!202492 Conc!4020)) )
  ( (Node!4020 (left!10613 Conc!4020) (right!10943 Conc!4020) (csize!8270 Int) (cheight!4231 Int)) (Leaf!6190 (xs!6731 IArray!8045) (csize!8271 Int)) (Empty!4020) )
  ( (Nil!12190) (Cons!12190 (h!17591 Object!2222) (t!112632 List!12248)) )
  ( (IArray!8046 (innerList!4080 List!12248)) )
  ( (BalanceConc!7971 (value!68277 BalanceConc!7972)) (List!12247 (value!68278 List!12248)) (Character!56 (value!68279 (_ BitVec 16))) (Open!56 (value!68280 Int)) )
))
(declare-datatypes ((T!22580 0))(
  ( (T!22581 (val!4002 Int)) )
))
(declare-datatypes ((List!12249 0))(
  ( (Nil!12191) (Cons!12191 (h!17592 T!22580) (t!112633 List!12249)) )
))
(declare-datatypes ((Vector!116 0))(
  ( (Vector!117 (underlying!2802 Object!2222) (overflowing!115 List!12249)) )
))
(declare-fun thiss!9565 () Vector!116)

(declare-fun b!1209260 () Bool)

(declare-fun from!777 () Int)

(declare-fun other!28 () Vector!116)

(declare-fun equivalentSequenceAsSameSize!4 (Vector!116 Vector!116 Int) Bool)

(assert (=> b!1209260 (= e!775741 (equivalentSequenceAsSameSize!4 thiss!9565 other!28 (+ 1 from!777)))))

(declare-fun res!543821 () Bool)

(declare-fun e!775736 () Bool)

(assert (=> start!107688 (=> (not res!543821) (not e!775736))))

(assert (=> start!107688 (= res!543821 (<= 0 from!777))))

(assert (=> start!107688 e!775736))

(assert (=> start!107688 true))

(declare-fun e!775738 () Bool)

(assert (=> start!107688 e!775738))

(declare-fun e!775740 () Bool)

(assert (=> start!107688 e!775740))

(declare-fun b!1209261 () Bool)

(declare-fun e!775739 () Bool)

(declare-fun e!775737 () Bool)

(assert (=> b!1209261 (= e!775739 e!775737)))

(declare-fun res!543822 () Bool)

(assert (=> b!1209261 (=> res!543822 e!775737)))

(declare-fun lt!413715 () Int)

(declare-fun lt!413712 () Int)

(assert (=> b!1209261 (= res!543822 (or (not (= lt!413712 lt!413715)) (= from!777 lt!413712)))))

(declare-fun lt!413716 () List!12249)

(declare-fun size!9732 (List!12249) Int)

(assert (=> b!1209261 (= lt!413715 (size!9732 lt!413716))))

(declare-fun list!4539 (Vector!116) List!12249)

(assert (=> b!1209261 (= lt!413716 (list!4539 other!28))))

(declare-fun size!9733 (Vector!116) Int)

(assert (=> b!1209261 (= lt!413715 (size!9733 other!28))))

(declare-fun b!1209262 () Bool)

(declare-fun tp!342670 () Bool)

(declare-fun tp!342673 () Bool)

(assert (=> b!1209262 (= e!775740 (and tp!342670 tp!342673))))

(declare-fun b!1209263 () Bool)

(declare-fun tp!342671 () Bool)

(declare-fun tp!342672 () Bool)

(assert (=> b!1209263 (= e!775738 (and tp!342671 tp!342672))))

(declare-fun b!1209264 () Bool)

(assert (=> b!1209264 (= e!775736 (not e!775739))))

(declare-fun res!543820 () Bool)

(assert (=> b!1209264 (=> res!543820 e!775739)))

(assert (=> b!1209264 (= res!543820 (> from!777 lt!413712))))

(declare-fun lt!413720 () List!12249)

(assert (=> b!1209264 (= lt!413712 (size!9732 lt!413720))))

(assert (=> b!1209264 (= lt!413720 (list!4539 thiss!9565))))

(assert (=> b!1209264 (= lt!413712 (size!9733 thiss!9565))))

(declare-fun lt!413721 () List!12249)

(declare-fun b!1209265 () Bool)

(declare-fun lt!413710 () List!12249)

(assert (=> b!1209265 (= e!775737 (= e!775741 (= lt!413710 lt!413721)))))

(declare-fun res!543823 () Bool)

(assert (=> b!1209265 (=> (not res!543823) (not e!775741))))

(declare-fun lt!413719 () T!22580)

(declare-fun lt!413718 () T!22580)

(assert (=> b!1209265 (= res!543823 (= lt!413719 lt!413718))))

(declare-fun lt!413711 () T!22580)

(assert (=> b!1209265 (= lt!413718 lt!413711)))

(declare-fun apply!2636 (Vector!116 Int) T!22580)

(assert (=> b!1209265 (= lt!413718 (apply!2636 other!28 from!777))))

(declare-fun lt!413717 () T!22580)

(assert (=> b!1209265 (= lt!413719 lt!413717)))

(assert (=> b!1209265 (= lt!413719 (apply!2636 thiss!9565 from!777))))

(declare-fun tail!1762 (List!12249) List!12249)

(declare-fun drop!648 (List!12249 Int) List!12249)

(assert (=> b!1209265 (= (tail!1762 lt!413721) (drop!648 lt!413716 (+ 1 from!777)))))

(declare-datatypes ((Unit!18568 0))(
  ( (Unit!18569) )
))
(declare-fun lt!413709 () Unit!18568)

(declare-fun lemmaDropTail!393 (List!12249 Int) Unit!18568)

(assert (=> b!1209265 (= lt!413709 (lemmaDropTail!393 lt!413716 from!777))))

(assert (=> b!1209265 (= (tail!1762 lt!413710) (drop!648 lt!413720 (+ 1 from!777)))))

(declare-fun lt!413714 () Unit!18568)

(assert (=> b!1209265 (= lt!413714 (lemmaDropTail!393 lt!413720 from!777))))

(declare-fun head!2144 (List!12249) T!22580)

(assert (=> b!1209265 (= (head!2144 lt!413721) lt!413711)))

(declare-fun apply!2637 (List!12249 Int) T!22580)

(assert (=> b!1209265 (= lt!413711 (apply!2637 lt!413716 from!777))))

(assert (=> b!1209265 (= lt!413721 (drop!648 lt!413716 from!777))))

(declare-fun lt!413713 () Unit!18568)

(declare-fun lemmaDropApply!413 (List!12249 Int) Unit!18568)

(assert (=> b!1209265 (= lt!413713 (lemmaDropApply!413 lt!413716 from!777))))

(assert (=> b!1209265 (= (head!2144 lt!413710) lt!413717)))

(assert (=> b!1209265 (= lt!413717 (apply!2637 lt!413720 from!777))))

(assert (=> b!1209265 (= lt!413710 (drop!648 lt!413720 from!777))))

(declare-fun lt!413708 () Unit!18568)

(assert (=> b!1209265 (= lt!413708 (lemmaDropApply!413 lt!413720 from!777))))

(assert (= (and start!107688 res!543821) b!1209264))

(assert (= (and b!1209264 (not res!543820)) b!1209261))

(assert (= (and b!1209261 (not res!543822)) b!1209265))

(assert (= (and b!1209265 res!543823) b!1209260))

(assert (= start!107688 b!1209263))

(assert (= start!107688 b!1209262))

(declare-fun m!1385073 () Bool)

(assert (=> b!1209260 m!1385073))

(declare-fun m!1385075 () Bool)

(assert (=> b!1209261 m!1385075))

(declare-fun m!1385077 () Bool)

(assert (=> b!1209261 m!1385077))

(declare-fun m!1385079 () Bool)

(assert (=> b!1209261 m!1385079))

(declare-fun m!1385081 () Bool)

(assert (=> b!1209264 m!1385081))

(declare-fun m!1385083 () Bool)

(assert (=> b!1209264 m!1385083))

(declare-fun m!1385085 () Bool)

(assert (=> b!1209264 m!1385085))

(declare-fun m!1385087 () Bool)

(assert (=> b!1209265 m!1385087))

(declare-fun m!1385089 () Bool)

(assert (=> b!1209265 m!1385089))

(declare-fun m!1385091 () Bool)

(assert (=> b!1209265 m!1385091))

(declare-fun m!1385093 () Bool)

(assert (=> b!1209265 m!1385093))

(declare-fun m!1385095 () Bool)

(assert (=> b!1209265 m!1385095))

(declare-fun m!1385097 () Bool)

(assert (=> b!1209265 m!1385097))

(declare-fun m!1385099 () Bool)

(assert (=> b!1209265 m!1385099))

(declare-fun m!1385101 () Bool)

(assert (=> b!1209265 m!1385101))

(declare-fun m!1385103 () Bool)

(assert (=> b!1209265 m!1385103))

(declare-fun m!1385105 () Bool)

(assert (=> b!1209265 m!1385105))

(declare-fun m!1385107 () Bool)

(assert (=> b!1209265 m!1385107))

(declare-fun m!1385109 () Bool)

(assert (=> b!1209265 m!1385109))

(declare-fun m!1385111 () Bool)

(assert (=> b!1209265 m!1385111))

(declare-fun m!1385113 () Bool)

(assert (=> b!1209265 m!1385113))

(declare-fun m!1385115 () Bool)

(assert (=> b!1209265 m!1385115))

(declare-fun m!1385117 () Bool)

(assert (=> b!1209265 m!1385117))

(check-sat (not b!1209264) (not b!1209263) (not b!1209262) (not b!1209261) (not b!1209260) (not b!1209265))
(check-sat)
(get-model)

(declare-fun d!345842 () Bool)

(declare-fun lt!413727 () Int)

(assert (=> d!345842 (>= lt!413727 0)))

(declare-fun e!775747 () Int)

(assert (=> d!345842 (= lt!413727 e!775747)))

(declare-fun c!202498 () Bool)

(get-info :version)

(assert (=> d!345842 (= c!202498 ((_ is Nil!12191) lt!413720))))

(assert (=> d!345842 (= (size!9732 lt!413720) lt!413727)))

(declare-fun b!1209276 () Bool)

(assert (=> b!1209276 (= e!775747 0)))

(declare-fun b!1209277 () Bool)

(assert (=> b!1209277 (= e!775747 (+ 1 (size!9732 (t!112633 lt!413720))))))

(assert (= (and d!345842 c!202498) b!1209276))

(assert (= (and d!345842 (not c!202498)) b!1209277))

(declare-fun m!1385121 () Bool)

(assert (=> b!1209277 m!1385121))

(assert (=> b!1209264 d!345842))

(declare-fun d!345848 () Bool)

(declare-fun choose!7756 (Vector!116) List!12249)

(assert (=> d!345848 (= (list!4539 thiss!9565) (choose!7756 thiss!9565))))

(declare-fun bs!288552 () Bool)

(assert (= bs!288552 d!345848))

(declare-fun m!1385125 () Bool)

(assert (=> bs!288552 m!1385125))

(assert (=> b!1209264 d!345848))

(declare-fun d!345852 () Bool)

(declare-fun lt!413733 () Int)

(assert (=> d!345852 (= lt!413733 (size!9732 (list!4539 thiss!9565)))))

(declare-fun choose!7757 (Vector!116) Int)

(assert (=> d!345852 (= lt!413733 (choose!7757 thiss!9565))))

(assert (=> d!345852 (= (size!9733 thiss!9565) lt!413733)))

(declare-fun bs!288554 () Bool)

(assert (= bs!288554 d!345852))

(assert (=> bs!288554 m!1385083))

(assert (=> bs!288554 m!1385083))

(declare-fun m!1385131 () Bool)

(assert (=> bs!288554 m!1385131))

(declare-fun m!1385133 () Bool)

(assert (=> bs!288554 m!1385133))

(assert (=> b!1209264 d!345852))

(declare-fun d!345856 () Bool)

(assert (=> d!345856 (= (head!2144 lt!413721) (h!17592 lt!413721))))

(assert (=> b!1209265 d!345856))

(declare-fun d!345860 () Bool)

(assert (=> d!345860 (= (head!2144 (drop!648 lt!413716 from!777)) (apply!2637 lt!413716 from!777))))

(declare-fun lt!413739 () Unit!18568)

(declare-fun choose!7758 (List!12249 Int) Unit!18568)

(assert (=> d!345860 (= lt!413739 (choose!7758 lt!413716 from!777))))

(declare-fun e!775753 () Bool)

(assert (=> d!345860 e!775753))

(declare-fun res!543829 () Bool)

(assert (=> d!345860 (=> (not res!543829) (not e!775753))))

(assert (=> d!345860 (= res!543829 (>= from!777 0))))

(assert (=> d!345860 (= (lemmaDropApply!413 lt!413716 from!777) lt!413739)))

(declare-fun b!1209283 () Bool)

(assert (=> b!1209283 (= e!775753 (< from!777 (size!9732 lt!413716)))))

(assert (= (and d!345860 res!543829) b!1209283))

(assert (=> d!345860 m!1385091))

(assert (=> d!345860 m!1385091))

(declare-fun m!1385141 () Bool)

(assert (=> d!345860 m!1385141))

(assert (=> d!345860 m!1385099))

(declare-fun m!1385143 () Bool)

(assert (=> d!345860 m!1385143))

(assert (=> b!1209283 m!1385075))

(assert (=> b!1209265 d!345860))

(declare-fun b!1209329 () Bool)

(declare-fun e!775781 () List!12249)

(declare-fun e!775780 () List!12249)

(assert (=> b!1209329 (= e!775781 e!775780)))

(declare-fun c!202521 () Bool)

(assert (=> b!1209329 (= c!202521 (<= (+ 1 from!777) 0))))

(declare-fun b!1209330 () Bool)

(declare-fun e!775783 () Int)

(assert (=> b!1209330 (= e!775783 0)))

(declare-fun b!1209331 () Bool)

(declare-fun e!775779 () Int)

(declare-fun call!84393 () Int)

(assert (=> b!1209331 (= e!775779 call!84393)))

(declare-fun b!1209332 () Bool)

(assert (=> b!1209332 (= e!775781 Nil!12191)))

(declare-fun b!1209334 () Bool)

(assert (=> b!1209334 (= e!775783 (- call!84393 (+ 1 from!777)))))

(declare-fun b!1209335 () Bool)

(declare-fun e!775782 () Bool)

(declare-fun lt!413745 () List!12249)

(assert (=> b!1209335 (= e!775782 (= (size!9732 lt!413745) e!775779))))

(declare-fun c!202522 () Bool)

(assert (=> b!1209335 (= c!202522 (<= (+ 1 from!777) 0))))

(declare-fun b!1209336 () Bool)

(assert (=> b!1209336 (= e!775780 (drop!648 (t!112633 lt!413716) (- (+ 1 from!777) 1)))))

(declare-fun d!345864 () Bool)

(assert (=> d!345864 e!775782))

(declare-fun res!543835 () Bool)

(assert (=> d!345864 (=> (not res!543835) (not e!775782))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1726 (List!12249) (InoxSet T!22580))

(assert (=> d!345864 (= res!543835 (= ((_ map implies) (content!1726 lt!413745) (content!1726 lt!413716)) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!345864 (= lt!413745 e!775781)))

(declare-fun c!202520 () Bool)

(assert (=> d!345864 (= c!202520 ((_ is Nil!12191) lt!413716))))

(assert (=> d!345864 (= (drop!648 lt!413716 (+ 1 from!777)) lt!413745)))

(declare-fun b!1209333 () Bool)

(assert (=> b!1209333 (= e!775779 e!775783)))

(declare-fun c!202519 () Bool)

(assert (=> b!1209333 (= c!202519 (>= (+ 1 from!777) call!84393))))

(declare-fun bm!84388 () Bool)

(assert (=> bm!84388 (= call!84393 (size!9732 lt!413716))))

(declare-fun b!1209337 () Bool)

(assert (=> b!1209337 (= e!775780 lt!413716)))

(assert (= (and d!345864 c!202520) b!1209332))

(assert (= (and d!345864 (not c!202520)) b!1209329))

(assert (= (and b!1209329 c!202521) b!1209337))

(assert (= (and b!1209329 (not c!202521)) b!1209336))

(assert (= (and d!345864 res!543835) b!1209335))

(assert (= (and b!1209335 c!202522) b!1209331))

(assert (= (and b!1209335 (not c!202522)) b!1209333))

(assert (= (and b!1209333 c!202519) b!1209330))

(assert (= (and b!1209333 (not c!202519)) b!1209334))

(assert (= (or b!1209331 b!1209333 b!1209334) bm!84388))

(declare-fun m!1385159 () Bool)

(assert (=> b!1209335 m!1385159))

(declare-fun m!1385161 () Bool)

(assert (=> b!1209336 m!1385161))

(declare-fun m!1385163 () Bool)

(assert (=> d!345864 m!1385163))

(declare-fun m!1385165 () Bool)

(assert (=> d!345864 m!1385165))

(assert (=> bm!84388 m!1385075))

(assert (=> b!1209265 d!345864))

(declare-fun d!345872 () Bool)

(assert (=> d!345872 (= (tail!1762 lt!413710) (t!112633 lt!413710))))

(assert (=> b!1209265 d!345872))

(declare-fun b!1209348 () Bool)

(declare-fun e!775792 () List!12249)

(declare-fun e!775791 () List!12249)

(assert (=> b!1209348 (= e!775792 e!775791)))

(declare-fun c!202529 () Bool)

(assert (=> b!1209348 (= c!202529 (<= from!777 0))))

(declare-fun b!1209349 () Bool)

(declare-fun e!775794 () Int)

(assert (=> b!1209349 (= e!775794 0)))

(declare-fun b!1209350 () Bool)

(declare-fun e!775790 () Int)

(declare-fun call!84395 () Int)

(assert (=> b!1209350 (= e!775790 call!84395)))

(declare-fun b!1209351 () Bool)

(assert (=> b!1209351 (= e!775792 Nil!12191)))

(declare-fun b!1209353 () Bool)

(assert (=> b!1209353 (= e!775794 (- call!84395 from!777))))

(declare-fun b!1209354 () Bool)

(declare-fun e!775793 () Bool)

(declare-fun lt!413748 () List!12249)

(assert (=> b!1209354 (= e!775793 (= (size!9732 lt!413748) e!775790))))

(declare-fun c!202530 () Bool)

(assert (=> b!1209354 (= c!202530 (<= from!777 0))))

(declare-fun b!1209355 () Bool)

(assert (=> b!1209355 (= e!775791 (drop!648 (t!112633 lt!413720) (- from!777 1)))))

(declare-fun d!345878 () Bool)

(assert (=> d!345878 e!775793))

(declare-fun res!543838 () Bool)

(assert (=> d!345878 (=> (not res!543838) (not e!775793))))

(assert (=> d!345878 (= res!543838 (= ((_ map implies) (content!1726 lt!413748) (content!1726 lt!413720)) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!345878 (= lt!413748 e!775792)))

(declare-fun c!202528 () Bool)

(assert (=> d!345878 (= c!202528 ((_ is Nil!12191) lt!413720))))

(assert (=> d!345878 (= (drop!648 lt!413720 from!777) lt!413748)))

(declare-fun b!1209352 () Bool)

(assert (=> b!1209352 (= e!775790 e!775794)))

(declare-fun c!202527 () Bool)

(assert (=> b!1209352 (= c!202527 (>= from!777 call!84395))))

(declare-fun bm!84390 () Bool)

(assert (=> bm!84390 (= call!84395 (size!9732 lt!413720))))

(declare-fun b!1209356 () Bool)

(assert (=> b!1209356 (= e!775791 lt!413720)))

(assert (= (and d!345878 c!202528) b!1209351))

(assert (= (and d!345878 (not c!202528)) b!1209348))

(assert (= (and b!1209348 c!202529) b!1209356))

(assert (= (and b!1209348 (not c!202529)) b!1209355))

(assert (= (and d!345878 res!543838) b!1209354))

(assert (= (and b!1209354 c!202530) b!1209350))

(assert (= (and b!1209354 (not c!202530)) b!1209352))

(assert (= (and b!1209352 c!202527) b!1209349))

(assert (= (and b!1209352 (not c!202527)) b!1209353))

(assert (= (or b!1209350 b!1209352 b!1209353) bm!84390))

(declare-fun m!1385175 () Bool)

(assert (=> b!1209354 m!1385175))

(declare-fun m!1385177 () Bool)

(assert (=> b!1209355 m!1385177))

(declare-fun m!1385179 () Bool)

(assert (=> d!345878 m!1385179))

(declare-fun m!1385181 () Bool)

(assert (=> d!345878 m!1385181))

(assert (=> bm!84390 m!1385081))

(assert (=> b!1209265 d!345878))

(declare-fun d!345880 () Bool)

(assert (=> d!345880 (= (tail!1762 (drop!648 lt!413720 from!777)) (drop!648 lt!413720 (+ from!777 1)))))

(declare-fun lt!413757 () Unit!18568)

(declare-fun choose!7760 (List!12249 Int) Unit!18568)

(assert (=> d!345880 (= lt!413757 (choose!7760 lt!413720 from!777))))

(declare-fun e!775800 () Bool)

(assert (=> d!345880 e!775800))

(declare-fun res!543844 () Bool)

(assert (=> d!345880 (=> (not res!543844) (not e!775800))))

(assert (=> d!345880 (= res!543844 (>= from!777 0))))

(assert (=> d!345880 (= (lemmaDropTail!393 lt!413720 from!777) lt!413757)))

(declare-fun b!1209362 () Bool)

(assert (=> b!1209362 (= e!775800 (< from!777 (size!9732 lt!413720)))))

(assert (= (and d!345880 res!543844) b!1209362))

(assert (=> d!345880 m!1385115))

(assert (=> d!345880 m!1385115))

(declare-fun m!1385189 () Bool)

(assert (=> d!345880 m!1385189))

(declare-fun m!1385191 () Bool)

(assert (=> d!345880 m!1385191))

(declare-fun m!1385193 () Bool)

(assert (=> d!345880 m!1385193))

(assert (=> b!1209362 m!1385081))

(assert (=> b!1209265 d!345880))

(declare-fun d!345884 () Bool)

(declare-fun lt!413768 () T!22580)

(assert (=> d!345884 (= lt!413768 (apply!2637 (list!4539 thiss!9565) from!777))))

(declare-fun choose!7761 (Vector!116 Int) T!22580)

(assert (=> d!345884 (= lt!413768 (choose!7761 thiss!9565 from!777))))

(declare-fun e!775816 () Bool)

(assert (=> d!345884 e!775816))

(declare-fun res!543852 () Bool)

(assert (=> d!345884 (=> (not res!543852) (not e!775816))))

(assert (=> d!345884 (= res!543852 (<= 0 from!777))))

(assert (=> d!345884 (= (apply!2636 thiss!9565 from!777) lt!413768)))

(declare-fun b!1209386 () Bool)

(declare-fun lt!413767 () Int)

(assert (=> b!1209386 (= e!775816 (< from!777 lt!413767))))

(assert (=> b!1209386 (= lt!413767 (size!9732 (list!4539 thiss!9565)))))

(assert (=> b!1209386 (= lt!413767 (size!9733 thiss!9565))))

(assert (= (and d!345884 res!543852) b!1209386))

(assert (=> d!345884 m!1385083))

(assert (=> d!345884 m!1385083))

(declare-fun m!1385217 () Bool)

(assert (=> d!345884 m!1385217))

(declare-fun m!1385219 () Bool)

(assert (=> d!345884 m!1385219))

(assert (=> b!1209386 m!1385083))

(assert (=> b!1209386 m!1385083))

(assert (=> b!1209386 m!1385131))

(assert (=> b!1209386 m!1385085))

(assert (=> b!1209265 d!345884))

(declare-fun b!1209387 () Bool)

(declare-fun e!775819 () List!12249)

(declare-fun e!775818 () List!12249)

(assert (=> b!1209387 (= e!775819 e!775818)))

(declare-fun c!202541 () Bool)

(assert (=> b!1209387 (= c!202541 (<= (+ 1 from!777) 0))))

(declare-fun b!1209388 () Bool)

(declare-fun e!775821 () Int)

(assert (=> b!1209388 (= e!775821 0)))

(declare-fun b!1209389 () Bool)

(declare-fun e!775817 () Int)

(declare-fun call!84397 () Int)

(assert (=> b!1209389 (= e!775817 call!84397)))

(declare-fun b!1209390 () Bool)

(assert (=> b!1209390 (= e!775819 Nil!12191)))

(declare-fun b!1209392 () Bool)

(assert (=> b!1209392 (= e!775821 (- call!84397 (+ 1 from!777)))))

(declare-fun b!1209393 () Bool)

(declare-fun e!775820 () Bool)

(declare-fun lt!413769 () List!12249)

(assert (=> b!1209393 (= e!775820 (= (size!9732 lt!413769) e!775817))))

(declare-fun c!202542 () Bool)

(assert (=> b!1209393 (= c!202542 (<= (+ 1 from!777) 0))))

(declare-fun b!1209394 () Bool)

(assert (=> b!1209394 (= e!775818 (drop!648 (t!112633 lt!413720) (- (+ 1 from!777) 1)))))

(declare-fun d!345894 () Bool)

(assert (=> d!345894 e!775820))

(declare-fun res!543853 () Bool)

(assert (=> d!345894 (=> (not res!543853) (not e!775820))))

(assert (=> d!345894 (= res!543853 (= ((_ map implies) (content!1726 lt!413769) (content!1726 lt!413720)) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!345894 (= lt!413769 e!775819)))

(declare-fun c!202540 () Bool)

(assert (=> d!345894 (= c!202540 ((_ is Nil!12191) lt!413720))))

(assert (=> d!345894 (= (drop!648 lt!413720 (+ 1 from!777)) lt!413769)))

(declare-fun b!1209391 () Bool)

(assert (=> b!1209391 (= e!775817 e!775821)))

(declare-fun c!202539 () Bool)

(assert (=> b!1209391 (= c!202539 (>= (+ 1 from!777) call!84397))))

(declare-fun bm!84392 () Bool)

(assert (=> bm!84392 (= call!84397 (size!9732 lt!413720))))

(declare-fun b!1209395 () Bool)

(assert (=> b!1209395 (= e!775818 lt!413720)))

(assert (= (and d!345894 c!202540) b!1209390))

(assert (= (and d!345894 (not c!202540)) b!1209387))

(assert (= (and b!1209387 c!202541) b!1209395))

(assert (= (and b!1209387 (not c!202541)) b!1209394))

(assert (= (and d!345894 res!543853) b!1209393))

(assert (= (and b!1209393 c!202542) b!1209389))

(assert (= (and b!1209393 (not c!202542)) b!1209391))

(assert (= (and b!1209391 c!202539) b!1209388))

(assert (= (and b!1209391 (not c!202539)) b!1209392))

(assert (= (or b!1209389 b!1209391 b!1209392) bm!84392))

(declare-fun m!1385221 () Bool)

(assert (=> b!1209393 m!1385221))

(declare-fun m!1385223 () Bool)

(assert (=> b!1209394 m!1385223))

(declare-fun m!1385225 () Bool)

(assert (=> d!345894 m!1385225))

(assert (=> d!345894 m!1385181))

(assert (=> bm!84392 m!1385081))

(assert (=> b!1209265 d!345894))

(declare-fun d!345896 () Bool)

(assert (=> d!345896 (= (tail!1762 lt!413721) (t!112633 lt!413721))))

(assert (=> b!1209265 d!345896))

(declare-fun d!345898 () Bool)

(declare-fun lt!413771 () T!22580)

(assert (=> d!345898 (= lt!413771 (apply!2637 (list!4539 other!28) from!777))))

(assert (=> d!345898 (= lt!413771 (choose!7761 other!28 from!777))))

(declare-fun e!775822 () Bool)

(assert (=> d!345898 e!775822))

(declare-fun res!543854 () Bool)

(assert (=> d!345898 (=> (not res!543854) (not e!775822))))

(assert (=> d!345898 (= res!543854 (<= 0 from!777))))

(assert (=> d!345898 (= (apply!2636 other!28 from!777) lt!413771)))

(declare-fun b!1209396 () Bool)

(declare-fun lt!413770 () Int)

(assert (=> b!1209396 (= e!775822 (< from!777 lt!413770))))

(assert (=> b!1209396 (= lt!413770 (size!9732 (list!4539 other!28)))))

(assert (=> b!1209396 (= lt!413770 (size!9733 other!28))))

(assert (= (and d!345898 res!543854) b!1209396))

(assert (=> d!345898 m!1385077))

(assert (=> d!345898 m!1385077))

(declare-fun m!1385227 () Bool)

(assert (=> d!345898 m!1385227))

(declare-fun m!1385229 () Bool)

(assert (=> d!345898 m!1385229))

(assert (=> b!1209396 m!1385077))

(assert (=> b!1209396 m!1385077))

(declare-fun m!1385231 () Bool)

(assert (=> b!1209396 m!1385231))

(assert (=> b!1209396 m!1385079))

(assert (=> b!1209265 d!345898))

(declare-fun b!1209399 () Bool)

(declare-fun e!775827 () List!12249)

(declare-fun e!775826 () List!12249)

(assert (=> b!1209399 (= e!775827 e!775826)))

(declare-fun c!202545 () Bool)

(assert (=> b!1209399 (= c!202545 (<= from!777 0))))

(declare-fun b!1209400 () Bool)

(declare-fun e!775829 () Int)

(assert (=> b!1209400 (= e!775829 0)))

(declare-fun b!1209401 () Bool)

(declare-fun e!775825 () Int)

(declare-fun call!84398 () Int)

(assert (=> b!1209401 (= e!775825 call!84398)))

(declare-fun b!1209402 () Bool)

(assert (=> b!1209402 (= e!775827 Nil!12191)))

(declare-fun b!1209404 () Bool)

(assert (=> b!1209404 (= e!775829 (- call!84398 from!777))))

(declare-fun b!1209405 () Bool)

(declare-fun e!775828 () Bool)

(declare-fun lt!413774 () List!12249)

(assert (=> b!1209405 (= e!775828 (= (size!9732 lt!413774) e!775825))))

(declare-fun c!202546 () Bool)

(assert (=> b!1209405 (= c!202546 (<= from!777 0))))

(declare-fun b!1209406 () Bool)

(assert (=> b!1209406 (= e!775826 (drop!648 (t!112633 lt!413716) (- from!777 1)))))

(declare-fun d!345900 () Bool)

(assert (=> d!345900 e!775828))

(declare-fun res!543857 () Bool)

(assert (=> d!345900 (=> (not res!543857) (not e!775828))))

(assert (=> d!345900 (= res!543857 (= ((_ map implies) (content!1726 lt!413774) (content!1726 lt!413716)) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!345900 (= lt!413774 e!775827)))

(declare-fun c!202544 () Bool)

(assert (=> d!345900 (= c!202544 ((_ is Nil!12191) lt!413716))))

(assert (=> d!345900 (= (drop!648 lt!413716 from!777) lt!413774)))

(declare-fun b!1209403 () Bool)

(assert (=> b!1209403 (= e!775825 e!775829)))

(declare-fun c!202543 () Bool)

(assert (=> b!1209403 (= c!202543 (>= from!777 call!84398))))

(declare-fun bm!84393 () Bool)

(assert (=> bm!84393 (= call!84398 (size!9732 lt!413716))))

(declare-fun b!1209407 () Bool)

(assert (=> b!1209407 (= e!775826 lt!413716)))

(assert (= (and d!345900 c!202544) b!1209402))

(assert (= (and d!345900 (not c!202544)) b!1209399))

(assert (= (and b!1209399 c!202545) b!1209407))

(assert (= (and b!1209399 (not c!202545)) b!1209406))

(assert (= (and d!345900 res!543857) b!1209405))

(assert (= (and b!1209405 c!202546) b!1209401))

(assert (= (and b!1209405 (not c!202546)) b!1209403))

(assert (= (and b!1209403 c!202543) b!1209400))

(assert (= (and b!1209403 (not c!202543)) b!1209404))

(assert (= (or b!1209401 b!1209403 b!1209404) bm!84393))

(declare-fun m!1385233 () Bool)

(assert (=> b!1209405 m!1385233))

(declare-fun m!1385235 () Bool)

(assert (=> b!1209406 m!1385235))

(declare-fun m!1385237 () Bool)

(assert (=> d!345900 m!1385237))

(assert (=> d!345900 m!1385165))

(assert (=> bm!84393 m!1385075))

(assert (=> b!1209265 d!345900))

(declare-fun d!345902 () Bool)

(assert (=> d!345902 (= (tail!1762 (drop!648 lt!413716 from!777)) (drop!648 lt!413716 (+ from!777 1)))))

(declare-fun lt!413776 () Unit!18568)

(assert (=> d!345902 (= lt!413776 (choose!7760 lt!413716 from!777))))

(declare-fun e!775831 () Bool)

(assert (=> d!345902 e!775831))

(declare-fun res!543859 () Bool)

(assert (=> d!345902 (=> (not res!543859) (not e!775831))))

(assert (=> d!345902 (= res!543859 (>= from!777 0))))

(assert (=> d!345902 (= (lemmaDropTail!393 lt!413716 from!777) lt!413776)))

(declare-fun b!1209409 () Bool)

(assert (=> b!1209409 (= e!775831 (< from!777 (size!9732 lt!413716)))))

(assert (= (and d!345902 res!543859) b!1209409))

(assert (=> d!345902 m!1385091))

(assert (=> d!345902 m!1385091))

(declare-fun m!1385241 () Bool)

(assert (=> d!345902 m!1385241))

(declare-fun m!1385245 () Bool)

(assert (=> d!345902 m!1385245))

(declare-fun m!1385247 () Bool)

(assert (=> d!345902 m!1385247))

(assert (=> b!1209409 m!1385075))

(assert (=> b!1209265 d!345902))

(declare-fun d!345906 () Bool)

(declare-fun lt!413785 () T!22580)

(declare-fun contains!2022 (List!12249 T!22580) Bool)

(assert (=> d!345906 (contains!2022 lt!413720 lt!413785)))

(declare-fun e!775844 () T!22580)

(assert (=> d!345906 (= lt!413785 e!775844)))

(declare-fun c!202554 () Bool)

(assert (=> d!345906 (= c!202554 (= from!777 0))))

(declare-fun e!775845 () Bool)

(assert (=> d!345906 e!775845))

(declare-fun res!543865 () Bool)

(assert (=> d!345906 (=> (not res!543865) (not e!775845))))

(assert (=> d!345906 (= res!543865 (<= 0 from!777))))

(assert (=> d!345906 (= (apply!2637 lt!413720 from!777) lt!413785)))

(declare-fun b!1209429 () Bool)

(assert (=> b!1209429 (= e!775845 (< from!777 (size!9732 lt!413720)))))

(declare-fun b!1209430 () Bool)

(assert (=> b!1209430 (= e!775844 (head!2144 lt!413720))))

(declare-fun b!1209431 () Bool)

(assert (=> b!1209431 (= e!775844 (apply!2637 (tail!1762 lt!413720) (- from!777 1)))))

(assert (= (and d!345906 res!543865) b!1209429))

(assert (= (and d!345906 c!202554) b!1209430))

(assert (= (and d!345906 (not c!202554)) b!1209431))

(declare-fun m!1385269 () Bool)

(assert (=> d!345906 m!1385269))

(assert (=> b!1209429 m!1385081))

(declare-fun m!1385271 () Bool)

(assert (=> b!1209430 m!1385271))

(declare-fun m!1385273 () Bool)

(assert (=> b!1209431 m!1385273))

(assert (=> b!1209431 m!1385273))

(declare-fun m!1385275 () Bool)

(assert (=> b!1209431 m!1385275))

(assert (=> b!1209265 d!345906))

(declare-fun d!345920 () Bool)

(assert (=> d!345920 (= (head!2144 lt!413710) (h!17592 lt!413710))))

(assert (=> b!1209265 d!345920))

(declare-fun d!345922 () Bool)

(assert (=> d!345922 (= (head!2144 (drop!648 lt!413720 from!777)) (apply!2637 lt!413720 from!777))))

(declare-fun lt!413786 () Unit!18568)

(assert (=> d!345922 (= lt!413786 (choose!7758 lt!413720 from!777))))

(declare-fun e!775846 () Bool)

(assert (=> d!345922 e!775846))

(declare-fun res!543866 () Bool)

(assert (=> d!345922 (=> (not res!543866) (not e!775846))))

(assert (=> d!345922 (= res!543866 (>= from!777 0))))

(assert (=> d!345922 (= (lemmaDropApply!413 lt!413720 from!777) lt!413786)))

(declare-fun b!1209432 () Bool)

(assert (=> b!1209432 (= e!775846 (< from!777 (size!9732 lt!413720)))))

(assert (= (and d!345922 res!543866) b!1209432))

(assert (=> d!345922 m!1385115))

(assert (=> d!345922 m!1385115))

(declare-fun m!1385277 () Bool)

(assert (=> d!345922 m!1385277))

(assert (=> d!345922 m!1385101))

(declare-fun m!1385279 () Bool)

(assert (=> d!345922 m!1385279))

(assert (=> b!1209432 m!1385081))

(assert (=> b!1209265 d!345922))

(declare-fun d!345924 () Bool)

(declare-fun lt!413787 () T!22580)

(assert (=> d!345924 (contains!2022 lt!413716 lt!413787)))

(declare-fun e!775847 () T!22580)

(assert (=> d!345924 (= lt!413787 e!775847)))

(declare-fun c!202555 () Bool)

(assert (=> d!345924 (= c!202555 (= from!777 0))))

(declare-fun e!775848 () Bool)

(assert (=> d!345924 e!775848))

(declare-fun res!543867 () Bool)

(assert (=> d!345924 (=> (not res!543867) (not e!775848))))

(assert (=> d!345924 (= res!543867 (<= 0 from!777))))

(assert (=> d!345924 (= (apply!2637 lt!413716 from!777) lt!413787)))

(declare-fun b!1209433 () Bool)

(assert (=> b!1209433 (= e!775848 (< from!777 (size!9732 lt!413716)))))

(declare-fun b!1209434 () Bool)

(assert (=> b!1209434 (= e!775847 (head!2144 lt!413716))))

(declare-fun b!1209435 () Bool)

(assert (=> b!1209435 (= e!775847 (apply!2637 (tail!1762 lt!413716) (- from!777 1)))))

(assert (= (and d!345924 res!543867) b!1209433))

(assert (= (and d!345924 c!202555) b!1209434))

(assert (= (and d!345924 (not c!202555)) b!1209435))

(declare-fun m!1385281 () Bool)

(assert (=> d!345924 m!1385281))

(assert (=> b!1209433 m!1385075))

(declare-fun m!1385283 () Bool)

(assert (=> b!1209434 m!1385283))

(declare-fun m!1385285 () Bool)

(assert (=> b!1209435 m!1385285))

(assert (=> b!1209435 m!1385285))

(declare-fun m!1385287 () Bool)

(assert (=> b!1209435 m!1385287))

(assert (=> b!1209265 d!345924))

(declare-fun d!345926 () Bool)

(declare-fun lt!413880 () Bool)

(assert (=> d!345926 (= lt!413880 (= (drop!648 (list!4539 thiss!9565) (+ 1 from!777)) (drop!648 (list!4539 other!28) (+ 1 from!777))))))

(declare-fun e!775877 () Bool)

(assert (=> d!345926 (= lt!413880 e!775877)))

(declare-fun res!543885 () Bool)

(assert (=> d!345926 (=> res!543885 e!775877)))

(declare-fun lt!413886 () Int)

(assert (=> d!345926 (= res!543885 (= (+ 1 from!777) lt!413886))))

(assert (=> d!345926 (= lt!413886 (size!9732 (list!4539 thiss!9565)))))

(assert (=> d!345926 (= lt!413886 (size!9733 thiss!9565))))

(declare-fun e!775876 () Bool)

(assert (=> d!345926 e!775876))

(declare-fun res!543884 () Bool)

(assert (=> d!345926 (=> (not res!543884) (not e!775876))))

(assert (=> d!345926 (= res!543884 (<= 0 (+ 1 from!777)))))

(assert (=> d!345926 (= (equivalentSequenceAsSameSize!4 thiss!9565 other!28 (+ 1 from!777)) lt!413880)))

(declare-fun b!1209471 () Bool)

(declare-fun lt!413884 () Int)

(assert (=> b!1209471 (= e!775876 (<= (+ 1 from!777) lt!413884))))

(assert (=> b!1209471 (= lt!413884 (size!9732 (list!4539 thiss!9565)))))

(assert (=> b!1209471 (= lt!413884 (size!9733 thiss!9565))))

(declare-fun b!1209472 () Bool)

(declare-fun e!775878 () Bool)

(assert (=> b!1209472 (= e!775877 e!775878)))

(declare-fun res!543883 () Bool)

(assert (=> b!1209472 (=> (not res!543883) (not e!775878))))

(declare-fun lt!413888 () T!22580)

(declare-fun lt!413877 () T!22580)

(assert (=> b!1209472 (= res!543883 (= lt!413888 lt!413877))))

(assert (=> b!1209472 (= lt!413877 (apply!2637 (list!4539 other!28) (+ 1 from!777)))))

(assert (=> b!1209472 (= lt!413877 (apply!2636 other!28 (+ 1 from!777)))))

(assert (=> b!1209472 (= lt!413888 (apply!2637 (list!4539 thiss!9565) (+ 1 from!777)))))

(assert (=> b!1209472 (= lt!413888 (apply!2636 thiss!9565 (+ 1 from!777)))))

(declare-fun lt!413878 () Unit!18568)

(declare-fun lt!413879 () Unit!18568)

(assert (=> b!1209472 (= lt!413878 lt!413879)))

(declare-fun lt!413874 () List!12249)

(assert (=> b!1209472 (= (tail!1762 (drop!648 lt!413874 (+ 1 from!777))) (drop!648 lt!413874 (+ 1 from!777 1)))))

(assert (=> b!1209472 (= lt!413879 (lemmaDropTail!393 lt!413874 (+ 1 from!777)))))

(assert (=> b!1209472 (= lt!413874 (list!4539 other!28))))

(declare-fun lt!413885 () Unit!18568)

(declare-fun lt!413873 () Unit!18568)

(assert (=> b!1209472 (= lt!413885 lt!413873)))

(declare-fun lt!413876 () List!12249)

(assert (=> b!1209472 (= (tail!1762 (drop!648 lt!413876 (+ 1 from!777))) (drop!648 lt!413876 (+ 1 from!777 1)))))

(assert (=> b!1209472 (= lt!413873 (lemmaDropTail!393 lt!413876 (+ 1 from!777)))))

(assert (=> b!1209472 (= lt!413876 (list!4539 thiss!9565))))

(declare-fun lt!413882 () Unit!18568)

(declare-fun lt!413889 () Unit!18568)

(assert (=> b!1209472 (= lt!413882 lt!413889)))

(declare-fun lt!413881 () List!12249)

(assert (=> b!1209472 (= (head!2144 (drop!648 lt!413881 (+ 1 from!777))) (apply!2637 lt!413881 (+ 1 from!777)))))

(assert (=> b!1209472 (= lt!413889 (lemmaDropApply!413 lt!413881 (+ 1 from!777)))))

(assert (=> b!1209472 (= lt!413881 (list!4539 other!28))))

(declare-fun lt!413887 () Unit!18568)

(declare-fun lt!413875 () Unit!18568)

(assert (=> b!1209472 (= lt!413887 lt!413875)))

(declare-fun lt!413883 () List!12249)

(assert (=> b!1209472 (= (head!2144 (drop!648 lt!413883 (+ 1 from!777))) (apply!2637 lt!413883 (+ 1 from!777)))))

(assert (=> b!1209472 (= lt!413875 (lemmaDropApply!413 lt!413883 (+ 1 from!777)))))

(assert (=> b!1209472 (= lt!413883 (list!4539 thiss!9565))))

(declare-fun b!1209473 () Bool)

(assert (=> b!1209473 (= e!775878 (equivalentSequenceAsSameSize!4 thiss!9565 other!28 (+ 1 from!777 1)))))

(assert (= (and d!345926 res!543884) b!1209471))

(assert (= (and d!345926 (not res!543885)) b!1209472))

(assert (= (and b!1209472 res!543883) b!1209473))

(assert (=> d!345926 m!1385083))

(assert (=> d!345926 m!1385131))

(assert (=> d!345926 m!1385083))

(declare-fun m!1385343 () Bool)

(assert (=> d!345926 m!1385343))

(assert (=> d!345926 m!1385077))

(declare-fun m!1385345 () Bool)

(assert (=> d!345926 m!1385345))

(assert (=> d!345926 m!1385083))

(assert (=> d!345926 m!1385077))

(assert (=> d!345926 m!1385085))

(assert (=> b!1209471 m!1385083))

(assert (=> b!1209471 m!1385083))

(assert (=> b!1209471 m!1385131))

(assert (=> b!1209471 m!1385085))

(declare-fun m!1385347 () Bool)

(assert (=> b!1209472 m!1385347))

(declare-fun m!1385349 () Bool)

(assert (=> b!1209472 m!1385349))

(declare-fun m!1385351 () Bool)

(assert (=> b!1209472 m!1385351))

(declare-fun m!1385353 () Bool)

(assert (=> b!1209472 m!1385353))

(declare-fun m!1385355 () Bool)

(assert (=> b!1209472 m!1385355))

(assert (=> b!1209472 m!1385083))

(declare-fun m!1385357 () Bool)

(assert (=> b!1209472 m!1385357))

(assert (=> b!1209472 m!1385077))

(declare-fun m!1385359 () Bool)

(assert (=> b!1209472 m!1385359))

(assert (=> b!1209472 m!1385077))

(declare-fun m!1385361 () Bool)

(assert (=> b!1209472 m!1385361))

(declare-fun m!1385363 () Bool)

(assert (=> b!1209472 m!1385363))

(declare-fun m!1385365 () Bool)

(assert (=> b!1209472 m!1385365))

(declare-fun m!1385367 () Bool)

(assert (=> b!1209472 m!1385367))

(declare-fun m!1385369 () Bool)

(assert (=> b!1209472 m!1385369))

(declare-fun m!1385371 () Bool)

(assert (=> b!1209472 m!1385371))

(assert (=> b!1209472 m!1385347))

(assert (=> b!1209472 m!1385083))

(declare-fun m!1385373 () Bool)

(assert (=> b!1209472 m!1385373))

(assert (=> b!1209472 m!1385363))

(declare-fun m!1385375 () Bool)

(assert (=> b!1209472 m!1385375))

(assert (=> b!1209472 m!1385367))

(declare-fun m!1385377 () Bool)

(assert (=> b!1209472 m!1385377))

(declare-fun m!1385379 () Bool)

(assert (=> b!1209472 m!1385379))

(assert (=> b!1209472 m!1385353))

(declare-fun m!1385381 () Bool)

(assert (=> b!1209472 m!1385381))

(declare-fun m!1385383 () Bool)

(assert (=> b!1209472 m!1385383))

(declare-fun m!1385385 () Bool)

(assert (=> b!1209472 m!1385385))

(declare-fun m!1385387 () Bool)

(assert (=> b!1209473 m!1385387))

(assert (=> b!1209260 d!345926))

(declare-fun d!345928 () Bool)

(declare-fun lt!413890 () Int)

(assert (=> d!345928 (>= lt!413890 0)))

(declare-fun e!775879 () Int)

(assert (=> d!345928 (= lt!413890 e!775879)))

(declare-fun c!202556 () Bool)

(assert (=> d!345928 (= c!202556 ((_ is Nil!12191) lt!413716))))

(assert (=> d!345928 (= (size!9732 lt!413716) lt!413890)))

(declare-fun b!1209474 () Bool)

(assert (=> b!1209474 (= e!775879 0)))

(declare-fun b!1209475 () Bool)

(assert (=> b!1209475 (= e!775879 (+ 1 (size!9732 (t!112633 lt!413716))))))

(assert (= (and d!345928 c!202556) b!1209474))

(assert (= (and d!345928 (not c!202556)) b!1209475))

(declare-fun m!1385389 () Bool)

(assert (=> b!1209475 m!1385389))

(assert (=> b!1209261 d!345928))

(declare-fun d!345930 () Bool)

(assert (=> d!345930 (= (list!4539 other!28) (choose!7756 other!28))))

(declare-fun bs!288557 () Bool)

(assert (= bs!288557 d!345930))

(declare-fun m!1385391 () Bool)

(assert (=> bs!288557 m!1385391))

(assert (=> b!1209261 d!345930))

(declare-fun d!345932 () Bool)

(declare-fun lt!413891 () Int)

(assert (=> d!345932 (= lt!413891 (size!9732 (list!4539 other!28)))))

(assert (=> d!345932 (= lt!413891 (choose!7757 other!28))))

(assert (=> d!345932 (= (size!9733 other!28) lt!413891)))

(declare-fun bs!288558 () Bool)

(assert (= bs!288558 d!345932))

(assert (=> bs!288558 m!1385077))

(assert (=> bs!288558 m!1385077))

(assert (=> bs!288558 m!1385231))

(declare-fun m!1385393 () Bool)

(assert (=> bs!288558 m!1385393))

(assert (=> b!1209261 d!345932))

(declare-fun b!1209485 () Bool)

(declare-fun e!775885 () Bool)

(declare-fun tp!342690 () Bool)

(declare-fun inv!16344 (Conc!4020) Bool)

(assert (=> b!1209485 (= e!775885 (and (inv!16344 (c!202492 (value!68277 (underlying!2802 thiss!9565)))) tp!342690))))

(declare-fun b!1209484 () Bool)

(declare-fun e!775884 () Bool)

(declare-fun inv!16345 (BalanceConc!7972) Bool)

(assert (=> b!1209484 (= e!775884 (and (inv!16345 (value!68277 (underlying!2802 thiss!9565))) e!775885))))

(declare-fun b!1209486 () Bool)

(declare-fun tp!342691 () Bool)

(assert (=> b!1209486 (= e!775884 tp!342691)))

(assert (=> b!1209263 (= tp!342671 e!775884)))

(assert (= b!1209484 b!1209485))

(assert (= (and b!1209263 ((_ is BalanceConc!7971) (underlying!2802 thiss!9565))) b!1209484))

(assert (= (and b!1209263 ((_ is List!12247) (underlying!2802 thiss!9565))) b!1209486))

(declare-fun m!1385395 () Bool)

(assert (=> b!1209485 m!1385395))

(declare-fun m!1385397 () Bool)

(assert (=> b!1209484 m!1385397))

(declare-fun b!1209491 () Bool)

(declare-fun e!775888 () Bool)

(declare-fun tp_is_empty!6147 () Bool)

(declare-fun tp!342694 () Bool)

(assert (=> b!1209491 (= e!775888 (and tp_is_empty!6147 tp!342694))))

(assert (=> b!1209263 (= tp!342672 e!775888)))

(assert (= (and b!1209263 ((_ is Cons!12191) (overflowing!115 thiss!9565))) b!1209491))

(declare-fun b!1209493 () Bool)

(declare-fun e!775890 () Bool)

(declare-fun tp!342695 () Bool)

(assert (=> b!1209493 (= e!775890 (and (inv!16344 (c!202492 (value!68277 (underlying!2802 other!28)))) tp!342695))))

(declare-fun b!1209492 () Bool)

(declare-fun e!775889 () Bool)

(assert (=> b!1209492 (= e!775889 (and (inv!16345 (value!68277 (underlying!2802 other!28))) e!775890))))

(declare-fun b!1209494 () Bool)

(declare-fun tp!342696 () Bool)

(assert (=> b!1209494 (= e!775889 tp!342696)))

(assert (=> b!1209262 (= tp!342670 e!775889)))

(assert (= b!1209492 b!1209493))

(assert (= (and b!1209262 ((_ is BalanceConc!7971) (underlying!2802 other!28))) b!1209492))

(assert (= (and b!1209262 ((_ is List!12247) (underlying!2802 other!28))) b!1209494))

(declare-fun m!1385399 () Bool)

(assert (=> b!1209493 m!1385399))

(declare-fun m!1385401 () Bool)

(assert (=> b!1209492 m!1385401))

(declare-fun b!1209495 () Bool)

(declare-fun e!775891 () Bool)

(declare-fun tp!342697 () Bool)

(assert (=> b!1209495 (= e!775891 (and tp_is_empty!6147 tp!342697))))

(assert (=> b!1209262 (= tp!342673 e!775891)))

(assert (= (and b!1209262 ((_ is Cons!12191) (overflowing!115 other!28))) b!1209495))

(check-sat (not bm!84393) (not b!1209386) (not d!345848) (not d!345860) (not b!1209429) (not d!345898) (not b!1209434) (not b!1209431) (not b!1209405) (not b!1209475) (not b!1209393) (not d!345884) (not b!1209283) (not b!1209355) (not b!1209494) (not b!1209335) (not b!1209493) (not b!1209394) (not b!1209435) (not b!1209396) (not d!345864) (not bm!84390) (not b!1209409) (not d!345894) (not d!345926) (not b!1209484) (not b!1209471) (not d!345930) (not b!1209485) (not d!345932) (not b!1209491) (not b!1209473) (not bm!84392) (not b!1209432) tp_is_empty!6147 (not d!345906) (not d!345878) (not b!1209277) (not b!1209362) (not b!1209406) (not b!1209472) (not d!345900) (not bm!84388) (not b!1209430) (not b!1209354) (not b!1209492) (not b!1209433) (not d!345902) (not d!345922) (not b!1209336) (not d!345880) (not d!345924) (not b!1209486) (not b!1209495) (not d!345852))
(check-sat)
(get-model)

(declare-fun d!345934 () Bool)

(declare-fun lt!413892 () Int)

(assert (=> d!345934 (>= lt!413892 0)))

(declare-fun e!775892 () Int)

(assert (=> d!345934 (= lt!413892 e!775892)))

(declare-fun c!202557 () Bool)

(assert (=> d!345934 (= c!202557 ((_ is Nil!12191) (t!112633 lt!413716)))))

(assert (=> d!345934 (= (size!9732 (t!112633 lt!413716)) lt!413892)))

(declare-fun b!1209496 () Bool)

(assert (=> b!1209496 (= e!775892 0)))

(declare-fun b!1209497 () Bool)

(assert (=> b!1209497 (= e!775892 (+ 1 (size!9732 (t!112633 (t!112633 lt!413716)))))))

(assert (= (and d!345934 c!202557) b!1209496))

(assert (= (and d!345934 (not c!202557)) b!1209497))

(declare-fun m!1385403 () Bool)

(assert (=> b!1209497 m!1385403))

(assert (=> b!1209475 d!345934))

(declare-fun d!345936 () Bool)

(assert (=> d!345936 true))

(declare-fun e!775895 () Bool)

(assert (=> d!345936 e!775895))

(declare-fun res!543888 () List!12249)

(assert (=> d!345936 (= (choose!7756 other!28) res!543888)))

(declare-fun b!1209500 () Bool)

(declare-fun tp!342700 () Bool)

(assert (=> b!1209500 (= e!775895 (and tp_is_empty!6147 tp!342700))))

(assert (= (and d!345936 ((_ is Cons!12191) res!543888)) b!1209500))

(assert (=> d!345930 d!345936))

(declare-fun d!345938 () Bool)

(assert (=> d!345938 (= (tail!1762 (drop!648 lt!413720 from!777)) (t!112633 (drop!648 lt!413720 from!777)))))

(assert (=> d!345880 d!345938))

(assert (=> d!345880 d!345878))

(declare-fun b!1209503 () Bool)

(declare-fun e!775899 () List!12249)

(declare-fun e!775898 () List!12249)

(assert (=> b!1209503 (= e!775899 e!775898)))

(declare-fun c!202561 () Bool)

(assert (=> b!1209503 (= c!202561 (<= (+ from!777 1) 0))))

(declare-fun b!1209504 () Bool)

(declare-fun e!775901 () Int)

(assert (=> b!1209504 (= e!775901 0)))

(declare-fun b!1209505 () Bool)

(declare-fun e!775897 () Int)

(declare-fun call!84400 () Int)

(assert (=> b!1209505 (= e!775897 call!84400)))

(declare-fun b!1209506 () Bool)

(assert (=> b!1209506 (= e!775899 Nil!12191)))

(declare-fun b!1209508 () Bool)

(assert (=> b!1209508 (= e!775901 (- call!84400 (+ from!777 1)))))

(declare-fun b!1209509 () Bool)

(declare-fun e!775900 () Bool)

(declare-fun lt!413894 () List!12249)

(assert (=> b!1209509 (= e!775900 (= (size!9732 lt!413894) e!775897))))

(declare-fun c!202562 () Bool)

(assert (=> b!1209509 (= c!202562 (<= (+ from!777 1) 0))))

(declare-fun b!1209510 () Bool)

(assert (=> b!1209510 (= e!775898 (drop!648 (t!112633 lt!413720) (- (+ from!777 1) 1)))))

(declare-fun d!345942 () Bool)

(assert (=> d!345942 e!775900))

(declare-fun res!543889 () Bool)

(assert (=> d!345942 (=> (not res!543889) (not e!775900))))

(assert (=> d!345942 (= res!543889 (= ((_ map implies) (content!1726 lt!413894) (content!1726 lt!413720)) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!345942 (= lt!413894 e!775899)))

(declare-fun c!202560 () Bool)

(assert (=> d!345942 (= c!202560 ((_ is Nil!12191) lt!413720))))

(assert (=> d!345942 (= (drop!648 lt!413720 (+ from!777 1)) lt!413894)))

(declare-fun b!1209507 () Bool)

(assert (=> b!1209507 (= e!775897 e!775901)))

(declare-fun c!202559 () Bool)

(assert (=> b!1209507 (= c!202559 (>= (+ from!777 1) call!84400))))

(declare-fun bm!84395 () Bool)

(assert (=> bm!84395 (= call!84400 (size!9732 lt!413720))))

(declare-fun b!1209511 () Bool)

(assert (=> b!1209511 (= e!775898 lt!413720)))

(assert (= (and d!345942 c!202560) b!1209506))

(assert (= (and d!345942 (not c!202560)) b!1209503))

(assert (= (and b!1209503 c!202561) b!1209511))

(assert (= (and b!1209503 (not c!202561)) b!1209510))

(assert (= (and d!345942 res!543889) b!1209509))

(assert (= (and b!1209509 c!202562) b!1209505))

(assert (= (and b!1209509 (not c!202562)) b!1209507))

(assert (= (and b!1209507 c!202559) b!1209504))

(assert (= (and b!1209507 (not c!202559)) b!1209508))

(assert (= (or b!1209505 b!1209507 b!1209508) bm!84395))

(declare-fun m!1385407 () Bool)

(assert (=> b!1209509 m!1385407))

(declare-fun m!1385409 () Bool)

(assert (=> b!1209510 m!1385409))

(declare-fun m!1385411 () Bool)

(assert (=> d!345942 m!1385411))

(assert (=> d!345942 m!1385181))

(assert (=> bm!84395 m!1385081))

(assert (=> d!345880 d!345942))

(declare-fun d!345946 () Bool)

(assert (=> d!345946 (= (tail!1762 (drop!648 lt!413720 from!777)) (drop!648 lt!413720 (+ from!777 1)))))

(assert (=> d!345946 true))

(declare-fun _$28!437 () Unit!18568)

(assert (=> d!345946 (= (choose!7760 lt!413720 from!777) _$28!437)))

(declare-fun bs!288560 () Bool)

(assert (= bs!288560 d!345946))

(assert (=> bs!288560 m!1385115))

(assert (=> bs!288560 m!1385115))

(assert (=> bs!288560 m!1385189))

(assert (=> bs!288560 m!1385191))

(assert (=> d!345880 d!345946))

(declare-fun d!345950 () Bool)

(assert (=> d!345950 (= (head!2144 (drop!648 lt!413720 from!777)) (h!17592 (drop!648 lt!413720 from!777)))))

(assert (=> d!345922 d!345950))

(assert (=> d!345922 d!345878))

(assert (=> d!345922 d!345906))

(declare-fun d!345952 () Bool)

(assert (=> d!345952 (= (head!2144 (drop!648 lt!413720 from!777)) (apply!2637 lt!413720 from!777))))

(assert (=> d!345952 true))

(declare-fun _$27!669 () Unit!18568)

(assert (=> d!345952 (= (choose!7758 lt!413720 from!777) _$27!669)))

(declare-fun bs!288562 () Bool)

(assert (= bs!288562 d!345952))

(assert (=> bs!288562 m!1385115))

(assert (=> bs!288562 m!1385115))

(assert (=> bs!288562 m!1385277))

(assert (=> bs!288562 m!1385101))

(assert (=> d!345922 d!345952))

(declare-fun d!345956 () Bool)

(declare-fun c!202573 () Bool)

(assert (=> d!345956 (= c!202573 ((_ is Node!4020) (c!202492 (value!68277 (underlying!2802 other!28)))))))

(declare-fun e!775918 () Bool)

(assert (=> d!345956 (= (inv!16344 (c!202492 (value!68277 (underlying!2802 other!28)))) e!775918)))

(declare-fun b!1209538 () Bool)

(declare-fun inv!16346 (Conc!4020) Bool)

(assert (=> b!1209538 (= e!775918 (inv!16346 (c!202492 (value!68277 (underlying!2802 other!28)))))))

(declare-fun b!1209539 () Bool)

(declare-fun e!775919 () Bool)

(assert (=> b!1209539 (= e!775918 e!775919)))

(declare-fun res!543899 () Bool)

(assert (=> b!1209539 (= res!543899 (not ((_ is Leaf!6190) (c!202492 (value!68277 (underlying!2802 other!28))))))))

(assert (=> b!1209539 (=> res!543899 e!775919)))

(declare-fun b!1209540 () Bool)

(declare-fun inv!16347 (Conc!4020) Bool)

(assert (=> b!1209540 (= e!775919 (inv!16347 (c!202492 (value!68277 (underlying!2802 other!28)))))))

(assert (= (and d!345956 c!202573) b!1209538))

(assert (= (and d!345956 (not c!202573)) b!1209539))

(assert (= (and b!1209539 (not res!543899)) b!1209540))

(declare-fun m!1385429 () Bool)

(assert (=> b!1209538 m!1385429))

(declare-fun m!1385431 () Bool)

(assert (=> b!1209540 m!1385431))

(assert (=> b!1209493 d!345956))

(declare-fun d!345968 () Bool)

(declare-fun c!202578 () Bool)

(assert (=> d!345968 (= c!202578 ((_ is Nil!12191) lt!413769))))

(declare-fun e!775926 () (InoxSet T!22580))

(assert (=> d!345968 (= (content!1726 lt!413769) e!775926)))

(declare-fun b!1209551 () Bool)

(assert (=> b!1209551 (= e!775926 ((as const (Array T!22580 Bool)) false))))

(declare-fun b!1209552 () Bool)

(assert (=> b!1209552 (= e!775926 ((_ map or) (store ((as const (Array T!22580 Bool)) false) (h!17592 lt!413769) true) (content!1726 (t!112633 lt!413769))))))

(assert (= (and d!345968 c!202578) b!1209551))

(assert (= (and d!345968 (not c!202578)) b!1209552))

(declare-fun m!1385433 () Bool)

(assert (=> b!1209552 m!1385433))

(declare-fun m!1385435 () Bool)

(assert (=> b!1209552 m!1385435))

(assert (=> d!345894 d!345968))

(declare-fun d!345970 () Bool)

(declare-fun c!202579 () Bool)

(assert (=> d!345970 (= c!202579 ((_ is Nil!12191) lt!413720))))

(declare-fun e!775927 () (InoxSet T!22580))

(assert (=> d!345970 (= (content!1726 lt!413720) e!775927)))

(declare-fun b!1209553 () Bool)

(assert (=> b!1209553 (= e!775927 ((as const (Array T!22580 Bool)) false))))

(declare-fun b!1209554 () Bool)

(assert (=> b!1209554 (= e!775927 ((_ map or) (store ((as const (Array T!22580 Bool)) false) (h!17592 lt!413720) true) (content!1726 (t!112633 lt!413720))))))

(assert (= (and d!345970 c!202579) b!1209553))

(assert (= (and d!345970 (not c!202579)) b!1209554))

(declare-fun m!1385437 () Bool)

(assert (=> b!1209554 m!1385437))

(declare-fun m!1385439 () Bool)

(assert (=> b!1209554 m!1385439))

(assert (=> d!345894 d!345970))

(assert (=> bm!84392 d!345842))

(declare-fun d!345972 () Bool)

(declare-fun isBalanced!1175 (Conc!4020) Bool)

(assert (=> d!345972 (= (inv!16345 (value!68277 (underlying!2802 thiss!9565))) (isBalanced!1175 (c!202492 (value!68277 (underlying!2802 thiss!9565)))))))

(declare-fun bs!288564 () Bool)

(assert (= bs!288564 d!345972))

(declare-fun m!1385459 () Bool)

(assert (=> bs!288564 m!1385459))

(assert (=> b!1209484 d!345972))

(declare-fun d!345986 () Bool)

(declare-fun lt!413899 () Int)

(assert (=> d!345986 (>= lt!413899 0)))

(declare-fun e!775934 () Int)

(assert (=> d!345986 (= lt!413899 e!775934)))

(declare-fun c!202584 () Bool)

(assert (=> d!345986 (= c!202584 ((_ is Nil!12191) lt!413769))))

(assert (=> d!345986 (= (size!9732 lt!413769) lt!413899)))

(declare-fun b!1209565 () Bool)

(assert (=> b!1209565 (= e!775934 0)))

(declare-fun b!1209566 () Bool)

(assert (=> b!1209566 (= e!775934 (+ 1 (size!9732 (t!112633 lt!413769))))))

(assert (= (and d!345986 c!202584) b!1209565))

(assert (= (and d!345986 (not c!202584)) b!1209566))

(declare-fun m!1385461 () Bool)

(assert (=> b!1209566 m!1385461))

(assert (=> b!1209393 d!345986))

(declare-fun d!345988 () Bool)

(assert (=> d!345988 (= (head!2144 lt!413716) (h!17592 lt!413716))))

(assert (=> b!1209434 d!345988))

(declare-fun d!345990 () Bool)

(assert (=> d!345990 true))

(declare-fun e!775935 () Bool)

(assert (=> d!345990 e!775935))

(declare-fun res!543905 () List!12249)

(assert (=> d!345990 (= (choose!7756 thiss!9565) res!543905)))

(declare-fun b!1209567 () Bool)

(declare-fun tp!342704 () Bool)

(assert (=> b!1209567 (= e!775935 (and tp_is_empty!6147 tp!342704))))

(assert (= (and d!345990 ((_ is Cons!12191) res!543905)) b!1209567))

(assert (=> d!345848 d!345990))

(assert (=> b!1209283 d!345928))

(declare-fun b!1209568 () Bool)

(declare-fun e!775938 () List!12249)

(declare-fun e!775937 () List!12249)

(assert (=> b!1209568 (= e!775938 e!775937)))

(declare-fun c!202587 () Bool)

(assert (=> b!1209568 (= c!202587 (<= (- from!777 1) 0))))

(declare-fun b!1209569 () Bool)

(declare-fun e!775940 () Int)

(assert (=> b!1209569 (= e!775940 0)))

(declare-fun b!1209570 () Bool)

(declare-fun e!775936 () Int)

(declare-fun call!84402 () Int)

(assert (=> b!1209570 (= e!775936 call!84402)))

(declare-fun b!1209571 () Bool)

(assert (=> b!1209571 (= e!775938 Nil!12191)))

(declare-fun b!1209573 () Bool)

(assert (=> b!1209573 (= e!775940 (- call!84402 (- from!777 1)))))

(declare-fun b!1209574 () Bool)

(declare-fun e!775939 () Bool)

(declare-fun lt!413900 () List!12249)

(assert (=> b!1209574 (= e!775939 (= (size!9732 lt!413900) e!775936))))

(declare-fun c!202588 () Bool)

(assert (=> b!1209574 (= c!202588 (<= (- from!777 1) 0))))

(declare-fun b!1209575 () Bool)

(assert (=> b!1209575 (= e!775937 (drop!648 (t!112633 (t!112633 lt!413720)) (- (- from!777 1) 1)))))

(declare-fun d!345992 () Bool)

(assert (=> d!345992 e!775939))

(declare-fun res!543906 () Bool)

(assert (=> d!345992 (=> (not res!543906) (not e!775939))))

(assert (=> d!345992 (= res!543906 (= ((_ map implies) (content!1726 lt!413900) (content!1726 (t!112633 lt!413720))) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!345992 (= lt!413900 e!775938)))

(declare-fun c!202586 () Bool)

(assert (=> d!345992 (= c!202586 ((_ is Nil!12191) (t!112633 lt!413720)))))

(assert (=> d!345992 (= (drop!648 (t!112633 lt!413720) (- from!777 1)) lt!413900)))

(declare-fun b!1209572 () Bool)

(assert (=> b!1209572 (= e!775936 e!775940)))

(declare-fun c!202585 () Bool)

(assert (=> b!1209572 (= c!202585 (>= (- from!777 1) call!84402))))

(declare-fun bm!84397 () Bool)

(assert (=> bm!84397 (= call!84402 (size!9732 (t!112633 lt!413720)))))

(declare-fun b!1209576 () Bool)

(assert (=> b!1209576 (= e!775937 (t!112633 lt!413720))))

(assert (= (and d!345992 c!202586) b!1209571))

(assert (= (and d!345992 (not c!202586)) b!1209568))

(assert (= (and b!1209568 c!202587) b!1209576))

(assert (= (and b!1209568 (not c!202587)) b!1209575))

(assert (= (and d!345992 res!543906) b!1209574))

(assert (= (and b!1209574 c!202588) b!1209570))

(assert (= (and b!1209574 (not c!202588)) b!1209572))

(assert (= (and b!1209572 c!202585) b!1209569))

(assert (= (and b!1209572 (not c!202585)) b!1209573))

(assert (= (or b!1209570 b!1209572 b!1209573) bm!84397))

(declare-fun m!1385463 () Bool)

(assert (=> b!1209574 m!1385463))

(declare-fun m!1385465 () Bool)

(assert (=> b!1209575 m!1385465))

(declare-fun m!1385467 () Bool)

(assert (=> d!345992 m!1385467))

(assert (=> d!345992 m!1385439))

(assert (=> bm!84397 m!1385121))

(assert (=> b!1209355 d!345992))

(declare-fun d!345994 () Bool)

(declare-fun lt!413903 () T!22580)

(assert (=> d!345994 (contains!2022 (tail!1762 lt!413720) lt!413903)))

(declare-fun e!775945 () T!22580)

(assert (=> d!345994 (= lt!413903 e!775945)))

(declare-fun c!202589 () Bool)

(assert (=> d!345994 (= c!202589 (= (- from!777 1) 0))))

(declare-fun e!775946 () Bool)

(assert (=> d!345994 e!775946))

(declare-fun res!543911 () Bool)

(assert (=> d!345994 (=> (not res!543911) (not e!775946))))

(assert (=> d!345994 (= res!543911 (<= 0 (- from!777 1)))))

(assert (=> d!345994 (= (apply!2637 (tail!1762 lt!413720) (- from!777 1)) lt!413903)))

(declare-fun b!1209581 () Bool)

(assert (=> b!1209581 (= e!775946 (< (- from!777 1) (size!9732 (tail!1762 lt!413720))))))

(declare-fun b!1209582 () Bool)

(assert (=> b!1209582 (= e!775945 (head!2144 (tail!1762 lt!413720)))))

(declare-fun b!1209583 () Bool)

(assert (=> b!1209583 (= e!775945 (apply!2637 (tail!1762 (tail!1762 lt!413720)) (- (- from!777 1) 1)))))

(assert (= (and d!345994 res!543911) b!1209581))

(assert (= (and d!345994 c!202589) b!1209582))

(assert (= (and d!345994 (not c!202589)) b!1209583))

(assert (=> d!345994 m!1385273))

(declare-fun m!1385469 () Bool)

(assert (=> d!345994 m!1385469))

(assert (=> b!1209581 m!1385273))

(declare-fun m!1385471 () Bool)

(assert (=> b!1209581 m!1385471))

(assert (=> b!1209582 m!1385273))

(declare-fun m!1385473 () Bool)

(assert (=> b!1209582 m!1385473))

(assert (=> b!1209583 m!1385273))

(declare-fun m!1385475 () Bool)

(assert (=> b!1209583 m!1385475))

(assert (=> b!1209583 m!1385475))

(declare-fun m!1385477 () Bool)

(assert (=> b!1209583 m!1385477))

(assert (=> b!1209431 d!345994))

(declare-fun d!345996 () Bool)

(assert (=> d!345996 (= (tail!1762 lt!413720) (t!112633 lt!413720))))

(assert (=> b!1209431 d!345996))

(declare-fun d!345998 () Bool)

(declare-fun lt!413904 () Int)

(assert (=> d!345998 (>= lt!413904 0)))

(declare-fun e!775947 () Int)

(assert (=> d!345998 (= lt!413904 e!775947)))

(declare-fun c!202590 () Bool)

(assert (=> d!345998 (= c!202590 ((_ is Nil!12191) (t!112633 lt!413720)))))

(assert (=> d!345998 (= (size!9732 (t!112633 lt!413720)) lt!413904)))

(declare-fun b!1209584 () Bool)

(assert (=> b!1209584 (= e!775947 0)))

(declare-fun b!1209585 () Bool)

(assert (=> b!1209585 (= e!775947 (+ 1 (size!9732 (t!112633 (t!112633 lt!413720)))))))

(assert (= (and d!345998 c!202590) b!1209584))

(assert (= (and d!345998 (not c!202590)) b!1209585))

(declare-fun m!1385479 () Bool)

(assert (=> b!1209585 m!1385479))

(assert (=> b!1209277 d!345998))

(declare-fun d!346000 () Bool)

(declare-fun lt!413906 () Int)

(assert (=> d!346000 (>= lt!413906 0)))

(declare-fun e!775950 () Int)

(assert (=> d!346000 (= lt!413906 e!775950)))

(declare-fun c!202591 () Bool)

(assert (=> d!346000 (= c!202591 ((_ is Nil!12191) (list!4539 thiss!9565)))))

(assert (=> d!346000 (= (size!9732 (list!4539 thiss!9565)) lt!413906)))

(declare-fun b!1209588 () Bool)

(assert (=> b!1209588 (= e!775950 0)))

(declare-fun b!1209589 () Bool)

(assert (=> b!1209589 (= e!775950 (+ 1 (size!9732 (t!112633 (list!4539 thiss!9565)))))))

(assert (= (and d!346000 c!202591) b!1209588))

(assert (= (and d!346000 (not c!202591)) b!1209589))

(declare-fun m!1385481 () Bool)

(assert (=> b!1209589 m!1385481))

(assert (=> b!1209386 d!346000))

(assert (=> b!1209386 d!345848))

(assert (=> b!1209386 d!345852))

(declare-fun d!346002 () Bool)

(declare-fun lt!413907 () T!22580)

(assert (=> d!346002 (contains!2022 (list!4539 thiss!9565) lt!413907)))

(declare-fun e!775951 () T!22580)

(assert (=> d!346002 (= lt!413907 e!775951)))

(declare-fun c!202592 () Bool)

(assert (=> d!346002 (= c!202592 (= from!777 0))))

(declare-fun e!775952 () Bool)

(assert (=> d!346002 e!775952))

(declare-fun res!543914 () Bool)

(assert (=> d!346002 (=> (not res!543914) (not e!775952))))

(assert (=> d!346002 (= res!543914 (<= 0 from!777))))

(assert (=> d!346002 (= (apply!2637 (list!4539 thiss!9565) from!777) lt!413907)))

(declare-fun b!1209590 () Bool)

(assert (=> b!1209590 (= e!775952 (< from!777 (size!9732 (list!4539 thiss!9565))))))

(declare-fun b!1209591 () Bool)

(assert (=> b!1209591 (= e!775951 (head!2144 (list!4539 thiss!9565)))))

(declare-fun b!1209592 () Bool)

(assert (=> b!1209592 (= e!775951 (apply!2637 (tail!1762 (list!4539 thiss!9565)) (- from!777 1)))))

(assert (= (and d!346002 res!543914) b!1209590))

(assert (= (and d!346002 c!202592) b!1209591))

(assert (= (and d!346002 (not c!202592)) b!1209592))

(assert (=> d!346002 m!1385083))

(declare-fun m!1385487 () Bool)

(assert (=> d!346002 m!1385487))

(assert (=> b!1209590 m!1385083))

(assert (=> b!1209590 m!1385131))

(assert (=> b!1209591 m!1385083))

(declare-fun m!1385489 () Bool)

(assert (=> b!1209591 m!1385489))

(assert (=> b!1209592 m!1385083))

(declare-fun m!1385491 () Bool)

(assert (=> b!1209592 m!1385491))

(assert (=> b!1209592 m!1385491))

(declare-fun m!1385493 () Bool)

(assert (=> b!1209592 m!1385493))

(assert (=> d!345884 d!346002))

(assert (=> d!345884 d!345848))

(declare-fun d!346008 () Bool)

(declare-fun _$2!1043 () T!22580)

(assert (=> d!346008 (= _$2!1043 (apply!2637 (list!4539 thiss!9565) from!777))))

(assert (=> d!346008 tp_is_empty!6147))

(assert (=> d!346008 (= (choose!7761 thiss!9565 from!777) _$2!1043)))

(declare-fun bs!288565 () Bool)

(assert (= bs!288565 d!346008))

(assert (=> bs!288565 m!1385083))

(assert (=> bs!288565 m!1385083))

(assert (=> bs!288565 m!1385217))

(assert (=> d!345884 d!346008))

(declare-fun d!346014 () Bool)

(declare-fun c!202601 () Bool)

(assert (=> d!346014 (= c!202601 ((_ is Nil!12191) lt!413774))))

(declare-fun e!775964 () (InoxSet T!22580))

(assert (=> d!346014 (= (content!1726 lt!413774) e!775964)))

(declare-fun b!1209612 () Bool)

(assert (=> b!1209612 (= e!775964 ((as const (Array T!22580 Bool)) false))))

(declare-fun b!1209613 () Bool)

(assert (=> b!1209613 (= e!775964 ((_ map or) (store ((as const (Array T!22580 Bool)) false) (h!17592 lt!413774) true) (content!1726 (t!112633 lt!413774))))))

(assert (= (and d!346014 c!202601) b!1209612))

(assert (= (and d!346014 (not c!202601)) b!1209613))

(declare-fun m!1385513 () Bool)

(assert (=> b!1209613 m!1385513))

(declare-fun m!1385515 () Bool)

(assert (=> b!1209613 m!1385515))

(assert (=> d!345900 d!346014))

(declare-fun d!346018 () Bool)

(declare-fun c!202606 () Bool)

(assert (=> d!346018 (= c!202606 ((_ is Nil!12191) lt!413716))))

(declare-fun e!775970 () (InoxSet T!22580))

(assert (=> d!346018 (= (content!1726 lt!413716) e!775970)))

(declare-fun b!1209623 () Bool)

(assert (=> b!1209623 (= e!775970 ((as const (Array T!22580 Bool)) false))))

(declare-fun b!1209624 () Bool)

(assert (=> b!1209624 (= e!775970 ((_ map or) (store ((as const (Array T!22580 Bool)) false) (h!17592 lt!413716) true) (content!1726 (t!112633 lt!413716))))))

(assert (= (and d!346018 c!202606) b!1209623))

(assert (= (and d!346018 (not c!202606)) b!1209624))

(declare-fun m!1385517 () Bool)

(assert (=> b!1209624 m!1385517))

(declare-fun m!1385519 () Bool)

(assert (=> b!1209624 m!1385519))

(assert (=> d!345900 d!346018))

(assert (=> bm!84393 d!345928))

(assert (=> b!1209429 d!345842))

(assert (=> bm!84388 d!345928))

(declare-fun d!346020 () Bool)

(declare-fun lt!413913 () T!22580)

(assert (=> d!346020 (contains!2022 (list!4539 other!28) lt!413913)))

(declare-fun e!775971 () T!22580)

(assert (=> d!346020 (= lt!413913 e!775971)))

(declare-fun c!202607 () Bool)

(assert (=> d!346020 (= c!202607 (= from!777 0))))

(declare-fun e!775972 () Bool)

(assert (=> d!346020 e!775972))

(declare-fun res!543919 () Bool)

(assert (=> d!346020 (=> (not res!543919) (not e!775972))))

(assert (=> d!346020 (= res!543919 (<= 0 from!777))))

(assert (=> d!346020 (= (apply!2637 (list!4539 other!28) from!777) lt!413913)))

(declare-fun b!1209625 () Bool)

(assert (=> b!1209625 (= e!775972 (< from!777 (size!9732 (list!4539 other!28))))))

(declare-fun b!1209626 () Bool)

(assert (=> b!1209626 (= e!775971 (head!2144 (list!4539 other!28)))))

(declare-fun b!1209627 () Bool)

(assert (=> b!1209627 (= e!775971 (apply!2637 (tail!1762 (list!4539 other!28)) (- from!777 1)))))

(assert (= (and d!346020 res!543919) b!1209625))

(assert (= (and d!346020 c!202607) b!1209626))

(assert (= (and d!346020 (not c!202607)) b!1209627))

(assert (=> d!346020 m!1385077))

(declare-fun m!1385531 () Bool)

(assert (=> d!346020 m!1385531))

(assert (=> b!1209625 m!1385077))

(assert (=> b!1209625 m!1385231))

(assert (=> b!1209626 m!1385077))

(declare-fun m!1385533 () Bool)

(assert (=> b!1209626 m!1385533))

(assert (=> b!1209627 m!1385077))

(declare-fun m!1385535 () Bool)

(assert (=> b!1209627 m!1385535))

(assert (=> b!1209627 m!1385535))

(declare-fun m!1385537 () Bool)

(assert (=> b!1209627 m!1385537))

(assert (=> d!345898 d!346020))

(assert (=> d!345898 d!345930))

(declare-fun d!346024 () Bool)

(declare-fun _$2!1044 () T!22580)

(assert (=> d!346024 (= _$2!1044 (apply!2637 (list!4539 other!28) from!777))))

(assert (=> d!346024 tp_is_empty!6147))

(assert (=> d!346024 (= (choose!7761 other!28 from!777) _$2!1044)))

(declare-fun bs!288566 () Bool)

(assert (= bs!288566 d!346024))

(assert (=> bs!288566 m!1385077))

(assert (=> bs!288566 m!1385077))

(assert (=> bs!288566 m!1385227))

(assert (=> d!345898 d!346024))

(assert (=> b!1209409 d!345928))

(assert (=> d!345926 d!346000))

(assert (=> d!345926 d!345852))

(declare-fun b!1209634 () Bool)

(declare-fun e!775979 () List!12249)

(declare-fun e!775978 () List!12249)

(assert (=> b!1209634 (= e!775979 e!775978)))

(declare-fun c!202612 () Bool)

(assert (=> b!1209634 (= c!202612 (<= (+ 1 from!777) 0))))

(declare-fun b!1209635 () Bool)

(declare-fun e!775981 () Int)

(assert (=> b!1209635 (= e!775981 0)))

(declare-fun b!1209636 () Bool)

(declare-fun e!775977 () Int)

(declare-fun call!84406 () Int)

(assert (=> b!1209636 (= e!775977 call!84406)))

(declare-fun b!1209637 () Bool)

(assert (=> b!1209637 (= e!775979 Nil!12191)))

(declare-fun b!1209639 () Bool)

(assert (=> b!1209639 (= e!775981 (- call!84406 (+ 1 from!777)))))

(declare-fun b!1209640 () Bool)

(declare-fun e!775980 () Bool)

(declare-fun lt!413916 () List!12249)

(assert (=> b!1209640 (= e!775980 (= (size!9732 lt!413916) e!775977))))

(declare-fun c!202613 () Bool)

(assert (=> b!1209640 (= c!202613 (<= (+ 1 from!777) 0))))

(declare-fun b!1209641 () Bool)

(assert (=> b!1209641 (= e!775978 (drop!648 (t!112633 (list!4539 other!28)) (- (+ 1 from!777) 1)))))

(declare-fun d!346026 () Bool)

(assert (=> d!346026 e!775980))

(declare-fun res!543921 () Bool)

(assert (=> d!346026 (=> (not res!543921) (not e!775980))))

(assert (=> d!346026 (= res!543921 (= ((_ map implies) (content!1726 lt!413916) (content!1726 (list!4539 other!28))) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!346026 (= lt!413916 e!775979)))

(declare-fun c!202610 () Bool)

(assert (=> d!346026 (= c!202610 ((_ is Nil!12191) (list!4539 other!28)))))

(assert (=> d!346026 (= (drop!648 (list!4539 other!28) (+ 1 from!777)) lt!413916)))

(declare-fun b!1209638 () Bool)

(assert (=> b!1209638 (= e!775977 e!775981)))

(declare-fun c!202609 () Bool)

(assert (=> b!1209638 (= c!202609 (>= (+ 1 from!777) call!84406))))

(declare-fun bm!84401 () Bool)

(assert (=> bm!84401 (= call!84406 (size!9732 (list!4539 other!28)))))

(declare-fun b!1209642 () Bool)

(assert (=> b!1209642 (= e!775978 (list!4539 other!28))))

(assert (= (and d!346026 c!202610) b!1209637))

(assert (= (and d!346026 (not c!202610)) b!1209634))

(assert (= (and b!1209634 c!202612) b!1209642))

(assert (= (and b!1209634 (not c!202612)) b!1209641))

(assert (= (and d!346026 res!543921) b!1209640))

(assert (= (and b!1209640 c!202613) b!1209636))

(assert (= (and b!1209640 (not c!202613)) b!1209638))

(assert (= (and b!1209638 c!202609) b!1209635))

(assert (= (and b!1209638 (not c!202609)) b!1209639))

(assert (= (or b!1209636 b!1209638 b!1209639) bm!84401))

(declare-fun m!1385557 () Bool)

(assert (=> b!1209640 m!1385557))

(declare-fun m!1385559 () Bool)

(assert (=> b!1209641 m!1385559))

(declare-fun m!1385561 () Bool)

(assert (=> d!346026 m!1385561))

(assert (=> d!346026 m!1385077))

(declare-fun m!1385563 () Bool)

(assert (=> d!346026 m!1385563))

(assert (=> bm!84401 m!1385077))

(assert (=> bm!84401 m!1385231))

(assert (=> d!345926 d!346026))

(declare-fun b!1209644 () Bool)

(declare-fun e!775985 () List!12249)

(declare-fun e!775984 () List!12249)

(assert (=> b!1209644 (= e!775985 e!775984)))

(declare-fun c!202616 () Bool)

(assert (=> b!1209644 (= c!202616 (<= (+ 1 from!777) 0))))

(declare-fun b!1209645 () Bool)

(declare-fun e!775987 () Int)

(assert (=> b!1209645 (= e!775987 0)))

(declare-fun b!1209646 () Bool)

(declare-fun e!775983 () Int)

(declare-fun call!84407 () Int)

(assert (=> b!1209646 (= e!775983 call!84407)))

(declare-fun b!1209647 () Bool)

(assert (=> b!1209647 (= e!775985 Nil!12191)))

(declare-fun b!1209649 () Bool)

(assert (=> b!1209649 (= e!775987 (- call!84407 (+ 1 from!777)))))

(declare-fun b!1209650 () Bool)

(declare-fun e!775986 () Bool)

(declare-fun lt!413918 () List!12249)

(assert (=> b!1209650 (= e!775986 (= (size!9732 lt!413918) e!775983))))

(declare-fun c!202617 () Bool)

(assert (=> b!1209650 (= c!202617 (<= (+ 1 from!777) 0))))

(declare-fun b!1209651 () Bool)

(assert (=> b!1209651 (= e!775984 (drop!648 (t!112633 (list!4539 thiss!9565)) (- (+ 1 from!777) 1)))))

(declare-fun d!346032 () Bool)

(assert (=> d!346032 e!775986))

(declare-fun res!543924 () Bool)

(assert (=> d!346032 (=> (not res!543924) (not e!775986))))

(assert (=> d!346032 (= res!543924 (= ((_ map implies) (content!1726 lt!413918) (content!1726 (list!4539 thiss!9565))) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!346032 (= lt!413918 e!775985)))

(declare-fun c!202615 () Bool)

(assert (=> d!346032 (= c!202615 ((_ is Nil!12191) (list!4539 thiss!9565)))))

(assert (=> d!346032 (= (drop!648 (list!4539 thiss!9565) (+ 1 from!777)) lt!413918)))

(declare-fun b!1209648 () Bool)

(assert (=> b!1209648 (= e!775983 e!775987)))

(declare-fun c!202614 () Bool)

(assert (=> b!1209648 (= c!202614 (>= (+ 1 from!777) call!84407))))

(declare-fun bm!84402 () Bool)

(assert (=> bm!84402 (= call!84407 (size!9732 (list!4539 thiss!9565)))))

(declare-fun b!1209652 () Bool)

(assert (=> b!1209652 (= e!775984 (list!4539 thiss!9565))))

(assert (= (and d!346032 c!202615) b!1209647))

(assert (= (and d!346032 (not c!202615)) b!1209644))

(assert (= (and b!1209644 c!202616) b!1209652))

(assert (= (and b!1209644 (not c!202616)) b!1209651))

(assert (= (and d!346032 res!543924) b!1209650))

(assert (= (and b!1209650 c!202617) b!1209646))

(assert (= (and b!1209650 (not c!202617)) b!1209648))

(assert (= (and b!1209648 c!202614) b!1209645))

(assert (= (and b!1209648 (not c!202614)) b!1209649))

(assert (= (or b!1209646 b!1209648 b!1209649) bm!84402))

(declare-fun m!1385567 () Bool)

(assert (=> b!1209650 m!1385567))

(declare-fun m!1385569 () Bool)

(assert (=> b!1209651 m!1385569))

(declare-fun m!1385571 () Bool)

(assert (=> d!346032 m!1385571))

(assert (=> d!346032 m!1385083))

(declare-fun m!1385573 () Bool)

(assert (=> d!346032 m!1385573))

(assert (=> bm!84402 m!1385083))

(assert (=> bm!84402 m!1385131))

(assert (=> d!345926 d!346032))

(assert (=> d!345926 d!345848))

(assert (=> d!345926 d!345930))

(declare-fun d!346036 () Bool)

(declare-fun lt!413921 () T!22580)

(assert (=> d!346036 (= lt!413921 (apply!2637 (list!4539 thiss!9565) (+ 1 from!777)))))

(assert (=> d!346036 (= lt!413921 (choose!7761 thiss!9565 (+ 1 from!777)))))

(declare-fun e!775993 () Bool)

(assert (=> d!346036 e!775993))

(declare-fun res!543926 () Bool)

(assert (=> d!346036 (=> (not res!543926) (not e!775993))))

(assert (=> d!346036 (= res!543926 (<= 0 (+ 1 from!777)))))

(assert (=> d!346036 (= (apply!2636 thiss!9565 (+ 1 from!777)) lt!413921)))

(declare-fun b!1209662 () Bool)

(declare-fun lt!413920 () Int)

(assert (=> b!1209662 (= e!775993 (< (+ 1 from!777) lt!413920))))

(assert (=> b!1209662 (= lt!413920 (size!9732 (list!4539 thiss!9565)))))

(assert (=> b!1209662 (= lt!413920 (size!9733 thiss!9565))))

(assert (= (and d!346036 res!543926) b!1209662))

(assert (=> d!346036 m!1385083))

(assert (=> d!346036 m!1385083))

(assert (=> d!346036 m!1385373))

(declare-fun m!1385581 () Bool)

(assert (=> d!346036 m!1385581))

(assert (=> b!1209662 m!1385083))

(assert (=> b!1209662 m!1385083))

(assert (=> b!1209662 m!1385131))

(assert (=> b!1209662 m!1385085))

(assert (=> b!1209472 d!346036))

(declare-fun d!346040 () Bool)

(assert (=> d!346040 (= (tail!1762 (drop!648 lt!413874 (+ 1 from!777))) (t!112633 (drop!648 lt!413874 (+ 1 from!777))))))

(assert (=> b!1209472 d!346040))

(declare-fun d!346042 () Bool)

(assert (=> d!346042 (= (tail!1762 (drop!648 lt!413876 (+ 1 from!777))) (drop!648 lt!413876 (+ 1 from!777 1)))))

(declare-fun lt!413923 () Unit!18568)

(assert (=> d!346042 (= lt!413923 (choose!7760 lt!413876 (+ 1 from!777)))))

(declare-fun e!775999 () Bool)

(assert (=> d!346042 e!775999))

(declare-fun res!543928 () Bool)

(assert (=> d!346042 (=> (not res!543928) (not e!775999))))

(assert (=> d!346042 (= res!543928 (>= (+ 1 from!777) 0))))

(assert (=> d!346042 (= (lemmaDropTail!393 lt!413876 (+ 1 from!777)) lt!413923)))

(declare-fun b!1209672 () Bool)

(assert (=> b!1209672 (= e!775999 (< (+ 1 from!777) (size!9732 lt!413876)))))

(assert (= (and d!346042 res!543928) b!1209672))

(assert (=> d!346042 m!1385367))

(assert (=> d!346042 m!1385367))

(assert (=> d!346042 m!1385377))

(assert (=> d!346042 m!1385369))

(declare-fun m!1385591 () Bool)

(assert (=> d!346042 m!1385591))

(declare-fun m!1385593 () Bool)

(assert (=> b!1209672 m!1385593))

(assert (=> b!1209472 d!346042))

(declare-fun b!1209674 () Bool)

(declare-fun e!776003 () List!12249)

(declare-fun e!776002 () List!12249)

(assert (=> b!1209674 (= e!776003 e!776002)))

(declare-fun c!202628 () Bool)

(assert (=> b!1209674 (= c!202628 (<= (+ 1 from!777 1) 0))))

(declare-fun b!1209675 () Bool)

(declare-fun e!776005 () Int)

(assert (=> b!1209675 (= e!776005 0)))

(declare-fun b!1209676 () Bool)

(declare-fun e!776001 () Int)

(declare-fun call!84410 () Int)

(assert (=> b!1209676 (= e!776001 call!84410)))

(declare-fun b!1209677 () Bool)

(assert (=> b!1209677 (= e!776003 Nil!12191)))

(declare-fun b!1209679 () Bool)

(assert (=> b!1209679 (= e!776005 (- call!84410 (+ 1 from!777 1)))))

(declare-fun b!1209680 () Bool)

(declare-fun e!776004 () Bool)

(declare-fun lt!413925 () List!12249)

(assert (=> b!1209680 (= e!776004 (= (size!9732 lt!413925) e!776001))))

(declare-fun c!202629 () Bool)

(assert (=> b!1209680 (= c!202629 (<= (+ 1 from!777 1) 0))))

(declare-fun b!1209681 () Bool)

(assert (=> b!1209681 (= e!776002 (drop!648 (t!112633 lt!413876) (- (+ 1 from!777 1) 1)))))

(declare-fun d!346046 () Bool)

(assert (=> d!346046 e!776004))

(declare-fun res!543930 () Bool)

(assert (=> d!346046 (=> (not res!543930) (not e!776004))))

(assert (=> d!346046 (= res!543930 (= ((_ map implies) (content!1726 lt!413925) (content!1726 lt!413876)) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!346046 (= lt!413925 e!776003)))

(declare-fun c!202627 () Bool)

(assert (=> d!346046 (= c!202627 ((_ is Nil!12191) lt!413876))))

(assert (=> d!346046 (= (drop!648 lt!413876 (+ 1 from!777 1)) lt!413925)))

(declare-fun b!1209678 () Bool)

(assert (=> b!1209678 (= e!776001 e!776005)))

(declare-fun c!202626 () Bool)

(assert (=> b!1209678 (= c!202626 (>= (+ 1 from!777 1) call!84410))))

(declare-fun bm!84405 () Bool)

(assert (=> bm!84405 (= call!84410 (size!9732 lt!413876))))

(declare-fun b!1209682 () Bool)

(assert (=> b!1209682 (= e!776002 lt!413876)))

(assert (= (and d!346046 c!202627) b!1209677))

(assert (= (and d!346046 (not c!202627)) b!1209674))

(assert (= (and b!1209674 c!202628) b!1209682))

(assert (= (and b!1209674 (not c!202628)) b!1209681))

(assert (= (and d!346046 res!543930) b!1209680))

(assert (= (and b!1209680 c!202629) b!1209676))

(assert (= (and b!1209680 (not c!202629)) b!1209678))

(assert (= (and b!1209678 c!202626) b!1209675))

(assert (= (and b!1209678 (not c!202626)) b!1209679))

(assert (= (or b!1209676 b!1209678 b!1209679) bm!84405))

(declare-fun m!1385597 () Bool)

(assert (=> b!1209680 m!1385597))

(declare-fun m!1385601 () Bool)

(assert (=> b!1209681 m!1385601))

(declare-fun m!1385607 () Bool)

(assert (=> d!346046 m!1385607))

(declare-fun m!1385611 () Bool)

(assert (=> d!346046 m!1385611))

(assert (=> bm!84405 m!1385593))

(assert (=> b!1209472 d!346046))

(declare-fun d!346050 () Bool)

(declare-fun lt!413928 () T!22580)

(assert (=> d!346050 (= lt!413928 (apply!2637 (list!4539 other!28) (+ 1 from!777)))))

(assert (=> d!346050 (= lt!413928 (choose!7761 other!28 (+ 1 from!777)))))

(declare-fun e!776008 () Bool)

(assert (=> d!346050 e!776008))

(declare-fun res!543932 () Bool)

(assert (=> d!346050 (=> (not res!543932) (not e!776008))))

(assert (=> d!346050 (= res!543932 (<= 0 (+ 1 from!777)))))

(assert (=> d!346050 (= (apply!2636 other!28 (+ 1 from!777)) lt!413928)))

(declare-fun b!1209686 () Bool)

(declare-fun lt!413927 () Int)

(assert (=> b!1209686 (= e!776008 (< (+ 1 from!777) lt!413927))))

(assert (=> b!1209686 (= lt!413927 (size!9732 (list!4539 other!28)))))

(assert (=> b!1209686 (= lt!413927 (size!9733 other!28))))

(assert (= (and d!346050 res!543932) b!1209686))

(assert (=> d!346050 m!1385077))

(assert (=> d!346050 m!1385077))

(assert (=> d!346050 m!1385361))

(declare-fun m!1385615 () Bool)

(assert (=> d!346050 m!1385615))

(assert (=> b!1209686 m!1385077))

(assert (=> b!1209686 m!1385077))

(assert (=> b!1209686 m!1385231))

(assert (=> b!1209686 m!1385079))

(assert (=> b!1209472 d!346050))

(declare-fun d!346054 () Bool)

(assert (=> d!346054 (= (head!2144 (drop!648 lt!413881 (+ 1 from!777))) (apply!2637 lt!413881 (+ 1 from!777)))))

(declare-fun lt!413930 () Unit!18568)

(assert (=> d!346054 (= lt!413930 (choose!7758 lt!413881 (+ 1 from!777)))))

(declare-fun e!776014 () Bool)

(assert (=> d!346054 e!776014))

(declare-fun res!543934 () Bool)

(assert (=> d!346054 (=> (not res!543934) (not e!776014))))

(assert (=> d!346054 (= res!543934 (>= (+ 1 from!777) 0))))

(assert (=> d!346054 (= (lemmaDropApply!413 lt!413881 (+ 1 from!777)) lt!413930)))

(declare-fun b!1209696 () Bool)

(assert (=> b!1209696 (= e!776014 (< (+ 1 from!777) (size!9732 lt!413881)))))

(assert (= (and d!346054 res!543934) b!1209696))

(assert (=> d!346054 m!1385347))

(assert (=> d!346054 m!1385347))

(assert (=> d!346054 m!1385349))

(assert (=> d!346054 m!1385357))

(declare-fun m!1385625 () Bool)

(assert (=> d!346054 m!1385625))

(declare-fun m!1385627 () Bool)

(assert (=> b!1209696 m!1385627))

(assert (=> b!1209472 d!346054))

(declare-fun d!346058 () Bool)

(declare-fun lt!413932 () T!22580)

(assert (=> d!346058 (contains!2022 lt!413881 lt!413932)))

(declare-fun e!776016 () T!22580)

(assert (=> d!346058 (= lt!413932 e!776016)))

(declare-fun c!202635 () Bool)

(assert (=> d!346058 (= c!202635 (= (+ 1 from!777) 0))))

(declare-fun e!776017 () Bool)

(assert (=> d!346058 e!776017))

(declare-fun res!543936 () Bool)

(assert (=> d!346058 (=> (not res!543936) (not e!776017))))

(assert (=> d!346058 (= res!543936 (<= 0 (+ 1 from!777)))))

(assert (=> d!346058 (= (apply!2637 lt!413881 (+ 1 from!777)) lt!413932)))

(declare-fun b!1209698 () Bool)

(assert (=> b!1209698 (= e!776017 (< (+ 1 from!777) (size!9732 lt!413881)))))

(declare-fun b!1209699 () Bool)

(assert (=> b!1209699 (= e!776016 (head!2144 lt!413881))))

(declare-fun b!1209700 () Bool)

(assert (=> b!1209700 (= e!776016 (apply!2637 (tail!1762 lt!413881) (- (+ 1 from!777) 1)))))

(assert (= (and d!346058 res!543936) b!1209698))

(assert (= (and d!346058 c!202635) b!1209699))

(assert (= (and d!346058 (not c!202635)) b!1209700))

(declare-fun m!1385631 () Bool)

(assert (=> d!346058 m!1385631))

(assert (=> b!1209698 m!1385627))

(declare-fun m!1385633 () Bool)

(assert (=> b!1209699 m!1385633))

(declare-fun m!1385635 () Bool)

(assert (=> b!1209700 m!1385635))

(assert (=> b!1209700 m!1385635))

(declare-fun m!1385637 () Bool)

(assert (=> b!1209700 m!1385637))

(assert (=> b!1209472 d!346058))

(declare-fun b!1209702 () Bool)

(declare-fun e!776021 () List!12249)

(declare-fun e!776020 () List!12249)

(assert (=> b!1209702 (= e!776021 e!776020)))

(declare-fun c!202638 () Bool)

(assert (=> b!1209702 (= c!202638 (<= (+ 1 from!777) 0))))

(declare-fun b!1209703 () Bool)

(declare-fun e!776023 () Int)

(assert (=> b!1209703 (= e!776023 0)))

(declare-fun b!1209704 () Bool)

(declare-fun e!776019 () Int)

(declare-fun call!84412 () Int)

(assert (=> b!1209704 (= e!776019 call!84412)))

(declare-fun b!1209705 () Bool)

(assert (=> b!1209705 (= e!776021 Nil!12191)))

(declare-fun b!1209707 () Bool)

(assert (=> b!1209707 (= e!776023 (- call!84412 (+ 1 from!777)))))

(declare-fun b!1209708 () Bool)

(declare-fun e!776022 () Bool)

(declare-fun lt!413935 () List!12249)

(assert (=> b!1209708 (= e!776022 (= (size!9732 lt!413935) e!776019))))

(declare-fun c!202639 () Bool)

(assert (=> b!1209708 (= c!202639 (<= (+ 1 from!777) 0))))

(declare-fun b!1209709 () Bool)

(assert (=> b!1209709 (= e!776020 (drop!648 (t!112633 lt!413874) (- (+ 1 from!777) 1)))))

(declare-fun d!346062 () Bool)

(assert (=> d!346062 e!776022))

(declare-fun res!543938 () Bool)

(assert (=> d!346062 (=> (not res!543938) (not e!776022))))

(assert (=> d!346062 (= res!543938 (= ((_ map implies) (content!1726 lt!413935) (content!1726 lt!413874)) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!346062 (= lt!413935 e!776021)))

(declare-fun c!202637 () Bool)

(assert (=> d!346062 (= c!202637 ((_ is Nil!12191) lt!413874))))

(assert (=> d!346062 (= (drop!648 lt!413874 (+ 1 from!777)) lt!413935)))

(declare-fun b!1209706 () Bool)

(assert (=> b!1209706 (= e!776019 e!776023)))

(declare-fun c!202636 () Bool)

(assert (=> b!1209706 (= c!202636 (>= (+ 1 from!777) call!84412))))

(declare-fun bm!84407 () Bool)

(assert (=> bm!84407 (= call!84412 (size!9732 lt!413874))))

(declare-fun b!1209710 () Bool)

(assert (=> b!1209710 (= e!776020 lt!413874)))

(assert (= (and d!346062 c!202637) b!1209705))

(assert (= (and d!346062 (not c!202637)) b!1209702))

(assert (= (and b!1209702 c!202638) b!1209710))

(assert (= (and b!1209702 (not c!202638)) b!1209709))

(assert (= (and d!346062 res!543938) b!1209708))

(assert (= (and b!1209708 c!202639) b!1209704))

(assert (= (and b!1209708 (not c!202639)) b!1209706))

(assert (= (and b!1209706 c!202636) b!1209703))

(assert (= (and b!1209706 (not c!202636)) b!1209707))

(assert (= (or b!1209704 b!1209706 b!1209707) bm!84407))

(declare-fun m!1385641 () Bool)

(assert (=> b!1209708 m!1385641))

(declare-fun m!1385643 () Bool)

(assert (=> b!1209709 m!1385643))

(declare-fun m!1385645 () Bool)

(assert (=> d!346062 m!1385645))

(declare-fun m!1385649 () Bool)

(assert (=> d!346062 m!1385649))

(declare-fun m!1385651 () Bool)

(assert (=> bm!84407 m!1385651))

(assert (=> b!1209472 d!346062))

(declare-fun d!346068 () Bool)

(assert (=> d!346068 (= (tail!1762 (drop!648 lt!413874 (+ 1 from!777))) (drop!648 lt!413874 (+ 1 from!777 1)))))

(declare-fun lt!413937 () Unit!18568)

(assert (=> d!346068 (= lt!413937 (choose!7760 lt!413874 (+ 1 from!777)))))

(declare-fun e!776025 () Bool)

(assert (=> d!346068 e!776025))

(declare-fun res!543940 () Bool)

(assert (=> d!346068 (=> (not res!543940) (not e!776025))))

(assert (=> d!346068 (= res!543940 (>= (+ 1 from!777) 0))))

(assert (=> d!346068 (= (lemmaDropTail!393 lt!413874 (+ 1 from!777)) lt!413937)))

(declare-fun b!1209712 () Bool)

(assert (=> b!1209712 (= e!776025 (< (+ 1 from!777) (size!9732 lt!413874)))))

(assert (= (and d!346068 res!543940) b!1209712))

(assert (=> d!346068 m!1385353))

(assert (=> d!346068 m!1385353))

(assert (=> d!346068 m!1385381))

(assert (=> d!346068 m!1385383))

(declare-fun m!1385653 () Bool)

(assert (=> d!346068 m!1385653))

(assert (=> b!1209712 m!1385651))

(assert (=> b!1209472 d!346068))

(declare-fun d!346072 () Bool)

(assert (=> d!346072 (= (tail!1762 (drop!648 lt!413876 (+ 1 from!777))) (t!112633 (drop!648 lt!413876 (+ 1 from!777))))))

(assert (=> b!1209472 d!346072))

(declare-fun d!346074 () Bool)

(declare-fun lt!413939 () T!22580)

(assert (=> d!346074 (contains!2022 lt!413883 lt!413939)))

(declare-fun e!776028 () T!22580)

(assert (=> d!346074 (= lt!413939 e!776028)))

(declare-fun c!202641 () Bool)

(assert (=> d!346074 (= c!202641 (= (+ 1 from!777) 0))))

(declare-fun e!776029 () Bool)

(assert (=> d!346074 e!776029))

(declare-fun res!543942 () Bool)

(assert (=> d!346074 (=> (not res!543942) (not e!776029))))

(assert (=> d!346074 (= res!543942 (<= 0 (+ 1 from!777)))))

(assert (=> d!346074 (= (apply!2637 lt!413883 (+ 1 from!777)) lt!413939)))

(declare-fun b!1209716 () Bool)

(assert (=> b!1209716 (= e!776029 (< (+ 1 from!777) (size!9732 lt!413883)))))

(declare-fun b!1209717 () Bool)

(assert (=> b!1209717 (= e!776028 (head!2144 lt!413883))))

(declare-fun b!1209718 () Bool)

(assert (=> b!1209718 (= e!776028 (apply!2637 (tail!1762 lt!413883) (- (+ 1 from!777) 1)))))

(assert (= (and d!346074 res!543942) b!1209716))

(assert (= (and d!346074 c!202641) b!1209717))

(assert (= (and d!346074 (not c!202641)) b!1209718))

(declare-fun m!1385663 () Bool)

(assert (=> d!346074 m!1385663))

(declare-fun m!1385665 () Bool)

(assert (=> b!1209716 m!1385665))

(declare-fun m!1385667 () Bool)

(assert (=> b!1209717 m!1385667))

(declare-fun m!1385669 () Bool)

(assert (=> b!1209718 m!1385669))

(assert (=> b!1209718 m!1385669))

(declare-fun m!1385671 () Bool)

(assert (=> b!1209718 m!1385671))

(assert (=> b!1209472 d!346074))

(declare-fun b!1209721 () Bool)

(declare-fun e!776033 () List!12249)

(declare-fun e!776032 () List!12249)

(assert (=> b!1209721 (= e!776033 e!776032)))

(declare-fun c!202645 () Bool)

(assert (=> b!1209721 (= c!202645 (<= (+ 1 from!777) 0))))

(declare-fun b!1209722 () Bool)

(declare-fun e!776035 () Int)

(assert (=> b!1209722 (= e!776035 0)))

(declare-fun b!1209723 () Bool)

(declare-fun e!776031 () Int)

(declare-fun call!84413 () Int)

(assert (=> b!1209723 (= e!776031 call!84413)))

(declare-fun b!1209724 () Bool)

(assert (=> b!1209724 (= e!776033 Nil!12191)))

(declare-fun b!1209726 () Bool)

(assert (=> b!1209726 (= e!776035 (- call!84413 (+ 1 from!777)))))

(declare-fun b!1209727 () Bool)

(declare-fun e!776034 () Bool)

(declare-fun lt!413940 () List!12249)

(assert (=> b!1209727 (= e!776034 (= (size!9732 lt!413940) e!776031))))

(declare-fun c!202646 () Bool)

(assert (=> b!1209727 (= c!202646 (<= (+ 1 from!777) 0))))

(declare-fun b!1209728 () Bool)

(assert (=> b!1209728 (= e!776032 (drop!648 (t!112633 lt!413876) (- (+ 1 from!777) 1)))))

(declare-fun d!346082 () Bool)

(assert (=> d!346082 e!776034))

(declare-fun res!543943 () Bool)

(assert (=> d!346082 (=> (not res!543943) (not e!776034))))

(assert (=> d!346082 (= res!543943 (= ((_ map implies) (content!1726 lt!413940) (content!1726 lt!413876)) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!346082 (= lt!413940 e!776033)))

(declare-fun c!202644 () Bool)

(assert (=> d!346082 (= c!202644 ((_ is Nil!12191) lt!413876))))

(assert (=> d!346082 (= (drop!648 lt!413876 (+ 1 from!777)) lt!413940)))

(declare-fun b!1209725 () Bool)

(assert (=> b!1209725 (= e!776031 e!776035)))

(declare-fun c!202643 () Bool)

(assert (=> b!1209725 (= c!202643 (>= (+ 1 from!777) call!84413))))

(declare-fun bm!84408 () Bool)

(assert (=> bm!84408 (= call!84413 (size!9732 lt!413876))))

(declare-fun b!1209729 () Bool)

(assert (=> b!1209729 (= e!776032 lt!413876)))

(assert (= (and d!346082 c!202644) b!1209724))

(assert (= (and d!346082 (not c!202644)) b!1209721))

(assert (= (and b!1209721 c!202645) b!1209729))

(assert (= (and b!1209721 (not c!202645)) b!1209728))

(assert (= (and d!346082 res!543943) b!1209727))

(assert (= (and b!1209727 c!202646) b!1209723))

(assert (= (and b!1209727 (not c!202646)) b!1209725))

(assert (= (and b!1209725 c!202643) b!1209722))

(assert (= (and b!1209725 (not c!202643)) b!1209726))

(assert (= (or b!1209723 b!1209725 b!1209726) bm!84408))

(declare-fun m!1385681 () Bool)

(assert (=> b!1209727 m!1385681))

(declare-fun m!1385683 () Bool)

(assert (=> b!1209728 m!1385683))

(declare-fun m!1385685 () Bool)

(assert (=> d!346082 m!1385685))

(assert (=> d!346082 m!1385611))

(assert (=> bm!84408 m!1385593))

(assert (=> b!1209472 d!346082))

(declare-fun d!346088 () Bool)

(declare-fun lt!413942 () T!22580)

(assert (=> d!346088 (contains!2022 (list!4539 thiss!9565) lt!413942)))

(declare-fun e!776039 () T!22580)

(assert (=> d!346088 (= lt!413942 e!776039)))

(declare-fun c!202649 () Bool)

(assert (=> d!346088 (= c!202649 (= (+ 1 from!777) 0))))

(declare-fun e!776040 () Bool)

(assert (=> d!346088 e!776040))

(declare-fun res!543945 () Bool)

(assert (=> d!346088 (=> (not res!543945) (not e!776040))))

(assert (=> d!346088 (= res!543945 (<= 0 (+ 1 from!777)))))

(assert (=> d!346088 (= (apply!2637 (list!4539 thiss!9565) (+ 1 from!777)) lt!413942)))

(declare-fun b!1209735 () Bool)

(assert (=> b!1209735 (= e!776040 (< (+ 1 from!777) (size!9732 (list!4539 thiss!9565))))))

(declare-fun b!1209736 () Bool)

(assert (=> b!1209736 (= e!776039 (head!2144 (list!4539 thiss!9565)))))

(declare-fun b!1209737 () Bool)

(assert (=> b!1209737 (= e!776039 (apply!2637 (tail!1762 (list!4539 thiss!9565)) (- (+ 1 from!777) 1)))))

(assert (= (and d!346088 res!543945) b!1209735))

(assert (= (and d!346088 c!202649) b!1209736))

(assert (= (and d!346088 (not c!202649)) b!1209737))

(assert (=> d!346088 m!1385083))

(declare-fun m!1385691 () Bool)

(assert (=> d!346088 m!1385691))

(assert (=> b!1209735 m!1385083))

(assert (=> b!1209735 m!1385131))

(assert (=> b!1209736 m!1385083))

(assert (=> b!1209736 m!1385489))

(assert (=> b!1209737 m!1385083))

(assert (=> b!1209737 m!1385491))

(assert (=> b!1209737 m!1385491))

(declare-fun m!1385693 () Bool)

(assert (=> b!1209737 m!1385693))

(assert (=> b!1209472 d!346088))

(declare-fun d!346092 () Bool)

(assert (=> d!346092 (= (head!2144 (drop!648 lt!413881 (+ 1 from!777))) (h!17592 (drop!648 lt!413881 (+ 1 from!777))))))

(assert (=> b!1209472 d!346092))

(declare-fun b!1209738 () Bool)

(declare-fun e!776043 () List!12249)

(declare-fun e!776042 () List!12249)

(assert (=> b!1209738 (= e!776043 e!776042)))

(declare-fun c!202652 () Bool)

(assert (=> b!1209738 (= c!202652 (<= (+ 1 from!777) 0))))

(declare-fun b!1209739 () Bool)

(declare-fun e!776045 () Int)

(assert (=> b!1209739 (= e!776045 0)))

(declare-fun b!1209740 () Bool)

(declare-fun e!776041 () Int)

(declare-fun call!84414 () Int)

(assert (=> b!1209740 (= e!776041 call!84414)))

(declare-fun b!1209741 () Bool)

(assert (=> b!1209741 (= e!776043 Nil!12191)))

(declare-fun b!1209743 () Bool)

(assert (=> b!1209743 (= e!776045 (- call!84414 (+ 1 from!777)))))

(declare-fun b!1209744 () Bool)

(declare-fun e!776044 () Bool)

(declare-fun lt!413943 () List!12249)

(assert (=> b!1209744 (= e!776044 (= (size!9732 lt!413943) e!776041))))

(declare-fun c!202653 () Bool)

(assert (=> b!1209744 (= c!202653 (<= (+ 1 from!777) 0))))

(declare-fun b!1209745 () Bool)

(assert (=> b!1209745 (= e!776042 (drop!648 (t!112633 lt!413883) (- (+ 1 from!777) 1)))))

(declare-fun d!346094 () Bool)

(assert (=> d!346094 e!776044))

(declare-fun res!543946 () Bool)

(assert (=> d!346094 (=> (not res!543946) (not e!776044))))

(assert (=> d!346094 (= res!543946 (= ((_ map implies) (content!1726 lt!413943) (content!1726 lt!413883)) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!346094 (= lt!413943 e!776043)))

(declare-fun c!202651 () Bool)

(assert (=> d!346094 (= c!202651 ((_ is Nil!12191) lt!413883))))

(assert (=> d!346094 (= (drop!648 lt!413883 (+ 1 from!777)) lt!413943)))

(declare-fun b!1209742 () Bool)

(assert (=> b!1209742 (= e!776041 e!776045)))

(declare-fun c!202650 () Bool)

(assert (=> b!1209742 (= c!202650 (>= (+ 1 from!777) call!84414))))

(declare-fun bm!84409 () Bool)

(assert (=> bm!84409 (= call!84414 (size!9732 lt!413883))))

(declare-fun b!1209746 () Bool)

(assert (=> b!1209746 (= e!776042 lt!413883)))

(assert (= (and d!346094 c!202651) b!1209741))

(assert (= (and d!346094 (not c!202651)) b!1209738))

(assert (= (and b!1209738 c!202652) b!1209746))

(assert (= (and b!1209738 (not c!202652)) b!1209745))

(assert (= (and d!346094 res!543946) b!1209744))

(assert (= (and b!1209744 c!202653) b!1209740))

(assert (= (and b!1209744 (not c!202653)) b!1209742))

(assert (= (and b!1209742 c!202650) b!1209739))

(assert (= (and b!1209742 (not c!202650)) b!1209743))

(assert (= (or b!1209740 b!1209742 b!1209743) bm!84409))

(declare-fun m!1385695 () Bool)

(assert (=> b!1209744 m!1385695))

(declare-fun m!1385697 () Bool)

(assert (=> b!1209745 m!1385697))

(declare-fun m!1385699 () Bool)

(assert (=> d!346094 m!1385699))

(declare-fun m!1385701 () Bool)

(assert (=> d!346094 m!1385701))

(assert (=> bm!84409 m!1385665))

(assert (=> b!1209472 d!346094))

(declare-fun b!1209747 () Bool)

(declare-fun e!776048 () List!12249)

(declare-fun e!776047 () List!12249)

(assert (=> b!1209747 (= e!776048 e!776047)))

(declare-fun c!202656 () Bool)

(assert (=> b!1209747 (= c!202656 (<= (+ 1 from!777 1) 0))))

(declare-fun b!1209748 () Bool)

(declare-fun e!776050 () Int)

(assert (=> b!1209748 (= e!776050 0)))

(declare-fun b!1209749 () Bool)

(declare-fun e!776046 () Int)

(declare-fun call!84415 () Int)

(assert (=> b!1209749 (= e!776046 call!84415)))

(declare-fun b!1209750 () Bool)

(assert (=> b!1209750 (= e!776048 Nil!12191)))

(declare-fun b!1209752 () Bool)

(assert (=> b!1209752 (= e!776050 (- call!84415 (+ 1 from!777 1)))))

(declare-fun b!1209753 () Bool)

(declare-fun e!776049 () Bool)

(declare-fun lt!413944 () List!12249)

(assert (=> b!1209753 (= e!776049 (= (size!9732 lt!413944) e!776046))))

(declare-fun c!202657 () Bool)

(assert (=> b!1209753 (= c!202657 (<= (+ 1 from!777 1) 0))))

(declare-fun b!1209754 () Bool)

(assert (=> b!1209754 (= e!776047 (drop!648 (t!112633 lt!413874) (- (+ 1 from!777 1) 1)))))

(declare-fun d!346096 () Bool)

(assert (=> d!346096 e!776049))

(declare-fun res!543947 () Bool)

(assert (=> d!346096 (=> (not res!543947) (not e!776049))))

(assert (=> d!346096 (= res!543947 (= ((_ map implies) (content!1726 lt!413944) (content!1726 lt!413874)) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!346096 (= lt!413944 e!776048)))

(declare-fun c!202655 () Bool)

(assert (=> d!346096 (= c!202655 ((_ is Nil!12191) lt!413874))))

(assert (=> d!346096 (= (drop!648 lt!413874 (+ 1 from!777 1)) lt!413944)))

(declare-fun b!1209751 () Bool)

(assert (=> b!1209751 (= e!776046 e!776050)))

(declare-fun c!202654 () Bool)

(assert (=> b!1209751 (= c!202654 (>= (+ 1 from!777 1) call!84415))))

(declare-fun bm!84410 () Bool)

(assert (=> bm!84410 (= call!84415 (size!9732 lt!413874))))

(declare-fun b!1209755 () Bool)

(assert (=> b!1209755 (= e!776047 lt!413874)))

(assert (= (and d!346096 c!202655) b!1209750))

(assert (= (and d!346096 (not c!202655)) b!1209747))

(assert (= (and b!1209747 c!202656) b!1209755))

(assert (= (and b!1209747 (not c!202656)) b!1209754))

(assert (= (and d!346096 res!543947) b!1209753))

(assert (= (and b!1209753 c!202657) b!1209749))

(assert (= (and b!1209753 (not c!202657)) b!1209751))

(assert (= (and b!1209751 c!202654) b!1209748))

(assert (= (and b!1209751 (not c!202654)) b!1209752))

(assert (= (or b!1209749 b!1209751 b!1209752) bm!84410))

(declare-fun m!1385703 () Bool)

(assert (=> b!1209753 m!1385703))

(declare-fun m!1385705 () Bool)

(assert (=> b!1209754 m!1385705))

(declare-fun m!1385707 () Bool)

(assert (=> d!346096 m!1385707))

(assert (=> d!346096 m!1385649))

(assert (=> bm!84410 m!1385651))

(assert (=> b!1209472 d!346096))

(assert (=> b!1209472 d!345848))

(assert (=> b!1209472 d!345930))

(declare-fun d!346100 () Bool)

(assert (=> d!346100 (= (head!2144 (drop!648 lt!413883 (+ 1 from!777))) (h!17592 (drop!648 lt!413883 (+ 1 from!777))))))

(assert (=> b!1209472 d!346100))

(declare-fun d!346102 () Bool)

(declare-fun lt!413946 () T!22580)

(assert (=> d!346102 (contains!2022 (list!4539 other!28) lt!413946)))

(declare-fun e!776052 () T!22580)

(assert (=> d!346102 (= lt!413946 e!776052)))

(declare-fun c!202659 () Bool)

(assert (=> d!346102 (= c!202659 (= (+ 1 from!777) 0))))

(declare-fun e!776053 () Bool)

(assert (=> d!346102 e!776053))

(declare-fun res!543948 () Bool)

(assert (=> d!346102 (=> (not res!543948) (not e!776053))))

(assert (=> d!346102 (= res!543948 (<= 0 (+ 1 from!777)))))

(assert (=> d!346102 (= (apply!2637 (list!4539 other!28) (+ 1 from!777)) lt!413946)))

(declare-fun b!1209758 () Bool)

(assert (=> b!1209758 (= e!776053 (< (+ 1 from!777) (size!9732 (list!4539 other!28))))))

(declare-fun b!1209759 () Bool)

(assert (=> b!1209759 (= e!776052 (head!2144 (list!4539 other!28)))))

(declare-fun b!1209760 () Bool)

(assert (=> b!1209760 (= e!776052 (apply!2637 (tail!1762 (list!4539 other!28)) (- (+ 1 from!777) 1)))))

(assert (= (and d!346102 res!543948) b!1209758))

(assert (= (and d!346102 c!202659) b!1209759))

(assert (= (and d!346102 (not c!202659)) b!1209760))

(assert (=> d!346102 m!1385077))

(declare-fun m!1385711 () Bool)

(assert (=> d!346102 m!1385711))

(assert (=> b!1209758 m!1385077))

(assert (=> b!1209758 m!1385231))

(assert (=> b!1209759 m!1385077))

(assert (=> b!1209759 m!1385533))

(assert (=> b!1209760 m!1385077))

(assert (=> b!1209760 m!1385535))

(assert (=> b!1209760 m!1385535))

(declare-fun m!1385713 () Bool)

(assert (=> b!1209760 m!1385713))

(assert (=> b!1209472 d!346102))

(declare-fun d!346106 () Bool)

(assert (=> d!346106 (= (head!2144 (drop!648 lt!413883 (+ 1 from!777))) (apply!2637 lt!413883 (+ 1 from!777)))))

(declare-fun lt!413947 () Unit!18568)

(assert (=> d!346106 (= lt!413947 (choose!7758 lt!413883 (+ 1 from!777)))))

(declare-fun e!776056 () Bool)

(assert (=> d!346106 e!776056))

(declare-fun res!543950 () Bool)

(assert (=> d!346106 (=> (not res!543950) (not e!776056))))

(assert (=> d!346106 (= res!543950 (>= (+ 1 from!777) 0))))

(assert (=> d!346106 (= (lemmaDropApply!413 lt!413883 (+ 1 from!777)) lt!413947)))

(declare-fun b!1209764 () Bool)

(assert (=> b!1209764 (= e!776056 (< (+ 1 from!777) (size!9732 lt!413883)))))

(assert (= (and d!346106 res!543950) b!1209764))

(assert (=> d!346106 m!1385363))

(assert (=> d!346106 m!1385363))

(assert (=> d!346106 m!1385375))

(assert (=> d!346106 m!1385365))

(declare-fun m!1385719 () Bool)

(assert (=> d!346106 m!1385719))

(assert (=> b!1209764 m!1385665))

(assert (=> b!1209472 d!346106))

(declare-fun b!1209767 () Bool)

(declare-fun e!776061 () List!12249)

(declare-fun e!776060 () List!12249)

(assert (=> b!1209767 (= e!776061 e!776060)))

(declare-fun c!202663 () Bool)

(assert (=> b!1209767 (= c!202663 (<= (+ 1 from!777) 0))))

(declare-fun b!1209768 () Bool)

(declare-fun e!776063 () Int)

(assert (=> b!1209768 (= e!776063 0)))

(declare-fun b!1209769 () Bool)

(declare-fun e!776059 () Int)

(declare-fun call!84416 () Int)

(assert (=> b!1209769 (= e!776059 call!84416)))

(declare-fun b!1209770 () Bool)

(assert (=> b!1209770 (= e!776061 Nil!12191)))

(declare-fun b!1209772 () Bool)

(assert (=> b!1209772 (= e!776063 (- call!84416 (+ 1 from!777)))))

(declare-fun b!1209773 () Bool)

(declare-fun e!776062 () Bool)

(declare-fun lt!413949 () List!12249)

(assert (=> b!1209773 (= e!776062 (= (size!9732 lt!413949) e!776059))))

(declare-fun c!202664 () Bool)

(assert (=> b!1209773 (= c!202664 (<= (+ 1 from!777) 0))))

(declare-fun b!1209774 () Bool)

(assert (=> b!1209774 (= e!776060 (drop!648 (t!112633 lt!413881) (- (+ 1 from!777) 1)))))

(declare-fun d!346110 () Bool)

(assert (=> d!346110 e!776062))

(declare-fun res!543953 () Bool)

(assert (=> d!346110 (=> (not res!543953) (not e!776062))))

(assert (=> d!346110 (= res!543953 (= ((_ map implies) (content!1726 lt!413949) (content!1726 lt!413881)) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!346110 (= lt!413949 e!776061)))

(declare-fun c!202662 () Bool)

(assert (=> d!346110 (= c!202662 ((_ is Nil!12191) lt!413881))))

(assert (=> d!346110 (= (drop!648 lt!413881 (+ 1 from!777)) lt!413949)))

(declare-fun b!1209771 () Bool)

(assert (=> b!1209771 (= e!776059 e!776063)))

(declare-fun c!202661 () Bool)

(assert (=> b!1209771 (= c!202661 (>= (+ 1 from!777) call!84416))))

(declare-fun bm!84411 () Bool)

(assert (=> bm!84411 (= call!84416 (size!9732 lt!413881))))

(declare-fun b!1209775 () Bool)

(assert (=> b!1209775 (= e!776060 lt!413881)))

(assert (= (and d!346110 c!202662) b!1209770))

(assert (= (and d!346110 (not c!202662)) b!1209767))

(assert (= (and b!1209767 c!202663) b!1209775))

(assert (= (and b!1209767 (not c!202663)) b!1209774))

(assert (= (and d!346110 res!543953) b!1209773))

(assert (= (and b!1209773 c!202664) b!1209769))

(assert (= (and b!1209773 (not c!202664)) b!1209771))

(assert (= (and b!1209771 c!202661) b!1209768))

(assert (= (and b!1209771 (not c!202661)) b!1209772))

(assert (= (or b!1209769 b!1209771 b!1209772) bm!84411))

(declare-fun m!1385725 () Bool)

(assert (=> b!1209773 m!1385725))

(declare-fun m!1385727 () Bool)

(assert (=> b!1209774 m!1385727))

(declare-fun m!1385729 () Bool)

(assert (=> d!346110 m!1385729))

(declare-fun m!1385731 () Bool)

(assert (=> d!346110 m!1385731))

(assert (=> bm!84411 m!1385627))

(assert (=> b!1209472 d!346110))

(declare-fun d!346114 () Bool)

(declare-fun lt!413951 () Int)

(assert (=> d!346114 (>= lt!413951 0)))

(declare-fun e!776069 () Int)

(assert (=> d!346114 (= lt!413951 e!776069)))

(declare-fun c!202669 () Bool)

(assert (=> d!346114 (= c!202669 ((_ is Nil!12191) lt!413774))))

(assert (=> d!346114 (= (size!9732 lt!413774) lt!413951)))

(declare-fun b!1209785 () Bool)

(assert (=> b!1209785 (= e!776069 0)))

(declare-fun b!1209786 () Bool)

(assert (=> b!1209786 (= e!776069 (+ 1 (size!9732 (t!112633 lt!413774))))))

(assert (= (and d!346114 c!202669) b!1209785))

(assert (= (and d!346114 (not c!202669)) b!1209786))

(declare-fun m!1385739 () Bool)

(assert (=> b!1209786 m!1385739))

(assert (=> b!1209405 d!346114))

(declare-fun d!346118 () Bool)

(declare-fun lt!413952 () Int)

(assert (=> d!346118 (>= lt!413952 0)))

(declare-fun e!776070 () Int)

(assert (=> d!346118 (= lt!413952 e!776070)))

(declare-fun c!202670 () Bool)

(assert (=> d!346118 (= c!202670 ((_ is Nil!12191) (list!4539 other!28)))))

(assert (=> d!346118 (= (size!9732 (list!4539 other!28)) lt!413952)))

(declare-fun b!1209787 () Bool)

(assert (=> b!1209787 (= e!776070 0)))

(declare-fun b!1209788 () Bool)

(assert (=> b!1209788 (= e!776070 (+ 1 (size!9732 (t!112633 (list!4539 other!28)))))))

(assert (= (and d!346118 c!202670) b!1209787))

(assert (= (and d!346118 (not c!202670)) b!1209788))

(declare-fun m!1385741 () Bool)

(assert (=> b!1209788 m!1385741))

(assert (=> d!345932 d!346118))

(assert (=> d!345932 d!345930))

(declare-fun d!346120 () Bool)

(declare-fun res!543959 () Int)

(assert (=> d!346120 (= res!543959 (size!9732 (list!4539 other!28)))))

(assert (=> d!346120 true))

(assert (=> d!346120 (= (choose!7757 other!28) res!543959)))

(declare-fun bs!288568 () Bool)

(assert (= bs!288568 d!346120))

(assert (=> bs!288568 m!1385077))

(assert (=> bs!288568 m!1385077))

(assert (=> bs!288568 m!1385231))

(assert (=> d!345932 d!346120))

(declare-fun d!346126 () Bool)

(assert (=> d!346126 (= (inv!16345 (value!68277 (underlying!2802 other!28))) (isBalanced!1175 (c!202492 (value!68277 (underlying!2802 other!28)))))))

(declare-fun bs!288569 () Bool)

(assert (= bs!288569 d!346126))

(declare-fun m!1385753 () Bool)

(assert (=> bs!288569 m!1385753))

(assert (=> b!1209492 d!346126))

(declare-fun d!346128 () Bool)

(declare-fun lt!413958 () Bool)

(assert (=> d!346128 (= lt!413958 (select (content!1726 lt!413720) lt!413785))))

(declare-fun e!776088 () Bool)

(assert (=> d!346128 (= lt!413958 e!776088)))

(declare-fun res!543966 () Bool)

(assert (=> d!346128 (=> (not res!543966) (not e!776088))))

(assert (=> d!346128 (= res!543966 ((_ is Cons!12191) lt!413720))))

(assert (=> d!346128 (= (contains!2022 lt!413720 lt!413785) lt!413958)))

(declare-fun b!1209816 () Bool)

(declare-fun e!776089 () Bool)

(assert (=> b!1209816 (= e!776088 e!776089)))

(declare-fun res!543965 () Bool)

(assert (=> b!1209816 (=> res!543965 e!776089)))

(assert (=> b!1209816 (= res!543965 (= (h!17592 lt!413720) lt!413785))))

(declare-fun b!1209817 () Bool)

(assert (=> b!1209817 (= e!776089 (contains!2022 (t!112633 lt!413720) lt!413785))))

(assert (= (and d!346128 res!543966) b!1209816))

(assert (= (and b!1209816 (not res!543965)) b!1209817))

(assert (=> d!346128 m!1385181))

(declare-fun m!1385763 () Bool)

(assert (=> d!346128 m!1385763))

(declare-fun m!1385765 () Bool)

(assert (=> b!1209817 m!1385765))

(assert (=> d!345906 d!346128))

(declare-fun d!346142 () Bool)

(declare-fun lt!413959 () T!22580)

(assert (=> d!346142 (contains!2022 (tail!1762 lt!413716) lt!413959)))

(declare-fun e!776090 () T!22580)

(assert (=> d!346142 (= lt!413959 e!776090)))

(declare-fun c!202681 () Bool)

(assert (=> d!346142 (= c!202681 (= (- from!777 1) 0))))

(declare-fun e!776091 () Bool)

(assert (=> d!346142 e!776091))

(declare-fun res!543967 () Bool)

(assert (=> d!346142 (=> (not res!543967) (not e!776091))))

(assert (=> d!346142 (= res!543967 (<= 0 (- from!777 1)))))

(assert (=> d!346142 (= (apply!2637 (tail!1762 lt!413716) (- from!777 1)) lt!413959)))

(declare-fun b!1209818 () Bool)

(assert (=> b!1209818 (= e!776091 (< (- from!777 1) (size!9732 (tail!1762 lt!413716))))))

(declare-fun b!1209819 () Bool)

(assert (=> b!1209819 (= e!776090 (head!2144 (tail!1762 lt!413716)))))

(declare-fun b!1209820 () Bool)

(assert (=> b!1209820 (= e!776090 (apply!2637 (tail!1762 (tail!1762 lt!413716)) (- (- from!777 1) 1)))))

(assert (= (and d!346142 res!543967) b!1209818))

(assert (= (and d!346142 c!202681) b!1209819))

(assert (= (and d!346142 (not c!202681)) b!1209820))

(assert (=> d!346142 m!1385285))

(declare-fun m!1385767 () Bool)

(assert (=> d!346142 m!1385767))

(assert (=> b!1209818 m!1385285))

(declare-fun m!1385769 () Bool)

(assert (=> b!1209818 m!1385769))

(assert (=> b!1209819 m!1385285))

(declare-fun m!1385771 () Bool)

(assert (=> b!1209819 m!1385771))

(assert (=> b!1209820 m!1385285))

(declare-fun m!1385773 () Bool)

(assert (=> b!1209820 m!1385773))

(assert (=> b!1209820 m!1385773))

(declare-fun m!1385775 () Bool)

(assert (=> b!1209820 m!1385775))

(assert (=> b!1209435 d!346142))

(declare-fun d!346144 () Bool)

(assert (=> d!346144 (= (tail!1762 lt!413716) (t!112633 lt!413716))))

(assert (=> b!1209435 d!346144))

(assert (=> b!1209362 d!345842))

(declare-fun d!346146 () Bool)

(declare-fun c!202682 () Bool)

(assert (=> d!346146 (= c!202682 ((_ is Node!4020) (c!202492 (value!68277 (underlying!2802 thiss!9565)))))))

(declare-fun e!776092 () Bool)

(assert (=> d!346146 (= (inv!16344 (c!202492 (value!68277 (underlying!2802 thiss!9565)))) e!776092)))

(declare-fun b!1209821 () Bool)

(assert (=> b!1209821 (= e!776092 (inv!16346 (c!202492 (value!68277 (underlying!2802 thiss!9565)))))))

(declare-fun b!1209822 () Bool)

(declare-fun e!776093 () Bool)

(assert (=> b!1209822 (= e!776092 e!776093)))

(declare-fun res!543968 () Bool)

(assert (=> b!1209822 (= res!543968 (not ((_ is Leaf!6190) (c!202492 (value!68277 (underlying!2802 thiss!9565))))))))

(assert (=> b!1209822 (=> res!543968 e!776093)))

(declare-fun b!1209823 () Bool)

(assert (=> b!1209823 (= e!776093 (inv!16347 (c!202492 (value!68277 (underlying!2802 thiss!9565)))))))

(assert (= (and d!346146 c!202682) b!1209821))

(assert (= (and d!346146 (not c!202682)) b!1209822))

(assert (= (and b!1209822 (not res!543968)) b!1209823))

(declare-fun m!1385777 () Bool)

(assert (=> b!1209821 m!1385777))

(declare-fun m!1385779 () Bool)

(assert (=> b!1209823 m!1385779))

(assert (=> b!1209485 d!346146))

(declare-fun b!1209824 () Bool)

(declare-fun e!776096 () List!12249)

(declare-fun e!776095 () List!12249)

(assert (=> b!1209824 (= e!776096 e!776095)))

(declare-fun c!202685 () Bool)

(assert (=> b!1209824 (= c!202685 (<= (- (+ 1 from!777) 1) 0))))

(declare-fun b!1209825 () Bool)

(declare-fun e!776098 () Int)

(assert (=> b!1209825 (= e!776098 0)))

(declare-fun b!1209826 () Bool)

(declare-fun e!776094 () Int)

(declare-fun call!84420 () Int)

(assert (=> b!1209826 (= e!776094 call!84420)))

(declare-fun b!1209827 () Bool)

(assert (=> b!1209827 (= e!776096 Nil!12191)))

(declare-fun b!1209829 () Bool)

(assert (=> b!1209829 (= e!776098 (- call!84420 (- (+ 1 from!777) 1)))))

(declare-fun b!1209830 () Bool)

(declare-fun e!776097 () Bool)

(declare-fun lt!413960 () List!12249)

(assert (=> b!1209830 (= e!776097 (= (size!9732 lt!413960) e!776094))))

(declare-fun c!202686 () Bool)

(assert (=> b!1209830 (= c!202686 (<= (- (+ 1 from!777) 1) 0))))

(declare-fun b!1209831 () Bool)

(assert (=> b!1209831 (= e!776095 (drop!648 (t!112633 (t!112633 lt!413720)) (- (- (+ 1 from!777) 1) 1)))))

(declare-fun d!346148 () Bool)

(assert (=> d!346148 e!776097))

(declare-fun res!543969 () Bool)

(assert (=> d!346148 (=> (not res!543969) (not e!776097))))

(assert (=> d!346148 (= res!543969 (= ((_ map implies) (content!1726 lt!413960) (content!1726 (t!112633 lt!413720))) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!346148 (= lt!413960 e!776096)))

(declare-fun c!202684 () Bool)

(assert (=> d!346148 (= c!202684 ((_ is Nil!12191) (t!112633 lt!413720)))))

(assert (=> d!346148 (= (drop!648 (t!112633 lt!413720) (- (+ 1 from!777) 1)) lt!413960)))

(declare-fun b!1209828 () Bool)

(assert (=> b!1209828 (= e!776094 e!776098)))

(declare-fun c!202683 () Bool)

(assert (=> b!1209828 (= c!202683 (>= (- (+ 1 from!777) 1) call!84420))))

(declare-fun bm!84415 () Bool)

(assert (=> bm!84415 (= call!84420 (size!9732 (t!112633 lt!413720)))))

(declare-fun b!1209832 () Bool)

(assert (=> b!1209832 (= e!776095 (t!112633 lt!413720))))

(assert (= (and d!346148 c!202684) b!1209827))

(assert (= (and d!346148 (not c!202684)) b!1209824))

(assert (= (and b!1209824 c!202685) b!1209832))

(assert (= (and b!1209824 (not c!202685)) b!1209831))

(assert (= (and d!346148 res!543969) b!1209830))

(assert (= (and b!1209830 c!202686) b!1209826))

(assert (= (and b!1209830 (not c!202686)) b!1209828))

(assert (= (and b!1209828 c!202683) b!1209825))

(assert (= (and b!1209828 (not c!202683)) b!1209829))

(assert (= (or b!1209826 b!1209828 b!1209829) bm!84415))

(declare-fun m!1385781 () Bool)

(assert (=> b!1209830 m!1385781))

(declare-fun m!1385783 () Bool)

(assert (=> b!1209831 m!1385783))

(declare-fun m!1385785 () Bool)

(assert (=> d!346148 m!1385785))

(assert (=> d!346148 m!1385439))

(assert (=> bm!84415 m!1385121))

(assert (=> b!1209394 d!346148))

(declare-fun d!346152 () Bool)

(assert (=> d!346152 (= (tail!1762 (drop!648 lt!413716 from!777)) (t!112633 (drop!648 lt!413716 from!777)))))

(assert (=> d!345902 d!346152))

(assert (=> d!345902 d!345900))

(declare-fun b!1209836 () Bool)

(declare-fun e!776103 () List!12249)

(declare-fun e!776102 () List!12249)

(assert (=> b!1209836 (= e!776103 e!776102)))

(declare-fun c!202690 () Bool)

(assert (=> b!1209836 (= c!202690 (<= (+ from!777 1) 0))))

(declare-fun b!1209837 () Bool)

(declare-fun e!776105 () Int)

(assert (=> b!1209837 (= e!776105 0)))

(declare-fun b!1209838 () Bool)

(declare-fun e!776101 () Int)

(declare-fun call!84421 () Int)

(assert (=> b!1209838 (= e!776101 call!84421)))

(declare-fun b!1209839 () Bool)

(assert (=> b!1209839 (= e!776103 Nil!12191)))

(declare-fun b!1209841 () Bool)

(assert (=> b!1209841 (= e!776105 (- call!84421 (+ from!777 1)))))

(declare-fun b!1209842 () Bool)

(declare-fun e!776104 () Bool)

(declare-fun lt!413962 () List!12249)

(assert (=> b!1209842 (= e!776104 (= (size!9732 lt!413962) e!776101))))

(declare-fun c!202691 () Bool)

(assert (=> b!1209842 (= c!202691 (<= (+ from!777 1) 0))))

(declare-fun b!1209843 () Bool)

(assert (=> b!1209843 (= e!776102 (drop!648 (t!112633 lt!413716) (- (+ from!777 1) 1)))))

(declare-fun d!346154 () Bool)

(assert (=> d!346154 e!776104))

(declare-fun res!543971 () Bool)

(assert (=> d!346154 (=> (not res!543971) (not e!776104))))

(assert (=> d!346154 (= res!543971 (= ((_ map implies) (content!1726 lt!413962) (content!1726 lt!413716)) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!346154 (= lt!413962 e!776103)))

(declare-fun c!202689 () Bool)

(assert (=> d!346154 (= c!202689 ((_ is Nil!12191) lt!413716))))

(assert (=> d!346154 (= (drop!648 lt!413716 (+ from!777 1)) lt!413962)))

(declare-fun b!1209840 () Bool)

(assert (=> b!1209840 (= e!776101 e!776105)))

(declare-fun c!202688 () Bool)

(assert (=> b!1209840 (= c!202688 (>= (+ from!777 1) call!84421))))

(declare-fun bm!84416 () Bool)

(assert (=> bm!84416 (= call!84421 (size!9732 lt!413716))))

(declare-fun b!1209844 () Bool)

(assert (=> b!1209844 (= e!776102 lt!413716)))

(assert (= (and d!346154 c!202689) b!1209839))

(assert (= (and d!346154 (not c!202689)) b!1209836))

(assert (= (and b!1209836 c!202690) b!1209844))

(assert (= (and b!1209836 (not c!202690)) b!1209843))

(assert (= (and d!346154 res!543971) b!1209842))

(assert (= (and b!1209842 c!202691) b!1209838))

(assert (= (and b!1209842 (not c!202691)) b!1209840))

(assert (= (and b!1209840 c!202688) b!1209837))

(assert (= (and b!1209840 (not c!202688)) b!1209841))

(assert (= (or b!1209838 b!1209840 b!1209841) bm!84416))

(declare-fun m!1385799 () Bool)

(assert (=> b!1209842 m!1385799))

(declare-fun m!1385801 () Bool)

(assert (=> b!1209843 m!1385801))

(declare-fun m!1385803 () Bool)

(assert (=> d!346154 m!1385803))

(assert (=> d!346154 m!1385165))

(assert (=> bm!84416 m!1385075))

(assert (=> d!345902 d!346154))

(declare-fun d!346162 () Bool)

(assert (=> d!346162 (= (tail!1762 (drop!648 lt!413716 from!777)) (drop!648 lt!413716 (+ from!777 1)))))

(assert (=> d!346162 true))

(declare-fun _$28!441 () Unit!18568)

(assert (=> d!346162 (= (choose!7760 lt!413716 from!777) _$28!441)))

(declare-fun bs!288572 () Bool)

(assert (= bs!288572 d!346162))

(assert (=> bs!288572 m!1385091))

(assert (=> bs!288572 m!1385091))

(assert (=> bs!288572 m!1385241))

(assert (=> bs!288572 m!1385245))

(assert (=> d!345902 d!346162))

(assert (=> b!1209433 d!345928))

(assert (=> b!1209396 d!346118))

(assert (=> b!1209396 d!345930))

(assert (=> b!1209396 d!345932))

(declare-fun d!346166 () Bool)

(declare-fun lt!413965 () Int)

(assert (=> d!346166 (>= lt!413965 0)))

(declare-fun e!776109 () Int)

(assert (=> d!346166 (= lt!413965 e!776109)))

(declare-fun c!202694 () Bool)

(assert (=> d!346166 (= c!202694 ((_ is Nil!12191) lt!413748))))

(assert (=> d!346166 (= (size!9732 lt!413748) lt!413965)))

(declare-fun b!1209850 () Bool)

(assert (=> b!1209850 (= e!776109 0)))

(declare-fun b!1209851 () Bool)

(assert (=> b!1209851 (= e!776109 (+ 1 (size!9732 (t!112633 lt!413748))))))

(assert (= (and d!346166 c!202694) b!1209850))

(assert (= (and d!346166 (not c!202694)) b!1209851))

(declare-fun m!1385809 () Bool)

(assert (=> b!1209851 m!1385809))

(assert (=> b!1209354 d!346166))

(declare-fun d!346170 () Bool)

(assert (=> d!346170 (= (head!2144 lt!413720) (h!17592 lt!413720))))

(assert (=> b!1209430 d!346170))

(declare-fun d!346172 () Bool)

(declare-fun c!202699 () Bool)

(assert (=> d!346172 (= c!202699 ((_ is Nil!12191) lt!413745))))

(declare-fun e!776115 () (InoxSet T!22580))

(assert (=> d!346172 (= (content!1726 lt!413745) e!776115)))

(declare-fun b!1209857 () Bool)

(assert (=> b!1209857 (= e!776115 ((as const (Array T!22580 Bool)) false))))

(declare-fun b!1209859 () Bool)

(assert (=> b!1209859 (= e!776115 ((_ map or) (store ((as const (Array T!22580 Bool)) false) (h!17592 lt!413745) true) (content!1726 (t!112633 lt!413745))))))

(assert (= (and d!346172 c!202699) b!1209857))

(assert (= (and d!346172 (not c!202699)) b!1209859))

(declare-fun m!1385811 () Bool)

(assert (=> b!1209859 m!1385811))

(declare-fun m!1385813 () Bool)

(assert (=> b!1209859 m!1385813))

(assert (=> d!345864 d!346172))

(assert (=> d!345864 d!346018))

(declare-fun d!346174 () Bool)

(declare-fun lt!413967 () Int)

(assert (=> d!346174 (>= lt!413967 0)))

(declare-fun e!776116 () Int)

(assert (=> d!346174 (= lt!413967 e!776116)))

(declare-fun c!202700 () Bool)

(assert (=> d!346174 (= c!202700 ((_ is Nil!12191) lt!413745))))

(assert (=> d!346174 (= (size!9732 lt!413745) lt!413967)))

(declare-fun b!1209863 () Bool)

(assert (=> b!1209863 (= e!776116 0)))

(declare-fun b!1209864 () Bool)

(assert (=> b!1209864 (= e!776116 (+ 1 (size!9732 (t!112633 lt!413745))))))

(assert (= (and d!346174 c!202700) b!1209863))

(assert (= (and d!346174 (not c!202700)) b!1209864))

(declare-fun m!1385815 () Bool)

(assert (=> b!1209864 m!1385815))

(assert (=> b!1209335 d!346174))

(declare-fun lt!413975 () Bool)

(declare-fun d!346176 () Bool)

(assert (=> d!346176 (= lt!413975 (= (drop!648 (list!4539 thiss!9565) (+ 1 from!777 1)) (drop!648 (list!4539 other!28) (+ 1 from!777 1))))))

(declare-fun e!776118 () Bool)

(assert (=> d!346176 (= lt!413975 e!776118)))

(declare-fun res!543976 () Bool)

(assert (=> d!346176 (=> res!543976 e!776118)))

(declare-fun lt!413981 () Int)

(assert (=> d!346176 (= res!543976 (= (+ 1 from!777 1) lt!413981))))

(assert (=> d!346176 (= lt!413981 (size!9732 (list!4539 thiss!9565)))))

(assert (=> d!346176 (= lt!413981 (size!9733 thiss!9565))))

(declare-fun e!776117 () Bool)

(assert (=> d!346176 e!776117))

(declare-fun res!543975 () Bool)

(assert (=> d!346176 (=> (not res!543975) (not e!776117))))

(assert (=> d!346176 (= res!543975 (<= 0 (+ 1 from!777 1)))))

(assert (=> d!346176 (= (equivalentSequenceAsSameSize!4 thiss!9565 other!28 (+ 1 from!777 1)) lt!413975)))

(declare-fun b!1209865 () Bool)

(declare-fun lt!413979 () Int)

(assert (=> b!1209865 (= e!776117 (<= (+ 1 from!777 1) lt!413979))))

(assert (=> b!1209865 (= lt!413979 (size!9732 (list!4539 thiss!9565)))))

(assert (=> b!1209865 (= lt!413979 (size!9733 thiss!9565))))

(declare-fun b!1209866 () Bool)

(declare-fun e!776119 () Bool)

(assert (=> b!1209866 (= e!776118 e!776119)))

(declare-fun res!543974 () Bool)

(assert (=> b!1209866 (=> (not res!543974) (not e!776119))))

(declare-fun lt!413983 () T!22580)

(declare-fun lt!413972 () T!22580)

(assert (=> b!1209866 (= res!543974 (= lt!413983 lt!413972))))

(assert (=> b!1209866 (= lt!413972 (apply!2637 (list!4539 other!28) (+ 1 from!777 1)))))

(assert (=> b!1209866 (= lt!413972 (apply!2636 other!28 (+ 1 from!777 1)))))

(assert (=> b!1209866 (= lt!413983 (apply!2637 (list!4539 thiss!9565) (+ 1 from!777 1)))))

(assert (=> b!1209866 (= lt!413983 (apply!2636 thiss!9565 (+ 1 from!777 1)))))

(declare-fun lt!413973 () Unit!18568)

(declare-fun lt!413974 () Unit!18568)

(assert (=> b!1209866 (= lt!413973 lt!413974)))

(declare-fun lt!413969 () List!12249)

(assert (=> b!1209866 (= (tail!1762 (drop!648 lt!413969 (+ 1 from!777 1))) (drop!648 lt!413969 (+ 1 from!777 1 1)))))

(assert (=> b!1209866 (= lt!413974 (lemmaDropTail!393 lt!413969 (+ 1 from!777 1)))))

(assert (=> b!1209866 (= lt!413969 (list!4539 other!28))))

(declare-fun lt!413980 () Unit!18568)

(declare-fun lt!413968 () Unit!18568)

(assert (=> b!1209866 (= lt!413980 lt!413968)))

(declare-fun lt!413971 () List!12249)

(assert (=> b!1209866 (= (tail!1762 (drop!648 lt!413971 (+ 1 from!777 1))) (drop!648 lt!413971 (+ 1 from!777 1 1)))))

(assert (=> b!1209866 (= lt!413968 (lemmaDropTail!393 lt!413971 (+ 1 from!777 1)))))

(assert (=> b!1209866 (= lt!413971 (list!4539 thiss!9565))))

(declare-fun lt!413977 () Unit!18568)

(declare-fun lt!413984 () Unit!18568)

(assert (=> b!1209866 (= lt!413977 lt!413984)))

(declare-fun lt!413976 () List!12249)

(assert (=> b!1209866 (= (head!2144 (drop!648 lt!413976 (+ 1 from!777 1))) (apply!2637 lt!413976 (+ 1 from!777 1)))))

(assert (=> b!1209866 (= lt!413984 (lemmaDropApply!413 lt!413976 (+ 1 from!777 1)))))

(assert (=> b!1209866 (= lt!413976 (list!4539 other!28))))

(declare-fun lt!413982 () Unit!18568)

(declare-fun lt!413970 () Unit!18568)

(assert (=> b!1209866 (= lt!413982 lt!413970)))

(declare-fun lt!413978 () List!12249)

(assert (=> b!1209866 (= (head!2144 (drop!648 lt!413978 (+ 1 from!777 1))) (apply!2637 lt!413978 (+ 1 from!777 1)))))

(assert (=> b!1209866 (= lt!413970 (lemmaDropApply!413 lt!413978 (+ 1 from!777 1)))))

(assert (=> b!1209866 (= lt!413978 (list!4539 thiss!9565))))

(declare-fun b!1209867 () Bool)

(assert (=> b!1209867 (= e!776119 (equivalentSequenceAsSameSize!4 thiss!9565 other!28 (+ 1 from!777 1 1)))))

(assert (= (and d!346176 res!543975) b!1209865))

(assert (= (and d!346176 (not res!543976)) b!1209866))

(assert (= (and b!1209866 res!543974) b!1209867))

(assert (=> d!346176 m!1385083))

(assert (=> d!346176 m!1385131))

(assert (=> d!346176 m!1385083))

(declare-fun m!1385829 () Bool)

(assert (=> d!346176 m!1385829))

(assert (=> d!346176 m!1385077))

(declare-fun m!1385831 () Bool)

(assert (=> d!346176 m!1385831))

(assert (=> d!346176 m!1385083))

(assert (=> d!346176 m!1385077))

(assert (=> d!346176 m!1385085))

(assert (=> b!1209865 m!1385083))

(assert (=> b!1209865 m!1385083))

(assert (=> b!1209865 m!1385131))

(assert (=> b!1209865 m!1385085))

(declare-fun m!1385833 () Bool)

(assert (=> b!1209866 m!1385833))

(declare-fun m!1385835 () Bool)

(assert (=> b!1209866 m!1385835))

(declare-fun m!1385837 () Bool)

(assert (=> b!1209866 m!1385837))

(declare-fun m!1385839 () Bool)

(assert (=> b!1209866 m!1385839))

(declare-fun m!1385841 () Bool)

(assert (=> b!1209866 m!1385841))

(assert (=> b!1209866 m!1385083))

(declare-fun m!1385843 () Bool)

(assert (=> b!1209866 m!1385843))

(assert (=> b!1209866 m!1385077))

(declare-fun m!1385845 () Bool)

(assert (=> b!1209866 m!1385845))

(assert (=> b!1209866 m!1385077))

(declare-fun m!1385847 () Bool)

(assert (=> b!1209866 m!1385847))

(declare-fun m!1385849 () Bool)

(assert (=> b!1209866 m!1385849))

(declare-fun m!1385851 () Bool)

(assert (=> b!1209866 m!1385851))

(declare-fun m!1385853 () Bool)

(assert (=> b!1209866 m!1385853))

(declare-fun m!1385855 () Bool)

(assert (=> b!1209866 m!1385855))

(declare-fun m!1385857 () Bool)

(assert (=> b!1209866 m!1385857))

(assert (=> b!1209866 m!1385833))

(assert (=> b!1209866 m!1385083))

(declare-fun m!1385859 () Bool)

(assert (=> b!1209866 m!1385859))

(assert (=> b!1209866 m!1385849))

(declare-fun m!1385861 () Bool)

(assert (=> b!1209866 m!1385861))

(assert (=> b!1209866 m!1385853))

(declare-fun m!1385863 () Bool)

(assert (=> b!1209866 m!1385863))

(declare-fun m!1385865 () Bool)

(assert (=> b!1209866 m!1385865))

(assert (=> b!1209866 m!1385839))

(declare-fun m!1385867 () Bool)

(assert (=> b!1209866 m!1385867))

(declare-fun m!1385869 () Bool)

(assert (=> b!1209866 m!1385869))

(declare-fun m!1385871 () Bool)

(assert (=> b!1209866 m!1385871))

(declare-fun m!1385873 () Bool)

(assert (=> b!1209867 m!1385873))

(assert (=> b!1209473 d!346176))

(assert (=> d!345852 d!346000))

(assert (=> d!345852 d!345848))

(declare-fun d!346194 () Bool)

(declare-fun res!543978 () Int)

(assert (=> d!346194 (= res!543978 (size!9732 (list!4539 thiss!9565)))))

(assert (=> d!346194 true))

(assert (=> d!346194 (= (choose!7757 thiss!9565) res!543978)))

(declare-fun bs!288576 () Bool)

(assert (= bs!288576 d!346194))

(assert (=> bs!288576 m!1385083))

(assert (=> bs!288576 m!1385083))

(assert (=> bs!288576 m!1385131))

(assert (=> d!345852 d!346194))

(declare-fun d!346198 () Bool)

(declare-fun c!202707 () Bool)

(assert (=> d!346198 (= c!202707 ((_ is Nil!12191) lt!413748))))

(declare-fun e!776127 () (InoxSet T!22580))

(assert (=> d!346198 (= (content!1726 lt!413748) e!776127)))

(declare-fun b!1209881 () Bool)

(assert (=> b!1209881 (= e!776127 ((as const (Array T!22580 Bool)) false))))

(declare-fun b!1209882 () Bool)

(assert (=> b!1209882 (= e!776127 ((_ map or) (store ((as const (Array T!22580 Bool)) false) (h!17592 lt!413748) true) (content!1726 (t!112633 lt!413748))))))

(assert (= (and d!346198 c!202707) b!1209881))

(assert (= (and d!346198 (not c!202707)) b!1209882))

(declare-fun m!1385881 () Bool)

(assert (=> b!1209882 m!1385881))

(declare-fun m!1385883 () Bool)

(assert (=> b!1209882 m!1385883))

(assert (=> d!345878 d!346198))

(assert (=> d!345878 d!345970))

(assert (=> bm!84390 d!345842))

(declare-fun d!346202 () Bool)

(declare-fun lt!413989 () Bool)

(assert (=> d!346202 (= lt!413989 (select (content!1726 lt!413716) lt!413787))))

(declare-fun e!776133 () Bool)

(assert (=> d!346202 (= lt!413989 e!776133)))

(declare-fun res!543981 () Bool)

(assert (=> d!346202 (=> (not res!543981) (not e!776133))))

(assert (=> d!346202 (= res!543981 ((_ is Cons!12191) lt!413716))))

(assert (=> d!346202 (= (contains!2022 lt!413716 lt!413787) lt!413989)))

(declare-fun b!1209892 () Bool)

(declare-fun e!776134 () Bool)

(assert (=> b!1209892 (= e!776133 e!776134)))

(declare-fun res!543980 () Bool)

(assert (=> b!1209892 (=> res!543980 e!776134)))

(assert (=> b!1209892 (= res!543980 (= (h!17592 lt!413716) lt!413787))))

(declare-fun b!1209893 () Bool)

(assert (=> b!1209893 (= e!776134 (contains!2022 (t!112633 lt!413716) lt!413787))))

(assert (= (and d!346202 res!543981) b!1209892))

(assert (= (and b!1209892 (not res!543980)) b!1209893))

(assert (=> d!346202 m!1385165))

(declare-fun m!1385885 () Bool)

(assert (=> d!346202 m!1385885))

(declare-fun m!1385887 () Bool)

(assert (=> b!1209893 m!1385887))

(assert (=> d!345924 d!346202))

(declare-fun b!1209894 () Bool)

(declare-fun e!776137 () List!12249)

(declare-fun e!776136 () List!12249)

(assert (=> b!1209894 (= e!776137 e!776136)))

(declare-fun c!202714 () Bool)

(assert (=> b!1209894 (= c!202714 (<= (- (+ 1 from!777) 1) 0))))

(declare-fun b!1209895 () Bool)

(declare-fun e!776139 () Int)

(assert (=> b!1209895 (= e!776139 0)))

(declare-fun b!1209896 () Bool)

(declare-fun e!776135 () Int)

(declare-fun call!84425 () Int)

(assert (=> b!1209896 (= e!776135 call!84425)))

(declare-fun b!1209897 () Bool)

(assert (=> b!1209897 (= e!776137 Nil!12191)))

(declare-fun b!1209899 () Bool)

(assert (=> b!1209899 (= e!776139 (- call!84425 (- (+ 1 from!777) 1)))))

(declare-fun b!1209900 () Bool)

(declare-fun e!776138 () Bool)

(declare-fun lt!413990 () List!12249)

(assert (=> b!1209900 (= e!776138 (= (size!9732 lt!413990) e!776135))))

(declare-fun c!202715 () Bool)

(assert (=> b!1209900 (= c!202715 (<= (- (+ 1 from!777) 1) 0))))

(declare-fun b!1209901 () Bool)

(assert (=> b!1209901 (= e!776136 (drop!648 (t!112633 (t!112633 lt!413716)) (- (- (+ 1 from!777) 1) 1)))))

(declare-fun d!346204 () Bool)

(assert (=> d!346204 e!776138))

(declare-fun res!543982 () Bool)

(assert (=> d!346204 (=> (not res!543982) (not e!776138))))

(assert (=> d!346204 (= res!543982 (= ((_ map implies) (content!1726 lt!413990) (content!1726 (t!112633 lt!413716))) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!346204 (= lt!413990 e!776137)))

(declare-fun c!202713 () Bool)

(assert (=> d!346204 (= c!202713 ((_ is Nil!12191) (t!112633 lt!413716)))))

(assert (=> d!346204 (= (drop!648 (t!112633 lt!413716) (- (+ 1 from!777) 1)) lt!413990)))

(declare-fun b!1209898 () Bool)

(assert (=> b!1209898 (= e!776135 e!776139)))

(declare-fun c!202712 () Bool)

(assert (=> b!1209898 (= c!202712 (>= (- (+ 1 from!777) 1) call!84425))))

(declare-fun bm!84420 () Bool)

(assert (=> bm!84420 (= call!84425 (size!9732 (t!112633 lt!413716)))))

(declare-fun b!1209902 () Bool)

(assert (=> b!1209902 (= e!776136 (t!112633 lt!413716))))

(assert (= (and d!346204 c!202713) b!1209897))

(assert (= (and d!346204 (not c!202713)) b!1209894))

(assert (= (and b!1209894 c!202714) b!1209902))

(assert (= (and b!1209894 (not c!202714)) b!1209901))

(assert (= (and d!346204 res!543982) b!1209900))

(assert (= (and b!1209900 c!202715) b!1209896))

(assert (= (and b!1209900 (not c!202715)) b!1209898))

(assert (= (and b!1209898 c!202712) b!1209895))

(assert (= (and b!1209898 (not c!202712)) b!1209899))

(assert (= (or b!1209896 b!1209898 b!1209899) bm!84420))

(declare-fun m!1385897 () Bool)

(assert (=> b!1209900 m!1385897))

(declare-fun m!1385899 () Bool)

(assert (=> b!1209901 m!1385899))

(declare-fun m!1385901 () Bool)

(assert (=> d!346204 m!1385901))

(assert (=> d!346204 m!1385519))

(assert (=> bm!84420 m!1385389))

(assert (=> b!1209336 d!346204))

(assert (=> b!1209432 d!345842))

(declare-fun b!1209912 () Bool)

(declare-fun e!776147 () List!12249)

(declare-fun e!776146 () List!12249)

(assert (=> b!1209912 (= e!776147 e!776146)))

(declare-fun c!202722 () Bool)

(assert (=> b!1209912 (= c!202722 (<= (- from!777 1) 0))))

(declare-fun b!1209913 () Bool)

(declare-fun e!776149 () Int)

(assert (=> b!1209913 (= e!776149 0)))

(declare-fun b!1209914 () Bool)

(declare-fun e!776145 () Int)

(declare-fun call!84427 () Int)

(assert (=> b!1209914 (= e!776145 call!84427)))

(declare-fun b!1209915 () Bool)

(assert (=> b!1209915 (= e!776147 Nil!12191)))

(declare-fun b!1209917 () Bool)

(assert (=> b!1209917 (= e!776149 (- call!84427 (- from!777 1)))))

(declare-fun b!1209918 () Bool)

(declare-fun e!776148 () Bool)

(declare-fun lt!413992 () List!12249)

(assert (=> b!1209918 (= e!776148 (= (size!9732 lt!413992) e!776145))))

(declare-fun c!202723 () Bool)

(assert (=> b!1209918 (= c!202723 (<= (- from!777 1) 0))))

(declare-fun b!1209919 () Bool)

(assert (=> b!1209919 (= e!776146 (drop!648 (t!112633 (t!112633 lt!413716)) (- (- from!777 1) 1)))))

(declare-fun d!346208 () Bool)

(assert (=> d!346208 e!776148))

(declare-fun res!543984 () Bool)

(assert (=> d!346208 (=> (not res!543984) (not e!776148))))

(assert (=> d!346208 (= res!543984 (= ((_ map implies) (content!1726 lt!413992) (content!1726 (t!112633 lt!413716))) ((as const (InoxSet T!22580)) true)))))

(assert (=> d!346208 (= lt!413992 e!776147)))

(declare-fun c!202721 () Bool)

(assert (=> d!346208 (= c!202721 ((_ is Nil!12191) (t!112633 lt!413716)))))

(assert (=> d!346208 (= (drop!648 (t!112633 lt!413716) (- from!777 1)) lt!413992)))

(declare-fun b!1209916 () Bool)

(assert (=> b!1209916 (= e!776145 e!776149)))

(declare-fun c!202720 () Bool)

(assert (=> b!1209916 (= c!202720 (>= (- from!777 1) call!84427))))

(declare-fun bm!84422 () Bool)

(assert (=> bm!84422 (= call!84427 (size!9732 (t!112633 lt!413716)))))

(declare-fun b!1209920 () Bool)

(assert (=> b!1209920 (= e!776146 (t!112633 lt!413716))))

(assert (= (and d!346208 c!202721) b!1209915))

(assert (= (and d!346208 (not c!202721)) b!1209912))

(assert (= (and b!1209912 c!202722) b!1209920))

(assert (= (and b!1209912 (not c!202722)) b!1209919))

(assert (= (and d!346208 res!543984) b!1209918))

(assert (= (and b!1209918 c!202723) b!1209914))

(assert (= (and b!1209918 (not c!202723)) b!1209916))

(assert (= (and b!1209916 c!202720) b!1209913))

(assert (= (and b!1209916 (not c!202720)) b!1209917))

(assert (= (or b!1209914 b!1209916 b!1209917) bm!84422))

(declare-fun m!1385913 () Bool)

(assert (=> b!1209918 m!1385913))

(declare-fun m!1385917 () Bool)

(assert (=> b!1209919 m!1385917))

(declare-fun m!1385919 () Bool)

(assert (=> d!346208 m!1385919))

(assert (=> d!346208 m!1385519))

(assert (=> bm!84422 m!1385389))

(assert (=> b!1209406 d!346208))

(assert (=> b!1209471 d!346000))

(assert (=> b!1209471 d!345848))

(assert (=> b!1209471 d!345852))

(declare-fun d!346214 () Bool)

(assert (=> d!346214 (= (head!2144 (drop!648 lt!413716 from!777)) (h!17592 (drop!648 lt!413716 from!777)))))

(assert (=> d!345860 d!346214))

(assert (=> d!345860 d!345900))

(assert (=> d!345860 d!345924))

(declare-fun d!346216 () Bool)

(assert (=> d!346216 (= (head!2144 (drop!648 lt!413716 from!777)) (apply!2637 lt!413716 from!777))))

(assert (=> d!346216 true))

(declare-fun _$27!674 () Unit!18568)

(assert (=> d!346216 (= (choose!7758 lt!413716 from!777) _$27!674)))

(declare-fun bs!288578 () Bool)

(assert (= bs!288578 d!346216))

(assert (=> bs!288578 m!1385091))

(assert (=> bs!288578 m!1385091))

(assert (=> bs!288578 m!1385141))

(assert (=> bs!288578 m!1385099))

(assert (=> d!345860 d!346216))

(declare-fun b!1209926 () Bool)

(declare-fun e!776154 () Bool)

(declare-fun tp!342706 () Bool)

(assert (=> b!1209926 (= e!776154 (and tp_is_empty!6147 tp!342706))))

(assert (=> b!1209491 (= tp!342694 e!776154)))

(assert (= (and b!1209491 ((_ is Cons!12191) (t!112633 (overflowing!115 thiss!9565)))) b!1209926))

(declare-fun tp!342716 () Bool)

(declare-fun b!1209939 () Bool)

(declare-fun tp!342714 () Bool)

(declare-fun e!776161 () Bool)

(assert (=> b!1209939 (= e!776161 (and (inv!16344 (left!10613 (c!202492 (value!68277 (underlying!2802 thiss!9565))))) tp!342714 (inv!16344 (right!10943 (c!202492 (value!68277 (underlying!2802 thiss!9565))))) tp!342716))))

(declare-fun b!1209941 () Bool)

(declare-fun e!776162 () Bool)

(declare-fun tp!342717 () Bool)

(assert (=> b!1209941 (= e!776162 tp!342717)))

(declare-fun b!1209940 () Bool)

(declare-fun inv!16350 (IArray!8045) Bool)

(assert (=> b!1209940 (= e!776161 (and (inv!16350 (xs!6731 (c!202492 (value!68277 (underlying!2802 thiss!9565))))) e!776162))))

(assert (=> b!1209485 (= tp!342690 (and (inv!16344 (c!202492 (value!68277 (underlying!2802 thiss!9565)))) e!776161))))

(assert (= (and b!1209485 ((_ is Node!4020) (c!202492 (value!68277 (underlying!2802 thiss!9565))))) b!1209939))

(assert (= b!1209940 b!1209941))

(assert (= (and b!1209485 ((_ is Leaf!6190) (c!202492 (value!68277 (underlying!2802 thiss!9565))))) b!1209940))

(declare-fun m!1385967 () Bool)

(assert (=> b!1209939 m!1385967))

(declare-fun m!1385969 () Bool)

(assert (=> b!1209939 m!1385969))

(declare-fun m!1385971 () Bool)

(assert (=> b!1209940 m!1385971))

(assert (=> b!1209485 m!1385395))

(declare-fun b!1209942 () Bool)

(declare-fun e!776163 () Bool)

(declare-fun tp!342720 () Bool)

(assert (=> b!1209942 (= e!776163 (and tp_is_empty!6147 tp!342720))))

(assert (=> b!1209495 (= tp!342697 e!776163)))

(assert (= (and b!1209495 ((_ is Cons!12191) (t!112633 (overflowing!115 other!28)))) b!1209942))

(declare-fun b!1209954 () Bool)

(declare-fun e!776169 () Bool)

(declare-fun tp!342731 () Bool)

(declare-fun tp!342732 () Bool)

(assert (=> b!1209954 (= e!776169 (and tp!342731 tp!342732))))

(assert (=> b!1209494 (= tp!342696 e!776169)))

(assert (= (and b!1209494 ((_ is Cons!12190) (value!68278 (underlying!2802 other!28)))) b!1209954))

(declare-fun b!1209957 () Bool)

(declare-fun e!776172 () Bool)

(declare-fun tp!342735 () Bool)

(declare-fun tp!342736 () Bool)

(assert (=> b!1209957 (= e!776172 (and tp!342735 tp!342736))))

(assert (=> b!1209486 (= tp!342691 e!776172)))

(assert (= (and b!1209486 ((_ is Cons!12190) (value!68278 (underlying!2802 thiss!9565)))) b!1209957))

(declare-fun tp!342738 () Bool)

(declare-fun tp!342737 () Bool)

(declare-fun e!776173 () Bool)

(declare-fun b!1209958 () Bool)

(assert (=> b!1209958 (= e!776173 (and (inv!16344 (left!10613 (c!202492 (value!68277 (underlying!2802 other!28))))) tp!342737 (inv!16344 (right!10943 (c!202492 (value!68277 (underlying!2802 other!28))))) tp!342738))))

(declare-fun b!1209960 () Bool)

(declare-fun e!776174 () Bool)

(declare-fun tp!342739 () Bool)

(assert (=> b!1209960 (= e!776174 tp!342739)))

(declare-fun b!1209959 () Bool)

(assert (=> b!1209959 (= e!776173 (and (inv!16350 (xs!6731 (c!202492 (value!68277 (underlying!2802 other!28))))) e!776174))))

(assert (=> b!1209493 (= tp!342695 (and (inv!16344 (c!202492 (value!68277 (underlying!2802 other!28)))) e!776173))))

(assert (= (and b!1209493 ((_ is Node!4020) (c!202492 (value!68277 (underlying!2802 other!28))))) b!1209958))

(assert (= b!1209959 b!1209960))

(assert (= (and b!1209493 ((_ is Leaf!6190) (c!202492 (value!68277 (underlying!2802 other!28))))) b!1209959))

(declare-fun m!1385973 () Bool)

(assert (=> b!1209958 m!1385973))

(declare-fun m!1385975 () Bool)

(assert (=> b!1209958 m!1385975))

(declare-fun m!1385977 () Bool)

(assert (=> b!1209959 m!1385977))

(assert (=> b!1209493 m!1385399))

(check-sat (not b!1209736) (not b!1209830) (not bm!84395) (not b!1209497) (not b!1209651) (not b!1209712) (not b!1209866) (not b!1209728) (not d!346176) (not d!346054) (not b!1209566) (not d!346128) (not d!345946) (not d!345952) (not d!346148) (not b!1209680) (not b!1209759) (not d!346020) (not b!1209500) (not d!346036) (not b!1209941) (not bm!84402) (not bm!84407) (not d!346050) (not b!1209583) (not bm!84405) (not d!346154) (not b!1209942) (not b!1209709) (not d!346082) (not b!1209842) (not bm!84420) (not b!1209788) (not b!1209625) (not b!1209960) (not b!1209681) (not b!1209626) (not b!1209590) (not b!1209718) (not b!1209882) (not d!346024) (not d!346062) (not b!1209686) (not d!346162) (not b!1209957) (not b!1209699) (not b!1209754) (not b!1209893) (not b!1209493) (not d!346088) (not bm!84410) (not bm!84415) (not b!1209758) (not bm!84416) (not b!1209708) (not d!346074) (not b!1209662) (not b!1209700) (not d!346216) (not b!1209696) (not b!1209954) (not b!1209582) (not b!1209918) (not b!1209745) (not d!345972) (not d!345994) (not b!1209592) (not d!346126) (not d!345942) (not bm!84408) (not b!1209843) (not b!1209698) (not b!1209510) (not b!1209823) (not b!1209554) (not b!1209613) (not d!346068) (not b!1209958) (not b!1209939) (not b!1209717) (not bm!84397) (not d!346032) (not d!346204) (not d!345992) (not b!1209624) (not b!1209818) (not b!1209737) (not b!1209581) (not b!1209959) (not b!1209926) (not b!1209919) (not b!1209867) (not d!346208) (not b!1209591) (not b!1209485) (not b!1209901) (not b!1209540) (not b!1209567) (not b!1209817) (not b!1209585) (not b!1209650) (not d!346046) (not b!1209819) (not b!1209575) (not b!1209864) (not d!346058) (not b!1209641) tp_is_empty!6147 (not d!346094) (not d!346096) (not d!346202) (not b!1209538) (not b!1209716) (not b!1209589) (not b!1209940) (not d!346106) (not d!346194) (not d!346142) (not d!346026) (not b!1209831) (not b!1209640) (not d!346110) (not b!1209760) (not b!1209900) (not bm!84422) (not b!1209865) (not bm!84411) (not b!1209764) (not b!1209773) (not bm!84401) (not b!1209820) (not d!346042) (not bm!84409) (not d!346102) (not b!1209744) (not d!346120) (not b!1209727) (not b!1209859) (not b!1209627) (not d!346002) (not b!1209672) (not b!1209509) (not b!1209821) (not b!1209786) (not b!1209574) (not b!1209735) (not b!1209753) (not b!1209774) (not d!346008) (not b!1209851) (not b!1209552))
(check-sat)
