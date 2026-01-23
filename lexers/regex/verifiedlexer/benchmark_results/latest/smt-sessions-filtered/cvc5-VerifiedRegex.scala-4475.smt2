; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237934 () Bool)

(assert start!237934)

(declare-fun b!2429685 () Bool)

(declare-fun e!1545021 () Bool)

(declare-fun tp!771359 () Bool)

(declare-fun tp!771360 () Bool)

(assert (=> b!2429685 (= e!1545021 (and tp!771359 tp!771360))))

(declare-fun b!2429687 () Bool)

(declare-fun tp!771354 () Bool)

(assert (=> b!2429687 (= e!1545021 tp!771354)))

(declare-fun b!2429688 () Bool)

(declare-fun res!1031825 () Bool)

(declare-fun e!1545020 () Bool)

(assert (=> b!2429688 (=> (not res!1031825) (not e!1545020))))

(declare-datatypes ((C!14442 0))(
  ( (C!14443 (val!8463 Int)) )
))
(declare-datatypes ((Regex!7142 0))(
  ( (ElementMatch!7142 (c!387614 C!14442)) (Concat!11778 (regOne!14796 Regex!7142) (regTwo!14796 Regex!7142)) (EmptyExpr!7142) (Star!7142 (reg!7471 Regex!7142)) (EmptyLang!7142) (Union!7142 (regOne!14797 Regex!7142) (regTwo!14797 Regex!7142)) )
))
(declare-fun r!13927 () Regex!7142)

(declare-datatypes ((List!28522 0))(
  ( (Nil!28424) (Cons!28424 (h!33825 Regex!7142) (t!208499 List!28522)) )
))
(declare-fun l!9164 () List!28522)

(declare-fun generalisedConcat!243 (List!28522) Regex!7142)

(assert (=> b!2429688 (= res!1031825 (= r!13927 (generalisedConcat!243 l!9164)))))

(declare-fun b!2429689 () Bool)

(declare-fun tp!771355 () Bool)

(declare-fun tp!771356 () Bool)

(assert (=> b!2429689 (= e!1545021 (and tp!771355 tp!771356))))

(declare-fun res!1031826 () Bool)

(assert (=> start!237934 (=> (not res!1031826) (not e!1545020))))

(declare-fun lambda!91614 () Int)

(declare-fun forall!5776 (List!28522 Int) Bool)

(assert (=> start!237934 (= res!1031826 (forall!5776 l!9164 lambda!91614))))

(assert (=> start!237934 e!1545020))

(declare-fun e!1545019 () Bool)

(assert (=> start!237934 e!1545019))

(assert (=> start!237934 e!1545021))

(declare-fun b!2429686 () Bool)

(declare-fun tp!771358 () Bool)

(declare-fun tp!771357 () Bool)

(assert (=> b!2429686 (= e!1545019 (and tp!771358 tp!771357))))

(declare-fun b!2429690 () Bool)

(declare-fun validRegex!2859 (Regex!7142) Bool)

(assert (=> b!2429690 (= e!1545020 (not (validRegex!2859 r!13927)))))

(declare-fun b!2429691 () Bool)

(declare-fun tp_is_empty!11697 () Bool)

(assert (=> b!2429691 (= e!1545021 tp_is_empty!11697)))

(assert (= (and start!237934 res!1031826) b!2429688))

(assert (= (and b!2429688 res!1031825) b!2429690))

(assert (= (and start!237934 (is-Cons!28424 l!9164)) b!2429686))

(assert (= (and start!237934 (is-ElementMatch!7142 r!13927)) b!2429691))

(assert (= (and start!237934 (is-Concat!11778 r!13927)) b!2429685))

(assert (= (and start!237934 (is-Star!7142 r!13927)) b!2429687))

(assert (= (and start!237934 (is-Union!7142 r!13927)) b!2429689))

(declare-fun m!2813009 () Bool)

(assert (=> b!2429688 m!2813009))

(declare-fun m!2813011 () Bool)

(assert (=> start!237934 m!2813011))

(declare-fun m!2813013 () Bool)

(assert (=> b!2429690 m!2813013))

(push 1)

(assert (not b!2429685))

(assert (not start!237934))

(assert (not b!2429690))

(assert (not b!2429689))

(assert (not b!2429688))

(assert (not b!2429687))

(assert tp_is_empty!11697)

(assert (not b!2429686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!464085 () Bool)

(declare-fun d!703004 () Bool)

(assert (= bs!464085 (and d!703004 start!237934)))

(declare-fun lambda!91620 () Int)

(assert (=> bs!464085 (= lambda!91620 lambda!91614)))

(declare-fun b!2429733 () Bool)

(declare-fun e!1545048 () Regex!7142)

(assert (=> b!2429733 (= e!1545048 EmptyExpr!7142)))

(declare-fun b!2429734 () Bool)

(declare-fun e!1545043 () Regex!7142)

(assert (=> b!2429734 (= e!1545043 e!1545048)))

(declare-fun c!387624 () Bool)

(assert (=> b!2429734 (= c!387624 (is-Cons!28424 l!9164))))

(declare-fun b!2429735 () Bool)

(declare-fun e!1545047 () Bool)

(declare-fun e!1545046 () Bool)

(assert (=> b!2429735 (= e!1545047 e!1545046)))

(declare-fun c!387626 () Bool)

(declare-fun isEmpty!16461 (List!28522) Bool)

(assert (=> b!2429735 (= c!387626 (isEmpty!16461 l!9164))))

(declare-fun b!2429736 () Bool)

(declare-fun e!1545044 () Bool)

(declare-fun lt!876847 () Regex!7142)

(declare-fun head!5490 (List!28522) Regex!7142)

(assert (=> b!2429736 (= e!1545044 (= lt!876847 (head!5490 l!9164)))))

(declare-fun b!2429737 () Bool)

(declare-fun e!1545045 () Bool)

(assert (=> b!2429737 (= e!1545045 (isEmpty!16461 (t!208499 l!9164)))))

(assert (=> d!703004 e!1545047))

(declare-fun res!1031837 () Bool)

(assert (=> d!703004 (=> (not res!1031837) (not e!1545047))))

(assert (=> d!703004 (= res!1031837 (validRegex!2859 lt!876847))))

(assert (=> d!703004 (= lt!876847 e!1545043)))

(declare-fun c!387627 () Bool)

(assert (=> d!703004 (= c!387627 e!1545045)))

(declare-fun res!1031838 () Bool)

(assert (=> d!703004 (=> (not res!1031838) (not e!1545045))))

(assert (=> d!703004 (= res!1031838 (is-Cons!28424 l!9164))))

(assert (=> d!703004 (forall!5776 l!9164 lambda!91620)))

(assert (=> d!703004 (= (generalisedConcat!243 l!9164) lt!876847)))

(declare-fun b!2429738 () Bool)

(declare-fun isEmptyExpr!193 (Regex!7142) Bool)

(assert (=> b!2429738 (= e!1545046 (isEmptyExpr!193 lt!876847))))

(declare-fun b!2429739 () Bool)

(assert (=> b!2429739 (= e!1545046 e!1545044)))

(declare-fun c!387625 () Bool)

(declare-fun tail!3763 (List!28522) List!28522)

(assert (=> b!2429739 (= c!387625 (isEmpty!16461 (tail!3763 l!9164)))))

(declare-fun b!2429740 () Bool)

(assert (=> b!2429740 (= e!1545048 (Concat!11778 (h!33825 l!9164) (generalisedConcat!243 (t!208499 l!9164))))))

(declare-fun b!2429741 () Bool)

(declare-fun isConcat!193 (Regex!7142) Bool)

(assert (=> b!2429741 (= e!1545044 (isConcat!193 lt!876847))))

(declare-fun b!2429742 () Bool)

(assert (=> b!2429742 (= e!1545043 (h!33825 l!9164))))

(assert (= (and d!703004 res!1031838) b!2429737))

(assert (= (and d!703004 c!387627) b!2429742))

(assert (= (and d!703004 (not c!387627)) b!2429734))

(assert (= (and b!2429734 c!387624) b!2429740))

(assert (= (and b!2429734 (not c!387624)) b!2429733))

(assert (= (and d!703004 res!1031837) b!2429735))

(assert (= (and b!2429735 c!387626) b!2429738))

(assert (= (and b!2429735 (not c!387626)) b!2429739))

(assert (= (and b!2429739 c!387625) b!2429736))

(assert (= (and b!2429739 (not c!387625)) b!2429741))

(declare-fun m!2813021 () Bool)

(assert (=> b!2429737 m!2813021))

(declare-fun m!2813023 () Bool)

(assert (=> b!2429738 m!2813023))

(declare-fun m!2813025 () Bool)

(assert (=> b!2429739 m!2813025))

(assert (=> b!2429739 m!2813025))

(declare-fun m!2813027 () Bool)

(assert (=> b!2429739 m!2813027))

(declare-fun m!2813029 () Bool)

(assert (=> b!2429736 m!2813029))

(declare-fun m!2813031 () Bool)

(assert (=> b!2429741 m!2813031))

(declare-fun m!2813033 () Bool)

(assert (=> b!2429735 m!2813033))

(declare-fun m!2813035 () Bool)

(assert (=> d!703004 m!2813035))

(declare-fun m!2813037 () Bool)

(assert (=> d!703004 m!2813037))

(declare-fun m!2813039 () Bool)

(assert (=> b!2429740 m!2813039))

(assert (=> b!2429688 d!703004))

(declare-fun d!703008 () Bool)

(declare-fun res!1031845 () Bool)

(declare-fun e!1545057 () Bool)

(assert (=> d!703008 (=> res!1031845 e!1545057)))

(assert (=> d!703008 (= res!1031845 (is-Nil!28424 l!9164))))

(assert (=> d!703008 (= (forall!5776 l!9164 lambda!91614) e!1545057)))

(declare-fun b!2429753 () Bool)

(declare-fun e!1545058 () Bool)

(assert (=> b!2429753 (= e!1545057 e!1545058)))

(declare-fun res!1031846 () Bool)

(assert (=> b!2429753 (=> (not res!1031846) (not e!1545058))))

(declare-fun dynLambda!12233 (Int Regex!7142) Bool)

(assert (=> b!2429753 (= res!1031846 (dynLambda!12233 lambda!91614 (h!33825 l!9164)))))

(declare-fun b!2429754 () Bool)

(assert (=> b!2429754 (= e!1545058 (forall!5776 (t!208499 l!9164) lambda!91614))))

(assert (= (and d!703008 (not res!1031845)) b!2429753))

(assert (= (and b!2429753 res!1031846) b!2429754))

(declare-fun b_lambda!74755 () Bool)

(assert (=> (not b_lambda!74755) (not b!2429753)))

(declare-fun m!2813041 () Bool)

(assert (=> b!2429753 m!2813041))

(declare-fun m!2813043 () Bool)

(assert (=> b!2429754 m!2813043))

(assert (=> start!237934 d!703008))

(declare-fun b!2429785 () Bool)

(declare-fun e!1545084 () Bool)

(declare-fun e!1545088 () Bool)

(assert (=> b!2429785 (= e!1545084 e!1545088)))

(declare-fun res!1031867 () Bool)

(declare-fun nullable!2174 (Regex!7142) Bool)

(assert (=> b!2429785 (= res!1031867 (not (nullable!2174 (reg!7471 r!13927))))))

(assert (=> b!2429785 (=> (not res!1031867) (not e!1545088))))

(declare-fun d!703010 () Bool)

(declare-fun res!1031869 () Bool)

(declare-fun e!1545089 () Bool)

(assert (=> d!703010 (=> res!1031869 e!1545089)))

(assert (=> d!703010 (= res!1031869 (is-ElementMatch!7142 r!13927))))

(assert (=> d!703010 (= (validRegex!2859 r!13927) e!1545089)))

(declare-fun b!2429786 () Bool)

(declare-fun e!1545085 () Bool)

(declare-fun call!148674 () Bool)

(assert (=> b!2429786 (= e!1545085 call!148674)))

(declare-fun b!2429787 () Bool)

(declare-fun e!1545087 () Bool)

(assert (=> b!2429787 (= e!1545084 e!1545087)))

(declare-fun c!387636 () Bool)

(assert (=> b!2429787 (= c!387636 (is-Union!7142 r!13927))))

(declare-fun b!2429788 () Bool)

(declare-fun e!1545083 () Bool)

(declare-fun e!1545086 () Bool)

(assert (=> b!2429788 (= e!1545083 e!1545086)))

(declare-fun res!1031866 () Bool)

(assert (=> b!2429788 (=> (not res!1031866) (not e!1545086))))

(assert (=> b!2429788 (= res!1031866 call!148674)))

(declare-fun bm!148668 () Bool)

(declare-fun call!148673 () Bool)

(declare-fun call!148675 () Bool)

(assert (=> bm!148668 (= call!148673 call!148675)))

(declare-fun b!2429789 () Bool)

(assert (=> b!2429789 (= e!1545088 call!148675)))

(declare-fun b!2429790 () Bool)

(declare-fun res!1031868 () Bool)

(assert (=> b!2429790 (=> (not res!1031868) (not e!1545085))))

(assert (=> b!2429790 (= res!1031868 call!148673)))

(assert (=> b!2429790 (= e!1545087 e!1545085)))

(declare-fun c!387637 () Bool)

(declare-fun bm!148669 () Bool)

(assert (=> bm!148669 (= call!148675 (validRegex!2859 (ite c!387637 (reg!7471 r!13927) (ite c!387636 (regOne!14797 r!13927) (regTwo!14796 r!13927)))))))

(declare-fun b!2429791 () Bool)

(assert (=> b!2429791 (= e!1545086 call!148673)))

(declare-fun b!2429792 () Bool)

(declare-fun res!1031865 () Bool)

(assert (=> b!2429792 (=> res!1031865 e!1545083)))

(assert (=> b!2429792 (= res!1031865 (not (is-Concat!11778 r!13927)))))

(assert (=> b!2429792 (= e!1545087 e!1545083)))

(declare-fun bm!148670 () Bool)

(assert (=> bm!148670 (= call!148674 (validRegex!2859 (ite c!387636 (regTwo!14797 r!13927) (regOne!14796 r!13927))))))

(declare-fun b!2429793 () Bool)

(assert (=> b!2429793 (= e!1545089 e!1545084)))

(assert (=> b!2429793 (= c!387637 (is-Star!7142 r!13927))))

(assert (= (and d!703010 (not res!1031869)) b!2429793))

(assert (= (and b!2429793 c!387637) b!2429785))

(assert (= (and b!2429793 (not c!387637)) b!2429787))

(assert (= (and b!2429785 res!1031867) b!2429789))

(assert (= (and b!2429787 c!387636) b!2429790))

(assert (= (and b!2429787 (not c!387636)) b!2429792))

(assert (= (and b!2429790 res!1031868) b!2429786))

(assert (= (and b!2429792 (not res!1031865)) b!2429788))

(assert (= (and b!2429788 res!1031866) b!2429791))

(assert (= (or b!2429790 b!2429791) bm!148668))

(assert (= (or b!2429786 b!2429788) bm!148670))

(assert (= (or b!2429789 bm!148668) bm!148669))

(declare-fun m!2813045 () Bool)

(assert (=> b!2429785 m!2813045))

(declare-fun m!2813047 () Bool)

(assert (=> bm!148669 m!2813047))

(declare-fun m!2813049 () Bool)

(assert (=> bm!148670 m!2813049))

(assert (=> b!2429690 d!703010))

(declare-fun b!2429807 () Bool)

(declare-fun e!1545092 () Bool)

(declare-fun tp!771392 () Bool)

(declare-fun tp!771396 () Bool)

(assert (=> b!2429807 (= e!1545092 (and tp!771392 tp!771396))))

(assert (=> b!2429687 (= tp!771354 e!1545092)))

(declare-fun b!2429804 () Bool)

(assert (=> b!2429804 (= e!1545092 tp_is_empty!11697)))

(declare-fun b!2429806 () Bool)

(declare-fun tp!771393 () Bool)

(assert (=> b!2429806 (= e!1545092 tp!771393)))

(declare-fun b!2429805 () Bool)

(declare-fun tp!771395 () Bool)

(declare-fun tp!771394 () Bool)

(assert (=> b!2429805 (= e!1545092 (and tp!771395 tp!771394))))

(assert (= (and b!2429687 (is-ElementMatch!7142 (reg!7471 r!13927))) b!2429804))

(assert (= (and b!2429687 (is-Concat!11778 (reg!7471 r!13927))) b!2429805))

(assert (= (and b!2429687 (is-Star!7142 (reg!7471 r!13927))) b!2429806))

(assert (= (and b!2429687 (is-Union!7142 (reg!7471 r!13927))) b!2429807))

(declare-fun b!2429811 () Bool)

(declare-fun e!1545093 () Bool)

(declare-fun tp!771397 () Bool)

(declare-fun tp!771401 () Bool)

(assert (=> b!2429811 (= e!1545093 (and tp!771397 tp!771401))))

(assert (=> b!2429689 (= tp!771355 e!1545093)))

(declare-fun b!2429808 () Bool)

(assert (=> b!2429808 (= e!1545093 tp_is_empty!11697)))

(declare-fun b!2429810 () Bool)

(declare-fun tp!771398 () Bool)

(assert (=> b!2429810 (= e!1545093 tp!771398)))

(declare-fun b!2429809 () Bool)

(declare-fun tp!771400 () Bool)

(declare-fun tp!771399 () Bool)

(assert (=> b!2429809 (= e!1545093 (and tp!771400 tp!771399))))

(assert (= (and b!2429689 (is-ElementMatch!7142 (regOne!14797 r!13927))) b!2429808))

(assert (= (and b!2429689 (is-Concat!11778 (regOne!14797 r!13927))) b!2429809))

(assert (= (and b!2429689 (is-Star!7142 (regOne!14797 r!13927))) b!2429810))

(assert (= (and b!2429689 (is-Union!7142 (regOne!14797 r!13927))) b!2429811))

(declare-fun b!2429815 () Bool)

(declare-fun e!1545094 () Bool)

(declare-fun tp!771402 () Bool)

(declare-fun tp!771406 () Bool)

(assert (=> b!2429815 (= e!1545094 (and tp!771402 tp!771406))))

(assert (=> b!2429689 (= tp!771356 e!1545094)))

(declare-fun b!2429812 () Bool)

(assert (=> b!2429812 (= e!1545094 tp_is_empty!11697)))

(declare-fun b!2429814 () Bool)

(declare-fun tp!771403 () Bool)

(assert (=> b!2429814 (= e!1545094 tp!771403)))

(declare-fun b!2429813 () Bool)

(declare-fun tp!771405 () Bool)

(declare-fun tp!771404 () Bool)

(assert (=> b!2429813 (= e!1545094 (and tp!771405 tp!771404))))

(assert (= (and b!2429689 (is-ElementMatch!7142 (regTwo!14797 r!13927))) b!2429812))

(assert (= (and b!2429689 (is-Concat!11778 (regTwo!14797 r!13927))) b!2429813))

(assert (= (and b!2429689 (is-Star!7142 (regTwo!14797 r!13927))) b!2429814))

(assert (= (and b!2429689 (is-Union!7142 (regTwo!14797 r!13927))) b!2429815))

(declare-fun b!2429819 () Bool)

(declare-fun e!1545095 () Bool)

(declare-fun tp!771407 () Bool)

(declare-fun tp!771411 () Bool)

(assert (=> b!2429819 (= e!1545095 (and tp!771407 tp!771411))))

(assert (=> b!2429685 (= tp!771359 e!1545095)))

(declare-fun b!2429816 () Bool)

(assert (=> b!2429816 (= e!1545095 tp_is_empty!11697)))

(declare-fun b!2429818 () Bool)

(declare-fun tp!771408 () Bool)

(assert (=> b!2429818 (= e!1545095 tp!771408)))

(declare-fun b!2429817 () Bool)

(declare-fun tp!771410 () Bool)

(declare-fun tp!771409 () Bool)

(assert (=> b!2429817 (= e!1545095 (and tp!771410 tp!771409))))

(assert (= (and b!2429685 (is-ElementMatch!7142 (regOne!14796 r!13927))) b!2429816))

(assert (= (and b!2429685 (is-Concat!11778 (regOne!14796 r!13927))) b!2429817))

(assert (= (and b!2429685 (is-Star!7142 (regOne!14796 r!13927))) b!2429818))

(assert (= (and b!2429685 (is-Union!7142 (regOne!14796 r!13927))) b!2429819))

(declare-fun b!2429823 () Bool)

(declare-fun e!1545096 () Bool)

(declare-fun tp!771412 () Bool)

(declare-fun tp!771416 () Bool)

(assert (=> b!2429823 (= e!1545096 (and tp!771412 tp!771416))))

(assert (=> b!2429685 (= tp!771360 e!1545096)))

(declare-fun b!2429820 () Bool)

(assert (=> b!2429820 (= e!1545096 tp_is_empty!11697)))

(declare-fun b!2429822 () Bool)

(declare-fun tp!771413 () Bool)

(assert (=> b!2429822 (= e!1545096 tp!771413)))

(declare-fun b!2429821 () Bool)

(declare-fun tp!771415 () Bool)

(declare-fun tp!771414 () Bool)

(assert (=> b!2429821 (= e!1545096 (and tp!771415 tp!771414))))

(assert (= (and b!2429685 (is-ElementMatch!7142 (regTwo!14796 r!13927))) b!2429820))

(assert (= (and b!2429685 (is-Concat!11778 (regTwo!14796 r!13927))) b!2429821))

(assert (= (and b!2429685 (is-Star!7142 (regTwo!14796 r!13927))) b!2429822))

(assert (= (and b!2429685 (is-Union!7142 (regTwo!14796 r!13927))) b!2429823))

(declare-fun b!2429827 () Bool)

(declare-fun e!1545097 () Bool)

(declare-fun tp!771417 () Bool)

(declare-fun tp!771421 () Bool)

(assert (=> b!2429827 (= e!1545097 (and tp!771417 tp!771421))))

(assert (=> b!2429686 (= tp!771358 e!1545097)))

(declare-fun b!2429824 () Bool)

(assert (=> b!2429824 (= e!1545097 tp_is_empty!11697)))

(declare-fun b!2429826 () Bool)

(declare-fun tp!771418 () Bool)

(assert (=> b!2429826 (= e!1545097 tp!771418)))

(declare-fun b!2429825 () Bool)

(declare-fun tp!771420 () Bool)

(declare-fun tp!771419 () Bool)

(assert (=> b!2429825 (= e!1545097 (and tp!771420 tp!771419))))

(assert (= (and b!2429686 (is-ElementMatch!7142 (h!33825 l!9164))) b!2429824))

(assert (= (and b!2429686 (is-Concat!11778 (h!33825 l!9164))) b!2429825))

(assert (= (and b!2429686 (is-Star!7142 (h!33825 l!9164))) b!2429826))

(assert (= (and b!2429686 (is-Union!7142 (h!33825 l!9164))) b!2429827))

(declare-fun b!2429832 () Bool)

(declare-fun e!1545100 () Bool)

(declare-fun tp!771426 () Bool)

(declare-fun tp!771427 () Bool)

(assert (=> b!2429832 (= e!1545100 (and tp!771426 tp!771427))))

(assert (=> b!2429686 (= tp!771357 e!1545100)))

(assert (= (and b!2429686 (is-Cons!28424 (t!208499 l!9164))) b!2429832))

(declare-fun b_lambda!74757 () Bool)

(assert (= b_lambda!74755 (or start!237934 b_lambda!74757)))

(declare-fun bs!464086 () Bool)

(declare-fun d!703012 () Bool)

(assert (= bs!464086 (and d!703012 start!237934)))

(assert (=> bs!464086 (= (dynLambda!12233 lambda!91614 (h!33825 l!9164)) (validRegex!2859 (h!33825 l!9164)))))

(declare-fun m!2813051 () Bool)

(assert (=> bs!464086 m!2813051))

(assert (=> b!2429753 d!703012))

(push 1)

(assert (not b!2429826))

(assert (not b!2429785))

(assert (not b!2429825))

(assert (not b!2429741))

(assert (not bm!148670))

(assert (not b!2429813))

(assert (not b!2429805))

(assert (not b!2429737))

(assert (not b!2429811))

(assert (not b!2429736))

(assert (not b!2429822))

(assert (not b!2429739))

(assert tp_is_empty!11697)

(assert (not b!2429814))

(assert (not b!2429735))

(assert (not b!2429754))

(assert (not b!2429817))

(assert (not d!703004))

(assert (not b!2429819))

(assert (not b!2429832))

(assert (not b!2429806))

(assert (not b_lambda!74757))

(assert (not b!2429807))

(assert (not b!2429810))

(assert (not b!2429809))

(assert (not b!2429818))

(assert (not b!2429823))

(assert (not b!2429821))

(assert (not b!2429740))

(assert (not b!2429815))

(assert (not bm!148669))

(assert (not b!2429738))

(assert (not b!2429827))

(assert (not bs!464086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

