; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532064 () Bool)

(assert start!532064)

(declare-fun res!2144037 () Bool)

(declare-fun e!3142599 () Bool)

(assert (=> start!532064 (=> (not res!2144037) (not e!3142599))))

(declare-fun i!879 () Int)

(assert (=> start!532064 (= res!2144037 (>= i!879 0))))

(assert (=> start!532064 e!3142599))

(assert (=> start!532064 true))

(declare-fun e!3142601 () Bool)

(assert (=> start!532064 e!3142601))

(declare-fun b!5030596 () Bool)

(declare-fun e!3142600 () Bool)

(assert (=> b!5030596 (= e!3142599 e!3142600)))

(declare-fun res!2144036 () Bool)

(assert (=> b!5030596 (=> (not res!2144036) (not e!3142600))))

(declare-fun lt!2081931 () Int)

(declare-fun j!102 () Int)

(assert (=> b!5030596 (= res!2144036 (and (< i!879 lt!2081931) (>= j!102 0) (<= j!102 (- (- lt!2081931 i!879) 1)) (= i!879 0)))))

(declare-datatypes ((B!3077 0))(
  ( (B!3078 (val!23450 Int)) )
))
(declare-datatypes ((List!58353 0))(
  ( (Nil!58229) (Cons!58229 (h!64677 B!3077) (t!370769 List!58353)) )
))
(declare-fun l!2999 () List!58353)

(declare-fun size!38768 (List!58353) Int)

(assert (=> b!5030596 (= lt!2081931 (size!38768 l!2999))))

(declare-fun b!5030597 () Bool)

(declare-fun apply!14212 (List!58353 Int) B!3077)

(declare-fun take!788 (List!58353 Int) List!58353)

(declare-fun drop!2588 (List!58353 Int) List!58353)

(assert (=> b!5030597 (= e!3142600 (not (= (Cons!58229 (apply!14212 l!2999 i!879) (take!788 (drop!2588 l!2999 (+ 1 i!879)) j!102)) (take!788 (drop!2588 l!2999 i!879) (+ 1 j!102)))))))

(declare-fun b!5030598 () Bool)

(declare-fun tp_is_empty!36699 () Bool)

(declare-fun tp!1409470 () Bool)

(assert (=> b!5030598 (= e!3142601 (and tp_is_empty!36699 tp!1409470))))

(assert (= (and start!532064 res!2144037) b!5030596))

(assert (= (and b!5030596 res!2144036) b!5030597))

(get-info :version)

(assert (= (and start!532064 ((_ is Cons!58229) l!2999)) b!5030598))

(declare-fun m!6065874 () Bool)

(assert (=> b!5030596 m!6065874))

(declare-fun m!6065876 () Bool)

(assert (=> b!5030597 m!6065876))

(declare-fun m!6065878 () Bool)

(assert (=> b!5030597 m!6065878))

(declare-fun m!6065880 () Bool)

(assert (=> b!5030597 m!6065880))

(declare-fun m!6065882 () Bool)

(assert (=> b!5030597 m!6065882))

(declare-fun m!6065884 () Bool)

(assert (=> b!5030597 m!6065884))

(assert (=> b!5030597 m!6065880))

(assert (=> b!5030597 m!6065876))

(check-sat (not b!5030597) (not b!5030596) (not b!5030598) tp_is_empty!36699)
(check-sat)
(get-model)

(declare-fun b!5030627 () Bool)

(declare-fun e!3142619 () Int)

(assert (=> b!5030627 (= e!3142619 0)))

(declare-fun e!3142621 () List!58353)

(declare-fun b!5030628 () Bool)

(assert (=> b!5030628 (= e!3142621 (Cons!58229 (h!64677 (drop!2588 l!2999 i!879)) (take!788 (t!370769 (drop!2588 l!2999 i!879)) (- (+ 1 j!102) 1))))))

(declare-fun b!5030629 () Bool)

(declare-fun e!3142620 () Int)

(assert (=> b!5030629 (= e!3142620 (size!38768 (drop!2588 l!2999 i!879)))))

(declare-fun b!5030630 () Bool)

(declare-fun e!3142618 () Bool)

(declare-fun lt!2081936 () List!58353)

(assert (=> b!5030630 (= e!3142618 (= (size!38768 lt!2081936) e!3142619))))

(declare-fun c!861204 () Bool)

(assert (=> b!5030630 (= c!861204 (<= (+ 1 j!102) 0))))

(declare-fun d!1618914 () Bool)

(assert (=> d!1618914 e!3142618))

(declare-fun res!2144042 () Bool)

(assert (=> d!1618914 (=> (not res!2144042) (not e!3142618))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10326 (List!58353) (InoxSet B!3077))

(assert (=> d!1618914 (= res!2144042 (= ((_ map implies) (content!10326 lt!2081936) (content!10326 (drop!2588 l!2999 i!879))) ((as const (InoxSet B!3077)) true)))))

(assert (=> d!1618914 (= lt!2081936 e!3142621)))

(declare-fun c!861203 () Bool)

(assert (=> d!1618914 (= c!861203 (or ((_ is Nil!58229) (drop!2588 l!2999 i!879)) (<= (+ 1 j!102) 0)))))

(assert (=> d!1618914 (= (take!788 (drop!2588 l!2999 i!879) (+ 1 j!102)) lt!2081936)))

(declare-fun b!5030631 () Bool)

(assert (=> b!5030631 (= e!3142620 (+ 1 j!102))))

(declare-fun b!5030632 () Bool)

(assert (=> b!5030632 (= e!3142621 Nil!58229)))

(declare-fun b!5030633 () Bool)

(assert (=> b!5030633 (= e!3142619 e!3142620)))

(declare-fun c!861205 () Bool)

(assert (=> b!5030633 (= c!861205 (>= (+ 1 j!102) (size!38768 (drop!2588 l!2999 i!879))))))

(assert (= (and d!1618914 c!861203) b!5030632))

(assert (= (and d!1618914 (not c!861203)) b!5030628))

(assert (= (and d!1618914 res!2144042) b!5030630))

(assert (= (and b!5030630 c!861204) b!5030627))

(assert (= (and b!5030630 (not c!861204)) b!5030633))

(assert (= (and b!5030633 c!861205) b!5030629))

(assert (= (and b!5030633 (not c!861205)) b!5030631))

(declare-fun m!6065886 () Bool)

(assert (=> b!5030628 m!6065886))

(assert (=> b!5030633 m!6065880))

(declare-fun m!6065888 () Bool)

(assert (=> b!5030633 m!6065888))

(declare-fun m!6065890 () Bool)

(assert (=> d!1618914 m!6065890))

(assert (=> d!1618914 m!6065880))

(declare-fun m!6065892 () Bool)

(assert (=> d!1618914 m!6065892))

(assert (=> b!5030629 m!6065880))

(assert (=> b!5030629 m!6065888))

(declare-fun m!6065894 () Bool)

(assert (=> b!5030630 m!6065894))

(assert (=> b!5030597 d!1618914))

(declare-fun d!1618918 () Bool)

(declare-fun lt!2081942 () B!3077)

(declare-fun contains!19582 (List!58353 B!3077) Bool)

(assert (=> d!1618918 (contains!19582 l!2999 lt!2081942)))

(declare-fun e!3142634 () B!3077)

(assert (=> d!1618918 (= lt!2081942 e!3142634)))

(declare-fun c!861213 () Bool)

(assert (=> d!1618918 (= c!861213 (= i!879 0))))

(declare-fun e!3142635 () Bool)

(assert (=> d!1618918 e!3142635))

(declare-fun res!2144048 () Bool)

(assert (=> d!1618918 (=> (not res!2144048) (not e!3142635))))

(assert (=> d!1618918 (= res!2144048 (<= 0 i!879))))

(assert (=> d!1618918 (= (apply!14212 l!2999 i!879) lt!2081942)))

(declare-fun b!5030653 () Bool)

(assert (=> b!5030653 (= e!3142635 (< i!879 (size!38768 l!2999)))))

(declare-fun b!5030654 () Bool)

(declare-fun head!10793 (List!58353) B!3077)

(assert (=> b!5030654 (= e!3142634 (head!10793 l!2999))))

(declare-fun b!5030655 () Bool)

(declare-fun tail!9930 (List!58353) List!58353)

(assert (=> b!5030655 (= e!3142634 (apply!14212 (tail!9930 l!2999) (- i!879 1)))))

(assert (= (and d!1618918 res!2144048) b!5030653))

(assert (= (and d!1618918 c!861213) b!5030654))

(assert (= (and d!1618918 (not c!861213)) b!5030655))

(declare-fun m!6065906 () Bool)

(assert (=> d!1618918 m!6065906))

(assert (=> b!5030653 m!6065874))

(declare-fun m!6065908 () Bool)

(assert (=> b!5030654 m!6065908))

(declare-fun m!6065910 () Bool)

(assert (=> b!5030655 m!6065910))

(assert (=> b!5030655 m!6065910))

(declare-fun m!6065912 () Bool)

(assert (=> b!5030655 m!6065912))

(assert (=> b!5030597 d!1618918))

(declare-fun b!5030659 () Bool)

(declare-fun e!3142639 () Int)

(assert (=> b!5030659 (= e!3142639 0)))

(declare-fun b!5030660 () Bool)

(declare-fun e!3142641 () List!58353)

(assert (=> b!5030660 (= e!3142641 (Cons!58229 (h!64677 (drop!2588 l!2999 (+ 1 i!879))) (take!788 (t!370769 (drop!2588 l!2999 (+ 1 i!879))) (- j!102 1))))))

(declare-fun b!5030661 () Bool)

(declare-fun e!3142640 () Int)

(assert (=> b!5030661 (= e!3142640 (size!38768 (drop!2588 l!2999 (+ 1 i!879))))))

(declare-fun b!5030662 () Bool)

(declare-fun e!3142638 () Bool)

(declare-fun lt!2081944 () List!58353)

(assert (=> b!5030662 (= e!3142638 (= (size!38768 lt!2081944) e!3142639))))

(declare-fun c!861216 () Bool)

(assert (=> b!5030662 (= c!861216 (<= j!102 0))))

(declare-fun d!1618922 () Bool)

(assert (=> d!1618922 e!3142638))

(declare-fun res!2144050 () Bool)

(assert (=> d!1618922 (=> (not res!2144050) (not e!3142638))))

(assert (=> d!1618922 (= res!2144050 (= ((_ map implies) (content!10326 lt!2081944) (content!10326 (drop!2588 l!2999 (+ 1 i!879)))) ((as const (InoxSet B!3077)) true)))))

(assert (=> d!1618922 (= lt!2081944 e!3142641)))

(declare-fun c!861215 () Bool)

(assert (=> d!1618922 (= c!861215 (or ((_ is Nil!58229) (drop!2588 l!2999 (+ 1 i!879))) (<= j!102 0)))))

(assert (=> d!1618922 (= (take!788 (drop!2588 l!2999 (+ 1 i!879)) j!102) lt!2081944)))

(declare-fun b!5030663 () Bool)

(assert (=> b!5030663 (= e!3142640 j!102)))

(declare-fun b!5030664 () Bool)

(assert (=> b!5030664 (= e!3142641 Nil!58229)))

(declare-fun b!5030665 () Bool)

(assert (=> b!5030665 (= e!3142639 e!3142640)))

(declare-fun c!861217 () Bool)

(assert (=> b!5030665 (= c!861217 (>= j!102 (size!38768 (drop!2588 l!2999 (+ 1 i!879)))))))

(assert (= (and d!1618922 c!861215) b!5030664))

(assert (= (and d!1618922 (not c!861215)) b!5030660))

(assert (= (and d!1618922 res!2144050) b!5030662))

(assert (= (and b!5030662 c!861216) b!5030659))

(assert (= (and b!5030662 (not c!861216)) b!5030665))

(assert (= (and b!5030665 c!861217) b!5030661))

(assert (= (and b!5030665 (not c!861217)) b!5030663))

(declare-fun m!6065922 () Bool)

(assert (=> b!5030660 m!6065922))

(assert (=> b!5030665 m!6065876))

(declare-fun m!6065924 () Bool)

(assert (=> b!5030665 m!6065924))

(declare-fun m!6065926 () Bool)

(assert (=> d!1618922 m!6065926))

(assert (=> d!1618922 m!6065876))

(declare-fun m!6065928 () Bool)

(assert (=> d!1618922 m!6065928))

(assert (=> b!5030661 m!6065876))

(assert (=> b!5030661 m!6065924))

(declare-fun m!6065932 () Bool)

(assert (=> b!5030662 m!6065932))

(assert (=> b!5030597 d!1618922))

(declare-fun d!1618926 () Bool)

(declare-fun e!3142673 () Bool)

(assert (=> d!1618926 e!3142673))

(declare-fun res!2144056 () Bool)

(assert (=> d!1618926 (=> (not res!2144056) (not e!3142673))))

(declare-fun lt!2081951 () List!58353)

(assert (=> d!1618926 (= res!2144056 (= ((_ map implies) (content!10326 lt!2081951) (content!10326 l!2999)) ((as const (InoxSet B!3077)) true)))))

(declare-fun e!3142668 () List!58353)

(assert (=> d!1618926 (= lt!2081951 e!3142668)))

(declare-fun c!861238 () Bool)

(assert (=> d!1618926 (= c!861238 ((_ is Nil!58229) l!2999))))

(assert (=> d!1618926 (= (drop!2588 l!2999 (+ 1 i!879)) lt!2081951)))

(declare-fun b!5030709 () Bool)

(declare-fun e!3142666 () List!58353)

(assert (=> b!5030709 (= e!3142666 (drop!2588 (t!370769 l!2999) (- (+ 1 i!879) 1)))))

(declare-fun b!5030711 () Bool)

(declare-fun e!3142670 () Int)

(declare-fun call!350961 () Int)

(assert (=> b!5030711 (= e!3142670 (- call!350961 (+ 1 i!879)))))

(declare-fun b!5030713 () Bool)

(declare-fun e!3142671 () Int)

(assert (=> b!5030713 (= e!3142671 e!3142670)))

(declare-fun c!861243 () Bool)

(assert (=> b!5030713 (= c!861243 (>= (+ 1 i!879) call!350961))))

(declare-fun bm!350957 () Bool)

(assert (=> bm!350957 (= call!350961 (size!38768 l!2999))))

(declare-fun b!5030715 () Bool)

(assert (=> b!5030715 (= e!3142668 Nil!58229)))

(declare-fun b!5030717 () Bool)

(assert (=> b!5030717 (= e!3142671 call!350961)))

(declare-fun b!5030719 () Bool)

(assert (=> b!5030719 (= e!3142673 (= (size!38768 lt!2081951) e!3142671))))

(declare-fun c!861241 () Bool)

(assert (=> b!5030719 (= c!861241 (<= (+ 1 i!879) 0))))

(declare-fun b!5030721 () Bool)

(assert (=> b!5030721 (= e!3142670 0)))

(declare-fun b!5030723 () Bool)

(assert (=> b!5030723 (= e!3142668 e!3142666)))

(declare-fun c!861242 () Bool)

(assert (=> b!5030723 (= c!861242 (<= (+ 1 i!879) 0))))

(declare-fun b!5030725 () Bool)

(assert (=> b!5030725 (= e!3142666 l!2999)))

(assert (= (and d!1618926 c!861238) b!5030715))

(assert (= (and d!1618926 (not c!861238)) b!5030723))

(assert (= (and b!5030723 c!861242) b!5030725))

(assert (= (and b!5030723 (not c!861242)) b!5030709))

(assert (= (and d!1618926 res!2144056) b!5030719))

(assert (= (and b!5030719 c!861241) b!5030717))

(assert (= (and b!5030719 (not c!861241)) b!5030713))

(assert (= (and b!5030713 c!861243) b!5030721))

(assert (= (and b!5030713 (not c!861243)) b!5030711))

(assert (= (or b!5030717 b!5030713 b!5030711) bm!350957))

(declare-fun m!6065942 () Bool)

(assert (=> d!1618926 m!6065942))

(declare-fun m!6065944 () Bool)

(assert (=> d!1618926 m!6065944))

(declare-fun m!6065950 () Bool)

(assert (=> b!5030709 m!6065950))

(assert (=> bm!350957 m!6065874))

(declare-fun m!6065954 () Bool)

(assert (=> b!5030719 m!6065954))

(assert (=> b!5030597 d!1618926))

(declare-fun d!1618930 () Bool)

(declare-fun e!3142680 () Bool)

(assert (=> d!1618930 e!3142680))

(declare-fun res!2144058 () Bool)

(assert (=> d!1618930 (=> (not res!2144058) (not e!3142680))))

(declare-fun lt!2081952 () List!58353)

(assert (=> d!1618930 (= res!2144058 (= ((_ map implies) (content!10326 lt!2081952) (content!10326 l!2999)) ((as const (InoxSet B!3077)) true)))))

(declare-fun e!3142677 () List!58353)

(assert (=> d!1618930 (= lt!2081952 e!3142677)))

(declare-fun c!861245 () Bool)

(assert (=> d!1618930 (= c!861245 ((_ is Nil!58229) l!2999))))

(assert (=> d!1618930 (= (drop!2588 l!2999 i!879) lt!2081952)))

(declare-fun b!5030727 () Bool)

(declare-fun e!3142676 () List!58353)

(assert (=> b!5030727 (= e!3142676 (drop!2588 (t!370769 l!2999) (- i!879 1)))))

(declare-fun b!5030728 () Bool)

(declare-fun e!3142678 () Int)

(declare-fun call!350963 () Int)

(assert (=> b!5030728 (= e!3142678 (- call!350963 i!879))))

(declare-fun b!5030729 () Bool)

(declare-fun e!3142679 () Int)

(assert (=> b!5030729 (= e!3142679 e!3142678)))

(declare-fun c!861251 () Bool)

(assert (=> b!5030729 (= c!861251 (>= i!879 call!350963))))

(declare-fun bm!350958 () Bool)

(assert (=> bm!350958 (= call!350963 (size!38768 l!2999))))

(declare-fun b!5030730 () Bool)

(assert (=> b!5030730 (= e!3142677 Nil!58229)))

(declare-fun b!5030731 () Bool)

(assert (=> b!5030731 (= e!3142679 call!350963)))

(declare-fun b!5030732 () Bool)

(assert (=> b!5030732 (= e!3142680 (= (size!38768 lt!2081952) e!3142679))))

(declare-fun c!861246 () Bool)

(assert (=> b!5030732 (= c!861246 (<= i!879 0))))

(declare-fun b!5030733 () Bool)

(assert (=> b!5030733 (= e!3142678 0)))

(declare-fun b!5030735 () Bool)

(assert (=> b!5030735 (= e!3142677 e!3142676)))

(declare-fun c!861247 () Bool)

(assert (=> b!5030735 (= c!861247 (<= i!879 0))))

(declare-fun b!5030737 () Bool)

(assert (=> b!5030737 (= e!3142676 l!2999)))

(assert (= (and d!1618930 c!861245) b!5030730))

(assert (= (and d!1618930 (not c!861245)) b!5030735))

(assert (= (and b!5030735 c!861247) b!5030737))

(assert (= (and b!5030735 (not c!861247)) b!5030727))

(assert (= (and d!1618930 res!2144058) b!5030732))

(assert (= (and b!5030732 c!861246) b!5030731))

(assert (= (and b!5030732 (not c!861246)) b!5030729))

(assert (= (and b!5030729 c!861251) b!5030733))

(assert (= (and b!5030729 (not c!861251)) b!5030728))

(assert (= (or b!5030731 b!5030729 b!5030728) bm!350958))

(declare-fun m!6065958 () Bool)

(assert (=> d!1618930 m!6065958))

(assert (=> d!1618930 m!6065944))

(declare-fun m!6065962 () Bool)

(assert (=> b!5030727 m!6065962))

(assert (=> bm!350958 m!6065874))

(declare-fun m!6065966 () Bool)

(assert (=> b!5030732 m!6065966))

(assert (=> b!5030597 d!1618930))

(declare-fun d!1618934 () Bool)

(declare-fun lt!2081959 () Int)

(assert (=> d!1618934 (>= lt!2081959 0)))

(declare-fun e!3142691 () Int)

(assert (=> d!1618934 (= lt!2081959 e!3142691)))

(declare-fun c!861258 () Bool)

(assert (=> d!1618934 (= c!861258 ((_ is Nil!58229) l!2999))))

(assert (=> d!1618934 (= (size!38768 l!2999) lt!2081959)))

(declare-fun b!5030755 () Bool)

(assert (=> b!5030755 (= e!3142691 0)))

(declare-fun b!5030756 () Bool)

(assert (=> b!5030756 (= e!3142691 (+ 1 (size!38768 (t!370769 l!2999))))))

(assert (= (and d!1618934 c!861258) b!5030755))

(assert (= (and d!1618934 (not c!861258)) b!5030756))

(declare-fun m!6065972 () Bool)

(assert (=> b!5030756 m!6065972))

(assert (=> b!5030596 d!1618934))

(declare-fun b!5030765 () Bool)

(declare-fun e!3142696 () Bool)

(declare-fun tp!1409475 () Bool)

(assert (=> b!5030765 (= e!3142696 (and tp_is_empty!36699 tp!1409475))))

(assert (=> b!5030598 (= tp!1409470 e!3142696)))

(assert (= (and b!5030598 ((_ is Cons!58229) (t!370769 l!2999))) b!5030765))

(check-sat (not b!5030662) (not b!5030629) (not d!1618926) (not b!5030633) (not d!1618918) (not d!1618914) (not d!1618922) (not b!5030653) (not b!5030709) (not d!1618930) (not b!5030630) (not b!5030655) (not bm!350958) (not b!5030654) (not b!5030756) (not b!5030727) (not b!5030628) (not b!5030732) (not b!5030661) (not b!5030765) (not b!5030665) (not b!5030660) (not b!5030719) tp_is_empty!36699 (not bm!350957))
(check-sat)
(get-model)

(declare-fun b!5030771 () Bool)

(declare-fun e!3142703 () Int)

(assert (=> b!5030771 (= e!3142703 0)))

(declare-fun b!5030772 () Bool)

(declare-fun e!3142705 () List!58353)

(assert (=> b!5030772 (= e!3142705 (Cons!58229 (h!64677 (t!370769 (drop!2588 l!2999 (+ 1 i!879)))) (take!788 (t!370769 (t!370769 (drop!2588 l!2999 (+ 1 i!879)))) (- (- j!102 1) 1))))))

(declare-fun b!5030773 () Bool)

(declare-fun e!3142704 () Int)

(assert (=> b!5030773 (= e!3142704 (size!38768 (t!370769 (drop!2588 l!2999 (+ 1 i!879)))))))

(declare-fun b!5030774 () Bool)

(declare-fun e!3142702 () Bool)

(declare-fun lt!2081962 () List!58353)

(assert (=> b!5030774 (= e!3142702 (= (size!38768 lt!2081962) e!3142703))))

(declare-fun c!861260 () Bool)

(assert (=> b!5030774 (= c!861260 (<= (- j!102 1) 0))))

(declare-fun d!1618940 () Bool)

(assert (=> d!1618940 e!3142702))

(declare-fun res!2144064 () Bool)

(assert (=> d!1618940 (=> (not res!2144064) (not e!3142702))))

(assert (=> d!1618940 (= res!2144064 (= ((_ map implies) (content!10326 lt!2081962) (content!10326 (t!370769 (drop!2588 l!2999 (+ 1 i!879))))) ((as const (InoxSet B!3077)) true)))))

(assert (=> d!1618940 (= lt!2081962 e!3142705)))

(declare-fun c!861259 () Bool)

(assert (=> d!1618940 (= c!861259 (or ((_ is Nil!58229) (t!370769 (drop!2588 l!2999 (+ 1 i!879)))) (<= (- j!102 1) 0)))))

(assert (=> d!1618940 (= (take!788 (t!370769 (drop!2588 l!2999 (+ 1 i!879))) (- j!102 1)) lt!2081962)))

(declare-fun b!5030775 () Bool)

(assert (=> b!5030775 (= e!3142704 (- j!102 1))))

(declare-fun b!5030776 () Bool)

(assert (=> b!5030776 (= e!3142705 Nil!58229)))

(declare-fun b!5030777 () Bool)

(assert (=> b!5030777 (= e!3142703 e!3142704)))

(declare-fun c!861261 () Bool)

(assert (=> b!5030777 (= c!861261 (>= (- j!102 1) (size!38768 (t!370769 (drop!2588 l!2999 (+ 1 i!879))))))))

(assert (= (and d!1618940 c!861259) b!5030776))

(assert (= (and d!1618940 (not c!861259)) b!5030772))

(assert (= (and d!1618940 res!2144064) b!5030774))

(assert (= (and b!5030774 c!861260) b!5030771))

(assert (= (and b!5030774 (not c!861260)) b!5030777))

(assert (= (and b!5030777 c!861261) b!5030773))

(assert (= (and b!5030777 (not c!861261)) b!5030775))

(declare-fun m!6065974 () Bool)

(assert (=> b!5030772 m!6065974))

(declare-fun m!6065976 () Bool)

(assert (=> b!5030777 m!6065976))

(declare-fun m!6065978 () Bool)

(assert (=> d!1618940 m!6065978))

(declare-fun m!6065980 () Bool)

(assert (=> d!1618940 m!6065980))

(assert (=> b!5030773 m!6065976))

(declare-fun m!6065982 () Bool)

(assert (=> b!5030774 m!6065982))

(assert (=> b!5030660 d!1618940))

(declare-fun d!1618942 () Bool)

(declare-fun lt!2081963 () Int)

(assert (=> d!1618942 (>= lt!2081963 0)))

(declare-fun e!3142706 () Int)

(assert (=> d!1618942 (= lt!2081963 e!3142706)))

(declare-fun c!861262 () Bool)

(assert (=> d!1618942 (= c!861262 ((_ is Nil!58229) lt!2081936))))

(assert (=> d!1618942 (= (size!38768 lt!2081936) lt!2081963)))

(declare-fun b!5030778 () Bool)

(assert (=> b!5030778 (= e!3142706 0)))

(declare-fun b!5030779 () Bool)

(assert (=> b!5030779 (= e!3142706 (+ 1 (size!38768 (t!370769 lt!2081936))))))

(assert (= (and d!1618942 c!861262) b!5030778))

(assert (= (and d!1618942 (not c!861262)) b!5030779))

(declare-fun m!6065984 () Bool)

(assert (=> b!5030779 m!6065984))

(assert (=> b!5030630 d!1618942))

(declare-fun d!1618944 () Bool)

(declare-fun lt!2081968 () Bool)

(assert (=> d!1618944 (= lt!2081968 (select (content!10326 l!2999) lt!2081942))))

(declare-fun e!3142719 () Bool)

(assert (=> d!1618944 (= lt!2081968 e!3142719)))

(declare-fun res!2144071 () Bool)

(assert (=> d!1618944 (=> (not res!2144071) (not e!3142719))))

(assert (=> d!1618944 (= res!2144071 ((_ is Cons!58229) l!2999))))

(assert (=> d!1618944 (= (contains!19582 l!2999 lt!2081942) lt!2081968)))

(declare-fun b!5030796 () Bool)

(declare-fun e!3142718 () Bool)

(assert (=> b!5030796 (= e!3142719 e!3142718)))

(declare-fun res!2144072 () Bool)

(assert (=> b!5030796 (=> res!2144072 e!3142718)))

(assert (=> b!5030796 (= res!2144072 (= (h!64677 l!2999) lt!2081942))))

(declare-fun b!5030797 () Bool)

(assert (=> b!5030797 (= e!3142718 (contains!19582 (t!370769 l!2999) lt!2081942))))

(assert (= (and d!1618944 res!2144071) b!5030796))

(assert (= (and b!5030796 (not res!2144072)) b!5030797))

(assert (=> d!1618944 m!6065944))

(declare-fun m!6066000 () Bool)

(assert (=> d!1618944 m!6066000))

(declare-fun m!6066004 () Bool)

(assert (=> b!5030797 m!6066004))

(assert (=> d!1618918 d!1618944))

(declare-fun d!1618956 () Bool)

(declare-fun lt!2081971 () Int)

(assert (=> d!1618956 (>= lt!2081971 0)))

(declare-fun e!3142722 () Int)

(assert (=> d!1618956 (= lt!2081971 e!3142722)))

(declare-fun c!861270 () Bool)

(assert (=> d!1618956 (= c!861270 ((_ is Nil!58229) (drop!2588 l!2999 i!879)))))

(assert (=> d!1618956 (= (size!38768 (drop!2588 l!2999 i!879)) lt!2081971)))

(declare-fun b!5030802 () Bool)

(assert (=> b!5030802 (= e!3142722 0)))

(declare-fun b!5030803 () Bool)

(assert (=> b!5030803 (= e!3142722 (+ 1 (size!38768 (t!370769 (drop!2588 l!2999 i!879)))))))

(assert (= (and d!1618956 c!861270) b!5030802))

(assert (= (and d!1618956 (not c!861270)) b!5030803))

(declare-fun m!6066008 () Bool)

(assert (=> b!5030803 m!6066008))

(assert (=> b!5030629 d!1618956))

(declare-fun d!1618960 () Bool)

(declare-fun c!861281 () Bool)

(assert (=> d!1618960 (= c!861281 ((_ is Nil!58229) lt!2081936))))

(declare-fun e!3142734 () (InoxSet B!3077))

(assert (=> d!1618960 (= (content!10326 lt!2081936) e!3142734)))

(declare-fun b!5030825 () Bool)

(assert (=> b!5030825 (= e!3142734 ((as const (Array B!3077 Bool)) false))))

(declare-fun b!5030826 () Bool)

(assert (=> b!5030826 (= e!3142734 ((_ map or) (store ((as const (Array B!3077 Bool)) false) (h!64677 lt!2081936) true) (content!10326 (t!370769 lt!2081936))))))

(assert (= (and d!1618960 c!861281) b!5030825))

(assert (= (and d!1618960 (not c!861281)) b!5030826))

(declare-fun m!6066036 () Bool)

(assert (=> b!5030826 m!6066036))

(declare-fun m!6066038 () Bool)

(assert (=> b!5030826 m!6066038))

(assert (=> d!1618914 d!1618960))

(declare-fun d!1618976 () Bool)

(declare-fun c!861284 () Bool)

(assert (=> d!1618976 (= c!861284 ((_ is Nil!58229) (drop!2588 l!2999 i!879)))))

(declare-fun e!3142737 () (InoxSet B!3077))

(assert (=> d!1618976 (= (content!10326 (drop!2588 l!2999 i!879)) e!3142737)))

(declare-fun b!5030831 () Bool)

(assert (=> b!5030831 (= e!3142737 ((as const (Array B!3077 Bool)) false))))

(declare-fun b!5030832 () Bool)

(assert (=> b!5030832 (= e!3142737 ((_ map or) (store ((as const (Array B!3077 Bool)) false) (h!64677 (drop!2588 l!2999 i!879)) true) (content!10326 (t!370769 (drop!2588 l!2999 i!879)))))))

(assert (= (and d!1618976 c!861284) b!5030831))

(assert (= (and d!1618976 (not c!861284)) b!5030832))

(declare-fun m!6066044 () Bool)

(assert (=> b!5030832 m!6066044))

(declare-fun m!6066046 () Bool)

(assert (=> b!5030832 m!6066046))

(assert (=> d!1618914 d!1618976))

(declare-fun d!1618980 () Bool)

(declare-fun lt!2081976 () Int)

(assert (=> d!1618980 (>= lt!2081976 0)))

(declare-fun e!3142739 () Int)

(assert (=> d!1618980 (= lt!2081976 e!3142739)))

(declare-fun c!861286 () Bool)

(assert (=> d!1618980 (= c!861286 ((_ is Nil!58229) lt!2081951))))

(assert (=> d!1618980 (= (size!38768 lt!2081951) lt!2081976)))

(declare-fun b!5030835 () Bool)

(assert (=> b!5030835 (= e!3142739 0)))

(declare-fun b!5030836 () Bool)

(assert (=> b!5030836 (= e!3142739 (+ 1 (size!38768 (t!370769 lt!2081951))))))

(assert (= (and d!1618980 c!861286) b!5030835))

(assert (= (and d!1618980 (not c!861286)) b!5030836))

(declare-fun m!6066052 () Bool)

(assert (=> b!5030836 m!6066052))

(assert (=> b!5030719 d!1618980))

(declare-fun b!5030848 () Bool)

(declare-fun e!3142747 () Int)

(assert (=> b!5030848 (= e!3142747 0)))

(declare-fun e!3142749 () List!58353)

(declare-fun b!5030849 () Bool)

(assert (=> b!5030849 (= e!3142749 (Cons!58229 (h!64677 (t!370769 (drop!2588 l!2999 i!879))) (take!788 (t!370769 (t!370769 (drop!2588 l!2999 i!879))) (- (- (+ 1 j!102) 1) 1))))))

(declare-fun b!5030850 () Bool)

(declare-fun e!3142748 () Int)

(assert (=> b!5030850 (= e!3142748 (size!38768 (t!370769 (drop!2588 l!2999 i!879))))))

(declare-fun b!5030851 () Bool)

(declare-fun e!3142746 () Bool)

(declare-fun lt!2081979 () List!58353)

(assert (=> b!5030851 (= e!3142746 (= (size!38768 lt!2081979) e!3142747))))

(declare-fun c!861293 () Bool)

(assert (=> b!5030851 (= c!861293 (<= (- (+ 1 j!102) 1) 0))))

(declare-fun d!1618986 () Bool)

(assert (=> d!1618986 e!3142746))

(declare-fun res!2144075 () Bool)

(assert (=> d!1618986 (=> (not res!2144075) (not e!3142746))))

(assert (=> d!1618986 (= res!2144075 (= ((_ map implies) (content!10326 lt!2081979) (content!10326 (t!370769 (drop!2588 l!2999 i!879)))) ((as const (InoxSet B!3077)) true)))))

(assert (=> d!1618986 (= lt!2081979 e!3142749)))

(declare-fun c!861292 () Bool)

(assert (=> d!1618986 (= c!861292 (or ((_ is Nil!58229) (t!370769 (drop!2588 l!2999 i!879))) (<= (- (+ 1 j!102) 1) 0)))))

(assert (=> d!1618986 (= (take!788 (t!370769 (drop!2588 l!2999 i!879)) (- (+ 1 j!102) 1)) lt!2081979)))

(declare-fun b!5030852 () Bool)

(assert (=> b!5030852 (= e!3142748 (- (+ 1 j!102) 1))))

(declare-fun b!5030853 () Bool)

(assert (=> b!5030853 (= e!3142749 Nil!58229)))

(declare-fun b!5030854 () Bool)

(assert (=> b!5030854 (= e!3142747 e!3142748)))

(declare-fun c!861294 () Bool)

(assert (=> b!5030854 (= c!861294 (>= (- (+ 1 j!102) 1) (size!38768 (t!370769 (drop!2588 l!2999 i!879)))))))

(assert (= (and d!1618986 c!861292) b!5030853))

(assert (= (and d!1618986 (not c!861292)) b!5030849))

(assert (= (and d!1618986 res!2144075) b!5030851))

(assert (= (and b!5030851 c!861293) b!5030848))

(assert (= (and b!5030851 (not c!861293)) b!5030854))

(assert (= (and b!5030854 c!861294) b!5030850))

(assert (= (and b!5030854 (not c!861294)) b!5030852))

(declare-fun m!6066054 () Bool)

(assert (=> b!5030849 m!6066054))

(assert (=> b!5030854 m!6066008))

(declare-fun m!6066058 () Bool)

(assert (=> d!1618986 m!6066058))

(assert (=> d!1618986 m!6066046))

(assert (=> b!5030850 m!6066008))

(declare-fun m!6066064 () Bool)

(assert (=> b!5030851 m!6066064))

(assert (=> b!5030628 d!1618986))

(declare-fun d!1618990 () Bool)

(declare-fun e!3142756 () Bool)

(assert (=> d!1618990 e!3142756))

(declare-fun res!2144077 () Bool)

(assert (=> d!1618990 (=> (not res!2144077) (not e!3142756))))

(declare-fun lt!2081981 () List!58353)

(assert (=> d!1618990 (= res!2144077 (= ((_ map implies) (content!10326 lt!2081981) (content!10326 (t!370769 l!2999))) ((as const (InoxSet B!3077)) true)))))

(declare-fun e!3142752 () List!58353)

(assert (=> d!1618990 (= lt!2081981 e!3142752)))

(declare-fun c!861295 () Bool)

(assert (=> d!1618990 (= c!861295 ((_ is Nil!58229) (t!370769 l!2999)))))

(assert (=> d!1618990 (= (drop!2588 (t!370769 l!2999) (- (+ 1 i!879) 1)) lt!2081981)))

(declare-fun b!5030858 () Bool)

(declare-fun e!3142751 () List!58353)

(assert (=> b!5030858 (= e!3142751 (drop!2588 (t!370769 (t!370769 l!2999)) (- (- (+ 1 i!879) 1) 1)))))

(declare-fun b!5030859 () Bool)

(declare-fun e!3142754 () Int)

(declare-fun call!350966 () Int)

(assert (=> b!5030859 (= e!3142754 (- call!350966 (- (+ 1 i!879) 1)))))

(declare-fun b!5030860 () Bool)

(declare-fun e!3142755 () Int)

(assert (=> b!5030860 (= e!3142755 e!3142754)))

(declare-fun c!861299 () Bool)

(assert (=> b!5030860 (= c!861299 (>= (- (+ 1 i!879) 1) call!350966))))

(declare-fun bm!350961 () Bool)

(assert (=> bm!350961 (= call!350966 (size!38768 (t!370769 l!2999)))))

(declare-fun b!5030861 () Bool)

(assert (=> b!5030861 (= e!3142752 Nil!58229)))

(declare-fun b!5030862 () Bool)

(assert (=> b!5030862 (= e!3142755 call!350966)))

(declare-fun b!5030863 () Bool)

(assert (=> b!5030863 (= e!3142756 (= (size!38768 lt!2081981) e!3142755))))

(declare-fun c!861297 () Bool)

(assert (=> b!5030863 (= c!861297 (<= (- (+ 1 i!879) 1) 0))))

(declare-fun b!5030864 () Bool)

(assert (=> b!5030864 (= e!3142754 0)))

(declare-fun b!5030865 () Bool)

(assert (=> b!5030865 (= e!3142752 e!3142751)))

(declare-fun c!861298 () Bool)

(assert (=> b!5030865 (= c!861298 (<= (- (+ 1 i!879) 1) 0))))

(declare-fun b!5030866 () Bool)

(assert (=> b!5030866 (= e!3142751 (t!370769 l!2999))))

(assert (= (and d!1618990 c!861295) b!5030861))

(assert (= (and d!1618990 (not c!861295)) b!5030865))

(assert (= (and b!5030865 c!861298) b!5030866))

(assert (= (and b!5030865 (not c!861298)) b!5030858))

(assert (= (and d!1618990 res!2144077) b!5030863))

(assert (= (and b!5030863 c!861297) b!5030862))

(assert (= (and b!5030863 (not c!861297)) b!5030860))

(assert (= (and b!5030860 c!861299) b!5030864))

(assert (= (and b!5030860 (not c!861299)) b!5030859))

(assert (= (or b!5030862 b!5030860 b!5030859) bm!350961))

(declare-fun m!6066076 () Bool)

(assert (=> d!1618990 m!6066076))

(declare-fun m!6066078 () Bool)

(assert (=> d!1618990 m!6066078))

(declare-fun m!6066080 () Bool)

(assert (=> b!5030858 m!6066080))

(assert (=> bm!350961 m!6065972))

(declare-fun m!6066082 () Bool)

(assert (=> b!5030863 m!6066082))

(assert (=> b!5030709 d!1618990))

(assert (=> bm!350958 d!1618934))

(declare-fun d!1618994 () Bool)

(declare-fun lt!2081982 () B!3077)

(assert (=> d!1618994 (contains!19582 (tail!9930 l!2999) lt!2081982)))

(declare-fun e!3142757 () B!3077)

(assert (=> d!1618994 (= lt!2081982 e!3142757)))

(declare-fun c!861300 () Bool)

(assert (=> d!1618994 (= c!861300 (= (- i!879 1) 0))))

(declare-fun e!3142758 () Bool)

(assert (=> d!1618994 e!3142758))

(declare-fun res!2144078 () Bool)

(assert (=> d!1618994 (=> (not res!2144078) (not e!3142758))))

(assert (=> d!1618994 (= res!2144078 (<= 0 (- i!879 1)))))

(assert (=> d!1618994 (= (apply!14212 (tail!9930 l!2999) (- i!879 1)) lt!2081982)))

(declare-fun b!5030867 () Bool)

(assert (=> b!5030867 (= e!3142758 (< (- i!879 1) (size!38768 (tail!9930 l!2999))))))

(declare-fun b!5030868 () Bool)

(assert (=> b!5030868 (= e!3142757 (head!10793 (tail!9930 l!2999)))))

(declare-fun b!5030869 () Bool)

(assert (=> b!5030869 (= e!3142757 (apply!14212 (tail!9930 (tail!9930 l!2999)) (- (- i!879 1) 1)))))

(assert (= (and d!1618994 res!2144078) b!5030867))

(assert (= (and d!1618994 c!861300) b!5030868))

(assert (= (and d!1618994 (not c!861300)) b!5030869))

(assert (=> d!1618994 m!6065910))

(declare-fun m!6066084 () Bool)

(assert (=> d!1618994 m!6066084))

(assert (=> b!5030867 m!6065910))

(declare-fun m!6066086 () Bool)

(assert (=> b!5030867 m!6066086))

(assert (=> b!5030868 m!6065910))

(declare-fun m!6066088 () Bool)

(assert (=> b!5030868 m!6066088))

(assert (=> b!5030869 m!6065910))

(declare-fun m!6066090 () Bool)

(assert (=> b!5030869 m!6066090))

(assert (=> b!5030869 m!6066090))

(declare-fun m!6066092 () Bool)

(assert (=> b!5030869 m!6066092))

(assert (=> b!5030655 d!1618994))

(declare-fun d!1618998 () Bool)

(assert (=> d!1618998 (= (tail!9930 l!2999) (t!370769 l!2999))))

(assert (=> b!5030655 d!1618998))

(declare-fun d!1619000 () Bool)

(declare-fun c!861304 () Bool)

(assert (=> d!1619000 (= c!861304 ((_ is Nil!58229) lt!2081951))))

(declare-fun e!3142763 () (InoxSet B!3077))

(assert (=> d!1619000 (= (content!10326 lt!2081951) e!3142763)))

(declare-fun b!5030877 () Bool)

(assert (=> b!5030877 (= e!3142763 ((as const (Array B!3077 Bool)) false))))

(declare-fun b!5030878 () Bool)

(assert (=> b!5030878 (= e!3142763 ((_ map or) (store ((as const (Array B!3077 Bool)) false) (h!64677 lt!2081951) true) (content!10326 (t!370769 lt!2081951))))))

(assert (= (and d!1619000 c!861304) b!5030877))

(assert (= (and d!1619000 (not c!861304)) b!5030878))

(declare-fun m!6066100 () Bool)

(assert (=> b!5030878 m!6066100))

(declare-fun m!6066102 () Bool)

(assert (=> b!5030878 m!6066102))

(assert (=> d!1618926 d!1619000))

(declare-fun d!1619004 () Bool)

(declare-fun c!861309 () Bool)

(assert (=> d!1619004 (= c!861309 ((_ is Nil!58229) l!2999))))

(declare-fun e!3142769 () (InoxSet B!3077))

(assert (=> d!1619004 (= (content!10326 l!2999) e!3142769)))

(declare-fun b!5030888 () Bool)

(assert (=> b!5030888 (= e!3142769 ((as const (Array B!3077 Bool)) false))))

(declare-fun b!5030889 () Bool)

(assert (=> b!5030889 (= e!3142769 ((_ map or) (store ((as const (Array B!3077 Bool)) false) (h!64677 l!2999) true) (content!10326 (t!370769 l!2999))))))

(assert (= (and d!1619004 c!861309) b!5030888))

(assert (= (and d!1619004 (not c!861309)) b!5030889))

(declare-fun m!6066104 () Bool)

(assert (=> b!5030889 m!6066104))

(assert (=> b!5030889 m!6066078))

(assert (=> d!1618926 d!1619004))

(declare-fun d!1619006 () Bool)

(declare-fun lt!2081985 () Int)

(assert (=> d!1619006 (>= lt!2081985 0)))

(declare-fun e!3142770 () Int)

(assert (=> d!1619006 (= lt!2081985 e!3142770)))

(declare-fun c!861310 () Bool)

(assert (=> d!1619006 (= c!861310 ((_ is Nil!58229) (drop!2588 l!2999 (+ 1 i!879))))))

(assert (=> d!1619006 (= (size!38768 (drop!2588 l!2999 (+ 1 i!879))) lt!2081985)))

(declare-fun b!5030890 () Bool)

(assert (=> b!5030890 (= e!3142770 0)))

(declare-fun b!5030891 () Bool)

(assert (=> b!5030891 (= e!3142770 (+ 1 (size!38768 (t!370769 (drop!2588 l!2999 (+ 1 i!879))))))))

(assert (= (and d!1619006 c!861310) b!5030890))

(assert (= (and d!1619006 (not c!861310)) b!5030891))

(assert (=> b!5030891 m!6065976))

(assert (=> b!5030665 d!1619006))

(declare-fun d!1619008 () Bool)

(declare-fun c!861311 () Bool)

(assert (=> d!1619008 (= c!861311 ((_ is Nil!58229) lt!2081944))))

(declare-fun e!3142771 () (InoxSet B!3077))

(assert (=> d!1619008 (= (content!10326 lt!2081944) e!3142771)))

(declare-fun b!5030892 () Bool)

(assert (=> b!5030892 (= e!3142771 ((as const (Array B!3077 Bool)) false))))

(declare-fun b!5030893 () Bool)

(assert (=> b!5030893 (= e!3142771 ((_ map or) (store ((as const (Array B!3077 Bool)) false) (h!64677 lt!2081944) true) (content!10326 (t!370769 lt!2081944))))))

(assert (= (and d!1619008 c!861311) b!5030892))

(assert (= (and d!1619008 (not c!861311)) b!5030893))

(declare-fun m!6066112 () Bool)

(assert (=> b!5030893 m!6066112))

(declare-fun m!6066114 () Bool)

(assert (=> b!5030893 m!6066114))

(assert (=> d!1618922 d!1619008))

(declare-fun d!1619012 () Bool)

(declare-fun c!861312 () Bool)

(assert (=> d!1619012 (= c!861312 ((_ is Nil!58229) (drop!2588 l!2999 (+ 1 i!879))))))

(declare-fun e!3142772 () (InoxSet B!3077))

(assert (=> d!1619012 (= (content!10326 (drop!2588 l!2999 (+ 1 i!879))) e!3142772)))

(declare-fun b!5030894 () Bool)

(assert (=> b!5030894 (= e!3142772 ((as const (Array B!3077 Bool)) false))))

(declare-fun b!5030895 () Bool)

(assert (=> b!5030895 (= e!3142772 ((_ map or) (store ((as const (Array B!3077 Bool)) false) (h!64677 (drop!2588 l!2999 (+ 1 i!879))) true) (content!10326 (t!370769 (drop!2588 l!2999 (+ 1 i!879))))))))

(assert (= (and d!1619012 c!861312) b!5030894))

(assert (= (and d!1619012 (not c!861312)) b!5030895))

(declare-fun m!6066116 () Bool)

(assert (=> b!5030895 m!6066116))

(assert (=> b!5030895 m!6065980))

(assert (=> d!1618922 d!1619012))

(declare-fun d!1619014 () Bool)

(declare-fun lt!2081986 () Int)

(assert (=> d!1619014 (>= lt!2081986 0)))

(declare-fun e!3142773 () Int)

(assert (=> d!1619014 (= lt!2081986 e!3142773)))

(declare-fun c!861313 () Bool)

(assert (=> d!1619014 (= c!861313 ((_ is Nil!58229) (t!370769 l!2999)))))

(assert (=> d!1619014 (= (size!38768 (t!370769 l!2999)) lt!2081986)))

(declare-fun b!5030896 () Bool)

(assert (=> b!5030896 (= e!3142773 0)))

(declare-fun b!5030897 () Bool)

(assert (=> b!5030897 (= e!3142773 (+ 1 (size!38768 (t!370769 (t!370769 l!2999)))))))

(assert (= (and d!1619014 c!861313) b!5030896))

(assert (= (and d!1619014 (not c!861313)) b!5030897))

(declare-fun m!6066118 () Bool)

(assert (=> b!5030897 m!6066118))

(assert (=> b!5030756 d!1619014))

(declare-fun d!1619016 () Bool)

(assert (=> d!1619016 (= (head!10793 l!2999) (h!64677 l!2999))))

(assert (=> b!5030654 d!1619016))

(assert (=> b!5030653 d!1618934))

(assert (=> b!5030633 d!1618956))

(assert (=> bm!350957 d!1618934))

(declare-fun d!1619018 () Bool)

(declare-fun c!861314 () Bool)

(assert (=> d!1619018 (= c!861314 ((_ is Nil!58229) lt!2081952))))

(declare-fun e!3142775 () (InoxSet B!3077))

(assert (=> d!1619018 (= (content!10326 lt!2081952) e!3142775)))

(declare-fun b!5030899 () Bool)

(assert (=> b!5030899 (= e!3142775 ((as const (Array B!3077 Bool)) false))))

(declare-fun b!5030900 () Bool)

(assert (=> b!5030900 (= e!3142775 ((_ map or) (store ((as const (Array B!3077 Bool)) false) (h!64677 lt!2081952) true) (content!10326 (t!370769 lt!2081952))))))

(assert (= (and d!1619018 c!861314) b!5030899))

(assert (= (and d!1619018 (not c!861314)) b!5030900))

(declare-fun m!6066120 () Bool)

(assert (=> b!5030900 m!6066120))

(declare-fun m!6066122 () Bool)

(assert (=> b!5030900 m!6066122))

(assert (=> d!1618930 d!1619018))

(assert (=> d!1618930 d!1619004))

(declare-fun d!1619020 () Bool)

(declare-fun lt!2081987 () Int)

(assert (=> d!1619020 (>= lt!2081987 0)))

(declare-fun e!3142776 () Int)

(assert (=> d!1619020 (= lt!2081987 e!3142776)))

(declare-fun c!861315 () Bool)

(assert (=> d!1619020 (= c!861315 ((_ is Nil!58229) lt!2081952))))

(assert (=> d!1619020 (= (size!38768 lt!2081952) lt!2081987)))

(declare-fun b!5030901 () Bool)

(assert (=> b!5030901 (= e!3142776 0)))

(declare-fun b!5030902 () Bool)

(assert (=> b!5030902 (= e!3142776 (+ 1 (size!38768 (t!370769 lt!2081952))))))

(assert (= (and d!1619020 c!861315) b!5030901))

(assert (= (and d!1619020 (not c!861315)) b!5030902))

(declare-fun m!6066124 () Bool)

(assert (=> b!5030902 m!6066124))

(assert (=> b!5030732 d!1619020))

(declare-fun d!1619022 () Bool)

(declare-fun lt!2081988 () Int)

(assert (=> d!1619022 (>= lt!2081988 0)))

(declare-fun e!3142777 () Int)

(assert (=> d!1619022 (= lt!2081988 e!3142777)))

(declare-fun c!861316 () Bool)

(assert (=> d!1619022 (= c!861316 ((_ is Nil!58229) lt!2081944))))

(assert (=> d!1619022 (= (size!38768 lt!2081944) lt!2081988)))

(declare-fun b!5030903 () Bool)

(assert (=> b!5030903 (= e!3142777 0)))

(declare-fun b!5030904 () Bool)

(assert (=> b!5030904 (= e!3142777 (+ 1 (size!38768 (t!370769 lt!2081944))))))

(assert (= (and d!1619022 c!861316) b!5030903))

(assert (= (and d!1619022 (not c!861316)) b!5030904))

(declare-fun m!6066126 () Bool)

(assert (=> b!5030904 m!6066126))

(assert (=> b!5030662 d!1619022))

(assert (=> b!5030661 d!1619006))

(declare-fun d!1619024 () Bool)

(declare-fun e!3142782 () Bool)

(assert (=> d!1619024 e!3142782))

(declare-fun res!2144081 () Bool)

(assert (=> d!1619024 (=> (not res!2144081) (not e!3142782))))

(declare-fun lt!2081989 () List!58353)

(assert (=> d!1619024 (= res!2144081 (= ((_ map implies) (content!10326 lt!2081989) (content!10326 (t!370769 l!2999))) ((as const (InoxSet B!3077)) true)))))

(declare-fun e!3142779 () List!58353)

(assert (=> d!1619024 (= lt!2081989 e!3142779)))

(declare-fun c!861317 () Bool)

(assert (=> d!1619024 (= c!861317 ((_ is Nil!58229) (t!370769 l!2999)))))

(assert (=> d!1619024 (= (drop!2588 (t!370769 l!2999) (- i!879 1)) lt!2081989)))

(declare-fun b!5030905 () Bool)

(declare-fun e!3142778 () List!58353)

(assert (=> b!5030905 (= e!3142778 (drop!2588 (t!370769 (t!370769 l!2999)) (- (- i!879 1) 1)))))

(declare-fun b!5030906 () Bool)

(declare-fun e!3142780 () Int)

(declare-fun call!350968 () Int)

(assert (=> b!5030906 (= e!3142780 (- call!350968 (- i!879 1)))))

(declare-fun b!5030907 () Bool)

(declare-fun e!3142781 () Int)

(assert (=> b!5030907 (= e!3142781 e!3142780)))

(declare-fun c!861320 () Bool)

(assert (=> b!5030907 (= c!861320 (>= (- i!879 1) call!350968))))

(declare-fun bm!350963 () Bool)

(assert (=> bm!350963 (= call!350968 (size!38768 (t!370769 l!2999)))))

(declare-fun b!5030908 () Bool)

(assert (=> b!5030908 (= e!3142779 Nil!58229)))

(declare-fun b!5030909 () Bool)

(assert (=> b!5030909 (= e!3142781 call!350968)))

(declare-fun b!5030910 () Bool)

(assert (=> b!5030910 (= e!3142782 (= (size!38768 lt!2081989) e!3142781))))

(declare-fun c!861318 () Bool)

(assert (=> b!5030910 (= c!861318 (<= (- i!879 1) 0))))

(declare-fun b!5030911 () Bool)

(assert (=> b!5030911 (= e!3142780 0)))

(declare-fun b!5030912 () Bool)

(assert (=> b!5030912 (= e!3142779 e!3142778)))

(declare-fun c!861319 () Bool)

(assert (=> b!5030912 (= c!861319 (<= (- i!879 1) 0))))

(declare-fun b!5030913 () Bool)

(assert (=> b!5030913 (= e!3142778 (t!370769 l!2999))))

(assert (= (and d!1619024 c!861317) b!5030908))

(assert (= (and d!1619024 (not c!861317)) b!5030912))

(assert (= (and b!5030912 c!861319) b!5030913))

(assert (= (and b!5030912 (not c!861319)) b!5030905))

(assert (= (and d!1619024 res!2144081) b!5030910))

(assert (= (and b!5030910 c!861318) b!5030909))

(assert (= (and b!5030910 (not c!861318)) b!5030907))

(assert (= (and b!5030907 c!861320) b!5030911))

(assert (= (and b!5030907 (not c!861320)) b!5030906))

(assert (= (or b!5030909 b!5030907 b!5030906) bm!350963))

(declare-fun m!6066128 () Bool)

(assert (=> d!1619024 m!6066128))

(assert (=> d!1619024 m!6066078))

(declare-fun m!6066130 () Bool)

(assert (=> b!5030905 m!6066130))

(assert (=> bm!350963 m!6065972))

(declare-fun m!6066132 () Bool)

(assert (=> b!5030910 m!6066132))

(assert (=> b!5030727 d!1619024))

(declare-fun b!5030914 () Bool)

(declare-fun e!3142783 () Bool)

(declare-fun tp!1409478 () Bool)

(assert (=> b!5030914 (= e!3142783 (and tp_is_empty!36699 tp!1409478))))

(assert (=> b!5030765 (= tp!1409475 e!3142783)))

(assert (= (and b!5030765 ((_ is Cons!58229) (t!370769 (t!370769 l!2999)))) b!5030914))

(check-sat (not b!5030849) (not d!1618994) (not b!5030803) (not b!5030889) (not b!5030905) (not d!1618990) (not b!5030878) (not d!1618944) (not b!5030854) (not b!5030868) (not b!5030902) (not bm!350961) (not b!5030914) (not b!5030850) (not b!5030897) (not b!5030774) (not b!5030910) (not b!5030904) (not b!5030836) (not d!1619024) (not d!1618986) (not b!5030863) (not b!5030779) (not b!5030772) (not b!5030869) (not b!5030851) (not b!5030826) (not d!1618940) (not b!5030891) (not b!5030858) (not b!5030777) (not b!5030895) (not b!5030893) (not b!5030773) (not b!5030867) (not b!5030900) (not b!5030797) (not b!5030832) tp_is_empty!36699 (not bm!350963))
(check-sat)
