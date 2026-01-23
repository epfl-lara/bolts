; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36934 () Bool)

(assert start!36934)

(declare-fun b!372019 () Bool)

(declare-fun b_free!11593 () Bool)

(declare-fun b_next!11593 () Bool)

(assert (=> b!372019 (= b_free!11593 (not b_next!11593))))

(declare-fun tp!116840 () Bool)

(declare-fun b_and!37405 () Bool)

(assert (=> b!372019 (= tp!116840 b_and!37405)))

(declare-fun b_free!11595 () Bool)

(declare-fun b_next!11595 () Bool)

(assert (=> b!372019 (= b_free!11595 (not b_next!11595))))

(declare-fun tp!116843 () Bool)

(declare-fun b_and!37407 () Bool)

(assert (=> b!372019 (= tp!116843 b_and!37407)))

(declare-fun b!372031 () Bool)

(declare-fun b_free!11597 () Bool)

(declare-fun b_next!11597 () Bool)

(assert (=> b!372031 (= b_free!11597 (not b_next!11597))))

(declare-fun tp!116832 () Bool)

(declare-fun b_and!37409 () Bool)

(assert (=> b!372031 (= tp!116832 b_and!37409)))

(declare-fun b_free!11599 () Bool)

(declare-fun b_next!11599 () Bool)

(assert (=> b!372031 (= b_free!11599 (not b_next!11599))))

(declare-fun tp!116837 () Bool)

(declare-fun b_and!37411 () Bool)

(assert (=> b!372031 (= tp!116837 b_and!37411)))

(declare-fun b!372038 () Bool)

(declare-fun b_free!11601 () Bool)

(declare-fun b_next!11601 () Bool)

(assert (=> b!372038 (= b_free!11601 (not b_next!11601))))

(declare-fun tp!116835 () Bool)

(declare-fun b_and!37413 () Bool)

(assert (=> b!372038 (= tp!116835 b_and!37413)))

(declare-fun b_free!11603 () Bool)

(declare-fun b_next!11603 () Bool)

(assert (=> b!372038 (= b_free!11603 (not b_next!11603))))

(declare-fun tp!116838 () Bool)

(declare-fun b_and!37415 () Bool)

(assert (=> b!372038 (= tp!116838 b_and!37415)))

(declare-fun bs!45116 () Bool)

(declare-fun b!372033 () Bool)

(declare-fun b!372009 () Bool)

(assert (= bs!45116 (and b!372033 b!372009)))

(declare-fun lambda!11578 () Int)

(declare-fun lambda!11577 () Int)

(assert (=> bs!45116 (not (= lambda!11578 lambda!11577))))

(declare-fun b!372050 () Bool)

(declare-fun e!228718 () Bool)

(assert (=> b!372050 (= e!228718 true)))

(declare-fun b!372049 () Bool)

(declare-fun e!228717 () Bool)

(assert (=> b!372049 (= e!228717 e!228718)))

(declare-fun b!372048 () Bool)

(declare-fun e!228716 () Bool)

(assert (=> b!372048 (= e!228716 e!228717)))

(assert (=> b!372033 e!228716))

(assert (= b!372049 b!372050))

(assert (= b!372048 b!372049))

(declare-datatypes ((List!4182 0))(
  ( (Nil!4172) (Cons!4172 (h!9569 (_ BitVec 16)) (t!57246 List!4182)) )
))
(declare-datatypes ((TokenValue!827 0))(
  ( (FloatLiteralValue!1654 (text!6234 List!4182)) (TokenValueExt!826 (__x!3141 Int)) (Broken!4135 (value!27232 List!4182)) (Object!836) (End!827) (Def!827) (Underscore!827) (Match!827) (Else!827) (Error!827) (Case!827) (If!827) (Extends!827) (Abstract!827) (Class!827) (Val!827) (DelimiterValue!1654 (del!887 List!4182)) (KeywordValue!833 (value!27233 List!4182)) (CommentValue!1654 (value!27234 List!4182)) (WhitespaceValue!1654 (value!27235 List!4182)) (IndentationValue!827 (value!27236 List!4182)) (String!5214) (Int32!827) (Broken!4136 (value!27237 List!4182)) (Boolean!828) (Unit!6615) (OperatorValue!830 (op!887 List!4182)) (IdentifierValue!1654 (value!27238 List!4182)) (IdentifierValue!1655 (value!27239 List!4182)) (WhitespaceValue!1655 (value!27240 List!4182)) (True!1654) (False!1654) (Broken!4137 (value!27241 List!4182)) (Broken!4138 (value!27242 List!4182)) (True!1655) (RightBrace!827) (RightBracket!827) (Colon!827) (Null!827) (Comma!827) (LeftBracket!827) (False!1655) (LeftBrace!827) (ImaginaryLiteralValue!827 (text!6235 List!4182)) (StringLiteralValue!2481 (value!27243 List!4182)) (EOFValue!827 (value!27244 List!4182)) (IdentValue!827 (value!27245 List!4182)) (DelimiterValue!1655 (value!27246 List!4182)) (DedentValue!827 (value!27247 List!4182)) (NewLineValue!827 (value!27248 List!4182)) (IntegerValue!2481 (value!27249 (_ BitVec 32)) (text!6236 List!4182)) (IntegerValue!2482 (value!27250 Int) (text!6237 List!4182)) (Times!827) (Or!827) (Equal!827) (Minus!827) (Broken!4139 (value!27251 List!4182)) (And!827) (Div!827) (LessEqual!827) (Mod!827) (Concat!1856) (Not!827) (Plus!827) (SpaceValue!827 (value!27252 List!4182)) (IntegerValue!2483 (value!27253 Int) (text!6238 List!4182)) (StringLiteralValue!2482 (text!6239 List!4182)) (FloatLiteralValue!1655 (text!6240 List!4182)) (BytesLiteralValue!827 (value!27254 List!4182)) (CommentValue!1655 (value!27255 List!4182)) (StringLiteralValue!2483 (value!27256 List!4182)) (ErrorTokenValue!827 (msg!888 List!4182)) )
))
(declare-datatypes ((C!2980 0))(
  ( (C!2981 (val!1376 Int)) )
))
(declare-datatypes ((List!4183 0))(
  ( (Nil!4173) (Cons!4173 (h!9570 C!2980) (t!57247 List!4183)) )
))
(declare-datatypes ((IArray!2865 0))(
  ( (IArray!2866 (innerList!1490 List!4183)) )
))
(declare-datatypes ((Conc!1432 0))(
  ( (Node!1432 (left!3485 Conc!1432) (right!3815 Conc!1432) (csize!3094 Int) (cheight!1643 Int)) (Leaf!2174 (xs!4051 IArray!2865) (csize!3095 Int)) (Empty!1432) )
))
(declare-datatypes ((BalanceConc!2872 0))(
  ( (BalanceConc!2873 (c!73208 Conc!1432)) )
))
(declare-datatypes ((String!5215 0))(
  ( (String!5216 (value!27257 String)) )
))
(declare-datatypes ((TokenValueInjection!1426 0))(
  ( (TokenValueInjection!1427 (toValue!1588 Int) (toChars!1447 Int)) )
))
(declare-datatypes ((Regex!1029 0))(
  ( (ElementMatch!1029 (c!73209 C!2980)) (Concat!1857 (regOne!2570 Regex!1029) (regTwo!2570 Regex!1029)) (EmptyExpr!1029) (Star!1029 (reg!1358 Regex!1029)) (EmptyLang!1029) (Union!1029 (regOne!2571 Regex!1029) (regTwo!2571 Regex!1029)) )
))
(declare-datatypes ((Rule!1410 0))(
  ( (Rule!1411 (regex!805 Regex!1029) (tag!1035 String!5215) (isSeparator!805 Bool) (transformation!805 TokenValueInjection!1426)) )
))
(declare-datatypes ((List!4184 0))(
  ( (Nil!4174) (Cons!4174 (h!9571 Rule!1410) (t!57248 List!4184)) )
))
(declare-fun rules!1920 () List!4184)

(get-info :version)

(assert (= (and b!372033 ((_ is Cons!4174) rules!1920)) b!372048))

(declare-fun order!3505 () Int)

(declare-fun order!3507 () Int)

(declare-fun dynLambda!2383 (Int Int) Int)

(declare-fun dynLambda!2384 (Int Int) Int)

(assert (=> b!372050 (< (dynLambda!2383 order!3505 (toValue!1588 (transformation!805 (h!9571 rules!1920)))) (dynLambda!2384 order!3507 lambda!11578))))

(declare-fun order!3509 () Int)

(declare-fun dynLambda!2385 (Int Int) Int)

(assert (=> b!372050 (< (dynLambda!2385 order!3509 (toChars!1447 (transformation!805 (h!9571 rules!1920)))) (dynLambda!2384 order!3507 lambda!11578))))

(assert (=> b!372033 true))

(declare-fun b!371993 () Bool)

(declare-fun e!228684 () Bool)

(declare-fun e!228677 () Bool)

(assert (=> b!371993 (= e!228684 e!228677)))

(declare-fun res!166475 () Bool)

(assert (=> b!371993 (=> (not res!166475) (not e!228677))))

(declare-fun lt!161579 () Rule!1410)

(declare-fun lt!161568 () List!4183)

(declare-fun matchR!347 (Regex!1029 List!4183) Bool)

(assert (=> b!371993 (= res!166475 (matchR!347 (regex!805 lt!161579) lt!161568))))

(declare-datatypes ((Option!997 0))(
  ( (None!996) (Some!996 (v!15119 Rule!1410)) )
))
(declare-fun lt!161589 () Option!997)

(declare-fun get!1461 (Option!997) Rule!1410)

(assert (=> b!371993 (= lt!161579 (get!1461 lt!161589))))

(declare-fun b!371994 () Bool)

(declare-fun res!166466 () Bool)

(declare-fun e!228682 () Bool)

(assert (=> b!371994 (=> (not res!166466) (not e!228682))))

(declare-datatypes ((Token!1354 0))(
  ( (Token!1355 (value!27258 TokenValue!827) (rule!1450 Rule!1410) (size!3372 Int) (originalCharacters!848 List!4183)) )
))
(declare-datatypes ((List!4185 0))(
  ( (Nil!4175) (Cons!4175 (h!9572 Token!1354) (t!57249 List!4185)) )
))
(declare-datatypes ((IArray!2867 0))(
  ( (IArray!2868 (innerList!1491 List!4185)) )
))
(declare-datatypes ((Conc!1433 0))(
  ( (Node!1433 (left!3486 Conc!1433) (right!3816 Conc!1433) (csize!3096 Int) (cheight!1644 Int)) (Leaf!2175 (xs!4052 IArray!2867) (csize!3097 Int)) (Empty!1433) )
))
(declare-datatypes ((BalanceConc!2874 0))(
  ( (BalanceConc!2875 (c!73210 Conc!1433)) )
))
(declare-datatypes ((tuple2!4914 0))(
  ( (tuple2!4915 (_1!2673 BalanceConc!2874) (_2!2673 BalanceConc!2872)) )
))
(declare-fun lt!161592 () tuple2!4914)

(declare-fun separatorToken!170 () Token!1354)

(declare-fun apply!970 (BalanceConc!2874 Int) Token!1354)

(assert (=> b!371994 (= res!166466 (= (apply!970 (_1!2673 lt!161592) 0) separatorToken!170))))

(declare-fun b!371995 () Bool)

(declare-fun e!228681 () Bool)

(assert (=> b!371995 (= e!228681 false)))

(declare-fun b!371996 () Bool)

(declare-fun e!228674 () Bool)

(declare-fun e!228679 () Bool)

(assert (=> b!371996 (= e!228674 e!228679)))

(declare-fun res!166451 () Bool)

(assert (=> b!371996 (=> res!166451 e!228679)))

(declare-fun e!228701 () Bool)

(assert (=> b!371996 (= res!166451 e!228701)))

(declare-fun res!166457 () Bool)

(assert (=> b!371996 (=> (not res!166457) (not e!228701))))

(declare-fun lt!161566 () Bool)

(assert (=> b!371996 (= res!166457 (not lt!161566))))

(declare-fun lt!161565 () List!4183)

(declare-fun lt!161572 () List!4183)

(assert (=> b!371996 (= lt!161566 (= lt!161565 lt!161572))))

(declare-fun b!371997 () Bool)

(declare-datatypes ((Unit!6616 0))(
  ( (Unit!6617) )
))
(declare-fun e!228699 () Unit!6616)

(declare-fun Unit!6618 () Unit!6616)

(assert (=> b!371997 (= e!228699 Unit!6618)))

(declare-fun b!371998 () Bool)

(declare-fun e!228675 () Bool)

(declare-fun e!228700 () Bool)

(declare-fun tp!116836 () Bool)

(assert (=> b!371998 (= e!228675 (and e!228700 tp!116836))))

(declare-fun b!371999 () Bool)

(declare-fun res!166476 () Bool)

(declare-fun e!228704 () Bool)

(assert (=> b!371999 (=> (not res!166476) (not e!228704))))

(declare-datatypes ((tuple2!4916 0))(
  ( (tuple2!4917 (_1!2674 Token!1354) (_2!2674 List!4183)) )
))
(declare-fun lt!161576 () tuple2!4916)

(declare-fun isEmpty!2970 (List!4183) Bool)

(assert (=> b!371999 (= res!166476 (isEmpty!2970 (_2!2674 lt!161576)))))

(declare-fun b!372000 () Bool)

(declare-fun e!228705 () Bool)

(assert (=> b!372000 (= e!228679 e!228705)))

(declare-fun res!166459 () Bool)

(assert (=> b!372000 (=> res!166459 e!228705)))

(declare-fun lt!161560 () List!4183)

(declare-fun lt!161561 () List!4183)

(declare-fun lt!161598 () List!4183)

(assert (=> b!372000 (= res!166459 (or (not (= lt!161560 lt!161561)) (not (= lt!161561 lt!161598)) (not (= lt!161560 lt!161598))))))

(declare-datatypes ((LexerInterface!691 0))(
  ( (LexerInterfaceExt!688 (__x!3142 Int)) (Lexer!689) )
))
(declare-fun thiss!17480 () LexerInterface!691)

(declare-fun tokens!465 () List!4185)

(declare-fun printList!365 (LexerInterface!691 List!4185) List!4183)

(assert (=> b!372000 (= lt!161561 (printList!365 thiss!17480 (Cons!4175 (h!9572 tokens!465) Nil!4175)))))

(declare-fun lt!161586 () BalanceConc!2872)

(declare-fun list!1801 (BalanceConc!2872) List!4183)

(assert (=> b!372000 (= lt!161560 (list!1801 lt!161586))))

(declare-fun lt!161564 () BalanceConc!2874)

(declare-fun printTailRec!377 (LexerInterface!691 BalanceConc!2874 Int BalanceConc!2872) BalanceConc!2872)

(assert (=> b!372000 (= lt!161586 (printTailRec!377 thiss!17480 lt!161564 0 (BalanceConc!2873 Empty!1432)))))

(declare-fun print!416 (LexerInterface!691 BalanceConc!2874) BalanceConc!2872)

(assert (=> b!372000 (= lt!161586 (print!416 thiss!17480 lt!161564))))

(declare-fun singletonSeq!351 (Token!1354) BalanceConc!2874)

(assert (=> b!372000 (= lt!161564 (singletonSeq!351 (h!9572 tokens!465)))))

(declare-fun b!372001 () Bool)

(declare-fun Unit!6619 () Unit!6616)

(assert (=> b!372001 (= e!228699 Unit!6619)))

(declare-fun lt!161599 () C!2980)

(declare-fun lt!161578 () Token!1354)

(declare-fun lt!161574 () Unit!6616)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!84 (Regex!1029 List!4183 C!2980) Unit!6616)

(assert (=> b!372001 (= lt!161574 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!84 (regex!805 (rule!1450 lt!161578)) lt!161568 lt!161599))))

(declare-fun res!166477 () Bool)

(assert (=> b!372001 (= res!166477 (not (matchR!347 (regex!805 (rule!1450 lt!161578)) lt!161568)))))

(assert (=> b!372001 (=> (not res!166477) (not e!228681))))

(assert (=> b!372001 e!228681))

(declare-fun e!228698 () Bool)

(declare-fun tp!116841 () Bool)

(declare-fun b!372002 () Bool)

(declare-fun inv!5180 (String!5215) Bool)

(declare-fun inv!5183 (TokenValueInjection!1426) Bool)

(assert (=> b!372002 (= e!228700 (and tp!116841 (inv!5180 (tag!1035 (h!9571 rules!1920))) (inv!5183 (transformation!805 (h!9571 rules!1920))) e!228698))))

(declare-fun b!372003 () Bool)

(declare-fun e!228693 () Unit!6616)

(declare-fun Unit!6620 () Unit!6616)

(assert (=> b!372003 (= e!228693 Unit!6620)))

(assert (=> b!372003 false))

(declare-fun b!372004 () Bool)

(declare-fun res!166474 () Bool)

(declare-fun e!228695 () Bool)

(assert (=> b!372004 (=> (not res!166474) (not e!228695))))

(declare-fun rulesProduceIndividualToken!440 (LexerInterface!691 List!4184 Token!1354) Bool)

(assert (=> b!372004 (= res!166474 (rulesProduceIndividualToken!440 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!372005 () Bool)

(declare-fun e!228673 () Bool)

(declare-fun e!228703 () Bool)

(declare-fun tp!116834 () Bool)

(assert (=> b!372005 (= e!228673 (and tp!116834 (inv!5180 (tag!1035 (rule!1450 (h!9572 tokens!465)))) (inv!5183 (transformation!805 (rule!1450 (h!9572 tokens!465)))) e!228703))))

(declare-fun b!372006 () Bool)

(declare-fun e!228696 () Bool)

(declare-fun contains!856 (List!4184 Rule!1410) Bool)

(assert (=> b!372006 (= e!228696 (contains!856 rules!1920 (rule!1450 separatorToken!170)))))

(declare-fun b!372007 () Bool)

(assert (=> b!372007 (= e!228677 (= (rule!1450 lt!161578) lt!161579))))

(declare-fun b!372008 () Bool)

(declare-fun res!166452 () Bool)

(declare-fun e!228687 () Bool)

(assert (=> b!372008 (=> (not res!166452) (not e!228687))))

(declare-fun lt!161577 () List!4183)

(declare-fun seqFromList!975 (List!4183) BalanceConc!2872)

(assert (=> b!372008 (= res!166452 (= (list!1801 (seqFromList!975 lt!161565)) lt!161577))))

(declare-fun res!166470 () Bool)

(assert (=> b!372009 (=> (not res!166470) (not e!228695))))

(declare-fun forall!1152 (List!4185 Int) Bool)

(assert (=> b!372009 (= res!166470 (forall!1152 tokens!465 lambda!11577))))

(declare-fun b!372010 () Bool)

(declare-fun res!166472 () Bool)

(declare-fun e!228683 () Bool)

(assert (=> b!372010 (=> (not res!166472) (not e!228683))))

(declare-fun rulesInvariant!657 (LexerInterface!691 List!4184) Bool)

(assert (=> b!372010 (= res!166472 (rulesInvariant!657 thiss!17480 rules!1920))))

(declare-fun b!372011 () Bool)

(declare-fun e!228686 () Bool)

(declare-fun e!228702 () Bool)

(assert (=> b!372011 (= e!228686 e!228702)))

(declare-fun res!166469 () Bool)

(assert (=> b!372011 (=> (not res!166469) (not e!228702))))

(declare-datatypes ((Option!998 0))(
  ( (None!997) (Some!997 (v!15120 tuple2!4916)) )
))
(declare-fun lt!161562 () Option!998)

(declare-fun isDefined!836 (Option!998) Bool)

(assert (=> b!372011 (= res!166469 (isDefined!836 lt!161562))))

(declare-fun maxPrefix!407 (LexerInterface!691 List!4184 List!4183) Option!998)

(assert (=> b!372011 (= lt!161562 (maxPrefix!407 thiss!17480 rules!1920 lt!161565))))

(declare-fun b!372012 () Bool)

(declare-fun e!228706 () Bool)

(declare-fun e!228685 () Bool)

(assert (=> b!372012 (= e!228706 e!228685)))

(declare-fun res!166458 () Bool)

(assert (=> b!372012 (=> (not res!166458) (not e!228685))))

(declare-fun lt!161571 () Rule!1410)

(declare-fun lt!161573 () List!4183)

(assert (=> b!372012 (= res!166458 (matchR!347 (regex!805 lt!161571) lt!161573))))

(declare-fun lt!161593 () Option!997)

(assert (=> b!372012 (= lt!161571 (get!1461 lt!161593))))

(declare-fun b!372013 () Bool)

(declare-fun res!166455 () Bool)

(assert (=> b!372013 (=> res!166455 e!228705)))

(assert (=> b!372013 (= res!166455 (not (rulesProduceIndividualToken!440 thiss!17480 rules!1920 (h!9572 tokens!465))))))

(declare-fun lt!161588 () List!4183)

(declare-fun b!372014 () Bool)

(declare-fun ++!1166 (List!4183 List!4183) List!4183)

(assert (=> b!372014 (= e!228701 (not (= lt!161565 (++!1166 lt!161598 lt!161588))))))

(declare-fun b!372015 () Bool)

(declare-fun Unit!6621 () Unit!6616)

(assert (=> b!372015 (= e!228693 Unit!6621)))

(declare-fun b!372016 () Bool)

(assert (=> b!372016 (= e!228685 (= (rule!1450 separatorToken!170) lt!161571))))

(declare-fun b!372017 () Bool)

(declare-fun res!166462 () Bool)

(assert (=> b!372017 (=> (not res!166462) (not e!228695))))

(assert (=> b!372017 (= res!166462 (isSeparator!805 (rule!1450 separatorToken!170)))))

(declare-fun b!372018 () Bool)

(declare-fun res!166471 () Bool)

(assert (=> b!372018 (=> res!166471 e!228705)))

(declare-fun isEmpty!2971 (BalanceConc!2874) Bool)

(declare-fun lex!483 (LexerInterface!691 List!4184 BalanceConc!2872) tuple2!4914)

(assert (=> b!372018 (= res!166471 (isEmpty!2971 (_1!2673 (lex!483 thiss!17480 rules!1920 (seqFromList!975 lt!161598)))))))

(declare-fun e!228689 () Bool)

(assert (=> b!372019 (= e!228689 (and tp!116840 tp!116843))))

(declare-fun res!166478 () Bool)

(assert (=> start!36934 (=> (not res!166478) (not e!228683))))

(assert (=> start!36934 (= res!166478 ((_ is Lexer!689) thiss!17480))))

(assert (=> start!36934 e!228683))

(assert (=> start!36934 true))

(assert (=> start!36934 e!228675))

(declare-fun e!228678 () Bool)

(declare-fun inv!5184 (Token!1354) Bool)

(assert (=> start!36934 (and (inv!5184 separatorToken!170) e!228678)))

(declare-fun e!228680 () Bool)

(assert (=> start!36934 e!228680))

(declare-fun b!372020 () Bool)

(declare-fun res!166465 () Bool)

(assert (=> b!372020 (=> (not res!166465) (not e!228695))))

(assert (=> b!372020 (= res!166465 ((_ is Cons!4175) tokens!465))))

(declare-fun b!372021 () Bool)

(assert (=> b!372021 (= e!228683 e!228695)))

(declare-fun res!166456 () Bool)

(assert (=> b!372021 (=> (not res!166456) (not e!228695))))

(declare-fun lt!161597 () BalanceConc!2874)

(declare-fun rulesProduceEachTokenIndividually!483 (LexerInterface!691 List!4184 BalanceConc!2874) Bool)

(assert (=> b!372021 (= res!166456 (rulesProduceEachTokenIndividually!483 thiss!17480 rules!1920 lt!161597))))

(declare-fun seqFromList!976 (List!4185) BalanceConc!2874)

(assert (=> b!372021 (= lt!161597 (seqFromList!976 tokens!465))))

(declare-fun b!372022 () Bool)

(declare-fun res!166463 () Bool)

(declare-fun e!228676 () Bool)

(assert (=> b!372022 (=> (not res!166463) (not e!228676))))

(declare-fun lt!161594 () tuple2!4914)

(assert (=> b!372022 (= res!166463 (= (apply!970 (_1!2673 lt!161594) 0) lt!161578))))

(declare-fun b!372023 () Bool)

(assert (=> b!372023 (= e!228687 (not e!228674))))

(declare-fun res!166461 () Bool)

(assert (=> b!372023 (=> res!166461 e!228674)))

(declare-fun printWithSeparatorTokenWhenNeededRec!364 (LexerInterface!691 List!4184 BalanceConc!2874 Token!1354 Int) BalanceConc!2872)

(assert (=> b!372023 (= res!166461 (not (= lt!161588 (list!1801 (printWithSeparatorTokenWhenNeededRec!364 thiss!17480 rules!1920 (seqFromList!976 (t!57249 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!161584 () List!4183)

(assert (=> b!372023 (= lt!161584 lt!161572)))

(declare-fun lt!161600 () List!4183)

(assert (=> b!372023 (= lt!161572 (++!1166 lt!161598 lt!161600))))

(assert (=> b!372023 (= lt!161584 (++!1166 (++!1166 lt!161598 lt!161573) lt!161588))))

(declare-fun lt!161590 () Unit!6616)

(declare-fun lemmaConcatAssociativity!524 (List!4183 List!4183 List!4183) Unit!6616)

(assert (=> b!372023 (= lt!161590 (lemmaConcatAssociativity!524 lt!161598 lt!161573 lt!161588))))

(declare-fun charsOf!448 (Token!1354) BalanceConc!2872)

(assert (=> b!372023 (= lt!161598 (list!1801 (charsOf!448 (h!9572 tokens!465))))))

(assert (=> b!372023 (= lt!161600 (++!1166 lt!161573 lt!161588))))

(declare-fun printWithSeparatorTokenWhenNeededList!372 (LexerInterface!691 List!4184 List!4185 Token!1354) List!4183)

(assert (=> b!372023 (= lt!161588 (printWithSeparatorTokenWhenNeededList!372 thiss!17480 rules!1920 (t!57249 tokens!465) separatorToken!170))))

(assert (=> b!372023 (= lt!161573 (list!1801 (charsOf!448 separatorToken!170)))))

(declare-fun b!372024 () Bool)

(assert (=> b!372024 (= e!228704 (matchR!347 (regex!805 (rule!1450 (h!9572 tokens!465))) lt!161598))))

(declare-fun b!372025 () Bool)

(assert (=> b!372025 (= e!228695 e!228687)))

(declare-fun res!166473 () Bool)

(assert (=> b!372025 (=> (not res!166473) (not e!228687))))

(assert (=> b!372025 (= res!166473 (= lt!161565 lt!161577))))

(assert (=> b!372025 (= lt!161577 (list!1801 (printWithSeparatorTokenWhenNeededRec!364 thiss!17480 rules!1920 lt!161597 separatorToken!170 0)))))

(assert (=> b!372025 (= lt!161565 (printWithSeparatorTokenWhenNeededList!372 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!372026 () Bool)

(declare-fun res!166483 () Bool)

(assert (=> b!372026 (=> (not res!166483) (not e!228695))))

(declare-fun sepAndNonSepRulesDisjointChars!394 (List!4184 List!4184) Bool)

(assert (=> b!372026 (= res!166483 (sepAndNonSepRulesDisjointChars!394 rules!1920 rules!1920))))

(declare-fun tp!116831 () Bool)

(declare-fun e!228690 () Bool)

(declare-fun b!372027 () Bool)

(assert (=> b!372027 (= e!228690 (and tp!116831 (inv!5180 (tag!1035 (rule!1450 separatorToken!170))) (inv!5183 (transformation!805 (rule!1450 separatorToken!170))) e!228689))))

(declare-fun b!372028 () Bool)

(declare-fun isEmpty!2972 (BalanceConc!2872) Bool)

(assert (=> b!372028 (= e!228682 (isEmpty!2972 (_2!2673 lt!161592)))))

(declare-fun b!372029 () Bool)

(assert (=> b!372029 (= e!228676 (isEmpty!2972 (_2!2673 lt!161594)))))

(declare-fun e!228709 () Bool)

(declare-fun b!372030 () Bool)

(declare-fun tp!116842 () Bool)

(assert (=> b!372030 (= e!228680 (and (inv!5184 (h!9572 tokens!465)) e!228709 tp!116842))))

(assert (=> b!372031 (= e!228703 (and tp!116832 tp!116837))))

(declare-fun b!372032 () Bool)

(declare-fun tp!116839 () Bool)

(declare-fun inv!21 (TokenValue!827) Bool)

(assert (=> b!372032 (= e!228709 (and (inv!21 (value!27258 (h!9572 tokens!465))) e!228673 tp!116839))))

(declare-fun e!228708 () Bool)

(assert (=> b!372033 (= e!228705 e!228708)))

(declare-fun res!166460 () Bool)

(assert (=> b!372033 (=> res!166460 e!228708)))

(declare-datatypes ((tuple2!4918 0))(
  ( (tuple2!4919 (_1!2675 Token!1354) (_2!2675 BalanceConc!2872)) )
))
(declare-datatypes ((Option!999 0))(
  ( (None!998) (Some!998 (v!15121 tuple2!4918)) )
))
(declare-fun isDefined!837 (Option!999) Bool)

(declare-fun maxPrefixZipperSequence!370 (LexerInterface!691 List!4184 BalanceConc!2872) Option!999)

(assert (=> b!372033 (= res!166460 (not (isDefined!837 (maxPrefixZipperSequence!370 thiss!17480 rules!1920 (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465)))))))))

(declare-fun lt!161595 () Unit!6616)

(declare-fun forallContained!358 (List!4185 Int Token!1354) Unit!6616)

(assert (=> b!372033 (= lt!161595 (forallContained!358 tokens!465 lambda!11578 (h!9572 tokens!465)))))

(assert (=> b!372033 (= lt!161598 (originalCharacters!848 (h!9572 tokens!465)))))

(declare-fun b!372034 () Bool)

(declare-fun e!228691 () Bool)

(assert (=> b!372034 (= e!228691 e!228696)))

(declare-fun res!166454 () Bool)

(assert (=> b!372034 (=> res!166454 e!228696)))

(declare-fun contains!857 (List!4183 C!2980) Bool)

(declare-fun usedCharacters!106 (Regex!1029) List!4183)

(declare-fun head!1011 (List!4183) C!2980)

(assert (=> b!372034 (= res!166454 (not (contains!857 (usedCharacters!106 (regex!805 (rule!1450 separatorToken!170))) (head!1011 lt!161588))))))

(declare-fun lt!161591 () Unit!6616)

(assert (=> b!372034 (= lt!161591 e!228699)))

(declare-fun c!73207 () Bool)

(assert (=> b!372034 (= c!73207 (not (contains!857 (usedCharacters!106 (regex!805 (rule!1450 lt!161578))) lt!161599)))))

(assert (=> b!372034 (= lt!161599 (head!1011 lt!161568))))

(assert (=> b!372034 e!228684))

(declare-fun res!166482 () Bool)

(assert (=> b!372034 (=> (not res!166482) (not e!228684))))

(declare-fun isDefined!838 (Option!997) Bool)

(assert (=> b!372034 (= res!166482 (isDefined!838 lt!161589))))

(declare-fun getRuleFromTag!164 (LexerInterface!691 List!4184 String!5215) Option!997)

(assert (=> b!372034 (= lt!161589 (getRuleFromTag!164 thiss!17480 rules!1920 (tag!1035 (rule!1450 lt!161578))))))

(declare-fun lt!161587 () Unit!6616)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!164 (LexerInterface!691 List!4184 List!4183 Token!1354) Unit!6616)

(assert (=> b!372034 (= lt!161587 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!164 thiss!17480 rules!1920 lt!161568 lt!161578))))

(assert (=> b!372034 (= lt!161568 (list!1801 (charsOf!448 lt!161578)))))

(declare-fun lt!161583 () Unit!6616)

(assert (=> b!372034 (= lt!161583 (forallContained!358 tokens!465 lambda!11578 lt!161578))))

(assert (=> b!372034 e!228676))

(declare-fun res!166479 () Bool)

(assert (=> b!372034 (=> (not res!166479) (not e!228676))))

(declare-fun size!3373 (BalanceConc!2874) Int)

(assert (=> b!372034 (= res!166479 (= (size!3373 (_1!2673 lt!161594)) 1))))

(declare-fun lt!161570 () BalanceConc!2872)

(assert (=> b!372034 (= lt!161594 (lex!483 thiss!17480 rules!1920 lt!161570))))

(declare-fun lt!161559 () BalanceConc!2874)

(assert (=> b!372034 (= lt!161570 (printTailRec!377 thiss!17480 lt!161559 0 (BalanceConc!2873 Empty!1432)))))

(assert (=> b!372034 (= lt!161570 (print!416 thiss!17480 lt!161559))))

(assert (=> b!372034 (= lt!161559 (singletonSeq!351 lt!161578))))

(assert (=> b!372034 e!228706))

(declare-fun res!166453 () Bool)

(assert (=> b!372034 (=> (not res!166453) (not e!228706))))

(assert (=> b!372034 (= res!166453 (isDefined!838 lt!161593))))

(assert (=> b!372034 (= lt!161593 (getRuleFromTag!164 thiss!17480 rules!1920 (tag!1035 (rule!1450 separatorToken!170))))))

(declare-fun lt!161567 () Unit!6616)

(assert (=> b!372034 (= lt!161567 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!164 thiss!17480 rules!1920 lt!161573 separatorToken!170))))

(assert (=> b!372034 e!228682))

(declare-fun res!166481 () Bool)

(assert (=> b!372034 (=> (not res!166481) (not e!228682))))

(assert (=> b!372034 (= res!166481 (= (size!3373 (_1!2673 lt!161592)) 1))))

(declare-fun lt!161569 () BalanceConc!2872)

(assert (=> b!372034 (= lt!161592 (lex!483 thiss!17480 rules!1920 lt!161569))))

(declare-fun lt!161557 () BalanceConc!2874)

(assert (=> b!372034 (= lt!161569 (printTailRec!377 thiss!17480 lt!161557 0 (BalanceConc!2873 Empty!1432)))))

(assert (=> b!372034 (= lt!161569 (print!416 thiss!17480 lt!161557))))

(assert (=> b!372034 (= lt!161557 (singletonSeq!351 separatorToken!170))))

(assert (=> b!372034 (rulesProduceIndividualToken!440 thiss!17480 rules!1920 lt!161578)))

(declare-fun lt!161563 () Unit!6616)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!154 (LexerInterface!691 List!4184 List!4185 Token!1354) Unit!6616)

(assert (=> b!372034 (= lt!161563 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!154 thiss!17480 rules!1920 tokens!465 lt!161578))))

(declare-fun head!1012 (List!4185) Token!1354)

(assert (=> b!372034 (= lt!161578 (head!1012 (t!57249 tokens!465)))))

(declare-fun lt!161585 () Unit!6616)

(assert (=> b!372034 (= lt!161585 e!228693)))

(declare-fun c!73206 () Bool)

(declare-fun isEmpty!2973 (List!4185) Bool)

(assert (=> b!372034 (= c!73206 (isEmpty!2973 (t!57249 tokens!465)))))

(declare-fun lt!161575 () Option!998)

(assert (=> b!372034 (= lt!161575 (maxPrefix!407 thiss!17480 rules!1920 lt!161600))))

(declare-fun lt!161582 () tuple2!4916)

(assert (=> b!372034 (= lt!161600 (_2!2674 lt!161582))))

(declare-fun lt!161581 () Unit!6616)

(declare-fun lemmaSamePrefixThenSameSuffix!250 (List!4183 List!4183 List!4183 List!4183 List!4183) Unit!6616)

(assert (=> b!372034 (= lt!161581 (lemmaSamePrefixThenSameSuffix!250 lt!161598 lt!161600 lt!161598 (_2!2674 lt!161582) lt!161565))))

(declare-fun get!1462 (Option!998) tuple2!4916)

(assert (=> b!372034 (= lt!161582 (get!1462 (maxPrefix!407 thiss!17480 rules!1920 lt!161565)))))

(declare-fun isPrefix!465 (List!4183 List!4183) Bool)

(assert (=> b!372034 (isPrefix!465 lt!161598 lt!161572)))

(declare-fun lt!161596 () Unit!6616)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!356 (List!4183 List!4183) Unit!6616)

(assert (=> b!372034 (= lt!161596 (lemmaConcatTwoListThenFirstIsPrefix!356 lt!161598 lt!161600))))

(assert (=> b!372034 e!228686))

(declare-fun res!166468 () Bool)

(assert (=> b!372034 (=> res!166468 e!228686)))

(assert (=> b!372034 (= res!166468 (isEmpty!2973 tokens!465))))

(declare-fun lt!161558 () Unit!6616)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!212 (LexerInterface!691 List!4184 List!4185 Token!1354) Unit!6616)

(assert (=> b!372034 (= lt!161558 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!212 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!372035 () Bool)

(assert (=> b!372035 (= e!228702 (= (_1!2674 (get!1462 lt!161562)) (head!1012 tokens!465)))))

(declare-fun b!372036 () Bool)

(assert (=> b!372036 (= e!228708 e!228691)))

(declare-fun res!166464 () Bool)

(assert (=> b!372036 (=> res!166464 e!228691)))

(assert (=> b!372036 (= res!166464 (not lt!161566))))

(assert (=> b!372036 e!228704))

(declare-fun res!166467 () Bool)

(assert (=> b!372036 (=> (not res!166467) (not e!228704))))

(assert (=> b!372036 (= res!166467 (= (_1!2674 lt!161576) (h!9572 tokens!465)))))

(declare-fun lt!161580 () Option!998)

(assert (=> b!372036 (= lt!161576 (get!1462 lt!161580))))

(assert (=> b!372036 (isDefined!836 lt!161580)))

(assert (=> b!372036 (= lt!161580 (maxPrefix!407 thiss!17480 rules!1920 lt!161598))))

(declare-fun b!372037 () Bool)

(declare-fun res!166480 () Bool)

(assert (=> b!372037 (=> (not res!166480) (not e!228683))))

(declare-fun isEmpty!2974 (List!4184) Bool)

(assert (=> b!372037 (= res!166480 (not (isEmpty!2974 rules!1920)))))

(assert (=> b!372038 (= e!228698 (and tp!116835 tp!116838))))

(declare-fun tp!116833 () Bool)

(declare-fun b!372039 () Bool)

(assert (=> b!372039 (= e!228678 (and (inv!21 (value!27258 separatorToken!170)) e!228690 tp!116833))))

(assert (= (and start!36934 res!166478) b!372037))

(assert (= (and b!372037 res!166480) b!372010))

(assert (= (and b!372010 res!166472) b!372021))

(assert (= (and b!372021 res!166456) b!372004))

(assert (= (and b!372004 res!166474) b!372017))

(assert (= (and b!372017 res!166462) b!372009))

(assert (= (and b!372009 res!166470) b!372026))

(assert (= (and b!372026 res!166483) b!372020))

(assert (= (and b!372020 res!166465) b!372025))

(assert (= (and b!372025 res!166473) b!372008))

(assert (= (and b!372008 res!166452) b!372023))

(assert (= (and b!372023 (not res!166461)) b!371996))

(assert (= (and b!371996 res!166457) b!372014))

(assert (= (and b!371996 (not res!166451)) b!372000))

(assert (= (and b!372000 (not res!166459)) b!372013))

(assert (= (and b!372013 (not res!166455)) b!372018))

(assert (= (and b!372018 (not res!166471)) b!372033))

(assert (= (and b!372033 (not res!166460)) b!372036))

(assert (= (and b!372036 res!166467) b!371999))

(assert (= (and b!371999 res!166476) b!372024))

(assert (= (and b!372036 (not res!166464)) b!372034))

(assert (= (and b!372034 (not res!166468)) b!372011))

(assert (= (and b!372011 res!166469) b!372035))

(assert (= (and b!372034 c!73206) b!372003))

(assert (= (and b!372034 (not c!73206)) b!372015))

(assert (= (and b!372034 res!166481) b!371994))

(assert (= (and b!371994 res!166466) b!372028))

(assert (= (and b!372034 res!166453) b!372012))

(assert (= (and b!372012 res!166458) b!372016))

(assert (= (and b!372034 res!166479) b!372022))

(assert (= (and b!372022 res!166463) b!372029))

(assert (= (and b!372034 res!166482) b!371993))

(assert (= (and b!371993 res!166475) b!372007))

(assert (= (and b!372034 c!73207) b!372001))

(assert (= (and b!372034 (not c!73207)) b!371997))

(assert (= (and b!372001 res!166477) b!371995))

(assert (= (and b!372034 (not res!166454)) b!372006))

(assert (= b!372002 b!372038))

(assert (= b!371998 b!372002))

(assert (= (and start!36934 ((_ is Cons!4174) rules!1920)) b!371998))

(assert (= b!372027 b!372019))

(assert (= b!372039 b!372027))

(assert (= start!36934 b!372039))

(assert (= b!372005 b!372031))

(assert (= b!372032 b!372005))

(assert (= b!372030 b!372032))

(assert (= (and start!36934 ((_ is Cons!4175) tokens!465)) b!372030))

(declare-fun m!551441 () Bool)

(assert (=> b!372001 m!551441))

(declare-fun m!551443 () Bool)

(assert (=> b!372001 m!551443))

(declare-fun m!551445 () Bool)

(assert (=> b!372002 m!551445))

(declare-fun m!551447 () Bool)

(assert (=> b!372002 m!551447))

(declare-fun m!551449 () Bool)

(assert (=> b!372012 m!551449))

(declare-fun m!551451 () Bool)

(assert (=> b!372012 m!551451))

(declare-fun m!551453 () Bool)

(assert (=> b!372013 m!551453))

(declare-fun m!551455 () Bool)

(assert (=> b!371994 m!551455))

(declare-fun m!551457 () Bool)

(assert (=> b!372004 m!551457))

(declare-fun m!551459 () Bool)

(assert (=> start!36934 m!551459))

(declare-fun m!551461 () Bool)

(assert (=> b!372006 m!551461))

(declare-fun m!551463 () Bool)

(assert (=> b!372011 m!551463))

(declare-fun m!551465 () Bool)

(assert (=> b!372011 m!551465))

(declare-fun m!551467 () Bool)

(assert (=> b!372030 m!551467))

(declare-fun m!551469 () Bool)

(assert (=> b!371993 m!551469))

(declare-fun m!551471 () Bool)

(assert (=> b!371993 m!551471))

(declare-fun m!551473 () Bool)

(assert (=> b!372034 m!551473))

(declare-fun m!551475 () Bool)

(assert (=> b!372034 m!551475))

(declare-fun m!551477 () Bool)

(assert (=> b!372034 m!551477))

(declare-fun m!551479 () Bool)

(assert (=> b!372034 m!551479))

(declare-fun m!551481 () Bool)

(assert (=> b!372034 m!551481))

(declare-fun m!551483 () Bool)

(assert (=> b!372034 m!551483))

(declare-fun m!551485 () Bool)

(assert (=> b!372034 m!551485))

(declare-fun m!551487 () Bool)

(assert (=> b!372034 m!551487))

(declare-fun m!551489 () Bool)

(assert (=> b!372034 m!551489))

(declare-fun m!551491 () Bool)

(assert (=> b!372034 m!551491))

(declare-fun m!551493 () Bool)

(assert (=> b!372034 m!551493))

(declare-fun m!551495 () Bool)

(assert (=> b!372034 m!551495))

(declare-fun m!551497 () Bool)

(assert (=> b!372034 m!551497))

(declare-fun m!551499 () Bool)

(assert (=> b!372034 m!551499))

(declare-fun m!551501 () Bool)

(assert (=> b!372034 m!551501))

(declare-fun m!551503 () Bool)

(assert (=> b!372034 m!551503))

(declare-fun m!551505 () Bool)

(assert (=> b!372034 m!551505))

(declare-fun m!551507 () Bool)

(assert (=> b!372034 m!551507))

(declare-fun m!551509 () Bool)

(assert (=> b!372034 m!551509))

(declare-fun m!551511 () Bool)

(assert (=> b!372034 m!551511))

(assert (=> b!372034 m!551491))

(declare-fun m!551513 () Bool)

(assert (=> b!372034 m!551513))

(declare-fun m!551515 () Bool)

(assert (=> b!372034 m!551515))

(declare-fun m!551517 () Bool)

(assert (=> b!372034 m!551517))

(assert (=> b!372034 m!551465))

(declare-fun m!551519 () Bool)

(assert (=> b!372034 m!551519))

(declare-fun m!551521 () Bool)

(assert (=> b!372034 m!551521))

(declare-fun m!551523 () Bool)

(assert (=> b!372034 m!551523))

(declare-fun m!551525 () Bool)

(assert (=> b!372034 m!551525))

(declare-fun m!551527 () Bool)

(assert (=> b!372034 m!551527))

(assert (=> b!372034 m!551465))

(declare-fun m!551529 () Bool)

(assert (=> b!372034 m!551529))

(declare-fun m!551531 () Bool)

(assert (=> b!372034 m!551531))

(declare-fun m!551533 () Bool)

(assert (=> b!372034 m!551533))

(declare-fun m!551535 () Bool)

(assert (=> b!372034 m!551535))

(declare-fun m!551537 () Bool)

(assert (=> b!372034 m!551537))

(declare-fun m!551539 () Bool)

(assert (=> b!372034 m!551539))

(assert (=> b!372034 m!551505))

(assert (=> b!372034 m!551507))

(declare-fun m!551541 () Bool)

(assert (=> b!372034 m!551541))

(declare-fun m!551543 () Bool)

(assert (=> b!372034 m!551543))

(assert (=> b!372034 m!551475))

(declare-fun m!551545 () Bool)

(assert (=> b!372018 m!551545))

(assert (=> b!372018 m!551545))

(declare-fun m!551547 () Bool)

(assert (=> b!372018 m!551547))

(declare-fun m!551549 () Bool)

(assert (=> b!372018 m!551549))

(declare-fun m!551551 () Bool)

(assert (=> b!372037 m!551551))

(declare-fun m!551553 () Bool)

(assert (=> b!372025 m!551553))

(assert (=> b!372025 m!551553))

(declare-fun m!551555 () Bool)

(assert (=> b!372025 m!551555))

(declare-fun m!551557 () Bool)

(assert (=> b!372025 m!551557))

(declare-fun m!551559 () Bool)

(assert (=> b!372024 m!551559))

(declare-fun m!551561 () Bool)

(assert (=> b!372014 m!551561))

(declare-fun m!551563 () Bool)

(assert (=> b!372005 m!551563))

(declare-fun m!551565 () Bool)

(assert (=> b!372005 m!551565))

(declare-fun m!551567 () Bool)

(assert (=> b!372009 m!551567))

(declare-fun m!551569 () Bool)

(assert (=> b!372028 m!551569))

(declare-fun m!551571 () Bool)

(assert (=> b!372032 m!551571))

(declare-fun m!551573 () Bool)

(assert (=> b!372036 m!551573))

(declare-fun m!551575 () Bool)

(assert (=> b!372036 m!551575))

(declare-fun m!551577 () Bool)

(assert (=> b!372036 m!551577))

(declare-fun m!551579 () Bool)

(assert (=> b!372039 m!551579))

(declare-fun m!551581 () Bool)

(assert (=> b!372022 m!551581))

(declare-fun m!551583 () Bool)

(assert (=> b!372029 m!551583))

(declare-fun m!551585 () Bool)

(assert (=> b!372000 m!551585))

(declare-fun m!551587 () Bool)

(assert (=> b!372000 m!551587))

(declare-fun m!551589 () Bool)

(assert (=> b!372000 m!551589))

(declare-fun m!551591 () Bool)

(assert (=> b!372000 m!551591))

(declare-fun m!551593 () Bool)

(assert (=> b!372000 m!551593))

(declare-fun m!551595 () Bool)

(assert (=> b!372033 m!551595))

(assert (=> b!372033 m!551595))

(declare-fun m!551597 () Bool)

(assert (=> b!372033 m!551597))

(assert (=> b!372033 m!551597))

(declare-fun m!551599 () Bool)

(assert (=> b!372033 m!551599))

(declare-fun m!551601 () Bool)

(assert (=> b!372033 m!551601))

(declare-fun m!551603 () Bool)

(assert (=> b!372023 m!551603))

(declare-fun m!551605 () Bool)

(assert (=> b!372023 m!551605))

(declare-fun m!551607 () Bool)

(assert (=> b!372023 m!551607))

(assert (=> b!372023 m!551605))

(declare-fun m!551609 () Bool)

(assert (=> b!372023 m!551609))

(assert (=> b!372023 m!551603))

(declare-fun m!551611 () Bool)

(assert (=> b!372023 m!551611))

(declare-fun m!551613 () Bool)

(assert (=> b!372023 m!551613))

(declare-fun m!551615 () Bool)

(assert (=> b!372023 m!551615))

(declare-fun m!551617 () Bool)

(assert (=> b!372023 m!551617))

(assert (=> b!372023 m!551613))

(declare-fun m!551619 () Bool)

(assert (=> b!372023 m!551619))

(assert (=> b!372023 m!551611))

(declare-fun m!551621 () Bool)

(assert (=> b!372023 m!551621))

(declare-fun m!551623 () Bool)

(assert (=> b!372023 m!551623))

(assert (=> b!372023 m!551623))

(declare-fun m!551625 () Bool)

(assert (=> b!372023 m!551625))

(declare-fun m!551627 () Bool)

(assert (=> b!372023 m!551627))

(declare-fun m!551629 () Bool)

(assert (=> b!372021 m!551629))

(declare-fun m!551631 () Bool)

(assert (=> b!372021 m!551631))

(declare-fun m!551633 () Bool)

(assert (=> b!372027 m!551633))

(declare-fun m!551635 () Bool)

(assert (=> b!372027 m!551635))

(declare-fun m!551637 () Bool)

(assert (=> b!372026 m!551637))

(declare-fun m!551639 () Bool)

(assert (=> b!372010 m!551639))

(declare-fun m!551641 () Bool)

(assert (=> b!371999 m!551641))

(declare-fun m!551643 () Bool)

(assert (=> b!372035 m!551643))

(declare-fun m!551645 () Bool)

(assert (=> b!372035 m!551645))

(declare-fun m!551647 () Bool)

(assert (=> b!372008 m!551647))

(assert (=> b!372008 m!551647))

(declare-fun m!551649 () Bool)

(assert (=> b!372008 m!551649))

(check-sat (not b!372037) (not b!372021) (not b!372033) (not b_next!11601) (not b!372008) (not b!372001) (not b!372014) (not b!372039) b_and!37405 b_and!37411 (not b_next!11603) (not b!372023) (not b!372013) (not b!371993) (not b!372030) (not b!372000) (not b!372034) (not b!372035) (not b!371994) b_and!37413 (not b_next!11595) (not b_next!11597) (not b!372029) (not b!372022) (not b!371999) (not b!372036) b_and!37407 (not b!372010) (not b!372018) (not b!371998) (not b!372011) (not b!372006) (not b!372027) (not b!372005) (not b!372026) (not b!372028) (not b!372012) (not b_next!11599) (not b!372048) (not b!372009) (not b!372004) (not b!372032) (not b!372025) b_and!37409 (not b_next!11593) (not b!372002) b_and!37415 (not b!372024) (not start!36934))
(check-sat b_and!37405 (not b_next!11597) b_and!37407 (not b_next!11601) (not b_next!11599) b_and!37415 b_and!37411 (not b_next!11603) b_and!37413 (not b_next!11595) (not b_next!11593) b_and!37409)
(get-model)

(declare-fun d!130890 () Bool)

(assert (=> d!130890 (= (inv!5180 (tag!1035 (h!9571 rules!1920))) (= (mod (str.len (value!27257 (tag!1035 (h!9571 rules!1920)))) 2) 0))))

(assert (=> b!372002 d!130890))

(declare-fun d!130892 () Bool)

(declare-fun res!166495 () Bool)

(declare-fun e!228721 () Bool)

(assert (=> d!130892 (=> (not res!166495) (not e!228721))))

(declare-fun semiInverseModEq!308 (Int Int) Bool)

(assert (=> d!130892 (= res!166495 (semiInverseModEq!308 (toChars!1447 (transformation!805 (h!9571 rules!1920))) (toValue!1588 (transformation!805 (h!9571 rules!1920)))))))

(assert (=> d!130892 (= (inv!5183 (transformation!805 (h!9571 rules!1920))) e!228721)))

(declare-fun b!372055 () Bool)

(declare-fun equivClasses!291 (Int Int) Bool)

(assert (=> b!372055 (= e!228721 (equivClasses!291 (toChars!1447 (transformation!805 (h!9571 rules!1920))) (toValue!1588 (transformation!805 (h!9571 rules!1920)))))))

(assert (= (and d!130892 res!166495) b!372055))

(declare-fun m!551651 () Bool)

(assert (=> d!130892 m!551651))

(declare-fun m!551653 () Bool)

(assert (=> b!372055 m!551653))

(assert (=> b!372002 d!130892))

(declare-fun b!372084 () Bool)

(declare-fun res!166517 () Bool)

(declare-fun e!228737 () Bool)

(assert (=> b!372084 (=> res!166517 e!228737)))

(declare-fun tail!571 (List!4183) List!4183)

(assert (=> b!372084 (= res!166517 (not (isEmpty!2970 (tail!571 lt!161598))))))

(declare-fun b!372085 () Bool)

(declare-fun e!228739 () Bool)

(declare-fun derivativeStep!177 (Regex!1029 C!2980) Regex!1029)

(assert (=> b!372085 (= e!228739 (matchR!347 (derivativeStep!177 (regex!805 (rule!1450 (h!9572 tokens!465))) (head!1011 lt!161598)) (tail!571 lt!161598)))))

(declare-fun b!372086 () Bool)

(declare-fun res!166521 () Bool)

(declare-fun e!228736 () Bool)

(assert (=> b!372086 (=> res!166521 e!228736)))

(declare-fun e!228741 () Bool)

(assert (=> b!372086 (= res!166521 e!228741)))

(declare-fun res!166520 () Bool)

(assert (=> b!372086 (=> (not res!166520) (not e!228741))))

(declare-fun lt!161603 () Bool)

(assert (=> b!372086 (= res!166520 lt!161603)))

(declare-fun bm!23566 () Bool)

(declare-fun call!23571 () Bool)

(assert (=> bm!23566 (= call!23571 (isEmpty!2970 lt!161598))))

(declare-fun b!372087 () Bool)

(declare-fun res!166523 () Bool)

(assert (=> b!372087 (=> (not res!166523) (not e!228741))))

(assert (=> b!372087 (= res!166523 (isEmpty!2970 (tail!571 lt!161598)))))

(declare-fun b!372088 () Bool)

(assert (=> b!372088 (= e!228737 (not (= (head!1011 lt!161598) (c!73209 (regex!805 (rule!1450 (h!9572 tokens!465)))))))))

(declare-fun b!372089 () Bool)

(declare-fun nullable!211 (Regex!1029) Bool)

(assert (=> b!372089 (= e!228739 (nullable!211 (regex!805 (rule!1450 (h!9572 tokens!465)))))))

(declare-fun b!372091 () Bool)

(declare-fun e!228738 () Bool)

(declare-fun e!228742 () Bool)

(assert (=> b!372091 (= e!228738 e!228742)))

(declare-fun c!73219 () Bool)

(assert (=> b!372091 (= c!73219 ((_ is EmptyLang!1029) (regex!805 (rule!1450 (h!9572 tokens!465)))))))

(declare-fun b!372092 () Bool)

(assert (=> b!372092 (= e!228741 (= (head!1011 lt!161598) (c!73209 (regex!805 (rule!1450 (h!9572 tokens!465))))))))

(declare-fun b!372093 () Bool)

(assert (=> b!372093 (= e!228738 (= lt!161603 call!23571))))

(declare-fun b!372090 () Bool)

(declare-fun e!228740 () Bool)

(assert (=> b!372090 (= e!228736 e!228740)))

(declare-fun res!166519 () Bool)

(assert (=> b!372090 (=> (not res!166519) (not e!228740))))

(assert (=> b!372090 (= res!166519 (not lt!161603))))

(declare-fun d!130894 () Bool)

(assert (=> d!130894 e!228738))

(declare-fun c!73217 () Bool)

(assert (=> d!130894 (= c!73217 ((_ is EmptyExpr!1029) (regex!805 (rule!1450 (h!9572 tokens!465)))))))

(assert (=> d!130894 (= lt!161603 e!228739)))

(declare-fun c!73218 () Bool)

(assert (=> d!130894 (= c!73218 (isEmpty!2970 lt!161598))))

(declare-fun validRegex!286 (Regex!1029) Bool)

(assert (=> d!130894 (validRegex!286 (regex!805 (rule!1450 (h!9572 tokens!465))))))

(assert (=> d!130894 (= (matchR!347 (regex!805 (rule!1450 (h!9572 tokens!465))) lt!161598) lt!161603)))

(declare-fun b!372094 () Bool)

(assert (=> b!372094 (= e!228740 e!228737)))

(declare-fun res!166518 () Bool)

(assert (=> b!372094 (=> res!166518 e!228737)))

(assert (=> b!372094 (= res!166518 call!23571)))

(declare-fun b!372095 () Bool)

(declare-fun res!166522 () Bool)

(assert (=> b!372095 (=> (not res!166522) (not e!228741))))

(assert (=> b!372095 (= res!166522 (not call!23571))))

(declare-fun b!372096 () Bool)

(assert (=> b!372096 (= e!228742 (not lt!161603))))

(declare-fun b!372097 () Bool)

(declare-fun res!166524 () Bool)

(assert (=> b!372097 (=> res!166524 e!228736)))

(assert (=> b!372097 (= res!166524 (not ((_ is ElementMatch!1029) (regex!805 (rule!1450 (h!9572 tokens!465))))))))

(assert (=> b!372097 (= e!228742 e!228736)))

(assert (= (and d!130894 c!73218) b!372089))

(assert (= (and d!130894 (not c!73218)) b!372085))

(assert (= (and d!130894 c!73217) b!372093))

(assert (= (and d!130894 (not c!73217)) b!372091))

(assert (= (and b!372091 c!73219) b!372096))

(assert (= (and b!372091 (not c!73219)) b!372097))

(assert (= (and b!372097 (not res!166524)) b!372086))

(assert (= (and b!372086 res!166520) b!372095))

(assert (= (and b!372095 res!166522) b!372087))

(assert (= (and b!372087 res!166523) b!372092))

(assert (= (and b!372086 (not res!166521)) b!372090))

(assert (= (and b!372090 res!166519) b!372094))

(assert (= (and b!372094 (not res!166518)) b!372084))

(assert (= (and b!372084 (not res!166517)) b!372088))

(assert (= (or b!372093 b!372094 b!372095) bm!23566))

(declare-fun m!551655 () Bool)

(assert (=> b!372084 m!551655))

(assert (=> b!372084 m!551655))

(declare-fun m!551657 () Bool)

(assert (=> b!372084 m!551657))

(assert (=> b!372087 m!551655))

(assert (=> b!372087 m!551655))

(assert (=> b!372087 m!551657))

(declare-fun m!551659 () Bool)

(assert (=> b!372088 m!551659))

(declare-fun m!551661 () Bool)

(assert (=> d!130894 m!551661))

(declare-fun m!551663 () Bool)

(assert (=> d!130894 m!551663))

(assert (=> b!372092 m!551659))

(assert (=> b!372085 m!551659))

(assert (=> b!372085 m!551659))

(declare-fun m!551665 () Bool)

(assert (=> b!372085 m!551665))

(assert (=> b!372085 m!551655))

(assert (=> b!372085 m!551665))

(assert (=> b!372085 m!551655))

(declare-fun m!551667 () Bool)

(assert (=> b!372085 m!551667))

(assert (=> bm!23566 m!551661))

(declare-fun m!551669 () Bool)

(assert (=> b!372089 m!551669))

(assert (=> b!372024 d!130894))

(declare-fun d!130896 () Bool)

(declare-fun lt!161606 () Token!1354)

(declare-fun apply!971 (List!4185 Int) Token!1354)

(declare-fun list!1802 (BalanceConc!2874) List!4185)

(assert (=> d!130896 (= lt!161606 (apply!971 (list!1802 (_1!2673 lt!161594)) 0))))

(declare-fun apply!972 (Conc!1433 Int) Token!1354)

(assert (=> d!130896 (= lt!161606 (apply!972 (c!73210 (_1!2673 lt!161594)) 0))))

(declare-fun e!228745 () Bool)

(assert (=> d!130896 e!228745))

(declare-fun res!166527 () Bool)

(assert (=> d!130896 (=> (not res!166527) (not e!228745))))

(assert (=> d!130896 (= res!166527 (<= 0 0))))

(assert (=> d!130896 (= (apply!970 (_1!2673 lt!161594) 0) lt!161606)))

(declare-fun b!372100 () Bool)

(assert (=> b!372100 (= e!228745 (< 0 (size!3373 (_1!2673 lt!161594))))))

(assert (= (and d!130896 res!166527) b!372100))

(declare-fun m!551673 () Bool)

(assert (=> d!130896 m!551673))

(assert (=> d!130896 m!551673))

(declare-fun m!551675 () Bool)

(assert (=> d!130896 m!551675))

(declare-fun m!551677 () Bool)

(assert (=> d!130896 m!551677))

(assert (=> b!372100 m!551501))

(assert (=> b!372022 d!130896))

(declare-fun d!130902 () Bool)

(assert (=> d!130902 (not (matchR!347 (regex!805 (rule!1450 lt!161578)) lt!161568))))

(declare-fun lt!161609 () Unit!6616)

(declare-fun choose!2972 (Regex!1029 List!4183 C!2980) Unit!6616)

(assert (=> d!130902 (= lt!161609 (choose!2972 (regex!805 (rule!1450 lt!161578)) lt!161568 lt!161599))))

(assert (=> d!130902 (validRegex!286 (regex!805 (rule!1450 lt!161578)))))

(assert (=> d!130902 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!84 (regex!805 (rule!1450 lt!161578)) lt!161568 lt!161599) lt!161609)))

(declare-fun bs!45118 () Bool)

(assert (= bs!45118 d!130902))

(assert (=> bs!45118 m!551443))

(declare-fun m!551679 () Bool)

(assert (=> bs!45118 m!551679))

(declare-fun m!551681 () Bool)

(assert (=> bs!45118 m!551681))

(assert (=> b!372001 d!130902))

(declare-fun b!372101 () Bool)

(declare-fun res!166528 () Bool)

(declare-fun e!228747 () Bool)

(assert (=> b!372101 (=> res!166528 e!228747)))

(assert (=> b!372101 (= res!166528 (not (isEmpty!2970 (tail!571 lt!161568))))))

(declare-fun b!372102 () Bool)

(declare-fun e!228749 () Bool)

(assert (=> b!372102 (= e!228749 (matchR!347 (derivativeStep!177 (regex!805 (rule!1450 lt!161578)) (head!1011 lt!161568)) (tail!571 lt!161568)))))

(declare-fun b!372103 () Bool)

(declare-fun res!166532 () Bool)

(declare-fun e!228746 () Bool)

(assert (=> b!372103 (=> res!166532 e!228746)))

(declare-fun e!228751 () Bool)

(assert (=> b!372103 (= res!166532 e!228751)))

(declare-fun res!166531 () Bool)

(assert (=> b!372103 (=> (not res!166531) (not e!228751))))

(declare-fun lt!161610 () Bool)

(assert (=> b!372103 (= res!166531 lt!161610)))

(declare-fun bm!23567 () Bool)

(declare-fun call!23572 () Bool)

(assert (=> bm!23567 (= call!23572 (isEmpty!2970 lt!161568))))

(declare-fun b!372104 () Bool)

(declare-fun res!166534 () Bool)

(assert (=> b!372104 (=> (not res!166534) (not e!228751))))

(assert (=> b!372104 (= res!166534 (isEmpty!2970 (tail!571 lt!161568)))))

(declare-fun b!372105 () Bool)

(assert (=> b!372105 (= e!228747 (not (= (head!1011 lt!161568) (c!73209 (regex!805 (rule!1450 lt!161578))))))))

(declare-fun b!372106 () Bool)

(assert (=> b!372106 (= e!228749 (nullable!211 (regex!805 (rule!1450 lt!161578))))))

(declare-fun b!372108 () Bool)

(declare-fun e!228748 () Bool)

(declare-fun e!228752 () Bool)

(assert (=> b!372108 (= e!228748 e!228752)))

(declare-fun c!73223 () Bool)

(assert (=> b!372108 (= c!73223 ((_ is EmptyLang!1029) (regex!805 (rule!1450 lt!161578))))))

(declare-fun b!372109 () Bool)

(assert (=> b!372109 (= e!228751 (= (head!1011 lt!161568) (c!73209 (regex!805 (rule!1450 lt!161578)))))))

(declare-fun b!372110 () Bool)

(assert (=> b!372110 (= e!228748 (= lt!161610 call!23572))))

(declare-fun b!372107 () Bool)

(declare-fun e!228750 () Bool)

(assert (=> b!372107 (= e!228746 e!228750)))

(declare-fun res!166530 () Bool)

(assert (=> b!372107 (=> (not res!166530) (not e!228750))))

(assert (=> b!372107 (= res!166530 (not lt!161610))))

(declare-fun d!130904 () Bool)

(assert (=> d!130904 e!228748))

(declare-fun c!73221 () Bool)

(assert (=> d!130904 (= c!73221 ((_ is EmptyExpr!1029) (regex!805 (rule!1450 lt!161578))))))

(assert (=> d!130904 (= lt!161610 e!228749)))

(declare-fun c!73222 () Bool)

(assert (=> d!130904 (= c!73222 (isEmpty!2970 lt!161568))))

(assert (=> d!130904 (validRegex!286 (regex!805 (rule!1450 lt!161578)))))

(assert (=> d!130904 (= (matchR!347 (regex!805 (rule!1450 lt!161578)) lt!161568) lt!161610)))

(declare-fun b!372111 () Bool)

(assert (=> b!372111 (= e!228750 e!228747)))

(declare-fun res!166529 () Bool)

(assert (=> b!372111 (=> res!166529 e!228747)))

(assert (=> b!372111 (= res!166529 call!23572)))

(declare-fun b!372112 () Bool)

(declare-fun res!166533 () Bool)

(assert (=> b!372112 (=> (not res!166533) (not e!228751))))

(assert (=> b!372112 (= res!166533 (not call!23572))))

(declare-fun b!372113 () Bool)

(assert (=> b!372113 (= e!228752 (not lt!161610))))

(declare-fun b!372114 () Bool)

(declare-fun res!166535 () Bool)

(assert (=> b!372114 (=> res!166535 e!228746)))

(assert (=> b!372114 (= res!166535 (not ((_ is ElementMatch!1029) (regex!805 (rule!1450 lt!161578)))))))

(assert (=> b!372114 (= e!228752 e!228746)))

(assert (= (and d!130904 c!73222) b!372106))

(assert (= (and d!130904 (not c!73222)) b!372102))

(assert (= (and d!130904 c!73221) b!372110))

(assert (= (and d!130904 (not c!73221)) b!372108))

(assert (= (and b!372108 c!73223) b!372113))

(assert (= (and b!372108 (not c!73223)) b!372114))

(assert (= (and b!372114 (not res!166535)) b!372103))

(assert (= (and b!372103 res!166531) b!372112))

(assert (= (and b!372112 res!166533) b!372104))

(assert (= (and b!372104 res!166534) b!372109))

(assert (= (and b!372103 (not res!166532)) b!372107))

(assert (= (and b!372107 res!166530) b!372111))

(assert (= (and b!372111 (not res!166529)) b!372101))

(assert (= (and b!372101 (not res!166528)) b!372105))

(assert (= (or b!372110 b!372111 b!372112) bm!23567))

(declare-fun m!551683 () Bool)

(assert (=> b!372101 m!551683))

(assert (=> b!372101 m!551683))

(declare-fun m!551685 () Bool)

(assert (=> b!372101 m!551685))

(assert (=> b!372104 m!551683))

(assert (=> b!372104 m!551683))

(assert (=> b!372104 m!551685))

(assert (=> b!372105 m!551525))

(declare-fun m!551687 () Bool)

(assert (=> d!130904 m!551687))

(assert (=> d!130904 m!551681))

(assert (=> b!372109 m!551525))

(assert (=> b!372102 m!551525))

(assert (=> b!372102 m!551525))

(declare-fun m!551689 () Bool)

(assert (=> b!372102 m!551689))

(assert (=> b!372102 m!551683))

(assert (=> b!372102 m!551689))

(assert (=> b!372102 m!551683))

(declare-fun m!551691 () Bool)

(assert (=> b!372102 m!551691))

(assert (=> bm!23567 m!551687))

(declare-fun m!551693 () Bool)

(assert (=> b!372106 m!551693))

(assert (=> b!372001 d!130904))

(declare-fun d!130906 () Bool)

(declare-fun fromListB!417 (List!4185) BalanceConc!2874)

(assert (=> d!130906 (= (seqFromList!976 (t!57249 tokens!465)) (fromListB!417 (t!57249 tokens!465)))))

(declare-fun bs!45119 () Bool)

(assert (= bs!45119 d!130906))

(declare-fun m!551695 () Bool)

(assert (=> bs!45119 m!551695))

(assert (=> b!372023 d!130906))

(declare-fun b!372123 () Bool)

(declare-fun e!228758 () List!4183)

(assert (=> b!372123 (= e!228758 lt!161588)))

(declare-fun b!372124 () Bool)

(assert (=> b!372124 (= e!228758 (Cons!4173 (h!9570 (++!1166 lt!161598 lt!161573)) (++!1166 (t!57247 (++!1166 lt!161598 lt!161573)) lt!161588)))))

(declare-fun b!372125 () Bool)

(declare-fun res!166541 () Bool)

(declare-fun e!228757 () Bool)

(assert (=> b!372125 (=> (not res!166541) (not e!228757))))

(declare-fun lt!161613 () List!4183)

(declare-fun size!3374 (List!4183) Int)

(assert (=> b!372125 (= res!166541 (= (size!3374 lt!161613) (+ (size!3374 (++!1166 lt!161598 lt!161573)) (size!3374 lt!161588))))))

(declare-fun b!372126 () Bool)

(assert (=> b!372126 (= e!228757 (or (not (= lt!161588 Nil!4173)) (= lt!161613 (++!1166 lt!161598 lt!161573))))))

(declare-fun d!130908 () Bool)

(assert (=> d!130908 e!228757))

(declare-fun res!166540 () Bool)

(assert (=> d!130908 (=> (not res!166540) (not e!228757))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!656 (List!4183) (InoxSet C!2980))

(assert (=> d!130908 (= res!166540 (= (content!656 lt!161613) ((_ map or) (content!656 (++!1166 lt!161598 lt!161573)) (content!656 lt!161588))))))

(assert (=> d!130908 (= lt!161613 e!228758)))

(declare-fun c!73226 () Bool)

(assert (=> d!130908 (= c!73226 ((_ is Nil!4173) (++!1166 lt!161598 lt!161573)))))

(assert (=> d!130908 (= (++!1166 (++!1166 lt!161598 lt!161573) lt!161588) lt!161613)))

(assert (= (and d!130908 c!73226) b!372123))

(assert (= (and d!130908 (not c!73226)) b!372124))

(assert (= (and d!130908 res!166540) b!372125))

(assert (= (and b!372125 res!166541) b!372126))

(declare-fun m!551697 () Bool)

(assert (=> b!372124 m!551697))

(declare-fun m!551699 () Bool)

(assert (=> b!372125 m!551699))

(assert (=> b!372125 m!551623))

(declare-fun m!551701 () Bool)

(assert (=> b!372125 m!551701))

(declare-fun m!551703 () Bool)

(assert (=> b!372125 m!551703))

(declare-fun m!551705 () Bool)

(assert (=> d!130908 m!551705))

(assert (=> d!130908 m!551623))

(declare-fun m!551707 () Bool)

(assert (=> d!130908 m!551707))

(declare-fun m!551709 () Bool)

(assert (=> d!130908 m!551709))

(assert (=> b!372023 d!130908))

(declare-fun d!130910 () Bool)

(declare-fun list!1804 (Conc!1432) List!4183)

(assert (=> d!130910 (= (list!1801 (charsOf!448 separatorToken!170)) (list!1804 (c!73208 (charsOf!448 separatorToken!170))))))

(declare-fun bs!45120 () Bool)

(assert (= bs!45120 d!130910))

(declare-fun m!551711 () Bool)

(assert (=> bs!45120 m!551711))

(assert (=> b!372023 d!130910))

(declare-fun d!130912 () Bool)

(assert (=> d!130912 (= (list!1801 (printWithSeparatorTokenWhenNeededRec!364 thiss!17480 rules!1920 (seqFromList!976 (t!57249 tokens!465)) separatorToken!170 0)) (list!1804 (c!73208 (printWithSeparatorTokenWhenNeededRec!364 thiss!17480 rules!1920 (seqFromList!976 (t!57249 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!45121 () Bool)

(assert (= bs!45121 d!130912))

(declare-fun m!551713 () Bool)

(assert (=> bs!45121 m!551713))

(assert (=> b!372023 d!130912))

(declare-fun b!372127 () Bool)

(declare-fun e!228760 () List!4183)

(assert (=> b!372127 (= e!228760 lt!161588)))

(declare-fun b!372128 () Bool)

(assert (=> b!372128 (= e!228760 (Cons!4173 (h!9570 lt!161573) (++!1166 (t!57247 lt!161573) lt!161588)))))

(declare-fun b!372129 () Bool)

(declare-fun res!166543 () Bool)

(declare-fun e!228759 () Bool)

(assert (=> b!372129 (=> (not res!166543) (not e!228759))))

(declare-fun lt!161614 () List!4183)

(assert (=> b!372129 (= res!166543 (= (size!3374 lt!161614) (+ (size!3374 lt!161573) (size!3374 lt!161588))))))

(declare-fun b!372130 () Bool)

(assert (=> b!372130 (= e!228759 (or (not (= lt!161588 Nil!4173)) (= lt!161614 lt!161573)))))

(declare-fun d!130914 () Bool)

(assert (=> d!130914 e!228759))

(declare-fun res!166542 () Bool)

(assert (=> d!130914 (=> (not res!166542) (not e!228759))))

(assert (=> d!130914 (= res!166542 (= (content!656 lt!161614) ((_ map or) (content!656 lt!161573) (content!656 lt!161588))))))

(assert (=> d!130914 (= lt!161614 e!228760)))

(declare-fun c!73227 () Bool)

(assert (=> d!130914 (= c!73227 ((_ is Nil!4173) lt!161573))))

(assert (=> d!130914 (= (++!1166 lt!161573 lt!161588) lt!161614)))

(assert (= (and d!130914 c!73227) b!372127))

(assert (= (and d!130914 (not c!73227)) b!372128))

(assert (= (and d!130914 res!166542) b!372129))

(assert (= (and b!372129 res!166543) b!372130))

(declare-fun m!551715 () Bool)

(assert (=> b!372128 m!551715))

(declare-fun m!551717 () Bool)

(assert (=> b!372129 m!551717))

(declare-fun m!551719 () Bool)

(assert (=> b!372129 m!551719))

(assert (=> b!372129 m!551703))

(declare-fun m!551721 () Bool)

(assert (=> d!130914 m!551721))

(declare-fun m!551723 () Bool)

(assert (=> d!130914 m!551723))

(assert (=> d!130914 m!551709))

(assert (=> b!372023 d!130914))

(declare-fun d!130916 () Bool)

(assert (=> d!130916 (= (++!1166 (++!1166 lt!161598 lt!161573) lt!161588) (++!1166 lt!161598 (++!1166 lt!161573 lt!161588)))))

(declare-fun lt!161617 () Unit!6616)

(declare-fun choose!2974 (List!4183 List!4183 List!4183) Unit!6616)

(assert (=> d!130916 (= lt!161617 (choose!2974 lt!161598 lt!161573 lt!161588))))

(assert (=> d!130916 (= (lemmaConcatAssociativity!524 lt!161598 lt!161573 lt!161588) lt!161617)))

(declare-fun bs!45122 () Bool)

(assert (= bs!45122 d!130916))

(assert (=> bs!45122 m!551623))

(assert (=> bs!45122 m!551609))

(declare-fun m!551725 () Bool)

(assert (=> bs!45122 m!551725))

(assert (=> bs!45122 m!551609))

(declare-fun m!551727 () Bool)

(assert (=> bs!45122 m!551727))

(assert (=> bs!45122 m!551623))

(assert (=> bs!45122 m!551625))

(assert (=> b!372023 d!130916))

(declare-fun bs!45125 () Bool)

(declare-fun b!372177 () Bool)

(assert (= bs!45125 (and b!372177 b!372009)))

(declare-fun lambda!11581 () Int)

(assert (=> bs!45125 (not (= lambda!11581 lambda!11577))))

(declare-fun bs!45126 () Bool)

(assert (= bs!45126 (and b!372177 b!372033)))

(assert (=> bs!45126 (= lambda!11581 lambda!11578)))

(declare-fun b!372184 () Bool)

(declare-fun e!228796 () Bool)

(assert (=> b!372184 (= e!228796 true)))

(declare-fun b!372183 () Bool)

(declare-fun e!228795 () Bool)

(assert (=> b!372183 (= e!228795 e!228796)))

(declare-fun b!372182 () Bool)

(declare-fun e!228794 () Bool)

(assert (=> b!372182 (= e!228794 e!228795)))

(assert (=> b!372177 e!228794))

(assert (= b!372183 b!372184))

(assert (= b!372182 b!372183))

(assert (= (and b!372177 ((_ is Cons!4174) rules!1920)) b!372182))

(assert (=> b!372184 (< (dynLambda!2383 order!3505 (toValue!1588 (transformation!805 (h!9571 rules!1920)))) (dynLambda!2384 order!3507 lambda!11581))))

(assert (=> b!372184 (< (dynLambda!2385 order!3509 (toChars!1447 (transformation!805 (h!9571 rules!1920)))) (dynLambda!2384 order!3507 lambda!11581))))

(assert (=> b!372177 true))

(declare-fun bm!23581 () Bool)

(declare-fun call!23590 () List!4183)

(declare-fun e!228791 () BalanceConc!2872)

(assert (=> bm!23581 (= call!23590 (list!1801 e!228791))))

(declare-fun c!73239 () Bool)

(declare-fun c!73240 () Bool)

(assert (=> bm!23581 (= c!73239 c!73240)))

(declare-fun b!372174 () Bool)

(declare-fun e!228792 () List!4183)

(assert (=> b!372174 (= e!228792 Nil!4173)))

(declare-fun b!372175 () Bool)

(declare-fun e!228790 () List!4183)

(declare-fun call!23586 () List!4183)

(declare-fun lt!161660 () List!4183)

(assert (=> b!372175 (= e!228790 (++!1166 call!23586 lt!161660))))

(declare-fun b!372176 () Bool)

(declare-fun call!23589 () BalanceConc!2872)

(assert (=> b!372176 (= e!228791 call!23589)))

(declare-fun call!23588 () List!4183)

(declare-fun c!73241 () Bool)

(declare-fun bm!23582 () Bool)

(assert (=> bm!23582 (= call!23586 (++!1166 call!23588 (ite c!73241 lt!161660 call!23590)))))

(declare-fun bm!23583 () Bool)

(declare-fun call!23587 () BalanceConc!2872)

(assert (=> bm!23583 (= call!23587 (charsOf!448 (h!9572 (t!57249 tokens!465))))))

(declare-fun e!228793 () List!4183)

(assert (=> b!372177 (= e!228792 e!228793)))

(declare-fun lt!161662 () Unit!6616)

(assert (=> b!372177 (= lt!161662 (forallContained!358 (t!57249 tokens!465) lambda!11581 (h!9572 (t!57249 tokens!465))))))

(assert (=> b!372177 (= lt!161660 (printWithSeparatorTokenWhenNeededList!372 thiss!17480 rules!1920 (t!57249 (t!57249 tokens!465)) separatorToken!170))))

(declare-fun lt!161658 () Option!998)

(assert (=> b!372177 (= lt!161658 (maxPrefix!407 thiss!17480 rules!1920 (++!1166 (list!1801 (charsOf!448 (h!9572 (t!57249 tokens!465)))) lt!161660)))))

(assert (=> b!372177 (= c!73241 (and ((_ is Some!997) lt!161658) (= (_1!2674 (v!15120 lt!161658)) (h!9572 (t!57249 tokens!465)))))))

(declare-fun bm!23585 () Bool)

(assert (=> bm!23585 (= call!23588 (list!1801 (ite c!73241 call!23587 call!23589)))))

(declare-fun b!372178 () Bool)

(assert (=> b!372178 (= e!228791 (charsOf!448 separatorToken!170))))

(declare-fun b!372179 () Bool)

(assert (=> b!372179 (= e!228790 Nil!4173)))

(assert (=> b!372179 (= (print!416 thiss!17480 (singletonSeq!351 (h!9572 (t!57249 tokens!465)))) (printTailRec!377 thiss!17480 (singletonSeq!351 (h!9572 (t!57249 tokens!465))) 0 (BalanceConc!2873 Empty!1432)))))

(declare-fun lt!161659 () Unit!6616)

(declare-fun Unit!6622 () Unit!6616)

(assert (=> b!372179 (= lt!161659 Unit!6622)))

(declare-fun lt!161657 () Unit!6616)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!159 (LexerInterface!691 List!4184 List!4183 List!4183) Unit!6616)

(assert (=> b!372179 (= lt!161657 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!159 thiss!17480 rules!1920 call!23590 lt!161660))))

(assert (=> b!372179 false))

(declare-fun lt!161661 () Unit!6616)

(declare-fun Unit!6623 () Unit!6616)

(assert (=> b!372179 (= lt!161661 Unit!6623)))

(declare-fun b!372180 () Bool)

(assert (=> b!372180 (= c!73240 (and ((_ is Some!997) lt!161658) (not (= (_1!2674 (v!15120 lt!161658)) (h!9572 (t!57249 tokens!465))))))))

(assert (=> b!372180 (= e!228793 e!228790)))

(declare-fun b!372181 () Bool)

(assert (=> b!372181 (= e!228793 call!23586)))

(declare-fun d!130918 () Bool)

(declare-fun c!73242 () Bool)

(assert (=> d!130918 (= c!73242 ((_ is Cons!4175) (t!57249 tokens!465)))))

(assert (=> d!130918 (= (printWithSeparatorTokenWhenNeededList!372 thiss!17480 rules!1920 (t!57249 tokens!465) separatorToken!170) e!228792)))

(declare-fun bm!23584 () Bool)

(assert (=> bm!23584 (= call!23589 call!23587)))

(assert (= (and d!130918 c!73242) b!372177))

(assert (= (and d!130918 (not c!73242)) b!372174))

(assert (= (and b!372177 c!73241) b!372181))

(assert (= (and b!372177 (not c!73241)) b!372180))

(assert (= (and b!372180 c!73240) b!372175))

(assert (= (and b!372180 (not c!73240)) b!372179))

(assert (= (or b!372175 b!372179) bm!23584))

(assert (= (or b!372175 b!372179) bm!23581))

(assert (= (and bm!23581 c!73239) b!372178))

(assert (= (and bm!23581 (not c!73239)) b!372176))

(assert (= (or b!372181 bm!23584) bm!23583))

(assert (= (or b!372181 b!372175) bm!23585))

(assert (= (or b!372181 b!372175) bm!23582))

(declare-fun m!551773 () Bool)

(assert (=> b!372177 m!551773))

(declare-fun m!551775 () Bool)

(assert (=> b!372177 m!551775))

(declare-fun m!551777 () Bool)

(assert (=> b!372177 m!551777))

(declare-fun m!551779 () Bool)

(assert (=> b!372177 m!551779))

(declare-fun m!551781 () Bool)

(assert (=> b!372177 m!551781))

(assert (=> b!372177 m!551773))

(declare-fun m!551783 () Bool)

(assert (=> b!372177 m!551783))

(assert (=> b!372177 m!551781))

(assert (=> b!372177 m!551783))

(declare-fun m!551785 () Bool)

(assert (=> b!372179 m!551785))

(assert (=> b!372179 m!551785))

(declare-fun m!551787 () Bool)

(assert (=> b!372179 m!551787))

(assert (=> b!372179 m!551785))

(declare-fun m!551789 () Bool)

(assert (=> b!372179 m!551789))

(declare-fun m!551791 () Bool)

(assert (=> b!372179 m!551791))

(declare-fun m!551793 () Bool)

(assert (=> bm!23581 m!551793))

(assert (=> b!372178 m!551605))

(declare-fun m!551795 () Bool)

(assert (=> bm!23585 m!551795))

(declare-fun m!551797 () Bool)

(assert (=> b!372175 m!551797))

(declare-fun m!551799 () Bool)

(assert (=> bm!23582 m!551799))

(assert (=> bm!23583 m!551783))

(assert (=> b!372023 d!130918))

(declare-fun b!372195 () Bool)

(declare-fun e!228804 () List!4183)

(assert (=> b!372195 (= e!228804 lt!161600)))

(declare-fun b!372196 () Bool)

(assert (=> b!372196 (= e!228804 (Cons!4173 (h!9570 lt!161598) (++!1166 (t!57247 lt!161598) lt!161600)))))

(declare-fun b!372197 () Bool)

(declare-fun res!166572 () Bool)

(declare-fun e!228803 () Bool)

(assert (=> b!372197 (=> (not res!166572) (not e!228803))))

(declare-fun lt!161665 () List!4183)

(assert (=> b!372197 (= res!166572 (= (size!3374 lt!161665) (+ (size!3374 lt!161598) (size!3374 lt!161600))))))

(declare-fun b!372198 () Bool)

(assert (=> b!372198 (= e!228803 (or (not (= lt!161600 Nil!4173)) (= lt!161665 lt!161598)))))

(declare-fun d!130928 () Bool)

(assert (=> d!130928 e!228803))

(declare-fun res!166571 () Bool)

(assert (=> d!130928 (=> (not res!166571) (not e!228803))))

(assert (=> d!130928 (= res!166571 (= (content!656 lt!161665) ((_ map or) (content!656 lt!161598) (content!656 lt!161600))))))

(assert (=> d!130928 (= lt!161665 e!228804)))

(declare-fun c!73245 () Bool)

(assert (=> d!130928 (= c!73245 ((_ is Nil!4173) lt!161598))))

(assert (=> d!130928 (= (++!1166 lt!161598 lt!161600) lt!161665)))

(assert (= (and d!130928 c!73245) b!372195))

(assert (= (and d!130928 (not c!73245)) b!372196))

(assert (= (and d!130928 res!166571) b!372197))

(assert (= (and b!372197 res!166572) b!372198))

(declare-fun m!551801 () Bool)

(assert (=> b!372196 m!551801))

(declare-fun m!551803 () Bool)

(assert (=> b!372197 m!551803))

(declare-fun m!551805 () Bool)

(assert (=> b!372197 m!551805))

(declare-fun m!551807 () Bool)

(assert (=> b!372197 m!551807))

(declare-fun m!551809 () Bool)

(assert (=> d!130928 m!551809))

(declare-fun m!551811 () Bool)

(assert (=> d!130928 m!551811))

(declare-fun m!551813 () Bool)

(assert (=> d!130928 m!551813))

(assert (=> b!372023 d!130928))

(declare-fun bs!45129 () Bool)

(declare-fun d!130930 () Bool)

(assert (= bs!45129 (and d!130930 b!372009)))

(declare-fun lambda!11586 () Int)

(assert (=> bs!45129 (= lambda!11586 lambda!11577)))

(declare-fun bs!45130 () Bool)

(assert (= bs!45130 (and d!130930 b!372033)))

(assert (=> bs!45130 (not (= lambda!11586 lambda!11578))))

(declare-fun bs!45131 () Bool)

(assert (= bs!45131 (and d!130930 b!372177)))

(assert (=> bs!45131 (not (= lambda!11586 lambda!11581))))

(declare-fun bs!45132 () Bool)

(declare-fun b!372280 () Bool)

(assert (= bs!45132 (and b!372280 b!372009)))

(declare-fun lambda!11587 () Int)

(assert (=> bs!45132 (not (= lambda!11587 lambda!11577))))

(declare-fun bs!45133 () Bool)

(assert (= bs!45133 (and b!372280 b!372033)))

(assert (=> bs!45133 (= lambda!11587 lambda!11578)))

(declare-fun bs!45134 () Bool)

(assert (= bs!45134 (and b!372280 b!372177)))

(assert (=> bs!45134 (= lambda!11587 lambda!11581)))

(declare-fun bs!45135 () Bool)

(assert (= bs!45135 (and b!372280 d!130930)))

(assert (=> bs!45135 (not (= lambda!11587 lambda!11586))))

(declare-fun b!372293 () Bool)

(declare-fun e!228858 () Bool)

(assert (=> b!372293 (= e!228858 true)))

(declare-fun b!372292 () Bool)

(declare-fun e!228857 () Bool)

(assert (=> b!372292 (= e!228857 e!228858)))

(declare-fun b!372291 () Bool)

(declare-fun e!228856 () Bool)

(assert (=> b!372291 (= e!228856 e!228857)))

(assert (=> b!372280 e!228856))

(assert (= b!372292 b!372293))

(assert (= b!372291 b!372292))

(assert (= (and b!372280 ((_ is Cons!4174) rules!1920)) b!372291))

(assert (=> b!372293 (< (dynLambda!2383 order!3505 (toValue!1588 (transformation!805 (h!9571 rules!1920)))) (dynLambda!2384 order!3507 lambda!11587))))

(assert (=> b!372293 (< (dynLambda!2385 order!3509 (toChars!1447 (transformation!805 (h!9571 rules!1920)))) (dynLambda!2384 order!3507 lambda!11587))))

(assert (=> b!372280 true))

(declare-fun e!228854 () BalanceConc!2872)

(declare-fun e!228851 () BalanceConc!2872)

(assert (=> b!372280 (= e!228854 e!228851)))

(declare-fun lt!161729 () List!4185)

(assert (=> b!372280 (= lt!161729 (list!1802 (seqFromList!976 (t!57249 tokens!465))))))

(declare-fun lt!161723 () Unit!6616)

(declare-fun lemmaDropApply!251 (List!4185 Int) Unit!6616)

(assert (=> b!372280 (= lt!161723 (lemmaDropApply!251 lt!161729 0))))

(declare-fun drop!274 (List!4185 Int) List!4185)

(assert (=> b!372280 (= (head!1012 (drop!274 lt!161729 0)) (apply!971 lt!161729 0))))

(declare-fun lt!161727 () Unit!6616)

(assert (=> b!372280 (= lt!161727 lt!161723)))

(declare-fun lt!161721 () List!4185)

(assert (=> b!372280 (= lt!161721 (list!1802 (seqFromList!976 (t!57249 tokens!465))))))

(declare-fun lt!161724 () Unit!6616)

(declare-fun lemmaDropTail!243 (List!4185 Int) Unit!6616)

(assert (=> b!372280 (= lt!161724 (lemmaDropTail!243 lt!161721 0))))

(declare-fun tail!572 (List!4185) List!4185)

(assert (=> b!372280 (= (tail!572 (drop!274 lt!161721 0)) (drop!274 lt!161721 (+ 0 1)))))

(declare-fun lt!161719 () Unit!6616)

(assert (=> b!372280 (= lt!161719 lt!161724)))

(declare-fun lt!161725 () Unit!6616)

(assert (=> b!372280 (= lt!161725 (forallContained!358 (list!1802 (seqFromList!976 (t!57249 tokens!465))) lambda!11587 (apply!970 (seqFromList!976 (t!57249 tokens!465)) 0)))))

(declare-fun lt!161726 () BalanceConc!2872)

(assert (=> b!372280 (= lt!161726 (printWithSeparatorTokenWhenNeededRec!364 thiss!17480 rules!1920 (seqFromList!976 (t!57249 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun lt!161716 () Option!999)

(declare-fun ++!1167 (BalanceConc!2872 BalanceConc!2872) BalanceConc!2872)

(assert (=> b!372280 (= lt!161716 (maxPrefixZipperSequence!370 thiss!17480 rules!1920 (++!1167 (charsOf!448 (apply!970 (seqFromList!976 (t!57249 tokens!465)) 0)) lt!161726)))))

(declare-fun res!166618 () Bool)

(assert (=> b!372280 (= res!166618 ((_ is Some!998) lt!161716))))

(declare-fun e!228850 () Bool)

(assert (=> b!372280 (=> (not res!166618) (not e!228850))))

(declare-fun c!73267 () Bool)

(assert (=> b!372280 (= c!73267 e!228850)))

(declare-fun b!372281 () Bool)

(declare-fun e!228855 () BalanceConc!2872)

(declare-fun call!23604 () Token!1354)

(assert (=> b!372281 (= e!228855 (charsOf!448 call!23604))))

(declare-fun b!372282 () Bool)

(declare-fun e!228849 () BalanceConc!2872)

(assert (=> b!372282 (= e!228849 (BalanceConc!2873 Empty!1432))))

(assert (=> b!372282 (= (print!416 thiss!17480 (singletonSeq!351 call!23604)) (printTailRec!377 thiss!17480 (singletonSeq!351 call!23604) 0 (BalanceConc!2873 Empty!1432)))))

(declare-fun lt!161720 () Unit!6616)

(declare-fun Unit!6624 () Unit!6616)

(assert (=> b!372282 (= lt!161720 Unit!6624)))

(declare-fun call!23606 () BalanceConc!2872)

(declare-fun lt!161728 () Unit!6616)

(assert (=> b!372282 (= lt!161728 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!159 thiss!17480 rules!1920 (list!1801 call!23606) (list!1801 lt!161726)))))

(assert (=> b!372282 false))

(declare-fun lt!161718 () Unit!6616)

(declare-fun Unit!6625 () Unit!6616)

(assert (=> b!372282 (= lt!161718 Unit!6625)))

(declare-fun b!372283 () Bool)

(declare-fun e!228852 () Bool)

(assert (=> b!372283 (= e!228852 (<= 0 (size!3373 (seqFromList!976 (t!57249 tokens!465)))))))

(declare-fun b!372284 () Bool)

(declare-fun c!73264 () Bool)

(declare-fun e!228853 () Bool)

(assert (=> b!372284 (= c!73264 e!228853)))

(declare-fun res!166619 () Bool)

(assert (=> b!372284 (=> (not res!166619) (not e!228853))))

(assert (=> b!372284 (= res!166619 ((_ is Some!998) lt!161716))))

(assert (=> b!372284 (= e!228851 e!228849)))

(declare-fun bm!23600 () Bool)

(declare-fun call!23608 () BalanceConc!2872)

(declare-fun call!23607 () Token!1354)

(assert (=> bm!23600 (= call!23608 (charsOf!448 (ite c!73267 call!23607 (ite c!73264 separatorToken!170 call!23604))))))

(declare-fun b!372285 () Bool)

(declare-fun call!23605 () BalanceConc!2872)

(assert (=> b!372285 (= e!228851 call!23605)))

(declare-fun b!372286 () Bool)

(assert (=> b!372286 (= e!228850 (= (_1!2675 (v!15121 lt!161716)) (apply!970 (seqFromList!976 (t!57249 tokens!465)) 0)))))

(declare-fun bm!23601 () Bool)

(assert (=> bm!23601 (= call!23604 call!23607)))

(declare-fun b!372287 () Bool)

(assert (=> b!372287 (= e!228849 (++!1167 call!23605 lt!161726))))

(declare-fun bm!23602 () Bool)

(assert (=> bm!23602 (= call!23606 call!23608)))

(declare-fun b!372288 () Bool)

(assert (=> b!372288 (= e!228855 call!23608)))

(declare-fun b!372289 () Bool)

(assert (=> b!372289 (= e!228853 (not (= (_1!2675 (v!15121 lt!161716)) call!23607)))))

(declare-fun bm!23603 () Bool)

(assert (=> bm!23603 (= call!23607 (apply!970 (seqFromList!976 (t!57249 tokens!465)) 0))))

(declare-fun b!372290 () Bool)

(assert (=> b!372290 (= e!228854 (BalanceConc!2873 Empty!1432))))

(declare-fun bm!23599 () Bool)

(declare-fun c!73265 () Bool)

(assert (=> bm!23599 (= c!73265 c!73267)))

(assert (=> bm!23599 (= call!23605 (++!1167 e!228855 (ite c!73267 lt!161726 call!23606)))))

(declare-fun lt!161722 () BalanceConc!2872)

(declare-fun dropList!211 (BalanceConc!2874 Int) List!4185)

(assert (=> d!130930 (= (list!1801 lt!161722) (printWithSeparatorTokenWhenNeededList!372 thiss!17480 rules!1920 (dropList!211 (seqFromList!976 (t!57249 tokens!465)) 0) separatorToken!170))))

(assert (=> d!130930 (= lt!161722 e!228854)))

(declare-fun c!73266 () Bool)

(assert (=> d!130930 (= c!73266 (>= 0 (size!3373 (seqFromList!976 (t!57249 tokens!465)))))))

(declare-fun lt!161717 () Unit!6616)

(declare-fun lemmaContentSubsetPreservesForall!155 (List!4185 List!4185 Int) Unit!6616)

(assert (=> d!130930 (= lt!161717 (lemmaContentSubsetPreservesForall!155 (list!1802 (seqFromList!976 (t!57249 tokens!465))) (dropList!211 (seqFromList!976 (t!57249 tokens!465)) 0) lambda!11586))))

(assert (=> d!130930 e!228852))

(declare-fun res!166620 () Bool)

(assert (=> d!130930 (=> (not res!166620) (not e!228852))))

(assert (=> d!130930 (= res!166620 (>= 0 0))))

(assert (=> d!130930 (= (printWithSeparatorTokenWhenNeededRec!364 thiss!17480 rules!1920 (seqFromList!976 (t!57249 tokens!465)) separatorToken!170 0) lt!161722)))

(assert (= (and d!130930 res!166620) b!372283))

(assert (= (and d!130930 c!73266) b!372290))

(assert (= (and d!130930 (not c!73266)) b!372280))

(assert (= (and b!372280 res!166618) b!372286))

(assert (= (and b!372280 c!73267) b!372285))

(assert (= (and b!372280 (not c!73267)) b!372284))

(assert (= (and b!372284 res!166619) b!372289))

(assert (= (and b!372284 c!73264) b!372287))

(assert (= (and b!372284 (not c!73264)) b!372282))

(assert (= (or b!372287 b!372282) bm!23601))

(assert (= (or b!372287 b!372282) bm!23602))

(assert (= (or b!372285 b!372289 bm!23601) bm!23603))

(assert (= (or b!372285 bm!23602) bm!23600))

(assert (= (or b!372285 b!372287) bm!23599))

(assert (= (and bm!23599 c!73265) b!372288))

(assert (= (and bm!23599 (not c!73265)) b!372281))

(assert (=> bm!23603 m!551603))

(declare-fun m!551895 () Bool)

(assert (=> bm!23603 m!551895))

(declare-fun m!551897 () Bool)

(assert (=> bm!23600 m!551897))

(assert (=> d!130930 m!551603))

(declare-fun m!551899 () Bool)

(assert (=> d!130930 m!551899))

(assert (=> d!130930 m!551603))

(declare-fun m!551901 () Bool)

(assert (=> d!130930 m!551901))

(declare-fun m!551903 () Bool)

(assert (=> d!130930 m!551903))

(declare-fun m!551905 () Bool)

(assert (=> d!130930 m!551905))

(declare-fun m!551907 () Bool)

(assert (=> d!130930 m!551907))

(assert (=> d!130930 m!551899))

(assert (=> d!130930 m!551905))

(declare-fun m!551909 () Bool)

(assert (=> d!130930 m!551909))

(assert (=> d!130930 m!551603))

(assert (=> d!130930 m!551905))

(assert (=> b!372283 m!551603))

(assert (=> b!372283 m!551901))

(declare-fun m!551911 () Bool)

(assert (=> b!372281 m!551911))

(declare-fun m!551913 () Bool)

(assert (=> b!372287 m!551913))

(declare-fun m!551915 () Bool)

(assert (=> b!372282 m!551915))

(declare-fun m!551917 () Bool)

(assert (=> b!372282 m!551917))

(declare-fun m!551919 () Bool)

(assert (=> b!372282 m!551919))

(assert (=> b!372282 m!551917))

(assert (=> b!372282 m!551915))

(declare-fun m!551921 () Bool)

(assert (=> b!372282 m!551921))

(assert (=> b!372282 m!551919))

(declare-fun m!551923 () Bool)

(assert (=> b!372282 m!551923))

(assert (=> b!372282 m!551919))

(declare-fun m!551925 () Bool)

(assert (=> b!372282 m!551925))

(declare-fun m!551927 () Bool)

(assert (=> bm!23599 m!551927))

(assert (=> b!372280 m!551603))

(declare-fun m!551929 () Bool)

(assert (=> b!372280 m!551929))

(declare-fun m!551931 () Bool)

(assert (=> b!372280 m!551931))

(declare-fun m!551933 () Bool)

(assert (=> b!372280 m!551933))

(assert (=> b!372280 m!551931))

(declare-fun m!551935 () Bool)

(assert (=> b!372280 m!551935))

(declare-fun m!551937 () Bool)

(assert (=> b!372280 m!551937))

(assert (=> b!372280 m!551895))

(assert (=> b!372280 m!551935))

(declare-fun m!551939 () Bool)

(assert (=> b!372280 m!551939))

(declare-fun m!551941 () Bool)

(assert (=> b!372280 m!551941))

(declare-fun m!551943 () Bool)

(assert (=> b!372280 m!551943))

(declare-fun m!551945 () Bool)

(assert (=> b!372280 m!551945))

(declare-fun m!551947 () Bool)

(assert (=> b!372280 m!551947))

(assert (=> b!372280 m!551603))

(assert (=> b!372280 m!551899))

(assert (=> b!372280 m!551947))

(declare-fun m!551949 () Bool)

(assert (=> b!372280 m!551949))

(assert (=> b!372280 m!551937))

(declare-fun m!551951 () Bool)

(assert (=> b!372280 m!551951))

(assert (=> b!372280 m!551603))

(assert (=> b!372280 m!551895))

(assert (=> b!372280 m!551899))

(assert (=> b!372280 m!551895))

(declare-fun m!551953 () Bool)

(assert (=> b!372280 m!551953))

(assert (=> b!372286 m!551603))

(assert (=> b!372286 m!551895))

(assert (=> b!372023 d!130930))

(declare-fun d!130948 () Bool)

(declare-fun lt!161732 () BalanceConc!2872)

(assert (=> d!130948 (= (list!1801 lt!161732) (originalCharacters!848 separatorToken!170))))

(declare-fun dynLambda!2387 (Int TokenValue!827) BalanceConc!2872)

(assert (=> d!130948 (= lt!161732 (dynLambda!2387 (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))) (value!27258 separatorToken!170)))))

(assert (=> d!130948 (= (charsOf!448 separatorToken!170) lt!161732)))

(declare-fun b_lambda!14585 () Bool)

(assert (=> (not b_lambda!14585) (not d!130948)))

(declare-fun t!57258 () Bool)

(declare-fun tb!32721 () Bool)

(assert (=> (and b!372019 (= (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170)))) t!57258) tb!32721))

(declare-fun b!372298 () Bool)

(declare-fun e!228861 () Bool)

(declare-fun tp!116846 () Bool)

(declare-fun inv!5185 (Conc!1432) Bool)

(assert (=> b!372298 (= e!228861 (and (inv!5185 (c!73208 (dynLambda!2387 (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))) (value!27258 separatorToken!170)))) tp!116846))))

(declare-fun result!36912 () Bool)

(declare-fun inv!5186 (BalanceConc!2872) Bool)

(assert (=> tb!32721 (= result!36912 (and (inv!5186 (dynLambda!2387 (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))) (value!27258 separatorToken!170))) e!228861))))

(assert (= tb!32721 b!372298))

(declare-fun m!551955 () Bool)

(assert (=> b!372298 m!551955))

(declare-fun m!551957 () Bool)

(assert (=> tb!32721 m!551957))

(assert (=> d!130948 t!57258))

(declare-fun b_and!37417 () Bool)

(assert (= b_and!37407 (and (=> t!57258 result!36912) b_and!37417)))

(declare-fun tb!32723 () Bool)

(declare-fun t!57260 () Bool)

(assert (=> (and b!372031 (= (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170)))) t!57260) tb!32723))

(declare-fun result!36916 () Bool)

(assert (= result!36916 result!36912))

(assert (=> d!130948 t!57260))

(declare-fun b_and!37419 () Bool)

(assert (= b_and!37411 (and (=> t!57260 result!36916) b_and!37419)))

(declare-fun t!57262 () Bool)

(declare-fun tb!32725 () Bool)

(assert (=> (and b!372038 (= (toChars!1447 (transformation!805 (h!9571 rules!1920))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170)))) t!57262) tb!32725))

(declare-fun result!36918 () Bool)

(assert (= result!36918 result!36912))

(assert (=> d!130948 t!57262))

(declare-fun b_and!37421 () Bool)

(assert (= b_and!37415 (and (=> t!57262 result!36918) b_and!37421)))

(declare-fun m!551959 () Bool)

(assert (=> d!130948 m!551959))

(declare-fun m!551961 () Bool)

(assert (=> d!130948 m!551961))

(assert (=> b!372023 d!130948))

(declare-fun d!130950 () Bool)

(assert (=> d!130950 (= (list!1801 (charsOf!448 (h!9572 tokens!465))) (list!1804 (c!73208 (charsOf!448 (h!9572 tokens!465)))))))

(declare-fun bs!45136 () Bool)

(assert (= bs!45136 d!130950))

(declare-fun m!551963 () Bool)

(assert (=> bs!45136 m!551963))

(assert (=> b!372023 d!130950))

(declare-fun d!130952 () Bool)

(declare-fun lt!161733 () BalanceConc!2872)

(assert (=> d!130952 (= (list!1801 lt!161733) (originalCharacters!848 (h!9572 tokens!465)))))

(assert (=> d!130952 (= lt!161733 (dynLambda!2387 (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))) (value!27258 (h!9572 tokens!465))))))

(assert (=> d!130952 (= (charsOf!448 (h!9572 tokens!465)) lt!161733)))

(declare-fun b_lambda!14587 () Bool)

(assert (=> (not b_lambda!14587) (not d!130952)))

(declare-fun t!57264 () Bool)

(declare-fun tb!32727 () Bool)

(assert (=> (and b!372019 (= (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465))))) t!57264) tb!32727))

(declare-fun b!372299 () Bool)

(declare-fun e!228862 () Bool)

(declare-fun tp!116847 () Bool)

(assert (=> b!372299 (= e!228862 (and (inv!5185 (c!73208 (dynLambda!2387 (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))) (value!27258 (h!9572 tokens!465))))) tp!116847))))

(declare-fun result!36920 () Bool)

(assert (=> tb!32727 (= result!36920 (and (inv!5186 (dynLambda!2387 (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))) (value!27258 (h!9572 tokens!465)))) e!228862))))

(assert (= tb!32727 b!372299))

(declare-fun m!551965 () Bool)

(assert (=> b!372299 m!551965))

(declare-fun m!551967 () Bool)

(assert (=> tb!32727 m!551967))

(assert (=> d!130952 t!57264))

(declare-fun b_and!37423 () Bool)

(assert (= b_and!37417 (and (=> t!57264 result!36920) b_and!37423)))

(declare-fun t!57266 () Bool)

(declare-fun tb!32729 () Bool)

(assert (=> (and b!372031 (= (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465))))) t!57266) tb!32729))

(declare-fun result!36922 () Bool)

(assert (= result!36922 result!36920))

(assert (=> d!130952 t!57266))

(declare-fun b_and!37425 () Bool)

(assert (= b_and!37419 (and (=> t!57266 result!36922) b_and!37425)))

(declare-fun tb!32731 () Bool)

(declare-fun t!57268 () Bool)

(assert (=> (and b!372038 (= (toChars!1447 (transformation!805 (h!9571 rules!1920))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465))))) t!57268) tb!32731))

(declare-fun result!36924 () Bool)

(assert (= result!36924 result!36920))

(assert (=> d!130952 t!57268))

(declare-fun b_and!37427 () Bool)

(assert (= b_and!37421 (and (=> t!57268 result!36924) b_and!37427)))

(declare-fun m!551969 () Bool)

(assert (=> d!130952 m!551969))

(declare-fun m!551971 () Bool)

(assert (=> d!130952 m!551971))

(assert (=> b!372023 d!130952))

(declare-fun b!372300 () Bool)

(declare-fun e!228864 () List!4183)

(assert (=> b!372300 (= e!228864 lt!161573)))

(declare-fun b!372301 () Bool)

(assert (=> b!372301 (= e!228864 (Cons!4173 (h!9570 lt!161598) (++!1166 (t!57247 lt!161598) lt!161573)))))

(declare-fun b!372302 () Bool)

(declare-fun res!166622 () Bool)

(declare-fun e!228863 () Bool)

(assert (=> b!372302 (=> (not res!166622) (not e!228863))))

(declare-fun lt!161734 () List!4183)

(assert (=> b!372302 (= res!166622 (= (size!3374 lt!161734) (+ (size!3374 lt!161598) (size!3374 lt!161573))))))

(declare-fun b!372303 () Bool)

(assert (=> b!372303 (= e!228863 (or (not (= lt!161573 Nil!4173)) (= lt!161734 lt!161598)))))

(declare-fun d!130954 () Bool)

(assert (=> d!130954 e!228863))

(declare-fun res!166621 () Bool)

(assert (=> d!130954 (=> (not res!166621) (not e!228863))))

(assert (=> d!130954 (= res!166621 (= (content!656 lt!161734) ((_ map or) (content!656 lt!161598) (content!656 lt!161573))))))

(assert (=> d!130954 (= lt!161734 e!228864)))

(declare-fun c!73268 () Bool)

(assert (=> d!130954 (= c!73268 ((_ is Nil!4173) lt!161598))))

(assert (=> d!130954 (= (++!1166 lt!161598 lt!161573) lt!161734)))

(assert (= (and d!130954 c!73268) b!372300))

(assert (= (and d!130954 (not c!73268)) b!372301))

(assert (= (and d!130954 res!166621) b!372302))

(assert (= (and b!372302 res!166622) b!372303))

(declare-fun m!551973 () Bool)

(assert (=> b!372301 m!551973))

(declare-fun m!551975 () Bool)

(assert (=> b!372302 m!551975))

(assert (=> b!372302 m!551805))

(assert (=> b!372302 m!551719))

(declare-fun m!551977 () Bool)

(assert (=> d!130954 m!551977))

(assert (=> d!130954 m!551811))

(assert (=> d!130954 m!551723))

(assert (=> b!372023 d!130954))

(declare-fun d!130956 () Bool)

(declare-fun res!166627 () Bool)

(declare-fun e!228869 () Bool)

(assert (=> d!130956 (=> res!166627 e!228869)))

(assert (=> d!130956 (= res!166627 (not ((_ is Cons!4174) rules!1920)))))

(assert (=> d!130956 (= (sepAndNonSepRulesDisjointChars!394 rules!1920 rules!1920) e!228869)))

(declare-fun b!372308 () Bool)

(declare-fun e!228870 () Bool)

(assert (=> b!372308 (= e!228869 e!228870)))

(declare-fun res!166628 () Bool)

(assert (=> b!372308 (=> (not res!166628) (not e!228870))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!166 (Rule!1410 List!4184) Bool)

(assert (=> b!372308 (= res!166628 (ruleDisjointCharsFromAllFromOtherType!166 (h!9571 rules!1920) rules!1920))))

(declare-fun b!372309 () Bool)

(assert (=> b!372309 (= e!228870 (sepAndNonSepRulesDisjointChars!394 rules!1920 (t!57248 rules!1920)))))

(assert (= (and d!130956 (not res!166627)) b!372308))

(assert (= (and b!372308 res!166628) b!372309))

(declare-fun m!551979 () Bool)

(assert (=> b!372308 m!551979))

(declare-fun m!551981 () Bool)

(assert (=> b!372309 m!551981))

(assert (=> b!372026 d!130956))

(declare-fun d!130958 () Bool)

(assert (=> d!130958 (= (inv!5180 (tag!1035 (rule!1450 (h!9572 tokens!465)))) (= (mod (str.len (value!27257 (tag!1035 (rule!1450 (h!9572 tokens!465))))) 2) 0))))

(assert (=> b!372005 d!130958))

(declare-fun d!130960 () Bool)

(declare-fun res!166629 () Bool)

(declare-fun e!228871 () Bool)

(assert (=> d!130960 (=> (not res!166629) (not e!228871))))

(assert (=> d!130960 (= res!166629 (semiInverseModEq!308 (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))) (toValue!1588 (transformation!805 (rule!1450 (h!9572 tokens!465))))))))

(assert (=> d!130960 (= (inv!5183 (transformation!805 (rule!1450 (h!9572 tokens!465)))) e!228871)))

(declare-fun b!372310 () Bool)

(assert (=> b!372310 (= e!228871 (equivClasses!291 (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))) (toValue!1588 (transformation!805 (rule!1450 (h!9572 tokens!465))))))))

(assert (= (and d!130960 res!166629) b!372310))

(declare-fun m!551983 () Bool)

(assert (=> d!130960 m!551983))

(declare-fun m!551985 () Bool)

(assert (=> b!372310 m!551985))

(assert (=> b!372005 d!130960))

(declare-fun d!130962 () Bool)

(assert (=> d!130962 (= (inv!5180 (tag!1035 (rule!1450 separatorToken!170))) (= (mod (str.len (value!27257 (tag!1035 (rule!1450 separatorToken!170)))) 2) 0))))

(assert (=> b!372027 d!130962))

(declare-fun d!130964 () Bool)

(declare-fun res!166630 () Bool)

(declare-fun e!228872 () Bool)

(assert (=> d!130964 (=> (not res!166630) (not e!228872))))

(assert (=> d!130964 (= res!166630 (semiInverseModEq!308 (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))) (toValue!1588 (transformation!805 (rule!1450 separatorToken!170)))))))

(assert (=> d!130964 (= (inv!5183 (transformation!805 (rule!1450 separatorToken!170))) e!228872)))

(declare-fun b!372311 () Bool)

(assert (=> b!372311 (= e!228872 (equivClasses!291 (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))) (toValue!1588 (transformation!805 (rule!1450 separatorToken!170)))))))

(assert (= (and d!130964 res!166630) b!372311))

(declare-fun m!551987 () Bool)

(assert (=> d!130964 m!551987))

(declare-fun m!551989 () Bool)

(assert (=> b!372311 m!551989))

(assert (=> b!372027 d!130964))

(declare-fun d!130966 () Bool)

(assert (=> d!130966 (= (list!1801 (printWithSeparatorTokenWhenNeededRec!364 thiss!17480 rules!1920 lt!161597 separatorToken!170 0)) (list!1804 (c!73208 (printWithSeparatorTokenWhenNeededRec!364 thiss!17480 rules!1920 lt!161597 separatorToken!170 0))))))

(declare-fun bs!45137 () Bool)

(assert (= bs!45137 d!130966))

(declare-fun m!551991 () Bool)

(assert (=> bs!45137 m!551991))

(assert (=> b!372025 d!130966))

(declare-fun bs!45138 () Bool)

(declare-fun d!130968 () Bool)

(assert (= bs!45138 (and d!130968 b!372177)))

(declare-fun lambda!11588 () Int)

(assert (=> bs!45138 (not (= lambda!11588 lambda!11581))))

(declare-fun bs!45139 () Bool)

(assert (= bs!45139 (and d!130968 b!372033)))

(assert (=> bs!45139 (not (= lambda!11588 lambda!11578))))

(declare-fun bs!45140 () Bool)

(assert (= bs!45140 (and d!130968 b!372009)))

(assert (=> bs!45140 (= lambda!11588 lambda!11577)))

(declare-fun bs!45141 () Bool)

(assert (= bs!45141 (and d!130968 b!372280)))

(assert (=> bs!45141 (not (= lambda!11588 lambda!11587))))

(declare-fun bs!45142 () Bool)

(assert (= bs!45142 (and d!130968 d!130930)))

(assert (=> bs!45142 (= lambda!11588 lambda!11586)))

(declare-fun bs!45143 () Bool)

(declare-fun b!372312 () Bool)

(assert (= bs!45143 (and b!372312 b!372177)))

(declare-fun lambda!11589 () Int)

(assert (=> bs!45143 (= lambda!11589 lambda!11581)))

(declare-fun bs!45144 () Bool)

(assert (= bs!45144 (and b!372312 b!372033)))

(assert (=> bs!45144 (= lambda!11589 lambda!11578)))

(declare-fun bs!45145 () Bool)

(assert (= bs!45145 (and b!372312 d!130968)))

(assert (=> bs!45145 (not (= lambda!11589 lambda!11588))))

(declare-fun bs!45146 () Bool)

(assert (= bs!45146 (and b!372312 b!372009)))

(assert (=> bs!45146 (not (= lambda!11589 lambda!11577))))

(declare-fun bs!45147 () Bool)

(assert (= bs!45147 (and b!372312 b!372280)))

(assert (=> bs!45147 (= lambda!11589 lambda!11587)))

(declare-fun bs!45148 () Bool)

(assert (= bs!45148 (and b!372312 d!130930)))

(assert (=> bs!45148 (not (= lambda!11589 lambda!11586))))

(declare-fun b!372325 () Bool)

(declare-fun e!228882 () Bool)

(assert (=> b!372325 (= e!228882 true)))

(declare-fun b!372324 () Bool)

(declare-fun e!228881 () Bool)

(assert (=> b!372324 (= e!228881 e!228882)))

(declare-fun b!372323 () Bool)

(declare-fun e!228880 () Bool)

(assert (=> b!372323 (= e!228880 e!228881)))

(assert (=> b!372312 e!228880))

(assert (= b!372324 b!372325))

(assert (= b!372323 b!372324))

(assert (= (and b!372312 ((_ is Cons!4174) rules!1920)) b!372323))

(assert (=> b!372325 (< (dynLambda!2383 order!3505 (toValue!1588 (transformation!805 (h!9571 rules!1920)))) (dynLambda!2384 order!3507 lambda!11589))))

(assert (=> b!372325 (< (dynLambda!2385 order!3509 (toChars!1447 (transformation!805 (h!9571 rules!1920)))) (dynLambda!2384 order!3507 lambda!11589))))

(assert (=> b!372312 true))

(declare-fun e!228878 () BalanceConc!2872)

(declare-fun e!228875 () BalanceConc!2872)

(assert (=> b!372312 (= e!228878 e!228875)))

(declare-fun lt!161748 () List!4185)

(assert (=> b!372312 (= lt!161748 (list!1802 lt!161597))))

(declare-fun lt!161742 () Unit!6616)

(assert (=> b!372312 (= lt!161742 (lemmaDropApply!251 lt!161748 0))))

(assert (=> b!372312 (= (head!1012 (drop!274 lt!161748 0)) (apply!971 lt!161748 0))))

(declare-fun lt!161746 () Unit!6616)

(assert (=> b!372312 (= lt!161746 lt!161742)))

(declare-fun lt!161740 () List!4185)

(assert (=> b!372312 (= lt!161740 (list!1802 lt!161597))))

(declare-fun lt!161743 () Unit!6616)

(assert (=> b!372312 (= lt!161743 (lemmaDropTail!243 lt!161740 0))))

(assert (=> b!372312 (= (tail!572 (drop!274 lt!161740 0)) (drop!274 lt!161740 (+ 0 1)))))

(declare-fun lt!161738 () Unit!6616)

(assert (=> b!372312 (= lt!161738 lt!161743)))

(declare-fun lt!161744 () Unit!6616)

(assert (=> b!372312 (= lt!161744 (forallContained!358 (list!1802 lt!161597) lambda!11589 (apply!970 lt!161597 0)))))

(declare-fun lt!161745 () BalanceConc!2872)

(assert (=> b!372312 (= lt!161745 (printWithSeparatorTokenWhenNeededRec!364 thiss!17480 rules!1920 lt!161597 separatorToken!170 (+ 0 1)))))

(declare-fun lt!161735 () Option!999)

(assert (=> b!372312 (= lt!161735 (maxPrefixZipperSequence!370 thiss!17480 rules!1920 (++!1167 (charsOf!448 (apply!970 lt!161597 0)) lt!161745)))))

(declare-fun res!166631 () Bool)

(assert (=> b!372312 (= res!166631 ((_ is Some!998) lt!161735))))

(declare-fun e!228874 () Bool)

(assert (=> b!372312 (=> (not res!166631) (not e!228874))))

(declare-fun c!73272 () Bool)

(assert (=> b!372312 (= c!73272 e!228874)))

(declare-fun b!372313 () Bool)

(declare-fun e!228879 () BalanceConc!2872)

(declare-fun call!23609 () Token!1354)

(assert (=> b!372313 (= e!228879 (charsOf!448 call!23609))))

(declare-fun b!372314 () Bool)

(declare-fun e!228873 () BalanceConc!2872)

(assert (=> b!372314 (= e!228873 (BalanceConc!2873 Empty!1432))))

(assert (=> b!372314 (= (print!416 thiss!17480 (singletonSeq!351 call!23609)) (printTailRec!377 thiss!17480 (singletonSeq!351 call!23609) 0 (BalanceConc!2873 Empty!1432)))))

(declare-fun lt!161739 () Unit!6616)

(declare-fun Unit!6626 () Unit!6616)

(assert (=> b!372314 (= lt!161739 Unit!6626)))

(declare-fun call!23611 () BalanceConc!2872)

(declare-fun lt!161747 () Unit!6616)

(assert (=> b!372314 (= lt!161747 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!159 thiss!17480 rules!1920 (list!1801 call!23611) (list!1801 lt!161745)))))

(assert (=> b!372314 false))

(declare-fun lt!161737 () Unit!6616)

(declare-fun Unit!6627 () Unit!6616)

(assert (=> b!372314 (= lt!161737 Unit!6627)))

(declare-fun b!372315 () Bool)

(declare-fun e!228876 () Bool)

(assert (=> b!372315 (= e!228876 (<= 0 (size!3373 lt!161597)))))

(declare-fun b!372316 () Bool)

(declare-fun c!73269 () Bool)

(declare-fun e!228877 () Bool)

(assert (=> b!372316 (= c!73269 e!228877)))

(declare-fun res!166632 () Bool)

(assert (=> b!372316 (=> (not res!166632) (not e!228877))))

(assert (=> b!372316 (= res!166632 ((_ is Some!998) lt!161735))))

(assert (=> b!372316 (= e!228875 e!228873)))

(declare-fun call!23613 () BalanceConc!2872)

(declare-fun call!23612 () Token!1354)

(declare-fun bm!23605 () Bool)

(assert (=> bm!23605 (= call!23613 (charsOf!448 (ite c!73272 call!23612 (ite c!73269 separatorToken!170 call!23609))))))

(declare-fun b!372317 () Bool)

(declare-fun call!23610 () BalanceConc!2872)

(assert (=> b!372317 (= e!228875 call!23610)))

(declare-fun b!372318 () Bool)

(assert (=> b!372318 (= e!228874 (= (_1!2675 (v!15121 lt!161735)) (apply!970 lt!161597 0)))))

(declare-fun bm!23606 () Bool)

(assert (=> bm!23606 (= call!23609 call!23612)))

(declare-fun b!372319 () Bool)

(assert (=> b!372319 (= e!228873 (++!1167 call!23610 lt!161745))))

(declare-fun bm!23607 () Bool)

(assert (=> bm!23607 (= call!23611 call!23613)))

(declare-fun b!372320 () Bool)

(assert (=> b!372320 (= e!228879 call!23613)))

(declare-fun b!372321 () Bool)

(assert (=> b!372321 (= e!228877 (not (= (_1!2675 (v!15121 lt!161735)) call!23612)))))

(declare-fun bm!23608 () Bool)

(assert (=> bm!23608 (= call!23612 (apply!970 lt!161597 0))))

(declare-fun b!372322 () Bool)

(assert (=> b!372322 (= e!228878 (BalanceConc!2873 Empty!1432))))

(declare-fun bm!23604 () Bool)

(declare-fun c!73270 () Bool)

(assert (=> bm!23604 (= c!73270 c!73272)))

(assert (=> bm!23604 (= call!23610 (++!1167 e!228879 (ite c!73272 lt!161745 call!23611)))))

(declare-fun lt!161741 () BalanceConc!2872)

(assert (=> d!130968 (= (list!1801 lt!161741) (printWithSeparatorTokenWhenNeededList!372 thiss!17480 rules!1920 (dropList!211 lt!161597 0) separatorToken!170))))

(assert (=> d!130968 (= lt!161741 e!228878)))

(declare-fun c!73271 () Bool)

(assert (=> d!130968 (= c!73271 (>= 0 (size!3373 lt!161597)))))

(declare-fun lt!161736 () Unit!6616)

(assert (=> d!130968 (= lt!161736 (lemmaContentSubsetPreservesForall!155 (list!1802 lt!161597) (dropList!211 lt!161597 0) lambda!11588))))

(assert (=> d!130968 e!228876))

(declare-fun res!166633 () Bool)

(assert (=> d!130968 (=> (not res!166633) (not e!228876))))

(assert (=> d!130968 (= res!166633 (>= 0 0))))

(assert (=> d!130968 (= (printWithSeparatorTokenWhenNeededRec!364 thiss!17480 rules!1920 lt!161597 separatorToken!170 0) lt!161741)))

(assert (= (and d!130968 res!166633) b!372315))

(assert (= (and d!130968 c!73271) b!372322))

(assert (= (and d!130968 (not c!73271)) b!372312))

(assert (= (and b!372312 res!166631) b!372318))

(assert (= (and b!372312 c!73272) b!372317))

(assert (= (and b!372312 (not c!73272)) b!372316))

(assert (= (and b!372316 res!166632) b!372321))

(assert (= (and b!372316 c!73269) b!372319))

(assert (= (and b!372316 (not c!73269)) b!372314))

(assert (= (or b!372319 b!372314) bm!23606))

(assert (= (or b!372319 b!372314) bm!23607))

(assert (= (or b!372317 b!372321 bm!23606) bm!23608))

(assert (= (or b!372317 bm!23607) bm!23605))

(assert (= (or b!372317 b!372319) bm!23604))

(assert (= (and bm!23604 c!73270) b!372320))

(assert (= (and bm!23604 (not c!73270)) b!372313))

(declare-fun m!551993 () Bool)

(assert (=> bm!23608 m!551993))

(declare-fun m!551995 () Bool)

(assert (=> bm!23605 m!551995))

(declare-fun m!551997 () Bool)

(assert (=> d!130968 m!551997))

(declare-fun m!551999 () Bool)

(assert (=> d!130968 m!551999))

(declare-fun m!552001 () Bool)

(assert (=> d!130968 m!552001))

(declare-fun m!552003 () Bool)

(assert (=> d!130968 m!552003))

(declare-fun m!552005 () Bool)

(assert (=> d!130968 m!552005))

(assert (=> d!130968 m!551997))

(assert (=> d!130968 m!552003))

(declare-fun m!552007 () Bool)

(assert (=> d!130968 m!552007))

(assert (=> d!130968 m!552003))

(assert (=> b!372315 m!551999))

(declare-fun m!552009 () Bool)

(assert (=> b!372313 m!552009))

(declare-fun m!552011 () Bool)

(assert (=> b!372319 m!552011))

(declare-fun m!552013 () Bool)

(assert (=> b!372314 m!552013))

(declare-fun m!552015 () Bool)

(assert (=> b!372314 m!552015))

(declare-fun m!552017 () Bool)

(assert (=> b!372314 m!552017))

(assert (=> b!372314 m!552015))

(assert (=> b!372314 m!552013))

(declare-fun m!552019 () Bool)

(assert (=> b!372314 m!552019))

(assert (=> b!372314 m!552017))

(declare-fun m!552021 () Bool)

(assert (=> b!372314 m!552021))

(assert (=> b!372314 m!552017))

(declare-fun m!552023 () Bool)

(assert (=> b!372314 m!552023))

(declare-fun m!552025 () Bool)

(assert (=> bm!23604 m!552025))

(declare-fun m!552027 () Bool)

(assert (=> b!372312 m!552027))

(declare-fun m!552029 () Bool)

(assert (=> b!372312 m!552029))

(declare-fun m!552031 () Bool)

(assert (=> b!372312 m!552031))

(assert (=> b!372312 m!552029))

(declare-fun m!552033 () Bool)

(assert (=> b!372312 m!552033))

(declare-fun m!552035 () Bool)

(assert (=> b!372312 m!552035))

(assert (=> b!372312 m!551993))

(assert (=> b!372312 m!552033))

(declare-fun m!552037 () Bool)

(assert (=> b!372312 m!552037))

(declare-fun m!552039 () Bool)

(assert (=> b!372312 m!552039))

(declare-fun m!552041 () Bool)

(assert (=> b!372312 m!552041))

(declare-fun m!552043 () Bool)

(assert (=> b!372312 m!552043))

(declare-fun m!552045 () Bool)

(assert (=> b!372312 m!552045))

(assert (=> b!372312 m!551997))

(assert (=> b!372312 m!552045))

(declare-fun m!552047 () Bool)

(assert (=> b!372312 m!552047))

(assert (=> b!372312 m!552035))

(declare-fun m!552049 () Bool)

(assert (=> b!372312 m!552049))

(assert (=> b!372312 m!551993))

(assert (=> b!372312 m!551997))

(assert (=> b!372312 m!551993))

(declare-fun m!552051 () Bool)

(assert (=> b!372312 m!552051))

(assert (=> b!372318 m!551993))

(assert (=> b!372025 d!130968))

(declare-fun bs!45149 () Bool)

(declare-fun b!372329 () Bool)

(assert (= bs!45149 (and b!372329 b!372177)))

(declare-fun lambda!11590 () Int)

(assert (=> bs!45149 (= lambda!11590 lambda!11581)))

(declare-fun bs!45150 () Bool)

(assert (= bs!45150 (and b!372329 b!372033)))

(assert (=> bs!45150 (= lambda!11590 lambda!11578)))

(declare-fun bs!45151 () Bool)

(assert (= bs!45151 (and b!372329 d!130968)))

(assert (=> bs!45151 (not (= lambda!11590 lambda!11588))))

(declare-fun bs!45152 () Bool)

(assert (= bs!45152 (and b!372329 b!372009)))

(assert (=> bs!45152 (not (= lambda!11590 lambda!11577))))

(declare-fun bs!45153 () Bool)

(assert (= bs!45153 (and b!372329 b!372312)))

(assert (=> bs!45153 (= lambda!11590 lambda!11589)))

(declare-fun bs!45154 () Bool)

(assert (= bs!45154 (and b!372329 b!372280)))

(assert (=> bs!45154 (= lambda!11590 lambda!11587)))

(declare-fun bs!45155 () Bool)

(assert (= bs!45155 (and b!372329 d!130930)))

(assert (=> bs!45155 (not (= lambda!11590 lambda!11586))))

(declare-fun b!372336 () Bool)

(declare-fun e!228889 () Bool)

(assert (=> b!372336 (= e!228889 true)))

(declare-fun b!372335 () Bool)

(declare-fun e!228888 () Bool)

(assert (=> b!372335 (= e!228888 e!228889)))

(declare-fun b!372334 () Bool)

(declare-fun e!228887 () Bool)

(assert (=> b!372334 (= e!228887 e!228888)))

(assert (=> b!372329 e!228887))

(assert (= b!372335 b!372336))

(assert (= b!372334 b!372335))

(assert (= (and b!372329 ((_ is Cons!4174) rules!1920)) b!372334))

(assert (=> b!372336 (< (dynLambda!2383 order!3505 (toValue!1588 (transformation!805 (h!9571 rules!1920)))) (dynLambda!2384 order!3507 lambda!11590))))

(assert (=> b!372336 (< (dynLambda!2385 order!3509 (toChars!1447 (transformation!805 (h!9571 rules!1920)))) (dynLambda!2384 order!3507 lambda!11590))))

(assert (=> b!372329 true))

(declare-fun bm!23609 () Bool)

(declare-fun call!23618 () List!4183)

(declare-fun e!228884 () BalanceConc!2872)

(assert (=> bm!23609 (= call!23618 (list!1801 e!228884))))

(declare-fun c!73273 () Bool)

(declare-fun c!73274 () Bool)

(assert (=> bm!23609 (= c!73273 c!73274)))

(declare-fun b!372326 () Bool)

(declare-fun e!228885 () List!4183)

(assert (=> b!372326 (= e!228885 Nil!4173)))

(declare-fun b!372327 () Bool)

(declare-fun e!228883 () List!4183)

(declare-fun call!23614 () List!4183)

(declare-fun lt!161752 () List!4183)

(assert (=> b!372327 (= e!228883 (++!1166 call!23614 lt!161752))))

(declare-fun b!372328 () Bool)

(declare-fun call!23617 () BalanceConc!2872)

(assert (=> b!372328 (= e!228884 call!23617)))

(declare-fun c!73275 () Bool)

(declare-fun call!23616 () List!4183)

(declare-fun bm!23610 () Bool)

(assert (=> bm!23610 (= call!23614 (++!1166 call!23616 (ite c!73275 lt!161752 call!23618)))))

(declare-fun bm!23611 () Bool)

(declare-fun call!23615 () BalanceConc!2872)

(assert (=> bm!23611 (= call!23615 (charsOf!448 (h!9572 tokens!465)))))

(declare-fun e!228886 () List!4183)

(assert (=> b!372329 (= e!228885 e!228886)))

(declare-fun lt!161754 () Unit!6616)

(assert (=> b!372329 (= lt!161754 (forallContained!358 tokens!465 lambda!11590 (h!9572 tokens!465)))))

(assert (=> b!372329 (= lt!161752 (printWithSeparatorTokenWhenNeededList!372 thiss!17480 rules!1920 (t!57249 tokens!465) separatorToken!170))))

(declare-fun lt!161750 () Option!998)

(assert (=> b!372329 (= lt!161750 (maxPrefix!407 thiss!17480 rules!1920 (++!1166 (list!1801 (charsOf!448 (h!9572 tokens!465))) lt!161752)))))

(assert (=> b!372329 (= c!73275 (and ((_ is Some!997) lt!161750) (= (_1!2674 (v!15120 lt!161750)) (h!9572 tokens!465))))))

(declare-fun bm!23613 () Bool)

(assert (=> bm!23613 (= call!23616 (list!1801 (ite c!73275 call!23615 call!23617)))))

(declare-fun b!372330 () Bool)

(assert (=> b!372330 (= e!228884 (charsOf!448 separatorToken!170))))

(declare-fun b!372331 () Bool)

(assert (=> b!372331 (= e!228883 Nil!4173)))

(assert (=> b!372331 (= (print!416 thiss!17480 (singletonSeq!351 (h!9572 tokens!465))) (printTailRec!377 thiss!17480 (singletonSeq!351 (h!9572 tokens!465)) 0 (BalanceConc!2873 Empty!1432)))))

(declare-fun lt!161751 () Unit!6616)

(declare-fun Unit!6630 () Unit!6616)

(assert (=> b!372331 (= lt!161751 Unit!6630)))

(declare-fun lt!161749 () Unit!6616)

(assert (=> b!372331 (= lt!161749 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!159 thiss!17480 rules!1920 call!23618 lt!161752))))

(assert (=> b!372331 false))

(declare-fun lt!161753 () Unit!6616)

(declare-fun Unit!6631 () Unit!6616)

(assert (=> b!372331 (= lt!161753 Unit!6631)))

(declare-fun b!372332 () Bool)

(assert (=> b!372332 (= c!73274 (and ((_ is Some!997) lt!161750) (not (= (_1!2674 (v!15120 lt!161750)) (h!9572 tokens!465)))))))

(assert (=> b!372332 (= e!228886 e!228883)))

(declare-fun b!372333 () Bool)

(assert (=> b!372333 (= e!228886 call!23614)))

(declare-fun d!130970 () Bool)

(declare-fun c!73276 () Bool)

(assert (=> d!130970 (= c!73276 ((_ is Cons!4175) tokens!465))))

(assert (=> d!130970 (= (printWithSeparatorTokenWhenNeededList!372 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!228885)))

(declare-fun bm!23612 () Bool)

(assert (=> bm!23612 (= call!23617 call!23615)))

(assert (= (and d!130970 c!73276) b!372329))

(assert (= (and d!130970 (not c!73276)) b!372326))

(assert (= (and b!372329 c!73275) b!372333))

(assert (= (and b!372329 (not c!73275)) b!372332))

(assert (= (and b!372332 c!73274) b!372327))

(assert (= (and b!372332 (not c!73274)) b!372331))

(assert (= (or b!372327 b!372331) bm!23612))

(assert (= (or b!372327 b!372331) bm!23609))

(assert (= (and bm!23609 c!73273) b!372330))

(assert (= (and bm!23609 (not c!73273)) b!372328))

(assert (= (or b!372333 bm!23612) bm!23611))

(assert (= (or b!372333 b!372327) bm!23613))

(assert (= (or b!372333 b!372327) bm!23610))

(declare-fun m!552053 () Bool)

(assert (=> b!372329 m!552053))

(declare-fun m!552055 () Bool)

(assert (=> b!372329 m!552055))

(assert (=> b!372329 m!551615))

(declare-fun m!552057 () Bool)

(assert (=> b!372329 m!552057))

(assert (=> b!372329 m!551619))

(assert (=> b!372329 m!552053))

(assert (=> b!372329 m!551613))

(assert (=> b!372329 m!551619))

(assert (=> b!372329 m!551613))

(assert (=> b!372331 m!551593))

(assert (=> b!372331 m!551593))

(declare-fun m!552059 () Bool)

(assert (=> b!372331 m!552059))

(assert (=> b!372331 m!551593))

(declare-fun m!552061 () Bool)

(assert (=> b!372331 m!552061))

(declare-fun m!552063 () Bool)

(assert (=> b!372331 m!552063))

(declare-fun m!552065 () Bool)

(assert (=> bm!23609 m!552065))

(assert (=> b!372330 m!551605))

(declare-fun m!552067 () Bool)

(assert (=> bm!23613 m!552067))

(declare-fun m!552069 () Bool)

(assert (=> b!372327 m!552069))

(declare-fun m!552071 () Bool)

(assert (=> bm!23610 m!552071))

(assert (=> bm!23611 m!551613))

(assert (=> b!372025 d!130970))

(declare-fun d!130972 () Bool)

(declare-fun lt!161765 () Bool)

(declare-fun e!228901 () Bool)

(assert (=> d!130972 (= lt!161765 e!228901)))

(declare-fun res!166644 () Bool)

(assert (=> d!130972 (=> (not res!166644) (not e!228901))))

(assert (=> d!130972 (= res!166644 (= (list!1802 (_1!2673 (lex!483 thiss!17480 rules!1920 (print!416 thiss!17480 (singletonSeq!351 separatorToken!170))))) (list!1802 (singletonSeq!351 separatorToken!170))))))

(declare-fun e!228900 () Bool)

(assert (=> d!130972 (= lt!161765 e!228900)))

(declare-fun res!166645 () Bool)

(assert (=> d!130972 (=> (not res!166645) (not e!228900))))

(declare-fun lt!161766 () tuple2!4914)

(assert (=> d!130972 (= res!166645 (= (size!3373 (_1!2673 lt!161766)) 1))))

(assert (=> d!130972 (= lt!161766 (lex!483 thiss!17480 rules!1920 (print!416 thiss!17480 (singletonSeq!351 separatorToken!170))))))

(assert (=> d!130972 (not (isEmpty!2974 rules!1920))))

(assert (=> d!130972 (= (rulesProduceIndividualToken!440 thiss!17480 rules!1920 separatorToken!170) lt!161765)))

(declare-fun b!372349 () Bool)

(declare-fun res!166643 () Bool)

(assert (=> b!372349 (=> (not res!166643) (not e!228900))))

(assert (=> b!372349 (= res!166643 (= (apply!970 (_1!2673 lt!161766) 0) separatorToken!170))))

(declare-fun b!372350 () Bool)

(assert (=> b!372350 (= e!228900 (isEmpty!2972 (_2!2673 lt!161766)))))

(declare-fun b!372351 () Bool)

(assert (=> b!372351 (= e!228901 (isEmpty!2972 (_2!2673 (lex!483 thiss!17480 rules!1920 (print!416 thiss!17480 (singletonSeq!351 separatorToken!170))))))))

(assert (= (and d!130972 res!166645) b!372349))

(assert (= (and b!372349 res!166643) b!372350))

(assert (= (and d!130972 res!166644) b!372351))

(declare-fun m!552089 () Bool)

(assert (=> d!130972 m!552089))

(declare-fun m!552091 () Bool)

(assert (=> d!130972 m!552091))

(declare-fun m!552093 () Bool)

(assert (=> d!130972 m!552093))

(assert (=> d!130972 m!551523))

(assert (=> d!130972 m!551523))

(assert (=> d!130972 m!552089))

(assert (=> d!130972 m!551523))

(declare-fun m!552095 () Bool)

(assert (=> d!130972 m!552095))

(declare-fun m!552097 () Bool)

(assert (=> d!130972 m!552097))

(assert (=> d!130972 m!551551))

(declare-fun m!552099 () Bool)

(assert (=> b!372349 m!552099))

(declare-fun m!552101 () Bool)

(assert (=> b!372350 m!552101))

(assert (=> b!372351 m!551523))

(assert (=> b!372351 m!551523))

(assert (=> b!372351 m!552089))

(assert (=> b!372351 m!552089))

(assert (=> b!372351 m!552091))

(declare-fun m!552103 () Bool)

(assert (=> b!372351 m!552103))

(assert (=> b!372004 d!130972))

(declare-fun d!130982 () Bool)

(declare-fun lt!161769 () Bool)

(assert (=> d!130982 (= lt!161769 (isEmpty!2970 (list!1801 (_2!2673 lt!161594))))))

(declare-fun isEmpty!2978 (Conc!1432) Bool)

(assert (=> d!130982 (= lt!161769 (isEmpty!2978 (c!73208 (_2!2673 lt!161594))))))

(assert (=> d!130982 (= (isEmpty!2972 (_2!2673 lt!161594)) lt!161769)))

(declare-fun bs!45160 () Bool)

(assert (= bs!45160 d!130982))

(declare-fun m!552105 () Bool)

(assert (=> bs!45160 m!552105))

(assert (=> bs!45160 m!552105))

(declare-fun m!552107 () Bool)

(assert (=> bs!45160 m!552107))

(declare-fun m!552109 () Bool)

(assert (=> bs!45160 m!552109))

(assert (=> b!372029 d!130982))

(declare-fun d!130984 () Bool)

(assert (=> d!130984 (= (list!1801 (seqFromList!975 lt!161565)) (list!1804 (c!73208 (seqFromList!975 lt!161565))))))

(declare-fun bs!45161 () Bool)

(assert (= bs!45161 d!130984))

(declare-fun m!552111 () Bool)

(assert (=> bs!45161 m!552111))

(assert (=> b!372008 d!130984))

(declare-fun d!130986 () Bool)

(declare-fun fromListB!419 (List!4183) BalanceConc!2872)

(assert (=> d!130986 (= (seqFromList!975 lt!161565) (fromListB!419 lt!161565))))

(declare-fun bs!45162 () Bool)

(assert (= bs!45162 d!130986))

(declare-fun m!552113 () Bool)

(assert (=> bs!45162 m!552113))

(assert (=> b!372008 d!130986))

(declare-fun d!130988 () Bool)

(declare-fun lt!161772 () Bool)

(declare-fun content!658 (List!4184) (InoxSet Rule!1410))

(assert (=> d!130988 (= lt!161772 (select (content!658 rules!1920) (rule!1450 separatorToken!170)))))

(declare-fun e!228906 () Bool)

(assert (=> d!130988 (= lt!161772 e!228906)))

(declare-fun res!166650 () Bool)

(assert (=> d!130988 (=> (not res!166650) (not e!228906))))

(assert (=> d!130988 (= res!166650 ((_ is Cons!4174) rules!1920))))

(assert (=> d!130988 (= (contains!856 rules!1920 (rule!1450 separatorToken!170)) lt!161772)))

(declare-fun b!372356 () Bool)

(declare-fun e!228907 () Bool)

(assert (=> b!372356 (= e!228906 e!228907)))

(declare-fun res!166651 () Bool)

(assert (=> b!372356 (=> res!166651 e!228907)))

(assert (=> b!372356 (= res!166651 (= (h!9571 rules!1920) (rule!1450 separatorToken!170)))))

(declare-fun b!372357 () Bool)

(assert (=> b!372357 (= e!228907 (contains!856 (t!57248 rules!1920) (rule!1450 separatorToken!170)))))

(assert (= (and d!130988 res!166650) b!372356))

(assert (= (and b!372356 (not res!166651)) b!372357))

(declare-fun m!552115 () Bool)

(assert (=> d!130988 m!552115))

(declare-fun m!552117 () Bool)

(assert (=> d!130988 m!552117))

(declare-fun m!552119 () Bool)

(assert (=> b!372357 m!552119))

(assert (=> b!372006 d!130988))

(declare-fun d!130990 () Bool)

(declare-fun lt!161773 () Bool)

(assert (=> d!130990 (= lt!161773 (isEmpty!2970 (list!1801 (_2!2673 lt!161592))))))

(assert (=> d!130990 (= lt!161773 (isEmpty!2978 (c!73208 (_2!2673 lt!161592))))))

(assert (=> d!130990 (= (isEmpty!2972 (_2!2673 lt!161592)) lt!161773)))

(declare-fun bs!45163 () Bool)

(assert (= bs!45163 d!130990))

(declare-fun m!552121 () Bool)

(assert (=> bs!45163 m!552121))

(assert (=> bs!45163 m!552121))

(declare-fun m!552123 () Bool)

(assert (=> bs!45163 m!552123))

(declare-fun m!552125 () Bool)

(assert (=> bs!45163 m!552125))

(assert (=> b!372028 d!130990))

(declare-fun d!130992 () Bool)

(declare-fun res!166654 () Bool)

(declare-fun e!228910 () Bool)

(assert (=> d!130992 (=> (not res!166654) (not e!228910))))

(declare-fun rulesValid!273 (LexerInterface!691 List!4184) Bool)

(assert (=> d!130992 (= res!166654 (rulesValid!273 thiss!17480 rules!1920))))

(assert (=> d!130992 (= (rulesInvariant!657 thiss!17480 rules!1920) e!228910)))

(declare-fun b!372360 () Bool)

(declare-datatypes ((List!4186 0))(
  ( (Nil!4176) (Cons!4176 (h!9573 String!5215) (t!57336 List!4186)) )
))
(declare-fun noDuplicateTag!273 (LexerInterface!691 List!4184 List!4186) Bool)

(assert (=> b!372360 (= e!228910 (noDuplicateTag!273 thiss!17480 rules!1920 Nil!4176))))

(assert (= (and d!130992 res!166654) b!372360))

(declare-fun m!552127 () Bool)

(assert (=> d!130992 m!552127))

(declare-fun m!552129 () Bool)

(assert (=> b!372360 m!552129))

(assert (=> b!372010 d!130992))

(declare-fun d!130994 () Bool)

(declare-fun c!73283 () Bool)

(assert (=> d!130994 (= c!73283 ((_ is IntegerValue!2481) (value!27258 (h!9572 tokens!465))))))

(declare-fun e!228921 () Bool)

(assert (=> d!130994 (= (inv!21 (value!27258 (h!9572 tokens!465))) e!228921)))

(declare-fun b!372377 () Bool)

(declare-fun res!166659 () Bool)

(declare-fun e!228922 () Bool)

(assert (=> b!372377 (=> res!166659 e!228922)))

(assert (=> b!372377 (= res!166659 (not ((_ is IntegerValue!2483) (value!27258 (h!9572 tokens!465)))))))

(declare-fun e!228923 () Bool)

(assert (=> b!372377 (= e!228923 e!228922)))

(declare-fun b!372378 () Bool)

(declare-fun inv!16 (TokenValue!827) Bool)

(assert (=> b!372378 (= e!228921 (inv!16 (value!27258 (h!9572 tokens!465))))))

(declare-fun b!372379 () Bool)

(declare-fun inv!17 (TokenValue!827) Bool)

(assert (=> b!372379 (= e!228923 (inv!17 (value!27258 (h!9572 tokens!465))))))

(declare-fun b!372380 () Bool)

(assert (=> b!372380 (= e!228921 e!228923)))

(declare-fun c!73284 () Bool)

(assert (=> b!372380 (= c!73284 ((_ is IntegerValue!2482) (value!27258 (h!9572 tokens!465))))))

(declare-fun b!372381 () Bool)

(declare-fun inv!15 (TokenValue!827) Bool)

(assert (=> b!372381 (= e!228922 (inv!15 (value!27258 (h!9572 tokens!465))))))

(assert (= (and d!130994 c!73283) b!372378))

(assert (= (and d!130994 (not c!73283)) b!372380))

(assert (= (and b!372380 c!73284) b!372379))

(assert (= (and b!372380 (not c!73284)) b!372377))

(assert (= (and b!372377 (not res!166659)) b!372381))

(declare-fun m!552131 () Bool)

(assert (=> b!372378 m!552131))

(declare-fun m!552133 () Bool)

(assert (=> b!372379 m!552133))

(declare-fun m!552135 () Bool)

(assert (=> b!372381 m!552135))

(assert (=> b!372032 d!130994))

(declare-fun d!130996 () Bool)

(declare-fun isEmpty!2979 (Option!998) Bool)

(assert (=> d!130996 (= (isDefined!836 lt!161562) (not (isEmpty!2979 lt!161562)))))

(declare-fun bs!45164 () Bool)

(assert (= bs!45164 d!130996))

(declare-fun m!552137 () Bool)

(assert (=> bs!45164 m!552137))

(assert (=> b!372011 d!130996))

(declare-fun b!372471 () Bool)

(declare-fun res!166713 () Bool)

(declare-fun e!228969 () Bool)

(assert (=> b!372471 (=> (not res!166713) (not e!228969))))

(declare-fun lt!161818 () Option!998)

(declare-fun apply!975 (TokenValueInjection!1426 BalanceConc!2872) TokenValue!827)

(assert (=> b!372471 (= res!166713 (= (value!27258 (_1!2674 (get!1462 lt!161818))) (apply!975 (transformation!805 (rule!1450 (_1!2674 (get!1462 lt!161818)))) (seqFromList!975 (originalCharacters!848 (_1!2674 (get!1462 lt!161818)))))))))

(declare-fun call!23624 () Option!998)

(declare-fun bm!23619 () Bool)

(declare-fun maxPrefixOneRule!189 (LexerInterface!691 Rule!1410 List!4183) Option!998)

(assert (=> bm!23619 (= call!23624 (maxPrefixOneRule!189 thiss!17480 (h!9571 rules!1920) lt!161565))))

(declare-fun d!130998 () Bool)

(declare-fun e!228970 () Bool)

(assert (=> d!130998 e!228970))

(declare-fun res!166712 () Bool)

(assert (=> d!130998 (=> res!166712 e!228970)))

(assert (=> d!130998 (= res!166712 (isEmpty!2979 lt!161818))))

(declare-fun e!228968 () Option!998)

(assert (=> d!130998 (= lt!161818 e!228968)))

(declare-fun c!73305 () Bool)

(assert (=> d!130998 (= c!73305 (and ((_ is Cons!4174) rules!1920) ((_ is Nil!4174) (t!57248 rules!1920))))))

(declare-fun lt!161815 () Unit!6616)

(declare-fun lt!161817 () Unit!6616)

(assert (=> d!130998 (= lt!161815 lt!161817)))

(assert (=> d!130998 (isPrefix!465 lt!161565 lt!161565)))

(declare-fun lemmaIsPrefixRefl!255 (List!4183 List!4183) Unit!6616)

(assert (=> d!130998 (= lt!161817 (lemmaIsPrefixRefl!255 lt!161565 lt!161565))))

(declare-fun rulesValidInductive!250 (LexerInterface!691 List!4184) Bool)

(assert (=> d!130998 (rulesValidInductive!250 thiss!17480 rules!1920)))

(assert (=> d!130998 (= (maxPrefix!407 thiss!17480 rules!1920 lt!161565) lt!161818)))

(declare-fun b!372472 () Bool)

(assert (=> b!372472 (= e!228969 (contains!856 rules!1920 (rule!1450 (_1!2674 (get!1462 lt!161818)))))))

(declare-fun b!372473 () Bool)

(declare-fun lt!161816 () Option!998)

(declare-fun lt!161814 () Option!998)

(assert (=> b!372473 (= e!228968 (ite (and ((_ is None!997) lt!161816) ((_ is None!997) lt!161814)) None!997 (ite ((_ is None!997) lt!161814) lt!161816 (ite ((_ is None!997) lt!161816) lt!161814 (ite (>= (size!3372 (_1!2674 (v!15120 lt!161816))) (size!3372 (_1!2674 (v!15120 lt!161814)))) lt!161816 lt!161814)))))))

(assert (=> b!372473 (= lt!161816 call!23624)))

(assert (=> b!372473 (= lt!161814 (maxPrefix!407 thiss!17480 (t!57248 rules!1920) lt!161565))))

(declare-fun b!372474 () Bool)

(assert (=> b!372474 (= e!228970 e!228969)))

(declare-fun res!166710 () Bool)

(assert (=> b!372474 (=> (not res!166710) (not e!228969))))

(assert (=> b!372474 (= res!166710 (isDefined!836 lt!161818))))

(declare-fun b!372475 () Bool)

(declare-fun res!166709 () Bool)

(assert (=> b!372475 (=> (not res!166709) (not e!228969))))

(assert (=> b!372475 (= res!166709 (< (size!3374 (_2!2674 (get!1462 lt!161818))) (size!3374 lt!161565)))))

(declare-fun b!372476 () Bool)

(declare-fun res!166714 () Bool)

(assert (=> b!372476 (=> (not res!166714) (not e!228969))))

(assert (=> b!372476 (= res!166714 (= (++!1166 (list!1801 (charsOf!448 (_1!2674 (get!1462 lt!161818)))) (_2!2674 (get!1462 lt!161818))) lt!161565))))

(declare-fun b!372477 () Bool)

(declare-fun res!166711 () Bool)

(assert (=> b!372477 (=> (not res!166711) (not e!228969))))

(assert (=> b!372477 (= res!166711 (= (list!1801 (charsOf!448 (_1!2674 (get!1462 lt!161818)))) (originalCharacters!848 (_1!2674 (get!1462 lt!161818)))))))

(declare-fun b!372478 () Bool)

(declare-fun res!166715 () Bool)

(assert (=> b!372478 (=> (not res!166715) (not e!228969))))

(assert (=> b!372478 (= res!166715 (matchR!347 (regex!805 (rule!1450 (_1!2674 (get!1462 lt!161818)))) (list!1801 (charsOf!448 (_1!2674 (get!1462 lt!161818))))))))

(declare-fun b!372479 () Bool)

(assert (=> b!372479 (= e!228968 call!23624)))

(assert (= (and d!130998 c!73305) b!372479))

(assert (= (and d!130998 (not c!73305)) b!372473))

(assert (= (or b!372479 b!372473) bm!23619))

(assert (= (and d!130998 (not res!166712)) b!372474))

(assert (= (and b!372474 res!166710) b!372477))

(assert (= (and b!372477 res!166711) b!372475))

(assert (= (and b!372475 res!166709) b!372476))

(assert (= (and b!372476 res!166714) b!372471))

(assert (= (and b!372471 res!166713) b!372478))

(assert (= (and b!372478 res!166715) b!372472))

(declare-fun m!552231 () Bool)

(assert (=> bm!23619 m!552231))

(declare-fun m!552233 () Bool)

(assert (=> b!372473 m!552233))

(declare-fun m!552235 () Bool)

(assert (=> b!372476 m!552235))

(declare-fun m!552237 () Bool)

(assert (=> b!372476 m!552237))

(assert (=> b!372476 m!552237))

(declare-fun m!552239 () Bool)

(assert (=> b!372476 m!552239))

(assert (=> b!372476 m!552239))

(declare-fun m!552241 () Bool)

(assert (=> b!372476 m!552241))

(assert (=> b!372472 m!552235))

(declare-fun m!552243 () Bool)

(assert (=> b!372472 m!552243))

(declare-fun m!552245 () Bool)

(assert (=> b!372474 m!552245))

(declare-fun m!552247 () Bool)

(assert (=> d!130998 m!552247))

(declare-fun m!552249 () Bool)

(assert (=> d!130998 m!552249))

(declare-fun m!552251 () Bool)

(assert (=> d!130998 m!552251))

(declare-fun m!552253 () Bool)

(assert (=> d!130998 m!552253))

(assert (=> b!372471 m!552235))

(declare-fun m!552255 () Bool)

(assert (=> b!372471 m!552255))

(assert (=> b!372471 m!552255))

(declare-fun m!552257 () Bool)

(assert (=> b!372471 m!552257))

(assert (=> b!372475 m!552235))

(declare-fun m!552259 () Bool)

(assert (=> b!372475 m!552259))

(declare-fun m!552261 () Bool)

(assert (=> b!372475 m!552261))

(assert (=> b!372477 m!552235))

(assert (=> b!372477 m!552237))

(assert (=> b!372477 m!552237))

(assert (=> b!372477 m!552239))

(assert (=> b!372478 m!552235))

(assert (=> b!372478 m!552237))

(assert (=> b!372478 m!552237))

(assert (=> b!372478 m!552239))

(assert (=> b!372478 m!552239))

(declare-fun m!552263 () Bool)

(assert (=> b!372478 m!552263))

(assert (=> b!372011 d!130998))

(declare-fun d!131022 () Bool)

(declare-fun res!166720 () Bool)

(declare-fun e!228973 () Bool)

(assert (=> d!131022 (=> (not res!166720) (not e!228973))))

(assert (=> d!131022 (= res!166720 (not (isEmpty!2970 (originalCharacters!848 (h!9572 tokens!465)))))))

(assert (=> d!131022 (= (inv!5184 (h!9572 tokens!465)) e!228973)))

(declare-fun b!372484 () Bool)

(declare-fun res!166721 () Bool)

(assert (=> b!372484 (=> (not res!166721) (not e!228973))))

(assert (=> b!372484 (= res!166721 (= (originalCharacters!848 (h!9572 tokens!465)) (list!1801 (dynLambda!2387 (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))) (value!27258 (h!9572 tokens!465))))))))

(declare-fun b!372485 () Bool)

(assert (=> b!372485 (= e!228973 (= (size!3372 (h!9572 tokens!465)) (size!3374 (originalCharacters!848 (h!9572 tokens!465)))))))

(assert (= (and d!131022 res!166720) b!372484))

(assert (= (and b!372484 res!166721) b!372485))

(declare-fun b_lambda!14589 () Bool)

(assert (=> (not b_lambda!14589) (not b!372484)))

(assert (=> b!372484 t!57264))

(declare-fun b_and!37429 () Bool)

(assert (= b_and!37423 (and (=> t!57264 result!36920) b_and!37429)))

(assert (=> b!372484 t!57266))

(declare-fun b_and!37431 () Bool)

(assert (= b_and!37425 (and (=> t!57266 result!36922) b_and!37431)))

(assert (=> b!372484 t!57268))

(declare-fun b_and!37433 () Bool)

(assert (= b_and!37427 (and (=> t!57268 result!36924) b_and!37433)))

(declare-fun m!552265 () Bool)

(assert (=> d!131022 m!552265))

(assert (=> b!372484 m!551971))

(assert (=> b!372484 m!551971))

(declare-fun m!552267 () Bool)

(assert (=> b!372484 m!552267))

(declare-fun m!552269 () Bool)

(assert (=> b!372485 m!552269))

(assert (=> b!372030 d!131022))

(declare-fun d!131024 () Bool)

(declare-fun res!166726 () Bool)

(declare-fun e!228978 () Bool)

(assert (=> d!131024 (=> res!166726 e!228978)))

(assert (=> d!131024 (= res!166726 ((_ is Nil!4175) tokens!465))))

(assert (=> d!131024 (= (forall!1152 tokens!465 lambda!11577) e!228978)))

(declare-fun b!372490 () Bool)

(declare-fun e!228979 () Bool)

(assert (=> b!372490 (= e!228978 e!228979)))

(declare-fun res!166727 () Bool)

(assert (=> b!372490 (=> (not res!166727) (not e!228979))))

(declare-fun dynLambda!2389 (Int Token!1354) Bool)

(assert (=> b!372490 (= res!166727 (dynLambda!2389 lambda!11577 (h!9572 tokens!465)))))

(declare-fun b!372491 () Bool)

(assert (=> b!372491 (= e!228979 (forall!1152 (t!57249 tokens!465) lambda!11577))))

(assert (= (and d!131024 (not res!166726)) b!372490))

(assert (= (and b!372490 res!166727) b!372491))

(declare-fun b_lambda!14591 () Bool)

(assert (=> (not b_lambda!14591) (not b!372490)))

(declare-fun m!552271 () Bool)

(assert (=> b!372490 m!552271))

(declare-fun m!552273 () Bool)

(assert (=> b!372491 m!552273))

(assert (=> b!372009 d!131024))

(declare-fun d!131026 () Bool)

(declare-fun e!228982 () Bool)

(assert (=> d!131026 e!228982))

(declare-fun res!166732 () Bool)

(assert (=> d!131026 (=> (not res!166732) (not e!228982))))

(assert (=> d!131026 (= res!166732 (isDefined!838 (getRuleFromTag!164 thiss!17480 rules!1920 (tag!1035 (rule!1450 separatorToken!170)))))))

(declare-fun lt!161821 () Unit!6616)

(declare-fun choose!2976 (LexerInterface!691 List!4184 List!4183 Token!1354) Unit!6616)

(assert (=> d!131026 (= lt!161821 (choose!2976 thiss!17480 rules!1920 lt!161573 separatorToken!170))))

(assert (=> d!131026 (rulesInvariant!657 thiss!17480 rules!1920)))

(assert (=> d!131026 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!164 thiss!17480 rules!1920 lt!161573 separatorToken!170) lt!161821)))

(declare-fun b!372496 () Bool)

(declare-fun res!166733 () Bool)

(assert (=> b!372496 (=> (not res!166733) (not e!228982))))

(assert (=> b!372496 (= res!166733 (matchR!347 (regex!805 (get!1461 (getRuleFromTag!164 thiss!17480 rules!1920 (tag!1035 (rule!1450 separatorToken!170))))) (list!1801 (charsOf!448 separatorToken!170))))))

(declare-fun b!372497 () Bool)

(assert (=> b!372497 (= e!228982 (= (rule!1450 separatorToken!170) (get!1461 (getRuleFromTag!164 thiss!17480 rules!1920 (tag!1035 (rule!1450 separatorToken!170))))))))

(assert (= (and d!131026 res!166732) b!372496))

(assert (= (and b!372496 res!166733) b!372497))

(assert (=> d!131026 m!551543))

(assert (=> d!131026 m!551543))

(declare-fun m!552275 () Bool)

(assert (=> d!131026 m!552275))

(declare-fun m!552277 () Bool)

(assert (=> d!131026 m!552277))

(assert (=> d!131026 m!551639))

(assert (=> b!372496 m!551605))

(assert (=> b!372496 m!551543))

(declare-fun m!552279 () Bool)

(assert (=> b!372496 m!552279))

(assert (=> b!372496 m!551543))

(assert (=> b!372496 m!551605))

(assert (=> b!372496 m!551607))

(assert (=> b!372496 m!551607))

(declare-fun m!552281 () Bool)

(assert (=> b!372496 m!552281))

(assert (=> b!372497 m!551543))

(assert (=> b!372497 m!551543))

(assert (=> b!372497 m!552279))

(assert (=> b!372034 d!131026))

(declare-fun d!131028 () Bool)

(declare-fun lt!161822 () BalanceConc!2872)

(assert (=> d!131028 (= (list!1801 lt!161822) (originalCharacters!848 lt!161578))))

(assert (=> d!131028 (= lt!161822 (dynLambda!2387 (toChars!1447 (transformation!805 (rule!1450 lt!161578))) (value!27258 lt!161578)))))

(assert (=> d!131028 (= (charsOf!448 lt!161578) lt!161822)))

(declare-fun b_lambda!14593 () Bool)

(assert (=> (not b_lambda!14593) (not d!131028)))

(declare-fun t!57276 () Bool)

(declare-fun tb!32733 () Bool)

(assert (=> (and b!372019 (= (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))) (toChars!1447 (transformation!805 (rule!1450 lt!161578)))) t!57276) tb!32733))

(declare-fun b!372498 () Bool)

(declare-fun e!228983 () Bool)

(declare-fun tp!116848 () Bool)

(assert (=> b!372498 (= e!228983 (and (inv!5185 (c!73208 (dynLambda!2387 (toChars!1447 (transformation!805 (rule!1450 lt!161578))) (value!27258 lt!161578)))) tp!116848))))

(declare-fun result!36926 () Bool)

(assert (=> tb!32733 (= result!36926 (and (inv!5186 (dynLambda!2387 (toChars!1447 (transformation!805 (rule!1450 lt!161578))) (value!27258 lt!161578))) e!228983))))

(assert (= tb!32733 b!372498))

(declare-fun m!552283 () Bool)

(assert (=> b!372498 m!552283))

(declare-fun m!552285 () Bool)

(assert (=> tb!32733 m!552285))

(assert (=> d!131028 t!57276))

(declare-fun b_and!37435 () Bool)

(assert (= b_and!37429 (and (=> t!57276 result!36926) b_and!37435)))

(declare-fun t!57278 () Bool)

(declare-fun tb!32735 () Bool)

(assert (=> (and b!372031 (= (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))) (toChars!1447 (transformation!805 (rule!1450 lt!161578)))) t!57278) tb!32735))

(declare-fun result!36928 () Bool)

(assert (= result!36928 result!36926))

(assert (=> d!131028 t!57278))

(declare-fun b_and!37437 () Bool)

(assert (= b_and!37431 (and (=> t!57278 result!36928) b_and!37437)))

(declare-fun t!57280 () Bool)

(declare-fun tb!32737 () Bool)

(assert (=> (and b!372038 (= (toChars!1447 (transformation!805 (h!9571 rules!1920))) (toChars!1447 (transformation!805 (rule!1450 lt!161578)))) t!57280) tb!32737))

(declare-fun result!36930 () Bool)

(assert (= result!36930 result!36926))

(assert (=> d!131028 t!57280))

(declare-fun b_and!37439 () Bool)

(assert (= b_and!37433 (and (=> t!57280 result!36930) b_and!37439)))

(declare-fun m!552287 () Bool)

(assert (=> d!131028 m!552287))

(declare-fun m!552289 () Bool)

(assert (=> d!131028 m!552289))

(assert (=> b!372034 d!131028))

(declare-fun d!131030 () Bool)

(declare-fun e!228986 () Bool)

(assert (=> d!131030 e!228986))

(declare-fun res!166736 () Bool)

(assert (=> d!131030 (=> (not res!166736) (not e!228986))))

(declare-fun lt!161825 () BalanceConc!2874)

(assert (=> d!131030 (= res!166736 (= (list!1802 lt!161825) (Cons!4175 lt!161578 Nil!4175)))))

(declare-fun singleton!162 (Token!1354) BalanceConc!2874)

(assert (=> d!131030 (= lt!161825 (singleton!162 lt!161578))))

(assert (=> d!131030 (= (singletonSeq!351 lt!161578) lt!161825)))

(declare-fun b!372501 () Bool)

(declare-fun isBalanced!423 (Conc!1433) Bool)

(assert (=> b!372501 (= e!228986 (isBalanced!423 (c!73210 lt!161825)))))

(assert (= (and d!131030 res!166736) b!372501))

(declare-fun m!552291 () Bool)

(assert (=> d!131030 m!552291))

(declare-fun m!552293 () Bool)

(assert (=> d!131030 m!552293))

(declare-fun m!552295 () Bool)

(assert (=> b!372501 m!552295))

(assert (=> b!372034 d!131030))

(declare-fun d!131032 () Bool)

(declare-fun lt!161828 () BalanceConc!2872)

(assert (=> d!131032 (= (list!1801 lt!161828) (printList!365 thiss!17480 (list!1802 lt!161557)))))

(assert (=> d!131032 (= lt!161828 (printTailRec!377 thiss!17480 lt!161557 0 (BalanceConc!2873 Empty!1432)))))

(assert (=> d!131032 (= (print!416 thiss!17480 lt!161557) lt!161828)))

(declare-fun bs!45169 () Bool)

(assert (= bs!45169 d!131032))

(declare-fun m!552297 () Bool)

(assert (=> bs!45169 m!552297))

(declare-fun m!552299 () Bool)

(assert (=> bs!45169 m!552299))

(assert (=> bs!45169 m!552299))

(declare-fun m!552301 () Bool)

(assert (=> bs!45169 m!552301))

(assert (=> bs!45169 m!551535))

(assert (=> b!372034 d!131032))

(declare-fun b!372512 () Bool)

(declare-fun e!228994 () Bool)

(declare-fun lt!161831 () tuple2!4914)

(assert (=> b!372512 (= e!228994 (= (_2!2673 lt!161831) lt!161569))))

(declare-fun d!131034 () Bool)

(declare-fun e!228995 () Bool)

(assert (=> d!131034 e!228995))

(declare-fun res!166744 () Bool)

(assert (=> d!131034 (=> (not res!166744) (not e!228995))))

(assert (=> d!131034 (= res!166744 e!228994)))

(declare-fun c!73308 () Bool)

(assert (=> d!131034 (= c!73308 (> (size!3373 (_1!2673 lt!161831)) 0))))

(declare-fun lexTailRecV2!224 (LexerInterface!691 List!4184 BalanceConc!2872 BalanceConc!2872 BalanceConc!2872 BalanceConc!2874) tuple2!4914)

(assert (=> d!131034 (= lt!161831 (lexTailRecV2!224 thiss!17480 rules!1920 lt!161569 (BalanceConc!2873 Empty!1432) lt!161569 (BalanceConc!2875 Empty!1433)))))

(assert (=> d!131034 (= (lex!483 thiss!17480 rules!1920 lt!161569) lt!161831)))

(declare-fun b!372513 () Bool)

(declare-fun res!166745 () Bool)

(assert (=> b!372513 (=> (not res!166745) (not e!228995))))

(declare-datatypes ((tuple2!4922 0))(
  ( (tuple2!4923 (_1!2677 List!4185) (_2!2677 List!4183)) )
))
(declare-fun lexList!257 (LexerInterface!691 List!4184 List!4183) tuple2!4922)

(assert (=> b!372513 (= res!166745 (= (list!1802 (_1!2673 lt!161831)) (_1!2677 (lexList!257 thiss!17480 rules!1920 (list!1801 lt!161569)))))))

(declare-fun b!372514 () Bool)

(declare-fun e!228993 () Bool)

(assert (=> b!372514 (= e!228994 e!228993)))

(declare-fun res!166743 () Bool)

(declare-fun size!3377 (BalanceConc!2872) Int)

(assert (=> b!372514 (= res!166743 (< (size!3377 (_2!2673 lt!161831)) (size!3377 lt!161569)))))

(assert (=> b!372514 (=> (not res!166743) (not e!228993))))

(declare-fun b!372515 () Bool)

(assert (=> b!372515 (= e!228993 (not (isEmpty!2971 (_1!2673 lt!161831))))))

(declare-fun b!372516 () Bool)

(assert (=> b!372516 (= e!228995 (= (list!1801 (_2!2673 lt!161831)) (_2!2677 (lexList!257 thiss!17480 rules!1920 (list!1801 lt!161569)))))))

(assert (= (and d!131034 c!73308) b!372514))

(assert (= (and d!131034 (not c!73308)) b!372512))

(assert (= (and b!372514 res!166743) b!372515))

(assert (= (and d!131034 res!166744) b!372513))

(assert (= (and b!372513 res!166745) b!372516))

(declare-fun m!552303 () Bool)

(assert (=> d!131034 m!552303))

(declare-fun m!552305 () Bool)

(assert (=> d!131034 m!552305))

(declare-fun m!552307 () Bool)

(assert (=> b!372515 m!552307))

(declare-fun m!552309 () Bool)

(assert (=> b!372514 m!552309))

(declare-fun m!552311 () Bool)

(assert (=> b!372514 m!552311))

(declare-fun m!552313 () Bool)

(assert (=> b!372516 m!552313))

(declare-fun m!552315 () Bool)

(assert (=> b!372516 m!552315))

(assert (=> b!372516 m!552315))

(declare-fun m!552317 () Bool)

(assert (=> b!372516 m!552317))

(declare-fun m!552319 () Bool)

(assert (=> b!372513 m!552319))

(assert (=> b!372513 m!552315))

(assert (=> b!372513 m!552315))

(assert (=> b!372513 m!552317))

(assert (=> b!372034 d!131034))

(declare-fun d!131036 () Bool)

(declare-fun isEmpty!2981 (Option!997) Bool)

(assert (=> d!131036 (= (isDefined!838 lt!161589) (not (isEmpty!2981 lt!161589)))))

(declare-fun bs!45170 () Bool)

(assert (= bs!45170 d!131036))

(declare-fun m!552321 () Bool)

(assert (=> bs!45170 m!552321))

(assert (=> b!372034 d!131036))

(declare-fun d!131038 () Bool)

(assert (=> d!131038 (= (isDefined!838 lt!161593) (not (isEmpty!2981 lt!161593)))))

(declare-fun bs!45171 () Bool)

(assert (= bs!45171 d!131038))

(declare-fun m!552323 () Bool)

(assert (=> bs!45171 m!552323))

(assert (=> b!372034 d!131038))

(declare-fun d!131040 () Bool)

(declare-fun lt!161834 () Bool)

(assert (=> d!131040 (= lt!161834 (select (content!656 (usedCharacters!106 (regex!805 (rule!1450 separatorToken!170)))) (head!1011 lt!161588)))))

(declare-fun e!229000 () Bool)

(assert (=> d!131040 (= lt!161834 e!229000)))

(declare-fun res!166751 () Bool)

(assert (=> d!131040 (=> (not res!166751) (not e!229000))))

(assert (=> d!131040 (= res!166751 ((_ is Cons!4173) (usedCharacters!106 (regex!805 (rule!1450 separatorToken!170)))))))

(assert (=> d!131040 (= (contains!857 (usedCharacters!106 (regex!805 (rule!1450 separatorToken!170))) (head!1011 lt!161588)) lt!161834)))

(declare-fun b!372521 () Bool)

(declare-fun e!229001 () Bool)

(assert (=> b!372521 (= e!229000 e!229001)))

(declare-fun res!166750 () Bool)

(assert (=> b!372521 (=> res!166750 e!229001)))

(assert (=> b!372521 (= res!166750 (= (h!9570 (usedCharacters!106 (regex!805 (rule!1450 separatorToken!170)))) (head!1011 lt!161588)))))

(declare-fun b!372522 () Bool)

(assert (=> b!372522 (= e!229001 (contains!857 (t!57247 (usedCharacters!106 (regex!805 (rule!1450 separatorToken!170)))) (head!1011 lt!161588)))))

(assert (= (and d!131040 res!166751) b!372521))

(assert (= (and b!372521 (not res!166750)) b!372522))

(assert (=> d!131040 m!551505))

(declare-fun m!552325 () Bool)

(assert (=> d!131040 m!552325))

(assert (=> d!131040 m!551507))

(declare-fun m!552327 () Bool)

(assert (=> d!131040 m!552327))

(assert (=> b!372522 m!551507))

(declare-fun m!552329 () Bool)

(assert (=> b!372522 m!552329))

(assert (=> b!372034 d!131040))

(declare-fun d!131042 () Bool)

(assert (=> d!131042 (= (head!1011 lt!161568) (h!9570 lt!161568))))

(assert (=> b!372034 d!131042))

(declare-fun d!131044 () Bool)

(declare-fun e!229002 () Bool)

(assert (=> d!131044 e!229002))

(declare-fun res!166752 () Bool)

(assert (=> d!131044 (=> (not res!166752) (not e!229002))))

(declare-fun lt!161835 () BalanceConc!2874)

(assert (=> d!131044 (= res!166752 (= (list!1802 lt!161835) (Cons!4175 separatorToken!170 Nil!4175)))))

(assert (=> d!131044 (= lt!161835 (singleton!162 separatorToken!170))))

(assert (=> d!131044 (= (singletonSeq!351 separatorToken!170) lt!161835)))

(declare-fun b!372523 () Bool)

(assert (=> b!372523 (= e!229002 (isBalanced!423 (c!73210 lt!161835)))))

(assert (= (and d!131044 res!166752) b!372523))

(declare-fun m!552331 () Bool)

(assert (=> d!131044 m!552331))

(declare-fun m!552333 () Bool)

(assert (=> d!131044 m!552333))

(declare-fun m!552335 () Bool)

(assert (=> b!372523 m!552335))

(assert (=> b!372034 d!131044))

(declare-fun d!131046 () Bool)

(declare-fun lt!161838 () Int)

(declare-fun size!3378 (List!4185) Int)

(assert (=> d!131046 (= lt!161838 (size!3378 (list!1802 (_1!2673 lt!161594))))))

(declare-fun size!3379 (Conc!1433) Int)

(assert (=> d!131046 (= lt!161838 (size!3379 (c!73210 (_1!2673 lt!161594))))))

(assert (=> d!131046 (= (size!3373 (_1!2673 lt!161594)) lt!161838)))

(declare-fun bs!45172 () Bool)

(assert (= bs!45172 d!131046))

(assert (=> bs!45172 m!551673))

(assert (=> bs!45172 m!551673))

(declare-fun m!552337 () Bool)

(assert (=> bs!45172 m!552337))

(declare-fun m!552339 () Bool)

(assert (=> bs!45172 m!552339))

(assert (=> b!372034 d!131046))

(declare-fun d!131048 () Bool)

(assert (=> d!131048 (= (list!1801 (charsOf!448 lt!161578)) (list!1804 (c!73208 (charsOf!448 lt!161578))))))

(declare-fun bs!45173 () Bool)

(assert (= bs!45173 d!131048))

(declare-fun m!552341 () Bool)

(assert (=> bs!45173 m!552341))

(assert (=> b!372034 d!131048))

(declare-fun d!131050 () Bool)

(declare-fun lt!161839 () Bool)

(assert (=> d!131050 (= lt!161839 (select (content!656 (usedCharacters!106 (regex!805 (rule!1450 lt!161578)))) lt!161599))))

(declare-fun e!229003 () Bool)

(assert (=> d!131050 (= lt!161839 e!229003)))

(declare-fun res!166754 () Bool)

(assert (=> d!131050 (=> (not res!166754) (not e!229003))))

(assert (=> d!131050 (= res!166754 ((_ is Cons!4173) (usedCharacters!106 (regex!805 (rule!1450 lt!161578)))))))

(assert (=> d!131050 (= (contains!857 (usedCharacters!106 (regex!805 (rule!1450 lt!161578))) lt!161599) lt!161839)))

(declare-fun b!372524 () Bool)

(declare-fun e!229004 () Bool)

(assert (=> b!372524 (= e!229003 e!229004)))

(declare-fun res!166753 () Bool)

(assert (=> b!372524 (=> res!166753 e!229004)))

(assert (=> b!372524 (= res!166753 (= (h!9570 (usedCharacters!106 (regex!805 (rule!1450 lt!161578)))) lt!161599))))

(declare-fun b!372525 () Bool)

(assert (=> b!372525 (= e!229004 (contains!857 (t!57247 (usedCharacters!106 (regex!805 (rule!1450 lt!161578)))) lt!161599))))

(assert (= (and d!131050 res!166754) b!372524))

(assert (= (and b!372524 (not res!166753)) b!372525))

(assert (=> d!131050 m!551475))

(declare-fun m!552343 () Bool)

(assert (=> d!131050 m!552343))

(declare-fun m!552345 () Bool)

(assert (=> d!131050 m!552345))

(declare-fun m!552347 () Bool)

(assert (=> b!372525 m!552347))

(assert (=> b!372034 d!131050))

(declare-fun d!131052 () Bool)

(assert (=> d!131052 (= (isEmpty!2973 (t!57249 tokens!465)) ((_ is Nil!4175) (t!57249 tokens!465)))))

(assert (=> b!372034 d!131052))

(declare-fun d!131054 () Bool)

(declare-fun e!229025 () Bool)

(assert (=> d!131054 e!229025))

(declare-fun res!166766 () Bool)

(assert (=> d!131054 (=> res!166766 e!229025)))

(declare-fun lt!161874 () Option!997)

(assert (=> d!131054 (= res!166766 (isEmpty!2981 lt!161874))))

(declare-fun e!229026 () Option!997)

(assert (=> d!131054 (= lt!161874 e!229026)))

(declare-fun c!73320 () Bool)

(assert (=> d!131054 (= c!73320 (and ((_ is Cons!4174) rules!1920) (= (tag!1035 (h!9571 rules!1920)) (tag!1035 (rule!1450 lt!161578)))))))

(assert (=> d!131054 (rulesInvariant!657 thiss!17480 rules!1920)))

(assert (=> d!131054 (= (getRuleFromTag!164 thiss!17480 rules!1920 (tag!1035 (rule!1450 lt!161578))) lt!161874)))

(declare-fun b!372556 () Bool)

(declare-fun e!229027 () Option!997)

(assert (=> b!372556 (= e!229027 None!996)))

(declare-fun b!372557 () Bool)

(assert (=> b!372557 (= e!229026 e!229027)))

(declare-fun c!73319 () Bool)

(assert (=> b!372557 (= c!73319 (and ((_ is Cons!4174) rules!1920) (not (= (tag!1035 (h!9571 rules!1920)) (tag!1035 (rule!1450 lt!161578))))))))

(declare-fun b!372558 () Bool)

(declare-fun lt!161875 () Unit!6616)

(declare-fun lt!161876 () Unit!6616)

(assert (=> b!372558 (= lt!161875 lt!161876)))

(assert (=> b!372558 (rulesInvariant!657 thiss!17480 (t!57248 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!54 (LexerInterface!691 Rule!1410 List!4184) Unit!6616)

(assert (=> b!372558 (= lt!161876 (lemmaInvariantOnRulesThenOnTail!54 thiss!17480 (h!9571 rules!1920) (t!57248 rules!1920)))))

(assert (=> b!372558 (= e!229027 (getRuleFromTag!164 thiss!17480 (t!57248 rules!1920) (tag!1035 (rule!1450 lt!161578))))))

(declare-fun b!372559 () Bool)

(declare-fun e!229028 () Bool)

(assert (=> b!372559 (= e!229025 e!229028)))

(declare-fun res!166765 () Bool)

(assert (=> b!372559 (=> (not res!166765) (not e!229028))))

(assert (=> b!372559 (= res!166765 (contains!856 rules!1920 (get!1461 lt!161874)))))

(declare-fun b!372560 () Bool)

(assert (=> b!372560 (= e!229028 (= (tag!1035 (get!1461 lt!161874)) (tag!1035 (rule!1450 lt!161578))))))

(declare-fun b!372561 () Bool)

(assert (=> b!372561 (= e!229026 (Some!996 (h!9571 rules!1920)))))

(assert (= (and d!131054 c!73320) b!372561))

(assert (= (and d!131054 (not c!73320)) b!372557))

(assert (= (and b!372557 c!73319) b!372558))

(assert (= (and b!372557 (not c!73319)) b!372556))

(assert (= (and d!131054 (not res!166766)) b!372559))

(assert (= (and b!372559 res!166765) b!372560))

(declare-fun m!552349 () Bool)

(assert (=> d!131054 m!552349))

(assert (=> d!131054 m!551639))

(declare-fun m!552351 () Bool)

(assert (=> b!372558 m!552351))

(declare-fun m!552353 () Bool)

(assert (=> b!372558 m!552353))

(declare-fun m!552355 () Bool)

(assert (=> b!372558 m!552355))

(declare-fun m!552357 () Bool)

(assert (=> b!372559 m!552357))

(assert (=> b!372559 m!552357))

(declare-fun m!552359 () Bool)

(assert (=> b!372559 m!552359))

(assert (=> b!372560 m!552357))

(assert (=> b!372034 d!131054))

(declare-fun d!131056 () Bool)

(assert (=> d!131056 (isPrefix!465 lt!161598 (++!1166 lt!161598 lt!161600))))

(declare-fun lt!161879 () Unit!6616)

(declare-fun choose!2978 (List!4183 List!4183) Unit!6616)

(assert (=> d!131056 (= lt!161879 (choose!2978 lt!161598 lt!161600))))

(assert (=> d!131056 (= (lemmaConcatTwoListThenFirstIsPrefix!356 lt!161598 lt!161600) lt!161879)))

(declare-fun bs!45174 () Bool)

(assert (= bs!45174 d!131056))

(assert (=> bs!45174 m!551617))

(assert (=> bs!45174 m!551617))

(declare-fun m!552361 () Bool)

(assert (=> bs!45174 m!552361))

(declare-fun m!552363 () Bool)

(assert (=> bs!45174 m!552363))

(assert (=> b!372034 d!131056))

(declare-fun d!131058 () Bool)

(assert (=> d!131058 (dynLambda!2389 lambda!11578 lt!161578)))

(declare-fun lt!161882 () Unit!6616)

(declare-fun choose!2979 (List!4185 Int Token!1354) Unit!6616)

(assert (=> d!131058 (= lt!161882 (choose!2979 tokens!465 lambda!11578 lt!161578))))

(declare-fun e!229031 () Bool)

(assert (=> d!131058 e!229031))

(declare-fun res!166769 () Bool)

(assert (=> d!131058 (=> (not res!166769) (not e!229031))))

(assert (=> d!131058 (= res!166769 (forall!1152 tokens!465 lambda!11578))))

(assert (=> d!131058 (= (forallContained!358 tokens!465 lambda!11578 lt!161578) lt!161882)))

(declare-fun b!372564 () Bool)

(declare-fun contains!859 (List!4185 Token!1354) Bool)

(assert (=> b!372564 (= e!229031 (contains!859 tokens!465 lt!161578))))

(assert (= (and d!131058 res!166769) b!372564))

(declare-fun b_lambda!14595 () Bool)

(assert (=> (not b_lambda!14595) (not d!131058)))

(declare-fun m!552365 () Bool)

(assert (=> d!131058 m!552365))

(declare-fun m!552367 () Bool)

(assert (=> d!131058 m!552367))

(declare-fun m!552369 () Bool)

(assert (=> d!131058 m!552369))

(declare-fun m!552371 () Bool)

(assert (=> b!372564 m!552371))

(assert (=> b!372034 d!131058))

(assert (=> b!372034 d!130998))

(declare-fun b!372565 () Bool)

(declare-fun res!166774 () Bool)

(declare-fun e!229033 () Bool)

(assert (=> b!372565 (=> (not res!166774) (not e!229033))))

(declare-fun lt!161887 () Option!998)

(assert (=> b!372565 (= res!166774 (= (value!27258 (_1!2674 (get!1462 lt!161887))) (apply!975 (transformation!805 (rule!1450 (_1!2674 (get!1462 lt!161887)))) (seqFromList!975 (originalCharacters!848 (_1!2674 (get!1462 lt!161887)))))))))

(declare-fun call!23635 () Option!998)

(declare-fun bm!23630 () Bool)

(assert (=> bm!23630 (= call!23635 (maxPrefixOneRule!189 thiss!17480 (h!9571 rules!1920) lt!161600))))

(declare-fun d!131060 () Bool)

(declare-fun e!229034 () Bool)

(assert (=> d!131060 e!229034))

(declare-fun res!166773 () Bool)

(assert (=> d!131060 (=> res!166773 e!229034)))

(assert (=> d!131060 (= res!166773 (isEmpty!2979 lt!161887))))

(declare-fun e!229032 () Option!998)

(assert (=> d!131060 (= lt!161887 e!229032)))

(declare-fun c!73321 () Bool)

(assert (=> d!131060 (= c!73321 (and ((_ is Cons!4174) rules!1920) ((_ is Nil!4174) (t!57248 rules!1920))))))

(declare-fun lt!161884 () Unit!6616)

(declare-fun lt!161886 () Unit!6616)

(assert (=> d!131060 (= lt!161884 lt!161886)))

(assert (=> d!131060 (isPrefix!465 lt!161600 lt!161600)))

(assert (=> d!131060 (= lt!161886 (lemmaIsPrefixRefl!255 lt!161600 lt!161600))))

(assert (=> d!131060 (rulesValidInductive!250 thiss!17480 rules!1920)))

(assert (=> d!131060 (= (maxPrefix!407 thiss!17480 rules!1920 lt!161600) lt!161887)))

(declare-fun b!372566 () Bool)

(assert (=> b!372566 (= e!229033 (contains!856 rules!1920 (rule!1450 (_1!2674 (get!1462 lt!161887)))))))

(declare-fun b!372567 () Bool)

(declare-fun lt!161885 () Option!998)

(declare-fun lt!161883 () Option!998)

(assert (=> b!372567 (= e!229032 (ite (and ((_ is None!997) lt!161885) ((_ is None!997) lt!161883)) None!997 (ite ((_ is None!997) lt!161883) lt!161885 (ite ((_ is None!997) lt!161885) lt!161883 (ite (>= (size!3372 (_1!2674 (v!15120 lt!161885))) (size!3372 (_1!2674 (v!15120 lt!161883)))) lt!161885 lt!161883)))))))

(assert (=> b!372567 (= lt!161885 call!23635)))

(assert (=> b!372567 (= lt!161883 (maxPrefix!407 thiss!17480 (t!57248 rules!1920) lt!161600))))

(declare-fun b!372568 () Bool)

(assert (=> b!372568 (= e!229034 e!229033)))

(declare-fun res!166771 () Bool)

(assert (=> b!372568 (=> (not res!166771) (not e!229033))))

(assert (=> b!372568 (= res!166771 (isDefined!836 lt!161887))))

(declare-fun b!372569 () Bool)

(declare-fun res!166770 () Bool)

(assert (=> b!372569 (=> (not res!166770) (not e!229033))))

(assert (=> b!372569 (= res!166770 (< (size!3374 (_2!2674 (get!1462 lt!161887))) (size!3374 lt!161600)))))

(declare-fun b!372570 () Bool)

(declare-fun res!166775 () Bool)

(assert (=> b!372570 (=> (not res!166775) (not e!229033))))

(assert (=> b!372570 (= res!166775 (= (++!1166 (list!1801 (charsOf!448 (_1!2674 (get!1462 lt!161887)))) (_2!2674 (get!1462 lt!161887))) lt!161600))))

(declare-fun b!372571 () Bool)

(declare-fun res!166772 () Bool)

(assert (=> b!372571 (=> (not res!166772) (not e!229033))))

(assert (=> b!372571 (= res!166772 (= (list!1801 (charsOf!448 (_1!2674 (get!1462 lt!161887)))) (originalCharacters!848 (_1!2674 (get!1462 lt!161887)))))))

(declare-fun b!372572 () Bool)

(declare-fun res!166776 () Bool)

(assert (=> b!372572 (=> (not res!166776) (not e!229033))))

(assert (=> b!372572 (= res!166776 (matchR!347 (regex!805 (rule!1450 (_1!2674 (get!1462 lt!161887)))) (list!1801 (charsOf!448 (_1!2674 (get!1462 lt!161887))))))))

(declare-fun b!372573 () Bool)

(assert (=> b!372573 (= e!229032 call!23635)))

(assert (= (and d!131060 c!73321) b!372573))

(assert (= (and d!131060 (not c!73321)) b!372567))

(assert (= (or b!372573 b!372567) bm!23630))

(assert (= (and d!131060 (not res!166773)) b!372568))

(assert (= (and b!372568 res!166771) b!372571))

(assert (= (and b!372571 res!166772) b!372569))

(assert (= (and b!372569 res!166770) b!372570))

(assert (= (and b!372570 res!166775) b!372565))

(assert (= (and b!372565 res!166774) b!372572))

(assert (= (and b!372572 res!166776) b!372566))

(declare-fun m!552373 () Bool)

(assert (=> bm!23630 m!552373))

(declare-fun m!552375 () Bool)

(assert (=> b!372567 m!552375))

(declare-fun m!552377 () Bool)

(assert (=> b!372570 m!552377))

(declare-fun m!552379 () Bool)

(assert (=> b!372570 m!552379))

(assert (=> b!372570 m!552379))

(declare-fun m!552381 () Bool)

(assert (=> b!372570 m!552381))

(assert (=> b!372570 m!552381))

(declare-fun m!552383 () Bool)

(assert (=> b!372570 m!552383))

(assert (=> b!372566 m!552377))

(declare-fun m!552385 () Bool)

(assert (=> b!372566 m!552385))

(declare-fun m!552387 () Bool)

(assert (=> b!372568 m!552387))

(declare-fun m!552389 () Bool)

(assert (=> d!131060 m!552389))

(declare-fun m!552391 () Bool)

(assert (=> d!131060 m!552391))

(declare-fun m!552393 () Bool)

(assert (=> d!131060 m!552393))

(assert (=> d!131060 m!552253))

(assert (=> b!372565 m!552377))

(declare-fun m!552395 () Bool)

(assert (=> b!372565 m!552395))

(assert (=> b!372565 m!552395))

(declare-fun m!552397 () Bool)

(assert (=> b!372565 m!552397))

(assert (=> b!372569 m!552377))

(declare-fun m!552399 () Bool)

(assert (=> b!372569 m!552399))

(assert (=> b!372569 m!551807))

(assert (=> b!372571 m!552377))

(assert (=> b!372571 m!552379))

(assert (=> b!372571 m!552379))

(assert (=> b!372571 m!552381))

(assert (=> b!372572 m!552377))

(assert (=> b!372572 m!552379))

(assert (=> b!372572 m!552379))

(assert (=> b!372572 m!552381))

(assert (=> b!372572 m!552381))

(declare-fun m!552401 () Bool)

(assert (=> b!372572 m!552401))

(assert (=> b!372034 d!131060))

(declare-fun b!372583 () Bool)

(declare-fun e!229042 () Bool)

(declare-fun lt!161902 () tuple2!4914)

(assert (=> b!372583 (= e!229042 (= (_2!2673 lt!161902) lt!161570))))

(declare-fun d!131062 () Bool)

(declare-fun e!229043 () Bool)

(assert (=> d!131062 e!229043))

(declare-fun res!166781 () Bool)

(assert (=> d!131062 (=> (not res!166781) (not e!229043))))

(assert (=> d!131062 (= res!166781 e!229042)))

(declare-fun c!73325 () Bool)

(assert (=> d!131062 (= c!73325 (> (size!3373 (_1!2673 lt!161902)) 0))))

(assert (=> d!131062 (= lt!161902 (lexTailRecV2!224 thiss!17480 rules!1920 lt!161570 (BalanceConc!2873 Empty!1432) lt!161570 (BalanceConc!2875 Empty!1433)))))

(assert (=> d!131062 (= (lex!483 thiss!17480 rules!1920 lt!161570) lt!161902)))

(declare-fun b!372584 () Bool)

(declare-fun res!166782 () Bool)

(assert (=> b!372584 (=> (not res!166782) (not e!229043))))

(assert (=> b!372584 (= res!166782 (= (list!1802 (_1!2673 lt!161902)) (_1!2677 (lexList!257 thiss!17480 rules!1920 (list!1801 lt!161570)))))))

(declare-fun b!372585 () Bool)

(declare-fun e!229041 () Bool)

(assert (=> b!372585 (= e!229042 e!229041)))

(declare-fun res!166780 () Bool)

(assert (=> b!372585 (= res!166780 (< (size!3377 (_2!2673 lt!161902)) (size!3377 lt!161570)))))

(assert (=> b!372585 (=> (not res!166780) (not e!229041))))

(declare-fun b!372586 () Bool)

(assert (=> b!372586 (= e!229041 (not (isEmpty!2971 (_1!2673 lt!161902))))))

(declare-fun b!372587 () Bool)

(assert (=> b!372587 (= e!229043 (= (list!1801 (_2!2673 lt!161902)) (_2!2677 (lexList!257 thiss!17480 rules!1920 (list!1801 lt!161570)))))))

(assert (= (and d!131062 c!73325) b!372585))

(assert (= (and d!131062 (not c!73325)) b!372583))

(assert (= (and b!372585 res!166780) b!372586))

(assert (= (and d!131062 res!166781) b!372584))

(assert (= (and b!372584 res!166782) b!372587))

(declare-fun m!552403 () Bool)

(assert (=> d!131062 m!552403))

(declare-fun m!552405 () Bool)

(assert (=> d!131062 m!552405))

(declare-fun m!552407 () Bool)

(assert (=> b!372586 m!552407))

(declare-fun m!552409 () Bool)

(assert (=> b!372585 m!552409))

(declare-fun m!552411 () Bool)

(assert (=> b!372585 m!552411))

(declare-fun m!552413 () Bool)

(assert (=> b!372587 m!552413))

(declare-fun m!552415 () Bool)

(assert (=> b!372587 m!552415))

(assert (=> b!372587 m!552415))

(declare-fun m!552417 () Bool)

(assert (=> b!372587 m!552417))

(declare-fun m!552419 () Bool)

(assert (=> b!372584 m!552419))

(assert (=> b!372584 m!552415))

(assert (=> b!372584 m!552415))

(assert (=> b!372584 m!552417))

(assert (=> b!372034 d!131062))

(declare-fun d!131064 () Bool)

(declare-fun lt!161903 () Bool)

(declare-fun e!229048 () Bool)

(assert (=> d!131064 (= lt!161903 e!229048)))

(declare-fun res!166784 () Bool)

(assert (=> d!131064 (=> (not res!166784) (not e!229048))))

(assert (=> d!131064 (= res!166784 (= (list!1802 (_1!2673 (lex!483 thiss!17480 rules!1920 (print!416 thiss!17480 (singletonSeq!351 lt!161578))))) (list!1802 (singletonSeq!351 lt!161578))))))

(declare-fun e!229047 () Bool)

(assert (=> d!131064 (= lt!161903 e!229047)))

(declare-fun res!166785 () Bool)

(assert (=> d!131064 (=> (not res!166785) (not e!229047))))

(declare-fun lt!161904 () tuple2!4914)

(assert (=> d!131064 (= res!166785 (= (size!3373 (_1!2673 lt!161904)) 1))))

(assert (=> d!131064 (= lt!161904 (lex!483 thiss!17480 rules!1920 (print!416 thiss!17480 (singletonSeq!351 lt!161578))))))

(assert (=> d!131064 (not (isEmpty!2974 rules!1920))))

(assert (=> d!131064 (= (rulesProduceIndividualToken!440 thiss!17480 rules!1920 lt!161578) lt!161903)))

(declare-fun b!372591 () Bool)

(declare-fun res!166783 () Bool)

(assert (=> b!372591 (=> (not res!166783) (not e!229047))))

(assert (=> b!372591 (= res!166783 (= (apply!970 (_1!2673 lt!161904) 0) lt!161578))))

(declare-fun b!372592 () Bool)

(assert (=> b!372592 (= e!229047 (isEmpty!2972 (_2!2673 lt!161904)))))

(declare-fun b!372593 () Bool)

(assert (=> b!372593 (= e!229048 (isEmpty!2972 (_2!2673 (lex!483 thiss!17480 rules!1920 (print!416 thiss!17480 (singletonSeq!351 lt!161578))))))))

(assert (= (and d!131064 res!166785) b!372591))

(assert (= (and b!372591 res!166783) b!372592))

(assert (= (and d!131064 res!166784) b!372593))

(declare-fun m!552421 () Bool)

(assert (=> d!131064 m!552421))

(declare-fun m!552423 () Bool)

(assert (=> d!131064 m!552423))

(declare-fun m!552425 () Bool)

(assert (=> d!131064 m!552425))

(assert (=> d!131064 m!551517))

(assert (=> d!131064 m!551517))

(assert (=> d!131064 m!552421))

(assert (=> d!131064 m!551517))

(declare-fun m!552427 () Bool)

(assert (=> d!131064 m!552427))

(declare-fun m!552429 () Bool)

(assert (=> d!131064 m!552429))

(assert (=> d!131064 m!551551))

(declare-fun m!552431 () Bool)

(assert (=> b!372591 m!552431))

(declare-fun m!552433 () Bool)

(assert (=> b!372592 m!552433))

(assert (=> b!372593 m!551517))

(assert (=> b!372593 m!551517))

(assert (=> b!372593 m!552421))

(assert (=> b!372593 m!552421))

(assert (=> b!372593 m!552423))

(declare-fun m!552435 () Bool)

(assert (=> b!372593 m!552435))

(assert (=> b!372034 d!131064))

(declare-fun d!131066 () Bool)

(assert (=> d!131066 (= lt!161600 (_2!2674 lt!161582))))

(declare-fun lt!161907 () Unit!6616)

(declare-fun choose!2980 (List!4183 List!4183 List!4183 List!4183 List!4183) Unit!6616)

(assert (=> d!131066 (= lt!161907 (choose!2980 lt!161598 lt!161600 lt!161598 (_2!2674 lt!161582) lt!161565))))

(assert (=> d!131066 (isPrefix!465 lt!161598 lt!161565)))

(assert (=> d!131066 (= (lemmaSamePrefixThenSameSuffix!250 lt!161598 lt!161600 lt!161598 (_2!2674 lt!161582) lt!161565) lt!161907)))

(declare-fun bs!45182 () Bool)

(assert (= bs!45182 d!131066))

(declare-fun m!552497 () Bool)

(assert (=> bs!45182 m!552497))

(declare-fun m!552499 () Bool)

(assert (=> bs!45182 m!552499))

(assert (=> b!372034 d!131066))

(declare-fun d!131070 () Bool)

(assert (=> d!131070 (= (isEmpty!2973 tokens!465) ((_ is Nil!4175) tokens!465))))

(assert (=> b!372034 d!131070))

(declare-fun d!131072 () Bool)

(assert (=> d!131072 (rulesProduceIndividualToken!440 thiss!17480 rules!1920 lt!161578)))

(declare-fun lt!161920 () Unit!6616)

(declare-fun choose!2981 (LexerInterface!691 List!4184 List!4185 Token!1354) Unit!6616)

(assert (=> d!131072 (= lt!161920 (choose!2981 thiss!17480 rules!1920 tokens!465 lt!161578))))

(assert (=> d!131072 (not (isEmpty!2974 rules!1920))))

(assert (=> d!131072 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!154 thiss!17480 rules!1920 tokens!465 lt!161578) lt!161920)))

(declare-fun bs!45185 () Bool)

(assert (= bs!45185 d!131072))

(assert (=> bs!45185 m!551481))

(declare-fun m!552553 () Bool)

(assert (=> bs!45185 m!552553))

(assert (=> bs!45185 m!551551))

(assert (=> b!372034 d!131072))

(declare-fun d!131088 () Bool)

(declare-fun e!229059 () Bool)

(assert (=> d!131088 e!229059))

(declare-fun res!166792 () Bool)

(assert (=> d!131088 (=> (not res!166792) (not e!229059))))

(assert (=> d!131088 (= res!166792 (isDefined!838 (getRuleFromTag!164 thiss!17480 rules!1920 (tag!1035 (rule!1450 lt!161578)))))))

(declare-fun lt!161921 () Unit!6616)

(assert (=> d!131088 (= lt!161921 (choose!2976 thiss!17480 rules!1920 lt!161568 lt!161578))))

(assert (=> d!131088 (rulesInvariant!657 thiss!17480 rules!1920)))

(assert (=> d!131088 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!164 thiss!17480 rules!1920 lt!161568 lt!161578) lt!161921)))

(declare-fun b!372612 () Bool)

(declare-fun res!166793 () Bool)

(assert (=> b!372612 (=> (not res!166793) (not e!229059))))

(assert (=> b!372612 (= res!166793 (matchR!347 (regex!805 (get!1461 (getRuleFromTag!164 thiss!17480 rules!1920 (tag!1035 (rule!1450 lt!161578))))) (list!1801 (charsOf!448 lt!161578))))))

(declare-fun b!372613 () Bool)

(assert (=> b!372613 (= e!229059 (= (rule!1450 lt!161578) (get!1461 (getRuleFromTag!164 thiss!17480 rules!1920 (tag!1035 (rule!1450 lt!161578))))))))

(assert (= (and d!131088 res!166792) b!372612))

(assert (= (and b!372612 res!166793) b!372613))

(assert (=> d!131088 m!551483))

(assert (=> d!131088 m!551483))

(declare-fun m!552555 () Bool)

(assert (=> d!131088 m!552555))

(declare-fun m!552557 () Bool)

(assert (=> d!131088 m!552557))

(assert (=> d!131088 m!551639))

(assert (=> b!372612 m!551491))

(assert (=> b!372612 m!551483))

(declare-fun m!552559 () Bool)

(assert (=> b!372612 m!552559))

(assert (=> b!372612 m!551483))

(assert (=> b!372612 m!551491))

(assert (=> b!372612 m!551513))

(assert (=> b!372612 m!551513))

(declare-fun m!552561 () Bool)

(assert (=> b!372612 m!552561))

(assert (=> b!372613 m!551483))

(assert (=> b!372613 m!551483))

(assert (=> b!372613 m!552559))

(assert (=> b!372034 d!131088))

(declare-fun b!372625 () Bool)

(declare-fun e!229068 () Bool)

(assert (=> b!372625 (= e!229068 (>= (size!3374 lt!161572) (size!3374 lt!161598)))))

(declare-fun b!372622 () Bool)

(declare-fun e!229067 () Bool)

(declare-fun e!229066 () Bool)

(assert (=> b!372622 (= e!229067 e!229066)))

(declare-fun res!166804 () Bool)

(assert (=> b!372622 (=> (not res!166804) (not e!229066))))

(assert (=> b!372622 (= res!166804 (not ((_ is Nil!4173) lt!161572)))))

(declare-fun d!131090 () Bool)

(assert (=> d!131090 e!229068))

(declare-fun res!166805 () Bool)

(assert (=> d!131090 (=> res!166805 e!229068)))

(declare-fun lt!161924 () Bool)

(assert (=> d!131090 (= res!166805 (not lt!161924))))

(assert (=> d!131090 (= lt!161924 e!229067)))

(declare-fun res!166803 () Bool)

(assert (=> d!131090 (=> res!166803 e!229067)))

(assert (=> d!131090 (= res!166803 ((_ is Nil!4173) lt!161598))))

(assert (=> d!131090 (= (isPrefix!465 lt!161598 lt!161572) lt!161924)))

(declare-fun b!372624 () Bool)

(assert (=> b!372624 (= e!229066 (isPrefix!465 (tail!571 lt!161598) (tail!571 lt!161572)))))

(declare-fun b!372623 () Bool)

(declare-fun res!166802 () Bool)

(assert (=> b!372623 (=> (not res!166802) (not e!229066))))

(assert (=> b!372623 (= res!166802 (= (head!1011 lt!161598) (head!1011 lt!161572)))))

(assert (= (and d!131090 (not res!166803)) b!372622))

(assert (= (and b!372622 res!166804) b!372623))

(assert (= (and b!372623 res!166802) b!372624))

(assert (= (and d!131090 (not res!166805)) b!372625))

(declare-fun m!552563 () Bool)

(assert (=> b!372625 m!552563))

(assert (=> b!372625 m!551805))

(assert (=> b!372624 m!551655))

(declare-fun m!552565 () Bool)

(assert (=> b!372624 m!552565))

(assert (=> b!372624 m!551655))

(assert (=> b!372624 m!552565))

(declare-fun m!552567 () Bool)

(assert (=> b!372624 m!552567))

(assert (=> b!372623 m!551659))

(declare-fun m!552569 () Bool)

(assert (=> b!372623 m!552569))

(assert (=> b!372034 d!131090))

(declare-fun d!131092 () Bool)

(declare-fun e!229069 () Bool)

(assert (=> d!131092 e!229069))

(declare-fun res!166807 () Bool)

(assert (=> d!131092 (=> res!166807 e!229069)))

(declare-fun lt!161925 () Option!997)

(assert (=> d!131092 (= res!166807 (isEmpty!2981 lt!161925))))

(declare-fun e!229070 () Option!997)

(assert (=> d!131092 (= lt!161925 e!229070)))

(declare-fun c!73330 () Bool)

(assert (=> d!131092 (= c!73330 (and ((_ is Cons!4174) rules!1920) (= (tag!1035 (h!9571 rules!1920)) (tag!1035 (rule!1450 separatorToken!170)))))))

(assert (=> d!131092 (rulesInvariant!657 thiss!17480 rules!1920)))

(assert (=> d!131092 (= (getRuleFromTag!164 thiss!17480 rules!1920 (tag!1035 (rule!1450 separatorToken!170))) lt!161925)))

(declare-fun b!372626 () Bool)

(declare-fun e!229071 () Option!997)

(assert (=> b!372626 (= e!229071 None!996)))

(declare-fun b!372627 () Bool)

(assert (=> b!372627 (= e!229070 e!229071)))

(declare-fun c!73329 () Bool)

(assert (=> b!372627 (= c!73329 (and ((_ is Cons!4174) rules!1920) (not (= (tag!1035 (h!9571 rules!1920)) (tag!1035 (rule!1450 separatorToken!170))))))))

(declare-fun b!372628 () Bool)

(declare-fun lt!161926 () Unit!6616)

(declare-fun lt!161927 () Unit!6616)

(assert (=> b!372628 (= lt!161926 lt!161927)))

(assert (=> b!372628 (rulesInvariant!657 thiss!17480 (t!57248 rules!1920))))

(assert (=> b!372628 (= lt!161927 (lemmaInvariantOnRulesThenOnTail!54 thiss!17480 (h!9571 rules!1920) (t!57248 rules!1920)))))

(assert (=> b!372628 (= e!229071 (getRuleFromTag!164 thiss!17480 (t!57248 rules!1920) (tag!1035 (rule!1450 separatorToken!170))))))

(declare-fun b!372629 () Bool)

(declare-fun e!229072 () Bool)

(assert (=> b!372629 (= e!229069 e!229072)))

(declare-fun res!166806 () Bool)

(assert (=> b!372629 (=> (not res!166806) (not e!229072))))

(assert (=> b!372629 (= res!166806 (contains!856 rules!1920 (get!1461 lt!161925)))))

(declare-fun b!372630 () Bool)

(assert (=> b!372630 (= e!229072 (= (tag!1035 (get!1461 lt!161925)) (tag!1035 (rule!1450 separatorToken!170))))))

(declare-fun b!372631 () Bool)

(assert (=> b!372631 (= e!229070 (Some!996 (h!9571 rules!1920)))))

(assert (= (and d!131092 c!73330) b!372631))

(assert (= (and d!131092 (not c!73330)) b!372627))

(assert (= (and b!372627 c!73329) b!372628))

(assert (= (and b!372627 (not c!73329)) b!372626))

(assert (= (and d!131092 (not res!166807)) b!372629))

(assert (= (and b!372629 res!166806) b!372630))

(declare-fun m!552571 () Bool)

(assert (=> d!131092 m!552571))

(assert (=> d!131092 m!551639))

(assert (=> b!372628 m!552351))

(assert (=> b!372628 m!552353))

(declare-fun m!552573 () Bool)

(assert (=> b!372628 m!552573))

(declare-fun m!552575 () Bool)

(assert (=> b!372629 m!552575))

(assert (=> b!372629 m!552575))

(declare-fun m!552577 () Bool)

(assert (=> b!372629 m!552577))

(assert (=> b!372630 m!552575))

(assert (=> b!372034 d!131092))

(declare-fun d!131094 () Bool)

(assert (=> d!131094 (= (head!1011 lt!161588) (h!9570 lt!161588))))

(assert (=> b!372034 d!131094))

(declare-fun d!131096 () Bool)

(assert (=> d!131096 (= (get!1462 (maxPrefix!407 thiss!17480 rules!1920 lt!161565)) (v!15120 (maxPrefix!407 thiss!17480 rules!1920 lt!161565)))))

(assert (=> b!372034 d!131096))

(declare-fun d!131098 () Bool)

(declare-fun lt!161942 () BalanceConc!2872)

(declare-fun printListTailRec!177 (LexerInterface!691 List!4185 List!4183) List!4183)

(assert (=> d!131098 (= (list!1801 lt!161942) (printListTailRec!177 thiss!17480 (dropList!211 lt!161557 0) (list!1801 (BalanceConc!2873 Empty!1432))))))

(declare-fun e!229077 () BalanceConc!2872)

(assert (=> d!131098 (= lt!161942 e!229077)))

(declare-fun c!73333 () Bool)

(assert (=> d!131098 (= c!73333 (>= 0 (size!3373 lt!161557)))))

(declare-fun e!229078 () Bool)

(assert (=> d!131098 e!229078))

(declare-fun res!166810 () Bool)

(assert (=> d!131098 (=> (not res!166810) (not e!229078))))

(assert (=> d!131098 (= res!166810 (>= 0 0))))

(assert (=> d!131098 (= (printTailRec!377 thiss!17480 lt!161557 0 (BalanceConc!2873 Empty!1432)) lt!161942)))

(declare-fun b!372638 () Bool)

(assert (=> b!372638 (= e!229078 (<= 0 (size!3373 lt!161557)))))

(declare-fun b!372639 () Bool)

(assert (=> b!372639 (= e!229077 (BalanceConc!2873 Empty!1432))))

(declare-fun b!372640 () Bool)

(assert (=> b!372640 (= e!229077 (printTailRec!377 thiss!17480 lt!161557 (+ 0 1) (++!1167 (BalanceConc!2873 Empty!1432) (charsOf!448 (apply!970 lt!161557 0)))))))

(declare-fun lt!161944 () List!4185)

(assert (=> b!372640 (= lt!161944 (list!1802 lt!161557))))

(declare-fun lt!161948 () Unit!6616)

(assert (=> b!372640 (= lt!161948 (lemmaDropApply!251 lt!161944 0))))

(assert (=> b!372640 (= (head!1012 (drop!274 lt!161944 0)) (apply!971 lt!161944 0))))

(declare-fun lt!161943 () Unit!6616)

(assert (=> b!372640 (= lt!161943 lt!161948)))

(declare-fun lt!161947 () List!4185)

(assert (=> b!372640 (= lt!161947 (list!1802 lt!161557))))

(declare-fun lt!161945 () Unit!6616)

(assert (=> b!372640 (= lt!161945 (lemmaDropTail!243 lt!161947 0))))

(assert (=> b!372640 (= (tail!572 (drop!274 lt!161947 0)) (drop!274 lt!161947 (+ 0 1)))))

(declare-fun lt!161946 () Unit!6616)

(assert (=> b!372640 (= lt!161946 lt!161945)))

(assert (= (and d!131098 res!166810) b!372638))

(assert (= (and d!131098 c!73333) b!372639))

(assert (= (and d!131098 (not c!73333)) b!372640))

(declare-fun m!552579 () Bool)

(assert (=> d!131098 m!552579))

(declare-fun m!552581 () Bool)

(assert (=> d!131098 m!552581))

(declare-fun m!552583 () Bool)

(assert (=> d!131098 m!552583))

(declare-fun m!552585 () Bool)

(assert (=> d!131098 m!552585))

(assert (=> d!131098 m!552579))

(assert (=> d!131098 m!552581))

(declare-fun m!552587 () Bool)

(assert (=> d!131098 m!552587))

(assert (=> b!372638 m!552587))

(assert (=> b!372640 m!552299))

(declare-fun m!552589 () Bool)

(assert (=> b!372640 m!552589))

(declare-fun m!552591 () Bool)

(assert (=> b!372640 m!552591))

(declare-fun m!552593 () Bool)

(assert (=> b!372640 m!552593))

(declare-fun m!552595 () Bool)

(assert (=> b!372640 m!552595))

(assert (=> b!372640 m!552589))

(declare-fun m!552597 () Bool)

(assert (=> b!372640 m!552597))

(declare-fun m!552599 () Bool)

(assert (=> b!372640 m!552599))

(declare-fun m!552601 () Bool)

(assert (=> b!372640 m!552601))

(declare-fun m!552603 () Bool)

(assert (=> b!372640 m!552603))

(assert (=> b!372640 m!552601))

(declare-fun m!552605 () Bool)

(assert (=> b!372640 m!552605))

(assert (=> b!372640 m!552591))

(assert (=> b!372640 m!552597))

(declare-fun m!552607 () Bool)

(assert (=> b!372640 m!552607))

(assert (=> b!372640 m!552593))

(declare-fun m!552609 () Bool)

(assert (=> b!372640 m!552609))

(declare-fun m!552611 () Bool)

(assert (=> b!372640 m!552611))

(assert (=> b!372034 d!131098))

(declare-fun d!131100 () Bool)

(assert (=> d!131100 (= (head!1012 (t!57249 tokens!465)) (h!9572 (t!57249 tokens!465)))))

(assert (=> b!372034 d!131100))

(declare-fun d!131102 () Bool)

(declare-fun e!229161 () Bool)

(assert (=> d!131102 e!229161))

(declare-fun res!166857 () Bool)

(assert (=> d!131102 (=> res!166857 e!229161)))

(assert (=> d!131102 (= res!166857 (isEmpty!2973 tokens!465))))

(declare-fun lt!162019 () Unit!6616)

(declare-fun choose!2982 (LexerInterface!691 List!4184 List!4185 Token!1354) Unit!6616)

(assert (=> d!131102 (= lt!162019 (choose!2982 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!131102 (not (isEmpty!2974 rules!1920))))

(assert (=> d!131102 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!212 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!162019)))

(declare-fun b!372777 () Bool)

(declare-fun e!229160 () Bool)

(assert (=> b!372777 (= e!229161 e!229160)))

(declare-fun res!166858 () Bool)

(assert (=> b!372777 (=> (not res!166858) (not e!229160))))

(assert (=> b!372777 (= res!166858 (isDefined!836 (maxPrefix!407 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!372 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!372778 () Bool)

(assert (=> b!372778 (= e!229160 (= (_1!2674 (get!1462 (maxPrefix!407 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!372 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1012 tokens!465)))))

(assert (= (and d!131102 (not res!166857)) b!372777))

(assert (= (and b!372777 res!166858) b!372778))

(assert (=> d!131102 m!551473))

(declare-fun m!552883 () Bool)

(assert (=> d!131102 m!552883))

(assert (=> d!131102 m!551551))

(assert (=> b!372777 m!551557))

(assert (=> b!372777 m!551557))

(declare-fun m!552885 () Bool)

(assert (=> b!372777 m!552885))

(assert (=> b!372777 m!552885))

(declare-fun m!552887 () Bool)

(assert (=> b!372777 m!552887))

(assert (=> b!372778 m!551557))

(assert (=> b!372778 m!551557))

(assert (=> b!372778 m!552885))

(assert (=> b!372778 m!552885))

(declare-fun m!552889 () Bool)

(assert (=> b!372778 m!552889))

(assert (=> b!372778 m!551645))

(assert (=> b!372034 d!131102))

(declare-fun d!131160 () Bool)

(declare-fun lt!162020 () BalanceConc!2872)

(assert (=> d!131160 (= (list!1801 lt!162020) (printList!365 thiss!17480 (list!1802 lt!161559)))))

(assert (=> d!131160 (= lt!162020 (printTailRec!377 thiss!17480 lt!161559 0 (BalanceConc!2873 Empty!1432)))))

(assert (=> d!131160 (= (print!416 thiss!17480 lt!161559) lt!162020)))

(declare-fun bs!45197 () Bool)

(assert (= bs!45197 d!131160))

(declare-fun m!552891 () Bool)

(assert (=> bs!45197 m!552891))

(declare-fun m!552893 () Bool)

(assert (=> bs!45197 m!552893))

(assert (=> bs!45197 m!552893))

(declare-fun m!552895 () Bool)

(assert (=> bs!45197 m!552895))

(assert (=> bs!45197 m!551489))

(assert (=> b!372034 d!131160))

(declare-fun d!131162 () Bool)

(declare-fun lt!162021 () Int)

(assert (=> d!131162 (= lt!162021 (size!3378 (list!1802 (_1!2673 lt!161592))))))

(assert (=> d!131162 (= lt!162021 (size!3379 (c!73210 (_1!2673 lt!161592))))))

(assert (=> d!131162 (= (size!3373 (_1!2673 lt!161592)) lt!162021)))

(declare-fun bs!45198 () Bool)

(assert (= bs!45198 d!131162))

(declare-fun m!552897 () Bool)

(assert (=> bs!45198 m!552897))

(assert (=> bs!45198 m!552897))

(declare-fun m!552899 () Bool)

(assert (=> bs!45198 m!552899))

(declare-fun m!552901 () Bool)

(assert (=> bs!45198 m!552901))

(assert (=> b!372034 d!131162))

(declare-fun d!131164 () Bool)

(declare-fun lt!162022 () BalanceConc!2872)

(assert (=> d!131164 (= (list!1801 lt!162022) (printListTailRec!177 thiss!17480 (dropList!211 lt!161559 0) (list!1801 (BalanceConc!2873 Empty!1432))))))

(declare-fun e!229162 () BalanceConc!2872)

(assert (=> d!131164 (= lt!162022 e!229162)))

(declare-fun c!73377 () Bool)

(assert (=> d!131164 (= c!73377 (>= 0 (size!3373 lt!161559)))))

(declare-fun e!229163 () Bool)

(assert (=> d!131164 e!229163))

(declare-fun res!166859 () Bool)

(assert (=> d!131164 (=> (not res!166859) (not e!229163))))

(assert (=> d!131164 (= res!166859 (>= 0 0))))

(assert (=> d!131164 (= (printTailRec!377 thiss!17480 lt!161559 0 (BalanceConc!2873 Empty!1432)) lt!162022)))

(declare-fun b!372779 () Bool)

(assert (=> b!372779 (= e!229163 (<= 0 (size!3373 lt!161559)))))

(declare-fun b!372780 () Bool)

(assert (=> b!372780 (= e!229162 (BalanceConc!2873 Empty!1432))))

(declare-fun b!372781 () Bool)

(assert (=> b!372781 (= e!229162 (printTailRec!377 thiss!17480 lt!161559 (+ 0 1) (++!1167 (BalanceConc!2873 Empty!1432) (charsOf!448 (apply!970 lt!161559 0)))))))

(declare-fun lt!162024 () List!4185)

(assert (=> b!372781 (= lt!162024 (list!1802 lt!161559))))

(declare-fun lt!162028 () Unit!6616)

(assert (=> b!372781 (= lt!162028 (lemmaDropApply!251 lt!162024 0))))

(assert (=> b!372781 (= (head!1012 (drop!274 lt!162024 0)) (apply!971 lt!162024 0))))

(declare-fun lt!162023 () Unit!6616)

(assert (=> b!372781 (= lt!162023 lt!162028)))

(declare-fun lt!162027 () List!4185)

(assert (=> b!372781 (= lt!162027 (list!1802 lt!161559))))

(declare-fun lt!162025 () Unit!6616)

(assert (=> b!372781 (= lt!162025 (lemmaDropTail!243 lt!162027 0))))

(assert (=> b!372781 (= (tail!572 (drop!274 lt!162027 0)) (drop!274 lt!162027 (+ 0 1)))))

(declare-fun lt!162026 () Unit!6616)

(assert (=> b!372781 (= lt!162026 lt!162025)))

(assert (= (and d!131164 res!166859) b!372779))

(assert (= (and d!131164 c!73377) b!372780))

(assert (= (and d!131164 (not c!73377)) b!372781))

(declare-fun m!552903 () Bool)

(assert (=> d!131164 m!552903))

(assert (=> d!131164 m!552581))

(declare-fun m!552905 () Bool)

(assert (=> d!131164 m!552905))

(declare-fun m!552907 () Bool)

(assert (=> d!131164 m!552907))

(assert (=> d!131164 m!552903))

(assert (=> d!131164 m!552581))

(declare-fun m!552909 () Bool)

(assert (=> d!131164 m!552909))

(assert (=> b!372779 m!552909))

(assert (=> b!372781 m!552893))

(declare-fun m!552911 () Bool)

(assert (=> b!372781 m!552911))

(declare-fun m!552913 () Bool)

(assert (=> b!372781 m!552913))

(declare-fun m!552915 () Bool)

(assert (=> b!372781 m!552915))

(declare-fun m!552917 () Bool)

(assert (=> b!372781 m!552917))

(assert (=> b!372781 m!552911))

(declare-fun m!552919 () Bool)

(assert (=> b!372781 m!552919))

(declare-fun m!552921 () Bool)

(assert (=> b!372781 m!552921))

(declare-fun m!552923 () Bool)

(assert (=> b!372781 m!552923))

(declare-fun m!552925 () Bool)

(assert (=> b!372781 m!552925))

(assert (=> b!372781 m!552923))

(declare-fun m!552927 () Bool)

(assert (=> b!372781 m!552927))

(assert (=> b!372781 m!552913))

(assert (=> b!372781 m!552919))

(declare-fun m!552929 () Bool)

(assert (=> b!372781 m!552929))

(assert (=> b!372781 m!552915))

(declare-fun m!552931 () Bool)

(assert (=> b!372781 m!552931))

(declare-fun m!552933 () Bool)

(assert (=> b!372781 m!552933))

(assert (=> b!372034 d!131164))

(declare-fun b!372798 () Bool)

(declare-fun c!73388 () Bool)

(assert (=> b!372798 (= c!73388 ((_ is Star!1029) (regex!805 (rule!1450 lt!161578))))))

(declare-fun e!229175 () List!4183)

(declare-fun e!229174 () List!4183)

(assert (=> b!372798 (= e!229175 e!229174)))

(declare-fun b!372799 () Bool)

(declare-fun call!23683 () List!4183)

(assert (=> b!372799 (= e!229174 call!23683)))

(declare-fun d!131166 () Bool)

(declare-fun c!73389 () Bool)

(assert (=> d!131166 (= c!73389 (or ((_ is EmptyExpr!1029) (regex!805 (rule!1450 lt!161578))) ((_ is EmptyLang!1029) (regex!805 (rule!1450 lt!161578)))))))

(declare-fun e!229173 () List!4183)

(assert (=> d!131166 (= (usedCharacters!106 (regex!805 (rule!1450 lt!161578))) e!229173)))

(declare-fun c!73386 () Bool)

(declare-fun bm!23676 () Bool)

(assert (=> bm!23676 (= call!23683 (usedCharacters!106 (ite c!73388 (reg!1358 (regex!805 (rule!1450 lt!161578))) (ite c!73386 (regOne!2571 (regex!805 (rule!1450 lt!161578))) (regOne!2570 (regex!805 (rule!1450 lt!161578)))))))))

(declare-fun bm!23677 () Bool)

(declare-fun call!23681 () List!4183)

(declare-fun call!23682 () List!4183)

(declare-fun call!23684 () List!4183)

(assert (=> bm!23677 (= call!23681 (++!1166 call!23682 call!23684))))

(declare-fun b!372800 () Bool)

(declare-fun e!229172 () List!4183)

(assert (=> b!372800 (= e!229172 call!23681)))

(declare-fun b!372801 () Bool)

(assert (=> b!372801 (= e!229172 call!23681)))

(declare-fun b!372802 () Bool)

(assert (=> b!372802 (= e!229173 Nil!4173)))

(declare-fun bm!23678 () Bool)

(assert (=> bm!23678 (= call!23684 (usedCharacters!106 (ite c!73386 (regTwo!2571 (regex!805 (rule!1450 lt!161578))) (regTwo!2570 (regex!805 (rule!1450 lt!161578))))))))

(declare-fun b!372803 () Bool)

(assert (=> b!372803 (= e!229173 e!229175)))

(declare-fun c!73387 () Bool)

(assert (=> b!372803 (= c!73387 ((_ is ElementMatch!1029) (regex!805 (rule!1450 lt!161578))))))

(declare-fun b!372804 () Bool)

(assert (=> b!372804 (= e!229174 e!229172)))

(assert (=> b!372804 (= c!73386 ((_ is Union!1029) (regex!805 (rule!1450 lt!161578))))))

(declare-fun b!372805 () Bool)

(assert (=> b!372805 (= e!229175 (Cons!4173 (c!73209 (regex!805 (rule!1450 lt!161578))) Nil!4173))))

(declare-fun bm!23679 () Bool)

(assert (=> bm!23679 (= call!23682 call!23683)))

(assert (= (and d!131166 c!73389) b!372802))

(assert (= (and d!131166 (not c!73389)) b!372803))

(assert (= (and b!372803 c!73387) b!372805))

(assert (= (and b!372803 (not c!73387)) b!372798))

(assert (= (and b!372798 c!73388) b!372799))

(assert (= (and b!372798 (not c!73388)) b!372804))

(assert (= (and b!372804 c!73386) b!372801))

(assert (= (and b!372804 (not c!73386)) b!372800))

(assert (= (or b!372801 b!372800) bm!23679))

(assert (= (or b!372801 b!372800) bm!23678))

(assert (= (or b!372801 b!372800) bm!23677))

(assert (= (or b!372799 bm!23679) bm!23676))

(declare-fun m!552935 () Bool)

(assert (=> bm!23676 m!552935))

(declare-fun m!552937 () Bool)

(assert (=> bm!23677 m!552937))

(declare-fun m!552939 () Bool)

(assert (=> bm!23678 m!552939))

(assert (=> b!372034 d!131166))

(declare-fun b!372806 () Bool)

(declare-fun c!73392 () Bool)

(assert (=> b!372806 (= c!73392 ((_ is Star!1029) (regex!805 (rule!1450 separatorToken!170))))))

(declare-fun e!229179 () List!4183)

(declare-fun e!229178 () List!4183)

(assert (=> b!372806 (= e!229179 e!229178)))

(declare-fun b!372807 () Bool)

(declare-fun call!23687 () List!4183)

(assert (=> b!372807 (= e!229178 call!23687)))

(declare-fun d!131168 () Bool)

(declare-fun c!73393 () Bool)

(assert (=> d!131168 (= c!73393 (or ((_ is EmptyExpr!1029) (regex!805 (rule!1450 separatorToken!170))) ((_ is EmptyLang!1029) (regex!805 (rule!1450 separatorToken!170)))))))

(declare-fun e!229177 () List!4183)

(assert (=> d!131168 (= (usedCharacters!106 (regex!805 (rule!1450 separatorToken!170))) e!229177)))

(declare-fun bm!23680 () Bool)

(declare-fun c!73390 () Bool)

(assert (=> bm!23680 (= call!23687 (usedCharacters!106 (ite c!73392 (reg!1358 (regex!805 (rule!1450 separatorToken!170))) (ite c!73390 (regOne!2571 (regex!805 (rule!1450 separatorToken!170))) (regOne!2570 (regex!805 (rule!1450 separatorToken!170)))))))))

(declare-fun bm!23681 () Bool)

(declare-fun call!23685 () List!4183)

(declare-fun call!23686 () List!4183)

(declare-fun call!23688 () List!4183)

(assert (=> bm!23681 (= call!23685 (++!1166 call!23686 call!23688))))

(declare-fun b!372808 () Bool)

(declare-fun e!229176 () List!4183)

(assert (=> b!372808 (= e!229176 call!23685)))

(declare-fun b!372809 () Bool)

(assert (=> b!372809 (= e!229176 call!23685)))

(declare-fun b!372810 () Bool)

(assert (=> b!372810 (= e!229177 Nil!4173)))

(declare-fun bm!23682 () Bool)

(assert (=> bm!23682 (= call!23688 (usedCharacters!106 (ite c!73390 (regTwo!2571 (regex!805 (rule!1450 separatorToken!170))) (regTwo!2570 (regex!805 (rule!1450 separatorToken!170))))))))

(declare-fun b!372811 () Bool)

(assert (=> b!372811 (= e!229177 e!229179)))

(declare-fun c!73391 () Bool)

(assert (=> b!372811 (= c!73391 ((_ is ElementMatch!1029) (regex!805 (rule!1450 separatorToken!170))))))

(declare-fun b!372812 () Bool)

(assert (=> b!372812 (= e!229178 e!229176)))

(assert (=> b!372812 (= c!73390 ((_ is Union!1029) (regex!805 (rule!1450 separatorToken!170))))))

(declare-fun b!372813 () Bool)

(assert (=> b!372813 (= e!229179 (Cons!4173 (c!73209 (regex!805 (rule!1450 separatorToken!170))) Nil!4173))))

(declare-fun bm!23683 () Bool)

(assert (=> bm!23683 (= call!23686 call!23687)))

(assert (= (and d!131168 c!73393) b!372810))

(assert (= (and d!131168 (not c!73393)) b!372811))

(assert (= (and b!372811 c!73391) b!372813))

(assert (= (and b!372811 (not c!73391)) b!372806))

(assert (= (and b!372806 c!73392) b!372807))

(assert (= (and b!372806 (not c!73392)) b!372812))

(assert (= (and b!372812 c!73390) b!372809))

(assert (= (and b!372812 (not c!73390)) b!372808))

(assert (= (or b!372809 b!372808) bm!23683))

(assert (= (or b!372809 b!372808) bm!23682))

(assert (= (or b!372809 b!372808) bm!23681))

(assert (= (or b!372807 bm!23683) bm!23680))

(declare-fun m!552941 () Bool)

(assert (=> bm!23680 m!552941))

(declare-fun m!552943 () Bool)

(assert (=> bm!23681 m!552943))

(declare-fun m!552945 () Bool)

(assert (=> bm!23682 m!552945))

(assert (=> b!372034 d!131168))

(declare-fun d!131170 () Bool)

(declare-fun lt!162029 () Bool)

(declare-fun e!229181 () Bool)

(assert (=> d!131170 (= lt!162029 e!229181)))

(declare-fun res!166861 () Bool)

(assert (=> d!131170 (=> (not res!166861) (not e!229181))))

(assert (=> d!131170 (= res!166861 (= (list!1802 (_1!2673 (lex!483 thiss!17480 rules!1920 (print!416 thiss!17480 (singletonSeq!351 (h!9572 tokens!465)))))) (list!1802 (singletonSeq!351 (h!9572 tokens!465)))))))

(declare-fun e!229180 () Bool)

(assert (=> d!131170 (= lt!162029 e!229180)))

(declare-fun res!166862 () Bool)

(assert (=> d!131170 (=> (not res!166862) (not e!229180))))

(declare-fun lt!162030 () tuple2!4914)

(assert (=> d!131170 (= res!166862 (= (size!3373 (_1!2673 lt!162030)) 1))))

(assert (=> d!131170 (= lt!162030 (lex!483 thiss!17480 rules!1920 (print!416 thiss!17480 (singletonSeq!351 (h!9572 tokens!465)))))))

(assert (=> d!131170 (not (isEmpty!2974 rules!1920))))

(assert (=> d!131170 (= (rulesProduceIndividualToken!440 thiss!17480 rules!1920 (h!9572 tokens!465)) lt!162029)))

(declare-fun b!372814 () Bool)

(declare-fun res!166860 () Bool)

(assert (=> b!372814 (=> (not res!166860) (not e!229180))))

(assert (=> b!372814 (= res!166860 (= (apply!970 (_1!2673 lt!162030) 0) (h!9572 tokens!465)))))

(declare-fun b!372815 () Bool)

(assert (=> b!372815 (= e!229180 (isEmpty!2972 (_2!2673 lt!162030)))))

(declare-fun b!372816 () Bool)

(assert (=> b!372816 (= e!229181 (isEmpty!2972 (_2!2673 (lex!483 thiss!17480 rules!1920 (print!416 thiss!17480 (singletonSeq!351 (h!9572 tokens!465)))))))))

(assert (= (and d!131170 res!166862) b!372814))

(assert (= (and b!372814 res!166860) b!372815))

(assert (= (and d!131170 res!166861) b!372816))

(assert (=> d!131170 m!552059))

(declare-fun m!552947 () Bool)

(assert (=> d!131170 m!552947))

(declare-fun m!552949 () Bool)

(assert (=> d!131170 m!552949))

(assert (=> d!131170 m!551593))

(assert (=> d!131170 m!551593))

(assert (=> d!131170 m!552059))

(assert (=> d!131170 m!551593))

(declare-fun m!552951 () Bool)

(assert (=> d!131170 m!552951))

(declare-fun m!552953 () Bool)

(assert (=> d!131170 m!552953))

(assert (=> d!131170 m!551551))

(declare-fun m!552955 () Bool)

(assert (=> b!372814 m!552955))

(declare-fun m!552957 () Bool)

(assert (=> b!372815 m!552957))

(assert (=> b!372816 m!551593))

(assert (=> b!372816 m!551593))

(assert (=> b!372816 m!552059))

(assert (=> b!372816 m!552059))

(assert (=> b!372816 m!552947))

(declare-fun m!552959 () Bool)

(assert (=> b!372816 m!552959))

(assert (=> b!372013 d!131170))

(declare-fun d!131172 () Bool)

(assert (=> d!131172 (= (get!1462 lt!161562) (v!15120 lt!161562))))

(assert (=> b!372035 d!131172))

(declare-fun d!131174 () Bool)

(assert (=> d!131174 (= (head!1012 tokens!465) (h!9572 tokens!465))))

(assert (=> b!372035 d!131174))

(declare-fun d!131176 () Bool)

(declare-fun isEmpty!2983 (Option!999) Bool)

(assert (=> d!131176 (= (isDefined!837 (maxPrefixZipperSequence!370 thiss!17480 rules!1920 (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465))))) (not (isEmpty!2983 (maxPrefixZipperSequence!370 thiss!17480 rules!1920 (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465)))))))))

(declare-fun bs!45199 () Bool)

(assert (= bs!45199 d!131176))

(assert (=> bs!45199 m!551597))

(declare-fun m!552961 () Bool)

(assert (=> bs!45199 m!552961))

(assert (=> b!372033 d!131176))

(declare-fun d!131178 () Bool)

(declare-fun e!229203 () Bool)

(assert (=> d!131178 e!229203))

(declare-fun res!166888 () Bool)

(assert (=> d!131178 (=> (not res!166888) (not e!229203))))

(declare-fun lt!162063 () Option!999)

(declare-fun maxPrefixZipper!159 (LexerInterface!691 List!4184 List!4183) Option!998)

(assert (=> d!131178 (= res!166888 (= (isDefined!837 lt!162063) (isDefined!836 (maxPrefixZipper!159 thiss!17480 rules!1920 (list!1801 (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465))))))))))

(declare-fun e!229202 () Option!999)

(assert (=> d!131178 (= lt!162063 e!229202)))

(declare-fun c!73398 () Bool)

(assert (=> d!131178 (= c!73398 (and ((_ is Cons!4174) rules!1920) ((_ is Nil!4174) (t!57248 rules!1920))))))

(declare-fun lt!162061 () Unit!6616)

(declare-fun lt!162060 () Unit!6616)

(assert (=> d!131178 (= lt!162061 lt!162060)))

(declare-fun lt!162062 () List!4183)

(declare-fun lt!162059 () List!4183)

(assert (=> d!131178 (isPrefix!465 lt!162062 lt!162059)))

(assert (=> d!131178 (= lt!162060 (lemmaIsPrefixRefl!255 lt!162062 lt!162059))))

(assert (=> d!131178 (= lt!162059 (list!1801 (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465)))))))

(assert (=> d!131178 (= lt!162062 (list!1801 (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465)))))))

(assert (=> d!131178 (rulesValidInductive!250 thiss!17480 rules!1920)))

(assert (=> d!131178 (= (maxPrefixZipperSequence!370 thiss!17480 rules!1920 (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465)))) lt!162063)))

(declare-fun b!372847 () Bool)

(declare-fun e!229205 () Bool)

(declare-fun e!229206 () Bool)

(assert (=> b!372847 (= e!229205 e!229206)))

(declare-fun res!166889 () Bool)

(assert (=> b!372847 (=> (not res!166889) (not e!229206))))

(declare-fun get!1464 (Option!999) tuple2!4918)

(assert (=> b!372847 (= res!166889 (= (_1!2675 (get!1464 lt!162063)) (_1!2674 (get!1462 (maxPrefixZipper!159 thiss!17480 rules!1920 (list!1801 (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465)))))))))))

(declare-fun b!372848 () Bool)

(declare-fun lt!162058 () Option!999)

(declare-fun lt!162057 () Option!999)

(assert (=> b!372848 (= e!229202 (ite (and ((_ is None!998) lt!162058) ((_ is None!998) lt!162057)) None!998 (ite ((_ is None!998) lt!162057) lt!162058 (ite ((_ is None!998) lt!162058) lt!162057 (ite (>= (size!3372 (_1!2675 (v!15121 lt!162058))) (size!3372 (_1!2675 (v!15121 lt!162057)))) lt!162058 lt!162057)))))))

(declare-fun call!23691 () Option!999)

(assert (=> b!372848 (= lt!162058 call!23691)))

(assert (=> b!372848 (= lt!162057 (maxPrefixZipperSequence!370 thiss!17480 (t!57248 rules!1920) (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465)))))))

(declare-fun bm!23686 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!160 (LexerInterface!691 Rule!1410 BalanceConc!2872) Option!999)

(assert (=> bm!23686 (= call!23691 (maxPrefixOneRuleZipperSequence!160 thiss!17480 (h!9571 rules!1920) (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465)))))))

(declare-fun b!372849 () Bool)

(assert (=> b!372849 (= e!229202 call!23691)))

(declare-fun b!372850 () Bool)

(declare-fun e!229204 () Bool)

(assert (=> b!372850 (= e!229203 e!229204)))

(declare-fun res!166890 () Bool)

(assert (=> b!372850 (=> res!166890 e!229204)))

(assert (=> b!372850 (= res!166890 (not (isDefined!837 lt!162063)))))

(declare-fun b!372851 () Bool)

(declare-fun e!229207 () Bool)

(assert (=> b!372851 (= e!229204 e!229207)))

(declare-fun res!166887 () Bool)

(assert (=> b!372851 (=> (not res!166887) (not e!229207))))

(assert (=> b!372851 (= res!166887 (= (_1!2675 (get!1464 lt!162063)) (_1!2674 (get!1462 (maxPrefix!407 thiss!17480 rules!1920 (list!1801 (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465)))))))))))

(declare-fun b!372852 () Bool)

(declare-fun res!166886 () Bool)

(assert (=> b!372852 (=> (not res!166886) (not e!229203))))

(assert (=> b!372852 (= res!166886 e!229205)))

(declare-fun res!166885 () Bool)

(assert (=> b!372852 (=> res!166885 e!229205)))

(assert (=> b!372852 (= res!166885 (not (isDefined!837 lt!162063)))))

(declare-fun b!372853 () Bool)

(assert (=> b!372853 (= e!229206 (= (list!1801 (_2!2675 (get!1464 lt!162063))) (_2!2674 (get!1462 (maxPrefixZipper!159 thiss!17480 rules!1920 (list!1801 (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465)))))))))))

(declare-fun b!372854 () Bool)

(assert (=> b!372854 (= e!229207 (= (list!1801 (_2!2675 (get!1464 lt!162063))) (_2!2674 (get!1462 (maxPrefix!407 thiss!17480 rules!1920 (list!1801 (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465)))))))))))

(assert (= (and d!131178 c!73398) b!372849))

(assert (= (and d!131178 (not c!73398)) b!372848))

(assert (= (or b!372849 b!372848) bm!23686))

(assert (= (and d!131178 res!166888) b!372852))

(assert (= (and b!372852 (not res!166885)) b!372847))

(assert (= (and b!372847 res!166889) b!372853))

(assert (= (and b!372852 res!166886) b!372850))

(assert (= (and b!372850 (not res!166890)) b!372851))

(assert (= (and b!372851 res!166887) b!372854))

(declare-fun m!553001 () Bool)

(assert (=> b!372851 m!553001))

(assert (=> b!372851 m!551595))

(declare-fun m!553003 () Bool)

(assert (=> b!372851 m!553003))

(assert (=> b!372851 m!553003))

(declare-fun m!553005 () Bool)

(assert (=> b!372851 m!553005))

(assert (=> b!372851 m!553005))

(declare-fun m!553007 () Bool)

(assert (=> b!372851 m!553007))

(declare-fun m!553009 () Bool)

(assert (=> b!372852 m!553009))

(assert (=> bm!23686 m!551595))

(declare-fun m!553011 () Bool)

(assert (=> bm!23686 m!553011))

(assert (=> b!372853 m!553001))

(assert (=> b!372853 m!551595))

(assert (=> b!372853 m!553003))

(declare-fun m!553013 () Bool)

(assert (=> b!372853 m!553013))

(declare-fun m!553015 () Bool)

(assert (=> b!372853 m!553015))

(declare-fun m!553017 () Bool)

(assert (=> b!372853 m!553017))

(assert (=> b!372853 m!553003))

(assert (=> b!372853 m!553015))

(assert (=> b!372848 m!551595))

(declare-fun m!553019 () Bool)

(assert (=> b!372848 m!553019))

(assert (=> b!372847 m!553001))

(assert (=> b!372847 m!551595))

(assert (=> b!372847 m!553003))

(assert (=> b!372847 m!553003))

(assert (=> b!372847 m!553015))

(assert (=> b!372847 m!553015))

(assert (=> b!372847 m!553017))

(declare-fun m!553021 () Bool)

(assert (=> d!131178 m!553021))

(assert (=> d!131178 m!551595))

(assert (=> d!131178 m!553003))

(declare-fun m!553023 () Bool)

(assert (=> d!131178 m!553023))

(assert (=> d!131178 m!553003))

(assert (=> d!131178 m!553015))

(assert (=> d!131178 m!552253))

(assert (=> d!131178 m!553009))

(assert (=> d!131178 m!553015))

(declare-fun m!553025 () Bool)

(assert (=> d!131178 m!553025))

(assert (=> b!372854 m!553001))

(assert (=> b!372854 m!551595))

(assert (=> b!372854 m!553003))

(assert (=> b!372854 m!553013))

(assert (=> b!372854 m!553005))

(assert (=> b!372854 m!553007))

(assert (=> b!372854 m!553003))

(assert (=> b!372854 m!553005))

(assert (=> b!372850 m!553009))

(assert (=> b!372033 d!131178))

(declare-fun d!131196 () Bool)

(assert (=> d!131196 (= (seqFromList!975 (originalCharacters!848 (h!9572 tokens!465))) (fromListB!419 (originalCharacters!848 (h!9572 tokens!465))))))

(declare-fun bs!45204 () Bool)

(assert (= bs!45204 d!131196))

(declare-fun m!553027 () Bool)

(assert (=> bs!45204 m!553027))

(assert (=> b!372033 d!131196))

(declare-fun d!131198 () Bool)

(assert (=> d!131198 (dynLambda!2389 lambda!11578 (h!9572 tokens!465))))

(declare-fun lt!162064 () Unit!6616)

(assert (=> d!131198 (= lt!162064 (choose!2979 tokens!465 lambda!11578 (h!9572 tokens!465)))))

(declare-fun e!229208 () Bool)

(assert (=> d!131198 e!229208))

(declare-fun res!166891 () Bool)

(assert (=> d!131198 (=> (not res!166891) (not e!229208))))

(assert (=> d!131198 (= res!166891 (forall!1152 tokens!465 lambda!11578))))

(assert (=> d!131198 (= (forallContained!358 tokens!465 lambda!11578 (h!9572 tokens!465)) lt!162064)))

(declare-fun b!372855 () Bool)

(assert (=> b!372855 (= e!229208 (contains!859 tokens!465 (h!9572 tokens!465)))))

(assert (= (and d!131198 res!166891) b!372855))

(declare-fun b_lambda!14605 () Bool)

(assert (=> (not b_lambda!14605) (not d!131198)))

(declare-fun m!553029 () Bool)

(assert (=> d!131198 m!553029))

(declare-fun m!553031 () Bool)

(assert (=> d!131198 m!553031))

(assert (=> d!131198 m!552369))

(declare-fun m!553033 () Bool)

(assert (=> b!372855 m!553033))

(assert (=> b!372033 d!131198))

(declare-fun b!372856 () Bool)

(declare-fun res!166892 () Bool)

(declare-fun e!229210 () Bool)

(assert (=> b!372856 (=> res!166892 e!229210)))

(assert (=> b!372856 (= res!166892 (not (isEmpty!2970 (tail!571 lt!161573))))))

(declare-fun b!372857 () Bool)

(declare-fun e!229212 () Bool)

(assert (=> b!372857 (= e!229212 (matchR!347 (derivativeStep!177 (regex!805 lt!161571) (head!1011 lt!161573)) (tail!571 lt!161573)))))

(declare-fun b!372858 () Bool)

(declare-fun res!166896 () Bool)

(declare-fun e!229209 () Bool)

(assert (=> b!372858 (=> res!166896 e!229209)))

(declare-fun e!229214 () Bool)

(assert (=> b!372858 (= res!166896 e!229214)))

(declare-fun res!166895 () Bool)

(assert (=> b!372858 (=> (not res!166895) (not e!229214))))

(declare-fun lt!162065 () Bool)

(assert (=> b!372858 (= res!166895 lt!162065)))

(declare-fun bm!23687 () Bool)

(declare-fun call!23692 () Bool)

(assert (=> bm!23687 (= call!23692 (isEmpty!2970 lt!161573))))

(declare-fun b!372859 () Bool)

(declare-fun res!166898 () Bool)

(assert (=> b!372859 (=> (not res!166898) (not e!229214))))

(assert (=> b!372859 (= res!166898 (isEmpty!2970 (tail!571 lt!161573)))))

(declare-fun b!372860 () Bool)

(assert (=> b!372860 (= e!229210 (not (= (head!1011 lt!161573) (c!73209 (regex!805 lt!161571)))))))

(declare-fun b!372861 () Bool)

(assert (=> b!372861 (= e!229212 (nullable!211 (regex!805 lt!161571)))))

(declare-fun b!372863 () Bool)

(declare-fun e!229211 () Bool)

(declare-fun e!229215 () Bool)

(assert (=> b!372863 (= e!229211 e!229215)))

(declare-fun c!73401 () Bool)

(assert (=> b!372863 (= c!73401 ((_ is EmptyLang!1029) (regex!805 lt!161571)))))

(declare-fun b!372864 () Bool)

(assert (=> b!372864 (= e!229214 (= (head!1011 lt!161573) (c!73209 (regex!805 lt!161571))))))

(declare-fun b!372865 () Bool)

(assert (=> b!372865 (= e!229211 (= lt!162065 call!23692))))

(declare-fun b!372862 () Bool)

(declare-fun e!229213 () Bool)

(assert (=> b!372862 (= e!229209 e!229213)))

(declare-fun res!166894 () Bool)

(assert (=> b!372862 (=> (not res!166894) (not e!229213))))

(assert (=> b!372862 (= res!166894 (not lt!162065))))

(declare-fun d!131200 () Bool)

(assert (=> d!131200 e!229211))

(declare-fun c!73399 () Bool)

(assert (=> d!131200 (= c!73399 ((_ is EmptyExpr!1029) (regex!805 lt!161571)))))

(assert (=> d!131200 (= lt!162065 e!229212)))

(declare-fun c!73400 () Bool)

(assert (=> d!131200 (= c!73400 (isEmpty!2970 lt!161573))))

(assert (=> d!131200 (validRegex!286 (regex!805 lt!161571))))

(assert (=> d!131200 (= (matchR!347 (regex!805 lt!161571) lt!161573) lt!162065)))

(declare-fun b!372866 () Bool)

(assert (=> b!372866 (= e!229213 e!229210)))

(declare-fun res!166893 () Bool)

(assert (=> b!372866 (=> res!166893 e!229210)))

(assert (=> b!372866 (= res!166893 call!23692)))

(declare-fun b!372867 () Bool)

(declare-fun res!166897 () Bool)

(assert (=> b!372867 (=> (not res!166897) (not e!229214))))

(assert (=> b!372867 (= res!166897 (not call!23692))))

(declare-fun b!372868 () Bool)

(assert (=> b!372868 (= e!229215 (not lt!162065))))

(declare-fun b!372869 () Bool)

(declare-fun res!166899 () Bool)

(assert (=> b!372869 (=> res!166899 e!229209)))

(assert (=> b!372869 (= res!166899 (not ((_ is ElementMatch!1029) (regex!805 lt!161571))))))

(assert (=> b!372869 (= e!229215 e!229209)))

(assert (= (and d!131200 c!73400) b!372861))

(assert (= (and d!131200 (not c!73400)) b!372857))

(assert (= (and d!131200 c!73399) b!372865))

(assert (= (and d!131200 (not c!73399)) b!372863))

(assert (= (and b!372863 c!73401) b!372868))

(assert (= (and b!372863 (not c!73401)) b!372869))

(assert (= (and b!372869 (not res!166899)) b!372858))

(assert (= (and b!372858 res!166895) b!372867))

(assert (= (and b!372867 res!166897) b!372859))

(assert (= (and b!372859 res!166898) b!372864))

(assert (= (and b!372858 (not res!166896)) b!372862))

(assert (= (and b!372862 res!166894) b!372866))

(assert (= (and b!372866 (not res!166893)) b!372856))

(assert (= (and b!372856 (not res!166892)) b!372860))

(assert (= (or b!372865 b!372866 b!372867) bm!23687))

(declare-fun m!553035 () Bool)

(assert (=> b!372856 m!553035))

(assert (=> b!372856 m!553035))

(declare-fun m!553037 () Bool)

(assert (=> b!372856 m!553037))

(assert (=> b!372859 m!553035))

(assert (=> b!372859 m!553035))

(assert (=> b!372859 m!553037))

(declare-fun m!553039 () Bool)

(assert (=> b!372860 m!553039))

(declare-fun m!553041 () Bool)

(assert (=> d!131200 m!553041))

(declare-fun m!553043 () Bool)

(assert (=> d!131200 m!553043))

(assert (=> b!372864 m!553039))

(assert (=> b!372857 m!553039))

(assert (=> b!372857 m!553039))

(declare-fun m!553045 () Bool)

(assert (=> b!372857 m!553045))

(assert (=> b!372857 m!553035))

(assert (=> b!372857 m!553045))

(assert (=> b!372857 m!553035))

(declare-fun m!553047 () Bool)

(assert (=> b!372857 m!553047))

(assert (=> bm!23687 m!553041))

(declare-fun m!553049 () Bool)

(assert (=> b!372861 m!553049))

(assert (=> b!372012 d!131200))

(declare-fun d!131202 () Bool)

(assert (=> d!131202 (= (get!1461 lt!161593) (v!15119 lt!161593))))

(assert (=> b!372012 d!131202))

(declare-fun d!131204 () Bool)

(declare-fun lt!162066 () Token!1354)

(assert (=> d!131204 (= lt!162066 (apply!971 (list!1802 (_1!2673 lt!161592)) 0))))

(assert (=> d!131204 (= lt!162066 (apply!972 (c!73210 (_1!2673 lt!161592)) 0))))

(declare-fun e!229216 () Bool)

(assert (=> d!131204 e!229216))

(declare-fun res!166900 () Bool)

(assert (=> d!131204 (=> (not res!166900) (not e!229216))))

(assert (=> d!131204 (= res!166900 (<= 0 0))))

(assert (=> d!131204 (= (apply!970 (_1!2673 lt!161592) 0) lt!162066)))

(declare-fun b!372870 () Bool)

(assert (=> b!372870 (= e!229216 (< 0 (size!3373 (_1!2673 lt!161592))))))

(assert (= (and d!131204 res!166900) b!372870))

(assert (=> d!131204 m!552897))

(assert (=> d!131204 m!552897))

(declare-fun m!553051 () Bool)

(assert (=> d!131204 m!553051))

(declare-fun m!553053 () Bool)

(assert (=> d!131204 m!553053))

(assert (=> b!372870 m!551529))

(assert (=> b!371994 d!131204))

(declare-fun d!131206 () Bool)

(assert (=> d!131206 (= (isEmpty!2974 rules!1920) ((_ is Nil!4174) rules!1920))))

(assert (=> b!372037 d!131206))

(declare-fun b!372871 () Bool)

(declare-fun e!229218 () List!4183)

(assert (=> b!372871 (= e!229218 lt!161588)))

(declare-fun b!372872 () Bool)

(assert (=> b!372872 (= e!229218 (Cons!4173 (h!9570 lt!161598) (++!1166 (t!57247 lt!161598) lt!161588)))))

(declare-fun b!372873 () Bool)

(declare-fun res!166902 () Bool)

(declare-fun e!229217 () Bool)

(assert (=> b!372873 (=> (not res!166902) (not e!229217))))

(declare-fun lt!162067 () List!4183)

(assert (=> b!372873 (= res!166902 (= (size!3374 lt!162067) (+ (size!3374 lt!161598) (size!3374 lt!161588))))))

(declare-fun b!372874 () Bool)

(assert (=> b!372874 (= e!229217 (or (not (= lt!161588 Nil!4173)) (= lt!162067 lt!161598)))))

(declare-fun d!131208 () Bool)

(assert (=> d!131208 e!229217))

(declare-fun res!166901 () Bool)

(assert (=> d!131208 (=> (not res!166901) (not e!229217))))

(assert (=> d!131208 (= res!166901 (= (content!656 lt!162067) ((_ map or) (content!656 lt!161598) (content!656 lt!161588))))))

(assert (=> d!131208 (= lt!162067 e!229218)))

(declare-fun c!73402 () Bool)

(assert (=> d!131208 (= c!73402 ((_ is Nil!4173) lt!161598))))

(assert (=> d!131208 (= (++!1166 lt!161598 lt!161588) lt!162067)))

(assert (= (and d!131208 c!73402) b!372871))

(assert (= (and d!131208 (not c!73402)) b!372872))

(assert (= (and d!131208 res!166901) b!372873))

(assert (= (and b!372873 res!166902) b!372874))

(declare-fun m!553055 () Bool)

(assert (=> b!372872 m!553055))

(declare-fun m!553057 () Bool)

(assert (=> b!372873 m!553057))

(assert (=> b!372873 m!551805))

(assert (=> b!372873 m!551703))

(declare-fun m!553059 () Bool)

(assert (=> d!131208 m!553059))

(assert (=> d!131208 m!551811))

(assert (=> d!131208 m!551709))

(assert (=> b!372014 d!131208))

(declare-fun b!372875 () Bool)

(declare-fun res!166903 () Bool)

(declare-fun e!229220 () Bool)

(assert (=> b!372875 (=> res!166903 e!229220)))

(assert (=> b!372875 (= res!166903 (not (isEmpty!2970 (tail!571 lt!161568))))))

(declare-fun b!372876 () Bool)

(declare-fun e!229222 () Bool)

(assert (=> b!372876 (= e!229222 (matchR!347 (derivativeStep!177 (regex!805 lt!161579) (head!1011 lt!161568)) (tail!571 lt!161568)))))

(declare-fun b!372877 () Bool)

(declare-fun res!166907 () Bool)

(declare-fun e!229219 () Bool)

(assert (=> b!372877 (=> res!166907 e!229219)))

(declare-fun e!229224 () Bool)

(assert (=> b!372877 (= res!166907 e!229224)))

(declare-fun res!166906 () Bool)

(assert (=> b!372877 (=> (not res!166906) (not e!229224))))

(declare-fun lt!162068 () Bool)

(assert (=> b!372877 (= res!166906 lt!162068)))

(declare-fun bm!23688 () Bool)

(declare-fun call!23693 () Bool)

(assert (=> bm!23688 (= call!23693 (isEmpty!2970 lt!161568))))

(declare-fun b!372878 () Bool)

(declare-fun res!166909 () Bool)

(assert (=> b!372878 (=> (not res!166909) (not e!229224))))

(assert (=> b!372878 (= res!166909 (isEmpty!2970 (tail!571 lt!161568)))))

(declare-fun b!372879 () Bool)

(assert (=> b!372879 (= e!229220 (not (= (head!1011 lt!161568) (c!73209 (regex!805 lt!161579)))))))

(declare-fun b!372880 () Bool)

(assert (=> b!372880 (= e!229222 (nullable!211 (regex!805 lt!161579)))))

(declare-fun b!372882 () Bool)

(declare-fun e!229221 () Bool)

(declare-fun e!229225 () Bool)

(assert (=> b!372882 (= e!229221 e!229225)))

(declare-fun c!73405 () Bool)

(assert (=> b!372882 (= c!73405 ((_ is EmptyLang!1029) (regex!805 lt!161579)))))

(declare-fun b!372883 () Bool)

(assert (=> b!372883 (= e!229224 (= (head!1011 lt!161568) (c!73209 (regex!805 lt!161579))))))

(declare-fun b!372884 () Bool)

(assert (=> b!372884 (= e!229221 (= lt!162068 call!23693))))

(declare-fun b!372881 () Bool)

(declare-fun e!229223 () Bool)

(assert (=> b!372881 (= e!229219 e!229223)))

(declare-fun res!166905 () Bool)

(assert (=> b!372881 (=> (not res!166905) (not e!229223))))

(assert (=> b!372881 (= res!166905 (not lt!162068))))

(declare-fun d!131210 () Bool)

(assert (=> d!131210 e!229221))

(declare-fun c!73403 () Bool)

(assert (=> d!131210 (= c!73403 ((_ is EmptyExpr!1029) (regex!805 lt!161579)))))

(assert (=> d!131210 (= lt!162068 e!229222)))

(declare-fun c!73404 () Bool)

(assert (=> d!131210 (= c!73404 (isEmpty!2970 lt!161568))))

(assert (=> d!131210 (validRegex!286 (regex!805 lt!161579))))

(assert (=> d!131210 (= (matchR!347 (regex!805 lt!161579) lt!161568) lt!162068)))

(declare-fun b!372885 () Bool)

(assert (=> b!372885 (= e!229223 e!229220)))

(declare-fun res!166904 () Bool)

(assert (=> b!372885 (=> res!166904 e!229220)))

(assert (=> b!372885 (= res!166904 call!23693)))

(declare-fun b!372886 () Bool)

(declare-fun res!166908 () Bool)

(assert (=> b!372886 (=> (not res!166908) (not e!229224))))

(assert (=> b!372886 (= res!166908 (not call!23693))))

(declare-fun b!372887 () Bool)

(assert (=> b!372887 (= e!229225 (not lt!162068))))

(declare-fun b!372888 () Bool)

(declare-fun res!166910 () Bool)

(assert (=> b!372888 (=> res!166910 e!229219)))

(assert (=> b!372888 (= res!166910 (not ((_ is ElementMatch!1029) (regex!805 lt!161579))))))

(assert (=> b!372888 (= e!229225 e!229219)))

(assert (= (and d!131210 c!73404) b!372880))

(assert (= (and d!131210 (not c!73404)) b!372876))

(assert (= (and d!131210 c!73403) b!372884))

(assert (= (and d!131210 (not c!73403)) b!372882))

(assert (= (and b!372882 c!73405) b!372887))

(assert (= (and b!372882 (not c!73405)) b!372888))

(assert (= (and b!372888 (not res!166910)) b!372877))

(assert (= (and b!372877 res!166906) b!372886))

(assert (= (and b!372886 res!166908) b!372878))

(assert (= (and b!372878 res!166909) b!372883))

(assert (= (and b!372877 (not res!166907)) b!372881))

(assert (= (and b!372881 res!166905) b!372885))

(assert (= (and b!372885 (not res!166904)) b!372875))

(assert (= (and b!372875 (not res!166903)) b!372879))

(assert (= (or b!372884 b!372885 b!372886) bm!23688))

(assert (=> b!372875 m!551683))

(assert (=> b!372875 m!551683))

(assert (=> b!372875 m!551685))

(assert (=> b!372878 m!551683))

(assert (=> b!372878 m!551683))

(assert (=> b!372878 m!551685))

(assert (=> b!372879 m!551525))

(assert (=> d!131210 m!551687))

(declare-fun m!553061 () Bool)

(assert (=> d!131210 m!553061))

(assert (=> b!372883 m!551525))

(assert (=> b!372876 m!551525))

(assert (=> b!372876 m!551525))

(declare-fun m!553063 () Bool)

(assert (=> b!372876 m!553063))

(assert (=> b!372876 m!551683))

(assert (=> b!372876 m!553063))

(assert (=> b!372876 m!551683))

(declare-fun m!553065 () Bool)

(assert (=> b!372876 m!553065))

(assert (=> bm!23688 m!551687))

(declare-fun m!553067 () Bool)

(assert (=> b!372880 m!553067))

(assert (=> b!371993 d!131210))

(declare-fun d!131212 () Bool)

(assert (=> d!131212 (= (get!1461 lt!161589) (v!15119 lt!161589))))

(assert (=> b!371993 d!131212))

(declare-fun d!131214 () Bool)

(assert (=> d!131214 (= (get!1462 lt!161580) (v!15120 lt!161580))))

(assert (=> b!372036 d!131214))

(declare-fun d!131216 () Bool)

(assert (=> d!131216 (= (isDefined!836 lt!161580) (not (isEmpty!2979 lt!161580)))))

(declare-fun bs!45205 () Bool)

(assert (= bs!45205 d!131216))

(declare-fun m!553069 () Bool)

(assert (=> bs!45205 m!553069))

(assert (=> b!372036 d!131216))

(declare-fun b!372889 () Bool)

(declare-fun res!166915 () Bool)

(declare-fun e!229227 () Bool)

(assert (=> b!372889 (=> (not res!166915) (not e!229227))))

(declare-fun lt!162073 () Option!998)

(assert (=> b!372889 (= res!166915 (= (value!27258 (_1!2674 (get!1462 lt!162073))) (apply!975 (transformation!805 (rule!1450 (_1!2674 (get!1462 lt!162073)))) (seqFromList!975 (originalCharacters!848 (_1!2674 (get!1462 lt!162073)))))))))

(declare-fun bm!23689 () Bool)

(declare-fun call!23694 () Option!998)

(assert (=> bm!23689 (= call!23694 (maxPrefixOneRule!189 thiss!17480 (h!9571 rules!1920) lt!161598))))

(declare-fun d!131218 () Bool)

(declare-fun e!229228 () Bool)

(assert (=> d!131218 e!229228))

(declare-fun res!166914 () Bool)

(assert (=> d!131218 (=> res!166914 e!229228)))

(assert (=> d!131218 (= res!166914 (isEmpty!2979 lt!162073))))

(declare-fun e!229226 () Option!998)

(assert (=> d!131218 (= lt!162073 e!229226)))

(declare-fun c!73406 () Bool)

(assert (=> d!131218 (= c!73406 (and ((_ is Cons!4174) rules!1920) ((_ is Nil!4174) (t!57248 rules!1920))))))

(declare-fun lt!162070 () Unit!6616)

(declare-fun lt!162072 () Unit!6616)

(assert (=> d!131218 (= lt!162070 lt!162072)))

(assert (=> d!131218 (isPrefix!465 lt!161598 lt!161598)))

(assert (=> d!131218 (= lt!162072 (lemmaIsPrefixRefl!255 lt!161598 lt!161598))))

(assert (=> d!131218 (rulesValidInductive!250 thiss!17480 rules!1920)))

(assert (=> d!131218 (= (maxPrefix!407 thiss!17480 rules!1920 lt!161598) lt!162073)))

(declare-fun b!372890 () Bool)

(assert (=> b!372890 (= e!229227 (contains!856 rules!1920 (rule!1450 (_1!2674 (get!1462 lt!162073)))))))

(declare-fun b!372891 () Bool)

(declare-fun lt!162071 () Option!998)

(declare-fun lt!162069 () Option!998)

(assert (=> b!372891 (= e!229226 (ite (and ((_ is None!997) lt!162071) ((_ is None!997) lt!162069)) None!997 (ite ((_ is None!997) lt!162069) lt!162071 (ite ((_ is None!997) lt!162071) lt!162069 (ite (>= (size!3372 (_1!2674 (v!15120 lt!162071))) (size!3372 (_1!2674 (v!15120 lt!162069)))) lt!162071 lt!162069)))))))

(assert (=> b!372891 (= lt!162071 call!23694)))

(assert (=> b!372891 (= lt!162069 (maxPrefix!407 thiss!17480 (t!57248 rules!1920) lt!161598))))

(declare-fun b!372892 () Bool)

(assert (=> b!372892 (= e!229228 e!229227)))

(declare-fun res!166912 () Bool)

(assert (=> b!372892 (=> (not res!166912) (not e!229227))))

(assert (=> b!372892 (= res!166912 (isDefined!836 lt!162073))))

(declare-fun b!372893 () Bool)

(declare-fun res!166911 () Bool)

(assert (=> b!372893 (=> (not res!166911) (not e!229227))))

(assert (=> b!372893 (= res!166911 (< (size!3374 (_2!2674 (get!1462 lt!162073))) (size!3374 lt!161598)))))

(declare-fun b!372894 () Bool)

(declare-fun res!166916 () Bool)

(assert (=> b!372894 (=> (not res!166916) (not e!229227))))

(assert (=> b!372894 (= res!166916 (= (++!1166 (list!1801 (charsOf!448 (_1!2674 (get!1462 lt!162073)))) (_2!2674 (get!1462 lt!162073))) lt!161598))))

(declare-fun b!372895 () Bool)

(declare-fun res!166913 () Bool)

(assert (=> b!372895 (=> (not res!166913) (not e!229227))))

(assert (=> b!372895 (= res!166913 (= (list!1801 (charsOf!448 (_1!2674 (get!1462 lt!162073)))) (originalCharacters!848 (_1!2674 (get!1462 lt!162073)))))))

(declare-fun b!372896 () Bool)

(declare-fun res!166917 () Bool)

(assert (=> b!372896 (=> (not res!166917) (not e!229227))))

(assert (=> b!372896 (= res!166917 (matchR!347 (regex!805 (rule!1450 (_1!2674 (get!1462 lt!162073)))) (list!1801 (charsOf!448 (_1!2674 (get!1462 lt!162073))))))))

(declare-fun b!372897 () Bool)

(assert (=> b!372897 (= e!229226 call!23694)))

(assert (= (and d!131218 c!73406) b!372897))

(assert (= (and d!131218 (not c!73406)) b!372891))

(assert (= (or b!372897 b!372891) bm!23689))

(assert (= (and d!131218 (not res!166914)) b!372892))

(assert (= (and b!372892 res!166912) b!372895))

(assert (= (and b!372895 res!166913) b!372893))

(assert (= (and b!372893 res!166911) b!372894))

(assert (= (and b!372894 res!166916) b!372889))

(assert (= (and b!372889 res!166915) b!372896))

(assert (= (and b!372896 res!166917) b!372890))

(declare-fun m!553071 () Bool)

(assert (=> bm!23689 m!553071))

(declare-fun m!553073 () Bool)

(assert (=> b!372891 m!553073))

(declare-fun m!553075 () Bool)

(assert (=> b!372894 m!553075))

(declare-fun m!553077 () Bool)

(assert (=> b!372894 m!553077))

(assert (=> b!372894 m!553077))

(declare-fun m!553079 () Bool)

(assert (=> b!372894 m!553079))

(assert (=> b!372894 m!553079))

(declare-fun m!553081 () Bool)

(assert (=> b!372894 m!553081))

(assert (=> b!372890 m!553075))

(declare-fun m!553083 () Bool)

(assert (=> b!372890 m!553083))

(declare-fun m!553085 () Bool)

(assert (=> b!372892 m!553085))

(declare-fun m!553087 () Bool)

(assert (=> d!131218 m!553087))

(declare-fun m!553089 () Bool)

(assert (=> d!131218 m!553089))

(declare-fun m!553091 () Bool)

(assert (=> d!131218 m!553091))

(assert (=> d!131218 m!552253))

(assert (=> b!372889 m!553075))

(declare-fun m!553093 () Bool)

(assert (=> b!372889 m!553093))

(assert (=> b!372889 m!553093))

(declare-fun m!553095 () Bool)

(assert (=> b!372889 m!553095))

(assert (=> b!372893 m!553075))

(declare-fun m!553097 () Bool)

(assert (=> b!372893 m!553097))

(assert (=> b!372893 m!551805))

(assert (=> b!372895 m!553075))

(assert (=> b!372895 m!553077))

(assert (=> b!372895 m!553077))

(assert (=> b!372895 m!553079))

(assert (=> b!372896 m!553075))

(assert (=> b!372896 m!553077))

(assert (=> b!372896 m!553077))

(assert (=> b!372896 m!553079))

(assert (=> b!372896 m!553079))

(declare-fun m!553099 () Bool)

(assert (=> b!372896 m!553099))

(assert (=> b!372036 d!131218))

(declare-fun d!131220 () Bool)

(declare-fun lt!162076 () Bool)

(assert (=> d!131220 (= lt!162076 (isEmpty!2973 (list!1802 (_1!2673 (lex!483 thiss!17480 rules!1920 (seqFromList!975 lt!161598))))))))

(declare-fun isEmpty!2984 (Conc!1433) Bool)

(assert (=> d!131220 (= lt!162076 (isEmpty!2984 (c!73210 (_1!2673 (lex!483 thiss!17480 rules!1920 (seqFromList!975 lt!161598))))))))

(assert (=> d!131220 (= (isEmpty!2971 (_1!2673 (lex!483 thiss!17480 rules!1920 (seqFromList!975 lt!161598)))) lt!162076)))

(declare-fun bs!45206 () Bool)

(assert (= bs!45206 d!131220))

(declare-fun m!553101 () Bool)

(assert (=> bs!45206 m!553101))

(assert (=> bs!45206 m!553101))

(declare-fun m!553103 () Bool)

(assert (=> bs!45206 m!553103))

(declare-fun m!553105 () Bool)

(assert (=> bs!45206 m!553105))

(assert (=> b!372018 d!131220))

(declare-fun b!372898 () Bool)

(declare-fun e!229230 () Bool)

(declare-fun lt!162077 () tuple2!4914)

(assert (=> b!372898 (= e!229230 (= (_2!2673 lt!162077) (seqFromList!975 lt!161598)))))

(declare-fun d!131222 () Bool)

(declare-fun e!229231 () Bool)

(assert (=> d!131222 e!229231))

(declare-fun res!166919 () Bool)

(assert (=> d!131222 (=> (not res!166919) (not e!229231))))

(assert (=> d!131222 (= res!166919 e!229230)))

(declare-fun c!73407 () Bool)

(assert (=> d!131222 (= c!73407 (> (size!3373 (_1!2673 lt!162077)) 0))))

(assert (=> d!131222 (= lt!162077 (lexTailRecV2!224 thiss!17480 rules!1920 (seqFromList!975 lt!161598) (BalanceConc!2873 Empty!1432) (seqFromList!975 lt!161598) (BalanceConc!2875 Empty!1433)))))

(assert (=> d!131222 (= (lex!483 thiss!17480 rules!1920 (seqFromList!975 lt!161598)) lt!162077)))

(declare-fun b!372899 () Bool)

(declare-fun res!166920 () Bool)

(assert (=> b!372899 (=> (not res!166920) (not e!229231))))

(assert (=> b!372899 (= res!166920 (= (list!1802 (_1!2673 lt!162077)) (_1!2677 (lexList!257 thiss!17480 rules!1920 (list!1801 (seqFromList!975 lt!161598))))))))

(declare-fun b!372900 () Bool)

(declare-fun e!229229 () Bool)

(assert (=> b!372900 (= e!229230 e!229229)))

(declare-fun res!166918 () Bool)

(assert (=> b!372900 (= res!166918 (< (size!3377 (_2!2673 lt!162077)) (size!3377 (seqFromList!975 lt!161598))))))

(assert (=> b!372900 (=> (not res!166918) (not e!229229))))

(declare-fun b!372901 () Bool)

(assert (=> b!372901 (= e!229229 (not (isEmpty!2971 (_1!2673 lt!162077))))))

(declare-fun b!372902 () Bool)

(assert (=> b!372902 (= e!229231 (= (list!1801 (_2!2673 lt!162077)) (_2!2677 (lexList!257 thiss!17480 rules!1920 (list!1801 (seqFromList!975 lt!161598))))))))

(assert (= (and d!131222 c!73407) b!372900))

(assert (= (and d!131222 (not c!73407)) b!372898))

(assert (= (and b!372900 res!166918) b!372901))

(assert (= (and d!131222 res!166919) b!372899))

(assert (= (and b!372899 res!166920) b!372902))

(declare-fun m!553107 () Bool)

(assert (=> d!131222 m!553107))

(assert (=> d!131222 m!551545))

(assert (=> d!131222 m!551545))

(declare-fun m!553109 () Bool)

(assert (=> d!131222 m!553109))

(declare-fun m!553111 () Bool)

(assert (=> b!372901 m!553111))

(declare-fun m!553113 () Bool)

(assert (=> b!372900 m!553113))

(assert (=> b!372900 m!551545))

(declare-fun m!553115 () Bool)

(assert (=> b!372900 m!553115))

(declare-fun m!553117 () Bool)

(assert (=> b!372902 m!553117))

(assert (=> b!372902 m!551545))

(declare-fun m!553119 () Bool)

(assert (=> b!372902 m!553119))

(assert (=> b!372902 m!553119))

(declare-fun m!553121 () Bool)

(assert (=> b!372902 m!553121))

(declare-fun m!553123 () Bool)

(assert (=> b!372899 m!553123))

(assert (=> b!372899 m!551545))

(assert (=> b!372899 m!553119))

(assert (=> b!372899 m!553119))

(assert (=> b!372899 m!553121))

(assert (=> b!372018 d!131222))

(declare-fun d!131224 () Bool)

(assert (=> d!131224 (= (seqFromList!975 lt!161598) (fromListB!419 lt!161598))))

(declare-fun bs!45207 () Bool)

(assert (= bs!45207 d!131224))

(declare-fun m!553125 () Bool)

(assert (=> bs!45207 m!553125))

(assert (=> b!372018 d!131224))

(declare-fun d!131226 () Bool)

(declare-fun res!166921 () Bool)

(declare-fun e!229232 () Bool)

(assert (=> d!131226 (=> (not res!166921) (not e!229232))))

(assert (=> d!131226 (= res!166921 (not (isEmpty!2970 (originalCharacters!848 separatorToken!170))))))

(assert (=> d!131226 (= (inv!5184 separatorToken!170) e!229232)))

(declare-fun b!372903 () Bool)

(declare-fun res!166922 () Bool)

(assert (=> b!372903 (=> (not res!166922) (not e!229232))))

(assert (=> b!372903 (= res!166922 (= (originalCharacters!848 separatorToken!170) (list!1801 (dynLambda!2387 (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))) (value!27258 separatorToken!170)))))))

(declare-fun b!372904 () Bool)

(assert (=> b!372904 (= e!229232 (= (size!3372 separatorToken!170) (size!3374 (originalCharacters!848 separatorToken!170))))))

(assert (= (and d!131226 res!166921) b!372903))

(assert (= (and b!372903 res!166922) b!372904))

(declare-fun b_lambda!14607 () Bool)

(assert (=> (not b_lambda!14607) (not b!372903)))

(assert (=> b!372903 t!57258))

(declare-fun b_and!37465 () Bool)

(assert (= b_and!37435 (and (=> t!57258 result!36912) b_and!37465)))

(assert (=> b!372903 t!57260))

(declare-fun b_and!37467 () Bool)

(assert (= b_and!37437 (and (=> t!57260 result!36916) b_and!37467)))

(assert (=> b!372903 t!57262))

(declare-fun b_and!37469 () Bool)

(assert (= b_and!37439 (and (=> t!57262 result!36918) b_and!37469)))

(declare-fun m!553127 () Bool)

(assert (=> d!131226 m!553127))

(assert (=> b!372903 m!551961))

(assert (=> b!372903 m!551961))

(declare-fun m!553129 () Bool)

(assert (=> b!372903 m!553129))

(declare-fun m!553131 () Bool)

(assert (=> b!372904 m!553131))

(assert (=> start!36934 d!131226))

(declare-fun d!131228 () Bool)

(declare-fun c!73408 () Bool)

(assert (=> d!131228 (= c!73408 ((_ is IntegerValue!2481) (value!27258 separatorToken!170)))))

(declare-fun e!229233 () Bool)

(assert (=> d!131228 (= (inv!21 (value!27258 separatorToken!170)) e!229233)))

(declare-fun b!372905 () Bool)

(declare-fun res!166923 () Bool)

(declare-fun e!229234 () Bool)

(assert (=> b!372905 (=> res!166923 e!229234)))

(assert (=> b!372905 (= res!166923 (not ((_ is IntegerValue!2483) (value!27258 separatorToken!170))))))

(declare-fun e!229235 () Bool)

(assert (=> b!372905 (= e!229235 e!229234)))

(declare-fun b!372906 () Bool)

(assert (=> b!372906 (= e!229233 (inv!16 (value!27258 separatorToken!170)))))

(declare-fun b!372907 () Bool)

(assert (=> b!372907 (= e!229235 (inv!17 (value!27258 separatorToken!170)))))

(declare-fun b!372908 () Bool)

(assert (=> b!372908 (= e!229233 e!229235)))

(declare-fun c!73409 () Bool)

(assert (=> b!372908 (= c!73409 ((_ is IntegerValue!2482) (value!27258 separatorToken!170)))))

(declare-fun b!372909 () Bool)

(assert (=> b!372909 (= e!229234 (inv!15 (value!27258 separatorToken!170)))))

(assert (= (and d!131228 c!73408) b!372906))

(assert (= (and d!131228 (not c!73408)) b!372908))

(assert (= (and b!372908 c!73409) b!372907))

(assert (= (and b!372908 (not c!73409)) b!372905))

(assert (= (and b!372905 (not res!166923)) b!372909))

(declare-fun m!553133 () Bool)

(assert (=> b!372906 m!553133))

(declare-fun m!553135 () Bool)

(assert (=> b!372907 m!553135))

(declare-fun m!553137 () Bool)

(assert (=> b!372909 m!553137))

(assert (=> b!372039 d!131228))

(declare-fun bs!45221 () Bool)

(declare-fun d!131230 () Bool)

(assert (= bs!45221 (and d!131230 b!372177)))

(declare-fun lambda!11611 () Int)

(assert (=> bs!45221 (= lambda!11611 lambda!11581)))

(declare-fun bs!45224 () Bool)

(assert (= bs!45224 (and d!131230 b!372033)))

(assert (=> bs!45224 (= lambda!11611 lambda!11578)))

(declare-fun bs!45226 () Bool)

(assert (= bs!45226 (and d!131230 b!372329)))

(assert (=> bs!45226 (= lambda!11611 lambda!11590)))

(declare-fun bs!45228 () Bool)

(assert (= bs!45228 (and d!131230 d!130968)))

(assert (=> bs!45228 (not (= lambda!11611 lambda!11588))))

(declare-fun bs!45229 () Bool)

(assert (= bs!45229 (and d!131230 b!372009)))

(assert (=> bs!45229 (not (= lambda!11611 lambda!11577))))

(declare-fun bs!45230 () Bool)

(assert (= bs!45230 (and d!131230 b!372312)))

(assert (=> bs!45230 (= lambda!11611 lambda!11589)))

(declare-fun bs!45231 () Bool)

(assert (= bs!45231 (and d!131230 b!372280)))

(assert (=> bs!45231 (= lambda!11611 lambda!11587)))

(declare-fun bs!45232 () Bool)

(assert (= bs!45232 (and d!131230 d!130930)))

(assert (=> bs!45232 (not (= lambda!11611 lambda!11586))))

(declare-fun b!372973 () Bool)

(declare-fun e!229286 () Bool)

(assert (=> b!372973 (= e!229286 true)))

(declare-fun b!372972 () Bool)

(declare-fun e!229285 () Bool)

(assert (=> b!372972 (= e!229285 e!229286)))

(declare-fun b!372971 () Bool)

(declare-fun e!229284 () Bool)

(assert (=> b!372971 (= e!229284 e!229285)))

(assert (=> d!131230 e!229284))

(assert (= b!372972 b!372973))

(assert (= b!372971 b!372972))

(assert (= (and d!131230 ((_ is Cons!4174) rules!1920)) b!372971))

(assert (=> b!372973 (< (dynLambda!2383 order!3505 (toValue!1588 (transformation!805 (h!9571 rules!1920)))) (dynLambda!2384 order!3507 lambda!11611))))

(assert (=> b!372973 (< (dynLambda!2385 order!3509 (toChars!1447 (transformation!805 (h!9571 rules!1920)))) (dynLambda!2384 order!3507 lambda!11611))))

(assert (=> d!131230 true))

(declare-fun e!229280 () Bool)

(assert (=> d!131230 e!229280))

(declare-fun res!166973 () Bool)

(assert (=> d!131230 (=> (not res!166973) (not e!229280))))

(declare-fun lt!162115 () Bool)

(assert (=> d!131230 (= res!166973 (= lt!162115 (forall!1152 (list!1802 lt!161597) lambda!11611)))))

(declare-fun forall!1154 (BalanceConc!2874 Int) Bool)

(assert (=> d!131230 (= lt!162115 (forall!1154 lt!161597 lambda!11611))))

(assert (=> d!131230 (not (isEmpty!2974 rules!1920))))

(assert (=> d!131230 (= (rulesProduceEachTokenIndividually!483 thiss!17480 rules!1920 lt!161597) lt!162115)))

(declare-fun b!372967 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!283 (LexerInterface!691 List!4184 List!4185) Bool)

(assert (=> b!372967 (= e!229280 (= lt!162115 (rulesProduceEachTokenIndividuallyList!283 thiss!17480 rules!1920 (list!1802 lt!161597))))))

(assert (= (and d!131230 res!166973) b!372967))

(assert (=> d!131230 m!551997))

(assert (=> d!131230 m!551997))

(declare-fun m!553239 () Bool)

(assert (=> d!131230 m!553239))

(declare-fun m!553241 () Bool)

(assert (=> d!131230 m!553241))

(assert (=> d!131230 m!551551))

(assert (=> b!372967 m!551997))

(assert (=> b!372967 m!551997))

(declare-fun m!553243 () Bool)

(assert (=> b!372967 m!553243))

(assert (=> b!372021 d!131230))

(declare-fun d!131258 () Bool)

(assert (=> d!131258 (= (seqFromList!976 tokens!465) (fromListB!417 tokens!465))))

(declare-fun bs!45233 () Bool)

(assert (= bs!45233 d!131258))

(declare-fun m!553245 () Bool)

(assert (=> bs!45233 m!553245))

(assert (=> b!372021 d!131258))

(declare-fun d!131260 () Bool)

(declare-fun lt!162116 () BalanceConc!2872)

(assert (=> d!131260 (= (list!1801 lt!162116) (printListTailRec!177 thiss!17480 (dropList!211 lt!161564 0) (list!1801 (BalanceConc!2873 Empty!1432))))))

(declare-fun e!229287 () BalanceConc!2872)

(assert (=> d!131260 (= lt!162116 e!229287)))

(declare-fun c!73414 () Bool)

(assert (=> d!131260 (= c!73414 (>= 0 (size!3373 lt!161564)))))

(declare-fun e!229288 () Bool)

(assert (=> d!131260 e!229288))

(declare-fun res!166974 () Bool)

(assert (=> d!131260 (=> (not res!166974) (not e!229288))))

(assert (=> d!131260 (= res!166974 (>= 0 0))))

(assert (=> d!131260 (= (printTailRec!377 thiss!17480 lt!161564 0 (BalanceConc!2873 Empty!1432)) lt!162116)))

(declare-fun b!372974 () Bool)

(assert (=> b!372974 (= e!229288 (<= 0 (size!3373 lt!161564)))))

(declare-fun b!372975 () Bool)

(assert (=> b!372975 (= e!229287 (BalanceConc!2873 Empty!1432))))

(declare-fun b!372976 () Bool)

(assert (=> b!372976 (= e!229287 (printTailRec!377 thiss!17480 lt!161564 (+ 0 1) (++!1167 (BalanceConc!2873 Empty!1432) (charsOf!448 (apply!970 lt!161564 0)))))))

(declare-fun lt!162118 () List!4185)

(assert (=> b!372976 (= lt!162118 (list!1802 lt!161564))))

(declare-fun lt!162122 () Unit!6616)

(assert (=> b!372976 (= lt!162122 (lemmaDropApply!251 lt!162118 0))))

(assert (=> b!372976 (= (head!1012 (drop!274 lt!162118 0)) (apply!971 lt!162118 0))))

(declare-fun lt!162117 () Unit!6616)

(assert (=> b!372976 (= lt!162117 lt!162122)))

(declare-fun lt!162121 () List!4185)

(assert (=> b!372976 (= lt!162121 (list!1802 lt!161564))))

(declare-fun lt!162119 () Unit!6616)

(assert (=> b!372976 (= lt!162119 (lemmaDropTail!243 lt!162121 0))))

(assert (=> b!372976 (= (tail!572 (drop!274 lt!162121 0)) (drop!274 lt!162121 (+ 0 1)))))

(declare-fun lt!162120 () Unit!6616)

(assert (=> b!372976 (= lt!162120 lt!162119)))

(assert (= (and d!131260 res!166974) b!372974))

(assert (= (and d!131260 c!73414) b!372975))

(assert (= (and d!131260 (not c!73414)) b!372976))

(declare-fun m!553279 () Bool)

(assert (=> d!131260 m!553279))

(assert (=> d!131260 m!552581))

(declare-fun m!553283 () Bool)

(assert (=> d!131260 m!553283))

(declare-fun m!553285 () Bool)

(assert (=> d!131260 m!553285))

(assert (=> d!131260 m!553279))

(assert (=> d!131260 m!552581))

(declare-fun m!553293 () Bool)

(assert (=> d!131260 m!553293))

(assert (=> b!372974 m!553293))

(declare-fun m!553295 () Bool)

(assert (=> b!372976 m!553295))

(declare-fun m!553297 () Bool)

(assert (=> b!372976 m!553297))

(declare-fun m!553301 () Bool)

(assert (=> b!372976 m!553301))

(declare-fun m!553303 () Bool)

(assert (=> b!372976 m!553303))

(declare-fun m!553305 () Bool)

(assert (=> b!372976 m!553305))

(assert (=> b!372976 m!553297))

(declare-fun m!553311 () Bool)

(assert (=> b!372976 m!553311))

(declare-fun m!553315 () Bool)

(assert (=> b!372976 m!553315))

(declare-fun m!553321 () Bool)

(assert (=> b!372976 m!553321))

(declare-fun m!553323 () Bool)

(assert (=> b!372976 m!553323))

(assert (=> b!372976 m!553321))

(declare-fun m!553329 () Bool)

(assert (=> b!372976 m!553329))

(assert (=> b!372976 m!553301))

(assert (=> b!372976 m!553311))

(declare-fun m!553333 () Bool)

(assert (=> b!372976 m!553333))

(assert (=> b!372976 m!553303))

(declare-fun m!553335 () Bool)

(assert (=> b!372976 m!553335))

(declare-fun m!553337 () Bool)

(assert (=> b!372976 m!553337))

(assert (=> b!372000 d!131260))

(declare-fun d!131264 () Bool)

(declare-fun lt!162124 () BalanceConc!2872)

(assert (=> d!131264 (= (list!1801 lt!162124) (printList!365 thiss!17480 (list!1802 lt!161564)))))

(assert (=> d!131264 (= lt!162124 (printTailRec!377 thiss!17480 lt!161564 0 (BalanceConc!2873 Empty!1432)))))

(assert (=> d!131264 (= (print!416 thiss!17480 lt!161564) lt!162124)))

(declare-fun bs!45234 () Bool)

(assert (= bs!45234 d!131264))

(declare-fun m!553339 () Bool)

(assert (=> bs!45234 m!553339))

(assert (=> bs!45234 m!553295))

(assert (=> bs!45234 m!553295))

(declare-fun m!553341 () Bool)

(assert (=> bs!45234 m!553341))

(assert (=> bs!45234 m!551587))

(assert (=> b!372000 d!131264))

(declare-fun d!131266 () Bool)

(assert (=> d!131266 (= (list!1801 lt!161586) (list!1804 (c!73208 lt!161586)))))

(declare-fun bs!45235 () Bool)

(assert (= bs!45235 d!131266))

(declare-fun m!553343 () Bool)

(assert (=> bs!45235 m!553343))

(assert (=> b!372000 d!131266))

(declare-fun d!131268 () Bool)

(declare-fun e!229294 () Bool)

(assert (=> d!131268 e!229294))

(declare-fun res!166975 () Bool)

(assert (=> d!131268 (=> (not res!166975) (not e!229294))))

(declare-fun lt!162130 () BalanceConc!2874)

(assert (=> d!131268 (= res!166975 (= (list!1802 lt!162130) (Cons!4175 (h!9572 tokens!465) Nil!4175)))))

(assert (=> d!131268 (= lt!162130 (singleton!162 (h!9572 tokens!465)))))

(assert (=> d!131268 (= (singletonSeq!351 (h!9572 tokens!465)) lt!162130)))

(declare-fun b!372987 () Bool)

(assert (=> b!372987 (= e!229294 (isBalanced!423 (c!73210 lt!162130)))))

(assert (= (and d!131268 res!166975) b!372987))

(declare-fun m!553345 () Bool)

(assert (=> d!131268 m!553345))

(declare-fun m!553347 () Bool)

(assert (=> d!131268 m!553347))

(declare-fun m!553349 () Bool)

(assert (=> b!372987 m!553349))

(assert (=> b!372000 d!131268))

(declare-fun d!131270 () Bool)

(declare-fun c!73422 () Bool)

(assert (=> d!131270 (= c!73422 ((_ is Cons!4175) (Cons!4175 (h!9572 tokens!465) Nil!4175)))))

(declare-fun e!229300 () List!4183)

(assert (=> d!131270 (= (printList!365 thiss!17480 (Cons!4175 (h!9572 tokens!465) Nil!4175)) e!229300)))

(declare-fun b!372995 () Bool)

(assert (=> b!372995 (= e!229300 (++!1166 (list!1801 (charsOf!448 (h!9572 (Cons!4175 (h!9572 tokens!465) Nil!4175)))) (printList!365 thiss!17480 (t!57249 (Cons!4175 (h!9572 tokens!465) Nil!4175)))))))

(declare-fun b!372996 () Bool)

(assert (=> b!372996 (= e!229300 Nil!4173)))

(assert (= (and d!131270 c!73422) b!372995))

(assert (= (and d!131270 (not c!73422)) b!372996))

(declare-fun m!553369 () Bool)

(assert (=> b!372995 m!553369))

(assert (=> b!372995 m!553369))

(declare-fun m!553371 () Bool)

(assert (=> b!372995 m!553371))

(declare-fun m!553373 () Bool)

(assert (=> b!372995 m!553373))

(assert (=> b!372995 m!553371))

(assert (=> b!372995 m!553373))

(declare-fun m!553375 () Bool)

(assert (=> b!372995 m!553375))

(assert (=> b!372000 d!131270))

(declare-fun d!131274 () Bool)

(assert (=> d!131274 (= (isEmpty!2970 (_2!2674 lt!161576)) ((_ is Nil!4173) (_2!2674 lt!161576)))))

(assert (=> b!371999 d!131274))

(declare-fun b!373011 () Bool)

(declare-fun e!229306 () Bool)

(declare-fun tp_is_empty!1913 () Bool)

(assert (=> b!373011 (= e!229306 tp_is_empty!1913)))

(declare-fun b!373014 () Bool)

(declare-fun tp!116866 () Bool)

(declare-fun tp!116867 () Bool)

(assert (=> b!373014 (= e!229306 (and tp!116866 tp!116867))))

(declare-fun b!373013 () Bool)

(declare-fun tp!116864 () Bool)

(assert (=> b!373013 (= e!229306 tp!116864)))

(declare-fun b!373012 () Bool)

(declare-fun tp!116865 () Bool)

(declare-fun tp!116868 () Bool)

(assert (=> b!373012 (= e!229306 (and tp!116865 tp!116868))))

(assert (=> b!372002 (= tp!116841 e!229306)))

(assert (= (and b!372002 ((_ is ElementMatch!1029) (regex!805 (h!9571 rules!1920)))) b!373011))

(assert (= (and b!372002 ((_ is Concat!1857) (regex!805 (h!9571 rules!1920)))) b!373012))

(assert (= (and b!372002 ((_ is Star!1029) (regex!805 (h!9571 rules!1920)))) b!373013))

(assert (= (and b!372002 ((_ is Union!1029) (regex!805 (h!9571 rules!1920)))) b!373014))

(declare-fun b!373015 () Bool)

(declare-fun e!229307 () Bool)

(assert (=> b!373015 (= e!229307 tp_is_empty!1913)))

(declare-fun b!373018 () Bool)

(declare-fun tp!116871 () Bool)

(declare-fun tp!116872 () Bool)

(assert (=> b!373018 (= e!229307 (and tp!116871 tp!116872))))

(declare-fun b!373017 () Bool)

(declare-fun tp!116869 () Bool)

(assert (=> b!373017 (= e!229307 tp!116869)))

(declare-fun b!373016 () Bool)

(declare-fun tp!116870 () Bool)

(declare-fun tp!116873 () Bool)

(assert (=> b!373016 (= e!229307 (and tp!116870 tp!116873))))

(assert (=> b!372005 (= tp!116834 e!229307)))

(assert (= (and b!372005 ((_ is ElementMatch!1029) (regex!805 (rule!1450 (h!9572 tokens!465))))) b!373015))

(assert (= (and b!372005 ((_ is Concat!1857) (regex!805 (rule!1450 (h!9572 tokens!465))))) b!373016))

(assert (= (and b!372005 ((_ is Star!1029) (regex!805 (rule!1450 (h!9572 tokens!465))))) b!373017))

(assert (= (and b!372005 ((_ is Union!1029) (regex!805 (rule!1450 (h!9572 tokens!465))))) b!373018))

(declare-fun b!373019 () Bool)

(declare-fun e!229308 () Bool)

(assert (=> b!373019 (= e!229308 tp_is_empty!1913)))

(declare-fun b!373022 () Bool)

(declare-fun tp!116876 () Bool)

(declare-fun tp!116877 () Bool)

(assert (=> b!373022 (= e!229308 (and tp!116876 tp!116877))))

(declare-fun b!373021 () Bool)

(declare-fun tp!116874 () Bool)

(assert (=> b!373021 (= e!229308 tp!116874)))

(declare-fun b!373020 () Bool)

(declare-fun tp!116875 () Bool)

(declare-fun tp!116878 () Bool)

(assert (=> b!373020 (= e!229308 (and tp!116875 tp!116878))))

(assert (=> b!372027 (= tp!116831 e!229308)))

(assert (= (and b!372027 ((_ is ElementMatch!1029) (regex!805 (rule!1450 separatorToken!170)))) b!373019))

(assert (= (and b!372027 ((_ is Concat!1857) (regex!805 (rule!1450 separatorToken!170)))) b!373020))

(assert (= (and b!372027 ((_ is Star!1029) (regex!805 (rule!1450 separatorToken!170)))) b!373021))

(assert (= (and b!372027 ((_ is Union!1029) (regex!805 (rule!1450 separatorToken!170)))) b!373022))

(declare-fun b!373025 () Bool)

(declare-fun e!229311 () Bool)

(assert (=> b!373025 (= e!229311 true)))

(declare-fun b!373024 () Bool)

(declare-fun e!229310 () Bool)

(assert (=> b!373024 (= e!229310 e!229311)))

(declare-fun b!373023 () Bool)

(declare-fun e!229309 () Bool)

(assert (=> b!373023 (= e!229309 e!229310)))

(assert (=> b!372048 e!229309))

(assert (= b!373024 b!373025))

(assert (= b!373023 b!373024))

(assert (= (and b!372048 ((_ is Cons!4174) (t!57248 rules!1920))) b!373023))

(assert (=> b!373025 (< (dynLambda!2383 order!3505 (toValue!1588 (transformation!805 (h!9571 (t!57248 rules!1920))))) (dynLambda!2384 order!3507 lambda!11578))))

(assert (=> b!373025 (< (dynLambda!2385 order!3509 (toChars!1447 (transformation!805 (h!9571 (t!57248 rules!1920))))) (dynLambda!2384 order!3507 lambda!11578))))

(declare-fun b!373030 () Bool)

(declare-fun e!229314 () Bool)

(declare-fun tp!116881 () Bool)

(assert (=> b!373030 (= e!229314 (and tp_is_empty!1913 tp!116881))))

(assert (=> b!372039 (= tp!116833 e!229314)))

(assert (= (and b!372039 ((_ is Cons!4173) (originalCharacters!848 separatorToken!170))) b!373030))

(declare-fun b!373031 () Bool)

(declare-fun e!229315 () Bool)

(declare-fun tp!116882 () Bool)

(assert (=> b!373031 (= e!229315 (and tp_is_empty!1913 tp!116882))))

(assert (=> b!372032 (= tp!116839 e!229315)))

(assert (= (and b!372032 ((_ is Cons!4173) (originalCharacters!848 (h!9572 tokens!465)))) b!373031))

(declare-fun b!373059 () Bool)

(declare-fun b_free!11605 () Bool)

(declare-fun b_next!11605 () Bool)

(assert (=> b!373059 (= b_free!11605 (not b_next!11605))))

(declare-fun tp!116894 () Bool)

(declare-fun b_and!37477 () Bool)

(assert (=> b!373059 (= tp!116894 b_and!37477)))

(declare-fun b_free!11607 () Bool)

(declare-fun b_next!11607 () Bool)

(assert (=> b!373059 (= b_free!11607 (not b_next!11607))))

(declare-fun t!57313 () Bool)

(declare-fun tb!32757 () Bool)

(assert (=> (and b!373059 (= (toChars!1447 (transformation!805 (rule!1450 (h!9572 (t!57249 tokens!465))))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465))))) t!57313) tb!32757))

(declare-fun result!36958 () Bool)

(assert (= result!36958 result!36920))

(assert (=> b!372484 t!57313))

(assert (=> d!130952 t!57313))

(declare-fun tb!32759 () Bool)

(declare-fun t!57315 () Bool)

(assert (=> (and b!373059 (= (toChars!1447 (transformation!805 (rule!1450 (h!9572 (t!57249 tokens!465))))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170)))) t!57315) tb!32759))

(declare-fun result!36960 () Bool)

(assert (= result!36960 result!36912))

(assert (=> d!130948 t!57315))

(declare-fun tb!32761 () Bool)

(declare-fun t!57317 () Bool)

(assert (=> (and b!373059 (= (toChars!1447 (transformation!805 (rule!1450 (h!9572 (t!57249 tokens!465))))) (toChars!1447 (transformation!805 (rule!1450 lt!161578)))) t!57317) tb!32761))

(declare-fun result!36962 () Bool)

(assert (= result!36962 result!36926))

(assert (=> d!131028 t!57317))

(assert (=> b!372903 t!57315))

(declare-fun tp!116896 () Bool)

(declare-fun b_and!37479 () Bool)

(assert (=> b!373059 (= tp!116896 (and (=> t!57315 result!36960) (=> t!57313 result!36958) (=> t!57317 result!36962) b_and!37479))))

(declare-fun e!229336 () Bool)

(declare-fun tp!116893 () Bool)

(declare-fun e!229338 () Bool)

(declare-fun b!373056 () Bool)

(assert (=> b!373056 (= e!229336 (and (inv!5184 (h!9572 (t!57249 tokens!465))) e!229338 tp!116893))))

(assert (=> b!372030 (= tp!116842 e!229336)))

(declare-fun tp!116895 () Bool)

(declare-fun b!373057 () Bool)

(declare-fun e!229340 () Bool)

(assert (=> b!373057 (= e!229338 (and (inv!21 (value!27258 (h!9572 (t!57249 tokens!465)))) e!229340 tp!116895))))

(declare-fun tp!116897 () Bool)

(declare-fun e!229335 () Bool)

(declare-fun b!373058 () Bool)

(assert (=> b!373058 (= e!229340 (and tp!116897 (inv!5180 (tag!1035 (rule!1450 (h!9572 (t!57249 tokens!465))))) (inv!5183 (transformation!805 (rule!1450 (h!9572 (t!57249 tokens!465))))) e!229335))))

(assert (=> b!373059 (= e!229335 (and tp!116894 tp!116896))))

(assert (= b!373058 b!373059))

(assert (= b!373057 b!373058))

(assert (= b!373056 b!373057))

(assert (= (and b!372030 ((_ is Cons!4175) (t!57249 tokens!465))) b!373056))

(declare-fun m!553407 () Bool)

(assert (=> b!373056 m!553407))

(declare-fun m!553409 () Bool)

(assert (=> b!373057 m!553409))

(declare-fun m!553411 () Bool)

(assert (=> b!373058 m!553411))

(declare-fun m!553413 () Bool)

(assert (=> b!373058 m!553413))

(declare-fun b!373090 () Bool)

(declare-fun b_free!11609 () Bool)

(declare-fun b_next!11609 () Bool)

(assert (=> b!373090 (= b_free!11609 (not b_next!11609))))

(declare-fun tp!116906 () Bool)

(declare-fun b_and!37481 () Bool)

(assert (=> b!373090 (= tp!116906 b_and!37481)))

(declare-fun b_free!11611 () Bool)

(declare-fun b_next!11611 () Bool)

(assert (=> b!373090 (= b_free!11611 (not b_next!11611))))

(declare-fun tb!32763 () Bool)

(declare-fun t!57319 () Bool)

(assert (=> (and b!373090 (= (toChars!1447 (transformation!805 (h!9571 (t!57248 rules!1920)))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465))))) t!57319) tb!32763))

(declare-fun result!36966 () Bool)

(assert (= result!36966 result!36920))

(assert (=> b!372484 t!57319))

(assert (=> d!130952 t!57319))

(declare-fun tb!32765 () Bool)

(declare-fun t!57321 () Bool)

(assert (=> (and b!373090 (= (toChars!1447 (transformation!805 (h!9571 (t!57248 rules!1920)))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170)))) t!57321) tb!32765))

(declare-fun result!36968 () Bool)

(assert (= result!36968 result!36912))

(assert (=> d!130948 t!57321))

(declare-fun t!57323 () Bool)

(declare-fun tb!32767 () Bool)

(assert (=> (and b!373090 (= (toChars!1447 (transformation!805 (h!9571 (t!57248 rules!1920)))) (toChars!1447 (transformation!805 (rule!1450 lt!161578)))) t!57323) tb!32767))

(declare-fun result!36970 () Bool)

(assert (= result!36970 result!36926))

(assert (=> d!131028 t!57323))

(assert (=> b!372903 t!57321))

(declare-fun b_and!37483 () Bool)

(declare-fun tp!116907 () Bool)

(assert (=> b!373090 (= tp!116907 (and (=> t!57319 result!36966) (=> t!57321 result!36968) (=> t!57323 result!36970) b_and!37483))))

(declare-fun e!229365 () Bool)

(assert (=> b!373090 (= e!229365 (and tp!116906 tp!116907))))

(declare-fun tp!116909 () Bool)

(declare-fun b!373089 () Bool)

(declare-fun e!229364 () Bool)

(assert (=> b!373089 (= e!229364 (and tp!116909 (inv!5180 (tag!1035 (h!9571 (t!57248 rules!1920)))) (inv!5183 (transformation!805 (h!9571 (t!57248 rules!1920)))) e!229365))))

(declare-fun b!373088 () Bool)

(declare-fun e!229362 () Bool)

(declare-fun tp!116908 () Bool)

(assert (=> b!373088 (= e!229362 (and e!229364 tp!116908))))

(assert (=> b!371998 (= tp!116836 e!229362)))

(assert (= b!373089 b!373090))

(assert (= b!373088 b!373089))

(assert (= (and b!371998 ((_ is Cons!4174) (t!57248 rules!1920))) b!373088))

(declare-fun m!553431 () Bool)

(assert (=> b!373089 m!553431))

(declare-fun m!553433 () Bool)

(assert (=> b!373089 m!553433))

(declare-fun b_lambda!14615 () Bool)

(assert (= b_lambda!14595 (or b!372033 b_lambda!14615)))

(declare-fun bs!45245 () Bool)

(declare-fun d!131300 () Bool)

(assert (= bs!45245 (and d!131300 b!372033)))

(assert (=> bs!45245 (= (dynLambda!2389 lambda!11578 lt!161578) (rulesProduceIndividualToken!440 thiss!17480 rules!1920 lt!161578))))

(assert (=> bs!45245 m!551481))

(assert (=> d!131058 d!131300))

(declare-fun b_lambda!14617 () Bool)

(assert (= b_lambda!14605 (or b!372033 b_lambda!14617)))

(declare-fun bs!45246 () Bool)

(declare-fun d!131302 () Bool)

(assert (= bs!45246 (and d!131302 b!372033)))

(assert (=> bs!45246 (= (dynLambda!2389 lambda!11578 (h!9572 tokens!465)) (rulesProduceIndividualToken!440 thiss!17480 rules!1920 (h!9572 tokens!465)))))

(assert (=> bs!45246 m!551453))

(assert (=> d!131198 d!131302))

(declare-fun b_lambda!14619 () Bool)

(assert (= b_lambda!14589 (or (and b!372019 b_free!11595 (= (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))))) (and b!373059 b_free!11607 (= (toChars!1447 (transformation!805 (rule!1450 (h!9572 (t!57249 tokens!465))))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))))) (and b!372031 b_free!11599) (and b!373090 b_free!11611 (= (toChars!1447 (transformation!805 (h!9571 (t!57248 rules!1920)))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))))) (and b!372038 b_free!11603 (= (toChars!1447 (transformation!805 (h!9571 rules!1920))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))))) b_lambda!14619)))

(declare-fun b_lambda!14621 () Bool)

(assert (= b_lambda!14607 (or (and b!372019 b_free!11595) (and b!372031 b_free!11599 (= (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))))) (and b!373059 b_free!11607 (= (toChars!1447 (transformation!805 (rule!1450 (h!9572 (t!57249 tokens!465))))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))))) (and b!373090 b_free!11611 (= (toChars!1447 (transformation!805 (h!9571 (t!57248 rules!1920)))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))))) (and b!372038 b_free!11603 (= (toChars!1447 (transformation!805 (h!9571 rules!1920))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))))) b_lambda!14621)))

(declare-fun b_lambda!14623 () Bool)

(assert (= b_lambda!14587 (or (and b!372019 b_free!11595 (= (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))))) (and b!373059 b_free!11607 (= (toChars!1447 (transformation!805 (rule!1450 (h!9572 (t!57249 tokens!465))))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))))) (and b!372031 b_free!11599) (and b!373090 b_free!11611 (= (toChars!1447 (transformation!805 (h!9571 (t!57248 rules!1920)))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))))) (and b!372038 b_free!11603 (= (toChars!1447 (transformation!805 (h!9571 rules!1920))) (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))))) b_lambda!14623)))

(declare-fun b_lambda!14625 () Bool)

(assert (= b_lambda!14585 (or (and b!372019 b_free!11595) (and b!372031 b_free!11599 (= (toChars!1447 (transformation!805 (rule!1450 (h!9572 tokens!465)))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))))) (and b!373059 b_free!11607 (= (toChars!1447 (transformation!805 (rule!1450 (h!9572 (t!57249 tokens!465))))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))))) (and b!373090 b_free!11611 (= (toChars!1447 (transformation!805 (h!9571 (t!57248 rules!1920)))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))))) (and b!372038 b_free!11603 (= (toChars!1447 (transformation!805 (h!9571 rules!1920))) (toChars!1447 (transformation!805 (rule!1450 separatorToken!170))))) b_lambda!14625)))

(declare-fun b_lambda!14627 () Bool)

(assert (= b_lambda!14591 (or b!372009 b_lambda!14627)))

(declare-fun bs!45247 () Bool)

(declare-fun d!131304 () Bool)

(assert (= bs!45247 (and d!131304 b!372009)))

(assert (=> bs!45247 (= (dynLambda!2389 lambda!11577 (h!9572 tokens!465)) (not (isSeparator!805 (rule!1450 (h!9572 tokens!465)))))))

(assert (=> b!372490 d!131304))

(check-sat (not b!372478) (not b!372851) (not b!372525) (not b!372196) (not b!372860) (not d!131162) (not b!372523) (not d!131034) (not bm!23686) (not b!372625) (not b_lambda!14621) (not b!372124) (not b!372283) (not b!372571) (not b!372855) (not b!372055) tp_is_empty!1913 (not d!130910) (not b!372129) (not b!372302) (not d!130984) (not b_lambda!14623) (not d!130952) b_and!37405 (not b!372893) (not d!130954) (not b!372315) (not b!372559) (not b!373058) (not b!373021) (not d!131022) (not b!372587) (not tb!32733) (not b!373012) (not b!373020) (not bm!23610) (not bm!23689) (not b!372974) (not tb!32727) (not b!372890) (not d!131204) (not b!372638) (not b_next!11603) (not b!373018) (not b!372309) (not d!130960) (not b_lambda!14617) (not d!130916) (not d!130930) (not d!131102) (not b!372301) b_and!37483 (not b!372515) (not b!372558) (not d!131170) (not d!131056) (not b!372498) (not bm!23680) (not b!372128) (not b!372889) (not d!131224) (not b!372568) (not b!372101) (not b!372178) (not b!372883) (not b!372585) (not b!372105) (not bm!23585) (not b!372853) (not bs!45246) (not b!372873) (not b!372891) (not b_lambda!14619) (not b!372286) (not d!131264) (not bm!23581) (not b!372182) (not b!372879) (not b!373013) (not b!372572) (not d!130928) (not d!131178) (not d!131196) (not d!131088) (not b!372892) (not d!130950) (not bm!23676) (not b!372900) (not b!372312) (not b!373057) (not b!372612) (not b!372308) (not b!372280) (not b!372777) (not d!130988) (not b!372861) (not bm!23566) (not b!372282) (not b!372904) (not b!372125) (not b!372379) (not d!131058) (not b!372630) (not b!372569) (not b!372629) (not b!372514) (not bm!23611) (not d!131060) (not d!131218) (not d!131030) (not bm!23599) (not d!131048) b_and!37467 (not b!372640) (not d!130904) (not b!372350) (not bm!23582) (not bm!23687) (not d!130968) (not b!372570) (not d!131026) (not d!130894) (not d!131198) (not b!372894) (not b!372092) (not d!131046) (not b!373088) (not b!372584) (not b!372331) (not b!372987) (not b!372779) (not b!372501) (not b!373031) (not bm!23600) (not b_next!11609) (not bm!23605) (not d!131092) (not b_lambda!14615) (not b!372857) (not b!372087) (not d!131176) (not d!130996) (not b!372323) (not b!372291) (not b!372319) (not d!131226) (not bm!23619) b_and!37413 (not b_next!11595) (not b!372485) (not b!372357) (not d!130972) (not b!372088) (not b!372475) (not b!372591) (not bm!23688) (not bm!23682) (not d!131028) (not b_next!11597) (not b!372903) (not b!372565) (not d!131220) (not d!131160) (not b!372624) (not d!130892) (not b!372848) (not b!372592) (not b!373014) (not b!372102) (not d!130998) (not b!372491) (not d!130902) (not bm!23677) (not bm!23613) (not d!131200) (not b_lambda!14593) (not d!130966) (not b_next!11607) (not b!373023) (not d!131216) (not b!372864) (not b_next!11611) (not b!372381) (not b!372516) (not bm!23630) (not b!372318) (not b_next!11605) (not b!373056) (not b!372084) (not b!372175) (not b!373022) (not b!373030) (not d!131040) (not b!372473) (not bm!23567) (not bm!23681) (not b!372484) (not bs!45245) (not d!131036) (not b!372967) (not bm!23608) (not b!372870) (not b!372351) (not b!372971) (not d!130908) (not b!372876) (not d!130912) b_and!37469 (not b!372360) (not b!372378) (not b!372104) (not b!372299) (not d!131098) (not b_next!11601) (not d!130990) (not b!372334) (not d!131210) (not b!372976) (not b!372310) (not b!372872) (not bm!23603) (not b!372106) (not b_lambda!14627) (not b!372567) (not b!372471) (not b!372179) (not d!131268) (not b!372513) (not b!372329) (not d!131222) (not b!372613) (not b!372895) (not b!372472) (not b!372085) (not b!372852) (not b!372909) (not b!372593) (not b!372298) b_and!37477 (not b!372907) (not d!130914) (not d!131050) (not b!372496) (not d!130992) (not d!130964) (not b!372875) (not b!372854) (not b!372476) (not d!130896) (not b!372281) (not d!131266) (not b!372815) (not b!372902) (not d!131066) (not b!372586) (not d!130948) (not b!372814) (not d!131038) (not b!372901) (not tb!32721) (not b!372899) (not b!372878) (not b!372287) (not bm!23583) (not d!130906) (not b!372564) (not b!372327) b_and!37465 (not b!372330) (not b!372880) (not b_lambda!14625) (not d!130986) (not b!372623) (not b_next!11599) (not bm!23678) (not b!372522) (not b!372906) (not b!372628) (not b!372566) (not d!131064) (not b!372859) (not d!131230) (not b!372847) (not b!372314) (not b!372311) (not b!372497) (not d!131062) (not b!372560) (not d!131164) (not b!372100) (not b!372778) (not d!131054) (not b!373016) (not b!372349) (not d!131208) (not d!131258) (not b!372197) (not b_next!11593) b_and!37479 (not b!372177) (not bm!23609) (not d!131032) b_and!37409 (not d!130982) (not b!372816) (not b!372109) (not b!373089) (not b!372477) (not b!372474) (not b!372089) (not b!372313) (not bm!23604) (not b!373017) (not b!372995) (not b!372781) (not d!131072) (not d!131044) (not b!372850) (not b!372896) b_and!37481 (not d!131260) (not b!372856))
(check-sat b_and!37405 (not b_next!11603) b_and!37483 b_and!37467 (not b_next!11609) (not b_next!11597) b_and!37477 b_and!37465 (not b_next!11599) b_and!37481 b_and!37413 (not b_next!11595) (not b_next!11607) (not b_next!11605) (not b_next!11611) b_and!37469 (not b_next!11601) (not b_next!11593) b_and!37409 b_and!37479)
