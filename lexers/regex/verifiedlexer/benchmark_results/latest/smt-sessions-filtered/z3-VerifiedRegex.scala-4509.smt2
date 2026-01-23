; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239438 () Bool)

(assert start!239438)

(declare-fun b!2453007 () Bool)

(declare-fun res!1040144 () Bool)

(declare-fun e!1556713 () Bool)

(assert (=> b!2453007 (=> res!1040144 e!1556713)))

(declare-datatypes ((C!14580 0))(
  ( (C!14581 (val!8532 Int)) )
))
(declare-datatypes ((Regex!7211 0))(
  ( (ElementMatch!7211 (c!391459 C!14580)) (Concat!11847 (regOne!14934 Regex!7211) (regTwo!14934 Regex!7211)) (EmptyExpr!7211) (Star!7211 (reg!7540 Regex!7211)) (EmptyLang!7211) (Union!7211 (regOne!14935 Regex!7211) (regTwo!14935 Regex!7211)) )
))
(declare-datatypes ((List!28658 0))(
  ( (Nil!28560) (Cons!28560 (h!33961 Regex!7211) (t!208635 List!28658)) )
))
(declare-fun l!9164 () List!28658)

(declare-fun isEmpty!16592 (List!28658) Bool)

(assert (=> b!2453007 (= res!1040144 (isEmpty!16592 l!9164))))

(declare-fun b!2453008 () Bool)

(declare-fun e!1556719 () Bool)

(assert (=> b!2453008 (= e!1556713 e!1556719)))

(declare-fun res!1040146 () Bool)

(assert (=> b!2453008 (=> res!1040146 e!1556719)))

(declare-fun lt!879920 () List!28658)

(assert (=> b!2453008 (= res!1040146 (not (isEmpty!16592 lt!879920)))))

(declare-fun tail!3858 (List!28658) List!28658)

(assert (=> b!2453008 (= lt!879920 (tail!3858 l!9164))))

(declare-fun b!2453009 () Bool)

(declare-fun e!1556717 () Bool)

(assert (=> b!2453009 (= e!1556717 (not e!1556713))))

(declare-fun res!1040149 () Bool)

(assert (=> b!2453009 (=> res!1040149 e!1556713)))

(declare-fun r!13927 () Regex!7211)

(get-info :version)

(assert (=> b!2453009 (= res!1040149 (or ((_ is Concat!11847) r!13927) ((_ is EmptyExpr!7211) r!13927)))))

(declare-datatypes ((List!28659 0))(
  ( (Nil!28561) (Cons!28561 (h!33962 C!14580) (t!208636 List!28659)) )
))
(declare-fun s!9460 () List!28659)

(declare-fun matchR!3326 (Regex!7211 List!28659) Bool)

(declare-fun matchRSpec!1058 (Regex!7211 List!28659) Bool)

(assert (=> b!2453009 (= (matchR!3326 r!13927 s!9460) (matchRSpec!1058 r!13927 s!9460))))

(declare-datatypes ((Unit!41877 0))(
  ( (Unit!41878) )
))
(declare-fun lt!879919 () Unit!41877)

(declare-fun mainMatchTheorem!1058 (Regex!7211 List!28659) Unit!41877)

(assert (=> b!2453009 (= lt!879919 (mainMatchTheorem!1058 r!13927 s!9460))))

(declare-fun b!2453010 () Bool)

(declare-fun e!1556714 () Bool)

(declare-fun tp!780305 () Bool)

(assert (=> b!2453010 (= e!1556714 tp!780305)))

(declare-fun b!2453011 () Bool)

(declare-fun e!1556716 () Bool)

(declare-fun lt!879916 () Regex!7211)

(assert (=> b!2453011 (= e!1556716 (matchR!3326 lt!879916 s!9460))))

(declare-fun res!1040147 () Bool)

(assert (=> start!239438 (=> (not res!1040147) (not e!1556717))))

(declare-fun lambda!92913 () Int)

(declare-fun forall!5845 (List!28658 Int) Bool)

(assert (=> start!239438 (= res!1040147 (forall!5845 l!9164 lambda!92913))))

(assert (=> start!239438 e!1556717))

(declare-fun e!1556715 () Bool)

(assert (=> start!239438 e!1556715))

(assert (=> start!239438 e!1556714))

(declare-fun e!1556718 () Bool)

(assert (=> start!239438 e!1556718))

(declare-fun b!2453012 () Bool)

(declare-fun e!1556720 () Bool)

(declare-fun lt!879918 () Regex!7211)

(declare-fun validRegex!2905 (Regex!7211) Bool)

(assert (=> b!2453012 (= e!1556720 (validRegex!2905 lt!879918))))

(assert (=> b!2453012 e!1556716))

(declare-fun res!1040145 () Bool)

(assert (=> b!2453012 (=> (not res!1040145) (not e!1556716))))

(declare-fun ++!7102 (List!28659 List!28659) List!28659)

(assert (=> b!2453012 (= res!1040145 (matchR!3326 lt!879916 (++!7102 s!9460 Nil!28561)))))

(assert (=> b!2453012 (= lt!879916 (Concat!11847 lt!879918 EmptyExpr!7211))))

(declare-fun lt!879917 () Unit!41877)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!128 (Regex!7211 Regex!7211 List!28659 List!28659) Unit!41877)

(assert (=> b!2453012 (= lt!879917 (lemmaTwoRegexMatchThenConcatMatchesConcatString!128 lt!879918 EmptyExpr!7211 s!9460 Nil!28561))))

(declare-fun b!2453013 () Bool)

(declare-fun tp!780306 () Bool)

(declare-fun tp!780309 () Bool)

(assert (=> b!2453013 (= e!1556714 (and tp!780306 tp!780309))))

(declare-fun b!2453014 () Bool)

(declare-fun res!1040150 () Bool)

(assert (=> b!2453014 (=> res!1040150 e!1556719)))

(declare-fun generalisedConcat!312 (List!28658) Regex!7211)

(assert (=> b!2453014 (= res!1040150 (not (= (generalisedConcat!312 lt!879920) EmptyExpr!7211)))))

(declare-fun b!2453015 () Bool)

(declare-fun res!1040143 () Bool)

(assert (=> b!2453015 (=> (not res!1040143) (not e!1556717))))

(assert (=> b!2453015 (= res!1040143 (= r!13927 (generalisedConcat!312 l!9164)))))

(declare-fun b!2453016 () Bool)

(declare-fun tp!780311 () Bool)

(declare-fun tp!780307 () Bool)

(assert (=> b!2453016 (= e!1556715 (and tp!780311 tp!780307))))

(declare-fun b!2453017 () Bool)

(declare-fun tp!780310 () Bool)

(declare-fun tp!780304 () Bool)

(assert (=> b!2453017 (= e!1556714 (and tp!780310 tp!780304))))

(declare-fun b!2453018 () Bool)

(declare-fun tp_is_empty!11835 () Bool)

(declare-fun tp!780308 () Bool)

(assert (=> b!2453018 (= e!1556718 (and tp_is_empty!11835 tp!780308))))

(declare-fun b!2453019 () Bool)

(assert (=> b!2453019 (= e!1556719 e!1556720)))

(declare-fun res!1040148 () Bool)

(assert (=> b!2453019 (=> res!1040148 e!1556720)))

(assert (=> b!2453019 (= res!1040148 (not (matchR!3326 lt!879918 s!9460)))))

(declare-fun head!5585 (List!28658) Regex!7211)

(assert (=> b!2453019 (= lt!879918 (head!5585 l!9164))))

(declare-fun b!2453020 () Bool)

(assert (=> b!2453020 (= e!1556714 tp_is_empty!11835)))

(assert (= (and start!239438 res!1040147) b!2453015))

(assert (= (and b!2453015 res!1040143) b!2453009))

(assert (= (and b!2453009 (not res!1040149)) b!2453007))

(assert (= (and b!2453007 (not res!1040144)) b!2453008))

(assert (= (and b!2453008 (not res!1040146)) b!2453014))

(assert (= (and b!2453014 (not res!1040150)) b!2453019))

(assert (= (and b!2453019 (not res!1040148)) b!2453012))

(assert (= (and b!2453012 res!1040145) b!2453011))

(assert (= (and start!239438 ((_ is Cons!28560) l!9164)) b!2453016))

(assert (= (and start!239438 ((_ is ElementMatch!7211) r!13927)) b!2453020))

(assert (= (and start!239438 ((_ is Concat!11847) r!13927)) b!2453017))

(assert (= (and start!239438 ((_ is Star!7211) r!13927)) b!2453010))

(assert (= (and start!239438 ((_ is Union!7211) r!13927)) b!2453013))

(assert (= (and start!239438 ((_ is Cons!28561) s!9460)) b!2453018))

(declare-fun m!2825627 () Bool)

(assert (=> b!2453011 m!2825627))

(declare-fun m!2825629 () Bool)

(assert (=> b!2453012 m!2825629))

(declare-fun m!2825631 () Bool)

(assert (=> b!2453012 m!2825631))

(assert (=> b!2453012 m!2825631))

(declare-fun m!2825633 () Bool)

(assert (=> b!2453012 m!2825633))

(declare-fun m!2825635 () Bool)

(assert (=> b!2453012 m!2825635))

(declare-fun m!2825637 () Bool)

(assert (=> start!239438 m!2825637))

(declare-fun m!2825639 () Bool)

(assert (=> b!2453015 m!2825639))

(declare-fun m!2825641 () Bool)

(assert (=> b!2453009 m!2825641))

(declare-fun m!2825643 () Bool)

(assert (=> b!2453009 m!2825643))

(declare-fun m!2825645 () Bool)

(assert (=> b!2453009 m!2825645))

(declare-fun m!2825647 () Bool)

(assert (=> b!2453008 m!2825647))

(declare-fun m!2825649 () Bool)

(assert (=> b!2453008 m!2825649))

(declare-fun m!2825651 () Bool)

(assert (=> b!2453014 m!2825651))

(declare-fun m!2825653 () Bool)

(assert (=> b!2453007 m!2825653))

(declare-fun m!2825655 () Bool)

(assert (=> b!2453019 m!2825655))

(declare-fun m!2825657 () Bool)

(assert (=> b!2453019 m!2825657))

(check-sat (not b!2453019) tp_is_empty!11835 (not b!2453015) (not b!2453011) (not b!2453013) (not b!2453016) (not b!2453014) (not b!2453008) (not b!2453018) (not b!2453017) (not start!239438) (not b!2453007) (not b!2453012) (not b!2453010) (not b!2453009))
(check-sat)
(get-model)

(declare-fun call!150699 () Bool)

(declare-fun bm!150692 () Bool)

(declare-fun c!391464 () Bool)

(declare-fun c!391465 () Bool)

(assert (=> bm!150692 (= call!150699 (validRegex!2905 (ite c!391465 (reg!7540 lt!879918) (ite c!391464 (regTwo!14935 lt!879918) (regOne!14934 lt!879918)))))))

(declare-fun bm!150693 () Bool)

(declare-fun call!150697 () Bool)

(assert (=> bm!150693 (= call!150697 (validRegex!2905 (ite c!391464 (regOne!14935 lt!879918) (regTwo!14934 lt!879918))))))

(declare-fun d!707012 () Bool)

(declare-fun res!1040163 () Bool)

(declare-fun e!1556739 () Bool)

(assert (=> d!707012 (=> res!1040163 e!1556739)))

(assert (=> d!707012 (= res!1040163 ((_ is ElementMatch!7211) lt!879918))))

(assert (=> d!707012 (= (validRegex!2905 lt!879918) e!1556739)))

(declare-fun bm!150694 () Bool)

(declare-fun call!150698 () Bool)

(assert (=> bm!150694 (= call!150698 call!150699)))

(declare-fun b!2453039 () Bool)

(declare-fun e!1556738 () Bool)

(assert (=> b!2453039 (= e!1556738 call!150697)))

(declare-fun b!2453040 () Bool)

(declare-fun res!1040165 () Bool)

(declare-fun e!1556736 () Bool)

(assert (=> b!2453040 (=> (not res!1040165) (not e!1556736))))

(assert (=> b!2453040 (= res!1040165 call!150697)))

(declare-fun e!1556737 () Bool)

(assert (=> b!2453040 (= e!1556737 e!1556736)))

(declare-fun b!2453041 () Bool)

(declare-fun e!1556741 () Bool)

(declare-fun e!1556735 () Bool)

(assert (=> b!2453041 (= e!1556741 e!1556735)))

(declare-fun res!1040162 () Bool)

(declare-fun nullable!2211 (Regex!7211) Bool)

(assert (=> b!2453041 (= res!1040162 (not (nullable!2211 (reg!7540 lt!879918))))))

(assert (=> b!2453041 (=> (not res!1040162) (not e!1556735))))

(declare-fun b!2453042 () Bool)

(declare-fun res!1040161 () Bool)

(declare-fun e!1556740 () Bool)

(assert (=> b!2453042 (=> res!1040161 e!1556740)))

(assert (=> b!2453042 (= res!1040161 (not ((_ is Concat!11847) lt!879918)))))

(assert (=> b!2453042 (= e!1556737 e!1556740)))

(declare-fun b!2453043 () Bool)

(assert (=> b!2453043 (= e!1556736 call!150698)))

(declare-fun b!2453044 () Bool)

(assert (=> b!2453044 (= e!1556741 e!1556737)))

(assert (=> b!2453044 (= c!391464 ((_ is Union!7211) lt!879918))))

(declare-fun b!2453045 () Bool)

(assert (=> b!2453045 (= e!1556740 e!1556738)))

(declare-fun res!1040164 () Bool)

(assert (=> b!2453045 (=> (not res!1040164) (not e!1556738))))

(assert (=> b!2453045 (= res!1040164 call!150698)))

(declare-fun b!2453046 () Bool)

(assert (=> b!2453046 (= e!1556735 call!150699)))

(declare-fun b!2453047 () Bool)

(assert (=> b!2453047 (= e!1556739 e!1556741)))

(assert (=> b!2453047 (= c!391465 ((_ is Star!7211) lt!879918))))

(assert (= (and d!707012 (not res!1040163)) b!2453047))

(assert (= (and b!2453047 c!391465) b!2453041))

(assert (= (and b!2453047 (not c!391465)) b!2453044))

(assert (= (and b!2453041 res!1040162) b!2453046))

(assert (= (and b!2453044 c!391464) b!2453040))

(assert (= (and b!2453044 (not c!391464)) b!2453042))

(assert (= (and b!2453040 res!1040165) b!2453043))

(assert (= (and b!2453042 (not res!1040161)) b!2453045))

(assert (= (and b!2453045 res!1040164) b!2453039))

(assert (= (or b!2453040 b!2453039) bm!150693))

(assert (= (or b!2453043 b!2453045) bm!150694))

(assert (= (or b!2453046 bm!150694) bm!150692))

(declare-fun m!2825659 () Bool)

(assert (=> bm!150692 m!2825659))

(declare-fun m!2825661 () Bool)

(assert (=> bm!150693 m!2825661))

(declare-fun m!2825663 () Bool)

(assert (=> b!2453041 m!2825663))

(assert (=> b!2453012 d!707012))

(declare-fun b!2453076 () Bool)

(declare-fun e!1556756 () Bool)

(declare-fun lt!879923 () Bool)

(declare-fun call!150702 () Bool)

(assert (=> b!2453076 (= e!1556756 (= lt!879923 call!150702))))

(declare-fun b!2453077 () Bool)

(declare-fun e!1556758 () Bool)

(declare-fun derivativeStep!1865 (Regex!7211 C!14580) Regex!7211)

(declare-fun head!5586 (List!28659) C!14580)

(declare-fun tail!3859 (List!28659) List!28659)

(assert (=> b!2453077 (= e!1556758 (matchR!3326 (derivativeStep!1865 lt!879916 (head!5586 (++!7102 s!9460 Nil!28561))) (tail!3859 (++!7102 s!9460 Nil!28561))))))

(declare-fun b!2453078 () Bool)

(declare-fun e!1556762 () Bool)

(declare-fun e!1556759 () Bool)

(assert (=> b!2453078 (= e!1556762 e!1556759)))

(declare-fun res!1040188 () Bool)

(assert (=> b!2453078 (=> res!1040188 e!1556759)))

(assert (=> b!2453078 (= res!1040188 call!150702)))

(declare-fun b!2453079 () Bool)

(declare-fun res!1040186 () Bool)

(declare-fun e!1556757 () Bool)

(assert (=> b!2453079 (=> res!1040186 e!1556757)))

(assert (=> b!2453079 (= res!1040186 (not ((_ is ElementMatch!7211) lt!879916)))))

(declare-fun e!1556761 () Bool)

(assert (=> b!2453079 (= e!1556761 e!1556757)))

(declare-fun b!2453080 () Bool)

(assert (=> b!2453080 (= e!1556756 e!1556761)))

(declare-fun c!391472 () Bool)

(assert (=> b!2453080 (= c!391472 ((_ is EmptyLang!7211) lt!879916))))

(declare-fun b!2453081 () Bool)

(assert (=> b!2453081 (= e!1556757 e!1556762)))

(declare-fun res!1040189 () Bool)

(assert (=> b!2453081 (=> (not res!1040189) (not e!1556762))))

(assert (=> b!2453081 (= res!1040189 (not lt!879923))))

(declare-fun b!2453082 () Bool)

(assert (=> b!2453082 (= e!1556759 (not (= (head!5586 (++!7102 s!9460 Nil!28561)) (c!391459 lt!879916))))))

(declare-fun b!2453083 () Bool)

(declare-fun res!1040183 () Bool)

(assert (=> b!2453083 (=> res!1040183 e!1556757)))

(declare-fun e!1556760 () Bool)

(assert (=> b!2453083 (= res!1040183 e!1556760)))

(declare-fun res!1040185 () Bool)

(assert (=> b!2453083 (=> (not res!1040185) (not e!1556760))))

(assert (=> b!2453083 (= res!1040185 lt!879923)))

(declare-fun b!2453084 () Bool)

(assert (=> b!2453084 (= e!1556758 (nullable!2211 lt!879916))))

(declare-fun b!2453085 () Bool)

(assert (=> b!2453085 (= e!1556760 (= (head!5586 (++!7102 s!9460 Nil!28561)) (c!391459 lt!879916)))))

(declare-fun bm!150697 () Bool)

(declare-fun isEmpty!16593 (List!28659) Bool)

(assert (=> bm!150697 (= call!150702 (isEmpty!16593 (++!7102 s!9460 Nil!28561)))))

(declare-fun b!2453086 () Bool)

(assert (=> b!2453086 (= e!1556761 (not lt!879923))))

(declare-fun b!2453088 () Bool)

(declare-fun res!1040187 () Bool)

(assert (=> b!2453088 (=> (not res!1040187) (not e!1556760))))

(assert (=> b!2453088 (= res!1040187 (isEmpty!16593 (tail!3859 (++!7102 s!9460 Nil!28561))))))

(declare-fun b!2453089 () Bool)

(declare-fun res!1040182 () Bool)

(assert (=> b!2453089 (=> res!1040182 e!1556759)))

(assert (=> b!2453089 (= res!1040182 (not (isEmpty!16593 (tail!3859 (++!7102 s!9460 Nil!28561)))))))

(declare-fun d!707014 () Bool)

(assert (=> d!707014 e!1556756))

(declare-fun c!391473 () Bool)

(assert (=> d!707014 (= c!391473 ((_ is EmptyExpr!7211) lt!879916))))

(assert (=> d!707014 (= lt!879923 e!1556758)))

(declare-fun c!391474 () Bool)

(assert (=> d!707014 (= c!391474 (isEmpty!16593 (++!7102 s!9460 Nil!28561)))))

(assert (=> d!707014 (validRegex!2905 lt!879916)))

(assert (=> d!707014 (= (matchR!3326 lt!879916 (++!7102 s!9460 Nil!28561)) lt!879923)))

(declare-fun b!2453087 () Bool)

(declare-fun res!1040184 () Bool)

(assert (=> b!2453087 (=> (not res!1040184) (not e!1556760))))

(assert (=> b!2453087 (= res!1040184 (not call!150702))))

(assert (= (and d!707014 c!391474) b!2453084))

(assert (= (and d!707014 (not c!391474)) b!2453077))

(assert (= (and d!707014 c!391473) b!2453076))

(assert (= (and d!707014 (not c!391473)) b!2453080))

(assert (= (and b!2453080 c!391472) b!2453086))

(assert (= (and b!2453080 (not c!391472)) b!2453079))

(assert (= (and b!2453079 (not res!1040186)) b!2453083))

(assert (= (and b!2453083 res!1040185) b!2453087))

(assert (= (and b!2453087 res!1040184) b!2453088))

(assert (= (and b!2453088 res!1040187) b!2453085))

(assert (= (and b!2453083 (not res!1040183)) b!2453081))

(assert (= (and b!2453081 res!1040189) b!2453078))

(assert (= (and b!2453078 (not res!1040188)) b!2453089))

(assert (= (and b!2453089 (not res!1040182)) b!2453082))

(assert (= (or b!2453076 b!2453078 b!2453087) bm!150697))

(assert (=> b!2453088 m!2825631))

(declare-fun m!2825665 () Bool)

(assert (=> b!2453088 m!2825665))

(assert (=> b!2453088 m!2825665))

(declare-fun m!2825667 () Bool)

(assert (=> b!2453088 m!2825667))

(declare-fun m!2825669 () Bool)

(assert (=> b!2453084 m!2825669))

(assert (=> b!2453082 m!2825631))

(declare-fun m!2825671 () Bool)

(assert (=> b!2453082 m!2825671))

(assert (=> b!2453089 m!2825631))

(assert (=> b!2453089 m!2825665))

(assert (=> b!2453089 m!2825665))

(assert (=> b!2453089 m!2825667))

(assert (=> d!707014 m!2825631))

(declare-fun m!2825673 () Bool)

(assert (=> d!707014 m!2825673))

(declare-fun m!2825675 () Bool)

(assert (=> d!707014 m!2825675))

(assert (=> b!2453085 m!2825631))

(assert (=> b!2453085 m!2825671))

(assert (=> b!2453077 m!2825631))

(assert (=> b!2453077 m!2825671))

(assert (=> b!2453077 m!2825671))

(declare-fun m!2825677 () Bool)

(assert (=> b!2453077 m!2825677))

(assert (=> b!2453077 m!2825631))

(assert (=> b!2453077 m!2825665))

(assert (=> b!2453077 m!2825677))

(assert (=> b!2453077 m!2825665))

(declare-fun m!2825679 () Bool)

(assert (=> b!2453077 m!2825679))

(assert (=> bm!150697 m!2825631))

(assert (=> bm!150697 m!2825673))

(assert (=> b!2453012 d!707014))

(declare-fun b!2453130 () Bool)

(declare-fun res!1040200 () Bool)

(declare-fun e!1556785 () Bool)

(assert (=> b!2453130 (=> (not res!1040200) (not e!1556785))))

(declare-fun lt!879929 () List!28659)

(declare-fun size!22271 (List!28659) Int)

(assert (=> b!2453130 (= res!1040200 (= (size!22271 lt!879929) (+ (size!22271 s!9460) (size!22271 Nil!28561))))))

(declare-fun d!707018 () Bool)

(assert (=> d!707018 e!1556785))

(declare-fun res!1040201 () Bool)

(assert (=> d!707018 (=> (not res!1040201) (not e!1556785))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3933 (List!28659) (InoxSet C!14580))

(assert (=> d!707018 (= res!1040201 (= (content!3933 lt!879929) ((_ map or) (content!3933 s!9460) (content!3933 Nil!28561))))))

(declare-fun e!1556786 () List!28659)

(assert (=> d!707018 (= lt!879929 e!1556786)))

(declare-fun c!391489 () Bool)

(assert (=> d!707018 (= c!391489 ((_ is Nil!28561) s!9460))))

(assert (=> d!707018 (= (++!7102 s!9460 Nil!28561) lt!879929)))

(declare-fun b!2453129 () Bool)

(assert (=> b!2453129 (= e!1556786 (Cons!28561 (h!33962 s!9460) (++!7102 (t!208636 s!9460) Nil!28561)))))

(declare-fun b!2453131 () Bool)

(assert (=> b!2453131 (= e!1556785 (or (not (= Nil!28561 Nil!28561)) (= lt!879929 s!9460)))))

(declare-fun b!2453128 () Bool)

(assert (=> b!2453128 (= e!1556786 Nil!28561)))

(assert (= (and d!707018 c!391489) b!2453128))

(assert (= (and d!707018 (not c!391489)) b!2453129))

(assert (= (and d!707018 res!1040201) b!2453130))

(assert (= (and b!2453130 res!1040200) b!2453131))

(declare-fun m!2825681 () Bool)

(assert (=> b!2453130 m!2825681))

(declare-fun m!2825683 () Bool)

(assert (=> b!2453130 m!2825683))

(declare-fun m!2825685 () Bool)

(assert (=> b!2453130 m!2825685))

(declare-fun m!2825687 () Bool)

(assert (=> d!707018 m!2825687))

(declare-fun m!2825689 () Bool)

(assert (=> d!707018 m!2825689))

(declare-fun m!2825691 () Bool)

(assert (=> d!707018 m!2825691))

(declare-fun m!2825693 () Bool)

(assert (=> b!2453129 m!2825693))

(assert (=> b!2453012 d!707018))

(declare-fun d!707020 () Bool)

(assert (=> d!707020 (matchR!3326 (Concat!11847 lt!879918 EmptyExpr!7211) (++!7102 s!9460 Nil!28561))))

(declare-fun lt!879932 () Unit!41877)

(declare-fun choose!14535 (Regex!7211 Regex!7211 List!28659 List!28659) Unit!41877)

(assert (=> d!707020 (= lt!879932 (choose!14535 lt!879918 EmptyExpr!7211 s!9460 Nil!28561))))

(declare-fun e!1556789 () Bool)

(assert (=> d!707020 e!1556789))

(declare-fun res!1040204 () Bool)

(assert (=> d!707020 (=> (not res!1040204) (not e!1556789))))

(assert (=> d!707020 (= res!1040204 (validRegex!2905 lt!879918))))

(assert (=> d!707020 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!128 lt!879918 EmptyExpr!7211 s!9460 Nil!28561) lt!879932)))

(declare-fun b!2453134 () Bool)

(assert (=> b!2453134 (= e!1556789 (validRegex!2905 EmptyExpr!7211))))

(assert (= (and d!707020 res!1040204) b!2453134))

(assert (=> d!707020 m!2825631))

(assert (=> d!707020 m!2825631))

(declare-fun m!2825713 () Bool)

(assert (=> d!707020 m!2825713))

(declare-fun m!2825715 () Bool)

(assert (=> d!707020 m!2825715))

(assert (=> d!707020 m!2825629))

(declare-fun m!2825717 () Bool)

(assert (=> b!2453134 m!2825717))

(assert (=> b!2453012 d!707020))

(declare-fun d!707024 () Bool)

(assert (=> d!707024 (= (isEmpty!16592 l!9164) ((_ is Nil!28560) l!9164))))

(assert (=> b!2453007 d!707024))

(declare-fun d!707026 () Bool)

(assert (=> d!707026 (= (isEmpty!16592 lt!879920) ((_ is Nil!28560) lt!879920))))

(assert (=> b!2453008 d!707026))

(declare-fun d!707028 () Bool)

(assert (=> d!707028 (= (tail!3858 l!9164) (t!208635 l!9164))))

(assert (=> b!2453008 d!707028))

(declare-fun b!2453135 () Bool)

(declare-fun e!1556790 () Bool)

(declare-fun lt!879933 () Bool)

(declare-fun call!150703 () Bool)

(assert (=> b!2453135 (= e!1556790 (= lt!879933 call!150703))))

(declare-fun b!2453136 () Bool)

(declare-fun e!1556792 () Bool)

(assert (=> b!2453136 (= e!1556792 (matchR!3326 (derivativeStep!1865 lt!879918 (head!5586 s!9460)) (tail!3859 s!9460)))))

(declare-fun b!2453137 () Bool)

(declare-fun e!1556796 () Bool)

(declare-fun e!1556793 () Bool)

(assert (=> b!2453137 (= e!1556796 e!1556793)))

(declare-fun res!1040211 () Bool)

(assert (=> b!2453137 (=> res!1040211 e!1556793)))

(assert (=> b!2453137 (= res!1040211 call!150703)))

(declare-fun b!2453138 () Bool)

(declare-fun res!1040209 () Bool)

(declare-fun e!1556791 () Bool)

(assert (=> b!2453138 (=> res!1040209 e!1556791)))

(assert (=> b!2453138 (= res!1040209 (not ((_ is ElementMatch!7211) lt!879918)))))

(declare-fun e!1556795 () Bool)

(assert (=> b!2453138 (= e!1556795 e!1556791)))

(declare-fun b!2453139 () Bool)

(assert (=> b!2453139 (= e!1556790 e!1556795)))

(declare-fun c!391490 () Bool)

(assert (=> b!2453139 (= c!391490 ((_ is EmptyLang!7211) lt!879918))))

(declare-fun b!2453140 () Bool)

(assert (=> b!2453140 (= e!1556791 e!1556796)))

(declare-fun res!1040212 () Bool)

(assert (=> b!2453140 (=> (not res!1040212) (not e!1556796))))

(assert (=> b!2453140 (= res!1040212 (not lt!879933))))

(declare-fun b!2453141 () Bool)

(assert (=> b!2453141 (= e!1556793 (not (= (head!5586 s!9460) (c!391459 lt!879918))))))

(declare-fun b!2453142 () Bool)

(declare-fun res!1040206 () Bool)

(assert (=> b!2453142 (=> res!1040206 e!1556791)))

(declare-fun e!1556794 () Bool)

(assert (=> b!2453142 (= res!1040206 e!1556794)))

(declare-fun res!1040208 () Bool)

(assert (=> b!2453142 (=> (not res!1040208) (not e!1556794))))

(assert (=> b!2453142 (= res!1040208 lt!879933)))

(declare-fun b!2453143 () Bool)

(assert (=> b!2453143 (= e!1556792 (nullable!2211 lt!879918))))

(declare-fun b!2453144 () Bool)

(assert (=> b!2453144 (= e!1556794 (= (head!5586 s!9460) (c!391459 lt!879918)))))

(declare-fun bm!150698 () Bool)

(assert (=> bm!150698 (= call!150703 (isEmpty!16593 s!9460))))

(declare-fun b!2453145 () Bool)

(assert (=> b!2453145 (= e!1556795 (not lt!879933))))

(declare-fun b!2453147 () Bool)

(declare-fun res!1040210 () Bool)

(assert (=> b!2453147 (=> (not res!1040210) (not e!1556794))))

(assert (=> b!2453147 (= res!1040210 (isEmpty!16593 (tail!3859 s!9460)))))

(declare-fun b!2453148 () Bool)

(declare-fun res!1040205 () Bool)

(assert (=> b!2453148 (=> res!1040205 e!1556793)))

(assert (=> b!2453148 (= res!1040205 (not (isEmpty!16593 (tail!3859 s!9460))))))

(declare-fun d!707030 () Bool)

(assert (=> d!707030 e!1556790))

(declare-fun c!391491 () Bool)

(assert (=> d!707030 (= c!391491 ((_ is EmptyExpr!7211) lt!879918))))

(assert (=> d!707030 (= lt!879933 e!1556792)))

(declare-fun c!391492 () Bool)

(assert (=> d!707030 (= c!391492 (isEmpty!16593 s!9460))))

(assert (=> d!707030 (validRegex!2905 lt!879918)))

(assert (=> d!707030 (= (matchR!3326 lt!879918 s!9460) lt!879933)))

(declare-fun b!2453146 () Bool)

(declare-fun res!1040207 () Bool)

(assert (=> b!2453146 (=> (not res!1040207) (not e!1556794))))

(assert (=> b!2453146 (= res!1040207 (not call!150703))))

(assert (= (and d!707030 c!391492) b!2453143))

(assert (= (and d!707030 (not c!391492)) b!2453136))

(assert (= (and d!707030 c!391491) b!2453135))

(assert (= (and d!707030 (not c!391491)) b!2453139))

(assert (= (and b!2453139 c!391490) b!2453145))

(assert (= (and b!2453139 (not c!391490)) b!2453138))

(assert (= (and b!2453138 (not res!1040209)) b!2453142))

(assert (= (and b!2453142 res!1040208) b!2453146))

(assert (= (and b!2453146 res!1040207) b!2453147))

(assert (= (and b!2453147 res!1040210) b!2453144))

(assert (= (and b!2453142 (not res!1040206)) b!2453140))

(assert (= (and b!2453140 res!1040212) b!2453137))

(assert (= (and b!2453137 (not res!1040211)) b!2453148))

(assert (= (and b!2453148 (not res!1040205)) b!2453141))

(assert (= (or b!2453135 b!2453137 b!2453146) bm!150698))

(declare-fun m!2825719 () Bool)

(assert (=> b!2453147 m!2825719))

(assert (=> b!2453147 m!2825719))

(declare-fun m!2825721 () Bool)

(assert (=> b!2453147 m!2825721))

(declare-fun m!2825723 () Bool)

(assert (=> b!2453143 m!2825723))

(declare-fun m!2825725 () Bool)

(assert (=> b!2453141 m!2825725))

(assert (=> b!2453148 m!2825719))

(assert (=> b!2453148 m!2825719))

(assert (=> b!2453148 m!2825721))

(declare-fun m!2825727 () Bool)

(assert (=> d!707030 m!2825727))

(assert (=> d!707030 m!2825629))

(assert (=> b!2453144 m!2825725))

(assert (=> b!2453136 m!2825725))

(assert (=> b!2453136 m!2825725))

(declare-fun m!2825729 () Bool)

(assert (=> b!2453136 m!2825729))

(assert (=> b!2453136 m!2825719))

(assert (=> b!2453136 m!2825729))

(assert (=> b!2453136 m!2825719))

(declare-fun m!2825731 () Bool)

(assert (=> b!2453136 m!2825731))

(assert (=> bm!150698 m!2825727))

(assert (=> b!2453019 d!707030))

(declare-fun d!707032 () Bool)

(assert (=> d!707032 (= (head!5585 l!9164) (h!33961 l!9164))))

(assert (=> b!2453019 d!707032))

(declare-fun bs!465803 () Bool)

(declare-fun d!707034 () Bool)

(assert (= bs!465803 (and d!707034 start!239438)))

(declare-fun lambda!92919 () Int)

(assert (=> bs!465803 (= lambda!92919 lambda!92913)))

(declare-fun b!2453211 () Bool)

(declare-fun e!1556834 () Regex!7211)

(assert (=> b!2453211 (= e!1556834 (h!33961 lt!879920))))

(declare-fun b!2453212 () Bool)

(declare-fun e!1556833 () Bool)

(declare-fun e!1556831 () Bool)

(assert (=> b!2453212 (= e!1556833 e!1556831)))

(declare-fun c!391510 () Bool)

(assert (=> b!2453212 (= c!391510 (isEmpty!16592 (tail!3858 lt!879920)))))

(declare-fun b!2453213 () Bool)

(declare-fun e!1556835 () Regex!7211)

(assert (=> b!2453213 (= e!1556834 e!1556835)))

(declare-fun c!391513 () Bool)

(assert (=> b!2453213 (= c!391513 ((_ is Cons!28560) lt!879920))))

(declare-fun b!2453214 () Bool)

(assert (=> b!2453214 (= e!1556835 EmptyExpr!7211)))

(declare-fun b!2453215 () Bool)

(assert (=> b!2453215 (= e!1556835 (Concat!11847 (h!33961 lt!879920) (generalisedConcat!312 (t!208635 lt!879920))))))

(declare-fun e!1556830 () Bool)

(assert (=> d!707034 e!1556830))

(declare-fun res!1040242 () Bool)

(assert (=> d!707034 (=> (not res!1040242) (not e!1556830))))

(declare-fun lt!879939 () Regex!7211)

(assert (=> d!707034 (= res!1040242 (validRegex!2905 lt!879939))))

(assert (=> d!707034 (= lt!879939 e!1556834)))

(declare-fun c!391511 () Bool)

(declare-fun e!1556832 () Bool)

(assert (=> d!707034 (= c!391511 e!1556832)))

(declare-fun res!1040241 () Bool)

(assert (=> d!707034 (=> (not res!1040241) (not e!1556832))))

(assert (=> d!707034 (= res!1040241 ((_ is Cons!28560) lt!879920))))

(assert (=> d!707034 (forall!5845 lt!879920 lambda!92919)))

(assert (=> d!707034 (= (generalisedConcat!312 lt!879920) lt!879939)))

(declare-fun b!2453216 () Bool)

(assert (=> b!2453216 (= e!1556830 e!1556833)))

(declare-fun c!391512 () Bool)

(assert (=> b!2453216 (= c!391512 (isEmpty!16592 lt!879920))))

(declare-fun b!2453217 () Bool)

(declare-fun isEmptyExpr!231 (Regex!7211) Bool)

(assert (=> b!2453217 (= e!1556833 (isEmptyExpr!231 lt!879939))))

(declare-fun b!2453218 () Bool)

(declare-fun isConcat!231 (Regex!7211) Bool)

(assert (=> b!2453218 (= e!1556831 (isConcat!231 lt!879939))))

(declare-fun b!2453219 () Bool)

(assert (=> b!2453219 (= e!1556831 (= lt!879939 (head!5585 lt!879920)))))

(declare-fun b!2453220 () Bool)

(assert (=> b!2453220 (= e!1556832 (isEmpty!16592 (t!208635 lt!879920)))))

(assert (= (and d!707034 res!1040241) b!2453220))

(assert (= (and d!707034 c!391511) b!2453211))

(assert (= (and d!707034 (not c!391511)) b!2453213))

(assert (= (and b!2453213 c!391513) b!2453215))

(assert (= (and b!2453213 (not c!391513)) b!2453214))

(assert (= (and d!707034 res!1040242) b!2453216))

(assert (= (and b!2453216 c!391512) b!2453217))

(assert (= (and b!2453216 (not c!391512)) b!2453212))

(assert (= (and b!2453212 c!391510) b!2453219))

(assert (= (and b!2453212 (not c!391510)) b!2453218))

(declare-fun m!2825747 () Bool)

(assert (=> b!2453217 m!2825747))

(declare-fun m!2825749 () Bool)

(assert (=> b!2453220 m!2825749))

(assert (=> b!2453216 m!2825647))

(declare-fun m!2825751 () Bool)

(assert (=> b!2453219 m!2825751))

(declare-fun m!2825753 () Bool)

(assert (=> b!2453212 m!2825753))

(assert (=> b!2453212 m!2825753))

(declare-fun m!2825755 () Bool)

(assert (=> b!2453212 m!2825755))

(declare-fun m!2825757 () Bool)

(assert (=> b!2453218 m!2825757))

(declare-fun m!2825759 () Bool)

(assert (=> d!707034 m!2825759))

(declare-fun m!2825761 () Bool)

(assert (=> d!707034 m!2825761))

(declare-fun m!2825763 () Bool)

(assert (=> b!2453215 m!2825763))

(assert (=> b!2453014 d!707034))

(declare-fun d!707044 () Bool)

(declare-fun res!1040257 () Bool)

(declare-fun e!1556854 () Bool)

(assert (=> d!707044 (=> res!1040257 e!1556854)))

(assert (=> d!707044 (= res!1040257 ((_ is Nil!28560) l!9164))))

(assert (=> d!707044 (= (forall!5845 l!9164 lambda!92913) e!1556854)))

(declare-fun b!2453243 () Bool)

(declare-fun e!1556855 () Bool)

(assert (=> b!2453243 (= e!1556854 e!1556855)))

(declare-fun res!1040258 () Bool)

(assert (=> b!2453243 (=> (not res!1040258) (not e!1556855))))

(declare-fun dynLambda!12270 (Int Regex!7211) Bool)

(assert (=> b!2453243 (= res!1040258 (dynLambda!12270 lambda!92913 (h!33961 l!9164)))))

(declare-fun b!2453244 () Bool)

(assert (=> b!2453244 (= e!1556855 (forall!5845 (t!208635 l!9164) lambda!92913))))

(assert (= (and d!707044 (not res!1040257)) b!2453243))

(assert (= (and b!2453243 res!1040258) b!2453244))

(declare-fun b_lambda!75127 () Bool)

(assert (=> (not b_lambda!75127) (not b!2453243)))

(declare-fun m!2825765 () Bool)

(assert (=> b!2453243 m!2825765))

(declare-fun m!2825767 () Bool)

(assert (=> b!2453244 m!2825767))

(assert (=> start!239438 d!707044))

(declare-fun b!2453245 () Bool)

(declare-fun e!1556856 () Bool)

(declare-fun lt!879940 () Bool)

(declare-fun call!150713 () Bool)

(assert (=> b!2453245 (= e!1556856 (= lt!879940 call!150713))))

(declare-fun b!2453246 () Bool)

(declare-fun e!1556858 () Bool)

(assert (=> b!2453246 (= e!1556858 (matchR!3326 (derivativeStep!1865 r!13927 (head!5586 s!9460)) (tail!3859 s!9460)))))

(declare-fun b!2453247 () Bool)

(declare-fun e!1556862 () Bool)

(declare-fun e!1556859 () Bool)

(assert (=> b!2453247 (= e!1556862 e!1556859)))

(declare-fun res!1040265 () Bool)

(assert (=> b!2453247 (=> res!1040265 e!1556859)))

(assert (=> b!2453247 (= res!1040265 call!150713)))

(declare-fun b!2453248 () Bool)

(declare-fun res!1040263 () Bool)

(declare-fun e!1556857 () Bool)

(assert (=> b!2453248 (=> res!1040263 e!1556857)))

(assert (=> b!2453248 (= res!1040263 (not ((_ is ElementMatch!7211) r!13927)))))

(declare-fun e!1556861 () Bool)

(assert (=> b!2453248 (= e!1556861 e!1556857)))

(declare-fun b!2453249 () Bool)

(assert (=> b!2453249 (= e!1556856 e!1556861)))

(declare-fun c!391518 () Bool)

(assert (=> b!2453249 (= c!391518 ((_ is EmptyLang!7211) r!13927))))

(declare-fun b!2453250 () Bool)

(assert (=> b!2453250 (= e!1556857 e!1556862)))

(declare-fun res!1040266 () Bool)

(assert (=> b!2453250 (=> (not res!1040266) (not e!1556862))))

(assert (=> b!2453250 (= res!1040266 (not lt!879940))))

(declare-fun b!2453251 () Bool)

(assert (=> b!2453251 (= e!1556859 (not (= (head!5586 s!9460) (c!391459 r!13927))))))

(declare-fun b!2453252 () Bool)

(declare-fun res!1040260 () Bool)

(assert (=> b!2453252 (=> res!1040260 e!1556857)))

(declare-fun e!1556860 () Bool)

(assert (=> b!2453252 (= res!1040260 e!1556860)))

(declare-fun res!1040262 () Bool)

(assert (=> b!2453252 (=> (not res!1040262) (not e!1556860))))

(assert (=> b!2453252 (= res!1040262 lt!879940)))

(declare-fun b!2453253 () Bool)

(assert (=> b!2453253 (= e!1556858 (nullable!2211 r!13927))))

(declare-fun b!2453254 () Bool)

(assert (=> b!2453254 (= e!1556860 (= (head!5586 s!9460) (c!391459 r!13927)))))

(declare-fun bm!150708 () Bool)

(assert (=> bm!150708 (= call!150713 (isEmpty!16593 s!9460))))

(declare-fun b!2453255 () Bool)

(assert (=> b!2453255 (= e!1556861 (not lt!879940))))

(declare-fun b!2453257 () Bool)

(declare-fun res!1040264 () Bool)

(assert (=> b!2453257 (=> (not res!1040264) (not e!1556860))))

(assert (=> b!2453257 (= res!1040264 (isEmpty!16593 (tail!3859 s!9460)))))

(declare-fun b!2453258 () Bool)

(declare-fun res!1040259 () Bool)

(assert (=> b!2453258 (=> res!1040259 e!1556859)))

(assert (=> b!2453258 (= res!1040259 (not (isEmpty!16593 (tail!3859 s!9460))))))

(declare-fun d!707046 () Bool)

(assert (=> d!707046 e!1556856))

(declare-fun c!391519 () Bool)

(assert (=> d!707046 (= c!391519 ((_ is EmptyExpr!7211) r!13927))))

(assert (=> d!707046 (= lt!879940 e!1556858)))

(declare-fun c!391520 () Bool)

(assert (=> d!707046 (= c!391520 (isEmpty!16593 s!9460))))

(assert (=> d!707046 (validRegex!2905 r!13927)))

(assert (=> d!707046 (= (matchR!3326 r!13927 s!9460) lt!879940)))

(declare-fun b!2453256 () Bool)

(declare-fun res!1040261 () Bool)

(assert (=> b!2453256 (=> (not res!1040261) (not e!1556860))))

(assert (=> b!2453256 (= res!1040261 (not call!150713))))

(assert (= (and d!707046 c!391520) b!2453253))

(assert (= (and d!707046 (not c!391520)) b!2453246))

(assert (= (and d!707046 c!391519) b!2453245))

(assert (= (and d!707046 (not c!391519)) b!2453249))

(assert (= (and b!2453249 c!391518) b!2453255))

(assert (= (and b!2453249 (not c!391518)) b!2453248))

(assert (= (and b!2453248 (not res!1040263)) b!2453252))

(assert (= (and b!2453252 res!1040262) b!2453256))

(assert (= (and b!2453256 res!1040261) b!2453257))

(assert (= (and b!2453257 res!1040264) b!2453254))

(assert (= (and b!2453252 (not res!1040260)) b!2453250))

(assert (= (and b!2453250 res!1040266) b!2453247))

(assert (= (and b!2453247 (not res!1040265)) b!2453258))

(assert (= (and b!2453258 (not res!1040259)) b!2453251))

(assert (= (or b!2453245 b!2453247 b!2453256) bm!150708))

(assert (=> b!2453257 m!2825719))

(assert (=> b!2453257 m!2825719))

(assert (=> b!2453257 m!2825721))

(declare-fun m!2825769 () Bool)

(assert (=> b!2453253 m!2825769))

(assert (=> b!2453251 m!2825725))

(assert (=> b!2453258 m!2825719))

(assert (=> b!2453258 m!2825719))

(assert (=> b!2453258 m!2825721))

(assert (=> d!707046 m!2825727))

(declare-fun m!2825771 () Bool)

(assert (=> d!707046 m!2825771))

(assert (=> b!2453254 m!2825725))

(assert (=> b!2453246 m!2825725))

(assert (=> b!2453246 m!2825725))

(declare-fun m!2825773 () Bool)

(assert (=> b!2453246 m!2825773))

(assert (=> b!2453246 m!2825719))

(assert (=> b!2453246 m!2825773))

(assert (=> b!2453246 m!2825719))

(declare-fun m!2825775 () Bool)

(assert (=> b!2453246 m!2825775))

(assert (=> bm!150708 m!2825727))

(assert (=> b!2453009 d!707046))

(declare-fun b!2453369 () Bool)

(assert (=> b!2453369 true))

(assert (=> b!2453369 true))

(declare-fun bs!465806 () Bool)

(declare-fun b!2453363 () Bool)

(assert (= bs!465806 (and b!2453363 b!2453369)))

(declare-fun lambda!92926 () Int)

(declare-fun lambda!92925 () Int)

(assert (=> bs!465806 (not (= lambda!92926 lambda!92925))))

(assert (=> b!2453363 true))

(assert (=> b!2453363 true))

(declare-fun b!2453359 () Bool)

(declare-fun c!391544 () Bool)

(assert (=> b!2453359 (= c!391544 ((_ is ElementMatch!7211) r!13927))))

(declare-fun e!1556929 () Bool)

(declare-fun e!1556928 () Bool)

(assert (=> b!2453359 (= e!1556929 e!1556928)))

(declare-fun b!2453360 () Bool)

(declare-fun e!1556923 () Bool)

(assert (=> b!2453360 (= e!1556923 e!1556929)))

(declare-fun res!1040323 () Bool)

(assert (=> b!2453360 (= res!1040323 (not ((_ is EmptyLang!7211) r!13927)))))

(assert (=> b!2453360 (=> (not res!1040323) (not e!1556929))))

(declare-fun b!2453361 () Bool)

(assert (=> b!2453361 (= e!1556928 (= s!9460 (Cons!28561 (c!391459 r!13927) Nil!28561)))))

(declare-fun b!2453362 () Bool)

(declare-fun res!1040322 () Bool)

(declare-fun e!1556925 () Bool)

(assert (=> b!2453362 (=> res!1040322 e!1556925)))

(declare-fun call!150724 () Bool)

(assert (=> b!2453362 (= res!1040322 call!150724)))

(declare-fun e!1556926 () Bool)

(assert (=> b!2453362 (= e!1556926 e!1556925)))

(declare-fun call!150723 () Bool)

(assert (=> b!2453363 (= e!1556926 call!150723)))

(declare-fun d!707048 () Bool)

(declare-fun c!391547 () Bool)

(assert (=> d!707048 (= c!391547 ((_ is EmptyExpr!7211) r!13927))))

(assert (=> d!707048 (= (matchRSpec!1058 r!13927 s!9460) e!1556923)))

(declare-fun bm!150718 () Bool)

(assert (=> bm!150718 (= call!150724 (isEmpty!16593 s!9460))))

(declare-fun b!2453364 () Bool)

(declare-fun e!1556927 () Bool)

(declare-fun e!1556924 () Bool)

(assert (=> b!2453364 (= e!1556927 e!1556924)))

(declare-fun res!1040321 () Bool)

(assert (=> b!2453364 (= res!1040321 (matchRSpec!1058 (regOne!14935 r!13927) s!9460))))

(assert (=> b!2453364 (=> res!1040321 e!1556924)))

(declare-fun b!2453365 () Bool)

(declare-fun c!391546 () Bool)

(assert (=> b!2453365 (= c!391546 ((_ is Union!7211) r!13927))))

(assert (=> b!2453365 (= e!1556928 e!1556927)))

(declare-fun bm!150719 () Bool)

(declare-fun c!391545 () Bool)

(declare-fun Exists!1238 (Int) Bool)

(assert (=> bm!150719 (= call!150723 (Exists!1238 (ite c!391545 lambda!92925 lambda!92926)))))

(declare-fun b!2453366 () Bool)

(assert (=> b!2453366 (= e!1556923 call!150724)))

(declare-fun b!2453367 () Bool)

(assert (=> b!2453367 (= e!1556924 (matchRSpec!1058 (regTwo!14935 r!13927) s!9460))))

(declare-fun b!2453368 () Bool)

(assert (=> b!2453368 (= e!1556927 e!1556926)))

(assert (=> b!2453368 (= c!391545 ((_ is Star!7211) r!13927))))

(assert (=> b!2453369 (= e!1556925 call!150723)))

(assert (= (and d!707048 c!391547) b!2453366))

(assert (= (and d!707048 (not c!391547)) b!2453360))

(assert (= (and b!2453360 res!1040323) b!2453359))

(assert (= (and b!2453359 c!391544) b!2453361))

(assert (= (and b!2453359 (not c!391544)) b!2453365))

(assert (= (and b!2453365 c!391546) b!2453364))

(assert (= (and b!2453365 (not c!391546)) b!2453368))

(assert (= (and b!2453364 (not res!1040321)) b!2453367))

(assert (= (and b!2453368 c!391545) b!2453362))

(assert (= (and b!2453368 (not c!391545)) b!2453363))

(assert (= (and b!2453362 (not res!1040322)) b!2453369))

(assert (= (or b!2453369 b!2453363) bm!150719))

(assert (= (or b!2453366 b!2453362) bm!150718))

(assert (=> bm!150718 m!2825727))

(declare-fun m!2825845 () Bool)

(assert (=> b!2453364 m!2825845))

(declare-fun m!2825847 () Bool)

(assert (=> bm!150719 m!2825847))

(declare-fun m!2825849 () Bool)

(assert (=> b!2453367 m!2825849))

(assert (=> b!2453009 d!707048))

(declare-fun d!707066 () Bool)

(assert (=> d!707066 (= (matchR!3326 r!13927 s!9460) (matchRSpec!1058 r!13927 s!9460))))

(declare-fun lt!879952 () Unit!41877)

(declare-fun choose!14538 (Regex!7211 List!28659) Unit!41877)

(assert (=> d!707066 (= lt!879952 (choose!14538 r!13927 s!9460))))

(assert (=> d!707066 (validRegex!2905 r!13927)))

(assert (=> d!707066 (= (mainMatchTheorem!1058 r!13927 s!9460) lt!879952)))

(declare-fun bs!465807 () Bool)

(assert (= bs!465807 d!707066))

(assert (=> bs!465807 m!2825641))

(assert (=> bs!465807 m!2825643))

(declare-fun m!2825851 () Bool)

(assert (=> bs!465807 m!2825851))

(assert (=> bs!465807 m!2825771))

(assert (=> b!2453009 d!707066))

(declare-fun bs!465808 () Bool)

(declare-fun d!707068 () Bool)

(assert (= bs!465808 (and d!707068 start!239438)))

(declare-fun lambda!92927 () Int)

(assert (=> bs!465808 (= lambda!92927 lambda!92913)))

(declare-fun bs!465809 () Bool)

(assert (= bs!465809 (and d!707068 d!707034)))

(assert (=> bs!465809 (= lambda!92927 lambda!92919)))

(declare-fun b!2453383 () Bool)

(declare-fun e!1556938 () Regex!7211)

(assert (=> b!2453383 (= e!1556938 (h!33961 l!9164))))

(declare-fun b!2453385 () Bool)

(declare-fun e!1556937 () Bool)

(declare-fun e!1556935 () Bool)

(assert (=> b!2453385 (= e!1556937 e!1556935)))

(declare-fun c!391550 () Bool)

(assert (=> b!2453385 (= c!391550 (isEmpty!16592 (tail!3858 l!9164)))))

(declare-fun b!2453386 () Bool)

(declare-fun e!1556939 () Regex!7211)

(assert (=> b!2453386 (= e!1556938 e!1556939)))

(declare-fun c!391553 () Bool)

(assert (=> b!2453386 (= c!391553 ((_ is Cons!28560) l!9164))))

(declare-fun b!2453387 () Bool)

(assert (=> b!2453387 (= e!1556939 EmptyExpr!7211)))

(declare-fun b!2453388 () Bool)

(assert (=> b!2453388 (= e!1556939 (Concat!11847 (h!33961 l!9164) (generalisedConcat!312 (t!208635 l!9164))))))

(declare-fun e!1556934 () Bool)

(assert (=> d!707068 e!1556934))

(declare-fun res!1040327 () Bool)

(assert (=> d!707068 (=> (not res!1040327) (not e!1556934))))

(declare-fun lt!879953 () Regex!7211)

(assert (=> d!707068 (= res!1040327 (validRegex!2905 lt!879953))))

(assert (=> d!707068 (= lt!879953 e!1556938)))

(declare-fun c!391551 () Bool)

(declare-fun e!1556936 () Bool)

(assert (=> d!707068 (= c!391551 e!1556936)))

(declare-fun res!1040326 () Bool)

(assert (=> d!707068 (=> (not res!1040326) (not e!1556936))))

(assert (=> d!707068 (= res!1040326 ((_ is Cons!28560) l!9164))))

(assert (=> d!707068 (forall!5845 l!9164 lambda!92927)))

(assert (=> d!707068 (= (generalisedConcat!312 l!9164) lt!879953)))

(declare-fun b!2453389 () Bool)

(assert (=> b!2453389 (= e!1556934 e!1556937)))

(declare-fun c!391552 () Bool)

(assert (=> b!2453389 (= c!391552 (isEmpty!16592 l!9164))))

(declare-fun b!2453390 () Bool)

(assert (=> b!2453390 (= e!1556937 (isEmptyExpr!231 lt!879953))))

(declare-fun b!2453391 () Bool)

(assert (=> b!2453391 (= e!1556935 (isConcat!231 lt!879953))))

(declare-fun b!2453392 () Bool)

(assert (=> b!2453392 (= e!1556935 (= lt!879953 (head!5585 l!9164)))))

(declare-fun b!2453393 () Bool)

(assert (=> b!2453393 (= e!1556936 (isEmpty!16592 (t!208635 l!9164)))))

(assert (= (and d!707068 res!1040326) b!2453393))

(assert (= (and d!707068 c!391551) b!2453383))

(assert (= (and d!707068 (not c!391551)) b!2453386))

(assert (= (and b!2453386 c!391553) b!2453388))

(assert (= (and b!2453386 (not c!391553)) b!2453387))

(assert (= (and d!707068 res!1040327) b!2453389))

(assert (= (and b!2453389 c!391552) b!2453390))

(assert (= (and b!2453389 (not c!391552)) b!2453385))

(assert (= (and b!2453385 c!391550) b!2453392))

(assert (= (and b!2453385 (not c!391550)) b!2453391))

(declare-fun m!2825853 () Bool)

(assert (=> b!2453390 m!2825853))

(declare-fun m!2825855 () Bool)

(assert (=> b!2453393 m!2825855))

(assert (=> b!2453389 m!2825653))

(assert (=> b!2453392 m!2825657))

(assert (=> b!2453385 m!2825649))

(assert (=> b!2453385 m!2825649))

(declare-fun m!2825857 () Bool)

(assert (=> b!2453385 m!2825857))

(declare-fun m!2825859 () Bool)

(assert (=> b!2453391 m!2825859))

(declare-fun m!2825861 () Bool)

(assert (=> d!707068 m!2825861))

(declare-fun m!2825863 () Bool)

(assert (=> d!707068 m!2825863))

(declare-fun m!2825865 () Bool)

(assert (=> b!2453388 m!2825865))

(assert (=> b!2453015 d!707068))

(declare-fun b!2453406 () Bool)

(declare-fun e!1556950 () Bool)

(declare-fun lt!879954 () Bool)

(declare-fun call!150725 () Bool)

(assert (=> b!2453406 (= e!1556950 (= lt!879954 call!150725))))

(declare-fun b!2453407 () Bool)

(declare-fun e!1556952 () Bool)

(assert (=> b!2453407 (= e!1556952 (matchR!3326 (derivativeStep!1865 lt!879916 (head!5586 s!9460)) (tail!3859 s!9460)))))

(declare-fun b!2453408 () Bool)

(declare-fun e!1556956 () Bool)

(declare-fun e!1556953 () Bool)

(assert (=> b!2453408 (= e!1556956 e!1556953)))

(declare-fun res!1040338 () Bool)

(assert (=> b!2453408 (=> res!1040338 e!1556953)))

(assert (=> b!2453408 (= res!1040338 call!150725)))

(declare-fun b!2453409 () Bool)

(declare-fun res!1040336 () Bool)

(declare-fun e!1556951 () Bool)

(assert (=> b!2453409 (=> res!1040336 e!1556951)))

(assert (=> b!2453409 (= res!1040336 (not ((_ is ElementMatch!7211) lt!879916)))))

(declare-fun e!1556955 () Bool)

(assert (=> b!2453409 (= e!1556955 e!1556951)))

(declare-fun b!2453410 () Bool)

(assert (=> b!2453410 (= e!1556950 e!1556955)))

(declare-fun c!391560 () Bool)

(assert (=> b!2453410 (= c!391560 ((_ is EmptyLang!7211) lt!879916))))

(declare-fun b!2453411 () Bool)

(assert (=> b!2453411 (= e!1556951 e!1556956)))

(declare-fun res!1040339 () Bool)

(assert (=> b!2453411 (=> (not res!1040339) (not e!1556956))))

(assert (=> b!2453411 (= res!1040339 (not lt!879954))))

(declare-fun b!2453412 () Bool)

(assert (=> b!2453412 (= e!1556953 (not (= (head!5586 s!9460) (c!391459 lt!879916))))))

(declare-fun b!2453413 () Bool)

(declare-fun res!1040333 () Bool)

(assert (=> b!2453413 (=> res!1040333 e!1556951)))

(declare-fun e!1556954 () Bool)

(assert (=> b!2453413 (= res!1040333 e!1556954)))

(declare-fun res!1040335 () Bool)

(assert (=> b!2453413 (=> (not res!1040335) (not e!1556954))))

(assert (=> b!2453413 (= res!1040335 lt!879954)))

(declare-fun b!2453414 () Bool)

(assert (=> b!2453414 (= e!1556952 (nullable!2211 lt!879916))))

(declare-fun b!2453415 () Bool)

(assert (=> b!2453415 (= e!1556954 (= (head!5586 s!9460) (c!391459 lt!879916)))))

(declare-fun bm!150720 () Bool)

(assert (=> bm!150720 (= call!150725 (isEmpty!16593 s!9460))))

(declare-fun b!2453416 () Bool)

(assert (=> b!2453416 (= e!1556955 (not lt!879954))))

(declare-fun b!2453418 () Bool)

(declare-fun res!1040337 () Bool)

(assert (=> b!2453418 (=> (not res!1040337) (not e!1556954))))

(assert (=> b!2453418 (= res!1040337 (isEmpty!16593 (tail!3859 s!9460)))))

(declare-fun b!2453419 () Bool)

(declare-fun res!1040332 () Bool)

(assert (=> b!2453419 (=> res!1040332 e!1556953)))

(assert (=> b!2453419 (= res!1040332 (not (isEmpty!16593 (tail!3859 s!9460))))))

(declare-fun d!707070 () Bool)

(assert (=> d!707070 e!1556950))

(declare-fun c!391561 () Bool)

(assert (=> d!707070 (= c!391561 ((_ is EmptyExpr!7211) lt!879916))))

(assert (=> d!707070 (= lt!879954 e!1556952)))

(declare-fun c!391562 () Bool)

(assert (=> d!707070 (= c!391562 (isEmpty!16593 s!9460))))

(assert (=> d!707070 (validRegex!2905 lt!879916)))

(assert (=> d!707070 (= (matchR!3326 lt!879916 s!9460) lt!879954)))

(declare-fun b!2453417 () Bool)

(declare-fun res!1040334 () Bool)

(assert (=> b!2453417 (=> (not res!1040334) (not e!1556954))))

(assert (=> b!2453417 (= res!1040334 (not call!150725))))

(assert (= (and d!707070 c!391562) b!2453414))

(assert (= (and d!707070 (not c!391562)) b!2453407))

(assert (= (and d!707070 c!391561) b!2453406))

(assert (= (and d!707070 (not c!391561)) b!2453410))

(assert (= (and b!2453410 c!391560) b!2453416))

(assert (= (and b!2453410 (not c!391560)) b!2453409))

(assert (= (and b!2453409 (not res!1040336)) b!2453413))

(assert (= (and b!2453413 res!1040335) b!2453417))

(assert (= (and b!2453417 res!1040334) b!2453418))

(assert (= (and b!2453418 res!1040337) b!2453415))

(assert (= (and b!2453413 (not res!1040333)) b!2453411))

(assert (= (and b!2453411 res!1040339) b!2453408))

(assert (= (and b!2453408 (not res!1040338)) b!2453419))

(assert (= (and b!2453419 (not res!1040332)) b!2453412))

(assert (= (or b!2453406 b!2453408 b!2453417) bm!150720))

(assert (=> b!2453418 m!2825719))

(assert (=> b!2453418 m!2825719))

(assert (=> b!2453418 m!2825721))

(assert (=> b!2453414 m!2825669))

(assert (=> b!2453412 m!2825725))

(assert (=> b!2453419 m!2825719))

(assert (=> b!2453419 m!2825719))

(assert (=> b!2453419 m!2825721))

(assert (=> d!707070 m!2825727))

(assert (=> d!707070 m!2825675))

(assert (=> b!2453415 m!2825725))

(assert (=> b!2453407 m!2825725))

(assert (=> b!2453407 m!2825725))

(declare-fun m!2825867 () Bool)

(assert (=> b!2453407 m!2825867))

(assert (=> b!2453407 m!2825719))

(assert (=> b!2453407 m!2825867))

(assert (=> b!2453407 m!2825719))

(declare-fun m!2825869 () Bool)

(assert (=> b!2453407 m!2825869))

(assert (=> bm!150720 m!2825727))

(assert (=> b!2453011 d!707070))

(declare-fun b!2453439 () Bool)

(declare-fun e!1556961 () Bool)

(declare-fun tp!780324 () Bool)

(declare-fun tp!780325 () Bool)

(assert (=> b!2453439 (= e!1556961 (and tp!780324 tp!780325))))

(declare-fun b!2453437 () Bool)

(declare-fun tp!780322 () Bool)

(declare-fun tp!780323 () Bool)

(assert (=> b!2453437 (= e!1556961 (and tp!780322 tp!780323))))

(assert (=> b!2453017 (= tp!780310 e!1556961)))

(declare-fun b!2453436 () Bool)

(assert (=> b!2453436 (= e!1556961 tp_is_empty!11835)))

(declare-fun b!2453438 () Bool)

(declare-fun tp!780326 () Bool)

(assert (=> b!2453438 (= e!1556961 tp!780326)))

(assert (= (and b!2453017 ((_ is ElementMatch!7211) (regOne!14934 r!13927))) b!2453436))

(assert (= (and b!2453017 ((_ is Concat!11847) (regOne!14934 r!13927))) b!2453437))

(assert (= (and b!2453017 ((_ is Star!7211) (regOne!14934 r!13927))) b!2453438))

(assert (= (and b!2453017 ((_ is Union!7211) (regOne!14934 r!13927))) b!2453439))

(declare-fun b!2453443 () Bool)

(declare-fun e!1556962 () Bool)

(declare-fun tp!780329 () Bool)

(declare-fun tp!780330 () Bool)

(assert (=> b!2453443 (= e!1556962 (and tp!780329 tp!780330))))

(declare-fun b!2453441 () Bool)

(declare-fun tp!780327 () Bool)

(declare-fun tp!780328 () Bool)

(assert (=> b!2453441 (= e!1556962 (and tp!780327 tp!780328))))

(assert (=> b!2453017 (= tp!780304 e!1556962)))

(declare-fun b!2453440 () Bool)

(assert (=> b!2453440 (= e!1556962 tp_is_empty!11835)))

(declare-fun b!2453442 () Bool)

(declare-fun tp!780331 () Bool)

(assert (=> b!2453442 (= e!1556962 tp!780331)))

(assert (= (and b!2453017 ((_ is ElementMatch!7211) (regTwo!14934 r!13927))) b!2453440))

(assert (= (and b!2453017 ((_ is Concat!11847) (regTwo!14934 r!13927))) b!2453441))

(assert (= (and b!2453017 ((_ is Star!7211) (regTwo!14934 r!13927))) b!2453442))

(assert (= (and b!2453017 ((_ is Union!7211) (regTwo!14934 r!13927))) b!2453443))

(declare-fun b!2453452 () Bool)

(declare-fun e!1556967 () Bool)

(declare-fun tp!780334 () Bool)

(assert (=> b!2453452 (= e!1556967 (and tp_is_empty!11835 tp!780334))))

(assert (=> b!2453018 (= tp!780308 e!1556967)))

(assert (= (and b!2453018 ((_ is Cons!28561) (t!208636 s!9460))) b!2453452))

(declare-fun b!2453456 () Bool)

(declare-fun e!1556968 () Bool)

(declare-fun tp!780337 () Bool)

(declare-fun tp!780338 () Bool)

(assert (=> b!2453456 (= e!1556968 (and tp!780337 tp!780338))))

(declare-fun b!2453454 () Bool)

(declare-fun tp!780335 () Bool)

(declare-fun tp!780336 () Bool)

(assert (=> b!2453454 (= e!1556968 (and tp!780335 tp!780336))))

(assert (=> b!2453013 (= tp!780306 e!1556968)))

(declare-fun b!2453453 () Bool)

(assert (=> b!2453453 (= e!1556968 tp_is_empty!11835)))

(declare-fun b!2453455 () Bool)

(declare-fun tp!780339 () Bool)

(assert (=> b!2453455 (= e!1556968 tp!780339)))

(assert (= (and b!2453013 ((_ is ElementMatch!7211) (regOne!14935 r!13927))) b!2453453))

(assert (= (and b!2453013 ((_ is Concat!11847) (regOne!14935 r!13927))) b!2453454))

(assert (= (and b!2453013 ((_ is Star!7211) (regOne!14935 r!13927))) b!2453455))

(assert (= (and b!2453013 ((_ is Union!7211) (regOne!14935 r!13927))) b!2453456))

(declare-fun b!2453460 () Bool)

(declare-fun e!1556969 () Bool)

(declare-fun tp!780342 () Bool)

(declare-fun tp!780343 () Bool)

(assert (=> b!2453460 (= e!1556969 (and tp!780342 tp!780343))))

(declare-fun b!2453458 () Bool)

(declare-fun tp!780340 () Bool)

(declare-fun tp!780341 () Bool)

(assert (=> b!2453458 (= e!1556969 (and tp!780340 tp!780341))))

(assert (=> b!2453013 (= tp!780309 e!1556969)))

(declare-fun b!2453457 () Bool)

(assert (=> b!2453457 (= e!1556969 tp_is_empty!11835)))

(declare-fun b!2453459 () Bool)

(declare-fun tp!780344 () Bool)

(assert (=> b!2453459 (= e!1556969 tp!780344)))

(assert (= (and b!2453013 ((_ is ElementMatch!7211) (regTwo!14935 r!13927))) b!2453457))

(assert (= (and b!2453013 ((_ is Concat!11847) (regTwo!14935 r!13927))) b!2453458))

(assert (= (and b!2453013 ((_ is Star!7211) (regTwo!14935 r!13927))) b!2453459))

(assert (= (and b!2453013 ((_ is Union!7211) (regTwo!14935 r!13927))) b!2453460))

(declare-fun b!2453464 () Bool)

(declare-fun e!1556970 () Bool)

(declare-fun tp!780347 () Bool)

(declare-fun tp!780348 () Bool)

(assert (=> b!2453464 (= e!1556970 (and tp!780347 tp!780348))))

(declare-fun b!2453462 () Bool)

(declare-fun tp!780345 () Bool)

(declare-fun tp!780346 () Bool)

(assert (=> b!2453462 (= e!1556970 (and tp!780345 tp!780346))))

(assert (=> b!2453010 (= tp!780305 e!1556970)))

(declare-fun b!2453461 () Bool)

(assert (=> b!2453461 (= e!1556970 tp_is_empty!11835)))

(declare-fun b!2453463 () Bool)

(declare-fun tp!780349 () Bool)

(assert (=> b!2453463 (= e!1556970 tp!780349)))

(assert (= (and b!2453010 ((_ is ElementMatch!7211) (reg!7540 r!13927))) b!2453461))

(assert (= (and b!2453010 ((_ is Concat!11847) (reg!7540 r!13927))) b!2453462))

(assert (= (and b!2453010 ((_ is Star!7211) (reg!7540 r!13927))) b!2453463))

(assert (= (and b!2453010 ((_ is Union!7211) (reg!7540 r!13927))) b!2453464))

(declare-fun b!2453468 () Bool)

(declare-fun e!1556971 () Bool)

(declare-fun tp!780352 () Bool)

(declare-fun tp!780353 () Bool)

(assert (=> b!2453468 (= e!1556971 (and tp!780352 tp!780353))))

(declare-fun b!2453466 () Bool)

(declare-fun tp!780350 () Bool)

(declare-fun tp!780351 () Bool)

(assert (=> b!2453466 (= e!1556971 (and tp!780350 tp!780351))))

(assert (=> b!2453016 (= tp!780311 e!1556971)))

(declare-fun b!2453465 () Bool)

(assert (=> b!2453465 (= e!1556971 tp_is_empty!11835)))

(declare-fun b!2453467 () Bool)

(declare-fun tp!780354 () Bool)

(assert (=> b!2453467 (= e!1556971 tp!780354)))

(assert (= (and b!2453016 ((_ is ElementMatch!7211) (h!33961 l!9164))) b!2453465))

(assert (= (and b!2453016 ((_ is Concat!11847) (h!33961 l!9164))) b!2453466))

(assert (= (and b!2453016 ((_ is Star!7211) (h!33961 l!9164))) b!2453467))

(assert (= (and b!2453016 ((_ is Union!7211) (h!33961 l!9164))) b!2453468))

(declare-fun b!2453473 () Bool)

(declare-fun e!1556974 () Bool)

(declare-fun tp!780359 () Bool)

(declare-fun tp!780360 () Bool)

(assert (=> b!2453473 (= e!1556974 (and tp!780359 tp!780360))))

(assert (=> b!2453016 (= tp!780307 e!1556974)))

(assert (= (and b!2453016 ((_ is Cons!28560) (t!208635 l!9164))) b!2453473))

(declare-fun b_lambda!75131 () Bool)

(assert (= b_lambda!75127 (or start!239438 b_lambda!75131)))

(declare-fun bs!465810 () Bool)

(declare-fun d!707072 () Bool)

(assert (= bs!465810 (and d!707072 start!239438)))

(assert (=> bs!465810 (= (dynLambda!12270 lambda!92913 (h!33961 l!9164)) (validRegex!2905 (h!33961 l!9164)))))

(declare-fun m!2825871 () Bool)

(assert (=> bs!465810 m!2825871))

(assert (=> b!2453243 d!707072))

(check-sat tp_is_empty!11835 (not d!707046) (not b!2453415) (not b!2453251) (not d!707014) (not b!2453468) (not b!2453212) (not b!2453456) (not b!2453088) (not b!2453412) (not b!2453385) (not b!2453218) (not b!2453077) (not b!2453452) (not b!2453459) (not b!2453473) (not b!2453367) (not b!2453438) (not b!2453437) (not d!707020) (not b!2453257) (not b!2453443) (not b!2453442) (not bs!465810) (not b!2453407) (not b!2453460) (not b!2453414) (not b!2453441) (not b!2453082) (not b!2453141) (not b!2453220) (not b!2453455) (not b!2453458) (not bm!150720) (not b!2453419) (not b!2453144) (not bm!150692) (not b!2453391) (not d!707030) (not b!2453084) (not d!707034) (not b!2453089) (not d!707068) (not d!707018) (not b!2453462) (not b!2453130) (not b!2453129) (not bm!150708) (not b!2453392) (not b!2453041) (not b!2453217) (not b!2453253) (not b_lambda!75131) (not b!2453418) (not b!2453364) (not b!2453389) (not b!2453143) (not b!2453464) (not b!2453393) (not b!2453216) (not bm!150718) (not b!2453390) (not b!2453254) (not b!2453136) (not d!707070) (not b!2453219) (not b!2453388) (not bm!150698) (not b!2453244) (not b!2453467) (not bm!150719) (not b!2453246) (not b!2453147) (not bm!150697) (not d!707066) (not b!2453439) (not b!2453134) (not b!2453454) (not b!2453463) (not b!2453215) (not b!2453466) (not b!2453085) (not b!2453258) (not bm!150693) (not b!2453148))
(check-sat)
