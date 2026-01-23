; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532124 () Bool)

(assert start!532124)

(declare-fun res!2144134 () Bool)

(declare-fun e!3142880 () Bool)

(assert (=> start!532124 (=> (not res!2144134) (not e!3142880))))

(declare-fun i!879 () Int)

(assert (=> start!532124 (= res!2144134 (>= i!879 0))))

(assert (=> start!532124 e!3142880))

(assert (=> start!532124 true))

(declare-fun e!3142879 () Bool)

(assert (=> start!532124 e!3142879))

(declare-fun b!5031034 () Bool)

(declare-fun e!3142883 () Bool)

(declare-datatypes ((B!3089 0))(
  ( (B!3090 (val!23456 Int)) )
))
(declare-datatypes ((List!58359 0))(
  ( (Nil!58235) (Cons!58235 (h!64683 B!3089) (t!370775 List!58359)) )
))
(declare-fun lt!2082039 () List!58359)

(declare-fun l!2999 () List!58359)

(declare-fun ListPrimitiveSize!381 (List!58359) Int)

(assert (=> b!5031034 (= e!3142883 (>= (ListPrimitiveSize!381 lt!2082039) (ListPrimitiveSize!381 l!2999)))))

(declare-fun b!5031035 () Bool)

(declare-fun e!3142881 () Bool)

(assert (=> b!5031035 (= e!3142881 e!3142883)))

(declare-fun res!2144132 () Bool)

(assert (=> b!5031035 (=> (not res!2144132) (not e!3142883))))

(declare-fun lt!2082041 () Int)

(declare-fun j!102 () Int)

(assert (=> b!5031035 (= res!2144132 (and (< (- i!879 1) lt!2082041) (<= j!102 (- (- lt!2082041 (- i!879 1)) 1))))))

(declare-fun size!38774 (List!58359) Int)

(assert (=> b!5031035 (= lt!2082041 (size!38774 lt!2082039))))

(declare-fun b!5031036 () Bool)

(declare-fun tp_is_empty!36711 () Bool)

(declare-fun tp!1409508 () Bool)

(assert (=> b!5031036 (= e!3142879 (and tp_is_empty!36711 tp!1409508))))

(declare-fun b!5031037 () Bool)

(declare-fun e!3142882 () Bool)

(assert (=> b!5031037 (= e!3142882 e!3142881)))

(declare-fun res!2144133 () Bool)

(assert (=> b!5031037 (=> (not res!2144133) (not e!3142881))))

(assert (=> b!5031037 (= res!2144133 (>= (- i!879 1) 0))))

(declare-fun tail!9936 (List!58359) List!58359)

(assert (=> b!5031037 (= lt!2082039 (tail!9936 l!2999))))

(declare-fun b!5031038 () Bool)

(assert (=> b!5031038 (= e!3142880 e!3142882)))

(declare-fun res!2144135 () Bool)

(assert (=> b!5031038 (=> (not res!2144135) (not e!3142882))))

(declare-fun lt!2082040 () Int)

(assert (=> b!5031038 (= res!2144135 (and (< i!879 lt!2082040) (>= j!102 0) (<= j!102 (- (- lt!2082040 i!879) 1)) (not (= i!879 0))))))

(assert (=> b!5031038 (= lt!2082040 (size!38774 l!2999))))

(assert (= (and start!532124 res!2144134) b!5031038))

(assert (= (and b!5031038 res!2144135) b!5031037))

(assert (= (and b!5031037 res!2144133) b!5031035))

(assert (= (and b!5031035 res!2144132) b!5031034))

(get-info :version)

(assert (= (and start!532124 ((_ is Cons!58235) l!2999)) b!5031036))

(declare-fun m!6066184 () Bool)

(assert (=> b!5031034 m!6066184))

(declare-fun m!6066186 () Bool)

(assert (=> b!5031034 m!6066186))

(declare-fun m!6066188 () Bool)

(assert (=> b!5031035 m!6066188))

(declare-fun m!6066190 () Bool)

(assert (=> b!5031037 m!6066190))

(declare-fun m!6066192 () Bool)

(assert (=> b!5031038 m!6066192))

(check-sat (not b!5031034) (not b!5031037) (not b!5031035) (not b!5031038) tp_is_empty!36711 (not b!5031036))
(check-sat)
(get-model)

(declare-fun d!1619053 () Bool)

(declare-fun lt!2082044 () Int)

(assert (=> d!1619053 (>= lt!2082044 0)))

(declare-fun e!3142886 () Int)

(assert (=> d!1619053 (= lt!2082044 e!3142886)))

(declare-fun c!861339 () Bool)

(assert (=> d!1619053 (= c!861339 ((_ is Nil!58235) lt!2082039))))

(assert (=> d!1619053 (= (ListPrimitiveSize!381 lt!2082039) lt!2082044)))

(declare-fun b!5031043 () Bool)

(assert (=> b!5031043 (= e!3142886 0)))

(declare-fun b!5031044 () Bool)

(assert (=> b!5031044 (= e!3142886 (+ 1 (ListPrimitiveSize!381 (t!370775 lt!2082039))))))

(assert (= (and d!1619053 c!861339) b!5031043))

(assert (= (and d!1619053 (not c!861339)) b!5031044))

(declare-fun m!6066194 () Bool)

(assert (=> b!5031044 m!6066194))

(assert (=> b!5031034 d!1619053))

(declare-fun d!1619055 () Bool)

(declare-fun lt!2082045 () Int)

(assert (=> d!1619055 (>= lt!2082045 0)))

(declare-fun e!3142887 () Int)

(assert (=> d!1619055 (= lt!2082045 e!3142887)))

(declare-fun c!861340 () Bool)

(assert (=> d!1619055 (= c!861340 ((_ is Nil!58235) l!2999))))

(assert (=> d!1619055 (= (ListPrimitiveSize!381 l!2999) lt!2082045)))

(declare-fun b!5031045 () Bool)

(assert (=> b!5031045 (= e!3142887 0)))

(declare-fun b!5031046 () Bool)

(assert (=> b!5031046 (= e!3142887 (+ 1 (ListPrimitiveSize!381 (t!370775 l!2999))))))

(assert (= (and d!1619055 c!861340) b!5031045))

(assert (= (and d!1619055 (not c!861340)) b!5031046))

(declare-fun m!6066196 () Bool)

(assert (=> b!5031046 m!6066196))

(assert (=> b!5031034 d!1619055))

(declare-fun d!1619057 () Bool)

(declare-fun lt!2082048 () Int)

(assert (=> d!1619057 (>= lt!2082048 0)))

(declare-fun e!3142890 () Int)

(assert (=> d!1619057 (= lt!2082048 e!3142890)))

(declare-fun c!861343 () Bool)

(assert (=> d!1619057 (= c!861343 ((_ is Nil!58235) l!2999))))

(assert (=> d!1619057 (= (size!38774 l!2999) lt!2082048)))

(declare-fun b!5031051 () Bool)

(assert (=> b!5031051 (= e!3142890 0)))

(declare-fun b!5031052 () Bool)

(assert (=> b!5031052 (= e!3142890 (+ 1 (size!38774 (t!370775 l!2999))))))

(assert (= (and d!1619057 c!861343) b!5031051))

(assert (= (and d!1619057 (not c!861343)) b!5031052))

(declare-fun m!6066198 () Bool)

(assert (=> b!5031052 m!6066198))

(assert (=> b!5031038 d!1619057))

(declare-fun d!1619061 () Bool)

(assert (=> d!1619061 (= (tail!9936 l!2999) (t!370775 l!2999))))

(assert (=> b!5031037 d!1619061))

(declare-fun d!1619063 () Bool)

(declare-fun lt!2082049 () Int)

(assert (=> d!1619063 (>= lt!2082049 0)))

(declare-fun e!3142891 () Int)

(assert (=> d!1619063 (= lt!2082049 e!3142891)))

(declare-fun c!861344 () Bool)

(assert (=> d!1619063 (= c!861344 ((_ is Nil!58235) lt!2082039))))

(assert (=> d!1619063 (= (size!38774 lt!2082039) lt!2082049)))

(declare-fun b!5031053 () Bool)

(assert (=> b!5031053 (= e!3142891 0)))

(declare-fun b!5031054 () Bool)

(assert (=> b!5031054 (= e!3142891 (+ 1 (size!38774 (t!370775 lt!2082039))))))

(assert (= (and d!1619063 c!861344) b!5031053))

(assert (= (and d!1619063 (not c!861344)) b!5031054))

(declare-fun m!6066200 () Bool)

(assert (=> b!5031054 m!6066200))

(assert (=> b!5031035 d!1619063))

(declare-fun b!5031063 () Bool)

(declare-fun e!3142896 () Bool)

(declare-fun tp!1409511 () Bool)

(assert (=> b!5031063 (= e!3142896 (and tp_is_empty!36711 tp!1409511))))

(assert (=> b!5031036 (= tp!1409508 e!3142896)))

(assert (= (and b!5031036 ((_ is Cons!58235) (t!370775 l!2999))) b!5031063))

(check-sat (not b!5031063) (not b!5031044) tp_is_empty!36711 (not b!5031046) (not b!5031054) (not b!5031052))
(check-sat)
