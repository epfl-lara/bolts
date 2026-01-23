; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725254 () Bool)

(assert start!725254)

(declare-fun b!7492187 () Bool)

(assert (=> b!7492187 true))

(assert (=> b!7492187 true))

(assert (=> b!7492187 true))

(declare-fun lambda!464223 () Int)

(declare-fun lambda!464222 () Int)

(assert (=> b!7492187 (not (= lambda!464223 lambda!464222))))

(assert (=> b!7492187 true))

(assert (=> b!7492187 true))

(assert (=> b!7492187 true))

(declare-fun b!7492166 () Bool)

(declare-fun e!4467595 () Bool)

(declare-fun tp!2174599 () Bool)

(assert (=> b!7492166 (= e!4467595 tp!2174599)))

(declare-fun b!7492167 () Bool)

(declare-fun res!3005393 () Bool)

(declare-fun e!4467592 () Bool)

(assert (=> b!7492167 (=> (not res!3005393) (not e!4467592))))

(declare-datatypes ((C!39548 0))(
  ( (C!39549 (val!30172 Int)) )
))
(declare-datatypes ((Regex!19637 0))(
  ( (ElementMatch!19637 (c!1383402 C!39548)) (Concat!28482 (regOne!39786 Regex!19637) (regTwo!39786 Regex!19637)) (EmptyExpr!19637) (Star!19637 (reg!19966 Regex!19637)) (EmptyLang!19637) (Union!19637 (regOne!39787 Regex!19637) (regTwo!39787 Regex!19637)) )
))
(declare-fun rTail!78 () Regex!19637)

(declare-fun validRegex!10151 (Regex!19637) Bool)

(assert (=> b!7492167 (= res!3005393 (validRegex!10151 rTail!78))))

(declare-fun b!7492168 () Bool)

(declare-fun res!3005392 () Bool)

(assert (=> b!7492168 (=> (not res!3005392) (not e!4467592))))

(declare-fun r2!5783 () Regex!19637)

(assert (=> b!7492168 (= res!3005392 (validRegex!10151 r2!5783))))

(declare-fun b!7492169 () Bool)

(declare-fun e!4467590 () Bool)

(declare-fun tp_is_empty!49563 () Bool)

(assert (=> b!7492169 (= e!4467590 tp_is_empty!49563)))

(declare-fun b!7492170 () Bool)

(declare-fun e!4467593 () Bool)

(declare-fun tp!2174592 () Bool)

(assert (=> b!7492170 (= e!4467593 tp!2174592)))

(declare-fun b!7492171 () Bool)

(declare-fun res!3005394 () Bool)

(declare-fun e!4467588 () Bool)

(assert (=> b!7492171 (=> res!3005394 e!4467588)))

(declare-datatypes ((List!72351 0))(
  ( (Nil!72227) (Cons!72227 (h!78675 C!39548) (t!386920 List!72351)) )
))
(declare-datatypes ((tuple2!68712 0))(
  ( (tuple2!68713 (_1!37659 List!72351) (_2!37659 List!72351)) )
))
(declare-fun lt!2629881 () tuple2!68712)

(declare-fun matchR!9399 (Regex!19637 List!72351) Bool)

(assert (=> b!7492171 (= res!3005394 (not (matchR!9399 rTail!78 (_2!37659 lt!2629881))))))

(declare-fun b!7492172 () Bool)

(declare-fun e!4467596 () Bool)

(declare-fun e!4467594 () Bool)

(assert (=> b!7492172 (= e!4467596 e!4467594)))

(declare-fun res!3005395 () Bool)

(assert (=> b!7492172 (=> res!3005395 e!4467594)))

(declare-fun lt!2629873 () Bool)

(declare-fun lt!2629865 () Bool)

(declare-fun lt!2629871 () Bool)

(assert (=> b!7492172 (= res!3005395 (not (= lt!2629871 (or lt!2629873 lt!2629865))))))

(declare-fun lt!2629866 () Regex!19637)

(declare-fun s!13591 () List!72351)

(declare-fun matchRSpec!4314 (Regex!19637 List!72351) Bool)

(assert (=> b!7492172 (= lt!2629865 (matchRSpec!4314 lt!2629866 s!13591))))

(assert (=> b!7492172 (= lt!2629865 (matchR!9399 lt!2629866 s!13591))))

(declare-datatypes ((Unit!166105 0))(
  ( (Unit!166106) )
))
(declare-fun lt!2629877 () Unit!166105)

(declare-fun mainMatchTheorem!4308 (Regex!19637 List!72351) Unit!166105)

(assert (=> b!7492172 (= lt!2629877 (mainMatchTheorem!4308 lt!2629866 s!13591))))

(declare-fun lt!2629874 () Regex!19637)

(assert (=> b!7492172 (= lt!2629873 (matchRSpec!4314 lt!2629874 s!13591))))

(assert (=> b!7492172 (= lt!2629873 (matchR!9399 lt!2629874 s!13591))))

(declare-fun lt!2629869 () Unit!166105)

(assert (=> b!7492172 (= lt!2629869 (mainMatchTheorem!4308 lt!2629874 s!13591))))

(declare-fun b!7492173 () Bool)

(declare-fun tp!2174597 () Bool)

(declare-fun tp!2174600 () Bool)

(assert (=> b!7492173 (= e!4467590 (and tp!2174597 tp!2174600))))

(declare-fun c!1383401 () Bool)

(declare-fun call!687789 () Unit!166105)

(declare-fun r1!5845 () Regex!19637)

(declare-fun bm!687783 () Bool)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!406 (Regex!19637 Regex!19637 List!72351 List!72351) Unit!166105)

(assert (=> bm!687783 (= call!687789 (lemmaTwoRegexMatchThenConcatMatchesConcatString!406 (ite c!1383401 r1!5845 r2!5783) rTail!78 (_1!37659 lt!2629881) (_2!37659 lt!2629881)))))

(declare-fun b!7492174 () Bool)

(declare-fun tp!2174601 () Bool)

(declare-fun tp!2174603 () Bool)

(assert (=> b!7492174 (= e!4467595 (and tp!2174601 tp!2174603))))

(declare-fun b!7492175 () Bool)

(assert (=> b!7492175 (= e!4467594 true)))

(declare-fun lt!2629878 () Unit!166105)

(declare-fun e!4467591 () Unit!166105)

(assert (=> b!7492175 (= lt!2629878 e!4467591)))

(declare-fun lt!2629887 () Bool)

(assert (=> b!7492175 (= c!1383401 lt!2629887)))

(declare-fun b!7492176 () Bool)

(declare-fun tp!2174594 () Bool)

(assert (=> b!7492176 (= e!4467590 tp!2174594)))

(declare-fun b!7492177 () Bool)

(assert (=> b!7492177 (= e!4467588 e!4467596)))

(declare-fun res!3005391 () Bool)

(assert (=> b!7492177 (=> res!3005391 e!4467596)))

(declare-fun lt!2629883 () Bool)

(assert (=> b!7492177 (= res!3005391 (and (not lt!2629887) (not lt!2629883)))))

(assert (=> b!7492177 (= lt!2629883 (matchRSpec!4314 r2!5783 (_1!37659 lt!2629881)))))

(assert (=> b!7492177 (= lt!2629883 (matchR!9399 r2!5783 (_1!37659 lt!2629881)))))

(declare-fun lt!2629880 () Unit!166105)

(assert (=> b!7492177 (= lt!2629880 (mainMatchTheorem!4308 r2!5783 (_1!37659 lt!2629881)))))

(assert (=> b!7492177 (= lt!2629887 (matchRSpec!4314 r1!5845 (_1!37659 lt!2629881)))))

(assert (=> b!7492177 (= lt!2629887 (matchR!9399 r1!5845 (_1!37659 lt!2629881)))))

(declare-fun lt!2629882 () Unit!166105)

(assert (=> b!7492177 (= lt!2629882 (mainMatchTheorem!4308 r1!5845 (_1!37659 lt!2629881)))))

(assert (=> b!7492177 (matchRSpec!4314 rTail!78 (_2!37659 lt!2629881))))

(declare-fun lt!2629875 () Unit!166105)

(assert (=> b!7492177 (= lt!2629875 (mainMatchTheorem!4308 rTail!78 (_2!37659 lt!2629881)))))

(declare-fun lt!2629863 () Regex!19637)

(assert (=> b!7492177 (matchRSpec!4314 lt!2629863 (_1!37659 lt!2629881))))

(declare-fun lt!2629885 () Unit!166105)

(assert (=> b!7492177 (= lt!2629885 (mainMatchTheorem!4308 lt!2629863 (_1!37659 lt!2629881)))))

(declare-fun b!7492178 () Bool)

(assert (=> b!7492178 (= e!4467595 tp_is_empty!49563)))

(declare-fun b!7492165 () Bool)

(declare-fun e!4467589 () Bool)

(declare-fun tp!2174596 () Bool)

(assert (=> b!7492165 (= e!4467589 (and tp_is_empty!49563 tp!2174596))))

(declare-fun res!3005389 () Bool)

(assert (=> start!725254 (=> (not res!3005389) (not e!4467592))))

(assert (=> start!725254 (= res!3005389 (validRegex!10151 r1!5845))))

(assert (=> start!725254 e!4467592))

(assert (=> start!725254 e!4467593))

(assert (=> start!725254 e!4467595))

(assert (=> start!725254 e!4467590))

(assert (=> start!725254 e!4467589))

(declare-fun b!7492179 () Bool)

(declare-fun tp!2174605 () Bool)

(declare-fun tp!2174593 () Bool)

(assert (=> b!7492179 (= e!4467593 (and tp!2174605 tp!2174593))))

(declare-fun b!7492180 () Bool)

(declare-fun lt!2629886 () Unit!166105)

(assert (=> b!7492180 (= e!4467591 lt!2629886)))

(assert (=> b!7492180 (= lt!2629886 call!687789)))

(declare-fun call!687790 () Bool)

(assert (=> b!7492180 call!687790))

(declare-fun call!687788 () List!72351)

(declare-fun bm!687784 () Bool)

(assert (=> bm!687784 (= call!687790 (matchR!9399 (ite c!1383401 lt!2629874 lt!2629866) call!687788))))

(declare-fun b!7492181 () Bool)

(declare-fun tp!2174598 () Bool)

(declare-fun tp!2174590 () Bool)

(assert (=> b!7492181 (= e!4467595 (and tp!2174598 tp!2174590))))

(declare-fun b!7492182 () Bool)

(assert (=> b!7492182 (= e!4467593 tp_is_empty!49563)))

(declare-fun b!7492183 () Bool)

(declare-fun e!4467587 () Bool)

(assert (=> b!7492183 (= e!4467592 (not e!4467587))))

(declare-fun res!3005396 () Bool)

(assert (=> b!7492183 (=> res!3005396 e!4467587)))

(declare-fun lt!2629870 () Bool)

(assert (=> b!7492183 (= res!3005396 (not lt!2629870))))

(declare-fun lt!2629862 () Regex!19637)

(assert (=> b!7492183 (= lt!2629871 (matchRSpec!4314 lt!2629862 s!13591))))

(assert (=> b!7492183 (= lt!2629871 (matchR!9399 lt!2629862 s!13591))))

(declare-fun lt!2629879 () Unit!166105)

(assert (=> b!7492183 (= lt!2629879 (mainMatchTheorem!4308 lt!2629862 s!13591))))

(declare-fun lt!2629867 () Regex!19637)

(assert (=> b!7492183 (= lt!2629870 (matchRSpec!4314 lt!2629867 s!13591))))

(assert (=> b!7492183 (= lt!2629870 (matchR!9399 lt!2629867 s!13591))))

(declare-fun lt!2629876 () Unit!166105)

(assert (=> b!7492183 (= lt!2629876 (mainMatchTheorem!4308 lt!2629867 s!13591))))

(assert (=> b!7492183 (= lt!2629862 (Union!19637 lt!2629874 lt!2629866))))

(assert (=> b!7492183 (= lt!2629866 (Concat!28482 r2!5783 rTail!78))))

(assert (=> b!7492183 (= lt!2629874 (Concat!28482 r1!5845 rTail!78))))

(assert (=> b!7492183 (= lt!2629867 (Concat!28482 lt!2629863 rTail!78))))

(assert (=> b!7492183 (= lt!2629863 (Union!19637 r1!5845 r2!5783))))

(declare-fun b!7492184 () Bool)

(declare-fun tp!2174591 () Bool)

(declare-fun tp!2174602 () Bool)

(assert (=> b!7492184 (= e!4467593 (and tp!2174591 tp!2174602))))

(declare-fun b!7492185 () Bool)

(declare-fun tp!2174595 () Bool)

(declare-fun tp!2174604 () Bool)

(assert (=> b!7492185 (= e!4467590 (and tp!2174595 tp!2174604))))

(declare-fun b!7492186 () Bool)

(declare-fun lt!2629864 () Unit!166105)

(assert (=> b!7492186 (= e!4467591 lt!2629864)))

(assert (=> b!7492186 (= lt!2629864 call!687789)))

(assert (=> b!7492186 call!687790))

(declare-fun bm!687785 () Bool)

(declare-fun ++!17245 (List!72351 List!72351) List!72351)

(assert (=> bm!687785 (= call!687788 (++!17245 (_1!37659 lt!2629881) (_2!37659 lt!2629881)))))

(assert (=> b!7492187 (= e!4467587 e!4467588)))

(declare-fun res!3005390 () Bool)

(assert (=> b!7492187 (=> res!3005390 e!4467588)))

(assert (=> b!7492187 (= res!3005390 (not (matchR!9399 lt!2629863 (_1!37659 lt!2629881))))))

(declare-datatypes ((Option!17188 0))(
  ( (None!17187) (Some!17187 (v!54316 tuple2!68712)) )
))
(declare-fun lt!2629868 () Option!17188)

(declare-fun get!25313 (Option!17188) tuple2!68712)

(assert (=> b!7492187 (= lt!2629881 (get!25313 lt!2629868))))

(declare-fun Exists!4254 (Int) Bool)

(assert (=> b!7492187 (= (Exists!4254 lambda!464222) (Exists!4254 lambda!464223))))

(declare-fun lt!2629872 () Unit!166105)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2582 (Regex!19637 Regex!19637 List!72351) Unit!166105)

(assert (=> b!7492187 (= lt!2629872 (lemmaExistCutMatchRandMatchRSpecEquivalent!2582 lt!2629863 rTail!78 s!13591))))

(declare-fun isDefined!13877 (Option!17188) Bool)

(assert (=> b!7492187 (= (isDefined!13877 lt!2629868) (Exists!4254 lambda!464222))))

(declare-fun findConcatSeparation!3310 (Regex!19637 Regex!19637 List!72351 List!72351 List!72351) Option!17188)

(assert (=> b!7492187 (= lt!2629868 (findConcatSeparation!3310 lt!2629863 rTail!78 Nil!72227 s!13591 s!13591))))

(declare-fun lt!2629884 () Unit!166105)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3068 (Regex!19637 Regex!19637 List!72351) Unit!166105)

(assert (=> b!7492187 (= lt!2629884 (lemmaFindConcatSeparationEquivalentToExists!3068 lt!2629863 rTail!78 s!13591))))

(assert (= (and start!725254 res!3005389) b!7492168))

(assert (= (and b!7492168 res!3005392) b!7492167))

(assert (= (and b!7492167 res!3005393) b!7492183))

(assert (= (and b!7492183 (not res!3005396)) b!7492187))

(assert (= (and b!7492187 (not res!3005390)) b!7492171))

(assert (= (and b!7492171 (not res!3005394)) b!7492177))

(assert (= (and b!7492177 (not res!3005391)) b!7492172))

(assert (= (and b!7492172 (not res!3005395)) b!7492175))

(assert (= (and b!7492175 c!1383401) b!7492180))

(assert (= (and b!7492175 (not c!1383401)) b!7492186))

(assert (= (or b!7492180 b!7492186) bm!687783))

(assert (= (or b!7492180 b!7492186) bm!687785))

(assert (= (or b!7492180 b!7492186) bm!687784))

(get-info :version)

(assert (= (and start!725254 ((_ is ElementMatch!19637) r1!5845)) b!7492182))

(assert (= (and start!725254 ((_ is Concat!28482) r1!5845)) b!7492184))

(assert (= (and start!725254 ((_ is Star!19637) r1!5845)) b!7492170))

(assert (= (and start!725254 ((_ is Union!19637) r1!5845)) b!7492179))

(assert (= (and start!725254 ((_ is ElementMatch!19637) r2!5783)) b!7492178))

(assert (= (and start!725254 ((_ is Concat!28482) r2!5783)) b!7492181))

(assert (= (and start!725254 ((_ is Star!19637) r2!5783)) b!7492166))

(assert (= (and start!725254 ((_ is Union!19637) r2!5783)) b!7492174))

(assert (= (and start!725254 ((_ is ElementMatch!19637) rTail!78)) b!7492169))

(assert (= (and start!725254 ((_ is Concat!28482) rTail!78)) b!7492185))

(assert (= (and start!725254 ((_ is Star!19637) rTail!78)) b!7492176))

(assert (= (and start!725254 ((_ is Union!19637) rTail!78)) b!7492173))

(assert (= (and start!725254 ((_ is Cons!72227) s!13591)) b!7492165))

(declare-fun m!8078122 () Bool)

(assert (=> bm!687785 m!8078122))

(declare-fun m!8078124 () Bool)

(assert (=> b!7492168 m!8078124))

(declare-fun m!8078126 () Bool)

(assert (=> b!7492187 m!8078126))

(declare-fun m!8078128 () Bool)

(assert (=> b!7492187 m!8078128))

(declare-fun m!8078130 () Bool)

(assert (=> b!7492187 m!8078130))

(declare-fun m!8078132 () Bool)

(assert (=> b!7492187 m!8078132))

(declare-fun m!8078134 () Bool)

(assert (=> b!7492187 m!8078134))

(declare-fun m!8078136 () Bool)

(assert (=> b!7492187 m!8078136))

(declare-fun m!8078138 () Bool)

(assert (=> b!7492187 m!8078138))

(assert (=> b!7492187 m!8078130))

(declare-fun m!8078140 () Bool)

(assert (=> b!7492187 m!8078140))

(declare-fun m!8078142 () Bool)

(assert (=> bm!687783 m!8078142))

(declare-fun m!8078144 () Bool)

(assert (=> b!7492171 m!8078144))

(declare-fun m!8078146 () Bool)

(assert (=> bm!687784 m!8078146))

(declare-fun m!8078148 () Bool)

(assert (=> start!725254 m!8078148))

(declare-fun m!8078150 () Bool)

(assert (=> b!7492183 m!8078150))

(declare-fun m!8078152 () Bool)

(assert (=> b!7492183 m!8078152))

(declare-fun m!8078154 () Bool)

(assert (=> b!7492183 m!8078154))

(declare-fun m!8078156 () Bool)

(assert (=> b!7492183 m!8078156))

(declare-fun m!8078158 () Bool)

(assert (=> b!7492183 m!8078158))

(declare-fun m!8078160 () Bool)

(assert (=> b!7492183 m!8078160))

(declare-fun m!8078162 () Bool)

(assert (=> b!7492172 m!8078162))

(declare-fun m!8078164 () Bool)

(assert (=> b!7492172 m!8078164))

(declare-fun m!8078166 () Bool)

(assert (=> b!7492172 m!8078166))

(declare-fun m!8078168 () Bool)

(assert (=> b!7492172 m!8078168))

(declare-fun m!8078170 () Bool)

(assert (=> b!7492172 m!8078170))

(declare-fun m!8078172 () Bool)

(assert (=> b!7492172 m!8078172))

(declare-fun m!8078174 () Bool)

(assert (=> b!7492177 m!8078174))

(declare-fun m!8078176 () Bool)

(assert (=> b!7492177 m!8078176))

(declare-fun m!8078178 () Bool)

(assert (=> b!7492177 m!8078178))

(declare-fun m!8078180 () Bool)

(assert (=> b!7492177 m!8078180))

(declare-fun m!8078182 () Bool)

(assert (=> b!7492177 m!8078182))

(declare-fun m!8078184 () Bool)

(assert (=> b!7492177 m!8078184))

(declare-fun m!8078186 () Bool)

(assert (=> b!7492177 m!8078186))

(declare-fun m!8078188 () Bool)

(assert (=> b!7492177 m!8078188))

(declare-fun m!8078190 () Bool)

(assert (=> b!7492177 m!8078190))

(declare-fun m!8078192 () Bool)

(assert (=> b!7492177 m!8078192))

(declare-fun m!8078194 () Bool)

(assert (=> b!7492167 m!8078194))

(check-sat (not b!7492172) (not b!7492185) (not bm!687784) (not b!7492173) (not bm!687783) (not b!7492167) (not b!7492183) (not b!7492177) (not b!7492170) (not b!7492184) (not b!7492179) (not b!7492165) (not start!725254) (not b!7492171) (not bm!687785) (not b!7492187) (not b!7492166) (not b!7492174) (not b!7492176) (not b!7492168) tp_is_empty!49563 (not b!7492181))
(check-sat)
