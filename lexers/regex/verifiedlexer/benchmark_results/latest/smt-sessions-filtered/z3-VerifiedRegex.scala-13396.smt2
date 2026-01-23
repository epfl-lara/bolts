; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725578 () Bool)

(assert start!725578)

(declare-fun b!7499006 () Bool)

(assert (=> b!7499006 true))

(assert (=> b!7499006 true))

(assert (=> b!7499006 true))

(declare-fun lambda!464745 () Int)

(declare-fun lambda!464744 () Int)

(assert (=> b!7499006 (not (= lambda!464745 lambda!464744))))

(assert (=> b!7499006 true))

(assert (=> b!7499006 true))

(assert (=> b!7499006 true))

(declare-fun bs!1936857 () Bool)

(declare-fun b!7498988 () Bool)

(assert (= bs!1936857 (and b!7498988 b!7499006)))

(declare-datatypes ((C!39584 0))(
  ( (C!39585 (val!30190 Int)) )
))
(declare-datatypes ((Regex!19655 0))(
  ( (ElementMatch!19655 (c!1384414 C!39584)) (Concat!28500 (regOne!39822 Regex!19655) (regTwo!39822 Regex!19655)) (EmptyExpr!19655) (Star!19655 (reg!19984 Regex!19655)) (EmptyLang!19655) (Union!19655 (regOne!39823 Regex!19655) (regTwo!39823 Regex!19655)) )
))
(declare-fun r2!5783 () Regex!19655)

(declare-fun lambda!464746 () Int)

(declare-fun lt!2631225 () Regex!19655)

(assert (=> bs!1936857 (= (= r2!5783 lt!2631225) (= lambda!464746 lambda!464744))))

(assert (=> bs!1936857 (not (= lambda!464746 lambda!464745))))

(assert (=> b!7498988 true))

(assert (=> b!7498988 true))

(assert (=> b!7498988 true))

(declare-fun lambda!464747 () Int)

(assert (=> bs!1936857 (not (= lambda!464747 lambda!464744))))

(assert (=> bs!1936857 (= (= r2!5783 lt!2631225) (= lambda!464747 lambda!464745))))

(assert (=> b!7498988 (not (= lambda!464747 lambda!464746))))

(assert (=> b!7498988 true))

(assert (=> b!7498988 true))

(assert (=> b!7498988 true))

(declare-fun b!7498986 () Bool)

(declare-fun e!4470983 () Bool)

(declare-fun e!4470979 () Bool)

(assert (=> b!7498986 (= e!4470983 (not e!4470979))))

(declare-fun res!3008251 () Bool)

(assert (=> b!7498986 (=> res!3008251 e!4470979)))

(declare-fun lt!2631244 () Bool)

(assert (=> b!7498986 (= res!3008251 lt!2631244)))

(declare-fun lt!2631236 () Bool)

(declare-fun lt!2631245 () Regex!19655)

(declare-datatypes ((List!72369 0))(
  ( (Nil!72245) (Cons!72245 (h!78693 C!39584) (t!386938 List!72369)) )
))
(declare-fun s!13591 () List!72369)

(declare-fun matchRSpec!4332 (Regex!19655 List!72369) Bool)

(assert (=> b!7498986 (= lt!2631236 (matchRSpec!4332 lt!2631245 s!13591))))

(declare-fun matchR!9417 (Regex!19655 List!72369) Bool)

(assert (=> b!7498986 (= lt!2631236 (matchR!9417 lt!2631245 s!13591))))

(declare-datatypes ((Unit!166141 0))(
  ( (Unit!166142) )
))
(declare-fun lt!2631233 () Unit!166141)

(declare-fun mainMatchTheorem!4326 (Regex!19655 List!72369) Unit!166141)

(assert (=> b!7498986 (= lt!2631233 (mainMatchTheorem!4326 lt!2631245 s!13591))))

(declare-fun lt!2631240 () Regex!19655)

(assert (=> b!7498986 (= lt!2631244 (matchRSpec!4332 lt!2631240 s!13591))))

(assert (=> b!7498986 (= lt!2631244 (matchR!9417 lt!2631240 s!13591))))

(declare-fun lt!2631238 () Unit!166141)

(assert (=> b!7498986 (= lt!2631238 (mainMatchTheorem!4326 lt!2631240 s!13591))))

(declare-fun lt!2631226 () Regex!19655)

(declare-fun lt!2631235 () Regex!19655)

(assert (=> b!7498986 (= lt!2631245 (Union!19655 lt!2631226 lt!2631235))))

(declare-fun rTail!78 () Regex!19655)

(assert (=> b!7498986 (= lt!2631235 (Concat!28500 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19655)

(assert (=> b!7498986 (= lt!2631226 (Concat!28500 r1!5845 rTail!78))))

(assert (=> b!7498986 (= lt!2631240 (Concat!28500 lt!2631225 rTail!78))))

(assert (=> b!7498986 (= lt!2631225 (Union!19655 r1!5845 r2!5783))))

(declare-fun b!7498987 () Bool)

(declare-fun e!4470984 () Bool)

(declare-fun tp!2176867 () Bool)

(declare-fun tp!2176875 () Bool)

(assert (=> b!7498987 (= e!4470984 (and tp!2176867 tp!2176875))))

(declare-fun e!4470985 () Bool)

(declare-fun e!4470987 () Bool)

(assert (=> b!7498988 (= e!4470985 e!4470987)))

(declare-fun res!3008253 () Bool)

(assert (=> b!7498988 (=> res!3008253 e!4470987)))

(declare-datatypes ((tuple2!68744 0))(
  ( (tuple2!68745 (_1!37675 List!72369) (_2!37675 List!72369)) )
))
(declare-fun lt!2631222 () tuple2!68744)

(assert (=> b!7498988 (= res!3008253 (not (matchR!9417 r2!5783 (_1!37675 lt!2631222))))))

(declare-datatypes ((Option!17204 0))(
  ( (None!17203) (Some!17203 (v!54332 tuple2!68744)) )
))
(declare-fun lt!2631227 () Option!17204)

(declare-fun get!25338 (Option!17204) tuple2!68744)

(assert (=> b!7498988 (= lt!2631222 (get!25338 lt!2631227))))

(declare-fun Exists!4272 (Int) Bool)

(assert (=> b!7498988 (= (Exists!4272 lambda!464746) (Exists!4272 lambda!464747))))

(declare-fun lt!2631231 () Unit!166141)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2596 (Regex!19655 Regex!19655 List!72369) Unit!166141)

(assert (=> b!7498988 (= lt!2631231 (lemmaExistCutMatchRandMatchRSpecEquivalent!2596 r2!5783 rTail!78 s!13591))))

(declare-fun isDefined!13893 (Option!17204) Bool)

(assert (=> b!7498988 (= (isDefined!13893 lt!2631227) (Exists!4272 lambda!464746))))

(declare-fun findConcatSeparation!3326 (Regex!19655 Regex!19655 List!72369 List!72369 List!72369) Option!17204)

(assert (=> b!7498988 (= lt!2631227 (findConcatSeparation!3326 r2!5783 rTail!78 Nil!72245 s!13591 s!13591))))

(declare-fun lt!2631241 () Unit!166141)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3084 (Regex!19655 Regex!19655 List!72369) Unit!166141)

(assert (=> b!7498988 (= lt!2631241 (lemmaFindConcatSeparationEquivalentToExists!3084 r2!5783 rTail!78 s!13591))))

(declare-fun b!7498989 () Bool)

(declare-fun e!4470980 () Bool)

(declare-fun tp!2176863 () Bool)

(assert (=> b!7498989 (= e!4470980 tp!2176863)))

(declare-fun res!3008247 () Bool)

(assert (=> start!725578 (=> (not res!3008247) (not e!4470983))))

(declare-fun validRegex!10169 (Regex!19655) Bool)

(assert (=> start!725578 (= res!3008247 (validRegex!10169 r1!5845))))

(assert (=> start!725578 e!4470983))

(assert (=> start!725578 e!4470984))

(assert (=> start!725578 e!4470980))

(declare-fun e!4470986 () Bool)

(assert (=> start!725578 e!4470986))

(declare-fun e!4470981 () Bool)

(assert (=> start!725578 e!4470981))

(declare-fun b!7498990 () Bool)

(declare-fun tp!2176870 () Bool)

(declare-fun tp!2176869 () Bool)

(assert (=> b!7498990 (= e!4470984 (and tp!2176870 tp!2176869))))

(declare-fun b!7498991 () Bool)

(declare-fun tp_is_empty!49599 () Bool)

(assert (=> b!7498991 (= e!4470986 tp_is_empty!49599)))

(declare-fun b!7498992 () Bool)

(declare-fun tp!2176874 () Bool)

(declare-fun tp!2176876 () Bool)

(assert (=> b!7498992 (= e!4470986 (and tp!2176874 tp!2176876))))

(declare-fun b!7498993 () Bool)

(assert (=> b!7498993 (= e!4470980 tp_is_empty!49599)))

(declare-fun b!7498994 () Bool)

(declare-fun res!3008246 () Bool)

(assert (=> b!7498994 (=> (not res!3008246) (not e!4470983))))

(assert (=> b!7498994 (= res!3008246 (validRegex!10169 r2!5783))))

(declare-fun b!7498995 () Bool)

(declare-fun tp!2176872 () Bool)

(assert (=> b!7498995 (= e!4470986 tp!2176872)))

(declare-fun b!7498996 () Bool)

(declare-fun e!4470988 () Bool)

(assert (=> b!7498996 (= e!4470988 e!4470985)))

(declare-fun res!3008250 () Bool)

(assert (=> b!7498996 (=> res!3008250 e!4470985)))

(declare-fun lt!2631237 () Bool)

(declare-fun lt!2631232 () Bool)

(assert (=> b!7498996 (= res!3008250 (or (and (not lt!2631237) (not lt!2631232)) lt!2631237))))

(assert (=> b!7498996 (= lt!2631232 (matchRSpec!4332 lt!2631235 s!13591))))

(assert (=> b!7498996 (= lt!2631232 (matchR!9417 lt!2631235 s!13591))))

(declare-fun lt!2631223 () Unit!166141)

(assert (=> b!7498996 (= lt!2631223 (mainMatchTheorem!4326 lt!2631235 s!13591))))

(assert (=> b!7498996 (= lt!2631237 (matchRSpec!4332 lt!2631226 s!13591))))

(assert (=> b!7498996 (= lt!2631237 (matchR!9417 lt!2631226 s!13591))))

(declare-fun lt!2631234 () Unit!166141)

(assert (=> b!7498996 (= lt!2631234 (mainMatchTheorem!4326 lt!2631226 s!13591))))

(declare-fun b!7498997 () Bool)

(declare-fun tp!2176868 () Bool)

(assert (=> b!7498997 (= e!4470984 tp!2176868)))

(declare-fun b!7498998 () Bool)

(declare-fun tp!2176877 () Bool)

(declare-fun tp!2176862 () Bool)

(assert (=> b!7498998 (= e!4470986 (and tp!2176877 tp!2176862))))

(declare-fun b!7498999 () Bool)

(declare-fun tp!2176873 () Bool)

(declare-fun tp!2176866 () Bool)

(assert (=> b!7498999 (= e!4470980 (and tp!2176873 tp!2176866))))

(declare-fun b!7499000 () Bool)

(declare-fun res!3008254 () Bool)

(assert (=> b!7499000 (=> (not res!3008254) (not e!4470983))))

(assert (=> b!7499000 (= res!3008254 (validRegex!10169 rTail!78))))

(declare-fun b!7499001 () Bool)

(assert (=> b!7499001 (= e!4470984 tp_is_empty!49599)))

(declare-fun b!7499002 () Bool)

(declare-fun res!3008248 () Bool)

(assert (=> b!7499002 (=> res!3008248 e!4470987)))

(assert (=> b!7499002 (= res!3008248 (not (matchR!9417 rTail!78 (_2!37675 lt!2631222))))))

(declare-fun b!7499003 () Bool)

(declare-fun e!4470982 () Bool)

(assert (=> b!7499003 (= e!4470987 e!4470982)))

(declare-fun res!3008252 () Bool)

(assert (=> b!7499003 (=> res!3008252 e!4470982)))

(declare-fun lt!2631243 () Bool)

(assert (=> b!7499003 (= res!3008252 (not lt!2631243))))

(assert (=> b!7499003 (matchRSpec!4332 r2!5783 (_1!37675 lt!2631222))))

(declare-fun lt!2631229 () Unit!166141)

(assert (=> b!7499003 (= lt!2631229 (mainMatchTheorem!4326 r2!5783 (_1!37675 lt!2631222)))))

(assert (=> b!7499003 (= (matchR!9417 r1!5845 (_1!37675 lt!2631222)) (matchRSpec!4332 r1!5845 (_1!37675 lt!2631222)))))

(declare-fun lt!2631242 () Unit!166141)

(assert (=> b!7499003 (= lt!2631242 (mainMatchTheorem!4326 r1!5845 (_1!37675 lt!2631222)))))

(assert (=> b!7499003 (= lt!2631243 (matchRSpec!4332 lt!2631225 (_1!37675 lt!2631222)))))

(assert (=> b!7499003 (= lt!2631243 (matchR!9417 lt!2631225 (_1!37675 lt!2631222)))))

(declare-fun lt!2631224 () Unit!166141)

(assert (=> b!7499003 (= lt!2631224 (mainMatchTheorem!4326 lt!2631225 (_1!37675 lt!2631222)))))

(declare-fun b!7499004 () Bool)

(assert (=> b!7499004 (= e!4470982 (validRegex!10169 lt!2631225))))

(declare-fun b!7499005 () Bool)

(declare-fun tp!2176871 () Bool)

(assert (=> b!7499005 (= e!4470981 (and tp_is_empty!49599 tp!2176871))))

(assert (=> b!7499006 (= e!4470979 e!4470988)))

(declare-fun res!3008249 () Bool)

(assert (=> b!7499006 (=> res!3008249 e!4470988)))

(declare-fun lt!2631239 () Bool)

(assert (=> b!7499006 (= res!3008249 (or lt!2631239 (not lt!2631236)))))

(assert (=> b!7499006 (= (Exists!4272 lambda!464744) (Exists!4272 lambda!464745))))

(declare-fun lt!2631228 () Unit!166141)

(assert (=> b!7499006 (= lt!2631228 (lemmaExistCutMatchRandMatchRSpecEquivalent!2596 lt!2631225 rTail!78 s!13591))))

(assert (=> b!7499006 (= lt!2631239 (Exists!4272 lambda!464744))))

(assert (=> b!7499006 (= lt!2631239 (isDefined!13893 (findConcatSeparation!3326 lt!2631225 rTail!78 Nil!72245 s!13591 s!13591)))))

(declare-fun lt!2631230 () Unit!166141)

(assert (=> b!7499006 (= lt!2631230 (lemmaFindConcatSeparationEquivalentToExists!3084 lt!2631225 rTail!78 s!13591))))

(declare-fun b!7499007 () Bool)

(declare-fun tp!2176864 () Bool)

(declare-fun tp!2176865 () Bool)

(assert (=> b!7499007 (= e!4470980 (and tp!2176864 tp!2176865))))

(assert (= (and start!725578 res!3008247) b!7498994))

(assert (= (and b!7498994 res!3008246) b!7499000))

(assert (= (and b!7499000 res!3008254) b!7498986))

(assert (= (and b!7498986 (not res!3008251)) b!7499006))

(assert (= (and b!7499006 (not res!3008249)) b!7498996))

(assert (= (and b!7498996 (not res!3008250)) b!7498988))

(assert (= (and b!7498988 (not res!3008253)) b!7499002))

(assert (= (and b!7499002 (not res!3008248)) b!7499003))

(assert (= (and b!7499003 (not res!3008252)) b!7499004))

(get-info :version)

(assert (= (and start!725578 ((_ is ElementMatch!19655) r1!5845)) b!7499001))

(assert (= (and start!725578 ((_ is Concat!28500) r1!5845)) b!7498987))

(assert (= (and start!725578 ((_ is Star!19655) r1!5845)) b!7498997))

(assert (= (and start!725578 ((_ is Union!19655) r1!5845)) b!7498990))

(assert (= (and start!725578 ((_ is ElementMatch!19655) r2!5783)) b!7498993))

(assert (= (and start!725578 ((_ is Concat!28500) r2!5783)) b!7498999))

(assert (= (and start!725578 ((_ is Star!19655) r2!5783)) b!7498989))

(assert (= (and start!725578 ((_ is Union!19655) r2!5783)) b!7499007))

(assert (= (and start!725578 ((_ is ElementMatch!19655) rTail!78)) b!7498991))

(assert (= (and start!725578 ((_ is Concat!28500) rTail!78)) b!7498992))

(assert (= (and start!725578 ((_ is Star!19655) rTail!78)) b!7498995))

(assert (= (and start!725578 ((_ is Union!19655) rTail!78)) b!7498998))

(assert (= (and start!725578 ((_ is Cons!72245) s!13591)) b!7499005))

(declare-fun m!8081590 () Bool)

(assert (=> b!7498996 m!8081590))

(declare-fun m!8081592 () Bool)

(assert (=> b!7498996 m!8081592))

(declare-fun m!8081594 () Bool)

(assert (=> b!7498996 m!8081594))

(declare-fun m!8081596 () Bool)

(assert (=> b!7498996 m!8081596))

(declare-fun m!8081598 () Bool)

(assert (=> b!7498996 m!8081598))

(declare-fun m!8081600 () Bool)

(assert (=> b!7498996 m!8081600))

(declare-fun m!8081602 () Bool)

(assert (=> b!7499006 m!8081602))

(declare-fun m!8081604 () Bool)

(assert (=> b!7499006 m!8081604))

(declare-fun m!8081606 () Bool)

(assert (=> b!7499006 m!8081606))

(declare-fun m!8081608 () Bool)

(assert (=> b!7499006 m!8081608))

(declare-fun m!8081610 () Bool)

(assert (=> b!7499006 m!8081610))

(assert (=> b!7499006 m!8081604))

(declare-fun m!8081612 () Bool)

(assert (=> b!7499006 m!8081612))

(assert (=> b!7499006 m!8081610))

(declare-fun m!8081614 () Bool)

(assert (=> b!7499004 m!8081614))

(declare-fun m!8081616 () Bool)

(assert (=> start!725578 m!8081616))

(declare-fun m!8081618 () Bool)

(assert (=> b!7498988 m!8081618))

(declare-fun m!8081620 () Bool)

(assert (=> b!7498988 m!8081620))

(declare-fun m!8081622 () Bool)

(assert (=> b!7498988 m!8081622))

(assert (=> b!7498988 m!8081620))

(declare-fun m!8081624 () Bool)

(assert (=> b!7498988 m!8081624))

(declare-fun m!8081626 () Bool)

(assert (=> b!7498988 m!8081626))

(declare-fun m!8081628 () Bool)

(assert (=> b!7498988 m!8081628))

(declare-fun m!8081630 () Bool)

(assert (=> b!7498988 m!8081630))

(declare-fun m!8081632 () Bool)

(assert (=> b!7498988 m!8081632))

(declare-fun m!8081634 () Bool)

(assert (=> b!7499002 m!8081634))

(declare-fun m!8081636 () Bool)

(assert (=> b!7498994 m!8081636))

(declare-fun m!8081638 () Bool)

(assert (=> b!7499003 m!8081638))

(declare-fun m!8081640 () Bool)

(assert (=> b!7499003 m!8081640))

(declare-fun m!8081642 () Bool)

(assert (=> b!7499003 m!8081642))

(declare-fun m!8081644 () Bool)

(assert (=> b!7499003 m!8081644))

(declare-fun m!8081646 () Bool)

(assert (=> b!7499003 m!8081646))

(declare-fun m!8081648 () Bool)

(assert (=> b!7499003 m!8081648))

(declare-fun m!8081650 () Bool)

(assert (=> b!7499003 m!8081650))

(declare-fun m!8081652 () Bool)

(assert (=> b!7499003 m!8081652))

(declare-fun m!8081654 () Bool)

(assert (=> b!7498986 m!8081654))

(declare-fun m!8081656 () Bool)

(assert (=> b!7498986 m!8081656))

(declare-fun m!8081658 () Bool)

(assert (=> b!7498986 m!8081658))

(declare-fun m!8081660 () Bool)

(assert (=> b!7498986 m!8081660))

(declare-fun m!8081662 () Bool)

(assert (=> b!7498986 m!8081662))

(declare-fun m!8081664 () Bool)

(assert (=> b!7498986 m!8081664))

(declare-fun m!8081666 () Bool)

(assert (=> b!7499000 m!8081666))

(check-sat (not b!7498995) tp_is_empty!49599 (not b!7499006) (not b!7498994) (not b!7499003) (not b!7499004) (not b!7498997) (not b!7498996) (not b!7498989) (not b!7498988) (not b!7499000) (not b!7498987) (not b!7499007) (not b!7498999) (not b!7499005) (not b!7499002) (not start!725578) (not b!7498998) (not b!7498986) (not b!7498990) (not b!7498992))
(check-sat)
(get-model)

(declare-fun b!7499114 () Bool)

(declare-fun res!3008311 () Bool)

(declare-fun e!4471048 () Bool)

(assert (=> b!7499114 (=> res!3008311 e!4471048)))

(declare-fun e!4471044 () Bool)

(assert (=> b!7499114 (= res!3008311 e!4471044)))

(declare-fun res!3008315 () Bool)

(assert (=> b!7499114 (=> (not res!3008315) (not e!4471044))))

(declare-fun lt!2631255 () Bool)

(assert (=> b!7499114 (= res!3008315 lt!2631255)))

(declare-fun b!7499115 () Bool)

(declare-fun e!4471043 () Bool)

(assert (=> b!7499115 (= e!4471043 (not lt!2631255))))

(declare-fun b!7499116 () Bool)

(declare-fun e!4471042 () Bool)

(declare-fun derivativeStep!5648 (Regex!19655 C!39584) Regex!19655)

(declare-fun head!15388 (List!72369) C!39584)

(declare-fun tail!14957 (List!72369) List!72369)

(assert (=> b!7499116 (= e!4471042 (matchR!9417 (derivativeStep!5648 lt!2631240 (head!15388 s!13591)) (tail!14957 s!13591)))))

(declare-fun b!7499117 () Bool)

(declare-fun e!4471047 () Bool)

(assert (=> b!7499117 (= e!4471048 e!4471047)))

(declare-fun res!3008314 () Bool)

(assert (=> b!7499117 (=> (not res!3008314) (not e!4471047))))

(assert (=> b!7499117 (= res!3008314 (not lt!2631255))))

(declare-fun b!7499118 () Bool)

(declare-fun e!4471045 () Bool)

(assert (=> b!7499118 (= e!4471045 e!4471043)))

(declare-fun c!1384439 () Bool)

(assert (=> b!7499118 (= c!1384439 ((_ is EmptyLang!19655) lt!2631240))))

(declare-fun b!7499119 () Bool)

(declare-fun res!3008317 () Bool)

(assert (=> b!7499119 (=> res!3008317 e!4471048)))

(assert (=> b!7499119 (= res!3008317 (not ((_ is ElementMatch!19655) lt!2631240)))))

(assert (=> b!7499119 (= e!4471043 e!4471048)))

(declare-fun b!7499120 () Bool)

(declare-fun call!688376 () Bool)

(assert (=> b!7499120 (= e!4471045 (= lt!2631255 call!688376))))

(declare-fun d!2302217 () Bool)

(assert (=> d!2302217 e!4471045))

(declare-fun c!1384440 () Bool)

(assert (=> d!2302217 (= c!1384440 ((_ is EmptyExpr!19655) lt!2631240))))

(assert (=> d!2302217 (= lt!2631255 e!4471042)))

(declare-fun c!1384438 () Bool)

(declare-fun isEmpty!41286 (List!72369) Bool)

(assert (=> d!2302217 (= c!1384438 (isEmpty!41286 s!13591))))

(assert (=> d!2302217 (validRegex!10169 lt!2631240)))

(assert (=> d!2302217 (= (matchR!9417 lt!2631240 s!13591) lt!2631255)))

(declare-fun b!7499121 () Bool)

(declare-fun res!3008312 () Bool)

(assert (=> b!7499121 (=> (not res!3008312) (not e!4471044))))

(assert (=> b!7499121 (= res!3008312 (isEmpty!41286 (tail!14957 s!13591)))))

(declare-fun bm!688371 () Bool)

(assert (=> bm!688371 (= call!688376 (isEmpty!41286 s!13591))))

(declare-fun b!7499122 () Bool)

(declare-fun e!4471046 () Bool)

(assert (=> b!7499122 (= e!4471047 e!4471046)))

(declare-fun res!3008318 () Bool)

(assert (=> b!7499122 (=> res!3008318 e!4471046)))

(assert (=> b!7499122 (= res!3008318 call!688376)))

(declare-fun b!7499123 () Bool)

(declare-fun nullable!8591 (Regex!19655) Bool)

(assert (=> b!7499123 (= e!4471042 (nullable!8591 lt!2631240))))

(declare-fun b!7499124 () Bool)

(assert (=> b!7499124 (= e!4471044 (= (head!15388 s!13591) (c!1384414 lt!2631240)))))

(declare-fun b!7499125 () Bool)

(declare-fun res!3008313 () Bool)

(assert (=> b!7499125 (=> res!3008313 e!4471046)))

(assert (=> b!7499125 (= res!3008313 (not (isEmpty!41286 (tail!14957 s!13591))))))

(declare-fun b!7499126 () Bool)

(assert (=> b!7499126 (= e!4471046 (not (= (head!15388 s!13591) (c!1384414 lt!2631240))))))

(declare-fun b!7499127 () Bool)

(declare-fun res!3008316 () Bool)

(assert (=> b!7499127 (=> (not res!3008316) (not e!4471044))))

(assert (=> b!7499127 (= res!3008316 (not call!688376))))

(assert (= (and d!2302217 c!1384438) b!7499123))

(assert (= (and d!2302217 (not c!1384438)) b!7499116))

(assert (= (and d!2302217 c!1384440) b!7499120))

(assert (= (and d!2302217 (not c!1384440)) b!7499118))

(assert (= (and b!7499118 c!1384439) b!7499115))

(assert (= (and b!7499118 (not c!1384439)) b!7499119))

(assert (= (and b!7499119 (not res!3008317)) b!7499114))

(assert (= (and b!7499114 res!3008315) b!7499127))

(assert (= (and b!7499127 res!3008316) b!7499121))

(assert (= (and b!7499121 res!3008312) b!7499124))

(assert (= (and b!7499114 (not res!3008311)) b!7499117))

(assert (= (and b!7499117 res!3008314) b!7499122))

(assert (= (and b!7499122 (not res!3008318)) b!7499125))

(assert (= (and b!7499125 (not res!3008313)) b!7499126))

(assert (= (or b!7499120 b!7499122 b!7499127) bm!688371))

(declare-fun m!8081686 () Bool)

(assert (=> b!7499124 m!8081686))

(assert (=> b!7499126 m!8081686))

(declare-fun m!8081688 () Bool)

(assert (=> d!2302217 m!8081688))

(declare-fun m!8081690 () Bool)

(assert (=> d!2302217 m!8081690))

(declare-fun m!8081692 () Bool)

(assert (=> b!7499123 m!8081692))

(declare-fun m!8081694 () Bool)

(assert (=> b!7499121 m!8081694))

(assert (=> b!7499121 m!8081694))

(declare-fun m!8081696 () Bool)

(assert (=> b!7499121 m!8081696))

(assert (=> bm!688371 m!8081688))

(assert (=> b!7499125 m!8081694))

(assert (=> b!7499125 m!8081694))

(assert (=> b!7499125 m!8081696))

(assert (=> b!7499116 m!8081686))

(assert (=> b!7499116 m!8081686))

(declare-fun m!8081698 () Bool)

(assert (=> b!7499116 m!8081698))

(assert (=> b!7499116 m!8081694))

(assert (=> b!7499116 m!8081698))

(assert (=> b!7499116 m!8081694))

(declare-fun m!8081700 () Bool)

(assert (=> b!7499116 m!8081700))

(assert (=> b!7498986 d!2302217))

(declare-fun b!7499128 () Bool)

(declare-fun res!3008319 () Bool)

(declare-fun e!4471055 () Bool)

(assert (=> b!7499128 (=> res!3008319 e!4471055)))

(declare-fun e!4471051 () Bool)

(assert (=> b!7499128 (= res!3008319 e!4471051)))

(declare-fun res!3008323 () Bool)

(assert (=> b!7499128 (=> (not res!3008323) (not e!4471051))))

(declare-fun lt!2631256 () Bool)

(assert (=> b!7499128 (= res!3008323 lt!2631256)))

(declare-fun b!7499129 () Bool)

(declare-fun e!4471050 () Bool)

(assert (=> b!7499129 (= e!4471050 (not lt!2631256))))

(declare-fun b!7499130 () Bool)

(declare-fun e!4471049 () Bool)

(assert (=> b!7499130 (= e!4471049 (matchR!9417 (derivativeStep!5648 lt!2631245 (head!15388 s!13591)) (tail!14957 s!13591)))))

(declare-fun b!7499131 () Bool)

(declare-fun e!4471054 () Bool)

(assert (=> b!7499131 (= e!4471055 e!4471054)))

(declare-fun res!3008322 () Bool)

(assert (=> b!7499131 (=> (not res!3008322) (not e!4471054))))

(assert (=> b!7499131 (= res!3008322 (not lt!2631256))))

(declare-fun b!7499132 () Bool)

(declare-fun e!4471052 () Bool)

(assert (=> b!7499132 (= e!4471052 e!4471050)))

(declare-fun c!1384442 () Bool)

(assert (=> b!7499132 (= c!1384442 ((_ is EmptyLang!19655) lt!2631245))))

(declare-fun b!7499133 () Bool)

(declare-fun res!3008325 () Bool)

(assert (=> b!7499133 (=> res!3008325 e!4471055)))

(assert (=> b!7499133 (= res!3008325 (not ((_ is ElementMatch!19655) lt!2631245)))))

(assert (=> b!7499133 (= e!4471050 e!4471055)))

(declare-fun b!7499134 () Bool)

(declare-fun call!688379 () Bool)

(assert (=> b!7499134 (= e!4471052 (= lt!2631256 call!688379))))

(declare-fun d!2302227 () Bool)

(assert (=> d!2302227 e!4471052))

(declare-fun c!1384443 () Bool)

(assert (=> d!2302227 (= c!1384443 ((_ is EmptyExpr!19655) lt!2631245))))

(assert (=> d!2302227 (= lt!2631256 e!4471049)))

(declare-fun c!1384441 () Bool)

(assert (=> d!2302227 (= c!1384441 (isEmpty!41286 s!13591))))

(assert (=> d!2302227 (validRegex!10169 lt!2631245)))

(assert (=> d!2302227 (= (matchR!9417 lt!2631245 s!13591) lt!2631256)))

(declare-fun b!7499135 () Bool)

(declare-fun res!3008320 () Bool)

(assert (=> b!7499135 (=> (not res!3008320) (not e!4471051))))

(assert (=> b!7499135 (= res!3008320 (isEmpty!41286 (tail!14957 s!13591)))))

(declare-fun bm!688374 () Bool)

(assert (=> bm!688374 (= call!688379 (isEmpty!41286 s!13591))))

(declare-fun b!7499136 () Bool)

(declare-fun e!4471053 () Bool)

(assert (=> b!7499136 (= e!4471054 e!4471053)))

(declare-fun res!3008326 () Bool)

(assert (=> b!7499136 (=> res!3008326 e!4471053)))

(assert (=> b!7499136 (= res!3008326 call!688379)))

(declare-fun b!7499137 () Bool)

(assert (=> b!7499137 (= e!4471049 (nullable!8591 lt!2631245))))

(declare-fun b!7499138 () Bool)

(assert (=> b!7499138 (= e!4471051 (= (head!15388 s!13591) (c!1384414 lt!2631245)))))

(declare-fun b!7499139 () Bool)

(declare-fun res!3008321 () Bool)

(assert (=> b!7499139 (=> res!3008321 e!4471053)))

(assert (=> b!7499139 (= res!3008321 (not (isEmpty!41286 (tail!14957 s!13591))))))

(declare-fun b!7499140 () Bool)

(assert (=> b!7499140 (= e!4471053 (not (= (head!15388 s!13591) (c!1384414 lt!2631245))))))

(declare-fun b!7499141 () Bool)

(declare-fun res!3008324 () Bool)

(assert (=> b!7499141 (=> (not res!3008324) (not e!4471051))))

(assert (=> b!7499141 (= res!3008324 (not call!688379))))

(assert (= (and d!2302227 c!1384441) b!7499137))

(assert (= (and d!2302227 (not c!1384441)) b!7499130))

(assert (= (and d!2302227 c!1384443) b!7499134))

(assert (= (and d!2302227 (not c!1384443)) b!7499132))

(assert (= (and b!7499132 c!1384442) b!7499129))

(assert (= (and b!7499132 (not c!1384442)) b!7499133))

(assert (= (and b!7499133 (not res!3008325)) b!7499128))

(assert (= (and b!7499128 res!3008323) b!7499141))

(assert (= (and b!7499141 res!3008324) b!7499135))

(assert (= (and b!7499135 res!3008320) b!7499138))

(assert (= (and b!7499128 (not res!3008319)) b!7499131))

(assert (= (and b!7499131 res!3008322) b!7499136))

(assert (= (and b!7499136 (not res!3008326)) b!7499139))

(assert (= (and b!7499139 (not res!3008321)) b!7499140))

(assert (= (or b!7499134 b!7499136 b!7499141) bm!688374))

(assert (=> b!7499138 m!8081686))

(assert (=> b!7499140 m!8081686))

(assert (=> d!2302227 m!8081688))

(declare-fun m!8081702 () Bool)

(assert (=> d!2302227 m!8081702))

(declare-fun m!8081704 () Bool)

(assert (=> b!7499137 m!8081704))

(assert (=> b!7499135 m!8081694))

(assert (=> b!7499135 m!8081694))

(assert (=> b!7499135 m!8081696))

(assert (=> bm!688374 m!8081688))

(assert (=> b!7499139 m!8081694))

(assert (=> b!7499139 m!8081694))

(assert (=> b!7499139 m!8081696))

(assert (=> b!7499130 m!8081686))

(assert (=> b!7499130 m!8081686))

(declare-fun m!8081706 () Bool)

(assert (=> b!7499130 m!8081706))

(assert (=> b!7499130 m!8081694))

(assert (=> b!7499130 m!8081706))

(assert (=> b!7499130 m!8081694))

(declare-fun m!8081708 () Bool)

(assert (=> b!7499130 m!8081708))

(assert (=> b!7498986 d!2302227))

(declare-fun bs!1936900 () Bool)

(declare-fun b!7499248 () Bool)

(assert (= bs!1936900 (and b!7499248 b!7499006)))

(declare-fun lambda!464768 () Int)

(assert (=> bs!1936900 (not (= lambda!464768 lambda!464744))))

(assert (=> bs!1936900 (not (= lambda!464768 lambda!464745))))

(declare-fun bs!1936901 () Bool)

(assert (= bs!1936901 (and b!7499248 b!7498988)))

(assert (=> bs!1936901 (not (= lambda!464768 lambda!464746))))

(assert (=> bs!1936901 (not (= lambda!464768 lambda!464747))))

(assert (=> b!7499248 true))

(assert (=> b!7499248 true))

(declare-fun bs!1936902 () Bool)

(declare-fun b!7499255 () Bool)

(assert (= bs!1936902 (and b!7499255 b!7499006)))

(declare-fun lambda!464769 () Int)

(assert (=> bs!1936902 (= (and (= (regOne!39822 lt!2631245) lt!2631225) (= (regTwo!39822 lt!2631245) rTail!78)) (= lambda!464769 lambda!464745))))

(declare-fun bs!1936903 () Bool)

(assert (= bs!1936903 (and b!7499255 b!7498988)))

(assert (=> bs!1936903 (not (= lambda!464769 lambda!464746))))

(declare-fun bs!1936904 () Bool)

(assert (= bs!1936904 (and b!7499255 b!7499248)))

(assert (=> bs!1936904 (not (= lambda!464769 lambda!464768))))

(assert (=> bs!1936903 (= (and (= (regOne!39822 lt!2631245) r2!5783) (= (regTwo!39822 lt!2631245) rTail!78)) (= lambda!464769 lambda!464747))))

(assert (=> bs!1936902 (not (= lambda!464769 lambda!464744))))

(assert (=> b!7499255 true))

(assert (=> b!7499255 true))

(declare-fun b!7499247 () Bool)

(declare-fun c!1384474 () Bool)

(assert (=> b!7499247 (= c!1384474 ((_ is ElementMatch!19655) lt!2631245))))

(declare-fun e!4471122 () Bool)

(declare-fun e!4471119 () Bool)

(assert (=> b!7499247 (= e!4471122 e!4471119)))

(declare-fun e!4471117 () Bool)

(declare-fun call!688392 () Bool)

(assert (=> b!7499248 (= e!4471117 call!688392)))

(declare-fun c!1384473 () Bool)

(declare-fun bm!688386 () Bool)

(assert (=> bm!688386 (= call!688392 (Exists!4272 (ite c!1384473 lambda!464768 lambda!464769)))))

(declare-fun b!7499249 () Bool)

(declare-fun e!4471116 () Bool)

(assert (=> b!7499249 (= e!4471116 (matchRSpec!4332 (regTwo!39823 lt!2631245) s!13591))))

(declare-fun b!7499250 () Bool)

(declare-fun e!4471121 () Bool)

(assert (=> b!7499250 (= e!4471121 e!4471116)))

(declare-fun res!3008379 () Bool)

(assert (=> b!7499250 (= res!3008379 (matchRSpec!4332 (regOne!39823 lt!2631245) s!13591))))

(assert (=> b!7499250 (=> res!3008379 e!4471116)))

(declare-fun b!7499251 () Bool)

(assert (=> b!7499251 (= e!4471119 (= s!13591 (Cons!72245 (c!1384414 lt!2631245) Nil!72245)))))

(declare-fun b!7499252 () Bool)

(declare-fun e!4471120 () Bool)

(assert (=> b!7499252 (= e!4471120 e!4471122)))

(declare-fun res!3008378 () Bool)

(assert (=> b!7499252 (= res!3008378 (not ((_ is EmptyLang!19655) lt!2631245)))))

(assert (=> b!7499252 (=> (not res!3008378) (not e!4471122))))

(declare-fun d!2302229 () Bool)

(declare-fun c!1384472 () Bool)

(assert (=> d!2302229 (= c!1384472 ((_ is EmptyExpr!19655) lt!2631245))))

(assert (=> d!2302229 (= (matchRSpec!4332 lt!2631245 s!13591) e!4471120)))

(declare-fun bm!688387 () Bool)

(declare-fun call!688391 () Bool)

(assert (=> bm!688387 (= call!688391 (isEmpty!41286 s!13591))))

(declare-fun b!7499253 () Bool)

(declare-fun c!1384471 () Bool)

(assert (=> b!7499253 (= c!1384471 ((_ is Union!19655) lt!2631245))))

(assert (=> b!7499253 (= e!4471119 e!4471121)))

(declare-fun b!7499254 () Bool)

(declare-fun res!3008380 () Bool)

(assert (=> b!7499254 (=> res!3008380 e!4471117)))

(assert (=> b!7499254 (= res!3008380 call!688391)))

(declare-fun e!4471118 () Bool)

(assert (=> b!7499254 (= e!4471118 e!4471117)))

(assert (=> b!7499255 (= e!4471118 call!688392)))

(declare-fun b!7499256 () Bool)

(assert (=> b!7499256 (= e!4471120 call!688391)))

(declare-fun b!7499257 () Bool)

(assert (=> b!7499257 (= e!4471121 e!4471118)))

(assert (=> b!7499257 (= c!1384473 ((_ is Star!19655) lt!2631245))))

(assert (= (and d!2302229 c!1384472) b!7499256))

(assert (= (and d!2302229 (not c!1384472)) b!7499252))

(assert (= (and b!7499252 res!3008378) b!7499247))

(assert (= (and b!7499247 c!1384474) b!7499251))

(assert (= (and b!7499247 (not c!1384474)) b!7499253))

(assert (= (and b!7499253 c!1384471) b!7499250))

(assert (= (and b!7499253 (not c!1384471)) b!7499257))

(assert (= (and b!7499250 (not res!3008379)) b!7499249))

(assert (= (and b!7499257 c!1384473) b!7499254))

(assert (= (and b!7499257 (not c!1384473)) b!7499255))

(assert (= (and b!7499254 (not res!3008380)) b!7499248))

(assert (= (or b!7499248 b!7499255) bm!688386))

(assert (= (or b!7499256 b!7499254) bm!688387))

(declare-fun m!8081770 () Bool)

(assert (=> bm!688386 m!8081770))

(declare-fun m!8081772 () Bool)

(assert (=> b!7499249 m!8081772))

(declare-fun m!8081774 () Bool)

(assert (=> b!7499250 m!8081774))

(assert (=> bm!688387 m!8081688))

(assert (=> b!7498986 d!2302229))

(declare-fun d!2302251 () Bool)

(assert (=> d!2302251 (= (matchR!9417 lt!2631240 s!13591) (matchRSpec!4332 lt!2631240 s!13591))))

(declare-fun lt!2631276 () Unit!166141)

(declare-fun choose!57971 (Regex!19655 List!72369) Unit!166141)

(assert (=> d!2302251 (= lt!2631276 (choose!57971 lt!2631240 s!13591))))

(assert (=> d!2302251 (validRegex!10169 lt!2631240)))

(assert (=> d!2302251 (= (mainMatchTheorem!4326 lt!2631240 s!13591) lt!2631276)))

(declare-fun bs!1936915 () Bool)

(assert (= bs!1936915 d!2302251))

(assert (=> bs!1936915 m!8081654))

(assert (=> bs!1936915 m!8081660))

(declare-fun m!8081780 () Bool)

(assert (=> bs!1936915 m!8081780))

(assert (=> bs!1936915 m!8081690))

(assert (=> b!7498986 d!2302251))

(declare-fun bs!1936916 () Bool)

(declare-fun b!7499290 () Bool)

(assert (= bs!1936916 (and b!7499290 b!7499255)))

(declare-fun lambda!464773 () Int)

(assert (=> bs!1936916 (not (= lambda!464773 lambda!464769))))

(declare-fun bs!1936917 () Bool)

(assert (= bs!1936917 (and b!7499290 b!7499006)))

(assert (=> bs!1936917 (not (= lambda!464773 lambda!464745))))

(declare-fun bs!1936918 () Bool)

(assert (= bs!1936918 (and b!7499290 b!7498988)))

(assert (=> bs!1936918 (not (= lambda!464773 lambda!464746))))

(declare-fun bs!1936919 () Bool)

(assert (= bs!1936919 (and b!7499290 b!7499248)))

(assert (=> bs!1936919 (= (and (= (reg!19984 lt!2631240) (reg!19984 lt!2631245)) (= lt!2631240 lt!2631245)) (= lambda!464773 lambda!464768))))

(assert (=> bs!1936918 (not (= lambda!464773 lambda!464747))))

(assert (=> bs!1936917 (not (= lambda!464773 lambda!464744))))

(assert (=> b!7499290 true))

(assert (=> b!7499290 true))

(declare-fun bs!1936923 () Bool)

(declare-fun b!7499297 () Bool)

(assert (= bs!1936923 (and b!7499297 b!7499255)))

(declare-fun lambda!464775 () Int)

(assert (=> bs!1936923 (= (and (= (regOne!39822 lt!2631240) (regOne!39822 lt!2631245)) (= (regTwo!39822 lt!2631240) (regTwo!39822 lt!2631245))) (= lambda!464775 lambda!464769))))

(declare-fun bs!1936926 () Bool)

(assert (= bs!1936926 (and b!7499297 b!7499006)))

(assert (=> bs!1936926 (= (and (= (regOne!39822 lt!2631240) lt!2631225) (= (regTwo!39822 lt!2631240) rTail!78)) (= lambda!464775 lambda!464745))))

(declare-fun bs!1936930 () Bool)

(assert (= bs!1936930 (and b!7499297 b!7499290)))

(assert (=> bs!1936930 (not (= lambda!464775 lambda!464773))))

(declare-fun bs!1936933 () Bool)

(assert (= bs!1936933 (and b!7499297 b!7498988)))

(assert (=> bs!1936933 (not (= lambda!464775 lambda!464746))))

(declare-fun bs!1936935 () Bool)

(assert (= bs!1936935 (and b!7499297 b!7499248)))

(assert (=> bs!1936935 (not (= lambda!464775 lambda!464768))))

(assert (=> bs!1936933 (= (and (= (regOne!39822 lt!2631240) r2!5783) (= (regTwo!39822 lt!2631240) rTail!78)) (= lambda!464775 lambda!464747))))

(assert (=> bs!1936926 (not (= lambda!464775 lambda!464744))))

(assert (=> b!7499297 true))

(assert (=> b!7499297 true))

(declare-fun b!7499289 () Bool)

(declare-fun c!1384484 () Bool)

(assert (=> b!7499289 (= c!1384484 ((_ is ElementMatch!19655) lt!2631240))))

(declare-fun e!4471150 () Bool)

(declare-fun e!4471147 () Bool)

(assert (=> b!7499289 (= e!4471150 e!4471147)))

(declare-fun e!4471145 () Bool)

(declare-fun call!688400 () Bool)

(assert (=> b!7499290 (= e!4471145 call!688400)))

(declare-fun c!1384483 () Bool)

(declare-fun bm!688394 () Bool)

(assert (=> bm!688394 (= call!688400 (Exists!4272 (ite c!1384483 lambda!464773 lambda!464775)))))

(declare-fun b!7499291 () Bool)

(declare-fun e!4471144 () Bool)

(assert (=> b!7499291 (= e!4471144 (matchRSpec!4332 (regTwo!39823 lt!2631240) s!13591))))

(declare-fun b!7499292 () Bool)

(declare-fun e!4471149 () Bool)

(assert (=> b!7499292 (= e!4471149 e!4471144)))

(declare-fun res!3008401 () Bool)

(assert (=> b!7499292 (= res!3008401 (matchRSpec!4332 (regOne!39823 lt!2631240) s!13591))))

(assert (=> b!7499292 (=> res!3008401 e!4471144)))

(declare-fun b!7499293 () Bool)

(assert (=> b!7499293 (= e!4471147 (= s!13591 (Cons!72245 (c!1384414 lt!2631240) Nil!72245)))))

(declare-fun b!7499294 () Bool)

(declare-fun e!4471148 () Bool)

(assert (=> b!7499294 (= e!4471148 e!4471150)))

(declare-fun res!3008400 () Bool)

(assert (=> b!7499294 (= res!3008400 (not ((_ is EmptyLang!19655) lt!2631240)))))

(assert (=> b!7499294 (=> (not res!3008400) (not e!4471150))))

(declare-fun d!2302255 () Bool)

(declare-fun c!1384482 () Bool)

(assert (=> d!2302255 (= c!1384482 ((_ is EmptyExpr!19655) lt!2631240))))

(assert (=> d!2302255 (= (matchRSpec!4332 lt!2631240 s!13591) e!4471148)))

(declare-fun bm!688395 () Bool)

(declare-fun call!688399 () Bool)

(assert (=> bm!688395 (= call!688399 (isEmpty!41286 s!13591))))

(declare-fun b!7499295 () Bool)

(declare-fun c!1384481 () Bool)

(assert (=> b!7499295 (= c!1384481 ((_ is Union!19655) lt!2631240))))

(assert (=> b!7499295 (= e!4471147 e!4471149)))

(declare-fun b!7499296 () Bool)

(declare-fun res!3008402 () Bool)

(assert (=> b!7499296 (=> res!3008402 e!4471145)))

(assert (=> b!7499296 (= res!3008402 call!688399)))

(declare-fun e!4471146 () Bool)

(assert (=> b!7499296 (= e!4471146 e!4471145)))

(assert (=> b!7499297 (= e!4471146 call!688400)))

(declare-fun b!7499298 () Bool)

(assert (=> b!7499298 (= e!4471148 call!688399)))

(declare-fun b!7499299 () Bool)

(assert (=> b!7499299 (= e!4471149 e!4471146)))

(assert (=> b!7499299 (= c!1384483 ((_ is Star!19655) lt!2631240))))

(assert (= (and d!2302255 c!1384482) b!7499298))

(assert (= (and d!2302255 (not c!1384482)) b!7499294))

(assert (= (and b!7499294 res!3008400) b!7499289))

(assert (= (and b!7499289 c!1384484) b!7499293))

(assert (= (and b!7499289 (not c!1384484)) b!7499295))

(assert (= (and b!7499295 c!1384481) b!7499292))

(assert (= (and b!7499295 (not c!1384481)) b!7499299))

(assert (= (and b!7499292 (not res!3008401)) b!7499291))

(assert (= (and b!7499299 c!1384483) b!7499296))

(assert (= (and b!7499299 (not c!1384483)) b!7499297))

(assert (= (and b!7499296 (not res!3008402)) b!7499290))

(assert (= (or b!7499290 b!7499297) bm!688394))

(assert (= (or b!7499298 b!7499296) bm!688395))

(declare-fun m!8081808 () Bool)

(assert (=> bm!688394 m!8081808))

(declare-fun m!8081810 () Bool)

(assert (=> b!7499291 m!8081810))

(declare-fun m!8081812 () Bool)

(assert (=> b!7499292 m!8081812))

(assert (=> bm!688395 m!8081688))

(assert (=> b!7498986 d!2302255))

(declare-fun d!2302263 () Bool)

(assert (=> d!2302263 (= (matchR!9417 lt!2631245 s!13591) (matchRSpec!4332 lt!2631245 s!13591))))

(declare-fun lt!2631279 () Unit!166141)

(assert (=> d!2302263 (= lt!2631279 (choose!57971 lt!2631245 s!13591))))

(assert (=> d!2302263 (validRegex!10169 lt!2631245)))

(assert (=> d!2302263 (= (mainMatchTheorem!4326 lt!2631245 s!13591) lt!2631279)))

(declare-fun bs!1936947 () Bool)

(assert (= bs!1936947 d!2302263))

(assert (=> bs!1936947 m!8081656))

(assert (=> bs!1936947 m!8081662))

(declare-fun m!8081820 () Bool)

(assert (=> bs!1936947 m!8081820))

(assert (=> bs!1936947 m!8081702))

(assert (=> b!7498986 d!2302263))

(declare-fun b!7499344 () Bool)

(declare-fun res!3008419 () Bool)

(declare-fun e!4471185 () Bool)

(assert (=> b!7499344 (=> res!3008419 e!4471185)))

(declare-fun e!4471174 () Bool)

(assert (=> b!7499344 (= res!3008419 e!4471174)))

(declare-fun res!3008424 () Bool)

(assert (=> b!7499344 (=> (not res!3008424) (not e!4471174))))

(declare-fun lt!2631281 () Bool)

(assert (=> b!7499344 (= res!3008424 lt!2631281)))

(declare-fun b!7499346 () Bool)

(declare-fun e!4471173 () Bool)

(assert (=> b!7499346 (= e!4471173 (not lt!2631281))))

(declare-fun b!7499347 () Bool)

(declare-fun e!4471172 () Bool)

(assert (=> b!7499347 (= e!4471172 (matchR!9417 (derivativeStep!5648 rTail!78 (head!15388 (_2!37675 lt!2631222))) (tail!14957 (_2!37675 lt!2631222))))))

(declare-fun b!7499348 () Bool)

(declare-fun e!4471184 () Bool)

(assert (=> b!7499348 (= e!4471185 e!4471184)))

(declare-fun res!3008422 () Bool)

(assert (=> b!7499348 (=> (not res!3008422) (not e!4471184))))

(assert (=> b!7499348 (= res!3008422 (not lt!2631281))))

(declare-fun b!7499349 () Bool)

(declare-fun e!4471181 () Bool)

(assert (=> b!7499349 (= e!4471181 e!4471173)))

(declare-fun c!1384499 () Bool)

(assert (=> b!7499349 (= c!1384499 ((_ is EmptyLang!19655) rTail!78))))

(declare-fun b!7499350 () Bool)

(declare-fun res!3008428 () Bool)

(assert (=> b!7499350 (=> res!3008428 e!4471185)))

(assert (=> b!7499350 (= res!3008428 (not ((_ is ElementMatch!19655) rTail!78)))))

(assert (=> b!7499350 (= e!4471173 e!4471185)))

(declare-fun b!7499351 () Bool)

(declare-fun call!688409 () Bool)

(assert (=> b!7499351 (= e!4471181 (= lt!2631281 call!688409))))

(declare-fun d!2302267 () Bool)

(assert (=> d!2302267 e!4471181))

(declare-fun c!1384500 () Bool)

(assert (=> d!2302267 (= c!1384500 ((_ is EmptyExpr!19655) rTail!78))))

(assert (=> d!2302267 (= lt!2631281 e!4471172)))

(declare-fun c!1384494 () Bool)

(assert (=> d!2302267 (= c!1384494 (isEmpty!41286 (_2!37675 lt!2631222)))))

(assert (=> d!2302267 (validRegex!10169 rTail!78)))

(assert (=> d!2302267 (= (matchR!9417 rTail!78 (_2!37675 lt!2631222)) lt!2631281)))

(declare-fun b!7499352 () Bool)

(declare-fun res!3008420 () Bool)

(assert (=> b!7499352 (=> (not res!3008420) (not e!4471174))))

(assert (=> b!7499352 (= res!3008420 (isEmpty!41286 (tail!14957 (_2!37675 lt!2631222))))))

(declare-fun bm!688404 () Bool)

(assert (=> bm!688404 (= call!688409 (isEmpty!41286 (_2!37675 lt!2631222)))))

(declare-fun b!7499353 () Bool)

(declare-fun e!4471183 () Bool)

(assert (=> b!7499353 (= e!4471184 e!4471183)))

(declare-fun res!3008429 () Bool)

(assert (=> b!7499353 (=> res!3008429 e!4471183)))

(assert (=> b!7499353 (= res!3008429 call!688409)))

(declare-fun b!7499354 () Bool)

(assert (=> b!7499354 (= e!4471172 (nullable!8591 rTail!78))))

(declare-fun b!7499355 () Bool)

(assert (=> b!7499355 (= e!4471174 (= (head!15388 (_2!37675 lt!2631222)) (c!1384414 rTail!78)))))

(declare-fun b!7499356 () Bool)

(declare-fun res!3008421 () Bool)

(assert (=> b!7499356 (=> res!3008421 e!4471183)))

(assert (=> b!7499356 (= res!3008421 (not (isEmpty!41286 (tail!14957 (_2!37675 lt!2631222)))))))

(declare-fun b!7499357 () Bool)

(assert (=> b!7499357 (= e!4471183 (not (= (head!15388 (_2!37675 lt!2631222)) (c!1384414 rTail!78))))))

(declare-fun b!7499358 () Bool)

(declare-fun res!3008425 () Bool)

(assert (=> b!7499358 (=> (not res!3008425) (not e!4471174))))

(assert (=> b!7499358 (= res!3008425 (not call!688409))))

(assert (= (and d!2302267 c!1384494) b!7499354))

(assert (= (and d!2302267 (not c!1384494)) b!7499347))

(assert (= (and d!2302267 c!1384500) b!7499351))

(assert (= (and d!2302267 (not c!1384500)) b!7499349))

(assert (= (and b!7499349 c!1384499) b!7499346))

(assert (= (and b!7499349 (not c!1384499)) b!7499350))

(assert (= (and b!7499350 (not res!3008428)) b!7499344))

(assert (= (and b!7499344 res!3008424) b!7499358))

(assert (= (and b!7499358 res!3008425) b!7499352))

(assert (= (and b!7499352 res!3008420) b!7499355))

(assert (= (and b!7499344 (not res!3008419)) b!7499348))

(assert (= (and b!7499348 res!3008422) b!7499353))

(assert (= (and b!7499353 (not res!3008429)) b!7499356))

(assert (= (and b!7499356 (not res!3008421)) b!7499357))

(assert (= (or b!7499351 b!7499353 b!7499358) bm!688404))

(declare-fun m!8081824 () Bool)

(assert (=> b!7499355 m!8081824))

(assert (=> b!7499357 m!8081824))

(declare-fun m!8081826 () Bool)

(assert (=> d!2302267 m!8081826))

(assert (=> d!2302267 m!8081666))

(declare-fun m!8081828 () Bool)

(assert (=> b!7499354 m!8081828))

(declare-fun m!8081830 () Bool)

(assert (=> b!7499352 m!8081830))

(assert (=> b!7499352 m!8081830))

(declare-fun m!8081832 () Bool)

(assert (=> b!7499352 m!8081832))

(assert (=> bm!688404 m!8081826))

(assert (=> b!7499356 m!8081830))

(assert (=> b!7499356 m!8081830))

(assert (=> b!7499356 m!8081832))

(assert (=> b!7499347 m!8081824))

(assert (=> b!7499347 m!8081824))

(declare-fun m!8081834 () Bool)

(assert (=> b!7499347 m!8081834))

(assert (=> b!7499347 m!8081830))

(assert (=> b!7499347 m!8081834))

(assert (=> b!7499347 m!8081830))

(declare-fun m!8081836 () Bool)

(assert (=> b!7499347 m!8081836))

(assert (=> b!7499002 d!2302267))

(declare-fun d!2302271 () Bool)

(assert (=> d!2302271 (= (matchR!9417 lt!2631235 s!13591) (matchRSpec!4332 lt!2631235 s!13591))))

(declare-fun lt!2631282 () Unit!166141)

(assert (=> d!2302271 (= lt!2631282 (choose!57971 lt!2631235 s!13591))))

(assert (=> d!2302271 (validRegex!10169 lt!2631235)))

(assert (=> d!2302271 (= (mainMatchTheorem!4326 lt!2631235 s!13591) lt!2631282)))

(declare-fun bs!1936961 () Bool)

(assert (= bs!1936961 d!2302271))

(assert (=> bs!1936961 m!8081598))

(assert (=> bs!1936961 m!8081592))

(declare-fun m!8081838 () Bool)

(assert (=> bs!1936961 m!8081838))

(declare-fun m!8081840 () Bool)

(assert (=> bs!1936961 m!8081840))

(assert (=> b!7498996 d!2302271))

(declare-fun b!7499359 () Bool)

(declare-fun res!3008430 () Bool)

(declare-fun e!4471192 () Bool)

(assert (=> b!7499359 (=> res!3008430 e!4471192)))

(declare-fun e!4471188 () Bool)

(assert (=> b!7499359 (= res!3008430 e!4471188)))

(declare-fun res!3008434 () Bool)

(assert (=> b!7499359 (=> (not res!3008434) (not e!4471188))))

(declare-fun lt!2631283 () Bool)

(assert (=> b!7499359 (= res!3008434 lt!2631283)))

(declare-fun b!7499360 () Bool)

(declare-fun e!4471187 () Bool)

(assert (=> b!7499360 (= e!4471187 (not lt!2631283))))

(declare-fun b!7499361 () Bool)

(declare-fun e!4471186 () Bool)

(assert (=> b!7499361 (= e!4471186 (matchR!9417 (derivativeStep!5648 lt!2631235 (head!15388 s!13591)) (tail!14957 s!13591)))))

(declare-fun b!7499362 () Bool)

(declare-fun e!4471191 () Bool)

(assert (=> b!7499362 (= e!4471192 e!4471191)))

(declare-fun res!3008433 () Bool)

(assert (=> b!7499362 (=> (not res!3008433) (not e!4471191))))

(assert (=> b!7499362 (= res!3008433 (not lt!2631283))))

(declare-fun b!7499363 () Bool)

(declare-fun e!4471189 () Bool)

(assert (=> b!7499363 (= e!4471189 e!4471187)))

(declare-fun c!1384502 () Bool)

(assert (=> b!7499363 (= c!1384502 ((_ is EmptyLang!19655) lt!2631235))))

(declare-fun b!7499364 () Bool)

(declare-fun res!3008436 () Bool)

(assert (=> b!7499364 (=> res!3008436 e!4471192)))

(assert (=> b!7499364 (= res!3008436 (not ((_ is ElementMatch!19655) lt!2631235)))))

(assert (=> b!7499364 (= e!4471187 e!4471192)))

(declare-fun b!7499365 () Bool)

(declare-fun call!688410 () Bool)

(assert (=> b!7499365 (= e!4471189 (= lt!2631283 call!688410))))

(declare-fun d!2302273 () Bool)

(assert (=> d!2302273 e!4471189))

(declare-fun c!1384503 () Bool)

(assert (=> d!2302273 (= c!1384503 ((_ is EmptyExpr!19655) lt!2631235))))

(assert (=> d!2302273 (= lt!2631283 e!4471186)))

(declare-fun c!1384501 () Bool)

(assert (=> d!2302273 (= c!1384501 (isEmpty!41286 s!13591))))

(assert (=> d!2302273 (validRegex!10169 lt!2631235)))

(assert (=> d!2302273 (= (matchR!9417 lt!2631235 s!13591) lt!2631283)))

(declare-fun b!7499366 () Bool)

(declare-fun res!3008431 () Bool)

(assert (=> b!7499366 (=> (not res!3008431) (not e!4471188))))

(assert (=> b!7499366 (= res!3008431 (isEmpty!41286 (tail!14957 s!13591)))))

(declare-fun bm!688405 () Bool)

(assert (=> bm!688405 (= call!688410 (isEmpty!41286 s!13591))))

(declare-fun b!7499367 () Bool)

(declare-fun e!4471190 () Bool)

(assert (=> b!7499367 (= e!4471191 e!4471190)))

(declare-fun res!3008437 () Bool)

(assert (=> b!7499367 (=> res!3008437 e!4471190)))

(assert (=> b!7499367 (= res!3008437 call!688410)))

(declare-fun b!7499368 () Bool)

(assert (=> b!7499368 (= e!4471186 (nullable!8591 lt!2631235))))

(declare-fun b!7499369 () Bool)

(assert (=> b!7499369 (= e!4471188 (= (head!15388 s!13591) (c!1384414 lt!2631235)))))

(declare-fun b!7499370 () Bool)

(declare-fun res!3008432 () Bool)

(assert (=> b!7499370 (=> res!3008432 e!4471190)))

(assert (=> b!7499370 (= res!3008432 (not (isEmpty!41286 (tail!14957 s!13591))))))

(declare-fun b!7499371 () Bool)

(assert (=> b!7499371 (= e!4471190 (not (= (head!15388 s!13591) (c!1384414 lt!2631235))))))

(declare-fun b!7499372 () Bool)

(declare-fun res!3008435 () Bool)

(assert (=> b!7499372 (=> (not res!3008435) (not e!4471188))))

(assert (=> b!7499372 (= res!3008435 (not call!688410))))

(assert (= (and d!2302273 c!1384501) b!7499368))

(assert (= (and d!2302273 (not c!1384501)) b!7499361))

(assert (= (and d!2302273 c!1384503) b!7499365))

(assert (= (and d!2302273 (not c!1384503)) b!7499363))

(assert (= (and b!7499363 c!1384502) b!7499360))

(assert (= (and b!7499363 (not c!1384502)) b!7499364))

(assert (= (and b!7499364 (not res!3008436)) b!7499359))

(assert (= (and b!7499359 res!3008434) b!7499372))

(assert (= (and b!7499372 res!3008435) b!7499366))

(assert (= (and b!7499366 res!3008431) b!7499369))

(assert (= (and b!7499359 (not res!3008430)) b!7499362))

(assert (= (and b!7499362 res!3008433) b!7499367))

(assert (= (and b!7499367 (not res!3008437)) b!7499370))

(assert (= (and b!7499370 (not res!3008432)) b!7499371))

(assert (= (or b!7499365 b!7499367 b!7499372) bm!688405))

(assert (=> b!7499369 m!8081686))

(assert (=> b!7499371 m!8081686))

(assert (=> d!2302273 m!8081688))

(assert (=> d!2302273 m!8081840))

(declare-fun m!8081842 () Bool)

(assert (=> b!7499368 m!8081842))

(assert (=> b!7499366 m!8081694))

(assert (=> b!7499366 m!8081694))

(assert (=> b!7499366 m!8081696))

(assert (=> bm!688405 m!8081688))

(assert (=> b!7499370 m!8081694))

(assert (=> b!7499370 m!8081694))

(assert (=> b!7499370 m!8081696))

(assert (=> b!7499361 m!8081686))

(assert (=> b!7499361 m!8081686))

(declare-fun m!8081850 () Bool)

(assert (=> b!7499361 m!8081850))

(assert (=> b!7499361 m!8081694))

(assert (=> b!7499361 m!8081850))

(assert (=> b!7499361 m!8081694))

(declare-fun m!8081852 () Bool)

(assert (=> b!7499361 m!8081852))

(assert (=> b!7498996 d!2302273))

(declare-fun d!2302277 () Bool)

(assert (=> d!2302277 (= (matchR!9417 lt!2631226 s!13591) (matchRSpec!4332 lt!2631226 s!13591))))

(declare-fun lt!2631285 () Unit!166141)

(assert (=> d!2302277 (= lt!2631285 (choose!57971 lt!2631226 s!13591))))

(assert (=> d!2302277 (validRegex!10169 lt!2631226)))

(assert (=> d!2302277 (= (mainMatchTheorem!4326 lt!2631226 s!13591) lt!2631285)))

(declare-fun bs!1936975 () Bool)

(assert (= bs!1936975 d!2302277))

(assert (=> bs!1936975 m!8081590))

(assert (=> bs!1936975 m!8081600))

(declare-fun m!8081854 () Bool)

(assert (=> bs!1936975 m!8081854))

(declare-fun m!8081856 () Bool)

(assert (=> bs!1936975 m!8081856))

(assert (=> b!7498996 d!2302277))

(declare-fun bs!1936977 () Bool)

(declare-fun b!7499388 () Bool)

(assert (= bs!1936977 (and b!7499388 b!7499255)))

(declare-fun lambda!464779 () Int)

(assert (=> bs!1936977 (not (= lambda!464779 lambda!464769))))

(declare-fun bs!1936981 () Bool)

(assert (= bs!1936981 (and b!7499388 b!7499006)))

(assert (=> bs!1936981 (not (= lambda!464779 lambda!464745))))

(declare-fun bs!1936984 () Bool)

(assert (= bs!1936984 (and b!7499388 b!7499297)))

(assert (=> bs!1936984 (not (= lambda!464779 lambda!464775))))

(declare-fun bs!1936987 () Bool)

(assert (= bs!1936987 (and b!7499388 b!7499290)))

(assert (=> bs!1936987 (= (and (= (reg!19984 lt!2631235) (reg!19984 lt!2631240)) (= lt!2631235 lt!2631240)) (= lambda!464779 lambda!464773))))

(declare-fun bs!1936992 () Bool)

(assert (= bs!1936992 (and b!7499388 b!7498988)))

(assert (=> bs!1936992 (not (= lambda!464779 lambda!464746))))

(declare-fun bs!1936995 () Bool)

(assert (= bs!1936995 (and b!7499388 b!7499248)))

(assert (=> bs!1936995 (= (and (= (reg!19984 lt!2631235) (reg!19984 lt!2631245)) (= lt!2631235 lt!2631245)) (= lambda!464779 lambda!464768))))

(assert (=> bs!1936992 (not (= lambda!464779 lambda!464747))))

(assert (=> bs!1936981 (not (= lambda!464779 lambda!464744))))

(assert (=> b!7499388 true))

(assert (=> b!7499388 true))

(declare-fun bs!1936997 () Bool)

(declare-fun b!7499395 () Bool)

(assert (= bs!1936997 (and b!7499395 b!7499255)))

(declare-fun lambda!464782 () Int)

(assert (=> bs!1936997 (= (and (= (regOne!39822 lt!2631235) (regOne!39822 lt!2631245)) (= (regTwo!39822 lt!2631235) (regTwo!39822 lt!2631245))) (= lambda!464782 lambda!464769))))

(declare-fun bs!1936998 () Bool)

(assert (= bs!1936998 (and b!7499395 b!7499006)))

(assert (=> bs!1936998 (= (and (= (regOne!39822 lt!2631235) lt!2631225) (= (regTwo!39822 lt!2631235) rTail!78)) (= lambda!464782 lambda!464745))))

(declare-fun bs!1936999 () Bool)

(assert (= bs!1936999 (and b!7499395 b!7499297)))

(assert (=> bs!1936999 (= (and (= (regOne!39822 lt!2631235) (regOne!39822 lt!2631240)) (= (regTwo!39822 lt!2631235) (regTwo!39822 lt!2631240))) (= lambda!464782 lambda!464775))))

(declare-fun bs!1937000 () Bool)

(assert (= bs!1937000 (and b!7499395 b!7499388)))

(assert (=> bs!1937000 (not (= lambda!464782 lambda!464779))))

(declare-fun bs!1937003 () Bool)

(assert (= bs!1937003 (and b!7499395 b!7499290)))

(assert (=> bs!1937003 (not (= lambda!464782 lambda!464773))))

(declare-fun bs!1937006 () Bool)

(assert (= bs!1937006 (and b!7499395 b!7498988)))

(assert (=> bs!1937006 (not (= lambda!464782 lambda!464746))))

(declare-fun bs!1937009 () Bool)

(assert (= bs!1937009 (and b!7499395 b!7499248)))

(assert (=> bs!1937009 (not (= lambda!464782 lambda!464768))))

(assert (=> bs!1937006 (= (and (= (regOne!39822 lt!2631235) r2!5783) (= (regTwo!39822 lt!2631235) rTail!78)) (= lambda!464782 lambda!464747))))

(assert (=> bs!1936998 (not (= lambda!464782 lambda!464744))))

(assert (=> b!7499395 true))

(assert (=> b!7499395 true))

(declare-fun b!7499387 () Bool)

(declare-fun c!1384510 () Bool)

(assert (=> b!7499387 (= c!1384510 ((_ is ElementMatch!19655) lt!2631235))))

(declare-fun e!4471206 () Bool)

(declare-fun e!4471203 () Bool)

(assert (=> b!7499387 (= e!4471206 e!4471203)))

(declare-fun e!4471201 () Bool)

(declare-fun call!688413 () Bool)

(assert (=> b!7499388 (= e!4471201 call!688413)))

(declare-fun bm!688407 () Bool)

(declare-fun c!1384509 () Bool)

(assert (=> bm!688407 (= call!688413 (Exists!4272 (ite c!1384509 lambda!464779 lambda!464782)))))

(declare-fun b!7499389 () Bool)

(declare-fun e!4471200 () Bool)

(assert (=> b!7499389 (= e!4471200 (matchRSpec!4332 (regTwo!39823 lt!2631235) s!13591))))

(declare-fun b!7499390 () Bool)

(declare-fun e!4471205 () Bool)

(assert (=> b!7499390 (= e!4471205 e!4471200)))

(declare-fun res!3008447 () Bool)

(assert (=> b!7499390 (= res!3008447 (matchRSpec!4332 (regOne!39823 lt!2631235) s!13591))))

(assert (=> b!7499390 (=> res!3008447 e!4471200)))

(declare-fun b!7499391 () Bool)

(assert (=> b!7499391 (= e!4471203 (= s!13591 (Cons!72245 (c!1384414 lt!2631235) Nil!72245)))))

(declare-fun b!7499392 () Bool)

(declare-fun e!4471204 () Bool)

(assert (=> b!7499392 (= e!4471204 e!4471206)))

(declare-fun res!3008446 () Bool)

(assert (=> b!7499392 (= res!3008446 (not ((_ is EmptyLang!19655) lt!2631235)))))

(assert (=> b!7499392 (=> (not res!3008446) (not e!4471206))))

(declare-fun d!2302279 () Bool)

(declare-fun c!1384508 () Bool)

(assert (=> d!2302279 (= c!1384508 ((_ is EmptyExpr!19655) lt!2631235))))

(assert (=> d!2302279 (= (matchRSpec!4332 lt!2631235 s!13591) e!4471204)))

(declare-fun bm!688408 () Bool)

(declare-fun call!688412 () Bool)

(assert (=> bm!688408 (= call!688412 (isEmpty!41286 s!13591))))

(declare-fun b!7499393 () Bool)

(declare-fun c!1384507 () Bool)

(assert (=> b!7499393 (= c!1384507 ((_ is Union!19655) lt!2631235))))

(assert (=> b!7499393 (= e!4471203 e!4471205)))

(declare-fun b!7499394 () Bool)

(declare-fun res!3008448 () Bool)

(assert (=> b!7499394 (=> res!3008448 e!4471201)))

(assert (=> b!7499394 (= res!3008448 call!688412)))

(declare-fun e!4471202 () Bool)

(assert (=> b!7499394 (= e!4471202 e!4471201)))

(assert (=> b!7499395 (= e!4471202 call!688413)))

(declare-fun b!7499396 () Bool)

(assert (=> b!7499396 (= e!4471204 call!688412)))

(declare-fun b!7499397 () Bool)

(assert (=> b!7499397 (= e!4471205 e!4471202)))

(assert (=> b!7499397 (= c!1384509 ((_ is Star!19655) lt!2631235))))

(assert (= (and d!2302279 c!1384508) b!7499396))

(assert (= (and d!2302279 (not c!1384508)) b!7499392))

(assert (= (and b!7499392 res!3008446) b!7499387))

(assert (= (and b!7499387 c!1384510) b!7499391))

(assert (= (and b!7499387 (not c!1384510)) b!7499393))

(assert (= (and b!7499393 c!1384507) b!7499390))

(assert (= (and b!7499393 (not c!1384507)) b!7499397))

(assert (= (and b!7499390 (not res!3008447)) b!7499389))

(assert (= (and b!7499397 c!1384509) b!7499394))

(assert (= (and b!7499397 (not c!1384509)) b!7499395))

(assert (= (and b!7499394 (not res!3008448)) b!7499388))

(assert (= (or b!7499388 b!7499395) bm!688407))

(assert (= (or b!7499396 b!7499394) bm!688408))

(declare-fun m!8081882 () Bool)

(assert (=> bm!688407 m!8081882))

(declare-fun m!8081884 () Bool)

(assert (=> b!7499389 m!8081884))

(declare-fun m!8081886 () Bool)

(assert (=> b!7499390 m!8081886))

(assert (=> bm!688408 m!8081688))

(assert (=> b!7498996 d!2302279))

(declare-fun bs!1937023 () Bool)

(declare-fun b!7499417 () Bool)

(assert (= bs!1937023 (and b!7499417 b!7499255)))

(declare-fun lambda!464784 () Int)

(assert (=> bs!1937023 (not (= lambda!464784 lambda!464769))))

(declare-fun bs!1937024 () Bool)

(assert (= bs!1937024 (and b!7499417 b!7499006)))

(assert (=> bs!1937024 (not (= lambda!464784 lambda!464745))))

(declare-fun bs!1937025 () Bool)

(assert (= bs!1937025 (and b!7499417 b!7499388)))

(assert (=> bs!1937025 (= (and (= (reg!19984 lt!2631226) (reg!19984 lt!2631235)) (= lt!2631226 lt!2631235)) (= lambda!464784 lambda!464779))))

(declare-fun bs!1937026 () Bool)

(assert (= bs!1937026 (and b!7499417 b!7499290)))

(assert (=> bs!1937026 (= (and (= (reg!19984 lt!2631226) (reg!19984 lt!2631240)) (= lt!2631226 lt!2631240)) (= lambda!464784 lambda!464773))))

(declare-fun bs!1937027 () Bool)

(assert (= bs!1937027 (and b!7499417 b!7498988)))

(assert (=> bs!1937027 (not (= lambda!464784 lambda!464746))))

(declare-fun bs!1937028 () Bool)

(assert (= bs!1937028 (and b!7499417 b!7499248)))

(assert (=> bs!1937028 (= (and (= (reg!19984 lt!2631226) (reg!19984 lt!2631245)) (= lt!2631226 lt!2631245)) (= lambda!464784 lambda!464768))))

(assert (=> bs!1937027 (not (= lambda!464784 lambda!464747))))

(assert (=> bs!1937024 (not (= lambda!464784 lambda!464744))))

(declare-fun bs!1937031 () Bool)

(assert (= bs!1937031 (and b!7499417 b!7499395)))

(assert (=> bs!1937031 (not (= lambda!464784 lambda!464782))))

(declare-fun bs!1937032 () Bool)

(assert (= bs!1937032 (and b!7499417 b!7499297)))

(assert (=> bs!1937032 (not (= lambda!464784 lambda!464775))))

(assert (=> b!7499417 true))

(assert (=> b!7499417 true))

(declare-fun bs!1937036 () Bool)

(declare-fun b!7499424 () Bool)

(assert (= bs!1937036 (and b!7499424 b!7499255)))

(declare-fun lambda!464786 () Int)

(assert (=> bs!1937036 (= (and (= (regOne!39822 lt!2631226) (regOne!39822 lt!2631245)) (= (regTwo!39822 lt!2631226) (regTwo!39822 lt!2631245))) (= lambda!464786 lambda!464769))))

(declare-fun bs!1937039 () Bool)

(assert (= bs!1937039 (and b!7499424 b!7499006)))

(assert (=> bs!1937039 (= (and (= (regOne!39822 lt!2631226) lt!2631225) (= (regTwo!39822 lt!2631226) rTail!78)) (= lambda!464786 lambda!464745))))

(declare-fun bs!1937041 () Bool)

(assert (= bs!1937041 (and b!7499424 b!7499388)))

(assert (=> bs!1937041 (not (= lambda!464786 lambda!464779))))

(declare-fun bs!1937044 () Bool)

(assert (= bs!1937044 (and b!7499424 b!7499290)))

(assert (=> bs!1937044 (not (= lambda!464786 lambda!464773))))

(declare-fun bs!1937046 () Bool)

(assert (= bs!1937046 (and b!7499424 b!7499417)))

(assert (=> bs!1937046 (not (= lambda!464786 lambda!464784))))

(declare-fun bs!1937049 () Bool)

(assert (= bs!1937049 (and b!7499424 b!7498988)))

(assert (=> bs!1937049 (not (= lambda!464786 lambda!464746))))

(declare-fun bs!1937052 () Bool)

(assert (= bs!1937052 (and b!7499424 b!7499248)))

(assert (=> bs!1937052 (not (= lambda!464786 lambda!464768))))

(assert (=> bs!1937049 (= (and (= (regOne!39822 lt!2631226) r2!5783) (= (regTwo!39822 lt!2631226) rTail!78)) (= lambda!464786 lambda!464747))))

(assert (=> bs!1937039 (not (= lambda!464786 lambda!464744))))

(declare-fun bs!1937056 () Bool)

(assert (= bs!1937056 (and b!7499424 b!7499395)))

(assert (=> bs!1937056 (= (and (= (regOne!39822 lt!2631226) (regOne!39822 lt!2631235)) (= (regTwo!39822 lt!2631226) (regTwo!39822 lt!2631235))) (= lambda!464786 lambda!464782))))

(declare-fun bs!1937057 () Bool)

(assert (= bs!1937057 (and b!7499424 b!7499297)))

(assert (=> bs!1937057 (= (and (= (regOne!39822 lt!2631226) (regOne!39822 lt!2631240)) (= (regTwo!39822 lt!2631226) (regTwo!39822 lt!2631240))) (= lambda!464786 lambda!464775))))

(assert (=> b!7499424 true))

(assert (=> b!7499424 true))

(declare-fun b!7499416 () Bool)

(declare-fun c!1384518 () Bool)

(assert (=> b!7499416 (= c!1384518 ((_ is ElementMatch!19655) lt!2631226))))

(declare-fun e!4471225 () Bool)

(declare-fun e!4471222 () Bool)

(assert (=> b!7499416 (= e!4471225 e!4471222)))

(declare-fun e!4471220 () Bool)

(declare-fun call!688418 () Bool)

(assert (=> b!7499417 (= e!4471220 call!688418)))

(declare-fun bm!688412 () Bool)

(declare-fun c!1384517 () Bool)

(assert (=> bm!688412 (= call!688418 (Exists!4272 (ite c!1384517 lambda!464784 lambda!464786)))))

(declare-fun b!7499418 () Bool)

(declare-fun e!4471219 () Bool)

(assert (=> b!7499418 (= e!4471219 (matchRSpec!4332 (regTwo!39823 lt!2631226) s!13591))))

(declare-fun b!7499419 () Bool)

(declare-fun e!4471224 () Bool)

(assert (=> b!7499419 (= e!4471224 e!4471219)))

(declare-fun res!3008460 () Bool)

(assert (=> b!7499419 (= res!3008460 (matchRSpec!4332 (regOne!39823 lt!2631226) s!13591))))

(assert (=> b!7499419 (=> res!3008460 e!4471219)))

(declare-fun b!7499420 () Bool)

(assert (=> b!7499420 (= e!4471222 (= s!13591 (Cons!72245 (c!1384414 lt!2631226) Nil!72245)))))

(declare-fun b!7499421 () Bool)

(declare-fun e!4471223 () Bool)

(assert (=> b!7499421 (= e!4471223 e!4471225)))

(declare-fun res!3008459 () Bool)

(assert (=> b!7499421 (= res!3008459 (not ((_ is EmptyLang!19655) lt!2631226)))))

(assert (=> b!7499421 (=> (not res!3008459) (not e!4471225))))

(declare-fun d!2302289 () Bool)

(declare-fun c!1384516 () Bool)

(assert (=> d!2302289 (= c!1384516 ((_ is EmptyExpr!19655) lt!2631226))))

(assert (=> d!2302289 (= (matchRSpec!4332 lt!2631226 s!13591) e!4471223)))

(declare-fun bm!688413 () Bool)

(declare-fun call!688417 () Bool)

(assert (=> bm!688413 (= call!688417 (isEmpty!41286 s!13591))))

(declare-fun b!7499422 () Bool)

(declare-fun c!1384515 () Bool)

(assert (=> b!7499422 (= c!1384515 ((_ is Union!19655) lt!2631226))))

(assert (=> b!7499422 (= e!4471222 e!4471224)))

(declare-fun b!7499423 () Bool)

(declare-fun res!3008461 () Bool)

(assert (=> b!7499423 (=> res!3008461 e!4471220)))

(assert (=> b!7499423 (= res!3008461 call!688417)))

(declare-fun e!4471221 () Bool)

(assert (=> b!7499423 (= e!4471221 e!4471220)))

(assert (=> b!7499424 (= e!4471221 call!688418)))

(declare-fun b!7499425 () Bool)

(assert (=> b!7499425 (= e!4471223 call!688417)))

(declare-fun b!7499426 () Bool)

(assert (=> b!7499426 (= e!4471224 e!4471221)))

(assert (=> b!7499426 (= c!1384517 ((_ is Star!19655) lt!2631226))))

(assert (= (and d!2302289 c!1384516) b!7499425))

(assert (= (and d!2302289 (not c!1384516)) b!7499421))

(assert (= (and b!7499421 res!3008459) b!7499416))

(assert (= (and b!7499416 c!1384518) b!7499420))

(assert (= (and b!7499416 (not c!1384518)) b!7499422))

(assert (= (and b!7499422 c!1384515) b!7499419))

(assert (= (and b!7499422 (not c!1384515)) b!7499426))

(assert (= (and b!7499419 (not res!3008460)) b!7499418))

(assert (= (and b!7499426 c!1384517) b!7499423))

(assert (= (and b!7499426 (not c!1384517)) b!7499424))

(assert (= (and b!7499423 (not res!3008461)) b!7499417))

(assert (= (or b!7499417 b!7499424) bm!688412))

(assert (= (or b!7499425 b!7499423) bm!688413))

(declare-fun m!8081934 () Bool)

(assert (=> bm!688412 m!8081934))

(declare-fun m!8081936 () Bool)

(assert (=> b!7499418 m!8081936))

(declare-fun m!8081938 () Bool)

(assert (=> b!7499419 m!8081938))

(assert (=> bm!688413 m!8081688))

(assert (=> b!7498996 d!2302289))

(declare-fun b!7499475 () Bool)

(declare-fun res!3008486 () Bool)

(declare-fun e!4471260 () Bool)

(assert (=> b!7499475 (=> res!3008486 e!4471260)))

(declare-fun e!4471256 () Bool)

(assert (=> b!7499475 (= res!3008486 e!4471256)))

(declare-fun res!3008490 () Bool)

(assert (=> b!7499475 (=> (not res!3008490) (not e!4471256))))

(declare-fun lt!2631295 () Bool)

(assert (=> b!7499475 (= res!3008490 lt!2631295)))

(declare-fun b!7499476 () Bool)

(declare-fun e!4471255 () Bool)

(assert (=> b!7499476 (= e!4471255 (not lt!2631295))))

(declare-fun b!7499477 () Bool)

(declare-fun e!4471254 () Bool)

(assert (=> b!7499477 (= e!4471254 (matchR!9417 (derivativeStep!5648 lt!2631226 (head!15388 s!13591)) (tail!14957 s!13591)))))

(declare-fun b!7499478 () Bool)

(declare-fun e!4471259 () Bool)

(assert (=> b!7499478 (= e!4471260 e!4471259)))

(declare-fun res!3008489 () Bool)

(assert (=> b!7499478 (=> (not res!3008489) (not e!4471259))))

(assert (=> b!7499478 (= res!3008489 (not lt!2631295))))

(declare-fun b!7499479 () Bool)

(declare-fun e!4471257 () Bool)

(assert (=> b!7499479 (= e!4471257 e!4471255)))

(declare-fun c!1384532 () Bool)

(assert (=> b!7499479 (= c!1384532 ((_ is EmptyLang!19655) lt!2631226))))

(declare-fun b!7499480 () Bool)

(declare-fun res!3008492 () Bool)

(assert (=> b!7499480 (=> res!3008492 e!4471260)))

(assert (=> b!7499480 (= res!3008492 (not ((_ is ElementMatch!19655) lt!2631226)))))

(assert (=> b!7499480 (= e!4471255 e!4471260)))

(declare-fun b!7499481 () Bool)

(declare-fun call!688426 () Bool)

(assert (=> b!7499481 (= e!4471257 (= lt!2631295 call!688426))))

(declare-fun d!2302311 () Bool)

(assert (=> d!2302311 e!4471257))

(declare-fun c!1384533 () Bool)

(assert (=> d!2302311 (= c!1384533 ((_ is EmptyExpr!19655) lt!2631226))))

(assert (=> d!2302311 (= lt!2631295 e!4471254)))

(declare-fun c!1384531 () Bool)

(assert (=> d!2302311 (= c!1384531 (isEmpty!41286 s!13591))))

(assert (=> d!2302311 (validRegex!10169 lt!2631226)))

(assert (=> d!2302311 (= (matchR!9417 lt!2631226 s!13591) lt!2631295)))

(declare-fun b!7499482 () Bool)

(declare-fun res!3008487 () Bool)

(assert (=> b!7499482 (=> (not res!3008487) (not e!4471256))))

(assert (=> b!7499482 (= res!3008487 (isEmpty!41286 (tail!14957 s!13591)))))

(declare-fun bm!688421 () Bool)

(assert (=> bm!688421 (= call!688426 (isEmpty!41286 s!13591))))

(declare-fun b!7499483 () Bool)

(declare-fun e!4471258 () Bool)

(assert (=> b!7499483 (= e!4471259 e!4471258)))

(declare-fun res!3008493 () Bool)

(assert (=> b!7499483 (=> res!3008493 e!4471258)))

(assert (=> b!7499483 (= res!3008493 call!688426)))

(declare-fun b!7499484 () Bool)

(assert (=> b!7499484 (= e!4471254 (nullable!8591 lt!2631226))))

(declare-fun b!7499485 () Bool)

(assert (=> b!7499485 (= e!4471256 (= (head!15388 s!13591) (c!1384414 lt!2631226)))))

(declare-fun b!7499486 () Bool)

(declare-fun res!3008488 () Bool)

(assert (=> b!7499486 (=> res!3008488 e!4471258)))

(assert (=> b!7499486 (= res!3008488 (not (isEmpty!41286 (tail!14957 s!13591))))))

(declare-fun b!7499487 () Bool)

(assert (=> b!7499487 (= e!4471258 (not (= (head!15388 s!13591) (c!1384414 lt!2631226))))))

(declare-fun b!7499488 () Bool)

(declare-fun res!3008491 () Bool)

(assert (=> b!7499488 (=> (not res!3008491) (not e!4471256))))

(assert (=> b!7499488 (= res!3008491 (not call!688426))))

(assert (= (and d!2302311 c!1384531) b!7499484))

(assert (= (and d!2302311 (not c!1384531)) b!7499477))

(assert (= (and d!2302311 c!1384533) b!7499481))

(assert (= (and d!2302311 (not c!1384533)) b!7499479))

(assert (= (and b!7499479 c!1384532) b!7499476))

(assert (= (and b!7499479 (not c!1384532)) b!7499480))

(assert (= (and b!7499480 (not res!3008492)) b!7499475))

(assert (= (and b!7499475 res!3008490) b!7499488))

(assert (= (and b!7499488 res!3008491) b!7499482))

(assert (= (and b!7499482 res!3008487) b!7499485))

(assert (= (and b!7499475 (not res!3008486)) b!7499478))

(assert (= (and b!7499478 res!3008489) b!7499483))

(assert (= (and b!7499483 (not res!3008493)) b!7499486))

(assert (= (and b!7499486 (not res!3008488)) b!7499487))

(assert (= (or b!7499481 b!7499483 b!7499488) bm!688421))

(assert (=> b!7499485 m!8081686))

(assert (=> b!7499487 m!8081686))

(assert (=> d!2302311 m!8081688))

(assert (=> d!2302311 m!8081856))

(declare-fun m!8081940 () Bool)

(assert (=> b!7499484 m!8081940))

(assert (=> b!7499482 m!8081694))

(assert (=> b!7499482 m!8081694))

(assert (=> b!7499482 m!8081696))

(assert (=> bm!688421 m!8081688))

(assert (=> b!7499486 m!8081694))

(assert (=> b!7499486 m!8081694))

(assert (=> b!7499486 m!8081696))

(assert (=> b!7499477 m!8081686))

(assert (=> b!7499477 m!8081686))

(declare-fun m!8081942 () Bool)

(assert (=> b!7499477 m!8081942))

(assert (=> b!7499477 m!8081694))

(assert (=> b!7499477 m!8081942))

(assert (=> b!7499477 m!8081694))

(declare-fun m!8081944 () Bool)

(assert (=> b!7499477 m!8081944))

(assert (=> b!7498996 d!2302311))

(declare-fun b!7499555 () Bool)

(declare-fun e!4471303 () Bool)

(declare-fun call!688440 () Bool)

(assert (=> b!7499555 (= e!4471303 call!688440)))

(declare-fun bm!688435 () Bool)

(declare-fun call!688441 () Bool)

(assert (=> bm!688435 (= call!688440 call!688441)))

(declare-fun b!7499557 () Bool)

(declare-fun e!4471306 () Bool)

(declare-fun e!4471308 () Bool)

(assert (=> b!7499557 (= e!4471306 e!4471308)))

(declare-fun c!1384550 () Bool)

(assert (=> b!7499557 (= c!1384550 ((_ is Union!19655) r1!5845))))

(declare-fun b!7499558 () Bool)

(declare-fun e!4471307 () Bool)

(assert (=> b!7499558 (= e!4471307 call!688440)))

(declare-fun b!7499559 () Bool)

(declare-fun e!4471309 () Bool)

(assert (=> b!7499559 (= e!4471309 call!688441)))

(declare-fun b!7499560 () Bool)

(declare-fun e!4471305 () Bool)

(assert (=> b!7499560 (= e!4471305 e!4471307)))

(declare-fun res!3008528 () Bool)

(assert (=> b!7499560 (=> (not res!3008528) (not e!4471307))))

(declare-fun call!688442 () Bool)

(assert (=> b!7499560 (= res!3008528 call!688442)))

(declare-fun b!7499561 () Bool)

(declare-fun e!4471304 () Bool)

(assert (=> b!7499561 (= e!4471304 e!4471306)))

(declare-fun c!1384551 () Bool)

(assert (=> b!7499561 (= c!1384551 ((_ is Star!19655) r1!5845))))

(declare-fun bm!688436 () Bool)

(assert (=> bm!688436 (= call!688442 (validRegex!10169 (ite c!1384550 (regOne!39823 r1!5845) (regOne!39822 r1!5845))))))

(declare-fun b!7499562 () Bool)

(declare-fun res!3008532 () Bool)

(assert (=> b!7499562 (=> res!3008532 e!4471305)))

(assert (=> b!7499562 (= res!3008532 (not ((_ is Concat!28500) r1!5845)))))

(assert (=> b!7499562 (= e!4471308 e!4471305)))

(declare-fun b!7499556 () Bool)

(declare-fun res!3008530 () Bool)

(assert (=> b!7499556 (=> (not res!3008530) (not e!4471303))))

(assert (=> b!7499556 (= res!3008530 call!688442)))

(assert (=> b!7499556 (= e!4471308 e!4471303)))

(declare-fun d!2302313 () Bool)

(declare-fun res!3008529 () Bool)

(assert (=> d!2302313 (=> res!3008529 e!4471304)))

(assert (=> d!2302313 (= res!3008529 ((_ is ElementMatch!19655) r1!5845))))

(assert (=> d!2302313 (= (validRegex!10169 r1!5845) e!4471304)))

(declare-fun bm!688437 () Bool)

(assert (=> bm!688437 (= call!688441 (validRegex!10169 (ite c!1384551 (reg!19984 r1!5845) (ite c!1384550 (regTwo!39823 r1!5845) (regTwo!39822 r1!5845)))))))

(declare-fun b!7499563 () Bool)

(assert (=> b!7499563 (= e!4471306 e!4471309)))

(declare-fun res!3008531 () Bool)

(assert (=> b!7499563 (= res!3008531 (not (nullable!8591 (reg!19984 r1!5845))))))

(assert (=> b!7499563 (=> (not res!3008531) (not e!4471309))))

(assert (= (and d!2302313 (not res!3008529)) b!7499561))

(assert (= (and b!7499561 c!1384551) b!7499563))

(assert (= (and b!7499561 (not c!1384551)) b!7499557))

(assert (= (and b!7499563 res!3008531) b!7499559))

(assert (= (and b!7499557 c!1384550) b!7499556))

(assert (= (and b!7499557 (not c!1384550)) b!7499562))

(assert (= (and b!7499556 res!3008530) b!7499555))

(assert (= (and b!7499562 (not res!3008532)) b!7499560))

(assert (= (and b!7499560 res!3008528) b!7499558))

(assert (= (or b!7499555 b!7499558) bm!688435))

(assert (= (or b!7499556 b!7499560) bm!688436))

(assert (= (or b!7499559 bm!688435) bm!688437))

(declare-fun m!8081984 () Bool)

(assert (=> bm!688436 m!8081984))

(declare-fun m!8081986 () Bool)

(assert (=> bm!688437 m!8081986))

(declare-fun m!8081988 () Bool)

(assert (=> b!7499563 m!8081988))

(assert (=> start!725578 d!2302313))

(declare-fun d!2302323 () Bool)

(assert (=> d!2302323 (= (matchR!9417 r2!5783 (_1!37675 lt!2631222)) (matchRSpec!4332 r2!5783 (_1!37675 lt!2631222)))))

(declare-fun lt!2631298 () Unit!166141)

(assert (=> d!2302323 (= lt!2631298 (choose!57971 r2!5783 (_1!37675 lt!2631222)))))

(assert (=> d!2302323 (validRegex!10169 r2!5783)))

(assert (=> d!2302323 (= (mainMatchTheorem!4326 r2!5783 (_1!37675 lt!2631222)) lt!2631298)))

(declare-fun bs!1937112 () Bool)

(assert (= bs!1937112 d!2302323))

(assert (=> bs!1937112 m!8081624))

(assert (=> bs!1937112 m!8081638))

(declare-fun m!8081990 () Bool)

(assert (=> bs!1937112 m!8081990))

(assert (=> bs!1937112 m!8081636))

(assert (=> b!7499003 d!2302323))

(declare-fun b!7499586 () Bool)

(declare-fun res!3008533 () Bool)

(declare-fun e!4471322 () Bool)

(assert (=> b!7499586 (=> res!3008533 e!4471322)))

(declare-fun e!4471318 () Bool)

(assert (=> b!7499586 (= res!3008533 e!4471318)))

(declare-fun res!3008537 () Bool)

(assert (=> b!7499586 (=> (not res!3008537) (not e!4471318))))

(declare-fun lt!2631299 () Bool)

(assert (=> b!7499586 (= res!3008537 lt!2631299)))

(declare-fun b!7499587 () Bool)

(declare-fun e!4471317 () Bool)

(assert (=> b!7499587 (= e!4471317 (not lt!2631299))))

(declare-fun b!7499588 () Bool)

(declare-fun e!4471316 () Bool)

(assert (=> b!7499588 (= e!4471316 (matchR!9417 (derivativeStep!5648 r1!5845 (head!15388 (_1!37675 lt!2631222))) (tail!14957 (_1!37675 lt!2631222))))))

(declare-fun b!7499589 () Bool)

(declare-fun e!4471321 () Bool)

(assert (=> b!7499589 (= e!4471322 e!4471321)))

(declare-fun res!3008536 () Bool)

(assert (=> b!7499589 (=> (not res!3008536) (not e!4471321))))

(assert (=> b!7499589 (= res!3008536 (not lt!2631299))))

(declare-fun b!7499590 () Bool)

(declare-fun e!4471319 () Bool)

(assert (=> b!7499590 (= e!4471319 e!4471317)))

(declare-fun c!1384553 () Bool)

(assert (=> b!7499590 (= c!1384553 ((_ is EmptyLang!19655) r1!5845))))

(declare-fun b!7499591 () Bool)

(declare-fun res!3008539 () Bool)

(assert (=> b!7499591 (=> res!3008539 e!4471322)))

(assert (=> b!7499591 (= res!3008539 (not ((_ is ElementMatch!19655) r1!5845)))))

(assert (=> b!7499591 (= e!4471317 e!4471322)))

(declare-fun b!7499592 () Bool)

(declare-fun call!688443 () Bool)

(assert (=> b!7499592 (= e!4471319 (= lt!2631299 call!688443))))

(declare-fun d!2302325 () Bool)

(assert (=> d!2302325 e!4471319))

(declare-fun c!1384554 () Bool)

(assert (=> d!2302325 (= c!1384554 ((_ is EmptyExpr!19655) r1!5845))))

(assert (=> d!2302325 (= lt!2631299 e!4471316)))

(declare-fun c!1384552 () Bool)

(assert (=> d!2302325 (= c!1384552 (isEmpty!41286 (_1!37675 lt!2631222)))))

(assert (=> d!2302325 (validRegex!10169 r1!5845)))

(assert (=> d!2302325 (= (matchR!9417 r1!5845 (_1!37675 lt!2631222)) lt!2631299)))

(declare-fun b!7499593 () Bool)

(declare-fun res!3008534 () Bool)

(assert (=> b!7499593 (=> (not res!3008534) (not e!4471318))))

(assert (=> b!7499593 (= res!3008534 (isEmpty!41286 (tail!14957 (_1!37675 lt!2631222))))))

(declare-fun bm!688438 () Bool)

(assert (=> bm!688438 (= call!688443 (isEmpty!41286 (_1!37675 lt!2631222)))))

(declare-fun b!7499594 () Bool)

(declare-fun e!4471320 () Bool)

(assert (=> b!7499594 (= e!4471321 e!4471320)))

(declare-fun res!3008540 () Bool)

(assert (=> b!7499594 (=> res!3008540 e!4471320)))

(assert (=> b!7499594 (= res!3008540 call!688443)))

(declare-fun b!7499595 () Bool)

(assert (=> b!7499595 (= e!4471316 (nullable!8591 r1!5845))))

(declare-fun b!7499596 () Bool)

(assert (=> b!7499596 (= e!4471318 (= (head!15388 (_1!37675 lt!2631222)) (c!1384414 r1!5845)))))

(declare-fun b!7499597 () Bool)

(declare-fun res!3008535 () Bool)

(assert (=> b!7499597 (=> res!3008535 e!4471320)))

(assert (=> b!7499597 (= res!3008535 (not (isEmpty!41286 (tail!14957 (_1!37675 lt!2631222)))))))

(declare-fun b!7499598 () Bool)

(assert (=> b!7499598 (= e!4471320 (not (= (head!15388 (_1!37675 lt!2631222)) (c!1384414 r1!5845))))))

(declare-fun b!7499599 () Bool)

(declare-fun res!3008538 () Bool)

(assert (=> b!7499599 (=> (not res!3008538) (not e!4471318))))

(assert (=> b!7499599 (= res!3008538 (not call!688443))))

(assert (= (and d!2302325 c!1384552) b!7499595))

(assert (= (and d!2302325 (not c!1384552)) b!7499588))

(assert (= (and d!2302325 c!1384554) b!7499592))

(assert (= (and d!2302325 (not c!1384554)) b!7499590))

(assert (= (and b!7499590 c!1384553) b!7499587))

(assert (= (and b!7499590 (not c!1384553)) b!7499591))

(assert (= (and b!7499591 (not res!3008539)) b!7499586))

(assert (= (and b!7499586 res!3008537) b!7499599))

(assert (= (and b!7499599 res!3008538) b!7499593))

(assert (= (and b!7499593 res!3008534) b!7499596))

(assert (= (and b!7499586 (not res!3008533)) b!7499589))

(assert (= (and b!7499589 res!3008536) b!7499594))

(assert (= (and b!7499594 (not res!3008540)) b!7499597))

(assert (= (and b!7499597 (not res!3008535)) b!7499598))

(assert (= (or b!7499592 b!7499594 b!7499599) bm!688438))

(declare-fun m!8081992 () Bool)

(assert (=> b!7499596 m!8081992))

(assert (=> b!7499598 m!8081992))

(declare-fun m!8081994 () Bool)

(assert (=> d!2302325 m!8081994))

(assert (=> d!2302325 m!8081616))

(declare-fun m!8081996 () Bool)

(assert (=> b!7499595 m!8081996))

(declare-fun m!8081998 () Bool)

(assert (=> b!7499593 m!8081998))

(assert (=> b!7499593 m!8081998))

(declare-fun m!8082000 () Bool)

(assert (=> b!7499593 m!8082000))

(assert (=> bm!688438 m!8081994))

(assert (=> b!7499597 m!8081998))

(assert (=> b!7499597 m!8081998))

(assert (=> b!7499597 m!8082000))

(assert (=> b!7499588 m!8081992))

(assert (=> b!7499588 m!8081992))

(declare-fun m!8082002 () Bool)

(assert (=> b!7499588 m!8082002))

(assert (=> b!7499588 m!8081998))

(assert (=> b!7499588 m!8082002))

(assert (=> b!7499588 m!8081998))

(declare-fun m!8082004 () Bool)

(assert (=> b!7499588 m!8082004))

(assert (=> b!7499003 d!2302325))

(declare-fun bs!1937113 () Bool)

(declare-fun b!7499642 () Bool)

(assert (= bs!1937113 (and b!7499642 b!7499255)))

(declare-fun lambda!464790 () Int)

(assert (=> bs!1937113 (not (= lambda!464790 lambda!464769))))

(declare-fun bs!1937114 () Bool)

(assert (= bs!1937114 (and b!7499642 b!7499006)))

(assert (=> bs!1937114 (not (= lambda!464790 lambda!464745))))

(declare-fun bs!1937115 () Bool)

(assert (= bs!1937115 (and b!7499642 b!7499388)))

(assert (=> bs!1937115 (= (and (= (_1!37675 lt!2631222) s!13591) (= (reg!19984 r1!5845) (reg!19984 lt!2631235)) (= r1!5845 lt!2631235)) (= lambda!464790 lambda!464779))))

(declare-fun bs!1937116 () Bool)

(assert (= bs!1937116 (and b!7499642 b!7499290)))

(assert (=> bs!1937116 (= (and (= (_1!37675 lt!2631222) s!13591) (= (reg!19984 r1!5845) (reg!19984 lt!2631240)) (= r1!5845 lt!2631240)) (= lambda!464790 lambda!464773))))

(declare-fun bs!1937117 () Bool)

(assert (= bs!1937117 (and b!7499642 b!7499417)))

(assert (=> bs!1937117 (= (and (= (_1!37675 lt!2631222) s!13591) (= (reg!19984 r1!5845) (reg!19984 lt!2631226)) (= r1!5845 lt!2631226)) (= lambda!464790 lambda!464784))))

(declare-fun bs!1937118 () Bool)

(assert (= bs!1937118 (and b!7499642 b!7498988)))

(assert (=> bs!1937118 (not (= lambda!464790 lambda!464746))))

(declare-fun bs!1937119 () Bool)

(assert (= bs!1937119 (and b!7499642 b!7499424)))

(assert (=> bs!1937119 (not (= lambda!464790 lambda!464786))))

(declare-fun bs!1937120 () Bool)

(assert (= bs!1937120 (and b!7499642 b!7499248)))

(assert (=> bs!1937120 (= (and (= (_1!37675 lt!2631222) s!13591) (= (reg!19984 r1!5845) (reg!19984 lt!2631245)) (= r1!5845 lt!2631245)) (= lambda!464790 lambda!464768))))

(assert (=> bs!1937118 (not (= lambda!464790 lambda!464747))))

(assert (=> bs!1937114 (not (= lambda!464790 lambda!464744))))

(declare-fun bs!1937121 () Bool)

(assert (= bs!1937121 (and b!7499642 b!7499395)))

(assert (=> bs!1937121 (not (= lambda!464790 lambda!464782))))

(declare-fun bs!1937122 () Bool)

(assert (= bs!1937122 (and b!7499642 b!7499297)))

(assert (=> bs!1937122 (not (= lambda!464790 lambda!464775))))

(assert (=> b!7499642 true))

(assert (=> b!7499642 true))

(declare-fun bs!1937123 () Bool)

(declare-fun b!7499649 () Bool)

(assert (= bs!1937123 (and b!7499649 b!7499255)))

(declare-fun lambda!464791 () Int)

(assert (=> bs!1937123 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 r1!5845) (regOne!39822 lt!2631245)) (= (regTwo!39822 r1!5845) (regTwo!39822 lt!2631245))) (= lambda!464791 lambda!464769))))

(declare-fun bs!1937124 () Bool)

(assert (= bs!1937124 (and b!7499649 b!7499006)))

(assert (=> bs!1937124 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 r1!5845) lt!2631225) (= (regTwo!39822 r1!5845) rTail!78)) (= lambda!464791 lambda!464745))))

(declare-fun bs!1937125 () Bool)

(assert (= bs!1937125 (and b!7499649 b!7499388)))

(assert (=> bs!1937125 (not (= lambda!464791 lambda!464779))))

(declare-fun bs!1937126 () Bool)

(assert (= bs!1937126 (and b!7499649 b!7499290)))

(assert (=> bs!1937126 (not (= lambda!464791 lambda!464773))))

(declare-fun bs!1937127 () Bool)

(assert (= bs!1937127 (and b!7499649 b!7499417)))

(assert (=> bs!1937127 (not (= lambda!464791 lambda!464784))))

(declare-fun bs!1937128 () Bool)

(assert (= bs!1937128 (and b!7499649 b!7499642)))

(assert (=> bs!1937128 (not (= lambda!464791 lambda!464790))))

(declare-fun bs!1937129 () Bool)

(assert (= bs!1937129 (and b!7499649 b!7498988)))

(assert (=> bs!1937129 (not (= lambda!464791 lambda!464746))))

(declare-fun bs!1937130 () Bool)

(assert (= bs!1937130 (and b!7499649 b!7499424)))

(assert (=> bs!1937130 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 r1!5845) (regOne!39822 lt!2631226)) (= (regTwo!39822 r1!5845) (regTwo!39822 lt!2631226))) (= lambda!464791 lambda!464786))))

(declare-fun bs!1937131 () Bool)

(assert (= bs!1937131 (and b!7499649 b!7499248)))

(assert (=> bs!1937131 (not (= lambda!464791 lambda!464768))))

(assert (=> bs!1937129 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 r1!5845) r2!5783) (= (regTwo!39822 r1!5845) rTail!78)) (= lambda!464791 lambda!464747))))

(assert (=> bs!1937124 (not (= lambda!464791 lambda!464744))))

(declare-fun bs!1937132 () Bool)

(assert (= bs!1937132 (and b!7499649 b!7499395)))

(assert (=> bs!1937132 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 r1!5845) (regOne!39822 lt!2631235)) (= (regTwo!39822 r1!5845) (regTwo!39822 lt!2631235))) (= lambda!464791 lambda!464782))))

(declare-fun bs!1937133 () Bool)

(assert (= bs!1937133 (and b!7499649 b!7499297)))

(assert (=> bs!1937133 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 r1!5845) (regOne!39822 lt!2631240)) (= (regTwo!39822 r1!5845) (regTwo!39822 lt!2631240))) (= lambda!464791 lambda!464775))))

(assert (=> b!7499649 true))

(assert (=> b!7499649 true))

(declare-fun b!7499641 () Bool)

(declare-fun c!1384558 () Bool)

(assert (=> b!7499641 (= c!1384558 ((_ is ElementMatch!19655) r1!5845))))

(declare-fun e!4471340 () Bool)

(declare-fun e!4471337 () Bool)

(assert (=> b!7499641 (= e!4471340 e!4471337)))

(declare-fun e!4471335 () Bool)

(declare-fun call!688445 () Bool)

(assert (=> b!7499642 (= e!4471335 call!688445)))

(declare-fun bm!688439 () Bool)

(declare-fun c!1384557 () Bool)

(assert (=> bm!688439 (= call!688445 (Exists!4272 (ite c!1384557 lambda!464790 lambda!464791)))))

(declare-fun b!7499643 () Bool)

(declare-fun e!4471333 () Bool)

(assert (=> b!7499643 (= e!4471333 (matchRSpec!4332 (regTwo!39823 r1!5845) (_1!37675 lt!2631222)))))

(declare-fun b!7499644 () Bool)

(declare-fun e!4471339 () Bool)

(assert (=> b!7499644 (= e!4471339 e!4471333)))

(declare-fun res!3008542 () Bool)

(assert (=> b!7499644 (= res!3008542 (matchRSpec!4332 (regOne!39823 r1!5845) (_1!37675 lt!2631222)))))

(assert (=> b!7499644 (=> res!3008542 e!4471333)))

(declare-fun b!7499645 () Bool)

(assert (=> b!7499645 (= e!4471337 (= (_1!37675 lt!2631222) (Cons!72245 (c!1384414 r1!5845) Nil!72245)))))

(declare-fun b!7499646 () Bool)

(declare-fun e!4471338 () Bool)

(assert (=> b!7499646 (= e!4471338 e!4471340)))

(declare-fun res!3008541 () Bool)

(assert (=> b!7499646 (= res!3008541 (not ((_ is EmptyLang!19655) r1!5845)))))

(assert (=> b!7499646 (=> (not res!3008541) (not e!4471340))))

(declare-fun d!2302327 () Bool)

(declare-fun c!1384556 () Bool)

(assert (=> d!2302327 (= c!1384556 ((_ is EmptyExpr!19655) r1!5845))))

(assert (=> d!2302327 (= (matchRSpec!4332 r1!5845 (_1!37675 lt!2631222)) e!4471338)))

(declare-fun bm!688440 () Bool)

(declare-fun call!688444 () Bool)

(assert (=> bm!688440 (= call!688444 (isEmpty!41286 (_1!37675 lt!2631222)))))

(declare-fun b!7499647 () Bool)

(declare-fun c!1384555 () Bool)

(assert (=> b!7499647 (= c!1384555 ((_ is Union!19655) r1!5845))))

(assert (=> b!7499647 (= e!4471337 e!4471339)))

(declare-fun b!7499648 () Bool)

(declare-fun res!3008543 () Bool)

(assert (=> b!7499648 (=> res!3008543 e!4471335)))

(assert (=> b!7499648 (= res!3008543 call!688444)))

(declare-fun e!4471336 () Bool)

(assert (=> b!7499648 (= e!4471336 e!4471335)))

(assert (=> b!7499649 (= e!4471336 call!688445)))

(declare-fun b!7499650 () Bool)

(assert (=> b!7499650 (= e!4471338 call!688444)))

(declare-fun b!7499651 () Bool)

(assert (=> b!7499651 (= e!4471339 e!4471336)))

(assert (=> b!7499651 (= c!1384557 ((_ is Star!19655) r1!5845))))

(assert (= (and d!2302327 c!1384556) b!7499650))

(assert (= (and d!2302327 (not c!1384556)) b!7499646))

(assert (= (and b!7499646 res!3008541) b!7499641))

(assert (= (and b!7499641 c!1384558) b!7499645))

(assert (= (and b!7499641 (not c!1384558)) b!7499647))

(assert (= (and b!7499647 c!1384555) b!7499644))

(assert (= (and b!7499647 (not c!1384555)) b!7499651))

(assert (= (and b!7499644 (not res!3008542)) b!7499643))

(assert (= (and b!7499651 c!1384557) b!7499648))

(assert (= (and b!7499651 (not c!1384557)) b!7499649))

(assert (= (and b!7499648 (not res!3008543)) b!7499642))

(assert (= (or b!7499642 b!7499649) bm!688439))

(assert (= (or b!7499650 b!7499648) bm!688440))

(declare-fun m!8082006 () Bool)

(assert (=> bm!688439 m!8082006))

(declare-fun m!8082008 () Bool)

(assert (=> b!7499643 m!8082008))

(declare-fun m!8082010 () Bool)

(assert (=> b!7499644 m!8082010))

(assert (=> bm!688440 m!8081994))

(assert (=> b!7499003 d!2302327))

(declare-fun bs!1937134 () Bool)

(declare-fun b!7499665 () Bool)

(assert (= bs!1937134 (and b!7499665 b!7499255)))

(declare-fun lambda!464792 () Int)

(assert (=> bs!1937134 (not (= lambda!464792 lambda!464769))))

(declare-fun bs!1937135 () Bool)

(assert (= bs!1937135 (and b!7499665 b!7499006)))

(assert (=> bs!1937135 (not (= lambda!464792 lambda!464745))))

(declare-fun bs!1937136 () Bool)

(assert (= bs!1937136 (and b!7499665 b!7499649)))

(assert (=> bs!1937136 (not (= lambda!464792 lambda!464791))))

(declare-fun bs!1937137 () Bool)

(assert (= bs!1937137 (and b!7499665 b!7499388)))

(assert (=> bs!1937137 (= (and (= (_1!37675 lt!2631222) s!13591) (= (reg!19984 lt!2631225) (reg!19984 lt!2631235)) (= lt!2631225 lt!2631235)) (= lambda!464792 lambda!464779))))

(declare-fun bs!1937138 () Bool)

(assert (= bs!1937138 (and b!7499665 b!7499290)))

(assert (=> bs!1937138 (= (and (= (_1!37675 lt!2631222) s!13591) (= (reg!19984 lt!2631225) (reg!19984 lt!2631240)) (= lt!2631225 lt!2631240)) (= lambda!464792 lambda!464773))))

(declare-fun bs!1937139 () Bool)

(assert (= bs!1937139 (and b!7499665 b!7499417)))

(assert (=> bs!1937139 (= (and (= (_1!37675 lt!2631222) s!13591) (= (reg!19984 lt!2631225) (reg!19984 lt!2631226)) (= lt!2631225 lt!2631226)) (= lambda!464792 lambda!464784))))

(declare-fun bs!1937140 () Bool)

(assert (= bs!1937140 (and b!7499665 b!7499642)))

(assert (=> bs!1937140 (= (and (= (reg!19984 lt!2631225) (reg!19984 r1!5845)) (= lt!2631225 r1!5845)) (= lambda!464792 lambda!464790))))

(declare-fun bs!1937141 () Bool)

(assert (= bs!1937141 (and b!7499665 b!7498988)))

(assert (=> bs!1937141 (not (= lambda!464792 lambda!464746))))

(declare-fun bs!1937142 () Bool)

(assert (= bs!1937142 (and b!7499665 b!7499424)))

(assert (=> bs!1937142 (not (= lambda!464792 lambda!464786))))

(declare-fun bs!1937143 () Bool)

(assert (= bs!1937143 (and b!7499665 b!7499248)))

(assert (=> bs!1937143 (= (and (= (_1!37675 lt!2631222) s!13591) (= (reg!19984 lt!2631225) (reg!19984 lt!2631245)) (= lt!2631225 lt!2631245)) (= lambda!464792 lambda!464768))))

(assert (=> bs!1937141 (not (= lambda!464792 lambda!464747))))

(assert (=> bs!1937135 (not (= lambda!464792 lambda!464744))))

(declare-fun bs!1937144 () Bool)

(assert (= bs!1937144 (and b!7499665 b!7499395)))

(assert (=> bs!1937144 (not (= lambda!464792 lambda!464782))))

(declare-fun bs!1937145 () Bool)

(assert (= bs!1937145 (and b!7499665 b!7499297)))

(assert (=> bs!1937145 (not (= lambda!464792 lambda!464775))))

(assert (=> b!7499665 true))

(assert (=> b!7499665 true))

(declare-fun bs!1937146 () Bool)

(declare-fun b!7499672 () Bool)

(assert (= bs!1937146 (and b!7499672 b!7499255)))

(declare-fun lambda!464793 () Int)

(assert (=> bs!1937146 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 lt!2631225) (regOne!39822 lt!2631245)) (= (regTwo!39822 lt!2631225) (regTwo!39822 lt!2631245))) (= lambda!464793 lambda!464769))))

(declare-fun bs!1937147 () Bool)

(assert (= bs!1937147 (and b!7499672 b!7499006)))

(assert (=> bs!1937147 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 lt!2631225) lt!2631225) (= (regTwo!39822 lt!2631225) rTail!78)) (= lambda!464793 lambda!464745))))

(declare-fun bs!1937148 () Bool)

(assert (= bs!1937148 (and b!7499672 b!7499649)))

(assert (=> bs!1937148 (= (and (= (regOne!39822 lt!2631225) (regOne!39822 r1!5845)) (= (regTwo!39822 lt!2631225) (regTwo!39822 r1!5845))) (= lambda!464793 lambda!464791))))

(declare-fun bs!1937149 () Bool)

(assert (= bs!1937149 (and b!7499672 b!7499388)))

(assert (=> bs!1937149 (not (= lambda!464793 lambda!464779))))

(declare-fun bs!1937150 () Bool)

(assert (= bs!1937150 (and b!7499672 b!7499290)))

(assert (=> bs!1937150 (not (= lambda!464793 lambda!464773))))

(declare-fun bs!1937151 () Bool)

(assert (= bs!1937151 (and b!7499672 b!7499417)))

(assert (=> bs!1937151 (not (= lambda!464793 lambda!464784))))

(declare-fun bs!1937152 () Bool)

(assert (= bs!1937152 (and b!7499672 b!7499642)))

(assert (=> bs!1937152 (not (= lambda!464793 lambda!464790))))

(declare-fun bs!1937153 () Bool)

(assert (= bs!1937153 (and b!7499672 b!7499424)))

(assert (=> bs!1937153 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 lt!2631225) (regOne!39822 lt!2631226)) (= (regTwo!39822 lt!2631225) (regTwo!39822 lt!2631226))) (= lambda!464793 lambda!464786))))

(declare-fun bs!1937154 () Bool)

(assert (= bs!1937154 (and b!7499672 b!7499248)))

(assert (=> bs!1937154 (not (= lambda!464793 lambda!464768))))

(declare-fun bs!1937155 () Bool)

(assert (= bs!1937155 (and b!7499672 b!7498988)))

(assert (=> bs!1937155 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 lt!2631225) r2!5783) (= (regTwo!39822 lt!2631225) rTail!78)) (= lambda!464793 lambda!464747))))

(assert (=> bs!1937147 (not (= lambda!464793 lambda!464744))))

(declare-fun bs!1937156 () Bool)

(assert (= bs!1937156 (and b!7499672 b!7499395)))

(assert (=> bs!1937156 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 lt!2631225) (regOne!39822 lt!2631235)) (= (regTwo!39822 lt!2631225) (regTwo!39822 lt!2631235))) (= lambda!464793 lambda!464782))))

(declare-fun bs!1937157 () Bool)

(assert (= bs!1937157 (and b!7499672 b!7499297)))

(assert (=> bs!1937157 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 lt!2631225) (regOne!39822 lt!2631240)) (= (regTwo!39822 lt!2631225) (regTwo!39822 lt!2631240))) (= lambda!464793 lambda!464775))))

(assert (=> bs!1937155 (not (= lambda!464793 lambda!464746))))

(declare-fun bs!1937158 () Bool)

(assert (= bs!1937158 (and b!7499672 b!7499665)))

(assert (=> bs!1937158 (not (= lambda!464793 lambda!464792))))

(assert (=> b!7499672 true))

(assert (=> b!7499672 true))

(declare-fun b!7499664 () Bool)

(declare-fun c!1384562 () Bool)

(assert (=> b!7499664 (= c!1384562 ((_ is ElementMatch!19655) lt!2631225))))

(declare-fun e!4471350 () Bool)

(declare-fun e!4471347 () Bool)

(assert (=> b!7499664 (= e!4471350 e!4471347)))

(declare-fun e!4471345 () Bool)

(declare-fun call!688447 () Bool)

(assert (=> b!7499665 (= e!4471345 call!688447)))

(declare-fun c!1384561 () Bool)

(declare-fun bm!688441 () Bool)

(assert (=> bm!688441 (= call!688447 (Exists!4272 (ite c!1384561 lambda!464792 lambda!464793)))))

(declare-fun b!7499666 () Bool)

(declare-fun e!4471344 () Bool)

(assert (=> b!7499666 (= e!4471344 (matchRSpec!4332 (regTwo!39823 lt!2631225) (_1!37675 lt!2631222)))))

(declare-fun b!7499667 () Bool)

(declare-fun e!4471349 () Bool)

(assert (=> b!7499667 (= e!4471349 e!4471344)))

(declare-fun res!3008545 () Bool)

(assert (=> b!7499667 (= res!3008545 (matchRSpec!4332 (regOne!39823 lt!2631225) (_1!37675 lt!2631222)))))

(assert (=> b!7499667 (=> res!3008545 e!4471344)))

(declare-fun b!7499668 () Bool)

(assert (=> b!7499668 (= e!4471347 (= (_1!37675 lt!2631222) (Cons!72245 (c!1384414 lt!2631225) Nil!72245)))))

(declare-fun b!7499669 () Bool)

(declare-fun e!4471348 () Bool)

(assert (=> b!7499669 (= e!4471348 e!4471350)))

(declare-fun res!3008544 () Bool)

(assert (=> b!7499669 (= res!3008544 (not ((_ is EmptyLang!19655) lt!2631225)))))

(assert (=> b!7499669 (=> (not res!3008544) (not e!4471350))))

(declare-fun d!2302329 () Bool)

(declare-fun c!1384560 () Bool)

(assert (=> d!2302329 (= c!1384560 ((_ is EmptyExpr!19655) lt!2631225))))

(assert (=> d!2302329 (= (matchRSpec!4332 lt!2631225 (_1!37675 lt!2631222)) e!4471348)))

(declare-fun bm!688442 () Bool)

(declare-fun call!688446 () Bool)

(assert (=> bm!688442 (= call!688446 (isEmpty!41286 (_1!37675 lt!2631222)))))

(declare-fun b!7499670 () Bool)

(declare-fun c!1384559 () Bool)

(assert (=> b!7499670 (= c!1384559 ((_ is Union!19655) lt!2631225))))

(assert (=> b!7499670 (= e!4471347 e!4471349)))

(declare-fun b!7499671 () Bool)

(declare-fun res!3008546 () Bool)

(assert (=> b!7499671 (=> res!3008546 e!4471345)))

(assert (=> b!7499671 (= res!3008546 call!688446)))

(declare-fun e!4471346 () Bool)

(assert (=> b!7499671 (= e!4471346 e!4471345)))

(assert (=> b!7499672 (= e!4471346 call!688447)))

(declare-fun b!7499673 () Bool)

(assert (=> b!7499673 (= e!4471348 call!688446)))

(declare-fun b!7499674 () Bool)

(assert (=> b!7499674 (= e!4471349 e!4471346)))

(assert (=> b!7499674 (= c!1384561 ((_ is Star!19655) lt!2631225))))

(assert (= (and d!2302329 c!1384560) b!7499673))

(assert (= (and d!2302329 (not c!1384560)) b!7499669))

(assert (= (and b!7499669 res!3008544) b!7499664))

(assert (= (and b!7499664 c!1384562) b!7499668))

(assert (= (and b!7499664 (not c!1384562)) b!7499670))

(assert (= (and b!7499670 c!1384559) b!7499667))

(assert (= (and b!7499670 (not c!1384559)) b!7499674))

(assert (= (and b!7499667 (not res!3008545)) b!7499666))

(assert (= (and b!7499674 c!1384561) b!7499671))

(assert (= (and b!7499674 (not c!1384561)) b!7499672))

(assert (= (and b!7499671 (not res!3008546)) b!7499665))

(assert (= (or b!7499665 b!7499672) bm!688441))

(assert (= (or b!7499673 b!7499671) bm!688442))

(declare-fun m!8082012 () Bool)

(assert (=> bm!688441 m!8082012))

(declare-fun m!8082014 () Bool)

(assert (=> b!7499666 m!8082014))

(declare-fun m!8082016 () Bool)

(assert (=> b!7499667 m!8082016))

(assert (=> bm!688442 m!8081994))

(assert (=> b!7499003 d!2302329))

(declare-fun b!7499675 () Bool)

(declare-fun res!3008547 () Bool)

(declare-fun e!4471357 () Bool)

(assert (=> b!7499675 (=> res!3008547 e!4471357)))

(declare-fun e!4471353 () Bool)

(assert (=> b!7499675 (= res!3008547 e!4471353)))

(declare-fun res!3008551 () Bool)

(assert (=> b!7499675 (=> (not res!3008551) (not e!4471353))))

(declare-fun lt!2631300 () Bool)

(assert (=> b!7499675 (= res!3008551 lt!2631300)))

(declare-fun b!7499676 () Bool)

(declare-fun e!4471352 () Bool)

(assert (=> b!7499676 (= e!4471352 (not lt!2631300))))

(declare-fun b!7499677 () Bool)

(declare-fun e!4471351 () Bool)

(assert (=> b!7499677 (= e!4471351 (matchR!9417 (derivativeStep!5648 lt!2631225 (head!15388 (_1!37675 lt!2631222))) (tail!14957 (_1!37675 lt!2631222))))))

(declare-fun b!7499678 () Bool)

(declare-fun e!4471356 () Bool)

(assert (=> b!7499678 (= e!4471357 e!4471356)))

(declare-fun res!3008550 () Bool)

(assert (=> b!7499678 (=> (not res!3008550) (not e!4471356))))

(assert (=> b!7499678 (= res!3008550 (not lt!2631300))))

(declare-fun b!7499679 () Bool)

(declare-fun e!4471354 () Bool)

(assert (=> b!7499679 (= e!4471354 e!4471352)))

(declare-fun c!1384564 () Bool)

(assert (=> b!7499679 (= c!1384564 ((_ is EmptyLang!19655) lt!2631225))))

(declare-fun b!7499680 () Bool)

(declare-fun res!3008553 () Bool)

(assert (=> b!7499680 (=> res!3008553 e!4471357)))

(assert (=> b!7499680 (= res!3008553 (not ((_ is ElementMatch!19655) lt!2631225)))))

(assert (=> b!7499680 (= e!4471352 e!4471357)))

(declare-fun b!7499681 () Bool)

(declare-fun call!688448 () Bool)

(assert (=> b!7499681 (= e!4471354 (= lt!2631300 call!688448))))

(declare-fun d!2302331 () Bool)

(assert (=> d!2302331 e!4471354))

(declare-fun c!1384565 () Bool)

(assert (=> d!2302331 (= c!1384565 ((_ is EmptyExpr!19655) lt!2631225))))

(assert (=> d!2302331 (= lt!2631300 e!4471351)))

(declare-fun c!1384563 () Bool)

(assert (=> d!2302331 (= c!1384563 (isEmpty!41286 (_1!37675 lt!2631222)))))

(assert (=> d!2302331 (validRegex!10169 lt!2631225)))

(assert (=> d!2302331 (= (matchR!9417 lt!2631225 (_1!37675 lt!2631222)) lt!2631300)))

(declare-fun b!7499682 () Bool)

(declare-fun res!3008548 () Bool)

(assert (=> b!7499682 (=> (not res!3008548) (not e!4471353))))

(assert (=> b!7499682 (= res!3008548 (isEmpty!41286 (tail!14957 (_1!37675 lt!2631222))))))

(declare-fun bm!688443 () Bool)

(assert (=> bm!688443 (= call!688448 (isEmpty!41286 (_1!37675 lt!2631222)))))

(declare-fun b!7499683 () Bool)

(declare-fun e!4471355 () Bool)

(assert (=> b!7499683 (= e!4471356 e!4471355)))

(declare-fun res!3008554 () Bool)

(assert (=> b!7499683 (=> res!3008554 e!4471355)))

(assert (=> b!7499683 (= res!3008554 call!688448)))

(declare-fun b!7499684 () Bool)

(assert (=> b!7499684 (= e!4471351 (nullable!8591 lt!2631225))))

(declare-fun b!7499685 () Bool)

(assert (=> b!7499685 (= e!4471353 (= (head!15388 (_1!37675 lt!2631222)) (c!1384414 lt!2631225)))))

(declare-fun b!7499686 () Bool)

(declare-fun res!3008549 () Bool)

(assert (=> b!7499686 (=> res!3008549 e!4471355)))

(assert (=> b!7499686 (= res!3008549 (not (isEmpty!41286 (tail!14957 (_1!37675 lt!2631222)))))))

(declare-fun b!7499687 () Bool)

(assert (=> b!7499687 (= e!4471355 (not (= (head!15388 (_1!37675 lt!2631222)) (c!1384414 lt!2631225))))))

(declare-fun b!7499688 () Bool)

(declare-fun res!3008552 () Bool)

(assert (=> b!7499688 (=> (not res!3008552) (not e!4471353))))

(assert (=> b!7499688 (= res!3008552 (not call!688448))))

(assert (= (and d!2302331 c!1384563) b!7499684))

(assert (= (and d!2302331 (not c!1384563)) b!7499677))

(assert (= (and d!2302331 c!1384565) b!7499681))

(assert (= (and d!2302331 (not c!1384565)) b!7499679))

(assert (= (and b!7499679 c!1384564) b!7499676))

(assert (= (and b!7499679 (not c!1384564)) b!7499680))

(assert (= (and b!7499680 (not res!3008553)) b!7499675))

(assert (= (and b!7499675 res!3008551) b!7499688))

(assert (= (and b!7499688 res!3008552) b!7499682))

(assert (= (and b!7499682 res!3008548) b!7499685))

(assert (= (and b!7499675 (not res!3008547)) b!7499678))

(assert (= (and b!7499678 res!3008550) b!7499683))

(assert (= (and b!7499683 (not res!3008554)) b!7499686))

(assert (= (and b!7499686 (not res!3008549)) b!7499687))

(assert (= (or b!7499681 b!7499683 b!7499688) bm!688443))

(assert (=> b!7499685 m!8081992))

(assert (=> b!7499687 m!8081992))

(assert (=> d!2302331 m!8081994))

(assert (=> d!2302331 m!8081614))

(declare-fun m!8082018 () Bool)

(assert (=> b!7499684 m!8082018))

(assert (=> b!7499682 m!8081998))

(assert (=> b!7499682 m!8081998))

(assert (=> b!7499682 m!8082000))

(assert (=> bm!688443 m!8081994))

(assert (=> b!7499686 m!8081998))

(assert (=> b!7499686 m!8081998))

(assert (=> b!7499686 m!8082000))

(assert (=> b!7499677 m!8081992))

(assert (=> b!7499677 m!8081992))

(declare-fun m!8082020 () Bool)

(assert (=> b!7499677 m!8082020))

(assert (=> b!7499677 m!8081998))

(assert (=> b!7499677 m!8082020))

(assert (=> b!7499677 m!8081998))

(declare-fun m!8082022 () Bool)

(assert (=> b!7499677 m!8082022))

(assert (=> b!7499003 d!2302331))

(declare-fun d!2302333 () Bool)

(assert (=> d!2302333 (= (matchR!9417 r1!5845 (_1!37675 lt!2631222)) (matchRSpec!4332 r1!5845 (_1!37675 lt!2631222)))))

(declare-fun lt!2631301 () Unit!166141)

(assert (=> d!2302333 (= lt!2631301 (choose!57971 r1!5845 (_1!37675 lt!2631222)))))

(assert (=> d!2302333 (validRegex!10169 r1!5845)))

(assert (=> d!2302333 (= (mainMatchTheorem!4326 r1!5845 (_1!37675 lt!2631222)) lt!2631301)))

(declare-fun bs!1937159 () Bool)

(assert (= bs!1937159 d!2302333))

(assert (=> bs!1937159 m!8081648))

(assert (=> bs!1937159 m!8081644))

(declare-fun m!8082024 () Bool)

(assert (=> bs!1937159 m!8082024))

(assert (=> bs!1937159 m!8081616))

(assert (=> b!7499003 d!2302333))

(declare-fun bs!1937160 () Bool)

(declare-fun b!7499690 () Bool)

(assert (= bs!1937160 (and b!7499690 b!7499255)))

(declare-fun lambda!464794 () Int)

(assert (=> bs!1937160 (not (= lambda!464794 lambda!464769))))

(declare-fun bs!1937161 () Bool)

(assert (= bs!1937161 (and b!7499690 b!7499006)))

(assert (=> bs!1937161 (not (= lambda!464794 lambda!464745))))

(declare-fun bs!1937162 () Bool)

(assert (= bs!1937162 (and b!7499690 b!7499649)))

(assert (=> bs!1937162 (not (= lambda!464794 lambda!464791))))

(declare-fun bs!1937163 () Bool)

(assert (= bs!1937163 (and b!7499690 b!7499388)))

(assert (=> bs!1937163 (= (and (= (_1!37675 lt!2631222) s!13591) (= (reg!19984 r2!5783) (reg!19984 lt!2631235)) (= r2!5783 lt!2631235)) (= lambda!464794 lambda!464779))))

(declare-fun bs!1937164 () Bool)

(assert (= bs!1937164 (and b!7499690 b!7499290)))

(assert (=> bs!1937164 (= (and (= (_1!37675 lt!2631222) s!13591) (= (reg!19984 r2!5783) (reg!19984 lt!2631240)) (= r2!5783 lt!2631240)) (= lambda!464794 lambda!464773))))

(declare-fun bs!1937165 () Bool)

(assert (= bs!1937165 (and b!7499690 b!7499417)))

(assert (=> bs!1937165 (= (and (= (_1!37675 lt!2631222) s!13591) (= (reg!19984 r2!5783) (reg!19984 lt!2631226)) (= r2!5783 lt!2631226)) (= lambda!464794 lambda!464784))))

(declare-fun bs!1937166 () Bool)

(assert (= bs!1937166 (and b!7499690 b!7499642)))

(assert (=> bs!1937166 (= (and (= (reg!19984 r2!5783) (reg!19984 r1!5845)) (= r2!5783 r1!5845)) (= lambda!464794 lambda!464790))))

(declare-fun bs!1937167 () Bool)

(assert (= bs!1937167 (and b!7499690 b!7499424)))

(assert (=> bs!1937167 (not (= lambda!464794 lambda!464786))))

(declare-fun bs!1937168 () Bool)

(assert (= bs!1937168 (and b!7499690 b!7499248)))

(assert (=> bs!1937168 (= (and (= (_1!37675 lt!2631222) s!13591) (= (reg!19984 r2!5783) (reg!19984 lt!2631245)) (= r2!5783 lt!2631245)) (= lambda!464794 lambda!464768))))

(declare-fun bs!1937169 () Bool)

(assert (= bs!1937169 (and b!7499690 b!7498988)))

(assert (=> bs!1937169 (not (= lambda!464794 lambda!464747))))

(assert (=> bs!1937161 (not (= lambda!464794 lambda!464744))))

(declare-fun bs!1937170 () Bool)

(assert (= bs!1937170 (and b!7499690 b!7499672)))

(assert (=> bs!1937170 (not (= lambda!464794 lambda!464793))))

(declare-fun bs!1937171 () Bool)

(assert (= bs!1937171 (and b!7499690 b!7499395)))

(assert (=> bs!1937171 (not (= lambda!464794 lambda!464782))))

(declare-fun bs!1937172 () Bool)

(assert (= bs!1937172 (and b!7499690 b!7499297)))

(assert (=> bs!1937172 (not (= lambda!464794 lambda!464775))))

(assert (=> bs!1937169 (not (= lambda!464794 lambda!464746))))

(declare-fun bs!1937173 () Bool)

(assert (= bs!1937173 (and b!7499690 b!7499665)))

(assert (=> bs!1937173 (= (and (= (reg!19984 r2!5783) (reg!19984 lt!2631225)) (= r2!5783 lt!2631225)) (= lambda!464794 lambda!464792))))

(assert (=> b!7499690 true))

(assert (=> b!7499690 true))

(declare-fun bs!1937174 () Bool)

(declare-fun b!7499697 () Bool)

(assert (= bs!1937174 (and b!7499697 b!7499255)))

(declare-fun lambda!464795 () Int)

(assert (=> bs!1937174 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 r2!5783) (regOne!39822 lt!2631245)) (= (regTwo!39822 r2!5783) (regTwo!39822 lt!2631245))) (= lambda!464795 lambda!464769))))

(declare-fun bs!1937175 () Bool)

(assert (= bs!1937175 (and b!7499697 b!7499006)))

(assert (=> bs!1937175 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 r2!5783) lt!2631225) (= (regTwo!39822 r2!5783) rTail!78)) (= lambda!464795 lambda!464745))))

(declare-fun bs!1937176 () Bool)

(assert (= bs!1937176 (and b!7499697 b!7499649)))

(assert (=> bs!1937176 (= (and (= (regOne!39822 r2!5783) (regOne!39822 r1!5845)) (= (regTwo!39822 r2!5783) (regTwo!39822 r1!5845))) (= lambda!464795 lambda!464791))))

(declare-fun bs!1937177 () Bool)

(assert (= bs!1937177 (and b!7499697 b!7499388)))

(assert (=> bs!1937177 (not (= lambda!464795 lambda!464779))))

(declare-fun bs!1937178 () Bool)

(assert (= bs!1937178 (and b!7499697 b!7499290)))

(assert (=> bs!1937178 (not (= lambda!464795 lambda!464773))))

(declare-fun bs!1937179 () Bool)

(assert (= bs!1937179 (and b!7499697 b!7499417)))

(assert (=> bs!1937179 (not (= lambda!464795 lambda!464784))))

(declare-fun bs!1937180 () Bool)

(assert (= bs!1937180 (and b!7499697 b!7499642)))

(assert (=> bs!1937180 (not (= lambda!464795 lambda!464790))))

(declare-fun bs!1937181 () Bool)

(assert (= bs!1937181 (and b!7499697 b!7499424)))

(assert (=> bs!1937181 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 r2!5783) (regOne!39822 lt!2631226)) (= (regTwo!39822 r2!5783) (regTwo!39822 lt!2631226))) (= lambda!464795 lambda!464786))))

(declare-fun bs!1937182 () Bool)

(assert (= bs!1937182 (and b!7499697 b!7499248)))

(assert (=> bs!1937182 (not (= lambda!464795 lambda!464768))))

(declare-fun bs!1937183 () Bool)

(assert (= bs!1937183 (and b!7499697 b!7499690)))

(assert (=> bs!1937183 (not (= lambda!464795 lambda!464794))))

(declare-fun bs!1937184 () Bool)

(assert (= bs!1937184 (and b!7499697 b!7498988)))

(assert (=> bs!1937184 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 r2!5783) r2!5783) (= (regTwo!39822 r2!5783) rTail!78)) (= lambda!464795 lambda!464747))))

(assert (=> bs!1937175 (not (= lambda!464795 lambda!464744))))

(declare-fun bs!1937185 () Bool)

(assert (= bs!1937185 (and b!7499697 b!7499672)))

(assert (=> bs!1937185 (= (and (= (regOne!39822 r2!5783) (regOne!39822 lt!2631225)) (= (regTwo!39822 r2!5783) (regTwo!39822 lt!2631225))) (= lambda!464795 lambda!464793))))

(declare-fun bs!1937186 () Bool)

(assert (= bs!1937186 (and b!7499697 b!7499395)))

(assert (=> bs!1937186 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 r2!5783) (regOne!39822 lt!2631235)) (= (regTwo!39822 r2!5783) (regTwo!39822 lt!2631235))) (= lambda!464795 lambda!464782))))

(declare-fun bs!1937187 () Bool)

(assert (= bs!1937187 (and b!7499697 b!7499297)))

(assert (=> bs!1937187 (= (and (= (_1!37675 lt!2631222) s!13591) (= (regOne!39822 r2!5783) (regOne!39822 lt!2631240)) (= (regTwo!39822 r2!5783) (regTwo!39822 lt!2631240))) (= lambda!464795 lambda!464775))))

(assert (=> bs!1937184 (not (= lambda!464795 lambda!464746))))

(declare-fun bs!1937188 () Bool)

(assert (= bs!1937188 (and b!7499697 b!7499665)))

(assert (=> bs!1937188 (not (= lambda!464795 lambda!464792))))

(assert (=> b!7499697 true))

(assert (=> b!7499697 true))

(declare-fun b!7499689 () Bool)

(declare-fun c!1384569 () Bool)

(assert (=> b!7499689 (= c!1384569 ((_ is ElementMatch!19655) r2!5783))))

(declare-fun e!4471364 () Bool)

(declare-fun e!4471361 () Bool)

(assert (=> b!7499689 (= e!4471364 e!4471361)))

(declare-fun e!4471359 () Bool)

(declare-fun call!688450 () Bool)

(assert (=> b!7499690 (= e!4471359 call!688450)))

(declare-fun bm!688444 () Bool)

(declare-fun c!1384568 () Bool)

(assert (=> bm!688444 (= call!688450 (Exists!4272 (ite c!1384568 lambda!464794 lambda!464795)))))

(declare-fun b!7499691 () Bool)

(declare-fun e!4471358 () Bool)

(assert (=> b!7499691 (= e!4471358 (matchRSpec!4332 (regTwo!39823 r2!5783) (_1!37675 lt!2631222)))))

(declare-fun b!7499692 () Bool)

(declare-fun e!4471363 () Bool)

(assert (=> b!7499692 (= e!4471363 e!4471358)))

(declare-fun res!3008556 () Bool)

(assert (=> b!7499692 (= res!3008556 (matchRSpec!4332 (regOne!39823 r2!5783) (_1!37675 lt!2631222)))))

(assert (=> b!7499692 (=> res!3008556 e!4471358)))

(declare-fun b!7499693 () Bool)

(assert (=> b!7499693 (= e!4471361 (= (_1!37675 lt!2631222) (Cons!72245 (c!1384414 r2!5783) Nil!72245)))))

(declare-fun b!7499694 () Bool)

(declare-fun e!4471362 () Bool)

(assert (=> b!7499694 (= e!4471362 e!4471364)))

(declare-fun res!3008555 () Bool)

(assert (=> b!7499694 (= res!3008555 (not ((_ is EmptyLang!19655) r2!5783)))))

(assert (=> b!7499694 (=> (not res!3008555) (not e!4471364))))

(declare-fun d!2302335 () Bool)

(declare-fun c!1384567 () Bool)

(assert (=> d!2302335 (= c!1384567 ((_ is EmptyExpr!19655) r2!5783))))

(assert (=> d!2302335 (= (matchRSpec!4332 r2!5783 (_1!37675 lt!2631222)) e!4471362)))

(declare-fun bm!688445 () Bool)

(declare-fun call!688449 () Bool)

(assert (=> bm!688445 (= call!688449 (isEmpty!41286 (_1!37675 lt!2631222)))))

(declare-fun b!7499695 () Bool)

(declare-fun c!1384566 () Bool)

(assert (=> b!7499695 (= c!1384566 ((_ is Union!19655) r2!5783))))

(assert (=> b!7499695 (= e!4471361 e!4471363)))

(declare-fun b!7499696 () Bool)

(declare-fun res!3008557 () Bool)

(assert (=> b!7499696 (=> res!3008557 e!4471359)))

(assert (=> b!7499696 (= res!3008557 call!688449)))

(declare-fun e!4471360 () Bool)

(assert (=> b!7499696 (= e!4471360 e!4471359)))

(assert (=> b!7499697 (= e!4471360 call!688450)))

(declare-fun b!7499698 () Bool)

(assert (=> b!7499698 (= e!4471362 call!688449)))

(declare-fun b!7499699 () Bool)

(assert (=> b!7499699 (= e!4471363 e!4471360)))

(assert (=> b!7499699 (= c!1384568 ((_ is Star!19655) r2!5783))))

(assert (= (and d!2302335 c!1384567) b!7499698))

(assert (= (and d!2302335 (not c!1384567)) b!7499694))

(assert (= (and b!7499694 res!3008555) b!7499689))

(assert (= (and b!7499689 c!1384569) b!7499693))

(assert (= (and b!7499689 (not c!1384569)) b!7499695))

(assert (= (and b!7499695 c!1384566) b!7499692))

(assert (= (and b!7499695 (not c!1384566)) b!7499699))

(assert (= (and b!7499692 (not res!3008556)) b!7499691))

(assert (= (and b!7499699 c!1384568) b!7499696))

(assert (= (and b!7499699 (not c!1384568)) b!7499697))

(assert (= (and b!7499696 (not res!3008557)) b!7499690))

(assert (= (or b!7499690 b!7499697) bm!688444))

(assert (= (or b!7499698 b!7499696) bm!688445))

(declare-fun m!8082026 () Bool)

(assert (=> bm!688444 m!8082026))

(declare-fun m!8082028 () Bool)

(assert (=> b!7499691 m!8082028))

(declare-fun m!8082030 () Bool)

(assert (=> b!7499692 m!8082030))

(assert (=> bm!688445 m!8081994))

(assert (=> b!7499003 d!2302335))

(declare-fun d!2302337 () Bool)

(assert (=> d!2302337 (= (matchR!9417 lt!2631225 (_1!37675 lt!2631222)) (matchRSpec!4332 lt!2631225 (_1!37675 lt!2631222)))))

(declare-fun lt!2631302 () Unit!166141)

(assert (=> d!2302337 (= lt!2631302 (choose!57971 lt!2631225 (_1!37675 lt!2631222)))))

(assert (=> d!2302337 (validRegex!10169 lt!2631225)))

(assert (=> d!2302337 (= (mainMatchTheorem!4326 lt!2631225 (_1!37675 lt!2631222)) lt!2631302)))

(declare-fun bs!1937189 () Bool)

(assert (= bs!1937189 d!2302337))

(assert (=> bs!1937189 m!8081646))

(assert (=> bs!1937189 m!8081652))

(declare-fun m!8082032 () Bool)

(assert (=> bs!1937189 m!8082032))

(assert (=> bs!1937189 m!8081614))

(assert (=> b!7499003 d!2302337))

(declare-fun b!7499700 () Bool)

(declare-fun e!4471365 () Bool)

(declare-fun call!688451 () Bool)

(assert (=> b!7499700 (= e!4471365 call!688451)))

(declare-fun bm!688446 () Bool)

(declare-fun call!688452 () Bool)

(assert (=> bm!688446 (= call!688451 call!688452)))

(declare-fun b!7499702 () Bool)

(declare-fun e!4471368 () Bool)

(declare-fun e!4471370 () Bool)

(assert (=> b!7499702 (= e!4471368 e!4471370)))

(declare-fun c!1384570 () Bool)

(assert (=> b!7499702 (= c!1384570 ((_ is Union!19655) r2!5783))))

(declare-fun b!7499703 () Bool)

(declare-fun e!4471369 () Bool)

(assert (=> b!7499703 (= e!4471369 call!688451)))

(declare-fun b!7499704 () Bool)

(declare-fun e!4471371 () Bool)

(assert (=> b!7499704 (= e!4471371 call!688452)))

(declare-fun b!7499705 () Bool)

(declare-fun e!4471367 () Bool)

(assert (=> b!7499705 (= e!4471367 e!4471369)))

(declare-fun res!3008558 () Bool)

(assert (=> b!7499705 (=> (not res!3008558) (not e!4471369))))

(declare-fun call!688453 () Bool)

(assert (=> b!7499705 (= res!3008558 call!688453)))

(declare-fun b!7499706 () Bool)

(declare-fun e!4471366 () Bool)

(assert (=> b!7499706 (= e!4471366 e!4471368)))

(declare-fun c!1384571 () Bool)

(assert (=> b!7499706 (= c!1384571 ((_ is Star!19655) r2!5783))))

(declare-fun bm!688447 () Bool)

(assert (=> bm!688447 (= call!688453 (validRegex!10169 (ite c!1384570 (regOne!39823 r2!5783) (regOne!39822 r2!5783))))))

(declare-fun b!7499707 () Bool)

(declare-fun res!3008562 () Bool)

(assert (=> b!7499707 (=> res!3008562 e!4471367)))

(assert (=> b!7499707 (= res!3008562 (not ((_ is Concat!28500) r2!5783)))))

(assert (=> b!7499707 (= e!4471370 e!4471367)))

(declare-fun b!7499701 () Bool)

(declare-fun res!3008560 () Bool)

(assert (=> b!7499701 (=> (not res!3008560) (not e!4471365))))

(assert (=> b!7499701 (= res!3008560 call!688453)))

(assert (=> b!7499701 (= e!4471370 e!4471365)))

(declare-fun d!2302339 () Bool)

(declare-fun res!3008559 () Bool)

(assert (=> d!2302339 (=> res!3008559 e!4471366)))

(assert (=> d!2302339 (= res!3008559 ((_ is ElementMatch!19655) r2!5783))))

(assert (=> d!2302339 (= (validRegex!10169 r2!5783) e!4471366)))

(declare-fun bm!688448 () Bool)

(assert (=> bm!688448 (= call!688452 (validRegex!10169 (ite c!1384571 (reg!19984 r2!5783) (ite c!1384570 (regTwo!39823 r2!5783) (regTwo!39822 r2!5783)))))))

(declare-fun b!7499708 () Bool)

(assert (=> b!7499708 (= e!4471368 e!4471371)))

(declare-fun res!3008561 () Bool)

(assert (=> b!7499708 (= res!3008561 (not (nullable!8591 (reg!19984 r2!5783))))))

(assert (=> b!7499708 (=> (not res!3008561) (not e!4471371))))

(assert (= (and d!2302339 (not res!3008559)) b!7499706))

(assert (= (and b!7499706 c!1384571) b!7499708))

(assert (= (and b!7499706 (not c!1384571)) b!7499702))

(assert (= (and b!7499708 res!3008561) b!7499704))

(assert (= (and b!7499702 c!1384570) b!7499701))

(assert (= (and b!7499702 (not c!1384570)) b!7499707))

(assert (= (and b!7499701 res!3008560) b!7499700))

(assert (= (and b!7499707 (not res!3008562)) b!7499705))

(assert (= (and b!7499705 res!3008558) b!7499703))

(assert (= (or b!7499700 b!7499703) bm!688446))

(assert (= (or b!7499701 b!7499705) bm!688447))

(assert (= (or b!7499704 bm!688446) bm!688448))

(declare-fun m!8082034 () Bool)

(assert (=> bm!688447 m!8082034))

(declare-fun m!8082036 () Bool)

(assert (=> bm!688448 m!8082036))

(declare-fun m!8082038 () Bool)

(assert (=> b!7499708 m!8082038))

(assert (=> b!7498994 d!2302339))

(declare-fun bs!1937190 () Bool)

(declare-fun d!2302341 () Bool)

(assert (= bs!1937190 (and d!2302341 b!7499255)))

(declare-fun lambda!464800 () Int)

(assert (=> bs!1937190 (not (= lambda!464800 lambda!464769))))

(declare-fun bs!1937191 () Bool)

(assert (= bs!1937191 (and d!2302341 b!7499006)))

(assert (=> bs!1937191 (not (= lambda!464800 lambda!464745))))

(declare-fun bs!1937192 () Bool)

(assert (= bs!1937192 (and d!2302341 b!7499649)))

(assert (=> bs!1937192 (not (= lambda!464800 lambda!464791))))

(declare-fun bs!1937193 () Bool)

(assert (= bs!1937193 (and d!2302341 b!7499388)))

(assert (=> bs!1937193 (not (= lambda!464800 lambda!464779))))

(declare-fun bs!1937194 () Bool)

(assert (= bs!1937194 (and d!2302341 b!7499290)))

(assert (=> bs!1937194 (not (= lambda!464800 lambda!464773))))

(declare-fun bs!1937195 () Bool)

(assert (= bs!1937195 (and d!2302341 b!7499417)))

(assert (=> bs!1937195 (not (= lambda!464800 lambda!464784))))

(declare-fun bs!1937196 () Bool)

(assert (= bs!1937196 (and d!2302341 b!7499642)))

(assert (=> bs!1937196 (not (= lambda!464800 lambda!464790))))

(declare-fun bs!1937197 () Bool)

(assert (= bs!1937197 (and d!2302341 b!7499424)))

(assert (=> bs!1937197 (not (= lambda!464800 lambda!464786))))

(declare-fun bs!1937198 () Bool)

(assert (= bs!1937198 (and d!2302341 b!7499248)))

(assert (=> bs!1937198 (not (= lambda!464800 lambda!464768))))

(declare-fun bs!1937199 () Bool)

(assert (= bs!1937199 (and d!2302341 b!7499697)))

(assert (=> bs!1937199 (not (= lambda!464800 lambda!464795))))

(declare-fun bs!1937200 () Bool)

(assert (= bs!1937200 (and d!2302341 b!7499690)))

(assert (=> bs!1937200 (not (= lambda!464800 lambda!464794))))

(declare-fun bs!1937201 () Bool)

(assert (= bs!1937201 (and d!2302341 b!7498988)))

(assert (=> bs!1937201 (not (= lambda!464800 lambda!464747))))

(assert (=> bs!1937191 (= (= r2!5783 lt!2631225) (= lambda!464800 lambda!464744))))

(declare-fun bs!1937202 () Bool)

(assert (= bs!1937202 (and d!2302341 b!7499672)))

(assert (=> bs!1937202 (not (= lambda!464800 lambda!464793))))

(declare-fun bs!1937203 () Bool)

(assert (= bs!1937203 (and d!2302341 b!7499395)))

(assert (=> bs!1937203 (not (= lambda!464800 lambda!464782))))

(declare-fun bs!1937204 () Bool)

(assert (= bs!1937204 (and d!2302341 b!7499297)))

(assert (=> bs!1937204 (not (= lambda!464800 lambda!464775))))

(assert (=> bs!1937201 (= lambda!464800 lambda!464746)))

(declare-fun bs!1937205 () Bool)

(assert (= bs!1937205 (and d!2302341 b!7499665)))

(assert (=> bs!1937205 (not (= lambda!464800 lambda!464792))))

(assert (=> d!2302341 true))

(assert (=> d!2302341 true))

(assert (=> d!2302341 true))

(declare-fun lambda!464801 () Int)

(assert (=> bs!1937190 (= (and (= r2!5783 (regOne!39822 lt!2631245)) (= rTail!78 (regTwo!39822 lt!2631245))) (= lambda!464801 lambda!464769))))

(assert (=> bs!1937191 (= (= r2!5783 lt!2631225) (= lambda!464801 lambda!464745))))

(assert (=> bs!1937192 (= (and (= s!13591 (_1!37675 lt!2631222)) (= r2!5783 (regOne!39822 r1!5845)) (= rTail!78 (regTwo!39822 r1!5845))) (= lambda!464801 lambda!464791))))

(assert (=> bs!1937193 (not (= lambda!464801 lambda!464779))))

(assert (=> bs!1937194 (not (= lambda!464801 lambda!464773))))

(assert (=> bs!1937195 (not (= lambda!464801 lambda!464784))))

(assert (=> bs!1937196 (not (= lambda!464801 lambda!464790))))

(assert (=> bs!1937197 (= (and (= r2!5783 (regOne!39822 lt!2631226)) (= rTail!78 (regTwo!39822 lt!2631226))) (= lambda!464801 lambda!464786))))

(assert (=> bs!1937198 (not (= lambda!464801 lambda!464768))))

(assert (=> bs!1937199 (= (and (= s!13591 (_1!37675 lt!2631222)) (= r2!5783 (regOne!39822 r2!5783)) (= rTail!78 (regTwo!39822 r2!5783))) (= lambda!464801 lambda!464795))))

(assert (=> bs!1937200 (not (= lambda!464801 lambda!464794))))

(assert (=> bs!1937191 (not (= lambda!464801 lambda!464744))))

(assert (=> bs!1937202 (= (and (= s!13591 (_1!37675 lt!2631222)) (= r2!5783 (regOne!39822 lt!2631225)) (= rTail!78 (regTwo!39822 lt!2631225))) (= lambda!464801 lambda!464793))))

(assert (=> bs!1937203 (= (and (= r2!5783 (regOne!39822 lt!2631235)) (= rTail!78 (regTwo!39822 lt!2631235))) (= lambda!464801 lambda!464782))))

(assert (=> bs!1937204 (= (and (= r2!5783 (regOne!39822 lt!2631240)) (= rTail!78 (regTwo!39822 lt!2631240))) (= lambda!464801 lambda!464775))))

(assert (=> bs!1937201 (not (= lambda!464801 lambda!464746))))

(assert (=> bs!1937205 (not (= lambda!464801 lambda!464792))))

(declare-fun bs!1937206 () Bool)

(assert (= bs!1937206 d!2302341))

(assert (=> bs!1937206 (not (= lambda!464801 lambda!464800))))

(assert (=> bs!1937201 (= lambda!464801 lambda!464747)))

(assert (=> d!2302341 true))

(assert (=> d!2302341 true))

(assert (=> d!2302341 true))

(assert (=> d!2302341 (= (Exists!4272 lambda!464800) (Exists!4272 lambda!464801))))

(declare-fun lt!2631305 () Unit!166141)

(declare-fun choose!57972 (Regex!19655 Regex!19655 List!72369) Unit!166141)

(assert (=> d!2302341 (= lt!2631305 (choose!57972 r2!5783 rTail!78 s!13591))))

(assert (=> d!2302341 (validRegex!10169 r2!5783)))

(assert (=> d!2302341 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2596 r2!5783 rTail!78 s!13591) lt!2631305)))

(declare-fun m!8082040 () Bool)

(assert (=> bs!1937206 m!8082040))

(declare-fun m!8082042 () Bool)

(assert (=> bs!1937206 m!8082042))

(declare-fun m!8082044 () Bool)

(assert (=> bs!1937206 m!8082044))

(assert (=> bs!1937206 m!8081636))

(assert (=> b!7498988 d!2302341))

(declare-fun b!7499717 () Bool)

(declare-fun res!3008571 () Bool)

(declare-fun e!4471382 () Bool)

(assert (=> b!7499717 (=> res!3008571 e!4471382)))

(declare-fun e!4471378 () Bool)

(assert (=> b!7499717 (= res!3008571 e!4471378)))

(declare-fun res!3008575 () Bool)

(assert (=> b!7499717 (=> (not res!3008575) (not e!4471378))))

(declare-fun lt!2631306 () Bool)

(assert (=> b!7499717 (= res!3008575 lt!2631306)))

(declare-fun b!7499718 () Bool)

(declare-fun e!4471377 () Bool)

(assert (=> b!7499718 (= e!4471377 (not lt!2631306))))

(declare-fun b!7499719 () Bool)

(declare-fun e!4471376 () Bool)

(assert (=> b!7499719 (= e!4471376 (matchR!9417 (derivativeStep!5648 r2!5783 (head!15388 (_1!37675 lt!2631222))) (tail!14957 (_1!37675 lt!2631222))))))

(declare-fun b!7499720 () Bool)

(declare-fun e!4471381 () Bool)

(assert (=> b!7499720 (= e!4471382 e!4471381)))

(declare-fun res!3008574 () Bool)

(assert (=> b!7499720 (=> (not res!3008574) (not e!4471381))))

(assert (=> b!7499720 (= res!3008574 (not lt!2631306))))

(declare-fun b!7499721 () Bool)

(declare-fun e!4471379 () Bool)

(assert (=> b!7499721 (= e!4471379 e!4471377)))

(declare-fun c!1384573 () Bool)

(assert (=> b!7499721 (= c!1384573 ((_ is EmptyLang!19655) r2!5783))))

(declare-fun b!7499722 () Bool)

(declare-fun res!3008577 () Bool)

(assert (=> b!7499722 (=> res!3008577 e!4471382)))

(assert (=> b!7499722 (= res!3008577 (not ((_ is ElementMatch!19655) r2!5783)))))

(assert (=> b!7499722 (= e!4471377 e!4471382)))

(declare-fun b!7499723 () Bool)

(declare-fun call!688454 () Bool)

(assert (=> b!7499723 (= e!4471379 (= lt!2631306 call!688454))))

(declare-fun d!2302343 () Bool)

(assert (=> d!2302343 e!4471379))

(declare-fun c!1384574 () Bool)

(assert (=> d!2302343 (= c!1384574 ((_ is EmptyExpr!19655) r2!5783))))

(assert (=> d!2302343 (= lt!2631306 e!4471376)))

(declare-fun c!1384572 () Bool)

(assert (=> d!2302343 (= c!1384572 (isEmpty!41286 (_1!37675 lt!2631222)))))

(assert (=> d!2302343 (validRegex!10169 r2!5783)))

(assert (=> d!2302343 (= (matchR!9417 r2!5783 (_1!37675 lt!2631222)) lt!2631306)))

(declare-fun b!7499724 () Bool)

(declare-fun res!3008572 () Bool)

(assert (=> b!7499724 (=> (not res!3008572) (not e!4471378))))

(assert (=> b!7499724 (= res!3008572 (isEmpty!41286 (tail!14957 (_1!37675 lt!2631222))))))

(declare-fun bm!688449 () Bool)

(assert (=> bm!688449 (= call!688454 (isEmpty!41286 (_1!37675 lt!2631222)))))

(declare-fun b!7499725 () Bool)

(declare-fun e!4471380 () Bool)

(assert (=> b!7499725 (= e!4471381 e!4471380)))

(declare-fun res!3008578 () Bool)

(assert (=> b!7499725 (=> res!3008578 e!4471380)))

(assert (=> b!7499725 (= res!3008578 call!688454)))

(declare-fun b!7499726 () Bool)

(assert (=> b!7499726 (= e!4471376 (nullable!8591 r2!5783))))

(declare-fun b!7499727 () Bool)

(assert (=> b!7499727 (= e!4471378 (= (head!15388 (_1!37675 lt!2631222)) (c!1384414 r2!5783)))))

(declare-fun b!7499728 () Bool)

(declare-fun res!3008573 () Bool)

(assert (=> b!7499728 (=> res!3008573 e!4471380)))

(assert (=> b!7499728 (= res!3008573 (not (isEmpty!41286 (tail!14957 (_1!37675 lt!2631222)))))))

(declare-fun b!7499729 () Bool)

(assert (=> b!7499729 (= e!4471380 (not (= (head!15388 (_1!37675 lt!2631222)) (c!1384414 r2!5783))))))

(declare-fun b!7499730 () Bool)

(declare-fun res!3008576 () Bool)

(assert (=> b!7499730 (=> (not res!3008576) (not e!4471378))))

(assert (=> b!7499730 (= res!3008576 (not call!688454))))

(assert (= (and d!2302343 c!1384572) b!7499726))

(assert (= (and d!2302343 (not c!1384572)) b!7499719))

(assert (= (and d!2302343 c!1384574) b!7499723))

(assert (= (and d!2302343 (not c!1384574)) b!7499721))

(assert (= (and b!7499721 c!1384573) b!7499718))

(assert (= (and b!7499721 (not c!1384573)) b!7499722))

(assert (= (and b!7499722 (not res!3008577)) b!7499717))

(assert (= (and b!7499717 res!3008575) b!7499730))

(assert (= (and b!7499730 res!3008576) b!7499724))

(assert (= (and b!7499724 res!3008572) b!7499727))

(assert (= (and b!7499717 (not res!3008571)) b!7499720))

(assert (= (and b!7499720 res!3008574) b!7499725))

(assert (= (and b!7499725 (not res!3008578)) b!7499728))

(assert (= (and b!7499728 (not res!3008573)) b!7499729))

(assert (= (or b!7499723 b!7499725 b!7499730) bm!688449))

(assert (=> b!7499727 m!8081992))

(assert (=> b!7499729 m!8081992))

(assert (=> d!2302343 m!8081994))

(assert (=> d!2302343 m!8081636))

(declare-fun m!8082046 () Bool)

(assert (=> b!7499726 m!8082046))

(assert (=> b!7499724 m!8081998))

(assert (=> b!7499724 m!8081998))

(assert (=> b!7499724 m!8082000))

(assert (=> bm!688449 m!8081994))

(assert (=> b!7499728 m!8081998))

(assert (=> b!7499728 m!8081998))

(assert (=> b!7499728 m!8082000))

(assert (=> b!7499719 m!8081992))

(assert (=> b!7499719 m!8081992))

(declare-fun m!8082048 () Bool)

(assert (=> b!7499719 m!8082048))

(assert (=> b!7499719 m!8081998))

(assert (=> b!7499719 m!8082048))

(assert (=> b!7499719 m!8081998))

(declare-fun m!8082050 () Bool)

(assert (=> b!7499719 m!8082050))

(assert (=> b!7498988 d!2302343))

(declare-fun d!2302345 () Bool)

(declare-fun isEmpty!41287 (Option!17204) Bool)

(assert (=> d!2302345 (= (isDefined!13893 lt!2631227) (not (isEmpty!41287 lt!2631227)))))

(declare-fun bs!1937207 () Bool)

(assert (= bs!1937207 d!2302345))

(declare-fun m!8082052 () Bool)

(assert (=> bs!1937207 m!8082052))

(assert (=> b!7498988 d!2302345))

(declare-fun bs!1937208 () Bool)

(declare-fun d!2302347 () Bool)

(assert (= bs!1937208 (and d!2302347 b!7499255)))

(declare-fun lambda!464804 () Int)

(assert (=> bs!1937208 (not (= lambda!464804 lambda!464769))))

(declare-fun bs!1937209 () Bool)

(assert (= bs!1937209 (and d!2302347 b!7499006)))

(assert (=> bs!1937209 (not (= lambda!464804 lambda!464745))))

(declare-fun bs!1937210 () Bool)

(assert (= bs!1937210 (and d!2302347 b!7499649)))

(assert (=> bs!1937210 (not (= lambda!464804 lambda!464791))))

(declare-fun bs!1937211 () Bool)

(assert (= bs!1937211 (and d!2302347 b!7499388)))

(assert (=> bs!1937211 (not (= lambda!464804 lambda!464779))))

(declare-fun bs!1937212 () Bool)

(assert (= bs!1937212 (and d!2302347 b!7499290)))

(assert (=> bs!1937212 (not (= lambda!464804 lambda!464773))))

(declare-fun bs!1937213 () Bool)

(assert (= bs!1937213 (and d!2302347 b!7499417)))

(assert (=> bs!1937213 (not (= lambda!464804 lambda!464784))))

(declare-fun bs!1937214 () Bool)

(assert (= bs!1937214 (and d!2302347 b!7499642)))

(assert (=> bs!1937214 (not (= lambda!464804 lambda!464790))))

(declare-fun bs!1937215 () Bool)

(assert (= bs!1937215 (and d!2302347 b!7499424)))

(assert (=> bs!1937215 (not (= lambda!464804 lambda!464786))))

(declare-fun bs!1937216 () Bool)

(assert (= bs!1937216 (and d!2302347 b!7499248)))

(assert (=> bs!1937216 (not (= lambda!464804 lambda!464768))))

(declare-fun bs!1937217 () Bool)

(assert (= bs!1937217 (and d!2302347 b!7499697)))

(assert (=> bs!1937217 (not (= lambda!464804 lambda!464795))))

(assert (=> bs!1937209 (= (= r2!5783 lt!2631225) (= lambda!464804 lambda!464744))))

(declare-fun bs!1937218 () Bool)

(assert (= bs!1937218 (and d!2302347 b!7499672)))

(assert (=> bs!1937218 (not (= lambda!464804 lambda!464793))))

(declare-fun bs!1937219 () Bool)

(assert (= bs!1937219 (and d!2302347 b!7499395)))

(assert (=> bs!1937219 (not (= lambda!464804 lambda!464782))))

(declare-fun bs!1937220 () Bool)

(assert (= bs!1937220 (and d!2302347 b!7499297)))

(assert (=> bs!1937220 (not (= lambda!464804 lambda!464775))))

(declare-fun bs!1937221 () Bool)

(assert (= bs!1937221 (and d!2302347 b!7498988)))

(assert (=> bs!1937221 (= lambda!464804 lambda!464746)))

(declare-fun bs!1937222 () Bool)

(assert (= bs!1937222 (and d!2302347 b!7499665)))

(assert (=> bs!1937222 (not (= lambda!464804 lambda!464792))))

(declare-fun bs!1937223 () Bool)

(assert (= bs!1937223 (and d!2302347 b!7499690)))

(assert (=> bs!1937223 (not (= lambda!464804 lambda!464794))))

(declare-fun bs!1937224 () Bool)

(assert (= bs!1937224 (and d!2302347 d!2302341)))

(assert (=> bs!1937224 (not (= lambda!464804 lambda!464801))))

(assert (=> bs!1937224 (= lambda!464804 lambda!464800)))

(assert (=> bs!1937221 (not (= lambda!464804 lambda!464747))))

(assert (=> d!2302347 true))

(assert (=> d!2302347 true))

(assert (=> d!2302347 true))

(assert (=> d!2302347 (= (isDefined!13893 (findConcatSeparation!3326 r2!5783 rTail!78 Nil!72245 s!13591 s!13591)) (Exists!4272 lambda!464804))))

(declare-fun lt!2631309 () Unit!166141)

(declare-fun choose!57973 (Regex!19655 Regex!19655 List!72369) Unit!166141)

(assert (=> d!2302347 (= lt!2631309 (choose!57973 r2!5783 rTail!78 s!13591))))

(assert (=> d!2302347 (validRegex!10169 r2!5783)))

(assert (=> d!2302347 (= (lemmaFindConcatSeparationEquivalentToExists!3084 r2!5783 rTail!78 s!13591) lt!2631309)))

(declare-fun bs!1937225 () Bool)

(assert (= bs!1937225 d!2302347))

(assert (=> bs!1937225 m!8081636))

(declare-fun m!8082054 () Bool)

(assert (=> bs!1937225 m!8082054))

(declare-fun m!8082056 () Bool)

(assert (=> bs!1937225 m!8082056))

(assert (=> bs!1937225 m!8081630))

(declare-fun m!8082058 () Bool)

(assert (=> bs!1937225 m!8082058))

(assert (=> bs!1937225 m!8081630))

(assert (=> b!7498988 d!2302347))

(declare-fun d!2302349 () Bool)

(assert (=> d!2302349 (= (get!25338 lt!2631227) (v!54332 lt!2631227))))

(assert (=> b!7498988 d!2302349))

(declare-fun b!7499753 () Bool)

(declare-fun e!4471395 () Option!17204)

(assert (=> b!7499753 (= e!4471395 None!17203)))

(declare-fun b!7499754 () Bool)

(declare-fun e!4471399 () Bool)

(assert (=> b!7499754 (= e!4471399 (matchR!9417 rTail!78 s!13591))))

(declare-fun b!7499755 () Bool)

(declare-fun lt!2631317 () Unit!166141)

(declare-fun lt!2631316 () Unit!166141)

(assert (=> b!7499755 (= lt!2631317 lt!2631316)))

(declare-fun ++!17260 (List!72369 List!72369) List!72369)

(assert (=> b!7499755 (= (++!17260 (++!17260 Nil!72245 (Cons!72245 (h!78693 s!13591) Nil!72245)) (t!386938 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3134 (List!72369 C!39584 List!72369 List!72369) Unit!166141)

(assert (=> b!7499755 (= lt!2631316 (lemmaMoveElementToOtherListKeepsConcatEq!3134 Nil!72245 (h!78693 s!13591) (t!386938 s!13591) s!13591))))

(assert (=> b!7499755 (= e!4471395 (findConcatSeparation!3326 r2!5783 rTail!78 (++!17260 Nil!72245 (Cons!72245 (h!78693 s!13591) Nil!72245)) (t!386938 s!13591) s!13591))))

(declare-fun b!7499756 () Bool)

(declare-fun e!4471397 () Bool)

(declare-fun lt!2631318 () Option!17204)

(assert (=> b!7499756 (= e!4471397 (not (isDefined!13893 lt!2631318)))))

(declare-fun b!7499757 () Bool)

(declare-fun res!3008594 () Bool)

(declare-fun e!4471398 () Bool)

(assert (=> b!7499757 (=> (not res!3008594) (not e!4471398))))

(assert (=> b!7499757 (= res!3008594 (matchR!9417 r2!5783 (_1!37675 (get!25338 lt!2631318))))))

(declare-fun b!7499758 () Bool)

(declare-fun e!4471396 () Option!17204)

(assert (=> b!7499758 (= e!4471396 (Some!17203 (tuple2!68745 Nil!72245 s!13591)))))

(declare-fun d!2302351 () Bool)

(assert (=> d!2302351 e!4471397))

(declare-fun res!3008593 () Bool)

(assert (=> d!2302351 (=> res!3008593 e!4471397)))

(assert (=> d!2302351 (= res!3008593 e!4471398)))

(declare-fun res!3008597 () Bool)

(assert (=> d!2302351 (=> (not res!3008597) (not e!4471398))))

(assert (=> d!2302351 (= res!3008597 (isDefined!13893 lt!2631318))))

(assert (=> d!2302351 (= lt!2631318 e!4471396)))

(declare-fun c!1384580 () Bool)

(assert (=> d!2302351 (= c!1384580 e!4471399)))

(declare-fun res!3008596 () Bool)

(assert (=> d!2302351 (=> (not res!3008596) (not e!4471399))))

(assert (=> d!2302351 (= res!3008596 (matchR!9417 r2!5783 Nil!72245))))

(assert (=> d!2302351 (validRegex!10169 r2!5783)))

(assert (=> d!2302351 (= (findConcatSeparation!3326 r2!5783 rTail!78 Nil!72245 s!13591 s!13591) lt!2631318)))

(declare-fun b!7499759 () Bool)

(assert (=> b!7499759 (= e!4471398 (= (++!17260 (_1!37675 (get!25338 lt!2631318)) (_2!37675 (get!25338 lt!2631318))) s!13591))))

(declare-fun b!7499760 () Bool)

(declare-fun res!3008595 () Bool)

(assert (=> b!7499760 (=> (not res!3008595) (not e!4471398))))

(assert (=> b!7499760 (= res!3008595 (matchR!9417 rTail!78 (_2!37675 (get!25338 lt!2631318))))))

(declare-fun b!7499761 () Bool)

(assert (=> b!7499761 (= e!4471396 e!4471395)))

(declare-fun c!1384579 () Bool)

(assert (=> b!7499761 (= c!1384579 ((_ is Nil!72245) s!13591))))

(assert (= (and d!2302351 res!3008596) b!7499754))

(assert (= (and d!2302351 c!1384580) b!7499758))

(assert (= (and d!2302351 (not c!1384580)) b!7499761))

(assert (= (and b!7499761 c!1384579) b!7499753))

(assert (= (and b!7499761 (not c!1384579)) b!7499755))

(assert (= (and d!2302351 res!3008597) b!7499757))

(assert (= (and b!7499757 res!3008594) b!7499760))

(assert (= (and b!7499760 res!3008595) b!7499759))

(assert (= (and d!2302351 (not res!3008593)) b!7499756))

(declare-fun m!8082060 () Bool)

(assert (=> d!2302351 m!8082060))

(declare-fun m!8082062 () Bool)

(assert (=> d!2302351 m!8082062))

(assert (=> d!2302351 m!8081636))

(declare-fun m!8082064 () Bool)

(assert (=> b!7499754 m!8082064))

(assert (=> b!7499756 m!8082060))

(declare-fun m!8082066 () Bool)

(assert (=> b!7499755 m!8082066))

(assert (=> b!7499755 m!8082066))

(declare-fun m!8082068 () Bool)

(assert (=> b!7499755 m!8082068))

(declare-fun m!8082070 () Bool)

(assert (=> b!7499755 m!8082070))

(assert (=> b!7499755 m!8082066))

(declare-fun m!8082072 () Bool)

(assert (=> b!7499755 m!8082072))

(declare-fun m!8082074 () Bool)

(assert (=> b!7499760 m!8082074))

(declare-fun m!8082076 () Bool)

(assert (=> b!7499760 m!8082076))

(assert (=> b!7499759 m!8082074))

(declare-fun m!8082078 () Bool)

(assert (=> b!7499759 m!8082078))

(assert (=> b!7499757 m!8082074))

(declare-fun m!8082080 () Bool)

(assert (=> b!7499757 m!8082080))

(assert (=> b!7498988 d!2302351))

(declare-fun d!2302353 () Bool)

(declare-fun choose!57974 (Int) Bool)

(assert (=> d!2302353 (= (Exists!4272 lambda!464746) (choose!57974 lambda!464746))))

(declare-fun bs!1937226 () Bool)

(assert (= bs!1937226 d!2302353))

(declare-fun m!8082082 () Bool)

(assert (=> bs!1937226 m!8082082))

(assert (=> b!7498988 d!2302353))

(declare-fun d!2302355 () Bool)

(assert (=> d!2302355 (= (Exists!4272 lambda!464747) (choose!57974 lambda!464747))))

(declare-fun bs!1937227 () Bool)

(assert (= bs!1937227 d!2302355))

(declare-fun m!8082084 () Bool)

(assert (=> bs!1937227 m!8082084))

(assert (=> b!7498988 d!2302355))

(declare-fun b!7499762 () Bool)

(declare-fun e!4471400 () Bool)

(declare-fun call!688455 () Bool)

(assert (=> b!7499762 (= e!4471400 call!688455)))

(declare-fun bm!688450 () Bool)

(declare-fun call!688456 () Bool)

(assert (=> bm!688450 (= call!688455 call!688456)))

(declare-fun b!7499764 () Bool)

(declare-fun e!4471403 () Bool)

(declare-fun e!4471405 () Bool)

(assert (=> b!7499764 (= e!4471403 e!4471405)))

(declare-fun c!1384581 () Bool)

(assert (=> b!7499764 (= c!1384581 ((_ is Union!19655) lt!2631225))))

(declare-fun b!7499765 () Bool)

(declare-fun e!4471404 () Bool)

(assert (=> b!7499765 (= e!4471404 call!688455)))

(declare-fun b!7499766 () Bool)

(declare-fun e!4471406 () Bool)

(assert (=> b!7499766 (= e!4471406 call!688456)))

(declare-fun b!7499767 () Bool)

(declare-fun e!4471402 () Bool)

(assert (=> b!7499767 (= e!4471402 e!4471404)))

(declare-fun res!3008598 () Bool)

(assert (=> b!7499767 (=> (not res!3008598) (not e!4471404))))

(declare-fun call!688457 () Bool)

(assert (=> b!7499767 (= res!3008598 call!688457)))

(declare-fun b!7499768 () Bool)

(declare-fun e!4471401 () Bool)

(assert (=> b!7499768 (= e!4471401 e!4471403)))

(declare-fun c!1384582 () Bool)

(assert (=> b!7499768 (= c!1384582 ((_ is Star!19655) lt!2631225))))

(declare-fun bm!688451 () Bool)

(assert (=> bm!688451 (= call!688457 (validRegex!10169 (ite c!1384581 (regOne!39823 lt!2631225) (regOne!39822 lt!2631225))))))

(declare-fun b!7499769 () Bool)

(declare-fun res!3008602 () Bool)

(assert (=> b!7499769 (=> res!3008602 e!4471402)))

(assert (=> b!7499769 (= res!3008602 (not ((_ is Concat!28500) lt!2631225)))))

(assert (=> b!7499769 (= e!4471405 e!4471402)))

(declare-fun b!7499763 () Bool)

(declare-fun res!3008600 () Bool)

(assert (=> b!7499763 (=> (not res!3008600) (not e!4471400))))

(assert (=> b!7499763 (= res!3008600 call!688457)))

(assert (=> b!7499763 (= e!4471405 e!4471400)))

(declare-fun d!2302357 () Bool)

(declare-fun res!3008599 () Bool)

(assert (=> d!2302357 (=> res!3008599 e!4471401)))

(assert (=> d!2302357 (= res!3008599 ((_ is ElementMatch!19655) lt!2631225))))

(assert (=> d!2302357 (= (validRegex!10169 lt!2631225) e!4471401)))

(declare-fun bm!688452 () Bool)

(assert (=> bm!688452 (= call!688456 (validRegex!10169 (ite c!1384582 (reg!19984 lt!2631225) (ite c!1384581 (regTwo!39823 lt!2631225) (regTwo!39822 lt!2631225)))))))

(declare-fun b!7499770 () Bool)

(assert (=> b!7499770 (= e!4471403 e!4471406)))

(declare-fun res!3008601 () Bool)

(assert (=> b!7499770 (= res!3008601 (not (nullable!8591 (reg!19984 lt!2631225))))))

(assert (=> b!7499770 (=> (not res!3008601) (not e!4471406))))

(assert (= (and d!2302357 (not res!3008599)) b!7499768))

(assert (= (and b!7499768 c!1384582) b!7499770))

(assert (= (and b!7499768 (not c!1384582)) b!7499764))

(assert (= (and b!7499770 res!3008601) b!7499766))

(assert (= (and b!7499764 c!1384581) b!7499763))

(assert (= (and b!7499764 (not c!1384581)) b!7499769))

(assert (= (and b!7499763 res!3008600) b!7499762))

(assert (= (and b!7499769 (not res!3008602)) b!7499767))

(assert (= (and b!7499767 res!3008598) b!7499765))

(assert (= (or b!7499762 b!7499765) bm!688450))

(assert (= (or b!7499763 b!7499767) bm!688451))

(assert (= (or b!7499766 bm!688450) bm!688452))

(declare-fun m!8082086 () Bool)

(assert (=> bm!688451 m!8082086))

(declare-fun m!8082088 () Bool)

(assert (=> bm!688452 m!8082088))

(declare-fun m!8082090 () Bool)

(assert (=> b!7499770 m!8082090))

(assert (=> b!7499004 d!2302357))

(declare-fun bs!1937228 () Bool)

(declare-fun d!2302359 () Bool)

(assert (= bs!1937228 (and d!2302359 b!7499255)))

(declare-fun lambda!464805 () Int)

(assert (=> bs!1937228 (not (= lambda!464805 lambda!464769))))

(declare-fun bs!1937229 () Bool)

(assert (= bs!1937229 (and d!2302359 b!7499006)))

(assert (=> bs!1937229 (not (= lambda!464805 lambda!464745))))

(declare-fun bs!1937230 () Bool)

(assert (= bs!1937230 (and d!2302359 b!7499649)))

(assert (=> bs!1937230 (not (= lambda!464805 lambda!464791))))

(declare-fun bs!1937231 () Bool)

(assert (= bs!1937231 (and d!2302359 b!7499388)))

(assert (=> bs!1937231 (not (= lambda!464805 lambda!464779))))

(declare-fun bs!1937232 () Bool)

(assert (= bs!1937232 (and d!2302359 b!7499290)))

(assert (=> bs!1937232 (not (= lambda!464805 lambda!464773))))

(declare-fun bs!1937233 () Bool)

(assert (= bs!1937233 (and d!2302359 b!7499417)))

(assert (=> bs!1937233 (not (= lambda!464805 lambda!464784))))

(declare-fun bs!1937234 () Bool)

(assert (= bs!1937234 (and d!2302359 b!7499642)))

(assert (=> bs!1937234 (not (= lambda!464805 lambda!464790))))

(declare-fun bs!1937235 () Bool)

(assert (= bs!1937235 (and d!2302359 b!7499424)))

(assert (=> bs!1937235 (not (= lambda!464805 lambda!464786))))

(declare-fun bs!1937236 () Bool)

(assert (= bs!1937236 (and d!2302359 b!7499248)))

(assert (=> bs!1937236 (not (= lambda!464805 lambda!464768))))

(declare-fun bs!1937237 () Bool)

(assert (= bs!1937237 (and d!2302359 b!7499697)))

(assert (=> bs!1937237 (not (= lambda!464805 lambda!464795))))

(declare-fun bs!1937238 () Bool)

(assert (= bs!1937238 (and d!2302359 b!7499672)))

(assert (=> bs!1937238 (not (= lambda!464805 lambda!464793))))

(declare-fun bs!1937239 () Bool)

(assert (= bs!1937239 (and d!2302359 b!7499395)))

(assert (=> bs!1937239 (not (= lambda!464805 lambda!464782))))

(declare-fun bs!1937240 () Bool)

(assert (= bs!1937240 (and d!2302359 b!7499297)))

(assert (=> bs!1937240 (not (= lambda!464805 lambda!464775))))

(declare-fun bs!1937241 () Bool)

(assert (= bs!1937241 (and d!2302359 b!7498988)))

(assert (=> bs!1937241 (= (= lt!2631225 r2!5783) (= lambda!464805 lambda!464746))))

(declare-fun bs!1937242 () Bool)

(assert (= bs!1937242 (and d!2302359 b!7499665)))

(assert (=> bs!1937242 (not (= lambda!464805 lambda!464792))))

(declare-fun bs!1937243 () Bool)

(assert (= bs!1937243 (and d!2302359 b!7499690)))

(assert (=> bs!1937243 (not (= lambda!464805 lambda!464794))))

(declare-fun bs!1937244 () Bool)

(assert (= bs!1937244 (and d!2302359 d!2302341)))

(assert (=> bs!1937244 (not (= lambda!464805 lambda!464801))))

(assert (=> bs!1937244 (= (= lt!2631225 r2!5783) (= lambda!464805 lambda!464800))))

(assert (=> bs!1937241 (not (= lambda!464805 lambda!464747))))

(declare-fun bs!1937245 () Bool)

(assert (= bs!1937245 (and d!2302359 d!2302347)))

(assert (=> bs!1937245 (= (= lt!2631225 r2!5783) (= lambda!464805 lambda!464804))))

(assert (=> bs!1937229 (= lambda!464805 lambda!464744)))

(assert (=> d!2302359 true))

(assert (=> d!2302359 true))

(assert (=> d!2302359 true))

(assert (=> d!2302359 (= (isDefined!13893 (findConcatSeparation!3326 lt!2631225 rTail!78 Nil!72245 s!13591 s!13591)) (Exists!4272 lambda!464805))))

(declare-fun lt!2631319 () Unit!166141)

(assert (=> d!2302359 (= lt!2631319 (choose!57973 lt!2631225 rTail!78 s!13591))))

(assert (=> d!2302359 (validRegex!10169 lt!2631225)))

(assert (=> d!2302359 (= (lemmaFindConcatSeparationEquivalentToExists!3084 lt!2631225 rTail!78 s!13591) lt!2631319)))

(declare-fun bs!1937246 () Bool)

(assert (= bs!1937246 d!2302359))

(assert (=> bs!1937246 m!8081614))

(declare-fun m!8082092 () Bool)

(assert (=> bs!1937246 m!8082092))

(declare-fun m!8082094 () Bool)

(assert (=> bs!1937246 m!8082094))

(assert (=> bs!1937246 m!8081604))

(assert (=> bs!1937246 m!8081612))

(assert (=> bs!1937246 m!8081604))

(assert (=> b!7499006 d!2302359))

(declare-fun d!2302361 () Bool)

(assert (=> d!2302361 (= (Exists!4272 lambda!464745) (choose!57974 lambda!464745))))

(declare-fun bs!1937247 () Bool)

(assert (= bs!1937247 d!2302361))

(declare-fun m!8082096 () Bool)

(assert (=> bs!1937247 m!8082096))

(assert (=> b!7499006 d!2302361))

(declare-fun d!2302363 () Bool)

(assert (=> d!2302363 (= (isDefined!13893 (findConcatSeparation!3326 lt!2631225 rTail!78 Nil!72245 s!13591 s!13591)) (not (isEmpty!41287 (findConcatSeparation!3326 lt!2631225 rTail!78 Nil!72245 s!13591 s!13591))))))

(declare-fun bs!1937248 () Bool)

(assert (= bs!1937248 d!2302363))

(assert (=> bs!1937248 m!8081604))

(declare-fun m!8082098 () Bool)

(assert (=> bs!1937248 m!8082098))

(assert (=> b!7499006 d!2302363))

(declare-fun bs!1937249 () Bool)

(declare-fun d!2302365 () Bool)

(assert (= bs!1937249 (and d!2302365 b!7499255)))

(declare-fun lambda!464806 () Int)

(assert (=> bs!1937249 (not (= lambda!464806 lambda!464769))))

(declare-fun bs!1937250 () Bool)

(assert (= bs!1937250 (and d!2302365 b!7499006)))

(assert (=> bs!1937250 (not (= lambda!464806 lambda!464745))))

(declare-fun bs!1937251 () Bool)

(assert (= bs!1937251 (and d!2302365 b!7499649)))

(assert (=> bs!1937251 (not (= lambda!464806 lambda!464791))))

(declare-fun bs!1937252 () Bool)

(assert (= bs!1937252 (and d!2302365 b!7499388)))

(assert (=> bs!1937252 (not (= lambda!464806 lambda!464779))))

(declare-fun bs!1937253 () Bool)

(assert (= bs!1937253 (and d!2302365 b!7499290)))

(assert (=> bs!1937253 (not (= lambda!464806 lambda!464773))))

(declare-fun bs!1937254 () Bool)

(assert (= bs!1937254 (and d!2302365 b!7499417)))

(assert (=> bs!1937254 (not (= lambda!464806 lambda!464784))))

(declare-fun bs!1937255 () Bool)

(assert (= bs!1937255 (and d!2302365 b!7499642)))

(assert (=> bs!1937255 (not (= lambda!464806 lambda!464790))))

(declare-fun bs!1937256 () Bool)

(assert (= bs!1937256 (and d!2302365 b!7499424)))

(assert (=> bs!1937256 (not (= lambda!464806 lambda!464786))))

(declare-fun bs!1937257 () Bool)

(assert (= bs!1937257 (and d!2302365 b!7499248)))

(assert (=> bs!1937257 (not (= lambda!464806 lambda!464768))))

(declare-fun bs!1937258 () Bool)

(assert (= bs!1937258 (and d!2302365 b!7499672)))

(assert (=> bs!1937258 (not (= lambda!464806 lambda!464793))))

(declare-fun bs!1937259 () Bool)

(assert (= bs!1937259 (and d!2302365 b!7499395)))

(assert (=> bs!1937259 (not (= lambda!464806 lambda!464782))))

(declare-fun bs!1937260 () Bool)

(assert (= bs!1937260 (and d!2302365 b!7499297)))

(assert (=> bs!1937260 (not (= lambda!464806 lambda!464775))))

(declare-fun bs!1937261 () Bool)

(assert (= bs!1937261 (and d!2302365 b!7498988)))

(assert (=> bs!1937261 (= (= lt!2631225 r2!5783) (= lambda!464806 lambda!464746))))

(declare-fun bs!1937262 () Bool)

(assert (= bs!1937262 (and d!2302365 b!7499665)))

(assert (=> bs!1937262 (not (= lambda!464806 lambda!464792))))

(declare-fun bs!1937263 () Bool)

(assert (= bs!1937263 (and d!2302365 d!2302359)))

(assert (=> bs!1937263 (= lambda!464806 lambda!464805)))

(declare-fun bs!1937264 () Bool)

(assert (= bs!1937264 (and d!2302365 b!7499697)))

(assert (=> bs!1937264 (not (= lambda!464806 lambda!464795))))

(declare-fun bs!1937265 () Bool)

(assert (= bs!1937265 (and d!2302365 b!7499690)))

(assert (=> bs!1937265 (not (= lambda!464806 lambda!464794))))

(declare-fun bs!1937266 () Bool)

(assert (= bs!1937266 (and d!2302365 d!2302341)))

(assert (=> bs!1937266 (not (= lambda!464806 lambda!464801))))

(assert (=> bs!1937266 (= (= lt!2631225 r2!5783) (= lambda!464806 lambda!464800))))

(assert (=> bs!1937261 (not (= lambda!464806 lambda!464747))))

(declare-fun bs!1937267 () Bool)

(assert (= bs!1937267 (and d!2302365 d!2302347)))

(assert (=> bs!1937267 (= (= lt!2631225 r2!5783) (= lambda!464806 lambda!464804))))

(assert (=> bs!1937250 (= lambda!464806 lambda!464744)))

(assert (=> d!2302365 true))

(assert (=> d!2302365 true))

(assert (=> d!2302365 true))

(declare-fun lambda!464807 () Int)

(assert (=> bs!1937249 (= (and (= lt!2631225 (regOne!39822 lt!2631245)) (= rTail!78 (regTwo!39822 lt!2631245))) (= lambda!464807 lambda!464769))))

(assert (=> bs!1937250 (= lambda!464807 lambda!464745)))

(assert (=> bs!1937251 (= (and (= s!13591 (_1!37675 lt!2631222)) (= lt!2631225 (regOne!39822 r1!5845)) (= rTail!78 (regTwo!39822 r1!5845))) (= lambda!464807 lambda!464791))))

(assert (=> bs!1937252 (not (= lambda!464807 lambda!464779))))

(assert (=> bs!1937253 (not (= lambda!464807 lambda!464773))))

(assert (=> bs!1937254 (not (= lambda!464807 lambda!464784))))

(assert (=> bs!1937255 (not (= lambda!464807 lambda!464790))))

(assert (=> bs!1937256 (= (and (= lt!2631225 (regOne!39822 lt!2631226)) (= rTail!78 (regTwo!39822 lt!2631226))) (= lambda!464807 lambda!464786))))

(assert (=> bs!1937257 (not (= lambda!464807 lambda!464768))))

(declare-fun bs!1937268 () Bool)

(assert (= bs!1937268 d!2302365))

(assert (=> bs!1937268 (not (= lambda!464807 lambda!464806))))

(assert (=> bs!1937258 (= (and (= s!13591 (_1!37675 lt!2631222)) (= lt!2631225 (regOne!39822 lt!2631225)) (= rTail!78 (regTwo!39822 lt!2631225))) (= lambda!464807 lambda!464793))))

(assert (=> bs!1937259 (= (and (= lt!2631225 (regOne!39822 lt!2631235)) (= rTail!78 (regTwo!39822 lt!2631235))) (= lambda!464807 lambda!464782))))

(assert (=> bs!1937260 (= (and (= lt!2631225 (regOne!39822 lt!2631240)) (= rTail!78 (regTwo!39822 lt!2631240))) (= lambda!464807 lambda!464775))))

(assert (=> bs!1937261 (not (= lambda!464807 lambda!464746))))

(assert (=> bs!1937262 (not (= lambda!464807 lambda!464792))))

(assert (=> bs!1937263 (not (= lambda!464807 lambda!464805))))

(assert (=> bs!1937264 (= (and (= s!13591 (_1!37675 lt!2631222)) (= lt!2631225 (regOne!39822 r2!5783)) (= rTail!78 (regTwo!39822 r2!5783))) (= lambda!464807 lambda!464795))))

(assert (=> bs!1937265 (not (= lambda!464807 lambda!464794))))

(assert (=> bs!1937266 (= (= lt!2631225 r2!5783) (= lambda!464807 lambda!464801))))

(assert (=> bs!1937266 (not (= lambda!464807 lambda!464800))))

(assert (=> bs!1937261 (= (= lt!2631225 r2!5783) (= lambda!464807 lambda!464747))))

(assert (=> bs!1937267 (not (= lambda!464807 lambda!464804))))

(assert (=> bs!1937250 (not (= lambda!464807 lambda!464744))))

(assert (=> d!2302365 true))

(assert (=> d!2302365 true))

(assert (=> d!2302365 true))

(assert (=> d!2302365 (= (Exists!4272 lambda!464806) (Exists!4272 lambda!464807))))

(declare-fun lt!2631320 () Unit!166141)

(assert (=> d!2302365 (= lt!2631320 (choose!57972 lt!2631225 rTail!78 s!13591))))

(assert (=> d!2302365 (validRegex!10169 lt!2631225)))

(assert (=> d!2302365 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2596 lt!2631225 rTail!78 s!13591) lt!2631320)))

(declare-fun m!8082100 () Bool)

(assert (=> bs!1937268 m!8082100))

(declare-fun m!8082102 () Bool)

(assert (=> bs!1937268 m!8082102))

(declare-fun m!8082104 () Bool)

(assert (=> bs!1937268 m!8082104))

(assert (=> bs!1937268 m!8081614))

(assert (=> b!7499006 d!2302365))

(declare-fun b!7499771 () Bool)

(declare-fun e!4471407 () Option!17204)

(assert (=> b!7499771 (= e!4471407 None!17203)))

(declare-fun b!7499772 () Bool)

(declare-fun e!4471411 () Bool)

(assert (=> b!7499772 (= e!4471411 (matchR!9417 rTail!78 s!13591))))

(declare-fun b!7499773 () Bool)

(declare-fun lt!2631322 () Unit!166141)

(declare-fun lt!2631321 () Unit!166141)

(assert (=> b!7499773 (= lt!2631322 lt!2631321)))

(assert (=> b!7499773 (= (++!17260 (++!17260 Nil!72245 (Cons!72245 (h!78693 s!13591) Nil!72245)) (t!386938 s!13591)) s!13591)))

(assert (=> b!7499773 (= lt!2631321 (lemmaMoveElementToOtherListKeepsConcatEq!3134 Nil!72245 (h!78693 s!13591) (t!386938 s!13591) s!13591))))

(assert (=> b!7499773 (= e!4471407 (findConcatSeparation!3326 lt!2631225 rTail!78 (++!17260 Nil!72245 (Cons!72245 (h!78693 s!13591) Nil!72245)) (t!386938 s!13591) s!13591))))

(declare-fun b!7499774 () Bool)

(declare-fun e!4471409 () Bool)

(declare-fun lt!2631323 () Option!17204)

(assert (=> b!7499774 (= e!4471409 (not (isDefined!13893 lt!2631323)))))

(declare-fun b!7499775 () Bool)

(declare-fun res!3008604 () Bool)

(declare-fun e!4471410 () Bool)

(assert (=> b!7499775 (=> (not res!3008604) (not e!4471410))))

(assert (=> b!7499775 (= res!3008604 (matchR!9417 lt!2631225 (_1!37675 (get!25338 lt!2631323))))))

(declare-fun b!7499776 () Bool)

(declare-fun e!4471408 () Option!17204)

(assert (=> b!7499776 (= e!4471408 (Some!17203 (tuple2!68745 Nil!72245 s!13591)))))

(declare-fun d!2302367 () Bool)

(assert (=> d!2302367 e!4471409))

(declare-fun res!3008603 () Bool)

(assert (=> d!2302367 (=> res!3008603 e!4471409)))

(assert (=> d!2302367 (= res!3008603 e!4471410)))

(declare-fun res!3008607 () Bool)

(assert (=> d!2302367 (=> (not res!3008607) (not e!4471410))))

(assert (=> d!2302367 (= res!3008607 (isDefined!13893 lt!2631323))))

(assert (=> d!2302367 (= lt!2631323 e!4471408)))

(declare-fun c!1384584 () Bool)

(assert (=> d!2302367 (= c!1384584 e!4471411)))

(declare-fun res!3008606 () Bool)

(assert (=> d!2302367 (=> (not res!3008606) (not e!4471411))))

(assert (=> d!2302367 (= res!3008606 (matchR!9417 lt!2631225 Nil!72245))))

(assert (=> d!2302367 (validRegex!10169 lt!2631225)))

(assert (=> d!2302367 (= (findConcatSeparation!3326 lt!2631225 rTail!78 Nil!72245 s!13591 s!13591) lt!2631323)))

(declare-fun b!7499777 () Bool)

(assert (=> b!7499777 (= e!4471410 (= (++!17260 (_1!37675 (get!25338 lt!2631323)) (_2!37675 (get!25338 lt!2631323))) s!13591))))

(declare-fun b!7499778 () Bool)

(declare-fun res!3008605 () Bool)

(assert (=> b!7499778 (=> (not res!3008605) (not e!4471410))))

(assert (=> b!7499778 (= res!3008605 (matchR!9417 rTail!78 (_2!37675 (get!25338 lt!2631323))))))

(declare-fun b!7499779 () Bool)

(assert (=> b!7499779 (= e!4471408 e!4471407)))

(declare-fun c!1384583 () Bool)

(assert (=> b!7499779 (= c!1384583 ((_ is Nil!72245) s!13591))))

(assert (= (and d!2302367 res!3008606) b!7499772))

(assert (= (and d!2302367 c!1384584) b!7499776))

(assert (= (and d!2302367 (not c!1384584)) b!7499779))

(assert (= (and b!7499779 c!1384583) b!7499771))

(assert (= (and b!7499779 (not c!1384583)) b!7499773))

(assert (= (and d!2302367 res!3008607) b!7499775))

(assert (= (and b!7499775 res!3008604) b!7499778))

(assert (= (and b!7499778 res!3008605) b!7499777))

(assert (= (and d!2302367 (not res!3008603)) b!7499774))

(declare-fun m!8082106 () Bool)

(assert (=> d!2302367 m!8082106))

(declare-fun m!8082108 () Bool)

(assert (=> d!2302367 m!8082108))

(assert (=> d!2302367 m!8081614))

(assert (=> b!7499772 m!8082064))

(assert (=> b!7499774 m!8082106))

(assert (=> b!7499773 m!8082066))

(assert (=> b!7499773 m!8082066))

(assert (=> b!7499773 m!8082068))

(assert (=> b!7499773 m!8082070))

(assert (=> b!7499773 m!8082066))

(declare-fun m!8082110 () Bool)

(assert (=> b!7499773 m!8082110))

(declare-fun m!8082112 () Bool)

(assert (=> b!7499778 m!8082112))

(declare-fun m!8082114 () Bool)

(assert (=> b!7499778 m!8082114))

(assert (=> b!7499777 m!8082112))

(declare-fun m!8082116 () Bool)

(assert (=> b!7499777 m!8082116))

(assert (=> b!7499775 m!8082112))

(declare-fun m!8082118 () Bool)

(assert (=> b!7499775 m!8082118))

(assert (=> b!7499006 d!2302367))

(declare-fun d!2302369 () Bool)

(assert (=> d!2302369 (= (Exists!4272 lambda!464744) (choose!57974 lambda!464744))))

(declare-fun bs!1937269 () Bool)

(assert (= bs!1937269 d!2302369))

(declare-fun m!8082120 () Bool)

(assert (=> bs!1937269 m!8082120))

(assert (=> b!7499006 d!2302369))

(declare-fun b!7499780 () Bool)

(declare-fun e!4471412 () Bool)

(declare-fun call!688458 () Bool)

(assert (=> b!7499780 (= e!4471412 call!688458)))

(declare-fun bm!688453 () Bool)

(declare-fun call!688459 () Bool)

(assert (=> bm!688453 (= call!688458 call!688459)))

(declare-fun b!7499782 () Bool)

(declare-fun e!4471415 () Bool)

(declare-fun e!4471417 () Bool)

(assert (=> b!7499782 (= e!4471415 e!4471417)))

(declare-fun c!1384585 () Bool)

(assert (=> b!7499782 (= c!1384585 ((_ is Union!19655) rTail!78))))

(declare-fun b!7499783 () Bool)

(declare-fun e!4471416 () Bool)

(assert (=> b!7499783 (= e!4471416 call!688458)))

(declare-fun b!7499784 () Bool)

(declare-fun e!4471418 () Bool)

(assert (=> b!7499784 (= e!4471418 call!688459)))

(declare-fun b!7499785 () Bool)

(declare-fun e!4471414 () Bool)

(assert (=> b!7499785 (= e!4471414 e!4471416)))

(declare-fun res!3008608 () Bool)

(assert (=> b!7499785 (=> (not res!3008608) (not e!4471416))))

(declare-fun call!688460 () Bool)

(assert (=> b!7499785 (= res!3008608 call!688460)))

(declare-fun b!7499786 () Bool)

(declare-fun e!4471413 () Bool)

(assert (=> b!7499786 (= e!4471413 e!4471415)))

(declare-fun c!1384586 () Bool)

(assert (=> b!7499786 (= c!1384586 ((_ is Star!19655) rTail!78))))

(declare-fun bm!688454 () Bool)

(assert (=> bm!688454 (= call!688460 (validRegex!10169 (ite c!1384585 (regOne!39823 rTail!78) (regOne!39822 rTail!78))))))

(declare-fun b!7499787 () Bool)

(declare-fun res!3008612 () Bool)

(assert (=> b!7499787 (=> res!3008612 e!4471414)))

(assert (=> b!7499787 (= res!3008612 (not ((_ is Concat!28500) rTail!78)))))

(assert (=> b!7499787 (= e!4471417 e!4471414)))

(declare-fun b!7499781 () Bool)

(declare-fun res!3008610 () Bool)

(assert (=> b!7499781 (=> (not res!3008610) (not e!4471412))))

(assert (=> b!7499781 (= res!3008610 call!688460)))

(assert (=> b!7499781 (= e!4471417 e!4471412)))

(declare-fun d!2302371 () Bool)

(declare-fun res!3008609 () Bool)

(assert (=> d!2302371 (=> res!3008609 e!4471413)))

(assert (=> d!2302371 (= res!3008609 ((_ is ElementMatch!19655) rTail!78))))

(assert (=> d!2302371 (= (validRegex!10169 rTail!78) e!4471413)))

(declare-fun bm!688455 () Bool)

(assert (=> bm!688455 (= call!688459 (validRegex!10169 (ite c!1384586 (reg!19984 rTail!78) (ite c!1384585 (regTwo!39823 rTail!78) (regTwo!39822 rTail!78)))))))

(declare-fun b!7499788 () Bool)

(assert (=> b!7499788 (= e!4471415 e!4471418)))

(declare-fun res!3008611 () Bool)

(assert (=> b!7499788 (= res!3008611 (not (nullable!8591 (reg!19984 rTail!78))))))

(assert (=> b!7499788 (=> (not res!3008611) (not e!4471418))))

(assert (= (and d!2302371 (not res!3008609)) b!7499786))

(assert (= (and b!7499786 c!1384586) b!7499788))

(assert (= (and b!7499786 (not c!1384586)) b!7499782))

(assert (= (and b!7499788 res!3008611) b!7499784))

(assert (= (and b!7499782 c!1384585) b!7499781))

(assert (= (and b!7499782 (not c!1384585)) b!7499787))

(assert (= (and b!7499781 res!3008610) b!7499780))

(assert (= (and b!7499787 (not res!3008612)) b!7499785))

(assert (= (and b!7499785 res!3008608) b!7499783))

(assert (= (or b!7499780 b!7499783) bm!688453))

(assert (= (or b!7499781 b!7499785) bm!688454))

(assert (= (or b!7499784 bm!688453) bm!688455))

(declare-fun m!8082122 () Bool)

(assert (=> bm!688454 m!8082122))

(declare-fun m!8082124 () Bool)

(assert (=> bm!688455 m!8082124))

(declare-fun m!8082126 () Bool)

(assert (=> b!7499788 m!8082126))

(assert (=> b!7499000 d!2302371))

(declare-fun b!7499800 () Bool)

(declare-fun e!4471421 () Bool)

(declare-fun tp!2176979 () Bool)

(declare-fun tp!2176977 () Bool)

(assert (=> b!7499800 (= e!4471421 (and tp!2176979 tp!2176977))))

(declare-fun b!7499799 () Bool)

(assert (=> b!7499799 (= e!4471421 tp_is_empty!49599)))

(declare-fun b!7499801 () Bool)

(declare-fun tp!2176978 () Bool)

(assert (=> b!7499801 (= e!4471421 tp!2176978)))

(assert (=> b!7498997 (= tp!2176868 e!4471421)))

(declare-fun b!7499802 () Bool)

(declare-fun tp!2176976 () Bool)

(declare-fun tp!2176980 () Bool)

(assert (=> b!7499802 (= e!4471421 (and tp!2176976 tp!2176980))))

(assert (= (and b!7498997 ((_ is ElementMatch!19655) (reg!19984 r1!5845))) b!7499799))

(assert (= (and b!7498997 ((_ is Concat!28500) (reg!19984 r1!5845))) b!7499800))

(assert (= (and b!7498997 ((_ is Star!19655) (reg!19984 r1!5845))) b!7499801))

(assert (= (and b!7498997 ((_ is Union!19655) (reg!19984 r1!5845))) b!7499802))

(declare-fun b!7499804 () Bool)

(declare-fun e!4471422 () Bool)

(declare-fun tp!2176984 () Bool)

(declare-fun tp!2176982 () Bool)

(assert (=> b!7499804 (= e!4471422 (and tp!2176984 tp!2176982))))

(declare-fun b!7499803 () Bool)

(assert (=> b!7499803 (= e!4471422 tp_is_empty!49599)))

(declare-fun b!7499805 () Bool)

(declare-fun tp!2176983 () Bool)

(assert (=> b!7499805 (= e!4471422 tp!2176983)))

(assert (=> b!7499007 (= tp!2176864 e!4471422)))

(declare-fun b!7499806 () Bool)

(declare-fun tp!2176981 () Bool)

(declare-fun tp!2176985 () Bool)

(assert (=> b!7499806 (= e!4471422 (and tp!2176981 tp!2176985))))

(assert (= (and b!7499007 ((_ is ElementMatch!19655) (regOne!39823 r2!5783))) b!7499803))

(assert (= (and b!7499007 ((_ is Concat!28500) (regOne!39823 r2!5783))) b!7499804))

(assert (= (and b!7499007 ((_ is Star!19655) (regOne!39823 r2!5783))) b!7499805))

(assert (= (and b!7499007 ((_ is Union!19655) (regOne!39823 r2!5783))) b!7499806))

(declare-fun b!7499808 () Bool)

(declare-fun e!4471423 () Bool)

(declare-fun tp!2176989 () Bool)

(declare-fun tp!2176987 () Bool)

(assert (=> b!7499808 (= e!4471423 (and tp!2176989 tp!2176987))))

(declare-fun b!7499807 () Bool)

(assert (=> b!7499807 (= e!4471423 tp_is_empty!49599)))

(declare-fun b!7499809 () Bool)

(declare-fun tp!2176988 () Bool)

(assert (=> b!7499809 (= e!4471423 tp!2176988)))

(assert (=> b!7499007 (= tp!2176865 e!4471423)))

(declare-fun b!7499810 () Bool)

(declare-fun tp!2176986 () Bool)

(declare-fun tp!2176990 () Bool)

(assert (=> b!7499810 (= e!4471423 (and tp!2176986 tp!2176990))))

(assert (= (and b!7499007 ((_ is ElementMatch!19655) (regTwo!39823 r2!5783))) b!7499807))

(assert (= (and b!7499007 ((_ is Concat!28500) (regTwo!39823 r2!5783))) b!7499808))

(assert (= (and b!7499007 ((_ is Star!19655) (regTwo!39823 r2!5783))) b!7499809))

(assert (= (and b!7499007 ((_ is Union!19655) (regTwo!39823 r2!5783))) b!7499810))

(declare-fun b!7499812 () Bool)

(declare-fun e!4471424 () Bool)

(declare-fun tp!2176994 () Bool)

(declare-fun tp!2176992 () Bool)

(assert (=> b!7499812 (= e!4471424 (and tp!2176994 tp!2176992))))

(declare-fun b!7499811 () Bool)

(assert (=> b!7499811 (= e!4471424 tp_is_empty!49599)))

(declare-fun b!7499813 () Bool)

(declare-fun tp!2176993 () Bool)

(assert (=> b!7499813 (= e!4471424 tp!2176993)))

(assert (=> b!7498998 (= tp!2176877 e!4471424)))

(declare-fun b!7499814 () Bool)

(declare-fun tp!2176991 () Bool)

(declare-fun tp!2176995 () Bool)

(assert (=> b!7499814 (= e!4471424 (and tp!2176991 tp!2176995))))

(assert (= (and b!7498998 ((_ is ElementMatch!19655) (regOne!39823 rTail!78))) b!7499811))

(assert (= (and b!7498998 ((_ is Concat!28500) (regOne!39823 rTail!78))) b!7499812))

(assert (= (and b!7498998 ((_ is Star!19655) (regOne!39823 rTail!78))) b!7499813))

(assert (= (and b!7498998 ((_ is Union!19655) (regOne!39823 rTail!78))) b!7499814))

(declare-fun b!7499816 () Bool)

(declare-fun e!4471425 () Bool)

(declare-fun tp!2176999 () Bool)

(declare-fun tp!2176997 () Bool)

(assert (=> b!7499816 (= e!4471425 (and tp!2176999 tp!2176997))))

(declare-fun b!7499815 () Bool)

(assert (=> b!7499815 (= e!4471425 tp_is_empty!49599)))

(declare-fun b!7499817 () Bool)

(declare-fun tp!2176998 () Bool)

(assert (=> b!7499817 (= e!4471425 tp!2176998)))

(assert (=> b!7498998 (= tp!2176862 e!4471425)))

(declare-fun b!7499818 () Bool)

(declare-fun tp!2176996 () Bool)

(declare-fun tp!2177000 () Bool)

(assert (=> b!7499818 (= e!4471425 (and tp!2176996 tp!2177000))))

(assert (= (and b!7498998 ((_ is ElementMatch!19655) (regTwo!39823 rTail!78))) b!7499815))

(assert (= (and b!7498998 ((_ is Concat!28500) (regTwo!39823 rTail!78))) b!7499816))

(assert (= (and b!7498998 ((_ is Star!19655) (regTwo!39823 rTail!78))) b!7499817))

(assert (= (and b!7498998 ((_ is Union!19655) (regTwo!39823 rTail!78))) b!7499818))

(declare-fun b!7499820 () Bool)

(declare-fun e!4471426 () Bool)

(declare-fun tp!2177004 () Bool)

(declare-fun tp!2177002 () Bool)

(assert (=> b!7499820 (= e!4471426 (and tp!2177004 tp!2177002))))

(declare-fun b!7499819 () Bool)

(assert (=> b!7499819 (= e!4471426 tp_is_empty!49599)))

(declare-fun b!7499821 () Bool)

(declare-fun tp!2177003 () Bool)

(assert (=> b!7499821 (= e!4471426 tp!2177003)))

(assert (=> b!7498992 (= tp!2176874 e!4471426)))

(declare-fun b!7499822 () Bool)

(declare-fun tp!2177001 () Bool)

(declare-fun tp!2177005 () Bool)

(assert (=> b!7499822 (= e!4471426 (and tp!2177001 tp!2177005))))

(assert (= (and b!7498992 ((_ is ElementMatch!19655) (regOne!39822 rTail!78))) b!7499819))

(assert (= (and b!7498992 ((_ is Concat!28500) (regOne!39822 rTail!78))) b!7499820))

(assert (= (and b!7498992 ((_ is Star!19655) (regOne!39822 rTail!78))) b!7499821))

(assert (= (and b!7498992 ((_ is Union!19655) (regOne!39822 rTail!78))) b!7499822))

(declare-fun b!7499824 () Bool)

(declare-fun e!4471427 () Bool)

(declare-fun tp!2177009 () Bool)

(declare-fun tp!2177007 () Bool)

(assert (=> b!7499824 (= e!4471427 (and tp!2177009 tp!2177007))))

(declare-fun b!7499823 () Bool)

(assert (=> b!7499823 (= e!4471427 tp_is_empty!49599)))

(declare-fun b!7499825 () Bool)

(declare-fun tp!2177008 () Bool)

(assert (=> b!7499825 (= e!4471427 tp!2177008)))

(assert (=> b!7498992 (= tp!2176876 e!4471427)))

(declare-fun b!7499826 () Bool)

(declare-fun tp!2177006 () Bool)

(declare-fun tp!2177010 () Bool)

(assert (=> b!7499826 (= e!4471427 (and tp!2177006 tp!2177010))))

(assert (= (and b!7498992 ((_ is ElementMatch!19655) (regTwo!39822 rTail!78))) b!7499823))

(assert (= (and b!7498992 ((_ is Concat!28500) (regTwo!39822 rTail!78))) b!7499824))

(assert (= (and b!7498992 ((_ is Star!19655) (regTwo!39822 rTail!78))) b!7499825))

(assert (= (and b!7498992 ((_ is Union!19655) (regTwo!39822 rTail!78))) b!7499826))

(declare-fun b!7499828 () Bool)

(declare-fun e!4471428 () Bool)

(declare-fun tp!2177014 () Bool)

(declare-fun tp!2177012 () Bool)

(assert (=> b!7499828 (= e!4471428 (and tp!2177014 tp!2177012))))

(declare-fun b!7499827 () Bool)

(assert (=> b!7499827 (= e!4471428 tp_is_empty!49599)))

(declare-fun b!7499829 () Bool)

(declare-fun tp!2177013 () Bool)

(assert (=> b!7499829 (= e!4471428 tp!2177013)))

(assert (=> b!7498987 (= tp!2176867 e!4471428)))

(declare-fun b!7499830 () Bool)

(declare-fun tp!2177011 () Bool)

(declare-fun tp!2177015 () Bool)

(assert (=> b!7499830 (= e!4471428 (and tp!2177011 tp!2177015))))

(assert (= (and b!7498987 ((_ is ElementMatch!19655) (regOne!39822 r1!5845))) b!7499827))

(assert (= (and b!7498987 ((_ is Concat!28500) (regOne!39822 r1!5845))) b!7499828))

(assert (= (and b!7498987 ((_ is Star!19655) (regOne!39822 r1!5845))) b!7499829))

(assert (= (and b!7498987 ((_ is Union!19655) (regOne!39822 r1!5845))) b!7499830))

(declare-fun b!7499832 () Bool)

(declare-fun e!4471429 () Bool)

(declare-fun tp!2177019 () Bool)

(declare-fun tp!2177017 () Bool)

(assert (=> b!7499832 (= e!4471429 (and tp!2177019 tp!2177017))))

(declare-fun b!7499831 () Bool)

(assert (=> b!7499831 (= e!4471429 tp_is_empty!49599)))

(declare-fun b!7499833 () Bool)

(declare-fun tp!2177018 () Bool)

(assert (=> b!7499833 (= e!4471429 tp!2177018)))

(assert (=> b!7498987 (= tp!2176875 e!4471429)))

(declare-fun b!7499834 () Bool)

(declare-fun tp!2177016 () Bool)

(declare-fun tp!2177020 () Bool)

(assert (=> b!7499834 (= e!4471429 (and tp!2177016 tp!2177020))))

(assert (= (and b!7498987 ((_ is ElementMatch!19655) (regTwo!39822 r1!5845))) b!7499831))

(assert (= (and b!7498987 ((_ is Concat!28500) (regTwo!39822 r1!5845))) b!7499832))

(assert (= (and b!7498987 ((_ is Star!19655) (regTwo!39822 r1!5845))) b!7499833))

(assert (= (and b!7498987 ((_ is Union!19655) (regTwo!39822 r1!5845))) b!7499834))

(declare-fun b!7499836 () Bool)

(declare-fun e!4471430 () Bool)

(declare-fun tp!2177024 () Bool)

(declare-fun tp!2177022 () Bool)

(assert (=> b!7499836 (= e!4471430 (and tp!2177024 tp!2177022))))

(declare-fun b!7499835 () Bool)

(assert (=> b!7499835 (= e!4471430 tp_is_empty!49599)))

(declare-fun b!7499837 () Bool)

(declare-fun tp!2177023 () Bool)

(assert (=> b!7499837 (= e!4471430 tp!2177023)))

(assert (=> b!7498989 (= tp!2176863 e!4471430)))

(declare-fun b!7499838 () Bool)

(declare-fun tp!2177021 () Bool)

(declare-fun tp!2177025 () Bool)

(assert (=> b!7499838 (= e!4471430 (and tp!2177021 tp!2177025))))

(assert (= (and b!7498989 ((_ is ElementMatch!19655) (reg!19984 r2!5783))) b!7499835))

(assert (= (and b!7498989 ((_ is Concat!28500) (reg!19984 r2!5783))) b!7499836))

(assert (= (and b!7498989 ((_ is Star!19655) (reg!19984 r2!5783))) b!7499837))

(assert (= (and b!7498989 ((_ is Union!19655) (reg!19984 r2!5783))) b!7499838))

(declare-fun b!7499843 () Bool)

(declare-fun e!4471433 () Bool)

(declare-fun tp!2177028 () Bool)

(assert (=> b!7499843 (= e!4471433 (and tp_is_empty!49599 tp!2177028))))

(assert (=> b!7499005 (= tp!2176871 e!4471433)))

(assert (= (and b!7499005 ((_ is Cons!72245) (t!386938 s!13591))) b!7499843))

(declare-fun b!7499845 () Bool)

(declare-fun e!4471434 () Bool)

(declare-fun tp!2177032 () Bool)

(declare-fun tp!2177030 () Bool)

(assert (=> b!7499845 (= e!4471434 (and tp!2177032 tp!2177030))))

(declare-fun b!7499844 () Bool)

(assert (=> b!7499844 (= e!4471434 tp_is_empty!49599)))

(declare-fun b!7499846 () Bool)

(declare-fun tp!2177031 () Bool)

(assert (=> b!7499846 (= e!4471434 tp!2177031)))

(assert (=> b!7498999 (= tp!2176873 e!4471434)))

(declare-fun b!7499847 () Bool)

(declare-fun tp!2177029 () Bool)

(declare-fun tp!2177033 () Bool)

(assert (=> b!7499847 (= e!4471434 (and tp!2177029 tp!2177033))))

(assert (= (and b!7498999 ((_ is ElementMatch!19655) (regOne!39822 r2!5783))) b!7499844))

(assert (= (and b!7498999 ((_ is Concat!28500) (regOne!39822 r2!5783))) b!7499845))

(assert (= (and b!7498999 ((_ is Star!19655) (regOne!39822 r2!5783))) b!7499846))

(assert (= (and b!7498999 ((_ is Union!19655) (regOne!39822 r2!5783))) b!7499847))

(declare-fun b!7499849 () Bool)

(declare-fun e!4471435 () Bool)

(declare-fun tp!2177037 () Bool)

(declare-fun tp!2177035 () Bool)

(assert (=> b!7499849 (= e!4471435 (and tp!2177037 tp!2177035))))

(declare-fun b!7499848 () Bool)

(assert (=> b!7499848 (= e!4471435 tp_is_empty!49599)))

(declare-fun b!7499850 () Bool)

(declare-fun tp!2177036 () Bool)

(assert (=> b!7499850 (= e!4471435 tp!2177036)))

(assert (=> b!7498999 (= tp!2176866 e!4471435)))

(declare-fun b!7499851 () Bool)

(declare-fun tp!2177034 () Bool)

(declare-fun tp!2177038 () Bool)

(assert (=> b!7499851 (= e!4471435 (and tp!2177034 tp!2177038))))

(assert (= (and b!7498999 ((_ is ElementMatch!19655) (regTwo!39822 r2!5783))) b!7499848))

(assert (= (and b!7498999 ((_ is Concat!28500) (regTwo!39822 r2!5783))) b!7499849))

(assert (= (and b!7498999 ((_ is Star!19655) (regTwo!39822 r2!5783))) b!7499850))

(assert (= (and b!7498999 ((_ is Union!19655) (regTwo!39822 r2!5783))) b!7499851))

(declare-fun b!7499853 () Bool)

(declare-fun e!4471436 () Bool)

(declare-fun tp!2177042 () Bool)

(declare-fun tp!2177040 () Bool)

(assert (=> b!7499853 (= e!4471436 (and tp!2177042 tp!2177040))))

(declare-fun b!7499852 () Bool)

(assert (=> b!7499852 (= e!4471436 tp_is_empty!49599)))

(declare-fun b!7499854 () Bool)

(declare-fun tp!2177041 () Bool)

(assert (=> b!7499854 (= e!4471436 tp!2177041)))

(assert (=> b!7498990 (= tp!2176870 e!4471436)))

(declare-fun b!7499855 () Bool)

(declare-fun tp!2177039 () Bool)

(declare-fun tp!2177043 () Bool)

(assert (=> b!7499855 (= e!4471436 (and tp!2177039 tp!2177043))))

(assert (= (and b!7498990 ((_ is ElementMatch!19655) (regOne!39823 r1!5845))) b!7499852))

(assert (= (and b!7498990 ((_ is Concat!28500) (regOne!39823 r1!5845))) b!7499853))

(assert (= (and b!7498990 ((_ is Star!19655) (regOne!39823 r1!5845))) b!7499854))

(assert (= (and b!7498990 ((_ is Union!19655) (regOne!39823 r1!5845))) b!7499855))

(declare-fun b!7499857 () Bool)

(declare-fun e!4471437 () Bool)

(declare-fun tp!2177047 () Bool)

(declare-fun tp!2177045 () Bool)

(assert (=> b!7499857 (= e!4471437 (and tp!2177047 tp!2177045))))

(declare-fun b!7499856 () Bool)

(assert (=> b!7499856 (= e!4471437 tp_is_empty!49599)))

(declare-fun b!7499858 () Bool)

(declare-fun tp!2177046 () Bool)

(assert (=> b!7499858 (= e!4471437 tp!2177046)))

(assert (=> b!7498990 (= tp!2176869 e!4471437)))

(declare-fun b!7499859 () Bool)

(declare-fun tp!2177044 () Bool)

(declare-fun tp!2177048 () Bool)

(assert (=> b!7499859 (= e!4471437 (and tp!2177044 tp!2177048))))

(assert (= (and b!7498990 ((_ is ElementMatch!19655) (regTwo!39823 r1!5845))) b!7499856))

(assert (= (and b!7498990 ((_ is Concat!28500) (regTwo!39823 r1!5845))) b!7499857))

(assert (= (and b!7498990 ((_ is Star!19655) (regTwo!39823 r1!5845))) b!7499858))

(assert (= (and b!7498990 ((_ is Union!19655) (regTwo!39823 r1!5845))) b!7499859))

(declare-fun b!7499861 () Bool)

(declare-fun e!4471438 () Bool)

(declare-fun tp!2177052 () Bool)

(declare-fun tp!2177050 () Bool)

(assert (=> b!7499861 (= e!4471438 (and tp!2177052 tp!2177050))))

(declare-fun b!7499860 () Bool)

(assert (=> b!7499860 (= e!4471438 tp_is_empty!49599)))

(declare-fun b!7499862 () Bool)

(declare-fun tp!2177051 () Bool)

(assert (=> b!7499862 (= e!4471438 tp!2177051)))

(assert (=> b!7498995 (= tp!2176872 e!4471438)))

(declare-fun b!7499863 () Bool)

(declare-fun tp!2177049 () Bool)

(declare-fun tp!2177053 () Bool)

(assert (=> b!7499863 (= e!4471438 (and tp!2177049 tp!2177053))))

(assert (= (and b!7498995 ((_ is ElementMatch!19655) (reg!19984 rTail!78))) b!7499860))

(assert (= (and b!7498995 ((_ is Concat!28500) (reg!19984 rTail!78))) b!7499861))

(assert (= (and b!7498995 ((_ is Star!19655) (reg!19984 rTail!78))) b!7499862))

(assert (= (and b!7498995 ((_ is Union!19655) (reg!19984 rTail!78))) b!7499863))

(check-sat (not b!7499124) (not b!7499802) (not b!7499854) (not b!7499834) (not bm!688371) (not b!7499563) (not b!7499361) (not d!2302277) (not b!7499821) (not b!7499419) (not b!7499125) (not b!7499140) (not b!7499366) (not bm!688451) (not bm!688436) (not bm!688408) (not bm!688386) (not bm!688439) (not b!7499692) tp_is_empty!49599 (not b!7499820) (not b!7499390) (not b!7499755) (not d!2302217) (not b!7499805) (not b!7499826) (not b!7499760) (not b!7499754) (not b!7499843) (not bm!688412) (not bm!688404) (not b!7499354) (not b!7499845) (not bm!688421) (not b!7499850) (not b!7499726) (not b!7499719) (not b!7499389) (not b!7499857) (not b!7499644) (not b!7499818) (not d!2302341) (not b!7499729) (not b!7499482) (not bm!688449) (not bm!688454) (not bm!688452) (not b!7499772) (not b!7499851) (not b!7499685) (not b!7499855) (not d!2302311) (not bm!688455) (not b!7499847) (not b!7499817) (not b!7499853) (not bm!688443) (not b!7499770) (not b!7499485) (not d!2302365) (not b!7499830) (not b!7499828) (not b!7499810) (not b!7499708) (not b!7499800) (not b!7499352) (not bm!688440) (not b!7499357) (not b!7499759) (not b!7499130) (not bm!688448) (not b!7499832) (not d!2302361) (not bm!688394) (not b!7499801) (not b!7499484) (not d!2302353) (not d!2302343) (not b!7499773) (not b!7499135) (not b!7499833) (not d!2302333) (not bm!688447) (not b!7499477) (not b!7499836) (not b!7499849) (not b!7499369) (not b!7499371) (not b!7499837) (not bm!688387) (not b!7499809) (not d!2302263) (not b!7499724) (not b!7499825) (not b!7499806) (not b!7499728) (not b!7499593) (not b!7499249) (not bm!688438) (not b!7499666) (not b!7499775) (not b!7499684) (not d!2302345) (not b!7499824) (not d!2302359) (not b!7499137) (not b!7499667) (not d!2302355) (not b!7499356) (not d!2302367) (not b!7499418) (not bm!688395) (not d!2302331) (not b!7499138) (not bm!688441) (not b!7499368) (not d!2302351) (not b!7499727) (not d!2302251) (not b!7499291) (not b!7499812) (not b!7499121) (not d!2302267) (not d!2302337) (not b!7499778) (not b!7499756) (not b!7499846) (not bm!688437) (not b!7499123) (not b!7499588) (not b!7499598) (not d!2302363) (not bm!688444) (not b!7499292) (not b!7499814) (not b!7499813) (not b!7499816) (not b!7499863) (not b!7499788) (not bm!688445) (not b!7499774) (not d!2302227) (not bm!688442) (not b!7499355) (not bm!688407) (not b!7499808) (not b!7499861) (not b!7499862) (not b!7499250) (not b!7499682) (not b!7499116) (not d!2302369) (not d!2302347) (not bm!688413) (not d!2302271) (not b!7499804) (not b!7499691) (not b!7499858) (not b!7499643) (not b!7499487) (not b!7499347) (not b!7499677) (not b!7499595) (not b!7499822) (not b!7499596) (not d!2302323) (not bm!688374) (not d!2302273) (not b!7499859) (not b!7499126) (not b!7499486) (not b!7499757) (not b!7499777) (not bm!688405) (not b!7499686) (not b!7499597) (not b!7499370) (not b!7499139) (not b!7499838) (not b!7499687) (not d!2302325) (not b!7499829))
(check-sat)
