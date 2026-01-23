; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286796 () Bool)

(assert start!286796)

(declare-fun b!2959162 () Bool)

(assert (=> b!2959162 true))

(assert (=> b!2959162 true))

(assert (=> b!2959162 true))

(declare-fun lambda!110306 () Int)

(declare-fun lambda!110305 () Int)

(assert (=> b!2959162 (not (= lambda!110306 lambda!110305))))

(assert (=> b!2959162 true))

(assert (=> b!2959162 true))

(assert (=> b!2959162 true))

(declare-fun b!2959160 () Bool)

(declare-fun res!1220976 () Bool)

(declare-fun e!1862918 () Bool)

(assert (=> b!2959160 (=> res!1220976 e!1862918)))

(declare-datatypes ((C!18544 0))(
  ( (C!18545 (val!11308 Int)) )
))
(declare-datatypes ((Regex!9179 0))(
  ( (ElementMatch!9179 (c!484903 C!18544)) (Concat!14500 (regOne!18870 Regex!9179) (regTwo!18870 Regex!9179)) (EmptyExpr!9179) (Star!9179 (reg!9508 Regex!9179)) (EmptyLang!9179) (Union!9179 (regOne!18871 Regex!9179) (regTwo!18871 Regex!9179)) )
))
(declare-fun lt!1033701 () Regex!9179)

(declare-fun isEmptyExpr!382 (Regex!9179) Bool)

(assert (=> b!2959160 (= res!1220976 (isEmptyExpr!382 lt!1033701))))

(declare-fun b!2959161 () Bool)

(declare-fun res!1220975 () Bool)

(assert (=> b!2959161 (=> res!1220975 e!1862918)))

(declare-fun lt!1033694 () Regex!9179)

(assert (=> b!2959161 (= res!1220975 (isEmptyExpr!382 lt!1033694))))

(declare-fun e!1862916 () Bool)

(declare-fun e!1862913 () Bool)

(assert (=> b!2959162 (= e!1862916 e!1862913)))

(declare-fun res!1220970 () Bool)

(assert (=> b!2959162 (=> res!1220970 e!1862913)))

(declare-fun lt!1033693 () Bool)

(assert (=> b!2959162 (= res!1220970 (not lt!1033693))))

(declare-fun Exists!1511 (Int) Bool)

(assert (=> b!2959162 (= (Exists!1511 lambda!110305) (Exists!1511 lambda!110306))))

(declare-datatypes ((Unit!48737 0))(
  ( (Unit!48738) )
))
(declare-fun lt!1033703 () Unit!48737)

(declare-datatypes ((List!35044 0))(
  ( (Nil!34920) (Cons!34920 (h!40340 C!18544) (t!234109 List!35044)) )
))
(declare-fun s!11993 () List!35044)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!532 (Regex!9179 Regex!9179 List!35044) Unit!48737)

(assert (=> b!2959162 (= lt!1033703 (lemmaExistCutMatchRandMatchRSpecEquivalent!532 lt!1033694 lt!1033701 s!11993))))

(assert (=> b!2959162 (= lt!1033693 (Exists!1511 lambda!110305))))

(declare-datatypes ((tuple2!33876 0))(
  ( (tuple2!33877 (_1!20070 List!35044) (_2!20070 List!35044)) )
))
(declare-datatypes ((Option!6670 0))(
  ( (None!6669) (Some!6669 (v!34803 tuple2!33876)) )
))
(declare-fun lt!1033698 () Option!6670)

(declare-fun isDefined!5221 (Option!6670) Bool)

(assert (=> b!2959162 (= lt!1033693 (isDefined!5221 lt!1033698))))

(declare-fun findConcatSeparation!1064 (Regex!9179 Regex!9179 List!35044 List!35044 List!35044) Option!6670)

(assert (=> b!2959162 (= lt!1033698 (findConcatSeparation!1064 lt!1033694 lt!1033701 Nil!34920 s!11993 s!11993))))

(declare-fun lt!1033692 () Unit!48737)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!842 (Regex!9179 Regex!9179 List!35044) Unit!48737)

(assert (=> b!2959162 (= lt!1033692 (lemmaFindConcatSeparationEquivalentToExists!842 lt!1033694 lt!1033701 s!11993))))

(declare-fun lt!1033697 () Regex!9179)

(declare-fun matchRSpec!1316 (Regex!9179 List!35044) Bool)

(assert (=> b!2959162 (matchRSpec!1316 lt!1033697 s!11993)))

(declare-fun lt!1033700 () Unit!48737)

(declare-fun mainMatchTheorem!1316 (Regex!9179 List!35044) Unit!48737)

(assert (=> b!2959162 (= lt!1033700 (mainMatchTheorem!1316 lt!1033697 s!11993))))

(declare-fun b!2959163 () Bool)

(declare-fun e!1862919 () Bool)

(declare-fun tp!944492 () Bool)

(declare-fun tp!944494 () Bool)

(assert (=> b!2959163 (= e!1862919 (and tp!944492 tp!944494))))

(declare-fun b!2959164 () Bool)

(declare-fun tp!944495 () Bool)

(assert (=> b!2959164 (= e!1862919 tp!944495)))

(declare-fun b!2959165 () Bool)

(declare-fun tp!944493 () Bool)

(declare-fun tp!944496 () Bool)

(assert (=> b!2959165 (= e!1862919 (and tp!944493 tp!944496))))

(declare-fun b!2959166 () Bool)

(declare-fun e!1862917 () Bool)

(assert (=> b!2959166 (= e!1862917 e!1862918)))

(declare-fun res!1220972 () Bool)

(assert (=> b!2959166 (=> res!1220972 e!1862918)))

(declare-fun isEmptyLang!301 (Regex!9179) Bool)

(assert (=> b!2959166 (= res!1220972 (isEmptyLang!301 lt!1033694))))

(declare-fun r!17423 () Regex!9179)

(declare-fun simplify!184 (Regex!9179) Regex!9179)

(assert (=> b!2959166 (= lt!1033701 (simplify!184 (regTwo!18870 r!17423)))))

(assert (=> b!2959166 (= lt!1033694 (simplify!184 (regOne!18870 r!17423)))))

(declare-fun b!2959167 () Bool)

(declare-fun e!1862915 () Bool)

(assert (=> b!2959167 (= e!1862915 (not e!1862917))))

(declare-fun res!1220973 () Bool)

(assert (=> b!2959167 (=> res!1220973 e!1862917)))

(declare-fun lt!1033696 () Bool)

(get-info :version)

(assert (=> b!2959167 (= res!1220973 (or lt!1033696 (not ((_ is Concat!14500) r!17423))))))

(assert (=> b!2959167 (= lt!1033696 (matchRSpec!1316 r!17423 s!11993))))

(declare-fun matchR!4061 (Regex!9179 List!35044) Bool)

(assert (=> b!2959167 (= lt!1033696 (matchR!4061 r!17423 s!11993))))

(declare-fun lt!1033699 () Unit!48737)

(assert (=> b!2959167 (= lt!1033699 (mainMatchTheorem!1316 r!17423 s!11993))))

(declare-fun b!2959168 () Bool)

(declare-fun res!1220974 () Bool)

(assert (=> b!2959168 (=> res!1220974 e!1862917)))

(declare-fun isEmpty!19204 (List!35044) Bool)

(assert (=> b!2959168 (= res!1220974 (isEmpty!19204 s!11993))))

(declare-fun b!2959169 () Bool)

(declare-fun res!1220971 () Bool)

(assert (=> b!2959169 (=> res!1220971 e!1862918)))

(assert (=> b!2959169 (= res!1220971 (isEmptyLang!301 lt!1033701))))

(declare-fun b!2959170 () Bool)

(declare-fun e!1862914 () Bool)

(declare-fun tp_is_empty!15921 () Bool)

(declare-fun tp!944497 () Bool)

(assert (=> b!2959170 (= e!1862914 (and tp_is_empty!15921 tp!944497))))

(declare-fun res!1220978 () Bool)

(assert (=> start!286796 (=> (not res!1220978) (not e!1862915))))

(declare-fun validRegex!3912 (Regex!9179) Bool)

(assert (=> start!286796 (= res!1220978 (validRegex!3912 r!17423))))

(assert (=> start!286796 e!1862915))

(assert (=> start!286796 e!1862919))

(assert (=> start!286796 e!1862914))

(declare-fun b!2959171 () Bool)

(assert (=> b!2959171 (= e!1862919 tp_is_empty!15921)))

(declare-fun b!2959172 () Bool)

(assert (=> b!2959172 (= e!1862913 true)))

(declare-fun lt!1033702 () tuple2!33876)

(assert (=> b!2959172 (= (matchR!4061 (regOne!18870 r!17423) (_1!20070 lt!1033702)) (matchR!4061 lt!1033694 (_1!20070 lt!1033702)))))

(declare-fun lt!1033695 () Unit!48737)

(declare-fun lemmaSimplifySound!118 (Regex!9179 List!35044) Unit!48737)

(assert (=> b!2959172 (= lt!1033695 (lemmaSimplifySound!118 (regOne!18870 r!17423) (_1!20070 lt!1033702)))))

(declare-fun get!10732 (Option!6670) tuple2!33876)

(assert (=> b!2959172 (= lt!1033702 (get!10732 lt!1033698))))

(declare-fun b!2959173 () Bool)

(assert (=> b!2959173 (= e!1862918 e!1862916)))

(declare-fun res!1220977 () Bool)

(assert (=> b!2959173 (=> res!1220977 e!1862916)))

(assert (=> b!2959173 (= res!1220977 (not (matchR!4061 lt!1033697 s!11993)))))

(assert (=> b!2959173 (= lt!1033697 (Concat!14500 lt!1033694 lt!1033701))))

(assert (= (and start!286796 res!1220978) b!2959167))

(assert (= (and b!2959167 (not res!1220973)) b!2959168))

(assert (= (and b!2959168 (not res!1220974)) b!2959166))

(assert (= (and b!2959166 (not res!1220972)) b!2959169))

(assert (= (and b!2959169 (not res!1220971)) b!2959161))

(assert (= (and b!2959161 (not res!1220975)) b!2959160))

(assert (= (and b!2959160 (not res!1220976)) b!2959173))

(assert (= (and b!2959173 (not res!1220977)) b!2959162))

(assert (= (and b!2959162 (not res!1220970)) b!2959172))

(assert (= (and start!286796 ((_ is ElementMatch!9179) r!17423)) b!2959171))

(assert (= (and start!286796 ((_ is Concat!14500) r!17423)) b!2959163))

(assert (= (and start!286796 ((_ is Star!9179) r!17423)) b!2959164))

(assert (= (and start!286796 ((_ is Union!9179) r!17423)) b!2959165))

(assert (= (and start!286796 ((_ is Cons!34920) s!11993)) b!2959170))

(declare-fun m!3333481 () Bool)

(assert (=> b!2959167 m!3333481))

(declare-fun m!3333483 () Bool)

(assert (=> b!2959167 m!3333483))

(declare-fun m!3333485 () Bool)

(assert (=> b!2959167 m!3333485))

(declare-fun m!3333487 () Bool)

(assert (=> b!2959172 m!3333487))

(declare-fun m!3333489 () Bool)

(assert (=> b!2959172 m!3333489))

(declare-fun m!3333491 () Bool)

(assert (=> b!2959172 m!3333491))

(declare-fun m!3333493 () Bool)

(assert (=> b!2959172 m!3333493))

(declare-fun m!3333495 () Bool)

(assert (=> b!2959169 m!3333495))

(declare-fun m!3333497 () Bool)

(assert (=> start!286796 m!3333497))

(declare-fun m!3333499 () Bool)

(assert (=> b!2959168 m!3333499))

(declare-fun m!3333501 () Bool)

(assert (=> b!2959173 m!3333501))

(declare-fun m!3333503 () Bool)

(assert (=> b!2959161 m!3333503))

(declare-fun m!3333505 () Bool)

(assert (=> b!2959160 m!3333505))

(declare-fun m!3333507 () Bool)

(assert (=> b!2959166 m!3333507))

(declare-fun m!3333509 () Bool)

(assert (=> b!2959166 m!3333509))

(declare-fun m!3333511 () Bool)

(assert (=> b!2959166 m!3333511))

(declare-fun m!3333513 () Bool)

(assert (=> b!2959162 m!3333513))

(declare-fun m!3333515 () Bool)

(assert (=> b!2959162 m!3333515))

(declare-fun m!3333517 () Bool)

(assert (=> b!2959162 m!3333517))

(declare-fun m!3333519 () Bool)

(assert (=> b!2959162 m!3333519))

(assert (=> b!2959162 m!3333513))

(declare-fun m!3333521 () Bool)

(assert (=> b!2959162 m!3333521))

(declare-fun m!3333523 () Bool)

(assert (=> b!2959162 m!3333523))

(declare-fun m!3333525 () Bool)

(assert (=> b!2959162 m!3333525))

(declare-fun m!3333527 () Bool)

(assert (=> b!2959162 m!3333527))

(check-sat (not b!2959162) (not b!2959163) (not b!2959169) (not b!2959160) (not b!2959172) (not b!2959165) (not b!2959166) (not b!2959170) (not b!2959167) tp_is_empty!15921 (not b!2959168) (not b!2959161) (not start!286796) (not b!2959173) (not b!2959164))
(check-sat)
