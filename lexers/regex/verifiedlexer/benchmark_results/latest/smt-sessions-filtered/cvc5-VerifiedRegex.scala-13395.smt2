; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725532 () Bool)

(assert start!725532)

(declare-fun b!7497978 () Bool)

(assert (=> b!7497978 true))

(assert (=> b!7497978 true))

(assert (=> b!7497978 true))

(declare-fun lambda!464649 () Int)

(declare-fun lambda!464648 () Int)

(assert (=> b!7497978 (not (= lambda!464649 lambda!464648))))

(assert (=> b!7497978 true))

(assert (=> b!7497978 true))

(assert (=> b!7497978 true))

(declare-fun bs!1936644 () Bool)

(declare-fun b!7497995 () Bool)

(assert (= bs!1936644 (and b!7497995 b!7497978)))

(declare-datatypes ((C!39578 0))(
  ( (C!39579 (val!30187 Int)) )
))
(declare-datatypes ((Regex!19652 0))(
  ( (ElementMatch!19652 (c!1384275 C!39578)) (Concat!28497 (regOne!39816 Regex!19652) (regTwo!39816 Regex!19652)) (EmptyExpr!19652) (Star!19652 (reg!19981 Regex!19652)) (EmptyLang!19652) (Union!19652 (regOne!39817 Regex!19652) (regTwo!39817 Regex!19652)) )
))
(declare-fun r2!5783 () Regex!19652)

(declare-fun lambda!464650 () Int)

(declare-fun lt!2630958 () Regex!19652)

(assert (=> bs!1936644 (= (= r2!5783 lt!2630958) (= lambda!464650 lambda!464648))))

(assert (=> bs!1936644 (not (= lambda!464650 lambda!464649))))

(assert (=> b!7497995 true))

(assert (=> b!7497995 true))

(assert (=> b!7497995 true))

(declare-fun lambda!464651 () Int)

(assert (=> bs!1936644 (not (= lambda!464651 lambda!464648))))

(assert (=> bs!1936644 (= (= r2!5783 lt!2630958) (= lambda!464651 lambda!464649))))

(assert (=> b!7497995 (not (= lambda!464651 lambda!464650))))

(assert (=> b!7497995 true))

(assert (=> b!7497995 true))

(assert (=> b!7497995 true))

(declare-fun e!4470479 () Bool)

(declare-fun e!4470482 () Bool)

(assert (=> b!7497978 (= e!4470479 e!4470482)))

(declare-fun res!3007793 () Bool)

(assert (=> b!7497978 (=> res!3007793 e!4470482)))

(declare-fun lt!2630963 () Bool)

(declare-fun lt!2630957 () Bool)

(assert (=> b!7497978 (= res!3007793 (or lt!2630963 (not lt!2630957)))))

(declare-fun Exists!4269 (Int) Bool)

(assert (=> b!7497978 (= (Exists!4269 lambda!464648) (Exists!4269 lambda!464649))))

(declare-datatypes ((List!72366 0))(
  ( (Nil!72242) (Cons!72242 (h!78690 C!39578) (t!386935 List!72366)) )
))
(declare-fun s!13591 () List!72366)

(declare-datatypes ((Unit!166135 0))(
  ( (Unit!166136) )
))
(declare-fun lt!2630961 () Unit!166135)

(declare-fun rTail!78 () Regex!19652)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2593 (Regex!19652 Regex!19652 List!72366) Unit!166135)

(assert (=> b!7497978 (= lt!2630961 (lemmaExistCutMatchRandMatchRSpecEquivalent!2593 lt!2630958 rTail!78 s!13591))))

(assert (=> b!7497978 (= lt!2630963 (Exists!4269 lambda!464648))))

(declare-datatypes ((tuple2!68738 0))(
  ( (tuple2!68739 (_1!37672 List!72366) (_2!37672 List!72366)) )
))
(declare-datatypes ((Option!17201 0))(
  ( (None!17200) (Some!17200 (v!54329 tuple2!68738)) )
))
(declare-fun isDefined!13890 (Option!17201) Bool)

(declare-fun findConcatSeparation!3323 (Regex!19652 Regex!19652 List!72366 List!72366 List!72366) Option!17201)

(assert (=> b!7497978 (= lt!2630963 (isDefined!13890 (findConcatSeparation!3323 lt!2630958 rTail!78 Nil!72242 s!13591 s!13591)))))

(declare-fun lt!2630967 () Unit!166135)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3081 (Regex!19652 Regex!19652 List!72366) Unit!166135)

(assert (=> b!7497978 (= lt!2630967 (lemmaFindConcatSeparationEquivalentToExists!3081 lt!2630958 rTail!78 s!13591))))

(declare-fun b!7497979 () Bool)

(declare-fun res!3007794 () Bool)

(declare-fun e!4470478 () Bool)

(assert (=> b!7497979 (=> res!3007794 e!4470478)))

(declare-fun lt!2630962 () tuple2!68738)

(declare-fun matchR!9414 (Regex!19652 List!72366) Bool)

(assert (=> b!7497979 (= res!3007794 (not (matchR!9414 rTail!78 (_2!37672 lt!2630962))))))

(declare-fun b!7497980 () Bool)

(declare-fun e!4470477 () Bool)

(declare-fun tp!2176543 () Bool)

(declare-fun tp!2176553 () Bool)

(assert (=> b!7497980 (= e!4470477 (and tp!2176543 tp!2176553))))

(declare-fun b!7497981 () Bool)

(declare-fun tp_is_empty!49593 () Bool)

(assert (=> b!7497981 (= e!4470477 tp_is_empty!49593)))

(declare-fun b!7497982 () Bool)

(declare-fun e!4470481 () Bool)

(assert (=> b!7497982 (= e!4470481 tp_is_empty!49593)))

(declare-fun b!7497983 () Bool)

(declare-fun tp!2176544 () Bool)

(assert (=> b!7497983 (= e!4470477 tp!2176544)))

(declare-fun b!7497984 () Bool)

(declare-fun e!4470480 () Bool)

(declare-fun tp!2176549 () Bool)

(assert (=> b!7497984 (= e!4470480 (and tp_is_empty!49593 tp!2176549))))

(declare-fun b!7497985 () Bool)

(declare-fun e!4470484 () Bool)

(declare-fun tp!2176551 () Bool)

(declare-fun tp!2176547 () Bool)

(assert (=> b!7497985 (= e!4470484 (and tp!2176551 tp!2176547))))

(declare-fun b!7497986 () Bool)

(declare-fun tp!2176548 () Bool)

(declare-fun tp!2176557 () Bool)

(assert (=> b!7497986 (= e!4470481 (and tp!2176548 tp!2176557))))

(declare-fun b!7497987 () Bool)

(declare-fun tp!2176554 () Bool)

(assert (=> b!7497987 (= e!4470484 tp!2176554)))

(declare-fun b!7497989 () Bool)

(declare-fun res!3007796 () Bool)

(declare-fun e!4470483 () Bool)

(assert (=> b!7497989 (=> (not res!3007796) (not e!4470483))))

(declare-fun validRegex!10166 (Regex!19652) Bool)

(assert (=> b!7497989 (= res!3007796 (validRegex!10166 r2!5783))))

(declare-fun b!7497990 () Bool)

(assert (=> b!7497990 (= e!4470484 tp_is_empty!49593)))

(declare-fun b!7497991 () Bool)

(declare-fun res!3007791 () Bool)

(assert (=> b!7497991 (=> (not res!3007791) (not e!4470483))))

(assert (=> b!7497991 (= res!3007791 (validRegex!10166 rTail!78))))

(declare-fun b!7497992 () Bool)

(declare-fun tp!2176556 () Bool)

(declare-fun tp!2176545 () Bool)

(assert (=> b!7497992 (= e!4470477 (and tp!2176556 tp!2176545))))

(declare-fun b!7497993 () Bool)

(assert (=> b!7497993 (= e!4470478 (validRegex!10166 lt!2630958))))

(declare-fun b!7497994 () Bool)

(declare-fun tp!2176552 () Bool)

(assert (=> b!7497994 (= e!4470481 tp!2176552)))

(declare-fun e!4470485 () Bool)

(assert (=> b!7497995 (= e!4470485 e!4470478)))

(declare-fun res!3007789 () Bool)

(assert (=> b!7497995 (=> res!3007789 e!4470478)))

(assert (=> b!7497995 (= res!3007789 (not (matchR!9414 r2!5783 (_1!37672 lt!2630962))))))

(declare-fun lt!2630969 () Option!17201)

(declare-fun get!25334 (Option!17201) tuple2!68738)

(assert (=> b!7497995 (= lt!2630962 (get!25334 lt!2630969))))

(assert (=> b!7497995 (= (Exists!4269 lambda!464650) (Exists!4269 lambda!464651))))

(declare-fun lt!2630955 () Unit!166135)

(assert (=> b!7497995 (= lt!2630955 (lemmaExistCutMatchRandMatchRSpecEquivalent!2593 r2!5783 rTail!78 s!13591))))

(assert (=> b!7497995 (= (isDefined!13890 lt!2630969) (Exists!4269 lambda!464650))))

(assert (=> b!7497995 (= lt!2630969 (findConcatSeparation!3323 r2!5783 rTail!78 Nil!72242 s!13591 s!13591))))

(declare-fun lt!2630966 () Unit!166135)

(assert (=> b!7497995 (= lt!2630966 (lemmaFindConcatSeparationEquivalentToExists!3081 r2!5783 rTail!78 s!13591))))

(declare-fun b!7497996 () Bool)

(declare-fun tp!2176550 () Bool)

(declare-fun tp!2176546 () Bool)

(assert (=> b!7497996 (= e!4470484 (and tp!2176550 tp!2176546))))

(declare-fun b!7497997 () Bool)

(assert (=> b!7497997 (= e!4470482 e!4470485)))

(declare-fun res!3007795 () Bool)

(assert (=> b!7497997 (=> res!3007795 e!4470485)))

(declare-fun lt!2630972 () Bool)

(declare-fun lt!2630965 () Bool)

(assert (=> b!7497997 (= res!3007795 (or (and (not lt!2630972) (not lt!2630965)) lt!2630972))))

(declare-fun lt!2630970 () Regex!19652)

(declare-fun matchRSpec!4329 (Regex!19652 List!72366) Bool)

(assert (=> b!7497997 (= lt!2630965 (matchRSpec!4329 lt!2630970 s!13591))))

(assert (=> b!7497997 (= lt!2630965 (matchR!9414 lt!2630970 s!13591))))

(declare-fun lt!2630954 () Unit!166135)

(declare-fun mainMatchTheorem!4323 (Regex!19652 List!72366) Unit!166135)

(assert (=> b!7497997 (= lt!2630954 (mainMatchTheorem!4323 lt!2630970 s!13591))))

(declare-fun lt!2630973 () Regex!19652)

(assert (=> b!7497997 (= lt!2630972 (matchRSpec!4329 lt!2630973 s!13591))))

(assert (=> b!7497997 (= lt!2630972 (matchR!9414 lt!2630973 s!13591))))

(declare-fun lt!2630971 () Unit!166135)

(assert (=> b!7497997 (= lt!2630971 (mainMatchTheorem!4323 lt!2630973 s!13591))))

(declare-fun b!7497998 () Bool)

(assert (=> b!7497998 (= e!4470483 (not e!4470479))))

(declare-fun res!3007792 () Bool)

(assert (=> b!7497998 (=> res!3007792 e!4470479)))

(declare-fun lt!2630960 () Bool)

(assert (=> b!7497998 (= res!3007792 lt!2630960)))

(declare-fun lt!2630968 () Regex!19652)

(assert (=> b!7497998 (= lt!2630957 (matchRSpec!4329 lt!2630968 s!13591))))

(assert (=> b!7497998 (= lt!2630957 (matchR!9414 lt!2630968 s!13591))))

(declare-fun lt!2630959 () Unit!166135)

(assert (=> b!7497998 (= lt!2630959 (mainMatchTheorem!4323 lt!2630968 s!13591))))

(declare-fun lt!2630964 () Regex!19652)

(assert (=> b!7497998 (= lt!2630960 (matchRSpec!4329 lt!2630964 s!13591))))

(assert (=> b!7497998 (= lt!2630960 (matchR!9414 lt!2630964 s!13591))))

(declare-fun lt!2630956 () Unit!166135)

(assert (=> b!7497998 (= lt!2630956 (mainMatchTheorem!4323 lt!2630964 s!13591))))

(assert (=> b!7497998 (= lt!2630968 (Union!19652 lt!2630973 lt!2630970))))

(assert (=> b!7497998 (= lt!2630970 (Concat!28497 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19652)

(assert (=> b!7497998 (= lt!2630973 (Concat!28497 r1!5845 rTail!78))))

(assert (=> b!7497998 (= lt!2630964 (Concat!28497 lt!2630958 rTail!78))))

(assert (=> b!7497998 (= lt!2630958 (Union!19652 r1!5845 r2!5783))))

(declare-fun b!7497988 () Bool)

(declare-fun tp!2176555 () Bool)

(declare-fun tp!2176542 () Bool)

(assert (=> b!7497988 (= e!4470481 (and tp!2176555 tp!2176542))))

(declare-fun res!3007790 () Bool)

(assert (=> start!725532 (=> (not res!3007790) (not e!4470483))))

(assert (=> start!725532 (= res!3007790 (validRegex!10166 r1!5845))))

(assert (=> start!725532 e!4470483))

(assert (=> start!725532 e!4470484))

(assert (=> start!725532 e!4470477))

(assert (=> start!725532 e!4470481))

(assert (=> start!725532 e!4470480))

(assert (= (and start!725532 res!3007790) b!7497989))

(assert (= (and b!7497989 res!3007796) b!7497991))

(assert (= (and b!7497991 res!3007791) b!7497998))

(assert (= (and b!7497998 (not res!3007792)) b!7497978))

(assert (= (and b!7497978 (not res!3007793)) b!7497997))

(assert (= (and b!7497997 (not res!3007795)) b!7497995))

(assert (= (and b!7497995 (not res!3007789)) b!7497979))

(assert (= (and b!7497979 (not res!3007794)) b!7497993))

(assert (= (and start!725532 (is-ElementMatch!19652 r1!5845)) b!7497990))

(assert (= (and start!725532 (is-Concat!28497 r1!5845)) b!7497996))

(assert (= (and start!725532 (is-Star!19652 r1!5845)) b!7497987))

(assert (= (and start!725532 (is-Union!19652 r1!5845)) b!7497985))

(assert (= (and start!725532 (is-ElementMatch!19652 r2!5783)) b!7497981))

(assert (= (and start!725532 (is-Concat!28497 r2!5783)) b!7497992))

(assert (= (and start!725532 (is-Star!19652 r2!5783)) b!7497983))

(assert (= (and start!725532 (is-Union!19652 r2!5783)) b!7497980))

(assert (= (and start!725532 (is-ElementMatch!19652 rTail!78)) b!7497982))

(assert (= (and start!725532 (is-Concat!28497 rTail!78)) b!7497986))

(assert (= (and start!725532 (is-Star!19652 rTail!78)) b!7497994))

(assert (= (and start!725532 (is-Union!19652 rTail!78)) b!7497988))

(assert (= (and start!725532 (is-Cons!72242 s!13591)) b!7497984))

(declare-fun m!8081000 () Bool)

(assert (=> b!7497998 m!8081000))

(declare-fun m!8081002 () Bool)

(assert (=> b!7497998 m!8081002))

(declare-fun m!8081004 () Bool)

(assert (=> b!7497998 m!8081004))

(declare-fun m!8081006 () Bool)

(assert (=> b!7497998 m!8081006))

(declare-fun m!8081008 () Bool)

(assert (=> b!7497998 m!8081008))

(declare-fun m!8081010 () Bool)

(assert (=> b!7497998 m!8081010))

(declare-fun m!8081012 () Bool)

(assert (=> b!7497978 m!8081012))

(declare-fun m!8081014 () Bool)

(assert (=> b!7497978 m!8081014))

(declare-fun m!8081016 () Bool)

(assert (=> b!7497978 m!8081016))

(declare-fun m!8081018 () Bool)

(assert (=> b!7497978 m!8081018))

(declare-fun m!8081020 () Bool)

(assert (=> b!7497978 m!8081020))

(declare-fun m!8081022 () Bool)

(assert (=> b!7497978 m!8081022))

(assert (=> b!7497978 m!8081014))

(assert (=> b!7497978 m!8081020))

(declare-fun m!8081024 () Bool)

(assert (=> b!7497989 m!8081024))

(declare-fun m!8081026 () Bool)

(assert (=> start!725532 m!8081026))

(declare-fun m!8081028 () Bool)

(assert (=> b!7497997 m!8081028))

(declare-fun m!8081030 () Bool)

(assert (=> b!7497997 m!8081030))

(declare-fun m!8081032 () Bool)

(assert (=> b!7497997 m!8081032))

(declare-fun m!8081034 () Bool)

(assert (=> b!7497997 m!8081034))

(declare-fun m!8081036 () Bool)

(assert (=> b!7497997 m!8081036))

(declare-fun m!8081038 () Bool)

(assert (=> b!7497997 m!8081038))

(declare-fun m!8081040 () Bool)

(assert (=> b!7497993 m!8081040))

(declare-fun m!8081042 () Bool)

(assert (=> b!7497991 m!8081042))

(declare-fun m!8081044 () Bool)

(assert (=> b!7497979 m!8081044))

(declare-fun m!8081046 () Bool)

(assert (=> b!7497995 m!8081046))

(declare-fun m!8081048 () Bool)

(assert (=> b!7497995 m!8081048))

(declare-fun m!8081050 () Bool)

(assert (=> b!7497995 m!8081050))

(declare-fun m!8081052 () Bool)

(assert (=> b!7497995 m!8081052))

(declare-fun m!8081054 () Bool)

(assert (=> b!7497995 m!8081054))

(declare-fun m!8081056 () Bool)

(assert (=> b!7497995 m!8081056))

(assert (=> b!7497995 m!8081048))

(declare-fun m!8081058 () Bool)

(assert (=> b!7497995 m!8081058))

(declare-fun m!8081060 () Bool)

(assert (=> b!7497995 m!8081060))

(push 1)

(assert (not b!7497993))

(assert (not b!7497984))

(assert (not b!7497988))

(assert (not b!7497995))

(assert (not b!7497998))

(assert tp_is_empty!49593)

(assert (not b!7497986))

(assert (not b!7497979))

(assert (not b!7497980))

(assert (not b!7497997))

(assert (not start!725532))

(assert (not b!7497992))

(assert (not b!7497994))

(assert (not b!7497978))

(assert (not b!7497983))

(assert (not b!7497996))

(assert (not b!7497989))

(assert (not b!7497985))

(assert (not b!7497991))

(assert (not b!7497987))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1936646 () Bool)

(declare-fun d!2302092 () Bool)

(assert (= bs!1936646 (and d!2302092 b!7497978)))

(declare-fun lambda!464672 () Int)

(assert (=> bs!1936646 (= (= r2!5783 lt!2630958) (= lambda!464672 lambda!464648))))

(assert (=> bs!1936646 (not (= lambda!464672 lambda!464649))))

(declare-fun bs!1936647 () Bool)

(assert (= bs!1936647 (and d!2302092 b!7497995)))

(assert (=> bs!1936647 (= lambda!464672 lambda!464650)))

(assert (=> bs!1936647 (not (= lambda!464672 lambda!464651))))

(assert (=> d!2302092 true))

(assert (=> d!2302092 true))

(assert (=> d!2302092 true))

(declare-fun lambda!464673 () Int)

(assert (=> bs!1936647 (not (= lambda!464673 lambda!464650))))

(assert (=> bs!1936646 (not (= lambda!464673 lambda!464648))))

(assert (=> bs!1936647 (= lambda!464673 lambda!464651)))

(assert (=> bs!1936646 (= (= r2!5783 lt!2630958) (= lambda!464673 lambda!464649))))

(declare-fun bs!1936648 () Bool)

(assert (= bs!1936648 d!2302092))

(assert (=> bs!1936648 (not (= lambda!464673 lambda!464672))))

(assert (=> d!2302092 true))

(assert (=> d!2302092 true))

(assert (=> d!2302092 true))

(assert (=> d!2302092 (= (Exists!4269 lambda!464672) (Exists!4269 lambda!464673))))

(declare-fun lt!2631036 () Unit!166135)

(declare-fun choose!57962 (Regex!19652 Regex!19652 List!72366) Unit!166135)

(assert (=> d!2302092 (= lt!2631036 (choose!57962 r2!5783 rTail!78 s!13591))))

(assert (=> d!2302092 (validRegex!10166 r2!5783)))

(assert (=> d!2302092 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2593 r2!5783 rTail!78 s!13591) lt!2631036)))

(declare-fun m!8081124 () Bool)

(assert (=> bs!1936648 m!8081124))

(declare-fun m!8081126 () Bool)

(assert (=> bs!1936648 m!8081126))

(declare-fun m!8081128 () Bool)

(assert (=> bs!1936648 m!8081128))

(assert (=> bs!1936648 m!8081024))

(assert (=> b!7497995 d!2302092))

(declare-fun d!2302094 () Bool)

(declare-fun choose!57963 (Int) Bool)

(assert (=> d!2302094 (= (Exists!4269 lambda!464650) (choose!57963 lambda!464650))))

(declare-fun bs!1936649 () Bool)

(assert (= bs!1936649 d!2302094))

(declare-fun m!8081130 () Bool)

(assert (=> bs!1936649 m!8081130))

(assert (=> b!7497995 d!2302094))

(declare-fun d!2302096 () Bool)

(declare-fun isEmpty!41281 (Option!17201) Bool)

(assert (=> d!2302096 (= (isDefined!13890 lt!2630969) (not (isEmpty!41281 lt!2630969)))))

(declare-fun bs!1936650 () Bool)

(assert (= bs!1936650 d!2302096))

(declare-fun m!8081132 () Bool)

(assert (=> bs!1936650 m!8081132))

(assert (=> b!7497995 d!2302096))

(declare-fun bs!1936651 () Bool)

(declare-fun d!2302098 () Bool)

(assert (= bs!1936651 (and d!2302098 b!7497995)))

(declare-fun lambda!464676 () Int)

(assert (=> bs!1936651 (= lambda!464676 lambda!464650)))

(declare-fun bs!1936652 () Bool)

(assert (= bs!1936652 (and d!2302098 b!7497978)))

(assert (=> bs!1936652 (= (= r2!5783 lt!2630958) (= lambda!464676 lambda!464648))))

(declare-fun bs!1936653 () Bool)

(assert (= bs!1936653 (and d!2302098 d!2302092)))

(assert (=> bs!1936653 (not (= lambda!464676 lambda!464673))))

(assert (=> bs!1936651 (not (= lambda!464676 lambda!464651))))

(assert (=> bs!1936652 (not (= lambda!464676 lambda!464649))))

(assert (=> bs!1936653 (= lambda!464676 lambda!464672)))

(assert (=> d!2302098 true))

(assert (=> d!2302098 true))

(assert (=> d!2302098 true))

(assert (=> d!2302098 (= (isDefined!13890 (findConcatSeparation!3323 r2!5783 rTail!78 Nil!72242 s!13591 s!13591)) (Exists!4269 lambda!464676))))

(declare-fun lt!2631039 () Unit!166135)

(declare-fun choose!57964 (Regex!19652 Regex!19652 List!72366) Unit!166135)

(assert (=> d!2302098 (= lt!2631039 (choose!57964 r2!5783 rTail!78 s!13591))))

(assert (=> d!2302098 (validRegex!10166 r2!5783)))

(assert (=> d!2302098 (= (lemmaFindConcatSeparationEquivalentToExists!3081 r2!5783 rTail!78 s!13591) lt!2631039)))

(declare-fun bs!1936654 () Bool)

(assert (= bs!1936654 d!2302098))

(assert (=> bs!1936654 m!8081024))

(declare-fun m!8081134 () Bool)

(assert (=> bs!1936654 m!8081134))

(assert (=> bs!1936654 m!8081056))

(declare-fun m!8081136 () Bool)

(assert (=> bs!1936654 m!8081136))

(declare-fun m!8081138 () Bool)

(assert (=> bs!1936654 m!8081138))

(assert (=> bs!1936654 m!8081056))

(assert (=> b!7497995 d!2302098))

(declare-fun d!2302100 () Bool)

(declare-fun e!4470546 () Bool)

(assert (=> d!2302100 e!4470546))

(declare-fun c!1384283 () Bool)

(assert (=> d!2302100 (= c!1384283 (is-EmptyExpr!19652 r2!5783))))

(declare-fun lt!2631042 () Bool)

(declare-fun e!4470548 () Bool)

(assert (=> d!2302100 (= lt!2631042 e!4470548)))

(declare-fun c!1384284 () Bool)

(declare-fun isEmpty!41282 (List!72366) Bool)

(assert (=> d!2302100 (= c!1384284 (isEmpty!41282 (_1!37672 lt!2630962)))))

(assert (=> d!2302100 (validRegex!10166 r2!5783)))

(assert (=> d!2302100 (= (matchR!9414 r2!5783 (_1!37672 lt!2630962)) lt!2631042)))

(declare-fun b!7498134 () Bool)

(declare-fun res!3007880 () Bool)

(declare-fun e!4470547 () Bool)

(assert (=> b!7498134 (=> res!3007880 e!4470547)))

(declare-fun tail!14954 (List!72366) List!72366)

(assert (=> b!7498134 (= res!3007880 (not (isEmpty!41282 (tail!14954 (_1!37672 lt!2630962)))))))

(declare-fun b!7498135 () Bool)

(declare-fun e!4470549 () Bool)

(assert (=> b!7498135 (= e!4470549 (not lt!2631042))))

(declare-fun b!7498136 () Bool)

(assert (=> b!7498136 (= e!4470546 e!4470549)))

(declare-fun c!1384285 () Bool)

(assert (=> b!7498136 (= c!1384285 (is-EmptyLang!19652 r2!5783))))

(declare-fun b!7498137 () Bool)

(declare-fun nullable!8588 (Regex!19652) Bool)

(assert (=> b!7498137 (= e!4470548 (nullable!8588 r2!5783))))

(declare-fun b!7498138 () Bool)

(declare-fun head!15385 (List!72366) C!39578)

(assert (=> b!7498138 (= e!4470547 (not (= (head!15385 (_1!37672 lt!2630962)) (c!1384275 r2!5783))))))

(declare-fun b!7498139 () Bool)

(declare-fun res!3007878 () Bool)

(declare-fun e!4470550 () Bool)

(assert (=> b!7498139 (=> (not res!3007878) (not e!4470550))))

(assert (=> b!7498139 (= res!3007878 (isEmpty!41282 (tail!14954 (_1!37672 lt!2630962))))))

(declare-fun b!7498140 () Bool)

(declare-fun res!3007877 () Bool)

(assert (=> b!7498140 (=> (not res!3007877) (not e!4470550))))

(declare-fun call!688295 () Bool)

(assert (=> b!7498140 (= res!3007877 (not call!688295))))

(declare-fun b!7498141 () Bool)

(declare-fun e!4470551 () Bool)

(declare-fun e!4470545 () Bool)

(assert (=> b!7498141 (= e!4470551 e!4470545)))

(declare-fun res!3007875 () Bool)

(assert (=> b!7498141 (=> (not res!3007875) (not e!4470545))))

(assert (=> b!7498141 (= res!3007875 (not lt!2631042))))

(declare-fun b!7498142 () Bool)

(declare-fun res!3007873 () Bool)

(assert (=> b!7498142 (=> res!3007873 e!4470551)))

(assert (=> b!7498142 (= res!3007873 e!4470550)))

(declare-fun res!3007874 () Bool)

(assert (=> b!7498142 (=> (not res!3007874) (not e!4470550))))

(assert (=> b!7498142 (= res!3007874 lt!2631042)))

(declare-fun b!7498143 () Bool)

(assert (=> b!7498143 (= e!4470546 (= lt!2631042 call!688295))))

(declare-fun b!7498144 () Bool)

(assert (=> b!7498144 (= e!4470545 e!4470547)))

(declare-fun res!3007876 () Bool)

(assert (=> b!7498144 (=> res!3007876 e!4470547)))

(assert (=> b!7498144 (= res!3007876 call!688295)))

(declare-fun b!7498145 () Bool)

(assert (=> b!7498145 (= e!4470550 (= (head!15385 (_1!37672 lt!2630962)) (c!1384275 r2!5783)))))

(declare-fun bm!688290 () Bool)

(assert (=> bm!688290 (= call!688295 (isEmpty!41282 (_1!37672 lt!2630962)))))

(declare-fun b!7498146 () Bool)

(declare-fun derivativeStep!5645 (Regex!19652 C!39578) Regex!19652)

(assert (=> b!7498146 (= e!4470548 (matchR!9414 (derivativeStep!5645 r2!5783 (head!15385 (_1!37672 lt!2630962))) (tail!14954 (_1!37672 lt!2630962))))))

(declare-fun b!7498147 () Bool)

(declare-fun res!3007879 () Bool)

(assert (=> b!7498147 (=> res!3007879 e!4470551)))

(assert (=> b!7498147 (= res!3007879 (not (is-ElementMatch!19652 r2!5783)))))

(assert (=> b!7498147 (= e!4470549 e!4470551)))

(assert (= (and d!2302100 c!1384284) b!7498137))

(assert (= (and d!2302100 (not c!1384284)) b!7498146))

(assert (= (and d!2302100 c!1384283) b!7498143))

(assert (= (and d!2302100 (not c!1384283)) b!7498136))

(assert (= (and b!7498136 c!1384285) b!7498135))

(assert (= (and b!7498136 (not c!1384285)) b!7498147))

(assert (= (and b!7498147 (not res!3007879)) b!7498142))

(assert (= (and b!7498142 res!3007874) b!7498140))

(assert (= (and b!7498140 res!3007877) b!7498139))

(assert (= (and b!7498139 res!3007878) b!7498145))

(assert (= (and b!7498142 (not res!3007873)) b!7498141))

(assert (= (and b!7498141 res!3007875) b!7498144))

(assert (= (and b!7498144 (not res!3007876)) b!7498134))

(assert (= (and b!7498134 (not res!3007880)) b!7498138))

(assert (= (or b!7498143 b!7498140 b!7498144) bm!688290))

(declare-fun m!8081140 () Bool)

(assert (=> b!7498137 m!8081140))

(declare-fun m!8081142 () Bool)

(assert (=> d!2302100 m!8081142))

(assert (=> d!2302100 m!8081024))

(declare-fun m!8081144 () Bool)

(assert (=> b!7498139 m!8081144))

(assert (=> b!7498139 m!8081144))

(declare-fun m!8081146 () Bool)

(assert (=> b!7498139 m!8081146))

(assert (=> bm!688290 m!8081142))

(declare-fun m!8081148 () Bool)

(assert (=> b!7498146 m!8081148))

(assert (=> b!7498146 m!8081148))

(declare-fun m!8081150 () Bool)

(assert (=> b!7498146 m!8081150))

(assert (=> b!7498146 m!8081144))

(assert (=> b!7498146 m!8081150))

(assert (=> b!7498146 m!8081144))

(declare-fun m!8081152 () Bool)

(assert (=> b!7498146 m!8081152))

(assert (=> b!7498138 m!8081148))

(assert (=> b!7498145 m!8081148))

(assert (=> b!7498134 m!8081144))

(assert (=> b!7498134 m!8081144))

(assert (=> b!7498134 m!8081146))

(assert (=> b!7497995 d!2302100))

(declare-fun b!7498194 () Bool)

(declare-fun e!4470577 () Option!17201)

(declare-fun e!4470579 () Option!17201)

(assert (=> b!7498194 (= e!4470577 e!4470579)))

(declare-fun c!1384296 () Bool)

(assert (=> b!7498194 (= c!1384296 (is-Nil!72242 s!13591))))

(declare-fun d!2302104 () Bool)

(declare-fun e!4470576 () Bool)

(assert (=> d!2302104 e!4470576))

(declare-fun res!3007910 () Bool)

(assert (=> d!2302104 (=> res!3007910 e!4470576)))

(declare-fun e!4470578 () Bool)

(assert (=> d!2302104 (= res!3007910 e!4470578)))

(declare-fun res!3007909 () Bool)

(assert (=> d!2302104 (=> (not res!3007909) (not e!4470578))))

(declare-fun lt!2631052 () Option!17201)

(assert (=> d!2302104 (= res!3007909 (isDefined!13890 lt!2631052))))

(assert (=> d!2302104 (= lt!2631052 e!4470577)))

(declare-fun c!1384297 () Bool)

(declare-fun e!4470580 () Bool)

(assert (=> d!2302104 (= c!1384297 e!4470580)))

(declare-fun res!3007911 () Bool)

(assert (=> d!2302104 (=> (not res!3007911) (not e!4470580))))

(assert (=> d!2302104 (= res!3007911 (matchR!9414 r2!5783 Nil!72242))))

(assert (=> d!2302104 (validRegex!10166 r2!5783)))

(assert (=> d!2302104 (= (findConcatSeparation!3323 r2!5783 rTail!78 Nil!72242 s!13591 s!13591) lt!2631052)))

(declare-fun b!7498195 () Bool)

(assert (=> b!7498195 (= e!4470579 None!17200)))

(declare-fun b!7498196 () Bool)

(declare-fun res!3007907 () Bool)

(assert (=> b!7498196 (=> (not res!3007907) (not e!4470578))))

(assert (=> b!7498196 (= res!3007907 (matchR!9414 r2!5783 (_1!37672 (get!25334 lt!2631052))))))

(declare-fun b!7498197 () Bool)

(assert (=> b!7498197 (= e!4470577 (Some!17200 (tuple2!68739 Nil!72242 s!13591)))))

(declare-fun b!7498198 () Bool)

(declare-fun lt!2631053 () Unit!166135)

(declare-fun lt!2631051 () Unit!166135)

(assert (=> b!7498198 (= lt!2631053 lt!2631051)))

(declare-fun ++!17258 (List!72366 List!72366) List!72366)

(assert (=> b!7498198 (= (++!17258 (++!17258 Nil!72242 (Cons!72242 (h!78690 s!13591) Nil!72242)) (t!386935 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3132 (List!72366 C!39578 List!72366 List!72366) Unit!166135)

(assert (=> b!7498198 (= lt!2631051 (lemmaMoveElementToOtherListKeepsConcatEq!3132 Nil!72242 (h!78690 s!13591) (t!386935 s!13591) s!13591))))

(assert (=> b!7498198 (= e!4470579 (findConcatSeparation!3323 r2!5783 rTail!78 (++!17258 Nil!72242 (Cons!72242 (h!78690 s!13591) Nil!72242)) (t!386935 s!13591) s!13591))))

(declare-fun b!7498199 () Bool)

(assert (=> b!7498199 (= e!4470578 (= (++!17258 (_1!37672 (get!25334 lt!2631052)) (_2!37672 (get!25334 lt!2631052))) s!13591))))

(declare-fun b!7498200 () Bool)

(declare-fun res!3007908 () Bool)

(assert (=> b!7498200 (=> (not res!3007908) (not e!4470578))))

(assert (=> b!7498200 (= res!3007908 (matchR!9414 rTail!78 (_2!37672 (get!25334 lt!2631052))))))

(declare-fun b!7498201 () Bool)

(assert (=> b!7498201 (= e!4470576 (not (isDefined!13890 lt!2631052)))))

(declare-fun b!7498202 () Bool)

(assert (=> b!7498202 (= e!4470580 (matchR!9414 rTail!78 s!13591))))

(assert (= (and d!2302104 res!3007911) b!7498202))

(assert (= (and d!2302104 c!1384297) b!7498197))

(assert (= (and d!2302104 (not c!1384297)) b!7498194))

(assert (= (and b!7498194 c!1384296) b!7498195))

(assert (= (and b!7498194 (not c!1384296)) b!7498198))

(assert (= (and d!2302104 res!3007909) b!7498196))

(assert (= (and b!7498196 res!3007907) b!7498200))

(assert (= (and b!7498200 res!3007908) b!7498199))

(assert (= (and d!2302104 (not res!3007910)) b!7498201))

(declare-fun m!8081154 () Bool)

(assert (=> b!7498199 m!8081154))

(declare-fun m!8081156 () Bool)

(assert (=> b!7498199 m!8081156))

(declare-fun m!8081158 () Bool)

(assert (=> b!7498201 m!8081158))

(declare-fun m!8081160 () Bool)

(assert (=> b!7498202 m!8081160))

(assert (=> d!2302104 m!8081158))

(declare-fun m!8081162 () Bool)

(assert (=> d!2302104 m!8081162))

(assert (=> d!2302104 m!8081024))

(assert (=> b!7498196 m!8081154))

(declare-fun m!8081164 () Bool)

(assert (=> b!7498196 m!8081164))

(declare-fun m!8081166 () Bool)

(assert (=> b!7498198 m!8081166))

(assert (=> b!7498198 m!8081166))

(declare-fun m!8081168 () Bool)

(assert (=> b!7498198 m!8081168))

(declare-fun m!8081170 () Bool)

(assert (=> b!7498198 m!8081170))

(assert (=> b!7498198 m!8081166))

(declare-fun m!8081172 () Bool)

(assert (=> b!7498198 m!8081172))

(assert (=> b!7498200 m!8081154))

(declare-fun m!8081174 () Bool)

(assert (=> b!7498200 m!8081174))

(assert (=> b!7497995 d!2302104))

(declare-fun d!2302106 () Bool)

(assert (=> d!2302106 (= (Exists!4269 lambda!464651) (choose!57963 lambda!464651))))

(declare-fun bs!1936655 () Bool)

(assert (= bs!1936655 d!2302106))

(declare-fun m!8081176 () Bool)

(assert (=> bs!1936655 m!8081176))

(assert (=> b!7497995 d!2302106))

(declare-fun d!2302108 () Bool)

(assert (=> d!2302108 (= (get!25334 lt!2630969) (v!54329 lt!2630969))))

(assert (=> b!7497995 d!2302108))

(declare-fun d!2302110 () Bool)

(declare-fun e!4470582 () Bool)

(assert (=> d!2302110 e!4470582))

(declare-fun c!1384298 () Bool)

(assert (=> d!2302110 (= c!1384298 (is-EmptyExpr!19652 rTail!78))))

(declare-fun lt!2631054 () Bool)

(declare-fun e!4470584 () Bool)

(assert (=> d!2302110 (= lt!2631054 e!4470584)))

(declare-fun c!1384299 () Bool)

(assert (=> d!2302110 (= c!1384299 (isEmpty!41282 (_2!37672 lt!2630962)))))

(assert (=> d!2302110 (validRegex!10166 rTail!78)))

(assert (=> d!2302110 (= (matchR!9414 rTail!78 (_2!37672 lt!2630962)) lt!2631054)))

(declare-fun b!7498203 () Bool)

(declare-fun res!3007919 () Bool)

(declare-fun e!4470583 () Bool)

(assert (=> b!7498203 (=> res!3007919 e!4470583)))

(assert (=> b!7498203 (= res!3007919 (not (isEmpty!41282 (tail!14954 (_2!37672 lt!2630962)))))))

(declare-fun b!7498204 () Bool)

(declare-fun e!4470585 () Bool)

(assert (=> b!7498204 (= e!4470585 (not lt!2631054))))

(declare-fun b!7498205 () Bool)

(assert (=> b!7498205 (= e!4470582 e!4470585)))

(declare-fun c!1384300 () Bool)

(assert (=> b!7498205 (= c!1384300 (is-EmptyLang!19652 rTail!78))))

(declare-fun b!7498206 () Bool)

(assert (=> b!7498206 (= e!4470584 (nullable!8588 rTail!78))))

(declare-fun b!7498207 () Bool)

(assert (=> b!7498207 (= e!4470583 (not (= (head!15385 (_2!37672 lt!2630962)) (c!1384275 rTail!78))))))

(declare-fun b!7498208 () Bool)

(declare-fun res!3007917 () Bool)

(declare-fun e!4470586 () Bool)

(assert (=> b!7498208 (=> (not res!3007917) (not e!4470586))))

(assert (=> b!7498208 (= res!3007917 (isEmpty!41282 (tail!14954 (_2!37672 lt!2630962))))))

(declare-fun b!7498209 () Bool)

(declare-fun res!3007916 () Bool)

(assert (=> b!7498209 (=> (not res!3007916) (not e!4470586))))

(declare-fun call!688298 () Bool)

(assert (=> b!7498209 (= res!3007916 (not call!688298))))

(declare-fun b!7498210 () Bool)

(declare-fun e!4470587 () Bool)

(declare-fun e!4470581 () Bool)

(assert (=> b!7498210 (= e!4470587 e!4470581)))

(declare-fun res!3007914 () Bool)

(assert (=> b!7498210 (=> (not res!3007914) (not e!4470581))))

(assert (=> b!7498210 (= res!3007914 (not lt!2631054))))

(declare-fun b!7498211 () Bool)

(declare-fun res!3007912 () Bool)

(assert (=> b!7498211 (=> res!3007912 e!4470587)))

(assert (=> b!7498211 (= res!3007912 e!4470586)))

(declare-fun res!3007913 () Bool)

(assert (=> b!7498211 (=> (not res!3007913) (not e!4470586))))

(assert (=> b!7498211 (= res!3007913 lt!2631054)))

(declare-fun b!7498212 () Bool)

(assert (=> b!7498212 (= e!4470582 (= lt!2631054 call!688298))))

(declare-fun b!7498213 () Bool)

(assert (=> b!7498213 (= e!4470581 e!4470583)))

(declare-fun res!3007915 () Bool)

(assert (=> b!7498213 (=> res!3007915 e!4470583)))

(assert (=> b!7498213 (= res!3007915 call!688298)))

(declare-fun b!7498214 () Bool)

(assert (=> b!7498214 (= e!4470586 (= (head!15385 (_2!37672 lt!2630962)) (c!1384275 rTail!78)))))

(declare-fun bm!688293 () Bool)

(assert (=> bm!688293 (= call!688298 (isEmpty!41282 (_2!37672 lt!2630962)))))

(declare-fun b!7498215 () Bool)

(assert (=> b!7498215 (= e!4470584 (matchR!9414 (derivativeStep!5645 rTail!78 (head!15385 (_2!37672 lt!2630962))) (tail!14954 (_2!37672 lt!2630962))))))

(declare-fun b!7498216 () Bool)

(declare-fun res!3007918 () Bool)

(assert (=> b!7498216 (=> res!3007918 e!4470587)))

(assert (=> b!7498216 (= res!3007918 (not (is-ElementMatch!19652 rTail!78)))))

(assert (=> b!7498216 (= e!4470585 e!4470587)))

(assert (= (and d!2302110 c!1384299) b!7498206))

(assert (= (and d!2302110 (not c!1384299)) b!7498215))

(assert (= (and d!2302110 c!1384298) b!7498212))

(assert (= (and d!2302110 (not c!1384298)) b!7498205))

(assert (= (and b!7498205 c!1384300) b!7498204))

(assert (= (and b!7498205 (not c!1384300)) b!7498216))

(assert (= (and b!7498216 (not res!3007918)) b!7498211))

(assert (= (and b!7498211 res!3007913) b!7498209))

(assert (= (and b!7498209 res!3007916) b!7498208))

(assert (= (and b!7498208 res!3007917) b!7498214))

(assert (= (and b!7498211 (not res!3007912)) b!7498210))

(assert (= (and b!7498210 res!3007914) b!7498213))

(assert (= (and b!7498213 (not res!3007915)) b!7498203))

(assert (= (and b!7498203 (not res!3007919)) b!7498207))

(assert (= (or b!7498212 b!7498209 b!7498213) bm!688293))

(declare-fun m!8081178 () Bool)

(assert (=> b!7498206 m!8081178))

(declare-fun m!8081180 () Bool)

(assert (=> d!2302110 m!8081180))

(assert (=> d!2302110 m!8081042))

(declare-fun m!8081182 () Bool)

(assert (=> b!7498208 m!8081182))

(assert (=> b!7498208 m!8081182))

(declare-fun m!8081184 () Bool)

(assert (=> b!7498208 m!8081184))

(assert (=> bm!688293 m!8081180))

(declare-fun m!8081186 () Bool)

(assert (=> b!7498215 m!8081186))

(assert (=> b!7498215 m!8081186))

(declare-fun m!8081188 () Bool)

(assert (=> b!7498215 m!8081188))

(assert (=> b!7498215 m!8081182))

(assert (=> b!7498215 m!8081188))

(assert (=> b!7498215 m!8081182))

(declare-fun m!8081190 () Bool)

(assert (=> b!7498215 m!8081190))

(assert (=> b!7498207 m!8081186))

(assert (=> b!7498214 m!8081186))

(assert (=> b!7498203 m!8081182))

(assert (=> b!7498203 m!8081182))

(assert (=> b!7498203 m!8081184))

(assert (=> b!7497979 d!2302110))

(declare-fun bs!1936656 () Bool)

(declare-fun d!2302112 () Bool)

(assert (= bs!1936656 (and d!2302112 b!7497995)))

(declare-fun lambda!464677 () Int)

(assert (=> bs!1936656 (= (= lt!2630958 r2!5783) (= lambda!464677 lambda!464650))))

(declare-fun bs!1936657 () Bool)

(assert (= bs!1936657 (and d!2302112 b!7497978)))

(assert (=> bs!1936657 (= lambda!464677 lambda!464648)))

(declare-fun bs!1936658 () Bool)

(assert (= bs!1936658 (and d!2302112 d!2302092)))

(assert (=> bs!1936658 (not (= lambda!464677 lambda!464673))))

(assert (=> bs!1936657 (not (= lambda!464677 lambda!464649))))

(assert (=> bs!1936658 (= (= lt!2630958 r2!5783) (= lambda!464677 lambda!464672))))

(assert (=> bs!1936656 (not (= lambda!464677 lambda!464651))))

(declare-fun bs!1936659 () Bool)

(assert (= bs!1936659 (and d!2302112 d!2302098)))

(assert (=> bs!1936659 (= (= lt!2630958 r2!5783) (= lambda!464677 lambda!464676))))

(assert (=> d!2302112 true))

(assert (=> d!2302112 true))

(assert (=> d!2302112 true))

(assert (=> d!2302112 (= (isDefined!13890 (findConcatSeparation!3323 lt!2630958 rTail!78 Nil!72242 s!13591 s!13591)) (Exists!4269 lambda!464677))))

(declare-fun lt!2631055 () Unit!166135)

(assert (=> d!2302112 (= lt!2631055 (choose!57964 lt!2630958 rTail!78 s!13591))))

(assert (=> d!2302112 (validRegex!10166 lt!2630958)))

(assert (=> d!2302112 (= (lemmaFindConcatSeparationEquivalentToExists!3081 lt!2630958 rTail!78 s!13591) lt!2631055)))

(declare-fun bs!1936660 () Bool)

(assert (= bs!1936660 d!2302112))

(assert (=> bs!1936660 m!8081040))

(declare-fun m!8081192 () Bool)

(assert (=> bs!1936660 m!8081192))

(assert (=> bs!1936660 m!8081014))

(assert (=> bs!1936660 m!8081016))

(declare-fun m!8081194 () Bool)

(assert (=> bs!1936660 m!8081194))

(assert (=> bs!1936660 m!8081014))

(assert (=> b!7497978 d!2302112))

(declare-fun d!2302114 () Bool)

(assert (=> d!2302114 (= (Exists!4269 lambda!464648) (choose!57963 lambda!464648))))

(declare-fun bs!1936661 () Bool)

(assert (= bs!1936661 d!2302114))

(declare-fun m!8081196 () Bool)

(assert (=> bs!1936661 m!8081196))

(assert (=> b!7497978 d!2302114))

(declare-fun d!2302116 () Bool)

(assert (=> d!2302116 (= (isDefined!13890 (findConcatSeparation!3323 lt!2630958 rTail!78 Nil!72242 s!13591 s!13591)) (not (isEmpty!41281 (findConcatSeparation!3323 lt!2630958 rTail!78 Nil!72242 s!13591 s!13591))))))

(declare-fun bs!1936662 () Bool)

(assert (= bs!1936662 d!2302116))

(assert (=> bs!1936662 m!8081014))

(declare-fun m!8081198 () Bool)

(assert (=> bs!1936662 m!8081198))

(assert (=> b!7497978 d!2302116))

(declare-fun d!2302118 () Bool)

(assert (=> d!2302118 (= (Exists!4269 lambda!464649) (choose!57963 lambda!464649))))

(declare-fun bs!1936663 () Bool)

(assert (= bs!1936663 d!2302118))

(declare-fun m!8081200 () Bool)

(assert (=> bs!1936663 m!8081200))

(assert (=> b!7497978 d!2302118))

(declare-fun b!7498231 () Bool)

(declare-fun e!4470596 () Option!17201)

(declare-fun e!4470598 () Option!17201)

(assert (=> b!7498231 (= e!4470596 e!4470598)))

(declare-fun c!1384304 () Bool)

(assert (=> b!7498231 (= c!1384304 (is-Nil!72242 s!13591))))

(declare-fun d!2302120 () Bool)

(declare-fun e!4470595 () Bool)

(assert (=> d!2302120 e!4470595))

(declare-fun res!3007931 () Bool)

(assert (=> d!2302120 (=> res!3007931 e!4470595)))

(declare-fun e!4470597 () Bool)

(assert (=> d!2302120 (= res!3007931 e!4470597)))

(declare-fun res!3007930 () Bool)

(assert (=> d!2302120 (=> (not res!3007930) (not e!4470597))))

(declare-fun lt!2631058 () Option!17201)

(assert (=> d!2302120 (= res!3007930 (isDefined!13890 lt!2631058))))

(assert (=> d!2302120 (= lt!2631058 e!4470596)))

(declare-fun c!1384305 () Bool)

(declare-fun e!4470599 () Bool)

(assert (=> d!2302120 (= c!1384305 e!4470599)))

(declare-fun res!3007932 () Bool)

(assert (=> d!2302120 (=> (not res!3007932) (not e!4470599))))

(assert (=> d!2302120 (= res!3007932 (matchR!9414 lt!2630958 Nil!72242))))

(assert (=> d!2302120 (validRegex!10166 lt!2630958)))

(assert (=> d!2302120 (= (findConcatSeparation!3323 lt!2630958 rTail!78 Nil!72242 s!13591 s!13591) lt!2631058)))

(declare-fun b!7498232 () Bool)

(assert (=> b!7498232 (= e!4470598 None!17200)))

(declare-fun b!7498233 () Bool)

(declare-fun res!3007928 () Bool)

(assert (=> b!7498233 (=> (not res!3007928) (not e!4470597))))

(assert (=> b!7498233 (= res!3007928 (matchR!9414 lt!2630958 (_1!37672 (get!25334 lt!2631058))))))

(declare-fun b!7498234 () Bool)

(assert (=> b!7498234 (= e!4470596 (Some!17200 (tuple2!68739 Nil!72242 s!13591)))))

(declare-fun b!7498235 () Bool)

(declare-fun lt!2631059 () Unit!166135)

(declare-fun lt!2631057 () Unit!166135)

(assert (=> b!7498235 (= lt!2631059 lt!2631057)))

(assert (=> b!7498235 (= (++!17258 (++!17258 Nil!72242 (Cons!72242 (h!78690 s!13591) Nil!72242)) (t!386935 s!13591)) s!13591)))

(assert (=> b!7498235 (= lt!2631057 (lemmaMoveElementToOtherListKeepsConcatEq!3132 Nil!72242 (h!78690 s!13591) (t!386935 s!13591) s!13591))))

(assert (=> b!7498235 (= e!4470598 (findConcatSeparation!3323 lt!2630958 rTail!78 (++!17258 Nil!72242 (Cons!72242 (h!78690 s!13591) Nil!72242)) (t!386935 s!13591) s!13591))))

(declare-fun b!7498236 () Bool)

(assert (=> b!7498236 (= e!4470597 (= (++!17258 (_1!37672 (get!25334 lt!2631058)) (_2!37672 (get!25334 lt!2631058))) s!13591))))

(declare-fun b!7498237 () Bool)

(declare-fun res!3007929 () Bool)

(assert (=> b!7498237 (=> (not res!3007929) (not e!4470597))))

(assert (=> b!7498237 (= res!3007929 (matchR!9414 rTail!78 (_2!37672 (get!25334 lt!2631058))))))

(declare-fun b!7498238 () Bool)

(assert (=> b!7498238 (= e!4470595 (not (isDefined!13890 lt!2631058)))))

(declare-fun b!7498239 () Bool)

(assert (=> b!7498239 (= e!4470599 (matchR!9414 rTail!78 s!13591))))

(assert (= (and d!2302120 res!3007932) b!7498239))

(assert (= (and d!2302120 c!1384305) b!7498234))

(assert (= (and d!2302120 (not c!1384305)) b!7498231))

(assert (= (and b!7498231 c!1384304) b!7498232))

(assert (= (and b!7498231 (not c!1384304)) b!7498235))

(assert (= (and d!2302120 res!3007930) b!7498233))

(assert (= (and b!7498233 res!3007928) b!7498237))

(assert (= (and b!7498237 res!3007929) b!7498236))

(assert (= (and d!2302120 (not res!3007931)) b!7498238))

(declare-fun m!8081202 () Bool)

(assert (=> b!7498236 m!8081202))

(declare-fun m!8081204 () Bool)

(assert (=> b!7498236 m!8081204))

(declare-fun m!8081206 () Bool)

(assert (=> b!7498238 m!8081206))

(assert (=> b!7498239 m!8081160))

(assert (=> d!2302120 m!8081206))

(declare-fun m!8081208 () Bool)

(assert (=> d!2302120 m!8081208))

(assert (=> d!2302120 m!8081040))

(assert (=> b!7498233 m!8081202))

(declare-fun m!8081210 () Bool)

(assert (=> b!7498233 m!8081210))

(assert (=> b!7498235 m!8081166))

(assert (=> b!7498235 m!8081166))

(assert (=> b!7498235 m!8081168))

(assert (=> b!7498235 m!8081170))

(assert (=> b!7498235 m!8081166))

(declare-fun m!8081212 () Bool)

(assert (=> b!7498235 m!8081212))

(assert (=> b!7498237 m!8081202))

(declare-fun m!8081216 () Bool)

(assert (=> b!7498237 m!8081216))

(assert (=> b!7497978 d!2302120))

(declare-fun bs!1936664 () Bool)

(declare-fun d!2302122 () Bool)

(assert (= bs!1936664 (and d!2302122 d!2302112)))

(declare-fun lambda!464678 () Int)

(assert (=> bs!1936664 (= lambda!464678 lambda!464677)))

(declare-fun bs!1936665 () Bool)

(assert (= bs!1936665 (and d!2302122 b!7497995)))

(assert (=> bs!1936665 (= (= lt!2630958 r2!5783) (= lambda!464678 lambda!464650))))

(declare-fun bs!1936666 () Bool)

(assert (= bs!1936666 (and d!2302122 b!7497978)))

(assert (=> bs!1936666 (= lambda!464678 lambda!464648)))

(declare-fun bs!1936667 () Bool)

(assert (= bs!1936667 (and d!2302122 d!2302092)))

(assert (=> bs!1936667 (not (= lambda!464678 lambda!464673))))

(assert (=> bs!1936666 (not (= lambda!464678 lambda!464649))))

(assert (=> bs!1936667 (= (= lt!2630958 r2!5783) (= lambda!464678 lambda!464672))))

(assert (=> bs!1936665 (not (= lambda!464678 lambda!464651))))

(declare-fun bs!1936668 () Bool)

(assert (= bs!1936668 (and d!2302122 d!2302098)))

(assert (=> bs!1936668 (= (= lt!2630958 r2!5783) (= lambda!464678 lambda!464676))))

(assert (=> d!2302122 true))

(assert (=> d!2302122 true))

(assert (=> d!2302122 true))

(declare-fun lambda!464679 () Int)

(assert (=> bs!1936664 (not (= lambda!464679 lambda!464677))))

(assert (=> bs!1936665 (not (= lambda!464679 lambda!464650))))

(assert (=> bs!1936667 (= (= lt!2630958 r2!5783) (= lambda!464679 lambda!464673))))

(assert (=> bs!1936666 (= lambda!464679 lambda!464649)))

(assert (=> bs!1936667 (not (= lambda!464679 lambda!464672))))

(declare-fun bs!1936669 () Bool)

(assert (= bs!1936669 d!2302122))

(assert (=> bs!1936669 (not (= lambda!464679 lambda!464678))))

(assert (=> bs!1936666 (not (= lambda!464679 lambda!464648))))

(assert (=> bs!1936665 (= (= lt!2630958 r2!5783) (= lambda!464679 lambda!464651))))

(assert (=> bs!1936668 (not (= lambda!464679 lambda!464676))))

(assert (=> d!2302122 true))

(assert (=> d!2302122 true))

(assert (=> d!2302122 true))

(assert (=> d!2302122 (= (Exists!4269 lambda!464678) (Exists!4269 lambda!464679))))

(declare-fun lt!2631060 () Unit!166135)

(assert (=> d!2302122 (= lt!2631060 (choose!57962 lt!2630958 rTail!78 s!13591))))

(assert (=> d!2302122 (validRegex!10166 lt!2630958)))

(assert (=> d!2302122 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2593 lt!2630958 rTail!78 s!13591) lt!2631060)))

(declare-fun m!8081232 () Bool)

(assert (=> bs!1936669 m!8081232))

(declare-fun m!8081234 () Bool)

(assert (=> bs!1936669 m!8081234))

(declare-fun m!8081236 () Bool)

(assert (=> bs!1936669 m!8081236))

(assert (=> bs!1936669 m!8081040))

(assert (=> b!7497978 d!2302122))

(declare-fun bm!688301 () Bool)

(declare-fun call!688307 () Bool)

(declare-fun c!1384310 () Bool)

(assert (=> bm!688301 (= call!688307 (validRegex!10166 (ite c!1384310 (regTwo!39817 r2!5783) (regTwo!39816 r2!5783))))))

(declare-fun b!7498258 () Bool)

(declare-fun e!4470616 () Bool)

(declare-fun e!4470618 () Bool)

(assert (=> b!7498258 (= e!4470616 e!4470618)))

(assert (=> b!7498258 (= c!1384310 (is-Union!19652 r2!5783))))

(declare-fun b!7498259 () Bool)

(declare-fun e!4470615 () Bool)

(declare-fun e!4470620 () Bool)

(assert (=> b!7498259 (= e!4470615 e!4470620)))

(declare-fun res!3007945 () Bool)

(assert (=> b!7498259 (=> (not res!3007945) (not e!4470620))))

(declare-fun call!688306 () Bool)

(assert (=> b!7498259 (= res!3007945 call!688306)))

(declare-fun b!7498260 () Bool)

(declare-fun e!4470614 () Bool)

(assert (=> b!7498260 (= e!4470616 e!4470614)))

(declare-fun res!3007943 () Bool)

(assert (=> b!7498260 (= res!3007943 (not (nullable!8588 (reg!19981 r2!5783))))))

(assert (=> b!7498260 (=> (not res!3007943) (not e!4470614))))

(declare-fun call!688308 () Bool)

(declare-fun c!1384311 () Bool)

(declare-fun bm!688302 () Bool)

(assert (=> bm!688302 (= call!688308 (validRegex!10166 (ite c!1384311 (reg!19981 r2!5783) (ite c!1384310 (regOne!39817 r2!5783) (regOne!39816 r2!5783)))))))

(declare-fun b!7498261 () Bool)

(assert (=> b!7498261 (= e!4470620 call!688307)))

(declare-fun b!7498262 () Bool)

(declare-fun res!3007944 () Bool)

(declare-fun e!4470617 () Bool)

(assert (=> b!7498262 (=> (not res!3007944) (not e!4470617))))

(assert (=> b!7498262 (= res!3007944 call!688306)))

(assert (=> b!7498262 (= e!4470618 e!4470617)))

(declare-fun b!7498263 () Bool)

(assert (=> b!7498263 (= e!4470614 call!688308)))

(declare-fun b!7498264 () Bool)

(declare-fun e!4470619 () Bool)

(assert (=> b!7498264 (= e!4470619 e!4470616)))

(assert (=> b!7498264 (= c!1384311 (is-Star!19652 r2!5783))))

(declare-fun bm!688303 () Bool)

(assert (=> bm!688303 (= call!688306 call!688308)))

(declare-fun d!2302126 () Bool)

(declare-fun res!3007946 () Bool)

(assert (=> d!2302126 (=> res!3007946 e!4470619)))

(assert (=> d!2302126 (= res!3007946 (is-ElementMatch!19652 r2!5783))))

(assert (=> d!2302126 (= (validRegex!10166 r2!5783) e!4470619)))

(declare-fun b!7498265 () Bool)

(assert (=> b!7498265 (= e!4470617 call!688307)))

(declare-fun b!7498266 () Bool)

(declare-fun res!3007947 () Bool)

(assert (=> b!7498266 (=> res!3007947 e!4470615)))

(assert (=> b!7498266 (= res!3007947 (not (is-Concat!28497 r2!5783)))))

(assert (=> b!7498266 (= e!4470618 e!4470615)))

(assert (= (and d!2302126 (not res!3007946)) b!7498264))

(assert (= (and b!7498264 c!1384311) b!7498260))

(assert (= (and b!7498264 (not c!1384311)) b!7498258))

(assert (= (and b!7498260 res!3007943) b!7498263))

(assert (= (and b!7498258 c!1384310) b!7498262))

(assert (= (and b!7498258 (not c!1384310)) b!7498266))

(assert (= (and b!7498262 res!3007944) b!7498265))

(assert (= (and b!7498266 (not res!3007947)) b!7498259))

(assert (= (and b!7498259 res!3007945) b!7498261))

(assert (= (or b!7498265 b!7498261) bm!688301))

(assert (= (or b!7498262 b!7498259) bm!688303))

(assert (= (or b!7498263 bm!688303) bm!688302))

(declare-fun m!8081242 () Bool)

(assert (=> bm!688301 m!8081242))

(declare-fun m!8081244 () Bool)

(assert (=> b!7498260 m!8081244))

(declare-fun m!8081246 () Bool)

(assert (=> bm!688302 m!8081246))

(assert (=> b!7497989 d!2302126))

(declare-fun bm!688304 () Bool)

(declare-fun call!688310 () Bool)

(declare-fun c!1384312 () Bool)

(assert (=> bm!688304 (= call!688310 (validRegex!10166 (ite c!1384312 (regTwo!39817 r1!5845) (regTwo!39816 r1!5845))))))

(declare-fun b!7498267 () Bool)

(declare-fun e!4470623 () Bool)

(declare-fun e!4470625 () Bool)

(assert (=> b!7498267 (= e!4470623 e!4470625)))

(assert (=> b!7498267 (= c!1384312 (is-Union!19652 r1!5845))))

(declare-fun b!7498268 () Bool)

(declare-fun e!4470622 () Bool)

(declare-fun e!4470627 () Bool)

(assert (=> b!7498268 (= e!4470622 e!4470627)))

(declare-fun res!3007950 () Bool)

(assert (=> b!7498268 (=> (not res!3007950) (not e!4470627))))

(declare-fun call!688309 () Bool)

(assert (=> b!7498268 (= res!3007950 call!688309)))

(declare-fun b!7498269 () Bool)

(declare-fun e!4470621 () Bool)

(assert (=> b!7498269 (= e!4470623 e!4470621)))

(declare-fun res!3007948 () Bool)

(assert (=> b!7498269 (= res!3007948 (not (nullable!8588 (reg!19981 r1!5845))))))

(assert (=> b!7498269 (=> (not res!3007948) (not e!4470621))))

(declare-fun call!688311 () Bool)

(declare-fun c!1384313 () Bool)

(declare-fun bm!688305 () Bool)

(assert (=> bm!688305 (= call!688311 (validRegex!10166 (ite c!1384313 (reg!19981 r1!5845) (ite c!1384312 (regOne!39817 r1!5845) (regOne!39816 r1!5845)))))))

(declare-fun b!7498270 () Bool)

(assert (=> b!7498270 (= e!4470627 call!688310)))

(declare-fun b!7498271 () Bool)

(declare-fun res!3007949 () Bool)

(declare-fun e!4470624 () Bool)

(assert (=> b!7498271 (=> (not res!3007949) (not e!4470624))))

(assert (=> b!7498271 (= res!3007949 call!688309)))

(assert (=> b!7498271 (= e!4470625 e!4470624)))

(declare-fun b!7498272 () Bool)

(assert (=> b!7498272 (= e!4470621 call!688311)))

(declare-fun b!7498273 () Bool)

(declare-fun e!4470626 () Bool)

(assert (=> b!7498273 (= e!4470626 e!4470623)))

(assert (=> b!7498273 (= c!1384313 (is-Star!19652 r1!5845))))

(declare-fun bm!688306 () Bool)

(assert (=> bm!688306 (= call!688309 call!688311)))

(declare-fun d!2302130 () Bool)

(declare-fun res!3007951 () Bool)

(assert (=> d!2302130 (=> res!3007951 e!4470626)))

(assert (=> d!2302130 (= res!3007951 (is-ElementMatch!19652 r1!5845))))

(assert (=> d!2302130 (= (validRegex!10166 r1!5845) e!4470626)))

(declare-fun b!7498274 () Bool)

(assert (=> b!7498274 (= e!4470624 call!688310)))

(declare-fun b!7498275 () Bool)

(declare-fun res!3007952 () Bool)

(assert (=> b!7498275 (=> res!3007952 e!4470622)))

(assert (=> b!7498275 (= res!3007952 (not (is-Concat!28497 r1!5845)))))

(assert (=> b!7498275 (= e!4470625 e!4470622)))

(assert (= (and d!2302130 (not res!3007951)) b!7498273))

(assert (= (and b!7498273 c!1384313) b!7498269))

(assert (= (and b!7498273 (not c!1384313)) b!7498267))

(assert (= (and b!7498269 res!3007948) b!7498272))

(assert (= (and b!7498267 c!1384312) b!7498271))

(assert (= (and b!7498267 (not c!1384312)) b!7498275))

(assert (= (and b!7498271 res!3007949) b!7498274))

(assert (= (and b!7498275 (not res!3007952)) b!7498268))

(assert (= (and b!7498268 res!3007950) b!7498270))

(assert (= (or b!7498274 b!7498270) bm!688304))

(assert (= (or b!7498271 b!7498268) bm!688306))

(assert (= (or b!7498272 bm!688306) bm!688305))

(declare-fun m!8081248 () Bool)

(assert (=> bm!688304 m!8081248))

(declare-fun m!8081250 () Bool)

(assert (=> b!7498269 m!8081250))

(declare-fun m!8081252 () Bool)

(assert (=> bm!688305 m!8081252))

(assert (=> start!725532 d!2302130))

(declare-fun d!2302132 () Bool)

(declare-fun e!4470629 () Bool)

(assert (=> d!2302132 e!4470629))

(declare-fun c!1384314 () Bool)

(assert (=> d!2302132 (= c!1384314 (is-EmptyExpr!19652 lt!2630968))))

(declare-fun lt!2631064 () Bool)

(declare-fun e!4470631 () Bool)

(assert (=> d!2302132 (= lt!2631064 e!4470631)))

(declare-fun c!1384315 () Bool)

(assert (=> d!2302132 (= c!1384315 (isEmpty!41282 s!13591))))

(assert (=> d!2302132 (validRegex!10166 lt!2630968)))

(assert (=> d!2302132 (= (matchR!9414 lt!2630968 s!13591) lt!2631064)))

(declare-fun b!7498276 () Bool)

(declare-fun res!3007960 () Bool)

(declare-fun e!4470630 () Bool)

(assert (=> b!7498276 (=> res!3007960 e!4470630)))

(assert (=> b!7498276 (= res!3007960 (not (isEmpty!41282 (tail!14954 s!13591))))))

(declare-fun b!7498277 () Bool)

(declare-fun e!4470632 () Bool)

(assert (=> b!7498277 (= e!4470632 (not lt!2631064))))

(declare-fun b!7498278 () Bool)

(assert (=> b!7498278 (= e!4470629 e!4470632)))

(declare-fun c!1384316 () Bool)

(assert (=> b!7498278 (= c!1384316 (is-EmptyLang!19652 lt!2630968))))

(declare-fun b!7498279 () Bool)

(assert (=> b!7498279 (= e!4470631 (nullable!8588 lt!2630968))))

(declare-fun b!7498280 () Bool)

(assert (=> b!7498280 (= e!4470630 (not (= (head!15385 s!13591) (c!1384275 lt!2630968))))))

(declare-fun b!7498281 () Bool)

(declare-fun res!3007958 () Bool)

(declare-fun e!4470633 () Bool)

(assert (=> b!7498281 (=> (not res!3007958) (not e!4470633))))

(assert (=> b!7498281 (= res!3007958 (isEmpty!41282 (tail!14954 s!13591)))))

(declare-fun b!7498282 () Bool)

(declare-fun res!3007957 () Bool)

(assert (=> b!7498282 (=> (not res!3007957) (not e!4470633))))

(declare-fun call!688312 () Bool)

(assert (=> b!7498282 (= res!3007957 (not call!688312))))

(declare-fun b!7498283 () Bool)

(declare-fun e!4470634 () Bool)

(declare-fun e!4470628 () Bool)

(assert (=> b!7498283 (= e!4470634 e!4470628)))

(declare-fun res!3007955 () Bool)

(assert (=> b!7498283 (=> (not res!3007955) (not e!4470628))))

(assert (=> b!7498283 (= res!3007955 (not lt!2631064))))

(declare-fun b!7498284 () Bool)

(declare-fun res!3007953 () Bool)

(assert (=> b!7498284 (=> res!3007953 e!4470634)))

(assert (=> b!7498284 (= res!3007953 e!4470633)))

(declare-fun res!3007954 () Bool)

(assert (=> b!7498284 (=> (not res!3007954) (not e!4470633))))

(assert (=> b!7498284 (= res!3007954 lt!2631064)))

(declare-fun b!7498285 () Bool)

(assert (=> b!7498285 (= e!4470629 (= lt!2631064 call!688312))))

(declare-fun b!7498286 () Bool)

(assert (=> b!7498286 (= e!4470628 e!4470630)))

(declare-fun res!3007956 () Bool)

(assert (=> b!7498286 (=> res!3007956 e!4470630)))

(assert (=> b!7498286 (= res!3007956 call!688312)))

(declare-fun b!7498287 () Bool)

(assert (=> b!7498287 (= e!4470633 (= (head!15385 s!13591) (c!1384275 lt!2630968)))))

(declare-fun bm!688307 () Bool)

(assert (=> bm!688307 (= call!688312 (isEmpty!41282 s!13591))))

(declare-fun b!7498288 () Bool)

(assert (=> b!7498288 (= e!4470631 (matchR!9414 (derivativeStep!5645 lt!2630968 (head!15385 s!13591)) (tail!14954 s!13591)))))

(declare-fun b!7498289 () Bool)

(declare-fun res!3007959 () Bool)

(assert (=> b!7498289 (=> res!3007959 e!4470634)))

(assert (=> b!7498289 (= res!3007959 (not (is-ElementMatch!19652 lt!2630968)))))

(assert (=> b!7498289 (= e!4470632 e!4470634)))

(assert (= (and d!2302132 c!1384315) b!7498279))

(assert (= (and d!2302132 (not c!1384315)) b!7498288))

(assert (= (and d!2302132 c!1384314) b!7498285))

(assert (= (and d!2302132 (not c!1384314)) b!7498278))

(assert (= (and b!7498278 c!1384316) b!7498277))

(assert (= (and b!7498278 (not c!1384316)) b!7498289))

(assert (= (and b!7498289 (not res!3007959)) b!7498284))

(assert (= (and b!7498284 res!3007954) b!7498282))

(assert (= (and b!7498282 res!3007957) b!7498281))

(assert (= (and b!7498281 res!3007958) b!7498287))

(assert (= (and b!7498284 (not res!3007953)) b!7498283))

(assert (= (and b!7498283 res!3007955) b!7498286))

(assert (= (and b!7498286 (not res!3007956)) b!7498276))

(assert (= (and b!7498276 (not res!3007960)) b!7498280))

(assert (= (or b!7498285 b!7498282 b!7498286) bm!688307))

(declare-fun m!8081254 () Bool)

(assert (=> b!7498279 m!8081254))

(declare-fun m!8081256 () Bool)

(assert (=> d!2302132 m!8081256))

(declare-fun m!8081258 () Bool)

(assert (=> d!2302132 m!8081258))

(declare-fun m!8081260 () Bool)

(assert (=> b!7498281 m!8081260))

(assert (=> b!7498281 m!8081260))

(declare-fun m!8081262 () Bool)

(assert (=> b!7498281 m!8081262))

(assert (=> bm!688307 m!8081256))

(declare-fun m!8081264 () Bool)

(assert (=> b!7498288 m!8081264))

(assert (=> b!7498288 m!8081264))

(declare-fun m!8081266 () Bool)

(assert (=> b!7498288 m!8081266))

(assert (=> b!7498288 m!8081260))

(assert (=> b!7498288 m!8081266))

(assert (=> b!7498288 m!8081260))

(declare-fun m!8081268 () Bool)

(assert (=> b!7498288 m!8081268))

(assert (=> b!7498280 m!8081264))

(assert (=> b!7498287 m!8081264))

(assert (=> b!7498276 m!8081260))

(assert (=> b!7498276 m!8081260))

(assert (=> b!7498276 m!8081262))

(assert (=> b!7497998 d!2302132))

(declare-fun d!2302134 () Bool)

(assert (=> d!2302134 (= (matchR!9414 lt!2630964 s!13591) (matchRSpec!4329 lt!2630964 s!13591))))

(declare-fun lt!2631067 () Unit!166135)

(declare-fun choose!57965 (Regex!19652 List!72366) Unit!166135)

(assert (=> d!2302134 (= lt!2631067 (choose!57965 lt!2630964 s!13591))))

(assert (=> d!2302134 (validRegex!10166 lt!2630964)))

(assert (=> d!2302134 (= (mainMatchTheorem!4323 lt!2630964 s!13591) lt!2631067)))

(declare-fun bs!1936671 () Bool)

(assert (= bs!1936671 d!2302134))

(assert (=> bs!1936671 m!8081010))

(assert (=> bs!1936671 m!8081002))

(declare-fun m!8081270 () Bool)

(assert (=> bs!1936671 m!8081270))

(declare-fun m!8081272 () Bool)

(assert (=> bs!1936671 m!8081272))

(assert (=> b!7497998 d!2302134))

(declare-fun bs!1936672 () Bool)

(declare-fun b!7498350 () Bool)

(assert (= bs!1936672 (and b!7498350 d!2302112)))

(declare-fun lambda!464686 () Int)

(assert (=> bs!1936672 (not (= lambda!464686 lambda!464677))))

(declare-fun bs!1936673 () Bool)

(assert (= bs!1936673 (and b!7498350 b!7497995)))

(assert (=> bs!1936673 (not (= lambda!464686 lambda!464650))))

(declare-fun bs!1936674 () Bool)

(assert (= bs!1936674 (and b!7498350 d!2302092)))

(assert (=> bs!1936674 (not (= lambda!464686 lambda!464673))))

(declare-fun bs!1936675 () Bool)

(assert (= bs!1936675 (and b!7498350 b!7497978)))

(assert (=> bs!1936675 (not (= lambda!464686 lambda!464649))))

(declare-fun bs!1936676 () Bool)

(assert (= bs!1936676 (and b!7498350 d!2302122)))

(assert (=> bs!1936676 (not (= lambda!464686 lambda!464679))))

(assert (=> bs!1936674 (not (= lambda!464686 lambda!464672))))

(assert (=> bs!1936676 (not (= lambda!464686 lambda!464678))))

(assert (=> bs!1936675 (not (= lambda!464686 lambda!464648))))

(assert (=> bs!1936673 (not (= lambda!464686 lambda!464651))))

(declare-fun bs!1936677 () Bool)

(assert (= bs!1936677 (and b!7498350 d!2302098)))

(assert (=> bs!1936677 (not (= lambda!464686 lambda!464676))))

(assert (=> b!7498350 true))

(assert (=> b!7498350 true))

(declare-fun bs!1936678 () Bool)

(declare-fun b!7498354 () Bool)

(assert (= bs!1936678 (and b!7498354 d!2302112)))

(declare-fun lambda!464687 () Int)

(assert (=> bs!1936678 (not (= lambda!464687 lambda!464677))))

(declare-fun bs!1936679 () Bool)

(assert (= bs!1936679 (and b!7498354 b!7497995)))

(assert (=> bs!1936679 (not (= lambda!464687 lambda!464650))))

(declare-fun bs!1936680 () Bool)

(assert (= bs!1936680 (and b!7498354 d!2302092)))

(assert (=> bs!1936680 (= (and (= (regOne!39816 lt!2630968) r2!5783) (= (regTwo!39816 lt!2630968) rTail!78)) (= lambda!464687 lambda!464673))))

(declare-fun bs!1936681 () Bool)

(assert (= bs!1936681 (and b!7498354 b!7497978)))

(assert (=> bs!1936681 (= (and (= (regOne!39816 lt!2630968) lt!2630958) (= (regTwo!39816 lt!2630968) rTail!78)) (= lambda!464687 lambda!464649))))

(declare-fun bs!1936682 () Bool)

(assert (= bs!1936682 (and b!7498354 d!2302122)))

(assert (=> bs!1936682 (= (and (= (regOne!39816 lt!2630968) lt!2630958) (= (regTwo!39816 lt!2630968) rTail!78)) (= lambda!464687 lambda!464679))))

(declare-fun bs!1936683 () Bool)

(assert (= bs!1936683 (and b!7498354 b!7498350)))

(assert (=> bs!1936683 (not (= lambda!464687 lambda!464686))))

(assert (=> bs!1936680 (not (= lambda!464687 lambda!464672))))

(assert (=> bs!1936682 (not (= lambda!464687 lambda!464678))))

(assert (=> bs!1936681 (not (= lambda!464687 lambda!464648))))

(assert (=> bs!1936679 (= (and (= (regOne!39816 lt!2630968) r2!5783) (= (regTwo!39816 lt!2630968) rTail!78)) (= lambda!464687 lambda!464651))))

(declare-fun bs!1936684 () Bool)

(assert (= bs!1936684 (and b!7498354 d!2302098)))

(assert (=> bs!1936684 (not (= lambda!464687 lambda!464676))))

(assert (=> b!7498354 true))

(assert (=> b!7498354 true))

(declare-fun e!4470674 () Bool)

(declare-fun call!688318 () Bool)

(assert (=> b!7498350 (= e!4470674 call!688318)))

(declare-fun b!7498351 () Bool)

(declare-fun e!4470675 () Bool)

(declare-fun e!4470673 () Bool)

(assert (=> b!7498351 (= e!4470675 e!4470673)))

(declare-fun c!1384333 () Bool)

(assert (=> b!7498351 (= c!1384333 (is-Star!19652 lt!2630968))))

(declare-fun b!7498352 () Bool)

(declare-fun e!4470671 () Bool)

(assert (=> b!7498352 (= e!4470671 (= s!13591 (Cons!72242 (c!1384275 lt!2630968) Nil!72242)))))

(declare-fun bm!688312 () Bool)

(declare-fun call!688317 () Bool)

(assert (=> bm!688312 (= call!688317 (isEmpty!41282 s!13591))))

(declare-fun b!7498353 () Bool)

(declare-fun e!4470672 () Bool)

(assert (=> b!7498353 (= e!4470675 e!4470672)))

(declare-fun res!3007991 () Bool)

(assert (=> b!7498353 (= res!3007991 (matchRSpec!4329 (regOne!39817 lt!2630968) s!13591))))

(assert (=> b!7498353 (=> res!3007991 e!4470672)))

(assert (=> b!7498354 (= e!4470673 call!688318)))

(declare-fun b!7498355 () Bool)

(declare-fun e!4470670 () Bool)

(assert (=> b!7498355 (= e!4470670 call!688317)))

(declare-fun b!7498356 () Bool)

(assert (=> b!7498356 (= e!4470672 (matchRSpec!4329 (regTwo!39817 lt!2630968) s!13591))))

(declare-fun b!7498358 () Bool)

(declare-fun c!1384335 () Bool)

(assert (=> b!7498358 (= c!1384335 (is-Union!19652 lt!2630968))))

(assert (=> b!7498358 (= e!4470671 e!4470675)))

(declare-fun bm!688313 () Bool)

(assert (=> bm!688313 (= call!688318 (Exists!4269 (ite c!1384333 lambda!464686 lambda!464687)))))

(declare-fun b!7498359 () Bool)

(declare-fun res!3007989 () Bool)

(assert (=> b!7498359 (=> res!3007989 e!4470674)))

(assert (=> b!7498359 (= res!3007989 call!688317)))

(assert (=> b!7498359 (= e!4470673 e!4470674)))

(declare-fun b!7498360 () Bool)

(declare-fun e!4470669 () Bool)

(assert (=> b!7498360 (= e!4470670 e!4470669)))

(declare-fun res!3007990 () Bool)

(assert (=> b!7498360 (= res!3007990 (not (is-EmptyLang!19652 lt!2630968)))))

(assert (=> b!7498360 (=> (not res!3007990) (not e!4470669))))

(declare-fun b!7498357 () Bool)

(declare-fun c!1384334 () Bool)

(assert (=> b!7498357 (= c!1384334 (is-ElementMatch!19652 lt!2630968))))

(assert (=> b!7498357 (= e!4470669 e!4470671)))

(declare-fun d!2302136 () Bool)

(declare-fun c!1384336 () Bool)

(assert (=> d!2302136 (= c!1384336 (is-EmptyExpr!19652 lt!2630968))))

(assert (=> d!2302136 (= (matchRSpec!4329 lt!2630968 s!13591) e!4470670)))

(assert (= (and d!2302136 c!1384336) b!7498355))

(assert (= (and d!2302136 (not c!1384336)) b!7498360))

(assert (= (and b!7498360 res!3007990) b!7498357))

(assert (= (and b!7498357 c!1384334) b!7498352))

(assert (= (and b!7498357 (not c!1384334)) b!7498358))

(assert (= (and b!7498358 c!1384335) b!7498353))

(assert (= (and b!7498358 (not c!1384335)) b!7498351))

(assert (= (and b!7498353 (not res!3007991)) b!7498356))

(assert (= (and b!7498351 c!1384333) b!7498359))

(assert (= (and b!7498351 (not c!1384333)) b!7498354))

(assert (= (and b!7498359 (not res!3007989)) b!7498350))

(assert (= (or b!7498350 b!7498354) bm!688313))

(assert (= (or b!7498355 b!7498359) bm!688312))

(assert (=> bm!688312 m!8081256))

(declare-fun m!8081274 () Bool)

(assert (=> b!7498353 m!8081274))

(declare-fun m!8081276 () Bool)

(assert (=> b!7498356 m!8081276))

(declare-fun m!8081278 () Bool)

(assert (=> bm!688313 m!8081278))

(assert (=> b!7497998 d!2302136))

(declare-fun bs!1936685 () Bool)

(declare-fun b!7498365 () Bool)

(assert (= bs!1936685 (and b!7498365 d!2302112)))

(declare-fun lambda!464690 () Int)

(assert (=> bs!1936685 (not (= lambda!464690 lambda!464677))))

(declare-fun bs!1936686 () Bool)

(assert (= bs!1936686 (and b!7498365 b!7497995)))

(assert (=> bs!1936686 (not (= lambda!464690 lambda!464650))))

(declare-fun bs!1936687 () Bool)

(assert (= bs!1936687 (and b!7498365 d!2302092)))

(assert (=> bs!1936687 (not (= lambda!464690 lambda!464673))))

(declare-fun bs!1936688 () Bool)

(assert (= bs!1936688 (and b!7498365 b!7497978)))

(assert (=> bs!1936688 (not (= lambda!464690 lambda!464649))))

(declare-fun bs!1936689 () Bool)

(assert (= bs!1936689 (and b!7498365 d!2302122)))

(assert (=> bs!1936689 (not (= lambda!464690 lambda!464679))))

(declare-fun bs!1936690 () Bool)

(assert (= bs!1936690 (and b!7498365 b!7498350)))

(assert (=> bs!1936690 (= (and (= (reg!19981 lt!2630964) (reg!19981 lt!2630968)) (= lt!2630964 lt!2630968)) (= lambda!464690 lambda!464686))))

(assert (=> bs!1936689 (not (= lambda!464690 lambda!464678))))

(assert (=> bs!1936688 (not (= lambda!464690 lambda!464648))))

(assert (=> bs!1936686 (not (= lambda!464690 lambda!464651))))

(declare-fun bs!1936691 () Bool)

(assert (= bs!1936691 (and b!7498365 d!2302098)))

(assert (=> bs!1936691 (not (= lambda!464690 lambda!464676))))

(assert (=> bs!1936687 (not (= lambda!464690 lambda!464672))))

(declare-fun bs!1936692 () Bool)

(assert (= bs!1936692 (and b!7498365 b!7498354)))

(assert (=> bs!1936692 (not (= lambda!464690 lambda!464687))))

(assert (=> b!7498365 true))

(assert (=> b!7498365 true))

(declare-fun bs!1936693 () Bool)

(declare-fun b!7498369 () Bool)

(assert (= bs!1936693 (and b!7498369 d!2302112)))

(declare-fun lambda!464691 () Int)

(assert (=> bs!1936693 (not (= lambda!464691 lambda!464677))))

(declare-fun bs!1936694 () Bool)

(assert (= bs!1936694 (and b!7498369 b!7497995)))

(assert (=> bs!1936694 (not (= lambda!464691 lambda!464650))))

(declare-fun bs!1936695 () Bool)

(assert (= bs!1936695 (and b!7498369 d!2302092)))

(assert (=> bs!1936695 (= (and (= (regOne!39816 lt!2630964) r2!5783) (= (regTwo!39816 lt!2630964) rTail!78)) (= lambda!464691 lambda!464673))))

(declare-fun bs!1936696 () Bool)

(assert (= bs!1936696 (and b!7498369 b!7497978)))

(assert (=> bs!1936696 (= (and (= (regOne!39816 lt!2630964) lt!2630958) (= (regTwo!39816 lt!2630964) rTail!78)) (= lambda!464691 lambda!464649))))

(declare-fun bs!1936697 () Bool)

(assert (= bs!1936697 (and b!7498369 d!2302122)))

(assert (=> bs!1936697 (= (and (= (regOne!39816 lt!2630964) lt!2630958) (= (regTwo!39816 lt!2630964) rTail!78)) (= lambda!464691 lambda!464679))))

(declare-fun bs!1936698 () Bool)

(assert (= bs!1936698 (and b!7498369 b!7498350)))

(assert (=> bs!1936698 (not (= lambda!464691 lambda!464686))))

(assert (=> bs!1936697 (not (= lambda!464691 lambda!464678))))

(assert (=> bs!1936696 (not (= lambda!464691 lambda!464648))))

(assert (=> bs!1936694 (= (and (= (regOne!39816 lt!2630964) r2!5783) (= (regTwo!39816 lt!2630964) rTail!78)) (= lambda!464691 lambda!464651))))

(declare-fun bs!1936699 () Bool)

(assert (= bs!1936699 (and b!7498369 d!2302098)))

(assert (=> bs!1936699 (not (= lambda!464691 lambda!464676))))

(assert (=> bs!1936695 (not (= lambda!464691 lambda!464672))))

(declare-fun bs!1936700 () Bool)

(assert (= bs!1936700 (and b!7498369 b!7498354)))

(assert (=> bs!1936700 (= (and (= (regOne!39816 lt!2630964) (regOne!39816 lt!2630968)) (= (regTwo!39816 lt!2630964) (regTwo!39816 lt!2630968))) (= lambda!464691 lambda!464687))))

(declare-fun bs!1936701 () Bool)

(assert (= bs!1936701 (and b!7498369 b!7498365)))

(assert (=> bs!1936701 (not (= lambda!464691 lambda!464690))))

(assert (=> b!7498369 true))

(assert (=> b!7498369 true))

(declare-fun e!4470683 () Bool)

(declare-fun call!688320 () Bool)

(assert (=> b!7498365 (= e!4470683 call!688320)))

(declare-fun b!7498366 () Bool)

(declare-fun e!4470684 () Bool)

(declare-fun e!4470682 () Bool)

(assert (=> b!7498366 (= e!4470684 e!4470682)))

(declare-fun c!1384337 () Bool)

(assert (=> b!7498366 (= c!1384337 (is-Star!19652 lt!2630964))))

(declare-fun b!7498367 () Bool)

(declare-fun e!4470680 () Bool)

(assert (=> b!7498367 (= e!4470680 (= s!13591 (Cons!72242 (c!1384275 lt!2630964) Nil!72242)))))

(declare-fun bm!688314 () Bool)

(declare-fun call!688319 () Bool)

(assert (=> bm!688314 (= call!688319 (isEmpty!41282 s!13591))))

(declare-fun b!7498368 () Bool)

(declare-fun e!4470681 () Bool)

(assert (=> b!7498368 (= e!4470684 e!4470681)))

(declare-fun res!3007998 () Bool)

(assert (=> b!7498368 (= res!3007998 (matchRSpec!4329 (regOne!39817 lt!2630964) s!13591))))

(assert (=> b!7498368 (=> res!3007998 e!4470681)))

(assert (=> b!7498369 (= e!4470682 call!688320)))

(declare-fun b!7498370 () Bool)

(declare-fun e!4470679 () Bool)

(assert (=> b!7498370 (= e!4470679 call!688319)))

(declare-fun b!7498371 () Bool)

(assert (=> b!7498371 (= e!4470681 (matchRSpec!4329 (regTwo!39817 lt!2630964) s!13591))))

(declare-fun b!7498373 () Bool)

(declare-fun c!1384339 () Bool)

(assert (=> b!7498373 (= c!1384339 (is-Union!19652 lt!2630964))))

(assert (=> b!7498373 (= e!4470680 e!4470684)))

(declare-fun bm!688315 () Bool)

(assert (=> bm!688315 (= call!688320 (Exists!4269 (ite c!1384337 lambda!464690 lambda!464691)))))

(declare-fun b!7498374 () Bool)

(declare-fun res!3007996 () Bool)

(assert (=> b!7498374 (=> res!3007996 e!4470683)))

(assert (=> b!7498374 (= res!3007996 call!688319)))

(assert (=> b!7498374 (= e!4470682 e!4470683)))

(declare-fun b!7498375 () Bool)

(declare-fun e!4470678 () Bool)

(assert (=> b!7498375 (= e!4470679 e!4470678)))

(declare-fun res!3007997 () Bool)

(assert (=> b!7498375 (= res!3007997 (not (is-EmptyLang!19652 lt!2630964)))))

(assert (=> b!7498375 (=> (not res!3007997) (not e!4470678))))

(declare-fun b!7498372 () Bool)

(declare-fun c!1384338 () Bool)

(assert (=> b!7498372 (= c!1384338 (is-ElementMatch!19652 lt!2630964))))

(assert (=> b!7498372 (= e!4470678 e!4470680)))

(declare-fun d!2302138 () Bool)

(declare-fun c!1384340 () Bool)

(assert (=> d!2302138 (= c!1384340 (is-EmptyExpr!19652 lt!2630964))))

(assert (=> d!2302138 (= (matchRSpec!4329 lt!2630964 s!13591) e!4470679)))

(assert (= (and d!2302138 c!1384340) b!7498370))

(assert (= (and d!2302138 (not c!1384340)) b!7498375))

(assert (= (and b!7498375 res!3007997) b!7498372))

(assert (= (and b!7498372 c!1384338) b!7498367))

(assert (= (and b!7498372 (not c!1384338)) b!7498373))

(assert (= (and b!7498373 c!1384339) b!7498368))

(assert (= (and b!7498373 (not c!1384339)) b!7498366))

(assert (= (and b!7498368 (not res!3007998)) b!7498371))

(assert (= (and b!7498366 c!1384337) b!7498374))

(assert (= (and b!7498366 (not c!1384337)) b!7498369))

(assert (= (and b!7498374 (not res!3007996)) b!7498365))

(assert (= (or b!7498365 b!7498369) bm!688315))

(assert (= (or b!7498370 b!7498374) bm!688314))

(assert (=> bm!688314 m!8081256))

(declare-fun m!8081280 () Bool)

(assert (=> b!7498368 m!8081280))

(declare-fun m!8081282 () Bool)

(assert (=> b!7498371 m!8081282))

(declare-fun m!8081284 () Bool)

(assert (=> bm!688315 m!8081284))

(assert (=> b!7497998 d!2302138))

(declare-fun d!2302140 () Bool)

(assert (=> d!2302140 (= (matchR!9414 lt!2630968 s!13591) (matchRSpec!4329 lt!2630968 s!13591))))

(declare-fun lt!2631068 () Unit!166135)

(assert (=> d!2302140 (= lt!2631068 (choose!57965 lt!2630968 s!13591))))

(assert (=> d!2302140 (validRegex!10166 lt!2630968)))

(assert (=> d!2302140 (= (mainMatchTheorem!4323 lt!2630968 s!13591) lt!2631068)))

(declare-fun bs!1936702 () Bool)

(assert (= bs!1936702 d!2302140))

(assert (=> bs!1936702 m!8081008))

(assert (=> bs!1936702 m!8081006))

(declare-fun m!8081286 () Bool)

(assert (=> bs!1936702 m!8081286))

(assert (=> bs!1936702 m!8081258))

(assert (=> b!7497998 d!2302140))

(declare-fun d!2302142 () Bool)

(declare-fun e!4470686 () Bool)

(assert (=> d!2302142 e!4470686))

(declare-fun c!1384341 () Bool)

(assert (=> d!2302142 (= c!1384341 (is-EmptyExpr!19652 lt!2630964))))

(declare-fun lt!2631069 () Bool)

(declare-fun e!4470688 () Bool)

(assert (=> d!2302142 (= lt!2631069 e!4470688)))

(declare-fun c!1384342 () Bool)

(assert (=> d!2302142 (= c!1384342 (isEmpty!41282 s!13591))))

(assert (=> d!2302142 (validRegex!10166 lt!2630964)))

(assert (=> d!2302142 (= (matchR!9414 lt!2630964 s!13591) lt!2631069)))

(declare-fun b!7498376 () Bool)

(declare-fun res!3008006 () Bool)

(declare-fun e!4470687 () Bool)

(assert (=> b!7498376 (=> res!3008006 e!4470687)))

(assert (=> b!7498376 (= res!3008006 (not (isEmpty!41282 (tail!14954 s!13591))))))

(declare-fun b!7498377 () Bool)

(declare-fun e!4470689 () Bool)

(assert (=> b!7498377 (= e!4470689 (not lt!2631069))))

(declare-fun b!7498378 () Bool)

(assert (=> b!7498378 (= e!4470686 e!4470689)))

(declare-fun c!1384343 () Bool)

(assert (=> b!7498378 (= c!1384343 (is-EmptyLang!19652 lt!2630964))))

(declare-fun b!7498379 () Bool)

(assert (=> b!7498379 (= e!4470688 (nullable!8588 lt!2630964))))

(declare-fun b!7498380 () Bool)

(assert (=> b!7498380 (= e!4470687 (not (= (head!15385 s!13591) (c!1384275 lt!2630964))))))

(declare-fun b!7498381 () Bool)

(declare-fun res!3008004 () Bool)

(declare-fun e!4470690 () Bool)

(assert (=> b!7498381 (=> (not res!3008004) (not e!4470690))))

(assert (=> b!7498381 (= res!3008004 (isEmpty!41282 (tail!14954 s!13591)))))

(declare-fun b!7498382 () Bool)

(declare-fun res!3008003 () Bool)

(assert (=> b!7498382 (=> (not res!3008003) (not e!4470690))))

(declare-fun call!688325 () Bool)

(assert (=> b!7498382 (= res!3008003 (not call!688325))))

(declare-fun b!7498383 () Bool)

(declare-fun e!4470691 () Bool)

(declare-fun e!4470685 () Bool)

(assert (=> b!7498383 (= e!4470691 e!4470685)))

(declare-fun res!3008001 () Bool)

(assert (=> b!7498383 (=> (not res!3008001) (not e!4470685))))

(assert (=> b!7498383 (= res!3008001 (not lt!2631069))))

(declare-fun b!7498384 () Bool)

(declare-fun res!3007999 () Bool)

(assert (=> b!7498384 (=> res!3007999 e!4470691)))

(assert (=> b!7498384 (= res!3007999 e!4470690)))

(declare-fun res!3008000 () Bool)

(assert (=> b!7498384 (=> (not res!3008000) (not e!4470690))))

(assert (=> b!7498384 (= res!3008000 lt!2631069)))

(declare-fun b!7498385 () Bool)

(assert (=> b!7498385 (= e!4470686 (= lt!2631069 call!688325))))

(declare-fun b!7498386 () Bool)

(assert (=> b!7498386 (= e!4470685 e!4470687)))

(declare-fun res!3008002 () Bool)

(assert (=> b!7498386 (=> res!3008002 e!4470687)))

(assert (=> b!7498386 (= res!3008002 call!688325)))

(declare-fun b!7498387 () Bool)

(assert (=> b!7498387 (= e!4470690 (= (head!15385 s!13591) (c!1384275 lt!2630964)))))

(declare-fun bm!688318 () Bool)

(assert (=> bm!688318 (= call!688325 (isEmpty!41282 s!13591))))

(declare-fun b!7498388 () Bool)

(assert (=> b!7498388 (= e!4470688 (matchR!9414 (derivativeStep!5645 lt!2630964 (head!15385 s!13591)) (tail!14954 s!13591)))))

(declare-fun b!7498389 () Bool)

(declare-fun res!3008005 () Bool)

(assert (=> b!7498389 (=> res!3008005 e!4470691)))

(assert (=> b!7498389 (= res!3008005 (not (is-ElementMatch!19652 lt!2630964)))))

(assert (=> b!7498389 (= e!4470689 e!4470691)))

(assert (= (and d!2302142 c!1384342) b!7498379))

(assert (= (and d!2302142 (not c!1384342)) b!7498388))

(assert (= (and d!2302142 c!1384341) b!7498385))

(assert (= (and d!2302142 (not c!1384341)) b!7498378))

(assert (= (and b!7498378 c!1384343) b!7498377))

(assert (= (and b!7498378 (not c!1384343)) b!7498389))

(assert (= (and b!7498389 (not res!3008005)) b!7498384))

(assert (= (and b!7498384 res!3008000) b!7498382))

(assert (= (and b!7498382 res!3008003) b!7498381))

(assert (= (and b!7498381 res!3008004) b!7498387))

(assert (= (and b!7498384 (not res!3007999)) b!7498383))

(assert (= (and b!7498383 res!3008001) b!7498386))

(assert (= (and b!7498386 (not res!3008002)) b!7498376))

(assert (= (and b!7498376 (not res!3008006)) b!7498380))

(assert (= (or b!7498385 b!7498382 b!7498386) bm!688318))

(declare-fun m!8081288 () Bool)

(assert (=> b!7498379 m!8081288))

(assert (=> d!2302142 m!8081256))

(assert (=> d!2302142 m!8081272))

(assert (=> b!7498381 m!8081260))

(assert (=> b!7498381 m!8081260))

(assert (=> b!7498381 m!8081262))

(assert (=> bm!688318 m!8081256))

(assert (=> b!7498388 m!8081264))

(assert (=> b!7498388 m!8081264))

(declare-fun m!8081290 () Bool)

(assert (=> b!7498388 m!8081290))

(assert (=> b!7498388 m!8081260))

(assert (=> b!7498388 m!8081290))

(assert (=> b!7498388 m!8081260))

(declare-fun m!8081292 () Bool)

(assert (=> b!7498388 m!8081292))

(assert (=> b!7498380 m!8081264))

(assert (=> b!7498387 m!8081264))

(assert (=> b!7498376 m!8081260))

(assert (=> b!7498376 m!8081260))

(assert (=> b!7498376 m!8081262))

(assert (=> b!7497998 d!2302142))

(declare-fun bm!688321 () Bool)

(declare-fun call!688327 () Bool)

(declare-fun c!1384344 () Bool)

(assert (=> bm!688321 (= call!688327 (validRegex!10166 (ite c!1384344 (regTwo!39817 lt!2630958) (regTwo!39816 lt!2630958))))))

(declare-fun b!7498390 () Bool)

(declare-fun e!4470694 () Bool)

(declare-fun e!4470696 () Bool)

(assert (=> b!7498390 (= e!4470694 e!4470696)))

(assert (=> b!7498390 (= c!1384344 (is-Union!19652 lt!2630958))))

(declare-fun b!7498391 () Bool)

(declare-fun e!4470693 () Bool)

(declare-fun e!4470698 () Bool)

(assert (=> b!7498391 (= e!4470693 e!4470698)))

(declare-fun res!3008009 () Bool)

(assert (=> b!7498391 (=> (not res!3008009) (not e!4470698))))

(declare-fun call!688326 () Bool)

(assert (=> b!7498391 (= res!3008009 call!688326)))

(declare-fun b!7498392 () Bool)

(declare-fun e!4470692 () Bool)

(assert (=> b!7498392 (= e!4470694 e!4470692)))

(declare-fun res!3008007 () Bool)

(assert (=> b!7498392 (= res!3008007 (not (nullable!8588 (reg!19981 lt!2630958))))))

(assert (=> b!7498392 (=> (not res!3008007) (not e!4470692))))

(declare-fun call!688328 () Bool)

(declare-fun c!1384345 () Bool)

(declare-fun bm!688322 () Bool)

(assert (=> bm!688322 (= call!688328 (validRegex!10166 (ite c!1384345 (reg!19981 lt!2630958) (ite c!1384344 (regOne!39817 lt!2630958) (regOne!39816 lt!2630958)))))))

(declare-fun b!7498393 () Bool)

(assert (=> b!7498393 (= e!4470698 call!688327)))

(declare-fun b!7498394 () Bool)

(declare-fun res!3008008 () Bool)

(declare-fun e!4470695 () Bool)

(assert (=> b!7498394 (=> (not res!3008008) (not e!4470695))))

(assert (=> b!7498394 (= res!3008008 call!688326)))

(assert (=> b!7498394 (= e!4470696 e!4470695)))

(declare-fun b!7498395 () Bool)

(assert (=> b!7498395 (= e!4470692 call!688328)))

(declare-fun b!7498396 () Bool)

(declare-fun e!4470697 () Bool)

(assert (=> b!7498396 (= e!4470697 e!4470694)))

(assert (=> b!7498396 (= c!1384345 (is-Star!19652 lt!2630958))))

(declare-fun bm!688323 () Bool)

(assert (=> bm!688323 (= call!688326 call!688328)))

(declare-fun d!2302144 () Bool)

(declare-fun res!3008010 () Bool)

(assert (=> d!2302144 (=> res!3008010 e!4470697)))

(assert (=> d!2302144 (= res!3008010 (is-ElementMatch!19652 lt!2630958))))

(assert (=> d!2302144 (= (validRegex!10166 lt!2630958) e!4470697)))

(declare-fun b!7498397 () Bool)

(assert (=> b!7498397 (= e!4470695 call!688327)))

(declare-fun b!7498398 () Bool)

(declare-fun res!3008011 () Bool)

(assert (=> b!7498398 (=> res!3008011 e!4470693)))

(assert (=> b!7498398 (= res!3008011 (not (is-Concat!28497 lt!2630958)))))

(assert (=> b!7498398 (= e!4470696 e!4470693)))

(assert (= (and d!2302144 (not res!3008010)) b!7498396))

(assert (= (and b!7498396 c!1384345) b!7498392))

(assert (= (and b!7498396 (not c!1384345)) b!7498390))

(assert (= (and b!7498392 res!3008007) b!7498395))

(assert (= (and b!7498390 c!1384344) b!7498394))

(assert (= (and b!7498390 (not c!1384344)) b!7498398))

(assert (= (and b!7498394 res!3008008) b!7498397))

(assert (= (and b!7498398 (not res!3008011)) b!7498391))

(assert (= (and b!7498391 res!3008009) b!7498393))

(assert (= (or b!7498397 b!7498393) bm!688321))

(assert (= (or b!7498394 b!7498391) bm!688323))

(assert (= (or b!7498395 bm!688323) bm!688322))

(declare-fun m!8081294 () Bool)

(assert (=> bm!688321 m!8081294))

(declare-fun m!8081296 () Bool)

(assert (=> b!7498392 m!8081296))

(declare-fun m!8081298 () Bool)

(assert (=> bm!688322 m!8081298))

(assert (=> b!7497993 d!2302144))

(declare-fun bs!1936703 () Bool)

(declare-fun b!7498399 () Bool)

(assert (= bs!1936703 (and b!7498399 d!2302112)))

(declare-fun lambda!464692 () Int)

(assert (=> bs!1936703 (not (= lambda!464692 lambda!464677))))

(declare-fun bs!1936704 () Bool)

(assert (= bs!1936704 (and b!7498399 b!7497995)))

(assert (=> bs!1936704 (not (= lambda!464692 lambda!464650))))

(declare-fun bs!1936705 () Bool)

(assert (= bs!1936705 (and b!7498399 d!2302092)))

(assert (=> bs!1936705 (not (= lambda!464692 lambda!464673))))

(declare-fun bs!1936706 () Bool)

(assert (= bs!1936706 (and b!7498399 b!7497978)))

(assert (=> bs!1936706 (not (= lambda!464692 lambda!464649))))

(declare-fun bs!1936707 () Bool)

(assert (= bs!1936707 (and b!7498399 d!2302122)))

(assert (=> bs!1936707 (not (= lambda!464692 lambda!464679))))

(assert (=> bs!1936707 (not (= lambda!464692 lambda!464678))))

(assert (=> bs!1936706 (not (= lambda!464692 lambda!464648))))

(assert (=> bs!1936704 (not (= lambda!464692 lambda!464651))))

(declare-fun bs!1936708 () Bool)

(assert (= bs!1936708 (and b!7498399 d!2302098)))

(assert (=> bs!1936708 (not (= lambda!464692 lambda!464676))))

(declare-fun bs!1936709 () Bool)

(assert (= bs!1936709 (and b!7498399 b!7498369)))

(assert (=> bs!1936709 (not (= lambda!464692 lambda!464691))))

(declare-fun bs!1936710 () Bool)

(assert (= bs!1936710 (and b!7498399 b!7498350)))

(assert (=> bs!1936710 (= (and (= (reg!19981 lt!2630970) (reg!19981 lt!2630968)) (= lt!2630970 lt!2630968)) (= lambda!464692 lambda!464686))))

(assert (=> bs!1936705 (not (= lambda!464692 lambda!464672))))

(declare-fun bs!1936711 () Bool)

(assert (= bs!1936711 (and b!7498399 b!7498354)))

(assert (=> bs!1936711 (not (= lambda!464692 lambda!464687))))

(declare-fun bs!1936712 () Bool)

(assert (= bs!1936712 (and b!7498399 b!7498365)))

(assert (=> bs!1936712 (= (and (= (reg!19981 lt!2630970) (reg!19981 lt!2630964)) (= lt!2630970 lt!2630964)) (= lambda!464692 lambda!464690))))

(assert (=> b!7498399 true))

(assert (=> b!7498399 true))

(declare-fun bs!1936713 () Bool)

(declare-fun b!7498403 () Bool)

(assert (= bs!1936713 (and b!7498403 d!2302112)))

(declare-fun lambda!464693 () Int)

(assert (=> bs!1936713 (not (= lambda!464693 lambda!464677))))

(declare-fun bs!1936714 () Bool)

(assert (= bs!1936714 (and b!7498403 b!7497995)))

(assert (=> bs!1936714 (not (= lambda!464693 lambda!464650))))

(declare-fun bs!1936715 () Bool)

(assert (= bs!1936715 (and b!7498403 b!7498399)))

(assert (=> bs!1936715 (not (= lambda!464693 lambda!464692))))

(declare-fun bs!1936716 () Bool)

(assert (= bs!1936716 (and b!7498403 d!2302092)))

(assert (=> bs!1936716 (= (and (= (regOne!39816 lt!2630970) r2!5783) (= (regTwo!39816 lt!2630970) rTail!78)) (= lambda!464693 lambda!464673))))

(declare-fun bs!1936717 () Bool)

(assert (= bs!1936717 (and b!7498403 b!7497978)))

(assert (=> bs!1936717 (= (and (= (regOne!39816 lt!2630970) lt!2630958) (= (regTwo!39816 lt!2630970) rTail!78)) (= lambda!464693 lambda!464649))))

(declare-fun bs!1936718 () Bool)

(assert (= bs!1936718 (and b!7498403 d!2302122)))

(assert (=> bs!1936718 (= (and (= (regOne!39816 lt!2630970) lt!2630958) (= (regTwo!39816 lt!2630970) rTail!78)) (= lambda!464693 lambda!464679))))

(assert (=> bs!1936718 (not (= lambda!464693 lambda!464678))))

(assert (=> bs!1936717 (not (= lambda!464693 lambda!464648))))

(assert (=> bs!1936714 (= (and (= (regOne!39816 lt!2630970) r2!5783) (= (regTwo!39816 lt!2630970) rTail!78)) (= lambda!464693 lambda!464651))))

(declare-fun bs!1936719 () Bool)

(assert (= bs!1936719 (and b!7498403 d!2302098)))

(assert (=> bs!1936719 (not (= lambda!464693 lambda!464676))))

(declare-fun bs!1936720 () Bool)

(assert (= bs!1936720 (and b!7498403 b!7498369)))

(assert (=> bs!1936720 (= (and (= (regOne!39816 lt!2630970) (regOne!39816 lt!2630964)) (= (regTwo!39816 lt!2630970) (regTwo!39816 lt!2630964))) (= lambda!464693 lambda!464691))))

(declare-fun bs!1936721 () Bool)

(assert (= bs!1936721 (and b!7498403 b!7498350)))

(assert (=> bs!1936721 (not (= lambda!464693 lambda!464686))))

(assert (=> bs!1936716 (not (= lambda!464693 lambda!464672))))

(declare-fun bs!1936722 () Bool)

(assert (= bs!1936722 (and b!7498403 b!7498354)))

(assert (=> bs!1936722 (= (and (= (regOne!39816 lt!2630970) (regOne!39816 lt!2630968)) (= (regTwo!39816 lt!2630970) (regTwo!39816 lt!2630968))) (= lambda!464693 lambda!464687))))

(declare-fun bs!1936723 () Bool)

(assert (= bs!1936723 (and b!7498403 b!7498365)))

(assert (=> bs!1936723 (not (= lambda!464693 lambda!464690))))

(assert (=> b!7498403 true))

(assert (=> b!7498403 true))

(declare-fun e!4470704 () Bool)

(declare-fun call!688330 () Bool)

(assert (=> b!7498399 (= e!4470704 call!688330)))

(declare-fun b!7498400 () Bool)

(declare-fun e!4470705 () Bool)

(declare-fun e!4470703 () Bool)

(assert (=> b!7498400 (= e!4470705 e!4470703)))

(declare-fun c!1384346 () Bool)

(assert (=> b!7498400 (= c!1384346 (is-Star!19652 lt!2630970))))

(declare-fun b!7498401 () Bool)

(declare-fun e!4470701 () Bool)

(assert (=> b!7498401 (= e!4470701 (= s!13591 (Cons!72242 (c!1384275 lt!2630970) Nil!72242)))))

(declare-fun bm!688324 () Bool)

(declare-fun call!688329 () Bool)

(assert (=> bm!688324 (= call!688329 (isEmpty!41282 s!13591))))

(declare-fun b!7498402 () Bool)

(declare-fun e!4470702 () Bool)

(assert (=> b!7498402 (= e!4470705 e!4470702)))

(declare-fun res!3008014 () Bool)

(assert (=> b!7498402 (= res!3008014 (matchRSpec!4329 (regOne!39817 lt!2630970) s!13591))))

(assert (=> b!7498402 (=> res!3008014 e!4470702)))

(assert (=> b!7498403 (= e!4470703 call!688330)))

(declare-fun b!7498404 () Bool)

(declare-fun e!4470700 () Bool)

(assert (=> b!7498404 (= e!4470700 call!688329)))

(declare-fun b!7498405 () Bool)

(assert (=> b!7498405 (= e!4470702 (matchRSpec!4329 (regTwo!39817 lt!2630970) s!13591))))

(declare-fun b!7498407 () Bool)

(declare-fun c!1384348 () Bool)

(assert (=> b!7498407 (= c!1384348 (is-Union!19652 lt!2630970))))

(assert (=> b!7498407 (= e!4470701 e!4470705)))

(declare-fun bm!688325 () Bool)

(assert (=> bm!688325 (= call!688330 (Exists!4269 (ite c!1384346 lambda!464692 lambda!464693)))))

(declare-fun b!7498408 () Bool)

(declare-fun res!3008012 () Bool)

(assert (=> b!7498408 (=> res!3008012 e!4470704)))

(assert (=> b!7498408 (= res!3008012 call!688329)))

(assert (=> b!7498408 (= e!4470703 e!4470704)))

(declare-fun b!7498409 () Bool)

(declare-fun e!4470699 () Bool)

(assert (=> b!7498409 (= e!4470700 e!4470699)))

(declare-fun res!3008013 () Bool)

(assert (=> b!7498409 (= res!3008013 (not (is-EmptyLang!19652 lt!2630970)))))

(assert (=> b!7498409 (=> (not res!3008013) (not e!4470699))))

(declare-fun b!7498406 () Bool)

(declare-fun c!1384347 () Bool)

(assert (=> b!7498406 (= c!1384347 (is-ElementMatch!19652 lt!2630970))))

(assert (=> b!7498406 (= e!4470699 e!4470701)))

(declare-fun d!2302146 () Bool)

(declare-fun c!1384349 () Bool)

(assert (=> d!2302146 (= c!1384349 (is-EmptyExpr!19652 lt!2630970))))

(assert (=> d!2302146 (= (matchRSpec!4329 lt!2630970 s!13591) e!4470700)))

(assert (= (and d!2302146 c!1384349) b!7498404))

(assert (= (and d!2302146 (not c!1384349)) b!7498409))

(assert (= (and b!7498409 res!3008013) b!7498406))

(assert (= (and b!7498406 c!1384347) b!7498401))

(assert (= (and b!7498406 (not c!1384347)) b!7498407))

(assert (= (and b!7498407 c!1384348) b!7498402))

(assert (= (and b!7498407 (not c!1384348)) b!7498400))

(assert (= (and b!7498402 (not res!3008014)) b!7498405))

(assert (= (and b!7498400 c!1384346) b!7498408))

(assert (= (and b!7498400 (not c!1384346)) b!7498403))

(assert (= (and b!7498408 (not res!3008012)) b!7498399))

(assert (= (or b!7498399 b!7498403) bm!688325))

(assert (= (or b!7498404 b!7498408) bm!688324))

(assert (=> bm!688324 m!8081256))

(declare-fun m!8081300 () Bool)

(assert (=> b!7498402 m!8081300))

(declare-fun m!8081302 () Bool)

(assert (=> b!7498405 m!8081302))

(declare-fun m!8081304 () Bool)

(assert (=> bm!688325 m!8081304))

(assert (=> b!7497997 d!2302146))

(declare-fun d!2302148 () Bool)

(assert (=> d!2302148 (= (matchR!9414 lt!2630970 s!13591) (matchRSpec!4329 lt!2630970 s!13591))))

(declare-fun lt!2631070 () Unit!166135)

(assert (=> d!2302148 (= lt!2631070 (choose!57965 lt!2630970 s!13591))))

(assert (=> d!2302148 (validRegex!10166 lt!2630970)))

(assert (=> d!2302148 (= (mainMatchTheorem!4323 lt!2630970 s!13591) lt!2631070)))

(declare-fun bs!1936724 () Bool)

(assert (= bs!1936724 d!2302148))

(assert (=> bs!1936724 m!8081034))

(assert (=> bs!1936724 m!8081036))

(declare-fun m!8081306 () Bool)

(assert (=> bs!1936724 m!8081306))

(declare-fun m!8081308 () Bool)

(assert (=> bs!1936724 m!8081308))

(assert (=> b!7497997 d!2302148))

(declare-fun d!2302150 () Bool)

(declare-fun e!4470714 () Bool)

(assert (=> d!2302150 e!4470714))

(declare-fun c!1384354 () Bool)

(assert (=> d!2302150 (= c!1384354 (is-EmptyExpr!19652 lt!2630973))))

(declare-fun lt!2631071 () Bool)

(declare-fun e!4470716 () Bool)

(assert (=> d!2302150 (= lt!2631071 e!4470716)))

(declare-fun c!1384355 () Bool)

(assert (=> d!2302150 (= c!1384355 (isEmpty!41282 s!13591))))

(assert (=> d!2302150 (validRegex!10166 lt!2630973)))

(assert (=> d!2302150 (= (matchR!9414 lt!2630973 s!13591) lt!2631071)))

(declare-fun b!7498421 () Bool)

(declare-fun res!3008025 () Bool)

(declare-fun e!4470715 () Bool)

(assert (=> b!7498421 (=> res!3008025 e!4470715)))

(assert (=> b!7498421 (= res!3008025 (not (isEmpty!41282 (tail!14954 s!13591))))))

(declare-fun b!7498422 () Bool)

(declare-fun e!4470717 () Bool)

(assert (=> b!7498422 (= e!4470717 (not lt!2631071))))

(declare-fun b!7498423 () Bool)

(assert (=> b!7498423 (= e!4470714 e!4470717)))

(declare-fun c!1384356 () Bool)

(assert (=> b!7498423 (= c!1384356 (is-EmptyLang!19652 lt!2630973))))

(declare-fun b!7498424 () Bool)

(assert (=> b!7498424 (= e!4470716 (nullable!8588 lt!2630973))))

(declare-fun b!7498425 () Bool)

(assert (=> b!7498425 (= e!4470715 (not (= (head!15385 s!13591) (c!1384275 lt!2630973))))))

(declare-fun b!7498426 () Bool)

(declare-fun res!3008023 () Bool)

(declare-fun e!4470718 () Bool)

(assert (=> b!7498426 (=> (not res!3008023) (not e!4470718))))

(assert (=> b!7498426 (= res!3008023 (isEmpty!41282 (tail!14954 s!13591)))))

(declare-fun b!7498427 () Bool)

(declare-fun res!3008022 () Bool)

(assert (=> b!7498427 (=> (not res!3008022) (not e!4470718))))

(declare-fun call!688333 () Bool)

(assert (=> b!7498427 (= res!3008022 (not call!688333))))

(declare-fun b!7498428 () Bool)

(declare-fun e!4470719 () Bool)

(declare-fun e!4470713 () Bool)

(assert (=> b!7498428 (= e!4470719 e!4470713)))

(declare-fun res!3008020 () Bool)

(assert (=> b!7498428 (=> (not res!3008020) (not e!4470713))))

(assert (=> b!7498428 (= res!3008020 (not lt!2631071))))

(declare-fun b!7498429 () Bool)

(declare-fun res!3008018 () Bool)

(assert (=> b!7498429 (=> res!3008018 e!4470719)))

(assert (=> b!7498429 (= res!3008018 e!4470718)))

(declare-fun res!3008019 () Bool)

(assert (=> b!7498429 (=> (not res!3008019) (not e!4470718))))

(assert (=> b!7498429 (= res!3008019 lt!2631071)))

(declare-fun b!7498430 () Bool)

(assert (=> b!7498430 (= e!4470714 (= lt!2631071 call!688333))))

(declare-fun b!7498431 () Bool)

(assert (=> b!7498431 (= e!4470713 e!4470715)))

(declare-fun res!3008021 () Bool)

(assert (=> b!7498431 (=> res!3008021 e!4470715)))

(assert (=> b!7498431 (= res!3008021 call!688333)))

(declare-fun b!7498432 () Bool)

(assert (=> b!7498432 (= e!4470718 (= (head!15385 s!13591) (c!1384275 lt!2630973)))))

(declare-fun bm!688328 () Bool)

(assert (=> bm!688328 (= call!688333 (isEmpty!41282 s!13591))))

(declare-fun b!7498433 () Bool)

(assert (=> b!7498433 (= e!4470716 (matchR!9414 (derivativeStep!5645 lt!2630973 (head!15385 s!13591)) (tail!14954 s!13591)))))

(declare-fun b!7498434 () Bool)

(declare-fun res!3008024 () Bool)

(assert (=> b!7498434 (=> res!3008024 e!4470719)))

(assert (=> b!7498434 (= res!3008024 (not (is-ElementMatch!19652 lt!2630973)))))

(assert (=> b!7498434 (= e!4470717 e!4470719)))

(assert (= (and d!2302150 c!1384355) b!7498424))

(assert (= (and d!2302150 (not c!1384355)) b!7498433))

(assert (= (and d!2302150 c!1384354) b!7498430))

(assert (= (and d!2302150 (not c!1384354)) b!7498423))

(assert (= (and b!7498423 c!1384356) b!7498422))

(assert (= (and b!7498423 (not c!1384356)) b!7498434))

(assert (= (and b!7498434 (not res!3008024)) b!7498429))

(assert (= (and b!7498429 res!3008019) b!7498427))

(assert (= (and b!7498427 res!3008022) b!7498426))

(assert (= (and b!7498426 res!3008023) b!7498432))

(assert (= (and b!7498429 (not res!3008018)) b!7498428))

(assert (= (and b!7498428 res!3008020) b!7498431))

(assert (= (and b!7498431 (not res!3008021)) b!7498421))

(assert (= (and b!7498421 (not res!3008025)) b!7498425))

(assert (= (or b!7498430 b!7498427 b!7498431) bm!688328))

(declare-fun m!8081310 () Bool)

(assert (=> b!7498424 m!8081310))

(assert (=> d!2302150 m!8081256))

(declare-fun m!8081312 () Bool)

(assert (=> d!2302150 m!8081312))

(assert (=> b!7498426 m!8081260))

(assert (=> b!7498426 m!8081260))

(assert (=> b!7498426 m!8081262))

(assert (=> bm!688328 m!8081256))

(assert (=> b!7498433 m!8081264))

(assert (=> b!7498433 m!8081264))

(declare-fun m!8081314 () Bool)

(assert (=> b!7498433 m!8081314))

(assert (=> b!7498433 m!8081260))

(assert (=> b!7498433 m!8081314))

(assert (=> b!7498433 m!8081260))

(declare-fun m!8081316 () Bool)

(assert (=> b!7498433 m!8081316))

(assert (=> b!7498425 m!8081264))

(assert (=> b!7498432 m!8081264))

(assert (=> b!7498421 m!8081260))

(assert (=> b!7498421 m!8081260))

(assert (=> b!7498421 m!8081262))

(assert (=> b!7497997 d!2302150))

(declare-fun d!2302152 () Bool)

(assert (=> d!2302152 (= (matchR!9414 lt!2630973 s!13591) (matchRSpec!4329 lt!2630973 s!13591))))

(declare-fun lt!2631072 () Unit!166135)

(assert (=> d!2302152 (= lt!2631072 (choose!57965 lt!2630973 s!13591))))

(assert (=> d!2302152 (validRegex!10166 lt!2630973)))

(assert (=> d!2302152 (= (mainMatchTheorem!4323 lt!2630973 s!13591) lt!2631072)))

(declare-fun bs!1936725 () Bool)

(assert (= bs!1936725 d!2302152))

(assert (=> bs!1936725 m!8081028))

(assert (=> bs!1936725 m!8081038))

(declare-fun m!8081318 () Bool)

(assert (=> bs!1936725 m!8081318))

(assert (=> bs!1936725 m!8081312))

(assert (=> b!7497997 d!2302152))

(declare-fun d!2302154 () Bool)

(declare-fun e!4470721 () Bool)

(assert (=> d!2302154 e!4470721))

(declare-fun c!1384357 () Bool)

(assert (=> d!2302154 (= c!1384357 (is-EmptyExpr!19652 lt!2630970))))

(declare-fun lt!2631073 () Bool)

(declare-fun e!4470723 () Bool)

(assert (=> d!2302154 (= lt!2631073 e!4470723)))

(declare-fun c!1384358 () Bool)

(assert (=> d!2302154 (= c!1384358 (isEmpty!41282 s!13591))))

(assert (=> d!2302154 (validRegex!10166 lt!2630970)))

(assert (=> d!2302154 (= (matchR!9414 lt!2630970 s!13591) lt!2631073)))

(declare-fun b!7498435 () Bool)

(declare-fun res!3008033 () Bool)

(declare-fun e!4470722 () Bool)

(assert (=> b!7498435 (=> res!3008033 e!4470722)))

(assert (=> b!7498435 (= res!3008033 (not (isEmpty!41282 (tail!14954 s!13591))))))

(declare-fun b!7498436 () Bool)

(declare-fun e!4470724 () Bool)

(assert (=> b!7498436 (= e!4470724 (not lt!2631073))))

(declare-fun b!7498437 () Bool)

(assert (=> b!7498437 (= e!4470721 e!4470724)))

(declare-fun c!1384359 () Bool)

(assert (=> b!7498437 (= c!1384359 (is-EmptyLang!19652 lt!2630970))))

(declare-fun b!7498438 () Bool)

(assert (=> b!7498438 (= e!4470723 (nullable!8588 lt!2630970))))

(declare-fun b!7498439 () Bool)

(assert (=> b!7498439 (= e!4470722 (not (= (head!15385 s!13591) (c!1384275 lt!2630970))))))

(declare-fun b!7498440 () Bool)

(declare-fun res!3008031 () Bool)

(declare-fun e!4470725 () Bool)

(assert (=> b!7498440 (=> (not res!3008031) (not e!4470725))))

(assert (=> b!7498440 (= res!3008031 (isEmpty!41282 (tail!14954 s!13591)))))

(declare-fun b!7498441 () Bool)

(declare-fun res!3008030 () Bool)

(assert (=> b!7498441 (=> (not res!3008030) (not e!4470725))))

(declare-fun call!688334 () Bool)

(assert (=> b!7498441 (= res!3008030 (not call!688334))))

(declare-fun b!7498442 () Bool)

(declare-fun e!4470726 () Bool)

(declare-fun e!4470720 () Bool)

(assert (=> b!7498442 (= e!4470726 e!4470720)))

(declare-fun res!3008028 () Bool)

(assert (=> b!7498442 (=> (not res!3008028) (not e!4470720))))

(assert (=> b!7498442 (= res!3008028 (not lt!2631073))))

(declare-fun b!7498443 () Bool)

(declare-fun res!3008026 () Bool)

(assert (=> b!7498443 (=> res!3008026 e!4470726)))

(assert (=> b!7498443 (= res!3008026 e!4470725)))

(declare-fun res!3008027 () Bool)

(assert (=> b!7498443 (=> (not res!3008027) (not e!4470725))))

(assert (=> b!7498443 (= res!3008027 lt!2631073)))

(declare-fun b!7498444 () Bool)

(assert (=> b!7498444 (= e!4470721 (= lt!2631073 call!688334))))

(declare-fun b!7498445 () Bool)

(assert (=> b!7498445 (= e!4470720 e!4470722)))

(declare-fun res!3008029 () Bool)

(assert (=> b!7498445 (=> res!3008029 e!4470722)))

(assert (=> b!7498445 (= res!3008029 call!688334)))

(declare-fun b!7498446 () Bool)

(assert (=> b!7498446 (= e!4470725 (= (head!15385 s!13591) (c!1384275 lt!2630970)))))

(declare-fun bm!688329 () Bool)

(assert (=> bm!688329 (= call!688334 (isEmpty!41282 s!13591))))

(declare-fun b!7498447 () Bool)

(assert (=> b!7498447 (= e!4470723 (matchR!9414 (derivativeStep!5645 lt!2630970 (head!15385 s!13591)) (tail!14954 s!13591)))))

(declare-fun b!7498448 () Bool)

(declare-fun res!3008032 () Bool)

(assert (=> b!7498448 (=> res!3008032 e!4470726)))

(assert (=> b!7498448 (= res!3008032 (not (is-ElementMatch!19652 lt!2630970)))))

(assert (=> b!7498448 (= e!4470724 e!4470726)))

(assert (= (and d!2302154 c!1384358) b!7498438))

(assert (= (and d!2302154 (not c!1384358)) b!7498447))

(assert (= (and d!2302154 c!1384357) b!7498444))

(assert (= (and d!2302154 (not c!1384357)) b!7498437))

(assert (= (and b!7498437 c!1384359) b!7498436))

(assert (= (and b!7498437 (not c!1384359)) b!7498448))

(assert (= (and b!7498448 (not res!3008032)) b!7498443))

(assert (= (and b!7498443 res!3008027) b!7498441))

(assert (= (and b!7498441 res!3008030) b!7498440))

(assert (= (and b!7498440 res!3008031) b!7498446))

(assert (= (and b!7498443 (not res!3008026)) b!7498442))

(assert (= (and b!7498442 res!3008028) b!7498445))

(assert (= (and b!7498445 (not res!3008029)) b!7498435))

(assert (= (and b!7498435 (not res!3008033)) b!7498439))

(assert (= (or b!7498444 b!7498441 b!7498445) bm!688329))

(declare-fun m!8081320 () Bool)

(assert (=> b!7498438 m!8081320))

(assert (=> d!2302154 m!8081256))

(assert (=> d!2302154 m!8081308))

(assert (=> b!7498440 m!8081260))

(assert (=> b!7498440 m!8081260))

(assert (=> b!7498440 m!8081262))

(assert (=> bm!688329 m!8081256))

(assert (=> b!7498447 m!8081264))

(assert (=> b!7498447 m!8081264))

(declare-fun m!8081322 () Bool)

(assert (=> b!7498447 m!8081322))

(assert (=> b!7498447 m!8081260))

(assert (=> b!7498447 m!8081322))

(assert (=> b!7498447 m!8081260))

(declare-fun m!8081324 () Bool)

(assert (=> b!7498447 m!8081324))

(assert (=> b!7498439 m!8081264))

(assert (=> b!7498446 m!8081264))

(assert (=> b!7498435 m!8081260))

(assert (=> b!7498435 m!8081260))

(assert (=> b!7498435 m!8081262))

(assert (=> b!7497997 d!2302154))

(declare-fun bs!1936728 () Bool)

(declare-fun b!7498449 () Bool)

(assert (= bs!1936728 (and b!7498449 d!2302112)))

(declare-fun lambda!464695 () Int)

(assert (=> bs!1936728 (not (= lambda!464695 lambda!464677))))

(declare-fun bs!1936729 () Bool)

(assert (= bs!1936729 (and b!7498449 b!7497995)))

(assert (=> bs!1936729 (not (= lambda!464695 lambda!464650))))

(declare-fun bs!1936730 () Bool)

(assert (= bs!1936730 (and b!7498449 b!7498399)))

(assert (=> bs!1936730 (= (and (= (reg!19981 lt!2630973) (reg!19981 lt!2630970)) (= lt!2630973 lt!2630970)) (= lambda!464695 lambda!464692))))

(declare-fun bs!1936731 () Bool)

(assert (= bs!1936731 (and b!7498449 b!7497978)))

(assert (=> bs!1936731 (not (= lambda!464695 lambda!464649))))

(declare-fun bs!1936732 () Bool)

(assert (= bs!1936732 (and b!7498449 d!2302122)))

(assert (=> bs!1936732 (not (= lambda!464695 lambda!464679))))

(assert (=> bs!1936732 (not (= lambda!464695 lambda!464678))))

(assert (=> bs!1936731 (not (= lambda!464695 lambda!464648))))

(declare-fun bs!1936733 () Bool)

(assert (= bs!1936733 (and b!7498449 d!2302092)))

(assert (=> bs!1936733 (not (= lambda!464695 lambda!464673))))

(declare-fun bs!1936734 () Bool)

(assert (= bs!1936734 (and b!7498449 b!7498403)))

(assert (=> bs!1936734 (not (= lambda!464695 lambda!464693))))

(assert (=> bs!1936729 (not (= lambda!464695 lambda!464651))))

(declare-fun bs!1936735 () Bool)

(assert (= bs!1936735 (and b!7498449 d!2302098)))

(assert (=> bs!1936735 (not (= lambda!464695 lambda!464676))))

(declare-fun bs!1936736 () Bool)

(assert (= bs!1936736 (and b!7498449 b!7498369)))

(assert (=> bs!1936736 (not (= lambda!464695 lambda!464691))))

(declare-fun bs!1936737 () Bool)

(assert (= bs!1936737 (and b!7498449 b!7498350)))

(assert (=> bs!1936737 (= (and (= (reg!19981 lt!2630973) (reg!19981 lt!2630968)) (= lt!2630973 lt!2630968)) (= lambda!464695 lambda!464686))))

(assert (=> bs!1936733 (not (= lambda!464695 lambda!464672))))

(declare-fun bs!1936739 () Bool)

(assert (= bs!1936739 (and b!7498449 b!7498354)))

(assert (=> bs!1936739 (not (= lambda!464695 lambda!464687))))

(declare-fun bs!1936740 () Bool)

(assert (= bs!1936740 (and b!7498449 b!7498365)))

(assert (=> bs!1936740 (= (and (= (reg!19981 lt!2630973) (reg!19981 lt!2630964)) (= lt!2630973 lt!2630964)) (= lambda!464695 lambda!464690))))

(assert (=> b!7498449 true))

(assert (=> b!7498449 true))

(declare-fun bs!1936742 () Bool)

(declare-fun b!7498453 () Bool)

(assert (= bs!1936742 (and b!7498453 d!2302112)))

(declare-fun lambda!464697 () Int)

(assert (=> bs!1936742 (not (= lambda!464697 lambda!464677))))

(declare-fun bs!1936744 () Bool)

(assert (= bs!1936744 (and b!7498453 b!7498449)))

(assert (=> bs!1936744 (not (= lambda!464697 lambda!464695))))

(declare-fun bs!1936745 () Bool)

(assert (= bs!1936745 (and b!7498453 b!7497995)))

(assert (=> bs!1936745 (not (= lambda!464697 lambda!464650))))

(declare-fun bs!1936746 () Bool)

(assert (= bs!1936746 (and b!7498453 b!7498399)))

(assert (=> bs!1936746 (not (= lambda!464697 lambda!464692))))

(declare-fun bs!1936747 () Bool)

(assert (= bs!1936747 (and b!7498453 b!7497978)))

(assert (=> bs!1936747 (= (and (= (regOne!39816 lt!2630973) lt!2630958) (= (regTwo!39816 lt!2630973) rTail!78)) (= lambda!464697 lambda!464649))))

(declare-fun bs!1936748 () Bool)

(assert (= bs!1936748 (and b!7498453 d!2302122)))

(assert (=> bs!1936748 (= (and (= (regOne!39816 lt!2630973) lt!2630958) (= (regTwo!39816 lt!2630973) rTail!78)) (= lambda!464697 lambda!464679))))

(assert (=> bs!1936748 (not (= lambda!464697 lambda!464678))))

(assert (=> bs!1936747 (not (= lambda!464697 lambda!464648))))

(declare-fun bs!1936749 () Bool)

(assert (= bs!1936749 (and b!7498453 d!2302092)))

(assert (=> bs!1936749 (= (and (= (regOne!39816 lt!2630973) r2!5783) (= (regTwo!39816 lt!2630973) rTail!78)) (= lambda!464697 lambda!464673))))

(declare-fun bs!1936750 () Bool)

(assert (= bs!1936750 (and b!7498453 b!7498403)))

(assert (=> bs!1936750 (= (and (= (regOne!39816 lt!2630973) (regOne!39816 lt!2630970)) (= (regTwo!39816 lt!2630973) (regTwo!39816 lt!2630970))) (= lambda!464697 lambda!464693))))

(assert (=> bs!1936745 (= (and (= (regOne!39816 lt!2630973) r2!5783) (= (regTwo!39816 lt!2630973) rTail!78)) (= lambda!464697 lambda!464651))))

(declare-fun bs!1936751 () Bool)

(assert (= bs!1936751 (and b!7498453 d!2302098)))

(assert (=> bs!1936751 (not (= lambda!464697 lambda!464676))))

(declare-fun bs!1936752 () Bool)

(assert (= bs!1936752 (and b!7498453 b!7498369)))

(assert (=> bs!1936752 (= (and (= (regOne!39816 lt!2630973) (regOne!39816 lt!2630964)) (= (regTwo!39816 lt!2630973) (regTwo!39816 lt!2630964))) (= lambda!464697 lambda!464691))))

(declare-fun bs!1936753 () Bool)

(assert (= bs!1936753 (and b!7498453 b!7498350)))

(assert (=> bs!1936753 (not (= lambda!464697 lambda!464686))))

(assert (=> bs!1936749 (not (= lambda!464697 lambda!464672))))

(declare-fun bs!1936754 () Bool)

(assert (= bs!1936754 (and b!7498453 b!7498354)))

(assert (=> bs!1936754 (= (and (= (regOne!39816 lt!2630973) (regOne!39816 lt!2630968)) (= (regTwo!39816 lt!2630973) (regTwo!39816 lt!2630968))) (= lambda!464697 lambda!464687))))

(declare-fun bs!1936755 () Bool)

(assert (= bs!1936755 (and b!7498453 b!7498365)))

(assert (=> bs!1936755 (not (= lambda!464697 lambda!464690))))

(assert (=> b!7498453 true))

(assert (=> b!7498453 true))

(declare-fun e!4470732 () Bool)

(declare-fun call!688336 () Bool)

(assert (=> b!7498449 (= e!4470732 call!688336)))

(declare-fun b!7498450 () Bool)

(declare-fun e!4470733 () Bool)

(declare-fun e!4470731 () Bool)

(assert (=> b!7498450 (= e!4470733 e!4470731)))

(declare-fun c!1384360 () Bool)

(assert (=> b!7498450 (= c!1384360 (is-Star!19652 lt!2630973))))

(declare-fun b!7498451 () Bool)

(declare-fun e!4470729 () Bool)

(assert (=> b!7498451 (= e!4470729 (= s!13591 (Cons!72242 (c!1384275 lt!2630973) Nil!72242)))))

(declare-fun bm!688330 () Bool)

(declare-fun call!688335 () Bool)

(assert (=> bm!688330 (= call!688335 (isEmpty!41282 s!13591))))

(declare-fun b!7498452 () Bool)

(declare-fun e!4470730 () Bool)

(assert (=> b!7498452 (= e!4470733 e!4470730)))

(declare-fun res!3008036 () Bool)

(assert (=> b!7498452 (= res!3008036 (matchRSpec!4329 (regOne!39817 lt!2630973) s!13591))))

(assert (=> b!7498452 (=> res!3008036 e!4470730)))

(assert (=> b!7498453 (= e!4470731 call!688336)))

(declare-fun b!7498454 () Bool)

(declare-fun e!4470728 () Bool)

(assert (=> b!7498454 (= e!4470728 call!688335)))

(declare-fun b!7498455 () Bool)

(assert (=> b!7498455 (= e!4470730 (matchRSpec!4329 (regTwo!39817 lt!2630973) s!13591))))

(declare-fun b!7498457 () Bool)

(declare-fun c!1384362 () Bool)

(assert (=> b!7498457 (= c!1384362 (is-Union!19652 lt!2630973))))

(assert (=> b!7498457 (= e!4470729 e!4470733)))

(declare-fun bm!688331 () Bool)

(assert (=> bm!688331 (= call!688336 (Exists!4269 (ite c!1384360 lambda!464695 lambda!464697)))))

(declare-fun b!7498458 () Bool)

(declare-fun res!3008034 () Bool)

(assert (=> b!7498458 (=> res!3008034 e!4470732)))

(assert (=> b!7498458 (= res!3008034 call!688335)))

(assert (=> b!7498458 (= e!4470731 e!4470732)))

(declare-fun b!7498459 () Bool)

(declare-fun e!4470727 () Bool)

(assert (=> b!7498459 (= e!4470728 e!4470727)))

(declare-fun res!3008035 () Bool)

(assert (=> b!7498459 (= res!3008035 (not (is-EmptyLang!19652 lt!2630973)))))

(assert (=> b!7498459 (=> (not res!3008035) (not e!4470727))))

(declare-fun b!7498456 () Bool)

(declare-fun c!1384361 () Bool)

(assert (=> b!7498456 (= c!1384361 (is-ElementMatch!19652 lt!2630973))))

(assert (=> b!7498456 (= e!4470727 e!4470729)))

(declare-fun d!2302156 () Bool)

(declare-fun c!1384363 () Bool)

(assert (=> d!2302156 (= c!1384363 (is-EmptyExpr!19652 lt!2630973))))

(assert (=> d!2302156 (= (matchRSpec!4329 lt!2630973 s!13591) e!4470728)))

(assert (= (and d!2302156 c!1384363) b!7498454))

(assert (= (and d!2302156 (not c!1384363)) b!7498459))

(assert (= (and b!7498459 res!3008035) b!7498456))

(assert (= (and b!7498456 c!1384361) b!7498451))

(assert (= (and b!7498456 (not c!1384361)) b!7498457))

(assert (= (and b!7498457 c!1384362) b!7498452))

(assert (= (and b!7498457 (not c!1384362)) b!7498450))

(assert (= (and b!7498452 (not res!3008036)) b!7498455))

(assert (= (and b!7498450 c!1384360) b!7498458))

(assert (= (and b!7498450 (not c!1384360)) b!7498453))

(assert (= (and b!7498458 (not res!3008034)) b!7498449))

(assert (= (or b!7498449 b!7498453) bm!688331))

(assert (= (or b!7498454 b!7498458) bm!688330))

(assert (=> bm!688330 m!8081256))

(declare-fun m!8081332 () Bool)

(assert (=> b!7498452 m!8081332))

(declare-fun m!8081334 () Bool)

(assert (=> b!7498455 m!8081334))

(declare-fun m!8081336 () Bool)

(assert (=> bm!688331 m!8081336))

(assert (=> b!7497997 d!2302156))

(declare-fun bm!688332 () Bool)

(declare-fun call!688338 () Bool)

(declare-fun c!1384364 () Bool)

(assert (=> bm!688332 (= call!688338 (validRegex!10166 (ite c!1384364 (regTwo!39817 rTail!78) (regTwo!39816 rTail!78))))))

(declare-fun b!7498460 () Bool)

(declare-fun e!4470736 () Bool)

(declare-fun e!4470738 () Bool)

(assert (=> b!7498460 (= e!4470736 e!4470738)))

(assert (=> b!7498460 (= c!1384364 (is-Union!19652 rTail!78))))

(declare-fun b!7498461 () Bool)

(declare-fun e!4470735 () Bool)

(declare-fun e!4470740 () Bool)

(assert (=> b!7498461 (= e!4470735 e!4470740)))

(declare-fun res!3008039 () Bool)

(assert (=> b!7498461 (=> (not res!3008039) (not e!4470740))))

(declare-fun call!688337 () Bool)

(assert (=> b!7498461 (= res!3008039 call!688337)))

(declare-fun b!7498462 () Bool)

(declare-fun e!4470734 () Bool)

(assert (=> b!7498462 (= e!4470736 e!4470734)))

(declare-fun res!3008037 () Bool)

(assert (=> b!7498462 (= res!3008037 (not (nullable!8588 (reg!19981 rTail!78))))))

(assert (=> b!7498462 (=> (not res!3008037) (not e!4470734))))

(declare-fun bm!688333 () Bool)

(declare-fun c!1384365 () Bool)

(declare-fun call!688339 () Bool)

(assert (=> bm!688333 (= call!688339 (validRegex!10166 (ite c!1384365 (reg!19981 rTail!78) (ite c!1384364 (regOne!39817 rTail!78) (regOne!39816 rTail!78)))))))

(declare-fun b!7498463 () Bool)

(assert (=> b!7498463 (= e!4470740 call!688338)))

(declare-fun b!7498464 () Bool)

(declare-fun res!3008038 () Bool)

(declare-fun e!4470737 () Bool)

(assert (=> b!7498464 (=> (not res!3008038) (not e!4470737))))

(assert (=> b!7498464 (= res!3008038 call!688337)))

(assert (=> b!7498464 (= e!4470738 e!4470737)))

(declare-fun b!7498465 () Bool)

(assert (=> b!7498465 (= e!4470734 call!688339)))

(declare-fun b!7498466 () Bool)

(declare-fun e!4470739 () Bool)

(assert (=> b!7498466 (= e!4470739 e!4470736)))

(assert (=> b!7498466 (= c!1384365 (is-Star!19652 rTail!78))))

(declare-fun bm!688334 () Bool)

(assert (=> bm!688334 (= call!688337 call!688339)))

(declare-fun d!2302160 () Bool)

(declare-fun res!3008040 () Bool)

(assert (=> d!2302160 (=> res!3008040 e!4470739)))

(assert (=> d!2302160 (= res!3008040 (is-ElementMatch!19652 rTail!78))))

(assert (=> d!2302160 (= (validRegex!10166 rTail!78) e!4470739)))

(declare-fun b!7498467 () Bool)

(assert (=> b!7498467 (= e!4470737 call!688338)))

(declare-fun b!7498468 () Bool)

(declare-fun res!3008041 () Bool)

(assert (=> b!7498468 (=> res!3008041 e!4470735)))

(assert (=> b!7498468 (= res!3008041 (not (is-Concat!28497 rTail!78)))))

(assert (=> b!7498468 (= e!4470738 e!4470735)))

(assert (= (and d!2302160 (not res!3008040)) b!7498466))

(assert (= (and b!7498466 c!1384365) b!7498462))

(assert (= (and b!7498466 (not c!1384365)) b!7498460))

(assert (= (and b!7498462 res!3008037) b!7498465))

(assert (= (and b!7498460 c!1384364) b!7498464))

(assert (= (and b!7498460 (not c!1384364)) b!7498468))

(assert (= (and b!7498464 res!3008038) b!7498467))

(assert (= (and b!7498468 (not res!3008041)) b!7498461))

(assert (= (and b!7498461 res!3008039) b!7498463))

(assert (= (or b!7498467 b!7498463) bm!688332))

(assert (= (or b!7498464 b!7498461) bm!688334))

(assert (= (or b!7498465 bm!688334) bm!688333))

(declare-fun m!8081340 () Bool)

(assert (=> bm!688332 m!8081340))

(declare-fun m!8081342 () Bool)

(assert (=> b!7498462 m!8081342))

(declare-fun m!8081344 () Bool)

(assert (=> bm!688333 m!8081344))

(assert (=> b!7497991 d!2302160))

(declare-fun b!7498490 () Bool)

(declare-fun e!4470750 () Bool)

(assert (=> b!7498490 (= e!4470750 tp_is_empty!49593)))

(declare-fun b!7498493 () Bool)

(declare-fun tp!2176619 () Bool)

(declare-fun tp!2176618 () Bool)

(assert (=> b!7498493 (= e!4470750 (and tp!2176619 tp!2176618))))

(assert (=> b!7497985 (= tp!2176551 e!4470750)))

(declare-fun b!7498491 () Bool)

(declare-fun tp!2176620 () Bool)

(declare-fun tp!2176617 () Bool)

(assert (=> b!7498491 (= e!4470750 (and tp!2176620 tp!2176617))))

(declare-fun b!7498492 () Bool)

(declare-fun tp!2176616 () Bool)

(assert (=> b!7498492 (= e!4470750 tp!2176616)))

(assert (= (and b!7497985 (is-ElementMatch!19652 (regOne!39817 r1!5845))) b!7498490))

(assert (= (and b!7497985 (is-Concat!28497 (regOne!39817 r1!5845))) b!7498491))

(assert (= (and b!7497985 (is-Star!19652 (regOne!39817 r1!5845))) b!7498492))

(assert (= (and b!7497985 (is-Union!19652 (regOne!39817 r1!5845))) b!7498493))

(declare-fun b!7498494 () Bool)

(declare-fun e!4470751 () Bool)

(assert (=> b!7498494 (= e!4470751 tp_is_empty!49593)))

(declare-fun b!7498497 () Bool)

(declare-fun tp!2176624 () Bool)

(declare-fun tp!2176623 () Bool)

(assert (=> b!7498497 (= e!4470751 (and tp!2176624 tp!2176623))))

(assert (=> b!7497985 (= tp!2176547 e!4470751)))

(declare-fun b!7498495 () Bool)

(declare-fun tp!2176625 () Bool)

(declare-fun tp!2176622 () Bool)

(assert (=> b!7498495 (= e!4470751 (and tp!2176625 tp!2176622))))

(declare-fun b!7498496 () Bool)

(declare-fun tp!2176621 () Bool)

(assert (=> b!7498496 (= e!4470751 tp!2176621)))

(assert (= (and b!7497985 (is-ElementMatch!19652 (regTwo!39817 r1!5845))) b!7498494))

(assert (= (and b!7497985 (is-Concat!28497 (regTwo!39817 r1!5845))) b!7498495))

(assert (= (and b!7497985 (is-Star!19652 (regTwo!39817 r1!5845))) b!7498496))

(assert (= (and b!7497985 (is-Union!19652 (regTwo!39817 r1!5845))) b!7498497))

(declare-fun b!7498502 () Bool)

(declare-fun e!4470754 () Bool)

(declare-fun tp!2176628 () Bool)

(assert (=> b!7498502 (= e!4470754 (and tp_is_empty!49593 tp!2176628))))

(assert (=> b!7497984 (= tp!2176549 e!4470754)))

(assert (= (and b!7497984 (is-Cons!72242 (t!386935 s!13591))) b!7498502))

(declare-fun b!7498503 () Bool)

(declare-fun e!4470755 () Bool)

(assert (=> b!7498503 (= e!4470755 tp_is_empty!49593)))

(declare-fun b!7498506 () Bool)

(declare-fun tp!2176632 () Bool)

(declare-fun tp!2176631 () Bool)

(assert (=> b!7498506 (= e!4470755 (and tp!2176632 tp!2176631))))

(assert (=> b!7497994 (= tp!2176552 e!4470755)))

(declare-fun b!7498504 () Bool)

(declare-fun tp!2176633 () Bool)

(declare-fun tp!2176630 () Bool)

(assert (=> b!7498504 (= e!4470755 (and tp!2176633 tp!2176630))))

(declare-fun b!7498505 () Bool)

(declare-fun tp!2176629 () Bool)

(assert (=> b!7498505 (= e!4470755 tp!2176629)))

(assert (= (and b!7497994 (is-ElementMatch!19652 (reg!19981 rTail!78))) b!7498503))

(assert (= (and b!7497994 (is-Concat!28497 (reg!19981 rTail!78))) b!7498504))

(assert (= (and b!7497994 (is-Star!19652 (reg!19981 rTail!78))) b!7498505))

(assert (= (and b!7497994 (is-Union!19652 (reg!19981 rTail!78))) b!7498506))

(declare-fun b!7498507 () Bool)

(declare-fun e!4470756 () Bool)

(assert (=> b!7498507 (= e!4470756 tp_is_empty!49593)))

(declare-fun b!7498510 () Bool)

(declare-fun tp!2176637 () Bool)

(declare-fun tp!2176636 () Bool)

(assert (=> b!7498510 (= e!4470756 (and tp!2176637 tp!2176636))))

(assert (=> b!7497988 (= tp!2176555 e!4470756)))

(declare-fun b!7498508 () Bool)

(declare-fun tp!2176638 () Bool)

(declare-fun tp!2176635 () Bool)

(assert (=> b!7498508 (= e!4470756 (and tp!2176638 tp!2176635))))

(declare-fun b!7498509 () Bool)

(declare-fun tp!2176634 () Bool)

(assert (=> b!7498509 (= e!4470756 tp!2176634)))

(assert (= (and b!7497988 (is-ElementMatch!19652 (regOne!39817 rTail!78))) b!7498507))

(assert (= (and b!7497988 (is-Concat!28497 (regOne!39817 rTail!78))) b!7498508))

(assert (= (and b!7497988 (is-Star!19652 (regOne!39817 rTail!78))) b!7498509))

(assert (= (and b!7497988 (is-Union!19652 (regOne!39817 rTail!78))) b!7498510))

(declare-fun b!7498511 () Bool)

(declare-fun e!4470757 () Bool)

(assert (=> b!7498511 (= e!4470757 tp_is_empty!49593)))

(declare-fun b!7498514 () Bool)

(declare-fun tp!2176642 () Bool)

(declare-fun tp!2176641 () Bool)

(assert (=> b!7498514 (= e!4470757 (and tp!2176642 tp!2176641))))

(assert (=> b!7497988 (= tp!2176542 e!4470757)))

(declare-fun b!7498512 () Bool)

(declare-fun tp!2176643 () Bool)

(declare-fun tp!2176640 () Bool)

(assert (=> b!7498512 (= e!4470757 (and tp!2176643 tp!2176640))))

(declare-fun b!7498513 () Bool)

(declare-fun tp!2176639 () Bool)

(assert (=> b!7498513 (= e!4470757 tp!2176639)))

(assert (= (and b!7497988 (is-ElementMatch!19652 (regTwo!39817 rTail!78))) b!7498511))

(assert (= (and b!7497988 (is-Concat!28497 (regTwo!39817 rTail!78))) b!7498512))

(assert (= (and b!7497988 (is-Star!19652 (regTwo!39817 rTail!78))) b!7498513))

(assert (= (and b!7497988 (is-Union!19652 (regTwo!39817 rTail!78))) b!7498514))

(declare-fun b!7498515 () Bool)

(declare-fun e!4470758 () Bool)

(assert (=> b!7498515 (= e!4470758 tp_is_empty!49593)))

(declare-fun b!7498518 () Bool)

(declare-fun tp!2176647 () Bool)

(declare-fun tp!2176646 () Bool)

(assert (=> b!7498518 (= e!4470758 (and tp!2176647 tp!2176646))))

(assert (=> b!7497983 (= tp!2176544 e!4470758)))

(declare-fun b!7498516 () Bool)

(declare-fun tp!2176648 () Bool)

(declare-fun tp!2176645 () Bool)

(assert (=> b!7498516 (= e!4470758 (and tp!2176648 tp!2176645))))

(declare-fun b!7498517 () Bool)

(declare-fun tp!2176644 () Bool)

(assert (=> b!7498517 (= e!4470758 tp!2176644)))

(assert (= (and b!7497983 (is-ElementMatch!19652 (reg!19981 r2!5783))) b!7498515))

(assert (= (and b!7497983 (is-Concat!28497 (reg!19981 r2!5783))) b!7498516))

(assert (= (and b!7497983 (is-Star!19652 (reg!19981 r2!5783))) b!7498517))

(assert (= (and b!7497983 (is-Union!19652 (reg!19981 r2!5783))) b!7498518))

(declare-fun b!7498519 () Bool)

(declare-fun e!4470759 () Bool)

(assert (=> b!7498519 (= e!4470759 tp_is_empty!49593)))

(declare-fun b!7498522 () Bool)

(declare-fun tp!2176652 () Bool)

(declare-fun tp!2176651 () Bool)

(assert (=> b!7498522 (= e!4470759 (and tp!2176652 tp!2176651))))

(assert (=> b!7497992 (= tp!2176556 e!4470759)))

(declare-fun b!7498520 () Bool)

(declare-fun tp!2176653 () Bool)

(declare-fun tp!2176650 () Bool)

(assert (=> b!7498520 (= e!4470759 (and tp!2176653 tp!2176650))))

(declare-fun b!7498521 () Bool)

(declare-fun tp!2176649 () Bool)

(assert (=> b!7498521 (= e!4470759 tp!2176649)))

(assert (= (and b!7497992 (is-ElementMatch!19652 (regOne!39816 r2!5783))) b!7498519))

(assert (= (and b!7497992 (is-Concat!28497 (regOne!39816 r2!5783))) b!7498520))

(assert (= (and b!7497992 (is-Star!19652 (regOne!39816 r2!5783))) b!7498521))

(assert (= (and b!7497992 (is-Union!19652 (regOne!39816 r2!5783))) b!7498522))

(declare-fun b!7498523 () Bool)

(declare-fun e!4470760 () Bool)

(assert (=> b!7498523 (= e!4470760 tp_is_empty!49593)))

(declare-fun b!7498526 () Bool)

(declare-fun tp!2176657 () Bool)

(declare-fun tp!2176656 () Bool)

(assert (=> b!7498526 (= e!4470760 (and tp!2176657 tp!2176656))))

(assert (=> b!7497992 (= tp!2176545 e!4470760)))

(declare-fun b!7498524 () Bool)

(declare-fun tp!2176658 () Bool)

(declare-fun tp!2176655 () Bool)

(assert (=> b!7498524 (= e!4470760 (and tp!2176658 tp!2176655))))

(declare-fun b!7498525 () Bool)

(declare-fun tp!2176654 () Bool)

(assert (=> b!7498525 (= e!4470760 tp!2176654)))

(assert (= (and b!7497992 (is-ElementMatch!19652 (regTwo!39816 r2!5783))) b!7498523))

(assert (= (and b!7497992 (is-Concat!28497 (regTwo!39816 r2!5783))) b!7498524))

(assert (= (and b!7497992 (is-Star!19652 (regTwo!39816 r2!5783))) b!7498525))

(assert (= (and b!7497992 (is-Union!19652 (regTwo!39816 r2!5783))) b!7498526))

(declare-fun b!7498527 () Bool)

(declare-fun e!4470761 () Bool)

(assert (=> b!7498527 (= e!4470761 tp_is_empty!49593)))

(declare-fun b!7498530 () Bool)

(declare-fun tp!2176662 () Bool)

(declare-fun tp!2176661 () Bool)

(assert (=> b!7498530 (= e!4470761 (and tp!2176662 tp!2176661))))

(assert (=> b!7497987 (= tp!2176554 e!4470761)))

(declare-fun b!7498528 () Bool)

(declare-fun tp!2176663 () Bool)

(declare-fun tp!2176660 () Bool)

(assert (=> b!7498528 (= e!4470761 (and tp!2176663 tp!2176660))))

(declare-fun b!7498529 () Bool)

(declare-fun tp!2176659 () Bool)

(assert (=> b!7498529 (= e!4470761 tp!2176659)))

(assert (= (and b!7497987 (is-ElementMatch!19652 (reg!19981 r1!5845))) b!7498527))

(assert (= (and b!7497987 (is-Concat!28497 (reg!19981 r1!5845))) b!7498528))

(assert (= (and b!7497987 (is-Star!19652 (reg!19981 r1!5845))) b!7498529))

(assert (= (and b!7497987 (is-Union!19652 (reg!19981 r1!5845))) b!7498530))

(declare-fun b!7498531 () Bool)

(declare-fun e!4470762 () Bool)

(assert (=> b!7498531 (= e!4470762 tp_is_empty!49593)))

(declare-fun b!7498534 () Bool)

(declare-fun tp!2176667 () Bool)

(declare-fun tp!2176666 () Bool)

(assert (=> b!7498534 (= e!4470762 (and tp!2176667 tp!2176666))))

(assert (=> b!7497986 (= tp!2176548 e!4470762)))

(declare-fun b!7498532 () Bool)

(declare-fun tp!2176668 () Bool)

(declare-fun tp!2176665 () Bool)

(assert (=> b!7498532 (= e!4470762 (and tp!2176668 tp!2176665))))

(declare-fun b!7498533 () Bool)

(declare-fun tp!2176664 () Bool)

(assert (=> b!7498533 (= e!4470762 tp!2176664)))

(assert (= (and b!7497986 (is-ElementMatch!19652 (regOne!39816 rTail!78))) b!7498531))

(assert (= (and b!7497986 (is-Concat!28497 (regOne!39816 rTail!78))) b!7498532))

(assert (= (and b!7497986 (is-Star!19652 (regOne!39816 rTail!78))) b!7498533))

(assert (= (and b!7497986 (is-Union!19652 (regOne!39816 rTail!78))) b!7498534))

(declare-fun b!7498535 () Bool)

(declare-fun e!4470763 () Bool)

(assert (=> b!7498535 (= e!4470763 tp_is_empty!49593)))

(declare-fun b!7498538 () Bool)

(declare-fun tp!2176672 () Bool)

(declare-fun tp!2176671 () Bool)

(assert (=> b!7498538 (= e!4470763 (and tp!2176672 tp!2176671))))

(assert (=> b!7497986 (= tp!2176557 e!4470763)))

(declare-fun b!7498536 () Bool)

(declare-fun tp!2176673 () Bool)

(declare-fun tp!2176670 () Bool)

(assert (=> b!7498536 (= e!4470763 (and tp!2176673 tp!2176670))))

(declare-fun b!7498537 () Bool)

(declare-fun tp!2176669 () Bool)

(assert (=> b!7498537 (= e!4470763 tp!2176669)))

(assert (= (and b!7497986 (is-ElementMatch!19652 (regTwo!39816 rTail!78))) b!7498535))

(assert (= (and b!7497986 (is-Concat!28497 (regTwo!39816 rTail!78))) b!7498536))

(assert (= (and b!7497986 (is-Star!19652 (regTwo!39816 rTail!78))) b!7498537))

(assert (= (and b!7497986 (is-Union!19652 (regTwo!39816 rTail!78))) b!7498538))

(declare-fun b!7498539 () Bool)

(declare-fun e!4470764 () Bool)

(assert (=> b!7498539 (= e!4470764 tp_is_empty!49593)))

(declare-fun b!7498542 () Bool)

(declare-fun tp!2176677 () Bool)

(declare-fun tp!2176676 () Bool)

(assert (=> b!7498542 (= e!4470764 (and tp!2176677 tp!2176676))))

(assert (=> b!7497996 (= tp!2176550 e!4470764)))

(declare-fun b!7498540 () Bool)

(declare-fun tp!2176678 () Bool)

(declare-fun tp!2176675 () Bool)

(assert (=> b!7498540 (= e!4470764 (and tp!2176678 tp!2176675))))

(declare-fun b!7498541 () Bool)

(declare-fun tp!2176674 () Bool)

(assert (=> b!7498541 (= e!4470764 tp!2176674)))

(assert (= (and b!7497996 (is-ElementMatch!19652 (regOne!39816 r1!5845))) b!7498539))

(assert (= (and b!7497996 (is-Concat!28497 (regOne!39816 r1!5845))) b!7498540))

(assert (= (and b!7497996 (is-Star!19652 (regOne!39816 r1!5845))) b!7498541))

(assert (= (and b!7497996 (is-Union!19652 (regOne!39816 r1!5845))) b!7498542))

(declare-fun b!7498543 () Bool)

(declare-fun e!4470765 () Bool)

(assert (=> b!7498543 (= e!4470765 tp_is_empty!49593)))

(declare-fun b!7498546 () Bool)

(declare-fun tp!2176682 () Bool)

(declare-fun tp!2176681 () Bool)

(assert (=> b!7498546 (= e!4470765 (and tp!2176682 tp!2176681))))

(assert (=> b!7497996 (= tp!2176546 e!4470765)))

(declare-fun b!7498544 () Bool)

(declare-fun tp!2176683 () Bool)

(declare-fun tp!2176680 () Bool)

(assert (=> b!7498544 (= e!4470765 (and tp!2176683 tp!2176680))))

(declare-fun b!7498545 () Bool)

(declare-fun tp!2176679 () Bool)

(assert (=> b!7498545 (= e!4470765 tp!2176679)))

(assert (= (and b!7497996 (is-ElementMatch!19652 (regTwo!39816 r1!5845))) b!7498543))

(assert (= (and b!7497996 (is-Concat!28497 (regTwo!39816 r1!5845))) b!7498544))

(assert (= (and b!7497996 (is-Star!19652 (regTwo!39816 r1!5845))) b!7498545))

(assert (= (and b!7497996 (is-Union!19652 (regTwo!39816 r1!5845))) b!7498546))

(declare-fun b!7498547 () Bool)

(declare-fun e!4470766 () Bool)

(assert (=> b!7498547 (= e!4470766 tp_is_empty!49593)))

(declare-fun b!7498550 () Bool)

(declare-fun tp!2176687 () Bool)

(declare-fun tp!2176686 () Bool)

(assert (=> b!7498550 (= e!4470766 (and tp!2176687 tp!2176686))))

(assert (=> b!7497980 (= tp!2176543 e!4470766)))

(declare-fun b!7498548 () Bool)

(declare-fun tp!2176688 () Bool)

(declare-fun tp!2176685 () Bool)

(assert (=> b!7498548 (= e!4470766 (and tp!2176688 tp!2176685))))

(declare-fun b!7498549 () Bool)

(declare-fun tp!2176684 () Bool)

(assert (=> b!7498549 (= e!4470766 tp!2176684)))

(assert (= (and b!7497980 (is-ElementMatch!19652 (regOne!39817 r2!5783))) b!7498547))

(assert (= (and b!7497980 (is-Concat!28497 (regOne!39817 r2!5783))) b!7498548))

(assert (= (and b!7497980 (is-Star!19652 (regOne!39817 r2!5783))) b!7498549))

(assert (= (and b!7497980 (is-Union!19652 (regOne!39817 r2!5783))) b!7498550))

(declare-fun b!7498551 () Bool)

(declare-fun e!4470767 () Bool)

(assert (=> b!7498551 (= e!4470767 tp_is_empty!49593)))

(declare-fun b!7498554 () Bool)

(declare-fun tp!2176692 () Bool)

(declare-fun tp!2176691 () Bool)

(assert (=> b!7498554 (= e!4470767 (and tp!2176692 tp!2176691))))

(assert (=> b!7497980 (= tp!2176553 e!4470767)))

(declare-fun b!7498552 () Bool)

(declare-fun tp!2176693 () Bool)

(declare-fun tp!2176690 () Bool)

(assert (=> b!7498552 (= e!4470767 (and tp!2176693 tp!2176690))))

(declare-fun b!7498553 () Bool)

(declare-fun tp!2176689 () Bool)

(assert (=> b!7498553 (= e!4470767 tp!2176689)))

(assert (= (and b!7497980 (is-ElementMatch!19652 (regTwo!39817 r2!5783))) b!7498551))

(assert (= (and b!7497980 (is-Concat!28497 (regTwo!39817 r2!5783))) b!7498552))

(assert (= (and b!7497980 (is-Star!19652 (regTwo!39817 r2!5783))) b!7498553))

(assert (= (and b!7497980 (is-Union!19652 (regTwo!39817 r2!5783))) b!7498554))

(push 1)

(assert (not b!7498513))

(assert (not b!7498146))

(assert (not d!2302134))

(assert (not b!7498379))

(assert (not b!7498554))

(assert (not d!2302120))

(assert (not b!7498201))

(assert (not b!7498447))

(assert (not d!2302118))

(assert (not d!2302096))

(assert (not bm!688330))

(assert (not bm!688314))

(assert (not b!7498526))

(assert (not d!2302116))

(assert (not b!7498421))

(assert (not b!7498440))

(assert (not bm!688302))

(assert (not bm!688321))

(assert (not b!7498552))

(assert (not b!7498196))

(assert (not b!7498549))

(assert (not b!7498496))

(assert (not b!7498505))

(assert (not b!7498510))

(assert (not b!7498236))

(assert (not b!7498207))

(assert (not b!7498426))

(assert (not d!2302150))

(assert (not b!7498492))

(assert (not b!7498200))

(assert (not bm!688312))

(assert (not bm!688313))

(assert (not d!2302100))

(assert (not b!7498540))

(assert (not d!2302094))

(assert (not bm!688332))

(assert (not b!7498548))

(assert (not b!7498206))

(assert (not b!7498392))

(assert (not d!2302154))

(assert (not b!7498521))

(assert (not b!7498276))

(assert (not b!7498520))

(assert (not b!7498439))

(assert (not b!7498546))

(assert (not b!7498376))

(assert (not b!7498538))

(assert (not b!7498530))

(assert (not bm!688325))

(assert (not bm!688305))

(assert (not b!7498356))

(assert (not b!7498371))

(assert (not b!7498137))

(assert (not b!7498522))

(assert (not b!7498542))

(assert (not d!2302104))

(assert (not b!7498545))

(assert (not b!7498452))

(assert (not b!7498353))

(assert (not d!2302148))

(assert (not bm!688324))

(assert (not b!7498233))

(assert (not b!7498493))

(assert (not b!7498208))

(assert (not b!7498541))

(assert (not d!2302098))

(assert (not b!7498269))

(assert (not b!7498388))

(assert (not b!7498279))

(assert (not b!7498281))

(assert (not b!7498380))

(assert (not b!7498260))

(assert (not b!7498199))

(assert (not b!7498506))

(assert (not b!7498238))

(assert (not b!7498387))

(assert (not d!2302092))

(assert (not b!7498134))

(assert (not b!7498537))

(assert (not b!7498402))

(assert (not b!7498502))

(assert (not d!2302106))

(assert (not bm!688318))

(assert (not b!7498516))

(assert (not b!7498203))

(assert (not b!7498438))

(assert (not b!7498239))

(assert (not bm!688315))

(assert (not b!7498536))

(assert (not b!7498495))

(assert (not b!7498405))

(assert (not b!7498504))

(assert (not b!7498528))

(assert (not bm!688331))

(assert (not b!7498514))

(assert (not d!2302140))

(assert (not b!7498532))

(assert (not b!7498524))

(assert (not b!7498288))

(assert (not b!7498509))

(assert (not bm!688329))

(assert (not b!7498287))

(assert (not b!7498215))

(assert (not b!7498512))

(assert (not d!2302152))

(assert (not b!7498425))

(assert (not b!7498435))

(assert (not b!7498462))

(assert (not b!7498214))

(assert (not b!7498139))

(assert (not b!7498529))

(assert (not b!7498237))

(assert (not b!7498455))

(assert (not bm!688322))

(assert (not b!7498368))

(assert tp_is_empty!49593)

(assert (not bm!688290))

(assert (not bm!688328))

(assert (not bm!688293))

(assert (not b!7498446))

(assert (not bm!688304))

(assert (not d!2302122))

(assert (not d!2302142))

(assert (not b!7498145))

(assert (not b!7498381))

(assert (not b!7498497))

(assert (not bm!688333))

(assert (not b!7498518))

(assert (not d!2302110))

(assert (not d!2302112))

(assert (not b!7498202))

(assert (not b!7498508))

(assert (not b!7498550))

(assert (not b!7498517))

(assert (not b!7498544))

(assert (not b!7498533))

(assert (not b!7498432))

(assert (not d!2302132))

(assert (not bm!688301))

(assert (not b!7498433))

(assert (not b!7498138))

(assert (not b!7498280))

(assert (not b!7498534))

(assert (not b!7498424))

(assert (not b!7498491))

(assert (not d!2302114))

(assert (not b!7498525))

(assert (not bm!688307))

(assert (not b!7498553))

(assert (not b!7498198))

(assert (not b!7498235))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

