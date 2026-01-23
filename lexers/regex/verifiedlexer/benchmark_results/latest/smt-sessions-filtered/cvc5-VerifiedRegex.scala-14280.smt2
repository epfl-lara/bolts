; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!745958 () Bool)

(assert start!745958)

(declare-fun b!7906083 () Bool)

(declare-fun b_free!134979 () Bool)

(declare-fun b_next!135769 () Bool)

(assert (=> b!7906083 (= b_free!134979 (not b_next!135769))))

(declare-fun tp!2355324 () Bool)

(declare-fun b_and!353159 () Bool)

(assert (=> b!7906083 (= tp!2355324 b_and!353159)))

(declare-fun b_free!134981 () Bool)

(declare-fun b_next!135771 () Bool)

(assert (=> b!7906083 (= b_free!134981 (not b_next!135771))))

(declare-fun tp!2355325 () Bool)

(declare-fun b_and!353161 () Bool)

(assert (=> b!7906083 (= tp!2355325 b_and!353161)))

(declare-fun b!7906073 () Bool)

(declare-fun res!3137308 () Bool)

(declare-fun e!4666897 () Bool)

(assert (=> b!7906073 (=> (not res!3137308) (not e!4666897))))

(declare-datatypes ((List!74395 0))(
  ( (Nil!74271) (Cons!74271 (h!80719 (_ BitVec 16)) (t!389632 List!74395)) )
))
(declare-datatypes ((TokenValue!8941 0))(
  ( (FloatLiteralValue!17882 (text!63032 List!74395)) (TokenValueExt!8940 (__x!35169 Int)) (Broken!44705 (value!287769 List!74395)) (Object!9064) (End!8941) (Def!8941) (Underscore!8941) (Match!8941) (Else!8941) (Error!8941) (Case!8941) (If!8941) (Extends!8941) (Abstract!8941) (Class!8941) (Val!8941) (DelimiterValue!17882 (del!9001 List!74395)) (KeywordValue!8947 (value!287770 List!74395)) (CommentValue!17882 (value!287771 List!74395)) (WhitespaceValue!17882 (value!287772 List!74395)) (IndentationValue!8941 (value!287773 List!74395)) (String!83128) (Int32!8941) (Broken!44706 (value!287774 List!74395)) (Boolean!8942) (Unit!169313) (OperatorValue!8944 (op!9001 List!74395)) (IdentifierValue!17882 (value!287775 List!74395)) (IdentifierValue!17883 (value!287776 List!74395)) (WhitespaceValue!17883 (value!287777 List!74395)) (True!17882) (False!17882) (Broken!44707 (value!287778 List!74395)) (Broken!44708 (value!287779 List!74395)) (True!17883) (RightBrace!8941) (RightBracket!8941) (Colon!8941) (Null!8941) (Comma!8941) (LeftBracket!8941) (False!17883) (LeftBrace!8941) (ImaginaryLiteralValue!8941 (text!63033 List!74395)) (StringLiteralValue!26823 (value!287780 List!74395)) (EOFValue!8941 (value!287781 List!74395)) (IdentValue!8941 (value!287782 List!74395)) (DelimiterValue!17883 (value!287783 List!74395)) (DedentValue!8941 (value!287784 List!74395)) (NewLineValue!8941 (value!287785 List!74395)) (IntegerValue!26823 (value!287786 (_ BitVec 32)) (text!63034 List!74395)) (IntegerValue!26824 (value!287787 Int) (text!63035 List!74395)) (Times!8941) (Or!8941) (Equal!8941) (Minus!8941) (Broken!44709 (value!287788 List!74395)) (And!8941) (Div!8941) (LessEqual!8941) (Mod!8941) (Concat!30269) (Not!8941) (Plus!8941) (SpaceValue!8941 (value!287789 List!74395)) (IntegerValue!26825 (value!287790 Int) (text!63036 List!74395)) (StringLiteralValue!26824 (text!63037 List!74395)) (FloatLiteralValue!17883 (text!63038 List!74395)) (BytesLiteralValue!8941 (value!287791 List!74395)) (CommentValue!17883 (value!287792 List!74395)) (StringLiteralValue!26825 (value!287793 List!74395)) (ErrorTokenValue!8941 (msg!9002 List!74395)) )
))
(declare-datatypes ((C!42986 0))(
  ( (C!42987 (val!31957 Int)) )
))
(declare-datatypes ((List!74396 0))(
  ( (Nil!74272) (Cons!74272 (h!80720 C!42986) (t!389633 List!74396)) )
))
(declare-datatypes ((IArray!31659 0))(
  ( (IArray!31660 (innerList!15887 List!74396)) )
))
(declare-datatypes ((Conc!15799 0))(
  ( (Node!15799 (left!56647 Conc!15799) (right!56977 Conc!15799) (csize!31828 Int) (cheight!16010 Int)) (Leaf!30080 (xs!19181 IArray!31659) (csize!31829 Int)) (Empty!15799) )
))
(declare-datatypes ((BalanceConc!30716 0))(
  ( (BalanceConc!30717 (c!1450712 Conc!15799)) )
))
(declare-datatypes ((Regex!21328 0))(
  ( (ElementMatch!21328 (c!1450713 C!42986)) (Concat!30270 (regOne!43168 Regex!21328) (regTwo!43168 Regex!21328)) (EmptyExpr!21328) (Star!21328 (reg!21657 Regex!21328)) (EmptyLang!21328) (Union!21328 (regOne!43169 Regex!21328) (regTwo!43169 Regex!21328)) )
))
(declare-datatypes ((String!83129 0))(
  ( (String!83130 (value!287794 String)) )
))
(declare-datatypes ((TokenValueInjection!17190 0))(
  ( (TokenValueInjection!17191 (toValue!11682 Int) (toChars!11541 Int)) )
))
(declare-datatypes ((Rule!17050 0))(
  ( (Rule!17051 (regex!8625 Regex!21328) (tag!9489 String!83129) (isSeparator!8625 Bool) (transformation!8625 TokenValueInjection!17190)) )
))
(declare-datatypes ((Token!15670 0))(
  ( (Token!15671 (value!287795 TokenValue!8941) (rule!11917 Rule!17050) (size!43048 Int) (originalCharacters!8866 List!74396)) )
))
(declare-datatypes ((tuple2!70284 0))(
  ( (tuple2!70285 (_1!38445 Token!15670) (_2!38445 List!74396)) )
))
(declare-fun lt!2685126 () tuple2!70284)

(declare-fun apply!14348 (TokenValueInjection!17190 BalanceConc!30716) TokenValue!8941)

(declare-fun seqFromList!6166 (List!74396) BalanceConc!30716)

(assert (=> b!7906073 (= res!3137308 (= (value!287795 (_1!38445 lt!2685126)) (apply!14348 (transformation!8625 (rule!11917 (_1!38445 lt!2685126))) (seqFromList!6166 (originalCharacters!8866 (_1!38445 lt!2685126))))))))

(declare-fun b!7906074 () Bool)

(declare-fun e!4666895 () Bool)

(declare-fun e!4666900 () Bool)

(assert (=> b!7906074 (= e!4666895 (not e!4666900))))

(declare-fun res!3137307 () Bool)

(assert (=> b!7906074 (=> res!3137307 e!4666900)))

(declare-datatypes ((List!74397 0))(
  ( (Nil!74273) (Cons!74273 (h!80721 Rule!17050) (t!389634 List!74397)) )
))
(declare-fun rulesArg!141 () List!74397)

(assert (=> b!7906074 (= res!3137307 (or (not (is-Cons!74273 rulesArg!141)) (not (is-Nil!74273 (t!389634 rulesArg!141)))))))

(declare-fun input!1184 () List!74396)

(declare-fun isPrefix!6458 (List!74396 List!74396) Bool)

(assert (=> b!7906074 (isPrefix!6458 input!1184 input!1184)))

(declare-datatypes ((Unit!169314 0))(
  ( (Unit!169315) )
))
(declare-fun lt!2685123 () Unit!169314)

(declare-fun lemmaIsPrefixRefl!3969 (List!74396 List!74396) Unit!169314)

(assert (=> b!7906074 (= lt!2685123 (lemmaIsPrefixRefl!3969 input!1184 input!1184))))

(declare-fun b!7906075 () Bool)

(declare-fun res!3137302 () Bool)

(assert (=> b!7906075 (=> (not res!3137302) (not e!4666897))))

(declare-fun lt!2685124 () List!74396)

(declare-fun ++!18179 (List!74396 List!74396) List!74396)

(assert (=> b!7906075 (= res!3137302 (= (++!18179 lt!2685124 (_2!38445 lt!2685126)) input!1184))))

(declare-fun b!7906076 () Bool)

(declare-fun e!4666901 () Bool)

(assert (=> b!7906076 (= e!4666900 e!4666901)))

(declare-fun res!3137303 () Bool)

(assert (=> b!7906076 (=> res!3137303 e!4666901)))

(declare-datatypes ((Option!17907 0))(
  ( (None!17906) (Some!17906 (v!55051 tuple2!70284)) )
))
(declare-fun lt!2685125 () Option!17907)

(declare-fun isEmpty!42624 (Option!17907) Bool)

(assert (=> b!7906076 (= res!3137303 (isEmpty!42624 lt!2685125))))

(declare-datatypes ((LexerInterface!8217 0))(
  ( (LexerInterfaceExt!8214 (__x!35170 Int)) (Lexer!8215) )
))
(declare-fun thiss!14377 () LexerInterface!8217)

(declare-fun maxPrefixOneRule!3793 (LexerInterface!8217 Rule!17050 List!74396) Option!17907)

(assert (=> b!7906076 (= lt!2685125 (maxPrefixOneRule!3793 thiss!14377 (h!80721 rulesArg!141) input!1184))))

(declare-fun b!7906077 () Bool)

(declare-fun res!3137312 () Bool)

(assert (=> b!7906077 (=> (not res!3137312) (not e!4666895))))

(declare-fun isEmpty!42625 (List!74397) Bool)

(assert (=> b!7906077 (= res!3137312 (not (isEmpty!42625 rulesArg!141)))))

(declare-fun b!7906078 () Bool)

(declare-fun e!4666898 () Bool)

(declare-fun tp_is_empty!53031 () Bool)

(declare-fun tp!2355326 () Bool)

(assert (=> b!7906078 (= e!4666898 (and tp_is_empty!53031 tp!2355326))))

(declare-fun b!7906079 () Bool)

(declare-fun res!3137305 () Bool)

(assert (=> b!7906079 (=> (not res!3137305) (not e!4666895))))

(declare-fun rulesValidInductive!3436 (LexerInterface!8217 List!74397) Bool)

(assert (=> b!7906079 (= res!3137305 (rulesValidInductive!3436 thiss!14377 rulesArg!141))))

(declare-fun b!7906080 () Bool)

(declare-fun e!4666893 () Bool)

(assert (=> b!7906080 (= e!4666893 e!4666897)))

(declare-fun res!3137304 () Bool)

(assert (=> b!7906080 (=> (not res!3137304) (not e!4666897))))

(assert (=> b!7906080 (= res!3137304 (= lt!2685124 (originalCharacters!8866 (_1!38445 lt!2685126))))))

(declare-fun list!19262 (BalanceConc!30716) List!74396)

(declare-fun charsOf!5569 (Token!15670) BalanceConc!30716)

(assert (=> b!7906080 (= lt!2685124 (list!19262 (charsOf!5569 (_1!38445 lt!2685126))))))

(declare-fun get!26692 (Option!17907) tuple2!70284)

(assert (=> b!7906080 (= lt!2685126 (get!26692 lt!2685125))))

(declare-fun b!7906081 () Bool)

(declare-fun res!3137310 () Bool)

(assert (=> b!7906081 (=> (not res!3137310) (not e!4666897))))

(declare-fun size!43049 (List!74396) Int)

(assert (=> b!7906081 (= res!3137310 (< (size!43049 (_2!38445 lt!2685126)) (size!43049 input!1184)))))

(declare-fun e!4666902 () Bool)

(declare-fun e!4666894 () Bool)

(declare-fun b!7906082 () Bool)

(declare-fun tp!2355323 () Bool)

(declare-fun inv!95281 (String!83129) Bool)

(declare-fun inv!95284 (TokenValueInjection!17190) Bool)

(assert (=> b!7906082 (= e!4666894 (and tp!2355323 (inv!95281 (tag!9489 (h!80721 rulesArg!141))) (inv!95284 (transformation!8625 (h!80721 rulesArg!141))) e!4666902))))

(declare-fun res!3137311 () Bool)

(assert (=> start!745958 (=> (not res!3137311) (not e!4666895))))

(assert (=> start!745958 (= res!3137311 (is-Lexer!8215 thiss!14377))))

(assert (=> start!745958 e!4666895))

(assert (=> start!745958 true))

(declare-fun e!4666896 () Bool)

(assert (=> start!745958 e!4666896))

(assert (=> start!745958 e!4666898))

(assert (=> b!7906083 (= e!4666902 (and tp!2355324 tp!2355325))))

(declare-fun b!7906084 () Bool)

(declare-fun tp!2355327 () Bool)

(assert (=> b!7906084 (= e!4666896 (and e!4666894 tp!2355327))))

(declare-fun b!7906085 () Bool)

(assert (=> b!7906085 (= e!4666901 e!4666893)))

(declare-fun res!3137309 () Bool)

(assert (=> b!7906085 (=> (not res!3137309) (not e!4666893))))

(declare-fun isDefined!14483 (Option!17907) Bool)

(assert (=> b!7906085 (= res!3137309 (isDefined!14483 lt!2685125))))

(declare-fun b!7906086 () Bool)

(declare-fun res!3137306 () Bool)

(assert (=> b!7906086 (=> (not res!3137306) (not e!4666897))))

(declare-fun matchR!10655 (Regex!21328 List!74396) Bool)

(assert (=> b!7906086 (= res!3137306 (matchR!10655 (regex!8625 (rule!11917 (_1!38445 lt!2685126))) lt!2685124))))

(declare-fun b!7906087 () Bool)

(declare-fun contains!20891 (List!74397 Rule!17050) Bool)

(assert (=> b!7906087 (= e!4666897 (contains!20891 rulesArg!141 (rule!11917 (_1!38445 lt!2685126))))))

(assert (= (and start!745958 res!3137311) b!7906079))

(assert (= (and b!7906079 res!3137305) b!7906077))

(assert (= (and b!7906077 res!3137312) b!7906074))

(assert (= (and b!7906074 (not res!3137307)) b!7906076))

(assert (= (and b!7906076 (not res!3137303)) b!7906085))

(assert (= (and b!7906085 res!3137309) b!7906080))

(assert (= (and b!7906080 res!3137304) b!7906081))

(assert (= (and b!7906081 res!3137310) b!7906075))

(assert (= (and b!7906075 res!3137302) b!7906073))

(assert (= (and b!7906073 res!3137308) b!7906086))

(assert (= (and b!7906086 res!3137306) b!7906087))

(assert (= b!7906082 b!7906083))

(assert (= b!7906084 b!7906082))

(assert (= (and start!745958 (is-Cons!74273 rulesArg!141)) b!7906084))

(assert (= (and start!745958 (is-Cons!74272 input!1184)) b!7906078))

(declare-fun m!8280424 () Bool)

(assert (=> b!7906079 m!8280424))

(declare-fun m!8280426 () Bool)

(assert (=> b!7906080 m!8280426))

(assert (=> b!7906080 m!8280426))

(declare-fun m!8280428 () Bool)

(assert (=> b!7906080 m!8280428))

(declare-fun m!8280430 () Bool)

(assert (=> b!7906080 m!8280430))

(declare-fun m!8280432 () Bool)

(assert (=> b!7906087 m!8280432))

(declare-fun m!8280434 () Bool)

(assert (=> b!7906073 m!8280434))

(assert (=> b!7906073 m!8280434))

(declare-fun m!8280436 () Bool)

(assert (=> b!7906073 m!8280436))

(declare-fun m!8280438 () Bool)

(assert (=> b!7906086 m!8280438))

(declare-fun m!8280440 () Bool)

(assert (=> b!7906075 m!8280440))

(declare-fun m!8280442 () Bool)

(assert (=> b!7906085 m!8280442))

(declare-fun m!8280444 () Bool)

(assert (=> b!7906082 m!8280444))

(declare-fun m!8280446 () Bool)

(assert (=> b!7906082 m!8280446))

(declare-fun m!8280448 () Bool)

(assert (=> b!7906074 m!8280448))

(declare-fun m!8280450 () Bool)

(assert (=> b!7906074 m!8280450))

(declare-fun m!8280452 () Bool)

(assert (=> b!7906077 m!8280452))

(declare-fun m!8280454 () Bool)

(assert (=> b!7906076 m!8280454))

(declare-fun m!8280456 () Bool)

(assert (=> b!7906076 m!8280456))

(declare-fun m!8280458 () Bool)

(assert (=> b!7906081 m!8280458))

(declare-fun m!8280460 () Bool)

(assert (=> b!7906081 m!8280460))

(push 1)

(assert (not b_next!135771))

(assert (not b!7906080))

(assert (not b!7906079))

(assert b_and!353159)

(assert b_and!353161)

(assert (not b!7906082))

(assert (not b!7906077))

(assert (not b!7906081))

(assert (not b!7906076))

(assert (not b!7906075))

(assert (not b!7906078))

(assert (not b!7906086))

(assert tp_is_empty!53031)

(assert (not b!7906073))

(assert (not b!7906084))

(assert (not b!7906087))

(assert (not b!7906074))

(assert (not b_next!135769))

(assert (not b!7906085))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353161)

(assert b_and!353159)

(assert (not b_next!135771))

(assert (not b_next!135769))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2359341 () Bool)

(declare-fun list!19264 (Conc!15799) List!74396)

(assert (=> d!2359341 (= (list!19262 (charsOf!5569 (_1!38445 lt!2685126))) (list!19264 (c!1450712 (charsOf!5569 (_1!38445 lt!2685126)))))))

(declare-fun bs!1968126 () Bool)

(assert (= bs!1968126 d!2359341))

(declare-fun m!8280500 () Bool)

(assert (=> bs!1968126 m!8280500))

(assert (=> b!7906080 d!2359341))

(declare-fun d!2359343 () Bool)

(declare-fun lt!2685141 () BalanceConc!30716)

(assert (=> d!2359343 (= (list!19262 lt!2685141) (originalCharacters!8866 (_1!38445 lt!2685126)))))

(declare-fun dynLambda!30086 (Int TokenValue!8941) BalanceConc!30716)

(assert (=> d!2359343 (= lt!2685141 (dynLambda!30086 (toChars!11541 (transformation!8625 (rule!11917 (_1!38445 lt!2685126)))) (value!287795 (_1!38445 lt!2685126))))))

(assert (=> d!2359343 (= (charsOf!5569 (_1!38445 lt!2685126)) lt!2685141)))

(declare-fun b_lambda!289875 () Bool)

(assert (=> (not b_lambda!289875) (not d!2359343)))

(declare-fun t!389639 () Bool)

(declare-fun tb!263075 () Bool)

(assert (=> (and b!7906083 (= (toChars!11541 (transformation!8625 (h!80721 rulesArg!141))) (toChars!11541 (transformation!8625 (rule!11917 (_1!38445 lt!2685126))))) t!389639) tb!263075))

(declare-fun b!7906137 () Bool)

(declare-fun e!4666935 () Bool)

(declare-fun tp!2355345 () Bool)

(declare-fun inv!95286 (Conc!15799) Bool)

(assert (=> b!7906137 (= e!4666935 (and (inv!95286 (c!1450712 (dynLambda!30086 (toChars!11541 (transformation!8625 (rule!11917 (_1!38445 lt!2685126)))) (value!287795 (_1!38445 lt!2685126))))) tp!2355345))))

(declare-fun result!360206 () Bool)

(declare-fun inv!95287 (BalanceConc!30716) Bool)

(assert (=> tb!263075 (= result!360206 (and (inv!95287 (dynLambda!30086 (toChars!11541 (transformation!8625 (rule!11917 (_1!38445 lt!2685126)))) (value!287795 (_1!38445 lt!2685126)))) e!4666935))))

(assert (= tb!263075 b!7906137))

(declare-fun m!8280502 () Bool)

(assert (=> b!7906137 m!8280502))

(declare-fun m!8280504 () Bool)

(assert (=> tb!263075 m!8280504))

(assert (=> d!2359343 t!389639))

(declare-fun b_and!353167 () Bool)

(assert (= b_and!353161 (and (=> t!389639 result!360206) b_and!353167)))

(declare-fun m!8280506 () Bool)

(assert (=> d!2359343 m!8280506))

(declare-fun m!8280508 () Bool)

(assert (=> d!2359343 m!8280508))

(assert (=> b!7906080 d!2359343))

(declare-fun d!2359345 () Bool)

(assert (=> d!2359345 (= (get!26692 lt!2685125) (v!55051 lt!2685125))))

(assert (=> b!7906080 d!2359345))

(declare-fun d!2359347 () Bool)

(declare-fun lt!2685144 () Int)

(assert (=> d!2359347 (>= lt!2685144 0)))

(declare-fun e!4666938 () Int)

(assert (=> d!2359347 (= lt!2685144 e!4666938)))

(declare-fun c!1450719 () Bool)

(assert (=> d!2359347 (= c!1450719 (is-Nil!74272 (_2!38445 lt!2685126)))))

(assert (=> d!2359347 (= (size!43049 (_2!38445 lt!2685126)) lt!2685144)))

(declare-fun b!7906142 () Bool)

(assert (=> b!7906142 (= e!4666938 0)))

(declare-fun b!7906143 () Bool)

(assert (=> b!7906143 (= e!4666938 (+ 1 (size!43049 (t!389633 (_2!38445 lt!2685126)))))))

(assert (= (and d!2359347 c!1450719) b!7906142))

(assert (= (and d!2359347 (not c!1450719)) b!7906143))

(declare-fun m!8280510 () Bool)

(assert (=> b!7906143 m!8280510))

(assert (=> b!7906081 d!2359347))

(declare-fun d!2359349 () Bool)

(declare-fun lt!2685145 () Int)

(assert (=> d!2359349 (>= lt!2685145 0)))

(declare-fun e!4666939 () Int)

(assert (=> d!2359349 (= lt!2685145 e!4666939)))

(declare-fun c!1450720 () Bool)

(assert (=> d!2359349 (= c!1450720 (is-Nil!74272 input!1184))))

(assert (=> d!2359349 (= (size!43049 input!1184) lt!2685145)))

(declare-fun b!7906144 () Bool)

(assert (=> b!7906144 (= e!4666939 0)))

(declare-fun b!7906145 () Bool)

(assert (=> b!7906145 (= e!4666939 (+ 1 (size!43049 (t!389633 input!1184))))))

(assert (= (and d!2359349 c!1450720) b!7906144))

(assert (= (and d!2359349 (not c!1450720)) b!7906145))

(declare-fun m!8280512 () Bool)

(assert (=> b!7906145 m!8280512))

(assert (=> b!7906081 d!2359349))

(declare-fun d!2359351 () Bool)

(assert (=> d!2359351 (= (inv!95281 (tag!9489 (h!80721 rulesArg!141))) (= (mod (str.len (value!287794 (tag!9489 (h!80721 rulesArg!141)))) 2) 0))))

(assert (=> b!7906082 d!2359351))

(declare-fun d!2359353 () Bool)

(declare-fun res!3137355 () Bool)

(declare-fun e!4666942 () Bool)

(assert (=> d!2359353 (=> (not res!3137355) (not e!4666942))))

(declare-fun semiInverseModEq!3818 (Int Int) Bool)

(assert (=> d!2359353 (= res!3137355 (semiInverseModEq!3818 (toChars!11541 (transformation!8625 (h!80721 rulesArg!141))) (toValue!11682 (transformation!8625 (h!80721 rulesArg!141)))))))

(assert (=> d!2359353 (= (inv!95284 (transformation!8625 (h!80721 rulesArg!141))) e!4666942)))

(declare-fun b!7906148 () Bool)

(declare-fun equivClasses!3633 (Int Int) Bool)

(assert (=> b!7906148 (= e!4666942 (equivClasses!3633 (toChars!11541 (transformation!8625 (h!80721 rulesArg!141))) (toValue!11682 (transformation!8625 (h!80721 rulesArg!141)))))))

(assert (= (and d!2359353 res!3137355) b!7906148))

(declare-fun m!8280514 () Bool)

(assert (=> d!2359353 m!8280514))

(declare-fun m!8280516 () Bool)

(assert (=> b!7906148 m!8280516))

(assert (=> b!7906082 d!2359353))

(declare-fun d!2359359 () Bool)

(declare-fun dynLambda!30087 (Int BalanceConc!30716) TokenValue!8941)

(assert (=> d!2359359 (= (apply!14348 (transformation!8625 (rule!11917 (_1!38445 lt!2685126))) (seqFromList!6166 (originalCharacters!8866 (_1!38445 lt!2685126)))) (dynLambda!30087 (toValue!11682 (transformation!8625 (rule!11917 (_1!38445 lt!2685126)))) (seqFromList!6166 (originalCharacters!8866 (_1!38445 lt!2685126)))))))

(declare-fun b_lambda!289877 () Bool)

(assert (=> (not b_lambda!289877) (not d!2359359)))

(declare-fun t!389641 () Bool)

(declare-fun tb!263077 () Bool)

(assert (=> (and b!7906083 (= (toValue!11682 (transformation!8625 (h!80721 rulesArg!141))) (toValue!11682 (transformation!8625 (rule!11917 (_1!38445 lt!2685126))))) t!389641) tb!263077))

(declare-fun result!360210 () Bool)

(declare-fun inv!21 (TokenValue!8941) Bool)

(assert (=> tb!263077 (= result!360210 (inv!21 (dynLambda!30087 (toValue!11682 (transformation!8625 (rule!11917 (_1!38445 lt!2685126)))) (seqFromList!6166 (originalCharacters!8866 (_1!38445 lt!2685126))))))))

(declare-fun m!8280518 () Bool)

(assert (=> tb!263077 m!8280518))

(assert (=> d!2359359 t!389641))

(declare-fun b_and!353169 () Bool)

(assert (= b_and!353159 (and (=> t!389641 result!360210) b_and!353169)))

(assert (=> d!2359359 m!8280434))

(declare-fun m!8280520 () Bool)

(assert (=> d!2359359 m!8280520))

(assert (=> b!7906073 d!2359359))

(declare-fun d!2359361 () Bool)

(declare-fun fromListB!2781 (List!74396) BalanceConc!30716)

(assert (=> d!2359361 (= (seqFromList!6166 (originalCharacters!8866 (_1!38445 lt!2685126))) (fromListB!2781 (originalCharacters!8866 (_1!38445 lt!2685126))))))

(declare-fun bs!1968127 () Bool)

(assert (= bs!1968127 d!2359361))

(declare-fun m!8280522 () Bool)

(assert (=> bs!1968127 m!8280522))

(assert (=> b!7906073 d!2359361))

(declare-fun b!7906162 () Bool)

(declare-fun e!4666953 () List!74396)

(assert (=> b!7906162 (= e!4666953 (_2!38445 lt!2685126))))

(declare-fun b!7906164 () Bool)

(declare-fun res!3137363 () Bool)

(declare-fun e!4666954 () Bool)

(assert (=> b!7906164 (=> (not res!3137363) (not e!4666954))))

(declare-fun lt!2685148 () List!74396)

(assert (=> b!7906164 (= res!3137363 (= (size!43049 lt!2685148) (+ (size!43049 lt!2685124) (size!43049 (_2!38445 lt!2685126)))))))

(declare-fun b!7906165 () Bool)

(assert (=> b!7906165 (= e!4666954 (or (not (= (_2!38445 lt!2685126) Nil!74272)) (= lt!2685148 lt!2685124)))))

(declare-fun b!7906163 () Bool)

(assert (=> b!7906163 (= e!4666953 (Cons!74272 (h!80720 lt!2685124) (++!18179 (t!389633 lt!2685124) (_2!38445 lt!2685126))))))

(declare-fun d!2359363 () Bool)

(assert (=> d!2359363 e!4666954))

(declare-fun res!3137364 () Bool)

(assert (=> d!2359363 (=> (not res!3137364) (not e!4666954))))

(declare-fun content!15724 (List!74396) (Set C!42986))

(assert (=> d!2359363 (= res!3137364 (= (content!15724 lt!2685148) (set.union (content!15724 lt!2685124) (content!15724 (_2!38445 lt!2685126)))))))

(assert (=> d!2359363 (= lt!2685148 e!4666953)))

(declare-fun c!1450723 () Bool)

(assert (=> d!2359363 (= c!1450723 (is-Nil!74272 lt!2685124))))

(assert (=> d!2359363 (= (++!18179 lt!2685124 (_2!38445 lt!2685126)) lt!2685148)))

(assert (= (and d!2359363 c!1450723) b!7906162))

(assert (= (and d!2359363 (not c!1450723)) b!7906163))

(assert (= (and d!2359363 res!3137364) b!7906164))

(assert (= (and b!7906164 res!3137363) b!7906165))

(declare-fun m!8280528 () Bool)

(assert (=> b!7906164 m!8280528))

(declare-fun m!8280530 () Bool)

(assert (=> b!7906164 m!8280530))

(assert (=> b!7906164 m!8280458))

(declare-fun m!8280532 () Bool)

(assert (=> b!7906163 m!8280532))

(declare-fun m!8280534 () Bool)

(assert (=> d!2359363 m!8280534))

(declare-fun m!8280536 () Bool)

(assert (=> d!2359363 m!8280536))

(declare-fun m!8280538 () Bool)

(assert (=> d!2359363 m!8280538))

(assert (=> b!7906075 d!2359363))

(declare-fun b!7906174 () Bool)

(declare-fun e!4666962 () Bool)

(declare-fun e!4666961 () Bool)

(assert (=> b!7906174 (= e!4666962 e!4666961)))

(declare-fun res!3137374 () Bool)

(assert (=> b!7906174 (=> (not res!3137374) (not e!4666961))))

(assert (=> b!7906174 (= res!3137374 (not (is-Nil!74272 input!1184)))))

(declare-fun d!2359367 () Bool)

(declare-fun e!4666963 () Bool)

(assert (=> d!2359367 e!4666963))

(declare-fun res!3137375 () Bool)

(assert (=> d!2359367 (=> res!3137375 e!4666963)))

(declare-fun lt!2685151 () Bool)

(assert (=> d!2359367 (= res!3137375 (not lt!2685151))))

(assert (=> d!2359367 (= lt!2685151 e!4666962)))

(declare-fun res!3137376 () Bool)

(assert (=> d!2359367 (=> res!3137376 e!4666962)))

(assert (=> d!2359367 (= res!3137376 (is-Nil!74272 input!1184))))

(assert (=> d!2359367 (= (isPrefix!6458 input!1184 input!1184) lt!2685151)))

(declare-fun b!7906175 () Bool)

(declare-fun res!3137373 () Bool)

(assert (=> b!7906175 (=> (not res!3137373) (not e!4666961))))

(declare-fun head!16150 (List!74396) C!42986)

(assert (=> b!7906175 (= res!3137373 (= (head!16150 input!1184) (head!16150 input!1184)))))

(declare-fun b!7906177 () Bool)

(assert (=> b!7906177 (= e!4666963 (>= (size!43049 input!1184) (size!43049 input!1184)))))

(declare-fun b!7906176 () Bool)

(declare-fun tail!15693 (List!74396) List!74396)

(assert (=> b!7906176 (= e!4666961 (isPrefix!6458 (tail!15693 input!1184) (tail!15693 input!1184)))))

(assert (= (and d!2359367 (not res!3137376)) b!7906174))

(assert (= (and b!7906174 res!3137374) b!7906175))

(assert (= (and b!7906175 res!3137373) b!7906176))

(assert (= (and d!2359367 (not res!3137375)) b!7906177))

(declare-fun m!8280540 () Bool)

(assert (=> b!7906175 m!8280540))

(assert (=> b!7906175 m!8280540))

(assert (=> b!7906177 m!8280460))

(assert (=> b!7906177 m!8280460))

(declare-fun m!8280542 () Bool)

(assert (=> b!7906176 m!8280542))

(assert (=> b!7906176 m!8280542))

(assert (=> b!7906176 m!8280542))

(assert (=> b!7906176 m!8280542))

(declare-fun m!8280544 () Bool)

(assert (=> b!7906176 m!8280544))

(assert (=> b!7906074 d!2359367))

(declare-fun d!2359371 () Bool)

(assert (=> d!2359371 (isPrefix!6458 input!1184 input!1184)))

(declare-fun lt!2685154 () Unit!169314)

(declare-fun choose!59726 (List!74396 List!74396) Unit!169314)

(assert (=> d!2359371 (= lt!2685154 (choose!59726 input!1184 input!1184))))

(assert (=> d!2359371 (= (lemmaIsPrefixRefl!3969 input!1184 input!1184) lt!2685154)))

(declare-fun bs!1968128 () Bool)

(assert (= bs!1968128 d!2359371))

(assert (=> bs!1968128 m!8280448))

(declare-fun m!8280546 () Bool)

(assert (=> bs!1968128 m!8280546))

(assert (=> b!7906074 d!2359371))

(declare-fun d!2359373 () Bool)

(assert (=> d!2359373 (= (isDefined!14483 lt!2685125) (not (isEmpty!42624 lt!2685125)))))

(declare-fun bs!1968129 () Bool)

(assert (= bs!1968129 d!2359373))

(assert (=> bs!1968129 m!8280454))

(assert (=> b!7906085 d!2359373))

(declare-fun d!2359375 () Bool)

(assert (=> d!2359375 (= (isEmpty!42624 lt!2685125) (not (is-Some!17906 lt!2685125)))))

(assert (=> b!7906076 d!2359375))

(declare-fun b!7906251 () Bool)

(declare-fun e!4667007 () Option!17907)

(declare-datatypes ((tuple2!70288 0))(
  ( (tuple2!70289 (_1!38447 List!74396) (_2!38447 List!74396)) )
))
(declare-fun lt!2685175 () tuple2!70288)

(declare-fun size!43052 (BalanceConc!30716) Int)

(assert (=> b!7906251 (= e!4667007 (Some!17906 (tuple2!70285 (Token!15671 (apply!14348 (transformation!8625 (h!80721 rulesArg!141)) (seqFromList!6166 (_1!38447 lt!2685175))) (h!80721 rulesArg!141) (size!43052 (seqFromList!6166 (_1!38447 lt!2685175))) (_1!38447 lt!2685175)) (_2!38447 lt!2685175))))))

(declare-fun lt!2685177 () Unit!169314)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2119 (Regex!21328 List!74396) Unit!169314)

(assert (=> b!7906251 (= lt!2685177 (longestMatchIsAcceptedByMatchOrIsEmpty!2119 (regex!8625 (h!80721 rulesArg!141)) input!1184))))

(declare-fun res!3137421 () Bool)

(declare-fun isEmpty!42628 (List!74396) Bool)

(declare-fun findLongestMatchInner!2156 (Regex!21328 List!74396 Int List!74396 List!74396 Int) tuple2!70288)

(assert (=> b!7906251 (= res!3137421 (isEmpty!42628 (_1!38447 (findLongestMatchInner!2156 (regex!8625 (h!80721 rulesArg!141)) Nil!74272 (size!43049 Nil!74272) input!1184 input!1184 (size!43049 input!1184)))))))

(declare-fun e!4667008 () Bool)

(assert (=> b!7906251 (=> res!3137421 e!4667008)))

(assert (=> b!7906251 e!4667008))

(declare-fun lt!2685176 () Unit!169314)

(assert (=> b!7906251 (= lt!2685176 lt!2685177)))

(declare-fun lt!2685178 () Unit!169314)

(declare-fun lemmaSemiInverse!2666 (TokenValueInjection!17190 BalanceConc!30716) Unit!169314)

(assert (=> b!7906251 (= lt!2685178 (lemmaSemiInverse!2666 (transformation!8625 (h!80721 rulesArg!141)) (seqFromList!6166 (_1!38447 lt!2685175))))))

(declare-fun b!7906252 () Bool)

(assert (=> b!7906252 (= e!4667007 None!17906)))

(declare-fun b!7906253 () Bool)

(declare-fun res!3137425 () Bool)

(declare-fun e!4667006 () Bool)

(assert (=> b!7906253 (=> (not res!3137425) (not e!4667006))))

(declare-fun lt!2685174 () Option!17907)

(assert (=> b!7906253 (= res!3137425 (= (rule!11917 (_1!38445 (get!26692 lt!2685174))) (h!80721 rulesArg!141)))))

(declare-fun b!7906254 () Bool)

(declare-fun e!4667005 () Bool)

(assert (=> b!7906254 (= e!4667005 e!4667006)))

(declare-fun res!3137427 () Bool)

(assert (=> b!7906254 (=> (not res!3137427) (not e!4667006))))

(assert (=> b!7906254 (= res!3137427 (matchR!10655 (regex!8625 (h!80721 rulesArg!141)) (list!19262 (charsOf!5569 (_1!38445 (get!26692 lt!2685174))))))))

(declare-fun d!2359377 () Bool)

(assert (=> d!2359377 e!4667005))

(declare-fun res!3137422 () Bool)

(assert (=> d!2359377 (=> res!3137422 e!4667005)))

(assert (=> d!2359377 (= res!3137422 (isEmpty!42624 lt!2685174))))

(assert (=> d!2359377 (= lt!2685174 e!4667007)))

(declare-fun c!1450735 () Bool)

(assert (=> d!2359377 (= c!1450735 (isEmpty!42628 (_1!38447 lt!2685175)))))

(declare-fun findLongestMatch!1923 (Regex!21328 List!74396) tuple2!70288)

(assert (=> d!2359377 (= lt!2685175 (findLongestMatch!1923 (regex!8625 (h!80721 rulesArg!141)) input!1184))))

(declare-fun ruleValid!3939 (LexerInterface!8217 Rule!17050) Bool)

(assert (=> d!2359377 (ruleValid!3939 thiss!14377 (h!80721 rulesArg!141))))

(assert (=> d!2359377 (= (maxPrefixOneRule!3793 thiss!14377 (h!80721 rulesArg!141) input!1184) lt!2685174)))

(declare-fun b!7906255 () Bool)

(declare-fun res!3137426 () Bool)

(assert (=> b!7906255 (=> (not res!3137426) (not e!4667006))))

(assert (=> b!7906255 (= res!3137426 (= (++!18179 (list!19262 (charsOf!5569 (_1!38445 (get!26692 lt!2685174)))) (_2!38445 (get!26692 lt!2685174))) input!1184))))

(declare-fun b!7906256 () Bool)

(declare-fun res!3137423 () Bool)

(assert (=> b!7906256 (=> (not res!3137423) (not e!4667006))))

(assert (=> b!7906256 (= res!3137423 (< (size!43049 (_2!38445 (get!26692 lt!2685174))) (size!43049 input!1184)))))

(declare-fun b!7906257 () Bool)

(assert (=> b!7906257 (= e!4667006 (= (size!43048 (_1!38445 (get!26692 lt!2685174))) (size!43049 (originalCharacters!8866 (_1!38445 (get!26692 lt!2685174))))))))

(declare-fun b!7906258 () Bool)

(declare-fun res!3137424 () Bool)

(assert (=> b!7906258 (=> (not res!3137424) (not e!4667006))))

(assert (=> b!7906258 (= res!3137424 (= (value!287795 (_1!38445 (get!26692 lt!2685174))) (apply!14348 (transformation!8625 (rule!11917 (_1!38445 (get!26692 lt!2685174)))) (seqFromList!6166 (originalCharacters!8866 (_1!38445 (get!26692 lt!2685174)))))))))

(declare-fun b!7906259 () Bool)

(assert (=> b!7906259 (= e!4667008 (matchR!10655 (regex!8625 (h!80721 rulesArg!141)) (_1!38447 (findLongestMatchInner!2156 (regex!8625 (h!80721 rulesArg!141)) Nil!74272 (size!43049 Nil!74272) input!1184 input!1184 (size!43049 input!1184)))))))

(assert (= (and d!2359377 c!1450735) b!7906252))

(assert (= (and d!2359377 (not c!1450735)) b!7906251))

(assert (= (and b!7906251 (not res!3137421)) b!7906259))

(assert (= (and d!2359377 (not res!3137422)) b!7906254))

(assert (= (and b!7906254 res!3137427) b!7906255))

(assert (= (and b!7906255 res!3137426) b!7906256))

(assert (= (and b!7906256 res!3137423) b!7906253))

(assert (= (and b!7906253 res!3137425) b!7906258))

(assert (= (and b!7906258 res!3137424) b!7906257))

(declare-fun m!8280586 () Bool)

(assert (=> b!7906255 m!8280586))

(declare-fun m!8280588 () Bool)

(assert (=> b!7906255 m!8280588))

(assert (=> b!7906255 m!8280588))

(declare-fun m!8280590 () Bool)

(assert (=> b!7906255 m!8280590))

(assert (=> b!7906255 m!8280590))

(declare-fun m!8280592 () Bool)

(assert (=> b!7906255 m!8280592))

(assert (=> b!7906253 m!8280586))

(declare-fun m!8280594 () Bool)

(assert (=> d!2359377 m!8280594))

(declare-fun m!8280596 () Bool)

(assert (=> d!2359377 m!8280596))

(declare-fun m!8280598 () Bool)

(assert (=> d!2359377 m!8280598))

(declare-fun m!8280600 () Bool)

(assert (=> d!2359377 m!8280600))

(declare-fun m!8280602 () Bool)

(assert (=> b!7906251 m!8280602))

(declare-fun m!8280604 () Bool)

(assert (=> b!7906251 m!8280604))

(declare-fun m!8280606 () Bool)

(assert (=> b!7906251 m!8280606))

(declare-fun m!8280608 () Bool)

(assert (=> b!7906251 m!8280608))

(declare-fun m!8280610 () Bool)

(assert (=> b!7906251 m!8280610))

(assert (=> b!7906251 m!8280606))

(declare-fun m!8280612 () Bool)

(assert (=> b!7906251 m!8280612))

(assert (=> b!7906251 m!8280606))

(declare-fun m!8280614 () Bool)

(assert (=> b!7906251 m!8280614))

(assert (=> b!7906251 m!8280604))

(assert (=> b!7906251 m!8280460))

(declare-fun m!8280616 () Bool)

(assert (=> b!7906251 m!8280616))

(assert (=> b!7906251 m!8280606))

(assert (=> b!7906251 m!8280460))

(assert (=> b!7906259 m!8280604))

(assert (=> b!7906259 m!8280460))

(assert (=> b!7906259 m!8280604))

(assert (=> b!7906259 m!8280460))

(assert (=> b!7906259 m!8280616))

(declare-fun m!8280618 () Bool)

(assert (=> b!7906259 m!8280618))

(assert (=> b!7906254 m!8280586))

(assert (=> b!7906254 m!8280588))

(assert (=> b!7906254 m!8280588))

(assert (=> b!7906254 m!8280590))

(assert (=> b!7906254 m!8280590))

(declare-fun m!8280620 () Bool)

(assert (=> b!7906254 m!8280620))

(assert (=> b!7906256 m!8280586))

(declare-fun m!8280622 () Bool)

(assert (=> b!7906256 m!8280622))

(assert (=> b!7906256 m!8280460))

(assert (=> b!7906257 m!8280586))

(declare-fun m!8280624 () Bool)

(assert (=> b!7906257 m!8280624))

(assert (=> b!7906258 m!8280586))

(declare-fun m!8280626 () Bool)

(assert (=> b!7906258 m!8280626))

(assert (=> b!7906258 m!8280626))

(declare-fun m!8280628 () Bool)

(assert (=> b!7906258 m!8280628))

(assert (=> b!7906076 d!2359377))

(declare-fun d!2359395 () Bool)

(declare-fun lt!2685183 () Bool)

(declare-fun content!15725 (List!74397) (Set Rule!17050))

(assert (=> d!2359395 (= lt!2685183 (set.member (rule!11917 (_1!38445 lt!2685126)) (content!15725 rulesArg!141)))))

(declare-fun e!4667017 () Bool)

(assert (=> d!2359395 (= lt!2685183 e!4667017)))

(declare-fun res!3137437 () Bool)

(assert (=> d!2359395 (=> (not res!3137437) (not e!4667017))))

(assert (=> d!2359395 (= res!3137437 (is-Cons!74273 rulesArg!141))))

(assert (=> d!2359395 (= (contains!20891 rulesArg!141 (rule!11917 (_1!38445 lt!2685126))) lt!2685183)))

(declare-fun b!7906272 () Bool)

(declare-fun e!4667018 () Bool)

(assert (=> b!7906272 (= e!4667017 e!4667018)))

(declare-fun res!3137436 () Bool)

(assert (=> b!7906272 (=> res!3137436 e!4667018)))

(assert (=> b!7906272 (= res!3137436 (= (h!80721 rulesArg!141) (rule!11917 (_1!38445 lt!2685126))))))

(declare-fun b!7906273 () Bool)

(assert (=> b!7906273 (= e!4667018 (contains!20891 (t!389634 rulesArg!141) (rule!11917 (_1!38445 lt!2685126))))))

(assert (= (and d!2359395 res!3137437) b!7906272))

(assert (= (and b!7906272 (not res!3137436)) b!7906273))

(declare-fun m!8280630 () Bool)

(assert (=> d!2359395 m!8280630))

(declare-fun m!8280632 () Bool)

(assert (=> d!2359395 m!8280632))

(declare-fun m!8280634 () Bool)

(assert (=> b!7906273 m!8280634))

(assert (=> b!7906087 d!2359395))

(declare-fun b!7906310 () Bool)

(declare-fun e!4667043 () Bool)

(declare-fun nullable!9489 (Regex!21328) Bool)

(assert (=> b!7906310 (= e!4667043 (nullable!9489 (regex!8625 (rule!11917 (_1!38445 lt!2685126)))))))

(declare-fun b!7906311 () Bool)

(declare-fun e!4667040 () Bool)

(declare-fun e!4667041 () Bool)

(assert (=> b!7906311 (= e!4667040 e!4667041)))

(declare-fun c!1450746 () Bool)

(assert (=> b!7906311 (= c!1450746 (is-EmptyLang!21328 (regex!8625 (rule!11917 (_1!38445 lt!2685126)))))))

(declare-fun b!7906312 () Bool)

(declare-fun derivativeStep!6431 (Regex!21328 C!42986) Regex!21328)

(assert (=> b!7906312 (= e!4667043 (matchR!10655 (derivativeStep!6431 (regex!8625 (rule!11917 (_1!38445 lt!2685126))) (head!16150 lt!2685124)) (tail!15693 lt!2685124)))))

(declare-fun b!7906313 () Bool)

(declare-fun res!3137460 () Bool)

(declare-fun e!4667045 () Bool)

(assert (=> b!7906313 (=> res!3137460 e!4667045)))

(declare-fun e!4667044 () Bool)

(assert (=> b!7906313 (= res!3137460 e!4667044)))

(declare-fun res!3137465 () Bool)

(assert (=> b!7906313 (=> (not res!3137465) (not e!4667044))))

(declare-fun lt!2685189 () Bool)

(assert (=> b!7906313 (= res!3137465 lt!2685189)))

(declare-fun b!7906314 () Bool)

(declare-fun e!4667042 () Bool)

(assert (=> b!7906314 (= e!4667042 (not (= (head!16150 lt!2685124) (c!1450713 (regex!8625 (rule!11917 (_1!38445 lt!2685126)))))))))

(declare-fun b!7906315 () Bool)

(declare-fun res!3137462 () Bool)

(assert (=> b!7906315 (=> (not res!3137462) (not e!4667044))))

(assert (=> b!7906315 (= res!3137462 (isEmpty!42628 (tail!15693 lt!2685124)))))

(declare-fun bm!733445 () Bool)

(declare-fun call!733450 () Bool)

(assert (=> bm!733445 (= call!733450 (isEmpty!42628 lt!2685124))))

(declare-fun b!7906316 () Bool)

(assert (=> b!7906316 (= e!4667040 (= lt!2685189 call!733450))))

(declare-fun b!7906318 () Bool)

(declare-fun e!4667039 () Bool)

(assert (=> b!7906318 (= e!4667039 e!4667042)))

(declare-fun res!3137463 () Bool)

(assert (=> b!7906318 (=> res!3137463 e!4667042)))

(assert (=> b!7906318 (= res!3137463 call!733450)))

(declare-fun b!7906319 () Bool)

(declare-fun res!3137466 () Bool)

(assert (=> b!7906319 (=> (not res!3137466) (not e!4667044))))

(assert (=> b!7906319 (= res!3137466 (not call!733450))))

(declare-fun b!7906320 () Bool)

(declare-fun res!3137461 () Bool)

(assert (=> b!7906320 (=> res!3137461 e!4667042)))

(assert (=> b!7906320 (= res!3137461 (not (isEmpty!42628 (tail!15693 lt!2685124))))))

(declare-fun b!7906321 () Bool)

(assert (=> b!7906321 (= e!4667044 (= (head!16150 lt!2685124) (c!1450713 (regex!8625 (rule!11917 (_1!38445 lt!2685126))))))))

(declare-fun b!7906322 () Bool)

(assert (=> b!7906322 (= e!4667041 (not lt!2685189))))

(declare-fun b!7906323 () Bool)

(assert (=> b!7906323 (= e!4667045 e!4667039)))

(declare-fun res!3137464 () Bool)

(assert (=> b!7906323 (=> (not res!3137464) (not e!4667039))))

(assert (=> b!7906323 (= res!3137464 (not lt!2685189))))

(declare-fun d!2359397 () Bool)

(assert (=> d!2359397 e!4667040))

(declare-fun c!1450747 () Bool)

(assert (=> d!2359397 (= c!1450747 (is-EmptyExpr!21328 (regex!8625 (rule!11917 (_1!38445 lt!2685126)))))))

(assert (=> d!2359397 (= lt!2685189 e!4667043)))

(declare-fun c!1450745 () Bool)

(assert (=> d!2359397 (= c!1450745 (isEmpty!42628 lt!2685124))))

(declare-fun validRegex!11652 (Regex!21328) Bool)

(assert (=> d!2359397 (validRegex!11652 (regex!8625 (rule!11917 (_1!38445 lt!2685126))))))

(assert (=> d!2359397 (= (matchR!10655 (regex!8625 (rule!11917 (_1!38445 lt!2685126))) lt!2685124) lt!2685189)))

(declare-fun b!7906317 () Bool)

(declare-fun res!3137467 () Bool)

(assert (=> b!7906317 (=> res!3137467 e!4667045)))

(assert (=> b!7906317 (= res!3137467 (not (is-ElementMatch!21328 (regex!8625 (rule!11917 (_1!38445 lt!2685126))))))))

(assert (=> b!7906317 (= e!4667041 e!4667045)))

(assert (= (and d!2359397 c!1450745) b!7906310))

(assert (= (and d!2359397 (not c!1450745)) b!7906312))

(assert (= (and d!2359397 c!1450747) b!7906316))

(assert (= (and d!2359397 (not c!1450747)) b!7906311))

(assert (= (and b!7906311 c!1450746) b!7906322))

(assert (= (and b!7906311 (not c!1450746)) b!7906317))

(assert (= (and b!7906317 (not res!3137467)) b!7906313))

(assert (= (and b!7906313 res!3137465) b!7906319))

(assert (= (and b!7906319 res!3137466) b!7906315))

(assert (= (and b!7906315 res!3137462) b!7906321))

(assert (= (and b!7906313 (not res!3137460)) b!7906323))

(assert (= (and b!7906323 res!3137464) b!7906318))

(assert (= (and b!7906318 (not res!3137463)) b!7906320))

(assert (= (and b!7906320 (not res!3137461)) b!7906314))

(assert (= (or b!7906316 b!7906318 b!7906319) bm!733445))

(declare-fun m!8280648 () Bool)

(assert (=> b!7906310 m!8280648))

(declare-fun m!8280650 () Bool)

(assert (=> b!7906314 m!8280650))

(declare-fun m!8280652 () Bool)

(assert (=> b!7906320 m!8280652))

(assert (=> b!7906320 m!8280652))

(declare-fun m!8280654 () Bool)

(assert (=> b!7906320 m!8280654))

(assert (=> b!7906315 m!8280652))

(assert (=> b!7906315 m!8280652))

(assert (=> b!7906315 m!8280654))

(declare-fun m!8280656 () Bool)

(assert (=> bm!733445 m!8280656))

(assert (=> d!2359397 m!8280656))

(declare-fun m!8280658 () Bool)

(assert (=> d!2359397 m!8280658))

(assert (=> b!7906321 m!8280650))

(assert (=> b!7906312 m!8280650))

(assert (=> b!7906312 m!8280650))

(declare-fun m!8280660 () Bool)

(assert (=> b!7906312 m!8280660))

(assert (=> b!7906312 m!8280652))

(assert (=> b!7906312 m!8280660))

(assert (=> b!7906312 m!8280652))

(declare-fun m!8280662 () Bool)

(assert (=> b!7906312 m!8280662))

(assert (=> b!7906086 d!2359397))

(declare-fun d!2359401 () Bool)

(assert (=> d!2359401 (= (isEmpty!42625 rulesArg!141) (is-Nil!74273 rulesArg!141))))

(assert (=> b!7906077 d!2359401))

(declare-fun d!2359403 () Bool)

(assert (=> d!2359403 true))

(declare-fun lt!2685192 () Bool)

(declare-fun lambda!472500 () Int)

(declare-fun forall!18448 (List!74397 Int) Bool)

(assert (=> d!2359403 (= lt!2685192 (forall!18448 rulesArg!141 lambda!472500))))

(declare-fun e!4667051 () Bool)

(assert (=> d!2359403 (= lt!2685192 e!4667051)))

(declare-fun res!3137472 () Bool)

(assert (=> d!2359403 (=> res!3137472 e!4667051)))

(assert (=> d!2359403 (= res!3137472 (not (is-Cons!74273 rulesArg!141)))))

(assert (=> d!2359403 (= (rulesValidInductive!3436 thiss!14377 rulesArg!141) lt!2685192)))

(declare-fun b!7906328 () Bool)

(declare-fun e!4667050 () Bool)

(assert (=> b!7906328 (= e!4667051 e!4667050)))

(declare-fun res!3137473 () Bool)

(assert (=> b!7906328 (=> (not res!3137473) (not e!4667050))))

(assert (=> b!7906328 (= res!3137473 (ruleValid!3939 thiss!14377 (h!80721 rulesArg!141)))))

(declare-fun b!7906329 () Bool)

(assert (=> b!7906329 (= e!4667050 (rulesValidInductive!3436 thiss!14377 (t!389634 rulesArg!141)))))

(assert (= (and d!2359403 (not res!3137472)) b!7906328))

(assert (= (and b!7906328 res!3137473) b!7906329))

(declare-fun m!8280664 () Bool)

(assert (=> d!2359403 m!8280664))

(assert (=> b!7906328 m!8280600))

(declare-fun m!8280666 () Bool)

(assert (=> b!7906329 m!8280666))

(assert (=> b!7906079 d!2359403))

(declare-fun b!7906342 () Bool)

(declare-fun e!4667054 () Bool)

(assert (=> b!7906342 (= e!4667054 tp_is_empty!53031)))

(declare-fun b!7906344 () Bool)

(declare-fun tp!2355359 () Bool)

(assert (=> b!7906344 (= e!4667054 tp!2355359)))

(declare-fun b!7906345 () Bool)

(declare-fun tp!2355361 () Bool)

(declare-fun tp!2355363 () Bool)

(assert (=> b!7906345 (= e!4667054 (and tp!2355361 tp!2355363))))

(assert (=> b!7906082 (= tp!2355323 e!4667054)))

(declare-fun b!7906343 () Bool)

(declare-fun tp!2355362 () Bool)

(declare-fun tp!2355360 () Bool)

(assert (=> b!7906343 (= e!4667054 (and tp!2355362 tp!2355360))))

(assert (= (and b!7906082 (is-ElementMatch!21328 (regex!8625 (h!80721 rulesArg!141)))) b!7906342))

(assert (= (and b!7906082 (is-Concat!30270 (regex!8625 (h!80721 rulesArg!141)))) b!7906343))

(assert (= (and b!7906082 (is-Star!21328 (regex!8625 (h!80721 rulesArg!141)))) b!7906344))

(assert (= (and b!7906082 (is-Union!21328 (regex!8625 (h!80721 rulesArg!141)))) b!7906345))

(declare-fun b!7906356 () Bool)

(declare-fun b_free!134987 () Bool)

(declare-fun b_next!135777 () Bool)

(assert (=> b!7906356 (= b_free!134987 (not b_next!135777))))

(declare-fun t!389647 () Bool)

(declare-fun tb!263083 () Bool)

(assert (=> (and b!7906356 (= (toValue!11682 (transformation!8625 (h!80721 (t!389634 rulesArg!141)))) (toValue!11682 (transformation!8625 (rule!11917 (_1!38445 lt!2685126))))) t!389647) tb!263083))

(declare-fun result!360226 () Bool)

(assert (= result!360226 result!360210))

(assert (=> d!2359359 t!389647))

(declare-fun b_and!353175 () Bool)

(declare-fun tp!2355373 () Bool)

(assert (=> b!7906356 (= tp!2355373 (and (=> t!389647 result!360226) b_and!353175))))

(declare-fun b_free!134989 () Bool)

(declare-fun b_next!135779 () Bool)

(assert (=> b!7906356 (= b_free!134989 (not b_next!135779))))

(declare-fun t!389649 () Bool)

(declare-fun tb!263085 () Bool)

(assert (=> (and b!7906356 (= (toChars!11541 (transformation!8625 (h!80721 (t!389634 rulesArg!141)))) (toChars!11541 (transformation!8625 (rule!11917 (_1!38445 lt!2685126))))) t!389649) tb!263085))

(declare-fun result!360228 () Bool)

(assert (= result!360228 result!360206))

(assert (=> d!2359343 t!389649))

(declare-fun b_and!353177 () Bool)

(declare-fun tp!2355372 () Bool)

(assert (=> b!7906356 (= tp!2355372 (and (=> t!389649 result!360228) b_and!353177))))

(declare-fun e!4667064 () Bool)

(assert (=> b!7906356 (= e!4667064 (and tp!2355373 tp!2355372))))

(declare-fun b!7906355 () Bool)

(declare-fun e!4667065 () Bool)

(declare-fun tp!2355375 () Bool)

(assert (=> b!7906355 (= e!4667065 (and tp!2355375 (inv!95281 (tag!9489 (h!80721 (t!389634 rulesArg!141)))) (inv!95284 (transformation!8625 (h!80721 (t!389634 rulesArg!141)))) e!4667064))))

(declare-fun b!7906354 () Bool)

(declare-fun e!4667066 () Bool)

(declare-fun tp!2355374 () Bool)

(assert (=> b!7906354 (= e!4667066 (and e!4667065 tp!2355374))))

(assert (=> b!7906084 (= tp!2355327 e!4667066)))

(assert (= b!7906355 b!7906356))

(assert (= b!7906354 b!7906355))

(assert (= (and b!7906084 (is-Cons!74273 (t!389634 rulesArg!141))) b!7906354))

(declare-fun m!8280668 () Bool)

(assert (=> b!7906355 m!8280668))

(declare-fun m!8280670 () Bool)

(assert (=> b!7906355 m!8280670))

(declare-fun b!7906361 () Bool)

(declare-fun e!4667069 () Bool)

(declare-fun tp!2355378 () Bool)

(assert (=> b!7906361 (= e!4667069 (and tp_is_empty!53031 tp!2355378))))

(assert (=> b!7906078 (= tp!2355326 e!4667069)))

(assert (= (and b!7906078 (is-Cons!74272 (t!389633 input!1184))) b!7906361))

(push 1)

(assert (not b!7906255))

(assert (not b!7906143))

(assert (not d!2359341))

(assert (not b_next!135779))

(assert (not b!7906329))

(assert (not b!7906164))

(assert b_and!353177)

(assert (not b!7906137))

(assert (not b!7906175))

(assert (not b!7906354))

(assert (not b_lambda!289877))

(assert (not d!2359395))

(assert (not d!2359397))

(assert (not d!2359377))

(assert (not b!7906257))

(assert (not b!7906251))

(assert (not b_next!135771))

(assert (not b!7906254))

(assert (not b!7906176))

(assert (not b!7906256))

(assert (not d!2359361))

(assert b_and!353175)

(assert (not b!7906343))

(assert (not b!7906314))

(assert (not b!7906355))

(assert (not d!2359343))

(assert (not b!7906273))

(assert (not b!7906345))

(assert (not b!7906361))

(assert (not b!7906145))

(assert (not d!2359363))

(assert (not b!7906177))

(assert (not b!7906253))

(assert (not b!7906315))

(assert (not d!2359373))

(assert (not b!7906320))

(assert (not tb!263075))

(assert (not b_lambda!289875))

(assert b_and!353167)

(assert (not b!7906148))

(assert (not d!2359403))

(assert (not b!7906258))

(assert b_and!353169)

(assert (not b_next!135777))

(assert (not tb!263077))

(assert (not d!2359353))

(assert (not b!7906328))

(assert (not bm!733445))

(assert (not b!7906312))

(assert (not b!7906310))

(assert (not d!2359371))

(assert (not b!7906344))

(assert (not b!7906259))

(assert (not b!7906321))

(assert tp_is_empty!53031)

(assert (not b!7906163))

(assert (not b_next!135769))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!135771))

(assert b_and!353175)

(assert (not b_next!135779))

(assert b_and!353167)

(assert b_and!353177)

(assert (not b_next!135769))

(assert b_and!353169)

(assert (not b_next!135777))

(check-sat)

(pop 1)

