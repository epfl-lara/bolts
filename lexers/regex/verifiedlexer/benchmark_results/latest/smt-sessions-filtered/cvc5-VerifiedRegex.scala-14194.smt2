; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744028 () Bool)

(assert start!744028)

(declare-fun b!7870791 () Bool)

(declare-fun e!4649744 () Bool)

(declare-fun tp_is_empty!52719 () Bool)

(assert (=> b!7870791 (= e!4649744 tp_is_empty!52719)))

(declare-fun b!7870792 () Bool)

(declare-fun e!4649740 () Bool)

(declare-fun tp!2335389 () Bool)

(assert (=> b!7870792 (= e!4649740 tp!2335389)))

(declare-fun b!7870793 () Bool)

(declare-fun res!3127482 () Bool)

(declare-fun e!4649741 () Bool)

(assert (=> b!7870793 (=> (not res!3127482) (not e!4649741))))

(declare-datatypes ((C!42646 0))(
  ( (C!42647 (val!31785 Int)) )
))
(declare-datatypes ((List!74019 0))(
  ( (Nil!73895) (Cons!73895 (h!80343 C!42646) (t!388754 List!74019)) )
))
(declare-fun s!14219 () List!74019)

(assert (=> b!7870793 (= res!3127482 (not (is-Cons!73895 s!14219)))))

(declare-fun b!7870794 () Bool)

(declare-fun tp!2335386 () Bool)

(declare-fun tp!2335387 () Bool)

(assert (=> b!7870794 (= e!4649740 (and tp!2335386 tp!2335387))))

(declare-fun res!3127479 () Bool)

(assert (=> start!744028 (=> (not res!3127479) (not e!4649741))))

(declare-datatypes ((Regex!21160 0))(
  ( (ElementMatch!21160 (c!1445932 C!42646)) (Concat!30005 (regOne!42832 Regex!21160) (regTwo!42832 Regex!21160)) (EmptyExpr!21160) (Star!21160 (reg!21489 Regex!21160)) (EmptyLang!21160) (Union!21160 (regOne!42833 Regex!21160) (regTwo!42833 Regex!21160)) )
))
(declare-fun r1!6200 () Regex!21160)

(declare-fun validRegex!11570 (Regex!21160) Bool)

(assert (=> start!744028 (= res!3127479 (validRegex!11570 r1!6200))))

(assert (=> start!744028 e!4649741))

(assert (=> start!744028 e!4649740))

(assert (=> start!744028 e!4649744))

(declare-fun e!4649742 () Bool)

(assert (=> start!744028 e!4649742))

(declare-fun b!7870795 () Bool)

(declare-fun res!3127480 () Bool)

(assert (=> b!7870795 (=> (not res!3127480) (not e!4649741))))

(declare-fun matchR!10596 (Regex!21160 List!74019) Bool)

(assert (=> b!7870795 (= res!3127480 (matchR!10596 r1!6200 s!14219))))

(declare-fun b!7870796 () Bool)

(declare-fun e!4649743 () Bool)

(declare-fun lt!2680878 () Regex!21160)

(assert (=> b!7870796 (= e!4649743 (not (validRegex!11570 lt!2680878)))))

(declare-fun b!7870797 () Bool)

(assert (=> b!7870797 (= e!4649741 e!4649743)))

(declare-fun res!3127483 () Bool)

(assert (=> b!7870797 (=> (not res!3127483) (not e!4649743))))

(assert (=> b!7870797 (= res!3127483 (matchR!10596 lt!2680878 s!14219))))

(declare-fun r2!6138 () Regex!21160)

(assert (=> b!7870797 (= lt!2680878 (Union!21160 r1!6200 r2!6138))))

(declare-fun b!7870798 () Bool)

(declare-fun tp!2335390 () Bool)

(assert (=> b!7870798 (= e!4649742 (and tp_is_empty!52719 tp!2335390))))

(declare-fun b!7870799 () Bool)

(declare-fun tp!2335384 () Bool)

(declare-fun tp!2335385 () Bool)

(assert (=> b!7870799 (= e!4649740 (and tp!2335384 tp!2335385))))

(declare-fun b!7870800 () Bool)

(declare-fun tp!2335391 () Bool)

(assert (=> b!7870800 (= e!4649744 tp!2335391)))

(declare-fun b!7870801 () Bool)

(assert (=> b!7870801 (= e!4649740 tp_is_empty!52719)))

(declare-fun b!7870802 () Bool)

(declare-fun tp!2335383 () Bool)

(declare-fun tp!2335382 () Bool)

(assert (=> b!7870802 (= e!4649744 (and tp!2335383 tp!2335382))))

(declare-fun b!7870803 () Bool)

(declare-fun res!3127481 () Bool)

(assert (=> b!7870803 (=> (not res!3127481) (not e!4649741))))

(assert (=> b!7870803 (= res!3127481 (validRegex!11570 r2!6138))))

(declare-fun b!7870804 () Bool)

(declare-fun tp!2335388 () Bool)

(declare-fun tp!2335381 () Bool)

(assert (=> b!7870804 (= e!4649744 (and tp!2335388 tp!2335381))))

(assert (= (and start!744028 res!3127479) b!7870803))

(assert (= (and b!7870803 res!3127481) b!7870795))

(assert (= (and b!7870795 res!3127480) b!7870793))

(assert (= (and b!7870793 res!3127482) b!7870797))

(assert (= (and b!7870797 res!3127483) b!7870796))

(assert (= (and start!744028 (is-ElementMatch!21160 r1!6200)) b!7870801))

(assert (= (and start!744028 (is-Concat!30005 r1!6200)) b!7870799))

(assert (= (and start!744028 (is-Star!21160 r1!6200)) b!7870792))

(assert (= (and start!744028 (is-Union!21160 r1!6200)) b!7870794))

(assert (= (and start!744028 (is-ElementMatch!21160 r2!6138)) b!7870791))

(assert (= (and start!744028 (is-Concat!30005 r2!6138)) b!7870804))

(assert (= (and start!744028 (is-Star!21160 r2!6138)) b!7870800))

(assert (= (and start!744028 (is-Union!21160 r2!6138)) b!7870802))

(assert (= (and start!744028 (is-Cons!73895 s!14219)) b!7870798))

(declare-fun m!8265104 () Bool)

(assert (=> b!7870803 m!8265104))

(declare-fun m!8265106 () Bool)

(assert (=> b!7870797 m!8265106))

(declare-fun m!8265108 () Bool)

(assert (=> b!7870796 m!8265108))

(declare-fun m!8265110 () Bool)

(assert (=> b!7870795 m!8265110))

(declare-fun m!8265112 () Bool)

(assert (=> start!744028 m!8265112))

(push 1)

(assert (not b!7870798))

(assert (not b!7870792))

(assert (not b!7870795))

(assert tp_is_empty!52719)

(assert (not b!7870800))

(assert (not b!7870802))

(assert (not b!7870794))

(assert (not b!7870797))

(assert (not b!7870804))

(assert (not b!7870799))

(assert (not b!7870796))

(assert (not start!744028))

(assert (not b!7870803))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7870893 () Bool)

(declare-fun e!4649792 () Bool)

(declare-fun lt!2680884 () Bool)

(assert (=> b!7870893 (= e!4649792 (not lt!2680884))))

(declare-fun b!7870894 () Bool)

(declare-fun e!4649794 () Bool)

(declare-fun e!4649789 () Bool)

(assert (=> b!7870894 (= e!4649794 e!4649789)))

(declare-fun res!3127531 () Bool)

(assert (=> b!7870894 (=> res!3127531 e!4649789)))

(declare-fun call!729901 () Bool)

(assert (=> b!7870894 (= res!3127531 call!729901)))

(declare-fun b!7870895 () Bool)

(declare-fun res!3127527 () Bool)

(declare-fun e!4649791 () Bool)

(assert (=> b!7870895 (=> res!3127527 e!4649791)))

(assert (=> b!7870895 (= res!3127527 (not (is-ElementMatch!21160 r1!6200)))))

(assert (=> b!7870895 (= e!4649792 e!4649791)))

(declare-fun b!7870896 () Bool)

(declare-fun e!4649793 () Bool)

(assert (=> b!7870896 (= e!4649793 e!4649792)))

(declare-fun c!1445945 () Bool)

(assert (=> b!7870896 (= c!1445945 (is-EmptyLang!21160 r1!6200))))

(declare-fun b!7870897 () Bool)

(declare-fun e!4649788 () Bool)

(declare-fun head!16102 (List!74019) C!42646)

(assert (=> b!7870897 (= e!4649788 (= (head!16102 s!14219) (c!1445932 r1!6200)))))

(declare-fun b!7870898 () Bool)

(declare-fun e!4649790 () Bool)

(declare-fun nullable!9424 (Regex!21160) Bool)

(assert (=> b!7870898 (= e!4649790 (nullable!9424 r1!6200))))

(declare-fun b!7870899 () Bool)

(assert (=> b!7870899 (= e!4649789 (not (= (head!16102 s!14219) (c!1445932 r1!6200))))))

(declare-fun b!7870900 () Bool)

(assert (=> b!7870900 (= e!4649791 e!4649794)))

(declare-fun res!3127530 () Bool)

(assert (=> b!7870900 (=> (not res!3127530) (not e!4649794))))

(assert (=> b!7870900 (= res!3127530 (not lt!2680884))))

(declare-fun d!2355215 () Bool)

(assert (=> d!2355215 e!4649793))

(declare-fun c!1445946 () Bool)

(assert (=> d!2355215 (= c!1445946 (is-EmptyExpr!21160 r1!6200))))

(assert (=> d!2355215 (= lt!2680884 e!4649790)))

(declare-fun c!1445944 () Bool)

(declare-fun isEmpty!42391 (List!74019) Bool)

(assert (=> d!2355215 (= c!1445944 (isEmpty!42391 s!14219))))

(assert (=> d!2355215 (validRegex!11570 r1!6200)))

(assert (=> d!2355215 (= (matchR!10596 r1!6200 s!14219) lt!2680884)))

(declare-fun b!7870901 () Bool)

(assert (=> b!7870901 (= e!4649793 (= lt!2680884 call!729901))))

(declare-fun b!7870902 () Bool)

(declare-fun res!3127526 () Bool)

(assert (=> b!7870902 (=> res!3127526 e!4649789)))

(declare-fun tail!15645 (List!74019) List!74019)

(assert (=> b!7870902 (= res!3127526 (not (isEmpty!42391 (tail!15645 s!14219))))))

(declare-fun bm!729896 () Bool)

(assert (=> bm!729896 (= call!729901 (isEmpty!42391 s!14219))))

(declare-fun b!7870903 () Bool)

(declare-fun res!3127529 () Bool)

(assert (=> b!7870903 (=> (not res!3127529) (not e!4649788))))

(assert (=> b!7870903 (= res!3127529 (isEmpty!42391 (tail!15645 s!14219)))))

(declare-fun b!7870904 () Bool)

(declare-fun derivativeStep!6391 (Regex!21160 C!42646) Regex!21160)

(assert (=> b!7870904 (= e!4649790 (matchR!10596 (derivativeStep!6391 r1!6200 (head!16102 s!14219)) (tail!15645 s!14219)))))

(declare-fun b!7870905 () Bool)

(declare-fun res!3127528 () Bool)

(assert (=> b!7870905 (=> (not res!3127528) (not e!4649788))))

(assert (=> b!7870905 (= res!3127528 (not call!729901))))

(declare-fun b!7870906 () Bool)

(declare-fun res!3127532 () Bool)

(assert (=> b!7870906 (=> res!3127532 e!4649791)))

(assert (=> b!7870906 (= res!3127532 e!4649788)))

(declare-fun res!3127525 () Bool)

(assert (=> b!7870906 (=> (not res!3127525) (not e!4649788))))

(assert (=> b!7870906 (= res!3127525 lt!2680884)))

(assert (= (and d!2355215 c!1445944) b!7870898))

(assert (= (and d!2355215 (not c!1445944)) b!7870904))

(assert (= (and d!2355215 c!1445946) b!7870901))

(assert (= (and d!2355215 (not c!1445946)) b!7870896))

(assert (= (and b!7870896 c!1445945) b!7870893))

(assert (= (and b!7870896 (not c!1445945)) b!7870895))

(assert (= (and b!7870895 (not res!3127527)) b!7870906))

(assert (= (and b!7870906 res!3127525) b!7870905))

(assert (= (and b!7870905 res!3127528) b!7870903))

(assert (= (and b!7870903 res!3127529) b!7870897))

(assert (= (and b!7870906 (not res!3127532)) b!7870900))

(assert (= (and b!7870900 res!3127530) b!7870894))

(assert (= (and b!7870894 (not res!3127531)) b!7870902))

(assert (= (and b!7870902 (not res!3127526)) b!7870899))

(assert (= (or b!7870901 b!7870894 b!7870905) bm!729896))

(declare-fun m!8265124 () Bool)

(assert (=> b!7870903 m!8265124))

(assert (=> b!7870903 m!8265124))

(declare-fun m!8265126 () Bool)

(assert (=> b!7870903 m!8265126))

(assert (=> b!7870902 m!8265124))

(assert (=> b!7870902 m!8265124))

(assert (=> b!7870902 m!8265126))

(declare-fun m!8265128 () Bool)

(assert (=> bm!729896 m!8265128))

(declare-fun m!8265130 () Bool)

(assert (=> b!7870904 m!8265130))

(assert (=> b!7870904 m!8265130))

(declare-fun m!8265132 () Bool)

(assert (=> b!7870904 m!8265132))

(assert (=> b!7870904 m!8265124))

(assert (=> b!7870904 m!8265132))

(assert (=> b!7870904 m!8265124))

(declare-fun m!8265134 () Bool)

(assert (=> b!7870904 m!8265134))

(assert (=> d!2355215 m!8265128))

(assert (=> d!2355215 m!8265112))

(assert (=> b!7870899 m!8265130))

(declare-fun m!8265136 () Bool)

(assert (=> b!7870898 m!8265136))

(assert (=> b!7870897 m!8265130))

(assert (=> b!7870795 d!2355215))

(declare-fun b!7870934 () Bool)

(declare-fun e!4649821 () Bool)

(declare-fun e!4649816 () Bool)

(assert (=> b!7870934 (= e!4649821 e!4649816)))

(declare-fun c!1445954 () Bool)

(assert (=> b!7870934 (= c!1445954 (is-Star!21160 r1!6200))))

(declare-fun b!7870935 () Bool)

(declare-fun e!4649817 () Bool)

(declare-fun call!729913 () Bool)

(assert (=> b!7870935 (= e!4649817 call!729913)))

(declare-fun bm!729906 () Bool)

(declare-fun call!729911 () Bool)

(declare-fun call!729912 () Bool)

(assert (=> bm!729906 (= call!729911 call!729912)))

(declare-fun bm!729907 () Bool)

(declare-fun c!1445953 () Bool)

(assert (=> bm!729907 (= call!729912 (validRegex!11570 (ite c!1445954 (reg!21489 r1!6200) (ite c!1445953 (regTwo!42833 r1!6200) (regOne!42832 r1!6200)))))))

(declare-fun b!7870936 () Bool)

(declare-fun e!4649820 () Bool)

(assert (=> b!7870936 (= e!4649816 e!4649820)))

(declare-fun res!3127552 () Bool)

(assert (=> b!7870936 (= res!3127552 (not (nullable!9424 (reg!21489 r1!6200))))))

(assert (=> b!7870936 (=> (not res!3127552) (not e!4649820))))

(declare-fun b!7870937 () Bool)

(declare-fun e!4649822 () Bool)

(assert (=> b!7870937 (= e!4649816 e!4649822)))

(assert (=> b!7870937 (= c!1445953 (is-Union!21160 r1!6200))))

(declare-fun b!7870938 () Bool)

(assert (=> b!7870938 (= e!4649820 call!729912)))

(declare-fun b!7870939 () Bool)

(declare-fun res!3127551 () Bool)

(declare-fun e!4649818 () Bool)

(assert (=> b!7870939 (=> res!3127551 e!4649818)))

(assert (=> b!7870939 (= res!3127551 (not (is-Concat!30005 r1!6200)))))

(assert (=> b!7870939 (= e!4649822 e!4649818)))

(declare-fun b!7870940 () Bool)

(declare-fun res!3127548 () Bool)

(declare-fun e!4649819 () Bool)

(assert (=> b!7870940 (=> (not res!3127548) (not e!4649819))))

(assert (=> b!7870940 (= res!3127548 call!729913)))

(assert (=> b!7870940 (= e!4649822 e!4649819)))

(declare-fun bm!729908 () Bool)

(assert (=> bm!729908 (= call!729913 (validRegex!11570 (ite c!1445953 (regOne!42833 r1!6200) (regTwo!42832 r1!6200))))))

(declare-fun b!7870941 () Bool)

(assert (=> b!7870941 (= e!4649819 call!729911)))

(declare-fun b!7870942 () Bool)

(assert (=> b!7870942 (= e!4649818 e!4649817)))

(declare-fun res!3127549 () Bool)

(assert (=> b!7870942 (=> (not res!3127549) (not e!4649817))))

(assert (=> b!7870942 (= res!3127549 call!729911)))

(declare-fun d!2355219 () Bool)

(declare-fun res!3127550 () Bool)

(assert (=> d!2355219 (=> res!3127550 e!4649821)))

(assert (=> d!2355219 (= res!3127550 (is-ElementMatch!21160 r1!6200))))

(assert (=> d!2355219 (= (validRegex!11570 r1!6200) e!4649821)))

(assert (= (and d!2355219 (not res!3127550)) b!7870934))

(assert (= (and b!7870934 c!1445954) b!7870936))

(assert (= (and b!7870934 (not c!1445954)) b!7870937))

(assert (= (and b!7870936 res!3127552) b!7870938))

(assert (= (and b!7870937 c!1445953) b!7870940))

(assert (= (and b!7870937 (not c!1445953)) b!7870939))

(assert (= (and b!7870940 res!3127548) b!7870941))

(assert (= (and b!7870939 (not res!3127551)) b!7870942))

(assert (= (and b!7870942 res!3127549) b!7870935))

(assert (= (or b!7870941 b!7870942) bm!729906))

(assert (= (or b!7870940 b!7870935) bm!729908))

(assert (= (or b!7870938 bm!729906) bm!729907))

(declare-fun m!8265144 () Bool)

(assert (=> bm!729907 m!8265144))

(declare-fun m!8265146 () Bool)

(assert (=> b!7870936 m!8265146))

(declare-fun m!8265148 () Bool)

(assert (=> bm!729908 m!8265148))

(assert (=> start!744028 d!2355219))

(declare-fun b!7870943 () Bool)

(declare-fun e!4649828 () Bool)

(declare-fun e!4649823 () Bool)

(assert (=> b!7870943 (= e!4649828 e!4649823)))

(declare-fun c!1445956 () Bool)

(assert (=> b!7870943 (= c!1445956 (is-Star!21160 r2!6138))))

(declare-fun b!7870944 () Bool)

(declare-fun e!4649824 () Bool)

(declare-fun call!729916 () Bool)

(assert (=> b!7870944 (= e!4649824 call!729916)))

(declare-fun bm!729909 () Bool)

(declare-fun call!729914 () Bool)

(declare-fun call!729915 () Bool)

(assert (=> bm!729909 (= call!729914 call!729915)))

(declare-fun c!1445955 () Bool)

(declare-fun bm!729910 () Bool)

(assert (=> bm!729910 (= call!729915 (validRegex!11570 (ite c!1445956 (reg!21489 r2!6138) (ite c!1445955 (regTwo!42833 r2!6138) (regOne!42832 r2!6138)))))))

(declare-fun b!7870945 () Bool)

(declare-fun e!4649827 () Bool)

(assert (=> b!7870945 (= e!4649823 e!4649827)))

(declare-fun res!3127557 () Bool)

(assert (=> b!7870945 (= res!3127557 (not (nullable!9424 (reg!21489 r2!6138))))))

(assert (=> b!7870945 (=> (not res!3127557) (not e!4649827))))

(declare-fun b!7870946 () Bool)

(declare-fun e!4649829 () Bool)

(assert (=> b!7870946 (= e!4649823 e!4649829)))

(assert (=> b!7870946 (= c!1445955 (is-Union!21160 r2!6138))))

(declare-fun b!7870947 () Bool)

(assert (=> b!7870947 (= e!4649827 call!729915)))

(declare-fun b!7870948 () Bool)

(declare-fun res!3127556 () Bool)

(declare-fun e!4649825 () Bool)

(assert (=> b!7870948 (=> res!3127556 e!4649825)))

(assert (=> b!7870948 (= res!3127556 (not (is-Concat!30005 r2!6138)))))

(assert (=> b!7870948 (= e!4649829 e!4649825)))

(declare-fun b!7870949 () Bool)

(declare-fun res!3127553 () Bool)

(declare-fun e!4649826 () Bool)

(assert (=> b!7870949 (=> (not res!3127553) (not e!4649826))))

(assert (=> b!7870949 (= res!3127553 call!729916)))

(assert (=> b!7870949 (= e!4649829 e!4649826)))

(declare-fun bm!729911 () Bool)

(assert (=> bm!729911 (= call!729916 (validRegex!11570 (ite c!1445955 (regOne!42833 r2!6138) (regTwo!42832 r2!6138))))))

(declare-fun b!7870950 () Bool)

(assert (=> b!7870950 (= e!4649826 call!729914)))

(declare-fun b!7870951 () Bool)

(assert (=> b!7870951 (= e!4649825 e!4649824)))

(declare-fun res!3127554 () Bool)

(assert (=> b!7870951 (=> (not res!3127554) (not e!4649824))))

(assert (=> b!7870951 (= res!3127554 call!729914)))

(declare-fun d!2355223 () Bool)

(declare-fun res!3127555 () Bool)

(assert (=> d!2355223 (=> res!3127555 e!4649828)))

(assert (=> d!2355223 (= res!3127555 (is-ElementMatch!21160 r2!6138))))

(assert (=> d!2355223 (= (validRegex!11570 r2!6138) e!4649828)))

(assert (= (and d!2355223 (not res!3127555)) b!7870943))

(assert (= (and b!7870943 c!1445956) b!7870945))

(assert (= (and b!7870943 (not c!1445956)) b!7870946))

(assert (= (and b!7870945 res!3127557) b!7870947))

(assert (= (and b!7870946 c!1445955) b!7870949))

(assert (= (and b!7870946 (not c!1445955)) b!7870948))

(assert (= (and b!7870949 res!3127553) b!7870950))

(assert (= (and b!7870948 (not res!3127556)) b!7870951))

(assert (= (and b!7870951 res!3127554) b!7870944))

(assert (= (or b!7870950 b!7870951) bm!729909))

(assert (= (or b!7870949 b!7870944) bm!729911))

(assert (= (or b!7870947 bm!729909) bm!729910))

(declare-fun m!8265150 () Bool)

(assert (=> bm!729910 m!8265150))

(declare-fun m!8265152 () Bool)

(assert (=> b!7870945 m!8265152))

(declare-fun m!8265154 () Bool)

(assert (=> bm!729911 m!8265154))

(assert (=> b!7870803 d!2355223))

(declare-fun b!7870952 () Bool)

(declare-fun e!4649834 () Bool)

(declare-fun lt!2680885 () Bool)

(assert (=> b!7870952 (= e!4649834 (not lt!2680885))))

(declare-fun b!7870953 () Bool)

(declare-fun e!4649836 () Bool)

(declare-fun e!4649831 () Bool)

(assert (=> b!7870953 (= e!4649836 e!4649831)))

(declare-fun res!3127564 () Bool)

(assert (=> b!7870953 (=> res!3127564 e!4649831)))

(declare-fun call!729917 () Bool)

(assert (=> b!7870953 (= res!3127564 call!729917)))

(declare-fun b!7870954 () Bool)

(declare-fun res!3127560 () Bool)

(declare-fun e!4649833 () Bool)

(assert (=> b!7870954 (=> res!3127560 e!4649833)))

(assert (=> b!7870954 (= res!3127560 (not (is-ElementMatch!21160 lt!2680878)))))

(assert (=> b!7870954 (= e!4649834 e!4649833)))

(declare-fun b!7870955 () Bool)

(declare-fun e!4649835 () Bool)

(assert (=> b!7870955 (= e!4649835 e!4649834)))

(declare-fun c!1445958 () Bool)

(assert (=> b!7870955 (= c!1445958 (is-EmptyLang!21160 lt!2680878))))

(declare-fun b!7870956 () Bool)

(declare-fun e!4649830 () Bool)

(assert (=> b!7870956 (= e!4649830 (= (head!16102 s!14219) (c!1445932 lt!2680878)))))

(declare-fun b!7870957 () Bool)

(declare-fun e!4649832 () Bool)

(assert (=> b!7870957 (= e!4649832 (nullable!9424 lt!2680878))))

(declare-fun b!7870958 () Bool)

(assert (=> b!7870958 (= e!4649831 (not (= (head!16102 s!14219) (c!1445932 lt!2680878))))))

(declare-fun b!7870959 () Bool)

(assert (=> b!7870959 (= e!4649833 e!4649836)))

(declare-fun res!3127563 () Bool)

(assert (=> b!7870959 (=> (not res!3127563) (not e!4649836))))

(assert (=> b!7870959 (= res!3127563 (not lt!2680885))))

(declare-fun d!2355225 () Bool)

(assert (=> d!2355225 e!4649835))

(declare-fun c!1445959 () Bool)

(assert (=> d!2355225 (= c!1445959 (is-EmptyExpr!21160 lt!2680878))))

(assert (=> d!2355225 (= lt!2680885 e!4649832)))

(declare-fun c!1445957 () Bool)

(assert (=> d!2355225 (= c!1445957 (isEmpty!42391 s!14219))))

(assert (=> d!2355225 (validRegex!11570 lt!2680878)))

(assert (=> d!2355225 (= (matchR!10596 lt!2680878 s!14219) lt!2680885)))

(declare-fun b!7870960 () Bool)

(assert (=> b!7870960 (= e!4649835 (= lt!2680885 call!729917))))

(declare-fun b!7870961 () Bool)

(declare-fun res!3127559 () Bool)

(assert (=> b!7870961 (=> res!3127559 e!4649831)))

(assert (=> b!7870961 (= res!3127559 (not (isEmpty!42391 (tail!15645 s!14219))))))

(declare-fun bm!729912 () Bool)

(assert (=> bm!729912 (= call!729917 (isEmpty!42391 s!14219))))

(declare-fun b!7870962 () Bool)

(declare-fun res!3127562 () Bool)

(assert (=> b!7870962 (=> (not res!3127562) (not e!4649830))))

(assert (=> b!7870962 (= res!3127562 (isEmpty!42391 (tail!15645 s!14219)))))

(declare-fun b!7870963 () Bool)

(assert (=> b!7870963 (= e!4649832 (matchR!10596 (derivativeStep!6391 lt!2680878 (head!16102 s!14219)) (tail!15645 s!14219)))))

(declare-fun b!7870964 () Bool)

(declare-fun res!3127561 () Bool)

(assert (=> b!7870964 (=> (not res!3127561) (not e!4649830))))

(assert (=> b!7870964 (= res!3127561 (not call!729917))))

(declare-fun b!7870965 () Bool)

(declare-fun res!3127565 () Bool)

(assert (=> b!7870965 (=> res!3127565 e!4649833)))

(assert (=> b!7870965 (= res!3127565 e!4649830)))

(declare-fun res!3127558 () Bool)

(assert (=> b!7870965 (=> (not res!3127558) (not e!4649830))))

(assert (=> b!7870965 (= res!3127558 lt!2680885)))

(assert (= (and d!2355225 c!1445957) b!7870957))

(assert (= (and d!2355225 (not c!1445957)) b!7870963))

(assert (= (and d!2355225 c!1445959) b!7870960))

(assert (= (and d!2355225 (not c!1445959)) b!7870955))

(assert (= (and b!7870955 c!1445958) b!7870952))

(assert (= (and b!7870955 (not c!1445958)) b!7870954))

(assert (= (and b!7870954 (not res!3127560)) b!7870965))

(assert (= (and b!7870965 res!3127558) b!7870964))

(assert (= (and b!7870964 res!3127561) b!7870962))

(assert (= (and b!7870962 res!3127562) b!7870956))

(assert (= (and b!7870965 (not res!3127565)) b!7870959))

(assert (= (and b!7870959 res!3127563) b!7870953))

(assert (= (and b!7870953 (not res!3127564)) b!7870961))

(assert (= (and b!7870961 (not res!3127559)) b!7870958))

(assert (= (or b!7870960 b!7870953 b!7870964) bm!729912))

(assert (=> b!7870962 m!8265124))

(assert (=> b!7870962 m!8265124))

(assert (=> b!7870962 m!8265126))

(assert (=> b!7870961 m!8265124))

(assert (=> b!7870961 m!8265124))

(assert (=> b!7870961 m!8265126))

(assert (=> bm!729912 m!8265128))

(assert (=> b!7870963 m!8265130))

(assert (=> b!7870963 m!8265130))

(declare-fun m!8265156 () Bool)

(assert (=> b!7870963 m!8265156))

(assert (=> b!7870963 m!8265124))

(assert (=> b!7870963 m!8265156))

(assert (=> b!7870963 m!8265124))

(declare-fun m!8265158 () Bool)

(assert (=> b!7870963 m!8265158))

(assert (=> d!2355225 m!8265128))

(assert (=> d!2355225 m!8265108))

(assert (=> b!7870958 m!8265130))

(declare-fun m!8265160 () Bool)

(assert (=> b!7870957 m!8265160))

(assert (=> b!7870956 m!8265130))

(assert (=> b!7870797 d!2355225))

(declare-fun b!7870966 () Bool)

(declare-fun e!4649842 () Bool)

(declare-fun e!4649837 () Bool)

(assert (=> b!7870966 (= e!4649842 e!4649837)))

(declare-fun c!1445961 () Bool)

(assert (=> b!7870966 (= c!1445961 (is-Star!21160 lt!2680878))))

(declare-fun b!7870967 () Bool)

(declare-fun e!4649838 () Bool)

(declare-fun call!729920 () Bool)

(assert (=> b!7870967 (= e!4649838 call!729920)))

(declare-fun bm!729913 () Bool)

(declare-fun call!729918 () Bool)

(declare-fun call!729919 () Bool)

(assert (=> bm!729913 (= call!729918 call!729919)))

(declare-fun bm!729914 () Bool)

(declare-fun c!1445960 () Bool)

(assert (=> bm!729914 (= call!729919 (validRegex!11570 (ite c!1445961 (reg!21489 lt!2680878) (ite c!1445960 (regTwo!42833 lt!2680878) (regOne!42832 lt!2680878)))))))

(declare-fun b!7870968 () Bool)

(declare-fun e!4649841 () Bool)

(assert (=> b!7870968 (= e!4649837 e!4649841)))

(declare-fun res!3127570 () Bool)

(assert (=> b!7870968 (= res!3127570 (not (nullable!9424 (reg!21489 lt!2680878))))))

(assert (=> b!7870968 (=> (not res!3127570) (not e!4649841))))

(declare-fun b!7870969 () Bool)

(declare-fun e!4649843 () Bool)

(assert (=> b!7870969 (= e!4649837 e!4649843)))

(assert (=> b!7870969 (= c!1445960 (is-Union!21160 lt!2680878))))

(declare-fun b!7870970 () Bool)

(assert (=> b!7870970 (= e!4649841 call!729919)))

(declare-fun b!7870971 () Bool)

(declare-fun res!3127569 () Bool)

(declare-fun e!4649839 () Bool)

(assert (=> b!7870971 (=> res!3127569 e!4649839)))

(assert (=> b!7870971 (= res!3127569 (not (is-Concat!30005 lt!2680878)))))

(assert (=> b!7870971 (= e!4649843 e!4649839)))

(declare-fun b!7870972 () Bool)

(declare-fun res!3127566 () Bool)

(declare-fun e!4649840 () Bool)

(assert (=> b!7870972 (=> (not res!3127566) (not e!4649840))))

(assert (=> b!7870972 (= res!3127566 call!729920)))

(assert (=> b!7870972 (= e!4649843 e!4649840)))

(declare-fun bm!729915 () Bool)

(assert (=> bm!729915 (= call!729920 (validRegex!11570 (ite c!1445960 (regOne!42833 lt!2680878) (regTwo!42832 lt!2680878))))))

(declare-fun b!7870973 () Bool)

(assert (=> b!7870973 (= e!4649840 call!729918)))

(declare-fun b!7870974 () Bool)

(assert (=> b!7870974 (= e!4649839 e!4649838)))

(declare-fun res!3127567 () Bool)

(assert (=> b!7870974 (=> (not res!3127567) (not e!4649838))))

(assert (=> b!7870974 (= res!3127567 call!729918)))

(declare-fun d!2355227 () Bool)

(declare-fun res!3127568 () Bool)

(assert (=> d!2355227 (=> res!3127568 e!4649842)))

(assert (=> d!2355227 (= res!3127568 (is-ElementMatch!21160 lt!2680878))))

(assert (=> d!2355227 (= (validRegex!11570 lt!2680878) e!4649842)))

(assert (= (and d!2355227 (not res!3127568)) b!7870966))

(assert (= (and b!7870966 c!1445961) b!7870968))

(assert (= (and b!7870966 (not c!1445961)) b!7870969))

(assert (= (and b!7870968 res!3127570) b!7870970))

(assert (= (and b!7870969 c!1445960) b!7870972))

(assert (= (and b!7870969 (not c!1445960)) b!7870971))

(assert (= (and b!7870972 res!3127566) b!7870973))

(assert (= (and b!7870971 (not res!3127569)) b!7870974))

(assert (= (and b!7870974 res!3127567) b!7870967))

(assert (= (or b!7870973 b!7870974) bm!729913))

(assert (= (or b!7870972 b!7870967) bm!729915))

(assert (= (or b!7870970 bm!729913) bm!729914))

(declare-fun m!8265162 () Bool)

(assert (=> bm!729914 m!8265162))

(declare-fun m!8265164 () Bool)

(assert (=> b!7870968 m!8265164))

(declare-fun m!8265166 () Bool)

(assert (=> bm!729915 m!8265166))

(assert (=> b!7870796 d!2355227))

(declare-fun e!4649846 () Bool)

(assert (=> b!7870800 (= tp!2335391 e!4649846)))

(declare-fun b!7870986 () Bool)

(declare-fun tp!2335437 () Bool)

(declare-fun tp!2335438 () Bool)

(assert (=> b!7870986 (= e!4649846 (and tp!2335437 tp!2335438))))

(declare-fun b!7870987 () Bool)

(declare-fun tp!2335435 () Bool)

(assert (=> b!7870987 (= e!4649846 tp!2335435)))

(declare-fun b!7870985 () Bool)

(assert (=> b!7870985 (= e!4649846 tp_is_empty!52719)))

(declare-fun b!7870988 () Bool)

(declare-fun tp!2335436 () Bool)

(declare-fun tp!2335439 () Bool)

(assert (=> b!7870988 (= e!4649846 (and tp!2335436 tp!2335439))))

(assert (= (and b!7870800 (is-ElementMatch!21160 (reg!21489 r2!6138))) b!7870985))

(assert (= (and b!7870800 (is-Concat!30005 (reg!21489 r2!6138))) b!7870986))

(assert (= (and b!7870800 (is-Star!21160 (reg!21489 r2!6138))) b!7870987))

(assert (= (and b!7870800 (is-Union!21160 (reg!21489 r2!6138))) b!7870988))

(declare-fun e!4649847 () Bool)

(assert (=> b!7870799 (= tp!2335384 e!4649847)))

(declare-fun b!7870990 () Bool)

(declare-fun tp!2335442 () Bool)

(declare-fun tp!2335443 () Bool)

(assert (=> b!7870990 (= e!4649847 (and tp!2335442 tp!2335443))))

(declare-fun b!7870991 () Bool)

(declare-fun tp!2335440 () Bool)

(assert (=> b!7870991 (= e!4649847 tp!2335440)))

(declare-fun b!7870989 () Bool)

(assert (=> b!7870989 (= e!4649847 tp_is_empty!52719)))

(declare-fun b!7870992 () Bool)

(declare-fun tp!2335441 () Bool)

(declare-fun tp!2335444 () Bool)

(assert (=> b!7870992 (= e!4649847 (and tp!2335441 tp!2335444))))

(assert (= (and b!7870799 (is-ElementMatch!21160 (regOne!42832 r1!6200))) b!7870989))

(assert (= (and b!7870799 (is-Concat!30005 (regOne!42832 r1!6200))) b!7870990))

(assert (= (and b!7870799 (is-Star!21160 (regOne!42832 r1!6200))) b!7870991))

(assert (= (and b!7870799 (is-Union!21160 (regOne!42832 r1!6200))) b!7870992))

(declare-fun e!4649848 () Bool)

(assert (=> b!7870799 (= tp!2335385 e!4649848)))

(declare-fun b!7870994 () Bool)

(declare-fun tp!2335447 () Bool)

(declare-fun tp!2335448 () Bool)

(assert (=> b!7870994 (= e!4649848 (and tp!2335447 tp!2335448))))

(declare-fun b!7870995 () Bool)

(declare-fun tp!2335445 () Bool)

(assert (=> b!7870995 (= e!4649848 tp!2335445)))

(declare-fun b!7870993 () Bool)

(assert (=> b!7870993 (= e!4649848 tp_is_empty!52719)))

(declare-fun b!7870996 () Bool)

(declare-fun tp!2335446 () Bool)

(declare-fun tp!2335449 () Bool)

(assert (=> b!7870996 (= e!4649848 (and tp!2335446 tp!2335449))))

(assert (= (and b!7870799 (is-ElementMatch!21160 (regTwo!42832 r1!6200))) b!7870993))

(assert (= (and b!7870799 (is-Concat!30005 (regTwo!42832 r1!6200))) b!7870994))

(assert (= (and b!7870799 (is-Star!21160 (regTwo!42832 r1!6200))) b!7870995))

(assert (= (and b!7870799 (is-Union!21160 (regTwo!42832 r1!6200))) b!7870996))

(declare-fun e!4649849 () Bool)

(assert (=> b!7870794 (= tp!2335386 e!4649849)))

(declare-fun b!7870998 () Bool)

(declare-fun tp!2335452 () Bool)

(declare-fun tp!2335453 () Bool)

(assert (=> b!7870998 (= e!4649849 (and tp!2335452 tp!2335453))))

(declare-fun b!7870999 () Bool)

(declare-fun tp!2335450 () Bool)

(assert (=> b!7870999 (= e!4649849 tp!2335450)))

(declare-fun b!7870997 () Bool)

(assert (=> b!7870997 (= e!4649849 tp_is_empty!52719)))

(declare-fun b!7871000 () Bool)

(declare-fun tp!2335451 () Bool)

(declare-fun tp!2335454 () Bool)

(assert (=> b!7871000 (= e!4649849 (and tp!2335451 tp!2335454))))

(assert (= (and b!7870794 (is-ElementMatch!21160 (regOne!42833 r1!6200))) b!7870997))

(assert (= (and b!7870794 (is-Concat!30005 (regOne!42833 r1!6200))) b!7870998))

(assert (= (and b!7870794 (is-Star!21160 (regOne!42833 r1!6200))) b!7870999))

(assert (= (and b!7870794 (is-Union!21160 (regOne!42833 r1!6200))) b!7871000))

(declare-fun e!4649850 () Bool)

(assert (=> b!7870794 (= tp!2335387 e!4649850)))

(declare-fun b!7871002 () Bool)

(declare-fun tp!2335457 () Bool)

(declare-fun tp!2335458 () Bool)

(assert (=> b!7871002 (= e!4649850 (and tp!2335457 tp!2335458))))

(declare-fun b!7871003 () Bool)

(declare-fun tp!2335455 () Bool)

(assert (=> b!7871003 (= e!4649850 tp!2335455)))

(declare-fun b!7871001 () Bool)

(assert (=> b!7871001 (= e!4649850 tp_is_empty!52719)))

(declare-fun b!7871004 () Bool)

(declare-fun tp!2335456 () Bool)

(declare-fun tp!2335459 () Bool)

(assert (=> b!7871004 (= e!4649850 (and tp!2335456 tp!2335459))))

(assert (= (and b!7870794 (is-ElementMatch!21160 (regTwo!42833 r1!6200))) b!7871001))

(assert (= (and b!7870794 (is-Concat!30005 (regTwo!42833 r1!6200))) b!7871002))

(assert (= (and b!7870794 (is-Star!21160 (regTwo!42833 r1!6200))) b!7871003))

(assert (= (and b!7870794 (is-Union!21160 (regTwo!42833 r1!6200))) b!7871004))

(declare-fun e!4649851 () Bool)

(assert (=> b!7870804 (= tp!2335388 e!4649851)))

(declare-fun b!7871006 () Bool)

(declare-fun tp!2335462 () Bool)

(declare-fun tp!2335463 () Bool)

(assert (=> b!7871006 (= e!4649851 (and tp!2335462 tp!2335463))))

(declare-fun b!7871007 () Bool)

(declare-fun tp!2335460 () Bool)

(assert (=> b!7871007 (= e!4649851 tp!2335460)))

(declare-fun b!7871005 () Bool)

(assert (=> b!7871005 (= e!4649851 tp_is_empty!52719)))

(declare-fun b!7871008 () Bool)

(declare-fun tp!2335461 () Bool)

(declare-fun tp!2335464 () Bool)

(assert (=> b!7871008 (= e!4649851 (and tp!2335461 tp!2335464))))

(assert (= (and b!7870804 (is-ElementMatch!21160 (regOne!42832 r2!6138))) b!7871005))

(assert (= (and b!7870804 (is-Concat!30005 (regOne!42832 r2!6138))) b!7871006))

(assert (= (and b!7870804 (is-Star!21160 (regOne!42832 r2!6138))) b!7871007))

(assert (= (and b!7870804 (is-Union!21160 (regOne!42832 r2!6138))) b!7871008))

(declare-fun e!4649852 () Bool)

(assert (=> b!7870804 (= tp!2335381 e!4649852)))

(declare-fun b!7871010 () Bool)

(declare-fun tp!2335467 () Bool)

(declare-fun tp!2335468 () Bool)

(assert (=> b!7871010 (= e!4649852 (and tp!2335467 tp!2335468))))

(declare-fun b!7871011 () Bool)

(declare-fun tp!2335465 () Bool)

(assert (=> b!7871011 (= e!4649852 tp!2335465)))

(declare-fun b!7871009 () Bool)

(assert (=> b!7871009 (= e!4649852 tp_is_empty!52719)))

(declare-fun b!7871012 () Bool)

(declare-fun tp!2335466 () Bool)

(declare-fun tp!2335469 () Bool)

(assert (=> b!7871012 (= e!4649852 (and tp!2335466 tp!2335469))))

(assert (= (and b!7870804 (is-ElementMatch!21160 (regTwo!42832 r2!6138))) b!7871009))

(assert (= (and b!7870804 (is-Concat!30005 (regTwo!42832 r2!6138))) b!7871010))

(assert (= (and b!7870804 (is-Star!21160 (regTwo!42832 r2!6138))) b!7871011))

(assert (= (and b!7870804 (is-Union!21160 (regTwo!42832 r2!6138))) b!7871012))

(declare-fun b!7871017 () Bool)

(declare-fun e!4649855 () Bool)

(declare-fun tp!2335472 () Bool)

(assert (=> b!7871017 (= e!4649855 (and tp_is_empty!52719 tp!2335472))))

(assert (=> b!7870798 (= tp!2335390 e!4649855)))

(assert (= (and b!7870798 (is-Cons!73895 (t!388754 s!14219))) b!7871017))

(declare-fun e!4649856 () Bool)

(assert (=> b!7870792 (= tp!2335389 e!4649856)))

(declare-fun b!7871019 () Bool)

(declare-fun tp!2335475 () Bool)

(declare-fun tp!2335476 () Bool)

(assert (=> b!7871019 (= e!4649856 (and tp!2335475 tp!2335476))))

(declare-fun b!7871020 () Bool)

(declare-fun tp!2335473 () Bool)

(assert (=> b!7871020 (= e!4649856 tp!2335473)))

(declare-fun b!7871018 () Bool)

(assert (=> b!7871018 (= e!4649856 tp_is_empty!52719)))

(declare-fun b!7871021 () Bool)

(declare-fun tp!2335474 () Bool)

(declare-fun tp!2335477 () Bool)

(assert (=> b!7871021 (= e!4649856 (and tp!2335474 tp!2335477))))

(assert (= (and b!7870792 (is-ElementMatch!21160 (reg!21489 r1!6200))) b!7871018))

(assert (= (and b!7870792 (is-Concat!30005 (reg!21489 r1!6200))) b!7871019))

(assert (= (and b!7870792 (is-Star!21160 (reg!21489 r1!6200))) b!7871020))

(assert (= (and b!7870792 (is-Union!21160 (reg!21489 r1!6200))) b!7871021))

(declare-fun e!4649857 () Bool)

(assert (=> b!7870802 (= tp!2335383 e!4649857)))

(declare-fun b!7871023 () Bool)

(declare-fun tp!2335480 () Bool)

(declare-fun tp!2335481 () Bool)

(assert (=> b!7871023 (= e!4649857 (and tp!2335480 tp!2335481))))

(declare-fun b!7871024 () Bool)

(declare-fun tp!2335478 () Bool)

(assert (=> b!7871024 (= e!4649857 tp!2335478)))

(declare-fun b!7871022 () Bool)

(assert (=> b!7871022 (= e!4649857 tp_is_empty!52719)))

(declare-fun b!7871025 () Bool)

(declare-fun tp!2335479 () Bool)

(declare-fun tp!2335482 () Bool)

(assert (=> b!7871025 (= e!4649857 (and tp!2335479 tp!2335482))))

(assert (= (and b!7870802 (is-ElementMatch!21160 (regOne!42833 r2!6138))) b!7871022))

(assert (= (and b!7870802 (is-Concat!30005 (regOne!42833 r2!6138))) b!7871023))

(assert (= (and b!7870802 (is-Star!21160 (regOne!42833 r2!6138))) b!7871024))

(assert (= (and b!7870802 (is-Union!21160 (regOne!42833 r2!6138))) b!7871025))

(declare-fun e!4649858 () Bool)

(assert (=> b!7870802 (= tp!2335382 e!4649858)))

(declare-fun b!7871027 () Bool)

(declare-fun tp!2335485 () Bool)

(declare-fun tp!2335486 () Bool)

(assert (=> b!7871027 (= e!4649858 (and tp!2335485 tp!2335486))))

(declare-fun b!7871028 () Bool)

(declare-fun tp!2335483 () Bool)

(assert (=> b!7871028 (= e!4649858 tp!2335483)))

(declare-fun b!7871026 () Bool)

(assert (=> b!7871026 (= e!4649858 tp_is_empty!52719)))

(declare-fun b!7871029 () Bool)

(declare-fun tp!2335484 () Bool)

(declare-fun tp!2335487 () Bool)

(assert (=> b!7871029 (= e!4649858 (and tp!2335484 tp!2335487))))

(assert (= (and b!7870802 (is-ElementMatch!21160 (regTwo!42833 r2!6138))) b!7871026))

(assert (= (and b!7870802 (is-Concat!30005 (regTwo!42833 r2!6138))) b!7871027))

(assert (= (and b!7870802 (is-Star!21160 (regTwo!42833 r2!6138))) b!7871028))

(assert (= (and b!7870802 (is-Union!21160 (regTwo!42833 r2!6138))) b!7871029))

(push 1)

(assert (not b!7870945))

(assert (not b!7871008))

(assert (not b!7871021))

(assert (not b!7871012))

(assert (not b!7871023))

(assert (not b!7871002))

(assert (not b!7870961))

(assert (not b!7870902))

(assert (not b!7870986))

(assert (not b!7871028))

(assert (not b!7871010))

(assert (not b!7871029))

(assert (not b!7870956))

(assert (not b!7870995))

(assert (not b!7870998))

(assert (not bm!729914))

(assert (not b!7870968))

(assert (not bm!729907))

(assert (not b!7870987))

(assert tp_is_empty!52719)

(assert (not bm!729896))

(assert (not bm!729910))

(assert (not b!7871024))

(assert (not b!7871007))

(assert (not b!7870990))

(assert (not b!7871025))

(assert (not b!7870904))

(assert (not b!7870936))

(assert (not b!7870996))

(assert (not b!7871004))

(assert (not b!7870988))

(assert (not b!7871027))

(assert (not b!7870903))

(assert (not b!7871000))

(assert (not b!7870991))

(assert (not b!7871019))

(assert (not d!2355225))

(assert (not b!7870958))

(assert (not bm!729915))

(assert (not b!7870897))

(assert (not b!7870957))

(assert (not b!7870963))

(assert (not bm!729908))

(assert (not b!7870898))

(assert (not b!7871006))

(assert (not b!7871017))

(assert (not bm!729911))

(assert (not b!7870994))

(assert (not b!7870999))

(assert (not b!7870899))

(assert (not b!7870992))

(assert (not b!7871020))

(assert (not b!7871011))

(assert (not bm!729912))

(assert (not b!7871003))

(assert (not d!2355215))

(assert (not b!7870962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

