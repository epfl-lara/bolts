; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!747046 () Bool)

(assert start!747046)

(declare-fun b!7912151 () Bool)

(declare-fun b_free!135235 () Bool)

(declare-fun b_next!136025 () Bool)

(assert (=> b!7912151 (= b_free!135235 (not b_next!136025))))

(declare-fun tp!2356753 () Bool)

(declare-fun b_and!353591 () Bool)

(assert (=> b!7912151 (= tp!2356753 b_and!353591)))

(declare-fun b_free!135237 () Bool)

(declare-fun b_next!136027 () Bool)

(assert (=> b!7912151 (= b_free!135237 (not b_next!136027))))

(declare-fun tp!2356756 () Bool)

(declare-fun b_and!353593 () Bool)

(assert (=> b!7912151 (= tp!2356756 b_and!353593)))

(declare-fun b!7912147 () Bool)

(declare-fun res!3140424 () Bool)

(declare-fun e!4670521 () Bool)

(assert (=> b!7912147 (=> (not res!3140424) (not e!4670521))))

(declare-datatypes ((LexerInterface!8265 0))(
  ( (LexerInterfaceExt!8262 (__x!35265 Int)) (Lexer!8263) )
))
(declare-fun thiss!15815 () LexerInterface!8265)

(declare-datatypes ((String!83368 0))(
  ( (String!83369 (value!289133 String)) )
))
(declare-datatypes ((List!74507 0))(
  ( (Nil!74383) (Cons!74383 (h!80831 (_ BitVec 16)) (t!389944 List!74507)) )
))
(declare-datatypes ((C!43082 0))(
  ( (C!43083 (val!32005 Int)) )
))
(declare-datatypes ((List!74508 0))(
  ( (Nil!74384) (Cons!74384 (h!80832 C!43082) (t!389945 List!74508)) )
))
(declare-datatypes ((IArray!31755 0))(
  ( (IArray!31756 (innerList!15935 List!74508)) )
))
(declare-datatypes ((Conc!15847 0))(
  ( (Node!15847 (left!56775 Conc!15847) (right!57105 Conc!15847) (csize!31924 Int) (cheight!16058 Int)) (Leaf!30152 (xs!19229 IArray!31755) (csize!31925 Int)) (Empty!15847) )
))
(declare-datatypes ((BalanceConc!30812 0))(
  ( (BalanceConc!30813 (c!1451633 Conc!15847)) )
))
(declare-datatypes ((TokenValue!8989 0))(
  ( (FloatLiteralValue!17978 (text!63368 List!74507)) (TokenValueExt!8988 (__x!35266 Int)) (Broken!44945 (value!289134 List!74507)) (Object!9112) (End!8989) (Def!8989) (Underscore!8989) (Match!8989) (Else!8989) (Error!8989) (Case!8989) (If!8989) (Extends!8989) (Abstract!8989) (Class!8989) (Val!8989) (DelimiterValue!17978 (del!9049 List!74507)) (KeywordValue!8995 (value!289135 List!74507)) (CommentValue!17978 (value!289136 List!74507)) (WhitespaceValue!17978 (value!289137 List!74507)) (IndentationValue!8989 (value!289138 List!74507)) (String!83370) (Int32!8989) (Broken!44946 (value!289139 List!74507)) (Boolean!8990) (Unit!169457) (OperatorValue!8992 (op!9049 List!74507)) (IdentifierValue!17978 (value!289140 List!74507)) (IdentifierValue!17979 (value!289141 List!74507)) (WhitespaceValue!17979 (value!289142 List!74507)) (True!17978) (False!17978) (Broken!44947 (value!289143 List!74507)) (Broken!44948 (value!289144 List!74507)) (True!17979) (RightBrace!8989) (RightBracket!8989) (Colon!8989) (Null!8989) (Comma!8989) (LeftBracket!8989) (False!17979) (LeftBrace!8989) (ImaginaryLiteralValue!8989 (text!63369 List!74507)) (StringLiteralValue!26967 (value!289145 List!74507)) (EOFValue!8989 (value!289146 List!74507)) (IdentValue!8989 (value!289147 List!74507)) (DelimiterValue!17979 (value!289148 List!74507)) (DedentValue!8989 (value!289149 List!74507)) (NewLineValue!8989 (value!289150 List!74507)) (IntegerValue!26967 (value!289151 (_ BitVec 32)) (text!63370 List!74507)) (IntegerValue!26968 (value!289152 Int) (text!63371 List!74507)) (Times!8989) (Or!8989) (Equal!8989) (Minus!8989) (Broken!44949 (value!289153 List!74507)) (And!8989) (Div!8989) (LessEqual!8989) (Mod!8989) (Concat!30365) (Not!8989) (Plus!8989) (SpaceValue!8989 (value!289154 List!74507)) (IntegerValue!26969 (value!289155 Int) (text!63372 List!74507)) (StringLiteralValue!26968 (text!63373 List!74507)) (FloatLiteralValue!17979 (text!63374 List!74507)) (BytesLiteralValue!8989 (value!289156 List!74507)) (CommentValue!17979 (value!289157 List!74507)) (StringLiteralValue!26969 (value!289158 List!74507)) (ErrorTokenValue!8989 (msg!9050 List!74507)) )
))
(declare-datatypes ((Regex!21376 0))(
  ( (ElementMatch!21376 (c!1451634 C!43082)) (Concat!30366 (regOne!43264 Regex!21376) (regTwo!43264 Regex!21376)) (EmptyExpr!21376) (Star!21376 (reg!21705 Regex!21376)) (EmptyLang!21376) (Union!21376 (regOne!43265 Regex!21376) (regTwo!43265 Regex!21376)) )
))
(declare-datatypes ((TokenValueInjection!17286 0))(
  ( (TokenValueInjection!17287 (toValue!11730 Int) (toChars!11589 Int)) )
))
(declare-datatypes ((Rule!17146 0))(
  ( (Rule!17147 (regex!8673 Regex!21376) (tag!9537 String!83368) (isSeparator!8673 Bool) (transformation!8673 TokenValueInjection!17286)) )
))
(declare-fun rule!156 () Rule!17146)

(declare-fun ruleValid!3984 (LexerInterface!8265 Rule!17146) Bool)

(assert (=> b!7912147 (= res!3140424 (ruleValid!3984 thiss!15815 rule!156))))

(declare-fun b!7912148 () Bool)

(declare-fun tp!2356754 () Bool)

(declare-fun e!4670525 () Bool)

(declare-fun e!4670524 () Bool)

(declare-fun inv!95451 (String!83368) Bool)

(declare-fun inv!95454 (TokenValueInjection!17286) Bool)

(assert (=> b!7912148 (= e!4670525 (and tp!2356754 (inv!95451 (tag!9537 rule!156)) (inv!95454 (transformation!8673 rule!156)) e!4670524))))

(declare-fun res!3140425 () Bool)

(assert (=> start!747046 (=> (not res!3140425) (not e!4670521))))

(assert (=> start!747046 (= res!3140425 (is-Lexer!8263 thiss!15815))))

(assert (=> start!747046 e!4670521))

(assert (=> start!747046 true))

(assert (=> start!747046 e!4670525))

(declare-fun e!4670523 () Bool)

(assert (=> start!747046 e!4670523))

(declare-fun b!7912149 () Bool)

(declare-fun tp_is_empty!53127 () Bool)

(declare-fun tp!2356755 () Bool)

(assert (=> b!7912149 (= e!4670523 (and tp_is_empty!53127 tp!2356755))))

(declare-fun b!7912150 () Bool)

(declare-fun res!3140423 () Bool)

(assert (=> b!7912150 (=> (not res!3140423) (not e!4670521))))

(declare-fun input!1480 () List!74508)

(declare-fun isEmpty!42714 (List!74508) Bool)

(declare-datatypes ((tuple2!70458 0))(
  ( (tuple2!70459 (_1!38532 List!74508) (_2!38532 List!74508)) )
))
(declare-fun findLongestMatch!1966 (Regex!21376 List!74508) tuple2!70458)

(assert (=> b!7912150 (= res!3140423 (not (isEmpty!42714 (_1!38532 (findLongestMatch!1966 (regex!8673 rule!156) input!1480)))))))

(assert (=> b!7912151 (= e!4670524 (and tp!2356753 tp!2356756))))

(declare-fun b!7912152 () Bool)

(declare-fun validRegex!11680 (Regex!21376) Bool)

(assert (=> b!7912152 (= e!4670521 (not (validRegex!11680 (regex!8673 rule!156))))))

(assert (= (and start!747046 res!3140425) b!7912147))

(assert (= (and b!7912147 res!3140424) b!7912150))

(assert (= (and b!7912150 res!3140423) b!7912152))

(assert (= b!7912148 b!7912151))

(assert (= start!747046 b!7912148))

(assert (= (and start!747046 (is-Cons!74384 input!1480)) b!7912149))

(declare-fun m!8285740 () Bool)

(assert (=> b!7912147 m!8285740))

(declare-fun m!8285742 () Bool)

(assert (=> b!7912148 m!8285742))

(declare-fun m!8285744 () Bool)

(assert (=> b!7912148 m!8285744))

(declare-fun m!8285746 () Bool)

(assert (=> b!7912150 m!8285746))

(declare-fun m!8285748 () Bool)

(assert (=> b!7912150 m!8285748))

(declare-fun m!8285750 () Bool)

(assert (=> b!7912152 m!8285750))

(push 1)

(assert b_and!353591)

(assert (not b!7912147))

(assert (not b_next!136025))

(assert (not b!7912148))

(assert (not b_next!136027))

(assert (not b!7912150))

(assert (not b!7912149))

(assert (not b!7912152))

(assert b_and!353593)

(assert tp_is_empty!53127)

(check-sat)

(pop 1)

(push 1)

(assert b_and!353591)

(assert b_and!353593)

(assert (not b_next!136025))

(assert (not b_next!136027))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2360489 () Bool)

(declare-fun res!3140443 () Bool)

(declare-fun e!4670543 () Bool)

(assert (=> d!2360489 (=> (not res!3140443) (not e!4670543))))

(assert (=> d!2360489 (= res!3140443 (validRegex!11680 (regex!8673 rule!156)))))

(assert (=> d!2360489 (= (ruleValid!3984 thiss!15815 rule!156) e!4670543)))

(declare-fun b!7912175 () Bool)

(declare-fun res!3140444 () Bool)

(assert (=> b!7912175 (=> (not res!3140444) (not e!4670543))))

(declare-fun nullable!9515 (Regex!21376) Bool)

(assert (=> b!7912175 (= res!3140444 (not (nullable!9515 (regex!8673 rule!156))))))

(declare-fun b!7912176 () Bool)

(assert (=> b!7912176 (= e!4670543 (not (= (tag!9537 rule!156) (String!83369 ""))))))

(assert (= (and d!2360489 res!3140443) b!7912175))

(assert (= (and b!7912175 res!3140444) b!7912176))

(assert (=> d!2360489 m!8285750))

(declare-fun m!8285764 () Bool)

(assert (=> b!7912175 m!8285764))

(assert (=> b!7912147 d!2360489))

(declare-fun b!7912195 () Bool)

(declare-fun e!4670563 () Bool)

(declare-fun e!4670558 () Bool)

(assert (=> b!7912195 (= e!4670563 e!4670558)))

(declare-fun c!1451641 () Bool)

(assert (=> b!7912195 (= c!1451641 (is-Union!21376 (regex!8673 rule!156)))))

(declare-fun bm!733912 () Bool)

(declare-fun call!733918 () Bool)

(declare-fun c!1451642 () Bool)

(assert (=> bm!733912 (= call!733918 (validRegex!11680 (ite c!1451642 (reg!21705 (regex!8673 rule!156)) (ite c!1451641 (regOne!43265 (regex!8673 rule!156)) (regOne!43264 (regex!8673 rule!156))))))))

(declare-fun b!7912196 () Bool)

(declare-fun e!4670560 () Bool)

(declare-fun call!733919 () Bool)

(assert (=> b!7912196 (= e!4670560 call!733919)))

(declare-fun b!7912197 () Bool)

(declare-fun e!4670561 () Bool)

(assert (=> b!7912197 (= e!4670561 call!733918)))

(declare-fun b!7912198 () Bool)

(declare-fun e!4670562 () Bool)

(assert (=> b!7912198 (= e!4670562 call!733919)))

(declare-fun d!2360491 () Bool)

(declare-fun res!3140457 () Bool)

(declare-fun e!4670559 () Bool)

(assert (=> d!2360491 (=> res!3140457 e!4670559)))

(assert (=> d!2360491 (= res!3140457 (is-ElementMatch!21376 (regex!8673 rule!156)))))

(assert (=> d!2360491 (= (validRegex!11680 (regex!8673 rule!156)) e!4670559)))

(declare-fun b!7912199 () Bool)

(declare-fun e!4670564 () Bool)

(assert (=> b!7912199 (= e!4670564 e!4670560)))

(declare-fun res!3140455 () Bool)

(assert (=> b!7912199 (=> (not res!3140455) (not e!4670560))))

(declare-fun call!733917 () Bool)

(assert (=> b!7912199 (= res!3140455 call!733917)))

(declare-fun b!7912200 () Bool)

(assert (=> b!7912200 (= e!4670559 e!4670563)))

(assert (=> b!7912200 (= c!1451642 (is-Star!21376 (regex!8673 rule!156)))))

(declare-fun b!7912201 () Bool)

(declare-fun res!3140458 () Bool)

(assert (=> b!7912201 (=> (not res!3140458) (not e!4670562))))

(assert (=> b!7912201 (= res!3140458 call!733917)))

(assert (=> b!7912201 (= e!4670558 e!4670562)))

(declare-fun bm!733913 () Bool)

(assert (=> bm!733913 (= call!733917 call!733918)))

(declare-fun b!7912202 () Bool)

(assert (=> b!7912202 (= e!4670563 e!4670561)))

(declare-fun res!3140459 () Bool)

(assert (=> b!7912202 (= res!3140459 (not (nullable!9515 (reg!21705 (regex!8673 rule!156)))))))

(assert (=> b!7912202 (=> (not res!3140459) (not e!4670561))))

(declare-fun b!7912203 () Bool)

(declare-fun res!3140456 () Bool)

(assert (=> b!7912203 (=> res!3140456 e!4670564)))

(assert (=> b!7912203 (= res!3140456 (not (is-Concat!30366 (regex!8673 rule!156))))))

(assert (=> b!7912203 (= e!4670558 e!4670564)))

(declare-fun bm!733914 () Bool)

(assert (=> bm!733914 (= call!733919 (validRegex!11680 (ite c!1451641 (regTwo!43265 (regex!8673 rule!156)) (regTwo!43264 (regex!8673 rule!156)))))))

(assert (= (and d!2360491 (not res!3140457)) b!7912200))

(assert (= (and b!7912200 c!1451642) b!7912202))

(assert (= (and b!7912200 (not c!1451642)) b!7912195))

(assert (= (and b!7912202 res!3140459) b!7912197))

(assert (= (and b!7912195 c!1451641) b!7912201))

(assert (= (and b!7912195 (not c!1451641)) b!7912203))

(assert (= (and b!7912201 res!3140458) b!7912198))

(assert (= (and b!7912203 (not res!3140456)) b!7912199))

(assert (= (and b!7912199 res!3140455) b!7912196))

(assert (= (or b!7912201 b!7912199) bm!733913))

(assert (= (or b!7912198 b!7912196) bm!733914))

(assert (= (or b!7912197 bm!733913) bm!733912))

(declare-fun m!8285766 () Bool)

(assert (=> bm!733912 m!8285766))

(declare-fun m!8285768 () Bool)

(assert (=> b!7912202 m!8285768))

(declare-fun m!8285770 () Bool)

(assert (=> bm!733914 m!8285770))

(assert (=> b!7912152 d!2360491))

(declare-fun d!2360497 () Bool)

(assert (=> d!2360497 (= (inv!95451 (tag!9537 rule!156)) (= (mod (str.len (value!289133 (tag!9537 rule!156))) 2) 0))))

(assert (=> b!7912148 d!2360497))

(declare-fun d!2360499 () Bool)

(declare-fun res!3140462 () Bool)

(declare-fun e!4670567 () Bool)

(assert (=> d!2360499 (=> (not res!3140462) (not e!4670567))))

(declare-fun semiInverseModEq!3844 (Int Int) Bool)

(assert (=> d!2360499 (= res!3140462 (semiInverseModEq!3844 (toChars!11589 (transformation!8673 rule!156)) (toValue!11730 (transformation!8673 rule!156))))))

(assert (=> d!2360499 (= (inv!95454 (transformation!8673 rule!156)) e!4670567)))

(declare-fun b!7912206 () Bool)

(declare-fun equivClasses!3659 (Int Int) Bool)

(assert (=> b!7912206 (= e!4670567 (equivClasses!3659 (toChars!11589 (transformation!8673 rule!156)) (toValue!11730 (transformation!8673 rule!156))))))

(assert (= (and d!2360499 res!3140462) b!7912206))

(declare-fun m!8285772 () Bool)

(assert (=> d!2360499 m!8285772))

(declare-fun m!8285774 () Bool)

(assert (=> b!7912206 m!8285774))

(assert (=> b!7912148 d!2360499))

(declare-fun d!2360501 () Bool)

(assert (=> d!2360501 (= (isEmpty!42714 (_1!38532 (findLongestMatch!1966 (regex!8673 rule!156) input!1480))) (is-Nil!74384 (_1!38532 (findLongestMatch!1966 (regex!8673 rule!156) input!1480))))))

(assert (=> b!7912150 d!2360501))

(declare-fun d!2360503 () Bool)

(declare-fun lt!2688213 () tuple2!70458)

(declare-fun ++!18219 (List!74508 List!74508) List!74508)

(assert (=> d!2360503 (= (++!18219 (_1!38532 lt!2688213) (_2!38532 lt!2688213)) input!1480)))

(declare-fun findLongestMatchInner!2181 (Regex!21376 List!74508 Int List!74508 List!74508 Int) tuple2!70458)

(declare-fun sizeTr!468 (List!74508 Int) Int)

(assert (=> d!2360503 (= lt!2688213 (findLongestMatchInner!2181 (regex!8673 rule!156) Nil!74384 0 input!1480 input!1480 (sizeTr!468 input!1480 0)))))

(declare-datatypes ((Unit!169459 0))(
  ( (Unit!169460) )
))
(declare-fun lt!2688218 () Unit!169459)

(declare-fun lt!2688211 () Unit!169459)

(assert (=> d!2360503 (= lt!2688218 lt!2688211)))

(declare-fun lt!2688214 () List!74508)

(declare-fun lt!2688212 () Int)

(declare-fun size!43168 (List!74508) Int)

(assert (=> d!2360503 (= (sizeTr!468 lt!2688214 lt!2688212) (+ (size!43168 lt!2688214) lt!2688212))))

(declare-fun lemmaSizeTrEqualsSize!467 (List!74508 Int) Unit!169459)

(assert (=> d!2360503 (= lt!2688211 (lemmaSizeTrEqualsSize!467 lt!2688214 lt!2688212))))

(assert (=> d!2360503 (= lt!2688212 0)))

(assert (=> d!2360503 (= lt!2688214 Nil!74384)))

(declare-fun lt!2688216 () Unit!169459)

(declare-fun lt!2688217 () Unit!169459)

(assert (=> d!2360503 (= lt!2688216 lt!2688217)))

(declare-fun lt!2688215 () Int)

(assert (=> d!2360503 (= (sizeTr!468 input!1480 lt!2688215) (+ (size!43168 input!1480) lt!2688215))))

(assert (=> d!2360503 (= lt!2688217 (lemmaSizeTrEqualsSize!467 input!1480 lt!2688215))))

(assert (=> d!2360503 (= lt!2688215 0)))

(assert (=> d!2360503 (validRegex!11680 (regex!8673 rule!156))))

(assert (=> d!2360503 (= (findLongestMatch!1966 (regex!8673 rule!156) input!1480) lt!2688213)))

(declare-fun bs!1968293 () Bool)

(assert (= bs!1968293 d!2360503))

(declare-fun m!8285796 () Bool)

(assert (=> bs!1968293 m!8285796))

(assert (=> bs!1968293 m!8285750))

(declare-fun m!8285798 () Bool)

(assert (=> bs!1968293 m!8285798))

(declare-fun m!8285800 () Bool)

(assert (=> bs!1968293 m!8285800))

(declare-fun m!8285802 () Bool)

(assert (=> bs!1968293 m!8285802))

(declare-fun m!8285804 () Bool)

(assert (=> bs!1968293 m!8285804))

(declare-fun m!8285806 () Bool)

(assert (=> bs!1968293 m!8285806))

(declare-fun m!8285808 () Bool)

(assert (=> bs!1968293 m!8285808))

(declare-fun m!8285810 () Bool)

(assert (=> bs!1968293 m!8285810))

(assert (=> bs!1968293 m!8285808))

(declare-fun m!8285812 () Bool)

(assert (=> bs!1968293 m!8285812))

(assert (=> b!7912150 d!2360503))

(declare-fun b!7912241 () Bool)

(declare-fun e!4670585 () Bool)

(declare-fun tp!2356780 () Bool)

(assert (=> b!7912241 (= e!4670585 tp!2356780)))

(declare-fun b!7912240 () Bool)

(declare-fun tp!2356783 () Bool)

(declare-fun tp!2356779 () Bool)

(assert (=> b!7912240 (= e!4670585 (and tp!2356783 tp!2356779))))

(assert (=> b!7912148 (= tp!2356754 e!4670585)))

(declare-fun b!7912242 () Bool)

(declare-fun tp!2356782 () Bool)

(declare-fun tp!2356781 () Bool)

(assert (=> b!7912242 (= e!4670585 (and tp!2356782 tp!2356781))))

(declare-fun b!7912239 () Bool)

(assert (=> b!7912239 (= e!4670585 tp_is_empty!53127)))

(assert (= (and b!7912148 (is-ElementMatch!21376 (regex!8673 rule!156))) b!7912239))

(assert (= (and b!7912148 (is-Concat!30366 (regex!8673 rule!156))) b!7912240))

(assert (= (and b!7912148 (is-Star!21376 (regex!8673 rule!156))) b!7912241))

(assert (= (and b!7912148 (is-Union!21376 (regex!8673 rule!156))) b!7912242))

(declare-fun b!7912249 () Bool)

(declare-fun e!4670590 () Bool)

(declare-fun tp!2356786 () Bool)

(assert (=> b!7912249 (= e!4670590 (and tp_is_empty!53127 tp!2356786))))

(assert (=> b!7912149 (= tp!2356755 e!4670590)))

(assert (= (and b!7912149 (is-Cons!74384 (t!389945 input!1480))) b!7912249))

(push 1)

(assert (not d!2360489))

(assert (not b!7912175))

(assert b_and!353591)

(assert (not b!7912206))

(assert (not b_next!136025))

(assert (not b!7912202))

(assert (not b_next!136027))

(assert (not b!7912242))

(assert (not b!7912249))

(assert (not bm!733912))

(assert (not b!7912241))

(assert b_and!353593)

(assert tp_is_empty!53127)

(assert (not bm!733914))

(assert (not b!7912240))

(assert (not d!2360503))

(assert (not d!2360499))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353591)

(assert b_and!353593)

(assert (not b_next!136025))

(assert (not b_next!136027))

(check-sat)

(pop 1)

