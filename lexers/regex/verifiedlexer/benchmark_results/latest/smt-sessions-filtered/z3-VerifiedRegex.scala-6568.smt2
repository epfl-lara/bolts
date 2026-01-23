; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347490 () Bool)

(assert start!347490)

(declare-fun b!3691917 () Bool)

(declare-fun b_free!98013 () Bool)

(declare-fun b_next!98717 () Bool)

(assert (=> b!3691917 (= b_free!98013 (not b_next!98717))))

(declare-fun tp!1121873 () Bool)

(declare-fun b_and!275779 () Bool)

(assert (=> b!3691917 (= tp!1121873 b_and!275779)))

(declare-fun b_free!98015 () Bool)

(declare-fun b_next!98719 () Bool)

(assert (=> b!3691917 (= b_free!98015 (not b_next!98719))))

(declare-fun tp!1121872 () Bool)

(declare-fun b_and!275781 () Bool)

(assert (=> b!3691917 (= tp!1121872 b_and!275781)))

(declare-fun b!3691911 () Bool)

(declare-fun res!1500875 () Bool)

(declare-fun e!2286148 () Bool)

(assert (=> b!3691911 (=> (not res!1500875) (not e!2286148))))

(declare-datatypes ((LexerInterface!5505 0))(
  ( (LexerInterfaceExt!5502 (__x!24509 Int)) (Lexer!5503) )
))
(declare-fun thiss!25322 () LexerInterface!5505)

(declare-datatypes ((List!39244 0))(
  ( (Nil!39120) (Cons!39120 (h!44540 (_ BitVec 16)) (t!301393 List!39244)) )
))
(declare-datatypes ((TokenValue!6146 0))(
  ( (FloatLiteralValue!12292 (text!43467 List!39244)) (TokenValueExt!6145 (__x!24510 Int)) (Broken!30730 (value!189034 List!39244)) (Object!6269) (End!6146) (Def!6146) (Underscore!6146) (Match!6146) (Else!6146) (Error!6146) (Case!6146) (If!6146) (Extends!6146) (Abstract!6146) (Class!6146) (Val!6146) (DelimiterValue!12292 (del!6206 List!39244)) (KeywordValue!6152 (value!189035 List!39244)) (CommentValue!12292 (value!189036 List!39244)) (WhitespaceValue!12292 (value!189037 List!39244)) (IndentationValue!6146 (value!189038 List!39244)) (String!44063) (Int32!6146) (Broken!30731 (value!189039 List!39244)) (Boolean!6147) (Unit!57137) (OperatorValue!6149 (op!6206 List!39244)) (IdentifierValue!12292 (value!189040 List!39244)) (IdentifierValue!12293 (value!189041 List!39244)) (WhitespaceValue!12293 (value!189042 List!39244)) (True!12292) (False!12292) (Broken!30732 (value!189043 List!39244)) (Broken!30733 (value!189044 List!39244)) (True!12293) (RightBrace!6146) (RightBracket!6146) (Colon!6146) (Null!6146) (Comma!6146) (LeftBracket!6146) (False!12293) (LeftBrace!6146) (ImaginaryLiteralValue!6146 (text!43468 List!39244)) (StringLiteralValue!18438 (value!189045 List!39244)) (EOFValue!6146 (value!189046 List!39244)) (IdentValue!6146 (value!189047 List!39244)) (DelimiterValue!12293 (value!189048 List!39244)) (DedentValue!6146 (value!189049 List!39244)) (NewLineValue!6146 (value!189050 List!39244)) (IntegerValue!18438 (value!189051 (_ BitVec 32)) (text!43469 List!39244)) (IntegerValue!18439 (value!189052 Int) (text!43470 List!39244)) (Times!6146) (Or!6146) (Equal!6146) (Minus!6146) (Broken!30734 (value!189053 List!39244)) (And!6146) (Div!6146) (LessEqual!6146) (Mod!6146) (Concat!16821) (Not!6146) (Plus!6146) (SpaceValue!6146 (value!189054 List!39244)) (IntegerValue!18440 (value!189055 Int) (text!43471 List!39244)) (StringLiteralValue!18439 (text!43472 List!39244)) (FloatLiteralValue!12293 (text!43473 List!39244)) (BytesLiteralValue!6146 (value!189056 List!39244)) (CommentValue!12293 (value!189057 List!39244)) (StringLiteralValue!18440 (value!189058 List!39244)) (ErrorTokenValue!6146 (msg!6207 List!39244)) )
))
(declare-datatypes ((C!21536 0))(
  ( (C!21537 (val!12816 Int)) )
))
(declare-datatypes ((List!39245 0))(
  ( (Nil!39121) (Cons!39121 (h!44541 C!21536) (t!301394 List!39245)) )
))
(declare-datatypes ((IArray!24031 0))(
  ( (IArray!24032 (innerList!12073 List!39245)) )
))
(declare-datatypes ((Conc!12013 0))(
  ( (Node!12013 (left!30505 Conc!12013) (right!30835 Conc!12013) (csize!24256 Int) (cheight!12224 Int)) (Leaf!18582 (xs!15215 IArray!24031) (csize!24257 Int)) (Empty!12013) )
))
(declare-datatypes ((BalanceConc!23640 0))(
  ( (BalanceConc!23641 (c!638426 Conc!12013)) )
))
(declare-datatypes ((TokenValueInjection!11720 0))(
  ( (TokenValueInjection!11721 (toValue!8240 Int) (toChars!8099 Int)) )
))
(declare-datatypes ((Regex!10675 0))(
  ( (ElementMatch!10675 (c!638427 C!21536)) (Concat!16822 (regOne!21862 Regex!10675) (regTwo!21862 Regex!10675)) (EmptyExpr!10675) (Star!10675 (reg!11004 Regex!10675)) (EmptyLang!10675) (Union!10675 (regOne!21863 Regex!10675) (regTwo!21863 Regex!10675)) )
))
(declare-datatypes ((String!44064 0))(
  ( (String!44065 (value!189059 String)) )
))
(declare-datatypes ((Rule!11632 0))(
  ( (Rule!11633 (regex!5916 Regex!10675) (tag!6738 String!44064) (isSeparator!5916 Bool) (transformation!5916 TokenValueInjection!11720)) )
))
(declare-datatypes ((List!39246 0))(
  ( (Nil!39122) (Cons!39122 (h!44542 Rule!11632) (t!301395 List!39246)) )
))
(declare-fun rules!3598 () List!39246)

(declare-fun rulesInvariant!4902 (LexerInterface!5505 List!39246) Bool)

(assert (=> b!3691911 (= res!1500875 (rulesInvariant!4902 thiss!25322 rules!3598))))

(declare-fun b!3691912 () Bool)

(declare-fun e!2286151 () Bool)

(declare-fun tp_is_empty!18425 () Bool)

(declare-fun tp!1121874 () Bool)

(assert (=> b!3691912 (= e!2286151 (and tp_is_empty!18425 tp!1121874))))

(declare-fun b!3691913 () Bool)

(declare-fun rulesValidInductive!2124 (LexerInterface!5505 List!39246) Bool)

(assert (=> b!3691913 (= e!2286148 (not (rulesValidInductive!2124 thiss!25322 rules!3598)))))

(declare-fun tp!1121876 () Bool)

(declare-fun e!2286150 () Bool)

(declare-fun e!2286147 () Bool)

(declare-fun b!3691914 () Bool)

(declare-fun inv!52579 (String!44064) Bool)

(declare-fun inv!52581 (TokenValueInjection!11720) Bool)

(assert (=> b!3691914 (= e!2286150 (and tp!1121876 (inv!52579 (tag!6738 (h!44542 rules!3598))) (inv!52581 (transformation!5916 (h!44542 rules!3598))) e!2286147))))

(declare-fun b!3691915 () Bool)

(declare-fun e!2286149 () Bool)

(declare-fun tp!1121875 () Bool)

(assert (=> b!3691915 (= e!2286149 (and e!2286150 tp!1121875))))

(declare-fun b!3691916 () Bool)

(declare-fun res!1500874 () Bool)

(assert (=> b!3691916 (=> (not res!1500874) (not e!2286148))))

(declare-fun isEmpty!23318 (List!39246) Bool)

(assert (=> b!3691916 (= res!1500874 (not (isEmpty!23318 rules!3598)))))

(declare-fun res!1500877 () Bool)

(assert (=> start!347490 (=> (not res!1500877) (not e!2286148))))

(get-info :version)

(assert (=> start!347490 (= res!1500877 ((_ is Lexer!5503) thiss!25322))))

(assert (=> start!347490 e!2286148))

(assert (=> start!347490 true))

(assert (=> start!347490 e!2286149))

(assert (=> start!347490 e!2286151))

(assert (=> b!3691917 (= e!2286147 (and tp!1121873 tp!1121872))))

(declare-fun b!3691918 () Bool)

(declare-fun res!1500876 () Bool)

(assert (=> b!3691918 (=> (not res!1500876) (not e!2286148))))

(declare-fun input!3172 () List!39245)

(declare-datatypes ((Token!11186 0))(
  ( (Token!11187 (value!189060 TokenValue!6146) (rule!8762 Rule!11632) (size!29876 Int) (originalCharacters!6624 List!39245)) )
))
(declare-datatypes ((tuple2!39026 0))(
  ( (tuple2!39027 (_1!22647 Token!11186) (_2!22647 List!39245)) )
))
(declare-datatypes ((Option!8428 0))(
  ( (None!8427) (Some!8427 (v!38381 tuple2!39026)) )
))
(declare-fun isDefined!6621 (Option!8428) Bool)

(declare-fun maxPrefix!3027 (LexerInterface!5505 List!39246 List!39245) Option!8428)

(assert (=> b!3691918 (= res!1500876 (isDefined!6621 (maxPrefix!3027 thiss!25322 rules!3598 input!3172)))))

(assert (= (and start!347490 res!1500877) b!3691911))

(assert (= (and b!3691911 res!1500875) b!3691916))

(assert (= (and b!3691916 res!1500874) b!3691918))

(assert (= (and b!3691918 res!1500876) b!3691913))

(assert (= b!3691914 b!3691917))

(assert (= b!3691915 b!3691914))

(assert (= (and start!347490 ((_ is Cons!39122) rules!3598)) b!3691915))

(assert (= (and start!347490 ((_ is Cons!39121) input!3172)) b!3691912))

(declare-fun m!4204419 () Bool)

(assert (=> b!3691918 m!4204419))

(assert (=> b!3691918 m!4204419))

(declare-fun m!4204421 () Bool)

(assert (=> b!3691918 m!4204421))

(declare-fun m!4204423 () Bool)

(assert (=> b!3691914 m!4204423))

(declare-fun m!4204425 () Bool)

(assert (=> b!3691914 m!4204425))

(declare-fun m!4204427 () Bool)

(assert (=> b!3691913 m!4204427))

(declare-fun m!4204429 () Bool)

(assert (=> b!3691916 m!4204429))

(declare-fun m!4204431 () Bool)

(assert (=> b!3691911 m!4204431))

(check-sat (not b!3691912) (not b!3691915) (not b_next!98717) (not b!3691911) (not b!3691913) (not b!3691918) (not b!3691916) tp_is_empty!18425 (not b!3691914) (not b_next!98719) b_and!275779 b_and!275781)
(check-sat b_and!275779 b_and!275781 (not b_next!98717) (not b_next!98719))
(get-model)

(declare-fun d!1083431 () Bool)

(assert (=> d!1083431 (= (inv!52579 (tag!6738 (h!44542 rules!3598))) (= (mod (str.len (value!189059 (tag!6738 (h!44542 rules!3598)))) 2) 0))))

(assert (=> b!3691914 d!1083431))

(declare-fun d!1083433 () Bool)

(declare-fun res!1500880 () Bool)

(declare-fun e!2286155 () Bool)

(assert (=> d!1083433 (=> (not res!1500880) (not e!2286155))))

(declare-fun semiInverseModEq!2527 (Int Int) Bool)

(assert (=> d!1083433 (= res!1500880 (semiInverseModEq!2527 (toChars!8099 (transformation!5916 (h!44542 rules!3598))) (toValue!8240 (transformation!5916 (h!44542 rules!3598)))))))

(assert (=> d!1083433 (= (inv!52581 (transformation!5916 (h!44542 rules!3598))) e!2286155)))

(declare-fun b!3691921 () Bool)

(declare-fun equivClasses!2426 (Int Int) Bool)

(assert (=> b!3691921 (= e!2286155 (equivClasses!2426 (toChars!8099 (transformation!5916 (h!44542 rules!3598))) (toValue!8240 (transformation!5916 (h!44542 rules!3598)))))))

(assert (= (and d!1083433 res!1500880) b!3691921))

(declare-fun m!4204433 () Bool)

(assert (=> d!1083433 m!4204433))

(declare-fun m!4204435 () Bool)

(assert (=> b!3691921 m!4204435))

(assert (=> b!3691914 d!1083433))

(declare-fun d!1083435 () Bool)

(assert (=> d!1083435 true))

(declare-fun lt!1292612 () Bool)

(declare-fun lambda!124970 () Int)

(declare-fun forall!8177 (List!39246 Int) Bool)

(assert (=> d!1083435 (= lt!1292612 (forall!8177 rules!3598 lambda!124970))))

(declare-fun e!2286180 () Bool)

(assert (=> d!1083435 (= lt!1292612 e!2286180)))

(declare-fun res!1500916 () Bool)

(assert (=> d!1083435 (=> res!1500916 e!2286180)))

(assert (=> d!1083435 (= res!1500916 (not ((_ is Cons!39122) rules!3598)))))

(assert (=> d!1083435 (= (rulesValidInductive!2124 thiss!25322 rules!3598) lt!1292612)))

(declare-fun b!3691963 () Bool)

(declare-fun e!2286179 () Bool)

(assert (=> b!3691963 (= e!2286180 e!2286179)))

(declare-fun res!1500917 () Bool)

(assert (=> b!3691963 (=> (not res!1500917) (not e!2286179))))

(declare-fun ruleValid!2141 (LexerInterface!5505 Rule!11632) Bool)

(assert (=> b!3691963 (= res!1500917 (ruleValid!2141 thiss!25322 (h!44542 rules!3598)))))

(declare-fun b!3691964 () Bool)

(assert (=> b!3691964 (= e!2286179 (rulesValidInductive!2124 thiss!25322 (t!301395 rules!3598)))))

(assert (= (and d!1083435 (not res!1500916)) b!3691963))

(assert (= (and b!3691963 res!1500917) b!3691964))

(declare-fun m!4204479 () Bool)

(assert (=> d!1083435 m!4204479))

(declare-fun m!4204481 () Bool)

(assert (=> b!3691963 m!4204481))

(declare-fun m!4204483 () Bool)

(assert (=> b!3691964 m!4204483))

(assert (=> b!3691913 d!1083435))

(declare-fun d!1083451 () Bool)

(declare-fun isEmpty!23319 (Option!8428) Bool)

(assert (=> d!1083451 (= (isDefined!6621 (maxPrefix!3027 thiss!25322 rules!3598 input!3172)) (not (isEmpty!23319 (maxPrefix!3027 thiss!25322 rules!3598 input!3172))))))

(declare-fun bs!574137 () Bool)

(assert (= bs!574137 d!1083451))

(assert (=> bs!574137 m!4204419))

(declare-fun m!4204485 () Bool)

(assert (=> bs!574137 m!4204485))

(assert (=> b!3691918 d!1083451))

(declare-fun b!3691985 () Bool)

(declare-fun res!1500932 () Bool)

(declare-fun e!2286187 () Bool)

(assert (=> b!3691985 (=> (not res!1500932) (not e!2286187))))

(declare-fun lt!1292625 () Option!8428)

(declare-fun list!14624 (BalanceConc!23640) List!39245)

(declare-fun charsOf!3918 (Token!11186) BalanceConc!23640)

(declare-fun get!12978 (Option!8428) tuple2!39026)

(assert (=> b!3691985 (= res!1500932 (= (list!14624 (charsOf!3918 (_1!22647 (get!12978 lt!1292625)))) (originalCharacters!6624 (_1!22647 (get!12978 lt!1292625)))))))

(declare-fun b!3691986 () Bool)

(declare-fun res!1500935 () Bool)

(assert (=> b!3691986 (=> (not res!1500935) (not e!2286187))))

(declare-fun ++!9738 (List!39245 List!39245) List!39245)

(assert (=> b!3691986 (= res!1500935 (= (++!9738 (list!14624 (charsOf!3918 (_1!22647 (get!12978 lt!1292625)))) (_2!22647 (get!12978 lt!1292625))) input!3172))))

(declare-fun b!3691987 () Bool)

(declare-fun e!2286189 () Bool)

(assert (=> b!3691987 (= e!2286189 e!2286187)))

(declare-fun res!1500937 () Bool)

(assert (=> b!3691987 (=> (not res!1500937) (not e!2286187))))

(assert (=> b!3691987 (= res!1500937 (isDefined!6621 lt!1292625))))

(declare-fun b!3691988 () Bool)

(declare-fun e!2286188 () Option!8428)

(declare-fun lt!1292624 () Option!8428)

(declare-fun lt!1292627 () Option!8428)

(assert (=> b!3691988 (= e!2286188 (ite (and ((_ is None!8427) lt!1292624) ((_ is None!8427) lt!1292627)) None!8427 (ite ((_ is None!8427) lt!1292627) lt!1292624 (ite ((_ is None!8427) lt!1292624) lt!1292627 (ite (>= (size!29876 (_1!22647 (v!38381 lt!1292624))) (size!29876 (_1!22647 (v!38381 lt!1292627)))) lt!1292624 lt!1292627)))))))

(declare-fun call!266970 () Option!8428)

(assert (=> b!3691988 (= lt!1292624 call!266970)))

(assert (=> b!3691988 (= lt!1292627 (maxPrefix!3027 thiss!25322 (t!301395 rules!3598) input!3172))))

(declare-fun d!1083453 () Bool)

(assert (=> d!1083453 e!2286189))

(declare-fun res!1500933 () Bool)

(assert (=> d!1083453 (=> res!1500933 e!2286189)))

(assert (=> d!1083453 (= res!1500933 (isEmpty!23319 lt!1292625))))

(assert (=> d!1083453 (= lt!1292625 e!2286188)))

(declare-fun c!638433 () Bool)

(assert (=> d!1083453 (= c!638433 (and ((_ is Cons!39122) rules!3598) ((_ is Nil!39122) (t!301395 rules!3598))))))

(declare-datatypes ((Unit!57138 0))(
  ( (Unit!57139) )
))
(declare-fun lt!1292623 () Unit!57138)

(declare-fun lt!1292626 () Unit!57138)

(assert (=> d!1083453 (= lt!1292623 lt!1292626)))

(declare-fun isPrefix!3260 (List!39245 List!39245) Bool)

(assert (=> d!1083453 (isPrefix!3260 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2045 (List!39245 List!39245) Unit!57138)

(assert (=> d!1083453 (= lt!1292626 (lemmaIsPrefixRefl!2045 input!3172 input!3172))))

(assert (=> d!1083453 (rulesValidInductive!2124 thiss!25322 rules!3598)))

(assert (=> d!1083453 (= (maxPrefix!3027 thiss!25322 rules!3598 input!3172) lt!1292625)))

(declare-fun b!3691989 () Bool)

(assert (=> b!3691989 (= e!2286188 call!266970)))

(declare-fun bm!266965 () Bool)

(declare-fun maxPrefixOneRule!2142 (LexerInterface!5505 Rule!11632 List!39245) Option!8428)

(assert (=> bm!266965 (= call!266970 (maxPrefixOneRule!2142 thiss!25322 (h!44542 rules!3598) input!3172))))

(declare-fun b!3691990 () Bool)

(declare-fun res!1500934 () Bool)

(assert (=> b!3691990 (=> (not res!1500934) (not e!2286187))))

(declare-fun size!29877 (List!39245) Int)

(assert (=> b!3691990 (= res!1500934 (< (size!29877 (_2!22647 (get!12978 lt!1292625))) (size!29877 input!3172)))))

(declare-fun b!3691991 () Bool)

(declare-fun res!1500936 () Bool)

(assert (=> b!3691991 (=> (not res!1500936) (not e!2286187))))

(declare-fun apply!9377 (TokenValueInjection!11720 BalanceConc!23640) TokenValue!6146)

(declare-fun seqFromList!4456 (List!39245) BalanceConc!23640)

(assert (=> b!3691991 (= res!1500936 (= (value!189060 (_1!22647 (get!12978 lt!1292625))) (apply!9377 (transformation!5916 (rule!8762 (_1!22647 (get!12978 lt!1292625)))) (seqFromList!4456 (originalCharacters!6624 (_1!22647 (get!12978 lt!1292625)))))))))

(declare-fun b!3691992 () Bool)

(declare-fun res!1500938 () Bool)

(assert (=> b!3691992 (=> (not res!1500938) (not e!2286187))))

(declare-fun matchR!5221 (Regex!10675 List!39245) Bool)

(assert (=> b!3691992 (= res!1500938 (matchR!5221 (regex!5916 (rule!8762 (_1!22647 (get!12978 lt!1292625)))) (list!14624 (charsOf!3918 (_1!22647 (get!12978 lt!1292625))))))))

(declare-fun b!3691993 () Bool)

(declare-fun contains!7808 (List!39246 Rule!11632) Bool)

(assert (=> b!3691993 (= e!2286187 (contains!7808 rules!3598 (rule!8762 (_1!22647 (get!12978 lt!1292625)))))))

(assert (= (and d!1083453 c!638433) b!3691989))

(assert (= (and d!1083453 (not c!638433)) b!3691988))

(assert (= (or b!3691989 b!3691988) bm!266965))

(assert (= (and d!1083453 (not res!1500933)) b!3691987))

(assert (= (and b!3691987 res!1500937) b!3691985))

(assert (= (and b!3691985 res!1500932) b!3691990))

(assert (= (and b!3691990 res!1500934) b!3691986))

(assert (= (and b!3691986 res!1500935) b!3691991))

(assert (= (and b!3691991 res!1500936) b!3691992))

(assert (= (and b!3691992 res!1500938) b!3691993))

(declare-fun m!4204487 () Bool)

(assert (=> d!1083453 m!4204487))

(declare-fun m!4204489 () Bool)

(assert (=> d!1083453 m!4204489))

(declare-fun m!4204491 () Bool)

(assert (=> d!1083453 m!4204491))

(assert (=> d!1083453 m!4204427))

(declare-fun m!4204493 () Bool)

(assert (=> b!3691992 m!4204493))

(declare-fun m!4204495 () Bool)

(assert (=> b!3691992 m!4204495))

(assert (=> b!3691992 m!4204495))

(declare-fun m!4204497 () Bool)

(assert (=> b!3691992 m!4204497))

(assert (=> b!3691992 m!4204497))

(declare-fun m!4204499 () Bool)

(assert (=> b!3691992 m!4204499))

(declare-fun m!4204501 () Bool)

(assert (=> b!3691988 m!4204501))

(assert (=> b!3691993 m!4204493))

(declare-fun m!4204503 () Bool)

(assert (=> b!3691993 m!4204503))

(assert (=> b!3691985 m!4204493))

(assert (=> b!3691985 m!4204495))

(assert (=> b!3691985 m!4204495))

(assert (=> b!3691985 m!4204497))

(declare-fun m!4204505 () Bool)

(assert (=> bm!266965 m!4204505))

(assert (=> b!3691986 m!4204493))

(assert (=> b!3691986 m!4204495))

(assert (=> b!3691986 m!4204495))

(assert (=> b!3691986 m!4204497))

(assert (=> b!3691986 m!4204497))

(declare-fun m!4204507 () Bool)

(assert (=> b!3691986 m!4204507))

(assert (=> b!3691990 m!4204493))

(declare-fun m!4204509 () Bool)

(assert (=> b!3691990 m!4204509))

(declare-fun m!4204511 () Bool)

(assert (=> b!3691990 m!4204511))

(assert (=> b!3691991 m!4204493))

(declare-fun m!4204513 () Bool)

(assert (=> b!3691991 m!4204513))

(assert (=> b!3691991 m!4204513))

(declare-fun m!4204515 () Bool)

(assert (=> b!3691991 m!4204515))

(declare-fun m!4204517 () Bool)

(assert (=> b!3691987 m!4204517))

(assert (=> b!3691918 d!1083453))

(declare-fun d!1083455 () Bool)

(declare-fun res!1500941 () Bool)

(declare-fun e!2286192 () Bool)

(assert (=> d!1083455 (=> (not res!1500941) (not e!2286192))))

(declare-fun rulesValid!2284 (LexerInterface!5505 List!39246) Bool)

(assert (=> d!1083455 (= res!1500941 (rulesValid!2284 thiss!25322 rules!3598))))

(assert (=> d!1083455 (= (rulesInvariant!4902 thiss!25322 rules!3598) e!2286192)))

(declare-fun b!3691996 () Bool)

(declare-datatypes ((List!39247 0))(
  ( (Nil!39123) (Cons!39123 (h!44543 String!44064) (t!301396 List!39247)) )
))
(declare-fun noDuplicateTag!2280 (LexerInterface!5505 List!39246 List!39247) Bool)

(assert (=> b!3691996 (= e!2286192 (noDuplicateTag!2280 thiss!25322 rules!3598 Nil!39123))))

(assert (= (and d!1083455 res!1500941) b!3691996))

(declare-fun m!4204519 () Bool)

(assert (=> d!1083455 m!4204519))

(declare-fun m!4204521 () Bool)

(assert (=> b!3691996 m!4204521))

(assert (=> b!3691911 d!1083455))

(declare-fun d!1083457 () Bool)

(assert (=> d!1083457 (= (isEmpty!23318 rules!3598) ((_ is Nil!39122) rules!3598))))

(assert (=> b!3691916 d!1083457))

(declare-fun b!3692007 () Bool)

(declare-fun b_free!98017 () Bool)

(declare-fun b_next!98721 () Bool)

(assert (=> b!3692007 (= b_free!98017 (not b_next!98721))))

(declare-fun tp!1121885 () Bool)

(declare-fun b_and!275783 () Bool)

(assert (=> b!3692007 (= tp!1121885 b_and!275783)))

(declare-fun b_free!98019 () Bool)

(declare-fun b_next!98723 () Bool)

(assert (=> b!3692007 (= b_free!98019 (not b_next!98723))))

(declare-fun tp!1121887 () Bool)

(declare-fun b_and!275785 () Bool)

(assert (=> b!3692007 (= tp!1121887 b_and!275785)))

(declare-fun e!2286202 () Bool)

(assert (=> b!3692007 (= e!2286202 (and tp!1121885 tp!1121887))))

(declare-fun e!2286204 () Bool)

(declare-fun tp!1121886 () Bool)

(declare-fun b!3692006 () Bool)

(assert (=> b!3692006 (= e!2286204 (and tp!1121886 (inv!52579 (tag!6738 (h!44542 (t!301395 rules!3598)))) (inv!52581 (transformation!5916 (h!44542 (t!301395 rules!3598)))) e!2286202))))

(declare-fun b!3692005 () Bool)

(declare-fun e!2286203 () Bool)

(declare-fun tp!1121888 () Bool)

(assert (=> b!3692005 (= e!2286203 (and e!2286204 tp!1121888))))

(assert (=> b!3691915 (= tp!1121875 e!2286203)))

(assert (= b!3692006 b!3692007))

(assert (= b!3692005 b!3692006))

(assert (= (and b!3691915 ((_ is Cons!39122) (t!301395 rules!3598))) b!3692005))

(declare-fun m!4204523 () Bool)

(assert (=> b!3692006 m!4204523))

(declare-fun m!4204525 () Bool)

(assert (=> b!3692006 m!4204525))

(declare-fun b!3692021 () Bool)

(declare-fun e!2286207 () Bool)

(declare-fun tp!1121900 () Bool)

(declare-fun tp!1121902 () Bool)

(assert (=> b!3692021 (= e!2286207 (and tp!1121900 tp!1121902))))

(declare-fun b!3692020 () Bool)

(declare-fun tp!1121903 () Bool)

(assert (=> b!3692020 (= e!2286207 tp!1121903)))

(declare-fun b!3692019 () Bool)

(declare-fun tp!1121901 () Bool)

(declare-fun tp!1121899 () Bool)

(assert (=> b!3692019 (= e!2286207 (and tp!1121901 tp!1121899))))

(assert (=> b!3691914 (= tp!1121876 e!2286207)))

(declare-fun b!3692018 () Bool)

(assert (=> b!3692018 (= e!2286207 tp_is_empty!18425)))

(assert (= (and b!3691914 ((_ is ElementMatch!10675) (regex!5916 (h!44542 rules!3598)))) b!3692018))

(assert (= (and b!3691914 ((_ is Concat!16822) (regex!5916 (h!44542 rules!3598)))) b!3692019))

(assert (= (and b!3691914 ((_ is Star!10675) (regex!5916 (h!44542 rules!3598)))) b!3692020))

(assert (= (and b!3691914 ((_ is Union!10675) (regex!5916 (h!44542 rules!3598)))) b!3692021))

(declare-fun b!3692026 () Bool)

(declare-fun e!2286210 () Bool)

(declare-fun tp!1121906 () Bool)

(assert (=> b!3692026 (= e!2286210 (and tp_is_empty!18425 tp!1121906))))

(assert (=> b!3691912 (= tp!1121874 e!2286210)))

(assert (= (and b!3691912 ((_ is Cons!39121) (t!301394 input!3172))) b!3692026))

(check-sat (not b!3691990) (not b!3692021) (not b_next!98721) (not b!3691964) (not b!3691987) (not b!3691991) (not d!1083453) b_and!275783 (not b!3692019) (not bm!266965) (not b!3691963) tp_is_empty!18425 (not b_next!98719) (not b!3691985) (not d!1083435) (not b_next!98717) (not d!1083433) (not d!1083451) b_and!275785 (not b!3692006) (not b!3692020) (not b!3691996) (not b!3692005) (not b!3691921) (not b!3691993) b_and!275779 (not b!3691986) (not b!3691992) b_and!275781 (not b!3692026) (not b!3691988) (not b_next!98723) (not d!1083455))
(check-sat (not b_next!98719) (not b_next!98717) b_and!275785 (not b_next!98721) b_and!275783 (not b_next!98723) b_and!275779 b_and!275781)
