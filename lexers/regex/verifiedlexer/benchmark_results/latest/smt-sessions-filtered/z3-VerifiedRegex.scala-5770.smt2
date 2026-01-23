; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285556 () Bool)

(assert start!285556)

(declare-fun b!2939894 () Bool)

(declare-fun e!1852880 () Bool)

(declare-fun tp_is_empty!15745 () Bool)

(declare-fun tp!941012 () Bool)

(assert (=> b!2939894 (= e!1852880 (and tp_is_empty!15745 tp!941012))))

(declare-fun res!1213421 () Bool)

(declare-fun e!1852877 () Bool)

(assert (=> start!285556 (=> (not res!1213421) (not e!1852877))))

(declare-datatypes ((C!18368 0))(
  ( (C!18369 (val!11220 Int)) )
))
(declare-datatypes ((Regex!9091 0))(
  ( (ElementMatch!9091 (c!480623 C!18368)) (Concat!14412 (regOne!18694 Regex!9091) (regTwo!18694 Regex!9091)) (EmptyExpr!9091) (Star!9091 (reg!9420 Regex!9091)) (EmptyLang!9091) (Union!9091 (regOne!18695 Regex!9091) (regTwo!18695 Regex!9091)) )
))
(declare-fun r!17423 () Regex!9091)

(declare-fun validRegex!3824 (Regex!9091) Bool)

(assert (=> start!285556 (= res!1213421 (validRegex!3824 r!17423))))

(assert (=> start!285556 e!1852877))

(declare-fun e!1852878 () Bool)

(assert (=> start!285556 e!1852878))

(assert (=> start!285556 e!1852880))

(declare-fun b!2939895 () Bool)

(declare-fun tp!941010 () Bool)

(assert (=> b!2939895 (= e!1852878 tp!941010)))

(declare-fun b!2939896 () Bool)

(declare-fun e!1852879 () Bool)

(assert (=> b!2939896 (= e!1852877 (not e!1852879))))

(declare-fun res!1213420 () Bool)

(assert (=> b!2939896 (=> res!1213420 e!1852879)))

(declare-fun lt!1029862 () Bool)

(get-info :version)

(assert (=> b!2939896 (= res!1213420 (or lt!1029862 (not ((_ is Concat!14412) r!17423))))))

(declare-datatypes ((List!34956 0))(
  ( (Nil!34832) (Cons!34832 (h!40252 C!18368) (t!234021 List!34956)) )
))
(declare-fun s!11993 () List!34956)

(declare-fun matchRSpec!1228 (Regex!9091 List!34956) Bool)

(assert (=> b!2939896 (= lt!1029862 (matchRSpec!1228 r!17423 s!11993))))

(declare-fun matchR!3973 (Regex!9091 List!34956) Bool)

(assert (=> b!2939896 (= lt!1029862 (matchR!3973 r!17423 s!11993))))

(declare-datatypes ((Unit!48561 0))(
  ( (Unit!48562) )
))
(declare-fun lt!1029859 () Unit!48561)

(declare-fun mainMatchTheorem!1228 (Regex!9091 List!34956) Unit!48561)

(assert (=> b!2939896 (= lt!1029859 (mainMatchTheorem!1228 r!17423 s!11993))))

(declare-fun b!2939897 () Bool)

(declare-fun tp!941011 () Bool)

(declare-fun tp!941009 () Bool)

(assert (=> b!2939897 (= e!1852878 (and tp!941011 tp!941009))))

(declare-fun b!2939898 () Bool)

(declare-fun e!1852881 () Bool)

(assert (=> b!2939898 (= e!1852879 e!1852881)))

(declare-fun res!1213419 () Bool)

(assert (=> b!2939898 (=> res!1213419 e!1852881)))

(declare-fun lt!1029861 () Regex!9091)

(declare-fun isEmptyLang!217 (Regex!9091) Bool)

(assert (=> b!2939898 (= res!1213419 (isEmptyLang!217 lt!1029861))))

(declare-fun lt!1029863 () Regex!9091)

(declare-fun simplify!96 (Regex!9091) Regex!9091)

(assert (=> b!2939898 (= lt!1029863 (simplify!96 (regTwo!18694 r!17423)))))

(assert (=> b!2939898 (= lt!1029861 (simplify!96 (regOne!18694 r!17423)))))

(declare-fun b!2939899 () Bool)

(declare-fun res!1213422 () Bool)

(assert (=> b!2939899 (=> res!1213422 e!1852881)))

(assert (=> b!2939899 (= res!1213422 (not (isEmptyLang!217 lt!1029863)))))

(declare-fun b!2939900 () Bool)

(declare-fun res!1213418 () Bool)

(assert (=> b!2939900 (=> res!1213418 e!1852879)))

(declare-fun isEmpty!19093 (List!34956) Bool)

(assert (=> b!2939900 (= res!1213418 (isEmpty!19093 s!11993))))

(declare-fun b!2939901 () Bool)

(assert (=> b!2939901 (= e!1852878 tp_is_empty!15745)))

(declare-fun b!2939902 () Bool)

(assert (=> b!2939902 (= e!1852881 true)))

(assert (=> b!2939902 (= (matchR!3973 (regTwo!18694 r!17423) s!11993) (matchR!3973 lt!1029863 s!11993))))

(declare-fun lt!1029860 () Unit!48561)

(declare-fun lemmaSimplifySound!82 (Regex!9091 List!34956) Unit!48561)

(assert (=> b!2939902 (= lt!1029860 (lemmaSimplifySound!82 (regTwo!18694 r!17423) s!11993))))

(declare-fun b!2939903 () Bool)

(declare-fun tp!941008 () Bool)

(declare-fun tp!941013 () Bool)

(assert (=> b!2939903 (= e!1852878 (and tp!941008 tp!941013))))

(assert (= (and start!285556 res!1213421) b!2939896))

(assert (= (and b!2939896 (not res!1213420)) b!2939900))

(assert (= (and b!2939900 (not res!1213418)) b!2939898))

(assert (= (and b!2939898 (not res!1213419)) b!2939899))

(assert (= (and b!2939899 (not res!1213422)) b!2939902))

(assert (= (and start!285556 ((_ is ElementMatch!9091) r!17423)) b!2939901))

(assert (= (and start!285556 ((_ is Concat!14412) r!17423)) b!2939897))

(assert (= (and start!285556 ((_ is Star!9091) r!17423)) b!2939895))

(assert (= (and start!285556 ((_ is Union!9091) r!17423)) b!2939903))

(assert (= (and start!285556 ((_ is Cons!34832) s!11993)) b!2939894))

(declare-fun m!3324997 () Bool)

(assert (=> b!2939898 m!3324997))

(declare-fun m!3324999 () Bool)

(assert (=> b!2939898 m!3324999))

(declare-fun m!3325001 () Bool)

(assert (=> b!2939898 m!3325001))

(declare-fun m!3325003 () Bool)

(assert (=> b!2939896 m!3325003))

(declare-fun m!3325005 () Bool)

(assert (=> b!2939896 m!3325005))

(declare-fun m!3325007 () Bool)

(assert (=> b!2939896 m!3325007))

(declare-fun m!3325009 () Bool)

(assert (=> b!2939902 m!3325009))

(declare-fun m!3325011 () Bool)

(assert (=> b!2939902 m!3325011))

(declare-fun m!3325013 () Bool)

(assert (=> b!2939902 m!3325013))

(declare-fun m!3325015 () Bool)

(assert (=> start!285556 m!3325015))

(declare-fun m!3325017 () Bool)

(assert (=> b!2939899 m!3325017))

(declare-fun m!3325019 () Bool)

(assert (=> b!2939900 m!3325019))

(check-sat (not b!2939903) (not b!2939900) (not b!2939898) (not b!2939899) (not b!2939902) (not b!2939895) (not b!2939897) (not start!285556) (not b!2939894) (not b!2939896) tp_is_empty!15745)
(check-sat)
