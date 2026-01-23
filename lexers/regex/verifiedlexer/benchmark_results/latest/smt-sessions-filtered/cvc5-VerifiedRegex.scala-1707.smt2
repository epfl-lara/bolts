; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85652 () Bool)

(assert start!85652)

(declare-fun b!961754 () Bool)

(assert (=> b!961754 true))

(assert (=> b!961754 true))

(assert (=> b!961754 true))

(declare-fun lambda!33548 () Int)

(declare-fun lambda!33547 () Int)

(assert (=> b!961754 (not (= lambda!33548 lambda!33547))))

(assert (=> b!961754 true))

(assert (=> b!961754 true))

(assert (=> b!961754 true))

(declare-fun bs!240920 () Bool)

(declare-fun b!961758 () Bool)

(assert (= bs!240920 (and b!961758 b!961754)))

(declare-fun lambda!33549 () Int)

(declare-datatypes ((C!5914 0))(
  ( (C!5915 (val!3205 Int)) )
))
(declare-datatypes ((Regex!2672 0))(
  ( (ElementMatch!2672 (c!156641 C!5914)) (Concat!4505 (regOne!5856 Regex!2672) (regTwo!5856 Regex!2672)) (EmptyExpr!2672) (Star!2672 (reg!3001 Regex!2672)) (EmptyLang!2672) (Union!2672 (regOne!5857 Regex!2672) (regTwo!5857 Regex!2672)) )
))
(declare-fun lt!346916 () Regex!2672)

(declare-fun lt!346914 () Regex!2672)

(declare-fun lt!346911 () Regex!2672)

(declare-fun r!15766 () Regex!2672)

(assert (=> bs!240920 (= (and (= lt!346916 (reg!3001 r!15766)) (= lt!346914 lt!346911)) (= lambda!33549 lambda!33547))))

(assert (=> bs!240920 (not (= lambda!33549 lambda!33548))))

(assert (=> b!961758 true))

(assert (=> b!961758 true))

(assert (=> b!961758 true))

(declare-fun lambda!33550 () Int)

(assert (=> bs!240920 (not (= lambda!33550 lambda!33547))))

(assert (=> bs!240920 (= (and (= lt!346916 (reg!3001 r!15766)) (= lt!346914 lt!346911)) (= lambda!33550 lambda!33548))))

(assert (=> b!961758 (not (= lambda!33550 lambda!33549))))

(assert (=> b!961758 true))

(assert (=> b!961758 true))

(assert (=> b!961758 true))

(declare-fun b!961750 () Bool)

(declare-fun e!621146 () Bool)

(declare-fun tp_is_empty!4987 () Bool)

(declare-fun tp!295646 () Bool)

(assert (=> b!961750 (= e!621146 (and tp_is_empty!4987 tp!295646))))

(declare-fun b!961751 () Bool)

(declare-fun e!621149 () Bool)

(declare-fun tp!295647 () Bool)

(declare-fun tp!295650 () Bool)

(assert (=> b!961751 (= e!621149 (and tp!295647 tp!295650))))

(declare-fun res!437103 () Bool)

(declare-fun e!621151 () Bool)

(assert (=> start!85652 (=> (not res!437103) (not e!621151))))

(declare-fun validRegex!1141 (Regex!2672) Bool)

(assert (=> start!85652 (= res!437103 (validRegex!1141 r!15766))))

(assert (=> start!85652 e!621151))

(assert (=> start!85652 e!621149))

(assert (=> start!85652 e!621146))

(declare-fun b!961752 () Bool)

(declare-fun tp!295649 () Bool)

(assert (=> b!961752 (= e!621149 tp!295649)))

(declare-fun b!961753 () Bool)

(declare-fun e!621150 () Bool)

(declare-fun lt!346913 () Bool)

(assert (=> b!961753 (= e!621150 lt!346913)))

(declare-fun e!621148 () Bool)

(declare-fun e!621147 () Bool)

(assert (=> b!961754 (= e!621148 e!621147)))

(declare-fun res!437106 () Bool)

(assert (=> b!961754 (=> res!437106 e!621147)))

(declare-datatypes ((List!9902 0))(
  ( (Nil!9886) (Cons!9886 (h!15287 C!5914) (t!100948 List!9902)) )
))
(declare-fun s!10566 () List!9902)

(declare-fun matchR!1210 (Regex!2672 List!9902) Bool)

(assert (=> b!961754 (= res!437106 (not (matchR!1210 lt!346914 s!10566)))))

(assert (=> b!961754 (= lt!346914 (Star!2672 lt!346916))))

(declare-fun removeUselessConcat!319 (Regex!2672) Regex!2672)

(assert (=> b!961754 (= lt!346916 (removeUselessConcat!319 (reg!3001 r!15766)))))

(declare-fun Exists!415 (Int) Bool)

(assert (=> b!961754 (= (Exists!415 lambda!33547) (Exists!415 lambda!33548))))

(declare-datatypes ((Unit!14999 0))(
  ( (Unit!15000) )
))
(declare-fun lt!346912 () Unit!14999)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!133 (Regex!2672 List!9902) Unit!14999)

(assert (=> b!961754 (= lt!346912 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!133 (reg!3001 r!15766) s!10566))))

(declare-datatypes ((tuple2!11222 0))(
  ( (tuple2!11223 (_1!6437 List!9902) (_2!6437 List!9902)) )
))
(declare-datatypes ((Option!2253 0))(
  ( (None!2252) (Some!2252 (v!19669 tuple2!11222)) )
))
(declare-fun isDefined!1895 (Option!2253) Bool)

(declare-fun findConcatSeparation!359 (Regex!2672 Regex!2672 List!9902 List!9902 List!9902) Option!2253)

(assert (=> b!961754 (= (isDefined!1895 (findConcatSeparation!359 (reg!3001 r!15766) lt!346911 Nil!9886 s!10566 s!10566)) (Exists!415 lambda!33547))))

(declare-fun lt!346915 () Unit!14999)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!359 (Regex!2672 Regex!2672 List!9902) Unit!14999)

(assert (=> b!961754 (= lt!346915 (lemmaFindConcatSeparationEquivalentToExists!359 (reg!3001 r!15766) lt!346911 s!10566))))

(assert (=> b!961754 (= lt!346911 (Star!2672 (reg!3001 r!15766)))))

(declare-fun b!961755 () Bool)

(declare-fun tp!295648 () Bool)

(declare-fun tp!295645 () Bool)

(assert (=> b!961755 (= e!621149 (and tp!295648 tp!295645))))

(declare-fun b!961756 () Bool)

(assert (=> b!961756 (= e!621151 (not e!621148))))

(declare-fun res!437105 () Bool)

(assert (=> b!961756 (=> res!437105 e!621148)))

(declare-fun lt!346917 () Bool)

(assert (=> b!961756 (= res!437105 (or lt!346917 (and (is-Concat!4505 r!15766) (is-EmptyExpr!2672 (regOne!5856 r!15766))) (and (is-Concat!4505 r!15766) (is-EmptyExpr!2672 (regTwo!5856 r!15766))) (is-Concat!4505 r!15766) (is-Union!2672 r!15766) (not (is-Star!2672 r!15766))))))

(declare-fun matchRSpec!473 (Regex!2672 List!9902) Bool)

(assert (=> b!961756 (= lt!346917 (matchRSpec!473 r!15766 s!10566))))

(assert (=> b!961756 (= lt!346917 (matchR!1210 r!15766 s!10566))))

(declare-fun lt!346909 () Unit!14999)

(declare-fun mainMatchTheorem!473 (Regex!2672 List!9902) Unit!14999)

(assert (=> b!961756 (= lt!346909 (mainMatchTheorem!473 r!15766 s!10566))))

(declare-fun b!961757 () Bool)

(assert (=> b!961757 (= e!621149 tp_is_empty!4987)))

(assert (=> b!961758 (= e!621147 e!621150)))

(declare-fun res!437104 () Bool)

(assert (=> b!961758 (=> res!437104 e!621150)))

(declare-fun isEmpty!6180 (List!9902) Bool)

(assert (=> b!961758 (= res!437104 (isEmpty!6180 s!10566))))

(assert (=> b!961758 (= (Exists!415 lambda!33549) (Exists!415 lambda!33550))))

(declare-fun lt!346918 () Unit!14999)

(assert (=> b!961758 (= lt!346918 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!133 lt!346916 s!10566))))

(assert (=> b!961758 (= lt!346913 (Exists!415 lambda!33549))))

(assert (=> b!961758 (= lt!346913 (isDefined!1895 (findConcatSeparation!359 lt!346916 lt!346914 Nil!9886 s!10566 s!10566)))))

(declare-fun lt!346910 () Unit!14999)

(assert (=> b!961758 (= lt!346910 (lemmaFindConcatSeparationEquivalentToExists!359 lt!346916 lt!346914 s!10566))))

(assert (=> b!961758 (matchRSpec!473 lt!346914 s!10566)))

(declare-fun lt!346908 () Unit!14999)

(assert (=> b!961758 (= lt!346908 (mainMatchTheorem!473 lt!346914 s!10566))))

(assert (= (and start!85652 res!437103) b!961756))

(assert (= (and b!961756 (not res!437105)) b!961754))

(assert (= (and b!961754 (not res!437106)) b!961758))

(assert (= (and b!961758 (not res!437104)) b!961753))

(assert (= (and start!85652 (is-ElementMatch!2672 r!15766)) b!961757))

(assert (= (and start!85652 (is-Concat!4505 r!15766)) b!961755))

(assert (= (and start!85652 (is-Star!2672 r!15766)) b!961752))

(assert (= (and start!85652 (is-Union!2672 r!15766)) b!961751))

(assert (= (and start!85652 (is-Cons!9886 s!10566)) b!961750))

(declare-fun m!1169581 () Bool)

(assert (=> start!85652 m!1169581))

(declare-fun m!1169583 () Bool)

(assert (=> b!961754 m!1169583))

(declare-fun m!1169585 () Bool)

(assert (=> b!961754 m!1169585))

(assert (=> b!961754 m!1169585))

(declare-fun m!1169587 () Bool)

(assert (=> b!961754 m!1169587))

(declare-fun m!1169589 () Bool)

(assert (=> b!961754 m!1169589))

(declare-fun m!1169591 () Bool)

(assert (=> b!961754 m!1169591))

(declare-fun m!1169593 () Bool)

(assert (=> b!961754 m!1169593))

(declare-fun m!1169595 () Bool)

(assert (=> b!961754 m!1169595))

(declare-fun m!1169597 () Bool)

(assert (=> b!961754 m!1169597))

(assert (=> b!961754 m!1169589))

(declare-fun m!1169599 () Bool)

(assert (=> b!961756 m!1169599))

(declare-fun m!1169601 () Bool)

(assert (=> b!961756 m!1169601))

(declare-fun m!1169603 () Bool)

(assert (=> b!961756 m!1169603))

(declare-fun m!1169605 () Bool)

(assert (=> b!961758 m!1169605))

(declare-fun m!1169607 () Bool)

(assert (=> b!961758 m!1169607))

(declare-fun m!1169609 () Bool)

(assert (=> b!961758 m!1169609))

(declare-fun m!1169611 () Bool)

(assert (=> b!961758 m!1169611))

(declare-fun m!1169613 () Bool)

(assert (=> b!961758 m!1169613))

(declare-fun m!1169615 () Bool)

(assert (=> b!961758 m!1169615))

(declare-fun m!1169617 () Bool)

(assert (=> b!961758 m!1169617))

(assert (=> b!961758 m!1169607))

(declare-fun m!1169619 () Bool)

(assert (=> b!961758 m!1169619))

(declare-fun m!1169621 () Bool)

(assert (=> b!961758 m!1169621))

(assert (=> b!961758 m!1169621))

(push 1)

(assert (not b!961756))

(assert tp_is_empty!4987)

(assert (not b!961751))

(assert (not b!961758))

(assert (not b!961754))

(assert (not b!961750))

(assert (not start!85652))

(assert (not b!961752))

(assert (not b!961755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!240922 () Bool)

(declare-fun b!961857 () Bool)

(assert (= bs!240922 (and b!961857 b!961754)))

(declare-fun lambda!33571 () Int)

(assert (=> bs!240922 (not (= lambda!33571 lambda!33547))))

(assert (=> bs!240922 (= (= r!15766 lt!346911) (= lambda!33571 lambda!33548))))

(declare-fun bs!240923 () Bool)

(assert (= bs!240923 (and b!961857 b!961758)))

(assert (=> bs!240923 (not (= lambda!33571 lambda!33549))))

(assert (=> bs!240923 (= (and (= (reg!3001 r!15766) lt!346916) (= r!15766 lt!346914)) (= lambda!33571 lambda!33550))))

(assert (=> b!961857 true))

(assert (=> b!961857 true))

(declare-fun bs!240924 () Bool)

(declare-fun b!961855 () Bool)

(assert (= bs!240924 (and b!961855 b!961758)))

(declare-fun lambda!33572 () Int)

(assert (=> bs!240924 (not (= lambda!33572 lambda!33550))))

(declare-fun bs!240925 () Bool)

(assert (= bs!240925 (and b!961855 b!961857)))

(assert (=> bs!240925 (not (= lambda!33572 lambda!33571))))

(declare-fun bs!240926 () Bool)

(assert (= bs!240926 (and b!961855 b!961754)))

(assert (=> bs!240926 (not (= lambda!33572 lambda!33547))))

(assert (=> bs!240924 (not (= lambda!33572 lambda!33549))))

(assert (=> bs!240926 (not (= lambda!33572 lambda!33548))))

(assert (=> b!961855 true))

(assert (=> b!961855 true))

(declare-fun bm!60631 () Bool)

(declare-fun c!156651 () Bool)

(declare-fun call!60636 () Bool)

(assert (=> bm!60631 (= call!60636 (Exists!415 (ite c!156651 lambda!33571 lambda!33572)))))

(declare-fun bm!60632 () Bool)

(declare-fun call!60637 () Bool)

(assert (=> bm!60632 (= call!60637 (isEmpty!6180 s!10566))))

(declare-fun b!961854 () Bool)

(declare-fun e!621200 () Bool)

(declare-fun e!621202 () Bool)

(assert (=> b!961854 (= e!621200 e!621202)))

(declare-fun res!437163 () Bool)

(assert (=> b!961854 (= res!437163 (not (is-EmptyLang!2672 r!15766)))))

(assert (=> b!961854 (=> (not res!437163) (not e!621202))))

(declare-fun e!621201 () Bool)

(assert (=> b!961855 (= e!621201 call!60636)))

(declare-fun b!961856 () Bool)

(declare-fun c!156652 () Bool)

(assert (=> b!961856 (= c!156652 (is-Union!2672 r!15766))))

(declare-fun e!621204 () Bool)

(declare-fun e!621206 () Bool)

(assert (=> b!961856 (= e!621204 e!621206)))

(declare-fun e!621203 () Bool)

(assert (=> b!961857 (= e!621203 call!60636)))

(declare-fun d!285228 () Bool)

(declare-fun c!156653 () Bool)

(assert (=> d!285228 (= c!156653 (is-EmptyExpr!2672 r!15766))))

(assert (=> d!285228 (= (matchRSpec!473 r!15766 s!10566) e!621200)))

(declare-fun b!961858 () Bool)

(assert (=> b!961858 (= e!621200 call!60637)))

(declare-fun b!961859 () Bool)

(declare-fun c!156654 () Bool)

(assert (=> b!961859 (= c!156654 (is-ElementMatch!2672 r!15766))))

(assert (=> b!961859 (= e!621202 e!621204)))

(declare-fun b!961860 () Bool)

(declare-fun res!437165 () Bool)

(assert (=> b!961860 (=> res!437165 e!621203)))

(assert (=> b!961860 (= res!437165 call!60637)))

(assert (=> b!961860 (= e!621201 e!621203)))

(declare-fun b!961861 () Bool)

(declare-fun e!621205 () Bool)

(assert (=> b!961861 (= e!621206 e!621205)))

(declare-fun res!437164 () Bool)

(assert (=> b!961861 (= res!437164 (matchRSpec!473 (regOne!5857 r!15766) s!10566))))

(assert (=> b!961861 (=> res!437164 e!621205)))

(declare-fun b!961862 () Bool)

(assert (=> b!961862 (= e!621205 (matchRSpec!473 (regTwo!5857 r!15766) s!10566))))

(declare-fun b!961863 () Bool)

(assert (=> b!961863 (= e!621204 (= s!10566 (Cons!9886 (c!156641 r!15766) Nil!9886)))))

(declare-fun b!961864 () Bool)

(assert (=> b!961864 (= e!621206 e!621201)))

(assert (=> b!961864 (= c!156651 (is-Star!2672 r!15766))))

(assert (= (and d!285228 c!156653) b!961858))

(assert (= (and d!285228 (not c!156653)) b!961854))

(assert (= (and b!961854 res!437163) b!961859))

(assert (= (and b!961859 c!156654) b!961863))

(assert (= (and b!961859 (not c!156654)) b!961856))

(assert (= (and b!961856 c!156652) b!961861))

(assert (= (and b!961856 (not c!156652)) b!961864))

(assert (= (and b!961861 (not res!437164)) b!961862))

(assert (= (and b!961864 c!156651) b!961860))

(assert (= (and b!961864 (not c!156651)) b!961855))

(assert (= (and b!961860 (not res!437165)) b!961857))

(assert (= (or b!961857 b!961855) bm!60631))

(assert (= (or b!961858 b!961860) bm!60632))

(declare-fun m!1169665 () Bool)

(assert (=> bm!60631 m!1169665))

(assert (=> bm!60632 m!1169615))

(declare-fun m!1169667 () Bool)

(assert (=> b!961861 m!1169667))

(declare-fun m!1169669 () Bool)

(assert (=> b!961862 m!1169669))

(assert (=> b!961756 d!285228))

(declare-fun b!961893 () Bool)

(declare-fun res!437187 () Bool)

(declare-fun e!621226 () Bool)

(assert (=> b!961893 (=> res!437187 e!621226)))

(assert (=> b!961893 (= res!437187 (not (is-ElementMatch!2672 r!15766)))))

(declare-fun e!621227 () Bool)

(assert (=> b!961893 (= e!621227 e!621226)))

(declare-fun b!961894 () Bool)

(declare-fun e!621222 () Bool)

(assert (=> b!961894 (= e!621222 e!621227)))

(declare-fun c!156661 () Bool)

(assert (=> b!961894 (= c!156661 (is-EmptyLang!2672 r!15766))))

(declare-fun b!961895 () Bool)

(declare-fun res!437186 () Bool)

(declare-fun e!621223 () Bool)

(assert (=> b!961895 (=> (not res!437186) (not e!621223))))

(declare-fun tail!1327 (List!9902) List!9902)

(assert (=> b!961895 (= res!437186 (isEmpty!6180 (tail!1327 s!10566)))))

(declare-fun b!961896 () Bool)

(declare-fun res!437188 () Bool)

(declare-fun e!621224 () Bool)

(assert (=> b!961896 (=> res!437188 e!621224)))

(assert (=> b!961896 (= res!437188 (not (isEmpty!6180 (tail!1327 s!10566))))))

(declare-fun b!961897 () Bool)

(declare-fun e!621221 () Bool)

(assert (=> b!961897 (= e!621221 e!621224)))

(declare-fun res!437189 () Bool)

(assert (=> b!961897 (=> res!437189 e!621224)))

(declare-fun call!60640 () Bool)

(assert (=> b!961897 (= res!437189 call!60640)))

(declare-fun bm!60635 () Bool)

(assert (=> bm!60635 (= call!60640 (isEmpty!6180 s!10566))))

(declare-fun b!961898 () Bool)

(declare-fun head!1765 (List!9902) C!5914)

(assert (=> b!961898 (= e!621224 (not (= (head!1765 s!10566) (c!156641 r!15766))))))

(declare-fun b!961899 () Bool)

(declare-fun e!621225 () Bool)

(declare-fun nullable!804 (Regex!2672) Bool)

(assert (=> b!961899 (= e!621225 (nullable!804 r!15766))))

(declare-fun b!961900 () Bool)

(declare-fun res!437182 () Bool)

(assert (=> b!961900 (=> (not res!437182) (not e!621223))))

(assert (=> b!961900 (= res!437182 (not call!60640))))

(declare-fun b!961901 () Bool)

(declare-fun derivativeStep!612 (Regex!2672 C!5914) Regex!2672)

(assert (=> b!961901 (= e!621225 (matchR!1210 (derivativeStep!612 r!15766 (head!1765 s!10566)) (tail!1327 s!10566)))))

(declare-fun b!961902 () Bool)

(declare-fun lt!346954 () Bool)

(assert (=> b!961902 (= e!621222 (= lt!346954 call!60640))))

(declare-fun b!961903 () Bool)

(assert (=> b!961903 (= e!621226 e!621221)))

(declare-fun res!437185 () Bool)

(assert (=> b!961903 (=> (not res!437185) (not e!621221))))

(assert (=> b!961903 (= res!437185 (not lt!346954))))

(declare-fun b!961904 () Bool)

(assert (=> b!961904 (= e!621227 (not lt!346954))))

(declare-fun b!961905 () Bool)

(assert (=> b!961905 (= e!621223 (= (head!1765 s!10566) (c!156641 r!15766)))))

(declare-fun b!961906 () Bool)

(declare-fun res!437183 () Bool)

(assert (=> b!961906 (=> res!437183 e!621226)))

(assert (=> b!961906 (= res!437183 e!621223)))

(declare-fun res!437184 () Bool)

(assert (=> b!961906 (=> (not res!437184) (not e!621223))))

(assert (=> b!961906 (= res!437184 lt!346954)))

(declare-fun d!285230 () Bool)

(assert (=> d!285230 e!621222))

(declare-fun c!156662 () Bool)

(assert (=> d!285230 (= c!156662 (is-EmptyExpr!2672 r!15766))))

(assert (=> d!285230 (= lt!346954 e!621225)))

(declare-fun c!156663 () Bool)

(assert (=> d!285230 (= c!156663 (isEmpty!6180 s!10566))))

(assert (=> d!285230 (validRegex!1141 r!15766)))

(assert (=> d!285230 (= (matchR!1210 r!15766 s!10566) lt!346954)))

(assert (= (and d!285230 c!156663) b!961899))

(assert (= (and d!285230 (not c!156663)) b!961901))

(assert (= (and d!285230 c!156662) b!961902))

(assert (= (and d!285230 (not c!156662)) b!961894))

(assert (= (and b!961894 c!156661) b!961904))

(assert (= (and b!961894 (not c!156661)) b!961893))

(assert (= (and b!961893 (not res!437187)) b!961906))

(assert (= (and b!961906 res!437184) b!961900))

(assert (= (and b!961900 res!437182) b!961895))

(assert (= (and b!961895 res!437186) b!961905))

(assert (= (and b!961906 (not res!437183)) b!961903))

(assert (= (and b!961903 res!437185) b!961897))

(assert (= (and b!961897 (not res!437189)) b!961896))

(assert (= (and b!961896 (not res!437188)) b!961898))

(assert (= (or b!961902 b!961897 b!961900) bm!60635))

(declare-fun m!1169673 () Bool)

(assert (=> b!961899 m!1169673))

(declare-fun m!1169675 () Bool)

(assert (=> b!961896 m!1169675))

(assert (=> b!961896 m!1169675))

(declare-fun m!1169677 () Bool)

(assert (=> b!961896 m!1169677))

(assert (=> b!961895 m!1169675))

(assert (=> b!961895 m!1169675))

(assert (=> b!961895 m!1169677))

(declare-fun m!1169679 () Bool)

(assert (=> b!961901 m!1169679))

(assert (=> b!961901 m!1169679))

(declare-fun m!1169681 () Bool)

(assert (=> b!961901 m!1169681))

(assert (=> b!961901 m!1169675))

(assert (=> b!961901 m!1169681))

(assert (=> b!961901 m!1169675))

(declare-fun m!1169683 () Bool)

(assert (=> b!961901 m!1169683))

(assert (=> b!961905 m!1169679))

(assert (=> d!285230 m!1169615))

(assert (=> d!285230 m!1169581))

(assert (=> b!961898 m!1169679))

(assert (=> bm!60635 m!1169615))

(assert (=> b!961756 d!285230))

(declare-fun d!285236 () Bool)

(assert (=> d!285236 (= (matchR!1210 r!15766 s!10566) (matchRSpec!473 r!15766 s!10566))))

(declare-fun lt!346957 () Unit!14999)

(declare-fun choose!6055 (Regex!2672 List!9902) Unit!14999)

(assert (=> d!285236 (= lt!346957 (choose!6055 r!15766 s!10566))))

(assert (=> d!285236 (validRegex!1141 r!15766)))

(assert (=> d!285236 (= (mainMatchTheorem!473 r!15766 s!10566) lt!346957)))

(declare-fun bs!240928 () Bool)

(assert (= bs!240928 d!285236))

(assert (=> bs!240928 m!1169601))

(assert (=> bs!240928 m!1169599))

(declare-fun m!1169685 () Bool)

(assert (=> bs!240928 m!1169685))

(assert (=> bs!240928 m!1169581))

(assert (=> b!961756 d!285236))

(declare-fun bs!240929 () Bool)

(declare-fun d!285238 () Bool)

(assert (= bs!240929 (and d!285238 b!961758)))

(declare-fun lambda!33575 () Int)

(assert (=> bs!240929 (not (= lambda!33575 lambda!33550))))

(declare-fun bs!240930 () Bool)

(assert (= bs!240930 (and d!285238 b!961857)))

(assert (=> bs!240930 (not (= lambda!33575 lambda!33571))))

(declare-fun bs!240931 () Bool)

(assert (= bs!240931 (and d!285238 b!961855)))

(assert (=> bs!240931 (not (= lambda!33575 lambda!33572))))

(declare-fun bs!240932 () Bool)

(assert (= bs!240932 (and d!285238 b!961754)))

(assert (=> bs!240932 (= lambda!33575 lambda!33547)))

(assert (=> bs!240929 (= (and (= (reg!3001 r!15766) lt!346916) (= lt!346911 lt!346914)) (= lambda!33575 lambda!33549))))

(assert (=> bs!240932 (not (= lambda!33575 lambda!33548))))

(assert (=> d!285238 true))

(assert (=> d!285238 true))

(assert (=> d!285238 true))

(assert (=> d!285238 (= (isDefined!1895 (findConcatSeparation!359 (reg!3001 r!15766) lt!346911 Nil!9886 s!10566 s!10566)) (Exists!415 lambda!33575))))

(declare-fun lt!346960 () Unit!14999)

(declare-fun choose!6056 (Regex!2672 Regex!2672 List!9902) Unit!14999)

(assert (=> d!285238 (= lt!346960 (choose!6056 (reg!3001 r!15766) lt!346911 s!10566))))

(assert (=> d!285238 (validRegex!1141 (reg!3001 r!15766))))

(assert (=> d!285238 (= (lemmaFindConcatSeparationEquivalentToExists!359 (reg!3001 r!15766) lt!346911 s!10566) lt!346960)))

(declare-fun bs!240933 () Bool)

(assert (= bs!240933 d!285238))

(assert (=> bs!240933 m!1169585))

(assert (=> bs!240933 m!1169587))

(declare-fun m!1169687 () Bool)

(assert (=> bs!240933 m!1169687))

(assert (=> bs!240933 m!1169585))

(declare-fun m!1169689 () Bool)

(assert (=> bs!240933 m!1169689))

(declare-fun m!1169691 () Bool)

(assert (=> bs!240933 m!1169691))

(assert (=> b!961754 d!285238))

(declare-fun bs!240934 () Bool)

(declare-fun d!285240 () Bool)

(assert (= bs!240934 (and d!285240 b!961758)))

(declare-fun lambda!33580 () Int)

(assert (=> bs!240934 (not (= lambda!33580 lambda!33550))))

(declare-fun bs!240935 () Bool)

(assert (= bs!240935 (and d!285240 d!285238)))

(assert (=> bs!240935 (= (= (Star!2672 (reg!3001 r!15766)) lt!346911) (= lambda!33580 lambda!33575))))

(declare-fun bs!240936 () Bool)

(assert (= bs!240936 (and d!285240 b!961857)))

(assert (=> bs!240936 (not (= lambda!33580 lambda!33571))))

(declare-fun bs!240937 () Bool)

(assert (= bs!240937 (and d!285240 b!961855)))

(assert (=> bs!240937 (not (= lambda!33580 lambda!33572))))

(declare-fun bs!240938 () Bool)

(assert (= bs!240938 (and d!285240 b!961754)))

(assert (=> bs!240938 (= (= (Star!2672 (reg!3001 r!15766)) lt!346911) (= lambda!33580 lambda!33547))))

(assert (=> bs!240934 (= (and (= (reg!3001 r!15766) lt!346916) (= (Star!2672 (reg!3001 r!15766)) lt!346914)) (= lambda!33580 lambda!33549))))

(assert (=> bs!240938 (not (= lambda!33580 lambda!33548))))

(assert (=> d!285240 true))

(assert (=> d!285240 true))

(declare-fun lambda!33581 () Int)

(assert (=> bs!240934 (= (and (= (reg!3001 r!15766) lt!346916) (= (Star!2672 (reg!3001 r!15766)) lt!346914)) (= lambda!33581 lambda!33550))))

(declare-fun bs!240939 () Bool)

(assert (= bs!240939 d!285240))

(assert (=> bs!240939 (not (= lambda!33581 lambda!33580))))

(assert (=> bs!240935 (not (= lambda!33581 lambda!33575))))

(assert (=> bs!240936 (= (= (Star!2672 (reg!3001 r!15766)) r!15766) (= lambda!33581 lambda!33571))))

(assert (=> bs!240937 (not (= lambda!33581 lambda!33572))))

(assert (=> bs!240938 (not (= lambda!33581 lambda!33547))))

(assert (=> bs!240934 (not (= lambda!33581 lambda!33549))))

(assert (=> bs!240938 (= (= (Star!2672 (reg!3001 r!15766)) lt!346911) (= lambda!33581 lambda!33548))))

(assert (=> d!285240 true))

(assert (=> d!285240 true))

(assert (=> d!285240 (= (Exists!415 lambda!33580) (Exists!415 lambda!33581))))

(declare-fun lt!346969 () Unit!14999)

(declare-fun choose!6057 (Regex!2672 List!9902) Unit!14999)

(assert (=> d!285240 (= lt!346969 (choose!6057 (reg!3001 r!15766) s!10566))))

(assert (=> d!285240 (validRegex!1141 (reg!3001 r!15766))))

(assert (=> d!285240 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!133 (reg!3001 r!15766) s!10566) lt!346969)))

(declare-fun m!1169693 () Bool)

(assert (=> bs!240939 m!1169693))

(declare-fun m!1169695 () Bool)

(assert (=> bs!240939 m!1169695))

(declare-fun m!1169697 () Bool)

(assert (=> bs!240939 m!1169697))

(assert (=> bs!240939 m!1169691))

(assert (=> b!961754 d!285240))

(declare-fun b!961966 () Bool)

(declare-fun e!621262 () Bool)

(declare-fun lt!346981 () Option!2253)

(assert (=> b!961966 (= e!621262 (not (isDefined!1895 lt!346981)))))

(declare-fun b!961967 () Bool)

(declare-fun res!437231 () Bool)

(declare-fun e!621263 () Bool)

(assert (=> b!961967 (=> (not res!437231) (not e!621263))))

(declare-fun get!3373 (Option!2253) tuple2!11222)

(assert (=> b!961967 (= res!437231 (matchR!1210 (reg!3001 r!15766) (_1!6437 (get!3373 lt!346981))))))

(declare-fun b!961968 () Bool)

(declare-fun e!621261 () Option!2253)

(assert (=> b!961968 (= e!621261 None!2252)))

(declare-fun b!961969 () Bool)

(declare-fun res!437229 () Bool)

(assert (=> b!961969 (=> (not res!437229) (not e!621263))))

(assert (=> b!961969 (= res!437229 (matchR!1210 lt!346911 (_2!6437 (get!3373 lt!346981))))))

(declare-fun b!961970 () Bool)

(declare-fun e!621259 () Option!2253)

(assert (=> b!961970 (= e!621259 (Some!2252 (tuple2!11223 Nil!9886 s!10566)))))

(declare-fun b!961972 () Bool)

(declare-fun e!621260 () Bool)

(assert (=> b!961972 (= e!621260 (matchR!1210 lt!346911 s!10566))))

(declare-fun b!961973 () Bool)

(declare-fun lt!346980 () Unit!14999)

(declare-fun lt!346979 () Unit!14999)

(assert (=> b!961973 (= lt!346980 lt!346979)))

(declare-fun ++!2662 (List!9902 List!9902) List!9902)

(assert (=> b!961973 (= (++!2662 (++!2662 Nil!9886 (Cons!9886 (h!15287 s!10566) Nil!9886)) (t!100948 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!267 (List!9902 C!5914 List!9902 List!9902) Unit!14999)

(assert (=> b!961973 (= lt!346979 (lemmaMoveElementToOtherListKeepsConcatEq!267 Nil!9886 (h!15287 s!10566) (t!100948 s!10566) s!10566))))

(assert (=> b!961973 (= e!621261 (findConcatSeparation!359 (reg!3001 r!15766) lt!346911 (++!2662 Nil!9886 (Cons!9886 (h!15287 s!10566) Nil!9886)) (t!100948 s!10566) s!10566))))

(declare-fun b!961974 () Bool)

(assert (=> b!961974 (= e!621263 (= (++!2662 (_1!6437 (get!3373 lt!346981)) (_2!6437 (get!3373 lt!346981))) s!10566))))

(declare-fun b!961971 () Bool)

(assert (=> b!961971 (= e!621259 e!621261)))

(declare-fun c!156674 () Bool)

(assert (=> b!961971 (= c!156674 (is-Nil!9886 s!10566))))

(declare-fun d!285242 () Bool)

(assert (=> d!285242 e!621262))

(declare-fun res!437232 () Bool)

(assert (=> d!285242 (=> res!437232 e!621262)))

(assert (=> d!285242 (= res!437232 e!621263)))

(declare-fun res!437233 () Bool)

(assert (=> d!285242 (=> (not res!437233) (not e!621263))))

(assert (=> d!285242 (= res!437233 (isDefined!1895 lt!346981))))

(assert (=> d!285242 (= lt!346981 e!621259)))

(declare-fun c!156675 () Bool)

(assert (=> d!285242 (= c!156675 e!621260)))

(declare-fun res!437230 () Bool)

(assert (=> d!285242 (=> (not res!437230) (not e!621260))))

(assert (=> d!285242 (= res!437230 (matchR!1210 (reg!3001 r!15766) Nil!9886))))

(assert (=> d!285242 (validRegex!1141 (reg!3001 r!15766))))

(assert (=> d!285242 (= (findConcatSeparation!359 (reg!3001 r!15766) lt!346911 Nil!9886 s!10566 s!10566) lt!346981)))

(assert (= (and d!285242 res!437230) b!961972))

(assert (= (and d!285242 c!156675) b!961970))

(assert (= (and d!285242 (not c!156675)) b!961971))

(assert (= (and b!961971 c!156674) b!961968))

(assert (= (and b!961971 (not c!156674)) b!961973))

(assert (= (and d!285242 res!437233) b!961967))

(assert (= (and b!961967 res!437231) b!961969))

(assert (= (and b!961969 res!437229) b!961974))

(assert (= (and d!285242 (not res!437232)) b!961966))

(declare-fun m!1169727 () Bool)

(assert (=> b!961966 m!1169727))

(assert (=> d!285242 m!1169727))

(declare-fun m!1169729 () Bool)

(assert (=> d!285242 m!1169729))

(assert (=> d!285242 m!1169691))

(declare-fun m!1169731 () Bool)

(assert (=> b!961967 m!1169731))

(declare-fun m!1169733 () Bool)

(assert (=> b!961967 m!1169733))

(assert (=> b!961974 m!1169731))

(declare-fun m!1169735 () Bool)

(assert (=> b!961974 m!1169735))

(assert (=> b!961969 m!1169731))

(declare-fun m!1169737 () Bool)

(assert (=> b!961969 m!1169737))

(declare-fun m!1169739 () Bool)

(assert (=> b!961972 m!1169739))

(declare-fun m!1169741 () Bool)

(assert (=> b!961973 m!1169741))

(assert (=> b!961973 m!1169741))

(declare-fun m!1169743 () Bool)

(assert (=> b!961973 m!1169743))

(declare-fun m!1169745 () Bool)

(assert (=> b!961973 m!1169745))

(assert (=> b!961973 m!1169741))

(declare-fun m!1169747 () Bool)

(assert (=> b!961973 m!1169747))

(assert (=> b!961754 d!285242))

(declare-fun d!285250 () Bool)

(declare-fun choose!6058 (Int) Bool)

(assert (=> d!285250 (= (Exists!415 lambda!33548) (choose!6058 lambda!33548))))

(declare-fun bs!240942 () Bool)

(assert (= bs!240942 d!285250))

(declare-fun m!1169749 () Bool)

(assert (=> bs!240942 m!1169749))

(assert (=> b!961754 d!285250))

(declare-fun b!961975 () Bool)

(declare-fun res!437239 () Bool)

(declare-fun e!621269 () Bool)

(assert (=> b!961975 (=> res!437239 e!621269)))

(assert (=> b!961975 (= res!437239 (not (is-ElementMatch!2672 lt!346914)))))

(declare-fun e!621270 () Bool)

(assert (=> b!961975 (= e!621270 e!621269)))

(declare-fun b!961976 () Bool)

(declare-fun e!621265 () Bool)

(assert (=> b!961976 (= e!621265 e!621270)))

(declare-fun c!156676 () Bool)

(assert (=> b!961976 (= c!156676 (is-EmptyLang!2672 lt!346914))))

(declare-fun b!961977 () Bool)

(declare-fun res!437238 () Bool)

(declare-fun e!621266 () Bool)

(assert (=> b!961977 (=> (not res!437238) (not e!621266))))

(assert (=> b!961977 (= res!437238 (isEmpty!6180 (tail!1327 s!10566)))))

(declare-fun b!961978 () Bool)

(declare-fun res!437240 () Bool)

(declare-fun e!621267 () Bool)

(assert (=> b!961978 (=> res!437240 e!621267)))

(assert (=> b!961978 (= res!437240 (not (isEmpty!6180 (tail!1327 s!10566))))))

(declare-fun b!961979 () Bool)

(declare-fun e!621264 () Bool)

(assert (=> b!961979 (= e!621264 e!621267)))

(declare-fun res!437241 () Bool)

(assert (=> b!961979 (=> res!437241 e!621267)))

(declare-fun call!60641 () Bool)

(assert (=> b!961979 (= res!437241 call!60641)))

(declare-fun bm!60636 () Bool)

(assert (=> bm!60636 (= call!60641 (isEmpty!6180 s!10566))))

(declare-fun b!961980 () Bool)

(assert (=> b!961980 (= e!621267 (not (= (head!1765 s!10566) (c!156641 lt!346914))))))

(declare-fun b!961981 () Bool)

(declare-fun e!621268 () Bool)

(assert (=> b!961981 (= e!621268 (nullable!804 lt!346914))))

(declare-fun b!961982 () Bool)

(declare-fun res!437234 () Bool)

(assert (=> b!961982 (=> (not res!437234) (not e!621266))))

(assert (=> b!961982 (= res!437234 (not call!60641))))

(declare-fun b!961983 () Bool)

(assert (=> b!961983 (= e!621268 (matchR!1210 (derivativeStep!612 lt!346914 (head!1765 s!10566)) (tail!1327 s!10566)))))

(declare-fun b!961984 () Bool)

(declare-fun lt!346982 () Bool)

(assert (=> b!961984 (= e!621265 (= lt!346982 call!60641))))

(declare-fun b!961985 () Bool)

(assert (=> b!961985 (= e!621269 e!621264)))

(declare-fun res!437237 () Bool)

(assert (=> b!961985 (=> (not res!437237) (not e!621264))))

(assert (=> b!961985 (= res!437237 (not lt!346982))))

(declare-fun b!961986 () Bool)

(assert (=> b!961986 (= e!621270 (not lt!346982))))

(declare-fun b!961987 () Bool)

(assert (=> b!961987 (= e!621266 (= (head!1765 s!10566) (c!156641 lt!346914)))))

(declare-fun b!961988 () Bool)

(declare-fun res!437235 () Bool)

(assert (=> b!961988 (=> res!437235 e!621269)))

(assert (=> b!961988 (= res!437235 e!621266)))

(declare-fun res!437236 () Bool)

(assert (=> b!961988 (=> (not res!437236) (not e!621266))))

(assert (=> b!961988 (= res!437236 lt!346982)))

(declare-fun d!285252 () Bool)

(assert (=> d!285252 e!621265))

(declare-fun c!156677 () Bool)

(assert (=> d!285252 (= c!156677 (is-EmptyExpr!2672 lt!346914))))

(assert (=> d!285252 (= lt!346982 e!621268)))

(declare-fun c!156678 () Bool)

(assert (=> d!285252 (= c!156678 (isEmpty!6180 s!10566))))

(assert (=> d!285252 (validRegex!1141 lt!346914)))

(assert (=> d!285252 (= (matchR!1210 lt!346914 s!10566) lt!346982)))

(assert (= (and d!285252 c!156678) b!961981))

(assert (= (and d!285252 (not c!156678)) b!961983))

(assert (= (and d!285252 c!156677) b!961984))

(assert (= (and d!285252 (not c!156677)) b!961976))

(assert (= (and b!961976 c!156676) b!961986))

(assert (= (and b!961976 (not c!156676)) b!961975))

(assert (= (and b!961975 (not res!437239)) b!961988))

(assert (= (and b!961988 res!437236) b!961982))

(assert (= (and b!961982 res!437234) b!961977))

(assert (= (and b!961977 res!437238) b!961987))

(assert (= (and b!961988 (not res!437235)) b!961985))

(assert (= (and b!961985 res!437237) b!961979))

(assert (= (and b!961979 (not res!437241)) b!961978))

(assert (= (and b!961978 (not res!437240)) b!961980))

(assert (= (or b!961984 b!961979 b!961982) bm!60636))

(declare-fun m!1169751 () Bool)

(assert (=> b!961981 m!1169751))

(assert (=> b!961978 m!1169675))

(assert (=> b!961978 m!1169675))

(assert (=> b!961978 m!1169677))

(assert (=> b!961977 m!1169675))

(assert (=> b!961977 m!1169675))

(assert (=> b!961977 m!1169677))

(assert (=> b!961983 m!1169679))

(assert (=> b!961983 m!1169679))

(declare-fun m!1169753 () Bool)

(assert (=> b!961983 m!1169753))

(assert (=> b!961983 m!1169675))

(assert (=> b!961983 m!1169753))

(assert (=> b!961983 m!1169675))

(declare-fun m!1169755 () Bool)

(assert (=> b!961983 m!1169755))

(assert (=> b!961987 m!1169679))

(assert (=> d!285252 m!1169615))

(declare-fun m!1169757 () Bool)

(assert (=> d!285252 m!1169757))

(assert (=> b!961980 m!1169679))

(assert (=> bm!60636 m!1169615))

(assert (=> b!961754 d!285252))

(declare-fun d!285254 () Bool)

(assert (=> d!285254 (= (Exists!415 lambda!33547) (choose!6058 lambda!33547))))

(declare-fun bs!240943 () Bool)

(assert (= bs!240943 d!285254))

(declare-fun m!1169759 () Bool)

(assert (=> bs!240943 m!1169759))

(assert (=> b!961754 d!285254))

(declare-fun d!285256 () Bool)

(declare-fun isEmpty!6182 (Option!2253) Bool)

(assert (=> d!285256 (= (isDefined!1895 (findConcatSeparation!359 (reg!3001 r!15766) lt!346911 Nil!9886 s!10566 s!10566)) (not (isEmpty!6182 (findConcatSeparation!359 (reg!3001 r!15766) lt!346911 Nil!9886 s!10566 s!10566))))))

(declare-fun bs!240944 () Bool)

(assert (= bs!240944 d!285256))

(assert (=> bs!240944 m!1169585))

(declare-fun m!1169761 () Bool)

(assert (=> bs!240944 m!1169761))

(assert (=> b!961754 d!285256))

(declare-fun b!962039 () Bool)

(declare-fun e!621302 () Regex!2672)

(declare-fun call!60655 () Regex!2672)

(declare-fun call!60657 () Regex!2672)

(assert (=> b!962039 (= e!621302 (Union!2672 call!60655 call!60657))))

(declare-fun bm!60650 () Bool)

(declare-fun call!60656 () Regex!2672)

(declare-fun call!60658 () Regex!2672)

(assert (=> bm!60650 (= call!60656 call!60658)))

(declare-fun b!962040 () Bool)

(declare-fun e!621298 () Regex!2672)

(assert (=> b!962040 (= e!621298 (Star!2672 call!60657))))

(declare-fun bm!60651 () Bool)

(assert (=> bm!60651 (= call!60655 call!60656)))

(declare-fun b!962041 () Bool)

(declare-fun c!156697 () Bool)

(assert (=> b!962041 (= c!156697 (is-Star!2672 (reg!3001 r!15766)))))

(assert (=> b!962041 (= e!621302 e!621298)))

(declare-fun b!962042 () Bool)

(declare-fun e!621300 () Regex!2672)

(declare-fun call!60654 () Regex!2672)

(assert (=> b!962042 (= e!621300 (Concat!4505 call!60655 call!60654))))

(declare-fun c!156695 () Bool)

(declare-fun bm!60652 () Bool)

(declare-fun c!156698 () Bool)

(assert (=> bm!60652 (= call!60654 (removeUselessConcat!319 (ite c!156695 (regTwo!5856 (reg!3001 r!15766)) (ite c!156698 (regTwo!5857 (reg!3001 r!15766)) (reg!3001 (reg!3001 r!15766))))))))

(declare-fun c!156699 () Bool)

(declare-fun bm!60649 () Bool)

(declare-fun c!156696 () Bool)

(assert (=> bm!60649 (= call!60658 (removeUselessConcat!319 (ite c!156699 (regTwo!5856 (reg!3001 r!15766)) (ite (or c!156696 c!156695) (regOne!5856 (reg!3001 r!15766)) (regOne!5857 (reg!3001 r!15766))))))))

(declare-fun d!285258 () Bool)

(declare-fun e!621299 () Bool)

(assert (=> d!285258 e!621299))

(declare-fun res!437260 () Bool)

(assert (=> d!285258 (=> (not res!437260) (not e!621299))))

(declare-fun lt!346987 () Regex!2672)

(assert (=> d!285258 (= res!437260 (validRegex!1141 lt!346987))))

(declare-fun e!621297 () Regex!2672)

(assert (=> d!285258 (= lt!346987 e!621297)))

(assert (=> d!285258 (= c!156699 (and (is-Concat!4505 (reg!3001 r!15766)) (is-EmptyExpr!2672 (regOne!5856 (reg!3001 r!15766)))))))

(assert (=> d!285258 (validRegex!1141 (reg!3001 r!15766))))

(assert (=> d!285258 (= (removeUselessConcat!319 (reg!3001 r!15766)) lt!346987)))

(declare-fun b!962043 () Bool)

(assert (=> b!962043 (= e!621297 call!60658)))

(declare-fun b!962044 () Bool)

(assert (=> b!962044 (= c!156695 (is-Concat!4505 (reg!3001 r!15766)))))

(declare-fun e!621301 () Regex!2672)

(assert (=> b!962044 (= e!621301 e!621300)))

(declare-fun bm!60653 () Bool)

(assert (=> bm!60653 (= call!60657 call!60654)))

(declare-fun b!962045 () Bool)

(assert (=> b!962045 (= e!621300 e!621302)))

(assert (=> b!962045 (= c!156698 (is-Union!2672 (reg!3001 r!15766)))))

(declare-fun b!962046 () Bool)

(assert (=> b!962046 (= e!621298 (reg!3001 r!15766))))

(declare-fun b!962047 () Bool)

(assert (=> b!962047 (= e!621301 call!60656)))

(declare-fun b!962048 () Bool)

(assert (=> b!962048 (= e!621299 (= (nullable!804 lt!346987) (nullable!804 (reg!3001 r!15766))))))

(declare-fun b!962049 () Bool)

(assert (=> b!962049 (= e!621297 e!621301)))

(assert (=> b!962049 (= c!156696 (and (is-Concat!4505 (reg!3001 r!15766)) (is-EmptyExpr!2672 (regTwo!5856 (reg!3001 r!15766)))))))

(assert (= (and d!285258 c!156699) b!962043))

(assert (= (and d!285258 (not c!156699)) b!962049))

(assert (= (and b!962049 c!156696) b!962047))

(assert (= (and b!962049 (not c!156696)) b!962044))

(assert (= (and b!962044 c!156695) b!962042))

(assert (= (and b!962044 (not c!156695)) b!962045))

(assert (= (and b!962045 c!156698) b!962039))

(assert (= (and b!962045 (not c!156698)) b!962041))

(assert (= (and b!962041 c!156697) b!962040))

(assert (= (and b!962041 (not c!156697)) b!962046))

(assert (= (or b!962039 b!962040) bm!60653))

(assert (= (or b!962042 bm!60653) bm!60652))

(assert (= (or b!962042 b!962039) bm!60651))

(assert (= (or b!962047 bm!60651) bm!60650))

(assert (= (or b!962043 bm!60650) bm!60649))

(assert (= (and d!285258 res!437260) b!962048))

(declare-fun m!1169763 () Bool)

(assert (=> bm!60652 m!1169763))

(declare-fun m!1169765 () Bool)

(assert (=> bm!60649 m!1169765))

(declare-fun m!1169767 () Bool)

(assert (=> d!285258 m!1169767))

(assert (=> d!285258 m!1169691))

(declare-fun m!1169769 () Bool)

(assert (=> b!962048 m!1169769))

(declare-fun m!1169771 () Bool)

(assert (=> b!962048 m!1169771))

(assert (=> b!961754 d!285258))

(declare-fun b!962082 () Bool)

(declare-fun e!621325 () Bool)

(declare-fun call!60666 () Bool)

(assert (=> b!962082 (= e!621325 call!60666)))

(declare-fun b!962083 () Bool)

(declare-fun res!437281 () Bool)

(declare-fun e!621327 () Bool)

(assert (=> b!962083 (=> res!437281 e!621327)))

(assert (=> b!962083 (= res!437281 (not (is-Concat!4505 r!15766)))))

(declare-fun e!621330 () Bool)

(assert (=> b!962083 (= e!621330 e!621327)))

(declare-fun b!962084 () Bool)

(declare-fun e!621324 () Bool)

(assert (=> b!962084 (= e!621327 e!621324)))

(declare-fun res!437283 () Bool)

(assert (=> b!962084 (=> (not res!437283) (not e!621324))))

(declare-fun call!60668 () Bool)

(assert (=> b!962084 (= res!437283 call!60668)))

(declare-fun call!60667 () Bool)

(declare-fun c!156707 () Bool)

(declare-fun c!156708 () Bool)

(declare-fun bm!60661 () Bool)

(assert (=> bm!60661 (= call!60667 (validRegex!1141 (ite c!156708 (reg!3001 r!15766) (ite c!156707 (regOne!5857 r!15766) (regOne!5856 r!15766)))))))

(declare-fun d!285260 () Bool)

(declare-fun res!437280 () Bool)

(declare-fun e!621328 () Bool)

(assert (=> d!285260 (=> res!437280 e!621328)))

(assert (=> d!285260 (= res!437280 (is-ElementMatch!2672 r!15766))))

(assert (=> d!285260 (= (validRegex!1141 r!15766) e!621328)))

(declare-fun bm!60662 () Bool)

(assert (=> bm!60662 (= call!60666 (validRegex!1141 (ite c!156707 (regTwo!5857 r!15766) (regTwo!5856 r!15766))))))

(declare-fun b!962085 () Bool)

(declare-fun e!621326 () Bool)

(declare-fun e!621329 () Bool)

(assert (=> b!962085 (= e!621326 e!621329)))

(declare-fun res!437282 () Bool)

(assert (=> b!962085 (= res!437282 (not (nullable!804 (reg!3001 r!15766))))))

(assert (=> b!962085 (=> (not res!437282) (not e!621329))))

(declare-fun b!962086 () Bool)

(assert (=> b!962086 (= e!621329 call!60667)))

(declare-fun b!962087 () Bool)

(assert (=> b!962087 (= e!621328 e!621326)))

(assert (=> b!962087 (= c!156708 (is-Star!2672 r!15766))))

(declare-fun bm!60663 () Bool)

(assert (=> bm!60663 (= call!60668 call!60667)))

(declare-fun b!962088 () Bool)

(assert (=> b!962088 (= e!621326 e!621330)))

(assert (=> b!962088 (= c!156707 (is-Union!2672 r!15766))))

(declare-fun b!962089 () Bool)

(declare-fun res!437279 () Bool)

(assert (=> b!962089 (=> (not res!437279) (not e!621325))))

(assert (=> b!962089 (= res!437279 call!60668)))

(assert (=> b!962089 (= e!621330 e!621325)))

(declare-fun b!962090 () Bool)

(assert (=> b!962090 (= e!621324 call!60666)))

(assert (= (and d!285260 (not res!437280)) b!962087))

(assert (= (and b!962087 c!156708) b!962085))

(assert (= (and b!962087 (not c!156708)) b!962088))

(assert (= (and b!962085 res!437282) b!962086))

(assert (= (and b!962088 c!156707) b!962089))

(assert (= (and b!962088 (not c!156707)) b!962083))

(assert (= (and b!962089 res!437279) b!962082))

(assert (= (and b!962083 (not res!437281)) b!962084))

(assert (= (and b!962084 res!437283) b!962090))

(assert (= (or b!962082 b!962090) bm!60662))

(assert (= (or b!962089 b!962084) bm!60663))

(assert (= (or b!962086 bm!60663) bm!60661))

(declare-fun m!1169787 () Bool)

(assert (=> bm!60661 m!1169787))

(declare-fun m!1169789 () Bool)

(assert (=> bm!60662 m!1169789))

(assert (=> b!962085 m!1169771))

(assert (=> start!85652 d!285260))

(declare-fun d!285264 () Bool)

(assert (=> d!285264 (= (isDefined!1895 (findConcatSeparation!359 lt!346916 lt!346914 Nil!9886 s!10566 s!10566)) (not (isEmpty!6182 (findConcatSeparation!359 lt!346916 lt!346914 Nil!9886 s!10566 s!10566))))))

(declare-fun bs!240945 () Bool)

(assert (= bs!240945 d!285264))

(assert (=> bs!240945 m!1169607))

(declare-fun m!1169791 () Bool)

(assert (=> bs!240945 m!1169791))

(assert (=> b!961758 d!285264))

(declare-fun d!285266 () Bool)

(assert (=> d!285266 (= (isEmpty!6180 s!10566) (is-Nil!9886 s!10566))))

(assert (=> b!961758 d!285266))

(declare-fun bs!240946 () Bool)

(declare-fun d!285268 () Bool)

(assert (= bs!240946 (and d!285268 b!961758)))

(declare-fun lambda!33582 () Int)

(assert (=> bs!240946 (not (= lambda!33582 lambda!33550))))

(declare-fun bs!240947 () Bool)

(assert (= bs!240947 (and d!285268 d!285240)))

(assert (=> bs!240947 (not (= lambda!33582 lambda!33581))))

(assert (=> bs!240947 (= (and (= lt!346916 (reg!3001 r!15766)) (= (Star!2672 lt!346916) (Star!2672 (reg!3001 r!15766)))) (= lambda!33582 lambda!33580))))

(declare-fun bs!240948 () Bool)

(assert (= bs!240948 (and d!285268 d!285238)))

(assert (=> bs!240948 (= (and (= lt!346916 (reg!3001 r!15766)) (= (Star!2672 lt!346916) lt!346911)) (= lambda!33582 lambda!33575))))

(declare-fun bs!240949 () Bool)

(assert (= bs!240949 (and d!285268 b!961857)))

(assert (=> bs!240949 (not (= lambda!33582 lambda!33571))))

(declare-fun bs!240950 () Bool)

(assert (= bs!240950 (and d!285268 b!961855)))

(assert (=> bs!240950 (not (= lambda!33582 lambda!33572))))

(declare-fun bs!240951 () Bool)

(assert (= bs!240951 (and d!285268 b!961754)))

(assert (=> bs!240951 (= (and (= lt!346916 (reg!3001 r!15766)) (= (Star!2672 lt!346916) lt!346911)) (= lambda!33582 lambda!33547))))

(assert (=> bs!240946 (= (= (Star!2672 lt!346916) lt!346914) (= lambda!33582 lambda!33549))))

(assert (=> bs!240951 (not (= lambda!33582 lambda!33548))))

(assert (=> d!285268 true))

(assert (=> d!285268 true))

(declare-fun lambda!33583 () Int)

(assert (=> bs!240946 (= (= (Star!2672 lt!346916) lt!346914) (= lambda!33583 lambda!33550))))

(assert (=> bs!240947 (= (and (= lt!346916 (reg!3001 r!15766)) (= (Star!2672 lt!346916) (Star!2672 (reg!3001 r!15766)))) (= lambda!33583 lambda!33581))))

(assert (=> bs!240947 (not (= lambda!33583 lambda!33580))))

(assert (=> bs!240948 (not (= lambda!33583 lambda!33575))))

(assert (=> bs!240949 (= (and (= lt!346916 (reg!3001 r!15766)) (= (Star!2672 lt!346916) r!15766)) (= lambda!33583 lambda!33571))))

(assert (=> bs!240950 (not (= lambda!33583 lambda!33572))))

(declare-fun bs!240952 () Bool)

(assert (= bs!240952 d!285268))

(assert (=> bs!240952 (not (= lambda!33583 lambda!33582))))

(assert (=> bs!240951 (not (= lambda!33583 lambda!33547))))

(assert (=> bs!240946 (not (= lambda!33583 lambda!33549))))

(assert (=> bs!240951 (= (and (= lt!346916 (reg!3001 r!15766)) (= (Star!2672 lt!346916) lt!346911)) (= lambda!33583 lambda!33548))))

(assert (=> d!285268 true))

(assert (=> d!285268 true))

(assert (=> d!285268 (= (Exists!415 lambda!33582) (Exists!415 lambda!33583))))

(declare-fun lt!346989 () Unit!14999)

(assert (=> d!285268 (= lt!346989 (choose!6057 lt!346916 s!10566))))

(assert (=> d!285268 (validRegex!1141 lt!346916)))

(assert (=> d!285268 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!133 lt!346916 s!10566) lt!346989)))

(declare-fun m!1169793 () Bool)

(assert (=> bs!240952 m!1169793))

(declare-fun m!1169795 () Bool)

(assert (=> bs!240952 m!1169795))

(declare-fun m!1169797 () Bool)

(assert (=> bs!240952 m!1169797))

(declare-fun m!1169799 () Bool)

(assert (=> bs!240952 m!1169799))

(assert (=> b!961758 d!285268))

(declare-fun bs!240953 () Bool)

(declare-fun b!962094 () Bool)

(assert (= bs!240953 (and b!962094 b!961758)))

(declare-fun lambda!33584 () Int)

(assert (=> bs!240953 (= (= (reg!3001 lt!346914) lt!346916) (= lambda!33584 lambda!33550))))

(declare-fun bs!240954 () Bool)

(assert (= bs!240954 (and b!962094 d!285240)))

(assert (=> bs!240954 (not (= lambda!33584 lambda!33580))))

(declare-fun bs!240955 () Bool)

(assert (= bs!240955 (and b!962094 d!285238)))

(assert (=> bs!240955 (not (= lambda!33584 lambda!33575))))

(declare-fun bs!240956 () Bool)

(assert (= bs!240956 (and b!962094 b!961857)))

(assert (=> bs!240956 (= (and (= (reg!3001 lt!346914) (reg!3001 r!15766)) (= lt!346914 r!15766)) (= lambda!33584 lambda!33571))))

(declare-fun bs!240957 () Bool)

(assert (= bs!240957 (and b!962094 b!961855)))

(assert (=> bs!240957 (not (= lambda!33584 lambda!33572))))

(declare-fun bs!240958 () Bool)

(assert (= bs!240958 (and b!962094 d!285268)))

(assert (=> bs!240958 (not (= lambda!33584 lambda!33582))))

(declare-fun bs!240959 () Bool)

(assert (= bs!240959 (and b!962094 b!961754)))

(assert (=> bs!240959 (not (= lambda!33584 lambda!33547))))

(assert (=> bs!240953 (not (= lambda!33584 lambda!33549))))

(assert (=> bs!240959 (= (and (= (reg!3001 lt!346914) (reg!3001 r!15766)) (= lt!346914 lt!346911)) (= lambda!33584 lambda!33548))))

(assert (=> bs!240958 (= (and (= (reg!3001 lt!346914) lt!346916) (= lt!346914 (Star!2672 lt!346916))) (= lambda!33584 lambda!33583))))

(assert (=> bs!240954 (= (and (= (reg!3001 lt!346914) (reg!3001 r!15766)) (= lt!346914 (Star!2672 (reg!3001 r!15766)))) (= lambda!33584 lambda!33581))))

(assert (=> b!962094 true))

(assert (=> b!962094 true))

(declare-fun bs!240960 () Bool)

(declare-fun b!962092 () Bool)

(assert (= bs!240960 (and b!962092 d!285240)))

(declare-fun lambda!33585 () Int)

(assert (=> bs!240960 (not (= lambda!33585 lambda!33580))))

(declare-fun bs!240961 () Bool)

(assert (= bs!240961 (and b!962092 d!285238)))

(assert (=> bs!240961 (not (= lambda!33585 lambda!33575))))

(declare-fun bs!240962 () Bool)

(assert (= bs!240962 (and b!962092 b!961857)))

(assert (=> bs!240962 (not (= lambda!33585 lambda!33571))))

(declare-fun bs!240963 () Bool)

(assert (= bs!240963 (and b!962092 b!961855)))

(assert (=> bs!240963 (= (and (= (regOne!5856 lt!346914) (regOne!5856 r!15766)) (= (regTwo!5856 lt!346914) (regTwo!5856 r!15766))) (= lambda!33585 lambda!33572))))

(declare-fun bs!240964 () Bool)

(assert (= bs!240964 (and b!962092 d!285268)))

(assert (=> bs!240964 (not (= lambda!33585 lambda!33582))))

(declare-fun bs!240965 () Bool)

(assert (= bs!240965 (and b!962092 b!961754)))

(assert (=> bs!240965 (not (= lambda!33585 lambda!33547))))

(declare-fun bs!240966 () Bool)

(assert (= bs!240966 (and b!962092 b!962094)))

(assert (=> bs!240966 (not (= lambda!33585 lambda!33584))))

(declare-fun bs!240967 () Bool)

(assert (= bs!240967 (and b!962092 b!961758)))

(assert (=> bs!240967 (not (= lambda!33585 lambda!33550))))

(assert (=> bs!240967 (not (= lambda!33585 lambda!33549))))

(assert (=> bs!240965 (not (= lambda!33585 lambda!33548))))

(assert (=> bs!240964 (not (= lambda!33585 lambda!33583))))

(assert (=> bs!240960 (not (= lambda!33585 lambda!33581))))

(assert (=> b!962092 true))

(assert (=> b!962092 true))

(declare-fun call!60669 () Bool)

(declare-fun c!156709 () Bool)

(declare-fun bm!60664 () Bool)

(assert (=> bm!60664 (= call!60669 (Exists!415 (ite c!156709 lambda!33584 lambda!33585)))))

(declare-fun bm!60665 () Bool)

(declare-fun call!60670 () Bool)

(assert (=> bm!60665 (= call!60670 (isEmpty!6180 s!10566))))

(declare-fun b!962091 () Bool)

(declare-fun e!621331 () Bool)

(declare-fun e!621333 () Bool)

(assert (=> b!962091 (= e!621331 e!621333)))

(declare-fun res!437284 () Bool)

(assert (=> b!962091 (= res!437284 (not (is-EmptyLang!2672 lt!346914)))))

(assert (=> b!962091 (=> (not res!437284) (not e!621333))))

(declare-fun e!621332 () Bool)

(assert (=> b!962092 (= e!621332 call!60669)))

(declare-fun b!962093 () Bool)

(declare-fun c!156710 () Bool)

(assert (=> b!962093 (= c!156710 (is-Union!2672 lt!346914))))

(declare-fun e!621335 () Bool)

(declare-fun e!621337 () Bool)

(assert (=> b!962093 (= e!621335 e!621337)))

(declare-fun e!621334 () Bool)

(assert (=> b!962094 (= e!621334 call!60669)))

(declare-fun d!285270 () Bool)

(declare-fun c!156711 () Bool)

(assert (=> d!285270 (= c!156711 (is-EmptyExpr!2672 lt!346914))))

(assert (=> d!285270 (= (matchRSpec!473 lt!346914 s!10566) e!621331)))

(declare-fun b!962095 () Bool)

(assert (=> b!962095 (= e!621331 call!60670)))

(declare-fun b!962096 () Bool)

(declare-fun c!156712 () Bool)

(assert (=> b!962096 (= c!156712 (is-ElementMatch!2672 lt!346914))))

(assert (=> b!962096 (= e!621333 e!621335)))

(declare-fun b!962097 () Bool)

(declare-fun res!437286 () Bool)

(assert (=> b!962097 (=> res!437286 e!621334)))

(assert (=> b!962097 (= res!437286 call!60670)))

(assert (=> b!962097 (= e!621332 e!621334)))

(declare-fun b!962098 () Bool)

(declare-fun e!621336 () Bool)

(assert (=> b!962098 (= e!621337 e!621336)))

(declare-fun res!437285 () Bool)

(assert (=> b!962098 (= res!437285 (matchRSpec!473 (regOne!5857 lt!346914) s!10566))))

(assert (=> b!962098 (=> res!437285 e!621336)))

(declare-fun b!962099 () Bool)

(assert (=> b!962099 (= e!621336 (matchRSpec!473 (regTwo!5857 lt!346914) s!10566))))

(declare-fun b!962100 () Bool)

(assert (=> b!962100 (= e!621335 (= s!10566 (Cons!9886 (c!156641 lt!346914) Nil!9886)))))

(declare-fun b!962101 () Bool)

(assert (=> b!962101 (= e!621337 e!621332)))

(assert (=> b!962101 (= c!156709 (is-Star!2672 lt!346914))))

(assert (= (and d!285270 c!156711) b!962095))

(assert (= (and d!285270 (not c!156711)) b!962091))

(assert (= (and b!962091 res!437284) b!962096))

(assert (= (and b!962096 c!156712) b!962100))

(assert (= (and b!962096 (not c!156712)) b!962093))

(assert (= (and b!962093 c!156710) b!962098))

(assert (= (and b!962093 (not c!156710)) b!962101))

(assert (= (and b!962098 (not res!437285)) b!962099))

(assert (= (and b!962101 c!156709) b!962097))

(assert (= (and b!962101 (not c!156709)) b!962092))

(assert (= (and b!962097 (not res!437286)) b!962094))

(assert (= (or b!962094 b!962092) bm!60664))

(assert (= (or b!962095 b!962097) bm!60665))

(declare-fun m!1169801 () Bool)

(assert (=> bm!60664 m!1169801))

(assert (=> bm!60665 m!1169615))

(declare-fun m!1169803 () Bool)

(assert (=> b!962098 m!1169803))

(declare-fun m!1169805 () Bool)

(assert (=> b!962099 m!1169805))

(assert (=> b!961758 d!285270))

(declare-fun d!285272 () Bool)

(assert (=> d!285272 (= (Exists!415 lambda!33549) (choose!6058 lambda!33549))))

(declare-fun bs!240968 () Bool)

(assert (= bs!240968 d!285272))

(declare-fun m!1169807 () Bool)

(assert (=> bs!240968 m!1169807))

(assert (=> b!961758 d!285272))

(declare-fun d!285274 () Bool)

(assert (=> d!285274 (= (Exists!415 lambda!33550) (choose!6058 lambda!33550))))

(declare-fun bs!240969 () Bool)

(assert (= bs!240969 d!285274))

(declare-fun m!1169809 () Bool)

(assert (=> bs!240969 m!1169809))

(assert (=> b!961758 d!285274))

(declare-fun b!962102 () Bool)

(declare-fun e!621341 () Bool)

(declare-fun lt!346992 () Option!2253)

(assert (=> b!962102 (= e!621341 (not (isDefined!1895 lt!346992)))))

(declare-fun b!962103 () Bool)

(declare-fun res!437289 () Bool)

(declare-fun e!621342 () Bool)

(assert (=> b!962103 (=> (not res!437289) (not e!621342))))

(assert (=> b!962103 (= res!437289 (matchR!1210 lt!346916 (_1!6437 (get!3373 lt!346992))))))

(declare-fun b!962104 () Bool)

(declare-fun e!621340 () Option!2253)

(assert (=> b!962104 (= e!621340 None!2252)))

(declare-fun b!962105 () Bool)

(declare-fun res!437287 () Bool)

(assert (=> b!962105 (=> (not res!437287) (not e!621342))))

(assert (=> b!962105 (= res!437287 (matchR!1210 lt!346914 (_2!6437 (get!3373 lt!346992))))))

(declare-fun b!962106 () Bool)

(declare-fun e!621338 () Option!2253)

(assert (=> b!962106 (= e!621338 (Some!2252 (tuple2!11223 Nil!9886 s!10566)))))

(declare-fun b!962108 () Bool)

(declare-fun e!621339 () Bool)

(assert (=> b!962108 (= e!621339 (matchR!1210 lt!346914 s!10566))))

(declare-fun b!962109 () Bool)

(declare-fun lt!346991 () Unit!14999)

(declare-fun lt!346990 () Unit!14999)

(assert (=> b!962109 (= lt!346991 lt!346990)))

(assert (=> b!962109 (= (++!2662 (++!2662 Nil!9886 (Cons!9886 (h!15287 s!10566) Nil!9886)) (t!100948 s!10566)) s!10566)))

(assert (=> b!962109 (= lt!346990 (lemmaMoveElementToOtherListKeepsConcatEq!267 Nil!9886 (h!15287 s!10566) (t!100948 s!10566) s!10566))))

(assert (=> b!962109 (= e!621340 (findConcatSeparation!359 lt!346916 lt!346914 (++!2662 Nil!9886 (Cons!9886 (h!15287 s!10566) Nil!9886)) (t!100948 s!10566) s!10566))))

(declare-fun b!962110 () Bool)

(assert (=> b!962110 (= e!621342 (= (++!2662 (_1!6437 (get!3373 lt!346992)) (_2!6437 (get!3373 lt!346992))) s!10566))))

(declare-fun b!962107 () Bool)

(assert (=> b!962107 (= e!621338 e!621340)))

(declare-fun c!156713 () Bool)

(assert (=> b!962107 (= c!156713 (is-Nil!9886 s!10566))))

(declare-fun d!285276 () Bool)

(assert (=> d!285276 e!621341))

(declare-fun res!437290 () Bool)

(assert (=> d!285276 (=> res!437290 e!621341)))

(assert (=> d!285276 (= res!437290 e!621342)))

(declare-fun res!437291 () Bool)

(assert (=> d!285276 (=> (not res!437291) (not e!621342))))

(assert (=> d!285276 (= res!437291 (isDefined!1895 lt!346992))))

(assert (=> d!285276 (= lt!346992 e!621338)))

(declare-fun c!156714 () Bool)

(assert (=> d!285276 (= c!156714 e!621339)))

(declare-fun res!437288 () Bool)

(assert (=> d!285276 (=> (not res!437288) (not e!621339))))

(assert (=> d!285276 (= res!437288 (matchR!1210 lt!346916 Nil!9886))))

(assert (=> d!285276 (validRegex!1141 lt!346916)))

(assert (=> d!285276 (= (findConcatSeparation!359 lt!346916 lt!346914 Nil!9886 s!10566 s!10566) lt!346992)))

(assert (= (and d!285276 res!437288) b!962108))

(assert (= (and d!285276 c!156714) b!962106))

(assert (= (and d!285276 (not c!156714)) b!962107))

(assert (= (and b!962107 c!156713) b!962104))

(assert (= (and b!962107 (not c!156713)) b!962109))

(assert (= (and d!285276 res!437291) b!962103))

(assert (= (and b!962103 res!437289) b!962105))

(assert (= (and b!962105 res!437287) b!962110))

(assert (= (and d!285276 (not res!437290)) b!962102))

(declare-fun m!1169811 () Bool)

(assert (=> b!962102 m!1169811))

(assert (=> d!285276 m!1169811))

(declare-fun m!1169813 () Bool)

(assert (=> d!285276 m!1169813))

(assert (=> d!285276 m!1169799))

(declare-fun m!1169815 () Bool)

(assert (=> b!962103 m!1169815))

(declare-fun m!1169817 () Bool)

(assert (=> b!962103 m!1169817))

(assert (=> b!962110 m!1169815))

(declare-fun m!1169819 () Bool)

(assert (=> b!962110 m!1169819))

(assert (=> b!962105 m!1169815))

(declare-fun m!1169821 () Bool)

(assert (=> b!962105 m!1169821))

(assert (=> b!962108 m!1169593))

(assert (=> b!962109 m!1169741))

(assert (=> b!962109 m!1169741))

(assert (=> b!962109 m!1169743))

(assert (=> b!962109 m!1169745))

(assert (=> b!962109 m!1169741))

(declare-fun m!1169823 () Bool)

(assert (=> b!962109 m!1169823))

(assert (=> b!961758 d!285276))

(declare-fun d!285278 () Bool)

(assert (=> d!285278 (= (matchR!1210 lt!346914 s!10566) (matchRSpec!473 lt!346914 s!10566))))

(declare-fun lt!346993 () Unit!14999)

(assert (=> d!285278 (= lt!346993 (choose!6055 lt!346914 s!10566))))

(assert (=> d!285278 (validRegex!1141 lt!346914)))

(assert (=> d!285278 (= (mainMatchTheorem!473 lt!346914 s!10566) lt!346993)))

(declare-fun bs!240970 () Bool)

(assert (= bs!240970 d!285278))

(assert (=> bs!240970 m!1169593))

(assert (=> bs!240970 m!1169619))

(declare-fun m!1169825 () Bool)

(assert (=> bs!240970 m!1169825))

(assert (=> bs!240970 m!1169757))

(assert (=> b!961758 d!285278))

(declare-fun bs!240971 () Bool)

(declare-fun d!285280 () Bool)

(assert (= bs!240971 (and d!285280 d!285240)))

(declare-fun lambda!33586 () Int)

(assert (=> bs!240971 (= (and (= lt!346916 (reg!3001 r!15766)) (= lt!346914 (Star!2672 (reg!3001 r!15766)))) (= lambda!33586 lambda!33580))))

(declare-fun bs!240972 () Bool)

(assert (= bs!240972 (and d!285280 d!285238)))

(assert (=> bs!240972 (= (and (= lt!346916 (reg!3001 r!15766)) (= lt!346914 lt!346911)) (= lambda!33586 lambda!33575))))

(declare-fun bs!240973 () Bool)

(assert (= bs!240973 (and d!285280 b!961857)))

(assert (=> bs!240973 (not (= lambda!33586 lambda!33571))))

(declare-fun bs!240974 () Bool)

(assert (= bs!240974 (and d!285280 b!961855)))

(assert (=> bs!240974 (not (= lambda!33586 lambda!33572))))

(declare-fun bs!240975 () Bool)

(assert (= bs!240975 (and d!285280 d!285268)))

(assert (=> bs!240975 (= (= lt!346914 (Star!2672 lt!346916)) (= lambda!33586 lambda!33582))))

(declare-fun bs!240976 () Bool)

(assert (= bs!240976 (and d!285280 b!961754)))

(assert (=> bs!240976 (= (and (= lt!346916 (reg!3001 r!15766)) (= lt!346914 lt!346911)) (= lambda!33586 lambda!33547))))

(declare-fun bs!240977 () Bool)

(assert (= bs!240977 (and d!285280 b!962094)))

(assert (=> bs!240977 (not (= lambda!33586 lambda!33584))))

(declare-fun bs!240978 () Bool)

(assert (= bs!240978 (and d!285280 b!961758)))

(assert (=> bs!240978 (not (= lambda!33586 lambda!33550))))

(declare-fun bs!240979 () Bool)

(assert (= bs!240979 (and d!285280 b!962092)))

(assert (=> bs!240979 (not (= lambda!33586 lambda!33585))))

(assert (=> bs!240978 (= lambda!33586 lambda!33549)))

(assert (=> bs!240976 (not (= lambda!33586 lambda!33548))))

(assert (=> bs!240975 (not (= lambda!33586 lambda!33583))))

(assert (=> bs!240971 (not (= lambda!33586 lambda!33581))))

(assert (=> d!285280 true))

(assert (=> d!285280 true))

(assert (=> d!285280 true))

(assert (=> d!285280 (= (isDefined!1895 (findConcatSeparation!359 lt!346916 lt!346914 Nil!9886 s!10566 s!10566)) (Exists!415 lambda!33586))))

(declare-fun lt!346994 () Unit!14999)

(assert (=> d!285280 (= lt!346994 (choose!6056 lt!346916 lt!346914 s!10566))))

(assert (=> d!285280 (validRegex!1141 lt!346916)))

(assert (=> d!285280 (= (lemmaFindConcatSeparationEquivalentToExists!359 lt!346916 lt!346914 s!10566) lt!346994)))

(declare-fun bs!240980 () Bool)

(assert (= bs!240980 d!285280))

(assert (=> bs!240980 m!1169607))

(assert (=> bs!240980 m!1169609))

(declare-fun m!1169827 () Bool)

(assert (=> bs!240980 m!1169827))

(assert (=> bs!240980 m!1169607))

(declare-fun m!1169829 () Bool)

(assert (=> bs!240980 m!1169829))

(assert (=> bs!240980 m!1169799))

(assert (=> b!961758 d!285280))

(declare-fun b!962124 () Bool)

(declare-fun e!621347 () Bool)

(declare-fun tp!295683 () Bool)

(declare-fun tp!295682 () Bool)

(assert (=> b!962124 (= e!621347 (and tp!295683 tp!295682))))

(declare-fun b!962122 () Bool)

(declare-fun tp!295680 () Bool)

(declare-fun tp!295681 () Bool)

(assert (=> b!962122 (= e!621347 (and tp!295680 tp!295681))))

(declare-fun b!962123 () Bool)

(declare-fun tp!295679 () Bool)

(assert (=> b!962123 (= e!621347 tp!295679)))

(declare-fun b!962121 () Bool)

(assert (=> b!962121 (= e!621347 tp_is_empty!4987)))

(assert (=> b!961752 (= tp!295649 e!621347)))

(assert (= (and b!961752 (is-ElementMatch!2672 (reg!3001 r!15766))) b!962121))

(assert (= (and b!961752 (is-Concat!4505 (reg!3001 r!15766))) b!962122))

(assert (= (and b!961752 (is-Star!2672 (reg!3001 r!15766))) b!962123))

(assert (= (and b!961752 (is-Union!2672 (reg!3001 r!15766))) b!962124))

(declare-fun b!962132 () Bool)

(declare-fun e!621348 () Bool)

(declare-fun tp!295688 () Bool)

(declare-fun tp!295687 () Bool)

(assert (=> b!962132 (= e!621348 (and tp!295688 tp!295687))))

(declare-fun b!962130 () Bool)

(declare-fun tp!295685 () Bool)

(declare-fun tp!295686 () Bool)

(assert (=> b!962130 (= e!621348 (and tp!295685 tp!295686))))

(declare-fun b!962131 () Bool)

(declare-fun tp!295684 () Bool)

(assert (=> b!962131 (= e!621348 tp!295684)))

(declare-fun b!962129 () Bool)

(assert (=> b!962129 (= e!621348 tp_is_empty!4987)))

(assert (=> b!961751 (= tp!295647 e!621348)))

(assert (= (and b!961751 (is-ElementMatch!2672 (regOne!5857 r!15766))) b!962129))

(assert (= (and b!961751 (is-Concat!4505 (regOne!5857 r!15766))) b!962130))

(assert (= (and b!961751 (is-Star!2672 (regOne!5857 r!15766))) b!962131))

(assert (= (and b!961751 (is-Union!2672 (regOne!5857 r!15766))) b!962132))

(declare-fun b!962136 () Bool)

(declare-fun e!621349 () Bool)

(declare-fun tp!295693 () Bool)

(declare-fun tp!295692 () Bool)

(assert (=> b!962136 (= e!621349 (and tp!295693 tp!295692))))

(declare-fun b!962134 () Bool)

(declare-fun tp!295690 () Bool)

(declare-fun tp!295691 () Bool)

(assert (=> b!962134 (= e!621349 (and tp!295690 tp!295691))))

(declare-fun b!962135 () Bool)

(declare-fun tp!295689 () Bool)

(assert (=> b!962135 (= e!621349 tp!295689)))

(declare-fun b!962133 () Bool)

(assert (=> b!962133 (= e!621349 tp_is_empty!4987)))

(assert (=> b!961751 (= tp!295650 e!621349)))

(assert (= (and b!961751 (is-ElementMatch!2672 (regTwo!5857 r!15766))) b!962133))

(assert (= (and b!961751 (is-Concat!4505 (regTwo!5857 r!15766))) b!962134))

(assert (= (and b!961751 (is-Star!2672 (regTwo!5857 r!15766))) b!962135))

(assert (= (and b!961751 (is-Union!2672 (regTwo!5857 r!15766))) b!962136))

(declare-fun b!962141 () Bool)

(declare-fun e!621352 () Bool)

(declare-fun tp!295696 () Bool)

(assert (=> b!962141 (= e!621352 (and tp_is_empty!4987 tp!295696))))

(assert (=> b!961750 (= tp!295646 e!621352)))

(assert (= (and b!961750 (is-Cons!9886 (t!100948 s!10566))) b!962141))

(declare-fun b!962145 () Bool)

(declare-fun e!621353 () Bool)

(declare-fun tp!295701 () Bool)

(declare-fun tp!295700 () Bool)

(assert (=> b!962145 (= e!621353 (and tp!295701 tp!295700))))

(declare-fun b!962143 () Bool)

(declare-fun tp!295698 () Bool)

(declare-fun tp!295699 () Bool)

(assert (=> b!962143 (= e!621353 (and tp!295698 tp!295699))))

(declare-fun b!962144 () Bool)

(declare-fun tp!295697 () Bool)

(assert (=> b!962144 (= e!621353 tp!295697)))

(declare-fun b!962142 () Bool)

(assert (=> b!962142 (= e!621353 tp_is_empty!4987)))

(assert (=> b!961755 (= tp!295648 e!621353)))

(assert (= (and b!961755 (is-ElementMatch!2672 (regOne!5856 r!15766))) b!962142))

(assert (= (and b!961755 (is-Concat!4505 (regOne!5856 r!15766))) b!962143))

(assert (= (and b!961755 (is-Star!2672 (regOne!5856 r!15766))) b!962144))

(assert (= (and b!961755 (is-Union!2672 (regOne!5856 r!15766))) b!962145))

(declare-fun b!962149 () Bool)

(declare-fun e!621354 () Bool)

(declare-fun tp!295706 () Bool)

(declare-fun tp!295705 () Bool)

(assert (=> b!962149 (= e!621354 (and tp!295706 tp!295705))))

(declare-fun b!962147 () Bool)

(declare-fun tp!295703 () Bool)

(declare-fun tp!295704 () Bool)

(assert (=> b!962147 (= e!621354 (and tp!295703 tp!295704))))

(declare-fun b!962148 () Bool)

(declare-fun tp!295702 () Bool)

(assert (=> b!962148 (= e!621354 tp!295702)))

(declare-fun b!962146 () Bool)

(assert (=> b!962146 (= e!621354 tp_is_empty!4987)))

(assert (=> b!961755 (= tp!295645 e!621354)))

(assert (= (and b!961755 (is-ElementMatch!2672 (regTwo!5856 r!15766))) b!962146))

(assert (= (and b!961755 (is-Concat!4505 (regTwo!5856 r!15766))) b!962147))

(assert (= (and b!961755 (is-Star!2672 (regTwo!5856 r!15766))) b!962148))

(assert (= (and b!961755 (is-Union!2672 (regTwo!5856 r!15766))) b!962149))

(push 1)

(assert (not d!285256))

(assert (not b!961978))

(assert (not d!285274))

(assert (not d!285254))

(assert (not bm!60662))

(assert (not d!285278))

(assert (not b!961983))

(assert (not d!285272))

(assert (not b!961974))

(assert (not b!962098))

(assert (not b!961980))

(assert (not b!962132))

(assert (not b!961905))

(assert (not d!285240))

(assert (not d!285276))

(assert tp_is_empty!4987)

(assert (not d!285230))

(assert (not b!961901))

(assert (not d!285236))

(assert (not bm!60635))

(assert (not b!962110))

(assert (not b!961896))

(assert (not b!962105))

(assert (not b!962136))

(assert (not d!285268))

(assert (not bm!60636))

(assert (not b!961969))

(assert (not b!961981))

(assert (not b!962048))

(assert (not b!962145))

(assert (not b!962099))

(assert (not b!962108))

(assert (not d!285280))

(assert (not d!285238))

(assert (not bm!60664))

(assert (not bm!60649))

(assert (not b!961899))

(assert (not b!961967))

(assert (not bm!60661))

(assert (not b!962144))

(assert (not b!962122))

(assert (not b!962134))

(assert (not d!285242))

(assert (not b!962130))

(assert (not bm!60632))

(assert (not b!961977))

(assert (not b!962141))

(assert (not d!285264))

(assert (not bm!60652))

(assert (not d!285258))

(assert (not b!961973))

(assert (not b!962085))

(assert (not b!962149))

(assert (not d!285250))

(assert (not b!962123))

(assert (not b!961987))

(assert (not b!962131))

(assert (not b!962135))

(assert (not d!285252))

(assert (not b!961895))

(assert (not b!962103))

(assert (not b!962143))

(assert (not b!961862))

(assert (not b!961861))

(assert (not b!962109))

(assert (not b!961898))

(assert (not b!962124))

(assert (not b!962148))

(assert (not bm!60631))

(assert (not b!962147))

(assert (not b!961972))

(assert (not b!961966))

(assert (not b!962102))

(assert (not bm!60665))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

