; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237870 () Bool)

(assert start!237870)

(declare-fun b!2428869 () Bool)

(declare-fun e!1544611 () Bool)

(declare-datatypes ((C!14434 0))(
  ( (C!14435 (val!8459 Int)) )
))
(declare-datatypes ((Regex!7138 0))(
  ( (ElementMatch!7138 (c!387470 C!14434)) (Concat!11774 (regOne!14788 Regex!7138) (regTwo!14788 Regex!7138)) (EmptyExpr!7138) (Star!7138 (reg!7467 Regex!7138)) (EmptyLang!7138) (Union!7138 (regOne!14789 Regex!7138) (regTwo!14789 Regex!7138)) )
))
(declare-datatypes ((List!28514 0))(
  ( (Nil!28416) (Cons!28416 (h!33817 Regex!7138) (t!208491 List!28514)) )
))
(declare-fun l!9164 () List!28514)

(declare-fun isEmpty!16454 (List!28514) Bool)

(declare-fun tail!3756 (List!28514) List!28514)

(assert (=> b!2428869 (= e!1544611 (isEmpty!16454 (tail!3756 l!9164)))))

(declare-fun b!2428870 () Bool)

(declare-fun e!1544609 () Bool)

(assert (=> b!2428870 (= e!1544609 (not e!1544611))))

(declare-fun res!1031551 () Bool)

(assert (=> b!2428870 (=> res!1031551 e!1544611)))

(declare-fun r!13927 () Regex!7138)

(assert (=> b!2428870 (= res!1031551 (or (is-Concat!11774 r!13927) (is-EmptyExpr!7138 r!13927)))))

(declare-datatypes ((List!28515 0))(
  ( (Nil!28417) (Cons!28417 (h!33818 C!14434) (t!208492 List!28515)) )
))
(declare-fun s!9460 () List!28515)

(declare-fun matchR!3255 (Regex!7138 List!28515) Bool)

(declare-fun matchRSpec!987 (Regex!7138 List!28515) Bool)

(assert (=> b!2428870 (= (matchR!3255 r!13927 s!9460) (matchRSpec!987 r!13927 s!9460))))

(declare-datatypes ((Unit!41663 0))(
  ( (Unit!41664) )
))
(declare-fun lt!876791 () Unit!41663)

(declare-fun mainMatchTheorem!987 (Regex!7138 List!28515) Unit!41663)

(assert (=> b!2428870 (= lt!876791 (mainMatchTheorem!987 r!13927 s!9460))))

(declare-fun b!2428871 () Bool)

(declare-fun e!1544610 () Bool)

(declare-fun tp!771067 () Bool)

(declare-fun tp!771071 () Bool)

(assert (=> b!2428871 (= e!1544610 (and tp!771067 tp!771071))))

(declare-fun b!2428872 () Bool)

(declare-fun res!1031552 () Bool)

(assert (=> b!2428872 (=> (not res!1031552) (not e!1544609))))

(declare-fun generalisedConcat!239 (List!28514) Regex!7138)

(assert (=> b!2428872 (= res!1031552 (= r!13927 (generalisedConcat!239 l!9164)))))

(declare-fun res!1031553 () Bool)

(assert (=> start!237870 (=> (not res!1031553) (not e!1544609))))

(declare-fun lambda!91564 () Int)

(declare-fun forall!5772 (List!28514 Int) Bool)

(assert (=> start!237870 (= res!1031553 (forall!5772 l!9164 lambda!91564))))

(assert (=> start!237870 e!1544609))

(assert (=> start!237870 e!1544610))

(declare-fun e!1544613 () Bool)

(assert (=> start!237870 e!1544613))

(declare-fun e!1544612 () Bool)

(assert (=> start!237870 e!1544612))

(declare-fun b!2428873 () Bool)

(declare-fun tp!771069 () Bool)

(assert (=> b!2428873 (= e!1544613 tp!771069)))

(declare-fun b!2428874 () Bool)

(declare-fun tp_is_empty!11689 () Bool)

(assert (=> b!2428874 (= e!1544613 tp_is_empty!11689)))

(declare-fun b!2428875 () Bool)

(declare-fun tp!771064 () Bool)

(assert (=> b!2428875 (= e!1544612 (and tp_is_empty!11689 tp!771064))))

(declare-fun b!2428876 () Bool)

(declare-fun res!1031554 () Bool)

(assert (=> b!2428876 (=> res!1031554 e!1544611)))

(assert (=> b!2428876 (= res!1031554 (isEmpty!16454 l!9164))))

(declare-fun b!2428877 () Bool)

(declare-fun tp!771070 () Bool)

(declare-fun tp!771065 () Bool)

(assert (=> b!2428877 (= e!1544613 (and tp!771070 tp!771065))))

(declare-fun b!2428878 () Bool)

(declare-fun tp!771068 () Bool)

(declare-fun tp!771066 () Bool)

(assert (=> b!2428878 (= e!1544613 (and tp!771068 tp!771066))))

(assert (= (and start!237870 res!1031553) b!2428872))

(assert (= (and b!2428872 res!1031552) b!2428870))

(assert (= (and b!2428870 (not res!1031551)) b!2428876))

(assert (= (and b!2428876 (not res!1031554)) b!2428869))

(assert (= (and start!237870 (is-Cons!28416 l!9164)) b!2428871))

(assert (= (and start!237870 (is-ElementMatch!7138 r!13927)) b!2428874))

(assert (= (and start!237870 (is-Concat!11774 r!13927)) b!2428877))

(assert (= (and start!237870 (is-Star!7138 r!13927)) b!2428873))

(assert (= (and start!237870 (is-Union!7138 r!13927)) b!2428878))

(assert (= (and start!237870 (is-Cons!28417 s!9460)) b!2428875))

(declare-fun m!2812725 () Bool)

(assert (=> b!2428869 m!2812725))

(assert (=> b!2428869 m!2812725))

(declare-fun m!2812727 () Bool)

(assert (=> b!2428869 m!2812727))

(declare-fun m!2812729 () Bool)

(assert (=> b!2428870 m!2812729))

(declare-fun m!2812731 () Bool)

(assert (=> b!2428870 m!2812731))

(declare-fun m!2812733 () Bool)

(assert (=> b!2428870 m!2812733))

(declare-fun m!2812735 () Bool)

(assert (=> start!237870 m!2812735))

(declare-fun m!2812737 () Bool)

(assert (=> b!2428872 m!2812737))

(declare-fun m!2812739 () Bool)

(assert (=> b!2428876 m!2812739))

(push 1)

(assert (not b!2428872))

(assert (not b!2428870))

(assert (not start!237870))

(assert tp_is_empty!11689)

(assert (not b!2428873))

(assert (not b!2428877))

(assert (not b!2428871))

(assert (not b!2428875))

(assert (not b!2428878))

(assert (not b!2428869))

(assert (not b!2428876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!702928 () Bool)

(assert (=> d!702928 (= (isEmpty!16454 (tail!3756 l!9164)) (is-Nil!28416 (tail!3756 l!9164)))))

(assert (=> b!2428869 d!702928))

(declare-fun d!702930 () Bool)

(assert (=> d!702930 (= (tail!3756 l!9164) (t!208491 l!9164))))

(assert (=> b!2428869 d!702930))

(declare-fun d!702932 () Bool)

(declare-fun res!1031571 () Bool)

(declare-fun e!1544633 () Bool)

(assert (=> d!702932 (=> res!1031571 e!1544633)))

(assert (=> d!702932 (= res!1031571 (is-Nil!28416 l!9164))))

(assert (=> d!702932 (= (forall!5772 l!9164 lambda!91564) e!1544633)))

(declare-fun b!2428913 () Bool)

(declare-fun e!1544634 () Bool)

(assert (=> b!2428913 (= e!1544633 e!1544634)))

(declare-fun res!1031572 () Bool)

(assert (=> b!2428913 (=> (not res!1031572) (not e!1544634))))

(declare-fun dynLambda!12229 (Int Regex!7138) Bool)

(assert (=> b!2428913 (= res!1031572 (dynLambda!12229 lambda!91564 (h!33817 l!9164)))))

(declare-fun b!2428914 () Bool)

(assert (=> b!2428914 (= e!1544634 (forall!5772 (t!208491 l!9164) lambda!91564))))

(assert (= (and d!702932 (not res!1031571)) b!2428913))

(assert (= (and b!2428913 res!1031572) b!2428914))

(declare-fun b_lambda!74739 () Bool)

(assert (=> (not b_lambda!74739) (not b!2428913)))

(declare-fun m!2812757 () Bool)

(assert (=> b!2428913 m!2812757))

(declare-fun m!2812759 () Bool)

(assert (=> b!2428914 m!2812759))

(assert (=> start!237870 d!702932))

(declare-fun bs!464061 () Bool)

(declare-fun d!702934 () Bool)

(assert (= bs!464061 (and d!702934 start!237870)))

(declare-fun lambda!91572 () Int)

(assert (=> bs!464061 (= lambda!91572 lambda!91564)))

(declare-fun e!1544661 () Bool)

(assert (=> d!702934 e!1544661))

(declare-fun res!1031581 () Bool)

(assert (=> d!702934 (=> (not res!1031581) (not e!1544661))))

(declare-fun lt!876799 () Regex!7138)

(declare-fun validRegex!2856 (Regex!7138) Bool)

(assert (=> d!702934 (= res!1031581 (validRegex!2856 lt!876799))))

(declare-fun e!1544663 () Regex!7138)

(assert (=> d!702934 (= lt!876799 e!1544663)))

(declare-fun c!387488 () Bool)

(declare-fun e!1544662 () Bool)

(assert (=> d!702934 (= c!387488 e!1544662)))

(declare-fun res!1031582 () Bool)

(assert (=> d!702934 (=> (not res!1031582) (not e!1544662))))

(assert (=> d!702934 (= res!1031582 (is-Cons!28416 l!9164))))

(assert (=> d!702934 (forall!5772 l!9164 lambda!91572)))

(assert (=> d!702934 (= (generalisedConcat!239 l!9164) lt!876799)))

(declare-fun b!2428955 () Bool)

(assert (=> b!2428955 (= e!1544662 (isEmpty!16454 (t!208491 l!9164)))))

(declare-fun b!2428956 () Bool)

(declare-fun e!1544659 () Bool)

(declare-fun e!1544664 () Bool)

(assert (=> b!2428956 (= e!1544659 e!1544664)))

(declare-fun c!387490 () Bool)

(assert (=> b!2428956 (= c!387490 (isEmpty!16454 (tail!3756 l!9164)))))

(declare-fun b!2428957 () Bool)

(declare-fun e!1544660 () Regex!7138)

(assert (=> b!2428957 (= e!1544663 e!1544660)))

(declare-fun c!387489 () Bool)

(assert (=> b!2428957 (= c!387489 (is-Cons!28416 l!9164))))

(declare-fun b!2428958 () Bool)

(assert (=> b!2428958 (= e!1544660 EmptyExpr!7138)))

(declare-fun b!2428959 () Bool)

(assert (=> b!2428959 (= e!1544663 (h!33817 l!9164))))

(declare-fun b!2428960 () Bool)

(assert (=> b!2428960 (= e!1544660 (Concat!11774 (h!33817 l!9164) (generalisedConcat!239 (t!208491 l!9164))))))

(declare-fun b!2428961 () Bool)

(declare-fun isEmptyExpr!190 (Regex!7138) Bool)

(assert (=> b!2428961 (= e!1544659 (isEmptyExpr!190 lt!876799))))

(declare-fun b!2428962 () Bool)

(declare-fun isConcat!190 (Regex!7138) Bool)

(assert (=> b!2428962 (= e!1544664 (isConcat!190 lt!876799))))

(declare-fun b!2428963 () Bool)

(assert (=> b!2428963 (= e!1544661 e!1544659)))

(declare-fun c!387491 () Bool)

(assert (=> b!2428963 (= c!387491 (isEmpty!16454 l!9164))))

(declare-fun b!2428964 () Bool)

(declare-fun head!5484 (List!28514) Regex!7138)

(assert (=> b!2428964 (= e!1544664 (= lt!876799 (head!5484 l!9164)))))

(assert (= (and d!702934 res!1031582) b!2428955))

(assert (= (and d!702934 c!387488) b!2428959))

(assert (= (and d!702934 (not c!387488)) b!2428957))

(assert (= (and b!2428957 c!387489) b!2428960))

(assert (= (and b!2428957 (not c!387489)) b!2428958))

(assert (= (and d!702934 res!1031581) b!2428963))

(assert (= (and b!2428963 c!387491) b!2428961))

(assert (= (and b!2428963 (not c!387491)) b!2428956))

(assert (= (and b!2428956 c!387490) b!2428964))

(assert (= (and b!2428956 (not c!387490)) b!2428962))

(declare-fun m!2812761 () Bool)

(assert (=> b!2428955 m!2812761))

(assert (=> b!2428963 m!2812739))

(declare-fun m!2812763 () Bool)

(assert (=> b!2428964 m!2812763))

(declare-fun m!2812765 () Bool)

(assert (=> d!702934 m!2812765))

(declare-fun m!2812767 () Bool)

(assert (=> d!702934 m!2812767))

(declare-fun m!2812769 () Bool)

(assert (=> b!2428961 m!2812769))

(assert (=> b!2428956 m!2812725))

(assert (=> b!2428956 m!2812725))

(assert (=> b!2428956 m!2812727))

(declare-fun m!2812771 () Bool)

(assert (=> b!2428960 m!2812771))

(declare-fun m!2812773 () Bool)

(assert (=> b!2428962 m!2812773))

(assert (=> b!2428872 d!702934))

(declare-fun b!2429003 () Bool)

(declare-fun e!1544689 () Bool)

(declare-fun e!1544686 () Bool)

(assert (=> b!2429003 (= e!1544689 e!1544686)))

(declare-fun res!1031605 () Bool)

(assert (=> b!2429003 (=> (not res!1031605) (not e!1544686))))

(declare-fun lt!876803 () Bool)

(assert (=> b!2429003 (= res!1031605 (not lt!876803))))

(declare-fun b!2429004 () Bool)

(declare-fun e!1544687 () Bool)

(declare-fun e!1544690 () Bool)

(assert (=> b!2429004 (= e!1544687 e!1544690)))

(declare-fun c!387502 () Bool)

(assert (=> b!2429004 (= c!387502 (is-EmptyLang!7138 r!13927))))

(declare-fun b!2429005 () Bool)

(declare-fun res!1031607 () Bool)

(declare-fun e!1544685 () Bool)

(assert (=> b!2429005 (=> (not res!1031607) (not e!1544685))))

(declare-fun isEmpty!16456 (List!28515) Bool)

(declare-fun tail!3758 (List!28515) List!28515)

(assert (=> b!2429005 (= res!1031607 (isEmpty!16456 (tail!3758 s!9460)))))

(declare-fun b!2429006 () Bool)

(declare-fun e!1544691 () Bool)

(declare-fun nullable!2171 (Regex!7138) Bool)

(assert (=> b!2429006 (= e!1544691 (nullable!2171 r!13927))))

(declare-fun b!2429007 () Bool)

(assert (=> b!2429007 (= e!1544690 (not lt!876803))))

(declare-fun b!2429008 () Bool)

(declare-fun res!1031603 () Bool)

(assert (=> b!2429008 (=> res!1031603 e!1544689)))

(assert (=> b!2429008 (= res!1031603 e!1544685)))

(declare-fun res!1031602 () Bool)

(assert (=> b!2429008 (=> (not res!1031602) (not e!1544685))))

(assert (=> b!2429008 (= res!1031602 lt!876803)))

(declare-fun bm!148622 () Bool)

(declare-fun call!148627 () Bool)

(assert (=> bm!148622 (= call!148627 (isEmpty!16456 s!9460))))

(declare-fun d!702936 () Bool)

(assert (=> d!702936 e!1544687))

(declare-fun c!387503 () Bool)

(assert (=> d!702936 (= c!387503 (is-EmptyExpr!7138 r!13927))))

(assert (=> d!702936 (= lt!876803 e!1544691)))

(declare-fun c!387504 () Bool)

(assert (=> d!702936 (= c!387504 (isEmpty!16456 s!9460))))

(assert (=> d!702936 (validRegex!2856 r!13927)))

(assert (=> d!702936 (= (matchR!3255 r!13927 s!9460) lt!876803)))

(declare-fun b!2429009 () Bool)

(declare-fun e!1544688 () Bool)

(declare-fun head!5485 (List!28515) C!14434)

(assert (=> b!2429009 (= e!1544688 (not (= (head!5485 s!9460) (c!387470 r!13927))))))

(declare-fun b!2429010 () Bool)

(declare-fun res!1031601 () Bool)

(assert (=> b!2429010 (=> res!1031601 e!1544688)))

(assert (=> b!2429010 (= res!1031601 (not (isEmpty!16456 (tail!3758 s!9460))))))

(declare-fun b!2429011 () Bool)

(assert (=> b!2429011 (= e!1544686 e!1544688)))

(declare-fun res!1031608 () Bool)

(assert (=> b!2429011 (=> res!1031608 e!1544688)))

(assert (=> b!2429011 (= res!1031608 call!148627)))

(declare-fun b!2429012 () Bool)

(declare-fun res!1031604 () Bool)

(assert (=> b!2429012 (=> (not res!1031604) (not e!1544685))))

(assert (=> b!2429012 (= res!1031604 (not call!148627))))

(declare-fun b!2429013 () Bool)

(assert (=> b!2429013 (= e!1544685 (= (head!5485 s!9460) (c!387470 r!13927)))))

(declare-fun b!2429014 () Bool)

(declare-fun derivativeStep!1828 (Regex!7138 C!14434) Regex!7138)

(assert (=> b!2429014 (= e!1544691 (matchR!3255 (derivativeStep!1828 r!13927 (head!5485 s!9460)) (tail!3758 s!9460)))))

(declare-fun b!2429015 () Bool)

(assert (=> b!2429015 (= e!1544687 (= lt!876803 call!148627))))

(declare-fun b!2429016 () Bool)

(declare-fun res!1031606 () Bool)

(assert (=> b!2429016 (=> res!1031606 e!1544689)))

(assert (=> b!2429016 (= res!1031606 (not (is-ElementMatch!7138 r!13927)))))

(assert (=> b!2429016 (= e!1544690 e!1544689)))

(assert (= (and d!702936 c!387504) b!2429006))

(assert (= (and d!702936 (not c!387504)) b!2429014))

(assert (= (and d!702936 c!387503) b!2429015))

(assert (= (and d!702936 (not c!387503)) b!2429004))

(assert (= (and b!2429004 c!387502) b!2429007))

(assert (= (and b!2429004 (not c!387502)) b!2429016))

(assert (= (and b!2429016 (not res!1031606)) b!2429008))

(assert (= (and b!2429008 res!1031602) b!2429012))

(assert (= (and b!2429012 res!1031604) b!2429005))

(assert (= (and b!2429005 res!1031607) b!2429013))

(assert (= (and b!2429008 (not res!1031603)) b!2429003))

(assert (= (and b!2429003 res!1031605) b!2429011))

(assert (= (and b!2429011 (not res!1031608)) b!2429010))

(assert (= (and b!2429010 (not res!1031601)) b!2429009))

(assert (= (or b!2429015 b!2429011 b!2429012) bm!148622))

(declare-fun m!2812789 () Bool)

(assert (=> b!2429006 m!2812789))

(declare-fun m!2812791 () Bool)

(assert (=> d!702936 m!2812791))

(declare-fun m!2812793 () Bool)

(assert (=> d!702936 m!2812793))

(declare-fun m!2812795 () Bool)

(assert (=> b!2429014 m!2812795))

(assert (=> b!2429014 m!2812795))

(declare-fun m!2812797 () Bool)

(assert (=> b!2429014 m!2812797))

(declare-fun m!2812799 () Bool)

(assert (=> b!2429014 m!2812799))

(assert (=> b!2429014 m!2812797))

(assert (=> b!2429014 m!2812799))

(declare-fun m!2812801 () Bool)

(assert (=> b!2429014 m!2812801))

(assert (=> b!2429013 m!2812795))

(assert (=> b!2429010 m!2812799))

(assert (=> b!2429010 m!2812799))

(declare-fun m!2812803 () Bool)

(assert (=> b!2429010 m!2812803))

(assert (=> bm!148622 m!2812791))

(assert (=> b!2429005 m!2812799))

(assert (=> b!2429005 m!2812799))

(assert (=> b!2429005 m!2812803))

(assert (=> b!2429009 m!2812795))

(assert (=> b!2428870 d!702936))

(declare-fun b!2429087 () Bool)

(assert (=> b!2429087 true))

(assert (=> b!2429087 true))

(declare-fun bs!464063 () Bool)

(declare-fun b!2429080 () Bool)

(assert (= bs!464063 (and b!2429080 b!2429087)))

(declare-fun lambda!91579 () Int)

(declare-fun lambda!91578 () Int)

(assert (=> bs!464063 (not (= lambda!91579 lambda!91578))))

(assert (=> b!2429080 true))

(assert (=> b!2429080 true))

(declare-fun b!2429077 () Bool)

(declare-fun c!387519 () Bool)

(assert (=> b!2429077 (= c!387519 (is-ElementMatch!7138 r!13927))))

(declare-fun e!1544725 () Bool)

(declare-fun e!1544728 () Bool)

(assert (=> b!2429077 (= e!1544725 e!1544728)))

(declare-fun b!2429078 () Bool)

(declare-fun e!1544724 () Bool)

(assert (=> b!2429078 (= e!1544724 e!1544725)))

(declare-fun res!1031641 () Bool)

(assert (=> b!2429078 (= res!1031641 (not (is-EmptyLang!7138 r!13927)))))

(assert (=> b!2429078 (=> (not res!1031641) (not e!1544725))))

(declare-fun b!2429079 () Bool)

(declare-fun e!1544729 () Bool)

(declare-fun e!1544727 () Bool)

(assert (=> b!2429079 (= e!1544729 e!1544727)))

(declare-fun res!1031642 () Bool)

(assert (=> b!2429079 (= res!1031642 (matchRSpec!987 (regOne!14789 r!13927) s!9460))))

(assert (=> b!2429079 (=> res!1031642 e!1544727)))

(declare-fun d!702942 () Bool)

(declare-fun c!387521 () Bool)

(assert (=> d!702942 (= c!387521 (is-EmptyExpr!7138 r!13927))))

(assert (=> d!702942 (= (matchRSpec!987 r!13927 s!9460) e!1544724)))

(declare-fun e!1544726 () Bool)

(declare-fun call!148635 () Bool)

(assert (=> b!2429080 (= e!1544726 call!148635)))

(declare-fun b!2429081 () Bool)

(assert (=> b!2429081 (= e!1544729 e!1544726)))

(declare-fun c!387522 () Bool)

(assert (=> b!2429081 (= c!387522 (is-Star!7138 r!13927))))

(declare-fun bm!148629 () Bool)

(declare-fun call!148634 () Bool)

(assert (=> bm!148629 (= call!148634 (isEmpty!16456 s!9460))))

(declare-fun b!2429082 () Bool)

(assert (=> b!2429082 (= e!1544724 call!148634)))

(declare-fun b!2429083 () Bool)

(declare-fun res!1031643 () Bool)

(declare-fun e!1544730 () Bool)

(assert (=> b!2429083 (=> res!1031643 e!1544730)))

(assert (=> b!2429083 (= res!1031643 call!148634)))

(assert (=> b!2429083 (= e!1544726 e!1544730)))

(declare-fun b!2429084 () Bool)

(declare-fun c!387520 () Bool)

(assert (=> b!2429084 (= c!387520 (is-Union!7138 r!13927))))

(assert (=> b!2429084 (= e!1544728 e!1544729)))

(declare-fun b!2429085 () Bool)

(assert (=> b!2429085 (= e!1544727 (matchRSpec!987 (regTwo!14789 r!13927) s!9460))))

(declare-fun b!2429086 () Bool)

(assert (=> b!2429086 (= e!1544728 (= s!9460 (Cons!28417 (c!387470 r!13927) Nil!28417)))))

(declare-fun bm!148630 () Bool)

(declare-fun Exists!1177 (Int) Bool)

(assert (=> bm!148630 (= call!148635 (Exists!1177 (ite c!387522 lambda!91578 lambda!91579)))))

(assert (=> b!2429087 (= e!1544730 call!148635)))

(assert (= (and d!702942 c!387521) b!2429082))

(assert (= (and d!702942 (not c!387521)) b!2429078))

(assert (= (and b!2429078 res!1031641) b!2429077))

(assert (= (and b!2429077 c!387519) b!2429086))

(assert (= (and b!2429077 (not c!387519)) b!2429084))

(assert (= (and b!2429084 c!387520) b!2429079))

(assert (= (and b!2429084 (not c!387520)) b!2429081))

(assert (= (and b!2429079 (not res!1031642)) b!2429085))

(assert (= (and b!2429081 c!387522) b!2429083))

(assert (= (and b!2429081 (not c!387522)) b!2429080))

(assert (= (and b!2429083 (not res!1031643)) b!2429087))

(assert (= (or b!2429087 b!2429080) bm!148630))

(assert (= (or b!2429082 b!2429083) bm!148629))

(declare-fun m!2812805 () Bool)

(assert (=> b!2429079 m!2812805))

(assert (=> bm!148629 m!2812791))

(declare-fun m!2812807 () Bool)

(assert (=> b!2429085 m!2812807))

(declare-fun m!2812809 () Bool)

(assert (=> bm!148630 m!2812809))

(assert (=> b!2428870 d!702942))

(declare-fun d!702944 () Bool)

(assert (=> d!702944 (= (matchR!3255 r!13927 s!9460) (matchRSpec!987 r!13927 s!9460))))

(declare-fun lt!876808 () Unit!41663)

(declare-fun choose!14399 (Regex!7138 List!28515) Unit!41663)

(assert (=> d!702944 (= lt!876808 (choose!14399 r!13927 s!9460))))

(assert (=> d!702944 (validRegex!2856 r!13927)))

(assert (=> d!702944 (= (mainMatchTheorem!987 r!13927 s!9460) lt!876808)))

(declare-fun bs!464064 () Bool)

(assert (= bs!464064 d!702944))

(assert (=> bs!464064 m!2812729))

(assert (=> bs!464064 m!2812731))

(declare-fun m!2812811 () Bool)

(assert (=> bs!464064 m!2812811))

(assert (=> bs!464064 m!2812793))

(assert (=> b!2428870 d!702944))

(declare-fun d!702946 () Bool)

(assert (=> d!702946 (= (isEmpty!16454 l!9164) (is-Nil!28416 l!9164))))

(assert (=> b!2428876 d!702946))

(declare-fun b!2429110 () Bool)

(declare-fun e!1544740 () Bool)

(declare-fun tp!771098 () Bool)

(assert (=> b!2429110 (= e!1544740 (and tp_is_empty!11689 tp!771098))))

(assert (=> b!2428875 (= tp!771064 e!1544740)))

(assert (= (and b!2428875 (is-Cons!28417 (t!208492 s!9460))) b!2429110))

(declare-fun b!2429123 () Bool)

(declare-fun e!1544743 () Bool)

(declare-fun tp!771111 () Bool)

(assert (=> b!2429123 (= e!1544743 tp!771111)))

(declare-fun b!2429122 () Bool)

(declare-fun tp!771110 () Bool)

(declare-fun tp!771109 () Bool)

(assert (=> b!2429122 (= e!1544743 (and tp!771110 tp!771109))))

(declare-fun b!2429124 () Bool)

(declare-fun tp!771113 () Bool)

(declare-fun tp!771112 () Bool)

(assert (=> b!2429124 (= e!1544743 (and tp!771113 tp!771112))))

(assert (=> b!2428873 (= tp!771069 e!1544743)))

(declare-fun b!2429121 () Bool)

(assert (=> b!2429121 (= e!1544743 tp_is_empty!11689)))

(assert (= (and b!2428873 (is-ElementMatch!7138 (reg!7467 r!13927))) b!2429121))

(assert (= (and b!2428873 (is-Concat!11774 (reg!7467 r!13927))) b!2429122))

(assert (= (and b!2428873 (is-Star!7138 (reg!7467 r!13927))) b!2429123))

(assert (= (and b!2428873 (is-Union!7138 (reg!7467 r!13927))) b!2429124))

(declare-fun b!2429127 () Bool)

(declare-fun e!1544744 () Bool)

(declare-fun tp!771116 () Bool)

(assert (=> b!2429127 (= e!1544744 tp!771116)))

(declare-fun b!2429126 () Bool)

(declare-fun tp!771115 () Bool)

(declare-fun tp!771114 () Bool)

(assert (=> b!2429126 (= e!1544744 (and tp!771115 tp!771114))))

(declare-fun b!2429128 () Bool)

(declare-fun tp!771118 () Bool)

(declare-fun tp!771117 () Bool)

(assert (=> b!2429128 (= e!1544744 (and tp!771118 tp!771117))))

(assert (=> b!2428878 (= tp!771068 e!1544744)))

(declare-fun b!2429125 () Bool)

(assert (=> b!2429125 (= e!1544744 tp_is_empty!11689)))

(assert (= (and b!2428878 (is-ElementMatch!7138 (regOne!14789 r!13927))) b!2429125))

(assert (= (and b!2428878 (is-Concat!11774 (regOne!14789 r!13927))) b!2429126))

(assert (= (and b!2428878 (is-Star!7138 (regOne!14789 r!13927))) b!2429127))

(assert (= (and b!2428878 (is-Union!7138 (regOne!14789 r!13927))) b!2429128))

(declare-fun b!2429131 () Bool)

(declare-fun e!1544745 () Bool)

(declare-fun tp!771121 () Bool)

(assert (=> b!2429131 (= e!1544745 tp!771121)))

(declare-fun b!2429130 () Bool)

(declare-fun tp!771120 () Bool)

(declare-fun tp!771119 () Bool)

(assert (=> b!2429130 (= e!1544745 (and tp!771120 tp!771119))))

(declare-fun b!2429132 () Bool)

(declare-fun tp!771123 () Bool)

(declare-fun tp!771122 () Bool)

(assert (=> b!2429132 (= e!1544745 (and tp!771123 tp!771122))))

(assert (=> b!2428878 (= tp!771066 e!1544745)))

(declare-fun b!2429129 () Bool)

(assert (=> b!2429129 (= e!1544745 tp_is_empty!11689)))

(assert (= (and b!2428878 (is-ElementMatch!7138 (regTwo!14789 r!13927))) b!2429129))

(assert (= (and b!2428878 (is-Concat!11774 (regTwo!14789 r!13927))) b!2429130))

(assert (= (and b!2428878 (is-Star!7138 (regTwo!14789 r!13927))) b!2429131))

(assert (= (and b!2428878 (is-Union!7138 (regTwo!14789 r!13927))) b!2429132))

(declare-fun b!2429135 () Bool)

(declare-fun e!1544746 () Bool)

(declare-fun tp!771126 () Bool)

(assert (=> b!2429135 (= e!1544746 tp!771126)))

(declare-fun b!2429134 () Bool)

(declare-fun tp!771125 () Bool)

(declare-fun tp!771124 () Bool)

(assert (=> b!2429134 (= e!1544746 (and tp!771125 tp!771124))))

(declare-fun b!2429136 () Bool)

(declare-fun tp!771128 () Bool)

(declare-fun tp!771127 () Bool)

(assert (=> b!2429136 (= e!1544746 (and tp!771128 tp!771127))))

(assert (=> b!2428877 (= tp!771070 e!1544746)))

(declare-fun b!2429133 () Bool)

(assert (=> b!2429133 (= e!1544746 tp_is_empty!11689)))

(assert (= (and b!2428877 (is-ElementMatch!7138 (regOne!14788 r!13927))) b!2429133))

(assert (= (and b!2428877 (is-Concat!11774 (regOne!14788 r!13927))) b!2429134))

(assert (= (and b!2428877 (is-Star!7138 (regOne!14788 r!13927))) b!2429135))

(assert (= (and b!2428877 (is-Union!7138 (regOne!14788 r!13927))) b!2429136))

(declare-fun b!2429139 () Bool)

(declare-fun e!1544747 () Bool)

(declare-fun tp!771131 () Bool)

(assert (=> b!2429139 (= e!1544747 tp!771131)))

(declare-fun b!2429138 () Bool)

(declare-fun tp!771130 () Bool)

(declare-fun tp!771129 () Bool)

(assert (=> b!2429138 (= e!1544747 (and tp!771130 tp!771129))))

(declare-fun b!2429140 () Bool)

(declare-fun tp!771133 () Bool)

(declare-fun tp!771132 () Bool)

(assert (=> b!2429140 (= e!1544747 (and tp!771133 tp!771132))))

(assert (=> b!2428877 (= tp!771065 e!1544747)))

(declare-fun b!2429137 () Bool)

(assert (=> b!2429137 (= e!1544747 tp_is_empty!11689)))

(assert (= (and b!2428877 (is-ElementMatch!7138 (regTwo!14788 r!13927))) b!2429137))

(assert (= (and b!2428877 (is-Concat!11774 (regTwo!14788 r!13927))) b!2429138))

(assert (= (and b!2428877 (is-Star!7138 (regTwo!14788 r!13927))) b!2429139))

(assert (= (and b!2428877 (is-Union!7138 (regTwo!14788 r!13927))) b!2429140))

(declare-fun b!2429143 () Bool)

(declare-fun e!1544748 () Bool)

(declare-fun tp!771136 () Bool)

(assert (=> b!2429143 (= e!1544748 tp!771136)))

(declare-fun b!2429142 () Bool)

(declare-fun tp!771135 () Bool)

(declare-fun tp!771134 () Bool)

(assert (=> b!2429142 (= e!1544748 (and tp!771135 tp!771134))))

(declare-fun b!2429144 () Bool)

(declare-fun tp!771138 () Bool)

(declare-fun tp!771137 () Bool)

(assert (=> b!2429144 (= e!1544748 (and tp!771138 tp!771137))))

(assert (=> b!2428871 (= tp!771067 e!1544748)))

(declare-fun b!2429141 () Bool)

(assert (=> b!2429141 (= e!1544748 tp_is_empty!11689)))

(assert (= (and b!2428871 (is-ElementMatch!7138 (h!33817 l!9164))) b!2429141))

(assert (= (and b!2428871 (is-Concat!11774 (h!33817 l!9164))) b!2429142))

(assert (= (and b!2428871 (is-Star!7138 (h!33817 l!9164))) b!2429143))

(assert (= (and b!2428871 (is-Union!7138 (h!33817 l!9164))) b!2429144))

(declare-fun b!2429149 () Bool)

(declare-fun e!1544751 () Bool)

(declare-fun tp!771143 () Bool)

(declare-fun tp!771144 () Bool)

(assert (=> b!2429149 (= e!1544751 (and tp!771143 tp!771144))))

(assert (=> b!2428871 (= tp!771071 e!1544751)))

(assert (= (and b!2428871 (is-Cons!28416 (t!208491 l!9164))) b!2429149))

(declare-fun b_lambda!74741 () Bool)

(assert (= b_lambda!74739 (or start!237870 b_lambda!74741)))

(declare-fun bs!464065 () Bool)

(declare-fun d!702950 () Bool)

(assert (= bs!464065 (and d!702950 start!237870)))

(assert (=> bs!464065 (= (dynLambda!12229 lambda!91564 (h!33817 l!9164)) (validRegex!2856 (h!33817 l!9164)))))

(declare-fun m!2812829 () Bool)

(assert (=> bs!464065 m!2812829))

(assert (=> b!2428913 d!702950))

(push 1)

(assert (not d!702944))

(assert (not d!702936))

(assert (not b!2429128))

(assert (not b!2429127))

(assert (not b!2429085))

(assert (not b!2429142))

(assert (not b!2429122))

(assert (not d!702934))

(assert (not b!2428963))

(assert (not b!2429144))

(assert (not b!2429135))

(assert (not b!2428964))

(assert (not b!2429126))

(assert (not bm!148622))

(assert (not bm!148629))

(assert (not b!2429124))

(assert (not b!2429132))

(assert (not b!2429139))

(assert tp_is_empty!11689)

(assert (not b!2429014))

(assert (not b!2429079))

(assert (not b!2429143))

(assert (not b!2428914))

(assert (not b!2429131))

(assert (not b!2429136))

(assert (not b!2429010))

(assert (not b!2429149))

(assert (not b!2429134))

(assert (not b!2428962))

(assert (not bm!148630))

(assert (not b!2429138))

(assert (not b!2428956))

(assert (not b!2428955))

(assert (not b!2429005))

(assert (not b!2429140))

(assert (not b!2428960))

(assert (not b!2429009))

(assert (not b!2429006))

(assert (not b_lambda!74741))

(assert (not b!2428961))

(assert (not b!2429110))

(assert (not b!2429123))

(assert (not bs!464065))

(assert (not b!2429013))

(assert (not b!2429130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

