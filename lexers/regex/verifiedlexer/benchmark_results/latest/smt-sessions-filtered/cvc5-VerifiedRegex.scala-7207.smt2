; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!384282 () Bool)

(assert start!384282)

(declare-fun b!4071609 () Bool)

(declare-fun e!2526924 () Bool)

(declare-fun tp_is_empty!20783 () Bool)

(declare-fun tp!1232007 () Bool)

(assert (=> b!4071609 (= e!2526924 (and tp_is_empty!20783 tp!1232007))))

(declare-fun b!4071610 () Bool)

(declare-fun res!1662623 () Bool)

(declare-fun e!2526922 () Bool)

(assert (=> b!4071610 (=> (not res!1662623) (not e!2526922))))

(declare-datatypes ((B!2615 0))(
  ( (B!2616 (val!14093 Int)) )
))
(declare-datatypes ((List!43616 0))(
  ( (Nil!43492) (Cons!43492 (h!48912 B!2615) (t!337063 List!43616)) )
))
(declare-fun p!1991 () List!43616)

(assert (=> b!4071610 (= res!1662623 (not (is-Cons!43492 p!1991)))))

(declare-fun suffix!260 () List!43616)

(declare-fun b!4071611 () Bool)

(declare-fun l!3332 () List!43616)

(declare-fun isPrefix!4088 (List!43616 List!43616) Bool)

(declare-fun ++!11393 (List!43616 List!43616) List!43616)

(assert (=> b!4071611 (= e!2526922 (not (isPrefix!4088 p!1991 (++!11393 l!3332 suffix!260))))))

(declare-fun b!4071612 () Bool)

(declare-fun e!2526923 () Bool)

(declare-fun tp!1232009 () Bool)

(assert (=> b!4071612 (= e!2526923 (and tp_is_empty!20783 tp!1232009))))

(declare-fun res!1662624 () Bool)

(assert (=> start!384282 (=> (not res!1662624) (not e!2526922))))

(assert (=> start!384282 (= res!1662624 (isPrefix!4088 p!1991 l!3332))))

(assert (=> start!384282 e!2526922))

(declare-fun e!2526921 () Bool)

(assert (=> start!384282 e!2526921))

(assert (=> start!384282 e!2526924))

(assert (=> start!384282 e!2526923))

(declare-fun b!4071613 () Bool)

(declare-fun tp!1232008 () Bool)

(assert (=> b!4071613 (= e!2526921 (and tp_is_empty!20783 tp!1232008))))

(assert (= (and start!384282 res!1662624) b!4071610))

(assert (= (and b!4071610 res!1662623) b!4071611))

(assert (= (and start!384282 (is-Cons!43492 p!1991)) b!4071613))

(assert (= (and start!384282 (is-Cons!43492 l!3332)) b!4071609))

(assert (= (and start!384282 (is-Cons!43492 suffix!260)) b!4071612))

(declare-fun m!4680941 () Bool)

(assert (=> b!4071611 m!4680941))

(assert (=> b!4071611 m!4680941))

(declare-fun m!4680943 () Bool)

(assert (=> b!4071611 m!4680943))

(declare-fun m!4680945 () Bool)

(assert (=> start!384282 m!4680945))

(push 1)

(assert (not b!4071612))

(assert (not b!4071609))

(assert (not b!4071611))

(assert tp_is_empty!20783)

(assert (not start!384282))

(assert (not b!4071613))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4071640 () Bool)

(declare-fun e!2526943 () Bool)

(declare-fun size!32517 (List!43616) Int)

(assert (=> b!4071640 (= e!2526943 (>= (size!32517 l!3332) (size!32517 p!1991)))))

(declare-fun d!1210356 () Bool)

(assert (=> d!1210356 e!2526943))

(declare-fun res!1662642 () Bool)

(assert (=> d!1210356 (=> res!1662642 e!2526943)))

(declare-fun lt!1457548 () Bool)

(assert (=> d!1210356 (= res!1662642 (not lt!1457548))))

(declare-fun e!2526945 () Bool)

(assert (=> d!1210356 (= lt!1457548 e!2526945)))

(declare-fun res!1662641 () Bool)

(assert (=> d!1210356 (=> res!1662641 e!2526945)))

(assert (=> d!1210356 (= res!1662641 (is-Nil!43492 p!1991))))

(assert (=> d!1210356 (= (isPrefix!4088 p!1991 l!3332) lt!1457548)))

(declare-fun b!4071638 () Bool)

(declare-fun res!1662639 () Bool)

(declare-fun e!2526944 () Bool)

(assert (=> b!4071638 (=> (not res!1662639) (not e!2526944))))

(declare-fun head!8600 (List!43616) B!2615)

(assert (=> b!4071638 (= res!1662639 (= (head!8600 p!1991) (head!8600 l!3332)))))

(declare-fun b!4071639 () Bool)

(declare-fun tail!6334 (List!43616) List!43616)

(assert (=> b!4071639 (= e!2526944 (isPrefix!4088 (tail!6334 p!1991) (tail!6334 l!3332)))))

(declare-fun b!4071637 () Bool)

(assert (=> b!4071637 (= e!2526945 e!2526944)))

(declare-fun res!1662640 () Bool)

(assert (=> b!4071637 (=> (not res!1662640) (not e!2526944))))

(assert (=> b!4071637 (= res!1662640 (not (is-Nil!43492 l!3332)))))

(assert (= (and d!1210356 (not res!1662641)) b!4071637))

(assert (= (and b!4071637 res!1662640) b!4071638))

(assert (= (and b!4071638 res!1662639) b!4071639))

(assert (= (and d!1210356 (not res!1662642)) b!4071640))

(declare-fun m!4680953 () Bool)

(assert (=> b!4071640 m!4680953))

(declare-fun m!4680955 () Bool)

(assert (=> b!4071640 m!4680955))

(declare-fun m!4680957 () Bool)

(assert (=> b!4071638 m!4680957))

(declare-fun m!4680959 () Bool)

(assert (=> b!4071638 m!4680959))

(declare-fun m!4680961 () Bool)

(assert (=> b!4071639 m!4680961))

(declare-fun m!4680963 () Bool)

(assert (=> b!4071639 m!4680963))

(assert (=> b!4071639 m!4680961))

(assert (=> b!4071639 m!4680963))

(declare-fun m!4680965 () Bool)

(assert (=> b!4071639 m!4680965))

(assert (=> start!384282 d!1210356))

(declare-fun b!4071644 () Bool)

(declare-fun e!2526946 () Bool)

(assert (=> b!4071644 (= e!2526946 (>= (size!32517 (++!11393 l!3332 suffix!260)) (size!32517 p!1991)))))

(declare-fun d!1210360 () Bool)

(assert (=> d!1210360 e!2526946))

(declare-fun res!1662646 () Bool)

(assert (=> d!1210360 (=> res!1662646 e!2526946)))

(declare-fun lt!1457549 () Bool)

(assert (=> d!1210360 (= res!1662646 (not lt!1457549))))

(declare-fun e!2526948 () Bool)

(assert (=> d!1210360 (= lt!1457549 e!2526948)))

(declare-fun res!1662645 () Bool)

(assert (=> d!1210360 (=> res!1662645 e!2526948)))

(assert (=> d!1210360 (= res!1662645 (is-Nil!43492 p!1991))))

(assert (=> d!1210360 (= (isPrefix!4088 p!1991 (++!11393 l!3332 suffix!260)) lt!1457549)))

(declare-fun b!4071642 () Bool)

(declare-fun res!1662643 () Bool)

(declare-fun e!2526947 () Bool)

(assert (=> b!4071642 (=> (not res!1662643) (not e!2526947))))

(assert (=> b!4071642 (= res!1662643 (= (head!8600 p!1991) (head!8600 (++!11393 l!3332 suffix!260))))))

(declare-fun b!4071643 () Bool)

(assert (=> b!4071643 (= e!2526947 (isPrefix!4088 (tail!6334 p!1991) (tail!6334 (++!11393 l!3332 suffix!260))))))

(declare-fun b!4071641 () Bool)

(assert (=> b!4071641 (= e!2526948 e!2526947)))

(declare-fun res!1662644 () Bool)

(assert (=> b!4071641 (=> (not res!1662644) (not e!2526947))))

(assert (=> b!4071641 (= res!1662644 (not (is-Nil!43492 (++!11393 l!3332 suffix!260))))))

(assert (= (and d!1210360 (not res!1662645)) b!4071641))

(assert (= (and b!4071641 res!1662644) b!4071642))

(assert (= (and b!4071642 res!1662643) b!4071643))

(assert (= (and d!1210360 (not res!1662646)) b!4071644))

(assert (=> b!4071644 m!4680941))

(declare-fun m!4680967 () Bool)

(assert (=> b!4071644 m!4680967))

(assert (=> b!4071644 m!4680955))

(assert (=> b!4071642 m!4680957))

(assert (=> b!4071642 m!4680941))

(declare-fun m!4680969 () Bool)

(assert (=> b!4071642 m!4680969))

(assert (=> b!4071643 m!4680961))

(assert (=> b!4071643 m!4680941))

(declare-fun m!4680971 () Bool)

(assert (=> b!4071643 m!4680971))

(assert (=> b!4071643 m!4680961))

(assert (=> b!4071643 m!4680971))

(declare-fun m!4680973 () Bool)

(assert (=> b!4071643 m!4680973))

(assert (=> b!4071611 d!1210360))

(declare-fun lt!1457554 () List!43616)

(declare-fun e!2526960 () Bool)

(declare-fun b!4071664 () Bool)

(assert (=> b!4071664 (= e!2526960 (or (not (= suffix!260 Nil!43492)) (= lt!1457554 l!3332)))))

(declare-fun b!4071661 () Bool)

(declare-fun e!2526959 () List!43616)

(assert (=> b!4071661 (= e!2526959 suffix!260)))

(declare-fun d!1210362 () Bool)

(assert (=> d!1210362 e!2526960))

(declare-fun res!1662659 () Bool)

(assert (=> d!1210362 (=> (not res!1662659) (not e!2526960))))

(declare-fun content!6650 (List!43616) (Set B!2615))

(assert (=> d!1210362 (= res!1662659 (= (content!6650 lt!1457554) (set.union (content!6650 l!3332) (content!6650 suffix!260))))))

(assert (=> d!1210362 (= lt!1457554 e!2526959)))

(declare-fun c!702766 () Bool)

(assert (=> d!1210362 (= c!702766 (is-Nil!43492 l!3332))))

(assert (=> d!1210362 (= (++!11393 l!3332 suffix!260) lt!1457554)))

(declare-fun b!4071663 () Bool)

(declare-fun res!1662660 () Bool)

(assert (=> b!4071663 (=> (not res!1662660) (not e!2526960))))

(assert (=> b!4071663 (= res!1662660 (= (size!32517 lt!1457554) (+ (size!32517 l!3332) (size!32517 suffix!260))))))

(declare-fun b!4071662 () Bool)

(assert (=> b!4071662 (= e!2526959 (Cons!43492 (h!48912 l!3332) (++!11393 (t!337063 l!3332) suffix!260)))))

(assert (= (and d!1210362 c!702766) b!4071661))

(assert (= (and d!1210362 (not c!702766)) b!4071662))

(assert (= (and d!1210362 res!1662659) b!4071663))

(assert (= (and b!4071663 res!1662660) b!4071664))

(declare-fun m!4680975 () Bool)

(assert (=> d!1210362 m!4680975))

(declare-fun m!4680977 () Bool)

(assert (=> d!1210362 m!4680977))

(declare-fun m!4680979 () Bool)

(assert (=> d!1210362 m!4680979))

(declare-fun m!4680981 () Bool)

(assert (=> b!4071663 m!4680981))

(assert (=> b!4071663 m!4680953))

(declare-fun m!4680983 () Bool)

(assert (=> b!4071663 m!4680983))

(declare-fun m!4680985 () Bool)

(assert (=> b!4071662 m!4680985))

(assert (=> b!4071611 d!1210362))

(declare-fun b!4071669 () Bool)

(declare-fun e!2526963 () Bool)

(declare-fun tp!1232021 () Bool)

(assert (=> b!4071669 (= e!2526963 (and tp_is_empty!20783 tp!1232021))))

(assert (=> b!4071613 (= tp!1232008 e!2526963)))

(assert (= (and b!4071613 (is-Cons!43492 (t!337063 p!1991))) b!4071669))

(declare-fun b!4071670 () Bool)

(declare-fun e!2526964 () Bool)

(declare-fun tp!1232022 () Bool)

(assert (=> b!4071670 (= e!2526964 (and tp_is_empty!20783 tp!1232022))))

(assert (=> b!4071612 (= tp!1232009 e!2526964)))

(assert (= (and b!4071612 (is-Cons!43492 (t!337063 suffix!260))) b!4071670))

(declare-fun b!4071671 () Bool)

(declare-fun e!2526965 () Bool)

(declare-fun tp!1232023 () Bool)

(assert (=> b!4071671 (= e!2526965 (and tp_is_empty!20783 tp!1232023))))

(assert (=> b!4071609 (= tp!1232007 e!2526965)))

(assert (= (and b!4071609 (is-Cons!43492 (t!337063 l!3332))) b!4071671))

(push 1)

(assert (not b!4071662))

(assert (not b!4071639))

(assert (not b!4071642))

(assert tp_is_empty!20783)

(assert (not b!4071638))

(assert (not b!4071640))

(assert (not d!1210362))

(assert (not b!4071669))

(assert (not b!4071663))

(assert (not b!4071643))

(assert (not b!4071644))

(assert (not b!4071671))

(assert (not b!4071670))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

