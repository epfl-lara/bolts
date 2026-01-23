; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37142 () Bool)

(assert start!37142)

(declare-fun b!373434 () Bool)

(declare-fun b_free!11633 () Bool)

(declare-fun b_next!11633 () Bool)

(assert (=> b!373434 (= b_free!11633 (not b_next!11633))))

(declare-fun tp!117040 () Bool)

(declare-fun b_and!37505 () Bool)

(assert (=> b!373434 (= tp!117040 b_and!37505)))

(declare-fun b_free!11635 () Bool)

(declare-fun b_next!11635 () Bool)

(assert (=> b!373434 (= b_free!11635 (not b_next!11635))))

(declare-fun tp!117037 () Bool)

(declare-fun b_and!37507 () Bool)

(assert (=> b!373434 (= tp!117037 b_and!37507)))

(declare-fun b!373429 () Bool)

(declare-fun b_free!11637 () Bool)

(declare-fun b_next!11637 () Bool)

(assert (=> b!373429 (= b_free!11637 (not b_next!11637))))

(declare-fun tp!117038 () Bool)

(declare-fun b_and!37509 () Bool)

(assert (=> b!373429 (= tp!117038 b_and!37509)))

(declare-fun b_free!11639 () Bool)

(declare-fun b_next!11639 () Bool)

(assert (=> b!373429 (= b_free!11639 (not b_next!11639))))

(declare-fun tp!117031 () Bool)

(declare-fun b_and!37511 () Bool)

(assert (=> b!373429 (= tp!117031 b_and!37511)))

(declare-fun b!373462 () Bool)

(declare-fun b_free!11641 () Bool)

(declare-fun b_next!11641 () Bool)

(assert (=> b!373462 (= b_free!11641 (not b_next!11641))))

(declare-fun tp!117036 () Bool)

(declare-fun b_and!37513 () Bool)

(assert (=> b!373462 (= tp!117036 b_and!37513)))

(declare-fun b_free!11643 () Bool)

(declare-fun b_next!11643 () Bool)

(assert (=> b!373462 (= b_free!11643 (not b_next!11643))))

(declare-fun tp!117035 () Bool)

(declare-fun b_and!37515 () Bool)

(assert (=> b!373462 (= tp!117035 b_and!37515)))

(declare-fun bs!45256 () Bool)

(declare-fun b!373436 () Bool)

(declare-fun b!373423 () Bool)

(assert (= bs!45256 (and b!373436 b!373423)))

(declare-fun lambda!11628 () Int)

(declare-fun lambda!11627 () Int)

(assert (=> bs!45256 (not (= lambda!11628 lambda!11627))))

(declare-fun b!373476 () Bool)

(declare-fun e!229658 () Bool)

(assert (=> b!373476 (= e!229658 true)))

(declare-fun b!373475 () Bool)

(declare-fun e!229657 () Bool)

(assert (=> b!373475 (= e!229657 e!229658)))

(declare-fun b!373474 () Bool)

(declare-fun e!229656 () Bool)

(assert (=> b!373474 (= e!229656 e!229657)))

(assert (=> b!373436 e!229656))

(assert (= b!373475 b!373476))

(assert (= b!373474 b!373475))

(declare-datatypes ((List!4192 0))(
  ( (Nil!4182) (Cons!4182 (h!9579 (_ BitVec 16)) (t!57350 List!4192)) )
))
(declare-datatypes ((TokenValue!829 0))(
  ( (FloatLiteralValue!1658 (text!6248 List!4192)) (TokenValueExt!828 (__x!3145 Int)) (Broken!4145 (value!27289 List!4192)) (Object!838) (End!829) (Def!829) (Underscore!829) (Match!829) (Else!829) (Error!829) (Case!829) (If!829) (Extends!829) (Abstract!829) (Class!829) (Val!829) (DelimiterValue!1658 (del!889 List!4192)) (KeywordValue!835 (value!27290 List!4192)) (CommentValue!1658 (value!27291 List!4192)) (WhitespaceValue!1658 (value!27292 List!4192)) (IndentationValue!829 (value!27293 List!4192)) (String!5224) (Int32!829) (Broken!4146 (value!27294 List!4192)) (Boolean!830) (Unit!6645) (OperatorValue!832 (op!889 List!4192)) (IdentifierValue!1658 (value!27295 List!4192)) (IdentifierValue!1659 (value!27296 List!4192)) (WhitespaceValue!1659 (value!27297 List!4192)) (True!1658) (False!1658) (Broken!4147 (value!27298 List!4192)) (Broken!4148 (value!27299 List!4192)) (True!1659) (RightBrace!829) (RightBracket!829) (Colon!829) (Null!829) (Comma!829) (LeftBracket!829) (False!1659) (LeftBrace!829) (ImaginaryLiteralValue!829 (text!6249 List!4192)) (StringLiteralValue!2487 (value!27300 List!4192)) (EOFValue!829 (value!27301 List!4192)) (IdentValue!829 (value!27302 List!4192)) (DelimiterValue!1659 (value!27303 List!4192)) (DedentValue!829 (value!27304 List!4192)) (NewLineValue!829 (value!27305 List!4192)) (IntegerValue!2487 (value!27306 (_ BitVec 32)) (text!6250 List!4192)) (IntegerValue!2488 (value!27307 Int) (text!6251 List!4192)) (Times!829) (Or!829) (Equal!829) (Minus!829) (Broken!4149 (value!27308 List!4192)) (And!829) (Div!829) (LessEqual!829) (Mod!829) (Concat!1860) (Not!829) (Plus!829) (SpaceValue!829 (value!27309 List!4192)) (IntegerValue!2489 (value!27310 Int) (text!6252 List!4192)) (StringLiteralValue!2488 (text!6253 List!4192)) (FloatLiteralValue!1659 (text!6254 List!4192)) (BytesLiteralValue!829 (value!27311 List!4192)) (CommentValue!1659 (value!27312 List!4192)) (StringLiteralValue!2489 (value!27313 List!4192)) (ErrorTokenValue!829 (msg!890 List!4192)) )
))
(declare-datatypes ((C!2984 0))(
  ( (C!2985 (val!1378 Int)) )
))
(declare-datatypes ((List!4193 0))(
  ( (Nil!4183) (Cons!4183 (h!9580 C!2984) (t!57351 List!4193)) )
))
(declare-datatypes ((IArray!2873 0))(
  ( (IArray!2874 (innerList!1494 List!4193)) )
))
(declare-datatypes ((Conc!1436 0))(
  ( (Node!1436 (left!3494 Conc!1436) (right!3824 Conc!1436) (csize!3102 Int) (cheight!1647 Int)) (Leaf!2179 (xs!4055 IArray!2873) (csize!3103 Int)) (Empty!1436) )
))
(declare-datatypes ((BalanceConc!2880 0))(
  ( (BalanceConc!2881 (c!73450 Conc!1436)) )
))
(declare-datatypes ((TokenValueInjection!1430 0))(
  ( (TokenValueInjection!1431 (toValue!1590 Int) (toChars!1449 Int)) )
))
(declare-datatypes ((String!5225 0))(
  ( (String!5226 (value!27314 String)) )
))
(declare-datatypes ((Regex!1031 0))(
  ( (ElementMatch!1031 (c!73451 C!2984)) (Concat!1861 (regOne!2574 Regex!1031) (regTwo!2574 Regex!1031)) (EmptyExpr!1031) (Star!1031 (reg!1360 Regex!1031)) (EmptyLang!1031) (Union!1031 (regOne!2575 Regex!1031) (regTwo!2575 Regex!1031)) )
))
(declare-datatypes ((Rule!1414 0))(
  ( (Rule!1415 (regex!807 Regex!1031) (tag!1039 String!5225) (isSeparator!807 Bool) (transformation!807 TokenValueInjection!1430)) )
))
(declare-datatypes ((List!4194 0))(
  ( (Nil!4184) (Cons!4184 (h!9581 Rule!1414) (t!57352 List!4194)) )
))
(declare-fun rules!1920 () List!4194)

(get-info :version)

(assert (= (and b!373436 ((_ is Cons!4184) rules!1920)) b!373474))

(declare-fun order!3519 () Int)

(declare-fun order!3517 () Int)

(declare-fun dynLambda!2393 (Int Int) Int)

(declare-fun dynLambda!2394 (Int Int) Int)

(assert (=> b!373476 (< (dynLambda!2393 order!3517 (toValue!1590 (transformation!807 (h!9581 rules!1920)))) (dynLambda!2394 order!3519 lambda!11628))))

(declare-fun order!3521 () Int)

(declare-fun dynLambda!2395 (Int Int) Int)

(assert (=> b!373476 (< (dynLambda!2395 order!3521 (toChars!1449 (transformation!807 (h!9581 rules!1920)))) (dynLambda!2394 order!3519 lambda!11628))))

(assert (=> b!373436 true))

(declare-fun tp!117041 () Bool)

(declare-fun e!229644 () Bool)

(declare-fun e!229637 () Bool)

(declare-fun b!373418 () Bool)

(declare-datatypes ((Token!1358 0))(
  ( (Token!1359 (value!27315 TokenValue!829) (rule!1452 Rule!1414) (size!3384 Int) (originalCharacters!850 List!4193)) )
))
(declare-datatypes ((List!4195 0))(
  ( (Nil!4185) (Cons!4185 (h!9582 Token!1358) (t!57353 List!4195)) )
))
(declare-fun tokens!465 () List!4195)

(declare-fun inv!21 (TokenValue!829) Bool)

(assert (=> b!373418 (= e!229637 (and (inv!21 (value!27315 (h!9582 tokens!465))) e!229644 tp!117041))))

(declare-fun b!373419 () Bool)

(declare-fun res!167215 () Bool)

(declare-fun e!229621 () Bool)

(assert (=> b!373419 (=> (not res!167215) (not e!229621))))

(declare-datatypes ((LexerInterface!693 0))(
  ( (LexerInterfaceExt!690 (__x!3146 Int)) (Lexer!691) )
))
(declare-fun thiss!17480 () LexerInterface!693)

(declare-fun rulesInvariant!659 (LexerInterface!693 List!4194) Bool)

(assert (=> b!373419 (= res!167215 (rulesInvariant!659 thiss!17480 rules!1920))))

(declare-fun b!373420 () Bool)

(declare-datatypes ((Unit!6646 0))(
  ( (Unit!6647) )
))
(declare-fun e!229623 () Unit!6646)

(declare-fun Unit!6648 () Unit!6646)

(assert (=> b!373420 (= e!229623 Unit!6648)))

(declare-fun b!373421 () Bool)

(declare-fun e!229646 () Bool)

(declare-fun e!229618 () Bool)

(assert (=> b!373421 (= e!229646 e!229618)))

(declare-fun res!167203 () Bool)

(assert (=> b!373421 (=> res!167203 e!229618)))

(declare-fun e!229630 () Bool)

(assert (=> b!373421 (= res!167203 e!229630)))

(declare-fun res!167210 () Bool)

(assert (=> b!373421 (=> (not res!167210) (not e!229630))))

(declare-fun lt!162399 () Bool)

(assert (=> b!373421 (= res!167210 (not lt!162399))))

(declare-fun lt!162387 () List!4193)

(declare-fun lt!162394 () List!4193)

(assert (=> b!373421 (= lt!162399 (= lt!162387 lt!162394))))

(declare-fun b!373422 () Bool)

(declare-fun res!167194 () Bool)

(declare-fun e!229620 () Bool)

(assert (=> b!373422 (=> res!167194 e!229620)))

(declare-fun separatorToken!170 () Token!1358)

(declare-fun contains!862 (List!4194 Rule!1414) Bool)

(assert (=> b!373422 (= res!167194 (not (contains!862 rules!1920 (rule!1452 separatorToken!170))))))

(declare-fun res!167212 () Bool)

(declare-fun e!229627 () Bool)

(assert (=> b!373423 (=> (not res!167212) (not e!229627))))

(declare-fun forall!1156 (List!4195 Int) Bool)

(assert (=> b!373423 (= res!167212 (forall!1156 tokens!465 lambda!11627))))

(declare-fun b!373424 () Bool)

(declare-fun e!229614 () Unit!6646)

(declare-fun Unit!6649 () Unit!6646)

(assert (=> b!373424 (= e!229614 Unit!6649)))

(declare-fun b!373425 () Bool)

(declare-fun res!167207 () Bool)

(declare-fun e!229626 () Bool)

(assert (=> b!373425 (=> (not res!167207) (not e!229626))))

(declare-datatypes ((IArray!2875 0))(
  ( (IArray!2876 (innerList!1495 List!4195)) )
))
(declare-datatypes ((Conc!1437 0))(
  ( (Node!1437 (left!3495 Conc!1437) (right!3825 Conc!1437) (csize!3104 Int) (cheight!1648 Int)) (Leaf!2180 (xs!4056 IArray!2875) (csize!3105 Int)) (Empty!1437) )
))
(declare-datatypes ((BalanceConc!2882 0))(
  ( (BalanceConc!2883 (c!73452 Conc!1437)) )
))
(declare-datatypes ((tuple2!4930 0))(
  ( (tuple2!4931 (_1!2681 BalanceConc!2882) (_2!2681 BalanceConc!2880)) )
))
(declare-fun lt!162376 () tuple2!4930)

(declare-fun lt!162396 () Token!1358)

(declare-fun apply!978 (BalanceConc!2882 Int) Token!1358)

(assert (=> b!373425 (= res!167207 (= (apply!978 (_1!2681 lt!162376) 0) lt!162396))))

(declare-fun b!373426 () Bool)

(declare-fun res!167185 () Bool)

(assert (=> b!373426 (=> (not res!167185) (not e!229627))))

(declare-fun rulesProduceIndividualToken!442 (LexerInterface!693 List!4194 Token!1358) Bool)

(assert (=> b!373426 (= res!167185 (rulesProduceIndividualToken!442 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!373427 () Bool)

(declare-fun e!229640 () Bool)

(declare-fun lt!162365 () List!4193)

(declare-fun matchR!349 (Regex!1031 List!4193) Bool)

(assert (=> b!373427 (= e!229640 (matchR!349 (regex!807 (rule!1452 (h!9582 tokens!465))) lt!162365))))

(declare-fun b!373428 () Bool)

(declare-fun e!229648 () Bool)

(declare-fun e!229634 () Bool)

(assert (=> b!373428 (= e!229648 e!229634)))

(declare-fun res!167214 () Bool)

(assert (=> b!373428 (=> (not res!167214) (not e!229634))))

(declare-fun lt!162375 () Rule!1414)

(declare-fun lt!162388 () List!4193)

(assert (=> b!373428 (= res!167214 (matchR!349 (regex!807 lt!162375) lt!162388))))

(declare-datatypes ((Option!1003 0))(
  ( (None!1002) (Some!1002 (v!15135 Rule!1414)) )
))
(declare-fun lt!162395 () Option!1003)

(declare-fun get!1468 (Option!1003) Rule!1414)

(assert (=> b!373428 (= lt!162375 (get!1468 lt!162395))))

(declare-fun e!229642 () Bool)

(assert (=> b!373429 (= e!229642 (and tp!117038 tp!117031))))

(declare-fun b!373430 () Bool)

(assert (=> b!373430 (= e!229620 (contains!862 rules!1920 (rule!1452 lt!162396)))))

(declare-fun b!373431 () Bool)

(declare-fun res!167199 () Bool)

(declare-fun e!229622 () Bool)

(assert (=> b!373431 (=> (not res!167199) (not e!229622))))

(declare-fun lt!162393 () List!4193)

(declare-fun list!1807 (BalanceConc!2880) List!4193)

(declare-fun seqFromList!979 (List!4193) BalanceConc!2880)

(assert (=> b!373431 (= res!167199 (= (list!1807 (seqFromList!979 lt!162387)) lt!162393))))

(declare-fun tp!117042 () Bool)

(declare-fun e!229636 () Bool)

(declare-fun e!229625 () Bool)

(declare-fun b!373432 () Bool)

(declare-fun inv!5191 (String!5225) Bool)

(declare-fun inv!5194 (TokenValueInjection!1430) Bool)

(assert (=> b!373432 (= e!229625 (and tp!117042 (inv!5191 (tag!1039 (rule!1452 separatorToken!170))) (inv!5194 (transformation!807 (rule!1452 separatorToken!170))) e!229636))))

(declare-fun lt!162384 () List!4193)

(declare-fun b!373433 () Bool)

(declare-fun ++!1170 (List!4193 List!4193) List!4193)

(assert (=> b!373433 (= e!229630 (not (= lt!162387 (++!1170 lt!162365 lt!162384))))))

(assert (=> b!373434 (= e!229636 (and tp!117040 tp!117037))))

(declare-fun b!373435 () Bool)

(declare-fun res!167186 () Bool)

(assert (=> b!373435 (=> (not res!167186) (not e!229640))))

(declare-datatypes ((tuple2!4932 0))(
  ( (tuple2!4933 (_1!2682 Token!1358) (_2!2682 List!4193)) )
))
(declare-fun lt!162369 () tuple2!4932)

(declare-fun isEmpty!2990 (List!4193) Bool)

(assert (=> b!373435 (= res!167186 (isEmpty!2990 (_2!2682 lt!162369)))))

(declare-fun e!229649 () Bool)

(declare-fun e!229617 () Bool)

(assert (=> b!373436 (= e!229649 e!229617)))

(declare-fun res!167188 () Bool)

(assert (=> b!373436 (=> res!167188 e!229617)))

(declare-datatypes ((tuple2!4934 0))(
  ( (tuple2!4935 (_1!2683 Token!1358) (_2!2683 BalanceConc!2880)) )
))
(declare-datatypes ((Option!1004 0))(
  ( (None!1003) (Some!1003 (v!15136 tuple2!4934)) )
))
(declare-fun isDefined!842 (Option!1004) Bool)

(declare-fun maxPrefixZipperSequence!372 (LexerInterface!693 List!4194 BalanceConc!2880) Option!1004)

(assert (=> b!373436 (= res!167188 (not (isDefined!842 (maxPrefixZipperSequence!372 thiss!17480 rules!1920 (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465)))))))))

(declare-fun lt!162404 () Unit!6646)

(declare-fun forallContained!360 (List!4195 Int Token!1358) Unit!6646)

(assert (=> b!373436 (= lt!162404 (forallContained!360 tokens!465 lambda!11628 (h!9582 tokens!465)))))

(assert (=> b!373436 (= lt!162365 (originalCharacters!850 (h!9582 tokens!465)))))

(declare-fun b!373437 () Bool)

(declare-fun e!229631 () Bool)

(declare-fun e!229616 () Bool)

(assert (=> b!373437 (= e!229631 e!229616)))

(declare-fun res!167217 () Bool)

(assert (=> b!373437 (=> (not res!167217) (not e!229616))))

(declare-fun lt!162385 () Rule!1414)

(declare-fun lt!162366 () List!4193)

(assert (=> b!373437 (= res!167217 (matchR!349 (regex!807 lt!162385) lt!162366))))

(declare-fun lt!162361 () Option!1003)

(assert (=> b!373437 (= lt!162385 (get!1468 lt!162361))))

(declare-fun b!373438 () Bool)

(declare-fun e!229619 () Bool)

(declare-fun e!229638 () Bool)

(assert (=> b!373438 (= e!229619 e!229638)))

(declare-fun res!167192 () Bool)

(assert (=> b!373438 (=> (not res!167192) (not e!229638))))

(declare-datatypes ((Option!1005 0))(
  ( (None!1004) (Some!1004 (v!15137 tuple2!4932)) )
))
(declare-fun lt!162380 () Option!1005)

(declare-fun isDefined!843 (Option!1005) Bool)

(assert (=> b!373438 (= res!167192 (isDefined!843 lt!162380))))

(declare-fun maxPrefix!409 (LexerInterface!693 List!4194 List!4193) Option!1005)

(assert (=> b!373438 (= lt!162380 (maxPrefix!409 thiss!17480 rules!1920 lt!162387))))

(declare-fun b!373439 () Bool)

(declare-fun e!229633 () Bool)

(declare-fun e!229635 () Bool)

(declare-fun tp!117043 () Bool)

(assert (=> b!373439 (= e!229635 (and tp!117043 (inv!5191 (tag!1039 (h!9581 rules!1920))) (inv!5194 (transformation!807 (h!9581 rules!1920))) e!229633))))

(declare-fun res!167206 () Bool)

(assert (=> start!37142 (=> (not res!167206) (not e!229621))))

(assert (=> start!37142 (= res!167206 ((_ is Lexer!691) thiss!17480))))

(assert (=> start!37142 e!229621))

(assert (=> start!37142 true))

(declare-fun e!229613 () Bool)

(assert (=> start!37142 e!229613))

(declare-fun e!229645 () Bool)

(declare-fun inv!5195 (Token!1358) Bool)

(assert (=> start!37142 (and (inv!5195 separatorToken!170) e!229645)))

(declare-fun e!229643 () Bool)

(assert (=> start!37142 e!229643))

(declare-fun b!373440 () Bool)

(declare-fun res!167184 () Bool)

(assert (=> b!373440 (=> res!167184 e!229649)))

(declare-fun isEmpty!2991 (BalanceConc!2882) Bool)

(declare-fun lex!485 (LexerInterface!693 List!4194 BalanceConc!2880) tuple2!4930)

(assert (=> b!373440 (= res!167184 (isEmpty!2991 (_1!2681 (lex!485 thiss!17480 rules!1920 (seqFromList!979 lt!162365)))))))

(declare-fun b!373441 () Bool)

(declare-fun res!167208 () Bool)

(assert (=> b!373441 (=> (not res!167208) (not e!229627))))

(assert (=> b!373441 (= res!167208 (isSeparator!807 (rule!1452 separatorToken!170)))))

(declare-fun b!373442 () Bool)

(declare-fun e!229629 () Bool)

(assert (=> b!373442 (= e!229629 e!229620)))

(declare-fun res!167187 () Bool)

(assert (=> b!373442 (=> res!167187 e!229620)))

(declare-fun contains!863 (List!4193 C!2984) Bool)

(declare-fun usedCharacters!108 (Regex!1031) List!4193)

(declare-fun head!1015 (List!4193) C!2984)

(assert (=> b!373442 (= res!167187 (not (contains!863 (usedCharacters!108 (regex!807 (rule!1452 separatorToken!170))) (head!1015 lt!162384))))))

(declare-fun lt!162390 () Unit!6646)

(assert (=> b!373442 (= lt!162390 e!229623)))

(declare-fun c!73448 () Bool)

(declare-fun lt!162383 () C!2984)

(assert (=> b!373442 (= c!73448 (not (contains!863 (usedCharacters!108 (regex!807 (rule!1452 lt!162396))) lt!162383)))))

(assert (=> b!373442 (= lt!162383 (head!1015 lt!162366))))

(assert (=> b!373442 e!229631))

(declare-fun res!167189 () Bool)

(assert (=> b!373442 (=> (not res!167189) (not e!229631))))

(declare-fun isDefined!844 (Option!1003) Bool)

(assert (=> b!373442 (= res!167189 (isDefined!844 lt!162361))))

(declare-fun getRuleFromTag!166 (LexerInterface!693 List!4194 String!5225) Option!1003)

(assert (=> b!373442 (= lt!162361 (getRuleFromTag!166 thiss!17480 rules!1920 (tag!1039 (rule!1452 lt!162396))))))

(declare-fun lt!162368 () Unit!6646)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!166 (LexerInterface!693 List!4194 List!4193 Token!1358) Unit!6646)

(assert (=> b!373442 (= lt!162368 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!166 thiss!17480 rules!1920 lt!162366 lt!162396))))

(declare-fun charsOf!450 (Token!1358) BalanceConc!2880)

(assert (=> b!373442 (= lt!162366 (list!1807 (charsOf!450 lt!162396)))))

(declare-fun lt!162378 () Unit!6646)

(assert (=> b!373442 (= lt!162378 (forallContained!360 tokens!465 lambda!11628 lt!162396))))

(assert (=> b!373442 e!229626))

(declare-fun res!167197 () Bool)

(assert (=> b!373442 (=> (not res!167197) (not e!229626))))

(declare-fun size!3385 (BalanceConc!2882) Int)

(assert (=> b!373442 (= res!167197 (= (size!3385 (_1!2681 lt!162376)) 1))))

(declare-fun lt!162401 () BalanceConc!2880)

(assert (=> b!373442 (= lt!162376 (lex!485 thiss!17480 rules!1920 lt!162401))))

(declare-fun lt!162374 () BalanceConc!2882)

(declare-fun printTailRec!379 (LexerInterface!693 BalanceConc!2882 Int BalanceConc!2880) BalanceConc!2880)

(assert (=> b!373442 (= lt!162401 (printTailRec!379 thiss!17480 lt!162374 0 (BalanceConc!2881 Empty!1436)))))

(declare-fun print!418 (LexerInterface!693 BalanceConc!2882) BalanceConc!2880)

(assert (=> b!373442 (= lt!162401 (print!418 thiss!17480 lt!162374))))

(declare-fun singletonSeq!353 (Token!1358) BalanceConc!2882)

(assert (=> b!373442 (= lt!162374 (singletonSeq!353 lt!162396))))

(assert (=> b!373442 e!229648))

(declare-fun res!167201 () Bool)

(assert (=> b!373442 (=> (not res!167201) (not e!229648))))

(assert (=> b!373442 (= res!167201 (isDefined!844 lt!162395))))

(assert (=> b!373442 (= lt!162395 (getRuleFromTag!166 thiss!17480 rules!1920 (tag!1039 (rule!1452 separatorToken!170))))))

(declare-fun lt!162400 () Unit!6646)

(assert (=> b!373442 (= lt!162400 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!166 thiss!17480 rules!1920 lt!162388 separatorToken!170))))

(declare-fun e!229647 () Bool)

(assert (=> b!373442 e!229647))

(declare-fun res!167216 () Bool)

(assert (=> b!373442 (=> (not res!167216) (not e!229647))))

(declare-fun lt!162362 () tuple2!4930)

(assert (=> b!373442 (= res!167216 (= (size!3385 (_1!2681 lt!162362)) 1))))

(declare-fun lt!162392 () BalanceConc!2880)

(assert (=> b!373442 (= lt!162362 (lex!485 thiss!17480 rules!1920 lt!162392))))

(declare-fun lt!162403 () BalanceConc!2882)

(assert (=> b!373442 (= lt!162392 (printTailRec!379 thiss!17480 lt!162403 0 (BalanceConc!2881 Empty!1436)))))

(assert (=> b!373442 (= lt!162392 (print!418 thiss!17480 lt!162403))))

(assert (=> b!373442 (= lt!162403 (singletonSeq!353 separatorToken!170))))

(assert (=> b!373442 (rulesProduceIndividualToken!442 thiss!17480 rules!1920 lt!162396)))

(declare-fun lt!162363 () Unit!6646)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!156 (LexerInterface!693 List!4194 List!4195 Token!1358) Unit!6646)

(assert (=> b!373442 (= lt!162363 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!156 thiss!17480 rules!1920 tokens!465 lt!162396))))

(declare-fun head!1016 (List!4195) Token!1358)

(assert (=> b!373442 (= lt!162396 (head!1016 (t!57353 tokens!465)))))

(declare-fun lt!162397 () Unit!6646)

(assert (=> b!373442 (= lt!162397 e!229614)))

(declare-fun c!73449 () Bool)

(declare-fun isEmpty!2992 (List!4195) Bool)

(assert (=> b!373442 (= c!73449 (isEmpty!2992 (t!57353 tokens!465)))))

(declare-fun lt!162371 () List!4193)

(declare-fun lt!162364 () Option!1005)

(assert (=> b!373442 (= lt!162364 (maxPrefix!409 thiss!17480 rules!1920 lt!162371))))

(declare-fun lt!162377 () tuple2!4932)

(assert (=> b!373442 (= lt!162371 (_2!2682 lt!162377))))

(declare-fun lt!162367 () Unit!6646)

(declare-fun lemmaSamePrefixThenSameSuffix!252 (List!4193 List!4193 List!4193 List!4193 List!4193) Unit!6646)

(assert (=> b!373442 (= lt!162367 (lemmaSamePrefixThenSameSuffix!252 lt!162365 lt!162371 lt!162365 (_2!2682 lt!162377) lt!162387))))

(declare-fun get!1469 (Option!1005) tuple2!4932)

(assert (=> b!373442 (= lt!162377 (get!1469 (maxPrefix!409 thiss!17480 rules!1920 lt!162387)))))

(declare-fun isPrefix!467 (List!4193 List!4193) Bool)

(assert (=> b!373442 (isPrefix!467 lt!162365 lt!162394)))

(declare-fun lt!162391 () Unit!6646)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!358 (List!4193 List!4193) Unit!6646)

(assert (=> b!373442 (= lt!162391 (lemmaConcatTwoListThenFirstIsPrefix!358 lt!162365 lt!162371))))

(assert (=> b!373442 e!229619))

(declare-fun res!167196 () Bool)

(assert (=> b!373442 (=> res!167196 e!229619)))

(assert (=> b!373442 (= res!167196 (isEmpty!2992 tokens!465))))

(declare-fun lt!162373 () Unit!6646)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!214 (LexerInterface!693 List!4194 List!4195 Token!1358) Unit!6646)

(assert (=> b!373442 (= lt!162373 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!214 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!373443 () Bool)

(assert (=> b!373443 (= e!229627 e!229622)))

(declare-fun res!167191 () Bool)

(assert (=> b!373443 (=> (not res!167191) (not e!229622))))

(assert (=> b!373443 (= res!167191 (= lt!162387 lt!162393))))

(declare-fun lt!162381 () BalanceConc!2882)

(declare-fun printWithSeparatorTokenWhenNeededRec!366 (LexerInterface!693 List!4194 BalanceConc!2882 Token!1358 Int) BalanceConc!2880)

(assert (=> b!373443 (= lt!162393 (list!1807 (printWithSeparatorTokenWhenNeededRec!366 thiss!17480 rules!1920 lt!162381 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!374 (LexerInterface!693 List!4194 List!4195 Token!1358) List!4193)

(assert (=> b!373443 (= lt!162387 (printWithSeparatorTokenWhenNeededList!374 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!373444 () Bool)

(declare-fun Unit!6650 () Unit!6646)

(assert (=> b!373444 (= e!229623 Unit!6650)))

(declare-fun lt!162382 () Unit!6646)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!86 (Regex!1031 List!4193 C!2984) Unit!6646)

(assert (=> b!373444 (= lt!162382 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!86 (regex!807 (rule!1452 lt!162396)) lt!162366 lt!162383))))

(declare-fun res!167209 () Bool)

(assert (=> b!373444 (= res!167209 (not (matchR!349 (regex!807 (rule!1452 lt!162396)) lt!162366)))))

(declare-fun e!229641 () Bool)

(assert (=> b!373444 (=> (not res!167209) (not e!229641))))

(assert (=> b!373444 e!229641))

(declare-fun b!373445 () Bool)

(declare-fun res!167211 () Bool)

(assert (=> b!373445 (=> (not res!167211) (not e!229647))))

(assert (=> b!373445 (= res!167211 (= (apply!978 (_1!2681 lt!162362) 0) separatorToken!170))))

(declare-fun b!373446 () Bool)

(assert (=> b!373446 (= e!229641 false)))

(declare-fun b!373447 () Bool)

(assert (=> b!373447 (= e!229634 (= (rule!1452 separatorToken!170) lt!162375))))

(declare-fun b!373448 () Bool)

(declare-fun tp!117032 () Bool)

(assert (=> b!373448 (= e!229644 (and tp!117032 (inv!5191 (tag!1039 (rule!1452 (h!9582 tokens!465)))) (inv!5194 (transformation!807 (rule!1452 (h!9582 tokens!465)))) e!229642))))

(declare-fun b!373449 () Bool)

(assert (=> b!373449 (= e!229638 (= (_1!2682 (get!1469 lt!162380)) (head!1016 tokens!465)))))

(declare-fun b!373450 () Bool)

(assert (=> b!373450 (= e!229616 (= (rule!1452 lt!162396) lt!162385))))

(declare-fun b!373451 () Bool)

(declare-fun tp!117039 () Bool)

(assert (=> b!373451 (= e!229643 (and (inv!5195 (h!9582 tokens!465)) e!229637 tp!117039))))

(declare-fun b!373452 () Bool)

(declare-fun isEmpty!2993 (BalanceConc!2880) Bool)

(assert (=> b!373452 (= e!229626 (isEmpty!2993 (_2!2681 lt!162376)))))

(declare-fun b!373453 () Bool)

(assert (=> b!373453 (= e!229647 (isEmpty!2993 (_2!2681 lt!162362)))))

(declare-fun b!373454 () Bool)

(assert (=> b!373454 (= e!229617 e!229629)))

(declare-fun res!167200 () Bool)

(assert (=> b!373454 (=> res!167200 e!229629)))

(assert (=> b!373454 (= res!167200 (not lt!162399))))

(assert (=> b!373454 e!229640))

(declare-fun res!167193 () Bool)

(assert (=> b!373454 (=> (not res!167193) (not e!229640))))

(assert (=> b!373454 (= res!167193 (= (_1!2682 lt!162369) (h!9582 tokens!465)))))

(declare-fun lt!162402 () Option!1005)

(assert (=> b!373454 (= lt!162369 (get!1469 lt!162402))))

(assert (=> b!373454 (isDefined!843 lt!162402)))

(assert (=> b!373454 (= lt!162402 (maxPrefix!409 thiss!17480 rules!1920 lt!162365))))

(declare-fun b!373455 () Bool)

(declare-fun res!167198 () Bool)

(assert (=> b!373455 (=> (not res!167198) (not e!229627))))

(assert (=> b!373455 (= res!167198 ((_ is Cons!4185) tokens!465))))

(declare-fun b!373456 () Bool)

(assert (=> b!373456 (= e!229618 e!229649)))

(declare-fun res!167204 () Bool)

(assert (=> b!373456 (=> res!167204 e!229649)))

(declare-fun lt!162389 () List!4193)

(declare-fun lt!162398 () List!4193)

(assert (=> b!373456 (= res!167204 (or (not (= lt!162389 lt!162398)) (not (= lt!162398 lt!162365)) (not (= lt!162389 lt!162365))))))

(declare-fun printList!367 (LexerInterface!693 List!4195) List!4193)

(assert (=> b!373456 (= lt!162398 (printList!367 thiss!17480 (Cons!4185 (h!9582 tokens!465) Nil!4185)))))

(declare-fun lt!162379 () BalanceConc!2880)

(assert (=> b!373456 (= lt!162389 (list!1807 lt!162379))))

(declare-fun lt!162386 () BalanceConc!2882)

(assert (=> b!373456 (= lt!162379 (printTailRec!379 thiss!17480 lt!162386 0 (BalanceConc!2881 Empty!1436)))))

(assert (=> b!373456 (= lt!162379 (print!418 thiss!17480 lt!162386))))

(assert (=> b!373456 (= lt!162386 (singletonSeq!353 (h!9582 tokens!465)))))

(declare-fun tp!117033 () Bool)

(declare-fun b!373457 () Bool)

(assert (=> b!373457 (= e!229645 (and (inv!21 (value!27315 separatorToken!170)) e!229625 tp!117033))))

(declare-fun b!373458 () Bool)

(declare-fun res!167213 () Bool)

(assert (=> b!373458 (=> (not res!167213) (not e!229621))))

(declare-fun isEmpty!2994 (List!4194) Bool)

(assert (=> b!373458 (= res!167213 (not (isEmpty!2994 rules!1920)))))

(declare-fun b!373459 () Bool)

(assert (=> b!373459 (= e!229622 (not e!229646))))

(declare-fun res!167202 () Bool)

(assert (=> b!373459 (=> res!167202 e!229646)))

(declare-fun seqFromList!980 (List!4195) BalanceConc!2882)

(assert (=> b!373459 (= res!167202 (not (= lt!162384 (list!1807 (printWithSeparatorTokenWhenNeededRec!366 thiss!17480 rules!1920 (seqFromList!980 (t!57353 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!162370 () List!4193)

(assert (=> b!373459 (= lt!162370 lt!162394)))

(assert (=> b!373459 (= lt!162394 (++!1170 lt!162365 lt!162371))))

(assert (=> b!373459 (= lt!162370 (++!1170 (++!1170 lt!162365 lt!162388) lt!162384))))

(declare-fun lt!162372 () Unit!6646)

(declare-fun lemmaConcatAssociativity!526 (List!4193 List!4193 List!4193) Unit!6646)

(assert (=> b!373459 (= lt!162372 (lemmaConcatAssociativity!526 lt!162365 lt!162388 lt!162384))))

(assert (=> b!373459 (= lt!162365 (list!1807 (charsOf!450 (h!9582 tokens!465))))))

(assert (=> b!373459 (= lt!162371 (++!1170 lt!162388 lt!162384))))

(assert (=> b!373459 (= lt!162384 (printWithSeparatorTokenWhenNeededList!374 thiss!17480 rules!1920 (t!57353 tokens!465) separatorToken!170))))

(assert (=> b!373459 (= lt!162388 (list!1807 (charsOf!450 separatorToken!170)))))

(declare-fun b!373460 () Bool)

(declare-fun Unit!6651 () Unit!6646)

(assert (=> b!373460 (= e!229614 Unit!6651)))

(assert (=> b!373460 false))

(declare-fun b!373461 () Bool)

(assert (=> b!373461 (= e!229621 e!229627)))

(declare-fun res!167190 () Bool)

(assert (=> b!373461 (=> (not res!167190) (not e!229627))))

(declare-fun rulesProduceEachTokenIndividually!485 (LexerInterface!693 List!4194 BalanceConc!2882) Bool)

(assert (=> b!373461 (= res!167190 (rulesProduceEachTokenIndividually!485 thiss!17480 rules!1920 lt!162381))))

(assert (=> b!373461 (= lt!162381 (seqFromList!980 tokens!465))))

(assert (=> b!373462 (= e!229633 (and tp!117036 tp!117035))))

(declare-fun b!373463 () Bool)

(declare-fun res!167205 () Bool)

(assert (=> b!373463 (=> (not res!167205) (not e!229627))))

(declare-fun sepAndNonSepRulesDisjointChars!396 (List!4194 List!4194) Bool)

(assert (=> b!373463 (= res!167205 (sepAndNonSepRulesDisjointChars!396 rules!1920 rules!1920))))

(declare-fun b!373464 () Bool)

(declare-fun res!167195 () Bool)

(assert (=> b!373464 (=> res!167195 e!229649)))

(assert (=> b!373464 (= res!167195 (not (rulesProduceIndividualToken!442 thiss!17480 rules!1920 (h!9582 tokens!465))))))

(declare-fun b!373465 () Bool)

(declare-fun tp!117034 () Bool)

(assert (=> b!373465 (= e!229613 (and e!229635 tp!117034))))

(assert (= (and start!37142 res!167206) b!373458))

(assert (= (and b!373458 res!167213) b!373419))

(assert (= (and b!373419 res!167215) b!373461))

(assert (= (and b!373461 res!167190) b!373426))

(assert (= (and b!373426 res!167185) b!373441))

(assert (= (and b!373441 res!167208) b!373423))

(assert (= (and b!373423 res!167212) b!373463))

(assert (= (and b!373463 res!167205) b!373455))

(assert (= (and b!373455 res!167198) b!373443))

(assert (= (and b!373443 res!167191) b!373431))

(assert (= (and b!373431 res!167199) b!373459))

(assert (= (and b!373459 (not res!167202)) b!373421))

(assert (= (and b!373421 res!167210) b!373433))

(assert (= (and b!373421 (not res!167203)) b!373456))

(assert (= (and b!373456 (not res!167204)) b!373464))

(assert (= (and b!373464 (not res!167195)) b!373440))

(assert (= (and b!373440 (not res!167184)) b!373436))

(assert (= (and b!373436 (not res!167188)) b!373454))

(assert (= (and b!373454 res!167193) b!373435))

(assert (= (and b!373435 res!167186) b!373427))

(assert (= (and b!373454 (not res!167200)) b!373442))

(assert (= (and b!373442 (not res!167196)) b!373438))

(assert (= (and b!373438 res!167192) b!373449))

(assert (= (and b!373442 c!73449) b!373460))

(assert (= (and b!373442 (not c!73449)) b!373424))

(assert (= (and b!373442 res!167216) b!373445))

(assert (= (and b!373445 res!167211) b!373453))

(assert (= (and b!373442 res!167201) b!373428))

(assert (= (and b!373428 res!167214) b!373447))

(assert (= (and b!373442 res!167197) b!373425))

(assert (= (and b!373425 res!167207) b!373452))

(assert (= (and b!373442 res!167189) b!373437))

(assert (= (and b!373437 res!167217) b!373450))

(assert (= (and b!373442 c!73448) b!373444))

(assert (= (and b!373442 (not c!73448)) b!373420))

(assert (= (and b!373444 res!167209) b!373446))

(assert (= (and b!373442 (not res!167187)) b!373422))

(assert (= (and b!373422 (not res!167194)) b!373430))

(assert (= b!373439 b!373462))

(assert (= b!373465 b!373439))

(assert (= (and start!37142 ((_ is Cons!4184) rules!1920)) b!373465))

(assert (= b!373432 b!373434))

(assert (= b!373457 b!373432))

(assert (= start!37142 b!373457))

(assert (= b!373448 b!373429))

(assert (= b!373418 b!373448))

(assert (= b!373451 b!373418))

(assert (= (and start!37142 ((_ is Cons!4185) tokens!465)) b!373451))

(declare-fun m!553679 () Bool)

(assert (=> b!373461 m!553679))

(declare-fun m!553681 () Bool)

(assert (=> b!373461 m!553681))

(declare-fun m!553683 () Bool)

(assert (=> b!373444 m!553683))

(declare-fun m!553685 () Bool)

(assert (=> b!373444 m!553685))

(declare-fun m!553687 () Bool)

(assert (=> b!373453 m!553687))

(declare-fun m!553689 () Bool)

(assert (=> b!373445 m!553689))

(declare-fun m!553691 () Bool)

(assert (=> b!373454 m!553691))

(declare-fun m!553693 () Bool)

(assert (=> b!373454 m!553693))

(declare-fun m!553695 () Bool)

(assert (=> b!373454 m!553695))

(declare-fun m!553697 () Bool)

(assert (=> b!373422 m!553697))

(declare-fun m!553699 () Bool)

(assert (=> b!373423 m!553699))

(declare-fun m!553701 () Bool)

(assert (=> b!373457 m!553701))

(declare-fun m!553703 () Bool)

(assert (=> b!373425 m!553703))

(declare-fun m!553705 () Bool)

(assert (=> b!373430 m!553705))

(declare-fun m!553707 () Bool)

(assert (=> b!373439 m!553707))

(declare-fun m!553709 () Bool)

(assert (=> b!373439 m!553709))

(declare-fun m!553711 () Bool)

(assert (=> b!373428 m!553711))

(declare-fun m!553713 () Bool)

(assert (=> b!373428 m!553713))

(declare-fun m!553715 () Bool)

(assert (=> b!373448 m!553715))

(declare-fun m!553717 () Bool)

(assert (=> b!373448 m!553717))

(declare-fun m!553719 () Bool)

(assert (=> b!373432 m!553719))

(declare-fun m!553721 () Bool)

(assert (=> b!373432 m!553721))

(declare-fun m!553723 () Bool)

(assert (=> b!373452 m!553723))

(declare-fun m!553725 () Bool)

(assert (=> b!373459 m!553725))

(declare-fun m!553727 () Bool)

(assert (=> b!373459 m!553727))

(declare-fun m!553729 () Bool)

(assert (=> b!373459 m!553729))

(declare-fun m!553731 () Bool)

(assert (=> b!373459 m!553731))

(declare-fun m!553733 () Bool)

(assert (=> b!373459 m!553733))

(declare-fun m!553735 () Bool)

(assert (=> b!373459 m!553735))

(assert (=> b!373459 m!553725))

(declare-fun m!553737 () Bool)

(assert (=> b!373459 m!553737))

(declare-fun m!553739 () Bool)

(assert (=> b!373459 m!553739))

(declare-fun m!553741 () Bool)

(assert (=> b!373459 m!553741))

(declare-fun m!553743 () Bool)

(assert (=> b!373459 m!553743))

(declare-fun m!553745 () Bool)

(assert (=> b!373459 m!553745))

(assert (=> b!373459 m!553731))

(assert (=> b!373459 m!553743))

(declare-fun m!553747 () Bool)

(assert (=> b!373459 m!553747))

(assert (=> b!373459 m!553739))

(assert (=> b!373459 m!553737))

(declare-fun m!553749 () Bool)

(assert (=> b!373459 m!553749))

(declare-fun m!553751 () Bool)

(assert (=> b!373438 m!553751))

(declare-fun m!553753 () Bool)

(assert (=> b!373438 m!553753))

(declare-fun m!553755 () Bool)

(assert (=> b!373433 m!553755))

(declare-fun m!553757 () Bool)

(assert (=> b!373463 m!553757))

(declare-fun m!553759 () Bool)

(assert (=> b!373443 m!553759))

(assert (=> b!373443 m!553759))

(declare-fun m!553761 () Bool)

(assert (=> b!373443 m!553761))

(declare-fun m!553763 () Bool)

(assert (=> b!373443 m!553763))

(declare-fun m!553765 () Bool)

(assert (=> b!373451 m!553765))

(declare-fun m!553767 () Bool)

(assert (=> b!373449 m!553767))

(declare-fun m!553769 () Bool)

(assert (=> b!373449 m!553769))

(declare-fun m!553771 () Bool)

(assert (=> b!373437 m!553771))

(declare-fun m!553773 () Bool)

(assert (=> b!373437 m!553773))

(declare-fun m!553775 () Bool)

(assert (=> b!373427 m!553775))

(declare-fun m!553777 () Bool)

(assert (=> b!373435 m!553777))

(declare-fun m!553779 () Bool)

(assert (=> b!373431 m!553779))

(assert (=> b!373431 m!553779))

(declare-fun m!553781 () Bool)

(assert (=> b!373431 m!553781))

(declare-fun m!553783 () Bool)

(assert (=> b!373419 m!553783))

(declare-fun m!553785 () Bool)

(assert (=> b!373418 m!553785))

(declare-fun m!553787 () Bool)

(assert (=> b!373458 m!553787))

(declare-fun m!553789 () Bool)

(assert (=> b!373426 m!553789))

(declare-fun m!553791 () Bool)

(assert (=> b!373456 m!553791))

(declare-fun m!553793 () Bool)

(assert (=> b!373456 m!553793))

(declare-fun m!553795 () Bool)

(assert (=> b!373456 m!553795))

(declare-fun m!553797 () Bool)

(assert (=> b!373456 m!553797))

(declare-fun m!553799 () Bool)

(assert (=> b!373456 m!553799))

(declare-fun m!553801 () Bool)

(assert (=> b!373440 m!553801))

(assert (=> b!373440 m!553801))

(declare-fun m!553803 () Bool)

(assert (=> b!373440 m!553803))

(declare-fun m!553805 () Bool)

(assert (=> b!373440 m!553805))

(declare-fun m!553807 () Bool)

(assert (=> b!373436 m!553807))

(assert (=> b!373436 m!553807))

(declare-fun m!553809 () Bool)

(assert (=> b!373436 m!553809))

(assert (=> b!373436 m!553809))

(declare-fun m!553811 () Bool)

(assert (=> b!373436 m!553811))

(declare-fun m!553813 () Bool)

(assert (=> b!373436 m!553813))

(declare-fun m!553815 () Bool)

(assert (=> start!37142 m!553815))

(declare-fun m!553817 () Bool)

(assert (=> b!373464 m!553817))

(declare-fun m!553819 () Bool)

(assert (=> b!373442 m!553819))

(declare-fun m!553821 () Bool)

(assert (=> b!373442 m!553821))

(declare-fun m!553823 () Bool)

(assert (=> b!373442 m!553823))

(declare-fun m!553825 () Bool)

(assert (=> b!373442 m!553825))

(assert (=> b!373442 m!553825))

(declare-fun m!553827 () Bool)

(assert (=> b!373442 m!553827))

(declare-fun m!553829 () Bool)

(assert (=> b!373442 m!553829))

(declare-fun m!553831 () Bool)

(assert (=> b!373442 m!553831))

(declare-fun m!553833 () Bool)

(assert (=> b!373442 m!553833))

(declare-fun m!553835 () Bool)

(assert (=> b!373442 m!553835))

(declare-fun m!553837 () Bool)

(assert (=> b!373442 m!553837))

(declare-fun m!553839 () Bool)

(assert (=> b!373442 m!553839))

(declare-fun m!553841 () Bool)

(assert (=> b!373442 m!553841))

(declare-fun m!553843 () Bool)

(assert (=> b!373442 m!553843))

(declare-fun m!553845 () Bool)

(assert (=> b!373442 m!553845))

(declare-fun m!553847 () Bool)

(assert (=> b!373442 m!553847))

(declare-fun m!553849 () Bool)

(assert (=> b!373442 m!553849))

(assert (=> b!373442 m!553753))

(declare-fun m!553851 () Bool)

(assert (=> b!373442 m!553851))

(declare-fun m!553853 () Bool)

(assert (=> b!373442 m!553853))

(declare-fun m!553855 () Bool)

(assert (=> b!373442 m!553855))

(declare-fun m!553857 () Bool)

(assert (=> b!373442 m!553857))

(declare-fun m!553859 () Bool)

(assert (=> b!373442 m!553859))

(declare-fun m!553861 () Bool)

(assert (=> b!373442 m!553861))

(declare-fun m!553863 () Bool)

(assert (=> b!373442 m!553863))

(declare-fun m!553865 () Bool)

(assert (=> b!373442 m!553865))

(declare-fun m!553867 () Bool)

(assert (=> b!373442 m!553867))

(declare-fun m!553869 () Bool)

(assert (=> b!373442 m!553869))

(assert (=> b!373442 m!553831))

(declare-fun m!553871 () Bool)

(assert (=> b!373442 m!553871))

(declare-fun m!553873 () Bool)

(assert (=> b!373442 m!553873))

(declare-fun m!553875 () Bool)

(assert (=> b!373442 m!553875))

(declare-fun m!553877 () Bool)

(assert (=> b!373442 m!553877))

(assert (=> b!373442 m!553855))

(assert (=> b!373442 m!553853))

(declare-fun m!553879 () Bool)

(assert (=> b!373442 m!553879))

(declare-fun m!553881 () Bool)

(assert (=> b!373442 m!553881))

(declare-fun m!553883 () Bool)

(assert (=> b!373442 m!553883))

(declare-fun m!553885 () Bool)

(assert (=> b!373442 m!553885))

(declare-fun m!553887 () Bool)

(assert (=> b!373442 m!553887))

(assert (=> b!373442 m!553753))

(declare-fun m!553889 () Bool)

(assert (=> b!373442 m!553889))

(check-sat (not b!373436) (not b!373431) b_and!37515 (not b!373465) (not b!373443) (not b!373448) b_and!37505 (not b_next!11635) (not b!373444) (not b!373423) (not b!373427) (not b_next!11639) (not b!373422) (not b!373445) (not b!373428) (not b!373452) (not b!373456) (not b!373440) (not b!373419) (not b!373461) (not b!373432) b_and!37509 (not b_next!11633) (not b!373464) (not b!373457) (not start!37142) (not b!373439) (not b!373463) (not b!373458) (not b!373459) b_and!37513 (not b!373451) (not b!373426) (not b!373425) (not b!373453) (not b_next!11643) (not b_next!11641) (not b!373438) (not b!373449) b_and!37511 (not b!373433) (not b_next!11637) (not b!373437) (not b!373435) (not b!373442) (not b!373474) (not b!373418) (not b!373454) b_and!37507 (not b!373430))
(check-sat (not b_next!11639) b_and!37515 b_and!37505 b_and!37513 (not b_next!11635) (not b_next!11643) (not b_next!11641) b_and!37511 (not b_next!11637) b_and!37507 b_and!37509 (not b_next!11633))
(get-model)

(declare-fun d!131333 () Bool)

(declare-fun res!167251 () Bool)

(declare-fun e!229676 () Bool)

(assert (=> d!131333 (=> (not res!167251) (not e!229676))))

(assert (=> d!131333 (= res!167251 (not (isEmpty!2990 (originalCharacters!850 (h!9582 tokens!465)))))))

(assert (=> d!131333 (= (inv!5195 (h!9582 tokens!465)) e!229676)))

(declare-fun b!373509 () Bool)

(declare-fun res!167252 () Bool)

(assert (=> b!373509 (=> (not res!167252) (not e!229676))))

(declare-fun dynLambda!2398 (Int TokenValue!829) BalanceConc!2880)

(assert (=> b!373509 (= res!167252 (= (originalCharacters!850 (h!9582 tokens!465)) (list!1807 (dynLambda!2398 (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))) (value!27315 (h!9582 tokens!465))))))))

(declare-fun b!373510 () Bool)

(declare-fun size!3388 (List!4193) Int)

(assert (=> b!373510 (= e!229676 (= (size!3384 (h!9582 tokens!465)) (size!3388 (originalCharacters!850 (h!9582 tokens!465)))))))

(assert (= (and d!131333 res!167251) b!373509))

(assert (= (and b!373509 res!167252) b!373510))

(declare-fun b_lambda!14645 () Bool)

(assert (=> (not b_lambda!14645) (not b!373509)))

(declare-fun tb!32787 () Bool)

(declare-fun t!57361 () Bool)

(assert (=> (and b!373434 (= (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465))))) t!57361) tb!32787))

(declare-fun b!373515 () Bool)

(declare-fun e!229679 () Bool)

(declare-fun tp!117049 () Bool)

(declare-fun inv!5198 (Conc!1436) Bool)

(assert (=> b!373515 (= e!229679 (and (inv!5198 (c!73450 (dynLambda!2398 (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))) (value!27315 (h!9582 tokens!465))))) tp!117049))))

(declare-fun result!37000 () Bool)

(declare-fun inv!5199 (BalanceConc!2880) Bool)

(assert (=> tb!32787 (= result!37000 (and (inv!5199 (dynLambda!2398 (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))) (value!27315 (h!9582 tokens!465)))) e!229679))))

(assert (= tb!32787 b!373515))

(declare-fun m!553929 () Bool)

(assert (=> b!373515 m!553929))

(declare-fun m!553931 () Bool)

(assert (=> tb!32787 m!553931))

(assert (=> b!373509 t!57361))

(declare-fun b_and!37523 () Bool)

(assert (= b_and!37507 (and (=> t!57361 result!37000) b_and!37523)))

(declare-fun t!57363 () Bool)

(declare-fun tb!32789 () Bool)

(assert (=> (and b!373429 (= (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465))))) t!57363) tb!32789))

(declare-fun result!37004 () Bool)

(assert (= result!37004 result!37000))

(assert (=> b!373509 t!57363))

(declare-fun b_and!37525 () Bool)

(assert (= b_and!37511 (and (=> t!57363 result!37004) b_and!37525)))

(declare-fun t!57365 () Bool)

(declare-fun tb!32791 () Bool)

(assert (=> (and b!373462 (= (toChars!1449 (transformation!807 (h!9581 rules!1920))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465))))) t!57365) tb!32791))

(declare-fun result!37006 () Bool)

(assert (= result!37006 result!37000))

(assert (=> b!373509 t!57365))

(declare-fun b_and!37527 () Bool)

(assert (= b_and!37515 (and (=> t!57365 result!37006) b_and!37527)))

(declare-fun m!553933 () Bool)

(assert (=> d!131333 m!553933))

(declare-fun m!553935 () Bool)

(assert (=> b!373509 m!553935))

(assert (=> b!373509 m!553935))

(declare-fun m!553937 () Bool)

(assert (=> b!373509 m!553937))

(declare-fun m!553939 () Bool)

(assert (=> b!373510 m!553939))

(assert (=> b!373451 d!131333))

(declare-fun d!131335 () Bool)

(declare-fun list!1810 (Conc!1436) List!4193)

(assert (=> d!131335 (= (list!1807 (seqFromList!979 lt!162387)) (list!1810 (c!73450 (seqFromList!979 lt!162387))))))

(declare-fun bs!45259 () Bool)

(assert (= bs!45259 d!131335))

(declare-fun m!553941 () Bool)

(assert (=> bs!45259 m!553941))

(assert (=> b!373431 d!131335))

(declare-fun d!131337 () Bool)

(declare-fun fromListB!422 (List!4193) BalanceConc!2880)

(assert (=> d!131337 (= (seqFromList!979 lt!162387) (fromListB!422 lt!162387))))

(declare-fun bs!45260 () Bool)

(assert (= bs!45260 d!131337))

(declare-fun m!553943 () Bool)

(assert (=> bs!45260 m!553943))

(assert (=> b!373431 d!131337))

(declare-fun d!131339 () Bool)

(declare-fun lt!162413 () Bool)

(assert (=> d!131339 (= lt!162413 (isEmpty!2990 (list!1807 (_2!2681 lt!162376))))))

(declare-fun isEmpty!2998 (Conc!1436) Bool)

(assert (=> d!131339 (= lt!162413 (isEmpty!2998 (c!73450 (_2!2681 lt!162376))))))

(assert (=> d!131339 (= (isEmpty!2993 (_2!2681 lt!162376)) lt!162413)))

(declare-fun bs!45261 () Bool)

(assert (= bs!45261 d!131339))

(declare-fun m!553945 () Bool)

(assert (=> bs!45261 m!553945))

(assert (=> bs!45261 m!553945))

(declare-fun m!553947 () Bool)

(assert (=> bs!45261 m!553947))

(declare-fun m!553949 () Bool)

(assert (=> bs!45261 m!553949))

(assert (=> b!373452 d!131339))

(declare-fun d!131341 () Bool)

(declare-fun lt!162416 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!660 (List!4194) (InoxSet Rule!1414))

(assert (=> d!131341 (= lt!162416 (select (content!660 rules!1920) (rule!1452 lt!162396)))))

(declare-fun e!229685 () Bool)

(assert (=> d!131341 (= lt!162416 e!229685)))

(declare-fun res!167257 () Bool)

(assert (=> d!131341 (=> (not res!167257) (not e!229685))))

(assert (=> d!131341 (= res!167257 ((_ is Cons!4184) rules!1920))))

(assert (=> d!131341 (= (contains!862 rules!1920 (rule!1452 lt!162396)) lt!162416)))

(declare-fun b!373520 () Bool)

(declare-fun e!229684 () Bool)

(assert (=> b!373520 (= e!229685 e!229684)))

(declare-fun res!167258 () Bool)

(assert (=> b!373520 (=> res!167258 e!229684)))

(assert (=> b!373520 (= res!167258 (= (h!9581 rules!1920) (rule!1452 lt!162396)))))

(declare-fun b!373521 () Bool)

(assert (=> b!373521 (= e!229684 (contains!862 (t!57352 rules!1920) (rule!1452 lt!162396)))))

(assert (= (and d!131341 res!167257) b!373520))

(assert (= (and b!373520 (not res!167258)) b!373521))

(declare-fun m!553951 () Bool)

(assert (=> d!131341 m!553951))

(declare-fun m!553953 () Bool)

(assert (=> d!131341 m!553953))

(declare-fun m!553955 () Bool)

(assert (=> b!373521 m!553955))

(assert (=> b!373430 d!131341))

(declare-fun b!373556 () Bool)

(declare-fun e!229710 () Bool)

(declare-fun derivativeStep!180 (Regex!1031 C!2984) Regex!1031)

(declare-fun tail!577 (List!4193) List!4193)

(assert (=> b!373556 (= e!229710 (matchR!349 (derivativeStep!180 (regex!807 (rule!1452 (h!9582 tokens!465))) (head!1015 lt!162365)) (tail!577 lt!162365)))))

(declare-fun b!373557 () Bool)

(declare-fun res!167284 () Bool)

(declare-fun e!229707 () Bool)

(assert (=> b!373557 (=> res!167284 e!229707)))

(assert (=> b!373557 (= res!167284 (not (isEmpty!2990 (tail!577 lt!162365))))))

(declare-fun b!373558 () Bool)

(declare-fun e!229709 () Bool)

(assert (=> b!373558 (= e!229709 (= (head!1015 lt!162365) (c!73451 (regex!807 (rule!1452 (h!9582 tokens!465))))))))

(declare-fun b!373559 () Bool)

(assert (=> b!373559 (= e!229707 (not (= (head!1015 lt!162365) (c!73451 (regex!807 (rule!1452 (h!9582 tokens!465)))))))))

(declare-fun b!373560 () Bool)

(declare-fun nullable!214 (Regex!1031) Bool)

(assert (=> b!373560 (= e!229710 (nullable!214 (regex!807 (rule!1452 (h!9582 tokens!465)))))))

(declare-fun b!373561 () Bool)

(declare-fun res!167282 () Bool)

(declare-fun e!229708 () Bool)

(assert (=> b!373561 (=> res!167282 e!229708)))

(assert (=> b!373561 (= res!167282 (not ((_ is ElementMatch!1031) (regex!807 (rule!1452 (h!9582 tokens!465))))))))

(declare-fun e!229706 () Bool)

(assert (=> b!373561 (= e!229706 e!229708)))

(declare-fun b!373562 () Bool)

(declare-fun e!229712 () Bool)

(declare-fun lt!162422 () Bool)

(declare-fun call!23711 () Bool)

(assert (=> b!373562 (= e!229712 (= lt!162422 call!23711))))

(declare-fun b!373563 () Bool)

(declare-fun res!167283 () Bool)

(assert (=> b!373563 (=> (not res!167283) (not e!229709))))

(assert (=> b!373563 (= res!167283 (not call!23711))))

(declare-fun b!373564 () Bool)

(assert (=> b!373564 (= e!229706 (not lt!162422))))

(declare-fun b!373565 () Bool)

(declare-fun res!167281 () Bool)

(assert (=> b!373565 (=> (not res!167281) (not e!229709))))

(assert (=> b!373565 (= res!167281 (isEmpty!2990 (tail!577 lt!162365)))))

(declare-fun b!373566 () Bool)

(declare-fun res!167279 () Bool)

(assert (=> b!373566 (=> res!167279 e!229708)))

(assert (=> b!373566 (= res!167279 e!229709)))

(declare-fun res!167278 () Bool)

(assert (=> b!373566 (=> (not res!167278) (not e!229709))))

(assert (=> b!373566 (= res!167278 lt!162422)))

(declare-fun d!131343 () Bool)

(assert (=> d!131343 e!229712))

(declare-fun c!73463 () Bool)

(assert (=> d!131343 (= c!73463 ((_ is EmptyExpr!1031) (regex!807 (rule!1452 (h!9582 tokens!465)))))))

(assert (=> d!131343 (= lt!162422 e!229710)))

(declare-fun c!73464 () Bool)

(assert (=> d!131343 (= c!73464 (isEmpty!2990 lt!162365))))

(declare-fun validRegex!289 (Regex!1031) Bool)

(assert (=> d!131343 (validRegex!289 (regex!807 (rule!1452 (h!9582 tokens!465))))))

(assert (=> d!131343 (= (matchR!349 (regex!807 (rule!1452 (h!9582 tokens!465))) lt!162365) lt!162422)))

(declare-fun b!373567 () Bool)

(assert (=> b!373567 (= e!229712 e!229706)))

(declare-fun c!73462 () Bool)

(assert (=> b!373567 (= c!73462 ((_ is EmptyLang!1031) (regex!807 (rule!1452 (h!9582 tokens!465)))))))

(declare-fun bm!23706 () Bool)

(assert (=> bm!23706 (= call!23711 (isEmpty!2990 lt!162365))))

(declare-fun b!373568 () Bool)

(declare-fun e!229711 () Bool)

(assert (=> b!373568 (= e!229708 e!229711)))

(declare-fun res!167285 () Bool)

(assert (=> b!373568 (=> (not res!167285) (not e!229711))))

(assert (=> b!373568 (= res!167285 (not lt!162422))))

(declare-fun b!373569 () Bool)

(assert (=> b!373569 (= e!229711 e!229707)))

(declare-fun res!167280 () Bool)

(assert (=> b!373569 (=> res!167280 e!229707)))

(assert (=> b!373569 (= res!167280 call!23711)))

(assert (= (and d!131343 c!73464) b!373560))

(assert (= (and d!131343 (not c!73464)) b!373556))

(assert (= (and d!131343 c!73463) b!373562))

(assert (= (and d!131343 (not c!73463)) b!373567))

(assert (= (and b!373567 c!73462) b!373564))

(assert (= (and b!373567 (not c!73462)) b!373561))

(assert (= (and b!373561 (not res!167282)) b!373566))

(assert (= (and b!373566 res!167278) b!373563))

(assert (= (and b!373563 res!167283) b!373565))

(assert (= (and b!373565 res!167281) b!373558))

(assert (= (and b!373566 (not res!167279)) b!373568))

(assert (= (and b!373568 res!167285) b!373569))

(assert (= (and b!373569 (not res!167280)) b!373557))

(assert (= (and b!373557 (not res!167284)) b!373559))

(assert (= (or b!373562 b!373563 b!373569) bm!23706))

(declare-fun m!553965 () Bool)

(assert (=> b!373557 m!553965))

(assert (=> b!373557 m!553965))

(declare-fun m!553967 () Bool)

(assert (=> b!373557 m!553967))

(declare-fun m!553969 () Bool)

(assert (=> bm!23706 m!553969))

(declare-fun m!553971 () Bool)

(assert (=> b!373559 m!553971))

(assert (=> d!131343 m!553969))

(declare-fun m!553975 () Bool)

(assert (=> d!131343 m!553975))

(declare-fun m!553977 () Bool)

(assert (=> b!373560 m!553977))

(assert (=> b!373558 m!553971))

(assert (=> b!373565 m!553965))

(assert (=> b!373565 m!553965))

(assert (=> b!373565 m!553967))

(assert (=> b!373556 m!553971))

(assert (=> b!373556 m!553971))

(declare-fun m!553979 () Bool)

(assert (=> b!373556 m!553979))

(assert (=> b!373556 m!553965))

(assert (=> b!373556 m!553979))

(assert (=> b!373556 m!553965))

(declare-fun m!553981 () Bool)

(assert (=> b!373556 m!553981))

(assert (=> b!373427 d!131343))

(declare-fun d!131349 () Bool)

(assert (=> d!131349 (= (inv!5191 (tag!1039 (rule!1452 (h!9582 tokens!465)))) (= (mod (str.len (value!27314 (tag!1039 (rule!1452 (h!9582 tokens!465))))) 2) 0))))

(assert (=> b!373448 d!131349))

(declare-fun d!131351 () Bool)

(declare-fun res!167288 () Bool)

(declare-fun e!229715 () Bool)

(assert (=> d!131351 (=> (not res!167288) (not e!229715))))

(declare-fun semiInverseModEq!311 (Int Int) Bool)

(assert (=> d!131351 (= res!167288 (semiInverseModEq!311 (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))) (toValue!1590 (transformation!807 (rule!1452 (h!9582 tokens!465))))))))

(assert (=> d!131351 (= (inv!5194 (transformation!807 (rule!1452 (h!9582 tokens!465)))) e!229715)))

(declare-fun b!373572 () Bool)

(declare-fun equivClasses!294 (Int Int) Bool)

(assert (=> b!373572 (= e!229715 (equivClasses!294 (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))) (toValue!1590 (transformation!807 (rule!1452 (h!9582 tokens!465))))))))

(assert (= (and d!131351 res!167288) b!373572))

(declare-fun m!553983 () Bool)

(assert (=> d!131351 m!553983))

(declare-fun m!553985 () Bool)

(assert (=> b!373572 m!553985))

(assert (=> b!373448 d!131351))

(declare-fun d!131353 () Bool)

(declare-fun lt!162494 () Bool)

(declare-fun e!229793 () Bool)

(assert (=> d!131353 (= lt!162494 e!229793)))

(declare-fun res!167374 () Bool)

(assert (=> d!131353 (=> (not res!167374) (not e!229793))))

(declare-fun list!1811 (BalanceConc!2882) List!4195)

(assert (=> d!131353 (= res!167374 (= (list!1811 (_1!2681 (lex!485 thiss!17480 rules!1920 (print!418 thiss!17480 (singletonSeq!353 separatorToken!170))))) (list!1811 (singletonSeq!353 separatorToken!170))))))

(declare-fun e!229794 () Bool)

(assert (=> d!131353 (= lt!162494 e!229794)))

(declare-fun res!167376 () Bool)

(assert (=> d!131353 (=> (not res!167376) (not e!229794))))

(declare-fun lt!162495 () tuple2!4930)

(assert (=> d!131353 (= res!167376 (= (size!3385 (_1!2681 lt!162495)) 1))))

(assert (=> d!131353 (= lt!162495 (lex!485 thiss!17480 rules!1920 (print!418 thiss!17480 (singletonSeq!353 separatorToken!170))))))

(assert (=> d!131353 (not (isEmpty!2994 rules!1920))))

(assert (=> d!131353 (= (rulesProduceIndividualToken!442 thiss!17480 rules!1920 separatorToken!170) lt!162494)))

(declare-fun b!373713 () Bool)

(declare-fun res!167375 () Bool)

(assert (=> b!373713 (=> (not res!167375) (not e!229794))))

(assert (=> b!373713 (= res!167375 (= (apply!978 (_1!2681 lt!162495) 0) separatorToken!170))))

(declare-fun b!373714 () Bool)

(assert (=> b!373714 (= e!229794 (isEmpty!2993 (_2!2681 lt!162495)))))

(declare-fun b!373715 () Bool)

(assert (=> b!373715 (= e!229793 (isEmpty!2993 (_2!2681 (lex!485 thiss!17480 rules!1920 (print!418 thiss!17480 (singletonSeq!353 separatorToken!170))))))))

(assert (= (and d!131353 res!167376) b!373713))

(assert (= (and b!373713 res!167375) b!373714))

(assert (= (and d!131353 res!167374) b!373715))

(assert (=> d!131353 m!553829))

(declare-fun m!554215 () Bool)

(assert (=> d!131353 m!554215))

(assert (=> d!131353 m!553829))

(declare-fun m!554217 () Bool)

(assert (=> d!131353 m!554217))

(assert (=> d!131353 m!553787))

(assert (=> d!131353 m!554215))

(declare-fun m!554219 () Bool)

(assert (=> d!131353 m!554219))

(assert (=> d!131353 m!553829))

(declare-fun m!554221 () Bool)

(assert (=> d!131353 m!554221))

(declare-fun m!554223 () Bool)

(assert (=> d!131353 m!554223))

(declare-fun m!554225 () Bool)

(assert (=> b!373713 m!554225))

(declare-fun m!554227 () Bool)

(assert (=> b!373714 m!554227))

(assert (=> b!373715 m!553829))

(assert (=> b!373715 m!553829))

(assert (=> b!373715 m!554215))

(assert (=> b!373715 m!554215))

(assert (=> b!373715 m!554219))

(declare-fun m!554229 () Bool)

(assert (=> b!373715 m!554229))

(assert (=> b!373426 d!131353))

(declare-fun b!373716 () Bool)

(declare-fun e!229799 () Bool)

(assert (=> b!373716 (= e!229799 (matchR!349 (derivativeStep!180 (regex!807 lt!162375) (head!1015 lt!162388)) (tail!577 lt!162388)))))

(declare-fun b!373717 () Bool)

(declare-fun res!167383 () Bool)

(declare-fun e!229796 () Bool)

(assert (=> b!373717 (=> res!167383 e!229796)))

(assert (=> b!373717 (= res!167383 (not (isEmpty!2990 (tail!577 lt!162388))))))

(declare-fun b!373718 () Bool)

(declare-fun e!229798 () Bool)

(assert (=> b!373718 (= e!229798 (= (head!1015 lt!162388) (c!73451 (regex!807 lt!162375))))))

(declare-fun b!373719 () Bool)

(assert (=> b!373719 (= e!229796 (not (= (head!1015 lt!162388) (c!73451 (regex!807 lt!162375)))))))

(declare-fun b!373720 () Bool)

(assert (=> b!373720 (= e!229799 (nullable!214 (regex!807 lt!162375)))))

(declare-fun b!373721 () Bool)

(declare-fun res!167381 () Bool)

(declare-fun e!229797 () Bool)

(assert (=> b!373721 (=> res!167381 e!229797)))

(assert (=> b!373721 (= res!167381 (not ((_ is ElementMatch!1031) (regex!807 lt!162375))))))

(declare-fun e!229795 () Bool)

(assert (=> b!373721 (= e!229795 e!229797)))

(declare-fun b!373722 () Bool)

(declare-fun e!229801 () Bool)

(declare-fun lt!162496 () Bool)

(declare-fun call!23719 () Bool)

(assert (=> b!373722 (= e!229801 (= lt!162496 call!23719))))

(declare-fun b!373723 () Bool)

(declare-fun res!167382 () Bool)

(assert (=> b!373723 (=> (not res!167382) (not e!229798))))

(assert (=> b!373723 (= res!167382 (not call!23719))))

(declare-fun b!373724 () Bool)

(assert (=> b!373724 (= e!229795 (not lt!162496))))

(declare-fun b!373725 () Bool)

(declare-fun res!167380 () Bool)

(assert (=> b!373725 (=> (not res!167380) (not e!229798))))

(assert (=> b!373725 (= res!167380 (isEmpty!2990 (tail!577 lt!162388)))))

(declare-fun b!373726 () Bool)

(declare-fun res!167378 () Bool)

(assert (=> b!373726 (=> res!167378 e!229797)))

(assert (=> b!373726 (= res!167378 e!229798)))

(declare-fun res!167377 () Bool)

(assert (=> b!373726 (=> (not res!167377) (not e!229798))))

(assert (=> b!373726 (= res!167377 lt!162496)))

(declare-fun d!131395 () Bool)

(assert (=> d!131395 e!229801))

(declare-fun c!73494 () Bool)

(assert (=> d!131395 (= c!73494 ((_ is EmptyExpr!1031) (regex!807 lt!162375)))))

(assert (=> d!131395 (= lt!162496 e!229799)))

(declare-fun c!73495 () Bool)

(assert (=> d!131395 (= c!73495 (isEmpty!2990 lt!162388))))

(assert (=> d!131395 (validRegex!289 (regex!807 lt!162375))))

(assert (=> d!131395 (= (matchR!349 (regex!807 lt!162375) lt!162388) lt!162496)))

(declare-fun b!373727 () Bool)

(assert (=> b!373727 (= e!229801 e!229795)))

(declare-fun c!73493 () Bool)

(assert (=> b!373727 (= c!73493 ((_ is EmptyLang!1031) (regex!807 lt!162375)))))

(declare-fun bm!23714 () Bool)

(assert (=> bm!23714 (= call!23719 (isEmpty!2990 lt!162388))))

(declare-fun b!373728 () Bool)

(declare-fun e!229800 () Bool)

(assert (=> b!373728 (= e!229797 e!229800)))

(declare-fun res!167384 () Bool)

(assert (=> b!373728 (=> (not res!167384) (not e!229800))))

(assert (=> b!373728 (= res!167384 (not lt!162496))))

(declare-fun b!373729 () Bool)

(assert (=> b!373729 (= e!229800 e!229796)))

(declare-fun res!167379 () Bool)

(assert (=> b!373729 (=> res!167379 e!229796)))

(assert (=> b!373729 (= res!167379 call!23719)))

(assert (= (and d!131395 c!73495) b!373720))

(assert (= (and d!131395 (not c!73495)) b!373716))

(assert (= (and d!131395 c!73494) b!373722))

(assert (= (and d!131395 (not c!73494)) b!373727))

(assert (= (and b!373727 c!73493) b!373724))

(assert (= (and b!373727 (not c!73493)) b!373721))

(assert (= (and b!373721 (not res!167381)) b!373726))

(assert (= (and b!373726 res!167377) b!373723))

(assert (= (and b!373723 res!167382) b!373725))

(assert (= (and b!373725 res!167380) b!373718))

(assert (= (and b!373726 (not res!167378)) b!373728))

(assert (= (and b!373728 res!167384) b!373729))

(assert (= (and b!373729 (not res!167379)) b!373717))

(assert (= (and b!373717 (not res!167383)) b!373719))

(assert (= (or b!373722 b!373723 b!373729) bm!23714))

(declare-fun m!554231 () Bool)

(assert (=> b!373717 m!554231))

(assert (=> b!373717 m!554231))

(declare-fun m!554233 () Bool)

(assert (=> b!373717 m!554233))

(declare-fun m!554235 () Bool)

(assert (=> bm!23714 m!554235))

(declare-fun m!554237 () Bool)

(assert (=> b!373719 m!554237))

(assert (=> d!131395 m!554235))

(declare-fun m!554239 () Bool)

(assert (=> d!131395 m!554239))

(declare-fun m!554241 () Bool)

(assert (=> b!373720 m!554241))

(assert (=> b!373718 m!554237))

(assert (=> b!373725 m!554231))

(assert (=> b!373725 m!554231))

(assert (=> b!373725 m!554233))

(assert (=> b!373716 m!554237))

(assert (=> b!373716 m!554237))

(declare-fun m!554243 () Bool)

(assert (=> b!373716 m!554243))

(assert (=> b!373716 m!554231))

(assert (=> b!373716 m!554243))

(assert (=> b!373716 m!554231))

(declare-fun m!554245 () Bool)

(assert (=> b!373716 m!554245))

(assert (=> b!373428 d!131395))

(declare-fun d!131397 () Bool)

(assert (=> d!131397 (= (get!1468 lt!162395) (v!15135 lt!162395))))

(assert (=> b!373428 d!131397))

(declare-fun d!131399 () Bool)

(assert (=> d!131399 (= (get!1469 lt!162380) (v!15137 lt!162380))))

(assert (=> b!373449 d!131399))

(declare-fun d!131401 () Bool)

(assert (=> d!131401 (= (head!1016 tokens!465) (h!9582 tokens!465))))

(assert (=> b!373449 d!131401))

(declare-fun d!131403 () Bool)

(declare-fun lt!162505 () Token!1358)

(declare-fun apply!982 (List!4195 Int) Token!1358)

(assert (=> d!131403 (= lt!162505 (apply!982 (list!1811 (_1!2681 lt!162362)) 0))))

(declare-fun apply!983 (Conc!1437 Int) Token!1358)

(assert (=> d!131403 (= lt!162505 (apply!983 (c!73452 (_1!2681 lt!162362)) 0))))

(declare-fun e!229808 () Bool)

(assert (=> d!131403 e!229808))

(declare-fun res!167387 () Bool)

(assert (=> d!131403 (=> (not res!167387) (not e!229808))))

(assert (=> d!131403 (= res!167387 (<= 0 0))))

(assert (=> d!131403 (= (apply!978 (_1!2681 lt!162362) 0) lt!162505)))

(declare-fun b!373740 () Bool)

(assert (=> b!373740 (= e!229808 (< 0 (size!3385 (_1!2681 lt!162362))))))

(assert (= (and d!131403 res!167387) b!373740))

(declare-fun m!554247 () Bool)

(assert (=> d!131403 m!554247))

(assert (=> d!131403 m!554247))

(declare-fun m!554249 () Bool)

(assert (=> d!131403 m!554249))

(declare-fun m!554251 () Bool)

(assert (=> d!131403 m!554251))

(assert (=> b!373740 m!553851))

(assert (=> b!373445 d!131403))

(declare-fun d!131405 () Bool)

(declare-fun lt!162506 () Token!1358)

(assert (=> d!131405 (= lt!162506 (apply!982 (list!1811 (_1!2681 lt!162376)) 0))))

(assert (=> d!131405 (= lt!162506 (apply!983 (c!73452 (_1!2681 lt!162376)) 0))))

(declare-fun e!229813 () Bool)

(assert (=> d!131405 e!229813))

(declare-fun res!167392 () Bool)

(assert (=> d!131405 (=> (not res!167392) (not e!229813))))

(assert (=> d!131405 (= res!167392 (<= 0 0))))

(assert (=> d!131405 (= (apply!978 (_1!2681 lt!162376) 0) lt!162506)))

(declare-fun b!373745 () Bool)

(assert (=> b!373745 (= e!229813 (< 0 (size!3385 (_1!2681 lt!162376))))))

(assert (= (and d!131405 res!167392) b!373745))

(declare-fun m!554253 () Bool)

(assert (=> d!131405 m!554253))

(assert (=> d!131405 m!554253))

(declare-fun m!554255 () Bool)

(assert (=> d!131405 m!554255))

(declare-fun m!554257 () Bool)

(assert (=> d!131405 m!554257))

(assert (=> b!373745 m!553875))

(assert (=> b!373425 d!131405))

(declare-fun d!131407 () Bool)

(assert (=> d!131407 (= (list!1807 (printWithSeparatorTokenWhenNeededRec!366 thiss!17480 rules!1920 lt!162381 separatorToken!170 0)) (list!1810 (c!73450 (printWithSeparatorTokenWhenNeededRec!366 thiss!17480 rules!1920 lt!162381 separatorToken!170 0))))))

(declare-fun bs!45270 () Bool)

(assert (= bs!45270 d!131407))

(declare-fun m!554259 () Bool)

(assert (=> bs!45270 m!554259))

(assert (=> b!373443 d!131407))

(declare-fun bs!45275 () Bool)

(declare-fun d!131409 () Bool)

(assert (= bs!45275 (and d!131409 b!373423)))

(declare-fun lambda!11638 () Int)

(assert (=> bs!45275 (= lambda!11638 lambda!11627)))

(declare-fun bs!45276 () Bool)

(assert (= bs!45276 (and d!131409 b!373436)))

(assert (=> bs!45276 (not (= lambda!11638 lambda!11628))))

(declare-fun bs!45277 () Bool)

(declare-fun b!373812 () Bool)

(assert (= bs!45277 (and b!373812 b!373423)))

(declare-fun lambda!11639 () Int)

(assert (=> bs!45277 (not (= lambda!11639 lambda!11627))))

(declare-fun bs!45278 () Bool)

(assert (= bs!45278 (and b!373812 b!373436)))

(assert (=> bs!45278 (= lambda!11639 lambda!11628)))

(declare-fun bs!45279 () Bool)

(assert (= bs!45279 (and b!373812 d!131409)))

(assert (=> bs!45279 (not (= lambda!11639 lambda!11638))))

(declare-fun b!373815 () Bool)

(declare-fun e!229861 () Bool)

(assert (=> b!373815 (= e!229861 true)))

(declare-fun b!373814 () Bool)

(declare-fun e!229860 () Bool)

(assert (=> b!373814 (= e!229860 e!229861)))

(declare-fun b!373813 () Bool)

(declare-fun e!229859 () Bool)

(assert (=> b!373813 (= e!229859 e!229860)))

(assert (=> b!373812 e!229859))

(assert (= b!373814 b!373815))

(assert (= b!373813 b!373814))

(assert (= (and b!373812 ((_ is Cons!4184) rules!1920)) b!373813))

(assert (=> b!373815 (< (dynLambda!2393 order!3517 (toValue!1590 (transformation!807 (h!9581 rules!1920)))) (dynLambda!2394 order!3519 lambda!11639))))

(assert (=> b!373815 (< (dynLambda!2395 order!3521 (toChars!1449 (transformation!807 (h!9581 rules!1920)))) (dynLambda!2394 order!3519 lambda!11639))))

(assert (=> b!373812 true))

(declare-fun b!373804 () Bool)

(declare-fun e!229856 () Bool)

(declare-fun lt!162565 () Option!1004)

(assert (=> b!373804 (= e!229856 (= (_1!2683 (v!15136 lt!162565)) (apply!978 lt!162381 0)))))

(declare-fun b!373805 () Bool)

(declare-fun e!229853 () Bool)

(assert (=> b!373805 (= e!229853 (<= 0 (size!3385 lt!162381)))))

(declare-fun b!373806 () Bool)

(declare-fun e!229854 () BalanceConc!2880)

(declare-fun call!23733 () BalanceConc!2880)

(declare-fun lt!162570 () BalanceConc!2880)

(declare-fun ++!1172 (BalanceConc!2880 BalanceConc!2880) BalanceConc!2880)

(assert (=> b!373806 (= e!229854 (++!1172 call!23733 lt!162570))))

(declare-fun bm!23725 () Bool)

(declare-fun call!23730 () Token!1358)

(declare-fun call!23731 () Token!1358)

(assert (=> bm!23725 (= call!23730 call!23731)))

(declare-fun b!373807 () Bool)

(declare-fun e!229857 () Bool)

(assert (=> b!373807 (= e!229857 (not (= (_1!2683 (v!15136 lt!162565)) call!23731)))))

(declare-fun c!73509 () Bool)

(declare-fun bm!23726 () Bool)

(declare-fun call!23732 () BalanceConc!2880)

(assert (=> bm!23726 (= call!23732 (charsOf!450 (ite c!73509 call!23731 call!23730)))))

(declare-fun b!373808 () Bool)

(assert (=> b!373808 (= e!229854 (BalanceConc!2881 Empty!1436))))

(assert (=> b!373808 (= (print!418 thiss!17480 (singletonSeq!353 call!23730)) (printTailRec!379 thiss!17480 (singletonSeq!353 call!23730) 0 (BalanceConc!2881 Empty!1436)))))

(declare-fun lt!162563 () Unit!6646)

(declare-fun Unit!6652 () Unit!6646)

(assert (=> b!373808 (= lt!162563 Unit!6652)))

(declare-fun call!23734 () BalanceConc!2880)

(declare-fun lt!162568 () Unit!6646)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!161 (LexerInterface!693 List!4194 List!4193 List!4193) Unit!6646)

(assert (=> b!373808 (= lt!162568 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!161 thiss!17480 rules!1920 (list!1807 call!23734) (list!1807 lt!162570)))))

(assert (=> b!373808 false))

(declare-fun lt!162561 () Unit!6646)

(declare-fun Unit!6653 () Unit!6646)

(assert (=> b!373808 (= lt!162561 Unit!6653)))

(declare-fun lt!162566 () BalanceConc!2880)

(declare-fun dropList!214 (BalanceConc!2882 Int) List!4195)

(assert (=> d!131409 (= (list!1807 lt!162566) (printWithSeparatorTokenWhenNeededList!374 thiss!17480 rules!1920 (dropList!214 lt!162381 0) separatorToken!170))))

(declare-fun e!229858 () BalanceConc!2880)

(assert (=> d!131409 (= lt!162566 e!229858)))

(declare-fun c!73511 () Bool)

(assert (=> d!131409 (= c!73511 (>= 0 (size!3385 lt!162381)))))

(declare-fun lt!162572 () Unit!6646)

(declare-fun lemmaContentSubsetPreservesForall!157 (List!4195 List!4195 Int) Unit!6646)

(assert (=> d!131409 (= lt!162572 (lemmaContentSubsetPreservesForall!157 (list!1811 lt!162381) (dropList!214 lt!162381 0) lambda!11638))))

(assert (=> d!131409 e!229853))

(declare-fun res!167432 () Bool)

(assert (=> d!131409 (=> (not res!167432) (not e!229853))))

(assert (=> d!131409 (= res!167432 (>= 0 0))))

(assert (=> d!131409 (= (printWithSeparatorTokenWhenNeededRec!366 thiss!17480 rules!1920 lt!162381 separatorToken!170 0) lt!162566)))

(declare-fun b!373809 () Bool)

(assert (=> b!373809 (= e!229858 (BalanceConc!2881 Empty!1436))))

(declare-fun b!373810 () Bool)

(declare-fun c!73510 () Bool)

(assert (=> b!373810 (= c!73510 e!229857)))

(declare-fun res!167434 () Bool)

(assert (=> b!373810 (=> (not res!167434) (not e!229857))))

(assert (=> b!373810 (= res!167434 ((_ is Some!1003) lt!162565))))

(declare-fun e!229855 () BalanceConc!2880)

(assert (=> b!373810 (= e!229855 e!229854)))

(declare-fun bm!23727 () Bool)

(assert (=> bm!23727 (= call!23733 (++!1172 call!23732 (ite c!73509 lt!162570 call!23734)))))

(declare-fun bm!23728 () Bool)

(assert (=> bm!23728 (= call!23731 (apply!978 lt!162381 0))))

(declare-fun b!373811 () Bool)

(assert (=> b!373811 (= e!229855 call!23733)))

(declare-fun bm!23729 () Bool)

(assert (=> bm!23729 (= call!23734 (charsOf!450 (ite c!73510 separatorToken!170 call!23730)))))

(assert (=> b!373812 (= e!229858 e!229855)))

(declare-fun lt!162564 () List!4195)

(assert (=> b!373812 (= lt!162564 (list!1811 lt!162381))))

(declare-fun lt!162571 () Unit!6646)

(declare-fun lemmaDropApply!254 (List!4195 Int) Unit!6646)

(assert (=> b!373812 (= lt!162571 (lemmaDropApply!254 lt!162564 0))))

(declare-fun drop!277 (List!4195 Int) List!4195)

(assert (=> b!373812 (= (head!1016 (drop!277 lt!162564 0)) (apply!982 lt!162564 0))))

(declare-fun lt!162560 () Unit!6646)

(assert (=> b!373812 (= lt!162560 lt!162571)))

(declare-fun lt!162567 () List!4195)

(assert (=> b!373812 (= lt!162567 (list!1811 lt!162381))))

(declare-fun lt!162573 () Unit!6646)

(declare-fun lemmaDropTail!246 (List!4195 Int) Unit!6646)

(assert (=> b!373812 (= lt!162573 (lemmaDropTail!246 lt!162567 0))))

(declare-fun tail!578 (List!4195) List!4195)

(assert (=> b!373812 (= (tail!578 (drop!277 lt!162567 0)) (drop!277 lt!162567 (+ 0 1)))))

(declare-fun lt!162569 () Unit!6646)

(assert (=> b!373812 (= lt!162569 lt!162573)))

(declare-fun lt!162562 () Unit!6646)

(assert (=> b!373812 (= lt!162562 (forallContained!360 (list!1811 lt!162381) lambda!11639 (apply!978 lt!162381 0)))))

(assert (=> b!373812 (= lt!162570 (printWithSeparatorTokenWhenNeededRec!366 thiss!17480 rules!1920 lt!162381 separatorToken!170 (+ 0 1)))))

(assert (=> b!373812 (= lt!162565 (maxPrefixZipperSequence!372 thiss!17480 rules!1920 (++!1172 (charsOf!450 (apply!978 lt!162381 0)) lt!162570)))))

(declare-fun res!167433 () Bool)

(assert (=> b!373812 (= res!167433 ((_ is Some!1003) lt!162565))))

(assert (=> b!373812 (=> (not res!167433) (not e!229856))))

(assert (=> b!373812 (= c!73509 e!229856)))

(assert (= (and d!131409 res!167432) b!373805))

(assert (= (and d!131409 c!73511) b!373809))

(assert (= (and d!131409 (not c!73511)) b!373812))

(assert (= (and b!373812 res!167433) b!373804))

(assert (= (and b!373812 c!73509) b!373811))

(assert (= (and b!373812 (not c!73509)) b!373810))

(assert (= (and b!373810 res!167434) b!373807))

(assert (= (and b!373810 c!73510) b!373806))

(assert (= (and b!373810 (not c!73510)) b!373808))

(assert (= (or b!373806 b!373808) bm!23725))

(assert (= (or b!373806 b!373808) bm!23729))

(assert (= (or b!373811 bm!23725 b!373807) bm!23728))

(assert (= (or b!373811 b!373806) bm!23726))

(assert (= (or b!373811 b!373806) bm!23727))

(declare-fun m!554361 () Bool)

(assert (=> b!373804 m!554361))

(declare-fun m!554363 () Bool)

(assert (=> b!373806 m!554363))

(declare-fun m!554365 () Bool)

(assert (=> bm!23729 m!554365))

(declare-fun m!554367 () Bool)

(assert (=> b!373808 m!554367))

(declare-fun m!554369 () Bool)

(assert (=> b!373808 m!554369))

(declare-fun m!554371 () Bool)

(assert (=> b!373808 m!554371))

(assert (=> b!373808 m!554367))

(declare-fun m!554373 () Bool)

(assert (=> b!373808 m!554373))

(assert (=> b!373808 m!554367))

(declare-fun m!554375 () Bool)

(assert (=> b!373808 m!554375))

(assert (=> b!373808 m!554369))

(assert (=> b!373808 m!554371))

(declare-fun m!554377 () Bool)

(assert (=> b!373808 m!554377))

(declare-fun m!554379 () Bool)

(assert (=> bm!23726 m!554379))

(assert (=> bm!23728 m!554361))

(declare-fun m!554381 () Bool)

(assert (=> b!373812 m!554381))

(declare-fun m!554383 () Bool)

(assert (=> b!373812 m!554383))

(declare-fun m!554385 () Bool)

(assert (=> b!373812 m!554385))

(declare-fun m!554387 () Bool)

(assert (=> b!373812 m!554387))

(declare-fun m!554389 () Bool)

(assert (=> b!373812 m!554389))

(declare-fun m!554391 () Bool)

(assert (=> b!373812 m!554391))

(declare-fun m!554393 () Bool)

(assert (=> b!373812 m!554393))

(declare-fun m!554395 () Bool)

(assert (=> b!373812 m!554395))

(declare-fun m!554397 () Bool)

(assert (=> b!373812 m!554397))

(assert (=> b!373812 m!554361))

(assert (=> b!373812 m!554387))

(declare-fun m!554399 () Bool)

(assert (=> b!373812 m!554399))

(assert (=> b!373812 m!554361))

(declare-fun m!554401 () Bool)

(assert (=> b!373812 m!554401))

(declare-fun m!554403 () Bool)

(assert (=> b!373812 m!554403))

(assert (=> b!373812 m!554389))

(declare-fun m!554405 () Bool)

(assert (=> b!373812 m!554405))

(assert (=> b!373812 m!554381))

(assert (=> b!373812 m!554361))

(assert (=> b!373812 m!554399))

(assert (=> b!373812 m!554397))

(declare-fun m!554407 () Bool)

(assert (=> b!373812 m!554407))

(declare-fun m!554409 () Bool)

(assert (=> b!373805 m!554409))

(declare-fun m!554411 () Bool)

(assert (=> d!131409 m!554411))

(assert (=> d!131409 m!554399))

(assert (=> d!131409 m!554411))

(declare-fun m!554413 () Bool)

(assert (=> d!131409 m!554413))

(assert (=> d!131409 m!554399))

(assert (=> d!131409 m!554411))

(declare-fun m!554415 () Bool)

(assert (=> d!131409 m!554415))

(declare-fun m!554417 () Bool)

(assert (=> d!131409 m!554417))

(assert (=> d!131409 m!554409))

(declare-fun m!554419 () Bool)

(assert (=> bm!23727 m!554419))

(assert (=> b!373443 d!131409))

(declare-fun bs!45285 () Bool)

(declare-fun b!373876 () Bool)

(assert (= bs!45285 (and b!373876 b!373423)))

(declare-fun lambda!11642 () Int)

(assert (=> bs!45285 (not (= lambda!11642 lambda!11627))))

(declare-fun bs!45286 () Bool)

(assert (= bs!45286 (and b!373876 b!373436)))

(assert (=> bs!45286 (= lambda!11642 lambda!11628)))

(declare-fun bs!45287 () Bool)

(assert (= bs!45287 (and b!373876 d!131409)))

(assert (=> bs!45287 (not (= lambda!11642 lambda!11638))))

(declare-fun bs!45288 () Bool)

(assert (= bs!45288 (and b!373876 b!373812)))

(assert (=> bs!45288 (= lambda!11642 lambda!11639)))

(declare-fun b!373881 () Bool)

(declare-fun e!229901 () Bool)

(assert (=> b!373881 (= e!229901 true)))

(declare-fun b!373880 () Bool)

(declare-fun e!229900 () Bool)

(assert (=> b!373880 (= e!229900 e!229901)))

(declare-fun b!373879 () Bool)

(declare-fun e!229899 () Bool)

(assert (=> b!373879 (= e!229899 e!229900)))

(assert (=> b!373876 e!229899))

(assert (= b!373880 b!373881))

(assert (= b!373879 b!373880))

(assert (= (and b!373876 ((_ is Cons!4184) rules!1920)) b!373879))

(assert (=> b!373881 (< (dynLambda!2393 order!3517 (toValue!1590 (transformation!807 (h!9581 rules!1920)))) (dynLambda!2394 order!3519 lambda!11642))))

(assert (=> b!373881 (< (dynLambda!2395 order!3521 (toChars!1449 (transformation!807 (h!9581 rules!1920)))) (dynLambda!2394 order!3519 lambda!11642))))

(assert (=> b!373876 true))

(declare-fun bm!23752 () Bool)

(declare-fun call!23760 () BalanceConc!2880)

(declare-fun call!23758 () List!4193)

(declare-fun call!23757 () BalanceConc!2880)

(declare-fun c!73534 () Bool)

(assert (=> bm!23752 (= call!23758 (list!1807 (ite c!73534 call!23760 call!23757)))))

(declare-fun bm!23753 () Bool)

(assert (=> bm!23753 (= call!23757 call!23760)))

(declare-fun b!373871 () Bool)

(declare-fun e!229898 () List!4193)

(declare-fun call!23759 () List!4193)

(declare-fun lt!162606 () List!4193)

(assert (=> b!373871 (= e!229898 (++!1170 call!23759 lt!162606))))

(declare-fun b!373872 () Bool)

(declare-fun e!229895 () BalanceConc!2880)

(assert (=> b!373872 (= e!229895 call!23757)))

(declare-fun bm!23754 () Bool)

(assert (=> bm!23754 (= call!23760 (charsOf!450 (h!9582 tokens!465)))))

(declare-fun b!373873 () Bool)

(declare-fun e!229896 () List!4193)

(assert (=> b!373873 (= e!229896 Nil!4183)))

(declare-fun b!373874 () Bool)

(assert (=> b!373874 (= e!229895 (charsOf!450 separatorToken!170))))

(declare-fun bm!23755 () Bool)

(declare-fun call!23761 () List!4193)

(assert (=> bm!23755 (= call!23761 (list!1807 e!229895))))

(declare-fun c!73537 () Bool)

(declare-fun c!73536 () Bool)

(assert (=> bm!23755 (= c!73537 c!73536)))

(declare-fun e!229897 () List!4193)

(assert (=> b!373876 (= e!229896 e!229897)))

(declare-fun lt!162607 () Unit!6646)

(assert (=> b!373876 (= lt!162607 (forallContained!360 tokens!465 lambda!11642 (h!9582 tokens!465)))))

(assert (=> b!373876 (= lt!162606 (printWithSeparatorTokenWhenNeededList!374 thiss!17480 rules!1920 (t!57353 tokens!465) separatorToken!170))))

(declare-fun lt!162602 () Option!1005)

(assert (=> b!373876 (= lt!162602 (maxPrefix!409 thiss!17480 rules!1920 (++!1170 (list!1807 (charsOf!450 (h!9582 tokens!465))) lt!162606)))))

(assert (=> b!373876 (= c!73534 (and ((_ is Some!1004) lt!162602) (= (_1!2682 (v!15137 lt!162602)) (h!9582 tokens!465))))))

(declare-fun b!373877 () Bool)

(assert (=> b!373877 (= c!73536 (and ((_ is Some!1004) lt!162602) (not (= (_1!2682 (v!15137 lt!162602)) (h!9582 tokens!465)))))))

(assert (=> b!373877 (= e!229897 e!229898)))

(declare-fun bm!23756 () Bool)

(assert (=> bm!23756 (= call!23759 (++!1170 call!23758 (ite c!73534 lt!162606 call!23761)))))

(declare-fun b!373878 () Bool)

(assert (=> b!373878 (= e!229898 Nil!4183)))

(assert (=> b!373878 (= (print!418 thiss!17480 (singletonSeq!353 (h!9582 tokens!465))) (printTailRec!379 thiss!17480 (singletonSeq!353 (h!9582 tokens!465)) 0 (BalanceConc!2881 Empty!1436)))))

(declare-fun lt!162603 () Unit!6646)

(declare-fun Unit!6654 () Unit!6646)

(assert (=> b!373878 (= lt!162603 Unit!6654)))

(declare-fun lt!162604 () Unit!6646)

(assert (=> b!373878 (= lt!162604 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!161 thiss!17480 rules!1920 call!23761 lt!162606))))

(assert (=> b!373878 false))

(declare-fun lt!162605 () Unit!6646)

(declare-fun Unit!6655 () Unit!6646)

(assert (=> b!373878 (= lt!162605 Unit!6655)))

(declare-fun d!131435 () Bool)

(declare-fun c!73535 () Bool)

(assert (=> d!131435 (= c!73535 ((_ is Cons!4185) tokens!465))))

(assert (=> d!131435 (= (printWithSeparatorTokenWhenNeededList!374 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!229896)))

(declare-fun b!373875 () Bool)

(assert (=> b!373875 (= e!229897 call!23759)))

(assert (= (and d!131435 c!73535) b!373876))

(assert (= (and d!131435 (not c!73535)) b!373873))

(assert (= (and b!373876 c!73534) b!373875))

(assert (= (and b!373876 (not c!73534)) b!373877))

(assert (= (and b!373877 c!73536) b!373871))

(assert (= (and b!373877 (not c!73536)) b!373878))

(assert (= (or b!373871 b!373878) bm!23753))

(assert (= (or b!373871 b!373878) bm!23755))

(assert (= (and bm!23755 c!73537) b!373874))

(assert (= (and bm!23755 (not c!73537)) b!373872))

(assert (= (or b!373875 bm!23753) bm!23754))

(assert (= (or b!373875 b!373871) bm!23752))

(assert (= (or b!373875 b!373871) bm!23756))

(declare-fun m!554463 () Bool)

(assert (=> bm!23752 m!554463))

(assert (=> b!373874 m!553731))

(assert (=> b!373876 m!553747))

(declare-fun m!554465 () Bool)

(assert (=> b!373876 m!554465))

(assert (=> b!373876 m!553743))

(declare-fun m!554467 () Bool)

(assert (=> b!373876 m!554467))

(assert (=> b!373876 m!553743))

(assert (=> b!373876 m!553747))

(assert (=> b!373876 m!554465))

(declare-fun m!554469 () Bool)

(assert (=> b!373876 m!554469))

(assert (=> b!373876 m!553729))

(declare-fun m!554471 () Bool)

(assert (=> b!373871 m!554471))

(declare-fun m!554473 () Bool)

(assert (=> bm!23756 m!554473))

(assert (=> b!373878 m!553799))

(assert (=> b!373878 m!553799))

(declare-fun m!554475 () Bool)

(assert (=> b!373878 m!554475))

(assert (=> b!373878 m!553799))

(declare-fun m!554477 () Bool)

(assert (=> b!373878 m!554477))

(declare-fun m!554479 () Bool)

(assert (=> b!373878 m!554479))

(declare-fun m!554481 () Bool)

(assert (=> bm!23755 m!554481))

(assert (=> bm!23754 m!553743))

(assert (=> b!373443 d!131435))

(declare-fun d!131461 () Bool)

(declare-fun lt!162608 () Bool)

(declare-fun e!229902 () Bool)

(assert (=> d!131461 (= lt!162608 e!229902)))

(declare-fun res!167446 () Bool)

(assert (=> d!131461 (=> (not res!167446) (not e!229902))))

(assert (=> d!131461 (= res!167446 (= (list!1811 (_1!2681 (lex!485 thiss!17480 rules!1920 (print!418 thiss!17480 (singletonSeq!353 (h!9582 tokens!465)))))) (list!1811 (singletonSeq!353 (h!9582 tokens!465)))))))

(declare-fun e!229903 () Bool)

(assert (=> d!131461 (= lt!162608 e!229903)))

(declare-fun res!167448 () Bool)

(assert (=> d!131461 (=> (not res!167448) (not e!229903))))

(declare-fun lt!162609 () tuple2!4930)

(assert (=> d!131461 (= res!167448 (= (size!3385 (_1!2681 lt!162609)) 1))))

(assert (=> d!131461 (= lt!162609 (lex!485 thiss!17480 rules!1920 (print!418 thiss!17480 (singletonSeq!353 (h!9582 tokens!465)))))))

(assert (=> d!131461 (not (isEmpty!2994 rules!1920))))

(assert (=> d!131461 (= (rulesProduceIndividualToken!442 thiss!17480 rules!1920 (h!9582 tokens!465)) lt!162608)))

(declare-fun b!373882 () Bool)

(declare-fun res!167447 () Bool)

(assert (=> b!373882 (=> (not res!167447) (not e!229903))))

(assert (=> b!373882 (= res!167447 (= (apply!978 (_1!2681 lt!162609) 0) (h!9582 tokens!465)))))

(declare-fun b!373883 () Bool)

(assert (=> b!373883 (= e!229903 (isEmpty!2993 (_2!2681 lt!162609)))))

(declare-fun b!373884 () Bool)

(assert (=> b!373884 (= e!229902 (isEmpty!2993 (_2!2681 (lex!485 thiss!17480 rules!1920 (print!418 thiss!17480 (singletonSeq!353 (h!9582 tokens!465)))))))))

(assert (= (and d!131461 res!167448) b!373882))

(assert (= (and b!373882 res!167447) b!373883))

(assert (= (and d!131461 res!167446) b!373884))

(assert (=> d!131461 m!553799))

(assert (=> d!131461 m!554475))

(assert (=> d!131461 m!553799))

(declare-fun m!554483 () Bool)

(assert (=> d!131461 m!554483))

(assert (=> d!131461 m!553787))

(assert (=> d!131461 m!554475))

(declare-fun m!554485 () Bool)

(assert (=> d!131461 m!554485))

(assert (=> d!131461 m!553799))

(declare-fun m!554487 () Bool)

(assert (=> d!131461 m!554487))

(declare-fun m!554489 () Bool)

(assert (=> d!131461 m!554489))

(declare-fun m!554491 () Bool)

(assert (=> b!373882 m!554491))

(declare-fun m!554493 () Bool)

(assert (=> b!373883 m!554493))

(assert (=> b!373884 m!553799))

(assert (=> b!373884 m!553799))

(assert (=> b!373884 m!554475))

(assert (=> b!373884 m!554475))

(assert (=> b!373884 m!554485))

(declare-fun m!554495 () Bool)

(assert (=> b!373884 m!554495))

(assert (=> b!373464 d!131461))

(declare-fun d!131463 () Bool)

(declare-fun e!229906 () Bool)

(assert (=> d!131463 e!229906))

(declare-fun res!167451 () Bool)

(assert (=> d!131463 (=> (not res!167451) (not e!229906))))

(declare-fun lt!162612 () BalanceConc!2882)

(assert (=> d!131463 (= res!167451 (= (list!1811 lt!162612) (Cons!4185 lt!162396 Nil!4185)))))

(declare-fun singleton!164 (Token!1358) BalanceConc!2882)

(assert (=> d!131463 (= lt!162612 (singleton!164 lt!162396))))

(assert (=> d!131463 (= (singletonSeq!353 lt!162396) lt!162612)))

(declare-fun b!373887 () Bool)

(declare-fun isBalanced!425 (Conc!1437) Bool)

(assert (=> b!373887 (= e!229906 (isBalanced!425 (c!73452 lt!162612)))))

(assert (= (and d!131463 res!167451) b!373887))

(declare-fun m!554497 () Bool)

(assert (=> d!131463 m!554497))

(declare-fun m!554499 () Bool)

(assert (=> d!131463 m!554499))

(declare-fun m!554501 () Bool)

(assert (=> b!373887 m!554501))

(assert (=> b!373442 d!131463))

(declare-fun d!131465 () Bool)

(declare-fun e!229907 () Bool)

(assert (=> d!131465 e!229907))

(declare-fun res!167452 () Bool)

(assert (=> d!131465 (=> (not res!167452) (not e!229907))))

(declare-fun lt!162613 () BalanceConc!2882)

(assert (=> d!131465 (= res!167452 (= (list!1811 lt!162613) (Cons!4185 separatorToken!170 Nil!4185)))))

(assert (=> d!131465 (= lt!162613 (singleton!164 separatorToken!170))))

(assert (=> d!131465 (= (singletonSeq!353 separatorToken!170) lt!162613)))

(declare-fun b!373888 () Bool)

(assert (=> b!373888 (= e!229907 (isBalanced!425 (c!73452 lt!162613)))))

(assert (= (and d!131465 res!167452) b!373888))

(declare-fun m!554503 () Bool)

(assert (=> d!131465 m!554503))

(declare-fun m!554505 () Bool)

(assert (=> d!131465 m!554505))

(declare-fun m!554507 () Bool)

(assert (=> b!373888 m!554507))

(assert (=> b!373442 d!131465))

(declare-fun b!373907 () Bool)

(declare-fun e!229915 () Option!1005)

(declare-fun lt!162625 () Option!1005)

(declare-fun lt!162627 () Option!1005)

(assert (=> b!373907 (= e!229915 (ite (and ((_ is None!1004) lt!162625) ((_ is None!1004) lt!162627)) None!1004 (ite ((_ is None!1004) lt!162627) lt!162625 (ite ((_ is None!1004) lt!162625) lt!162627 (ite (>= (size!3384 (_1!2682 (v!15137 lt!162625))) (size!3384 (_1!2682 (v!15137 lt!162627)))) lt!162625 lt!162627)))))))

(declare-fun call!23764 () Option!1005)

(assert (=> b!373907 (= lt!162625 call!23764)))

(assert (=> b!373907 (= lt!162627 (maxPrefix!409 thiss!17480 (t!57352 rules!1920) lt!162371))))

(declare-fun b!373908 () Bool)

(declare-fun res!167473 () Bool)

(declare-fun e!229914 () Bool)

(assert (=> b!373908 (=> (not res!167473) (not e!229914))))

(declare-fun lt!162624 () Option!1005)

(assert (=> b!373908 (= res!167473 (= (list!1807 (charsOf!450 (_1!2682 (get!1469 lt!162624)))) (originalCharacters!850 (_1!2682 (get!1469 lt!162624)))))))

(declare-fun b!373909 () Bool)

(declare-fun res!167470 () Bool)

(assert (=> b!373909 (=> (not res!167470) (not e!229914))))

(assert (=> b!373909 (= res!167470 (< (size!3388 (_2!2682 (get!1469 lt!162624))) (size!3388 lt!162371)))))

(declare-fun b!373910 () Bool)

(declare-fun res!167467 () Bool)

(assert (=> b!373910 (=> (not res!167467) (not e!229914))))

(assert (=> b!373910 (= res!167467 (= (++!1170 (list!1807 (charsOf!450 (_1!2682 (get!1469 lt!162624)))) (_2!2682 (get!1469 lt!162624))) lt!162371))))

(declare-fun b!373911 () Bool)

(declare-fun e!229916 () Bool)

(assert (=> b!373911 (= e!229916 e!229914)))

(declare-fun res!167469 () Bool)

(assert (=> b!373911 (=> (not res!167469) (not e!229914))))

(assert (=> b!373911 (= res!167469 (isDefined!843 lt!162624))))

(declare-fun b!373912 () Bool)

(declare-fun res!167472 () Bool)

(assert (=> b!373912 (=> (not res!167472) (not e!229914))))

(declare-fun apply!984 (TokenValueInjection!1430 BalanceConc!2880) TokenValue!829)

(assert (=> b!373912 (= res!167472 (= (value!27315 (_1!2682 (get!1469 lt!162624))) (apply!984 (transformation!807 (rule!1452 (_1!2682 (get!1469 lt!162624)))) (seqFromList!979 (originalCharacters!850 (_1!2682 (get!1469 lt!162624)))))))))

(declare-fun d!131467 () Bool)

(assert (=> d!131467 e!229916))

(declare-fun res!167471 () Bool)

(assert (=> d!131467 (=> res!167471 e!229916)))

(declare-fun isEmpty!2999 (Option!1005) Bool)

(assert (=> d!131467 (= res!167471 (isEmpty!2999 lt!162624))))

(assert (=> d!131467 (= lt!162624 e!229915)))

(declare-fun c!73540 () Bool)

(assert (=> d!131467 (= c!73540 (and ((_ is Cons!4184) rules!1920) ((_ is Nil!4184) (t!57352 rules!1920))))))

(declare-fun lt!162628 () Unit!6646)

(declare-fun lt!162626 () Unit!6646)

(assert (=> d!131467 (= lt!162628 lt!162626)))

(assert (=> d!131467 (isPrefix!467 lt!162371 lt!162371)))

(declare-fun lemmaIsPrefixRefl!257 (List!4193 List!4193) Unit!6646)

(assert (=> d!131467 (= lt!162626 (lemmaIsPrefixRefl!257 lt!162371 lt!162371))))

(declare-fun rulesValidInductive!252 (LexerInterface!693 List!4194) Bool)

(assert (=> d!131467 (rulesValidInductive!252 thiss!17480 rules!1920)))

(assert (=> d!131467 (= (maxPrefix!409 thiss!17480 rules!1920 lt!162371) lt!162624)))

(declare-fun b!373913 () Bool)

(declare-fun res!167468 () Bool)

(assert (=> b!373913 (=> (not res!167468) (not e!229914))))

(assert (=> b!373913 (= res!167468 (matchR!349 (regex!807 (rule!1452 (_1!2682 (get!1469 lt!162624)))) (list!1807 (charsOf!450 (_1!2682 (get!1469 lt!162624))))))))

(declare-fun b!373914 () Bool)

(assert (=> b!373914 (= e!229914 (contains!862 rules!1920 (rule!1452 (_1!2682 (get!1469 lt!162624)))))))

(declare-fun bm!23759 () Bool)

(declare-fun maxPrefixOneRule!191 (LexerInterface!693 Rule!1414 List!4193) Option!1005)

(assert (=> bm!23759 (= call!23764 (maxPrefixOneRule!191 thiss!17480 (h!9581 rules!1920) lt!162371))))

(declare-fun b!373915 () Bool)

(assert (=> b!373915 (= e!229915 call!23764)))

(assert (= (and d!131467 c!73540) b!373915))

(assert (= (and d!131467 (not c!73540)) b!373907))

(assert (= (or b!373915 b!373907) bm!23759))

(assert (= (and d!131467 (not res!167471)) b!373911))

(assert (= (and b!373911 res!167469) b!373908))

(assert (= (and b!373908 res!167473) b!373909))

(assert (= (and b!373909 res!167470) b!373910))

(assert (= (and b!373910 res!167467) b!373912))

(assert (= (and b!373912 res!167472) b!373913))

(assert (= (and b!373913 res!167468) b!373914))

(declare-fun m!554509 () Bool)

(assert (=> b!373911 m!554509))

(declare-fun m!554511 () Bool)

(assert (=> b!373908 m!554511))

(declare-fun m!554513 () Bool)

(assert (=> b!373908 m!554513))

(assert (=> b!373908 m!554513))

(declare-fun m!554515 () Bool)

(assert (=> b!373908 m!554515))

(assert (=> b!373909 m!554511))

(declare-fun m!554517 () Bool)

(assert (=> b!373909 m!554517))

(declare-fun m!554519 () Bool)

(assert (=> b!373909 m!554519))

(assert (=> b!373914 m!554511))

(declare-fun m!554521 () Bool)

(assert (=> b!373914 m!554521))

(declare-fun m!554523 () Bool)

(assert (=> d!131467 m!554523))

(declare-fun m!554525 () Bool)

(assert (=> d!131467 m!554525))

(declare-fun m!554527 () Bool)

(assert (=> d!131467 m!554527))

(declare-fun m!554529 () Bool)

(assert (=> d!131467 m!554529))

(assert (=> b!373910 m!554511))

(assert (=> b!373910 m!554513))

(assert (=> b!373910 m!554513))

(assert (=> b!373910 m!554515))

(assert (=> b!373910 m!554515))

(declare-fun m!554531 () Bool)

(assert (=> b!373910 m!554531))

(assert (=> b!373912 m!554511))

(declare-fun m!554533 () Bool)

(assert (=> b!373912 m!554533))

(assert (=> b!373912 m!554533))

(declare-fun m!554535 () Bool)

(assert (=> b!373912 m!554535))

(assert (=> b!373913 m!554511))

(assert (=> b!373913 m!554513))

(assert (=> b!373913 m!554513))

(assert (=> b!373913 m!554515))

(assert (=> b!373913 m!554515))

(declare-fun m!554537 () Bool)

(assert (=> b!373913 m!554537))

(declare-fun m!554539 () Bool)

(assert (=> b!373907 m!554539))

(declare-fun m!554541 () Bool)

(assert (=> bm!23759 m!554541))

(assert (=> b!373442 d!131467))

(declare-fun d!131469 () Bool)

(assert (=> d!131469 (isPrefix!467 lt!162365 (++!1170 lt!162365 lt!162371))))

(declare-fun lt!162631 () Unit!6646)

(declare-fun choose!2995 (List!4193 List!4193) Unit!6646)

(assert (=> d!131469 (= lt!162631 (choose!2995 lt!162365 lt!162371))))

(assert (=> d!131469 (= (lemmaConcatTwoListThenFirstIsPrefix!358 lt!162365 lt!162371) lt!162631)))

(declare-fun bs!45289 () Bool)

(assert (= bs!45289 d!131469))

(assert (=> bs!45289 m!553745))

(assert (=> bs!45289 m!553745))

(declare-fun m!554543 () Bool)

(assert (=> bs!45289 m!554543))

(declare-fun m!554545 () Bool)

(assert (=> bs!45289 m!554545))

(assert (=> b!373442 d!131469))

(declare-fun d!131471 () Bool)

(declare-fun lt!162665 () BalanceConc!2880)

(declare-fun printListTailRec!179 (LexerInterface!693 List!4195 List!4193) List!4193)

(assert (=> d!131471 (= (list!1807 lt!162665) (printListTailRec!179 thiss!17480 (dropList!214 lt!162374 0) (list!1807 (BalanceConc!2881 Empty!1436))))))

(declare-fun e!229947 () BalanceConc!2880)

(assert (=> d!131471 (= lt!162665 e!229947)))

(declare-fun c!73551 () Bool)

(assert (=> d!131471 (= c!73551 (>= 0 (size!3385 lt!162374)))))

(declare-fun e!229948 () Bool)

(assert (=> d!131471 e!229948))

(declare-fun res!167499 () Bool)

(assert (=> d!131471 (=> (not res!167499) (not e!229948))))

(assert (=> d!131471 (= res!167499 (>= 0 0))))

(assert (=> d!131471 (= (printTailRec!379 thiss!17480 lt!162374 0 (BalanceConc!2881 Empty!1436)) lt!162665)))

(declare-fun b!373961 () Bool)

(assert (=> b!373961 (= e!229948 (<= 0 (size!3385 lt!162374)))))

(declare-fun b!373962 () Bool)

(assert (=> b!373962 (= e!229947 (BalanceConc!2881 Empty!1436))))

(declare-fun b!373963 () Bool)

(assert (=> b!373963 (= e!229947 (printTailRec!379 thiss!17480 lt!162374 (+ 0 1) (++!1172 (BalanceConc!2881 Empty!1436) (charsOf!450 (apply!978 lt!162374 0)))))))

(declare-fun lt!162663 () List!4195)

(assert (=> b!373963 (= lt!162663 (list!1811 lt!162374))))

(declare-fun lt!162667 () Unit!6646)

(assert (=> b!373963 (= lt!162667 (lemmaDropApply!254 lt!162663 0))))

(assert (=> b!373963 (= (head!1016 (drop!277 lt!162663 0)) (apply!982 lt!162663 0))))

(declare-fun lt!162668 () Unit!6646)

(assert (=> b!373963 (= lt!162668 lt!162667)))

(declare-fun lt!162669 () List!4195)

(assert (=> b!373963 (= lt!162669 (list!1811 lt!162374))))

(declare-fun lt!162666 () Unit!6646)

(assert (=> b!373963 (= lt!162666 (lemmaDropTail!246 lt!162669 0))))

(assert (=> b!373963 (= (tail!578 (drop!277 lt!162669 0)) (drop!277 lt!162669 (+ 0 1)))))

(declare-fun lt!162664 () Unit!6646)

(assert (=> b!373963 (= lt!162664 lt!162666)))

(assert (= (and d!131471 res!167499) b!373961))

(assert (= (and d!131471 c!73551) b!373962))

(assert (= (and d!131471 (not c!73551)) b!373963))

(declare-fun m!554639 () Bool)

(assert (=> d!131471 m!554639))

(declare-fun m!554641 () Bool)

(assert (=> d!131471 m!554641))

(declare-fun m!554643 () Bool)

(assert (=> d!131471 m!554643))

(declare-fun m!554645 () Bool)

(assert (=> d!131471 m!554645))

(assert (=> d!131471 m!554639))

(assert (=> d!131471 m!554641))

(declare-fun m!554647 () Bool)

(assert (=> d!131471 m!554647))

(assert (=> b!373961 m!554645))

(declare-fun m!554649 () Bool)

(assert (=> b!373963 m!554649))

(declare-fun m!554651 () Bool)

(assert (=> b!373963 m!554651))

(declare-fun m!554653 () Bool)

(assert (=> b!373963 m!554653))

(declare-fun m!554655 () Bool)

(assert (=> b!373963 m!554655))

(declare-fun m!554657 () Bool)

(assert (=> b!373963 m!554657))

(assert (=> b!373963 m!554655))

(declare-fun m!554659 () Bool)

(assert (=> b!373963 m!554659))

(declare-fun m!554661 () Bool)

(assert (=> b!373963 m!554661))

(declare-fun m!554663 () Bool)

(assert (=> b!373963 m!554663))

(assert (=> b!373963 m!554663))

(assert (=> b!373963 m!554649))

(declare-fun m!554665 () Bool)

(assert (=> b!373963 m!554665))

(declare-fun m!554667 () Bool)

(assert (=> b!373963 m!554667))

(declare-fun m!554669 () Bool)

(assert (=> b!373963 m!554669))

(assert (=> b!373963 m!554651))

(declare-fun m!554671 () Bool)

(assert (=> b!373963 m!554671))

(assert (=> b!373963 m!554659))

(declare-fun m!554673 () Bool)

(assert (=> b!373963 m!554673))

(assert (=> b!373442 d!131471))

(declare-fun d!131501 () Bool)

(declare-fun lt!162675 () Int)

(declare-fun size!3391 (List!4195) Int)

(assert (=> d!131501 (= lt!162675 (size!3391 (list!1811 (_1!2681 lt!162362))))))

(declare-fun size!3392 (Conc!1437) Int)

(assert (=> d!131501 (= lt!162675 (size!3392 (c!73452 (_1!2681 lt!162362))))))

(assert (=> d!131501 (= (size!3385 (_1!2681 lt!162362)) lt!162675)))

(declare-fun bs!45291 () Bool)

(assert (= bs!45291 d!131501))

(assert (=> bs!45291 m!554247))

(assert (=> bs!45291 m!554247))

(declare-fun m!554685 () Bool)

(assert (=> bs!45291 m!554685))

(declare-fun m!554689 () Bool)

(assert (=> bs!45291 m!554689))

(assert (=> b!373442 d!131501))

(declare-fun d!131505 () Bool)

(assert (=> d!131505 (= lt!162371 (_2!2682 lt!162377))))

(declare-fun lt!162680 () Unit!6646)

(declare-fun choose!2996 (List!4193 List!4193 List!4193 List!4193 List!4193) Unit!6646)

(assert (=> d!131505 (= lt!162680 (choose!2996 lt!162365 lt!162371 lt!162365 (_2!2682 lt!162377) lt!162387))))

(assert (=> d!131505 (isPrefix!467 lt!162365 lt!162387)))

(assert (=> d!131505 (= (lemmaSamePrefixThenSameSuffix!252 lt!162365 lt!162371 lt!162365 (_2!2682 lt!162377) lt!162387) lt!162680)))

(declare-fun bs!45293 () Bool)

(assert (= bs!45293 d!131505))

(declare-fun m!554709 () Bool)

(assert (=> bs!45293 m!554709))

(declare-fun m!554711 () Bool)

(assert (=> bs!45293 m!554711))

(assert (=> b!373442 d!131505))

(declare-fun b!373995 () Bool)

(declare-fun e!229967 () List!4193)

(assert (=> b!373995 (= e!229967 Nil!4183)))

(declare-fun b!373996 () Bool)

(declare-fun c!73566 () Bool)

(assert (=> b!373996 (= c!73566 ((_ is Star!1031) (regex!807 (rule!1452 lt!162396))))))

(declare-fun e!229968 () List!4193)

(declare-fun e!229966 () List!4193)

(assert (=> b!373996 (= e!229968 e!229966)))

(declare-fun b!373997 () Bool)

(declare-fun e!229965 () List!4193)

(declare-fun call!23780 () List!4193)

(assert (=> b!373997 (= e!229965 call!23780)))

(declare-fun d!131511 () Bool)

(declare-fun c!73564 () Bool)

(assert (=> d!131511 (= c!73564 (or ((_ is EmptyExpr!1031) (regex!807 (rule!1452 lt!162396))) ((_ is EmptyLang!1031) (regex!807 (rule!1452 lt!162396)))))))

(assert (=> d!131511 (= (usedCharacters!108 (regex!807 (rule!1452 lt!162396))) e!229967)))

(declare-fun bm!23773 () Bool)

(declare-fun call!23779 () List!4193)

(declare-fun call!23778 () List!4193)

(assert (=> bm!23773 (= call!23780 (++!1170 call!23779 call!23778))))

(declare-fun c!73563 () Bool)

(declare-fun call!23781 () List!4193)

(declare-fun bm!23774 () Bool)

(assert (=> bm!23774 (= call!23781 (usedCharacters!108 (ite c!73566 (reg!1360 (regex!807 (rule!1452 lt!162396))) (ite c!73563 (regTwo!2575 (regex!807 (rule!1452 lt!162396))) (regTwo!2574 (regex!807 (rule!1452 lt!162396)))))))))

(declare-fun b!373998 () Bool)

(assert (=> b!373998 (= e!229965 call!23780)))

(declare-fun bm!23775 () Bool)

(assert (=> bm!23775 (= call!23779 (usedCharacters!108 (ite c!73563 (regOne!2575 (regex!807 (rule!1452 lt!162396))) (regOne!2574 (regex!807 (rule!1452 lt!162396))))))))

(declare-fun bm!23776 () Bool)

(assert (=> bm!23776 (= call!23778 call!23781)))

(declare-fun b!373999 () Bool)

(assert (=> b!373999 (= e!229966 call!23781)))

(declare-fun b!374000 () Bool)

(assert (=> b!374000 (= e!229968 (Cons!4183 (c!73451 (regex!807 (rule!1452 lt!162396))) Nil!4183))))

(declare-fun b!374001 () Bool)

(assert (=> b!374001 (= e!229966 e!229965)))

(assert (=> b!374001 (= c!73563 ((_ is Union!1031) (regex!807 (rule!1452 lt!162396))))))

(declare-fun b!374002 () Bool)

(assert (=> b!374002 (= e!229967 e!229968)))

(declare-fun c!73565 () Bool)

(assert (=> b!374002 (= c!73565 ((_ is ElementMatch!1031) (regex!807 (rule!1452 lt!162396))))))

(assert (= (and d!131511 c!73564) b!373995))

(assert (= (and d!131511 (not c!73564)) b!374002))

(assert (= (and b!374002 c!73565) b!374000))

(assert (= (and b!374002 (not c!73565)) b!373996))

(assert (= (and b!373996 c!73566) b!373999))

(assert (= (and b!373996 (not c!73566)) b!374001))

(assert (= (and b!374001 c!73563) b!373997))

(assert (= (and b!374001 (not c!73563)) b!373998))

(assert (= (or b!373997 b!373998) bm!23775))

(assert (= (or b!373997 b!373998) bm!23776))

(assert (= (or b!373997 b!373998) bm!23773))

(assert (= (or b!373999 bm!23776) bm!23774))

(declare-fun m!554713 () Bool)

(assert (=> bm!23773 m!554713))

(declare-fun m!554715 () Bool)

(assert (=> bm!23774 m!554715))

(declare-fun m!554717 () Bool)

(assert (=> bm!23775 m!554717))

(assert (=> b!373442 d!131511))

(declare-fun d!131513 () Bool)

(assert (=> d!131513 (= (list!1807 (charsOf!450 lt!162396)) (list!1810 (c!73450 (charsOf!450 lt!162396))))))

(declare-fun bs!45294 () Bool)

(assert (= bs!45294 d!131513))

(declare-fun m!554719 () Bool)

(assert (=> bs!45294 m!554719))

(assert (=> b!373442 d!131513))

(declare-fun d!131515 () Bool)

(declare-fun lt!162683 () BalanceConc!2880)

(assert (=> d!131515 (= (list!1807 lt!162683) (originalCharacters!850 lt!162396))))

(assert (=> d!131515 (= lt!162683 (dynLambda!2398 (toChars!1449 (transformation!807 (rule!1452 lt!162396))) (value!27315 lt!162396)))))

(assert (=> d!131515 (= (charsOf!450 lt!162396) lt!162683)))

(declare-fun b_lambda!14655 () Bool)

(assert (=> (not b_lambda!14655) (not d!131515)))

(declare-fun tb!32805 () Bool)

(declare-fun t!57394 () Bool)

(assert (=> (and b!373434 (= (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))) (toChars!1449 (transformation!807 (rule!1452 lt!162396)))) t!57394) tb!32805))

(declare-fun b!374003 () Bool)

(declare-fun e!229969 () Bool)

(declare-fun tp!117052 () Bool)

(assert (=> b!374003 (= e!229969 (and (inv!5198 (c!73450 (dynLambda!2398 (toChars!1449 (transformation!807 (rule!1452 lt!162396))) (value!27315 lt!162396)))) tp!117052))))

(declare-fun result!37020 () Bool)

(assert (=> tb!32805 (= result!37020 (and (inv!5199 (dynLambda!2398 (toChars!1449 (transformation!807 (rule!1452 lt!162396))) (value!27315 lt!162396))) e!229969))))

(assert (= tb!32805 b!374003))

(declare-fun m!554721 () Bool)

(assert (=> b!374003 m!554721))

(declare-fun m!554723 () Bool)

(assert (=> tb!32805 m!554723))

(assert (=> d!131515 t!57394))

(declare-fun b_and!37541 () Bool)

(assert (= b_and!37523 (and (=> t!57394 result!37020) b_and!37541)))

(declare-fun tb!32807 () Bool)

(declare-fun t!57396 () Bool)

(assert (=> (and b!373429 (= (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))) (toChars!1449 (transformation!807 (rule!1452 lt!162396)))) t!57396) tb!32807))

(declare-fun result!37022 () Bool)

(assert (= result!37022 result!37020))

(assert (=> d!131515 t!57396))

(declare-fun b_and!37543 () Bool)

(assert (= b_and!37525 (and (=> t!57396 result!37022) b_and!37543)))

(declare-fun t!57398 () Bool)

(declare-fun tb!32809 () Bool)

(assert (=> (and b!373462 (= (toChars!1449 (transformation!807 (h!9581 rules!1920))) (toChars!1449 (transformation!807 (rule!1452 lt!162396)))) t!57398) tb!32809))

(declare-fun result!37024 () Bool)

(assert (= result!37024 result!37020))

(assert (=> d!131515 t!57398))

(declare-fun b_and!37545 () Bool)

(assert (= b_and!37527 (and (=> t!57398 result!37024) b_and!37545)))

(declare-fun m!554725 () Bool)

(assert (=> d!131515 m!554725))

(declare-fun m!554727 () Bool)

(assert (=> d!131515 m!554727))

(assert (=> b!373442 d!131515))

(declare-fun d!131517 () Bool)

(declare-fun e!229976 () Bool)

(assert (=> d!131517 e!229976))

(declare-fun res!167518 () Bool)

(assert (=> d!131517 (=> res!167518 e!229976)))

(declare-fun lt!162686 () Bool)

(assert (=> d!131517 (= res!167518 (not lt!162686))))

(declare-fun e!229977 () Bool)

(assert (=> d!131517 (= lt!162686 e!229977)))

(declare-fun res!167520 () Bool)

(assert (=> d!131517 (=> res!167520 e!229977)))

(assert (=> d!131517 (= res!167520 ((_ is Nil!4183) lt!162365))))

(assert (=> d!131517 (= (isPrefix!467 lt!162365 lt!162394) lt!162686)))

(declare-fun b!374014 () Bool)

(declare-fun e!229978 () Bool)

(assert (=> b!374014 (= e!229978 (isPrefix!467 (tail!577 lt!162365) (tail!577 lt!162394)))))

(declare-fun b!374015 () Bool)

(assert (=> b!374015 (= e!229976 (>= (size!3388 lt!162394) (size!3388 lt!162365)))))

(declare-fun b!374012 () Bool)

(assert (=> b!374012 (= e!229977 e!229978)))

(declare-fun res!167517 () Bool)

(assert (=> b!374012 (=> (not res!167517) (not e!229978))))

(assert (=> b!374012 (= res!167517 (not ((_ is Nil!4183) lt!162394)))))

(declare-fun b!374013 () Bool)

(declare-fun res!167519 () Bool)

(assert (=> b!374013 (=> (not res!167519) (not e!229978))))

(assert (=> b!374013 (= res!167519 (= (head!1015 lt!162365) (head!1015 lt!162394)))))

(assert (= (and d!131517 (not res!167520)) b!374012))

(assert (= (and b!374012 res!167517) b!374013))

(assert (= (and b!374013 res!167519) b!374014))

(assert (= (and d!131517 (not res!167518)) b!374015))

(assert (=> b!374014 m!553965))

(declare-fun m!554729 () Bool)

(assert (=> b!374014 m!554729))

(assert (=> b!374014 m!553965))

(assert (=> b!374014 m!554729))

(declare-fun m!554731 () Bool)

(assert (=> b!374014 m!554731))

(declare-fun m!554733 () Bool)

(assert (=> b!374015 m!554733))

(declare-fun m!554735 () Bool)

(assert (=> b!374015 m!554735))

(assert (=> b!374013 m!553971))

(declare-fun m!554737 () Bool)

(assert (=> b!374013 m!554737))

(assert (=> b!373442 d!131517))

(declare-fun e!229986 () Bool)

(declare-fun b!374026 () Bool)

(declare-fun lt!162689 () tuple2!4930)

(declare-datatypes ((tuple2!4938 0))(
  ( (tuple2!4939 (_1!2685 List!4195) (_2!2685 List!4193)) )
))
(declare-fun lexList!259 (LexerInterface!693 List!4194 List!4193) tuple2!4938)

(assert (=> b!374026 (= e!229986 (= (list!1807 (_2!2681 lt!162689)) (_2!2685 (lexList!259 thiss!17480 rules!1920 (list!1807 lt!162401)))))))

(declare-fun b!374027 () Bool)

(declare-fun res!167527 () Bool)

(assert (=> b!374027 (=> (not res!167527) (not e!229986))))

(assert (=> b!374027 (= res!167527 (= (list!1811 (_1!2681 lt!162689)) (_1!2685 (lexList!259 thiss!17480 rules!1920 (list!1807 lt!162401)))))))

(declare-fun b!374028 () Bool)

(declare-fun e!229985 () Bool)

(assert (=> b!374028 (= e!229985 (not (isEmpty!2991 (_1!2681 lt!162689))))))

(declare-fun b!374029 () Bool)

(declare-fun e!229987 () Bool)

(assert (=> b!374029 (= e!229987 e!229985)))

(declare-fun res!167528 () Bool)

(declare-fun size!3393 (BalanceConc!2880) Int)

(assert (=> b!374029 (= res!167528 (< (size!3393 (_2!2681 lt!162689)) (size!3393 lt!162401)))))

(assert (=> b!374029 (=> (not res!167528) (not e!229985))))

(declare-fun d!131519 () Bool)

(assert (=> d!131519 e!229986))

(declare-fun res!167529 () Bool)

(assert (=> d!131519 (=> (not res!167529) (not e!229986))))

(assert (=> d!131519 (= res!167529 e!229987)))

(declare-fun c!73569 () Bool)

(assert (=> d!131519 (= c!73569 (> (size!3385 (_1!2681 lt!162689)) 0))))

(declare-fun lexTailRecV2!226 (LexerInterface!693 List!4194 BalanceConc!2880 BalanceConc!2880 BalanceConc!2880 BalanceConc!2882) tuple2!4930)

(assert (=> d!131519 (= lt!162689 (lexTailRecV2!226 thiss!17480 rules!1920 lt!162401 (BalanceConc!2881 Empty!1436) lt!162401 (BalanceConc!2883 Empty!1437)))))

(assert (=> d!131519 (= (lex!485 thiss!17480 rules!1920 lt!162401) lt!162689)))

(declare-fun b!374030 () Bool)

(assert (=> b!374030 (= e!229987 (= (_2!2681 lt!162689) lt!162401))))

(assert (= (and d!131519 c!73569) b!374029))

(assert (= (and d!131519 (not c!73569)) b!374030))

(assert (= (and b!374029 res!167528) b!374028))

(assert (= (and d!131519 res!167529) b!374027))

(assert (= (and b!374027 res!167527) b!374026))

(declare-fun m!554739 () Bool)

(assert (=> b!374026 m!554739))

(declare-fun m!554741 () Bool)

(assert (=> b!374026 m!554741))

(assert (=> b!374026 m!554741))

(declare-fun m!554743 () Bool)

(assert (=> b!374026 m!554743))

(declare-fun m!554745 () Bool)

(assert (=> d!131519 m!554745))

(declare-fun m!554747 () Bool)

(assert (=> d!131519 m!554747))

(declare-fun m!554749 () Bool)

(assert (=> b!374029 m!554749))

(declare-fun m!554751 () Bool)

(assert (=> b!374029 m!554751))

(declare-fun m!554753 () Bool)

(assert (=> b!374027 m!554753))

(assert (=> b!374027 m!554741))

(assert (=> b!374027 m!554741))

(assert (=> b!374027 m!554743))

(declare-fun m!554755 () Bool)

(assert (=> b!374028 m!554755))

(assert (=> b!373442 d!131519))

(declare-fun b!374031 () Bool)

(declare-fun e!229990 () List!4193)

(assert (=> b!374031 (= e!229990 Nil!4183)))

(declare-fun b!374032 () Bool)

(declare-fun c!73573 () Bool)

(assert (=> b!374032 (= c!73573 ((_ is Star!1031) (regex!807 (rule!1452 separatorToken!170))))))

(declare-fun e!229991 () List!4193)

(declare-fun e!229989 () List!4193)

(assert (=> b!374032 (= e!229991 e!229989)))

(declare-fun b!374033 () Bool)

(declare-fun e!229988 () List!4193)

(declare-fun call!23784 () List!4193)

(assert (=> b!374033 (= e!229988 call!23784)))

(declare-fun d!131521 () Bool)

(declare-fun c!73571 () Bool)

(assert (=> d!131521 (= c!73571 (or ((_ is EmptyExpr!1031) (regex!807 (rule!1452 separatorToken!170))) ((_ is EmptyLang!1031) (regex!807 (rule!1452 separatorToken!170)))))))

(assert (=> d!131521 (= (usedCharacters!108 (regex!807 (rule!1452 separatorToken!170))) e!229990)))

(declare-fun bm!23777 () Bool)

(declare-fun call!23783 () List!4193)

(declare-fun call!23782 () List!4193)

(assert (=> bm!23777 (= call!23784 (++!1170 call!23783 call!23782))))

(declare-fun call!23785 () List!4193)

(declare-fun c!73570 () Bool)

(declare-fun bm!23778 () Bool)

(assert (=> bm!23778 (= call!23785 (usedCharacters!108 (ite c!73573 (reg!1360 (regex!807 (rule!1452 separatorToken!170))) (ite c!73570 (regTwo!2575 (regex!807 (rule!1452 separatorToken!170))) (regTwo!2574 (regex!807 (rule!1452 separatorToken!170)))))))))

(declare-fun b!374034 () Bool)

(assert (=> b!374034 (= e!229988 call!23784)))

(declare-fun bm!23779 () Bool)

(assert (=> bm!23779 (= call!23783 (usedCharacters!108 (ite c!73570 (regOne!2575 (regex!807 (rule!1452 separatorToken!170))) (regOne!2574 (regex!807 (rule!1452 separatorToken!170))))))))

(declare-fun bm!23780 () Bool)

(assert (=> bm!23780 (= call!23782 call!23785)))

(declare-fun b!374035 () Bool)

(assert (=> b!374035 (= e!229989 call!23785)))

(declare-fun b!374036 () Bool)

(assert (=> b!374036 (= e!229991 (Cons!4183 (c!73451 (regex!807 (rule!1452 separatorToken!170))) Nil!4183))))

(declare-fun b!374037 () Bool)

(assert (=> b!374037 (= e!229989 e!229988)))

(assert (=> b!374037 (= c!73570 ((_ is Union!1031) (regex!807 (rule!1452 separatorToken!170))))))

(declare-fun b!374038 () Bool)

(assert (=> b!374038 (= e!229990 e!229991)))

(declare-fun c!73572 () Bool)

(assert (=> b!374038 (= c!73572 ((_ is ElementMatch!1031) (regex!807 (rule!1452 separatorToken!170))))))

(assert (= (and d!131521 c!73571) b!374031))

(assert (= (and d!131521 (not c!73571)) b!374038))

(assert (= (and b!374038 c!73572) b!374036))

(assert (= (and b!374038 (not c!73572)) b!374032))

(assert (= (and b!374032 c!73573) b!374035))

(assert (= (and b!374032 (not c!73573)) b!374037))

(assert (= (and b!374037 c!73570) b!374033))

(assert (= (and b!374037 (not c!73570)) b!374034))

(assert (= (or b!374033 b!374034) bm!23779))

(assert (= (or b!374033 b!374034) bm!23780))

(assert (= (or b!374033 b!374034) bm!23777))

(assert (= (or b!374035 bm!23780) bm!23778))

(declare-fun m!554757 () Bool)

(assert (=> bm!23777 m!554757))

(declare-fun m!554759 () Bool)

(assert (=> bm!23778 m!554759))

(declare-fun m!554761 () Bool)

(assert (=> bm!23779 m!554761))

(assert (=> b!373442 d!131521))

(declare-fun d!131523 () Bool)

(declare-fun e!229994 () Bool)

(assert (=> d!131523 e!229994))

(declare-fun res!167534 () Bool)

(assert (=> d!131523 (=> (not res!167534) (not e!229994))))

(assert (=> d!131523 (= res!167534 (isDefined!844 (getRuleFromTag!166 thiss!17480 rules!1920 (tag!1039 (rule!1452 lt!162396)))))))

(declare-fun lt!162692 () Unit!6646)

(declare-fun choose!2997 (LexerInterface!693 List!4194 List!4193 Token!1358) Unit!6646)

(assert (=> d!131523 (= lt!162692 (choose!2997 thiss!17480 rules!1920 lt!162366 lt!162396))))

(assert (=> d!131523 (rulesInvariant!659 thiss!17480 rules!1920)))

(assert (=> d!131523 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!166 thiss!17480 rules!1920 lt!162366 lt!162396) lt!162692)))

(declare-fun b!374043 () Bool)

(declare-fun res!167535 () Bool)

(assert (=> b!374043 (=> (not res!167535) (not e!229994))))

(assert (=> b!374043 (= res!167535 (matchR!349 (regex!807 (get!1468 (getRuleFromTag!166 thiss!17480 rules!1920 (tag!1039 (rule!1452 lt!162396))))) (list!1807 (charsOf!450 lt!162396))))))

(declare-fun b!374044 () Bool)

(assert (=> b!374044 (= e!229994 (= (rule!1452 lt!162396) (get!1468 (getRuleFromTag!166 thiss!17480 rules!1920 (tag!1039 (rule!1452 lt!162396))))))))

(assert (= (and d!131523 res!167534) b!374043))

(assert (= (and b!374043 res!167535) b!374044))

(assert (=> d!131523 m!553861))

(assert (=> d!131523 m!553861))

(declare-fun m!554763 () Bool)

(assert (=> d!131523 m!554763))

(declare-fun m!554765 () Bool)

(assert (=> d!131523 m!554765))

(assert (=> d!131523 m!553783))

(assert (=> b!374043 m!553861))

(declare-fun m!554767 () Bool)

(assert (=> b!374043 m!554767))

(assert (=> b!374043 m!553871))

(declare-fun m!554769 () Bool)

(assert (=> b!374043 m!554769))

(assert (=> b!374043 m!553831))

(assert (=> b!374043 m!553861))

(assert (=> b!374043 m!553831))

(assert (=> b!374043 m!553871))

(assert (=> b!374044 m!553861))

(assert (=> b!374044 m!553861))

(assert (=> b!374044 m!554767))

(assert (=> b!373442 d!131523))

(declare-fun b!374045 () Bool)

(declare-fun e!229996 () Option!1005)

(declare-fun lt!162694 () Option!1005)

(declare-fun lt!162696 () Option!1005)

(assert (=> b!374045 (= e!229996 (ite (and ((_ is None!1004) lt!162694) ((_ is None!1004) lt!162696)) None!1004 (ite ((_ is None!1004) lt!162696) lt!162694 (ite ((_ is None!1004) lt!162694) lt!162696 (ite (>= (size!3384 (_1!2682 (v!15137 lt!162694))) (size!3384 (_1!2682 (v!15137 lt!162696)))) lt!162694 lt!162696)))))))

(declare-fun call!23786 () Option!1005)

(assert (=> b!374045 (= lt!162694 call!23786)))

(assert (=> b!374045 (= lt!162696 (maxPrefix!409 thiss!17480 (t!57352 rules!1920) lt!162387))))

(declare-fun b!374046 () Bool)

(declare-fun res!167542 () Bool)

(declare-fun e!229995 () Bool)

(assert (=> b!374046 (=> (not res!167542) (not e!229995))))

(declare-fun lt!162693 () Option!1005)

(assert (=> b!374046 (= res!167542 (= (list!1807 (charsOf!450 (_1!2682 (get!1469 lt!162693)))) (originalCharacters!850 (_1!2682 (get!1469 lt!162693)))))))

(declare-fun b!374047 () Bool)

(declare-fun res!167539 () Bool)

(assert (=> b!374047 (=> (not res!167539) (not e!229995))))

(assert (=> b!374047 (= res!167539 (< (size!3388 (_2!2682 (get!1469 lt!162693))) (size!3388 lt!162387)))))

(declare-fun b!374048 () Bool)

(declare-fun res!167536 () Bool)

(assert (=> b!374048 (=> (not res!167536) (not e!229995))))

(assert (=> b!374048 (= res!167536 (= (++!1170 (list!1807 (charsOf!450 (_1!2682 (get!1469 lt!162693)))) (_2!2682 (get!1469 lt!162693))) lt!162387))))

(declare-fun b!374049 () Bool)

(declare-fun e!229997 () Bool)

(assert (=> b!374049 (= e!229997 e!229995)))

(declare-fun res!167538 () Bool)

(assert (=> b!374049 (=> (not res!167538) (not e!229995))))

(assert (=> b!374049 (= res!167538 (isDefined!843 lt!162693))))

(declare-fun b!374050 () Bool)

(declare-fun res!167541 () Bool)

(assert (=> b!374050 (=> (not res!167541) (not e!229995))))

(assert (=> b!374050 (= res!167541 (= (value!27315 (_1!2682 (get!1469 lt!162693))) (apply!984 (transformation!807 (rule!1452 (_1!2682 (get!1469 lt!162693)))) (seqFromList!979 (originalCharacters!850 (_1!2682 (get!1469 lt!162693)))))))))

(declare-fun d!131525 () Bool)

(assert (=> d!131525 e!229997))

(declare-fun res!167540 () Bool)

(assert (=> d!131525 (=> res!167540 e!229997)))

(assert (=> d!131525 (= res!167540 (isEmpty!2999 lt!162693))))

(assert (=> d!131525 (= lt!162693 e!229996)))

(declare-fun c!73574 () Bool)

(assert (=> d!131525 (= c!73574 (and ((_ is Cons!4184) rules!1920) ((_ is Nil!4184) (t!57352 rules!1920))))))

(declare-fun lt!162697 () Unit!6646)

(declare-fun lt!162695 () Unit!6646)

(assert (=> d!131525 (= lt!162697 lt!162695)))

(assert (=> d!131525 (isPrefix!467 lt!162387 lt!162387)))

(assert (=> d!131525 (= lt!162695 (lemmaIsPrefixRefl!257 lt!162387 lt!162387))))

(assert (=> d!131525 (rulesValidInductive!252 thiss!17480 rules!1920)))

(assert (=> d!131525 (= (maxPrefix!409 thiss!17480 rules!1920 lt!162387) lt!162693)))

(declare-fun b!374051 () Bool)

(declare-fun res!167537 () Bool)

(assert (=> b!374051 (=> (not res!167537) (not e!229995))))

(assert (=> b!374051 (= res!167537 (matchR!349 (regex!807 (rule!1452 (_1!2682 (get!1469 lt!162693)))) (list!1807 (charsOf!450 (_1!2682 (get!1469 lt!162693))))))))

(declare-fun b!374052 () Bool)

(assert (=> b!374052 (= e!229995 (contains!862 rules!1920 (rule!1452 (_1!2682 (get!1469 lt!162693)))))))

(declare-fun bm!23781 () Bool)

(assert (=> bm!23781 (= call!23786 (maxPrefixOneRule!191 thiss!17480 (h!9581 rules!1920) lt!162387))))

(declare-fun b!374053 () Bool)

(assert (=> b!374053 (= e!229996 call!23786)))

(assert (= (and d!131525 c!73574) b!374053))

(assert (= (and d!131525 (not c!73574)) b!374045))

(assert (= (or b!374053 b!374045) bm!23781))

(assert (= (and d!131525 (not res!167540)) b!374049))

(assert (= (and b!374049 res!167538) b!374046))

(assert (= (and b!374046 res!167542) b!374047))

(assert (= (and b!374047 res!167539) b!374048))

(assert (= (and b!374048 res!167536) b!374050))

(assert (= (and b!374050 res!167541) b!374051))

(assert (= (and b!374051 res!167537) b!374052))

(declare-fun m!554771 () Bool)

(assert (=> b!374049 m!554771))

(declare-fun m!554773 () Bool)

(assert (=> b!374046 m!554773))

(declare-fun m!554775 () Bool)

(assert (=> b!374046 m!554775))

(assert (=> b!374046 m!554775))

(declare-fun m!554777 () Bool)

(assert (=> b!374046 m!554777))

(assert (=> b!374047 m!554773))

(declare-fun m!554779 () Bool)

(assert (=> b!374047 m!554779))

(declare-fun m!554781 () Bool)

(assert (=> b!374047 m!554781))

(assert (=> b!374052 m!554773))

(declare-fun m!554783 () Bool)

(assert (=> b!374052 m!554783))

(declare-fun m!554785 () Bool)

(assert (=> d!131525 m!554785))

(declare-fun m!554787 () Bool)

(assert (=> d!131525 m!554787))

(declare-fun m!554789 () Bool)

(assert (=> d!131525 m!554789))

(assert (=> d!131525 m!554529))

(assert (=> b!374048 m!554773))

(assert (=> b!374048 m!554775))

(assert (=> b!374048 m!554775))

(assert (=> b!374048 m!554777))

(assert (=> b!374048 m!554777))

(declare-fun m!554791 () Bool)

(assert (=> b!374048 m!554791))

(assert (=> b!374050 m!554773))

(declare-fun m!554793 () Bool)

(assert (=> b!374050 m!554793))

(assert (=> b!374050 m!554793))

(declare-fun m!554795 () Bool)

(assert (=> b!374050 m!554795))

(assert (=> b!374051 m!554773))

(assert (=> b!374051 m!554775))

(assert (=> b!374051 m!554775))

(assert (=> b!374051 m!554777))

(assert (=> b!374051 m!554777))

(declare-fun m!554797 () Bool)

(assert (=> b!374051 m!554797))

(declare-fun m!554799 () Bool)

(assert (=> b!374045 m!554799))

(declare-fun m!554801 () Bool)

(assert (=> bm!23781 m!554801))

(assert (=> b!373442 d!131525))

(declare-fun d!131527 () Bool)

(declare-fun lt!162698 () Bool)

(declare-fun e!229998 () Bool)

(assert (=> d!131527 (= lt!162698 e!229998)))

(declare-fun res!167543 () Bool)

(assert (=> d!131527 (=> (not res!167543) (not e!229998))))

(assert (=> d!131527 (= res!167543 (= (list!1811 (_1!2681 (lex!485 thiss!17480 rules!1920 (print!418 thiss!17480 (singletonSeq!353 lt!162396))))) (list!1811 (singletonSeq!353 lt!162396))))))

(declare-fun e!229999 () Bool)

(assert (=> d!131527 (= lt!162698 e!229999)))

(declare-fun res!167545 () Bool)

(assert (=> d!131527 (=> (not res!167545) (not e!229999))))

(declare-fun lt!162699 () tuple2!4930)

(assert (=> d!131527 (= res!167545 (= (size!3385 (_1!2681 lt!162699)) 1))))

(assert (=> d!131527 (= lt!162699 (lex!485 thiss!17480 rules!1920 (print!418 thiss!17480 (singletonSeq!353 lt!162396))))))

(assert (=> d!131527 (not (isEmpty!2994 rules!1920))))

(assert (=> d!131527 (= (rulesProduceIndividualToken!442 thiss!17480 rules!1920 lt!162396) lt!162698)))

(declare-fun b!374054 () Bool)

(declare-fun res!167544 () Bool)

(assert (=> b!374054 (=> (not res!167544) (not e!229999))))

(assert (=> b!374054 (= res!167544 (= (apply!978 (_1!2681 lt!162699) 0) lt!162396))))

(declare-fun b!374055 () Bool)

(assert (=> b!374055 (= e!229999 (isEmpty!2993 (_2!2681 lt!162699)))))

(declare-fun b!374056 () Bool)

(assert (=> b!374056 (= e!229998 (isEmpty!2993 (_2!2681 (lex!485 thiss!17480 rules!1920 (print!418 thiss!17480 (singletonSeq!353 lt!162396))))))))

(assert (= (and d!131527 res!167545) b!374054))

(assert (= (and b!374054 res!167544) b!374055))

(assert (= (and d!131527 res!167543) b!374056))

(assert (=> d!131527 m!553865))

(declare-fun m!554803 () Bool)

(assert (=> d!131527 m!554803))

(assert (=> d!131527 m!553865))

(declare-fun m!554805 () Bool)

(assert (=> d!131527 m!554805))

(assert (=> d!131527 m!553787))

(assert (=> d!131527 m!554803))

(declare-fun m!554807 () Bool)

(assert (=> d!131527 m!554807))

(assert (=> d!131527 m!553865))

(declare-fun m!554809 () Bool)

(assert (=> d!131527 m!554809))

(declare-fun m!554811 () Bool)

(assert (=> d!131527 m!554811))

(declare-fun m!554813 () Bool)

(assert (=> b!374054 m!554813))

(declare-fun m!554815 () Bool)

(assert (=> b!374055 m!554815))

(assert (=> b!374056 m!553865))

(assert (=> b!374056 m!553865))

(assert (=> b!374056 m!554803))

(assert (=> b!374056 m!554803))

(assert (=> b!374056 m!554807))

(declare-fun m!554817 () Bool)

(assert (=> b!374056 m!554817))

(assert (=> b!373442 d!131527))

(declare-fun d!131529 () Bool)

(declare-fun e!230000 () Bool)

(assert (=> d!131529 e!230000))

(declare-fun res!167546 () Bool)

(assert (=> d!131529 (=> (not res!167546) (not e!230000))))

(assert (=> d!131529 (= res!167546 (isDefined!844 (getRuleFromTag!166 thiss!17480 rules!1920 (tag!1039 (rule!1452 separatorToken!170)))))))

(declare-fun lt!162700 () Unit!6646)

(assert (=> d!131529 (= lt!162700 (choose!2997 thiss!17480 rules!1920 lt!162388 separatorToken!170))))

(assert (=> d!131529 (rulesInvariant!659 thiss!17480 rules!1920)))

(assert (=> d!131529 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!166 thiss!17480 rules!1920 lt!162388 separatorToken!170) lt!162700)))

(declare-fun b!374057 () Bool)

(declare-fun res!167547 () Bool)

(assert (=> b!374057 (=> (not res!167547) (not e!230000))))

(assert (=> b!374057 (= res!167547 (matchR!349 (regex!807 (get!1468 (getRuleFromTag!166 thiss!17480 rules!1920 (tag!1039 (rule!1452 separatorToken!170))))) (list!1807 (charsOf!450 separatorToken!170))))))

(declare-fun b!374058 () Bool)

(assert (=> b!374058 (= e!230000 (= (rule!1452 separatorToken!170) (get!1468 (getRuleFromTag!166 thiss!17480 rules!1920 (tag!1039 (rule!1452 separatorToken!170))))))))

(assert (= (and d!131529 res!167546) b!374057))

(assert (= (and b!374057 res!167547) b!374058))

(assert (=> d!131529 m!553883))

(assert (=> d!131529 m!553883))

(declare-fun m!554819 () Bool)

(assert (=> d!131529 m!554819))

(declare-fun m!554821 () Bool)

(assert (=> d!131529 m!554821))

(assert (=> d!131529 m!553783))

(assert (=> b!374057 m!553883))

(declare-fun m!554823 () Bool)

(assert (=> b!374057 m!554823))

(assert (=> b!374057 m!553733))

(declare-fun m!554825 () Bool)

(assert (=> b!374057 m!554825))

(assert (=> b!374057 m!553731))

(assert (=> b!374057 m!553883))

(assert (=> b!374057 m!553731))

(assert (=> b!374057 m!553733))

(assert (=> b!374058 m!553883))

(assert (=> b!374058 m!553883))

(assert (=> b!374058 m!554823))

(assert (=> b!373442 d!131529))

(declare-fun d!131531 () Bool)

(assert (=> d!131531 (= (isEmpty!2992 (t!57353 tokens!465)) ((_ is Nil!4185) (t!57353 tokens!465)))))

(assert (=> b!373442 d!131531))

(declare-fun lt!162701 () tuple2!4930)

(declare-fun b!374059 () Bool)

(declare-fun e!230002 () Bool)

(assert (=> b!374059 (= e!230002 (= (list!1807 (_2!2681 lt!162701)) (_2!2685 (lexList!259 thiss!17480 rules!1920 (list!1807 lt!162392)))))))

(declare-fun b!374060 () Bool)

(declare-fun res!167548 () Bool)

(assert (=> b!374060 (=> (not res!167548) (not e!230002))))

(assert (=> b!374060 (= res!167548 (= (list!1811 (_1!2681 lt!162701)) (_1!2685 (lexList!259 thiss!17480 rules!1920 (list!1807 lt!162392)))))))

(declare-fun b!374061 () Bool)

(declare-fun e!230001 () Bool)

(assert (=> b!374061 (= e!230001 (not (isEmpty!2991 (_1!2681 lt!162701))))))

(declare-fun b!374062 () Bool)

(declare-fun e!230003 () Bool)

(assert (=> b!374062 (= e!230003 e!230001)))

(declare-fun res!167549 () Bool)

(assert (=> b!374062 (= res!167549 (< (size!3393 (_2!2681 lt!162701)) (size!3393 lt!162392)))))

(assert (=> b!374062 (=> (not res!167549) (not e!230001))))

(declare-fun d!131533 () Bool)

(assert (=> d!131533 e!230002))

(declare-fun res!167550 () Bool)

(assert (=> d!131533 (=> (not res!167550) (not e!230002))))

(assert (=> d!131533 (= res!167550 e!230003)))

(declare-fun c!73575 () Bool)

(assert (=> d!131533 (= c!73575 (> (size!3385 (_1!2681 lt!162701)) 0))))

(assert (=> d!131533 (= lt!162701 (lexTailRecV2!226 thiss!17480 rules!1920 lt!162392 (BalanceConc!2881 Empty!1436) lt!162392 (BalanceConc!2883 Empty!1437)))))

(assert (=> d!131533 (= (lex!485 thiss!17480 rules!1920 lt!162392) lt!162701)))

(declare-fun b!374063 () Bool)

(assert (=> b!374063 (= e!230003 (= (_2!2681 lt!162701) lt!162392))))

(assert (= (and d!131533 c!73575) b!374062))

(assert (= (and d!131533 (not c!73575)) b!374063))

(assert (= (and b!374062 res!167549) b!374061))

(assert (= (and d!131533 res!167550) b!374060))

(assert (= (and b!374060 res!167548) b!374059))

(declare-fun m!554827 () Bool)

(assert (=> b!374059 m!554827))

(declare-fun m!554829 () Bool)

(assert (=> b!374059 m!554829))

(assert (=> b!374059 m!554829))

(declare-fun m!554831 () Bool)

(assert (=> b!374059 m!554831))

(declare-fun m!554833 () Bool)

(assert (=> d!131533 m!554833))

(declare-fun m!554835 () Bool)

(assert (=> d!131533 m!554835))

(declare-fun m!554837 () Bool)

(assert (=> b!374062 m!554837))

(declare-fun m!554839 () Bool)

(assert (=> b!374062 m!554839))

(declare-fun m!554841 () Bool)

(assert (=> b!374060 m!554841))

(assert (=> b!374060 m!554829))

(assert (=> b!374060 m!554829))

(assert (=> b!374060 m!554831))

(declare-fun m!554843 () Bool)

(assert (=> b!374061 m!554843))

(assert (=> b!373442 d!131533))

(declare-fun d!131535 () Bool)

(declare-fun isEmpty!3001 (Option!1003) Bool)

(assert (=> d!131535 (= (isDefined!844 lt!162395) (not (isEmpty!3001 lt!162395)))))

(declare-fun bs!45295 () Bool)

(assert (= bs!45295 d!131535))

(declare-fun m!554845 () Bool)

(assert (=> bs!45295 m!554845))

(assert (=> b!373442 d!131535))

(declare-fun d!131537 () Bool)

(declare-fun dynLambda!2399 (Int Token!1358) Bool)

(assert (=> d!131537 (dynLambda!2399 lambda!11628 lt!162396)))

(declare-fun lt!162704 () Unit!6646)

(declare-fun choose!2999 (List!4195 Int Token!1358) Unit!6646)

(assert (=> d!131537 (= lt!162704 (choose!2999 tokens!465 lambda!11628 lt!162396))))

(declare-fun e!230006 () Bool)

(assert (=> d!131537 e!230006))

(declare-fun res!167553 () Bool)

(assert (=> d!131537 (=> (not res!167553) (not e!230006))))

(assert (=> d!131537 (= res!167553 (forall!1156 tokens!465 lambda!11628))))

(assert (=> d!131537 (= (forallContained!360 tokens!465 lambda!11628 lt!162396) lt!162704)))

(declare-fun b!374066 () Bool)

(declare-fun contains!865 (List!4195 Token!1358) Bool)

(assert (=> b!374066 (= e!230006 (contains!865 tokens!465 lt!162396))))

(assert (= (and d!131537 res!167553) b!374066))

(declare-fun b_lambda!14657 () Bool)

(assert (=> (not b_lambda!14657) (not d!131537)))

(declare-fun m!554847 () Bool)

(assert (=> d!131537 m!554847))

(declare-fun m!554849 () Bool)

(assert (=> d!131537 m!554849))

(declare-fun m!554851 () Bool)

(assert (=> d!131537 m!554851))

(declare-fun m!554853 () Bool)

(assert (=> b!374066 m!554853))

(assert (=> b!373442 d!131537))

(declare-fun d!131539 () Bool)

(assert (=> d!131539 (= (isEmpty!2992 tokens!465) ((_ is Nil!4185) tokens!465))))

(assert (=> b!373442 d!131539))

(declare-fun d!131541 () Bool)

(assert (=> d!131541 (= (head!1015 lt!162384) (h!9580 lt!162384))))

(assert (=> b!373442 d!131541))

(declare-fun d!131543 () Bool)

(assert (=> d!131543 (rulesProduceIndividualToken!442 thiss!17480 rules!1920 lt!162396)))

(declare-fun lt!162749 () Unit!6646)

(declare-fun choose!3000 (LexerInterface!693 List!4194 List!4195 Token!1358) Unit!6646)

(assert (=> d!131543 (= lt!162749 (choose!3000 thiss!17480 rules!1920 tokens!465 lt!162396))))

(assert (=> d!131543 (not (isEmpty!2994 rules!1920))))

(assert (=> d!131543 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!156 thiss!17480 rules!1920 tokens!465 lt!162396) lt!162749)))

(declare-fun bs!45303 () Bool)

(assert (= bs!45303 d!131543))

(assert (=> bs!45303 m!553885))

(declare-fun m!554913 () Bool)

(assert (=> bs!45303 m!554913))

(assert (=> bs!45303 m!553787))

(assert (=> b!373442 d!131543))

(declare-fun d!131547 () Bool)

(declare-fun lt!162752 () BalanceConc!2880)

(assert (=> d!131547 (= (list!1807 lt!162752) (printList!367 thiss!17480 (list!1811 lt!162403)))))

(assert (=> d!131547 (= lt!162752 (printTailRec!379 thiss!17480 lt!162403 0 (BalanceConc!2881 Empty!1436)))))

(assert (=> d!131547 (= (print!418 thiss!17480 lt!162403) lt!162752)))

(declare-fun bs!45304 () Bool)

(assert (= bs!45304 d!131547))

(declare-fun m!554915 () Bool)

(assert (=> bs!45304 m!554915))

(declare-fun m!554917 () Bool)

(assert (=> bs!45304 m!554917))

(assert (=> bs!45304 m!554917))

(declare-fun m!554919 () Bool)

(assert (=> bs!45304 m!554919))

(assert (=> bs!45304 m!553887))

(assert (=> b!373442 d!131547))

(declare-fun d!131549 () Bool)

(assert (=> d!131549 (= (isDefined!844 lt!162361) (not (isEmpty!3001 lt!162361)))))

(declare-fun bs!45305 () Bool)

(assert (= bs!45305 d!131549))

(declare-fun m!554921 () Bool)

(assert (=> bs!45305 m!554921))

(assert (=> b!373442 d!131549))

(declare-fun d!131551 () Bool)

(declare-fun lt!162755 () Bool)

(declare-fun content!662 (List!4193) (InoxSet C!2984))

(assert (=> d!131551 (= lt!162755 (select (content!662 (usedCharacters!108 (regex!807 (rule!1452 lt!162396)))) lt!162383))))

(declare-fun e!230036 () Bool)

(assert (=> d!131551 (= lt!162755 e!230036)))

(declare-fun res!167567 () Bool)

(assert (=> d!131551 (=> (not res!167567) (not e!230036))))

(assert (=> d!131551 (= res!167567 ((_ is Cons!4183) (usedCharacters!108 (regex!807 (rule!1452 lt!162396)))))))

(assert (=> d!131551 (= (contains!863 (usedCharacters!108 (regex!807 (rule!1452 lt!162396))) lt!162383) lt!162755)))

(declare-fun b!374107 () Bool)

(declare-fun e!230035 () Bool)

(assert (=> b!374107 (= e!230036 e!230035)))

(declare-fun res!167568 () Bool)

(assert (=> b!374107 (=> res!167568 e!230035)))

(assert (=> b!374107 (= res!167568 (= (h!9580 (usedCharacters!108 (regex!807 (rule!1452 lt!162396)))) lt!162383))))

(declare-fun b!374108 () Bool)

(assert (=> b!374108 (= e!230035 (contains!863 (t!57351 (usedCharacters!108 (regex!807 (rule!1452 lt!162396)))) lt!162383))))

(assert (= (and d!131551 res!167567) b!374107))

(assert (= (and b!374107 (not res!167568)) b!374108))

(assert (=> d!131551 m!553825))

(declare-fun m!554923 () Bool)

(assert (=> d!131551 m!554923))

(declare-fun m!554925 () Bool)

(assert (=> d!131551 m!554925))

(declare-fun m!554927 () Bool)

(assert (=> b!374108 m!554927))

(assert (=> b!373442 d!131551))

(declare-fun d!131553 () Bool)

(declare-fun lt!162756 () Bool)

(assert (=> d!131553 (= lt!162756 (select (content!662 (usedCharacters!108 (regex!807 (rule!1452 separatorToken!170)))) (head!1015 lt!162384)))))

(declare-fun e!230038 () Bool)

(assert (=> d!131553 (= lt!162756 e!230038)))

(declare-fun res!167569 () Bool)

(assert (=> d!131553 (=> (not res!167569) (not e!230038))))

(assert (=> d!131553 (= res!167569 ((_ is Cons!4183) (usedCharacters!108 (regex!807 (rule!1452 separatorToken!170)))))))

(assert (=> d!131553 (= (contains!863 (usedCharacters!108 (regex!807 (rule!1452 separatorToken!170))) (head!1015 lt!162384)) lt!162756)))

(declare-fun b!374109 () Bool)

(declare-fun e!230037 () Bool)

(assert (=> b!374109 (= e!230038 e!230037)))

(declare-fun res!167570 () Bool)

(assert (=> b!374109 (=> res!167570 e!230037)))

(assert (=> b!374109 (= res!167570 (= (h!9580 (usedCharacters!108 (regex!807 (rule!1452 separatorToken!170)))) (head!1015 lt!162384)))))

(declare-fun b!374110 () Bool)

(assert (=> b!374110 (= e!230037 (contains!863 (t!57351 (usedCharacters!108 (regex!807 (rule!1452 separatorToken!170)))) (head!1015 lt!162384)))))

(assert (= (and d!131553 res!167569) b!374109))

(assert (= (and b!374109 (not res!167570)) b!374110))

(assert (=> d!131553 m!553853))

(declare-fun m!554929 () Bool)

(assert (=> d!131553 m!554929))

(assert (=> d!131553 m!553855))

(declare-fun m!554931 () Bool)

(assert (=> d!131553 m!554931))

(assert (=> b!374110 m!553855))

(declare-fun m!554933 () Bool)

(assert (=> b!374110 m!554933))

(assert (=> b!373442 d!131553))

(declare-fun b!374123 () Bool)

(declare-fun e!230048 () Bool)

(declare-fun lt!162765 () Option!1003)

(assert (=> b!374123 (= e!230048 (= (tag!1039 (get!1468 lt!162765)) (tag!1039 (rule!1452 separatorToken!170))))))

(declare-fun b!374124 () Bool)

(declare-fun e!230047 () Option!1003)

(declare-fun e!230050 () Option!1003)

(assert (=> b!374124 (= e!230047 e!230050)))

(declare-fun c!73592 () Bool)

(assert (=> b!374124 (= c!73592 (and ((_ is Cons!4184) rules!1920) (not (= (tag!1039 (h!9581 rules!1920)) (tag!1039 (rule!1452 separatorToken!170))))))))

(declare-fun d!131555 () Bool)

(declare-fun e!230049 () Bool)

(assert (=> d!131555 e!230049))

(declare-fun res!167575 () Bool)

(assert (=> d!131555 (=> res!167575 e!230049)))

(assert (=> d!131555 (= res!167575 (isEmpty!3001 lt!162765))))

(assert (=> d!131555 (= lt!162765 e!230047)))

(declare-fun c!73593 () Bool)

(assert (=> d!131555 (= c!73593 (and ((_ is Cons!4184) rules!1920) (= (tag!1039 (h!9581 rules!1920)) (tag!1039 (rule!1452 separatorToken!170)))))))

(assert (=> d!131555 (rulesInvariant!659 thiss!17480 rules!1920)))

(assert (=> d!131555 (= (getRuleFromTag!166 thiss!17480 rules!1920 (tag!1039 (rule!1452 separatorToken!170))) lt!162765)))

(declare-fun b!374125 () Bool)

(assert (=> b!374125 (= e!230049 e!230048)))

(declare-fun res!167576 () Bool)

(assert (=> b!374125 (=> (not res!167576) (not e!230048))))

(assert (=> b!374125 (= res!167576 (contains!862 rules!1920 (get!1468 lt!162765)))))

(declare-fun b!374126 () Bool)

(assert (=> b!374126 (= e!230050 None!1002)))

(declare-fun b!374127 () Bool)

(declare-fun lt!162764 () Unit!6646)

(declare-fun lt!162763 () Unit!6646)

(assert (=> b!374127 (= lt!162764 lt!162763)))

(assert (=> b!374127 (rulesInvariant!659 thiss!17480 (t!57352 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!56 (LexerInterface!693 Rule!1414 List!4194) Unit!6646)

(assert (=> b!374127 (= lt!162763 (lemmaInvariantOnRulesThenOnTail!56 thiss!17480 (h!9581 rules!1920) (t!57352 rules!1920)))))

(assert (=> b!374127 (= e!230050 (getRuleFromTag!166 thiss!17480 (t!57352 rules!1920) (tag!1039 (rule!1452 separatorToken!170))))))

(declare-fun b!374128 () Bool)

(assert (=> b!374128 (= e!230047 (Some!1002 (h!9581 rules!1920)))))

(assert (= (and d!131555 c!73593) b!374128))

(assert (= (and d!131555 (not c!73593)) b!374124))

(assert (= (and b!374124 c!73592) b!374127))

(assert (= (and b!374124 (not c!73592)) b!374126))

(assert (= (and d!131555 (not res!167575)) b!374125))

(assert (= (and b!374125 res!167576) b!374123))

(declare-fun m!554935 () Bool)

(assert (=> b!374123 m!554935))

(declare-fun m!554937 () Bool)

(assert (=> d!131555 m!554937))

(assert (=> d!131555 m!553783))

(assert (=> b!374125 m!554935))

(assert (=> b!374125 m!554935))

(declare-fun m!554939 () Bool)

(assert (=> b!374125 m!554939))

(declare-fun m!554941 () Bool)

(assert (=> b!374127 m!554941))

(declare-fun m!554943 () Bool)

(assert (=> b!374127 m!554943))

(declare-fun m!554945 () Bool)

(assert (=> b!374127 m!554945))

(assert (=> b!373442 d!131555))

(declare-fun d!131557 () Bool)

(assert (=> d!131557 (= (get!1469 (maxPrefix!409 thiss!17480 rules!1920 lt!162387)) (v!15137 (maxPrefix!409 thiss!17480 rules!1920 lt!162387)))))

(assert (=> b!373442 d!131557))

(declare-fun d!131559 () Bool)

(declare-fun lt!162768 () BalanceConc!2880)

(assert (=> d!131559 (= (list!1807 lt!162768) (printListTailRec!179 thiss!17480 (dropList!214 lt!162403 0) (list!1807 (BalanceConc!2881 Empty!1436))))))

(declare-fun e!230051 () BalanceConc!2880)

(assert (=> d!131559 (= lt!162768 e!230051)))

(declare-fun c!73594 () Bool)

(assert (=> d!131559 (= c!73594 (>= 0 (size!3385 lt!162403)))))

(declare-fun e!230052 () Bool)

(assert (=> d!131559 e!230052))

(declare-fun res!167577 () Bool)

(assert (=> d!131559 (=> (not res!167577) (not e!230052))))

(assert (=> d!131559 (= res!167577 (>= 0 0))))

(assert (=> d!131559 (= (printTailRec!379 thiss!17480 lt!162403 0 (BalanceConc!2881 Empty!1436)) lt!162768)))

(declare-fun b!374129 () Bool)

(assert (=> b!374129 (= e!230052 (<= 0 (size!3385 lt!162403)))))

(declare-fun b!374130 () Bool)

(assert (=> b!374130 (= e!230051 (BalanceConc!2881 Empty!1436))))

(declare-fun b!374131 () Bool)

(assert (=> b!374131 (= e!230051 (printTailRec!379 thiss!17480 lt!162403 (+ 0 1) (++!1172 (BalanceConc!2881 Empty!1436) (charsOf!450 (apply!978 lt!162403 0)))))))

(declare-fun lt!162766 () List!4195)

(assert (=> b!374131 (= lt!162766 (list!1811 lt!162403))))

(declare-fun lt!162770 () Unit!6646)

(assert (=> b!374131 (= lt!162770 (lemmaDropApply!254 lt!162766 0))))

(assert (=> b!374131 (= (head!1016 (drop!277 lt!162766 0)) (apply!982 lt!162766 0))))

(declare-fun lt!162771 () Unit!6646)

(assert (=> b!374131 (= lt!162771 lt!162770)))

(declare-fun lt!162772 () List!4195)

(assert (=> b!374131 (= lt!162772 (list!1811 lt!162403))))

(declare-fun lt!162769 () Unit!6646)

(assert (=> b!374131 (= lt!162769 (lemmaDropTail!246 lt!162772 0))))

(assert (=> b!374131 (= (tail!578 (drop!277 lt!162772 0)) (drop!277 lt!162772 (+ 0 1)))))

(declare-fun lt!162767 () Unit!6646)

(assert (=> b!374131 (= lt!162767 lt!162769)))

(assert (= (and d!131559 res!167577) b!374129))

(assert (= (and d!131559 c!73594) b!374130))

(assert (= (and d!131559 (not c!73594)) b!374131))

(declare-fun m!554947 () Bool)

(assert (=> d!131559 m!554947))

(assert (=> d!131559 m!554641))

(declare-fun m!554949 () Bool)

(assert (=> d!131559 m!554949))

(declare-fun m!554951 () Bool)

(assert (=> d!131559 m!554951))

(assert (=> d!131559 m!554947))

(assert (=> d!131559 m!554641))

(declare-fun m!554953 () Bool)

(assert (=> d!131559 m!554953))

(assert (=> b!374129 m!554951))

(declare-fun m!554955 () Bool)

(assert (=> b!374131 m!554955))

(declare-fun m!554957 () Bool)

(assert (=> b!374131 m!554957))

(declare-fun m!554959 () Bool)

(assert (=> b!374131 m!554959))

(declare-fun m!554961 () Bool)

(assert (=> b!374131 m!554961))

(declare-fun m!554963 () Bool)

(assert (=> b!374131 m!554963))

(assert (=> b!374131 m!554961))

(declare-fun m!554965 () Bool)

(assert (=> b!374131 m!554965))

(declare-fun m!554967 () Bool)

(assert (=> b!374131 m!554967))

(declare-fun m!554969 () Bool)

(assert (=> b!374131 m!554969))

(assert (=> b!374131 m!554969))

(assert (=> b!374131 m!554955))

(declare-fun m!554971 () Bool)

(assert (=> b!374131 m!554971))

(declare-fun m!554973 () Bool)

(assert (=> b!374131 m!554973))

(assert (=> b!374131 m!554917))

(assert (=> b!374131 m!554957))

(declare-fun m!554975 () Bool)

(assert (=> b!374131 m!554975))

(assert (=> b!374131 m!554965))

(declare-fun m!554977 () Bool)

(assert (=> b!374131 m!554977))

(assert (=> b!373442 d!131559))

(declare-fun d!131561 () Bool)

(assert (=> d!131561 (= (head!1016 (t!57353 tokens!465)) (h!9582 (t!57353 tokens!465)))))

(assert (=> b!373442 d!131561))

(declare-fun d!131563 () Bool)

(declare-fun e!230130 () Bool)

(assert (=> d!131563 e!230130))

(declare-fun res!167626 () Bool)

(assert (=> d!131563 (=> res!167626 e!230130)))

(assert (=> d!131563 (= res!167626 (isEmpty!2992 tokens!465))))

(declare-fun lt!162830 () Unit!6646)

(declare-fun choose!3001 (LexerInterface!693 List!4194 List!4195 Token!1358) Unit!6646)

(assert (=> d!131563 (= lt!162830 (choose!3001 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!131563 (not (isEmpty!2994 rules!1920))))

(assert (=> d!131563 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!214 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!162830)))

(declare-fun b!374256 () Bool)

(declare-fun e!230131 () Bool)

(assert (=> b!374256 (= e!230130 e!230131)))

(declare-fun res!167625 () Bool)

(assert (=> b!374256 (=> (not res!167625) (not e!230131))))

(assert (=> b!374256 (= res!167625 (isDefined!843 (maxPrefix!409 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!374 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!374257 () Bool)

(assert (=> b!374257 (= e!230131 (= (_1!2682 (get!1469 (maxPrefix!409 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!374 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1016 tokens!465)))))

(assert (= (and d!131563 (not res!167626)) b!374256))

(assert (= (and b!374256 res!167625) b!374257))

(assert (=> d!131563 m!553847))

(declare-fun m!555197 () Bool)

(assert (=> d!131563 m!555197))

(assert (=> d!131563 m!553787))

(assert (=> b!374256 m!553763))

(assert (=> b!374256 m!553763))

(declare-fun m!555199 () Bool)

(assert (=> b!374256 m!555199))

(assert (=> b!374256 m!555199))

(declare-fun m!555201 () Bool)

(assert (=> b!374256 m!555201))

(assert (=> b!374257 m!553763))

(assert (=> b!374257 m!553763))

(assert (=> b!374257 m!555199))

(assert (=> b!374257 m!555199))

(declare-fun m!555203 () Bool)

(assert (=> b!374257 m!555203))

(assert (=> b!374257 m!553769))

(assert (=> b!373442 d!131563))

(declare-fun d!131619 () Bool)

(declare-fun lt!162831 () BalanceConc!2880)

(assert (=> d!131619 (= (list!1807 lt!162831) (printList!367 thiss!17480 (list!1811 lt!162374)))))

(assert (=> d!131619 (= lt!162831 (printTailRec!379 thiss!17480 lt!162374 0 (BalanceConc!2881 Empty!1436)))))

(assert (=> d!131619 (= (print!418 thiss!17480 lt!162374) lt!162831)))

(declare-fun bs!45341 () Bool)

(assert (= bs!45341 d!131619))

(declare-fun m!555205 () Bool)

(assert (=> bs!45341 m!555205))

(assert (=> bs!45341 m!554669))

(assert (=> bs!45341 m!554669))

(declare-fun m!555207 () Bool)

(assert (=> bs!45341 m!555207))

(assert (=> bs!45341 m!553823))

(assert (=> b!373442 d!131619))

(declare-fun d!131621 () Bool)

(assert (=> d!131621 (= (head!1015 lt!162366) (h!9580 lt!162366))))

(assert (=> b!373442 d!131621))

(declare-fun d!131623 () Bool)

(declare-fun lt!162832 () Int)

(assert (=> d!131623 (= lt!162832 (size!3391 (list!1811 (_1!2681 lt!162376))))))

(assert (=> d!131623 (= lt!162832 (size!3392 (c!73452 (_1!2681 lt!162376))))))

(assert (=> d!131623 (= (size!3385 (_1!2681 lt!162376)) lt!162832)))

(declare-fun bs!45342 () Bool)

(assert (= bs!45342 d!131623))

(assert (=> bs!45342 m!554253))

(assert (=> bs!45342 m!554253))

(declare-fun m!555209 () Bool)

(assert (=> bs!45342 m!555209))

(declare-fun m!555211 () Bool)

(assert (=> bs!45342 m!555211))

(assert (=> b!373442 d!131623))

(declare-fun b!374258 () Bool)

(declare-fun e!230133 () Bool)

(declare-fun lt!162835 () Option!1003)

(assert (=> b!374258 (= e!230133 (= (tag!1039 (get!1468 lt!162835)) (tag!1039 (rule!1452 lt!162396))))))

(declare-fun b!374259 () Bool)

(declare-fun e!230132 () Option!1003)

(declare-fun e!230135 () Option!1003)

(assert (=> b!374259 (= e!230132 e!230135)))

(declare-fun c!73629 () Bool)

(assert (=> b!374259 (= c!73629 (and ((_ is Cons!4184) rules!1920) (not (= (tag!1039 (h!9581 rules!1920)) (tag!1039 (rule!1452 lt!162396))))))))

(declare-fun d!131625 () Bool)

(declare-fun e!230134 () Bool)

(assert (=> d!131625 e!230134))

(declare-fun res!167627 () Bool)

(assert (=> d!131625 (=> res!167627 e!230134)))

(assert (=> d!131625 (= res!167627 (isEmpty!3001 lt!162835))))

(assert (=> d!131625 (= lt!162835 e!230132)))

(declare-fun c!73630 () Bool)

(assert (=> d!131625 (= c!73630 (and ((_ is Cons!4184) rules!1920) (= (tag!1039 (h!9581 rules!1920)) (tag!1039 (rule!1452 lt!162396)))))))

(assert (=> d!131625 (rulesInvariant!659 thiss!17480 rules!1920)))

(assert (=> d!131625 (= (getRuleFromTag!166 thiss!17480 rules!1920 (tag!1039 (rule!1452 lt!162396))) lt!162835)))

(declare-fun b!374260 () Bool)

(assert (=> b!374260 (= e!230134 e!230133)))

(declare-fun res!167628 () Bool)

(assert (=> b!374260 (=> (not res!167628) (not e!230133))))

(assert (=> b!374260 (= res!167628 (contains!862 rules!1920 (get!1468 lt!162835)))))

(declare-fun b!374261 () Bool)

(assert (=> b!374261 (= e!230135 None!1002)))

(declare-fun b!374262 () Bool)

(declare-fun lt!162834 () Unit!6646)

(declare-fun lt!162833 () Unit!6646)

(assert (=> b!374262 (= lt!162834 lt!162833)))

(assert (=> b!374262 (rulesInvariant!659 thiss!17480 (t!57352 rules!1920))))

(assert (=> b!374262 (= lt!162833 (lemmaInvariantOnRulesThenOnTail!56 thiss!17480 (h!9581 rules!1920) (t!57352 rules!1920)))))

(assert (=> b!374262 (= e!230135 (getRuleFromTag!166 thiss!17480 (t!57352 rules!1920) (tag!1039 (rule!1452 lt!162396))))))

(declare-fun b!374263 () Bool)

(assert (=> b!374263 (= e!230132 (Some!1002 (h!9581 rules!1920)))))

(assert (= (and d!131625 c!73630) b!374263))

(assert (= (and d!131625 (not c!73630)) b!374259))

(assert (= (and b!374259 c!73629) b!374262))

(assert (= (and b!374259 (not c!73629)) b!374261))

(assert (= (and d!131625 (not res!167627)) b!374260))

(assert (= (and b!374260 res!167628) b!374258))

(declare-fun m!555213 () Bool)

(assert (=> b!374258 m!555213))

(declare-fun m!555215 () Bool)

(assert (=> d!131625 m!555215))

(assert (=> d!131625 m!553783))

(assert (=> b!374260 m!555213))

(assert (=> b!374260 m!555213))

(declare-fun m!555217 () Bool)

(assert (=> b!374260 m!555217))

(assert (=> b!374262 m!554941))

(assert (=> b!374262 m!554943))

(declare-fun m!555219 () Bool)

(assert (=> b!374262 m!555219))

(assert (=> b!373442 d!131625))

(declare-fun d!131627 () Bool)

(declare-fun res!167633 () Bool)

(declare-fun e!230140 () Bool)

(assert (=> d!131627 (=> res!167633 e!230140)))

(assert (=> d!131627 (= res!167633 ((_ is Nil!4185) tokens!465))))

(assert (=> d!131627 (= (forall!1156 tokens!465 lambda!11627) e!230140)))

(declare-fun b!374268 () Bool)

(declare-fun e!230141 () Bool)

(assert (=> b!374268 (= e!230140 e!230141)))

(declare-fun res!167634 () Bool)

(assert (=> b!374268 (=> (not res!167634) (not e!230141))))

(assert (=> b!374268 (= res!167634 (dynLambda!2399 lambda!11627 (h!9582 tokens!465)))))

(declare-fun b!374269 () Bool)

(assert (=> b!374269 (= e!230141 (forall!1156 (t!57353 tokens!465) lambda!11627))))

(assert (= (and d!131627 (not res!167633)) b!374268))

(assert (= (and b!374268 res!167634) b!374269))

(declare-fun b_lambda!14663 () Bool)

(assert (=> (not b_lambda!14663) (not b!374268)))

(declare-fun m!555221 () Bool)

(assert (=> b!374268 m!555221))

(declare-fun m!555223 () Bool)

(assert (=> b!374269 m!555223))

(assert (=> b!373423 d!131627))

(declare-fun d!131629 () Bool)

(assert (=> d!131629 (not (matchR!349 (regex!807 (rule!1452 lt!162396)) lt!162366))))

(declare-fun lt!162838 () Unit!6646)

(declare-fun choose!3002 (Regex!1031 List!4193 C!2984) Unit!6646)

(assert (=> d!131629 (= lt!162838 (choose!3002 (regex!807 (rule!1452 lt!162396)) lt!162366 lt!162383))))

(assert (=> d!131629 (validRegex!289 (regex!807 (rule!1452 lt!162396)))))

(assert (=> d!131629 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!86 (regex!807 (rule!1452 lt!162396)) lt!162366 lt!162383) lt!162838)))

(declare-fun bs!45343 () Bool)

(assert (= bs!45343 d!131629))

(assert (=> bs!45343 m!553685))

(declare-fun m!555225 () Bool)

(assert (=> bs!45343 m!555225))

(declare-fun m!555227 () Bool)

(assert (=> bs!45343 m!555227))

(assert (=> b!373444 d!131629))

(declare-fun b!374270 () Bool)

(declare-fun e!230146 () Bool)

(assert (=> b!374270 (= e!230146 (matchR!349 (derivativeStep!180 (regex!807 (rule!1452 lt!162396)) (head!1015 lt!162366)) (tail!577 lt!162366)))))

(declare-fun b!374271 () Bool)

(declare-fun res!167641 () Bool)

(declare-fun e!230143 () Bool)

(assert (=> b!374271 (=> res!167641 e!230143)))

(assert (=> b!374271 (= res!167641 (not (isEmpty!2990 (tail!577 lt!162366))))))

(declare-fun b!374272 () Bool)

(declare-fun e!230145 () Bool)

(assert (=> b!374272 (= e!230145 (= (head!1015 lt!162366) (c!73451 (regex!807 (rule!1452 lt!162396)))))))

(declare-fun b!374273 () Bool)

(assert (=> b!374273 (= e!230143 (not (= (head!1015 lt!162366) (c!73451 (regex!807 (rule!1452 lt!162396))))))))

(declare-fun b!374274 () Bool)

(assert (=> b!374274 (= e!230146 (nullable!214 (regex!807 (rule!1452 lt!162396))))))

(declare-fun b!374275 () Bool)

(declare-fun res!167639 () Bool)

(declare-fun e!230144 () Bool)

(assert (=> b!374275 (=> res!167639 e!230144)))

(assert (=> b!374275 (= res!167639 (not ((_ is ElementMatch!1031) (regex!807 (rule!1452 lt!162396)))))))

(declare-fun e!230142 () Bool)

(assert (=> b!374275 (= e!230142 e!230144)))

(declare-fun b!374276 () Bool)

(declare-fun e!230148 () Bool)

(declare-fun lt!162839 () Bool)

(declare-fun call!23829 () Bool)

(assert (=> b!374276 (= e!230148 (= lt!162839 call!23829))))

(declare-fun b!374277 () Bool)

(declare-fun res!167640 () Bool)

(assert (=> b!374277 (=> (not res!167640) (not e!230145))))

(assert (=> b!374277 (= res!167640 (not call!23829))))

(declare-fun b!374278 () Bool)

(assert (=> b!374278 (= e!230142 (not lt!162839))))

(declare-fun b!374279 () Bool)

(declare-fun res!167638 () Bool)

(assert (=> b!374279 (=> (not res!167638) (not e!230145))))

(assert (=> b!374279 (= res!167638 (isEmpty!2990 (tail!577 lt!162366)))))

(declare-fun b!374280 () Bool)

(declare-fun res!167636 () Bool)

(assert (=> b!374280 (=> res!167636 e!230144)))

(assert (=> b!374280 (= res!167636 e!230145)))

(declare-fun res!167635 () Bool)

(assert (=> b!374280 (=> (not res!167635) (not e!230145))))

(assert (=> b!374280 (= res!167635 lt!162839)))

(declare-fun d!131631 () Bool)

(assert (=> d!131631 e!230148))

(declare-fun c!73633 () Bool)

(assert (=> d!131631 (= c!73633 ((_ is EmptyExpr!1031) (regex!807 (rule!1452 lt!162396))))))

(assert (=> d!131631 (= lt!162839 e!230146)))

(declare-fun c!73634 () Bool)

(assert (=> d!131631 (= c!73634 (isEmpty!2990 lt!162366))))

(assert (=> d!131631 (validRegex!289 (regex!807 (rule!1452 lt!162396)))))

(assert (=> d!131631 (= (matchR!349 (regex!807 (rule!1452 lt!162396)) lt!162366) lt!162839)))

(declare-fun b!374281 () Bool)

(assert (=> b!374281 (= e!230148 e!230142)))

(declare-fun c!73632 () Bool)

(assert (=> b!374281 (= c!73632 ((_ is EmptyLang!1031) (regex!807 (rule!1452 lt!162396))))))

(declare-fun bm!23824 () Bool)

(assert (=> bm!23824 (= call!23829 (isEmpty!2990 lt!162366))))

(declare-fun b!374282 () Bool)

(declare-fun e!230147 () Bool)

(assert (=> b!374282 (= e!230144 e!230147)))

(declare-fun res!167642 () Bool)

(assert (=> b!374282 (=> (not res!167642) (not e!230147))))

(assert (=> b!374282 (= res!167642 (not lt!162839))))

(declare-fun b!374283 () Bool)

(assert (=> b!374283 (= e!230147 e!230143)))

(declare-fun res!167637 () Bool)

(assert (=> b!374283 (=> res!167637 e!230143)))

(assert (=> b!374283 (= res!167637 call!23829)))

(assert (= (and d!131631 c!73634) b!374274))

(assert (= (and d!131631 (not c!73634)) b!374270))

(assert (= (and d!131631 c!73633) b!374276))

(assert (= (and d!131631 (not c!73633)) b!374281))

(assert (= (and b!374281 c!73632) b!374278))

(assert (= (and b!374281 (not c!73632)) b!374275))

(assert (= (and b!374275 (not res!167639)) b!374280))

(assert (= (and b!374280 res!167635) b!374277))

(assert (= (and b!374277 res!167640) b!374279))

(assert (= (and b!374279 res!167638) b!374272))

(assert (= (and b!374280 (not res!167636)) b!374282))

(assert (= (and b!374282 res!167642) b!374283))

(assert (= (and b!374283 (not res!167637)) b!374271))

(assert (= (and b!374271 (not res!167641)) b!374273))

(assert (= (or b!374276 b!374277 b!374283) bm!23824))

(declare-fun m!555229 () Bool)

(assert (=> b!374271 m!555229))

(assert (=> b!374271 m!555229))

(declare-fun m!555231 () Bool)

(assert (=> b!374271 m!555231))

(declare-fun m!555233 () Bool)

(assert (=> bm!23824 m!555233))

(assert (=> b!374273 m!553859))

(assert (=> d!131631 m!555233))

(assert (=> d!131631 m!555227))

(declare-fun m!555235 () Bool)

(assert (=> b!374274 m!555235))

(assert (=> b!374272 m!553859))

(assert (=> b!374279 m!555229))

(assert (=> b!374279 m!555229))

(assert (=> b!374279 m!555231))

(assert (=> b!374270 m!553859))

(assert (=> b!374270 m!553859))

(declare-fun m!555237 () Bool)

(assert (=> b!374270 m!555237))

(assert (=> b!374270 m!555229))

(assert (=> b!374270 m!555237))

(assert (=> b!374270 m!555229))

(declare-fun m!555239 () Bool)

(assert (=> b!374270 m!555239))

(assert (=> b!373444 d!131631))

(declare-fun d!131633 () Bool)

(declare-fun lt!162840 () Bool)

(assert (=> d!131633 (= lt!162840 (select (content!660 rules!1920) (rule!1452 separatorToken!170)))))

(declare-fun e!230150 () Bool)

(assert (=> d!131633 (= lt!162840 e!230150)))

(declare-fun res!167643 () Bool)

(assert (=> d!131633 (=> (not res!167643) (not e!230150))))

(assert (=> d!131633 (= res!167643 ((_ is Cons!4184) rules!1920))))

(assert (=> d!131633 (= (contains!862 rules!1920 (rule!1452 separatorToken!170)) lt!162840)))

(declare-fun b!374284 () Bool)

(declare-fun e!230149 () Bool)

(assert (=> b!374284 (= e!230150 e!230149)))

(declare-fun res!167644 () Bool)

(assert (=> b!374284 (=> res!167644 e!230149)))

(assert (=> b!374284 (= res!167644 (= (h!9581 rules!1920) (rule!1452 separatorToken!170)))))

(declare-fun b!374285 () Bool)

(assert (=> b!374285 (= e!230149 (contains!862 (t!57352 rules!1920) (rule!1452 separatorToken!170)))))

(assert (= (and d!131633 res!167643) b!374284))

(assert (= (and b!374284 (not res!167644)) b!374285))

(assert (=> d!131633 m!553951))

(declare-fun m!555241 () Bool)

(assert (=> d!131633 m!555241))

(declare-fun m!555243 () Bool)

(assert (=> b!374285 m!555243))

(assert (=> b!373422 d!131633))

(declare-fun d!131635 () Bool)

(declare-fun res!167647 () Bool)

(declare-fun e!230153 () Bool)

(assert (=> d!131635 (=> (not res!167647) (not e!230153))))

(declare-fun rulesValid!276 (LexerInterface!693 List!4194) Bool)

(assert (=> d!131635 (= res!167647 (rulesValid!276 thiss!17480 rules!1920))))

(assert (=> d!131635 (= (rulesInvariant!659 thiss!17480 rules!1920) e!230153)))

(declare-fun b!374288 () Bool)

(declare-datatypes ((List!4197 0))(
  ( (Nil!4187) (Cons!4187 (h!9584 String!5225) (t!57441 List!4197)) )
))
(declare-fun noDuplicateTag!276 (LexerInterface!693 List!4194 List!4197) Bool)

(assert (=> b!374288 (= e!230153 (noDuplicateTag!276 thiss!17480 rules!1920 Nil!4187))))

(assert (= (and d!131635 res!167647) b!374288))

(declare-fun m!555245 () Bool)

(assert (=> d!131635 m!555245))

(declare-fun m!555247 () Bool)

(assert (=> b!374288 m!555247))

(assert (=> b!373419 d!131635))

(declare-fun lt!162843 () Bool)

(declare-fun d!131637 () Bool)

(assert (=> d!131637 (= lt!162843 (isEmpty!2992 (list!1811 (_1!2681 (lex!485 thiss!17480 rules!1920 (seqFromList!979 lt!162365))))))))

(declare-fun isEmpty!3002 (Conc!1437) Bool)

(assert (=> d!131637 (= lt!162843 (isEmpty!3002 (c!73452 (_1!2681 (lex!485 thiss!17480 rules!1920 (seqFromList!979 lt!162365))))))))

(assert (=> d!131637 (= (isEmpty!2991 (_1!2681 (lex!485 thiss!17480 rules!1920 (seqFromList!979 lt!162365)))) lt!162843)))

(declare-fun bs!45344 () Bool)

(assert (= bs!45344 d!131637))

(declare-fun m!555249 () Bool)

(assert (=> bs!45344 m!555249))

(assert (=> bs!45344 m!555249))

(declare-fun m!555251 () Bool)

(assert (=> bs!45344 m!555251))

(declare-fun m!555253 () Bool)

(assert (=> bs!45344 m!555253))

(assert (=> b!373440 d!131637))

(declare-fun e!230155 () Bool)

(declare-fun lt!162844 () tuple2!4930)

(declare-fun b!374289 () Bool)

(assert (=> b!374289 (= e!230155 (= (list!1807 (_2!2681 lt!162844)) (_2!2685 (lexList!259 thiss!17480 rules!1920 (list!1807 (seqFromList!979 lt!162365))))))))

(declare-fun b!374290 () Bool)

(declare-fun res!167648 () Bool)

(assert (=> b!374290 (=> (not res!167648) (not e!230155))))

(assert (=> b!374290 (= res!167648 (= (list!1811 (_1!2681 lt!162844)) (_1!2685 (lexList!259 thiss!17480 rules!1920 (list!1807 (seqFromList!979 lt!162365))))))))

(declare-fun b!374291 () Bool)

(declare-fun e!230154 () Bool)

(assert (=> b!374291 (= e!230154 (not (isEmpty!2991 (_1!2681 lt!162844))))))

(declare-fun b!374292 () Bool)

(declare-fun e!230156 () Bool)

(assert (=> b!374292 (= e!230156 e!230154)))

(declare-fun res!167649 () Bool)

(assert (=> b!374292 (= res!167649 (< (size!3393 (_2!2681 lt!162844)) (size!3393 (seqFromList!979 lt!162365))))))

(assert (=> b!374292 (=> (not res!167649) (not e!230154))))

(declare-fun d!131639 () Bool)

(assert (=> d!131639 e!230155))

(declare-fun res!167650 () Bool)

(assert (=> d!131639 (=> (not res!167650) (not e!230155))))

(assert (=> d!131639 (= res!167650 e!230156)))

(declare-fun c!73635 () Bool)

(assert (=> d!131639 (= c!73635 (> (size!3385 (_1!2681 lt!162844)) 0))))

(assert (=> d!131639 (= lt!162844 (lexTailRecV2!226 thiss!17480 rules!1920 (seqFromList!979 lt!162365) (BalanceConc!2881 Empty!1436) (seqFromList!979 lt!162365) (BalanceConc!2883 Empty!1437)))))

(assert (=> d!131639 (= (lex!485 thiss!17480 rules!1920 (seqFromList!979 lt!162365)) lt!162844)))

(declare-fun b!374293 () Bool)

(assert (=> b!374293 (= e!230156 (= (_2!2681 lt!162844) (seqFromList!979 lt!162365)))))

(assert (= (and d!131639 c!73635) b!374292))

(assert (= (and d!131639 (not c!73635)) b!374293))

(assert (= (and b!374292 res!167649) b!374291))

(assert (= (and d!131639 res!167650) b!374290))

(assert (= (and b!374290 res!167648) b!374289))

(declare-fun m!555255 () Bool)

(assert (=> b!374289 m!555255))

(assert (=> b!374289 m!553801))

(declare-fun m!555257 () Bool)

(assert (=> b!374289 m!555257))

(assert (=> b!374289 m!555257))

(declare-fun m!555259 () Bool)

(assert (=> b!374289 m!555259))

(declare-fun m!555261 () Bool)

(assert (=> d!131639 m!555261))

(assert (=> d!131639 m!553801))

(assert (=> d!131639 m!553801))

(declare-fun m!555263 () Bool)

(assert (=> d!131639 m!555263))

(declare-fun m!555265 () Bool)

(assert (=> b!374292 m!555265))

(assert (=> b!374292 m!553801))

(declare-fun m!555267 () Bool)

(assert (=> b!374292 m!555267))

(declare-fun m!555269 () Bool)

(assert (=> b!374290 m!555269))

(assert (=> b!374290 m!553801))

(assert (=> b!374290 m!555257))

(assert (=> b!374290 m!555257))

(assert (=> b!374290 m!555259))

(declare-fun m!555271 () Bool)

(assert (=> b!374291 m!555271))

(assert (=> b!373440 d!131639))

(declare-fun d!131641 () Bool)

(assert (=> d!131641 (= (seqFromList!979 lt!162365) (fromListB!422 lt!162365))))

(declare-fun bs!45345 () Bool)

(assert (= bs!45345 d!131641))

(declare-fun m!555273 () Bool)

(assert (=> bs!45345 m!555273))

(assert (=> b!373440 d!131641))

(declare-fun bs!45351 () Bool)

(declare-fun d!131643 () Bool)

(assert (= bs!45351 (and d!131643 b!373876)))

(declare-fun lambda!11659 () Int)

(assert (=> bs!45351 (= lambda!11659 lambda!11642)))

(declare-fun bs!45352 () Bool)

(assert (= bs!45352 (and d!131643 b!373812)))

(assert (=> bs!45352 (= lambda!11659 lambda!11639)))

(declare-fun bs!45353 () Bool)

(assert (= bs!45353 (and d!131643 b!373423)))

(assert (=> bs!45353 (not (= lambda!11659 lambda!11627))))

(declare-fun bs!45354 () Bool)

(assert (= bs!45354 (and d!131643 b!373436)))

(assert (=> bs!45354 (= lambda!11659 lambda!11628)))

(declare-fun bs!45355 () Bool)

(assert (= bs!45355 (and d!131643 d!131409)))

(assert (=> bs!45355 (not (= lambda!11659 lambda!11638))))

(declare-fun b!374398 () Bool)

(declare-fun e!230233 () Bool)

(assert (=> b!374398 (= e!230233 true)))

(declare-fun b!374397 () Bool)

(declare-fun e!230232 () Bool)

(assert (=> b!374397 (= e!230232 e!230233)))

(declare-fun b!374396 () Bool)

(declare-fun e!230231 () Bool)

(assert (=> b!374396 (= e!230231 e!230232)))

(assert (=> d!131643 e!230231))

(assert (= b!374397 b!374398))

(assert (= b!374396 b!374397))

(assert (= (and d!131643 ((_ is Cons!4184) rules!1920)) b!374396))

(assert (=> b!374398 (< (dynLambda!2393 order!3517 (toValue!1590 (transformation!807 (h!9581 rules!1920)))) (dynLambda!2394 order!3519 lambda!11659))))

(assert (=> b!374398 (< (dynLambda!2395 order!3521 (toChars!1449 (transformation!807 (h!9581 rules!1920)))) (dynLambda!2394 order!3519 lambda!11659))))

(assert (=> d!131643 true))

(declare-fun e!230230 () Bool)

(assert (=> d!131643 e!230230))

(declare-fun res!167684 () Bool)

(assert (=> d!131643 (=> (not res!167684) (not e!230230))))

(declare-fun lt!162876 () Bool)

(assert (=> d!131643 (= res!167684 (= lt!162876 (forall!1156 (list!1811 lt!162381) lambda!11659)))))

(declare-fun forall!1158 (BalanceConc!2882 Int) Bool)

(assert (=> d!131643 (= lt!162876 (forall!1158 lt!162381 lambda!11659))))

(assert (=> d!131643 (not (isEmpty!2994 rules!1920))))

(assert (=> d!131643 (= (rulesProduceEachTokenIndividually!485 thiss!17480 rules!1920 lt!162381) lt!162876)))

(declare-fun b!374395 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!285 (LexerInterface!693 List!4194 List!4195) Bool)

(assert (=> b!374395 (= e!230230 (= lt!162876 (rulesProduceEachTokenIndividuallyList!285 thiss!17480 rules!1920 (list!1811 lt!162381))))))

(assert (= (and d!131643 res!167684) b!374395))

(assert (=> d!131643 m!554399))

(assert (=> d!131643 m!554399))

(declare-fun m!555371 () Bool)

(assert (=> d!131643 m!555371))

(declare-fun m!555373 () Bool)

(assert (=> d!131643 m!555373))

(assert (=> d!131643 m!553787))

(assert (=> b!374395 m!554399))

(assert (=> b!374395 m!554399))

(declare-fun m!555375 () Bool)

(assert (=> b!374395 m!555375))

(assert (=> b!373461 d!131643))

(declare-fun d!131671 () Bool)

(declare-fun fromListB!423 (List!4195) BalanceConc!2882)

(assert (=> d!131671 (= (seqFromList!980 tokens!465) (fromListB!423 tokens!465))))

(declare-fun bs!45356 () Bool)

(assert (= bs!45356 d!131671))

(declare-fun m!555377 () Bool)

(assert (=> bs!45356 m!555377))

(assert (=> b!373461 d!131671))

(declare-fun b!374409 () Bool)

(declare-fun res!167687 () Bool)

(declare-fun e!230241 () Bool)

(assert (=> b!374409 (=> res!167687 e!230241)))

(assert (=> b!374409 (= res!167687 (not ((_ is IntegerValue!2489) (value!27315 (h!9582 tokens!465)))))))

(declare-fun e!230242 () Bool)

(assert (=> b!374409 (= e!230242 e!230241)))

(declare-fun b!374410 () Bool)

(declare-fun inv!15 (TokenValue!829) Bool)

(assert (=> b!374410 (= e!230241 (inv!15 (value!27315 (h!9582 tokens!465))))))

(declare-fun b!374411 () Bool)

(declare-fun e!230240 () Bool)

(assert (=> b!374411 (= e!230240 e!230242)))

(declare-fun c!73647 () Bool)

(assert (=> b!374411 (= c!73647 ((_ is IntegerValue!2488) (value!27315 (h!9582 tokens!465))))))

(declare-fun d!131673 () Bool)

(declare-fun c!73646 () Bool)

(assert (=> d!131673 (= c!73646 ((_ is IntegerValue!2487) (value!27315 (h!9582 tokens!465))))))

(assert (=> d!131673 (= (inv!21 (value!27315 (h!9582 tokens!465))) e!230240)))

(declare-fun b!374412 () Bool)

(declare-fun inv!17 (TokenValue!829) Bool)

(assert (=> b!374412 (= e!230242 (inv!17 (value!27315 (h!9582 tokens!465))))))

(declare-fun b!374413 () Bool)

(declare-fun inv!16 (TokenValue!829) Bool)

(assert (=> b!374413 (= e!230240 (inv!16 (value!27315 (h!9582 tokens!465))))))

(assert (= (and d!131673 c!73646) b!374413))

(assert (= (and d!131673 (not c!73646)) b!374411))

(assert (= (and b!374411 c!73647) b!374412))

(assert (= (and b!374411 (not c!73647)) b!374409))

(assert (= (and b!374409 (not res!167687)) b!374410))

(declare-fun m!555379 () Bool)

(assert (=> b!374410 m!555379))

(declare-fun m!555381 () Bool)

(assert (=> b!374412 m!555381))

(declare-fun m!555383 () Bool)

(assert (=> b!374413 m!555383))

(assert (=> b!373418 d!131673))

(declare-fun d!131675 () Bool)

(declare-fun res!167692 () Bool)

(declare-fun e!230247 () Bool)

(assert (=> d!131675 (=> res!167692 e!230247)))

(assert (=> d!131675 (= res!167692 (not ((_ is Cons!4184) rules!1920)))))

(assert (=> d!131675 (= (sepAndNonSepRulesDisjointChars!396 rules!1920 rules!1920) e!230247)))

(declare-fun b!374418 () Bool)

(declare-fun e!230248 () Bool)

(assert (=> b!374418 (= e!230247 e!230248)))

(declare-fun res!167693 () Bool)

(assert (=> b!374418 (=> (not res!167693) (not e!230248))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!169 (Rule!1414 List!4194) Bool)

(assert (=> b!374418 (= res!167693 (ruleDisjointCharsFromAllFromOtherType!169 (h!9581 rules!1920) rules!1920))))

(declare-fun b!374419 () Bool)

(assert (=> b!374419 (= e!230248 (sepAndNonSepRulesDisjointChars!396 rules!1920 (t!57352 rules!1920)))))

(assert (= (and d!131675 (not res!167692)) b!374418))

(assert (= (and b!374418 res!167693) b!374419))

(declare-fun m!555385 () Bool)

(assert (=> b!374418 m!555385))

(declare-fun m!555387 () Bool)

(assert (=> b!374419 m!555387))

(assert (=> b!373463 d!131675))

(declare-fun d!131677 () Bool)

(assert (=> d!131677 (= (seqFromList!980 (t!57353 tokens!465)) (fromListB!423 (t!57353 tokens!465)))))

(declare-fun bs!45357 () Bool)

(assert (= bs!45357 d!131677))

(declare-fun m!555389 () Bool)

(assert (=> bs!45357 m!555389))

(assert (=> b!373459 d!131677))

(declare-fun d!131679 () Bool)

(assert (=> d!131679 (= (list!1807 (charsOf!450 separatorToken!170)) (list!1810 (c!73450 (charsOf!450 separatorToken!170))))))

(declare-fun bs!45358 () Bool)

(assert (= bs!45358 d!131679))

(declare-fun m!555391 () Bool)

(assert (=> bs!45358 m!555391))

(assert (=> b!373459 d!131679))

(declare-fun d!131681 () Bool)

(assert (=> d!131681 (= (list!1807 (printWithSeparatorTokenWhenNeededRec!366 thiss!17480 rules!1920 (seqFromList!980 (t!57353 tokens!465)) separatorToken!170 0)) (list!1810 (c!73450 (printWithSeparatorTokenWhenNeededRec!366 thiss!17480 rules!1920 (seqFromList!980 (t!57353 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!45359 () Bool)

(assert (= bs!45359 d!131681))

(declare-fun m!555393 () Bool)

(assert (=> bs!45359 m!555393))

(assert (=> b!373459 d!131681))

(declare-fun d!131683 () Bool)

(declare-fun e!230254 () Bool)

(assert (=> d!131683 e!230254))

(declare-fun res!167698 () Bool)

(assert (=> d!131683 (=> (not res!167698) (not e!230254))))

(declare-fun lt!162879 () List!4193)

(assert (=> d!131683 (= res!167698 (= (content!662 lt!162879) ((_ map or) (content!662 lt!162388) (content!662 lt!162384))))))

(declare-fun e!230253 () List!4193)

(assert (=> d!131683 (= lt!162879 e!230253)))

(declare-fun c!73650 () Bool)

(assert (=> d!131683 (= c!73650 ((_ is Nil!4183) lt!162388))))

(assert (=> d!131683 (= (++!1170 lt!162388 lt!162384) lt!162879)))

(declare-fun b!374428 () Bool)

(assert (=> b!374428 (= e!230253 lt!162384)))

(declare-fun b!374430 () Bool)

(declare-fun res!167699 () Bool)

(assert (=> b!374430 (=> (not res!167699) (not e!230254))))

(assert (=> b!374430 (= res!167699 (= (size!3388 lt!162879) (+ (size!3388 lt!162388) (size!3388 lt!162384))))))

(declare-fun b!374429 () Bool)

(assert (=> b!374429 (= e!230253 (Cons!4183 (h!9580 lt!162388) (++!1170 (t!57351 lt!162388) lt!162384)))))

(declare-fun b!374431 () Bool)

(assert (=> b!374431 (= e!230254 (or (not (= lt!162384 Nil!4183)) (= lt!162879 lt!162388)))))

(assert (= (and d!131683 c!73650) b!374428))

(assert (= (and d!131683 (not c!73650)) b!374429))

(assert (= (and d!131683 res!167698) b!374430))

(assert (= (and b!374430 res!167699) b!374431))

(declare-fun m!555395 () Bool)

(assert (=> d!131683 m!555395))

(declare-fun m!555397 () Bool)

(assert (=> d!131683 m!555397))

(declare-fun m!555399 () Bool)

(assert (=> d!131683 m!555399))

(declare-fun m!555401 () Bool)

(assert (=> b!374430 m!555401))

(declare-fun m!555403 () Bool)

(assert (=> b!374430 m!555403))

(declare-fun m!555405 () Bool)

(assert (=> b!374430 m!555405))

(declare-fun m!555407 () Bool)

(assert (=> b!374429 m!555407))

(assert (=> b!373459 d!131683))

(declare-fun d!131685 () Bool)

(declare-fun e!230256 () Bool)

(assert (=> d!131685 e!230256))

(declare-fun res!167700 () Bool)

(assert (=> d!131685 (=> (not res!167700) (not e!230256))))

(declare-fun lt!162880 () List!4193)

(assert (=> d!131685 (= res!167700 (= (content!662 lt!162880) ((_ map or) (content!662 (++!1170 lt!162365 lt!162388)) (content!662 lt!162384))))))

(declare-fun e!230255 () List!4193)

(assert (=> d!131685 (= lt!162880 e!230255)))

(declare-fun c!73651 () Bool)

(assert (=> d!131685 (= c!73651 ((_ is Nil!4183) (++!1170 lt!162365 lt!162388)))))

(assert (=> d!131685 (= (++!1170 (++!1170 lt!162365 lt!162388) lt!162384) lt!162880)))

(declare-fun b!374432 () Bool)

(assert (=> b!374432 (= e!230255 lt!162384)))

(declare-fun b!374434 () Bool)

(declare-fun res!167701 () Bool)

(assert (=> b!374434 (=> (not res!167701) (not e!230256))))

(assert (=> b!374434 (= res!167701 (= (size!3388 lt!162880) (+ (size!3388 (++!1170 lt!162365 lt!162388)) (size!3388 lt!162384))))))

(declare-fun b!374433 () Bool)

(assert (=> b!374433 (= e!230255 (Cons!4183 (h!9580 (++!1170 lt!162365 lt!162388)) (++!1170 (t!57351 (++!1170 lt!162365 lt!162388)) lt!162384)))))

(declare-fun b!374435 () Bool)

(assert (=> b!374435 (= e!230256 (or (not (= lt!162384 Nil!4183)) (= lt!162880 (++!1170 lt!162365 lt!162388))))))

(assert (= (and d!131685 c!73651) b!374432))

(assert (= (and d!131685 (not c!73651)) b!374433))

(assert (= (and d!131685 res!167700) b!374434))

(assert (= (and b!374434 res!167701) b!374435))

(declare-fun m!555409 () Bool)

(assert (=> d!131685 m!555409))

(assert (=> d!131685 m!553739))

(declare-fun m!555411 () Bool)

(assert (=> d!131685 m!555411))

(assert (=> d!131685 m!555399))

(declare-fun m!555413 () Bool)

(assert (=> b!374434 m!555413))

(assert (=> b!374434 m!553739))

(declare-fun m!555415 () Bool)

(assert (=> b!374434 m!555415))

(assert (=> b!374434 m!555405))

(declare-fun m!555417 () Bool)

(assert (=> b!374433 m!555417))

(assert (=> b!373459 d!131685))

(declare-fun d!131687 () Bool)

(assert (=> d!131687 (= (++!1170 (++!1170 lt!162365 lt!162388) lt!162384) (++!1170 lt!162365 (++!1170 lt!162388 lt!162384)))))

(declare-fun lt!162883 () Unit!6646)

(declare-fun choose!3003 (List!4193 List!4193 List!4193) Unit!6646)

(assert (=> d!131687 (= lt!162883 (choose!3003 lt!162365 lt!162388 lt!162384))))

(assert (=> d!131687 (= (lemmaConcatAssociativity!526 lt!162365 lt!162388 lt!162384) lt!162883)))

(declare-fun bs!45360 () Bool)

(assert (= bs!45360 d!131687))

(assert (=> bs!45360 m!553739))

(assert (=> bs!45360 m!553741))

(assert (=> bs!45360 m!553727))

(assert (=> bs!45360 m!553739))

(declare-fun m!555419 () Bool)

(assert (=> bs!45360 m!555419))

(assert (=> bs!45360 m!553727))

(declare-fun m!555421 () Bool)

(assert (=> bs!45360 m!555421))

(assert (=> b!373459 d!131687))

(declare-fun bs!45361 () Bool)

(declare-fun b!374441 () Bool)

(assert (= bs!45361 (and b!374441 b!373876)))

(declare-fun lambda!11660 () Int)

(assert (=> bs!45361 (= lambda!11660 lambda!11642)))

(declare-fun bs!45362 () Bool)

(assert (= bs!45362 (and b!374441 d!131643)))

(assert (=> bs!45362 (= lambda!11660 lambda!11659)))

(declare-fun bs!45363 () Bool)

(assert (= bs!45363 (and b!374441 b!373812)))

(assert (=> bs!45363 (= lambda!11660 lambda!11639)))

(declare-fun bs!45364 () Bool)

(assert (= bs!45364 (and b!374441 b!373423)))

(assert (=> bs!45364 (not (= lambda!11660 lambda!11627))))

(declare-fun bs!45365 () Bool)

(assert (= bs!45365 (and b!374441 b!373436)))

(assert (=> bs!45365 (= lambda!11660 lambda!11628)))

(declare-fun bs!45366 () Bool)

(assert (= bs!45366 (and b!374441 d!131409)))

(assert (=> bs!45366 (not (= lambda!11660 lambda!11638))))

(declare-fun b!374446 () Bool)

(declare-fun e!230263 () Bool)

(assert (=> b!374446 (= e!230263 true)))

(declare-fun b!374445 () Bool)

(declare-fun e!230262 () Bool)

(assert (=> b!374445 (= e!230262 e!230263)))

(declare-fun b!374444 () Bool)

(declare-fun e!230261 () Bool)

(assert (=> b!374444 (= e!230261 e!230262)))

(assert (=> b!374441 e!230261))

(assert (= b!374445 b!374446))

(assert (= b!374444 b!374445))

(assert (= (and b!374441 ((_ is Cons!4184) rules!1920)) b!374444))

(assert (=> b!374446 (< (dynLambda!2393 order!3517 (toValue!1590 (transformation!807 (h!9581 rules!1920)))) (dynLambda!2394 order!3519 lambda!11660))))

(assert (=> b!374446 (< (dynLambda!2395 order!3521 (toChars!1449 (transformation!807 (h!9581 rules!1920)))) (dynLambda!2394 order!3519 lambda!11660))))

(assert (=> b!374441 true))

(declare-fun c!73652 () Bool)

(declare-fun call!23837 () BalanceConc!2880)

(declare-fun call!23834 () BalanceConc!2880)

(declare-fun call!23835 () List!4193)

(declare-fun bm!23829 () Bool)

(assert (=> bm!23829 (= call!23835 (list!1807 (ite c!73652 call!23837 call!23834)))))

(declare-fun bm!23830 () Bool)

(assert (=> bm!23830 (= call!23834 call!23837)))

(declare-fun b!374436 () Bool)

(declare-fun e!230260 () List!4193)

(declare-fun call!23836 () List!4193)

(declare-fun lt!162888 () List!4193)

(assert (=> b!374436 (= e!230260 (++!1170 call!23836 lt!162888))))

(declare-fun b!374437 () Bool)

(declare-fun e!230257 () BalanceConc!2880)

(assert (=> b!374437 (= e!230257 call!23834)))

(declare-fun bm!23831 () Bool)

(assert (=> bm!23831 (= call!23837 (charsOf!450 (h!9582 (t!57353 tokens!465))))))

(declare-fun b!374438 () Bool)

(declare-fun e!230258 () List!4193)

(assert (=> b!374438 (= e!230258 Nil!4183)))

(declare-fun b!374439 () Bool)

(assert (=> b!374439 (= e!230257 (charsOf!450 separatorToken!170))))

(declare-fun bm!23832 () Bool)

(declare-fun call!23838 () List!4193)

(assert (=> bm!23832 (= call!23838 (list!1807 e!230257))))

(declare-fun c!73655 () Bool)

(declare-fun c!73654 () Bool)

(assert (=> bm!23832 (= c!73655 c!73654)))

(declare-fun e!230259 () List!4193)

(assert (=> b!374441 (= e!230258 e!230259)))

(declare-fun lt!162889 () Unit!6646)

(assert (=> b!374441 (= lt!162889 (forallContained!360 (t!57353 tokens!465) lambda!11660 (h!9582 (t!57353 tokens!465))))))

(assert (=> b!374441 (= lt!162888 (printWithSeparatorTokenWhenNeededList!374 thiss!17480 rules!1920 (t!57353 (t!57353 tokens!465)) separatorToken!170))))

(declare-fun lt!162884 () Option!1005)

(assert (=> b!374441 (= lt!162884 (maxPrefix!409 thiss!17480 rules!1920 (++!1170 (list!1807 (charsOf!450 (h!9582 (t!57353 tokens!465)))) lt!162888)))))

(assert (=> b!374441 (= c!73652 (and ((_ is Some!1004) lt!162884) (= (_1!2682 (v!15137 lt!162884)) (h!9582 (t!57353 tokens!465)))))))

(declare-fun b!374442 () Bool)

(assert (=> b!374442 (= c!73654 (and ((_ is Some!1004) lt!162884) (not (= (_1!2682 (v!15137 lt!162884)) (h!9582 (t!57353 tokens!465))))))))

(assert (=> b!374442 (= e!230259 e!230260)))

(declare-fun bm!23833 () Bool)

(assert (=> bm!23833 (= call!23836 (++!1170 call!23835 (ite c!73652 lt!162888 call!23838)))))

(declare-fun b!374443 () Bool)

(assert (=> b!374443 (= e!230260 Nil!4183)))

(assert (=> b!374443 (= (print!418 thiss!17480 (singletonSeq!353 (h!9582 (t!57353 tokens!465)))) (printTailRec!379 thiss!17480 (singletonSeq!353 (h!9582 (t!57353 tokens!465))) 0 (BalanceConc!2881 Empty!1436)))))

(declare-fun lt!162885 () Unit!6646)

(declare-fun Unit!6664 () Unit!6646)

(assert (=> b!374443 (= lt!162885 Unit!6664)))

(declare-fun lt!162886 () Unit!6646)

(assert (=> b!374443 (= lt!162886 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!161 thiss!17480 rules!1920 call!23838 lt!162888))))

(assert (=> b!374443 false))

(declare-fun lt!162887 () Unit!6646)

(declare-fun Unit!6665 () Unit!6646)

(assert (=> b!374443 (= lt!162887 Unit!6665)))

(declare-fun d!131689 () Bool)

(declare-fun c!73653 () Bool)

(assert (=> d!131689 (= c!73653 ((_ is Cons!4185) (t!57353 tokens!465)))))

(assert (=> d!131689 (= (printWithSeparatorTokenWhenNeededList!374 thiss!17480 rules!1920 (t!57353 tokens!465) separatorToken!170) e!230258)))

(declare-fun b!374440 () Bool)

(assert (=> b!374440 (= e!230259 call!23836)))

(assert (= (and d!131689 c!73653) b!374441))

(assert (= (and d!131689 (not c!73653)) b!374438))

(assert (= (and b!374441 c!73652) b!374440))

(assert (= (and b!374441 (not c!73652)) b!374442))

(assert (= (and b!374442 c!73654) b!374436))

(assert (= (and b!374442 (not c!73654)) b!374443))

(assert (= (or b!374436 b!374443) bm!23830))

(assert (= (or b!374436 b!374443) bm!23832))

(assert (= (and bm!23832 c!73655) b!374439))

(assert (= (and bm!23832 (not c!73655)) b!374437))

(assert (= (or b!374440 bm!23830) bm!23831))

(assert (= (or b!374440 b!374436) bm!23829))

(assert (= (or b!374440 b!374436) bm!23833))

(declare-fun m!555423 () Bool)

(assert (=> bm!23829 m!555423))

(assert (=> b!374439 m!553731))

(declare-fun m!555425 () Bool)

(assert (=> b!374441 m!555425))

(declare-fun m!555427 () Bool)

(assert (=> b!374441 m!555427))

(declare-fun m!555429 () Bool)

(assert (=> b!374441 m!555429))

(declare-fun m!555431 () Bool)

(assert (=> b!374441 m!555431))

(assert (=> b!374441 m!555429))

(assert (=> b!374441 m!555425))

(assert (=> b!374441 m!555427))

(declare-fun m!555433 () Bool)

(assert (=> b!374441 m!555433))

(declare-fun m!555435 () Bool)

(assert (=> b!374441 m!555435))

(declare-fun m!555437 () Bool)

(assert (=> b!374436 m!555437))

(declare-fun m!555439 () Bool)

(assert (=> bm!23833 m!555439))

(declare-fun m!555441 () Bool)

(assert (=> b!374443 m!555441))

(assert (=> b!374443 m!555441))

(declare-fun m!555443 () Bool)

(assert (=> b!374443 m!555443))

(assert (=> b!374443 m!555441))

(declare-fun m!555445 () Bool)

(assert (=> b!374443 m!555445))

(declare-fun m!555447 () Bool)

(assert (=> b!374443 m!555447))

(declare-fun m!555449 () Bool)

(assert (=> bm!23832 m!555449))

(assert (=> bm!23831 m!555429))

(assert (=> b!373459 d!131689))

(declare-fun d!131691 () Bool)

(declare-fun e!230265 () Bool)

(assert (=> d!131691 e!230265))

(declare-fun res!167702 () Bool)

(assert (=> d!131691 (=> (not res!167702) (not e!230265))))

(declare-fun lt!162890 () List!4193)

(assert (=> d!131691 (= res!167702 (= (content!662 lt!162890) ((_ map or) (content!662 lt!162365) (content!662 lt!162371))))))

(declare-fun e!230264 () List!4193)

(assert (=> d!131691 (= lt!162890 e!230264)))

(declare-fun c!73656 () Bool)

(assert (=> d!131691 (= c!73656 ((_ is Nil!4183) lt!162365))))

(assert (=> d!131691 (= (++!1170 lt!162365 lt!162371) lt!162890)))

(declare-fun b!374447 () Bool)

(assert (=> b!374447 (= e!230264 lt!162371)))

(declare-fun b!374449 () Bool)

(declare-fun res!167703 () Bool)

(assert (=> b!374449 (=> (not res!167703) (not e!230265))))

(assert (=> b!374449 (= res!167703 (= (size!3388 lt!162890) (+ (size!3388 lt!162365) (size!3388 lt!162371))))))

(declare-fun b!374448 () Bool)

(assert (=> b!374448 (= e!230264 (Cons!4183 (h!9580 lt!162365) (++!1170 (t!57351 lt!162365) lt!162371)))))

(declare-fun b!374450 () Bool)

(assert (=> b!374450 (= e!230265 (or (not (= lt!162371 Nil!4183)) (= lt!162890 lt!162365)))))

(assert (= (and d!131691 c!73656) b!374447))

(assert (= (and d!131691 (not c!73656)) b!374448))

(assert (= (and d!131691 res!167702) b!374449))

(assert (= (and b!374449 res!167703) b!374450))

(declare-fun m!555451 () Bool)

(assert (=> d!131691 m!555451))

(declare-fun m!555453 () Bool)

(assert (=> d!131691 m!555453))

(declare-fun m!555455 () Bool)

(assert (=> d!131691 m!555455))

(declare-fun m!555457 () Bool)

(assert (=> b!374449 m!555457))

(assert (=> b!374449 m!554735))

(assert (=> b!374449 m!554519))

(declare-fun m!555459 () Bool)

(assert (=> b!374448 m!555459))

(assert (=> b!373459 d!131691))

(declare-fun bs!45367 () Bool)

(declare-fun d!131693 () Bool)

(assert (= bs!45367 (and d!131693 b!373876)))

(declare-fun lambda!11661 () Int)

(assert (=> bs!45367 (not (= lambda!11661 lambda!11642))))

(declare-fun bs!45368 () Bool)

(assert (= bs!45368 (and d!131693 d!131643)))

(assert (=> bs!45368 (not (= lambda!11661 lambda!11659))))

(declare-fun bs!45369 () Bool)

(assert (= bs!45369 (and d!131693 b!373812)))

(assert (=> bs!45369 (not (= lambda!11661 lambda!11639))))

(declare-fun bs!45370 () Bool)

(assert (= bs!45370 (and d!131693 b!374441)))

(assert (=> bs!45370 (not (= lambda!11661 lambda!11660))))

(declare-fun bs!45371 () Bool)

(assert (= bs!45371 (and d!131693 b!373423)))

(assert (=> bs!45371 (= lambda!11661 lambda!11627)))

(declare-fun bs!45372 () Bool)

(assert (= bs!45372 (and d!131693 b!373436)))

(assert (=> bs!45372 (not (= lambda!11661 lambda!11628))))

(declare-fun bs!45373 () Bool)

(assert (= bs!45373 (and d!131693 d!131409)))

(assert (=> bs!45373 (= lambda!11661 lambda!11638)))

(declare-fun bs!45374 () Bool)

(declare-fun b!374459 () Bool)

(assert (= bs!45374 (and b!374459 b!373876)))

(declare-fun lambda!11662 () Int)

(assert (=> bs!45374 (= lambda!11662 lambda!11642)))

(declare-fun bs!45375 () Bool)

(assert (= bs!45375 (and b!374459 d!131643)))

(assert (=> bs!45375 (= lambda!11662 lambda!11659)))

(declare-fun bs!45376 () Bool)

(assert (= bs!45376 (and b!374459 b!373812)))

(assert (=> bs!45376 (= lambda!11662 lambda!11639)))

(declare-fun bs!45377 () Bool)

(assert (= bs!45377 (and b!374459 b!374441)))

(assert (=> bs!45377 (= lambda!11662 lambda!11660)))

(declare-fun bs!45378 () Bool)

(assert (= bs!45378 (and b!374459 b!373423)))

(assert (=> bs!45378 (not (= lambda!11662 lambda!11627))))

(declare-fun bs!45379 () Bool)

(assert (= bs!45379 (and b!374459 b!373436)))

(assert (=> bs!45379 (= lambda!11662 lambda!11628)))

(declare-fun bs!45380 () Bool)

(assert (= bs!45380 (and b!374459 d!131409)))

(assert (=> bs!45380 (not (= lambda!11662 lambda!11638))))

(declare-fun bs!45381 () Bool)

(assert (= bs!45381 (and b!374459 d!131693)))

(assert (=> bs!45381 (not (= lambda!11662 lambda!11661))))

(declare-fun b!374462 () Bool)

(declare-fun e!230274 () Bool)

(assert (=> b!374462 (= e!230274 true)))

(declare-fun b!374461 () Bool)

(declare-fun e!230273 () Bool)

(assert (=> b!374461 (= e!230273 e!230274)))

(declare-fun b!374460 () Bool)

(declare-fun e!230272 () Bool)

(assert (=> b!374460 (= e!230272 e!230273)))

(assert (=> b!374459 e!230272))

(assert (= b!374461 b!374462))

(assert (= b!374460 b!374461))

(assert (= (and b!374459 ((_ is Cons!4184) rules!1920)) b!374460))

(assert (=> b!374462 (< (dynLambda!2393 order!3517 (toValue!1590 (transformation!807 (h!9581 rules!1920)))) (dynLambda!2394 order!3519 lambda!11662))))

(assert (=> b!374462 (< (dynLambda!2395 order!3521 (toChars!1449 (transformation!807 (h!9581 rules!1920)))) (dynLambda!2394 order!3519 lambda!11662))))

(assert (=> b!374459 true))

(declare-fun b!374451 () Bool)

(declare-fun e!230269 () Bool)

(declare-fun lt!162896 () Option!1004)

(assert (=> b!374451 (= e!230269 (= (_1!2683 (v!15136 lt!162896)) (apply!978 (seqFromList!980 (t!57353 tokens!465)) 0)))))

(declare-fun b!374452 () Bool)

(declare-fun e!230266 () Bool)

(assert (=> b!374452 (= e!230266 (<= 0 (size!3385 (seqFromList!980 (t!57353 tokens!465)))))))

(declare-fun b!374453 () Bool)

(declare-fun e!230267 () BalanceConc!2880)

(declare-fun call!23842 () BalanceConc!2880)

(declare-fun lt!162901 () BalanceConc!2880)

(assert (=> b!374453 (= e!230267 (++!1172 call!23842 lt!162901))))

(declare-fun bm!23834 () Bool)

(declare-fun call!23839 () Token!1358)

(declare-fun call!23840 () Token!1358)

(assert (=> bm!23834 (= call!23839 call!23840)))

(declare-fun b!374454 () Bool)

(declare-fun e!230270 () Bool)

(assert (=> b!374454 (= e!230270 (not (= (_1!2683 (v!15136 lt!162896)) call!23840)))))

(declare-fun bm!23835 () Bool)

(declare-fun call!23841 () BalanceConc!2880)

(declare-fun c!73657 () Bool)

(assert (=> bm!23835 (= call!23841 (charsOf!450 (ite c!73657 call!23840 call!23839)))))

(declare-fun b!374455 () Bool)

(assert (=> b!374455 (= e!230267 (BalanceConc!2881 Empty!1436))))

(assert (=> b!374455 (= (print!418 thiss!17480 (singletonSeq!353 call!23839)) (printTailRec!379 thiss!17480 (singletonSeq!353 call!23839) 0 (BalanceConc!2881 Empty!1436)))))

(declare-fun lt!162894 () Unit!6646)

(declare-fun Unit!6666 () Unit!6646)

(assert (=> b!374455 (= lt!162894 Unit!6666)))

(declare-fun call!23843 () BalanceConc!2880)

(declare-fun lt!162899 () Unit!6646)

(assert (=> b!374455 (= lt!162899 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!161 thiss!17480 rules!1920 (list!1807 call!23843) (list!1807 lt!162901)))))

(assert (=> b!374455 false))

(declare-fun lt!162892 () Unit!6646)

(declare-fun Unit!6667 () Unit!6646)

(assert (=> b!374455 (= lt!162892 Unit!6667)))

(declare-fun lt!162897 () BalanceConc!2880)

(assert (=> d!131693 (= (list!1807 lt!162897) (printWithSeparatorTokenWhenNeededList!374 thiss!17480 rules!1920 (dropList!214 (seqFromList!980 (t!57353 tokens!465)) 0) separatorToken!170))))

(declare-fun e!230271 () BalanceConc!2880)

(assert (=> d!131693 (= lt!162897 e!230271)))

(declare-fun c!73659 () Bool)

(assert (=> d!131693 (= c!73659 (>= 0 (size!3385 (seqFromList!980 (t!57353 tokens!465)))))))

(declare-fun lt!162903 () Unit!6646)

(assert (=> d!131693 (= lt!162903 (lemmaContentSubsetPreservesForall!157 (list!1811 (seqFromList!980 (t!57353 tokens!465))) (dropList!214 (seqFromList!980 (t!57353 tokens!465)) 0) lambda!11661))))

(assert (=> d!131693 e!230266))

(declare-fun res!167704 () Bool)

(assert (=> d!131693 (=> (not res!167704) (not e!230266))))

(assert (=> d!131693 (= res!167704 (>= 0 0))))

(assert (=> d!131693 (= (printWithSeparatorTokenWhenNeededRec!366 thiss!17480 rules!1920 (seqFromList!980 (t!57353 tokens!465)) separatorToken!170 0) lt!162897)))

(declare-fun b!374456 () Bool)

(assert (=> b!374456 (= e!230271 (BalanceConc!2881 Empty!1436))))

(declare-fun b!374457 () Bool)

(declare-fun c!73658 () Bool)

(assert (=> b!374457 (= c!73658 e!230270)))

(declare-fun res!167706 () Bool)

(assert (=> b!374457 (=> (not res!167706) (not e!230270))))

(assert (=> b!374457 (= res!167706 ((_ is Some!1003) lt!162896))))

(declare-fun e!230268 () BalanceConc!2880)

(assert (=> b!374457 (= e!230268 e!230267)))

(declare-fun bm!23836 () Bool)

(assert (=> bm!23836 (= call!23842 (++!1172 call!23841 (ite c!73657 lt!162901 call!23843)))))

(declare-fun bm!23837 () Bool)

(assert (=> bm!23837 (= call!23840 (apply!978 (seqFromList!980 (t!57353 tokens!465)) 0))))

(declare-fun b!374458 () Bool)

(assert (=> b!374458 (= e!230268 call!23842)))

(declare-fun bm!23838 () Bool)

(assert (=> bm!23838 (= call!23843 (charsOf!450 (ite c!73658 separatorToken!170 call!23839)))))

(assert (=> b!374459 (= e!230271 e!230268)))

(declare-fun lt!162895 () List!4195)

(assert (=> b!374459 (= lt!162895 (list!1811 (seqFromList!980 (t!57353 tokens!465))))))

(declare-fun lt!162902 () Unit!6646)

(assert (=> b!374459 (= lt!162902 (lemmaDropApply!254 lt!162895 0))))

(assert (=> b!374459 (= (head!1016 (drop!277 lt!162895 0)) (apply!982 lt!162895 0))))

(declare-fun lt!162891 () Unit!6646)

(assert (=> b!374459 (= lt!162891 lt!162902)))

(declare-fun lt!162898 () List!4195)

(assert (=> b!374459 (= lt!162898 (list!1811 (seqFromList!980 (t!57353 tokens!465))))))

(declare-fun lt!162904 () Unit!6646)

(assert (=> b!374459 (= lt!162904 (lemmaDropTail!246 lt!162898 0))))

(assert (=> b!374459 (= (tail!578 (drop!277 lt!162898 0)) (drop!277 lt!162898 (+ 0 1)))))

(declare-fun lt!162900 () Unit!6646)

(assert (=> b!374459 (= lt!162900 lt!162904)))

(declare-fun lt!162893 () Unit!6646)

(assert (=> b!374459 (= lt!162893 (forallContained!360 (list!1811 (seqFromList!980 (t!57353 tokens!465))) lambda!11662 (apply!978 (seqFromList!980 (t!57353 tokens!465)) 0)))))

(assert (=> b!374459 (= lt!162901 (printWithSeparatorTokenWhenNeededRec!366 thiss!17480 rules!1920 (seqFromList!980 (t!57353 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!374459 (= lt!162896 (maxPrefixZipperSequence!372 thiss!17480 rules!1920 (++!1172 (charsOf!450 (apply!978 (seqFromList!980 (t!57353 tokens!465)) 0)) lt!162901)))))

(declare-fun res!167705 () Bool)

(assert (=> b!374459 (= res!167705 ((_ is Some!1003) lt!162896))))

(assert (=> b!374459 (=> (not res!167705) (not e!230269))))

(assert (=> b!374459 (= c!73657 e!230269)))

(assert (= (and d!131693 res!167704) b!374452))

(assert (= (and d!131693 c!73659) b!374456))

(assert (= (and d!131693 (not c!73659)) b!374459))

(assert (= (and b!374459 res!167705) b!374451))

(assert (= (and b!374459 c!73657) b!374458))

(assert (= (and b!374459 (not c!73657)) b!374457))

(assert (= (and b!374457 res!167706) b!374454))

(assert (= (and b!374457 c!73658) b!374453))

(assert (= (and b!374457 (not c!73658)) b!374455))

(assert (= (or b!374453 b!374455) bm!23834))

(assert (= (or b!374453 b!374455) bm!23838))

(assert (= (or b!374458 bm!23834 b!374454) bm!23837))

(assert (= (or b!374458 b!374453) bm!23835))

(assert (= (or b!374458 b!374453) bm!23836))

(assert (=> b!374451 m!553725))

(declare-fun m!555461 () Bool)

(assert (=> b!374451 m!555461))

(declare-fun m!555463 () Bool)

(assert (=> b!374453 m!555463))

(declare-fun m!555465 () Bool)

(assert (=> bm!23838 m!555465))

(declare-fun m!555467 () Bool)

(assert (=> b!374455 m!555467))

(declare-fun m!555469 () Bool)

(assert (=> b!374455 m!555469))

(declare-fun m!555471 () Bool)

(assert (=> b!374455 m!555471))

(assert (=> b!374455 m!555467))

(declare-fun m!555473 () Bool)

(assert (=> b!374455 m!555473))

(assert (=> b!374455 m!555467))

(declare-fun m!555475 () Bool)

(assert (=> b!374455 m!555475))

(assert (=> b!374455 m!555469))

(assert (=> b!374455 m!555471))

(declare-fun m!555477 () Bool)

(assert (=> b!374455 m!555477))

(declare-fun m!555479 () Bool)

(assert (=> bm!23835 m!555479))

(assert (=> bm!23837 m!553725))

(assert (=> bm!23837 m!555461))

(declare-fun m!555481 () Bool)

(assert (=> b!374459 m!555481))

(declare-fun m!555483 () Bool)

(assert (=> b!374459 m!555483))

(declare-fun m!555485 () Bool)

(assert (=> b!374459 m!555485))

(declare-fun m!555487 () Bool)

(assert (=> b!374459 m!555487))

(declare-fun m!555489 () Bool)

(assert (=> b!374459 m!555489))

(assert (=> b!374459 m!553725))

(declare-fun m!555491 () Bool)

(assert (=> b!374459 m!555491))

(declare-fun m!555493 () Bool)

(assert (=> b!374459 m!555493))

(declare-fun m!555495 () Bool)

(assert (=> b!374459 m!555495))

(declare-fun m!555497 () Bool)

(assert (=> b!374459 m!555497))

(assert (=> b!374459 m!555461))

(assert (=> b!374459 m!555487))

(declare-fun m!555499 () Bool)

(assert (=> b!374459 m!555499))

(assert (=> b!374459 m!555461))

(declare-fun m!555501 () Bool)

(assert (=> b!374459 m!555501))

(declare-fun m!555503 () Bool)

(assert (=> b!374459 m!555503))

(assert (=> b!374459 m!555489))

(declare-fun m!555505 () Bool)

(assert (=> b!374459 m!555505))

(assert (=> b!374459 m!555481))

(assert (=> b!374459 m!553725))

(assert (=> b!374459 m!555461))

(assert (=> b!374459 m!553725))

(assert (=> b!374459 m!555499))

(assert (=> b!374459 m!555497))

(declare-fun m!555507 () Bool)

(assert (=> b!374459 m!555507))

(assert (=> b!374452 m!553725))

(declare-fun m!555509 () Bool)

(assert (=> b!374452 m!555509))

(assert (=> d!131693 m!553725))

(declare-fun m!555511 () Bool)

(assert (=> d!131693 m!555511))

(assert (=> d!131693 m!555499))

(assert (=> d!131693 m!555511))

(declare-fun m!555513 () Bool)

(assert (=> d!131693 m!555513))

(assert (=> d!131693 m!553725))

(assert (=> d!131693 m!555499))

(assert (=> d!131693 m!555511))

(declare-fun m!555515 () Bool)

(assert (=> d!131693 m!555515))

(declare-fun m!555517 () Bool)

(assert (=> d!131693 m!555517))

(assert (=> d!131693 m!553725))

(assert (=> d!131693 m!555509))

(declare-fun m!555519 () Bool)

(assert (=> bm!23836 m!555519))

(assert (=> b!373459 d!131693))

(declare-fun d!131695 () Bool)

(declare-fun lt!162905 () BalanceConc!2880)

(assert (=> d!131695 (= (list!1807 lt!162905) (originalCharacters!850 separatorToken!170))))

(assert (=> d!131695 (= lt!162905 (dynLambda!2398 (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))) (value!27315 separatorToken!170)))))

(assert (=> d!131695 (= (charsOf!450 separatorToken!170) lt!162905)))

(declare-fun b_lambda!14681 () Bool)

(assert (=> (not b_lambda!14681) (not d!131695)))

(declare-fun t!57423 () Bool)

(declare-fun tb!32823 () Bool)

(assert (=> (and b!373434 (= (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170)))) t!57423) tb!32823))

(declare-fun b!374463 () Bool)

(declare-fun e!230275 () Bool)

(declare-fun tp!117109 () Bool)

(assert (=> b!374463 (= e!230275 (and (inv!5198 (c!73450 (dynLambda!2398 (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))) (value!27315 separatorToken!170)))) tp!117109))))

(declare-fun result!37046 () Bool)

(assert (=> tb!32823 (= result!37046 (and (inv!5199 (dynLambda!2398 (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))) (value!27315 separatorToken!170))) e!230275))))

(assert (= tb!32823 b!374463))

(declare-fun m!555521 () Bool)

(assert (=> b!374463 m!555521))

(declare-fun m!555523 () Bool)

(assert (=> tb!32823 m!555523))

(assert (=> d!131695 t!57423))

(declare-fun b_and!37567 () Bool)

(assert (= b_and!37541 (and (=> t!57423 result!37046) b_and!37567)))

(declare-fun tb!32825 () Bool)

(declare-fun t!57425 () Bool)

(assert (=> (and b!373429 (= (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170)))) t!57425) tb!32825))

(declare-fun result!37048 () Bool)

(assert (= result!37048 result!37046))

(assert (=> d!131695 t!57425))

(declare-fun b_and!37569 () Bool)

(assert (= b_and!37543 (and (=> t!57425 result!37048) b_and!37569)))

(declare-fun tb!32827 () Bool)

(declare-fun t!57427 () Bool)

(assert (=> (and b!373462 (= (toChars!1449 (transformation!807 (h!9581 rules!1920))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170)))) t!57427) tb!32827))

(declare-fun result!37050 () Bool)

(assert (= result!37050 result!37046))

(assert (=> d!131695 t!57427))

(declare-fun b_and!37571 () Bool)

(assert (= b_and!37545 (and (=> t!57427 result!37050) b_and!37571)))

(declare-fun m!555525 () Bool)

(assert (=> d!131695 m!555525))

(declare-fun m!555527 () Bool)

(assert (=> d!131695 m!555527))

(assert (=> b!373459 d!131695))

(declare-fun d!131697 () Bool)

(declare-fun e!230277 () Bool)

(assert (=> d!131697 e!230277))

(declare-fun res!167707 () Bool)

(assert (=> d!131697 (=> (not res!167707) (not e!230277))))

(declare-fun lt!162906 () List!4193)

(assert (=> d!131697 (= res!167707 (= (content!662 lt!162906) ((_ map or) (content!662 lt!162365) (content!662 lt!162388))))))

(declare-fun e!230276 () List!4193)

(assert (=> d!131697 (= lt!162906 e!230276)))

(declare-fun c!73660 () Bool)

(assert (=> d!131697 (= c!73660 ((_ is Nil!4183) lt!162365))))

(assert (=> d!131697 (= (++!1170 lt!162365 lt!162388) lt!162906)))

(declare-fun b!374464 () Bool)

(assert (=> b!374464 (= e!230276 lt!162388)))

(declare-fun b!374466 () Bool)

(declare-fun res!167708 () Bool)

(assert (=> b!374466 (=> (not res!167708) (not e!230277))))

(assert (=> b!374466 (= res!167708 (= (size!3388 lt!162906) (+ (size!3388 lt!162365) (size!3388 lt!162388))))))

(declare-fun b!374465 () Bool)

(assert (=> b!374465 (= e!230276 (Cons!4183 (h!9580 lt!162365) (++!1170 (t!57351 lt!162365) lt!162388)))))

(declare-fun b!374467 () Bool)

(assert (=> b!374467 (= e!230277 (or (not (= lt!162388 Nil!4183)) (= lt!162906 lt!162365)))))

(assert (= (and d!131697 c!73660) b!374464))

(assert (= (and d!131697 (not c!73660)) b!374465))

(assert (= (and d!131697 res!167707) b!374466))

(assert (= (and b!374466 res!167708) b!374467))

(declare-fun m!555529 () Bool)

(assert (=> d!131697 m!555529))

(assert (=> d!131697 m!555453))

(assert (=> d!131697 m!555397))

(declare-fun m!555531 () Bool)

(assert (=> b!374466 m!555531))

(assert (=> b!374466 m!554735))

(assert (=> b!374466 m!555403))

(declare-fun m!555533 () Bool)

(assert (=> b!374465 m!555533))

(assert (=> b!373459 d!131697))

(declare-fun d!131699 () Bool)

(assert (=> d!131699 (= (list!1807 (charsOf!450 (h!9582 tokens!465))) (list!1810 (c!73450 (charsOf!450 (h!9582 tokens!465)))))))

(declare-fun bs!45382 () Bool)

(assert (= bs!45382 d!131699))

(declare-fun m!555535 () Bool)

(assert (=> bs!45382 m!555535))

(assert (=> b!373459 d!131699))

(declare-fun d!131701 () Bool)

(declare-fun lt!162907 () BalanceConc!2880)

(assert (=> d!131701 (= (list!1807 lt!162907) (originalCharacters!850 (h!9582 tokens!465)))))

(assert (=> d!131701 (= lt!162907 (dynLambda!2398 (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))) (value!27315 (h!9582 tokens!465))))))

(assert (=> d!131701 (= (charsOf!450 (h!9582 tokens!465)) lt!162907)))

(declare-fun b_lambda!14683 () Bool)

(assert (=> (not b_lambda!14683) (not d!131701)))

(assert (=> d!131701 t!57361))

(declare-fun b_and!37573 () Bool)

(assert (= b_and!37567 (and (=> t!57361 result!37000) b_and!37573)))

(assert (=> d!131701 t!57363))

(declare-fun b_and!37575 () Bool)

(assert (= b_and!37569 (and (=> t!57363 result!37004) b_and!37575)))

(assert (=> d!131701 t!57365))

(declare-fun b_and!37577 () Bool)

(assert (= b_and!37571 (and (=> t!57365 result!37006) b_and!37577)))

(declare-fun m!555537 () Bool)

(assert (=> d!131701 m!555537))

(assert (=> d!131701 m!553935))

(assert (=> b!373459 d!131701))

(declare-fun b!374468 () Bool)

(declare-fun e!230282 () Bool)

(assert (=> b!374468 (= e!230282 (matchR!349 (derivativeStep!180 (regex!807 lt!162385) (head!1015 lt!162366)) (tail!577 lt!162366)))))

(declare-fun b!374469 () Bool)

(declare-fun res!167715 () Bool)

(declare-fun e!230279 () Bool)

(assert (=> b!374469 (=> res!167715 e!230279)))

(assert (=> b!374469 (= res!167715 (not (isEmpty!2990 (tail!577 lt!162366))))))

(declare-fun b!374470 () Bool)

(declare-fun e!230281 () Bool)

(assert (=> b!374470 (= e!230281 (= (head!1015 lt!162366) (c!73451 (regex!807 lt!162385))))))

(declare-fun b!374471 () Bool)

(assert (=> b!374471 (= e!230279 (not (= (head!1015 lt!162366) (c!73451 (regex!807 lt!162385)))))))

(declare-fun b!374472 () Bool)

(assert (=> b!374472 (= e!230282 (nullable!214 (regex!807 lt!162385)))))

(declare-fun b!374473 () Bool)

(declare-fun res!167713 () Bool)

(declare-fun e!230280 () Bool)

(assert (=> b!374473 (=> res!167713 e!230280)))

(assert (=> b!374473 (= res!167713 (not ((_ is ElementMatch!1031) (regex!807 lt!162385))))))

(declare-fun e!230278 () Bool)

(assert (=> b!374473 (= e!230278 e!230280)))

(declare-fun b!374474 () Bool)

(declare-fun e!230284 () Bool)

(declare-fun lt!162908 () Bool)

(declare-fun call!23844 () Bool)

(assert (=> b!374474 (= e!230284 (= lt!162908 call!23844))))

(declare-fun b!374475 () Bool)

(declare-fun res!167714 () Bool)

(assert (=> b!374475 (=> (not res!167714) (not e!230281))))

(assert (=> b!374475 (= res!167714 (not call!23844))))

(declare-fun b!374476 () Bool)

(assert (=> b!374476 (= e!230278 (not lt!162908))))

(declare-fun b!374477 () Bool)

(declare-fun res!167712 () Bool)

(assert (=> b!374477 (=> (not res!167712) (not e!230281))))

(assert (=> b!374477 (= res!167712 (isEmpty!2990 (tail!577 lt!162366)))))

(declare-fun b!374478 () Bool)

(declare-fun res!167710 () Bool)

(assert (=> b!374478 (=> res!167710 e!230280)))

(assert (=> b!374478 (= res!167710 e!230281)))

(declare-fun res!167709 () Bool)

(assert (=> b!374478 (=> (not res!167709) (not e!230281))))

(assert (=> b!374478 (= res!167709 lt!162908)))

(declare-fun d!131703 () Bool)

(assert (=> d!131703 e!230284))

(declare-fun c!73662 () Bool)

(assert (=> d!131703 (= c!73662 ((_ is EmptyExpr!1031) (regex!807 lt!162385)))))

(assert (=> d!131703 (= lt!162908 e!230282)))

(declare-fun c!73663 () Bool)

(assert (=> d!131703 (= c!73663 (isEmpty!2990 lt!162366))))

(assert (=> d!131703 (validRegex!289 (regex!807 lt!162385))))

(assert (=> d!131703 (= (matchR!349 (regex!807 lt!162385) lt!162366) lt!162908)))

(declare-fun b!374479 () Bool)

(assert (=> b!374479 (= e!230284 e!230278)))

(declare-fun c!73661 () Bool)

(assert (=> b!374479 (= c!73661 ((_ is EmptyLang!1031) (regex!807 lt!162385)))))

(declare-fun bm!23839 () Bool)

(assert (=> bm!23839 (= call!23844 (isEmpty!2990 lt!162366))))

(declare-fun b!374480 () Bool)

(declare-fun e!230283 () Bool)

(assert (=> b!374480 (= e!230280 e!230283)))

(declare-fun res!167716 () Bool)

(assert (=> b!374480 (=> (not res!167716) (not e!230283))))

(assert (=> b!374480 (= res!167716 (not lt!162908))))

(declare-fun b!374481 () Bool)

(assert (=> b!374481 (= e!230283 e!230279)))

(declare-fun res!167711 () Bool)

(assert (=> b!374481 (=> res!167711 e!230279)))

(assert (=> b!374481 (= res!167711 call!23844)))

(assert (= (and d!131703 c!73663) b!374472))

(assert (= (and d!131703 (not c!73663)) b!374468))

(assert (= (and d!131703 c!73662) b!374474))

(assert (= (and d!131703 (not c!73662)) b!374479))

(assert (= (and b!374479 c!73661) b!374476))

(assert (= (and b!374479 (not c!73661)) b!374473))

(assert (= (and b!374473 (not res!167713)) b!374478))

(assert (= (and b!374478 res!167709) b!374475))

(assert (= (and b!374475 res!167714) b!374477))

(assert (= (and b!374477 res!167712) b!374470))

(assert (= (and b!374478 (not res!167710)) b!374480))

(assert (= (and b!374480 res!167716) b!374481))

(assert (= (and b!374481 (not res!167711)) b!374469))

(assert (= (and b!374469 (not res!167715)) b!374471))

(assert (= (or b!374474 b!374475 b!374481) bm!23839))

(assert (=> b!374469 m!555229))

(assert (=> b!374469 m!555229))

(assert (=> b!374469 m!555231))

(assert (=> bm!23839 m!555233))

(assert (=> b!374471 m!553859))

(assert (=> d!131703 m!555233))

(declare-fun m!555539 () Bool)

(assert (=> d!131703 m!555539))

(declare-fun m!555541 () Bool)

(assert (=> b!374472 m!555541))

(assert (=> b!374470 m!553859))

(assert (=> b!374477 m!555229))

(assert (=> b!374477 m!555229))

(assert (=> b!374477 m!555231))

(assert (=> b!374468 m!553859))

(assert (=> b!374468 m!553859))

(declare-fun m!555543 () Bool)

(assert (=> b!374468 m!555543))

(assert (=> b!374468 m!555229))

(assert (=> b!374468 m!555543))

(assert (=> b!374468 m!555229))

(declare-fun m!555545 () Bool)

(assert (=> b!374468 m!555545))

(assert (=> b!373437 d!131703))

(declare-fun d!131705 () Bool)

(assert (=> d!131705 (= (get!1468 lt!162361) (v!15135 lt!162361))))

(assert (=> b!373437 d!131705))

(declare-fun d!131707 () Bool)

(assert (=> d!131707 (= (isEmpty!2994 rules!1920) ((_ is Nil!4184) rules!1920))))

(assert (=> b!373458 d!131707))

(declare-fun d!131709 () Bool)

(assert (=> d!131709 (= (inv!5191 (tag!1039 (h!9581 rules!1920))) (= (mod (str.len (value!27314 (tag!1039 (h!9581 rules!1920)))) 2) 0))))

(assert (=> b!373439 d!131709))

(declare-fun d!131711 () Bool)

(declare-fun res!167717 () Bool)

(declare-fun e!230285 () Bool)

(assert (=> d!131711 (=> (not res!167717) (not e!230285))))

(assert (=> d!131711 (= res!167717 (semiInverseModEq!311 (toChars!1449 (transformation!807 (h!9581 rules!1920))) (toValue!1590 (transformation!807 (h!9581 rules!1920)))))))

(assert (=> d!131711 (= (inv!5194 (transformation!807 (h!9581 rules!1920))) e!230285)))

(declare-fun b!374482 () Bool)

(assert (=> b!374482 (= e!230285 (equivClasses!294 (toChars!1449 (transformation!807 (h!9581 rules!1920))) (toValue!1590 (transformation!807 (h!9581 rules!1920)))))))

(assert (= (and d!131711 res!167717) b!374482))

(declare-fun m!555547 () Bool)

(assert (=> d!131711 m!555547))

(declare-fun m!555549 () Bool)

(assert (=> b!374482 m!555549))

(assert (=> b!373439 d!131711))

(declare-fun d!131713 () Bool)

(declare-fun res!167718 () Bool)

(declare-fun e!230286 () Bool)

(assert (=> d!131713 (=> (not res!167718) (not e!230286))))

(assert (=> d!131713 (= res!167718 (not (isEmpty!2990 (originalCharacters!850 separatorToken!170))))))

(assert (=> d!131713 (= (inv!5195 separatorToken!170) e!230286)))

(declare-fun b!374483 () Bool)

(declare-fun res!167719 () Bool)

(assert (=> b!374483 (=> (not res!167719) (not e!230286))))

(assert (=> b!374483 (= res!167719 (= (originalCharacters!850 separatorToken!170) (list!1807 (dynLambda!2398 (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))) (value!27315 separatorToken!170)))))))

(declare-fun b!374484 () Bool)

(assert (=> b!374484 (= e!230286 (= (size!3384 separatorToken!170) (size!3388 (originalCharacters!850 separatorToken!170))))))

(assert (= (and d!131713 res!167718) b!374483))

(assert (= (and b!374483 res!167719) b!374484))

(declare-fun b_lambda!14685 () Bool)

(assert (=> (not b_lambda!14685) (not b!374483)))

(assert (=> b!374483 t!57423))

(declare-fun b_and!37579 () Bool)

(assert (= b_and!37573 (and (=> t!57423 result!37046) b_and!37579)))

(assert (=> b!374483 t!57425))

(declare-fun b_and!37581 () Bool)

(assert (= b_and!37575 (and (=> t!57425 result!37048) b_and!37581)))

(assert (=> b!374483 t!57427))

(declare-fun b_and!37583 () Bool)

(assert (= b_and!37577 (and (=> t!57427 result!37050) b_and!37583)))

(declare-fun m!555551 () Bool)

(assert (=> d!131713 m!555551))

(assert (=> b!374483 m!555527))

(assert (=> b!374483 m!555527))

(declare-fun m!555553 () Bool)

(assert (=> b!374483 m!555553))

(declare-fun m!555555 () Bool)

(assert (=> b!374484 m!555555))

(assert (=> start!37142 d!131713))

(declare-fun d!131715 () Bool)

(assert (=> d!131715 (= (isDefined!843 lt!162380) (not (isEmpty!2999 lt!162380)))))

(declare-fun bs!45383 () Bool)

(assert (= bs!45383 d!131715))

(declare-fun m!555557 () Bool)

(assert (=> bs!45383 m!555557))

(assert (=> b!373438 d!131715))

(assert (=> b!373438 d!131525))

(declare-fun d!131717 () Bool)

(assert (=> d!131717 (= (isEmpty!2990 (_2!2682 lt!162369)) ((_ is Nil!4183) (_2!2682 lt!162369)))))

(assert (=> b!373435 d!131717))

(declare-fun d!131719 () Bool)

(assert (=> d!131719 (= (list!1807 lt!162379) (list!1810 (c!73450 lt!162379)))))

(declare-fun bs!45384 () Bool)

(assert (= bs!45384 d!131719))

(declare-fun m!555559 () Bool)

(assert (=> bs!45384 m!555559))

(assert (=> b!373456 d!131719))

(declare-fun d!131721 () Bool)

(declare-fun lt!162911 () BalanceConc!2880)

(assert (=> d!131721 (= (list!1807 lt!162911) (printListTailRec!179 thiss!17480 (dropList!214 lt!162386 0) (list!1807 (BalanceConc!2881 Empty!1436))))))

(declare-fun e!230287 () BalanceConc!2880)

(assert (=> d!131721 (= lt!162911 e!230287)))

(declare-fun c!73664 () Bool)

(assert (=> d!131721 (= c!73664 (>= 0 (size!3385 lt!162386)))))

(declare-fun e!230288 () Bool)

(assert (=> d!131721 e!230288))

(declare-fun res!167720 () Bool)

(assert (=> d!131721 (=> (not res!167720) (not e!230288))))

(assert (=> d!131721 (= res!167720 (>= 0 0))))

(assert (=> d!131721 (= (printTailRec!379 thiss!17480 lt!162386 0 (BalanceConc!2881 Empty!1436)) lt!162911)))

(declare-fun b!374485 () Bool)

(assert (=> b!374485 (= e!230288 (<= 0 (size!3385 lt!162386)))))

(declare-fun b!374486 () Bool)

(assert (=> b!374486 (= e!230287 (BalanceConc!2881 Empty!1436))))

(declare-fun b!374487 () Bool)

(assert (=> b!374487 (= e!230287 (printTailRec!379 thiss!17480 lt!162386 (+ 0 1) (++!1172 (BalanceConc!2881 Empty!1436) (charsOf!450 (apply!978 lt!162386 0)))))))

(declare-fun lt!162909 () List!4195)

(assert (=> b!374487 (= lt!162909 (list!1811 lt!162386))))

(declare-fun lt!162913 () Unit!6646)

(assert (=> b!374487 (= lt!162913 (lemmaDropApply!254 lt!162909 0))))

(assert (=> b!374487 (= (head!1016 (drop!277 lt!162909 0)) (apply!982 lt!162909 0))))

(declare-fun lt!162914 () Unit!6646)

(assert (=> b!374487 (= lt!162914 lt!162913)))

(declare-fun lt!162915 () List!4195)

(assert (=> b!374487 (= lt!162915 (list!1811 lt!162386))))

(declare-fun lt!162912 () Unit!6646)

(assert (=> b!374487 (= lt!162912 (lemmaDropTail!246 lt!162915 0))))

(assert (=> b!374487 (= (tail!578 (drop!277 lt!162915 0)) (drop!277 lt!162915 (+ 0 1)))))

(declare-fun lt!162910 () Unit!6646)

(assert (=> b!374487 (= lt!162910 lt!162912)))

(assert (= (and d!131721 res!167720) b!374485))

(assert (= (and d!131721 c!73664) b!374486))

(assert (= (and d!131721 (not c!73664)) b!374487))

(declare-fun m!555561 () Bool)

(assert (=> d!131721 m!555561))

(assert (=> d!131721 m!554641))

(declare-fun m!555563 () Bool)

(assert (=> d!131721 m!555563))

(declare-fun m!555565 () Bool)

(assert (=> d!131721 m!555565))

(assert (=> d!131721 m!555561))

(assert (=> d!131721 m!554641))

(declare-fun m!555567 () Bool)

(assert (=> d!131721 m!555567))

(assert (=> b!374485 m!555565))

(declare-fun m!555569 () Bool)

(assert (=> b!374487 m!555569))

(declare-fun m!555571 () Bool)

(assert (=> b!374487 m!555571))

(declare-fun m!555573 () Bool)

(assert (=> b!374487 m!555573))

(declare-fun m!555575 () Bool)

(assert (=> b!374487 m!555575))

(declare-fun m!555577 () Bool)

(assert (=> b!374487 m!555577))

(assert (=> b!374487 m!555575))

(declare-fun m!555579 () Bool)

(assert (=> b!374487 m!555579))

(declare-fun m!555581 () Bool)

(assert (=> b!374487 m!555581))

(declare-fun m!555583 () Bool)

(assert (=> b!374487 m!555583))

(assert (=> b!374487 m!555583))

(assert (=> b!374487 m!555569))

(declare-fun m!555585 () Bool)

(assert (=> b!374487 m!555585))

(declare-fun m!555587 () Bool)

(assert (=> b!374487 m!555587))

(declare-fun m!555589 () Bool)

(assert (=> b!374487 m!555589))

(assert (=> b!374487 m!555571))

(declare-fun m!555591 () Bool)

(assert (=> b!374487 m!555591))

(assert (=> b!374487 m!555579))

(declare-fun m!555593 () Bool)

(assert (=> b!374487 m!555593))

(assert (=> b!373456 d!131721))

(declare-fun d!131723 () Bool)

(declare-fun lt!162916 () BalanceConc!2880)

(assert (=> d!131723 (= (list!1807 lt!162916) (printList!367 thiss!17480 (list!1811 lt!162386)))))

(assert (=> d!131723 (= lt!162916 (printTailRec!379 thiss!17480 lt!162386 0 (BalanceConc!2881 Empty!1436)))))

(assert (=> d!131723 (= (print!418 thiss!17480 lt!162386) lt!162916)))

(declare-fun bs!45385 () Bool)

(assert (= bs!45385 d!131723))

(declare-fun m!555595 () Bool)

(assert (=> bs!45385 m!555595))

(assert (=> bs!45385 m!555589))

(assert (=> bs!45385 m!555589))

(declare-fun m!555597 () Bool)

(assert (=> bs!45385 m!555597))

(assert (=> bs!45385 m!553797))

(assert (=> b!373456 d!131723))

(declare-fun d!131725 () Bool)

(declare-fun e!230289 () Bool)

(assert (=> d!131725 e!230289))

(declare-fun res!167721 () Bool)

(assert (=> d!131725 (=> (not res!167721) (not e!230289))))

(declare-fun lt!162917 () BalanceConc!2882)

(assert (=> d!131725 (= res!167721 (= (list!1811 lt!162917) (Cons!4185 (h!9582 tokens!465) Nil!4185)))))

(assert (=> d!131725 (= lt!162917 (singleton!164 (h!9582 tokens!465)))))

(assert (=> d!131725 (= (singletonSeq!353 (h!9582 tokens!465)) lt!162917)))

(declare-fun b!374488 () Bool)

(assert (=> b!374488 (= e!230289 (isBalanced!425 (c!73452 lt!162917)))))

(assert (= (and d!131725 res!167721) b!374488))

(declare-fun m!555599 () Bool)

(assert (=> d!131725 m!555599))

(declare-fun m!555601 () Bool)

(assert (=> d!131725 m!555601))

(declare-fun m!555603 () Bool)

(assert (=> b!374488 m!555603))

(assert (=> b!373456 d!131725))

(declare-fun d!131727 () Bool)

(declare-fun c!73667 () Bool)

(assert (=> d!131727 (= c!73667 ((_ is Cons!4185) (Cons!4185 (h!9582 tokens!465) Nil!4185)))))

(declare-fun e!230292 () List!4193)

(assert (=> d!131727 (= (printList!367 thiss!17480 (Cons!4185 (h!9582 tokens!465) Nil!4185)) e!230292)))

(declare-fun b!374493 () Bool)

(assert (=> b!374493 (= e!230292 (++!1170 (list!1807 (charsOf!450 (h!9582 (Cons!4185 (h!9582 tokens!465) Nil!4185)))) (printList!367 thiss!17480 (t!57353 (Cons!4185 (h!9582 tokens!465) Nil!4185)))))))

(declare-fun b!374494 () Bool)

(assert (=> b!374494 (= e!230292 Nil!4183)))

(assert (= (and d!131727 c!73667) b!374493))

(assert (= (and d!131727 (not c!73667)) b!374494))

(declare-fun m!555605 () Bool)

(assert (=> b!374493 m!555605))

(assert (=> b!374493 m!555605))

(declare-fun m!555607 () Bool)

(assert (=> b!374493 m!555607))

(declare-fun m!555609 () Bool)

(assert (=> b!374493 m!555609))

(assert (=> b!374493 m!555607))

(assert (=> b!374493 m!555609))

(declare-fun m!555611 () Bool)

(assert (=> b!374493 m!555611))

(assert (=> b!373456 d!131727))

(declare-fun d!131729 () Bool)

(declare-fun isEmpty!3004 (Option!1004) Bool)

(assert (=> d!131729 (= (isDefined!842 (maxPrefixZipperSequence!372 thiss!17480 rules!1920 (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465))))) (not (isEmpty!3004 (maxPrefixZipperSequence!372 thiss!17480 rules!1920 (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465)))))))))

(declare-fun bs!45386 () Bool)

(assert (= bs!45386 d!131729))

(assert (=> bs!45386 m!553809))

(declare-fun m!555613 () Bool)

(assert (=> bs!45386 m!555613))

(assert (=> b!373436 d!131729))

(declare-fun lt!162934 () Option!1004)

(declare-fun e!230310 () Bool)

(declare-fun b!374511 () Bool)

(declare-fun get!1471 (Option!1004) tuple2!4934)

(assert (=> b!374511 (= e!230310 (= (list!1807 (_2!2683 (get!1471 lt!162934))) (_2!2682 (get!1469 (maxPrefix!409 thiss!17480 rules!1920 (list!1807 (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465)))))))))))

(declare-fun b!374512 () Bool)

(declare-fun e!230307 () Bool)

(declare-fun e!230308 () Bool)

(assert (=> b!374512 (= e!230307 e!230308)))

(declare-fun res!167736 () Bool)

(assert (=> b!374512 (=> res!167736 e!230308)))

(assert (=> b!374512 (= res!167736 (not (isDefined!842 lt!162934)))))

(declare-fun b!374513 () Bool)

(declare-fun e!230306 () Bool)

(declare-fun e!230305 () Bool)

(assert (=> b!374513 (= e!230306 e!230305)))

(declare-fun res!167737 () Bool)

(assert (=> b!374513 (=> (not res!167737) (not e!230305))))

(declare-fun maxPrefixZipper!161 (LexerInterface!693 List!4194 List!4193) Option!1005)

(assert (=> b!374513 (= res!167737 (= (_1!2683 (get!1471 lt!162934)) (_1!2682 (get!1469 (maxPrefixZipper!161 thiss!17480 rules!1920 (list!1807 (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465)))))))))))

(declare-fun call!23847 () Option!1004)

(declare-fun bm!23842 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!162 (LexerInterface!693 Rule!1414 BalanceConc!2880) Option!1004)

(assert (=> bm!23842 (= call!23847 (maxPrefixOneRuleZipperSequence!162 thiss!17480 (h!9581 rules!1920) (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465)))))))

(declare-fun b!374514 () Bool)

(declare-fun e!230309 () Option!1004)

(assert (=> b!374514 (= e!230309 call!23847)))

(declare-fun b!374515 () Bool)

(assert (=> b!374515 (= e!230308 e!230310)))

(declare-fun res!167739 () Bool)

(assert (=> b!374515 (=> (not res!167739) (not e!230310))))

(assert (=> b!374515 (= res!167739 (= (_1!2683 (get!1471 lt!162934)) (_1!2682 (get!1469 (maxPrefix!409 thiss!17480 rules!1920 (list!1807 (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465)))))))))))

(declare-fun b!374516 () Bool)

(assert (=> b!374516 (= e!230305 (= (list!1807 (_2!2683 (get!1471 lt!162934))) (_2!2682 (get!1469 (maxPrefixZipper!161 thiss!17480 rules!1920 (list!1807 (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465)))))))))))

(declare-fun b!374517 () Bool)

(declare-fun res!167734 () Bool)

(assert (=> b!374517 (=> (not res!167734) (not e!230307))))

(assert (=> b!374517 (= res!167734 e!230306)))

(declare-fun res!167735 () Bool)

(assert (=> b!374517 (=> res!167735 e!230306)))

(assert (=> b!374517 (= res!167735 (not (isDefined!842 lt!162934)))))

(declare-fun b!374518 () Bool)

(declare-fun lt!162938 () Option!1004)

(declare-fun lt!162935 () Option!1004)

(assert (=> b!374518 (= e!230309 (ite (and ((_ is None!1003) lt!162938) ((_ is None!1003) lt!162935)) None!1003 (ite ((_ is None!1003) lt!162935) lt!162938 (ite ((_ is None!1003) lt!162938) lt!162935 (ite (>= (size!3384 (_1!2683 (v!15136 lt!162938))) (size!3384 (_1!2683 (v!15136 lt!162935)))) lt!162938 lt!162935)))))))

(assert (=> b!374518 (= lt!162938 call!23847)))

(assert (=> b!374518 (= lt!162935 (maxPrefixZipperSequence!372 thiss!17480 (t!57352 rules!1920) (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465)))))))

(declare-fun d!131731 () Bool)

(assert (=> d!131731 e!230307))

(declare-fun res!167738 () Bool)

(assert (=> d!131731 (=> (not res!167738) (not e!230307))))

(assert (=> d!131731 (= res!167738 (= (isDefined!842 lt!162934) (isDefined!843 (maxPrefixZipper!161 thiss!17480 rules!1920 (list!1807 (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465))))))))))

(assert (=> d!131731 (= lt!162934 e!230309)))

(declare-fun c!73670 () Bool)

(assert (=> d!131731 (= c!73670 (and ((_ is Cons!4184) rules!1920) ((_ is Nil!4184) (t!57352 rules!1920))))))

(declare-fun lt!162937 () Unit!6646)

(declare-fun lt!162933 () Unit!6646)

(assert (=> d!131731 (= lt!162937 lt!162933)))

(declare-fun lt!162936 () List!4193)

(declare-fun lt!162932 () List!4193)

(assert (=> d!131731 (isPrefix!467 lt!162936 lt!162932)))

(assert (=> d!131731 (= lt!162933 (lemmaIsPrefixRefl!257 lt!162936 lt!162932))))

(assert (=> d!131731 (= lt!162932 (list!1807 (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465)))))))

(assert (=> d!131731 (= lt!162936 (list!1807 (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465)))))))

(assert (=> d!131731 (rulesValidInductive!252 thiss!17480 rules!1920)))

(assert (=> d!131731 (= (maxPrefixZipperSequence!372 thiss!17480 rules!1920 (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465)))) lt!162934)))

(assert (= (and d!131731 c!73670) b!374514))

(assert (= (and d!131731 (not c!73670)) b!374518))

(assert (= (or b!374514 b!374518) bm!23842))

(assert (= (and d!131731 res!167738) b!374517))

(assert (= (and b!374517 (not res!167735)) b!374513))

(assert (= (and b!374513 res!167737) b!374516))

(assert (= (and b!374517 res!167734) b!374512))

(assert (= (and b!374512 (not res!167736)) b!374515))

(assert (= (and b!374515 res!167739) b!374511))

(declare-fun m!555615 () Bool)

(assert (=> b!374516 m!555615))

(declare-fun m!555617 () Bool)

(assert (=> b!374516 m!555617))

(declare-fun m!555619 () Bool)

(assert (=> b!374516 m!555619))

(declare-fun m!555621 () Bool)

(assert (=> b!374516 m!555621))

(assert (=> b!374516 m!555617))

(declare-fun m!555623 () Bool)

(assert (=> b!374516 m!555623))

(assert (=> b!374516 m!553807))

(assert (=> b!374516 m!555621))

(assert (=> b!374515 m!555623))

(assert (=> b!374515 m!553807))

(assert (=> b!374515 m!555621))

(assert (=> b!374515 m!555621))

(declare-fun m!555625 () Bool)

(assert (=> b!374515 m!555625))

(assert (=> b!374515 m!555625))

(declare-fun m!555627 () Bool)

(assert (=> b!374515 m!555627))

(assert (=> bm!23842 m!553807))

(declare-fun m!555629 () Bool)

(assert (=> bm!23842 m!555629))

(assert (=> b!374513 m!555623))

(assert (=> b!374513 m!553807))

(assert (=> b!374513 m!555621))

(assert (=> b!374513 m!555621))

(assert (=> b!374513 m!555617))

(assert (=> b!374513 m!555617))

(assert (=> b!374513 m!555619))

(declare-fun m!555631 () Bool)

(assert (=> b!374512 m!555631))

(assert (=> b!374518 m!553807))

(declare-fun m!555633 () Bool)

(assert (=> b!374518 m!555633))

(assert (=> b!374517 m!555631))

(assert (=> b!374511 m!555615))

(assert (=> b!374511 m!555621))

(assert (=> b!374511 m!555625))

(assert (=> b!374511 m!555623))

(assert (=> b!374511 m!555625))

(assert (=> b!374511 m!555627))

(assert (=> b!374511 m!553807))

(assert (=> b!374511 m!555621))

(assert (=> d!131731 m!555617))

(declare-fun m!555635 () Bool)

(assert (=> d!131731 m!555635))

(declare-fun m!555637 () Bool)

(assert (=> d!131731 m!555637))

(assert (=> d!131731 m!555621))

(assert (=> d!131731 m!555617))

(declare-fun m!555639 () Bool)

(assert (=> d!131731 m!555639))

(assert (=> d!131731 m!554529))

(assert (=> d!131731 m!555631))

(assert (=> d!131731 m!553807))

(assert (=> d!131731 m!555621))

(assert (=> b!373436 d!131731))

(declare-fun d!131733 () Bool)

(assert (=> d!131733 (= (seqFromList!979 (originalCharacters!850 (h!9582 tokens!465))) (fromListB!422 (originalCharacters!850 (h!9582 tokens!465))))))

(declare-fun bs!45387 () Bool)

(assert (= bs!45387 d!131733))

(declare-fun m!555641 () Bool)

(assert (=> bs!45387 m!555641))

(assert (=> b!373436 d!131733))

(declare-fun d!131735 () Bool)

(assert (=> d!131735 (dynLambda!2399 lambda!11628 (h!9582 tokens!465))))

(declare-fun lt!162939 () Unit!6646)

(assert (=> d!131735 (= lt!162939 (choose!2999 tokens!465 lambda!11628 (h!9582 tokens!465)))))

(declare-fun e!230311 () Bool)

(assert (=> d!131735 e!230311))

(declare-fun res!167740 () Bool)

(assert (=> d!131735 (=> (not res!167740) (not e!230311))))

(assert (=> d!131735 (= res!167740 (forall!1156 tokens!465 lambda!11628))))

(assert (=> d!131735 (= (forallContained!360 tokens!465 lambda!11628 (h!9582 tokens!465)) lt!162939)))

(declare-fun b!374519 () Bool)

(assert (=> b!374519 (= e!230311 (contains!865 tokens!465 (h!9582 tokens!465)))))

(assert (= (and d!131735 res!167740) b!374519))

(declare-fun b_lambda!14687 () Bool)

(assert (=> (not b_lambda!14687) (not d!131735)))

(declare-fun m!555643 () Bool)

(assert (=> d!131735 m!555643))

(declare-fun m!555645 () Bool)

(assert (=> d!131735 m!555645))

(assert (=> d!131735 m!554851))

(declare-fun m!555647 () Bool)

(assert (=> b!374519 m!555647))

(assert (=> b!373436 d!131735))

(declare-fun b!374520 () Bool)

(declare-fun res!167741 () Bool)

(declare-fun e!230313 () Bool)

(assert (=> b!374520 (=> res!167741 e!230313)))

(assert (=> b!374520 (= res!167741 (not ((_ is IntegerValue!2489) (value!27315 separatorToken!170))))))

(declare-fun e!230314 () Bool)

(assert (=> b!374520 (= e!230314 e!230313)))

(declare-fun b!374521 () Bool)

(assert (=> b!374521 (= e!230313 (inv!15 (value!27315 separatorToken!170)))))

(declare-fun b!374522 () Bool)

(declare-fun e!230312 () Bool)

(assert (=> b!374522 (= e!230312 e!230314)))

(declare-fun c!73672 () Bool)

(assert (=> b!374522 (= c!73672 ((_ is IntegerValue!2488) (value!27315 separatorToken!170)))))

(declare-fun d!131737 () Bool)

(declare-fun c!73671 () Bool)

(assert (=> d!131737 (= c!73671 ((_ is IntegerValue!2487) (value!27315 separatorToken!170)))))

(assert (=> d!131737 (= (inv!21 (value!27315 separatorToken!170)) e!230312)))

(declare-fun b!374523 () Bool)

(assert (=> b!374523 (= e!230314 (inv!17 (value!27315 separatorToken!170)))))

(declare-fun b!374524 () Bool)

(assert (=> b!374524 (= e!230312 (inv!16 (value!27315 separatorToken!170)))))

(assert (= (and d!131737 c!73671) b!374524))

(assert (= (and d!131737 (not c!73671)) b!374522))

(assert (= (and b!374522 c!73672) b!374523))

(assert (= (and b!374522 (not c!73672)) b!374520))

(assert (= (and b!374520 (not res!167741)) b!374521))

(declare-fun m!555649 () Bool)

(assert (=> b!374521 m!555649))

(declare-fun m!555651 () Bool)

(assert (=> b!374523 m!555651))

(declare-fun m!555653 () Bool)

(assert (=> b!374524 m!555653))

(assert (=> b!373457 d!131737))

(declare-fun d!131739 () Bool)

(assert (=> d!131739 (= (inv!5191 (tag!1039 (rule!1452 separatorToken!170))) (= (mod (str.len (value!27314 (tag!1039 (rule!1452 separatorToken!170)))) 2) 0))))

(assert (=> b!373432 d!131739))

(declare-fun d!131741 () Bool)

(declare-fun res!167742 () Bool)

(declare-fun e!230315 () Bool)

(assert (=> d!131741 (=> (not res!167742) (not e!230315))))

(assert (=> d!131741 (= res!167742 (semiInverseModEq!311 (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))) (toValue!1590 (transformation!807 (rule!1452 separatorToken!170)))))))

(assert (=> d!131741 (= (inv!5194 (transformation!807 (rule!1452 separatorToken!170))) e!230315)))

(declare-fun b!374525 () Bool)

(assert (=> b!374525 (= e!230315 (equivClasses!294 (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))) (toValue!1590 (transformation!807 (rule!1452 separatorToken!170)))))))

(assert (= (and d!131741 res!167742) b!374525))

(declare-fun m!555655 () Bool)

(assert (=> d!131741 m!555655))

(declare-fun m!555657 () Bool)

(assert (=> b!374525 m!555657))

(assert (=> b!373432 d!131741))

(declare-fun d!131743 () Bool)

(declare-fun lt!162940 () Bool)

(assert (=> d!131743 (= lt!162940 (isEmpty!2990 (list!1807 (_2!2681 lt!162362))))))

(assert (=> d!131743 (= lt!162940 (isEmpty!2998 (c!73450 (_2!2681 lt!162362))))))

(assert (=> d!131743 (= (isEmpty!2993 (_2!2681 lt!162362)) lt!162940)))

(declare-fun bs!45388 () Bool)

(assert (= bs!45388 d!131743))

(declare-fun m!555659 () Bool)

(assert (=> bs!45388 m!555659))

(assert (=> bs!45388 m!555659))

(declare-fun m!555661 () Bool)

(assert (=> bs!45388 m!555661))

(declare-fun m!555663 () Bool)

(assert (=> bs!45388 m!555663))

(assert (=> b!373453 d!131743))

(declare-fun d!131745 () Bool)

(declare-fun e!230317 () Bool)

(assert (=> d!131745 e!230317))

(declare-fun res!167743 () Bool)

(assert (=> d!131745 (=> (not res!167743) (not e!230317))))

(declare-fun lt!162941 () List!4193)

(assert (=> d!131745 (= res!167743 (= (content!662 lt!162941) ((_ map or) (content!662 lt!162365) (content!662 lt!162384))))))

(declare-fun e!230316 () List!4193)

(assert (=> d!131745 (= lt!162941 e!230316)))

(declare-fun c!73673 () Bool)

(assert (=> d!131745 (= c!73673 ((_ is Nil!4183) lt!162365))))

(assert (=> d!131745 (= (++!1170 lt!162365 lt!162384) lt!162941)))

(declare-fun b!374526 () Bool)

(assert (=> b!374526 (= e!230316 lt!162384)))

(declare-fun b!374528 () Bool)

(declare-fun res!167744 () Bool)

(assert (=> b!374528 (=> (not res!167744) (not e!230317))))

(assert (=> b!374528 (= res!167744 (= (size!3388 lt!162941) (+ (size!3388 lt!162365) (size!3388 lt!162384))))))

(declare-fun b!374527 () Bool)

(assert (=> b!374527 (= e!230316 (Cons!4183 (h!9580 lt!162365) (++!1170 (t!57351 lt!162365) lt!162384)))))

(declare-fun b!374529 () Bool)

(assert (=> b!374529 (= e!230317 (or (not (= lt!162384 Nil!4183)) (= lt!162941 lt!162365)))))

(assert (= (and d!131745 c!73673) b!374526))

(assert (= (and d!131745 (not c!73673)) b!374527))

(assert (= (and d!131745 res!167743) b!374528))

(assert (= (and b!374528 res!167744) b!374529))

(declare-fun m!555665 () Bool)

(assert (=> d!131745 m!555665))

(assert (=> d!131745 m!555453))

(assert (=> d!131745 m!555399))

(declare-fun m!555667 () Bool)

(assert (=> b!374528 m!555667))

(assert (=> b!374528 m!554735))

(assert (=> b!374528 m!555405))

(declare-fun m!555669 () Bool)

(assert (=> b!374527 m!555669))

(assert (=> b!373433 d!131745))

(declare-fun d!131747 () Bool)

(assert (=> d!131747 (= (get!1469 lt!162402) (v!15137 lt!162402))))

(assert (=> b!373454 d!131747))

(declare-fun d!131749 () Bool)

(assert (=> d!131749 (= (isDefined!843 lt!162402) (not (isEmpty!2999 lt!162402)))))

(declare-fun bs!45389 () Bool)

(assert (= bs!45389 d!131749))

(declare-fun m!555671 () Bool)

(assert (=> bs!45389 m!555671))

(assert (=> b!373454 d!131749))

(declare-fun b!374530 () Bool)

(declare-fun e!230319 () Option!1005)

(declare-fun lt!162943 () Option!1005)

(declare-fun lt!162945 () Option!1005)

(assert (=> b!374530 (= e!230319 (ite (and ((_ is None!1004) lt!162943) ((_ is None!1004) lt!162945)) None!1004 (ite ((_ is None!1004) lt!162945) lt!162943 (ite ((_ is None!1004) lt!162943) lt!162945 (ite (>= (size!3384 (_1!2682 (v!15137 lt!162943))) (size!3384 (_1!2682 (v!15137 lt!162945)))) lt!162943 lt!162945)))))))

(declare-fun call!23848 () Option!1005)

(assert (=> b!374530 (= lt!162943 call!23848)))

(assert (=> b!374530 (= lt!162945 (maxPrefix!409 thiss!17480 (t!57352 rules!1920) lt!162365))))

(declare-fun b!374531 () Bool)

(declare-fun res!167751 () Bool)

(declare-fun e!230318 () Bool)

(assert (=> b!374531 (=> (not res!167751) (not e!230318))))

(declare-fun lt!162942 () Option!1005)

(assert (=> b!374531 (= res!167751 (= (list!1807 (charsOf!450 (_1!2682 (get!1469 lt!162942)))) (originalCharacters!850 (_1!2682 (get!1469 lt!162942)))))))

(declare-fun b!374532 () Bool)

(declare-fun res!167748 () Bool)

(assert (=> b!374532 (=> (not res!167748) (not e!230318))))

(assert (=> b!374532 (= res!167748 (< (size!3388 (_2!2682 (get!1469 lt!162942))) (size!3388 lt!162365)))))

(declare-fun b!374533 () Bool)

(declare-fun res!167745 () Bool)

(assert (=> b!374533 (=> (not res!167745) (not e!230318))))

(assert (=> b!374533 (= res!167745 (= (++!1170 (list!1807 (charsOf!450 (_1!2682 (get!1469 lt!162942)))) (_2!2682 (get!1469 lt!162942))) lt!162365))))

(declare-fun b!374534 () Bool)

(declare-fun e!230320 () Bool)

(assert (=> b!374534 (= e!230320 e!230318)))

(declare-fun res!167747 () Bool)

(assert (=> b!374534 (=> (not res!167747) (not e!230318))))

(assert (=> b!374534 (= res!167747 (isDefined!843 lt!162942))))

(declare-fun b!374535 () Bool)

(declare-fun res!167750 () Bool)

(assert (=> b!374535 (=> (not res!167750) (not e!230318))))

(assert (=> b!374535 (= res!167750 (= (value!27315 (_1!2682 (get!1469 lt!162942))) (apply!984 (transformation!807 (rule!1452 (_1!2682 (get!1469 lt!162942)))) (seqFromList!979 (originalCharacters!850 (_1!2682 (get!1469 lt!162942)))))))))

(declare-fun d!131751 () Bool)

(assert (=> d!131751 e!230320))

(declare-fun res!167749 () Bool)

(assert (=> d!131751 (=> res!167749 e!230320)))

(assert (=> d!131751 (= res!167749 (isEmpty!2999 lt!162942))))

(assert (=> d!131751 (= lt!162942 e!230319)))

(declare-fun c!73674 () Bool)

(assert (=> d!131751 (= c!73674 (and ((_ is Cons!4184) rules!1920) ((_ is Nil!4184) (t!57352 rules!1920))))))

(declare-fun lt!162946 () Unit!6646)

(declare-fun lt!162944 () Unit!6646)

(assert (=> d!131751 (= lt!162946 lt!162944)))

(assert (=> d!131751 (isPrefix!467 lt!162365 lt!162365)))

(assert (=> d!131751 (= lt!162944 (lemmaIsPrefixRefl!257 lt!162365 lt!162365))))

(assert (=> d!131751 (rulesValidInductive!252 thiss!17480 rules!1920)))

(assert (=> d!131751 (= (maxPrefix!409 thiss!17480 rules!1920 lt!162365) lt!162942)))

(declare-fun b!374536 () Bool)

(declare-fun res!167746 () Bool)

(assert (=> b!374536 (=> (not res!167746) (not e!230318))))

(assert (=> b!374536 (= res!167746 (matchR!349 (regex!807 (rule!1452 (_1!2682 (get!1469 lt!162942)))) (list!1807 (charsOf!450 (_1!2682 (get!1469 lt!162942))))))))

(declare-fun b!374537 () Bool)

(assert (=> b!374537 (= e!230318 (contains!862 rules!1920 (rule!1452 (_1!2682 (get!1469 lt!162942)))))))

(declare-fun bm!23843 () Bool)

(assert (=> bm!23843 (= call!23848 (maxPrefixOneRule!191 thiss!17480 (h!9581 rules!1920) lt!162365))))

(declare-fun b!374538 () Bool)

(assert (=> b!374538 (= e!230319 call!23848)))

(assert (= (and d!131751 c!73674) b!374538))

(assert (= (and d!131751 (not c!73674)) b!374530))

(assert (= (or b!374538 b!374530) bm!23843))

(assert (= (and d!131751 (not res!167749)) b!374534))

(assert (= (and b!374534 res!167747) b!374531))

(assert (= (and b!374531 res!167751) b!374532))

(assert (= (and b!374532 res!167748) b!374533))

(assert (= (and b!374533 res!167745) b!374535))

(assert (= (and b!374535 res!167750) b!374536))

(assert (= (and b!374536 res!167746) b!374537))

(declare-fun m!555673 () Bool)

(assert (=> b!374534 m!555673))

(declare-fun m!555675 () Bool)

(assert (=> b!374531 m!555675))

(declare-fun m!555677 () Bool)

(assert (=> b!374531 m!555677))

(assert (=> b!374531 m!555677))

(declare-fun m!555679 () Bool)

(assert (=> b!374531 m!555679))

(assert (=> b!374532 m!555675))

(declare-fun m!555681 () Bool)

(assert (=> b!374532 m!555681))

(assert (=> b!374532 m!554735))

(assert (=> b!374537 m!555675))

(declare-fun m!555683 () Bool)

(assert (=> b!374537 m!555683))

(declare-fun m!555685 () Bool)

(assert (=> d!131751 m!555685))

(declare-fun m!555687 () Bool)

(assert (=> d!131751 m!555687))

(declare-fun m!555689 () Bool)

(assert (=> d!131751 m!555689))

(assert (=> d!131751 m!554529))

(assert (=> b!374533 m!555675))

(assert (=> b!374533 m!555677))

(assert (=> b!374533 m!555677))

(assert (=> b!374533 m!555679))

(assert (=> b!374533 m!555679))

(declare-fun m!555691 () Bool)

(assert (=> b!374533 m!555691))

(assert (=> b!374535 m!555675))

(declare-fun m!555693 () Bool)

(assert (=> b!374535 m!555693))

(assert (=> b!374535 m!555693))

(declare-fun m!555695 () Bool)

(assert (=> b!374535 m!555695))

(assert (=> b!374536 m!555675))

(assert (=> b!374536 m!555677))

(assert (=> b!374536 m!555677))

(assert (=> b!374536 m!555679))

(assert (=> b!374536 m!555679))

(declare-fun m!555697 () Bool)

(assert (=> b!374536 m!555697))

(declare-fun m!555699 () Bool)

(assert (=> b!374530 m!555699))

(declare-fun m!555701 () Bool)

(assert (=> bm!23843 m!555701))

(assert (=> b!373454 d!131751))

(declare-fun b!374552 () Bool)

(declare-fun b_free!11653 () Bool)

(declare-fun b_next!11653 () Bool)

(assert (=> b!374552 (= b_free!11653 (not b_next!11653))))

(declare-fun tp!117121 () Bool)

(declare-fun b_and!37585 () Bool)

(assert (=> b!374552 (= tp!117121 b_and!37585)))

(declare-fun b_free!11655 () Bool)

(declare-fun b_next!11655 () Bool)

(assert (=> b!374552 (= b_free!11655 (not b_next!11655))))

(declare-fun t!57429 () Bool)

(declare-fun tb!32829 () Bool)

(assert (=> (and b!374552 (= (toChars!1449 (transformation!807 (rule!1452 (h!9582 (t!57353 tokens!465))))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170)))) t!57429) tb!32829))

(declare-fun result!37054 () Bool)

(assert (= result!37054 result!37046))

(assert (=> d!131695 t!57429))

(assert (=> b!374483 t!57429))

(declare-fun t!57431 () Bool)

(declare-fun tb!32831 () Bool)

(assert (=> (and b!374552 (= (toChars!1449 (transformation!807 (rule!1452 (h!9582 (t!57353 tokens!465))))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465))))) t!57431) tb!32831))

(declare-fun result!37056 () Bool)

(assert (= result!37056 result!37000))

(assert (=> d!131701 t!57431))

(assert (=> b!373509 t!57431))

(declare-fun t!57433 () Bool)

(declare-fun tb!32833 () Bool)

(assert (=> (and b!374552 (= (toChars!1449 (transformation!807 (rule!1452 (h!9582 (t!57353 tokens!465))))) (toChars!1449 (transformation!807 (rule!1452 lt!162396)))) t!57433) tb!32833))

(declare-fun result!37058 () Bool)

(assert (= result!37058 result!37020))

(assert (=> d!131515 t!57433))

(declare-fun b_and!37587 () Bool)

(declare-fun tp!117124 () Bool)

(assert (=> b!374552 (= tp!117124 (and (=> t!57429 result!37054) (=> t!57433 result!37058) (=> t!57431 result!37056) b_and!37587))))

(declare-fun e!230335 () Bool)

(declare-fun e!230334 () Bool)

(declare-fun tp!117120 () Bool)

(declare-fun b!374550 () Bool)

(assert (=> b!374550 (= e!230334 (and (inv!21 (value!27315 (h!9582 (t!57353 tokens!465)))) e!230335 tp!117120))))

(declare-fun e!230337 () Bool)

(declare-fun tp!117123 () Bool)

(declare-fun b!374551 () Bool)

(assert (=> b!374551 (= e!230335 (and tp!117123 (inv!5191 (tag!1039 (rule!1452 (h!9582 (t!57353 tokens!465))))) (inv!5194 (transformation!807 (rule!1452 (h!9582 (t!57353 tokens!465))))) e!230337))))

(assert (=> b!374552 (= e!230337 (and tp!117121 tp!117124))))

(declare-fun tp!117122 () Bool)

(declare-fun e!230336 () Bool)

(declare-fun b!374549 () Bool)

(assert (=> b!374549 (= e!230336 (and (inv!5195 (h!9582 (t!57353 tokens!465))) e!230334 tp!117122))))

(assert (=> b!373451 (= tp!117039 e!230336)))

(assert (= b!374551 b!374552))

(assert (= b!374550 b!374551))

(assert (= b!374549 b!374550))

(assert (= (and b!373451 ((_ is Cons!4185) (t!57353 tokens!465))) b!374549))

(declare-fun m!555703 () Bool)

(assert (=> b!374550 m!555703))

(declare-fun m!555705 () Bool)

(assert (=> b!374551 m!555705))

(declare-fun m!555707 () Bool)

(assert (=> b!374551 m!555707))

(declare-fun m!555709 () Bool)

(assert (=> b!374549 m!555709))

(declare-fun b!374557 () Bool)

(declare-fun e!230341 () Bool)

(declare-fun tp_is_empty!1919 () Bool)

(declare-fun tp!117127 () Bool)

(assert (=> b!374557 (= e!230341 (and tp_is_empty!1919 tp!117127))))

(assert (=> b!373418 (= tp!117041 e!230341)))

(assert (= (and b!373418 ((_ is Cons!4183) (originalCharacters!850 (h!9582 tokens!465)))) b!374557))

(declare-fun b!374568 () Bool)

(declare-fun e!230344 () Bool)

(assert (=> b!374568 (= e!230344 tp_is_empty!1919)))

(assert (=> b!373448 (= tp!117032 e!230344)))

(declare-fun b!374569 () Bool)

(declare-fun tp!117138 () Bool)

(declare-fun tp!117139 () Bool)

(assert (=> b!374569 (= e!230344 (and tp!117138 tp!117139))))

(declare-fun b!374570 () Bool)

(declare-fun tp!117142 () Bool)

(assert (=> b!374570 (= e!230344 tp!117142)))

(declare-fun b!374571 () Bool)

(declare-fun tp!117141 () Bool)

(declare-fun tp!117140 () Bool)

(assert (=> b!374571 (= e!230344 (and tp!117141 tp!117140))))

(assert (= (and b!373448 ((_ is ElementMatch!1031) (regex!807 (rule!1452 (h!9582 tokens!465))))) b!374568))

(assert (= (and b!373448 ((_ is Concat!1861) (regex!807 (rule!1452 (h!9582 tokens!465))))) b!374569))

(assert (= (and b!373448 ((_ is Star!1031) (regex!807 (rule!1452 (h!9582 tokens!465))))) b!374570))

(assert (= (and b!373448 ((_ is Union!1031) (regex!807 (rule!1452 (h!9582 tokens!465))))) b!374571))

(declare-fun b!374572 () Bool)

(declare-fun e!230345 () Bool)

(assert (=> b!374572 (= e!230345 tp_is_empty!1919)))

(assert (=> b!373439 (= tp!117043 e!230345)))

(declare-fun b!374573 () Bool)

(declare-fun tp!117143 () Bool)

(declare-fun tp!117144 () Bool)

(assert (=> b!374573 (= e!230345 (and tp!117143 tp!117144))))

(declare-fun b!374574 () Bool)

(declare-fun tp!117147 () Bool)

(assert (=> b!374574 (= e!230345 tp!117147)))

(declare-fun b!374575 () Bool)

(declare-fun tp!117146 () Bool)

(declare-fun tp!117145 () Bool)

(assert (=> b!374575 (= e!230345 (and tp!117146 tp!117145))))

(assert (= (and b!373439 ((_ is ElementMatch!1031) (regex!807 (h!9581 rules!1920)))) b!374572))

(assert (= (and b!373439 ((_ is Concat!1861) (regex!807 (h!9581 rules!1920)))) b!374573))

(assert (= (and b!373439 ((_ is Star!1031) (regex!807 (h!9581 rules!1920)))) b!374574))

(assert (= (and b!373439 ((_ is Union!1031) (regex!807 (h!9581 rules!1920)))) b!374575))

(declare-fun b!374578 () Bool)

(declare-fun e!230348 () Bool)

(assert (=> b!374578 (= e!230348 true)))

(declare-fun b!374577 () Bool)

(declare-fun e!230347 () Bool)

(assert (=> b!374577 (= e!230347 e!230348)))

(declare-fun b!374576 () Bool)

(declare-fun e!230346 () Bool)

(assert (=> b!374576 (= e!230346 e!230347)))

(assert (=> b!373474 e!230346))

(assert (= b!374577 b!374578))

(assert (= b!374576 b!374577))

(assert (= (and b!373474 ((_ is Cons!4184) (t!57352 rules!1920))) b!374576))

(assert (=> b!374578 (< (dynLambda!2393 order!3517 (toValue!1590 (transformation!807 (h!9581 (t!57352 rules!1920))))) (dynLambda!2394 order!3519 lambda!11628))))

(assert (=> b!374578 (< (dynLambda!2395 order!3521 (toChars!1449 (transformation!807 (h!9581 (t!57352 rules!1920))))) (dynLambda!2394 order!3519 lambda!11628))))

(declare-fun b!374579 () Bool)

(declare-fun e!230349 () Bool)

(declare-fun tp!117148 () Bool)

(assert (=> b!374579 (= e!230349 (and tp_is_empty!1919 tp!117148))))

(assert (=> b!373457 (= tp!117033 e!230349)))

(assert (= (and b!373457 ((_ is Cons!4183) (originalCharacters!850 separatorToken!170))) b!374579))

(declare-fun b!374580 () Bool)

(declare-fun e!230350 () Bool)

(assert (=> b!374580 (= e!230350 tp_is_empty!1919)))

(assert (=> b!373432 (= tp!117042 e!230350)))

(declare-fun b!374581 () Bool)

(declare-fun tp!117149 () Bool)

(declare-fun tp!117150 () Bool)

(assert (=> b!374581 (= e!230350 (and tp!117149 tp!117150))))

(declare-fun b!374582 () Bool)

(declare-fun tp!117153 () Bool)

(assert (=> b!374582 (= e!230350 tp!117153)))

(declare-fun b!374583 () Bool)

(declare-fun tp!117152 () Bool)

(declare-fun tp!117151 () Bool)

(assert (=> b!374583 (= e!230350 (and tp!117152 tp!117151))))

(assert (= (and b!373432 ((_ is ElementMatch!1031) (regex!807 (rule!1452 separatorToken!170)))) b!374580))

(assert (= (and b!373432 ((_ is Concat!1861) (regex!807 (rule!1452 separatorToken!170)))) b!374581))

(assert (= (and b!373432 ((_ is Star!1031) (regex!807 (rule!1452 separatorToken!170)))) b!374582))

(assert (= (and b!373432 ((_ is Union!1031) (regex!807 (rule!1452 separatorToken!170)))) b!374583))

(declare-fun b!374594 () Bool)

(declare-fun b_free!11657 () Bool)

(declare-fun b_next!11657 () Bool)

(assert (=> b!374594 (= b_free!11657 (not b_next!11657))))

(declare-fun tp!117163 () Bool)

(declare-fun b_and!37589 () Bool)

(assert (=> b!374594 (= tp!117163 b_and!37589)))

(declare-fun b_free!11659 () Bool)

(declare-fun b_next!11659 () Bool)

(assert (=> b!374594 (= b_free!11659 (not b_next!11659))))

(declare-fun tb!32835 () Bool)

(declare-fun t!57435 () Bool)

(assert (=> (and b!374594 (= (toChars!1449 (transformation!807 (h!9581 (t!57352 rules!1920)))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170)))) t!57435) tb!32835))

(declare-fun result!37066 () Bool)

(assert (= result!37066 result!37046))

(assert (=> d!131695 t!57435))

(assert (=> b!374483 t!57435))

(declare-fun t!57437 () Bool)

(declare-fun tb!32837 () Bool)

(assert (=> (and b!374594 (= (toChars!1449 (transformation!807 (h!9581 (t!57352 rules!1920)))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465))))) t!57437) tb!32837))

(declare-fun result!37068 () Bool)

(assert (= result!37068 result!37000))

(assert (=> d!131701 t!57437))

(assert (=> b!373509 t!57437))

(declare-fun tb!32839 () Bool)

(declare-fun t!57439 () Bool)

(assert (=> (and b!374594 (= (toChars!1449 (transformation!807 (h!9581 (t!57352 rules!1920)))) (toChars!1449 (transformation!807 (rule!1452 lt!162396)))) t!57439) tb!32839))

(declare-fun result!37070 () Bool)

(assert (= result!37070 result!37020))

(assert (=> d!131515 t!57439))

(declare-fun b_and!37591 () Bool)

(declare-fun tp!117164 () Bool)

(assert (=> b!374594 (= tp!117164 (and (=> t!57435 result!37066) (=> t!57437 result!37068) (=> t!57439 result!37070) b_and!37591))))

(declare-fun e!230362 () Bool)

(assert (=> b!374594 (= e!230362 (and tp!117163 tp!117164))))

(declare-fun e!230359 () Bool)

(declare-fun tp!117165 () Bool)

(declare-fun b!374593 () Bool)

(assert (=> b!374593 (= e!230359 (and tp!117165 (inv!5191 (tag!1039 (h!9581 (t!57352 rules!1920)))) (inv!5194 (transformation!807 (h!9581 (t!57352 rules!1920)))) e!230362))))

(declare-fun b!374592 () Bool)

(declare-fun e!230360 () Bool)

(declare-fun tp!117162 () Bool)

(assert (=> b!374592 (= e!230360 (and e!230359 tp!117162))))

(assert (=> b!373465 (= tp!117034 e!230360)))

(assert (= b!374593 b!374594))

(assert (= b!374592 b!374593))

(assert (= (and b!373465 ((_ is Cons!4184) (t!57352 rules!1920))) b!374592))

(declare-fun m!555711 () Bool)

(assert (=> b!374593 m!555711))

(declare-fun m!555713 () Bool)

(assert (=> b!374593 m!555713))

(declare-fun b_lambda!14689 () Bool)

(assert (= b_lambda!14683 (or (and b!374552 b_free!11655 (= (toChars!1449 (transformation!807 (rule!1452 (h!9582 (t!57353 tokens!465))))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))))) (and b!373462 b_free!11643 (= (toChars!1449 (transformation!807 (h!9581 rules!1920))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))))) (and b!373434 b_free!11635 (= (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))))) (and b!373429 b_free!11639) (and b!374594 b_free!11659 (= (toChars!1449 (transformation!807 (h!9581 (t!57352 rules!1920)))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))))) b_lambda!14689)))

(declare-fun b_lambda!14691 () Bool)

(assert (= b_lambda!14657 (or b!373436 b_lambda!14691)))

(declare-fun bs!45390 () Bool)

(declare-fun d!131753 () Bool)

(assert (= bs!45390 (and d!131753 b!373436)))

(assert (=> bs!45390 (= (dynLambda!2399 lambda!11628 lt!162396) (rulesProduceIndividualToken!442 thiss!17480 rules!1920 lt!162396))))

(assert (=> bs!45390 m!553885))

(assert (=> d!131537 d!131753))

(declare-fun b_lambda!14693 () Bool)

(assert (= b_lambda!14645 (or (and b!374552 b_free!11655 (= (toChars!1449 (transformation!807 (rule!1452 (h!9582 (t!57353 tokens!465))))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))))) (and b!373462 b_free!11643 (= (toChars!1449 (transformation!807 (h!9581 rules!1920))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))))) (and b!373434 b_free!11635 (= (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))))) (and b!373429 b_free!11639) (and b!374594 b_free!11659 (= (toChars!1449 (transformation!807 (h!9581 (t!57352 rules!1920)))) (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))))) b_lambda!14693)))

(declare-fun b_lambda!14695 () Bool)

(assert (= b_lambda!14663 (or b!373423 b_lambda!14695)))

(declare-fun bs!45391 () Bool)

(declare-fun d!131755 () Bool)

(assert (= bs!45391 (and d!131755 b!373423)))

(assert (=> bs!45391 (= (dynLambda!2399 lambda!11627 (h!9582 tokens!465)) (not (isSeparator!807 (rule!1452 (h!9582 tokens!465)))))))

(assert (=> b!374268 d!131755))

(declare-fun b_lambda!14697 () Bool)

(assert (= b_lambda!14687 (or b!373436 b_lambda!14697)))

(declare-fun bs!45392 () Bool)

(declare-fun d!131757 () Bool)

(assert (= bs!45392 (and d!131757 b!373436)))

(assert (=> bs!45392 (= (dynLambda!2399 lambda!11628 (h!9582 tokens!465)) (rulesProduceIndividualToken!442 thiss!17480 rules!1920 (h!9582 tokens!465)))))

(assert (=> bs!45392 m!553817))

(assert (=> d!131735 d!131757))

(declare-fun b_lambda!14699 () Bool)

(assert (= b_lambda!14681 (or (and b!374594 b_free!11659 (= (toChars!1449 (transformation!807 (h!9581 (t!57352 rules!1920)))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))))) (and b!374552 b_free!11655 (= (toChars!1449 (transformation!807 (rule!1452 (h!9582 (t!57353 tokens!465))))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))))) (and b!373462 b_free!11643 (= (toChars!1449 (transformation!807 (h!9581 rules!1920))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))))) (and b!373429 b_free!11639 (= (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))))) (and b!373434 b_free!11635) b_lambda!14699)))

(declare-fun b_lambda!14701 () Bool)

(assert (= b_lambda!14685 (or (and b!374594 b_free!11659 (= (toChars!1449 (transformation!807 (h!9581 (t!57352 rules!1920)))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))))) (and b!374552 b_free!11655 (= (toChars!1449 (transformation!807 (rule!1452 (h!9582 (t!57353 tokens!465))))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))))) (and b!373462 b_free!11643 (= (toChars!1449 (transformation!807 (h!9581 rules!1920))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))))) (and b!373429 b_free!11639 (= (toChars!1449 (transformation!807 (rule!1452 (h!9582 tokens!465)))) (toChars!1449 (transformation!807 (rule!1452 separatorToken!170))))) (and b!373434 b_free!11635) b_lambda!14701)))

(check-sat (not d!131409) (not b!374455) (not b!374257) (not d!131559) (not b_next!11639) (not b!374576) (not b!374511) (not d!131697) (not b!374061) (not b!374396) (not d!131703) (not bm!23824) (not bm!23773) (not bm!23775) (not d!131625) (not bm!23727) (not d!131701) (not b!374271) (not b!373911) (not b!373907) (not bm!23833) (not b!374256) (not d!131679) (not b!374129) (not b!373805) (not b!374046) (not b!374575) (not b!374516) (not b!374014) (not d!131555) (not d!131343) (not d!131643) (not b!374466) (not d!131733) (not d!131691) (not b_lambda!14693) (not d!131751) (not d!131723) (not b!374288) (not bm!23835) (not bm!23831) (not b!374291) (not b!374274) (not b!374056) (not d!131715) (not b!374535) (not b!374047) (not d!131563) (not b!374534) (not b_next!11657) (not b!374110) (not d!131351) (not b!374469) (not d!131461) (not b!374429) (not b!374439) (not d!131515) (not b!374433) (not b!373961) (not d!131671) (not b!373883) (not b!374003) (not d!131741) (not bm!23728) (not b!373521) (not b!374262) (not d!131529) (not b_lambda!14701) (not b!374258) (not b!374471) (not b!373510) (not b!374518) (not b_next!11655) (not b!374531) (not bm!23729) (not d!131543) (not b!374570) (not bm!23755) (not b!374043) (not d!131353) (not b!374593) (not b!373715) (not bm!23706) (not b!374470) (not b!374569) (not bm!23829) (not b!374465) (not b!373888) (not b_lambda!14691) (not b!373963) (not b!374436) (not bm!23837) (not b!374452) (not d!131719) (not bm!23752) (not b_next!11633) (not d!131463) (not b!374530) b_and!37509 (not bm!23832) (not d!131335) (not b!373559) (not b!374026) (not b!374551) (not b_next!11653) (not b!374060) (not bm!23714) (not b!374444) (not b!374044) (not b!374537) (not b!374528) (not b!374512) (not b!373560) (not b!374583) (not b!374395) (not b!373716) (not b!374059) (not b!374488) (not b!373884) (not b!374460) (not bm!23839) (not b!373556) (not b!374493) (not b!373813) (not b!374027) (not b!374573) (not d!131405) (not d!131505) (not b!374449) (not d!131631) (not b!373910) (not tb!32823) (not b!374029) (not b!374108) (not b!373714) (not b!374413) (not b!374451) (not b!373812) (not b!374482) (not d!131333) (not b!374273) (not b!373572) (not d!131549) (not b_lambda!14699) (not d!131533) tp_is_empty!1919 (not d!131407) (not b_next!11659) (not d!131635) b_and!37505 (not b!374463) (not b!374459) (not b!373557) (not b!374525) (not b!374051) (not b!374536) (not b!374292) (not b_lambda!14689) (not d!131743) (not b!374515) (not b!374533) b_and!37513 (not b!374125) (not b!373713) (not bm!23778) (not bm!23779) (not b!374055) (not d!131547) (not b!374574) (not b!373806) (not b!373914) (not d!131619) (not b!373509) (not d!131685) (not b!374477) (not d!131735) (not b!374579) (not b_next!11635) (not b!373882) (not b!374523) (not d!131403) (not d!131711) b_and!37591 (not d!131731) (not b!374062) (not d!131677) (not b!374260) (not d!131467) (not b!374272) (not b!374517) (not b!374419) (not b!374571) (not d!131693) (not d!131633) (not b!374485) (not b!374418) (not b!374453) (not bm!23754) (not d!131469) (not b!373565) (not b!374269) (not d!131465) (not b!373879) (not d!131341) (not b!374015) (not d!131729) (not b!374557) (not b!373876) (not d!131713) (not b_next!11643) (not b!374285) (not b!374123) b_and!37587 (not b!373808) (not b!374270) (not b!373871) (not d!131527) (not bm!23842) (not b!374013) (not d!131641) (not b!374050) (not b_lambda!14697) (not b!374581) (not b_next!11641) (not b!373745) (not d!131519) (not b!374049) (not d!131725) (not d!131637) (not d!131535) (not b!374483) (not d!131339) (not b_lambda!14655) (not b!374519) (not bm!23777) (not b!373874) (not b!374472) (not d!131639) (not b!374448) (not b!374412) (not bs!45390) (not b!373887) (not b!373878) (not b!374028) (not b!374410) (not b!374550) (not b!373804) (not b!374057) (not bs!45392) (not d!131501) (not b_next!11637) (not b!374066) (not tb!32805) (not b!373909) (not b!374441) b_and!37579 (not b!374484) (not d!131699) (not b!374487) (not b!374582) (not b!373725) (not b!373913) (not b!374430) (not d!131745) (not bm!23726) (not d!131553) b_and!37585 (not d!131513) (not b!374527) (not b!374289) b_and!37589 (not b!373740) (not b!374468) (not d!131687) (not bm!23781) (not bm!23759) (not b!374521) (not b!374513) (not b!374524) b_and!37583 (not d!131629) (not d!131337) (not b!374131) (not b!373515) (not bm!23838) (not bm!23756) (not d!131695) (not b!373719) (not b!373558) (not b!374290) (not d!131749) (not b!374434) (not b!373908) (not bm!23843) (not d!131681) (not bm!23774) b_and!37581 (not d!131471) (not b!374592) (not b!374045) (not b!374279) (not d!131683) (not b!374443) (not b!373717) (not b!374052) (not b_lambda!14695) (not b!374048) (not b!373720) (not d!131525) (not b!374127) (not d!131551) (not b!374549) (not b!373912) (not b!374058) (not d!131523) (not d!131721) (not d!131623) (not b!373718) (not tb!32787) (not b!374054) (not b!374532) (not d!131537) (not bm!23836) (not d!131395))
(check-sat (not b_next!11639) (not b_next!11657) (not b_next!11655) (not b_next!11653) b_and!37513 (not b_next!11635) b_and!37591 (not b_next!11641) (not b_next!11637) b_and!37579 b_and!37583 b_and!37581 b_and!37509 (not b_next!11633) (not b_next!11659) b_and!37505 b_and!37587 (not b_next!11643) b_and!37585 b_and!37589)
