; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!751902 () Bool)

(assert start!751902)

(declare-fun b!7972681 () Bool)

(declare-fun e!4700632 () Bool)

(declare-fun tp!2377169 () Bool)

(declare-fun tp!2377177 () Bool)

(assert (=> b!7972681 (= e!4700632 (and tp!2377169 tp!2377177))))

(declare-fun b!7972682 () Bool)

(declare-fun e!4700633 () Bool)

(declare-fun tp!2377174 () Bool)

(assert (=> b!7972682 (= e!4700633 tp!2377174)))

(declare-fun b!7972683 () Bool)

(declare-fun res!3158478 () Bool)

(declare-fun e!4700634 () Bool)

(assert (=> b!7972683 (=> (not res!3158478) (not e!4700634))))

(declare-datatypes ((C!43414 0))(
  ( (C!43415 (val!32255 Int)) )
))
(declare-datatypes ((List!74767 0))(
  ( (Nil!74643) (Cons!74643 (h!81091 C!43414) (t!390510 List!74767)) )
))
(declare-fun testedP!447 () List!74767)

(declare-fun input!7927 () List!74767)

(declare-fun isPrefix!6638 (List!74767 List!74767) Bool)

(assert (=> b!7972683 (= res!3158478 (isPrefix!6638 testedP!447 input!7927))))

(declare-fun b!7972684 () Bool)

(declare-fun tp_is_empty!53619 () Bool)

(assert (=> b!7972684 (= e!4700633 tp_is_empty!53619)))

(declare-fun b!7972685 () Bool)

(assert (=> b!7972685 (= e!4700632 tp_is_empty!53619)))

(declare-fun b!7972686 () Bool)

(declare-fun res!3158477 () Bool)

(declare-fun e!4700630 () Bool)

(assert (=> b!7972686 (=> (not res!3158477) (not e!4700630))))

(assert (=> b!7972686 (= res!3158477 (= testedP!447 input!7927))))

(declare-fun res!3158482 () Bool)

(assert (=> start!751902 (=> (not res!3158482) (not e!4700634))))

(declare-datatypes ((Regex!21538 0))(
  ( (ElementMatch!21538 (c!1464119 C!43414)) (Concat!30537 (regOne!43588 Regex!21538) (regTwo!43588 Regex!21538)) (EmptyExpr!21538) (Star!21538 (reg!21867 Regex!21538)) (EmptyLang!21538) (Union!21538 (regOne!43589 Regex!21538) (regTwo!43589 Regex!21538)) )
))
(declare-fun baseR!116 () Regex!21538)

(declare-fun validRegex!11842 (Regex!21538) Bool)

(assert (=> start!751902 (= res!3158482 (validRegex!11842 baseR!116))))

(assert (=> start!751902 e!4700634))

(assert (=> start!751902 e!4700632))

(declare-fun e!4700631 () Bool)

(assert (=> start!751902 e!4700631))

(declare-fun e!4700635 () Bool)

(assert (=> start!751902 e!4700635))

(assert (=> start!751902 e!4700633))

(declare-fun b!7972687 () Bool)

(declare-fun tp!2377168 () Bool)

(declare-fun tp!2377172 () Bool)

(assert (=> b!7972687 (= e!4700633 (and tp!2377168 tp!2377172))))

(declare-fun b!7972688 () Bool)

(declare-fun tp!2377178 () Bool)

(declare-fun tp!2377176 () Bool)

(assert (=> b!7972688 (= e!4700632 (and tp!2377178 tp!2377176))))

(declare-fun b!7972689 () Bool)

(declare-fun tp!2377175 () Bool)

(assert (=> b!7972689 (= e!4700632 tp!2377175)))

(declare-fun b!7972690 () Bool)

(declare-fun tp!2377167 () Bool)

(declare-fun tp!2377170 () Bool)

(assert (=> b!7972690 (= e!4700633 (and tp!2377167 tp!2377170))))

(declare-fun b!7972691 () Bool)

(declare-fun res!3158479 () Bool)

(assert (=> b!7972691 (=> (not res!3158479) (not e!4700630))))

(declare-fun r!24602 () Regex!21538)

(declare-fun nullable!9635 (Regex!21538) Bool)

(assert (=> b!7972691 (= res!3158479 (not (nullable!9635 r!24602)))))

(declare-fun b!7972692 () Bool)

(declare-fun tp!2377173 () Bool)

(assert (=> b!7972692 (= e!4700635 (and tp_is_empty!53619 tp!2377173))))

(declare-fun b!7972693 () Bool)

(declare-fun tp!2377171 () Bool)

(assert (=> b!7972693 (= e!4700631 (and tp_is_empty!53619 tp!2377171))))

(declare-fun b!7972694 () Bool)

(declare-fun res!3158481 () Bool)

(assert (=> b!7972694 (=> (not res!3158481) (not e!4700634))))

(declare-fun derivative!724 (Regex!21538 List!74767) Regex!21538)

(assert (=> b!7972694 (= res!3158481 (= (derivative!724 baseR!116 testedP!447) r!24602))))

(declare-fun b!7972695 () Bool)

(declare-datatypes ((tuple2!70734 0))(
  ( (tuple2!70735 (_1!38670 List!74767) (_2!38670 List!74767)) )
))
(declare-fun lt!2708508 () tuple2!70734)

(declare-fun matchR!10757 (Regex!21538 List!74767) Bool)

(assert (=> b!7972695 (= e!4700630 (not (matchR!10757 baseR!116 (_1!38670 lt!2708508))))))

(declare-fun b!7972696 () Bool)

(assert (=> b!7972696 (= e!4700634 e!4700630)))

(declare-fun res!3158480 () Bool)

(assert (=> b!7972696 (=> (not res!3158480) (not e!4700630))))

(declare-fun isEmpty!42942 (List!74767) Bool)

(assert (=> b!7972696 (= res!3158480 (not (isEmpty!42942 (_1!38670 lt!2708508))))))

(declare-fun findLongestMatchInner!2317 (Regex!21538 List!74767 Int List!74767 List!74767 Int) tuple2!70734)

(declare-fun size!43474 (List!74767) Int)

(declare-fun getSuffix!3839 (List!74767 List!74767) List!74767)

(assert (=> b!7972696 (= lt!2708508 (findLongestMatchInner!2317 r!24602 testedP!447 (size!43474 testedP!447) (getSuffix!3839 input!7927 testedP!447) input!7927 (size!43474 input!7927)))))

(assert (= (and start!751902 res!3158482) b!7972683))

(assert (= (and b!7972683 res!3158478) b!7972694))

(assert (= (and b!7972694 res!3158481) b!7972696))

(assert (= (and b!7972696 res!3158480) b!7972686))

(assert (= (and b!7972686 res!3158477) b!7972691))

(assert (= (and b!7972691 res!3158479) b!7972695))

(assert (= (and start!751902 (is-ElementMatch!21538 baseR!116)) b!7972685))

(assert (= (and start!751902 (is-Concat!30537 baseR!116)) b!7972681))

(assert (= (and start!751902 (is-Star!21538 baseR!116)) b!7972689))

(assert (= (and start!751902 (is-Union!21538 baseR!116)) b!7972688))

(assert (= (and start!751902 (is-Cons!74643 testedP!447)) b!7972693))

(assert (= (and start!751902 (is-Cons!74643 input!7927)) b!7972692))

(assert (= (and start!751902 (is-ElementMatch!21538 r!24602)) b!7972684))

(assert (= (and start!751902 (is-Concat!30537 r!24602)) b!7972690))

(assert (= (and start!751902 (is-Star!21538 r!24602)) b!7972682))

(assert (= (and start!751902 (is-Union!21538 r!24602)) b!7972687))

(declare-fun m!8350062 () Bool)

(assert (=> b!7972694 m!8350062))

(declare-fun m!8350064 () Bool)

(assert (=> b!7972695 m!8350064))

(declare-fun m!8350066 () Bool)

(assert (=> b!7972691 m!8350066))

(declare-fun m!8350068 () Bool)

(assert (=> start!751902 m!8350068))

(declare-fun m!8350070 () Bool)

(assert (=> b!7972683 m!8350070))

(declare-fun m!8350072 () Bool)

(assert (=> b!7972696 m!8350072))

(declare-fun m!8350074 () Bool)

(assert (=> b!7972696 m!8350074))

(declare-fun m!8350076 () Bool)

(assert (=> b!7972696 m!8350076))

(declare-fun m!8350078 () Bool)

(assert (=> b!7972696 m!8350078))

(assert (=> b!7972696 m!8350076))

(assert (=> b!7972696 m!8350072))

(declare-fun m!8350080 () Bool)

(assert (=> b!7972696 m!8350080))

(assert (=> b!7972696 m!8350078))

(push 1)

(assert (not b!7972681))

(assert (not b!7972695))

(assert (not b!7972688))

(assert (not b!7972687))

(assert (not b!7972689))

(assert (not b!7972683))

(assert (not b!7972690))

(assert (not b!7972696))

(assert (not b!7972694))

(assert (not b!7972693))

(assert (not start!751902))

(assert (not b!7972692))

(assert tp_is_empty!53619)

(assert (not b!7972682))

(assert (not b!7972691))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7972753 () Bool)

(declare-fun e!4700662 () Bool)

(declare-fun e!4700660 () Bool)

(assert (=> b!7972753 (= e!4700662 e!4700660)))

(declare-fun res!3158512 () Bool)

(assert (=> b!7972753 (=> (not res!3158512) (not e!4700660))))

(assert (=> b!7972753 (= res!3158512 (not (is-Nil!74643 input!7927)))))

(declare-fun b!7972754 () Bool)

(declare-fun res!3158509 () Bool)

(assert (=> b!7972754 (=> (not res!3158509) (not e!4700660))))

(declare-fun head!16288 (List!74767) C!43414)

(assert (=> b!7972754 (= res!3158509 (= (head!16288 testedP!447) (head!16288 input!7927)))))

(declare-fun b!7972756 () Bool)

(declare-fun e!4700661 () Bool)

(assert (=> b!7972756 (= e!4700661 (>= (size!43474 input!7927) (size!43474 testedP!447)))))

(declare-fun d!2380194 () Bool)

(assert (=> d!2380194 e!4700661))

(declare-fun res!3158510 () Bool)

(assert (=> d!2380194 (=> res!3158510 e!4700661)))

(declare-fun lt!2708514 () Bool)

(assert (=> d!2380194 (= res!3158510 (not lt!2708514))))

(assert (=> d!2380194 (= lt!2708514 e!4700662)))

(declare-fun res!3158511 () Bool)

(assert (=> d!2380194 (=> res!3158511 e!4700662)))

(assert (=> d!2380194 (= res!3158511 (is-Nil!74643 testedP!447))))

(assert (=> d!2380194 (= (isPrefix!6638 testedP!447 input!7927) lt!2708514)))

(declare-fun b!7972755 () Bool)

(declare-fun tail!15815 (List!74767) List!74767)

(assert (=> b!7972755 (= e!4700660 (isPrefix!6638 (tail!15815 testedP!447) (tail!15815 input!7927)))))

(assert (= (and d!2380194 (not res!3158511)) b!7972753))

(assert (= (and b!7972753 res!3158512) b!7972754))

(assert (= (and b!7972754 res!3158509) b!7972755))

(assert (= (and d!2380194 (not res!3158510)) b!7972756))

(declare-fun m!8350102 () Bool)

(assert (=> b!7972754 m!8350102))

(declare-fun m!8350104 () Bool)

(assert (=> b!7972754 m!8350104))

(assert (=> b!7972756 m!8350072))

(assert (=> b!7972756 m!8350078))

(declare-fun m!8350106 () Bool)

(assert (=> b!7972755 m!8350106))

(declare-fun m!8350108 () Bool)

(assert (=> b!7972755 m!8350108))

(assert (=> b!7972755 m!8350106))

(assert (=> b!7972755 m!8350108))

(declare-fun m!8350110 () Bool)

(assert (=> b!7972755 m!8350110))

(assert (=> b!7972683 d!2380194))

(declare-fun bm!739823 () Bool)

(declare-fun call!739830 () Bool)

(declare-fun call!739828 () Bool)

(assert (=> bm!739823 (= call!739830 call!739828)))

(declare-fun b!7972802 () Bool)

(declare-fun e!4700701 () Bool)

(declare-fun e!4700698 () Bool)

(assert (=> b!7972802 (= e!4700701 e!4700698)))

(declare-fun c!1464132 () Bool)

(assert (=> b!7972802 (= c!1464132 (is-Union!21538 baseR!116))))

(declare-fun b!7972803 () Bool)

(declare-fun e!4700702 () Bool)

(assert (=> b!7972803 (= e!4700701 e!4700702)))

(declare-fun res!3158542 () Bool)

(assert (=> b!7972803 (= res!3158542 (not (nullable!9635 (reg!21867 baseR!116))))))

(assert (=> b!7972803 (=> (not res!3158542) (not e!4700702))))

(declare-fun b!7972804 () Bool)

(declare-fun e!4700704 () Bool)

(declare-fun call!739829 () Bool)

(assert (=> b!7972804 (= e!4700704 call!739829)))

(declare-fun b!7972805 () Bool)

(declare-fun e!4700703 () Bool)

(declare-fun e!4700699 () Bool)

(assert (=> b!7972805 (= e!4700703 e!4700699)))

(declare-fun res!3158541 () Bool)

(assert (=> b!7972805 (=> (not res!3158541) (not e!4700699))))

(assert (=> b!7972805 (= res!3158541 call!739830)))

(declare-fun b!7972806 () Bool)

(assert (=> b!7972806 (= e!4700699 call!739829)))

(declare-fun bm!739824 () Bool)

(declare-fun c!1464131 () Bool)

(assert (=> bm!739824 (= call!739828 (validRegex!11842 (ite c!1464131 (reg!21867 baseR!116) (ite c!1464132 (regOne!43589 baseR!116) (regOne!43588 baseR!116)))))))

(declare-fun b!7972807 () Bool)

(assert (=> b!7972807 (= e!4700702 call!739828)))

(declare-fun bm!739825 () Bool)

(assert (=> bm!739825 (= call!739829 (validRegex!11842 (ite c!1464132 (regTwo!43589 baseR!116) (regTwo!43588 baseR!116))))))

(declare-fun d!2380198 () Bool)

(declare-fun res!3158538 () Bool)

(declare-fun e!4700700 () Bool)

(assert (=> d!2380198 (=> res!3158538 e!4700700)))

(assert (=> d!2380198 (= res!3158538 (is-ElementMatch!21538 baseR!116))))

(assert (=> d!2380198 (= (validRegex!11842 baseR!116) e!4700700)))

(declare-fun b!7972808 () Bool)

(declare-fun res!3158540 () Bool)

(assert (=> b!7972808 (=> (not res!3158540) (not e!4700704))))

(assert (=> b!7972808 (= res!3158540 call!739830)))

(assert (=> b!7972808 (= e!4700698 e!4700704)))

(declare-fun b!7972809 () Bool)

(assert (=> b!7972809 (= e!4700700 e!4700701)))

(assert (=> b!7972809 (= c!1464131 (is-Star!21538 baseR!116))))

(declare-fun b!7972810 () Bool)

(declare-fun res!3158539 () Bool)

(assert (=> b!7972810 (=> res!3158539 e!4700703)))

(assert (=> b!7972810 (= res!3158539 (not (is-Concat!30537 baseR!116)))))

(assert (=> b!7972810 (= e!4700698 e!4700703)))

(assert (= (and d!2380198 (not res!3158538)) b!7972809))

(assert (= (and b!7972809 c!1464131) b!7972803))

(assert (= (and b!7972809 (not c!1464131)) b!7972802))

(assert (= (and b!7972803 res!3158542) b!7972807))

(assert (= (and b!7972802 c!1464132) b!7972808))

(assert (= (and b!7972802 (not c!1464132)) b!7972810))

(assert (= (and b!7972808 res!3158540) b!7972804))

(assert (= (and b!7972810 (not res!3158539)) b!7972805))

(assert (= (and b!7972805 res!3158541) b!7972806))

(assert (= (or b!7972804 b!7972806) bm!739825))

(assert (= (or b!7972808 b!7972805) bm!739823))

(assert (= (or b!7972807 bm!739823) bm!739824))

(declare-fun m!8350118 () Bool)

(assert (=> b!7972803 m!8350118))

(declare-fun m!8350120 () Bool)

(assert (=> bm!739824 m!8350120))

(declare-fun m!8350122 () Bool)

(assert (=> bm!739825 m!8350122))

(assert (=> start!751902 d!2380198))

(declare-fun d!2380202 () Bool)

(declare-fun lt!2708517 () Regex!21538)

(assert (=> d!2380202 (validRegex!11842 lt!2708517)))

(declare-fun e!4700707 () Regex!21538)

(assert (=> d!2380202 (= lt!2708517 e!4700707)))

(declare-fun c!1464135 () Bool)

(assert (=> d!2380202 (= c!1464135 (is-Cons!74643 testedP!447))))

(assert (=> d!2380202 (validRegex!11842 baseR!116)))

(assert (=> d!2380202 (= (derivative!724 baseR!116 testedP!447) lt!2708517)))

(declare-fun b!7972815 () Bool)

(declare-fun derivativeStep!6562 (Regex!21538 C!43414) Regex!21538)

(assert (=> b!7972815 (= e!4700707 (derivative!724 (derivativeStep!6562 baseR!116 (h!81091 testedP!447)) (t!390510 testedP!447)))))

(declare-fun b!7972816 () Bool)

(assert (=> b!7972816 (= e!4700707 baseR!116)))

(assert (= (and d!2380202 c!1464135) b!7972815))

(assert (= (and d!2380202 (not c!1464135)) b!7972816))

(declare-fun m!8350124 () Bool)

(assert (=> d!2380202 m!8350124))

(assert (=> d!2380202 m!8350068))

(declare-fun m!8350126 () Bool)

(assert (=> b!7972815 m!8350126))

(assert (=> b!7972815 m!8350126))

(declare-fun m!8350128 () Bool)

(assert (=> b!7972815 m!8350128))

(assert (=> b!7972694 d!2380202))

(declare-fun b!7972887 () Bool)

(declare-fun e!4700743 () Bool)

(assert (=> b!7972887 (= e!4700743 (nullable!9635 baseR!116))))

(declare-fun b!7972888 () Bool)

(declare-fun res!3158587 () Bool)

(declare-fun e!4700746 () Bool)

(assert (=> b!7972888 (=> res!3158587 e!4700746)))

(declare-fun e!4700749 () Bool)

(assert (=> b!7972888 (= res!3158587 e!4700749)))

(declare-fun res!3158586 () Bool)

(assert (=> b!7972888 (=> (not res!3158586) (not e!4700749))))

(declare-fun lt!2708523 () Bool)

(assert (=> b!7972888 (= res!3158586 lt!2708523)))

(declare-fun b!7972889 () Bool)

(declare-fun e!4700744 () Bool)

(declare-fun call!739836 () Bool)

(assert (=> b!7972889 (= e!4700744 (= lt!2708523 call!739836))))

(declare-fun d!2380204 () Bool)

(assert (=> d!2380204 e!4700744))

(declare-fun c!1464152 () Bool)

(assert (=> d!2380204 (= c!1464152 (is-EmptyExpr!21538 baseR!116))))

(assert (=> d!2380204 (= lt!2708523 e!4700743)))

(declare-fun c!1464151 () Bool)

(assert (=> d!2380204 (= c!1464151 (isEmpty!42942 (_1!38670 lt!2708508)))))

(assert (=> d!2380204 (validRegex!11842 baseR!116)))

(assert (=> d!2380204 (= (matchR!10757 baseR!116 (_1!38670 lt!2708508)) lt!2708523)))

(declare-fun b!7972890 () Bool)

(declare-fun res!3158585 () Bool)

(assert (=> b!7972890 (=> (not res!3158585) (not e!4700749))))

(assert (=> b!7972890 (= res!3158585 (isEmpty!42942 (tail!15815 (_1!38670 lt!2708508))))))

(declare-fun b!7972891 () Bool)

(assert (=> b!7972891 (= e!4700743 (matchR!10757 (derivativeStep!6562 baseR!116 (head!16288 (_1!38670 lt!2708508))) (tail!15815 (_1!38670 lt!2708508))))))

(declare-fun b!7972892 () Bool)

(declare-fun res!3158584 () Bool)

(assert (=> b!7972892 (=> res!3158584 e!4700746)))

(assert (=> b!7972892 (= res!3158584 (not (is-ElementMatch!21538 baseR!116)))))

(declare-fun e!4700747 () Bool)

(assert (=> b!7972892 (= e!4700747 e!4700746)))

(declare-fun b!7972893 () Bool)

(declare-fun e!4700748 () Bool)

(assert (=> b!7972893 (= e!4700746 e!4700748)))

(declare-fun res!3158589 () Bool)

(assert (=> b!7972893 (=> (not res!3158589) (not e!4700748))))

(assert (=> b!7972893 (= res!3158589 (not lt!2708523))))

(declare-fun b!7972894 () Bool)

(declare-fun res!3158583 () Bool)

(declare-fun e!4700745 () Bool)

(assert (=> b!7972894 (=> res!3158583 e!4700745)))

(assert (=> b!7972894 (= res!3158583 (not (isEmpty!42942 (tail!15815 (_1!38670 lt!2708508)))))))

(declare-fun bm!739831 () Bool)

(assert (=> bm!739831 (= call!739836 (isEmpty!42942 (_1!38670 lt!2708508)))))

(declare-fun b!7972895 () Bool)

(assert (=> b!7972895 (= e!4700744 e!4700747)))

(declare-fun c!1464153 () Bool)

(assert (=> b!7972895 (= c!1464153 (is-EmptyLang!21538 baseR!116))))

(declare-fun b!7972896 () Bool)

(assert (=> b!7972896 (= e!4700749 (= (head!16288 (_1!38670 lt!2708508)) (c!1464119 baseR!116)))))

(declare-fun b!7972897 () Bool)

(assert (=> b!7972897 (= e!4700745 (not (= (head!16288 (_1!38670 lt!2708508)) (c!1464119 baseR!116))))))

(declare-fun b!7972898 () Bool)

(declare-fun res!3158590 () Bool)

(assert (=> b!7972898 (=> (not res!3158590) (not e!4700749))))

(assert (=> b!7972898 (= res!3158590 (not call!739836))))

(declare-fun b!7972899 () Bool)

(assert (=> b!7972899 (= e!4700747 (not lt!2708523))))

(declare-fun b!7972900 () Bool)

(assert (=> b!7972900 (= e!4700748 e!4700745)))

(declare-fun res!3158588 () Bool)

(assert (=> b!7972900 (=> res!3158588 e!4700745)))

(assert (=> b!7972900 (= res!3158588 call!739836)))

(assert (= (and d!2380204 c!1464151) b!7972887))

(assert (= (and d!2380204 (not c!1464151)) b!7972891))

(assert (= (and d!2380204 c!1464152) b!7972889))

(assert (= (and d!2380204 (not c!1464152)) b!7972895))

(assert (= (and b!7972895 c!1464153) b!7972899))

(assert (= (and b!7972895 (not c!1464153)) b!7972892))

(assert (= (and b!7972892 (not res!3158584)) b!7972888))

(assert (= (and b!7972888 res!3158586) b!7972898))

(assert (= (and b!7972898 res!3158590) b!7972890))

(assert (= (and b!7972890 res!3158585) b!7972896))

(assert (= (and b!7972888 (not res!3158587)) b!7972893))

(assert (= (and b!7972893 res!3158589) b!7972900))

(assert (= (and b!7972900 (not res!3158588)) b!7972894))

(assert (= (and b!7972894 (not res!3158583)) b!7972897))

(assert (= (or b!7972889 b!7972898 b!7972900) bm!739831))

(assert (=> d!2380204 m!8350074))

(assert (=> d!2380204 m!8350068))

(declare-fun m!8350142 () Bool)

(assert (=> b!7972894 m!8350142))

(assert (=> b!7972894 m!8350142))

(declare-fun m!8350144 () Bool)

(assert (=> b!7972894 m!8350144))

(declare-fun m!8350146 () Bool)

(assert (=> b!7972896 m!8350146))

(assert (=> bm!739831 m!8350074))

(assert (=> b!7972891 m!8350146))

(assert (=> b!7972891 m!8350146))

(declare-fun m!8350148 () Bool)

(assert (=> b!7972891 m!8350148))

(assert (=> b!7972891 m!8350142))

(assert (=> b!7972891 m!8350148))

(assert (=> b!7972891 m!8350142))

(declare-fun m!8350150 () Bool)

(assert (=> b!7972891 m!8350150))

(assert (=> b!7972897 m!8350146))

(declare-fun m!8350152 () Bool)

(assert (=> b!7972887 m!8350152))

(assert (=> b!7972890 m!8350142))

(assert (=> b!7972890 m!8350142))

(assert (=> b!7972890 m!8350144))

(assert (=> b!7972695 d!2380204))

(declare-fun d!2380208 () Bool)

(declare-fun lt!2708526 () Int)

(assert (=> d!2380208 (>= lt!2708526 0)))

(declare-fun e!4700752 () Int)

(assert (=> d!2380208 (= lt!2708526 e!4700752)))

(declare-fun c!1464156 () Bool)

(assert (=> d!2380208 (= c!1464156 (is-Nil!74643 input!7927))))

(assert (=> d!2380208 (= (size!43474 input!7927) lt!2708526)))

(declare-fun b!7972905 () Bool)

(assert (=> b!7972905 (= e!4700752 0)))

(declare-fun b!7972906 () Bool)

(assert (=> b!7972906 (= e!4700752 (+ 1 (size!43474 (t!390510 input!7927))))))

(assert (= (and d!2380208 c!1464156) b!7972905))

(assert (= (and d!2380208 (not c!1464156)) b!7972906))

(declare-fun m!8350154 () Bool)

(assert (=> b!7972906 m!8350154))

(assert (=> b!7972696 d!2380208))

(declare-fun d!2380210 () Bool)

(assert (=> d!2380210 (= (isEmpty!42942 (_1!38670 lt!2708508)) (is-Nil!74643 (_1!38670 lt!2708508)))))

(assert (=> b!7972696 d!2380210))

(declare-fun d!2380212 () Bool)

(declare-fun lt!2708532 () List!74767)

(declare-fun ++!18404 (List!74767 List!74767) List!74767)

(assert (=> d!2380212 (= (++!18404 testedP!447 lt!2708532) input!7927)))

(declare-fun e!4700758 () List!74767)

(assert (=> d!2380212 (= lt!2708532 e!4700758)))

(declare-fun c!1464162 () Bool)

(assert (=> d!2380212 (= c!1464162 (is-Cons!74643 testedP!447))))

(assert (=> d!2380212 (>= (size!43474 input!7927) (size!43474 testedP!447))))

(assert (=> d!2380212 (= (getSuffix!3839 input!7927 testedP!447) lt!2708532)))

(declare-fun b!7972917 () Bool)

(assert (=> b!7972917 (= e!4700758 (getSuffix!3839 (tail!15815 input!7927) (t!390510 testedP!447)))))

(declare-fun b!7972918 () Bool)

(assert (=> b!7972918 (= e!4700758 input!7927)))

(assert (= (and d!2380212 c!1464162) b!7972917))

(assert (= (and d!2380212 (not c!1464162)) b!7972918))

(declare-fun m!8350164 () Bool)

(assert (=> d!2380212 m!8350164))

(assert (=> d!2380212 m!8350072))

(assert (=> d!2380212 m!8350078))

(assert (=> b!7972917 m!8350108))

(assert (=> b!7972917 m!8350108))

(declare-fun m!8350166 () Bool)

(assert (=> b!7972917 m!8350166))

(assert (=> b!7972696 d!2380212))

(declare-fun d!2380218 () Bool)

(declare-fun lt!2708533 () Int)

(assert (=> d!2380218 (>= lt!2708533 0)))

(declare-fun e!4700759 () Int)

(assert (=> d!2380218 (= lt!2708533 e!4700759)))

(declare-fun c!1464163 () Bool)

(assert (=> d!2380218 (= c!1464163 (is-Nil!74643 testedP!447))))

(assert (=> d!2380218 (= (size!43474 testedP!447) lt!2708533)))

(declare-fun b!7972919 () Bool)

(assert (=> b!7972919 (= e!4700759 0)))

(declare-fun b!7972920 () Bool)

(assert (=> b!7972920 (= e!4700759 (+ 1 (size!43474 (t!390510 testedP!447))))))

(assert (= (and d!2380218 c!1464163) b!7972919))

(assert (= (and d!2380218 (not c!1464163)) b!7972920))

(declare-fun m!8350168 () Bool)

(assert (=> b!7972920 m!8350168))

(assert (=> b!7972696 d!2380218))

(declare-fun bm!739848 () Bool)

(declare-fun call!739853 () Bool)

(assert (=> bm!739848 (= call!739853 (nullable!9635 r!24602))))

(declare-fun b!7972975 () Bool)

(declare-fun e!4700796 () tuple2!70734)

(declare-fun call!739860 () tuple2!70734)

(assert (=> b!7972975 (= e!4700796 call!739860)))

(declare-fun b!7972976 () Bool)

(declare-fun e!4700794 () tuple2!70734)

(assert (=> b!7972976 (= e!4700796 e!4700794)))

(declare-fun lt!2708615 () tuple2!70734)

(assert (=> b!7972976 (= lt!2708615 call!739860)))

(declare-fun c!1464184 () Bool)

(assert (=> b!7972976 (= c!1464184 (isEmpty!42942 (_1!38670 lt!2708615)))))

(declare-fun b!7972977 () Bool)

(declare-fun e!4700792 () tuple2!70734)

(assert (=> b!7972977 (= e!4700792 (tuple2!70735 Nil!74643 input!7927))))

(declare-fun b!7972978 () Bool)

(declare-fun e!4700795 () tuple2!70734)

(assert (=> b!7972978 (= e!4700792 e!4700795)))

(declare-fun c!1464188 () Bool)

(assert (=> b!7972978 (= c!1464188 (= (size!43474 testedP!447) (size!43474 input!7927)))))

(declare-fun bm!739849 () Bool)

(declare-fun call!739859 () Bool)

(assert (=> bm!739849 (= call!739859 (isPrefix!6638 input!7927 input!7927))))

(declare-fun b!7972979 () Bool)

(declare-fun e!4700798 () Bool)

(declare-fun e!4700799 () Bool)

(assert (=> b!7972979 (= e!4700798 e!4700799)))

(declare-fun res!3158607 () Bool)

(assert (=> b!7972979 (=> res!3158607 e!4700799)))

(declare-fun lt!2708603 () tuple2!70734)

(assert (=> b!7972979 (= res!3158607 (isEmpty!42942 (_1!38670 lt!2708603)))))

(declare-fun b!7972980 () Bool)

(assert (=> b!7972980 (= e!4700799 (>= (size!43474 (_1!38670 lt!2708603)) (size!43474 testedP!447)))))

(declare-fun bm!739850 () Bool)

(declare-datatypes ((Unit!170332 0))(
  ( (Unit!170333) )
))
(declare-fun call!739857 () Unit!170332)

(declare-fun lemmaIsPrefixRefl!4104 (List!74767 List!74767) Unit!170332)

(assert (=> bm!739850 (= call!739857 (lemmaIsPrefixRefl!4104 input!7927 input!7927))))

(declare-fun bm!739851 () Bool)

(declare-fun call!739856 () Unit!170332)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1684 (List!74767 List!74767 List!74767) Unit!170332)

(assert (=> bm!739851 (= call!739856 (lemmaIsPrefixSameLengthThenSameList!1684 input!7927 testedP!447 input!7927))))

(declare-fun b!7972981 () Bool)

(assert (=> b!7972981 (= e!4700794 (tuple2!70735 testedP!447 (getSuffix!3839 input!7927 testedP!447)))))

(declare-fun call!739858 () List!74767)

(declare-fun bm!739852 () Bool)

(declare-fun call!739855 () Regex!21538)

(declare-fun lt!2708614 () List!74767)

(assert (=> bm!739852 (= call!739860 (findLongestMatchInner!2317 call!739855 lt!2708614 (+ (size!43474 testedP!447) 1) call!739858 input!7927 (size!43474 input!7927)))))

(declare-fun bm!739853 () Bool)

(declare-fun call!739854 () C!43414)

(assert (=> bm!739853 (= call!739855 (derivativeStep!6562 r!24602 call!739854))))

(declare-fun b!7972982 () Bool)

(declare-fun e!4700797 () tuple2!70734)

(assert (=> b!7972982 (= e!4700797 (tuple2!70735 Nil!74643 input!7927))))

(declare-fun b!7972983 () Bool)

(assert (=> b!7972983 (= e!4700797 (tuple2!70735 testedP!447 Nil!74643))))

(declare-fun b!7972984 () Bool)

(declare-fun e!4700793 () Unit!170332)

(declare-fun Unit!170334 () Unit!170332)

(assert (=> b!7972984 (= e!4700793 Unit!170334)))

(declare-fun lt!2708623 () Unit!170332)

(assert (=> b!7972984 (= lt!2708623 call!739857)))

(assert (=> b!7972984 call!739859))

(declare-fun lt!2708613 () Unit!170332)

(assert (=> b!7972984 (= lt!2708613 lt!2708623)))

(declare-fun lt!2708624 () Unit!170332)

(assert (=> b!7972984 (= lt!2708624 call!739856)))

(assert (=> b!7972984 (= input!7927 testedP!447)))

(declare-fun lt!2708610 () Unit!170332)

(assert (=> b!7972984 (= lt!2708610 lt!2708624)))

(assert (=> b!7972984 false))

(declare-fun bm!739854 () Bool)

(assert (=> bm!739854 (= call!739858 (tail!15815 (getSuffix!3839 input!7927 testedP!447)))))

(declare-fun b!7972985 () Bool)

(assert (=> b!7972985 (= e!4700794 lt!2708615)))

(declare-fun b!7972986 () Bool)

(declare-fun c!1464185 () Bool)

(assert (=> b!7972986 (= c!1464185 call!739853)))

(declare-fun lt!2708609 () Unit!170332)

(declare-fun lt!2708602 () Unit!170332)

(assert (=> b!7972986 (= lt!2708609 lt!2708602)))

(assert (=> b!7972986 (= input!7927 testedP!447)))

(assert (=> b!7972986 (= lt!2708602 call!739856)))

(declare-fun lt!2708622 () Unit!170332)

(declare-fun lt!2708621 () Unit!170332)

(assert (=> b!7972986 (= lt!2708622 lt!2708621)))

(assert (=> b!7972986 call!739859))

(assert (=> b!7972986 (= lt!2708621 call!739857)))

(assert (=> b!7972986 (= e!4700795 e!4700797)))

(declare-fun b!7972987 () Bool)

(declare-fun c!1464187 () Bool)

(assert (=> b!7972987 (= c!1464187 call!739853)))

(declare-fun lt!2708612 () Unit!170332)

(declare-fun lt!2708616 () Unit!170332)

(assert (=> b!7972987 (= lt!2708612 lt!2708616)))

(declare-fun lt!2708611 () C!43414)

(declare-fun lt!2708620 () List!74767)

(assert (=> b!7972987 (= (++!18404 (++!18404 testedP!447 (Cons!74643 lt!2708611 Nil!74643)) lt!2708620) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3551 (List!74767 C!43414 List!74767 List!74767) Unit!170332)

(assert (=> b!7972987 (= lt!2708616 (lemmaMoveElementToOtherListKeepsConcatEq!3551 testedP!447 lt!2708611 lt!2708620 input!7927))))

(assert (=> b!7972987 (= lt!2708620 (tail!15815 (getSuffix!3839 input!7927 testedP!447)))))

(assert (=> b!7972987 (= lt!2708611 (head!16288 (getSuffix!3839 input!7927 testedP!447)))))

(declare-fun lt!2708627 () Unit!170332)

(declare-fun lt!2708606 () Unit!170332)

(assert (=> b!7972987 (= lt!2708627 lt!2708606)))

(assert (=> b!7972987 (isPrefix!6638 (++!18404 testedP!447 (Cons!74643 (head!16288 (getSuffix!3839 input!7927 testedP!447)) Nil!74643)) input!7927)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1361 (List!74767 List!74767) Unit!170332)

(assert (=> b!7972987 (= lt!2708606 (lemmaAddHeadSuffixToPrefixStillPrefix!1361 testedP!447 input!7927))))

(declare-fun lt!2708619 () Unit!170332)

(declare-fun lt!2708617 () Unit!170332)

(assert (=> b!7972987 (= lt!2708619 lt!2708617)))

(assert (=> b!7972987 (= lt!2708617 (lemmaAddHeadSuffixToPrefixStillPrefix!1361 testedP!447 input!7927))))

(assert (=> b!7972987 (= lt!2708614 (++!18404 testedP!447 (Cons!74643 (head!16288 (getSuffix!3839 input!7927 testedP!447)) Nil!74643)))))

(declare-fun lt!2708626 () Unit!170332)

(assert (=> b!7972987 (= lt!2708626 e!4700793)))

(declare-fun c!1464183 () Bool)

(assert (=> b!7972987 (= c!1464183 (= (size!43474 testedP!447) (size!43474 input!7927)))))

(declare-fun lt!2708605 () Unit!170332)

(declare-fun lt!2708608 () Unit!170332)

(assert (=> b!7972987 (= lt!2708605 lt!2708608)))

(assert (=> b!7972987 (<= (size!43474 testedP!447) (size!43474 input!7927))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1153 (List!74767 List!74767) Unit!170332)

(assert (=> b!7972987 (= lt!2708608 (lemmaIsPrefixThenSmallerEqSize!1153 testedP!447 input!7927))))

(assert (=> b!7972987 (= e!4700795 e!4700796)))

(declare-fun d!2380220 () Bool)

(assert (=> d!2380220 e!4700798))

(declare-fun res!3158608 () Bool)

(assert (=> d!2380220 (=> (not res!3158608) (not e!4700798))))

(assert (=> d!2380220 (= res!3158608 (= (++!18404 (_1!38670 lt!2708603) (_2!38670 lt!2708603)) input!7927))))

(assert (=> d!2380220 (= lt!2708603 e!4700792)))

(declare-fun c!1464186 () Bool)

(declare-fun lostCause!1995 (Regex!21538) Bool)

(assert (=> d!2380220 (= c!1464186 (lostCause!1995 r!24602))))

(declare-fun lt!2708625 () Unit!170332)

(declare-fun Unit!170335 () Unit!170332)

(assert (=> d!2380220 (= lt!2708625 Unit!170335)))

(assert (=> d!2380220 (= (getSuffix!3839 input!7927 testedP!447) (getSuffix!3839 input!7927 testedP!447))))

(declare-fun lt!2708607 () Unit!170332)

(declare-fun lt!2708600 () Unit!170332)

(assert (=> d!2380220 (= lt!2708607 lt!2708600)))

(declare-fun lt!2708618 () List!74767)

(assert (=> d!2380220 (= (getSuffix!3839 input!7927 testedP!447) lt!2708618)))

(declare-fun lemmaSamePrefixThenSameSuffix!3011 (List!74767 List!74767 List!74767 List!74767 List!74767) Unit!170332)

(assert (=> d!2380220 (= lt!2708600 (lemmaSamePrefixThenSameSuffix!3011 testedP!447 (getSuffix!3839 input!7927 testedP!447) testedP!447 lt!2708618 input!7927))))

(assert (=> d!2380220 (= lt!2708618 (getSuffix!3839 input!7927 testedP!447))))

(declare-fun lt!2708604 () Unit!170332)

(declare-fun lt!2708601 () Unit!170332)

(assert (=> d!2380220 (= lt!2708604 lt!2708601)))

(assert (=> d!2380220 (isPrefix!6638 testedP!447 (++!18404 testedP!447 (getSuffix!3839 input!7927 testedP!447)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3873 (List!74767 List!74767) Unit!170332)

(assert (=> d!2380220 (= lt!2708601 (lemmaConcatTwoListThenFirstIsPrefix!3873 testedP!447 (getSuffix!3839 input!7927 testedP!447)))))

(assert (=> d!2380220 (validRegex!11842 r!24602)))

(assert (=> d!2380220 (= (findLongestMatchInner!2317 r!24602 testedP!447 (size!43474 testedP!447) (getSuffix!3839 input!7927 testedP!447) input!7927 (size!43474 input!7927)) lt!2708603)))

(declare-fun bm!739855 () Bool)

(assert (=> bm!739855 (= call!739854 (head!16288 (getSuffix!3839 input!7927 testedP!447)))))

(declare-fun b!7972988 () Bool)

(declare-fun Unit!170336 () Unit!170332)

(assert (=> b!7972988 (= e!4700793 Unit!170336)))

(assert (= (and d!2380220 c!1464186) b!7972977))

(assert (= (and d!2380220 (not c!1464186)) b!7972978))

(assert (= (and b!7972978 c!1464188) b!7972986))

(assert (= (and b!7972978 (not c!1464188)) b!7972987))

(assert (= (and b!7972986 c!1464185) b!7972983))

(assert (= (and b!7972986 (not c!1464185)) b!7972982))

(assert (= (and b!7972987 c!1464183) b!7972984))

(assert (= (and b!7972987 (not c!1464183)) b!7972988))

(assert (= (and b!7972987 c!1464187) b!7972976))

(assert (= (and b!7972987 (not c!1464187)) b!7972975))

(assert (= (and b!7972976 c!1464184) b!7972981))

(assert (= (and b!7972976 (not c!1464184)) b!7972985))

(assert (= (or b!7972976 b!7972975) bm!739855))

(assert (= (or b!7972976 b!7972975) bm!739854))

(assert (= (or b!7972976 b!7972975) bm!739853))

(assert (= (or b!7972976 b!7972975) bm!739852))

(assert (= (or b!7972986 b!7972987) bm!739848))

(assert (= (or b!7972986 b!7972984) bm!739851))

(assert (= (or b!7972986 b!7972984) bm!739850))

(assert (= (or b!7972986 b!7972984) bm!739849))

(assert (= (and d!2380220 res!3158608) b!7972979))

(assert (= (and b!7972979 (not res!3158607)) b!7972980))

(declare-fun m!8350188 () Bool)

(assert (=> b!7972976 m!8350188))

(assert (=> bm!739848 m!8350066))

(declare-fun m!8350190 () Bool)

(assert (=> b!7972987 m!8350190))

(declare-fun m!8350192 () Bool)

(assert (=> b!7972987 m!8350192))

(declare-fun m!8350194 () Bool)

(assert (=> b!7972987 m!8350194))

(declare-fun m!8350196 () Bool)

(assert (=> b!7972987 m!8350196))

(declare-fun m!8350198 () Bool)

(assert (=> b!7972987 m!8350198))

(assert (=> b!7972987 m!8350076))

(declare-fun m!8350200 () Bool)

(assert (=> b!7972987 m!8350200))

(assert (=> b!7972987 m!8350078))

(assert (=> b!7972987 m!8350076))

(assert (=> b!7972987 m!8350196))

(assert (=> b!7972987 m!8350196))

(assert (=> b!7972987 m!8350072))

(declare-fun m!8350202 () Bool)

(assert (=> b!7972987 m!8350202))

(assert (=> b!7972987 m!8350192))

(declare-fun m!8350204 () Bool)

(assert (=> b!7972987 m!8350204))

(assert (=> b!7972987 m!8350076))

(declare-fun m!8350206 () Bool)

(assert (=> b!7972987 m!8350206))

(assert (=> b!7972987 m!8350076))

(assert (=> b!7972987 m!8350206))

(declare-fun m!8350208 () Bool)

(assert (=> bm!739851 m!8350208))

(declare-fun m!8350210 () Bool)

(assert (=> bm!739853 m!8350210))

(declare-fun m!8350212 () Bool)

(assert (=> d!2380220 m!8350212))

(declare-fun m!8350214 () Bool)

(assert (=> d!2380220 m!8350214))

(assert (=> d!2380220 m!8350076))

(assert (=> d!2380220 m!8350212))

(declare-fun m!8350216 () Bool)

(assert (=> d!2380220 m!8350216))

(assert (=> d!2380220 m!8350076))

(declare-fun m!8350218 () Bool)

(assert (=> d!2380220 m!8350218))

(assert (=> d!2380220 m!8350076))

(declare-fun m!8350220 () Bool)

(assert (=> d!2380220 m!8350220))

(declare-fun m!8350222 () Bool)

(assert (=> d!2380220 m!8350222))

(assert (=> d!2380220 m!8350076))

(declare-fun m!8350224 () Bool)

(assert (=> d!2380220 m!8350224))

(assert (=> bm!739854 m!8350076))

(assert (=> bm!739854 m!8350200))

(assert (=> bm!739855 m!8350076))

(assert (=> bm!739855 m!8350206))

(declare-fun m!8350226 () Bool)

(assert (=> b!7972979 m!8350226))

(declare-fun m!8350228 () Bool)

(assert (=> bm!739850 m!8350228))

(declare-fun m!8350230 () Bool)

(assert (=> b!7972980 m!8350230))

(assert (=> b!7972980 m!8350078))

(assert (=> bm!739852 m!8350072))

(declare-fun m!8350232 () Bool)

(assert (=> bm!739852 m!8350232))

(declare-fun m!8350234 () Bool)

(assert (=> bm!739849 m!8350234))

(assert (=> b!7972696 d!2380220))

(declare-fun d!2380232 () Bool)

(declare-fun nullableFct!3805 (Regex!21538) Bool)

(assert (=> d!2380232 (= (nullable!9635 r!24602) (nullableFct!3805 r!24602))))

(declare-fun bs!1970008 () Bool)

(assert (= bs!1970008 d!2380232))

(declare-fun m!8350236 () Bool)

(assert (=> bs!1970008 m!8350236))

(assert (=> b!7972691 d!2380232))

(declare-fun b!7973001 () Bool)

(declare-fun e!4700802 () Bool)

(declare-fun tp!2377227 () Bool)

(assert (=> b!7973001 (= e!4700802 tp!2377227)))

(assert (=> b!7972688 (= tp!2377178 e!4700802)))

(declare-fun b!7972999 () Bool)

(assert (=> b!7972999 (= e!4700802 tp_is_empty!53619)))

(declare-fun b!7973002 () Bool)

(declare-fun tp!2377226 () Bool)

(declare-fun tp!2377225 () Bool)

(assert (=> b!7973002 (= e!4700802 (and tp!2377226 tp!2377225))))

(declare-fun b!7973000 () Bool)

(declare-fun tp!2377228 () Bool)

(declare-fun tp!2377229 () Bool)

(assert (=> b!7973000 (= e!4700802 (and tp!2377228 tp!2377229))))

(assert (= (and b!7972688 (is-ElementMatch!21538 (regOne!43589 baseR!116))) b!7972999))

(assert (= (and b!7972688 (is-Concat!30537 (regOne!43589 baseR!116))) b!7973000))

(assert (= (and b!7972688 (is-Star!21538 (regOne!43589 baseR!116))) b!7973001))

(assert (= (and b!7972688 (is-Union!21538 (regOne!43589 baseR!116))) b!7973002))

(declare-fun b!7973005 () Bool)

(declare-fun e!4700803 () Bool)

(declare-fun tp!2377232 () Bool)

(assert (=> b!7973005 (= e!4700803 tp!2377232)))

(assert (=> b!7972688 (= tp!2377176 e!4700803)))

(declare-fun b!7973003 () Bool)

(assert (=> b!7973003 (= e!4700803 tp_is_empty!53619)))

(declare-fun b!7973006 () Bool)

(declare-fun tp!2377231 () Bool)

(declare-fun tp!2377230 () Bool)

(assert (=> b!7973006 (= e!4700803 (and tp!2377231 tp!2377230))))

(declare-fun b!7973004 () Bool)

(declare-fun tp!2377233 () Bool)

(declare-fun tp!2377234 () Bool)

(assert (=> b!7973004 (= e!4700803 (and tp!2377233 tp!2377234))))

(assert (= (and b!7972688 (is-ElementMatch!21538 (regTwo!43589 baseR!116))) b!7973003))

(assert (= (and b!7972688 (is-Concat!30537 (regTwo!43589 baseR!116))) b!7973004))

(assert (= (and b!7972688 (is-Star!21538 (regTwo!43589 baseR!116))) b!7973005))

(assert (= (and b!7972688 (is-Union!21538 (regTwo!43589 baseR!116))) b!7973006))

(declare-fun b!7973009 () Bool)

(declare-fun e!4700804 () Bool)

(declare-fun tp!2377237 () Bool)

(assert (=> b!7973009 (= e!4700804 tp!2377237)))

(assert (=> b!7972689 (= tp!2377175 e!4700804)))

(declare-fun b!7973007 () Bool)

(assert (=> b!7973007 (= e!4700804 tp_is_empty!53619)))

(declare-fun b!7973010 () Bool)

(declare-fun tp!2377236 () Bool)

(declare-fun tp!2377235 () Bool)

(assert (=> b!7973010 (= e!4700804 (and tp!2377236 tp!2377235))))

(declare-fun b!7973008 () Bool)

(declare-fun tp!2377238 () Bool)

(declare-fun tp!2377239 () Bool)

(assert (=> b!7973008 (= e!4700804 (and tp!2377238 tp!2377239))))

(assert (= (and b!7972689 (is-ElementMatch!21538 (reg!21867 baseR!116))) b!7973007))

(assert (= (and b!7972689 (is-Concat!30537 (reg!21867 baseR!116))) b!7973008))

(assert (= (and b!7972689 (is-Star!21538 (reg!21867 baseR!116))) b!7973009))

(assert (= (and b!7972689 (is-Union!21538 (reg!21867 baseR!116))) b!7973010))

(declare-fun b!7973013 () Bool)

(declare-fun e!4700805 () Bool)

(declare-fun tp!2377242 () Bool)

(assert (=> b!7973013 (= e!4700805 tp!2377242)))

(assert (=> b!7972690 (= tp!2377167 e!4700805)))

(declare-fun b!7973011 () Bool)

(assert (=> b!7973011 (= e!4700805 tp_is_empty!53619)))

(declare-fun b!7973014 () Bool)

(declare-fun tp!2377241 () Bool)

(declare-fun tp!2377240 () Bool)

(assert (=> b!7973014 (= e!4700805 (and tp!2377241 tp!2377240))))

(declare-fun b!7973012 () Bool)

(declare-fun tp!2377243 () Bool)

(declare-fun tp!2377244 () Bool)

(assert (=> b!7973012 (= e!4700805 (and tp!2377243 tp!2377244))))

(assert (= (and b!7972690 (is-ElementMatch!21538 (regOne!43588 r!24602))) b!7973011))

(assert (= (and b!7972690 (is-Concat!30537 (regOne!43588 r!24602))) b!7973012))

(assert (= (and b!7972690 (is-Star!21538 (regOne!43588 r!24602))) b!7973013))

(assert (= (and b!7972690 (is-Union!21538 (regOne!43588 r!24602))) b!7973014))

(declare-fun b!7973017 () Bool)

(declare-fun e!4700806 () Bool)

(declare-fun tp!2377247 () Bool)

(assert (=> b!7973017 (= e!4700806 tp!2377247)))

(assert (=> b!7972690 (= tp!2377170 e!4700806)))

(declare-fun b!7973015 () Bool)

(assert (=> b!7973015 (= e!4700806 tp_is_empty!53619)))

(declare-fun b!7973018 () Bool)

(declare-fun tp!2377246 () Bool)

(declare-fun tp!2377245 () Bool)

(assert (=> b!7973018 (= e!4700806 (and tp!2377246 tp!2377245))))

(declare-fun b!7973016 () Bool)

(declare-fun tp!2377248 () Bool)

(declare-fun tp!2377249 () Bool)

(assert (=> b!7973016 (= e!4700806 (and tp!2377248 tp!2377249))))

(assert (= (and b!7972690 (is-ElementMatch!21538 (regTwo!43588 r!24602))) b!7973015))

(assert (= (and b!7972690 (is-Concat!30537 (regTwo!43588 r!24602))) b!7973016))

(assert (= (and b!7972690 (is-Star!21538 (regTwo!43588 r!24602))) b!7973017))

(assert (= (and b!7972690 (is-Union!21538 (regTwo!43588 r!24602))) b!7973018))

(declare-fun b!7973021 () Bool)

(declare-fun e!4700807 () Bool)

(declare-fun tp!2377252 () Bool)

(assert (=> b!7973021 (= e!4700807 tp!2377252)))

(assert (=> b!7972681 (= tp!2377169 e!4700807)))

(declare-fun b!7973019 () Bool)

(assert (=> b!7973019 (= e!4700807 tp_is_empty!53619)))

(declare-fun b!7973022 () Bool)

(declare-fun tp!2377251 () Bool)

(declare-fun tp!2377250 () Bool)

(assert (=> b!7973022 (= e!4700807 (and tp!2377251 tp!2377250))))

(declare-fun b!7973020 () Bool)

(declare-fun tp!2377253 () Bool)

(declare-fun tp!2377254 () Bool)

(assert (=> b!7973020 (= e!4700807 (and tp!2377253 tp!2377254))))

(assert (= (and b!7972681 (is-ElementMatch!21538 (regOne!43588 baseR!116))) b!7973019))

(assert (= (and b!7972681 (is-Concat!30537 (regOne!43588 baseR!116))) b!7973020))

(assert (= (and b!7972681 (is-Star!21538 (regOne!43588 baseR!116))) b!7973021))

(assert (= (and b!7972681 (is-Union!21538 (regOne!43588 baseR!116))) b!7973022))

(declare-fun b!7973025 () Bool)

(declare-fun e!4700808 () Bool)

(declare-fun tp!2377257 () Bool)

(assert (=> b!7973025 (= e!4700808 tp!2377257)))

(assert (=> b!7972681 (= tp!2377177 e!4700808)))

(declare-fun b!7973023 () Bool)

(assert (=> b!7973023 (= e!4700808 tp_is_empty!53619)))

(declare-fun b!7973026 () Bool)

(declare-fun tp!2377256 () Bool)

(declare-fun tp!2377255 () Bool)

(assert (=> b!7973026 (= e!4700808 (and tp!2377256 tp!2377255))))

(declare-fun b!7973024 () Bool)

(declare-fun tp!2377258 () Bool)

(declare-fun tp!2377259 () Bool)

(assert (=> b!7973024 (= e!4700808 (and tp!2377258 tp!2377259))))

(assert (= (and b!7972681 (is-ElementMatch!21538 (regTwo!43588 baseR!116))) b!7973023))

(assert (= (and b!7972681 (is-Concat!30537 (regTwo!43588 baseR!116))) b!7973024))

(assert (= (and b!7972681 (is-Star!21538 (regTwo!43588 baseR!116))) b!7973025))

(assert (= (and b!7972681 (is-Union!21538 (regTwo!43588 baseR!116))) b!7973026))

(declare-fun b!7973031 () Bool)

(declare-fun e!4700811 () Bool)

(declare-fun tp!2377262 () Bool)

(assert (=> b!7973031 (= e!4700811 (and tp_is_empty!53619 tp!2377262))))

(assert (=> b!7972692 (= tp!2377173 e!4700811)))

(assert (= (and b!7972692 (is-Cons!74643 (t!390510 input!7927))) b!7973031))

(declare-fun b!7973034 () Bool)

(declare-fun e!4700812 () Bool)

(declare-fun tp!2377265 () Bool)

(assert (=> b!7973034 (= e!4700812 tp!2377265)))

(assert (=> b!7972687 (= tp!2377168 e!4700812)))

(declare-fun b!7973032 () Bool)

(assert (=> b!7973032 (= e!4700812 tp_is_empty!53619)))

(declare-fun b!7973035 () Bool)

(declare-fun tp!2377264 () Bool)

(declare-fun tp!2377263 () Bool)

(assert (=> b!7973035 (= e!4700812 (and tp!2377264 tp!2377263))))

(declare-fun b!7973033 () Bool)

(declare-fun tp!2377266 () Bool)

(declare-fun tp!2377267 () Bool)

(assert (=> b!7973033 (= e!4700812 (and tp!2377266 tp!2377267))))

(assert (= (and b!7972687 (is-ElementMatch!21538 (regOne!43589 r!24602))) b!7973032))

(assert (= (and b!7972687 (is-Concat!30537 (regOne!43589 r!24602))) b!7973033))

(assert (= (and b!7972687 (is-Star!21538 (regOne!43589 r!24602))) b!7973034))

(assert (= (and b!7972687 (is-Union!21538 (regOne!43589 r!24602))) b!7973035))

(declare-fun b!7973038 () Bool)

(declare-fun e!4700813 () Bool)

(declare-fun tp!2377270 () Bool)

(assert (=> b!7973038 (= e!4700813 tp!2377270)))

(assert (=> b!7972687 (= tp!2377172 e!4700813)))

(declare-fun b!7973036 () Bool)

(assert (=> b!7973036 (= e!4700813 tp_is_empty!53619)))

(declare-fun b!7973039 () Bool)

(declare-fun tp!2377269 () Bool)

(declare-fun tp!2377268 () Bool)

(assert (=> b!7973039 (= e!4700813 (and tp!2377269 tp!2377268))))

(declare-fun b!7973037 () Bool)

(declare-fun tp!2377271 () Bool)

(declare-fun tp!2377272 () Bool)

(assert (=> b!7973037 (= e!4700813 (and tp!2377271 tp!2377272))))

(assert (= (and b!7972687 (is-ElementMatch!21538 (regTwo!43589 r!24602))) b!7973036))

(assert (= (and b!7972687 (is-Concat!30537 (regTwo!43589 r!24602))) b!7973037))

(assert (= (and b!7972687 (is-Star!21538 (regTwo!43589 r!24602))) b!7973038))

(assert (= (and b!7972687 (is-Union!21538 (regTwo!43589 r!24602))) b!7973039))

(declare-fun b!7973042 () Bool)

(declare-fun e!4700814 () Bool)

(declare-fun tp!2377275 () Bool)

(assert (=> b!7973042 (= e!4700814 tp!2377275)))

(assert (=> b!7972682 (= tp!2377174 e!4700814)))

(declare-fun b!7973040 () Bool)

(assert (=> b!7973040 (= e!4700814 tp_is_empty!53619)))

(declare-fun b!7973043 () Bool)

(declare-fun tp!2377274 () Bool)

(declare-fun tp!2377273 () Bool)

(assert (=> b!7973043 (= e!4700814 (and tp!2377274 tp!2377273))))

(declare-fun b!7973041 () Bool)

(declare-fun tp!2377276 () Bool)

(declare-fun tp!2377277 () Bool)

(assert (=> b!7973041 (= e!4700814 (and tp!2377276 tp!2377277))))

(assert (= (and b!7972682 (is-ElementMatch!21538 (reg!21867 r!24602))) b!7973040))

(assert (= (and b!7972682 (is-Concat!30537 (reg!21867 r!24602))) b!7973041))

(assert (= (and b!7972682 (is-Star!21538 (reg!21867 r!24602))) b!7973042))

(assert (= (and b!7972682 (is-Union!21538 (reg!21867 r!24602))) b!7973043))

(declare-fun b!7973044 () Bool)

(declare-fun e!4700815 () Bool)

(declare-fun tp!2377278 () Bool)

(assert (=> b!7973044 (= e!4700815 (and tp_is_empty!53619 tp!2377278))))

(assert (=> b!7972693 (= tp!2377171 e!4700815)))

(assert (= (and b!7972693 (is-Cons!74643 (t!390510 testedP!447))) b!7973044))

(push 1)

(assert (not b!7973000))

(assert (not b!7973008))

(assert (not d!2380212))

(assert (not b!7973044))

(assert (not b!7973014))

(assert (not b!7973041))

(assert (not b!7972803))

(assert (not b!7972894))

(assert (not b!7972906))

(assert (not b!7973031))

(assert (not b!7973018))

(assert (not bm!739824))

(assert (not b!7973043))

(assert (not b!7973025))

(assert (not b!7973039))

(assert (not b!7972987))

(assert (not b!7972891))

(assert (not b!7972755))

(assert (not b!7973012))

(assert (not bm!739855))

(assert (not b!7972920))

(assert (not d!2380232))

(assert (not b!7972896))

(assert (not b!7973024))

(assert (not b!7973037))

(assert (not b!7973010))

(assert (not b!7972897))

(assert (not b!7973033))

(assert (not b!7973002))

(assert (not b!7973021))

(assert (not b!7973016))

(assert (not b!7973038))

(assert (not bm!739831))

(assert (not b!7973005))

(assert (not b!7973017))

(assert (not b!7972756))

(assert (not b!7972979))

(assert (not b!7972815))

(assert (not b!7972976))

(assert (not b!7973004))

(assert (not d!2380204))

(assert (not bm!739825))

(assert (not b!7973006))

(assert (not bm!739848))

(assert (not b!7972980))

(assert (not b!7973035))

(assert (not b!7972917))

(assert (not b!7973022))

(assert (not d!2380220))

(assert tp_is_empty!53619)

(assert (not bm!739852))

(assert (not d!2380202))

(assert (not b!7973034))

(assert (not b!7972754))

(assert (not b!7973042))

(assert (not b!7973001))

(assert (not b!7972890))

(assert (not b!7973020))

(assert (not bm!739849))

(assert (not bm!739851))

(assert (not b!7973013))

(assert (not bm!739854))

(assert (not b!7973009))

(assert (not b!7973026))

(assert (not bm!739853))

(assert (not b!7972887))

(assert (not bm!739850))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

