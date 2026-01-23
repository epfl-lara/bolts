; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282542 () Bool)

(assert start!282542)

(declare-fun b!2902625 () Bool)

(declare-fun e!1832826 () Bool)

(assert (=> b!2902625 (= e!1832826 false)))

(declare-fun lt!1022326 () Bool)

(declare-datatypes ((C!17932 0))(
  ( (C!17933 (val!11000 Int)) )
))
(declare-datatypes ((Regex!8875 0))(
  ( (ElementMatch!8875 (c!473028 C!17932)) (Concat!14196 (regOne!18262 Regex!8875) (regTwo!18262 Regex!8875)) (EmptyExpr!8875) (Star!8875 (reg!9204 Regex!8875)) (EmptyLang!8875) (Union!8875 (regOne!18263 Regex!8875) (regTwo!18263 Regex!8875)) )
))
(declare-fun lt!1022325 () Regex!8875)

(declare-datatypes ((List!34676 0))(
  ( (Nil!34552) (Cons!34552 (h!39972 C!17932) (t!233719 List!34676)) )
))
(declare-fun prefix!1456 () List!34676)

(declare-fun prefixMatch!933 (Regex!8875 List!34676) Bool)

(assert (=> b!2902625 (= lt!1022326 (prefixMatch!933 lt!1022325 (t!233719 prefix!1456)))))

(declare-fun b!2902626 () Bool)

(declare-fun e!1832825 () Bool)

(assert (=> b!2902626 (= e!1832825 e!1832826)))

(declare-fun res!1199258 () Bool)

(assert (=> b!2902626 (=> (not res!1199258) (not e!1832826))))

(declare-fun validRegex!3648 (Regex!8875) Bool)

(assert (=> b!2902626 (= res!1199258 (validRegex!3648 lt!1022325))))

(declare-fun r!19097 () Regex!8875)

(declare-fun derivativeStep!2382 (Regex!8875 C!17932) Regex!8875)

(assert (=> b!2902626 (= lt!1022325 (derivativeStep!2382 r!19097 (h!39972 prefix!1456)))))

(declare-fun b!2902627 () Bool)

(declare-fun e!1832829 () Bool)

(declare-fun tp!931634 () Bool)

(declare-fun tp!931631 () Bool)

(assert (=> b!2902627 (= e!1832829 (and tp!931634 tp!931631))))

(declare-fun b!2902628 () Bool)

(declare-fun res!1199260 () Bool)

(assert (=> b!2902628 (=> (not res!1199260) (not e!1832825))))

(declare-fun s!13418 () List!34676)

(declare-fun isPrefix!2712 (List!34676 List!34676) Bool)

(assert (=> b!2902628 (= res!1199260 (isPrefix!2712 prefix!1456 s!13418))))

(declare-fun b!2902629 () Bool)

(declare-fun tp!931632 () Bool)

(declare-fun tp!931636 () Bool)

(assert (=> b!2902629 (= e!1832829 (and tp!931632 tp!931636))))

(declare-fun b!2902630 () Bool)

(declare-fun tp_is_empty!15337 () Bool)

(assert (=> b!2902630 (= e!1832829 tp_is_empty!15337)))

(declare-fun b!2902631 () Bool)

(declare-fun e!1832827 () Bool)

(declare-fun tp!931633 () Bool)

(assert (=> b!2902631 (= e!1832827 (and tp_is_empty!15337 tp!931633))))

(declare-fun res!1199261 () Bool)

(assert (=> start!282542 (=> (not res!1199261) (not e!1832825))))

(assert (=> start!282542 (= res!1199261 (validRegex!3648 r!19097))))

(assert (=> start!282542 e!1832825))

(assert (=> start!282542 e!1832829))

(declare-fun e!1832828 () Bool)

(assert (=> start!282542 e!1832828))

(assert (=> start!282542 e!1832827))

(declare-fun b!2902632 () Bool)

(declare-fun res!1199257 () Bool)

(assert (=> b!2902632 (=> (not res!1199257) (not e!1832825))))

(get-info :version)

(assert (=> b!2902632 (= res!1199257 (not ((_ is Nil!34552) prefix!1456)))))

(declare-fun b!2902633 () Bool)

(declare-fun res!1199259 () Bool)

(assert (=> b!2902633 (=> (not res!1199259) (not e!1832825))))

(assert (=> b!2902633 (= res!1199259 (not (prefixMatch!933 r!19097 prefix!1456)))))

(declare-fun b!2902634 () Bool)

(declare-fun res!1199256 () Bool)

(assert (=> b!2902634 (=> (not res!1199256) (not e!1832826))))

(declare-fun tail!4636 (List!34676) List!34676)

(assert (=> b!2902634 (= res!1199256 (isPrefix!2712 (t!233719 prefix!1456) (tail!4636 s!13418)))))

(declare-fun b!2902635 () Bool)

(declare-fun tp!931635 () Bool)

(assert (=> b!2902635 (= e!1832828 (and tp_is_empty!15337 tp!931635))))

(declare-fun b!2902636 () Bool)

(declare-fun tp!931637 () Bool)

(assert (=> b!2902636 (= e!1832829 tp!931637)))

(assert (= (and start!282542 res!1199261) b!2902628))

(assert (= (and b!2902628 res!1199260) b!2902633))

(assert (= (and b!2902633 res!1199259) b!2902632))

(assert (= (and b!2902632 res!1199257) b!2902626))

(assert (= (and b!2902626 res!1199258) b!2902634))

(assert (= (and b!2902634 res!1199256) b!2902625))

(assert (= (and start!282542 ((_ is ElementMatch!8875) r!19097)) b!2902630))

(assert (= (and start!282542 ((_ is Concat!14196) r!19097)) b!2902627))

(assert (= (and start!282542 ((_ is Star!8875) r!19097)) b!2902636))

(assert (= (and start!282542 ((_ is Union!8875) r!19097)) b!2902629))

(assert (= (and start!282542 ((_ is Cons!34552) prefix!1456)) b!2902635))

(assert (= (and start!282542 ((_ is Cons!34552) s!13418)) b!2902631))

(declare-fun m!3306695 () Bool)

(assert (=> b!2902626 m!3306695))

(declare-fun m!3306697 () Bool)

(assert (=> b!2902626 m!3306697))

(declare-fun m!3306699 () Bool)

(assert (=> b!2902625 m!3306699))

(declare-fun m!3306701 () Bool)

(assert (=> b!2902628 m!3306701))

(declare-fun m!3306703 () Bool)

(assert (=> b!2902633 m!3306703))

(declare-fun m!3306705 () Bool)

(assert (=> b!2902634 m!3306705))

(assert (=> b!2902634 m!3306705))

(declare-fun m!3306707 () Bool)

(assert (=> b!2902634 m!3306707))

(declare-fun m!3306709 () Bool)

(assert (=> start!282542 m!3306709))

(check-sat tp_is_empty!15337 (not b!2902634) (not b!2902631) (not b!2902628) (not b!2902635) (not b!2902636) (not start!282542) (not b!2902633) (not b!2902629) (not b!2902627) (not b!2902626) (not b!2902625))
(check-sat)
