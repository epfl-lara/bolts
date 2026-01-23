; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351922 () Bool)

(assert start!351922)

(declare-fun b!3748401 () Bool)

(declare-fun b_free!100073 () Bool)

(declare-fun b_next!100777 () Bool)

(assert (=> b!3748401 (= b_free!100073 (not b_next!100777))))

(declare-fun tp!1143942 () Bool)

(declare-fun b_and!278307 () Bool)

(assert (=> b!3748401 (= tp!1143942 b_and!278307)))

(declare-fun b_free!100075 () Bool)

(declare-fun b_next!100779 () Bool)

(assert (=> b!3748401 (= b_free!100075 (not b_next!100779))))

(declare-fun tp!1143941 () Bool)

(declare-fun b_and!278309 () Bool)

(assert (=> b!3748401 (= tp!1143941 b_and!278309)))

(declare-fun b!3748396 () Bool)

(declare-fun b_free!100077 () Bool)

(declare-fun b_next!100781 () Bool)

(assert (=> b!3748396 (= b_free!100077 (not b_next!100781))))

(declare-fun tp!1143934 () Bool)

(declare-fun b_and!278311 () Bool)

(assert (=> b!3748396 (= tp!1143934 b_and!278311)))

(declare-fun b_free!100079 () Bool)

(declare-fun b_next!100783 () Bool)

(assert (=> b!3748396 (= b_free!100079 (not b_next!100783))))

(declare-fun tp!1143935 () Bool)

(declare-fun b_and!278313 () Bool)

(assert (=> b!3748396 (= tp!1143935 b_and!278313)))

(declare-fun b!3748407 () Bool)

(declare-fun b_free!100081 () Bool)

(declare-fun b_next!100785 () Bool)

(assert (=> b!3748407 (= b_free!100081 (not b_next!100785))))

(declare-fun tp!1143944 () Bool)

(declare-fun b_and!278315 () Bool)

(assert (=> b!3748407 (= tp!1143944 b_and!278315)))

(declare-fun b_free!100083 () Bool)

(declare-fun b_next!100787 () Bool)

(assert (=> b!3748407 (= b_free!100083 (not b_next!100787))))

(declare-fun tp!1143937 () Bool)

(declare-fun b_and!278317 () Bool)

(assert (=> b!3748407 (= tp!1143937 b_and!278317)))

(declare-datatypes ((C!22188 0))(
  ( (C!22189 (val!13142 Int)) )
))
(declare-datatypes ((List!40021 0))(
  ( (Nil!39897) (Cons!39897 (h!45317 C!22188) (t!302704 List!40021)) )
))
(declare-datatypes ((IArray!24391 0))(
  ( (IArray!24392 (innerList!12253 List!40021)) )
))
(declare-datatypes ((Regex!11001 0))(
  ( (ElementMatch!11001 (c!649050 C!22188)) (Concat!17327 (regOne!22514 Regex!11001) (regTwo!22514 Regex!11001)) (EmptyExpr!11001) (Star!11001 (reg!11330 Regex!11001)) (EmptyLang!11001) (Union!11001 (regOne!22515 Regex!11001) (regTwo!22515 Regex!11001)) )
))
(declare-datatypes ((List!40022 0))(
  ( (Nil!39898) (Cons!39898 (h!45318 (_ BitVec 16)) (t!302705 List!40022)) )
))
(declare-datatypes ((TokenValue!6326 0))(
  ( (FloatLiteralValue!12652 (text!44727 List!40022)) (TokenValueExt!6325 (__x!24869 Int)) (Broken!31630 (value!194275 List!40022)) (Object!6449) (End!6326) (Def!6326) (Underscore!6326) (Match!6326) (Else!6326) (Error!6326) (Case!6326) (If!6326) (Extends!6326) (Abstract!6326) (Class!6326) (Val!6326) (DelimiterValue!12652 (del!6386 List!40022)) (KeywordValue!6332 (value!194276 List!40022)) (CommentValue!12652 (value!194277 List!40022)) (WhitespaceValue!12652 (value!194278 List!40022)) (IndentationValue!6326 (value!194279 List!40022)) (String!45255) (Int32!6326) (Broken!31631 (value!194280 List!40022)) (Boolean!6327) (Unit!57701) (OperatorValue!6329 (op!6386 List!40022)) (IdentifierValue!12652 (value!194281 List!40022)) (IdentifierValue!12653 (value!194282 List!40022)) (WhitespaceValue!12653 (value!194283 List!40022)) (True!12652) (False!12652) (Broken!31632 (value!194284 List!40022)) (Broken!31633 (value!194285 List!40022)) (True!12653) (RightBrace!6326) (RightBracket!6326) (Colon!6326) (Null!6326) (Comma!6326) (LeftBracket!6326) (False!12653) (LeftBrace!6326) (ImaginaryLiteralValue!6326 (text!44728 List!40022)) (StringLiteralValue!18978 (value!194286 List!40022)) (EOFValue!6326 (value!194287 List!40022)) (IdentValue!6326 (value!194288 List!40022)) (DelimiterValue!12653 (value!194289 List!40022)) (DedentValue!6326 (value!194290 List!40022)) (NewLineValue!6326 (value!194291 List!40022)) (IntegerValue!18978 (value!194292 (_ BitVec 32)) (text!44729 List!40022)) (IntegerValue!18979 (value!194293 Int) (text!44730 List!40022)) (Times!6326) (Or!6326) (Equal!6326) (Minus!6326) (Broken!31634 (value!194294 List!40022)) (And!6326) (Div!6326) (LessEqual!6326) (Mod!6326) (Concat!17328) (Not!6326) (Plus!6326) (SpaceValue!6326 (value!194295 List!40022)) (IntegerValue!18980 (value!194296 Int) (text!44731 List!40022)) (StringLiteralValue!18979 (text!44732 List!40022)) (FloatLiteralValue!12653 (text!44733 List!40022)) (BytesLiteralValue!6326 (value!194297 List!40022)) (CommentValue!12653 (value!194298 List!40022)) (StringLiteralValue!18980 (value!194299 List!40022)) (ErrorTokenValue!6326 (msg!6387 List!40022)) )
))
(declare-datatypes ((String!45256 0))(
  ( (String!45257 (value!194300 String)) )
))
(declare-datatypes ((Conc!12193 0))(
  ( (Node!12193 (left!30880 Conc!12193) (right!31210 Conc!12193) (csize!24616 Int) (cheight!12404 Int)) (Leaf!18925 (xs!15395 IArray!24391) (csize!24617 Int)) (Empty!12193) )
))
(declare-datatypes ((BalanceConc!24000 0))(
  ( (BalanceConc!24001 (c!649051 Conc!12193)) )
))
(declare-datatypes ((TokenValueInjection!12080 0))(
  ( (TokenValueInjection!12081 (toValue!8444 Int) (toChars!8303 Int)) )
))
(declare-datatypes ((Rule!11992 0))(
  ( (Rule!11993 (regex!6096 Regex!11001) (tag!6956 String!45256) (isSeparator!6096 Bool) (transformation!6096 TokenValueInjection!12080)) )
))
(declare-datatypes ((Token!11330 0))(
  ( (Token!11331 (value!194301 TokenValue!6326) (rule!8860 Rule!11992) (size!30057 Int) (originalCharacters!6696 List!40021)) )
))
(declare-datatypes ((List!40023 0))(
  ( (Nil!39899) (Cons!39899 (h!45319 Token!11330) (t!302706 List!40023)) )
))
(declare-fun tokens!606 () List!40023)

(declare-fun b!3748395 () Bool)

(declare-fun e!2318112 () Bool)

(declare-fun tp!1143936 () Bool)

(declare-fun e!2318103 () Bool)

(declare-fun inv!53402 (Token!11330) Bool)

(assert (=> b!3748395 (= e!2318103 (and (inv!53402 (h!45319 tokens!606)) e!2318112 tp!1143936))))

(declare-fun e!2318118 () Bool)

(assert (=> b!3748396 (= e!2318118 (and tp!1143934 tp!1143935))))

(declare-fun e!2318106 () Bool)

(declare-fun tp!1143938 () Bool)

(declare-fun b!3748397 () Bool)

(declare-fun inv!53399 (String!45256) Bool)

(declare-fun inv!53403 (TokenValueInjection!12080) Bool)

(assert (=> b!3748397 (= e!2318106 (and tp!1143938 (inv!53399 (tag!6956 (rule!8860 (h!45319 tokens!606)))) (inv!53403 (transformation!6096 (rule!8860 (h!45319 tokens!606)))) e!2318118))))

(declare-fun b!3748398 () Bool)

(declare-fun res!1519368 () Bool)

(declare-fun e!2318114 () Bool)

(assert (=> b!3748398 (=> (not res!1519368) (not e!2318114))))

(declare-datatypes ((LexerInterface!5685 0))(
  ( (LexerInterfaceExt!5682 (__x!24870 Int)) (Lexer!5683) )
))
(declare-fun thiss!27232 () LexerInterface!5685)

(declare-datatypes ((List!40024 0))(
  ( (Nil!39900) (Cons!39900 (h!45320 Rule!11992) (t!302707 List!40024)) )
))
(declare-fun rules!4236 () List!40024)

(declare-fun rulesInvariant!5082 (LexerInterface!5685 List!40024) Bool)

(assert (=> b!3748398 (= res!1519368 (rulesInvariant!5082 thiss!27232 rules!4236))))

(declare-fun b!3748399 () Bool)

(declare-fun e!2318104 () Bool)

(declare-fun e!2318117 () Bool)

(declare-fun tp!1143939 () Bool)

(assert (=> b!3748399 (= e!2318104 (and e!2318117 tp!1143939))))

(declare-fun b!3748400 () Bool)

(declare-fun res!1519369 () Bool)

(assert (=> b!3748400 (=> (not res!1519369) (not e!2318114))))

(declare-fun isEmpty!23518 (List!40024) Bool)

(assert (=> b!3748400 (= res!1519369 (not (isEmpty!23518 rules!4236)))))

(declare-fun e!2318116 () Bool)

(assert (=> b!3748401 (= e!2318116 (and tp!1143942 tp!1143941))))

(declare-fun b!3748402 () Bool)

(declare-fun res!1519370 () Bool)

(assert (=> b!3748402 (=> (not res!1519370) (not e!2318114))))

(declare-fun t!8579 () Token!11330)

(declare-fun contains!8148 (List!40023 Token!11330) Bool)

(assert (=> b!3748402 (= res!1519370 (contains!8148 tokens!606 t!8579))))

(declare-fun b!3748403 () Bool)

(assert (=> b!3748403 (= e!2318114 false)))

(declare-fun lt!1299676 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1913 (LexerInterface!5685 List!40024 List!40023) Bool)

(assert (=> b!3748403 (= lt!1299676 (rulesProduceEachTokenIndividuallyList!1913 thiss!27232 rules!4236 tokens!606))))

(declare-fun res!1519371 () Bool)

(assert (=> start!351922 (=> (not res!1519371) (not e!2318114))))

(get-info :version)

(assert (=> start!351922 (= res!1519371 ((_ is Lexer!5683) thiss!27232))))

(assert (=> start!351922 e!2318114))

(assert (=> start!351922 true))

(assert (=> start!351922 e!2318104))

(assert (=> start!351922 e!2318103))

(declare-fun e!2318107 () Bool)

(assert (=> start!351922 (and (inv!53402 t!8579) e!2318107)))

(declare-fun tp!1143943 () Bool)

(declare-fun b!3748404 () Bool)

(assert (=> b!3748404 (= e!2318117 (and tp!1143943 (inv!53399 (tag!6956 (h!45320 rules!4236))) (inv!53403 (transformation!6096 (h!45320 rules!4236))) e!2318116))))

(declare-fun e!2318115 () Bool)

(declare-fun e!2318111 () Bool)

(declare-fun tp!1143945 () Bool)

(declare-fun b!3748405 () Bool)

(assert (=> b!3748405 (= e!2318111 (and tp!1143945 (inv!53399 (tag!6956 (rule!8860 t!8579))) (inv!53403 (transformation!6096 (rule!8860 t!8579))) e!2318115))))

(declare-fun b!3748406 () Bool)

(declare-fun tp!1143946 () Bool)

(declare-fun inv!21 (TokenValue!6326) Bool)

(assert (=> b!3748406 (= e!2318107 (and (inv!21 (value!194301 t!8579)) e!2318111 tp!1143946))))

(assert (=> b!3748407 (= e!2318115 (and tp!1143944 tp!1143937))))

(declare-fun tp!1143940 () Bool)

(declare-fun b!3748408 () Bool)

(assert (=> b!3748408 (= e!2318112 (and (inv!21 (value!194301 (h!45319 tokens!606))) e!2318106 tp!1143940))))

(assert (= (and start!351922 res!1519371) b!3748400))

(assert (= (and b!3748400 res!1519369) b!3748398))

(assert (= (and b!3748398 res!1519368) b!3748402))

(assert (= (and b!3748402 res!1519370) b!3748403))

(assert (= b!3748404 b!3748401))

(assert (= b!3748399 b!3748404))

(assert (= (and start!351922 ((_ is Cons!39900) rules!4236)) b!3748399))

(assert (= b!3748397 b!3748396))

(assert (= b!3748408 b!3748397))

(assert (= b!3748395 b!3748408))

(assert (= (and start!351922 ((_ is Cons!39899) tokens!606)) b!3748395))

(assert (= b!3748405 b!3748407))

(assert (= b!3748406 b!3748405))

(assert (= start!351922 b!3748406))

(declare-fun m!4240177 () Bool)

(assert (=> b!3748404 m!4240177))

(declare-fun m!4240179 () Bool)

(assert (=> b!3748404 m!4240179))

(declare-fun m!4240181 () Bool)

(assert (=> b!3748408 m!4240181))

(declare-fun m!4240183 () Bool)

(assert (=> b!3748403 m!4240183))

(declare-fun m!4240185 () Bool)

(assert (=> start!351922 m!4240185))

(declare-fun m!4240187 () Bool)

(assert (=> b!3748406 m!4240187))

(declare-fun m!4240189 () Bool)

(assert (=> b!3748405 m!4240189))

(declare-fun m!4240191 () Bool)

(assert (=> b!3748405 m!4240191))

(declare-fun m!4240193 () Bool)

(assert (=> b!3748397 m!4240193))

(declare-fun m!4240195 () Bool)

(assert (=> b!3748397 m!4240195))

(declare-fun m!4240197 () Bool)

(assert (=> b!3748398 m!4240197))

(declare-fun m!4240199 () Bool)

(assert (=> b!3748395 m!4240199))

(declare-fun m!4240201 () Bool)

(assert (=> b!3748400 m!4240201))

(declare-fun m!4240203 () Bool)

(assert (=> b!3748402 m!4240203))

(check-sat (not b!3748406) b_and!278307 (not b!3748408) (not b!3748402) (not b!3748404) (not b!3748403) (not b!3748400) (not b_next!100781) (not b_next!100783) b_and!278309 (not b!3748395) (not b!3748398) (not b!3748397) b_and!278313 (not b_next!100787) (not b_next!100779) b_and!278315 (not b_next!100777) (not b!3748405) (not b_next!100785) b_and!278311 (not b!3748399) (not start!351922) b_and!278317)
(check-sat b_and!278307 (not b_next!100781) b_and!278311 b_and!278317 (not b_next!100783) b_and!278309 b_and!278313 (not b_next!100787) (not b_next!100779) b_and!278315 (not b_next!100777) (not b_next!100785))
