; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726502 () Bool)

(assert start!726502)

(declare-fun b!7505564 () Bool)

(declare-fun e!4475218 () Bool)

(declare-fun e!4475220 () Bool)

(assert (=> b!7505564 (= e!4475218 e!4475220)))

(declare-fun res!3011165 () Bool)

(assert (=> b!7505564 (=> (not res!3011165) (not e!4475220))))

(declare-fun testedPSize!164 () Int)

(declare-fun lt!2634631 () Int)

(assert (=> b!7505564 (= res!3011165 (= testedPSize!164 lt!2634631))))

(declare-datatypes ((C!39732 0))(
  ( (C!39733 (val!30264 Int)) )
))
(declare-datatypes ((List!72501 0))(
  ( (Nil!72377) (Cons!72377 (h!78825 C!39732) (t!387070 List!72501)) )
))
(declare-fun testedP!204 () List!72501)

(declare-fun size!42274 (List!72501) Int)

(assert (=> b!7505564 (= lt!2634631 (size!42274 testedP!204))))

(declare-fun b!7505565 () Bool)

(declare-fun res!3011171 () Bool)

(declare-fun e!4475216 () Bool)

(assert (=> b!7505565 (=> res!3011171 e!4475216)))

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7505565 (= res!3011171 (not (= testedPSize!164 totalInputSize!226)))))

(declare-fun res!3011167 () Bool)

(assert (=> start!726502 (=> (not res!3011167) (not e!4475218))))

(declare-fun lt!2634628 () List!72501)

(declare-fun totalInput!779 () List!72501)

(assert (=> start!726502 (= res!3011167 (= lt!2634628 totalInput!779))))

(declare-fun testedSuffix!164 () List!72501)

(declare-fun ++!17332 (List!72501 List!72501) List!72501)

(assert (=> start!726502 (= lt!2634628 (++!17332 testedP!204 testedSuffix!164))))

(assert (=> start!726502 e!4475218))

(declare-fun e!4475213 () Bool)

(assert (=> start!726502 e!4475213))

(assert (=> start!726502 true))

(declare-fun e!4475217 () Bool)

(assert (=> start!726502 e!4475217))

(declare-fun e!4475219 () Bool)

(assert (=> start!726502 e!4475219))

(declare-fun condSetEmpty!56988 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19703 0))(
  ( (ElementMatch!19703 (c!1385628 C!39732)) (Concat!28548 (regOne!39918 Regex!19703) (regTwo!39918 Regex!19703)) (EmptyExpr!19703) (Star!19703 (reg!20032 Regex!19703)) (EmptyLang!19703) (Union!19703 (regOne!39919 Regex!19703) (regTwo!39919 Regex!19703)) )
))
(declare-datatypes ((List!72502 0))(
  ( (Nil!72378) (Cons!72378 (h!78826 Regex!19703) (t!387071 List!72502)) )
))
(declare-datatypes ((Context!16910 0))(
  ( (Context!16911 (exprs!8955 List!72502)) )
))
(declare-fun z!3716 () (InoxSet Context!16910))

(assert (=> start!726502 (= condSetEmpty!56988 (= z!3716 ((as const (Array Context!16910 Bool)) false)))))

(declare-fun setRes!56988 () Bool)

(assert (=> start!726502 setRes!56988))

(declare-fun b!7505566 () Bool)

(declare-fun e!4475222 () Bool)

(declare-fun tp!2178721 () Bool)

(assert (=> b!7505566 (= e!4475222 tp!2178721)))

(declare-fun b!7505567 () Bool)

(declare-fun e!4475215 () Bool)

(declare-fun e!4475212 () Bool)

(assert (=> b!7505567 (= e!4475215 e!4475212)))

(declare-fun res!3011174 () Bool)

(assert (=> b!7505567 (=> (not res!3011174) (not e!4475212))))

(assert (=> b!7505567 (= res!3011174 (= (++!17332 Nil!72377 totalInput!779) totalInput!779))))

(declare-fun b!7505568 () Bool)

(declare-fun res!3011169 () Bool)

(assert (=> b!7505568 (=> (not res!3011169) (not e!4475220))))

(assert (=> b!7505568 (= res!3011169 (= totalInputSize!226 (size!42274 totalInput!779)))))

(declare-fun setIsEmpty!56988 () Bool)

(assert (=> setIsEmpty!56988 setRes!56988))

(declare-fun b!7505569 () Bool)

(declare-fun tp_is_empty!49747 () Bool)

(declare-fun tp!2178719 () Bool)

(assert (=> b!7505569 (= e!4475213 (and tp_is_empty!49747 tp!2178719))))

(declare-fun b!7505570 () Bool)

(declare-fun e!4475221 () Bool)

(assert (=> b!7505570 (= e!4475221 e!4475216)))

(declare-fun res!3011173 () Bool)

(assert (=> b!7505570 (=> res!3011173 e!4475216)))

(declare-fun lostCauseZipper!1391 ((InoxSet Context!16910)) Bool)

(assert (=> b!7505570 (= res!3011173 (lostCauseZipper!1391 z!3716))))

(declare-fun lt!2634632 () List!72501)

(assert (=> b!7505570 (and (= testedSuffix!164 lt!2634632) (= lt!2634632 testedSuffix!164))))

(declare-datatypes ((Unit!166364 0))(
  ( (Unit!166365) )
))
(declare-fun lt!2634630 () Unit!166364)

(declare-fun lemmaSamePrefixThenSameSuffix!2796 (List!72501 List!72501 List!72501 List!72501 List!72501) Unit!166364)

(assert (=> b!7505570 (= lt!2634630 (lemmaSamePrefixThenSameSuffix!2796 testedP!204 testedSuffix!164 testedP!204 lt!2634632 totalInput!779))))

(declare-fun getSuffix!3497 (List!72501 List!72501) List!72501)

(assert (=> b!7505570 (= lt!2634632 (getSuffix!3497 totalInput!779 testedP!204))))

(declare-fun b!7505571 () Bool)

(declare-fun e!4475214 () Bool)

(assert (=> b!7505571 (= e!4475212 e!4475214)))

(declare-fun res!3011168 () Bool)

(assert (=> b!7505571 (=> res!3011168 e!4475214)))

(assert (=> b!7505571 (= res!3011168 true)))

(declare-fun b!7505572 () Bool)

(declare-fun res!3011166 () Bool)

(assert (=> b!7505572 (=> res!3011166 e!4475215)))

(declare-fun nullableZipper!3175 ((InoxSet Context!16910)) Bool)

(assert (=> b!7505572 (= res!3011166 (nullableZipper!3175 z!3716))))

(declare-fun b!7505573 () Bool)

(assert (=> b!7505573 (= e!4475214 (>= (size!42274 Nil!72377) lt!2634631))))

(declare-fun setElem!56988 () Context!16910)

(declare-fun setNonEmpty!56988 () Bool)

(declare-fun tp!2178723 () Bool)

(declare-fun inv!92487 (Context!16910) Bool)

(assert (=> setNonEmpty!56988 (= setRes!56988 (and tp!2178723 (inv!92487 setElem!56988) e!4475222))))

(declare-fun setRest!56988 () (InoxSet Context!16910))

(assert (=> setNonEmpty!56988 (= z!3716 ((_ map or) (store ((as const (Array Context!16910 Bool)) false) setElem!56988 true) setRest!56988))))

(declare-fun b!7505574 () Bool)

(assert (=> b!7505574 (= e!4475220 (not e!4475221))))

(declare-fun res!3011170 () Bool)

(assert (=> b!7505574 (=> res!3011170 e!4475221)))

(declare-fun isPrefix!5997 (List!72501 List!72501) Bool)

(assert (=> b!7505574 (= res!3011170 (not (isPrefix!5997 testedP!204 totalInput!779)))))

(assert (=> b!7505574 (isPrefix!5997 testedP!204 lt!2634628)))

(declare-fun lt!2634633 () Unit!166364)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3710 (List!72501 List!72501) Unit!166364)

(assert (=> b!7505574 (= lt!2634633 (lemmaConcatTwoListThenFirstIsPrefix!3710 testedP!204 testedSuffix!164))))

(declare-fun b!7505575 () Bool)

(assert (=> b!7505575 (= e!4475216 e!4475215)))

(declare-fun res!3011172 () Bool)

(assert (=> b!7505575 (=> res!3011172 e!4475215)))

(assert (=> b!7505575 (= res!3011172 (not (= testedP!204 totalInput!779)))))

(assert (=> b!7505575 (= totalInput!779 testedP!204)))

(declare-fun lt!2634634 () Unit!166364)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1488 (List!72501 List!72501 List!72501) Unit!166364)

(assert (=> b!7505575 (= lt!2634634 (lemmaIsPrefixSameLengthThenSameList!1488 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7505575 (isPrefix!5997 totalInput!779 totalInput!779)))

(declare-fun lt!2634629 () Unit!166364)

(declare-fun lemmaIsPrefixRefl!3836 (List!72501 List!72501) Unit!166364)

(assert (=> b!7505575 (= lt!2634629 (lemmaIsPrefixRefl!3836 totalInput!779 totalInput!779))))

(declare-fun b!7505576 () Bool)

(declare-fun tp!2178722 () Bool)

(assert (=> b!7505576 (= e!4475217 (and tp_is_empty!49747 tp!2178722))))

(declare-fun b!7505577 () Bool)

(declare-fun tp!2178720 () Bool)

(assert (=> b!7505577 (= e!4475219 (and tp_is_empty!49747 tp!2178720))))

(assert (= (and start!726502 res!3011167) b!7505564))

(assert (= (and b!7505564 res!3011165) b!7505568))

(assert (= (and b!7505568 res!3011169) b!7505574))

(assert (= (and b!7505574 (not res!3011170)) b!7505570))

(assert (= (and b!7505570 (not res!3011173)) b!7505565))

(assert (= (and b!7505565 (not res!3011171)) b!7505575))

(assert (= (and b!7505575 (not res!3011172)) b!7505572))

(assert (= (and b!7505572 (not res!3011166)) b!7505567))

(assert (= (and b!7505567 res!3011174) b!7505571))

(assert (= (and b!7505571 (not res!3011168)) b!7505573))

(get-info :version)

(assert (= (and start!726502 ((_ is Cons!72377) testedSuffix!164)) b!7505569))

(assert (= (and start!726502 ((_ is Cons!72377) totalInput!779)) b!7505576))

(assert (= (and start!726502 ((_ is Cons!72377) testedP!204)) b!7505577))

(assert (= (and start!726502 condSetEmpty!56988) setIsEmpty!56988))

(assert (= (and start!726502 (not condSetEmpty!56988)) setNonEmpty!56988))

(assert (= setNonEmpty!56988 b!7505566))

(declare-fun m!8087778 () Bool)

(assert (=> b!7505574 m!8087778))

(declare-fun m!8087780 () Bool)

(assert (=> b!7505574 m!8087780))

(declare-fun m!8087782 () Bool)

(assert (=> b!7505574 m!8087782))

(declare-fun m!8087784 () Bool)

(assert (=> start!726502 m!8087784))

(declare-fun m!8087786 () Bool)

(assert (=> b!7505572 m!8087786))

(declare-fun m!8087788 () Bool)

(assert (=> setNonEmpty!56988 m!8087788))

(declare-fun m!8087790 () Bool)

(assert (=> b!7505570 m!8087790))

(declare-fun m!8087792 () Bool)

(assert (=> b!7505570 m!8087792))

(declare-fun m!8087794 () Bool)

(assert (=> b!7505570 m!8087794))

(declare-fun m!8087796 () Bool)

(assert (=> b!7505573 m!8087796))

(declare-fun m!8087798 () Bool)

(assert (=> b!7505575 m!8087798))

(declare-fun m!8087800 () Bool)

(assert (=> b!7505575 m!8087800))

(declare-fun m!8087802 () Bool)

(assert (=> b!7505575 m!8087802))

(declare-fun m!8087804 () Bool)

(assert (=> b!7505567 m!8087804))

(declare-fun m!8087806 () Bool)

(assert (=> b!7505564 m!8087806))

(declare-fun m!8087808 () Bool)

(assert (=> b!7505568 m!8087808))

(check-sat (not b!7505569) (not b!7505576) (not setNonEmpty!56988) (not b!7505568) (not b!7505575) (not b!7505567) (not b!7505570) (not b!7505572) tp_is_empty!49747 (not b!7505573) (not b!7505577) (not b!7505564) (not b!7505574) (not b!7505566) (not start!726502))
(check-sat)
(get-model)

(declare-fun d!2303918 () Bool)

(assert (=> d!2303918 (= totalInput!779 testedP!204)))

(declare-fun lt!2634637 () Unit!166364)

(declare-fun choose!58098 (List!72501 List!72501 List!72501) Unit!166364)

(assert (=> d!2303918 (= lt!2634637 (choose!58098 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2303918 (isPrefix!5997 totalInput!779 totalInput!779)))

(assert (=> d!2303918 (= (lemmaIsPrefixSameLengthThenSameList!1488 totalInput!779 testedP!204 totalInput!779) lt!2634637)))

(declare-fun bs!1938108 () Bool)

(assert (= bs!1938108 d!2303918))

(declare-fun m!8087810 () Bool)

(assert (=> bs!1938108 m!8087810))

(assert (=> bs!1938108 m!8087800))

(assert (=> b!7505575 d!2303918))

(declare-fun b!7505589 () Bool)

(declare-fun e!4475229 () Bool)

(assert (=> b!7505589 (= e!4475229 (>= (size!42274 totalInput!779) (size!42274 totalInput!779)))))

(declare-fun b!7505587 () Bool)

(declare-fun res!3011185 () Bool)

(declare-fun e!4475230 () Bool)

(assert (=> b!7505587 (=> (not res!3011185) (not e!4475230))))

(declare-fun head!15424 (List!72501) C!39732)

(assert (=> b!7505587 (= res!3011185 (= (head!15424 totalInput!779) (head!15424 totalInput!779)))))

(declare-fun b!7505586 () Bool)

(declare-fun e!4475231 () Bool)

(assert (=> b!7505586 (= e!4475231 e!4475230)))

(declare-fun res!3011186 () Bool)

(assert (=> b!7505586 (=> (not res!3011186) (not e!4475230))))

(assert (=> b!7505586 (= res!3011186 (not ((_ is Nil!72377) totalInput!779)))))

(declare-fun d!2303920 () Bool)

(assert (=> d!2303920 e!4475229))

(declare-fun res!3011183 () Bool)

(assert (=> d!2303920 (=> res!3011183 e!4475229)))

(declare-fun lt!2634640 () Bool)

(assert (=> d!2303920 (= res!3011183 (not lt!2634640))))

(assert (=> d!2303920 (= lt!2634640 e!4475231)))

(declare-fun res!3011184 () Bool)

(assert (=> d!2303920 (=> res!3011184 e!4475231)))

(assert (=> d!2303920 (= res!3011184 ((_ is Nil!72377) totalInput!779))))

(assert (=> d!2303920 (= (isPrefix!5997 totalInput!779 totalInput!779) lt!2634640)))

(declare-fun b!7505588 () Bool)

(declare-fun tail!14991 (List!72501) List!72501)

(assert (=> b!7505588 (= e!4475230 (isPrefix!5997 (tail!14991 totalInput!779) (tail!14991 totalInput!779)))))

(assert (= (and d!2303920 (not res!3011184)) b!7505586))

(assert (= (and b!7505586 res!3011186) b!7505587))

(assert (= (and b!7505587 res!3011185) b!7505588))

(assert (= (and d!2303920 (not res!3011183)) b!7505589))

(assert (=> b!7505589 m!8087808))

(assert (=> b!7505589 m!8087808))

(declare-fun m!8087812 () Bool)

(assert (=> b!7505587 m!8087812))

(assert (=> b!7505587 m!8087812))

(declare-fun m!8087814 () Bool)

(assert (=> b!7505588 m!8087814))

(assert (=> b!7505588 m!8087814))

(assert (=> b!7505588 m!8087814))

(assert (=> b!7505588 m!8087814))

(declare-fun m!8087816 () Bool)

(assert (=> b!7505588 m!8087816))

(assert (=> b!7505575 d!2303920))

(declare-fun d!2303924 () Bool)

(assert (=> d!2303924 (isPrefix!5997 totalInput!779 totalInput!779)))

(declare-fun lt!2634643 () Unit!166364)

(declare-fun choose!58099 (List!72501 List!72501) Unit!166364)

(assert (=> d!2303924 (= lt!2634643 (choose!58099 totalInput!779 totalInput!779))))

(assert (=> d!2303924 (= (lemmaIsPrefixRefl!3836 totalInput!779 totalInput!779) lt!2634643)))

(declare-fun bs!1938109 () Bool)

(assert (= bs!1938109 d!2303924))

(assert (=> bs!1938109 m!8087800))

(declare-fun m!8087818 () Bool)

(assert (=> bs!1938109 m!8087818))

(assert (=> b!7505575 d!2303924))

(declare-fun b!7505603 () Bool)

(declare-fun e!4475238 () List!72501)

(assert (=> b!7505603 (= e!4475238 (Cons!72377 (h!78825 Nil!72377) (++!17332 (t!387070 Nil!72377) totalInput!779)))))

(declare-fun b!7505604 () Bool)

(declare-fun res!3011191 () Bool)

(declare-fun e!4475239 () Bool)

(assert (=> b!7505604 (=> (not res!3011191) (not e!4475239))))

(declare-fun lt!2634650 () List!72501)

(assert (=> b!7505604 (= res!3011191 (= (size!42274 lt!2634650) (+ (size!42274 Nil!72377) (size!42274 totalInput!779))))))

(declare-fun d!2303926 () Bool)

(assert (=> d!2303926 e!4475239))

(declare-fun res!3011192 () Bool)

(assert (=> d!2303926 (=> (not res!3011192) (not e!4475239))))

(declare-fun content!15301 (List!72501) (InoxSet C!39732))

(assert (=> d!2303926 (= res!3011192 (= (content!15301 lt!2634650) ((_ map or) (content!15301 Nil!72377) (content!15301 totalInput!779))))))

(assert (=> d!2303926 (= lt!2634650 e!4475238)))

(declare-fun c!1385635 () Bool)

(assert (=> d!2303926 (= c!1385635 ((_ is Nil!72377) Nil!72377))))

(assert (=> d!2303926 (= (++!17332 Nil!72377 totalInput!779) lt!2634650)))

(declare-fun b!7505602 () Bool)

(assert (=> b!7505602 (= e!4475238 totalInput!779)))

(declare-fun b!7505605 () Bool)

(assert (=> b!7505605 (= e!4475239 (or (not (= totalInput!779 Nil!72377)) (= lt!2634650 Nil!72377)))))

(assert (= (and d!2303926 c!1385635) b!7505602))

(assert (= (and d!2303926 (not c!1385635)) b!7505603))

(assert (= (and d!2303926 res!3011192) b!7505604))

(assert (= (and b!7505604 res!3011191) b!7505605))

(declare-fun m!8087820 () Bool)

(assert (=> b!7505603 m!8087820))

(declare-fun m!8087822 () Bool)

(assert (=> b!7505604 m!8087822))

(assert (=> b!7505604 m!8087796))

(assert (=> b!7505604 m!8087808))

(declare-fun m!8087824 () Bool)

(assert (=> d!2303926 m!8087824))

(declare-fun m!8087826 () Bool)

(assert (=> d!2303926 m!8087826))

(declare-fun m!8087828 () Bool)

(assert (=> d!2303926 m!8087828))

(assert (=> b!7505567 d!2303926))

(declare-fun b!7505607 () Bool)

(declare-fun e!4475240 () List!72501)

(assert (=> b!7505607 (= e!4475240 (Cons!72377 (h!78825 testedP!204) (++!17332 (t!387070 testedP!204) testedSuffix!164)))))

(declare-fun b!7505608 () Bool)

(declare-fun res!3011193 () Bool)

(declare-fun e!4475241 () Bool)

(assert (=> b!7505608 (=> (not res!3011193) (not e!4475241))))

(declare-fun lt!2634651 () List!72501)

(assert (=> b!7505608 (= res!3011193 (= (size!42274 lt!2634651) (+ (size!42274 testedP!204) (size!42274 testedSuffix!164))))))

(declare-fun d!2303928 () Bool)

(assert (=> d!2303928 e!4475241))

(declare-fun res!3011194 () Bool)

(assert (=> d!2303928 (=> (not res!3011194) (not e!4475241))))

(assert (=> d!2303928 (= res!3011194 (= (content!15301 lt!2634651) ((_ map or) (content!15301 testedP!204) (content!15301 testedSuffix!164))))))

(assert (=> d!2303928 (= lt!2634651 e!4475240)))

(declare-fun c!1385636 () Bool)

(assert (=> d!2303928 (= c!1385636 ((_ is Nil!72377) testedP!204))))

(assert (=> d!2303928 (= (++!17332 testedP!204 testedSuffix!164) lt!2634651)))

(declare-fun b!7505606 () Bool)

(assert (=> b!7505606 (= e!4475240 testedSuffix!164)))

(declare-fun b!7505609 () Bool)

(assert (=> b!7505609 (= e!4475241 (or (not (= testedSuffix!164 Nil!72377)) (= lt!2634651 testedP!204)))))

(assert (= (and d!2303928 c!1385636) b!7505606))

(assert (= (and d!2303928 (not c!1385636)) b!7505607))

(assert (= (and d!2303928 res!3011194) b!7505608))

(assert (= (and b!7505608 res!3011193) b!7505609))

(declare-fun m!8087830 () Bool)

(assert (=> b!7505607 m!8087830))

(declare-fun m!8087832 () Bool)

(assert (=> b!7505608 m!8087832))

(assert (=> b!7505608 m!8087806))

(declare-fun m!8087834 () Bool)

(assert (=> b!7505608 m!8087834))

(declare-fun m!8087836 () Bool)

(assert (=> d!2303928 m!8087836))

(declare-fun m!8087838 () Bool)

(assert (=> d!2303928 m!8087838))

(declare-fun m!8087840 () Bool)

(assert (=> d!2303928 m!8087840))

(assert (=> start!726502 d!2303928))

(declare-fun b!7505613 () Bool)

(declare-fun e!4475242 () Bool)

(assert (=> b!7505613 (= e!4475242 (>= (size!42274 totalInput!779) (size!42274 testedP!204)))))

(declare-fun b!7505611 () Bool)

(declare-fun res!3011197 () Bool)

(declare-fun e!4475243 () Bool)

(assert (=> b!7505611 (=> (not res!3011197) (not e!4475243))))

(assert (=> b!7505611 (= res!3011197 (= (head!15424 testedP!204) (head!15424 totalInput!779)))))

(declare-fun b!7505610 () Bool)

(declare-fun e!4475244 () Bool)

(assert (=> b!7505610 (= e!4475244 e!4475243)))

(declare-fun res!3011198 () Bool)

(assert (=> b!7505610 (=> (not res!3011198) (not e!4475243))))

(assert (=> b!7505610 (= res!3011198 (not ((_ is Nil!72377) totalInput!779)))))

(declare-fun d!2303930 () Bool)

(assert (=> d!2303930 e!4475242))

(declare-fun res!3011195 () Bool)

(assert (=> d!2303930 (=> res!3011195 e!4475242)))

(declare-fun lt!2634652 () Bool)

(assert (=> d!2303930 (= res!3011195 (not lt!2634652))))

(assert (=> d!2303930 (= lt!2634652 e!4475244)))

(declare-fun res!3011196 () Bool)

(assert (=> d!2303930 (=> res!3011196 e!4475244)))

(assert (=> d!2303930 (= res!3011196 ((_ is Nil!72377) testedP!204))))

(assert (=> d!2303930 (= (isPrefix!5997 testedP!204 totalInput!779) lt!2634652)))

(declare-fun b!7505612 () Bool)

(assert (=> b!7505612 (= e!4475243 (isPrefix!5997 (tail!14991 testedP!204) (tail!14991 totalInput!779)))))

(assert (= (and d!2303930 (not res!3011196)) b!7505610))

(assert (= (and b!7505610 res!3011198) b!7505611))

(assert (= (and b!7505611 res!3011197) b!7505612))

(assert (= (and d!2303930 (not res!3011195)) b!7505613))

(assert (=> b!7505613 m!8087808))

(assert (=> b!7505613 m!8087806))

(declare-fun m!8087842 () Bool)

(assert (=> b!7505611 m!8087842))

(assert (=> b!7505611 m!8087812))

(declare-fun m!8087844 () Bool)

(assert (=> b!7505612 m!8087844))

(assert (=> b!7505612 m!8087814))

(assert (=> b!7505612 m!8087844))

(assert (=> b!7505612 m!8087814))

(declare-fun m!8087846 () Bool)

(assert (=> b!7505612 m!8087846))

(assert (=> b!7505574 d!2303930))

(declare-fun b!7505617 () Bool)

(declare-fun e!4475245 () Bool)

(assert (=> b!7505617 (= e!4475245 (>= (size!42274 lt!2634628) (size!42274 testedP!204)))))

(declare-fun b!7505615 () Bool)

(declare-fun res!3011201 () Bool)

(declare-fun e!4475246 () Bool)

(assert (=> b!7505615 (=> (not res!3011201) (not e!4475246))))

(assert (=> b!7505615 (= res!3011201 (= (head!15424 testedP!204) (head!15424 lt!2634628)))))

(declare-fun b!7505614 () Bool)

(declare-fun e!4475247 () Bool)

(assert (=> b!7505614 (= e!4475247 e!4475246)))

(declare-fun res!3011202 () Bool)

(assert (=> b!7505614 (=> (not res!3011202) (not e!4475246))))

(assert (=> b!7505614 (= res!3011202 (not ((_ is Nil!72377) lt!2634628)))))

(declare-fun d!2303932 () Bool)

(assert (=> d!2303932 e!4475245))

(declare-fun res!3011199 () Bool)

(assert (=> d!2303932 (=> res!3011199 e!4475245)))

(declare-fun lt!2634653 () Bool)

(assert (=> d!2303932 (= res!3011199 (not lt!2634653))))

(assert (=> d!2303932 (= lt!2634653 e!4475247)))

(declare-fun res!3011200 () Bool)

(assert (=> d!2303932 (=> res!3011200 e!4475247)))

(assert (=> d!2303932 (= res!3011200 ((_ is Nil!72377) testedP!204))))

(assert (=> d!2303932 (= (isPrefix!5997 testedP!204 lt!2634628) lt!2634653)))

(declare-fun b!7505616 () Bool)

(assert (=> b!7505616 (= e!4475246 (isPrefix!5997 (tail!14991 testedP!204) (tail!14991 lt!2634628)))))

(assert (= (and d!2303932 (not res!3011200)) b!7505614))

(assert (= (and b!7505614 res!3011202) b!7505615))

(assert (= (and b!7505615 res!3011201) b!7505616))

(assert (= (and d!2303932 (not res!3011199)) b!7505617))

(declare-fun m!8087848 () Bool)

(assert (=> b!7505617 m!8087848))

(assert (=> b!7505617 m!8087806))

(assert (=> b!7505615 m!8087842))

(declare-fun m!8087850 () Bool)

(assert (=> b!7505615 m!8087850))

(assert (=> b!7505616 m!8087844))

(declare-fun m!8087852 () Bool)

(assert (=> b!7505616 m!8087852))

(assert (=> b!7505616 m!8087844))

(assert (=> b!7505616 m!8087852))

(declare-fun m!8087854 () Bool)

(assert (=> b!7505616 m!8087854))

(assert (=> b!7505574 d!2303932))

(declare-fun d!2303934 () Bool)

(assert (=> d!2303934 (isPrefix!5997 testedP!204 (++!17332 testedP!204 testedSuffix!164))))

(declare-fun lt!2634656 () Unit!166364)

(declare-fun choose!58101 (List!72501 List!72501) Unit!166364)

(assert (=> d!2303934 (= lt!2634656 (choose!58101 testedP!204 testedSuffix!164))))

(assert (=> d!2303934 (= (lemmaConcatTwoListThenFirstIsPrefix!3710 testedP!204 testedSuffix!164) lt!2634656)))

(declare-fun bs!1938110 () Bool)

(assert (= bs!1938110 d!2303934))

(assert (=> bs!1938110 m!8087784))

(assert (=> bs!1938110 m!8087784))

(declare-fun m!8087856 () Bool)

(assert (=> bs!1938110 m!8087856))

(declare-fun m!8087858 () Bool)

(assert (=> bs!1938110 m!8087858))

(assert (=> b!7505574 d!2303934))

(declare-fun bs!1938123 () Bool)

(declare-fun b!7505693 () Bool)

(declare-fun d!2303936 () Bool)

(assert (= bs!1938123 (and b!7505693 d!2303936)))

(declare-fun lambda!465342 () Int)

(declare-fun lambda!465341 () Int)

(assert (=> bs!1938123 (not (= lambda!465342 lambda!465341))))

(declare-fun bs!1938124 () Bool)

(declare-fun b!7505694 () Bool)

(assert (= bs!1938124 (and b!7505694 d!2303936)))

(declare-fun lambda!465343 () Int)

(assert (=> bs!1938124 (not (= lambda!465343 lambda!465341))))

(declare-fun bs!1938125 () Bool)

(assert (= bs!1938125 (and b!7505694 b!7505693)))

(assert (=> bs!1938125 (= lambda!465343 lambda!465342)))

(declare-fun call!688704 () Bool)

(declare-datatypes ((List!72504 0))(
  ( (Nil!72380) (Cons!72380 (h!78828 Context!16910) (t!387073 List!72504)) )
))
(declare-fun lt!2634724 () List!72504)

(declare-fun c!1385668 () Bool)

(declare-fun bm!688699 () Bool)

(declare-fun lt!2634725 () List!72504)

(declare-fun exists!4857 (List!72504 Int) Bool)

(assert (=> bm!688699 (= call!688704 (exists!4857 (ite c!1385668 lt!2634725 lt!2634724) (ite c!1385668 lambda!465342 lambda!465343)))))

(declare-fun e!4475301 () Unit!166364)

(declare-fun Unit!166368 () Unit!166364)

(assert (=> b!7505694 (= e!4475301 Unit!166368)))

(declare-fun call!688703 () List!72504)

(assert (=> b!7505694 (= lt!2634724 call!688703)))

(declare-fun lt!2634729 () Unit!166364)

(declare-fun lemmaForallThenNotExists!466 (List!72504 Int) Unit!166364)

(assert (=> b!7505694 (= lt!2634729 (lemmaForallThenNotExists!466 lt!2634724 lambda!465341))))

(assert (=> b!7505694 (not call!688704)))

(declare-fun lt!2634728 () Unit!166364)

(assert (=> b!7505694 (= lt!2634728 lt!2634729)))

(declare-fun lt!2634723 () Bool)

(declare-datatypes ((Option!17224 0))(
  ( (None!17223) (Some!17223 (v!54352 List!72501)) )
))
(declare-fun isEmpty!41308 (Option!17224) Bool)

(declare-fun getLanguageWitness!1046 ((InoxSet Context!16910)) Option!17224)

(assert (=> d!2303936 (= lt!2634723 (isEmpty!41308 (getLanguageWitness!1046 z!3716)))))

(declare-fun forall!18282 ((InoxSet Context!16910) Int) Bool)

(assert (=> d!2303936 (= lt!2634723 (forall!18282 z!3716 lambda!465341))))

(declare-fun lt!2634727 () Unit!166364)

(assert (=> d!2303936 (= lt!2634727 e!4475301)))

(assert (=> d!2303936 (= c!1385668 (not (forall!18282 z!3716 lambda!465341)))))

(assert (=> d!2303936 (= (lostCauseZipper!1391 z!3716) lt!2634723)))

(declare-fun bm!688698 () Bool)

(declare-fun toList!11828 ((InoxSet Context!16910)) List!72504)

(assert (=> bm!688698 (= call!688703 (toList!11828 z!3716))))

(declare-fun Unit!166369 () Unit!166364)

(assert (=> b!7505693 (= e!4475301 Unit!166369)))

(assert (=> b!7505693 (= lt!2634725 call!688703)))

(declare-fun lt!2634722 () Unit!166364)

(declare-fun lemmaNotForallThenExists!499 (List!72504 Int) Unit!166364)

(assert (=> b!7505693 (= lt!2634722 (lemmaNotForallThenExists!499 lt!2634725 lambda!465341))))

(assert (=> b!7505693 call!688704))

(declare-fun lt!2634726 () Unit!166364)

(assert (=> b!7505693 (= lt!2634726 lt!2634722)))

(assert (= (and d!2303936 c!1385668) b!7505693))

(assert (= (and d!2303936 (not c!1385668)) b!7505694))

(assert (= (or b!7505693 b!7505694) bm!688698))

(assert (= (or b!7505693 b!7505694) bm!688699))

(declare-fun m!8087942 () Bool)

(assert (=> b!7505694 m!8087942))

(declare-fun m!8087944 () Bool)

(assert (=> b!7505693 m!8087944))

(declare-fun m!8087946 () Bool)

(assert (=> bm!688698 m!8087946))

(declare-fun m!8087948 () Bool)

(assert (=> d!2303936 m!8087948))

(assert (=> d!2303936 m!8087948))

(declare-fun m!8087950 () Bool)

(assert (=> d!2303936 m!8087950))

(declare-fun m!8087952 () Bool)

(assert (=> d!2303936 m!8087952))

(assert (=> d!2303936 m!8087952))

(declare-fun m!8087954 () Bool)

(assert (=> bm!688699 m!8087954))

(assert (=> b!7505570 d!2303936))

(declare-fun d!2303968 () Bool)

(assert (=> d!2303968 (= testedSuffix!164 lt!2634632)))

(declare-fun lt!2634732 () Unit!166364)

(declare-fun choose!58102 (List!72501 List!72501 List!72501 List!72501 List!72501) Unit!166364)

(assert (=> d!2303968 (= lt!2634732 (choose!58102 testedP!204 testedSuffix!164 testedP!204 lt!2634632 totalInput!779))))

(assert (=> d!2303968 (isPrefix!5997 testedP!204 totalInput!779)))

(assert (=> d!2303968 (= (lemmaSamePrefixThenSameSuffix!2796 testedP!204 testedSuffix!164 testedP!204 lt!2634632 totalInput!779) lt!2634732)))

(declare-fun bs!1938126 () Bool)

(assert (= bs!1938126 d!2303968))

(declare-fun m!8087956 () Bool)

(assert (=> bs!1938126 m!8087956))

(assert (=> bs!1938126 m!8087778))

(assert (=> b!7505570 d!2303968))

(declare-fun d!2303970 () Bool)

(declare-fun lt!2634735 () List!72501)

(assert (=> d!2303970 (= (++!17332 testedP!204 lt!2634735) totalInput!779)))

(declare-fun e!4475304 () List!72501)

(assert (=> d!2303970 (= lt!2634735 e!4475304)))

(declare-fun c!1385671 () Bool)

(assert (=> d!2303970 (= c!1385671 ((_ is Cons!72377) testedP!204))))

(assert (=> d!2303970 (>= (size!42274 totalInput!779) (size!42274 testedP!204))))

(assert (=> d!2303970 (= (getSuffix!3497 totalInput!779 testedP!204) lt!2634735)))

(declare-fun b!7505699 () Bool)

(assert (=> b!7505699 (= e!4475304 (getSuffix!3497 (tail!14991 totalInput!779) (t!387070 testedP!204)))))

(declare-fun b!7505700 () Bool)

(assert (=> b!7505700 (= e!4475304 totalInput!779)))

(assert (= (and d!2303970 c!1385671) b!7505699))

(assert (= (and d!2303970 (not c!1385671)) b!7505700))

(declare-fun m!8087958 () Bool)

(assert (=> d!2303970 m!8087958))

(assert (=> d!2303970 m!8087808))

(assert (=> d!2303970 m!8087806))

(assert (=> b!7505699 m!8087814))

(assert (=> b!7505699 m!8087814))

(declare-fun m!8087960 () Bool)

(assert (=> b!7505699 m!8087960))

(assert (=> b!7505570 d!2303970))

(declare-fun d!2303972 () Bool)

(declare-fun lt!2634738 () Int)

(assert (=> d!2303972 (>= lt!2634738 0)))

(declare-fun e!4475307 () Int)

(assert (=> d!2303972 (= lt!2634738 e!4475307)))

(declare-fun c!1385674 () Bool)

(assert (=> d!2303972 (= c!1385674 ((_ is Nil!72377) testedP!204))))

(assert (=> d!2303972 (= (size!42274 testedP!204) lt!2634738)))

(declare-fun b!7505705 () Bool)

(assert (=> b!7505705 (= e!4475307 0)))

(declare-fun b!7505706 () Bool)

(assert (=> b!7505706 (= e!4475307 (+ 1 (size!42274 (t!387070 testedP!204))))))

(assert (= (and d!2303972 c!1385674) b!7505705))

(assert (= (and d!2303972 (not c!1385674)) b!7505706))

(declare-fun m!8087962 () Bool)

(assert (=> b!7505706 m!8087962))

(assert (=> b!7505564 d!2303972))

(declare-fun d!2303974 () Bool)

(declare-fun lambda!465346 () Int)

(declare-fun forall!18283 (List!72502 Int) Bool)

(assert (=> d!2303974 (= (inv!92487 setElem!56988) (forall!18283 (exprs!8955 setElem!56988) lambda!465346))))

(declare-fun bs!1938127 () Bool)

(assert (= bs!1938127 d!2303974))

(declare-fun m!8087964 () Bool)

(assert (=> bs!1938127 m!8087964))

(assert (=> setNonEmpty!56988 d!2303974))

(declare-fun bs!1938128 () Bool)

(declare-fun d!2303976 () Bool)

(assert (= bs!1938128 (and d!2303976 d!2303936)))

(declare-fun lambda!465349 () Int)

(assert (=> bs!1938128 (not (= lambda!465349 lambda!465341))))

(declare-fun bs!1938129 () Bool)

(assert (= bs!1938129 (and d!2303976 b!7505693)))

(assert (=> bs!1938129 (not (= lambda!465349 lambda!465342))))

(declare-fun bs!1938130 () Bool)

(assert (= bs!1938130 (and d!2303976 b!7505694)))

(assert (=> bs!1938130 (not (= lambda!465349 lambda!465343))))

(declare-fun exists!4858 ((InoxSet Context!16910) Int) Bool)

(assert (=> d!2303976 (= (nullableZipper!3175 z!3716) (exists!4858 z!3716 lambda!465349))))

(declare-fun bs!1938131 () Bool)

(assert (= bs!1938131 d!2303976))

(declare-fun m!8087966 () Bool)

(assert (=> bs!1938131 m!8087966))

(assert (=> b!7505572 d!2303976))

(declare-fun d!2303978 () Bool)

(declare-fun lt!2634739 () Int)

(assert (=> d!2303978 (>= lt!2634739 0)))

(declare-fun e!4475308 () Int)

(assert (=> d!2303978 (= lt!2634739 e!4475308)))

(declare-fun c!1385677 () Bool)

(assert (=> d!2303978 (= c!1385677 ((_ is Nil!72377) totalInput!779))))

(assert (=> d!2303978 (= (size!42274 totalInput!779) lt!2634739)))

(declare-fun b!7505707 () Bool)

(assert (=> b!7505707 (= e!4475308 0)))

(declare-fun b!7505708 () Bool)

(assert (=> b!7505708 (= e!4475308 (+ 1 (size!42274 (t!387070 totalInput!779))))))

(assert (= (and d!2303978 c!1385677) b!7505707))

(assert (= (and d!2303978 (not c!1385677)) b!7505708))

(declare-fun m!8087968 () Bool)

(assert (=> b!7505708 m!8087968))

(assert (=> b!7505568 d!2303978))

(declare-fun d!2303980 () Bool)

(declare-fun lt!2634740 () Int)

(assert (=> d!2303980 (>= lt!2634740 0)))

(declare-fun e!4475309 () Int)

(assert (=> d!2303980 (= lt!2634740 e!4475309)))

(declare-fun c!1385678 () Bool)

(assert (=> d!2303980 (= c!1385678 ((_ is Nil!72377) Nil!72377))))

(assert (=> d!2303980 (= (size!42274 Nil!72377) lt!2634740)))

(declare-fun b!7505709 () Bool)

(assert (=> b!7505709 (= e!4475309 0)))

(declare-fun b!7505710 () Bool)

(assert (=> b!7505710 (= e!4475309 (+ 1 (size!42274 (t!387070 Nil!72377))))))

(assert (= (and d!2303980 c!1385678) b!7505709))

(assert (= (and d!2303980 (not c!1385678)) b!7505710))

(declare-fun m!8087970 () Bool)

(assert (=> b!7505710 m!8087970))

(assert (=> b!7505573 d!2303980))

(declare-fun b!7505715 () Bool)

(declare-fun e!4475312 () Bool)

(declare-fun tp!2178743 () Bool)

(assert (=> b!7505715 (= e!4475312 (and tp_is_empty!49747 tp!2178743))))

(assert (=> b!7505576 (= tp!2178722 e!4475312)))

(assert (= (and b!7505576 ((_ is Cons!72377) (t!387070 totalInput!779))) b!7505715))

(declare-fun b!7505720 () Bool)

(declare-fun e!4475315 () Bool)

(declare-fun tp!2178748 () Bool)

(declare-fun tp!2178749 () Bool)

(assert (=> b!7505720 (= e!4475315 (and tp!2178748 tp!2178749))))

(assert (=> b!7505566 (= tp!2178721 e!4475315)))

(assert (= (and b!7505566 ((_ is Cons!72378) (exprs!8955 setElem!56988))) b!7505720))

(declare-fun condSetEmpty!56994 () Bool)

(assert (=> setNonEmpty!56988 (= condSetEmpty!56994 (= setRest!56988 ((as const (Array Context!16910 Bool)) false)))))

(declare-fun setRes!56994 () Bool)

(assert (=> setNonEmpty!56988 (= tp!2178723 setRes!56994)))

(declare-fun setIsEmpty!56994 () Bool)

(assert (=> setIsEmpty!56994 setRes!56994))

(declare-fun tp!2178754 () Bool)

(declare-fun setNonEmpty!56994 () Bool)

(declare-fun setElem!56994 () Context!16910)

(declare-fun e!4475318 () Bool)

(assert (=> setNonEmpty!56994 (= setRes!56994 (and tp!2178754 (inv!92487 setElem!56994) e!4475318))))

(declare-fun setRest!56994 () (InoxSet Context!16910))

(assert (=> setNonEmpty!56994 (= setRest!56988 ((_ map or) (store ((as const (Array Context!16910 Bool)) false) setElem!56994 true) setRest!56994))))

(declare-fun b!7505725 () Bool)

(declare-fun tp!2178755 () Bool)

(assert (=> b!7505725 (= e!4475318 tp!2178755)))

(assert (= (and setNonEmpty!56988 condSetEmpty!56994) setIsEmpty!56994))

(assert (= (and setNonEmpty!56988 (not condSetEmpty!56994)) setNonEmpty!56994))

(assert (= setNonEmpty!56994 b!7505725))

(declare-fun m!8087972 () Bool)

(assert (=> setNonEmpty!56994 m!8087972))

(declare-fun b!7505726 () Bool)

(declare-fun e!4475319 () Bool)

(declare-fun tp!2178756 () Bool)

(assert (=> b!7505726 (= e!4475319 (and tp_is_empty!49747 tp!2178756))))

(assert (=> b!7505569 (= tp!2178719 e!4475319)))

(assert (= (and b!7505569 ((_ is Cons!72377) (t!387070 testedSuffix!164))) b!7505726))

(declare-fun b!7505727 () Bool)

(declare-fun e!4475320 () Bool)

(declare-fun tp!2178757 () Bool)

(assert (=> b!7505727 (= e!4475320 (and tp_is_empty!49747 tp!2178757))))

(assert (=> b!7505577 (= tp!2178720 e!4475320)))

(assert (= (and b!7505577 ((_ is Cons!72377) (t!387070 testedP!204))) b!7505727))

(check-sat (not bm!688699) (not b!7505699) (not b!7505727) (not d!2303970) (not b!7505589) (not b!7505604) (not b!7505612) (not b!7505725) (not b!7505710) (not b!7505603) (not b!7505706) (not b!7505613) (not b!7505708) (not b!7505616) (not b!7505693) (not d!2303924) (not d!2303934) (not d!2303918) (not b!7505726) (not d!2303974) (not b!7505608) (not d!2303936) (not d!2303968) (not b!7505611) (not b!7505607) (not b!7505715) (not d!2303926) (not d!2303928) (not b!7505587) (not b!7505720) (not bm!688698) (not b!7505588) (not setNonEmpty!56994) (not d!2303976) tp_is_empty!49747 (not b!7505617) (not b!7505615) (not b!7505694))
(check-sat)
