; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!596094 () Bool)

(assert start!596094)

(declare-fun b!5817612 () Bool)

(assert (=> b!5817612 true))

(declare-fun b!5817599 () Bool)

(declare-fun e!3570507 () Bool)

(declare-fun tp!1605223 () Bool)

(assert (=> b!5817599 (= e!3570507 tp!1605223)))

(declare-fun b!5817600 () Bool)

(declare-fun e!3570513 () Bool)

(declare-fun tp_is_empty!40953 () Bool)

(declare-fun tp!1605229 () Bool)

(assert (=> b!5817600 (= e!3570513 (and tp_is_empty!40953 tp!1605229))))

(declare-fun b!5817601 () Bool)

(declare-fun res!2453295 () Bool)

(declare-fun e!3570509 () Bool)

(assert (=> b!5817601 (=> res!2453295 e!3570509)))

(declare-datatypes ((C!31970 0))(
  ( (C!31971 (val!25687 Int)) )
))
(declare-datatypes ((Regex!15850 0))(
  ( (ElementMatch!15850 (c!1030976 C!31970)) (Concat!24695 (regOne!32212 Regex!15850) (regTwo!32212 Regex!15850)) (EmptyExpr!15850) (Star!15850 (reg!16179 Regex!15850)) (EmptyLang!15850) (Union!15850 (regOne!32213 Regex!15850) (regTwo!32213 Regex!15850)) )
))
(declare-datatypes ((List!63849 0))(
  ( (Nil!63725) (Cons!63725 (h!70173 Regex!15850) (t!377204 List!63849)) )
))
(declare-datatypes ((Context!10468 0))(
  ( (Context!10469 (exprs!5734 List!63849)) )
))
(declare-datatypes ((List!63850 0))(
  ( (Nil!63726) (Cons!63726 (h!70174 Context!10468) (t!377205 List!63850)) )
))
(declare-fun zl!343 () List!63850)

(declare-datatypes ((List!63851 0))(
  ( (Nil!63727) (Cons!63727 (h!70175 C!31970) (t!377206 List!63851)) )
))
(declare-fun s!2326 () List!63851)

(assert (=> b!5817601 (= res!2453295 (or (not (is-Cons!63726 zl!343)) (is-Nil!63727 s!2326) (not (= zl!343 (Cons!63726 (h!70174 zl!343) (t!377205 zl!343))))))))

(declare-fun b!5817602 () Bool)

(declare-fun e!3570504 () Bool)

(declare-fun tp!1605230 () Bool)

(declare-fun tp!1605221 () Bool)

(assert (=> b!5817602 (= e!3570504 (and tp!1605230 tp!1605221))))

(declare-fun b!5817603 () Bool)

(declare-fun e!3570510 () Bool)

(declare-fun tp!1605224 () Bool)

(declare-fun inv!82873 (Context!10468) Bool)

(assert (=> b!5817603 (= e!3570510 (and (inv!82873 (h!70174 zl!343)) e!3570507 tp!1605224))))

(declare-fun b!5817604 () Bool)

(declare-fun res!2453302 () Bool)

(declare-fun e!3570512 () Bool)

(assert (=> b!5817604 (=> (not res!2453302) (not e!3570512))))

(declare-fun z!1189 () (Set Context!10468))

(declare-fun toList!9634 ((Set Context!10468)) List!63850)

(assert (=> b!5817604 (= res!2453302 (= (toList!9634 z!1189) zl!343))))

(declare-fun b!5817605 () Bool)

(declare-fun tp!1605227 () Bool)

(assert (=> b!5817605 (= e!3570504 tp!1605227)))

(declare-fun b!5817606 () Bool)

(declare-fun res!2453303 () Bool)

(declare-fun e!3570505 () Bool)

(assert (=> b!5817606 (=> res!2453303 e!3570505)))

(declare-fun lt!2301627 () List!63849)

(declare-fun lambda!318167 () Int)

(declare-fun exists!2266 (List!63849 Int) Bool)

(assert (=> b!5817606 (= res!2453303 (not (exists!2266 lt!2301627 lambda!318167)))))

(declare-fun res!2453301 () Bool)

(assert (=> start!596094 (=> (not res!2453301) (not e!3570512))))

(declare-fun r!7292 () Regex!15850)

(declare-fun validRegex!7586 (Regex!15850) Bool)

(assert (=> start!596094 (= res!2453301 (validRegex!7586 r!7292))))

(assert (=> start!596094 e!3570512))

(assert (=> start!596094 e!3570504))

(declare-fun condSetEmpty!39247 () Bool)

(assert (=> start!596094 (= condSetEmpty!39247 (= z!1189 (as set.empty (Set Context!10468))))))

(declare-fun setRes!39247 () Bool)

(assert (=> start!596094 setRes!39247))

(assert (=> start!596094 e!3570510))

(assert (=> start!596094 e!3570513))

(declare-fun e!3570508 () Bool)

(declare-fun setNonEmpty!39247 () Bool)

(declare-fun setElem!39247 () Context!10468)

(declare-fun tp!1605225 () Bool)

(assert (=> setNonEmpty!39247 (= setRes!39247 (and tp!1605225 (inv!82873 setElem!39247) e!3570508))))

(declare-fun setRest!39247 () (Set Context!10468))

(assert (=> setNonEmpty!39247 (= z!1189 (set.union (set.insert setElem!39247 (as set.empty (Set Context!10468))) setRest!39247))))

(declare-fun b!5817607 () Bool)

(assert (=> b!5817607 (= e!3570512 (not e!3570509))))

(declare-fun res!2453298 () Bool)

(assert (=> b!5817607 (=> res!2453298 e!3570509)))

(declare-fun e!3570511 () Bool)

(assert (=> b!5817607 (= res!2453298 e!3570511)))

(declare-fun res!2453297 () Bool)

(assert (=> b!5817607 (=> (not res!2453297) (not e!3570511))))

(assert (=> b!5817607 (= res!2453297 (is-Cons!63726 zl!343))))

(declare-fun lt!2301625 () Bool)

(declare-fun matchRSpec!2953 (Regex!15850 List!63851) Bool)

(assert (=> b!5817607 (= lt!2301625 (matchRSpec!2953 r!7292 s!2326))))

(declare-fun matchR!8035 (Regex!15850 List!63851) Bool)

(assert (=> b!5817607 (= lt!2301625 (matchR!8035 r!7292 s!2326))))

(declare-datatypes ((Unit!156964 0))(
  ( (Unit!156965) )
))
(declare-fun lt!2301624 () Unit!156964)

(declare-fun mainMatchTheorem!2953 (Regex!15850 List!63851) Unit!156964)

(assert (=> b!5817607 (= lt!2301624 (mainMatchTheorem!2953 r!7292 s!2326))))

(declare-fun b!5817608 () Bool)

(declare-fun res!2453304 () Bool)

(declare-fun e!3570506 () Bool)

(assert (=> b!5817608 (=> res!2453304 e!3570506)))

(declare-fun lt!2301626 () Regex!15850)

(assert (=> b!5817608 (= res!2453304 (not (validRegex!7586 lt!2301626)))))

(declare-fun b!5817609 () Bool)

(assert (=> b!5817609 (= e!3570505 e!3570506)))

(declare-fun res!2453300 () Bool)

(assert (=> b!5817609 (=> res!2453300 e!3570506)))

(declare-fun contains!19890 (List!63849 Regex!15850) Bool)

(assert (=> b!5817609 (= res!2453300 (not (contains!19890 lt!2301627 lt!2301626)))))

(declare-fun getWitness!917 (List!63849 Int) Regex!15850)

(assert (=> b!5817609 (= lt!2301626 (getWitness!917 lt!2301627 lambda!318167))))

(declare-fun b!5817610 () Bool)

(declare-fun tp!1605222 () Bool)

(assert (=> b!5817610 (= e!3570508 tp!1605222)))

(declare-fun b!5817611 () Bool)

(declare-fun res!2453305 () Bool)

(assert (=> b!5817611 (=> (not res!2453305) (not e!3570512))))

(declare-fun unfocusZipper!1592 (List!63850) Regex!15850)

(assert (=> b!5817611 (= res!2453305 (= r!7292 (unfocusZipper!1592 zl!343)))))

(declare-fun setIsEmpty!39247 () Bool)

(assert (=> setIsEmpty!39247 setRes!39247))

(assert (=> b!5817612 (= e!3570509 e!3570505)))

(declare-fun res!2453299 () Bool)

(assert (=> b!5817612 (=> res!2453299 e!3570505)))

(assert (=> b!5817612 (= res!2453299 (not lt!2301625))))

(assert (=> b!5817612 (= lt!2301625 (exists!2266 lt!2301627 lambda!318167))))

(declare-fun lt!2301623 () Unit!156964)

(declare-fun matchRGenUnionSpec!291 (Regex!15850 List!63849 List!63851) Unit!156964)

(assert (=> b!5817612 (= lt!2301623 (matchRGenUnionSpec!291 r!7292 lt!2301627 s!2326))))

(declare-fun unfocusZipperList!1272 (List!63850) List!63849)

(assert (=> b!5817612 (= lt!2301627 (unfocusZipperList!1272 zl!343))))

(declare-fun b!5817613 () Bool)

(assert (=> b!5817613 (= e!3570504 tp_is_empty!40953)))

(declare-fun b!5817614 () Bool)

(assert (=> b!5817614 (= e!3570506 (matchR!8035 lt!2301626 s!2326))))

(declare-fun b!5817615 () Bool)

(declare-fun isEmpty!35627 (List!63850) Bool)

(assert (=> b!5817615 (= e!3570511 (isEmpty!35627 (t!377205 zl!343)))))

(declare-fun b!5817616 () Bool)

(declare-fun res!2453296 () Bool)

(assert (=> b!5817616 (=> res!2453296 e!3570509)))

(assert (=> b!5817616 (= res!2453296 (isEmpty!35627 (t!377205 zl!343)))))

(declare-fun b!5817617 () Bool)

(declare-fun tp!1605226 () Bool)

(declare-fun tp!1605228 () Bool)

(assert (=> b!5817617 (= e!3570504 (and tp!1605226 tp!1605228))))

(assert (= (and start!596094 res!2453301) b!5817604))

(assert (= (and b!5817604 res!2453302) b!5817611))

(assert (= (and b!5817611 res!2453305) b!5817607))

(assert (= (and b!5817607 res!2453297) b!5817615))

(assert (= (and b!5817607 (not res!2453298)) b!5817601))

(assert (= (and b!5817601 (not res!2453295)) b!5817616))

(assert (= (and b!5817616 (not res!2453296)) b!5817612))

(assert (= (and b!5817612 (not res!2453299)) b!5817606))

(assert (= (and b!5817606 (not res!2453303)) b!5817609))

(assert (= (and b!5817609 (not res!2453300)) b!5817608))

(assert (= (and b!5817608 (not res!2453304)) b!5817614))

(assert (= (and start!596094 (is-ElementMatch!15850 r!7292)) b!5817613))

(assert (= (and start!596094 (is-Concat!24695 r!7292)) b!5817602))

(assert (= (and start!596094 (is-Star!15850 r!7292)) b!5817605))

(assert (= (and start!596094 (is-Union!15850 r!7292)) b!5817617))

(assert (= (and start!596094 condSetEmpty!39247) setIsEmpty!39247))

(assert (= (and start!596094 (not condSetEmpty!39247)) setNonEmpty!39247))

(assert (= setNonEmpty!39247 b!5817610))

(assert (= b!5817603 b!5817599))

(assert (= (and start!596094 (is-Cons!63726 zl!343)) b!5817603))

(assert (= (and start!596094 (is-Cons!63727 s!2326)) b!5817600))

(declare-fun m!6754152 () Bool)

(assert (=> b!5817607 m!6754152))

(declare-fun m!6754154 () Bool)

(assert (=> b!5817607 m!6754154))

(declare-fun m!6754156 () Bool)

(assert (=> b!5817607 m!6754156))

(declare-fun m!6754158 () Bool)

(assert (=> b!5817614 m!6754158))

(declare-fun m!6754160 () Bool)

(assert (=> b!5817612 m!6754160))

(declare-fun m!6754162 () Bool)

(assert (=> b!5817612 m!6754162))

(declare-fun m!6754164 () Bool)

(assert (=> b!5817612 m!6754164))

(declare-fun m!6754166 () Bool)

(assert (=> b!5817616 m!6754166))

(declare-fun m!6754168 () Bool)

(assert (=> b!5817604 m!6754168))

(declare-fun m!6754170 () Bool)

(assert (=> b!5817603 m!6754170))

(assert (=> b!5817615 m!6754166))

(declare-fun m!6754172 () Bool)

(assert (=> start!596094 m!6754172))

(declare-fun m!6754174 () Bool)

(assert (=> b!5817609 m!6754174))

(declare-fun m!6754176 () Bool)

(assert (=> b!5817609 m!6754176))

(declare-fun m!6754178 () Bool)

(assert (=> setNonEmpty!39247 m!6754178))

(declare-fun m!6754180 () Bool)

(assert (=> b!5817611 m!6754180))

(assert (=> b!5817606 m!6754160))

(declare-fun m!6754182 () Bool)

(assert (=> b!5817608 m!6754182))

(push 1)

(assert (not b!5817604))

(assert (not b!5817602))

(assert (not b!5817608))

(assert (not b!5817599))

(assert (not b!5817612))

(assert (not b!5817605))

(assert (not b!5817603))

(assert (not setNonEmpty!39247))

(assert (not b!5817611))

(assert (not b!5817616))

(assert tp_is_empty!40953)

(assert (not b!5817615))

(assert (not b!5817600))

(assert (not b!5817610))

(assert (not start!596094))

(assert (not b!5817606))

(assert (not b!5817614))

(assert (not b!5817617))

(assert (not b!5817609))

(assert (not b!5817607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!454345 () Bool)

(declare-fun c!1030983 () Bool)

(declare-fun bm!454340 () Bool)

(declare-fun c!1030982 () Bool)

(assert (=> bm!454340 (= call!454345 (validRegex!7586 (ite c!1030982 (reg!16179 lt!2301626) (ite c!1030983 (regTwo!32213 lt!2301626) (regTwo!32212 lt!2301626)))))))

(declare-fun b!5817705 () Bool)

(declare-fun e!3570572 () Bool)

(declare-fun e!3570566 () Bool)

(assert (=> b!5817705 (= e!3570572 e!3570566)))

(assert (=> b!5817705 (= c!1030982 (is-Star!15850 lt!2301626))))

(declare-fun b!5817706 () Bool)

(declare-fun e!3570567 () Bool)

(declare-fun call!454346 () Bool)

(assert (=> b!5817706 (= e!3570567 call!454346)))

(declare-fun bm!454341 () Bool)

(assert (=> bm!454341 (= call!454346 call!454345)))

(declare-fun bm!454342 () Bool)

(declare-fun call!454347 () Bool)

(assert (=> bm!454342 (= call!454347 (validRegex!7586 (ite c!1030983 (regOne!32213 lt!2301626) (regOne!32212 lt!2301626))))))

(declare-fun d!1831237 () Bool)

(declare-fun res!2453361 () Bool)

(assert (=> d!1831237 (=> res!2453361 e!3570572)))

(assert (=> d!1831237 (= res!2453361 (is-ElementMatch!15850 lt!2301626))))

(assert (=> d!1831237 (= (validRegex!7586 lt!2301626) e!3570572)))

(declare-fun b!5817707 () Bool)

(declare-fun e!3570570 () Bool)

(assert (=> b!5817707 (= e!3570570 call!454345)))

(declare-fun b!5817708 () Bool)

(assert (=> b!5817708 (= e!3570566 e!3570570)))

(declare-fun res!2453360 () Bool)

(declare-fun nullable!5866 (Regex!15850) Bool)

(assert (=> b!5817708 (= res!2453360 (not (nullable!5866 (reg!16179 lt!2301626))))))

(assert (=> b!5817708 (=> (not res!2453360) (not e!3570570))))

(declare-fun b!5817709 () Bool)

(declare-fun res!2453358 () Bool)

(declare-fun e!3570571 () Bool)

(assert (=> b!5817709 (=> (not res!2453358) (not e!3570571))))

(assert (=> b!5817709 (= res!2453358 call!454347)))

(declare-fun e!3570569 () Bool)

(assert (=> b!5817709 (= e!3570569 e!3570571)))

(declare-fun b!5817710 () Bool)

(declare-fun e!3570568 () Bool)

(assert (=> b!5817710 (= e!3570568 e!3570567)))

(declare-fun res!2453357 () Bool)

(assert (=> b!5817710 (=> (not res!2453357) (not e!3570567))))

(assert (=> b!5817710 (= res!2453357 call!454347)))

(declare-fun b!5817711 () Bool)

(declare-fun res!2453359 () Bool)

(assert (=> b!5817711 (=> res!2453359 e!3570568)))

(assert (=> b!5817711 (= res!2453359 (not (is-Concat!24695 lt!2301626)))))

(assert (=> b!5817711 (= e!3570569 e!3570568)))

(declare-fun b!5817712 () Bool)

(assert (=> b!5817712 (= e!3570566 e!3570569)))

(assert (=> b!5817712 (= c!1030983 (is-Union!15850 lt!2301626))))

(declare-fun b!5817713 () Bool)

(assert (=> b!5817713 (= e!3570571 call!454346)))

(assert (= (and d!1831237 (not res!2453361)) b!5817705))

(assert (= (and b!5817705 c!1030982) b!5817708))

(assert (= (and b!5817705 (not c!1030982)) b!5817712))

(assert (= (and b!5817708 res!2453360) b!5817707))

(assert (= (and b!5817712 c!1030983) b!5817709))

(assert (= (and b!5817712 (not c!1030983)) b!5817711))

(assert (= (and b!5817709 res!2453358) b!5817713))

(assert (= (and b!5817711 (not res!2453359)) b!5817710))

(assert (= (and b!5817710 res!2453357) b!5817706))

(assert (= (or b!5817713 b!5817706) bm!454341))

(assert (= (or b!5817709 b!5817710) bm!454342))

(assert (= (or b!5817707 bm!454341) bm!454340))

(declare-fun m!6754216 () Bool)

(assert (=> bm!454340 m!6754216))

(declare-fun m!6754218 () Bool)

(assert (=> bm!454342 m!6754218))

(declare-fun m!6754220 () Bool)

(assert (=> b!5817708 m!6754220))

(assert (=> b!5817608 d!1831237))

(declare-fun d!1831243 () Bool)

(declare-fun lt!2301648 () Bool)

(declare-fun content!11695 (List!63849) (Set Regex!15850))

(assert (=> d!1831243 (= lt!2301648 (set.member lt!2301626 (content!11695 lt!2301627)))))

(declare-fun e!3570579 () Bool)

(assert (=> d!1831243 (= lt!2301648 e!3570579)))

(declare-fun res!2453368 () Bool)

(assert (=> d!1831243 (=> (not res!2453368) (not e!3570579))))

(assert (=> d!1831243 (= res!2453368 (is-Cons!63725 lt!2301627))))

(assert (=> d!1831243 (= (contains!19890 lt!2301627 lt!2301626) lt!2301648)))

(declare-fun b!5817719 () Bool)

(declare-fun e!3570578 () Bool)

(assert (=> b!5817719 (= e!3570579 e!3570578)))

(declare-fun res!2453367 () Bool)

(assert (=> b!5817719 (=> res!2453367 e!3570578)))

(assert (=> b!5817719 (= res!2453367 (= (h!70173 lt!2301627) lt!2301626))))

(declare-fun b!5817720 () Bool)

(assert (=> b!5817720 (= e!3570578 (contains!19890 (t!377204 lt!2301627) lt!2301626))))

(assert (= (and d!1831243 res!2453368) b!5817719))

(assert (= (and b!5817719 (not res!2453367)) b!5817720))

(declare-fun m!6754228 () Bool)

(assert (=> d!1831243 m!6754228))

(declare-fun m!6754230 () Bool)

(assert (=> d!1831243 m!6754230))

(declare-fun m!6754232 () Bool)

(assert (=> b!5817720 m!6754232))

(assert (=> b!5817609 d!1831243))

(declare-fun b!5817739 () Bool)

(declare-fun e!3570597 () Regex!15850)

(declare-fun e!3570594 () Regex!15850)

(assert (=> b!5817739 (= e!3570597 e!3570594)))

(declare-fun c!1030989 () Bool)

(assert (=> b!5817739 (= c!1030989 (is-Cons!63725 lt!2301627))))

(declare-fun b!5817740 () Bool)

(declare-fun e!3570595 () Bool)

(declare-fun lt!2301656 () Regex!15850)

(assert (=> b!5817740 (= e!3570595 (contains!19890 lt!2301627 lt!2301656))))

(declare-fun b!5817742 () Bool)

(declare-fun lt!2301657 () Unit!156964)

(declare-fun Unit!156968 () Unit!156964)

(assert (=> b!5817742 (= lt!2301657 Unit!156968)))

(assert (=> b!5817742 false))

(declare-fun head!12288 (List!63849) Regex!15850)

(assert (=> b!5817742 (= e!3570594 (head!12288 lt!2301627))))

(declare-fun b!5817743 () Bool)

(assert (=> b!5817743 (= e!3570597 (h!70173 lt!2301627))))

(declare-fun b!5817744 () Bool)

(assert (=> b!5817744 (= e!3570594 (getWitness!917 (t!377204 lt!2301627) lambda!318167))))

(declare-fun d!1831247 () Bool)

(assert (=> d!1831247 e!3570595))

(declare-fun res!2453379 () Bool)

(assert (=> d!1831247 (=> (not res!2453379) (not e!3570595))))

(declare-fun dynLambda!24945 (Int Regex!15850) Bool)

(assert (=> d!1831247 (= res!2453379 (dynLambda!24945 lambda!318167 lt!2301656))))

(assert (=> d!1831247 (= lt!2301656 e!3570597)))

(declare-fun c!1030988 () Bool)

(declare-fun e!3570596 () Bool)

(assert (=> d!1831247 (= c!1030988 e!3570596)))

(declare-fun res!2453380 () Bool)

(assert (=> d!1831247 (=> (not res!2453380) (not e!3570596))))

(assert (=> d!1831247 (= res!2453380 (is-Cons!63725 lt!2301627))))

(assert (=> d!1831247 (exists!2266 lt!2301627 lambda!318167)))

(assert (=> d!1831247 (= (getWitness!917 lt!2301627 lambda!318167) lt!2301656)))

(declare-fun b!5817741 () Bool)

(assert (=> b!5817741 (= e!3570596 (dynLambda!24945 lambda!318167 (h!70173 lt!2301627)))))

(assert (= (and d!1831247 res!2453380) b!5817741))

(assert (= (and d!1831247 c!1030988) b!5817743))

(assert (= (and d!1831247 (not c!1030988)) b!5817739))

(assert (= (and b!5817739 c!1030989) b!5817744))

(assert (= (and b!5817739 (not c!1030989)) b!5817742))

(assert (= (and d!1831247 res!2453379) b!5817740))

(declare-fun b_lambda!219269 () Bool)

(assert (=> (not b_lambda!219269) (not d!1831247)))

(declare-fun b_lambda!219271 () Bool)

(assert (=> (not b_lambda!219271) (not b!5817741)))

(declare-fun m!6754240 () Bool)

(assert (=> b!5817741 m!6754240))

(declare-fun m!6754242 () Bool)

(assert (=> b!5817740 m!6754242))

(declare-fun m!6754244 () Bool)

(assert (=> d!1831247 m!6754244))

(assert (=> d!1831247 m!6754160))

(declare-fun m!6754246 () Bool)

(assert (=> b!5817742 m!6754246))

(declare-fun m!6754248 () Bool)

(assert (=> b!5817744 m!6754248))

(assert (=> b!5817609 d!1831247))

(declare-fun c!1030991 () Bool)

(declare-fun c!1030990 () Bool)

(declare-fun call!454348 () Bool)

(declare-fun bm!454343 () Bool)

(assert (=> bm!454343 (= call!454348 (validRegex!7586 (ite c!1030990 (reg!16179 r!7292) (ite c!1030991 (regTwo!32213 r!7292) (regTwo!32212 r!7292)))))))

(declare-fun b!5817745 () Bool)

(declare-fun e!3570604 () Bool)

(declare-fun e!3570598 () Bool)

(assert (=> b!5817745 (= e!3570604 e!3570598)))

(assert (=> b!5817745 (= c!1030990 (is-Star!15850 r!7292))))

(declare-fun b!5817746 () Bool)

(declare-fun e!3570599 () Bool)

(declare-fun call!454349 () Bool)

(assert (=> b!5817746 (= e!3570599 call!454349)))

(declare-fun bm!454344 () Bool)

(assert (=> bm!454344 (= call!454349 call!454348)))

(declare-fun bm!454345 () Bool)

(declare-fun call!454350 () Bool)

(assert (=> bm!454345 (= call!454350 (validRegex!7586 (ite c!1030991 (regOne!32213 r!7292) (regOne!32212 r!7292))))))

(declare-fun d!1831251 () Bool)

(declare-fun res!2453385 () Bool)

(assert (=> d!1831251 (=> res!2453385 e!3570604)))

(assert (=> d!1831251 (= res!2453385 (is-ElementMatch!15850 r!7292))))

(assert (=> d!1831251 (= (validRegex!7586 r!7292) e!3570604)))

(declare-fun b!5817747 () Bool)

(declare-fun e!3570602 () Bool)

(assert (=> b!5817747 (= e!3570602 call!454348)))

(declare-fun b!5817748 () Bool)

(assert (=> b!5817748 (= e!3570598 e!3570602)))

(declare-fun res!2453384 () Bool)

(assert (=> b!5817748 (= res!2453384 (not (nullable!5866 (reg!16179 r!7292))))))

(assert (=> b!5817748 (=> (not res!2453384) (not e!3570602))))

(declare-fun b!5817749 () Bool)

(declare-fun res!2453382 () Bool)

(declare-fun e!3570603 () Bool)

(assert (=> b!5817749 (=> (not res!2453382) (not e!3570603))))

(assert (=> b!5817749 (= res!2453382 call!454350)))

(declare-fun e!3570601 () Bool)

(assert (=> b!5817749 (= e!3570601 e!3570603)))

(declare-fun b!5817750 () Bool)

(declare-fun e!3570600 () Bool)

(assert (=> b!5817750 (= e!3570600 e!3570599)))

(declare-fun res!2453381 () Bool)

(assert (=> b!5817750 (=> (not res!2453381) (not e!3570599))))

(assert (=> b!5817750 (= res!2453381 call!454350)))

(declare-fun b!5817751 () Bool)

(declare-fun res!2453383 () Bool)

(assert (=> b!5817751 (=> res!2453383 e!3570600)))

(assert (=> b!5817751 (= res!2453383 (not (is-Concat!24695 r!7292)))))

(assert (=> b!5817751 (= e!3570601 e!3570600)))

(declare-fun b!5817752 () Bool)

(assert (=> b!5817752 (= e!3570598 e!3570601)))

(assert (=> b!5817752 (= c!1030991 (is-Union!15850 r!7292))))

(declare-fun b!5817753 () Bool)

(assert (=> b!5817753 (= e!3570603 call!454349)))

(assert (= (and d!1831251 (not res!2453385)) b!5817745))

(assert (= (and b!5817745 c!1030990) b!5817748))

(assert (= (and b!5817745 (not c!1030990)) b!5817752))

(assert (= (and b!5817748 res!2453384) b!5817747))

(assert (= (and b!5817752 c!1030991) b!5817749))

(assert (= (and b!5817752 (not c!1030991)) b!5817751))

(assert (= (and b!5817749 res!2453382) b!5817753))

(assert (= (and b!5817751 (not res!2453383)) b!5817750))

(assert (= (and b!5817750 res!2453381) b!5817746))

(assert (= (or b!5817753 b!5817746) bm!454344))

(assert (= (or b!5817749 b!5817750) bm!454345))

(assert (= (or b!5817747 bm!454344) bm!454343))

(declare-fun m!6754250 () Bool)

(assert (=> bm!454343 m!6754250))

(declare-fun m!6754252 () Bool)

(assert (=> bm!454345 m!6754252))

(declare-fun m!6754254 () Bool)

(assert (=> b!5817748 m!6754254))

(assert (=> start!596094 d!1831251))

(declare-fun bs!1372870 () Bool)

(declare-fun d!1831253 () Bool)

(assert (= bs!1372870 (and d!1831253 b!5817612)))

(declare-fun lambda!318177 () Int)

(assert (=> bs!1372870 (not (= lambda!318177 lambda!318167))))

(declare-fun forall!14946 (List!63849 Int) Bool)

(assert (=> d!1831253 (= (inv!82873 setElem!39247) (forall!14946 (exprs!5734 setElem!39247) lambda!318177))))

(declare-fun bs!1372871 () Bool)

(assert (= bs!1372871 d!1831253))

(declare-fun m!6754256 () Bool)

(assert (=> bs!1372871 m!6754256))

(assert (=> setNonEmpty!39247 d!1831253))

(declare-fun bs!1372872 () Bool)

(declare-fun d!1831255 () Bool)

(assert (= bs!1372872 (and d!1831255 b!5817612)))

(declare-fun lambda!318180 () Int)

(assert (=> bs!1372872 (not (= lambda!318180 lambda!318167))))

(declare-fun bs!1372873 () Bool)

(assert (= bs!1372873 (and d!1831255 d!1831253)))

(assert (=> bs!1372873 (not (= lambda!318180 lambda!318177))))

(assert (=> d!1831255 true))

(declare-fun order!27221 () Int)

(declare-fun dynLambda!24946 (Int Int) Int)

(assert (=> d!1831255 (< (dynLambda!24946 order!27221 lambda!318167) (dynLambda!24946 order!27221 lambda!318180))))

(assert (=> d!1831255 (= (exists!2266 lt!2301627 lambda!318167) (not (forall!14946 lt!2301627 lambda!318180)))))

(declare-fun bs!1372874 () Bool)

(assert (= bs!1372874 d!1831255))

(declare-fun m!6754258 () Bool)

(assert (=> bs!1372874 m!6754258))

(assert (=> b!5817606 d!1831255))

(declare-fun d!1831257 () Bool)

(assert (=> d!1831257 (= (isEmpty!35627 (t!377205 zl!343)) (is-Nil!63726 (t!377205 zl!343)))))

(assert (=> b!5817615 d!1831257))

(declare-fun b!5817826 () Bool)

(assert (=> b!5817826 true))

(assert (=> b!5817826 true))

(declare-fun bs!1372875 () Bool)

(declare-fun b!5817833 () Bool)

(assert (= bs!1372875 (and b!5817833 b!5817826)))

(declare-fun lambda!318186 () Int)

(declare-fun lambda!318185 () Int)

(assert (=> bs!1372875 (not (= lambda!318186 lambda!318185))))

(assert (=> b!5817833 true))

(assert (=> b!5817833 true))

(declare-fun bm!454350 () Bool)

(declare-fun call!454355 () Bool)

(declare-fun isEmpty!35629 (List!63851) Bool)

(assert (=> bm!454350 (= call!454355 (isEmpty!35629 s!2326))))

(declare-fun b!5817824 () Bool)

(declare-fun e!3570652 () Bool)

(assert (=> b!5817824 (= e!3570652 call!454355)))

(declare-fun b!5817825 () Bool)

(declare-fun e!3570650 () Bool)

(declare-fun e!3570649 () Bool)

(assert (=> b!5817825 (= e!3570650 e!3570649)))

(declare-fun res!2453418 () Bool)

(assert (=> b!5817825 (= res!2453418 (matchRSpec!2953 (regOne!32213 r!7292) s!2326))))

(assert (=> b!5817825 (=> res!2453418 e!3570649)))

(declare-fun e!3570653 () Bool)

(declare-fun call!454356 () Bool)

(assert (=> b!5817826 (= e!3570653 call!454356)))

(declare-fun b!5817827 () Bool)

(declare-fun e!3570651 () Bool)

(assert (=> b!5817827 (= e!3570651 (= s!2326 (Cons!63727 (c!1030976 r!7292) Nil!63727)))))

(declare-fun bm!454351 () Bool)

(declare-fun c!1031010 () Bool)

(declare-fun Exists!2942 (Int) Bool)

(assert (=> bm!454351 (= call!454356 (Exists!2942 (ite c!1031010 lambda!318185 lambda!318186)))))

(declare-fun b!5817828 () Bool)

(declare-fun e!3570654 () Bool)

(assert (=> b!5817828 (= e!3570652 e!3570654)))

(declare-fun res!2453420 () Bool)

(assert (=> b!5817828 (= res!2453420 (not (is-EmptyLang!15850 r!7292)))))

(assert (=> b!5817828 (=> (not res!2453420) (not e!3570654))))

(declare-fun b!5817829 () Bool)

(declare-fun res!2453419 () Bool)

(assert (=> b!5817829 (=> res!2453419 e!3570653)))

(assert (=> b!5817829 (= res!2453419 call!454355)))

(declare-fun e!3570655 () Bool)

(assert (=> b!5817829 (= e!3570655 e!3570653)))

(declare-fun b!5817830 () Bool)

(assert (=> b!5817830 (= e!3570649 (matchRSpec!2953 (regTwo!32213 r!7292) s!2326))))

(declare-fun b!5817831 () Bool)

(assert (=> b!5817831 (= e!3570650 e!3570655)))

(assert (=> b!5817831 (= c!1031010 (is-Star!15850 r!7292))))

(declare-fun b!5817832 () Bool)

(declare-fun c!1031013 () Bool)

(assert (=> b!5817832 (= c!1031013 (is-ElementMatch!15850 r!7292))))

(assert (=> b!5817832 (= e!3570654 e!3570651)))

(declare-fun d!1831259 () Bool)

(declare-fun c!1031012 () Bool)

(assert (=> d!1831259 (= c!1031012 (is-EmptyExpr!15850 r!7292))))

(assert (=> d!1831259 (= (matchRSpec!2953 r!7292 s!2326) e!3570652)))

(assert (=> b!5817833 (= e!3570655 call!454356)))

(declare-fun b!5817834 () Bool)

(declare-fun c!1031011 () Bool)

(assert (=> b!5817834 (= c!1031011 (is-Union!15850 r!7292))))

(assert (=> b!5817834 (= e!3570651 e!3570650)))

(assert (= (and d!1831259 c!1031012) b!5817824))

(assert (= (and d!1831259 (not c!1031012)) b!5817828))

(assert (= (and b!5817828 res!2453420) b!5817832))

(assert (= (and b!5817832 c!1031013) b!5817827))

(assert (= (and b!5817832 (not c!1031013)) b!5817834))

(assert (= (and b!5817834 c!1031011) b!5817825))

(assert (= (and b!5817834 (not c!1031011)) b!5817831))

(assert (= (and b!5817825 (not res!2453418)) b!5817830))

(assert (= (and b!5817831 c!1031010) b!5817829))

(assert (= (and b!5817831 (not c!1031010)) b!5817833))

(assert (= (and b!5817829 (not res!2453419)) b!5817826))

(assert (= (or b!5817826 b!5817833) bm!454351))

(assert (= (or b!5817824 b!5817829) bm!454350))

(declare-fun m!6754270 () Bool)

(assert (=> bm!454350 m!6754270))

(declare-fun m!6754272 () Bool)

(assert (=> b!5817825 m!6754272))

(declare-fun m!6754274 () Bool)

(assert (=> bm!454351 m!6754274))

(declare-fun m!6754276 () Bool)

(assert (=> b!5817830 m!6754276))

(assert (=> b!5817607 d!1831259))

(declare-fun b!5817876 () Bool)

(declare-fun e!3570678 () Bool)

(declare-fun e!3570681 () Bool)

(assert (=> b!5817876 (= e!3570678 e!3570681)))

(declare-fun res!2453444 () Bool)

(assert (=> b!5817876 (=> res!2453444 e!3570681)))

(declare-fun call!454368 () Bool)

(assert (=> b!5817876 (= res!2453444 call!454368)))

(declare-fun b!5817877 () Bool)

(declare-fun e!3570683 () Bool)

(declare-fun lt!2301666 () Bool)

(assert (=> b!5817877 (= e!3570683 (not lt!2301666))))

(declare-fun b!5817878 () Bool)

(declare-fun res!2453442 () Bool)

(declare-fun e!3570680 () Bool)

(assert (=> b!5817878 (=> (not res!2453442) (not e!3570680))))

(declare-fun tail!11379 (List!63851) List!63851)

(assert (=> b!5817878 (= res!2453442 (isEmpty!35629 (tail!11379 s!2326)))))

(declare-fun b!5817879 () Bool)

(declare-fun res!2453447 () Bool)

(assert (=> b!5817879 (=> res!2453447 e!3570681)))

(assert (=> b!5817879 (= res!2453447 (not (isEmpty!35629 (tail!11379 s!2326))))))

(declare-fun b!5817880 () Bool)

(declare-fun head!12289 (List!63851) C!31970)

(assert (=> b!5817880 (= e!3570681 (not (= (head!12289 s!2326) (c!1030976 r!7292))))))

(declare-fun d!1831263 () Bool)

(declare-fun e!3570677 () Bool)

(assert (=> d!1831263 e!3570677))

(declare-fun c!1031022 () Bool)

(assert (=> d!1831263 (= c!1031022 (is-EmptyExpr!15850 r!7292))))

(declare-fun e!3570682 () Bool)

(assert (=> d!1831263 (= lt!2301666 e!3570682)))

(declare-fun c!1031024 () Bool)

(assert (=> d!1831263 (= c!1031024 (isEmpty!35629 s!2326))))

(assert (=> d!1831263 (validRegex!7586 r!7292)))

(assert (=> d!1831263 (= (matchR!8035 r!7292 s!2326) lt!2301666)))

(declare-fun bm!454363 () Bool)

(assert (=> bm!454363 (= call!454368 (isEmpty!35629 s!2326))))

(declare-fun b!5817881 () Bool)

(declare-fun e!3570679 () Bool)

(assert (=> b!5817881 (= e!3570679 e!3570678)))

(declare-fun res!2453443 () Bool)

(assert (=> b!5817881 (=> (not res!2453443) (not e!3570678))))

(assert (=> b!5817881 (= res!2453443 (not lt!2301666))))

(declare-fun b!5817882 () Bool)

(assert (=> b!5817882 (= e!3570677 (= lt!2301666 call!454368))))

(declare-fun b!5817883 () Bool)

(declare-fun res!2453448 () Bool)

(assert (=> b!5817883 (=> (not res!2453448) (not e!3570680))))

(assert (=> b!5817883 (= res!2453448 (not call!454368))))

(declare-fun b!5817884 () Bool)

(declare-fun res!2453449 () Bool)

(assert (=> b!5817884 (=> res!2453449 e!3570679)))

(assert (=> b!5817884 (= res!2453449 e!3570680)))

(declare-fun res!2453446 () Bool)

(assert (=> b!5817884 (=> (not res!2453446) (not e!3570680))))

(assert (=> b!5817884 (= res!2453446 lt!2301666)))

(declare-fun b!5817885 () Bool)

(assert (=> b!5817885 (= e!3570680 (= (head!12289 s!2326) (c!1030976 r!7292)))))

(declare-fun b!5817886 () Bool)

(assert (=> b!5817886 (= e!3570677 e!3570683)))

(declare-fun c!1031023 () Bool)

(assert (=> b!5817886 (= c!1031023 (is-EmptyLang!15850 r!7292))))

(declare-fun b!5817887 () Bool)

(declare-fun res!2453445 () Bool)

(assert (=> b!5817887 (=> res!2453445 e!3570679)))

(assert (=> b!5817887 (= res!2453445 (not (is-ElementMatch!15850 r!7292)))))

(assert (=> b!5817887 (= e!3570683 e!3570679)))

(declare-fun b!5817888 () Bool)

(declare-fun derivativeStep!4607 (Regex!15850 C!31970) Regex!15850)

(assert (=> b!5817888 (= e!3570682 (matchR!8035 (derivativeStep!4607 r!7292 (head!12289 s!2326)) (tail!11379 s!2326)))))

(declare-fun b!5817889 () Bool)

(assert (=> b!5817889 (= e!3570682 (nullable!5866 r!7292))))

(assert (= (and d!1831263 c!1031024) b!5817889))

(assert (= (and d!1831263 (not c!1031024)) b!5817888))

(assert (= (and d!1831263 c!1031022) b!5817882))

(assert (= (and d!1831263 (not c!1031022)) b!5817886))

(assert (= (and b!5817886 c!1031023) b!5817877))

(assert (= (and b!5817886 (not c!1031023)) b!5817887))

(assert (= (and b!5817887 (not res!2453445)) b!5817884))

(assert (= (and b!5817884 res!2453446) b!5817883))

(assert (= (and b!5817883 res!2453448) b!5817878))

(assert (= (and b!5817878 res!2453442) b!5817885))

(assert (= (and b!5817884 (not res!2453449)) b!5817881))

(assert (= (and b!5817881 res!2453443) b!5817876))

(assert (= (and b!5817876 (not res!2453444)) b!5817879))

(assert (= (and b!5817879 (not res!2453447)) b!5817880))

(assert (= (or b!5817882 b!5817876 b!5817883) bm!454363))

(declare-fun m!6754284 () Bool)

(assert (=> b!5817885 m!6754284))

(assert (=> b!5817888 m!6754284))

(assert (=> b!5817888 m!6754284))

(declare-fun m!6754286 () Bool)

(assert (=> b!5817888 m!6754286))

(declare-fun m!6754288 () Bool)

(assert (=> b!5817888 m!6754288))

(assert (=> b!5817888 m!6754286))

(assert (=> b!5817888 m!6754288))

(declare-fun m!6754290 () Bool)

(assert (=> b!5817888 m!6754290))

(assert (=> bm!454363 m!6754270))

(assert (=> b!5817880 m!6754284))

(assert (=> b!5817878 m!6754288))

(assert (=> b!5817878 m!6754288))

(declare-fun m!6754292 () Bool)

(assert (=> b!5817878 m!6754292))

(assert (=> b!5817879 m!6754288))

(assert (=> b!5817879 m!6754288))

(assert (=> b!5817879 m!6754292))

(declare-fun m!6754294 () Bool)

(assert (=> b!5817889 m!6754294))

(assert (=> d!1831263 m!6754270))

(assert (=> d!1831263 m!6754172))

(assert (=> b!5817607 d!1831263))

(declare-fun d!1831267 () Bool)

(assert (=> d!1831267 (= (matchR!8035 r!7292 s!2326) (matchRSpec!2953 r!7292 s!2326))))

(declare-fun lt!2301669 () Unit!156964)

(declare-fun choose!44219 (Regex!15850 List!63851) Unit!156964)

(assert (=> d!1831267 (= lt!2301669 (choose!44219 r!7292 s!2326))))

(assert (=> d!1831267 (validRegex!7586 r!7292)))

(assert (=> d!1831267 (= (mainMatchTheorem!2953 r!7292 s!2326) lt!2301669)))

(declare-fun bs!1372876 () Bool)

(assert (= bs!1372876 d!1831267))

(assert (=> bs!1372876 m!6754154))

(assert (=> bs!1372876 m!6754152))

(declare-fun m!6754296 () Bool)

(assert (=> bs!1372876 m!6754296))

(assert (=> bs!1372876 m!6754172))

(assert (=> b!5817607 d!1831267))

(assert (=> b!5817616 d!1831257))

(declare-fun d!1831269 () Bool)

(declare-fun e!3570686 () Bool)

(assert (=> d!1831269 e!3570686))

(declare-fun res!2453452 () Bool)

(assert (=> d!1831269 (=> (not res!2453452) (not e!3570686))))

(declare-fun lt!2301672 () List!63850)

(declare-fun noDuplicate!1733 (List!63850) Bool)

(assert (=> d!1831269 (= res!2453452 (noDuplicate!1733 lt!2301672))))

(declare-fun choose!44220 ((Set Context!10468)) List!63850)

(assert (=> d!1831269 (= lt!2301672 (choose!44220 z!1189))))

(assert (=> d!1831269 (= (toList!9634 z!1189) lt!2301672)))

(declare-fun b!5817892 () Bool)

(declare-fun content!11696 (List!63850) (Set Context!10468))

(assert (=> b!5817892 (= e!3570686 (= (content!11696 lt!2301672) z!1189))))

(assert (= (and d!1831269 res!2453452) b!5817892))

(declare-fun m!6754298 () Bool)

(assert (=> d!1831269 m!6754298))

(declare-fun m!6754300 () Bool)

(assert (=> d!1831269 m!6754300))

(declare-fun m!6754302 () Bool)

(assert (=> b!5817892 m!6754302))

(assert (=> b!5817604 d!1831269))

(assert (=> b!5817612 d!1831255))

(declare-fun bs!1372877 () Bool)

(declare-fun d!1831271 () Bool)

(assert (= bs!1372877 (and d!1831271 b!5817612)))

(declare-fun lambda!318191 () Int)

(assert (=> bs!1372877 (not (= lambda!318191 lambda!318167))))

(declare-fun bs!1372878 () Bool)

(assert (= bs!1372878 (and d!1831271 d!1831253)))

(assert (=> bs!1372878 (= lambda!318191 lambda!318177)))

(declare-fun bs!1372879 () Bool)

(assert (= bs!1372879 (and d!1831271 d!1831255)))

(assert (=> bs!1372879 (not (= lambda!318191 lambda!318180))))

(declare-fun lambda!318192 () Int)

(assert (=> bs!1372877 (= lambda!318192 lambda!318167)))

(assert (=> bs!1372878 (not (= lambda!318192 lambda!318177))))

(assert (=> bs!1372879 (not (= lambda!318192 lambda!318180))))

(declare-fun bs!1372880 () Bool)

(assert (= bs!1372880 d!1831271))

(assert (=> bs!1372880 (not (= lambda!318192 lambda!318191))))

(assert (=> d!1831271 true))

(assert (=> d!1831271 (= (matchR!8035 r!7292 s!2326) (exists!2266 lt!2301627 lambda!318192))))

(declare-fun lt!2301675 () Unit!156964)

(declare-fun choose!44221 (Regex!15850 List!63849 List!63851) Unit!156964)

(assert (=> d!1831271 (= lt!2301675 (choose!44221 r!7292 lt!2301627 s!2326))))

(assert (=> d!1831271 (forall!14946 lt!2301627 lambda!318191)))

(assert (=> d!1831271 (= (matchRGenUnionSpec!291 r!7292 lt!2301627 s!2326) lt!2301675)))

(assert (=> bs!1372880 m!6754154))

(declare-fun m!6754304 () Bool)

(assert (=> bs!1372880 m!6754304))

(declare-fun m!6754306 () Bool)

(assert (=> bs!1372880 m!6754306))

(declare-fun m!6754308 () Bool)

(assert (=> bs!1372880 m!6754308))

(assert (=> b!5817612 d!1831271))

(declare-fun bs!1372881 () Bool)

(declare-fun d!1831273 () Bool)

(assert (= bs!1372881 (and d!1831273 d!1831271)))

(declare-fun lambda!318197 () Int)

(assert (=> bs!1372881 (not (= lambda!318197 lambda!318192))))

(declare-fun bs!1372882 () Bool)

(assert (= bs!1372882 (and d!1831273 d!1831255)))

(assert (=> bs!1372882 (not (= lambda!318197 lambda!318180))))

(assert (=> bs!1372881 (= lambda!318197 lambda!318191)))

(declare-fun bs!1372883 () Bool)

(assert (= bs!1372883 (and d!1831273 d!1831253)))

(assert (=> bs!1372883 (= lambda!318197 lambda!318177)))

(declare-fun bs!1372884 () Bool)

(assert (= bs!1372884 (and d!1831273 b!5817612)))

(assert (=> bs!1372884 (not (= lambda!318197 lambda!318167))))

(declare-fun lt!2301678 () List!63849)

(assert (=> d!1831273 (forall!14946 lt!2301678 lambda!318197)))

(declare-fun e!3570707 () List!63849)

(assert (=> d!1831273 (= lt!2301678 e!3570707)))

(declare-fun c!1031035 () Bool)

(assert (=> d!1831273 (= c!1031035 (is-Cons!63726 zl!343))))

(assert (=> d!1831273 (= (unfocusZipperList!1272 zl!343) lt!2301678)))

(declare-fun b!5817927 () Bool)

(declare-fun generalisedConcat!1457 (List!63849) Regex!15850)

(assert (=> b!5817927 (= e!3570707 (Cons!63725 (generalisedConcat!1457 (exprs!5734 (h!70174 zl!343))) (unfocusZipperList!1272 (t!377205 zl!343))))))

(declare-fun b!5817928 () Bool)

(assert (=> b!5817928 (= e!3570707 Nil!63725)))

(assert (= (and d!1831273 c!1031035) b!5817927))

(assert (= (and d!1831273 (not c!1031035)) b!5817928))

(declare-fun m!6754310 () Bool)

(assert (=> d!1831273 m!6754310))

(declare-fun m!6754312 () Bool)

(assert (=> b!5817927 m!6754312))

(declare-fun m!6754314 () Bool)

(assert (=> b!5817927 m!6754314))

(assert (=> b!5817612 d!1831273))

(declare-fun b!5817929 () Bool)

(declare-fun e!3570709 () Bool)

(declare-fun e!3570712 () Bool)

(assert (=> b!5817929 (= e!3570709 e!3570712)))

(declare-fun res!2453469 () Bool)

(assert (=> b!5817929 (=> res!2453469 e!3570712)))

(declare-fun call!454369 () Bool)

(assert (=> b!5817929 (= res!2453469 call!454369)))

(declare-fun b!5817930 () Bool)

(declare-fun e!3570714 () Bool)

(declare-fun lt!2301679 () Bool)

(assert (=> b!5817930 (= e!3570714 (not lt!2301679))))

(declare-fun b!5817931 () Bool)

(declare-fun res!2453467 () Bool)

(declare-fun e!3570711 () Bool)

(assert (=> b!5817931 (=> (not res!2453467) (not e!3570711))))

(assert (=> b!5817931 (= res!2453467 (isEmpty!35629 (tail!11379 s!2326)))))

(declare-fun b!5817932 () Bool)

(declare-fun res!2453472 () Bool)

(assert (=> b!5817932 (=> res!2453472 e!3570712)))

(assert (=> b!5817932 (= res!2453472 (not (isEmpty!35629 (tail!11379 s!2326))))))

(declare-fun b!5817933 () Bool)

(assert (=> b!5817933 (= e!3570712 (not (= (head!12289 s!2326) (c!1030976 lt!2301626))))))

(declare-fun d!1831275 () Bool)

(declare-fun e!3570708 () Bool)

(assert (=> d!1831275 e!3570708))

(declare-fun c!1031036 () Bool)

(assert (=> d!1831275 (= c!1031036 (is-EmptyExpr!15850 lt!2301626))))

(declare-fun e!3570713 () Bool)

(assert (=> d!1831275 (= lt!2301679 e!3570713)))

(declare-fun c!1031038 () Bool)

(assert (=> d!1831275 (= c!1031038 (isEmpty!35629 s!2326))))

(assert (=> d!1831275 (validRegex!7586 lt!2301626)))

(assert (=> d!1831275 (= (matchR!8035 lt!2301626 s!2326) lt!2301679)))

(declare-fun bm!454364 () Bool)

(assert (=> bm!454364 (= call!454369 (isEmpty!35629 s!2326))))

(declare-fun b!5817934 () Bool)

(declare-fun e!3570710 () Bool)

(assert (=> b!5817934 (= e!3570710 e!3570709)))

(declare-fun res!2453468 () Bool)

(assert (=> b!5817934 (=> (not res!2453468) (not e!3570709))))

(assert (=> b!5817934 (= res!2453468 (not lt!2301679))))

(declare-fun b!5817935 () Bool)

(assert (=> b!5817935 (= e!3570708 (= lt!2301679 call!454369))))

(declare-fun b!5817936 () Bool)

(declare-fun res!2453473 () Bool)

(assert (=> b!5817936 (=> (not res!2453473) (not e!3570711))))

(assert (=> b!5817936 (= res!2453473 (not call!454369))))

(declare-fun b!5817937 () Bool)

(declare-fun res!2453474 () Bool)

(assert (=> b!5817937 (=> res!2453474 e!3570710)))

(assert (=> b!5817937 (= res!2453474 e!3570711)))

(declare-fun res!2453471 () Bool)

(assert (=> b!5817937 (=> (not res!2453471) (not e!3570711))))

(assert (=> b!5817937 (= res!2453471 lt!2301679)))

(declare-fun b!5817938 () Bool)

(assert (=> b!5817938 (= e!3570711 (= (head!12289 s!2326) (c!1030976 lt!2301626)))))

(declare-fun b!5817939 () Bool)

(assert (=> b!5817939 (= e!3570708 e!3570714)))

(declare-fun c!1031037 () Bool)

(assert (=> b!5817939 (= c!1031037 (is-EmptyLang!15850 lt!2301626))))

(declare-fun b!5817940 () Bool)

(declare-fun res!2453470 () Bool)

(assert (=> b!5817940 (=> res!2453470 e!3570710)))

(assert (=> b!5817940 (= res!2453470 (not (is-ElementMatch!15850 lt!2301626)))))

(assert (=> b!5817940 (= e!3570714 e!3570710)))

(declare-fun b!5817941 () Bool)

(assert (=> b!5817941 (= e!3570713 (matchR!8035 (derivativeStep!4607 lt!2301626 (head!12289 s!2326)) (tail!11379 s!2326)))))

(declare-fun b!5817942 () Bool)

(assert (=> b!5817942 (= e!3570713 (nullable!5866 lt!2301626))))

(assert (= (and d!1831275 c!1031038) b!5817942))

(assert (= (and d!1831275 (not c!1031038)) b!5817941))

(assert (= (and d!1831275 c!1031036) b!5817935))

(assert (= (and d!1831275 (not c!1031036)) b!5817939))

(assert (= (and b!5817939 c!1031037) b!5817930))

(assert (= (and b!5817939 (not c!1031037)) b!5817940))

(assert (= (and b!5817940 (not res!2453470)) b!5817937))

(assert (= (and b!5817937 res!2453471) b!5817936))

(assert (= (and b!5817936 res!2453473) b!5817931))

(assert (= (and b!5817931 res!2453467) b!5817938))

(assert (= (and b!5817937 (not res!2453474)) b!5817934))

(assert (= (and b!5817934 res!2453468) b!5817929))

(assert (= (and b!5817929 (not res!2453469)) b!5817932))

(assert (= (and b!5817932 (not res!2453472)) b!5817933))

(assert (= (or b!5817935 b!5817929 b!5817936) bm!454364))

(assert (=> b!5817938 m!6754284))

(assert (=> b!5817941 m!6754284))

(assert (=> b!5817941 m!6754284))

(declare-fun m!6754316 () Bool)

(assert (=> b!5817941 m!6754316))

(assert (=> b!5817941 m!6754288))

(assert (=> b!5817941 m!6754316))

(assert (=> b!5817941 m!6754288))

(declare-fun m!6754318 () Bool)

(assert (=> b!5817941 m!6754318))

(assert (=> bm!454364 m!6754270))

(assert (=> b!5817933 m!6754284))

(assert (=> b!5817931 m!6754288))

(assert (=> b!5817931 m!6754288))

(assert (=> b!5817931 m!6754292))

(assert (=> b!5817932 m!6754288))

(assert (=> b!5817932 m!6754288))

(assert (=> b!5817932 m!6754292))

(declare-fun m!6754320 () Bool)

(assert (=> b!5817942 m!6754320))

(assert (=> d!1831275 m!6754270))

(assert (=> d!1831275 m!6754182))

(assert (=> b!5817614 d!1831275))

(declare-fun d!1831277 () Bool)

(declare-fun lt!2301682 () Regex!15850)

(assert (=> d!1831277 (validRegex!7586 lt!2301682)))

(declare-fun generalisedUnion!1705 (List!63849) Regex!15850)

(assert (=> d!1831277 (= lt!2301682 (generalisedUnion!1705 (unfocusZipperList!1272 zl!343)))))

(assert (=> d!1831277 (= (unfocusZipper!1592 zl!343) lt!2301682)))

(declare-fun bs!1372885 () Bool)

(assert (= bs!1372885 d!1831277))

(declare-fun m!6754322 () Bool)

(assert (=> bs!1372885 m!6754322))

(assert (=> bs!1372885 m!6754164))

(assert (=> bs!1372885 m!6754164))

(declare-fun m!6754324 () Bool)

(assert (=> bs!1372885 m!6754324))

(assert (=> b!5817611 d!1831277))

(declare-fun bs!1372886 () Bool)

(declare-fun d!1831279 () Bool)

(assert (= bs!1372886 (and d!1831279 d!1831271)))

(declare-fun lambda!318200 () Int)

(assert (=> bs!1372886 (not (= lambda!318200 lambda!318192))))

(declare-fun bs!1372887 () Bool)

(assert (= bs!1372887 (and d!1831279 d!1831255)))

(assert (=> bs!1372887 (not (= lambda!318200 lambda!318180))))

(assert (=> bs!1372886 (= lambda!318200 lambda!318191)))

(declare-fun bs!1372888 () Bool)

(assert (= bs!1372888 (and d!1831279 d!1831253)))

(assert (=> bs!1372888 (= lambda!318200 lambda!318177)))

(declare-fun bs!1372889 () Bool)

(assert (= bs!1372889 (and d!1831279 d!1831273)))

(assert (=> bs!1372889 (= lambda!318200 lambda!318197)))

(declare-fun bs!1372890 () Bool)

(assert (= bs!1372890 (and d!1831279 b!5817612)))

(assert (=> bs!1372890 (not (= lambda!318200 lambda!318167))))

(assert (=> d!1831279 (= (inv!82873 (h!70174 zl!343)) (forall!14946 (exprs!5734 (h!70174 zl!343)) lambda!318200))))

(declare-fun bs!1372891 () Bool)

(assert (= bs!1372891 d!1831279))

(declare-fun m!6754326 () Bool)

(assert (=> bs!1372891 m!6754326))

(assert (=> b!5817603 d!1831279))

(declare-fun b!5817951 () Bool)

(declare-fun e!3570719 () Bool)

(declare-fun tp!1605265 () Bool)

(declare-fun tp!1605266 () Bool)

(assert (=> b!5817951 (= e!3570719 (and tp!1605265 tp!1605266))))

(assert (=> b!5817599 (= tp!1605223 e!3570719)))

(assert (= (and b!5817599 (is-Cons!63725 (exprs!5734 (h!70174 zl!343)))) b!5817951))

(declare-fun b!5817956 () Bool)

(declare-fun e!3570722 () Bool)

(declare-fun tp!1605269 () Bool)

(assert (=> b!5817956 (= e!3570722 (and tp_is_empty!40953 tp!1605269))))

(assert (=> b!5817600 (= tp!1605229 e!3570722)))

(assert (= (and b!5817600 (is-Cons!63727 (t!377206 s!2326))) b!5817956))

(declare-fun b!5817957 () Bool)

(declare-fun e!3570723 () Bool)

(declare-fun tp!1605270 () Bool)

(declare-fun tp!1605271 () Bool)

(assert (=> b!5817957 (= e!3570723 (and tp!1605270 tp!1605271))))

(assert (=> b!5817610 (= tp!1605222 e!3570723)))

(assert (= (and b!5817610 (is-Cons!63725 (exprs!5734 setElem!39247))) b!5817957))

(declare-fun b!5817970 () Bool)

(declare-fun e!3570726 () Bool)

(declare-fun tp!1605283 () Bool)

(assert (=> b!5817970 (= e!3570726 tp!1605283)))

(declare-fun b!5817968 () Bool)

(assert (=> b!5817968 (= e!3570726 tp_is_empty!40953)))

(declare-fun b!5817971 () Bool)

(declare-fun tp!1605284 () Bool)

(declare-fun tp!1605282 () Bool)

(assert (=> b!5817971 (= e!3570726 (and tp!1605284 tp!1605282))))

(assert (=> b!5817605 (= tp!1605227 e!3570726)))

(declare-fun b!5817969 () Bool)

(declare-fun tp!1605286 () Bool)

(declare-fun tp!1605285 () Bool)

(assert (=> b!5817969 (= e!3570726 (and tp!1605286 tp!1605285))))

(assert (= (and b!5817605 (is-ElementMatch!15850 (reg!16179 r!7292))) b!5817968))

(assert (= (and b!5817605 (is-Concat!24695 (reg!16179 r!7292))) b!5817969))

(assert (= (and b!5817605 (is-Star!15850 (reg!16179 r!7292))) b!5817970))

(assert (= (and b!5817605 (is-Union!15850 (reg!16179 r!7292))) b!5817971))

(declare-fun condSetEmpty!39253 () Bool)

(assert (=> setNonEmpty!39247 (= condSetEmpty!39253 (= setRest!39247 (as set.empty (Set Context!10468))))))

(declare-fun setRes!39253 () Bool)

(assert (=> setNonEmpty!39247 (= tp!1605225 setRes!39253)))

(declare-fun setIsEmpty!39253 () Bool)

(assert (=> setIsEmpty!39253 setRes!39253))

(declare-fun setElem!39253 () Context!10468)

(declare-fun setNonEmpty!39253 () Bool)

(declare-fun e!3570729 () Bool)

(declare-fun tp!1605292 () Bool)

(assert (=> setNonEmpty!39253 (= setRes!39253 (and tp!1605292 (inv!82873 setElem!39253) e!3570729))))

(declare-fun setRest!39253 () (Set Context!10468))

(assert (=> setNonEmpty!39253 (= setRest!39247 (set.union (set.insert setElem!39253 (as set.empty (Set Context!10468))) setRest!39253))))

(declare-fun b!5817976 () Bool)

(declare-fun tp!1605291 () Bool)

(assert (=> b!5817976 (= e!3570729 tp!1605291)))

(assert (= (and setNonEmpty!39247 condSetEmpty!39253) setIsEmpty!39253))

(assert (= (and setNonEmpty!39247 (not condSetEmpty!39253)) setNonEmpty!39253))

(assert (= setNonEmpty!39253 b!5817976))

(declare-fun m!6754328 () Bool)

(assert (=> setNonEmpty!39253 m!6754328))

(declare-fun b!5817984 () Bool)

(declare-fun e!3570735 () Bool)

(declare-fun tp!1605297 () Bool)

(assert (=> b!5817984 (= e!3570735 tp!1605297)))

(declare-fun tp!1605298 () Bool)

(declare-fun e!3570734 () Bool)

(declare-fun b!5817983 () Bool)

(assert (=> b!5817983 (= e!3570734 (and (inv!82873 (h!70174 (t!377205 zl!343))) e!3570735 tp!1605298))))

(assert (=> b!5817603 (= tp!1605224 e!3570734)))

(assert (= b!5817983 b!5817984))

(assert (= (and b!5817603 (is-Cons!63726 (t!377205 zl!343))) b!5817983))

(declare-fun m!6754330 () Bool)

(assert (=> b!5817983 m!6754330))

(declare-fun b!5817987 () Bool)

(declare-fun e!3570736 () Bool)

(declare-fun tp!1605300 () Bool)

(assert (=> b!5817987 (= e!3570736 tp!1605300)))

(declare-fun b!5817985 () Bool)

(assert (=> b!5817985 (= e!3570736 tp_is_empty!40953)))

(declare-fun b!5817988 () Bool)

(declare-fun tp!1605301 () Bool)

(declare-fun tp!1605299 () Bool)

(assert (=> b!5817988 (= e!3570736 (and tp!1605301 tp!1605299))))

(assert (=> b!5817602 (= tp!1605230 e!3570736)))

(declare-fun b!5817986 () Bool)

(declare-fun tp!1605303 () Bool)

(declare-fun tp!1605302 () Bool)

(assert (=> b!5817986 (= e!3570736 (and tp!1605303 tp!1605302))))

(assert (= (and b!5817602 (is-ElementMatch!15850 (regOne!32212 r!7292))) b!5817985))

(assert (= (and b!5817602 (is-Concat!24695 (regOne!32212 r!7292))) b!5817986))

(assert (= (and b!5817602 (is-Star!15850 (regOne!32212 r!7292))) b!5817987))

(assert (= (and b!5817602 (is-Union!15850 (regOne!32212 r!7292))) b!5817988))

(declare-fun b!5817991 () Bool)

(declare-fun e!3570737 () Bool)

(declare-fun tp!1605305 () Bool)

(assert (=> b!5817991 (= e!3570737 tp!1605305)))

(declare-fun b!5817989 () Bool)

(assert (=> b!5817989 (= e!3570737 tp_is_empty!40953)))

(declare-fun b!5817992 () Bool)

(declare-fun tp!1605306 () Bool)

(declare-fun tp!1605304 () Bool)

(assert (=> b!5817992 (= e!3570737 (and tp!1605306 tp!1605304))))

(assert (=> b!5817602 (= tp!1605221 e!3570737)))

(declare-fun b!5817990 () Bool)

(declare-fun tp!1605308 () Bool)

(declare-fun tp!1605307 () Bool)

(assert (=> b!5817990 (= e!3570737 (and tp!1605308 tp!1605307))))

(assert (= (and b!5817602 (is-ElementMatch!15850 (regTwo!32212 r!7292))) b!5817989))

(assert (= (and b!5817602 (is-Concat!24695 (regTwo!32212 r!7292))) b!5817990))

(assert (= (and b!5817602 (is-Star!15850 (regTwo!32212 r!7292))) b!5817991))

(assert (= (and b!5817602 (is-Union!15850 (regTwo!32212 r!7292))) b!5817992))

(declare-fun b!5817995 () Bool)

(declare-fun e!3570738 () Bool)

(declare-fun tp!1605310 () Bool)

(assert (=> b!5817995 (= e!3570738 tp!1605310)))

(declare-fun b!5817993 () Bool)

(assert (=> b!5817993 (= e!3570738 tp_is_empty!40953)))

(declare-fun b!5817996 () Bool)

(declare-fun tp!1605311 () Bool)

(declare-fun tp!1605309 () Bool)

(assert (=> b!5817996 (= e!3570738 (and tp!1605311 tp!1605309))))

(assert (=> b!5817617 (= tp!1605226 e!3570738)))

(declare-fun b!5817994 () Bool)

(declare-fun tp!1605313 () Bool)

(declare-fun tp!1605312 () Bool)

(assert (=> b!5817994 (= e!3570738 (and tp!1605313 tp!1605312))))

(assert (= (and b!5817617 (is-ElementMatch!15850 (regOne!32213 r!7292))) b!5817993))

(assert (= (and b!5817617 (is-Concat!24695 (regOne!32213 r!7292))) b!5817994))

(assert (= (and b!5817617 (is-Star!15850 (regOne!32213 r!7292))) b!5817995))

(assert (= (and b!5817617 (is-Union!15850 (regOne!32213 r!7292))) b!5817996))

(declare-fun b!5817999 () Bool)

(declare-fun e!3570739 () Bool)

(declare-fun tp!1605315 () Bool)

(assert (=> b!5817999 (= e!3570739 tp!1605315)))

(declare-fun b!5817997 () Bool)

(assert (=> b!5817997 (= e!3570739 tp_is_empty!40953)))

(declare-fun b!5818000 () Bool)

(declare-fun tp!1605316 () Bool)

(declare-fun tp!1605314 () Bool)

(assert (=> b!5818000 (= e!3570739 (and tp!1605316 tp!1605314))))

(assert (=> b!5817617 (= tp!1605228 e!3570739)))

(declare-fun b!5817998 () Bool)

(declare-fun tp!1605318 () Bool)

(declare-fun tp!1605317 () Bool)

(assert (=> b!5817998 (= e!3570739 (and tp!1605318 tp!1605317))))

(assert (= (and b!5817617 (is-ElementMatch!15850 (regTwo!32213 r!7292))) b!5817997))

(assert (= (and b!5817617 (is-Concat!24695 (regTwo!32213 r!7292))) b!5817998))

(assert (= (and b!5817617 (is-Star!15850 (regTwo!32213 r!7292))) b!5817999))

(assert (= (and b!5817617 (is-Union!15850 (regTwo!32213 r!7292))) b!5818000))

(declare-fun b_lambda!219277 () Bool)

(assert (= b_lambda!219269 (or b!5817612 b_lambda!219277)))

(declare-fun bs!1372892 () Bool)

(declare-fun d!1831281 () Bool)

(assert (= bs!1372892 (and d!1831281 b!5817612)))

(declare-fun res!2453479 () Bool)

(declare-fun e!3570740 () Bool)

(assert (=> bs!1372892 (=> (not res!2453479) (not e!3570740))))

(assert (=> bs!1372892 (= res!2453479 (validRegex!7586 lt!2301656))))

(assert (=> bs!1372892 (= (dynLambda!24945 lambda!318167 lt!2301656) e!3570740)))

(declare-fun b!5818001 () Bool)

(assert (=> b!5818001 (= e!3570740 (matchR!8035 lt!2301656 s!2326))))

(assert (= (and bs!1372892 res!2453479) b!5818001))

(declare-fun m!6754332 () Bool)

(assert (=> bs!1372892 m!6754332))

(declare-fun m!6754334 () Bool)

(assert (=> b!5818001 m!6754334))

(assert (=> d!1831247 d!1831281))

(declare-fun b_lambda!219279 () Bool)

(assert (= b_lambda!219271 (or b!5817612 b_lambda!219279)))

(declare-fun bs!1372893 () Bool)

(declare-fun d!1831283 () Bool)

(assert (= bs!1372893 (and d!1831283 b!5817612)))

(declare-fun res!2453480 () Bool)

(declare-fun e!3570741 () Bool)

(assert (=> bs!1372893 (=> (not res!2453480) (not e!3570741))))

(assert (=> bs!1372893 (= res!2453480 (validRegex!7586 (h!70173 lt!2301627)))))

(assert (=> bs!1372893 (= (dynLambda!24945 lambda!318167 (h!70173 lt!2301627)) e!3570741)))

(declare-fun b!5818002 () Bool)

(assert (=> b!5818002 (= e!3570741 (matchR!8035 (h!70173 lt!2301627) s!2326))))

(assert (= (and bs!1372893 res!2453480) b!5818002))

(declare-fun m!6754336 () Bool)

(assert (=> bs!1372893 m!6754336))

(declare-fun m!6754338 () Bool)

(assert (=> b!5818002 m!6754338))

(assert (=> b!5817741 d!1831283))

(push 1)

(assert (not b!5817987))

(assert (not b_lambda!219279))

(assert (not b!5817984))

(assert (not b!5817825))

(assert (not d!1831253))

(assert tp_is_empty!40953)

(assert (not b!5817971))

(assert (not d!1831243))

(assert (not b!5817990))

(assert (not bm!454340))

(assert (not b!5817988))

(assert (not b!5817708))

(assert (not b!5817996))

(assert (not b!5817951))

(assert (not b!5817938))

(assert (not setNonEmpty!39253))

(assert (not b!5817892))

(assert (not b!5817986))

(assert (not b!5817957))

(assert (not b!5817942))

(assert (not d!1831275))

(assert (not d!1831279))

(assert (not bm!454363))

(assert (not bm!454345))

(assert (not bm!454343))

(assert (not b!5817941))

(assert (not d!1831255))

(assert (not d!1831267))

(assert (not b!5817720))

(assert (not b!5817992))

(assert (not b!5817933))

(assert (not b!5817927))

(assert (not d!1831269))

(assert (not b!5817888))

(assert (not b!5817956))

(assert (not b!5817932))

(assert (not b!5817889))

(assert (not b!5817744))

(assert (not b!5817878))

(assert (not bm!454364))

(assert (not b!5818000))

(assert (not b!5817991))

(assert (not d!1831277))

(assert (not b!5817748))

(assert (not b!5818002))

(assert (not bm!454350))

(assert (not bm!454351))

(assert (not b!5817976))

(assert (not bs!1372893))

(assert (not d!1831271))

(assert (not b!5817983))

(assert (not b!5817740))

(assert (not b!5817880))

(assert (not bm!454342))

(assert (not b!5817931))

(assert (not b!5817879))

(assert (not b!5817998))

(assert (not b!5817830))

(assert (not b!5817969))

(assert (not b!5817994))

(assert (not b!5817995))

(assert (not d!1831273))

(assert (not b!5818001))

(assert (not d!1831247))

(assert (not b!5817742))

(assert (not b!5817885))

(assert (not b!5817970))

(assert (not b!5817999))

(assert (not bs!1372892))

(assert (not b_lambda!219277))

(assert (not d!1831263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

