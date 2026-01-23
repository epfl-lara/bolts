; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405202 () Bool)

(assert start!405202)

(declare-fun b!4234678 () Bool)

(declare-fun e!2629369 () Bool)

(declare-fun e!2629367 () Bool)

(assert (=> b!4234678 (= e!2629369 e!2629367)))

(declare-fun res!1741725 () Bool)

(assert (=> b!4234678 (=> (not res!1741725) (not e!2629367))))

(declare-datatypes ((B!2777 0))(
  ( (B!2778 (val!15090 Int)) )
))
(declare-datatypes ((List!46887 0))(
  ( (Nil!46763) (Cons!46763 (h!52183 B!2777) (t!349590 List!46887)) )
))
(declare-fun lt!1505624 () List!46887)

(declare-fun e1!42 () B!2777)

(declare-fun contains!9707 (List!46887 B!2777) Bool)

(assert (=> b!4234678 (= res!1741725 (contains!9707 lt!1505624 e1!42))))

(declare-fun l!3106 () List!46887)

(declare-fun tail!6832 (List!46887) List!46887)

(assert (=> b!4234678 (= lt!1505624 (tail!6832 l!3106))))

(declare-fun b!4234679 () Bool)

(declare-fun e!2629368 () Bool)

(declare-fun tp_is_empty!22593 () Bool)

(declare-fun tp!1296640 () Bool)

(assert (=> b!4234679 (= e!2629368 (and tp_is_empty!22593 tp!1296640))))

(declare-fun b!4234680 () Bool)

(declare-fun res!1741728 () Bool)

(assert (=> b!4234680 (=> (not res!1741728) (not e!2629367))))

(declare-fun e2!42 () B!2777)

(declare-fun getIndex!906 (List!46887 B!2777) Int)

(assert (=> b!4234680 (= res!1741728 (= (getIndex!906 lt!1505624 e1!42) (getIndex!906 lt!1505624 e2!42)))))

(declare-fun b!4234681 () Bool)

(declare-fun e!2629370 () Bool)

(assert (=> b!4234681 (= e!2629370 e!2629369)))

(declare-fun res!1741727 () Bool)

(assert (=> b!4234681 (=> (not res!1741727) (not e!2629369))))

(declare-fun lt!1505623 () Int)

(assert (=> b!4234681 (= res!1741727 (= lt!1505623 (getIndex!906 l!3106 e2!42)))))

(assert (=> b!4234681 (= lt!1505623 (getIndex!906 l!3106 e1!42))))

(declare-fun res!1741730 () Bool)

(assert (=> start!405202 (=> (not res!1741730) (not e!2629370))))

(assert (=> start!405202 (= res!1741730 (contains!9707 l!3106 e1!42))))

(assert (=> start!405202 e!2629370))

(assert (=> start!405202 e!2629368))

(assert (=> start!405202 tp_is_empty!22593))

(declare-fun b!4234677 () Bool)

(declare-fun res!1741726 () Bool)

(assert (=> b!4234677 (=> (not res!1741726) (not e!2629370))))

(assert (=> b!4234677 (= res!1741726 (contains!9707 l!3106 e2!42))))

(declare-fun b!4234682 () Bool)

(declare-fun ListPrimitiveSize!313 (List!46887) Int)

(assert (=> b!4234682 (= e!2629367 (>= (ListPrimitiveSize!313 lt!1505624) (ListPrimitiveSize!313 l!3106)))))

(declare-fun b!4234683 () Bool)

(declare-fun res!1741729 () Bool)

(assert (=> b!4234683 (=> (not res!1741729) (not e!2629367))))

(assert (=> b!4234683 (= res!1741729 (contains!9707 lt!1505624 e2!42))))

(declare-fun b!4234684 () Bool)

(declare-fun res!1741724 () Bool)

(assert (=> b!4234684 (=> (not res!1741724) (not e!2629369))))

(assert (=> b!4234684 (= res!1741724 (not (= lt!1505623 0)))))

(assert (= (and start!405202 res!1741730) b!4234677))

(assert (= (and b!4234677 res!1741726) b!4234681))

(assert (= (and b!4234681 res!1741727) b!4234684))

(assert (= (and b!4234684 res!1741724) b!4234678))

(assert (= (and b!4234678 res!1741725) b!4234683))

(assert (= (and b!4234683 res!1741729) b!4234680))

(assert (= (and b!4234680 res!1741728) b!4234682))

(get-info :version)

(assert (= (and start!405202 ((_ is Cons!46763) l!3106)) b!4234679))

(declare-fun m!4820717 () Bool)

(assert (=> b!4234678 m!4820717))

(declare-fun m!4820719 () Bool)

(assert (=> b!4234678 m!4820719))

(declare-fun m!4820721 () Bool)

(assert (=> b!4234677 m!4820721))

(declare-fun m!4820723 () Bool)

(assert (=> b!4234682 m!4820723))

(declare-fun m!4820725 () Bool)

(assert (=> b!4234682 m!4820725))

(declare-fun m!4820727 () Bool)

(assert (=> b!4234680 m!4820727))

(declare-fun m!4820729 () Bool)

(assert (=> b!4234680 m!4820729))

(declare-fun m!4820731 () Bool)

(assert (=> start!405202 m!4820731))

(declare-fun m!4820733 () Bool)

(assert (=> b!4234683 m!4820733))

(declare-fun m!4820735 () Bool)

(assert (=> b!4234681 m!4820735))

(declare-fun m!4820737 () Bool)

(assert (=> b!4234681 m!4820737))

(check-sat (not b!4234680) tp_is_empty!22593 (not b!4234681) (not b!4234677) (not b!4234683) (not b!4234682) (not start!405202) (not b!4234679) (not b!4234678))
(check-sat)
(get-model)

(declare-fun d!1246059 () Bool)

(declare-fun lt!1505630 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7361 (List!46887) (InoxSet B!2777))

(assert (=> d!1246059 (= lt!1505630 (select (content!7361 l!3106) e2!42))))

(declare-fun e!2629381 () Bool)

(assert (=> d!1246059 (= lt!1505630 e!2629381)))

(declare-fun res!1741741 () Bool)

(assert (=> d!1246059 (=> (not res!1741741) (not e!2629381))))

(assert (=> d!1246059 (= res!1741741 ((_ is Cons!46763) l!3106))))

(assert (=> d!1246059 (= (contains!9707 l!3106 e2!42) lt!1505630)))

(declare-fun b!4234695 () Bool)

(declare-fun e!2629382 () Bool)

(assert (=> b!4234695 (= e!2629381 e!2629382)))

(declare-fun res!1741742 () Bool)

(assert (=> b!4234695 (=> res!1741742 e!2629382)))

(assert (=> b!4234695 (= res!1741742 (= (h!52183 l!3106) e2!42))))

(declare-fun b!4234696 () Bool)

(assert (=> b!4234696 (= e!2629382 (contains!9707 (t!349590 l!3106) e2!42))))

(assert (= (and d!1246059 res!1741741) b!4234695))

(assert (= (and b!4234695 (not res!1741742)) b!4234696))

(declare-fun m!4820741 () Bool)

(assert (=> d!1246059 m!4820741))

(declare-fun m!4820747 () Bool)

(assert (=> d!1246059 m!4820747))

(declare-fun m!4820749 () Bool)

(assert (=> b!4234696 m!4820749))

(assert (=> b!4234677 d!1246059))

(declare-fun d!1246065 () Bool)

(declare-fun lt!1505632 () Bool)

(assert (=> d!1246065 (= lt!1505632 (select (content!7361 lt!1505624) e1!42))))

(declare-fun e!2629385 () Bool)

(assert (=> d!1246065 (= lt!1505632 e!2629385)))

(declare-fun res!1741745 () Bool)

(assert (=> d!1246065 (=> (not res!1741745) (not e!2629385))))

(assert (=> d!1246065 (= res!1741745 ((_ is Cons!46763) lt!1505624))))

(assert (=> d!1246065 (= (contains!9707 lt!1505624 e1!42) lt!1505632)))

(declare-fun b!4234699 () Bool)

(declare-fun e!2629386 () Bool)

(assert (=> b!4234699 (= e!2629385 e!2629386)))

(declare-fun res!1741746 () Bool)

(assert (=> b!4234699 (=> res!1741746 e!2629386)))

(assert (=> b!4234699 (= res!1741746 (= (h!52183 lt!1505624) e1!42))))

(declare-fun b!4234700 () Bool)

(assert (=> b!4234700 (= e!2629386 (contains!9707 (t!349590 lt!1505624) e1!42))))

(assert (= (and d!1246065 res!1741745) b!4234699))

(assert (= (and b!4234699 (not res!1741746)) b!4234700))

(declare-fun m!4820753 () Bool)

(assert (=> d!1246065 m!4820753))

(declare-fun m!4820757 () Bool)

(assert (=> d!1246065 m!4820757))

(declare-fun m!4820761 () Bool)

(assert (=> b!4234700 m!4820761))

(assert (=> b!4234678 d!1246065))

(declare-fun d!1246069 () Bool)

(assert (=> d!1246069 (= (tail!6832 l!3106) (t!349590 l!3106))))

(assert (=> b!4234678 d!1246069))

(declare-fun d!1246073 () Bool)

(declare-fun lt!1505634 () Bool)

(assert (=> d!1246073 (= lt!1505634 (select (content!7361 lt!1505624) e2!42))))

(declare-fun e!2629389 () Bool)

(assert (=> d!1246073 (= lt!1505634 e!2629389)))

(declare-fun res!1741749 () Bool)

(assert (=> d!1246073 (=> (not res!1741749) (not e!2629389))))

(assert (=> d!1246073 (= res!1741749 ((_ is Cons!46763) lt!1505624))))

(assert (=> d!1246073 (= (contains!9707 lt!1505624 e2!42) lt!1505634)))

(declare-fun b!4234703 () Bool)

(declare-fun e!2629390 () Bool)

(assert (=> b!4234703 (= e!2629389 e!2629390)))

(declare-fun res!1741750 () Bool)

(assert (=> b!4234703 (=> res!1741750 e!2629390)))

(assert (=> b!4234703 (= res!1741750 (= (h!52183 lt!1505624) e2!42))))

(declare-fun b!4234704 () Bool)

(assert (=> b!4234704 (= e!2629390 (contains!9707 (t!349590 lt!1505624) e2!42))))

(assert (= (and d!1246073 res!1741749) b!4234703))

(assert (= (and b!4234703 (not res!1741750)) b!4234704))

(assert (=> d!1246073 m!4820753))

(declare-fun m!4820767 () Bool)

(assert (=> d!1246073 m!4820767))

(declare-fun m!4820769 () Bool)

(assert (=> b!4234704 m!4820769))

(assert (=> b!4234683 d!1246073))

(declare-fun d!1246077 () Bool)

(declare-fun lt!1505635 () Bool)

(assert (=> d!1246077 (= lt!1505635 (select (content!7361 l!3106) e1!42))))

(declare-fun e!2629391 () Bool)

(assert (=> d!1246077 (= lt!1505635 e!2629391)))

(declare-fun res!1741751 () Bool)

(assert (=> d!1246077 (=> (not res!1741751) (not e!2629391))))

(assert (=> d!1246077 (= res!1741751 ((_ is Cons!46763) l!3106))))

(assert (=> d!1246077 (= (contains!9707 l!3106 e1!42) lt!1505635)))

(declare-fun b!4234705 () Bool)

(declare-fun e!2629392 () Bool)

(assert (=> b!4234705 (= e!2629391 e!2629392)))

(declare-fun res!1741752 () Bool)

(assert (=> b!4234705 (=> res!1741752 e!2629392)))

(assert (=> b!4234705 (= res!1741752 (= (h!52183 l!3106) e1!42))))

(declare-fun b!4234706 () Bool)

(assert (=> b!4234706 (= e!2629392 (contains!9707 (t!349590 l!3106) e1!42))))

(assert (= (and d!1246077 res!1741751) b!4234705))

(assert (= (and b!4234705 (not res!1741752)) b!4234706))

(assert (=> d!1246077 m!4820741))

(declare-fun m!4820771 () Bool)

(assert (=> d!1246077 m!4820771))

(declare-fun m!4820773 () Bool)

(assert (=> b!4234706 m!4820773))

(assert (=> start!405202 d!1246077))

(declare-fun b!4234727 () Bool)

(declare-fun e!2629405 () Int)

(assert (=> b!4234727 (= e!2629405 0)))

(declare-fun d!1246079 () Bool)

(declare-fun lt!1505641 () Int)

(assert (=> d!1246079 (>= lt!1505641 0)))

(assert (=> d!1246079 (= lt!1505641 e!2629405)))

(declare-fun c!719839 () Bool)

(assert (=> d!1246079 (= c!719839 (and ((_ is Cons!46763) lt!1505624) (= (h!52183 lt!1505624) e1!42)))))

(assert (=> d!1246079 (contains!9707 lt!1505624 e1!42)))

(assert (=> d!1246079 (= (getIndex!906 lt!1505624 e1!42) lt!1505641)))

(declare-fun b!4234729 () Bool)

(declare-fun e!2629406 () Int)

(assert (=> b!4234729 (= e!2629406 (+ 1 (getIndex!906 (t!349590 lt!1505624) e1!42)))))

(declare-fun b!4234728 () Bool)

(assert (=> b!4234728 (= e!2629405 e!2629406)))

(declare-fun c!719838 () Bool)

(assert (=> b!4234728 (= c!719838 (and ((_ is Cons!46763) lt!1505624) (not (= (h!52183 lt!1505624) e1!42))))))

(declare-fun b!4234730 () Bool)

(assert (=> b!4234730 (= e!2629406 (- 1))))

(assert (= (and d!1246079 c!719839) b!4234727))

(assert (= (and d!1246079 (not c!719839)) b!4234728))

(assert (= (and b!4234728 c!719838) b!4234729))

(assert (= (and b!4234728 (not c!719838)) b!4234730))

(assert (=> d!1246079 m!4820717))

(declare-fun m!4820777 () Bool)

(assert (=> b!4234729 m!4820777))

(assert (=> b!4234680 d!1246079))

(declare-fun b!4234735 () Bool)

(declare-fun e!2629409 () Int)

(assert (=> b!4234735 (= e!2629409 0)))

(declare-fun d!1246083 () Bool)

(declare-fun lt!1505643 () Int)

(assert (=> d!1246083 (>= lt!1505643 0)))

(assert (=> d!1246083 (= lt!1505643 e!2629409)))

(declare-fun c!719843 () Bool)

(assert (=> d!1246083 (= c!719843 (and ((_ is Cons!46763) lt!1505624) (= (h!52183 lt!1505624) e2!42)))))

(assert (=> d!1246083 (contains!9707 lt!1505624 e2!42)))

(assert (=> d!1246083 (= (getIndex!906 lt!1505624 e2!42) lt!1505643)))

(declare-fun b!4234737 () Bool)

(declare-fun e!2629410 () Int)

(assert (=> b!4234737 (= e!2629410 (+ 1 (getIndex!906 (t!349590 lt!1505624) e2!42)))))

(declare-fun b!4234736 () Bool)

(assert (=> b!4234736 (= e!2629409 e!2629410)))

(declare-fun c!719842 () Bool)

(assert (=> b!4234736 (= c!719842 (and ((_ is Cons!46763) lt!1505624) (not (= (h!52183 lt!1505624) e2!42))))))

(declare-fun b!4234738 () Bool)

(assert (=> b!4234738 (= e!2629410 (- 1))))

(assert (= (and d!1246083 c!719843) b!4234735))

(assert (= (and d!1246083 (not c!719843)) b!4234736))

(assert (= (and b!4234736 c!719842) b!4234737))

(assert (= (and b!4234736 (not c!719842)) b!4234738))

(assert (=> d!1246083 m!4820733))

(declare-fun m!4820781 () Bool)

(assert (=> b!4234737 m!4820781))

(assert (=> b!4234680 d!1246083))

(declare-fun b!4234743 () Bool)

(declare-fun e!2629413 () Int)

(assert (=> b!4234743 (= e!2629413 0)))

(declare-fun d!1246087 () Bool)

(declare-fun lt!1505645 () Int)

(assert (=> d!1246087 (>= lt!1505645 0)))

(assert (=> d!1246087 (= lt!1505645 e!2629413)))

(declare-fun c!719847 () Bool)

(assert (=> d!1246087 (= c!719847 (and ((_ is Cons!46763) l!3106) (= (h!52183 l!3106) e2!42)))))

(assert (=> d!1246087 (contains!9707 l!3106 e2!42)))

(assert (=> d!1246087 (= (getIndex!906 l!3106 e2!42) lt!1505645)))

(declare-fun b!4234745 () Bool)

(declare-fun e!2629415 () Int)

(assert (=> b!4234745 (= e!2629415 (+ 1 (getIndex!906 (t!349590 l!3106) e2!42)))))

(declare-fun b!4234744 () Bool)

(assert (=> b!4234744 (= e!2629413 e!2629415)))

(declare-fun c!719846 () Bool)

(assert (=> b!4234744 (= c!719846 (and ((_ is Cons!46763) l!3106) (not (= (h!52183 l!3106) e2!42))))))

(declare-fun b!4234747 () Bool)

(assert (=> b!4234747 (= e!2629415 (- 1))))

(assert (= (and d!1246087 c!719847) b!4234743))

(assert (= (and d!1246087 (not c!719847)) b!4234744))

(assert (= (and b!4234744 c!719846) b!4234745))

(assert (= (and b!4234744 (not c!719846)) b!4234747))

(assert (=> d!1246087 m!4820721))

(declare-fun m!4820785 () Bool)

(assert (=> b!4234745 m!4820785))

(assert (=> b!4234681 d!1246087))

(declare-fun b!4234751 () Bool)

(declare-fun e!2629417 () Int)

(assert (=> b!4234751 (= e!2629417 0)))

(declare-fun d!1246093 () Bool)

(declare-fun lt!1505647 () Int)

(assert (=> d!1246093 (>= lt!1505647 0)))

(assert (=> d!1246093 (= lt!1505647 e!2629417)))

(declare-fun c!719851 () Bool)

(assert (=> d!1246093 (= c!719851 (and ((_ is Cons!46763) l!3106) (= (h!52183 l!3106) e1!42)))))

(assert (=> d!1246093 (contains!9707 l!3106 e1!42)))

(assert (=> d!1246093 (= (getIndex!906 l!3106 e1!42) lt!1505647)))

(declare-fun b!4234753 () Bool)

(declare-fun e!2629418 () Int)

(assert (=> b!4234753 (= e!2629418 (+ 1 (getIndex!906 (t!349590 l!3106) e1!42)))))

(declare-fun b!4234752 () Bool)

(assert (=> b!4234752 (= e!2629417 e!2629418)))

(declare-fun c!719850 () Bool)

(assert (=> b!4234752 (= c!719850 (and ((_ is Cons!46763) l!3106) (not (= (h!52183 l!3106) e1!42))))))

(declare-fun b!4234754 () Bool)

(assert (=> b!4234754 (= e!2629418 (- 1))))

(assert (= (and d!1246093 c!719851) b!4234751))

(assert (= (and d!1246093 (not c!719851)) b!4234752))

(assert (= (and b!4234752 c!719850) b!4234753))

(assert (= (and b!4234752 (not c!719850)) b!4234754))

(assert (=> d!1246093 m!4820731))

(declare-fun m!4820789 () Bool)

(assert (=> b!4234753 m!4820789))

(assert (=> b!4234681 d!1246093))

(declare-fun d!1246095 () Bool)

(declare-fun lt!1505654 () Int)

(assert (=> d!1246095 (>= lt!1505654 0)))

(declare-fun e!2629425 () Int)

(assert (=> d!1246095 (= lt!1505654 e!2629425)))

(declare-fun c!719858 () Bool)

(assert (=> d!1246095 (= c!719858 ((_ is Nil!46763) lt!1505624))))

(assert (=> d!1246095 (= (ListPrimitiveSize!313 lt!1505624) lt!1505654)))

(declare-fun b!4234767 () Bool)

(assert (=> b!4234767 (= e!2629425 0)))

(declare-fun b!4234768 () Bool)

(assert (=> b!4234768 (= e!2629425 (+ 1 (ListPrimitiveSize!313 (t!349590 lt!1505624))))))

(assert (= (and d!1246095 c!719858) b!4234767))

(assert (= (and d!1246095 (not c!719858)) b!4234768))

(declare-fun m!4820795 () Bool)

(assert (=> b!4234768 m!4820795))

(assert (=> b!4234682 d!1246095))

(declare-fun d!1246101 () Bool)

(declare-fun lt!1505656 () Int)

(assert (=> d!1246101 (>= lt!1505656 0)))

(declare-fun e!2629428 () Int)

(assert (=> d!1246101 (= lt!1505656 e!2629428)))

(declare-fun c!719859 () Bool)

(assert (=> d!1246101 (= c!719859 ((_ is Nil!46763) l!3106))))

(assert (=> d!1246101 (= (ListPrimitiveSize!313 l!3106) lt!1505656)))

(declare-fun b!4234771 () Bool)

(assert (=> b!4234771 (= e!2629428 0)))

(declare-fun b!4234772 () Bool)

(assert (=> b!4234772 (= e!2629428 (+ 1 (ListPrimitiveSize!313 (t!349590 l!3106))))))

(assert (= (and d!1246101 c!719859) b!4234771))

(assert (= (and d!1246101 (not c!719859)) b!4234772))

(declare-fun m!4820799 () Bool)

(assert (=> b!4234772 m!4820799))

(assert (=> b!4234682 d!1246101))

(declare-fun b!4234781 () Bool)

(declare-fun e!2629433 () Bool)

(declare-fun tp!1296645 () Bool)

(assert (=> b!4234781 (= e!2629433 (and tp_is_empty!22593 tp!1296645))))

(assert (=> b!4234679 (= tp!1296640 e!2629433)))

(assert (= (and b!4234679 ((_ is Cons!46763) (t!349590 l!3106))) b!4234781))

(check-sat (not b!4234753) (not d!1246077) (not b!4234729) (not b!4234768) (not b!4234706) (not d!1246083) (not d!1246079) (not b!4234704) (not b!4234696) (not d!1246087) (not d!1246073) (not d!1246093) (not b!4234772) (not b!4234745) tp_is_empty!22593 (not d!1246059) (not d!1246065) (not b!4234781) (not b!4234700) (not b!4234737))
(check-sat)
