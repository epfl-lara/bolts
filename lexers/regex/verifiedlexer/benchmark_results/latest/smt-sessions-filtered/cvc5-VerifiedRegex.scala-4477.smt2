; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!238026 () Bool)

(assert start!238026)

(declare-fun b!2430886 () Bool)

(declare-fun e!1545621 () Bool)

(declare-fun tp!771952 () Bool)

(declare-fun tp!771958 () Bool)

(assert (=> b!2430886 (= e!1545621 (and tp!771952 tp!771958))))

(declare-fun b!2430887 () Bool)

(declare-fun e!1545623 () Bool)

(declare-fun tp!771954 () Bool)

(declare-fun tp!771959 () Bool)

(assert (=> b!2430887 (= e!1545623 (and tp!771954 tp!771959))))

(declare-fun b!2430888 () Bool)

(declare-fun e!1545625 () Bool)

(declare-fun e!1545624 () Bool)

(assert (=> b!2430888 (= e!1545625 (not e!1545624))))

(declare-fun res!1032144 () Bool)

(assert (=> b!2430888 (=> res!1032144 e!1545624)))

(declare-datatypes ((C!14450 0))(
  ( (C!14451 (val!8467 Int)) )
))
(declare-datatypes ((Regex!7146 0))(
  ( (ElementMatch!7146 (c!387812 C!14450)) (Concat!11782 (regOne!14804 Regex!7146) (regTwo!14804 Regex!7146)) (EmptyExpr!7146) (Star!7146 (reg!7475 Regex!7146)) (EmptyLang!7146) (Union!7146 (regOne!14805 Regex!7146) (regTwo!14805 Regex!7146)) )
))
(declare-fun r!13927 () Regex!7146)

(assert (=> b!2430888 (= res!1032144 (not (is-Concat!11782 r!13927)))))

(declare-datatypes ((List!28528 0))(
  ( (Nil!28430) (Cons!28430 (h!33831 C!14450) (t!208505 List!28528)) )
))
(declare-fun s!9460 () List!28528)

(declare-fun matchR!3261 (Regex!7146 List!28528) Bool)

(declare-fun matchRSpec!993 (Regex!7146 List!28528) Bool)

(assert (=> b!2430888 (= (matchR!3261 r!13927 s!9460) (matchRSpec!993 r!13927 s!9460))))

(declare-datatypes ((Unit!41675 0))(
  ( (Unit!41676) )
))
(declare-fun lt!876887 () Unit!41675)

(declare-fun mainMatchTheorem!993 (Regex!7146 List!28528) Unit!41675)

(assert (=> b!2430888 (= lt!876887 (mainMatchTheorem!993 r!13927 s!9460))))

(declare-fun b!2430889 () Bool)

(declare-fun res!1032143 () Bool)

(assert (=> b!2430889 (=> res!1032143 e!1545624)))

(declare-fun validRegex!2863 (Regex!7146) Bool)

(assert (=> b!2430889 (= res!1032143 (not (validRegex!2863 (regOne!14804 r!13927))))))

(declare-fun b!2430890 () Bool)

(declare-fun tp!771953 () Bool)

(assert (=> b!2430890 (= e!1545623 tp!771953)))

(declare-fun b!2430885 () Bool)

(declare-fun e!1545622 () Bool)

(declare-fun tp_is_empty!11705 () Bool)

(declare-fun tp!771957 () Bool)

(assert (=> b!2430885 (= e!1545622 (and tp_is_empty!11705 tp!771957))))

(declare-fun res!1032146 () Bool)

(assert (=> start!238026 (=> (not res!1032146) (not e!1545625))))

(declare-datatypes ((List!28529 0))(
  ( (Nil!28431) (Cons!28431 (h!33832 Regex!7146) (t!208506 List!28529)) )
))
(declare-fun l!9164 () List!28529)

(declare-fun lambda!91660 () Int)

(declare-fun forall!5780 (List!28529 Int) Bool)

(assert (=> start!238026 (= res!1032146 (forall!5780 l!9164 lambda!91660))))

(assert (=> start!238026 e!1545625))

(assert (=> start!238026 e!1545621))

(assert (=> start!238026 e!1545623))

(assert (=> start!238026 e!1545622))

(declare-fun b!2430891 () Bool)

(assert (=> b!2430891 (= e!1545624 (validRegex!2863 (regTwo!14804 r!13927)))))

(declare-fun b!2430892 () Bool)

(assert (=> b!2430892 (= e!1545623 tp_is_empty!11705)))

(declare-fun b!2430893 () Bool)

(declare-fun res!1032145 () Bool)

(assert (=> b!2430893 (=> (not res!1032145) (not e!1545625))))

(declare-fun generalisedConcat!247 (List!28529) Regex!7146)

(assert (=> b!2430893 (= res!1032145 (= r!13927 (generalisedConcat!247 l!9164)))))

(declare-fun b!2430894 () Bool)

(declare-fun tp!771955 () Bool)

(declare-fun tp!771956 () Bool)

(assert (=> b!2430894 (= e!1545623 (and tp!771955 tp!771956))))

(assert (= (and start!238026 res!1032146) b!2430893))

(assert (= (and b!2430893 res!1032145) b!2430888))

(assert (= (and b!2430888 (not res!1032144)) b!2430889))

(assert (= (and b!2430889 (not res!1032143)) b!2430891))

(assert (= (and start!238026 (is-Cons!28431 l!9164)) b!2430886))

(assert (= (and start!238026 (is-ElementMatch!7146 r!13927)) b!2430892))

(assert (= (and start!238026 (is-Concat!11782 r!13927)) b!2430894))

(assert (= (and start!238026 (is-Star!7146 r!13927)) b!2430890))

(assert (= (and start!238026 (is-Union!7146 r!13927)) b!2430887))

(assert (= (and start!238026 (is-Cons!28430 s!9460)) b!2430885))

(declare-fun m!2813417 () Bool)

(assert (=> b!2430889 m!2813417))

(declare-fun m!2813419 () Bool)

(assert (=> b!2430891 m!2813419))

(declare-fun m!2813421 () Bool)

(assert (=> b!2430888 m!2813421))

(declare-fun m!2813423 () Bool)

(assert (=> b!2430888 m!2813423))

(declare-fun m!2813425 () Bool)

(assert (=> b!2430888 m!2813425))

(declare-fun m!2813427 () Bool)

(assert (=> b!2430893 m!2813427))

(declare-fun m!2813429 () Bool)

(assert (=> start!238026 m!2813429))

(push 1)

(assert (not b!2430887))

(assert (not b!2430889))

(assert (not start!238026))

(assert (not b!2430891))

(assert (not b!2430893))

(assert (not b!2430886))

(assert (not b!2430894))

(assert (not b!2430885))

(assert (not b!2430890))

(assert tp_is_empty!11705)

(assert (not b!2430888))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2430944 () Bool)

(declare-fun e!1545655 () Bool)

(declare-fun call!148787 () Bool)

(assert (=> b!2430944 (= e!1545655 call!148787)))

(declare-fun c!387818 () Bool)

(declare-fun call!148785 () Bool)

(declare-fun bm!148780 () Bool)

(declare-fun c!387819 () Bool)

(assert (=> bm!148780 (= call!148785 (validRegex!2863 (ite c!387818 (reg!7475 (regOne!14804 r!13927)) (ite c!387819 (regOne!14805 (regOne!14804 r!13927)) (regTwo!14804 (regOne!14804 r!13927))))))))

(declare-fun b!2430945 () Bool)

(declare-fun e!1545659 () Bool)

(declare-fun call!148786 () Bool)

(assert (=> b!2430945 (= e!1545659 call!148786)))

(declare-fun b!2430946 () Bool)

(declare-fun e!1545660 () Bool)

(declare-fun e!1545661 () Bool)

(assert (=> b!2430946 (= e!1545660 e!1545661)))

(assert (=> b!2430946 (= c!387819 (is-Union!7146 (regOne!14804 r!13927)))))

(declare-fun bm!148781 () Bool)

(assert (=> bm!148781 (= call!148786 call!148785)))

(declare-fun b!2430947 () Bool)

(declare-fun res!1032170 () Bool)

(assert (=> b!2430947 (=> (not res!1032170) (not e!1545655))))

(assert (=> b!2430947 (= res!1032170 call!148786)))

(assert (=> b!2430947 (= e!1545661 e!1545655)))

(declare-fun b!2430948 () Bool)

(declare-fun e!1545658 () Bool)

(assert (=> b!2430948 (= e!1545658 e!1545660)))

(assert (=> b!2430948 (= c!387818 (is-Star!7146 (regOne!14804 r!13927)))))

(declare-fun bm!148782 () Bool)

(assert (=> bm!148782 (= call!148787 (validRegex!2863 (ite c!387819 (regTwo!14805 (regOne!14804 r!13927)) (regOne!14804 (regOne!14804 r!13927)))))))

(declare-fun b!2430949 () Bool)

(declare-fun e!1545656 () Bool)

(assert (=> b!2430949 (= e!1545660 e!1545656)))

(declare-fun res!1032169 () Bool)

(declare-fun nullable!2178 (Regex!7146) Bool)

(assert (=> b!2430949 (= res!1032169 (not (nullable!2178 (reg!7475 (regOne!14804 r!13927)))))))

(assert (=> b!2430949 (=> (not res!1032169) (not e!1545656))))

(declare-fun b!2430950 () Bool)

(assert (=> b!2430950 (= e!1545656 call!148785)))

(declare-fun b!2430951 () Bool)

(declare-fun e!1545657 () Bool)

(assert (=> b!2430951 (= e!1545657 e!1545659)))

(declare-fun res!1032171 () Bool)

(assert (=> b!2430951 (=> (not res!1032171) (not e!1545659))))

(assert (=> b!2430951 (= res!1032171 call!148787)))

(declare-fun b!2430943 () Bool)

(declare-fun res!1032172 () Bool)

(assert (=> b!2430943 (=> res!1032172 e!1545657)))

(assert (=> b!2430943 (= res!1032172 (not (is-Concat!11782 (regOne!14804 r!13927))))))

(assert (=> b!2430943 (= e!1545661 e!1545657)))

(declare-fun d!703166 () Bool)

(declare-fun res!1032173 () Bool)

(assert (=> d!703166 (=> res!1032173 e!1545658)))

(assert (=> d!703166 (= res!1032173 (is-ElementMatch!7146 (regOne!14804 r!13927)))))

(assert (=> d!703166 (= (validRegex!2863 (regOne!14804 r!13927)) e!1545658)))

(assert (= (and d!703166 (not res!1032173)) b!2430948))

(assert (= (and b!2430948 c!387818) b!2430949))

(assert (= (and b!2430948 (not c!387818)) b!2430946))

(assert (= (and b!2430949 res!1032169) b!2430950))

(assert (= (and b!2430946 c!387819) b!2430947))

(assert (= (and b!2430946 (not c!387819)) b!2430943))

(assert (= (and b!2430947 res!1032170) b!2430944))

(assert (= (and b!2430943 (not res!1032172)) b!2430951))

(assert (= (and b!2430951 res!1032171) b!2430945))

(assert (= (or b!2430947 b!2430945) bm!148781))

(assert (= (or b!2430944 b!2430951) bm!148782))

(assert (= (or b!2430950 bm!148781) bm!148780))

(declare-fun m!2813445 () Bool)

(assert (=> bm!148780 m!2813445))

(declare-fun m!2813447 () Bool)

(assert (=> bm!148782 m!2813447))

(declare-fun m!2813449 () Bool)

(assert (=> b!2430949 m!2813449))

(assert (=> b!2430889 d!703166))

(declare-fun bs!464145 () Bool)

(declare-fun d!703168 () Bool)

(assert (= bs!464145 (and d!703168 start!238026)))

(declare-fun lambda!91666 () Int)

(assert (=> bs!464145 (= lambda!91666 lambda!91660)))

(declare-fun b!2430972 () Bool)

(declare-fun e!1545678 () Bool)

(declare-fun e!1545677 () Bool)

(assert (=> b!2430972 (= e!1545678 e!1545677)))

(declare-fun c!387831 () Bool)

(declare-fun isEmpty!16466 (List!28529) Bool)

(declare-fun tail!3768 (List!28529) List!28529)

(assert (=> b!2430972 (= c!387831 (isEmpty!16466 (tail!3768 l!9164)))))

(declare-fun b!2430973 () Bool)

(declare-fun e!1545676 () Regex!7146)

(assert (=> b!2430973 (= e!1545676 (h!33832 l!9164))))

(declare-fun b!2430975 () Bool)

(declare-fun lt!876893 () Regex!7146)

(declare-fun isConcat!196 (Regex!7146) Bool)

(assert (=> b!2430975 (= e!1545677 (isConcat!196 lt!876893))))

(declare-fun b!2430976 () Bool)

(declare-fun isEmptyExpr!196 (Regex!7146) Bool)

(assert (=> b!2430976 (= e!1545678 (isEmptyExpr!196 lt!876893))))

(declare-fun b!2430977 () Bool)

(declare-fun head!5495 (List!28529) Regex!7146)

(assert (=> b!2430977 (= e!1545677 (= lt!876893 (head!5495 l!9164)))))

(declare-fun b!2430978 () Bool)

(declare-fun e!1545674 () Regex!7146)

(assert (=> b!2430978 (= e!1545674 (Concat!11782 (h!33832 l!9164) (generalisedConcat!247 (t!208506 l!9164))))))

(declare-fun b!2430979 () Bool)

(assert (=> b!2430979 (= e!1545676 e!1545674)))

(declare-fun c!387830 () Bool)

(assert (=> b!2430979 (= c!387830 (is-Cons!28431 l!9164))))

(declare-fun e!1545675 () Bool)

(assert (=> d!703168 e!1545675))

(declare-fun res!1032178 () Bool)

(assert (=> d!703168 (=> (not res!1032178) (not e!1545675))))

(assert (=> d!703168 (= res!1032178 (validRegex!2863 lt!876893))))

(assert (=> d!703168 (= lt!876893 e!1545676)))

(declare-fun c!387829 () Bool)

(declare-fun e!1545679 () Bool)

(assert (=> d!703168 (= c!387829 e!1545679)))

(declare-fun res!1032179 () Bool)

(assert (=> d!703168 (=> (not res!1032179) (not e!1545679))))

(assert (=> d!703168 (= res!1032179 (is-Cons!28431 l!9164))))

(assert (=> d!703168 (forall!5780 l!9164 lambda!91666)))

(assert (=> d!703168 (= (generalisedConcat!247 l!9164) lt!876893)))

(declare-fun b!2430974 () Bool)

(assert (=> b!2430974 (= e!1545679 (isEmpty!16466 (t!208506 l!9164)))))

(declare-fun b!2430980 () Bool)

(assert (=> b!2430980 (= e!1545674 EmptyExpr!7146)))

(declare-fun b!2430981 () Bool)

(assert (=> b!2430981 (= e!1545675 e!1545678)))

(declare-fun c!387828 () Bool)

(assert (=> b!2430981 (= c!387828 (isEmpty!16466 l!9164))))

(assert (= (and d!703168 res!1032179) b!2430974))

(assert (= (and d!703168 c!387829) b!2430973))

(assert (= (and d!703168 (not c!387829)) b!2430979))

(assert (= (and b!2430979 c!387830) b!2430978))

(assert (= (and b!2430979 (not c!387830)) b!2430980))

(assert (= (and d!703168 res!1032178) b!2430981))

(assert (= (and b!2430981 c!387828) b!2430976))

(assert (= (and b!2430981 (not c!387828)) b!2430972))

(assert (= (and b!2430972 c!387831) b!2430977))

(assert (= (and b!2430972 (not c!387831)) b!2430975))

(declare-fun m!2813451 () Bool)

(assert (=> d!703168 m!2813451))

(declare-fun m!2813453 () Bool)

(assert (=> d!703168 m!2813453))

(declare-fun m!2813455 () Bool)

(assert (=> b!2430972 m!2813455))

(assert (=> b!2430972 m!2813455))

(declare-fun m!2813457 () Bool)

(assert (=> b!2430972 m!2813457))

(declare-fun m!2813459 () Bool)

(assert (=> b!2430974 m!2813459))

(declare-fun m!2813461 () Bool)

(assert (=> b!2430976 m!2813461))

(declare-fun m!2813463 () Bool)

(assert (=> b!2430977 m!2813463))

(declare-fun m!2813465 () Bool)

(assert (=> b!2430975 m!2813465))

(declare-fun m!2813467 () Bool)

(assert (=> b!2430978 m!2813467))

(declare-fun m!2813469 () Bool)

(assert (=> b!2430981 m!2813469))

(assert (=> b!2430893 d!703168))

(declare-fun b!2431010 () Bool)

(declare-fun e!1545696 () Bool)

(declare-fun lt!876896 () Bool)

(declare-fun call!148790 () Bool)

(assert (=> b!2431010 (= e!1545696 (= lt!876896 call!148790))))

(declare-fun b!2431011 () Bool)

(declare-fun res!1032203 () Bool)

(declare-fun e!1545698 () Bool)

(assert (=> b!2431011 (=> res!1032203 e!1545698)))

(declare-fun e!1545697 () Bool)

(assert (=> b!2431011 (= res!1032203 e!1545697)))

(declare-fun res!1032201 () Bool)

(assert (=> b!2431011 (=> (not res!1032201) (not e!1545697))))

(assert (=> b!2431011 (= res!1032201 lt!876896)))

(declare-fun b!2431012 () Bool)

(declare-fun e!1545699 () Bool)

(assert (=> b!2431012 (= e!1545699 (nullable!2178 r!13927))))

(declare-fun d!703172 () Bool)

(assert (=> d!703172 e!1545696))

(declare-fun c!387839 () Bool)

(assert (=> d!703172 (= c!387839 (is-EmptyExpr!7146 r!13927))))

(assert (=> d!703172 (= lt!876896 e!1545699)))

(declare-fun c!387838 () Bool)

(declare-fun isEmpty!16467 (List!28528) Bool)

(assert (=> d!703172 (= c!387838 (isEmpty!16467 s!9460))))

(assert (=> d!703172 (validRegex!2863 r!13927)))

(assert (=> d!703172 (= (matchR!3261 r!13927 s!9460) lt!876896)))

(declare-fun b!2431013 () Bool)

(declare-fun e!1545695 () Bool)

(assert (=> b!2431013 (= e!1545696 e!1545695)))

(declare-fun c!387840 () Bool)

(assert (=> b!2431013 (= c!387840 (is-EmptyLang!7146 r!13927))))

(declare-fun b!2431014 () Bool)

(declare-fun e!1545700 () Bool)

(assert (=> b!2431014 (= e!1545698 e!1545700)))

(declare-fun res!1032200 () Bool)

(assert (=> b!2431014 (=> (not res!1032200) (not e!1545700))))

(assert (=> b!2431014 (= res!1032200 (not lt!876896))))

(declare-fun b!2431015 () Bool)

(declare-fun derivativeStep!1833 (Regex!7146 C!14450) Regex!7146)

(declare-fun head!5496 (List!28528) C!14450)

(declare-fun tail!3769 (List!28528) List!28528)

(assert (=> b!2431015 (= e!1545699 (matchR!3261 (derivativeStep!1833 r!13927 (head!5496 s!9460)) (tail!3769 s!9460)))))

(declare-fun b!2431016 () Bool)

(assert (=> b!2431016 (= e!1545695 (not lt!876896))))

(declare-fun b!2431017 () Bool)

(declare-fun res!1032198 () Bool)

(assert (=> b!2431017 (=> (not res!1032198) (not e!1545697))))

(assert (=> b!2431017 (= res!1032198 (not call!148790))))

(declare-fun b!2431018 () Bool)

(assert (=> b!2431018 (= e!1545697 (= (head!5496 s!9460) (c!387812 r!13927)))))

(declare-fun b!2431019 () Bool)

(declare-fun res!1032202 () Bool)

(declare-fun e!1545694 () Bool)

(assert (=> b!2431019 (=> res!1032202 e!1545694)))

(assert (=> b!2431019 (= res!1032202 (not (isEmpty!16467 (tail!3769 s!9460))))))

(declare-fun bm!148785 () Bool)

(assert (=> bm!148785 (= call!148790 (isEmpty!16467 s!9460))))

(declare-fun b!2431020 () Bool)

(assert (=> b!2431020 (= e!1545700 e!1545694)))

(declare-fun res!1032197 () Bool)

(assert (=> b!2431020 (=> res!1032197 e!1545694)))

(assert (=> b!2431020 (= res!1032197 call!148790)))

(declare-fun b!2431021 () Bool)

(declare-fun res!1032199 () Bool)

(assert (=> b!2431021 (=> res!1032199 e!1545698)))

(assert (=> b!2431021 (= res!1032199 (not (is-ElementMatch!7146 r!13927)))))

(assert (=> b!2431021 (= e!1545695 e!1545698)))

(declare-fun b!2431022 () Bool)

(declare-fun res!1032196 () Bool)

(assert (=> b!2431022 (=> (not res!1032196) (not e!1545697))))

(assert (=> b!2431022 (= res!1032196 (isEmpty!16467 (tail!3769 s!9460)))))

(declare-fun b!2431023 () Bool)

(assert (=> b!2431023 (= e!1545694 (not (= (head!5496 s!9460) (c!387812 r!13927))))))

(assert (= (and d!703172 c!387838) b!2431012))

(assert (= (and d!703172 (not c!387838)) b!2431015))

(assert (= (and d!703172 c!387839) b!2431010))

(assert (= (and d!703172 (not c!387839)) b!2431013))

(assert (= (and b!2431013 c!387840) b!2431016))

(assert (= (and b!2431013 (not c!387840)) b!2431021))

(assert (= (and b!2431021 (not res!1032199)) b!2431011))

(assert (= (and b!2431011 res!1032201) b!2431017))

(assert (= (and b!2431017 res!1032198) b!2431022))

(assert (= (and b!2431022 res!1032196) b!2431018))

(assert (= (and b!2431011 (not res!1032203)) b!2431014))

(assert (= (and b!2431014 res!1032200) b!2431020))

(assert (= (and b!2431020 (not res!1032197)) b!2431019))

(assert (= (and b!2431019 (not res!1032202)) b!2431023))

(assert (= (or b!2431010 b!2431017 b!2431020) bm!148785))

(declare-fun m!2813471 () Bool)

(assert (=> b!2431012 m!2813471))

(declare-fun m!2813473 () Bool)

(assert (=> bm!148785 m!2813473))

(declare-fun m!2813475 () Bool)

(assert (=> b!2431015 m!2813475))

(assert (=> b!2431015 m!2813475))

(declare-fun m!2813477 () Bool)

(assert (=> b!2431015 m!2813477))

(declare-fun m!2813479 () Bool)

(assert (=> b!2431015 m!2813479))

(assert (=> b!2431015 m!2813477))

(assert (=> b!2431015 m!2813479))

(declare-fun m!2813481 () Bool)

(assert (=> b!2431015 m!2813481))

(assert (=> b!2431018 m!2813475))

(assert (=> b!2431019 m!2813479))

(assert (=> b!2431019 m!2813479))

(declare-fun m!2813483 () Bool)

(assert (=> b!2431019 m!2813483))

(assert (=> b!2431022 m!2813479))

(assert (=> b!2431022 m!2813479))

(assert (=> b!2431022 m!2813483))

(assert (=> b!2431023 m!2813475))

(assert (=> d!703172 m!2813473))

(declare-fun m!2813485 () Bool)

(assert (=> d!703172 m!2813485))

(assert (=> b!2430888 d!703172))

(declare-fun b!2431094 () Bool)

(assert (=> b!2431094 true))

(assert (=> b!2431094 true))

(declare-fun bs!464147 () Bool)

(declare-fun b!2431086 () Bool)

(assert (= bs!464147 (and b!2431086 b!2431094)))

(declare-fun lambda!91675 () Int)

(declare-fun lambda!91674 () Int)

(assert (=> bs!464147 (not (= lambda!91675 lambda!91674))))

(assert (=> b!2431086 true))

(assert (=> b!2431086 true))

(declare-fun c!387861 () Bool)

(declare-fun bm!148790 () Bool)

(declare-fun call!148795 () Bool)

(declare-fun Exists!1182 (Int) Bool)

(assert (=> bm!148790 (= call!148795 (Exists!1182 (ite c!387861 lambda!91674 lambda!91675)))))

(declare-fun b!2431087 () Bool)

(declare-fun e!1545737 () Bool)

(assert (=> b!2431087 (= e!1545737 (matchRSpec!993 (regTwo!14805 r!13927) s!9460))))

(declare-fun b!2431088 () Bool)

(declare-fun e!1545738 () Bool)

(assert (=> b!2431088 (= e!1545738 e!1545737)))

(declare-fun res!1032228 () Bool)

(assert (=> b!2431088 (= res!1032228 (matchRSpec!993 (regOne!14805 r!13927) s!9460))))

(assert (=> b!2431088 (=> res!1032228 e!1545737)))

(declare-fun b!2431089 () Bool)

(declare-fun res!1032227 () Bool)

(declare-fun e!1545743 () Bool)

(assert (=> b!2431089 (=> res!1032227 e!1545743)))

(declare-fun call!148796 () Bool)

(assert (=> b!2431089 (= res!1032227 call!148796)))

(declare-fun e!1545739 () Bool)

(assert (=> b!2431089 (= e!1545739 e!1545743)))

(declare-fun b!2431090 () Bool)

(declare-fun c!387864 () Bool)

(assert (=> b!2431090 (= c!387864 (is-Union!7146 r!13927))))

(declare-fun e!1545742 () Bool)

(assert (=> b!2431090 (= e!1545742 e!1545738)))

(declare-fun b!2431091 () Bool)

(declare-fun e!1545741 () Bool)

(declare-fun e!1545740 () Bool)

(assert (=> b!2431091 (= e!1545741 e!1545740)))

(declare-fun res!1032226 () Bool)

(assert (=> b!2431091 (= res!1032226 (not (is-EmptyLang!7146 r!13927)))))

(assert (=> b!2431091 (=> (not res!1032226) (not e!1545740))))

(declare-fun b!2431092 () Bool)

(assert (=> b!2431092 (= e!1545741 call!148796)))

(declare-fun bm!148791 () Bool)

(assert (=> bm!148791 (= call!148796 (isEmpty!16467 s!9460))))

(declare-fun b!2431093 () Bool)

(assert (=> b!2431093 (= e!1545738 e!1545739)))

(assert (=> b!2431093 (= c!387861 (is-Star!7146 r!13927))))

(assert (=> b!2431094 (= e!1545743 call!148795)))

(declare-fun b!2431095 () Bool)

(assert (=> b!2431095 (= e!1545742 (= s!9460 (Cons!28430 (c!387812 r!13927) Nil!28430)))))

(declare-fun b!2431096 () Bool)

(declare-fun c!387862 () Bool)

(assert (=> b!2431096 (= c!387862 (is-ElementMatch!7146 r!13927))))

(assert (=> b!2431096 (= e!1545740 e!1545742)))

(assert (=> b!2431086 (= e!1545739 call!148795)))

(declare-fun d!703174 () Bool)

(declare-fun c!387863 () Bool)

(assert (=> d!703174 (= c!387863 (is-EmptyExpr!7146 r!13927))))

(assert (=> d!703174 (= (matchRSpec!993 r!13927 s!9460) e!1545741)))

(assert (= (and d!703174 c!387863) b!2431092))

(assert (= (and d!703174 (not c!387863)) b!2431091))

(assert (= (and b!2431091 res!1032226) b!2431096))

(assert (= (and b!2431096 c!387862) b!2431095))

(assert (= (and b!2431096 (not c!387862)) b!2431090))

(assert (= (and b!2431090 c!387864) b!2431088))

(assert (= (and b!2431090 (not c!387864)) b!2431093))

(assert (= (and b!2431088 (not res!1032228)) b!2431087))

(assert (= (and b!2431093 c!387861) b!2431089))

(assert (= (and b!2431093 (not c!387861)) b!2431086))

(assert (= (and b!2431089 (not res!1032227)) b!2431094))

(assert (= (or b!2431094 b!2431086) bm!148790))

(assert (= (or b!2431092 b!2431089) bm!148791))

(declare-fun m!2813507 () Bool)

(assert (=> bm!148790 m!2813507))

(declare-fun m!2813509 () Bool)

(assert (=> b!2431087 m!2813509))

(declare-fun m!2813511 () Bool)

(assert (=> b!2431088 m!2813511))

(assert (=> bm!148791 m!2813473))

(assert (=> b!2430888 d!703174))

(declare-fun d!703178 () Bool)

(assert (=> d!703178 (= (matchR!3261 r!13927 s!9460) (matchRSpec!993 r!13927 s!9460))))

(declare-fun lt!876902 () Unit!41675)

(declare-fun choose!14406 (Regex!7146 List!28528) Unit!41675)

(assert (=> d!703178 (= lt!876902 (choose!14406 r!13927 s!9460))))

(assert (=> d!703178 (validRegex!2863 r!13927)))

(assert (=> d!703178 (= (mainMatchTheorem!993 r!13927 s!9460) lt!876902)))

(declare-fun bs!464148 () Bool)

(assert (= bs!464148 d!703178))

(assert (=> bs!464148 m!2813421))

(assert (=> bs!464148 m!2813423))

(declare-fun m!2813513 () Bool)

(assert (=> bs!464148 m!2813513))

(assert (=> bs!464148 m!2813485))

(assert (=> b!2430888 d!703178))

(declare-fun b!2431120 () Bool)

(declare-fun e!1545758 () Bool)

(declare-fun call!148803 () Bool)

(assert (=> b!2431120 (= e!1545758 call!148803)))

(declare-fun c!387869 () Bool)

(declare-fun bm!148796 () Bool)

(declare-fun call!148801 () Bool)

(declare-fun c!387870 () Bool)

(assert (=> bm!148796 (= call!148801 (validRegex!2863 (ite c!387869 (reg!7475 (regTwo!14804 r!13927)) (ite c!387870 (regOne!14805 (regTwo!14804 r!13927)) (regTwo!14804 (regTwo!14804 r!13927))))))))

(declare-fun b!2431121 () Bool)

(declare-fun e!1545762 () Bool)

(declare-fun call!148802 () Bool)

(assert (=> b!2431121 (= e!1545762 call!148802)))

(declare-fun b!2431122 () Bool)

(declare-fun e!1545763 () Bool)

(declare-fun e!1545764 () Bool)

(assert (=> b!2431122 (= e!1545763 e!1545764)))

(assert (=> b!2431122 (= c!387870 (is-Union!7146 (regTwo!14804 r!13927)))))

(declare-fun bm!148797 () Bool)

(assert (=> bm!148797 (= call!148802 call!148801)))

(declare-fun b!2431123 () Bool)

(declare-fun res!1032240 () Bool)

(assert (=> b!2431123 (=> (not res!1032240) (not e!1545758))))

(assert (=> b!2431123 (= res!1032240 call!148802)))

(assert (=> b!2431123 (= e!1545764 e!1545758)))

(declare-fun b!2431124 () Bool)

(declare-fun e!1545761 () Bool)

(assert (=> b!2431124 (= e!1545761 e!1545763)))

(assert (=> b!2431124 (= c!387869 (is-Star!7146 (regTwo!14804 r!13927)))))

(declare-fun bm!148798 () Bool)

(assert (=> bm!148798 (= call!148803 (validRegex!2863 (ite c!387870 (regTwo!14805 (regTwo!14804 r!13927)) (regOne!14804 (regTwo!14804 r!13927)))))))

(declare-fun b!2431125 () Bool)

(declare-fun e!1545759 () Bool)

(assert (=> b!2431125 (= e!1545763 e!1545759)))

(declare-fun res!1032239 () Bool)

(assert (=> b!2431125 (= res!1032239 (not (nullable!2178 (reg!7475 (regTwo!14804 r!13927)))))))

(assert (=> b!2431125 (=> (not res!1032239) (not e!1545759))))

(declare-fun b!2431126 () Bool)

(assert (=> b!2431126 (= e!1545759 call!148801)))

(declare-fun b!2431127 () Bool)

(declare-fun e!1545760 () Bool)

(assert (=> b!2431127 (= e!1545760 e!1545762)))

(declare-fun res!1032241 () Bool)

(assert (=> b!2431127 (=> (not res!1032241) (not e!1545762))))

(assert (=> b!2431127 (= res!1032241 call!148803)))

(declare-fun b!2431119 () Bool)

(declare-fun res!1032242 () Bool)

(assert (=> b!2431119 (=> res!1032242 e!1545760)))

(assert (=> b!2431119 (= res!1032242 (not (is-Concat!11782 (regTwo!14804 r!13927))))))

(assert (=> b!2431119 (= e!1545764 e!1545760)))

(declare-fun d!703180 () Bool)

(declare-fun res!1032243 () Bool)

(assert (=> d!703180 (=> res!1032243 e!1545761)))

(assert (=> d!703180 (= res!1032243 (is-ElementMatch!7146 (regTwo!14804 r!13927)))))

(assert (=> d!703180 (= (validRegex!2863 (regTwo!14804 r!13927)) e!1545761)))

(assert (= (and d!703180 (not res!1032243)) b!2431124))

(assert (= (and b!2431124 c!387869) b!2431125))

(assert (= (and b!2431124 (not c!387869)) b!2431122))

(assert (= (and b!2431125 res!1032239) b!2431126))

(assert (= (and b!2431122 c!387870) b!2431123))

(assert (= (and b!2431122 (not c!387870)) b!2431119))

(assert (= (and b!2431123 res!1032240) b!2431120))

(assert (= (and b!2431119 (not res!1032242)) b!2431127))

(assert (= (and b!2431127 res!1032241) b!2431121))

(assert (= (or b!2431123 b!2431121) bm!148797))

(assert (= (or b!2431120 b!2431127) bm!148798))

(assert (= (or b!2431126 bm!148797) bm!148796))

(declare-fun m!2813515 () Bool)

(assert (=> bm!148796 m!2813515))

(declare-fun m!2813517 () Bool)

(assert (=> bm!148798 m!2813517))

(declare-fun m!2813519 () Bool)

(assert (=> b!2431125 m!2813519))

(assert (=> b!2430891 d!703180))

(declare-fun d!703182 () Bool)

(declare-fun res!1032248 () Bool)

(declare-fun e!1545769 () Bool)

(assert (=> d!703182 (=> res!1032248 e!1545769)))

(assert (=> d!703182 (= res!1032248 (is-Nil!28431 l!9164))))

(assert (=> d!703182 (= (forall!5780 l!9164 lambda!91660) e!1545769)))

(declare-fun b!2431132 () Bool)

(declare-fun e!1545770 () Bool)

(assert (=> b!2431132 (= e!1545769 e!1545770)))

(declare-fun res!1032249 () Bool)

(assert (=> b!2431132 (=> (not res!1032249) (not e!1545770))))

(declare-fun dynLambda!12236 (Int Regex!7146) Bool)

(assert (=> b!2431132 (= res!1032249 (dynLambda!12236 lambda!91660 (h!33832 l!9164)))))

(declare-fun b!2431133 () Bool)

(assert (=> b!2431133 (= e!1545770 (forall!5780 (t!208506 l!9164) lambda!91660))))

(assert (= (and d!703182 (not res!1032248)) b!2431132))

(assert (= (and b!2431132 res!1032249) b!2431133))

(declare-fun b_lambda!74787 () Bool)

(assert (=> (not b_lambda!74787) (not b!2431132)))

(declare-fun m!2813521 () Bool)

(assert (=> b!2431132 m!2813521))

(declare-fun m!2813523 () Bool)

(assert (=> b!2431133 m!2813523))

(assert (=> start!238026 d!703182))

(declare-fun b!2431144 () Bool)

(declare-fun e!1545773 () Bool)

(assert (=> b!2431144 (= e!1545773 tp_is_empty!11705)))

(declare-fun b!2431147 () Bool)

(declare-fun tp!771998 () Bool)

(declare-fun tp!771996 () Bool)

(assert (=> b!2431147 (= e!1545773 (and tp!771998 tp!771996))))

(assert (=> b!2430890 (= tp!771953 e!1545773)))

(declare-fun b!2431145 () Bool)

(declare-fun tp!771995 () Bool)

(declare-fun tp!771997 () Bool)

(assert (=> b!2431145 (= e!1545773 (and tp!771995 tp!771997))))

(declare-fun b!2431146 () Bool)

(declare-fun tp!771994 () Bool)

(assert (=> b!2431146 (= e!1545773 tp!771994)))

(assert (= (and b!2430890 (is-ElementMatch!7146 (reg!7475 r!13927))) b!2431144))

(assert (= (and b!2430890 (is-Concat!11782 (reg!7475 r!13927))) b!2431145))

(assert (= (and b!2430890 (is-Star!7146 (reg!7475 r!13927))) b!2431146))

(assert (= (and b!2430890 (is-Union!7146 (reg!7475 r!13927))) b!2431147))

(declare-fun b!2431148 () Bool)

(declare-fun e!1545774 () Bool)

(assert (=> b!2431148 (= e!1545774 tp_is_empty!11705)))

(declare-fun b!2431151 () Bool)

(declare-fun tp!772003 () Bool)

(declare-fun tp!772001 () Bool)

(assert (=> b!2431151 (= e!1545774 (and tp!772003 tp!772001))))

(assert (=> b!2430894 (= tp!771955 e!1545774)))

(declare-fun b!2431149 () Bool)

(declare-fun tp!772000 () Bool)

(declare-fun tp!772002 () Bool)

(assert (=> b!2431149 (= e!1545774 (and tp!772000 tp!772002))))

(declare-fun b!2431150 () Bool)

(declare-fun tp!771999 () Bool)

(assert (=> b!2431150 (= e!1545774 tp!771999)))

(assert (= (and b!2430894 (is-ElementMatch!7146 (regOne!14804 r!13927))) b!2431148))

(assert (= (and b!2430894 (is-Concat!11782 (regOne!14804 r!13927))) b!2431149))

(assert (= (and b!2430894 (is-Star!7146 (regOne!14804 r!13927))) b!2431150))

(assert (= (and b!2430894 (is-Union!7146 (regOne!14804 r!13927))) b!2431151))

(declare-fun b!2431152 () Bool)

(declare-fun e!1545775 () Bool)

(assert (=> b!2431152 (= e!1545775 tp_is_empty!11705)))

(declare-fun b!2431155 () Bool)

(declare-fun tp!772008 () Bool)

(declare-fun tp!772006 () Bool)

(assert (=> b!2431155 (= e!1545775 (and tp!772008 tp!772006))))

(assert (=> b!2430894 (= tp!771956 e!1545775)))

(declare-fun b!2431153 () Bool)

(declare-fun tp!772005 () Bool)

(declare-fun tp!772007 () Bool)

(assert (=> b!2431153 (= e!1545775 (and tp!772005 tp!772007))))

(declare-fun b!2431154 () Bool)

(declare-fun tp!772004 () Bool)

(assert (=> b!2431154 (= e!1545775 tp!772004)))

(assert (= (and b!2430894 (is-ElementMatch!7146 (regTwo!14804 r!13927))) b!2431152))

(assert (= (and b!2430894 (is-Concat!11782 (regTwo!14804 r!13927))) b!2431153))

(assert (= (and b!2430894 (is-Star!7146 (regTwo!14804 r!13927))) b!2431154))

(assert (= (and b!2430894 (is-Union!7146 (regTwo!14804 r!13927))) b!2431155))

(declare-fun b!2431156 () Bool)

(declare-fun e!1545776 () Bool)

(assert (=> b!2431156 (= e!1545776 tp_is_empty!11705)))

(declare-fun b!2431159 () Bool)

(declare-fun tp!772013 () Bool)

(declare-fun tp!772011 () Bool)

(assert (=> b!2431159 (= e!1545776 (and tp!772013 tp!772011))))

(assert (=> b!2430887 (= tp!771954 e!1545776)))

(declare-fun b!2431157 () Bool)

(declare-fun tp!772010 () Bool)

(declare-fun tp!772012 () Bool)

(assert (=> b!2431157 (= e!1545776 (and tp!772010 tp!772012))))

(declare-fun b!2431158 () Bool)

(declare-fun tp!772009 () Bool)

(assert (=> b!2431158 (= e!1545776 tp!772009)))

(assert (= (and b!2430887 (is-ElementMatch!7146 (regOne!14805 r!13927))) b!2431156))

(assert (= (and b!2430887 (is-Concat!11782 (regOne!14805 r!13927))) b!2431157))

(assert (= (and b!2430887 (is-Star!7146 (regOne!14805 r!13927))) b!2431158))

(assert (= (and b!2430887 (is-Union!7146 (regOne!14805 r!13927))) b!2431159))

(declare-fun b!2431160 () Bool)

(declare-fun e!1545777 () Bool)

(assert (=> b!2431160 (= e!1545777 tp_is_empty!11705)))

(declare-fun b!2431163 () Bool)

(declare-fun tp!772018 () Bool)

(declare-fun tp!772016 () Bool)

(assert (=> b!2431163 (= e!1545777 (and tp!772018 tp!772016))))

(assert (=> b!2430887 (= tp!771959 e!1545777)))

(declare-fun b!2431161 () Bool)

(declare-fun tp!772015 () Bool)

(declare-fun tp!772017 () Bool)

(assert (=> b!2431161 (= e!1545777 (and tp!772015 tp!772017))))

(declare-fun b!2431162 () Bool)

(declare-fun tp!772014 () Bool)

(assert (=> b!2431162 (= e!1545777 tp!772014)))

(assert (= (and b!2430887 (is-ElementMatch!7146 (regTwo!14805 r!13927))) b!2431160))

(assert (= (and b!2430887 (is-Concat!11782 (regTwo!14805 r!13927))) b!2431161))

(assert (= (and b!2430887 (is-Star!7146 (regTwo!14805 r!13927))) b!2431162))

(assert (= (and b!2430887 (is-Union!7146 (regTwo!14805 r!13927))) b!2431163))

(declare-fun b!2431164 () Bool)

(declare-fun e!1545778 () Bool)

(assert (=> b!2431164 (= e!1545778 tp_is_empty!11705)))

(declare-fun b!2431167 () Bool)

(declare-fun tp!772023 () Bool)

(declare-fun tp!772021 () Bool)

(assert (=> b!2431167 (= e!1545778 (and tp!772023 tp!772021))))

(assert (=> b!2430886 (= tp!771952 e!1545778)))

(declare-fun b!2431165 () Bool)

(declare-fun tp!772020 () Bool)

(declare-fun tp!772022 () Bool)

(assert (=> b!2431165 (= e!1545778 (and tp!772020 tp!772022))))

(declare-fun b!2431166 () Bool)

(declare-fun tp!772019 () Bool)

(assert (=> b!2431166 (= e!1545778 tp!772019)))

(assert (= (and b!2430886 (is-ElementMatch!7146 (h!33832 l!9164))) b!2431164))

(assert (= (and b!2430886 (is-Concat!11782 (h!33832 l!9164))) b!2431165))

(assert (= (and b!2430886 (is-Star!7146 (h!33832 l!9164))) b!2431166))

(assert (= (and b!2430886 (is-Union!7146 (h!33832 l!9164))) b!2431167))

(declare-fun b!2431172 () Bool)

(declare-fun e!1545781 () Bool)

(declare-fun tp!772028 () Bool)

(declare-fun tp!772029 () Bool)

(assert (=> b!2431172 (= e!1545781 (and tp!772028 tp!772029))))

(assert (=> b!2430886 (= tp!771958 e!1545781)))

(assert (= (and b!2430886 (is-Cons!28431 (t!208506 l!9164))) b!2431172))

(declare-fun b!2431177 () Bool)

(declare-fun e!1545784 () Bool)

(declare-fun tp!772032 () Bool)

(assert (=> b!2431177 (= e!1545784 (and tp_is_empty!11705 tp!772032))))

(assert (=> b!2430885 (= tp!771957 e!1545784)))

(assert (= (and b!2430885 (is-Cons!28430 (t!208505 s!9460))) b!2431177))

(declare-fun b_lambda!74789 () Bool)

(assert (= b_lambda!74787 (or start!238026 b_lambda!74789)))

(declare-fun bs!464149 () Bool)

(declare-fun d!703184 () Bool)

(assert (= bs!464149 (and d!703184 start!238026)))

(assert (=> bs!464149 (= (dynLambda!12236 lambda!91660 (h!33832 l!9164)) (validRegex!2863 (h!33832 l!9164)))))

(declare-fun m!2813525 () Bool)

(assert (=> bs!464149 m!2813525))

(assert (=> b!2431132 d!703184))

(push 1)

(assert (not d!703168))

(assert (not b!2431018))

(assert (not b_lambda!74789))

(assert (not bm!148796))

(assert (not b!2431151))

(assert (not bm!148785))

(assert (not b!2431158))

(assert (not b!2431163))

(assert (not b!2431087))

(assert (not d!703172))

(assert (not b!2431019))

(assert (not bm!148782))

(assert (not b!2430977))

(assert (not b!2431166))

(assert (not b!2431012))

(assert (not b!2431177))

(assert (not b!2430972))

(assert (not bm!148790))

(assert (not b!2431088))

(assert (not b!2431023))

(assert (not b!2431149))

(assert (not b!2431133))

(assert (not b!2430975))

(assert (not b!2431159))

(assert (not b!2431145))

(assert (not b!2431165))

(assert (not b!2431125))

(assert (not b!2430949))

(assert tp_is_empty!11705)

(assert (not b!2431150))

(assert (not b!2431172))

(assert (not b!2431154))

(assert (not b!2431155))

(assert (not d!703178))

(assert (not b!2431153))

(assert (not b!2431161))

(assert (not b!2431015))

(assert (not b!2431146))

(assert (not bs!464149))

(assert (not b!2431022))

(assert (not bm!148791))

(assert (not bm!148798))

(assert (not b!2430974))

(assert (not b!2430978))

(assert (not b!2431167))

(assert (not b!2431157))

(assert (not b!2430976))

(assert (not bm!148780))

(assert (not b!2431147))

(assert (not b!2430981))

(assert (not b!2431162))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!703198 () Bool)

(assert (=> d!703198 (= (isEmptyExpr!196 lt!876893) (is-EmptyExpr!7146 lt!876893))))

(assert (=> b!2430976 d!703198))

(declare-fun d!703200 () Bool)

(assert (=> d!703200 (= (head!5495 l!9164) (h!33832 l!9164))))

(assert (=> b!2430977 d!703200))

(declare-fun b!2431335 () Bool)

(declare-fun e!1545867 () Bool)

(declare-fun lt!876909 () Bool)

(declare-fun call!148821 () Bool)

(assert (=> b!2431335 (= e!1545867 (= lt!876909 call!148821))))

(declare-fun b!2431336 () Bool)

(declare-fun res!1032316 () Bool)

(declare-fun e!1545869 () Bool)

(assert (=> b!2431336 (=> res!1032316 e!1545869)))

(declare-fun e!1545868 () Bool)

(assert (=> b!2431336 (= res!1032316 e!1545868)))

(declare-fun res!1032314 () Bool)

(assert (=> b!2431336 (=> (not res!1032314) (not e!1545868))))

(assert (=> b!2431336 (= res!1032314 lt!876909)))

(declare-fun b!2431337 () Bool)

(declare-fun e!1545870 () Bool)

(assert (=> b!2431337 (= e!1545870 (nullable!2178 (derivativeStep!1833 r!13927 (head!5496 s!9460))))))

(declare-fun d!703202 () Bool)

(assert (=> d!703202 e!1545867))

(declare-fun c!387897 () Bool)

(assert (=> d!703202 (= c!387897 (is-EmptyExpr!7146 (derivativeStep!1833 r!13927 (head!5496 s!9460))))))

(assert (=> d!703202 (= lt!876909 e!1545870)))

(declare-fun c!387896 () Bool)

(assert (=> d!703202 (= c!387896 (isEmpty!16467 (tail!3769 s!9460)))))

(assert (=> d!703202 (validRegex!2863 (derivativeStep!1833 r!13927 (head!5496 s!9460)))))

(assert (=> d!703202 (= (matchR!3261 (derivativeStep!1833 r!13927 (head!5496 s!9460)) (tail!3769 s!9460)) lt!876909)))

(declare-fun b!2431338 () Bool)

(declare-fun e!1545866 () Bool)

(assert (=> b!2431338 (= e!1545867 e!1545866)))

(declare-fun c!387898 () Bool)

(assert (=> b!2431338 (= c!387898 (is-EmptyLang!7146 (derivativeStep!1833 r!13927 (head!5496 s!9460))))))

(declare-fun b!2431339 () Bool)

(declare-fun e!1545871 () Bool)

(assert (=> b!2431339 (= e!1545869 e!1545871)))

(declare-fun res!1032313 () Bool)

(assert (=> b!2431339 (=> (not res!1032313) (not e!1545871))))

(assert (=> b!2431339 (= res!1032313 (not lt!876909))))

(declare-fun b!2431340 () Bool)

(assert (=> b!2431340 (= e!1545870 (matchR!3261 (derivativeStep!1833 (derivativeStep!1833 r!13927 (head!5496 s!9460)) (head!5496 (tail!3769 s!9460))) (tail!3769 (tail!3769 s!9460))))))

(declare-fun b!2431341 () Bool)

(assert (=> b!2431341 (= e!1545866 (not lt!876909))))

(declare-fun b!2431342 () Bool)

(declare-fun res!1032311 () Bool)

(assert (=> b!2431342 (=> (not res!1032311) (not e!1545868))))

(assert (=> b!2431342 (= res!1032311 (not call!148821))))

(declare-fun b!2431343 () Bool)

(assert (=> b!2431343 (= e!1545868 (= (head!5496 (tail!3769 s!9460)) (c!387812 (derivativeStep!1833 r!13927 (head!5496 s!9460)))))))

(declare-fun b!2431344 () Bool)

(declare-fun res!1032315 () Bool)

(declare-fun e!1545865 () Bool)

(assert (=> b!2431344 (=> res!1032315 e!1545865)))

(assert (=> b!2431344 (= res!1032315 (not (isEmpty!16467 (tail!3769 (tail!3769 s!9460)))))))

(declare-fun bm!148816 () Bool)

(assert (=> bm!148816 (= call!148821 (isEmpty!16467 (tail!3769 s!9460)))))

(declare-fun b!2431345 () Bool)

(assert (=> b!2431345 (= e!1545871 e!1545865)))

(declare-fun res!1032310 () Bool)

(assert (=> b!2431345 (=> res!1032310 e!1545865)))

(assert (=> b!2431345 (= res!1032310 call!148821)))

(declare-fun b!2431346 () Bool)

(declare-fun res!1032312 () Bool)

(assert (=> b!2431346 (=> res!1032312 e!1545869)))

(assert (=> b!2431346 (= res!1032312 (not (is-ElementMatch!7146 (derivativeStep!1833 r!13927 (head!5496 s!9460)))))))

(assert (=> b!2431346 (= e!1545866 e!1545869)))

(declare-fun b!2431347 () Bool)

(declare-fun res!1032309 () Bool)

(assert (=> b!2431347 (=> (not res!1032309) (not e!1545868))))

(assert (=> b!2431347 (= res!1032309 (isEmpty!16467 (tail!3769 (tail!3769 s!9460))))))

(declare-fun b!2431348 () Bool)

(assert (=> b!2431348 (= e!1545865 (not (= (head!5496 (tail!3769 s!9460)) (c!387812 (derivativeStep!1833 r!13927 (head!5496 s!9460))))))))

(assert (= (and d!703202 c!387896) b!2431337))

(assert (= (and d!703202 (not c!387896)) b!2431340))

(assert (= (and d!703202 c!387897) b!2431335))

(assert (= (and d!703202 (not c!387897)) b!2431338))

(assert (= (and b!2431338 c!387898) b!2431341))

(assert (= (and b!2431338 (not c!387898)) b!2431346))

(assert (= (and b!2431346 (not res!1032312)) b!2431336))

(assert (= (and b!2431336 res!1032314) b!2431342))

(assert (= (and b!2431342 res!1032311) b!2431347))

(assert (= (and b!2431347 res!1032309) b!2431343))

(assert (= (and b!2431336 (not res!1032316)) b!2431339))

(assert (= (and b!2431339 res!1032313) b!2431345))

(assert (= (and b!2431345 (not res!1032310)) b!2431344))

(assert (= (and b!2431344 (not res!1032315)) b!2431348))

(assert (= (or b!2431335 b!2431342 b!2431345) bm!148816))

(assert (=> b!2431337 m!2813477))

(declare-fun m!2813569 () Bool)

(assert (=> b!2431337 m!2813569))

(assert (=> bm!148816 m!2813479))

(assert (=> bm!148816 m!2813483))

(assert (=> b!2431340 m!2813479))

(declare-fun m!2813571 () Bool)

(assert (=> b!2431340 m!2813571))

(assert (=> b!2431340 m!2813477))

(assert (=> b!2431340 m!2813571))

(declare-fun m!2813573 () Bool)

(assert (=> b!2431340 m!2813573))

(assert (=> b!2431340 m!2813479))

(declare-fun m!2813575 () Bool)

(assert (=> b!2431340 m!2813575))

(assert (=> b!2431340 m!2813573))

(assert (=> b!2431340 m!2813575))

(declare-fun m!2813577 () Bool)

(assert (=> b!2431340 m!2813577))

(assert (=> b!2431343 m!2813479))

(assert (=> b!2431343 m!2813571))

(assert (=> b!2431344 m!2813479))

(assert (=> b!2431344 m!2813575))

(assert (=> b!2431344 m!2813575))

(declare-fun m!2813579 () Bool)

(assert (=> b!2431344 m!2813579))

(assert (=> b!2431347 m!2813479))

(assert (=> b!2431347 m!2813575))

(assert (=> b!2431347 m!2813575))

(assert (=> b!2431347 m!2813579))

(assert (=> b!2431348 m!2813479))

(assert (=> b!2431348 m!2813571))

(assert (=> d!703202 m!2813479))

(assert (=> d!703202 m!2813483))

(assert (=> d!703202 m!2813477))

(declare-fun m!2813581 () Bool)

(assert (=> d!703202 m!2813581))

(assert (=> b!2431015 d!703202))

(declare-fun call!148831 () Regex!7146)

(declare-fun e!1545883 () Regex!7146)

(declare-fun call!148830 () Regex!7146)

(declare-fun b!2431369 () Bool)

(assert (=> b!2431369 (= e!1545883 (Union!7146 (Concat!11782 call!148831 (regTwo!14804 r!13927)) call!148830))))

(declare-fun b!2431370 () Bool)

(declare-fun e!1545886 () Regex!7146)

(declare-fun e!1545884 () Regex!7146)

(assert (=> b!2431370 (= e!1545886 e!1545884)))

(declare-fun c!387913 () Bool)

(assert (=> b!2431370 (= c!387913 (is-ElementMatch!7146 r!13927))))

(declare-fun b!2431371 () Bool)

(declare-fun e!1545885 () Regex!7146)

(declare-fun call!148832 () Regex!7146)

(declare-fun call!148833 () Regex!7146)

(assert (=> b!2431371 (= e!1545885 (Union!7146 call!148832 call!148833))))

(declare-fun bm!148826 () Bool)

(declare-fun c!387909 () Bool)

(declare-fun c!387911 () Bool)

(assert (=> bm!148826 (= call!148832 (derivativeStep!1833 (ite c!387911 (regOne!14805 r!13927) (ite c!387909 (reg!7475 r!13927) (regOne!14804 r!13927))) (head!5496 s!9460)))))

(declare-fun b!2431372 () Bool)

(declare-fun c!387910 () Bool)

(assert (=> b!2431372 (= c!387910 (nullable!2178 (regOne!14804 r!13927)))))

(declare-fun e!1545882 () Regex!7146)

(assert (=> b!2431372 (= e!1545882 e!1545883)))

(declare-fun b!2431373 () Bool)

(assert (=> b!2431373 (= c!387911 (is-Union!7146 r!13927))))

(assert (=> b!2431373 (= e!1545884 e!1545885)))

(declare-fun b!2431374 () Bool)

(assert (=> b!2431374 (= e!1545886 EmptyLang!7146)))

(declare-fun bm!148827 () Bool)

(assert (=> bm!148827 (= call!148830 call!148833)))

(declare-fun b!2431375 () Bool)

(assert (=> b!2431375 (= e!1545884 (ite (= (head!5496 s!9460) (c!387812 r!13927)) EmptyExpr!7146 EmptyLang!7146))))

(declare-fun b!2431376 () Bool)

(assert (=> b!2431376 (= e!1545885 e!1545882)))

(assert (=> b!2431376 (= c!387909 (is-Star!7146 r!13927))))

(declare-fun bm!148828 () Bool)

(assert (=> bm!148828 (= call!148831 call!148832)))

(declare-fun bm!148825 () Bool)

(assert (=> bm!148825 (= call!148833 (derivativeStep!1833 (ite c!387911 (regTwo!14805 r!13927) (ite c!387910 (regTwo!14804 r!13927) (regOne!14804 r!13927))) (head!5496 s!9460)))))

(declare-fun d!703204 () Bool)

(declare-fun lt!876912 () Regex!7146)

(assert (=> d!703204 (validRegex!2863 lt!876912)))

(assert (=> d!703204 (= lt!876912 e!1545886)))

(declare-fun c!387912 () Bool)

(assert (=> d!703204 (= c!387912 (or (is-EmptyExpr!7146 r!13927) (is-EmptyLang!7146 r!13927)))))

(assert (=> d!703204 (validRegex!2863 r!13927)))

(assert (=> d!703204 (= (derivativeStep!1833 r!13927 (head!5496 s!9460)) lt!876912)))

(declare-fun b!2431377 () Bool)

(assert (=> b!2431377 (= e!1545883 (Union!7146 (Concat!11782 call!148830 (regTwo!14804 r!13927)) EmptyLang!7146))))

(declare-fun b!2431378 () Bool)

(assert (=> b!2431378 (= e!1545882 (Concat!11782 call!148831 r!13927))))

(assert (= (and d!703204 c!387912) b!2431374))

(assert (= (and d!703204 (not c!387912)) b!2431370))

(assert (= (and b!2431370 c!387913) b!2431375))

(assert (= (and b!2431370 (not c!387913)) b!2431373))

(assert (= (and b!2431373 c!387911) b!2431371))

(assert (= (and b!2431373 (not c!387911)) b!2431376))

(assert (= (and b!2431376 c!387909) b!2431378))

(assert (= (and b!2431376 (not c!387909)) b!2431372))

(assert (= (and b!2431372 c!387910) b!2431369))

(assert (= (and b!2431372 (not c!387910)) b!2431377))

(assert (= (or b!2431369 b!2431377) bm!148827))

(assert (= (or b!2431378 b!2431369) bm!148828))

(assert (= (or b!2431371 bm!148828) bm!148826))

(assert (= (or b!2431371 bm!148827) bm!148825))

(assert (=> bm!148826 m!2813475))

(declare-fun m!2813583 () Bool)

(assert (=> bm!148826 m!2813583))

(declare-fun m!2813585 () Bool)

(assert (=> b!2431372 m!2813585))

(assert (=> bm!148825 m!2813475))

(declare-fun m!2813587 () Bool)

(assert (=> bm!148825 m!2813587))

(declare-fun m!2813589 () Bool)

(assert (=> d!703204 m!2813589))

(assert (=> d!703204 m!2813485))

(assert (=> b!2431015 d!703204))

(declare-fun d!703206 () Bool)

(assert (=> d!703206 (= (head!5496 s!9460) (h!33831 s!9460))))

(assert (=> b!2431015 d!703206))

(declare-fun d!703208 () Bool)

(assert (=> d!703208 (= (tail!3769 s!9460) (t!208505 s!9460))))

(assert (=> b!2431015 d!703208))

(declare-fun b!2431380 () Bool)

(declare-fun e!1545887 () Bool)

(declare-fun call!148836 () Bool)

(assert (=> b!2431380 (= e!1545887 call!148836)))

(declare-fun c!387915 () Bool)

(declare-fun bm!148829 () Bool)

(declare-fun c!387914 () Bool)

(declare-fun call!148834 () Bool)

(assert (=> bm!148829 (= call!148834 (validRegex!2863 (ite c!387914 (reg!7475 (ite c!387870 (regTwo!14805 (regTwo!14804 r!13927)) (regOne!14804 (regTwo!14804 r!13927)))) (ite c!387915 (regOne!14805 (ite c!387870 (regTwo!14805 (regTwo!14804 r!13927)) (regOne!14804 (regTwo!14804 r!13927)))) (regTwo!14804 (ite c!387870 (regTwo!14805 (regTwo!14804 r!13927)) (regOne!14804 (regTwo!14804 r!13927))))))))))

(declare-fun b!2431381 () Bool)

(declare-fun e!1545891 () Bool)

(declare-fun call!148835 () Bool)

(assert (=> b!2431381 (= e!1545891 call!148835)))

(declare-fun b!2431382 () Bool)

(declare-fun e!1545892 () Bool)

(declare-fun e!1545893 () Bool)

(assert (=> b!2431382 (= e!1545892 e!1545893)))

(assert (=> b!2431382 (= c!387915 (is-Union!7146 (ite c!387870 (regTwo!14805 (regTwo!14804 r!13927)) (regOne!14804 (regTwo!14804 r!13927)))))))

(declare-fun bm!148830 () Bool)

(assert (=> bm!148830 (= call!148835 call!148834)))

(declare-fun b!2431383 () Bool)

(declare-fun res!1032318 () Bool)

(assert (=> b!2431383 (=> (not res!1032318) (not e!1545887))))

(assert (=> b!2431383 (= res!1032318 call!148835)))

(assert (=> b!2431383 (= e!1545893 e!1545887)))

(declare-fun b!2431384 () Bool)

(declare-fun e!1545890 () Bool)

(assert (=> b!2431384 (= e!1545890 e!1545892)))

(assert (=> b!2431384 (= c!387914 (is-Star!7146 (ite c!387870 (regTwo!14805 (regTwo!14804 r!13927)) (regOne!14804 (regTwo!14804 r!13927)))))))

(declare-fun bm!148831 () Bool)

(assert (=> bm!148831 (= call!148836 (validRegex!2863 (ite c!387915 (regTwo!14805 (ite c!387870 (regTwo!14805 (regTwo!14804 r!13927)) (regOne!14804 (regTwo!14804 r!13927)))) (regOne!14804 (ite c!387870 (regTwo!14805 (regTwo!14804 r!13927)) (regOne!14804 (regTwo!14804 r!13927)))))))))

(declare-fun b!2431385 () Bool)

(declare-fun e!1545888 () Bool)

(assert (=> b!2431385 (= e!1545892 e!1545888)))

(declare-fun res!1032317 () Bool)

(assert (=> b!2431385 (= res!1032317 (not (nullable!2178 (reg!7475 (ite c!387870 (regTwo!14805 (regTwo!14804 r!13927)) (regOne!14804 (regTwo!14804 r!13927)))))))))

(assert (=> b!2431385 (=> (not res!1032317) (not e!1545888))))

(declare-fun b!2431386 () Bool)

(assert (=> b!2431386 (= e!1545888 call!148834)))

(declare-fun b!2431387 () Bool)

(declare-fun e!1545889 () Bool)

(assert (=> b!2431387 (= e!1545889 e!1545891)))

(declare-fun res!1032319 () Bool)

(assert (=> b!2431387 (=> (not res!1032319) (not e!1545891))))

(assert (=> b!2431387 (= res!1032319 call!148836)))

(declare-fun b!2431379 () Bool)

(declare-fun res!1032320 () Bool)

(assert (=> b!2431379 (=> res!1032320 e!1545889)))

(assert (=> b!2431379 (= res!1032320 (not (is-Concat!11782 (ite c!387870 (regTwo!14805 (regTwo!14804 r!13927)) (regOne!14804 (regTwo!14804 r!13927))))))))

(assert (=> b!2431379 (= e!1545893 e!1545889)))

(declare-fun d!703210 () Bool)

(declare-fun res!1032321 () Bool)

(assert (=> d!703210 (=> res!1032321 e!1545890)))

(assert (=> d!703210 (= res!1032321 (is-ElementMatch!7146 (ite c!387870 (regTwo!14805 (regTwo!14804 r!13927)) (regOne!14804 (regTwo!14804 r!13927)))))))

(assert (=> d!703210 (= (validRegex!2863 (ite c!387870 (regTwo!14805 (regTwo!14804 r!13927)) (regOne!14804 (regTwo!14804 r!13927)))) e!1545890)))

(assert (= (and d!703210 (not res!1032321)) b!2431384))

(assert (= (and b!2431384 c!387914) b!2431385))

(assert (= (and b!2431384 (not c!387914)) b!2431382))

(assert (= (and b!2431385 res!1032317) b!2431386))

(assert (= (and b!2431382 c!387915) b!2431383))

(assert (= (and b!2431382 (not c!387915)) b!2431379))

(assert (= (and b!2431383 res!1032318) b!2431380))

(assert (= (and b!2431379 (not res!1032320)) b!2431387))

(assert (= (and b!2431387 res!1032319) b!2431381))

(assert (= (or b!2431383 b!2431381) bm!148830))

(assert (= (or b!2431380 b!2431387) bm!148831))

(assert (= (or b!2431386 bm!148830) bm!148829))

(declare-fun m!2813591 () Bool)

(assert (=> bm!148829 m!2813591))

(declare-fun m!2813593 () Bool)

(assert (=> bm!148831 m!2813593))

(declare-fun m!2813595 () Bool)

(assert (=> b!2431385 m!2813595))

(assert (=> bm!148798 d!703210))

(declare-fun d!703212 () Bool)

(assert (=> d!703212 (= (isEmpty!16467 s!9460) (is-Nil!28430 s!9460))))

(assert (=> bm!148791 d!703212))

(declare-fun d!703214 () Bool)

(assert (=> d!703214 (= (isConcat!196 lt!876893) (is-Concat!11782 lt!876893))))

(assert (=> b!2430975 d!703214))

(declare-fun d!703216 () Bool)

(declare-fun nullableFct!528 (Regex!7146) Bool)

(assert (=> d!703216 (= (nullable!2178 (reg!7475 (regOne!14804 r!13927))) (nullableFct!528 (reg!7475 (regOne!14804 r!13927))))))

(declare-fun bs!464153 () Bool)

(assert (= bs!464153 d!703216))

(declare-fun m!2813597 () Bool)

(assert (=> bs!464153 m!2813597))

(assert (=> b!2430949 d!703216))

(declare-fun b!2431389 () Bool)

(declare-fun e!1545894 () Bool)

(declare-fun call!148839 () Bool)

(assert (=> b!2431389 (= e!1545894 call!148839)))

(declare-fun call!148837 () Bool)

(declare-fun bm!148832 () Bool)

(declare-fun c!387916 () Bool)

(declare-fun c!387917 () Bool)

(assert (=> bm!148832 (= call!148837 (validRegex!2863 (ite c!387916 (reg!7475 (ite c!387819 (regTwo!14805 (regOne!14804 r!13927)) (regOne!14804 (regOne!14804 r!13927)))) (ite c!387917 (regOne!14805 (ite c!387819 (regTwo!14805 (regOne!14804 r!13927)) (regOne!14804 (regOne!14804 r!13927)))) (regTwo!14804 (ite c!387819 (regTwo!14805 (regOne!14804 r!13927)) (regOne!14804 (regOne!14804 r!13927))))))))))

(declare-fun b!2431390 () Bool)

(declare-fun e!1545898 () Bool)

(declare-fun call!148838 () Bool)

(assert (=> b!2431390 (= e!1545898 call!148838)))

(declare-fun b!2431391 () Bool)

(declare-fun e!1545899 () Bool)

(declare-fun e!1545900 () Bool)

(assert (=> b!2431391 (= e!1545899 e!1545900)))

(assert (=> b!2431391 (= c!387917 (is-Union!7146 (ite c!387819 (regTwo!14805 (regOne!14804 r!13927)) (regOne!14804 (regOne!14804 r!13927)))))))

(declare-fun bm!148833 () Bool)

(assert (=> bm!148833 (= call!148838 call!148837)))

(declare-fun b!2431392 () Bool)

(declare-fun res!1032323 () Bool)

(assert (=> b!2431392 (=> (not res!1032323) (not e!1545894))))

(assert (=> b!2431392 (= res!1032323 call!148838)))

(assert (=> b!2431392 (= e!1545900 e!1545894)))

(declare-fun b!2431393 () Bool)

(declare-fun e!1545897 () Bool)

(assert (=> b!2431393 (= e!1545897 e!1545899)))

(assert (=> b!2431393 (= c!387916 (is-Star!7146 (ite c!387819 (regTwo!14805 (regOne!14804 r!13927)) (regOne!14804 (regOne!14804 r!13927)))))))

(declare-fun bm!148834 () Bool)

(assert (=> bm!148834 (= call!148839 (validRegex!2863 (ite c!387917 (regTwo!14805 (ite c!387819 (regTwo!14805 (regOne!14804 r!13927)) (regOne!14804 (regOne!14804 r!13927)))) (regOne!14804 (ite c!387819 (regTwo!14805 (regOne!14804 r!13927)) (regOne!14804 (regOne!14804 r!13927)))))))))

(declare-fun b!2431394 () Bool)

(declare-fun e!1545895 () Bool)

(assert (=> b!2431394 (= e!1545899 e!1545895)))

(declare-fun res!1032322 () Bool)

(assert (=> b!2431394 (= res!1032322 (not (nullable!2178 (reg!7475 (ite c!387819 (regTwo!14805 (regOne!14804 r!13927)) (regOne!14804 (regOne!14804 r!13927)))))))))

(assert (=> b!2431394 (=> (not res!1032322) (not e!1545895))))

(declare-fun b!2431395 () Bool)

(assert (=> b!2431395 (= e!1545895 call!148837)))

(declare-fun b!2431396 () Bool)

(declare-fun e!1545896 () Bool)

(assert (=> b!2431396 (= e!1545896 e!1545898)))

(declare-fun res!1032324 () Bool)

(assert (=> b!2431396 (=> (not res!1032324) (not e!1545898))))

(assert (=> b!2431396 (= res!1032324 call!148839)))

(declare-fun b!2431388 () Bool)

(declare-fun res!1032325 () Bool)

(assert (=> b!2431388 (=> res!1032325 e!1545896)))

(assert (=> b!2431388 (= res!1032325 (not (is-Concat!11782 (ite c!387819 (regTwo!14805 (regOne!14804 r!13927)) (regOne!14804 (regOne!14804 r!13927))))))))

(assert (=> b!2431388 (= e!1545900 e!1545896)))

(declare-fun d!703218 () Bool)

(declare-fun res!1032326 () Bool)

(assert (=> d!703218 (=> res!1032326 e!1545897)))

(assert (=> d!703218 (= res!1032326 (is-ElementMatch!7146 (ite c!387819 (regTwo!14805 (regOne!14804 r!13927)) (regOne!14804 (regOne!14804 r!13927)))))))

(assert (=> d!703218 (= (validRegex!2863 (ite c!387819 (regTwo!14805 (regOne!14804 r!13927)) (regOne!14804 (regOne!14804 r!13927)))) e!1545897)))

(assert (= (and d!703218 (not res!1032326)) b!2431393))

(assert (= (and b!2431393 c!387916) b!2431394))

(assert (= (and b!2431393 (not c!387916)) b!2431391))

(assert (= (and b!2431394 res!1032322) b!2431395))

(assert (= (and b!2431391 c!387917) b!2431392))

(assert (= (and b!2431391 (not c!387917)) b!2431388))

(assert (= (and b!2431392 res!1032323) b!2431389))

(assert (= (and b!2431388 (not res!1032325)) b!2431396))

(assert (= (and b!2431396 res!1032324) b!2431390))

(assert (= (or b!2431392 b!2431390) bm!148833))

(assert (= (or b!2431389 b!2431396) bm!148834))

(assert (= (or b!2431395 bm!148833) bm!148832))

(declare-fun m!2813599 () Bool)

(assert (=> bm!148832 m!2813599))

(declare-fun m!2813601 () Bool)

(assert (=> bm!148834 m!2813601))

(declare-fun m!2813603 () Bool)

(assert (=> b!2431394 m!2813603))

(assert (=> bm!148782 d!703218))

(declare-fun d!703220 () Bool)

(assert (=> d!703220 (= (isEmpty!16466 (t!208506 l!9164)) (is-Nil!28431 (t!208506 l!9164)))))

(assert (=> b!2430974 d!703220))

(declare-fun d!703222 () Bool)

(assert (=> d!703222 (= (nullable!2178 r!13927) (nullableFct!528 r!13927))))

(declare-fun bs!464154 () Bool)

(assert (= bs!464154 d!703222))

(declare-fun m!2813605 () Bool)

(assert (=> bs!464154 m!2813605))

(assert (=> b!2431012 d!703222))

(declare-fun bs!464155 () Bool)

(declare-fun b!2431405 () Bool)

(assert (= bs!464155 (and b!2431405 b!2431094)))

(declare-fun lambda!91682 () Int)

(assert (=> bs!464155 (= (and (= (reg!7475 (regOne!14805 r!13927)) (reg!7475 r!13927)) (= (regOne!14805 r!13927) r!13927)) (= lambda!91682 lambda!91674))))

(declare-fun bs!464156 () Bool)

(assert (= bs!464156 (and b!2431405 b!2431086)))

(assert (=> bs!464156 (not (= lambda!91682 lambda!91675))))

(assert (=> b!2431405 true))

(assert (=> b!2431405 true))

(declare-fun bs!464157 () Bool)

(declare-fun b!2431397 () Bool)

(assert (= bs!464157 (and b!2431397 b!2431094)))

(declare-fun lambda!91683 () Int)

(assert (=> bs!464157 (not (= lambda!91683 lambda!91674))))

(declare-fun bs!464158 () Bool)

(assert (= bs!464158 (and b!2431397 b!2431086)))

(assert (=> bs!464158 (= (and (= (regOne!14804 (regOne!14805 r!13927)) (regOne!14804 r!13927)) (= (regTwo!14804 (regOne!14805 r!13927)) (regTwo!14804 r!13927))) (= lambda!91683 lambda!91675))))

(declare-fun bs!464159 () Bool)

(assert (= bs!464159 (and b!2431397 b!2431405)))

(assert (=> bs!464159 (not (= lambda!91683 lambda!91682))))

(assert (=> b!2431397 true))

(assert (=> b!2431397 true))

(declare-fun call!148840 () Bool)

(declare-fun c!387918 () Bool)

(declare-fun bm!148835 () Bool)

(assert (=> bm!148835 (= call!148840 (Exists!1182 (ite c!387918 lambda!91682 lambda!91683)))))

(declare-fun b!2431398 () Bool)

(declare-fun e!1545901 () Bool)

(assert (=> b!2431398 (= e!1545901 (matchRSpec!993 (regTwo!14805 (regOne!14805 r!13927)) s!9460))))

(declare-fun b!2431399 () Bool)

(declare-fun e!1545902 () Bool)

(assert (=> b!2431399 (= e!1545902 e!1545901)))

(declare-fun res!1032329 () Bool)

(assert (=> b!2431399 (= res!1032329 (matchRSpec!993 (regOne!14805 (regOne!14805 r!13927)) s!9460))))

(assert (=> b!2431399 (=> res!1032329 e!1545901)))

(declare-fun b!2431400 () Bool)

(declare-fun res!1032328 () Bool)

(declare-fun e!1545907 () Bool)

(assert (=> b!2431400 (=> res!1032328 e!1545907)))

(declare-fun call!148841 () Bool)

(assert (=> b!2431400 (= res!1032328 call!148841)))

(declare-fun e!1545903 () Bool)

(assert (=> b!2431400 (= e!1545903 e!1545907)))

(declare-fun b!2431401 () Bool)

(declare-fun c!387921 () Bool)

(assert (=> b!2431401 (= c!387921 (is-Union!7146 (regOne!14805 r!13927)))))

(declare-fun e!1545906 () Bool)

(assert (=> b!2431401 (= e!1545906 e!1545902)))

(declare-fun b!2431402 () Bool)

(declare-fun e!1545905 () Bool)

(declare-fun e!1545904 () Bool)

(assert (=> b!2431402 (= e!1545905 e!1545904)))

(declare-fun res!1032327 () Bool)

(assert (=> b!2431402 (= res!1032327 (not (is-EmptyLang!7146 (regOne!14805 r!13927))))))

(assert (=> b!2431402 (=> (not res!1032327) (not e!1545904))))

(declare-fun b!2431403 () Bool)

(assert (=> b!2431403 (= e!1545905 call!148841)))

(declare-fun bm!148836 () Bool)

(assert (=> bm!148836 (= call!148841 (isEmpty!16467 s!9460))))

(declare-fun b!2431404 () Bool)

(assert (=> b!2431404 (= e!1545902 e!1545903)))

(assert (=> b!2431404 (= c!387918 (is-Star!7146 (regOne!14805 r!13927)))))

(assert (=> b!2431405 (= e!1545907 call!148840)))

(declare-fun b!2431406 () Bool)

(assert (=> b!2431406 (= e!1545906 (= s!9460 (Cons!28430 (c!387812 (regOne!14805 r!13927)) Nil!28430)))))

(declare-fun b!2431407 () Bool)

(declare-fun c!387919 () Bool)

(assert (=> b!2431407 (= c!387919 (is-ElementMatch!7146 (regOne!14805 r!13927)))))

(assert (=> b!2431407 (= e!1545904 e!1545906)))

(assert (=> b!2431397 (= e!1545903 call!148840)))

(declare-fun d!703224 () Bool)

(declare-fun c!387920 () Bool)

(assert (=> d!703224 (= c!387920 (is-EmptyExpr!7146 (regOne!14805 r!13927)))))

(assert (=> d!703224 (= (matchRSpec!993 (regOne!14805 r!13927) s!9460) e!1545905)))

(assert (= (and d!703224 c!387920) b!2431403))

(assert (= (and d!703224 (not c!387920)) b!2431402))

(assert (= (and b!2431402 res!1032327) b!2431407))

(assert (= (and b!2431407 c!387919) b!2431406))

(assert (= (and b!2431407 (not c!387919)) b!2431401))

(assert (= (and b!2431401 c!387921) b!2431399))

(assert (= (and b!2431401 (not c!387921)) b!2431404))

(assert (= (and b!2431399 (not res!1032329)) b!2431398))

(assert (= (and b!2431404 c!387918) b!2431400))

(assert (= (and b!2431404 (not c!387918)) b!2431397))

(assert (= (and b!2431400 (not res!1032328)) b!2431405))

(assert (= (or b!2431405 b!2431397) bm!148835))

(assert (= (or b!2431403 b!2431400) bm!148836))

(declare-fun m!2813607 () Bool)

(assert (=> bm!148835 m!2813607))

(declare-fun m!2813609 () Bool)

(assert (=> b!2431398 m!2813609))

(declare-fun m!2813611 () Bool)

(assert (=> b!2431399 m!2813611))

(assert (=> bm!148836 m!2813473))

(assert (=> b!2431088 d!703224))

(declare-fun d!703226 () Bool)

(assert (=> d!703226 (= (isEmpty!16466 (tail!3768 l!9164)) (is-Nil!28431 (tail!3768 l!9164)))))

(assert (=> b!2430972 d!703226))

(declare-fun d!703228 () Bool)

(assert (=> d!703228 (= (tail!3768 l!9164) (t!208506 l!9164))))

(assert (=> b!2430972 d!703228))

(assert (=> bm!148785 d!703212))

(assert (=> b!2431018 d!703206))

(declare-fun d!703230 () Bool)

(assert (=> d!703230 (= (isEmpty!16467 (tail!3769 s!9460)) (is-Nil!28430 (tail!3769 s!9460)))))

(assert (=> b!2431019 d!703230))

(assert (=> b!2431019 d!703208))

(declare-fun d!703232 () Bool)

(assert (=> d!703232 (= (isEmpty!16466 l!9164) (is-Nil!28431 l!9164))))

(assert (=> b!2430981 d!703232))

(declare-fun bs!464160 () Bool)

(declare-fun d!703234 () Bool)

(assert (= bs!464160 (and d!703234 start!238026)))

(declare-fun lambda!91684 () Int)

(assert (=> bs!464160 (= lambda!91684 lambda!91660)))

(declare-fun bs!464161 () Bool)

(assert (= bs!464161 (and d!703234 d!703168)))

(assert (=> bs!464161 (= lambda!91684 lambda!91666)))

(declare-fun b!2431408 () Bool)

(declare-fun e!1545912 () Bool)

(declare-fun e!1545911 () Bool)

(assert (=> b!2431408 (= e!1545912 e!1545911)))

(declare-fun c!387925 () Bool)

(assert (=> b!2431408 (= c!387925 (isEmpty!16466 (tail!3768 (t!208506 l!9164))))))

(declare-fun b!2431409 () Bool)

(declare-fun e!1545910 () Regex!7146)

(assert (=> b!2431409 (= e!1545910 (h!33832 (t!208506 l!9164)))))

(declare-fun b!2431411 () Bool)

(declare-fun lt!876913 () Regex!7146)

(assert (=> b!2431411 (= e!1545911 (isConcat!196 lt!876913))))

(declare-fun b!2431412 () Bool)

(assert (=> b!2431412 (= e!1545912 (isEmptyExpr!196 lt!876913))))

(declare-fun b!2431413 () Bool)

(assert (=> b!2431413 (= e!1545911 (= lt!876913 (head!5495 (t!208506 l!9164))))))

(declare-fun b!2431414 () Bool)

(declare-fun e!1545908 () Regex!7146)

(assert (=> b!2431414 (= e!1545908 (Concat!11782 (h!33832 (t!208506 l!9164)) (generalisedConcat!247 (t!208506 (t!208506 l!9164)))))))

(declare-fun b!2431415 () Bool)

(assert (=> b!2431415 (= e!1545910 e!1545908)))

(declare-fun c!387924 () Bool)

(assert (=> b!2431415 (= c!387924 (is-Cons!28431 (t!208506 l!9164)))))

(declare-fun e!1545909 () Bool)

(assert (=> d!703234 e!1545909))

(declare-fun res!1032330 () Bool)

(assert (=> d!703234 (=> (not res!1032330) (not e!1545909))))

(assert (=> d!703234 (= res!1032330 (validRegex!2863 lt!876913))))

(assert (=> d!703234 (= lt!876913 e!1545910)))

(declare-fun c!387923 () Bool)

(declare-fun e!1545913 () Bool)

(assert (=> d!703234 (= c!387923 e!1545913)))

(declare-fun res!1032331 () Bool)

(assert (=> d!703234 (=> (not res!1032331) (not e!1545913))))

(assert (=> d!703234 (= res!1032331 (is-Cons!28431 (t!208506 l!9164)))))

(assert (=> d!703234 (forall!5780 (t!208506 l!9164) lambda!91684)))

(assert (=> d!703234 (= (generalisedConcat!247 (t!208506 l!9164)) lt!876913)))

(declare-fun b!2431410 () Bool)

(assert (=> b!2431410 (= e!1545913 (isEmpty!16466 (t!208506 (t!208506 l!9164))))))

(declare-fun b!2431416 () Bool)

(assert (=> b!2431416 (= e!1545908 EmptyExpr!7146)))

(declare-fun b!2431417 () Bool)

(assert (=> b!2431417 (= e!1545909 e!1545912)))

(declare-fun c!387922 () Bool)

(assert (=> b!2431417 (= c!387922 (isEmpty!16466 (t!208506 l!9164)))))

(assert (= (and d!703234 res!1032331) b!2431410))

(assert (= (and d!703234 c!387923) b!2431409))

(assert (= (and d!703234 (not c!387923)) b!2431415))

(assert (= (and b!2431415 c!387924) b!2431414))

(assert (= (and b!2431415 (not c!387924)) b!2431416))

(assert (= (and d!703234 res!1032330) b!2431417))

(assert (= (and b!2431417 c!387922) b!2431412))

(assert (= (and b!2431417 (not c!387922)) b!2431408))

(assert (= (and b!2431408 c!387925) b!2431413))

(assert (= (and b!2431408 (not c!387925)) b!2431411))

(declare-fun m!2813613 () Bool)

(assert (=> d!703234 m!2813613))

(declare-fun m!2813615 () Bool)

(assert (=> d!703234 m!2813615))

(declare-fun m!2813617 () Bool)

(assert (=> b!2431408 m!2813617))

(assert (=> b!2431408 m!2813617))

(declare-fun m!2813619 () Bool)

(assert (=> b!2431408 m!2813619))

(declare-fun m!2813621 () Bool)

(assert (=> b!2431410 m!2813621))

(declare-fun m!2813623 () Bool)

(assert (=> b!2431412 m!2813623))

(declare-fun m!2813625 () Bool)

(assert (=> b!2431413 m!2813625))

(declare-fun m!2813627 () Bool)

(assert (=> b!2431411 m!2813627))

(declare-fun m!2813629 () Bool)

(assert (=> b!2431414 m!2813629))

(assert (=> b!2431417 m!2813459))

(assert (=> b!2430978 d!703234))

(declare-fun d!703236 () Bool)

(assert (=> d!703236 (= (nullable!2178 (reg!7475 (regTwo!14804 r!13927))) (nullableFct!528 (reg!7475 (regTwo!14804 r!13927))))))

(declare-fun bs!464162 () Bool)

(assert (= bs!464162 d!703236))

(declare-fun m!2813631 () Bool)

(assert (=> bs!464162 m!2813631))

(assert (=> b!2431125 d!703236))

(assert (=> d!703178 d!703172))

(assert (=> d!703178 d!703174))

(declare-fun d!703238 () Bool)

(assert (=> d!703238 (= (matchR!3261 r!13927 s!9460) (matchRSpec!993 r!13927 s!9460))))

(assert (=> d!703238 true))

(declare-fun _$88!3265 () Unit!41675)

(assert (=> d!703238 (= (choose!14406 r!13927 s!9460) _$88!3265)))

(declare-fun bs!464163 () Bool)

(assert (= bs!464163 d!703238))

(assert (=> bs!464163 m!2813421))

(assert (=> bs!464163 m!2813423))

(assert (=> d!703178 d!703238))

(declare-fun b!2431419 () Bool)

(declare-fun e!1545914 () Bool)

(declare-fun call!148844 () Bool)

(assert (=> b!2431419 (= e!1545914 call!148844)))

(declare-fun bm!148837 () Bool)

(declare-fun c!387927 () Bool)

(declare-fun c!387926 () Bool)

(declare-fun call!148842 () Bool)

(assert (=> bm!148837 (= call!148842 (validRegex!2863 (ite c!387926 (reg!7475 r!13927) (ite c!387927 (regOne!14805 r!13927) (regTwo!14804 r!13927)))))))

(declare-fun b!2431420 () Bool)

(declare-fun e!1545918 () Bool)

(declare-fun call!148843 () Bool)

(assert (=> b!2431420 (= e!1545918 call!148843)))

(declare-fun b!2431421 () Bool)

(declare-fun e!1545919 () Bool)

(declare-fun e!1545920 () Bool)

(assert (=> b!2431421 (= e!1545919 e!1545920)))

(assert (=> b!2431421 (= c!387927 (is-Union!7146 r!13927))))

(declare-fun bm!148838 () Bool)

(assert (=> bm!148838 (= call!148843 call!148842)))

(declare-fun b!2431422 () Bool)

(declare-fun res!1032333 () Bool)

(assert (=> b!2431422 (=> (not res!1032333) (not e!1545914))))

(assert (=> b!2431422 (= res!1032333 call!148843)))

(assert (=> b!2431422 (= e!1545920 e!1545914)))

(declare-fun b!2431423 () Bool)

(declare-fun e!1545917 () Bool)

(assert (=> b!2431423 (= e!1545917 e!1545919)))

(assert (=> b!2431423 (= c!387926 (is-Star!7146 r!13927))))

(declare-fun bm!148839 () Bool)

(assert (=> bm!148839 (= call!148844 (validRegex!2863 (ite c!387927 (regTwo!14805 r!13927) (regOne!14804 r!13927))))))

(declare-fun b!2431424 () Bool)

(declare-fun e!1545915 () Bool)

(assert (=> b!2431424 (= e!1545919 e!1545915)))

(declare-fun res!1032332 () Bool)

(assert (=> b!2431424 (= res!1032332 (not (nullable!2178 (reg!7475 r!13927))))))

(assert (=> b!2431424 (=> (not res!1032332) (not e!1545915))))

(declare-fun b!2431425 () Bool)

(assert (=> b!2431425 (= e!1545915 call!148842)))

(declare-fun b!2431426 () Bool)

(declare-fun e!1545916 () Bool)

(assert (=> b!2431426 (= e!1545916 e!1545918)))

(declare-fun res!1032334 () Bool)

(assert (=> b!2431426 (=> (not res!1032334) (not e!1545918))))

(assert (=> b!2431426 (= res!1032334 call!148844)))

(declare-fun b!2431418 () Bool)

(declare-fun res!1032335 () Bool)

(assert (=> b!2431418 (=> res!1032335 e!1545916)))

(assert (=> b!2431418 (= res!1032335 (not (is-Concat!11782 r!13927)))))

(assert (=> b!2431418 (= e!1545920 e!1545916)))

(declare-fun d!703240 () Bool)

(declare-fun res!1032336 () Bool)

(assert (=> d!703240 (=> res!1032336 e!1545917)))

(assert (=> d!703240 (= res!1032336 (is-ElementMatch!7146 r!13927))))

(assert (=> d!703240 (= (validRegex!2863 r!13927) e!1545917)))

(assert (= (and d!703240 (not res!1032336)) b!2431423))

(assert (= (and b!2431423 c!387926) b!2431424))

(assert (= (and b!2431423 (not c!387926)) b!2431421))

(assert (= (and b!2431424 res!1032332) b!2431425))

(assert (= (and b!2431421 c!387927) b!2431422))

(assert (= (and b!2431421 (not c!387927)) b!2431418))

(assert (= (and b!2431422 res!1032333) b!2431419))

(assert (= (and b!2431418 (not res!1032335)) b!2431426))

(assert (= (and b!2431426 res!1032334) b!2431420))

(assert (= (or b!2431422 b!2431420) bm!148838))

(assert (= (or b!2431419 b!2431426) bm!148839))

(assert (= (or b!2431425 bm!148838) bm!148837))

(declare-fun m!2813633 () Bool)

(assert (=> bm!148837 m!2813633))

(declare-fun m!2813635 () Bool)

(assert (=> bm!148839 m!2813635))

(declare-fun m!2813637 () Bool)

(assert (=> b!2431424 m!2813637))

(assert (=> d!703178 d!703240))

(assert (=> b!2431023 d!703206))

(assert (=> b!2431022 d!703230))

(assert (=> b!2431022 d!703208))

(declare-fun b!2431428 () Bool)

(declare-fun e!1545921 () Bool)

(declare-fun call!148847 () Bool)

(assert (=> b!2431428 (= e!1545921 call!148847)))

(declare-fun c!387929 () Bool)

(declare-fun call!148845 () Bool)

(declare-fun bm!148840 () Bool)

(declare-fun c!387928 () Bool)

(assert (=> bm!148840 (= call!148845 (validRegex!2863 (ite c!387928 (reg!7475 lt!876893) (ite c!387929 (regOne!14805 lt!876893) (regTwo!14804 lt!876893)))))))

(declare-fun b!2431429 () Bool)

(declare-fun e!1545925 () Bool)

(declare-fun call!148846 () Bool)

(assert (=> b!2431429 (= e!1545925 call!148846)))

(declare-fun b!2431430 () Bool)

(declare-fun e!1545926 () Bool)

(declare-fun e!1545927 () Bool)

(assert (=> b!2431430 (= e!1545926 e!1545927)))

(assert (=> b!2431430 (= c!387929 (is-Union!7146 lt!876893))))

(declare-fun bm!148841 () Bool)

(assert (=> bm!148841 (= call!148846 call!148845)))

(declare-fun b!2431431 () Bool)

(declare-fun res!1032338 () Bool)

(assert (=> b!2431431 (=> (not res!1032338) (not e!1545921))))

(assert (=> b!2431431 (= res!1032338 call!148846)))

(assert (=> b!2431431 (= e!1545927 e!1545921)))

(declare-fun b!2431432 () Bool)

(declare-fun e!1545924 () Bool)

(assert (=> b!2431432 (= e!1545924 e!1545926)))

(assert (=> b!2431432 (= c!387928 (is-Star!7146 lt!876893))))

(declare-fun bm!148842 () Bool)

(assert (=> bm!148842 (= call!148847 (validRegex!2863 (ite c!387929 (regTwo!14805 lt!876893) (regOne!14804 lt!876893))))))

(declare-fun b!2431433 () Bool)

(declare-fun e!1545922 () Bool)

(assert (=> b!2431433 (= e!1545926 e!1545922)))

(declare-fun res!1032337 () Bool)

(assert (=> b!2431433 (= res!1032337 (not (nullable!2178 (reg!7475 lt!876893))))))

(assert (=> b!2431433 (=> (not res!1032337) (not e!1545922))))

(declare-fun b!2431434 () Bool)

(assert (=> b!2431434 (= e!1545922 call!148845)))

(declare-fun b!2431435 () Bool)

(declare-fun e!1545923 () Bool)

(assert (=> b!2431435 (= e!1545923 e!1545925)))

(declare-fun res!1032339 () Bool)

(assert (=> b!2431435 (=> (not res!1032339) (not e!1545925))))

(assert (=> b!2431435 (= res!1032339 call!148847)))

(declare-fun b!2431427 () Bool)

(declare-fun res!1032340 () Bool)

(assert (=> b!2431427 (=> res!1032340 e!1545923)))

(assert (=> b!2431427 (= res!1032340 (not (is-Concat!11782 lt!876893)))))

(assert (=> b!2431427 (= e!1545927 e!1545923)))

(declare-fun d!703242 () Bool)

(declare-fun res!1032341 () Bool)

(assert (=> d!703242 (=> res!1032341 e!1545924)))

(assert (=> d!703242 (= res!1032341 (is-ElementMatch!7146 lt!876893))))

(assert (=> d!703242 (= (validRegex!2863 lt!876893) e!1545924)))

(assert (= (and d!703242 (not res!1032341)) b!2431432))

(assert (= (and b!2431432 c!387928) b!2431433))

(assert (= (and b!2431432 (not c!387928)) b!2431430))

(assert (= (and b!2431433 res!1032337) b!2431434))

(assert (= (and b!2431430 c!387929) b!2431431))

(assert (= (and b!2431430 (not c!387929)) b!2431427))

(assert (= (and b!2431431 res!1032338) b!2431428))

(assert (= (and b!2431427 (not res!1032340)) b!2431435))

(assert (= (and b!2431435 res!1032339) b!2431429))

(assert (= (or b!2431431 b!2431429) bm!148841))

(assert (= (or b!2431428 b!2431435) bm!148842))

(assert (= (or b!2431434 bm!148841) bm!148840))

(declare-fun m!2813639 () Bool)

(assert (=> bm!148840 m!2813639))

(declare-fun m!2813641 () Bool)

(assert (=> bm!148842 m!2813641))

(declare-fun m!2813643 () Bool)

(assert (=> b!2431433 m!2813643))

(assert (=> d!703168 d!703242))

(declare-fun d!703244 () Bool)

(declare-fun res!1032342 () Bool)

(declare-fun e!1545928 () Bool)

(assert (=> d!703244 (=> res!1032342 e!1545928)))

(assert (=> d!703244 (= res!1032342 (is-Nil!28431 l!9164))))

(assert (=> d!703244 (= (forall!5780 l!9164 lambda!91666) e!1545928)))

(declare-fun b!2431436 () Bool)

(declare-fun e!1545929 () Bool)

(assert (=> b!2431436 (= e!1545928 e!1545929)))

(declare-fun res!1032343 () Bool)

(assert (=> b!2431436 (=> (not res!1032343) (not e!1545929))))

(assert (=> b!2431436 (= res!1032343 (dynLambda!12236 lambda!91666 (h!33832 l!9164)))))

(declare-fun b!2431437 () Bool)

(assert (=> b!2431437 (= e!1545929 (forall!5780 (t!208506 l!9164) lambda!91666))))

(assert (= (and d!703244 (not res!1032342)) b!2431436))

(assert (= (and b!2431436 res!1032343) b!2431437))

(declare-fun b_lambda!74795 () Bool)

(assert (=> (not b_lambda!74795) (not b!2431436)))

(declare-fun m!2813645 () Bool)

(assert (=> b!2431436 m!2813645))

(declare-fun m!2813647 () Bool)

(assert (=> b!2431437 m!2813647))

(assert (=> d!703168 d!703244))

(assert (=> d!703172 d!703212))

(assert (=> d!703172 d!703240))

(declare-fun b!2431439 () Bool)

(declare-fun e!1545930 () Bool)

(declare-fun call!148850 () Bool)

(assert (=> b!2431439 (= e!1545930 call!148850)))

(declare-fun c!387931 () Bool)

(declare-fun c!387930 () Bool)

(declare-fun bm!148843 () Bool)

(declare-fun call!148848 () Bool)

(assert (=> bm!148843 (= call!148848 (validRegex!2863 (ite c!387930 (reg!7475 (ite c!387869 (reg!7475 (regTwo!14804 r!13927)) (ite c!387870 (regOne!14805 (regTwo!14804 r!13927)) (regTwo!14804 (regTwo!14804 r!13927))))) (ite c!387931 (regOne!14805 (ite c!387869 (reg!7475 (regTwo!14804 r!13927)) (ite c!387870 (regOne!14805 (regTwo!14804 r!13927)) (regTwo!14804 (regTwo!14804 r!13927))))) (regTwo!14804 (ite c!387869 (reg!7475 (regTwo!14804 r!13927)) (ite c!387870 (regOne!14805 (regTwo!14804 r!13927)) (regTwo!14804 (regTwo!14804 r!13927)))))))))))

(declare-fun b!2431440 () Bool)

(declare-fun e!1545934 () Bool)

(declare-fun call!148849 () Bool)

(assert (=> b!2431440 (= e!1545934 call!148849)))

(declare-fun b!2431441 () Bool)

(declare-fun e!1545935 () Bool)

(declare-fun e!1545936 () Bool)

(assert (=> b!2431441 (= e!1545935 e!1545936)))

(assert (=> b!2431441 (= c!387931 (is-Union!7146 (ite c!387869 (reg!7475 (regTwo!14804 r!13927)) (ite c!387870 (regOne!14805 (regTwo!14804 r!13927)) (regTwo!14804 (regTwo!14804 r!13927))))))))

(declare-fun bm!148844 () Bool)

(assert (=> bm!148844 (= call!148849 call!148848)))

(declare-fun b!2431442 () Bool)

(declare-fun res!1032345 () Bool)

(assert (=> b!2431442 (=> (not res!1032345) (not e!1545930))))

(assert (=> b!2431442 (= res!1032345 call!148849)))

(assert (=> b!2431442 (= e!1545936 e!1545930)))

(declare-fun b!2431443 () Bool)

(declare-fun e!1545933 () Bool)

(assert (=> b!2431443 (= e!1545933 e!1545935)))

(assert (=> b!2431443 (= c!387930 (is-Star!7146 (ite c!387869 (reg!7475 (regTwo!14804 r!13927)) (ite c!387870 (regOne!14805 (regTwo!14804 r!13927)) (regTwo!14804 (regTwo!14804 r!13927))))))))

(declare-fun bm!148845 () Bool)

(assert (=> bm!148845 (= call!148850 (validRegex!2863 (ite c!387931 (regTwo!14805 (ite c!387869 (reg!7475 (regTwo!14804 r!13927)) (ite c!387870 (regOne!14805 (regTwo!14804 r!13927)) (regTwo!14804 (regTwo!14804 r!13927))))) (regOne!14804 (ite c!387869 (reg!7475 (regTwo!14804 r!13927)) (ite c!387870 (regOne!14805 (regTwo!14804 r!13927)) (regTwo!14804 (regTwo!14804 r!13927))))))))))

(declare-fun b!2431444 () Bool)

(declare-fun e!1545931 () Bool)

(assert (=> b!2431444 (= e!1545935 e!1545931)))

(declare-fun res!1032344 () Bool)

(assert (=> b!2431444 (= res!1032344 (not (nullable!2178 (reg!7475 (ite c!387869 (reg!7475 (regTwo!14804 r!13927)) (ite c!387870 (regOne!14805 (regTwo!14804 r!13927)) (regTwo!14804 (regTwo!14804 r!13927))))))))))

(assert (=> b!2431444 (=> (not res!1032344) (not e!1545931))))

(declare-fun b!2431445 () Bool)

(assert (=> b!2431445 (= e!1545931 call!148848)))

(declare-fun b!2431446 () Bool)

(declare-fun e!1545932 () Bool)

(assert (=> b!2431446 (= e!1545932 e!1545934)))

(declare-fun res!1032346 () Bool)

(assert (=> b!2431446 (=> (not res!1032346) (not e!1545934))))

(assert (=> b!2431446 (= res!1032346 call!148850)))

(declare-fun b!2431438 () Bool)

(declare-fun res!1032347 () Bool)

(assert (=> b!2431438 (=> res!1032347 e!1545932)))

(assert (=> b!2431438 (= res!1032347 (not (is-Concat!11782 (ite c!387869 (reg!7475 (regTwo!14804 r!13927)) (ite c!387870 (regOne!14805 (regTwo!14804 r!13927)) (regTwo!14804 (regTwo!14804 r!13927)))))))))

(assert (=> b!2431438 (= e!1545936 e!1545932)))

(declare-fun d!703246 () Bool)

(declare-fun res!1032348 () Bool)

(assert (=> d!703246 (=> res!1032348 e!1545933)))

(assert (=> d!703246 (= res!1032348 (is-ElementMatch!7146 (ite c!387869 (reg!7475 (regTwo!14804 r!13927)) (ite c!387870 (regOne!14805 (regTwo!14804 r!13927)) (regTwo!14804 (regTwo!14804 r!13927))))))))

(assert (=> d!703246 (= (validRegex!2863 (ite c!387869 (reg!7475 (regTwo!14804 r!13927)) (ite c!387870 (regOne!14805 (regTwo!14804 r!13927)) (regTwo!14804 (regTwo!14804 r!13927))))) e!1545933)))

(assert (= (and d!703246 (not res!1032348)) b!2431443))

(assert (= (and b!2431443 c!387930) b!2431444))

(assert (= (and b!2431443 (not c!387930)) b!2431441))

(assert (= (and b!2431444 res!1032344) b!2431445))

(assert (= (and b!2431441 c!387931) b!2431442))

(assert (= (and b!2431441 (not c!387931)) b!2431438))

(assert (= (and b!2431442 res!1032345) b!2431439))

(assert (= (and b!2431438 (not res!1032347)) b!2431446))

(assert (= (and b!2431446 res!1032346) b!2431440))

(assert (= (or b!2431442 b!2431440) bm!148844))

(assert (= (or b!2431439 b!2431446) bm!148845))

(assert (= (or b!2431445 bm!148844) bm!148843))

(declare-fun m!2813649 () Bool)

(assert (=> bm!148843 m!2813649))

(declare-fun m!2813651 () Bool)

(assert (=> bm!148845 m!2813651))

(declare-fun m!2813653 () Bool)

(assert (=> b!2431444 m!2813653))

(assert (=> bm!148796 d!703246))

(declare-fun bs!464164 () Bool)

(declare-fun b!2431455 () Bool)

(assert (= bs!464164 (and b!2431455 b!2431094)))

(declare-fun lambda!91685 () Int)

(assert (=> bs!464164 (= (and (= (reg!7475 (regTwo!14805 r!13927)) (reg!7475 r!13927)) (= (regTwo!14805 r!13927) r!13927)) (= lambda!91685 lambda!91674))))

(declare-fun bs!464165 () Bool)

(assert (= bs!464165 (and b!2431455 b!2431086)))

(assert (=> bs!464165 (not (= lambda!91685 lambda!91675))))

(declare-fun bs!464166 () Bool)

(assert (= bs!464166 (and b!2431455 b!2431405)))

(assert (=> bs!464166 (= (and (= (reg!7475 (regTwo!14805 r!13927)) (reg!7475 (regOne!14805 r!13927))) (= (regTwo!14805 r!13927) (regOne!14805 r!13927))) (= lambda!91685 lambda!91682))))

(declare-fun bs!464167 () Bool)

(assert (= bs!464167 (and b!2431455 b!2431397)))

(assert (=> bs!464167 (not (= lambda!91685 lambda!91683))))

(assert (=> b!2431455 true))

(assert (=> b!2431455 true))

(declare-fun bs!464168 () Bool)

(declare-fun b!2431447 () Bool)

(assert (= bs!464168 (and b!2431447 b!2431455)))

(declare-fun lambda!91686 () Int)

(assert (=> bs!464168 (not (= lambda!91686 lambda!91685))))

(declare-fun bs!464169 () Bool)

(assert (= bs!464169 (and b!2431447 b!2431094)))

(assert (=> bs!464169 (not (= lambda!91686 lambda!91674))))

(declare-fun bs!464170 () Bool)

(assert (= bs!464170 (and b!2431447 b!2431405)))

(assert (=> bs!464170 (not (= lambda!91686 lambda!91682))))

(declare-fun bs!464171 () Bool)

(assert (= bs!464171 (and b!2431447 b!2431086)))

(assert (=> bs!464171 (= (and (= (regOne!14804 (regTwo!14805 r!13927)) (regOne!14804 r!13927)) (= (regTwo!14804 (regTwo!14805 r!13927)) (regTwo!14804 r!13927))) (= lambda!91686 lambda!91675))))

(declare-fun bs!464172 () Bool)

(assert (= bs!464172 (and b!2431447 b!2431397)))

(assert (=> bs!464172 (= (and (= (regOne!14804 (regTwo!14805 r!13927)) (regOne!14804 (regOne!14805 r!13927))) (= (regTwo!14804 (regTwo!14805 r!13927)) (regTwo!14804 (regOne!14805 r!13927)))) (= lambda!91686 lambda!91683))))

(assert (=> b!2431447 true))

(assert (=> b!2431447 true))

(declare-fun bm!148846 () Bool)

(declare-fun call!148851 () Bool)

(declare-fun c!387932 () Bool)

(assert (=> bm!148846 (= call!148851 (Exists!1182 (ite c!387932 lambda!91685 lambda!91686)))))

(declare-fun b!2431448 () Bool)

(declare-fun e!1545937 () Bool)

(assert (=> b!2431448 (= e!1545937 (matchRSpec!993 (regTwo!14805 (regTwo!14805 r!13927)) s!9460))))

(declare-fun b!2431449 () Bool)

(declare-fun e!1545938 () Bool)

(assert (=> b!2431449 (= e!1545938 e!1545937)))

(declare-fun res!1032351 () Bool)

(assert (=> b!2431449 (= res!1032351 (matchRSpec!993 (regOne!14805 (regTwo!14805 r!13927)) s!9460))))

(assert (=> b!2431449 (=> res!1032351 e!1545937)))

(declare-fun b!2431450 () Bool)

(declare-fun res!1032350 () Bool)

(declare-fun e!1545943 () Bool)

(assert (=> b!2431450 (=> res!1032350 e!1545943)))

(declare-fun call!148852 () Bool)

(assert (=> b!2431450 (= res!1032350 call!148852)))

(declare-fun e!1545939 () Bool)

(assert (=> b!2431450 (= e!1545939 e!1545943)))

(declare-fun b!2431451 () Bool)

(declare-fun c!387935 () Bool)

(assert (=> b!2431451 (= c!387935 (is-Union!7146 (regTwo!14805 r!13927)))))

(declare-fun e!1545942 () Bool)

(assert (=> b!2431451 (= e!1545942 e!1545938)))

(declare-fun b!2431452 () Bool)

(declare-fun e!1545941 () Bool)

(declare-fun e!1545940 () Bool)

(assert (=> b!2431452 (= e!1545941 e!1545940)))

(declare-fun res!1032349 () Bool)

(assert (=> b!2431452 (= res!1032349 (not (is-EmptyLang!7146 (regTwo!14805 r!13927))))))

(assert (=> b!2431452 (=> (not res!1032349) (not e!1545940))))

(declare-fun b!2431453 () Bool)

(assert (=> b!2431453 (= e!1545941 call!148852)))

(declare-fun bm!148847 () Bool)

(assert (=> bm!148847 (= call!148852 (isEmpty!16467 s!9460))))

(declare-fun b!2431454 () Bool)

(assert (=> b!2431454 (= e!1545938 e!1545939)))

(assert (=> b!2431454 (= c!387932 (is-Star!7146 (regTwo!14805 r!13927)))))

(assert (=> b!2431455 (= e!1545943 call!148851)))

(declare-fun b!2431456 () Bool)

(assert (=> b!2431456 (= e!1545942 (= s!9460 (Cons!28430 (c!387812 (regTwo!14805 r!13927)) Nil!28430)))))

(declare-fun b!2431457 () Bool)

(declare-fun c!387933 () Bool)

(assert (=> b!2431457 (= c!387933 (is-ElementMatch!7146 (regTwo!14805 r!13927)))))

(assert (=> b!2431457 (= e!1545940 e!1545942)))

(assert (=> b!2431447 (= e!1545939 call!148851)))

(declare-fun d!703248 () Bool)

(declare-fun c!387934 () Bool)

(assert (=> d!703248 (= c!387934 (is-EmptyExpr!7146 (regTwo!14805 r!13927)))))

(assert (=> d!703248 (= (matchRSpec!993 (regTwo!14805 r!13927) s!9460) e!1545941)))

(assert (= (and d!703248 c!387934) b!2431453))

(assert (= (and d!703248 (not c!387934)) b!2431452))

(assert (= (and b!2431452 res!1032349) b!2431457))

(assert (= (and b!2431457 c!387933) b!2431456))

(assert (= (and b!2431457 (not c!387933)) b!2431451))

(assert (= (and b!2431451 c!387935) b!2431449))

(assert (= (and b!2431451 (not c!387935)) b!2431454))

(assert (= (and b!2431449 (not res!1032351)) b!2431448))

(assert (= (and b!2431454 c!387932) b!2431450))

(assert (= (and b!2431454 (not c!387932)) b!2431447))

(assert (= (and b!2431450 (not res!1032350)) b!2431455))

(assert (= (or b!2431455 b!2431447) bm!148846))

(assert (= (or b!2431453 b!2431450) bm!148847))

(declare-fun m!2813655 () Bool)

(assert (=> bm!148846 m!2813655))

(declare-fun m!2813657 () Bool)

(assert (=> b!2431448 m!2813657))

(declare-fun m!2813659 () Bool)

(assert (=> b!2431449 m!2813659))

(assert (=> bm!148847 m!2813473))

(assert (=> b!2431087 d!703248))

(declare-fun b!2431459 () Bool)

(declare-fun e!1545944 () Bool)

(declare-fun call!148855 () Bool)

(assert (=> b!2431459 (= e!1545944 call!148855)))

(declare-fun call!148853 () Bool)

(declare-fun bm!148848 () Bool)

(declare-fun c!387936 () Bool)

(declare-fun c!387937 () Bool)

(assert (=> bm!148848 (= call!148853 (validRegex!2863 (ite c!387936 (reg!7475 (h!33832 l!9164)) (ite c!387937 (regOne!14805 (h!33832 l!9164)) (regTwo!14804 (h!33832 l!9164))))))))

(declare-fun b!2431460 () Bool)

(declare-fun e!1545948 () Bool)

(declare-fun call!148854 () Bool)

(assert (=> b!2431460 (= e!1545948 call!148854)))

(declare-fun b!2431461 () Bool)

(declare-fun e!1545949 () Bool)

(declare-fun e!1545950 () Bool)

(assert (=> b!2431461 (= e!1545949 e!1545950)))

(assert (=> b!2431461 (= c!387937 (is-Union!7146 (h!33832 l!9164)))))

(declare-fun bm!148849 () Bool)

(assert (=> bm!148849 (= call!148854 call!148853)))

(declare-fun b!2431462 () Bool)

(declare-fun res!1032353 () Bool)

(assert (=> b!2431462 (=> (not res!1032353) (not e!1545944))))

(assert (=> b!2431462 (= res!1032353 call!148854)))

(assert (=> b!2431462 (= e!1545950 e!1545944)))

(declare-fun b!2431463 () Bool)

(declare-fun e!1545947 () Bool)

(assert (=> b!2431463 (= e!1545947 e!1545949)))

(assert (=> b!2431463 (= c!387936 (is-Star!7146 (h!33832 l!9164)))))

(declare-fun bm!148850 () Bool)

(assert (=> bm!148850 (= call!148855 (validRegex!2863 (ite c!387937 (regTwo!14805 (h!33832 l!9164)) (regOne!14804 (h!33832 l!9164)))))))

(declare-fun b!2431464 () Bool)

(declare-fun e!1545945 () Bool)

(assert (=> b!2431464 (= e!1545949 e!1545945)))

(declare-fun res!1032352 () Bool)

(assert (=> b!2431464 (= res!1032352 (not (nullable!2178 (reg!7475 (h!33832 l!9164)))))))

(assert (=> b!2431464 (=> (not res!1032352) (not e!1545945))))

(declare-fun b!2431465 () Bool)

(assert (=> b!2431465 (= e!1545945 call!148853)))

(declare-fun b!2431466 () Bool)

(declare-fun e!1545946 () Bool)

(assert (=> b!2431466 (= e!1545946 e!1545948)))

(declare-fun res!1032354 () Bool)

(assert (=> b!2431466 (=> (not res!1032354) (not e!1545948))))

(assert (=> b!2431466 (= res!1032354 call!148855)))

(declare-fun b!2431458 () Bool)

(declare-fun res!1032355 () Bool)

(assert (=> b!2431458 (=> res!1032355 e!1545946)))

(assert (=> b!2431458 (= res!1032355 (not (is-Concat!11782 (h!33832 l!9164))))))

(assert (=> b!2431458 (= e!1545950 e!1545946)))

(declare-fun d!703250 () Bool)

(declare-fun res!1032356 () Bool)

(assert (=> d!703250 (=> res!1032356 e!1545947)))

(assert (=> d!703250 (= res!1032356 (is-ElementMatch!7146 (h!33832 l!9164)))))

(assert (=> d!703250 (= (validRegex!2863 (h!33832 l!9164)) e!1545947)))

(assert (= (and d!703250 (not res!1032356)) b!2431463))

(assert (= (and b!2431463 c!387936) b!2431464))

(assert (= (and b!2431463 (not c!387936)) b!2431461))

(assert (= (and b!2431464 res!1032352) b!2431465))

(assert (= (and b!2431461 c!387937) b!2431462))

(assert (= (and b!2431461 (not c!387937)) b!2431458))

(assert (= (and b!2431462 res!1032353) b!2431459))

(assert (= (and b!2431458 (not res!1032355)) b!2431466))

(assert (= (and b!2431466 res!1032354) b!2431460))

(assert (= (or b!2431462 b!2431460) bm!148849))

(assert (= (or b!2431459 b!2431466) bm!148850))

(assert (= (or b!2431465 bm!148849) bm!148848))

(declare-fun m!2813661 () Bool)

(assert (=> bm!148848 m!2813661))

(declare-fun m!2813663 () Bool)

(assert (=> bm!148850 m!2813663))

(declare-fun m!2813665 () Bool)

(assert (=> b!2431464 m!2813665))

(assert (=> bs!464149 d!703250))

(declare-fun d!703252 () Bool)

(declare-fun res!1032357 () Bool)

(declare-fun e!1545951 () Bool)

(assert (=> d!703252 (=> res!1032357 e!1545951)))

(assert (=> d!703252 (= res!1032357 (is-Nil!28431 (t!208506 l!9164)))))

(assert (=> d!703252 (= (forall!5780 (t!208506 l!9164) lambda!91660) e!1545951)))

(declare-fun b!2431467 () Bool)

(declare-fun e!1545952 () Bool)

(assert (=> b!2431467 (= e!1545951 e!1545952)))

(declare-fun res!1032358 () Bool)

(assert (=> b!2431467 (=> (not res!1032358) (not e!1545952))))

(assert (=> b!2431467 (= res!1032358 (dynLambda!12236 lambda!91660 (h!33832 (t!208506 l!9164))))))

(declare-fun b!2431468 () Bool)

(assert (=> b!2431468 (= e!1545952 (forall!5780 (t!208506 (t!208506 l!9164)) lambda!91660))))

(assert (= (and d!703252 (not res!1032357)) b!2431467))

(assert (= (and b!2431467 res!1032358) b!2431468))

(declare-fun b_lambda!74797 () Bool)

(assert (=> (not b_lambda!74797) (not b!2431467)))

(declare-fun m!2813667 () Bool)

(assert (=> b!2431467 m!2813667))

(declare-fun m!2813669 () Bool)

(assert (=> b!2431468 m!2813669))

(assert (=> b!2431133 d!703252))

(declare-fun d!703254 () Bool)

(declare-fun choose!14408 (Int) Bool)

(assert (=> d!703254 (= (Exists!1182 (ite c!387861 lambda!91674 lambda!91675)) (choose!14408 (ite c!387861 lambda!91674 lambda!91675)))))

(declare-fun bs!464173 () Bool)

(assert (= bs!464173 d!703254))

(declare-fun m!2813671 () Bool)

(assert (=> bs!464173 m!2813671))

(assert (=> bm!148790 d!703254))

(declare-fun b!2431470 () Bool)

(declare-fun e!1545953 () Bool)

(declare-fun call!148858 () Bool)

(assert (=> b!2431470 (= e!1545953 call!148858)))

(declare-fun bm!148851 () Bool)

(declare-fun call!148856 () Bool)

(declare-fun c!387938 () Bool)

(declare-fun c!387939 () Bool)

(assert (=> bm!148851 (= call!148856 (validRegex!2863 (ite c!387938 (reg!7475 (ite c!387818 (reg!7475 (regOne!14804 r!13927)) (ite c!387819 (regOne!14805 (regOne!14804 r!13927)) (regTwo!14804 (regOne!14804 r!13927))))) (ite c!387939 (regOne!14805 (ite c!387818 (reg!7475 (regOne!14804 r!13927)) (ite c!387819 (regOne!14805 (regOne!14804 r!13927)) (regTwo!14804 (regOne!14804 r!13927))))) (regTwo!14804 (ite c!387818 (reg!7475 (regOne!14804 r!13927)) (ite c!387819 (regOne!14805 (regOne!14804 r!13927)) (regTwo!14804 (regOne!14804 r!13927)))))))))))

(declare-fun b!2431471 () Bool)

(declare-fun e!1545957 () Bool)

(declare-fun call!148857 () Bool)

(assert (=> b!2431471 (= e!1545957 call!148857)))

(declare-fun b!2431472 () Bool)

(declare-fun e!1545958 () Bool)

(declare-fun e!1545959 () Bool)

(assert (=> b!2431472 (= e!1545958 e!1545959)))

(assert (=> b!2431472 (= c!387939 (is-Union!7146 (ite c!387818 (reg!7475 (regOne!14804 r!13927)) (ite c!387819 (regOne!14805 (regOne!14804 r!13927)) (regTwo!14804 (regOne!14804 r!13927))))))))

(declare-fun bm!148852 () Bool)

(assert (=> bm!148852 (= call!148857 call!148856)))

(declare-fun b!2431473 () Bool)

(declare-fun res!1032360 () Bool)

(assert (=> b!2431473 (=> (not res!1032360) (not e!1545953))))

(assert (=> b!2431473 (= res!1032360 call!148857)))

(assert (=> b!2431473 (= e!1545959 e!1545953)))

(declare-fun b!2431474 () Bool)

(declare-fun e!1545956 () Bool)

(assert (=> b!2431474 (= e!1545956 e!1545958)))

(assert (=> b!2431474 (= c!387938 (is-Star!7146 (ite c!387818 (reg!7475 (regOne!14804 r!13927)) (ite c!387819 (regOne!14805 (regOne!14804 r!13927)) (regTwo!14804 (regOne!14804 r!13927))))))))

(declare-fun bm!148853 () Bool)

(assert (=> bm!148853 (= call!148858 (validRegex!2863 (ite c!387939 (regTwo!14805 (ite c!387818 (reg!7475 (regOne!14804 r!13927)) (ite c!387819 (regOne!14805 (regOne!14804 r!13927)) (regTwo!14804 (regOne!14804 r!13927))))) (regOne!14804 (ite c!387818 (reg!7475 (regOne!14804 r!13927)) (ite c!387819 (regOne!14805 (regOne!14804 r!13927)) (regTwo!14804 (regOne!14804 r!13927))))))))))

(declare-fun b!2431475 () Bool)

(declare-fun e!1545954 () Bool)

(assert (=> b!2431475 (= e!1545958 e!1545954)))

(declare-fun res!1032359 () Bool)

(assert (=> b!2431475 (= res!1032359 (not (nullable!2178 (reg!7475 (ite c!387818 (reg!7475 (regOne!14804 r!13927)) (ite c!387819 (regOne!14805 (regOne!14804 r!13927)) (regTwo!14804 (regOne!14804 r!13927))))))))))

(assert (=> b!2431475 (=> (not res!1032359) (not e!1545954))))

(declare-fun b!2431476 () Bool)

(assert (=> b!2431476 (= e!1545954 call!148856)))

(declare-fun b!2431477 () Bool)

(declare-fun e!1545955 () Bool)

(assert (=> b!2431477 (= e!1545955 e!1545957)))

(declare-fun res!1032361 () Bool)

(assert (=> b!2431477 (=> (not res!1032361) (not e!1545957))))

(assert (=> b!2431477 (= res!1032361 call!148858)))

(declare-fun b!2431469 () Bool)

(declare-fun res!1032362 () Bool)

(assert (=> b!2431469 (=> res!1032362 e!1545955)))

(assert (=> b!2431469 (= res!1032362 (not (is-Concat!11782 (ite c!387818 (reg!7475 (regOne!14804 r!13927)) (ite c!387819 (regOne!14805 (regOne!14804 r!13927)) (regTwo!14804 (regOne!14804 r!13927)))))))))

(assert (=> b!2431469 (= e!1545959 e!1545955)))

(declare-fun d!703256 () Bool)

(declare-fun res!1032363 () Bool)

(assert (=> d!703256 (=> res!1032363 e!1545956)))

(assert (=> d!703256 (= res!1032363 (is-ElementMatch!7146 (ite c!387818 (reg!7475 (regOne!14804 r!13927)) (ite c!387819 (regOne!14805 (regOne!14804 r!13927)) (regTwo!14804 (regOne!14804 r!13927))))))))

(assert (=> d!703256 (= (validRegex!2863 (ite c!387818 (reg!7475 (regOne!14804 r!13927)) (ite c!387819 (regOne!14805 (regOne!14804 r!13927)) (regTwo!14804 (regOne!14804 r!13927))))) e!1545956)))

(assert (= (and d!703256 (not res!1032363)) b!2431474))

(assert (= (and b!2431474 c!387938) b!2431475))

(assert (= (and b!2431474 (not c!387938)) b!2431472))

(assert (= (and b!2431475 res!1032359) b!2431476))

(assert (= (and b!2431472 c!387939) b!2431473))

(assert (= (and b!2431472 (not c!387939)) b!2431469))

(assert (= (and b!2431473 res!1032360) b!2431470))

(assert (= (and b!2431469 (not res!1032362)) b!2431477))

(assert (= (and b!2431477 res!1032361) b!2431471))

(assert (= (or b!2431473 b!2431471) bm!148852))

(assert (= (or b!2431470 b!2431477) bm!148853))

(assert (= (or b!2431476 bm!148852) bm!148851))

(declare-fun m!2813673 () Bool)

(assert (=> bm!148851 m!2813673))

(declare-fun m!2813675 () Bool)

(assert (=> bm!148853 m!2813675))

(declare-fun m!2813677 () Bool)

(assert (=> b!2431475 m!2813677))

(assert (=> bm!148780 d!703256))

(declare-fun b!2431478 () Bool)

(declare-fun e!1545960 () Bool)

(assert (=> b!2431478 (= e!1545960 tp_is_empty!11705)))

(declare-fun b!2431481 () Bool)

(declare-fun tp!772086 () Bool)

(declare-fun tp!772084 () Bool)

(assert (=> b!2431481 (= e!1545960 (and tp!772086 tp!772084))))

(assert (=> b!2431158 (= tp!772009 e!1545960)))

(declare-fun b!2431479 () Bool)

(declare-fun tp!772083 () Bool)

(declare-fun tp!772085 () Bool)

(assert (=> b!2431479 (= e!1545960 (and tp!772083 tp!772085))))

(declare-fun b!2431480 () Bool)

(declare-fun tp!772082 () Bool)

(assert (=> b!2431480 (= e!1545960 tp!772082)))

(assert (= (and b!2431158 (is-ElementMatch!7146 (reg!7475 (regOne!14805 r!13927)))) b!2431478))

(assert (= (and b!2431158 (is-Concat!11782 (reg!7475 (regOne!14805 r!13927)))) b!2431479))

(assert (= (and b!2431158 (is-Star!7146 (reg!7475 (regOne!14805 r!13927)))) b!2431480))

(assert (= (and b!2431158 (is-Union!7146 (reg!7475 (regOne!14805 r!13927)))) b!2431481))

(declare-fun b!2431482 () Bool)

(declare-fun e!1545961 () Bool)

(assert (=> b!2431482 (= e!1545961 tp_is_empty!11705)))

(declare-fun b!2431485 () Bool)

(declare-fun tp!772091 () Bool)

(declare-fun tp!772089 () Bool)

(assert (=> b!2431485 (= e!1545961 (and tp!772091 tp!772089))))

(assert (=> b!2431153 (= tp!772005 e!1545961)))

(declare-fun b!2431483 () Bool)

(declare-fun tp!772088 () Bool)

(declare-fun tp!772090 () Bool)

(assert (=> b!2431483 (= e!1545961 (and tp!772088 tp!772090))))

(declare-fun b!2431484 () Bool)

(declare-fun tp!772087 () Bool)

(assert (=> b!2431484 (= e!1545961 tp!772087)))

(assert (= (and b!2431153 (is-ElementMatch!7146 (regOne!14804 (regTwo!14804 r!13927)))) b!2431482))

(assert (= (and b!2431153 (is-Concat!11782 (regOne!14804 (regTwo!14804 r!13927)))) b!2431483))

(assert (= (and b!2431153 (is-Star!7146 (regOne!14804 (regTwo!14804 r!13927)))) b!2431484))

(assert (= (and b!2431153 (is-Union!7146 (regOne!14804 (regTwo!14804 r!13927)))) b!2431485))

(declare-fun b!2431486 () Bool)

(declare-fun e!1545962 () Bool)

(assert (=> b!2431486 (= e!1545962 tp_is_empty!11705)))

(declare-fun b!2431489 () Bool)

(declare-fun tp!772096 () Bool)

(declare-fun tp!772094 () Bool)

(assert (=> b!2431489 (= e!1545962 (and tp!772096 tp!772094))))

(assert (=> b!2431153 (= tp!772007 e!1545962)))

(declare-fun b!2431487 () Bool)

(declare-fun tp!772093 () Bool)

(declare-fun tp!772095 () Bool)

(assert (=> b!2431487 (= e!1545962 (and tp!772093 tp!772095))))

(declare-fun b!2431488 () Bool)

(declare-fun tp!772092 () Bool)

(assert (=> b!2431488 (= e!1545962 tp!772092)))

(assert (= (and b!2431153 (is-ElementMatch!7146 (regTwo!14804 (regTwo!14804 r!13927)))) b!2431486))

(assert (= (and b!2431153 (is-Concat!11782 (regTwo!14804 (regTwo!14804 r!13927)))) b!2431487))

(assert (= (and b!2431153 (is-Star!7146 (regTwo!14804 (regTwo!14804 r!13927)))) b!2431488))

(assert (= (and b!2431153 (is-Union!7146 (regTwo!14804 (regTwo!14804 r!13927)))) b!2431489))

(declare-fun b!2431490 () Bool)

(declare-fun e!1545963 () Bool)

(assert (=> b!2431490 (= e!1545963 tp_is_empty!11705)))

(declare-fun b!2431493 () Bool)

(declare-fun tp!772101 () Bool)

(declare-fun tp!772099 () Bool)

(assert (=> b!2431493 (= e!1545963 (and tp!772101 tp!772099))))

(assert (=> b!2431167 (= tp!772023 e!1545963)))

(declare-fun b!2431491 () Bool)

(declare-fun tp!772098 () Bool)

(declare-fun tp!772100 () Bool)

(assert (=> b!2431491 (= e!1545963 (and tp!772098 tp!772100))))

(declare-fun b!2431492 () Bool)

(declare-fun tp!772097 () Bool)

(assert (=> b!2431492 (= e!1545963 tp!772097)))

(assert (= (and b!2431167 (is-ElementMatch!7146 (regOne!14805 (h!33832 l!9164)))) b!2431490))

(assert (= (and b!2431167 (is-Concat!11782 (regOne!14805 (h!33832 l!9164)))) b!2431491))

(assert (= (and b!2431167 (is-Star!7146 (regOne!14805 (h!33832 l!9164)))) b!2431492))

(assert (= (and b!2431167 (is-Union!7146 (regOne!14805 (h!33832 l!9164)))) b!2431493))

(declare-fun b!2431494 () Bool)

(declare-fun e!1545964 () Bool)

(assert (=> b!2431494 (= e!1545964 tp_is_empty!11705)))

(declare-fun b!2431497 () Bool)

(declare-fun tp!772106 () Bool)

(declare-fun tp!772104 () Bool)

(assert (=> b!2431497 (= e!1545964 (and tp!772106 tp!772104))))

(assert (=> b!2431167 (= tp!772021 e!1545964)))

(declare-fun b!2431495 () Bool)

(declare-fun tp!772103 () Bool)

(declare-fun tp!772105 () Bool)

(assert (=> b!2431495 (= e!1545964 (and tp!772103 tp!772105))))

(declare-fun b!2431496 () Bool)

(declare-fun tp!772102 () Bool)

(assert (=> b!2431496 (= e!1545964 tp!772102)))

(assert (= (and b!2431167 (is-ElementMatch!7146 (regTwo!14805 (h!33832 l!9164)))) b!2431494))

(assert (= (and b!2431167 (is-Concat!11782 (regTwo!14805 (h!33832 l!9164)))) b!2431495))

(assert (= (and b!2431167 (is-Star!7146 (regTwo!14805 (h!33832 l!9164)))) b!2431496))

(assert (= (and b!2431167 (is-Union!7146 (regTwo!14805 (h!33832 l!9164)))) b!2431497))

(declare-fun b!2431498 () Bool)

(declare-fun e!1545965 () Bool)

(declare-fun tp!772107 () Bool)

(assert (=> b!2431498 (= e!1545965 (and tp_is_empty!11705 tp!772107))))

(assert (=> b!2431177 (= tp!772032 e!1545965)))

(assert (= (and b!2431177 (is-Cons!28430 (t!208505 (t!208505 s!9460)))) b!2431498))

(declare-fun b!2431499 () Bool)

(declare-fun e!1545966 () Bool)

(assert (=> b!2431499 (= e!1545966 tp_is_empty!11705)))

(declare-fun b!2431502 () Bool)

(declare-fun tp!772112 () Bool)

(declare-fun tp!772110 () Bool)

(assert (=> b!2431502 (= e!1545966 (and tp!772112 tp!772110))))

(assert (=> b!2431154 (= tp!772004 e!1545966)))

(declare-fun b!2431500 () Bool)

(declare-fun tp!772109 () Bool)

(declare-fun tp!772111 () Bool)

(assert (=> b!2431500 (= e!1545966 (and tp!772109 tp!772111))))

(declare-fun b!2431501 () Bool)

(declare-fun tp!772108 () Bool)

(assert (=> b!2431501 (= e!1545966 tp!772108)))

(assert (= (and b!2431154 (is-ElementMatch!7146 (reg!7475 (regTwo!14804 r!13927)))) b!2431499))

(assert (= (and b!2431154 (is-Concat!11782 (reg!7475 (regTwo!14804 r!13927)))) b!2431500))

(assert (= (and b!2431154 (is-Star!7146 (reg!7475 (regTwo!14804 r!13927)))) b!2431501))

(assert (= (and b!2431154 (is-Union!7146 (reg!7475 (regTwo!14804 r!13927)))) b!2431502))

(declare-fun b!2431503 () Bool)

(declare-fun e!1545967 () Bool)

(assert (=> b!2431503 (= e!1545967 tp_is_empty!11705)))

(declare-fun b!2431506 () Bool)

(declare-fun tp!772117 () Bool)

(declare-fun tp!772115 () Bool)

(assert (=> b!2431506 (= e!1545967 (and tp!772117 tp!772115))))

(assert (=> b!2431149 (= tp!772000 e!1545967)))

(declare-fun b!2431504 () Bool)

(declare-fun tp!772114 () Bool)

(declare-fun tp!772116 () Bool)

(assert (=> b!2431504 (= e!1545967 (and tp!772114 tp!772116))))

(declare-fun b!2431505 () Bool)

(declare-fun tp!772113 () Bool)

(assert (=> b!2431505 (= e!1545967 tp!772113)))

(assert (= (and b!2431149 (is-ElementMatch!7146 (regOne!14804 (regOne!14804 r!13927)))) b!2431503))

(assert (= (and b!2431149 (is-Concat!11782 (regOne!14804 (regOne!14804 r!13927)))) b!2431504))

(assert (= (and b!2431149 (is-Star!7146 (regOne!14804 (regOne!14804 r!13927)))) b!2431505))

(assert (= (and b!2431149 (is-Union!7146 (regOne!14804 (regOne!14804 r!13927)))) b!2431506))

(declare-fun b!2431507 () Bool)

(declare-fun e!1545968 () Bool)

(assert (=> b!2431507 (= e!1545968 tp_is_empty!11705)))

(declare-fun b!2431510 () Bool)

(declare-fun tp!772122 () Bool)

(declare-fun tp!772120 () Bool)

(assert (=> b!2431510 (= e!1545968 (and tp!772122 tp!772120))))

(assert (=> b!2431149 (= tp!772002 e!1545968)))

(declare-fun b!2431508 () Bool)

(declare-fun tp!772119 () Bool)

(declare-fun tp!772121 () Bool)

(assert (=> b!2431508 (= e!1545968 (and tp!772119 tp!772121))))

(declare-fun b!2431509 () Bool)

(declare-fun tp!772118 () Bool)

(assert (=> b!2431509 (= e!1545968 tp!772118)))

(assert (= (and b!2431149 (is-ElementMatch!7146 (regTwo!14804 (regOne!14804 r!13927)))) b!2431507))

(assert (= (and b!2431149 (is-Concat!11782 (regTwo!14804 (regOne!14804 r!13927)))) b!2431508))

(assert (= (and b!2431149 (is-Star!7146 (regTwo!14804 (regOne!14804 r!13927)))) b!2431509))

(assert (= (and b!2431149 (is-Union!7146 (regTwo!14804 (regOne!14804 r!13927)))) b!2431510))

(declare-fun b!2431511 () Bool)

(declare-fun e!1545969 () Bool)

(assert (=> b!2431511 (= e!1545969 tp_is_empty!11705)))

(declare-fun b!2431514 () Bool)

(declare-fun tp!772127 () Bool)

(declare-fun tp!772125 () Bool)

(assert (=> b!2431514 (= e!1545969 (and tp!772127 tp!772125))))

(assert (=> b!2431163 (= tp!772018 e!1545969)))

(declare-fun b!2431512 () Bool)

(declare-fun tp!772124 () Bool)

(declare-fun tp!772126 () Bool)

(assert (=> b!2431512 (= e!1545969 (and tp!772124 tp!772126))))

(declare-fun b!2431513 () Bool)

(declare-fun tp!772123 () Bool)

(assert (=> b!2431513 (= e!1545969 tp!772123)))

(assert (= (and b!2431163 (is-ElementMatch!7146 (regOne!14805 (regTwo!14805 r!13927)))) b!2431511))

(assert (= (and b!2431163 (is-Concat!11782 (regOne!14805 (regTwo!14805 r!13927)))) b!2431512))

(assert (= (and b!2431163 (is-Star!7146 (regOne!14805 (regTwo!14805 r!13927)))) b!2431513))

(assert (= (and b!2431163 (is-Union!7146 (regOne!14805 (regTwo!14805 r!13927)))) b!2431514))

(declare-fun b!2431515 () Bool)

(declare-fun e!1545970 () Bool)

(assert (=> b!2431515 (= e!1545970 tp_is_empty!11705)))

(declare-fun b!2431518 () Bool)

(declare-fun tp!772132 () Bool)

(declare-fun tp!772130 () Bool)

(assert (=> b!2431518 (= e!1545970 (and tp!772132 tp!772130))))

(assert (=> b!2431163 (= tp!772016 e!1545970)))

(declare-fun b!2431516 () Bool)

(declare-fun tp!772129 () Bool)

(declare-fun tp!772131 () Bool)

(assert (=> b!2431516 (= e!1545970 (and tp!772129 tp!772131))))

(declare-fun b!2431517 () Bool)

(declare-fun tp!772128 () Bool)

(assert (=> b!2431517 (= e!1545970 tp!772128)))

(assert (= (and b!2431163 (is-ElementMatch!7146 (regTwo!14805 (regTwo!14805 r!13927)))) b!2431515))

(assert (= (and b!2431163 (is-Concat!11782 (regTwo!14805 (regTwo!14805 r!13927)))) b!2431516))

(assert (= (and b!2431163 (is-Star!7146 (regTwo!14805 (regTwo!14805 r!13927)))) b!2431517))

(assert (= (and b!2431163 (is-Union!7146 (regTwo!14805 (regTwo!14805 r!13927)))) b!2431518))

(declare-fun b!2431519 () Bool)

(declare-fun e!1545971 () Bool)

(assert (=> b!2431519 (= e!1545971 tp_is_empty!11705)))

(declare-fun b!2431522 () Bool)

(declare-fun tp!772137 () Bool)

(declare-fun tp!772135 () Bool)

(assert (=> b!2431522 (= e!1545971 (and tp!772137 tp!772135))))

(assert (=> b!2431166 (= tp!772019 e!1545971)))

(declare-fun b!2431520 () Bool)

(declare-fun tp!772134 () Bool)

(declare-fun tp!772136 () Bool)

(assert (=> b!2431520 (= e!1545971 (and tp!772134 tp!772136))))

(declare-fun b!2431521 () Bool)

(declare-fun tp!772133 () Bool)

(assert (=> b!2431521 (= e!1545971 tp!772133)))

(assert (= (and b!2431166 (is-ElementMatch!7146 (reg!7475 (h!33832 l!9164)))) b!2431519))

(assert (= (and b!2431166 (is-Concat!11782 (reg!7475 (h!33832 l!9164)))) b!2431520))

(assert (= (and b!2431166 (is-Star!7146 (reg!7475 (h!33832 l!9164)))) b!2431521))

(assert (= (and b!2431166 (is-Union!7146 (reg!7475 (h!33832 l!9164)))) b!2431522))

(declare-fun b!2431523 () Bool)

(declare-fun e!1545972 () Bool)

(assert (=> b!2431523 (= e!1545972 tp_is_empty!11705)))

(declare-fun b!2431526 () Bool)

(declare-fun tp!772142 () Bool)

(declare-fun tp!772140 () Bool)

(assert (=> b!2431526 (= e!1545972 (and tp!772142 tp!772140))))

(assert (=> b!2431161 (= tp!772015 e!1545972)))

(declare-fun b!2431524 () Bool)

(declare-fun tp!772139 () Bool)

(declare-fun tp!772141 () Bool)

(assert (=> b!2431524 (= e!1545972 (and tp!772139 tp!772141))))

(declare-fun b!2431525 () Bool)

(declare-fun tp!772138 () Bool)

(assert (=> b!2431525 (= e!1545972 tp!772138)))

(assert (= (and b!2431161 (is-ElementMatch!7146 (regOne!14804 (regTwo!14805 r!13927)))) b!2431523))

(assert (= (and b!2431161 (is-Concat!11782 (regOne!14804 (regTwo!14805 r!13927)))) b!2431524))

(assert (= (and b!2431161 (is-Star!7146 (regOne!14804 (regTwo!14805 r!13927)))) b!2431525))

(assert (= (and b!2431161 (is-Union!7146 (regOne!14804 (regTwo!14805 r!13927)))) b!2431526))

(declare-fun b!2431527 () Bool)

(declare-fun e!1545973 () Bool)

(assert (=> b!2431527 (= e!1545973 tp_is_empty!11705)))

(declare-fun b!2431530 () Bool)

(declare-fun tp!772147 () Bool)

(declare-fun tp!772145 () Bool)

(assert (=> b!2431530 (= e!1545973 (and tp!772147 tp!772145))))

(assert (=> b!2431161 (= tp!772017 e!1545973)))

(declare-fun b!2431528 () Bool)

(declare-fun tp!772144 () Bool)

(declare-fun tp!772146 () Bool)

(assert (=> b!2431528 (= e!1545973 (and tp!772144 tp!772146))))

(declare-fun b!2431529 () Bool)

(declare-fun tp!772143 () Bool)

(assert (=> b!2431529 (= e!1545973 tp!772143)))

(assert (= (and b!2431161 (is-ElementMatch!7146 (regTwo!14804 (regTwo!14805 r!13927)))) b!2431527))

(assert (= (and b!2431161 (is-Concat!11782 (regTwo!14804 (regTwo!14805 r!13927)))) b!2431528))

(assert (= (and b!2431161 (is-Star!7146 (regTwo!14804 (regTwo!14805 r!13927)))) b!2431529))

(assert (= (and b!2431161 (is-Union!7146 (regTwo!14804 (regTwo!14805 r!13927)))) b!2431530))

(declare-fun b!2431531 () Bool)

(declare-fun e!1545974 () Bool)

(assert (=> b!2431531 (= e!1545974 tp_is_empty!11705)))

(declare-fun b!2431534 () Bool)

(declare-fun tp!772152 () Bool)

(declare-fun tp!772150 () Bool)

(assert (=> b!2431534 (= e!1545974 (and tp!772152 tp!772150))))

(assert (=> b!2431162 (= tp!772014 e!1545974)))

(declare-fun b!2431532 () Bool)

(declare-fun tp!772149 () Bool)

(declare-fun tp!772151 () Bool)

(assert (=> b!2431532 (= e!1545974 (and tp!772149 tp!772151))))

(declare-fun b!2431533 () Bool)

(declare-fun tp!772148 () Bool)

(assert (=> b!2431533 (= e!1545974 tp!772148)))

(assert (= (and b!2431162 (is-ElementMatch!7146 (reg!7475 (regTwo!14805 r!13927)))) b!2431531))

(assert (= (and b!2431162 (is-Concat!11782 (reg!7475 (regTwo!14805 r!13927)))) b!2431532))

(assert (= (and b!2431162 (is-Star!7146 (reg!7475 (regTwo!14805 r!13927)))) b!2431533))

(assert (= (and b!2431162 (is-Union!7146 (reg!7475 (regTwo!14805 r!13927)))) b!2431534))

(declare-fun b!2431535 () Bool)

(declare-fun e!1545975 () Bool)

(assert (=> b!2431535 (= e!1545975 tp_is_empty!11705)))

(declare-fun b!2431538 () Bool)

(declare-fun tp!772157 () Bool)

(declare-fun tp!772155 () Bool)

(assert (=> b!2431538 (= e!1545975 (and tp!772157 tp!772155))))

(assert (=> b!2431157 (= tp!772010 e!1545975)))

(declare-fun b!2431536 () Bool)

(declare-fun tp!772154 () Bool)

(declare-fun tp!772156 () Bool)

(assert (=> b!2431536 (= e!1545975 (and tp!772154 tp!772156))))

(declare-fun b!2431537 () Bool)

(declare-fun tp!772153 () Bool)

(assert (=> b!2431537 (= e!1545975 tp!772153)))

(assert (= (and b!2431157 (is-ElementMatch!7146 (regOne!14804 (regOne!14805 r!13927)))) b!2431535))

(assert (= (and b!2431157 (is-Concat!11782 (regOne!14804 (regOne!14805 r!13927)))) b!2431536))

(assert (= (and b!2431157 (is-Star!7146 (regOne!14804 (regOne!14805 r!13927)))) b!2431537))

(assert (= (and b!2431157 (is-Union!7146 (regOne!14804 (regOne!14805 r!13927)))) b!2431538))

(declare-fun b!2431539 () Bool)

(declare-fun e!1545976 () Bool)

(assert (=> b!2431539 (= e!1545976 tp_is_empty!11705)))

(declare-fun b!2431542 () Bool)

(declare-fun tp!772162 () Bool)

(declare-fun tp!772160 () Bool)

(assert (=> b!2431542 (= e!1545976 (and tp!772162 tp!772160))))

(assert (=> b!2431157 (= tp!772012 e!1545976)))

(declare-fun b!2431540 () Bool)

(declare-fun tp!772159 () Bool)

(declare-fun tp!772161 () Bool)

(assert (=> b!2431540 (= e!1545976 (and tp!772159 tp!772161))))

(declare-fun b!2431541 () Bool)

(declare-fun tp!772158 () Bool)

(assert (=> b!2431541 (= e!1545976 tp!772158)))

(assert (= (and b!2431157 (is-ElementMatch!7146 (regTwo!14804 (regOne!14805 r!13927)))) b!2431539))

(assert (= (and b!2431157 (is-Concat!11782 (regTwo!14804 (regOne!14805 r!13927)))) b!2431540))

(assert (= (and b!2431157 (is-Star!7146 (regTwo!14804 (regOne!14805 r!13927)))) b!2431541))

(assert (= (and b!2431157 (is-Union!7146 (regTwo!14804 (regOne!14805 r!13927)))) b!2431542))

(declare-fun b!2431543 () Bool)

(declare-fun e!1545977 () Bool)

(assert (=> b!2431543 (= e!1545977 tp_is_empty!11705)))

(declare-fun b!2431546 () Bool)

(declare-fun tp!772167 () Bool)

(declare-fun tp!772165 () Bool)

(assert (=> b!2431546 (= e!1545977 (and tp!772167 tp!772165))))

(assert (=> b!2431165 (= tp!772020 e!1545977)))

(declare-fun b!2431544 () Bool)

(declare-fun tp!772164 () Bool)

(declare-fun tp!772166 () Bool)

(assert (=> b!2431544 (= e!1545977 (and tp!772164 tp!772166))))

(declare-fun b!2431545 () Bool)

(declare-fun tp!772163 () Bool)

(assert (=> b!2431545 (= e!1545977 tp!772163)))

(assert (= (and b!2431165 (is-ElementMatch!7146 (regOne!14804 (h!33832 l!9164)))) b!2431543))

(assert (= (and b!2431165 (is-Concat!11782 (regOne!14804 (h!33832 l!9164)))) b!2431544))

(assert (= (and b!2431165 (is-Star!7146 (regOne!14804 (h!33832 l!9164)))) b!2431545))

(assert (= (and b!2431165 (is-Union!7146 (regOne!14804 (h!33832 l!9164)))) b!2431546))

(declare-fun b!2431547 () Bool)

(declare-fun e!1545978 () Bool)

(assert (=> b!2431547 (= e!1545978 tp_is_empty!11705)))

(declare-fun b!2431550 () Bool)

(declare-fun tp!772172 () Bool)

(declare-fun tp!772170 () Bool)

(assert (=> b!2431550 (= e!1545978 (and tp!772172 tp!772170))))

(assert (=> b!2431165 (= tp!772022 e!1545978)))

(declare-fun b!2431548 () Bool)

(declare-fun tp!772169 () Bool)

(declare-fun tp!772171 () Bool)

(assert (=> b!2431548 (= e!1545978 (and tp!772169 tp!772171))))

(declare-fun b!2431549 () Bool)

(declare-fun tp!772168 () Bool)

(assert (=> b!2431549 (= e!1545978 tp!772168)))

(assert (= (and b!2431165 (is-ElementMatch!7146 (regTwo!14804 (h!33832 l!9164)))) b!2431547))

(assert (= (and b!2431165 (is-Concat!11782 (regTwo!14804 (h!33832 l!9164)))) b!2431548))

(assert (= (and b!2431165 (is-Star!7146 (regTwo!14804 (h!33832 l!9164)))) b!2431549))

(assert (= (and b!2431165 (is-Union!7146 (regTwo!14804 (h!33832 l!9164)))) b!2431550))

(declare-fun b!2431551 () Bool)

(declare-fun e!1545979 () Bool)

(assert (=> b!2431551 (= e!1545979 tp_is_empty!11705)))

(declare-fun b!2431554 () Bool)

(declare-fun tp!772177 () Bool)

(declare-fun tp!772175 () Bool)

(assert (=> b!2431554 (= e!1545979 (and tp!772177 tp!772175))))

(assert (=> b!2431172 (= tp!772028 e!1545979)))

(declare-fun b!2431552 () Bool)

(declare-fun tp!772174 () Bool)

(declare-fun tp!772176 () Bool)

(assert (=> b!2431552 (= e!1545979 (and tp!772174 tp!772176))))

(declare-fun b!2431553 () Bool)

(declare-fun tp!772173 () Bool)

(assert (=> b!2431553 (= e!1545979 tp!772173)))

(assert (= (and b!2431172 (is-ElementMatch!7146 (h!33832 (t!208506 l!9164)))) b!2431551))

(assert (= (and b!2431172 (is-Concat!11782 (h!33832 (t!208506 l!9164)))) b!2431552))

(assert (= (and b!2431172 (is-Star!7146 (h!33832 (t!208506 l!9164)))) b!2431553))

(assert (= (and b!2431172 (is-Union!7146 (h!33832 (t!208506 l!9164)))) b!2431554))

(declare-fun b!2431555 () Bool)

(declare-fun e!1545980 () Bool)

(declare-fun tp!772178 () Bool)

(declare-fun tp!772179 () Bool)

(assert (=> b!2431555 (= e!1545980 (and tp!772178 tp!772179))))

(assert (=> b!2431172 (= tp!772029 e!1545980)))

(assert (= (and b!2431172 (is-Cons!28431 (t!208506 (t!208506 l!9164)))) b!2431555))

(declare-fun b!2431556 () Bool)

(declare-fun e!1545981 () Bool)

(assert (=> b!2431556 (= e!1545981 tp_is_empty!11705)))

(declare-fun b!2431559 () Bool)

(declare-fun tp!772184 () Bool)

(declare-fun tp!772182 () Bool)

(assert (=> b!2431559 (= e!1545981 (and tp!772184 tp!772182))))

(assert (=> b!2431151 (= tp!772003 e!1545981)))

(declare-fun b!2431557 () Bool)

(declare-fun tp!772181 () Bool)

(declare-fun tp!772183 () Bool)

(assert (=> b!2431557 (= e!1545981 (and tp!772181 tp!772183))))

(declare-fun b!2431558 () Bool)

(declare-fun tp!772180 () Bool)

(assert (=> b!2431558 (= e!1545981 tp!772180)))

(assert (= (and b!2431151 (is-ElementMatch!7146 (regOne!14805 (regOne!14804 r!13927)))) b!2431556))

(assert (= (and b!2431151 (is-Concat!11782 (regOne!14805 (regOne!14804 r!13927)))) b!2431557))

(assert (= (and b!2431151 (is-Star!7146 (regOne!14805 (regOne!14804 r!13927)))) b!2431558))

(assert (= (and b!2431151 (is-Union!7146 (regOne!14805 (regOne!14804 r!13927)))) b!2431559))

(declare-fun b!2431560 () Bool)

(declare-fun e!1545982 () Bool)

(assert (=> b!2431560 (= e!1545982 tp_is_empty!11705)))

(declare-fun b!2431563 () Bool)

(declare-fun tp!772189 () Bool)

(declare-fun tp!772187 () Bool)

(assert (=> b!2431563 (= e!1545982 (and tp!772189 tp!772187))))

(assert (=> b!2431151 (= tp!772001 e!1545982)))

(declare-fun b!2431561 () Bool)

(declare-fun tp!772186 () Bool)

(declare-fun tp!772188 () Bool)

(assert (=> b!2431561 (= e!1545982 (and tp!772186 tp!772188))))

(declare-fun b!2431562 () Bool)

(declare-fun tp!772185 () Bool)

(assert (=> b!2431562 (= e!1545982 tp!772185)))

(assert (= (and b!2431151 (is-ElementMatch!7146 (regTwo!14805 (regOne!14804 r!13927)))) b!2431560))

(assert (= (and b!2431151 (is-Concat!11782 (regTwo!14805 (regOne!14804 r!13927)))) b!2431561))

(assert (= (and b!2431151 (is-Star!7146 (regTwo!14805 (regOne!14804 r!13927)))) b!2431562))

(assert (= (and b!2431151 (is-Union!7146 (regTwo!14805 (regOne!14804 r!13927)))) b!2431563))

(declare-fun b!2431564 () Bool)

(declare-fun e!1545983 () Bool)

(assert (=> b!2431564 (= e!1545983 tp_is_empty!11705)))

(declare-fun b!2431567 () Bool)

(declare-fun tp!772194 () Bool)

(declare-fun tp!772192 () Bool)

(assert (=> b!2431567 (= e!1545983 (and tp!772194 tp!772192))))

(assert (=> b!2431147 (= tp!771998 e!1545983)))

(declare-fun b!2431565 () Bool)

(declare-fun tp!772191 () Bool)

(declare-fun tp!772193 () Bool)

(assert (=> b!2431565 (= e!1545983 (and tp!772191 tp!772193))))

(declare-fun b!2431566 () Bool)

(declare-fun tp!772190 () Bool)

(assert (=> b!2431566 (= e!1545983 tp!772190)))

(assert (= (and b!2431147 (is-ElementMatch!7146 (regOne!14805 (reg!7475 r!13927)))) b!2431564))

(assert (= (and b!2431147 (is-Concat!11782 (regOne!14805 (reg!7475 r!13927)))) b!2431565))

(assert (= (and b!2431147 (is-Star!7146 (regOne!14805 (reg!7475 r!13927)))) b!2431566))

(assert (= (and b!2431147 (is-Union!7146 (regOne!14805 (reg!7475 r!13927)))) b!2431567))

(declare-fun b!2431568 () Bool)

(declare-fun e!1545984 () Bool)

(assert (=> b!2431568 (= e!1545984 tp_is_empty!11705)))

(declare-fun b!2431571 () Bool)

(declare-fun tp!772199 () Bool)

(declare-fun tp!772197 () Bool)

(assert (=> b!2431571 (= e!1545984 (and tp!772199 tp!772197))))

(assert (=> b!2431147 (= tp!771996 e!1545984)))

(declare-fun b!2431569 () Bool)

(declare-fun tp!772196 () Bool)

(declare-fun tp!772198 () Bool)

(assert (=> b!2431569 (= e!1545984 (and tp!772196 tp!772198))))

(declare-fun b!2431570 () Bool)

(declare-fun tp!772195 () Bool)

(assert (=> b!2431570 (= e!1545984 tp!772195)))

(assert (= (and b!2431147 (is-ElementMatch!7146 (regTwo!14805 (reg!7475 r!13927)))) b!2431568))

(assert (= (and b!2431147 (is-Concat!11782 (regTwo!14805 (reg!7475 r!13927)))) b!2431569))

(assert (= (and b!2431147 (is-Star!7146 (regTwo!14805 (reg!7475 r!13927)))) b!2431570))

(assert (= (and b!2431147 (is-Union!7146 (regTwo!14805 (reg!7475 r!13927)))) b!2431571))

(declare-fun b!2431572 () Bool)

(declare-fun e!1545985 () Bool)

(assert (=> b!2431572 (= e!1545985 tp_is_empty!11705)))

(declare-fun b!2431575 () Bool)

(declare-fun tp!772204 () Bool)

(declare-fun tp!772202 () Bool)

(assert (=> b!2431575 (= e!1545985 (and tp!772204 tp!772202))))

(assert (=> b!2431150 (= tp!771999 e!1545985)))

(declare-fun b!2431573 () Bool)

(declare-fun tp!772201 () Bool)

(declare-fun tp!772203 () Bool)

(assert (=> b!2431573 (= e!1545985 (and tp!772201 tp!772203))))

(declare-fun b!2431574 () Bool)

(declare-fun tp!772200 () Bool)

(assert (=> b!2431574 (= e!1545985 tp!772200)))

(assert (= (and b!2431150 (is-ElementMatch!7146 (reg!7475 (regOne!14804 r!13927)))) b!2431572))

(assert (= (and b!2431150 (is-Concat!11782 (reg!7475 (regOne!14804 r!13927)))) b!2431573))

(assert (= (and b!2431150 (is-Star!7146 (reg!7475 (regOne!14804 r!13927)))) b!2431574))

(assert (= (and b!2431150 (is-Union!7146 (reg!7475 (regOne!14804 r!13927)))) b!2431575))

(declare-fun b!2431576 () Bool)

(declare-fun e!1545986 () Bool)

(assert (=> b!2431576 (= e!1545986 tp_is_empty!11705)))

(declare-fun b!2431579 () Bool)

(declare-fun tp!772209 () Bool)

(declare-fun tp!772207 () Bool)

(assert (=> b!2431579 (= e!1545986 (and tp!772209 tp!772207))))

(assert (=> b!2431145 (= tp!771995 e!1545986)))

(declare-fun b!2431577 () Bool)

(declare-fun tp!772206 () Bool)

(declare-fun tp!772208 () Bool)

(assert (=> b!2431577 (= e!1545986 (and tp!772206 tp!772208))))

(declare-fun b!2431578 () Bool)

(declare-fun tp!772205 () Bool)

(assert (=> b!2431578 (= e!1545986 tp!772205)))

(assert (= (and b!2431145 (is-ElementMatch!7146 (regOne!14804 (reg!7475 r!13927)))) b!2431576))

(assert (= (and b!2431145 (is-Concat!11782 (regOne!14804 (reg!7475 r!13927)))) b!2431577))

(assert (= (and b!2431145 (is-Star!7146 (regOne!14804 (reg!7475 r!13927)))) b!2431578))

(assert (= (and b!2431145 (is-Union!7146 (regOne!14804 (reg!7475 r!13927)))) b!2431579))

(declare-fun b!2431580 () Bool)

(declare-fun e!1545987 () Bool)

(assert (=> b!2431580 (= e!1545987 tp_is_empty!11705)))

(declare-fun b!2431583 () Bool)

(declare-fun tp!772214 () Bool)

(declare-fun tp!772212 () Bool)

(assert (=> b!2431583 (= e!1545987 (and tp!772214 tp!772212))))

(assert (=> b!2431145 (= tp!771997 e!1545987)))

(declare-fun b!2431581 () Bool)

(declare-fun tp!772211 () Bool)

(declare-fun tp!772213 () Bool)

(assert (=> b!2431581 (= e!1545987 (and tp!772211 tp!772213))))

(declare-fun b!2431582 () Bool)

(declare-fun tp!772210 () Bool)

(assert (=> b!2431582 (= e!1545987 tp!772210)))

(assert (= (and b!2431145 (is-ElementMatch!7146 (regTwo!14804 (reg!7475 r!13927)))) b!2431580))

(assert (= (and b!2431145 (is-Concat!11782 (regTwo!14804 (reg!7475 r!13927)))) b!2431581))

(assert (= (and b!2431145 (is-Star!7146 (regTwo!14804 (reg!7475 r!13927)))) b!2431582))

(assert (= (and b!2431145 (is-Union!7146 (regTwo!14804 (reg!7475 r!13927)))) b!2431583))

(declare-fun b!2431584 () Bool)

(declare-fun e!1545988 () Bool)

(assert (=> b!2431584 (= e!1545988 tp_is_empty!11705)))

(declare-fun b!2431587 () Bool)

(declare-fun tp!772219 () Bool)

(declare-fun tp!772217 () Bool)

(assert (=> b!2431587 (= e!1545988 (and tp!772219 tp!772217))))

(assert (=> b!2431159 (= tp!772013 e!1545988)))

(declare-fun b!2431585 () Bool)

(declare-fun tp!772216 () Bool)

(declare-fun tp!772218 () Bool)

(assert (=> b!2431585 (= e!1545988 (and tp!772216 tp!772218))))

(declare-fun b!2431586 () Bool)

(declare-fun tp!772215 () Bool)

(assert (=> b!2431586 (= e!1545988 tp!772215)))

(assert (= (and b!2431159 (is-ElementMatch!7146 (regOne!14805 (regOne!14805 r!13927)))) b!2431584))

(assert (= (and b!2431159 (is-Concat!11782 (regOne!14805 (regOne!14805 r!13927)))) b!2431585))

(assert (= (and b!2431159 (is-Star!7146 (regOne!14805 (regOne!14805 r!13927)))) b!2431586))

(assert (= (and b!2431159 (is-Union!7146 (regOne!14805 (regOne!14805 r!13927)))) b!2431587))

(declare-fun b!2431588 () Bool)

(declare-fun e!1545989 () Bool)

(assert (=> b!2431588 (= e!1545989 tp_is_empty!11705)))

(declare-fun b!2431591 () Bool)

(declare-fun tp!772224 () Bool)

(declare-fun tp!772222 () Bool)

(assert (=> b!2431591 (= e!1545989 (and tp!772224 tp!772222))))

(assert (=> b!2431159 (= tp!772011 e!1545989)))

(declare-fun b!2431589 () Bool)

(declare-fun tp!772221 () Bool)

(declare-fun tp!772223 () Bool)

(assert (=> b!2431589 (= e!1545989 (and tp!772221 tp!772223))))

(declare-fun b!2431590 () Bool)

(declare-fun tp!772220 () Bool)

(assert (=> b!2431590 (= e!1545989 tp!772220)))

(assert (= (and b!2431159 (is-ElementMatch!7146 (regTwo!14805 (regOne!14805 r!13927)))) b!2431588))

(assert (= (and b!2431159 (is-Concat!11782 (regTwo!14805 (regOne!14805 r!13927)))) b!2431589))

(assert (= (and b!2431159 (is-Star!7146 (regTwo!14805 (regOne!14805 r!13927)))) b!2431590))

(assert (= (and b!2431159 (is-Union!7146 (regTwo!14805 (regOne!14805 r!13927)))) b!2431591))

(declare-fun b!2431592 () Bool)

(declare-fun e!1545990 () Bool)

(assert (=> b!2431592 (= e!1545990 tp_is_empty!11705)))

(declare-fun b!2431595 () Bool)

(declare-fun tp!772229 () Bool)

(declare-fun tp!772227 () Bool)

(assert (=> b!2431595 (= e!1545990 (and tp!772229 tp!772227))))

(assert (=> b!2431146 (= tp!771994 e!1545990)))

(declare-fun b!2431593 () Bool)

(declare-fun tp!772226 () Bool)

(declare-fun tp!772228 () Bool)

(assert (=> b!2431593 (= e!1545990 (and tp!772226 tp!772228))))

(declare-fun b!2431594 () Bool)

(declare-fun tp!772225 () Bool)

(assert (=> b!2431594 (= e!1545990 tp!772225)))

(assert (= (and b!2431146 (is-ElementMatch!7146 (reg!7475 (reg!7475 r!13927)))) b!2431592))

(assert (= (and b!2431146 (is-Concat!11782 (reg!7475 (reg!7475 r!13927)))) b!2431593))

(assert (= (and b!2431146 (is-Star!7146 (reg!7475 (reg!7475 r!13927)))) b!2431594))

(assert (= (and b!2431146 (is-Union!7146 (reg!7475 (reg!7475 r!13927)))) b!2431595))

(declare-fun b!2431596 () Bool)

(declare-fun e!1545991 () Bool)

(assert (=> b!2431596 (= e!1545991 tp_is_empty!11705)))

(declare-fun b!2431599 () Bool)

(declare-fun tp!772234 () Bool)

(declare-fun tp!772232 () Bool)

(assert (=> b!2431599 (= e!1545991 (and tp!772234 tp!772232))))

(assert (=> b!2431155 (= tp!772008 e!1545991)))

(declare-fun b!2431597 () Bool)

(declare-fun tp!772231 () Bool)

(declare-fun tp!772233 () Bool)

(assert (=> b!2431597 (= e!1545991 (and tp!772231 tp!772233))))

(declare-fun b!2431598 () Bool)

(declare-fun tp!772230 () Bool)

(assert (=> b!2431598 (= e!1545991 tp!772230)))

(assert (= (and b!2431155 (is-ElementMatch!7146 (regOne!14805 (regTwo!14804 r!13927)))) b!2431596))

(assert (= (and b!2431155 (is-Concat!11782 (regOne!14805 (regTwo!14804 r!13927)))) b!2431597))

(assert (= (and b!2431155 (is-Star!7146 (regOne!14805 (regTwo!14804 r!13927)))) b!2431598))

(assert (= (and b!2431155 (is-Union!7146 (regOne!14805 (regTwo!14804 r!13927)))) b!2431599))

(declare-fun b!2431600 () Bool)

(declare-fun e!1545992 () Bool)

(assert (=> b!2431600 (= e!1545992 tp_is_empty!11705)))

(declare-fun b!2431603 () Bool)

(declare-fun tp!772239 () Bool)

(declare-fun tp!772237 () Bool)

(assert (=> b!2431603 (= e!1545992 (and tp!772239 tp!772237))))

(assert (=> b!2431155 (= tp!772006 e!1545992)))

(declare-fun b!2431601 () Bool)

(declare-fun tp!772236 () Bool)

(declare-fun tp!772238 () Bool)

(assert (=> b!2431601 (= e!1545992 (and tp!772236 tp!772238))))

(declare-fun b!2431602 () Bool)

(declare-fun tp!772235 () Bool)

(assert (=> b!2431602 (= e!1545992 tp!772235)))

(assert (= (and b!2431155 (is-ElementMatch!7146 (regTwo!14805 (regTwo!14804 r!13927)))) b!2431600))

(assert (= (and b!2431155 (is-Concat!11782 (regTwo!14805 (regTwo!14804 r!13927)))) b!2431601))

(assert (= (and b!2431155 (is-Star!7146 (regTwo!14805 (regTwo!14804 r!13927)))) b!2431602))

(assert (= (and b!2431155 (is-Union!7146 (regTwo!14805 (regTwo!14804 r!13927)))) b!2431603))

(declare-fun b_lambda!74799 () Bool)

(assert (= b_lambda!74795 (or d!703168 b_lambda!74799)))

(declare-fun bs!464174 () Bool)

(declare-fun d!703258 () Bool)

(assert (= bs!464174 (and d!703258 d!703168)))

(assert (=> bs!464174 (= (dynLambda!12236 lambda!91666 (h!33832 l!9164)) (validRegex!2863 (h!33832 l!9164)))))

(assert (=> bs!464174 m!2813525))

(assert (=> b!2431436 d!703258))

(declare-fun b_lambda!74801 () Bool)

(assert (= b_lambda!74797 (or start!238026 b_lambda!74801)))

(declare-fun bs!464175 () Bool)

(declare-fun d!703260 () Bool)

(assert (= bs!464175 (and d!703260 start!238026)))

(assert (=> bs!464175 (= (dynLambda!12236 lambda!91660 (h!33832 (t!208506 l!9164))) (validRegex!2863 (h!33832 (t!208506 l!9164))))))

(declare-fun m!2813679 () Bool)

(assert (=> bs!464175 m!2813679))

(assert (=> b!2431467 d!703260))

(push 1)

(assert (not b!2431590))

(assert (not bm!148840))

(assert (not b!2431589))

(assert (not bm!148831))

(assert (not b!2431585))

(assert (not b!2431491))

(assert (not b!2431565))

(assert (not b!2431514))

(assert (not b!2431553))

(assert (not b!2431529))

(assert (not b!2431340))

(assert (not bs!464175))

(assert (not b!2431569))

(assert (not b!2431586))

(assert (not d!703222))

(assert (not b_lambda!74799))

(assert (not b!2431479))

(assert (not b!2431537))

(assert (not d!703202))

(assert (not b!2431541))

(assert (not d!703236))

(assert (not b!2431398))

(assert (not bm!148826))

(assert (not b!2431487))

(assert (not b!2431506))

(assert (not b!2431512))

(assert (not bm!148845))

(assert (not b!2431550))

(assert (not b!2431561))

(assert (not bm!148839))

(assert (not b!2431493))

(assert (not b!2431566))

(assert (not b!2431495))

(assert (not b!2431348))

(assert (not b!2431485))

(assert (not b!2431562))

(assert (not b!2431480))

(assert (not bm!148836))

(assert (not b!2431437))

(assert (not b!2431563))

(assert (not d!703204))

(assert (not b_lambda!74789))

(assert (not b!2431517))

(assert (not bm!148846))

(assert (not b!2431500))

(assert (not b!2431501))

(assert (not b!2431545))

(assert (not d!703234))

(assert (not b!2431412))

(assert (not b!2431522))

(assert (not b!2431540))

(assert (not b!2431573))

(assert (not b!2431582))

(assert (not b!2431385))

(assert (not d!703254))

(assert (not b!2431484))

(assert (not b!2431536))

(assert (not b!2431394))

(assert (not b!2431518))

(assert tp_is_empty!11705)

(assert (not b!2431579))

(assert (not b!2431599))

(assert (not b!2431598))

(assert (not b!2431497))

(assert (not b!2431538))

(assert (not b!2431549))

(assert (not b!2431343))

(assert (not b!2431555))

(assert (not bm!148832))

(assert (not b!2431558))

(assert (not b!2431554))

(assert (not b!2431525))

(assert (not b!2431337))

(assert (not b!2431468))

(assert (not b!2431483))

(assert (not b!2431593))

(assert (not b!2431532))

(assert (not b!2431413))

(assert (not bm!148842))

(assert (not bm!148829))

(assert (not b!2431557))

(assert (not b!2431433))

(assert (not b!2431496))

(assert (not b!2431533))

(assert (not bm!148837))

(assert (not bm!148853))

(assert (not b!2431372))

(assert (not b_lambda!74801))

(assert (not b!2431591))

(assert (not b!2431567))

(assert (not bm!148848))

(assert (not b!2431559))

(assert (not b!2431530))

(assert (not b!2431492))

(assert (not b!2431513))

(assert (not b!2431411))

(assert (not b!2431344))

(assert (not b!2431516))

(assert (not b!2431524))

(assert (not b!2431534))

(assert (not b!2431603))

(assert (not b!2431595))

(assert (not b!2431489))

(assert (not b!2431542))

(assert (not b!2431449))

(assert (not bm!148843))

(assert (not b!2431508))

(assert (not b!2431546))

(assert (not b!2431594))

(assert (not b!2431504))

(assert (not b!2431552))

(assert (not b!2431502))

(assert (not b!2431505))

(assert (not b!2431408))

(assert (not b!2431424))

(assert (not bm!148850))

(assert (not b!2431481))

(assert (not b!2431548))

(assert (not b!2431583))

(assert (not b!2431528))

(assert (not bs!464174))

(assert (not d!703216))

(assert (not b!2431544))

(assert (not b!2431601))

(assert (not b!2431410))

(assert (not bm!148834))

(assert (not b!2431577))

(assert (not b!2431464))

(assert (not b!2431581))

(assert (not b!2431578))

(assert (not b!2431417))

(assert (not b!2431498))

(assert (not b!2431399))

(assert (not bm!148835))

(assert (not b!2431347))

(assert (not bm!148825))

(assert (not b!2431571))

(assert (not b!2431488))

(assert (not b!2431448))

(assert (not b!2431414))

(assert (not bm!148816))

(assert (not bm!148847))

(assert (not b!2431520))

(assert (not b!2431602))

(assert (not b!2431444))

(assert (not b!2431526))

(assert (not b!2431510))

(assert (not b!2431475))

(assert (not b!2431597))

(assert (not b!2431587))

(assert (not b!2431521))

(assert (not bm!148851))

(assert (not d!703238))

(assert (not b!2431570))

(assert (not b!2431575))

(assert (not b!2431509))

(assert (not b!2431574))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

