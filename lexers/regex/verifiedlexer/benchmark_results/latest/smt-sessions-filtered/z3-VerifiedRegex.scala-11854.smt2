; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666290 () Bool)

(assert start!666290)

(declare-fun b!6935129 () Bool)

(assert (=> b!6935129 true))

(assert (=> b!6935129 true))

(assert (=> b!6935129 true))

(declare-fun lambda!394834 () Int)

(declare-fun lambda!394833 () Int)

(assert (=> b!6935129 (not (= lambda!394834 lambda!394833))))

(assert (=> b!6935129 true))

(assert (=> b!6935129 true))

(assert (=> b!6935129 true))

(declare-fun bs!1851933 () Bool)

(declare-fun b!6935127 () Bool)

(assert (= bs!1851933 (and b!6935127 b!6935129)))

(declare-datatypes ((C!34180 0))(
  ( (C!34181 (val!26792 Int)) )
))
(declare-datatypes ((Regex!16955 0))(
  ( (ElementMatch!16955 (c!1286963 C!34180)) (Concat!25800 (regOne!34422 Regex!16955) (regTwo!34422 Regex!16955)) (EmptyExpr!16955) (Star!16955 (reg!17284 Regex!16955)) (EmptyLang!16955) (Union!16955 (regOne!34423 Regex!16955) (regTwo!34423 Regex!16955)) )
))
(declare-fun r1!6342 () Regex!16955)

(declare-fun lt!2474188 () Regex!16955)

(declare-fun r3!135 () Regex!16955)

(declare-fun lambda!394835 () Int)

(declare-datatypes ((List!66708 0))(
  ( (Nil!66584) (Cons!66584 (h!73032 C!34180) (t!380451 List!66708)) )
))
(declare-fun s!14361 () List!66708)

(declare-datatypes ((tuple2!67624 0))(
  ( (tuple2!67625 (_1!37115 List!66708) (_2!37115 List!66708)) )
))
(declare-fun lt!2474201 () tuple2!67624)

(declare-fun r2!6280 () Regex!16955)

(assert (=> bs!1851933 (= (and (= (_2!37115 lt!2474201) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474188)) (= lambda!394835 lambda!394833))))

(assert (=> bs!1851933 (not (= lambda!394835 lambda!394834))))

(assert (=> b!6935127 true))

(assert (=> b!6935127 true))

(assert (=> b!6935127 true))

(declare-fun lambda!394836 () Int)

(assert (=> bs!1851933 (not (= lambda!394836 lambda!394833))))

(assert (=> bs!1851933 (= (and (= (_2!37115 lt!2474201) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474188)) (= lambda!394836 lambda!394834))))

(assert (=> b!6935127 (not (= lambda!394836 lambda!394835))))

(assert (=> b!6935127 true))

(assert (=> b!6935127 true))

(assert (=> b!6935127 true))

(declare-fun bs!1851934 () Bool)

(declare-fun b!6935107 () Bool)

(assert (= bs!1851934 (and b!6935107 b!6935129)))

(declare-fun lambda!394837 () Int)

(declare-fun lt!2474186 () List!66708)

(assert (=> bs!1851934 (= (and (= lt!2474186 s!14361) (= r2!6280 lt!2474188)) (= lambda!394837 lambda!394833))))

(assert (=> bs!1851934 (not (= lambda!394837 lambda!394834))))

(declare-fun bs!1851935 () Bool)

(assert (= bs!1851935 (and b!6935107 b!6935127)))

(assert (=> bs!1851935 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394837 lambda!394835))))

(assert (=> bs!1851935 (not (= lambda!394837 lambda!394836))))

(assert (=> b!6935107 true))

(assert (=> b!6935107 true))

(assert (=> b!6935107 true))

(declare-fun lambda!394838 () Int)

(assert (=> bs!1851934 (not (= lambda!394838 lambda!394833))))

(assert (=> bs!1851934 (= (and (= lt!2474186 s!14361) (= r2!6280 lt!2474188)) (= lambda!394838 lambda!394834))))

(assert (=> bs!1851935 (not (= lambda!394838 lambda!394835))))

(assert (=> b!6935107 (not (= lambda!394838 lambda!394837))))

(assert (=> bs!1851935 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394838 lambda!394836))))

(assert (=> b!6935107 true))

(assert (=> b!6935107 true))

(assert (=> b!6935107 true))

(declare-fun b!6935106 () Bool)

(declare-fun e!4172539 () Bool)

(declare-fun tp!1911814 () Bool)

(declare-fun tp!1911812 () Bool)

(assert (=> b!6935106 (= e!4172539 (and tp!1911814 tp!1911812))))

(declare-fun e!4172533 () Bool)

(declare-fun e!4172535 () Bool)

(assert (=> b!6935107 (= e!4172533 e!4172535)))

(declare-fun res!2828608 () Bool)

(assert (=> b!6935107 (=> res!2828608 e!4172535)))

(declare-fun lt!2474200 () List!66708)

(declare-fun lt!2474196 () Bool)

(assert (=> b!6935107 (= res!2828608 (or (not lt!2474196) (not (= lt!2474200 s!14361))))))

(declare-fun lt!2474191 () Bool)

(assert (=> b!6935107 lt!2474191))

(declare-datatypes ((Unit!160634 0))(
  ( (Unit!160635) )
))
(declare-fun lt!2474206 () Unit!160634)

(declare-fun lt!2474189 () tuple2!67624)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!98 (Regex!16955 Regex!16955 List!66708 List!66708 List!66708 List!66708 List!66708) Unit!160634)

(assert (=> b!6935107 (= lt!2474206 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!98 r1!6342 r2!6280 (_1!37115 lt!2474201) (_1!37115 lt!2474189) lt!2474186 Nil!66584 lt!2474186))))

(declare-fun Exists!3955 (Int) Bool)

(assert (=> b!6935107 (= (Exists!3955 lambda!394837) (Exists!3955 lambda!394838))))

(declare-fun lt!2474195 () Unit!160634)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2416 (Regex!16955 Regex!16955 List!66708) Unit!160634)

(assert (=> b!6935107 (= lt!2474195 (lemmaExistCutMatchRandMatchRSpecEquivalent!2416 r1!6342 r2!6280 lt!2474186))))

(assert (=> b!6935107 (= lt!2474191 (Exists!3955 lambda!394837))))

(declare-datatypes ((Option!16724 0))(
  ( (None!16723) (Some!16723 (v!52995 tuple2!67624)) )
))
(declare-fun isDefined!13425 (Option!16724) Bool)

(declare-fun findConcatSeparation!3138 (Regex!16955 Regex!16955 List!66708 List!66708 List!66708) Option!16724)

(assert (=> b!6935107 (= lt!2474191 (isDefined!13425 (findConcatSeparation!3138 r1!6342 r2!6280 Nil!66584 lt!2474186 lt!2474186)))))

(declare-fun lt!2474185 () Unit!160634)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2896 (Regex!16955 Regex!16955 List!66708) Unit!160634)

(assert (=> b!6935107 (= lt!2474185 (lemmaFindConcatSeparationEquivalentToExists!2896 r1!6342 r2!6280 lt!2474186))))

(declare-fun lt!2474193 () Regex!16955)

(declare-fun matchRSpec!4012 (Regex!16955 List!66708) Bool)

(assert (=> b!6935107 (= lt!2474196 (matchRSpec!4012 lt!2474193 lt!2474186))))

(declare-fun matchR!9094 (Regex!16955 List!66708) Bool)

(assert (=> b!6935107 (= lt!2474196 (matchR!9094 lt!2474193 lt!2474186))))

(declare-fun lt!2474213 () Unit!160634)

(declare-fun mainMatchTheorem!4012 (Regex!16955 List!66708) Unit!160634)

(assert (=> b!6935107 (= lt!2474213 (mainMatchTheorem!4012 lt!2474193 lt!2474186))))

(declare-fun lt!2474207 () List!66708)

(assert (=> b!6935107 (= lt!2474200 lt!2474207)))

(declare-fun ++!14994 (List!66708 List!66708) List!66708)

(assert (=> b!6935107 (= lt!2474200 (++!14994 lt!2474186 (_2!37115 lt!2474189)))))

(assert (=> b!6935107 (= lt!2474186 (++!14994 (_1!37115 lt!2474201) (_1!37115 lt!2474189)))))

(declare-fun lt!2474184 () Unit!160634)

(declare-fun lemmaConcatAssociativity!3036 (List!66708 List!66708 List!66708) Unit!160634)

(assert (=> b!6935107 (= lt!2474184 (lemmaConcatAssociativity!3036 (_1!37115 lt!2474201) (_1!37115 lt!2474189) (_2!37115 lt!2474189)))))

(declare-fun b!6935108 () Bool)

(declare-fun e!4172542 () Bool)

(declare-fun tp!1911819 () Bool)

(assert (=> b!6935108 (= e!4172542 tp!1911819)))

(declare-fun b!6935109 () Bool)

(declare-fun e!4172536 () Bool)

(declare-fun e!4172538 () Bool)

(assert (=> b!6935109 (= e!4172536 (not e!4172538))))

(declare-fun res!2828600 () Bool)

(assert (=> b!6935109 (=> res!2828600 e!4172538)))

(declare-fun lt!2474197 () Bool)

(assert (=> b!6935109 (= res!2828600 lt!2474197)))

(declare-fun lt!2474203 () Regex!16955)

(assert (=> b!6935109 (= (matchR!9094 lt!2474203 s!14361) (matchRSpec!4012 lt!2474203 s!14361))))

(declare-fun lt!2474212 () Unit!160634)

(assert (=> b!6935109 (= lt!2474212 (mainMatchTheorem!4012 lt!2474203 s!14361))))

(declare-fun lt!2474204 () Regex!16955)

(assert (=> b!6935109 (= lt!2474197 (matchRSpec!4012 lt!2474204 s!14361))))

(assert (=> b!6935109 (= lt!2474197 (matchR!9094 lt!2474204 s!14361))))

(declare-fun lt!2474202 () Unit!160634)

(assert (=> b!6935109 (= lt!2474202 (mainMatchTheorem!4012 lt!2474204 s!14361))))

(assert (=> b!6935109 (= lt!2474203 (Concat!25800 r1!6342 lt!2474188))))

(assert (=> b!6935109 (= lt!2474188 (Concat!25800 r2!6280 r3!135))))

(assert (=> b!6935109 (= lt!2474204 (Concat!25800 lt!2474193 r3!135))))

(assert (=> b!6935109 (= lt!2474193 (Concat!25800 r1!6342 r2!6280))))

(declare-fun b!6935110 () Bool)

(declare-fun e!4172532 () Bool)

(declare-fun tp!1911825 () Bool)

(declare-fun tp!1911815 () Bool)

(assert (=> b!6935110 (= e!4172532 (and tp!1911825 tp!1911815))))

(declare-fun b!6935111 () Bool)

(declare-fun e!4172534 () Bool)

(assert (=> b!6935111 (= e!4172538 e!4172534)))

(declare-fun res!2828607 () Bool)

(assert (=> b!6935111 (=> res!2828607 e!4172534)))

(declare-fun lt!2474187 () Option!16724)

(assert (=> b!6935111 (= res!2828607 (not (isDefined!13425 lt!2474187)))))

(assert (=> b!6935111 (= lt!2474187 (findConcatSeparation!3138 r1!6342 lt!2474188 Nil!66584 s!14361 s!14361))))

(declare-fun b!6935112 () Bool)

(declare-fun tp!1911824 () Bool)

(declare-fun tp!1911826 () Bool)

(assert (=> b!6935112 (= e!4172542 (and tp!1911824 tp!1911826))))

(declare-fun b!6935113 () Bool)

(declare-fun tp_is_empty!43135 () Bool)

(assert (=> b!6935113 (= e!4172542 tp_is_empty!43135)))

(declare-fun b!6935114 () Bool)

(declare-fun tp!1911817 () Bool)

(declare-fun tp!1911813 () Bool)

(assert (=> b!6935114 (= e!4172542 (and tp!1911817 tp!1911813))))

(declare-fun res!2828606 () Bool)

(assert (=> start!666290 (=> (not res!2828606) (not e!4172536))))

(declare-fun validRegex!8661 (Regex!16955) Bool)

(assert (=> start!666290 (= res!2828606 (validRegex!8661 r1!6342))))

(assert (=> start!666290 e!4172536))

(assert (=> start!666290 e!4172539))

(assert (=> start!666290 e!4172532))

(assert (=> start!666290 e!4172542))

(declare-fun e!4172541 () Bool)

(assert (=> start!666290 e!4172541))

(declare-fun b!6935115 () Bool)

(declare-fun tp!1911820 () Bool)

(declare-fun tp!1911821 () Bool)

(assert (=> b!6935115 (= e!4172539 (and tp!1911820 tp!1911821))))

(declare-fun b!6935116 () Bool)

(declare-fun tp!1911823 () Bool)

(assert (=> b!6935116 (= e!4172532 tp!1911823)))

(declare-fun b!6935117 () Bool)

(declare-fun res!2828598 () Bool)

(declare-fun e!4172537 () Bool)

(assert (=> b!6935117 (=> res!2828598 e!4172537)))

(assert (=> b!6935117 (= res!2828598 (not (matchR!9094 lt!2474188 (_2!37115 lt!2474201))))))

(declare-fun b!6935118 () Bool)

(declare-fun e!4172540 () Bool)

(assert (=> b!6935118 (= e!4172540 e!4172533)))

(declare-fun res!2828603 () Bool)

(assert (=> b!6935118 (=> res!2828603 e!4172533)))

(assert (=> b!6935118 (= res!2828603 (not (= lt!2474207 s!14361)))))

(assert (=> b!6935118 (= lt!2474207 (++!14994 (_1!37115 lt!2474201) (++!14994 (_1!37115 lt!2474189) (_2!37115 lt!2474189))))))

(assert (=> b!6935118 (matchRSpec!4012 r3!135 (_2!37115 lt!2474189))))

(declare-fun lt!2474208 () Unit!160634)

(assert (=> b!6935118 (= lt!2474208 (mainMatchTheorem!4012 r3!135 (_2!37115 lt!2474189)))))

(assert (=> b!6935118 (matchRSpec!4012 r2!6280 (_1!37115 lt!2474189))))

(declare-fun lt!2474190 () Unit!160634)

(assert (=> b!6935118 (= lt!2474190 (mainMatchTheorem!4012 r2!6280 (_1!37115 lt!2474189)))))

(declare-fun b!6935119 () Bool)

(declare-fun tp!1911816 () Bool)

(declare-fun tp!1911827 () Bool)

(assert (=> b!6935119 (= e!4172532 (and tp!1911816 tp!1911827))))

(declare-fun b!6935120 () Bool)

(declare-fun tp!1911818 () Bool)

(assert (=> b!6935120 (= e!4172541 (and tp_is_empty!43135 tp!1911818))))

(declare-fun b!6935121 () Bool)

(assert (=> b!6935121 (= e!4172535 (validRegex!8661 lt!2474193))))

(declare-fun b!6935122 () Bool)

(declare-fun res!2828604 () Bool)

(assert (=> b!6935122 (=> (not res!2828604) (not e!4172536))))

(assert (=> b!6935122 (= res!2828604 (validRegex!8661 r3!135))))

(declare-fun b!6935123 () Bool)

(declare-fun res!2828599 () Bool)

(assert (=> b!6935123 (=> res!2828599 e!4172540)))

(assert (=> b!6935123 (= res!2828599 (not (matchR!9094 r3!135 (_2!37115 lt!2474189))))))

(declare-fun b!6935124 () Bool)

(assert (=> b!6935124 (= e!4172532 tp_is_empty!43135)))

(declare-fun b!6935125 () Bool)

(assert (=> b!6935125 (= e!4172539 tp_is_empty!43135)))

(declare-fun b!6935126 () Bool)

(declare-fun res!2828601 () Bool)

(assert (=> b!6935126 (=> (not res!2828601) (not e!4172536))))

(assert (=> b!6935126 (= res!2828601 (validRegex!8661 r2!6280))))

(assert (=> b!6935127 (= e!4172537 e!4172540)))

(declare-fun res!2828602 () Bool)

(assert (=> b!6935127 (=> res!2828602 e!4172540)))

(assert (=> b!6935127 (= res!2828602 (not (matchR!9094 r2!6280 (_1!37115 lt!2474189))))))

(declare-fun lt!2474211 () Option!16724)

(declare-fun get!23369 (Option!16724) tuple2!67624)

(assert (=> b!6935127 (= lt!2474189 (get!23369 lt!2474211))))

(assert (=> b!6935127 (= (Exists!3955 lambda!394835) (Exists!3955 lambda!394836))))

(declare-fun lt!2474198 () Unit!160634)

(assert (=> b!6935127 (= lt!2474198 (lemmaExistCutMatchRandMatchRSpecEquivalent!2416 r2!6280 r3!135 (_2!37115 lt!2474201)))))

(assert (=> b!6935127 (= (isDefined!13425 lt!2474211) (Exists!3955 lambda!394835))))

(assert (=> b!6935127 (= lt!2474211 (findConcatSeparation!3138 r2!6280 r3!135 Nil!66584 (_2!37115 lt!2474201) (_2!37115 lt!2474201)))))

(declare-fun lt!2474199 () Unit!160634)

(assert (=> b!6935127 (= lt!2474199 (lemmaFindConcatSeparationEquivalentToExists!2896 r2!6280 r3!135 (_2!37115 lt!2474201)))))

(assert (=> b!6935127 (matchRSpec!4012 lt!2474188 (_2!37115 lt!2474201))))

(declare-fun lt!2474210 () Unit!160634)

(assert (=> b!6935127 (= lt!2474210 (mainMatchTheorem!4012 lt!2474188 (_2!37115 lt!2474201)))))

(declare-fun b!6935128 () Bool)

(declare-fun tp!1911822 () Bool)

(assert (=> b!6935128 (= e!4172539 tp!1911822)))

(assert (=> b!6935129 (= e!4172534 e!4172537)))

(declare-fun res!2828605 () Bool)

(assert (=> b!6935129 (=> res!2828605 e!4172537)))

(declare-fun lt!2474209 () Bool)

(assert (=> b!6935129 (= res!2828605 (not lt!2474209))))

(assert (=> b!6935129 (= lt!2474209 (matchRSpec!4012 r1!6342 (_1!37115 lt!2474201)))))

(assert (=> b!6935129 (= lt!2474209 (matchR!9094 r1!6342 (_1!37115 lt!2474201)))))

(declare-fun lt!2474192 () Unit!160634)

(assert (=> b!6935129 (= lt!2474192 (mainMatchTheorem!4012 r1!6342 (_1!37115 lt!2474201)))))

(assert (=> b!6935129 (= lt!2474201 (get!23369 lt!2474187))))

(assert (=> b!6935129 (= (Exists!3955 lambda!394833) (Exists!3955 lambda!394834))))

(declare-fun lt!2474194 () Unit!160634)

(assert (=> b!6935129 (= lt!2474194 (lemmaExistCutMatchRandMatchRSpecEquivalent!2416 r1!6342 lt!2474188 s!14361))))

(assert (=> b!6935129 (Exists!3955 lambda!394833)))

(declare-fun lt!2474205 () Unit!160634)

(assert (=> b!6935129 (= lt!2474205 (lemmaFindConcatSeparationEquivalentToExists!2896 r1!6342 lt!2474188 s!14361))))

(assert (= (and start!666290 res!2828606) b!6935126))

(assert (= (and b!6935126 res!2828601) b!6935122))

(assert (= (and b!6935122 res!2828604) b!6935109))

(assert (= (and b!6935109 (not res!2828600)) b!6935111))

(assert (= (and b!6935111 (not res!2828607)) b!6935129))

(assert (= (and b!6935129 (not res!2828605)) b!6935117))

(assert (= (and b!6935117 (not res!2828598)) b!6935127))

(assert (= (and b!6935127 (not res!2828602)) b!6935123))

(assert (= (and b!6935123 (not res!2828599)) b!6935118))

(assert (= (and b!6935118 (not res!2828603)) b!6935107))

(assert (= (and b!6935107 (not res!2828608)) b!6935121))

(get-info :version)

(assert (= (and start!666290 ((_ is ElementMatch!16955) r1!6342)) b!6935125))

(assert (= (and start!666290 ((_ is Concat!25800) r1!6342)) b!6935106))

(assert (= (and start!666290 ((_ is Star!16955) r1!6342)) b!6935128))

(assert (= (and start!666290 ((_ is Union!16955) r1!6342)) b!6935115))

(assert (= (and start!666290 ((_ is ElementMatch!16955) r2!6280)) b!6935124))

(assert (= (and start!666290 ((_ is Concat!25800) r2!6280)) b!6935119))

(assert (= (and start!666290 ((_ is Star!16955) r2!6280)) b!6935116))

(assert (= (and start!666290 ((_ is Union!16955) r2!6280)) b!6935110))

(assert (= (and start!666290 ((_ is ElementMatch!16955) r3!135)) b!6935113))

(assert (= (and start!666290 ((_ is Concat!25800) r3!135)) b!6935114))

(assert (= (and start!666290 ((_ is Star!16955) r3!135)) b!6935108))

(assert (= (and start!666290 ((_ is Union!16955) r3!135)) b!6935112))

(assert (= (and start!666290 ((_ is Cons!66584) s!14361)) b!6935120))

(declare-fun m!7641182 () Bool)

(assert (=> b!6935129 m!7641182))

(declare-fun m!7641184 () Bool)

(assert (=> b!6935129 m!7641184))

(declare-fun m!7641186 () Bool)

(assert (=> b!6935129 m!7641186))

(declare-fun m!7641188 () Bool)

(assert (=> b!6935129 m!7641188))

(declare-fun m!7641190 () Bool)

(assert (=> b!6935129 m!7641190))

(declare-fun m!7641192 () Bool)

(assert (=> b!6935129 m!7641192))

(declare-fun m!7641194 () Bool)

(assert (=> b!6935129 m!7641194))

(declare-fun m!7641196 () Bool)

(assert (=> b!6935129 m!7641196))

(assert (=> b!6935129 m!7641188))

(declare-fun m!7641198 () Bool)

(assert (=> b!6935126 m!7641198))

(declare-fun m!7641200 () Bool)

(assert (=> b!6935123 m!7641200))

(declare-fun m!7641202 () Bool)

(assert (=> b!6935127 m!7641202))

(declare-fun m!7641204 () Bool)

(assert (=> b!6935127 m!7641204))

(declare-fun m!7641206 () Bool)

(assert (=> b!6935127 m!7641206))

(declare-fun m!7641208 () Bool)

(assert (=> b!6935127 m!7641208))

(declare-fun m!7641210 () Bool)

(assert (=> b!6935127 m!7641210))

(declare-fun m!7641212 () Bool)

(assert (=> b!6935127 m!7641212))

(assert (=> b!6935127 m!7641212))

(declare-fun m!7641214 () Bool)

(assert (=> b!6935127 m!7641214))

(declare-fun m!7641216 () Bool)

(assert (=> b!6935127 m!7641216))

(declare-fun m!7641218 () Bool)

(assert (=> b!6935127 m!7641218))

(declare-fun m!7641220 () Bool)

(assert (=> b!6935127 m!7641220))

(declare-fun m!7641222 () Bool)

(assert (=> b!6935118 m!7641222))

(declare-fun m!7641224 () Bool)

(assert (=> b!6935118 m!7641224))

(declare-fun m!7641226 () Bool)

(assert (=> b!6935118 m!7641226))

(declare-fun m!7641228 () Bool)

(assert (=> b!6935118 m!7641228))

(declare-fun m!7641230 () Bool)

(assert (=> b!6935118 m!7641230))

(assert (=> b!6935118 m!7641226))

(declare-fun m!7641232 () Bool)

(assert (=> b!6935118 m!7641232))

(declare-fun m!7641234 () Bool)

(assert (=> b!6935121 m!7641234))

(declare-fun m!7641236 () Bool)

(assert (=> b!6935109 m!7641236))

(declare-fun m!7641238 () Bool)

(assert (=> b!6935109 m!7641238))

(declare-fun m!7641240 () Bool)

(assert (=> b!6935109 m!7641240))

(declare-fun m!7641242 () Bool)

(assert (=> b!6935109 m!7641242))

(declare-fun m!7641244 () Bool)

(assert (=> b!6935109 m!7641244))

(declare-fun m!7641246 () Bool)

(assert (=> b!6935109 m!7641246))

(declare-fun m!7641248 () Bool)

(assert (=> b!6935107 m!7641248))

(declare-fun m!7641250 () Bool)

(assert (=> b!6935107 m!7641250))

(declare-fun m!7641252 () Bool)

(assert (=> b!6935107 m!7641252))

(declare-fun m!7641254 () Bool)

(assert (=> b!6935107 m!7641254))

(declare-fun m!7641256 () Bool)

(assert (=> b!6935107 m!7641256))

(declare-fun m!7641258 () Bool)

(assert (=> b!6935107 m!7641258))

(declare-fun m!7641260 () Bool)

(assert (=> b!6935107 m!7641260))

(declare-fun m!7641262 () Bool)

(assert (=> b!6935107 m!7641262))

(declare-fun m!7641264 () Bool)

(assert (=> b!6935107 m!7641264))

(declare-fun m!7641266 () Bool)

(assert (=> b!6935107 m!7641266))

(declare-fun m!7641268 () Bool)

(assert (=> b!6935107 m!7641268))

(declare-fun m!7641270 () Bool)

(assert (=> b!6935107 m!7641270))

(assert (=> b!6935107 m!7641268))

(declare-fun m!7641272 () Bool)

(assert (=> b!6935107 m!7641272))

(assert (=> b!6935107 m!7641266))

(declare-fun m!7641274 () Bool)

(assert (=> b!6935117 m!7641274))

(declare-fun m!7641276 () Bool)

(assert (=> start!666290 m!7641276))

(declare-fun m!7641278 () Bool)

(assert (=> b!6935122 m!7641278))

(declare-fun m!7641280 () Bool)

(assert (=> b!6935111 m!7641280))

(declare-fun m!7641282 () Bool)

(assert (=> b!6935111 m!7641282))

(check-sat (not b!6935115) (not b!6935129) (not b!6935106) (not b!6935108) (not b!6935118) (not b!6935116) (not b!6935122) (not b!6935111) (not b!6935114) (not start!666290) (not b!6935123) (not b!6935121) tp_is_empty!43135 (not b!6935109) (not b!6935126) (not b!6935117) (not b!6935110) (not b!6935119) (not b!6935127) (not b!6935107) (not b!6935120) (not b!6935112) (not b!6935128))
(check-sat)
(get-model)

(declare-fun b!6935182 () Bool)

(declare-fun e!4172573 () Bool)

(declare-fun head!13902 (List!66708) C!34180)

(assert (=> b!6935182 (= e!4172573 (= (head!13902 (_2!37115 lt!2474189)) (c!1286963 r3!135)))))

(declare-fun b!6935183 () Bool)

(declare-fun res!2828641 () Bool)

(assert (=> b!6935183 (=> (not res!2828641) (not e!4172573))))

(declare-fun call!630130 () Bool)

(assert (=> b!6935183 (= res!2828641 (not call!630130))))

(declare-fun b!6935184 () Bool)

(declare-fun e!4172575 () Bool)

(declare-fun e!4172571 () Bool)

(assert (=> b!6935184 (= e!4172575 e!4172571)))

(declare-fun c!1286975 () Bool)

(assert (=> b!6935184 (= c!1286975 ((_ is EmptyLang!16955) r3!135))))

(declare-fun b!6935185 () Bool)

(declare-fun lt!2474216 () Bool)

(assert (=> b!6935185 (= e!4172571 (not lt!2474216))))

(declare-fun b!6935186 () Bool)

(declare-fun res!2828642 () Bool)

(declare-fun e!4172577 () Bool)

(assert (=> b!6935186 (=> res!2828642 e!4172577)))

(assert (=> b!6935186 (= res!2828642 e!4172573)))

(declare-fun res!2828639 () Bool)

(assert (=> b!6935186 (=> (not res!2828639) (not e!4172573))))

(assert (=> b!6935186 (= res!2828639 lt!2474216)))

(declare-fun b!6935187 () Bool)

(declare-fun res!2828640 () Bool)

(assert (=> b!6935187 (=> (not res!2828640) (not e!4172573))))

(declare-fun isEmpty!38849 (List!66708) Bool)

(declare-fun tail!12954 (List!66708) List!66708)

(assert (=> b!6935187 (= res!2828640 (isEmpty!38849 (tail!12954 (_2!37115 lt!2474189))))))

(declare-fun b!6935188 () Bool)

(assert (=> b!6935188 (= e!4172575 (= lt!2474216 call!630130))))

(declare-fun b!6935189 () Bool)

(declare-fun e!4172574 () Bool)

(declare-fun nullable!6774 (Regex!16955) Bool)

(assert (=> b!6935189 (= e!4172574 (nullable!6774 r3!135))))

(declare-fun b!6935190 () Bool)

(declare-fun derivativeStep!5449 (Regex!16955 C!34180) Regex!16955)

(assert (=> b!6935190 (= e!4172574 (matchR!9094 (derivativeStep!5449 r3!135 (head!13902 (_2!37115 lt!2474189))) (tail!12954 (_2!37115 lt!2474189))))))

(declare-fun b!6935191 () Bool)

(declare-fun e!4172572 () Bool)

(assert (=> b!6935191 (= e!4172577 e!4172572)))

(declare-fun res!2828638 () Bool)

(assert (=> b!6935191 (=> (not res!2828638) (not e!4172572))))

(assert (=> b!6935191 (= res!2828638 (not lt!2474216))))

(declare-fun b!6935192 () Bool)

(declare-fun e!4172576 () Bool)

(assert (=> b!6935192 (= e!4172572 e!4172576)))

(declare-fun res!2828635 () Bool)

(assert (=> b!6935192 (=> res!2828635 e!4172576)))

(assert (=> b!6935192 (= res!2828635 call!630130)))

(declare-fun b!6935193 () Bool)

(declare-fun res!2828637 () Bool)

(assert (=> b!6935193 (=> res!2828637 e!4172577)))

(assert (=> b!6935193 (= res!2828637 (not ((_ is ElementMatch!16955) r3!135)))))

(assert (=> b!6935193 (= e!4172571 e!4172577)))

(declare-fun b!6935194 () Bool)

(assert (=> b!6935194 (= e!4172576 (not (= (head!13902 (_2!37115 lt!2474189)) (c!1286963 r3!135))))))

(declare-fun b!6935195 () Bool)

(declare-fun res!2828636 () Bool)

(assert (=> b!6935195 (=> res!2828636 e!4172576)))

(assert (=> b!6935195 (= res!2828636 (not (isEmpty!38849 (tail!12954 (_2!37115 lt!2474189)))))))

(declare-fun bm!630125 () Bool)

(assert (=> bm!630125 (= call!630130 (isEmpty!38849 (_2!37115 lt!2474189)))))

(declare-fun d!2166665 () Bool)

(assert (=> d!2166665 e!4172575))

(declare-fun c!1286974 () Bool)

(assert (=> d!2166665 (= c!1286974 ((_ is EmptyExpr!16955) r3!135))))

(assert (=> d!2166665 (= lt!2474216 e!4172574)))

(declare-fun c!1286976 () Bool)

(assert (=> d!2166665 (= c!1286976 (isEmpty!38849 (_2!37115 lt!2474189)))))

(assert (=> d!2166665 (validRegex!8661 r3!135)))

(assert (=> d!2166665 (= (matchR!9094 r3!135 (_2!37115 lt!2474189)) lt!2474216)))

(assert (= (and d!2166665 c!1286976) b!6935189))

(assert (= (and d!2166665 (not c!1286976)) b!6935190))

(assert (= (and d!2166665 c!1286974) b!6935188))

(assert (= (and d!2166665 (not c!1286974)) b!6935184))

(assert (= (and b!6935184 c!1286975) b!6935185))

(assert (= (and b!6935184 (not c!1286975)) b!6935193))

(assert (= (and b!6935193 (not res!2828637)) b!6935186))

(assert (= (and b!6935186 res!2828639) b!6935183))

(assert (= (and b!6935183 res!2828641) b!6935187))

(assert (= (and b!6935187 res!2828640) b!6935182))

(assert (= (and b!6935186 (not res!2828642)) b!6935191))

(assert (= (and b!6935191 res!2828638) b!6935192))

(assert (= (and b!6935192 (not res!2828635)) b!6935195))

(assert (= (and b!6935195 (not res!2828636)) b!6935194))

(assert (= (or b!6935188 b!6935183 b!6935192) bm!630125))

(declare-fun m!7641290 () Bool)

(assert (=> b!6935189 m!7641290))

(declare-fun m!7641292 () Bool)

(assert (=> b!6935182 m!7641292))

(declare-fun m!7641294 () Bool)

(assert (=> bm!630125 m!7641294))

(declare-fun m!7641296 () Bool)

(assert (=> b!6935195 m!7641296))

(assert (=> b!6935195 m!7641296))

(declare-fun m!7641298 () Bool)

(assert (=> b!6935195 m!7641298))

(assert (=> b!6935190 m!7641292))

(assert (=> b!6935190 m!7641292))

(declare-fun m!7641300 () Bool)

(assert (=> b!6935190 m!7641300))

(assert (=> b!6935190 m!7641296))

(assert (=> b!6935190 m!7641300))

(assert (=> b!6935190 m!7641296))

(declare-fun m!7641302 () Bool)

(assert (=> b!6935190 m!7641302))

(assert (=> d!2166665 m!7641294))

(assert (=> d!2166665 m!7641278))

(assert (=> b!6935187 m!7641296))

(assert (=> b!6935187 m!7641296))

(assert (=> b!6935187 m!7641298))

(assert (=> b!6935194 m!7641292))

(assert (=> b!6935123 d!2166665))

(declare-fun b!6935265 () Bool)

(declare-fun e!4172623 () Bool)

(declare-fun e!4172621 () Bool)

(assert (=> b!6935265 (= e!4172623 e!4172621)))

(declare-fun res!2828682 () Bool)

(assert (=> b!6935265 (= res!2828682 (not (nullable!6774 (reg!17284 r3!135))))))

(assert (=> b!6935265 (=> (not res!2828682) (not e!4172621))))

(declare-fun bm!630138 () Bool)

(declare-fun call!630145 () Bool)

(declare-fun call!630143 () Bool)

(assert (=> bm!630138 (= call!630145 call!630143)))

(declare-fun b!6935266 () Bool)

(declare-fun e!4172625 () Bool)

(assert (=> b!6935266 (= e!4172623 e!4172625)))

(declare-fun c!1286992 () Bool)

(assert (=> b!6935266 (= c!1286992 ((_ is Union!16955) r3!135))))

(declare-fun bm!630139 () Bool)

(declare-fun call!630144 () Bool)

(assert (=> bm!630139 (= call!630144 (validRegex!8661 (ite c!1286992 (regOne!34423 r3!135) (regTwo!34422 r3!135))))))

(declare-fun c!1286993 () Bool)

(declare-fun bm!630140 () Bool)

(assert (=> bm!630140 (= call!630143 (validRegex!8661 (ite c!1286993 (reg!17284 r3!135) (ite c!1286992 (regTwo!34423 r3!135) (regOne!34422 r3!135)))))))

(declare-fun b!6935267 () Bool)

(assert (=> b!6935267 (= e!4172621 call!630143)))

(declare-fun b!6935268 () Bool)

(declare-fun e!4172626 () Bool)

(declare-fun e!4172624 () Bool)

(assert (=> b!6935268 (= e!4172626 e!4172624)))

(declare-fun res!2828685 () Bool)

(assert (=> b!6935268 (=> (not res!2828685) (not e!4172624))))

(assert (=> b!6935268 (= res!2828685 call!630145)))

(declare-fun b!6935269 () Bool)

(declare-fun res!2828683 () Bool)

(assert (=> b!6935269 (=> res!2828683 e!4172626)))

(assert (=> b!6935269 (= res!2828683 (not ((_ is Concat!25800) r3!135)))))

(assert (=> b!6935269 (= e!4172625 e!4172626)))

(declare-fun b!6935270 () Bool)

(declare-fun res!2828686 () Bool)

(declare-fun e!4172622 () Bool)

(assert (=> b!6935270 (=> (not res!2828686) (not e!4172622))))

(assert (=> b!6935270 (= res!2828686 call!630144)))

(assert (=> b!6935270 (= e!4172625 e!4172622)))

(declare-fun d!2166671 () Bool)

(declare-fun res!2828684 () Bool)

(declare-fun e!4172620 () Bool)

(assert (=> d!2166671 (=> res!2828684 e!4172620)))

(assert (=> d!2166671 (= res!2828684 ((_ is ElementMatch!16955) r3!135))))

(assert (=> d!2166671 (= (validRegex!8661 r3!135) e!4172620)))

(declare-fun b!6935271 () Bool)

(assert (=> b!6935271 (= e!4172624 call!630144)))

(declare-fun b!6935272 () Bool)

(assert (=> b!6935272 (= e!4172622 call!630145)))

(declare-fun b!6935273 () Bool)

(assert (=> b!6935273 (= e!4172620 e!4172623)))

(assert (=> b!6935273 (= c!1286993 ((_ is Star!16955) r3!135))))

(assert (= (and d!2166671 (not res!2828684)) b!6935273))

(assert (= (and b!6935273 c!1286993) b!6935265))

(assert (= (and b!6935273 (not c!1286993)) b!6935266))

(assert (= (and b!6935265 res!2828682) b!6935267))

(assert (= (and b!6935266 c!1286992) b!6935270))

(assert (= (and b!6935266 (not c!1286992)) b!6935269))

(assert (= (and b!6935270 res!2828686) b!6935272))

(assert (= (and b!6935269 (not res!2828683)) b!6935268))

(assert (= (and b!6935268 res!2828685) b!6935271))

(assert (= (or b!6935270 b!6935271) bm!630139))

(assert (= (or b!6935272 b!6935268) bm!630138))

(assert (= (or b!6935267 bm!630138) bm!630140))

(declare-fun m!7641322 () Bool)

(assert (=> b!6935265 m!7641322))

(declare-fun m!7641326 () Bool)

(assert (=> bm!630139 m!7641326))

(declare-fun m!7641328 () Bool)

(assert (=> bm!630140 m!7641328))

(assert (=> b!6935122 d!2166671))

(declare-fun bs!1851943 () Bool)

(declare-fun d!2166683 () Bool)

(assert (= bs!1851943 (and d!2166683 b!6935129)))

(declare-fun lambda!394853 () Int)

(assert (=> bs!1851943 (= (and (= (_2!37115 lt!2474201) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474188)) (= lambda!394853 lambda!394833))))

(declare-fun bs!1851944 () Bool)

(assert (= bs!1851944 (and d!2166683 b!6935107)))

(assert (=> bs!1851944 (not (= lambda!394853 lambda!394838))))

(assert (=> bs!1851943 (not (= lambda!394853 lambda!394834))))

(declare-fun bs!1851945 () Bool)

(assert (= bs!1851945 (and d!2166683 b!6935127)))

(assert (=> bs!1851945 (= lambda!394853 lambda!394835)))

(assert (=> bs!1851944 (= (and (= (_2!37115 lt!2474201) lt!2474186) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394853 lambda!394837))))

(assert (=> bs!1851945 (not (= lambda!394853 lambda!394836))))

(assert (=> d!2166683 true))

(assert (=> d!2166683 true))

(assert (=> d!2166683 true))

(declare-fun lambda!394854 () Int)

(assert (=> bs!1851943 (not (= lambda!394854 lambda!394833))))

(declare-fun bs!1851946 () Bool)

(assert (= bs!1851946 d!2166683))

(assert (=> bs!1851946 (not (= lambda!394854 lambda!394853))))

(assert (=> bs!1851944 (= (and (= (_2!37115 lt!2474201) lt!2474186) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394854 lambda!394838))))

(assert (=> bs!1851943 (= (and (= (_2!37115 lt!2474201) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474188)) (= lambda!394854 lambda!394834))))

(assert (=> bs!1851945 (not (= lambda!394854 lambda!394835))))

(assert (=> bs!1851944 (not (= lambda!394854 lambda!394837))))

(assert (=> bs!1851945 (= lambda!394854 lambda!394836)))

(assert (=> d!2166683 true))

(assert (=> d!2166683 true))

(assert (=> d!2166683 true))

(assert (=> d!2166683 (= (Exists!3955 lambda!394853) (Exists!3955 lambda!394854))))

(declare-fun lt!2474228 () Unit!160634)

(declare-fun choose!51657 (Regex!16955 Regex!16955 List!66708) Unit!160634)

(assert (=> d!2166683 (= lt!2474228 (choose!51657 r2!6280 r3!135 (_2!37115 lt!2474201)))))

(assert (=> d!2166683 (validRegex!8661 r2!6280)))

(assert (=> d!2166683 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2416 r2!6280 r3!135 (_2!37115 lt!2474201)) lt!2474228)))

(declare-fun m!7641336 () Bool)

(assert (=> bs!1851946 m!7641336))

(declare-fun m!7641338 () Bool)

(assert (=> bs!1851946 m!7641338))

(declare-fun m!7641340 () Bool)

(assert (=> bs!1851946 m!7641340))

(assert (=> bs!1851946 m!7641198))

(assert (=> b!6935127 d!2166683))

(declare-fun d!2166687 () Bool)

(declare-fun isEmpty!38850 (Option!16724) Bool)

(assert (=> d!2166687 (= (isDefined!13425 lt!2474211) (not (isEmpty!38850 lt!2474211)))))

(declare-fun bs!1851956 () Bool)

(assert (= bs!1851956 d!2166687))

(declare-fun m!7641348 () Bool)

(assert (=> bs!1851956 m!7641348))

(assert (=> b!6935127 d!2166687))

(declare-fun b!6935391 () Bool)

(declare-fun lt!2474251 () Unit!160634)

(declare-fun lt!2474252 () Unit!160634)

(assert (=> b!6935391 (= lt!2474251 lt!2474252)))

(assert (=> b!6935391 (= (++!14994 (++!14994 Nil!66584 (Cons!66584 (h!73032 (_2!37115 lt!2474201)) Nil!66584)) (t!380451 (_2!37115 lt!2474201))) (_2!37115 lt!2474201))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2853 (List!66708 C!34180 List!66708 List!66708) Unit!160634)

(assert (=> b!6935391 (= lt!2474252 (lemmaMoveElementToOtherListKeepsConcatEq!2853 Nil!66584 (h!73032 (_2!37115 lt!2474201)) (t!380451 (_2!37115 lt!2474201)) (_2!37115 lt!2474201)))))

(declare-fun e!4172698 () Option!16724)

(assert (=> b!6935391 (= e!4172698 (findConcatSeparation!3138 r2!6280 r3!135 (++!14994 Nil!66584 (Cons!66584 (h!73032 (_2!37115 lt!2474201)) Nil!66584)) (t!380451 (_2!37115 lt!2474201)) (_2!37115 lt!2474201)))))

(declare-fun b!6935392 () Bool)

(declare-fun e!4172695 () Bool)

(declare-fun lt!2474250 () Option!16724)

(assert (=> b!6935392 (= e!4172695 (not (isDefined!13425 lt!2474250)))))

(declare-fun b!6935393 () Bool)

(declare-fun e!4172697 () Bool)

(assert (=> b!6935393 (= e!4172697 (= (++!14994 (_1!37115 (get!23369 lt!2474250)) (_2!37115 (get!23369 lt!2474250))) (_2!37115 lt!2474201)))))

(declare-fun b!6935394 () Bool)

(declare-fun res!2828759 () Bool)

(assert (=> b!6935394 (=> (not res!2828759) (not e!4172697))))

(assert (=> b!6935394 (= res!2828759 (matchR!9094 r2!6280 (_1!37115 (get!23369 lt!2474250))))))

(declare-fun b!6935395 () Bool)

(assert (=> b!6935395 (= e!4172698 None!16723)))

(declare-fun b!6935396 () Bool)

(declare-fun e!4172694 () Option!16724)

(assert (=> b!6935396 (= e!4172694 e!4172698)))

(declare-fun c!1287019 () Bool)

(assert (=> b!6935396 (= c!1287019 ((_ is Nil!66584) (_2!37115 lt!2474201)))))

(declare-fun b!6935397 () Bool)

(assert (=> b!6935397 (= e!4172694 (Some!16723 (tuple2!67625 Nil!66584 (_2!37115 lt!2474201))))))

(declare-fun b!6935398 () Bool)

(declare-fun e!4172696 () Bool)

(assert (=> b!6935398 (= e!4172696 (matchR!9094 r3!135 (_2!37115 lt!2474201)))))

(declare-fun b!6935399 () Bool)

(declare-fun res!2828760 () Bool)

(assert (=> b!6935399 (=> (not res!2828760) (not e!4172697))))

(assert (=> b!6935399 (= res!2828760 (matchR!9094 r3!135 (_2!37115 (get!23369 lt!2474250))))))

(declare-fun d!2166691 () Bool)

(assert (=> d!2166691 e!4172695))

(declare-fun res!2828756 () Bool)

(assert (=> d!2166691 (=> res!2828756 e!4172695)))

(assert (=> d!2166691 (= res!2828756 e!4172697)))

(declare-fun res!2828757 () Bool)

(assert (=> d!2166691 (=> (not res!2828757) (not e!4172697))))

(assert (=> d!2166691 (= res!2828757 (isDefined!13425 lt!2474250))))

(assert (=> d!2166691 (= lt!2474250 e!4172694)))

(declare-fun c!1287018 () Bool)

(assert (=> d!2166691 (= c!1287018 e!4172696)))

(declare-fun res!2828758 () Bool)

(assert (=> d!2166691 (=> (not res!2828758) (not e!4172696))))

(assert (=> d!2166691 (= res!2828758 (matchR!9094 r2!6280 Nil!66584))))

(assert (=> d!2166691 (validRegex!8661 r2!6280)))

(assert (=> d!2166691 (= (findConcatSeparation!3138 r2!6280 r3!135 Nil!66584 (_2!37115 lt!2474201) (_2!37115 lt!2474201)) lt!2474250)))

(assert (= (and d!2166691 res!2828758) b!6935398))

(assert (= (and d!2166691 c!1287018) b!6935397))

(assert (= (and d!2166691 (not c!1287018)) b!6935396))

(assert (= (and b!6935396 c!1287019) b!6935395))

(assert (= (and b!6935396 (not c!1287019)) b!6935391))

(assert (= (and d!2166691 res!2828757) b!6935394))

(assert (= (and b!6935394 res!2828759) b!6935399))

(assert (= (and b!6935399 res!2828760) b!6935393))

(assert (= (and d!2166691 (not res!2828756)) b!6935392))

(declare-fun m!7641388 () Bool)

(assert (=> b!6935394 m!7641388))

(declare-fun m!7641390 () Bool)

(assert (=> b!6935394 m!7641390))

(declare-fun m!7641392 () Bool)

(assert (=> b!6935391 m!7641392))

(assert (=> b!6935391 m!7641392))

(declare-fun m!7641394 () Bool)

(assert (=> b!6935391 m!7641394))

(declare-fun m!7641396 () Bool)

(assert (=> b!6935391 m!7641396))

(assert (=> b!6935391 m!7641392))

(declare-fun m!7641398 () Bool)

(assert (=> b!6935391 m!7641398))

(assert (=> b!6935393 m!7641388))

(declare-fun m!7641400 () Bool)

(assert (=> b!6935393 m!7641400))

(declare-fun m!7641402 () Bool)

(assert (=> b!6935392 m!7641402))

(declare-fun m!7641404 () Bool)

(assert (=> b!6935398 m!7641404))

(assert (=> b!6935399 m!7641388))

(declare-fun m!7641406 () Bool)

(assert (=> b!6935399 m!7641406))

(assert (=> d!2166691 m!7641402))

(declare-fun m!7641408 () Bool)

(assert (=> d!2166691 m!7641408))

(assert (=> d!2166691 m!7641198))

(assert (=> b!6935127 d!2166691))

(declare-fun d!2166703 () Bool)

(declare-fun choose!51659 (Int) Bool)

(assert (=> d!2166703 (= (Exists!3955 lambda!394835) (choose!51659 lambda!394835))))

(declare-fun bs!1851966 () Bool)

(assert (= bs!1851966 d!2166703))

(declare-fun m!7641424 () Bool)

(assert (=> bs!1851966 m!7641424))

(assert (=> b!6935127 d!2166703))

(declare-fun b!6935412 () Bool)

(declare-fun e!4172707 () Bool)

(assert (=> b!6935412 (= e!4172707 (= (head!13902 (_1!37115 lt!2474189)) (c!1286963 r2!6280)))))

(declare-fun b!6935413 () Bool)

(declare-fun res!2828773 () Bool)

(assert (=> b!6935413 (=> (not res!2828773) (not e!4172707))))

(declare-fun call!630155 () Bool)

(assert (=> b!6935413 (= res!2828773 (not call!630155))))

(declare-fun b!6935414 () Bool)

(declare-fun e!4172709 () Bool)

(declare-fun e!4172705 () Bool)

(assert (=> b!6935414 (= e!4172709 e!4172705)))

(declare-fun c!1287024 () Bool)

(assert (=> b!6935414 (= c!1287024 ((_ is EmptyLang!16955) r2!6280))))

(declare-fun b!6935415 () Bool)

(declare-fun lt!2474257 () Bool)

(assert (=> b!6935415 (= e!4172705 (not lt!2474257))))

(declare-fun b!6935416 () Bool)

(declare-fun res!2828774 () Bool)

(declare-fun e!4172711 () Bool)

(assert (=> b!6935416 (=> res!2828774 e!4172711)))

(assert (=> b!6935416 (= res!2828774 e!4172707)))

(declare-fun res!2828771 () Bool)

(assert (=> b!6935416 (=> (not res!2828771) (not e!4172707))))

(assert (=> b!6935416 (= res!2828771 lt!2474257)))

(declare-fun b!6935417 () Bool)

(declare-fun res!2828772 () Bool)

(assert (=> b!6935417 (=> (not res!2828772) (not e!4172707))))

(assert (=> b!6935417 (= res!2828772 (isEmpty!38849 (tail!12954 (_1!37115 lt!2474189))))))

(declare-fun b!6935418 () Bool)

(assert (=> b!6935418 (= e!4172709 (= lt!2474257 call!630155))))

(declare-fun b!6935419 () Bool)

(declare-fun e!4172708 () Bool)

(assert (=> b!6935419 (= e!4172708 (nullable!6774 r2!6280))))

(declare-fun b!6935420 () Bool)

(assert (=> b!6935420 (= e!4172708 (matchR!9094 (derivativeStep!5449 r2!6280 (head!13902 (_1!37115 lt!2474189))) (tail!12954 (_1!37115 lt!2474189))))))

(declare-fun b!6935421 () Bool)

(declare-fun e!4172706 () Bool)

(assert (=> b!6935421 (= e!4172711 e!4172706)))

(declare-fun res!2828770 () Bool)

(assert (=> b!6935421 (=> (not res!2828770) (not e!4172706))))

(assert (=> b!6935421 (= res!2828770 (not lt!2474257))))

(declare-fun b!6935422 () Bool)

(declare-fun e!4172710 () Bool)

(assert (=> b!6935422 (= e!4172706 e!4172710)))

(declare-fun res!2828767 () Bool)

(assert (=> b!6935422 (=> res!2828767 e!4172710)))

(assert (=> b!6935422 (= res!2828767 call!630155)))

(declare-fun b!6935423 () Bool)

(declare-fun res!2828769 () Bool)

(assert (=> b!6935423 (=> res!2828769 e!4172711)))

(assert (=> b!6935423 (= res!2828769 (not ((_ is ElementMatch!16955) r2!6280)))))

(assert (=> b!6935423 (= e!4172705 e!4172711)))

(declare-fun b!6935424 () Bool)

(assert (=> b!6935424 (= e!4172710 (not (= (head!13902 (_1!37115 lt!2474189)) (c!1286963 r2!6280))))))

(declare-fun b!6935425 () Bool)

(declare-fun res!2828768 () Bool)

(assert (=> b!6935425 (=> res!2828768 e!4172710)))

(assert (=> b!6935425 (= res!2828768 (not (isEmpty!38849 (tail!12954 (_1!37115 lt!2474189)))))))

(declare-fun bm!630150 () Bool)

(assert (=> bm!630150 (= call!630155 (isEmpty!38849 (_1!37115 lt!2474189)))))

(declare-fun d!2166707 () Bool)

(assert (=> d!2166707 e!4172709))

(declare-fun c!1287023 () Bool)

(assert (=> d!2166707 (= c!1287023 ((_ is EmptyExpr!16955) r2!6280))))

(assert (=> d!2166707 (= lt!2474257 e!4172708)))

(declare-fun c!1287025 () Bool)

(assert (=> d!2166707 (= c!1287025 (isEmpty!38849 (_1!37115 lt!2474189)))))

(assert (=> d!2166707 (validRegex!8661 r2!6280)))

(assert (=> d!2166707 (= (matchR!9094 r2!6280 (_1!37115 lt!2474189)) lt!2474257)))

(assert (= (and d!2166707 c!1287025) b!6935419))

(assert (= (and d!2166707 (not c!1287025)) b!6935420))

(assert (= (and d!2166707 c!1287023) b!6935418))

(assert (= (and d!2166707 (not c!1287023)) b!6935414))

(assert (= (and b!6935414 c!1287024) b!6935415))

(assert (= (and b!6935414 (not c!1287024)) b!6935423))

(assert (= (and b!6935423 (not res!2828769)) b!6935416))

(assert (= (and b!6935416 res!2828771) b!6935413))

(assert (= (and b!6935413 res!2828773) b!6935417))

(assert (= (and b!6935417 res!2828772) b!6935412))

(assert (= (and b!6935416 (not res!2828774)) b!6935421))

(assert (= (and b!6935421 res!2828770) b!6935422))

(assert (= (and b!6935422 (not res!2828767)) b!6935425))

(assert (= (and b!6935425 (not res!2828768)) b!6935424))

(assert (= (or b!6935418 b!6935413 b!6935422) bm!630150))

(declare-fun m!7641430 () Bool)

(assert (=> b!6935419 m!7641430))

(declare-fun m!7641432 () Bool)

(assert (=> b!6935412 m!7641432))

(declare-fun m!7641434 () Bool)

(assert (=> bm!630150 m!7641434))

(declare-fun m!7641436 () Bool)

(assert (=> b!6935425 m!7641436))

(assert (=> b!6935425 m!7641436))

(declare-fun m!7641438 () Bool)

(assert (=> b!6935425 m!7641438))

(assert (=> b!6935420 m!7641432))

(assert (=> b!6935420 m!7641432))

(declare-fun m!7641440 () Bool)

(assert (=> b!6935420 m!7641440))

(assert (=> b!6935420 m!7641436))

(assert (=> b!6935420 m!7641440))

(assert (=> b!6935420 m!7641436))

(declare-fun m!7641442 () Bool)

(assert (=> b!6935420 m!7641442))

(assert (=> d!2166707 m!7641434))

(assert (=> d!2166707 m!7641198))

(assert (=> b!6935417 m!7641436))

(assert (=> b!6935417 m!7641436))

(assert (=> b!6935417 m!7641438))

(assert (=> b!6935424 m!7641432))

(assert (=> b!6935127 d!2166707))

(declare-fun d!2166713 () Bool)

(assert (=> d!2166713 (= (get!23369 lt!2474211) (v!52995 lt!2474211))))

(assert (=> b!6935127 d!2166713))

(declare-fun d!2166715 () Bool)

(assert (=> d!2166715 (= (Exists!3955 lambda!394836) (choose!51659 lambda!394836))))

(declare-fun bs!1851977 () Bool)

(assert (= bs!1851977 d!2166715))

(declare-fun m!7641444 () Bool)

(assert (=> bs!1851977 m!7641444))

(assert (=> b!6935127 d!2166715))

(declare-fun bs!1852030 () Bool)

(declare-fun b!6935556 () Bool)

(assert (= bs!1852030 (and b!6935556 b!6935129)))

(declare-fun lambda!394872 () Int)

(assert (=> bs!1852030 (not (= lambda!394872 lambda!394833))))

(declare-fun bs!1852031 () Bool)

(assert (= bs!1852031 (and b!6935556 d!2166683)))

(assert (=> bs!1852031 (not (= lambda!394872 lambda!394854))))

(assert (=> bs!1852031 (not (= lambda!394872 lambda!394853))))

(declare-fun bs!1852035 () Bool)

(assert (= bs!1852035 (and b!6935556 b!6935107)))

(assert (=> bs!1852035 (not (= lambda!394872 lambda!394838))))

(assert (=> bs!1852030 (not (= lambda!394872 lambda!394834))))

(declare-fun bs!1852039 () Bool)

(assert (= bs!1852039 (and b!6935556 b!6935127)))

(assert (=> bs!1852039 (not (= lambda!394872 lambda!394835))))

(assert (=> bs!1852035 (not (= lambda!394872 lambda!394837))))

(assert (=> bs!1852039 (not (= lambda!394872 lambda!394836))))

(assert (=> b!6935556 true))

(assert (=> b!6935556 true))

(declare-fun bs!1852045 () Bool)

(declare-fun b!6935551 () Bool)

(assert (= bs!1852045 (and b!6935551 b!6935129)))

(declare-fun lambda!394874 () Int)

(assert (=> bs!1852045 (not (= lambda!394874 lambda!394833))))

(declare-fun bs!1852047 () Bool)

(assert (= bs!1852047 (and b!6935551 d!2166683)))

(assert (=> bs!1852047 (= (and (= (regOne!34422 lt!2474188) r2!6280) (= (regTwo!34422 lt!2474188) r3!135)) (= lambda!394874 lambda!394854))))

(assert (=> bs!1852047 (not (= lambda!394874 lambda!394853))))

(declare-fun bs!1852050 () Bool)

(assert (= bs!1852050 (and b!6935551 b!6935107)))

(assert (=> bs!1852050 (= (and (= (_2!37115 lt!2474201) lt!2474186) (= (regOne!34422 lt!2474188) r1!6342) (= (regTwo!34422 lt!2474188) r2!6280)) (= lambda!394874 lambda!394838))))

(declare-fun bs!1852052 () Bool)

(assert (= bs!1852052 (and b!6935551 b!6935556)))

(assert (=> bs!1852052 (not (= lambda!394874 lambda!394872))))

(assert (=> bs!1852045 (= (and (= (_2!37115 lt!2474201) s!14361) (= (regOne!34422 lt!2474188) r1!6342) (= (regTwo!34422 lt!2474188) lt!2474188)) (= lambda!394874 lambda!394834))))

(declare-fun bs!1852056 () Bool)

(assert (= bs!1852056 (and b!6935551 b!6935127)))

(assert (=> bs!1852056 (not (= lambda!394874 lambda!394835))))

(assert (=> bs!1852050 (not (= lambda!394874 lambda!394837))))

(assert (=> bs!1852056 (= (and (= (regOne!34422 lt!2474188) r2!6280) (= (regTwo!34422 lt!2474188) r3!135)) (= lambda!394874 lambda!394836))))

(assert (=> b!6935551 true))

(assert (=> b!6935551 true))

(declare-fun bm!630166 () Bool)

(declare-fun call!630171 () Bool)

(assert (=> bm!630166 (= call!630171 (isEmpty!38849 (_2!37115 lt!2474201)))))

(declare-fun e!4172784 () Bool)

(declare-fun call!630172 () Bool)

(assert (=> b!6935551 (= e!4172784 call!630172)))

(declare-fun b!6935552 () Bool)

(declare-fun e!4172786 () Bool)

(assert (=> b!6935552 (= e!4172786 (matchRSpec!4012 (regTwo!34423 lt!2474188) (_2!37115 lt!2474201)))))

(declare-fun b!6935553 () Bool)

(declare-fun e!4172787 () Bool)

(assert (=> b!6935553 (= e!4172787 e!4172786)))

(declare-fun res!2828841 () Bool)

(assert (=> b!6935553 (= res!2828841 (matchRSpec!4012 (regOne!34423 lt!2474188) (_2!37115 lt!2474201)))))

(assert (=> b!6935553 (=> res!2828841 e!4172786)))

(declare-fun b!6935554 () Bool)

(declare-fun c!1287056 () Bool)

(assert (=> b!6935554 (= c!1287056 ((_ is Union!16955) lt!2474188))))

(declare-fun e!4172785 () Bool)

(assert (=> b!6935554 (= e!4172785 e!4172787)))

(declare-fun b!6935555 () Bool)

(assert (=> b!6935555 (= e!4172787 e!4172784)))

(declare-fun c!1287058 () Bool)

(assert (=> b!6935555 (= c!1287058 ((_ is Star!16955) lt!2474188))))

(declare-fun e!4172788 () Bool)

(assert (=> b!6935556 (= e!4172788 call!630172)))

(declare-fun bm!630167 () Bool)

(assert (=> bm!630167 (= call!630172 (Exists!3955 (ite c!1287058 lambda!394872 lambda!394874)))))

(declare-fun d!2166717 () Bool)

(declare-fun c!1287057 () Bool)

(assert (=> d!2166717 (= c!1287057 ((_ is EmptyExpr!16955) lt!2474188))))

(declare-fun e!4172789 () Bool)

(assert (=> d!2166717 (= (matchRSpec!4012 lt!2474188 (_2!37115 lt!2474201)) e!4172789)))

(declare-fun b!6935557 () Bool)

(assert (=> b!6935557 (= e!4172785 (= (_2!37115 lt!2474201) (Cons!66584 (c!1286963 lt!2474188) Nil!66584)))))

(declare-fun b!6935558 () Bool)

(assert (=> b!6935558 (= e!4172789 call!630171)))

(declare-fun b!6935559 () Bool)

(declare-fun c!1287059 () Bool)

(assert (=> b!6935559 (= c!1287059 ((_ is ElementMatch!16955) lt!2474188))))

(declare-fun e!4172790 () Bool)

(assert (=> b!6935559 (= e!4172790 e!4172785)))

(declare-fun b!6935560 () Bool)

(declare-fun res!2828842 () Bool)

(assert (=> b!6935560 (=> res!2828842 e!4172788)))

(assert (=> b!6935560 (= res!2828842 call!630171)))

(assert (=> b!6935560 (= e!4172784 e!4172788)))

(declare-fun b!6935561 () Bool)

(assert (=> b!6935561 (= e!4172789 e!4172790)))

(declare-fun res!2828840 () Bool)

(assert (=> b!6935561 (= res!2828840 (not ((_ is EmptyLang!16955) lt!2474188)))))

(assert (=> b!6935561 (=> (not res!2828840) (not e!4172790))))

(assert (= (and d!2166717 c!1287057) b!6935558))

(assert (= (and d!2166717 (not c!1287057)) b!6935561))

(assert (= (and b!6935561 res!2828840) b!6935559))

(assert (= (and b!6935559 c!1287059) b!6935557))

(assert (= (and b!6935559 (not c!1287059)) b!6935554))

(assert (= (and b!6935554 c!1287056) b!6935553))

(assert (= (and b!6935554 (not c!1287056)) b!6935555))

(assert (= (and b!6935553 (not res!2828841)) b!6935552))

(assert (= (and b!6935555 c!1287058) b!6935560))

(assert (= (and b!6935555 (not c!1287058)) b!6935551))

(assert (= (and b!6935560 (not res!2828842)) b!6935556))

(assert (= (or b!6935556 b!6935551) bm!630167))

(assert (= (or b!6935558 b!6935560) bm!630166))

(declare-fun m!7641600 () Bool)

(assert (=> bm!630166 m!7641600))

(declare-fun m!7641602 () Bool)

(assert (=> b!6935552 m!7641602))

(declare-fun m!7641604 () Bool)

(assert (=> b!6935553 m!7641604))

(declare-fun m!7641606 () Bool)

(assert (=> bm!630167 m!7641606))

(assert (=> b!6935127 d!2166717))

(declare-fun bs!1852123 () Bool)

(declare-fun d!2166757 () Bool)

(assert (= bs!1852123 (and d!2166757 b!6935129)))

(declare-fun lambda!394881 () Int)

(assert (=> bs!1852123 (= (and (= (_2!37115 lt!2474201) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474188)) (= lambda!394881 lambda!394833))))

(declare-fun bs!1852125 () Bool)

(assert (= bs!1852125 (and d!2166757 d!2166683)))

(assert (=> bs!1852125 (= lambda!394881 lambda!394853)))

(declare-fun bs!1852126 () Bool)

(assert (= bs!1852126 (and d!2166757 b!6935107)))

(assert (=> bs!1852126 (not (= lambda!394881 lambda!394838))))

(declare-fun bs!1852127 () Bool)

(assert (= bs!1852127 (and d!2166757 b!6935556)))

(assert (=> bs!1852127 (not (= lambda!394881 lambda!394872))))

(assert (=> bs!1852123 (not (= lambda!394881 lambda!394834))))

(declare-fun bs!1852128 () Bool)

(assert (= bs!1852128 (and d!2166757 b!6935127)))

(assert (=> bs!1852128 (= lambda!394881 lambda!394835)))

(assert (=> bs!1852125 (not (= lambda!394881 lambda!394854))))

(declare-fun bs!1852129 () Bool)

(assert (= bs!1852129 (and d!2166757 b!6935551)))

(assert (=> bs!1852129 (not (= lambda!394881 lambda!394874))))

(assert (=> bs!1852126 (= (and (= (_2!37115 lt!2474201) lt!2474186) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394881 lambda!394837))))

(assert (=> bs!1852128 (not (= lambda!394881 lambda!394836))))

(assert (=> d!2166757 true))

(assert (=> d!2166757 true))

(assert (=> d!2166757 true))

(assert (=> d!2166757 (= (isDefined!13425 (findConcatSeparation!3138 r2!6280 r3!135 Nil!66584 (_2!37115 lt!2474201) (_2!37115 lt!2474201))) (Exists!3955 lambda!394881))))

(declare-fun lt!2474281 () Unit!160634)

(declare-fun choose!51660 (Regex!16955 Regex!16955 List!66708) Unit!160634)

(assert (=> d!2166757 (= lt!2474281 (choose!51660 r2!6280 r3!135 (_2!37115 lt!2474201)))))

(assert (=> d!2166757 (validRegex!8661 r2!6280)))

(assert (=> d!2166757 (= (lemmaFindConcatSeparationEquivalentToExists!2896 r2!6280 r3!135 (_2!37115 lt!2474201)) lt!2474281)))

(declare-fun bs!1852135 () Bool)

(assert (= bs!1852135 d!2166757))

(declare-fun m!7641646 () Bool)

(assert (=> bs!1852135 m!7641646))

(declare-fun m!7641648 () Bool)

(assert (=> bs!1852135 m!7641648))

(assert (=> bs!1852135 m!7641206))

(declare-fun m!7641650 () Bool)

(assert (=> bs!1852135 m!7641650))

(assert (=> bs!1852135 m!7641198))

(assert (=> bs!1852135 m!7641206))

(assert (=> b!6935127 d!2166757))

(declare-fun d!2166773 () Bool)

(assert (=> d!2166773 (= (matchR!9094 lt!2474188 (_2!37115 lt!2474201)) (matchRSpec!4012 lt!2474188 (_2!37115 lt!2474201)))))

(declare-fun lt!2474285 () Unit!160634)

(declare-fun choose!51661 (Regex!16955 List!66708) Unit!160634)

(assert (=> d!2166773 (= lt!2474285 (choose!51661 lt!2474188 (_2!37115 lt!2474201)))))

(assert (=> d!2166773 (validRegex!8661 lt!2474188)))

(assert (=> d!2166773 (= (mainMatchTheorem!4012 lt!2474188 (_2!37115 lt!2474201)) lt!2474285)))

(declare-fun bs!1852149 () Bool)

(assert (= bs!1852149 d!2166773))

(assert (=> bs!1852149 m!7641274))

(assert (=> bs!1852149 m!7641218))

(declare-fun m!7641658 () Bool)

(assert (=> bs!1852149 m!7641658))

(declare-fun m!7641660 () Bool)

(assert (=> bs!1852149 m!7641660))

(assert (=> b!6935127 d!2166773))

(declare-fun b!6935627 () Bool)

(declare-fun e!4172831 () Bool)

(declare-fun e!4172829 () Bool)

(assert (=> b!6935627 (= e!4172831 e!4172829)))

(declare-fun res!2828872 () Bool)

(assert (=> b!6935627 (= res!2828872 (not (nullable!6774 (reg!17284 r2!6280))))))

(assert (=> b!6935627 (=> (not res!2828872) (not e!4172829))))

(declare-fun bm!630176 () Bool)

(declare-fun call!630183 () Bool)

(declare-fun call!630181 () Bool)

(assert (=> bm!630176 (= call!630183 call!630181)))

(declare-fun b!6935628 () Bool)

(declare-fun e!4172833 () Bool)

(assert (=> b!6935628 (= e!4172831 e!4172833)))

(declare-fun c!1287078 () Bool)

(assert (=> b!6935628 (= c!1287078 ((_ is Union!16955) r2!6280))))

(declare-fun bm!630177 () Bool)

(declare-fun call!630182 () Bool)

(assert (=> bm!630177 (= call!630182 (validRegex!8661 (ite c!1287078 (regOne!34423 r2!6280) (regTwo!34422 r2!6280))))))

(declare-fun bm!630178 () Bool)

(declare-fun c!1287079 () Bool)

(assert (=> bm!630178 (= call!630181 (validRegex!8661 (ite c!1287079 (reg!17284 r2!6280) (ite c!1287078 (regTwo!34423 r2!6280) (regOne!34422 r2!6280)))))))

(declare-fun b!6935629 () Bool)

(assert (=> b!6935629 (= e!4172829 call!630181)))

(declare-fun b!6935630 () Bool)

(declare-fun e!4172834 () Bool)

(declare-fun e!4172832 () Bool)

(assert (=> b!6935630 (= e!4172834 e!4172832)))

(declare-fun res!2828875 () Bool)

(assert (=> b!6935630 (=> (not res!2828875) (not e!4172832))))

(assert (=> b!6935630 (= res!2828875 call!630183)))

(declare-fun b!6935631 () Bool)

(declare-fun res!2828873 () Bool)

(assert (=> b!6935631 (=> res!2828873 e!4172834)))

(assert (=> b!6935631 (= res!2828873 (not ((_ is Concat!25800) r2!6280)))))

(assert (=> b!6935631 (= e!4172833 e!4172834)))

(declare-fun b!6935632 () Bool)

(declare-fun res!2828876 () Bool)

(declare-fun e!4172830 () Bool)

(assert (=> b!6935632 (=> (not res!2828876) (not e!4172830))))

(assert (=> b!6935632 (= res!2828876 call!630182)))

(assert (=> b!6935632 (= e!4172833 e!4172830)))

(declare-fun d!2166777 () Bool)

(declare-fun res!2828874 () Bool)

(declare-fun e!4172828 () Bool)

(assert (=> d!2166777 (=> res!2828874 e!4172828)))

(assert (=> d!2166777 (= res!2828874 ((_ is ElementMatch!16955) r2!6280))))

(assert (=> d!2166777 (= (validRegex!8661 r2!6280) e!4172828)))

(declare-fun b!6935633 () Bool)

(assert (=> b!6935633 (= e!4172832 call!630182)))

(declare-fun b!6935634 () Bool)

(assert (=> b!6935634 (= e!4172830 call!630183)))

(declare-fun b!6935635 () Bool)

(assert (=> b!6935635 (= e!4172828 e!4172831)))

(assert (=> b!6935635 (= c!1287079 ((_ is Star!16955) r2!6280))))

(assert (= (and d!2166777 (not res!2828874)) b!6935635))

(assert (= (and b!6935635 c!1287079) b!6935627))

(assert (= (and b!6935635 (not c!1287079)) b!6935628))

(assert (= (and b!6935627 res!2828872) b!6935629))

(assert (= (and b!6935628 c!1287078) b!6935632))

(assert (= (and b!6935628 (not c!1287078)) b!6935631))

(assert (= (and b!6935632 res!2828876) b!6935634))

(assert (= (and b!6935631 (not res!2828873)) b!6935630))

(assert (= (and b!6935630 res!2828875) b!6935633))

(assert (= (or b!6935632 b!6935633) bm!630177))

(assert (= (or b!6935634 b!6935630) bm!630176))

(assert (= (or b!6935629 bm!630176) bm!630178))

(declare-fun m!7641674 () Bool)

(assert (=> b!6935627 m!7641674))

(declare-fun m!7641676 () Bool)

(assert (=> bm!630177 m!7641676))

(declare-fun m!7641678 () Bool)

(assert (=> bm!630178 m!7641678))

(assert (=> b!6935126 d!2166777))

(declare-fun d!2166781 () Bool)

(declare-fun e!4172857 () Bool)

(assert (=> d!2166781 e!4172857))

(declare-fun res!2828897 () Bool)

(assert (=> d!2166781 (=> (not res!2828897) (not e!4172857))))

(declare-fun lt!2474293 () List!66708)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13096 (List!66708) (InoxSet C!34180))

(assert (=> d!2166781 (= res!2828897 (= (content!13096 lt!2474293) ((_ map or) (content!13096 (_1!37115 lt!2474201)) (content!13096 (++!14994 (_1!37115 lt!2474189) (_2!37115 lt!2474189))))))))

(declare-fun e!4172858 () List!66708)

(assert (=> d!2166781 (= lt!2474293 e!4172858)))

(declare-fun c!1287091 () Bool)

(assert (=> d!2166781 (= c!1287091 ((_ is Nil!66584) (_1!37115 lt!2474201)))))

(assert (=> d!2166781 (= (++!14994 (_1!37115 lt!2474201) (++!14994 (_1!37115 lt!2474189) (_2!37115 lt!2474189))) lt!2474293)))

(declare-fun b!6935679 () Bool)

(declare-fun res!2828896 () Bool)

(assert (=> b!6935679 (=> (not res!2828896) (not e!4172857))))

(declare-fun size!40793 (List!66708) Int)

(assert (=> b!6935679 (= res!2828896 (= (size!40793 lt!2474293) (+ (size!40793 (_1!37115 lt!2474201)) (size!40793 (++!14994 (_1!37115 lt!2474189) (_2!37115 lt!2474189))))))))

(declare-fun b!6935677 () Bool)

(assert (=> b!6935677 (= e!4172858 (++!14994 (_1!37115 lt!2474189) (_2!37115 lt!2474189)))))

(declare-fun b!6935678 () Bool)

(assert (=> b!6935678 (= e!4172858 (Cons!66584 (h!73032 (_1!37115 lt!2474201)) (++!14994 (t!380451 (_1!37115 lt!2474201)) (++!14994 (_1!37115 lt!2474189) (_2!37115 lt!2474189)))))))

(declare-fun b!6935680 () Bool)

(assert (=> b!6935680 (= e!4172857 (or (not (= (++!14994 (_1!37115 lt!2474189) (_2!37115 lt!2474189)) Nil!66584)) (= lt!2474293 (_1!37115 lt!2474201))))))

(assert (= (and d!2166781 c!1287091) b!6935677))

(assert (= (and d!2166781 (not c!1287091)) b!6935678))

(assert (= (and d!2166781 res!2828897) b!6935679))

(assert (= (and b!6935679 res!2828896) b!6935680))

(declare-fun m!7641706 () Bool)

(assert (=> d!2166781 m!7641706))

(declare-fun m!7641708 () Bool)

(assert (=> d!2166781 m!7641708))

(assert (=> d!2166781 m!7641226))

(declare-fun m!7641710 () Bool)

(assert (=> d!2166781 m!7641710))

(declare-fun m!7641712 () Bool)

(assert (=> b!6935679 m!7641712))

(declare-fun m!7641714 () Bool)

(assert (=> b!6935679 m!7641714))

(assert (=> b!6935679 m!7641226))

(declare-fun m!7641716 () Bool)

(assert (=> b!6935679 m!7641716))

(assert (=> b!6935678 m!7641226))

(declare-fun m!7641718 () Bool)

(assert (=> b!6935678 m!7641718))

(assert (=> b!6935118 d!2166781))

(declare-fun d!2166793 () Bool)

(declare-fun e!4172859 () Bool)

(assert (=> d!2166793 e!4172859))

(declare-fun res!2828899 () Bool)

(assert (=> d!2166793 (=> (not res!2828899) (not e!4172859))))

(declare-fun lt!2474294 () List!66708)

(assert (=> d!2166793 (= res!2828899 (= (content!13096 lt!2474294) ((_ map or) (content!13096 (_1!37115 lt!2474189)) (content!13096 (_2!37115 lt!2474189)))))))

(declare-fun e!4172860 () List!66708)

(assert (=> d!2166793 (= lt!2474294 e!4172860)))

(declare-fun c!1287092 () Bool)

(assert (=> d!2166793 (= c!1287092 ((_ is Nil!66584) (_1!37115 lt!2474189)))))

(assert (=> d!2166793 (= (++!14994 (_1!37115 lt!2474189) (_2!37115 lt!2474189)) lt!2474294)))

(declare-fun b!6935683 () Bool)

(declare-fun res!2828898 () Bool)

(assert (=> b!6935683 (=> (not res!2828898) (not e!4172859))))

(assert (=> b!6935683 (= res!2828898 (= (size!40793 lt!2474294) (+ (size!40793 (_1!37115 lt!2474189)) (size!40793 (_2!37115 lt!2474189)))))))

(declare-fun b!6935681 () Bool)

(assert (=> b!6935681 (= e!4172860 (_2!37115 lt!2474189))))

(declare-fun b!6935682 () Bool)

(assert (=> b!6935682 (= e!4172860 (Cons!66584 (h!73032 (_1!37115 lt!2474189)) (++!14994 (t!380451 (_1!37115 lt!2474189)) (_2!37115 lt!2474189))))))

(declare-fun b!6935684 () Bool)

(assert (=> b!6935684 (= e!4172859 (or (not (= (_2!37115 lt!2474189) Nil!66584)) (= lt!2474294 (_1!37115 lt!2474189))))))

(assert (= (and d!2166793 c!1287092) b!6935681))

(assert (= (and d!2166793 (not c!1287092)) b!6935682))

(assert (= (and d!2166793 res!2828899) b!6935683))

(assert (= (and b!6935683 res!2828898) b!6935684))

(declare-fun m!7641720 () Bool)

(assert (=> d!2166793 m!7641720))

(declare-fun m!7641722 () Bool)

(assert (=> d!2166793 m!7641722))

(declare-fun m!7641724 () Bool)

(assert (=> d!2166793 m!7641724))

(declare-fun m!7641726 () Bool)

(assert (=> b!6935683 m!7641726))

(declare-fun m!7641728 () Bool)

(assert (=> b!6935683 m!7641728))

(declare-fun m!7641730 () Bool)

(assert (=> b!6935683 m!7641730))

(declare-fun m!7641732 () Bool)

(assert (=> b!6935682 m!7641732))

(assert (=> b!6935118 d!2166793))

(declare-fun bs!1852171 () Bool)

(declare-fun b!6935690 () Bool)

(assert (= bs!1852171 (and b!6935690 b!6935129)))

(declare-fun lambda!394884 () Int)

(assert (=> bs!1852171 (not (= lambda!394884 lambda!394833))))

(declare-fun bs!1852172 () Bool)

(assert (= bs!1852172 (and b!6935690 d!2166757)))

(assert (=> bs!1852172 (not (= lambda!394884 lambda!394881))))

(declare-fun bs!1852173 () Bool)

(assert (= bs!1852173 (and b!6935690 d!2166683)))

(assert (=> bs!1852173 (not (= lambda!394884 lambda!394853))))

(declare-fun bs!1852175 () Bool)

(assert (= bs!1852175 (and b!6935690 b!6935107)))

(assert (=> bs!1852175 (not (= lambda!394884 lambda!394838))))

(declare-fun bs!1852177 () Bool)

(assert (= bs!1852177 (and b!6935690 b!6935556)))

(assert (=> bs!1852177 (= (and (= (_1!37115 lt!2474189) (_2!37115 lt!2474201)) (= (reg!17284 r2!6280) (reg!17284 lt!2474188)) (= r2!6280 lt!2474188)) (= lambda!394884 lambda!394872))))

(assert (=> bs!1852171 (not (= lambda!394884 lambda!394834))))

(declare-fun bs!1852180 () Bool)

(assert (= bs!1852180 (and b!6935690 b!6935127)))

(assert (=> bs!1852180 (not (= lambda!394884 lambda!394835))))

(assert (=> bs!1852173 (not (= lambda!394884 lambda!394854))))

(declare-fun bs!1852182 () Bool)

(assert (= bs!1852182 (and b!6935690 b!6935551)))

(assert (=> bs!1852182 (not (= lambda!394884 lambda!394874))))

(assert (=> bs!1852175 (not (= lambda!394884 lambda!394837))))

(assert (=> bs!1852180 (not (= lambda!394884 lambda!394836))))

(assert (=> b!6935690 true))

(assert (=> b!6935690 true))

(declare-fun bs!1852189 () Bool)

(declare-fun b!6935685 () Bool)

(assert (= bs!1852189 (and b!6935685 b!6935129)))

(declare-fun lambda!394886 () Int)

(assert (=> bs!1852189 (not (= lambda!394886 lambda!394833))))

(declare-fun bs!1852190 () Bool)

(assert (= bs!1852190 (and b!6935685 d!2166757)))

(assert (=> bs!1852190 (not (= lambda!394886 lambda!394881))))

(declare-fun bs!1852192 () Bool)

(assert (= bs!1852192 (and b!6935685 d!2166683)))

(assert (=> bs!1852192 (not (= lambda!394886 lambda!394853))))

(declare-fun bs!1852194 () Bool)

(assert (= bs!1852194 (and b!6935685 b!6935107)))

(assert (=> bs!1852194 (= (and (= (_1!37115 lt!2474189) lt!2474186) (= (regOne!34422 r2!6280) r1!6342) (= (regTwo!34422 r2!6280) r2!6280)) (= lambda!394886 lambda!394838))))

(declare-fun bs!1852196 () Bool)

(assert (= bs!1852196 (and b!6935685 b!6935556)))

(assert (=> bs!1852196 (not (= lambda!394886 lambda!394872))))

(declare-fun bs!1852198 () Bool)

(assert (= bs!1852198 (and b!6935685 b!6935690)))

(assert (=> bs!1852198 (not (= lambda!394886 lambda!394884))))

(assert (=> bs!1852189 (= (and (= (_1!37115 lt!2474189) s!14361) (= (regOne!34422 r2!6280) r1!6342) (= (regTwo!34422 r2!6280) lt!2474188)) (= lambda!394886 lambda!394834))))

(declare-fun bs!1852200 () Bool)

(assert (= bs!1852200 (and b!6935685 b!6935127)))

(assert (=> bs!1852200 (not (= lambda!394886 lambda!394835))))

(assert (=> bs!1852192 (= (and (= (_1!37115 lt!2474189) (_2!37115 lt!2474201)) (= (regOne!34422 r2!6280) r2!6280) (= (regTwo!34422 r2!6280) r3!135)) (= lambda!394886 lambda!394854))))

(declare-fun bs!1852202 () Bool)

(assert (= bs!1852202 (and b!6935685 b!6935551)))

(assert (=> bs!1852202 (= (and (= (_1!37115 lt!2474189) (_2!37115 lt!2474201)) (= (regOne!34422 r2!6280) (regOne!34422 lt!2474188)) (= (regTwo!34422 r2!6280) (regTwo!34422 lt!2474188))) (= lambda!394886 lambda!394874))))

(assert (=> bs!1852194 (not (= lambda!394886 lambda!394837))))

(assert (=> bs!1852200 (= (and (= (_1!37115 lt!2474189) (_2!37115 lt!2474201)) (= (regOne!34422 r2!6280) r2!6280) (= (regTwo!34422 r2!6280) r3!135)) (= lambda!394886 lambda!394836))))

(assert (=> b!6935685 true))

(assert (=> b!6935685 true))

(declare-fun bm!630182 () Bool)

(declare-fun call!630187 () Bool)

(assert (=> bm!630182 (= call!630187 (isEmpty!38849 (_1!37115 lt!2474189)))))

(declare-fun e!4172861 () Bool)

(declare-fun call!630188 () Bool)

(assert (=> b!6935685 (= e!4172861 call!630188)))

(declare-fun b!6935686 () Bool)

(declare-fun e!4172863 () Bool)

(assert (=> b!6935686 (= e!4172863 (matchRSpec!4012 (regTwo!34423 r2!6280) (_1!37115 lt!2474189)))))

(declare-fun b!6935687 () Bool)

(declare-fun e!4172864 () Bool)

(assert (=> b!6935687 (= e!4172864 e!4172863)))

(declare-fun res!2828901 () Bool)

(assert (=> b!6935687 (= res!2828901 (matchRSpec!4012 (regOne!34423 r2!6280) (_1!37115 lt!2474189)))))

(assert (=> b!6935687 (=> res!2828901 e!4172863)))

(declare-fun b!6935688 () Bool)

(declare-fun c!1287093 () Bool)

(assert (=> b!6935688 (= c!1287093 ((_ is Union!16955) r2!6280))))

(declare-fun e!4172862 () Bool)

(assert (=> b!6935688 (= e!4172862 e!4172864)))

(declare-fun b!6935689 () Bool)

(assert (=> b!6935689 (= e!4172864 e!4172861)))

(declare-fun c!1287095 () Bool)

(assert (=> b!6935689 (= c!1287095 ((_ is Star!16955) r2!6280))))

(declare-fun e!4172865 () Bool)

(assert (=> b!6935690 (= e!4172865 call!630188)))

(declare-fun bm!630183 () Bool)

(assert (=> bm!630183 (= call!630188 (Exists!3955 (ite c!1287095 lambda!394884 lambda!394886)))))

(declare-fun d!2166795 () Bool)

(declare-fun c!1287094 () Bool)

(assert (=> d!2166795 (= c!1287094 ((_ is EmptyExpr!16955) r2!6280))))

(declare-fun e!4172866 () Bool)

(assert (=> d!2166795 (= (matchRSpec!4012 r2!6280 (_1!37115 lt!2474189)) e!4172866)))

(declare-fun b!6935691 () Bool)

(assert (=> b!6935691 (= e!4172862 (= (_1!37115 lt!2474189) (Cons!66584 (c!1286963 r2!6280) Nil!66584)))))

(declare-fun b!6935692 () Bool)

(assert (=> b!6935692 (= e!4172866 call!630187)))

(declare-fun b!6935693 () Bool)

(declare-fun c!1287096 () Bool)

(assert (=> b!6935693 (= c!1287096 ((_ is ElementMatch!16955) r2!6280))))

(declare-fun e!4172867 () Bool)

(assert (=> b!6935693 (= e!4172867 e!4172862)))

(declare-fun b!6935694 () Bool)

(declare-fun res!2828902 () Bool)

(assert (=> b!6935694 (=> res!2828902 e!4172865)))

(assert (=> b!6935694 (= res!2828902 call!630187)))

(assert (=> b!6935694 (= e!4172861 e!4172865)))

(declare-fun b!6935695 () Bool)

(assert (=> b!6935695 (= e!4172866 e!4172867)))

(declare-fun res!2828900 () Bool)

(assert (=> b!6935695 (= res!2828900 (not ((_ is EmptyLang!16955) r2!6280)))))

(assert (=> b!6935695 (=> (not res!2828900) (not e!4172867))))

(assert (= (and d!2166795 c!1287094) b!6935692))

(assert (= (and d!2166795 (not c!1287094)) b!6935695))

(assert (= (and b!6935695 res!2828900) b!6935693))

(assert (= (and b!6935693 c!1287096) b!6935691))

(assert (= (and b!6935693 (not c!1287096)) b!6935688))

(assert (= (and b!6935688 c!1287093) b!6935687))

(assert (= (and b!6935688 (not c!1287093)) b!6935689))

(assert (= (and b!6935687 (not res!2828901)) b!6935686))

(assert (= (and b!6935689 c!1287095) b!6935694))

(assert (= (and b!6935689 (not c!1287095)) b!6935685))

(assert (= (and b!6935694 (not res!2828902)) b!6935690))

(assert (= (or b!6935690 b!6935685) bm!630183))

(assert (= (or b!6935692 b!6935694) bm!630182))

(assert (=> bm!630182 m!7641434))

(declare-fun m!7641734 () Bool)

(assert (=> b!6935686 m!7641734))

(declare-fun m!7641736 () Bool)

(assert (=> b!6935687 m!7641736))

(declare-fun m!7641738 () Bool)

(assert (=> bm!630183 m!7641738))

(assert (=> b!6935118 d!2166795))

(declare-fun d!2166797 () Bool)

(assert (=> d!2166797 (= (matchR!9094 r2!6280 (_1!37115 lt!2474189)) (matchRSpec!4012 r2!6280 (_1!37115 lt!2474189)))))

(declare-fun lt!2474295 () Unit!160634)

(assert (=> d!2166797 (= lt!2474295 (choose!51661 r2!6280 (_1!37115 lt!2474189)))))

(assert (=> d!2166797 (validRegex!8661 r2!6280)))

(assert (=> d!2166797 (= (mainMatchTheorem!4012 r2!6280 (_1!37115 lt!2474189)) lt!2474295)))

(declare-fun bs!1852206 () Bool)

(assert (= bs!1852206 d!2166797))

(assert (=> bs!1852206 m!7641202))

(assert (=> bs!1852206 m!7641224))

(declare-fun m!7641746 () Bool)

(assert (=> bs!1852206 m!7641746))

(assert (=> bs!1852206 m!7641198))

(assert (=> b!6935118 d!2166797))

(declare-fun d!2166801 () Bool)

(assert (=> d!2166801 (= (matchR!9094 r3!135 (_2!37115 lt!2474189)) (matchRSpec!4012 r3!135 (_2!37115 lt!2474189)))))

(declare-fun lt!2474296 () Unit!160634)

(assert (=> d!2166801 (= lt!2474296 (choose!51661 r3!135 (_2!37115 lt!2474189)))))

(assert (=> d!2166801 (validRegex!8661 r3!135)))

(assert (=> d!2166801 (= (mainMatchTheorem!4012 r3!135 (_2!37115 lt!2474189)) lt!2474296)))

(declare-fun bs!1852207 () Bool)

(assert (= bs!1852207 d!2166801))

(assert (=> bs!1852207 m!7641200))

(assert (=> bs!1852207 m!7641232))

(declare-fun m!7641748 () Bool)

(assert (=> bs!1852207 m!7641748))

(assert (=> bs!1852207 m!7641278))

(assert (=> b!6935118 d!2166801))

(declare-fun bs!1852211 () Bool)

(declare-fun b!6935712 () Bool)

(assert (= bs!1852211 (and b!6935712 b!6935129)))

(declare-fun lambda!394888 () Int)

(assert (=> bs!1852211 (not (= lambda!394888 lambda!394833))))

(declare-fun bs!1852213 () Bool)

(assert (= bs!1852213 (and b!6935712 d!2166757)))

(assert (=> bs!1852213 (not (= lambda!394888 lambda!394881))))

(declare-fun bs!1852215 () Bool)

(assert (= bs!1852215 (and b!6935712 b!6935685)))

(assert (=> bs!1852215 (not (= lambda!394888 lambda!394886))))

(declare-fun bs!1852216 () Bool)

(assert (= bs!1852216 (and b!6935712 d!2166683)))

(assert (=> bs!1852216 (not (= lambda!394888 lambda!394853))))

(declare-fun bs!1852218 () Bool)

(assert (= bs!1852218 (and b!6935712 b!6935107)))

(assert (=> bs!1852218 (not (= lambda!394888 lambda!394838))))

(declare-fun bs!1852220 () Bool)

(assert (= bs!1852220 (and b!6935712 b!6935556)))

(assert (=> bs!1852220 (= (and (= (_2!37115 lt!2474189) (_2!37115 lt!2474201)) (= (reg!17284 r3!135) (reg!17284 lt!2474188)) (= r3!135 lt!2474188)) (= lambda!394888 lambda!394872))))

(declare-fun bs!1852222 () Bool)

(assert (= bs!1852222 (and b!6935712 b!6935690)))

(assert (=> bs!1852222 (= (and (= (_2!37115 lt!2474189) (_1!37115 lt!2474189)) (= (reg!17284 r3!135) (reg!17284 r2!6280)) (= r3!135 r2!6280)) (= lambda!394888 lambda!394884))))

(assert (=> bs!1852211 (not (= lambda!394888 lambda!394834))))

(declare-fun bs!1852225 () Bool)

(assert (= bs!1852225 (and b!6935712 b!6935127)))

(assert (=> bs!1852225 (not (= lambda!394888 lambda!394835))))

(assert (=> bs!1852216 (not (= lambda!394888 lambda!394854))))

(declare-fun bs!1852226 () Bool)

(assert (= bs!1852226 (and b!6935712 b!6935551)))

(assert (=> bs!1852226 (not (= lambda!394888 lambda!394874))))

(assert (=> bs!1852218 (not (= lambda!394888 lambda!394837))))

(assert (=> bs!1852225 (not (= lambda!394888 lambda!394836))))

(assert (=> b!6935712 true))

(assert (=> b!6935712 true))

(declare-fun bs!1852233 () Bool)

(declare-fun b!6935707 () Bool)

(assert (= bs!1852233 (and b!6935707 b!6935129)))

(declare-fun lambda!394889 () Int)

(assert (=> bs!1852233 (not (= lambda!394889 lambda!394833))))

(declare-fun bs!1852235 () Bool)

(assert (= bs!1852235 (and b!6935707 d!2166757)))

(assert (=> bs!1852235 (not (= lambda!394889 lambda!394881))))

(declare-fun bs!1852237 () Bool)

(assert (= bs!1852237 (and b!6935707 b!6935685)))

(assert (=> bs!1852237 (= (and (= (_2!37115 lt!2474189) (_1!37115 lt!2474189)) (= (regOne!34422 r3!135) (regOne!34422 r2!6280)) (= (regTwo!34422 r3!135) (regTwo!34422 r2!6280))) (= lambda!394889 lambda!394886))))

(declare-fun bs!1852238 () Bool)

(assert (= bs!1852238 (and b!6935707 d!2166683)))

(assert (=> bs!1852238 (not (= lambda!394889 lambda!394853))))

(declare-fun bs!1852240 () Bool)

(assert (= bs!1852240 (and b!6935707 b!6935107)))

(assert (=> bs!1852240 (= (and (= (_2!37115 lt!2474189) lt!2474186) (= (regOne!34422 r3!135) r1!6342) (= (regTwo!34422 r3!135) r2!6280)) (= lambda!394889 lambda!394838))))

(declare-fun bs!1852242 () Bool)

(assert (= bs!1852242 (and b!6935707 b!6935556)))

(assert (=> bs!1852242 (not (= lambda!394889 lambda!394872))))

(declare-fun bs!1852244 () Bool)

(assert (= bs!1852244 (and b!6935707 b!6935690)))

(assert (=> bs!1852244 (not (= lambda!394889 lambda!394884))))

(declare-fun bs!1852245 () Bool)

(assert (= bs!1852245 (and b!6935707 b!6935712)))

(assert (=> bs!1852245 (not (= lambda!394889 lambda!394888))))

(assert (=> bs!1852233 (= (and (= (_2!37115 lt!2474189) s!14361) (= (regOne!34422 r3!135) r1!6342) (= (regTwo!34422 r3!135) lt!2474188)) (= lambda!394889 lambda!394834))))

(declare-fun bs!1852246 () Bool)

(assert (= bs!1852246 (and b!6935707 b!6935127)))

(assert (=> bs!1852246 (not (= lambda!394889 lambda!394835))))

(assert (=> bs!1852238 (= (and (= (_2!37115 lt!2474189) (_2!37115 lt!2474201)) (= (regOne!34422 r3!135) r2!6280) (= (regTwo!34422 r3!135) r3!135)) (= lambda!394889 lambda!394854))))

(declare-fun bs!1852247 () Bool)

(assert (= bs!1852247 (and b!6935707 b!6935551)))

(assert (=> bs!1852247 (= (and (= (_2!37115 lt!2474189) (_2!37115 lt!2474201)) (= (regOne!34422 r3!135) (regOne!34422 lt!2474188)) (= (regTwo!34422 r3!135) (regTwo!34422 lt!2474188))) (= lambda!394889 lambda!394874))))

(assert (=> bs!1852240 (not (= lambda!394889 lambda!394837))))

(assert (=> bs!1852246 (= (and (= (_2!37115 lt!2474189) (_2!37115 lt!2474201)) (= (regOne!34422 r3!135) r2!6280) (= (regTwo!34422 r3!135) r3!135)) (= lambda!394889 lambda!394836))))

(assert (=> b!6935707 true))

(assert (=> b!6935707 true))

(declare-fun bm!630186 () Bool)

(declare-fun call!630191 () Bool)

(assert (=> bm!630186 (= call!630191 (isEmpty!38849 (_2!37115 lt!2474189)))))

(declare-fun e!4172875 () Bool)

(declare-fun call!630192 () Bool)

(assert (=> b!6935707 (= e!4172875 call!630192)))

(declare-fun b!6935708 () Bool)

(declare-fun e!4172877 () Bool)

(assert (=> b!6935708 (= e!4172877 (matchRSpec!4012 (regTwo!34423 r3!135) (_2!37115 lt!2474189)))))

(declare-fun b!6935709 () Bool)

(declare-fun e!4172878 () Bool)

(assert (=> b!6935709 (= e!4172878 e!4172877)))

(declare-fun res!2828907 () Bool)

(assert (=> b!6935709 (= res!2828907 (matchRSpec!4012 (regOne!34423 r3!135) (_2!37115 lt!2474189)))))

(assert (=> b!6935709 (=> res!2828907 e!4172877)))

(declare-fun b!6935710 () Bool)

(declare-fun c!1287101 () Bool)

(assert (=> b!6935710 (= c!1287101 ((_ is Union!16955) r3!135))))

(declare-fun e!4172876 () Bool)

(assert (=> b!6935710 (= e!4172876 e!4172878)))

(declare-fun b!6935711 () Bool)

(assert (=> b!6935711 (= e!4172878 e!4172875)))

(declare-fun c!1287103 () Bool)

(assert (=> b!6935711 (= c!1287103 ((_ is Star!16955) r3!135))))

(declare-fun e!4172879 () Bool)

(assert (=> b!6935712 (= e!4172879 call!630192)))

(declare-fun bm!630187 () Bool)

(assert (=> bm!630187 (= call!630192 (Exists!3955 (ite c!1287103 lambda!394888 lambda!394889)))))

(declare-fun d!2166803 () Bool)

(declare-fun c!1287102 () Bool)

(assert (=> d!2166803 (= c!1287102 ((_ is EmptyExpr!16955) r3!135))))

(declare-fun e!4172880 () Bool)

(assert (=> d!2166803 (= (matchRSpec!4012 r3!135 (_2!37115 lt!2474189)) e!4172880)))

(declare-fun b!6935713 () Bool)

(assert (=> b!6935713 (= e!4172876 (= (_2!37115 lt!2474189) (Cons!66584 (c!1286963 r3!135) Nil!66584)))))

(declare-fun b!6935714 () Bool)

(assert (=> b!6935714 (= e!4172880 call!630191)))

(declare-fun b!6935715 () Bool)

(declare-fun c!1287104 () Bool)

(assert (=> b!6935715 (= c!1287104 ((_ is ElementMatch!16955) r3!135))))

(declare-fun e!4172881 () Bool)

(assert (=> b!6935715 (= e!4172881 e!4172876)))

(declare-fun b!6935716 () Bool)

(declare-fun res!2828908 () Bool)

(assert (=> b!6935716 (=> res!2828908 e!4172879)))

(assert (=> b!6935716 (= res!2828908 call!630191)))

(assert (=> b!6935716 (= e!4172875 e!4172879)))

(declare-fun b!6935717 () Bool)

(assert (=> b!6935717 (= e!4172880 e!4172881)))

(declare-fun res!2828906 () Bool)

(assert (=> b!6935717 (= res!2828906 (not ((_ is EmptyLang!16955) r3!135)))))

(assert (=> b!6935717 (=> (not res!2828906) (not e!4172881))))

(assert (= (and d!2166803 c!1287102) b!6935714))

(assert (= (and d!2166803 (not c!1287102)) b!6935717))

(assert (= (and b!6935717 res!2828906) b!6935715))

(assert (= (and b!6935715 c!1287104) b!6935713))

(assert (= (and b!6935715 (not c!1287104)) b!6935710))

(assert (= (and b!6935710 c!1287101) b!6935709))

(assert (= (and b!6935710 (not c!1287101)) b!6935711))

(assert (= (and b!6935709 (not res!2828907)) b!6935708))

(assert (= (and b!6935711 c!1287103) b!6935716))

(assert (= (and b!6935711 (not c!1287103)) b!6935707))

(assert (= (and b!6935716 (not res!2828908)) b!6935712))

(assert (= (or b!6935712 b!6935707) bm!630187))

(assert (= (or b!6935714 b!6935716) bm!630186))

(assert (=> bm!630186 m!7641294))

(declare-fun m!7641750 () Bool)

(assert (=> b!6935708 m!7641750))

(declare-fun m!7641752 () Bool)

(assert (=> b!6935709 m!7641752))

(declare-fun m!7641754 () Bool)

(assert (=> bm!630187 m!7641754))

(assert (=> b!6935118 d!2166803))

(declare-fun b!6935718 () Bool)

(declare-fun e!4172884 () Bool)

(assert (=> b!6935718 (= e!4172884 (= (head!13902 (_1!37115 lt!2474201)) (c!1286963 r1!6342)))))

(declare-fun b!6935719 () Bool)

(declare-fun res!2828915 () Bool)

(assert (=> b!6935719 (=> (not res!2828915) (not e!4172884))))

(declare-fun call!630193 () Bool)

(assert (=> b!6935719 (= res!2828915 (not call!630193))))

(declare-fun b!6935720 () Bool)

(declare-fun e!4172886 () Bool)

(declare-fun e!4172882 () Bool)

(assert (=> b!6935720 (= e!4172886 e!4172882)))

(declare-fun c!1287106 () Bool)

(assert (=> b!6935720 (= c!1287106 ((_ is EmptyLang!16955) r1!6342))))

(declare-fun b!6935721 () Bool)

(declare-fun lt!2474297 () Bool)

(assert (=> b!6935721 (= e!4172882 (not lt!2474297))))

(declare-fun b!6935722 () Bool)

(declare-fun res!2828916 () Bool)

(declare-fun e!4172888 () Bool)

(assert (=> b!6935722 (=> res!2828916 e!4172888)))

(assert (=> b!6935722 (= res!2828916 e!4172884)))

(declare-fun res!2828913 () Bool)

(assert (=> b!6935722 (=> (not res!2828913) (not e!4172884))))

(assert (=> b!6935722 (= res!2828913 lt!2474297)))

(declare-fun b!6935723 () Bool)

(declare-fun res!2828914 () Bool)

(assert (=> b!6935723 (=> (not res!2828914) (not e!4172884))))

(assert (=> b!6935723 (= res!2828914 (isEmpty!38849 (tail!12954 (_1!37115 lt!2474201))))))

(declare-fun b!6935724 () Bool)

(assert (=> b!6935724 (= e!4172886 (= lt!2474297 call!630193))))

(declare-fun b!6935725 () Bool)

(declare-fun e!4172885 () Bool)

(assert (=> b!6935725 (= e!4172885 (nullable!6774 r1!6342))))

(declare-fun b!6935726 () Bool)

(assert (=> b!6935726 (= e!4172885 (matchR!9094 (derivativeStep!5449 r1!6342 (head!13902 (_1!37115 lt!2474201))) (tail!12954 (_1!37115 lt!2474201))))))

(declare-fun b!6935727 () Bool)

(declare-fun e!4172883 () Bool)

(assert (=> b!6935727 (= e!4172888 e!4172883)))

(declare-fun res!2828912 () Bool)

(assert (=> b!6935727 (=> (not res!2828912) (not e!4172883))))

(assert (=> b!6935727 (= res!2828912 (not lt!2474297))))

(declare-fun b!6935728 () Bool)

(declare-fun e!4172887 () Bool)

(assert (=> b!6935728 (= e!4172883 e!4172887)))

(declare-fun res!2828909 () Bool)

(assert (=> b!6935728 (=> res!2828909 e!4172887)))

(assert (=> b!6935728 (= res!2828909 call!630193)))

(declare-fun b!6935729 () Bool)

(declare-fun res!2828911 () Bool)

(assert (=> b!6935729 (=> res!2828911 e!4172888)))

(assert (=> b!6935729 (= res!2828911 (not ((_ is ElementMatch!16955) r1!6342)))))

(assert (=> b!6935729 (= e!4172882 e!4172888)))

(declare-fun b!6935730 () Bool)

(assert (=> b!6935730 (= e!4172887 (not (= (head!13902 (_1!37115 lt!2474201)) (c!1286963 r1!6342))))))

(declare-fun b!6935731 () Bool)

(declare-fun res!2828910 () Bool)

(assert (=> b!6935731 (=> res!2828910 e!4172887)))

(assert (=> b!6935731 (= res!2828910 (not (isEmpty!38849 (tail!12954 (_1!37115 lt!2474201)))))))

(declare-fun bm!630188 () Bool)

(assert (=> bm!630188 (= call!630193 (isEmpty!38849 (_1!37115 lt!2474201)))))

(declare-fun d!2166805 () Bool)

(assert (=> d!2166805 e!4172886))

(declare-fun c!1287105 () Bool)

(assert (=> d!2166805 (= c!1287105 ((_ is EmptyExpr!16955) r1!6342))))

(assert (=> d!2166805 (= lt!2474297 e!4172885)))

(declare-fun c!1287107 () Bool)

(assert (=> d!2166805 (= c!1287107 (isEmpty!38849 (_1!37115 lt!2474201)))))

(assert (=> d!2166805 (validRegex!8661 r1!6342)))

(assert (=> d!2166805 (= (matchR!9094 r1!6342 (_1!37115 lt!2474201)) lt!2474297)))

(assert (= (and d!2166805 c!1287107) b!6935725))

(assert (= (and d!2166805 (not c!1287107)) b!6935726))

(assert (= (and d!2166805 c!1287105) b!6935724))

(assert (= (and d!2166805 (not c!1287105)) b!6935720))

(assert (= (and b!6935720 c!1287106) b!6935721))

(assert (= (and b!6935720 (not c!1287106)) b!6935729))

(assert (= (and b!6935729 (not res!2828911)) b!6935722))

(assert (= (and b!6935722 res!2828913) b!6935719))

(assert (= (and b!6935719 res!2828915) b!6935723))

(assert (= (and b!6935723 res!2828914) b!6935718))

(assert (= (and b!6935722 (not res!2828916)) b!6935727))

(assert (= (and b!6935727 res!2828912) b!6935728))

(assert (= (and b!6935728 (not res!2828909)) b!6935731))

(assert (= (and b!6935731 (not res!2828910)) b!6935730))

(assert (= (or b!6935724 b!6935719 b!6935728) bm!630188))

(declare-fun m!7641756 () Bool)

(assert (=> b!6935725 m!7641756))

(declare-fun m!7641758 () Bool)

(assert (=> b!6935718 m!7641758))

(declare-fun m!7641760 () Bool)

(assert (=> bm!630188 m!7641760))

(declare-fun m!7641762 () Bool)

(assert (=> b!6935731 m!7641762))

(assert (=> b!6935731 m!7641762))

(declare-fun m!7641764 () Bool)

(assert (=> b!6935731 m!7641764))

(assert (=> b!6935726 m!7641758))

(assert (=> b!6935726 m!7641758))

(declare-fun m!7641766 () Bool)

(assert (=> b!6935726 m!7641766))

(assert (=> b!6935726 m!7641762))

(assert (=> b!6935726 m!7641766))

(assert (=> b!6935726 m!7641762))

(declare-fun m!7641768 () Bool)

(assert (=> b!6935726 m!7641768))

(assert (=> d!2166805 m!7641760))

(assert (=> d!2166805 m!7641276))

(assert (=> b!6935723 m!7641762))

(assert (=> b!6935723 m!7641762))

(assert (=> b!6935723 m!7641764))

(assert (=> b!6935730 m!7641758))

(assert (=> b!6935129 d!2166805))

(declare-fun bs!1852267 () Bool)

(declare-fun b!6935737 () Bool)

(assert (= bs!1852267 (and b!6935737 b!6935707)))

(declare-fun lambda!394891 () Int)

(assert (=> bs!1852267 (not (= lambda!394891 lambda!394889))))

(declare-fun bs!1852270 () Bool)

(assert (= bs!1852270 (and b!6935737 b!6935129)))

(assert (=> bs!1852270 (not (= lambda!394891 lambda!394833))))

(declare-fun bs!1852272 () Bool)

(assert (= bs!1852272 (and b!6935737 d!2166757)))

(assert (=> bs!1852272 (not (= lambda!394891 lambda!394881))))

(declare-fun bs!1852273 () Bool)

(assert (= bs!1852273 (and b!6935737 b!6935685)))

(assert (=> bs!1852273 (not (= lambda!394891 lambda!394886))))

(declare-fun bs!1852274 () Bool)

(assert (= bs!1852274 (and b!6935737 d!2166683)))

(assert (=> bs!1852274 (not (= lambda!394891 lambda!394853))))

(declare-fun bs!1852275 () Bool)

(assert (= bs!1852275 (and b!6935737 b!6935107)))

(assert (=> bs!1852275 (not (= lambda!394891 lambda!394838))))

(declare-fun bs!1852276 () Bool)

(assert (= bs!1852276 (and b!6935737 b!6935556)))

(assert (=> bs!1852276 (= (and (= (_1!37115 lt!2474201) (_2!37115 lt!2474201)) (= (reg!17284 r1!6342) (reg!17284 lt!2474188)) (= r1!6342 lt!2474188)) (= lambda!394891 lambda!394872))))

(declare-fun bs!1852277 () Bool)

(assert (= bs!1852277 (and b!6935737 b!6935690)))

(assert (=> bs!1852277 (= (and (= (_1!37115 lt!2474201) (_1!37115 lt!2474189)) (= (reg!17284 r1!6342) (reg!17284 r2!6280)) (= r1!6342 r2!6280)) (= lambda!394891 lambda!394884))))

(declare-fun bs!1852278 () Bool)

(assert (= bs!1852278 (and b!6935737 b!6935712)))

(assert (=> bs!1852278 (= (and (= (_1!37115 lt!2474201) (_2!37115 lt!2474189)) (= (reg!17284 r1!6342) (reg!17284 r3!135)) (= r1!6342 r3!135)) (= lambda!394891 lambda!394888))))

(assert (=> bs!1852270 (not (= lambda!394891 lambda!394834))))

(declare-fun bs!1852279 () Bool)

(assert (= bs!1852279 (and b!6935737 b!6935127)))

(assert (=> bs!1852279 (not (= lambda!394891 lambda!394835))))

(assert (=> bs!1852274 (not (= lambda!394891 lambda!394854))))

(declare-fun bs!1852280 () Bool)

(assert (= bs!1852280 (and b!6935737 b!6935551)))

(assert (=> bs!1852280 (not (= lambda!394891 lambda!394874))))

(assert (=> bs!1852275 (not (= lambda!394891 lambda!394837))))

(assert (=> bs!1852279 (not (= lambda!394891 lambda!394836))))

(assert (=> b!6935737 true))

(assert (=> b!6935737 true))

(declare-fun bs!1852281 () Bool)

(declare-fun b!6935732 () Bool)

(assert (= bs!1852281 (and b!6935732 b!6935707)))

(declare-fun lambda!394892 () Int)

(assert (=> bs!1852281 (= (and (= (_1!37115 lt!2474201) (_2!37115 lt!2474189)) (= (regOne!34422 r1!6342) (regOne!34422 r3!135)) (= (regTwo!34422 r1!6342) (regTwo!34422 r3!135))) (= lambda!394892 lambda!394889))))

(declare-fun bs!1852282 () Bool)

(assert (= bs!1852282 (and b!6935732 b!6935129)))

(assert (=> bs!1852282 (not (= lambda!394892 lambda!394833))))

(declare-fun bs!1852283 () Bool)

(assert (= bs!1852283 (and b!6935732 d!2166757)))

(assert (=> bs!1852283 (not (= lambda!394892 lambda!394881))))

(declare-fun bs!1852284 () Bool)

(assert (= bs!1852284 (and b!6935732 d!2166683)))

(assert (=> bs!1852284 (not (= lambda!394892 lambda!394853))))

(declare-fun bs!1852285 () Bool)

(assert (= bs!1852285 (and b!6935732 b!6935107)))

(assert (=> bs!1852285 (= (and (= (_1!37115 lt!2474201) lt!2474186) (= (regOne!34422 r1!6342) r1!6342) (= (regTwo!34422 r1!6342) r2!6280)) (= lambda!394892 lambda!394838))))

(declare-fun bs!1852286 () Bool)

(assert (= bs!1852286 (and b!6935732 b!6935556)))

(assert (=> bs!1852286 (not (= lambda!394892 lambda!394872))))

(declare-fun bs!1852287 () Bool)

(assert (= bs!1852287 (and b!6935732 b!6935690)))

(assert (=> bs!1852287 (not (= lambda!394892 lambda!394884))))

(declare-fun bs!1852288 () Bool)

(assert (= bs!1852288 (and b!6935732 b!6935712)))

(assert (=> bs!1852288 (not (= lambda!394892 lambda!394888))))

(assert (=> bs!1852282 (= (and (= (_1!37115 lt!2474201) s!14361) (= (regOne!34422 r1!6342) r1!6342) (= (regTwo!34422 r1!6342) lt!2474188)) (= lambda!394892 lambda!394834))))

(declare-fun bs!1852289 () Bool)

(assert (= bs!1852289 (and b!6935732 b!6935127)))

(assert (=> bs!1852289 (not (= lambda!394892 lambda!394835))))

(assert (=> bs!1852284 (= (and (= (_1!37115 lt!2474201) (_2!37115 lt!2474201)) (= (regOne!34422 r1!6342) r2!6280) (= (regTwo!34422 r1!6342) r3!135)) (= lambda!394892 lambda!394854))))

(declare-fun bs!1852290 () Bool)

(assert (= bs!1852290 (and b!6935732 b!6935551)))

(assert (=> bs!1852290 (= (and (= (_1!37115 lt!2474201) (_2!37115 lt!2474201)) (= (regOne!34422 r1!6342) (regOne!34422 lt!2474188)) (= (regTwo!34422 r1!6342) (regTwo!34422 lt!2474188))) (= lambda!394892 lambda!394874))))

(declare-fun bs!1852291 () Bool)

(assert (= bs!1852291 (and b!6935732 b!6935737)))

(assert (=> bs!1852291 (not (= lambda!394892 lambda!394891))))

(declare-fun bs!1852292 () Bool)

(assert (= bs!1852292 (and b!6935732 b!6935685)))

(assert (=> bs!1852292 (= (and (= (_1!37115 lt!2474201) (_1!37115 lt!2474189)) (= (regOne!34422 r1!6342) (regOne!34422 r2!6280)) (= (regTwo!34422 r1!6342) (regTwo!34422 r2!6280))) (= lambda!394892 lambda!394886))))

(assert (=> bs!1852285 (not (= lambda!394892 lambda!394837))))

(assert (=> bs!1852289 (= (and (= (_1!37115 lt!2474201) (_2!37115 lt!2474201)) (= (regOne!34422 r1!6342) r2!6280) (= (regTwo!34422 r1!6342) r3!135)) (= lambda!394892 lambda!394836))))

(assert (=> b!6935732 true))

(assert (=> b!6935732 true))

(declare-fun bm!630189 () Bool)

(declare-fun call!630194 () Bool)

(assert (=> bm!630189 (= call!630194 (isEmpty!38849 (_1!37115 lt!2474201)))))

(declare-fun e!4172889 () Bool)

(declare-fun call!630195 () Bool)

(assert (=> b!6935732 (= e!4172889 call!630195)))

(declare-fun b!6935733 () Bool)

(declare-fun e!4172891 () Bool)

(assert (=> b!6935733 (= e!4172891 (matchRSpec!4012 (regTwo!34423 r1!6342) (_1!37115 lt!2474201)))))

(declare-fun b!6935734 () Bool)

(declare-fun e!4172892 () Bool)

(assert (=> b!6935734 (= e!4172892 e!4172891)))

(declare-fun res!2828918 () Bool)

(assert (=> b!6935734 (= res!2828918 (matchRSpec!4012 (regOne!34423 r1!6342) (_1!37115 lt!2474201)))))

(assert (=> b!6935734 (=> res!2828918 e!4172891)))

(declare-fun b!6935735 () Bool)

(declare-fun c!1287108 () Bool)

(assert (=> b!6935735 (= c!1287108 ((_ is Union!16955) r1!6342))))

(declare-fun e!4172890 () Bool)

(assert (=> b!6935735 (= e!4172890 e!4172892)))

(declare-fun b!6935736 () Bool)

(assert (=> b!6935736 (= e!4172892 e!4172889)))

(declare-fun c!1287110 () Bool)

(assert (=> b!6935736 (= c!1287110 ((_ is Star!16955) r1!6342))))

(declare-fun e!4172893 () Bool)

(assert (=> b!6935737 (= e!4172893 call!630195)))

(declare-fun bm!630190 () Bool)

(assert (=> bm!630190 (= call!630195 (Exists!3955 (ite c!1287110 lambda!394891 lambda!394892)))))

(declare-fun d!2166807 () Bool)

(declare-fun c!1287109 () Bool)

(assert (=> d!2166807 (= c!1287109 ((_ is EmptyExpr!16955) r1!6342))))

(declare-fun e!4172894 () Bool)

(assert (=> d!2166807 (= (matchRSpec!4012 r1!6342 (_1!37115 lt!2474201)) e!4172894)))

(declare-fun b!6935738 () Bool)

(assert (=> b!6935738 (= e!4172890 (= (_1!37115 lt!2474201) (Cons!66584 (c!1286963 r1!6342) Nil!66584)))))

(declare-fun b!6935739 () Bool)

(assert (=> b!6935739 (= e!4172894 call!630194)))

(declare-fun b!6935740 () Bool)

(declare-fun c!1287111 () Bool)

(assert (=> b!6935740 (= c!1287111 ((_ is ElementMatch!16955) r1!6342))))

(declare-fun e!4172895 () Bool)

(assert (=> b!6935740 (= e!4172895 e!4172890)))

(declare-fun b!6935741 () Bool)

(declare-fun res!2828919 () Bool)

(assert (=> b!6935741 (=> res!2828919 e!4172893)))

(assert (=> b!6935741 (= res!2828919 call!630194)))

(assert (=> b!6935741 (= e!4172889 e!4172893)))

(declare-fun b!6935742 () Bool)

(assert (=> b!6935742 (= e!4172894 e!4172895)))

(declare-fun res!2828917 () Bool)

(assert (=> b!6935742 (= res!2828917 (not ((_ is EmptyLang!16955) r1!6342)))))

(assert (=> b!6935742 (=> (not res!2828917) (not e!4172895))))

(assert (= (and d!2166807 c!1287109) b!6935739))

(assert (= (and d!2166807 (not c!1287109)) b!6935742))

(assert (= (and b!6935742 res!2828917) b!6935740))

(assert (= (and b!6935740 c!1287111) b!6935738))

(assert (= (and b!6935740 (not c!1287111)) b!6935735))

(assert (= (and b!6935735 c!1287108) b!6935734))

(assert (= (and b!6935735 (not c!1287108)) b!6935736))

(assert (= (and b!6935734 (not res!2828918)) b!6935733))

(assert (= (and b!6935736 c!1287110) b!6935741))

(assert (= (and b!6935736 (not c!1287110)) b!6935732))

(assert (= (and b!6935741 (not res!2828919)) b!6935737))

(assert (= (or b!6935737 b!6935732) bm!630190))

(assert (= (or b!6935739 b!6935741) bm!630189))

(assert (=> bm!630189 m!7641760))

(declare-fun m!7641776 () Bool)

(assert (=> b!6935733 m!7641776))

(declare-fun m!7641778 () Bool)

(assert (=> b!6935734 m!7641778))

(declare-fun m!7641780 () Bool)

(assert (=> bm!630190 m!7641780))

(assert (=> b!6935129 d!2166807))

(declare-fun d!2166809 () Bool)

(assert (=> d!2166809 (= (get!23369 lt!2474187) (v!52995 lt!2474187))))

(assert (=> b!6935129 d!2166809))

(declare-fun d!2166811 () Bool)

(assert (=> d!2166811 (= (Exists!3955 lambda!394834) (choose!51659 lambda!394834))))

(declare-fun bs!1852293 () Bool)

(assert (= bs!1852293 d!2166811))

(declare-fun m!7641782 () Bool)

(assert (=> bs!1852293 m!7641782))

(assert (=> b!6935129 d!2166811))

(declare-fun bs!1852294 () Bool)

(declare-fun d!2166813 () Bool)

(assert (= bs!1852294 (and d!2166813 b!6935707)))

(declare-fun lambda!394893 () Int)

(assert (=> bs!1852294 (not (= lambda!394893 lambda!394889))))

(declare-fun bs!1852295 () Bool)

(assert (= bs!1852295 (and d!2166813 b!6935129)))

(assert (=> bs!1852295 (= lambda!394893 lambda!394833)))

(declare-fun bs!1852296 () Bool)

(assert (= bs!1852296 (and d!2166813 b!6935732)))

(assert (=> bs!1852296 (not (= lambda!394893 lambda!394892))))

(declare-fun bs!1852297 () Bool)

(assert (= bs!1852297 (and d!2166813 d!2166757)))

(assert (=> bs!1852297 (= (and (= s!14361 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= lt!2474188 r3!135)) (= lambda!394893 lambda!394881))))

(declare-fun bs!1852298 () Bool)

(assert (= bs!1852298 (and d!2166813 d!2166683)))

(assert (=> bs!1852298 (= (and (= s!14361 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= lt!2474188 r3!135)) (= lambda!394893 lambda!394853))))

(declare-fun bs!1852299 () Bool)

(assert (= bs!1852299 (and d!2166813 b!6935107)))

(assert (=> bs!1852299 (not (= lambda!394893 lambda!394838))))

(declare-fun bs!1852300 () Bool)

(assert (= bs!1852300 (and d!2166813 b!6935556)))

(assert (=> bs!1852300 (not (= lambda!394893 lambda!394872))))

(declare-fun bs!1852301 () Bool)

(assert (= bs!1852301 (and d!2166813 b!6935690)))

(assert (=> bs!1852301 (not (= lambda!394893 lambda!394884))))

(declare-fun bs!1852302 () Bool)

(assert (= bs!1852302 (and d!2166813 b!6935712)))

(assert (=> bs!1852302 (not (= lambda!394893 lambda!394888))))

(assert (=> bs!1852295 (not (= lambda!394893 lambda!394834))))

(declare-fun bs!1852303 () Bool)

(assert (= bs!1852303 (and d!2166813 b!6935127)))

(assert (=> bs!1852303 (= (and (= s!14361 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= lt!2474188 r3!135)) (= lambda!394893 lambda!394835))))

(assert (=> bs!1852298 (not (= lambda!394893 lambda!394854))))

(declare-fun bs!1852304 () Bool)

(assert (= bs!1852304 (and d!2166813 b!6935551)))

(assert (=> bs!1852304 (not (= lambda!394893 lambda!394874))))

(declare-fun bs!1852305 () Bool)

(assert (= bs!1852305 (and d!2166813 b!6935737)))

(assert (=> bs!1852305 (not (= lambda!394893 lambda!394891))))

(declare-fun bs!1852306 () Bool)

(assert (= bs!1852306 (and d!2166813 b!6935685)))

(assert (=> bs!1852306 (not (= lambda!394893 lambda!394886))))

(assert (=> bs!1852299 (= (and (= s!14361 lt!2474186) (= lt!2474188 r2!6280)) (= lambda!394893 lambda!394837))))

(assert (=> bs!1852303 (not (= lambda!394893 lambda!394836))))

(assert (=> d!2166813 true))

(assert (=> d!2166813 true))

(assert (=> d!2166813 true))

(assert (=> d!2166813 (= (isDefined!13425 (findConcatSeparation!3138 r1!6342 lt!2474188 Nil!66584 s!14361 s!14361)) (Exists!3955 lambda!394893))))

(declare-fun lt!2474298 () Unit!160634)

(assert (=> d!2166813 (= lt!2474298 (choose!51660 r1!6342 lt!2474188 s!14361))))

(assert (=> d!2166813 (validRegex!8661 r1!6342)))

(assert (=> d!2166813 (= (lemmaFindConcatSeparationEquivalentToExists!2896 r1!6342 lt!2474188 s!14361) lt!2474298)))

(declare-fun bs!1852307 () Bool)

(assert (= bs!1852307 d!2166813))

(declare-fun m!7641784 () Bool)

(assert (=> bs!1852307 m!7641784))

(declare-fun m!7641786 () Bool)

(assert (=> bs!1852307 m!7641786))

(assert (=> bs!1852307 m!7641282))

(declare-fun m!7641788 () Bool)

(assert (=> bs!1852307 m!7641788))

(assert (=> bs!1852307 m!7641276))

(assert (=> bs!1852307 m!7641282))

(assert (=> b!6935129 d!2166813))

(declare-fun d!2166815 () Bool)

(assert (=> d!2166815 (= (Exists!3955 lambda!394833) (choose!51659 lambda!394833))))

(declare-fun bs!1852308 () Bool)

(assert (= bs!1852308 d!2166815))

(declare-fun m!7641790 () Bool)

(assert (=> bs!1852308 m!7641790))

(assert (=> b!6935129 d!2166815))

(declare-fun d!2166817 () Bool)

(assert (=> d!2166817 (= (matchR!9094 r1!6342 (_1!37115 lt!2474201)) (matchRSpec!4012 r1!6342 (_1!37115 lt!2474201)))))

(declare-fun lt!2474299 () Unit!160634)

(assert (=> d!2166817 (= lt!2474299 (choose!51661 r1!6342 (_1!37115 lt!2474201)))))

(assert (=> d!2166817 (validRegex!8661 r1!6342)))

(assert (=> d!2166817 (= (mainMatchTheorem!4012 r1!6342 (_1!37115 lt!2474201)) lt!2474299)))

(declare-fun bs!1852309 () Bool)

(assert (= bs!1852309 d!2166817))

(assert (=> bs!1852309 m!7641182))

(assert (=> bs!1852309 m!7641186))

(declare-fun m!7641792 () Bool)

(assert (=> bs!1852309 m!7641792))

(assert (=> bs!1852309 m!7641276))

(assert (=> b!6935129 d!2166817))

(declare-fun bs!1852310 () Bool)

(declare-fun d!2166819 () Bool)

(assert (= bs!1852310 (and d!2166819 d!2166813)))

(declare-fun lambda!394894 () Int)

(assert (=> bs!1852310 (= lambda!394894 lambda!394893)))

(declare-fun bs!1852311 () Bool)

(assert (= bs!1852311 (and d!2166819 b!6935707)))

(assert (=> bs!1852311 (not (= lambda!394894 lambda!394889))))

(declare-fun bs!1852312 () Bool)

(assert (= bs!1852312 (and d!2166819 b!6935129)))

(assert (=> bs!1852312 (= lambda!394894 lambda!394833)))

(declare-fun bs!1852313 () Bool)

(assert (= bs!1852313 (and d!2166819 b!6935732)))

(assert (=> bs!1852313 (not (= lambda!394894 lambda!394892))))

(declare-fun bs!1852314 () Bool)

(assert (= bs!1852314 (and d!2166819 d!2166757)))

(assert (=> bs!1852314 (= (and (= s!14361 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= lt!2474188 r3!135)) (= lambda!394894 lambda!394881))))

(declare-fun bs!1852315 () Bool)

(assert (= bs!1852315 (and d!2166819 d!2166683)))

(assert (=> bs!1852315 (= (and (= s!14361 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= lt!2474188 r3!135)) (= lambda!394894 lambda!394853))))

(declare-fun bs!1852316 () Bool)

(assert (= bs!1852316 (and d!2166819 b!6935107)))

(assert (=> bs!1852316 (not (= lambda!394894 lambda!394838))))

(declare-fun bs!1852317 () Bool)

(assert (= bs!1852317 (and d!2166819 b!6935556)))

(assert (=> bs!1852317 (not (= lambda!394894 lambda!394872))))

(declare-fun bs!1852318 () Bool)

(assert (= bs!1852318 (and d!2166819 b!6935690)))

(assert (=> bs!1852318 (not (= lambda!394894 lambda!394884))))

(declare-fun bs!1852319 () Bool)

(assert (= bs!1852319 (and d!2166819 b!6935712)))

(assert (=> bs!1852319 (not (= lambda!394894 lambda!394888))))

(assert (=> bs!1852312 (not (= lambda!394894 lambda!394834))))

(declare-fun bs!1852320 () Bool)

(assert (= bs!1852320 (and d!2166819 b!6935127)))

(assert (=> bs!1852320 (= (and (= s!14361 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= lt!2474188 r3!135)) (= lambda!394894 lambda!394835))))

(assert (=> bs!1852315 (not (= lambda!394894 lambda!394854))))

(declare-fun bs!1852321 () Bool)

(assert (= bs!1852321 (and d!2166819 b!6935551)))

(assert (=> bs!1852321 (not (= lambda!394894 lambda!394874))))

(declare-fun bs!1852322 () Bool)

(assert (= bs!1852322 (and d!2166819 b!6935737)))

(assert (=> bs!1852322 (not (= lambda!394894 lambda!394891))))

(declare-fun bs!1852323 () Bool)

(assert (= bs!1852323 (and d!2166819 b!6935685)))

(assert (=> bs!1852323 (not (= lambda!394894 lambda!394886))))

(assert (=> bs!1852316 (= (and (= s!14361 lt!2474186) (= lt!2474188 r2!6280)) (= lambda!394894 lambda!394837))))

(assert (=> bs!1852320 (not (= lambda!394894 lambda!394836))))

(assert (=> d!2166819 true))

(assert (=> d!2166819 true))

(assert (=> d!2166819 true))

(declare-fun lambda!394895 () Int)

(assert (=> bs!1852310 (not (= lambda!394895 lambda!394893))))

(assert (=> bs!1852311 (= (and (= s!14361 (_2!37115 lt!2474189)) (= r1!6342 (regOne!34422 r3!135)) (= lt!2474188 (regTwo!34422 r3!135))) (= lambda!394895 lambda!394889))))

(assert (=> bs!1852312 (not (= lambda!394895 lambda!394833))))

(assert (=> bs!1852313 (= (and (= s!14361 (_1!37115 lt!2474201)) (= r1!6342 (regOne!34422 r1!6342)) (= lt!2474188 (regTwo!34422 r1!6342))) (= lambda!394895 lambda!394892))))

(assert (=> bs!1852314 (not (= lambda!394895 lambda!394881))))

(assert (=> bs!1852315 (not (= lambda!394895 lambda!394853))))

(assert (=> bs!1852316 (= (and (= s!14361 lt!2474186) (= lt!2474188 r2!6280)) (= lambda!394895 lambda!394838))))

(assert (=> bs!1852317 (not (= lambda!394895 lambda!394872))))

(assert (=> bs!1852318 (not (= lambda!394895 lambda!394884))))

(assert (=> bs!1852312 (= lambda!394895 lambda!394834)))

(assert (=> bs!1852320 (not (= lambda!394895 lambda!394835))))

(assert (=> bs!1852315 (= (and (= s!14361 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= lt!2474188 r3!135)) (= lambda!394895 lambda!394854))))

(assert (=> bs!1852321 (= (and (= s!14361 (_2!37115 lt!2474201)) (= r1!6342 (regOne!34422 lt!2474188)) (= lt!2474188 (regTwo!34422 lt!2474188))) (= lambda!394895 lambda!394874))))

(assert (=> bs!1852322 (not (= lambda!394895 lambda!394891))))

(assert (=> bs!1852323 (= (and (= s!14361 (_1!37115 lt!2474189)) (= r1!6342 (regOne!34422 r2!6280)) (= lt!2474188 (regTwo!34422 r2!6280))) (= lambda!394895 lambda!394886))))

(assert (=> bs!1852316 (not (= lambda!394895 lambda!394837))))

(assert (=> bs!1852320 (= (and (= s!14361 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= lt!2474188 r3!135)) (= lambda!394895 lambda!394836))))

(declare-fun bs!1852324 () Bool)

(assert (= bs!1852324 d!2166819))

(assert (=> bs!1852324 (not (= lambda!394895 lambda!394894))))

(assert (=> bs!1852319 (not (= lambda!394895 lambda!394888))))

(assert (=> d!2166819 true))

(assert (=> d!2166819 true))

(assert (=> d!2166819 true))

(assert (=> d!2166819 (= (Exists!3955 lambda!394894) (Exists!3955 lambda!394895))))

(declare-fun lt!2474300 () Unit!160634)

(assert (=> d!2166819 (= lt!2474300 (choose!51657 r1!6342 lt!2474188 s!14361))))

(assert (=> d!2166819 (validRegex!8661 r1!6342)))

(assert (=> d!2166819 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2416 r1!6342 lt!2474188 s!14361) lt!2474300)))

(declare-fun m!7641794 () Bool)

(assert (=> bs!1852324 m!7641794))

(declare-fun m!7641796 () Bool)

(assert (=> bs!1852324 m!7641796))

(declare-fun m!7641798 () Bool)

(assert (=> bs!1852324 m!7641798))

(assert (=> bs!1852324 m!7641276))

(assert (=> b!6935129 d!2166819))

(declare-fun d!2166821 () Bool)

(assert (=> d!2166821 (= (isDefined!13425 (findConcatSeparation!3138 r1!6342 r2!6280 Nil!66584 lt!2474186 lt!2474186)) (not (isEmpty!38850 (findConcatSeparation!3138 r1!6342 r2!6280 Nil!66584 lt!2474186 lt!2474186))))))

(declare-fun bs!1852325 () Bool)

(assert (= bs!1852325 d!2166821))

(assert (=> bs!1852325 m!7641268))

(declare-fun m!7641800 () Bool)

(assert (=> bs!1852325 m!7641800))

(assert (=> b!6935107 d!2166821))

(declare-fun d!2166823 () Bool)

(assert (=> d!2166823 (= (matchR!9094 lt!2474193 lt!2474186) (matchRSpec!4012 lt!2474193 lt!2474186))))

(declare-fun lt!2474301 () Unit!160634)

(assert (=> d!2166823 (= lt!2474301 (choose!51661 lt!2474193 lt!2474186))))

(assert (=> d!2166823 (validRegex!8661 lt!2474193)))

(assert (=> d!2166823 (= (mainMatchTheorem!4012 lt!2474193 lt!2474186) lt!2474301)))

(declare-fun bs!1852326 () Bool)

(assert (= bs!1852326 d!2166823))

(assert (=> bs!1852326 m!7641258))

(assert (=> bs!1852326 m!7641264))

(declare-fun m!7641802 () Bool)

(assert (=> bs!1852326 m!7641802))

(assert (=> bs!1852326 m!7641234))

(assert (=> b!6935107 d!2166823))

(declare-fun d!2166825 () Bool)

(declare-fun e!4172916 () Bool)

(assert (=> d!2166825 e!4172916))

(declare-fun res!2828921 () Bool)

(assert (=> d!2166825 (=> (not res!2828921) (not e!4172916))))

(declare-fun lt!2474302 () List!66708)

(assert (=> d!2166825 (= res!2828921 (= (content!13096 lt!2474302) ((_ map or) (content!13096 lt!2474186) (content!13096 (_2!37115 lt!2474189)))))))

(declare-fun e!4172917 () List!66708)

(assert (=> d!2166825 (= lt!2474302 e!4172917)))

(declare-fun c!1287112 () Bool)

(assert (=> d!2166825 (= c!1287112 ((_ is Nil!66584) lt!2474186))))

(assert (=> d!2166825 (= (++!14994 lt!2474186 (_2!37115 lt!2474189)) lt!2474302)))

(declare-fun b!6935820 () Bool)

(declare-fun res!2828920 () Bool)

(assert (=> b!6935820 (=> (not res!2828920) (not e!4172916))))

(assert (=> b!6935820 (= res!2828920 (= (size!40793 lt!2474302) (+ (size!40793 lt!2474186) (size!40793 (_2!37115 lt!2474189)))))))

(declare-fun b!6935818 () Bool)

(assert (=> b!6935818 (= e!4172917 (_2!37115 lt!2474189))))

(declare-fun b!6935819 () Bool)

(assert (=> b!6935819 (= e!4172917 (Cons!66584 (h!73032 lt!2474186) (++!14994 (t!380451 lt!2474186) (_2!37115 lt!2474189))))))

(declare-fun b!6935821 () Bool)

(assert (=> b!6935821 (= e!4172916 (or (not (= (_2!37115 lt!2474189) Nil!66584)) (= lt!2474302 lt!2474186)))))

(assert (= (and d!2166825 c!1287112) b!6935818))

(assert (= (and d!2166825 (not c!1287112)) b!6935819))

(assert (= (and d!2166825 res!2828921) b!6935820))

(assert (= (and b!6935820 res!2828920) b!6935821))

(declare-fun m!7641804 () Bool)

(assert (=> d!2166825 m!7641804))

(declare-fun m!7641806 () Bool)

(assert (=> d!2166825 m!7641806))

(assert (=> d!2166825 m!7641724))

(declare-fun m!7641808 () Bool)

(assert (=> b!6935820 m!7641808))

(declare-fun m!7641810 () Bool)

(assert (=> b!6935820 m!7641810))

(assert (=> b!6935820 m!7641730))

(declare-fun m!7641812 () Bool)

(assert (=> b!6935819 m!7641812))

(assert (=> b!6935107 d!2166825))

(declare-fun d!2166827 () Bool)

(assert (=> d!2166827 (= (Exists!3955 lambda!394838) (choose!51659 lambda!394838))))

(declare-fun bs!1852327 () Bool)

(assert (= bs!1852327 d!2166827))

(declare-fun m!7641814 () Bool)

(assert (=> bs!1852327 m!7641814))

(assert (=> b!6935107 d!2166827))

(declare-fun d!2166829 () Bool)

(declare-fun e!4172918 () Bool)

(assert (=> d!2166829 e!4172918))

(declare-fun res!2828923 () Bool)

(assert (=> d!2166829 (=> (not res!2828923) (not e!4172918))))

(declare-fun lt!2474303 () List!66708)

(assert (=> d!2166829 (= res!2828923 (= (content!13096 lt!2474303) ((_ map or) (content!13096 (_1!37115 lt!2474201)) (content!13096 (_1!37115 lt!2474189)))))))

(declare-fun e!4172919 () List!66708)

(assert (=> d!2166829 (= lt!2474303 e!4172919)))

(declare-fun c!1287113 () Bool)

(assert (=> d!2166829 (= c!1287113 ((_ is Nil!66584) (_1!37115 lt!2474201)))))

(assert (=> d!2166829 (= (++!14994 (_1!37115 lt!2474201) (_1!37115 lt!2474189)) lt!2474303)))

(declare-fun b!6935824 () Bool)

(declare-fun res!2828922 () Bool)

(assert (=> b!6935824 (=> (not res!2828922) (not e!4172918))))

(assert (=> b!6935824 (= res!2828922 (= (size!40793 lt!2474303) (+ (size!40793 (_1!37115 lt!2474201)) (size!40793 (_1!37115 lt!2474189)))))))

(declare-fun b!6935822 () Bool)

(assert (=> b!6935822 (= e!4172919 (_1!37115 lt!2474189))))

(declare-fun b!6935823 () Bool)

(assert (=> b!6935823 (= e!4172919 (Cons!66584 (h!73032 (_1!37115 lt!2474201)) (++!14994 (t!380451 (_1!37115 lt!2474201)) (_1!37115 lt!2474189))))))

(declare-fun b!6935825 () Bool)

(assert (=> b!6935825 (= e!4172918 (or (not (= (_1!37115 lt!2474189) Nil!66584)) (= lt!2474303 (_1!37115 lt!2474201))))))

(assert (= (and d!2166829 c!1287113) b!6935822))

(assert (= (and d!2166829 (not c!1287113)) b!6935823))

(assert (= (and d!2166829 res!2828923) b!6935824))

(assert (= (and b!6935824 res!2828922) b!6935825))

(declare-fun m!7641816 () Bool)

(assert (=> d!2166829 m!7641816))

(assert (=> d!2166829 m!7641708))

(assert (=> d!2166829 m!7641722))

(declare-fun m!7641818 () Bool)

(assert (=> b!6935824 m!7641818))

(assert (=> b!6935824 m!7641714))

(assert (=> b!6935824 m!7641728))

(declare-fun m!7641820 () Bool)

(assert (=> b!6935823 m!7641820))

(assert (=> b!6935107 d!2166829))

(declare-fun d!2166831 () Bool)

(assert (=> d!2166831 (= (++!14994 (++!14994 (_1!37115 lt!2474201) (_1!37115 lt!2474189)) (_2!37115 lt!2474189)) (++!14994 (_1!37115 lt!2474201) (++!14994 (_1!37115 lt!2474189) (_2!37115 lt!2474189))))))

(declare-fun lt!2474306 () Unit!160634)

(declare-fun choose!51662 (List!66708 List!66708 List!66708) Unit!160634)

(assert (=> d!2166831 (= lt!2474306 (choose!51662 (_1!37115 lt!2474201) (_1!37115 lt!2474189) (_2!37115 lt!2474189)))))

(assert (=> d!2166831 (= (lemmaConcatAssociativity!3036 (_1!37115 lt!2474201) (_1!37115 lt!2474189) (_2!37115 lt!2474189)) lt!2474306)))

(declare-fun bs!1852328 () Bool)

(assert (= bs!1852328 d!2166831))

(assert (=> bs!1852328 m!7641226))

(assert (=> bs!1852328 m!7641228))

(assert (=> bs!1852328 m!7641254))

(declare-fun m!7641822 () Bool)

(assert (=> bs!1852328 m!7641822))

(declare-fun m!7641824 () Bool)

(assert (=> bs!1852328 m!7641824))

(assert (=> bs!1852328 m!7641226))

(assert (=> bs!1852328 m!7641254))

(assert (=> b!6935107 d!2166831))

(declare-fun b!6935826 () Bool)

(declare-fun lt!2474308 () Unit!160634)

(declare-fun lt!2474309 () Unit!160634)

(assert (=> b!6935826 (= lt!2474308 lt!2474309)))

(assert (=> b!6935826 (= (++!14994 (++!14994 Nil!66584 (Cons!66584 (h!73032 lt!2474186) Nil!66584)) (t!380451 lt!2474186)) lt!2474186)))

(assert (=> b!6935826 (= lt!2474309 (lemmaMoveElementToOtherListKeepsConcatEq!2853 Nil!66584 (h!73032 lt!2474186) (t!380451 lt!2474186) lt!2474186))))

(declare-fun e!4172924 () Option!16724)

(assert (=> b!6935826 (= e!4172924 (findConcatSeparation!3138 r1!6342 r2!6280 (++!14994 Nil!66584 (Cons!66584 (h!73032 lt!2474186) Nil!66584)) (t!380451 lt!2474186) lt!2474186))))

(declare-fun b!6935827 () Bool)

(declare-fun e!4172921 () Bool)

(declare-fun lt!2474307 () Option!16724)

(assert (=> b!6935827 (= e!4172921 (not (isDefined!13425 lt!2474307)))))

(declare-fun b!6935828 () Bool)

(declare-fun e!4172923 () Bool)

(assert (=> b!6935828 (= e!4172923 (= (++!14994 (_1!37115 (get!23369 lt!2474307)) (_2!37115 (get!23369 lt!2474307))) lt!2474186))))

(declare-fun b!6935829 () Bool)

(declare-fun res!2828927 () Bool)

(assert (=> b!6935829 (=> (not res!2828927) (not e!4172923))))

(assert (=> b!6935829 (= res!2828927 (matchR!9094 r1!6342 (_1!37115 (get!23369 lt!2474307))))))

(declare-fun b!6935830 () Bool)

(assert (=> b!6935830 (= e!4172924 None!16723)))

(declare-fun b!6935831 () Bool)

(declare-fun e!4172920 () Option!16724)

(assert (=> b!6935831 (= e!4172920 e!4172924)))

(declare-fun c!1287115 () Bool)

(assert (=> b!6935831 (= c!1287115 ((_ is Nil!66584) lt!2474186))))

(declare-fun b!6935832 () Bool)

(assert (=> b!6935832 (= e!4172920 (Some!16723 (tuple2!67625 Nil!66584 lt!2474186)))))

(declare-fun b!6935833 () Bool)

(declare-fun e!4172922 () Bool)

(assert (=> b!6935833 (= e!4172922 (matchR!9094 r2!6280 lt!2474186))))

(declare-fun b!6935834 () Bool)

(declare-fun res!2828928 () Bool)

(assert (=> b!6935834 (=> (not res!2828928) (not e!4172923))))

(assert (=> b!6935834 (= res!2828928 (matchR!9094 r2!6280 (_2!37115 (get!23369 lt!2474307))))))

(declare-fun d!2166833 () Bool)

(assert (=> d!2166833 e!4172921))

(declare-fun res!2828924 () Bool)

(assert (=> d!2166833 (=> res!2828924 e!4172921)))

(assert (=> d!2166833 (= res!2828924 e!4172923)))

(declare-fun res!2828925 () Bool)

(assert (=> d!2166833 (=> (not res!2828925) (not e!4172923))))

(assert (=> d!2166833 (= res!2828925 (isDefined!13425 lt!2474307))))

(assert (=> d!2166833 (= lt!2474307 e!4172920)))

(declare-fun c!1287114 () Bool)

(assert (=> d!2166833 (= c!1287114 e!4172922)))

(declare-fun res!2828926 () Bool)

(assert (=> d!2166833 (=> (not res!2828926) (not e!4172922))))

(assert (=> d!2166833 (= res!2828926 (matchR!9094 r1!6342 Nil!66584))))

(assert (=> d!2166833 (validRegex!8661 r1!6342)))

(assert (=> d!2166833 (= (findConcatSeparation!3138 r1!6342 r2!6280 Nil!66584 lt!2474186 lt!2474186) lt!2474307)))

(assert (= (and d!2166833 res!2828926) b!6935833))

(assert (= (and d!2166833 c!1287114) b!6935832))

(assert (= (and d!2166833 (not c!1287114)) b!6935831))

(assert (= (and b!6935831 c!1287115) b!6935830))

(assert (= (and b!6935831 (not c!1287115)) b!6935826))

(assert (= (and d!2166833 res!2828925) b!6935829))

(assert (= (and b!6935829 res!2828927) b!6935834))

(assert (= (and b!6935834 res!2828928) b!6935828))

(assert (= (and d!2166833 (not res!2828924)) b!6935827))

(declare-fun m!7641826 () Bool)

(assert (=> b!6935829 m!7641826))

(declare-fun m!7641828 () Bool)

(assert (=> b!6935829 m!7641828))

(declare-fun m!7641830 () Bool)

(assert (=> b!6935826 m!7641830))

(assert (=> b!6935826 m!7641830))

(declare-fun m!7641832 () Bool)

(assert (=> b!6935826 m!7641832))

(declare-fun m!7641834 () Bool)

(assert (=> b!6935826 m!7641834))

(assert (=> b!6935826 m!7641830))

(declare-fun m!7641836 () Bool)

(assert (=> b!6935826 m!7641836))

(assert (=> b!6935828 m!7641826))

(declare-fun m!7641838 () Bool)

(assert (=> b!6935828 m!7641838))

(declare-fun m!7641840 () Bool)

(assert (=> b!6935827 m!7641840))

(declare-fun m!7641842 () Bool)

(assert (=> b!6935833 m!7641842))

(assert (=> b!6935834 m!7641826))

(declare-fun m!7641844 () Bool)

(assert (=> b!6935834 m!7641844))

(assert (=> d!2166833 m!7641840))

(declare-fun m!7641846 () Bool)

(assert (=> d!2166833 m!7641846))

(assert (=> d!2166833 m!7641276))

(assert (=> b!6935107 d!2166833))

(declare-fun b!6935835 () Bool)

(declare-fun e!4172927 () Bool)

(assert (=> b!6935835 (= e!4172927 (= (head!13902 lt!2474186) (c!1286963 lt!2474193)))))

(declare-fun b!6935836 () Bool)

(declare-fun res!2828935 () Bool)

(assert (=> b!6935836 (=> (not res!2828935) (not e!4172927))))

(declare-fun call!630196 () Bool)

(assert (=> b!6935836 (= res!2828935 (not call!630196))))

(declare-fun b!6935837 () Bool)

(declare-fun e!4172929 () Bool)

(declare-fun e!4172925 () Bool)

(assert (=> b!6935837 (= e!4172929 e!4172925)))

(declare-fun c!1287117 () Bool)

(assert (=> b!6935837 (= c!1287117 ((_ is EmptyLang!16955) lt!2474193))))

(declare-fun b!6935838 () Bool)

(declare-fun lt!2474310 () Bool)

(assert (=> b!6935838 (= e!4172925 (not lt!2474310))))

(declare-fun b!6935839 () Bool)

(declare-fun res!2828936 () Bool)

(declare-fun e!4172931 () Bool)

(assert (=> b!6935839 (=> res!2828936 e!4172931)))

(assert (=> b!6935839 (= res!2828936 e!4172927)))

(declare-fun res!2828933 () Bool)

(assert (=> b!6935839 (=> (not res!2828933) (not e!4172927))))

(assert (=> b!6935839 (= res!2828933 lt!2474310)))

(declare-fun b!6935840 () Bool)

(declare-fun res!2828934 () Bool)

(assert (=> b!6935840 (=> (not res!2828934) (not e!4172927))))

(assert (=> b!6935840 (= res!2828934 (isEmpty!38849 (tail!12954 lt!2474186)))))

(declare-fun b!6935841 () Bool)

(assert (=> b!6935841 (= e!4172929 (= lt!2474310 call!630196))))

(declare-fun b!6935842 () Bool)

(declare-fun e!4172928 () Bool)

(assert (=> b!6935842 (= e!4172928 (nullable!6774 lt!2474193))))

(declare-fun b!6935843 () Bool)

(assert (=> b!6935843 (= e!4172928 (matchR!9094 (derivativeStep!5449 lt!2474193 (head!13902 lt!2474186)) (tail!12954 lt!2474186)))))

(declare-fun b!6935844 () Bool)

(declare-fun e!4172926 () Bool)

(assert (=> b!6935844 (= e!4172931 e!4172926)))

(declare-fun res!2828932 () Bool)

(assert (=> b!6935844 (=> (not res!2828932) (not e!4172926))))

(assert (=> b!6935844 (= res!2828932 (not lt!2474310))))

(declare-fun b!6935845 () Bool)

(declare-fun e!4172930 () Bool)

(assert (=> b!6935845 (= e!4172926 e!4172930)))

(declare-fun res!2828929 () Bool)

(assert (=> b!6935845 (=> res!2828929 e!4172930)))

(assert (=> b!6935845 (= res!2828929 call!630196)))

(declare-fun b!6935846 () Bool)

(declare-fun res!2828931 () Bool)

(assert (=> b!6935846 (=> res!2828931 e!4172931)))

(assert (=> b!6935846 (= res!2828931 (not ((_ is ElementMatch!16955) lt!2474193)))))

(assert (=> b!6935846 (= e!4172925 e!4172931)))

(declare-fun b!6935847 () Bool)

(assert (=> b!6935847 (= e!4172930 (not (= (head!13902 lt!2474186) (c!1286963 lt!2474193))))))

(declare-fun b!6935848 () Bool)

(declare-fun res!2828930 () Bool)

(assert (=> b!6935848 (=> res!2828930 e!4172930)))

(assert (=> b!6935848 (= res!2828930 (not (isEmpty!38849 (tail!12954 lt!2474186))))))

(declare-fun bm!630191 () Bool)

(assert (=> bm!630191 (= call!630196 (isEmpty!38849 lt!2474186))))

(declare-fun d!2166835 () Bool)

(assert (=> d!2166835 e!4172929))

(declare-fun c!1287116 () Bool)

(assert (=> d!2166835 (= c!1287116 ((_ is EmptyExpr!16955) lt!2474193))))

(assert (=> d!2166835 (= lt!2474310 e!4172928)))

(declare-fun c!1287118 () Bool)

(assert (=> d!2166835 (= c!1287118 (isEmpty!38849 lt!2474186))))

(assert (=> d!2166835 (validRegex!8661 lt!2474193)))

(assert (=> d!2166835 (= (matchR!9094 lt!2474193 lt!2474186) lt!2474310)))

(assert (= (and d!2166835 c!1287118) b!6935842))

(assert (= (and d!2166835 (not c!1287118)) b!6935843))

(assert (= (and d!2166835 c!1287116) b!6935841))

(assert (= (and d!2166835 (not c!1287116)) b!6935837))

(assert (= (and b!6935837 c!1287117) b!6935838))

(assert (= (and b!6935837 (not c!1287117)) b!6935846))

(assert (= (and b!6935846 (not res!2828931)) b!6935839))

(assert (= (and b!6935839 res!2828933) b!6935836))

(assert (= (and b!6935836 res!2828935) b!6935840))

(assert (= (and b!6935840 res!2828934) b!6935835))

(assert (= (and b!6935839 (not res!2828936)) b!6935844))

(assert (= (and b!6935844 res!2828932) b!6935845))

(assert (= (and b!6935845 (not res!2828929)) b!6935848))

(assert (= (and b!6935848 (not res!2828930)) b!6935847))

(assert (= (or b!6935841 b!6935836 b!6935845) bm!630191))

(declare-fun m!7641848 () Bool)

(assert (=> b!6935842 m!7641848))

(declare-fun m!7641850 () Bool)

(assert (=> b!6935835 m!7641850))

(declare-fun m!7641852 () Bool)

(assert (=> bm!630191 m!7641852))

(declare-fun m!7641854 () Bool)

(assert (=> b!6935848 m!7641854))

(assert (=> b!6935848 m!7641854))

(declare-fun m!7641856 () Bool)

(assert (=> b!6935848 m!7641856))

(assert (=> b!6935843 m!7641850))

(assert (=> b!6935843 m!7641850))

(declare-fun m!7641858 () Bool)

(assert (=> b!6935843 m!7641858))

(assert (=> b!6935843 m!7641854))

(assert (=> b!6935843 m!7641858))

(assert (=> b!6935843 m!7641854))

(declare-fun m!7641860 () Bool)

(assert (=> b!6935843 m!7641860))

(assert (=> d!2166835 m!7641852))

(assert (=> d!2166835 m!7641234))

(assert (=> b!6935840 m!7641854))

(assert (=> b!6935840 m!7641854))

(assert (=> b!6935840 m!7641856))

(assert (=> b!6935847 m!7641850))

(assert (=> b!6935107 d!2166835))

(declare-fun bs!1852329 () Bool)

(declare-fun d!2166837 () Bool)

(assert (= bs!1852329 (and d!2166837 d!2166813)))

(declare-fun lambda!394896 () Int)

(assert (=> bs!1852329 (= (and (= lt!2474186 s!14361) (= r2!6280 lt!2474188)) (= lambda!394896 lambda!394893))))

(declare-fun bs!1852330 () Bool)

(assert (= bs!1852330 (and d!2166837 b!6935707)))

(assert (=> bs!1852330 (not (= lambda!394896 lambda!394889))))

(declare-fun bs!1852331 () Bool)

(assert (= bs!1852331 (and d!2166837 b!6935129)))

(assert (=> bs!1852331 (= (and (= lt!2474186 s!14361) (= r2!6280 lt!2474188)) (= lambda!394896 lambda!394833))))

(declare-fun bs!1852332 () Bool)

(assert (= bs!1852332 (and d!2166837 b!6935732)))

(assert (=> bs!1852332 (not (= lambda!394896 lambda!394892))))

(declare-fun bs!1852333 () Bool)

(assert (= bs!1852333 (and d!2166837 d!2166757)))

(assert (=> bs!1852333 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394896 lambda!394881))))

(declare-fun bs!1852334 () Bool)

(assert (= bs!1852334 (and d!2166837 d!2166683)))

(assert (=> bs!1852334 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394896 lambda!394853))))

(declare-fun bs!1852335 () Bool)

(assert (= bs!1852335 (and d!2166837 b!6935107)))

(assert (=> bs!1852335 (not (= lambda!394896 lambda!394838))))

(declare-fun bs!1852336 () Bool)

(assert (= bs!1852336 (and d!2166837 b!6935556)))

(assert (=> bs!1852336 (not (= lambda!394896 lambda!394872))))

(declare-fun bs!1852337 () Bool)

(assert (= bs!1852337 (and d!2166837 b!6935690)))

(assert (=> bs!1852337 (not (= lambda!394896 lambda!394884))))

(assert (=> bs!1852331 (not (= lambda!394896 lambda!394834))))

(declare-fun bs!1852338 () Bool)

(assert (= bs!1852338 (and d!2166837 b!6935127)))

(assert (=> bs!1852338 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394896 lambda!394835))))

(declare-fun bs!1852339 () Bool)

(assert (= bs!1852339 (and d!2166837 d!2166819)))

(assert (=> bs!1852339 (not (= lambda!394896 lambda!394895))))

(assert (=> bs!1852334 (not (= lambda!394896 lambda!394854))))

(declare-fun bs!1852340 () Bool)

(assert (= bs!1852340 (and d!2166837 b!6935551)))

(assert (=> bs!1852340 (not (= lambda!394896 lambda!394874))))

(declare-fun bs!1852341 () Bool)

(assert (= bs!1852341 (and d!2166837 b!6935737)))

(assert (=> bs!1852341 (not (= lambda!394896 lambda!394891))))

(declare-fun bs!1852342 () Bool)

(assert (= bs!1852342 (and d!2166837 b!6935685)))

(assert (=> bs!1852342 (not (= lambda!394896 lambda!394886))))

(assert (=> bs!1852335 (= lambda!394896 lambda!394837)))

(assert (=> bs!1852338 (not (= lambda!394896 lambda!394836))))

(assert (=> bs!1852339 (= (and (= lt!2474186 s!14361) (= r2!6280 lt!2474188)) (= lambda!394896 lambda!394894))))

(declare-fun bs!1852343 () Bool)

(assert (= bs!1852343 (and d!2166837 b!6935712)))

(assert (=> bs!1852343 (not (= lambda!394896 lambda!394888))))

(assert (=> d!2166837 true))

(assert (=> d!2166837 true))

(assert (=> d!2166837 true))

(declare-fun lambda!394897 () Int)

(assert (=> bs!1852329 (not (= lambda!394897 lambda!394893))))

(assert (=> bs!1852330 (= (and (= lt!2474186 (_2!37115 lt!2474189)) (= r1!6342 (regOne!34422 r3!135)) (= r2!6280 (regTwo!34422 r3!135))) (= lambda!394897 lambda!394889))))

(assert (=> bs!1852331 (not (= lambda!394897 lambda!394833))))

(assert (=> bs!1852332 (= (and (= lt!2474186 (_1!37115 lt!2474201)) (= r1!6342 (regOne!34422 r1!6342)) (= r2!6280 (regTwo!34422 r1!6342))) (= lambda!394897 lambda!394892))))

(assert (=> bs!1852333 (not (= lambda!394897 lambda!394881))))

(assert (=> bs!1852334 (not (= lambda!394897 lambda!394853))))

(assert (=> bs!1852335 (= lambda!394897 lambda!394838)))

(assert (=> bs!1852336 (not (= lambda!394897 lambda!394872))))

(assert (=> bs!1852331 (= (and (= lt!2474186 s!14361) (= r2!6280 lt!2474188)) (= lambda!394897 lambda!394834))))

(assert (=> bs!1852338 (not (= lambda!394897 lambda!394835))))

(assert (=> bs!1852339 (= (and (= lt!2474186 s!14361) (= r2!6280 lt!2474188)) (= lambda!394897 lambda!394895))))

(assert (=> bs!1852334 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394897 lambda!394854))))

(assert (=> bs!1852340 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= r1!6342 (regOne!34422 lt!2474188)) (= r2!6280 (regTwo!34422 lt!2474188))) (= lambda!394897 lambda!394874))))

(assert (=> bs!1852341 (not (= lambda!394897 lambda!394891))))

(assert (=> bs!1852342 (= (and (= lt!2474186 (_1!37115 lt!2474189)) (= r1!6342 (regOne!34422 r2!6280)) (= r2!6280 (regTwo!34422 r2!6280))) (= lambda!394897 lambda!394886))))

(assert (=> bs!1852335 (not (= lambda!394897 lambda!394837))))

(assert (=> bs!1852338 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394897 lambda!394836))))

(declare-fun bs!1852344 () Bool)

(assert (= bs!1852344 d!2166837))

(assert (=> bs!1852344 (not (= lambda!394897 lambda!394896))))

(assert (=> bs!1852337 (not (= lambda!394897 lambda!394884))))

(assert (=> bs!1852339 (not (= lambda!394897 lambda!394894))))

(assert (=> bs!1852343 (not (= lambda!394897 lambda!394888))))

(assert (=> d!2166837 true))

(assert (=> d!2166837 true))

(assert (=> d!2166837 true))

(assert (=> d!2166837 (= (Exists!3955 lambda!394896) (Exists!3955 lambda!394897))))

(declare-fun lt!2474311 () Unit!160634)

(assert (=> d!2166837 (= lt!2474311 (choose!51657 r1!6342 r2!6280 lt!2474186))))

(assert (=> d!2166837 (validRegex!8661 r1!6342)))

(assert (=> d!2166837 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2416 r1!6342 r2!6280 lt!2474186) lt!2474311)))

(declare-fun m!7641862 () Bool)

(assert (=> bs!1852344 m!7641862))

(declare-fun m!7641864 () Bool)

(assert (=> bs!1852344 m!7641864))

(declare-fun m!7641866 () Bool)

(assert (=> bs!1852344 m!7641866))

(assert (=> bs!1852344 m!7641276))

(assert (=> b!6935107 d!2166837))

(declare-fun d!2166839 () Bool)

(assert (=> d!2166839 (= (Exists!3955 lambda!394837) (choose!51659 lambda!394837))))

(declare-fun bs!1852345 () Bool)

(assert (= bs!1852345 d!2166839))

(declare-fun m!7641868 () Bool)

(assert (=> bs!1852345 m!7641868))

(assert (=> b!6935107 d!2166839))

(declare-fun bs!1852346 () Bool)

(declare-fun b!6935854 () Bool)

(assert (= bs!1852346 (and b!6935854 d!2166813)))

(declare-fun lambda!394898 () Int)

(assert (=> bs!1852346 (not (= lambda!394898 lambda!394893))))

(declare-fun bs!1852347 () Bool)

(assert (= bs!1852347 (and b!6935854 b!6935707)))

(assert (=> bs!1852347 (not (= lambda!394898 lambda!394889))))

(declare-fun bs!1852348 () Bool)

(assert (= bs!1852348 (and b!6935854 b!6935129)))

(assert (=> bs!1852348 (not (= lambda!394898 lambda!394833))))

(declare-fun bs!1852349 () Bool)

(assert (= bs!1852349 (and b!6935854 b!6935732)))

(assert (=> bs!1852349 (not (= lambda!394898 lambda!394892))))

(declare-fun bs!1852350 () Bool)

(assert (= bs!1852350 (and b!6935854 d!2166757)))

(assert (=> bs!1852350 (not (= lambda!394898 lambda!394881))))

(declare-fun bs!1852351 () Bool)

(assert (= bs!1852351 (and b!6935854 d!2166683)))

(assert (=> bs!1852351 (not (= lambda!394898 lambda!394853))))

(declare-fun bs!1852352 () Bool)

(assert (= bs!1852352 (and b!6935854 b!6935107)))

(assert (=> bs!1852352 (not (= lambda!394898 lambda!394838))))

(declare-fun bs!1852353 () Bool)

(assert (= bs!1852353 (and b!6935854 b!6935556)))

(assert (=> bs!1852353 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= (reg!17284 lt!2474193) (reg!17284 lt!2474188)) (= lt!2474193 lt!2474188)) (= lambda!394898 lambda!394872))))

(declare-fun bs!1852354 () Bool)

(assert (= bs!1852354 (and b!6935854 d!2166837)))

(assert (=> bs!1852354 (not (= lambda!394898 lambda!394897))))

(assert (=> bs!1852348 (not (= lambda!394898 lambda!394834))))

(declare-fun bs!1852355 () Bool)

(assert (= bs!1852355 (and b!6935854 b!6935127)))

(assert (=> bs!1852355 (not (= lambda!394898 lambda!394835))))

(declare-fun bs!1852356 () Bool)

(assert (= bs!1852356 (and b!6935854 d!2166819)))

(assert (=> bs!1852356 (not (= lambda!394898 lambda!394895))))

(assert (=> bs!1852351 (not (= lambda!394898 lambda!394854))))

(declare-fun bs!1852357 () Bool)

(assert (= bs!1852357 (and b!6935854 b!6935551)))

(assert (=> bs!1852357 (not (= lambda!394898 lambda!394874))))

(declare-fun bs!1852358 () Bool)

(assert (= bs!1852358 (and b!6935854 b!6935737)))

(assert (=> bs!1852358 (= (and (= lt!2474186 (_1!37115 lt!2474201)) (= (reg!17284 lt!2474193) (reg!17284 r1!6342)) (= lt!2474193 r1!6342)) (= lambda!394898 lambda!394891))))

(declare-fun bs!1852359 () Bool)

(assert (= bs!1852359 (and b!6935854 b!6935685)))

(assert (=> bs!1852359 (not (= lambda!394898 lambda!394886))))

(assert (=> bs!1852352 (not (= lambda!394898 lambda!394837))))

(assert (=> bs!1852355 (not (= lambda!394898 lambda!394836))))

(assert (=> bs!1852354 (not (= lambda!394898 lambda!394896))))

(declare-fun bs!1852360 () Bool)

(assert (= bs!1852360 (and b!6935854 b!6935690)))

(assert (=> bs!1852360 (= (and (= lt!2474186 (_1!37115 lt!2474189)) (= (reg!17284 lt!2474193) (reg!17284 r2!6280)) (= lt!2474193 r2!6280)) (= lambda!394898 lambda!394884))))

(assert (=> bs!1852356 (not (= lambda!394898 lambda!394894))))

(declare-fun bs!1852361 () Bool)

(assert (= bs!1852361 (and b!6935854 b!6935712)))

(assert (=> bs!1852361 (= (and (= lt!2474186 (_2!37115 lt!2474189)) (= (reg!17284 lt!2474193) (reg!17284 r3!135)) (= lt!2474193 r3!135)) (= lambda!394898 lambda!394888))))

(assert (=> b!6935854 true))

(assert (=> b!6935854 true))

(declare-fun bs!1852362 () Bool)

(declare-fun b!6935849 () Bool)

(assert (= bs!1852362 (and b!6935849 d!2166813)))

(declare-fun lambda!394899 () Int)

(assert (=> bs!1852362 (not (= lambda!394899 lambda!394893))))

(declare-fun bs!1852363 () Bool)

(assert (= bs!1852363 (and b!6935849 b!6935707)))

(assert (=> bs!1852363 (= (and (= lt!2474186 (_2!37115 lt!2474189)) (= (regOne!34422 lt!2474193) (regOne!34422 r3!135)) (= (regTwo!34422 lt!2474193) (regTwo!34422 r3!135))) (= lambda!394899 lambda!394889))))

(declare-fun bs!1852364 () Bool)

(assert (= bs!1852364 (and b!6935849 b!6935129)))

(assert (=> bs!1852364 (not (= lambda!394899 lambda!394833))))

(declare-fun bs!1852365 () Bool)

(assert (= bs!1852365 (and b!6935849 b!6935732)))

(assert (=> bs!1852365 (= (and (= lt!2474186 (_1!37115 lt!2474201)) (= (regOne!34422 lt!2474193) (regOne!34422 r1!6342)) (= (regTwo!34422 lt!2474193) (regTwo!34422 r1!6342))) (= lambda!394899 lambda!394892))))

(declare-fun bs!1852366 () Bool)

(assert (= bs!1852366 (and b!6935849 d!2166757)))

(assert (=> bs!1852366 (not (= lambda!394899 lambda!394881))))

(declare-fun bs!1852367 () Bool)

(assert (= bs!1852367 (and b!6935849 d!2166683)))

(assert (=> bs!1852367 (not (= lambda!394899 lambda!394853))))

(declare-fun bs!1852368 () Bool)

(assert (= bs!1852368 (and b!6935849 b!6935107)))

(assert (=> bs!1852368 (= (and (= (regOne!34422 lt!2474193) r1!6342) (= (regTwo!34422 lt!2474193) r2!6280)) (= lambda!394899 lambda!394838))))

(declare-fun bs!1852369 () Bool)

(assert (= bs!1852369 (and b!6935849 b!6935556)))

(assert (=> bs!1852369 (not (= lambda!394899 lambda!394872))))

(declare-fun bs!1852370 () Bool)

(assert (= bs!1852370 (and b!6935849 b!6935854)))

(assert (=> bs!1852370 (not (= lambda!394899 lambda!394898))))

(declare-fun bs!1852371 () Bool)

(assert (= bs!1852371 (and b!6935849 d!2166837)))

(assert (=> bs!1852371 (= (and (= (regOne!34422 lt!2474193) r1!6342) (= (regTwo!34422 lt!2474193) r2!6280)) (= lambda!394899 lambda!394897))))

(assert (=> bs!1852364 (= (and (= lt!2474186 s!14361) (= (regOne!34422 lt!2474193) r1!6342) (= (regTwo!34422 lt!2474193) lt!2474188)) (= lambda!394899 lambda!394834))))

(declare-fun bs!1852372 () Bool)

(assert (= bs!1852372 (and b!6935849 b!6935127)))

(assert (=> bs!1852372 (not (= lambda!394899 lambda!394835))))

(declare-fun bs!1852373 () Bool)

(assert (= bs!1852373 (and b!6935849 d!2166819)))

(assert (=> bs!1852373 (= (and (= lt!2474186 s!14361) (= (regOne!34422 lt!2474193) r1!6342) (= (regTwo!34422 lt!2474193) lt!2474188)) (= lambda!394899 lambda!394895))))

(assert (=> bs!1852367 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= (regOne!34422 lt!2474193) r2!6280) (= (regTwo!34422 lt!2474193) r3!135)) (= lambda!394899 lambda!394854))))

(declare-fun bs!1852374 () Bool)

(assert (= bs!1852374 (and b!6935849 b!6935551)))

(assert (=> bs!1852374 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= (regOne!34422 lt!2474193) (regOne!34422 lt!2474188)) (= (regTwo!34422 lt!2474193) (regTwo!34422 lt!2474188))) (= lambda!394899 lambda!394874))))

(declare-fun bs!1852375 () Bool)

(assert (= bs!1852375 (and b!6935849 b!6935737)))

(assert (=> bs!1852375 (not (= lambda!394899 lambda!394891))))

(declare-fun bs!1852376 () Bool)

(assert (= bs!1852376 (and b!6935849 b!6935685)))

(assert (=> bs!1852376 (= (and (= lt!2474186 (_1!37115 lt!2474189)) (= (regOne!34422 lt!2474193) (regOne!34422 r2!6280)) (= (regTwo!34422 lt!2474193) (regTwo!34422 r2!6280))) (= lambda!394899 lambda!394886))))

(assert (=> bs!1852368 (not (= lambda!394899 lambda!394837))))

(assert (=> bs!1852372 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= (regOne!34422 lt!2474193) r2!6280) (= (regTwo!34422 lt!2474193) r3!135)) (= lambda!394899 lambda!394836))))

(assert (=> bs!1852371 (not (= lambda!394899 lambda!394896))))

(declare-fun bs!1852377 () Bool)

(assert (= bs!1852377 (and b!6935849 b!6935690)))

(assert (=> bs!1852377 (not (= lambda!394899 lambda!394884))))

(assert (=> bs!1852373 (not (= lambda!394899 lambda!394894))))

(declare-fun bs!1852378 () Bool)

(assert (= bs!1852378 (and b!6935849 b!6935712)))

(assert (=> bs!1852378 (not (= lambda!394899 lambda!394888))))

(assert (=> b!6935849 true))

(assert (=> b!6935849 true))

(declare-fun bm!630192 () Bool)

(declare-fun call!630197 () Bool)

(assert (=> bm!630192 (= call!630197 (isEmpty!38849 lt!2474186))))

(declare-fun e!4172932 () Bool)

(declare-fun call!630198 () Bool)

(assert (=> b!6935849 (= e!4172932 call!630198)))

(declare-fun b!6935850 () Bool)

(declare-fun e!4172934 () Bool)

(assert (=> b!6935850 (= e!4172934 (matchRSpec!4012 (regTwo!34423 lt!2474193) lt!2474186))))

(declare-fun b!6935851 () Bool)

(declare-fun e!4172935 () Bool)

(assert (=> b!6935851 (= e!4172935 e!4172934)))

(declare-fun res!2828938 () Bool)

(assert (=> b!6935851 (= res!2828938 (matchRSpec!4012 (regOne!34423 lt!2474193) lt!2474186))))

(assert (=> b!6935851 (=> res!2828938 e!4172934)))

(declare-fun b!6935852 () Bool)

(declare-fun c!1287119 () Bool)

(assert (=> b!6935852 (= c!1287119 ((_ is Union!16955) lt!2474193))))

(declare-fun e!4172933 () Bool)

(assert (=> b!6935852 (= e!4172933 e!4172935)))

(declare-fun b!6935853 () Bool)

(assert (=> b!6935853 (= e!4172935 e!4172932)))

(declare-fun c!1287121 () Bool)

(assert (=> b!6935853 (= c!1287121 ((_ is Star!16955) lt!2474193))))

(declare-fun e!4172936 () Bool)

(assert (=> b!6935854 (= e!4172936 call!630198)))

(declare-fun bm!630193 () Bool)

(assert (=> bm!630193 (= call!630198 (Exists!3955 (ite c!1287121 lambda!394898 lambda!394899)))))

(declare-fun d!2166841 () Bool)

(declare-fun c!1287120 () Bool)

(assert (=> d!2166841 (= c!1287120 ((_ is EmptyExpr!16955) lt!2474193))))

(declare-fun e!4172937 () Bool)

(assert (=> d!2166841 (= (matchRSpec!4012 lt!2474193 lt!2474186) e!4172937)))

(declare-fun b!6935855 () Bool)

(assert (=> b!6935855 (= e!4172933 (= lt!2474186 (Cons!66584 (c!1286963 lt!2474193) Nil!66584)))))

(declare-fun b!6935856 () Bool)

(assert (=> b!6935856 (= e!4172937 call!630197)))

(declare-fun b!6935857 () Bool)

(declare-fun c!1287122 () Bool)

(assert (=> b!6935857 (= c!1287122 ((_ is ElementMatch!16955) lt!2474193))))

(declare-fun e!4172938 () Bool)

(assert (=> b!6935857 (= e!4172938 e!4172933)))

(declare-fun b!6935858 () Bool)

(declare-fun res!2828939 () Bool)

(assert (=> b!6935858 (=> res!2828939 e!4172936)))

(assert (=> b!6935858 (= res!2828939 call!630197)))

(assert (=> b!6935858 (= e!4172932 e!4172936)))

(declare-fun b!6935859 () Bool)

(assert (=> b!6935859 (= e!4172937 e!4172938)))

(declare-fun res!2828937 () Bool)

(assert (=> b!6935859 (= res!2828937 (not ((_ is EmptyLang!16955) lt!2474193)))))

(assert (=> b!6935859 (=> (not res!2828937) (not e!4172938))))

(assert (= (and d!2166841 c!1287120) b!6935856))

(assert (= (and d!2166841 (not c!1287120)) b!6935859))

(assert (= (and b!6935859 res!2828937) b!6935857))

(assert (= (and b!6935857 c!1287122) b!6935855))

(assert (= (and b!6935857 (not c!1287122)) b!6935852))

(assert (= (and b!6935852 c!1287119) b!6935851))

(assert (= (and b!6935852 (not c!1287119)) b!6935853))

(assert (= (and b!6935851 (not res!2828938)) b!6935850))

(assert (= (and b!6935853 c!1287121) b!6935858))

(assert (= (and b!6935853 (not c!1287121)) b!6935849))

(assert (= (and b!6935858 (not res!2828939)) b!6935854))

(assert (= (or b!6935854 b!6935849) bm!630193))

(assert (= (or b!6935856 b!6935858) bm!630192))

(assert (=> bm!630192 m!7641852))

(declare-fun m!7641870 () Bool)

(assert (=> b!6935850 m!7641870))

(declare-fun m!7641872 () Bool)

(assert (=> b!6935851 m!7641872))

(declare-fun m!7641874 () Bool)

(assert (=> bm!630193 m!7641874))

(assert (=> b!6935107 d!2166841))

(declare-fun bs!1852379 () Bool)

(declare-fun d!2166843 () Bool)

(assert (= bs!1852379 (and d!2166843 d!2166813)))

(declare-fun lambda!394900 () Int)

(assert (=> bs!1852379 (= (and (= lt!2474186 s!14361) (= r2!6280 lt!2474188)) (= lambda!394900 lambda!394893))))

(declare-fun bs!1852380 () Bool)

(assert (= bs!1852380 (and d!2166843 b!6935707)))

(assert (=> bs!1852380 (not (= lambda!394900 lambda!394889))))

(declare-fun bs!1852381 () Bool)

(assert (= bs!1852381 (and d!2166843 b!6935129)))

(assert (=> bs!1852381 (= (and (= lt!2474186 s!14361) (= r2!6280 lt!2474188)) (= lambda!394900 lambda!394833))))

(declare-fun bs!1852382 () Bool)

(assert (= bs!1852382 (and d!2166843 b!6935732)))

(assert (=> bs!1852382 (not (= lambda!394900 lambda!394892))))

(declare-fun bs!1852383 () Bool)

(assert (= bs!1852383 (and d!2166843 d!2166757)))

(assert (=> bs!1852383 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394900 lambda!394881))))

(declare-fun bs!1852384 () Bool)

(assert (= bs!1852384 (and d!2166843 d!2166683)))

(assert (=> bs!1852384 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394900 lambda!394853))))

(declare-fun bs!1852385 () Bool)

(assert (= bs!1852385 (and d!2166843 b!6935107)))

(assert (=> bs!1852385 (not (= lambda!394900 lambda!394838))))

(declare-fun bs!1852386 () Bool)

(assert (= bs!1852386 (and d!2166843 b!6935854)))

(assert (=> bs!1852386 (not (= lambda!394900 lambda!394898))))

(declare-fun bs!1852387 () Bool)

(assert (= bs!1852387 (and d!2166843 d!2166837)))

(assert (=> bs!1852387 (not (= lambda!394900 lambda!394897))))

(assert (=> bs!1852381 (not (= lambda!394900 lambda!394834))))

(declare-fun bs!1852388 () Bool)

(assert (= bs!1852388 (and d!2166843 b!6935127)))

(assert (=> bs!1852388 (= (and (= lt!2474186 (_2!37115 lt!2474201)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394900 lambda!394835))))

(declare-fun bs!1852389 () Bool)

(assert (= bs!1852389 (and d!2166843 d!2166819)))

(assert (=> bs!1852389 (not (= lambda!394900 lambda!394895))))

(assert (=> bs!1852384 (not (= lambda!394900 lambda!394854))))

(declare-fun bs!1852390 () Bool)

(assert (= bs!1852390 (and d!2166843 b!6935551)))

(assert (=> bs!1852390 (not (= lambda!394900 lambda!394874))))

(declare-fun bs!1852391 () Bool)

(assert (= bs!1852391 (and d!2166843 b!6935737)))

(assert (=> bs!1852391 (not (= lambda!394900 lambda!394891))))

(declare-fun bs!1852392 () Bool)

(assert (= bs!1852392 (and d!2166843 b!6935685)))

(assert (=> bs!1852392 (not (= lambda!394900 lambda!394886))))

(assert (=> bs!1852385 (= lambda!394900 lambda!394837)))

(assert (=> bs!1852388 (not (= lambda!394900 lambda!394836))))

(declare-fun bs!1852393 () Bool)

(assert (= bs!1852393 (and d!2166843 b!6935556)))

(assert (=> bs!1852393 (not (= lambda!394900 lambda!394872))))

(declare-fun bs!1852394 () Bool)

(assert (= bs!1852394 (and d!2166843 b!6935849)))

(assert (=> bs!1852394 (not (= lambda!394900 lambda!394899))))

(assert (=> bs!1852387 (= lambda!394900 lambda!394896)))

(declare-fun bs!1852395 () Bool)

(assert (= bs!1852395 (and d!2166843 b!6935690)))

(assert (=> bs!1852395 (not (= lambda!394900 lambda!394884))))

(assert (=> bs!1852389 (= (and (= lt!2474186 s!14361) (= r2!6280 lt!2474188)) (= lambda!394900 lambda!394894))))

(declare-fun bs!1852396 () Bool)

(assert (= bs!1852396 (and d!2166843 b!6935712)))

(assert (=> bs!1852396 (not (= lambda!394900 lambda!394888))))

(assert (=> d!2166843 true))

(assert (=> d!2166843 true))

(assert (=> d!2166843 true))

(assert (=> d!2166843 (= (isDefined!13425 (findConcatSeparation!3138 r1!6342 r2!6280 Nil!66584 lt!2474186 lt!2474186)) (Exists!3955 lambda!394900))))

(declare-fun lt!2474312 () Unit!160634)

(assert (=> d!2166843 (= lt!2474312 (choose!51660 r1!6342 r2!6280 lt!2474186))))

(assert (=> d!2166843 (validRegex!8661 r1!6342)))

(assert (=> d!2166843 (= (lemmaFindConcatSeparationEquivalentToExists!2896 r1!6342 r2!6280 lt!2474186) lt!2474312)))

(declare-fun bs!1852397 () Bool)

(assert (= bs!1852397 d!2166843))

(declare-fun m!7641876 () Bool)

(assert (=> bs!1852397 m!7641876))

(declare-fun m!7641878 () Bool)

(assert (=> bs!1852397 m!7641878))

(assert (=> bs!1852397 m!7641268))

(assert (=> bs!1852397 m!7641270))

(assert (=> bs!1852397 m!7641276))

(assert (=> bs!1852397 m!7641268))

(assert (=> b!6935107 d!2166843))

(declare-fun d!2166845 () Bool)

(assert (=> d!2166845 (isDefined!13425 (findConcatSeparation!3138 r1!6342 r2!6280 Nil!66584 lt!2474186 lt!2474186))))

(declare-fun lt!2474315 () Unit!160634)

(declare-fun choose!51663 (Regex!16955 Regex!16955 List!66708 List!66708 List!66708 List!66708 List!66708) Unit!160634)

(assert (=> d!2166845 (= lt!2474315 (choose!51663 r1!6342 r2!6280 (_1!37115 lt!2474201) (_1!37115 lt!2474189) lt!2474186 Nil!66584 lt!2474186))))

(assert (=> d!2166845 (validRegex!8661 r1!6342)))

(assert (=> d!2166845 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!98 r1!6342 r2!6280 (_1!37115 lt!2474201) (_1!37115 lt!2474189) lt!2474186 Nil!66584 lt!2474186) lt!2474315)))

(declare-fun bs!1852398 () Bool)

(assert (= bs!1852398 d!2166845))

(assert (=> bs!1852398 m!7641268))

(assert (=> bs!1852398 m!7641268))

(assert (=> bs!1852398 m!7641270))

(declare-fun m!7641880 () Bool)

(assert (=> bs!1852398 m!7641880))

(assert (=> bs!1852398 m!7641276))

(assert (=> b!6935107 d!2166845))

(declare-fun b!6935860 () Bool)

(declare-fun e!4172941 () Bool)

(assert (=> b!6935860 (= e!4172941 (= (head!13902 (_2!37115 lt!2474201)) (c!1286963 lt!2474188)))))

(declare-fun b!6935861 () Bool)

(declare-fun res!2828946 () Bool)

(assert (=> b!6935861 (=> (not res!2828946) (not e!4172941))))

(declare-fun call!630199 () Bool)

(assert (=> b!6935861 (= res!2828946 (not call!630199))))

(declare-fun b!6935862 () Bool)

(declare-fun e!4172943 () Bool)

(declare-fun e!4172939 () Bool)

(assert (=> b!6935862 (= e!4172943 e!4172939)))

(declare-fun c!1287124 () Bool)

(assert (=> b!6935862 (= c!1287124 ((_ is EmptyLang!16955) lt!2474188))))

(declare-fun b!6935863 () Bool)

(declare-fun lt!2474316 () Bool)

(assert (=> b!6935863 (= e!4172939 (not lt!2474316))))

(declare-fun b!6935864 () Bool)

(declare-fun res!2828947 () Bool)

(declare-fun e!4172945 () Bool)

(assert (=> b!6935864 (=> res!2828947 e!4172945)))

(assert (=> b!6935864 (= res!2828947 e!4172941)))

(declare-fun res!2828944 () Bool)

(assert (=> b!6935864 (=> (not res!2828944) (not e!4172941))))

(assert (=> b!6935864 (= res!2828944 lt!2474316)))

(declare-fun b!6935865 () Bool)

(declare-fun res!2828945 () Bool)

(assert (=> b!6935865 (=> (not res!2828945) (not e!4172941))))

(assert (=> b!6935865 (= res!2828945 (isEmpty!38849 (tail!12954 (_2!37115 lt!2474201))))))

(declare-fun b!6935866 () Bool)

(assert (=> b!6935866 (= e!4172943 (= lt!2474316 call!630199))))

(declare-fun b!6935867 () Bool)

(declare-fun e!4172942 () Bool)

(assert (=> b!6935867 (= e!4172942 (nullable!6774 lt!2474188))))

(declare-fun b!6935868 () Bool)

(assert (=> b!6935868 (= e!4172942 (matchR!9094 (derivativeStep!5449 lt!2474188 (head!13902 (_2!37115 lt!2474201))) (tail!12954 (_2!37115 lt!2474201))))))

(declare-fun b!6935869 () Bool)

(declare-fun e!4172940 () Bool)

(assert (=> b!6935869 (= e!4172945 e!4172940)))

(declare-fun res!2828943 () Bool)

(assert (=> b!6935869 (=> (not res!2828943) (not e!4172940))))

(assert (=> b!6935869 (= res!2828943 (not lt!2474316))))

(declare-fun b!6935870 () Bool)

(declare-fun e!4172944 () Bool)

(assert (=> b!6935870 (= e!4172940 e!4172944)))

(declare-fun res!2828940 () Bool)

(assert (=> b!6935870 (=> res!2828940 e!4172944)))

(assert (=> b!6935870 (= res!2828940 call!630199)))

(declare-fun b!6935871 () Bool)

(declare-fun res!2828942 () Bool)

(assert (=> b!6935871 (=> res!2828942 e!4172945)))

(assert (=> b!6935871 (= res!2828942 (not ((_ is ElementMatch!16955) lt!2474188)))))

(assert (=> b!6935871 (= e!4172939 e!4172945)))

(declare-fun b!6935872 () Bool)

(assert (=> b!6935872 (= e!4172944 (not (= (head!13902 (_2!37115 lt!2474201)) (c!1286963 lt!2474188))))))

(declare-fun b!6935873 () Bool)

(declare-fun res!2828941 () Bool)

(assert (=> b!6935873 (=> res!2828941 e!4172944)))

(assert (=> b!6935873 (= res!2828941 (not (isEmpty!38849 (tail!12954 (_2!37115 lt!2474201)))))))

(declare-fun bm!630194 () Bool)

(assert (=> bm!630194 (= call!630199 (isEmpty!38849 (_2!37115 lt!2474201)))))

(declare-fun d!2166847 () Bool)

(assert (=> d!2166847 e!4172943))

(declare-fun c!1287123 () Bool)

(assert (=> d!2166847 (= c!1287123 ((_ is EmptyExpr!16955) lt!2474188))))

(assert (=> d!2166847 (= lt!2474316 e!4172942)))

(declare-fun c!1287125 () Bool)

(assert (=> d!2166847 (= c!1287125 (isEmpty!38849 (_2!37115 lt!2474201)))))

(assert (=> d!2166847 (validRegex!8661 lt!2474188)))

(assert (=> d!2166847 (= (matchR!9094 lt!2474188 (_2!37115 lt!2474201)) lt!2474316)))

(assert (= (and d!2166847 c!1287125) b!6935867))

(assert (= (and d!2166847 (not c!1287125)) b!6935868))

(assert (= (and d!2166847 c!1287123) b!6935866))

(assert (= (and d!2166847 (not c!1287123)) b!6935862))

(assert (= (and b!6935862 c!1287124) b!6935863))

(assert (= (and b!6935862 (not c!1287124)) b!6935871))

(assert (= (and b!6935871 (not res!2828942)) b!6935864))

(assert (= (and b!6935864 res!2828944) b!6935861))

(assert (= (and b!6935861 res!2828946) b!6935865))

(assert (= (and b!6935865 res!2828945) b!6935860))

(assert (= (and b!6935864 (not res!2828947)) b!6935869))

(assert (= (and b!6935869 res!2828943) b!6935870))

(assert (= (and b!6935870 (not res!2828940)) b!6935873))

(assert (= (and b!6935873 (not res!2828941)) b!6935872))

(assert (= (or b!6935866 b!6935861 b!6935870) bm!630194))

(declare-fun m!7641882 () Bool)

(assert (=> b!6935867 m!7641882))

(declare-fun m!7641884 () Bool)

(assert (=> b!6935860 m!7641884))

(assert (=> bm!630194 m!7641600))

(declare-fun m!7641886 () Bool)

(assert (=> b!6935873 m!7641886))

(assert (=> b!6935873 m!7641886))

(declare-fun m!7641888 () Bool)

(assert (=> b!6935873 m!7641888))

(assert (=> b!6935868 m!7641884))

(assert (=> b!6935868 m!7641884))

(declare-fun m!7641890 () Bool)

(assert (=> b!6935868 m!7641890))

(assert (=> b!6935868 m!7641886))

(assert (=> b!6935868 m!7641890))

(assert (=> b!6935868 m!7641886))

(declare-fun m!7641892 () Bool)

(assert (=> b!6935868 m!7641892))

(assert (=> d!2166847 m!7641600))

(assert (=> d!2166847 m!7641660))

(assert (=> b!6935865 m!7641886))

(assert (=> b!6935865 m!7641886))

(assert (=> b!6935865 m!7641888))

(assert (=> b!6935872 m!7641884))

(assert (=> b!6935117 d!2166847))

(declare-fun d!2166849 () Bool)

(assert (=> d!2166849 (= (isDefined!13425 lt!2474187) (not (isEmpty!38850 lt!2474187)))))

(declare-fun bs!1852399 () Bool)

(assert (= bs!1852399 d!2166849))

(declare-fun m!7641894 () Bool)

(assert (=> bs!1852399 m!7641894))

(assert (=> b!6935111 d!2166849))

(declare-fun b!6935874 () Bool)

(declare-fun lt!2474318 () Unit!160634)

(declare-fun lt!2474319 () Unit!160634)

(assert (=> b!6935874 (= lt!2474318 lt!2474319)))

(assert (=> b!6935874 (= (++!14994 (++!14994 Nil!66584 (Cons!66584 (h!73032 s!14361) Nil!66584)) (t!380451 s!14361)) s!14361)))

(assert (=> b!6935874 (= lt!2474319 (lemmaMoveElementToOtherListKeepsConcatEq!2853 Nil!66584 (h!73032 s!14361) (t!380451 s!14361) s!14361))))

(declare-fun e!4172950 () Option!16724)

(assert (=> b!6935874 (= e!4172950 (findConcatSeparation!3138 r1!6342 lt!2474188 (++!14994 Nil!66584 (Cons!66584 (h!73032 s!14361) Nil!66584)) (t!380451 s!14361) s!14361))))

(declare-fun b!6935875 () Bool)

(declare-fun e!4172947 () Bool)

(declare-fun lt!2474317 () Option!16724)

(assert (=> b!6935875 (= e!4172947 (not (isDefined!13425 lt!2474317)))))

(declare-fun b!6935876 () Bool)

(declare-fun e!4172949 () Bool)

(assert (=> b!6935876 (= e!4172949 (= (++!14994 (_1!37115 (get!23369 lt!2474317)) (_2!37115 (get!23369 lt!2474317))) s!14361))))

(declare-fun b!6935877 () Bool)

(declare-fun res!2828951 () Bool)

(assert (=> b!6935877 (=> (not res!2828951) (not e!4172949))))

(assert (=> b!6935877 (= res!2828951 (matchR!9094 r1!6342 (_1!37115 (get!23369 lt!2474317))))))

(declare-fun b!6935878 () Bool)

(assert (=> b!6935878 (= e!4172950 None!16723)))

(declare-fun b!6935879 () Bool)

(declare-fun e!4172946 () Option!16724)

(assert (=> b!6935879 (= e!4172946 e!4172950)))

(declare-fun c!1287127 () Bool)

(assert (=> b!6935879 (= c!1287127 ((_ is Nil!66584) s!14361))))

(declare-fun b!6935880 () Bool)

(assert (=> b!6935880 (= e!4172946 (Some!16723 (tuple2!67625 Nil!66584 s!14361)))))

(declare-fun b!6935881 () Bool)

(declare-fun e!4172948 () Bool)

(assert (=> b!6935881 (= e!4172948 (matchR!9094 lt!2474188 s!14361))))

(declare-fun b!6935882 () Bool)

(declare-fun res!2828952 () Bool)

(assert (=> b!6935882 (=> (not res!2828952) (not e!4172949))))

(assert (=> b!6935882 (= res!2828952 (matchR!9094 lt!2474188 (_2!37115 (get!23369 lt!2474317))))))

(declare-fun d!2166851 () Bool)

(assert (=> d!2166851 e!4172947))

(declare-fun res!2828948 () Bool)

(assert (=> d!2166851 (=> res!2828948 e!4172947)))

(assert (=> d!2166851 (= res!2828948 e!4172949)))

(declare-fun res!2828949 () Bool)

(assert (=> d!2166851 (=> (not res!2828949) (not e!4172949))))

(assert (=> d!2166851 (= res!2828949 (isDefined!13425 lt!2474317))))

(assert (=> d!2166851 (= lt!2474317 e!4172946)))

(declare-fun c!1287126 () Bool)

(assert (=> d!2166851 (= c!1287126 e!4172948)))

(declare-fun res!2828950 () Bool)

(assert (=> d!2166851 (=> (not res!2828950) (not e!4172948))))

(assert (=> d!2166851 (= res!2828950 (matchR!9094 r1!6342 Nil!66584))))

(assert (=> d!2166851 (validRegex!8661 r1!6342)))

(assert (=> d!2166851 (= (findConcatSeparation!3138 r1!6342 lt!2474188 Nil!66584 s!14361 s!14361) lt!2474317)))

(assert (= (and d!2166851 res!2828950) b!6935881))

(assert (= (and d!2166851 c!1287126) b!6935880))

(assert (= (and d!2166851 (not c!1287126)) b!6935879))

(assert (= (and b!6935879 c!1287127) b!6935878))

(assert (= (and b!6935879 (not c!1287127)) b!6935874))

(assert (= (and d!2166851 res!2828949) b!6935877))

(assert (= (and b!6935877 res!2828951) b!6935882))

(assert (= (and b!6935882 res!2828952) b!6935876))

(assert (= (and d!2166851 (not res!2828948)) b!6935875))

(declare-fun m!7641896 () Bool)

(assert (=> b!6935877 m!7641896))

(declare-fun m!7641898 () Bool)

(assert (=> b!6935877 m!7641898))

(declare-fun m!7641900 () Bool)

(assert (=> b!6935874 m!7641900))

(assert (=> b!6935874 m!7641900))

(declare-fun m!7641902 () Bool)

(assert (=> b!6935874 m!7641902))

(declare-fun m!7641904 () Bool)

(assert (=> b!6935874 m!7641904))

(assert (=> b!6935874 m!7641900))

(declare-fun m!7641906 () Bool)

(assert (=> b!6935874 m!7641906))

(assert (=> b!6935876 m!7641896))

(declare-fun m!7641908 () Bool)

(assert (=> b!6935876 m!7641908))

(declare-fun m!7641910 () Bool)

(assert (=> b!6935875 m!7641910))

(declare-fun m!7641912 () Bool)

(assert (=> b!6935881 m!7641912))

(assert (=> b!6935882 m!7641896))

(declare-fun m!7641914 () Bool)

(assert (=> b!6935882 m!7641914))

(assert (=> d!2166851 m!7641910))

(assert (=> d!2166851 m!7641846))

(assert (=> d!2166851 m!7641276))

(assert (=> b!6935111 d!2166851))

(declare-fun b!6935883 () Bool)

(declare-fun e!4172954 () Bool)

(declare-fun e!4172952 () Bool)

(assert (=> b!6935883 (= e!4172954 e!4172952)))

(declare-fun res!2828953 () Bool)

(assert (=> b!6935883 (= res!2828953 (not (nullable!6774 (reg!17284 r1!6342))))))

(assert (=> b!6935883 (=> (not res!2828953) (not e!4172952))))

(declare-fun bm!630195 () Bool)

(declare-fun call!630202 () Bool)

(declare-fun call!630200 () Bool)

(assert (=> bm!630195 (= call!630202 call!630200)))

(declare-fun b!6935884 () Bool)

(declare-fun e!4172956 () Bool)

(assert (=> b!6935884 (= e!4172954 e!4172956)))

(declare-fun c!1287128 () Bool)

(assert (=> b!6935884 (= c!1287128 ((_ is Union!16955) r1!6342))))

(declare-fun bm!630196 () Bool)

(declare-fun call!630201 () Bool)

(assert (=> bm!630196 (= call!630201 (validRegex!8661 (ite c!1287128 (regOne!34423 r1!6342) (regTwo!34422 r1!6342))))))

(declare-fun bm!630197 () Bool)

(declare-fun c!1287129 () Bool)

(assert (=> bm!630197 (= call!630200 (validRegex!8661 (ite c!1287129 (reg!17284 r1!6342) (ite c!1287128 (regTwo!34423 r1!6342) (regOne!34422 r1!6342)))))))

(declare-fun b!6935885 () Bool)

(assert (=> b!6935885 (= e!4172952 call!630200)))

(declare-fun b!6935886 () Bool)

(declare-fun e!4172957 () Bool)

(declare-fun e!4172955 () Bool)

(assert (=> b!6935886 (= e!4172957 e!4172955)))

(declare-fun res!2828956 () Bool)

(assert (=> b!6935886 (=> (not res!2828956) (not e!4172955))))

(assert (=> b!6935886 (= res!2828956 call!630202)))

(declare-fun b!6935887 () Bool)

(declare-fun res!2828954 () Bool)

(assert (=> b!6935887 (=> res!2828954 e!4172957)))

(assert (=> b!6935887 (= res!2828954 (not ((_ is Concat!25800) r1!6342)))))

(assert (=> b!6935887 (= e!4172956 e!4172957)))

(declare-fun b!6935888 () Bool)

(declare-fun res!2828957 () Bool)

(declare-fun e!4172953 () Bool)

(assert (=> b!6935888 (=> (not res!2828957) (not e!4172953))))

(assert (=> b!6935888 (= res!2828957 call!630201)))

(assert (=> b!6935888 (= e!4172956 e!4172953)))

(declare-fun d!2166853 () Bool)

(declare-fun res!2828955 () Bool)

(declare-fun e!4172951 () Bool)

(assert (=> d!2166853 (=> res!2828955 e!4172951)))

(assert (=> d!2166853 (= res!2828955 ((_ is ElementMatch!16955) r1!6342))))

(assert (=> d!2166853 (= (validRegex!8661 r1!6342) e!4172951)))

(declare-fun b!6935889 () Bool)

(assert (=> b!6935889 (= e!4172955 call!630201)))

(declare-fun b!6935890 () Bool)

(assert (=> b!6935890 (= e!4172953 call!630202)))

(declare-fun b!6935891 () Bool)

(assert (=> b!6935891 (= e!4172951 e!4172954)))

(assert (=> b!6935891 (= c!1287129 ((_ is Star!16955) r1!6342))))

(assert (= (and d!2166853 (not res!2828955)) b!6935891))

(assert (= (and b!6935891 c!1287129) b!6935883))

(assert (= (and b!6935891 (not c!1287129)) b!6935884))

(assert (= (and b!6935883 res!2828953) b!6935885))

(assert (= (and b!6935884 c!1287128) b!6935888))

(assert (= (and b!6935884 (not c!1287128)) b!6935887))

(assert (= (and b!6935888 res!2828957) b!6935890))

(assert (= (and b!6935887 (not res!2828954)) b!6935886))

(assert (= (and b!6935886 res!2828956) b!6935889))

(assert (= (or b!6935888 b!6935889) bm!630196))

(assert (= (or b!6935890 b!6935886) bm!630195))

(assert (= (or b!6935885 bm!630195) bm!630197))

(declare-fun m!7641916 () Bool)

(assert (=> b!6935883 m!7641916))

(declare-fun m!7641918 () Bool)

(assert (=> bm!630196 m!7641918))

(declare-fun m!7641920 () Bool)

(assert (=> bm!630197 m!7641920))

(assert (=> start!666290 d!2166853))

(declare-fun b!6935892 () Bool)

(declare-fun e!4172961 () Bool)

(declare-fun e!4172959 () Bool)

(assert (=> b!6935892 (= e!4172961 e!4172959)))

(declare-fun res!2828958 () Bool)

(assert (=> b!6935892 (= res!2828958 (not (nullable!6774 (reg!17284 lt!2474193))))))

(assert (=> b!6935892 (=> (not res!2828958) (not e!4172959))))

(declare-fun bm!630198 () Bool)

(declare-fun call!630205 () Bool)

(declare-fun call!630203 () Bool)

(assert (=> bm!630198 (= call!630205 call!630203)))

(declare-fun b!6935893 () Bool)

(declare-fun e!4172963 () Bool)

(assert (=> b!6935893 (= e!4172961 e!4172963)))

(declare-fun c!1287130 () Bool)

(assert (=> b!6935893 (= c!1287130 ((_ is Union!16955) lt!2474193))))

(declare-fun bm!630199 () Bool)

(declare-fun call!630204 () Bool)

(assert (=> bm!630199 (= call!630204 (validRegex!8661 (ite c!1287130 (regOne!34423 lt!2474193) (regTwo!34422 lt!2474193))))))

(declare-fun c!1287131 () Bool)

(declare-fun bm!630200 () Bool)

(assert (=> bm!630200 (= call!630203 (validRegex!8661 (ite c!1287131 (reg!17284 lt!2474193) (ite c!1287130 (regTwo!34423 lt!2474193) (regOne!34422 lt!2474193)))))))

(declare-fun b!6935894 () Bool)

(assert (=> b!6935894 (= e!4172959 call!630203)))

(declare-fun b!6935895 () Bool)

(declare-fun e!4172964 () Bool)

(declare-fun e!4172962 () Bool)

(assert (=> b!6935895 (= e!4172964 e!4172962)))

(declare-fun res!2828961 () Bool)

(assert (=> b!6935895 (=> (not res!2828961) (not e!4172962))))

(assert (=> b!6935895 (= res!2828961 call!630205)))

(declare-fun b!6935896 () Bool)

(declare-fun res!2828959 () Bool)

(assert (=> b!6935896 (=> res!2828959 e!4172964)))

(assert (=> b!6935896 (= res!2828959 (not ((_ is Concat!25800) lt!2474193)))))

(assert (=> b!6935896 (= e!4172963 e!4172964)))

(declare-fun b!6935897 () Bool)

(declare-fun res!2828962 () Bool)

(declare-fun e!4172960 () Bool)

(assert (=> b!6935897 (=> (not res!2828962) (not e!4172960))))

(assert (=> b!6935897 (= res!2828962 call!630204)))

(assert (=> b!6935897 (= e!4172963 e!4172960)))

(declare-fun d!2166855 () Bool)

(declare-fun res!2828960 () Bool)

(declare-fun e!4172958 () Bool)

(assert (=> d!2166855 (=> res!2828960 e!4172958)))

(assert (=> d!2166855 (= res!2828960 ((_ is ElementMatch!16955) lt!2474193))))

(assert (=> d!2166855 (= (validRegex!8661 lt!2474193) e!4172958)))

(declare-fun b!6935898 () Bool)

(assert (=> b!6935898 (= e!4172962 call!630204)))

(declare-fun b!6935899 () Bool)

(assert (=> b!6935899 (= e!4172960 call!630205)))

(declare-fun b!6935900 () Bool)

(assert (=> b!6935900 (= e!4172958 e!4172961)))

(assert (=> b!6935900 (= c!1287131 ((_ is Star!16955) lt!2474193))))

(assert (= (and d!2166855 (not res!2828960)) b!6935900))

(assert (= (and b!6935900 c!1287131) b!6935892))

(assert (= (and b!6935900 (not c!1287131)) b!6935893))

(assert (= (and b!6935892 res!2828958) b!6935894))

(assert (= (and b!6935893 c!1287130) b!6935897))

(assert (= (and b!6935893 (not c!1287130)) b!6935896))

(assert (= (and b!6935897 res!2828962) b!6935899))

(assert (= (and b!6935896 (not res!2828959)) b!6935895))

(assert (= (and b!6935895 res!2828961) b!6935898))

(assert (= (or b!6935897 b!6935898) bm!630199))

(assert (= (or b!6935899 b!6935895) bm!630198))

(assert (= (or b!6935894 bm!630198) bm!630200))

(declare-fun m!7641922 () Bool)

(assert (=> b!6935892 m!7641922))

(declare-fun m!7641924 () Bool)

(assert (=> bm!630199 m!7641924))

(declare-fun m!7641926 () Bool)

(assert (=> bm!630200 m!7641926))

(assert (=> b!6935121 d!2166855))

(declare-fun bs!1852400 () Bool)

(declare-fun b!6935906 () Bool)

(assert (= bs!1852400 (and b!6935906 d!2166813)))

(declare-fun lambda!394901 () Int)

(assert (=> bs!1852400 (not (= lambda!394901 lambda!394893))))

(declare-fun bs!1852401 () Bool)

(assert (= bs!1852401 (and b!6935906 b!6935707)))

(assert (=> bs!1852401 (not (= lambda!394901 lambda!394889))))

(declare-fun bs!1852402 () Bool)

(assert (= bs!1852402 (and b!6935906 b!6935129)))

(assert (=> bs!1852402 (not (= lambda!394901 lambda!394833))))

(declare-fun bs!1852403 () Bool)

(assert (= bs!1852403 (and b!6935906 b!6935732)))

(assert (=> bs!1852403 (not (= lambda!394901 lambda!394892))))

(declare-fun bs!1852404 () Bool)

(assert (= bs!1852404 (and b!6935906 d!2166757)))

(assert (=> bs!1852404 (not (= lambda!394901 lambda!394881))))

(declare-fun bs!1852405 () Bool)

(assert (= bs!1852405 (and b!6935906 d!2166683)))

(assert (=> bs!1852405 (not (= lambda!394901 lambda!394853))))

(declare-fun bs!1852406 () Bool)

(assert (= bs!1852406 (and b!6935906 b!6935107)))

(assert (=> bs!1852406 (not (= lambda!394901 lambda!394838))))

(declare-fun bs!1852407 () Bool)

(assert (= bs!1852407 (and b!6935906 b!6935854)))

(assert (=> bs!1852407 (= (and (= s!14361 lt!2474186) (= (reg!17284 lt!2474203) (reg!17284 lt!2474193)) (= lt!2474203 lt!2474193)) (= lambda!394901 lambda!394898))))

(declare-fun bs!1852408 () Bool)

(assert (= bs!1852408 (and b!6935906 d!2166837)))

(assert (=> bs!1852408 (not (= lambda!394901 lambda!394897))))

(assert (=> bs!1852402 (not (= lambda!394901 lambda!394834))))

(declare-fun bs!1852409 () Bool)

(assert (= bs!1852409 (and b!6935906 b!6935127)))

(assert (=> bs!1852409 (not (= lambda!394901 lambda!394835))))

(declare-fun bs!1852410 () Bool)

(assert (= bs!1852410 (and b!6935906 d!2166819)))

(assert (=> bs!1852410 (not (= lambda!394901 lambda!394895))))

(assert (=> bs!1852405 (not (= lambda!394901 lambda!394854))))

(declare-fun bs!1852411 () Bool)

(assert (= bs!1852411 (and b!6935906 b!6935551)))

(assert (=> bs!1852411 (not (= lambda!394901 lambda!394874))))

(declare-fun bs!1852412 () Bool)

(assert (= bs!1852412 (and b!6935906 b!6935737)))

(assert (=> bs!1852412 (= (and (= s!14361 (_1!37115 lt!2474201)) (= (reg!17284 lt!2474203) (reg!17284 r1!6342)) (= lt!2474203 r1!6342)) (= lambda!394901 lambda!394891))))

(declare-fun bs!1852413 () Bool)

(assert (= bs!1852413 (and b!6935906 d!2166843)))

(assert (=> bs!1852413 (not (= lambda!394901 lambda!394900))))

(declare-fun bs!1852414 () Bool)

(assert (= bs!1852414 (and b!6935906 b!6935685)))

(assert (=> bs!1852414 (not (= lambda!394901 lambda!394886))))

(assert (=> bs!1852406 (not (= lambda!394901 lambda!394837))))

(assert (=> bs!1852409 (not (= lambda!394901 lambda!394836))))

(declare-fun bs!1852415 () Bool)

(assert (= bs!1852415 (and b!6935906 b!6935556)))

(assert (=> bs!1852415 (= (and (= s!14361 (_2!37115 lt!2474201)) (= (reg!17284 lt!2474203) (reg!17284 lt!2474188)) (= lt!2474203 lt!2474188)) (= lambda!394901 lambda!394872))))

(declare-fun bs!1852416 () Bool)

(assert (= bs!1852416 (and b!6935906 b!6935849)))

(assert (=> bs!1852416 (not (= lambda!394901 lambda!394899))))

(assert (=> bs!1852408 (not (= lambda!394901 lambda!394896))))

(declare-fun bs!1852417 () Bool)

(assert (= bs!1852417 (and b!6935906 b!6935690)))

(assert (=> bs!1852417 (= (and (= s!14361 (_1!37115 lt!2474189)) (= (reg!17284 lt!2474203) (reg!17284 r2!6280)) (= lt!2474203 r2!6280)) (= lambda!394901 lambda!394884))))

(assert (=> bs!1852410 (not (= lambda!394901 lambda!394894))))

(declare-fun bs!1852418 () Bool)

(assert (= bs!1852418 (and b!6935906 b!6935712)))

(assert (=> bs!1852418 (= (and (= s!14361 (_2!37115 lt!2474189)) (= (reg!17284 lt!2474203) (reg!17284 r3!135)) (= lt!2474203 r3!135)) (= lambda!394901 lambda!394888))))

(assert (=> b!6935906 true))

(assert (=> b!6935906 true))

(declare-fun bs!1852419 () Bool)

(declare-fun b!6935901 () Bool)

(assert (= bs!1852419 (and b!6935901 d!2166813)))

(declare-fun lambda!394902 () Int)

(assert (=> bs!1852419 (not (= lambda!394902 lambda!394893))))

(declare-fun bs!1852420 () Bool)

(assert (= bs!1852420 (and b!6935901 b!6935707)))

(assert (=> bs!1852420 (= (and (= s!14361 (_2!37115 lt!2474189)) (= (regOne!34422 lt!2474203) (regOne!34422 r3!135)) (= (regTwo!34422 lt!2474203) (regTwo!34422 r3!135))) (= lambda!394902 lambda!394889))))

(declare-fun bs!1852421 () Bool)

(assert (= bs!1852421 (and b!6935901 b!6935129)))

(assert (=> bs!1852421 (not (= lambda!394902 lambda!394833))))

(declare-fun bs!1852422 () Bool)

(assert (= bs!1852422 (and b!6935901 b!6935732)))

(assert (=> bs!1852422 (= (and (= s!14361 (_1!37115 lt!2474201)) (= (regOne!34422 lt!2474203) (regOne!34422 r1!6342)) (= (regTwo!34422 lt!2474203) (regTwo!34422 r1!6342))) (= lambda!394902 lambda!394892))))

(declare-fun bs!1852423 () Bool)

(assert (= bs!1852423 (and b!6935901 d!2166757)))

(assert (=> bs!1852423 (not (= lambda!394902 lambda!394881))))

(declare-fun bs!1852424 () Bool)

(assert (= bs!1852424 (and b!6935901 d!2166683)))

(assert (=> bs!1852424 (not (= lambda!394902 lambda!394853))))

(declare-fun bs!1852425 () Bool)

(assert (= bs!1852425 (and b!6935901 b!6935107)))

(assert (=> bs!1852425 (= (and (= s!14361 lt!2474186) (= (regOne!34422 lt!2474203) r1!6342) (= (regTwo!34422 lt!2474203) r2!6280)) (= lambda!394902 lambda!394838))))

(declare-fun bs!1852426 () Bool)

(assert (= bs!1852426 (and b!6935901 d!2166837)))

(assert (=> bs!1852426 (= (and (= s!14361 lt!2474186) (= (regOne!34422 lt!2474203) r1!6342) (= (regTwo!34422 lt!2474203) r2!6280)) (= lambda!394902 lambda!394897))))

(assert (=> bs!1852421 (= (and (= (regOne!34422 lt!2474203) r1!6342) (= (regTwo!34422 lt!2474203) lt!2474188)) (= lambda!394902 lambda!394834))))

(declare-fun bs!1852427 () Bool)

(assert (= bs!1852427 (and b!6935901 b!6935127)))

(assert (=> bs!1852427 (not (= lambda!394902 lambda!394835))))

(declare-fun bs!1852428 () Bool)

(assert (= bs!1852428 (and b!6935901 d!2166819)))

(assert (=> bs!1852428 (= (and (= (regOne!34422 lt!2474203) r1!6342) (= (regTwo!34422 lt!2474203) lt!2474188)) (= lambda!394902 lambda!394895))))

(assert (=> bs!1852424 (= (and (= s!14361 (_2!37115 lt!2474201)) (= (regOne!34422 lt!2474203) r2!6280) (= (regTwo!34422 lt!2474203) r3!135)) (= lambda!394902 lambda!394854))))

(declare-fun bs!1852429 () Bool)

(assert (= bs!1852429 (and b!6935901 b!6935551)))

(assert (=> bs!1852429 (= (and (= s!14361 (_2!37115 lt!2474201)) (= (regOne!34422 lt!2474203) (regOne!34422 lt!2474188)) (= (regTwo!34422 lt!2474203) (regTwo!34422 lt!2474188))) (= lambda!394902 lambda!394874))))

(declare-fun bs!1852430 () Bool)

(assert (= bs!1852430 (and b!6935901 b!6935737)))

(assert (=> bs!1852430 (not (= lambda!394902 lambda!394891))))

(declare-fun bs!1852431 () Bool)

(assert (= bs!1852431 (and b!6935901 d!2166843)))

(assert (=> bs!1852431 (not (= lambda!394902 lambda!394900))))

(declare-fun bs!1852432 () Bool)

(assert (= bs!1852432 (and b!6935901 b!6935685)))

(assert (=> bs!1852432 (= (and (= s!14361 (_1!37115 lt!2474189)) (= (regOne!34422 lt!2474203) (regOne!34422 r2!6280)) (= (regTwo!34422 lt!2474203) (regTwo!34422 r2!6280))) (= lambda!394902 lambda!394886))))

(assert (=> bs!1852425 (not (= lambda!394902 lambda!394837))))

(assert (=> bs!1852427 (= (and (= s!14361 (_2!37115 lt!2474201)) (= (regOne!34422 lt!2474203) r2!6280) (= (regTwo!34422 lt!2474203) r3!135)) (= lambda!394902 lambda!394836))))

(declare-fun bs!1852433 () Bool)

(assert (= bs!1852433 (and b!6935901 b!6935556)))

(assert (=> bs!1852433 (not (= lambda!394902 lambda!394872))))

(declare-fun bs!1852434 () Bool)

(assert (= bs!1852434 (and b!6935901 b!6935849)))

(assert (=> bs!1852434 (= (and (= s!14361 lt!2474186) (= (regOne!34422 lt!2474203) (regOne!34422 lt!2474193)) (= (regTwo!34422 lt!2474203) (regTwo!34422 lt!2474193))) (= lambda!394902 lambda!394899))))

(declare-fun bs!1852435 () Bool)

(assert (= bs!1852435 (and b!6935901 b!6935854)))

(assert (=> bs!1852435 (not (= lambda!394902 lambda!394898))))

(declare-fun bs!1852436 () Bool)

(assert (= bs!1852436 (and b!6935901 b!6935906)))

(assert (=> bs!1852436 (not (= lambda!394902 lambda!394901))))

(assert (=> bs!1852426 (not (= lambda!394902 lambda!394896))))

(declare-fun bs!1852437 () Bool)

(assert (= bs!1852437 (and b!6935901 b!6935690)))

(assert (=> bs!1852437 (not (= lambda!394902 lambda!394884))))

(assert (=> bs!1852428 (not (= lambda!394902 lambda!394894))))

(declare-fun bs!1852438 () Bool)

(assert (= bs!1852438 (and b!6935901 b!6935712)))

(assert (=> bs!1852438 (not (= lambda!394902 lambda!394888))))

(assert (=> b!6935901 true))

(assert (=> b!6935901 true))

(declare-fun bm!630201 () Bool)

(declare-fun call!630206 () Bool)

(assert (=> bm!630201 (= call!630206 (isEmpty!38849 s!14361))))

(declare-fun e!4172965 () Bool)

(declare-fun call!630207 () Bool)

(assert (=> b!6935901 (= e!4172965 call!630207)))

(declare-fun b!6935902 () Bool)

(declare-fun e!4172967 () Bool)

(assert (=> b!6935902 (= e!4172967 (matchRSpec!4012 (regTwo!34423 lt!2474203) s!14361))))

(declare-fun b!6935903 () Bool)

(declare-fun e!4172968 () Bool)

(assert (=> b!6935903 (= e!4172968 e!4172967)))

(declare-fun res!2828964 () Bool)

(assert (=> b!6935903 (= res!2828964 (matchRSpec!4012 (regOne!34423 lt!2474203) s!14361))))

(assert (=> b!6935903 (=> res!2828964 e!4172967)))

(declare-fun b!6935904 () Bool)

(declare-fun c!1287132 () Bool)

(assert (=> b!6935904 (= c!1287132 ((_ is Union!16955) lt!2474203))))

(declare-fun e!4172966 () Bool)

(assert (=> b!6935904 (= e!4172966 e!4172968)))

(declare-fun b!6935905 () Bool)

(assert (=> b!6935905 (= e!4172968 e!4172965)))

(declare-fun c!1287134 () Bool)

(assert (=> b!6935905 (= c!1287134 ((_ is Star!16955) lt!2474203))))

(declare-fun e!4172969 () Bool)

(assert (=> b!6935906 (= e!4172969 call!630207)))

(declare-fun bm!630202 () Bool)

(assert (=> bm!630202 (= call!630207 (Exists!3955 (ite c!1287134 lambda!394901 lambda!394902)))))

(declare-fun d!2166857 () Bool)

(declare-fun c!1287133 () Bool)

(assert (=> d!2166857 (= c!1287133 ((_ is EmptyExpr!16955) lt!2474203))))

(declare-fun e!4172970 () Bool)

(assert (=> d!2166857 (= (matchRSpec!4012 lt!2474203 s!14361) e!4172970)))

(declare-fun b!6935907 () Bool)

(assert (=> b!6935907 (= e!4172966 (= s!14361 (Cons!66584 (c!1286963 lt!2474203) Nil!66584)))))

(declare-fun b!6935908 () Bool)

(assert (=> b!6935908 (= e!4172970 call!630206)))

(declare-fun b!6935909 () Bool)

(declare-fun c!1287135 () Bool)

(assert (=> b!6935909 (= c!1287135 ((_ is ElementMatch!16955) lt!2474203))))

(declare-fun e!4172971 () Bool)

(assert (=> b!6935909 (= e!4172971 e!4172966)))

(declare-fun b!6935910 () Bool)

(declare-fun res!2828965 () Bool)

(assert (=> b!6935910 (=> res!2828965 e!4172969)))

(assert (=> b!6935910 (= res!2828965 call!630206)))

(assert (=> b!6935910 (= e!4172965 e!4172969)))

(declare-fun b!6935911 () Bool)

(assert (=> b!6935911 (= e!4172970 e!4172971)))

(declare-fun res!2828963 () Bool)

(assert (=> b!6935911 (= res!2828963 (not ((_ is EmptyLang!16955) lt!2474203)))))

(assert (=> b!6935911 (=> (not res!2828963) (not e!4172971))))

(assert (= (and d!2166857 c!1287133) b!6935908))

(assert (= (and d!2166857 (not c!1287133)) b!6935911))

(assert (= (and b!6935911 res!2828963) b!6935909))

(assert (= (and b!6935909 c!1287135) b!6935907))

(assert (= (and b!6935909 (not c!1287135)) b!6935904))

(assert (= (and b!6935904 c!1287132) b!6935903))

(assert (= (and b!6935904 (not c!1287132)) b!6935905))

(assert (= (and b!6935903 (not res!2828964)) b!6935902))

(assert (= (and b!6935905 c!1287134) b!6935910))

(assert (= (and b!6935905 (not c!1287134)) b!6935901))

(assert (= (and b!6935910 (not res!2828965)) b!6935906))

(assert (= (or b!6935906 b!6935901) bm!630202))

(assert (= (or b!6935908 b!6935910) bm!630201))

(declare-fun m!7641928 () Bool)

(assert (=> bm!630201 m!7641928))

(declare-fun m!7641930 () Bool)

(assert (=> b!6935902 m!7641930))

(declare-fun m!7641932 () Bool)

(assert (=> b!6935903 m!7641932))

(declare-fun m!7641934 () Bool)

(assert (=> bm!630202 m!7641934))

(assert (=> b!6935109 d!2166857))

(declare-fun d!2166859 () Bool)

(assert (=> d!2166859 (= (matchR!9094 lt!2474204 s!14361) (matchRSpec!4012 lt!2474204 s!14361))))

(declare-fun lt!2474320 () Unit!160634)

(assert (=> d!2166859 (= lt!2474320 (choose!51661 lt!2474204 s!14361))))

(assert (=> d!2166859 (validRegex!8661 lt!2474204)))

(assert (=> d!2166859 (= (mainMatchTheorem!4012 lt!2474204 s!14361) lt!2474320)))

(declare-fun bs!1852439 () Bool)

(assert (= bs!1852439 d!2166859))

(assert (=> bs!1852439 m!7641238))

(assert (=> bs!1852439 m!7641246))

(declare-fun m!7641936 () Bool)

(assert (=> bs!1852439 m!7641936))

(declare-fun m!7641938 () Bool)

(assert (=> bs!1852439 m!7641938))

(assert (=> b!6935109 d!2166859))

(declare-fun bs!1852440 () Bool)

(declare-fun b!6935917 () Bool)

(assert (= bs!1852440 (and b!6935917 d!2166813)))

(declare-fun lambda!394903 () Int)

(assert (=> bs!1852440 (not (= lambda!394903 lambda!394893))))

(declare-fun bs!1852441 () Bool)

(assert (= bs!1852441 (and b!6935917 b!6935707)))

(assert (=> bs!1852441 (not (= lambda!394903 lambda!394889))))

(declare-fun bs!1852442 () Bool)

(assert (= bs!1852442 (and b!6935917 b!6935129)))

(assert (=> bs!1852442 (not (= lambda!394903 lambda!394833))))

(declare-fun bs!1852443 () Bool)

(assert (= bs!1852443 (and b!6935917 b!6935732)))

(assert (=> bs!1852443 (not (= lambda!394903 lambda!394892))))

(declare-fun bs!1852444 () Bool)

(assert (= bs!1852444 (and b!6935917 d!2166757)))

(assert (=> bs!1852444 (not (= lambda!394903 lambda!394881))))

(declare-fun bs!1852445 () Bool)

(assert (= bs!1852445 (and b!6935917 d!2166683)))

(assert (=> bs!1852445 (not (= lambda!394903 lambda!394853))))

(declare-fun bs!1852446 () Bool)

(assert (= bs!1852446 (and b!6935917 b!6935107)))

(assert (=> bs!1852446 (not (= lambda!394903 lambda!394838))))

(declare-fun bs!1852447 () Bool)

(assert (= bs!1852447 (and b!6935917 d!2166837)))

(assert (=> bs!1852447 (not (= lambda!394903 lambda!394897))))

(assert (=> bs!1852442 (not (= lambda!394903 lambda!394834))))

(declare-fun bs!1852448 () Bool)

(assert (= bs!1852448 (and b!6935917 b!6935127)))

(assert (=> bs!1852448 (not (= lambda!394903 lambda!394835))))

(declare-fun bs!1852449 () Bool)

(assert (= bs!1852449 (and b!6935917 d!2166819)))

(assert (=> bs!1852449 (not (= lambda!394903 lambda!394895))))

(assert (=> bs!1852445 (not (= lambda!394903 lambda!394854))))

(declare-fun bs!1852450 () Bool)

(assert (= bs!1852450 (and b!6935917 b!6935551)))

(assert (=> bs!1852450 (not (= lambda!394903 lambda!394874))))

(declare-fun bs!1852451 () Bool)

(assert (= bs!1852451 (and b!6935917 b!6935737)))

(assert (=> bs!1852451 (= (and (= s!14361 (_1!37115 lt!2474201)) (= (reg!17284 lt!2474204) (reg!17284 r1!6342)) (= lt!2474204 r1!6342)) (= lambda!394903 lambda!394891))))

(declare-fun bs!1852452 () Bool)

(assert (= bs!1852452 (and b!6935917 d!2166843)))

(assert (=> bs!1852452 (not (= lambda!394903 lambda!394900))))

(declare-fun bs!1852453 () Bool)

(assert (= bs!1852453 (and b!6935917 b!6935685)))

(assert (=> bs!1852453 (not (= lambda!394903 lambda!394886))))

(assert (=> bs!1852446 (not (= lambda!394903 lambda!394837))))

(declare-fun bs!1852454 () Bool)

(assert (= bs!1852454 (and b!6935917 b!6935901)))

(assert (=> bs!1852454 (not (= lambda!394903 lambda!394902))))

(assert (=> bs!1852448 (not (= lambda!394903 lambda!394836))))

(declare-fun bs!1852455 () Bool)

(assert (= bs!1852455 (and b!6935917 b!6935556)))

(assert (=> bs!1852455 (= (and (= s!14361 (_2!37115 lt!2474201)) (= (reg!17284 lt!2474204) (reg!17284 lt!2474188)) (= lt!2474204 lt!2474188)) (= lambda!394903 lambda!394872))))

(declare-fun bs!1852456 () Bool)

(assert (= bs!1852456 (and b!6935917 b!6935849)))

(assert (=> bs!1852456 (not (= lambda!394903 lambda!394899))))

(declare-fun bs!1852457 () Bool)

(assert (= bs!1852457 (and b!6935917 b!6935854)))

(assert (=> bs!1852457 (= (and (= s!14361 lt!2474186) (= (reg!17284 lt!2474204) (reg!17284 lt!2474193)) (= lt!2474204 lt!2474193)) (= lambda!394903 lambda!394898))))

(declare-fun bs!1852458 () Bool)

(assert (= bs!1852458 (and b!6935917 b!6935906)))

(assert (=> bs!1852458 (= (and (= (reg!17284 lt!2474204) (reg!17284 lt!2474203)) (= lt!2474204 lt!2474203)) (= lambda!394903 lambda!394901))))

(assert (=> bs!1852447 (not (= lambda!394903 lambda!394896))))

(declare-fun bs!1852459 () Bool)

(assert (= bs!1852459 (and b!6935917 b!6935690)))

(assert (=> bs!1852459 (= (and (= s!14361 (_1!37115 lt!2474189)) (= (reg!17284 lt!2474204) (reg!17284 r2!6280)) (= lt!2474204 r2!6280)) (= lambda!394903 lambda!394884))))

(assert (=> bs!1852449 (not (= lambda!394903 lambda!394894))))

(declare-fun bs!1852460 () Bool)

(assert (= bs!1852460 (and b!6935917 b!6935712)))

(assert (=> bs!1852460 (= (and (= s!14361 (_2!37115 lt!2474189)) (= (reg!17284 lt!2474204) (reg!17284 r3!135)) (= lt!2474204 r3!135)) (= lambda!394903 lambda!394888))))

(assert (=> b!6935917 true))

(assert (=> b!6935917 true))

(declare-fun bs!1852461 () Bool)

(declare-fun b!6935912 () Bool)

(assert (= bs!1852461 (and b!6935912 d!2166813)))

(declare-fun lambda!394904 () Int)

(assert (=> bs!1852461 (not (= lambda!394904 lambda!394893))))

(declare-fun bs!1852462 () Bool)

(assert (= bs!1852462 (and b!6935912 b!6935707)))

(assert (=> bs!1852462 (= (and (= s!14361 (_2!37115 lt!2474189)) (= (regOne!34422 lt!2474204) (regOne!34422 r3!135)) (= (regTwo!34422 lt!2474204) (regTwo!34422 r3!135))) (= lambda!394904 lambda!394889))))

(declare-fun bs!1852463 () Bool)

(assert (= bs!1852463 (and b!6935912 b!6935129)))

(assert (=> bs!1852463 (not (= lambda!394904 lambda!394833))))

(declare-fun bs!1852464 () Bool)

(assert (= bs!1852464 (and b!6935912 b!6935732)))

(assert (=> bs!1852464 (= (and (= s!14361 (_1!37115 lt!2474201)) (= (regOne!34422 lt!2474204) (regOne!34422 r1!6342)) (= (regTwo!34422 lt!2474204) (regTwo!34422 r1!6342))) (= lambda!394904 lambda!394892))))

(declare-fun bs!1852465 () Bool)

(assert (= bs!1852465 (and b!6935912 d!2166757)))

(assert (=> bs!1852465 (not (= lambda!394904 lambda!394881))))

(declare-fun bs!1852466 () Bool)

(assert (= bs!1852466 (and b!6935912 b!6935917)))

(assert (=> bs!1852466 (not (= lambda!394904 lambda!394903))))

(declare-fun bs!1852467 () Bool)

(assert (= bs!1852467 (and b!6935912 d!2166683)))

(assert (=> bs!1852467 (not (= lambda!394904 lambda!394853))))

(declare-fun bs!1852468 () Bool)

(assert (= bs!1852468 (and b!6935912 b!6935107)))

(assert (=> bs!1852468 (= (and (= s!14361 lt!2474186) (= (regOne!34422 lt!2474204) r1!6342) (= (regTwo!34422 lt!2474204) r2!6280)) (= lambda!394904 lambda!394838))))

(declare-fun bs!1852469 () Bool)

(assert (= bs!1852469 (and b!6935912 d!2166837)))

(assert (=> bs!1852469 (= (and (= s!14361 lt!2474186) (= (regOne!34422 lt!2474204) r1!6342) (= (regTwo!34422 lt!2474204) r2!6280)) (= lambda!394904 lambda!394897))))

(assert (=> bs!1852463 (= (and (= (regOne!34422 lt!2474204) r1!6342) (= (regTwo!34422 lt!2474204) lt!2474188)) (= lambda!394904 lambda!394834))))

(declare-fun bs!1852470 () Bool)

(assert (= bs!1852470 (and b!6935912 b!6935127)))

(assert (=> bs!1852470 (not (= lambda!394904 lambda!394835))))

(declare-fun bs!1852471 () Bool)

(assert (= bs!1852471 (and b!6935912 d!2166819)))

(assert (=> bs!1852471 (= (and (= (regOne!34422 lt!2474204) r1!6342) (= (regTwo!34422 lt!2474204) lt!2474188)) (= lambda!394904 lambda!394895))))

(assert (=> bs!1852467 (= (and (= s!14361 (_2!37115 lt!2474201)) (= (regOne!34422 lt!2474204) r2!6280) (= (regTwo!34422 lt!2474204) r3!135)) (= lambda!394904 lambda!394854))))

(declare-fun bs!1852472 () Bool)

(assert (= bs!1852472 (and b!6935912 b!6935551)))

(assert (=> bs!1852472 (= (and (= s!14361 (_2!37115 lt!2474201)) (= (regOne!34422 lt!2474204) (regOne!34422 lt!2474188)) (= (regTwo!34422 lt!2474204) (regTwo!34422 lt!2474188))) (= lambda!394904 lambda!394874))))

(declare-fun bs!1852473 () Bool)

(assert (= bs!1852473 (and b!6935912 b!6935737)))

(assert (=> bs!1852473 (not (= lambda!394904 lambda!394891))))

(declare-fun bs!1852474 () Bool)

(assert (= bs!1852474 (and b!6935912 d!2166843)))

(assert (=> bs!1852474 (not (= lambda!394904 lambda!394900))))

(declare-fun bs!1852475 () Bool)

(assert (= bs!1852475 (and b!6935912 b!6935685)))

(assert (=> bs!1852475 (= (and (= s!14361 (_1!37115 lt!2474189)) (= (regOne!34422 lt!2474204) (regOne!34422 r2!6280)) (= (regTwo!34422 lt!2474204) (regTwo!34422 r2!6280))) (= lambda!394904 lambda!394886))))

(assert (=> bs!1852468 (not (= lambda!394904 lambda!394837))))

(declare-fun bs!1852476 () Bool)

(assert (= bs!1852476 (and b!6935912 b!6935901)))

(assert (=> bs!1852476 (= (and (= (regOne!34422 lt!2474204) (regOne!34422 lt!2474203)) (= (regTwo!34422 lt!2474204) (regTwo!34422 lt!2474203))) (= lambda!394904 lambda!394902))))

(assert (=> bs!1852470 (= (and (= s!14361 (_2!37115 lt!2474201)) (= (regOne!34422 lt!2474204) r2!6280) (= (regTwo!34422 lt!2474204) r3!135)) (= lambda!394904 lambda!394836))))

(declare-fun bs!1852477 () Bool)

(assert (= bs!1852477 (and b!6935912 b!6935556)))

(assert (=> bs!1852477 (not (= lambda!394904 lambda!394872))))

(declare-fun bs!1852478 () Bool)

(assert (= bs!1852478 (and b!6935912 b!6935849)))

(assert (=> bs!1852478 (= (and (= s!14361 lt!2474186) (= (regOne!34422 lt!2474204) (regOne!34422 lt!2474193)) (= (regTwo!34422 lt!2474204) (regTwo!34422 lt!2474193))) (= lambda!394904 lambda!394899))))

(declare-fun bs!1852479 () Bool)

(assert (= bs!1852479 (and b!6935912 b!6935854)))

(assert (=> bs!1852479 (not (= lambda!394904 lambda!394898))))

(declare-fun bs!1852480 () Bool)

(assert (= bs!1852480 (and b!6935912 b!6935906)))

(assert (=> bs!1852480 (not (= lambda!394904 lambda!394901))))

(assert (=> bs!1852469 (not (= lambda!394904 lambda!394896))))

(declare-fun bs!1852481 () Bool)

(assert (= bs!1852481 (and b!6935912 b!6935690)))

(assert (=> bs!1852481 (not (= lambda!394904 lambda!394884))))

(assert (=> bs!1852471 (not (= lambda!394904 lambda!394894))))

(declare-fun bs!1852482 () Bool)

(assert (= bs!1852482 (and b!6935912 b!6935712)))

(assert (=> bs!1852482 (not (= lambda!394904 lambda!394888))))

(assert (=> b!6935912 true))

(assert (=> b!6935912 true))

(declare-fun bm!630203 () Bool)

(declare-fun call!630208 () Bool)

(assert (=> bm!630203 (= call!630208 (isEmpty!38849 s!14361))))

(declare-fun e!4172972 () Bool)

(declare-fun call!630209 () Bool)

(assert (=> b!6935912 (= e!4172972 call!630209)))

(declare-fun b!6935913 () Bool)

(declare-fun e!4172974 () Bool)

(assert (=> b!6935913 (= e!4172974 (matchRSpec!4012 (regTwo!34423 lt!2474204) s!14361))))

(declare-fun b!6935914 () Bool)

(declare-fun e!4172975 () Bool)

(assert (=> b!6935914 (= e!4172975 e!4172974)))

(declare-fun res!2828967 () Bool)

(assert (=> b!6935914 (= res!2828967 (matchRSpec!4012 (regOne!34423 lt!2474204) s!14361))))

(assert (=> b!6935914 (=> res!2828967 e!4172974)))

(declare-fun b!6935915 () Bool)

(declare-fun c!1287136 () Bool)

(assert (=> b!6935915 (= c!1287136 ((_ is Union!16955) lt!2474204))))

(declare-fun e!4172973 () Bool)

(assert (=> b!6935915 (= e!4172973 e!4172975)))

(declare-fun b!6935916 () Bool)

(assert (=> b!6935916 (= e!4172975 e!4172972)))

(declare-fun c!1287138 () Bool)

(assert (=> b!6935916 (= c!1287138 ((_ is Star!16955) lt!2474204))))

(declare-fun e!4172976 () Bool)

(assert (=> b!6935917 (= e!4172976 call!630209)))

(declare-fun bm!630204 () Bool)

(assert (=> bm!630204 (= call!630209 (Exists!3955 (ite c!1287138 lambda!394903 lambda!394904)))))

(declare-fun d!2166861 () Bool)

(declare-fun c!1287137 () Bool)

(assert (=> d!2166861 (= c!1287137 ((_ is EmptyExpr!16955) lt!2474204))))

(declare-fun e!4172977 () Bool)

(assert (=> d!2166861 (= (matchRSpec!4012 lt!2474204 s!14361) e!4172977)))

(declare-fun b!6935918 () Bool)

(assert (=> b!6935918 (= e!4172973 (= s!14361 (Cons!66584 (c!1286963 lt!2474204) Nil!66584)))))

(declare-fun b!6935919 () Bool)

(assert (=> b!6935919 (= e!4172977 call!630208)))

(declare-fun b!6935920 () Bool)

(declare-fun c!1287139 () Bool)

(assert (=> b!6935920 (= c!1287139 ((_ is ElementMatch!16955) lt!2474204))))

(declare-fun e!4172978 () Bool)

(assert (=> b!6935920 (= e!4172978 e!4172973)))

(declare-fun b!6935921 () Bool)

(declare-fun res!2828968 () Bool)

(assert (=> b!6935921 (=> res!2828968 e!4172976)))

(assert (=> b!6935921 (= res!2828968 call!630208)))

(assert (=> b!6935921 (= e!4172972 e!4172976)))

(declare-fun b!6935922 () Bool)

(assert (=> b!6935922 (= e!4172977 e!4172978)))

(declare-fun res!2828966 () Bool)

(assert (=> b!6935922 (= res!2828966 (not ((_ is EmptyLang!16955) lt!2474204)))))

(assert (=> b!6935922 (=> (not res!2828966) (not e!4172978))))

(assert (= (and d!2166861 c!1287137) b!6935919))

(assert (= (and d!2166861 (not c!1287137)) b!6935922))

(assert (= (and b!6935922 res!2828966) b!6935920))

(assert (= (and b!6935920 c!1287139) b!6935918))

(assert (= (and b!6935920 (not c!1287139)) b!6935915))

(assert (= (and b!6935915 c!1287136) b!6935914))

(assert (= (and b!6935915 (not c!1287136)) b!6935916))

(assert (= (and b!6935914 (not res!2828967)) b!6935913))

(assert (= (and b!6935916 c!1287138) b!6935921))

(assert (= (and b!6935916 (not c!1287138)) b!6935912))

(assert (= (and b!6935921 (not res!2828968)) b!6935917))

(assert (= (or b!6935917 b!6935912) bm!630204))

(assert (= (or b!6935919 b!6935921) bm!630203))

(assert (=> bm!630203 m!7641928))

(declare-fun m!7641940 () Bool)

(assert (=> b!6935913 m!7641940))

(declare-fun m!7641942 () Bool)

(assert (=> b!6935914 m!7641942))

(declare-fun m!7641944 () Bool)

(assert (=> bm!630204 m!7641944))

(assert (=> b!6935109 d!2166861))

(declare-fun b!6935923 () Bool)

(declare-fun e!4172981 () Bool)

(assert (=> b!6935923 (= e!4172981 (= (head!13902 s!14361) (c!1286963 lt!2474204)))))

(declare-fun b!6935924 () Bool)

(declare-fun res!2828975 () Bool)

(assert (=> b!6935924 (=> (not res!2828975) (not e!4172981))))

(declare-fun call!630210 () Bool)

(assert (=> b!6935924 (= res!2828975 (not call!630210))))

(declare-fun b!6935925 () Bool)

(declare-fun e!4172983 () Bool)

(declare-fun e!4172979 () Bool)

(assert (=> b!6935925 (= e!4172983 e!4172979)))

(declare-fun c!1287141 () Bool)

(assert (=> b!6935925 (= c!1287141 ((_ is EmptyLang!16955) lt!2474204))))

(declare-fun b!6935926 () Bool)

(declare-fun lt!2474321 () Bool)

(assert (=> b!6935926 (= e!4172979 (not lt!2474321))))

(declare-fun b!6935927 () Bool)

(declare-fun res!2828976 () Bool)

(declare-fun e!4172985 () Bool)

(assert (=> b!6935927 (=> res!2828976 e!4172985)))

(assert (=> b!6935927 (= res!2828976 e!4172981)))

(declare-fun res!2828973 () Bool)

(assert (=> b!6935927 (=> (not res!2828973) (not e!4172981))))

(assert (=> b!6935927 (= res!2828973 lt!2474321)))

(declare-fun b!6935928 () Bool)

(declare-fun res!2828974 () Bool)

(assert (=> b!6935928 (=> (not res!2828974) (not e!4172981))))

(assert (=> b!6935928 (= res!2828974 (isEmpty!38849 (tail!12954 s!14361)))))

(declare-fun b!6935929 () Bool)

(assert (=> b!6935929 (= e!4172983 (= lt!2474321 call!630210))))

(declare-fun b!6935930 () Bool)

(declare-fun e!4172982 () Bool)

(assert (=> b!6935930 (= e!4172982 (nullable!6774 lt!2474204))))

(declare-fun b!6935931 () Bool)

(assert (=> b!6935931 (= e!4172982 (matchR!9094 (derivativeStep!5449 lt!2474204 (head!13902 s!14361)) (tail!12954 s!14361)))))

(declare-fun b!6935932 () Bool)

(declare-fun e!4172980 () Bool)

(assert (=> b!6935932 (= e!4172985 e!4172980)))

(declare-fun res!2828972 () Bool)

(assert (=> b!6935932 (=> (not res!2828972) (not e!4172980))))

(assert (=> b!6935932 (= res!2828972 (not lt!2474321))))

(declare-fun b!6935933 () Bool)

(declare-fun e!4172984 () Bool)

(assert (=> b!6935933 (= e!4172980 e!4172984)))

(declare-fun res!2828969 () Bool)

(assert (=> b!6935933 (=> res!2828969 e!4172984)))

(assert (=> b!6935933 (= res!2828969 call!630210)))

(declare-fun b!6935934 () Bool)

(declare-fun res!2828971 () Bool)

(assert (=> b!6935934 (=> res!2828971 e!4172985)))

(assert (=> b!6935934 (= res!2828971 (not ((_ is ElementMatch!16955) lt!2474204)))))

(assert (=> b!6935934 (= e!4172979 e!4172985)))

(declare-fun b!6935935 () Bool)

(assert (=> b!6935935 (= e!4172984 (not (= (head!13902 s!14361) (c!1286963 lt!2474204))))))

(declare-fun b!6935936 () Bool)

(declare-fun res!2828970 () Bool)

(assert (=> b!6935936 (=> res!2828970 e!4172984)))

(assert (=> b!6935936 (= res!2828970 (not (isEmpty!38849 (tail!12954 s!14361))))))

(declare-fun bm!630205 () Bool)

(assert (=> bm!630205 (= call!630210 (isEmpty!38849 s!14361))))

(declare-fun d!2166863 () Bool)

(assert (=> d!2166863 e!4172983))

(declare-fun c!1287140 () Bool)

(assert (=> d!2166863 (= c!1287140 ((_ is EmptyExpr!16955) lt!2474204))))

(assert (=> d!2166863 (= lt!2474321 e!4172982)))

(declare-fun c!1287142 () Bool)

(assert (=> d!2166863 (= c!1287142 (isEmpty!38849 s!14361))))

(assert (=> d!2166863 (validRegex!8661 lt!2474204)))

(assert (=> d!2166863 (= (matchR!9094 lt!2474204 s!14361) lt!2474321)))

(assert (= (and d!2166863 c!1287142) b!6935930))

(assert (= (and d!2166863 (not c!1287142)) b!6935931))

(assert (= (and d!2166863 c!1287140) b!6935929))

(assert (= (and d!2166863 (not c!1287140)) b!6935925))

(assert (= (and b!6935925 c!1287141) b!6935926))

(assert (= (and b!6935925 (not c!1287141)) b!6935934))

(assert (= (and b!6935934 (not res!2828971)) b!6935927))

(assert (= (and b!6935927 res!2828973) b!6935924))

(assert (= (and b!6935924 res!2828975) b!6935928))

(assert (= (and b!6935928 res!2828974) b!6935923))

(assert (= (and b!6935927 (not res!2828976)) b!6935932))

(assert (= (and b!6935932 res!2828972) b!6935933))

(assert (= (and b!6935933 (not res!2828969)) b!6935936))

(assert (= (and b!6935936 (not res!2828970)) b!6935935))

(assert (= (or b!6935929 b!6935924 b!6935933) bm!630205))

(declare-fun m!7641946 () Bool)

(assert (=> b!6935930 m!7641946))

(declare-fun m!7641948 () Bool)

(assert (=> b!6935923 m!7641948))

(assert (=> bm!630205 m!7641928))

(declare-fun m!7641950 () Bool)

(assert (=> b!6935936 m!7641950))

(assert (=> b!6935936 m!7641950))

(declare-fun m!7641952 () Bool)

(assert (=> b!6935936 m!7641952))

(assert (=> b!6935931 m!7641948))

(assert (=> b!6935931 m!7641948))

(declare-fun m!7641954 () Bool)

(assert (=> b!6935931 m!7641954))

(assert (=> b!6935931 m!7641950))

(assert (=> b!6935931 m!7641954))

(assert (=> b!6935931 m!7641950))

(declare-fun m!7641956 () Bool)

(assert (=> b!6935931 m!7641956))

(assert (=> d!2166863 m!7641928))

(assert (=> d!2166863 m!7641938))

(assert (=> b!6935928 m!7641950))

(assert (=> b!6935928 m!7641950))

(assert (=> b!6935928 m!7641952))

(assert (=> b!6935935 m!7641948))

(assert (=> b!6935109 d!2166863))

(declare-fun d!2166865 () Bool)

(assert (=> d!2166865 (= (matchR!9094 lt!2474203 s!14361) (matchRSpec!4012 lt!2474203 s!14361))))

(declare-fun lt!2474322 () Unit!160634)

(assert (=> d!2166865 (= lt!2474322 (choose!51661 lt!2474203 s!14361))))

(assert (=> d!2166865 (validRegex!8661 lt!2474203)))

(assert (=> d!2166865 (= (mainMatchTheorem!4012 lt!2474203 s!14361) lt!2474322)))

(declare-fun bs!1852483 () Bool)

(assert (= bs!1852483 d!2166865))

(assert (=> bs!1852483 m!7641244))

(assert (=> bs!1852483 m!7641236))

(declare-fun m!7641958 () Bool)

(assert (=> bs!1852483 m!7641958))

(declare-fun m!7641960 () Bool)

(assert (=> bs!1852483 m!7641960))

(assert (=> b!6935109 d!2166865))

(declare-fun b!6935937 () Bool)

(declare-fun e!4172988 () Bool)

(assert (=> b!6935937 (= e!4172988 (= (head!13902 s!14361) (c!1286963 lt!2474203)))))

(declare-fun b!6935938 () Bool)

(declare-fun res!2828983 () Bool)

(assert (=> b!6935938 (=> (not res!2828983) (not e!4172988))))

(declare-fun call!630211 () Bool)

(assert (=> b!6935938 (= res!2828983 (not call!630211))))

(declare-fun b!6935939 () Bool)

(declare-fun e!4172990 () Bool)

(declare-fun e!4172986 () Bool)

(assert (=> b!6935939 (= e!4172990 e!4172986)))

(declare-fun c!1287144 () Bool)

(assert (=> b!6935939 (= c!1287144 ((_ is EmptyLang!16955) lt!2474203))))

(declare-fun b!6935940 () Bool)

(declare-fun lt!2474323 () Bool)

(assert (=> b!6935940 (= e!4172986 (not lt!2474323))))

(declare-fun b!6935941 () Bool)

(declare-fun res!2828984 () Bool)

(declare-fun e!4172992 () Bool)

(assert (=> b!6935941 (=> res!2828984 e!4172992)))

(assert (=> b!6935941 (= res!2828984 e!4172988)))

(declare-fun res!2828981 () Bool)

(assert (=> b!6935941 (=> (not res!2828981) (not e!4172988))))

(assert (=> b!6935941 (= res!2828981 lt!2474323)))

(declare-fun b!6935942 () Bool)

(declare-fun res!2828982 () Bool)

(assert (=> b!6935942 (=> (not res!2828982) (not e!4172988))))

(assert (=> b!6935942 (= res!2828982 (isEmpty!38849 (tail!12954 s!14361)))))

(declare-fun b!6935943 () Bool)

(assert (=> b!6935943 (= e!4172990 (= lt!2474323 call!630211))))

(declare-fun b!6935944 () Bool)

(declare-fun e!4172989 () Bool)

(assert (=> b!6935944 (= e!4172989 (nullable!6774 lt!2474203))))

(declare-fun b!6935945 () Bool)

(assert (=> b!6935945 (= e!4172989 (matchR!9094 (derivativeStep!5449 lt!2474203 (head!13902 s!14361)) (tail!12954 s!14361)))))

(declare-fun b!6935946 () Bool)

(declare-fun e!4172987 () Bool)

(assert (=> b!6935946 (= e!4172992 e!4172987)))

(declare-fun res!2828980 () Bool)

(assert (=> b!6935946 (=> (not res!2828980) (not e!4172987))))

(assert (=> b!6935946 (= res!2828980 (not lt!2474323))))

(declare-fun b!6935947 () Bool)

(declare-fun e!4172991 () Bool)

(assert (=> b!6935947 (= e!4172987 e!4172991)))

(declare-fun res!2828977 () Bool)

(assert (=> b!6935947 (=> res!2828977 e!4172991)))

(assert (=> b!6935947 (= res!2828977 call!630211)))

(declare-fun b!6935948 () Bool)

(declare-fun res!2828979 () Bool)

(assert (=> b!6935948 (=> res!2828979 e!4172992)))

(assert (=> b!6935948 (= res!2828979 (not ((_ is ElementMatch!16955) lt!2474203)))))

(assert (=> b!6935948 (= e!4172986 e!4172992)))

(declare-fun b!6935949 () Bool)

(assert (=> b!6935949 (= e!4172991 (not (= (head!13902 s!14361) (c!1286963 lt!2474203))))))

(declare-fun b!6935950 () Bool)

(declare-fun res!2828978 () Bool)

(assert (=> b!6935950 (=> res!2828978 e!4172991)))

(assert (=> b!6935950 (= res!2828978 (not (isEmpty!38849 (tail!12954 s!14361))))))

(declare-fun bm!630206 () Bool)

(assert (=> bm!630206 (= call!630211 (isEmpty!38849 s!14361))))

(declare-fun d!2166867 () Bool)

(assert (=> d!2166867 e!4172990))

(declare-fun c!1287143 () Bool)

(assert (=> d!2166867 (= c!1287143 ((_ is EmptyExpr!16955) lt!2474203))))

(assert (=> d!2166867 (= lt!2474323 e!4172989)))

(declare-fun c!1287145 () Bool)

(assert (=> d!2166867 (= c!1287145 (isEmpty!38849 s!14361))))

(assert (=> d!2166867 (validRegex!8661 lt!2474203)))

(assert (=> d!2166867 (= (matchR!9094 lt!2474203 s!14361) lt!2474323)))

(assert (= (and d!2166867 c!1287145) b!6935944))

(assert (= (and d!2166867 (not c!1287145)) b!6935945))

(assert (= (and d!2166867 c!1287143) b!6935943))

(assert (= (and d!2166867 (not c!1287143)) b!6935939))

(assert (= (and b!6935939 c!1287144) b!6935940))

(assert (= (and b!6935939 (not c!1287144)) b!6935948))

(assert (= (and b!6935948 (not res!2828979)) b!6935941))

(assert (= (and b!6935941 res!2828981) b!6935938))

(assert (= (and b!6935938 res!2828983) b!6935942))

(assert (= (and b!6935942 res!2828982) b!6935937))

(assert (= (and b!6935941 (not res!2828984)) b!6935946))

(assert (= (and b!6935946 res!2828980) b!6935947))

(assert (= (and b!6935947 (not res!2828977)) b!6935950))

(assert (= (and b!6935950 (not res!2828978)) b!6935949))

(assert (= (or b!6935943 b!6935938 b!6935947) bm!630206))

(declare-fun m!7641962 () Bool)

(assert (=> b!6935944 m!7641962))

(assert (=> b!6935937 m!7641948))

(assert (=> bm!630206 m!7641928))

(assert (=> b!6935950 m!7641950))

(assert (=> b!6935950 m!7641950))

(assert (=> b!6935950 m!7641952))

(assert (=> b!6935945 m!7641948))

(assert (=> b!6935945 m!7641948))

(declare-fun m!7641964 () Bool)

(assert (=> b!6935945 m!7641964))

(assert (=> b!6935945 m!7641950))

(assert (=> b!6935945 m!7641964))

(assert (=> b!6935945 m!7641950))

(declare-fun m!7641966 () Bool)

(assert (=> b!6935945 m!7641966))

(assert (=> d!2166867 m!7641928))

(assert (=> d!2166867 m!7641960))

(assert (=> b!6935942 m!7641950))

(assert (=> b!6935942 m!7641950))

(assert (=> b!6935942 m!7641952))

(assert (=> b!6935949 m!7641948))

(assert (=> b!6935109 d!2166867))

(declare-fun b!6935961 () Bool)

(declare-fun e!4172995 () Bool)

(assert (=> b!6935961 (= e!4172995 tp_is_empty!43135)))

(assert (=> b!6935108 (= tp!1911819 e!4172995)))

(declare-fun b!6935963 () Bool)

(declare-fun tp!1911930 () Bool)

(assert (=> b!6935963 (= e!4172995 tp!1911930)))

(declare-fun b!6935964 () Bool)

(declare-fun tp!1911927 () Bool)

(declare-fun tp!1911926 () Bool)

(assert (=> b!6935964 (= e!4172995 (and tp!1911927 tp!1911926))))

(declare-fun b!6935962 () Bool)

(declare-fun tp!1911928 () Bool)

(declare-fun tp!1911929 () Bool)

(assert (=> b!6935962 (= e!4172995 (and tp!1911928 tp!1911929))))

(assert (= (and b!6935108 ((_ is ElementMatch!16955) (reg!17284 r3!135))) b!6935961))

(assert (= (and b!6935108 ((_ is Concat!25800) (reg!17284 r3!135))) b!6935962))

(assert (= (and b!6935108 ((_ is Star!16955) (reg!17284 r3!135))) b!6935963))

(assert (= (and b!6935108 ((_ is Union!16955) (reg!17284 r3!135))) b!6935964))

(declare-fun b!6935965 () Bool)

(declare-fun e!4172996 () Bool)

(assert (=> b!6935965 (= e!4172996 tp_is_empty!43135)))

(assert (=> b!6935119 (= tp!1911816 e!4172996)))

(declare-fun b!6935967 () Bool)

(declare-fun tp!1911935 () Bool)

(assert (=> b!6935967 (= e!4172996 tp!1911935)))

(declare-fun b!6935968 () Bool)

(declare-fun tp!1911932 () Bool)

(declare-fun tp!1911931 () Bool)

(assert (=> b!6935968 (= e!4172996 (and tp!1911932 tp!1911931))))

(declare-fun b!6935966 () Bool)

(declare-fun tp!1911933 () Bool)

(declare-fun tp!1911934 () Bool)

(assert (=> b!6935966 (= e!4172996 (and tp!1911933 tp!1911934))))

(assert (= (and b!6935119 ((_ is ElementMatch!16955) (regOne!34422 r2!6280))) b!6935965))

(assert (= (and b!6935119 ((_ is Concat!25800) (regOne!34422 r2!6280))) b!6935966))

(assert (= (and b!6935119 ((_ is Star!16955) (regOne!34422 r2!6280))) b!6935967))

(assert (= (and b!6935119 ((_ is Union!16955) (regOne!34422 r2!6280))) b!6935968))

(declare-fun b!6935969 () Bool)

(declare-fun e!4172997 () Bool)

(assert (=> b!6935969 (= e!4172997 tp_is_empty!43135)))

(assert (=> b!6935119 (= tp!1911827 e!4172997)))

(declare-fun b!6935971 () Bool)

(declare-fun tp!1911940 () Bool)

(assert (=> b!6935971 (= e!4172997 tp!1911940)))

(declare-fun b!6935972 () Bool)

(declare-fun tp!1911937 () Bool)

(declare-fun tp!1911936 () Bool)

(assert (=> b!6935972 (= e!4172997 (and tp!1911937 tp!1911936))))

(declare-fun b!6935970 () Bool)

(declare-fun tp!1911938 () Bool)

(declare-fun tp!1911939 () Bool)

(assert (=> b!6935970 (= e!4172997 (and tp!1911938 tp!1911939))))

(assert (= (and b!6935119 ((_ is ElementMatch!16955) (regTwo!34422 r2!6280))) b!6935969))

(assert (= (and b!6935119 ((_ is Concat!25800) (regTwo!34422 r2!6280))) b!6935970))

(assert (= (and b!6935119 ((_ is Star!16955) (regTwo!34422 r2!6280))) b!6935971))

(assert (= (and b!6935119 ((_ is Union!16955) (regTwo!34422 r2!6280))) b!6935972))

(declare-fun b!6935973 () Bool)

(declare-fun e!4172998 () Bool)

(assert (=> b!6935973 (= e!4172998 tp_is_empty!43135)))

(assert (=> b!6935128 (= tp!1911822 e!4172998)))

(declare-fun b!6935975 () Bool)

(declare-fun tp!1911945 () Bool)

(assert (=> b!6935975 (= e!4172998 tp!1911945)))

(declare-fun b!6935976 () Bool)

(declare-fun tp!1911942 () Bool)

(declare-fun tp!1911941 () Bool)

(assert (=> b!6935976 (= e!4172998 (and tp!1911942 tp!1911941))))

(declare-fun b!6935974 () Bool)

(declare-fun tp!1911943 () Bool)

(declare-fun tp!1911944 () Bool)

(assert (=> b!6935974 (= e!4172998 (and tp!1911943 tp!1911944))))

(assert (= (and b!6935128 ((_ is ElementMatch!16955) (reg!17284 r1!6342))) b!6935973))

(assert (= (and b!6935128 ((_ is Concat!25800) (reg!17284 r1!6342))) b!6935974))

(assert (= (and b!6935128 ((_ is Star!16955) (reg!17284 r1!6342))) b!6935975))

(assert (= (and b!6935128 ((_ is Union!16955) (reg!17284 r1!6342))) b!6935976))

(declare-fun b!6935977 () Bool)

(declare-fun e!4172999 () Bool)

(assert (=> b!6935977 (= e!4172999 tp_is_empty!43135)))

(assert (=> b!6935112 (= tp!1911824 e!4172999)))

(declare-fun b!6935979 () Bool)

(declare-fun tp!1911950 () Bool)

(assert (=> b!6935979 (= e!4172999 tp!1911950)))

(declare-fun b!6935980 () Bool)

(declare-fun tp!1911947 () Bool)

(declare-fun tp!1911946 () Bool)

(assert (=> b!6935980 (= e!4172999 (and tp!1911947 tp!1911946))))

(declare-fun b!6935978 () Bool)

(declare-fun tp!1911948 () Bool)

(declare-fun tp!1911949 () Bool)

(assert (=> b!6935978 (= e!4172999 (and tp!1911948 tp!1911949))))

(assert (= (and b!6935112 ((_ is ElementMatch!16955) (regOne!34423 r3!135))) b!6935977))

(assert (= (and b!6935112 ((_ is Concat!25800) (regOne!34423 r3!135))) b!6935978))

(assert (= (and b!6935112 ((_ is Star!16955) (regOne!34423 r3!135))) b!6935979))

(assert (= (and b!6935112 ((_ is Union!16955) (regOne!34423 r3!135))) b!6935980))

(declare-fun b!6935981 () Bool)

(declare-fun e!4173000 () Bool)

(assert (=> b!6935981 (= e!4173000 tp_is_empty!43135)))

(assert (=> b!6935112 (= tp!1911826 e!4173000)))

(declare-fun b!6935983 () Bool)

(declare-fun tp!1911955 () Bool)

(assert (=> b!6935983 (= e!4173000 tp!1911955)))

(declare-fun b!6935984 () Bool)

(declare-fun tp!1911952 () Bool)

(declare-fun tp!1911951 () Bool)

(assert (=> b!6935984 (= e!4173000 (and tp!1911952 tp!1911951))))

(declare-fun b!6935982 () Bool)

(declare-fun tp!1911953 () Bool)

(declare-fun tp!1911954 () Bool)

(assert (=> b!6935982 (= e!4173000 (and tp!1911953 tp!1911954))))

(assert (= (and b!6935112 ((_ is ElementMatch!16955) (regTwo!34423 r3!135))) b!6935981))

(assert (= (and b!6935112 ((_ is Concat!25800) (regTwo!34423 r3!135))) b!6935982))

(assert (= (and b!6935112 ((_ is Star!16955) (regTwo!34423 r3!135))) b!6935983))

(assert (= (and b!6935112 ((_ is Union!16955) (regTwo!34423 r3!135))) b!6935984))

(declare-fun b!6935985 () Bool)

(declare-fun e!4173001 () Bool)

(assert (=> b!6935985 (= e!4173001 tp_is_empty!43135)))

(assert (=> b!6935106 (= tp!1911814 e!4173001)))

(declare-fun b!6935987 () Bool)

(declare-fun tp!1911960 () Bool)

(assert (=> b!6935987 (= e!4173001 tp!1911960)))

(declare-fun b!6935988 () Bool)

(declare-fun tp!1911957 () Bool)

(declare-fun tp!1911956 () Bool)

(assert (=> b!6935988 (= e!4173001 (and tp!1911957 tp!1911956))))

(declare-fun b!6935986 () Bool)

(declare-fun tp!1911958 () Bool)

(declare-fun tp!1911959 () Bool)

(assert (=> b!6935986 (= e!4173001 (and tp!1911958 tp!1911959))))

(assert (= (and b!6935106 ((_ is ElementMatch!16955) (regOne!34422 r1!6342))) b!6935985))

(assert (= (and b!6935106 ((_ is Concat!25800) (regOne!34422 r1!6342))) b!6935986))

(assert (= (and b!6935106 ((_ is Star!16955) (regOne!34422 r1!6342))) b!6935987))

(assert (= (and b!6935106 ((_ is Union!16955) (regOne!34422 r1!6342))) b!6935988))

(declare-fun b!6935989 () Bool)

(declare-fun e!4173002 () Bool)

(assert (=> b!6935989 (= e!4173002 tp_is_empty!43135)))

(assert (=> b!6935106 (= tp!1911812 e!4173002)))

(declare-fun b!6935991 () Bool)

(declare-fun tp!1911965 () Bool)

(assert (=> b!6935991 (= e!4173002 tp!1911965)))

(declare-fun b!6935992 () Bool)

(declare-fun tp!1911962 () Bool)

(declare-fun tp!1911961 () Bool)

(assert (=> b!6935992 (= e!4173002 (and tp!1911962 tp!1911961))))

(declare-fun b!6935990 () Bool)

(declare-fun tp!1911963 () Bool)

(declare-fun tp!1911964 () Bool)

(assert (=> b!6935990 (= e!4173002 (and tp!1911963 tp!1911964))))

(assert (= (and b!6935106 ((_ is ElementMatch!16955) (regTwo!34422 r1!6342))) b!6935989))

(assert (= (and b!6935106 ((_ is Concat!25800) (regTwo!34422 r1!6342))) b!6935990))

(assert (= (and b!6935106 ((_ is Star!16955) (regTwo!34422 r1!6342))) b!6935991))

(assert (= (and b!6935106 ((_ is Union!16955) (regTwo!34422 r1!6342))) b!6935992))

(declare-fun b!6935993 () Bool)

(declare-fun e!4173003 () Bool)

(assert (=> b!6935993 (= e!4173003 tp_is_empty!43135)))

(assert (=> b!6935116 (= tp!1911823 e!4173003)))

(declare-fun b!6935995 () Bool)

(declare-fun tp!1911970 () Bool)

(assert (=> b!6935995 (= e!4173003 tp!1911970)))

(declare-fun b!6935996 () Bool)

(declare-fun tp!1911967 () Bool)

(declare-fun tp!1911966 () Bool)

(assert (=> b!6935996 (= e!4173003 (and tp!1911967 tp!1911966))))

(declare-fun b!6935994 () Bool)

(declare-fun tp!1911968 () Bool)

(declare-fun tp!1911969 () Bool)

(assert (=> b!6935994 (= e!4173003 (and tp!1911968 tp!1911969))))

(assert (= (and b!6935116 ((_ is ElementMatch!16955) (reg!17284 r2!6280))) b!6935993))

(assert (= (and b!6935116 ((_ is Concat!25800) (reg!17284 r2!6280))) b!6935994))

(assert (= (and b!6935116 ((_ is Star!16955) (reg!17284 r2!6280))) b!6935995))

(assert (= (and b!6935116 ((_ is Union!16955) (reg!17284 r2!6280))) b!6935996))

(declare-fun b!6935997 () Bool)

(declare-fun e!4173004 () Bool)

(assert (=> b!6935997 (= e!4173004 tp_is_empty!43135)))

(assert (=> b!6935110 (= tp!1911825 e!4173004)))

(declare-fun b!6935999 () Bool)

(declare-fun tp!1911975 () Bool)

(assert (=> b!6935999 (= e!4173004 tp!1911975)))

(declare-fun b!6936000 () Bool)

(declare-fun tp!1911972 () Bool)

(declare-fun tp!1911971 () Bool)

(assert (=> b!6936000 (= e!4173004 (and tp!1911972 tp!1911971))))

(declare-fun b!6935998 () Bool)

(declare-fun tp!1911973 () Bool)

(declare-fun tp!1911974 () Bool)

(assert (=> b!6935998 (= e!4173004 (and tp!1911973 tp!1911974))))

(assert (= (and b!6935110 ((_ is ElementMatch!16955) (regOne!34423 r2!6280))) b!6935997))

(assert (= (and b!6935110 ((_ is Concat!25800) (regOne!34423 r2!6280))) b!6935998))

(assert (= (and b!6935110 ((_ is Star!16955) (regOne!34423 r2!6280))) b!6935999))

(assert (= (and b!6935110 ((_ is Union!16955) (regOne!34423 r2!6280))) b!6936000))

(declare-fun b!6936001 () Bool)

(declare-fun e!4173005 () Bool)

(assert (=> b!6936001 (= e!4173005 tp_is_empty!43135)))

(assert (=> b!6935110 (= tp!1911815 e!4173005)))

(declare-fun b!6936003 () Bool)

(declare-fun tp!1911980 () Bool)

(assert (=> b!6936003 (= e!4173005 tp!1911980)))

(declare-fun b!6936004 () Bool)

(declare-fun tp!1911977 () Bool)

(declare-fun tp!1911976 () Bool)

(assert (=> b!6936004 (= e!4173005 (and tp!1911977 tp!1911976))))

(declare-fun b!6936002 () Bool)

(declare-fun tp!1911978 () Bool)

(declare-fun tp!1911979 () Bool)

(assert (=> b!6936002 (= e!4173005 (and tp!1911978 tp!1911979))))

(assert (= (and b!6935110 ((_ is ElementMatch!16955) (regTwo!34423 r2!6280))) b!6936001))

(assert (= (and b!6935110 ((_ is Concat!25800) (regTwo!34423 r2!6280))) b!6936002))

(assert (= (and b!6935110 ((_ is Star!16955) (regTwo!34423 r2!6280))) b!6936003))

(assert (= (and b!6935110 ((_ is Union!16955) (regTwo!34423 r2!6280))) b!6936004))

(declare-fun b!6936009 () Bool)

(declare-fun e!4173008 () Bool)

(declare-fun tp!1911983 () Bool)

(assert (=> b!6936009 (= e!4173008 (and tp_is_empty!43135 tp!1911983))))

(assert (=> b!6935120 (= tp!1911818 e!4173008)))

(assert (= (and b!6935120 ((_ is Cons!66584) (t!380451 s!14361))) b!6936009))

(declare-fun b!6936010 () Bool)

(declare-fun e!4173009 () Bool)

(assert (=> b!6936010 (= e!4173009 tp_is_empty!43135)))

(assert (=> b!6935115 (= tp!1911820 e!4173009)))

(declare-fun b!6936012 () Bool)

(declare-fun tp!1911988 () Bool)

(assert (=> b!6936012 (= e!4173009 tp!1911988)))

(declare-fun b!6936013 () Bool)

(declare-fun tp!1911985 () Bool)

(declare-fun tp!1911984 () Bool)

(assert (=> b!6936013 (= e!4173009 (and tp!1911985 tp!1911984))))

(declare-fun b!6936011 () Bool)

(declare-fun tp!1911986 () Bool)

(declare-fun tp!1911987 () Bool)

(assert (=> b!6936011 (= e!4173009 (and tp!1911986 tp!1911987))))

(assert (= (and b!6935115 ((_ is ElementMatch!16955) (regOne!34423 r1!6342))) b!6936010))

(assert (= (and b!6935115 ((_ is Concat!25800) (regOne!34423 r1!6342))) b!6936011))

(assert (= (and b!6935115 ((_ is Star!16955) (regOne!34423 r1!6342))) b!6936012))

(assert (= (and b!6935115 ((_ is Union!16955) (regOne!34423 r1!6342))) b!6936013))

(declare-fun b!6936014 () Bool)

(declare-fun e!4173010 () Bool)

(assert (=> b!6936014 (= e!4173010 tp_is_empty!43135)))

(assert (=> b!6935115 (= tp!1911821 e!4173010)))

(declare-fun b!6936016 () Bool)

(declare-fun tp!1911993 () Bool)

(assert (=> b!6936016 (= e!4173010 tp!1911993)))

(declare-fun b!6936017 () Bool)

(declare-fun tp!1911990 () Bool)

(declare-fun tp!1911989 () Bool)

(assert (=> b!6936017 (= e!4173010 (and tp!1911990 tp!1911989))))

(declare-fun b!6936015 () Bool)

(declare-fun tp!1911991 () Bool)

(declare-fun tp!1911992 () Bool)

(assert (=> b!6936015 (= e!4173010 (and tp!1911991 tp!1911992))))

(assert (= (and b!6935115 ((_ is ElementMatch!16955) (regTwo!34423 r1!6342))) b!6936014))

(assert (= (and b!6935115 ((_ is Concat!25800) (regTwo!34423 r1!6342))) b!6936015))

(assert (= (and b!6935115 ((_ is Star!16955) (regTwo!34423 r1!6342))) b!6936016))

(assert (= (and b!6935115 ((_ is Union!16955) (regTwo!34423 r1!6342))) b!6936017))

(declare-fun b!6936018 () Bool)

(declare-fun e!4173011 () Bool)

(assert (=> b!6936018 (= e!4173011 tp_is_empty!43135)))

(assert (=> b!6935114 (= tp!1911817 e!4173011)))

(declare-fun b!6936020 () Bool)

(declare-fun tp!1911998 () Bool)

(assert (=> b!6936020 (= e!4173011 tp!1911998)))

(declare-fun b!6936021 () Bool)

(declare-fun tp!1911995 () Bool)

(declare-fun tp!1911994 () Bool)

(assert (=> b!6936021 (= e!4173011 (and tp!1911995 tp!1911994))))

(declare-fun b!6936019 () Bool)

(declare-fun tp!1911996 () Bool)

(declare-fun tp!1911997 () Bool)

(assert (=> b!6936019 (= e!4173011 (and tp!1911996 tp!1911997))))

(assert (= (and b!6935114 ((_ is ElementMatch!16955) (regOne!34422 r3!135))) b!6936018))

(assert (= (and b!6935114 ((_ is Concat!25800) (regOne!34422 r3!135))) b!6936019))

(assert (= (and b!6935114 ((_ is Star!16955) (regOne!34422 r3!135))) b!6936020))

(assert (= (and b!6935114 ((_ is Union!16955) (regOne!34422 r3!135))) b!6936021))

(declare-fun b!6936022 () Bool)

(declare-fun e!4173012 () Bool)

(assert (=> b!6936022 (= e!4173012 tp_is_empty!43135)))

(assert (=> b!6935114 (= tp!1911813 e!4173012)))

(declare-fun b!6936024 () Bool)

(declare-fun tp!1912003 () Bool)

(assert (=> b!6936024 (= e!4173012 tp!1912003)))

(declare-fun b!6936025 () Bool)

(declare-fun tp!1912000 () Bool)

(declare-fun tp!1911999 () Bool)

(assert (=> b!6936025 (= e!4173012 (and tp!1912000 tp!1911999))))

(declare-fun b!6936023 () Bool)

(declare-fun tp!1912001 () Bool)

(declare-fun tp!1912002 () Bool)

(assert (=> b!6936023 (= e!4173012 (and tp!1912001 tp!1912002))))

(assert (= (and b!6935114 ((_ is ElementMatch!16955) (regTwo!34422 r3!135))) b!6936022))

(assert (= (and b!6935114 ((_ is Concat!25800) (regTwo!34422 r3!135))) b!6936023))

(assert (= (and b!6935114 ((_ is Star!16955) (regTwo!34422 r3!135))) b!6936024))

(assert (= (and b!6935114 ((_ is Union!16955) (regTwo!34422 r3!135))) b!6936025))

(check-sat (not b!6935928) (not bm!630191) (not b!6935189) (not b!6935678) (not b!6935975) (not b!6935872) (not b!6936000) (not bm!630178) (not b!6935393) (not d!2166773) (not bm!630186) (not b!6935265) (not b!6935820) (not b!6935923) (not d!2166707) (not d!2166801) (not b!6935399) (not b!6935986) (not b!6935963) (not b!6935980) (not d!2166827) (not b!6935990) (not b!6935998) (not d!2166865) (not d!2166805) (not b!6935731) (not b!6935683) (not b!6935417) (not d!2166831) (not b!6935944) (not b!6935850) (not b!6935984) (not b!6935553) (not b!6935875) (not b!6935974) (not b!6935968) (not d!2166839) (not b!6935723) (not d!2166833) (not b!6936003) (not bm!630206) (not bm!630167) (not b!6936009) (not d!2166837) (not bm!630183) (not bm!630204) (not d!2166793) (not b!6935843) (not b!6935834) (not b!6935999) (not bm!630193) (not d!2166845) (not b!6935992) (not b!6935902) (not d!2166825) (not b!6935842) (not bm!630166) (not b!6935874) (not bm!630197) (not b!6936019) (not d!2166819) (not b!6935903) (not b!6935881) (not b!6935847) (not b!6935819) (not d!2166815) (not b!6935687) (not b!6935876) (not b!6935962) (not b!6935827) (not d!2166835) (not d!2166823) (not b!6935394) (not b!6935970) (not b!6935931) (not b!6935187) (not b!6935967) (not b!6935865) (not d!2166821) (not b!6936015) (not b!6935420) (not b!6935873) (not bm!630199) (not b!6935950) (not bm!630200) (not b!6935195) (not b!6935966) (not b!6935392) (not b!6936023) (not d!2166817) (not b!6936011) (not d!2166757) (not b!6935949) (not d!2166703) (not b!6935971) (not d!2166867) (not b!6935976) (not b!6935679) (not b!6935391) (not b!6935983) (not b!6935991) (not d!2166683) (not bm!630188) (not b!6935867) (not b!6936020) (not b!6935686) (not b!6935882) (not b!6935913) (not d!2166859) (not d!2166851) (not b!6935708) (not b!6936017) (not b!6935398) (not b!6935851) (not b!6935987) (not b!6936004) (not b!6936016) (not d!2166781) (not b!6935826) (not d!2166847) (not b!6935552) (not d!2166829) (not b!6935945) (not bm!630140) (not b!6935412) (not bm!630203) (not b!6935835) (not bm!630189) (not b!6935994) (not b!6935972) (not d!2166715) (not b!6935935) (not b!6935979) (not b!6935833) (not b!6935914) (not d!2166863) (not b!6935730) (not b!6935937) (not bm!630182) (not bm!630202) (not b!6935194) (not b!6935682) (not b!6935627) (not b!6935828) (not b!6935829) tp_is_empty!43135 (not bm!630139) (not bm!630187) (not b!6936024) (not b!6935840) (not b!6936013) (not b!6935823) (not bm!630201) (not b!6935718) (not b!6935848) (not b!6935936) (not d!2166849) (not bm!630125) (not b!6935725) (not bm!630205) (not bm!630192) (not bm!630190) (not b!6936025) (not b!6935892) (not bm!630177) (not b!6935734) (not b!6935942) (not b!6935978) (not b!6936021) (not b!6935995) (not bm!630194) (not b!6935424) (not b!6935419) (not d!2166691) (not b!6935860) (not b!6935988) (not b!6935868) (not b!6935982) (not b!6935190) (not d!2166797) (not b!6935425) (not b!6935877) (not bm!630150) (not b!6935709) (not d!2166813) (not b!6935733) (not d!2166811) (not b!6935726) (not bm!630196) (not b!6935930) (not b!6935883) (not b!6936012) (not b!6935996) (not b!6936002) (not d!2166687) (not d!2166665) (not b!6935964) (not b!6935824) (not b!6935182) (not d!2166843))
(check-sat)
