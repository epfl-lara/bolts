; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103832 () Bool)

(assert start!103832)

(declare-fun res!828752 () Bool)

(declare-fun e!704461 () Bool)

(assert (=> start!103832 (=> (not res!828752) (not e!704461))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103832 (= res!828752 (not (= key1!25 key2!15)))))

(assert (=> start!103832 e!704461))

(assert (=> start!103832 true))

(declare-fun e!704462 () Bool)

(assert (=> start!103832 e!704462))

(declare-fun tp_is_empty!31293 () Bool)

(assert (=> start!103832 tp_is_empty!31293))

(declare-datatypes ((B!1894 0))(
  ( (B!1895 (val!15709 Int)) )
))
(declare-fun v1!20 () B!1894)

(declare-fun b!1242614 () Bool)

(declare-datatypes ((tuple2!20446 0))(
  ( (tuple2!20447 (_1!10233 (_ BitVec 64)) (_2!10233 B!1894)) )
))
(declare-datatypes ((List!27538 0))(
  ( (Nil!27535) (Cons!27534 (h!28743 tuple2!20446) (t!41011 List!27538)) )
))
(declare-fun l!644 () List!27538)

(declare-fun insertStrictlySorted!441 (List!27538 (_ BitVec 64) B!1894) List!27538)

(declare-fun removeStrictlySorted!135 (List!27538 (_ BitVec 64)) List!27538)

(assert (=> b!1242614 (= e!704461 (not (= (insertStrictlySorted!441 (removeStrictlySorted!135 l!644 key2!15) key1!25 v1!20) (removeStrictlySorted!135 (insertStrictlySorted!441 l!644 key1!25 v1!20) key2!15))))))

(declare-fun b!1242613 () Bool)

(declare-fun res!828753 () Bool)

(assert (=> b!1242613 (=> (not res!828753) (not e!704461))))

(get-info :version)

(assert (=> b!1242613 (= res!828753 (not ((_ is Cons!27534) l!644)))))

(declare-fun b!1242612 () Bool)

(declare-fun res!828754 () Bool)

(assert (=> b!1242612 (=> (not res!828754) (not e!704461))))

(declare-fun isStrictlySorted!763 (List!27538) Bool)

(assert (=> b!1242612 (= res!828754 (isStrictlySorted!763 l!644))))

(declare-fun b!1242615 () Bool)

(declare-fun tp!92769 () Bool)

(assert (=> b!1242615 (= e!704462 (and tp_is_empty!31293 tp!92769))))

(assert (= (and start!103832 res!828752) b!1242612))

(assert (= (and b!1242612 res!828754) b!1242613))

(assert (= (and b!1242613 res!828753) b!1242614))

(assert (= (and start!103832 ((_ is Cons!27534) l!644)) b!1242615))

(declare-fun m!1145355 () Bool)

(assert (=> b!1242614 m!1145355))

(assert (=> b!1242614 m!1145355))

(declare-fun m!1145357 () Bool)

(assert (=> b!1242614 m!1145357))

(declare-fun m!1145359 () Bool)

(assert (=> b!1242614 m!1145359))

(assert (=> b!1242614 m!1145359))

(declare-fun m!1145361 () Bool)

(assert (=> b!1242614 m!1145361))

(declare-fun m!1145363 () Bool)

(assert (=> b!1242612 m!1145363))

(check-sat (not b!1242614) (not b!1242612) (not b!1242615) tp_is_empty!31293)
(check-sat)
(get-model)

(declare-fun e!704505 () List!27538)

(declare-fun b!1242689 () Bool)

(assert (=> b!1242689 (= e!704505 (insertStrictlySorted!441 (t!41011 (removeStrictlySorted!135 l!644 key2!15)) key1!25 v1!20))))

(declare-fun d!136805 () Bool)

(declare-fun e!704507 () Bool)

(assert (=> d!136805 e!704507))

(declare-fun res!828777 () Bool)

(assert (=> d!136805 (=> (not res!828777) (not e!704507))))

(declare-fun lt!562215 () List!27538)

(assert (=> d!136805 (= res!828777 (isStrictlySorted!763 lt!562215))))

(declare-fun e!704504 () List!27538)

(assert (=> d!136805 (= lt!562215 e!704504)))

(declare-fun c!121652 () Bool)

(assert (=> d!136805 (= c!121652 (and ((_ is Cons!27534) (removeStrictlySorted!135 l!644 key2!15)) (bvslt (_1!10233 (h!28743 (removeStrictlySorted!135 l!644 key2!15))) key1!25)))))

(assert (=> d!136805 (isStrictlySorted!763 (removeStrictlySorted!135 l!644 key2!15))))

(assert (=> d!136805 (= (insertStrictlySorted!441 (removeStrictlySorted!135 l!644 key2!15) key1!25 v1!20) lt!562215)))

(declare-fun c!121659 () Bool)

(declare-fun b!1242691 () Bool)

(assert (=> b!1242691 (= c!121659 (and ((_ is Cons!27534) (removeStrictlySorted!135 l!644 key2!15)) (bvsgt (_1!10233 (h!28743 (removeStrictlySorted!135 l!644 key2!15))) key1!25)))))

(declare-fun e!704503 () List!27538)

(declare-fun e!704508 () List!27538)

(assert (=> b!1242691 (= e!704503 e!704508)))

(declare-fun call!61373 () List!27538)

(declare-fun bm!61367 () Bool)

(declare-fun $colon$colon!631 (List!27538 tuple2!20446) List!27538)

(assert (=> bm!61367 (= call!61373 ($colon$colon!631 e!704505 (ite c!121652 (h!28743 (removeStrictlySorted!135 l!644 key2!15)) (tuple2!20447 key1!25 v1!20))))))

(declare-fun c!121654 () Bool)

(assert (=> bm!61367 (= c!121654 c!121652)))

(declare-fun b!1242694 () Bool)

(declare-fun call!61370 () List!27538)

(assert (=> b!1242694 (= e!704508 call!61370)))

(declare-fun bm!61368 () Bool)

(declare-fun call!61374 () List!27538)

(assert (=> bm!61368 (= call!61370 call!61374)))

(declare-fun b!1242697 () Bool)

(declare-fun res!828779 () Bool)

(assert (=> b!1242697 (=> (not res!828779) (not e!704507))))

(declare-fun containsKey!614 (List!27538 (_ BitVec 64)) Bool)

(assert (=> b!1242697 (= res!828779 (containsKey!614 lt!562215 key1!25))))

(declare-fun bm!61370 () Bool)

(assert (=> bm!61370 (= call!61374 call!61373)))

(declare-fun b!1242698 () Bool)

(declare-fun c!121653 () Bool)

(assert (=> b!1242698 (= e!704505 (ite c!121653 (t!41011 (removeStrictlySorted!135 l!644 key2!15)) (ite c!121659 (Cons!27534 (h!28743 (removeStrictlySorted!135 l!644 key2!15)) (t!41011 (removeStrictlySorted!135 l!644 key2!15))) Nil!27535)))))

(declare-fun b!1242700 () Bool)

(assert (=> b!1242700 (= e!704504 e!704503)))

(assert (=> b!1242700 (= c!121653 (and ((_ is Cons!27534) (removeStrictlySorted!135 l!644 key2!15)) (= (_1!10233 (h!28743 (removeStrictlySorted!135 l!644 key2!15))) key1!25)))))

(declare-fun b!1242702 () Bool)

(assert (=> b!1242702 (= e!704503 call!61374)))

(declare-fun b!1242704 () Bool)

(assert (=> b!1242704 (= e!704504 call!61373)))

(declare-fun b!1242706 () Bool)

(declare-fun contains!7413 (List!27538 tuple2!20446) Bool)

(assert (=> b!1242706 (= e!704507 (contains!7413 lt!562215 (tuple2!20447 key1!25 v1!20)))))

(declare-fun b!1242707 () Bool)

(assert (=> b!1242707 (= e!704508 call!61370)))

(assert (= (and d!136805 c!121652) b!1242704))

(assert (= (and d!136805 (not c!121652)) b!1242700))

(assert (= (and b!1242700 c!121653) b!1242702))

(assert (= (and b!1242700 (not c!121653)) b!1242691))

(assert (= (and b!1242691 c!121659) b!1242707))

(assert (= (and b!1242691 (not c!121659)) b!1242694))

(assert (= (or b!1242707 b!1242694) bm!61368))

(assert (= (or b!1242702 bm!61368) bm!61370))

(assert (= (or b!1242704 bm!61370) bm!61367))

(assert (= (and bm!61367 c!121654) b!1242689))

(assert (= (and bm!61367 (not c!121654)) b!1242698))

(assert (= (and d!136805 res!828777) b!1242697))

(assert (= (and b!1242697 res!828779) b!1242706))

(declare-fun m!1145377 () Bool)

(assert (=> b!1242706 m!1145377))

(declare-fun m!1145381 () Bool)

(assert (=> b!1242689 m!1145381))

(declare-fun m!1145383 () Bool)

(assert (=> d!136805 m!1145383))

(assert (=> d!136805 m!1145355))

(declare-fun m!1145387 () Bool)

(assert (=> d!136805 m!1145387))

(declare-fun m!1145389 () Bool)

(assert (=> b!1242697 m!1145389))

(declare-fun m!1145395 () Bool)

(assert (=> bm!61367 m!1145395))

(assert (=> b!1242614 d!136805))

(declare-fun b!1242748 () Bool)

(declare-fun e!704534 () List!27538)

(assert (=> b!1242748 (= e!704534 (t!41011 l!644))))

(declare-fun b!1242750 () Bool)

(declare-fun e!704535 () List!27538)

(assert (=> b!1242750 (= e!704535 Nil!27535)))

(declare-fun b!1242752 () Bool)

(assert (=> b!1242752 (= e!704534 e!704535)))

(declare-fun c!121677 () Bool)

(assert (=> b!1242752 (= c!121677 (and ((_ is Cons!27534) l!644) (not (= (_1!10233 (h!28743 l!644)) key2!15))))))

(declare-fun b!1242754 () Bool)

(declare-fun e!704532 () Bool)

(declare-fun lt!562224 () List!27538)

(assert (=> b!1242754 (= e!704532 (not (containsKey!614 lt!562224 key2!15)))))

(declare-fun b!1242749 () Bool)

(assert (=> b!1242749 (= e!704535 ($colon$colon!631 (removeStrictlySorted!135 (t!41011 l!644) key2!15) (h!28743 l!644)))))

(declare-fun d!136809 () Bool)

(assert (=> d!136809 e!704532))

(declare-fun res!828788 () Bool)

(assert (=> d!136809 (=> (not res!828788) (not e!704532))))

(assert (=> d!136809 (= res!828788 (isStrictlySorted!763 lt!562224))))

(assert (=> d!136809 (= lt!562224 e!704534)))

(declare-fun c!121678 () Bool)

(assert (=> d!136809 (= c!121678 (and ((_ is Cons!27534) l!644) (= (_1!10233 (h!28743 l!644)) key2!15)))))

(assert (=> d!136809 (isStrictlySorted!763 l!644)))

(assert (=> d!136809 (= (removeStrictlySorted!135 l!644 key2!15) lt!562224)))

(assert (= (and d!136809 c!121678) b!1242748))

(assert (= (and d!136809 (not c!121678)) b!1242752))

(assert (= (and b!1242752 c!121677) b!1242749))

(assert (= (and b!1242752 (not c!121677)) b!1242750))

(assert (= (and d!136809 res!828788) b!1242754))

(declare-fun m!1145413 () Bool)

(assert (=> b!1242754 m!1145413))

(declare-fun m!1145417 () Bool)

(assert (=> b!1242749 m!1145417))

(assert (=> b!1242749 m!1145417))

(declare-fun m!1145421 () Bool)

(assert (=> b!1242749 m!1145421))

(declare-fun m!1145423 () Bool)

(assert (=> d!136809 m!1145423))

(assert (=> d!136809 m!1145363))

(assert (=> b!1242614 d!136809))

(declare-fun e!704543 () List!27538)

(declare-fun b!1242763 () Bool)

(assert (=> b!1242763 (= e!704543 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20)))))

(declare-fun b!1242767 () Bool)

(declare-fun e!704544 () List!27538)

(assert (=> b!1242767 (= e!704544 Nil!27535)))

(declare-fun b!1242769 () Bool)

(assert (=> b!1242769 (= e!704543 e!704544)))

(declare-fun c!121683 () Bool)

(assert (=> b!1242769 (= c!121683 (and ((_ is Cons!27534) (insertStrictlySorted!441 l!644 key1!25 v1!20)) (not (= (_1!10233 (h!28743 (insertStrictlySorted!441 l!644 key1!25 v1!20))) key2!15))))))

(declare-fun b!1242771 () Bool)

(declare-fun e!704542 () Bool)

(declare-fun lt!562227 () List!27538)

(assert (=> b!1242771 (= e!704542 (not (containsKey!614 lt!562227 key2!15)))))

(declare-fun b!1242765 () Bool)

(assert (=> b!1242765 (= e!704544 ($colon$colon!631 (removeStrictlySorted!135 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20)) key2!15) (h!28743 (insertStrictlySorted!441 l!644 key1!25 v1!20))))))

(declare-fun d!136817 () Bool)

(assert (=> d!136817 e!704542))

(declare-fun res!828791 () Bool)

(assert (=> d!136817 (=> (not res!828791) (not e!704542))))

(assert (=> d!136817 (= res!828791 (isStrictlySorted!763 lt!562227))))

(assert (=> d!136817 (= lt!562227 e!704543)))

(declare-fun c!121684 () Bool)

(assert (=> d!136817 (= c!121684 (and ((_ is Cons!27534) (insertStrictlySorted!441 l!644 key1!25 v1!20)) (= (_1!10233 (h!28743 (insertStrictlySorted!441 l!644 key1!25 v1!20))) key2!15)))))

(assert (=> d!136817 (isStrictlySorted!763 (insertStrictlySorted!441 l!644 key1!25 v1!20))))

(assert (=> d!136817 (= (removeStrictlySorted!135 (insertStrictlySorted!441 l!644 key1!25 v1!20) key2!15) lt!562227)))

(assert (= (and d!136817 c!121684) b!1242763))

(assert (= (and d!136817 (not c!121684)) b!1242769))

(assert (= (and b!1242769 c!121683) b!1242765))

(assert (= (and b!1242769 (not c!121683)) b!1242767))

(assert (= (and d!136817 res!828791) b!1242771))

(declare-fun m!1145437 () Bool)

(assert (=> b!1242771 m!1145437))

(declare-fun m!1145441 () Bool)

(assert (=> b!1242765 m!1145441))

(assert (=> b!1242765 m!1145441))

(declare-fun m!1145447 () Bool)

(assert (=> b!1242765 m!1145447))

(declare-fun m!1145449 () Bool)

(assert (=> d!136817 m!1145449))

(assert (=> d!136817 m!1145359))

(declare-fun m!1145453 () Bool)

(assert (=> d!136817 m!1145453))

(assert (=> b!1242614 d!136817))

(declare-fun b!1242779 () Bool)

(declare-fun e!704556 () List!27538)

(assert (=> b!1242779 (= e!704556 (insertStrictlySorted!441 (t!41011 l!644) key1!25 v1!20))))

(declare-fun d!136823 () Bool)

(declare-fun e!704558 () Bool)

(assert (=> d!136823 e!704558))

(declare-fun res!828795 () Bool)

(assert (=> d!136823 (=> (not res!828795) (not e!704558))))

(declare-fun lt!562230 () List!27538)

(assert (=> d!136823 (= res!828795 (isStrictlySorted!763 lt!562230))))

(declare-fun e!704554 () List!27538)

(assert (=> d!136823 (= lt!562230 e!704554)))

(declare-fun c!121688 () Bool)

(assert (=> d!136823 (= c!121688 (and ((_ is Cons!27534) l!644) (bvslt (_1!10233 (h!28743 l!644)) key1!25)))))

(assert (=> d!136823 (isStrictlySorted!763 l!644)))

(assert (=> d!136823 (= (insertStrictlySorted!441 l!644 key1!25 v1!20) lt!562230)))

(declare-fun b!1242780 () Bool)

(declare-fun c!121695 () Bool)

(assert (=> b!1242780 (= c!121695 (and ((_ is Cons!27534) l!644) (bvsgt (_1!10233 (h!28743 l!644)) key1!25)))))

(declare-fun e!704552 () List!27538)

(declare-fun e!704559 () List!27538)

(assert (=> b!1242780 (= e!704552 e!704559)))

(declare-fun bm!61376 () Bool)

(declare-fun call!61382 () List!27538)

(assert (=> bm!61376 (= call!61382 ($colon$colon!631 e!704556 (ite c!121688 (h!28743 l!644) (tuple2!20447 key1!25 v1!20))))))

(declare-fun c!121690 () Bool)

(assert (=> bm!61376 (= c!121690 c!121688)))

(declare-fun b!1242783 () Bool)

(declare-fun call!61379 () List!27538)

(assert (=> b!1242783 (= e!704559 call!61379)))

(declare-fun bm!61377 () Bool)

(declare-fun call!61383 () List!27538)

(assert (=> bm!61377 (= call!61379 call!61383)))

(declare-fun b!1242786 () Bool)

(declare-fun res!828797 () Bool)

(assert (=> b!1242786 (=> (not res!828797) (not e!704558))))

(assert (=> b!1242786 (= res!828797 (containsKey!614 lt!562230 key1!25))))

(declare-fun bm!61378 () Bool)

(assert (=> bm!61378 (= call!61383 call!61382)))

(declare-fun b!1242788 () Bool)

(declare-fun c!121689 () Bool)

(assert (=> b!1242788 (= e!704556 (ite c!121689 (t!41011 l!644) (ite c!121695 (Cons!27534 (h!28743 l!644) (t!41011 l!644)) Nil!27535)))))

(declare-fun b!1242789 () Bool)

(assert (=> b!1242789 (= e!704554 e!704552)))

(assert (=> b!1242789 (= c!121689 (and ((_ is Cons!27534) l!644) (= (_1!10233 (h!28743 l!644)) key1!25)))))

(declare-fun b!1242791 () Bool)

(assert (=> b!1242791 (= e!704552 call!61383)))

(declare-fun b!1242793 () Bool)

(assert (=> b!1242793 (= e!704554 call!61382)))

(declare-fun b!1242795 () Bool)

(assert (=> b!1242795 (= e!704558 (contains!7413 lt!562230 (tuple2!20447 key1!25 v1!20)))))

(declare-fun b!1242797 () Bool)

(assert (=> b!1242797 (= e!704559 call!61379)))

(assert (= (and d!136823 c!121688) b!1242793))

(assert (= (and d!136823 (not c!121688)) b!1242789))

(assert (= (and b!1242789 c!121689) b!1242791))

(assert (= (and b!1242789 (not c!121689)) b!1242780))

(assert (= (and b!1242780 c!121695) b!1242797))

(assert (= (and b!1242780 (not c!121695)) b!1242783))

(assert (= (or b!1242797 b!1242783) bm!61377))

(assert (= (or b!1242791 bm!61377) bm!61378))

(assert (= (or b!1242793 bm!61378) bm!61376))

(assert (= (and bm!61376 c!121690) b!1242779))

(assert (= (and bm!61376 (not c!121690)) b!1242788))

(assert (= (and d!136823 res!828795) b!1242786))

(assert (= (and b!1242786 res!828797) b!1242795))

(declare-fun m!1145467 () Bool)

(assert (=> b!1242795 m!1145467))

(declare-fun m!1145469 () Bool)

(assert (=> b!1242779 m!1145469))

(declare-fun m!1145473 () Bool)

(assert (=> d!136823 m!1145473))

(assert (=> d!136823 m!1145363))

(declare-fun m!1145475 () Bool)

(assert (=> b!1242786 m!1145475))

(declare-fun m!1145481 () Bool)

(assert (=> bm!61376 m!1145481))

(assert (=> b!1242614 d!136823))

(declare-fun d!136827 () Bool)

(declare-fun res!828812 () Bool)

(declare-fun e!704577 () Bool)

(assert (=> d!136827 (=> res!828812 e!704577)))

(assert (=> d!136827 (= res!828812 (or ((_ is Nil!27535) l!644) ((_ is Nil!27535) (t!41011 l!644))))))

(assert (=> d!136827 (= (isStrictlySorted!763 l!644) e!704577)))

(declare-fun b!1242820 () Bool)

(declare-fun e!704578 () Bool)

(assert (=> b!1242820 (= e!704577 e!704578)))

(declare-fun res!828813 () Bool)

(assert (=> b!1242820 (=> (not res!828813) (not e!704578))))

(assert (=> b!1242820 (= res!828813 (bvslt (_1!10233 (h!28743 l!644)) (_1!10233 (h!28743 (t!41011 l!644)))))))

(declare-fun b!1242821 () Bool)

(assert (=> b!1242821 (= e!704578 (isStrictlySorted!763 (t!41011 l!644)))))

(assert (= (and d!136827 (not res!828812)) b!1242820))

(assert (= (and b!1242820 res!828813) b!1242821))

(declare-fun m!1145495 () Bool)

(assert (=> b!1242821 m!1145495))

(assert (=> b!1242612 d!136827))

(declare-fun b!1242839 () Bool)

(declare-fun e!704590 () Bool)

(declare-fun tp!92780 () Bool)

(assert (=> b!1242839 (= e!704590 (and tp_is_empty!31293 tp!92780))))

(assert (=> b!1242615 (= tp!92769 e!704590)))

(assert (= (and b!1242615 ((_ is Cons!27534) (t!41011 l!644))) b!1242839))

(check-sat (not d!136805) (not b!1242786) (not b!1242771) (not b!1242754) (not b!1242839) (not b!1242779) (not b!1242689) (not b!1242765) (not b!1242749) (not b!1242697) (not b!1242795) (not b!1242821) (not bm!61376) (not bm!61367) (not d!136817) (not d!136823) (not d!136809) (not b!1242706) tp_is_empty!31293)
(check-sat)
(get-model)

(declare-fun d!136833 () Bool)

(declare-fun res!828818 () Bool)

(declare-fun e!704592 () Bool)

(assert (=> d!136833 (=> res!828818 e!704592)))

(assert (=> d!136833 (= res!828818 (or ((_ is Nil!27535) lt!562224) ((_ is Nil!27535) (t!41011 lt!562224))))))

(assert (=> d!136833 (= (isStrictlySorted!763 lt!562224) e!704592)))

(declare-fun b!1242841 () Bool)

(declare-fun e!704593 () Bool)

(assert (=> b!1242841 (= e!704592 e!704593)))

(declare-fun res!828819 () Bool)

(assert (=> b!1242841 (=> (not res!828819) (not e!704593))))

(assert (=> b!1242841 (= res!828819 (bvslt (_1!10233 (h!28743 lt!562224)) (_1!10233 (h!28743 (t!41011 lt!562224)))))))

(declare-fun b!1242842 () Bool)

(assert (=> b!1242842 (= e!704593 (isStrictlySorted!763 (t!41011 lt!562224)))))

(assert (= (and d!136833 (not res!828818)) b!1242841))

(assert (= (and b!1242841 res!828819) b!1242842))

(declare-fun m!1145501 () Bool)

(assert (=> b!1242842 m!1145501))

(assert (=> d!136809 d!136833))

(assert (=> d!136809 d!136827))

(declare-fun d!136835 () Bool)

(declare-fun lt!562234 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!611 (List!27538) (InoxSet tuple2!20446))

(assert (=> d!136835 (= lt!562234 (select (content!611 lt!562215) (tuple2!20447 key1!25 v1!20)))))

(declare-fun e!704598 () Bool)

(assert (=> d!136835 (= lt!562234 e!704598)))

(declare-fun res!828824 () Bool)

(assert (=> d!136835 (=> (not res!828824) (not e!704598))))

(assert (=> d!136835 (= res!828824 ((_ is Cons!27534) lt!562215))))

(assert (=> d!136835 (= (contains!7413 lt!562215 (tuple2!20447 key1!25 v1!20)) lt!562234)))

(declare-fun b!1242847 () Bool)

(declare-fun e!704599 () Bool)

(assert (=> b!1242847 (= e!704598 e!704599)))

(declare-fun res!828825 () Bool)

(assert (=> b!1242847 (=> res!828825 e!704599)))

(assert (=> b!1242847 (= res!828825 (= (h!28743 lt!562215) (tuple2!20447 key1!25 v1!20)))))

(declare-fun b!1242848 () Bool)

(assert (=> b!1242848 (= e!704599 (contains!7413 (t!41011 lt!562215) (tuple2!20447 key1!25 v1!20)))))

(assert (= (and d!136835 res!828824) b!1242847))

(assert (= (and b!1242847 (not res!828825)) b!1242848))

(declare-fun m!1145503 () Bool)

(assert (=> d!136835 m!1145503))

(declare-fun m!1145505 () Bool)

(assert (=> d!136835 m!1145505))

(declare-fun m!1145507 () Bool)

(assert (=> b!1242848 m!1145507))

(assert (=> b!1242706 d!136835))

(declare-fun d!136837 () Bool)

(assert (=> d!136837 (= ($colon$colon!631 (removeStrictlySorted!135 (t!41011 l!644) key2!15) (h!28743 l!644)) (Cons!27534 (h!28743 l!644) (removeStrictlySorted!135 (t!41011 l!644) key2!15)))))

(assert (=> b!1242749 d!136837))

(declare-fun b!1242849 () Bool)

(declare-fun e!704601 () List!27538)

(assert (=> b!1242849 (= e!704601 (t!41011 (t!41011 l!644)))))

(declare-fun b!1242851 () Bool)

(declare-fun e!704602 () List!27538)

(assert (=> b!1242851 (= e!704602 Nil!27535)))

(declare-fun b!1242852 () Bool)

(assert (=> b!1242852 (= e!704601 e!704602)))

(declare-fun c!121700 () Bool)

(assert (=> b!1242852 (= c!121700 (and ((_ is Cons!27534) (t!41011 l!644)) (not (= (_1!10233 (h!28743 (t!41011 l!644))) key2!15))))))

(declare-fun b!1242853 () Bool)

(declare-fun e!704600 () Bool)

(declare-fun lt!562235 () List!27538)

(assert (=> b!1242853 (= e!704600 (not (containsKey!614 lt!562235 key2!15)))))

(declare-fun b!1242850 () Bool)

(assert (=> b!1242850 (= e!704602 ($colon$colon!631 (removeStrictlySorted!135 (t!41011 (t!41011 l!644)) key2!15) (h!28743 (t!41011 l!644))))))

(declare-fun d!136839 () Bool)

(assert (=> d!136839 e!704600))

(declare-fun res!828826 () Bool)

(assert (=> d!136839 (=> (not res!828826) (not e!704600))))

(assert (=> d!136839 (= res!828826 (isStrictlySorted!763 lt!562235))))

(assert (=> d!136839 (= lt!562235 e!704601)))

(declare-fun c!121701 () Bool)

(assert (=> d!136839 (= c!121701 (and ((_ is Cons!27534) (t!41011 l!644)) (= (_1!10233 (h!28743 (t!41011 l!644))) key2!15)))))

(assert (=> d!136839 (isStrictlySorted!763 (t!41011 l!644))))

(assert (=> d!136839 (= (removeStrictlySorted!135 (t!41011 l!644) key2!15) lt!562235)))

(assert (= (and d!136839 c!121701) b!1242849))

(assert (= (and d!136839 (not c!121701)) b!1242852))

(assert (= (and b!1242852 c!121700) b!1242850))

(assert (= (and b!1242852 (not c!121700)) b!1242851))

(assert (= (and d!136839 res!828826) b!1242853))

(declare-fun m!1145509 () Bool)

(assert (=> b!1242853 m!1145509))

(declare-fun m!1145511 () Bool)

(assert (=> b!1242850 m!1145511))

(assert (=> b!1242850 m!1145511))

(declare-fun m!1145513 () Bool)

(assert (=> b!1242850 m!1145513))

(declare-fun m!1145515 () Bool)

(assert (=> d!136839 m!1145515))

(assert (=> d!136839 m!1145495))

(assert (=> b!1242749 d!136839))

(declare-fun d!136841 () Bool)

(declare-fun res!828831 () Bool)

(declare-fun e!704607 () Bool)

(assert (=> d!136841 (=> res!828831 e!704607)))

(assert (=> d!136841 (= res!828831 (and ((_ is Cons!27534) lt!562215) (= (_1!10233 (h!28743 lt!562215)) key1!25)))))

(assert (=> d!136841 (= (containsKey!614 lt!562215 key1!25) e!704607)))

(declare-fun b!1242858 () Bool)

(declare-fun e!704608 () Bool)

(assert (=> b!1242858 (= e!704607 e!704608)))

(declare-fun res!828832 () Bool)

(assert (=> b!1242858 (=> (not res!828832) (not e!704608))))

(assert (=> b!1242858 (= res!828832 (and (or (not ((_ is Cons!27534) lt!562215)) (bvsle (_1!10233 (h!28743 lt!562215)) key1!25)) ((_ is Cons!27534) lt!562215) (bvslt (_1!10233 (h!28743 lt!562215)) key1!25)))))

(declare-fun b!1242859 () Bool)

(assert (=> b!1242859 (= e!704608 (containsKey!614 (t!41011 lt!562215) key1!25))))

(assert (= (and d!136841 (not res!828831)) b!1242858))

(assert (= (and b!1242858 res!828832) b!1242859))

(declare-fun m!1145517 () Bool)

(assert (=> b!1242859 m!1145517))

(assert (=> b!1242697 d!136841))

(declare-fun e!704611 () List!27538)

(declare-fun b!1242860 () Bool)

(assert (=> b!1242860 (= e!704611 (insertStrictlySorted!441 (t!41011 (t!41011 (removeStrictlySorted!135 l!644 key2!15))) key1!25 v1!20))))

(declare-fun d!136843 () Bool)

(declare-fun e!704612 () Bool)

(assert (=> d!136843 e!704612))

(declare-fun res!828833 () Bool)

(assert (=> d!136843 (=> (not res!828833) (not e!704612))))

(declare-fun lt!562236 () List!27538)

(assert (=> d!136843 (= res!828833 (isStrictlySorted!763 lt!562236))))

(declare-fun e!704610 () List!27538)

(assert (=> d!136843 (= lt!562236 e!704610)))

(declare-fun c!121702 () Bool)

(assert (=> d!136843 (= c!121702 (and ((_ is Cons!27534) (t!41011 (removeStrictlySorted!135 l!644 key2!15))) (bvslt (_1!10233 (h!28743 (t!41011 (removeStrictlySorted!135 l!644 key2!15)))) key1!25)))))

(assert (=> d!136843 (isStrictlySorted!763 (t!41011 (removeStrictlySorted!135 l!644 key2!15)))))

(assert (=> d!136843 (= (insertStrictlySorted!441 (t!41011 (removeStrictlySorted!135 l!644 key2!15)) key1!25 v1!20) lt!562236)))

(declare-fun c!121705 () Bool)

(declare-fun b!1242861 () Bool)

(assert (=> b!1242861 (= c!121705 (and ((_ is Cons!27534) (t!41011 (removeStrictlySorted!135 l!644 key2!15))) (bvsgt (_1!10233 (h!28743 (t!41011 (removeStrictlySorted!135 l!644 key2!15)))) key1!25)))))

(declare-fun e!704609 () List!27538)

(declare-fun e!704613 () List!27538)

(assert (=> b!1242861 (= e!704609 e!704613)))

(declare-fun bm!61384 () Bool)

(declare-fun call!61388 () List!27538)

(assert (=> bm!61384 (= call!61388 ($colon$colon!631 e!704611 (ite c!121702 (h!28743 (t!41011 (removeStrictlySorted!135 l!644 key2!15))) (tuple2!20447 key1!25 v1!20))))))

(declare-fun c!121704 () Bool)

(assert (=> bm!61384 (= c!121704 c!121702)))

(declare-fun b!1242862 () Bool)

(declare-fun call!61387 () List!27538)

(assert (=> b!1242862 (= e!704613 call!61387)))

(declare-fun bm!61385 () Bool)

(declare-fun call!61389 () List!27538)

(assert (=> bm!61385 (= call!61387 call!61389)))

(declare-fun b!1242863 () Bool)

(declare-fun res!828834 () Bool)

(assert (=> b!1242863 (=> (not res!828834) (not e!704612))))

(assert (=> b!1242863 (= res!828834 (containsKey!614 lt!562236 key1!25))))

(declare-fun bm!61386 () Bool)

(assert (=> bm!61386 (= call!61389 call!61388)))

(declare-fun c!121703 () Bool)

(declare-fun b!1242864 () Bool)

(assert (=> b!1242864 (= e!704611 (ite c!121703 (t!41011 (t!41011 (removeStrictlySorted!135 l!644 key2!15))) (ite c!121705 (Cons!27534 (h!28743 (t!41011 (removeStrictlySorted!135 l!644 key2!15))) (t!41011 (t!41011 (removeStrictlySorted!135 l!644 key2!15)))) Nil!27535)))))

(declare-fun b!1242865 () Bool)

(assert (=> b!1242865 (= e!704610 e!704609)))

(assert (=> b!1242865 (= c!121703 (and ((_ is Cons!27534) (t!41011 (removeStrictlySorted!135 l!644 key2!15))) (= (_1!10233 (h!28743 (t!41011 (removeStrictlySorted!135 l!644 key2!15)))) key1!25)))))

(declare-fun b!1242866 () Bool)

(assert (=> b!1242866 (= e!704609 call!61389)))

(declare-fun b!1242867 () Bool)

(assert (=> b!1242867 (= e!704610 call!61388)))

(declare-fun b!1242868 () Bool)

(assert (=> b!1242868 (= e!704612 (contains!7413 lt!562236 (tuple2!20447 key1!25 v1!20)))))

(declare-fun b!1242869 () Bool)

(assert (=> b!1242869 (= e!704613 call!61387)))

(assert (= (and d!136843 c!121702) b!1242867))

(assert (= (and d!136843 (not c!121702)) b!1242865))

(assert (= (and b!1242865 c!121703) b!1242866))

(assert (= (and b!1242865 (not c!121703)) b!1242861))

(assert (= (and b!1242861 c!121705) b!1242869))

(assert (= (and b!1242861 (not c!121705)) b!1242862))

(assert (= (or b!1242869 b!1242862) bm!61385))

(assert (= (or b!1242866 bm!61385) bm!61386))

(assert (= (or b!1242867 bm!61386) bm!61384))

(assert (= (and bm!61384 c!121704) b!1242860))

(assert (= (and bm!61384 (not c!121704)) b!1242864))

(assert (= (and d!136843 res!828833) b!1242863))

(assert (= (and b!1242863 res!828834) b!1242868))

(declare-fun m!1145519 () Bool)

(assert (=> b!1242868 m!1145519))

(declare-fun m!1145521 () Bool)

(assert (=> b!1242860 m!1145521))

(declare-fun m!1145523 () Bool)

(assert (=> d!136843 m!1145523))

(declare-fun m!1145525 () Bool)

(assert (=> d!136843 m!1145525))

(declare-fun m!1145527 () Bool)

(assert (=> b!1242863 m!1145527))

(declare-fun m!1145529 () Bool)

(assert (=> bm!61384 m!1145529))

(assert (=> b!1242689 d!136843))

(declare-fun d!136845 () Bool)

(declare-fun res!828835 () Bool)

(declare-fun e!704614 () Bool)

(assert (=> d!136845 (=> res!828835 e!704614)))

(assert (=> d!136845 (= res!828835 (and ((_ is Cons!27534) lt!562227) (= (_1!10233 (h!28743 lt!562227)) key2!15)))))

(assert (=> d!136845 (= (containsKey!614 lt!562227 key2!15) e!704614)))

(declare-fun b!1242870 () Bool)

(declare-fun e!704615 () Bool)

(assert (=> b!1242870 (= e!704614 e!704615)))

(declare-fun res!828836 () Bool)

(assert (=> b!1242870 (=> (not res!828836) (not e!704615))))

(assert (=> b!1242870 (= res!828836 (and (or (not ((_ is Cons!27534) lt!562227)) (bvsle (_1!10233 (h!28743 lt!562227)) key2!15)) ((_ is Cons!27534) lt!562227) (bvslt (_1!10233 (h!28743 lt!562227)) key2!15)))))

(declare-fun b!1242871 () Bool)

(assert (=> b!1242871 (= e!704615 (containsKey!614 (t!41011 lt!562227) key2!15))))

(assert (= (and d!136845 (not res!828835)) b!1242870))

(assert (= (and b!1242870 res!828836) b!1242871))

(declare-fun m!1145531 () Bool)

(assert (=> b!1242871 m!1145531))

(assert (=> b!1242771 d!136845))

(declare-fun d!136847 () Bool)

(assert (=> d!136847 (= ($colon$colon!631 e!704556 (ite c!121688 (h!28743 l!644) (tuple2!20447 key1!25 v1!20))) (Cons!27534 (ite c!121688 (h!28743 l!644) (tuple2!20447 key1!25 v1!20)) e!704556))))

(assert (=> bm!61376 d!136847))

(declare-fun d!136849 () Bool)

(declare-fun res!828837 () Bool)

(declare-fun e!704616 () Bool)

(assert (=> d!136849 (=> res!828837 e!704616)))

(assert (=> d!136849 (= res!828837 (or ((_ is Nil!27535) lt!562227) ((_ is Nil!27535) (t!41011 lt!562227))))))

(assert (=> d!136849 (= (isStrictlySorted!763 lt!562227) e!704616)))

(declare-fun b!1242872 () Bool)

(declare-fun e!704617 () Bool)

(assert (=> b!1242872 (= e!704616 e!704617)))

(declare-fun res!828838 () Bool)

(assert (=> b!1242872 (=> (not res!828838) (not e!704617))))

(assert (=> b!1242872 (= res!828838 (bvslt (_1!10233 (h!28743 lt!562227)) (_1!10233 (h!28743 (t!41011 lt!562227)))))))

(declare-fun b!1242873 () Bool)

(assert (=> b!1242873 (= e!704617 (isStrictlySorted!763 (t!41011 lt!562227)))))

(assert (= (and d!136849 (not res!828837)) b!1242872))

(assert (= (and b!1242872 res!828838) b!1242873))

(declare-fun m!1145533 () Bool)

(assert (=> b!1242873 m!1145533))

(assert (=> d!136817 d!136849))

(declare-fun d!136851 () Bool)

(declare-fun res!828839 () Bool)

(declare-fun e!704618 () Bool)

(assert (=> d!136851 (=> res!828839 e!704618)))

(assert (=> d!136851 (= res!828839 (or ((_ is Nil!27535) (insertStrictlySorted!441 l!644 key1!25 v1!20)) ((_ is Nil!27535) (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20)))))))

(assert (=> d!136851 (= (isStrictlySorted!763 (insertStrictlySorted!441 l!644 key1!25 v1!20)) e!704618)))

(declare-fun b!1242874 () Bool)

(declare-fun e!704619 () Bool)

(assert (=> b!1242874 (= e!704618 e!704619)))

(declare-fun res!828840 () Bool)

(assert (=> b!1242874 (=> (not res!828840) (not e!704619))))

(assert (=> b!1242874 (= res!828840 (bvslt (_1!10233 (h!28743 (insertStrictlySorted!441 l!644 key1!25 v1!20))) (_1!10233 (h!28743 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20))))))))

(declare-fun b!1242875 () Bool)

(assert (=> b!1242875 (= e!704619 (isStrictlySorted!763 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20))))))

(assert (= (and d!136851 (not res!828839)) b!1242874))

(assert (= (and b!1242874 res!828840) b!1242875))

(declare-fun m!1145535 () Bool)

(assert (=> b!1242875 m!1145535))

(assert (=> d!136817 d!136851))

(declare-fun d!136853 () Bool)

(declare-fun res!828841 () Bool)

(declare-fun e!704620 () Bool)

(assert (=> d!136853 (=> res!828841 e!704620)))

(assert (=> d!136853 (= res!828841 (or ((_ is Nil!27535) lt!562215) ((_ is Nil!27535) (t!41011 lt!562215))))))

(assert (=> d!136853 (= (isStrictlySorted!763 lt!562215) e!704620)))

(declare-fun b!1242876 () Bool)

(declare-fun e!704621 () Bool)

(assert (=> b!1242876 (= e!704620 e!704621)))

(declare-fun res!828842 () Bool)

(assert (=> b!1242876 (=> (not res!828842) (not e!704621))))

(assert (=> b!1242876 (= res!828842 (bvslt (_1!10233 (h!28743 lt!562215)) (_1!10233 (h!28743 (t!41011 lt!562215)))))))

(declare-fun b!1242877 () Bool)

(assert (=> b!1242877 (= e!704621 (isStrictlySorted!763 (t!41011 lt!562215)))))

(assert (= (and d!136853 (not res!828841)) b!1242876))

(assert (= (and b!1242876 res!828842) b!1242877))

(declare-fun m!1145537 () Bool)

(assert (=> b!1242877 m!1145537))

(assert (=> d!136805 d!136853))

(declare-fun d!136855 () Bool)

(declare-fun res!828843 () Bool)

(declare-fun e!704622 () Bool)

(assert (=> d!136855 (=> res!828843 e!704622)))

(assert (=> d!136855 (= res!828843 (or ((_ is Nil!27535) (removeStrictlySorted!135 l!644 key2!15)) ((_ is Nil!27535) (t!41011 (removeStrictlySorted!135 l!644 key2!15)))))))

(assert (=> d!136855 (= (isStrictlySorted!763 (removeStrictlySorted!135 l!644 key2!15)) e!704622)))

(declare-fun b!1242878 () Bool)

(declare-fun e!704623 () Bool)

(assert (=> b!1242878 (= e!704622 e!704623)))

(declare-fun res!828844 () Bool)

(assert (=> b!1242878 (=> (not res!828844) (not e!704623))))

(assert (=> b!1242878 (= res!828844 (bvslt (_1!10233 (h!28743 (removeStrictlySorted!135 l!644 key2!15))) (_1!10233 (h!28743 (t!41011 (removeStrictlySorted!135 l!644 key2!15))))))))

(declare-fun b!1242879 () Bool)

(assert (=> b!1242879 (= e!704623 (isStrictlySorted!763 (t!41011 (removeStrictlySorted!135 l!644 key2!15))))))

(assert (= (and d!136855 (not res!828843)) b!1242878))

(assert (= (and b!1242878 res!828844) b!1242879))

(assert (=> b!1242879 m!1145525))

(assert (=> d!136805 d!136855))

(declare-fun d!136857 () Bool)

(declare-fun res!828845 () Bool)

(declare-fun e!704624 () Bool)

(assert (=> d!136857 (=> res!828845 e!704624)))

(assert (=> d!136857 (= res!828845 (and ((_ is Cons!27534) lt!562224) (= (_1!10233 (h!28743 lt!562224)) key2!15)))))

(assert (=> d!136857 (= (containsKey!614 lt!562224 key2!15) e!704624)))

(declare-fun b!1242880 () Bool)

(declare-fun e!704625 () Bool)

(assert (=> b!1242880 (= e!704624 e!704625)))

(declare-fun res!828846 () Bool)

(assert (=> b!1242880 (=> (not res!828846) (not e!704625))))

(assert (=> b!1242880 (= res!828846 (and (or (not ((_ is Cons!27534) lt!562224)) (bvsle (_1!10233 (h!28743 lt!562224)) key2!15)) ((_ is Cons!27534) lt!562224) (bvslt (_1!10233 (h!28743 lt!562224)) key2!15)))))

(declare-fun b!1242881 () Bool)

(assert (=> b!1242881 (= e!704625 (containsKey!614 (t!41011 lt!562224) key2!15))))

(assert (= (and d!136857 (not res!828845)) b!1242880))

(assert (= (and b!1242880 res!828846) b!1242881))

(declare-fun m!1145539 () Bool)

(assert (=> b!1242881 m!1145539))

(assert (=> b!1242754 d!136857))

(declare-fun d!136859 () Bool)

(declare-fun res!828847 () Bool)

(declare-fun e!704626 () Bool)

(assert (=> d!136859 (=> res!828847 e!704626)))

(assert (=> d!136859 (= res!828847 (or ((_ is Nil!27535) (t!41011 l!644)) ((_ is Nil!27535) (t!41011 (t!41011 l!644)))))))

(assert (=> d!136859 (= (isStrictlySorted!763 (t!41011 l!644)) e!704626)))

(declare-fun b!1242882 () Bool)

(declare-fun e!704627 () Bool)

(assert (=> b!1242882 (= e!704626 e!704627)))

(declare-fun res!828848 () Bool)

(assert (=> b!1242882 (=> (not res!828848) (not e!704627))))

(assert (=> b!1242882 (= res!828848 (bvslt (_1!10233 (h!28743 (t!41011 l!644))) (_1!10233 (h!28743 (t!41011 (t!41011 l!644))))))))

(declare-fun b!1242883 () Bool)

(assert (=> b!1242883 (= e!704627 (isStrictlySorted!763 (t!41011 (t!41011 l!644))))))

(assert (= (and d!136859 (not res!828847)) b!1242882))

(assert (= (and b!1242882 res!828848) b!1242883))

(declare-fun m!1145541 () Bool)

(assert (=> b!1242883 m!1145541))

(assert (=> b!1242821 d!136859))

(declare-fun d!136861 () Bool)

(declare-fun res!828849 () Bool)

(declare-fun e!704628 () Bool)

(assert (=> d!136861 (=> res!828849 e!704628)))

(assert (=> d!136861 (= res!828849 (or ((_ is Nil!27535) lt!562230) ((_ is Nil!27535) (t!41011 lt!562230))))))

(assert (=> d!136861 (= (isStrictlySorted!763 lt!562230) e!704628)))

(declare-fun b!1242884 () Bool)

(declare-fun e!704629 () Bool)

(assert (=> b!1242884 (= e!704628 e!704629)))

(declare-fun res!828850 () Bool)

(assert (=> b!1242884 (=> (not res!828850) (not e!704629))))

(assert (=> b!1242884 (= res!828850 (bvslt (_1!10233 (h!28743 lt!562230)) (_1!10233 (h!28743 (t!41011 lt!562230)))))))

(declare-fun b!1242885 () Bool)

(assert (=> b!1242885 (= e!704629 (isStrictlySorted!763 (t!41011 lt!562230)))))

(assert (= (and d!136861 (not res!828849)) b!1242884))

(assert (= (and b!1242884 res!828850) b!1242885))

(declare-fun m!1145543 () Bool)

(assert (=> b!1242885 m!1145543))

(assert (=> d!136823 d!136861))

(assert (=> d!136823 d!136827))

(declare-fun b!1242886 () Bool)

(declare-fun e!704632 () List!27538)

(assert (=> b!1242886 (= e!704632 (insertStrictlySorted!441 (t!41011 (t!41011 l!644)) key1!25 v1!20))))

(declare-fun d!136863 () Bool)

(declare-fun e!704633 () Bool)

(assert (=> d!136863 e!704633))

(declare-fun res!828851 () Bool)

(assert (=> d!136863 (=> (not res!828851) (not e!704633))))

(declare-fun lt!562237 () List!27538)

(assert (=> d!136863 (= res!828851 (isStrictlySorted!763 lt!562237))))

(declare-fun e!704631 () List!27538)

(assert (=> d!136863 (= lt!562237 e!704631)))

(declare-fun c!121706 () Bool)

(assert (=> d!136863 (= c!121706 (and ((_ is Cons!27534) (t!41011 l!644)) (bvslt (_1!10233 (h!28743 (t!41011 l!644))) key1!25)))))

(assert (=> d!136863 (isStrictlySorted!763 (t!41011 l!644))))

(assert (=> d!136863 (= (insertStrictlySorted!441 (t!41011 l!644) key1!25 v1!20) lt!562237)))

(declare-fun b!1242887 () Bool)

(declare-fun c!121709 () Bool)

(assert (=> b!1242887 (= c!121709 (and ((_ is Cons!27534) (t!41011 l!644)) (bvsgt (_1!10233 (h!28743 (t!41011 l!644))) key1!25)))))

(declare-fun e!704630 () List!27538)

(declare-fun e!704634 () List!27538)

(assert (=> b!1242887 (= e!704630 e!704634)))

(declare-fun bm!61387 () Bool)

(declare-fun call!61391 () List!27538)

(assert (=> bm!61387 (= call!61391 ($colon$colon!631 e!704632 (ite c!121706 (h!28743 (t!41011 l!644)) (tuple2!20447 key1!25 v1!20))))))

(declare-fun c!121708 () Bool)

(assert (=> bm!61387 (= c!121708 c!121706)))

(declare-fun b!1242888 () Bool)

(declare-fun call!61390 () List!27538)

(assert (=> b!1242888 (= e!704634 call!61390)))

(declare-fun bm!61388 () Bool)

(declare-fun call!61392 () List!27538)

(assert (=> bm!61388 (= call!61390 call!61392)))

(declare-fun b!1242889 () Bool)

(declare-fun res!828852 () Bool)

(assert (=> b!1242889 (=> (not res!828852) (not e!704633))))

(assert (=> b!1242889 (= res!828852 (containsKey!614 lt!562237 key1!25))))

(declare-fun bm!61389 () Bool)

(assert (=> bm!61389 (= call!61392 call!61391)))

(declare-fun b!1242890 () Bool)

(declare-fun c!121707 () Bool)

(assert (=> b!1242890 (= e!704632 (ite c!121707 (t!41011 (t!41011 l!644)) (ite c!121709 (Cons!27534 (h!28743 (t!41011 l!644)) (t!41011 (t!41011 l!644))) Nil!27535)))))

(declare-fun b!1242891 () Bool)

(assert (=> b!1242891 (= e!704631 e!704630)))

(assert (=> b!1242891 (= c!121707 (and ((_ is Cons!27534) (t!41011 l!644)) (= (_1!10233 (h!28743 (t!41011 l!644))) key1!25)))))

(declare-fun b!1242892 () Bool)

(assert (=> b!1242892 (= e!704630 call!61392)))

(declare-fun b!1242893 () Bool)

(assert (=> b!1242893 (= e!704631 call!61391)))

(declare-fun b!1242894 () Bool)

(assert (=> b!1242894 (= e!704633 (contains!7413 lt!562237 (tuple2!20447 key1!25 v1!20)))))

(declare-fun b!1242895 () Bool)

(assert (=> b!1242895 (= e!704634 call!61390)))

(assert (= (and d!136863 c!121706) b!1242893))

(assert (= (and d!136863 (not c!121706)) b!1242891))

(assert (= (and b!1242891 c!121707) b!1242892))

(assert (= (and b!1242891 (not c!121707)) b!1242887))

(assert (= (and b!1242887 c!121709) b!1242895))

(assert (= (and b!1242887 (not c!121709)) b!1242888))

(assert (= (or b!1242895 b!1242888) bm!61388))

(assert (= (or b!1242892 bm!61388) bm!61389))

(assert (= (or b!1242893 bm!61389) bm!61387))

(assert (= (and bm!61387 c!121708) b!1242886))

(assert (= (and bm!61387 (not c!121708)) b!1242890))

(assert (= (and d!136863 res!828851) b!1242889))

(assert (= (and b!1242889 res!828852) b!1242894))

(declare-fun m!1145545 () Bool)

(assert (=> b!1242894 m!1145545))

(declare-fun m!1145547 () Bool)

(assert (=> b!1242886 m!1145547))

(declare-fun m!1145549 () Bool)

(assert (=> d!136863 m!1145549))

(assert (=> d!136863 m!1145495))

(declare-fun m!1145551 () Bool)

(assert (=> b!1242889 m!1145551))

(declare-fun m!1145553 () Bool)

(assert (=> bm!61387 m!1145553))

(assert (=> b!1242779 d!136863))

(declare-fun d!136865 () Bool)

(assert (=> d!136865 (= ($colon$colon!631 (removeStrictlySorted!135 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20)) key2!15) (h!28743 (insertStrictlySorted!441 l!644 key1!25 v1!20))) (Cons!27534 (h!28743 (insertStrictlySorted!441 l!644 key1!25 v1!20)) (removeStrictlySorted!135 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20)) key2!15)))))

(assert (=> b!1242765 d!136865))

(declare-fun e!704636 () List!27538)

(declare-fun b!1242896 () Bool)

(assert (=> b!1242896 (= e!704636 (t!41011 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20))))))

(declare-fun b!1242898 () Bool)

(declare-fun e!704637 () List!27538)

(assert (=> b!1242898 (= e!704637 Nil!27535)))

(declare-fun b!1242899 () Bool)

(assert (=> b!1242899 (= e!704636 e!704637)))

(declare-fun c!121710 () Bool)

(assert (=> b!1242899 (= c!121710 (and ((_ is Cons!27534) (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20))) (not (= (_1!10233 (h!28743 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20)))) key2!15))))))

(declare-fun b!1242900 () Bool)

(declare-fun e!704635 () Bool)

(declare-fun lt!562238 () List!27538)

(assert (=> b!1242900 (= e!704635 (not (containsKey!614 lt!562238 key2!15)))))

(declare-fun b!1242897 () Bool)

(assert (=> b!1242897 (= e!704637 ($colon$colon!631 (removeStrictlySorted!135 (t!41011 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20))) key2!15) (h!28743 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20)))))))

(declare-fun d!136867 () Bool)

(assert (=> d!136867 e!704635))

(declare-fun res!828853 () Bool)

(assert (=> d!136867 (=> (not res!828853) (not e!704635))))

(assert (=> d!136867 (= res!828853 (isStrictlySorted!763 lt!562238))))

(assert (=> d!136867 (= lt!562238 e!704636)))

(declare-fun c!121711 () Bool)

(assert (=> d!136867 (= c!121711 (and ((_ is Cons!27534) (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20))) (= (_1!10233 (h!28743 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20)))) key2!15)))))

(assert (=> d!136867 (isStrictlySorted!763 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20)))))

(assert (=> d!136867 (= (removeStrictlySorted!135 (t!41011 (insertStrictlySorted!441 l!644 key1!25 v1!20)) key2!15) lt!562238)))

(assert (= (and d!136867 c!121711) b!1242896))

(assert (= (and d!136867 (not c!121711)) b!1242899))

(assert (= (and b!1242899 c!121710) b!1242897))

(assert (= (and b!1242899 (not c!121710)) b!1242898))

(assert (= (and d!136867 res!828853) b!1242900))

(declare-fun m!1145555 () Bool)

(assert (=> b!1242900 m!1145555))

(declare-fun m!1145557 () Bool)

(assert (=> b!1242897 m!1145557))

(assert (=> b!1242897 m!1145557))

(declare-fun m!1145559 () Bool)

(assert (=> b!1242897 m!1145559))

(declare-fun m!1145561 () Bool)

(assert (=> d!136867 m!1145561))

(assert (=> d!136867 m!1145535))

(assert (=> b!1242765 d!136867))

(declare-fun lt!562239 () Bool)

(declare-fun d!136869 () Bool)

(assert (=> d!136869 (= lt!562239 (select (content!611 lt!562230) (tuple2!20447 key1!25 v1!20)))))

(declare-fun e!704638 () Bool)

(assert (=> d!136869 (= lt!562239 e!704638)))

(declare-fun res!828854 () Bool)

(assert (=> d!136869 (=> (not res!828854) (not e!704638))))

(assert (=> d!136869 (= res!828854 ((_ is Cons!27534) lt!562230))))

(assert (=> d!136869 (= (contains!7413 lt!562230 (tuple2!20447 key1!25 v1!20)) lt!562239)))

(declare-fun b!1242901 () Bool)

(declare-fun e!704639 () Bool)

(assert (=> b!1242901 (= e!704638 e!704639)))

(declare-fun res!828855 () Bool)

(assert (=> b!1242901 (=> res!828855 e!704639)))

(assert (=> b!1242901 (= res!828855 (= (h!28743 lt!562230) (tuple2!20447 key1!25 v1!20)))))

(declare-fun b!1242902 () Bool)

(assert (=> b!1242902 (= e!704639 (contains!7413 (t!41011 lt!562230) (tuple2!20447 key1!25 v1!20)))))

(assert (= (and d!136869 res!828854) b!1242901))

(assert (= (and b!1242901 (not res!828855)) b!1242902))

(declare-fun m!1145563 () Bool)

(assert (=> d!136869 m!1145563))

(declare-fun m!1145565 () Bool)

(assert (=> d!136869 m!1145565))

(declare-fun m!1145567 () Bool)

(assert (=> b!1242902 m!1145567))

(assert (=> b!1242795 d!136869))

(declare-fun d!136871 () Bool)

(declare-fun res!828856 () Bool)

(declare-fun e!704640 () Bool)

(assert (=> d!136871 (=> res!828856 e!704640)))

(assert (=> d!136871 (= res!828856 (and ((_ is Cons!27534) lt!562230) (= (_1!10233 (h!28743 lt!562230)) key1!25)))))

(assert (=> d!136871 (= (containsKey!614 lt!562230 key1!25) e!704640)))

(declare-fun b!1242903 () Bool)

(declare-fun e!704641 () Bool)

(assert (=> b!1242903 (= e!704640 e!704641)))

(declare-fun res!828857 () Bool)

(assert (=> b!1242903 (=> (not res!828857) (not e!704641))))

(assert (=> b!1242903 (= res!828857 (and (or (not ((_ is Cons!27534) lt!562230)) (bvsle (_1!10233 (h!28743 lt!562230)) key1!25)) ((_ is Cons!27534) lt!562230) (bvslt (_1!10233 (h!28743 lt!562230)) key1!25)))))

(declare-fun b!1242904 () Bool)

(assert (=> b!1242904 (= e!704641 (containsKey!614 (t!41011 lt!562230) key1!25))))

(assert (= (and d!136871 (not res!828856)) b!1242903))

(assert (= (and b!1242903 res!828857) b!1242904))

(declare-fun m!1145569 () Bool)

(assert (=> b!1242904 m!1145569))

(assert (=> b!1242786 d!136871))

(declare-fun d!136875 () Bool)

(assert (=> d!136875 (= ($colon$colon!631 e!704505 (ite c!121652 (h!28743 (removeStrictlySorted!135 l!644 key2!15)) (tuple2!20447 key1!25 v1!20))) (Cons!27534 (ite c!121652 (h!28743 (removeStrictlySorted!135 l!644 key2!15)) (tuple2!20447 key1!25 v1!20)) e!704505))))

(assert (=> bm!61367 d!136875))

(declare-fun b!1242905 () Bool)

(declare-fun e!704642 () Bool)

(declare-fun tp!92782 () Bool)

(assert (=> b!1242905 (= e!704642 (and tp_is_empty!31293 tp!92782))))

(assert (=> b!1242839 (= tp!92780 e!704642)))

(assert (= (and b!1242839 ((_ is Cons!27534) (t!41011 (t!41011 l!644)))) b!1242905))

(check-sat (not b!1242902) (not b!1242868) (not d!136835) (not b!1242842) (not b!1242905) (not b!1242885) (not b!1242883) (not bm!61387) (not b!1242881) (not b!1242848) (not d!136843) (not b!1242904) (not b!1242875) (not b!1242900) (not b!1242873) (not b!1242860) (not b!1242853) (not b!1242886) (not b!1242859) (not b!1242863) (not b!1242889) (not d!136839) (not b!1242850) (not b!1242871) (not d!136869) (not b!1242879) (not b!1242894) (not b!1242897) (not d!136867) (not d!136863) (not bm!61384) tp_is_empty!31293 (not b!1242877))
(check-sat)
