; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108434 () Bool)

(assert start!108434)

(declare-fun b!1214300 () Bool)

(declare-fun b_free!29065 () Bool)

(declare-fun b_next!29769 () Bool)

(assert (=> b!1214300 (= b_free!29065 (not b_next!29769))))

(declare-fun tp!344421 () Bool)

(declare-fun b_and!82369 () Bool)

(assert (=> b!1214300 (= tp!344421 b_and!82369)))

(declare-fun b_free!29067 () Bool)

(declare-fun b_next!29771 () Bool)

(assert (=> b!1214300 (= b_free!29067 (not b_next!29771))))

(declare-fun tp!344418 () Bool)

(declare-fun b_and!82371 () Bool)

(assert (=> b!1214300 (= tp!344418 b_and!82371)))

(declare-fun b!1214303 () Bool)

(declare-fun b_free!29069 () Bool)

(declare-fun b_next!29773 () Bool)

(assert (=> b!1214303 (= b_free!29069 (not b_next!29773))))

(declare-fun tp!344422 () Bool)

(declare-fun b_and!82373 () Bool)

(assert (=> b!1214303 (= tp!344422 b_and!82373)))

(declare-fun b_free!29071 () Bool)

(declare-fun b_next!29775 () Bool)

(assert (=> b!1214303 (= b_free!29071 (not b_next!29775))))

(declare-fun tp!344416 () Bool)

(declare-fun b_and!82375 () Bool)

(assert (=> b!1214303 (= tp!344416 b_and!82375)))

(declare-fun b!1214297 () Bool)

(declare-fun res!546078 () Bool)

(declare-fun e!779252 () Bool)

(assert (=> b!1214297 (=> (not res!546078) (not e!779252))))

(declare-datatypes ((C!7104 0))(
  ( (C!7105 (val!4082 Int)) )
))
(declare-datatypes ((List!12410 0))(
  ( (Nil!12352) (Cons!12352 (h!17753 C!7104) (t!112980 List!12410)) )
))
(declare-fun lt!415221 () List!12410)

(declare-datatypes ((List!12411 0))(
  ( (Nil!12353) (Cons!12353 (h!17754 (_ BitVec 16)) (t!112981 List!12411)) )
))
(declare-datatypes ((TokenValue!2191 0))(
  ( (FloatLiteralValue!4382 (text!15782 List!12411)) (TokenValueExt!2190 (__x!8097 Int)) (Broken!10955 (value!69076 List!12411)) (Object!2248) (End!2191) (Def!2191) (Underscore!2191) (Match!2191) (Else!2191) (Error!2191) (Case!2191) (If!2191) (Extends!2191) (Abstract!2191) (Class!2191) (Val!2191) (DelimiterValue!4382 (del!2251 List!12411)) (KeywordValue!2197 (value!69077 List!12411)) (CommentValue!4382 (value!69078 List!12411)) (WhitespaceValue!4382 (value!69079 List!12411)) (IndentationValue!2191 (value!69080 List!12411)) (String!15086) (Int32!2191) (Broken!10956 (value!69081 List!12411)) (Boolean!2192) (Unit!18647) (OperatorValue!2194 (op!2251 List!12411)) (IdentifierValue!4382 (value!69082 List!12411)) (IdentifierValue!4383 (value!69083 List!12411)) (WhitespaceValue!4383 (value!69084 List!12411)) (True!4382) (False!4382) (Broken!10957 (value!69085 List!12411)) (Broken!10958 (value!69086 List!12411)) (True!4383) (RightBrace!2191) (RightBracket!2191) (Colon!2191) (Null!2191) (Comma!2191) (LeftBracket!2191) (False!4383) (LeftBrace!2191) (ImaginaryLiteralValue!2191 (text!15783 List!12411)) (StringLiteralValue!6573 (value!69087 List!12411)) (EOFValue!2191 (value!69088 List!12411)) (IdentValue!2191 (value!69089 List!12411)) (DelimiterValue!4383 (value!69090 List!12411)) (DedentValue!2191 (value!69091 List!12411)) (NewLineValue!2191 (value!69092 List!12411)) (IntegerValue!6573 (value!69093 (_ BitVec 32)) (text!15784 List!12411)) (IntegerValue!6574 (value!69094 Int) (text!15785 List!12411)) (Times!2191) (Or!2191) (Equal!2191) (Minus!2191) (Broken!10959 (value!69095 List!12411)) (And!2191) (Div!2191) (LessEqual!2191) (Mod!2191) (Concat!5584) (Not!2191) (Plus!2191) (SpaceValue!2191 (value!69096 List!12411)) (IntegerValue!6575 (value!69097 Int) (text!15786 List!12411)) (StringLiteralValue!6574 (text!15787 List!12411)) (FloatLiteralValue!4383 (text!15788 List!12411)) (BytesLiteralValue!2191 (value!69098 List!12411)) (CommentValue!4383 (value!69099 List!12411)) (StringLiteralValue!6575 (value!69100 List!12411)) (ErrorTokenValue!2191 (msg!2252 List!12411)) )
))
(declare-datatypes ((IArray!8101 0))(
  ( (IArray!8102 (innerList!4108 List!12410)) )
))
(declare-datatypes ((Conc!4048 0))(
  ( (Node!4048 (left!10693 Conc!4048) (right!11023 Conc!4048) (csize!8326 Int) (cheight!4259 Int)) (Leaf!6258 (xs!6759 IArray!8101) (csize!8327 Int)) (Empty!4048) )
))
(declare-datatypes ((String!15087 0))(
  ( (String!15088 (value!69101 String)) )
))
(declare-datatypes ((BalanceConc!8028 0))(
  ( (BalanceConc!8029 (c!203220 Conc!4048)) )
))
(declare-datatypes ((Regex!3393 0))(
  ( (ElementMatch!3393 (c!203221 C!7104)) (Concat!5585 (regOne!7298 Regex!3393) (regTwo!7298 Regex!3393)) (EmptyExpr!3393) (Star!3393 (reg!3722 Regex!3393)) (EmptyLang!3393) (Union!3393 (regOne!7299 Regex!3393) (regTwo!7299 Regex!3393)) )
))
(declare-datatypes ((TokenValueInjection!4078 0))(
  ( (TokenValueInjection!4079 (toValue!3248 Int) (toChars!3107 Int)) )
))
(declare-datatypes ((Rule!4046 0))(
  ( (Rule!4047 (regex!2123 Regex!3393) (tag!2385 String!15087) (isSeparator!2123 Bool) (transformation!2123 TokenValueInjection!4078)) )
))
(declare-datatypes ((Token!3908 0))(
  ( (Token!3909 (value!69102 TokenValue!2191) (rule!3546 Rule!4046) (size!9791 Int) (originalCharacters!2677 List!12410)) )
))
(declare-datatypes ((tuple2!12222 0))(
  ( (tuple2!12223 (_1!6958 Token!3908) (_2!6958 List!12410)) )
))
(declare-fun lt!415224 () tuple2!12222)

(declare-fun input!2346 () List!12410)

(declare-fun ++!3163 (List!12410 List!12410) List!12410)

(assert (=> b!1214297 (= res!546078 (= (++!3163 lt!415221 (_2!6958 lt!415224)) input!2346))))

(declare-fun b!1214298 () Bool)

(assert (=> b!1214298 (= e!779252 false)))

(declare-datatypes ((Unit!18648 0))(
  ( (Unit!18649) )
))
(declare-fun lt!415227 () Unit!18648)

(declare-fun e!779246 () Unit!18648)

(assert (=> b!1214298 (= lt!415227 e!779246)))

(declare-datatypes ((List!12412 0))(
  ( (Nil!12354) (Cons!12354 (h!17755 Token!3908) (t!112982 List!12412)) )
))
(declare-fun tokens!556 () List!12412)

(declare-fun c!203219 () Bool)

(declare-datatypes ((LexerInterface!1818 0))(
  ( (LexerInterfaceExt!1815 (__x!8098 Int)) (Lexer!1816) )
))
(declare-fun thiss!20528 () LexerInterface!1818)

(declare-datatypes ((List!12413 0))(
  ( (Nil!12355) (Cons!12355 (h!17756 Rule!4046) (t!112983 List!12413)) )
))
(declare-fun rules!2728 () List!12413)

(declare-fun rulesProduceIndividualToken!826 (LexerInterface!1818 List!12413 Token!3908) Bool)

(assert (=> b!1214298 (= c!203219 (not (rulesProduceIndividualToken!826 thiss!20528 rules!2728 (h!17755 tokens!556))))))

(declare-fun e!779248 () Bool)

(declare-fun tp!344417 () Bool)

(declare-fun b!1214299 () Bool)

(declare-fun e!779235 () Bool)

(declare-fun inv!21 (TokenValue!2191) Bool)

(assert (=> b!1214299 (= e!779235 (and (inv!21 (value!69102 (h!17755 tokens!556))) e!779248 tp!344417))))

(declare-fun e!779250 () Bool)

(assert (=> b!1214300 (= e!779250 (and tp!344421 tp!344418))))

(declare-fun b!1214301 () Bool)

(declare-fun Unit!18650 () Unit!18648)

(assert (=> b!1214301 (= e!779246 Unit!18650)))

(declare-fun lt!415220 () List!12412)

(assert (=> b!1214301 (= lt!415220 (Cons!12354 (h!17755 tokens!556) Nil!12354))))

(declare-fun lt!415219 () Unit!18648)

(declare-datatypes ((tuple2!12224 0))(
  ( (tuple2!12225 (_1!6959 List!12412) (_2!6959 List!12410)) )
))
(declare-fun lt!415218 () tuple2!12224)

(declare-fun lemmaLexThenLexPrefix!156 (LexerInterface!1818 List!12413 List!12410 List!12410 List!12412 List!12412 List!12410) Unit!18648)

(declare-fun lexList!448 (LexerInterface!1818 List!12413 List!12410) tuple2!12224)

(assert (=> b!1214301 (= lt!415219 (lemmaLexThenLexPrefix!156 thiss!20528 rules!2728 lt!415221 (_2!6958 lt!415224) lt!415220 (_1!6959 (lexList!448 thiss!20528 rules!2728 (_2!6958 lt!415224))) (_2!6959 lt!415218)))))

(declare-fun res!546077 () Bool)

(assert (=> b!1214301 (= res!546077 (= (lexList!448 thiss!20528 rules!2728 lt!415221) (tuple2!12225 lt!415220 Nil!12352)))))

(declare-fun e!779234 () Bool)

(assert (=> b!1214301 (=> (not res!546077) (not e!779234))))

(assert (=> b!1214301 e!779234))

(declare-fun tp!344420 () Bool)

(declare-fun b!1214302 () Bool)

(declare-fun e!779237 () Bool)

(declare-fun e!779241 () Bool)

(declare-fun inv!16538 (String!15087) Bool)

(declare-fun inv!16541 (TokenValueInjection!4078) Bool)

(assert (=> b!1214302 (= e!779241 (and tp!344420 (inv!16538 (tag!2385 (h!17756 rules!2728))) (inv!16541 (transformation!2123 (h!17756 rules!2728))) e!779237))))

(assert (=> b!1214303 (= e!779237 (and tp!344422 tp!344416))))

(declare-fun b!1214304 () Bool)

(declare-fun res!546068 () Bool)

(assert (=> b!1214304 (=> (not res!546068) (not e!779252))))

(declare-fun lt!415223 () List!12410)

(declare-fun matchR!1515 (Regex!3393 List!12410) Bool)

(assert (=> b!1214304 (= res!546068 (matchR!1515 (regex!2123 (rule!3546 (_1!6958 lt!415224))) lt!415223))))

(declare-fun b!1214305 () Bool)

(declare-fun e!779245 () Bool)

(declare-fun e!779249 () Bool)

(assert (=> b!1214305 (= e!779245 e!779249)))

(declare-fun res!546073 () Bool)

(assert (=> b!1214305 (=> (not res!546073) (not e!779249))))

(get-info :version)

(assert (=> b!1214305 (= res!546073 (and (= (_1!6959 lt!415218) tokens!556) (not ((_ is Nil!12354) tokens!556))))))

(assert (=> b!1214305 (= lt!415218 (lexList!448 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1214306 () Bool)

(declare-fun res!546070 () Bool)

(assert (=> b!1214306 (=> (not res!546070) (not e!779245))))

(declare-fun rulesInvariant!1692 (LexerInterface!1818 List!12413) Bool)

(assert (=> b!1214306 (= res!546070 (rulesInvariant!1692 thiss!20528 rules!2728))))

(declare-fun res!546075 () Bool)

(assert (=> start!108434 (=> (not res!546075) (not e!779245))))

(assert (=> start!108434 (= res!546075 ((_ is Lexer!1816) thiss!20528))))

(assert (=> start!108434 e!779245))

(assert (=> start!108434 true))

(declare-fun e!779251 () Bool)

(assert (=> start!108434 e!779251))

(declare-fun e!779244 () Bool)

(assert (=> start!108434 e!779244))

(declare-fun e!779240 () Bool)

(assert (=> start!108434 e!779240))

(declare-fun b!1214307 () Bool)

(declare-fun e!779238 () Bool)

(assert (=> b!1214307 (= e!779249 e!779238)))

(declare-fun res!546076 () Bool)

(assert (=> b!1214307 (=> (not res!546076) (not e!779238))))

(declare-datatypes ((Option!2485 0))(
  ( (None!2484) (Some!2484 (v!20613 tuple2!12222)) )
))
(declare-fun lt!415226 () Option!2485)

(declare-fun isDefined!2123 (Option!2485) Bool)

(assert (=> b!1214307 (= res!546076 (isDefined!2123 lt!415226))))

(declare-fun maxPrefix!940 (LexerInterface!1818 List!12413 List!12410) Option!2485)

(assert (=> b!1214307 (= lt!415226 (maxPrefix!940 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1214308 () Bool)

(declare-fun e!779243 () Bool)

(assert (=> b!1214308 (= e!779243 e!779252)))

(declare-fun res!546071 () Bool)

(assert (=> b!1214308 (=> (not res!546071) (not e!779252))))

(assert (=> b!1214308 (= res!546071 (= lt!415223 lt!415221))))

(declare-fun lt!415222 () BalanceConc!8028)

(declare-fun list!4561 (BalanceConc!8028) List!12410)

(assert (=> b!1214308 (= lt!415221 (list!4561 lt!415222))))

(declare-fun lt!415225 () BalanceConc!8028)

(assert (=> b!1214308 (= lt!415223 (list!4561 lt!415225))))

(declare-fun b!1214309 () Bool)

(declare-fun tp_is_empty!6307 () Bool)

(declare-fun tp!344414 () Bool)

(assert (=> b!1214309 (= e!779240 (and tp_is_empty!6307 tp!344414))))

(declare-fun b!1214310 () Bool)

(declare-fun tp!344419 () Bool)

(assert (=> b!1214310 (= e!779251 (and e!779241 tp!344419))))

(declare-fun b!1214311 () Bool)

(assert (=> b!1214311 (= e!779234 false)))

(declare-fun b!1214312 () Bool)

(declare-fun e!779239 () Bool)

(assert (=> b!1214312 (= e!779238 e!779239)))

(declare-fun res!546074 () Bool)

(assert (=> b!1214312 (=> (not res!546074) (not e!779239))))

(assert (=> b!1214312 (= res!546074 (= (_1!6958 lt!415224) (h!17755 tokens!556)))))

(declare-fun get!4064 (Option!2485) tuple2!12222)

(assert (=> b!1214312 (= lt!415224 (get!4064 lt!415226))))

(declare-fun b!1214313 () Bool)

(declare-fun Unit!18651 () Unit!18648)

(assert (=> b!1214313 (= e!779246 Unit!18651)))

(declare-fun b!1214314 () Bool)

(declare-fun tp!344415 () Bool)

(assert (=> b!1214314 (= e!779248 (and tp!344415 (inv!16538 (tag!2385 (rule!3546 (h!17755 tokens!556)))) (inv!16541 (transformation!2123 (rule!3546 (h!17755 tokens!556)))) e!779250))))

(declare-fun tp!344423 () Bool)

(declare-fun b!1214315 () Bool)

(declare-fun inv!16542 (Token!3908) Bool)

(assert (=> b!1214315 (= e!779244 (and (inv!16542 (h!17755 tokens!556)) e!779235 tp!344423))))

(declare-fun b!1214316 () Bool)

(declare-fun res!546072 () Bool)

(assert (=> b!1214316 (=> (not res!546072) (not e!779245))))

(declare-fun isEmpty!7351 (List!12413) Bool)

(assert (=> b!1214316 (= res!546072 (not (isEmpty!7351 rules!2728)))))

(declare-fun b!1214317 () Bool)

(assert (=> b!1214317 (= e!779239 e!779243)))

(declare-fun res!546069 () Bool)

(assert (=> b!1214317 (=> (not res!546069) (not e!779243))))

(assert (=> b!1214317 (= res!546069 (= lt!415225 lt!415222))))

(declare-fun charsOf!1129 (Token!3908) BalanceConc!8028)

(assert (=> b!1214317 (= lt!415222 (charsOf!1129 (h!17755 tokens!556)))))

(assert (=> b!1214317 (= lt!415225 (charsOf!1129 (_1!6958 lt!415224)))))

(assert (= (and start!108434 res!546075) b!1214316))

(assert (= (and b!1214316 res!546072) b!1214306))

(assert (= (and b!1214306 res!546070) b!1214305))

(assert (= (and b!1214305 res!546073) b!1214307))

(assert (= (and b!1214307 res!546076) b!1214312))

(assert (= (and b!1214312 res!546074) b!1214317))

(assert (= (and b!1214317 res!546069) b!1214308))

(assert (= (and b!1214308 res!546071) b!1214297))

(assert (= (and b!1214297 res!546078) b!1214304))

(assert (= (and b!1214304 res!546068) b!1214298))

(assert (= (and b!1214298 c!203219) b!1214301))

(assert (= (and b!1214298 (not c!203219)) b!1214313))

(assert (= (and b!1214301 res!546077) b!1214311))

(assert (= b!1214302 b!1214303))

(assert (= b!1214310 b!1214302))

(assert (= (and start!108434 ((_ is Cons!12355) rules!2728)) b!1214310))

(assert (= b!1214314 b!1214300))

(assert (= b!1214299 b!1214314))

(assert (= b!1214315 b!1214299))

(assert (= (and start!108434 ((_ is Cons!12354) tokens!556)) b!1214315))

(assert (= (and start!108434 ((_ is Cons!12352) input!2346)) b!1214309))

(declare-fun m!1389163 () Bool)

(assert (=> b!1214301 m!1389163))

(declare-fun m!1389165 () Bool)

(assert (=> b!1214301 m!1389165))

(declare-fun m!1389167 () Bool)

(assert (=> b!1214301 m!1389167))

(declare-fun m!1389169 () Bool)

(assert (=> b!1214314 m!1389169))

(declare-fun m!1389171 () Bool)

(assert (=> b!1214314 m!1389171))

(declare-fun m!1389173 () Bool)

(assert (=> b!1214315 m!1389173))

(declare-fun m!1389175 () Bool)

(assert (=> b!1214304 m!1389175))

(declare-fun m!1389177 () Bool)

(assert (=> b!1214312 m!1389177))

(declare-fun m!1389179 () Bool)

(assert (=> b!1214306 m!1389179))

(declare-fun m!1389181 () Bool)

(assert (=> b!1214305 m!1389181))

(declare-fun m!1389183 () Bool)

(assert (=> b!1214308 m!1389183))

(declare-fun m!1389185 () Bool)

(assert (=> b!1214308 m!1389185))

(declare-fun m!1389187 () Bool)

(assert (=> b!1214302 m!1389187))

(declare-fun m!1389189 () Bool)

(assert (=> b!1214302 m!1389189))

(declare-fun m!1389191 () Bool)

(assert (=> b!1214299 m!1389191))

(declare-fun m!1389193 () Bool)

(assert (=> b!1214317 m!1389193))

(declare-fun m!1389195 () Bool)

(assert (=> b!1214317 m!1389195))

(declare-fun m!1389197 () Bool)

(assert (=> b!1214316 m!1389197))

(declare-fun m!1389199 () Bool)

(assert (=> b!1214298 m!1389199))

(declare-fun m!1389201 () Bool)

(assert (=> b!1214297 m!1389201))

(declare-fun m!1389203 () Bool)

(assert (=> b!1214307 m!1389203))

(declare-fun m!1389205 () Bool)

(assert (=> b!1214307 m!1389205))

(check-sat (not b!1214299) (not b!1214308) b_and!82375 (not b!1214312) (not b_next!29771) (not b!1214297) (not b!1214301) (not b!1214304) (not b!1214302) (not b!1214306) (not b!1214305) (not b!1214307) (not b_next!29769) (not b!1214316) (not b!1214315) (not b!1214317) (not b!1214314) (not b!1214309) (not b_next!29775) tp_is_empty!6307 (not b_next!29773) (not b!1214298) b_and!82371 (not b!1214310) b_and!82373 b_and!82369)
(check-sat (not b_next!29769) b_and!82375 (not b_next!29771) b_and!82371 (not b_next!29775) (not b_next!29773) b_and!82373 b_and!82369)
