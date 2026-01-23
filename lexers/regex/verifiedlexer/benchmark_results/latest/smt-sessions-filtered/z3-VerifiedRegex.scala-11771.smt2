; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664090 () Bool)

(assert start!664090)

(declare-fun b!6886097 () Bool)

(assert (=> b!6886097 true))

(assert (=> b!6886097 true))

(assert (=> b!6886097 true))

(declare-fun lambda!390008 () Int)

(declare-fun lambda!390007 () Int)

(assert (=> b!6886097 (not (= lambda!390008 lambda!390007))))

(assert (=> b!6886097 true))

(assert (=> b!6886097 true))

(assert (=> b!6886097 true))

(declare-fun bs!1838617 () Bool)

(declare-fun b!6886100 () Bool)

(assert (= bs!1838617 (and b!6886100 b!6886097)))

(declare-datatypes ((C!33848 0))(
  ( (C!33849 (val!26626 Int)) )
))
(declare-datatypes ((List!66546 0))(
  ( (Nil!66422) (Cons!66422 (h!72870 C!33848) (t!380289 List!66546)) )
))
(declare-datatypes ((tuple2!67324 0))(
  ( (tuple2!67325 (_1!36965 List!66546) (_2!36965 List!66546)) )
))
(declare-fun lt!2461132 () tuple2!67324)

(declare-datatypes ((Regex!16789 0))(
  ( (ElementMatch!16789 (c!1280621 C!33848)) (Concat!25634 (regOne!34090 Regex!16789) (regTwo!34090 Regex!16789)) (EmptyExpr!16789) (Star!16789 (reg!17118 Regex!16789)) (EmptyLang!16789) (Union!16789 (regOne!34091 Regex!16789) (regTwo!34091 Regex!16789)) )
))
(declare-fun r1!6342 () Regex!16789)

(declare-fun lambda!390009 () Int)

(declare-fun r3!135 () Regex!16789)

(declare-fun s!14361 () List!66546)

(declare-fun r2!6280 () Regex!16789)

(declare-fun lt!2461126 () Regex!16789)

(assert (=> bs!1838617 (= (and (= (_1!36965 lt!2461132) s!14361) (= r1!6342 lt!2461126) (= r2!6280 r3!135)) (= lambda!390009 lambda!390007))))

(assert (=> bs!1838617 (not (= lambda!390009 lambda!390008))))

(assert (=> b!6886100 true))

(assert (=> b!6886100 true))

(assert (=> b!6886100 true))

(declare-fun lambda!390010 () Int)

(assert (=> bs!1838617 (not (= lambda!390010 lambda!390007))))

(assert (=> bs!1838617 (= (and (= (_1!36965 lt!2461132) s!14361) (= r1!6342 lt!2461126) (= r2!6280 r3!135)) (= lambda!390010 lambda!390008))))

(assert (=> b!6886100 (not (= lambda!390010 lambda!390009))))

(assert (=> b!6886100 true))

(assert (=> b!6886100 true))

(assert (=> b!6886100 true))

(declare-fun b!6886090 () Bool)

(declare-fun e!4148949 () Bool)

(declare-fun e!4148951 () Bool)

(assert (=> b!6886090 (= e!4148949 e!4148951)))

(declare-fun res!2807181 () Bool)

(assert (=> b!6886090 (=> res!2807181 e!4148951)))

(declare-fun lt!2461128 () tuple2!67324)

(declare-fun ++!14868 (List!66546 List!66546) List!66546)

(assert (=> b!6886090 (= res!2807181 (not (= (++!14868 (++!14868 (_1!36965 lt!2461128) (_2!36965 lt!2461128)) (_2!36965 lt!2461132)) s!14361)))))

(declare-fun matchRSpec!3852 (Regex!16789 List!66546) Bool)

(assert (=> b!6886090 (matchRSpec!3852 r2!6280 (_2!36965 lt!2461128))))

(declare-datatypes ((Unit!160298 0))(
  ( (Unit!160299) )
))
(declare-fun lt!2461141 () Unit!160298)

(declare-fun mainMatchTheorem!3852 (Regex!16789 List!66546) Unit!160298)

(assert (=> b!6886090 (= lt!2461141 (mainMatchTheorem!3852 r2!6280 (_2!36965 lt!2461128)))))

(assert (=> b!6886090 (matchRSpec!3852 r1!6342 (_1!36965 lt!2461128))))

(declare-fun lt!2461143 () Unit!160298)

(assert (=> b!6886090 (= lt!2461143 (mainMatchTheorem!3852 r1!6342 (_1!36965 lt!2461128)))))

(declare-fun b!6886091 () Bool)

(declare-fun e!4148948 () Bool)

(declare-fun tp_is_empty!42803 () Bool)

(assert (=> b!6886091 (= e!4148948 tp_is_empty!42803)))

(declare-fun b!6886092 () Bool)

(declare-fun res!2807178 () Bool)

(assert (=> b!6886092 (=> res!2807178 e!4148949)))

(declare-fun matchR!8934 (Regex!16789 List!66546) Bool)

(assert (=> b!6886092 (= res!2807178 (not (matchR!8934 r2!6280 (_2!36965 lt!2461128))))))

(declare-fun b!6886093 () Bool)

(declare-fun tp!1894443 () Bool)

(declare-fun tp!1894450 () Bool)

(assert (=> b!6886093 (= e!4148948 (and tp!1894443 tp!1894450))))

(declare-fun b!6886094 () Bool)

(declare-fun res!2807186 () Bool)

(declare-fun e!4148950 () Bool)

(assert (=> b!6886094 (=> res!2807186 e!4148950)))

(assert (=> b!6886094 (= res!2807186 (not (matchR!8934 r3!135 (_2!36965 lt!2461132))))))

(declare-fun b!6886095 () Bool)

(declare-fun e!4148956 () Bool)

(declare-fun tp!1894453 () Bool)

(declare-fun tp!1894446 () Bool)

(assert (=> b!6886095 (= e!4148956 (and tp!1894453 tp!1894446))))

(declare-fun b!6886096 () Bool)

(declare-fun tp!1894454 () Bool)

(declare-fun tp!1894442 () Bool)

(assert (=> b!6886096 (= e!4148956 (and tp!1894454 tp!1894442))))

(declare-fun e!4148953 () Bool)

(assert (=> b!6886097 (= e!4148953 e!4148950)))

(declare-fun res!2807180 () Bool)

(assert (=> b!6886097 (=> res!2807180 e!4148950)))

(declare-fun lt!2461123 () Bool)

(assert (=> b!6886097 (= res!2807180 (not lt!2461123))))

(assert (=> b!6886097 (= lt!2461123 (matchRSpec!3852 lt!2461126 (_1!36965 lt!2461132)))))

(assert (=> b!6886097 (= lt!2461123 (matchR!8934 lt!2461126 (_1!36965 lt!2461132)))))

(declare-fun lt!2461130 () Unit!160298)

(assert (=> b!6886097 (= lt!2461130 (mainMatchTheorem!3852 lt!2461126 (_1!36965 lt!2461132)))))

(declare-datatypes ((Option!16574 0))(
  ( (None!16573) (Some!16573 (v!52845 tuple2!67324)) )
))
(declare-fun lt!2461137 () Option!16574)

(declare-fun get!23146 (Option!16574) tuple2!67324)

(assert (=> b!6886097 (= lt!2461132 (get!23146 lt!2461137))))

(declare-fun Exists!3801 (Int) Bool)

(assert (=> b!6886097 (= (Exists!3801 lambda!390007) (Exists!3801 lambda!390008))))

(declare-fun lt!2461138 () Unit!160298)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2280 (Regex!16789 Regex!16789 List!66546) Unit!160298)

(assert (=> b!6886097 (= lt!2461138 (lemmaExistCutMatchRandMatchRSpecEquivalent!2280 lt!2461126 r3!135 s!14361))))

(declare-fun isDefined!13277 (Option!16574) Bool)

(assert (=> b!6886097 (= (isDefined!13277 lt!2461137) (Exists!3801 lambda!390007))))

(declare-fun findConcatSeparation!2988 (Regex!16789 Regex!16789 List!66546 List!66546 List!66546) Option!16574)

(assert (=> b!6886097 (= lt!2461137 (findConcatSeparation!2988 lt!2461126 r3!135 Nil!66422 s!14361 s!14361))))

(declare-fun lt!2461142 () Unit!160298)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2752 (Regex!16789 Regex!16789 List!66546) Unit!160298)

(assert (=> b!6886097 (= lt!2461142 (lemmaFindConcatSeparationEquivalentToExists!2752 lt!2461126 r3!135 s!14361))))

(declare-fun b!6886098 () Bool)

(declare-fun res!2807182 () Bool)

(declare-fun e!4148952 () Bool)

(assert (=> b!6886098 (=> (not res!2807182) (not e!4148952))))

(declare-fun validRegex!8497 (Regex!16789) Bool)

(assert (=> b!6886098 (= res!2807182 (validRegex!8497 r3!135))))

(declare-fun b!6886099 () Bool)

(declare-fun e!4148954 () Bool)

(declare-fun tp!1894447 () Bool)

(assert (=> b!6886099 (= e!4148954 (and tp_is_empty!42803 tp!1894447))))

(assert (=> b!6886100 (= e!4148950 e!4148949)))

(declare-fun res!2807184 () Bool)

(assert (=> b!6886100 (=> res!2807184 e!4148949)))

(assert (=> b!6886100 (= res!2807184 (not (matchR!8934 r1!6342 (_1!36965 lt!2461128))))))

(declare-fun lt!2461129 () Option!16574)

(assert (=> b!6886100 (= lt!2461128 (get!23146 lt!2461129))))

(assert (=> b!6886100 (= (Exists!3801 lambda!390009) (Exists!3801 lambda!390010))))

(declare-fun lt!2461139 () Unit!160298)

(assert (=> b!6886100 (= lt!2461139 (lemmaExistCutMatchRandMatchRSpecEquivalent!2280 r1!6342 r2!6280 (_1!36965 lt!2461132)))))

(assert (=> b!6886100 (= (isDefined!13277 lt!2461129) (Exists!3801 lambda!390009))))

(assert (=> b!6886100 (= lt!2461129 (findConcatSeparation!2988 r1!6342 r2!6280 Nil!66422 (_1!36965 lt!2461132) (_1!36965 lt!2461132)))))

(declare-fun lt!2461133 () Unit!160298)

(assert (=> b!6886100 (= lt!2461133 (lemmaFindConcatSeparationEquivalentToExists!2752 r1!6342 r2!6280 (_1!36965 lt!2461132)))))

(declare-fun b!6886101 () Bool)

(assert (=> b!6886101 (= e!4148956 tp_is_empty!42803)))

(declare-fun b!6886102 () Bool)

(declare-fun e!4148955 () Bool)

(declare-fun tp!1894451 () Bool)

(declare-fun tp!1894449 () Bool)

(assert (=> b!6886102 (= e!4148955 (and tp!1894451 tp!1894449))))

(declare-fun b!6886103 () Bool)

(declare-fun tp!1894444 () Bool)

(declare-fun tp!1894441 () Bool)

(assert (=> b!6886103 (= e!4148955 (and tp!1894444 tp!1894441))))

(declare-fun b!6886104 () Bool)

(declare-fun tp!1894452 () Bool)

(declare-fun tp!1894448 () Bool)

(assert (=> b!6886104 (= e!4148948 (and tp!1894452 tp!1894448))))

(declare-fun b!6886105 () Bool)

(declare-fun tp!1894445 () Bool)

(assert (=> b!6886105 (= e!4148955 tp!1894445)))

(declare-fun b!6886106 () Bool)

(declare-fun tp!1894455 () Bool)

(assert (=> b!6886106 (= e!4148948 tp!1894455)))

(declare-fun b!6886107 () Bool)

(declare-fun res!2807185 () Bool)

(assert (=> b!6886107 (=> (not res!2807185) (not e!4148952))))

(assert (=> b!6886107 (= res!2807185 (validRegex!8497 r2!6280))))

(declare-fun b!6886108 () Bool)

(declare-fun tp!1894440 () Bool)

(assert (=> b!6886108 (= e!4148956 tp!1894440)))

(declare-fun b!6886109 () Bool)

(assert (=> b!6886109 (= e!4148955 tp_is_empty!42803)))

(declare-fun res!2807179 () Bool)

(assert (=> start!664090 (=> (not res!2807179) (not e!4148952))))

(assert (=> start!664090 (= res!2807179 (validRegex!8497 r1!6342))))

(assert (=> start!664090 e!4148952))

(assert (=> start!664090 e!4148955))

(assert (=> start!664090 e!4148948))

(assert (=> start!664090 e!4148956))

(assert (=> start!664090 e!4148954))

(declare-fun b!6886110 () Bool)

(assert (=> b!6886110 (= e!4148951 true)))

(declare-fun lt!2461135 () Regex!16789)

(declare-fun lt!2461127 () List!66546)

(assert (=> b!6886110 (= (matchR!8934 lt!2461135 lt!2461127) (matchRSpec!3852 lt!2461135 lt!2461127))))

(declare-fun lt!2461125 () Unit!160298)

(assert (=> b!6886110 (= lt!2461125 (mainMatchTheorem!3852 lt!2461135 lt!2461127))))

(assert (=> b!6886110 (= lt!2461127 (++!14868 (_2!36965 lt!2461128) (_2!36965 lt!2461132)))))

(declare-fun b!6886111 () Bool)

(assert (=> b!6886111 (= e!4148952 (not e!4148953))))

(declare-fun res!2807183 () Bool)

(assert (=> b!6886111 (=> res!2807183 e!4148953)))

(declare-fun lt!2461124 () Bool)

(assert (=> b!6886111 (= res!2807183 (not lt!2461124))))

(declare-fun lt!2461131 () Regex!16789)

(assert (=> b!6886111 (= (matchR!8934 lt!2461131 s!14361) (matchRSpec!3852 lt!2461131 s!14361))))

(declare-fun lt!2461134 () Unit!160298)

(assert (=> b!6886111 (= lt!2461134 (mainMatchTheorem!3852 lt!2461131 s!14361))))

(declare-fun lt!2461140 () Regex!16789)

(assert (=> b!6886111 (= lt!2461124 (matchRSpec!3852 lt!2461140 s!14361))))

(assert (=> b!6886111 (= lt!2461124 (matchR!8934 lt!2461140 s!14361))))

(declare-fun lt!2461136 () Unit!160298)

(assert (=> b!6886111 (= lt!2461136 (mainMatchTheorem!3852 lt!2461140 s!14361))))

(assert (=> b!6886111 (= lt!2461131 (Concat!25634 r1!6342 lt!2461135))))

(assert (=> b!6886111 (= lt!2461135 (Concat!25634 r2!6280 r3!135))))

(assert (=> b!6886111 (= lt!2461140 (Concat!25634 lt!2461126 r3!135))))

(assert (=> b!6886111 (= lt!2461126 (Concat!25634 r1!6342 r2!6280))))

(assert (= (and start!664090 res!2807179) b!6886107))

(assert (= (and b!6886107 res!2807185) b!6886098))

(assert (= (and b!6886098 res!2807182) b!6886111))

(assert (= (and b!6886111 (not res!2807183)) b!6886097))

(assert (= (and b!6886097 (not res!2807180)) b!6886094))

(assert (= (and b!6886094 (not res!2807186)) b!6886100))

(assert (= (and b!6886100 (not res!2807184)) b!6886092))

(assert (= (and b!6886092 (not res!2807178)) b!6886090))

(assert (= (and b!6886090 (not res!2807181)) b!6886110))

(get-info :version)

(assert (= (and start!664090 ((_ is ElementMatch!16789) r1!6342)) b!6886109))

(assert (= (and start!664090 ((_ is Concat!25634) r1!6342)) b!6886103))

(assert (= (and start!664090 ((_ is Star!16789) r1!6342)) b!6886105))

(assert (= (and start!664090 ((_ is Union!16789) r1!6342)) b!6886102))

(assert (= (and start!664090 ((_ is ElementMatch!16789) r2!6280)) b!6886091))

(assert (= (and start!664090 ((_ is Concat!25634) r2!6280)) b!6886104))

(assert (= (and start!664090 ((_ is Star!16789) r2!6280)) b!6886106))

(assert (= (and start!664090 ((_ is Union!16789) r2!6280)) b!6886093))

(assert (= (and start!664090 ((_ is ElementMatch!16789) r3!135)) b!6886101))

(assert (= (and start!664090 ((_ is Concat!25634) r3!135)) b!6886096))

(assert (= (and start!664090 ((_ is Star!16789) r3!135)) b!6886108))

(assert (= (and start!664090 ((_ is Union!16789) r3!135)) b!6886095))

(assert (= (and start!664090 ((_ is Cons!66422) s!14361)) b!6886099))

(declare-fun m!7609014 () Bool)

(assert (=> b!6886098 m!7609014))

(declare-fun m!7609016 () Bool)

(assert (=> b!6886110 m!7609016))

(declare-fun m!7609018 () Bool)

(assert (=> b!6886110 m!7609018))

(declare-fun m!7609020 () Bool)

(assert (=> b!6886110 m!7609020))

(declare-fun m!7609022 () Bool)

(assert (=> b!6886110 m!7609022))

(declare-fun m!7609024 () Bool)

(assert (=> b!6886111 m!7609024))

(declare-fun m!7609026 () Bool)

(assert (=> b!6886111 m!7609026))

(declare-fun m!7609028 () Bool)

(assert (=> b!6886111 m!7609028))

(declare-fun m!7609030 () Bool)

(assert (=> b!6886111 m!7609030))

(declare-fun m!7609032 () Bool)

(assert (=> b!6886111 m!7609032))

(declare-fun m!7609034 () Bool)

(assert (=> b!6886111 m!7609034))

(declare-fun m!7609036 () Bool)

(assert (=> b!6886092 m!7609036))

(declare-fun m!7609038 () Bool)

(assert (=> b!6886107 m!7609038))

(declare-fun m!7609040 () Bool)

(assert (=> b!6886097 m!7609040))

(declare-fun m!7609042 () Bool)

(assert (=> b!6886097 m!7609042))

(declare-fun m!7609044 () Bool)

(assert (=> b!6886097 m!7609044))

(declare-fun m!7609046 () Bool)

(assert (=> b!6886097 m!7609046))

(declare-fun m!7609048 () Bool)

(assert (=> b!6886097 m!7609048))

(declare-fun m!7609050 () Bool)

(assert (=> b!6886097 m!7609050))

(declare-fun m!7609052 () Bool)

(assert (=> b!6886097 m!7609052))

(declare-fun m!7609054 () Bool)

(assert (=> b!6886097 m!7609054))

(declare-fun m!7609056 () Bool)

(assert (=> b!6886097 m!7609056))

(assert (=> b!6886097 m!7609040))

(declare-fun m!7609058 () Bool)

(assert (=> b!6886097 m!7609058))

(declare-fun m!7609060 () Bool)

(assert (=> start!664090 m!7609060))

(declare-fun m!7609062 () Bool)

(assert (=> b!6886100 m!7609062))

(declare-fun m!7609064 () Bool)

(assert (=> b!6886100 m!7609064))

(declare-fun m!7609066 () Bool)

(assert (=> b!6886100 m!7609066))

(declare-fun m!7609068 () Bool)

(assert (=> b!6886100 m!7609068))

(declare-fun m!7609070 () Bool)

(assert (=> b!6886100 m!7609070))

(assert (=> b!6886100 m!7609070))

(declare-fun m!7609072 () Bool)

(assert (=> b!6886100 m!7609072))

(declare-fun m!7609074 () Bool)

(assert (=> b!6886100 m!7609074))

(declare-fun m!7609076 () Bool)

(assert (=> b!6886100 m!7609076))

(declare-fun m!7609078 () Bool)

(assert (=> b!6886090 m!7609078))

(declare-fun m!7609080 () Bool)

(assert (=> b!6886090 m!7609080))

(declare-fun m!7609082 () Bool)

(assert (=> b!6886090 m!7609082))

(assert (=> b!6886090 m!7609080))

(declare-fun m!7609084 () Bool)

(assert (=> b!6886090 m!7609084))

(declare-fun m!7609086 () Bool)

(assert (=> b!6886090 m!7609086))

(declare-fun m!7609088 () Bool)

(assert (=> b!6886090 m!7609088))

(declare-fun m!7609090 () Bool)

(assert (=> b!6886094 m!7609090))

(check-sat (not b!6886099) (not b!6886097) (not b!6886093) (not b!6886102) (not b!6886100) (not b!6886095) (not b!6886096) (not start!664090) (not b!6886105) (not b!6886092) tp_is_empty!42803 (not b!6886090) (not b!6886098) (not b!6886106) (not b!6886107) (not b!6886111) (not b!6886094) (not b!6886108) (not b!6886104) (not b!6886103) (not b!6886110))
(check-sat)
