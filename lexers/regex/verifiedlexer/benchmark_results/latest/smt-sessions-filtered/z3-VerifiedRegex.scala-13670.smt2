; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732860 () Bool)

(assert start!732860)

(declare-fun b!7600186 () Bool)

(assert (=> b!7600186 true))

(assert (=> b!7600186 true))

(assert (=> b!7600186 true))

(declare-fun bs!1942386 () Bool)

(declare-fun b!7600193 () Bool)

(assert (= bs!1942386 (and b!7600193 b!7600186)))

(declare-fun lambda!467539 () Int)

(declare-fun lambda!467538 () Int)

(assert (=> bs!1942386 (not (= lambda!467539 lambda!467538))))

(assert (=> b!7600193 true))

(assert (=> b!7600193 true))

(assert (=> b!7600193 true))

(declare-fun b!7600184 () Bool)

(declare-fun e!4521791 () Bool)

(declare-fun tp!2215595 () Bool)

(declare-fun tp!2215601 () Bool)

(assert (=> b!7600184 (= e!4521791 (and tp!2215595 tp!2215601))))

(declare-fun b!7600185 () Bool)

(declare-fun res!3043121 () Bool)

(declare-fun e!4521796 () Bool)

(assert (=> b!7600185 (=> (not res!3043121) (not e!4521796))))

(declare-datatypes ((C!40596 0))(
  ( (C!40597 (val!30738 Int)) )
))
(declare-datatypes ((Regex!20135 0))(
  ( (ElementMatch!20135 (c!1402224 C!40596)) (Concat!28980 (regOne!40782 Regex!20135) (regTwo!40782 Regex!20135)) (EmptyExpr!20135) (Star!20135 (reg!20464 Regex!20135)) (EmptyLang!20135) (Union!20135 (regOne!40783 Regex!20135) (regTwo!40783 Regex!20135)) )
))
(declare-fun r2!3249 () Regex!20135)

(declare-fun validRegex!10563 (Regex!20135) Bool)

(assert (=> b!7600185 (= res!3043121 (validRegex!10563 r2!3249))))

(declare-fun res!3043119 () Bool)

(assert (=> b!7600186 (=> (not res!3043119) (not e!4521796))))

(declare-fun Exists!4363 (Int) Bool)

(assert (=> b!7600186 (= res!3043119 (Exists!4363 lambda!467538))))

(declare-fun b!7600187 () Bool)

(declare-fun e!4521793 () Bool)

(declare-fun tp!2215597 () Bool)

(assert (=> b!7600187 (= e!4521793 tp!2215597)))

(declare-fun res!3043120 () Bool)

(assert (=> start!732860 (=> (not res!3043120) (not e!4521796))))

(declare-fun r1!3349 () Regex!20135)

(assert (=> start!732860 (= res!3043120 (validRegex!10563 r1!3349))))

(assert (=> start!732860 e!4521796))

(assert (=> start!732860 e!4521793))

(assert (=> start!732860 e!4521791))

(declare-fun e!4521794 () Bool)

(assert (=> start!732860 e!4521794))

(declare-fun e!4521795 () Bool)

(declare-fun e!4521792 () Bool)

(assert (=> start!732860 (and e!4521795 e!4521792)))

(declare-fun b!7600188 () Bool)

(declare-fun tp_is_empty!50625 () Bool)

(assert (=> b!7600188 (= e!4521793 tp_is_empty!50625)))

(declare-fun b!7600189 () Bool)

(declare-fun tp!2215604 () Bool)

(declare-fun tp!2215599 () Bool)

(assert (=> b!7600189 (= e!4521793 (and tp!2215604 tp!2215599))))

(declare-fun b!7600190 () Bool)

(declare-fun e!4521790 () Bool)

(assert (=> b!7600190 (= e!4521796 e!4521790)))

(declare-fun res!3043118 () Bool)

(assert (=> b!7600190 (=> (not res!3043118) (not e!4521790))))

(declare-datatypes ((List!73018 0))(
  ( (Nil!72894) (Cons!72894 (h!79342 C!40596) (t!387753 List!73018)) )
))
(declare-datatypes ((tuple2!68988 0))(
  ( (tuple2!68989 (_1!37797 List!73018) (_2!37797 List!73018)) )
))
(declare-fun lt!2654232 () tuple2!68988)

(declare-fun s!10235 () List!73018)

(declare-fun ++!17541 (List!73018 List!73018) List!73018)

(assert (=> b!7600190 (= res!3043118 (= (++!17541 (_1!37797 lt!2654232) (_2!37797 lt!2654232)) s!10235))))

(declare-fun pickWitness!400 (Int) tuple2!68988)

(assert (=> b!7600190 (= lt!2654232 (pickWitness!400 lambda!467538))))

(declare-fun b!7600191 () Bool)

(declare-fun tp!2215607 () Bool)

(assert (=> b!7600191 (= e!4521792 (and tp_is_empty!50625 tp!2215607))))

(declare-fun b!7600192 () Bool)

(declare-fun tp!2215598 () Bool)

(assert (=> b!7600192 (= e!4521794 (and tp_is_empty!50625 tp!2215598))))

(declare-fun e!4521797 () Bool)

(assert (=> b!7600193 (= e!4521797 true)))

(declare-fun lt!2654234 () List!73018)

(declare-fun cut!28 () tuple2!68988)

(assert (=> b!7600193 (= lt!2654234 (++!17541 (_1!37797 cut!28) (_2!37797 cut!28)))))

(declare-datatypes ((Unit!167202 0))(
  ( (Unit!167203) )
))
(declare-fun lt!2654231 () Unit!167202)

(declare-fun ExistsThe!30 (tuple2!68988 Int) Unit!167202)

(assert (=> b!7600193 (= lt!2654231 (ExistsThe!30 lt!2654232 lambda!467539))))

(declare-fun b!7600194 () Bool)

(declare-fun tp!2215605 () Bool)

(declare-fun tp!2215603 () Bool)

(assert (=> b!7600194 (= e!4521793 (and tp!2215605 tp!2215603))))

(declare-fun b!7600195 () Bool)

(assert (=> b!7600195 (= e!4521790 (not e!4521797))))

(declare-fun res!3043122 () Bool)

(assert (=> b!7600195 (=> res!3043122 e!4521797)))

(declare-fun lt!2654229 () Bool)

(declare-fun lt!2654233 () Bool)

(assert (=> b!7600195 (= res!3043122 (or (not lt!2654229) (not lt!2654233)))))

(declare-fun matchRSpec!4436 (Regex!20135 List!73018) Bool)

(assert (=> b!7600195 (= lt!2654233 (matchRSpec!4436 r2!3249 (_2!37797 lt!2654232)))))

(declare-fun matchR!9719 (Regex!20135 List!73018) Bool)

(assert (=> b!7600195 (= lt!2654233 (matchR!9719 r2!3249 (_2!37797 lt!2654232)))))

(declare-fun lt!2654230 () Unit!167202)

(declare-fun mainMatchTheorem!4430 (Regex!20135 List!73018) Unit!167202)

(assert (=> b!7600195 (= lt!2654230 (mainMatchTheorem!4430 r2!3249 (_2!37797 lt!2654232)))))

(assert (=> b!7600195 (= lt!2654229 (matchRSpec!4436 r1!3349 (_1!37797 lt!2654232)))))

(assert (=> b!7600195 (= lt!2654229 (matchR!9719 r1!3349 (_1!37797 lt!2654232)))))

(declare-fun lt!2654228 () Unit!167202)

(assert (=> b!7600195 (= lt!2654228 (mainMatchTheorem!4430 r1!3349 (_1!37797 lt!2654232)))))

(declare-fun b!7600196 () Bool)

(declare-fun tp!2215606 () Bool)

(assert (=> b!7600196 (= e!4521791 tp!2215606)))

(declare-fun b!7600197 () Bool)

(declare-fun tp!2215602 () Bool)

(assert (=> b!7600197 (= e!4521795 (and tp_is_empty!50625 tp!2215602))))

(declare-fun b!7600198 () Bool)

(assert (=> b!7600198 (= e!4521791 tp_is_empty!50625)))

(declare-fun b!7600199 () Bool)

(declare-fun tp!2215600 () Bool)

(declare-fun tp!2215596 () Bool)

(assert (=> b!7600199 (= e!4521791 (and tp!2215600 tp!2215596))))

(assert (= (and start!732860 res!3043120) b!7600185))

(assert (= (and b!7600185 res!3043121) b!7600186))

(assert (= (and b!7600186 res!3043119) b!7600190))

(assert (= (and b!7600190 res!3043118) b!7600195))

(assert (= (and b!7600195 (not res!3043122)) b!7600193))

(get-info :version)

(assert (= (and start!732860 ((_ is ElementMatch!20135) r1!3349)) b!7600188))

(assert (= (and start!732860 ((_ is Concat!28980) r1!3349)) b!7600194))

(assert (= (and start!732860 ((_ is Star!20135) r1!3349)) b!7600187))

(assert (= (and start!732860 ((_ is Union!20135) r1!3349)) b!7600189))

(assert (= (and start!732860 ((_ is ElementMatch!20135) r2!3249)) b!7600198))

(assert (= (and start!732860 ((_ is Concat!28980) r2!3249)) b!7600199))

(assert (= (and start!732860 ((_ is Star!20135) r2!3249)) b!7600196))

(assert (= (and start!732860 ((_ is Union!20135) r2!3249)) b!7600184))

(assert (= (and start!732860 ((_ is Cons!72894) s!10235)) b!7600192))

(assert (= (and start!732860 ((_ is Cons!72894) (_1!37797 cut!28))) b!7600197))

(assert (= (and start!732860 ((_ is Cons!72894) (_2!37797 cut!28))) b!7600191))

(declare-fun m!8144872 () Bool)

(assert (=> start!732860 m!8144872))

(declare-fun m!8144874 () Bool)

(assert (=> b!7600195 m!8144874))

(declare-fun m!8144876 () Bool)

(assert (=> b!7600195 m!8144876))

(declare-fun m!8144878 () Bool)

(assert (=> b!7600195 m!8144878))

(declare-fun m!8144880 () Bool)

(assert (=> b!7600195 m!8144880))

(declare-fun m!8144882 () Bool)

(assert (=> b!7600195 m!8144882))

(declare-fun m!8144884 () Bool)

(assert (=> b!7600195 m!8144884))

(declare-fun m!8144886 () Bool)

(assert (=> b!7600193 m!8144886))

(declare-fun m!8144888 () Bool)

(assert (=> b!7600193 m!8144888))

(declare-fun m!8144890 () Bool)

(assert (=> b!7600190 m!8144890))

(declare-fun m!8144892 () Bool)

(assert (=> b!7600190 m!8144892))

(declare-fun m!8144894 () Bool)

(assert (=> b!7600186 m!8144894))

(declare-fun m!8144896 () Bool)

(assert (=> b!7600185 m!8144896))

(check-sat (not b!7600195) (not start!732860) (not b!7600186) (not b!7600185) tp_is_empty!50625 (not b!7600190) (not b!7600184) (not b!7600193) (not b!7600197) (not b!7600189) (not b!7600199) (not b!7600194) (not b!7600191) (not b!7600192) (not b!7600187) (not b!7600196))
(check-sat)
