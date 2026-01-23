; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!346904 () Bool)

(assert start!346904)

(declare-fun b!3688869 () Bool)

(declare-fun b_free!97873 () Bool)

(declare-fun b_next!98577 () Bool)

(assert (=> b!3688869 (= b_free!97873 (not b_next!98577))))

(declare-fun tp!1121081 () Bool)

(declare-fun b_and!275619 () Bool)

(assert (=> b!3688869 (= tp!1121081 b_and!275619)))

(declare-fun b_free!97875 () Bool)

(declare-fun b_next!98579 () Bool)

(assert (=> b!3688869 (= b_free!97875 (not b_next!98579))))

(declare-fun tp!1121083 () Bool)

(declare-fun b_and!275621 () Bool)

(assert (=> b!3688869 (= tp!1121083 b_and!275621)))

(declare-fun b!3688863 () Bool)

(declare-fun e!2284283 () Bool)

(declare-datatypes ((List!39158 0))(
  ( (Nil!39034) (Cons!39034 (h!44454 (_ BitVec 16)) (t!301267 List!39158)) )
))
(declare-datatypes ((TokenValue!6125 0))(
  ( (FloatLiteralValue!12250 (text!43320 List!39158)) (TokenValueExt!6124 (__x!24467 Int)) (Broken!30625 (value!188443 List!39158)) (Object!6248) (End!6125) (Def!6125) (Underscore!6125) (Match!6125) (Else!6125) (Error!6125) (Case!6125) (If!6125) (Extends!6125) (Abstract!6125) (Class!6125) (Val!6125) (DelimiterValue!12250 (del!6185 List!39158)) (KeywordValue!6131 (value!188444 List!39158)) (CommentValue!12250 (value!188445 List!39158)) (WhitespaceValue!12250 (value!188446 List!39158)) (IndentationValue!6125 (value!188447 List!39158)) (String!43960) (Int32!6125) (Broken!30626 (value!188448 List!39158)) (Boolean!6126) (Unit!57092) (OperatorValue!6128 (op!6185 List!39158)) (IdentifierValue!12250 (value!188449 List!39158)) (IdentifierValue!12251 (value!188450 List!39158)) (WhitespaceValue!12251 (value!188451 List!39158)) (True!12250) (False!12250) (Broken!30627 (value!188452 List!39158)) (Broken!30628 (value!188453 List!39158)) (True!12251) (RightBrace!6125) (RightBracket!6125) (Colon!6125) (Null!6125) (Comma!6125) (LeftBracket!6125) (False!12251) (LeftBrace!6125) (ImaginaryLiteralValue!6125 (text!43321 List!39158)) (StringLiteralValue!18375 (value!188454 List!39158)) (EOFValue!6125 (value!188455 List!39158)) (IdentValue!6125 (value!188456 List!39158)) (DelimiterValue!12251 (value!188457 List!39158)) (DedentValue!6125 (value!188458 List!39158)) (NewLineValue!6125 (value!188459 List!39158)) (IntegerValue!18375 (value!188460 (_ BitVec 32)) (text!43322 List!39158)) (IntegerValue!18376 (value!188461 Int) (text!43323 List!39158)) (Times!6125) (Or!6125) (Equal!6125) (Minus!6125) (Broken!30629 (value!188462 List!39158)) (And!6125) (Div!6125) (LessEqual!6125) (Mod!6125) (Concat!16779) (Not!6125) (Plus!6125) (SpaceValue!6125 (value!188463 List!39158)) (IntegerValue!18377 (value!188464 Int) (text!43324 List!39158)) (StringLiteralValue!18376 (text!43325 List!39158)) (FloatLiteralValue!12251 (text!43326 List!39158)) (BytesLiteralValue!6125 (value!188465 List!39158)) (CommentValue!12251 (value!188466 List!39158)) (StringLiteralValue!18377 (value!188467 List!39158)) (ErrorTokenValue!6125 (msg!6186 List!39158)) )
))
(declare-datatypes ((String!43961 0))(
  ( (String!43962 (value!188468 String)) )
))
(declare-datatypes ((C!21494 0))(
  ( (C!21495 (val!12795 Int)) )
))
(declare-datatypes ((List!39159 0))(
  ( (Nil!39035) (Cons!39035 (h!44455 C!21494) (t!301268 List!39159)) )
))
(declare-datatypes ((IArray!23965 0))(
  ( (IArray!23966 (innerList!12040 List!39159)) )
))
(declare-datatypes ((Regex!10654 0))(
  ( (ElementMatch!10654 (c!638055 C!21494)) (Concat!16780 (regOne!21820 Regex!10654) (regTwo!21820 Regex!10654)) (EmptyExpr!10654) (Star!10654 (reg!10983 Regex!10654)) (EmptyLang!10654) (Union!10654 (regOne!21821 Regex!10654) (regTwo!21821 Regex!10654)) )
))
(declare-datatypes ((Conc!11980 0))(
  ( (Node!11980 (left!30450 Conc!11980) (right!30780 Conc!11980) (csize!24190 Int) (cheight!12191 Int)) (Leaf!18539 (xs!15182 IArray!23965) (csize!24191 Int)) (Empty!11980) )
))
(declare-datatypes ((BalanceConc!23574 0))(
  ( (BalanceConc!23575 (c!638056 Conc!11980)) )
))
(declare-datatypes ((TokenValueInjection!11678 0))(
  ( (TokenValueInjection!11679 (toValue!8215 Int) (toChars!8074 Int)) )
))
(declare-datatypes ((Rule!11590 0))(
  ( (Rule!11591 (regex!5895 Regex!10654) (tag!6707 String!43961) (isSeparator!5895 Bool) (transformation!5895 TokenValueInjection!11678)) )
))
(declare-datatypes ((Token!11156 0))(
  ( (Token!11157 (value!188469 TokenValue!6125) (rule!8743 Rule!11590) (size!29833 Int) (originalCharacters!6609 List!39159)) )
))
(declare-fun lt!1291518 () Token!11156)

(declare-fun lt!1291519 () Rule!11590)

(assert (=> b!3688863 (= e!2284283 (= (rule!8743 lt!1291518) lt!1291519))))

(declare-fun b!3688864 () Bool)

(declare-fun res!1499149 () Bool)

(declare-fun e!2284282 () Bool)

(assert (=> b!3688864 (=> (not res!1499149) (not e!2284282))))

(declare-datatypes ((List!39160 0))(
  ( (Nil!39036) (Cons!39036 (h!44456 Rule!11590) (t!301269 List!39160)) )
))
(declare-fun rules!3568 () List!39160)

(declare-fun isEmpty!23237 (List!39160) Bool)

(assert (=> b!3688864 (= res!1499149 (not (isEmpty!23237 rules!3568)))))

(declare-fun b!3688865 () Bool)

(declare-fun e!2284277 () Bool)

(declare-fun tp_is_empty!18391 () Bool)

(declare-fun tp!1121080 () Bool)

(assert (=> b!3688865 (= e!2284277 (and tp_is_empty!18391 tp!1121080))))

(declare-fun b!3688866 () Bool)

(declare-fun e!2284278 () Bool)

(declare-fun e!2284284 () Bool)

(declare-fun tp!1121084 () Bool)

(assert (=> b!3688866 (= e!2284278 (and e!2284284 tp!1121084))))

(declare-fun b!3688867 () Bool)

(declare-fun res!1499145 () Bool)

(declare-fun e!2284276 () Bool)

(assert (=> b!3688867 (=> res!1499145 e!2284276)))

(declare-datatypes ((LexerInterface!5484 0))(
  ( (LexerInterfaceExt!5481 (__x!24468 Int)) (Lexer!5482) )
))
(declare-fun thiss!25197 () LexerInterface!5484)

(declare-fun lt!1291515 () List!39159)

(declare-datatypes ((tuple2!38948 0))(
  ( (tuple2!38949 (_1!22608 Token!11156) (_2!22608 List!39159)) )
))
(declare-datatypes ((Option!8401 0))(
  ( (None!8400) (Some!8400 (v!38352 tuple2!38948)) )
))
(declare-fun isEmpty!23238 (Option!8401) Bool)

(declare-fun maxPrefix!3012 (LexerInterface!5484 List!39160 List!39159) Option!8401)

(assert (=> b!3688867 (= res!1499145 (not (isEmpty!23238 (maxPrefix!3012 thiss!25197 rules!3568 lt!1291515))))))

(declare-fun b!3688868 () Bool)

(declare-fun e!2284280 () Bool)

(assert (=> b!3688868 (= e!2284280 e!2284283)))

(declare-fun res!1499147 () Bool)

(assert (=> b!3688868 (=> (not res!1499147) (not e!2284283))))

(declare-fun lt!1291516 () List!39159)

(declare-fun matchR!5209 (Regex!10654 List!39159) Bool)

(assert (=> b!3688868 (= res!1499147 (matchR!5209 (regex!5895 lt!1291519) lt!1291516))))

(declare-datatypes ((Option!8402 0))(
  ( (None!8401) (Some!8401 (v!38353 Rule!11590)) )
))
(declare-fun lt!1291514 () Option!8402)

(declare-fun get!12944 (Option!8402) Rule!11590)

(assert (=> b!3688868 (= lt!1291519 (get!12944 lt!1291514))))

(declare-fun e!2284275 () Bool)

(assert (=> b!3688869 (= e!2284275 (and tp!1121081 tp!1121083))))

(declare-fun b!3688871 () Bool)

(declare-fun rulesValidInductive!2109 (LexerInterface!5484 List!39160) Bool)

(assert (=> b!3688871 (= e!2284276 (rulesValidInductive!2109 thiss!25197 rules!3568))))

(declare-fun b!3688872 () Bool)

(declare-fun res!1499151 () Bool)

(assert (=> b!3688872 (=> (not res!1499151) (not e!2284282))))

(declare-fun rulesInvariant!4881 (LexerInterface!5484 List!39160) Bool)

(assert (=> b!3688872 (= res!1499151 (rulesInvariant!4881 thiss!25197 rules!3568))))

(declare-fun b!3688873 () Bool)

(declare-fun tp!1121082 () Bool)

(declare-fun inv!52507 (String!43961) Bool)

(declare-fun inv!52510 (TokenValueInjection!11678) Bool)

(assert (=> b!3688873 (= e!2284284 (and tp!1121082 (inv!52507 (tag!6707 (h!44456 rules!3568))) (inv!52510 (transformation!5895 (h!44456 rules!3568))) e!2284275))))

(declare-fun b!3688874 () Bool)

(declare-fun e!2284279 () Bool)

(assert (=> b!3688874 (= e!2284279 (not e!2284276))))

(declare-fun res!1499146 () Bool)

(assert (=> b!3688874 (=> res!1499146 e!2284276)))

(assert (=> b!3688874 (= res!1499146 (not (matchR!5209 (regex!5895 (rule!8743 lt!1291518)) lt!1291516)))))

(assert (=> b!3688874 e!2284280))

(declare-fun res!1499144 () Bool)

(assert (=> b!3688874 (=> (not res!1499144) (not e!2284280))))

(declare-fun isDefined!6598 (Option!8402) Bool)

(assert (=> b!3688874 (= res!1499144 (isDefined!6598 lt!1291514))))

(declare-fun getRuleFromTag!1477 (LexerInterface!5484 List!39160 String!43961) Option!8402)

(assert (=> b!3688874 (= lt!1291514 (getRuleFromTag!1477 thiss!25197 rules!3568 (tag!6707 (rule!8743 lt!1291518))))))

(declare-fun input!3129 () List!39159)

(declare-datatypes ((Unit!57093 0))(
  ( (Unit!57094) )
))
(declare-fun lt!1291512 () Unit!57093)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1477 (LexerInterface!5484 List!39160 List!39159 Token!11156) Unit!57093)

(assert (=> b!3688874 (= lt!1291512 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1477 thiss!25197 rules!3568 input!3129 lt!1291518))))

(declare-fun isPrefix!3248 (List!39159 List!39159) Bool)

(assert (=> b!3688874 (isPrefix!3248 lt!1291516 lt!1291515)))

(declare-fun suffix!1448 () List!39159)

(declare-fun ++!9726 (List!39159 List!39159) List!39159)

(assert (=> b!3688874 (= lt!1291515 (++!9726 input!3129 suffix!1448))))

(declare-fun lt!1291520 () Unit!57093)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!577 (List!39159 List!39159 List!39159) Unit!57093)

(assert (=> b!3688874 (= lt!1291520 (lemmaPrefixStaysPrefixWhenAddingToSuffix!577 lt!1291516 input!3129 suffix!1448))))

(declare-fun lt!1291513 () tuple2!38948)

(assert (=> b!3688874 (isPrefix!3248 lt!1291516 (++!9726 lt!1291516 (_2!22608 lt!1291513)))))

(declare-fun lt!1291517 () Unit!57093)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2165 (List!39159 List!39159) Unit!57093)

(assert (=> b!3688874 (= lt!1291517 (lemmaConcatTwoListThenFirstIsPrefix!2165 lt!1291516 (_2!22608 lt!1291513)))))

(declare-fun get!12945 (Option!8401) tuple2!38948)

(assert (=> b!3688874 (= lt!1291513 (get!12945 (maxPrefix!3012 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14580 (BalanceConc!23574) List!39159)

(declare-fun charsOf!3906 (Token!11156) BalanceConc!23574)

(assert (=> b!3688874 (= lt!1291516 (list!14580 (charsOf!3906 lt!1291518)))))

(declare-datatypes ((List!39161 0))(
  ( (Nil!39037) (Cons!39037 (h!44457 Token!11156) (t!301270 List!39161)) )
))
(declare-datatypes ((IArray!23967 0))(
  ( (IArray!23968 (innerList!12041 List!39161)) )
))
(declare-datatypes ((Conc!11981 0))(
  ( (Node!11981 (left!30451 Conc!11981) (right!30781 Conc!11981) (csize!24192 Int) (cheight!12192 Int)) (Leaf!18540 (xs!15183 IArray!23967) (csize!24193 Int)) (Empty!11981) )
))
(declare-datatypes ((BalanceConc!23576 0))(
  ( (BalanceConc!23577 (c!638057 Conc!11981)) )
))
(declare-datatypes ((tuple2!38950 0))(
  ( (tuple2!38951 (_1!22609 BalanceConc!23576) (_2!22609 BalanceConc!23574)) )
))
(declare-fun lt!1291511 () tuple2!38950)

(declare-fun head!7961 (List!39161) Token!11156)

(declare-fun list!14581 (BalanceConc!23576) List!39161)

(assert (=> b!3688874 (= lt!1291518 (head!7961 (list!14581 (_1!22609 lt!1291511))))))

(declare-fun b!3688875 () Bool)

(declare-fun e!2284281 () Bool)

(declare-fun tp!1121079 () Bool)

(assert (=> b!3688875 (= e!2284281 (and tp_is_empty!18391 tp!1121079))))

(declare-fun res!1499148 () Bool)

(assert (=> start!346904 (=> (not res!1499148) (not e!2284282))))

(assert (=> start!346904 (= res!1499148 (is-Lexer!5482 thiss!25197))))

(assert (=> start!346904 e!2284282))

(assert (=> start!346904 true))

(assert (=> start!346904 e!2284278))

(assert (=> start!346904 e!2284277))

(assert (=> start!346904 e!2284281))

(declare-fun b!3688870 () Bool)

(assert (=> b!3688870 (= e!2284282 e!2284279)))

(declare-fun res!1499150 () Bool)

(assert (=> b!3688870 (=> (not res!1499150) (not e!2284279))))

(declare-fun isEmpty!23239 (BalanceConc!23576) Bool)

(assert (=> b!3688870 (= res!1499150 (not (isEmpty!23239 (_1!22609 lt!1291511))))))

(declare-fun lex!2625 (LexerInterface!5484 List!39160 BalanceConc!23574) tuple2!38950)

(declare-fun seqFromList!4444 (List!39159) BalanceConc!23574)

(assert (=> b!3688870 (= lt!1291511 (lex!2625 thiss!25197 rules!3568 (seqFromList!4444 input!3129)))))

(assert (= (and start!346904 res!1499148) b!3688864))

(assert (= (and b!3688864 res!1499149) b!3688872))

(assert (= (and b!3688872 res!1499151) b!3688870))

(assert (= (and b!3688870 res!1499150) b!3688874))

(assert (= (and b!3688874 res!1499144) b!3688868))

(assert (= (and b!3688868 res!1499147) b!3688863))

(assert (= (and b!3688874 (not res!1499146)) b!3688867))

(assert (= (and b!3688867 (not res!1499145)) b!3688871))

(assert (= b!3688873 b!3688869))

(assert (= b!3688866 b!3688873))

(assert (= (and start!346904 (is-Cons!39036 rules!3568)) b!3688866))

(assert (= (and start!346904 (is-Cons!39035 suffix!1448)) b!3688865))

(assert (= (and start!346904 (is-Cons!39035 input!3129)) b!3688875))

(declare-fun m!4201237 () Bool)

(assert (=> b!3688864 m!4201237))

(declare-fun m!4201239 () Bool)

(assert (=> b!3688867 m!4201239))

(assert (=> b!3688867 m!4201239))

(declare-fun m!4201241 () Bool)

(assert (=> b!3688867 m!4201241))

(declare-fun m!4201243 () Bool)

(assert (=> b!3688872 m!4201243))

(declare-fun m!4201245 () Bool)

(assert (=> b!3688871 m!4201245))

(declare-fun m!4201247 () Bool)

(assert (=> b!3688873 m!4201247))

(declare-fun m!4201249 () Bool)

(assert (=> b!3688873 m!4201249))

(declare-fun m!4201251 () Bool)

(assert (=> b!3688868 m!4201251))

(declare-fun m!4201253 () Bool)

(assert (=> b!3688868 m!4201253))

(declare-fun m!4201255 () Bool)

(assert (=> b!3688874 m!4201255))

(declare-fun m!4201257 () Bool)

(assert (=> b!3688874 m!4201257))

(declare-fun m!4201259 () Bool)

(assert (=> b!3688874 m!4201259))

(declare-fun m!4201261 () Bool)

(assert (=> b!3688874 m!4201261))

(declare-fun m!4201263 () Bool)

(assert (=> b!3688874 m!4201263))

(declare-fun m!4201265 () Bool)

(assert (=> b!3688874 m!4201265))

(declare-fun m!4201267 () Bool)

(assert (=> b!3688874 m!4201267))

(declare-fun m!4201269 () Bool)

(assert (=> b!3688874 m!4201269))

(declare-fun m!4201271 () Bool)

(assert (=> b!3688874 m!4201271))

(assert (=> b!3688874 m!4201261))

(declare-fun m!4201273 () Bool)

(assert (=> b!3688874 m!4201273))

(declare-fun m!4201275 () Bool)

(assert (=> b!3688874 m!4201275))

(assert (=> b!3688874 m!4201257))

(declare-fun m!4201277 () Bool)

(assert (=> b!3688874 m!4201277))

(declare-fun m!4201279 () Bool)

(assert (=> b!3688874 m!4201279))

(assert (=> b!3688874 m!4201269))

(declare-fun m!4201281 () Bool)

(assert (=> b!3688874 m!4201281))

(declare-fun m!4201283 () Bool)

(assert (=> b!3688874 m!4201283))

(assert (=> b!3688874 m!4201265))

(declare-fun m!4201285 () Bool)

(assert (=> b!3688874 m!4201285))

(declare-fun m!4201287 () Bool)

(assert (=> b!3688870 m!4201287))

(declare-fun m!4201289 () Bool)

(assert (=> b!3688870 m!4201289))

(assert (=> b!3688870 m!4201289))

(declare-fun m!4201291 () Bool)

(assert (=> b!3688870 m!4201291))

(push 1)

(assert (not b!3688872))

(assert (not b!3688874))

(assert (not b!3688864))

(assert b_and!275619)

(assert (not b!3688865))

(assert (not b!3688870))

(assert (not b_next!98579))

(assert (not b!3688867))

(assert tp_is_empty!18391)

(assert (not b!3688866))

(assert (not b!3688871))

(assert (not b_next!98577))

(assert b_and!275621)

(assert (not b!3688868))

(assert (not b!3688875))

(assert (not b!3688873))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275619)

(assert b_and!275621)

(assert (not b_next!98579))

(assert (not b_next!98577))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1082773 () Bool)

(declare-fun res!1499185 () Bool)

(declare-fun e!2284321 () Bool)

(assert (=> d!1082773 (=> (not res!1499185) (not e!2284321))))

(declare-fun rulesValid!2273 (LexerInterface!5484 List!39160) Bool)

(assert (=> d!1082773 (= res!1499185 (rulesValid!2273 thiss!25197 rules!3568))))

(assert (=> d!1082773 (= (rulesInvariant!4881 thiss!25197 rules!3568) e!2284321)))

(declare-fun b!3688917 () Bool)

(declare-datatypes ((List!39166 0))(
  ( (Nil!39042) (Cons!39042 (h!44462 String!43961) (t!301279 List!39166)) )
))
(declare-fun noDuplicateTag!2269 (LexerInterface!5484 List!39160 List!39166) Bool)

(assert (=> b!3688917 (= e!2284321 (noDuplicateTag!2269 thiss!25197 rules!3568 Nil!39042))))

(assert (= (and d!1082773 res!1499185) b!3688917))

(declare-fun m!4201349 () Bool)

(assert (=> d!1082773 m!4201349))

(declare-fun m!4201351 () Bool)

(assert (=> b!3688917 m!4201351))

(assert (=> b!3688872 d!1082773))

(declare-fun d!1082775 () Bool)

(assert (=> d!1082775 true))

(declare-fun lt!1291573 () Bool)

(declare-fun lambda!124932 () Int)

(declare-fun forall!8171 (List!39160 Int) Bool)

(assert (=> d!1082775 (= lt!1291573 (forall!8171 rules!3568 lambda!124932))))

(declare-fun e!2284367 () Bool)

(assert (=> d!1082775 (= lt!1291573 e!2284367)))

(declare-fun res!1499245 () Bool)

(assert (=> d!1082775 (=> res!1499245 e!2284367)))

(assert (=> d!1082775 (= res!1499245 (not (is-Cons!39036 rules!3568)))))

(assert (=> d!1082775 (= (rulesValidInductive!2109 thiss!25197 rules!3568) lt!1291573)))

(declare-fun b!3689001 () Bool)

(declare-fun e!2284366 () Bool)

(assert (=> b!3689001 (= e!2284367 e!2284366)))

(declare-fun res!1499246 () Bool)

(assert (=> b!3689001 (=> (not res!1499246) (not e!2284366))))

(declare-fun ruleValid!2131 (LexerInterface!5484 Rule!11590) Bool)

(assert (=> b!3689001 (= res!1499246 (ruleValid!2131 thiss!25197 (h!44456 rules!3568)))))

(declare-fun b!3689002 () Bool)

(assert (=> b!3689002 (= e!2284366 (rulesValidInductive!2109 thiss!25197 (t!301269 rules!3568)))))

(assert (= (and d!1082775 (not res!1499245)) b!3689001))

(assert (= (and b!3689001 res!1499246) b!3689002))

(declare-fun m!4201409 () Bool)

(assert (=> d!1082775 m!4201409))

(declare-fun m!4201411 () Bool)

(assert (=> b!3689001 m!4201411))

(declare-fun m!4201413 () Bool)

(assert (=> b!3689002 m!4201413))

(assert (=> b!3688871 d!1082775))

(declare-fun b!3689033 () Bool)

(declare-fun e!2284382 () Bool)

(declare-fun nullable!3714 (Regex!10654) Bool)

(assert (=> b!3689033 (= e!2284382 (nullable!3714 (regex!5895 lt!1291519)))))

(declare-fun b!3689034 () Bool)

(declare-fun e!2284387 () Bool)

(declare-fun head!7963 (List!39159) C!21494)

(assert (=> b!3689034 (= e!2284387 (not (= (head!7963 lt!1291516) (c!638055 (regex!5895 lt!1291519)))))))

(declare-fun b!3689035 () Bool)

(declare-fun res!1499269 () Bool)

(declare-fun e!2284384 () Bool)

(assert (=> b!3689035 (=> res!1499269 e!2284384)))

(declare-fun e!2284386 () Bool)

(assert (=> b!3689035 (= res!1499269 e!2284386)))

(declare-fun res!1499263 () Bool)

(assert (=> b!3689035 (=> (not res!1499263) (not e!2284386))))

(declare-fun lt!1291576 () Bool)

(assert (=> b!3689035 (= res!1499263 lt!1291576)))

(declare-fun b!3689036 () Bool)

(declare-fun e!2284383 () Bool)

(assert (=> b!3689036 (= e!2284384 e!2284383)))

(declare-fun res!1499267 () Bool)

(assert (=> b!3689036 (=> (not res!1499267) (not e!2284383))))

(assert (=> b!3689036 (= res!1499267 (not lt!1291576))))

(declare-fun d!1082795 () Bool)

(declare-fun e!2284385 () Bool)

(assert (=> d!1082795 e!2284385))

(declare-fun c!638080 () Bool)

(assert (=> d!1082795 (= c!638080 (is-EmptyExpr!10654 (regex!5895 lt!1291519)))))

(assert (=> d!1082795 (= lt!1291576 e!2284382)))

(declare-fun c!638082 () Bool)

(declare-fun isEmpty!23243 (List!39159) Bool)

(assert (=> d!1082795 (= c!638082 (isEmpty!23243 lt!1291516))))

(declare-fun validRegex!4876 (Regex!10654) Bool)

(assert (=> d!1082795 (validRegex!4876 (regex!5895 lt!1291519))))

(assert (=> d!1082795 (= (matchR!5209 (regex!5895 lt!1291519) lt!1291516) lt!1291576)))

(declare-fun b!3689037 () Bool)

(declare-fun call!266893 () Bool)

(assert (=> b!3689037 (= e!2284385 (= lt!1291576 call!266893))))

(declare-fun bm!266888 () Bool)

(assert (=> bm!266888 (= call!266893 (isEmpty!23243 lt!1291516))))

(declare-fun b!3689038 () Bool)

(declare-fun res!1499264 () Bool)

(assert (=> b!3689038 (=> (not res!1499264) (not e!2284386))))

(declare-fun tail!5710 (List!39159) List!39159)

(assert (=> b!3689038 (= res!1499264 (isEmpty!23243 (tail!5710 lt!1291516)))))

(declare-fun b!3689039 () Bool)

(declare-fun res!1499266 () Bool)

(assert (=> b!3689039 (=> res!1499266 e!2284384)))

(assert (=> b!3689039 (= res!1499266 (not (is-ElementMatch!10654 (regex!5895 lt!1291519))))))

(declare-fun e!2284388 () Bool)

(assert (=> b!3689039 (= e!2284388 e!2284384)))

(declare-fun b!3689040 () Bool)

(declare-fun res!1499268 () Bool)

(assert (=> b!3689040 (=> (not res!1499268) (not e!2284386))))

(assert (=> b!3689040 (= res!1499268 (not call!266893))))

(declare-fun b!3689041 () Bool)

(assert (=> b!3689041 (= e!2284383 e!2284387)))

(declare-fun res!1499270 () Bool)

(assert (=> b!3689041 (=> res!1499270 e!2284387)))

(assert (=> b!3689041 (= res!1499270 call!266893)))

(declare-fun b!3689042 () Bool)

(declare-fun derivativeStep!3260 (Regex!10654 C!21494) Regex!10654)

(assert (=> b!3689042 (= e!2284382 (matchR!5209 (derivativeStep!3260 (regex!5895 lt!1291519) (head!7963 lt!1291516)) (tail!5710 lt!1291516)))))

(declare-fun b!3689043 () Bool)

(assert (=> b!3689043 (= e!2284388 (not lt!1291576))))

(declare-fun b!3689044 () Bool)

(assert (=> b!3689044 (= e!2284385 e!2284388)))

(declare-fun c!638081 () Bool)

(assert (=> b!3689044 (= c!638081 (is-EmptyLang!10654 (regex!5895 lt!1291519)))))

(declare-fun b!3689045 () Bool)

(assert (=> b!3689045 (= e!2284386 (= (head!7963 lt!1291516) (c!638055 (regex!5895 lt!1291519))))))

(declare-fun b!3689046 () Bool)

(declare-fun res!1499265 () Bool)

(assert (=> b!3689046 (=> res!1499265 e!2284387)))

(assert (=> b!3689046 (= res!1499265 (not (isEmpty!23243 (tail!5710 lt!1291516))))))

(assert (= (and d!1082795 c!638082) b!3689033))

(assert (= (and d!1082795 (not c!638082)) b!3689042))

(assert (= (and d!1082795 c!638080) b!3689037))

(assert (= (and d!1082795 (not c!638080)) b!3689044))

(assert (= (and b!3689044 c!638081) b!3689043))

(assert (= (and b!3689044 (not c!638081)) b!3689039))

(assert (= (and b!3689039 (not res!1499266)) b!3689035))

(assert (= (and b!3689035 res!1499263) b!3689040))

(assert (= (and b!3689040 res!1499268) b!3689038))

(assert (= (and b!3689038 res!1499264) b!3689045))

(assert (= (and b!3689035 (not res!1499269)) b!3689036))

(assert (= (and b!3689036 res!1499267) b!3689041))

(assert (= (and b!3689041 (not res!1499270)) b!3689046))

(assert (= (and b!3689046 (not res!1499265)) b!3689034))

(assert (= (or b!3689037 b!3689040 b!3689041) bm!266888))

(declare-fun m!4201415 () Bool)

(assert (=> b!3689034 m!4201415))

(assert (=> b!3689042 m!4201415))

(assert (=> b!3689042 m!4201415))

(declare-fun m!4201417 () Bool)

(assert (=> b!3689042 m!4201417))

(declare-fun m!4201419 () Bool)

(assert (=> b!3689042 m!4201419))

(assert (=> b!3689042 m!4201417))

(assert (=> b!3689042 m!4201419))

(declare-fun m!4201421 () Bool)

(assert (=> b!3689042 m!4201421))

(declare-fun m!4201423 () Bool)

(assert (=> d!1082795 m!4201423))

(declare-fun m!4201425 () Bool)

(assert (=> d!1082795 m!4201425))

(assert (=> bm!266888 m!4201423))

(assert (=> b!3689045 m!4201415))

(assert (=> b!3689038 m!4201419))

(assert (=> b!3689038 m!4201419))

(declare-fun m!4201427 () Bool)

(assert (=> b!3689038 m!4201427))

(declare-fun m!4201429 () Bool)

(assert (=> b!3689033 m!4201429))

(assert (=> b!3689046 m!4201419))

(assert (=> b!3689046 m!4201419))

(assert (=> b!3689046 m!4201427))

(assert (=> b!3688868 d!1082795))

(declare-fun d!1082797 () Bool)

(assert (=> d!1082797 (= (get!12944 lt!1291514) (v!38353 lt!1291514))))

(assert (=> b!3688868 d!1082797))

(declare-fun d!1082799 () Bool)

(assert (=> d!1082799 (= (inv!52507 (tag!6707 (h!44456 rules!3568))) (= (mod (str.len (value!188468 (tag!6707 (h!44456 rules!3568)))) 2) 0))))

(assert (=> b!3688873 d!1082799))

(declare-fun d!1082801 () Bool)

(declare-fun res!1499273 () Bool)

(declare-fun e!2284391 () Bool)

(assert (=> d!1082801 (=> (not res!1499273) (not e!2284391))))

(declare-fun semiInverseModEq!2516 (Int Int) Bool)

(assert (=> d!1082801 (= res!1499273 (semiInverseModEq!2516 (toChars!8074 (transformation!5895 (h!44456 rules!3568))) (toValue!8215 (transformation!5895 (h!44456 rules!3568)))))))

(assert (=> d!1082801 (= (inv!52510 (transformation!5895 (h!44456 rules!3568))) e!2284391)))

(declare-fun b!3689049 () Bool)

(declare-fun equivClasses!2415 (Int Int) Bool)

(assert (=> b!3689049 (= e!2284391 (equivClasses!2415 (toChars!8074 (transformation!5895 (h!44456 rules!3568))) (toValue!8215 (transformation!5895 (h!44456 rules!3568)))))))

(assert (= (and d!1082801 res!1499273) b!3689049))

(declare-fun m!4201431 () Bool)

(assert (=> d!1082801 m!4201431))

(declare-fun m!4201433 () Bool)

(assert (=> b!3689049 m!4201433))

(assert (=> b!3688873 d!1082801))

(declare-fun d!1082803 () Bool)

(assert (=> d!1082803 (= (isEmpty!23238 (maxPrefix!3012 thiss!25197 rules!3568 lt!1291515)) (not (is-Some!8400 (maxPrefix!3012 thiss!25197 rules!3568 lt!1291515))))))

(assert (=> b!3688867 d!1082803))

(declare-fun b!3689068 () Bool)

(declare-fun res!1499288 () Bool)

(declare-fun e!2284400 () Bool)

(assert (=> b!3689068 (=> (not res!1499288) (not e!2284400))))

(declare-fun lt!1291589 () Option!8401)

(assert (=> b!3689068 (= res!1499288 (= (++!9726 (list!14580 (charsOf!3906 (_1!22608 (get!12945 lt!1291589)))) (_2!22608 (get!12945 lt!1291589))) lt!1291515))))

(declare-fun b!3689069 () Bool)

(declare-fun contains!7796 (List!39160 Rule!11590) Bool)

(assert (=> b!3689069 (= e!2284400 (contains!7796 rules!3568 (rule!8743 (_1!22608 (get!12945 lt!1291589)))))))

(declare-fun b!3689070 () Bool)

(declare-fun res!1499293 () Bool)

(assert (=> b!3689070 (=> (not res!1499293) (not e!2284400))))

(assert (=> b!3689070 (= res!1499293 (= (list!14580 (charsOf!3906 (_1!22608 (get!12945 lt!1291589)))) (originalCharacters!6609 (_1!22608 (get!12945 lt!1291589)))))))

(declare-fun b!3689071 () Bool)

(declare-fun res!1499290 () Bool)

(assert (=> b!3689071 (=> (not res!1499290) (not e!2284400))))

(declare-fun size!29835 (List!39159) Int)

(assert (=> b!3689071 (= res!1499290 (< (size!29835 (_2!22608 (get!12945 lt!1291589))) (size!29835 lt!1291515)))))

(declare-fun b!3689072 () Bool)

(declare-fun e!2284398 () Option!8401)

(declare-fun call!266896 () Option!8401)

(assert (=> b!3689072 (= e!2284398 call!266896)))

(declare-fun bm!266891 () Bool)

(declare-fun maxPrefixOneRule!2130 (LexerInterface!5484 Rule!11590 List!39159) Option!8401)

(assert (=> bm!266891 (= call!266896 (maxPrefixOneRule!2130 thiss!25197 (h!44456 rules!3568) lt!1291515))))

(declare-fun d!1082805 () Bool)

(declare-fun e!2284399 () Bool)

(assert (=> d!1082805 e!2284399))

(declare-fun res!1499292 () Bool)

(assert (=> d!1082805 (=> res!1499292 e!2284399)))

(assert (=> d!1082805 (= res!1499292 (isEmpty!23238 lt!1291589))))

(assert (=> d!1082805 (= lt!1291589 e!2284398)))

(declare-fun c!638085 () Bool)

(assert (=> d!1082805 (= c!638085 (and (is-Cons!39036 rules!3568) (is-Nil!39036 (t!301269 rules!3568))))))

(declare-fun lt!1291590 () Unit!57093)

(declare-fun lt!1291587 () Unit!57093)

(assert (=> d!1082805 (= lt!1291590 lt!1291587)))

(assert (=> d!1082805 (isPrefix!3248 lt!1291515 lt!1291515)))

(declare-fun lemmaIsPrefixRefl!2035 (List!39159 List!39159) Unit!57093)

(assert (=> d!1082805 (= lt!1291587 (lemmaIsPrefixRefl!2035 lt!1291515 lt!1291515))))

(assert (=> d!1082805 (rulesValidInductive!2109 thiss!25197 rules!3568)))

(assert (=> d!1082805 (= (maxPrefix!3012 thiss!25197 rules!3568 lt!1291515) lt!1291589)))

(declare-fun b!3689073 () Bool)

(declare-fun res!1499291 () Bool)

(assert (=> b!3689073 (=> (not res!1499291) (not e!2284400))))

(declare-fun apply!9367 (TokenValueInjection!11678 BalanceConc!23574) TokenValue!6125)

(assert (=> b!3689073 (= res!1499291 (= (value!188469 (_1!22608 (get!12945 lt!1291589))) (apply!9367 (transformation!5895 (rule!8743 (_1!22608 (get!12945 lt!1291589)))) (seqFromList!4444 (originalCharacters!6609 (_1!22608 (get!12945 lt!1291589)))))))))

(declare-fun b!3689074 () Bool)

(assert (=> b!3689074 (= e!2284399 e!2284400)))

(declare-fun res!1499289 () Bool)

(assert (=> b!3689074 (=> (not res!1499289) (not e!2284400))))

(declare-fun isDefined!6600 (Option!8401) Bool)

(assert (=> b!3689074 (= res!1499289 (isDefined!6600 lt!1291589))))

(declare-fun b!3689075 () Bool)

(declare-fun lt!1291591 () Option!8401)

(declare-fun lt!1291588 () Option!8401)

(assert (=> b!3689075 (= e!2284398 (ite (and (is-None!8400 lt!1291591) (is-None!8400 lt!1291588)) None!8400 (ite (is-None!8400 lt!1291588) lt!1291591 (ite (is-None!8400 lt!1291591) lt!1291588 (ite (>= (size!29833 (_1!22608 (v!38352 lt!1291591))) (size!29833 (_1!22608 (v!38352 lt!1291588)))) lt!1291591 lt!1291588)))))))

(assert (=> b!3689075 (= lt!1291591 call!266896)))

(assert (=> b!3689075 (= lt!1291588 (maxPrefix!3012 thiss!25197 (t!301269 rules!3568) lt!1291515))))

(declare-fun b!3689076 () Bool)

(declare-fun res!1499294 () Bool)

(assert (=> b!3689076 (=> (not res!1499294) (not e!2284400))))

(assert (=> b!3689076 (= res!1499294 (matchR!5209 (regex!5895 (rule!8743 (_1!22608 (get!12945 lt!1291589)))) (list!14580 (charsOf!3906 (_1!22608 (get!12945 lt!1291589))))))))

(assert (= (and d!1082805 c!638085) b!3689072))

(assert (= (and d!1082805 (not c!638085)) b!3689075))

(assert (= (or b!3689072 b!3689075) bm!266891))

(assert (= (and d!1082805 (not res!1499292)) b!3689074))

(assert (= (and b!3689074 res!1499289) b!3689070))

(assert (= (and b!3689070 res!1499293) b!3689071))

(assert (= (and b!3689071 res!1499290) b!3689068))

(assert (= (and b!3689068 res!1499288) b!3689073))

(assert (= (and b!3689073 res!1499291) b!3689076))

(assert (= (and b!3689076 res!1499294) b!3689069))

(declare-fun m!4201435 () Bool)

(assert (=> b!3689071 m!4201435))

(declare-fun m!4201437 () Bool)

(assert (=> b!3689071 m!4201437))

(declare-fun m!4201439 () Bool)

(assert (=> b!3689071 m!4201439))

(assert (=> b!3689069 m!4201435))

(declare-fun m!4201441 () Bool)

(assert (=> b!3689069 m!4201441))

(assert (=> b!3689076 m!4201435))

(declare-fun m!4201443 () Bool)

(assert (=> b!3689076 m!4201443))

(assert (=> b!3689076 m!4201443))

(declare-fun m!4201445 () Bool)

(assert (=> b!3689076 m!4201445))

(assert (=> b!3689076 m!4201445))

(declare-fun m!4201447 () Bool)

(assert (=> b!3689076 m!4201447))

(assert (=> b!3689070 m!4201435))

(assert (=> b!3689070 m!4201443))

(assert (=> b!3689070 m!4201443))

(assert (=> b!3689070 m!4201445))

(assert (=> b!3689073 m!4201435))

(declare-fun m!4201449 () Bool)

(assert (=> b!3689073 m!4201449))

(assert (=> b!3689073 m!4201449))

(declare-fun m!4201451 () Bool)

(assert (=> b!3689073 m!4201451))

(declare-fun m!4201453 () Bool)

(assert (=> b!3689075 m!4201453))

(declare-fun m!4201455 () Bool)

(assert (=> bm!266891 m!4201455))

(declare-fun m!4201457 () Bool)

(assert (=> b!3689074 m!4201457))

(assert (=> b!3689068 m!4201435))

(assert (=> b!3689068 m!4201443))

(assert (=> b!3689068 m!4201443))

(assert (=> b!3689068 m!4201445))

(assert (=> b!3689068 m!4201445))

(declare-fun m!4201459 () Bool)

(assert (=> b!3689068 m!4201459))

(declare-fun m!4201461 () Bool)

(assert (=> d!1082805 m!4201461))

(declare-fun m!4201463 () Bool)

(assert (=> d!1082805 m!4201463))

(declare-fun m!4201465 () Bool)

(assert (=> d!1082805 m!4201465))

(assert (=> d!1082805 m!4201245))

(assert (=> b!3688867 d!1082805))

(declare-fun d!1082807 () Bool)

(assert (=> d!1082807 (= (isEmpty!23237 rules!3568) (is-Nil!39036 rules!3568))))

(assert (=> b!3688864 d!1082807))

(declare-fun d!1082809 () Bool)

(assert (=> d!1082809 (isPrefix!3248 lt!1291516 (++!9726 lt!1291516 (_2!22608 lt!1291513)))))

(declare-fun lt!1291594 () Unit!57093)

(declare-fun choose!22077 (List!39159 List!39159) Unit!57093)

(assert (=> d!1082809 (= lt!1291594 (choose!22077 lt!1291516 (_2!22608 lt!1291513)))))

(assert (=> d!1082809 (= (lemmaConcatTwoListThenFirstIsPrefix!2165 lt!1291516 (_2!22608 lt!1291513)) lt!1291594)))

(declare-fun bs!574026 () Bool)

(assert (= bs!574026 d!1082809))

(assert (=> bs!574026 m!4201269))

(assert (=> bs!574026 m!4201269))

(assert (=> bs!574026 m!4201281))

(declare-fun m!4201467 () Bool)

(assert (=> bs!574026 m!4201467))

(assert (=> b!3688874 d!1082809))

(declare-fun d!1082811 () Bool)

(assert (=> d!1082811 (= (get!12945 (maxPrefix!3012 thiss!25197 rules!3568 input!3129)) (v!38352 (maxPrefix!3012 thiss!25197 rules!3568 input!3129)))))

(assert (=> b!3688874 d!1082811))

(declare-fun b!3689089 () Bool)

(declare-fun e!2284409 () Option!8402)

(assert (=> b!3689089 (= e!2284409 (Some!8401 (h!44456 rules!3568)))))

(declare-fun b!3689090 () Bool)

(declare-fun e!2284412 () Bool)

(declare-fun lt!1291603 () Option!8402)

(assert (=> b!3689090 (= e!2284412 (= (tag!6707 (get!12944 lt!1291603)) (tag!6707 (rule!8743 lt!1291518))))))

(declare-fun b!3689091 () Bool)

(declare-fun e!2284410 () Option!8402)

(assert (=> b!3689091 (= e!2284410 None!8401)))

(declare-fun b!3689093 () Bool)

(declare-fun e!2284411 () Bool)

(assert (=> b!3689093 (= e!2284411 e!2284412)))

(declare-fun res!1499299 () Bool)

(assert (=> b!3689093 (=> (not res!1499299) (not e!2284412))))

(assert (=> b!3689093 (= res!1499299 (contains!7796 rules!3568 (get!12944 lt!1291603)))))

(declare-fun b!3689094 () Bool)

(assert (=> b!3689094 (= e!2284409 e!2284410)))

(declare-fun c!638090 () Bool)

(assert (=> b!3689094 (= c!638090 (and (is-Cons!39036 rules!3568) (not (= (tag!6707 (h!44456 rules!3568)) (tag!6707 (rule!8743 lt!1291518))))))))

(declare-fun b!3689092 () Bool)

(declare-fun lt!1291601 () Unit!57093)

(declare-fun lt!1291602 () Unit!57093)

(assert (=> b!3689092 (= lt!1291601 lt!1291602)))

(assert (=> b!3689092 (rulesInvariant!4881 thiss!25197 (t!301269 rules!3568))))

(declare-fun lemmaInvariantOnRulesThenOnTail!634 (LexerInterface!5484 Rule!11590 List!39160) Unit!57093)

(assert (=> b!3689092 (= lt!1291602 (lemmaInvariantOnRulesThenOnTail!634 thiss!25197 (h!44456 rules!3568) (t!301269 rules!3568)))))

(assert (=> b!3689092 (= e!2284410 (getRuleFromTag!1477 thiss!25197 (t!301269 rules!3568) (tag!6707 (rule!8743 lt!1291518))))))

(declare-fun d!1082813 () Bool)

(assert (=> d!1082813 e!2284411))

(declare-fun res!1499300 () Bool)

(assert (=> d!1082813 (=> res!1499300 e!2284411)))

(declare-fun isEmpty!23244 (Option!8402) Bool)

(assert (=> d!1082813 (= res!1499300 (isEmpty!23244 lt!1291603))))

(assert (=> d!1082813 (= lt!1291603 e!2284409)))

(declare-fun c!638091 () Bool)

(assert (=> d!1082813 (= c!638091 (and (is-Cons!39036 rules!3568) (= (tag!6707 (h!44456 rules!3568)) (tag!6707 (rule!8743 lt!1291518)))))))

(assert (=> d!1082813 (rulesInvariant!4881 thiss!25197 rules!3568)))

(assert (=> d!1082813 (= (getRuleFromTag!1477 thiss!25197 rules!3568 (tag!6707 (rule!8743 lt!1291518))) lt!1291603)))

(assert (= (and d!1082813 c!638091) b!3689089))

(assert (= (and d!1082813 (not c!638091)) b!3689094))

(assert (= (and b!3689094 c!638090) b!3689092))

(assert (= (and b!3689094 (not c!638090)) b!3689091))

(assert (= (and d!1082813 (not res!1499300)) b!3689093))

(assert (= (and b!3689093 res!1499299) b!3689090))

(declare-fun m!4201469 () Bool)

(assert (=> b!3689090 m!4201469))

(assert (=> b!3689093 m!4201469))

(assert (=> b!3689093 m!4201469))

(declare-fun m!4201471 () Bool)

(assert (=> b!3689093 m!4201471))

(declare-fun m!4201473 () Bool)

(assert (=> b!3689092 m!4201473))

(declare-fun m!4201475 () Bool)

(assert (=> b!3689092 m!4201475))

(declare-fun m!4201477 () Bool)

(assert (=> b!3689092 m!4201477))

(declare-fun m!4201479 () Bool)

(assert (=> d!1082813 m!4201479))

(assert (=> d!1082813 m!4201243))

(assert (=> b!3688874 d!1082813))

(declare-fun d!1082815 () Bool)

(assert (=> d!1082815 (isPrefix!3248 lt!1291516 (++!9726 input!3129 suffix!1448))))

(declare-fun lt!1291606 () Unit!57093)

(declare-fun choose!22078 (List!39159 List!39159 List!39159) Unit!57093)

(assert (=> d!1082815 (= lt!1291606 (choose!22078 lt!1291516 input!3129 suffix!1448))))

(assert (=> d!1082815 (isPrefix!3248 lt!1291516 input!3129)))

(assert (=> d!1082815 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!577 lt!1291516 input!3129 suffix!1448) lt!1291606)))

(declare-fun bs!574027 () Bool)

(assert (= bs!574027 d!1082815))

(assert (=> bs!574027 m!4201279))

(assert (=> bs!574027 m!4201279))

(declare-fun m!4201481 () Bool)

(assert (=> bs!574027 m!4201481))

(declare-fun m!4201483 () Bool)

(assert (=> bs!574027 m!4201483))

(declare-fun m!4201485 () Bool)

(assert (=> bs!574027 m!4201485))

(assert (=> b!3688874 d!1082815))

(declare-fun d!1082817 () Bool)

(assert (=> d!1082817 (= (isDefined!6598 lt!1291514) (not (isEmpty!23244 lt!1291514)))))

(declare-fun bs!574028 () Bool)

(assert (= bs!574028 d!1082817))

(declare-fun m!4201487 () Bool)

(assert (=> bs!574028 m!4201487))

(assert (=> b!3688874 d!1082817))

(declare-fun b!3689095 () Bool)

(declare-fun res!1499301 () Bool)

(declare-fun e!2284415 () Bool)

(assert (=> b!3689095 (=> (not res!1499301) (not e!2284415))))

(declare-fun lt!1291609 () Option!8401)

(assert (=> b!3689095 (= res!1499301 (= (++!9726 (list!14580 (charsOf!3906 (_1!22608 (get!12945 lt!1291609)))) (_2!22608 (get!12945 lt!1291609))) input!3129))))

(declare-fun b!3689096 () Bool)

(assert (=> b!3689096 (= e!2284415 (contains!7796 rules!3568 (rule!8743 (_1!22608 (get!12945 lt!1291609)))))))

(declare-fun b!3689097 () Bool)

(declare-fun res!1499306 () Bool)

(assert (=> b!3689097 (=> (not res!1499306) (not e!2284415))))

(assert (=> b!3689097 (= res!1499306 (= (list!14580 (charsOf!3906 (_1!22608 (get!12945 lt!1291609)))) (originalCharacters!6609 (_1!22608 (get!12945 lt!1291609)))))))

(declare-fun b!3689098 () Bool)

(declare-fun res!1499303 () Bool)

(assert (=> b!3689098 (=> (not res!1499303) (not e!2284415))))

(assert (=> b!3689098 (= res!1499303 (< (size!29835 (_2!22608 (get!12945 lt!1291609))) (size!29835 input!3129)))))

(declare-fun b!3689099 () Bool)

(declare-fun e!2284413 () Option!8401)

(declare-fun call!266897 () Option!8401)

(assert (=> b!3689099 (= e!2284413 call!266897)))

(declare-fun bm!266892 () Bool)

(assert (=> bm!266892 (= call!266897 (maxPrefixOneRule!2130 thiss!25197 (h!44456 rules!3568) input!3129))))

(declare-fun d!1082819 () Bool)

(declare-fun e!2284414 () Bool)

(assert (=> d!1082819 e!2284414))

(declare-fun res!1499305 () Bool)

(assert (=> d!1082819 (=> res!1499305 e!2284414)))

(assert (=> d!1082819 (= res!1499305 (isEmpty!23238 lt!1291609))))

(assert (=> d!1082819 (= lt!1291609 e!2284413)))

(declare-fun c!638092 () Bool)

(assert (=> d!1082819 (= c!638092 (and (is-Cons!39036 rules!3568) (is-Nil!39036 (t!301269 rules!3568))))))

(declare-fun lt!1291610 () Unit!57093)

(declare-fun lt!1291607 () Unit!57093)

(assert (=> d!1082819 (= lt!1291610 lt!1291607)))

(assert (=> d!1082819 (isPrefix!3248 input!3129 input!3129)))

(assert (=> d!1082819 (= lt!1291607 (lemmaIsPrefixRefl!2035 input!3129 input!3129))))

(assert (=> d!1082819 (rulesValidInductive!2109 thiss!25197 rules!3568)))

(assert (=> d!1082819 (= (maxPrefix!3012 thiss!25197 rules!3568 input!3129) lt!1291609)))

(declare-fun b!3689100 () Bool)

(declare-fun res!1499304 () Bool)

(assert (=> b!3689100 (=> (not res!1499304) (not e!2284415))))

(assert (=> b!3689100 (= res!1499304 (= (value!188469 (_1!22608 (get!12945 lt!1291609))) (apply!9367 (transformation!5895 (rule!8743 (_1!22608 (get!12945 lt!1291609)))) (seqFromList!4444 (originalCharacters!6609 (_1!22608 (get!12945 lt!1291609)))))))))

(declare-fun b!3689101 () Bool)

(assert (=> b!3689101 (= e!2284414 e!2284415)))

(declare-fun res!1499302 () Bool)

(assert (=> b!3689101 (=> (not res!1499302) (not e!2284415))))

(assert (=> b!3689101 (= res!1499302 (isDefined!6600 lt!1291609))))

(declare-fun b!3689102 () Bool)

(declare-fun lt!1291611 () Option!8401)

(declare-fun lt!1291608 () Option!8401)

(assert (=> b!3689102 (= e!2284413 (ite (and (is-None!8400 lt!1291611) (is-None!8400 lt!1291608)) None!8400 (ite (is-None!8400 lt!1291608) lt!1291611 (ite (is-None!8400 lt!1291611) lt!1291608 (ite (>= (size!29833 (_1!22608 (v!38352 lt!1291611))) (size!29833 (_1!22608 (v!38352 lt!1291608)))) lt!1291611 lt!1291608)))))))

(assert (=> b!3689102 (= lt!1291611 call!266897)))

(assert (=> b!3689102 (= lt!1291608 (maxPrefix!3012 thiss!25197 (t!301269 rules!3568) input!3129))))

(declare-fun b!3689103 () Bool)

(declare-fun res!1499307 () Bool)

(assert (=> b!3689103 (=> (not res!1499307) (not e!2284415))))

(assert (=> b!3689103 (= res!1499307 (matchR!5209 (regex!5895 (rule!8743 (_1!22608 (get!12945 lt!1291609)))) (list!14580 (charsOf!3906 (_1!22608 (get!12945 lt!1291609))))))))

(assert (= (and d!1082819 c!638092) b!3689099))

(assert (= (and d!1082819 (not c!638092)) b!3689102))

(assert (= (or b!3689099 b!3689102) bm!266892))

(assert (= (and d!1082819 (not res!1499305)) b!3689101))

(assert (= (and b!3689101 res!1499302) b!3689097))

(assert (= (and b!3689097 res!1499306) b!3689098))

(assert (= (and b!3689098 res!1499303) b!3689095))

(assert (= (and b!3689095 res!1499301) b!3689100))

(assert (= (and b!3689100 res!1499304) b!3689103))

(assert (= (and b!3689103 res!1499307) b!3689096))

(declare-fun m!4201489 () Bool)

(assert (=> b!3689098 m!4201489))

(declare-fun m!4201491 () Bool)

(assert (=> b!3689098 m!4201491))

(declare-fun m!4201493 () Bool)

(assert (=> b!3689098 m!4201493))

(assert (=> b!3689096 m!4201489))

(declare-fun m!4201495 () Bool)

(assert (=> b!3689096 m!4201495))

(assert (=> b!3689103 m!4201489))

(declare-fun m!4201497 () Bool)

(assert (=> b!3689103 m!4201497))

(assert (=> b!3689103 m!4201497))

(declare-fun m!4201499 () Bool)

(assert (=> b!3689103 m!4201499))

(assert (=> b!3689103 m!4201499))

(declare-fun m!4201501 () Bool)

(assert (=> b!3689103 m!4201501))

(assert (=> b!3689097 m!4201489))

(assert (=> b!3689097 m!4201497))

(assert (=> b!3689097 m!4201497))

(assert (=> b!3689097 m!4201499))

(assert (=> b!3689100 m!4201489))

(declare-fun m!4201503 () Bool)

(assert (=> b!3689100 m!4201503))

(assert (=> b!3689100 m!4201503))

(declare-fun m!4201505 () Bool)

(assert (=> b!3689100 m!4201505))

(declare-fun m!4201507 () Bool)

(assert (=> b!3689102 m!4201507))

(declare-fun m!4201509 () Bool)

(assert (=> bm!266892 m!4201509))

(declare-fun m!4201511 () Bool)

(assert (=> b!3689101 m!4201511))

(assert (=> b!3689095 m!4201489))

(assert (=> b!3689095 m!4201497))

(assert (=> b!3689095 m!4201497))

(assert (=> b!3689095 m!4201499))

(assert (=> b!3689095 m!4201499))

(declare-fun m!4201513 () Bool)

(assert (=> b!3689095 m!4201513))

(declare-fun m!4201515 () Bool)

(assert (=> d!1082819 m!4201515))

(declare-fun m!4201517 () Bool)

(assert (=> d!1082819 m!4201517))

(declare-fun m!4201519 () Bool)

(assert (=> d!1082819 m!4201519))

(assert (=> d!1082819 m!4201245))

(assert (=> b!3688874 d!1082819))

(declare-fun d!1082821 () Bool)

(declare-fun e!2284424 () Bool)

(assert (=> d!1082821 e!2284424))

(declare-fun res!1499319 () Bool)

(assert (=> d!1082821 (=> res!1499319 e!2284424)))

(declare-fun lt!1291614 () Bool)

(assert (=> d!1082821 (= res!1499319 (not lt!1291614))))

(declare-fun e!2284422 () Bool)

(assert (=> d!1082821 (= lt!1291614 e!2284422)))

(declare-fun res!1499318 () Bool)

(assert (=> d!1082821 (=> res!1499318 e!2284422)))

(assert (=> d!1082821 (= res!1499318 (is-Nil!39035 lt!1291516))))

(assert (=> d!1082821 (= (isPrefix!3248 lt!1291516 lt!1291515) lt!1291614)))

(declare-fun b!3689114 () Bool)

(declare-fun e!2284423 () Bool)

(assert (=> b!3689114 (= e!2284423 (isPrefix!3248 (tail!5710 lt!1291516) (tail!5710 lt!1291515)))))

(declare-fun b!3689113 () Bool)

(declare-fun res!1499316 () Bool)

(assert (=> b!3689113 (=> (not res!1499316) (not e!2284423))))

(assert (=> b!3689113 (= res!1499316 (= (head!7963 lt!1291516) (head!7963 lt!1291515)))))

(declare-fun b!3689112 () Bool)

(assert (=> b!3689112 (= e!2284422 e!2284423)))

(declare-fun res!1499317 () Bool)

(assert (=> b!3689112 (=> (not res!1499317) (not e!2284423))))

(assert (=> b!3689112 (= res!1499317 (not (is-Nil!39035 lt!1291515)))))

(declare-fun b!3689115 () Bool)

(assert (=> b!3689115 (= e!2284424 (>= (size!29835 lt!1291515) (size!29835 lt!1291516)))))

(assert (= (and d!1082821 (not res!1499318)) b!3689112))

(assert (= (and b!3689112 res!1499317) b!3689113))

(assert (= (and b!3689113 res!1499316) b!3689114))

(assert (= (and d!1082821 (not res!1499319)) b!3689115))

(assert (=> b!3689114 m!4201419))

(declare-fun m!4201521 () Bool)

(assert (=> b!3689114 m!4201521))

(assert (=> b!3689114 m!4201419))

(assert (=> b!3689114 m!4201521))

(declare-fun m!4201523 () Bool)

(assert (=> b!3689114 m!4201523))

(assert (=> b!3689113 m!4201415))

(declare-fun m!4201525 () Bool)

(assert (=> b!3689113 m!4201525))

(assert (=> b!3689115 m!4201439))

(declare-fun m!4201527 () Bool)

(assert (=> b!3689115 m!4201527))

(assert (=> b!3688874 d!1082821))

(declare-fun b!3689124 () Bool)

(declare-fun e!2284430 () List!39159)

(assert (=> b!3689124 (= e!2284430 (_2!22608 lt!1291513))))

(declare-fun d!1082823 () Bool)

(declare-fun e!2284429 () Bool)

(assert (=> d!1082823 e!2284429))

(declare-fun res!1499325 () Bool)

(assert (=> d!1082823 (=> (not res!1499325) (not e!2284429))))

(declare-fun lt!1291617 () List!39159)

(declare-fun content!5658 (List!39159) (Set C!21494))

(assert (=> d!1082823 (= res!1499325 (= (content!5658 lt!1291617) (set.union (content!5658 lt!1291516) (content!5658 (_2!22608 lt!1291513)))))))

(assert (=> d!1082823 (= lt!1291617 e!2284430)))

(declare-fun c!638095 () Bool)

(assert (=> d!1082823 (= c!638095 (is-Nil!39035 lt!1291516))))

(assert (=> d!1082823 (= (++!9726 lt!1291516 (_2!22608 lt!1291513)) lt!1291617)))

(declare-fun b!3689126 () Bool)

(declare-fun res!1499324 () Bool)

(assert (=> b!3689126 (=> (not res!1499324) (not e!2284429))))

(assert (=> b!3689126 (= res!1499324 (= (size!29835 lt!1291617) (+ (size!29835 lt!1291516) (size!29835 (_2!22608 lt!1291513)))))))

(declare-fun b!3689125 () Bool)

(assert (=> b!3689125 (= e!2284430 (Cons!39035 (h!44455 lt!1291516) (++!9726 (t!301268 lt!1291516) (_2!22608 lt!1291513))))))

(declare-fun b!3689127 () Bool)

(assert (=> b!3689127 (= e!2284429 (or (not (= (_2!22608 lt!1291513) Nil!39035)) (= lt!1291617 lt!1291516)))))

(assert (= (and d!1082823 c!638095) b!3689124))

(assert (= (and d!1082823 (not c!638095)) b!3689125))

(assert (= (and d!1082823 res!1499325) b!3689126))

(assert (= (and b!3689126 res!1499324) b!3689127))

(declare-fun m!4201529 () Bool)

(assert (=> d!1082823 m!4201529))

(declare-fun m!4201531 () Bool)

(assert (=> d!1082823 m!4201531))

(declare-fun m!4201533 () Bool)

(assert (=> d!1082823 m!4201533))

(declare-fun m!4201535 () Bool)

(assert (=> b!3689126 m!4201535))

(assert (=> b!3689126 m!4201527))

(declare-fun m!4201537 () Bool)

(assert (=> b!3689126 m!4201537))

(declare-fun m!4201539 () Bool)

(assert (=> b!3689125 m!4201539))

(assert (=> b!3688874 d!1082823))

(declare-fun d!1082825 () Bool)

(declare-fun list!14584 (Conc!11980) List!39159)

(assert (=> d!1082825 (= (list!14580 (charsOf!3906 lt!1291518)) (list!14584 (c!638056 (charsOf!3906 lt!1291518))))))

(declare-fun bs!574029 () Bool)

(assert (= bs!574029 d!1082825))

(declare-fun m!4201541 () Bool)

(assert (=> bs!574029 m!4201541))

(assert (=> b!3688874 d!1082825))

(declare-fun d!1082827 () Bool)

(declare-fun e!2284433 () Bool)

(assert (=> d!1082827 e!2284433))

(declare-fun res!1499329 () Bool)

(assert (=> d!1082827 (=> res!1499329 e!2284433)))

(declare-fun lt!1291618 () Bool)

(assert (=> d!1082827 (= res!1499329 (not lt!1291618))))

(declare-fun e!2284431 () Bool)

(assert (=> d!1082827 (= lt!1291618 e!2284431)))

(declare-fun res!1499328 () Bool)

(assert (=> d!1082827 (=> res!1499328 e!2284431)))

(assert (=> d!1082827 (= res!1499328 (is-Nil!39035 lt!1291516))))

(assert (=> d!1082827 (= (isPrefix!3248 lt!1291516 (++!9726 lt!1291516 (_2!22608 lt!1291513))) lt!1291618)))

(declare-fun b!3689130 () Bool)

(declare-fun e!2284432 () Bool)

(assert (=> b!3689130 (= e!2284432 (isPrefix!3248 (tail!5710 lt!1291516) (tail!5710 (++!9726 lt!1291516 (_2!22608 lt!1291513)))))))

(declare-fun b!3689129 () Bool)

(declare-fun res!1499326 () Bool)

(assert (=> b!3689129 (=> (not res!1499326) (not e!2284432))))

(assert (=> b!3689129 (= res!1499326 (= (head!7963 lt!1291516) (head!7963 (++!9726 lt!1291516 (_2!22608 lt!1291513)))))))

(declare-fun b!3689128 () Bool)

(assert (=> b!3689128 (= e!2284431 e!2284432)))

(declare-fun res!1499327 () Bool)

(assert (=> b!3689128 (=> (not res!1499327) (not e!2284432))))

(assert (=> b!3689128 (= res!1499327 (not (is-Nil!39035 (++!9726 lt!1291516 (_2!22608 lt!1291513)))))))

(declare-fun b!3689131 () Bool)

(assert (=> b!3689131 (= e!2284433 (>= (size!29835 (++!9726 lt!1291516 (_2!22608 lt!1291513))) (size!29835 lt!1291516)))))

(assert (= (and d!1082827 (not res!1499328)) b!3689128))

(assert (= (and b!3689128 res!1499327) b!3689129))

(assert (= (and b!3689129 res!1499326) b!3689130))

(assert (= (and d!1082827 (not res!1499329)) b!3689131))

(assert (=> b!3689130 m!4201419))

(assert (=> b!3689130 m!4201269))

(declare-fun m!4201543 () Bool)

(assert (=> b!3689130 m!4201543))

(assert (=> b!3689130 m!4201419))

(assert (=> b!3689130 m!4201543))

(declare-fun m!4201545 () Bool)

(assert (=> b!3689130 m!4201545))

(assert (=> b!3689129 m!4201415))

(assert (=> b!3689129 m!4201269))

(declare-fun m!4201547 () Bool)

(assert (=> b!3689129 m!4201547))

(assert (=> b!3689131 m!4201269))

(declare-fun m!4201549 () Bool)

(assert (=> b!3689131 m!4201549))

(assert (=> b!3689131 m!4201527))

(assert (=> b!3688874 d!1082827))

(declare-fun d!1082829 () Bool)

(declare-fun lt!1291621 () BalanceConc!23574)

(assert (=> d!1082829 (= (list!14580 lt!1291621) (originalCharacters!6609 lt!1291518))))

(declare-fun dynLambda!17109 (Int TokenValue!6125) BalanceConc!23574)

(assert (=> d!1082829 (= lt!1291621 (dynLambda!17109 (toChars!8074 (transformation!5895 (rule!8743 lt!1291518))) (value!188469 lt!1291518)))))

(assert (=> d!1082829 (= (charsOf!3906 lt!1291518) lt!1291621)))

(declare-fun b_lambda!109495 () Bool)

(assert (=> (not b_lambda!109495) (not d!1082829)))

(declare-fun tb!213829 () Bool)

(declare-fun t!301276 () Bool)

(assert (=> (and b!3688869 (= (toChars!8074 (transformation!5895 (h!44456 rules!3568))) (toChars!8074 (transformation!5895 (rule!8743 lt!1291518)))) t!301276) tb!213829))

(declare-fun b!3689136 () Bool)

(declare-fun e!2284436 () Bool)

(declare-fun tp!1121105 () Bool)

(declare-fun inv!52512 (Conc!11980) Bool)

(assert (=> b!3689136 (= e!2284436 (and (inv!52512 (c!638056 (dynLambda!17109 (toChars!8074 (transformation!5895 (rule!8743 lt!1291518))) (value!188469 lt!1291518)))) tp!1121105))))

(declare-fun result!260290 () Bool)

(declare-fun inv!52513 (BalanceConc!23574) Bool)

(assert (=> tb!213829 (= result!260290 (and (inv!52513 (dynLambda!17109 (toChars!8074 (transformation!5895 (rule!8743 lt!1291518))) (value!188469 lt!1291518))) e!2284436))))

(assert (= tb!213829 b!3689136))

(declare-fun m!4201551 () Bool)

(assert (=> b!3689136 m!4201551))

(declare-fun m!4201553 () Bool)

(assert (=> tb!213829 m!4201553))

(assert (=> d!1082829 t!301276))

(declare-fun b_and!275627 () Bool)

(assert (= b_and!275621 (and (=> t!301276 result!260290) b_and!275627)))

(declare-fun m!4201555 () Bool)

(assert (=> d!1082829 m!4201555))

(declare-fun m!4201557 () Bool)

(assert (=> d!1082829 m!4201557))

(assert (=> b!3688874 d!1082829))

(declare-fun d!1082831 () Bool)

(assert (=> d!1082831 (= (head!7961 (list!14581 (_1!22609 lt!1291511))) (h!44457 (list!14581 (_1!22609 lt!1291511))))))

(assert (=> b!3688874 d!1082831))

(declare-fun b!3689137 () Bool)

(declare-fun e!2284438 () List!39159)

(assert (=> b!3689137 (= e!2284438 suffix!1448)))

(declare-fun d!1082833 () Bool)

(declare-fun e!2284437 () Bool)

(assert (=> d!1082833 e!2284437))

(declare-fun res!1499331 () Bool)

(assert (=> d!1082833 (=> (not res!1499331) (not e!2284437))))

(declare-fun lt!1291622 () List!39159)

(assert (=> d!1082833 (= res!1499331 (= (content!5658 lt!1291622) (set.union (content!5658 input!3129) (content!5658 suffix!1448))))))

(assert (=> d!1082833 (= lt!1291622 e!2284438)))

(declare-fun c!638096 () Bool)

(assert (=> d!1082833 (= c!638096 (is-Nil!39035 input!3129))))

(assert (=> d!1082833 (= (++!9726 input!3129 suffix!1448) lt!1291622)))

(declare-fun b!3689139 () Bool)

(declare-fun res!1499330 () Bool)

(assert (=> b!3689139 (=> (not res!1499330) (not e!2284437))))

(assert (=> b!3689139 (= res!1499330 (= (size!29835 lt!1291622) (+ (size!29835 input!3129) (size!29835 suffix!1448))))))

(declare-fun b!3689138 () Bool)

(assert (=> b!3689138 (= e!2284438 (Cons!39035 (h!44455 input!3129) (++!9726 (t!301268 input!3129) suffix!1448)))))

(declare-fun b!3689140 () Bool)

(assert (=> b!3689140 (= e!2284437 (or (not (= suffix!1448 Nil!39035)) (= lt!1291622 input!3129)))))

(assert (= (and d!1082833 c!638096) b!3689137))

(assert (= (and d!1082833 (not c!638096)) b!3689138))

(assert (= (and d!1082833 res!1499331) b!3689139))

(assert (= (and b!3689139 res!1499330) b!3689140))

(declare-fun m!4201559 () Bool)

(assert (=> d!1082833 m!4201559))

(declare-fun m!4201561 () Bool)

(assert (=> d!1082833 m!4201561))

(declare-fun m!4201563 () Bool)

(assert (=> d!1082833 m!4201563))

(declare-fun m!4201565 () Bool)

(assert (=> b!3689139 m!4201565))

(assert (=> b!3689139 m!4201493))

(declare-fun m!4201567 () Bool)

(assert (=> b!3689139 m!4201567))

(declare-fun m!4201569 () Bool)

(assert (=> b!3689138 m!4201569))

(assert (=> b!3688874 d!1082833))

(declare-fun d!1082835 () Bool)

(declare-fun list!14585 (Conc!11981) List!39161)

(assert (=> d!1082835 (= (list!14581 (_1!22609 lt!1291511)) (list!14585 (c!638057 (_1!22609 lt!1291511))))))

(declare-fun bs!574030 () Bool)

(assert (= bs!574030 d!1082835))

(declare-fun m!4201571 () Bool)

(assert (=> bs!574030 m!4201571))

(assert (=> b!3688874 d!1082835))

(declare-fun b!3689141 () Bool)

(declare-fun e!2284439 () Bool)

(assert (=> b!3689141 (= e!2284439 (nullable!3714 (regex!5895 (rule!8743 lt!1291518))))))

(declare-fun b!3689142 () Bool)

(declare-fun e!2284444 () Bool)

(assert (=> b!3689142 (= e!2284444 (not (= (head!7963 lt!1291516) (c!638055 (regex!5895 (rule!8743 lt!1291518))))))))

(declare-fun b!3689143 () Bool)

(declare-fun res!1499338 () Bool)

(declare-fun e!2284441 () Bool)

(assert (=> b!3689143 (=> res!1499338 e!2284441)))

(declare-fun e!2284443 () Bool)

(assert (=> b!3689143 (= res!1499338 e!2284443)))

(declare-fun res!1499332 () Bool)

(assert (=> b!3689143 (=> (not res!1499332) (not e!2284443))))

(declare-fun lt!1291623 () Bool)

(assert (=> b!3689143 (= res!1499332 lt!1291623)))

(declare-fun b!3689144 () Bool)

(declare-fun e!2284440 () Bool)

(assert (=> b!3689144 (= e!2284441 e!2284440)))

(declare-fun res!1499336 () Bool)

(assert (=> b!3689144 (=> (not res!1499336) (not e!2284440))))

(assert (=> b!3689144 (= res!1499336 (not lt!1291623))))

(declare-fun d!1082837 () Bool)

(declare-fun e!2284442 () Bool)

(assert (=> d!1082837 e!2284442))

(declare-fun c!638097 () Bool)

(assert (=> d!1082837 (= c!638097 (is-EmptyExpr!10654 (regex!5895 (rule!8743 lt!1291518))))))

(assert (=> d!1082837 (= lt!1291623 e!2284439)))

(declare-fun c!638099 () Bool)

(assert (=> d!1082837 (= c!638099 (isEmpty!23243 lt!1291516))))

(assert (=> d!1082837 (validRegex!4876 (regex!5895 (rule!8743 lt!1291518)))))

(assert (=> d!1082837 (= (matchR!5209 (regex!5895 (rule!8743 lt!1291518)) lt!1291516) lt!1291623)))

(declare-fun b!3689145 () Bool)

(declare-fun call!266898 () Bool)

(assert (=> b!3689145 (= e!2284442 (= lt!1291623 call!266898))))

(declare-fun bm!266893 () Bool)

(assert (=> bm!266893 (= call!266898 (isEmpty!23243 lt!1291516))))

(declare-fun b!3689146 () Bool)

(declare-fun res!1499333 () Bool)

(assert (=> b!3689146 (=> (not res!1499333) (not e!2284443))))

(assert (=> b!3689146 (= res!1499333 (isEmpty!23243 (tail!5710 lt!1291516)))))

(declare-fun b!3689147 () Bool)

(declare-fun res!1499335 () Bool)

(assert (=> b!3689147 (=> res!1499335 e!2284441)))

(assert (=> b!3689147 (= res!1499335 (not (is-ElementMatch!10654 (regex!5895 (rule!8743 lt!1291518)))))))

(declare-fun e!2284445 () Bool)

(assert (=> b!3689147 (= e!2284445 e!2284441)))

(declare-fun b!3689148 () Bool)

(declare-fun res!1499337 () Bool)

(assert (=> b!3689148 (=> (not res!1499337) (not e!2284443))))

(assert (=> b!3689148 (= res!1499337 (not call!266898))))

(declare-fun b!3689149 () Bool)

(assert (=> b!3689149 (= e!2284440 e!2284444)))

(declare-fun res!1499339 () Bool)

(assert (=> b!3689149 (=> res!1499339 e!2284444)))

(assert (=> b!3689149 (= res!1499339 call!266898)))

(declare-fun b!3689150 () Bool)

(assert (=> b!3689150 (= e!2284439 (matchR!5209 (derivativeStep!3260 (regex!5895 (rule!8743 lt!1291518)) (head!7963 lt!1291516)) (tail!5710 lt!1291516)))))

(declare-fun b!3689151 () Bool)

(assert (=> b!3689151 (= e!2284445 (not lt!1291623))))

(declare-fun b!3689152 () Bool)

(assert (=> b!3689152 (= e!2284442 e!2284445)))

(declare-fun c!638098 () Bool)

(assert (=> b!3689152 (= c!638098 (is-EmptyLang!10654 (regex!5895 (rule!8743 lt!1291518))))))

(declare-fun b!3689153 () Bool)

(assert (=> b!3689153 (= e!2284443 (= (head!7963 lt!1291516) (c!638055 (regex!5895 (rule!8743 lt!1291518)))))))

(declare-fun b!3689154 () Bool)

(declare-fun res!1499334 () Bool)

(assert (=> b!3689154 (=> res!1499334 e!2284444)))

(assert (=> b!3689154 (= res!1499334 (not (isEmpty!23243 (tail!5710 lt!1291516))))))

(assert (= (and d!1082837 c!638099) b!3689141))

(assert (= (and d!1082837 (not c!638099)) b!3689150))

(assert (= (and d!1082837 c!638097) b!3689145))

(assert (= (and d!1082837 (not c!638097)) b!3689152))

(assert (= (and b!3689152 c!638098) b!3689151))

(assert (= (and b!3689152 (not c!638098)) b!3689147))

(assert (= (and b!3689147 (not res!1499335)) b!3689143))

(assert (= (and b!3689143 res!1499332) b!3689148))

(assert (= (and b!3689148 res!1499337) b!3689146))

(assert (= (and b!3689146 res!1499333) b!3689153))

(assert (= (and b!3689143 (not res!1499338)) b!3689144))

(assert (= (and b!3689144 res!1499336) b!3689149))

(assert (= (and b!3689149 (not res!1499339)) b!3689154))

(assert (= (and b!3689154 (not res!1499334)) b!3689142))

(assert (= (or b!3689145 b!3689148 b!3689149) bm!266893))

(assert (=> b!3689142 m!4201415))

(assert (=> b!3689150 m!4201415))

(assert (=> b!3689150 m!4201415))

(declare-fun m!4201573 () Bool)

(assert (=> b!3689150 m!4201573))

(assert (=> b!3689150 m!4201419))

(assert (=> b!3689150 m!4201573))

(assert (=> b!3689150 m!4201419))

(declare-fun m!4201575 () Bool)

(assert (=> b!3689150 m!4201575))

(assert (=> d!1082837 m!4201423))

(declare-fun m!4201577 () Bool)

(assert (=> d!1082837 m!4201577))

(assert (=> bm!266893 m!4201423))

(assert (=> b!3689153 m!4201415))

(assert (=> b!3689146 m!4201419))

(assert (=> b!3689146 m!4201419))

(assert (=> b!3689146 m!4201427))

(declare-fun m!4201579 () Bool)

(assert (=> b!3689141 m!4201579))

(assert (=> b!3689154 m!4201419))

(assert (=> b!3689154 m!4201419))

(assert (=> b!3689154 m!4201427))

(assert (=> b!3688874 d!1082837))

(declare-fun d!1082839 () Bool)

(declare-fun e!2284448 () Bool)

(assert (=> d!1082839 e!2284448))

(declare-fun res!1499344 () Bool)

(assert (=> d!1082839 (=> (not res!1499344) (not e!2284448))))

(assert (=> d!1082839 (= res!1499344 (isDefined!6598 (getRuleFromTag!1477 thiss!25197 rules!3568 (tag!6707 (rule!8743 lt!1291518)))))))

(declare-fun lt!1291626 () Unit!57093)

(declare-fun choose!22079 (LexerInterface!5484 List!39160 List!39159 Token!11156) Unit!57093)

(assert (=> d!1082839 (= lt!1291626 (choose!22079 thiss!25197 rules!3568 input!3129 lt!1291518))))

(assert (=> d!1082839 (rulesInvariant!4881 thiss!25197 rules!3568)))

(assert (=> d!1082839 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1477 thiss!25197 rules!3568 input!3129 lt!1291518) lt!1291626)))

(declare-fun b!3689159 () Bool)

(declare-fun res!1499345 () Bool)

(assert (=> b!3689159 (=> (not res!1499345) (not e!2284448))))

(assert (=> b!3689159 (= res!1499345 (matchR!5209 (regex!5895 (get!12944 (getRuleFromTag!1477 thiss!25197 rules!3568 (tag!6707 (rule!8743 lt!1291518))))) (list!14580 (charsOf!3906 lt!1291518))))))

(declare-fun b!3689160 () Bool)

(assert (=> b!3689160 (= e!2284448 (= (rule!8743 lt!1291518) (get!12944 (getRuleFromTag!1477 thiss!25197 rules!3568 (tag!6707 (rule!8743 lt!1291518))))))))

(assert (= (and d!1082839 res!1499344) b!3689159))

(assert (= (and b!3689159 res!1499345) b!3689160))

(assert (=> d!1082839 m!4201267))

(assert (=> d!1082839 m!4201267))

(declare-fun m!4201581 () Bool)

(assert (=> d!1082839 m!4201581))

(declare-fun m!4201583 () Bool)

(assert (=> d!1082839 m!4201583))

(assert (=> d!1082839 m!4201243))

(assert (=> b!3689159 m!4201267))

(assert (=> b!3689159 m!4201257))

(assert (=> b!3689159 m!4201259))

(assert (=> b!3689159 m!4201259))

(declare-fun m!4201585 () Bool)

(assert (=> b!3689159 m!4201585))

(assert (=> b!3689159 m!4201257))

(assert (=> b!3689159 m!4201267))

(declare-fun m!4201587 () Bool)

(assert (=> b!3689159 m!4201587))

(assert (=> b!3689160 m!4201267))

(assert (=> b!3689160 m!4201267))

(assert (=> b!3689160 m!4201587))

(assert (=> b!3688874 d!1082839))

(declare-fun d!1082841 () Bool)

(declare-fun lt!1291629 () Bool)

(declare-fun isEmpty!23246 (List!39161) Bool)

(assert (=> d!1082841 (= lt!1291629 (isEmpty!23246 (list!14581 (_1!22609 lt!1291511))))))

(declare-fun isEmpty!23247 (Conc!11981) Bool)

(assert (=> d!1082841 (= lt!1291629 (isEmpty!23247 (c!638057 (_1!22609 lt!1291511))))))

(assert (=> d!1082841 (= (isEmpty!23239 (_1!22609 lt!1291511)) lt!1291629)))

(declare-fun bs!574031 () Bool)

(assert (= bs!574031 d!1082841))

(assert (=> bs!574031 m!4201265))

(assert (=> bs!574031 m!4201265))

(declare-fun m!4201589 () Bool)

(assert (=> bs!574031 m!4201589))

(declare-fun m!4201591 () Bool)

(assert (=> bs!574031 m!4201591))

(assert (=> b!3688870 d!1082841))

(declare-fun d!1082843 () Bool)

(declare-fun e!2284458 () Bool)

(assert (=> d!1082843 e!2284458))

(declare-fun res!1499356 () Bool)

(assert (=> d!1082843 (=> (not res!1499356) (not e!2284458))))

(declare-fun e!2284457 () Bool)

(assert (=> d!1082843 (= res!1499356 e!2284457)))

(declare-fun c!638102 () Bool)

(declare-fun lt!1291636 () tuple2!38950)

(declare-fun size!29836 (BalanceConc!23576) Int)

(assert (=> d!1082843 (= c!638102 (> (size!29836 (_1!22609 lt!1291636)) 0))))

(declare-fun lexTailRecV2!1141 (LexerInterface!5484 List!39160 BalanceConc!23574 BalanceConc!23574 BalanceConc!23574 BalanceConc!23576) tuple2!38950)

(assert (=> d!1082843 (= lt!1291636 (lexTailRecV2!1141 thiss!25197 rules!3568 (seqFromList!4444 input!3129) (BalanceConc!23575 Empty!11980) (seqFromList!4444 input!3129) (BalanceConc!23577 Empty!11981)))))

(assert (=> d!1082843 (= (lex!2625 thiss!25197 rules!3568 (seqFromList!4444 input!3129)) lt!1291636)))

(declare-fun b!3689175 () Bool)

(declare-datatypes ((tuple2!38956 0))(
  ( (tuple2!38957 (_1!22612 List!39161) (_2!22612 List!39159)) )
))
(declare-fun lexList!1535 (LexerInterface!5484 List!39160 List!39159) tuple2!38956)

(assert (=> b!3689175 (= e!2284458 (= (list!14580 (_2!22609 lt!1291636)) (_2!22612 (lexList!1535 thiss!25197 rules!3568 (list!14580 (seqFromList!4444 input!3129))))))))

(declare-fun b!3689176 () Bool)

(declare-fun e!2284459 () Bool)

(assert (=> b!3689176 (= e!2284457 e!2284459)))

(declare-fun res!1499355 () Bool)

(declare-fun size!29837 (BalanceConc!23574) Int)

(assert (=> b!3689176 (= res!1499355 (< (size!29837 (_2!22609 lt!1291636)) (size!29837 (seqFromList!4444 input!3129))))))

(assert (=> b!3689176 (=> (not res!1499355) (not e!2284459))))

(declare-fun b!3689177 () Bool)

(declare-fun res!1499354 () Bool)

(assert (=> b!3689177 (=> (not res!1499354) (not e!2284458))))

(assert (=> b!3689177 (= res!1499354 (= (list!14581 (_1!22609 lt!1291636)) (_1!22612 (lexList!1535 thiss!25197 rules!3568 (list!14580 (seqFromList!4444 input!3129))))))))

(declare-fun b!3689178 () Bool)

(assert (=> b!3689178 (= e!2284459 (not (isEmpty!23239 (_1!22609 lt!1291636))))))

(declare-fun b!3689179 () Bool)

(assert (=> b!3689179 (= e!2284457 (= (_2!22609 lt!1291636) (seqFromList!4444 input!3129)))))

(assert (= (and d!1082843 c!638102) b!3689176))

(assert (= (and d!1082843 (not c!638102)) b!3689179))

(assert (= (and b!3689176 res!1499355) b!3689178))

(assert (= (and d!1082843 res!1499356) b!3689177))

(assert (= (and b!3689177 res!1499354) b!3689175))

(declare-fun m!4201603 () Bool)

(assert (=> b!3689176 m!4201603))

(assert (=> b!3689176 m!4201289))

(declare-fun m!4201605 () Bool)

(assert (=> b!3689176 m!4201605))

(declare-fun m!4201607 () Bool)

(assert (=> d!1082843 m!4201607))

(assert (=> d!1082843 m!4201289))

(assert (=> d!1082843 m!4201289))

(declare-fun m!4201609 () Bool)

(assert (=> d!1082843 m!4201609))

(declare-fun m!4201611 () Bool)

(assert (=> b!3689178 m!4201611))

(declare-fun m!4201613 () Bool)

(assert (=> b!3689175 m!4201613))

(assert (=> b!3689175 m!4201289))

(declare-fun m!4201615 () Bool)

(assert (=> b!3689175 m!4201615))

(assert (=> b!3689175 m!4201615))

(declare-fun m!4201617 () Bool)

(assert (=> b!3689175 m!4201617))

(declare-fun m!4201619 () Bool)

(assert (=> b!3689177 m!4201619))

(assert (=> b!3689177 m!4201289))

(assert (=> b!3689177 m!4201615))

(assert (=> b!3689177 m!4201615))

(assert (=> b!3689177 m!4201617))

(assert (=> b!3688870 d!1082843))

(declare-fun d!1082849 () Bool)

(declare-fun fromListB!2051 (List!39159) BalanceConc!23574)

(assert (=> d!1082849 (= (seqFromList!4444 input!3129) (fromListB!2051 input!3129))))

(declare-fun bs!574033 () Bool)

(assert (= bs!574033 d!1082849))

(declare-fun m!4201621 () Bool)

(assert (=> bs!574033 m!4201621))

(assert (=> b!3688870 d!1082849))

(declare-fun b!3689190 () Bool)

(declare-fun b_free!97881 () Bool)

(declare-fun b_next!98585 () Bool)

(assert (=> b!3689190 (= b_free!97881 (not b_next!98585))))

(declare-fun tp!1121117 () Bool)

(declare-fun b_and!275629 () Bool)

(assert (=> b!3689190 (= tp!1121117 b_and!275629)))

(declare-fun b_free!97883 () Bool)

(declare-fun b_next!98587 () Bool)

(assert (=> b!3689190 (= b_free!97883 (not b_next!98587))))

(declare-fun tb!213831 () Bool)

(declare-fun t!301278 () Bool)

(assert (=> (and b!3689190 (= (toChars!8074 (transformation!5895 (h!44456 (t!301269 rules!3568)))) (toChars!8074 (transformation!5895 (rule!8743 lt!1291518)))) t!301278) tb!213831))

(declare-fun result!260296 () Bool)

(assert (= result!260296 result!260290))

(assert (=> d!1082829 t!301278))

(declare-fun tp!1121115 () Bool)

(declare-fun b_and!275631 () Bool)

(assert (=> b!3689190 (= tp!1121115 (and (=> t!301278 result!260296) b_and!275631))))

(declare-fun e!2284471 () Bool)

(assert (=> b!3689190 (= e!2284471 (and tp!1121117 tp!1121115))))

(declare-fun tp!1121116 () Bool)

(declare-fun b!3689189 () Bool)

(declare-fun e!2284468 () Bool)

(assert (=> b!3689189 (= e!2284468 (and tp!1121116 (inv!52507 (tag!6707 (h!44456 (t!301269 rules!3568)))) (inv!52510 (transformation!5895 (h!44456 (t!301269 rules!3568)))) e!2284471))))

(declare-fun b!3689188 () Bool)

(declare-fun e!2284470 () Bool)

(declare-fun tp!1121114 () Bool)

(assert (=> b!3689188 (= e!2284470 (and e!2284468 tp!1121114))))

(assert (=> b!3688866 (= tp!1121084 e!2284470)))

(assert (= b!3689189 b!3689190))

(assert (= b!3689188 b!3689189))

(assert (= (and b!3688866 (is-Cons!39036 (t!301269 rules!3568))) b!3689188))

(declare-fun m!4201623 () Bool)

(assert (=> b!3689189 m!4201623))

(declare-fun m!4201625 () Bool)

(assert (=> b!3689189 m!4201625))

(declare-fun b!3689203 () Bool)

(declare-fun e!2284474 () Bool)

(declare-fun tp!1121130 () Bool)

(assert (=> b!3689203 (= e!2284474 tp!1121130)))

(declare-fun b!3689201 () Bool)

(assert (=> b!3689201 (= e!2284474 tp_is_empty!18391)))

(assert (=> b!3688873 (= tp!1121082 e!2284474)))

(declare-fun b!3689204 () Bool)

(declare-fun tp!1121131 () Bool)

(declare-fun tp!1121132 () Bool)

(assert (=> b!3689204 (= e!2284474 (and tp!1121131 tp!1121132))))

(declare-fun b!3689202 () Bool)

(declare-fun tp!1121128 () Bool)

(declare-fun tp!1121129 () Bool)

(assert (=> b!3689202 (= e!2284474 (and tp!1121128 tp!1121129))))

(assert (= (and b!3688873 (is-ElementMatch!10654 (regex!5895 (h!44456 rules!3568)))) b!3689201))

(assert (= (and b!3688873 (is-Concat!16780 (regex!5895 (h!44456 rules!3568)))) b!3689202))

(assert (= (and b!3688873 (is-Star!10654 (regex!5895 (h!44456 rules!3568)))) b!3689203))

(assert (= (and b!3688873 (is-Union!10654 (regex!5895 (h!44456 rules!3568)))) b!3689204))

(declare-fun b!3689209 () Bool)

(declare-fun e!2284477 () Bool)

(declare-fun tp!1121135 () Bool)

(assert (=> b!3689209 (= e!2284477 (and tp_is_empty!18391 tp!1121135))))

(assert (=> b!3688865 (= tp!1121080 e!2284477)))

(assert (= (and b!3688865 (is-Cons!39035 (t!301268 suffix!1448))) b!3689209))

(declare-fun b!3689210 () Bool)

(declare-fun e!2284478 () Bool)

(declare-fun tp!1121136 () Bool)

(assert (=> b!3689210 (= e!2284478 (and tp_is_empty!18391 tp!1121136))))

(assert (=> b!3688875 (= tp!1121079 e!2284478)))

(assert (= (and b!3688875 (is-Cons!39035 (t!301268 input!3129))) b!3689210))

(push 1)

(assert (not d!1082841))

(assert (not b!3689073))

(assert b_and!275629)

(assert (not d!1082849))

(assert (not b!3689096))

(assert (not b!3689114))

(assert (not b!3689038))

(assert (not b!3689202))

(assert (not b!3689150))

(assert (not b!3689101))

(assert (not d!1082775))

(assert (not b!3689138))

(assert (not d!1082817))

(assert (not bm!266888))

(assert (not d!1082801))

(assert (not b!3689146))

(assert (not b!3689069))

(assert (not b_lambda!109495))

(assert (not b!3689209))

(assert (not b!3689125))

(assert (not d!1082813))

(assert (not b_next!98577))

(assert (not d!1082837))

(assert (not b!3689130))

(assert (not b!3689129))

(assert (not b!3689001))

(assert (not bm!266891))

(assert b_and!275627)

(assert (not b!3689154))

(assert b_and!275631)

(assert (not b!3689042))

(assert (not b!3689175))

(assert (not b!3689034))

(assert b_and!275619)

(assert (not b!3689159))

(assert (not d!1082773))

(assert (not d!1082825))

(assert (not d!1082835))

(assert (not b!3689102))

(assert (not b!3689049))

(assert (not b!3689033))

(assert (not b!3689070))

(assert (not b!3689160))

(assert (not d!1082843))

(assert (not b!3689210))

(assert (not b_next!98587))

(assert (not b!3689204))

(assert (not b!3689095))

(assert (not b!3689188))

(assert (not b!3689071))

(assert (not b!3689093))

(assert (not b_next!98579))

(assert (not b!3689098))

(assert (not d!1082819))

(assert (not b!3689153))

(assert (not b!3689189))

(assert (not d!1082839))

(assert (not b!3689002))

(assert (not bm!266893))

(assert (not tb!213829))

(assert (not b!3689142))

(assert (not d!1082809))

(assert (not b!3689141))

(assert (not b!3689115))

(assert (not b!3689076))

(assert (not bm!266892))

(assert (not b!3689075))

(assert (not d!1082815))

(assert (not b!3689046))

(assert (not d!1082795))

(assert (not b!3689097))

(assert (not b!3689100))

(assert (not b!3689177))

(assert (not d!1082829))

(assert (not b_next!98585))

(assert (not b!3689045))

(assert (not b!3689203))

(assert (not b!3689068))

(assert (not b!3689176))

(assert (not d!1082823))

(assert (not b!3689103))

(assert (not b!3689113))

(assert (not d!1082833))

(assert (not b!3689131))

(assert (not b!3689074))

(assert (not b!3689092))

(assert (not b!3689090))

(assert (not b!3689136))

(assert (not b!3689139))

(assert tp_is_empty!18391)

(assert (not b!3689126))

(assert (not b!3689178))

(assert (not d!1082805))

(assert (not b!3688917))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!98577))

(assert b_and!275619)

(assert (not b_next!98587))

(assert b_and!275629)

(assert (not b_next!98579))

(assert (not b_next!98585))

(assert b_and!275627)

(assert b_and!275631)

(check-sat)

(pop 1)

