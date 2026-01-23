; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180358 () Bool)

(assert start!180358)

(declare-fun b!1821397 () Bool)

(declare-fun b_free!50583 () Bool)

(declare-fun b_next!51287 () Bool)

(assert (=> b!1821397 (= b_free!50583 (not b_next!51287))))

(declare-fun tp!514926 () Bool)

(declare-fun b_and!141269 () Bool)

(assert (=> b!1821397 (= tp!514926 b_and!141269)))

(declare-fun b_free!50585 () Bool)

(declare-fun b_next!51289 () Bool)

(assert (=> b!1821397 (= b_free!50585 (not b_next!51289))))

(declare-fun tp!514920 () Bool)

(declare-fun b_and!141271 () Bool)

(assert (=> b!1821397 (= tp!514920 b_and!141271)))

(declare-fun b!1821378 () Bool)

(declare-fun b_free!50587 () Bool)

(declare-fun b_next!51291 () Bool)

(assert (=> b!1821378 (= b_free!50587 (not b_next!51291))))

(declare-fun tp!514919 () Bool)

(declare-fun b_and!141273 () Bool)

(assert (=> b!1821378 (= tp!514919 b_and!141273)))

(declare-fun b_free!50589 () Bool)

(declare-fun b_next!51293 () Bool)

(assert (=> b!1821378 (= b_free!50589 (not b_next!51293))))

(declare-fun tp!514923 () Bool)

(declare-fun b_and!141275 () Bool)

(assert (=> b!1821378 (= tp!514923 b_and!141275)))

(declare-fun b!1821389 () Bool)

(declare-fun b_free!50591 () Bool)

(declare-fun b_next!51295 () Bool)

(assert (=> b!1821389 (= b_free!50591 (not b_next!51295))))

(declare-fun tp!514933 () Bool)

(declare-fun b_and!141277 () Bool)

(assert (=> b!1821389 (= tp!514933 b_and!141277)))

(declare-fun b_free!50593 () Bool)

(declare-fun b_next!51297 () Bool)

(assert (=> b!1821389 (= b_free!50593 (not b_next!51297))))

(declare-fun tp!514932 () Bool)

(declare-fun b_and!141279 () Bool)

(assert (=> b!1821389 (= tp!514932 b_and!141279)))

(declare-fun b!1821390 () Bool)

(assert (=> b!1821390 true))

(declare-fun b!1821376 () Bool)

(declare-fun e!1164024 () Bool)

(declare-fun e!1164013 () Bool)

(assert (=> b!1821376 (= e!1164024 e!1164013)))

(declare-fun res!819095 () Bool)

(assert (=> b!1821376 (=> (not res!819095) (not e!1164013))))

(declare-datatypes ((C!10028 0))(
  ( (C!10029 (val!5610 Int)) )
))
(declare-datatypes ((List!20036 0))(
  ( (Nil!19966) (Cons!19966 (h!25367 C!10028) (t!169913 List!20036)) )
))
(declare-fun suffix!1667 () List!20036)

(declare-fun lt!707710 () List!20036)

(declare-fun input!3612 () List!20036)

(declare-fun ++!5423 (List!20036 List!20036) List!20036)

(assert (=> b!1821376 (= res!819095 (= input!3612 (++!5423 lt!707710 suffix!1667)))))

(declare-datatypes ((List!20037 0))(
  ( (Nil!19967) (Cons!19967 (h!25368 (_ BitVec 16)) (t!169914 List!20037)) )
))
(declare-datatypes ((TokenValue!3689 0))(
  ( (FloatLiteralValue!7378 (text!26268 List!20037)) (TokenValueExt!3688 (__x!12680 Int)) (Broken!18445 (value!112212 List!20037)) (Object!3758) (End!3689) (Def!3689) (Underscore!3689) (Match!3689) (Else!3689) (Error!3689) (Case!3689) (If!3689) (Extends!3689) (Abstract!3689) (Class!3689) (Val!3689) (DelimiterValue!7378 (del!3749 List!20037)) (KeywordValue!3695 (value!112213 List!20037)) (CommentValue!7378 (value!112214 List!20037)) (WhitespaceValue!7378 (value!112215 List!20037)) (IndentationValue!3689 (value!112216 List!20037)) (String!22776) (Int32!3689) (Broken!18446 (value!112217 List!20037)) (Boolean!3690) (Unit!34640) (OperatorValue!3692 (op!3749 List!20037)) (IdentifierValue!7378 (value!112218 List!20037)) (IdentifierValue!7379 (value!112219 List!20037)) (WhitespaceValue!7379 (value!112220 List!20037)) (True!7378) (False!7378) (Broken!18447 (value!112221 List!20037)) (Broken!18448 (value!112222 List!20037)) (True!7379) (RightBrace!3689) (RightBracket!3689) (Colon!3689) (Null!3689) (Comma!3689) (LeftBracket!3689) (False!7379) (LeftBrace!3689) (ImaginaryLiteralValue!3689 (text!26269 List!20037)) (StringLiteralValue!11067 (value!112223 List!20037)) (EOFValue!3689 (value!112224 List!20037)) (IdentValue!3689 (value!112225 List!20037)) (DelimiterValue!7379 (value!112226 List!20037)) (DedentValue!3689 (value!112227 List!20037)) (NewLineValue!3689 (value!112228 List!20037)) (IntegerValue!11067 (value!112229 (_ BitVec 32)) (text!26270 List!20037)) (IntegerValue!11068 (value!112230 Int) (text!26271 List!20037)) (Times!3689) (Or!3689) (Equal!3689) (Minus!3689) (Broken!18449 (value!112231 List!20037)) (And!3689) (Div!3689) (LessEqual!3689) (Mod!3689) (Concat!8616) (Not!3689) (Plus!3689) (SpaceValue!3689 (value!112232 List!20037)) (IntegerValue!11069 (value!112233 Int) (text!26272 List!20037)) (StringLiteralValue!11068 (text!26273 List!20037)) (FloatLiteralValue!7379 (text!26274 List!20037)) (BytesLiteralValue!3689 (value!112234 List!20037)) (CommentValue!7379 (value!112235 List!20037)) (StringLiteralValue!11069 (value!112236 List!20037)) (ErrorTokenValue!3689 (msg!3750 List!20037)) )
))
(declare-datatypes ((IArray!13267 0))(
  ( (IArray!13268 (innerList!6691 List!20036)) )
))
(declare-datatypes ((Conc!6631 0))(
  ( (Node!6631 (left!15988 Conc!6631) (right!16318 Conc!6631) (csize!13492 Int) (cheight!6842 Int)) (Leaf!9651 (xs!9507 IArray!13267) (csize!13493 Int)) (Empty!6631) )
))
(declare-datatypes ((BalanceConc!13206 0))(
  ( (BalanceConc!13207 (c!297192 Conc!6631)) )
))
(declare-datatypes ((TokenValueInjection!7038 0))(
  ( (TokenValueInjection!7039 (toValue!5134 Int) (toChars!4993 Int)) )
))
(declare-datatypes ((Regex!4927 0))(
  ( (ElementMatch!4927 (c!297193 C!10028)) (Concat!8617 (regOne!10366 Regex!4927) (regTwo!10366 Regex!4927)) (EmptyExpr!4927) (Star!4927 (reg!5256 Regex!4927)) (EmptyLang!4927) (Union!4927 (regOne!10367 Regex!4927) (regTwo!10367 Regex!4927)) )
))
(declare-datatypes ((String!22777 0))(
  ( (String!22778 (value!112237 String)) )
))
(declare-datatypes ((Rule!6998 0))(
  ( (Rule!6999 (regex!3599 Regex!4927) (tag!4013 String!22777) (isSeparator!3599 Bool) (transformation!3599 TokenValueInjection!7038)) )
))
(declare-datatypes ((Token!6752 0))(
  ( (Token!6753 (value!112238 TokenValue!3689) (rule!5729 Rule!6998) (size!15841 Int) (originalCharacters!4407 List!20036)) )
))
(declare-fun token!556 () Token!6752)

(declare-fun list!8115 (BalanceConc!13206) List!20036)

(declare-fun charsOf!2242 (Token!6752) BalanceConc!13206)

(assert (=> b!1821376 (= lt!707710 (list!8115 (charsOf!2242 token!556)))))

(declare-fun b!1821377 () Bool)

(declare-fun e!1164011 () Bool)

(declare-fun tp!514928 () Bool)

(assert (=> b!1821377 (= e!1164011 tp!514928)))

(declare-fun e!1164007 () Bool)

(assert (=> b!1821378 (= e!1164007 (and tp!514919 tp!514923))))

(declare-fun b!1821379 () Bool)

(declare-fun e!1164010 () Bool)

(assert (=> b!1821379 (= e!1164010 e!1164024)))

(declare-fun res!819093 () Bool)

(assert (=> b!1821379 (=> (not res!819093) (not e!1164024))))

(declare-datatypes ((LexerInterface!3228 0))(
  ( (LexerInterfaceExt!3225 (__x!12681 Int)) (Lexer!3226) )
))
(declare-fun thiss!28068 () LexerInterface!3228)

(declare-datatypes ((List!20038 0))(
  ( (Nil!19968) (Cons!19968 (h!25369 Rule!6998) (t!169915 List!20038)) )
))
(declare-fun rules!4538 () List!20038)

(declare-datatypes ((tuple2!19482 0))(
  ( (tuple2!19483 (_1!11143 Token!6752) (_2!11143 List!20036)) )
))
(declare-datatypes ((Option!4179 0))(
  ( (None!4178) (Some!4178 (v!25719 tuple2!19482)) )
))
(declare-fun lt!707707 () Option!4179)

(declare-fun maxPrefix!1776 (LexerInterface!3228 List!20038 List!20036) Option!4179)

(assert (=> b!1821379 (= res!819093 (= (maxPrefix!1776 thiss!28068 rules!4538 input!3612) lt!707707))))

(assert (=> b!1821379 (= lt!707707 (Some!4178 (tuple2!19483 token!556 suffix!1667)))))

(declare-fun b!1821380 () Bool)

(declare-fun tp!514921 () Bool)

(declare-fun tp!514929 () Bool)

(assert (=> b!1821380 (= e!1164011 (and tp!514921 tp!514929))))

(declare-fun b!1821381 () Bool)

(declare-fun e!1164015 () Bool)

(declare-fun e!1164023 () Bool)

(assert (=> b!1821381 (= e!1164015 e!1164023)))

(declare-fun res!819096 () Bool)

(assert (=> b!1821381 (=> res!819096 e!1164023)))

(declare-fun lt!707711 () Regex!4927)

(declare-datatypes ((List!20039 0))(
  ( (Nil!19969) (Cons!19969 (h!25370 Regex!4927) (t!169916 List!20039)) )
))
(declare-fun lt!707704 () List!20039)

(declare-fun generalisedUnion!454 (List!20039) Regex!4927)

(assert (=> b!1821381 (= res!819096 (not (= lt!707711 (generalisedUnion!454 lt!707704))))))

(declare-fun rulesRegex!931 (LexerInterface!3228 List!20038) Regex!4927)

(assert (=> b!1821381 (= lt!707711 (rulesRegex!931 thiss!28068 rules!4538))))

(declare-fun lambda!71325 () Int)

(declare-fun map!4129 (List!20038 Int) List!20039)

(assert (=> b!1821381 (= lt!707704 (map!4129 rules!4538 lambda!71325))))

(declare-datatypes ((Unit!34641 0))(
  ( (Unit!34642) )
))
(declare-fun lt!707708 () Unit!34641)

(declare-fun rule!559 () Rule!6998)

(declare-fun lemma!467 (List!20036 Rule!6998 List!20038 List!20036 LexerInterface!3228 Token!6752 List!20038) Unit!34641)

(assert (=> b!1821381 (= lt!707708 (lemma!467 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1821382 () Bool)

(declare-fun res!819099 () Bool)

(assert (=> b!1821382 (=> (not res!819099) (not e!1164010))))

(declare-fun isEmpty!12613 (List!20038) Bool)

(assert (=> b!1821382 (= res!819099 (not (isEmpty!12613 rules!4538)))))

(declare-fun b!1821383 () Bool)

(declare-fun e!1164008 () Bool)

(assert (=> b!1821383 (= e!1164023 e!1164008)))

(declare-fun res!819094 () Bool)

(assert (=> b!1821383 (=> res!819094 e!1164008)))

(declare-fun lt!707702 () List!20039)

(declare-fun contains!3646 (List!20039 Regex!4927) Bool)

(assert (=> b!1821383 (= res!819094 (not (contains!3646 lt!707702 (regex!3599 rule!559))))))

(assert (=> b!1821383 (= lt!707702 (map!4129 rules!4538 lambda!71325))))

(declare-fun lt!707703 () Unit!34641)

(declare-fun lemma!468 (List!20036 Rule!6998 List!20038 List!20036 LexerInterface!3228 Token!6752 List!20038) Unit!34641)

(assert (=> b!1821383 (= lt!707703 (lemma!468 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1821384 () Bool)

(declare-fun e!1164005 () Bool)

(declare-fun e!1164014 () Bool)

(declare-fun tp!514922 () Bool)

(assert (=> b!1821384 (= e!1164005 (and e!1164014 tp!514922))))

(declare-fun b!1821385 () Bool)

(declare-fun res!819100 () Bool)

(assert (=> b!1821385 (=> (not res!819100) (not e!1164010))))

(declare-fun contains!3647 (List!20038 Rule!6998) Bool)

(assert (=> b!1821385 (= res!819100 (contains!3647 rules!4538 rule!559))))

(declare-fun b!1821386 () Bool)

(declare-fun e!1164020 () Bool)

(declare-fun tp_is_empty!8089 () Bool)

(declare-fun tp!514930 () Bool)

(assert (=> b!1821386 (= e!1164020 (and tp_is_empty!8089 tp!514930))))

(declare-fun b!1821387 () Bool)

(declare-fun res!819090 () Bool)

(assert (=> b!1821387 (=> (not res!819090) (not e!1164024))))

(assert (=> b!1821387 (= res!819090 (= (rule!5729 token!556) rule!559))))

(declare-fun b!1821388 () Bool)

(declare-fun e!1164004 () Bool)

(assert (=> b!1821388 (= e!1164004 e!1164015)))

(declare-fun res!819097 () Bool)

(assert (=> b!1821388 (=> res!819097 e!1164015)))

(declare-fun lt!707700 () Option!4179)

(assert (=> b!1821388 (= res!819097 (not (= lt!707700 lt!707707)))))

(declare-fun lt!707709 () Int)

(declare-fun lt!707712 () TokenValue!3689)

(assert (=> b!1821388 (= lt!707700 (Some!4178 (tuple2!19483 (Token!6753 lt!707712 rule!559 lt!707709 lt!707710) suffix!1667)))))

(declare-fun maxPrefixOneRule!1141 (LexerInterface!3228 Rule!6998 List!20036) Option!4179)

(assert (=> b!1821388 (= lt!707700 (maxPrefixOneRule!1141 thiss!28068 rule!559 input!3612))))

(declare-fun size!15842 (List!20036) Int)

(assert (=> b!1821388 (= lt!707709 (size!15842 lt!707710))))

(declare-fun apply!5391 (TokenValueInjection!7038 BalanceConc!13206) TokenValue!3689)

(declare-fun seqFromList!2560 (List!20036) BalanceConc!13206)

(assert (=> b!1821388 (= lt!707712 (apply!5391 (transformation!3599 rule!559) (seqFromList!2560 lt!707710)))))

(declare-fun lt!707706 () Unit!34641)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!517 (LexerInterface!3228 List!20038 List!20036 List!20036 List!20036 Rule!6998) Unit!34641)

(assert (=> b!1821388 (= lt!707706 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!517 thiss!28068 rules!4538 lt!707710 input!3612 suffix!1667 rule!559))))

(declare-fun e!1164017 () Bool)

(assert (=> b!1821389 (= e!1164017 (and tp!514933 tp!514932))))

(assert (=> b!1821390 (= e!1164008 true)))

(declare-fun lambda!71326 () Int)

(declare-fun matchR!2392 (Regex!4927 List!20036) Bool)

(declare-fun exists!629 (List!20039 Int) Bool)

(assert (=> b!1821390 (= (matchR!2392 lt!707711 lt!707710) (exists!629 lt!707702 lambda!71326))))

(declare-fun lt!707705 () Unit!34641)

(declare-fun matchRGenUnionSpec!214 (Regex!4927 List!20039 List!20036) Unit!34641)

(assert (=> b!1821390 (= lt!707705 (matchRGenUnionSpec!214 lt!707711 lt!707702 lt!707710))))

(declare-fun b!1821391 () Bool)

(declare-fun tp!514931 () Bool)

(declare-fun inv!25997 (String!22777) Bool)

(declare-fun inv!26000 (TokenValueInjection!7038) Bool)

(assert (=> b!1821391 (= e!1164014 (and tp!514931 (inv!25997 (tag!4013 (h!25369 rules!4538))) (inv!26000 (transformation!3599 (h!25369 rules!4538))) e!1164007))))

(declare-fun b!1821392 () Bool)

(declare-fun e!1164021 () Bool)

(declare-fun tp!514936 () Bool)

(assert (=> b!1821392 (= e!1164021 (and tp_is_empty!8089 tp!514936))))

(declare-fun tp!514924 () Bool)

(declare-fun e!1164016 () Bool)

(declare-fun b!1821393 () Bool)

(assert (=> b!1821393 (= e!1164016 (and tp!514924 (inv!25997 (tag!4013 rule!559)) (inv!26000 (transformation!3599 rule!559)) e!1164017))))

(declare-fun b!1821394 () Bool)

(declare-fun tp!514927 () Bool)

(declare-fun e!1164018 () Bool)

(declare-fun e!1164019 () Bool)

(declare-fun inv!21 (TokenValue!3689) Bool)

(assert (=> b!1821394 (= e!1164018 (and (inv!21 (value!112238 token!556)) e!1164019 tp!514927))))

(declare-fun b!1821395 () Bool)

(declare-fun tp!514934 () Bool)

(declare-fun tp!514935 () Bool)

(assert (=> b!1821395 (= e!1164011 (and tp!514934 tp!514935))))

(declare-fun b!1821396 () Bool)

(assert (=> b!1821396 (= e!1164013 (not e!1164004))))

(declare-fun res!819091 () Bool)

(assert (=> b!1821396 (=> res!819091 e!1164004)))

(assert (=> b!1821396 (= res!819091 (not (matchR!2392 (regex!3599 rule!559) lt!707710)))))

(declare-fun ruleValid!1091 (LexerInterface!3228 Rule!6998) Bool)

(assert (=> b!1821396 (ruleValid!1091 thiss!28068 rule!559)))

(declare-fun lt!707701 () Unit!34641)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!612 (LexerInterface!3228 Rule!6998 List!20038) Unit!34641)

(assert (=> b!1821396 (= lt!707701 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!612 thiss!28068 rule!559 rules!4538))))

(declare-fun res!819098 () Bool)

(assert (=> start!180358 (=> (not res!819098) (not e!1164010))))

(get-info :version)

(assert (=> start!180358 (= res!819098 ((_ is Lexer!3226) thiss!28068))))

(assert (=> start!180358 e!1164010))

(assert (=> start!180358 e!1164021))

(assert (=> start!180358 true))

(declare-fun inv!26001 (Token!6752) Bool)

(assert (=> start!180358 (and (inv!26001 token!556) e!1164018)))

(assert (=> start!180358 e!1164016))

(assert (=> start!180358 e!1164020))

(assert (=> start!180358 e!1164005))

(assert (=> start!180358 e!1164011))

(declare-fun e!1164009 () Bool)

(assert (=> b!1821397 (= e!1164009 (and tp!514926 tp!514920))))

(declare-fun b!1821398 () Bool)

(declare-fun res!819092 () Bool)

(assert (=> b!1821398 (=> (not res!819092) (not e!1164010))))

(declare-fun rulesInvariant!2897 (LexerInterface!3228 List!20038) Bool)

(assert (=> b!1821398 (= res!819092 (rulesInvariant!2897 thiss!28068 rules!4538))))

(declare-fun b!1821399 () Bool)

(assert (=> b!1821399 (= e!1164011 tp_is_empty!8089)))

(declare-fun b!1821400 () Bool)

(declare-fun tp!514925 () Bool)

(assert (=> b!1821400 (= e!1164019 (and tp!514925 (inv!25997 (tag!4013 (rule!5729 token!556))) (inv!26000 (transformation!3599 (rule!5729 token!556))) e!1164009))))

(assert (= (and start!180358 res!819098) b!1821382))

(assert (= (and b!1821382 res!819099) b!1821398))

(assert (= (and b!1821398 res!819092) b!1821385))

(assert (= (and b!1821385 res!819100) b!1821379))

(assert (= (and b!1821379 res!819093) b!1821387))

(assert (= (and b!1821387 res!819090) b!1821376))

(assert (= (and b!1821376 res!819095) b!1821396))

(assert (= (and b!1821396 (not res!819091)) b!1821388))

(assert (= (and b!1821388 (not res!819097)) b!1821381))

(assert (= (and b!1821381 (not res!819096)) b!1821383))

(assert (= (and b!1821383 (not res!819094)) b!1821390))

(assert (= (and start!180358 ((_ is Cons!19966) suffix!1667)) b!1821392))

(assert (= b!1821400 b!1821397))

(assert (= b!1821394 b!1821400))

(assert (= start!180358 b!1821394))

(assert (= b!1821393 b!1821389))

(assert (= start!180358 b!1821393))

(assert (= (and start!180358 ((_ is Cons!19966) input!3612)) b!1821386))

(assert (= b!1821391 b!1821378))

(assert (= b!1821384 b!1821391))

(assert (= (and start!180358 ((_ is Cons!19968) rules!4538)) b!1821384))

(declare-fun rr!47 () Regex!4927)

(assert (= (and start!180358 ((_ is ElementMatch!4927) rr!47)) b!1821399))

(assert (= (and start!180358 ((_ is Concat!8617) rr!47)) b!1821395))

(assert (= (and start!180358 ((_ is Star!4927) rr!47)) b!1821377))

(assert (= (and start!180358 ((_ is Union!4927) rr!47)) b!1821380))

(declare-fun m!2250213 () Bool)

(assert (=> b!1821376 m!2250213))

(declare-fun m!2250215 () Bool)

(assert (=> b!1821376 m!2250215))

(assert (=> b!1821376 m!2250215))

(declare-fun m!2250217 () Bool)

(assert (=> b!1821376 m!2250217))

(declare-fun m!2250219 () Bool)

(assert (=> b!1821379 m!2250219))

(declare-fun m!2250221 () Bool)

(assert (=> b!1821400 m!2250221))

(declare-fun m!2250223 () Bool)

(assert (=> b!1821400 m!2250223))

(declare-fun m!2250225 () Bool)

(assert (=> b!1821398 m!2250225))

(declare-fun m!2250227 () Bool)

(assert (=> b!1821381 m!2250227))

(declare-fun m!2250229 () Bool)

(assert (=> b!1821381 m!2250229))

(declare-fun m!2250231 () Bool)

(assert (=> b!1821381 m!2250231))

(declare-fun m!2250233 () Bool)

(assert (=> b!1821381 m!2250233))

(declare-fun m!2250235 () Bool)

(assert (=> b!1821382 m!2250235))

(declare-fun m!2250237 () Bool)

(assert (=> b!1821393 m!2250237))

(declare-fun m!2250239 () Bool)

(assert (=> b!1821393 m!2250239))

(declare-fun m!2250241 () Bool)

(assert (=> b!1821391 m!2250241))

(declare-fun m!2250243 () Bool)

(assert (=> b!1821391 m!2250243))

(declare-fun m!2250245 () Bool)

(assert (=> b!1821385 m!2250245))

(declare-fun m!2250247 () Bool)

(assert (=> b!1821390 m!2250247))

(declare-fun m!2250249 () Bool)

(assert (=> b!1821390 m!2250249))

(declare-fun m!2250251 () Bool)

(assert (=> b!1821390 m!2250251))

(declare-fun m!2250253 () Bool)

(assert (=> start!180358 m!2250253))

(declare-fun m!2250255 () Bool)

(assert (=> b!1821394 m!2250255))

(declare-fun m!2250257 () Bool)

(assert (=> b!1821396 m!2250257))

(declare-fun m!2250259 () Bool)

(assert (=> b!1821396 m!2250259))

(declare-fun m!2250261 () Bool)

(assert (=> b!1821396 m!2250261))

(declare-fun m!2250263 () Bool)

(assert (=> b!1821383 m!2250263))

(assert (=> b!1821383 m!2250231))

(declare-fun m!2250265 () Bool)

(assert (=> b!1821383 m!2250265))

(declare-fun m!2250267 () Bool)

(assert (=> b!1821388 m!2250267))

(declare-fun m!2250269 () Bool)

(assert (=> b!1821388 m!2250269))

(declare-fun m!2250271 () Bool)

(assert (=> b!1821388 m!2250271))

(declare-fun m!2250273 () Bool)

(assert (=> b!1821388 m!2250273))

(declare-fun m!2250275 () Bool)

(assert (=> b!1821388 m!2250275))

(assert (=> b!1821388 m!2250267))

(check-sat (not b_next!51291) (not b!1821381) (not start!180358) (not b_next!51289) (not b!1821384) (not b!1821386) (not b!1821377) b_and!141271 (not b!1821400) (not b_next!51297) b_and!141277 (not b!1821390) (not b!1821379) (not b_next!51287) (not b!1821385) (not b!1821395) b_and!141269 b_and!141279 (not b!1821383) (not b!1821376) (not b!1821393) (not b!1821388) (not b!1821392) b_and!141273 (not b!1821396) (not b!1821380) (not b!1821391) (not b!1821382) tp_is_empty!8089 (not b!1821398) b_and!141275 (not b_next!51295) (not b_next!51293) (not b!1821394))
(check-sat (not b_next!51291) (not b_next!51287) (not b_next!51289) b_and!141273 b_and!141271 (not b_next!51293) b_and!141277 (not b_next!51297) b_and!141269 b_and!141279 b_and!141275 (not b_next!51295))
