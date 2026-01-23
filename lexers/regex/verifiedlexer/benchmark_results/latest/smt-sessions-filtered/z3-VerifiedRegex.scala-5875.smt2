; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288096 () Bool)

(assert start!288096)

(declare-fun b!2980786 () Bool)

(assert (=> b!2980786 true))

(assert (=> b!2980786 true))

(assert (=> b!2980786 true))

(declare-fun lambda!111152 () Int)

(declare-fun lambda!111151 () Int)

(assert (=> b!2980786 (not (= lambda!111152 lambda!111151))))

(assert (=> b!2980786 true))

(assert (=> b!2980786 true))

(assert (=> b!2980786 true))

(declare-fun b!2980785 () Bool)

(declare-fun e!1874704 () Bool)

(declare-fun e!1874711 () Bool)

(assert (=> b!2980785 (= e!1874704 (not e!1874711))))

(declare-fun res!1229167 () Bool)

(assert (=> b!2980785 (=> res!1229167 e!1874711)))

(declare-fun lt!1037981 () Bool)

(declare-datatypes ((C!18788 0))(
  ( (C!18789 (val!11430 Int)) )
))
(declare-datatypes ((Regex!9301 0))(
  ( (ElementMatch!9301 (c!489597 C!18788)) (Concat!14622 (regOne!19114 Regex!9301) (regTwo!19114 Regex!9301)) (EmptyExpr!9301) (Star!9301 (reg!9630 Regex!9301)) (EmptyLang!9301) (Union!9301 (regOne!19115 Regex!9301) (regTwo!19115 Regex!9301)) )
))
(declare-fun r!17423 () Regex!9301)

(get-info :version)

(assert (=> b!2980785 (= res!1229167 (or lt!1037981 ((_ is Concat!14622) r!17423) ((_ is Union!9301) r!17423) (not ((_ is Star!9301) r!17423))))))

(declare-datatypes ((List!35166 0))(
  ( (Nil!35042) (Cons!35042 (h!40462 C!18788) (t!234231 List!35166)) )
))
(declare-fun s!11993 () List!35166)

(declare-fun matchRSpec!1438 (Regex!9301 List!35166) Bool)

(assert (=> b!2980785 (= lt!1037981 (matchRSpec!1438 r!17423 s!11993))))

(declare-fun matchR!4183 (Regex!9301 List!35166) Bool)

(assert (=> b!2980785 (= lt!1037981 (matchR!4183 r!17423 s!11993))))

(declare-datatypes ((Unit!48981 0))(
  ( (Unit!48982) )
))
(declare-fun lt!1037990 () Unit!48981)

(declare-fun mainMatchTheorem!1438 (Regex!9301 List!35166) Unit!48981)

(assert (=> b!2980785 (= lt!1037990 (mainMatchTheorem!1438 r!17423 s!11993))))

(declare-fun e!1874709 () Bool)

(declare-fun e!1874707 () Bool)

(assert (=> b!2980786 (= e!1874709 e!1874707)))

(declare-fun res!1229165 () Bool)

(assert (=> b!2980786 (=> res!1229165 e!1874707)))

(declare-fun lt!1037984 () Bool)

(assert (=> b!2980786 (= res!1229165 (not lt!1037984))))

(declare-fun Exists!1581 (Int) Bool)

(assert (=> b!2980786 (= (Exists!1581 lambda!111151) (Exists!1581 lambda!111152))))

(declare-fun lt!1037982 () Unit!48981)

(declare-fun lt!1037985 () Regex!9301)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!266 (Regex!9301 List!35166) Unit!48981)

(assert (=> b!2980786 (= lt!1037982 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!266 lt!1037985 s!11993))))

(assert (=> b!2980786 (= lt!1037984 (Exists!1581 lambda!111151))))

(declare-datatypes ((tuple2!33940 0))(
  ( (tuple2!33941 (_1!20102 List!35166) (_2!20102 List!35166)) )
))
(declare-datatypes ((Option!6702 0))(
  ( (None!6701) (Some!6701 (v!34835 tuple2!33940)) )
))
(declare-fun lt!1037986 () Option!6702)

(declare-fun isDefined!5253 (Option!6702) Bool)

(assert (=> b!2980786 (= lt!1037984 (isDefined!5253 lt!1037986))))

(declare-fun lt!1037988 () Regex!9301)

(declare-fun findConcatSeparation!1096 (Regex!9301 Regex!9301 List!35166 List!35166 List!35166) Option!6702)

(assert (=> b!2980786 (= lt!1037986 (findConcatSeparation!1096 lt!1037985 lt!1037988 Nil!35042 s!11993 s!11993))))

(declare-fun lt!1037983 () Unit!48981)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!874 (Regex!9301 Regex!9301 List!35166) Unit!48981)

(assert (=> b!2980786 (= lt!1037983 (lemmaFindConcatSeparationEquivalentToExists!874 lt!1037985 lt!1037988 s!11993))))

(declare-fun b!2980788 () Bool)

(declare-fun e!1874708 () Bool)

(assert (=> b!2980788 (= e!1874708 true)))

(declare-fun b!2980789 () Bool)

(declare-fun e!1874706 () Bool)

(declare-fun tp_is_empty!16165 () Bool)

(assert (=> b!2980789 (= e!1874706 tp_is_empty!16165)))

(declare-fun b!2980790 () Bool)

(declare-fun e!1874710 () Bool)

(declare-fun e!1874705 () Bool)

(assert (=> b!2980790 (= e!1874710 e!1874705)))

(declare-fun res!1229168 () Bool)

(assert (=> b!2980790 (=> res!1229168 e!1874705)))

(assert (=> b!2980790 (= res!1229168 (not (matchR!4183 lt!1037988 s!11993)))))

(assert (=> b!2980790 (= lt!1037988 (Star!9301 lt!1037985))))

(declare-fun b!2980791 () Bool)

(assert (=> b!2980791 (= e!1874711 e!1874710)))

(declare-fun res!1229164 () Bool)

(assert (=> b!2980791 (=> res!1229164 e!1874710)))

(declare-fun isEmptyLang!415 (Regex!9301) Bool)

(assert (=> b!2980791 (= res!1229164 (isEmptyLang!415 lt!1037985))))

(declare-fun simplify!302 (Regex!9301) Regex!9301)

(assert (=> b!2980791 (= lt!1037985 (simplify!302 (reg!9630 r!17423)))))

(declare-fun b!2980792 () Bool)

(assert (=> b!2980792 (= e!1874707 e!1874708)))

(declare-fun res!1229166 () Bool)

(assert (=> b!2980792 (=> res!1229166 e!1874708)))

(declare-fun lt!1037987 () tuple2!33940)

(assert (=> b!2980792 (= res!1229166 (not (matchR!4183 lt!1037985 (_1!20102 lt!1037987))))))

(declare-fun get!10820 (Option!6702) tuple2!33940)

(assert (=> b!2980792 (= lt!1037987 (get!10820 lt!1037986))))

(declare-fun b!2980793 () Bool)

(declare-fun tp!949044 () Bool)

(declare-fun tp!949045 () Bool)

(assert (=> b!2980793 (= e!1874706 (and tp!949044 tp!949045))))

(declare-fun b!2980794 () Bool)

(declare-fun tp!949048 () Bool)

(assert (=> b!2980794 (= e!1874706 tp!949048)))

(declare-fun b!2980795 () Bool)

(declare-fun e!1874703 () Bool)

(declare-fun tp!949047 () Bool)

(assert (=> b!2980795 (= e!1874703 (and tp_is_empty!16165 tp!949047))))

(declare-fun b!2980787 () Bool)

(declare-fun res!1229169 () Bool)

(assert (=> b!2980787 (=> res!1229169 e!1874708)))

(assert (=> b!2980787 (= res!1229169 (not (matchR!4183 lt!1037988 (_2!20102 lt!1037987))))))

(declare-fun res!1229170 () Bool)

(assert (=> start!288096 (=> (not res!1229170) (not e!1874704))))

(declare-fun validRegex!4034 (Regex!9301) Bool)

(assert (=> start!288096 (= res!1229170 (validRegex!4034 r!17423))))

(assert (=> start!288096 e!1874704))

(assert (=> start!288096 e!1874706))

(assert (=> start!288096 e!1874703))

(declare-fun b!2980796 () Bool)

(assert (=> b!2980796 (= e!1874705 e!1874709)))

(declare-fun res!1229163 () Bool)

(assert (=> b!2980796 (=> res!1229163 e!1874709)))

(declare-fun isEmpty!19299 (List!35166) Bool)

(assert (=> b!2980796 (= res!1229163 (isEmpty!19299 s!11993))))

(assert (=> b!2980796 (matchRSpec!1438 lt!1037988 s!11993)))

(declare-fun lt!1037989 () Unit!48981)

(assert (=> b!2980796 (= lt!1037989 (mainMatchTheorem!1438 lt!1037988 s!11993))))

(declare-fun b!2980797 () Bool)

(declare-fun tp!949046 () Bool)

(declare-fun tp!949049 () Bool)

(assert (=> b!2980797 (= e!1874706 (and tp!949046 tp!949049))))

(assert (= (and start!288096 res!1229170) b!2980785))

(assert (= (and b!2980785 (not res!1229167)) b!2980791))

(assert (= (and b!2980791 (not res!1229164)) b!2980790))

(assert (= (and b!2980790 (not res!1229168)) b!2980796))

(assert (= (and b!2980796 (not res!1229163)) b!2980786))

(assert (= (and b!2980786 (not res!1229165)) b!2980792))

(assert (= (and b!2980792 (not res!1229166)) b!2980787))

(assert (= (and b!2980787 (not res!1229169)) b!2980788))

(assert (= (and start!288096 ((_ is ElementMatch!9301) r!17423)) b!2980789))

(assert (= (and start!288096 ((_ is Concat!14622) r!17423)) b!2980793))

(assert (= (and start!288096 ((_ is Star!9301) r!17423)) b!2980794))

(assert (= (and start!288096 ((_ is Union!9301) r!17423)) b!2980797))

(assert (= (and start!288096 ((_ is Cons!35042) s!11993)) b!2980795))

(declare-fun m!3342071 () Bool)

(assert (=> b!2980796 m!3342071))

(declare-fun m!3342073 () Bool)

(assert (=> b!2980796 m!3342073))

(declare-fun m!3342075 () Bool)

(assert (=> b!2980796 m!3342075))

(declare-fun m!3342077 () Bool)

(assert (=> start!288096 m!3342077))

(declare-fun m!3342079 () Bool)

(assert (=> b!2980787 m!3342079))

(declare-fun m!3342081 () Bool)

(assert (=> b!2980786 m!3342081))

(declare-fun m!3342083 () Bool)

(assert (=> b!2980786 m!3342083))

(assert (=> b!2980786 m!3342083))

(declare-fun m!3342085 () Bool)

(assert (=> b!2980786 m!3342085))

(declare-fun m!3342087 () Bool)

(assert (=> b!2980786 m!3342087))

(declare-fun m!3342089 () Bool)

(assert (=> b!2980786 m!3342089))

(declare-fun m!3342091 () Bool)

(assert (=> b!2980786 m!3342091))

(declare-fun m!3342093 () Bool)

(assert (=> b!2980792 m!3342093))

(declare-fun m!3342095 () Bool)

(assert (=> b!2980792 m!3342095))

(declare-fun m!3342097 () Bool)

(assert (=> b!2980790 m!3342097))

(declare-fun m!3342099 () Bool)

(assert (=> b!2980791 m!3342099))

(declare-fun m!3342101 () Bool)

(assert (=> b!2980791 m!3342101))

(declare-fun m!3342103 () Bool)

(assert (=> b!2980785 m!3342103))

(declare-fun m!3342105 () Bool)

(assert (=> b!2980785 m!3342105))

(declare-fun m!3342107 () Bool)

(assert (=> b!2980785 m!3342107))

(check-sat (not b!2980794) (not b!2980790) (not start!288096) (not b!2980797) (not b!2980791) (not b!2980793) (not b!2980786) (not b!2980795) tp_is_empty!16165 (not b!2980792) (not b!2980796) (not b!2980785) (not b!2980787))
(check-sat)
