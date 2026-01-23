; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43850 () Bool)

(assert start!43850)

(declare-fun b!461297 () Bool)

(declare-fun b_free!12945 () Bool)

(declare-fun b_next!12945 () Bool)

(assert (=> b!461297 (= b_free!12945 (not b_next!12945))))

(declare-fun tp!127665 () Bool)

(declare-fun b_and!49529 () Bool)

(assert (=> b!461297 (= tp!127665 b_and!49529)))

(declare-fun b_free!12947 () Bool)

(declare-fun b_next!12947 () Bool)

(assert (=> b!461297 (= b_free!12947 (not b_next!12947))))

(declare-fun tp!127668 () Bool)

(declare-fun b_and!49531 () Bool)

(assert (=> b!461297 (= tp!127668 b_and!49531)))

(declare-fun b!461294 () Bool)

(declare-fun b_free!12949 () Bool)

(declare-fun b_next!12949 () Bool)

(assert (=> b!461294 (= b_free!12949 (not b_next!12949))))

(declare-fun tp!127658 () Bool)

(declare-fun b_and!49533 () Bool)

(assert (=> b!461294 (= tp!127658 b_and!49533)))

(declare-fun b_free!12951 () Bool)

(declare-fun b_next!12951 () Bool)

(assert (=> b!461294 (= b_free!12951 (not b_next!12951))))

(declare-fun tp!127664 () Bool)

(declare-fun b_and!49535 () Bool)

(assert (=> b!461294 (= tp!127664 b_and!49535)))

(declare-fun b!461281 () Bool)

(declare-fun b_free!12953 () Bool)

(declare-fun b_next!12953 () Bool)

(assert (=> b!461281 (= b_free!12953 (not b_next!12953))))

(declare-fun tp!127661 () Bool)

(declare-fun b_and!49537 () Bool)

(assert (=> b!461281 (= tp!127661 b_and!49537)))

(declare-fun b_free!12955 () Bool)

(declare-fun b_next!12955 () Bool)

(assert (=> b!461281 (= b_free!12955 (not b_next!12955))))

(declare-fun tp!127662 () Bool)

(declare-fun b_and!49539 () Bool)

(assert (=> b!461281 (= tp!127662 b_and!49539)))

(declare-fun bs!57158 () Bool)

(declare-fun b!461292 () Bool)

(declare-fun b!461290 () Bool)

(assert (= bs!57158 (and b!461292 b!461290)))

(declare-fun lambda!13618 () Int)

(declare-fun lambda!13617 () Int)

(assert (=> bs!57158 (not (= lambda!13618 lambda!13617))))

(declare-fun b!461322 () Bool)

(declare-fun e!282678 () Bool)

(assert (=> b!461322 (= e!282678 true)))

(declare-fun b!461321 () Bool)

(declare-fun e!282677 () Bool)

(assert (=> b!461321 (= e!282677 e!282678)))

(declare-fun b!461320 () Bool)

(declare-fun e!282676 () Bool)

(assert (=> b!461320 (= e!282676 e!282677)))

(assert (=> b!461292 e!282676))

(assert (= b!461321 b!461322))

(assert (= b!461320 b!461321))

(declare-datatypes ((List!4502 0))(
  ( (Nil!4492) (Cons!4492 (h!9889 (_ BitVec 16)) (t!71882 List!4502)) )
))
(declare-datatypes ((TokenValue!897 0))(
  ( (FloatLiteralValue!1794 (text!6724 List!4502)) (TokenValueExt!896 (__x!3281 Int)) (Broken!4485 (value!29227 List!4502)) (Object!906) (End!897) (Def!897) (Underscore!897) (Match!897) (Else!897) (Error!897) (Case!897) (If!897) (Extends!897) (Abstract!897) (Class!897) (Val!897) (DelimiterValue!1794 (del!957 List!4502)) (KeywordValue!903 (value!29228 List!4502)) (CommentValue!1794 (value!29229 List!4502)) (WhitespaceValue!1794 (value!29230 List!4502)) (IndentationValue!897 (value!29231 List!4502)) (String!5564) (Int32!897) (Broken!4486 (value!29232 List!4502)) (Boolean!898) (Unit!8112) (OperatorValue!900 (op!957 List!4502)) (IdentifierValue!1794 (value!29233 List!4502)) (IdentifierValue!1795 (value!29234 List!4502)) (WhitespaceValue!1795 (value!29235 List!4502)) (True!1794) (False!1794) (Broken!4487 (value!29236 List!4502)) (Broken!4488 (value!29237 List!4502)) (True!1795) (RightBrace!897) (RightBracket!897) (Colon!897) (Null!897) (Comma!897) (LeftBracket!897) (False!1795) (LeftBrace!897) (ImaginaryLiteralValue!897 (text!6725 List!4502)) (StringLiteralValue!2691 (value!29238 List!4502)) (EOFValue!897 (value!29239 List!4502)) (IdentValue!897 (value!29240 List!4502)) (DelimiterValue!1795 (value!29241 List!4502)) (DedentValue!897 (value!29242 List!4502)) (NewLineValue!897 (value!29243 List!4502)) (IntegerValue!2691 (value!29244 (_ BitVec 32)) (text!6726 List!4502)) (IntegerValue!2692 (value!29245 Int) (text!6727 List!4502)) (Times!897) (Or!897) (Equal!897) (Minus!897) (Broken!4489 (value!29246 List!4502)) (And!897) (Div!897) (LessEqual!897) (Mod!897) (Concat!1996) (Not!897) (Plus!897) (SpaceValue!897 (value!29247 List!4502)) (IntegerValue!2693 (value!29248 Int) (text!6728 List!4502)) (StringLiteralValue!2692 (text!6729 List!4502)) (FloatLiteralValue!1795 (text!6730 List!4502)) (BytesLiteralValue!897 (value!29249 List!4502)) (CommentValue!1795 (value!29250 List!4502)) (StringLiteralValue!2693 (value!29251 List!4502)) (ErrorTokenValue!897 (msg!958 List!4502)) )
))
(declare-datatypes ((C!3120 0))(
  ( (C!3121 (val!1446 Int)) )
))
(declare-datatypes ((List!4503 0))(
  ( (Nil!4493) (Cons!4493 (h!9890 C!3120) (t!71883 List!4503)) )
))
(declare-datatypes ((IArray!3145 0))(
  ( (IArray!3146 (innerList!1630 List!4503)) )
))
(declare-datatypes ((Conc!1572 0))(
  ( (Node!1572 (left!3800 Conc!1572) (right!4130 Conc!1572) (csize!3374 Int) (cheight!1783 Int)) (Leaf!2349 (xs!4203 IArray!3145) (csize!3375 Int)) (Empty!1572) )
))
(declare-datatypes ((BalanceConc!3152 0))(
  ( (BalanceConc!3153 (c!92854 Conc!1572)) )
))
(declare-datatypes ((TokenValueInjection!1566 0))(
  ( (TokenValueInjection!1567 (toValue!1694 Int) (toChars!1553 Int)) )
))
(declare-datatypes ((String!5565 0))(
  ( (String!5566 (value!29252 String)) )
))
(declare-datatypes ((Regex!1099 0))(
  ( (ElementMatch!1099 (c!92855 C!3120)) (Concat!1997 (regOne!2710 Regex!1099) (regTwo!2710 Regex!1099)) (EmptyExpr!1099) (Star!1099 (reg!1428 Regex!1099)) (EmptyLang!1099) (Union!1099 (regOne!2711 Regex!1099) (regTwo!2711 Regex!1099)) )
))
(declare-datatypes ((Rule!1550 0))(
  ( (Rule!1551 (regex!875 Regex!1099) (tag!1135 String!5565) (isSeparator!875 Bool) (transformation!875 TokenValueInjection!1566)) )
))
(declare-datatypes ((List!4504 0))(
  ( (Nil!4494) (Cons!4494 (h!9891 Rule!1550) (t!71884 List!4504)) )
))
(declare-fun rules!1920 () List!4504)

(get-info :version)

(assert (= (and b!461292 ((_ is Cons!4494) rules!1920)) b!461320))

(declare-fun order!4009 () Int)

(declare-fun order!4011 () Int)

(declare-fun dynLambda!2744 (Int Int) Int)

(declare-fun dynLambda!2745 (Int Int) Int)

(assert (=> b!461322 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13618))))

(declare-fun order!4013 () Int)

(declare-fun dynLambda!2746 (Int Int) Int)

(assert (=> b!461322 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13618))))

(assert (=> b!461292 true))

(declare-fun b!461276 () Bool)

(declare-fun res!205353 () Bool)

(declare-fun e!282668 () Bool)

(assert (=> b!461276 (=> (not res!205353) (not e!282668))))

(declare-fun sepAndNonSepRulesDisjointChars!464 (List!4504 List!4504) Bool)

(assert (=> b!461276 (= res!205353 (sepAndNonSepRulesDisjointChars!464 rules!1920 rules!1920))))

(declare-fun b!461277 () Bool)

(declare-fun res!205359 () Bool)

(declare-fun e!282656 () Bool)

(assert (=> b!461277 (=> (not res!205359) (not e!282656))))

(declare-fun isEmpty!3482 (List!4504) Bool)

(assert (=> b!461277 (= res!205359 (not (isEmpty!3482 rules!1920)))))

(declare-fun e!282647 () Bool)

(declare-datatypes ((Token!1494 0))(
  ( (Token!1495 (value!29253 TokenValue!897) (rule!1570 Rule!1550) (size!3667 Int) (originalCharacters!918 List!4503)) )
))
(declare-fun separatorToken!170 () Token!1494)

(declare-fun b!461278 () Bool)

(declare-fun tp!127669 () Bool)

(declare-fun e!282646 () Bool)

(declare-fun inv!21 (TokenValue!897) Bool)

(assert (=> b!461278 (= e!282646 (and (inv!21 (value!29253 separatorToken!170)) e!282647 tp!127669))))

(declare-fun b!461279 () Bool)

(declare-fun e!282653 () Bool)

(assert (=> b!461279 (= e!282668 e!282653)))

(declare-fun res!205350 () Bool)

(assert (=> b!461279 (=> (not res!205350) (not e!282653))))

(declare-fun lt!205920 () List!4503)

(declare-fun lt!205916 () List!4503)

(assert (=> b!461279 (= res!205350 (= lt!205920 lt!205916))))

(declare-fun lt!205918 () BalanceConc!3152)

(declare-fun list!2004 (BalanceConc!3152) List!4503)

(assert (=> b!461279 (= lt!205916 (list!2004 lt!205918))))

(declare-datatypes ((List!4505 0))(
  ( (Nil!4495) (Cons!4495 (h!9892 Token!1494) (t!71885 List!4505)) )
))
(declare-datatypes ((IArray!3147 0))(
  ( (IArray!3148 (innerList!1631 List!4505)) )
))
(declare-datatypes ((Conc!1573 0))(
  ( (Node!1573 (left!3801 Conc!1573) (right!4131 Conc!1573) (csize!3376 Int) (cheight!1784 Int)) (Leaf!2350 (xs!4204 IArray!3147) (csize!3377 Int)) (Empty!1573) )
))
(declare-datatypes ((BalanceConc!3154 0))(
  ( (BalanceConc!3155 (c!92856 Conc!1573)) )
))
(declare-fun lt!205904 () BalanceConc!3154)

(declare-datatypes ((LexerInterface!761 0))(
  ( (LexerInterfaceExt!758 (__x!3282 Int)) (Lexer!759) )
))
(declare-fun thiss!17480 () LexerInterface!761)

(declare-fun printWithSeparatorTokenWhenNeededRec!434 (LexerInterface!761 List!4504 BalanceConc!3154 Token!1494 Int) BalanceConc!3152)

(assert (=> b!461279 (= lt!205918 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 lt!205904 separatorToken!170 0))))

(declare-fun tokens!465 () List!4505)

(declare-fun printWithSeparatorTokenWhenNeededList!442 (LexerInterface!761 List!4504 List!4505 Token!1494) List!4503)

(assert (=> b!461279 (= lt!205920 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!461280 () Bool)

(declare-fun e!282642 () Bool)

(declare-fun e!282654 () Bool)

(assert (=> b!461280 (= e!282642 e!282654)))

(declare-fun res!205362 () Bool)

(assert (=> b!461280 (=> (not res!205362) (not e!282654))))

(declare-datatypes ((tuple2!5490 0))(
  ( (tuple2!5491 (_1!2961 Token!1494) (_2!2961 List!4503)) )
))
(declare-datatypes ((Option!1184 0))(
  ( (None!1183) (Some!1183 (v!15532 tuple2!5490)) )
))
(declare-fun lt!205908 () Option!1184)

(declare-fun isDefined!1023 (Option!1184) Bool)

(assert (=> b!461280 (= res!205362 (isDefined!1023 lt!205908))))

(declare-fun maxPrefix!477 (LexerInterface!761 List!4504 List!4503) Option!1184)

(assert (=> b!461280 (= lt!205908 (maxPrefix!477 thiss!17480 rules!1920 lt!205920))))

(declare-fun e!282662 () Bool)

(assert (=> b!461281 (= e!282662 (and tp!127661 tp!127662))))

(declare-fun b!461282 () Bool)

(declare-fun res!205341 () Bool)

(assert (=> b!461282 (=> (not res!205341) (not e!282668))))

(assert (=> b!461282 (= res!205341 (isSeparator!875 (rule!1570 separatorToken!170)))))

(declare-fun b!461283 () Bool)

(declare-fun e!282648 () Bool)

(declare-fun e!282651 () Bool)

(assert (=> b!461283 (= e!282648 e!282651)))

(declare-fun res!205364 () Bool)

(assert (=> b!461283 (=> res!205364 e!282651)))

(declare-fun lt!205903 () Bool)

(assert (=> b!461283 (= res!205364 lt!205903)))

(declare-fun e!282657 () Bool)

(assert (=> b!461283 e!282657))

(declare-fun res!205348 () Bool)

(assert (=> b!461283 (=> (not res!205348) (not e!282657))))

(declare-fun lt!205911 () tuple2!5490)

(assert (=> b!461283 (= res!205348 (= (_1!2961 lt!205911) (h!9892 tokens!465)))))

(declare-fun lt!205902 () Option!1184)

(declare-fun get!1652 (Option!1184) tuple2!5490)

(assert (=> b!461283 (= lt!205911 (get!1652 lt!205902))))

(assert (=> b!461283 (isDefined!1023 lt!205902)))

(declare-fun lt!205905 () List!4503)

(assert (=> b!461283 (= lt!205902 (maxPrefix!477 thiss!17480 rules!1920 lt!205905))))

(declare-fun b!461284 () Bool)

(declare-fun head!1132 (List!4505) Token!1494)

(assert (=> b!461284 (= e!282654 (= (_1!2961 (get!1652 lt!205908)) (head!1132 tokens!465)))))

(declare-fun b!461285 () Bool)

(declare-fun res!205365 () Bool)

(declare-fun e!282664 () Bool)

(assert (=> b!461285 (=> res!205365 e!282664)))

(declare-fun lt!205912 () tuple2!5490)

(declare-fun ++!1312 (List!4503 List!4503) List!4503)

(assert (=> b!461285 (= res!205365 (not (= (++!1312 lt!205905 (_2!2961 lt!205912)) lt!205920)))))

(declare-fun b!461286 () Bool)

(declare-fun res!205352 () Bool)

(assert (=> b!461286 (=> res!205352 e!282664)))

(declare-fun lt!205895 () List!4503)

(assert (=> b!461286 (= res!205352 (not (= lt!205895 lt!205920)))))

(declare-fun e!282658 () Bool)

(declare-fun e!282652 () Bool)

(declare-fun b!461287 () Bool)

(declare-fun tp!127660 () Bool)

(assert (=> b!461287 (= e!282658 (and (inv!21 (value!29253 (h!9892 tokens!465))) e!282652 tp!127660))))

(declare-fun b!461288 () Bool)

(declare-fun e!282667 () Bool)

(declare-fun e!282655 () Bool)

(assert (=> b!461288 (= e!282667 e!282655)))

(declare-fun res!205342 () Bool)

(assert (=> b!461288 (=> res!205342 e!282655)))

(declare-fun e!282659 () Bool)

(assert (=> b!461288 (= res!205342 e!282659)))

(declare-fun res!205349 () Bool)

(assert (=> b!461288 (=> (not res!205349) (not e!282659))))

(assert (=> b!461288 (= res!205349 (not lt!205903))))

(declare-fun lt!205909 () List!4503)

(assert (=> b!461288 (= lt!205903 (= lt!205920 lt!205909))))

(declare-fun tp!127666 () Bool)

(declare-fun e!282663 () Bool)

(declare-fun b!461289 () Bool)

(declare-fun inv!5573 (Token!1494) Bool)

(assert (=> b!461289 (= e!282663 (and (inv!5573 (h!9892 tokens!465)) e!282658 tp!127666))))

(declare-fun res!205355 () Bool)

(assert (=> b!461290 (=> (not res!205355) (not e!282668))))

(declare-fun forall!1308 (List!4505 Int) Bool)

(assert (=> b!461290 (= res!205355 (forall!1308 tokens!465 lambda!13617))))

(declare-fun b!461291 () Bool)

(declare-fun e!282644 () Bool)

(declare-fun e!282661 () Bool)

(declare-fun tp!127667 () Bool)

(assert (=> b!461291 (= e!282644 (and e!282661 tp!127667))))

(declare-fun e!282665 () Bool)

(assert (=> b!461292 (= e!282665 e!282648)))

(declare-fun res!205354 () Bool)

(assert (=> b!461292 (=> res!205354 e!282648)))

(declare-datatypes ((tuple2!5492 0))(
  ( (tuple2!5493 (_1!2962 Token!1494) (_2!2962 BalanceConc!3152)) )
))
(declare-datatypes ((Option!1185 0))(
  ( (None!1184) (Some!1184 (v!15533 tuple2!5492)) )
))
(declare-fun isDefined!1024 (Option!1185) Bool)

(declare-fun maxPrefixZipperSequence!440 (LexerInterface!761 List!4504 BalanceConc!3152) Option!1185)

(declare-fun seqFromList!1115 (List!4503) BalanceConc!3152)

(assert (=> b!461292 (= res!205354 (not (isDefined!1024 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))

(declare-datatypes ((Unit!8113 0))(
  ( (Unit!8114) )
))
(declare-fun lt!205899 () Unit!8113)

(declare-fun forallContained!428 (List!4505 Int Token!1494) Unit!8113)

(assert (=> b!461292 (= lt!205899 (forallContained!428 tokens!465 lambda!13618 (h!9892 tokens!465)))))

(assert (=> b!461292 (= lt!205905 (originalCharacters!918 (h!9892 tokens!465)))))

(declare-fun b!461293 () Bool)

(declare-fun res!205345 () Bool)

(assert (=> b!461293 (=> res!205345 e!282665)))

(declare-fun rulesProduceIndividualToken!510 (LexerInterface!761 List!4504 Token!1494) Bool)

(assert (=> b!461293 (= res!205345 (not (rulesProduceIndividualToken!510 thiss!17480 rules!1920 (h!9892 tokens!465))))))

(declare-fun e!282666 () Bool)

(assert (=> b!461294 (= e!282666 (and tp!127658 tp!127664))))

(declare-fun b!461295 () Bool)

(declare-fun matchR!417 (Regex!1099 List!4503) Bool)

(assert (=> b!461295 (= e!282657 (matchR!417 (regex!875 (rule!1570 (h!9892 tokens!465))) lt!205905))))

(declare-fun b!461296 () Bool)

(declare-fun res!205347 () Bool)

(assert (=> b!461296 (=> (not res!205347) (not e!282656))))

(declare-fun rulesInvariant!727 (LexerInterface!761 List!4504) Bool)

(assert (=> b!461296 (= res!205347 (rulesInvariant!727 thiss!17480 rules!1920))))

(declare-fun e!282643 () Bool)

(assert (=> b!461297 (= e!282643 (and tp!127665 tp!127668))))

(declare-fun b!461298 () Bool)

(assert (=> b!461298 (= e!282653 (not e!282667))))

(declare-fun res!205343 () Bool)

(assert (=> b!461298 (=> res!205343 e!282667)))

(declare-fun lt!205901 () List!4503)

(declare-fun lt!205910 () BalanceConc!3152)

(assert (=> b!461298 (= res!205343 (not (= lt!205901 (list!2004 lt!205910))))))

(declare-fun seqFromList!1116 (List!4505) BalanceConc!3154)

(assert (=> b!461298 (= lt!205910 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0))))

(declare-fun lt!205917 () List!4503)

(assert (=> b!461298 (= lt!205917 lt!205909)))

(declare-fun lt!205914 () List!4503)

(assert (=> b!461298 (= lt!205909 (++!1312 lt!205905 lt!205914))))

(declare-fun lt!205896 () List!4503)

(assert (=> b!461298 (= lt!205917 (++!1312 (++!1312 lt!205905 lt!205896) lt!205901))))

(declare-fun lt!205906 () Unit!8113)

(declare-fun lemmaConcatAssociativity!612 (List!4503 List!4503 List!4503) Unit!8113)

(assert (=> b!461298 (= lt!205906 (lemmaConcatAssociativity!612 lt!205905 lt!205896 lt!205901))))

(declare-fun charsOf!518 (Token!1494) BalanceConc!3152)

(assert (=> b!461298 (= lt!205905 (list!2004 (charsOf!518 (h!9892 tokens!465))))))

(assert (=> b!461298 (= lt!205914 (++!1312 lt!205896 lt!205901))))

(assert (=> b!461298 (= lt!205901 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (t!71885 tokens!465) separatorToken!170))))

(assert (=> b!461298 (= lt!205896 (list!2004 (charsOf!518 separatorToken!170)))))

(declare-fun b!461299 () Bool)

(declare-fun res!205346 () Bool)

(assert (=> b!461299 (=> (not res!205346) (not e!282668))))

(assert (=> b!461299 (= res!205346 ((_ is Cons!4495) tokens!465))))

(declare-fun b!461300 () Bool)

(declare-fun res!205363 () Bool)

(assert (=> b!461300 (=> (not res!205363) (not e!282668))))

(assert (=> b!461300 (= res!205363 (rulesProduceIndividualToken!510 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun res!205356 () Bool)

(assert (=> start!43850 (=> (not res!205356) (not e!282656))))

(assert (=> start!43850 (= res!205356 ((_ is Lexer!759) thiss!17480))))

(assert (=> start!43850 e!282656))

(assert (=> start!43850 true))

(assert (=> start!43850 e!282644))

(assert (=> start!43850 (and (inv!5573 separatorToken!170) e!282646)))

(assert (=> start!43850 e!282663))

(declare-fun tp!127659 () Bool)

(declare-fun b!461301 () Bool)

(declare-fun inv!5570 (String!5565) Bool)

(declare-fun inv!5574 (TokenValueInjection!1566) Bool)

(assert (=> b!461301 (= e!282647 (and tp!127659 (inv!5570 (tag!1135 (rule!1570 separatorToken!170))) (inv!5574 (transformation!875 (rule!1570 separatorToken!170))) e!282662))))

(declare-fun tp!127663 () Bool)

(declare-fun b!461302 () Bool)

(assert (=> b!461302 (= e!282661 (and tp!127663 (inv!5570 (tag!1135 (h!9891 rules!1920))) (inv!5574 (transformation!875 (h!9891 rules!1920))) e!282666))))

(declare-fun b!461303 () Bool)

(assert (=> b!461303 (= e!282655 e!282665)))

(declare-fun res!205344 () Bool)

(assert (=> b!461303 (=> res!205344 e!282665)))

(declare-fun lt!205907 () List!4503)

(declare-fun lt!205898 () List!4503)

(assert (=> b!461303 (= res!205344 (or (not (= lt!205907 lt!205898)) (not (= lt!205898 lt!205905)) (not (= lt!205907 lt!205905))))))

(declare-fun printList!435 (LexerInterface!761 List!4505) List!4503)

(assert (=> b!461303 (= lt!205898 (printList!435 thiss!17480 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))

(declare-fun lt!205919 () BalanceConc!3152)

(assert (=> b!461303 (= lt!205907 (list!2004 lt!205919))))

(declare-fun lt!205900 () BalanceConc!3154)

(declare-fun printTailRec!447 (LexerInterface!761 BalanceConc!3154 Int BalanceConc!3152) BalanceConc!3152)

(assert (=> b!461303 (= lt!205919 (printTailRec!447 thiss!17480 lt!205900 0 (BalanceConc!3153 Empty!1572)))))

(declare-fun print!486 (LexerInterface!761 BalanceConc!3154) BalanceConc!3152)

(assert (=> b!461303 (= lt!205919 (print!486 thiss!17480 lt!205900))))

(declare-fun singletonSeq!421 (Token!1494) BalanceConc!3154)

(assert (=> b!461303 (= lt!205900 (singletonSeq!421 (h!9892 tokens!465)))))

(declare-fun b!461304 () Bool)

(declare-fun tp!127657 () Bool)

(assert (=> b!461304 (= e!282652 (and tp!127657 (inv!5570 (tag!1135 (rule!1570 (h!9892 tokens!465)))) (inv!5574 (transformation!875 (rule!1570 (h!9892 tokens!465)))) e!282643))))

(declare-fun b!461305 () Bool)

(assert (=> b!461305 (= e!282651 e!282664)))

(declare-fun res!205351 () Bool)

(assert (=> b!461305 (=> res!205351 e!282664)))

(declare-fun isPrefix!527 (List!4503 List!4503) Bool)

(assert (=> b!461305 (= res!205351 (not (isPrefix!527 lt!205905 lt!205920)))))

(assert (=> b!461305 (= lt!205912 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 lt!205920)))))

(assert (=> b!461305 (isPrefix!527 lt!205905 lt!205895)))

(assert (=> b!461305 (= lt!205895 (++!1312 lt!205905 lt!205901))))

(declare-fun lt!205915 () Unit!8113)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!412 (List!4503 List!4503) Unit!8113)

(assert (=> b!461305 (= lt!205915 (lemmaConcatTwoListThenFirstIsPrefix!412 lt!205905 lt!205901))))

(declare-fun filter!103 (List!4505 Int) List!4505)

(declare-fun list!2005 (BalanceConc!3154) List!4505)

(declare-datatypes ((tuple2!5494 0))(
  ( (tuple2!5495 (_1!2963 BalanceConc!3154) (_2!2963 BalanceConc!3152)) )
))
(declare-fun lex!553 (LexerInterface!761 List!4504 BalanceConc!3152) tuple2!5494)

(assert (=> b!461305 (= (filter!103 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))) lambda!13617) (t!71885 tokens!465))))

(declare-fun lt!205897 () Unit!8113)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!94 (LexerInterface!761 List!4504 List!4505 Token!1494) Unit!8113)

(assert (=> b!461305 (= lt!205897 (theoremInvertabilityFromTokensSepTokenWhenNeeded!94 thiss!17480 rules!1920 (t!71885 tokens!465) separatorToken!170))))

(assert (=> b!461305 e!282642))

(declare-fun res!205358 () Bool)

(assert (=> b!461305 (=> res!205358 e!282642)))

(declare-fun isEmpty!3483 (List!4505) Bool)

(assert (=> b!461305 (= res!205358 (isEmpty!3483 tokens!465))))

(declare-fun lt!205913 () Unit!8113)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!276 (LexerInterface!761 List!4504 List!4505 Token!1494) Unit!8113)

(assert (=> b!461305 (= lt!205913 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!276 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!461306 () Bool)

(assert (=> b!461306 (= e!282656 e!282668)))

(declare-fun res!205361 () Bool)

(assert (=> b!461306 (=> (not res!205361) (not e!282668))))

(declare-fun rulesProduceEachTokenIndividually!553 (LexerInterface!761 List!4504 BalanceConc!3154) Bool)

(assert (=> b!461306 (= res!205361 (rulesProduceEachTokenIndividually!553 thiss!17480 rules!1920 lt!205904))))

(assert (=> b!461306 (= lt!205904 (seqFromList!1116 tokens!465))))

(declare-fun b!461307 () Bool)

(declare-fun res!205340 () Bool)

(assert (=> b!461307 (=> (not res!205340) (not e!282657))))

(declare-fun isEmpty!3484 (List!4503) Bool)

(assert (=> b!461307 (= res!205340 (isEmpty!3484 (_2!2961 lt!205911)))))

(declare-fun b!461308 () Bool)

(declare-fun res!205357 () Bool)

(assert (=> b!461308 (=> res!205357 e!282665)))

(declare-fun isEmpty!3485 (BalanceConc!3154) Bool)

(assert (=> b!461308 (= res!205357 (isEmpty!3485 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 lt!205905)))))))

(declare-fun b!461309 () Bool)

(assert (=> b!461309 (= e!282659 (not (= lt!205920 (++!1312 lt!205905 lt!205901))))))

(declare-fun b!461310 () Bool)

(assert (=> b!461310 (= e!282664 (= (filter!103 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))) lambda!13617) tokens!465))))

(assert (=> b!461310 (= lt!205901 (_2!2961 lt!205912))))

(declare-fun lt!205894 () Unit!8113)

(declare-fun lemmaSamePrefixThenSameSuffix!296 (List!4503 List!4503 List!4503 List!4503 List!4503) Unit!8113)

(assert (=> b!461310 (= lt!205894 (lemmaSamePrefixThenSameSuffix!296 lt!205905 lt!205901 lt!205905 (_2!2961 lt!205912) lt!205920))))

(declare-fun b!461311 () Bool)

(declare-fun res!205360 () Bool)

(assert (=> b!461311 (=> (not res!205360) (not e!282653))))

(assert (=> b!461311 (= res!205360 (= (list!2004 (seqFromList!1115 lt!205920)) lt!205916))))

(assert (= (and start!43850 res!205356) b!461277))

(assert (= (and b!461277 res!205359) b!461296))

(assert (= (and b!461296 res!205347) b!461306))

(assert (= (and b!461306 res!205361) b!461300))

(assert (= (and b!461300 res!205363) b!461282))

(assert (= (and b!461282 res!205341) b!461290))

(assert (= (and b!461290 res!205355) b!461276))

(assert (= (and b!461276 res!205353) b!461299))

(assert (= (and b!461299 res!205346) b!461279))

(assert (= (and b!461279 res!205350) b!461311))

(assert (= (and b!461311 res!205360) b!461298))

(assert (= (and b!461298 (not res!205343)) b!461288))

(assert (= (and b!461288 res!205349) b!461309))

(assert (= (and b!461288 (not res!205342)) b!461303))

(assert (= (and b!461303 (not res!205344)) b!461293))

(assert (= (and b!461293 (not res!205345)) b!461308))

(assert (= (and b!461308 (not res!205357)) b!461292))

(assert (= (and b!461292 (not res!205354)) b!461283))

(assert (= (and b!461283 res!205348) b!461307))

(assert (= (and b!461307 res!205340) b!461295))

(assert (= (and b!461283 (not res!205364)) b!461305))

(assert (= (and b!461305 (not res!205358)) b!461280))

(assert (= (and b!461280 res!205362) b!461284))

(assert (= (and b!461305 (not res!205351)) b!461286))

(assert (= (and b!461286 (not res!205352)) b!461285))

(assert (= (and b!461285 (not res!205365)) b!461310))

(assert (= b!461302 b!461294))

(assert (= b!461291 b!461302))

(assert (= (and start!43850 ((_ is Cons!4494) rules!1920)) b!461291))

(assert (= b!461301 b!461281))

(assert (= b!461278 b!461301))

(assert (= start!43850 b!461278))

(assert (= b!461304 b!461297))

(assert (= b!461287 b!461304))

(assert (= b!461289 b!461287))

(assert (= (and start!43850 ((_ is Cons!4495) tokens!465)) b!461289))

(declare-fun m!729813 () Bool)

(assert (=> b!461287 m!729813))

(declare-fun m!729815 () Bool)

(assert (=> b!461284 m!729815))

(declare-fun m!729817 () Bool)

(assert (=> b!461284 m!729817))

(declare-fun m!729819 () Bool)

(assert (=> b!461307 m!729819))

(declare-fun m!729821 () Bool)

(assert (=> b!461277 m!729821))

(declare-fun m!729823 () Bool)

(assert (=> b!461305 m!729823))

(declare-fun m!729825 () Bool)

(assert (=> b!461305 m!729825))

(declare-fun m!729827 () Bool)

(assert (=> b!461305 m!729827))

(declare-fun m!729829 () Bool)

(assert (=> b!461305 m!729829))

(declare-fun m!729831 () Bool)

(assert (=> b!461305 m!729831))

(declare-fun m!729833 () Bool)

(assert (=> b!461305 m!729833))

(declare-fun m!729835 () Bool)

(assert (=> b!461305 m!729835))

(declare-fun m!729837 () Bool)

(assert (=> b!461305 m!729837))

(declare-fun m!729839 () Bool)

(assert (=> b!461305 m!729839))

(declare-fun m!729841 () Bool)

(assert (=> b!461305 m!729841))

(assert (=> b!461305 m!729837))

(assert (=> b!461305 m!729835))

(declare-fun m!729843 () Bool)

(assert (=> b!461305 m!729843))

(declare-fun m!729845 () Bool)

(assert (=> b!461305 m!729845))

(declare-fun m!729847 () Bool)

(assert (=> b!461290 m!729847))

(declare-fun m!729849 () Bool)

(assert (=> start!43850 m!729849))

(declare-fun m!729851 () Bool)

(assert (=> b!461279 m!729851))

(declare-fun m!729853 () Bool)

(assert (=> b!461279 m!729853))

(declare-fun m!729855 () Bool)

(assert (=> b!461279 m!729855))

(declare-fun m!729857 () Bool)

(assert (=> b!461283 m!729857))

(declare-fun m!729859 () Bool)

(assert (=> b!461283 m!729859))

(declare-fun m!729861 () Bool)

(assert (=> b!461283 m!729861))

(declare-fun m!729863 () Bool)

(assert (=> b!461306 m!729863))

(declare-fun m!729865 () Bool)

(assert (=> b!461306 m!729865))

(declare-fun m!729867 () Bool)

(assert (=> b!461296 m!729867))

(declare-fun m!729869 () Bool)

(assert (=> b!461301 m!729869))

(declare-fun m!729871 () Bool)

(assert (=> b!461301 m!729871))

(declare-fun m!729873 () Bool)

(assert (=> b!461310 m!729873))

(declare-fun m!729875 () Bool)

(assert (=> b!461310 m!729875))

(assert (=> b!461310 m!729875))

(declare-fun m!729877 () Bool)

(assert (=> b!461310 m!729877))

(declare-fun m!729879 () Bool)

(assert (=> b!461310 m!729879))

(declare-fun m!729881 () Bool)

(assert (=> b!461280 m!729881))

(assert (=> b!461280 m!729837))

(declare-fun m!729883 () Bool)

(assert (=> b!461311 m!729883))

(assert (=> b!461311 m!729883))

(declare-fun m!729885 () Bool)

(assert (=> b!461311 m!729885))

(declare-fun m!729887 () Bool)

(assert (=> b!461295 m!729887))

(declare-fun m!729889 () Bool)

(assert (=> b!461302 m!729889))

(declare-fun m!729891 () Bool)

(assert (=> b!461302 m!729891))

(declare-fun m!729893 () Bool)

(assert (=> b!461303 m!729893))

(declare-fun m!729895 () Bool)

(assert (=> b!461303 m!729895))

(declare-fun m!729897 () Bool)

(assert (=> b!461303 m!729897))

(declare-fun m!729899 () Bool)

(assert (=> b!461303 m!729899))

(declare-fun m!729901 () Bool)

(assert (=> b!461303 m!729901))

(declare-fun m!729903 () Bool)

(assert (=> b!461285 m!729903))

(declare-fun m!729905 () Bool)

(assert (=> b!461292 m!729905))

(assert (=> b!461292 m!729905))

(declare-fun m!729907 () Bool)

(assert (=> b!461292 m!729907))

(assert (=> b!461292 m!729907))

(declare-fun m!729909 () Bool)

(assert (=> b!461292 m!729909))

(declare-fun m!729911 () Bool)

(assert (=> b!461292 m!729911))

(declare-fun m!729913 () Bool)

(assert (=> b!461308 m!729913))

(assert (=> b!461308 m!729913))

(declare-fun m!729915 () Bool)

(assert (=> b!461308 m!729915))

(declare-fun m!729917 () Bool)

(assert (=> b!461308 m!729917))

(declare-fun m!729919 () Bool)

(assert (=> b!461276 m!729919))

(assert (=> b!461309 m!729827))

(declare-fun m!729921 () Bool)

(assert (=> b!461300 m!729921))

(declare-fun m!729923 () Bool)

(assert (=> b!461304 m!729923))

(declare-fun m!729925 () Bool)

(assert (=> b!461304 m!729925))

(declare-fun m!729927 () Bool)

(assert (=> b!461289 m!729927))

(declare-fun m!729929 () Bool)

(assert (=> b!461278 m!729929))

(declare-fun m!729931 () Bool)

(assert (=> b!461293 m!729931))

(declare-fun m!729933 () Bool)

(assert (=> b!461298 m!729933))

(declare-fun m!729935 () Bool)

(assert (=> b!461298 m!729935))

(declare-fun m!729937 () Bool)

(assert (=> b!461298 m!729937))

(declare-fun m!729939 () Bool)

(assert (=> b!461298 m!729939))

(declare-fun m!729941 () Bool)

(assert (=> b!461298 m!729941))

(declare-fun m!729943 () Bool)

(assert (=> b!461298 m!729943))

(assert (=> b!461298 m!729937))

(declare-fun m!729945 () Bool)

(assert (=> b!461298 m!729945))

(declare-fun m!729947 () Bool)

(assert (=> b!461298 m!729947))

(declare-fun m!729949 () Bool)

(assert (=> b!461298 m!729949))

(assert (=> b!461298 m!729933))

(declare-fun m!729951 () Bool)

(assert (=> b!461298 m!729951))

(declare-fun m!729953 () Bool)

(assert (=> b!461298 m!729953))

(assert (=> b!461298 m!729947))

(declare-fun m!729955 () Bool)

(assert (=> b!461298 m!729955))

(declare-fun m!729957 () Bool)

(assert (=> b!461298 m!729957))

(assert (=> b!461298 m!729955))

(check-sat (not b!461293) (not b!461304) b_and!49539 (not b!461298) b_and!49531 (not b!461307) (not b!461289) (not b_next!12947) (not b!461305) (not b_next!12953) (not start!43850) (not b!461292) b_and!49537 (not b!461278) (not b!461284) (not b_next!12951) (not b!461291) (not b_next!12955) (not b!461306) (not b!461277) (not b!461301) (not b!461287) b_and!49533 (not b!461290) (not b!461276) (not b!461295) (not b!461303) (not b!461320) (not b!461300) (not b_next!12945) (not b!461280) (not b!461279) b_and!49529 (not b!461302) (not b_next!12949) (not b!461310) (not b!461311) (not b!461285) (not b!461308) (not b!461309) (not b!461296) b_and!49535 (not b!461283))
(check-sat b_and!49537 b_and!49539 b_and!49533 b_and!49531 (not b_next!12947) (not b_next!12945) (not b_next!12953) b_and!49529 (not b_next!12949) b_and!49535 (not b_next!12951) (not b_next!12955))
(get-model)

(declare-fun d!175461 () Bool)

(declare-fun lt!205923 () Bool)

(assert (=> d!175461 (= lt!205923 (isEmpty!3483 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 lt!205905))))))))

(declare-fun isEmpty!3487 (Conc!1573) Bool)

(assert (=> d!175461 (= lt!205923 (isEmpty!3487 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 lt!205905))))))))

(assert (=> d!175461 (= (isEmpty!3485 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 lt!205905)))) lt!205923)))

(declare-fun bs!57159 () Bool)

(assert (= bs!57159 d!175461))

(declare-fun m!729959 () Bool)

(assert (=> bs!57159 m!729959))

(assert (=> bs!57159 m!729959))

(declare-fun m!729961 () Bool)

(assert (=> bs!57159 m!729961))

(declare-fun m!729963 () Bool)

(assert (=> bs!57159 m!729963))

(assert (=> b!461308 d!175461))

(declare-fun b!461367 () Bool)

(declare-fun e!282706 () Bool)

(declare-fun lt!205932 () tuple2!5494)

(assert (=> b!461367 (= e!282706 (not (isEmpty!3485 (_1!2963 lt!205932))))))

(declare-fun e!282708 () Bool)

(declare-fun b!461368 () Bool)

(declare-datatypes ((tuple2!5498 0))(
  ( (tuple2!5499 (_1!2965 List!4505) (_2!2965 List!4503)) )
))
(declare-fun lexList!299 (LexerInterface!761 List!4504 List!4503) tuple2!5498)

(assert (=> b!461368 (= e!282708 (= (list!2004 (_2!2963 lt!205932)) (_2!2965 (lexList!299 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 lt!205905))))))))

(declare-fun d!175463 () Bool)

(assert (=> d!175463 e!282708))

(declare-fun res!205402 () Bool)

(assert (=> d!175463 (=> (not res!205402) (not e!282708))))

(declare-fun e!282707 () Bool)

(assert (=> d!175463 (= res!205402 e!282707)))

(declare-fun c!92862 () Bool)

(declare-fun size!3672 (BalanceConc!3154) Int)

(assert (=> d!175463 (= c!92862 (> (size!3672 (_1!2963 lt!205932)) 0))))

(declare-fun lexTailRecV2!264 (LexerInterface!761 List!4504 BalanceConc!3152 BalanceConc!3152 BalanceConc!3152 BalanceConc!3154) tuple2!5494)

(assert (=> d!175463 (= lt!205932 (lexTailRecV2!264 thiss!17480 rules!1920 (seqFromList!1115 lt!205905) (BalanceConc!3153 Empty!1572) (seqFromList!1115 lt!205905) (BalanceConc!3155 Empty!1573)))))

(assert (=> d!175463 (= (lex!553 thiss!17480 rules!1920 (seqFromList!1115 lt!205905)) lt!205932)))

(declare-fun b!461369 () Bool)

(assert (=> b!461369 (= e!282707 (= (_2!2963 lt!205932) (seqFromList!1115 lt!205905)))))

(declare-fun b!461370 () Bool)

(assert (=> b!461370 (= e!282707 e!282706)))

(declare-fun res!205401 () Bool)

(declare-fun size!3673 (BalanceConc!3152) Int)

(assert (=> b!461370 (= res!205401 (< (size!3673 (_2!2963 lt!205932)) (size!3673 (seqFromList!1115 lt!205905))))))

(assert (=> b!461370 (=> (not res!205401) (not e!282706))))

(declare-fun b!461371 () Bool)

(declare-fun res!205403 () Bool)

(assert (=> b!461371 (=> (not res!205403) (not e!282708))))

(assert (=> b!461371 (= res!205403 (= (list!2005 (_1!2963 lt!205932)) (_1!2965 (lexList!299 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 lt!205905))))))))

(assert (= (and d!175463 c!92862) b!461370))

(assert (= (and d!175463 (not c!92862)) b!461369))

(assert (= (and b!461370 res!205401) b!461367))

(assert (= (and d!175463 res!205402) b!461371))

(assert (= (and b!461371 res!205403) b!461368))

(declare-fun m!730005 () Bool)

(assert (=> b!461371 m!730005))

(assert (=> b!461371 m!729913))

(declare-fun m!730007 () Bool)

(assert (=> b!461371 m!730007))

(assert (=> b!461371 m!730007))

(declare-fun m!730009 () Bool)

(assert (=> b!461371 m!730009))

(declare-fun m!730011 () Bool)

(assert (=> b!461367 m!730011))

(declare-fun m!730013 () Bool)

(assert (=> b!461370 m!730013))

(assert (=> b!461370 m!729913))

(declare-fun m!730015 () Bool)

(assert (=> b!461370 m!730015))

(declare-fun m!730017 () Bool)

(assert (=> d!175463 m!730017))

(assert (=> d!175463 m!729913))

(assert (=> d!175463 m!729913))

(declare-fun m!730019 () Bool)

(assert (=> d!175463 m!730019))

(declare-fun m!730021 () Bool)

(assert (=> b!461368 m!730021))

(assert (=> b!461368 m!729913))

(assert (=> b!461368 m!730007))

(assert (=> b!461368 m!730007))

(assert (=> b!461368 m!730009))

(assert (=> b!461308 d!175463))

(declare-fun d!175477 () Bool)

(declare-fun fromListB!497 (List!4503) BalanceConc!3152)

(assert (=> d!175477 (= (seqFromList!1115 lt!205905) (fromListB!497 lt!205905))))

(declare-fun bs!57163 () Bool)

(assert (= bs!57163 d!175477))

(declare-fun m!730023 () Bool)

(assert (=> bs!57163 m!730023))

(assert (=> b!461308 d!175477))

(declare-fun b!461382 () Bool)

(declare-fun e!282716 () Bool)

(declare-fun inv!15 (TokenValue!897) Bool)

(assert (=> b!461382 (= e!282716 (inv!15 (value!29253 (h!9892 tokens!465))))))

(declare-fun b!461383 () Bool)

(declare-fun e!282715 () Bool)

(declare-fun e!282717 () Bool)

(assert (=> b!461383 (= e!282715 e!282717)))

(declare-fun c!92867 () Bool)

(assert (=> b!461383 (= c!92867 ((_ is IntegerValue!2692) (value!29253 (h!9892 tokens!465))))))

(declare-fun b!461384 () Bool)

(declare-fun inv!17 (TokenValue!897) Bool)

(assert (=> b!461384 (= e!282717 (inv!17 (value!29253 (h!9892 tokens!465))))))

(declare-fun d!175479 () Bool)

(declare-fun c!92868 () Bool)

(assert (=> d!175479 (= c!92868 ((_ is IntegerValue!2691) (value!29253 (h!9892 tokens!465))))))

(assert (=> d!175479 (= (inv!21 (value!29253 (h!9892 tokens!465))) e!282715)))

(declare-fun b!461385 () Bool)

(declare-fun inv!16 (TokenValue!897) Bool)

(assert (=> b!461385 (= e!282715 (inv!16 (value!29253 (h!9892 tokens!465))))))

(declare-fun b!461386 () Bool)

(declare-fun res!205406 () Bool)

(assert (=> b!461386 (=> res!205406 e!282716)))

(assert (=> b!461386 (= res!205406 (not ((_ is IntegerValue!2693) (value!29253 (h!9892 tokens!465)))))))

(assert (=> b!461386 (= e!282717 e!282716)))

(assert (= (and d!175479 c!92868) b!461385))

(assert (= (and d!175479 (not c!92868)) b!461383))

(assert (= (and b!461383 c!92867) b!461384))

(assert (= (and b!461383 (not c!92867)) b!461386))

(assert (= (and b!461386 (not res!205406)) b!461382))

(declare-fun m!730025 () Bool)

(assert (=> b!461382 m!730025))

(declare-fun m!730027 () Bool)

(assert (=> b!461384 m!730027))

(declare-fun m!730029 () Bool)

(assert (=> b!461385 m!730029))

(assert (=> b!461287 d!175479))

(declare-fun d!175481 () Bool)

(assert (=> d!175481 (= (isEmpty!3484 (_2!2961 lt!205911)) ((_ is Nil!4493) (_2!2961 lt!205911)))))

(assert (=> b!461307 d!175481))

(declare-fun bs!57165 () Bool)

(declare-fun d!175483 () Bool)

(assert (= bs!57165 (and d!175483 b!461290)))

(declare-fun lambda!13628 () Int)

(assert (=> bs!57165 (not (= lambda!13628 lambda!13617))))

(declare-fun bs!57166 () Bool)

(assert (= bs!57166 (and d!175483 b!461292)))

(assert (=> bs!57166 (= lambda!13628 lambda!13618)))

(declare-fun b!461405 () Bool)

(declare-fun e!282733 () Bool)

(assert (=> b!461405 (= e!282733 true)))

(declare-fun b!461404 () Bool)

(declare-fun e!282732 () Bool)

(assert (=> b!461404 (= e!282732 e!282733)))

(declare-fun b!461403 () Bool)

(declare-fun e!282731 () Bool)

(assert (=> b!461403 (= e!282731 e!282732)))

(assert (=> d!175483 e!282731))

(assert (= b!461404 b!461405))

(assert (= b!461403 b!461404))

(assert (= (and d!175483 ((_ is Cons!4494) rules!1920)) b!461403))

(assert (=> b!461405 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13628))))

(assert (=> b!461405 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13628))))

(assert (=> d!175483 true))

(declare-fun e!282730 () Bool)

(assert (=> d!175483 e!282730))

(declare-fun res!205422 () Bool)

(assert (=> d!175483 (=> (not res!205422) (not e!282730))))

(declare-fun lt!205944 () Bool)

(assert (=> d!175483 (= res!205422 (= lt!205944 (forall!1308 (list!2005 lt!205904) lambda!13628)))))

(declare-fun forall!1310 (BalanceConc!3154 Int) Bool)

(assert (=> d!175483 (= lt!205944 (forall!1310 lt!205904 lambda!13628))))

(assert (=> d!175483 (not (isEmpty!3482 rules!1920))))

(assert (=> d!175483 (= (rulesProduceEachTokenIndividually!553 thiss!17480 rules!1920 lt!205904) lt!205944)))

(declare-fun b!461402 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!327 (LexerInterface!761 List!4504 List!4505) Bool)

(assert (=> b!461402 (= e!282730 (= lt!205944 (rulesProduceEachTokenIndividuallyList!327 thiss!17480 rules!1920 (list!2005 lt!205904))))))

(assert (= (and d!175483 res!205422) b!461402))

(declare-fun m!730059 () Bool)

(assert (=> d!175483 m!730059))

(assert (=> d!175483 m!730059))

(declare-fun m!730061 () Bool)

(assert (=> d!175483 m!730061))

(declare-fun m!730063 () Bool)

(assert (=> d!175483 m!730063))

(assert (=> d!175483 m!729821))

(assert (=> b!461402 m!730059))

(assert (=> b!461402 m!730059))

(declare-fun m!730065 () Bool)

(assert (=> b!461402 m!730065))

(assert (=> b!461306 d!175483))

(declare-fun d!175497 () Bool)

(declare-fun fromListB!498 (List!4505) BalanceConc!3154)

(assert (=> d!175497 (= (seqFromList!1116 tokens!465) (fromListB!498 tokens!465))))

(declare-fun bs!57167 () Bool)

(assert (= bs!57167 d!175497))

(declare-fun m!730067 () Bool)

(assert (=> bs!57167 m!730067))

(assert (=> b!461306 d!175497))

(declare-fun b!461417 () Bool)

(declare-fun lt!205947 () List!4503)

(declare-fun e!282739 () Bool)

(assert (=> b!461417 (= e!282739 (or (not (= (_2!2961 lt!205912) Nil!4493)) (= lt!205947 lt!205905)))))

(declare-fun b!461414 () Bool)

(declare-fun e!282738 () List!4503)

(assert (=> b!461414 (= e!282738 (_2!2961 lt!205912))))

(declare-fun b!461416 () Bool)

(declare-fun res!205428 () Bool)

(assert (=> b!461416 (=> (not res!205428) (not e!282739))))

(declare-fun size!3674 (List!4503) Int)

(assert (=> b!461416 (= res!205428 (= (size!3674 lt!205947) (+ (size!3674 lt!205905) (size!3674 (_2!2961 lt!205912)))))))

(declare-fun d!175499 () Bool)

(assert (=> d!175499 e!282739))

(declare-fun res!205427 () Bool)

(assert (=> d!175499 (=> (not res!205427) (not e!282739))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!752 (List!4503) (InoxSet C!3120))

(assert (=> d!175499 (= res!205427 (= (content!752 lt!205947) ((_ map or) (content!752 lt!205905) (content!752 (_2!2961 lt!205912)))))))

(assert (=> d!175499 (= lt!205947 e!282738)))

(declare-fun c!92871 () Bool)

(assert (=> d!175499 (= c!92871 ((_ is Nil!4493) lt!205905))))

(assert (=> d!175499 (= (++!1312 lt!205905 (_2!2961 lt!205912)) lt!205947)))

(declare-fun b!461415 () Bool)

(assert (=> b!461415 (= e!282738 (Cons!4493 (h!9890 lt!205905) (++!1312 (t!71883 lt!205905) (_2!2961 lt!205912))))))

(assert (= (and d!175499 c!92871) b!461414))

(assert (= (and d!175499 (not c!92871)) b!461415))

(assert (= (and d!175499 res!205427) b!461416))

(assert (= (and b!461416 res!205428) b!461417))

(declare-fun m!730069 () Bool)

(assert (=> b!461416 m!730069))

(declare-fun m!730071 () Bool)

(assert (=> b!461416 m!730071))

(declare-fun m!730073 () Bool)

(assert (=> b!461416 m!730073))

(declare-fun m!730075 () Bool)

(assert (=> d!175499 m!730075))

(declare-fun m!730077 () Bool)

(assert (=> d!175499 m!730077))

(declare-fun m!730079 () Bool)

(assert (=> d!175499 m!730079))

(declare-fun m!730081 () Bool)

(assert (=> b!461415 m!730081))

(assert (=> b!461285 d!175499))

(declare-fun d!175501 () Bool)

(assert (=> d!175501 (= (get!1652 lt!205908) (v!15532 lt!205908))))

(assert (=> b!461284 d!175501))

(declare-fun d!175503 () Bool)

(assert (=> d!175503 (= (head!1132 tokens!465) (h!9892 tokens!465))))

(assert (=> b!461284 d!175503))

(declare-fun d!175505 () Bool)

(declare-fun list!2007 (Conc!1573) List!4505)

(assert (=> d!175505 (= (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))) (list!2007 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))))

(declare-fun bs!57168 () Bool)

(assert (= bs!57168 d!175505))

(declare-fun m!730083 () Bool)

(assert (=> bs!57168 m!730083))

(assert (=> b!461305 d!175505))

(declare-fun bs!57173 () Bool)

(declare-fun d!175507 () Bool)

(assert (= bs!57173 (and d!175507 b!461290)))

(declare-fun lambda!13634 () Int)

(assert (=> bs!57173 (= lambda!13634 lambda!13617)))

(declare-fun bs!57174 () Bool)

(assert (= bs!57174 (and d!175507 b!461292)))

(assert (=> bs!57174 (not (= lambda!13634 lambda!13618))))

(declare-fun bs!57175 () Bool)

(assert (= bs!57175 (and d!175507 d!175483)))

(assert (=> bs!57175 (not (= lambda!13634 lambda!13628))))

(assert (=> d!175507 (= (filter!103 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0)))) lambda!13634) (t!71885 tokens!465))))

(declare-fun lt!205956 () Unit!8113)

(declare-fun choose!3467 (LexerInterface!761 List!4504 List!4505 Token!1494) Unit!8113)

(assert (=> d!175507 (= lt!205956 (choose!3467 thiss!17480 rules!1920 (t!71885 tokens!465) separatorToken!170))))

(assert (=> d!175507 (not (isEmpty!3482 rules!1920))))

(assert (=> d!175507 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!94 thiss!17480 rules!1920 (t!71885 tokens!465) separatorToken!170) lt!205956)))

(declare-fun bs!57176 () Bool)

(assert (= bs!57176 d!175507))

(declare-fun m!730105 () Bool)

(assert (=> bs!57176 m!730105))

(declare-fun m!730107 () Bool)

(assert (=> bs!57176 m!730107))

(assert (=> bs!57176 m!729951))

(declare-fun m!730109 () Bool)

(assert (=> bs!57176 m!730109))

(assert (=> bs!57176 m!729821))

(assert (=> bs!57176 m!729933))

(declare-fun m!730111 () Bool)

(assert (=> bs!57176 m!730111))

(assert (=> bs!57176 m!729933))

(assert (=> bs!57176 m!729951))

(assert (=> bs!57176 m!730105))

(assert (=> b!461305 d!175507))

(declare-fun b!461430 () Bool)

(declare-fun e!282749 () Bool)

(declare-fun lt!205957 () tuple2!5494)

(assert (=> b!461430 (= e!282749 (not (isEmpty!3485 (_1!2963 lt!205957))))))

(declare-fun b!461431 () Bool)

(declare-fun e!282751 () Bool)

(assert (=> b!461431 (= e!282751 (= (list!2004 (_2!2963 lt!205957)) (_2!2965 (lexList!299 thiss!17480 rules!1920 (list!2004 lt!205910)))))))

(declare-fun d!175515 () Bool)

(assert (=> d!175515 e!282751))

(declare-fun res!205442 () Bool)

(assert (=> d!175515 (=> (not res!205442) (not e!282751))))

(declare-fun e!282750 () Bool)

(assert (=> d!175515 (= res!205442 e!282750)))

(declare-fun c!92872 () Bool)

(assert (=> d!175515 (= c!92872 (> (size!3672 (_1!2963 lt!205957)) 0))))

(assert (=> d!175515 (= lt!205957 (lexTailRecV2!264 thiss!17480 rules!1920 lt!205910 (BalanceConc!3153 Empty!1572) lt!205910 (BalanceConc!3155 Empty!1573)))))

(assert (=> d!175515 (= (lex!553 thiss!17480 rules!1920 lt!205910) lt!205957)))

(declare-fun b!461432 () Bool)

(assert (=> b!461432 (= e!282750 (= (_2!2963 lt!205957) lt!205910))))

(declare-fun b!461433 () Bool)

(assert (=> b!461433 (= e!282750 e!282749)))

(declare-fun res!205441 () Bool)

(assert (=> b!461433 (= res!205441 (< (size!3673 (_2!2963 lt!205957)) (size!3673 lt!205910)))))

(assert (=> b!461433 (=> (not res!205441) (not e!282749))))

(declare-fun b!461434 () Bool)

(declare-fun res!205443 () Bool)

(assert (=> b!461434 (=> (not res!205443) (not e!282751))))

(assert (=> b!461434 (= res!205443 (= (list!2005 (_1!2963 lt!205957)) (_1!2965 (lexList!299 thiss!17480 rules!1920 (list!2004 lt!205910)))))))

(assert (= (and d!175515 c!92872) b!461433))

(assert (= (and d!175515 (not c!92872)) b!461432))

(assert (= (and b!461433 res!205441) b!461430))

(assert (= (and d!175515 res!205442) b!461434))

(assert (= (and b!461434 res!205443) b!461431))

(declare-fun m!730113 () Bool)

(assert (=> b!461434 m!730113))

(assert (=> b!461434 m!729945))

(assert (=> b!461434 m!729945))

(declare-fun m!730115 () Bool)

(assert (=> b!461434 m!730115))

(declare-fun m!730117 () Bool)

(assert (=> b!461430 m!730117))

(declare-fun m!730119 () Bool)

(assert (=> b!461433 m!730119))

(declare-fun m!730121 () Bool)

(assert (=> b!461433 m!730121))

(declare-fun m!730123 () Bool)

(assert (=> d!175515 m!730123))

(declare-fun m!730125 () Bool)

(assert (=> d!175515 m!730125))

(declare-fun m!730127 () Bool)

(assert (=> b!461431 m!730127))

(assert (=> b!461431 m!729945))

(assert (=> b!461431 m!729945))

(assert (=> b!461431 m!730115))

(assert (=> b!461305 d!175515))

(declare-fun d!175517 () Bool)

(assert (=> d!175517 (= (isEmpty!3483 tokens!465) ((_ is Nil!4495) tokens!465))))

(assert (=> b!461305 d!175517))

(declare-fun b!461447 () Bool)

(declare-fun e!282758 () List!4505)

(declare-fun call!31977 () List!4505)

(assert (=> b!461447 (= e!282758 call!31977)))

(declare-fun b!461448 () Bool)

(declare-fun e!282760 () Bool)

(declare-fun lt!205960 () List!4505)

(assert (=> b!461448 (= e!282760 (forall!1308 lt!205960 lambda!13617))))

(declare-fun b!461449 () Bool)

(declare-fun e!282759 () List!4505)

(assert (=> b!461449 (= e!282759 Nil!4495)))

(declare-fun b!461451 () Bool)

(assert (=> b!461451 (= e!282759 e!282758)))

(declare-fun c!92877 () Bool)

(declare-fun dynLambda!2749 (Int Token!1494) Bool)

(assert (=> b!461451 (= c!92877 (dynLambda!2749 lambda!13617 (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))))))))

(declare-fun b!461450 () Bool)

(assert (=> b!461450 (= e!282758 (Cons!4495 (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))) call!31977))))

(declare-fun d!175519 () Bool)

(assert (=> d!175519 e!282760))

(declare-fun res!205448 () Bool)

(assert (=> d!175519 (=> (not res!205448) (not e!282760))))

(declare-fun size!3675 (List!4505) Int)

(assert (=> d!175519 (= res!205448 (<= (size!3675 lt!205960) (size!3675 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))))))))

(assert (=> d!175519 (= lt!205960 e!282759)))

(declare-fun c!92878 () Bool)

(assert (=> d!175519 (= c!92878 ((_ is Nil!4495) (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))))

(assert (=> d!175519 (= (filter!103 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))) lambda!13617) lt!205960)))

(declare-fun b!461452 () Bool)

(declare-fun res!205449 () Bool)

(assert (=> b!461452 (=> (not res!205449) (not e!282760))))

(declare-fun content!753 (List!4505) (InoxSet Token!1494))

(assert (=> b!461452 (= res!205449 (= ((_ map implies) (content!753 lt!205960) (content!753 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))))) ((as const (InoxSet Token!1494)) true)))))

(declare-fun bm!31972 () Bool)

(assert (=> bm!31972 (= call!31977 (filter!103 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))) lambda!13617))))

(assert (= (and d!175519 c!92878) b!461449))

(assert (= (and d!175519 (not c!92878)) b!461451))

(assert (= (and b!461451 c!92877) b!461450))

(assert (= (and b!461451 (not c!92877)) b!461447))

(assert (= (or b!461450 b!461447) bm!31972))

(assert (= (and d!175519 res!205448) b!461452))

(assert (= (and b!461452 res!205449) b!461448))

(declare-fun b_lambda!19145 () Bool)

(assert (=> (not b_lambda!19145) (not b!461451)))

(declare-fun m!730129 () Bool)

(assert (=> b!461451 m!730129))

(declare-fun m!730131 () Bool)

(assert (=> d!175519 m!730131))

(assert (=> d!175519 m!729835))

(declare-fun m!730133 () Bool)

(assert (=> d!175519 m!730133))

(declare-fun m!730135 () Bool)

(assert (=> b!461448 m!730135))

(declare-fun m!730137 () Bool)

(assert (=> b!461452 m!730137))

(assert (=> b!461452 m!729835))

(declare-fun m!730139 () Bool)

(assert (=> b!461452 m!730139))

(declare-fun m!730141 () Bool)

(assert (=> bm!31972 m!730141))

(assert (=> b!461305 d!175519))

(declare-fun d!175521 () Bool)

(declare-fun e!282783 () Bool)

(assert (=> d!175521 e!282783))

(declare-fun res!205469 () Bool)

(assert (=> d!175521 (=> res!205469 e!282783)))

(assert (=> d!175521 (= res!205469 (isEmpty!3483 tokens!465))))

(declare-fun lt!205969 () Unit!8113)

(declare-fun choose!3468 (LexerInterface!761 List!4504 List!4505 Token!1494) Unit!8113)

(assert (=> d!175521 (= lt!205969 (choose!3468 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!175521 (not (isEmpty!3482 rules!1920))))

(assert (=> d!175521 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!276 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!205969)))

(declare-fun b!461490 () Bool)

(declare-fun e!282784 () Bool)

(assert (=> b!461490 (= e!282783 e!282784)))

(declare-fun res!205470 () Bool)

(assert (=> b!461490 (=> (not res!205470) (not e!282784))))

(assert (=> b!461490 (= res!205470 (isDefined!1023 (maxPrefix!477 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!461491 () Bool)

(assert (=> b!461491 (= e!282784 (= (_1!2961 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1132 tokens!465)))))

(assert (= (and d!175521 (not res!205469)) b!461490))

(assert (= (and b!461490 res!205470) b!461491))

(assert (=> d!175521 m!729823))

(declare-fun m!730173 () Bool)

(assert (=> d!175521 m!730173))

(assert (=> d!175521 m!729821))

(assert (=> b!461490 m!729855))

(assert (=> b!461490 m!729855))

(declare-fun m!730175 () Bool)

(assert (=> b!461490 m!730175))

(assert (=> b!461490 m!730175))

(declare-fun m!730177 () Bool)

(assert (=> b!461490 m!730177))

(assert (=> b!461491 m!729855))

(assert (=> b!461491 m!729855))

(assert (=> b!461491 m!730175))

(assert (=> b!461491 m!730175))

(declare-fun m!730179 () Bool)

(assert (=> b!461491 m!730179))

(assert (=> b!461491 m!729817))

(assert (=> b!461305 d!175521))

(declare-fun b!461520 () Bool)

(declare-fun e!282800 () Bool)

(declare-fun e!282802 () Bool)

(assert (=> b!461520 (= e!282800 e!282802)))

(declare-fun res!205495 () Bool)

(assert (=> b!461520 (=> (not res!205495) (not e!282802))))

(declare-fun lt!205988 () Option!1184)

(assert (=> b!461520 (= res!205495 (isDefined!1023 lt!205988))))

(declare-fun b!461521 () Bool)

(declare-fun e!282801 () Option!1184)

(declare-fun lt!205987 () Option!1184)

(declare-fun lt!205985 () Option!1184)

(assert (=> b!461521 (= e!282801 (ite (and ((_ is None!1183) lt!205987) ((_ is None!1183) lt!205985)) None!1183 (ite ((_ is None!1183) lt!205985) lt!205987 (ite ((_ is None!1183) lt!205987) lt!205985 (ite (>= (size!3667 (_1!2961 (v!15532 lt!205987))) (size!3667 (_1!2961 (v!15532 lt!205985)))) lt!205987 lt!205985)))))))

(declare-fun call!31983 () Option!1184)

(assert (=> b!461521 (= lt!205987 call!31983)))

(assert (=> b!461521 (= lt!205985 (maxPrefix!477 thiss!17480 (t!71884 rules!1920) lt!205920))))

(declare-fun b!461522 () Bool)

(assert (=> b!461522 (= e!282801 call!31983)))

(declare-fun b!461523 () Bool)

(declare-fun res!205496 () Bool)

(assert (=> b!461523 (=> (not res!205496) (not e!282802))))

(assert (=> b!461523 (= res!205496 (matchR!417 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988))))))))

(declare-fun bm!31978 () Bool)

(declare-fun maxPrefixOneRule!229 (LexerInterface!761 Rule!1550 List!4503) Option!1184)

(assert (=> bm!31978 (= call!31983 (maxPrefixOneRule!229 thiss!17480 (h!9891 rules!1920) lt!205920))))

(declare-fun d!175527 () Bool)

(assert (=> d!175527 e!282800))

(declare-fun res!205500 () Bool)

(assert (=> d!175527 (=> res!205500 e!282800)))

(declare-fun isEmpty!3490 (Option!1184) Bool)

(assert (=> d!175527 (= res!205500 (isEmpty!3490 lt!205988))))

(assert (=> d!175527 (= lt!205988 e!282801)))

(declare-fun c!92890 () Bool)

(assert (=> d!175527 (= c!92890 (and ((_ is Cons!4494) rules!1920) ((_ is Nil!4494) (t!71884 rules!1920))))))

(declare-fun lt!205986 () Unit!8113)

(declare-fun lt!205984 () Unit!8113)

(assert (=> d!175527 (= lt!205986 lt!205984)))

(assert (=> d!175527 (isPrefix!527 lt!205920 lt!205920)))

(declare-fun lemmaIsPrefixRefl!295 (List!4503 List!4503) Unit!8113)

(assert (=> d!175527 (= lt!205984 (lemmaIsPrefixRefl!295 lt!205920 lt!205920))))

(declare-fun rulesValidInductive!290 (LexerInterface!761 List!4504) Bool)

(assert (=> d!175527 (rulesValidInductive!290 thiss!17480 rules!1920)))

(assert (=> d!175527 (= (maxPrefix!477 thiss!17480 rules!1920 lt!205920) lt!205988)))

(declare-fun b!461524 () Bool)

(declare-fun contains!1008 (List!4504 Rule!1550) Bool)

(assert (=> b!461524 (= e!282802 (contains!1008 rules!1920 (rule!1570 (_1!2961 (get!1652 lt!205988)))))))

(declare-fun b!461525 () Bool)

(declare-fun res!205498 () Bool)

(assert (=> b!461525 (=> (not res!205498) (not e!282802))))

(assert (=> b!461525 (= res!205498 (= (++!1312 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988)))) (_2!2961 (get!1652 lt!205988))) lt!205920))))

(declare-fun b!461526 () Bool)

(declare-fun res!205497 () Bool)

(assert (=> b!461526 (=> (not res!205497) (not e!282802))))

(assert (=> b!461526 (= res!205497 (< (size!3674 (_2!2961 (get!1652 lt!205988))) (size!3674 lt!205920)))))

(declare-fun b!461527 () Bool)

(declare-fun res!205501 () Bool)

(assert (=> b!461527 (=> (not res!205501) (not e!282802))))

(assert (=> b!461527 (= res!205501 (= (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988)))) (originalCharacters!918 (_1!2961 (get!1652 lt!205988)))))))

(declare-fun b!461528 () Bool)

(declare-fun res!205499 () Bool)

(assert (=> b!461528 (=> (not res!205499) (not e!282802))))

(declare-fun apply!1155 (TokenValueInjection!1566 BalanceConc!3152) TokenValue!897)

(assert (=> b!461528 (= res!205499 (= (value!29253 (_1!2961 (get!1652 lt!205988))) (apply!1155 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!205988)))))))))

(assert (= (and d!175527 c!92890) b!461522))

(assert (= (and d!175527 (not c!92890)) b!461521))

(assert (= (or b!461522 b!461521) bm!31978))

(assert (= (and d!175527 (not res!205500)) b!461520))

(assert (= (and b!461520 res!205495) b!461527))

(assert (= (and b!461527 res!205501) b!461526))

(assert (= (and b!461526 res!205497) b!461525))

(assert (= (and b!461525 res!205498) b!461528))

(assert (= (and b!461528 res!205499) b!461523))

(assert (= (and b!461523 res!205496) b!461524))

(declare-fun m!730199 () Bool)

(assert (=> b!461523 m!730199))

(declare-fun m!730201 () Bool)

(assert (=> b!461523 m!730201))

(assert (=> b!461523 m!730201))

(declare-fun m!730203 () Bool)

(assert (=> b!461523 m!730203))

(assert (=> b!461523 m!730203))

(declare-fun m!730205 () Bool)

(assert (=> b!461523 m!730205))

(declare-fun m!730207 () Bool)

(assert (=> b!461520 m!730207))

(declare-fun m!730209 () Bool)

(assert (=> d!175527 m!730209))

(declare-fun m!730211 () Bool)

(assert (=> d!175527 m!730211))

(declare-fun m!730213 () Bool)

(assert (=> d!175527 m!730213))

(declare-fun m!730215 () Bool)

(assert (=> d!175527 m!730215))

(assert (=> b!461527 m!730199))

(assert (=> b!461527 m!730201))

(assert (=> b!461527 m!730201))

(assert (=> b!461527 m!730203))

(assert (=> b!461526 m!730199))

(declare-fun m!730217 () Bool)

(assert (=> b!461526 m!730217))

(declare-fun m!730219 () Bool)

(assert (=> b!461526 m!730219))

(declare-fun m!730221 () Bool)

(assert (=> bm!31978 m!730221))

(assert (=> b!461524 m!730199))

(declare-fun m!730223 () Bool)

(assert (=> b!461524 m!730223))

(declare-fun m!730225 () Bool)

(assert (=> b!461521 m!730225))

(assert (=> b!461528 m!730199))

(declare-fun m!730227 () Bool)

(assert (=> b!461528 m!730227))

(assert (=> b!461528 m!730227))

(declare-fun m!730229 () Bool)

(assert (=> b!461528 m!730229))

(assert (=> b!461525 m!730199))

(assert (=> b!461525 m!730201))

(assert (=> b!461525 m!730201))

(assert (=> b!461525 m!730203))

(assert (=> b!461525 m!730203))

(declare-fun m!730231 () Bool)

(assert (=> b!461525 m!730231))

(assert (=> b!461305 d!175527))

(declare-fun lt!205989 () List!4503)

(declare-fun e!282804 () Bool)

(declare-fun b!461532 () Bool)

(assert (=> b!461532 (= e!282804 (or (not (= lt!205901 Nil!4493)) (= lt!205989 lt!205905)))))

(declare-fun b!461529 () Bool)

(declare-fun e!282803 () List!4503)

(assert (=> b!461529 (= e!282803 lt!205901)))

(declare-fun b!461531 () Bool)

(declare-fun res!205503 () Bool)

(assert (=> b!461531 (=> (not res!205503) (not e!282804))))

(assert (=> b!461531 (= res!205503 (= (size!3674 lt!205989) (+ (size!3674 lt!205905) (size!3674 lt!205901))))))

(declare-fun d!175535 () Bool)

(assert (=> d!175535 e!282804))

(declare-fun res!205502 () Bool)

(assert (=> d!175535 (=> (not res!205502) (not e!282804))))

(assert (=> d!175535 (= res!205502 (= (content!752 lt!205989) ((_ map or) (content!752 lt!205905) (content!752 lt!205901))))))

(assert (=> d!175535 (= lt!205989 e!282803)))

(declare-fun c!92891 () Bool)

(assert (=> d!175535 (= c!92891 ((_ is Nil!4493) lt!205905))))

(assert (=> d!175535 (= (++!1312 lt!205905 lt!205901) lt!205989)))

(declare-fun b!461530 () Bool)

(assert (=> b!461530 (= e!282803 (Cons!4493 (h!9890 lt!205905) (++!1312 (t!71883 lt!205905) lt!205901)))))

(assert (= (and d!175535 c!92891) b!461529))

(assert (= (and d!175535 (not c!92891)) b!461530))

(assert (= (and d!175535 res!205502) b!461531))

(assert (= (and b!461531 res!205503) b!461532))

(declare-fun m!730233 () Bool)

(assert (=> b!461531 m!730233))

(assert (=> b!461531 m!730071))

(declare-fun m!730235 () Bool)

(assert (=> b!461531 m!730235))

(declare-fun m!730237 () Bool)

(assert (=> d!175535 m!730237))

(assert (=> d!175535 m!730077))

(declare-fun m!730239 () Bool)

(assert (=> d!175535 m!730239))

(declare-fun m!730241 () Bool)

(assert (=> b!461530 m!730241))

(assert (=> b!461305 d!175535))

(declare-fun d!175537 () Bool)

(declare-fun e!282812 () Bool)

(assert (=> d!175537 e!282812))

(declare-fun res!205514 () Bool)

(assert (=> d!175537 (=> res!205514 e!282812)))

(declare-fun lt!205992 () Bool)

(assert (=> d!175537 (= res!205514 (not lt!205992))))

(declare-fun e!282811 () Bool)

(assert (=> d!175537 (= lt!205992 e!282811)))

(declare-fun res!205513 () Bool)

(assert (=> d!175537 (=> res!205513 e!282811)))

(assert (=> d!175537 (= res!205513 ((_ is Nil!4493) lt!205905))))

(assert (=> d!175537 (= (isPrefix!527 lt!205905 lt!205895) lt!205992)))

(declare-fun b!461542 () Bool)

(declare-fun res!205512 () Bool)

(declare-fun e!282813 () Bool)

(assert (=> b!461542 (=> (not res!205512) (not e!282813))))

(declare-fun head!1134 (List!4503) C!3120)

(assert (=> b!461542 (= res!205512 (= (head!1134 lt!205905) (head!1134 lt!205895)))))

(declare-fun b!461541 () Bool)

(assert (=> b!461541 (= e!282811 e!282813)))

(declare-fun res!205515 () Bool)

(assert (=> b!461541 (=> (not res!205515) (not e!282813))))

(assert (=> b!461541 (= res!205515 (not ((_ is Nil!4493) lt!205895)))))

(declare-fun b!461544 () Bool)

(assert (=> b!461544 (= e!282812 (>= (size!3674 lt!205895) (size!3674 lt!205905)))))

(declare-fun b!461543 () Bool)

(declare-fun tail!652 (List!4503) List!4503)

(assert (=> b!461543 (= e!282813 (isPrefix!527 (tail!652 lt!205905) (tail!652 lt!205895)))))

(assert (= (and d!175537 (not res!205513)) b!461541))

(assert (= (and b!461541 res!205515) b!461542))

(assert (= (and b!461542 res!205512) b!461543))

(assert (= (and d!175537 (not res!205514)) b!461544))

(declare-fun m!730243 () Bool)

(assert (=> b!461542 m!730243))

(declare-fun m!730245 () Bool)

(assert (=> b!461542 m!730245))

(declare-fun m!730247 () Bool)

(assert (=> b!461544 m!730247))

(assert (=> b!461544 m!730071))

(declare-fun m!730249 () Bool)

(assert (=> b!461543 m!730249))

(declare-fun m!730251 () Bool)

(assert (=> b!461543 m!730251))

(assert (=> b!461543 m!730249))

(assert (=> b!461543 m!730251))

(declare-fun m!730253 () Bool)

(assert (=> b!461543 m!730253))

(assert (=> b!461305 d!175537))

(declare-fun d!175539 () Bool)

(assert (=> d!175539 (isPrefix!527 lt!205905 (++!1312 lt!205905 lt!205901))))

(declare-fun lt!205995 () Unit!8113)

(declare-fun choose!3470 (List!4503 List!4503) Unit!8113)

(assert (=> d!175539 (= lt!205995 (choose!3470 lt!205905 lt!205901))))

(assert (=> d!175539 (= (lemmaConcatTwoListThenFirstIsPrefix!412 lt!205905 lt!205901) lt!205995)))

(declare-fun bs!57178 () Bool)

(assert (= bs!57178 d!175539))

(assert (=> bs!57178 m!729827))

(assert (=> bs!57178 m!729827))

(declare-fun m!730255 () Bool)

(assert (=> bs!57178 m!730255))

(declare-fun m!730257 () Bool)

(assert (=> bs!57178 m!730257))

(assert (=> b!461305 d!175539))

(declare-fun d!175541 () Bool)

(declare-fun e!282815 () Bool)

(assert (=> d!175541 e!282815))

(declare-fun res!205518 () Bool)

(assert (=> d!175541 (=> res!205518 e!282815)))

(declare-fun lt!205996 () Bool)

(assert (=> d!175541 (= res!205518 (not lt!205996))))

(declare-fun e!282814 () Bool)

(assert (=> d!175541 (= lt!205996 e!282814)))

(declare-fun res!205517 () Bool)

(assert (=> d!175541 (=> res!205517 e!282814)))

(assert (=> d!175541 (= res!205517 ((_ is Nil!4493) lt!205905))))

(assert (=> d!175541 (= (isPrefix!527 lt!205905 lt!205920) lt!205996)))

(declare-fun b!461546 () Bool)

(declare-fun res!205516 () Bool)

(declare-fun e!282816 () Bool)

(assert (=> b!461546 (=> (not res!205516) (not e!282816))))

(assert (=> b!461546 (= res!205516 (= (head!1134 lt!205905) (head!1134 lt!205920)))))

(declare-fun b!461545 () Bool)

(assert (=> b!461545 (= e!282814 e!282816)))

(declare-fun res!205519 () Bool)

(assert (=> b!461545 (=> (not res!205519) (not e!282816))))

(assert (=> b!461545 (= res!205519 (not ((_ is Nil!4493) lt!205920)))))

(declare-fun b!461548 () Bool)

(assert (=> b!461548 (= e!282815 (>= (size!3674 lt!205920) (size!3674 lt!205905)))))

(declare-fun b!461547 () Bool)

(assert (=> b!461547 (= e!282816 (isPrefix!527 (tail!652 lt!205905) (tail!652 lt!205920)))))

(assert (= (and d!175541 (not res!205517)) b!461545))

(assert (= (and b!461545 res!205519) b!461546))

(assert (= (and b!461546 res!205516) b!461547))

(assert (= (and d!175541 (not res!205518)) b!461548))

(assert (=> b!461546 m!730243))

(declare-fun m!730259 () Bool)

(assert (=> b!461546 m!730259))

(assert (=> b!461548 m!730219))

(assert (=> b!461548 m!730071))

(assert (=> b!461547 m!730249))

(declare-fun m!730261 () Bool)

(assert (=> b!461547 m!730261))

(assert (=> b!461547 m!730249))

(assert (=> b!461547 m!730261))

(declare-fun m!730263 () Bool)

(assert (=> b!461547 m!730263))

(assert (=> b!461305 d!175541))

(declare-fun d!175543 () Bool)

(assert (=> d!175543 (= (get!1652 (maxPrefix!477 thiss!17480 rules!1920 lt!205920)) (v!15532 (maxPrefix!477 thiss!17480 rules!1920 lt!205920)))))

(assert (=> b!461305 d!175543))

(declare-fun d!175545 () Bool)

(assert (=> d!175545 (= (inv!5570 (tag!1135 (rule!1570 (h!9892 tokens!465)))) (= (mod (str.len (value!29252 (tag!1135 (rule!1570 (h!9892 tokens!465))))) 2) 0))))

(assert (=> b!461304 d!175545))

(declare-fun d!175547 () Bool)

(declare-fun res!205536 () Bool)

(declare-fun e!282825 () Bool)

(assert (=> d!175547 (=> (not res!205536) (not e!282825))))

(declare-fun semiInverseModEq!349 (Int Int) Bool)

(assert (=> d!175547 (= res!205536 (semiInverseModEq!349 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465))))))))

(assert (=> d!175547 (= (inv!5574 (transformation!875 (rule!1570 (h!9892 tokens!465)))) e!282825)))

(declare-fun b!461569 () Bool)

(declare-fun equivClasses!332 (Int Int) Bool)

(assert (=> b!461569 (= e!282825 (equivClasses!332 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465))))))))

(assert (= (and d!175547 res!205536) b!461569))

(declare-fun m!730265 () Bool)

(assert (=> d!175547 m!730265))

(declare-fun m!730267 () Bool)

(assert (=> b!461569 m!730267))

(assert (=> b!461304 d!175547))

(declare-fun d!175549 () Bool)

(assert (=> d!175549 (= (get!1652 lt!205902) (v!15532 lt!205902))))

(assert (=> b!461283 d!175549))

(declare-fun d!175551 () Bool)

(assert (=> d!175551 (= (isDefined!1023 lt!205902) (not (isEmpty!3490 lt!205902)))))

(declare-fun bs!57179 () Bool)

(assert (= bs!57179 d!175551))

(declare-fun m!730269 () Bool)

(assert (=> bs!57179 m!730269))

(assert (=> b!461283 d!175551))

(declare-fun b!461570 () Bool)

(declare-fun e!282826 () Bool)

(declare-fun e!282828 () Bool)

(assert (=> b!461570 (= e!282826 e!282828)))

(declare-fun res!205537 () Bool)

(assert (=> b!461570 (=> (not res!205537) (not e!282828))))

(declare-fun lt!206011 () Option!1184)

(assert (=> b!461570 (= res!205537 (isDefined!1023 lt!206011))))

(declare-fun b!461571 () Bool)

(declare-fun e!282827 () Option!1184)

(declare-fun lt!206010 () Option!1184)

(declare-fun lt!206008 () Option!1184)

(assert (=> b!461571 (= e!282827 (ite (and ((_ is None!1183) lt!206010) ((_ is None!1183) lt!206008)) None!1183 (ite ((_ is None!1183) lt!206008) lt!206010 (ite ((_ is None!1183) lt!206010) lt!206008 (ite (>= (size!3667 (_1!2961 (v!15532 lt!206010))) (size!3667 (_1!2961 (v!15532 lt!206008)))) lt!206010 lt!206008)))))))

(declare-fun call!31986 () Option!1184)

(assert (=> b!461571 (= lt!206010 call!31986)))

(assert (=> b!461571 (= lt!206008 (maxPrefix!477 thiss!17480 (t!71884 rules!1920) lt!205905))))

(declare-fun b!461572 () Bool)

(assert (=> b!461572 (= e!282827 call!31986)))

(declare-fun b!461573 () Bool)

(declare-fun res!205538 () Bool)

(assert (=> b!461573 (=> (not res!205538) (not e!282828))))

(assert (=> b!461573 (= res!205538 (matchR!417 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011))))))))

(declare-fun bm!31981 () Bool)

(assert (=> bm!31981 (= call!31986 (maxPrefixOneRule!229 thiss!17480 (h!9891 rules!1920) lt!205905))))

(declare-fun d!175553 () Bool)

(assert (=> d!175553 e!282826))

(declare-fun res!205542 () Bool)

(assert (=> d!175553 (=> res!205542 e!282826)))

(assert (=> d!175553 (= res!205542 (isEmpty!3490 lt!206011))))

(assert (=> d!175553 (= lt!206011 e!282827)))

(declare-fun c!92894 () Bool)

(assert (=> d!175553 (= c!92894 (and ((_ is Cons!4494) rules!1920) ((_ is Nil!4494) (t!71884 rules!1920))))))

(declare-fun lt!206009 () Unit!8113)

(declare-fun lt!206007 () Unit!8113)

(assert (=> d!175553 (= lt!206009 lt!206007)))

(assert (=> d!175553 (isPrefix!527 lt!205905 lt!205905)))

(assert (=> d!175553 (= lt!206007 (lemmaIsPrefixRefl!295 lt!205905 lt!205905))))

(assert (=> d!175553 (rulesValidInductive!290 thiss!17480 rules!1920)))

(assert (=> d!175553 (= (maxPrefix!477 thiss!17480 rules!1920 lt!205905) lt!206011)))

(declare-fun b!461574 () Bool)

(assert (=> b!461574 (= e!282828 (contains!1008 rules!1920 (rule!1570 (_1!2961 (get!1652 lt!206011)))))))

(declare-fun b!461575 () Bool)

(declare-fun res!205540 () Bool)

(assert (=> b!461575 (=> (not res!205540) (not e!282828))))

(assert (=> b!461575 (= res!205540 (= (++!1312 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011)))) (_2!2961 (get!1652 lt!206011))) lt!205905))))

(declare-fun b!461576 () Bool)

(declare-fun res!205539 () Bool)

(assert (=> b!461576 (=> (not res!205539) (not e!282828))))

(assert (=> b!461576 (= res!205539 (< (size!3674 (_2!2961 (get!1652 lt!206011))) (size!3674 lt!205905)))))

(declare-fun b!461577 () Bool)

(declare-fun res!205543 () Bool)

(assert (=> b!461577 (=> (not res!205543) (not e!282828))))

(assert (=> b!461577 (= res!205543 (= (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011)))) (originalCharacters!918 (_1!2961 (get!1652 lt!206011)))))))

(declare-fun b!461578 () Bool)

(declare-fun res!205541 () Bool)

(assert (=> b!461578 (=> (not res!205541) (not e!282828))))

(assert (=> b!461578 (= res!205541 (= (value!29253 (_1!2961 (get!1652 lt!206011))) (apply!1155 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!206011)))))))))

(assert (= (and d!175553 c!92894) b!461572))

(assert (= (and d!175553 (not c!92894)) b!461571))

(assert (= (or b!461572 b!461571) bm!31981))

(assert (= (and d!175553 (not res!205542)) b!461570))

(assert (= (and b!461570 res!205537) b!461577))

(assert (= (and b!461577 res!205543) b!461576))

(assert (= (and b!461576 res!205539) b!461575))

(assert (= (and b!461575 res!205540) b!461578))

(assert (= (and b!461578 res!205541) b!461573))

(assert (= (and b!461573 res!205538) b!461574))

(declare-fun m!730271 () Bool)

(assert (=> b!461573 m!730271))

(declare-fun m!730273 () Bool)

(assert (=> b!461573 m!730273))

(assert (=> b!461573 m!730273))

(declare-fun m!730275 () Bool)

(assert (=> b!461573 m!730275))

(assert (=> b!461573 m!730275))

(declare-fun m!730277 () Bool)

(assert (=> b!461573 m!730277))

(declare-fun m!730279 () Bool)

(assert (=> b!461570 m!730279))

(declare-fun m!730281 () Bool)

(assert (=> d!175553 m!730281))

(declare-fun m!730283 () Bool)

(assert (=> d!175553 m!730283))

(declare-fun m!730285 () Bool)

(assert (=> d!175553 m!730285))

(assert (=> d!175553 m!730215))

(assert (=> b!461577 m!730271))

(assert (=> b!461577 m!730273))

(assert (=> b!461577 m!730273))

(assert (=> b!461577 m!730275))

(assert (=> b!461576 m!730271))

(declare-fun m!730287 () Bool)

(assert (=> b!461576 m!730287))

(assert (=> b!461576 m!730071))

(declare-fun m!730289 () Bool)

(assert (=> bm!31981 m!730289))

(assert (=> b!461574 m!730271))

(declare-fun m!730291 () Bool)

(assert (=> b!461574 m!730291))

(declare-fun m!730293 () Bool)

(assert (=> b!461571 m!730293))

(assert (=> b!461578 m!730271))

(declare-fun m!730295 () Bool)

(assert (=> b!461578 m!730295))

(assert (=> b!461578 m!730295))

(declare-fun m!730297 () Bool)

(assert (=> b!461578 m!730297))

(assert (=> b!461575 m!730271))

(assert (=> b!461575 m!730273))

(assert (=> b!461575 m!730273))

(assert (=> b!461575 m!730275))

(assert (=> b!461575 m!730275))

(declare-fun m!730299 () Bool)

(assert (=> b!461575 m!730299))

(assert (=> b!461283 d!175553))

(declare-fun d!175555 () Bool)

(declare-fun isEmpty!3491 (Option!1185) Bool)

(assert (=> d!175555 (= (isDefined!1024 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))) (not (isEmpty!3491 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))

(declare-fun bs!57180 () Bool)

(assert (= bs!57180 d!175555))

(assert (=> bs!57180 m!729907))

(declare-fun m!730301 () Bool)

(assert (=> bs!57180 m!730301))

(assert (=> b!461292 d!175555))

(declare-fun b!461620 () Bool)

(declare-fun e!282856 () Bool)

(declare-fun e!282859 () Bool)

(assert (=> b!461620 (= e!282856 e!282859)))

(declare-fun res!205580 () Bool)

(assert (=> b!461620 (=> (not res!205580) (not e!282859))))

(declare-fun lt!206046 () Option!1185)

(declare-fun get!1654 (Option!1185) tuple2!5492)

(declare-fun maxPrefixZipper!198 (LexerInterface!761 List!4504 List!4503) Option!1184)

(assert (=> b!461620 (= res!205580 (= (_1!2962 (get!1654 lt!206046)) (_1!2961 (get!1652 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))))

(declare-fun b!461621 () Bool)

(declare-fun e!282860 () Option!1185)

(declare-fun lt!206049 () Option!1185)

(declare-fun lt!206047 () Option!1185)

(assert (=> b!461621 (= e!282860 (ite (and ((_ is None!1184) lt!206049) ((_ is None!1184) lt!206047)) None!1184 (ite ((_ is None!1184) lt!206047) lt!206049 (ite ((_ is None!1184) lt!206049) lt!206047 (ite (>= (size!3667 (_1!2962 (v!15533 lt!206049))) (size!3667 (_1!2962 (v!15533 lt!206047)))) lt!206049 lt!206047)))))))

(declare-fun call!31992 () Option!1185)

(assert (=> b!461621 (= lt!206049 call!31992)))

(assert (=> b!461621 (= lt!206047 (maxPrefixZipperSequence!440 thiss!17480 (t!71884 rules!1920) (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))

(declare-fun b!461622 () Bool)

(declare-fun e!282861 () Bool)

(declare-fun e!282857 () Bool)

(assert (=> b!461622 (= e!282861 e!282857)))

(declare-fun res!205579 () Bool)

(assert (=> b!461622 (=> res!205579 e!282857)))

(assert (=> b!461622 (= res!205579 (not (isDefined!1024 lt!206046)))))

(declare-fun b!461623 () Bool)

(declare-fun e!282858 () Bool)

(assert (=> b!461623 (= e!282858 (= (list!2004 (_2!2962 (get!1654 lt!206046))) (_2!2961 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))))

(declare-fun b!461624 () Bool)

(declare-fun res!205577 () Bool)

(assert (=> b!461624 (=> (not res!205577) (not e!282861))))

(assert (=> b!461624 (= res!205577 e!282856)))

(declare-fun res!205578 () Bool)

(assert (=> b!461624 (=> res!205578 e!282856)))

(assert (=> b!461624 (= res!205578 (not (isDefined!1024 lt!206046)))))

(declare-fun b!461625 () Bool)

(assert (=> b!461625 (= e!282857 e!282858)))

(declare-fun res!205575 () Bool)

(assert (=> b!461625 (=> (not res!205575) (not e!282858))))

(assert (=> b!461625 (= res!205575 (= (_1!2962 (get!1654 lt!206046)) (_1!2961 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))))

(declare-fun bm!31987 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!199 (LexerInterface!761 Rule!1550 BalanceConc!3152) Option!1185)

(assert (=> bm!31987 (= call!31992 (maxPrefixOneRuleZipperSequence!199 thiss!17480 (h!9891 rules!1920) (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))

(declare-fun b!461627 () Bool)

(assert (=> b!461627 (= e!282859 (= (list!2004 (_2!2962 (get!1654 lt!206046))) (_2!2961 (get!1652 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))))

(declare-fun d!175557 () Bool)

(assert (=> d!175557 e!282861))

(declare-fun res!205576 () Bool)

(assert (=> d!175557 (=> (not res!205576) (not e!282861))))

(assert (=> d!175557 (= res!205576 (= (isDefined!1024 lt!206046) (isDefined!1023 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))))

(assert (=> d!175557 (= lt!206046 e!282860)))

(declare-fun c!92900 () Bool)

(assert (=> d!175557 (= c!92900 (and ((_ is Cons!4494) rules!1920) ((_ is Nil!4494) (t!71884 rules!1920))))))

(declare-fun lt!206045 () Unit!8113)

(declare-fun lt!206051 () Unit!8113)

(assert (=> d!175557 (= lt!206045 lt!206051)))

(declare-fun lt!206050 () List!4503)

(declare-fun lt!206048 () List!4503)

(assert (=> d!175557 (isPrefix!527 lt!206050 lt!206048)))

(assert (=> d!175557 (= lt!206051 (lemmaIsPrefixRefl!295 lt!206050 lt!206048))))

(assert (=> d!175557 (= lt!206048 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))

(assert (=> d!175557 (= lt!206050 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))

(assert (=> d!175557 (rulesValidInductive!290 thiss!17480 rules!1920)))

(assert (=> d!175557 (= (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))) lt!206046)))

(declare-fun b!461626 () Bool)

(assert (=> b!461626 (= e!282860 call!31992)))

(assert (= (and d!175557 c!92900) b!461626))

(assert (= (and d!175557 (not c!92900)) b!461621))

(assert (= (or b!461626 b!461621) bm!31987))

(assert (= (and d!175557 res!205576) b!461624))

(assert (= (and b!461624 (not res!205578)) b!461620))

(assert (= (and b!461620 res!205580) b!461627))

(assert (= (and b!461624 res!205577) b!461622))

(assert (= (and b!461622 (not res!205579)) b!461625))

(assert (= (and b!461625 res!205575) b!461623))

(assert (=> d!175557 m!730215))

(assert (=> d!175557 m!729905))

(declare-fun m!730337 () Bool)

(assert (=> d!175557 m!730337))

(declare-fun m!730339 () Bool)

(assert (=> d!175557 m!730339))

(declare-fun m!730341 () Bool)

(assert (=> d!175557 m!730341))

(declare-fun m!730343 () Bool)

(assert (=> d!175557 m!730343))

(declare-fun m!730345 () Bool)

(assert (=> d!175557 m!730345))

(declare-fun m!730347 () Bool)

(assert (=> d!175557 m!730347))

(assert (=> d!175557 m!730337))

(assert (=> d!175557 m!730341))

(assert (=> b!461622 m!730339))

(assert (=> b!461624 m!730339))

(declare-fun m!730349 () Bool)

(assert (=> b!461627 m!730349))

(assert (=> b!461627 m!729905))

(assert (=> b!461627 m!730337))

(assert (=> b!461627 m!730341))

(declare-fun m!730351 () Bool)

(assert (=> b!461627 m!730351))

(declare-fun m!730353 () Bool)

(assert (=> b!461627 m!730353))

(assert (=> b!461627 m!730337))

(assert (=> b!461627 m!730341))

(assert (=> b!461621 m!729905))

(declare-fun m!730355 () Bool)

(assert (=> b!461621 m!730355))

(assert (=> b!461620 m!730353))

(assert (=> b!461620 m!729905))

(assert (=> b!461620 m!730337))

(assert (=> b!461620 m!730337))

(assert (=> b!461620 m!730341))

(assert (=> b!461620 m!730341))

(assert (=> b!461620 m!730351))

(assert (=> b!461623 m!730349))

(assert (=> b!461623 m!729905))

(assert (=> b!461623 m!730337))

(declare-fun m!730357 () Bool)

(assert (=> b!461623 m!730357))

(declare-fun m!730359 () Bool)

(assert (=> b!461623 m!730359))

(assert (=> b!461623 m!730353))

(assert (=> b!461623 m!730337))

(assert (=> b!461623 m!730357))

(assert (=> b!461625 m!730353))

(assert (=> b!461625 m!729905))

(assert (=> b!461625 m!730337))

(assert (=> b!461625 m!730337))

(assert (=> b!461625 m!730357))

(assert (=> b!461625 m!730357))

(assert (=> b!461625 m!730359))

(assert (=> bm!31987 m!729905))

(declare-fun m!730361 () Bool)

(assert (=> bm!31987 m!730361))

(assert (=> b!461292 d!175557))

(declare-fun d!175565 () Bool)

(assert (=> d!175565 (= (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))) (fromListB!497 (originalCharacters!918 (h!9892 tokens!465))))))

(declare-fun bs!57182 () Bool)

(assert (= bs!57182 d!175565))

(declare-fun m!730363 () Bool)

(assert (=> bs!57182 m!730363))

(assert (=> b!461292 d!175565))

(declare-fun d!175567 () Bool)

(assert (=> d!175567 (dynLambda!2749 lambda!13618 (h!9892 tokens!465))))

(declare-fun lt!206061 () Unit!8113)

(declare-fun choose!3471 (List!4505 Int Token!1494) Unit!8113)

(assert (=> d!175567 (= lt!206061 (choose!3471 tokens!465 lambda!13618 (h!9892 tokens!465)))))

(declare-fun e!282870 () Bool)

(assert (=> d!175567 e!282870))

(declare-fun res!205589 () Bool)

(assert (=> d!175567 (=> (not res!205589) (not e!282870))))

(assert (=> d!175567 (= res!205589 (forall!1308 tokens!465 lambda!13618))))

(assert (=> d!175567 (= (forallContained!428 tokens!465 lambda!13618 (h!9892 tokens!465)) lt!206061)))

(declare-fun b!461638 () Bool)

(declare-fun contains!1009 (List!4505 Token!1494) Bool)

(assert (=> b!461638 (= e!282870 (contains!1009 tokens!465 (h!9892 tokens!465)))))

(assert (= (and d!175567 res!205589) b!461638))

(declare-fun b_lambda!19149 () Bool)

(assert (=> (not b_lambda!19149) (not d!175567)))

(declare-fun m!730391 () Bool)

(assert (=> d!175567 m!730391))

(declare-fun m!730393 () Bool)

(assert (=> d!175567 m!730393))

(declare-fun m!730395 () Bool)

(assert (=> d!175567 m!730395))

(declare-fun m!730397 () Bool)

(assert (=> b!461638 m!730397))

(assert (=> b!461292 d!175567))

(declare-fun d!175569 () Bool)

(declare-fun res!205594 () Bool)

(declare-fun e!282875 () Bool)

(assert (=> d!175569 (=> res!205594 e!282875)))

(assert (=> d!175569 (= res!205594 ((_ is Nil!4495) tokens!465))))

(assert (=> d!175569 (= (forall!1308 tokens!465 lambda!13617) e!282875)))

(declare-fun b!461643 () Bool)

(declare-fun e!282876 () Bool)

(assert (=> b!461643 (= e!282875 e!282876)))

(declare-fun res!205595 () Bool)

(assert (=> b!461643 (=> (not res!205595) (not e!282876))))

(assert (=> b!461643 (= res!205595 (dynLambda!2749 lambda!13617 (h!9892 tokens!465)))))

(declare-fun b!461644 () Bool)

(assert (=> b!461644 (= e!282876 (forall!1308 (t!71885 tokens!465) lambda!13617))))

(assert (= (and d!175569 (not res!205594)) b!461643))

(assert (= (and b!461643 res!205595) b!461644))

(declare-fun b_lambda!19151 () Bool)

(assert (=> (not b_lambda!19151) (not b!461643)))

(declare-fun m!730401 () Bool)

(assert (=> b!461643 m!730401))

(declare-fun m!730403 () Bool)

(assert (=> b!461644 m!730403))

(assert (=> b!461290 d!175569))

(declare-fun d!175575 () Bool)

(declare-fun list!2009 (Conc!1572) List!4503)

(assert (=> d!175575 (= (list!2004 (seqFromList!1115 lt!205920)) (list!2009 (c!92854 (seqFromList!1115 lt!205920))))))

(declare-fun bs!57184 () Bool)

(assert (= bs!57184 d!175575))

(declare-fun m!730405 () Bool)

(assert (=> bs!57184 m!730405))

(assert (=> b!461311 d!175575))

(declare-fun d!175577 () Bool)

(assert (=> d!175577 (= (seqFromList!1115 lt!205920) (fromListB!497 lt!205920))))

(declare-fun bs!57185 () Bool)

(assert (= bs!57185 d!175577))

(declare-fun m!730407 () Bool)

(assert (=> bs!57185 m!730407))

(assert (=> b!461311 d!175577))

(declare-fun b!461647 () Bool)

(declare-fun e!282879 () List!4505)

(declare-fun call!31994 () List!4505)

(assert (=> b!461647 (= e!282879 call!31994)))

(declare-fun b!461648 () Bool)

(declare-fun e!282881 () Bool)

(declare-fun lt!206062 () List!4505)

(assert (=> b!461648 (= e!282881 (forall!1308 lt!206062 lambda!13617))))

(declare-fun b!461649 () Bool)

(declare-fun e!282880 () List!4505)

(assert (=> b!461649 (= e!282880 Nil!4495)))

(declare-fun b!461651 () Bool)

(assert (=> b!461651 (= e!282880 e!282879)))

(declare-fun c!92902 () Bool)

(assert (=> b!461651 (= c!92902 (dynLambda!2749 lambda!13617 (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))))))))

(declare-fun b!461650 () Bool)

(assert (=> b!461650 (= e!282879 (Cons!4495 (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))) call!31994))))

(declare-fun d!175579 () Bool)

(assert (=> d!175579 e!282881))

(declare-fun res!205598 () Bool)

(assert (=> d!175579 (=> (not res!205598) (not e!282881))))

(assert (=> d!175579 (= res!205598 (<= (size!3675 lt!206062) (size!3675 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))))))))

(assert (=> d!175579 (= lt!206062 e!282880)))

(declare-fun c!92903 () Bool)

(assert (=> d!175579 (= c!92903 ((_ is Nil!4495) (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))))

(assert (=> d!175579 (= (filter!103 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))) lambda!13617) lt!206062)))

(declare-fun b!461652 () Bool)

(declare-fun res!205599 () Bool)

(assert (=> b!461652 (=> (not res!205599) (not e!282881))))

(assert (=> b!461652 (= res!205599 (= ((_ map implies) (content!753 lt!206062) (content!753 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))))) ((as const (InoxSet Token!1494)) true)))))

(declare-fun bm!31989 () Bool)

(assert (=> bm!31989 (= call!31994 (filter!103 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))) lambda!13617))))

(assert (= (and d!175579 c!92903) b!461649))

(assert (= (and d!175579 (not c!92903)) b!461651))

(assert (= (and b!461651 c!92902) b!461650))

(assert (= (and b!461651 (not c!92902)) b!461647))

(assert (= (or b!461650 b!461647) bm!31989))

(assert (= (and d!175579 res!205598) b!461652))

(assert (= (and b!461652 res!205599) b!461648))

(declare-fun b_lambda!19153 () Bool)

(assert (=> (not b_lambda!19153) (not b!461651)))

(declare-fun m!730409 () Bool)

(assert (=> b!461651 m!730409))

(declare-fun m!730411 () Bool)

(assert (=> d!175579 m!730411))

(assert (=> d!175579 m!729875))

(declare-fun m!730413 () Bool)

(assert (=> d!175579 m!730413))

(declare-fun m!730415 () Bool)

(assert (=> b!461648 m!730415))

(declare-fun m!730417 () Bool)

(assert (=> b!461652 m!730417))

(assert (=> b!461652 m!729875))

(declare-fun m!730419 () Bool)

(assert (=> b!461652 m!730419))

(declare-fun m!730421 () Bool)

(assert (=> bm!31989 m!730421))

(assert (=> b!461310 d!175579))

(declare-fun d!175581 () Bool)

(assert (=> d!175581 (= (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))) (list!2007 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))))

(declare-fun bs!57186 () Bool)

(assert (= bs!57186 d!175581))

(declare-fun m!730423 () Bool)

(assert (=> bs!57186 m!730423))

(assert (=> b!461310 d!175581))

(declare-fun b!461654 () Bool)

(declare-fun e!282883 () Bool)

(declare-fun lt!206066 () tuple2!5494)

(assert (=> b!461654 (= e!282883 (not (isEmpty!3485 (_1!2963 lt!206066))))))

(declare-fun b!461655 () Bool)

(declare-fun e!282885 () Bool)

(assert (=> b!461655 (= e!282885 (= (list!2004 (_2!2963 lt!206066)) (_2!2965 (lexList!299 thiss!17480 rules!1920 (list!2004 lt!205918)))))))

(declare-fun d!175583 () Bool)

(assert (=> d!175583 e!282885))

(declare-fun res!205602 () Bool)

(assert (=> d!175583 (=> (not res!205602) (not e!282885))))

(declare-fun e!282884 () Bool)

(assert (=> d!175583 (= res!205602 e!282884)))

(declare-fun c!92904 () Bool)

(assert (=> d!175583 (= c!92904 (> (size!3672 (_1!2963 lt!206066)) 0))))

(assert (=> d!175583 (= lt!206066 (lexTailRecV2!264 thiss!17480 rules!1920 lt!205918 (BalanceConc!3153 Empty!1572) lt!205918 (BalanceConc!3155 Empty!1573)))))

(assert (=> d!175583 (= (lex!553 thiss!17480 rules!1920 lt!205918) lt!206066)))

(declare-fun b!461656 () Bool)

(assert (=> b!461656 (= e!282884 (= (_2!2963 lt!206066) lt!205918))))

(declare-fun b!461657 () Bool)

(assert (=> b!461657 (= e!282884 e!282883)))

(declare-fun res!205601 () Bool)

(assert (=> b!461657 (= res!205601 (< (size!3673 (_2!2963 lt!206066)) (size!3673 lt!205918)))))

(assert (=> b!461657 (=> (not res!205601) (not e!282883))))

(declare-fun b!461658 () Bool)

(declare-fun res!205603 () Bool)

(assert (=> b!461658 (=> (not res!205603) (not e!282885))))

(assert (=> b!461658 (= res!205603 (= (list!2005 (_1!2963 lt!206066)) (_1!2965 (lexList!299 thiss!17480 rules!1920 (list!2004 lt!205918)))))))

(assert (= (and d!175583 c!92904) b!461657))

(assert (= (and d!175583 (not c!92904)) b!461656))

(assert (= (and b!461657 res!205601) b!461654))

(assert (= (and d!175583 res!205602) b!461658))

(assert (= (and b!461658 res!205603) b!461655))

(declare-fun m!730443 () Bool)

(assert (=> b!461658 m!730443))

(assert (=> b!461658 m!729851))

(assert (=> b!461658 m!729851))

(declare-fun m!730445 () Bool)

(assert (=> b!461658 m!730445))

(declare-fun m!730449 () Bool)

(assert (=> b!461654 m!730449))

(declare-fun m!730451 () Bool)

(assert (=> b!461657 m!730451))

(declare-fun m!730453 () Bool)

(assert (=> b!461657 m!730453))

(declare-fun m!730455 () Bool)

(assert (=> d!175583 m!730455))

(declare-fun m!730457 () Bool)

(assert (=> d!175583 m!730457))

(declare-fun m!730459 () Bool)

(assert (=> b!461655 m!730459))

(assert (=> b!461655 m!729851))

(assert (=> b!461655 m!729851))

(assert (=> b!461655 m!730445))

(assert (=> b!461310 d!175583))

(declare-fun d!175591 () Bool)

(assert (=> d!175591 (= lt!205901 (_2!2961 lt!205912))))

(declare-fun lt!206071 () Unit!8113)

(declare-fun choose!3473 (List!4503 List!4503 List!4503 List!4503 List!4503) Unit!8113)

(assert (=> d!175591 (= lt!206071 (choose!3473 lt!205905 lt!205901 lt!205905 (_2!2961 lt!205912) lt!205920))))

(assert (=> d!175591 (isPrefix!527 lt!205905 lt!205920)))

(assert (=> d!175591 (= (lemmaSamePrefixThenSameSuffix!296 lt!205905 lt!205901 lt!205905 (_2!2961 lt!205912) lt!205920) lt!206071)))

(declare-fun bs!57189 () Bool)

(assert (= bs!57189 d!175591))

(declare-fun m!730469 () Bool)

(assert (=> bs!57189 m!730469))

(assert (=> bs!57189 m!729829))

(assert (=> b!461310 d!175591))

(declare-fun d!175597 () Bool)

(declare-fun res!205612 () Bool)

(declare-fun e!282892 () Bool)

(assert (=> d!175597 (=> (not res!205612) (not e!282892))))

(assert (=> d!175597 (= res!205612 (not (isEmpty!3484 (originalCharacters!918 (h!9892 tokens!465)))))))

(assert (=> d!175597 (= (inv!5573 (h!9892 tokens!465)) e!282892)))

(declare-fun b!461671 () Bool)

(declare-fun res!205613 () Bool)

(assert (=> b!461671 (=> (not res!205613) (not e!282892))))

(declare-fun dynLambda!2750 (Int TokenValue!897) BalanceConc!3152)

(assert (=> b!461671 (= res!205613 (= (originalCharacters!918 (h!9892 tokens!465)) (list!2004 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465))))))))

(declare-fun b!461672 () Bool)

(assert (=> b!461672 (= e!282892 (= (size!3667 (h!9892 tokens!465)) (size!3674 (originalCharacters!918 (h!9892 tokens!465)))))))

(assert (= (and d!175597 res!205612) b!461671))

(assert (= (and b!461671 res!205613) b!461672))

(declare-fun b_lambda!19157 () Bool)

(assert (=> (not b_lambda!19157) (not b!461671)))

(declare-fun t!71902 () Bool)

(declare-fun tb!46087 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465))))) t!71902) tb!46087))

(declare-fun b!461677 () Bool)

(declare-fun e!282895 () Bool)

(declare-fun tp!127675 () Bool)

(declare-fun inv!5577 (Conc!1572) Bool)

(assert (=> b!461677 (= e!282895 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465))))) tp!127675))))

(declare-fun result!50752 () Bool)

(declare-fun inv!5578 (BalanceConc!3152) Bool)

(assert (=> tb!46087 (= result!50752 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465)))) e!282895))))

(assert (= tb!46087 b!461677))

(declare-fun m!730471 () Bool)

(assert (=> b!461677 m!730471))

(declare-fun m!730473 () Bool)

(assert (=> tb!46087 m!730473))

(assert (=> b!461671 t!71902))

(declare-fun b_and!49547 () Bool)

(assert (= b_and!49531 (and (=> t!71902 result!50752) b_and!49547)))

(declare-fun tb!46089 () Bool)

(declare-fun t!71904 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465))))) t!71904) tb!46089))

(declare-fun result!50756 () Bool)

(assert (= result!50756 result!50752))

(assert (=> b!461671 t!71904))

(declare-fun b_and!49549 () Bool)

(assert (= b_and!49535 (and (=> t!71904 result!50756) b_and!49549)))

(declare-fun t!71906 () Bool)

(declare-fun tb!46091 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465))))) t!71906) tb!46091))

(declare-fun result!50758 () Bool)

(assert (= result!50758 result!50752))

(assert (=> b!461671 t!71906))

(declare-fun b_and!49551 () Bool)

(assert (= b_and!49539 (and (=> t!71906 result!50758) b_and!49551)))

(declare-fun m!730475 () Bool)

(assert (=> d!175597 m!730475))

(declare-fun m!730477 () Bool)

(assert (=> b!461671 m!730477))

(assert (=> b!461671 m!730477))

(declare-fun m!730479 () Bool)

(assert (=> b!461671 m!730479))

(declare-fun m!730481 () Bool)

(assert (=> b!461672 m!730481))

(assert (=> b!461289 d!175597))

(assert (=> b!461309 d!175535))

(declare-fun d!175599 () Bool)

(declare-fun res!205618 () Bool)

(declare-fun e!282900 () Bool)

(assert (=> d!175599 (=> res!205618 e!282900)))

(assert (=> d!175599 (= res!205618 (not ((_ is Cons!4494) rules!1920)))))

(assert (=> d!175599 (= (sepAndNonSepRulesDisjointChars!464 rules!1920 rules!1920) e!282900)))

(declare-fun b!461682 () Bool)

(declare-fun e!282901 () Bool)

(assert (=> b!461682 (= e!282900 e!282901)))

(declare-fun res!205619 () Bool)

(assert (=> b!461682 (=> (not res!205619) (not e!282901))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!206 (Rule!1550 List!4504) Bool)

(assert (=> b!461682 (= res!205619 (ruleDisjointCharsFromAllFromOtherType!206 (h!9891 rules!1920) rules!1920))))

(declare-fun b!461683 () Bool)

(assert (=> b!461683 (= e!282901 (sepAndNonSepRulesDisjointChars!464 rules!1920 (t!71884 rules!1920)))))

(assert (= (and d!175599 (not res!205618)) b!461682))

(assert (= (and b!461682 res!205619) b!461683))

(declare-fun m!730483 () Bool)

(assert (=> b!461682 m!730483))

(declare-fun m!730485 () Bool)

(assert (=> b!461683 m!730485))

(assert (=> b!461276 d!175599))

(declare-fun d!175601 () Bool)

(declare-fun res!205622 () Bool)

(declare-fun e!282904 () Bool)

(assert (=> d!175601 (=> (not res!205622) (not e!282904))))

(declare-fun rulesValid!314 (LexerInterface!761 List!4504) Bool)

(assert (=> d!175601 (= res!205622 (rulesValid!314 thiss!17480 rules!1920))))

(assert (=> d!175601 (= (rulesInvariant!727 thiss!17480 rules!1920) e!282904)))

(declare-fun b!461686 () Bool)

(declare-datatypes ((List!4507 0))(
  ( (Nil!4497) (Cons!4497 (h!9894 String!5565) (t!71951 List!4507)) )
))
(declare-fun noDuplicateTag!314 (LexerInterface!761 List!4504 List!4507) Bool)

(assert (=> b!461686 (= e!282904 (noDuplicateTag!314 thiss!17480 rules!1920 Nil!4497))))

(assert (= (and d!175601 res!205622) b!461686))

(declare-fun m!730487 () Bool)

(assert (=> d!175601 m!730487))

(declare-fun m!730489 () Bool)

(assert (=> b!461686 m!730489))

(assert (=> b!461296 d!175601))

(declare-fun b!461715 () Bool)

(declare-fun e!282924 () Bool)

(declare-fun lt!206074 () Bool)

(assert (=> b!461715 (= e!282924 (not lt!206074))))

(declare-fun b!461716 () Bool)

(declare-fun res!205643 () Bool)

(declare-fun e!282923 () Bool)

(assert (=> b!461716 (=> (not res!205643) (not e!282923))))

(assert (=> b!461716 (= res!205643 (isEmpty!3484 (tail!652 lt!205905)))))

(declare-fun b!461717 () Bool)

(declare-fun e!282925 () Bool)

(declare-fun call!31997 () Bool)

(assert (=> b!461717 (= e!282925 (= lt!206074 call!31997))))

(declare-fun b!461718 () Bool)

(assert (=> b!461718 (= e!282923 (= (head!1134 lt!205905) (c!92855 (regex!875 (rule!1570 (h!9892 tokens!465))))))))

(declare-fun b!461719 () Bool)

(declare-fun e!282922 () Bool)

(assert (=> b!461719 (= e!282922 (not (= (head!1134 lt!205905) (c!92855 (regex!875 (rule!1570 (h!9892 tokens!465)))))))))

(declare-fun bm!31992 () Bool)

(assert (=> bm!31992 (= call!31997 (isEmpty!3484 lt!205905))))

(declare-fun b!461721 () Bool)

(declare-fun res!205641 () Bool)

(assert (=> b!461721 (=> res!205641 e!282922)))

(assert (=> b!461721 (= res!205641 (not (isEmpty!3484 (tail!652 lt!205905))))))

(declare-fun b!461722 () Bool)

(declare-fun e!282920 () Bool)

(assert (=> b!461722 (= e!282920 e!282922)))

(declare-fun res!205639 () Bool)

(assert (=> b!461722 (=> res!205639 e!282922)))

(assert (=> b!461722 (= res!205639 call!31997)))

(declare-fun b!461723 () Bool)

(declare-fun res!205645 () Bool)

(declare-fun e!282921 () Bool)

(assert (=> b!461723 (=> res!205645 e!282921)))

(assert (=> b!461723 (= res!205645 (not ((_ is ElementMatch!1099) (regex!875 (rule!1570 (h!9892 tokens!465))))))))

(assert (=> b!461723 (= e!282924 e!282921)))

(declare-fun b!461724 () Bool)

(assert (=> b!461724 (= e!282921 e!282920)))

(declare-fun res!205644 () Bool)

(assert (=> b!461724 (=> (not res!205644) (not e!282920))))

(assert (=> b!461724 (= res!205644 (not lt!206074))))

(declare-fun b!461725 () Bool)

(declare-fun e!282919 () Bool)

(declare-fun derivativeStep!217 (Regex!1099 C!3120) Regex!1099)

(assert (=> b!461725 (= e!282919 (matchR!417 (derivativeStep!217 (regex!875 (rule!1570 (h!9892 tokens!465))) (head!1134 lt!205905)) (tail!652 lt!205905)))))

(declare-fun b!461726 () Bool)

(declare-fun res!205646 () Bool)

(assert (=> b!461726 (=> (not res!205646) (not e!282923))))

(assert (=> b!461726 (= res!205646 (not call!31997))))

(declare-fun d!175603 () Bool)

(assert (=> d!175603 e!282925))

(declare-fun c!92914 () Bool)

(assert (=> d!175603 (= c!92914 ((_ is EmptyExpr!1099) (regex!875 (rule!1570 (h!9892 tokens!465)))))))

(assert (=> d!175603 (= lt!206074 e!282919)))

(declare-fun c!92913 () Bool)

(assert (=> d!175603 (= c!92913 (isEmpty!3484 lt!205905))))

(declare-fun validRegex!326 (Regex!1099) Bool)

(assert (=> d!175603 (validRegex!326 (regex!875 (rule!1570 (h!9892 tokens!465))))))

(assert (=> d!175603 (= (matchR!417 (regex!875 (rule!1570 (h!9892 tokens!465))) lt!205905) lt!206074)))

(declare-fun b!461720 () Bool)

(declare-fun nullable!251 (Regex!1099) Bool)

(assert (=> b!461720 (= e!282919 (nullable!251 (regex!875 (rule!1570 (h!9892 tokens!465)))))))

(declare-fun b!461727 () Bool)

(declare-fun res!205642 () Bool)

(assert (=> b!461727 (=> res!205642 e!282921)))

(assert (=> b!461727 (= res!205642 e!282923)))

(declare-fun res!205640 () Bool)

(assert (=> b!461727 (=> (not res!205640) (not e!282923))))

(assert (=> b!461727 (= res!205640 lt!206074)))

(declare-fun b!461728 () Bool)

(assert (=> b!461728 (= e!282925 e!282924)))

(declare-fun c!92915 () Bool)

(assert (=> b!461728 (= c!92915 ((_ is EmptyLang!1099) (regex!875 (rule!1570 (h!9892 tokens!465)))))))

(assert (= (and d!175603 c!92913) b!461720))

(assert (= (and d!175603 (not c!92913)) b!461725))

(assert (= (and d!175603 c!92914) b!461717))

(assert (= (and d!175603 (not c!92914)) b!461728))

(assert (= (and b!461728 c!92915) b!461715))

(assert (= (and b!461728 (not c!92915)) b!461723))

(assert (= (and b!461723 (not res!205645)) b!461727))

(assert (= (and b!461727 res!205640) b!461726))

(assert (= (and b!461726 res!205646) b!461716))

(assert (= (and b!461716 res!205643) b!461718))

(assert (= (and b!461727 (not res!205642)) b!461724))

(assert (= (and b!461724 res!205644) b!461722))

(assert (= (and b!461722 (not res!205639)) b!461721))

(assert (= (and b!461721 (not res!205641)) b!461719))

(assert (= (or b!461717 b!461726 b!461722) bm!31992))

(assert (=> b!461718 m!730243))

(assert (=> b!461716 m!730249))

(assert (=> b!461716 m!730249))

(declare-fun m!730491 () Bool)

(assert (=> b!461716 m!730491))

(declare-fun m!730493 () Bool)

(assert (=> bm!31992 m!730493))

(assert (=> b!461721 m!730249))

(assert (=> b!461721 m!730249))

(assert (=> b!461721 m!730491))

(declare-fun m!730495 () Bool)

(assert (=> b!461720 m!730495))

(assert (=> b!461725 m!730243))

(assert (=> b!461725 m!730243))

(declare-fun m!730497 () Bool)

(assert (=> b!461725 m!730497))

(assert (=> b!461725 m!730249))

(assert (=> b!461725 m!730497))

(assert (=> b!461725 m!730249))

(declare-fun m!730499 () Bool)

(assert (=> b!461725 m!730499))

(assert (=> d!175603 m!730493))

(declare-fun m!730501 () Bool)

(assert (=> d!175603 m!730501))

(assert (=> b!461719 m!730243))

(assert (=> b!461295 d!175603))

(declare-fun d!175605 () Bool)

(declare-fun lt!206079 () Bool)

(declare-fun e!282930 () Bool)

(assert (=> d!175605 (= lt!206079 e!282930)))

(declare-fun res!205653 () Bool)

(assert (=> d!175605 (=> (not res!205653) (not e!282930))))

(assert (=> d!175605 (= res!205653 (= (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465)))))) (list!2005 (singletonSeq!421 (h!9892 tokens!465)))))))

(declare-fun e!282931 () Bool)

(assert (=> d!175605 (= lt!206079 e!282931)))

(declare-fun res!205655 () Bool)

(assert (=> d!175605 (=> (not res!205655) (not e!282931))))

(declare-fun lt!206080 () tuple2!5494)

(assert (=> d!175605 (= res!205655 (= (size!3672 (_1!2963 lt!206080)) 1))))

(assert (=> d!175605 (= lt!206080 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465)))))))

(assert (=> d!175605 (not (isEmpty!3482 rules!1920))))

(assert (=> d!175605 (= (rulesProduceIndividualToken!510 thiss!17480 rules!1920 (h!9892 tokens!465)) lt!206079)))

(declare-fun b!461735 () Bool)

(declare-fun res!205654 () Bool)

(assert (=> b!461735 (=> (not res!205654) (not e!282931))))

(declare-fun apply!1157 (BalanceConc!3154 Int) Token!1494)

(assert (=> b!461735 (= res!205654 (= (apply!1157 (_1!2963 lt!206080) 0) (h!9892 tokens!465)))))

(declare-fun b!461736 () Bool)

(declare-fun isEmpty!3492 (BalanceConc!3152) Bool)

(assert (=> b!461736 (= e!282931 (isEmpty!3492 (_2!2963 lt!206080)))))

(declare-fun b!461737 () Bool)

(assert (=> b!461737 (= e!282930 (isEmpty!3492 (_2!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465)))))))))

(assert (= (and d!175605 res!205655) b!461735))

(assert (= (and b!461735 res!205654) b!461736))

(assert (= (and d!175605 res!205653) b!461737))

(assert (=> d!175605 m!729901))

(declare-fun m!730503 () Bool)

(assert (=> d!175605 m!730503))

(declare-fun m!730505 () Bool)

(assert (=> d!175605 m!730505))

(assert (=> d!175605 m!730503))

(declare-fun m!730507 () Bool)

(assert (=> d!175605 m!730507))

(assert (=> d!175605 m!729901))

(declare-fun m!730509 () Bool)

(assert (=> d!175605 m!730509))

(declare-fun m!730511 () Bool)

(assert (=> d!175605 m!730511))

(assert (=> d!175605 m!729821))

(assert (=> d!175605 m!729901))

(declare-fun m!730513 () Bool)

(assert (=> b!461735 m!730513))

(declare-fun m!730515 () Bool)

(assert (=> b!461736 m!730515))

(assert (=> b!461737 m!729901))

(assert (=> b!461737 m!729901))

(assert (=> b!461737 m!730503))

(assert (=> b!461737 m!730503))

(assert (=> b!461737 m!730507))

(declare-fun m!730517 () Bool)

(assert (=> b!461737 m!730517))

(assert (=> b!461293 d!175605))

(declare-fun d!175607 () Bool)

(declare-fun lt!206114 () BalanceConc!3152)

(declare-fun printListTailRec!216 (LexerInterface!761 List!4505 List!4503) List!4503)

(declare-fun dropList!252 (BalanceConc!3154 Int) List!4505)

(assert (=> d!175607 (= (list!2004 lt!206114) (printListTailRec!216 thiss!17480 (dropList!252 lt!205900 0) (list!2004 (BalanceConc!3153 Empty!1572))))))

(declare-fun e!282954 () BalanceConc!3152)

(assert (=> d!175607 (= lt!206114 e!282954)))

(declare-fun c!92933 () Bool)

(assert (=> d!175607 (= c!92933 (>= 0 (size!3672 lt!205900)))))

(declare-fun e!282955 () Bool)

(assert (=> d!175607 e!282955))

(declare-fun res!205658 () Bool)

(assert (=> d!175607 (=> (not res!205658) (not e!282955))))

(assert (=> d!175607 (= res!205658 (>= 0 0))))

(assert (=> d!175607 (= (printTailRec!447 thiss!17480 lt!205900 0 (BalanceConc!3153 Empty!1572)) lt!206114)))

(declare-fun b!461777 () Bool)

(assert (=> b!461777 (= e!282955 (<= 0 (size!3672 lt!205900)))))

(declare-fun b!461778 () Bool)

(assert (=> b!461778 (= e!282954 (BalanceConc!3153 Empty!1572))))

(declare-fun b!461779 () Bool)

(declare-fun ++!1314 (BalanceConc!3152 BalanceConc!3152) BalanceConc!3152)

(assert (=> b!461779 (= e!282954 (printTailRec!447 thiss!17480 lt!205900 (+ 0 1) (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (apply!1157 lt!205900 0)))))))

(declare-fun lt!206117 () List!4505)

(assert (=> b!461779 (= lt!206117 (list!2005 lt!205900))))

(declare-fun lt!206115 () Unit!8113)

(declare-fun lemmaDropApply!292 (List!4505 Int) Unit!8113)

(assert (=> b!461779 (= lt!206115 (lemmaDropApply!292 lt!206117 0))))

(declare-fun drop!321 (List!4505 Int) List!4505)

(declare-fun apply!1158 (List!4505 Int) Token!1494)

(assert (=> b!461779 (= (head!1132 (drop!321 lt!206117 0)) (apply!1158 lt!206117 0))))

(declare-fun lt!206113 () Unit!8113)

(assert (=> b!461779 (= lt!206113 lt!206115)))

(declare-fun lt!206119 () List!4505)

(assert (=> b!461779 (= lt!206119 (list!2005 lt!205900))))

(declare-fun lt!206118 () Unit!8113)

(declare-fun lemmaDropTail!284 (List!4505 Int) Unit!8113)

(assert (=> b!461779 (= lt!206118 (lemmaDropTail!284 lt!206119 0))))

(declare-fun tail!654 (List!4505) List!4505)

(assert (=> b!461779 (= (tail!654 (drop!321 lt!206119 0)) (drop!321 lt!206119 (+ 0 1)))))

(declare-fun lt!206116 () Unit!8113)

(assert (=> b!461779 (= lt!206116 lt!206118)))

(assert (= (and d!175607 res!205658) b!461777))

(assert (= (and d!175607 c!92933) b!461778))

(assert (= (and d!175607 (not c!92933)) b!461779))

(declare-fun m!730547 () Bool)

(assert (=> d!175607 m!730547))

(declare-fun m!730549 () Bool)

(assert (=> d!175607 m!730549))

(assert (=> d!175607 m!730547))

(declare-fun m!730551 () Bool)

(assert (=> d!175607 m!730551))

(assert (=> d!175607 m!730549))

(declare-fun m!730553 () Bool)

(assert (=> d!175607 m!730553))

(declare-fun m!730555 () Bool)

(assert (=> d!175607 m!730555))

(assert (=> b!461777 m!730555))

(declare-fun m!730557 () Bool)

(assert (=> b!461779 m!730557))

(declare-fun m!730559 () Bool)

(assert (=> b!461779 m!730559))

(declare-fun m!730561 () Bool)

(assert (=> b!461779 m!730561))

(declare-fun m!730563 () Bool)

(assert (=> b!461779 m!730563))

(declare-fun m!730565 () Bool)

(assert (=> b!461779 m!730565))

(declare-fun m!730567 () Bool)

(assert (=> b!461779 m!730567))

(declare-fun m!730569 () Bool)

(assert (=> b!461779 m!730569))

(declare-fun m!730571 () Bool)

(assert (=> b!461779 m!730571))

(assert (=> b!461779 m!730567))

(declare-fun m!730573 () Bool)

(assert (=> b!461779 m!730573))

(declare-fun m!730575 () Bool)

(assert (=> b!461779 m!730575))

(declare-fun m!730577 () Bool)

(assert (=> b!461779 m!730577))

(assert (=> b!461779 m!730569))

(declare-fun m!730579 () Bool)

(assert (=> b!461779 m!730579))

(assert (=> b!461779 m!730577))

(declare-fun m!730581 () Bool)

(assert (=> b!461779 m!730581))

(assert (=> b!461779 m!730559))

(assert (=> b!461779 m!730575))

(assert (=> b!461303 d!175607))

(declare-fun d!175611 () Bool)

(declare-fun lt!206122 () BalanceConc!3152)

(assert (=> d!175611 (= (list!2004 lt!206122) (printList!435 thiss!17480 (list!2005 lt!205900)))))

(assert (=> d!175611 (= lt!206122 (printTailRec!447 thiss!17480 lt!205900 0 (BalanceConc!3153 Empty!1572)))))

(assert (=> d!175611 (= (print!486 thiss!17480 lt!205900) lt!206122)))

(declare-fun bs!57194 () Bool)

(assert (= bs!57194 d!175611))

(declare-fun m!730583 () Bool)

(assert (=> bs!57194 m!730583))

(assert (=> bs!57194 m!730571))

(assert (=> bs!57194 m!730571))

(declare-fun m!730585 () Bool)

(assert (=> bs!57194 m!730585))

(assert (=> bs!57194 m!729893))

(assert (=> b!461303 d!175611))

(declare-fun d!175613 () Bool)

(assert (=> d!175613 (= (list!2004 lt!205919) (list!2009 (c!92854 lt!205919)))))

(declare-fun bs!57195 () Bool)

(assert (= bs!57195 d!175613))

(declare-fun m!730587 () Bool)

(assert (=> bs!57195 m!730587))

(assert (=> b!461303 d!175613))

(declare-fun d!175615 () Bool)

(declare-fun e!282958 () Bool)

(assert (=> d!175615 e!282958))

(declare-fun res!205661 () Bool)

(assert (=> d!175615 (=> (not res!205661) (not e!282958))))

(declare-fun lt!206125 () BalanceConc!3154)

(assert (=> d!175615 (= res!205661 (= (list!2005 lt!206125) (Cons!4495 (h!9892 tokens!465) Nil!4495)))))

(declare-fun singleton!201 (Token!1494) BalanceConc!3154)

(assert (=> d!175615 (= lt!206125 (singleton!201 (h!9892 tokens!465)))))

(assert (=> d!175615 (= (singletonSeq!421 (h!9892 tokens!465)) lt!206125)))

(declare-fun b!461782 () Bool)

(declare-fun isBalanced!480 (Conc!1573) Bool)

(assert (=> b!461782 (= e!282958 (isBalanced!480 (c!92856 lt!206125)))))

(assert (= (and d!175615 res!205661) b!461782))

(declare-fun m!730589 () Bool)

(assert (=> d!175615 m!730589))

(declare-fun m!730591 () Bool)

(assert (=> d!175615 m!730591))

(declare-fun m!730593 () Bool)

(assert (=> b!461782 m!730593))

(assert (=> b!461303 d!175615))

(declare-fun d!175617 () Bool)

(declare-fun c!92936 () Bool)

(assert (=> d!175617 (= c!92936 ((_ is Cons!4495) (Cons!4495 (h!9892 tokens!465) Nil!4495)))))

(declare-fun e!282961 () List!4503)

(assert (=> d!175617 (= (printList!435 thiss!17480 (Cons!4495 (h!9892 tokens!465) Nil!4495)) e!282961)))

(declare-fun b!461787 () Bool)

(assert (=> b!461787 (= e!282961 (++!1312 (list!2004 (charsOf!518 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))) (printList!435 thiss!17480 (t!71885 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))))

(declare-fun b!461788 () Bool)

(assert (=> b!461788 (= e!282961 Nil!4493)))

(assert (= (and d!175617 c!92936) b!461787))

(assert (= (and d!175617 (not c!92936)) b!461788))

(declare-fun m!730595 () Bool)

(assert (=> b!461787 m!730595))

(assert (=> b!461787 m!730595))

(declare-fun m!730597 () Bool)

(assert (=> b!461787 m!730597))

(declare-fun m!730599 () Bool)

(assert (=> b!461787 m!730599))

(assert (=> b!461787 m!730597))

(assert (=> b!461787 m!730599))

(declare-fun m!730601 () Bool)

(assert (=> b!461787 m!730601))

(assert (=> b!461303 d!175617))

(declare-fun d!175619 () Bool)

(assert (=> d!175619 (= (inv!5570 (tag!1135 (h!9891 rules!1920))) (= (mod (str.len (value!29252 (tag!1135 (h!9891 rules!1920)))) 2) 0))))

(assert (=> b!461302 d!175619))

(declare-fun d!175621 () Bool)

(declare-fun res!205662 () Bool)

(declare-fun e!282962 () Bool)

(assert (=> d!175621 (=> (not res!205662) (not e!282962))))

(assert (=> d!175621 (= res!205662 (semiInverseModEq!349 (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toValue!1694 (transformation!875 (h!9891 rules!1920)))))))

(assert (=> d!175621 (= (inv!5574 (transformation!875 (h!9891 rules!1920))) e!282962)))

(declare-fun b!461789 () Bool)

(assert (=> b!461789 (= e!282962 (equivClasses!332 (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toValue!1694 (transformation!875 (h!9891 rules!1920)))))))

(assert (= (and d!175621 res!205662) b!461789))

(declare-fun m!730603 () Bool)

(assert (=> d!175621 m!730603))

(declare-fun m!730605 () Bool)

(assert (=> b!461789 m!730605))

(assert (=> b!461302 d!175621))

(declare-fun d!175623 () Bool)

(assert (=> d!175623 (= (isDefined!1023 lt!205908) (not (isEmpty!3490 lt!205908)))))

(declare-fun bs!57196 () Bool)

(assert (= bs!57196 d!175623))

(declare-fun m!730607 () Bool)

(assert (=> bs!57196 m!730607))

(assert (=> b!461280 d!175623))

(assert (=> b!461280 d!175527))

(declare-fun d!175625 () Bool)

(declare-fun res!205663 () Bool)

(declare-fun e!282963 () Bool)

(assert (=> d!175625 (=> (not res!205663) (not e!282963))))

(assert (=> d!175625 (= res!205663 (not (isEmpty!3484 (originalCharacters!918 separatorToken!170))))))

(assert (=> d!175625 (= (inv!5573 separatorToken!170) e!282963)))

(declare-fun b!461790 () Bool)

(declare-fun res!205664 () Bool)

(assert (=> b!461790 (=> (not res!205664) (not e!282963))))

(assert (=> b!461790 (= res!205664 (= (originalCharacters!918 separatorToken!170) (list!2004 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170)))))))

(declare-fun b!461791 () Bool)

(assert (=> b!461791 (= e!282963 (= (size!3667 separatorToken!170) (size!3674 (originalCharacters!918 separatorToken!170))))))

(assert (= (and d!175625 res!205663) b!461790))

(assert (= (and b!461790 res!205664) b!461791))

(declare-fun b_lambda!19159 () Bool)

(assert (=> (not b_lambda!19159) (not b!461790)))

(declare-fun tb!46093 () Bool)

(declare-fun t!71912 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170)))) t!71912) tb!46093))

(declare-fun b!461792 () Bool)

(declare-fun e!282964 () Bool)

(declare-fun tp!127676 () Bool)

(assert (=> b!461792 (= e!282964 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170)))) tp!127676))))

(declare-fun result!50760 () Bool)

(assert (=> tb!46093 (= result!50760 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170))) e!282964))))

(assert (= tb!46093 b!461792))

(declare-fun m!730609 () Bool)

(assert (=> b!461792 m!730609))

(declare-fun m!730611 () Bool)

(assert (=> tb!46093 m!730611))

(assert (=> b!461790 t!71912))

(declare-fun b_and!49553 () Bool)

(assert (= b_and!49547 (and (=> t!71912 result!50760) b_and!49553)))

(declare-fun t!71914 () Bool)

(declare-fun tb!46095 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170)))) t!71914) tb!46095))

(declare-fun result!50762 () Bool)

(assert (= result!50762 result!50760))

(assert (=> b!461790 t!71914))

(declare-fun b_and!49555 () Bool)

(assert (= b_and!49549 (and (=> t!71914 result!50762) b_and!49555)))

(declare-fun t!71916 () Bool)

(declare-fun tb!46097 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170)))) t!71916) tb!46097))

(declare-fun result!50764 () Bool)

(assert (= result!50764 result!50760))

(assert (=> b!461790 t!71916))

(declare-fun b_and!49557 () Bool)

(assert (= b_and!49551 (and (=> t!71916 result!50764) b_and!49557)))

(declare-fun m!730613 () Bool)

(assert (=> d!175625 m!730613))

(declare-fun m!730615 () Bool)

(assert (=> b!461790 m!730615))

(assert (=> b!461790 m!730615))

(declare-fun m!730617 () Bool)

(assert (=> b!461790 m!730617))

(declare-fun m!730619 () Bool)

(assert (=> b!461791 m!730619))

(assert (=> start!43850 d!175625))

(declare-fun d!175627 () Bool)

(assert (=> d!175627 (= (inv!5570 (tag!1135 (rule!1570 separatorToken!170))) (= (mod (str.len (value!29252 (tag!1135 (rule!1570 separatorToken!170)))) 2) 0))))

(assert (=> b!461301 d!175627))

(declare-fun d!175629 () Bool)

(declare-fun res!205665 () Bool)

(declare-fun e!282965 () Bool)

(assert (=> d!175629 (=> (not res!205665) (not e!282965))))

(assert (=> d!175629 (= res!205665 (semiInverseModEq!349 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toValue!1694 (transformation!875 (rule!1570 separatorToken!170)))))))

(assert (=> d!175629 (= (inv!5574 (transformation!875 (rule!1570 separatorToken!170))) e!282965)))

(declare-fun b!461793 () Bool)

(assert (=> b!461793 (= e!282965 (equivClasses!332 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toValue!1694 (transformation!875 (rule!1570 separatorToken!170)))))))

(assert (= (and d!175629 res!205665) b!461793))

(declare-fun m!730621 () Bool)

(assert (=> d!175629 m!730621))

(declare-fun m!730623 () Bool)

(assert (=> b!461793 m!730623))

(assert (=> b!461301 d!175629))

(declare-fun d!175631 () Bool)

(declare-fun lt!206126 () Bool)

(declare-fun e!282966 () Bool)

(assert (=> d!175631 (= lt!206126 e!282966)))

(declare-fun res!205666 () Bool)

(assert (=> d!175631 (=> (not res!205666) (not e!282966))))

(assert (=> d!175631 (= res!205666 (= (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170))))) (list!2005 (singletonSeq!421 separatorToken!170))))))

(declare-fun e!282967 () Bool)

(assert (=> d!175631 (= lt!206126 e!282967)))

(declare-fun res!205668 () Bool)

(assert (=> d!175631 (=> (not res!205668) (not e!282967))))

(declare-fun lt!206127 () tuple2!5494)

(assert (=> d!175631 (= res!205668 (= (size!3672 (_1!2963 lt!206127)) 1))))

(assert (=> d!175631 (= lt!206127 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170))))))

(assert (=> d!175631 (not (isEmpty!3482 rules!1920))))

(assert (=> d!175631 (= (rulesProduceIndividualToken!510 thiss!17480 rules!1920 separatorToken!170) lt!206126)))

(declare-fun b!461794 () Bool)

(declare-fun res!205667 () Bool)

(assert (=> b!461794 (=> (not res!205667) (not e!282967))))

(assert (=> b!461794 (= res!205667 (= (apply!1157 (_1!2963 lt!206127) 0) separatorToken!170))))

(declare-fun b!461795 () Bool)

(assert (=> b!461795 (= e!282967 (isEmpty!3492 (_2!2963 lt!206127)))))

(declare-fun b!461796 () Bool)

(assert (=> b!461796 (= e!282966 (isEmpty!3492 (_2!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170))))))))

(assert (= (and d!175631 res!205668) b!461794))

(assert (= (and b!461794 res!205667) b!461795))

(assert (= (and d!175631 res!205666) b!461796))

(declare-fun m!730625 () Bool)

(assert (=> d!175631 m!730625))

(declare-fun m!730627 () Bool)

(assert (=> d!175631 m!730627))

(declare-fun m!730629 () Bool)

(assert (=> d!175631 m!730629))

(assert (=> d!175631 m!730627))

(declare-fun m!730631 () Bool)

(assert (=> d!175631 m!730631))

(assert (=> d!175631 m!730625))

(declare-fun m!730633 () Bool)

(assert (=> d!175631 m!730633))

(declare-fun m!730635 () Bool)

(assert (=> d!175631 m!730635))

(assert (=> d!175631 m!729821))

(assert (=> d!175631 m!730625))

(declare-fun m!730637 () Bool)

(assert (=> b!461794 m!730637))

(declare-fun m!730639 () Bool)

(assert (=> b!461795 m!730639))

(assert (=> b!461796 m!730625))

(assert (=> b!461796 m!730625))

(assert (=> b!461796 m!730627))

(assert (=> b!461796 m!730627))

(assert (=> b!461796 m!730631))

(declare-fun m!730641 () Bool)

(assert (=> b!461796 m!730641))

(assert (=> b!461300 d!175631))

(declare-fun d!175633 () Bool)

(assert (=> d!175633 (= (list!2004 lt!205918) (list!2009 (c!92854 lt!205918)))))

(declare-fun bs!57197 () Bool)

(assert (= bs!57197 d!175633))

(declare-fun m!730643 () Bool)

(assert (=> bs!57197 m!730643))

(assert (=> b!461279 d!175633))

(declare-fun bs!57240 () Bool)

(declare-fun d!175635 () Bool)

(assert (= bs!57240 (and d!175635 b!461290)))

(declare-fun lambda!13651 () Int)

(assert (=> bs!57240 (= lambda!13651 lambda!13617)))

(declare-fun bs!57241 () Bool)

(assert (= bs!57241 (and d!175635 b!461292)))

(assert (=> bs!57241 (not (= lambda!13651 lambda!13618))))

(declare-fun bs!57242 () Bool)

(assert (= bs!57242 (and d!175635 d!175483)))

(assert (=> bs!57242 (not (= lambda!13651 lambda!13628))))

(declare-fun bs!57243 () Bool)

(assert (= bs!57243 (and d!175635 d!175507)))

(assert (=> bs!57243 (= lambda!13651 lambda!13634)))

(declare-fun bs!57244 () Bool)

(declare-fun b!461918 () Bool)

(assert (= bs!57244 (and b!461918 b!461290)))

(declare-fun lambda!13652 () Int)

(assert (=> bs!57244 (not (= lambda!13652 lambda!13617))))

(declare-fun bs!57245 () Bool)

(assert (= bs!57245 (and b!461918 d!175507)))

(assert (=> bs!57245 (not (= lambda!13652 lambda!13634))))

(declare-fun bs!57246 () Bool)

(assert (= bs!57246 (and b!461918 d!175635)))

(assert (=> bs!57246 (not (= lambda!13652 lambda!13651))))

(declare-fun bs!57247 () Bool)

(assert (= bs!57247 (and b!461918 d!175483)))

(assert (=> bs!57247 (= lambda!13652 lambda!13628)))

(declare-fun bs!57248 () Bool)

(assert (= bs!57248 (and b!461918 b!461292)))

(assert (=> bs!57248 (= lambda!13652 lambda!13618)))

(declare-fun b!461928 () Bool)

(declare-fun e!283053 () Bool)

(assert (=> b!461928 (= e!283053 true)))

(declare-fun b!461927 () Bool)

(declare-fun e!283052 () Bool)

(assert (=> b!461927 (= e!283052 e!283053)))

(declare-fun b!461926 () Bool)

(declare-fun e!283051 () Bool)

(assert (=> b!461926 (= e!283051 e!283052)))

(assert (=> b!461918 e!283051))

(assert (= b!461927 b!461928))

(assert (= b!461926 b!461927))

(assert (= (and b!461918 ((_ is Cons!4494) rules!1920)) b!461926))

(assert (=> b!461928 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13652))))

(assert (=> b!461928 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13652))))

(assert (=> b!461918 true))

(declare-fun bm!32044 () Bool)

(declare-fun call!32053 () Token!1494)

(declare-fun call!32050 () Token!1494)

(assert (=> bm!32044 (= call!32053 call!32050)))

(declare-fun call!32049 () BalanceConc!3152)

(declare-fun c!92976 () Bool)

(declare-fun bm!32045 () Bool)

(assert (=> bm!32045 (= call!32049 (charsOf!518 (ite c!92976 separatorToken!170 call!32053)))))

(declare-fun b!461917 () Bool)

(declare-fun e!283049 () Bool)

(declare-fun lt!206236 () Option!1185)

(assert (=> b!461917 (= e!283049 (= (_1!2962 (v!15533 lt!206236)) (apply!1157 lt!205904 0)))))

(declare-fun e!283048 () BalanceConc!3152)

(declare-fun e!283050 () BalanceConc!3152)

(assert (=> b!461918 (= e!283048 e!283050)))

(declare-fun lt!206238 () List!4505)

(assert (=> b!461918 (= lt!206238 (list!2005 lt!205904))))

(declare-fun lt!206237 () Unit!8113)

(assert (=> b!461918 (= lt!206237 (lemmaDropApply!292 lt!206238 0))))

(assert (=> b!461918 (= (head!1132 (drop!321 lt!206238 0)) (apply!1158 lt!206238 0))))

(declare-fun lt!206244 () Unit!8113)

(assert (=> b!461918 (= lt!206244 lt!206237)))

(declare-fun lt!206245 () List!4505)

(assert (=> b!461918 (= lt!206245 (list!2005 lt!205904))))

(declare-fun lt!206246 () Unit!8113)

(assert (=> b!461918 (= lt!206246 (lemmaDropTail!284 lt!206245 0))))

(assert (=> b!461918 (= (tail!654 (drop!321 lt!206245 0)) (drop!321 lt!206245 (+ 0 1)))))

(declare-fun lt!206241 () Unit!8113)

(assert (=> b!461918 (= lt!206241 lt!206246)))

(declare-fun lt!206242 () Unit!8113)

(assert (=> b!461918 (= lt!206242 (forallContained!428 (list!2005 lt!205904) lambda!13652 (apply!1157 lt!205904 0)))))

(declare-fun lt!206235 () BalanceConc!3152)

(assert (=> b!461918 (= lt!206235 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 lt!205904 separatorToken!170 (+ 0 1)))))

(assert (=> b!461918 (= lt!206236 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (++!1314 (charsOf!518 (apply!1157 lt!205904 0)) lt!206235)))))

(declare-fun res!205704 () Bool)

(assert (=> b!461918 (= res!205704 ((_ is Some!1184) lt!206236))))

(assert (=> b!461918 (=> (not res!205704) (not e!283049))))

(declare-fun c!92975 () Bool)

(assert (=> b!461918 (= c!92975 e!283049)))

(declare-fun b!461919 () Bool)

(declare-fun e!283045 () Bool)

(assert (=> b!461919 (= e!283045 (not (= (_1!2962 (v!15533 lt!206236)) call!32050)))))

(declare-fun b!461920 () Bool)

(assert (=> b!461920 (= c!92976 e!283045)))

(declare-fun res!205703 () Bool)

(assert (=> b!461920 (=> (not res!205703) (not e!283045))))

(assert (=> b!461920 (= res!205703 ((_ is Some!1184) lt!206236))))

(declare-fun e!283047 () BalanceConc!3152)

(assert (=> b!461920 (= e!283050 e!283047)))

(declare-fun bm!32046 () Bool)

(declare-fun call!32052 () BalanceConc!3152)

(declare-fun call!32051 () BalanceConc!3152)

(assert (=> bm!32046 (= call!32051 (++!1314 call!32052 (ite c!92975 lt!206235 call!32049)))))

(declare-fun b!461921 () Bool)

(assert (=> b!461921 (= e!283050 call!32051)))

(declare-fun b!461922 () Bool)

(assert (=> b!461922 (= e!283047 (++!1314 call!32051 lt!206235))))

(declare-fun b!461923 () Bool)

(declare-fun e!283046 () Bool)

(assert (=> b!461923 (= e!283046 (<= 0 (size!3672 lt!205904)))))

(declare-fun b!461924 () Bool)

(assert (=> b!461924 (= e!283048 (BalanceConc!3153 Empty!1572))))

(declare-fun lt!206234 () BalanceConc!3152)

(assert (=> d!175635 (= (list!2004 lt!206234) (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (dropList!252 lt!205904 0) separatorToken!170))))

(assert (=> d!175635 (= lt!206234 e!283048)))

(declare-fun c!92977 () Bool)

(assert (=> d!175635 (= c!92977 (>= 0 (size!3672 lt!205904)))))

(declare-fun lt!206239 () Unit!8113)

(declare-fun lemmaContentSubsetPreservesForall!196 (List!4505 List!4505 Int) Unit!8113)

(assert (=> d!175635 (= lt!206239 (lemmaContentSubsetPreservesForall!196 (list!2005 lt!205904) (dropList!252 lt!205904 0) lambda!13651))))

(assert (=> d!175635 e!283046))

(declare-fun res!205705 () Bool)

(assert (=> d!175635 (=> (not res!205705) (not e!283046))))

(assert (=> d!175635 (= res!205705 (>= 0 0))))

(assert (=> d!175635 (= (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 lt!205904 separatorToken!170 0) lt!206234)))

(declare-fun bm!32047 () Bool)

(assert (=> bm!32047 (= call!32050 (apply!1157 lt!205904 0))))

(declare-fun bm!32048 () Bool)

(assert (=> bm!32048 (= call!32052 (charsOf!518 (ite c!92975 call!32050 call!32053)))))

(declare-fun b!461925 () Bool)

(assert (=> b!461925 (= e!283047 (BalanceConc!3153 Empty!1572))))

(assert (=> b!461925 (= (print!486 thiss!17480 (singletonSeq!421 call!32053)) (printTailRec!447 thiss!17480 (singletonSeq!421 call!32053) 0 (BalanceConc!3153 Empty!1572)))))

(declare-fun lt!206243 () Unit!8113)

(declare-fun Unit!8123 () Unit!8113)

(assert (=> b!461925 (= lt!206243 Unit!8123)))

(declare-fun lt!206240 () Unit!8113)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 (LexerInterface!761 List!4504 List!4503 List!4503) Unit!8113)

(assert (=> b!461925 (= lt!206240 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 (list!2004 call!32049) (list!2004 lt!206235)))))

(assert (=> b!461925 false))

(declare-fun lt!206247 () Unit!8113)

(declare-fun Unit!8124 () Unit!8113)

(assert (=> b!461925 (= lt!206247 Unit!8124)))

(assert (= (and d!175635 res!205705) b!461923))

(assert (= (and d!175635 c!92977) b!461924))

(assert (= (and d!175635 (not c!92977)) b!461918))

(assert (= (and b!461918 res!205704) b!461917))

(assert (= (and b!461918 c!92975) b!461921))

(assert (= (and b!461918 (not c!92975)) b!461920))

(assert (= (and b!461920 res!205703) b!461919))

(assert (= (and b!461920 c!92976) b!461922))

(assert (= (and b!461920 (not c!92976)) b!461925))

(assert (= (or b!461922 b!461925) bm!32044))

(assert (= (or b!461922 b!461925) bm!32045))

(assert (= (or b!461921 bm!32044 b!461919) bm!32047))

(assert (= (or b!461921 b!461922) bm!32048))

(assert (= (or b!461921 b!461922) bm!32046))

(declare-fun m!730885 () Bool)

(assert (=> bm!32047 m!730885))

(declare-fun m!730887 () Bool)

(assert (=> bm!32046 m!730887))

(assert (=> b!461917 m!730885))

(declare-fun m!730889 () Bool)

(assert (=> d!175635 m!730889))

(assert (=> d!175635 m!730889))

(declare-fun m!730891 () Bool)

(assert (=> d!175635 m!730891))

(declare-fun m!730893 () Bool)

(assert (=> d!175635 m!730893))

(assert (=> d!175635 m!730059))

(declare-fun m!730895 () Bool)

(assert (=> d!175635 m!730895))

(assert (=> d!175635 m!730059))

(assert (=> d!175635 m!730889))

(declare-fun m!730897 () Bool)

(assert (=> d!175635 m!730897))

(declare-fun m!730899 () Bool)

(assert (=> b!461918 m!730899))

(declare-fun m!730901 () Bool)

(assert (=> b!461918 m!730901))

(assert (=> b!461918 m!730885))

(declare-fun m!730903 () Bool)

(assert (=> b!461918 m!730903))

(declare-fun m!730905 () Bool)

(assert (=> b!461918 m!730905))

(assert (=> b!461918 m!730059))

(assert (=> b!461918 m!730885))

(declare-fun m!730907 () Bool)

(assert (=> b!461918 m!730907))

(declare-fun m!730909 () Bool)

(assert (=> b!461918 m!730909))

(declare-fun m!730911 () Bool)

(assert (=> b!461918 m!730911))

(assert (=> b!461918 m!730909))

(declare-fun m!730913 () Bool)

(assert (=> b!461918 m!730913))

(assert (=> b!461918 m!730885))

(declare-fun m!730915 () Bool)

(assert (=> b!461918 m!730915))

(declare-fun m!730917 () Bool)

(assert (=> b!461918 m!730917))

(declare-fun m!730919 () Bool)

(assert (=> b!461918 m!730919))

(assert (=> b!461918 m!730059))

(assert (=> b!461918 m!730903))

(assert (=> b!461918 m!730899))

(declare-fun m!730921 () Bool)

(assert (=> b!461918 m!730921))

(assert (=> b!461918 m!730905))

(declare-fun m!730923 () Bool)

(assert (=> b!461918 m!730923))

(declare-fun m!730925 () Bool)

(assert (=> bm!32045 m!730925))

(declare-fun m!730927 () Bool)

(assert (=> b!461925 m!730927))

(assert (=> b!461925 m!730927))

(declare-fun m!730929 () Bool)

(assert (=> b!461925 m!730929))

(declare-fun m!730931 () Bool)

(assert (=> b!461925 m!730931))

(assert (=> b!461925 m!730929))

(declare-fun m!730933 () Bool)

(assert (=> b!461925 m!730933))

(assert (=> b!461925 m!730933))

(declare-fun m!730935 () Bool)

(assert (=> b!461925 m!730935))

(assert (=> b!461925 m!730933))

(declare-fun m!730937 () Bool)

(assert (=> b!461925 m!730937))

(declare-fun m!730939 () Bool)

(assert (=> bm!32048 m!730939))

(declare-fun m!730941 () Bool)

(assert (=> b!461922 m!730941))

(assert (=> b!461923 m!730893))

(assert (=> b!461279 d!175635))

(declare-fun bs!57260 () Bool)

(declare-fun b!462105 () Bool)

(assert (= bs!57260 (and b!462105 b!461290)))

(declare-fun lambda!13655 () Int)

(assert (=> bs!57260 (not (= lambda!13655 lambda!13617))))

(declare-fun bs!57261 () Bool)

(assert (= bs!57261 (and b!462105 d!175507)))

(assert (=> bs!57261 (not (= lambda!13655 lambda!13634))))

(declare-fun bs!57262 () Bool)

(assert (= bs!57262 (and b!462105 b!461918)))

(assert (=> bs!57262 (= lambda!13655 lambda!13652)))

(declare-fun bs!57263 () Bool)

(assert (= bs!57263 (and b!462105 d!175635)))

(assert (=> bs!57263 (not (= lambda!13655 lambda!13651))))

(declare-fun bs!57264 () Bool)

(assert (= bs!57264 (and b!462105 d!175483)))

(assert (=> bs!57264 (= lambda!13655 lambda!13628)))

(declare-fun bs!57265 () Bool)

(assert (= bs!57265 (and b!462105 b!461292)))

(assert (=> bs!57265 (= lambda!13655 lambda!13618)))

(declare-fun b!462108 () Bool)

(declare-fun e!283167 () Bool)

(assert (=> b!462108 (= e!283167 true)))

(declare-fun b!462107 () Bool)

(declare-fun e!283166 () Bool)

(assert (=> b!462107 (= e!283166 e!283167)))

(declare-fun b!462106 () Bool)

(declare-fun e!283165 () Bool)

(assert (=> b!462106 (= e!283165 e!283166)))

(assert (=> b!462105 e!283165))

(assert (= b!462107 b!462108))

(assert (= b!462106 b!462107))

(assert (= (and b!462105 ((_ is Cons!4494) rules!1920)) b!462106))

(assert (=> b!462108 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13655))))

(assert (=> b!462108 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13655))))

(assert (=> b!462105 true))

(declare-fun call!32070 () BalanceConc!3152)

(declare-fun c!93008 () Bool)

(declare-fun call!32071 () BalanceConc!3152)

(declare-fun call!32072 () List!4503)

(declare-fun bm!32063 () Bool)

(assert (=> bm!32063 (= call!32072 (list!2004 (ite c!93008 call!32071 call!32070)))))

(declare-fun b!462098 () Bool)

(declare-fun c!93006 () Bool)

(declare-fun lt!206302 () Option!1184)

(assert (=> b!462098 (= c!93006 (and ((_ is Some!1183) lt!206302) (not (= (_1!2961 (v!15532 lt!206302)) (h!9892 tokens!465)))))))

(declare-fun e!283164 () List!4503)

(declare-fun e!283163 () List!4503)

(assert (=> b!462098 (= e!283164 e!283163)))

(declare-fun b!462099 () Bool)

(declare-fun call!32069 () List!4503)

(declare-fun lt!206300 () List!4503)

(assert (=> b!462099 (= e!283163 (++!1312 call!32069 lt!206300))))

(declare-fun call!32068 () List!4503)

(declare-fun bm!32064 () Bool)

(assert (=> bm!32064 (= call!32069 (++!1312 call!32072 (ite c!93008 lt!206300 call!32068)))))

(declare-fun b!462101 () Bool)

(assert (=> b!462101 (= e!283164 call!32069)))

(declare-fun b!462102 () Bool)

(declare-fun e!283162 () BalanceConc!3152)

(assert (=> b!462102 (= e!283162 call!32070)))

(declare-fun b!462103 () Bool)

(assert (=> b!462103 (= e!283162 (charsOf!518 separatorToken!170))))

(declare-fun bm!32065 () Bool)

(assert (=> bm!32065 (= call!32071 (charsOf!518 (h!9892 tokens!465)))))

(declare-fun bm!32066 () Bool)

(assert (=> bm!32066 (= call!32070 call!32071)))

(declare-fun b!462104 () Bool)

(assert (=> b!462104 (= e!283163 Nil!4493)))

(assert (=> b!462104 (= (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465))) (printTailRec!447 thiss!17480 (singletonSeq!421 (h!9892 tokens!465)) 0 (BalanceConc!3153 Empty!1572)))))

(declare-fun lt!206301 () Unit!8113)

(declare-fun Unit!8125 () Unit!8113)

(assert (=> b!462104 (= lt!206301 Unit!8125)))

(declare-fun lt!206304 () Unit!8113)

(assert (=> b!462104 (= lt!206304 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 call!32068 lt!206300))))

(assert (=> b!462104 false))

(declare-fun lt!206305 () Unit!8113)

(declare-fun Unit!8126 () Unit!8113)

(assert (=> b!462104 (= lt!206305 Unit!8126)))

(declare-fun d!175677 () Bool)

(declare-fun c!93009 () Bool)

(assert (=> d!175677 (= c!93009 ((_ is Cons!4495) tokens!465))))

(declare-fun e!283161 () List!4503)

(assert (=> d!175677 (= (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!283161)))

(declare-fun b!462100 () Bool)

(assert (=> b!462100 (= e!283161 Nil!4493)))

(assert (=> b!462105 (= e!283161 e!283164)))

(declare-fun lt!206303 () Unit!8113)

(assert (=> b!462105 (= lt!206303 (forallContained!428 tokens!465 lambda!13655 (h!9892 tokens!465)))))

(assert (=> b!462105 (= lt!206300 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (t!71885 tokens!465) separatorToken!170))))

(assert (=> b!462105 (= lt!206302 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 (list!2004 (charsOf!518 (h!9892 tokens!465))) lt!206300)))))

(assert (=> b!462105 (= c!93008 (and ((_ is Some!1183) lt!206302) (= (_1!2961 (v!15532 lt!206302)) (h!9892 tokens!465))))))

(declare-fun bm!32067 () Bool)

(assert (=> bm!32067 (= call!32068 (list!2004 e!283162))))

(declare-fun c!93007 () Bool)

(assert (=> bm!32067 (= c!93007 c!93006)))

(assert (= (and d!175677 c!93009) b!462105))

(assert (= (and d!175677 (not c!93009)) b!462100))

(assert (= (and b!462105 c!93008) b!462101))

(assert (= (and b!462105 (not c!93008)) b!462098))

(assert (= (and b!462098 c!93006) b!462099))

(assert (= (and b!462098 (not c!93006)) b!462104))

(assert (= (or b!462099 b!462104) bm!32066))

(assert (= (or b!462099 b!462104) bm!32067))

(assert (= (and bm!32067 c!93007) b!462103))

(assert (= (and bm!32067 (not c!93007)) b!462102))

(assert (= (or b!462101 bm!32066) bm!32065))

(assert (= (or b!462101 b!462099) bm!32063))

(assert (= (or b!462101 b!462099) bm!32064))

(declare-fun m!731115 () Bool)

(assert (=> bm!32064 m!731115))

(declare-fun m!731117 () Bool)

(assert (=> bm!32067 m!731117))

(assert (=> b!462103 m!729937))

(assert (=> b!462105 m!729947))

(declare-fun m!731119 () Bool)

(assert (=> b!462105 m!731119))

(assert (=> b!462105 m!729947))

(assert (=> b!462105 m!729949))

(assert (=> b!462105 m!729935))

(assert (=> b!462105 m!729949))

(declare-fun m!731121 () Bool)

(assert (=> b!462105 m!731121))

(assert (=> b!462105 m!731121))

(declare-fun m!731123 () Bool)

(assert (=> b!462105 m!731123))

(assert (=> bm!32065 m!729947))

(assert (=> b!462104 m!729901))

(assert (=> b!462104 m!729901))

(assert (=> b!462104 m!730503))

(assert (=> b!462104 m!729901))

(declare-fun m!731125 () Bool)

(assert (=> b!462104 m!731125))

(declare-fun m!731127 () Bool)

(assert (=> b!462104 m!731127))

(declare-fun m!731129 () Bool)

(assert (=> b!462099 m!731129))

(declare-fun m!731131 () Bool)

(assert (=> bm!32063 m!731131))

(assert (=> b!461279 d!175677))

(declare-fun b!462109 () Bool)

(declare-fun e!283169 () Bool)

(assert (=> b!462109 (= e!283169 (inv!15 (value!29253 separatorToken!170)))))

(declare-fun b!462110 () Bool)

(declare-fun e!283168 () Bool)

(declare-fun e!283170 () Bool)

(assert (=> b!462110 (= e!283168 e!283170)))

(declare-fun c!93010 () Bool)

(assert (=> b!462110 (= c!93010 ((_ is IntegerValue!2692) (value!29253 separatorToken!170)))))

(declare-fun b!462111 () Bool)

(assert (=> b!462111 (= e!283170 (inv!17 (value!29253 separatorToken!170)))))

(declare-fun d!175731 () Bool)

(declare-fun c!93011 () Bool)

(assert (=> d!175731 (= c!93011 ((_ is IntegerValue!2691) (value!29253 separatorToken!170)))))

(assert (=> d!175731 (= (inv!21 (value!29253 separatorToken!170)) e!283168)))

(declare-fun b!462112 () Bool)

(assert (=> b!462112 (= e!283168 (inv!16 (value!29253 separatorToken!170)))))

(declare-fun b!462113 () Bool)

(declare-fun res!205763 () Bool)

(assert (=> b!462113 (=> res!205763 e!283169)))

(assert (=> b!462113 (= res!205763 (not ((_ is IntegerValue!2693) (value!29253 separatorToken!170))))))

(assert (=> b!462113 (= e!283170 e!283169)))

(assert (= (and d!175731 c!93011) b!462112))

(assert (= (and d!175731 (not c!93011)) b!462110))

(assert (= (and b!462110 c!93010) b!462111))

(assert (= (and b!462110 (not c!93010)) b!462113))

(assert (= (and b!462113 (not res!205763)) b!462109))

(declare-fun m!731133 () Bool)

(assert (=> b!462109 m!731133))

(declare-fun m!731135 () Bool)

(assert (=> b!462111 m!731135))

(declare-fun m!731137 () Bool)

(assert (=> b!462112 m!731137))

(assert (=> b!461278 d!175731))

(declare-fun d!175733 () Bool)

(assert (=> d!175733 (= (seqFromList!1116 (t!71885 tokens!465)) (fromListB!498 (t!71885 tokens!465)))))

(declare-fun bs!57266 () Bool)

(assert (= bs!57266 d!175733))

(declare-fun m!731139 () Bool)

(assert (=> bs!57266 m!731139))

(assert (=> b!461298 d!175733))

(declare-fun d!175735 () Bool)

(assert (=> d!175735 (= (list!2004 (charsOf!518 separatorToken!170)) (list!2009 (c!92854 (charsOf!518 separatorToken!170))))))

(declare-fun bs!57267 () Bool)

(assert (= bs!57267 d!175735))

(declare-fun m!731141 () Bool)

(assert (=> bs!57267 m!731141))

(assert (=> b!461298 d!175735))

(declare-fun d!175737 () Bool)

(assert (=> d!175737 (= (++!1312 (++!1312 lt!205905 lt!205896) lt!205901) (++!1312 lt!205905 (++!1312 lt!205896 lt!205901)))))

(declare-fun lt!206308 () Unit!8113)

(declare-fun choose!3475 (List!4503 List!4503 List!4503) Unit!8113)

(assert (=> d!175737 (= lt!206308 (choose!3475 lt!205905 lt!205896 lt!205901))))

(assert (=> d!175737 (= (lemmaConcatAssociativity!612 lt!205905 lt!205896 lt!205901) lt!206308)))

(declare-fun bs!57268 () Bool)

(assert (= bs!57268 d!175737))

(assert (=> bs!57268 m!729955))

(declare-fun m!731143 () Bool)

(assert (=> bs!57268 m!731143))

(assert (=> bs!57268 m!729943))

(declare-fun m!731145 () Bool)

(assert (=> bs!57268 m!731145))

(assert (=> bs!57268 m!729955))

(assert (=> bs!57268 m!729957))

(assert (=> bs!57268 m!729943))

(assert (=> b!461298 d!175737))

(declare-fun d!175739 () Bool)

(assert (=> d!175739 (= (list!2004 lt!205910) (list!2009 (c!92854 lt!205910)))))

(declare-fun bs!57269 () Bool)

(assert (= bs!57269 d!175739))

(declare-fun m!731147 () Bool)

(assert (=> bs!57269 m!731147))

(assert (=> b!461298 d!175739))

(declare-fun lt!206309 () List!4503)

(declare-fun e!283172 () Bool)

(declare-fun b!462117 () Bool)

(assert (=> b!462117 (= e!283172 (or (not (= lt!205914 Nil!4493)) (= lt!206309 lt!205905)))))

(declare-fun b!462114 () Bool)

(declare-fun e!283171 () List!4503)

(assert (=> b!462114 (= e!283171 lt!205914)))

(declare-fun b!462116 () Bool)

(declare-fun res!205765 () Bool)

(assert (=> b!462116 (=> (not res!205765) (not e!283172))))

(assert (=> b!462116 (= res!205765 (= (size!3674 lt!206309) (+ (size!3674 lt!205905) (size!3674 lt!205914))))))

(declare-fun d!175741 () Bool)

(assert (=> d!175741 e!283172))

(declare-fun res!205764 () Bool)

(assert (=> d!175741 (=> (not res!205764) (not e!283172))))

(assert (=> d!175741 (= res!205764 (= (content!752 lt!206309) ((_ map or) (content!752 lt!205905) (content!752 lt!205914))))))

(assert (=> d!175741 (= lt!206309 e!283171)))

(declare-fun c!93012 () Bool)

(assert (=> d!175741 (= c!93012 ((_ is Nil!4493) lt!205905))))

(assert (=> d!175741 (= (++!1312 lt!205905 lt!205914) lt!206309)))

(declare-fun b!462115 () Bool)

(assert (=> b!462115 (= e!283171 (Cons!4493 (h!9890 lt!205905) (++!1312 (t!71883 lt!205905) lt!205914)))))

(assert (= (and d!175741 c!93012) b!462114))

(assert (= (and d!175741 (not c!93012)) b!462115))

(assert (= (and d!175741 res!205764) b!462116))

(assert (= (and b!462116 res!205765) b!462117))

(declare-fun m!731149 () Bool)

(assert (=> b!462116 m!731149))

(assert (=> b!462116 m!730071))

(declare-fun m!731151 () Bool)

(assert (=> b!462116 m!731151))

(declare-fun m!731153 () Bool)

(assert (=> d!175741 m!731153))

(assert (=> d!175741 m!730077))

(declare-fun m!731155 () Bool)

(assert (=> d!175741 m!731155))

(declare-fun m!731157 () Bool)

(assert (=> b!462115 m!731157))

(assert (=> b!461298 d!175741))

(declare-fun bs!57270 () Bool)

(declare-fun b!462125 () Bool)

(assert (= bs!57270 (and b!462125 b!461290)))

(declare-fun lambda!13656 () Int)

(assert (=> bs!57270 (not (= lambda!13656 lambda!13617))))

(declare-fun bs!57271 () Bool)

(assert (= bs!57271 (and b!462125 b!462105)))

(assert (=> bs!57271 (= lambda!13656 lambda!13655)))

(declare-fun bs!57272 () Bool)

(assert (= bs!57272 (and b!462125 d!175507)))

(assert (=> bs!57272 (not (= lambda!13656 lambda!13634))))

(declare-fun bs!57273 () Bool)

(assert (= bs!57273 (and b!462125 b!461918)))

(assert (=> bs!57273 (= lambda!13656 lambda!13652)))

(declare-fun bs!57274 () Bool)

(assert (= bs!57274 (and b!462125 d!175635)))

(assert (=> bs!57274 (not (= lambda!13656 lambda!13651))))

(declare-fun bs!57275 () Bool)

(assert (= bs!57275 (and b!462125 d!175483)))

(assert (=> bs!57275 (= lambda!13656 lambda!13628)))

(declare-fun bs!57276 () Bool)

(assert (= bs!57276 (and b!462125 b!461292)))

(assert (=> bs!57276 (= lambda!13656 lambda!13618)))

(declare-fun b!462128 () Bool)

(declare-fun e!283179 () Bool)

(assert (=> b!462128 (= e!283179 true)))

(declare-fun b!462127 () Bool)

(declare-fun e!283178 () Bool)

(assert (=> b!462127 (= e!283178 e!283179)))

(declare-fun b!462126 () Bool)

(declare-fun e!283177 () Bool)

(assert (=> b!462126 (= e!283177 e!283178)))

(assert (=> b!462125 e!283177))

(assert (= b!462127 b!462128))

(assert (= b!462126 b!462127))

(assert (= (and b!462125 ((_ is Cons!4494) rules!1920)) b!462126))

(assert (=> b!462128 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13656))))

(assert (=> b!462128 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13656))))

(assert (=> b!462125 true))

(declare-fun bm!32068 () Bool)

(declare-fun c!93015 () Bool)

(declare-fun call!32077 () List!4503)

(declare-fun call!32076 () BalanceConc!3152)

(declare-fun call!32075 () BalanceConc!3152)

(assert (=> bm!32068 (= call!32077 (list!2004 (ite c!93015 call!32076 call!32075)))))

(declare-fun b!462118 () Bool)

(declare-fun c!93013 () Bool)

(declare-fun lt!206312 () Option!1184)

(assert (=> b!462118 (= c!93013 (and ((_ is Some!1183) lt!206312) (not (= (_1!2961 (v!15532 lt!206312)) (h!9892 (t!71885 tokens!465))))))))

(declare-fun e!283176 () List!4503)

(declare-fun e!283175 () List!4503)

(assert (=> b!462118 (= e!283176 e!283175)))

(declare-fun b!462119 () Bool)

(declare-fun call!32074 () List!4503)

(declare-fun lt!206310 () List!4503)

(assert (=> b!462119 (= e!283175 (++!1312 call!32074 lt!206310))))

(declare-fun bm!32069 () Bool)

(declare-fun call!32073 () List!4503)

(assert (=> bm!32069 (= call!32074 (++!1312 call!32077 (ite c!93015 lt!206310 call!32073)))))

(declare-fun b!462121 () Bool)

(assert (=> b!462121 (= e!283176 call!32074)))

(declare-fun b!462122 () Bool)

(declare-fun e!283174 () BalanceConc!3152)

(assert (=> b!462122 (= e!283174 call!32075)))

(declare-fun b!462123 () Bool)

(assert (=> b!462123 (= e!283174 (charsOf!518 separatorToken!170))))

(declare-fun bm!32070 () Bool)

(assert (=> bm!32070 (= call!32076 (charsOf!518 (h!9892 (t!71885 tokens!465))))))

(declare-fun bm!32071 () Bool)

(assert (=> bm!32071 (= call!32075 call!32076)))

(declare-fun b!462124 () Bool)

(assert (=> b!462124 (= e!283175 Nil!4493)))

(assert (=> b!462124 (= (print!486 thiss!17480 (singletonSeq!421 (h!9892 (t!71885 tokens!465)))) (printTailRec!447 thiss!17480 (singletonSeq!421 (h!9892 (t!71885 tokens!465))) 0 (BalanceConc!3153 Empty!1572)))))

(declare-fun lt!206311 () Unit!8113)

(declare-fun Unit!8127 () Unit!8113)

(assert (=> b!462124 (= lt!206311 Unit!8127)))

(declare-fun lt!206314 () Unit!8113)

(assert (=> b!462124 (= lt!206314 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 call!32073 lt!206310))))

(assert (=> b!462124 false))

(declare-fun lt!206315 () Unit!8113)

(declare-fun Unit!8128 () Unit!8113)

(assert (=> b!462124 (= lt!206315 Unit!8128)))

(declare-fun d!175743 () Bool)

(declare-fun c!93016 () Bool)

(assert (=> d!175743 (= c!93016 ((_ is Cons!4495) (t!71885 tokens!465)))))

(declare-fun e!283173 () List!4503)

(assert (=> d!175743 (= (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (t!71885 tokens!465) separatorToken!170) e!283173)))

(declare-fun b!462120 () Bool)

(assert (=> b!462120 (= e!283173 Nil!4493)))

(assert (=> b!462125 (= e!283173 e!283176)))

(declare-fun lt!206313 () Unit!8113)

(assert (=> b!462125 (= lt!206313 (forallContained!428 (t!71885 tokens!465) lambda!13656 (h!9892 (t!71885 tokens!465))))))

(assert (=> b!462125 (= lt!206310 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (t!71885 (t!71885 tokens!465)) separatorToken!170))))

(assert (=> b!462125 (= lt!206312 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))) lt!206310)))))

(assert (=> b!462125 (= c!93015 (and ((_ is Some!1183) lt!206312) (= (_1!2961 (v!15532 lt!206312)) (h!9892 (t!71885 tokens!465)))))))

(declare-fun bm!32072 () Bool)

(assert (=> bm!32072 (= call!32073 (list!2004 e!283174))))

(declare-fun c!93014 () Bool)

(assert (=> bm!32072 (= c!93014 c!93013)))

(assert (= (and d!175743 c!93016) b!462125))

(assert (= (and d!175743 (not c!93016)) b!462120))

(assert (= (and b!462125 c!93015) b!462121))

(assert (= (and b!462125 (not c!93015)) b!462118))

(assert (= (and b!462118 c!93013) b!462119))

(assert (= (and b!462118 (not c!93013)) b!462124))

(assert (= (or b!462119 b!462124) bm!32071))

(assert (= (or b!462119 b!462124) bm!32072))

(assert (= (and bm!32072 c!93014) b!462123))

(assert (= (and bm!32072 (not c!93014)) b!462122))

(assert (= (or b!462121 bm!32071) bm!32070))

(assert (= (or b!462121 b!462119) bm!32068))

(assert (= (or b!462121 b!462119) bm!32069))

(declare-fun m!731159 () Bool)

(assert (=> bm!32069 m!731159))

(declare-fun m!731161 () Bool)

(assert (=> bm!32072 m!731161))

(assert (=> b!462123 m!729937))

(declare-fun m!731163 () Bool)

(assert (=> b!462125 m!731163))

(declare-fun m!731165 () Bool)

(assert (=> b!462125 m!731165))

(assert (=> b!462125 m!731163))

(declare-fun m!731167 () Bool)

(assert (=> b!462125 m!731167))

(declare-fun m!731169 () Bool)

(assert (=> b!462125 m!731169))

(assert (=> b!462125 m!731167))

(declare-fun m!731171 () Bool)

(assert (=> b!462125 m!731171))

(assert (=> b!462125 m!731171))

(declare-fun m!731173 () Bool)

(assert (=> b!462125 m!731173))

(assert (=> bm!32070 m!731163))

(declare-fun m!731175 () Bool)

(assert (=> b!462124 m!731175))

(assert (=> b!462124 m!731175))

(declare-fun m!731177 () Bool)

(assert (=> b!462124 m!731177))

(assert (=> b!462124 m!731175))

(declare-fun m!731179 () Bool)

(assert (=> b!462124 m!731179))

(declare-fun m!731181 () Bool)

(assert (=> b!462124 m!731181))

(declare-fun m!731183 () Bool)

(assert (=> b!462119 m!731183))

(declare-fun m!731185 () Bool)

(assert (=> bm!32068 m!731185))

(assert (=> b!461298 d!175743))

(declare-fun bs!57277 () Bool)

(declare-fun d!175745 () Bool)

(assert (= bs!57277 (and d!175745 b!461290)))

(declare-fun lambda!13657 () Int)

(assert (=> bs!57277 (= lambda!13657 lambda!13617)))

(declare-fun bs!57278 () Bool)

(assert (= bs!57278 (and d!175745 b!462105)))

(assert (=> bs!57278 (not (= lambda!13657 lambda!13655))))

(declare-fun bs!57279 () Bool)

(assert (= bs!57279 (and d!175745 d!175507)))

(assert (=> bs!57279 (= lambda!13657 lambda!13634)))

(declare-fun bs!57280 () Bool)

(assert (= bs!57280 (and d!175745 b!461918)))

(assert (=> bs!57280 (not (= lambda!13657 lambda!13652))))

(declare-fun bs!57281 () Bool)

(assert (= bs!57281 (and d!175745 b!462125)))

(assert (=> bs!57281 (not (= lambda!13657 lambda!13656))))

(declare-fun bs!57282 () Bool)

(assert (= bs!57282 (and d!175745 d!175635)))

(assert (=> bs!57282 (= lambda!13657 lambda!13651)))

(declare-fun bs!57283 () Bool)

(assert (= bs!57283 (and d!175745 d!175483)))

(assert (=> bs!57283 (not (= lambda!13657 lambda!13628))))

(declare-fun bs!57284 () Bool)

(assert (= bs!57284 (and d!175745 b!461292)))

(assert (=> bs!57284 (not (= lambda!13657 lambda!13618))))

(declare-fun bs!57285 () Bool)

(declare-fun b!462130 () Bool)

(assert (= bs!57285 (and b!462130 b!461290)))

(declare-fun lambda!13658 () Int)

(assert (=> bs!57285 (not (= lambda!13658 lambda!13617))))

(declare-fun bs!57286 () Bool)

(assert (= bs!57286 (and b!462130 b!462105)))

(assert (=> bs!57286 (= lambda!13658 lambda!13655)))

(declare-fun bs!57287 () Bool)

(assert (= bs!57287 (and b!462130 d!175507)))

(assert (=> bs!57287 (not (= lambda!13658 lambda!13634))))

(declare-fun bs!57288 () Bool)

(assert (= bs!57288 (and b!462130 b!461918)))

(assert (=> bs!57288 (= lambda!13658 lambda!13652)))

(declare-fun bs!57289 () Bool)

(assert (= bs!57289 (and b!462130 b!462125)))

(assert (=> bs!57289 (= lambda!13658 lambda!13656)))

(declare-fun bs!57290 () Bool)

(assert (= bs!57290 (and b!462130 d!175483)))

(assert (=> bs!57290 (= lambda!13658 lambda!13628)))

(declare-fun bs!57291 () Bool)

(assert (= bs!57291 (and b!462130 b!461292)))

(assert (=> bs!57291 (= lambda!13658 lambda!13618)))

(declare-fun bs!57292 () Bool)

(assert (= bs!57292 (and b!462130 d!175635)))

(assert (=> bs!57292 (not (= lambda!13658 lambda!13651))))

(declare-fun bs!57293 () Bool)

(assert (= bs!57293 (and b!462130 d!175745)))

(assert (=> bs!57293 (not (= lambda!13658 lambda!13657))))

(declare-fun b!462140 () Bool)

(declare-fun e!283188 () Bool)

(assert (=> b!462140 (= e!283188 true)))

(declare-fun b!462139 () Bool)

(declare-fun e!283187 () Bool)

(assert (=> b!462139 (= e!283187 e!283188)))

(declare-fun b!462138 () Bool)

(declare-fun e!283186 () Bool)

(assert (=> b!462138 (= e!283186 e!283187)))

(assert (=> b!462130 e!283186))

(assert (= b!462139 b!462140))

(assert (= b!462138 b!462139))

(assert (= (and b!462130 ((_ is Cons!4494) rules!1920)) b!462138))

(assert (=> b!462140 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13658))))

(assert (=> b!462140 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13658))))

(assert (=> b!462130 true))

(declare-fun bm!32073 () Bool)

(declare-fun call!32082 () Token!1494)

(declare-fun call!32079 () Token!1494)

(assert (=> bm!32073 (= call!32082 call!32079)))

(declare-fun call!32078 () BalanceConc!3152)

(declare-fun bm!32074 () Bool)

(declare-fun c!93018 () Bool)

(assert (=> bm!32074 (= call!32078 (charsOf!518 (ite c!93018 separatorToken!170 call!32082)))))

(declare-fun b!462129 () Bool)

(declare-fun e!283184 () Bool)

(declare-fun lt!206318 () Option!1185)

(assert (=> b!462129 (= e!283184 (= (_1!2962 (v!15533 lt!206318)) (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)))))

(declare-fun e!283183 () BalanceConc!3152)

(declare-fun e!283185 () BalanceConc!3152)

(assert (=> b!462130 (= e!283183 e!283185)))

(declare-fun lt!206320 () List!4505)

(assert (=> b!462130 (= lt!206320 (list!2005 (seqFromList!1116 (t!71885 tokens!465))))))

(declare-fun lt!206319 () Unit!8113)

(assert (=> b!462130 (= lt!206319 (lemmaDropApply!292 lt!206320 0))))

(assert (=> b!462130 (= (head!1132 (drop!321 lt!206320 0)) (apply!1158 lt!206320 0))))

(declare-fun lt!206326 () Unit!8113)

(assert (=> b!462130 (= lt!206326 lt!206319)))

(declare-fun lt!206327 () List!4505)

(assert (=> b!462130 (= lt!206327 (list!2005 (seqFromList!1116 (t!71885 tokens!465))))))

(declare-fun lt!206328 () Unit!8113)

(assert (=> b!462130 (= lt!206328 (lemmaDropTail!284 lt!206327 0))))

(assert (=> b!462130 (= (tail!654 (drop!321 lt!206327 0)) (drop!321 lt!206327 (+ 0 1)))))

(declare-fun lt!206323 () Unit!8113)

(assert (=> b!462130 (= lt!206323 lt!206328)))

(declare-fun lt!206324 () Unit!8113)

(assert (=> b!462130 (= lt!206324 (forallContained!428 (list!2005 (seqFromList!1116 (t!71885 tokens!465))) lambda!13658 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)))))

(declare-fun lt!206317 () BalanceConc!3152)

(assert (=> b!462130 (= lt!206317 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!462130 (= lt!206318 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!206317)))))

(declare-fun res!205767 () Bool)

(assert (=> b!462130 (= res!205767 ((_ is Some!1184) lt!206318))))

(assert (=> b!462130 (=> (not res!205767) (not e!283184))))

(declare-fun c!93017 () Bool)

(assert (=> b!462130 (= c!93017 e!283184)))

(declare-fun b!462131 () Bool)

(declare-fun e!283180 () Bool)

(assert (=> b!462131 (= e!283180 (not (= (_1!2962 (v!15533 lt!206318)) call!32079)))))

(declare-fun b!462132 () Bool)

(assert (=> b!462132 (= c!93018 e!283180)))

(declare-fun res!205766 () Bool)

(assert (=> b!462132 (=> (not res!205766) (not e!283180))))

(assert (=> b!462132 (= res!205766 ((_ is Some!1184) lt!206318))))

(declare-fun e!283182 () BalanceConc!3152)

(assert (=> b!462132 (= e!283185 e!283182)))

(declare-fun call!32080 () BalanceConc!3152)

(declare-fun bm!32075 () Bool)

(declare-fun call!32081 () BalanceConc!3152)

(assert (=> bm!32075 (= call!32080 (++!1314 call!32081 (ite c!93017 lt!206317 call!32078)))))

(declare-fun b!462133 () Bool)

(assert (=> b!462133 (= e!283185 call!32080)))

(declare-fun b!462134 () Bool)

(assert (=> b!462134 (= e!283182 (++!1314 call!32080 lt!206317))))

(declare-fun b!462135 () Bool)

(declare-fun e!283181 () Bool)

(assert (=> b!462135 (= e!283181 (<= 0 (size!3672 (seqFromList!1116 (t!71885 tokens!465)))))))

(declare-fun b!462136 () Bool)

(assert (=> b!462136 (= e!283183 (BalanceConc!3153 Empty!1572))))

(declare-fun lt!206316 () BalanceConc!3152)

(assert (=> d!175745 (= (list!2004 lt!206316) (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0) separatorToken!170))))

(assert (=> d!175745 (= lt!206316 e!283183)))

(declare-fun c!93019 () Bool)

(assert (=> d!175745 (= c!93019 (>= 0 (size!3672 (seqFromList!1116 (t!71885 tokens!465)))))))

(declare-fun lt!206321 () Unit!8113)

(assert (=> d!175745 (= lt!206321 (lemmaContentSubsetPreservesForall!196 (list!2005 (seqFromList!1116 (t!71885 tokens!465))) (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0) lambda!13657))))

(assert (=> d!175745 e!283181))

(declare-fun res!205768 () Bool)

(assert (=> d!175745 (=> (not res!205768) (not e!283181))))

(assert (=> d!175745 (= res!205768 (>= 0 0))))

(assert (=> d!175745 (= (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0) lt!206316)))

(declare-fun bm!32076 () Bool)

(assert (=> bm!32076 (= call!32079 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))))

(declare-fun bm!32077 () Bool)

(assert (=> bm!32077 (= call!32081 (charsOf!518 (ite c!93017 call!32079 call!32082)))))

(declare-fun b!462137 () Bool)

(assert (=> b!462137 (= e!283182 (BalanceConc!3153 Empty!1572))))

(assert (=> b!462137 (= (print!486 thiss!17480 (singletonSeq!421 call!32082)) (printTailRec!447 thiss!17480 (singletonSeq!421 call!32082) 0 (BalanceConc!3153 Empty!1572)))))

(declare-fun lt!206325 () Unit!8113)

(declare-fun Unit!8129 () Unit!8113)

(assert (=> b!462137 (= lt!206325 Unit!8129)))

(declare-fun lt!206322 () Unit!8113)

(assert (=> b!462137 (= lt!206322 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 (list!2004 call!32078) (list!2004 lt!206317)))))

(assert (=> b!462137 false))

(declare-fun lt!206329 () Unit!8113)

(declare-fun Unit!8130 () Unit!8113)

(assert (=> b!462137 (= lt!206329 Unit!8130)))

(assert (= (and d!175745 res!205768) b!462135))

(assert (= (and d!175745 c!93019) b!462136))

(assert (= (and d!175745 (not c!93019)) b!462130))

(assert (= (and b!462130 res!205767) b!462129))

(assert (= (and b!462130 c!93017) b!462133))

(assert (= (and b!462130 (not c!93017)) b!462132))

(assert (= (and b!462132 res!205766) b!462131))

(assert (= (and b!462132 c!93018) b!462134))

(assert (= (and b!462132 (not c!93018)) b!462137))

(assert (= (or b!462134 b!462137) bm!32073))

(assert (= (or b!462134 b!462137) bm!32074))

(assert (= (or b!462133 bm!32073 b!462131) bm!32076))

(assert (= (or b!462133 b!462134) bm!32077))

(assert (= (or b!462133 b!462134) bm!32075))

(assert (=> bm!32076 m!729933))

(declare-fun m!731187 () Bool)

(assert (=> bm!32076 m!731187))

(declare-fun m!731189 () Bool)

(assert (=> bm!32075 m!731189))

(assert (=> b!462129 m!729933))

(assert (=> b!462129 m!731187))

(assert (=> d!175745 m!729933))

(declare-fun m!731191 () Bool)

(assert (=> d!175745 m!731191))

(assert (=> d!175745 m!731191))

(declare-fun m!731193 () Bool)

(assert (=> d!175745 m!731193))

(assert (=> d!175745 m!729933))

(declare-fun m!731195 () Bool)

(assert (=> d!175745 m!731195))

(assert (=> d!175745 m!729933))

(declare-fun m!731197 () Bool)

(assert (=> d!175745 m!731197))

(declare-fun m!731199 () Bool)

(assert (=> d!175745 m!731199))

(assert (=> d!175745 m!731197))

(assert (=> d!175745 m!731191))

(declare-fun m!731201 () Bool)

(assert (=> d!175745 m!731201))

(declare-fun m!731203 () Bool)

(assert (=> b!462130 m!731203))

(declare-fun m!731205 () Bool)

(assert (=> b!462130 m!731205))

(assert (=> b!462130 m!731187))

(declare-fun m!731207 () Bool)

(assert (=> b!462130 m!731207))

(declare-fun m!731209 () Bool)

(assert (=> b!462130 m!731209))

(assert (=> b!462130 m!731197))

(assert (=> b!462130 m!731187))

(declare-fun m!731211 () Bool)

(assert (=> b!462130 m!731211))

(declare-fun m!731213 () Bool)

(assert (=> b!462130 m!731213))

(declare-fun m!731215 () Bool)

(assert (=> b!462130 m!731215))

(assert (=> b!462130 m!731213))

(declare-fun m!731217 () Bool)

(assert (=> b!462130 m!731217))

(assert (=> b!462130 m!729933))

(assert (=> b!462130 m!731187))

(assert (=> b!462130 m!729933))

(declare-fun m!731219 () Bool)

(assert (=> b!462130 m!731219))

(declare-fun m!731221 () Bool)

(assert (=> b!462130 m!731221))

(declare-fun m!731223 () Bool)

(assert (=> b!462130 m!731223))

(assert (=> b!462130 m!729933))

(assert (=> b!462130 m!731197))

(assert (=> b!462130 m!731207))

(assert (=> b!462130 m!731203))

(declare-fun m!731225 () Bool)

(assert (=> b!462130 m!731225))

(assert (=> b!462130 m!731209))

(declare-fun m!731227 () Bool)

(assert (=> b!462130 m!731227))

(declare-fun m!731229 () Bool)

(assert (=> bm!32074 m!731229))

(declare-fun m!731231 () Bool)

(assert (=> b!462137 m!731231))

(assert (=> b!462137 m!731231))

(declare-fun m!731233 () Bool)

(assert (=> b!462137 m!731233))

(declare-fun m!731235 () Bool)

(assert (=> b!462137 m!731235))

(assert (=> b!462137 m!731233))

(declare-fun m!731237 () Bool)

(assert (=> b!462137 m!731237))

(assert (=> b!462137 m!731237))

(declare-fun m!731239 () Bool)

(assert (=> b!462137 m!731239))

(assert (=> b!462137 m!731237))

(declare-fun m!731241 () Bool)

(assert (=> b!462137 m!731241))

(declare-fun m!731243 () Bool)

(assert (=> bm!32077 m!731243))

(declare-fun m!731245 () Bool)

(assert (=> b!462134 m!731245))

(assert (=> b!462135 m!729933))

(assert (=> b!462135 m!731195))

(assert (=> b!461298 d!175745))

(declare-fun d!175747 () Bool)

(declare-fun lt!206332 () BalanceConc!3152)

(assert (=> d!175747 (= (list!2004 lt!206332) (originalCharacters!918 separatorToken!170))))

(assert (=> d!175747 (= lt!206332 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170)))))

(assert (=> d!175747 (= (charsOf!518 separatorToken!170) lt!206332)))

(declare-fun b_lambda!19187 () Bool)

(assert (=> (not b_lambda!19187) (not d!175747)))

(assert (=> d!175747 t!71912))

(declare-fun b_and!49585 () Bool)

(assert (= b_and!49553 (and (=> t!71912 result!50760) b_and!49585)))

(assert (=> d!175747 t!71914))

(declare-fun b_and!49587 () Bool)

(assert (= b_and!49555 (and (=> t!71914 result!50762) b_and!49587)))

(assert (=> d!175747 t!71916))

(declare-fun b_and!49589 () Bool)

(assert (= b_and!49557 (and (=> t!71916 result!50764) b_and!49589)))

(declare-fun m!731247 () Bool)

(assert (=> d!175747 m!731247))

(assert (=> d!175747 m!730615))

(assert (=> b!461298 d!175747))

(declare-fun b!462144 () Bool)

(declare-fun lt!206333 () List!4503)

(declare-fun e!283190 () Bool)

(assert (=> b!462144 (= e!283190 (or (not (= lt!205896 Nil!4493)) (= lt!206333 lt!205905)))))

(declare-fun b!462141 () Bool)

(declare-fun e!283189 () List!4503)

(assert (=> b!462141 (= e!283189 lt!205896)))

(declare-fun b!462143 () Bool)

(declare-fun res!205770 () Bool)

(assert (=> b!462143 (=> (not res!205770) (not e!283190))))

(assert (=> b!462143 (= res!205770 (= (size!3674 lt!206333) (+ (size!3674 lt!205905) (size!3674 lt!205896))))))

(declare-fun d!175749 () Bool)

(assert (=> d!175749 e!283190))

(declare-fun res!205769 () Bool)

(assert (=> d!175749 (=> (not res!205769) (not e!283190))))

(assert (=> d!175749 (= res!205769 (= (content!752 lt!206333) ((_ map or) (content!752 lt!205905) (content!752 lt!205896))))))

(assert (=> d!175749 (= lt!206333 e!283189)))

(declare-fun c!93020 () Bool)

(assert (=> d!175749 (= c!93020 ((_ is Nil!4493) lt!205905))))

(assert (=> d!175749 (= (++!1312 lt!205905 lt!205896) lt!206333)))

(declare-fun b!462142 () Bool)

(assert (=> b!462142 (= e!283189 (Cons!4493 (h!9890 lt!205905) (++!1312 (t!71883 lt!205905) lt!205896)))))

(assert (= (and d!175749 c!93020) b!462141))

(assert (= (and d!175749 (not c!93020)) b!462142))

(assert (= (and d!175749 res!205769) b!462143))

(assert (= (and b!462143 res!205770) b!462144))

(declare-fun m!731249 () Bool)

(assert (=> b!462143 m!731249))

(assert (=> b!462143 m!730071))

(declare-fun m!731251 () Bool)

(assert (=> b!462143 m!731251))

(declare-fun m!731253 () Bool)

(assert (=> d!175749 m!731253))

(assert (=> d!175749 m!730077))

(declare-fun m!731255 () Bool)

(assert (=> d!175749 m!731255))

(declare-fun m!731257 () Bool)

(assert (=> b!462142 m!731257))

(assert (=> b!461298 d!175749))

(declare-fun lt!206334 () List!4503)

(declare-fun e!283192 () Bool)

(declare-fun b!462148 () Bool)

(assert (=> b!462148 (= e!283192 (or (not (= lt!205901 Nil!4493)) (= lt!206334 (++!1312 lt!205905 lt!205896))))))

(declare-fun b!462145 () Bool)

(declare-fun e!283191 () List!4503)

(assert (=> b!462145 (= e!283191 lt!205901)))

(declare-fun b!462147 () Bool)

(declare-fun res!205772 () Bool)

(assert (=> b!462147 (=> (not res!205772) (not e!283192))))

(assert (=> b!462147 (= res!205772 (= (size!3674 lt!206334) (+ (size!3674 (++!1312 lt!205905 lt!205896)) (size!3674 lt!205901))))))

(declare-fun d!175751 () Bool)

(assert (=> d!175751 e!283192))

(declare-fun res!205771 () Bool)

(assert (=> d!175751 (=> (not res!205771) (not e!283192))))

(assert (=> d!175751 (= res!205771 (= (content!752 lt!206334) ((_ map or) (content!752 (++!1312 lt!205905 lt!205896)) (content!752 lt!205901))))))

(assert (=> d!175751 (= lt!206334 e!283191)))

(declare-fun c!93021 () Bool)

(assert (=> d!175751 (= c!93021 ((_ is Nil!4493) (++!1312 lt!205905 lt!205896)))))

(assert (=> d!175751 (= (++!1312 (++!1312 lt!205905 lt!205896) lt!205901) lt!206334)))

(declare-fun b!462146 () Bool)

(assert (=> b!462146 (= e!283191 (Cons!4493 (h!9890 (++!1312 lt!205905 lt!205896)) (++!1312 (t!71883 (++!1312 lt!205905 lt!205896)) lt!205901)))))

(assert (= (and d!175751 c!93021) b!462145))

(assert (= (and d!175751 (not c!93021)) b!462146))

(assert (= (and d!175751 res!205771) b!462147))

(assert (= (and b!462147 res!205772) b!462148))

(declare-fun m!731259 () Bool)

(assert (=> b!462147 m!731259))

(assert (=> b!462147 m!729955))

(declare-fun m!731261 () Bool)

(assert (=> b!462147 m!731261))

(assert (=> b!462147 m!730235))

(declare-fun m!731263 () Bool)

(assert (=> d!175751 m!731263))

(assert (=> d!175751 m!729955))

(declare-fun m!731265 () Bool)

(assert (=> d!175751 m!731265))

(assert (=> d!175751 m!730239))

(declare-fun m!731267 () Bool)

(assert (=> b!462146 m!731267))

(assert (=> b!461298 d!175751))

(declare-fun d!175753 () Bool)

(assert (=> d!175753 (= (list!2004 (charsOf!518 (h!9892 tokens!465))) (list!2009 (c!92854 (charsOf!518 (h!9892 tokens!465)))))))

(declare-fun bs!57294 () Bool)

(assert (= bs!57294 d!175753))

(declare-fun m!731269 () Bool)

(assert (=> bs!57294 m!731269))

(assert (=> b!461298 d!175753))

(declare-fun b!462152 () Bool)

(declare-fun lt!206335 () List!4503)

(declare-fun e!283194 () Bool)

(assert (=> b!462152 (= e!283194 (or (not (= lt!205901 Nil!4493)) (= lt!206335 lt!205896)))))

(declare-fun b!462149 () Bool)

(declare-fun e!283193 () List!4503)

(assert (=> b!462149 (= e!283193 lt!205901)))

(declare-fun b!462151 () Bool)

(declare-fun res!205774 () Bool)

(assert (=> b!462151 (=> (not res!205774) (not e!283194))))

(assert (=> b!462151 (= res!205774 (= (size!3674 lt!206335) (+ (size!3674 lt!205896) (size!3674 lt!205901))))))

(declare-fun d!175755 () Bool)

(assert (=> d!175755 e!283194))

(declare-fun res!205773 () Bool)

(assert (=> d!175755 (=> (not res!205773) (not e!283194))))

(assert (=> d!175755 (= res!205773 (= (content!752 lt!206335) ((_ map or) (content!752 lt!205896) (content!752 lt!205901))))))

(assert (=> d!175755 (= lt!206335 e!283193)))

(declare-fun c!93022 () Bool)

(assert (=> d!175755 (= c!93022 ((_ is Nil!4493) lt!205896))))

(assert (=> d!175755 (= (++!1312 lt!205896 lt!205901) lt!206335)))

(declare-fun b!462150 () Bool)

(assert (=> b!462150 (= e!283193 (Cons!4493 (h!9890 lt!205896) (++!1312 (t!71883 lt!205896) lt!205901)))))

(assert (= (and d!175755 c!93022) b!462149))

(assert (= (and d!175755 (not c!93022)) b!462150))

(assert (= (and d!175755 res!205773) b!462151))

(assert (= (and b!462151 res!205774) b!462152))

(declare-fun m!731271 () Bool)

(assert (=> b!462151 m!731271))

(assert (=> b!462151 m!731251))

(assert (=> b!462151 m!730235))

(declare-fun m!731273 () Bool)

(assert (=> d!175755 m!731273))

(assert (=> d!175755 m!731255))

(assert (=> d!175755 m!730239))

(declare-fun m!731275 () Bool)

(assert (=> b!462150 m!731275))

(assert (=> b!461298 d!175755))

(declare-fun d!175757 () Bool)

(declare-fun lt!206336 () BalanceConc!3152)

(assert (=> d!175757 (= (list!2004 lt!206336) (originalCharacters!918 (h!9892 tokens!465)))))

(assert (=> d!175757 (= lt!206336 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465))))))

(assert (=> d!175757 (= (charsOf!518 (h!9892 tokens!465)) lt!206336)))

(declare-fun b_lambda!19189 () Bool)

(assert (=> (not b_lambda!19189) (not d!175757)))

(assert (=> d!175757 t!71902))

(declare-fun b_and!49591 () Bool)

(assert (= b_and!49585 (and (=> t!71902 result!50752) b_and!49591)))

(assert (=> d!175757 t!71904))

(declare-fun b_and!49593 () Bool)

(assert (= b_and!49587 (and (=> t!71904 result!50756) b_and!49593)))

(assert (=> d!175757 t!71906))

(declare-fun b_and!49595 () Bool)

(assert (= b_and!49589 (and (=> t!71906 result!50758) b_and!49595)))

(declare-fun m!731277 () Bool)

(assert (=> d!175757 m!731277))

(assert (=> d!175757 m!730477))

(assert (=> b!461298 d!175757))

(declare-fun d!175759 () Bool)

(assert (=> d!175759 (= (isEmpty!3482 rules!1920) ((_ is Nil!4494) rules!1920))))

(assert (=> b!461277 d!175759))

(declare-fun b!462157 () Bool)

(declare-fun e!283197 () Bool)

(declare-fun tp_is_empty!1995 () Bool)

(declare-fun tp!127736 () Bool)

(assert (=> b!462157 (= e!283197 (and tp_is_empty!1995 tp!127736))))

(assert (=> b!461287 (= tp!127660 e!283197)))

(assert (= (and b!461287 ((_ is Cons!4493) (originalCharacters!918 (h!9892 tokens!465)))) b!462157))

(declare-fun b!462168 () Bool)

(declare-fun e!283200 () Bool)

(assert (=> b!462168 (= e!283200 tp_is_empty!1995)))

(declare-fun b!462171 () Bool)

(declare-fun tp!127749 () Bool)

(declare-fun tp!127747 () Bool)

(assert (=> b!462171 (= e!283200 (and tp!127749 tp!127747))))

(declare-fun b!462169 () Bool)

(declare-fun tp!127751 () Bool)

(declare-fun tp!127750 () Bool)

(assert (=> b!462169 (= e!283200 (and tp!127751 tp!127750))))

(declare-fun b!462170 () Bool)

(declare-fun tp!127748 () Bool)

(assert (=> b!462170 (= e!283200 tp!127748)))

(assert (=> b!461304 (= tp!127657 e!283200)))

(assert (= (and b!461304 ((_ is ElementMatch!1099) (regex!875 (rule!1570 (h!9892 tokens!465))))) b!462168))

(assert (= (and b!461304 ((_ is Concat!1997) (regex!875 (rule!1570 (h!9892 tokens!465))))) b!462169))

(assert (= (and b!461304 ((_ is Star!1099) (regex!875 (rule!1570 (h!9892 tokens!465))))) b!462170))

(assert (= (and b!461304 ((_ is Union!1099) (regex!875 (rule!1570 (h!9892 tokens!465))))) b!462171))

(declare-fun b!462172 () Bool)

(declare-fun e!283201 () Bool)

(assert (=> b!462172 (= e!283201 tp_is_empty!1995)))

(declare-fun b!462175 () Bool)

(declare-fun tp!127754 () Bool)

(declare-fun tp!127752 () Bool)

(assert (=> b!462175 (= e!283201 (and tp!127754 tp!127752))))

(declare-fun b!462173 () Bool)

(declare-fun tp!127756 () Bool)

(declare-fun tp!127755 () Bool)

(assert (=> b!462173 (= e!283201 (and tp!127756 tp!127755))))

(declare-fun b!462174 () Bool)

(declare-fun tp!127753 () Bool)

(assert (=> b!462174 (= e!283201 tp!127753)))

(assert (=> b!461302 (= tp!127663 e!283201)))

(assert (= (and b!461302 ((_ is ElementMatch!1099) (regex!875 (h!9891 rules!1920)))) b!462172))

(assert (= (and b!461302 ((_ is Concat!1997) (regex!875 (h!9891 rules!1920)))) b!462173))

(assert (= (and b!461302 ((_ is Star!1099) (regex!875 (h!9891 rules!1920)))) b!462174))

(assert (= (and b!461302 ((_ is Union!1099) (regex!875 (h!9891 rules!1920)))) b!462175))

(declare-fun b!462178 () Bool)

(declare-fun e!283204 () Bool)

(assert (=> b!462178 (= e!283204 true)))

(declare-fun b!462177 () Bool)

(declare-fun e!283203 () Bool)

(assert (=> b!462177 (= e!283203 e!283204)))

(declare-fun b!462176 () Bool)

(declare-fun e!283202 () Bool)

(assert (=> b!462176 (= e!283202 e!283203)))

(assert (=> b!461320 e!283202))

(assert (= b!462177 b!462178))

(assert (= b!462176 b!462177))

(assert (= (and b!461320 ((_ is Cons!4494) (t!71884 rules!1920))) b!462176))

(assert (=> b!462178 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 (t!71884 rules!1920))))) (dynLambda!2745 order!4011 lambda!13618))))

(assert (=> b!462178 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920))))) (dynLambda!2745 order!4011 lambda!13618))))

(declare-fun b!462189 () Bool)

(declare-fun b_free!12965 () Bool)

(declare-fun b_next!12965 () Bool)

(assert (=> b!462189 (= b_free!12965 (not b_next!12965))))

(declare-fun tp!127768 () Bool)

(declare-fun b_and!49597 () Bool)

(assert (=> b!462189 (= tp!127768 b_and!49597)))

(declare-fun b_free!12967 () Bool)

(declare-fun b_next!12967 () Bool)

(assert (=> b!462189 (= b_free!12967 (not b_next!12967))))

(declare-fun t!71944 () Bool)

(declare-fun tb!46113 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465))))) t!71944) tb!46113))

(declare-fun result!50794 () Bool)

(assert (= result!50794 result!50752))

(assert (=> b!461671 t!71944))

(declare-fun tb!46115 () Bool)

(declare-fun t!71946 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170)))) t!71946) tb!46115))

(declare-fun result!50796 () Bool)

(assert (= result!50796 result!50760))

(assert (=> b!461790 t!71946))

(assert (=> d!175747 t!71946))

(assert (=> d!175757 t!71944))

(declare-fun tp!127765 () Bool)

(declare-fun b_and!49599 () Bool)

(assert (=> b!462189 (= tp!127765 (and (=> t!71944 result!50794) (=> t!71946 result!50796) b_and!49599))))

(declare-fun e!283215 () Bool)

(assert (=> b!462189 (= e!283215 (and tp!127768 tp!127765))))

(declare-fun tp!127767 () Bool)

(declare-fun b!462188 () Bool)

(declare-fun e!283213 () Bool)

(assert (=> b!462188 (= e!283213 (and tp!127767 (inv!5570 (tag!1135 (h!9891 (t!71884 rules!1920)))) (inv!5574 (transformation!875 (h!9891 (t!71884 rules!1920)))) e!283215))))

(declare-fun b!462187 () Bool)

(declare-fun e!283214 () Bool)

(declare-fun tp!127766 () Bool)

(assert (=> b!462187 (= e!283214 (and e!283213 tp!127766))))

(assert (=> b!461291 (= tp!127667 e!283214)))

(assert (= b!462188 b!462189))

(assert (= b!462187 b!462188))

(assert (= (and b!461291 ((_ is Cons!4494) (t!71884 rules!1920))) b!462187))

(declare-fun m!731279 () Bool)

(assert (=> b!462188 m!731279))

(declare-fun m!731281 () Bool)

(assert (=> b!462188 m!731281))

(declare-fun b!462190 () Bool)

(declare-fun e!283217 () Bool)

(assert (=> b!462190 (= e!283217 tp_is_empty!1995)))

(declare-fun b!462193 () Bool)

(declare-fun tp!127771 () Bool)

(declare-fun tp!127769 () Bool)

(assert (=> b!462193 (= e!283217 (and tp!127771 tp!127769))))

(declare-fun b!462191 () Bool)

(declare-fun tp!127773 () Bool)

(declare-fun tp!127772 () Bool)

(assert (=> b!462191 (= e!283217 (and tp!127773 tp!127772))))

(declare-fun b!462192 () Bool)

(declare-fun tp!127770 () Bool)

(assert (=> b!462192 (= e!283217 tp!127770)))

(assert (=> b!461301 (= tp!127659 e!283217)))

(assert (= (and b!461301 ((_ is ElementMatch!1099) (regex!875 (rule!1570 separatorToken!170)))) b!462190))

(assert (= (and b!461301 ((_ is Concat!1997) (regex!875 (rule!1570 separatorToken!170)))) b!462191))

(assert (= (and b!461301 ((_ is Star!1099) (regex!875 (rule!1570 separatorToken!170)))) b!462192))

(assert (= (and b!461301 ((_ is Union!1099) (regex!875 (rule!1570 separatorToken!170)))) b!462193))

(declare-fun b!462194 () Bool)

(declare-fun e!283218 () Bool)

(declare-fun tp!127774 () Bool)

(assert (=> b!462194 (= e!283218 (and tp_is_empty!1995 tp!127774))))

(assert (=> b!461278 (= tp!127669 e!283218)))

(assert (= (and b!461278 ((_ is Cons!4493) (originalCharacters!918 separatorToken!170))) b!462194))

(declare-fun b!462208 () Bool)

(declare-fun b_free!12969 () Bool)

(declare-fun b_next!12969 () Bool)

(assert (=> b!462208 (= b_free!12969 (not b_next!12969))))

(declare-fun tp!127787 () Bool)

(declare-fun b_and!49601 () Bool)

(assert (=> b!462208 (= tp!127787 b_and!49601)))

(declare-fun b_free!12971 () Bool)

(declare-fun b_next!12971 () Bool)

(assert (=> b!462208 (= b_free!12971 (not b_next!12971))))

(declare-fun t!71948 () Bool)

(declare-fun tb!46117 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465))))) t!71948) tb!46117))

(declare-fun result!50800 () Bool)

(assert (= result!50800 result!50752))

(assert (=> b!461671 t!71948))

(declare-fun t!71950 () Bool)

(declare-fun tb!46119 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170)))) t!71950) tb!46119))

(declare-fun result!50802 () Bool)

(assert (= result!50802 result!50760))

(assert (=> b!461790 t!71950))

(assert (=> d!175747 t!71950))

(assert (=> d!175757 t!71948))

(declare-fun b_and!49603 () Bool)

(declare-fun tp!127789 () Bool)

(assert (=> b!462208 (= tp!127789 (and (=> t!71948 result!50800) (=> t!71950 result!50802) b_and!49603))))

(declare-fun e!283231 () Bool)

(assert (=> b!461289 (= tp!127666 e!283231)))

(declare-fun tp!127786 () Bool)

(declare-fun e!283232 () Bool)

(declare-fun e!283234 () Bool)

(declare-fun b!462207 () Bool)

(assert (=> b!462207 (= e!283232 (and tp!127786 (inv!5570 (tag!1135 (rule!1570 (h!9892 (t!71885 tokens!465))))) (inv!5574 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) e!283234))))

(declare-fun e!283233 () Bool)

(declare-fun tp!127788 () Bool)

(declare-fun b!462205 () Bool)

(assert (=> b!462205 (= e!283231 (and (inv!5573 (h!9892 (t!71885 tokens!465))) e!283233 tp!127788))))

(declare-fun tp!127785 () Bool)

(declare-fun b!462206 () Bool)

(assert (=> b!462206 (= e!283233 (and (inv!21 (value!29253 (h!9892 (t!71885 tokens!465)))) e!283232 tp!127785))))

(assert (=> b!462208 (= e!283234 (and tp!127787 tp!127789))))

(assert (= b!462207 b!462208))

(assert (= b!462206 b!462207))

(assert (= b!462205 b!462206))

(assert (= (and b!461289 ((_ is Cons!4495) (t!71885 tokens!465))) b!462205))

(declare-fun m!731283 () Bool)

(assert (=> b!462207 m!731283))

(declare-fun m!731285 () Bool)

(assert (=> b!462207 m!731285))

(declare-fun m!731287 () Bool)

(assert (=> b!462205 m!731287))

(declare-fun m!731289 () Bool)

(assert (=> b!462206 m!731289))

(declare-fun b_lambda!19191 () Bool)

(assert (= b_lambda!19159 (or (and b!461281 b_free!12955) (and b!461297 b_free!12947 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))))) (and b!462208 b_free!12971 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))))) (and b!461294 b_free!12951 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))))) (and b!462189 b_free!12967 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))))) b_lambda!19191)))

(declare-fun b_lambda!19193 () Bool)

(assert (= b_lambda!19187 (or (and b!461281 b_free!12955) (and b!461297 b_free!12947 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))))) (and b!462208 b_free!12971 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))))) (and b!461294 b_free!12951 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))))) (and b!462189 b_free!12967 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))))) b_lambda!19193)))

(declare-fun b_lambda!19195 () Bool)

(assert (= b_lambda!19153 (or b!461290 b_lambda!19195)))

(declare-fun bs!57295 () Bool)

(declare-fun d!175761 () Bool)

(assert (= bs!57295 (and d!175761 b!461290)))

(assert (=> bs!57295 (= (dynLambda!2749 lambda!13617 (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))))) (not (isSeparator!875 (rule!1570 (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))))))))))

(assert (=> b!461651 d!175761))

(declare-fun b_lambda!19197 () Bool)

(assert (= b_lambda!19145 (or b!461290 b_lambda!19197)))

(declare-fun bs!57296 () Bool)

(declare-fun d!175763 () Bool)

(assert (= bs!57296 (and d!175763 b!461290)))

(assert (=> bs!57296 (= (dynLambda!2749 lambda!13617 (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))))) (not (isSeparator!875 (rule!1570 (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))))))))))

(assert (=> b!461451 d!175763))

(declare-fun b_lambda!19199 () Bool)

(assert (= b_lambda!19149 (or b!461292 b_lambda!19199)))

(declare-fun bs!57297 () Bool)

(declare-fun d!175765 () Bool)

(assert (= bs!57297 (and d!175765 b!461292)))

(assert (=> bs!57297 (= (dynLambda!2749 lambda!13618 (h!9892 tokens!465)) (rulesProduceIndividualToken!510 thiss!17480 rules!1920 (h!9892 tokens!465)))))

(assert (=> bs!57297 m!729931))

(assert (=> d!175567 d!175765))

(declare-fun b_lambda!19201 () Bool)

(assert (= b_lambda!19157 (or (and b!461281 b_free!12955 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))))) (and b!461294 b_free!12951 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))))) (and b!462189 b_free!12967 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))))) (and b!461297 b_free!12947) (and b!462208 b_free!12971 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))))) b_lambda!19201)))

(declare-fun b_lambda!19203 () Bool)

(assert (= b_lambda!19151 (or b!461290 b_lambda!19203)))

(declare-fun bs!57298 () Bool)

(declare-fun d!175767 () Bool)

(assert (= bs!57298 (and d!175767 b!461290)))

(assert (=> bs!57298 (= (dynLambda!2749 lambda!13617 (h!9892 tokens!465)) (not (isSeparator!875 (rule!1570 (h!9892 tokens!465)))))))

(assert (=> b!461643 d!175767))

(declare-fun b_lambda!19205 () Bool)

(assert (= b_lambda!19189 (or (and b!461281 b_free!12955 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))))) (and b!461294 b_free!12951 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))))) (and b!462189 b_free!12967 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))))) (and b!461297 b_free!12947) (and b!462208 b_free!12971 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))))) b_lambda!19205)))

(check-sat (not d!175591) (not b!462206) (not b!461716) (not bm!32046) (not b_lambda!19203) (not b_next!12967) (not b!461779) (not b!461527) (not bm!32065) (not b!461648) (not b!462125) (not b!461431) (not b!461543) (not d!175547) (not bm!32067) (not b!462207) (not b!462150) (not b!462135) (not b!462193) (not d!175515) (not d!175631) (not b!462138) (not d!175629) (not b!461385) (not b!461625) (not b!461530) b_and!49595 (not b_lambda!19195) (not b!461521) b_and!49537 (not bm!32045) (not b!461370) (not d!175579) (not b!462099) (not b!461794) (not bm!31972) (not b!462105) (not b!461384) (not bm!32074) (not d!175535) (not b_lambda!19201) (not b!461570) (not b!461672) (not b!462176) (not b!461382) (not b_next!12951) (not d!175615) (not b!462175) (not b!461574) (not d!175747) (not tb!46093) (not d!175735) (not bm!32048) (not b_next!12955) (not b!461520) (not b!461531) (not b!461524) (not b_lambda!19205) (not b!462188) (not b!461718) (not b!461725) (not d!175749) (not d!175737) (not b!462137) (not d!175527) (not d!175623) (not b!462104) (not d!175605) (not d!175635) (not b_lambda!19193) (not d!175755) (not b!461652) (not d!175565) (not b!461624) (not d!175557) (not d!175751) (not d!175553) b_and!49533 (not bm!32047) (not b!461547) (not b!461793) (not b!461623) (not d!175555) (not b!461577) (not b!461368) (not b!461576) (not bm!32069) (not b!461452) (not b!461796) (not b!461434) (not b_next!12971) (not b!462112) (not b!462151) (not b!461686) (not b!461621) (not d!175597) (not b!461782) (not b!462124) (not b!461917) (not b!462106) (not b!462142) (not bm!32063) (not d!175461) (not b!462126) (not bm!31981) (not b!461736) (not b!462109) (not b!461720) (not b!461544) (not b!461791) (not b!461542) (not b!461655) (not b!461571) (not b!462123) (not b_next!12947) (not d!175539) (not b!462103) (not d!175575) (not d!175463) (not bm!31992) (not b!461371) (not d!175583) b_and!49597 (not d!175499) (not b_next!12965) (not d!175621) (not b!461721) (not b!461682) (not d!175577) (not d!175613) (not b_lambda!19199) (not d!175507) (not d!175607) (not d!175603) (not b!462187) (not b!462115) (not b!461490) b_and!49593 (not b!462173) (not b!461528) (not b!462143) (not bm!31989) (not d!175519) b_and!49591 (not b_lambda!19197) b_and!49599 (not b!461795) (not b!461787) (not b!461925) b_and!49603 (not b!461415) (not bm!31978) (not b!462170) tp_is_empty!1995 (not b!462146) (not bm!32075) (not b!461367) (not d!175739) (not b!461525) (not b_next!12945) (not d!175745) (not d!175505) (not b!461926) (not bm!32077) (not d!175633) (not b!461777) (not b!461573) (not d!175601) (not b!462194) (not b!461569) (not d!175581) (not b!462111) (not b!461416) (not b!461683) (not d!175733) (not b!462191) (not d!175611) (not b!461578) (not d!175521) (not d!175757) (not b!461792) (not b!461789) (not b!461918) (not bm!32072) (not b_next!12953) (not d!175753) (not b!462171) (not b!461526) b_and!49529 (not b!461523) (not bm!32070) (not b!461790) (not b!461654) (not b!462192) (not b!461575) (not b!462119) b_and!49601 (not b!462130) (not b_lambda!19191) (not b!461677) (not b!462147) (not bm!32068) (not d!175497) (not d!175477) (not b!462174) (not b!461546) (not b!461430) (not b!461638) (not b_next!12949) (not b!461403) (not b!461402) (not b!461491) (not b!461548) (not tb!46087) (not b!461719) (not d!175483) (not b!461923) (not b!461671) (not b!461735) (not d!175567) (not bm!32076) (not b!462134) (not b!461627) (not bm!31987) (not b!461658) (not b!462129) (not b!461644) (not b!461620) (not b!461922) (not b!462169) (not b!461448) (not b!462157) (not b!461433) (not b!462205) (not b!462116) (not b!461657) (not bm!32064) (not b_next!12969) (not d!175741) (not d!175625) (not d!175551) (not b!461622) (not b!461737) (not bs!57297))
(check-sat (not b_next!12967) b_and!49595 b_and!49537 b_and!49533 (not b_next!12971) (not b_next!12947) b_and!49597 (not b_next!12965) b_and!49593 b_and!49591 (not b_next!12945) (not b_next!12953) b_and!49529 b_and!49601 (not b_next!12949) (not b_next!12969) (not b_next!12951) (not b_next!12955) b_and!49599 b_and!49603)
(get-model)

(declare-fun bs!57365 () Bool)

(declare-fun b!462542 () Bool)

(assert (= bs!57365 (and b!462542 b!461290)))

(declare-fun lambda!13668 () Int)

(assert (=> bs!57365 (not (= lambda!13668 lambda!13617))))

(declare-fun bs!57366 () Bool)

(assert (= bs!57366 (and b!462542 b!462105)))

(assert (=> bs!57366 (= lambda!13668 lambda!13655)))

(declare-fun bs!57367 () Bool)

(assert (= bs!57367 (and b!462542 b!462130)))

(assert (=> bs!57367 (= lambda!13668 lambda!13658)))

(declare-fun bs!57368 () Bool)

(assert (= bs!57368 (and b!462542 d!175507)))

(assert (=> bs!57368 (not (= lambda!13668 lambda!13634))))

(declare-fun bs!57369 () Bool)

(assert (= bs!57369 (and b!462542 b!461918)))

(assert (=> bs!57369 (= lambda!13668 lambda!13652)))

(declare-fun bs!57370 () Bool)

(assert (= bs!57370 (and b!462542 b!462125)))

(assert (=> bs!57370 (= lambda!13668 lambda!13656)))

(declare-fun bs!57371 () Bool)

(assert (= bs!57371 (and b!462542 d!175483)))

(assert (=> bs!57371 (= lambda!13668 lambda!13628)))

(declare-fun bs!57372 () Bool)

(assert (= bs!57372 (and b!462542 b!461292)))

(assert (=> bs!57372 (= lambda!13668 lambda!13618)))

(declare-fun bs!57373 () Bool)

(assert (= bs!57373 (and b!462542 d!175635)))

(assert (=> bs!57373 (not (= lambda!13668 lambda!13651))))

(declare-fun bs!57374 () Bool)

(assert (= bs!57374 (and b!462542 d!175745)))

(assert (=> bs!57374 (not (= lambda!13668 lambda!13657))))

(declare-fun b!462545 () Bool)

(declare-fun e!283426 () Bool)

(assert (=> b!462545 (= e!283426 true)))

(declare-fun b!462544 () Bool)

(declare-fun e!283425 () Bool)

(assert (=> b!462544 (= e!283425 e!283426)))

(declare-fun b!462543 () Bool)

(declare-fun e!283424 () Bool)

(assert (=> b!462543 (= e!283424 e!283425)))

(assert (=> b!462542 e!283424))

(assert (= b!462544 b!462545))

(assert (= b!462543 b!462544))

(assert (= (and b!462542 ((_ is Cons!4494) rules!1920)) b!462543))

(assert (=> b!462545 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13668))))

(assert (=> b!462545 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13668))))

(assert (=> b!462542 true))

(declare-fun c!93121 () Bool)

(declare-fun call!32108 () List!4503)

(declare-fun bm!32099 () Bool)

(declare-fun call!32107 () BalanceConc!3152)

(declare-fun call!32106 () BalanceConc!3152)

(assert (=> bm!32099 (= call!32108 (list!2004 (ite c!93121 call!32107 call!32106)))))

(declare-fun b!462535 () Bool)

(declare-fun c!93119 () Bool)

(declare-fun lt!206578 () Option!1184)

(assert (=> b!462535 (= c!93119 (and ((_ is Some!1183) lt!206578) (not (= (_1!2961 (v!15532 lt!206578)) (h!9892 (dropList!252 lt!205904 0))))))))

(declare-fun e!283423 () List!4503)

(declare-fun e!283422 () List!4503)

(assert (=> b!462535 (= e!283423 e!283422)))

(declare-fun b!462536 () Bool)

(declare-fun call!32105 () List!4503)

(declare-fun lt!206576 () List!4503)

(assert (=> b!462536 (= e!283422 (++!1312 call!32105 lt!206576))))

(declare-fun call!32104 () List!4503)

(declare-fun bm!32100 () Bool)

(assert (=> bm!32100 (= call!32105 (++!1312 call!32108 (ite c!93121 lt!206576 call!32104)))))

(declare-fun b!462538 () Bool)

(assert (=> b!462538 (= e!283423 call!32105)))

(declare-fun b!462539 () Bool)

(declare-fun e!283421 () BalanceConc!3152)

(assert (=> b!462539 (= e!283421 call!32106)))

(declare-fun b!462540 () Bool)

(assert (=> b!462540 (= e!283421 (charsOf!518 separatorToken!170))))

(declare-fun bm!32101 () Bool)

(assert (=> bm!32101 (= call!32107 (charsOf!518 (h!9892 (dropList!252 lt!205904 0))))))

(declare-fun bm!32102 () Bool)

(assert (=> bm!32102 (= call!32106 call!32107)))

(declare-fun b!462541 () Bool)

(assert (=> b!462541 (= e!283422 Nil!4493)))

(assert (=> b!462541 (= (print!486 thiss!17480 (singletonSeq!421 (h!9892 (dropList!252 lt!205904 0)))) (printTailRec!447 thiss!17480 (singletonSeq!421 (h!9892 (dropList!252 lt!205904 0))) 0 (BalanceConc!3153 Empty!1572)))))

(declare-fun lt!206577 () Unit!8113)

(declare-fun Unit!8135 () Unit!8113)

(assert (=> b!462541 (= lt!206577 Unit!8135)))

(declare-fun lt!206580 () Unit!8113)

(assert (=> b!462541 (= lt!206580 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 call!32104 lt!206576))))

(assert (=> b!462541 false))

(declare-fun lt!206581 () Unit!8113)

(declare-fun Unit!8136 () Unit!8113)

(assert (=> b!462541 (= lt!206581 Unit!8136)))

(declare-fun d!175973 () Bool)

(declare-fun c!93122 () Bool)

(assert (=> d!175973 (= c!93122 ((_ is Cons!4495) (dropList!252 lt!205904 0)))))

(declare-fun e!283420 () List!4503)

(assert (=> d!175973 (= (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (dropList!252 lt!205904 0) separatorToken!170) e!283420)))

(declare-fun b!462537 () Bool)

(assert (=> b!462537 (= e!283420 Nil!4493)))

(assert (=> b!462542 (= e!283420 e!283423)))

(declare-fun lt!206579 () Unit!8113)

(assert (=> b!462542 (= lt!206579 (forallContained!428 (dropList!252 lt!205904 0) lambda!13668 (h!9892 (dropList!252 lt!205904 0))))))

(assert (=> b!462542 (= lt!206576 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (t!71885 (dropList!252 lt!205904 0)) separatorToken!170))))

(assert (=> b!462542 (= lt!206578 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 (list!2004 (charsOf!518 (h!9892 (dropList!252 lt!205904 0)))) lt!206576)))))

(assert (=> b!462542 (= c!93121 (and ((_ is Some!1183) lt!206578) (= (_1!2961 (v!15532 lt!206578)) (h!9892 (dropList!252 lt!205904 0)))))))

(declare-fun bm!32103 () Bool)

(assert (=> bm!32103 (= call!32104 (list!2004 e!283421))))

(declare-fun c!93120 () Bool)

(assert (=> bm!32103 (= c!93120 c!93119)))

(assert (= (and d!175973 c!93122) b!462542))

(assert (= (and d!175973 (not c!93122)) b!462537))

(assert (= (and b!462542 c!93121) b!462538))

(assert (= (and b!462542 (not c!93121)) b!462535))

(assert (= (and b!462535 c!93119) b!462536))

(assert (= (and b!462535 (not c!93119)) b!462541))

(assert (= (or b!462536 b!462541) bm!32102))

(assert (= (or b!462536 b!462541) bm!32103))

(assert (= (and bm!32103 c!93120) b!462540))

(assert (= (and bm!32103 (not c!93120)) b!462539))

(assert (= (or b!462538 bm!32102) bm!32101))

(assert (= (or b!462538 b!462536) bm!32099))

(assert (= (or b!462538 b!462536) bm!32100))

(declare-fun m!731993 () Bool)

(assert (=> bm!32100 m!731993))

(declare-fun m!731995 () Bool)

(assert (=> bm!32103 m!731995))

(assert (=> b!462540 m!729937))

(declare-fun m!731997 () Bool)

(assert (=> b!462542 m!731997))

(assert (=> b!462542 m!730889))

(declare-fun m!731999 () Bool)

(assert (=> b!462542 m!731999))

(assert (=> b!462542 m!731997))

(declare-fun m!732001 () Bool)

(assert (=> b!462542 m!732001))

(declare-fun m!732003 () Bool)

(assert (=> b!462542 m!732003))

(assert (=> b!462542 m!732001))

(declare-fun m!732005 () Bool)

(assert (=> b!462542 m!732005))

(assert (=> b!462542 m!732005))

(declare-fun m!732007 () Bool)

(assert (=> b!462542 m!732007))

(assert (=> bm!32101 m!731997))

(declare-fun m!732009 () Bool)

(assert (=> b!462541 m!732009))

(assert (=> b!462541 m!732009))

(declare-fun m!732011 () Bool)

(assert (=> b!462541 m!732011))

(assert (=> b!462541 m!732009))

(declare-fun m!732013 () Bool)

(assert (=> b!462541 m!732013))

(declare-fun m!732015 () Bool)

(assert (=> b!462541 m!732015))

(declare-fun m!732017 () Bool)

(assert (=> b!462536 m!732017))

(declare-fun m!732019 () Bool)

(assert (=> bm!32099 m!732019))

(assert (=> d!175635 d!175973))

(declare-fun d!175975 () Bool)

(declare-fun lt!206584 () Int)

(assert (=> d!175975 (= lt!206584 (size!3675 (list!2005 lt!205904)))))

(declare-fun size!3677 (Conc!1573) Int)

(assert (=> d!175975 (= lt!206584 (size!3677 (c!92856 lt!205904)))))

(assert (=> d!175975 (= (size!3672 lt!205904) lt!206584)))

(declare-fun bs!57375 () Bool)

(assert (= bs!57375 d!175975))

(assert (=> bs!57375 m!730059))

(assert (=> bs!57375 m!730059))

(declare-fun m!732021 () Bool)

(assert (=> bs!57375 m!732021))

(declare-fun m!732023 () Bool)

(assert (=> bs!57375 m!732023))

(assert (=> d!175635 d!175975))

(declare-fun d!175977 () Bool)

(assert (=> d!175977 (= (dropList!252 lt!205904 0) (drop!321 (list!2007 (c!92856 lt!205904)) 0))))

(declare-fun bs!57376 () Bool)

(assert (= bs!57376 d!175977))

(declare-fun m!732025 () Bool)

(assert (=> bs!57376 m!732025))

(assert (=> bs!57376 m!732025))

(declare-fun m!732027 () Bool)

(assert (=> bs!57376 m!732027))

(assert (=> d!175635 d!175977))

(declare-fun d!175979 () Bool)

(assert (=> d!175979 (forall!1308 (dropList!252 lt!205904 0) lambda!13651)))

(declare-fun lt!206587 () Unit!8113)

(declare-fun choose!3479 (List!4505 List!4505 Int) Unit!8113)

(assert (=> d!175979 (= lt!206587 (choose!3479 (list!2005 lt!205904) (dropList!252 lt!205904 0) lambda!13651))))

(assert (=> d!175979 (forall!1308 (list!2005 lt!205904) lambda!13651)))

(assert (=> d!175979 (= (lemmaContentSubsetPreservesForall!196 (list!2005 lt!205904) (dropList!252 lt!205904 0) lambda!13651) lt!206587)))

(declare-fun bs!57377 () Bool)

(assert (= bs!57377 d!175979))

(assert (=> bs!57377 m!730889))

(declare-fun m!732029 () Bool)

(assert (=> bs!57377 m!732029))

(assert (=> bs!57377 m!730059))

(assert (=> bs!57377 m!730889))

(declare-fun m!732031 () Bool)

(assert (=> bs!57377 m!732031))

(assert (=> bs!57377 m!730059))

(declare-fun m!732033 () Bool)

(assert (=> bs!57377 m!732033))

(assert (=> d!175635 d!175979))

(declare-fun d!175981 () Bool)

(assert (=> d!175981 (= (list!2004 lt!206234) (list!2009 (c!92854 lt!206234)))))

(declare-fun bs!57378 () Bool)

(assert (= bs!57378 d!175981))

(declare-fun m!732035 () Bool)

(assert (=> bs!57378 m!732035))

(assert (=> d!175635 d!175981))

(declare-fun d!175983 () Bool)

(assert (=> d!175983 (= (list!2005 lt!205904) (list!2007 (c!92856 lt!205904)))))

(declare-fun bs!57379 () Bool)

(assert (= bs!57379 d!175983))

(assert (=> bs!57379 m!732025))

(assert (=> d!175635 d!175983))

(declare-fun b!462612 () Bool)

(declare-fun e!283477 () Bool)

(assert (=> b!462612 (= e!283477 true)))

(declare-fun b!462611 () Bool)

(declare-fun e!283476 () Bool)

(assert (=> b!462611 (= e!283476 e!283477)))

(declare-fun b!462600 () Bool)

(assert (=> b!462600 e!283476))

(assert (= b!462611 b!462612))

(assert (= b!462600 b!462611))

(declare-fun lambda!13678 () Int)

(declare-fun order!4019 () Int)

(declare-fun dynLambda!2752 (Int Int) Int)

(assert (=> b!462612 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2752 order!4019 lambda!13678))))

(assert (=> b!462612 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2752 order!4019 lambda!13678))))

(declare-fun b!462598 () Bool)

(declare-fun lt!206637 () Option!1185)

(declare-fun e!283468 () Bool)

(assert (=> b!462598 (= e!283468 (= (list!2004 (_2!2962 (get!1654 lt!206637))) (_2!2961 (get!1652 (maxPrefixOneRule!229 thiss!17480 (h!9891 rules!1920) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))))

(declare-fun b!462599 () Bool)

(declare-fun e!283467 () Bool)

(declare-fun lt!206638 () List!4503)

(declare-datatypes ((tuple2!5500 0))(
  ( (tuple2!5501 (_1!2966 List!4503) (_2!2966 List!4503)) )
))
(declare-fun findLongestMatchInner!115 (Regex!1099 List!4503 Int List!4503 List!4503 Int) tuple2!5500)

(assert (=> b!462599 (= e!283467 (matchR!417 (regex!875 (h!9891 rules!1920)) (_1!2966 (findLongestMatchInner!115 (regex!875 (h!9891 rules!1920)) Nil!4493 (size!3674 Nil!4493) lt!206638 lt!206638 (size!3674 lt!206638)))))))

(declare-fun e!283470 () Option!1185)

(declare-datatypes ((tuple2!5502 0))(
  ( (tuple2!5503 (_1!2967 BalanceConc!3152) (_2!2967 BalanceConc!3152)) )
))
(declare-fun lt!206639 () tuple2!5502)

(assert (=> b!462600 (= e!283470 (Some!1184 (tuple2!5493 (Token!1495 (apply!1155 (transformation!875 (h!9891 rules!1920)) (_1!2967 lt!206639)) (h!9891 rules!1920) (size!3673 (_1!2967 lt!206639)) (list!2004 (_1!2967 lt!206639))) (_2!2967 lt!206639))))))

(assert (=> b!462600 (= lt!206638 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))

(declare-fun lt!206636 () Unit!8113)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!99 (Regex!1099 List!4503) Unit!8113)

(assert (=> b!462600 (= lt!206636 (longestMatchIsAcceptedByMatchOrIsEmpty!99 (regex!875 (h!9891 rules!1920)) lt!206638))))

(declare-fun res!205947 () Bool)

(assert (=> b!462600 (= res!205947 (isEmpty!3484 (_1!2966 (findLongestMatchInner!115 (regex!875 (h!9891 rules!1920)) Nil!4493 (size!3674 Nil!4493) lt!206638 lt!206638 (size!3674 lt!206638)))))))

(assert (=> b!462600 (=> res!205947 e!283467)))

(assert (=> b!462600 e!283467))

(declare-fun lt!206640 () Unit!8113)

(assert (=> b!462600 (= lt!206640 lt!206636)))

(declare-fun lt!206631 () Unit!8113)

(declare-fun lemmaInv!77 (TokenValueInjection!1566) Unit!8113)

(assert (=> b!462600 (= lt!206631 (lemmaInv!77 (transformation!875 (h!9891 rules!1920))))))

(declare-fun lt!206634 () Unit!8113)

(declare-fun ForallOf!74 (Int BalanceConc!3152) Unit!8113)

(assert (=> b!462600 (= lt!206634 (ForallOf!74 lambda!13678 (_1!2967 lt!206639)))))

(declare-fun lt!206635 () Unit!8113)

(assert (=> b!462600 (= lt!206635 (ForallOf!74 lambda!13678 (seqFromList!1115 (list!2004 (_1!2967 lt!206639)))))))

(declare-fun lt!206633 () Option!1185)

(assert (=> b!462600 (= lt!206633 (Some!1184 (tuple2!5493 (Token!1495 (apply!1155 (transformation!875 (h!9891 rules!1920)) (_1!2967 lt!206639)) (h!9891 rules!1920) (size!3673 (_1!2967 lt!206639)) (list!2004 (_1!2967 lt!206639))) (_2!2967 lt!206639))))))

(declare-fun lt!206632 () Unit!8113)

(declare-fun lemmaEqSameImage!74 (TokenValueInjection!1566 BalanceConc!3152 BalanceConc!3152) Unit!8113)

(assert (=> b!462600 (= lt!206632 (lemmaEqSameImage!74 (transformation!875 (h!9891 rules!1920)) (_1!2967 lt!206639) (seqFromList!1115 (list!2004 (_1!2967 lt!206639)))))))

(declare-fun b!462601 () Bool)

(declare-fun e!283469 () Bool)

(assert (=> b!462601 (= e!283469 e!283468)))

(declare-fun res!205944 () Bool)

(assert (=> b!462601 (=> (not res!205944) (not e!283468))))

(assert (=> b!462601 (= res!205944 (= (_1!2962 (get!1654 lt!206637)) (_1!2961 (get!1652 (maxPrefixOneRule!229 thiss!17480 (h!9891 rules!1920) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))))

(declare-fun d!175985 () Bool)

(declare-fun e!283466 () Bool)

(assert (=> d!175985 e!283466))

(declare-fun res!205945 () Bool)

(assert (=> d!175985 (=> (not res!205945) (not e!283466))))

(assert (=> d!175985 (= res!205945 (= (isDefined!1024 lt!206637) (isDefined!1023 (maxPrefixOneRule!229 thiss!17480 (h!9891 rules!1920) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))))

(assert (=> d!175985 (= lt!206637 e!283470)))

(declare-fun c!93133 () Bool)

(assert (=> d!175985 (= c!93133 (isEmpty!3492 (_1!2967 lt!206639)))))

(declare-fun findLongestMatchWithZipperSequence!74 (Regex!1099 BalanceConc!3152) tuple2!5502)

(assert (=> d!175985 (= lt!206639 (findLongestMatchWithZipperSequence!74 (regex!875 (h!9891 rules!1920)) (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))

(declare-fun ruleValid!136 (LexerInterface!761 Rule!1550) Bool)

(assert (=> d!175985 (ruleValid!136 thiss!17480 (h!9891 rules!1920))))

(assert (=> d!175985 (= (maxPrefixOneRuleZipperSequence!199 thiss!17480 (h!9891 rules!1920) (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))) lt!206637)))

(declare-fun b!462602 () Bool)

(assert (=> b!462602 (= e!283466 e!283469)))

(declare-fun res!205946 () Bool)

(assert (=> b!462602 (=> res!205946 e!283469)))

(assert (=> b!462602 (= res!205946 (not (isDefined!1024 lt!206637)))))

(declare-fun b!462603 () Bool)

(assert (=> b!462603 (= e!283470 None!1184)))

(assert (= (and d!175985 c!93133) b!462603))

(assert (= (and d!175985 (not c!93133)) b!462600))

(assert (= (and b!462600 (not res!205947)) b!462599))

(assert (= (and d!175985 res!205945) b!462602))

(assert (= (and b!462602 (not res!205946)) b!462601))

(assert (= (and b!462601 res!205944) b!462598))

(declare-fun m!732171 () Bool)

(assert (=> b!462598 m!732171))

(declare-fun m!732173 () Bool)

(assert (=> b!462598 m!732173))

(declare-fun m!732175 () Bool)

(assert (=> b!462598 m!732175))

(assert (=> b!462598 m!730337))

(assert (=> b!462598 m!732171))

(declare-fun m!732177 () Bool)

(assert (=> b!462598 m!732177))

(assert (=> b!462598 m!729905))

(assert (=> b!462598 m!730337))

(declare-fun m!732179 () Bool)

(assert (=> b!462600 m!732179))

(declare-fun m!732181 () Bool)

(assert (=> b!462600 m!732181))

(declare-fun m!732183 () Bool)

(assert (=> b!462600 m!732183))

(declare-fun m!732185 () Bool)

(assert (=> b!462600 m!732185))

(assert (=> b!462600 m!732185))

(declare-fun m!732189 () Bool)

(assert (=> b!462600 m!732189))

(declare-fun m!732193 () Bool)

(assert (=> b!462600 m!732193))

(declare-fun m!732195 () Bool)

(assert (=> b!462600 m!732195))

(declare-fun m!732197 () Bool)

(assert (=> b!462600 m!732197))

(assert (=> b!462600 m!732195))

(assert (=> b!462600 m!729905))

(assert (=> b!462600 m!730337))

(declare-fun m!732199 () Bool)

(assert (=> b!462600 m!732199))

(declare-fun m!732201 () Bool)

(assert (=> b!462600 m!732201))

(assert (=> b!462600 m!732193))

(assert (=> b!462600 m!732183))

(declare-fun m!732203 () Bool)

(assert (=> b!462600 m!732203))

(declare-fun m!732205 () Bool)

(assert (=> b!462600 m!732205))

(assert (=> b!462600 m!732185))

(declare-fun m!732207 () Bool)

(assert (=> b!462600 m!732207))

(declare-fun m!732209 () Bool)

(assert (=> b!462602 m!732209))

(assert (=> d!175985 m!729905))

(declare-fun m!732211 () Bool)

(assert (=> d!175985 m!732211))

(declare-fun m!732213 () Bool)

(assert (=> d!175985 m!732213))

(assert (=> d!175985 m!732171))

(declare-fun m!732215 () Bool)

(assert (=> d!175985 m!732215))

(assert (=> d!175985 m!732209))

(assert (=> d!175985 m!730337))

(assert (=> d!175985 m!732171))

(declare-fun m!732219 () Bool)

(assert (=> d!175985 m!732219))

(assert (=> d!175985 m!729905))

(assert (=> d!175985 m!730337))

(assert (=> b!462599 m!732193))

(assert (=> b!462599 m!732195))

(assert (=> b!462599 m!732193))

(assert (=> b!462599 m!732195))

(assert (=> b!462599 m!732197))

(declare-fun m!732227 () Bool)

(assert (=> b!462599 m!732227))

(assert (=> b!462601 m!732175))

(assert (=> b!462601 m!729905))

(assert (=> b!462601 m!730337))

(assert (=> b!462601 m!730337))

(assert (=> b!462601 m!732171))

(assert (=> b!462601 m!732171))

(assert (=> b!462601 m!732173))

(assert (=> bm!31987 d!175985))

(declare-fun d!176017 () Bool)

(declare-fun lt!206652 () Bool)

(declare-fun content!754 (List!4504) (InoxSet Rule!1550))

(assert (=> d!176017 (= lt!206652 (select (content!754 rules!1920) (rule!1570 (_1!2961 (get!1652 lt!206011)))))))

(declare-fun e!283502 () Bool)

(assert (=> d!176017 (= lt!206652 e!283502)))

(declare-fun res!205964 () Bool)

(assert (=> d!176017 (=> (not res!205964) (not e!283502))))

(assert (=> d!176017 (= res!205964 ((_ is Cons!4494) rules!1920))))

(assert (=> d!176017 (= (contains!1008 rules!1920 (rule!1570 (_1!2961 (get!1652 lt!206011)))) lt!206652)))

(declare-fun b!462652 () Bool)

(declare-fun e!283503 () Bool)

(assert (=> b!462652 (= e!283502 e!283503)))

(declare-fun res!205963 () Bool)

(assert (=> b!462652 (=> res!205963 e!283503)))

(assert (=> b!462652 (= res!205963 (= (h!9891 rules!1920) (rule!1570 (_1!2961 (get!1652 lt!206011)))))))

(declare-fun b!462653 () Bool)

(assert (=> b!462653 (= e!283503 (contains!1008 (t!71884 rules!1920) (rule!1570 (_1!2961 (get!1652 lt!206011)))))))

(assert (= (and d!176017 res!205964) b!462652))

(assert (= (and b!462652 (not res!205963)) b!462653))

(declare-fun m!732257 () Bool)

(assert (=> d!176017 m!732257))

(declare-fun m!732261 () Bool)

(assert (=> d!176017 m!732261))

(declare-fun m!732263 () Bool)

(assert (=> b!462653 m!732263))

(assert (=> b!461574 d!176017))

(declare-fun d!176029 () Bool)

(assert (=> d!176029 (= (get!1652 lt!206011) (v!15532 lt!206011))))

(assert (=> b!461574 d!176029))

(declare-fun d!176033 () Bool)

(assert (=> d!176033 (= (list!2004 (ite c!93008 call!32071 call!32070)) (list!2009 (c!92854 (ite c!93008 call!32071 call!32070))))))

(declare-fun bs!57410 () Bool)

(assert (= bs!57410 d!176033))

(declare-fun m!732265 () Bool)

(assert (=> bs!57410 m!732265))

(assert (=> bm!32063 d!176033))

(declare-fun d!176037 () Bool)

(declare-fun e!283507 () Bool)

(assert (=> d!176037 e!283507))

(declare-fun res!205969 () Bool)

(assert (=> d!176037 (=> res!205969 e!283507)))

(declare-fun lt!206654 () Bool)

(assert (=> d!176037 (= res!205969 (not lt!206654))))

(declare-fun e!283506 () Bool)

(assert (=> d!176037 (= lt!206654 e!283506)))

(declare-fun res!205968 () Bool)

(assert (=> d!176037 (=> res!205968 e!283506)))

(assert (=> d!176037 (= res!205968 ((_ is Nil!4493) lt!205905))))

(assert (=> d!176037 (= (isPrefix!527 lt!205905 (++!1312 lt!205905 lt!205901)) lt!206654)))

(declare-fun b!462659 () Bool)

(declare-fun res!205967 () Bool)

(declare-fun e!283508 () Bool)

(assert (=> b!462659 (=> (not res!205967) (not e!283508))))

(assert (=> b!462659 (= res!205967 (= (head!1134 lt!205905) (head!1134 (++!1312 lt!205905 lt!205901))))))

(declare-fun b!462658 () Bool)

(assert (=> b!462658 (= e!283506 e!283508)))

(declare-fun res!205970 () Bool)

(assert (=> b!462658 (=> (not res!205970) (not e!283508))))

(assert (=> b!462658 (= res!205970 (not ((_ is Nil!4493) (++!1312 lt!205905 lt!205901))))))

(declare-fun b!462661 () Bool)

(assert (=> b!462661 (= e!283507 (>= (size!3674 (++!1312 lt!205905 lt!205901)) (size!3674 lt!205905)))))

(declare-fun b!462660 () Bool)

(assert (=> b!462660 (= e!283508 (isPrefix!527 (tail!652 lt!205905) (tail!652 (++!1312 lt!205905 lt!205901))))))

(assert (= (and d!176037 (not res!205968)) b!462658))

(assert (= (and b!462658 res!205970) b!462659))

(assert (= (and b!462659 res!205967) b!462660))

(assert (= (and d!176037 (not res!205969)) b!462661))

(assert (=> b!462659 m!730243))

(assert (=> b!462659 m!729827))

(declare-fun m!732275 () Bool)

(assert (=> b!462659 m!732275))

(assert (=> b!462661 m!729827))

(declare-fun m!732277 () Bool)

(assert (=> b!462661 m!732277))

(assert (=> b!462661 m!730071))

(assert (=> b!462660 m!730249))

(assert (=> b!462660 m!729827))

(declare-fun m!732279 () Bool)

(assert (=> b!462660 m!732279))

(assert (=> b!462660 m!730249))

(assert (=> b!462660 m!732279))

(declare-fun m!732281 () Bool)

(assert (=> b!462660 m!732281))

(assert (=> d!175539 d!176037))

(assert (=> d!175539 d!175535))

(declare-fun d!176041 () Bool)

(assert (=> d!176041 (isPrefix!527 lt!205905 (++!1312 lt!205905 lt!205901))))

(assert (=> d!176041 true))

(declare-fun _$46!887 () Unit!8113)

(assert (=> d!176041 (= (choose!3470 lt!205905 lt!205901) _$46!887)))

(declare-fun bs!57411 () Bool)

(assert (= bs!57411 d!176041))

(assert (=> bs!57411 m!729827))

(assert (=> bs!57411 m!729827))

(assert (=> bs!57411 m!730255))

(assert (=> d!175539 d!176041))

(declare-fun d!176043 () Bool)

(declare-fun charsToInt!0 (List!4502) (_ BitVec 32))

(assert (=> d!176043 (= (inv!16 (value!29253 (h!9892 tokens!465))) (= (charsToInt!0 (text!6726 (value!29253 (h!9892 tokens!465)))) (value!29244 (value!29253 (h!9892 tokens!465)))))))

(declare-fun bs!57413 () Bool)

(assert (= bs!57413 d!176043))

(declare-fun m!732319 () Bool)

(assert (=> bs!57413 m!732319))

(assert (=> b!461385 d!176043))

(declare-fun d!176049 () Bool)

(declare-fun res!205976 () Bool)

(declare-fun e!283515 () Bool)

(assert (=> d!176049 (=> res!205976 e!283515)))

(assert (=> d!176049 (= res!205976 ((_ is Nil!4494) rules!1920))))

(assert (=> d!176049 (= (noDuplicateTag!314 thiss!17480 rules!1920 Nil!4497) e!283515)))

(declare-fun b!462669 () Bool)

(declare-fun e!283516 () Bool)

(assert (=> b!462669 (= e!283515 e!283516)))

(declare-fun res!205977 () Bool)

(assert (=> b!462669 (=> (not res!205977) (not e!283516))))

(declare-fun contains!1010 (List!4507 String!5565) Bool)

(assert (=> b!462669 (= res!205977 (not (contains!1010 Nil!4497 (tag!1135 (h!9891 rules!1920)))))))

(declare-fun b!462670 () Bool)

(assert (=> b!462670 (= e!283516 (noDuplicateTag!314 thiss!17480 (t!71884 rules!1920) (Cons!4497 (tag!1135 (h!9891 rules!1920)) Nil!4497)))))

(assert (= (and d!176049 (not res!205976)) b!462669))

(assert (= (and b!462669 res!205977) b!462670))

(declare-fun m!732321 () Bool)

(assert (=> b!462669 m!732321))

(declare-fun m!732323 () Bool)

(assert (=> b!462670 m!732323))

(assert (=> b!461686 d!176049))

(declare-fun d!176051 () Bool)

(declare-fun e!283518 () Bool)

(assert (=> d!176051 e!283518))

(declare-fun res!205980 () Bool)

(assert (=> d!176051 (=> res!205980 e!283518)))

(declare-fun lt!206662 () Bool)

(assert (=> d!176051 (= res!205980 (not lt!206662))))

(declare-fun e!283517 () Bool)

(assert (=> d!176051 (= lt!206662 e!283517)))

(declare-fun res!205979 () Bool)

(assert (=> d!176051 (=> res!205979 e!283517)))

(assert (=> d!176051 (= res!205979 ((_ is Nil!4493) (tail!652 lt!205905)))))

(assert (=> d!176051 (= (isPrefix!527 (tail!652 lt!205905) (tail!652 lt!205920)) lt!206662)))

(declare-fun b!462672 () Bool)

(declare-fun res!205978 () Bool)

(declare-fun e!283519 () Bool)

(assert (=> b!462672 (=> (not res!205978) (not e!283519))))

(assert (=> b!462672 (= res!205978 (= (head!1134 (tail!652 lt!205905)) (head!1134 (tail!652 lt!205920))))))

(declare-fun b!462671 () Bool)

(assert (=> b!462671 (= e!283517 e!283519)))

(declare-fun res!205981 () Bool)

(assert (=> b!462671 (=> (not res!205981) (not e!283519))))

(assert (=> b!462671 (= res!205981 (not ((_ is Nil!4493) (tail!652 lt!205920))))))

(declare-fun b!462674 () Bool)

(assert (=> b!462674 (= e!283518 (>= (size!3674 (tail!652 lt!205920)) (size!3674 (tail!652 lt!205905))))))

(declare-fun b!462673 () Bool)

(assert (=> b!462673 (= e!283519 (isPrefix!527 (tail!652 (tail!652 lt!205905)) (tail!652 (tail!652 lt!205920))))))

(assert (= (and d!176051 (not res!205979)) b!462671))

(assert (= (and b!462671 res!205981) b!462672))

(assert (= (and b!462672 res!205978) b!462673))

(assert (= (and d!176051 (not res!205980)) b!462674))

(assert (=> b!462672 m!730249))

(declare-fun m!732325 () Bool)

(assert (=> b!462672 m!732325))

(assert (=> b!462672 m!730261))

(declare-fun m!732327 () Bool)

(assert (=> b!462672 m!732327))

(assert (=> b!462674 m!730261))

(declare-fun m!732329 () Bool)

(assert (=> b!462674 m!732329))

(assert (=> b!462674 m!730249))

(declare-fun m!732331 () Bool)

(assert (=> b!462674 m!732331))

(assert (=> b!462673 m!730249))

(declare-fun m!732333 () Bool)

(assert (=> b!462673 m!732333))

(assert (=> b!462673 m!730261))

(declare-fun m!732335 () Bool)

(assert (=> b!462673 m!732335))

(assert (=> b!462673 m!732333))

(assert (=> b!462673 m!732335))

(declare-fun m!732337 () Bool)

(assert (=> b!462673 m!732337))

(assert (=> b!461547 d!176051))

(declare-fun d!176053 () Bool)

(assert (=> d!176053 (= (tail!652 lt!205905) (t!71883 lt!205905))))

(assert (=> b!461547 d!176053))

(declare-fun d!176055 () Bool)

(assert (=> d!176055 (= (tail!652 lt!205920) (t!71883 lt!205920))))

(assert (=> b!461547 d!176055))

(declare-fun lt!206663 () List!4503)

(declare-fun e!283521 () Bool)

(declare-fun b!462678 () Bool)

(assert (=> b!462678 (= e!283521 (or (not (= (++!1312 lt!205896 lt!205901) Nil!4493)) (= lt!206663 lt!205905)))))

(declare-fun b!462675 () Bool)

(declare-fun e!283520 () List!4503)

(assert (=> b!462675 (= e!283520 (++!1312 lt!205896 lt!205901))))

(declare-fun b!462677 () Bool)

(declare-fun res!205983 () Bool)

(assert (=> b!462677 (=> (not res!205983) (not e!283521))))

(assert (=> b!462677 (= res!205983 (= (size!3674 lt!206663) (+ (size!3674 lt!205905) (size!3674 (++!1312 lt!205896 lt!205901)))))))

(declare-fun d!176057 () Bool)

(assert (=> d!176057 e!283521))

(declare-fun res!205982 () Bool)

(assert (=> d!176057 (=> (not res!205982) (not e!283521))))

(assert (=> d!176057 (= res!205982 (= (content!752 lt!206663) ((_ map or) (content!752 lt!205905) (content!752 (++!1312 lt!205896 lt!205901)))))))

(assert (=> d!176057 (= lt!206663 e!283520)))

(declare-fun c!93148 () Bool)

(assert (=> d!176057 (= c!93148 ((_ is Nil!4493) lt!205905))))

(assert (=> d!176057 (= (++!1312 lt!205905 (++!1312 lt!205896 lt!205901)) lt!206663)))

(declare-fun b!462676 () Bool)

(assert (=> b!462676 (= e!283520 (Cons!4493 (h!9890 lt!205905) (++!1312 (t!71883 lt!205905) (++!1312 lt!205896 lt!205901))))))

(assert (= (and d!176057 c!93148) b!462675))

(assert (= (and d!176057 (not c!93148)) b!462676))

(assert (= (and d!176057 res!205982) b!462677))

(assert (= (and b!462677 res!205983) b!462678))

(declare-fun m!732339 () Bool)

(assert (=> b!462677 m!732339))

(assert (=> b!462677 m!730071))

(assert (=> b!462677 m!729943))

(declare-fun m!732341 () Bool)

(assert (=> b!462677 m!732341))

(declare-fun m!732343 () Bool)

(assert (=> d!176057 m!732343))

(assert (=> d!176057 m!730077))

(assert (=> d!176057 m!729943))

(declare-fun m!732345 () Bool)

(assert (=> d!176057 m!732345))

(assert (=> b!462676 m!729943))

(declare-fun m!732347 () Bool)

(assert (=> b!462676 m!732347))

(assert (=> d!175737 d!176057))

(assert (=> d!175737 d!175749))

(declare-fun d!176059 () Bool)

(assert (=> d!176059 (= (++!1312 (++!1312 lt!205905 lt!205896) lt!205901) (++!1312 lt!205905 (++!1312 lt!205896 lt!205901)))))

(assert (=> d!176059 true))

(declare-fun _$52!961 () Unit!8113)

(assert (=> d!176059 (= (choose!3475 lt!205905 lt!205896 lt!205901) _$52!961)))

(declare-fun bs!57414 () Bool)

(assert (= bs!57414 d!176059))

(assert (=> bs!57414 m!729955))

(assert (=> bs!57414 m!729955))

(assert (=> bs!57414 m!729957))

(assert (=> bs!57414 m!729943))

(assert (=> bs!57414 m!729943))

(assert (=> bs!57414 m!731145))

(assert (=> d!175737 d!176059))

(assert (=> d!175737 d!175751))

(assert (=> d!175737 d!175755))

(declare-fun b!462679 () Bool)

(declare-fun e!283527 () Bool)

(declare-fun lt!206664 () Bool)

(assert (=> b!462679 (= e!283527 (not lt!206664))))

(declare-fun b!462680 () Bool)

(declare-fun res!205988 () Bool)

(declare-fun e!283526 () Bool)

(assert (=> b!462680 (=> (not res!205988) (not e!283526))))

(assert (=> b!462680 (= res!205988 (isEmpty!3484 (tail!652 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988)))))))))

(declare-fun b!462681 () Bool)

(declare-fun e!283528 () Bool)

(declare-fun call!32118 () Bool)

(assert (=> b!462681 (= e!283528 (= lt!206664 call!32118))))

(declare-fun b!462682 () Bool)

(assert (=> b!462682 (= e!283526 (= (head!1134 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988))))) (c!92855 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))))))

(declare-fun b!462683 () Bool)

(declare-fun e!283525 () Bool)

(assert (=> b!462683 (= e!283525 (not (= (head!1134 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988))))) (c!92855 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!205988))))))))))

(declare-fun bm!32113 () Bool)

(assert (=> bm!32113 (= call!32118 (isEmpty!3484 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988))))))))

(declare-fun b!462685 () Bool)

(declare-fun res!205986 () Bool)

(assert (=> b!462685 (=> res!205986 e!283525)))

(assert (=> b!462685 (= res!205986 (not (isEmpty!3484 (tail!652 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988))))))))))

(declare-fun b!462686 () Bool)

(declare-fun e!283523 () Bool)

(assert (=> b!462686 (= e!283523 e!283525)))

(declare-fun res!205984 () Bool)

(assert (=> b!462686 (=> res!205984 e!283525)))

(assert (=> b!462686 (= res!205984 call!32118)))

(declare-fun b!462687 () Bool)

(declare-fun res!205990 () Bool)

(declare-fun e!283524 () Bool)

(assert (=> b!462687 (=> res!205990 e!283524)))

(assert (=> b!462687 (= res!205990 (not ((_ is ElementMatch!1099) (regex!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))))))

(assert (=> b!462687 (= e!283527 e!283524)))

(declare-fun b!462688 () Bool)

(assert (=> b!462688 (= e!283524 e!283523)))

(declare-fun res!205989 () Bool)

(assert (=> b!462688 (=> (not res!205989) (not e!283523))))

(assert (=> b!462688 (= res!205989 (not lt!206664))))

(declare-fun b!462689 () Bool)

(declare-fun e!283522 () Bool)

(assert (=> b!462689 (= e!283522 (matchR!417 (derivativeStep!217 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))) (head!1134 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988)))))) (tail!652 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988)))))))))

(declare-fun b!462690 () Bool)

(declare-fun res!205991 () Bool)

(assert (=> b!462690 (=> (not res!205991) (not e!283526))))

(assert (=> b!462690 (= res!205991 (not call!32118))))

(declare-fun d!176061 () Bool)

(assert (=> d!176061 e!283528))

(declare-fun c!93150 () Bool)

(assert (=> d!176061 (= c!93150 ((_ is EmptyExpr!1099) (regex!875 (rule!1570 (_1!2961 (get!1652 lt!205988))))))))

(assert (=> d!176061 (= lt!206664 e!283522)))

(declare-fun c!93149 () Bool)

(assert (=> d!176061 (= c!93149 (isEmpty!3484 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988))))))))

(assert (=> d!176061 (validRegex!326 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))))

(assert (=> d!176061 (= (matchR!417 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988))))) lt!206664)))

(declare-fun b!462684 () Bool)

(assert (=> b!462684 (= e!283522 (nullable!251 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!205988))))))))

(declare-fun b!462691 () Bool)

(declare-fun res!205987 () Bool)

(assert (=> b!462691 (=> res!205987 e!283524)))

(assert (=> b!462691 (= res!205987 e!283526)))

(declare-fun res!205985 () Bool)

(assert (=> b!462691 (=> (not res!205985) (not e!283526))))

(assert (=> b!462691 (= res!205985 lt!206664)))

(declare-fun b!462692 () Bool)

(assert (=> b!462692 (= e!283528 e!283527)))

(declare-fun c!93151 () Bool)

(assert (=> b!462692 (= c!93151 ((_ is EmptyLang!1099) (regex!875 (rule!1570 (_1!2961 (get!1652 lt!205988))))))))

(assert (= (and d!176061 c!93149) b!462684))

(assert (= (and d!176061 (not c!93149)) b!462689))

(assert (= (and d!176061 c!93150) b!462681))

(assert (= (and d!176061 (not c!93150)) b!462692))

(assert (= (and b!462692 c!93151) b!462679))

(assert (= (and b!462692 (not c!93151)) b!462687))

(assert (= (and b!462687 (not res!205990)) b!462691))

(assert (= (and b!462691 res!205985) b!462690))

(assert (= (and b!462690 res!205991) b!462680))

(assert (= (and b!462680 res!205988) b!462682))

(assert (= (and b!462691 (not res!205987)) b!462688))

(assert (= (and b!462688 res!205989) b!462686))

(assert (= (and b!462686 (not res!205984)) b!462685))

(assert (= (and b!462685 (not res!205986)) b!462683))

(assert (= (or b!462681 b!462690 b!462686) bm!32113))

(assert (=> b!462682 m!730203))

(declare-fun m!732349 () Bool)

(assert (=> b!462682 m!732349))

(assert (=> b!462680 m!730203))

(declare-fun m!732351 () Bool)

(assert (=> b!462680 m!732351))

(assert (=> b!462680 m!732351))

(declare-fun m!732353 () Bool)

(assert (=> b!462680 m!732353))

(assert (=> bm!32113 m!730203))

(declare-fun m!732355 () Bool)

(assert (=> bm!32113 m!732355))

(assert (=> b!462685 m!730203))

(assert (=> b!462685 m!732351))

(assert (=> b!462685 m!732351))

(assert (=> b!462685 m!732353))

(declare-fun m!732357 () Bool)

(assert (=> b!462684 m!732357))

(assert (=> b!462689 m!730203))

(assert (=> b!462689 m!732349))

(assert (=> b!462689 m!732349))

(declare-fun m!732359 () Bool)

(assert (=> b!462689 m!732359))

(assert (=> b!462689 m!730203))

(assert (=> b!462689 m!732351))

(assert (=> b!462689 m!732359))

(assert (=> b!462689 m!732351))

(declare-fun m!732361 () Bool)

(assert (=> b!462689 m!732361))

(assert (=> d!176061 m!730203))

(assert (=> d!176061 m!732355))

(declare-fun m!732363 () Bool)

(assert (=> d!176061 m!732363))

(assert (=> b!462683 m!730203))

(assert (=> b!462683 m!732349))

(assert (=> b!461523 d!176061))

(declare-fun d!176063 () Bool)

(assert (=> d!176063 (= (get!1652 lt!205988) (v!15532 lt!205988))))

(assert (=> b!461523 d!176063))

(declare-fun d!176065 () Bool)

(assert (=> d!176065 (= (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988)))) (list!2009 (c!92854 (charsOf!518 (_1!2961 (get!1652 lt!205988))))))))

(declare-fun bs!57415 () Bool)

(assert (= bs!57415 d!176065))

(declare-fun m!732365 () Bool)

(assert (=> bs!57415 m!732365))

(assert (=> b!461523 d!176065))

(declare-fun d!176067 () Bool)

(declare-fun lt!206665 () BalanceConc!3152)

(assert (=> d!176067 (= (list!2004 lt!206665) (originalCharacters!918 (_1!2961 (get!1652 lt!205988))))))

(assert (=> d!176067 (= lt!206665 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988))))) (value!29253 (_1!2961 (get!1652 lt!205988)))))))

(assert (=> d!176067 (= (charsOf!518 (_1!2961 (get!1652 lt!205988))) lt!206665)))

(declare-fun b_lambda!19227 () Bool)

(assert (=> (not b_lambda!19227) (not d!176067)))

(declare-fun t!71996 () Bool)

(declare-fun tb!46161 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!71996) tb!46161))

(declare-fun b!462693 () Bool)

(declare-fun e!283529 () Bool)

(declare-fun tp!127794 () Bool)

(assert (=> b!462693 (= e!283529 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988))))) (value!29253 (_1!2961 (get!1652 lt!205988)))))) tp!127794))))

(declare-fun result!50844 () Bool)

(assert (=> tb!46161 (= result!50844 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988))))) (value!29253 (_1!2961 (get!1652 lt!205988))))) e!283529))))

(assert (= tb!46161 b!462693))

(declare-fun m!732367 () Bool)

(assert (=> b!462693 m!732367))

(declare-fun m!732369 () Bool)

(assert (=> tb!46161 m!732369))

(assert (=> d!176067 t!71996))

(declare-fun b_and!49645 () Bool)

(assert (= b_and!49591 (and (=> t!71996 result!50844) b_and!49645)))

(declare-fun tb!46163 () Bool)

(declare-fun t!71998 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!71998) tb!46163))

(declare-fun result!50846 () Bool)

(assert (= result!50846 result!50844))

(assert (=> d!176067 t!71998))

(declare-fun b_and!49647 () Bool)

(assert (= b_and!49603 (and (=> t!71998 result!50846) b_and!49647)))

(declare-fun tb!46165 () Bool)

(declare-fun t!72000 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!72000) tb!46165))

(declare-fun result!50848 () Bool)

(assert (= result!50848 result!50844))

(assert (=> d!176067 t!72000))

(declare-fun b_and!49649 () Bool)

(assert (= b_and!49595 (and (=> t!72000 result!50848) b_and!49649)))

(declare-fun tb!46167 () Bool)

(declare-fun t!72002 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!72002) tb!46167))

(declare-fun result!50850 () Bool)

(assert (= result!50850 result!50844))

(assert (=> d!176067 t!72002))

(declare-fun b_and!49651 () Bool)

(assert (= b_and!49599 (and (=> t!72002 result!50850) b_and!49651)))

(declare-fun tb!46169 () Bool)

(declare-fun t!72004 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!72004) tb!46169))

(declare-fun result!50852 () Bool)

(assert (= result!50852 result!50844))

(assert (=> d!176067 t!72004))

(declare-fun b_and!49653 () Bool)

(assert (= b_and!49593 (and (=> t!72004 result!50852) b_and!49653)))

(declare-fun m!732371 () Bool)

(assert (=> d!176067 m!732371))

(declare-fun m!732373 () Bool)

(assert (=> d!176067 m!732373))

(assert (=> b!461523 d!176067))

(declare-fun d!176069 () Bool)

(declare-fun c!93154 () Bool)

(assert (=> d!176069 (= c!93154 ((_ is Nil!4493) lt!206334))))

(declare-fun e!283532 () (InoxSet C!3120))

(assert (=> d!176069 (= (content!752 lt!206334) e!283532)))

(declare-fun b!462698 () Bool)

(assert (=> b!462698 (= e!283532 ((as const (Array C!3120 Bool)) false))))

(declare-fun b!462699 () Bool)

(assert (=> b!462699 (= e!283532 ((_ map or) (store ((as const (Array C!3120 Bool)) false) (h!9890 lt!206334) true) (content!752 (t!71883 lt!206334))))))

(assert (= (and d!176069 c!93154) b!462698))

(assert (= (and d!176069 (not c!93154)) b!462699))

(declare-fun m!732375 () Bool)

(assert (=> b!462699 m!732375))

(declare-fun m!732377 () Bool)

(assert (=> b!462699 m!732377))

(assert (=> d!175751 d!176069))

(declare-fun d!176071 () Bool)

(declare-fun c!93155 () Bool)

(assert (=> d!176071 (= c!93155 ((_ is Nil!4493) (++!1312 lt!205905 lt!205896)))))

(declare-fun e!283533 () (InoxSet C!3120))

(assert (=> d!176071 (= (content!752 (++!1312 lt!205905 lt!205896)) e!283533)))

(declare-fun b!462700 () Bool)

(assert (=> b!462700 (= e!283533 ((as const (Array C!3120 Bool)) false))))

(declare-fun b!462701 () Bool)

(assert (=> b!462701 (= e!283533 ((_ map or) (store ((as const (Array C!3120 Bool)) false) (h!9890 (++!1312 lt!205905 lt!205896)) true) (content!752 (t!71883 (++!1312 lt!205905 lt!205896)))))))

(assert (= (and d!176071 c!93155) b!462700))

(assert (= (and d!176071 (not c!93155)) b!462701))

(declare-fun m!732379 () Bool)

(assert (=> b!462701 m!732379))

(declare-fun m!732381 () Bool)

(assert (=> b!462701 m!732381))

(assert (=> d!175751 d!176071))

(declare-fun d!176073 () Bool)

(declare-fun c!93156 () Bool)

(assert (=> d!176073 (= c!93156 ((_ is Nil!4493) lt!205901))))

(declare-fun e!283534 () (InoxSet C!3120))

(assert (=> d!176073 (= (content!752 lt!205901) e!283534)))

(declare-fun b!462702 () Bool)

(assert (=> b!462702 (= e!283534 ((as const (Array C!3120 Bool)) false))))

(declare-fun b!462703 () Bool)

(assert (=> b!462703 (= e!283534 ((_ map or) (store ((as const (Array C!3120 Bool)) false) (h!9890 lt!205901) true) (content!752 (t!71883 lt!205901))))))

(assert (= (and d!176073 c!93156) b!462702))

(assert (= (and d!176073 (not c!93156)) b!462703))

(declare-fun m!732383 () Bool)

(assert (=> b!462703 m!732383))

(declare-fun m!732385 () Bool)

(assert (=> b!462703 m!732385))

(assert (=> d!175751 d!176073))

(declare-fun b!462704 () Bool)

(declare-fun e!283535 () List!4505)

(declare-fun call!32119 () List!4505)

(assert (=> b!462704 (= e!283535 call!32119)))

(declare-fun b!462705 () Bool)

(declare-fun e!283537 () Bool)

(declare-fun lt!206666 () List!4505)

(assert (=> b!462705 (= e!283537 (forall!1308 lt!206666 lambda!13617))))

(declare-fun b!462706 () Bool)

(declare-fun e!283536 () List!4505)

(assert (=> b!462706 (= e!283536 Nil!4495)))

(declare-fun b!462708 () Bool)

(assert (=> b!462708 (= e!283536 e!283535)))

(declare-fun c!93157 () Bool)

(assert (=> b!462708 (= c!93157 (dynLambda!2749 lambda!13617 (h!9892 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))))))

(declare-fun b!462707 () Bool)

(assert (=> b!462707 (= e!283535 (Cons!4495 (h!9892 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))))) call!32119))))

(declare-fun d!176075 () Bool)

(assert (=> d!176075 e!283537))

(declare-fun res!205992 () Bool)

(assert (=> d!176075 (=> (not res!205992) (not e!283537))))

(assert (=> d!176075 (= res!205992 (<= (size!3675 lt!206666) (size!3675 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))))))

(assert (=> d!176075 (= lt!206666 e!283536)))

(declare-fun c!93158 () Bool)

(assert (=> d!176075 (= c!93158 ((_ is Nil!4495) (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))))))))

(assert (=> d!176075 (= (filter!103 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))) lambda!13617) lt!206666)))

(declare-fun b!462709 () Bool)

(declare-fun res!205993 () Bool)

(assert (=> b!462709 (=> (not res!205993) (not e!283537))))

(assert (=> b!462709 (= res!205993 (= ((_ map implies) (content!753 lt!206666) (content!753 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))) ((as const (InoxSet Token!1494)) true)))))

(declare-fun bm!32114 () Bool)

(assert (=> bm!32114 (= call!32119 (filter!103 (t!71885 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))))) lambda!13617))))

(assert (= (and d!176075 c!93158) b!462706))

(assert (= (and d!176075 (not c!93158)) b!462708))

(assert (= (and b!462708 c!93157) b!462707))

(assert (= (and b!462708 (not c!93157)) b!462704))

(assert (= (or b!462707 b!462704) bm!32114))

(assert (= (and d!176075 res!205992) b!462709))

(assert (= (and b!462709 res!205993) b!462705))

(declare-fun b_lambda!19229 () Bool)

(assert (=> (not b_lambda!19229) (not b!462708)))

(declare-fun m!732387 () Bool)

(assert (=> b!462708 m!732387))

(declare-fun m!732389 () Bool)

(assert (=> d!176075 m!732389))

(declare-fun m!732391 () Bool)

(assert (=> d!176075 m!732391))

(declare-fun m!732393 () Bool)

(assert (=> b!462705 m!732393))

(declare-fun m!732395 () Bool)

(assert (=> b!462709 m!732395))

(declare-fun m!732397 () Bool)

(assert (=> b!462709 m!732397))

(declare-fun m!732399 () Bool)

(assert (=> bm!32114 m!732399))

(assert (=> bm!31989 d!176075))

(declare-fun b!462719 () Bool)

(declare-fun e!283542 () List!4503)

(declare-fun e!283543 () List!4503)

(assert (=> b!462719 (= e!283542 e!283543)))

(declare-fun c!93164 () Bool)

(assert (=> b!462719 (= c!93164 ((_ is Leaf!2349) (c!92854 (seqFromList!1115 lt!205920))))))

(declare-fun b!462718 () Bool)

(assert (=> b!462718 (= e!283542 Nil!4493)))

(declare-fun b!462720 () Bool)

(declare-fun list!2011 (IArray!3145) List!4503)

(assert (=> b!462720 (= e!283543 (list!2011 (xs!4203 (c!92854 (seqFromList!1115 lt!205920)))))))

(declare-fun d!176077 () Bool)

(declare-fun c!93163 () Bool)

(assert (=> d!176077 (= c!93163 ((_ is Empty!1572) (c!92854 (seqFromList!1115 lt!205920))))))

(assert (=> d!176077 (= (list!2009 (c!92854 (seqFromList!1115 lt!205920))) e!283542)))

(declare-fun b!462721 () Bool)

(assert (=> b!462721 (= e!283543 (++!1312 (list!2009 (left!3800 (c!92854 (seqFromList!1115 lt!205920)))) (list!2009 (right!4130 (c!92854 (seqFromList!1115 lt!205920))))))))

(assert (= (and d!176077 c!93163) b!462718))

(assert (= (and d!176077 (not c!93163)) b!462719))

(assert (= (and b!462719 c!93164) b!462720))

(assert (= (and b!462719 (not c!93164)) b!462721))

(declare-fun m!732401 () Bool)

(assert (=> b!462720 m!732401))

(declare-fun m!732403 () Bool)

(assert (=> b!462721 m!732403))

(declare-fun m!732405 () Bool)

(assert (=> b!462721 m!732405))

(assert (=> b!462721 m!732403))

(assert (=> b!462721 m!732405))

(declare-fun m!732407 () Bool)

(assert (=> b!462721 m!732407))

(assert (=> d!175575 d!176077))

(declare-fun d!176079 () Bool)

(declare-fun c!93165 () Bool)

(assert (=> d!176079 (= c!93165 ((_ is Nil!4493) lt!205989))))

(declare-fun e!283544 () (InoxSet C!3120))

(assert (=> d!176079 (= (content!752 lt!205989) e!283544)))

(declare-fun b!462722 () Bool)

(assert (=> b!462722 (= e!283544 ((as const (Array C!3120 Bool)) false))))

(declare-fun b!462723 () Bool)

(assert (=> b!462723 (= e!283544 ((_ map or) (store ((as const (Array C!3120 Bool)) false) (h!9890 lt!205989) true) (content!752 (t!71883 lt!205989))))))

(assert (= (and d!176079 c!93165) b!462722))

(assert (= (and d!176079 (not c!93165)) b!462723))

(declare-fun m!732409 () Bool)

(assert (=> b!462723 m!732409))

(declare-fun m!732411 () Bool)

(assert (=> b!462723 m!732411))

(assert (=> d!175535 d!176079))

(declare-fun d!176081 () Bool)

(declare-fun c!93166 () Bool)

(assert (=> d!176081 (= c!93166 ((_ is Nil!4493) lt!205905))))

(declare-fun e!283545 () (InoxSet C!3120))

(assert (=> d!176081 (= (content!752 lt!205905) e!283545)))

(declare-fun b!462724 () Bool)

(assert (=> b!462724 (= e!283545 ((as const (Array C!3120 Bool)) false))))

(declare-fun b!462725 () Bool)

(assert (=> b!462725 (= e!283545 ((_ map or) (store ((as const (Array C!3120 Bool)) false) (h!9890 lt!205905) true) (content!752 (t!71883 lt!205905))))))

(assert (= (and d!176081 c!93166) b!462724))

(assert (= (and d!176081 (not c!93166)) b!462725))

(declare-fun m!732413 () Bool)

(assert (=> b!462725 m!732413))

(declare-fun m!732415 () Bool)

(assert (=> b!462725 m!732415))

(assert (=> d!175535 d!176081))

(assert (=> d!175535 d!176073))

(assert (=> bm!32065 d!175757))

(declare-fun d!176083 () Bool)

(declare-fun charsToBigInt!1 (List!4502) Int)

(assert (=> d!176083 (= (inv!17 (value!29253 (h!9892 tokens!465))) (= (charsToBigInt!1 (text!6727 (value!29253 (h!9892 tokens!465)))) (value!29245 (value!29253 (h!9892 tokens!465)))))))

(declare-fun bs!57416 () Bool)

(assert (= bs!57416 d!176083))

(declare-fun m!732417 () Bool)

(assert (=> bs!57416 m!732417))

(assert (=> b!461384 d!176083))

(declare-fun lt!206667 () List!4503)

(declare-fun b!462729 () Bool)

(declare-fun e!283547 () Bool)

(assert (=> b!462729 (= e!283547 (or (not (= lt!205901 Nil!4493)) (= lt!206667 (t!71883 (++!1312 lt!205905 lt!205896)))))))

(declare-fun b!462726 () Bool)

(declare-fun e!283546 () List!4503)

(assert (=> b!462726 (= e!283546 lt!205901)))

(declare-fun b!462728 () Bool)

(declare-fun res!205995 () Bool)

(assert (=> b!462728 (=> (not res!205995) (not e!283547))))

(assert (=> b!462728 (= res!205995 (= (size!3674 lt!206667) (+ (size!3674 (t!71883 (++!1312 lt!205905 lt!205896))) (size!3674 lt!205901))))))

(declare-fun d!176085 () Bool)

(assert (=> d!176085 e!283547))

(declare-fun res!205994 () Bool)

(assert (=> d!176085 (=> (not res!205994) (not e!283547))))

(assert (=> d!176085 (= res!205994 (= (content!752 lt!206667) ((_ map or) (content!752 (t!71883 (++!1312 lt!205905 lt!205896))) (content!752 lt!205901))))))

(assert (=> d!176085 (= lt!206667 e!283546)))

(declare-fun c!93167 () Bool)

(assert (=> d!176085 (= c!93167 ((_ is Nil!4493) (t!71883 (++!1312 lt!205905 lt!205896))))))

(assert (=> d!176085 (= (++!1312 (t!71883 (++!1312 lt!205905 lt!205896)) lt!205901) lt!206667)))

(declare-fun b!462727 () Bool)

(assert (=> b!462727 (= e!283546 (Cons!4493 (h!9890 (t!71883 (++!1312 lt!205905 lt!205896))) (++!1312 (t!71883 (t!71883 (++!1312 lt!205905 lt!205896))) lt!205901)))))

(assert (= (and d!176085 c!93167) b!462726))

(assert (= (and d!176085 (not c!93167)) b!462727))

(assert (= (and d!176085 res!205994) b!462728))

(assert (= (and b!462728 res!205995) b!462729))

(declare-fun m!732419 () Bool)

(assert (=> b!462728 m!732419))

(declare-fun m!732421 () Bool)

(assert (=> b!462728 m!732421))

(assert (=> b!462728 m!730235))

(declare-fun m!732423 () Bool)

(assert (=> d!176085 m!732423))

(assert (=> d!176085 m!732381))

(assert (=> d!176085 m!730239))

(declare-fun m!732425 () Bool)

(assert (=> b!462727 m!732425))

(assert (=> b!462146 d!176085))

(declare-fun d!176087 () Bool)

(declare-fun lt!206670 () Bool)

(assert (=> d!176087 (= lt!206670 (isEmpty!3484 (list!2004 (_2!2963 lt!206127))))))

(declare-fun isEmpty!3494 (Conc!1572) Bool)

(assert (=> d!176087 (= lt!206670 (isEmpty!3494 (c!92854 (_2!2963 lt!206127))))))

(assert (=> d!176087 (= (isEmpty!3492 (_2!2963 lt!206127)) lt!206670)))

(declare-fun bs!57417 () Bool)

(assert (= bs!57417 d!176087))

(declare-fun m!732427 () Bool)

(assert (=> bs!57417 m!732427))

(assert (=> bs!57417 m!732427))

(declare-fun m!732429 () Bool)

(assert (=> bs!57417 m!732429))

(declare-fun m!732431 () Bool)

(assert (=> bs!57417 m!732431))

(assert (=> b!461795 d!176087))

(declare-fun d!176089 () Bool)

(declare-fun e!283550 () Bool)

(assert (=> d!176089 e!283550))

(declare-fun res!205998 () Bool)

(assert (=> d!176089 (=> (not res!205998) (not e!283550))))

(declare-fun lt!206673 () BalanceConc!3152)

(assert (=> d!176089 (= res!205998 (= (list!2004 lt!206673) lt!205905))))

(declare-fun fromList!259 (List!4503) Conc!1572)

(assert (=> d!176089 (= lt!206673 (BalanceConc!3153 (fromList!259 lt!205905)))))

(assert (=> d!176089 (= (fromListB!497 lt!205905) lt!206673)))

(declare-fun b!462732 () Bool)

(declare-fun isBalanced!483 (Conc!1572) Bool)

(assert (=> b!462732 (= e!283550 (isBalanced!483 (fromList!259 lt!205905)))))

(assert (= (and d!176089 res!205998) b!462732))

(declare-fun m!732433 () Bool)

(assert (=> d!176089 m!732433))

(declare-fun m!732435 () Bool)

(assert (=> d!176089 m!732435))

(assert (=> b!462732 m!732435))

(assert (=> b!462732 m!732435))

(declare-fun m!732437 () Bool)

(assert (=> b!462732 m!732437))

(assert (=> d!175477 d!176089))

(declare-fun d!176091 () Bool)

(declare-fun e!283551 () Bool)

(assert (=> d!176091 e!283551))

(declare-fun res!205999 () Bool)

(assert (=> d!176091 (=> (not res!205999) (not e!283551))))

(declare-fun lt!206674 () BalanceConc!3152)

(assert (=> d!176091 (= res!205999 (= (list!2004 lt!206674) lt!205920))))

(assert (=> d!176091 (= lt!206674 (BalanceConc!3153 (fromList!259 lt!205920)))))

(assert (=> d!176091 (= (fromListB!497 lt!205920) lt!206674)))

(declare-fun b!462733 () Bool)

(assert (=> b!462733 (= e!283551 (isBalanced!483 (fromList!259 lt!205920)))))

(assert (= (and d!176091 res!205999) b!462733))

(declare-fun m!732439 () Bool)

(assert (=> d!176091 m!732439))

(declare-fun m!732441 () Bool)

(assert (=> d!176091 m!732441))

(assert (=> b!462733 m!732441))

(assert (=> b!462733 m!732441))

(declare-fun m!732443 () Bool)

(assert (=> b!462733 m!732443))

(assert (=> d!175577 d!176091))

(declare-fun lt!206675 () List!4503)

(declare-fun b!462737 () Bool)

(declare-fun e!283553 () Bool)

(assert (=> b!462737 (= e!283553 (or (not (= lt!205901 Nil!4493)) (= lt!206675 (t!71883 lt!205905))))))

(declare-fun b!462734 () Bool)

(declare-fun e!283552 () List!4503)

(assert (=> b!462734 (= e!283552 lt!205901)))

(declare-fun b!462736 () Bool)

(declare-fun res!206001 () Bool)

(assert (=> b!462736 (=> (not res!206001) (not e!283553))))

(assert (=> b!462736 (= res!206001 (= (size!3674 lt!206675) (+ (size!3674 (t!71883 lt!205905)) (size!3674 lt!205901))))))

(declare-fun d!176093 () Bool)

(assert (=> d!176093 e!283553))

(declare-fun res!206000 () Bool)

(assert (=> d!176093 (=> (not res!206000) (not e!283553))))

(assert (=> d!176093 (= res!206000 (= (content!752 lt!206675) ((_ map or) (content!752 (t!71883 lt!205905)) (content!752 lt!205901))))))

(assert (=> d!176093 (= lt!206675 e!283552)))

(declare-fun c!93169 () Bool)

(assert (=> d!176093 (= c!93169 ((_ is Nil!4493) (t!71883 lt!205905)))))

(assert (=> d!176093 (= (++!1312 (t!71883 lt!205905) lt!205901) lt!206675)))

(declare-fun b!462735 () Bool)

(assert (=> b!462735 (= e!283552 (Cons!4493 (h!9890 (t!71883 lt!205905)) (++!1312 (t!71883 (t!71883 lt!205905)) lt!205901)))))

(assert (= (and d!176093 c!93169) b!462734))

(assert (= (and d!176093 (not c!93169)) b!462735))

(assert (= (and d!176093 res!206000) b!462736))

(assert (= (and b!462736 res!206001) b!462737))

(declare-fun m!732445 () Bool)

(assert (=> b!462736 m!732445))

(declare-fun m!732447 () Bool)

(assert (=> b!462736 m!732447))

(assert (=> b!462736 m!730235))

(declare-fun m!732449 () Bool)

(assert (=> d!176093 m!732449))

(assert (=> d!176093 m!732415))

(assert (=> d!176093 m!730239))

(declare-fun m!732451 () Bool)

(assert (=> b!462735 m!732451))

(assert (=> b!461530 d!176093))

(declare-fun d!176095 () Bool)

(assert (=> d!176095 (= (isEmpty!3484 (tail!652 lt!205905)) ((_ is Nil!4493) (tail!652 lt!205905)))))

(assert (=> b!461716 d!176095))

(assert (=> b!461716 d!176053))

(declare-fun d!176097 () Bool)

(declare-fun lt!206689 () Option!1184)

(assert (=> d!176097 (= lt!206689 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))

(declare-fun e!283556 () Option!1184)

(assert (=> d!176097 (= lt!206689 e!283556)))

(declare-fun c!93172 () Bool)

(assert (=> d!176097 (= c!93172 (and ((_ is Cons!4494) rules!1920) ((_ is Nil!4494) (t!71884 rules!1920))))))

(declare-fun lt!206690 () Unit!8113)

(declare-fun lt!206688 () Unit!8113)

(assert (=> d!176097 (= lt!206690 lt!206688)))

(assert (=> d!176097 (isPrefix!527 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))

(assert (=> d!176097 (= lt!206688 (lemmaIsPrefixRefl!295 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))

(assert (=> d!176097 (rulesValidInductive!290 thiss!17480 rules!1920)))

(assert (=> d!176097 (= (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))) lt!206689)))

(declare-fun bm!32117 () Bool)

(declare-fun call!32122 () Option!1184)

(declare-fun maxPrefixOneRuleZipper!75 (LexerInterface!761 Rule!1550 List!4503) Option!1184)

(assert (=> bm!32117 (= call!32122 (maxPrefixOneRuleZipper!75 thiss!17480 (h!9891 rules!1920) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))

(declare-fun b!462742 () Bool)

(assert (=> b!462742 (= e!283556 call!32122)))

(declare-fun b!462743 () Bool)

(declare-fun lt!206687 () Option!1184)

(declare-fun lt!206686 () Option!1184)

(assert (=> b!462743 (= e!283556 (ite (and ((_ is None!1183) lt!206687) ((_ is None!1183) lt!206686)) None!1183 (ite ((_ is None!1183) lt!206686) lt!206687 (ite ((_ is None!1183) lt!206687) lt!206686 (ite (>= (size!3667 (_1!2961 (v!15532 lt!206687))) (size!3667 (_1!2961 (v!15532 lt!206686)))) lt!206687 lt!206686)))))))

(assert (=> b!462743 (= lt!206687 call!32122)))

(assert (=> b!462743 (= lt!206686 (maxPrefixZipper!198 thiss!17480 (t!71884 rules!1920) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))

(assert (= (and d!176097 c!93172) b!462742))

(assert (= (and d!176097 (not c!93172)) b!462743))

(assert (= (or b!462742 b!462743) bm!32117))

(assert (=> d!176097 m!730337))

(assert (=> d!176097 m!730357))

(assert (=> d!176097 m!730337))

(assert (=> d!176097 m!730337))

(declare-fun m!732453 () Bool)

(assert (=> d!176097 m!732453))

(assert (=> d!176097 m!730337))

(assert (=> d!176097 m!730337))

(declare-fun m!732455 () Bool)

(assert (=> d!176097 m!732455))

(assert (=> d!176097 m!730215))

(assert (=> bm!32117 m!730337))

(declare-fun m!732457 () Bool)

(assert (=> bm!32117 m!732457))

(assert (=> b!462743 m!730337))

(declare-fun m!732459 () Bool)

(assert (=> b!462743 m!732459))

(assert (=> b!461627 d!176097))

(declare-fun d!176099 () Bool)

(assert (=> d!176099 (= (list!2004 (_2!2962 (get!1654 lt!206046))) (list!2009 (c!92854 (_2!2962 (get!1654 lt!206046)))))))

(declare-fun bs!57418 () Bool)

(assert (= bs!57418 d!176099))

(declare-fun m!732461 () Bool)

(assert (=> bs!57418 m!732461))

(assert (=> b!461627 d!176099))

(declare-fun d!176101 () Bool)

(assert (=> d!176101 (= (get!1654 lt!206046) (v!15533 lt!206046))))

(assert (=> b!461627 d!176101))

(declare-fun d!176103 () Bool)

(assert (=> d!176103 (= (get!1652 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))) (v!15532 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))

(assert (=> b!461627 d!176103))

(declare-fun d!176105 () Bool)

(assert (=> d!176105 (= (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))) (list!2009 (c!92854 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))

(declare-fun bs!57419 () Bool)

(assert (= bs!57419 d!176105))

(declare-fun m!732463 () Bool)

(assert (=> bs!57419 m!732463))

(assert (=> b!461627 d!176105))

(declare-fun b!462747 () Bool)

(declare-fun e!283558 () Bool)

(declare-fun lt!206691 () List!4503)

(assert (=> b!462747 (= e!283558 (or (not (= (_2!2961 (get!1652 lt!206011)) Nil!4493)) (= lt!206691 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011)))))))))

(declare-fun b!462744 () Bool)

(declare-fun e!283557 () List!4503)

(assert (=> b!462744 (= e!283557 (_2!2961 (get!1652 lt!206011)))))

(declare-fun b!462746 () Bool)

(declare-fun res!206003 () Bool)

(assert (=> b!462746 (=> (not res!206003) (not e!283558))))

(assert (=> b!462746 (= res!206003 (= (size!3674 lt!206691) (+ (size!3674 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011))))) (size!3674 (_2!2961 (get!1652 lt!206011))))))))

(declare-fun d!176107 () Bool)

(assert (=> d!176107 e!283558))

(declare-fun res!206002 () Bool)

(assert (=> d!176107 (=> (not res!206002) (not e!283558))))

(assert (=> d!176107 (= res!206002 (= (content!752 lt!206691) ((_ map or) (content!752 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011))))) (content!752 (_2!2961 (get!1652 lt!206011))))))))

(assert (=> d!176107 (= lt!206691 e!283557)))

(declare-fun c!93173 () Bool)

(assert (=> d!176107 (= c!93173 ((_ is Nil!4493) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011))))))))

(assert (=> d!176107 (= (++!1312 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011)))) (_2!2961 (get!1652 lt!206011))) lt!206691)))

(declare-fun b!462745 () Bool)

(assert (=> b!462745 (= e!283557 (Cons!4493 (h!9890 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011))))) (++!1312 (t!71883 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011))))) (_2!2961 (get!1652 lt!206011)))))))

(assert (= (and d!176107 c!93173) b!462744))

(assert (= (and d!176107 (not c!93173)) b!462745))

(assert (= (and d!176107 res!206002) b!462746))

(assert (= (and b!462746 res!206003) b!462747))

(declare-fun m!732465 () Bool)

(assert (=> b!462746 m!732465))

(assert (=> b!462746 m!730275))

(declare-fun m!732467 () Bool)

(assert (=> b!462746 m!732467))

(assert (=> b!462746 m!730287))

(declare-fun m!732469 () Bool)

(assert (=> d!176107 m!732469))

(assert (=> d!176107 m!730275))

(declare-fun m!732471 () Bool)

(assert (=> d!176107 m!732471))

(declare-fun m!732473 () Bool)

(assert (=> d!176107 m!732473))

(declare-fun m!732475 () Bool)

(assert (=> b!462745 m!732475))

(assert (=> b!461575 d!176107))

(declare-fun d!176109 () Bool)

(assert (=> d!176109 (= (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011)))) (list!2009 (c!92854 (charsOf!518 (_1!2961 (get!1652 lt!206011))))))))

(declare-fun bs!57420 () Bool)

(assert (= bs!57420 d!176109))

(declare-fun m!732477 () Bool)

(assert (=> bs!57420 m!732477))

(assert (=> b!461575 d!176109))

(declare-fun d!176111 () Bool)

(declare-fun lt!206692 () BalanceConc!3152)

(assert (=> d!176111 (= (list!2004 lt!206692) (originalCharacters!918 (_1!2961 (get!1652 lt!206011))))))

(assert (=> d!176111 (= lt!206692 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011))))) (value!29253 (_1!2961 (get!1652 lt!206011)))))))

(assert (=> d!176111 (= (charsOf!518 (_1!2961 (get!1652 lt!206011))) lt!206692)))

(declare-fun b_lambda!19231 () Bool)

(assert (=> (not b_lambda!19231) (not d!176111)))

(declare-fun tb!46171 () Bool)

(declare-fun t!72007 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72007) tb!46171))

(declare-fun b!462748 () Bool)

(declare-fun e!283559 () Bool)

(declare-fun tp!127795 () Bool)

(assert (=> b!462748 (= e!283559 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011))))) (value!29253 (_1!2961 (get!1652 lt!206011)))))) tp!127795))))

(declare-fun result!50854 () Bool)

(assert (=> tb!46171 (= result!50854 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011))))) (value!29253 (_1!2961 (get!1652 lt!206011))))) e!283559))))

(assert (= tb!46171 b!462748))

(declare-fun m!732479 () Bool)

(assert (=> b!462748 m!732479))

(declare-fun m!732481 () Bool)

(assert (=> tb!46171 m!732481))

(assert (=> d!176111 t!72007))

(declare-fun b_and!49655 () Bool)

(assert (= b_and!49649 (and (=> t!72007 result!50854) b_and!49655)))

(declare-fun t!72009 () Bool)

(declare-fun tb!46173 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72009) tb!46173))

(declare-fun result!50856 () Bool)

(assert (= result!50856 result!50854))

(assert (=> d!176111 t!72009))

(declare-fun b_and!49657 () Bool)

(assert (= b_and!49645 (and (=> t!72009 result!50856) b_and!49657)))

(declare-fun t!72011 () Bool)

(declare-fun tb!46175 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72011) tb!46175))

(declare-fun result!50858 () Bool)

(assert (= result!50858 result!50854))

(assert (=> d!176111 t!72011))

(declare-fun b_and!49659 () Bool)

(assert (= b_and!49647 (and (=> t!72011 result!50858) b_and!49659)))

(declare-fun t!72013 () Bool)

(declare-fun tb!46177 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72013) tb!46177))

(declare-fun result!50860 () Bool)

(assert (= result!50860 result!50854))

(assert (=> d!176111 t!72013))

(declare-fun b_and!49661 () Bool)

(assert (= b_and!49651 (and (=> t!72013 result!50860) b_and!49661)))

(declare-fun tb!46179 () Bool)

(declare-fun t!72015 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72015) tb!46179))

(declare-fun result!50862 () Bool)

(assert (= result!50862 result!50854))

(assert (=> d!176111 t!72015))

(declare-fun b_and!49663 () Bool)

(assert (= b_and!49653 (and (=> t!72015 result!50862) b_and!49663)))

(declare-fun m!732483 () Bool)

(assert (=> d!176111 m!732483))

(declare-fun m!732485 () Bool)

(assert (=> d!176111 m!732485))

(assert (=> b!461575 d!176111))

(assert (=> b!461575 d!176029))

(declare-fun e!283561 () Bool)

(declare-fun lt!206693 () List!4503)

(declare-fun b!462752 () Bool)

(assert (=> b!462752 (= e!283561 (or (not (= lt!205901 Nil!4493)) (= lt!206693 (t!71883 lt!205896))))))

(declare-fun b!462749 () Bool)

(declare-fun e!283560 () List!4503)

(assert (=> b!462749 (= e!283560 lt!205901)))

(declare-fun b!462751 () Bool)

(declare-fun res!206005 () Bool)

(assert (=> b!462751 (=> (not res!206005) (not e!283561))))

(assert (=> b!462751 (= res!206005 (= (size!3674 lt!206693) (+ (size!3674 (t!71883 lt!205896)) (size!3674 lt!205901))))))

(declare-fun d!176113 () Bool)

(assert (=> d!176113 e!283561))

(declare-fun res!206004 () Bool)

(assert (=> d!176113 (=> (not res!206004) (not e!283561))))

(assert (=> d!176113 (= res!206004 (= (content!752 lt!206693) ((_ map or) (content!752 (t!71883 lt!205896)) (content!752 lt!205901))))))

(assert (=> d!176113 (= lt!206693 e!283560)))

(declare-fun c!93174 () Bool)

(assert (=> d!176113 (= c!93174 ((_ is Nil!4493) (t!71883 lt!205896)))))

(assert (=> d!176113 (= (++!1312 (t!71883 lt!205896) lt!205901) lt!206693)))

(declare-fun b!462750 () Bool)

(assert (=> b!462750 (= e!283560 (Cons!4493 (h!9890 (t!71883 lt!205896)) (++!1312 (t!71883 (t!71883 lt!205896)) lt!205901)))))

(assert (= (and d!176113 c!93174) b!462749))

(assert (= (and d!176113 (not c!93174)) b!462750))

(assert (= (and d!176113 res!206004) b!462751))

(assert (= (and b!462751 res!206005) b!462752))

(declare-fun m!732487 () Bool)

(assert (=> b!462751 m!732487))

(declare-fun m!732489 () Bool)

(assert (=> b!462751 m!732489))

(assert (=> b!462751 m!730235))

(declare-fun m!732491 () Bool)

(assert (=> d!176113 m!732491))

(declare-fun m!732493 () Bool)

(assert (=> d!176113 m!732493))

(assert (=> d!176113 m!730239))

(declare-fun m!732495 () Bool)

(assert (=> b!462750 m!732495))

(assert (=> b!462150 d!176113))

(declare-fun d!176115 () Bool)

(assert (=> d!176115 (= (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170))) (isBalanced!483 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170)))))))

(declare-fun bs!57421 () Bool)

(assert (= bs!57421 d!176115))

(declare-fun m!732497 () Bool)

(assert (=> bs!57421 m!732497))

(assert (=> tb!46093 d!176115))

(declare-fun d!176117 () Bool)

(assert (=> d!176117 (= (isDefined!1023 (maxPrefix!477 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170))) (not (isEmpty!3490 (maxPrefix!477 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))))

(declare-fun bs!57422 () Bool)

(assert (= bs!57422 d!176117))

(assert (=> bs!57422 m!730175))

(declare-fun m!732499 () Bool)

(assert (=> bs!57422 m!732499))

(assert (=> b!461490 d!176117))

(declare-fun b!462753 () Bool)

(declare-fun e!283562 () Bool)

(declare-fun e!283564 () Bool)

(assert (=> b!462753 (= e!283562 e!283564)))

(declare-fun res!206006 () Bool)

(assert (=> b!462753 (=> (not res!206006) (not e!283564))))

(declare-fun lt!206698 () Option!1184)

(assert (=> b!462753 (= res!206006 (isDefined!1023 lt!206698))))

(declare-fun b!462754 () Bool)

(declare-fun e!283563 () Option!1184)

(declare-fun lt!206697 () Option!1184)

(declare-fun lt!206695 () Option!1184)

(assert (=> b!462754 (= e!283563 (ite (and ((_ is None!1183) lt!206697) ((_ is None!1183) lt!206695)) None!1183 (ite ((_ is None!1183) lt!206695) lt!206697 (ite ((_ is None!1183) lt!206697) lt!206695 (ite (>= (size!3667 (_1!2961 (v!15532 lt!206697))) (size!3667 (_1!2961 (v!15532 lt!206695)))) lt!206697 lt!206695)))))))

(declare-fun call!32123 () Option!1184)

(assert (=> b!462754 (= lt!206697 call!32123)))

(assert (=> b!462754 (= lt!206695 (maxPrefix!477 thiss!17480 (t!71884 rules!1920) (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun b!462755 () Bool)

(assert (=> b!462755 (= e!283563 call!32123)))

(declare-fun b!462756 () Bool)

(declare-fun res!206007 () Bool)

(assert (=> b!462756 (=> (not res!206007) (not e!283564))))

(assert (=> b!462756 (= res!206007 (matchR!417 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206698)))) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206698))))))))

(declare-fun bm!32118 () Bool)

(assert (=> bm!32118 (= call!32123 (maxPrefixOneRule!229 thiss!17480 (h!9891 rules!1920) (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun d!176119 () Bool)

(assert (=> d!176119 e!283562))

(declare-fun res!206011 () Bool)

(assert (=> d!176119 (=> res!206011 e!283562)))

(assert (=> d!176119 (= res!206011 (isEmpty!3490 lt!206698))))

(assert (=> d!176119 (= lt!206698 e!283563)))

(declare-fun c!93175 () Bool)

(assert (=> d!176119 (= c!93175 (and ((_ is Cons!4494) rules!1920) ((_ is Nil!4494) (t!71884 rules!1920))))))

(declare-fun lt!206696 () Unit!8113)

(declare-fun lt!206694 () Unit!8113)

(assert (=> d!176119 (= lt!206696 lt!206694)))

(assert (=> d!176119 (isPrefix!527 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170) (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!176119 (= lt!206694 (lemmaIsPrefixRefl!295 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170) (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(assert (=> d!176119 (rulesValidInductive!290 thiss!17480 rules!1920)))

(assert (=> d!176119 (= (maxPrefix!477 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170)) lt!206698)))

(declare-fun b!462757 () Bool)

(assert (=> b!462757 (= e!283564 (contains!1008 rules!1920 (rule!1570 (_1!2961 (get!1652 lt!206698)))))))

(declare-fun b!462758 () Bool)

(declare-fun res!206009 () Bool)

(assert (=> b!462758 (=> (not res!206009) (not e!283564))))

(assert (=> b!462758 (= res!206009 (= (++!1312 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206698)))) (_2!2961 (get!1652 lt!206698))) (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun b!462759 () Bool)

(declare-fun res!206008 () Bool)

(assert (=> b!462759 (=> (not res!206008) (not e!283564))))

(assert (=> b!462759 (= res!206008 (< (size!3674 (_2!2961 (get!1652 lt!206698))) (size!3674 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!462760 () Bool)

(declare-fun res!206012 () Bool)

(assert (=> b!462760 (=> (not res!206012) (not e!283564))))

(assert (=> b!462760 (= res!206012 (= (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206698)))) (originalCharacters!918 (_1!2961 (get!1652 lt!206698)))))))

(declare-fun b!462761 () Bool)

(declare-fun res!206010 () Bool)

(assert (=> b!462761 (=> (not res!206010) (not e!283564))))

(assert (=> b!462761 (= res!206010 (= (value!29253 (_1!2961 (get!1652 lt!206698))) (apply!1155 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206698)))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!206698)))))))))

(assert (= (and d!176119 c!93175) b!462755))

(assert (= (and d!176119 (not c!93175)) b!462754))

(assert (= (or b!462755 b!462754) bm!32118))

(assert (= (and d!176119 (not res!206011)) b!462753))

(assert (= (and b!462753 res!206006) b!462760))

(assert (= (and b!462760 res!206012) b!462759))

(assert (= (and b!462759 res!206008) b!462758))

(assert (= (and b!462758 res!206009) b!462761))

(assert (= (and b!462761 res!206010) b!462756))

(assert (= (and b!462756 res!206007) b!462757))

(declare-fun m!732501 () Bool)

(assert (=> b!462756 m!732501))

(declare-fun m!732503 () Bool)

(assert (=> b!462756 m!732503))

(assert (=> b!462756 m!732503))

(declare-fun m!732505 () Bool)

(assert (=> b!462756 m!732505))

(assert (=> b!462756 m!732505))

(declare-fun m!732507 () Bool)

(assert (=> b!462756 m!732507))

(declare-fun m!732509 () Bool)

(assert (=> b!462753 m!732509))

(declare-fun m!732511 () Bool)

(assert (=> d!176119 m!732511))

(assert (=> d!176119 m!729855))

(assert (=> d!176119 m!729855))

(declare-fun m!732513 () Bool)

(assert (=> d!176119 m!732513))

(assert (=> d!176119 m!729855))

(assert (=> d!176119 m!729855))

(declare-fun m!732515 () Bool)

(assert (=> d!176119 m!732515))

(assert (=> d!176119 m!730215))

(assert (=> b!462760 m!732501))

(assert (=> b!462760 m!732503))

(assert (=> b!462760 m!732503))

(assert (=> b!462760 m!732505))

(assert (=> b!462759 m!732501))

(declare-fun m!732517 () Bool)

(assert (=> b!462759 m!732517))

(assert (=> b!462759 m!729855))

(declare-fun m!732519 () Bool)

(assert (=> b!462759 m!732519))

(assert (=> bm!32118 m!729855))

(declare-fun m!732521 () Bool)

(assert (=> bm!32118 m!732521))

(assert (=> b!462757 m!732501))

(declare-fun m!732523 () Bool)

(assert (=> b!462757 m!732523))

(assert (=> b!462754 m!729855))

(declare-fun m!732525 () Bool)

(assert (=> b!462754 m!732525))

(assert (=> b!462761 m!732501))

(declare-fun m!732527 () Bool)

(assert (=> b!462761 m!732527))

(assert (=> b!462761 m!732527))

(declare-fun m!732529 () Bool)

(assert (=> b!462761 m!732529))

(assert (=> b!462758 m!732501))

(assert (=> b!462758 m!732503))

(assert (=> b!462758 m!732503))

(assert (=> b!462758 m!732505))

(assert (=> b!462758 m!732505))

(declare-fun m!732531 () Bool)

(assert (=> b!462758 m!732531))

(assert (=> b!461490 d!176119))

(assert (=> b!461490 d!175677))

(declare-fun d!176121 () Bool)

(assert (=> d!176121 true))

(declare-fun order!4021 () Int)

(declare-fun lambda!13681 () Int)

(declare-fun dynLambda!2754 (Int Int) Int)

(assert (=> d!176121 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (rule!1570 separatorToken!170)))) (dynLambda!2754 order!4021 lambda!13681))))

(declare-fun Forall2!190 (Int) Bool)

(assert (=> d!176121 (= (equivClasses!332 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toValue!1694 (transformation!875 (rule!1570 separatorToken!170)))) (Forall2!190 lambda!13681))))

(declare-fun bs!57423 () Bool)

(assert (= bs!57423 d!176121))

(declare-fun m!732533 () Bool)

(assert (=> bs!57423 m!732533))

(assert (=> b!461793 d!176121))

(declare-fun bs!57424 () Bool)

(declare-fun d!176123 () Bool)

(assert (= bs!57424 (and d!176123 b!462600)))

(declare-fun lambda!13684 () Int)

(assert (=> bs!57424 (= lambda!13684 lambda!13678)))

(assert (=> d!176123 true))

(assert (=> d!176123 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2752 order!4019 lambda!13684))))

(assert (=> d!176123 true))

(assert (=> d!176123 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2752 order!4019 lambda!13684))))

(declare-fun Forall!214 (Int) Bool)

(assert (=> d!176123 (= (semiInverseModEq!349 (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (Forall!214 lambda!13684))))

(declare-fun bs!57425 () Bool)

(assert (= bs!57425 d!176123))

(declare-fun m!732535 () Bool)

(assert (=> bs!57425 m!732535))

(assert (=> d!175621 d!176123))

(declare-fun d!176125 () Bool)

(declare-fun res!206015 () Bool)

(declare-fun e!283567 () Bool)

(assert (=> d!176125 (=> res!206015 e!283567)))

(assert (=> d!176125 (= res!206015 ((_ is Nil!4495) lt!205960))))

(assert (=> d!176125 (= (forall!1308 lt!205960 lambda!13617) e!283567)))

(declare-fun b!462770 () Bool)

(declare-fun e!283568 () Bool)

(assert (=> b!462770 (= e!283567 e!283568)))

(declare-fun res!206016 () Bool)

(assert (=> b!462770 (=> (not res!206016) (not e!283568))))

(assert (=> b!462770 (= res!206016 (dynLambda!2749 lambda!13617 (h!9892 lt!205960)))))

(declare-fun b!462771 () Bool)

(assert (=> b!462771 (= e!283568 (forall!1308 (t!71885 lt!205960) lambda!13617))))

(assert (= (and d!176125 (not res!206015)) b!462770))

(assert (= (and b!462770 res!206016) b!462771))

(declare-fun b_lambda!19233 () Bool)

(assert (=> (not b_lambda!19233) (not b!462770)))

(declare-fun m!732537 () Bool)

(assert (=> b!462770 m!732537))

(declare-fun m!732539 () Bool)

(assert (=> b!462771 m!732539))

(assert (=> b!461448 d!176125))

(declare-fun d!176127 () Bool)

(declare-fun lt!206701 () Int)

(assert (=> d!176127 (>= lt!206701 0)))

(declare-fun e!283571 () Int)

(assert (=> d!176127 (= lt!206701 e!283571)))

(declare-fun c!93178 () Bool)

(assert (=> d!176127 (= c!93178 ((_ is Nil!4493) lt!205920))))

(assert (=> d!176127 (= (size!3674 lt!205920) lt!206701)))

(declare-fun b!462776 () Bool)

(assert (=> b!462776 (= e!283571 0)))

(declare-fun b!462777 () Bool)

(assert (=> b!462777 (= e!283571 (+ 1 (size!3674 (t!71883 lt!205920))))))

(assert (= (and d!176127 c!93178) b!462776))

(assert (= (and d!176127 (not c!93178)) b!462777))

(declare-fun m!732541 () Bool)

(assert (=> b!462777 m!732541))

(assert (=> b!461548 d!176127))

(declare-fun d!176129 () Bool)

(declare-fun lt!206702 () Int)

(assert (=> d!176129 (>= lt!206702 0)))

(declare-fun e!283572 () Int)

(assert (=> d!176129 (= lt!206702 e!283572)))

(declare-fun c!93179 () Bool)

(assert (=> d!176129 (= c!93179 ((_ is Nil!4493) lt!205905))))

(assert (=> d!176129 (= (size!3674 lt!205905) lt!206702)))

(declare-fun b!462778 () Bool)

(assert (=> b!462778 (= e!283572 0)))

(declare-fun b!462779 () Bool)

(assert (=> b!462779 (= e!283572 (+ 1 (size!3674 (t!71883 lt!205905))))))

(assert (= (and d!176129 c!93179) b!462778))

(assert (= (and d!176129 (not c!93179)) b!462779))

(assert (=> b!462779 m!732447))

(assert (=> b!461548 d!176129))

(declare-fun d!176131 () Bool)

(assert (=> d!176131 (= (head!1134 lt!205905) (h!9890 lt!205905))))

(assert (=> b!461542 d!176131))

(declare-fun d!176133 () Bool)

(assert (=> d!176133 (= (head!1134 lt!205895) (h!9890 lt!205895))))

(assert (=> b!461542 d!176133))

(declare-fun d!176135 () Bool)

(declare-fun lt!206703 () BalanceConc!3152)

(assert (=> d!176135 (= (list!2004 lt!206703) (originalCharacters!918 (ite c!92976 separatorToken!170 call!32053)))))

(assert (=> d!176135 (= lt!206703 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (ite c!92976 separatorToken!170 call!32053)))) (value!29253 (ite c!92976 separatorToken!170 call!32053))))))

(assert (=> d!176135 (= (charsOf!518 (ite c!92976 separatorToken!170 call!32053)) lt!206703)))

(declare-fun b_lambda!19235 () Bool)

(assert (=> (not b_lambda!19235) (not d!176135)))

(declare-fun t!72017 () Bool)

(declare-fun tb!46181 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92976 separatorToken!170 call!32053))))) t!72017) tb!46181))

(declare-fun b!462780 () Bool)

(declare-fun e!283573 () Bool)

(declare-fun tp!127796 () Bool)

(assert (=> b!462780 (= e!283573 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (ite c!92976 separatorToken!170 call!32053)))) (value!29253 (ite c!92976 separatorToken!170 call!32053))))) tp!127796))))

(declare-fun result!50864 () Bool)

(assert (=> tb!46181 (= result!50864 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (ite c!92976 separatorToken!170 call!32053)))) (value!29253 (ite c!92976 separatorToken!170 call!32053)))) e!283573))))

(assert (= tb!46181 b!462780))

(declare-fun m!732543 () Bool)

(assert (=> b!462780 m!732543))

(declare-fun m!732545 () Bool)

(assert (=> tb!46181 m!732545))

(assert (=> d!176135 t!72017))

(declare-fun b_and!49665 () Bool)

(assert (= b_and!49661 (and (=> t!72017 result!50864) b_and!49665)))

(declare-fun tb!46183 () Bool)

(declare-fun t!72019 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92976 separatorToken!170 call!32053))))) t!72019) tb!46183))

(declare-fun result!50866 () Bool)

(assert (= result!50866 result!50864))

(assert (=> d!176135 t!72019))

(declare-fun b_and!49667 () Bool)

(assert (= b_and!49659 (and (=> t!72019 result!50866) b_and!49667)))

(declare-fun tb!46185 () Bool)

(declare-fun t!72021 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92976 separatorToken!170 call!32053))))) t!72021) tb!46185))

(declare-fun result!50868 () Bool)

(assert (= result!50868 result!50864))

(assert (=> d!176135 t!72021))

(declare-fun b_and!49669 () Bool)

(assert (= b_and!49655 (and (=> t!72021 result!50868) b_and!49669)))

(declare-fun tb!46187 () Bool)

(declare-fun t!72023 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92976 separatorToken!170 call!32053))))) t!72023) tb!46187))

(declare-fun result!50870 () Bool)

(assert (= result!50870 result!50864))

(assert (=> d!176135 t!72023))

(declare-fun b_and!49671 () Bool)

(assert (= b_and!49657 (and (=> t!72023 result!50870) b_and!49671)))

(declare-fun t!72025 () Bool)

(declare-fun tb!46189 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92976 separatorToken!170 call!32053))))) t!72025) tb!46189))

(declare-fun result!50872 () Bool)

(assert (= result!50872 result!50864))

(assert (=> d!176135 t!72025))

(declare-fun b_and!49673 () Bool)

(assert (= b_and!49663 (and (=> t!72025 result!50872) b_and!49673)))

(declare-fun m!732547 () Bool)

(assert (=> d!176135 m!732547))

(declare-fun m!732549 () Bool)

(assert (=> d!176135 m!732549))

(assert (=> bm!32045 d!176135))

(declare-fun b!462790 () Bool)

(declare-fun res!206026 () Bool)

(declare-fun e!283576 () Bool)

(assert (=> b!462790 (=> (not res!206026) (not e!283576))))

(declare-fun height!239 (Conc!1572) Int)

(declare-fun ++!1317 (Conc!1572 Conc!1572) Conc!1572)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!462790 (= res!206026 (<= (height!239 (++!1317 (c!92854 call!32080) (c!92854 lt!206317))) (+ (max!0 (height!239 (c!92854 call!32080)) (height!239 (c!92854 lt!206317))) 1)))))

(declare-fun b!462789 () Bool)

(declare-fun res!206025 () Bool)

(assert (=> b!462789 (=> (not res!206025) (not e!283576))))

(assert (=> b!462789 (= res!206025 (isBalanced!483 (++!1317 (c!92854 call!32080) (c!92854 lt!206317))))))

(declare-fun lt!206706 () BalanceConc!3152)

(declare-fun b!462792 () Bool)

(assert (=> b!462792 (= e!283576 (= (list!2004 lt!206706) (++!1312 (list!2004 call!32080) (list!2004 lt!206317))))))

(declare-fun b!462791 () Bool)

(declare-fun res!206028 () Bool)

(assert (=> b!462791 (=> (not res!206028) (not e!283576))))

(assert (=> b!462791 (= res!206028 (>= (height!239 (++!1317 (c!92854 call!32080) (c!92854 lt!206317))) (max!0 (height!239 (c!92854 call!32080)) (height!239 (c!92854 lt!206317)))))))

(declare-fun d!176137 () Bool)

(assert (=> d!176137 e!283576))

(declare-fun res!206027 () Bool)

(assert (=> d!176137 (=> (not res!206027) (not e!283576))))

(declare-fun appendAssocInst!105 (Conc!1572 Conc!1572) Bool)

(assert (=> d!176137 (= res!206027 (appendAssocInst!105 (c!92854 call!32080) (c!92854 lt!206317)))))

(assert (=> d!176137 (= lt!206706 (BalanceConc!3153 (++!1317 (c!92854 call!32080) (c!92854 lt!206317))))))

(assert (=> d!176137 (= (++!1314 call!32080 lt!206317) lt!206706)))

(assert (= (and d!176137 res!206027) b!462789))

(assert (= (and b!462789 res!206025) b!462790))

(assert (= (and b!462790 res!206026) b!462791))

(assert (= (and b!462791 res!206028) b!462792))

(declare-fun m!732551 () Bool)

(assert (=> b!462789 m!732551))

(assert (=> b!462789 m!732551))

(declare-fun m!732553 () Bool)

(assert (=> b!462789 m!732553))

(declare-fun m!732555 () Bool)

(assert (=> d!176137 m!732555))

(assert (=> d!176137 m!732551))

(declare-fun m!732557 () Bool)

(assert (=> b!462790 m!732557))

(declare-fun m!732559 () Bool)

(assert (=> b!462790 m!732559))

(declare-fun m!732561 () Bool)

(assert (=> b!462790 m!732561))

(assert (=> b!462790 m!732557))

(assert (=> b!462790 m!732559))

(assert (=> b!462790 m!732551))

(declare-fun m!732563 () Bool)

(assert (=> b!462790 m!732563))

(assert (=> b!462790 m!732551))

(declare-fun m!732565 () Bool)

(assert (=> b!462792 m!732565))

(declare-fun m!732567 () Bool)

(assert (=> b!462792 m!732567))

(assert (=> b!462792 m!731233))

(assert (=> b!462792 m!732567))

(assert (=> b!462792 m!731233))

(declare-fun m!732569 () Bool)

(assert (=> b!462792 m!732569))

(assert (=> b!462791 m!732557))

(assert (=> b!462791 m!732559))

(assert (=> b!462791 m!732561))

(assert (=> b!462791 m!732557))

(assert (=> b!462791 m!732559))

(assert (=> b!462791 m!732551))

(assert (=> b!462791 m!732563))

(assert (=> b!462791 m!732551))

(assert (=> b!462134 d!176137))

(declare-fun d!176139 () Bool)

(assert (=> d!176139 (= (list!2005 lt!206125) (list!2007 (c!92856 lt!206125)))))

(declare-fun bs!57426 () Bool)

(assert (= bs!57426 d!176139))

(declare-fun m!732571 () Bool)

(assert (=> bs!57426 m!732571))

(assert (=> d!175615 d!176139))

(declare-fun d!176141 () Bool)

(declare-fun e!283581 () Bool)

(assert (=> d!176141 e!283581))

(declare-fun res!206033 () Bool)

(assert (=> d!176141 (=> (not res!206033) (not e!283581))))

(declare-fun lt!206731 () BalanceConc!3154)

(assert (=> d!176141 (= res!206033 (= (list!2005 lt!206731) (Cons!4495 (h!9892 tokens!465) Nil!4495)))))

(declare-fun choose!3480 (Token!1494) BalanceConc!3154)

(assert (=> d!176141 (= lt!206731 (choose!3480 (h!9892 tokens!465)))))

(assert (=> d!176141 (= (singleton!201 (h!9892 tokens!465)) lt!206731)))

(declare-fun b!462797 () Bool)

(assert (=> b!462797 (= e!283581 (isBalanced!480 (c!92856 lt!206731)))))

(assert (= (and d!176141 res!206033) b!462797))

(declare-fun m!732573 () Bool)

(assert (=> d!176141 m!732573))

(declare-fun m!732575 () Bool)

(assert (=> d!176141 m!732575))

(declare-fun m!732577 () Bool)

(assert (=> b!462797 m!732577))

(assert (=> d!175615 d!176141))

(declare-fun b!462805 () Bool)

(declare-fun res!206037 () Bool)

(declare-fun e!283584 () Bool)

(assert (=> b!462805 (=> (not res!206037) (not e!283584))))

(assert (=> b!462805 (= res!206037 (<= (height!239 (++!1317 (c!92854 call!32051) (c!92854 lt!206235))) (+ (max!0 (height!239 (c!92854 call!32051)) (height!239 (c!92854 lt!206235))) 1)))))

(declare-fun b!462804 () Bool)

(declare-fun res!206036 () Bool)

(assert (=> b!462804 (=> (not res!206036) (not e!283584))))

(assert (=> b!462804 (= res!206036 (isBalanced!483 (++!1317 (c!92854 call!32051) (c!92854 lt!206235))))))

(declare-fun lt!206732 () BalanceConc!3152)

(declare-fun b!462807 () Bool)

(assert (=> b!462807 (= e!283584 (= (list!2004 lt!206732) (++!1312 (list!2004 call!32051) (list!2004 lt!206235))))))

(declare-fun b!462806 () Bool)

(declare-fun res!206039 () Bool)

(assert (=> b!462806 (=> (not res!206039) (not e!283584))))

(assert (=> b!462806 (= res!206039 (>= (height!239 (++!1317 (c!92854 call!32051) (c!92854 lt!206235))) (max!0 (height!239 (c!92854 call!32051)) (height!239 (c!92854 lt!206235)))))))

(declare-fun d!176143 () Bool)

(assert (=> d!176143 e!283584))

(declare-fun res!206038 () Bool)

(assert (=> d!176143 (=> (not res!206038) (not e!283584))))

(assert (=> d!176143 (= res!206038 (appendAssocInst!105 (c!92854 call!32051) (c!92854 lt!206235)))))

(assert (=> d!176143 (= lt!206732 (BalanceConc!3153 (++!1317 (c!92854 call!32051) (c!92854 lt!206235))))))

(assert (=> d!176143 (= (++!1314 call!32051 lt!206235) lt!206732)))

(assert (= (and d!176143 res!206038) b!462804))

(assert (= (and b!462804 res!206036) b!462805))

(assert (= (and b!462805 res!206037) b!462806))

(assert (= (and b!462806 res!206039) b!462807))

(declare-fun m!732579 () Bool)

(assert (=> b!462804 m!732579))

(assert (=> b!462804 m!732579))

(declare-fun m!732581 () Bool)

(assert (=> b!462804 m!732581))

(declare-fun m!732583 () Bool)

(assert (=> d!176143 m!732583))

(assert (=> d!176143 m!732579))

(declare-fun m!732585 () Bool)

(assert (=> b!462805 m!732585))

(declare-fun m!732587 () Bool)

(assert (=> b!462805 m!732587))

(declare-fun m!732589 () Bool)

(assert (=> b!462805 m!732589))

(assert (=> b!462805 m!732585))

(assert (=> b!462805 m!732587))

(assert (=> b!462805 m!732579))

(declare-fun m!732591 () Bool)

(assert (=> b!462805 m!732591))

(assert (=> b!462805 m!732579))

(declare-fun m!732593 () Bool)

(assert (=> b!462807 m!732593))

(declare-fun m!732595 () Bool)

(assert (=> b!462807 m!732595))

(assert (=> b!462807 m!730929))

(assert (=> b!462807 m!732595))

(assert (=> b!462807 m!730929))

(declare-fun m!732597 () Bool)

(assert (=> b!462807 m!732597))

(assert (=> b!462806 m!732585))

(assert (=> b!462806 m!732587))

(assert (=> b!462806 m!732589))

(assert (=> b!462806 m!732585))

(assert (=> b!462806 m!732587))

(assert (=> b!462806 m!732579))

(assert (=> b!462806 m!732591))

(assert (=> b!462806 m!732579))

(assert (=> b!461922 d!176143))

(declare-fun d!176145 () Bool)

(declare-fun lt!206747 () Int)

(assert (=> d!176145 (= lt!206747 (size!3674 (list!2004 (_2!2963 lt!206066))))))

(declare-fun size!3678 (Conc!1572) Int)

(assert (=> d!176145 (= lt!206747 (size!3678 (c!92854 (_2!2963 lt!206066))))))

(assert (=> d!176145 (= (size!3673 (_2!2963 lt!206066)) lt!206747)))

(declare-fun bs!57427 () Bool)

(assert (= bs!57427 d!176145))

(assert (=> bs!57427 m!730459))

(assert (=> bs!57427 m!730459))

(declare-fun m!732599 () Bool)

(assert (=> bs!57427 m!732599))

(declare-fun m!732601 () Bool)

(assert (=> bs!57427 m!732601))

(assert (=> b!461657 d!176145))

(declare-fun d!176147 () Bool)

(declare-fun lt!206748 () Int)

(assert (=> d!176147 (= lt!206748 (size!3674 (list!2004 lt!205918)))))

(assert (=> d!176147 (= lt!206748 (size!3678 (c!92854 lt!205918)))))

(assert (=> d!176147 (= (size!3673 lt!205918) lt!206748)))

(declare-fun bs!57428 () Bool)

(assert (= bs!57428 d!176147))

(assert (=> bs!57428 m!729851))

(assert (=> bs!57428 m!729851))

(declare-fun m!732603 () Bool)

(assert (=> bs!57428 m!732603))

(declare-fun m!732605 () Bool)

(assert (=> bs!57428 m!732605))

(assert (=> b!461657 d!176147))

(declare-fun b!462854 () Bool)

(declare-fun e!283608 () Bool)

(assert (=> b!462854 (= e!283608 (matchR!417 (regex!875 (h!9891 rules!1920)) (_1!2966 (findLongestMatchInner!115 (regex!875 (h!9891 rules!1920)) Nil!4493 (size!3674 Nil!4493) lt!205920 lt!205920 (size!3674 lt!205920)))))))

(declare-fun b!462855 () Bool)

(declare-fun res!206065 () Bool)

(declare-fun e!283610 () Bool)

(assert (=> b!462855 (=> (not res!206065) (not e!283610))))

(declare-fun lt!206782 () Option!1184)

(assert (=> b!462855 (= res!206065 (< (size!3674 (_2!2961 (get!1652 lt!206782))) (size!3674 lt!205920)))))

(declare-fun b!462857 () Bool)

(declare-fun res!206064 () Bool)

(assert (=> b!462857 (=> (not res!206064) (not e!283610))))

(assert (=> b!462857 (= res!206064 (= (++!1312 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206782)))) (_2!2961 (get!1652 lt!206782))) lt!205920))))

(declare-fun b!462858 () Bool)

(assert (=> b!462858 (= e!283610 (= (size!3667 (_1!2961 (get!1652 lt!206782))) (size!3674 (originalCharacters!918 (_1!2961 (get!1652 lt!206782))))))))

(declare-fun b!462859 () Bool)

(declare-fun e!283611 () Option!1184)

(declare-fun lt!206783 () tuple2!5500)

(assert (=> b!462859 (= e!283611 (Some!1183 (tuple2!5491 (Token!1495 (apply!1155 (transformation!875 (h!9891 rules!1920)) (seqFromList!1115 (_1!2966 lt!206783))) (h!9891 rules!1920) (size!3673 (seqFromList!1115 (_1!2966 lt!206783))) (_1!2966 lt!206783)) (_2!2966 lt!206783))))))

(declare-fun lt!206781 () Unit!8113)

(assert (=> b!462859 (= lt!206781 (longestMatchIsAcceptedByMatchOrIsEmpty!99 (regex!875 (h!9891 rules!1920)) lt!205920))))

(declare-fun res!206068 () Bool)

(assert (=> b!462859 (= res!206068 (isEmpty!3484 (_1!2966 (findLongestMatchInner!115 (regex!875 (h!9891 rules!1920)) Nil!4493 (size!3674 Nil!4493) lt!205920 lt!205920 (size!3674 lt!205920)))))))

(assert (=> b!462859 (=> res!206068 e!283608)))

(assert (=> b!462859 e!283608))

(declare-fun lt!206784 () Unit!8113)

(assert (=> b!462859 (= lt!206784 lt!206781)))

(declare-fun lt!206785 () Unit!8113)

(declare-fun lemmaSemiInverse!93 (TokenValueInjection!1566 BalanceConc!3152) Unit!8113)

(assert (=> b!462859 (= lt!206785 (lemmaSemiInverse!93 (transformation!875 (h!9891 rules!1920)) (seqFromList!1115 (_1!2966 lt!206783))))))

(declare-fun b!462860 () Bool)

(declare-fun res!206066 () Bool)

(assert (=> b!462860 (=> (not res!206066) (not e!283610))))

(assert (=> b!462860 (= res!206066 (= (rule!1570 (_1!2961 (get!1652 lt!206782))) (h!9891 rules!1920)))))

(declare-fun b!462856 () Bool)

(assert (=> b!462856 (= e!283611 None!1183)))

(declare-fun d!176149 () Bool)

(declare-fun e!283609 () Bool)

(assert (=> d!176149 e!283609))

(declare-fun res!206063 () Bool)

(assert (=> d!176149 (=> res!206063 e!283609)))

(assert (=> d!176149 (= res!206063 (isEmpty!3490 lt!206782))))

(assert (=> d!176149 (= lt!206782 e!283611)))

(declare-fun c!93197 () Bool)

(assert (=> d!176149 (= c!93197 (isEmpty!3484 (_1!2966 lt!206783)))))

(declare-fun findLongestMatch!95 (Regex!1099 List!4503) tuple2!5500)

(assert (=> d!176149 (= lt!206783 (findLongestMatch!95 (regex!875 (h!9891 rules!1920)) lt!205920))))

(assert (=> d!176149 (ruleValid!136 thiss!17480 (h!9891 rules!1920))))

(assert (=> d!176149 (= (maxPrefixOneRule!229 thiss!17480 (h!9891 rules!1920) lt!205920) lt!206782)))

(declare-fun b!462861 () Bool)

(assert (=> b!462861 (= e!283609 e!283610)))

(declare-fun res!206062 () Bool)

(assert (=> b!462861 (=> (not res!206062) (not e!283610))))

(assert (=> b!462861 (= res!206062 (matchR!417 (regex!875 (h!9891 rules!1920)) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206782))))))))

(declare-fun b!462862 () Bool)

(declare-fun res!206067 () Bool)

(assert (=> b!462862 (=> (not res!206067) (not e!283610))))

(assert (=> b!462862 (= res!206067 (= (value!29253 (_1!2961 (get!1652 lt!206782))) (apply!1155 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206782)))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!206782)))))))))

(assert (= (and d!176149 c!93197) b!462856))

(assert (= (and d!176149 (not c!93197)) b!462859))

(assert (= (and b!462859 (not res!206068)) b!462854))

(assert (= (and d!176149 (not res!206063)) b!462861))

(assert (= (and b!462861 res!206062) b!462857))

(assert (= (and b!462857 res!206064) b!462855))

(assert (= (and b!462855 res!206065) b!462860))

(assert (= (and b!462860 res!206066) b!462862))

(assert (= (and b!462862 res!206067) b!462858))

(declare-fun m!732717 () Bool)

(assert (=> b!462862 m!732717))

(declare-fun m!732719 () Bool)

(assert (=> b!462862 m!732719))

(assert (=> b!462862 m!732719))

(declare-fun m!732721 () Bool)

(assert (=> b!462862 m!732721))

(assert (=> b!462860 m!732717))

(assert (=> b!462859 m!732193))

(assert (=> b!462859 m!730219))

(declare-fun m!732723 () Bool)

(assert (=> b!462859 m!732723))

(declare-fun m!732725 () Bool)

(assert (=> b!462859 m!732725))

(declare-fun m!732727 () Bool)

(assert (=> b!462859 m!732727))

(assert (=> b!462859 m!732193))

(assert (=> b!462859 m!730219))

(declare-fun m!732729 () Bool)

(assert (=> b!462859 m!732729))

(assert (=> b!462859 m!732725))

(declare-fun m!732731 () Bool)

(assert (=> b!462859 m!732731))

(declare-fun m!732733 () Bool)

(assert (=> b!462859 m!732733))

(assert (=> b!462859 m!732725))

(assert (=> b!462859 m!732725))

(declare-fun m!732735 () Bool)

(assert (=> b!462859 m!732735))

(assert (=> b!462858 m!732717))

(declare-fun m!732737 () Bool)

(assert (=> b!462858 m!732737))

(declare-fun m!732739 () Bool)

(assert (=> d!176149 m!732739))

(declare-fun m!732741 () Bool)

(assert (=> d!176149 m!732741))

(declare-fun m!732743 () Bool)

(assert (=> d!176149 m!732743))

(assert (=> d!176149 m!732213))

(assert (=> b!462855 m!732717))

(declare-fun m!732745 () Bool)

(assert (=> b!462855 m!732745))

(assert (=> b!462855 m!730219))

(assert (=> b!462857 m!732717))

(declare-fun m!732747 () Bool)

(assert (=> b!462857 m!732747))

(assert (=> b!462857 m!732747))

(declare-fun m!732749 () Bool)

(assert (=> b!462857 m!732749))

(assert (=> b!462857 m!732749))

(declare-fun m!732751 () Bool)

(assert (=> b!462857 m!732751))

(assert (=> b!462861 m!732717))

(assert (=> b!462861 m!732747))

(assert (=> b!462861 m!732747))

(assert (=> b!462861 m!732749))

(assert (=> b!462861 m!732749))

(declare-fun m!732753 () Bool)

(assert (=> b!462861 m!732753))

(assert (=> b!462854 m!732193))

(assert (=> b!462854 m!730219))

(assert (=> b!462854 m!732193))

(assert (=> b!462854 m!730219))

(assert (=> b!462854 m!732729))

(declare-fun m!732755 () Bool)

(assert (=> b!462854 m!732755))

(assert (=> bm!31978 d!176149))

(declare-fun d!176169 () Bool)

(declare-fun lt!206786 () Int)

(assert (=> d!176169 (>= lt!206786 0)))

(declare-fun e!283612 () Int)

(assert (=> d!176169 (= lt!206786 e!283612)))

(declare-fun c!93198 () Bool)

(assert (=> d!176169 (= c!93198 ((_ is Nil!4493) lt!205989))))

(assert (=> d!176169 (= (size!3674 lt!205989) lt!206786)))

(declare-fun b!462863 () Bool)

(assert (=> b!462863 (= e!283612 0)))

(declare-fun b!462864 () Bool)

(assert (=> b!462864 (= e!283612 (+ 1 (size!3674 (t!71883 lt!205989))))))

(assert (= (and d!176169 c!93198) b!462863))

(assert (= (and d!176169 (not c!93198)) b!462864))

(declare-fun m!732757 () Bool)

(assert (=> b!462864 m!732757))

(assert (=> b!461531 d!176169))

(assert (=> b!461531 d!176129))

(declare-fun d!176171 () Bool)

(declare-fun lt!206787 () Int)

(assert (=> d!176171 (>= lt!206787 0)))

(declare-fun e!283613 () Int)

(assert (=> d!176171 (= lt!206787 e!283613)))

(declare-fun c!93199 () Bool)

(assert (=> d!176171 (= c!93199 ((_ is Nil!4493) lt!205901))))

(assert (=> d!176171 (= (size!3674 lt!205901) lt!206787)))

(declare-fun b!462865 () Bool)

(assert (=> b!462865 (= e!283613 0)))

(declare-fun b!462866 () Bool)

(assert (=> b!462866 (= e!283613 (+ 1 (size!3674 (t!71883 lt!205901))))))

(assert (= (and d!176171 c!93199) b!462865))

(assert (= (and d!176171 (not c!93199)) b!462866))

(declare-fun m!732759 () Bool)

(assert (=> b!462866 m!732759))

(assert (=> b!461531 d!176171))

(declare-fun d!176173 () Bool)

(declare-fun lt!206789 () BalanceConc!3152)

(assert (=> d!176173 (= (list!2004 lt!206789) (printListTailRec!216 thiss!17480 (dropList!252 lt!205900 (+ 0 1)) (list!2004 (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (apply!1157 lt!205900 0))))))))

(declare-fun e!283614 () BalanceConc!3152)

(assert (=> d!176173 (= lt!206789 e!283614)))

(declare-fun c!93200 () Bool)

(assert (=> d!176173 (= c!93200 (>= (+ 0 1) (size!3672 lt!205900)))))

(declare-fun e!283615 () Bool)

(assert (=> d!176173 e!283615))

(declare-fun res!206069 () Bool)

(assert (=> d!176173 (=> (not res!206069) (not e!283615))))

(assert (=> d!176173 (= res!206069 (>= (+ 0 1) 0))))

(assert (=> d!176173 (= (printTailRec!447 thiss!17480 lt!205900 (+ 0 1) (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (apply!1157 lt!205900 0)))) lt!206789)))

(declare-fun b!462867 () Bool)

(assert (=> b!462867 (= e!283615 (<= (+ 0 1) (size!3672 lt!205900)))))

(declare-fun b!462868 () Bool)

(assert (=> b!462868 (= e!283614 (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (apply!1157 lt!205900 0))))))

(declare-fun b!462869 () Bool)

(assert (=> b!462869 (= e!283614 (printTailRec!447 thiss!17480 lt!205900 (+ 0 1 1) (++!1314 (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (apply!1157 lt!205900 0))) (charsOf!518 (apply!1157 lt!205900 (+ 0 1))))))))

(declare-fun lt!206792 () List!4505)

(assert (=> b!462869 (= lt!206792 (list!2005 lt!205900))))

(declare-fun lt!206790 () Unit!8113)

(assert (=> b!462869 (= lt!206790 (lemmaDropApply!292 lt!206792 (+ 0 1)))))

(assert (=> b!462869 (= (head!1132 (drop!321 lt!206792 (+ 0 1))) (apply!1158 lt!206792 (+ 0 1)))))

(declare-fun lt!206788 () Unit!8113)

(assert (=> b!462869 (= lt!206788 lt!206790)))

(declare-fun lt!206794 () List!4505)

(assert (=> b!462869 (= lt!206794 (list!2005 lt!205900))))

(declare-fun lt!206793 () Unit!8113)

(assert (=> b!462869 (= lt!206793 (lemmaDropTail!284 lt!206794 (+ 0 1)))))

(assert (=> b!462869 (= (tail!654 (drop!321 lt!206794 (+ 0 1))) (drop!321 lt!206794 (+ 0 1 1)))))

(declare-fun lt!206791 () Unit!8113)

(assert (=> b!462869 (= lt!206791 lt!206793)))

(assert (= (and d!176173 res!206069) b!462867))

(assert (= (and d!176173 c!93200) b!462868))

(assert (= (and d!176173 (not c!93200)) b!462869))

(assert (=> d!176173 m!730577))

(declare-fun m!732761 () Bool)

(assert (=> d!176173 m!732761))

(declare-fun m!732763 () Bool)

(assert (=> d!176173 m!732763))

(assert (=> d!176173 m!732761))

(declare-fun m!732765 () Bool)

(assert (=> d!176173 m!732765))

(assert (=> d!176173 m!732763))

(declare-fun m!732767 () Bool)

(assert (=> d!176173 m!732767))

(assert (=> d!176173 m!730555))

(assert (=> b!462867 m!730555))

(declare-fun m!732769 () Bool)

(assert (=> b!462869 m!732769))

(declare-fun m!732771 () Bool)

(assert (=> b!462869 m!732771))

(declare-fun m!732773 () Bool)

(assert (=> b!462869 m!732773))

(declare-fun m!732775 () Bool)

(assert (=> b!462869 m!732775))

(declare-fun m!732777 () Bool)

(assert (=> b!462869 m!732777))

(declare-fun m!732779 () Bool)

(assert (=> b!462869 m!732779))

(declare-fun m!732781 () Bool)

(assert (=> b!462869 m!732781))

(assert (=> b!462869 m!730571))

(assert (=> b!462869 m!732779))

(declare-fun m!732783 () Bool)

(assert (=> b!462869 m!732783))

(assert (=> b!462869 m!730577))

(declare-fun m!732785 () Bool)

(assert (=> b!462869 m!732785))

(declare-fun m!732787 () Bool)

(assert (=> b!462869 m!732787))

(assert (=> b!462869 m!732781))

(declare-fun m!732789 () Bool)

(assert (=> b!462869 m!732789))

(assert (=> b!462869 m!732787))

(declare-fun m!732791 () Bool)

(assert (=> b!462869 m!732791))

(assert (=> b!462869 m!732771))

(assert (=> b!462869 m!732785))

(assert (=> b!461779 d!176173))

(declare-fun d!176175 () Bool)

(assert (=> d!176175 (= (head!1132 (drop!321 lt!206117 0)) (h!9892 (drop!321 lt!206117 0)))))

(assert (=> b!461779 d!176175))

(declare-fun d!176177 () Bool)

(assert (=> d!176177 (= (list!2005 lt!205900) (list!2007 (c!92856 lt!205900)))))

(declare-fun bs!57432 () Bool)

(assert (= bs!57432 d!176177))

(declare-fun m!732793 () Bool)

(assert (=> bs!57432 m!732793))

(assert (=> b!461779 d!176177))

(declare-fun b!462888 () Bool)

(declare-fun e!283626 () List!4505)

(assert (=> b!462888 (= e!283626 (drop!321 (t!71885 lt!206119) (- (+ 0 1) 1)))))

(declare-fun b!462889 () Bool)

(declare-fun e!283628 () Int)

(declare-fun call!32127 () Int)

(assert (=> b!462889 (= e!283628 (- call!32127 (+ 0 1)))))

(declare-fun b!462890 () Bool)

(declare-fun e!283629 () Int)

(assert (=> b!462890 (= e!283629 call!32127)))

(declare-fun d!176179 () Bool)

(declare-fun e!283630 () Bool)

(assert (=> d!176179 e!283630))

(declare-fun res!206072 () Bool)

(assert (=> d!176179 (=> (not res!206072) (not e!283630))))

(declare-fun lt!206797 () List!4505)

(assert (=> d!176179 (= res!206072 (= ((_ map implies) (content!753 lt!206797) (content!753 lt!206119)) ((as const (InoxSet Token!1494)) true)))))

(declare-fun e!283627 () List!4505)

(assert (=> d!176179 (= lt!206797 e!283627)))

(declare-fun c!93209 () Bool)

(assert (=> d!176179 (= c!93209 ((_ is Nil!4495) lt!206119))))

(assert (=> d!176179 (= (drop!321 lt!206119 (+ 0 1)) lt!206797)))

(declare-fun b!462891 () Bool)

(assert (=> b!462891 (= e!283628 0)))

(declare-fun bm!32122 () Bool)

(assert (=> bm!32122 (= call!32127 (size!3675 lt!206119))))

(declare-fun b!462892 () Bool)

(assert (=> b!462892 (= e!283627 e!283626)))

(declare-fun c!93211 () Bool)

(assert (=> b!462892 (= c!93211 (<= (+ 0 1) 0))))

(declare-fun b!462893 () Bool)

(assert (=> b!462893 (= e!283627 Nil!4495)))

(declare-fun b!462894 () Bool)

(assert (=> b!462894 (= e!283630 (= (size!3675 lt!206797) e!283629))))

(declare-fun c!93212 () Bool)

(assert (=> b!462894 (= c!93212 (<= (+ 0 1) 0))))

(declare-fun b!462895 () Bool)

(assert (=> b!462895 (= e!283629 e!283628)))

(declare-fun c!93210 () Bool)

(assert (=> b!462895 (= c!93210 (>= (+ 0 1) call!32127))))

(declare-fun b!462896 () Bool)

(assert (=> b!462896 (= e!283626 lt!206119)))

(assert (= (and d!176179 c!93209) b!462893))

(assert (= (and d!176179 (not c!93209)) b!462892))

(assert (= (and b!462892 c!93211) b!462896))

(assert (= (and b!462892 (not c!93211)) b!462888))

(assert (= (and d!176179 res!206072) b!462894))

(assert (= (and b!462894 c!93212) b!462890))

(assert (= (and b!462894 (not c!93212)) b!462895))

(assert (= (and b!462895 c!93210) b!462891))

(assert (= (and b!462895 (not c!93210)) b!462889))

(assert (= (or b!462890 b!462895 b!462889) bm!32122))

(declare-fun m!732795 () Bool)

(assert (=> b!462888 m!732795))

(declare-fun m!732797 () Bool)

(assert (=> d!176179 m!732797))

(declare-fun m!732799 () Bool)

(assert (=> d!176179 m!732799))

(declare-fun m!732801 () Bool)

(assert (=> bm!32122 m!732801))

(declare-fun m!732803 () Bool)

(assert (=> b!462894 m!732803))

(assert (=> b!461779 d!176179))

(declare-fun b!462897 () Bool)

(declare-fun e!283631 () List!4505)

(assert (=> b!462897 (= e!283631 (drop!321 (t!71885 lt!206119) (- 0 1)))))

(declare-fun b!462898 () Bool)

(declare-fun e!283633 () Int)

(declare-fun call!32128 () Int)

(assert (=> b!462898 (= e!283633 (- call!32128 0))))

(declare-fun b!462899 () Bool)

(declare-fun e!283634 () Int)

(assert (=> b!462899 (= e!283634 call!32128)))

(declare-fun d!176181 () Bool)

(declare-fun e!283635 () Bool)

(assert (=> d!176181 e!283635))

(declare-fun res!206073 () Bool)

(assert (=> d!176181 (=> (not res!206073) (not e!283635))))

(declare-fun lt!206798 () List!4505)

(assert (=> d!176181 (= res!206073 (= ((_ map implies) (content!753 lt!206798) (content!753 lt!206119)) ((as const (InoxSet Token!1494)) true)))))

(declare-fun e!283632 () List!4505)

(assert (=> d!176181 (= lt!206798 e!283632)))

(declare-fun c!93213 () Bool)

(assert (=> d!176181 (= c!93213 ((_ is Nil!4495) lt!206119))))

(assert (=> d!176181 (= (drop!321 lt!206119 0) lt!206798)))

(declare-fun b!462900 () Bool)

(assert (=> b!462900 (= e!283633 0)))

(declare-fun bm!32123 () Bool)

(assert (=> bm!32123 (= call!32128 (size!3675 lt!206119))))

(declare-fun b!462901 () Bool)

(assert (=> b!462901 (= e!283632 e!283631)))

(declare-fun c!93215 () Bool)

(assert (=> b!462901 (= c!93215 (<= 0 0))))

(declare-fun b!462902 () Bool)

(assert (=> b!462902 (= e!283632 Nil!4495)))

(declare-fun b!462903 () Bool)

(assert (=> b!462903 (= e!283635 (= (size!3675 lt!206798) e!283634))))

(declare-fun c!93216 () Bool)

(assert (=> b!462903 (= c!93216 (<= 0 0))))

(declare-fun b!462904 () Bool)

(assert (=> b!462904 (= e!283634 e!283633)))

(declare-fun c!93214 () Bool)

(assert (=> b!462904 (= c!93214 (>= 0 call!32128))))

(declare-fun b!462905 () Bool)

(assert (=> b!462905 (= e!283631 lt!206119)))

(assert (= (and d!176181 c!93213) b!462902))

(assert (= (and d!176181 (not c!93213)) b!462901))

(assert (= (and b!462901 c!93215) b!462905))

(assert (= (and b!462901 (not c!93215)) b!462897))

(assert (= (and d!176181 res!206073) b!462903))

(assert (= (and b!462903 c!93216) b!462899))

(assert (= (and b!462903 (not c!93216)) b!462904))

(assert (= (and b!462904 c!93214) b!462900))

(assert (= (and b!462904 (not c!93214)) b!462898))

(assert (= (or b!462899 b!462904 b!462898) bm!32123))

(declare-fun m!732805 () Bool)

(assert (=> b!462897 m!732805))

(declare-fun m!732807 () Bool)

(assert (=> d!176181 m!732807))

(assert (=> d!176181 m!732799))

(assert (=> bm!32123 m!732801))

(declare-fun m!732809 () Bool)

(assert (=> b!462903 m!732809))

(assert (=> b!461779 d!176181))

(declare-fun d!176183 () Bool)

(assert (=> d!176183 (= (tail!654 (drop!321 lt!206119 0)) (drop!321 lt!206119 (+ 0 1)))))

(declare-fun lt!206801 () Unit!8113)

(declare-fun choose!3481 (List!4505 Int) Unit!8113)

(assert (=> d!176183 (= lt!206801 (choose!3481 lt!206119 0))))

(declare-fun e!283638 () Bool)

(assert (=> d!176183 e!283638))

(declare-fun res!206076 () Bool)

(assert (=> d!176183 (=> (not res!206076) (not e!283638))))

(assert (=> d!176183 (= res!206076 (>= 0 0))))

(assert (=> d!176183 (= (lemmaDropTail!284 lt!206119 0) lt!206801)))

(declare-fun b!462908 () Bool)

(assert (=> b!462908 (= e!283638 (< 0 (size!3675 lt!206119)))))

(assert (= (and d!176183 res!206076) b!462908))

(assert (=> d!176183 m!730569))

(assert (=> d!176183 m!730569))

(assert (=> d!176183 m!730579))

(assert (=> d!176183 m!730563))

(declare-fun m!732811 () Bool)

(assert (=> d!176183 m!732811))

(assert (=> b!462908 m!732801))

(assert (=> b!461779 d!176183))

(declare-fun d!176185 () Bool)

(declare-fun lt!206802 () BalanceConc!3152)

(assert (=> d!176185 (= (list!2004 lt!206802) (originalCharacters!918 (apply!1157 lt!205900 0)))))

(assert (=> d!176185 (= lt!206802 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205900 0)))) (value!29253 (apply!1157 lt!205900 0))))))

(assert (=> d!176185 (= (charsOf!518 (apply!1157 lt!205900 0)) lt!206802)))

(declare-fun b_lambda!19239 () Bool)

(assert (=> (not b_lambda!19239) (not d!176185)))

(declare-fun t!72029 () Bool)

(declare-fun tb!46191 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205900 0))))) t!72029) tb!46191))

(declare-fun b!462909 () Bool)

(declare-fun e!283639 () Bool)

(declare-fun tp!127797 () Bool)

(assert (=> b!462909 (= e!283639 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205900 0)))) (value!29253 (apply!1157 lt!205900 0))))) tp!127797))))

(declare-fun result!50874 () Bool)

(assert (=> tb!46191 (= result!50874 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205900 0)))) (value!29253 (apply!1157 lt!205900 0)))) e!283639))))

(assert (= tb!46191 b!462909))

(declare-fun m!732813 () Bool)

(assert (=> b!462909 m!732813))

(declare-fun m!732815 () Bool)

(assert (=> tb!46191 m!732815))

(assert (=> d!176185 t!72029))

(declare-fun b_and!49675 () Bool)

(assert (= b_and!49665 (and (=> t!72029 result!50874) b_and!49675)))

(declare-fun t!72031 () Bool)

(declare-fun tb!46193 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205900 0))))) t!72031) tb!46193))

(declare-fun result!50876 () Bool)

(assert (= result!50876 result!50874))

(assert (=> d!176185 t!72031))

(declare-fun b_and!49677 () Bool)

(assert (= b_and!49673 (and (=> t!72031 result!50876) b_and!49677)))

(declare-fun t!72033 () Bool)

(declare-fun tb!46195 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205900 0))))) t!72033) tb!46195))

(declare-fun result!50878 () Bool)

(assert (= result!50878 result!50874))

(assert (=> d!176185 t!72033))

(declare-fun b_and!49679 () Bool)

(assert (= b_and!49667 (and (=> t!72033 result!50878) b_and!49679)))

(declare-fun t!72035 () Bool)

(declare-fun tb!46197 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205900 0))))) t!72035) tb!46197))

(declare-fun result!50880 () Bool)

(assert (= result!50880 result!50874))

(assert (=> d!176185 t!72035))

(declare-fun b_and!49681 () Bool)

(assert (= b_and!49671 (and (=> t!72035 result!50880) b_and!49681)))

(declare-fun tb!46199 () Bool)

(declare-fun t!72037 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205900 0))))) t!72037) tb!46199))

(declare-fun result!50882 () Bool)

(assert (= result!50882 result!50874))

(assert (=> d!176185 t!72037))

(declare-fun b_and!49683 () Bool)

(assert (= b_and!49669 (and (=> t!72037 result!50882) b_and!49683)))

(declare-fun m!732817 () Bool)

(assert (=> d!176185 m!732817))

(declare-fun m!732819 () Bool)

(assert (=> d!176185 m!732819))

(assert (=> b!461779 d!176185))

(declare-fun d!176187 () Bool)

(declare-fun lt!206805 () Token!1494)

(assert (=> d!176187 (contains!1009 lt!206117 lt!206805)))

(declare-fun e!283644 () Token!1494)

(assert (=> d!176187 (= lt!206805 e!283644)))

(declare-fun c!93219 () Bool)

(assert (=> d!176187 (= c!93219 (= 0 0))))

(declare-fun e!283645 () Bool)

(assert (=> d!176187 e!283645))

(declare-fun res!206079 () Bool)

(assert (=> d!176187 (=> (not res!206079) (not e!283645))))

(assert (=> d!176187 (= res!206079 (<= 0 0))))

(assert (=> d!176187 (= (apply!1158 lt!206117 0) lt!206805)))

(declare-fun b!462916 () Bool)

(assert (=> b!462916 (= e!283645 (< 0 (size!3675 lt!206117)))))

(declare-fun b!462917 () Bool)

(assert (=> b!462917 (= e!283644 (head!1132 lt!206117))))

(declare-fun b!462918 () Bool)

(assert (=> b!462918 (= e!283644 (apply!1158 (tail!654 lt!206117) (- 0 1)))))

(assert (= (and d!176187 res!206079) b!462916))

(assert (= (and d!176187 c!93219) b!462917))

(assert (= (and d!176187 (not c!93219)) b!462918))

(declare-fun m!732821 () Bool)

(assert (=> d!176187 m!732821))

(declare-fun m!732823 () Bool)

(assert (=> b!462916 m!732823))

(declare-fun m!732825 () Bool)

(assert (=> b!462917 m!732825))

(declare-fun m!732827 () Bool)

(assert (=> b!462918 m!732827))

(assert (=> b!462918 m!732827))

(declare-fun m!732829 () Bool)

(assert (=> b!462918 m!732829))

(assert (=> b!461779 d!176187))

(declare-fun b!462920 () Bool)

(declare-fun res!206081 () Bool)

(declare-fun e!283646 () Bool)

(assert (=> b!462920 (=> (not res!206081) (not e!283646))))

(assert (=> b!462920 (= res!206081 (<= (height!239 (++!1317 (c!92854 (BalanceConc!3153 Empty!1572)) (c!92854 (charsOf!518 (apply!1157 lt!205900 0))))) (+ (max!0 (height!239 (c!92854 (BalanceConc!3153 Empty!1572))) (height!239 (c!92854 (charsOf!518 (apply!1157 lt!205900 0))))) 1)))))

(declare-fun b!462919 () Bool)

(declare-fun res!206080 () Bool)

(assert (=> b!462919 (=> (not res!206080) (not e!283646))))

(assert (=> b!462919 (= res!206080 (isBalanced!483 (++!1317 (c!92854 (BalanceConc!3153 Empty!1572)) (c!92854 (charsOf!518 (apply!1157 lt!205900 0))))))))

(declare-fun b!462922 () Bool)

(declare-fun lt!206806 () BalanceConc!3152)

(assert (=> b!462922 (= e!283646 (= (list!2004 lt!206806) (++!1312 (list!2004 (BalanceConc!3153 Empty!1572)) (list!2004 (charsOf!518 (apply!1157 lt!205900 0))))))))

(declare-fun b!462921 () Bool)

(declare-fun res!206083 () Bool)

(assert (=> b!462921 (=> (not res!206083) (not e!283646))))

(assert (=> b!462921 (= res!206083 (>= (height!239 (++!1317 (c!92854 (BalanceConc!3153 Empty!1572)) (c!92854 (charsOf!518 (apply!1157 lt!205900 0))))) (max!0 (height!239 (c!92854 (BalanceConc!3153 Empty!1572))) (height!239 (c!92854 (charsOf!518 (apply!1157 lt!205900 0)))))))))

(declare-fun d!176189 () Bool)

(assert (=> d!176189 e!283646))

(declare-fun res!206082 () Bool)

(assert (=> d!176189 (=> (not res!206082) (not e!283646))))

(assert (=> d!176189 (= res!206082 (appendAssocInst!105 (c!92854 (BalanceConc!3153 Empty!1572)) (c!92854 (charsOf!518 (apply!1157 lt!205900 0)))))))

(assert (=> d!176189 (= lt!206806 (BalanceConc!3153 (++!1317 (c!92854 (BalanceConc!3153 Empty!1572)) (c!92854 (charsOf!518 (apply!1157 lt!205900 0))))))))

(assert (=> d!176189 (= (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (apply!1157 lt!205900 0))) lt!206806)))

(assert (= (and d!176189 res!206082) b!462919))

(assert (= (and b!462919 res!206080) b!462920))

(assert (= (and b!462920 res!206081) b!462921))

(assert (= (and b!462921 res!206083) b!462922))

(declare-fun m!732831 () Bool)

(assert (=> b!462919 m!732831))

(assert (=> b!462919 m!732831))

(declare-fun m!732833 () Bool)

(assert (=> b!462919 m!732833))

(declare-fun m!732835 () Bool)

(assert (=> d!176189 m!732835))

(assert (=> d!176189 m!732831))

(declare-fun m!732837 () Bool)

(assert (=> b!462920 m!732837))

(declare-fun m!732839 () Bool)

(assert (=> b!462920 m!732839))

(declare-fun m!732841 () Bool)

(assert (=> b!462920 m!732841))

(assert (=> b!462920 m!732837))

(assert (=> b!462920 m!732839))

(assert (=> b!462920 m!732831))

(declare-fun m!732843 () Bool)

(assert (=> b!462920 m!732843))

(assert (=> b!462920 m!732831))

(declare-fun m!732845 () Bool)

(assert (=> b!462922 m!732845))

(assert (=> b!462922 m!730547))

(assert (=> b!462922 m!730575))

(declare-fun m!732847 () Bool)

(assert (=> b!462922 m!732847))

(assert (=> b!462922 m!730547))

(assert (=> b!462922 m!732847))

(declare-fun m!732849 () Bool)

(assert (=> b!462922 m!732849))

(assert (=> b!462921 m!732837))

(assert (=> b!462921 m!732839))

(assert (=> b!462921 m!732841))

(assert (=> b!462921 m!732837))

(assert (=> b!462921 m!732839))

(assert (=> b!462921 m!732831))

(assert (=> b!462921 m!732843))

(assert (=> b!462921 m!732831))

(assert (=> b!461779 d!176189))

(declare-fun b!462923 () Bool)

(declare-fun e!283647 () List!4505)

(assert (=> b!462923 (= e!283647 (drop!321 (t!71885 lt!206117) (- 0 1)))))

(declare-fun b!462924 () Bool)

(declare-fun e!283649 () Int)

(declare-fun call!32129 () Int)

(assert (=> b!462924 (= e!283649 (- call!32129 0))))

(declare-fun b!462925 () Bool)

(declare-fun e!283650 () Int)

(assert (=> b!462925 (= e!283650 call!32129)))

(declare-fun d!176191 () Bool)

(declare-fun e!283651 () Bool)

(assert (=> d!176191 e!283651))

(declare-fun res!206084 () Bool)

(assert (=> d!176191 (=> (not res!206084) (not e!283651))))

(declare-fun lt!206807 () List!4505)

(assert (=> d!176191 (= res!206084 (= ((_ map implies) (content!753 lt!206807) (content!753 lt!206117)) ((as const (InoxSet Token!1494)) true)))))

(declare-fun e!283648 () List!4505)

(assert (=> d!176191 (= lt!206807 e!283648)))

(declare-fun c!93220 () Bool)

(assert (=> d!176191 (= c!93220 ((_ is Nil!4495) lt!206117))))

(assert (=> d!176191 (= (drop!321 lt!206117 0) lt!206807)))

(declare-fun b!462926 () Bool)

(assert (=> b!462926 (= e!283649 0)))

(declare-fun bm!32124 () Bool)

(assert (=> bm!32124 (= call!32129 (size!3675 lt!206117))))

(declare-fun b!462927 () Bool)

(assert (=> b!462927 (= e!283648 e!283647)))

(declare-fun c!93222 () Bool)

(assert (=> b!462927 (= c!93222 (<= 0 0))))

(declare-fun b!462928 () Bool)

(assert (=> b!462928 (= e!283648 Nil!4495)))

(declare-fun b!462929 () Bool)

(assert (=> b!462929 (= e!283651 (= (size!3675 lt!206807) e!283650))))

(declare-fun c!93223 () Bool)

(assert (=> b!462929 (= c!93223 (<= 0 0))))

(declare-fun b!462930 () Bool)

(assert (=> b!462930 (= e!283650 e!283649)))

(declare-fun c!93221 () Bool)

(assert (=> b!462930 (= c!93221 (>= 0 call!32129))))

(declare-fun b!462931 () Bool)

(assert (=> b!462931 (= e!283647 lt!206117)))

(assert (= (and d!176191 c!93220) b!462928))

(assert (= (and d!176191 (not c!93220)) b!462927))

(assert (= (and b!462927 c!93222) b!462931))

(assert (= (and b!462927 (not c!93222)) b!462923))

(assert (= (and d!176191 res!206084) b!462929))

(assert (= (and b!462929 c!93223) b!462925))

(assert (= (and b!462929 (not c!93223)) b!462930))

(assert (= (and b!462930 c!93221) b!462926))

(assert (= (and b!462930 (not c!93221)) b!462924))

(assert (= (or b!462925 b!462930 b!462924) bm!32124))

(declare-fun m!732851 () Bool)

(assert (=> b!462923 m!732851))

(declare-fun m!732853 () Bool)

(assert (=> d!176191 m!732853))

(declare-fun m!732855 () Bool)

(assert (=> d!176191 m!732855))

(assert (=> bm!32124 m!732823))

(declare-fun m!732857 () Bool)

(assert (=> b!462929 m!732857))

(assert (=> b!461779 d!176191))

(declare-fun d!176193 () Bool)

(declare-fun lt!206810 () Token!1494)

(assert (=> d!176193 (= lt!206810 (apply!1158 (list!2005 lt!205900) 0))))

(declare-fun apply!1160 (Conc!1573 Int) Token!1494)

(assert (=> d!176193 (= lt!206810 (apply!1160 (c!92856 lt!205900) 0))))

(declare-fun e!283654 () Bool)

(assert (=> d!176193 e!283654))

(declare-fun res!206087 () Bool)

(assert (=> d!176193 (=> (not res!206087) (not e!283654))))

(assert (=> d!176193 (= res!206087 (<= 0 0))))

(assert (=> d!176193 (= (apply!1157 lt!205900 0) lt!206810)))

(declare-fun b!462934 () Bool)

(assert (=> b!462934 (= e!283654 (< 0 (size!3672 lt!205900)))))

(assert (= (and d!176193 res!206087) b!462934))

(assert (=> d!176193 m!730571))

(assert (=> d!176193 m!730571))

(declare-fun m!732859 () Bool)

(assert (=> d!176193 m!732859))

(declare-fun m!732861 () Bool)

(assert (=> d!176193 m!732861))

(assert (=> b!462934 m!730555))

(assert (=> b!461779 d!176193))

(declare-fun d!176195 () Bool)

(assert (=> d!176195 (= (tail!654 (drop!321 lt!206119 0)) (t!71885 (drop!321 lt!206119 0)))))

(assert (=> b!461779 d!176195))

(declare-fun d!176197 () Bool)

(assert (=> d!176197 (= (head!1132 (drop!321 lt!206117 0)) (apply!1158 lt!206117 0))))

(declare-fun lt!206813 () Unit!8113)

(declare-fun choose!3482 (List!4505 Int) Unit!8113)

(assert (=> d!176197 (= lt!206813 (choose!3482 lt!206117 0))))

(declare-fun e!283657 () Bool)

(assert (=> d!176197 e!283657))

(declare-fun res!206090 () Bool)

(assert (=> d!176197 (=> (not res!206090) (not e!283657))))

(assert (=> d!176197 (= res!206090 (>= 0 0))))

(assert (=> d!176197 (= (lemmaDropApply!292 lt!206117 0) lt!206813)))

(declare-fun b!462937 () Bool)

(assert (=> b!462937 (= e!283657 (< 0 (size!3675 lt!206117)))))

(assert (= (and d!176197 res!206090) b!462937))

(assert (=> d!176197 m!730567))

(assert (=> d!176197 m!730567))

(assert (=> d!176197 m!730573))

(assert (=> d!176197 m!730561))

(declare-fun m!732863 () Bool)

(assert (=> d!176197 m!732863))

(assert (=> b!462937 m!732823))

(assert (=> b!461779 d!176197))

(declare-fun d!176199 () Bool)

(declare-fun lt!206816 () Bool)

(assert (=> d!176199 (= lt!206816 (select (content!753 tokens!465) (h!9892 tokens!465)))))

(declare-fun e!283662 () Bool)

(assert (=> d!176199 (= lt!206816 e!283662)))

(declare-fun res!206095 () Bool)

(assert (=> d!176199 (=> (not res!206095) (not e!283662))))

(assert (=> d!176199 (= res!206095 ((_ is Cons!4495) tokens!465))))

(assert (=> d!176199 (= (contains!1009 tokens!465 (h!9892 tokens!465)) lt!206816)))

(declare-fun b!462942 () Bool)

(declare-fun e!283663 () Bool)

(assert (=> b!462942 (= e!283662 e!283663)))

(declare-fun res!206096 () Bool)

(assert (=> b!462942 (=> res!206096 e!283663)))

(assert (=> b!462942 (= res!206096 (= (h!9892 tokens!465) (h!9892 tokens!465)))))

(declare-fun b!462943 () Bool)

(assert (=> b!462943 (= e!283663 (contains!1009 (t!71885 tokens!465) (h!9892 tokens!465)))))

(assert (= (and d!176199 res!206095) b!462942))

(assert (= (and b!462942 (not res!206096)) b!462943))

(declare-fun m!732865 () Bool)

(assert (=> d!176199 m!732865))

(declare-fun m!732867 () Bool)

(assert (=> d!176199 m!732867))

(declare-fun m!732869 () Bool)

(assert (=> b!462943 m!732869))

(assert (=> b!461638 d!176199))

(declare-fun d!176201 () Bool)

(declare-fun lt!206817 () Int)

(assert (=> d!176201 (>= lt!206817 0)))

(declare-fun e!283664 () Int)

(assert (=> d!176201 (= lt!206817 e!283664)))

(declare-fun c!93224 () Bool)

(assert (=> d!176201 (= c!93224 ((_ is Nil!4493) lt!206334))))

(assert (=> d!176201 (= (size!3674 lt!206334) lt!206817)))

(declare-fun b!462944 () Bool)

(assert (=> b!462944 (= e!283664 0)))

(declare-fun b!462945 () Bool)

(assert (=> b!462945 (= e!283664 (+ 1 (size!3674 (t!71883 lt!206334))))))

(assert (= (and d!176201 c!93224) b!462944))

(assert (= (and d!176201 (not c!93224)) b!462945))

(declare-fun m!732871 () Bool)

(assert (=> b!462945 m!732871))

(assert (=> b!462147 d!176201))

(declare-fun d!176203 () Bool)

(declare-fun lt!206818 () Int)

(assert (=> d!176203 (>= lt!206818 0)))

(declare-fun e!283665 () Int)

(assert (=> d!176203 (= lt!206818 e!283665)))

(declare-fun c!93225 () Bool)

(assert (=> d!176203 (= c!93225 ((_ is Nil!4493) (++!1312 lt!205905 lt!205896)))))

(assert (=> d!176203 (= (size!3674 (++!1312 lt!205905 lt!205896)) lt!206818)))

(declare-fun b!462946 () Bool)

(assert (=> b!462946 (= e!283665 0)))

(declare-fun b!462947 () Bool)

(assert (=> b!462947 (= e!283665 (+ 1 (size!3674 (t!71883 (++!1312 lt!205905 lt!205896)))))))

(assert (= (and d!176203 c!93225) b!462946))

(assert (= (and d!176203 (not c!93225)) b!462947))

(assert (=> b!462947 m!732421))

(assert (=> b!462147 d!176203))

(assert (=> b!462147 d!176171))

(declare-fun lt!206819 () Bool)

(declare-fun d!176205 () Bool)

(assert (=> d!176205 (= lt!206819 (isEmpty!3484 (list!2004 (_2!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170)))))))))

(assert (=> d!176205 (= lt!206819 (isEmpty!3494 (c!92854 (_2!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170)))))))))

(assert (=> d!176205 (= (isEmpty!3492 (_2!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170))))) lt!206819)))

(declare-fun bs!57433 () Bool)

(assert (= bs!57433 d!176205))

(declare-fun m!732873 () Bool)

(assert (=> bs!57433 m!732873))

(assert (=> bs!57433 m!732873))

(declare-fun m!732875 () Bool)

(assert (=> bs!57433 m!732875))

(declare-fun m!732877 () Bool)

(assert (=> bs!57433 m!732877))

(assert (=> b!461796 d!176205))

(declare-fun b!462948 () Bool)

(declare-fun e!283666 () Bool)

(declare-fun lt!206820 () tuple2!5494)

(assert (=> b!462948 (= e!283666 (not (isEmpty!3485 (_1!2963 lt!206820))))))

(declare-fun e!283668 () Bool)

(declare-fun b!462949 () Bool)

(assert (=> b!462949 (= e!283668 (= (list!2004 (_2!2963 lt!206820)) (_2!2965 (lexList!299 thiss!17480 rules!1920 (list!2004 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170)))))))))

(declare-fun d!176207 () Bool)

(assert (=> d!176207 e!283668))

(declare-fun res!206098 () Bool)

(assert (=> d!176207 (=> (not res!206098) (not e!283668))))

(declare-fun e!283667 () Bool)

(assert (=> d!176207 (= res!206098 e!283667)))

(declare-fun c!93226 () Bool)

(assert (=> d!176207 (= c!93226 (> (size!3672 (_1!2963 lt!206820)) 0))))

(assert (=> d!176207 (= lt!206820 (lexTailRecV2!264 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170)) (BalanceConc!3153 Empty!1572) (print!486 thiss!17480 (singletonSeq!421 separatorToken!170)) (BalanceConc!3155 Empty!1573)))))

(assert (=> d!176207 (= (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170))) lt!206820)))

(declare-fun b!462950 () Bool)

(assert (=> b!462950 (= e!283667 (= (_2!2963 lt!206820) (print!486 thiss!17480 (singletonSeq!421 separatorToken!170))))))

(declare-fun b!462951 () Bool)

(assert (=> b!462951 (= e!283667 e!283666)))

(declare-fun res!206097 () Bool)

(assert (=> b!462951 (= res!206097 (< (size!3673 (_2!2963 lt!206820)) (size!3673 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170)))))))

(assert (=> b!462951 (=> (not res!206097) (not e!283666))))

(declare-fun b!462952 () Bool)

(declare-fun res!206099 () Bool)

(assert (=> b!462952 (=> (not res!206099) (not e!283668))))

(assert (=> b!462952 (= res!206099 (= (list!2005 (_1!2963 lt!206820)) (_1!2965 (lexList!299 thiss!17480 rules!1920 (list!2004 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170)))))))))

(assert (= (and d!176207 c!93226) b!462951))

(assert (= (and d!176207 (not c!93226)) b!462950))

(assert (= (and b!462951 res!206097) b!462948))

(assert (= (and d!176207 res!206098) b!462952))

(assert (= (and b!462952 res!206099) b!462949))

(declare-fun m!732879 () Bool)

(assert (=> b!462952 m!732879))

(assert (=> b!462952 m!730627))

(declare-fun m!732881 () Bool)

(assert (=> b!462952 m!732881))

(assert (=> b!462952 m!732881))

(declare-fun m!732883 () Bool)

(assert (=> b!462952 m!732883))

(declare-fun m!732885 () Bool)

(assert (=> b!462948 m!732885))

(declare-fun m!732887 () Bool)

(assert (=> b!462951 m!732887))

(assert (=> b!462951 m!730627))

(declare-fun m!732889 () Bool)

(assert (=> b!462951 m!732889))

(declare-fun m!732891 () Bool)

(assert (=> d!176207 m!732891))

(assert (=> d!176207 m!730627))

(assert (=> d!176207 m!730627))

(declare-fun m!732893 () Bool)

(assert (=> d!176207 m!732893))

(declare-fun m!732895 () Bool)

(assert (=> b!462949 m!732895))

(assert (=> b!462949 m!730627))

(assert (=> b!462949 m!732881))

(assert (=> b!462949 m!732881))

(assert (=> b!462949 m!732883))

(assert (=> b!461796 d!176207))

(declare-fun d!176209 () Bool)

(declare-fun lt!206821 () BalanceConc!3152)

(assert (=> d!176209 (= (list!2004 lt!206821) (printList!435 thiss!17480 (list!2005 (singletonSeq!421 separatorToken!170))))))

(assert (=> d!176209 (= lt!206821 (printTailRec!447 thiss!17480 (singletonSeq!421 separatorToken!170) 0 (BalanceConc!3153 Empty!1572)))))

(assert (=> d!176209 (= (print!486 thiss!17480 (singletonSeq!421 separatorToken!170)) lt!206821)))

(declare-fun bs!57434 () Bool)

(assert (= bs!57434 d!176209))

(declare-fun m!732897 () Bool)

(assert (=> bs!57434 m!732897))

(assert (=> bs!57434 m!730625))

(assert (=> bs!57434 m!730633))

(assert (=> bs!57434 m!730633))

(declare-fun m!732899 () Bool)

(assert (=> bs!57434 m!732899))

(assert (=> bs!57434 m!730625))

(declare-fun m!732901 () Bool)

(assert (=> bs!57434 m!732901))

(assert (=> b!461796 d!176209))

(declare-fun d!176211 () Bool)

(declare-fun e!283669 () Bool)

(assert (=> d!176211 e!283669))

(declare-fun res!206100 () Bool)

(assert (=> d!176211 (=> (not res!206100) (not e!283669))))

(declare-fun lt!206822 () BalanceConc!3154)

(assert (=> d!176211 (= res!206100 (= (list!2005 lt!206822) (Cons!4495 separatorToken!170 Nil!4495)))))

(assert (=> d!176211 (= lt!206822 (singleton!201 separatorToken!170))))

(assert (=> d!176211 (= (singletonSeq!421 separatorToken!170) lt!206822)))

(declare-fun b!462953 () Bool)

(assert (=> b!462953 (= e!283669 (isBalanced!480 (c!92856 lt!206822)))))

(assert (= (and d!176211 res!206100) b!462953))

(declare-fun m!732903 () Bool)

(assert (=> d!176211 m!732903))

(declare-fun m!732905 () Bool)

(assert (=> d!176211 m!732905))

(declare-fun m!732907 () Bool)

(assert (=> b!462953 m!732907))

(assert (=> b!461796 d!176211))

(declare-fun d!176213 () Bool)

(declare-fun lt!206823 () Bool)

(assert (=> d!176213 (= lt!206823 (isEmpty!3483 (list!2005 (_1!2963 lt!205932))))))

(assert (=> d!176213 (= lt!206823 (isEmpty!3487 (c!92856 (_1!2963 lt!205932))))))

(assert (=> d!176213 (= (isEmpty!3485 (_1!2963 lt!205932)) lt!206823)))

(declare-fun bs!57435 () Bool)

(assert (= bs!57435 d!176213))

(assert (=> bs!57435 m!730005))

(assert (=> bs!57435 m!730005))

(declare-fun m!732909 () Bool)

(assert (=> bs!57435 m!732909))

(declare-fun m!732911 () Bool)

(assert (=> bs!57435 m!732911))

(assert (=> b!461367 d!176213))

(declare-fun d!176215 () Bool)

(assert (=> d!176215 (dynLambda!2749 lambda!13618 (h!9892 tokens!465))))

(assert (=> d!176215 true))

(declare-fun _$7!558 () Unit!8113)

(assert (=> d!176215 (= (choose!3471 tokens!465 lambda!13618 (h!9892 tokens!465)) _$7!558)))

(declare-fun b_lambda!19241 () Bool)

(assert (=> (not b_lambda!19241) (not d!176215)))

(declare-fun bs!57436 () Bool)

(assert (= bs!57436 d!176215))

(assert (=> bs!57436 m!730391))

(assert (=> d!175567 d!176215))

(declare-fun d!176217 () Bool)

(declare-fun res!206101 () Bool)

(declare-fun e!283670 () Bool)

(assert (=> d!176217 (=> res!206101 e!283670)))

(assert (=> d!176217 (= res!206101 ((_ is Nil!4495) tokens!465))))

(assert (=> d!176217 (= (forall!1308 tokens!465 lambda!13618) e!283670)))

(declare-fun b!462954 () Bool)

(declare-fun e!283671 () Bool)

(assert (=> b!462954 (= e!283670 e!283671)))

(declare-fun res!206102 () Bool)

(assert (=> b!462954 (=> (not res!206102) (not e!283671))))

(assert (=> b!462954 (= res!206102 (dynLambda!2749 lambda!13618 (h!9892 tokens!465)))))

(declare-fun b!462955 () Bool)

(assert (=> b!462955 (= e!283671 (forall!1308 (t!71885 tokens!465) lambda!13618))))

(assert (= (and d!176217 (not res!206101)) b!462954))

(assert (= (and b!462954 res!206102) b!462955))

(declare-fun b_lambda!19243 () Bool)

(assert (=> (not b_lambda!19243) (not b!462954)))

(assert (=> b!462954 m!730391))

(declare-fun m!732913 () Bool)

(assert (=> b!462955 m!732913))

(assert (=> d!175567 d!176217))

(declare-fun d!176219 () Bool)

(assert (=> d!176219 (= (list!2005 (_1!2963 lt!205957)) (list!2007 (c!92856 (_1!2963 lt!205957))))))

(declare-fun bs!57437 () Bool)

(assert (= bs!57437 d!176219))

(declare-fun m!732915 () Bool)

(assert (=> bs!57437 m!732915))

(assert (=> b!461434 d!176219))

(declare-fun b!462966 () Bool)

(declare-fun e!283678 () tuple2!5498)

(declare-fun lt!206831 () Option!1184)

(declare-fun lt!206832 () tuple2!5498)

(assert (=> b!462966 (= e!283678 (tuple2!5499 (Cons!4495 (_1!2961 (v!15532 lt!206831)) (_1!2965 lt!206832)) (_2!2965 lt!206832)))))

(assert (=> b!462966 (= lt!206832 (lexList!299 thiss!17480 rules!1920 (_2!2961 (v!15532 lt!206831))))))

(declare-fun b!462967 () Bool)

(declare-fun e!283680 () Bool)

(declare-fun lt!206830 () tuple2!5498)

(assert (=> b!462967 (= e!283680 (= (_2!2965 lt!206830) (list!2004 lt!205910)))))

(declare-fun d!176221 () Bool)

(assert (=> d!176221 e!283680))

(declare-fun c!93232 () Bool)

(assert (=> d!176221 (= c!93232 (> (size!3675 (_1!2965 lt!206830)) 0))))

(assert (=> d!176221 (= lt!206830 e!283678)))

(declare-fun c!93231 () Bool)

(assert (=> d!176221 (= c!93231 ((_ is Some!1183) lt!206831))))

(assert (=> d!176221 (= lt!206831 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 lt!205910)))))

(assert (=> d!176221 (= (lexList!299 thiss!17480 rules!1920 (list!2004 lt!205910)) lt!206830)))

(declare-fun b!462968 () Bool)

(assert (=> b!462968 (= e!283678 (tuple2!5499 Nil!4495 (list!2004 lt!205910)))))

(declare-fun b!462969 () Bool)

(declare-fun e!283679 () Bool)

(assert (=> b!462969 (= e!283680 e!283679)))

(declare-fun res!206105 () Bool)

(assert (=> b!462969 (= res!206105 (< (size!3674 (_2!2965 lt!206830)) (size!3674 (list!2004 lt!205910))))))

(assert (=> b!462969 (=> (not res!206105) (not e!283679))))

(declare-fun b!462970 () Bool)

(assert (=> b!462970 (= e!283679 (not (isEmpty!3483 (_1!2965 lt!206830))))))

(assert (= (and d!176221 c!93231) b!462966))

(assert (= (and d!176221 (not c!93231)) b!462968))

(assert (= (and d!176221 c!93232) b!462969))

(assert (= (and d!176221 (not c!93232)) b!462967))

(assert (= (and b!462969 res!206105) b!462970))

(declare-fun m!732917 () Bool)

(assert (=> b!462966 m!732917))

(declare-fun m!732919 () Bool)

(assert (=> d!176221 m!732919))

(assert (=> d!176221 m!729945))

(declare-fun m!732921 () Bool)

(assert (=> d!176221 m!732921))

(declare-fun m!732923 () Bool)

(assert (=> b!462969 m!732923))

(assert (=> b!462969 m!729945))

(declare-fun m!732925 () Bool)

(assert (=> b!462969 m!732925))

(declare-fun m!732927 () Bool)

(assert (=> b!462970 m!732927))

(assert (=> b!461434 d!176221))

(assert (=> b!461434 d!175739))

(declare-fun b!462972 () Bool)

(declare-fun res!206107 () Bool)

(declare-fun e!283681 () Bool)

(assert (=> b!462972 (=> (not res!206107) (not e!283681))))

(assert (=> b!462972 (= res!206107 (<= (height!239 (++!1317 (c!92854 call!32081) (c!92854 (ite c!93017 lt!206317 call!32078)))) (+ (max!0 (height!239 (c!92854 call!32081)) (height!239 (c!92854 (ite c!93017 lt!206317 call!32078)))) 1)))))

(declare-fun b!462971 () Bool)

(declare-fun res!206106 () Bool)

(assert (=> b!462971 (=> (not res!206106) (not e!283681))))

(assert (=> b!462971 (= res!206106 (isBalanced!483 (++!1317 (c!92854 call!32081) (c!92854 (ite c!93017 lt!206317 call!32078)))))))

(declare-fun b!462974 () Bool)

(declare-fun lt!206833 () BalanceConc!3152)

(assert (=> b!462974 (= e!283681 (= (list!2004 lt!206833) (++!1312 (list!2004 call!32081) (list!2004 (ite c!93017 lt!206317 call!32078)))))))

(declare-fun b!462973 () Bool)

(declare-fun res!206109 () Bool)

(assert (=> b!462973 (=> (not res!206109) (not e!283681))))

(assert (=> b!462973 (= res!206109 (>= (height!239 (++!1317 (c!92854 call!32081) (c!92854 (ite c!93017 lt!206317 call!32078)))) (max!0 (height!239 (c!92854 call!32081)) (height!239 (c!92854 (ite c!93017 lt!206317 call!32078))))))))

(declare-fun d!176223 () Bool)

(assert (=> d!176223 e!283681))

(declare-fun res!206108 () Bool)

(assert (=> d!176223 (=> (not res!206108) (not e!283681))))

(assert (=> d!176223 (= res!206108 (appendAssocInst!105 (c!92854 call!32081) (c!92854 (ite c!93017 lt!206317 call!32078))))))

(assert (=> d!176223 (= lt!206833 (BalanceConc!3153 (++!1317 (c!92854 call!32081) (c!92854 (ite c!93017 lt!206317 call!32078)))))))

(assert (=> d!176223 (= (++!1314 call!32081 (ite c!93017 lt!206317 call!32078)) lt!206833)))

(assert (= (and d!176223 res!206108) b!462971))

(assert (= (and b!462971 res!206106) b!462972))

(assert (= (and b!462972 res!206107) b!462973))

(assert (= (and b!462973 res!206109) b!462974))

(declare-fun m!732929 () Bool)

(assert (=> b!462971 m!732929))

(assert (=> b!462971 m!732929))

(declare-fun m!732931 () Bool)

(assert (=> b!462971 m!732931))

(declare-fun m!732933 () Bool)

(assert (=> d!176223 m!732933))

(assert (=> d!176223 m!732929))

(declare-fun m!732935 () Bool)

(assert (=> b!462972 m!732935))

(declare-fun m!732937 () Bool)

(assert (=> b!462972 m!732937))

(declare-fun m!732939 () Bool)

(assert (=> b!462972 m!732939))

(assert (=> b!462972 m!732935))

(assert (=> b!462972 m!732937))

(assert (=> b!462972 m!732929))

(declare-fun m!732941 () Bool)

(assert (=> b!462972 m!732941))

(assert (=> b!462972 m!732929))

(declare-fun m!732943 () Bool)

(assert (=> b!462974 m!732943))

(declare-fun m!732945 () Bool)

(assert (=> b!462974 m!732945))

(declare-fun m!732947 () Bool)

(assert (=> b!462974 m!732947))

(assert (=> b!462974 m!732945))

(assert (=> b!462974 m!732947))

(declare-fun m!732949 () Bool)

(assert (=> b!462974 m!732949))

(assert (=> b!462973 m!732935))

(assert (=> b!462973 m!732937))

(assert (=> b!462973 m!732939))

(assert (=> b!462973 m!732935))

(assert (=> b!462973 m!732937))

(assert (=> b!462973 m!732929))

(assert (=> b!462973 m!732941))

(assert (=> b!462973 m!732929))

(assert (=> bm!32075 d!176223))

(declare-fun b!462975 () Bool)

(declare-fun e!283682 () Bool)

(declare-fun e!283684 () Bool)

(assert (=> b!462975 (= e!283682 e!283684)))

(declare-fun res!206110 () Bool)

(assert (=> b!462975 (=> (not res!206110) (not e!283684))))

(declare-fun lt!206838 () Option!1184)

(assert (=> b!462975 (= res!206110 (isDefined!1023 lt!206838))))

(declare-fun b!462976 () Bool)

(declare-fun e!283683 () Option!1184)

(declare-fun lt!206837 () Option!1184)

(declare-fun lt!206835 () Option!1184)

(assert (=> b!462976 (= e!283683 (ite (and ((_ is None!1183) lt!206837) ((_ is None!1183) lt!206835)) None!1183 (ite ((_ is None!1183) lt!206835) lt!206837 (ite ((_ is None!1183) lt!206837) lt!206835 (ite (>= (size!3667 (_1!2961 (v!15532 lt!206837))) (size!3667 (_1!2961 (v!15532 lt!206835)))) lt!206837 lt!206835)))))))

(declare-fun call!32130 () Option!1184)

(assert (=> b!462976 (= lt!206837 call!32130)))

(assert (=> b!462976 (= lt!206835 (maxPrefix!477 thiss!17480 (t!71884 rules!1920) (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))) lt!206310)))))

(declare-fun b!462977 () Bool)

(assert (=> b!462977 (= e!283683 call!32130)))

(declare-fun b!462978 () Bool)

(declare-fun res!206111 () Bool)

(assert (=> b!462978 (=> (not res!206111) (not e!283684))))

(assert (=> b!462978 (= res!206111 (matchR!417 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206838)))) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206838))))))))

(declare-fun bm!32125 () Bool)

(assert (=> bm!32125 (= call!32130 (maxPrefixOneRule!229 thiss!17480 (h!9891 rules!1920) (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))) lt!206310)))))

(declare-fun d!176225 () Bool)

(assert (=> d!176225 e!283682))

(declare-fun res!206115 () Bool)

(assert (=> d!176225 (=> res!206115 e!283682)))

(assert (=> d!176225 (= res!206115 (isEmpty!3490 lt!206838))))

(assert (=> d!176225 (= lt!206838 e!283683)))

(declare-fun c!93233 () Bool)

(assert (=> d!176225 (= c!93233 (and ((_ is Cons!4494) rules!1920) ((_ is Nil!4494) (t!71884 rules!1920))))))

(declare-fun lt!206836 () Unit!8113)

(declare-fun lt!206834 () Unit!8113)

(assert (=> d!176225 (= lt!206836 lt!206834)))

(assert (=> d!176225 (isPrefix!527 (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))) lt!206310) (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))) lt!206310))))

(assert (=> d!176225 (= lt!206834 (lemmaIsPrefixRefl!295 (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))) lt!206310) (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))) lt!206310)))))

(assert (=> d!176225 (rulesValidInductive!290 thiss!17480 rules!1920)))

(assert (=> d!176225 (= (maxPrefix!477 thiss!17480 rules!1920 (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))) lt!206310)) lt!206838)))

(declare-fun b!462979 () Bool)

(assert (=> b!462979 (= e!283684 (contains!1008 rules!1920 (rule!1570 (_1!2961 (get!1652 lt!206838)))))))

(declare-fun b!462980 () Bool)

(declare-fun res!206113 () Bool)

(assert (=> b!462980 (=> (not res!206113) (not e!283684))))

(assert (=> b!462980 (= res!206113 (= (++!1312 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206838)))) (_2!2961 (get!1652 lt!206838))) (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))) lt!206310)))))

(declare-fun b!462981 () Bool)

(declare-fun res!206112 () Bool)

(assert (=> b!462981 (=> (not res!206112) (not e!283684))))

(assert (=> b!462981 (= res!206112 (< (size!3674 (_2!2961 (get!1652 lt!206838))) (size!3674 (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))) lt!206310))))))

(declare-fun b!462982 () Bool)

(declare-fun res!206116 () Bool)

(assert (=> b!462982 (=> (not res!206116) (not e!283684))))

(assert (=> b!462982 (= res!206116 (= (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206838)))) (originalCharacters!918 (_1!2961 (get!1652 lt!206838)))))))

(declare-fun b!462983 () Bool)

(declare-fun res!206114 () Bool)

(assert (=> b!462983 (=> (not res!206114) (not e!283684))))

(assert (=> b!462983 (= res!206114 (= (value!29253 (_1!2961 (get!1652 lt!206838))) (apply!1155 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206838)))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!206838)))))))))

(assert (= (and d!176225 c!93233) b!462977))

(assert (= (and d!176225 (not c!93233)) b!462976))

(assert (= (or b!462977 b!462976) bm!32125))

(assert (= (and d!176225 (not res!206115)) b!462975))

(assert (= (and b!462975 res!206110) b!462982))

(assert (= (and b!462982 res!206116) b!462981))

(assert (= (and b!462981 res!206112) b!462980))

(assert (= (and b!462980 res!206113) b!462983))

(assert (= (and b!462983 res!206114) b!462978))

(assert (= (and b!462978 res!206111) b!462979))

(declare-fun m!732951 () Bool)

(assert (=> b!462978 m!732951))

(declare-fun m!732953 () Bool)

(assert (=> b!462978 m!732953))

(assert (=> b!462978 m!732953))

(declare-fun m!732955 () Bool)

(assert (=> b!462978 m!732955))

(assert (=> b!462978 m!732955))

(declare-fun m!732957 () Bool)

(assert (=> b!462978 m!732957))

(declare-fun m!732959 () Bool)

(assert (=> b!462975 m!732959))

(declare-fun m!732961 () Bool)

(assert (=> d!176225 m!732961))

(assert (=> d!176225 m!731171))

(assert (=> d!176225 m!731171))

(declare-fun m!732963 () Bool)

(assert (=> d!176225 m!732963))

(assert (=> d!176225 m!731171))

(assert (=> d!176225 m!731171))

(declare-fun m!732965 () Bool)

(assert (=> d!176225 m!732965))

(assert (=> d!176225 m!730215))

(assert (=> b!462982 m!732951))

(assert (=> b!462982 m!732953))

(assert (=> b!462982 m!732953))

(assert (=> b!462982 m!732955))

(assert (=> b!462981 m!732951))

(declare-fun m!732967 () Bool)

(assert (=> b!462981 m!732967))

(assert (=> b!462981 m!731171))

(declare-fun m!732969 () Bool)

(assert (=> b!462981 m!732969))

(assert (=> bm!32125 m!731171))

(declare-fun m!732971 () Bool)

(assert (=> bm!32125 m!732971))

(assert (=> b!462979 m!732951))

(declare-fun m!732973 () Bool)

(assert (=> b!462979 m!732973))

(assert (=> b!462976 m!731171))

(declare-fun m!732975 () Bool)

(assert (=> b!462976 m!732975))

(assert (=> b!462983 m!732951))

(declare-fun m!732977 () Bool)

(assert (=> b!462983 m!732977))

(assert (=> b!462983 m!732977))

(declare-fun m!732979 () Bool)

(assert (=> b!462983 m!732979))

(assert (=> b!462980 m!732951))

(assert (=> b!462980 m!732953))

(assert (=> b!462980 m!732953))

(assert (=> b!462980 m!732955))

(assert (=> b!462980 m!732955))

(declare-fun m!732981 () Bool)

(assert (=> b!462980 m!732981))

(assert (=> b!462125 d!176225))

(declare-fun d!176227 () Bool)

(assert (=> d!176227 (dynLambda!2749 lambda!13656 (h!9892 (t!71885 tokens!465)))))

(declare-fun lt!206839 () Unit!8113)

(assert (=> d!176227 (= lt!206839 (choose!3471 (t!71885 tokens!465) lambda!13656 (h!9892 (t!71885 tokens!465))))))

(declare-fun e!283685 () Bool)

(assert (=> d!176227 e!283685))

(declare-fun res!206117 () Bool)

(assert (=> d!176227 (=> (not res!206117) (not e!283685))))

(assert (=> d!176227 (= res!206117 (forall!1308 (t!71885 tokens!465) lambda!13656))))

(assert (=> d!176227 (= (forallContained!428 (t!71885 tokens!465) lambda!13656 (h!9892 (t!71885 tokens!465))) lt!206839)))

(declare-fun b!462984 () Bool)

(assert (=> b!462984 (= e!283685 (contains!1009 (t!71885 tokens!465) (h!9892 (t!71885 tokens!465))))))

(assert (= (and d!176227 res!206117) b!462984))

(declare-fun b_lambda!19245 () Bool)

(assert (=> (not b_lambda!19245) (not d!176227)))

(declare-fun m!732983 () Bool)

(assert (=> d!176227 m!732983))

(declare-fun m!732985 () Bool)

(assert (=> d!176227 m!732985))

(declare-fun m!732987 () Bool)

(assert (=> d!176227 m!732987))

(declare-fun m!732989 () Bool)

(assert (=> b!462984 m!732989))

(assert (=> b!462125 d!176227))

(declare-fun bs!57453 () Bool)

(declare-fun b!462992 () Bool)

(assert (= bs!57453 (and b!462992 b!461290)))

(declare-fun lambda!13688 () Int)

(assert (=> bs!57453 (not (= lambda!13688 lambda!13617))))

(declare-fun bs!57454 () Bool)

(assert (= bs!57454 (and b!462992 b!462105)))

(assert (=> bs!57454 (= lambda!13688 lambda!13655)))

(declare-fun bs!57456 () Bool)

(assert (= bs!57456 (and b!462992 b!462542)))

(assert (=> bs!57456 (= lambda!13688 lambda!13668)))

(declare-fun bs!57457 () Bool)

(assert (= bs!57457 (and b!462992 b!462130)))

(assert (=> bs!57457 (= lambda!13688 lambda!13658)))

(declare-fun bs!57458 () Bool)

(assert (= bs!57458 (and b!462992 d!175507)))

(assert (=> bs!57458 (not (= lambda!13688 lambda!13634))))

(declare-fun bs!57459 () Bool)

(assert (= bs!57459 (and b!462992 b!461918)))

(assert (=> bs!57459 (= lambda!13688 lambda!13652)))

(declare-fun bs!57460 () Bool)

(assert (= bs!57460 (and b!462992 b!462125)))

(assert (=> bs!57460 (= lambda!13688 lambda!13656)))

(declare-fun bs!57461 () Bool)

(assert (= bs!57461 (and b!462992 d!175483)))

(assert (=> bs!57461 (= lambda!13688 lambda!13628)))

(declare-fun bs!57462 () Bool)

(assert (= bs!57462 (and b!462992 b!461292)))

(assert (=> bs!57462 (= lambda!13688 lambda!13618)))

(declare-fun bs!57463 () Bool)

(assert (= bs!57463 (and b!462992 d!175635)))

(assert (=> bs!57463 (not (= lambda!13688 lambda!13651))))

(declare-fun bs!57464 () Bool)

(assert (= bs!57464 (and b!462992 d!175745)))

(assert (=> bs!57464 (not (= lambda!13688 lambda!13657))))

(declare-fun b!462995 () Bool)

(declare-fun e!283692 () Bool)

(assert (=> b!462995 (= e!283692 true)))

(declare-fun b!462994 () Bool)

(declare-fun e!283691 () Bool)

(assert (=> b!462994 (= e!283691 e!283692)))

(declare-fun b!462993 () Bool)

(declare-fun e!283690 () Bool)

(assert (=> b!462993 (= e!283690 e!283691)))

(assert (=> b!462992 e!283690))

(assert (= b!462994 b!462995))

(assert (= b!462993 b!462994))

(assert (= (and b!462992 ((_ is Cons!4494) rules!1920)) b!462993))

(assert (=> b!462995 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13688))))

(assert (=> b!462995 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13688))))

(assert (=> b!462992 true))

(declare-fun bm!32126 () Bool)

(declare-fun call!32133 () BalanceConc!3152)

(declare-fun c!93236 () Bool)

(declare-fun call!32135 () List!4503)

(declare-fun call!32134 () BalanceConc!3152)

(assert (=> bm!32126 (= call!32135 (list!2004 (ite c!93236 call!32134 call!32133)))))

(declare-fun b!462985 () Bool)

(declare-fun c!93234 () Bool)

(declare-fun lt!206842 () Option!1184)

(assert (=> b!462985 (= c!93234 (and ((_ is Some!1183) lt!206842) (not (= (_1!2961 (v!15532 lt!206842)) (h!9892 (t!71885 (t!71885 tokens!465)))))))))

(declare-fun e!283689 () List!4503)

(declare-fun e!283688 () List!4503)

(assert (=> b!462985 (= e!283689 e!283688)))

(declare-fun b!462986 () Bool)

(declare-fun call!32132 () List!4503)

(declare-fun lt!206840 () List!4503)

(assert (=> b!462986 (= e!283688 (++!1312 call!32132 lt!206840))))

(declare-fun call!32131 () List!4503)

(declare-fun bm!32127 () Bool)

(assert (=> bm!32127 (= call!32132 (++!1312 call!32135 (ite c!93236 lt!206840 call!32131)))))

(declare-fun b!462988 () Bool)

(assert (=> b!462988 (= e!283689 call!32132)))

(declare-fun b!462989 () Bool)

(declare-fun e!283687 () BalanceConc!3152)

(assert (=> b!462989 (= e!283687 call!32133)))

(declare-fun b!462990 () Bool)

(assert (=> b!462990 (= e!283687 (charsOf!518 separatorToken!170))))

(declare-fun bm!32128 () Bool)

(assert (=> bm!32128 (= call!32134 (charsOf!518 (h!9892 (t!71885 (t!71885 tokens!465)))))))

(declare-fun bm!32129 () Bool)

(assert (=> bm!32129 (= call!32133 call!32134)))

(declare-fun b!462991 () Bool)

(assert (=> b!462991 (= e!283688 Nil!4493)))

(assert (=> b!462991 (= (print!486 thiss!17480 (singletonSeq!421 (h!9892 (t!71885 (t!71885 tokens!465))))) (printTailRec!447 thiss!17480 (singletonSeq!421 (h!9892 (t!71885 (t!71885 tokens!465)))) 0 (BalanceConc!3153 Empty!1572)))))

(declare-fun lt!206841 () Unit!8113)

(declare-fun Unit!8143 () Unit!8113)

(assert (=> b!462991 (= lt!206841 Unit!8143)))

(declare-fun lt!206844 () Unit!8113)

(assert (=> b!462991 (= lt!206844 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 call!32131 lt!206840))))

(assert (=> b!462991 false))

(declare-fun lt!206845 () Unit!8113)

(declare-fun Unit!8144 () Unit!8113)

(assert (=> b!462991 (= lt!206845 Unit!8144)))

(declare-fun d!176229 () Bool)

(declare-fun c!93237 () Bool)

(assert (=> d!176229 (= c!93237 ((_ is Cons!4495) (t!71885 (t!71885 tokens!465))))))

(declare-fun e!283686 () List!4503)

(assert (=> d!176229 (= (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (t!71885 (t!71885 tokens!465)) separatorToken!170) e!283686)))

(declare-fun b!462987 () Bool)

(assert (=> b!462987 (= e!283686 Nil!4493)))

(assert (=> b!462992 (= e!283686 e!283689)))

(declare-fun lt!206843 () Unit!8113)

(assert (=> b!462992 (= lt!206843 (forallContained!428 (t!71885 (t!71885 tokens!465)) lambda!13688 (h!9892 (t!71885 (t!71885 tokens!465)))))))

(assert (=> b!462992 (= lt!206840 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (t!71885 (t!71885 (t!71885 tokens!465))) separatorToken!170))))

(assert (=> b!462992 (= lt!206842 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 (t!71885 tokens!465))))) lt!206840)))))

(assert (=> b!462992 (= c!93236 (and ((_ is Some!1183) lt!206842) (= (_1!2961 (v!15532 lt!206842)) (h!9892 (t!71885 (t!71885 tokens!465))))))))

(declare-fun bm!32130 () Bool)

(assert (=> bm!32130 (= call!32131 (list!2004 e!283687))))

(declare-fun c!93235 () Bool)

(assert (=> bm!32130 (= c!93235 c!93234)))

(assert (= (and d!176229 c!93237) b!462992))

(assert (= (and d!176229 (not c!93237)) b!462987))

(assert (= (and b!462992 c!93236) b!462988))

(assert (= (and b!462992 (not c!93236)) b!462985))

(assert (= (and b!462985 c!93234) b!462986))

(assert (= (and b!462985 (not c!93234)) b!462991))

(assert (= (or b!462986 b!462991) bm!32129))

(assert (= (or b!462986 b!462991) bm!32130))

(assert (= (and bm!32130 c!93235) b!462990))

(assert (= (and bm!32130 (not c!93235)) b!462989))

(assert (= (or b!462988 bm!32129) bm!32128))

(assert (= (or b!462988 b!462986) bm!32126))

(assert (= (or b!462988 b!462986) bm!32127))

(declare-fun m!733007 () Bool)

(assert (=> bm!32127 m!733007))

(declare-fun m!733011 () Bool)

(assert (=> bm!32130 m!733011))

(assert (=> b!462990 m!729937))

(declare-fun m!733015 () Bool)

(assert (=> b!462992 m!733015))

(declare-fun m!733017 () Bool)

(assert (=> b!462992 m!733017))

(assert (=> b!462992 m!733015))

(declare-fun m!733019 () Bool)

(assert (=> b!462992 m!733019))

(declare-fun m!733021 () Bool)

(assert (=> b!462992 m!733021))

(assert (=> b!462992 m!733019))

(declare-fun m!733023 () Bool)

(assert (=> b!462992 m!733023))

(assert (=> b!462992 m!733023))

(declare-fun m!733025 () Bool)

(assert (=> b!462992 m!733025))

(assert (=> bm!32128 m!733015))

(declare-fun m!733027 () Bool)

(assert (=> b!462991 m!733027))

(assert (=> b!462991 m!733027))

(declare-fun m!733029 () Bool)

(assert (=> b!462991 m!733029))

(assert (=> b!462991 m!733027))

(declare-fun m!733031 () Bool)

(assert (=> b!462991 m!733031))

(declare-fun m!733033 () Bool)

(assert (=> b!462991 m!733033))

(declare-fun m!733035 () Bool)

(assert (=> b!462986 m!733035))

(declare-fun m!733037 () Bool)

(assert (=> bm!32126 m!733037))

(assert (=> b!462125 d!176229))

(declare-fun e!283700 () Bool)

(declare-fun b!463010 () Bool)

(declare-fun lt!206848 () List!4503)

(assert (=> b!463010 (= e!283700 (or (not (= lt!206310 Nil!4493)) (= lt!206848 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))))))))

(declare-fun b!463007 () Bool)

(declare-fun e!283699 () List!4503)

(assert (=> b!463007 (= e!283699 lt!206310)))

(declare-fun b!463009 () Bool)

(declare-fun res!206124 () Bool)

(assert (=> b!463009 (=> (not res!206124) (not e!283700))))

(assert (=> b!463009 (= res!206124 (= (size!3674 lt!206848) (+ (size!3674 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465))))) (size!3674 lt!206310))))))

(declare-fun d!176235 () Bool)

(assert (=> d!176235 e!283700))

(declare-fun res!206123 () Bool)

(assert (=> d!176235 (=> (not res!206123) (not e!283700))))

(assert (=> d!176235 (= res!206123 (= (content!752 lt!206848) ((_ map or) (content!752 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465))))) (content!752 lt!206310))))))

(assert (=> d!176235 (= lt!206848 e!283699)))

(declare-fun c!93241 () Bool)

(assert (=> d!176235 (= c!93241 ((_ is Nil!4493) (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465))))))))

(assert (=> d!176235 (= (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))) lt!206310) lt!206848)))

(declare-fun b!463008 () Bool)

(assert (=> b!463008 (= e!283699 (Cons!4493 (h!9890 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465))))) (++!1312 (t!71883 (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465))))) lt!206310)))))

(assert (= (and d!176235 c!93241) b!463007))

(assert (= (and d!176235 (not c!93241)) b!463008))

(assert (= (and d!176235 res!206123) b!463009))

(assert (= (and b!463009 res!206124) b!463010))

(declare-fun m!733039 () Bool)

(assert (=> b!463009 m!733039))

(assert (=> b!463009 m!731167))

(declare-fun m!733043 () Bool)

(assert (=> b!463009 m!733043))

(declare-fun m!733045 () Bool)

(assert (=> b!463009 m!733045))

(declare-fun m!733049 () Bool)

(assert (=> d!176235 m!733049))

(assert (=> d!176235 m!731167))

(declare-fun m!733053 () Bool)

(assert (=> d!176235 m!733053))

(declare-fun m!733055 () Bool)

(assert (=> d!176235 m!733055))

(declare-fun m!733059 () Bool)

(assert (=> b!463008 m!733059))

(assert (=> b!462125 d!176235))

(declare-fun d!176237 () Bool)

(assert (=> d!176237 (= (list!2004 (charsOf!518 (h!9892 (t!71885 tokens!465)))) (list!2009 (c!92854 (charsOf!518 (h!9892 (t!71885 tokens!465))))))))

(declare-fun bs!57465 () Bool)

(assert (= bs!57465 d!176237))

(declare-fun m!733067 () Bool)

(assert (=> bs!57465 m!733067))

(assert (=> b!462125 d!176237))

(declare-fun d!176241 () Bool)

(declare-fun lt!206849 () BalanceConc!3152)

(assert (=> d!176241 (= (list!2004 lt!206849) (originalCharacters!918 (h!9892 (t!71885 tokens!465))))))

(assert (=> d!176241 (= lt!206849 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (value!29253 (h!9892 (t!71885 tokens!465)))))))

(assert (=> d!176241 (= (charsOf!518 (h!9892 (t!71885 tokens!465))) lt!206849)))

(declare-fun b_lambda!19249 () Bool)

(assert (=> (not b_lambda!19249) (not d!176241)))

(declare-fun t!72039 () Bool)

(declare-fun tb!46201 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))) t!72039) tb!46201))

(declare-fun b!463011 () Bool)

(declare-fun e!283701 () Bool)

(declare-fun tp!127798 () Bool)

(assert (=> b!463011 (= e!283701 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (value!29253 (h!9892 (t!71885 tokens!465)))))) tp!127798))))

(declare-fun result!50884 () Bool)

(assert (=> tb!46201 (= result!50884 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (value!29253 (h!9892 (t!71885 tokens!465))))) e!283701))))

(assert (= tb!46201 b!463011))

(declare-fun m!733075 () Bool)

(assert (=> b!463011 m!733075))

(declare-fun m!733077 () Bool)

(assert (=> tb!46201 m!733077))

(assert (=> d!176241 t!72039))

(declare-fun b_and!49685 () Bool)

(assert (= b_and!49677 (and (=> t!72039 result!50884) b_and!49685)))

(declare-fun t!72041 () Bool)

(declare-fun tb!46203 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))) t!72041) tb!46203))

(declare-fun result!50886 () Bool)

(assert (= result!50886 result!50884))

(assert (=> d!176241 t!72041))

(declare-fun b_and!49687 () Bool)

(assert (= b_and!49683 (and (=> t!72041 result!50886) b_and!49687)))

(declare-fun t!72043 () Bool)

(declare-fun tb!46205 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))) t!72043) tb!46205))

(declare-fun result!50888 () Bool)

(assert (= result!50888 result!50884))

(assert (=> d!176241 t!72043))

(declare-fun b_and!49689 () Bool)

(assert (= b_and!49675 (and (=> t!72043 result!50888) b_and!49689)))

(declare-fun t!72045 () Bool)

(declare-fun tb!46207 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))) t!72045) tb!46207))

(declare-fun result!50890 () Bool)

(assert (= result!50890 result!50884))

(assert (=> d!176241 t!72045))

(declare-fun b_and!49691 () Bool)

(assert (= b_and!49681 (and (=> t!72045 result!50890) b_and!49691)))

(declare-fun t!72047 () Bool)

(declare-fun tb!46209 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))) t!72047) tb!46209))

(declare-fun result!50892 () Bool)

(assert (= result!50892 result!50884))

(assert (=> d!176241 t!72047))

(declare-fun b_and!49693 () Bool)

(assert (= b_and!49679 (and (=> t!72047 result!50892) b_and!49693)))

(declare-fun m!733081 () Bool)

(assert (=> d!176241 m!733081))

(declare-fun m!733083 () Bool)

(assert (=> d!176241 m!733083))

(assert (=> b!462125 d!176241))

(assert (=> b!461625 d!176101))

(declare-fun d!176249 () Bool)

(assert (=> d!176249 (= (get!1652 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))) (v!15532 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))

(assert (=> b!461625 d!176249))

(declare-fun b!463014 () Bool)

(declare-fun e!283703 () Bool)

(declare-fun e!283705 () Bool)

(assert (=> b!463014 (= e!283703 e!283705)))

(declare-fun res!206125 () Bool)

(assert (=> b!463014 (=> (not res!206125) (not e!283705))))

(declare-fun lt!206856 () Option!1184)

(assert (=> b!463014 (= res!206125 (isDefined!1023 lt!206856))))

(declare-fun b!463015 () Bool)

(declare-fun e!283704 () Option!1184)

(declare-fun lt!206855 () Option!1184)

(declare-fun lt!206853 () Option!1184)

(assert (=> b!463015 (= e!283704 (ite (and ((_ is None!1183) lt!206855) ((_ is None!1183) lt!206853)) None!1183 (ite ((_ is None!1183) lt!206853) lt!206855 (ite ((_ is None!1183) lt!206855) lt!206853 (ite (>= (size!3667 (_1!2961 (v!15532 lt!206855))) (size!3667 (_1!2961 (v!15532 lt!206853)))) lt!206855 lt!206853)))))))

(declare-fun call!32137 () Option!1184)

(assert (=> b!463015 (= lt!206855 call!32137)))

(assert (=> b!463015 (= lt!206853 (maxPrefix!477 thiss!17480 (t!71884 rules!1920) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))

(declare-fun b!463016 () Bool)

(assert (=> b!463016 (= e!283704 call!32137)))

(declare-fun b!463017 () Bool)

(declare-fun res!206126 () Bool)

(assert (=> b!463017 (=> (not res!206126) (not e!283705))))

(assert (=> b!463017 (= res!206126 (matchR!417 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206856)))) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206856))))))))

(declare-fun bm!32132 () Bool)

(assert (=> bm!32132 (= call!32137 (maxPrefixOneRule!229 thiss!17480 (h!9891 rules!1920) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))

(declare-fun d!176251 () Bool)

(assert (=> d!176251 e!283703))

(declare-fun res!206130 () Bool)

(assert (=> d!176251 (=> res!206130 e!283703)))

(assert (=> d!176251 (= res!206130 (isEmpty!3490 lt!206856))))

(assert (=> d!176251 (= lt!206856 e!283704)))

(declare-fun c!93243 () Bool)

(assert (=> d!176251 (= c!93243 (and ((_ is Cons!4494) rules!1920) ((_ is Nil!4494) (t!71884 rules!1920))))))

(declare-fun lt!206854 () Unit!8113)

(declare-fun lt!206852 () Unit!8113)

(assert (=> d!176251 (= lt!206854 lt!206852)))

(assert (=> d!176251 (isPrefix!527 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))

(assert (=> d!176251 (= lt!206852 (lemmaIsPrefixRefl!295 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))

(assert (=> d!176251 (rulesValidInductive!290 thiss!17480 rules!1920)))

(assert (=> d!176251 (= (maxPrefix!477 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))) lt!206856)))

(declare-fun b!463018 () Bool)

(assert (=> b!463018 (= e!283705 (contains!1008 rules!1920 (rule!1570 (_1!2961 (get!1652 lt!206856)))))))

(declare-fun b!463019 () Bool)

(declare-fun res!206128 () Bool)

(assert (=> b!463019 (=> (not res!206128) (not e!283705))))

(assert (=> b!463019 (= res!206128 (= (++!1312 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206856)))) (_2!2961 (get!1652 lt!206856))) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))

(declare-fun b!463020 () Bool)

(declare-fun res!206127 () Bool)

(assert (=> b!463020 (=> (not res!206127) (not e!283705))))

(assert (=> b!463020 (= res!206127 (< (size!3674 (_2!2961 (get!1652 lt!206856))) (size!3674 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))

(declare-fun b!463021 () Bool)

(declare-fun res!206131 () Bool)

(assert (=> b!463021 (=> (not res!206131) (not e!283705))))

(assert (=> b!463021 (= res!206131 (= (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206856)))) (originalCharacters!918 (_1!2961 (get!1652 lt!206856)))))))

(declare-fun b!463022 () Bool)

(declare-fun res!206129 () Bool)

(assert (=> b!463022 (=> (not res!206129) (not e!283705))))

(assert (=> b!463022 (= res!206129 (= (value!29253 (_1!2961 (get!1652 lt!206856))) (apply!1155 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206856)))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!206856)))))))))

(assert (= (and d!176251 c!93243) b!463016))

(assert (= (and d!176251 (not c!93243)) b!463015))

(assert (= (or b!463016 b!463015) bm!32132))

(assert (= (and d!176251 (not res!206130)) b!463014))

(assert (= (and b!463014 res!206125) b!463021))

(assert (= (and b!463021 res!206131) b!463020))

(assert (= (and b!463020 res!206127) b!463019))

(assert (= (and b!463019 res!206128) b!463022))

(assert (= (and b!463022 res!206129) b!463017))

(assert (= (and b!463017 res!206126) b!463018))

(declare-fun m!733087 () Bool)

(assert (=> b!463017 m!733087))

(declare-fun m!733089 () Bool)

(assert (=> b!463017 m!733089))

(assert (=> b!463017 m!733089))

(declare-fun m!733091 () Bool)

(assert (=> b!463017 m!733091))

(assert (=> b!463017 m!733091))

(declare-fun m!733093 () Bool)

(assert (=> b!463017 m!733093))

(declare-fun m!733095 () Bool)

(assert (=> b!463014 m!733095))

(declare-fun m!733097 () Bool)

(assert (=> d!176251 m!733097))

(assert (=> d!176251 m!730337))

(assert (=> d!176251 m!730337))

(assert (=> d!176251 m!732453))

(assert (=> d!176251 m!730337))

(assert (=> d!176251 m!730337))

(assert (=> d!176251 m!732455))

(assert (=> d!176251 m!730215))

(assert (=> b!463021 m!733087))

(assert (=> b!463021 m!733089))

(assert (=> b!463021 m!733089))

(assert (=> b!463021 m!733091))

(assert (=> b!463020 m!733087))

(declare-fun m!733099 () Bool)

(assert (=> b!463020 m!733099))

(assert (=> b!463020 m!730337))

(declare-fun m!733101 () Bool)

(assert (=> b!463020 m!733101))

(assert (=> bm!32132 m!730337))

(assert (=> bm!32132 m!732171))

(assert (=> b!463018 m!733087))

(declare-fun m!733103 () Bool)

(assert (=> b!463018 m!733103))

(assert (=> b!463015 m!730337))

(declare-fun m!733105 () Bool)

(assert (=> b!463015 m!733105))

(assert (=> b!463022 m!733087))

(declare-fun m!733107 () Bool)

(assert (=> b!463022 m!733107))

(assert (=> b!463022 m!733107))

(declare-fun m!733109 () Bool)

(assert (=> b!463022 m!733109))

(assert (=> b!463019 m!733087))

(assert (=> b!463019 m!733089))

(assert (=> b!463019 m!733089))

(assert (=> b!463019 m!733091))

(assert (=> b!463019 m!733091))

(declare-fun m!733115 () Bool)

(assert (=> b!463019 m!733115))

(assert (=> b!461625 d!176251))

(assert (=> b!461625 d!176105))

(declare-fun b!463025 () Bool)

(declare-fun e!283712 () Bool)

(declare-fun lt!206861 () Bool)

(assert (=> b!463025 (= e!283712 (not lt!206861))))

(declare-fun b!463026 () Bool)

(declare-fun res!206136 () Bool)

(declare-fun e!283711 () Bool)

(assert (=> b!463026 (=> (not res!206136) (not e!283711))))

(assert (=> b!463026 (= res!206136 (isEmpty!3484 (tail!652 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011)))))))))

(declare-fun b!463027 () Bool)

(declare-fun e!283713 () Bool)

(declare-fun call!32138 () Bool)

(assert (=> b!463027 (= e!283713 (= lt!206861 call!32138))))

(declare-fun b!463028 () Bool)

(assert (=> b!463028 (= e!283711 (= (head!1134 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011))))) (c!92855 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))))))

(declare-fun b!463029 () Bool)

(declare-fun e!283710 () Bool)

(assert (=> b!463029 (= e!283710 (not (= (head!1134 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011))))) (c!92855 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206011))))))))))

(declare-fun bm!32133 () Bool)

(assert (=> bm!32133 (= call!32138 (isEmpty!3484 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011))))))))

(declare-fun b!463031 () Bool)

(declare-fun res!206134 () Bool)

(assert (=> b!463031 (=> res!206134 e!283710)))

(assert (=> b!463031 (= res!206134 (not (isEmpty!3484 (tail!652 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011))))))))))

(declare-fun b!463032 () Bool)

(declare-fun e!283708 () Bool)

(assert (=> b!463032 (= e!283708 e!283710)))

(declare-fun res!206132 () Bool)

(assert (=> b!463032 (=> res!206132 e!283710)))

(assert (=> b!463032 (= res!206132 call!32138)))

(declare-fun b!463033 () Bool)

(declare-fun res!206138 () Bool)

(declare-fun e!283709 () Bool)

(assert (=> b!463033 (=> res!206138 e!283709)))

(assert (=> b!463033 (= res!206138 (not ((_ is ElementMatch!1099) (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))))))

(assert (=> b!463033 (= e!283712 e!283709)))

(declare-fun b!463034 () Bool)

(assert (=> b!463034 (= e!283709 e!283708)))

(declare-fun res!206137 () Bool)

(assert (=> b!463034 (=> (not res!206137) (not e!283708))))

(assert (=> b!463034 (= res!206137 (not lt!206861))))

(declare-fun b!463035 () Bool)

(declare-fun e!283707 () Bool)

(assert (=> b!463035 (= e!283707 (matchR!417 (derivativeStep!217 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))) (head!1134 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011)))))) (tail!652 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011)))))))))

(declare-fun b!463036 () Bool)

(declare-fun res!206139 () Bool)

(assert (=> b!463036 (=> (not res!206139) (not e!283711))))

(assert (=> b!463036 (= res!206139 (not call!32138))))

(declare-fun d!176257 () Bool)

(assert (=> d!176257 e!283713))

(declare-fun c!93246 () Bool)

(assert (=> d!176257 (= c!93246 ((_ is EmptyExpr!1099) (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206011))))))))

(assert (=> d!176257 (= lt!206861 e!283707)))

(declare-fun c!93245 () Bool)

(assert (=> d!176257 (= c!93245 (isEmpty!3484 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011))))))))

(assert (=> d!176257 (validRegex!326 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))))

(assert (=> d!176257 (= (matchR!417 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206011))))) lt!206861)))

(declare-fun b!463030 () Bool)

(assert (=> b!463030 (= e!283707 (nullable!251 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206011))))))))

(declare-fun b!463037 () Bool)

(declare-fun res!206135 () Bool)

(assert (=> b!463037 (=> res!206135 e!283709)))

(assert (=> b!463037 (= res!206135 e!283711)))

(declare-fun res!206133 () Bool)

(assert (=> b!463037 (=> (not res!206133) (not e!283711))))

(assert (=> b!463037 (= res!206133 lt!206861)))

(declare-fun b!463038 () Bool)

(assert (=> b!463038 (= e!283713 e!283712)))

(declare-fun c!93247 () Bool)

(assert (=> b!463038 (= c!93247 ((_ is EmptyLang!1099) (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206011))))))))

(assert (= (and d!176257 c!93245) b!463030))

(assert (= (and d!176257 (not c!93245)) b!463035))

(assert (= (and d!176257 c!93246) b!463027))

(assert (= (and d!176257 (not c!93246)) b!463038))

(assert (= (and b!463038 c!93247) b!463025))

(assert (= (and b!463038 (not c!93247)) b!463033))

(assert (= (and b!463033 (not res!206138)) b!463037))

(assert (= (and b!463037 res!206133) b!463036))

(assert (= (and b!463036 res!206139) b!463026))

(assert (= (and b!463026 res!206136) b!463028))

(assert (= (and b!463037 (not res!206135)) b!463034))

(assert (= (and b!463034 res!206137) b!463032))

(assert (= (and b!463032 (not res!206132)) b!463031))

(assert (= (and b!463031 (not res!206134)) b!463029))

(assert (= (or b!463027 b!463036 b!463032) bm!32133))

(assert (=> b!463028 m!730275))

(declare-fun m!733133 () Bool)

(assert (=> b!463028 m!733133))

(assert (=> b!463026 m!730275))

(declare-fun m!733135 () Bool)

(assert (=> b!463026 m!733135))

(assert (=> b!463026 m!733135))

(declare-fun m!733137 () Bool)

(assert (=> b!463026 m!733137))

(assert (=> bm!32133 m!730275))

(declare-fun m!733139 () Bool)

(assert (=> bm!32133 m!733139))

(assert (=> b!463031 m!730275))

(assert (=> b!463031 m!733135))

(assert (=> b!463031 m!733135))

(assert (=> b!463031 m!733137))

(declare-fun m!733141 () Bool)

(assert (=> b!463030 m!733141))

(assert (=> b!463035 m!730275))

(assert (=> b!463035 m!733133))

(assert (=> b!463035 m!733133))

(declare-fun m!733143 () Bool)

(assert (=> b!463035 m!733143))

(assert (=> b!463035 m!730275))

(assert (=> b!463035 m!733135))

(assert (=> b!463035 m!733143))

(assert (=> b!463035 m!733135))

(declare-fun m!733145 () Bool)

(assert (=> b!463035 m!733145))

(assert (=> d!176257 m!730275))

(assert (=> d!176257 m!733139))

(declare-fun m!733147 () Bool)

(assert (=> d!176257 m!733147))

(assert (=> b!463029 m!730275))

(assert (=> b!463029 m!733133))

(assert (=> b!461573 d!176257))

(assert (=> b!461573 d!176029))

(assert (=> b!461573 d!176109))

(assert (=> b!461573 d!176111))

(declare-fun d!176263 () Bool)

(assert (=> d!176263 (= (inv!5570 (tag!1135 (rule!1570 (h!9892 (t!71885 tokens!465))))) (= (mod (str.len (value!29252 (tag!1135 (rule!1570 (h!9892 (t!71885 tokens!465)))))) 2) 0))))

(assert (=> b!462207 d!176263))

(declare-fun d!176265 () Bool)

(declare-fun res!206142 () Bool)

(declare-fun e!283716 () Bool)

(assert (=> d!176265 (=> (not res!206142) (not e!283716))))

(assert (=> d!176265 (= res!206142 (semiInverseModEq!349 (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toValue!1694 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))))))

(assert (=> d!176265 (= (inv!5574 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) e!283716)))

(declare-fun b!463043 () Bool)

(assert (=> b!463043 (= e!283716 (equivClasses!332 (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toValue!1694 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))))))

(assert (= (and d!176265 res!206142) b!463043))

(declare-fun m!733149 () Bool)

(assert (=> d!176265 m!733149))

(declare-fun m!733151 () Bool)

(assert (=> b!463043 m!733151))

(assert (=> b!462207 d!176265))

(declare-fun bs!57470 () Bool)

(declare-fun d!176267 () Bool)

(assert (= bs!57470 (and d!176267 b!462600)))

(declare-fun lambda!13689 () Int)

(assert (=> bs!57470 (= (and (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (= (toValue!1694 (transformation!875 (rule!1570 separatorToken!170))) (toValue!1694 (transformation!875 (h!9891 rules!1920))))) (= lambda!13689 lambda!13678))))

(declare-fun bs!57471 () Bool)

(assert (= bs!57471 (and d!176267 d!176123)))

(assert (=> bs!57471 (= (and (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (= (toValue!1694 (transformation!875 (rule!1570 separatorToken!170))) (toValue!1694 (transformation!875 (h!9891 rules!1920))))) (= lambda!13689 lambda!13684))))

(assert (=> d!176267 true))

(assert (=> d!176267 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170)))) (dynLambda!2752 order!4019 lambda!13689))))

(assert (=> d!176267 true))

(assert (=> d!176267 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (rule!1570 separatorToken!170)))) (dynLambda!2752 order!4019 lambda!13689))))

(assert (=> d!176267 (= (semiInverseModEq!349 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toValue!1694 (transformation!875 (rule!1570 separatorToken!170)))) (Forall!214 lambda!13689))))

(declare-fun bs!57472 () Bool)

(assert (= bs!57472 d!176267))

(declare-fun m!733153 () Bool)

(assert (=> bs!57472 m!733153))

(assert (=> d!175629 d!176267))

(declare-fun d!176269 () Bool)

(declare-fun lt!206865 () Bool)

(assert (=> d!176269 (= lt!206865 (isEmpty!3483 (list!2005 (_1!2963 lt!206066))))))

(assert (=> d!176269 (= lt!206865 (isEmpty!3487 (c!92856 (_1!2963 lt!206066))))))

(assert (=> d!176269 (= (isEmpty!3485 (_1!2963 lt!206066)) lt!206865)))

(declare-fun bs!57473 () Bool)

(assert (= bs!57473 d!176269))

(assert (=> bs!57473 m!730443))

(assert (=> bs!57473 m!730443))

(declare-fun m!733155 () Bool)

(assert (=> bs!57473 m!733155))

(declare-fun m!733157 () Bool)

(assert (=> bs!57473 m!733157))

(assert (=> b!461654 d!176269))

(declare-fun d!176271 () Bool)

(assert (=> d!176271 (= (isEmpty!3484 lt!205905) ((_ is Nil!4493) lt!205905))))

(assert (=> bm!31992 d!176271))

(declare-fun b!463046 () Bool)

(declare-fun e!283719 () Bool)

(declare-fun e!283721 () Bool)

(assert (=> b!463046 (= e!283719 e!283721)))

(declare-fun res!206145 () Bool)

(assert (=> b!463046 (=> (not res!206145) (not e!283721))))

(declare-fun lt!206870 () Option!1184)

(assert (=> b!463046 (= res!206145 (isDefined!1023 lt!206870))))

(declare-fun b!463047 () Bool)

(declare-fun e!283720 () Option!1184)

(declare-fun lt!206869 () Option!1184)

(declare-fun lt!206867 () Option!1184)

(assert (=> b!463047 (= e!283720 (ite (and ((_ is None!1183) lt!206869) ((_ is None!1183) lt!206867)) None!1183 (ite ((_ is None!1183) lt!206867) lt!206869 (ite ((_ is None!1183) lt!206869) lt!206867 (ite (>= (size!3667 (_1!2961 (v!15532 lt!206869))) (size!3667 (_1!2961 (v!15532 lt!206867)))) lt!206869 lt!206867)))))))

(declare-fun call!32139 () Option!1184)

(assert (=> b!463047 (= lt!206869 call!32139)))

(assert (=> b!463047 (= lt!206867 (maxPrefix!477 thiss!17480 (t!71884 (t!71884 rules!1920)) lt!205920))))

(declare-fun b!463048 () Bool)

(assert (=> b!463048 (= e!283720 call!32139)))

(declare-fun b!463049 () Bool)

(declare-fun res!206146 () Bool)

(assert (=> b!463049 (=> (not res!206146) (not e!283721))))

(assert (=> b!463049 (= res!206146 (matchR!417 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!206870)))) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206870))))))))

(declare-fun bm!32134 () Bool)

(assert (=> bm!32134 (= call!32139 (maxPrefixOneRule!229 thiss!17480 (h!9891 (t!71884 rules!1920)) lt!205920))))

(declare-fun d!176273 () Bool)

(assert (=> d!176273 e!283719))

(declare-fun res!206150 () Bool)

(assert (=> d!176273 (=> res!206150 e!283719)))

(assert (=> d!176273 (= res!206150 (isEmpty!3490 lt!206870))))

(assert (=> d!176273 (= lt!206870 e!283720)))

(declare-fun c!93250 () Bool)

(assert (=> d!176273 (= c!93250 (and ((_ is Cons!4494) (t!71884 rules!1920)) ((_ is Nil!4494) (t!71884 (t!71884 rules!1920)))))))

(declare-fun lt!206868 () Unit!8113)

(declare-fun lt!206866 () Unit!8113)

(assert (=> d!176273 (= lt!206868 lt!206866)))

(assert (=> d!176273 (isPrefix!527 lt!205920 lt!205920)))

(assert (=> d!176273 (= lt!206866 (lemmaIsPrefixRefl!295 lt!205920 lt!205920))))

(assert (=> d!176273 (rulesValidInductive!290 thiss!17480 (t!71884 rules!1920))))

(assert (=> d!176273 (= (maxPrefix!477 thiss!17480 (t!71884 rules!1920) lt!205920) lt!206870)))

(declare-fun b!463050 () Bool)

(assert (=> b!463050 (= e!283721 (contains!1008 (t!71884 rules!1920) (rule!1570 (_1!2961 (get!1652 lt!206870)))))))

(declare-fun b!463051 () Bool)

(declare-fun res!206148 () Bool)

(assert (=> b!463051 (=> (not res!206148) (not e!283721))))

(assert (=> b!463051 (= res!206148 (= (++!1312 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206870)))) (_2!2961 (get!1652 lt!206870))) lt!205920))))

(declare-fun b!463052 () Bool)

(declare-fun res!206147 () Bool)

(assert (=> b!463052 (=> (not res!206147) (not e!283721))))

(assert (=> b!463052 (= res!206147 (< (size!3674 (_2!2961 (get!1652 lt!206870))) (size!3674 lt!205920)))))

(declare-fun b!463053 () Bool)

(declare-fun res!206151 () Bool)

(assert (=> b!463053 (=> (not res!206151) (not e!283721))))

(assert (=> b!463053 (= res!206151 (= (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206870)))) (originalCharacters!918 (_1!2961 (get!1652 lt!206870)))))))

(declare-fun b!463054 () Bool)

(declare-fun res!206149 () Bool)

(assert (=> b!463054 (=> (not res!206149) (not e!283721))))

(assert (=> b!463054 (= res!206149 (= (value!29253 (_1!2961 (get!1652 lt!206870))) (apply!1155 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206870)))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!206870)))))))))

(assert (= (and d!176273 c!93250) b!463048))

(assert (= (and d!176273 (not c!93250)) b!463047))

(assert (= (or b!463048 b!463047) bm!32134))

(assert (= (and d!176273 (not res!206150)) b!463046))

(assert (= (and b!463046 res!206145) b!463053))

(assert (= (and b!463053 res!206151) b!463052))

(assert (= (and b!463052 res!206147) b!463051))

(assert (= (and b!463051 res!206148) b!463054))

(assert (= (and b!463054 res!206149) b!463049))

(assert (= (and b!463049 res!206146) b!463050))

(declare-fun m!733169 () Bool)

(assert (=> b!463049 m!733169))

(declare-fun m!733171 () Bool)

(assert (=> b!463049 m!733171))

(assert (=> b!463049 m!733171))

(declare-fun m!733173 () Bool)

(assert (=> b!463049 m!733173))

(assert (=> b!463049 m!733173))

(declare-fun m!733175 () Bool)

(assert (=> b!463049 m!733175))

(declare-fun m!733177 () Bool)

(assert (=> b!463046 m!733177))

(declare-fun m!733179 () Bool)

(assert (=> d!176273 m!733179))

(assert (=> d!176273 m!730211))

(assert (=> d!176273 m!730213))

(declare-fun m!733181 () Bool)

(assert (=> d!176273 m!733181))

(assert (=> b!463053 m!733169))

(assert (=> b!463053 m!733171))

(assert (=> b!463053 m!733171))

(assert (=> b!463053 m!733173))

(assert (=> b!463052 m!733169))

(declare-fun m!733183 () Bool)

(assert (=> b!463052 m!733183))

(assert (=> b!463052 m!730219))

(declare-fun m!733185 () Bool)

(assert (=> bm!32134 m!733185))

(assert (=> b!463050 m!733169))

(declare-fun m!733187 () Bool)

(assert (=> b!463050 m!733187))

(declare-fun m!733189 () Bool)

(assert (=> b!463047 m!733189))

(assert (=> b!463054 m!733169))

(declare-fun m!733191 () Bool)

(assert (=> b!463054 m!733191))

(assert (=> b!463054 m!733191))

(declare-fun m!733193 () Bool)

(assert (=> b!463054 m!733193))

(assert (=> b!463051 m!733169))

(assert (=> b!463051 m!733171))

(assert (=> b!463051 m!733171))

(assert (=> b!463051 m!733173))

(assert (=> b!463051 m!733173))

(declare-fun m!733195 () Bool)

(assert (=> b!463051 m!733195))

(assert (=> b!461521 d!176273))

(declare-fun d!176279 () Bool)

(declare-fun c!93259 () Bool)

(assert (=> d!176279 (= c!93259 ((_ is Node!1572) (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170)))))))

(declare-fun e!283735 () Bool)

(assert (=> d!176279 (= (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170)))) e!283735)))

(declare-fun b!463077 () Bool)

(declare-fun inv!5581 (Conc!1572) Bool)

(assert (=> b!463077 (= e!283735 (inv!5581 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170)))))))

(declare-fun b!463078 () Bool)

(declare-fun e!283736 () Bool)

(assert (=> b!463078 (= e!283735 e!283736)))

(declare-fun res!206157 () Bool)

(assert (=> b!463078 (= res!206157 (not ((_ is Leaf!2349) (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170))))))))

(assert (=> b!463078 (=> res!206157 e!283736)))

(declare-fun b!463079 () Bool)

(declare-fun inv!5582 (Conc!1572) Bool)

(assert (=> b!463079 (= e!283736 (inv!5582 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170)))))))

(assert (= (and d!176279 c!93259) b!463077))

(assert (= (and d!176279 (not c!93259)) b!463078))

(assert (= (and b!463078 (not res!206157)) b!463079))

(declare-fun m!733229 () Bool)

(assert (=> b!463077 m!733229))

(declare-fun m!733233 () Bool)

(assert (=> b!463079 m!733233))

(assert (=> b!461792 d!176279))

(declare-fun d!176293 () Bool)

(declare-fun e!283744 () Bool)

(assert (=> d!176293 e!283744))

(declare-fun res!206168 () Bool)

(assert (=> d!176293 (=> (not res!206168) (not e!283744))))

(declare-fun lt!206886 () BalanceConc!3154)

(assert (=> d!176293 (= res!206168 (= (list!2005 lt!206886) (t!71885 tokens!465)))))

(declare-fun fromList!261 (List!4505) Conc!1573)

(assert (=> d!176293 (= lt!206886 (BalanceConc!3155 (fromList!261 (t!71885 tokens!465))))))

(assert (=> d!176293 (= (fromListB!498 (t!71885 tokens!465)) lt!206886)))

(declare-fun b!463094 () Bool)

(assert (=> b!463094 (= e!283744 (isBalanced!480 (fromList!261 (t!71885 tokens!465))))))

(assert (= (and d!176293 res!206168) b!463094))

(declare-fun m!733269 () Bool)

(assert (=> d!176293 m!733269))

(declare-fun m!733271 () Bool)

(assert (=> d!176293 m!733271))

(assert (=> b!463094 m!733271))

(assert (=> b!463094 m!733271))

(declare-fun m!733273 () Bool)

(assert (=> b!463094 m!733273))

(assert (=> d!175733 d!176293))

(assert (=> d!175603 d!176271))

(declare-fun d!176299 () Bool)

(declare-fun res!206179 () Bool)

(declare-fun e!283765 () Bool)

(assert (=> d!176299 (=> res!206179 e!283765)))

(assert (=> d!176299 (= res!206179 ((_ is ElementMatch!1099) (regex!875 (rule!1570 (h!9892 tokens!465)))))))

(assert (=> d!176299 (= (validRegex!326 (regex!875 (rule!1570 (h!9892 tokens!465)))) e!283765)))

(declare-fun b!463113 () Bool)

(declare-fun e!283761 () Bool)

(declare-fun e!283762 () Bool)

(assert (=> b!463113 (= e!283761 e!283762)))

(declare-fun res!206182 () Bool)

(assert (=> b!463113 (= res!206182 (not (nullable!251 (reg!1428 (regex!875 (rule!1570 (h!9892 tokens!465)))))))))

(assert (=> b!463113 (=> (not res!206182) (not e!283762))))

(declare-fun b!463114 () Bool)

(declare-fun e!283764 () Bool)

(declare-fun call!32148 () Bool)

(assert (=> b!463114 (= e!283764 call!32148)))

(declare-fun b!463115 () Bool)

(declare-fun res!206183 () Bool)

(declare-fun e!283760 () Bool)

(assert (=> b!463115 (=> res!206183 e!283760)))

(assert (=> b!463115 (= res!206183 (not ((_ is Concat!1997) (regex!875 (rule!1570 (h!9892 tokens!465))))))))

(declare-fun e!283763 () Bool)

(assert (=> b!463115 (= e!283763 e!283760)))

(declare-fun bm!32142 () Bool)

(declare-fun call!32149 () Bool)

(declare-fun c!93267 () Bool)

(assert (=> bm!32142 (= call!32149 (validRegex!326 (ite c!93267 (regTwo!2711 (regex!875 (rule!1570 (h!9892 tokens!465)))) (regOne!2710 (regex!875 (rule!1570 (h!9892 tokens!465)))))))))

(declare-fun b!463116 () Bool)

(declare-fun res!206180 () Bool)

(declare-fun e!283759 () Bool)

(assert (=> b!463116 (=> (not res!206180) (not e!283759))))

(assert (=> b!463116 (= res!206180 call!32148)))

(assert (=> b!463116 (= e!283763 e!283759)))

(declare-fun bm!32143 () Bool)

(declare-fun call!32147 () Bool)

(assert (=> bm!32143 (= call!32148 call!32147)))

(declare-fun b!463117 () Bool)

(assert (=> b!463117 (= e!283759 call!32149)))

(declare-fun b!463118 () Bool)

(assert (=> b!463118 (= e!283762 call!32147)))

(declare-fun b!463119 () Bool)

(assert (=> b!463119 (= e!283761 e!283763)))

(assert (=> b!463119 (= c!93267 ((_ is Union!1099) (regex!875 (rule!1570 (h!9892 tokens!465)))))))

(declare-fun bm!32144 () Bool)

(declare-fun c!93268 () Bool)

(assert (=> bm!32144 (= call!32147 (validRegex!326 (ite c!93268 (reg!1428 (regex!875 (rule!1570 (h!9892 tokens!465)))) (ite c!93267 (regOne!2711 (regex!875 (rule!1570 (h!9892 tokens!465)))) (regTwo!2710 (regex!875 (rule!1570 (h!9892 tokens!465))))))))))

(declare-fun b!463120 () Bool)

(assert (=> b!463120 (= e!283760 e!283764)))

(declare-fun res!206181 () Bool)

(assert (=> b!463120 (=> (not res!206181) (not e!283764))))

(assert (=> b!463120 (= res!206181 call!32149)))

(declare-fun b!463121 () Bool)

(assert (=> b!463121 (= e!283765 e!283761)))

(assert (=> b!463121 (= c!93268 ((_ is Star!1099) (regex!875 (rule!1570 (h!9892 tokens!465)))))))

(assert (= (and d!176299 (not res!206179)) b!463121))

(assert (= (and b!463121 c!93268) b!463113))

(assert (= (and b!463121 (not c!93268)) b!463119))

(assert (= (and b!463113 res!206182) b!463118))

(assert (= (and b!463119 c!93267) b!463116))

(assert (= (and b!463119 (not c!93267)) b!463115))

(assert (= (and b!463116 res!206180) b!463117))

(assert (= (and b!463115 (not res!206183)) b!463120))

(assert (= (and b!463120 res!206181) b!463114))

(assert (= (or b!463116 b!463114) bm!32143))

(assert (= (or b!463117 b!463120) bm!32142))

(assert (= (or b!463118 bm!32143) bm!32144))

(declare-fun m!733277 () Bool)

(assert (=> b!463113 m!733277))

(declare-fun m!733279 () Bool)

(assert (=> bm!32142 m!733279))

(declare-fun m!733281 () Bool)

(assert (=> bm!32144 m!733281))

(assert (=> d!175603 d!176299))

(declare-fun b!463122 () Bool)

(declare-fun e!283766 () List!4505)

(declare-fun call!32150 () List!4505)

(assert (=> b!463122 (= e!283766 call!32150)))

(declare-fun b!463123 () Bool)

(declare-fun e!283768 () Bool)

(declare-fun lt!206887 () List!4505)

(assert (=> b!463123 (= e!283768 (forall!1308 lt!206887 lambda!13617))))

(declare-fun b!463124 () Bool)

(declare-fun e!283767 () List!4505)

(assert (=> b!463124 (= e!283767 Nil!4495)))

(declare-fun b!463126 () Bool)

(assert (=> b!463126 (= e!283767 e!283766)))

(declare-fun c!93269 () Bool)

(assert (=> b!463126 (= c!93269 (dynLambda!2749 lambda!13617 (h!9892 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))))))

(declare-fun b!463125 () Bool)

(assert (=> b!463125 (= e!283766 (Cons!4495 (h!9892 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))))) call!32150))))

(declare-fun d!176303 () Bool)

(assert (=> d!176303 e!283768))

(declare-fun res!206184 () Bool)

(assert (=> d!176303 (=> (not res!206184) (not e!283768))))

(assert (=> d!176303 (= res!206184 (<= (size!3675 lt!206887) (size!3675 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))))))

(assert (=> d!176303 (= lt!206887 e!283767)))

(declare-fun c!93270 () Bool)

(assert (=> d!176303 (= c!93270 ((_ is Nil!4495) (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))))))))

(assert (=> d!176303 (= (filter!103 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))) lambda!13617) lt!206887)))

(declare-fun b!463127 () Bool)

(declare-fun res!206185 () Bool)

(assert (=> b!463127 (=> (not res!206185) (not e!283768))))

(assert (=> b!463127 (= res!206185 (= ((_ map implies) (content!753 lt!206887) (content!753 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))) ((as const (InoxSet Token!1494)) true)))))

(declare-fun bm!32145 () Bool)

(assert (=> bm!32145 (= call!32150 (filter!103 (t!71885 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))))) lambda!13617))))

(assert (= (and d!176303 c!93270) b!463124))

(assert (= (and d!176303 (not c!93270)) b!463126))

(assert (= (and b!463126 c!93269) b!463125))

(assert (= (and b!463126 (not c!93269)) b!463122))

(assert (= (or b!463125 b!463122) bm!32145))

(assert (= (and d!176303 res!206184) b!463127))

(assert (= (and b!463127 res!206185) b!463123))

(declare-fun b_lambda!19253 () Bool)

(assert (=> (not b_lambda!19253) (not b!463126)))

(declare-fun m!733283 () Bool)

(assert (=> b!463126 m!733283))

(declare-fun m!733285 () Bool)

(assert (=> d!176303 m!733285))

(declare-fun m!733287 () Bool)

(assert (=> d!176303 m!733287))

(declare-fun m!733289 () Bool)

(assert (=> b!463123 m!733289))

(declare-fun m!733291 () Bool)

(assert (=> b!463127 m!733291))

(declare-fun m!733293 () Bool)

(assert (=> b!463127 m!733293))

(declare-fun m!733295 () Bool)

(assert (=> bm!32145 m!733295))

(assert (=> bm!31972 d!176303))

(declare-fun d!176305 () Bool)

(declare-fun res!206186 () Bool)

(declare-fun e!283769 () Bool)

(assert (=> d!176305 (=> res!206186 e!283769)))

(assert (=> d!176305 (= res!206186 ((_ is Nil!4495) (list!2005 lt!205904)))))

(assert (=> d!176305 (= (forall!1308 (list!2005 lt!205904) lambda!13628) e!283769)))

(declare-fun b!463128 () Bool)

(declare-fun e!283770 () Bool)

(assert (=> b!463128 (= e!283769 e!283770)))

(declare-fun res!206187 () Bool)

(assert (=> b!463128 (=> (not res!206187) (not e!283770))))

(assert (=> b!463128 (= res!206187 (dynLambda!2749 lambda!13628 (h!9892 (list!2005 lt!205904))))))

(declare-fun b!463129 () Bool)

(assert (=> b!463129 (= e!283770 (forall!1308 (t!71885 (list!2005 lt!205904)) lambda!13628))))

(assert (= (and d!176305 (not res!206186)) b!463128))

(assert (= (and b!463128 res!206187) b!463129))

(declare-fun b_lambda!19255 () Bool)

(assert (=> (not b_lambda!19255) (not b!463128)))

(declare-fun m!733297 () Bool)

(assert (=> b!463128 m!733297))

(declare-fun m!733299 () Bool)

(assert (=> b!463129 m!733299))

(assert (=> d!175483 d!176305))

(assert (=> d!175483 d!175983))

(declare-fun d!176307 () Bool)

(declare-fun lt!206890 () Bool)

(assert (=> d!176307 (= lt!206890 (forall!1308 (list!2005 lt!205904) lambda!13628))))

(declare-fun forall!1312 (Conc!1573 Int) Bool)

(assert (=> d!176307 (= lt!206890 (forall!1312 (c!92856 lt!205904) lambda!13628))))

(assert (=> d!176307 (= (forall!1310 lt!205904 lambda!13628) lt!206890)))

(declare-fun bs!57476 () Bool)

(assert (= bs!57476 d!176307))

(assert (=> bs!57476 m!730059))

(assert (=> bs!57476 m!730059))

(assert (=> bs!57476 m!730061))

(declare-fun m!733301 () Bool)

(assert (=> bs!57476 m!733301))

(assert (=> d!175483 d!176307))

(assert (=> d!175483 d!175759))

(declare-fun b!463131 () Bool)

(declare-fun res!206189 () Bool)

(declare-fun e!283771 () Bool)

(assert (=> b!463131 (=> (not res!206189) (not e!283771))))

(assert (=> b!463131 (= res!206189 (<= (height!239 (++!1317 (c!92854 call!32052) (c!92854 (ite c!92975 lt!206235 call!32049)))) (+ (max!0 (height!239 (c!92854 call!32052)) (height!239 (c!92854 (ite c!92975 lt!206235 call!32049)))) 1)))))

(declare-fun b!463130 () Bool)

(declare-fun res!206188 () Bool)

(assert (=> b!463130 (=> (not res!206188) (not e!283771))))

(assert (=> b!463130 (= res!206188 (isBalanced!483 (++!1317 (c!92854 call!32052) (c!92854 (ite c!92975 lt!206235 call!32049)))))))

(declare-fun b!463133 () Bool)

(declare-fun lt!206891 () BalanceConc!3152)

(assert (=> b!463133 (= e!283771 (= (list!2004 lt!206891) (++!1312 (list!2004 call!32052) (list!2004 (ite c!92975 lt!206235 call!32049)))))))

(declare-fun b!463132 () Bool)

(declare-fun res!206191 () Bool)

(assert (=> b!463132 (=> (not res!206191) (not e!283771))))

(assert (=> b!463132 (= res!206191 (>= (height!239 (++!1317 (c!92854 call!32052) (c!92854 (ite c!92975 lt!206235 call!32049)))) (max!0 (height!239 (c!92854 call!32052)) (height!239 (c!92854 (ite c!92975 lt!206235 call!32049))))))))

(declare-fun d!176309 () Bool)

(assert (=> d!176309 e!283771))

(declare-fun res!206190 () Bool)

(assert (=> d!176309 (=> (not res!206190) (not e!283771))))

(assert (=> d!176309 (= res!206190 (appendAssocInst!105 (c!92854 call!32052) (c!92854 (ite c!92975 lt!206235 call!32049))))))

(assert (=> d!176309 (= lt!206891 (BalanceConc!3153 (++!1317 (c!92854 call!32052) (c!92854 (ite c!92975 lt!206235 call!32049)))))))

(assert (=> d!176309 (= (++!1314 call!32052 (ite c!92975 lt!206235 call!32049)) lt!206891)))

(assert (= (and d!176309 res!206190) b!463130))

(assert (= (and b!463130 res!206188) b!463131))

(assert (= (and b!463131 res!206189) b!463132))

(assert (= (and b!463132 res!206191) b!463133))

(declare-fun m!733303 () Bool)

(assert (=> b!463130 m!733303))

(assert (=> b!463130 m!733303))

(declare-fun m!733305 () Bool)

(assert (=> b!463130 m!733305))

(declare-fun m!733307 () Bool)

(assert (=> d!176309 m!733307))

(assert (=> d!176309 m!733303))

(declare-fun m!733309 () Bool)

(assert (=> b!463131 m!733309))

(declare-fun m!733311 () Bool)

(assert (=> b!463131 m!733311))

(declare-fun m!733313 () Bool)

(assert (=> b!463131 m!733313))

(assert (=> b!463131 m!733309))

(assert (=> b!463131 m!733311))

(assert (=> b!463131 m!733303))

(declare-fun m!733315 () Bool)

(assert (=> b!463131 m!733315))

(assert (=> b!463131 m!733303))

(declare-fun m!733317 () Bool)

(assert (=> b!463133 m!733317))

(declare-fun m!733319 () Bool)

(assert (=> b!463133 m!733319))

(declare-fun m!733321 () Bool)

(assert (=> b!463133 m!733321))

(assert (=> b!463133 m!733319))

(assert (=> b!463133 m!733321))

(declare-fun m!733323 () Bool)

(assert (=> b!463133 m!733323))

(assert (=> b!463132 m!733309))

(assert (=> b!463132 m!733311))

(assert (=> b!463132 m!733313))

(assert (=> b!463132 m!733309))

(assert (=> b!463132 m!733311))

(assert (=> b!463132 m!733303))

(assert (=> b!463132 m!733315))

(assert (=> b!463132 m!733303))

(assert (=> bm!32046 d!176309))

(declare-fun d!176311 () Bool)

(declare-fun res!206192 () Bool)

(declare-fun e!283772 () Bool)

(assert (=> d!176311 (=> res!206192 e!283772)))

(assert (=> d!176311 (= res!206192 (not ((_ is Cons!4494) (t!71884 rules!1920))))))

(assert (=> d!176311 (= (sepAndNonSepRulesDisjointChars!464 rules!1920 (t!71884 rules!1920)) e!283772)))

(declare-fun b!463134 () Bool)

(declare-fun e!283773 () Bool)

(assert (=> b!463134 (= e!283772 e!283773)))

(declare-fun res!206193 () Bool)

(assert (=> b!463134 (=> (not res!206193) (not e!283773))))

(assert (=> b!463134 (= res!206193 (ruleDisjointCharsFromAllFromOtherType!206 (h!9891 (t!71884 rules!1920)) rules!1920))))

(declare-fun b!463135 () Bool)

(assert (=> b!463135 (= e!283773 (sepAndNonSepRulesDisjointChars!464 rules!1920 (t!71884 (t!71884 rules!1920))))))

(assert (= (and d!176311 (not res!206192)) b!463134))

(assert (= (and b!463134 res!206193) b!463135))

(declare-fun m!733325 () Bool)

(assert (=> b!463134 m!733325))

(declare-fun m!733327 () Bool)

(assert (=> b!463135 m!733327))

(assert (=> b!461683 d!176311))

(declare-fun d!176313 () Bool)

(assert (=> d!176313 (= lt!205901 (_2!2961 lt!205912))))

(assert (=> d!176313 true))

(declare-fun _$63!675 () Unit!8113)

(assert (=> d!176313 (= (choose!3473 lt!205905 lt!205901 lt!205905 (_2!2961 lt!205912) lt!205920) _$63!675)))

(assert (=> d!175591 d!176313))

(assert (=> d!175591 d!175541))

(declare-fun d!176315 () Bool)

(assert (=> d!176315 (= (list!2004 lt!206114) (list!2009 (c!92854 lt!206114)))))

(declare-fun bs!57477 () Bool)

(assert (= bs!57477 d!176315))

(declare-fun m!733329 () Bool)

(assert (=> bs!57477 m!733329))

(assert (=> d!175607 d!176315))

(declare-fun d!176317 () Bool)

(declare-fun lt!206902 () List!4503)

(assert (=> d!176317 (= lt!206902 (++!1312 (list!2004 (BalanceConc!3153 Empty!1572)) (printList!435 thiss!17480 (dropList!252 lt!205900 0))))))

(declare-fun e!283776 () List!4503)

(assert (=> d!176317 (= lt!206902 e!283776)))

(declare-fun c!93273 () Bool)

(assert (=> d!176317 (= c!93273 ((_ is Cons!4495) (dropList!252 lt!205900 0)))))

(assert (=> d!176317 (= (printListTailRec!216 thiss!17480 (dropList!252 lt!205900 0) (list!2004 (BalanceConc!3153 Empty!1572))) lt!206902)))

(declare-fun b!463140 () Bool)

(assert (=> b!463140 (= e!283776 (printListTailRec!216 thiss!17480 (t!71885 (dropList!252 lt!205900 0)) (++!1312 (list!2004 (BalanceConc!3153 Empty!1572)) (list!2004 (charsOf!518 (h!9892 (dropList!252 lt!205900 0)))))))))

(declare-fun lt!206904 () List!4503)

(assert (=> b!463140 (= lt!206904 (list!2004 (charsOf!518 (h!9892 (dropList!252 lt!205900 0)))))))

(declare-fun lt!206905 () List!4503)

(assert (=> b!463140 (= lt!206905 (printList!435 thiss!17480 (t!71885 (dropList!252 lt!205900 0))))))

(declare-fun lt!206906 () Unit!8113)

(assert (=> b!463140 (= lt!206906 (lemmaConcatAssociativity!612 (list!2004 (BalanceConc!3153 Empty!1572)) lt!206904 lt!206905))))

(assert (=> b!463140 (= (++!1312 (++!1312 (list!2004 (BalanceConc!3153 Empty!1572)) lt!206904) lt!206905) (++!1312 (list!2004 (BalanceConc!3153 Empty!1572)) (++!1312 lt!206904 lt!206905)))))

(declare-fun lt!206903 () Unit!8113)

(assert (=> b!463140 (= lt!206903 lt!206906)))

(declare-fun b!463141 () Bool)

(assert (=> b!463141 (= e!283776 (list!2004 (BalanceConc!3153 Empty!1572)))))

(assert (= (and d!176317 c!93273) b!463140))

(assert (= (and d!176317 (not c!93273)) b!463141))

(assert (=> d!176317 m!730549))

(declare-fun m!733331 () Bool)

(assert (=> d!176317 m!733331))

(assert (=> d!176317 m!730547))

(assert (=> d!176317 m!733331))

(declare-fun m!733333 () Bool)

(assert (=> d!176317 m!733333))

(declare-fun m!733335 () Bool)

(assert (=> b!463140 m!733335))

(declare-fun m!733337 () Bool)

(assert (=> b!463140 m!733337))

(assert (=> b!463140 m!733337))

(declare-fun m!733339 () Bool)

(assert (=> b!463140 m!733339))

(declare-fun m!733341 () Bool)

(assert (=> b!463140 m!733341))

(declare-fun m!733343 () Bool)

(assert (=> b!463140 m!733343))

(assert (=> b!463140 m!730547))

(assert (=> b!463140 m!733339))

(assert (=> b!463140 m!733341))

(assert (=> b!463140 m!730547))

(declare-fun m!733345 () Bool)

(assert (=> b!463140 m!733345))

(declare-fun m!733347 () Bool)

(assert (=> b!463140 m!733347))

(assert (=> b!463140 m!730547))

(assert (=> b!463140 m!733335))

(declare-fun m!733349 () Bool)

(assert (=> b!463140 m!733349))

(assert (=> b!463140 m!733345))

(declare-fun m!733351 () Bool)

(assert (=> b!463140 m!733351))

(assert (=> b!463140 m!730547))

(declare-fun m!733353 () Bool)

(assert (=> b!463140 m!733353))

(assert (=> d!175607 d!176317))

(declare-fun d!176319 () Bool)

(assert (=> d!176319 (= (list!2004 (BalanceConc!3153 Empty!1572)) (list!2009 (c!92854 (BalanceConc!3153 Empty!1572))))))

(declare-fun bs!57478 () Bool)

(assert (= bs!57478 d!176319))

(declare-fun m!733355 () Bool)

(assert (=> bs!57478 m!733355))

(assert (=> d!175607 d!176319))

(declare-fun d!176321 () Bool)

(declare-fun lt!206907 () Int)

(assert (=> d!176321 (= lt!206907 (size!3675 (list!2005 lt!205900)))))

(assert (=> d!176321 (= lt!206907 (size!3677 (c!92856 lt!205900)))))

(assert (=> d!176321 (= (size!3672 lt!205900) lt!206907)))

(declare-fun bs!57479 () Bool)

(assert (= bs!57479 d!176321))

(assert (=> bs!57479 m!730571))

(assert (=> bs!57479 m!730571))

(declare-fun m!733357 () Bool)

(assert (=> bs!57479 m!733357))

(declare-fun m!733359 () Bool)

(assert (=> bs!57479 m!733359))

(assert (=> d!175607 d!176321))

(declare-fun d!176323 () Bool)

(assert (=> d!176323 (= (dropList!252 lt!205900 0) (drop!321 (list!2007 (c!92856 lt!205900)) 0))))

(declare-fun bs!57480 () Bool)

(assert (= bs!57480 d!176323))

(assert (=> bs!57480 m!732793))

(assert (=> bs!57480 m!732793))

(declare-fun m!733361 () Bool)

(assert (=> bs!57480 m!733361))

(assert (=> d!175607 d!176323))

(declare-fun b!463142 () Bool)

(declare-fun e!283778 () Bool)

(assert (=> b!463142 (= e!283778 (inv!15 (value!29253 (h!9892 (t!71885 tokens!465)))))))

(declare-fun b!463143 () Bool)

(declare-fun e!283777 () Bool)

(declare-fun e!283779 () Bool)

(assert (=> b!463143 (= e!283777 e!283779)))

(declare-fun c!93274 () Bool)

(assert (=> b!463143 (= c!93274 ((_ is IntegerValue!2692) (value!29253 (h!9892 (t!71885 tokens!465)))))))

(declare-fun b!463144 () Bool)

(assert (=> b!463144 (= e!283779 (inv!17 (value!29253 (h!9892 (t!71885 tokens!465)))))))

(declare-fun d!176325 () Bool)

(declare-fun c!93275 () Bool)

(assert (=> d!176325 (= c!93275 ((_ is IntegerValue!2691) (value!29253 (h!9892 (t!71885 tokens!465)))))))

(assert (=> d!176325 (= (inv!21 (value!29253 (h!9892 (t!71885 tokens!465)))) e!283777)))

(declare-fun b!463145 () Bool)

(assert (=> b!463145 (= e!283777 (inv!16 (value!29253 (h!9892 (t!71885 tokens!465)))))))

(declare-fun b!463146 () Bool)

(declare-fun res!206194 () Bool)

(assert (=> b!463146 (=> res!206194 e!283778)))

(assert (=> b!463146 (= res!206194 (not ((_ is IntegerValue!2693) (value!29253 (h!9892 (t!71885 tokens!465))))))))

(assert (=> b!463146 (= e!283779 e!283778)))

(assert (= (and d!176325 c!93275) b!463145))

(assert (= (and d!176325 (not c!93275)) b!463143))

(assert (= (and b!463143 c!93274) b!463144))

(assert (= (and b!463143 (not c!93274)) b!463146))

(assert (= (and b!463146 (not res!206194)) b!463142))

(declare-fun m!733363 () Bool)

(assert (=> b!463142 m!733363))

(declare-fun m!733365 () Bool)

(assert (=> b!463144 m!733365))

(declare-fun m!733367 () Bool)

(assert (=> b!463145 m!733367))

(assert (=> b!462206 d!176325))

(declare-fun d!176327 () Bool)

(declare-fun charsToBigInt!0 (List!4502 Int) Int)

(assert (=> d!176327 (= (inv!15 (value!29253 (h!9892 tokens!465))) (= (charsToBigInt!0 (text!6728 (value!29253 (h!9892 tokens!465))) 0) (value!29248 (value!29253 (h!9892 tokens!465)))))))

(declare-fun bs!57481 () Bool)

(assert (= bs!57481 d!176327))

(declare-fun m!733369 () Bool)

(assert (=> bs!57481 m!733369))

(assert (=> b!461382 d!176327))

(assert (=> b!461528 d!176063))

(declare-fun d!176329 () Bool)

(declare-fun dynLambda!2755 (Int BalanceConc!3152) TokenValue!897)

(assert (=> d!176329 (= (apply!1155 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!205988))))) (dynLambda!2755 (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988))))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!205988))))))))

(declare-fun b_lambda!19257 () Bool)

(assert (=> (not b_lambda!19257) (not d!176329)))

(declare-fun t!72059 () Bool)

(declare-fun tb!46221 () Bool)

(assert (=> (and b!461281 (= (toValue!1694 (transformation!875 (rule!1570 separatorToken!170))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!72059) tb!46221))

(declare-fun result!50904 () Bool)

(assert (=> tb!46221 (= result!50904 (inv!21 (dynLambda!2755 (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988))))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!205988)))))))))

(declare-fun m!733371 () Bool)

(assert (=> tb!46221 m!733371))

(assert (=> d!176329 t!72059))

(declare-fun b_and!49705 () Bool)

(assert (= b_and!49537 (and (=> t!72059 result!50904) b_and!49705)))

(declare-fun tb!46223 () Bool)

(declare-fun t!72061 () Bool)

(assert (=> (and b!461297 (= (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!72061) tb!46223))

(declare-fun result!50908 () Bool)

(assert (= result!50908 result!50904))

(assert (=> d!176329 t!72061))

(declare-fun b_and!49707 () Bool)

(assert (= b_and!49529 (and (=> t!72061 result!50908) b_and!49707)))

(declare-fun t!72063 () Bool)

(declare-fun tb!46225 () Bool)

(assert (=> (and b!462208 (= (toValue!1694 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!72063) tb!46225))

(declare-fun result!50910 () Bool)

(assert (= result!50910 result!50904))

(assert (=> d!176329 t!72063))

(declare-fun b_and!49709 () Bool)

(assert (= b_and!49601 (and (=> t!72063 result!50910) b_and!49709)))

(declare-fun tb!46227 () Bool)

(declare-fun t!72065 () Bool)

(assert (=> (and b!461294 (= (toValue!1694 (transformation!875 (h!9891 rules!1920))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!72065) tb!46227))

(declare-fun result!50912 () Bool)

(assert (= result!50912 result!50904))

(assert (=> d!176329 t!72065))

(declare-fun b_and!49711 () Bool)

(assert (= b_and!49533 (and (=> t!72065 result!50912) b_and!49711)))

(declare-fun t!72067 () Bool)

(declare-fun tb!46229 () Bool)

(assert (=> (and b!462189 (= (toValue!1694 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!72067) tb!46229))

(declare-fun result!50914 () Bool)

(assert (= result!50914 result!50904))

(assert (=> d!176329 t!72067))

(declare-fun b_and!49713 () Bool)

(assert (= b_and!49597 (and (=> t!72067 result!50914) b_and!49713)))

(assert (=> d!176329 m!730227))

(declare-fun m!733373 () Bool)

(assert (=> d!176329 m!733373))

(assert (=> b!461528 d!176329))

(declare-fun d!176331 () Bool)

(assert (=> d!176331 (= (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!205988)))) (fromListB!497 (originalCharacters!918 (_1!2961 (get!1652 lt!205988)))))))

(declare-fun bs!57482 () Bool)

(assert (= bs!57482 d!176331))

(declare-fun m!733375 () Bool)

(assert (=> bs!57482 m!733375))

(assert (=> b!461528 d!176331))

(declare-fun e!283784 () Bool)

(declare-fun lt!206908 () List!4503)

(declare-fun b!463152 () Bool)

(assert (=> b!463152 (= e!283784 (or (not (= lt!206310 Nil!4493)) (= lt!206908 call!32074)))))

(declare-fun b!463149 () Bool)

(declare-fun e!283783 () List!4503)

(assert (=> b!463149 (= e!283783 lt!206310)))

(declare-fun b!463151 () Bool)

(declare-fun res!206196 () Bool)

(assert (=> b!463151 (=> (not res!206196) (not e!283784))))

(assert (=> b!463151 (= res!206196 (= (size!3674 lt!206908) (+ (size!3674 call!32074) (size!3674 lt!206310))))))

(declare-fun d!176333 () Bool)

(assert (=> d!176333 e!283784))

(declare-fun res!206195 () Bool)

(assert (=> d!176333 (=> (not res!206195) (not e!283784))))

(assert (=> d!176333 (= res!206195 (= (content!752 lt!206908) ((_ map or) (content!752 call!32074) (content!752 lt!206310))))))

(assert (=> d!176333 (= lt!206908 e!283783)))

(declare-fun c!93276 () Bool)

(assert (=> d!176333 (= c!93276 ((_ is Nil!4493) call!32074))))

(assert (=> d!176333 (= (++!1312 call!32074 lt!206310) lt!206908)))

(declare-fun b!463150 () Bool)

(assert (=> b!463150 (= e!283783 (Cons!4493 (h!9890 call!32074) (++!1312 (t!71883 call!32074) lt!206310)))))

(assert (= (and d!176333 c!93276) b!463149))

(assert (= (and d!176333 (not c!93276)) b!463150))

(assert (= (and d!176333 res!206195) b!463151))

(assert (= (and b!463151 res!206196) b!463152))

(declare-fun m!733377 () Bool)

(assert (=> b!463151 m!733377))

(declare-fun m!733379 () Bool)

(assert (=> b!463151 m!733379))

(assert (=> b!463151 m!733045))

(declare-fun m!733381 () Bool)

(assert (=> d!176333 m!733381))

(declare-fun m!733383 () Bool)

(assert (=> d!176333 m!733383))

(assert (=> d!176333 m!733055))

(declare-fun m!733385 () Bool)

(assert (=> b!463150 m!733385))

(assert (=> b!462119 d!176333))

(declare-fun d!176335 () Bool)

(assert (=> d!176335 (= (inv!16 (value!29253 separatorToken!170)) (= (charsToInt!0 (text!6726 (value!29253 separatorToken!170))) (value!29244 (value!29253 separatorToken!170))))))

(declare-fun bs!57483 () Bool)

(assert (= bs!57483 d!176335))

(declare-fun m!733387 () Bool)

(assert (=> bs!57483 m!733387))

(assert (=> b!462112 d!176335))

(assert (=> b!461546 d!176131))

(declare-fun d!176337 () Bool)

(assert (=> d!176337 (= (head!1134 lt!205920) (h!9890 lt!205920))))

(assert (=> b!461546 d!176337))

(declare-fun b!463153 () Bool)

(declare-fun e!283785 () Bool)

(assert (=> b!463153 (= e!283785 (matchR!417 (regex!875 (h!9891 rules!1920)) (_1!2966 (findLongestMatchInner!115 (regex!875 (h!9891 rules!1920)) Nil!4493 (size!3674 Nil!4493) lt!205905 lt!205905 (size!3674 lt!205905)))))))

(declare-fun b!463154 () Bool)

(declare-fun res!206200 () Bool)

(declare-fun e!283787 () Bool)

(assert (=> b!463154 (=> (not res!206200) (not e!283787))))

(declare-fun lt!206910 () Option!1184)

(assert (=> b!463154 (= res!206200 (< (size!3674 (_2!2961 (get!1652 lt!206910))) (size!3674 lt!205905)))))

(declare-fun b!463156 () Bool)

(declare-fun res!206199 () Bool)

(assert (=> b!463156 (=> (not res!206199) (not e!283787))))

(assert (=> b!463156 (= res!206199 (= (++!1312 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206910)))) (_2!2961 (get!1652 lt!206910))) lt!205905))))

(declare-fun b!463157 () Bool)

(assert (=> b!463157 (= e!283787 (= (size!3667 (_1!2961 (get!1652 lt!206910))) (size!3674 (originalCharacters!918 (_1!2961 (get!1652 lt!206910))))))))

(declare-fun b!463158 () Bool)

(declare-fun e!283788 () Option!1184)

(declare-fun lt!206911 () tuple2!5500)

(assert (=> b!463158 (= e!283788 (Some!1183 (tuple2!5491 (Token!1495 (apply!1155 (transformation!875 (h!9891 rules!1920)) (seqFromList!1115 (_1!2966 lt!206911))) (h!9891 rules!1920) (size!3673 (seqFromList!1115 (_1!2966 lt!206911))) (_1!2966 lt!206911)) (_2!2966 lt!206911))))))

(declare-fun lt!206909 () Unit!8113)

(assert (=> b!463158 (= lt!206909 (longestMatchIsAcceptedByMatchOrIsEmpty!99 (regex!875 (h!9891 rules!1920)) lt!205905))))

(declare-fun res!206203 () Bool)

(assert (=> b!463158 (= res!206203 (isEmpty!3484 (_1!2966 (findLongestMatchInner!115 (regex!875 (h!9891 rules!1920)) Nil!4493 (size!3674 Nil!4493) lt!205905 lt!205905 (size!3674 lt!205905)))))))

(assert (=> b!463158 (=> res!206203 e!283785)))

(assert (=> b!463158 e!283785))

(declare-fun lt!206912 () Unit!8113)

(assert (=> b!463158 (= lt!206912 lt!206909)))

(declare-fun lt!206913 () Unit!8113)

(assert (=> b!463158 (= lt!206913 (lemmaSemiInverse!93 (transformation!875 (h!9891 rules!1920)) (seqFromList!1115 (_1!2966 lt!206911))))))

(declare-fun b!463159 () Bool)

(declare-fun res!206201 () Bool)

(assert (=> b!463159 (=> (not res!206201) (not e!283787))))

(assert (=> b!463159 (= res!206201 (= (rule!1570 (_1!2961 (get!1652 lt!206910))) (h!9891 rules!1920)))))

(declare-fun b!463155 () Bool)

(assert (=> b!463155 (= e!283788 None!1183)))

(declare-fun d!176339 () Bool)

(declare-fun e!283786 () Bool)

(assert (=> d!176339 e!283786))

(declare-fun res!206198 () Bool)

(assert (=> d!176339 (=> res!206198 e!283786)))

(assert (=> d!176339 (= res!206198 (isEmpty!3490 lt!206910))))

(assert (=> d!176339 (= lt!206910 e!283788)))

(declare-fun c!93277 () Bool)

(assert (=> d!176339 (= c!93277 (isEmpty!3484 (_1!2966 lt!206911)))))

(assert (=> d!176339 (= lt!206911 (findLongestMatch!95 (regex!875 (h!9891 rules!1920)) lt!205905))))

(assert (=> d!176339 (ruleValid!136 thiss!17480 (h!9891 rules!1920))))

(assert (=> d!176339 (= (maxPrefixOneRule!229 thiss!17480 (h!9891 rules!1920) lt!205905) lt!206910)))

(declare-fun b!463160 () Bool)

(assert (=> b!463160 (= e!283786 e!283787)))

(declare-fun res!206197 () Bool)

(assert (=> b!463160 (=> (not res!206197) (not e!283787))))

(assert (=> b!463160 (= res!206197 (matchR!417 (regex!875 (h!9891 rules!1920)) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!206910))))))))

(declare-fun b!463161 () Bool)

(declare-fun res!206202 () Bool)

(assert (=> b!463161 (=> (not res!206202) (not e!283787))))

(assert (=> b!463161 (= res!206202 (= (value!29253 (_1!2961 (get!1652 lt!206910))) (apply!1155 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206910)))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!206910)))))))))

(assert (= (and d!176339 c!93277) b!463155))

(assert (= (and d!176339 (not c!93277)) b!463158))

(assert (= (and b!463158 (not res!206203)) b!463153))

(assert (= (and d!176339 (not res!206198)) b!463160))

(assert (= (and b!463160 res!206197) b!463156))

(assert (= (and b!463156 res!206199) b!463154))

(assert (= (and b!463154 res!206200) b!463159))

(assert (= (and b!463159 res!206201) b!463161))

(assert (= (and b!463161 res!206202) b!463157))

(declare-fun m!733389 () Bool)

(assert (=> b!463161 m!733389))

(declare-fun m!733391 () Bool)

(assert (=> b!463161 m!733391))

(assert (=> b!463161 m!733391))

(declare-fun m!733393 () Bool)

(assert (=> b!463161 m!733393))

(assert (=> b!463159 m!733389))

(assert (=> b!463158 m!732193))

(assert (=> b!463158 m!730071))

(declare-fun m!733395 () Bool)

(assert (=> b!463158 m!733395))

(declare-fun m!733397 () Bool)

(assert (=> b!463158 m!733397))

(declare-fun m!733399 () Bool)

(assert (=> b!463158 m!733399))

(assert (=> b!463158 m!732193))

(assert (=> b!463158 m!730071))

(declare-fun m!733401 () Bool)

(assert (=> b!463158 m!733401))

(assert (=> b!463158 m!733397))

(declare-fun m!733403 () Bool)

(assert (=> b!463158 m!733403))

(declare-fun m!733405 () Bool)

(assert (=> b!463158 m!733405))

(assert (=> b!463158 m!733397))

(assert (=> b!463158 m!733397))

(declare-fun m!733407 () Bool)

(assert (=> b!463158 m!733407))

(assert (=> b!463157 m!733389))

(declare-fun m!733409 () Bool)

(assert (=> b!463157 m!733409))

(declare-fun m!733411 () Bool)

(assert (=> d!176339 m!733411))

(declare-fun m!733413 () Bool)

(assert (=> d!176339 m!733413))

(declare-fun m!733415 () Bool)

(assert (=> d!176339 m!733415))

(assert (=> d!176339 m!732213))

(assert (=> b!463154 m!733389))

(declare-fun m!733417 () Bool)

(assert (=> b!463154 m!733417))

(assert (=> b!463154 m!730071))

(assert (=> b!463156 m!733389))

(declare-fun m!733419 () Bool)

(assert (=> b!463156 m!733419))

(assert (=> b!463156 m!733419))

(declare-fun m!733421 () Bool)

(assert (=> b!463156 m!733421))

(assert (=> b!463156 m!733421))

(declare-fun m!733423 () Bool)

(assert (=> b!463156 m!733423))

(assert (=> b!463160 m!733389))

(assert (=> b!463160 m!733419))

(assert (=> b!463160 m!733419))

(assert (=> b!463160 m!733421))

(assert (=> b!463160 m!733421))

(declare-fun m!733425 () Bool)

(assert (=> b!463160 m!733425))

(assert (=> b!463153 m!732193))

(assert (=> b!463153 m!730071))

(assert (=> b!463153 m!732193))

(assert (=> b!463153 m!730071))

(assert (=> b!463153 m!733401))

(declare-fun m!733427 () Bool)

(assert (=> b!463153 m!733427))

(assert (=> bm!31981 d!176339))

(declare-fun d!176341 () Bool)

(declare-fun lt!206914 () Token!1494)

(assert (=> d!176341 (= lt!206914 (apply!1158 (list!2005 (seqFromList!1116 (t!71885 tokens!465))) 0))))

(assert (=> d!176341 (= lt!206914 (apply!1160 (c!92856 (seqFromList!1116 (t!71885 tokens!465))) 0))))

(declare-fun e!283789 () Bool)

(assert (=> d!176341 e!283789))

(declare-fun res!206204 () Bool)

(assert (=> d!176341 (=> (not res!206204) (not e!283789))))

(assert (=> d!176341 (= res!206204 (<= 0 0))))

(assert (=> d!176341 (= (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0) lt!206914)))

(declare-fun b!463162 () Bool)

(assert (=> b!463162 (= e!283789 (< 0 (size!3672 (seqFromList!1116 (t!71885 tokens!465)))))))

(assert (= (and d!176341 res!206204) b!463162))

(assert (=> d!176341 m!729933))

(assert (=> d!176341 m!731197))

(assert (=> d!176341 m!731197))

(declare-fun m!733429 () Bool)

(assert (=> d!176341 m!733429))

(declare-fun m!733431 () Bool)

(assert (=> d!176341 m!733431))

(assert (=> b!463162 m!729933))

(assert (=> b!463162 m!731195))

(assert (=> bm!32076 d!176341))

(declare-fun bs!57484 () Bool)

(declare-fun d!176343 () Bool)

(assert (= bs!57484 (and d!176343 b!462600)))

(declare-fun lambda!13690 () Int)

(assert (=> bs!57484 (= (and (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (= (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toValue!1694 (transformation!875 (h!9891 rules!1920))))) (= lambda!13690 lambda!13678))))

(declare-fun bs!57485 () Bool)

(assert (= bs!57485 (and d!176343 d!176123)))

(assert (=> bs!57485 (= (and (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (= (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toValue!1694 (transformation!875 (h!9891 rules!1920))))) (= lambda!13690 lambda!13684))))

(declare-fun bs!57486 () Bool)

(assert (= bs!57486 (and d!176343 d!176267)))

(assert (=> bs!57486 (= (and (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170)))) (= (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toValue!1694 (transformation!875 (rule!1570 separatorToken!170))))) (= lambda!13690 lambda!13689))))

(assert (=> d!176343 true))

(assert (=> d!176343 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465))))) (dynLambda!2752 order!4019 lambda!13690))))

(assert (=> d!176343 true))

(assert (=> d!176343 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465))))) (dynLambda!2752 order!4019 lambda!13690))))

(assert (=> d!176343 (= (semiInverseModEq!349 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465))))) (Forall!214 lambda!13690))))

(declare-fun bs!57487 () Bool)

(assert (= bs!57487 d!176343))

(declare-fun m!733433 () Bool)

(assert (=> bs!57487 m!733433))

(assert (=> d!175547 d!176343))

(declare-fun d!176345 () Bool)

(declare-fun res!206217 () Bool)

(declare-fun e!283795 () Bool)

(assert (=> d!176345 (=> res!206217 e!283795)))

(assert (=> d!176345 (= res!206217 (not ((_ is Node!1573) (c!92856 lt!206125))))))

(assert (=> d!176345 (= (isBalanced!480 (c!92856 lt!206125)) e!283795)))

(declare-fun b!463175 () Bool)

(declare-fun res!206221 () Bool)

(declare-fun e!283794 () Bool)

(assert (=> b!463175 (=> (not res!206221) (not e!283794))))

(assert (=> b!463175 (= res!206221 (not (isEmpty!3487 (left!3801 (c!92856 lt!206125)))))))

(declare-fun b!463176 () Bool)

(assert (=> b!463176 (= e!283794 (not (isEmpty!3487 (right!4131 (c!92856 lt!206125)))))))

(declare-fun b!463177 () Bool)

(declare-fun res!206218 () Bool)

(assert (=> b!463177 (=> (not res!206218) (not e!283794))))

(assert (=> b!463177 (= res!206218 (isBalanced!480 (right!4131 (c!92856 lt!206125))))))

(declare-fun b!463178 () Bool)

(assert (=> b!463178 (= e!283795 e!283794)))

(declare-fun res!206219 () Bool)

(assert (=> b!463178 (=> (not res!206219) (not e!283794))))

(declare-fun height!240 (Conc!1573) Int)

(assert (=> b!463178 (= res!206219 (<= (- 1) (- (height!240 (left!3801 (c!92856 lt!206125))) (height!240 (right!4131 (c!92856 lt!206125))))))))

(declare-fun b!463179 () Bool)

(declare-fun res!206222 () Bool)

(assert (=> b!463179 (=> (not res!206222) (not e!283794))))

(assert (=> b!463179 (= res!206222 (isBalanced!480 (left!3801 (c!92856 lt!206125))))))

(declare-fun b!463180 () Bool)

(declare-fun res!206220 () Bool)

(assert (=> b!463180 (=> (not res!206220) (not e!283794))))

(assert (=> b!463180 (= res!206220 (<= (- (height!240 (left!3801 (c!92856 lt!206125))) (height!240 (right!4131 (c!92856 lt!206125)))) 1))))

(assert (= (and d!176345 (not res!206217)) b!463178))

(assert (= (and b!463178 res!206219) b!463180))

(assert (= (and b!463180 res!206220) b!463179))

(assert (= (and b!463179 res!206222) b!463177))

(assert (= (and b!463177 res!206218) b!463175))

(assert (= (and b!463175 res!206221) b!463176))

(declare-fun m!733435 () Bool)

(assert (=> b!463178 m!733435))

(declare-fun m!733437 () Bool)

(assert (=> b!463178 m!733437))

(declare-fun m!733439 () Bool)

(assert (=> b!463176 m!733439))

(declare-fun m!733441 () Bool)

(assert (=> b!463179 m!733441))

(declare-fun m!733443 () Bool)

(assert (=> b!463177 m!733443))

(assert (=> b!463180 m!733435))

(assert (=> b!463180 m!733437))

(declare-fun m!733445 () Bool)

(assert (=> b!463175 m!733445))

(assert (=> b!461782 d!176345))

(assert (=> d!175631 d!176211))

(declare-fun d!176347 () Bool)

(assert (=> d!176347 (= (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170))))) (list!2007 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 separatorToken!170)))))))))

(declare-fun bs!57488 () Bool)

(assert (= bs!57488 d!176347))

(declare-fun m!733447 () Bool)

(assert (=> bs!57488 m!733447))

(assert (=> d!175631 d!176347))

(assert (=> d!175631 d!176207))

(declare-fun d!176349 () Bool)

(assert (=> d!176349 (= (list!2005 (singletonSeq!421 separatorToken!170)) (list!2007 (c!92856 (singletonSeq!421 separatorToken!170))))))

(declare-fun bs!57489 () Bool)

(assert (= bs!57489 d!176349))

(declare-fun m!733449 () Bool)

(assert (=> bs!57489 m!733449))

(assert (=> d!175631 d!176349))

(declare-fun d!176351 () Bool)

(declare-fun lt!206915 () Int)

(assert (=> d!176351 (= lt!206915 (size!3675 (list!2005 (_1!2963 lt!206127))))))

(assert (=> d!176351 (= lt!206915 (size!3677 (c!92856 (_1!2963 lt!206127))))))

(assert (=> d!176351 (= (size!3672 (_1!2963 lt!206127)) lt!206915)))

(declare-fun bs!57490 () Bool)

(assert (= bs!57490 d!176351))

(declare-fun m!733451 () Bool)

(assert (=> bs!57490 m!733451))

(assert (=> bs!57490 m!733451))

(declare-fun m!733453 () Bool)

(assert (=> bs!57490 m!733453))

(declare-fun m!733455 () Bool)

(assert (=> bs!57490 m!733455))

(assert (=> d!175631 d!176351))

(assert (=> d!175631 d!176209))

(assert (=> d!175631 d!175759))

(assert (=> b!461721 d!176095))

(assert (=> b!461721 d!176053))

(declare-fun b!463182 () Bool)

(declare-fun e!283796 () List!4503)

(declare-fun e!283797 () List!4503)

(assert (=> b!463182 (= e!283796 e!283797)))

(declare-fun c!93279 () Bool)

(assert (=> b!463182 (= c!93279 ((_ is Leaf!2349) (c!92854 lt!205910)))))

(declare-fun b!463181 () Bool)

(assert (=> b!463181 (= e!283796 Nil!4493)))

(declare-fun b!463183 () Bool)

(assert (=> b!463183 (= e!283797 (list!2011 (xs!4203 (c!92854 lt!205910))))))

(declare-fun d!176353 () Bool)

(declare-fun c!93278 () Bool)

(assert (=> d!176353 (= c!93278 ((_ is Empty!1572) (c!92854 lt!205910)))))

(assert (=> d!176353 (= (list!2009 (c!92854 lt!205910)) e!283796)))

(declare-fun b!463184 () Bool)

(assert (=> b!463184 (= e!283797 (++!1312 (list!2009 (left!3800 (c!92854 lt!205910))) (list!2009 (right!4130 (c!92854 lt!205910)))))))

(assert (= (and d!176353 c!93278) b!463181))

(assert (= (and d!176353 (not c!93278)) b!463182))

(assert (= (and b!463182 c!93279) b!463183))

(assert (= (and b!463182 (not c!93279)) b!463184))

(declare-fun m!733457 () Bool)

(assert (=> b!463183 m!733457))

(declare-fun m!733459 () Bool)

(assert (=> b!463184 m!733459))

(declare-fun m!733461 () Bool)

(assert (=> b!463184 m!733461))

(assert (=> b!463184 m!733459))

(assert (=> b!463184 m!733461))

(declare-fun m!733463 () Bool)

(assert (=> b!463184 m!733463))

(assert (=> d!175739 d!176353))

(declare-fun d!176355 () Bool)

(assert (=> d!176355 (= (list!2004 e!283174) (list!2009 (c!92854 e!283174)))))

(declare-fun bs!57491 () Bool)

(assert (= bs!57491 d!176355))

(declare-fun m!733465 () Bool)

(assert (=> bs!57491 m!733465))

(assert (=> bm!32072 d!176355))

(declare-fun d!176357 () Bool)

(assert (=> d!176357 (= (isEmpty!3484 (originalCharacters!918 separatorToken!170)) ((_ is Nil!4493) (originalCharacters!918 separatorToken!170)))))

(assert (=> d!175625 d!176357))

(declare-fun d!176359 () Bool)

(assert (=> d!176359 (= (inv!5570 (tag!1135 (h!9891 (t!71884 rules!1920)))) (= (mod (str.len (value!29252 (tag!1135 (h!9891 (t!71884 rules!1920))))) 2) 0))))

(assert (=> b!462188 d!176359))

(declare-fun d!176361 () Bool)

(declare-fun res!206223 () Bool)

(declare-fun e!283798 () Bool)

(assert (=> d!176361 (=> (not res!206223) (not e!283798))))

(assert (=> d!176361 (= res!206223 (semiInverseModEq!349 (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toValue!1694 (transformation!875 (h!9891 (t!71884 rules!1920))))))))

(assert (=> d!176361 (= (inv!5574 (transformation!875 (h!9891 (t!71884 rules!1920)))) e!283798)))

(declare-fun b!463185 () Bool)

(assert (=> b!463185 (= e!283798 (equivClasses!332 (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toValue!1694 (transformation!875 (h!9891 (t!71884 rules!1920))))))))

(assert (= (and d!176361 res!206223) b!463185))

(declare-fun m!733467 () Bool)

(assert (=> d!176361 m!733467))

(declare-fun m!733469 () Bool)

(assert (=> b!463185 m!733469))

(assert (=> b!462188 d!176361))

(assert (=> d!175521 d!175517))

(declare-fun d!176363 () Bool)

(declare-fun e!283889 () Bool)

(assert (=> d!176363 e!283889))

(declare-fun res!206273 () Bool)

(assert (=> d!176363 (=> res!206273 e!283889)))

(assert (=> d!176363 (= res!206273 (isEmpty!3483 tokens!465))))

(assert (=> d!176363 true))

(declare-fun _$48!692 () Unit!8113)

(assert (=> d!176363 (= (choose!3468 thiss!17480 rules!1920 tokens!465 separatorToken!170) _$48!692)))

(declare-fun b!463341 () Bool)

(declare-fun e!283888 () Bool)

(assert (=> b!463341 (= e!283889 e!283888)))

(declare-fun res!206272 () Bool)

(assert (=> b!463341 (=> (not res!206272) (not e!283888))))

(assert (=> b!463341 (= res!206272 (isDefined!1023 (maxPrefix!477 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!463342 () Bool)

(assert (=> b!463342 (= e!283888 (= (_1!2961 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1132 tokens!465)))))

(assert (= (and d!176363 (not res!206273)) b!463341))

(assert (= (and b!463341 res!206272) b!463342))

(assert (=> d!176363 m!729823))

(assert (=> b!463341 m!729855))

(assert (=> b!463341 m!729855))

(assert (=> b!463341 m!730175))

(assert (=> b!463341 m!730175))

(assert (=> b!463341 m!730177))

(assert (=> b!463342 m!729855))

(assert (=> b!463342 m!729855))

(assert (=> b!463342 m!730175))

(assert (=> b!463342 m!730175))

(assert (=> b!463342 m!730179))

(assert (=> b!463342 m!729817))

(assert (=> d!175521 d!176363))

(assert (=> d!175521 d!175759))

(declare-fun d!176455 () Bool)

(declare-fun lt!207019 () Token!1494)

(assert (=> d!176455 (= lt!207019 (apply!1158 (list!2005 lt!205904) 0))))

(assert (=> d!176455 (= lt!207019 (apply!1160 (c!92856 lt!205904) 0))))

(declare-fun e!283890 () Bool)

(assert (=> d!176455 e!283890))

(declare-fun res!206274 () Bool)

(assert (=> d!176455 (=> (not res!206274) (not e!283890))))

(assert (=> d!176455 (= res!206274 (<= 0 0))))

(assert (=> d!176455 (= (apply!1157 lt!205904 0) lt!207019)))

(declare-fun b!463343 () Bool)

(assert (=> b!463343 (= e!283890 (< 0 (size!3672 lt!205904)))))

(assert (= (and d!176455 res!206274) b!463343))

(assert (=> d!176455 m!730059))

(assert (=> d!176455 m!730059))

(declare-fun m!733903 () Bool)

(assert (=> d!176455 m!733903))

(declare-fun m!733905 () Bool)

(assert (=> d!176455 m!733905))

(assert (=> b!463343 m!730893))

(assert (=> bm!32047 d!176455))

(assert (=> b!462103 d!175747))

(declare-fun d!176461 () Bool)

(assert (=> d!176461 (= (list!2004 (_2!2963 lt!206066)) (list!2009 (c!92854 (_2!2963 lt!206066))))))

(declare-fun bs!57521 () Bool)

(assert (= bs!57521 d!176461))

(declare-fun m!733907 () Bool)

(assert (=> bs!57521 m!733907))

(assert (=> b!461655 d!176461))

(declare-fun b!463347 () Bool)

(declare-fun e!283893 () tuple2!5498)

(declare-fun lt!207028 () Option!1184)

(declare-fun lt!207029 () tuple2!5498)

(assert (=> b!463347 (= e!283893 (tuple2!5499 (Cons!4495 (_1!2961 (v!15532 lt!207028)) (_1!2965 lt!207029)) (_2!2965 lt!207029)))))

(assert (=> b!463347 (= lt!207029 (lexList!299 thiss!17480 rules!1920 (_2!2961 (v!15532 lt!207028))))))

(declare-fun b!463348 () Bool)

(declare-fun e!283895 () Bool)

(declare-fun lt!207027 () tuple2!5498)

(assert (=> b!463348 (= e!283895 (= (_2!2965 lt!207027) (list!2004 lt!205918)))))

(declare-fun d!176463 () Bool)

(assert (=> d!176463 e!283895))

(declare-fun c!93332 () Bool)

(assert (=> d!176463 (= c!93332 (> (size!3675 (_1!2965 lt!207027)) 0))))

(assert (=> d!176463 (= lt!207027 e!283893)))

(declare-fun c!93331 () Bool)

(assert (=> d!176463 (= c!93331 ((_ is Some!1183) lt!207028))))

(assert (=> d!176463 (= lt!207028 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 lt!205918)))))

(assert (=> d!176463 (= (lexList!299 thiss!17480 rules!1920 (list!2004 lt!205918)) lt!207027)))

(declare-fun b!463349 () Bool)

(assert (=> b!463349 (= e!283893 (tuple2!5499 Nil!4495 (list!2004 lt!205918)))))

(declare-fun b!463350 () Bool)

(declare-fun e!283894 () Bool)

(assert (=> b!463350 (= e!283895 e!283894)))

(declare-fun res!206276 () Bool)

(assert (=> b!463350 (= res!206276 (< (size!3674 (_2!2965 lt!207027)) (size!3674 (list!2004 lt!205918))))))

(assert (=> b!463350 (=> (not res!206276) (not e!283894))))

(declare-fun b!463351 () Bool)

(assert (=> b!463351 (= e!283894 (not (isEmpty!3483 (_1!2965 lt!207027))))))

(assert (= (and d!176463 c!93331) b!463347))

(assert (= (and d!176463 (not c!93331)) b!463349))

(assert (= (and d!176463 c!93332) b!463350))

(assert (= (and d!176463 (not c!93332)) b!463348))

(assert (= (and b!463350 res!206276) b!463351))

(declare-fun m!733915 () Bool)

(assert (=> b!463347 m!733915))

(declare-fun m!733919 () Bool)

(assert (=> d!176463 m!733919))

(assert (=> d!176463 m!729851))

(declare-fun m!733921 () Bool)

(assert (=> d!176463 m!733921))

(declare-fun m!733923 () Bool)

(assert (=> b!463350 m!733923))

(assert (=> b!463350 m!729851))

(assert (=> b!463350 m!732603))

(declare-fun m!733927 () Bool)

(assert (=> b!463351 m!733927))

(assert (=> b!461655 d!176463))

(assert (=> b!461655 d!175633))

(declare-fun d!176465 () Bool)

(declare-fun c!93336 () Bool)

(assert (=> d!176465 (= c!93336 ((_ is Nil!4495) lt!206062))))

(declare-fun e!283902 () (InoxSet Token!1494))

(assert (=> d!176465 (= (content!753 lt!206062) e!283902)))

(declare-fun b!463366 () Bool)

(assert (=> b!463366 (= e!283902 ((as const (Array Token!1494 Bool)) false))))

(declare-fun b!463367 () Bool)

(assert (=> b!463367 (= e!283902 ((_ map or) (store ((as const (Array Token!1494 Bool)) false) (h!9892 lt!206062) true) (content!753 (t!71885 lt!206062))))))

(assert (= (and d!176465 c!93336) b!463366))

(assert (= (and d!176465 (not c!93336)) b!463367))

(declare-fun m!733957 () Bool)

(assert (=> b!463367 m!733957))

(declare-fun m!733959 () Bool)

(assert (=> b!463367 m!733959))

(assert (=> b!461652 d!176465))

(declare-fun c!93337 () Bool)

(declare-fun d!176473 () Bool)

(assert (=> d!176473 (= c!93337 ((_ is Nil!4495) (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))))

(declare-fun e!283903 () (InoxSet Token!1494))

(assert (=> d!176473 (= (content!753 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))) e!283903)))

(declare-fun b!463368 () Bool)

(assert (=> b!463368 (= e!283903 ((as const (Array Token!1494 Bool)) false))))

(declare-fun b!463369 () Bool)

(assert (=> b!463369 (= e!283903 ((_ map or) (store ((as const (Array Token!1494 Bool)) false) (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))) true) (content!753 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))))))

(assert (= (and d!176473 c!93337) b!463368))

(assert (= (and d!176473 (not c!93337)) b!463369))

(declare-fun m!733961 () Bool)

(assert (=> b!463369 m!733961))

(assert (=> b!463369 m!732397))

(assert (=> b!461652 d!176473))

(assert (=> bs!57297 d!175605))

(declare-fun d!176475 () Bool)

(declare-fun lt!207036 () Token!1494)

(assert (=> d!176475 (= lt!207036 (apply!1158 (list!2005 (_1!2963 lt!206127)) 0))))

(assert (=> d!176475 (= lt!207036 (apply!1160 (c!92856 (_1!2963 lt!206127)) 0))))

(declare-fun e!283904 () Bool)

(assert (=> d!176475 e!283904))

(declare-fun res!206285 () Bool)

(assert (=> d!176475 (=> (not res!206285) (not e!283904))))

(assert (=> d!176475 (= res!206285 (<= 0 0))))

(assert (=> d!176475 (= (apply!1157 (_1!2963 lt!206127) 0) lt!207036)))

(declare-fun b!463370 () Bool)

(assert (=> b!463370 (= e!283904 (< 0 (size!3672 (_1!2963 lt!206127))))))

(assert (= (and d!176475 res!206285) b!463370))

(assert (=> d!176475 m!733451))

(assert (=> d!176475 m!733451))

(declare-fun m!733977 () Bool)

(assert (=> d!176475 m!733977))

(declare-fun m!733981 () Bool)

(assert (=> d!176475 m!733981))

(assert (=> b!463370 m!730635))

(assert (=> b!461794 d!176475))

(declare-fun e!283906 () Bool)

(declare-fun b!463374 () Bool)

(declare-fun lt!207037 () List!4503)

(assert (=> b!463374 (= e!283906 (or (not (= (ite c!93015 lt!206310 call!32073) Nil!4493)) (= lt!207037 call!32077)))))

(declare-fun b!463371 () Bool)

(declare-fun e!283905 () List!4503)

(assert (=> b!463371 (= e!283905 (ite c!93015 lt!206310 call!32073))))

(declare-fun b!463373 () Bool)

(declare-fun res!206287 () Bool)

(assert (=> b!463373 (=> (not res!206287) (not e!283906))))

(assert (=> b!463373 (= res!206287 (= (size!3674 lt!207037) (+ (size!3674 call!32077) (size!3674 (ite c!93015 lt!206310 call!32073)))))))

(declare-fun d!176477 () Bool)

(assert (=> d!176477 e!283906))

(declare-fun res!206286 () Bool)

(assert (=> d!176477 (=> (not res!206286) (not e!283906))))

(assert (=> d!176477 (= res!206286 (= (content!752 lt!207037) ((_ map or) (content!752 call!32077) (content!752 (ite c!93015 lt!206310 call!32073)))))))

(assert (=> d!176477 (= lt!207037 e!283905)))

(declare-fun c!93338 () Bool)

(assert (=> d!176477 (= c!93338 ((_ is Nil!4493) call!32077))))

(assert (=> d!176477 (= (++!1312 call!32077 (ite c!93015 lt!206310 call!32073)) lt!207037)))

(declare-fun b!463372 () Bool)

(assert (=> b!463372 (= e!283905 (Cons!4493 (h!9890 call!32077) (++!1312 (t!71883 call!32077) (ite c!93015 lt!206310 call!32073))))))

(assert (= (and d!176477 c!93338) b!463371))

(assert (= (and d!176477 (not c!93338)) b!463372))

(assert (= (and d!176477 res!206286) b!463373))

(assert (= (and b!463373 res!206287) b!463374))

(declare-fun m!733991 () Bool)

(assert (=> b!463373 m!733991))

(declare-fun m!733993 () Bool)

(assert (=> b!463373 m!733993))

(declare-fun m!733995 () Bool)

(assert (=> b!463373 m!733995))

(declare-fun m!733997 () Bool)

(assert (=> d!176477 m!733997))

(declare-fun m!733999 () Bool)

(assert (=> d!176477 m!733999))

(declare-fun m!734001 () Bool)

(assert (=> d!176477 m!734001))

(declare-fun m!734003 () Bool)

(assert (=> b!463372 m!734003))

(assert (=> bm!32069 d!176477))

(assert (=> b!461777 d!176321))

(assert (=> d!175507 d!175733))

(declare-fun b!463379 () Bool)

(declare-fun e!283909 () List!4505)

(declare-fun call!32169 () List!4505)

(assert (=> b!463379 (= e!283909 call!32169)))

(declare-fun b!463380 () Bool)

(declare-fun e!283911 () Bool)

(declare-fun lt!207038 () List!4505)

(assert (=> b!463380 (= e!283911 (forall!1308 lt!207038 lambda!13634))))

(declare-fun b!463381 () Bool)

(declare-fun e!283910 () List!4505)

(assert (=> b!463381 (= e!283910 Nil!4495)))

(declare-fun b!463383 () Bool)

(assert (=> b!463383 (= e!283910 e!283909)))

(declare-fun c!93341 () Bool)

(assert (=> b!463383 (= c!93341 (dynLambda!2749 lambda!13634 (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0)))))))))

(declare-fun b!463382 () Bool)

(assert (=> b!463382 (= e!283909 (Cons!4495 (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0))))) call!32169))))

(declare-fun d!176479 () Bool)

(assert (=> d!176479 e!283911))

(declare-fun res!206288 () Bool)

(assert (=> d!176479 (=> (not res!206288) (not e!283911))))

(assert (=> d!176479 (= res!206288 (<= (size!3675 lt!207038) (size!3675 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0)))))))))

(assert (=> d!176479 (= lt!207038 e!283910)))

(declare-fun c!93342 () Bool)

(assert (=> d!176479 (= c!93342 ((_ is Nil!4495) (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0))))))))

(assert (=> d!176479 (= (filter!103 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0)))) lambda!13634) lt!207038)))

(declare-fun b!463384 () Bool)

(declare-fun res!206289 () Bool)

(assert (=> b!463384 (=> (not res!206289) (not e!283911))))

(assert (=> b!463384 (= res!206289 (= ((_ map implies) (content!753 lt!207038) (content!753 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0)))))) ((as const (InoxSet Token!1494)) true)))))

(declare-fun bm!32164 () Bool)

(assert (=> bm!32164 (= call!32169 (filter!103 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0))))) lambda!13634))))

(assert (= (and d!176479 c!93342) b!463381))

(assert (= (and d!176479 (not c!93342)) b!463383))

(assert (= (and b!463383 c!93341) b!463382))

(assert (= (and b!463383 (not c!93341)) b!463379))

(assert (= (or b!463382 b!463379) bm!32164))

(assert (= (and d!176479 res!206288) b!463384))

(assert (= (and b!463384 res!206289) b!463380))

(declare-fun b_lambda!19267 () Bool)

(assert (=> (not b_lambda!19267) (not b!463383)))

(declare-fun m!734021 () Bool)

(assert (=> b!463383 m!734021))

(declare-fun m!734023 () Bool)

(assert (=> d!176479 m!734023))

(assert (=> d!176479 m!730105))

(declare-fun m!734025 () Bool)

(assert (=> d!176479 m!734025))

(declare-fun m!734029 () Bool)

(assert (=> b!463380 m!734029))

(declare-fun m!734031 () Bool)

(assert (=> b!463384 m!734031))

(assert (=> b!463384 m!730105))

(declare-fun m!734033 () Bool)

(assert (=> b!463384 m!734033))

(declare-fun m!734035 () Bool)

(assert (=> bm!32164 m!734035))

(assert (=> d!175507 d!176479))

(declare-fun bs!57548 () Bool)

(declare-fun d!176489 () Bool)

(assert (= bs!57548 (and d!176489 b!461290)))

(declare-fun lambda!13701 () Int)

(assert (=> bs!57548 (= lambda!13701 lambda!13617)))

(declare-fun bs!57549 () Bool)

(assert (= bs!57549 (and d!176489 b!462105)))

(assert (=> bs!57549 (not (= lambda!13701 lambda!13655))))

(declare-fun bs!57550 () Bool)

(assert (= bs!57550 (and d!176489 b!462542)))

(assert (=> bs!57550 (not (= lambda!13701 lambda!13668))))

(declare-fun bs!57551 () Bool)

(assert (= bs!57551 (and d!176489 b!462992)))

(assert (=> bs!57551 (not (= lambda!13701 lambda!13688))))

(declare-fun bs!57552 () Bool)

(assert (= bs!57552 (and d!176489 b!462130)))

(assert (=> bs!57552 (not (= lambda!13701 lambda!13658))))

(declare-fun bs!57553 () Bool)

(assert (= bs!57553 (and d!176489 d!175507)))

(assert (=> bs!57553 (= lambda!13701 lambda!13634)))

(declare-fun bs!57554 () Bool)

(assert (= bs!57554 (and d!176489 b!461918)))

(assert (=> bs!57554 (not (= lambda!13701 lambda!13652))))

(declare-fun bs!57555 () Bool)

(assert (= bs!57555 (and d!176489 b!462125)))

(assert (=> bs!57555 (not (= lambda!13701 lambda!13656))))

(declare-fun bs!57556 () Bool)

(assert (= bs!57556 (and d!176489 d!175483)))

(assert (=> bs!57556 (not (= lambda!13701 lambda!13628))))

(declare-fun bs!57557 () Bool)

(assert (= bs!57557 (and d!176489 b!461292)))

(assert (=> bs!57557 (not (= lambda!13701 lambda!13618))))

(declare-fun bs!57558 () Bool)

(assert (= bs!57558 (and d!176489 d!175635)))

(assert (=> bs!57558 (= lambda!13701 lambda!13651)))

(declare-fun bs!57559 () Bool)

(assert (= bs!57559 (and d!176489 d!175745)))

(assert (=> bs!57559 (= lambda!13701 lambda!13657)))

(assert (=> d!176489 (= (filter!103 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0)))) lambda!13701) (t!71885 tokens!465))))

(assert (=> d!176489 true))

(declare-fun _$16!147 () Unit!8113)

(assert (=> d!176489 (= (choose!3467 thiss!17480 rules!1920 (t!71885 tokens!465) separatorToken!170) _$16!147)))

(declare-fun bs!57560 () Bool)

(assert (= bs!57560 d!176489))

(assert (=> bs!57560 m!729933))

(assert (=> bs!57560 m!729951))

(assert (=> bs!57560 m!730105))

(assert (=> bs!57560 m!730105))

(declare-fun m!734431 () Bool)

(assert (=> bs!57560 m!734431))

(assert (=> bs!57560 m!729933))

(assert (=> bs!57560 m!729951))

(assert (=> bs!57560 m!730109))

(assert (=> d!175507 d!176489))

(declare-fun b!463559 () Bool)

(declare-fun e!284028 () Bool)

(declare-fun lt!207108 () tuple2!5494)

(assert (=> b!463559 (= e!284028 (not (isEmpty!3485 (_1!2963 lt!207108))))))

(declare-fun b!463560 () Bool)

(declare-fun e!284030 () Bool)

(assert (=> b!463560 (= e!284030 (= (list!2004 (_2!2963 lt!207108)) (_2!2965 (lexList!299 thiss!17480 rules!1920 (list!2004 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0))))))))

(declare-fun d!176629 () Bool)

(assert (=> d!176629 e!284030))

(declare-fun res!206387 () Bool)

(assert (=> d!176629 (=> (not res!206387) (not e!284030))))

(declare-fun e!284029 () Bool)

(assert (=> d!176629 (= res!206387 e!284029)))

(declare-fun c!93380 () Bool)

(assert (=> d!176629 (= c!93380 (> (size!3672 (_1!2963 lt!207108)) 0))))

(assert (=> d!176629 (= lt!207108 (lexTailRecV2!264 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0) (BalanceConc!3153 Empty!1572) (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0) (BalanceConc!3155 Empty!1573)))))

(assert (=> d!176629 (= (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0)) lt!207108)))

(declare-fun b!463561 () Bool)

(assert (=> b!463561 (= e!284029 (= (_2!2963 lt!207108) (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0)))))

(declare-fun b!463562 () Bool)

(assert (=> b!463562 (= e!284029 e!284028)))

(declare-fun res!206386 () Bool)

(assert (=> b!463562 (= res!206386 (< (size!3673 (_2!2963 lt!207108)) (size!3673 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0))))))

(assert (=> b!463562 (=> (not res!206386) (not e!284028))))

(declare-fun b!463563 () Bool)

(declare-fun res!206388 () Bool)

(assert (=> b!463563 (=> (not res!206388) (not e!284030))))

(assert (=> b!463563 (= res!206388 (= (list!2005 (_1!2963 lt!207108)) (_1!2965 (lexList!299 thiss!17480 rules!1920 (list!2004 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0))))))))

(assert (= (and d!176629 c!93380) b!463562))

(assert (= (and d!176629 (not c!93380)) b!463561))

(assert (= (and b!463562 res!206386) b!463559))

(assert (= (and d!176629 res!206387) b!463563))

(assert (= (and b!463563 res!206388) b!463560))

(declare-fun m!734433 () Bool)

(assert (=> b!463563 m!734433))

(assert (=> b!463563 m!729951))

(declare-fun m!734435 () Bool)

(assert (=> b!463563 m!734435))

(assert (=> b!463563 m!734435))

(declare-fun m!734437 () Bool)

(assert (=> b!463563 m!734437))

(declare-fun m!734439 () Bool)

(assert (=> b!463559 m!734439))

(declare-fun m!734441 () Bool)

(assert (=> b!463562 m!734441))

(assert (=> b!463562 m!729951))

(declare-fun m!734443 () Bool)

(assert (=> b!463562 m!734443))

(declare-fun m!734445 () Bool)

(assert (=> d!176629 m!734445))

(assert (=> d!176629 m!729951))

(assert (=> d!176629 m!729951))

(declare-fun m!734447 () Bool)

(assert (=> d!176629 m!734447))

(declare-fun m!734449 () Bool)

(assert (=> b!463560 m!734449))

(assert (=> b!463560 m!729951))

(assert (=> b!463560 m!734435))

(assert (=> b!463560 m!734435))

(assert (=> b!463560 m!734437))

(assert (=> d!175507 d!176629))

(assert (=> d!175507 d!175759))

(assert (=> d!175507 d!175745))

(declare-fun d!176631 () Bool)

(assert (=> d!176631 (= (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0)))) (list!2007 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0))))))))

(declare-fun bs!57561 () Bool)

(assert (= bs!57561 d!176631))

(declare-fun m!734451 () Bool)

(assert (=> bs!57561 m!734451))

(assert (=> d!175507 d!176631))

(declare-fun d!176633 () Bool)

(declare-fun lt!207109 () Int)

(assert (=> d!176633 (>= lt!207109 0)))

(declare-fun e!284031 () Int)

(assert (=> d!176633 (= lt!207109 e!284031)))

(declare-fun c!93381 () Bool)

(assert (=> d!176633 (= c!93381 ((_ is Nil!4493) lt!206309))))

(assert (=> d!176633 (= (size!3674 lt!206309) lt!207109)))

(declare-fun b!463564 () Bool)

(assert (=> b!463564 (= e!284031 0)))

(declare-fun b!463565 () Bool)

(assert (=> b!463565 (= e!284031 (+ 1 (size!3674 (t!71883 lt!206309))))))

(assert (= (and d!176633 c!93381) b!463564))

(assert (= (and d!176633 (not c!93381)) b!463565))

(declare-fun m!734453 () Bool)

(assert (=> b!463565 m!734453))

(assert (=> b!462116 d!176633))

(assert (=> b!462116 d!176129))

(declare-fun d!176635 () Bool)

(declare-fun lt!207110 () Int)

(assert (=> d!176635 (>= lt!207110 0)))

(declare-fun e!284032 () Int)

(assert (=> d!176635 (= lt!207110 e!284032)))

(declare-fun c!93382 () Bool)

(assert (=> d!176635 (= c!93382 ((_ is Nil!4493) lt!205914))))

(assert (=> d!176635 (= (size!3674 lt!205914) lt!207110)))

(declare-fun b!463566 () Bool)

(assert (=> b!463566 (= e!284032 0)))

(declare-fun b!463567 () Bool)

(assert (=> b!463567 (= e!284032 (+ 1 (size!3674 (t!71883 lt!205914))))))

(assert (= (and d!176635 c!93382) b!463566))

(assert (= (and d!176635 (not c!93382)) b!463567))

(declare-fun m!734455 () Bool)

(assert (=> b!463567 m!734455))

(assert (=> b!462116 d!176635))

(declare-fun d!176637 () Bool)

(declare-fun lt!207113 () Int)

(assert (=> d!176637 (>= lt!207113 0)))

(declare-fun e!284035 () Int)

(assert (=> d!176637 (= lt!207113 e!284035)))

(declare-fun c!93385 () Bool)

(assert (=> d!176637 (= c!93385 ((_ is Nil!4495) lt!206062))))

(assert (=> d!176637 (= (size!3675 lt!206062) lt!207113)))

(declare-fun b!463572 () Bool)

(assert (=> b!463572 (= e!284035 0)))

(declare-fun b!463573 () Bool)

(assert (=> b!463573 (= e!284035 (+ 1 (size!3675 (t!71885 lt!206062))))))

(assert (= (and d!176637 c!93385) b!463572))

(assert (= (and d!176637 (not c!93385)) b!463573))

(declare-fun m!734457 () Bool)

(assert (=> b!463573 m!734457))

(assert (=> d!175579 d!176637))

(declare-fun d!176639 () Bool)

(declare-fun lt!207114 () Int)

(assert (=> d!176639 (>= lt!207114 0)))

(declare-fun e!284036 () Int)

(assert (=> d!176639 (= lt!207114 e!284036)))

(declare-fun c!93386 () Bool)

(assert (=> d!176639 (= c!93386 ((_ is Nil!4495) (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))))

(assert (=> d!176639 (= (size!3675 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))) lt!207114)))

(declare-fun b!463574 () Bool)

(assert (=> b!463574 (= e!284036 0)))

(declare-fun b!463575 () Bool)

(assert (=> b!463575 (= e!284036 (+ 1 (size!3675 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))))))

(assert (= (and d!176639 c!93386) b!463574))

(assert (= (and d!176639 (not c!93386)) b!463575))

(assert (=> b!463575 m!732391))

(assert (=> d!175579 d!176639))

(declare-fun bs!57562 () Bool)

(declare-fun d!176641 () Bool)

(assert (= bs!57562 (and d!176641 d!176121)))

(declare-fun lambda!13702 () Int)

(assert (=> bs!57562 (= (= (toValue!1694 (transformation!875 (h!9891 rules!1920))) (toValue!1694 (transformation!875 (rule!1570 separatorToken!170)))) (= lambda!13702 lambda!13681))))

(assert (=> d!176641 true))

(assert (=> d!176641 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2754 order!4021 lambda!13702))))

(assert (=> d!176641 (= (equivClasses!332 (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (Forall2!190 lambda!13702))))

(declare-fun bs!57563 () Bool)

(assert (= bs!57563 d!176641))

(declare-fun m!734459 () Bool)

(assert (=> bs!57563 m!734459))

(assert (=> b!461789 d!176641))

(declare-fun d!176643 () Bool)

(assert (=> d!176643 (= (list!2005 (_1!2963 lt!205932)) (list!2007 (c!92856 (_1!2963 lt!205932))))))

(declare-fun bs!57564 () Bool)

(assert (= bs!57564 d!176643))

(declare-fun m!734461 () Bool)

(assert (=> bs!57564 m!734461))

(assert (=> b!461371 d!176643))

(declare-fun b!463576 () Bool)

(declare-fun e!284037 () tuple2!5498)

(declare-fun lt!207116 () Option!1184)

(declare-fun lt!207117 () tuple2!5498)

(assert (=> b!463576 (= e!284037 (tuple2!5499 (Cons!4495 (_1!2961 (v!15532 lt!207116)) (_1!2965 lt!207117)) (_2!2965 lt!207117)))))

(assert (=> b!463576 (= lt!207117 (lexList!299 thiss!17480 rules!1920 (_2!2961 (v!15532 lt!207116))))))

(declare-fun b!463577 () Bool)

(declare-fun e!284039 () Bool)

(declare-fun lt!207115 () tuple2!5498)

(assert (=> b!463577 (= e!284039 (= (_2!2965 lt!207115) (list!2004 (seqFromList!1115 lt!205905))))))

(declare-fun d!176645 () Bool)

(assert (=> d!176645 e!284039))

(declare-fun c!93388 () Bool)

(assert (=> d!176645 (= c!93388 (> (size!3675 (_1!2965 lt!207115)) 0))))

(assert (=> d!176645 (= lt!207115 e!284037)))

(declare-fun c!93387 () Bool)

(assert (=> d!176645 (= c!93387 ((_ is Some!1183) lt!207116))))

(assert (=> d!176645 (= lt!207116 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 lt!205905))))))

(assert (=> d!176645 (= (lexList!299 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 lt!205905))) lt!207115)))

(declare-fun b!463578 () Bool)

(assert (=> b!463578 (= e!284037 (tuple2!5499 Nil!4495 (list!2004 (seqFromList!1115 lt!205905))))))

(declare-fun b!463579 () Bool)

(declare-fun e!284038 () Bool)

(assert (=> b!463579 (= e!284039 e!284038)))

(declare-fun res!206389 () Bool)

(assert (=> b!463579 (= res!206389 (< (size!3674 (_2!2965 lt!207115)) (size!3674 (list!2004 (seqFromList!1115 lt!205905)))))))

(assert (=> b!463579 (=> (not res!206389) (not e!284038))))

(declare-fun b!463580 () Bool)

(assert (=> b!463580 (= e!284038 (not (isEmpty!3483 (_1!2965 lt!207115))))))

(assert (= (and d!176645 c!93387) b!463576))

(assert (= (and d!176645 (not c!93387)) b!463578))

(assert (= (and d!176645 c!93388) b!463579))

(assert (= (and d!176645 (not c!93388)) b!463577))

(assert (= (and b!463579 res!206389) b!463580))

(declare-fun m!734463 () Bool)

(assert (=> b!463576 m!734463))

(declare-fun m!734465 () Bool)

(assert (=> d!176645 m!734465))

(assert (=> d!176645 m!730007))

(declare-fun m!734467 () Bool)

(assert (=> d!176645 m!734467))

(declare-fun m!734469 () Bool)

(assert (=> b!463579 m!734469))

(assert (=> b!463579 m!730007))

(declare-fun m!734471 () Bool)

(assert (=> b!463579 m!734471))

(declare-fun m!734473 () Bool)

(assert (=> b!463580 m!734473))

(assert (=> b!461371 d!176645))

(declare-fun d!176647 () Bool)

(assert (=> d!176647 (= (list!2004 (seqFromList!1115 lt!205905)) (list!2009 (c!92854 (seqFromList!1115 lt!205905))))))

(declare-fun bs!57565 () Bool)

(assert (= bs!57565 d!176647))

(declare-fun m!734475 () Bool)

(assert (=> bs!57565 m!734475))

(assert (=> b!461371 d!176647))

(declare-fun lt!207118 () Bool)

(declare-fun d!176649 () Bool)

(assert (=> d!176649 (= lt!207118 (isEmpty!3484 (list!2004 (_2!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465))))))))))

(assert (=> d!176649 (= lt!207118 (isEmpty!3494 (c!92854 (_2!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465))))))))))

(assert (=> d!176649 (= (isEmpty!3492 (_2!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465)))))) lt!207118)))

(declare-fun bs!57566 () Bool)

(assert (= bs!57566 d!176649))

(declare-fun m!734477 () Bool)

(assert (=> bs!57566 m!734477))

(assert (=> bs!57566 m!734477))

(declare-fun m!734479 () Bool)

(assert (=> bs!57566 m!734479))

(declare-fun m!734481 () Bool)

(assert (=> bs!57566 m!734481))

(assert (=> b!461737 d!176649))

(declare-fun b!463581 () Bool)

(declare-fun e!284040 () Bool)

(declare-fun lt!207119 () tuple2!5494)

(assert (=> b!463581 (= e!284040 (not (isEmpty!3485 (_1!2963 lt!207119))))))

(declare-fun b!463582 () Bool)

(declare-fun e!284042 () Bool)

(assert (=> b!463582 (= e!284042 (= (list!2004 (_2!2963 lt!207119)) (_2!2965 (lexList!299 thiss!17480 rules!1920 (list!2004 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465))))))))))

(declare-fun d!176651 () Bool)

(assert (=> d!176651 e!284042))

(declare-fun res!206391 () Bool)

(assert (=> d!176651 (=> (not res!206391) (not e!284042))))

(declare-fun e!284041 () Bool)

(assert (=> d!176651 (= res!206391 e!284041)))

(declare-fun c!93389 () Bool)

(assert (=> d!176651 (= c!93389 (> (size!3672 (_1!2963 lt!207119)) 0))))

(assert (=> d!176651 (= lt!207119 (lexTailRecV2!264 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465))) (BalanceConc!3153 Empty!1572) (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465))) (BalanceConc!3155 Empty!1573)))))

(assert (=> d!176651 (= (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465)))) lt!207119)))

(declare-fun b!463583 () Bool)

(assert (=> b!463583 (= e!284041 (= (_2!2963 lt!207119) (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465)))))))

(declare-fun b!463584 () Bool)

(assert (=> b!463584 (= e!284041 e!284040)))

(declare-fun res!206390 () Bool)

(assert (=> b!463584 (= res!206390 (< (size!3673 (_2!2963 lt!207119)) (size!3673 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465))))))))

(assert (=> b!463584 (=> (not res!206390) (not e!284040))))

(declare-fun b!463585 () Bool)

(declare-fun res!206392 () Bool)

(assert (=> b!463585 (=> (not res!206392) (not e!284042))))

(assert (=> b!463585 (= res!206392 (= (list!2005 (_1!2963 lt!207119)) (_1!2965 (lexList!299 thiss!17480 rules!1920 (list!2004 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465))))))))))

(assert (= (and d!176651 c!93389) b!463584))

(assert (= (and d!176651 (not c!93389)) b!463583))

(assert (= (and b!463584 res!206390) b!463581))

(assert (= (and d!176651 res!206391) b!463585))

(assert (= (and b!463585 res!206392) b!463582))

(declare-fun m!734483 () Bool)

(assert (=> b!463585 m!734483))

(assert (=> b!463585 m!730503))

(declare-fun m!734485 () Bool)

(assert (=> b!463585 m!734485))

(assert (=> b!463585 m!734485))

(declare-fun m!734487 () Bool)

(assert (=> b!463585 m!734487))

(declare-fun m!734489 () Bool)

(assert (=> b!463581 m!734489))

(declare-fun m!734491 () Bool)

(assert (=> b!463584 m!734491))

(assert (=> b!463584 m!730503))

(declare-fun m!734493 () Bool)

(assert (=> b!463584 m!734493))

(declare-fun m!734495 () Bool)

(assert (=> d!176651 m!734495))

(assert (=> d!176651 m!730503))

(assert (=> d!176651 m!730503))

(declare-fun m!734497 () Bool)

(assert (=> d!176651 m!734497))

(declare-fun m!734499 () Bool)

(assert (=> b!463582 m!734499))

(assert (=> b!463582 m!730503))

(assert (=> b!463582 m!734485))

(assert (=> b!463582 m!734485))

(assert (=> b!463582 m!734487))

(assert (=> b!461737 d!176651))

(declare-fun d!176653 () Bool)

(declare-fun lt!207120 () BalanceConc!3152)

(assert (=> d!176653 (= (list!2004 lt!207120) (printList!435 thiss!17480 (list!2005 (singletonSeq!421 (h!9892 tokens!465)))))))

(assert (=> d!176653 (= lt!207120 (printTailRec!447 thiss!17480 (singletonSeq!421 (h!9892 tokens!465)) 0 (BalanceConc!3153 Empty!1572)))))

(assert (=> d!176653 (= (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465))) lt!207120)))

(declare-fun bs!57567 () Bool)

(assert (= bs!57567 d!176653))

(declare-fun m!734501 () Bool)

(assert (=> bs!57567 m!734501))

(assert (=> bs!57567 m!729901))

(assert (=> bs!57567 m!730509))

(assert (=> bs!57567 m!730509))

(declare-fun m!734503 () Bool)

(assert (=> bs!57567 m!734503))

(assert (=> bs!57567 m!729901))

(assert (=> bs!57567 m!731125))

(assert (=> b!461737 d!176653))

(assert (=> b!461737 d!175615))

(declare-fun d!176655 () Bool)

(declare-fun lt!207121 () BalanceConc!3152)

(assert (=> d!176655 (= (list!2004 lt!207121) (originalCharacters!918 (ite c!93017 call!32079 call!32082)))))

(assert (=> d!176655 (= lt!207121 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (ite c!93017 call!32079 call!32082)))) (value!29253 (ite c!93017 call!32079 call!32082))))))

(assert (=> d!176655 (= (charsOf!518 (ite c!93017 call!32079 call!32082)) lt!207121)))

(declare-fun b_lambda!19279 () Bool)

(assert (=> (not b_lambda!19279) (not d!176655)))

(declare-fun tb!46301 () Bool)

(declare-fun t!72142 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93017 call!32079 call!32082))))) t!72142) tb!46301))

(declare-fun b!463586 () Bool)

(declare-fun tp!127806 () Bool)

(declare-fun e!284043 () Bool)

(assert (=> b!463586 (= e!284043 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (ite c!93017 call!32079 call!32082)))) (value!29253 (ite c!93017 call!32079 call!32082))))) tp!127806))))

(declare-fun result!50988 () Bool)

(assert (=> tb!46301 (= result!50988 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (ite c!93017 call!32079 call!32082)))) (value!29253 (ite c!93017 call!32079 call!32082)))) e!284043))))

(assert (= tb!46301 b!463586))

(declare-fun m!734505 () Bool)

(assert (=> b!463586 m!734505))

(declare-fun m!734507 () Bool)

(assert (=> tb!46301 m!734507))

(assert (=> d!176655 t!72142))

(declare-fun b_and!49785 () Bool)

(assert (= b_and!49693 (and (=> t!72142 result!50988) b_and!49785)))

(declare-fun t!72144 () Bool)

(declare-fun tb!46303 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93017 call!32079 call!32082))))) t!72144) tb!46303))

(declare-fun result!50990 () Bool)

(assert (= result!50990 result!50988))

(assert (=> d!176655 t!72144))

(declare-fun b_and!49787 () Bool)

(assert (= b_and!49691 (and (=> t!72144 result!50990) b_and!49787)))

(declare-fun t!72146 () Bool)

(declare-fun tb!46305 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93017 call!32079 call!32082))))) t!72146) tb!46305))

(declare-fun result!50992 () Bool)

(assert (= result!50992 result!50988))

(assert (=> d!176655 t!72146))

(declare-fun b_and!49789 () Bool)

(assert (= b_and!49687 (and (=> t!72146 result!50992) b_and!49789)))

(declare-fun tb!46307 () Bool)

(declare-fun t!72148 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93017 call!32079 call!32082))))) t!72148) tb!46307))

(declare-fun result!50994 () Bool)

(assert (= result!50994 result!50988))

(assert (=> d!176655 t!72148))

(declare-fun b_and!49791 () Bool)

(assert (= b_and!49689 (and (=> t!72148 result!50994) b_and!49791)))

(declare-fun t!72150 () Bool)

(declare-fun tb!46309 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93017 call!32079 call!32082))))) t!72150) tb!46309))

(declare-fun result!50996 () Bool)

(assert (= result!50996 result!50988))

(assert (=> d!176655 t!72150))

(declare-fun b_and!49793 () Bool)

(assert (= b_and!49685 (and (=> t!72150 result!50996) b_and!49793)))

(declare-fun m!734509 () Bool)

(assert (=> d!176655 m!734509))

(declare-fun m!734511 () Bool)

(assert (=> d!176655 m!734511))

(assert (=> bm!32077 d!176655))

(declare-fun b!463588 () Bool)

(declare-fun e!284044 () List!4503)

(declare-fun e!284045 () List!4503)

(assert (=> b!463588 (= e!284044 e!284045)))

(declare-fun c!93391 () Bool)

(assert (=> b!463588 (= c!93391 ((_ is Leaf!2349) (c!92854 lt!205919)))))

(declare-fun b!463587 () Bool)

(assert (=> b!463587 (= e!284044 Nil!4493)))

(declare-fun b!463589 () Bool)

(assert (=> b!463589 (= e!284045 (list!2011 (xs!4203 (c!92854 lt!205919))))))

(declare-fun d!176657 () Bool)

(declare-fun c!93390 () Bool)

(assert (=> d!176657 (= c!93390 ((_ is Empty!1572) (c!92854 lt!205919)))))

(assert (=> d!176657 (= (list!2009 (c!92854 lt!205919)) e!284044)))

(declare-fun b!463590 () Bool)

(assert (=> b!463590 (= e!284045 (++!1312 (list!2009 (left!3800 (c!92854 lt!205919))) (list!2009 (right!4130 (c!92854 lt!205919)))))))

(assert (= (and d!176657 c!93390) b!463587))

(assert (= (and d!176657 (not c!93390)) b!463588))

(assert (= (and b!463588 c!93391) b!463589))

(assert (= (and b!463588 (not c!93391)) b!463590))

(declare-fun m!734513 () Bool)

(assert (=> b!463589 m!734513))

(declare-fun m!734515 () Bool)

(assert (=> b!463590 m!734515))

(declare-fun m!734517 () Bool)

(assert (=> b!463590 m!734517))

(assert (=> b!463590 m!734515))

(assert (=> b!463590 m!734517))

(declare-fun m!734519 () Bool)

(assert (=> b!463590 m!734519))

(assert (=> d!175613 d!176657))

(assert (=> b!461578 d!176029))

(declare-fun d!176659 () Bool)

(assert (=> d!176659 (= (apply!1155 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!206011))))) (dynLambda!2755 (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011))))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!206011))))))))

(declare-fun b_lambda!19281 () Bool)

(assert (=> (not b_lambda!19281) (not d!176659)))

(declare-fun t!72152 () Bool)

(declare-fun tb!46311 () Bool)

(assert (=> (and b!462189 (= (toValue!1694 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72152) tb!46311))

(declare-fun result!50998 () Bool)

(assert (=> tb!46311 (= result!50998 (inv!21 (dynLambda!2755 (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011))))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!206011)))))))))

(declare-fun m!734521 () Bool)

(assert (=> tb!46311 m!734521))

(assert (=> d!176659 t!72152))

(declare-fun b_and!49795 () Bool)

(assert (= b_and!49713 (and (=> t!72152 result!50998) b_and!49795)))

(declare-fun t!72154 () Bool)

(declare-fun tb!46313 () Bool)

(assert (=> (and b!461294 (= (toValue!1694 (transformation!875 (h!9891 rules!1920))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72154) tb!46313))

(declare-fun result!51000 () Bool)

(assert (= result!51000 result!50998))

(assert (=> d!176659 t!72154))

(declare-fun b_and!49797 () Bool)

(assert (= b_and!49711 (and (=> t!72154 result!51000) b_and!49797)))

(declare-fun tb!46315 () Bool)

(declare-fun t!72156 () Bool)

(assert (=> (and b!462208 (= (toValue!1694 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72156) tb!46315))

(declare-fun result!51002 () Bool)

(assert (= result!51002 result!50998))

(assert (=> d!176659 t!72156))

(declare-fun b_and!49799 () Bool)

(assert (= b_and!49709 (and (=> t!72156 result!51002) b_and!49799)))

(declare-fun tb!46317 () Bool)

(declare-fun t!72158 () Bool)

(assert (=> (and b!461297 (= (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72158) tb!46317))

(declare-fun result!51004 () Bool)

(assert (= result!51004 result!50998))

(assert (=> d!176659 t!72158))

(declare-fun b_and!49801 () Bool)

(assert (= b_and!49707 (and (=> t!72158 result!51004) b_and!49801)))

(declare-fun t!72160 () Bool)

(declare-fun tb!46319 () Bool)

(assert (=> (and b!461281 (= (toValue!1694 (transformation!875 (rule!1570 separatorToken!170))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72160) tb!46319))

(declare-fun result!51006 () Bool)

(assert (= result!51006 result!50998))

(assert (=> d!176659 t!72160))

(declare-fun b_and!49803 () Bool)

(assert (= b_and!49705 (and (=> t!72160 result!51006) b_and!49803)))

(assert (=> d!176659 m!730295))

(declare-fun m!734523 () Bool)

(assert (=> d!176659 m!734523))

(assert (=> b!461578 d!176659))

(declare-fun d!176661 () Bool)

(assert (=> d!176661 (= (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!206011)))) (fromListB!497 (originalCharacters!918 (_1!2961 (get!1652 lt!206011)))))))

(declare-fun bs!57568 () Bool)

(assert (= bs!57568 d!176661))

(declare-fun m!734525 () Bool)

(assert (=> bs!57568 m!734525))

(assert (=> b!461578 d!176661))

(declare-fun d!176663 () Bool)

(declare-fun lt!207122 () Int)

(assert (=> d!176663 (>= lt!207122 0)))

(declare-fun e!284047 () Int)

(assert (=> d!176663 (= lt!207122 e!284047)))

(declare-fun c!93392 () Bool)

(assert (=> d!176663 (= c!93392 ((_ is Nil!4495) lt!205960))))

(assert (=> d!176663 (= (size!3675 lt!205960) lt!207122)))

(declare-fun b!463591 () Bool)

(assert (=> b!463591 (= e!284047 0)))

(declare-fun b!463592 () Bool)

(assert (=> b!463592 (= e!284047 (+ 1 (size!3675 (t!71885 lt!205960))))))

(assert (= (and d!176663 c!93392) b!463591))

(assert (= (and d!176663 (not c!93392)) b!463592))

(declare-fun m!734527 () Bool)

(assert (=> b!463592 m!734527))

(assert (=> d!175519 d!176663))

(declare-fun d!176665 () Bool)

(declare-fun lt!207123 () Int)

(assert (=> d!176665 (>= lt!207123 0)))

(declare-fun e!284048 () Int)

(assert (=> d!176665 (= lt!207123 e!284048)))

(declare-fun c!93393 () Bool)

(assert (=> d!176665 (= c!93393 ((_ is Nil!4495) (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))))

(assert (=> d!176665 (= (size!3675 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))) lt!207123)))

(declare-fun b!463593 () Bool)

(assert (=> b!463593 (= e!284048 0)))

(declare-fun b!463594 () Bool)

(assert (=> b!463594 (= e!284048 (+ 1 (size!3675 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))))))

(assert (= (and d!176665 c!93393) b!463593))

(assert (= (and d!176665 (not c!93393)) b!463594))

(assert (=> b!463594 m!733287))

(assert (=> d!175519 d!176665))

(assert (=> b!461719 d!176131))

(declare-fun d!176667 () Bool)

(declare-fun e!284049 () Bool)

(assert (=> d!176667 e!284049))

(declare-fun res!206393 () Bool)

(assert (=> d!176667 (=> (not res!206393) (not e!284049))))

(declare-fun lt!207124 () BalanceConc!3154)

(assert (=> d!176667 (= res!206393 (= (list!2005 lt!207124) tokens!465))))

(assert (=> d!176667 (= lt!207124 (BalanceConc!3155 (fromList!261 tokens!465)))))

(assert (=> d!176667 (= (fromListB!498 tokens!465) lt!207124)))

(declare-fun b!463595 () Bool)

(assert (=> b!463595 (= e!284049 (isBalanced!480 (fromList!261 tokens!465)))))

(assert (= (and d!176667 res!206393) b!463595))

(declare-fun m!734529 () Bool)

(assert (=> d!176667 m!734529))

(declare-fun m!734531 () Bool)

(assert (=> d!176667 m!734531))

(assert (=> b!463595 m!734531))

(assert (=> b!463595 m!734531))

(declare-fun m!734533 () Bool)

(assert (=> b!463595 m!734533))

(assert (=> d!175497 d!176667))

(declare-fun d!176669 () Bool)

(assert (=> d!176669 (= (list!2004 (ite c!93015 call!32076 call!32075)) (list!2009 (c!92854 (ite c!93015 call!32076 call!32075))))))

(declare-fun bs!57569 () Bool)

(assert (= bs!57569 d!176669))

(declare-fun m!734535 () Bool)

(assert (=> bs!57569 m!734535))

(assert (=> bm!32068 d!176669))

(declare-fun d!176671 () Bool)

(assert (=> d!176671 (= (isEmpty!3490 lt!205988) (not ((_ is Some!1183) lt!205988)))))

(assert (=> d!175527 d!176671))

(declare-fun d!176673 () Bool)

(declare-fun e!284051 () Bool)

(assert (=> d!176673 e!284051))

(declare-fun res!206396 () Bool)

(assert (=> d!176673 (=> res!206396 e!284051)))

(declare-fun lt!207125 () Bool)

(assert (=> d!176673 (= res!206396 (not lt!207125))))

(declare-fun e!284050 () Bool)

(assert (=> d!176673 (= lt!207125 e!284050)))

(declare-fun res!206395 () Bool)

(assert (=> d!176673 (=> res!206395 e!284050)))

(assert (=> d!176673 (= res!206395 ((_ is Nil!4493) lt!205920))))

(assert (=> d!176673 (= (isPrefix!527 lt!205920 lt!205920) lt!207125)))

(declare-fun b!463597 () Bool)

(declare-fun res!206394 () Bool)

(declare-fun e!284052 () Bool)

(assert (=> b!463597 (=> (not res!206394) (not e!284052))))

(assert (=> b!463597 (= res!206394 (= (head!1134 lt!205920) (head!1134 lt!205920)))))

(declare-fun b!463596 () Bool)

(assert (=> b!463596 (= e!284050 e!284052)))

(declare-fun res!206397 () Bool)

(assert (=> b!463596 (=> (not res!206397) (not e!284052))))

(assert (=> b!463596 (= res!206397 (not ((_ is Nil!4493) lt!205920)))))

(declare-fun b!463599 () Bool)

(assert (=> b!463599 (= e!284051 (>= (size!3674 lt!205920) (size!3674 lt!205920)))))

(declare-fun b!463598 () Bool)

(assert (=> b!463598 (= e!284052 (isPrefix!527 (tail!652 lt!205920) (tail!652 lt!205920)))))

(assert (= (and d!176673 (not res!206395)) b!463596))

(assert (= (and b!463596 res!206397) b!463597))

(assert (= (and b!463597 res!206394) b!463598))

(assert (= (and d!176673 (not res!206396)) b!463599))

(assert (=> b!463597 m!730259))

(assert (=> b!463597 m!730259))

(assert (=> b!463599 m!730219))

(assert (=> b!463599 m!730219))

(assert (=> b!463598 m!730261))

(assert (=> b!463598 m!730261))

(assert (=> b!463598 m!730261))

(assert (=> b!463598 m!730261))

(declare-fun m!734537 () Bool)

(assert (=> b!463598 m!734537))

(assert (=> d!175527 d!176673))

(declare-fun d!176675 () Bool)

(assert (=> d!176675 (isPrefix!527 lt!205920 lt!205920)))

(declare-fun lt!207128 () Unit!8113)

(declare-fun choose!3483 (List!4503 List!4503) Unit!8113)

(assert (=> d!176675 (= lt!207128 (choose!3483 lt!205920 lt!205920))))

(assert (=> d!176675 (= (lemmaIsPrefixRefl!295 lt!205920 lt!205920) lt!207128)))

(declare-fun bs!57570 () Bool)

(assert (= bs!57570 d!176675))

(assert (=> bs!57570 m!730211))

(declare-fun m!734539 () Bool)

(assert (=> bs!57570 m!734539))

(assert (=> d!175527 d!176675))

(declare-fun d!176677 () Bool)

(assert (=> d!176677 true))

(declare-fun lt!207131 () Bool)

(declare-fun lambda!13705 () Int)

(declare-fun forall!1313 (List!4504 Int) Bool)

(assert (=> d!176677 (= lt!207131 (forall!1313 rules!1920 lambda!13705))))

(declare-fun e!284058 () Bool)

(assert (=> d!176677 (= lt!207131 e!284058)))

(declare-fun res!206402 () Bool)

(assert (=> d!176677 (=> res!206402 e!284058)))

(assert (=> d!176677 (= res!206402 (not ((_ is Cons!4494) rules!1920)))))

(assert (=> d!176677 (= (rulesValidInductive!290 thiss!17480 rules!1920) lt!207131)))

(declare-fun b!463604 () Bool)

(declare-fun e!284057 () Bool)

(assert (=> b!463604 (= e!284058 e!284057)))

(declare-fun res!206403 () Bool)

(assert (=> b!463604 (=> (not res!206403) (not e!284057))))

(assert (=> b!463604 (= res!206403 (ruleValid!136 thiss!17480 (h!9891 rules!1920)))))

(declare-fun b!463605 () Bool)

(assert (=> b!463605 (= e!284057 (rulesValidInductive!290 thiss!17480 (t!71884 rules!1920)))))

(assert (= (and d!176677 (not res!206402)) b!463604))

(assert (= (and b!463604 res!206403) b!463605))

(declare-fun m!734541 () Bool)

(assert (=> d!176677 m!734541))

(assert (=> b!463604 m!732213))

(assert (=> b!463605 m!733181))

(assert (=> d!175527 d!176677))

(declare-fun d!176679 () Bool)

(declare-fun c!93396 () Bool)

(assert (=> d!176679 (= c!93396 ((_ is Nil!4493) lt!206309))))

(declare-fun e!284063 () (InoxSet C!3120))

(assert (=> d!176679 (= (content!752 lt!206309) e!284063)))

(declare-fun b!463614 () Bool)

(assert (=> b!463614 (= e!284063 ((as const (Array C!3120 Bool)) false))))

(declare-fun b!463615 () Bool)

(assert (=> b!463615 (= e!284063 ((_ map or) (store ((as const (Array C!3120 Bool)) false) (h!9890 lt!206309) true) (content!752 (t!71883 lt!206309))))))

(assert (= (and d!176679 c!93396) b!463614))

(assert (= (and d!176679 (not c!93396)) b!463615))

(declare-fun m!734543 () Bool)

(assert (=> b!463615 m!734543))

(declare-fun m!734545 () Bool)

(assert (=> b!463615 m!734545))

(assert (=> d!175741 d!176679))

(assert (=> d!175741 d!176081))

(declare-fun d!176681 () Bool)

(declare-fun c!93397 () Bool)

(assert (=> d!176681 (= c!93397 ((_ is Nil!4493) lt!205914))))

(declare-fun e!284064 () (InoxSet C!3120))

(assert (=> d!176681 (= (content!752 lt!205914) e!284064)))

(declare-fun b!463616 () Bool)

(assert (=> b!463616 (= e!284064 ((as const (Array C!3120 Bool)) false))))

(declare-fun b!463617 () Bool)

(assert (=> b!463617 (= e!284064 ((_ map or) (store ((as const (Array C!3120 Bool)) false) (h!9890 lt!205914) true) (content!752 (t!71883 lt!205914))))))

(assert (= (and d!176681 c!93397) b!463616))

(assert (= (and d!176681 (not c!93397)) b!463617))

(declare-fun m!734547 () Bool)

(assert (=> b!463617 m!734547))

(declare-fun m!734549 () Bool)

(assert (=> b!463617 m!734549))

(assert (=> d!175741 d!176681))

(declare-fun d!176683 () Bool)

(assert (=> d!176683 (isPrefix!527 lt!206050 lt!206048)))

(declare-fun lt!207142 () Unit!8113)

(assert (=> d!176683 (= lt!207142 (choose!3483 lt!206050 lt!206048))))

(assert (=> d!176683 (= (lemmaIsPrefixRefl!295 lt!206050 lt!206048) lt!207142)))

(declare-fun bs!57571 () Bool)

(assert (= bs!57571 d!176683))

(assert (=> bs!57571 m!730345))

(declare-fun m!734551 () Bool)

(assert (=> bs!57571 m!734551))

(assert (=> d!175557 d!176683))

(assert (=> d!175557 d!176677))

(assert (=> d!175557 d!176097))

(declare-fun d!176685 () Bool)

(assert (=> d!176685 (= (isDefined!1023 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))) (not (isEmpty!3490 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))))

(declare-fun bs!57572 () Bool)

(assert (= bs!57572 d!176685))

(assert (=> bs!57572 m!730341))

(declare-fun m!734553 () Bool)

(assert (=> bs!57572 m!734553))

(assert (=> d!175557 d!176685))

(declare-fun d!176687 () Bool)

(assert (=> d!176687 (= (isDefined!1024 lt!206046) (not (isEmpty!3491 lt!206046)))))

(declare-fun bs!57573 () Bool)

(assert (= bs!57573 d!176687))

(declare-fun m!734555 () Bool)

(assert (=> bs!57573 m!734555))

(assert (=> d!175557 d!176687))

(declare-fun d!176689 () Bool)

(declare-fun e!284070 () Bool)

(assert (=> d!176689 e!284070))

(declare-fun res!206418 () Bool)

(assert (=> d!176689 (=> res!206418 e!284070)))

(declare-fun lt!207143 () Bool)

(assert (=> d!176689 (= res!206418 (not lt!207143))))

(declare-fun e!284069 () Bool)

(assert (=> d!176689 (= lt!207143 e!284069)))

(declare-fun res!206417 () Bool)

(assert (=> d!176689 (=> res!206417 e!284069)))

(assert (=> d!176689 (= res!206417 ((_ is Nil!4493) lt!206050))))

(assert (=> d!176689 (= (isPrefix!527 lt!206050 lt!206048) lt!207143)))

(declare-fun b!463629 () Bool)

(declare-fun res!206416 () Bool)

(declare-fun e!284071 () Bool)

(assert (=> b!463629 (=> (not res!206416) (not e!284071))))

(assert (=> b!463629 (= res!206416 (= (head!1134 lt!206050) (head!1134 lt!206048)))))

(declare-fun b!463628 () Bool)

(assert (=> b!463628 (= e!284069 e!284071)))

(declare-fun res!206419 () Bool)

(assert (=> b!463628 (=> (not res!206419) (not e!284071))))

(assert (=> b!463628 (= res!206419 (not ((_ is Nil!4493) lt!206048)))))

(declare-fun b!463631 () Bool)

(assert (=> b!463631 (= e!284070 (>= (size!3674 lt!206048) (size!3674 lt!206050)))))

(declare-fun b!463630 () Bool)

(assert (=> b!463630 (= e!284071 (isPrefix!527 (tail!652 lt!206050) (tail!652 lt!206048)))))

(assert (= (and d!176689 (not res!206417)) b!463628))

(assert (= (and b!463628 res!206419) b!463629))

(assert (= (and b!463629 res!206416) b!463630))

(assert (= (and d!176689 (not res!206418)) b!463631))

(declare-fun m!734557 () Bool)

(assert (=> b!463629 m!734557))

(declare-fun m!734559 () Bool)

(assert (=> b!463629 m!734559))

(declare-fun m!734561 () Bool)

(assert (=> b!463631 m!734561))

(declare-fun m!734563 () Bool)

(assert (=> b!463631 m!734563))

(declare-fun m!734565 () Bool)

(assert (=> b!463630 m!734565))

(declare-fun m!734567 () Bool)

(assert (=> b!463630 m!734567))

(assert (=> b!463630 m!734565))

(assert (=> b!463630 m!734567))

(declare-fun m!734569 () Bool)

(assert (=> b!463630 m!734569))

(assert (=> d!175557 d!176689))

(assert (=> d!175557 d!176105))

(declare-fun d!176691 () Bool)

(declare-fun e!284072 () Bool)

(assert (=> d!176691 e!284072))

(declare-fun res!206422 () Bool)

(assert (=> d!176691 (=> (not res!206422) (not e!284072))))

(declare-fun lt!207144 () BalanceConc!3152)

(assert (=> d!176691 (= res!206422 (= (list!2004 lt!207144) (originalCharacters!918 (h!9892 tokens!465))))))

(assert (=> d!176691 (= lt!207144 (BalanceConc!3153 (fromList!259 (originalCharacters!918 (h!9892 tokens!465)))))))

(assert (=> d!176691 (= (fromListB!497 (originalCharacters!918 (h!9892 tokens!465))) lt!207144)))

(declare-fun b!463634 () Bool)

(assert (=> b!463634 (= e!284072 (isBalanced!483 (fromList!259 (originalCharacters!918 (h!9892 tokens!465)))))))

(assert (= (and d!176691 res!206422) b!463634))

(declare-fun m!734571 () Bool)

(assert (=> d!176691 m!734571))

(declare-fun m!734573 () Bool)

(assert (=> d!176691 m!734573))

(assert (=> b!463634 m!734573))

(assert (=> b!463634 m!734573))

(declare-fun m!734575 () Bool)

(assert (=> b!463634 m!734575))

(assert (=> d!175565 d!176691))

(declare-fun d!176693 () Bool)

(declare-fun lt!207145 () Int)

(assert (=> d!176693 (= lt!207145 (size!3675 (list!2005 (_1!2963 lt!206066))))))

(assert (=> d!176693 (= lt!207145 (size!3677 (c!92856 (_1!2963 lt!206066))))))

(assert (=> d!176693 (= (size!3672 (_1!2963 lt!206066)) lt!207145)))

(declare-fun bs!57574 () Bool)

(assert (= bs!57574 d!176693))

(assert (=> bs!57574 m!730443))

(assert (=> bs!57574 m!730443))

(declare-fun m!734577 () Bool)

(assert (=> bs!57574 m!734577))

(declare-fun m!734579 () Bool)

(assert (=> bs!57574 m!734579))

(assert (=> d!175583 d!176693))

(declare-fun lt!207387 () Option!1185)

(declare-fun lt!207377 () BalanceConc!3152)

(declare-fun b!463901 () Bool)

(declare-fun e!284226 () tuple2!5494)

(declare-fun append!153 (BalanceConc!3154 Token!1494) BalanceConc!3154)

(assert (=> b!463901 (= e!284226 (lexTailRecV2!264 thiss!17480 rules!1920 lt!205918 lt!207377 (_2!2962 (v!15533 lt!207387)) (append!153 (BalanceConc!3155 Empty!1573) (_1!2962 (v!15533 lt!207387)))))))

(declare-fun lt!207373 () tuple2!5494)

(declare-fun lexRec!132 (LexerInterface!761 List!4504 BalanceConc!3152) tuple2!5494)

(assert (=> b!463901 (= lt!207373 (lexRec!132 thiss!17480 rules!1920 (_2!2962 (v!15533 lt!207387))))))

(declare-fun lt!207383 () List!4503)

(assert (=> b!463901 (= lt!207383 (list!2004 (BalanceConc!3153 Empty!1572)))))

(declare-fun lt!207358 () List!4503)

(assert (=> b!463901 (= lt!207358 (list!2004 (charsOf!518 (_1!2962 (v!15533 lt!207387)))))))

(declare-fun lt!207366 () List!4503)

(assert (=> b!463901 (= lt!207366 (list!2004 (_2!2962 (v!15533 lt!207387))))))

(declare-fun lt!207385 () Unit!8113)

(assert (=> b!463901 (= lt!207385 (lemmaConcatAssociativity!612 lt!207383 lt!207358 lt!207366))))

(assert (=> b!463901 (= (++!1312 (++!1312 lt!207383 lt!207358) lt!207366) (++!1312 lt!207383 (++!1312 lt!207358 lt!207366)))))

(declare-fun lt!207365 () Unit!8113)

(assert (=> b!463901 (= lt!207365 lt!207385)))

(declare-fun lt!207360 () Option!1185)

(assert (=> b!463901 (= lt!207360 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 lt!205918))))

(declare-fun c!93438 () Bool)

(assert (=> b!463901 (= c!93438 ((_ is Some!1184) lt!207360))))

(declare-fun e!284227 () tuple2!5494)

(assert (=> b!463901 (= (lexRec!132 thiss!17480 rules!1920 lt!205918) e!284227)))

(declare-fun lt!207386 () Unit!8113)

(declare-fun Unit!8149 () Unit!8113)

(assert (=> b!463901 (= lt!207386 Unit!8149)))

(declare-fun lt!207372 () List!4505)

(assert (=> b!463901 (= lt!207372 (list!2005 (BalanceConc!3155 Empty!1573)))))

(declare-fun lt!207380 () List!4505)

(assert (=> b!463901 (= lt!207380 (Cons!4495 (_1!2962 (v!15533 lt!207387)) Nil!4495))))

(declare-fun lt!207374 () List!4505)

(assert (=> b!463901 (= lt!207374 (list!2005 (_1!2963 lt!207373)))))

(declare-fun lt!207364 () Unit!8113)

(declare-fun lemmaConcatAssociativity!614 (List!4505 List!4505 List!4505) Unit!8113)

(assert (=> b!463901 (= lt!207364 (lemmaConcatAssociativity!614 lt!207372 lt!207380 lt!207374))))

(declare-fun ++!1318 (List!4505 List!4505) List!4505)

(assert (=> b!463901 (= (++!1318 (++!1318 lt!207372 lt!207380) lt!207374) (++!1318 lt!207372 (++!1318 lt!207380 lt!207374)))))

(declare-fun lt!207375 () Unit!8113)

(assert (=> b!463901 (= lt!207375 lt!207364)))

(declare-fun lt!207376 () List!4503)

(assert (=> b!463901 (= lt!207376 (++!1312 (list!2004 (BalanceConc!3153 Empty!1572)) (list!2004 (charsOf!518 (_1!2962 (v!15533 lt!207387))))))))

(declare-fun lt!207356 () List!4503)

(assert (=> b!463901 (= lt!207356 (list!2004 (_2!2962 (v!15533 lt!207387))))))

(declare-fun lt!207359 () List!4505)

(assert (=> b!463901 (= lt!207359 (list!2005 (append!153 (BalanceConc!3155 Empty!1573) (_1!2962 (v!15533 lt!207387)))))))

(declare-fun lt!207355 () Unit!8113)

(declare-fun lemmaLexThenLexPrefix!119 (LexerInterface!761 List!4504 List!4503 List!4503 List!4505 List!4505 List!4503) Unit!8113)

(assert (=> b!463901 (= lt!207355 (lemmaLexThenLexPrefix!119 thiss!17480 rules!1920 lt!207376 lt!207356 lt!207359 (list!2005 (_1!2963 lt!207373)) (list!2004 (_2!2963 lt!207373))))))

(assert (=> b!463901 (= (lexList!299 thiss!17480 rules!1920 lt!207376) (tuple2!5499 lt!207359 Nil!4493))))

(declare-fun lt!207371 () Unit!8113)

(assert (=> b!463901 (= lt!207371 lt!207355)))

(declare-fun lt!207370 () BalanceConc!3152)

(assert (=> b!463901 (= lt!207370 (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (_1!2962 (v!15533 lt!207387)))))))

(declare-fun lt!207367 () Option!1185)

(assert (=> b!463901 (= lt!207367 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 lt!207370))))

(declare-fun c!93437 () Bool)

(assert (=> b!463901 (= c!93437 ((_ is Some!1184) lt!207367))))

(declare-fun e!284228 () tuple2!5494)

(assert (=> b!463901 (= (lexRec!132 thiss!17480 rules!1920 (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (_1!2962 (v!15533 lt!207387))))) e!284228)))

(declare-fun lt!207379 () Unit!8113)

(declare-fun Unit!8150 () Unit!8113)

(assert (=> b!463901 (= lt!207379 Unit!8150)))

(assert (=> b!463901 (= lt!207377 (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (_1!2962 (v!15533 lt!207387)))))))

(declare-fun lt!207382 () List!4503)

(assert (=> b!463901 (= lt!207382 (list!2004 lt!207377))))

(declare-fun lt!207381 () List!4503)

(assert (=> b!463901 (= lt!207381 (list!2004 (_2!2962 (v!15533 lt!207387))))))

(declare-fun lt!207368 () Unit!8113)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!117 (List!4503 List!4503) Unit!8113)

(assert (=> b!463901 (= lt!207368 (lemmaConcatTwoListThenFSndIsSuffix!117 lt!207382 lt!207381))))

(declare-fun isSuffix!117 (List!4503 List!4503) Bool)

(assert (=> b!463901 (isSuffix!117 lt!207381 (++!1312 lt!207382 lt!207381))))

(declare-fun lt!207357 () Unit!8113)

(assert (=> b!463901 (= lt!207357 lt!207368)))

(declare-fun b!463902 () Bool)

(assert (=> b!463902 (= e!284227 (tuple2!5495 (BalanceConc!3155 Empty!1573) lt!205918))))

(declare-fun b!463903 () Bool)

(declare-fun lt!207388 () tuple2!5494)

(assert (=> b!463903 (= lt!207388 (lexRec!132 thiss!17480 rules!1920 (_2!2962 (v!15533 lt!207360))))))

(declare-fun prepend!231 (BalanceConc!3154 Token!1494) BalanceConc!3154)

(assert (=> b!463903 (= e!284227 (tuple2!5495 (prepend!231 (_1!2963 lt!207388) (_1!2962 (v!15533 lt!207360))) (_2!2963 lt!207388)))))

(declare-fun lt!207363 () tuple2!5494)

(declare-fun b!463904 () Bool)

(assert (=> b!463904 (= lt!207363 (lexRec!132 thiss!17480 rules!1920 (_2!2962 (v!15533 lt!207367))))))

(assert (=> b!463904 (= e!284228 (tuple2!5495 (prepend!231 (_1!2963 lt!207363) (_1!2962 (v!15533 lt!207367))) (_2!2963 lt!207363)))))

(declare-fun d!176695 () Bool)

(declare-fun e!284225 () Bool)

(assert (=> d!176695 e!284225))

(declare-fun res!206487 () Bool)

(assert (=> d!176695 (=> (not res!206487) (not e!284225))))

(declare-fun lt!207369 () tuple2!5494)

(assert (=> d!176695 (= res!206487 (= (list!2005 (_1!2963 lt!207369)) (list!2005 (_1!2963 (lexRec!132 thiss!17480 rules!1920 lt!205918)))))))

(assert (=> d!176695 (= lt!207369 e!284226)))

(declare-fun c!93439 () Bool)

(assert (=> d!176695 (= c!93439 ((_ is Some!1184) lt!207387))))

(declare-fun maxPrefixZipperSequenceV2!117 (LexerInterface!761 List!4504 BalanceConc!3152 BalanceConc!3152) Option!1185)

(assert (=> d!176695 (= lt!207387 (maxPrefixZipperSequenceV2!117 thiss!17480 rules!1920 lt!205918 lt!205918))))

(declare-fun lt!207362 () Unit!8113)

(declare-fun lt!207384 () Unit!8113)

(assert (=> d!176695 (= lt!207362 lt!207384)))

(declare-fun lt!207378 () List!4503)

(declare-fun lt!207361 () List!4503)

(assert (=> d!176695 (isSuffix!117 lt!207378 (++!1312 lt!207361 lt!207378))))

(assert (=> d!176695 (= lt!207384 (lemmaConcatTwoListThenFSndIsSuffix!117 lt!207361 lt!207378))))

(assert (=> d!176695 (= lt!207378 (list!2004 lt!205918))))

(assert (=> d!176695 (= lt!207361 (list!2004 (BalanceConc!3153 Empty!1572)))))

(assert (=> d!176695 (= (lexTailRecV2!264 thiss!17480 rules!1920 lt!205918 (BalanceConc!3153 Empty!1572) lt!205918 (BalanceConc!3155 Empty!1573)) lt!207369)))

(declare-fun b!463905 () Bool)

(assert (=> b!463905 (= e!284225 (= (list!2004 (_2!2963 lt!207369)) (list!2004 (_2!2963 (lexRec!132 thiss!17480 rules!1920 lt!205918)))))))

(declare-fun b!463906 () Bool)

(assert (=> b!463906 (= e!284226 (tuple2!5495 (BalanceConc!3155 Empty!1573) lt!205918))))

(declare-fun b!463907 () Bool)

(assert (=> b!463907 (= e!284228 (tuple2!5495 (BalanceConc!3155 Empty!1573) lt!207370))))

(assert (= (and d!176695 c!93439) b!463901))

(assert (= (and d!176695 (not c!93439)) b!463906))

(assert (= (and b!463901 c!93438) b!463903))

(assert (= (and b!463901 (not c!93438)) b!463902))

(assert (= (and b!463901 c!93437) b!463904))

(assert (= (and b!463901 (not c!93437)) b!463907))

(assert (= (and d!176695 res!206487) b!463905))

(declare-fun m!735169 () Bool)

(assert (=> b!463903 m!735169))

(declare-fun m!735171 () Bool)

(assert (=> b!463903 m!735171))

(declare-fun m!735173 () Bool)

(assert (=> d!176695 m!735173))

(declare-fun m!735175 () Bool)

(assert (=> d!176695 m!735175))

(declare-fun m!735177 () Bool)

(assert (=> d!176695 m!735177))

(declare-fun m!735179 () Bool)

(assert (=> d!176695 m!735179))

(assert (=> d!176695 m!730547))

(assert (=> d!176695 m!729851))

(assert (=> d!176695 m!735177))

(declare-fun m!735181 () Bool)

(assert (=> d!176695 m!735181))

(declare-fun m!735183 () Bool)

(assert (=> d!176695 m!735183))

(declare-fun m!735185 () Bool)

(assert (=> d!176695 m!735185))

(declare-fun m!735187 () Bool)

(assert (=> b!463905 m!735187))

(assert (=> b!463905 m!735183))

(declare-fun m!735189 () Bool)

(assert (=> b!463905 m!735189))

(declare-fun m!735191 () Bool)

(assert (=> b!463904 m!735191))

(declare-fun m!735193 () Bool)

(assert (=> b!463904 m!735193))

(declare-fun m!735195 () Bool)

(assert (=> b!463901 m!735195))

(assert (=> b!463901 m!730547))

(declare-fun m!735197 () Bool)

(assert (=> b!463901 m!735197))

(declare-fun m!735199 () Bool)

(assert (=> b!463901 m!735199))

(assert (=> b!463901 m!735195))

(declare-fun m!735201 () Bool)

(assert (=> b!463901 m!735201))

(declare-fun m!735203 () Bool)

(assert (=> b!463901 m!735203))

(assert (=> b!463901 m!730547))

(declare-fun m!735205 () Bool)

(assert (=> b!463901 m!735205))

(declare-fun m!735207 () Bool)

(assert (=> b!463901 m!735207))

(declare-fun m!735209 () Bool)

(assert (=> b!463901 m!735209))

(declare-fun m!735211 () Bool)

(assert (=> b!463901 m!735211))

(declare-fun m!735213 () Bool)

(assert (=> b!463901 m!735213))

(declare-fun m!735215 () Bool)

(assert (=> b!463901 m!735215))

(declare-fun m!735217 () Bool)

(assert (=> b!463901 m!735217))

(declare-fun m!735219 () Bool)

(assert (=> b!463901 m!735219))

(declare-fun m!735221 () Bool)

(assert (=> b!463901 m!735221))

(assert (=> b!463901 m!735183))

(assert (=> b!463901 m!735217))

(declare-fun m!735223 () Bool)

(assert (=> b!463901 m!735223))

(declare-fun m!735225 () Bool)

(assert (=> b!463901 m!735225))

(declare-fun m!735227 () Bool)

(assert (=> b!463901 m!735227))

(declare-fun m!735229 () Bool)

(assert (=> b!463901 m!735229))

(declare-fun m!735231 () Bool)

(assert (=> b!463901 m!735231))

(assert (=> b!463901 m!735221))

(assert (=> b!463901 m!735209))

(declare-fun m!735233 () Bool)

(assert (=> b!463901 m!735233))

(assert (=> b!463901 m!735229))

(declare-fun m!735235 () Bool)

(assert (=> b!463901 m!735235))

(assert (=> b!463901 m!735197))

(declare-fun m!735237 () Bool)

(assert (=> b!463901 m!735237))

(declare-fun m!735239 () Bool)

(assert (=> b!463901 m!735239))

(assert (=> b!463901 m!735233))

(declare-fun m!735241 () Bool)

(assert (=> b!463901 m!735241))

(declare-fun m!735243 () Bool)

(assert (=> b!463901 m!735243))

(declare-fun m!735245 () Bool)

(assert (=> b!463901 m!735245))

(declare-fun m!735247 () Bool)

(assert (=> b!463901 m!735247))

(declare-fun m!735249 () Bool)

(assert (=> b!463901 m!735249))

(assert (=> b!463901 m!735195))

(declare-fun m!735251 () Bool)

(assert (=> b!463901 m!735251))

(assert (=> b!463901 m!735219))

(declare-fun m!735253 () Bool)

(assert (=> b!463901 m!735253))

(assert (=> b!463901 m!735225))

(assert (=> b!463901 m!735245))

(declare-fun m!735255 () Bool)

(assert (=> b!463901 m!735255))

(assert (=> b!463901 m!735221))

(assert (=> b!463901 m!735205))

(assert (=> d!175583 d!176695))

(declare-fun d!176813 () Bool)

(assert (=> d!176813 (= (isDefined!1023 lt!206011) (not (isEmpty!3490 lt!206011)))))

(declare-fun bs!57648 () Bool)

(assert (= bs!57648 d!176813))

(assert (=> bs!57648 m!730281))

(assert (=> b!461570 d!176813))

(declare-fun b!463909 () Bool)

(declare-fun e!284229 () List!4503)

(declare-fun e!284230 () List!4503)

(assert (=> b!463909 (= e!284229 e!284230)))

(declare-fun c!93441 () Bool)

(assert (=> b!463909 (= c!93441 ((_ is Leaf!2349) (c!92854 lt!205918)))))

(declare-fun b!463908 () Bool)

(assert (=> b!463908 (= e!284229 Nil!4493)))

(declare-fun b!463910 () Bool)

(assert (=> b!463910 (= e!284230 (list!2011 (xs!4203 (c!92854 lt!205918))))))

(declare-fun d!176815 () Bool)

(declare-fun c!93440 () Bool)

(assert (=> d!176815 (= c!93440 ((_ is Empty!1572) (c!92854 lt!205918)))))

(assert (=> d!176815 (= (list!2009 (c!92854 lt!205918)) e!284229)))

(declare-fun b!463911 () Bool)

(assert (=> b!463911 (= e!284230 (++!1312 (list!2009 (left!3800 (c!92854 lt!205918))) (list!2009 (right!4130 (c!92854 lt!205918)))))))

(assert (= (and d!176815 c!93440) b!463908))

(assert (= (and d!176815 (not c!93440)) b!463909))

(assert (= (and b!463909 c!93441) b!463910))

(assert (= (and b!463909 (not c!93441)) b!463911))

(declare-fun m!735257 () Bool)

(assert (=> b!463910 m!735257))

(declare-fun m!735259 () Bool)

(assert (=> b!463911 m!735259))

(declare-fun m!735261 () Bool)

(assert (=> b!463911 m!735261))

(assert (=> b!463911 m!735259))

(assert (=> b!463911 m!735261))

(declare-fun m!735263 () Bool)

(assert (=> b!463911 m!735263))

(assert (=> d!175633 d!176815))

(declare-fun d!176817 () Bool)

(declare-fun lt!207389 () Int)

(assert (=> d!176817 (>= lt!207389 0)))

(declare-fun e!284231 () Int)

(assert (=> d!176817 (= lt!207389 e!284231)))

(declare-fun c!93442 () Bool)

(assert (=> d!176817 (= c!93442 ((_ is Nil!4493) lt!206333))))

(assert (=> d!176817 (= (size!3674 lt!206333) lt!207389)))

(declare-fun b!463912 () Bool)

(assert (=> b!463912 (= e!284231 0)))

(declare-fun b!463913 () Bool)

(assert (=> b!463913 (= e!284231 (+ 1 (size!3674 (t!71883 lt!206333))))))

(assert (= (and d!176817 c!93442) b!463912))

(assert (= (and d!176817 (not c!93442)) b!463913))

(declare-fun m!735265 () Bool)

(assert (=> b!463913 m!735265))

(assert (=> b!462143 d!176817))

(assert (=> b!462143 d!176129))

(declare-fun d!176819 () Bool)

(declare-fun lt!207390 () Int)

(assert (=> d!176819 (>= lt!207390 0)))

(declare-fun e!284232 () Int)

(assert (=> d!176819 (= lt!207390 e!284232)))

(declare-fun c!93443 () Bool)

(assert (=> d!176819 (= c!93443 ((_ is Nil!4493) lt!205896))))

(assert (=> d!176819 (= (size!3674 lt!205896) lt!207390)))

(declare-fun b!463914 () Bool)

(assert (=> b!463914 (= e!284232 0)))

(declare-fun b!463915 () Bool)

(assert (=> b!463915 (= e!284232 (+ 1 (size!3674 (t!71883 lt!205896))))))

(assert (= (and d!176819 c!93443) b!463914))

(assert (= (and d!176819 (not c!93443)) b!463915))

(assert (=> b!463915 m!732489))

(assert (=> b!462143 d!176819))

(declare-fun d!176821 () Bool)

(declare-fun lt!207391 () Int)

(assert (=> d!176821 (>= lt!207391 0)))

(declare-fun e!284233 () Int)

(assert (=> d!176821 (= lt!207391 e!284233)))

(declare-fun c!93444 () Bool)

(assert (=> d!176821 (= c!93444 ((_ is Nil!4493) (originalCharacters!918 separatorToken!170)))))

(assert (=> d!176821 (= (size!3674 (originalCharacters!918 separatorToken!170)) lt!207391)))

(declare-fun b!463916 () Bool)

(assert (=> b!463916 (= e!284233 0)))

(declare-fun b!463917 () Bool)

(assert (=> b!463917 (= e!284233 (+ 1 (size!3674 (t!71883 (originalCharacters!918 separatorToken!170)))))))

(assert (= (and d!176821 c!93444) b!463916))

(assert (= (and d!176821 (not c!93444)) b!463917))

(declare-fun m!735267 () Bool)

(assert (=> b!463917 m!735267))

(assert (=> b!461791 d!176821))

(assert (=> b!461622 d!176687))

(declare-fun lt!207392 () BalanceConc!3152)

(declare-fun d!176823 () Bool)

(assert (=> d!176823 (= (list!2004 lt!207392) (originalCharacters!918 (ite c!92975 call!32050 call!32053)))))

(assert (=> d!176823 (= lt!207392 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (ite c!92975 call!32050 call!32053)))) (value!29253 (ite c!92975 call!32050 call!32053))))))

(assert (=> d!176823 (= (charsOf!518 (ite c!92975 call!32050 call!32053)) lt!207392)))

(declare-fun b_lambda!19323 () Bool)

(assert (=> (not b_lambda!19323) (not d!176823)))

(declare-fun t!72233 () Bool)

(declare-fun tb!46391 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92975 call!32050 call!32053))))) t!72233) tb!46391))

(declare-fun tp!127916 () Bool)

(declare-fun e!284234 () Bool)

(declare-fun b!463918 () Bool)

(assert (=> b!463918 (= e!284234 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (ite c!92975 call!32050 call!32053)))) (value!29253 (ite c!92975 call!32050 call!32053))))) tp!127916))))

(declare-fun result!51080 () Bool)

(assert (=> tb!46391 (= result!51080 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (ite c!92975 call!32050 call!32053)))) (value!29253 (ite c!92975 call!32050 call!32053)))) e!284234))))

(assert (= tb!46391 b!463918))

(declare-fun m!735269 () Bool)

(assert (=> b!463918 m!735269))

(declare-fun m!735271 () Bool)

(assert (=> tb!46391 m!735271))

(assert (=> d!176823 t!72233))

(declare-fun b_and!49833 () Bool)

(assert (= b_and!49789 (and (=> t!72233 result!51080) b_and!49833)))

(declare-fun t!72235 () Bool)

(declare-fun tb!46393 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92975 call!32050 call!32053))))) t!72235) tb!46393))

(declare-fun result!51082 () Bool)

(assert (= result!51082 result!51080))

(assert (=> d!176823 t!72235))

(declare-fun b_and!49835 () Bool)

(assert (= b_and!49793 (and (=> t!72235 result!51082) b_and!49835)))

(declare-fun t!72237 () Bool)

(declare-fun tb!46395 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92975 call!32050 call!32053))))) t!72237) tb!46395))

(declare-fun result!51084 () Bool)

(assert (= result!51084 result!51080))

(assert (=> d!176823 t!72237))

(declare-fun b_and!49837 () Bool)

(assert (= b_and!49791 (and (=> t!72237 result!51084) b_and!49837)))

(declare-fun t!72239 () Bool)

(declare-fun tb!46397 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92975 call!32050 call!32053))))) t!72239) tb!46397))

(declare-fun result!51086 () Bool)

(assert (= result!51086 result!51080))

(assert (=> d!176823 t!72239))

(declare-fun b_and!49839 () Bool)

(assert (= b_and!49785 (and (=> t!72239 result!51086) b_and!49839)))

(declare-fun tb!46399 () Bool)

(declare-fun t!72241 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92975 call!32050 call!32053))))) t!72241) tb!46399))

(declare-fun result!51088 () Bool)

(assert (= result!51088 result!51080))

(assert (=> d!176823 t!72241))

(declare-fun b_and!49841 () Bool)

(assert (= b_and!49787 (and (=> t!72241 result!51088) b_and!49841)))

(declare-fun m!735273 () Bool)

(assert (=> d!176823 m!735273))

(declare-fun m!735275 () Bool)

(assert (=> d!176823 m!735275))

(assert (=> bm!32048 d!176823))

(declare-fun bs!57649 () Bool)

(declare-fun d!176825 () Bool)

(assert (= bs!57649 (and d!176825 d!176677)))

(declare-fun lambda!13717 () Int)

(assert (=> bs!57649 (= lambda!13717 lambda!13705)))

(assert (=> d!176825 true))

(declare-fun lt!207395 () Bool)

(assert (=> d!176825 (= lt!207395 (rulesValidInductive!290 thiss!17480 rules!1920))))

(assert (=> d!176825 (= lt!207395 (forall!1313 rules!1920 lambda!13717))))

(assert (=> d!176825 (= (rulesValid!314 thiss!17480 rules!1920) lt!207395)))

(declare-fun bs!57650 () Bool)

(assert (= bs!57650 d!176825))

(assert (=> bs!57650 m!730215))

(declare-fun m!735277 () Bool)

(assert (=> bs!57650 m!735277))

(assert (=> d!175601 d!176825))

(declare-fun d!176827 () Bool)

(assert (=> d!176827 (= (list!2004 e!283162) (list!2009 (c!92854 e!283162)))))

(declare-fun bs!57651 () Bool)

(assert (= bs!57651 d!176827))

(declare-fun m!735279 () Bool)

(assert (=> bs!57651 m!735279))

(assert (=> bm!32067 d!176827))

(declare-fun d!176829 () Bool)

(declare-fun lt!207396 () Int)

(assert (=> d!176829 (>= lt!207396 0)))

(declare-fun e!284235 () Int)

(assert (=> d!176829 (= lt!207396 e!284235)))

(declare-fun c!93445 () Bool)

(assert (=> d!176829 (= c!93445 ((_ is Nil!4493) (_2!2961 (get!1652 lt!205988))))))

(assert (=> d!176829 (= (size!3674 (_2!2961 (get!1652 lt!205988))) lt!207396)))

(declare-fun b!463919 () Bool)

(assert (=> b!463919 (= e!284235 0)))

(declare-fun b!463920 () Bool)

(assert (=> b!463920 (= e!284235 (+ 1 (size!3674 (t!71883 (_2!2961 (get!1652 lt!205988))))))))

(assert (= (and d!176829 c!93445) b!463919))

(assert (= (and d!176829 (not c!93445)) b!463920))

(declare-fun m!735281 () Bool)

(assert (=> b!463920 m!735281))

(assert (=> b!461526 d!176829))

(assert (=> b!461526 d!176063))

(assert (=> b!461526 d!176127))

(declare-fun d!176831 () Bool)

(assert (=> d!176831 (= (list!2004 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465)))) (list!2009 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465))))))))

(declare-fun bs!57652 () Bool)

(assert (= bs!57652 d!176831))

(declare-fun m!735283 () Bool)

(assert (=> bs!57652 m!735283))

(assert (=> b!461671 d!176831))

(declare-fun d!176833 () Bool)

(declare-fun lt!207397 () BalanceConc!3152)

(assert (=> d!176833 (= (list!2004 lt!207397) (printList!435 thiss!17480 (list!2005 (singletonSeq!421 (h!9892 (t!71885 tokens!465))))))))

(assert (=> d!176833 (= lt!207397 (printTailRec!447 thiss!17480 (singletonSeq!421 (h!9892 (t!71885 tokens!465))) 0 (BalanceConc!3153 Empty!1572)))))

(assert (=> d!176833 (= (print!486 thiss!17480 (singletonSeq!421 (h!9892 (t!71885 tokens!465)))) lt!207397)))

(declare-fun bs!57653 () Bool)

(assert (= bs!57653 d!176833))

(declare-fun m!735285 () Bool)

(assert (=> bs!57653 m!735285))

(assert (=> bs!57653 m!731175))

(declare-fun m!735287 () Bool)

(assert (=> bs!57653 m!735287))

(assert (=> bs!57653 m!735287))

(declare-fun m!735289 () Bool)

(assert (=> bs!57653 m!735289))

(assert (=> bs!57653 m!731175))

(assert (=> bs!57653 m!731179))

(assert (=> b!462124 d!176833))

(declare-fun d!176835 () Bool)

(declare-fun e!284236 () Bool)

(assert (=> d!176835 e!284236))

(declare-fun res!206488 () Bool)

(assert (=> d!176835 (=> (not res!206488) (not e!284236))))

(declare-fun lt!207398 () BalanceConc!3154)

(assert (=> d!176835 (= res!206488 (= (list!2005 lt!207398) (Cons!4495 (h!9892 (t!71885 tokens!465)) Nil!4495)))))

(assert (=> d!176835 (= lt!207398 (singleton!201 (h!9892 (t!71885 tokens!465))))))

(assert (=> d!176835 (= (singletonSeq!421 (h!9892 (t!71885 tokens!465))) lt!207398)))

(declare-fun b!463921 () Bool)

(assert (=> b!463921 (= e!284236 (isBalanced!480 (c!92856 lt!207398)))))

(assert (= (and d!176835 res!206488) b!463921))

(declare-fun m!735291 () Bool)

(assert (=> d!176835 m!735291))

(declare-fun m!735293 () Bool)

(assert (=> d!176835 m!735293))

(declare-fun m!735295 () Bool)

(assert (=> b!463921 m!735295))

(assert (=> b!462124 d!176835))

(declare-fun d!176837 () Bool)

(declare-fun lt!207400 () BalanceConc!3152)

(assert (=> d!176837 (= (list!2004 lt!207400) (printListTailRec!216 thiss!17480 (dropList!252 (singletonSeq!421 (h!9892 (t!71885 tokens!465))) 0) (list!2004 (BalanceConc!3153 Empty!1572))))))

(declare-fun e!284237 () BalanceConc!3152)

(assert (=> d!176837 (= lt!207400 e!284237)))

(declare-fun c!93446 () Bool)

(assert (=> d!176837 (= c!93446 (>= 0 (size!3672 (singletonSeq!421 (h!9892 (t!71885 tokens!465))))))))

(declare-fun e!284238 () Bool)

(assert (=> d!176837 e!284238))

(declare-fun res!206489 () Bool)

(assert (=> d!176837 (=> (not res!206489) (not e!284238))))

(assert (=> d!176837 (= res!206489 (>= 0 0))))

(assert (=> d!176837 (= (printTailRec!447 thiss!17480 (singletonSeq!421 (h!9892 (t!71885 tokens!465))) 0 (BalanceConc!3153 Empty!1572)) lt!207400)))

(declare-fun b!463922 () Bool)

(assert (=> b!463922 (= e!284238 (<= 0 (size!3672 (singletonSeq!421 (h!9892 (t!71885 tokens!465))))))))

(declare-fun b!463923 () Bool)

(assert (=> b!463923 (= e!284237 (BalanceConc!3153 Empty!1572))))

(declare-fun b!463924 () Bool)

(assert (=> b!463924 (= e!284237 (printTailRec!447 thiss!17480 (singletonSeq!421 (h!9892 (t!71885 tokens!465))) (+ 0 1) (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (apply!1157 (singletonSeq!421 (h!9892 (t!71885 tokens!465))) 0)))))))

(declare-fun lt!207403 () List!4505)

(assert (=> b!463924 (= lt!207403 (list!2005 (singletonSeq!421 (h!9892 (t!71885 tokens!465)))))))

(declare-fun lt!207401 () Unit!8113)

(assert (=> b!463924 (= lt!207401 (lemmaDropApply!292 lt!207403 0))))

(assert (=> b!463924 (= (head!1132 (drop!321 lt!207403 0)) (apply!1158 lt!207403 0))))

(declare-fun lt!207399 () Unit!8113)

(assert (=> b!463924 (= lt!207399 lt!207401)))

(declare-fun lt!207405 () List!4505)

(assert (=> b!463924 (= lt!207405 (list!2005 (singletonSeq!421 (h!9892 (t!71885 tokens!465)))))))

(declare-fun lt!207404 () Unit!8113)

(assert (=> b!463924 (= lt!207404 (lemmaDropTail!284 lt!207405 0))))

(assert (=> b!463924 (= (tail!654 (drop!321 lt!207405 0)) (drop!321 lt!207405 (+ 0 1)))))

(declare-fun lt!207402 () Unit!8113)

(assert (=> b!463924 (= lt!207402 lt!207404)))

(assert (= (and d!176837 res!206489) b!463922))

(assert (= (and d!176837 c!93446) b!463923))

(assert (= (and d!176837 (not c!93446)) b!463924))

(assert (=> d!176837 m!730547))

(declare-fun m!735297 () Bool)

(assert (=> d!176837 m!735297))

(assert (=> d!176837 m!730547))

(declare-fun m!735299 () Bool)

(assert (=> d!176837 m!735299))

(assert (=> d!176837 m!731175))

(assert (=> d!176837 m!735297))

(declare-fun m!735301 () Bool)

(assert (=> d!176837 m!735301))

(assert (=> d!176837 m!731175))

(declare-fun m!735303 () Bool)

(assert (=> d!176837 m!735303))

(assert (=> b!463922 m!731175))

(assert (=> b!463922 m!735303))

(declare-fun m!735305 () Bool)

(assert (=> b!463924 m!735305))

(assert (=> b!463924 m!731175))

(declare-fun m!735307 () Bool)

(assert (=> b!463924 m!735307))

(declare-fun m!735309 () Bool)

(assert (=> b!463924 m!735309))

(declare-fun m!735311 () Bool)

(assert (=> b!463924 m!735311))

(declare-fun m!735313 () Bool)

(assert (=> b!463924 m!735313))

(declare-fun m!735315 () Bool)

(assert (=> b!463924 m!735315))

(declare-fun m!735317 () Bool)

(assert (=> b!463924 m!735317))

(assert (=> b!463924 m!731175))

(assert (=> b!463924 m!735287))

(assert (=> b!463924 m!735315))

(declare-fun m!735319 () Bool)

(assert (=> b!463924 m!735319))

(declare-fun m!735321 () Bool)

(assert (=> b!463924 m!735321))

(declare-fun m!735323 () Bool)

(assert (=> b!463924 m!735323))

(assert (=> b!463924 m!735317))

(declare-fun m!735325 () Bool)

(assert (=> b!463924 m!735325))

(assert (=> b!463924 m!731175))

(assert (=> b!463924 m!735323))

(declare-fun m!735327 () Bool)

(assert (=> b!463924 m!735327))

(assert (=> b!463924 m!735307))

(assert (=> b!463924 m!735321))

(assert (=> b!462124 d!176837))

(declare-fun e!284243 () Bool)

(declare-fun b!463934 () Bool)

(declare-fun lt!207443 () Token!1494)

(declare-datatypes ((Option!1187 0))(
  ( (None!1186) (Some!1186 (v!15567 Rule!1550)) )
))
(declare-fun get!1656 (Option!1187) Rule!1550)

(declare-fun getRuleFromTag!212 (LexerInterface!761 List!4504 String!5565) Option!1187)

(assert (=> b!463934 (= e!284243 (= (rule!1570 lt!207443) (get!1656 (getRuleFromTag!212 thiss!17480 rules!1920 (tag!1135 (rule!1570 lt!207443))))))))

(declare-fun b!463933 () Bool)

(declare-fun res!206495 () Bool)

(assert (=> b!463933 (=> (not res!206495) (not e!284243))))

(assert (=> b!463933 (= res!206495 (matchR!417 (regex!875 (get!1656 (getRuleFromTag!212 thiss!17480 rules!1920 (tag!1135 (rule!1570 lt!207443))))) (list!2004 (charsOf!518 lt!207443))))))

(declare-fun d!176839 () Bool)

(assert (=> d!176839 (isDefined!1023 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 call!32073 lt!206310)))))

(declare-fun lt!207454 () Unit!8113)

(declare-fun e!284244 () Unit!8113)

(assert (=> d!176839 (= lt!207454 e!284244)))

(declare-fun c!93449 () Bool)

(assert (=> d!176839 (= c!93449 (isEmpty!3490 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 call!32073 lt!206310))))))

(declare-fun lt!207449 () Unit!8113)

(declare-fun lt!207448 () Unit!8113)

(assert (=> d!176839 (= lt!207449 lt!207448)))

(assert (=> d!176839 e!284243))

(declare-fun res!206494 () Bool)

(assert (=> d!176839 (=> (not res!206494) (not e!284243))))

(declare-fun isDefined!1026 (Option!1187) Bool)

(assert (=> d!176839 (= res!206494 (isDefined!1026 (getRuleFromTag!212 thiss!17480 rules!1920 (tag!1135 (rule!1570 lt!207443)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!212 (LexerInterface!761 List!4504 List!4503 Token!1494) Unit!8113)

(assert (=> d!176839 (= lt!207448 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!212 thiss!17480 rules!1920 call!32073 lt!207443))))

(declare-fun lt!207456 () Unit!8113)

(declare-fun lt!207442 () Unit!8113)

(assert (=> d!176839 (= lt!207456 lt!207442)))

(declare-fun lt!207446 () List!4503)

(assert (=> d!176839 (isPrefix!527 lt!207446 (++!1312 call!32073 lt!206310))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!98 (List!4503 List!4503 List!4503) Unit!8113)

(assert (=> d!176839 (= lt!207442 (lemmaPrefixStaysPrefixWhenAddingToSuffix!98 lt!207446 call!32073 lt!206310))))

(assert (=> d!176839 (= lt!207446 (list!2004 (charsOf!518 lt!207443)))))

(declare-fun lt!207440 () Unit!8113)

(declare-fun lt!207441 () Unit!8113)

(assert (=> d!176839 (= lt!207440 lt!207441)))

(declare-fun lt!207452 () List!4503)

(declare-fun lt!207447 () List!4503)

(assert (=> d!176839 (isPrefix!527 lt!207452 (++!1312 lt!207452 lt!207447))))

(assert (=> d!176839 (= lt!207441 (lemmaConcatTwoListThenFirstIsPrefix!412 lt!207452 lt!207447))))

(assert (=> d!176839 (= lt!207447 (_2!2961 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 call!32073))))))

(assert (=> d!176839 (= lt!207452 (list!2004 (charsOf!518 lt!207443)))))

(assert (=> d!176839 (= lt!207443 (head!1132 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 call!32073))))))))

(assert (=> d!176839 (not (isEmpty!3482 rules!1920))))

(assert (=> d!176839 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 call!32073 lt!206310) lt!207454)))

(declare-fun b!463935 () Bool)

(declare-fun Unit!8151 () Unit!8113)

(assert (=> b!463935 (= e!284244 Unit!8151)))

(declare-fun lt!207450 () List!4503)

(assert (=> b!463935 (= lt!207450 (++!1312 call!32073 lt!206310))))

(declare-fun lt!207453 () Unit!8113)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!98 (LexerInterface!761 Rule!1550 List!4504 List!4503) Unit!8113)

(assert (=> b!463935 (= lt!207453 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!98 thiss!17480 (rule!1570 lt!207443) rules!1920 lt!207450))))

(assert (=> b!463935 (isEmpty!3490 (maxPrefixOneRule!229 thiss!17480 (rule!1570 lt!207443) lt!207450))))

(declare-fun lt!207455 () Unit!8113)

(assert (=> b!463935 (= lt!207455 lt!207453)))

(declare-fun lt!207445 () List!4503)

(assert (=> b!463935 (= lt!207445 (list!2004 (charsOf!518 lt!207443)))))

(declare-fun lt!207451 () Unit!8113)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!98 (LexerInterface!761 Rule!1550 List!4503 List!4503) Unit!8113)

(assert (=> b!463935 (= lt!207451 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!98 thiss!17480 (rule!1570 lt!207443) lt!207445 (++!1312 call!32073 lt!206310)))))

(assert (=> b!463935 (not (matchR!417 (regex!875 (rule!1570 lt!207443)) lt!207445))))

(declare-fun lt!207444 () Unit!8113)

(assert (=> b!463935 (= lt!207444 lt!207451)))

(assert (=> b!463935 false))

(declare-fun b!463936 () Bool)

(declare-fun Unit!8152 () Unit!8113)

(assert (=> b!463936 (= e!284244 Unit!8152)))

(assert (= (and d!176839 res!206494) b!463933))

(assert (= (and b!463933 res!206495) b!463934))

(assert (= (and d!176839 c!93449) b!463935))

(assert (= (and d!176839 (not c!93449)) b!463936))

(declare-fun m!735329 () Bool)

(assert (=> b!463934 m!735329))

(assert (=> b!463934 m!735329))

(declare-fun m!735331 () Bool)

(assert (=> b!463934 m!735331))

(declare-fun m!735333 () Bool)

(assert (=> b!463933 m!735333))

(declare-fun m!735335 () Bool)

(assert (=> b!463933 m!735335))

(assert (=> b!463933 m!735335))

(declare-fun m!735337 () Bool)

(assert (=> b!463933 m!735337))

(assert (=> b!463933 m!735329))

(assert (=> b!463933 m!735329))

(assert (=> b!463933 m!735331))

(assert (=> b!463933 m!735333))

(declare-fun m!735339 () Bool)

(assert (=> d!176839 m!735339))

(declare-fun m!735341 () Bool)

(assert (=> d!176839 m!735341))

(assert (=> d!176839 m!735339))

(declare-fun m!735343 () Bool)

(assert (=> d!176839 m!735343))

(declare-fun m!735345 () Bool)

(assert (=> d!176839 m!735345))

(declare-fun m!735347 () Bool)

(assert (=> d!176839 m!735347))

(declare-fun m!735349 () Bool)

(assert (=> d!176839 m!735349))

(assert (=> d!176839 m!735333))

(assert (=> d!176839 m!735335))

(assert (=> d!176839 m!735347))

(declare-fun m!735351 () Bool)

(assert (=> d!176839 m!735351))

(declare-fun m!735353 () Bool)

(assert (=> d!176839 m!735353))

(assert (=> d!176839 m!735329))

(declare-fun m!735355 () Bool)

(assert (=> d!176839 m!735355))

(assert (=> d!176839 m!735329))

(declare-fun m!735357 () Bool)

(assert (=> d!176839 m!735357))

(declare-fun m!735359 () Bool)

(assert (=> d!176839 m!735359))

(assert (=> d!176839 m!735345))

(declare-fun m!735361 () Bool)

(assert (=> d!176839 m!735361))

(assert (=> d!176839 m!735339))

(assert (=> d!176839 m!735351))

(assert (=> d!176839 m!735333))

(declare-fun m!735363 () Bool)

(assert (=> d!176839 m!735363))

(assert (=> d!176839 m!735363))

(declare-fun m!735365 () Bool)

(assert (=> d!176839 m!735365))

(declare-fun m!735367 () Bool)

(assert (=> d!176839 m!735367))

(assert (=> d!176839 m!735351))

(declare-fun m!735369 () Bool)

(assert (=> d!176839 m!735369))

(assert (=> d!176839 m!735357))

(declare-fun m!735371 () Bool)

(assert (=> d!176839 m!735371))

(assert (=> d!176839 m!729821))

(assert (=> b!463935 m!735333))

(assert (=> b!463935 m!735335))

(assert (=> b!463935 m!735339))

(declare-fun m!735373 () Bool)

(assert (=> b!463935 m!735373))

(assert (=> b!463935 m!735333))

(assert (=> b!463935 m!735339))

(declare-fun m!735375 () Bool)

(assert (=> b!463935 m!735375))

(declare-fun m!735377 () Bool)

(assert (=> b!463935 m!735377))

(declare-fun m!735379 () Bool)

(assert (=> b!463935 m!735379))

(assert (=> b!463935 m!735379))

(declare-fun m!735381 () Bool)

(assert (=> b!463935 m!735381))

(assert (=> b!462124 d!176839))

(declare-fun d!176841 () Bool)

(declare-fun lt!207457 () Int)

(assert (=> d!176841 (= lt!207457 (size!3674 (list!2004 (_2!2963 lt!205957))))))

(assert (=> d!176841 (= lt!207457 (size!3678 (c!92854 (_2!2963 lt!205957))))))

(assert (=> d!176841 (= (size!3673 (_2!2963 lt!205957)) lt!207457)))

(declare-fun bs!57654 () Bool)

(assert (= bs!57654 d!176841))

(assert (=> bs!57654 m!730127))

(assert (=> bs!57654 m!730127))

(declare-fun m!735383 () Bool)

(assert (=> bs!57654 m!735383))

(declare-fun m!735385 () Bool)

(assert (=> bs!57654 m!735385))

(assert (=> b!461433 d!176841))

(declare-fun d!176843 () Bool)

(declare-fun lt!207458 () Int)

(assert (=> d!176843 (= lt!207458 (size!3674 (list!2004 lt!205910)))))

(assert (=> d!176843 (= lt!207458 (size!3678 (c!92854 lt!205910)))))

(assert (=> d!176843 (= (size!3673 lt!205910) lt!207458)))

(declare-fun bs!57655 () Bool)

(assert (= bs!57655 d!176843))

(assert (=> bs!57655 m!729945))

(assert (=> bs!57655 m!729945))

(assert (=> bs!57655 m!732925))

(declare-fun m!735387 () Bool)

(assert (=> bs!57655 m!735387))

(assert (=> b!461433 d!176843))

(assert (=> b!461624 d!176687))

(declare-fun b!463940 () Bool)

(declare-fun lt!207459 () List!4503)

(declare-fun e!284246 () Bool)

(assert (=> b!463940 (= e!284246 (or (not (= (printList!435 thiss!17480 (t!71885 (Cons!4495 (h!9892 tokens!465) Nil!4495))) Nil!4493)) (= lt!207459 (list!2004 (charsOf!518 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))))))

(declare-fun b!463937 () Bool)

(declare-fun e!284245 () List!4503)

(assert (=> b!463937 (= e!284245 (printList!435 thiss!17480 (t!71885 (Cons!4495 (h!9892 tokens!465) Nil!4495))))))

(declare-fun b!463939 () Bool)

(declare-fun res!206497 () Bool)

(assert (=> b!463939 (=> (not res!206497) (not e!284246))))

(assert (=> b!463939 (= res!206497 (= (size!3674 lt!207459) (+ (size!3674 (list!2004 (charsOf!518 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495))))) (size!3674 (printList!435 thiss!17480 (t!71885 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))))))

(declare-fun d!176845 () Bool)

(assert (=> d!176845 e!284246))

(declare-fun res!206496 () Bool)

(assert (=> d!176845 (=> (not res!206496) (not e!284246))))

(assert (=> d!176845 (= res!206496 (= (content!752 lt!207459) ((_ map or) (content!752 (list!2004 (charsOf!518 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495))))) (content!752 (printList!435 thiss!17480 (t!71885 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))))))

(assert (=> d!176845 (= lt!207459 e!284245)))

(declare-fun c!93450 () Bool)

(assert (=> d!176845 (= c!93450 ((_ is Nil!4493) (list!2004 (charsOf!518 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495))))))))

(assert (=> d!176845 (= (++!1312 (list!2004 (charsOf!518 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))) (printList!435 thiss!17480 (t!71885 (Cons!4495 (h!9892 tokens!465) Nil!4495)))) lt!207459)))

(declare-fun b!463938 () Bool)

(assert (=> b!463938 (= e!284245 (Cons!4493 (h!9890 (list!2004 (charsOf!518 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495))))) (++!1312 (t!71883 (list!2004 (charsOf!518 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495))))) (printList!435 thiss!17480 (t!71885 (Cons!4495 (h!9892 tokens!465) Nil!4495))))))))

(assert (= (and d!176845 c!93450) b!463937))

(assert (= (and d!176845 (not c!93450)) b!463938))

(assert (= (and d!176845 res!206496) b!463939))

(assert (= (and b!463939 res!206497) b!463940))

(declare-fun m!735389 () Bool)

(assert (=> b!463939 m!735389))

(assert (=> b!463939 m!730597))

(declare-fun m!735391 () Bool)

(assert (=> b!463939 m!735391))

(assert (=> b!463939 m!730599))

(declare-fun m!735393 () Bool)

(assert (=> b!463939 m!735393))

(declare-fun m!735395 () Bool)

(assert (=> d!176845 m!735395))

(assert (=> d!176845 m!730597))

(declare-fun m!735397 () Bool)

(assert (=> d!176845 m!735397))

(assert (=> d!176845 m!730599))

(declare-fun m!735399 () Bool)

(assert (=> d!176845 m!735399))

(assert (=> b!463938 m!730599))

(declare-fun m!735401 () Bool)

(assert (=> b!463938 m!735401))

(assert (=> b!461787 d!176845))

(declare-fun d!176847 () Bool)

(assert (=> d!176847 (= (list!2004 (charsOf!518 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))) (list!2009 (c!92854 (charsOf!518 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495))))))))

(declare-fun bs!57656 () Bool)

(assert (= bs!57656 d!176847))

(declare-fun m!735403 () Bool)

(assert (=> bs!57656 m!735403))

(assert (=> b!461787 d!176847))

(declare-fun d!176849 () Bool)

(declare-fun lt!207460 () BalanceConc!3152)

(assert (=> d!176849 (= (list!2004 lt!207460) (originalCharacters!918 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495))))))

(assert (=> d!176849 (= lt!207460 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495))))) (value!29253 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))))

(assert (=> d!176849 (= (charsOf!518 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495))) lt!207460)))

(declare-fun b_lambda!19325 () Bool)

(assert (=> (not b_lambda!19325) (not d!176849)))

(declare-fun t!72243 () Bool)

(declare-fun tb!46401 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))) t!72243) tb!46401))

(declare-fun b!463941 () Bool)

(declare-fun e!284247 () Bool)

(declare-fun tp!127917 () Bool)

(assert (=> b!463941 (= e!284247 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495))))) (value!29253 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))) tp!127917))))

(declare-fun result!51090 () Bool)

(assert (=> tb!46401 (= result!51090 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495))))) (value!29253 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495))))) e!284247))))

(assert (= tb!46401 b!463941))

(declare-fun m!735405 () Bool)

(assert (=> b!463941 m!735405))

(declare-fun m!735407 () Bool)

(assert (=> tb!46401 m!735407))

(assert (=> d!176849 t!72243))

(declare-fun b_and!49843 () Bool)

(assert (= b_and!49839 (and (=> t!72243 result!51090) b_and!49843)))

(declare-fun t!72245 () Bool)

(declare-fun tb!46403 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))) t!72245) tb!46403))

(declare-fun result!51092 () Bool)

(assert (= result!51092 result!51090))

(assert (=> d!176849 t!72245))

(declare-fun b_and!49845 () Bool)

(assert (= b_and!49837 (and (=> t!72245 result!51092) b_and!49845)))

(declare-fun t!72247 () Bool)

(declare-fun tb!46405 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))) t!72247) tb!46405))

(declare-fun result!51094 () Bool)

(assert (= result!51094 result!51090))

(assert (=> d!176849 t!72247))

(declare-fun b_and!49847 () Bool)

(assert (= b_and!49835 (and (=> t!72247 result!51094) b_and!49847)))

(declare-fun t!72249 () Bool)

(declare-fun tb!46407 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))) t!72249) tb!46407))

(declare-fun result!51096 () Bool)

(assert (= result!51096 result!51090))

(assert (=> d!176849 t!72249))

(declare-fun b_and!49849 () Bool)

(assert (= b_and!49841 (and (=> t!72249 result!51096) b_and!49849)))

(declare-fun t!72251 () Bool)

(declare-fun tb!46409 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))) t!72251) tb!46409))

(declare-fun result!51098 () Bool)

(assert (= result!51098 result!51090))

(assert (=> d!176849 t!72251))

(declare-fun b_and!49851 () Bool)

(assert (= b_and!49833 (and (=> t!72251 result!51098) b_and!49851)))

(declare-fun m!735409 () Bool)

(assert (=> d!176849 m!735409))

(declare-fun m!735411 () Bool)

(assert (=> d!176849 m!735411))

(assert (=> b!461787 d!176849))

(declare-fun d!176851 () Bool)

(declare-fun c!93451 () Bool)

(assert (=> d!176851 (= c!93451 ((_ is Cons!4495) (t!71885 (Cons!4495 (h!9892 tokens!465) Nil!4495))))))

(declare-fun e!284248 () List!4503)

(assert (=> d!176851 (= (printList!435 thiss!17480 (t!71885 (Cons!4495 (h!9892 tokens!465) Nil!4495))) e!284248)))

(declare-fun b!463942 () Bool)

(assert (=> b!463942 (= e!284248 (++!1312 (list!2004 (charsOf!518 (h!9892 (t!71885 (Cons!4495 (h!9892 tokens!465) Nil!4495))))) (printList!435 thiss!17480 (t!71885 (t!71885 (Cons!4495 (h!9892 tokens!465) Nil!4495))))))))

(declare-fun b!463943 () Bool)

(assert (=> b!463943 (= e!284248 Nil!4493)))

(assert (= (and d!176851 c!93451) b!463942))

(assert (= (and d!176851 (not c!93451)) b!463943))

(declare-fun m!735413 () Bool)

(assert (=> b!463942 m!735413))

(assert (=> b!463942 m!735413))

(declare-fun m!735415 () Bool)

(assert (=> b!463942 m!735415))

(declare-fun m!735417 () Bool)

(assert (=> b!463942 m!735417))

(assert (=> b!463942 m!735415))

(assert (=> b!463942 m!735417))

(declare-fun m!735419 () Bool)

(assert (=> b!463942 m!735419))

(assert (=> b!461787 d!176851))

(declare-fun b!463952 () Bool)

(declare-fun e!284255 () Bool)

(declare-fun e!284256 () Bool)

(assert (=> b!463952 (= e!284255 e!284256)))

(declare-fun res!206503 () Bool)

(assert (=> b!463952 (= res!206503 (not ((_ is Cons!4494) rules!1920)))))

(assert (=> b!463952 (=> res!206503 e!284256)))

(declare-fun bm!32194 () Bool)

(declare-fun call!32199 () Bool)

(assert (=> bm!32194 (= call!32199 (ruleDisjointCharsFromAllFromOtherType!206 (h!9891 rules!1920) (t!71884 rules!1920)))))

(declare-fun b!463953 () Bool)

(assert (=> b!463953 (= e!284256 call!32199)))

(declare-fun d!176853 () Bool)

(declare-fun c!93454 () Bool)

(assert (=> d!176853 (= c!93454 (and ((_ is Cons!4494) rules!1920) (not (= (isSeparator!875 (h!9891 rules!1920)) (isSeparator!875 (h!9891 rules!1920))))))))

(assert (=> d!176853 (= (ruleDisjointCharsFromAllFromOtherType!206 (h!9891 rules!1920) rules!1920) e!284255)))

(declare-fun b!463954 () Bool)

(declare-fun e!284257 () Bool)

(assert (=> b!463954 (= e!284255 e!284257)))

(declare-fun res!206502 () Bool)

(declare-fun rulesUseDisjointChars!104 (Rule!1550 Rule!1550) Bool)

(assert (=> b!463954 (= res!206502 (rulesUseDisjointChars!104 (h!9891 rules!1920) (h!9891 rules!1920)))))

(assert (=> b!463954 (=> (not res!206502) (not e!284257))))

(declare-fun b!463955 () Bool)

(assert (=> b!463955 (= e!284257 call!32199)))

(assert (= (and d!176853 c!93454) b!463954))

(assert (= (and d!176853 (not c!93454)) b!463952))

(assert (= (and b!463954 res!206502) b!463955))

(assert (= (and b!463952 (not res!206503)) b!463953))

(assert (= (or b!463955 b!463953) bm!32194))

(declare-fun m!735421 () Bool)

(assert (=> bm!32194 m!735421))

(declare-fun m!735423 () Bool)

(assert (=> b!463954 m!735423))

(assert (=> b!461682 d!176853))

(declare-fun d!176855 () Bool)

(assert (=> d!176855 (= (isDefined!1023 lt!205988) (not (isEmpty!3490 lt!205988)))))

(declare-fun bs!57657 () Bool)

(assert (= bs!57657 d!176855))

(assert (=> bs!57657 m!730209))

(assert (=> b!461520 d!176855))

(declare-fun d!176857 () Bool)

(declare-fun e!284258 () Bool)

(assert (=> d!176857 e!284258))

(declare-fun res!206504 () Bool)

(assert (=> d!176857 (=> (not res!206504) (not e!284258))))

(declare-fun lt!207461 () BalanceConc!3154)

(assert (=> d!176857 (= res!206504 (= (list!2005 lt!207461) (Cons!4495 call!32082 Nil!4495)))))

(assert (=> d!176857 (= lt!207461 (singleton!201 call!32082))))

(assert (=> d!176857 (= (singletonSeq!421 call!32082) lt!207461)))

(declare-fun b!463956 () Bool)

(assert (=> b!463956 (= e!284258 (isBalanced!480 (c!92856 lt!207461)))))

(assert (= (and d!176857 res!206504) b!463956))

(declare-fun m!735425 () Bool)

(assert (=> d!176857 m!735425))

(declare-fun m!735427 () Bool)

(assert (=> d!176857 m!735427))

(declare-fun m!735429 () Bool)

(assert (=> b!463956 m!735429))

(assert (=> b!462137 d!176857))

(declare-fun b!463958 () Bool)

(declare-fun lt!207465 () Token!1494)

(declare-fun e!284259 () Bool)

(assert (=> b!463958 (= e!284259 (= (rule!1570 lt!207465) (get!1656 (getRuleFromTag!212 thiss!17480 rules!1920 (tag!1135 (rule!1570 lt!207465))))))))

(declare-fun b!463957 () Bool)

(declare-fun res!206506 () Bool)

(assert (=> b!463957 (=> (not res!206506) (not e!284259))))

(assert (=> b!463957 (= res!206506 (matchR!417 (regex!875 (get!1656 (getRuleFromTag!212 thiss!17480 rules!1920 (tag!1135 (rule!1570 lt!207465))))) (list!2004 (charsOf!518 lt!207465))))))

(declare-fun d!176859 () Bool)

(assert (=> d!176859 (isDefined!1023 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 (list!2004 call!32078) (list!2004 lt!206317))))))

(declare-fun lt!207476 () Unit!8113)

(declare-fun e!284260 () Unit!8113)

(assert (=> d!176859 (= lt!207476 e!284260)))

(declare-fun c!93455 () Bool)

(assert (=> d!176859 (= c!93455 (isEmpty!3490 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 (list!2004 call!32078) (list!2004 lt!206317)))))))

(declare-fun lt!207471 () Unit!8113)

(declare-fun lt!207470 () Unit!8113)

(assert (=> d!176859 (= lt!207471 lt!207470)))

(assert (=> d!176859 e!284259))

(declare-fun res!206505 () Bool)

(assert (=> d!176859 (=> (not res!206505) (not e!284259))))

(assert (=> d!176859 (= res!206505 (isDefined!1026 (getRuleFromTag!212 thiss!17480 rules!1920 (tag!1135 (rule!1570 lt!207465)))))))

(assert (=> d!176859 (= lt!207470 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!212 thiss!17480 rules!1920 (list!2004 call!32078) lt!207465))))

(declare-fun lt!207478 () Unit!8113)

(declare-fun lt!207464 () Unit!8113)

(assert (=> d!176859 (= lt!207478 lt!207464)))

(declare-fun lt!207468 () List!4503)

(assert (=> d!176859 (isPrefix!527 lt!207468 (++!1312 (list!2004 call!32078) (list!2004 lt!206317)))))

(assert (=> d!176859 (= lt!207464 (lemmaPrefixStaysPrefixWhenAddingToSuffix!98 lt!207468 (list!2004 call!32078) (list!2004 lt!206317)))))

(assert (=> d!176859 (= lt!207468 (list!2004 (charsOf!518 lt!207465)))))

(declare-fun lt!207462 () Unit!8113)

(declare-fun lt!207463 () Unit!8113)

(assert (=> d!176859 (= lt!207462 lt!207463)))

(declare-fun lt!207474 () List!4503)

(declare-fun lt!207469 () List!4503)

(assert (=> d!176859 (isPrefix!527 lt!207474 (++!1312 lt!207474 lt!207469))))

(assert (=> d!176859 (= lt!207463 (lemmaConcatTwoListThenFirstIsPrefix!412 lt!207474 lt!207469))))

(assert (=> d!176859 (= lt!207469 (_2!2961 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 call!32078)))))))

(assert (=> d!176859 (= lt!207474 (list!2004 (charsOf!518 lt!207465)))))

(assert (=> d!176859 (= lt!207465 (head!1132 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 (list!2004 call!32078)))))))))

(assert (=> d!176859 (not (isEmpty!3482 rules!1920))))

(assert (=> d!176859 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 (list!2004 call!32078) (list!2004 lt!206317)) lt!207476)))

(declare-fun b!463959 () Bool)

(declare-fun Unit!8155 () Unit!8113)

(assert (=> b!463959 (= e!284260 Unit!8155)))

(declare-fun lt!207472 () List!4503)

(assert (=> b!463959 (= lt!207472 (++!1312 (list!2004 call!32078) (list!2004 lt!206317)))))

(declare-fun lt!207475 () Unit!8113)

(assert (=> b!463959 (= lt!207475 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!98 thiss!17480 (rule!1570 lt!207465) rules!1920 lt!207472))))

(assert (=> b!463959 (isEmpty!3490 (maxPrefixOneRule!229 thiss!17480 (rule!1570 lt!207465) lt!207472))))

(declare-fun lt!207477 () Unit!8113)

(assert (=> b!463959 (= lt!207477 lt!207475)))

(declare-fun lt!207467 () List!4503)

(assert (=> b!463959 (= lt!207467 (list!2004 (charsOf!518 lt!207465)))))

(declare-fun lt!207473 () Unit!8113)

(assert (=> b!463959 (= lt!207473 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!98 thiss!17480 (rule!1570 lt!207465) lt!207467 (++!1312 (list!2004 call!32078) (list!2004 lt!206317))))))

(assert (=> b!463959 (not (matchR!417 (regex!875 (rule!1570 lt!207465)) lt!207467))))

(declare-fun lt!207466 () Unit!8113)

(assert (=> b!463959 (= lt!207466 lt!207473)))

(assert (=> b!463959 false))

(declare-fun b!463960 () Bool)

(declare-fun Unit!8156 () Unit!8113)

(assert (=> b!463960 (= e!284260 Unit!8156)))

(assert (= (and d!176859 res!206505) b!463957))

(assert (= (and b!463957 res!206506) b!463958))

(assert (= (and d!176859 c!93455) b!463959))

(assert (= (and d!176859 (not c!93455)) b!463960))

(declare-fun m!735431 () Bool)

(assert (=> b!463958 m!735431))

(assert (=> b!463958 m!735431))

(declare-fun m!735433 () Bool)

(assert (=> b!463958 m!735433))

(declare-fun m!735435 () Bool)

(assert (=> b!463957 m!735435))

(declare-fun m!735437 () Bool)

(assert (=> b!463957 m!735437))

(assert (=> b!463957 m!735437))

(declare-fun m!735439 () Bool)

(assert (=> b!463957 m!735439))

(assert (=> b!463957 m!735431))

(assert (=> b!463957 m!735431))

(assert (=> b!463957 m!735433))

(assert (=> b!463957 m!735435))

(declare-fun m!735441 () Bool)

(assert (=> d!176859 m!735441))

(declare-fun m!735443 () Bool)

(assert (=> d!176859 m!735443))

(assert (=> d!176859 m!731231))

(assert (=> d!176859 m!731233))

(assert (=> d!176859 m!735441))

(assert (=> d!176859 m!731231))

(assert (=> d!176859 m!731233))

(declare-fun m!735445 () Bool)

(assert (=> d!176859 m!735445))

(declare-fun m!735447 () Bool)

(assert (=> d!176859 m!735447))

(declare-fun m!735449 () Bool)

(assert (=> d!176859 m!735449))

(declare-fun m!735451 () Bool)

(assert (=> d!176859 m!735451))

(assert (=> d!176859 m!735435))

(assert (=> d!176859 m!735437))

(assert (=> d!176859 m!731231))

(assert (=> d!176859 m!735449))

(declare-fun m!735453 () Bool)

(assert (=> d!176859 m!735453))

(declare-fun m!735455 () Bool)

(assert (=> d!176859 m!735455))

(assert (=> d!176859 m!735431))

(declare-fun m!735457 () Bool)

(assert (=> d!176859 m!735457))

(assert (=> d!176859 m!735431))

(declare-fun m!735459 () Bool)

(assert (=> d!176859 m!735459))

(declare-fun m!735461 () Bool)

(assert (=> d!176859 m!735461))

(assert (=> d!176859 m!735447))

(declare-fun m!735463 () Bool)

(assert (=> d!176859 m!735463))

(assert (=> d!176859 m!735441))

(assert (=> d!176859 m!735453))

(assert (=> d!176859 m!735435))

(assert (=> d!176859 m!731231))

(declare-fun m!735465 () Bool)

(assert (=> d!176859 m!735465))

(assert (=> d!176859 m!735465))

(declare-fun m!735467 () Bool)

(assert (=> d!176859 m!735467))

(assert (=> d!176859 m!731231))

(declare-fun m!735469 () Bool)

(assert (=> d!176859 m!735469))

(assert (=> d!176859 m!735453))

(declare-fun m!735471 () Bool)

(assert (=> d!176859 m!735471))

(assert (=> d!176859 m!735459))

(declare-fun m!735473 () Bool)

(assert (=> d!176859 m!735473))

(assert (=> d!176859 m!729821))

(assert (=> b!463959 m!735435))

(assert (=> b!463959 m!735437))

(assert (=> b!463959 m!731231))

(assert (=> b!463959 m!731233))

(assert (=> b!463959 m!735441))

(declare-fun m!735475 () Bool)

(assert (=> b!463959 m!735475))

(assert (=> b!463959 m!735435))

(assert (=> b!463959 m!735441))

(declare-fun m!735477 () Bool)

(assert (=> b!463959 m!735477))

(declare-fun m!735479 () Bool)

(assert (=> b!463959 m!735479))

(declare-fun m!735481 () Bool)

(assert (=> b!463959 m!735481))

(assert (=> b!463959 m!735481))

(declare-fun m!735483 () Bool)

(assert (=> b!463959 m!735483))

(assert (=> b!462137 d!176859))

(declare-fun d!176861 () Bool)

(declare-fun lt!207479 () BalanceConc!3152)

(assert (=> d!176861 (= (list!2004 lt!207479) (printList!435 thiss!17480 (list!2005 (singletonSeq!421 call!32082))))))

(assert (=> d!176861 (= lt!207479 (printTailRec!447 thiss!17480 (singletonSeq!421 call!32082) 0 (BalanceConc!3153 Empty!1572)))))

(assert (=> d!176861 (= (print!486 thiss!17480 (singletonSeq!421 call!32082)) lt!207479)))

(declare-fun bs!57658 () Bool)

(assert (= bs!57658 d!176861))

(declare-fun m!735485 () Bool)

(assert (=> bs!57658 m!735485))

(assert (=> bs!57658 m!731237))

(declare-fun m!735487 () Bool)

(assert (=> bs!57658 m!735487))

(assert (=> bs!57658 m!735487))

(declare-fun m!735489 () Bool)

(assert (=> bs!57658 m!735489))

(assert (=> bs!57658 m!731237))

(assert (=> bs!57658 m!731241))

(assert (=> b!462137 d!176861))

(declare-fun d!176863 () Bool)

(declare-fun lt!207481 () BalanceConc!3152)

(assert (=> d!176863 (= (list!2004 lt!207481) (printListTailRec!216 thiss!17480 (dropList!252 (singletonSeq!421 call!32082) 0) (list!2004 (BalanceConc!3153 Empty!1572))))))

(declare-fun e!284261 () BalanceConc!3152)

(assert (=> d!176863 (= lt!207481 e!284261)))

(declare-fun c!93456 () Bool)

(assert (=> d!176863 (= c!93456 (>= 0 (size!3672 (singletonSeq!421 call!32082))))))

(declare-fun e!284262 () Bool)

(assert (=> d!176863 e!284262))

(declare-fun res!206507 () Bool)

(assert (=> d!176863 (=> (not res!206507) (not e!284262))))

(assert (=> d!176863 (= res!206507 (>= 0 0))))

(assert (=> d!176863 (= (printTailRec!447 thiss!17480 (singletonSeq!421 call!32082) 0 (BalanceConc!3153 Empty!1572)) lt!207481)))

(declare-fun b!463961 () Bool)

(assert (=> b!463961 (= e!284262 (<= 0 (size!3672 (singletonSeq!421 call!32082))))))

(declare-fun b!463962 () Bool)

(assert (=> b!463962 (= e!284261 (BalanceConc!3153 Empty!1572))))

(declare-fun b!463963 () Bool)

(assert (=> b!463963 (= e!284261 (printTailRec!447 thiss!17480 (singletonSeq!421 call!32082) (+ 0 1) (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (apply!1157 (singletonSeq!421 call!32082) 0)))))))

(declare-fun lt!207484 () List!4505)

(assert (=> b!463963 (= lt!207484 (list!2005 (singletonSeq!421 call!32082)))))

(declare-fun lt!207482 () Unit!8113)

(assert (=> b!463963 (= lt!207482 (lemmaDropApply!292 lt!207484 0))))

(assert (=> b!463963 (= (head!1132 (drop!321 lt!207484 0)) (apply!1158 lt!207484 0))))

(declare-fun lt!207480 () Unit!8113)

(assert (=> b!463963 (= lt!207480 lt!207482)))

(declare-fun lt!207486 () List!4505)

(assert (=> b!463963 (= lt!207486 (list!2005 (singletonSeq!421 call!32082)))))

(declare-fun lt!207485 () Unit!8113)

(assert (=> b!463963 (= lt!207485 (lemmaDropTail!284 lt!207486 0))))

(assert (=> b!463963 (= (tail!654 (drop!321 lt!207486 0)) (drop!321 lt!207486 (+ 0 1)))))

(declare-fun lt!207483 () Unit!8113)

(assert (=> b!463963 (= lt!207483 lt!207485)))

(assert (= (and d!176863 res!206507) b!463961))

(assert (= (and d!176863 c!93456) b!463962))

(assert (= (and d!176863 (not c!93456)) b!463963))

(assert (=> d!176863 m!730547))

(declare-fun m!735491 () Bool)

(assert (=> d!176863 m!735491))

(assert (=> d!176863 m!730547))

(declare-fun m!735493 () Bool)

(assert (=> d!176863 m!735493))

(assert (=> d!176863 m!731237))

(assert (=> d!176863 m!735491))

(declare-fun m!735495 () Bool)

(assert (=> d!176863 m!735495))

(assert (=> d!176863 m!731237))

(declare-fun m!735497 () Bool)

(assert (=> d!176863 m!735497))

(assert (=> b!463961 m!731237))

(assert (=> b!463961 m!735497))

(declare-fun m!735499 () Bool)

(assert (=> b!463963 m!735499))

(assert (=> b!463963 m!731237))

(declare-fun m!735501 () Bool)

(assert (=> b!463963 m!735501))

(declare-fun m!735503 () Bool)

(assert (=> b!463963 m!735503))

(declare-fun m!735505 () Bool)

(assert (=> b!463963 m!735505))

(declare-fun m!735507 () Bool)

(assert (=> b!463963 m!735507))

(declare-fun m!735509 () Bool)

(assert (=> b!463963 m!735509))

(declare-fun m!735511 () Bool)

(assert (=> b!463963 m!735511))

(assert (=> b!463963 m!731237))

(assert (=> b!463963 m!735487))

(assert (=> b!463963 m!735509))

(declare-fun m!735513 () Bool)

(assert (=> b!463963 m!735513))

(declare-fun m!735515 () Bool)

(assert (=> b!463963 m!735515))

(declare-fun m!735517 () Bool)

(assert (=> b!463963 m!735517))

(assert (=> b!463963 m!735511))

(declare-fun m!735519 () Bool)

(assert (=> b!463963 m!735519))

(assert (=> b!463963 m!731237))

(assert (=> b!463963 m!735517))

(declare-fun m!735521 () Bool)

(assert (=> b!463963 m!735521))

(assert (=> b!463963 m!735501))

(assert (=> b!463963 m!735515))

(assert (=> b!462137 d!176863))

(declare-fun d!176865 () Bool)

(assert (=> d!176865 (= (list!2004 lt!206317) (list!2009 (c!92854 lt!206317)))))

(declare-fun bs!57659 () Bool)

(assert (= bs!57659 d!176865))

(declare-fun m!735523 () Bool)

(assert (=> bs!57659 m!735523))

(assert (=> b!462137 d!176865))

(declare-fun d!176867 () Bool)

(assert (=> d!176867 (= (list!2004 call!32078) (list!2009 (c!92854 call!32078)))))

(declare-fun bs!57660 () Bool)

(assert (= bs!57660 d!176867))

(declare-fun m!735525 () Bool)

(assert (=> bs!57660 m!735525))

(assert (=> b!462137 d!176867))

(declare-fun d!176869 () Bool)

(declare-fun nullableFct!87 (Regex!1099) Bool)

(assert (=> d!176869 (= (nullable!251 (regex!875 (rule!1570 (h!9892 tokens!465)))) (nullableFct!87 (regex!875 (rule!1570 (h!9892 tokens!465)))))))

(declare-fun bs!57661 () Bool)

(assert (= bs!57661 d!176869))

(declare-fun m!735527 () Bool)

(assert (=> bs!57661 m!735527))

(assert (=> b!461720 d!176869))

(declare-fun d!176871 () Bool)

(declare-fun c!93457 () Bool)

(assert (=> d!176871 (= c!93457 ((_ is Nil!4495) lt!205960))))

(declare-fun e!284263 () (InoxSet Token!1494))

(assert (=> d!176871 (= (content!753 lt!205960) e!284263)))

(declare-fun b!463964 () Bool)

(assert (=> b!463964 (= e!284263 ((as const (Array Token!1494 Bool)) false))))

(declare-fun b!463965 () Bool)

(assert (=> b!463965 (= e!284263 ((_ map or) (store ((as const (Array Token!1494 Bool)) false) (h!9892 lt!205960) true) (content!753 (t!71885 lt!205960))))))

(assert (= (and d!176871 c!93457) b!463964))

(assert (= (and d!176871 (not c!93457)) b!463965))

(declare-fun m!735529 () Bool)

(assert (=> b!463965 m!735529))

(declare-fun m!735531 () Bool)

(assert (=> b!463965 m!735531))

(assert (=> b!461452 d!176871))

(declare-fun c!93458 () Bool)

(declare-fun d!176873 () Bool)

(assert (=> d!176873 (= c!93458 ((_ is Nil!4495) (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))))

(declare-fun e!284264 () (InoxSet Token!1494))

(assert (=> d!176873 (= (content!753 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))) e!284264)))

(declare-fun b!463966 () Bool)

(assert (=> b!463966 (= e!284264 ((as const (Array Token!1494 Bool)) false))))

(declare-fun b!463967 () Bool)

(assert (=> b!463967 (= e!284264 ((_ map or) (store ((as const (Array Token!1494 Bool)) false) (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))) true) (content!753 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))))))

(assert (= (and d!176873 c!93458) b!463966))

(assert (= (and d!176873 (not c!93458)) b!463967))

(declare-fun m!735533 () Bool)

(assert (=> b!463967 m!735533))

(assert (=> b!463967 m!733293))

(assert (=> b!461452 d!176873))

(declare-fun d!176875 () Bool)

(assert (=> d!176875 (= (list!2004 lt!206122) (list!2009 (c!92854 lt!206122)))))

(declare-fun bs!57662 () Bool)

(assert (= bs!57662 d!176875))

(declare-fun m!735535 () Bool)

(assert (=> bs!57662 m!735535))

(assert (=> d!175611 d!176875))

(declare-fun d!176877 () Bool)

(declare-fun c!93459 () Bool)

(assert (=> d!176877 (= c!93459 ((_ is Cons!4495) (list!2005 lt!205900)))))

(declare-fun e!284265 () List!4503)

(assert (=> d!176877 (= (printList!435 thiss!17480 (list!2005 lt!205900)) e!284265)))

(declare-fun b!463968 () Bool)

(assert (=> b!463968 (= e!284265 (++!1312 (list!2004 (charsOf!518 (h!9892 (list!2005 lt!205900)))) (printList!435 thiss!17480 (t!71885 (list!2005 lt!205900)))))))

(declare-fun b!463969 () Bool)

(assert (=> b!463969 (= e!284265 Nil!4493)))

(assert (= (and d!176877 c!93459) b!463968))

(assert (= (and d!176877 (not c!93459)) b!463969))

(declare-fun m!735537 () Bool)

(assert (=> b!463968 m!735537))

(assert (=> b!463968 m!735537))

(declare-fun m!735539 () Bool)

(assert (=> b!463968 m!735539))

(declare-fun m!735541 () Bool)

(assert (=> b!463968 m!735541))

(assert (=> b!463968 m!735539))

(assert (=> b!463968 m!735541))

(declare-fun m!735543 () Bool)

(assert (=> b!463968 m!735543))

(assert (=> d!175611 d!176877))

(assert (=> d!175611 d!176177))

(assert (=> d!175611 d!175607))

(declare-fun b!463971 () Bool)

(declare-fun e!284266 () List!4503)

(declare-fun e!284267 () List!4503)

(assert (=> b!463971 (= e!284266 e!284267)))

(declare-fun c!93461 () Bool)

(assert (=> b!463971 (= c!93461 ((_ is Leaf!2349) (c!92854 (charsOf!518 (h!9892 tokens!465)))))))

(declare-fun b!463970 () Bool)

(assert (=> b!463970 (= e!284266 Nil!4493)))

(declare-fun b!463972 () Bool)

(assert (=> b!463972 (= e!284267 (list!2011 (xs!4203 (c!92854 (charsOf!518 (h!9892 tokens!465))))))))

(declare-fun d!176879 () Bool)

(declare-fun c!93460 () Bool)

(assert (=> d!176879 (= c!93460 ((_ is Empty!1572) (c!92854 (charsOf!518 (h!9892 tokens!465)))))))

(assert (=> d!176879 (= (list!2009 (c!92854 (charsOf!518 (h!9892 tokens!465)))) e!284266)))

(declare-fun b!463973 () Bool)

(assert (=> b!463973 (= e!284267 (++!1312 (list!2009 (left!3800 (c!92854 (charsOf!518 (h!9892 tokens!465))))) (list!2009 (right!4130 (c!92854 (charsOf!518 (h!9892 tokens!465)))))))))

(assert (= (and d!176879 c!93460) b!463970))

(assert (= (and d!176879 (not c!93460)) b!463971))

(assert (= (and b!463971 c!93461) b!463972))

(assert (= (and b!463971 (not c!93461)) b!463973))

(declare-fun m!735545 () Bool)

(assert (=> b!463972 m!735545))

(declare-fun m!735547 () Bool)

(assert (=> b!463973 m!735547))

(declare-fun m!735549 () Bool)

(assert (=> b!463973 m!735549))

(assert (=> b!463973 m!735547))

(assert (=> b!463973 m!735549))

(declare-fun m!735551 () Bool)

(assert (=> b!463973 m!735551))

(assert (=> d!175753 d!176879))

(declare-fun e!284273 () List!4505)

(declare-fun b!463984 () Bool)

(declare-fun list!2013 (IArray!3147) List!4505)

(assert (=> b!463984 (= e!284273 (list!2013 (xs!4204 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))))))))

(declare-fun b!463982 () Bool)

(declare-fun e!284272 () List!4505)

(assert (=> b!463982 (= e!284272 Nil!4495)))

(declare-fun b!463985 () Bool)

(assert (=> b!463985 (= e!284273 (++!1318 (list!2007 (left!3801 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918))))) (list!2007 (right!4131 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))))))

(declare-fun d!176881 () Bool)

(declare-fun c!93466 () Bool)

(assert (=> d!176881 (= c!93466 ((_ is Empty!1573) (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))))

(assert (=> d!176881 (= (list!2007 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))) e!284272)))

(declare-fun b!463983 () Bool)

(assert (=> b!463983 (= e!284272 e!284273)))

(declare-fun c!93467 () Bool)

(assert (=> b!463983 (= c!93467 ((_ is Leaf!2350) (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))))

(assert (= (and d!176881 c!93466) b!463982))

(assert (= (and d!176881 (not c!93466)) b!463983))

(assert (= (and b!463983 c!93467) b!463984))

(assert (= (and b!463983 (not c!93467)) b!463985))

(declare-fun m!735553 () Bool)

(assert (=> b!463984 m!735553))

(declare-fun m!735555 () Bool)

(assert (=> b!463985 m!735555))

(declare-fun m!735557 () Bool)

(assert (=> b!463985 m!735557))

(assert (=> b!463985 m!735555))

(assert (=> b!463985 m!735557))

(declare-fun m!735559 () Bool)

(assert (=> b!463985 m!735559))

(assert (=> d!175581 d!176881))

(declare-fun d!176883 () Bool)

(assert (=> d!176883 (= (isEmpty!3483 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 lt!205905))))) ((_ is Nil!4495) (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 lt!205905))))))))

(assert (=> d!175461 d!176883))

(declare-fun d!176885 () Bool)

(assert (=> d!176885 (= (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 lt!205905)))) (list!2007 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 lt!205905))))))))

(declare-fun bs!57663 () Bool)

(assert (= bs!57663 d!176885))

(declare-fun m!735561 () Bool)

(assert (=> bs!57663 m!735561))

(assert (=> d!175461 d!176885))

(declare-fun d!176887 () Bool)

(declare-fun lt!207489 () Bool)

(assert (=> d!176887 (= lt!207489 (isEmpty!3483 (list!2007 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 lt!205905)))))))))

(assert (=> d!176887 (= lt!207489 (= (size!3677 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 lt!205905))))) 0))))

(assert (=> d!176887 (= (isEmpty!3487 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 lt!205905))))) lt!207489)))

(declare-fun bs!57664 () Bool)

(assert (= bs!57664 d!176887))

(assert (=> bs!57664 m!735561))

(assert (=> bs!57664 m!735561))

(declare-fun m!735563 () Bool)

(assert (=> bs!57664 m!735563))

(declare-fun m!735565 () Bool)

(assert (=> bs!57664 m!735565))

(assert (=> d!175461 d!176887))

(assert (=> b!461623 d!176099))

(assert (=> b!461623 d!176251))

(assert (=> b!461623 d!176101))

(assert (=> b!461623 d!176249))

(assert (=> b!461623 d!176105))

(declare-fun d!176889 () Bool)

(declare-fun lt!207490 () Int)

(assert (=> d!176889 (>= lt!207490 0)))

(declare-fun e!284274 () Int)

(assert (=> d!176889 (= lt!207490 e!284274)))

(declare-fun c!93468 () Bool)

(assert (=> d!176889 (= c!93468 ((_ is Nil!4493) (originalCharacters!918 (h!9892 tokens!465))))))

(assert (=> d!176889 (= (size!3674 (originalCharacters!918 (h!9892 tokens!465))) lt!207490)))

(declare-fun b!463986 () Bool)

(assert (=> b!463986 (= e!284274 0)))

(declare-fun b!463987 () Bool)

(assert (=> b!463987 (= e!284274 (+ 1 (size!3674 (t!71883 (originalCharacters!918 (h!9892 tokens!465))))))))

(assert (= (and d!176889 c!93468) b!463986))

(assert (= (and d!176889 (not c!93468)) b!463987))

(declare-fun m!735567 () Bool)

(assert (=> b!463987 m!735567))

(assert (=> b!461672 d!176889))

(declare-fun b!463988 () Bool)

(declare-fun e!284275 () Bool)

(declare-fun e!284277 () Bool)

(assert (=> b!463988 (= e!284275 e!284277)))

(declare-fun res!206508 () Bool)

(assert (=> b!463988 (=> (not res!206508) (not e!284277))))

(declare-fun lt!207495 () Option!1184)

(assert (=> b!463988 (= res!206508 (isDefined!1023 lt!207495))))

(declare-fun b!463989 () Bool)

(declare-fun e!284276 () Option!1184)

(declare-fun lt!207494 () Option!1184)

(declare-fun lt!207492 () Option!1184)

(assert (=> b!463989 (= e!284276 (ite (and ((_ is None!1183) lt!207494) ((_ is None!1183) lt!207492)) None!1183 (ite ((_ is None!1183) lt!207492) lt!207494 (ite ((_ is None!1183) lt!207494) lt!207492 (ite (>= (size!3667 (_1!2961 (v!15532 lt!207494))) (size!3667 (_1!2961 (v!15532 lt!207492)))) lt!207494 lt!207492)))))))

(declare-fun call!32200 () Option!1184)

(assert (=> b!463989 (= lt!207494 call!32200)))

(assert (=> b!463989 (= lt!207492 (maxPrefix!477 thiss!17480 (t!71884 (t!71884 rules!1920)) lt!205905))))

(declare-fun b!463990 () Bool)

(assert (=> b!463990 (= e!284276 call!32200)))

(declare-fun b!463991 () Bool)

(declare-fun res!206509 () Bool)

(assert (=> b!463991 (=> (not res!206509) (not e!284277))))

(assert (=> b!463991 (= res!206509 (matchR!417 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!207495)))) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!207495))))))))

(declare-fun bm!32195 () Bool)

(assert (=> bm!32195 (= call!32200 (maxPrefixOneRule!229 thiss!17480 (h!9891 (t!71884 rules!1920)) lt!205905))))

(declare-fun d!176891 () Bool)

(assert (=> d!176891 e!284275))

(declare-fun res!206513 () Bool)

(assert (=> d!176891 (=> res!206513 e!284275)))

(assert (=> d!176891 (= res!206513 (isEmpty!3490 lt!207495))))

(assert (=> d!176891 (= lt!207495 e!284276)))

(declare-fun c!93469 () Bool)

(assert (=> d!176891 (= c!93469 (and ((_ is Cons!4494) (t!71884 rules!1920)) ((_ is Nil!4494) (t!71884 (t!71884 rules!1920)))))))

(declare-fun lt!207493 () Unit!8113)

(declare-fun lt!207491 () Unit!8113)

(assert (=> d!176891 (= lt!207493 lt!207491)))

(assert (=> d!176891 (isPrefix!527 lt!205905 lt!205905)))

(assert (=> d!176891 (= lt!207491 (lemmaIsPrefixRefl!295 lt!205905 lt!205905))))

(assert (=> d!176891 (rulesValidInductive!290 thiss!17480 (t!71884 rules!1920))))

(assert (=> d!176891 (= (maxPrefix!477 thiss!17480 (t!71884 rules!1920) lt!205905) lt!207495)))

(declare-fun b!463992 () Bool)

(assert (=> b!463992 (= e!284277 (contains!1008 (t!71884 rules!1920) (rule!1570 (_1!2961 (get!1652 lt!207495)))))))

(declare-fun b!463993 () Bool)

(declare-fun res!206511 () Bool)

(assert (=> b!463993 (=> (not res!206511) (not e!284277))))

(assert (=> b!463993 (= res!206511 (= (++!1312 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!207495)))) (_2!2961 (get!1652 lt!207495))) lt!205905))))

(declare-fun b!463994 () Bool)

(declare-fun res!206510 () Bool)

(assert (=> b!463994 (=> (not res!206510) (not e!284277))))

(assert (=> b!463994 (= res!206510 (< (size!3674 (_2!2961 (get!1652 lt!207495))) (size!3674 lt!205905)))))

(declare-fun b!463995 () Bool)

(declare-fun res!206514 () Bool)

(assert (=> b!463995 (=> (not res!206514) (not e!284277))))

(assert (=> b!463995 (= res!206514 (= (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!207495)))) (originalCharacters!918 (_1!2961 (get!1652 lt!207495)))))))

(declare-fun b!463996 () Bool)

(declare-fun res!206512 () Bool)

(assert (=> b!463996 (=> (not res!206512) (not e!284277))))

(assert (=> b!463996 (= res!206512 (= (value!29253 (_1!2961 (get!1652 lt!207495))) (apply!1155 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!207495)))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!207495)))))))))

(assert (= (and d!176891 c!93469) b!463990))

(assert (= (and d!176891 (not c!93469)) b!463989))

(assert (= (or b!463990 b!463989) bm!32195))

(assert (= (and d!176891 (not res!206513)) b!463988))

(assert (= (and b!463988 res!206508) b!463995))

(assert (= (and b!463995 res!206514) b!463994))

(assert (= (and b!463994 res!206510) b!463993))

(assert (= (and b!463993 res!206511) b!463996))

(assert (= (and b!463996 res!206512) b!463991))

(assert (= (and b!463991 res!206509) b!463992))

(declare-fun m!735569 () Bool)

(assert (=> b!463991 m!735569))

(declare-fun m!735571 () Bool)

(assert (=> b!463991 m!735571))

(assert (=> b!463991 m!735571))

(declare-fun m!735573 () Bool)

(assert (=> b!463991 m!735573))

(assert (=> b!463991 m!735573))

(declare-fun m!735575 () Bool)

(assert (=> b!463991 m!735575))

(declare-fun m!735577 () Bool)

(assert (=> b!463988 m!735577))

(declare-fun m!735579 () Bool)

(assert (=> d!176891 m!735579))

(assert (=> d!176891 m!730283))

(assert (=> d!176891 m!730285))

(assert (=> d!176891 m!733181))

(assert (=> b!463995 m!735569))

(assert (=> b!463995 m!735571))

(assert (=> b!463995 m!735571))

(assert (=> b!463995 m!735573))

(assert (=> b!463994 m!735569))

(declare-fun m!735581 () Bool)

(assert (=> b!463994 m!735581))

(assert (=> b!463994 m!730071))

(declare-fun m!735583 () Bool)

(assert (=> bm!32195 m!735583))

(assert (=> b!463992 m!735569))

(declare-fun m!735585 () Bool)

(assert (=> b!463992 m!735585))

(declare-fun m!735587 () Bool)

(assert (=> b!463989 m!735587))

(assert (=> b!463996 m!735569))

(declare-fun m!735589 () Bool)

(assert (=> b!463996 m!735589))

(assert (=> b!463996 m!735589))

(declare-fun m!735591 () Bool)

(assert (=> b!463996 m!735591))

(assert (=> b!463993 m!735569))

(assert (=> b!463993 m!735571))

(assert (=> b!463993 m!735571))

(assert (=> b!463993 m!735573))

(assert (=> b!463993 m!735573))

(declare-fun m!735593 () Bool)

(assert (=> b!463993 m!735593))

(assert (=> b!461571 d!176891))

(declare-fun d!176893 () Bool)

(declare-fun res!206515 () Bool)

(declare-fun e!284278 () Bool)

(assert (=> d!176893 (=> (not res!206515) (not e!284278))))

(assert (=> d!176893 (= res!206515 (not (isEmpty!3484 (originalCharacters!918 (h!9892 (t!71885 tokens!465))))))))

(assert (=> d!176893 (= (inv!5573 (h!9892 (t!71885 tokens!465))) e!284278)))

(declare-fun b!463997 () Bool)

(declare-fun res!206516 () Bool)

(assert (=> b!463997 (=> (not res!206516) (not e!284278))))

(assert (=> b!463997 (= res!206516 (= (originalCharacters!918 (h!9892 (t!71885 tokens!465))) (list!2004 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (value!29253 (h!9892 (t!71885 tokens!465)))))))))

(declare-fun b!463998 () Bool)

(assert (=> b!463998 (= e!284278 (= (size!3667 (h!9892 (t!71885 tokens!465))) (size!3674 (originalCharacters!918 (h!9892 (t!71885 tokens!465))))))))

(assert (= (and d!176893 res!206515) b!463997))

(assert (= (and b!463997 res!206516) b!463998))

(declare-fun b_lambda!19327 () Bool)

(assert (=> (not b_lambda!19327) (not b!463997)))

(assert (=> b!463997 t!72045))

(declare-fun b_and!49853 () Bool)

(assert (= b_and!49849 (and (=> t!72045 result!50890) b_and!49853)))

(assert (=> b!463997 t!72043))

(declare-fun b_and!49855 () Bool)

(assert (= b_and!49845 (and (=> t!72043 result!50888) b_and!49855)))

(assert (=> b!463997 t!72047))

(declare-fun b_and!49857 () Bool)

(assert (= b_and!49843 (and (=> t!72047 result!50892) b_and!49857)))

(assert (=> b!463997 t!72039))

(declare-fun b_and!49859 () Bool)

(assert (= b_and!49847 (and (=> t!72039 result!50884) b_and!49859)))

(assert (=> b!463997 t!72041))

(declare-fun b_and!49861 () Bool)

(assert (= b_and!49851 (and (=> t!72041 result!50886) b_and!49861)))

(declare-fun m!735595 () Bool)

(assert (=> d!176893 m!735595))

(assert (=> b!463997 m!733083))

(assert (=> b!463997 m!733083))

(declare-fun m!735597 () Bool)

(assert (=> b!463997 m!735597))

(declare-fun m!735599 () Bool)

(assert (=> b!463998 m!735599))

(assert (=> b!462205 d!176893))

(declare-fun e!284280 () List!4505)

(declare-fun b!464001 () Bool)

(assert (=> b!464001 (= e!284280 (list!2013 (xs!4204 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))))))))

(declare-fun b!463999 () Bool)

(declare-fun e!284279 () List!4505)

(assert (=> b!463999 (= e!284279 Nil!4495)))

(declare-fun b!464002 () Bool)

(assert (=> b!464002 (= e!284280 (++!1318 (list!2007 (left!3801 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910))))) (list!2007 (right!4131 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))))))

(declare-fun c!93470 () Bool)

(declare-fun d!176895 () Bool)

(assert (=> d!176895 (= c!93470 ((_ is Empty!1573) (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))))

(assert (=> d!176895 (= (list!2007 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))) e!284279)))

(declare-fun b!464000 () Bool)

(assert (=> b!464000 (= e!284279 e!284280)))

(declare-fun c!93471 () Bool)

(assert (=> b!464000 (= c!93471 ((_ is Leaf!2350) (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))))

(assert (= (and d!176895 c!93470) b!463999))

(assert (= (and d!176895 (not c!93470)) b!464000))

(assert (= (and b!464000 c!93471) b!464001))

(assert (= (and b!464000 (not c!93471)) b!464002))

(declare-fun m!735601 () Bool)

(assert (=> b!464001 m!735601))

(declare-fun m!735603 () Bool)

(assert (=> b!464002 m!735603))

(declare-fun m!735605 () Bool)

(assert (=> b!464002 m!735605))

(assert (=> b!464002 m!735603))

(assert (=> b!464002 m!735605))

(declare-fun m!735607 () Bool)

(assert (=> b!464002 m!735607))

(assert (=> d!175505 d!176895))

(declare-fun d!176897 () Bool)

(assert (=> d!176897 (= (inv!17 (value!29253 separatorToken!170)) (= (charsToBigInt!1 (text!6727 (value!29253 separatorToken!170))) (value!29245 (value!29253 separatorToken!170))))))

(declare-fun bs!57665 () Bool)

(assert (= bs!57665 d!176897))

(declare-fun m!735609 () Bool)

(assert (=> bs!57665 m!735609))

(assert (=> b!462111 d!176897))

(assert (=> b!461527 d!176065))

(assert (=> b!461527 d!176067))

(assert (=> b!461527 d!176063))

(declare-fun d!176899 () Bool)

(declare-fun lt!207496 () BalanceConc!3152)

(assert (=> d!176899 (= (list!2004 lt!207496) (printList!435 thiss!17480 (list!2005 (singletonSeq!421 call!32053))))))

(assert (=> d!176899 (= lt!207496 (printTailRec!447 thiss!17480 (singletonSeq!421 call!32053) 0 (BalanceConc!3153 Empty!1572)))))

(assert (=> d!176899 (= (print!486 thiss!17480 (singletonSeq!421 call!32053)) lt!207496)))

(declare-fun bs!57666 () Bool)

(assert (= bs!57666 d!176899))

(declare-fun m!735611 () Bool)

(assert (=> bs!57666 m!735611))

(assert (=> bs!57666 m!730933))

(declare-fun m!735613 () Bool)

(assert (=> bs!57666 m!735613))

(assert (=> bs!57666 m!735613))

(declare-fun m!735615 () Bool)

(assert (=> bs!57666 m!735615))

(assert (=> bs!57666 m!730933))

(assert (=> bs!57666 m!730937))

(assert (=> b!461925 d!176899))

(declare-fun b!464004 () Bool)

(declare-fun lt!207500 () Token!1494)

(declare-fun e!284281 () Bool)

(assert (=> b!464004 (= e!284281 (= (rule!1570 lt!207500) (get!1656 (getRuleFromTag!212 thiss!17480 rules!1920 (tag!1135 (rule!1570 lt!207500))))))))

(declare-fun b!464003 () Bool)

(declare-fun res!206518 () Bool)

(assert (=> b!464003 (=> (not res!206518) (not e!284281))))

(assert (=> b!464003 (= res!206518 (matchR!417 (regex!875 (get!1656 (getRuleFromTag!212 thiss!17480 rules!1920 (tag!1135 (rule!1570 lt!207500))))) (list!2004 (charsOf!518 lt!207500))))))

(declare-fun d!176901 () Bool)

(assert (=> d!176901 (isDefined!1023 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 (list!2004 call!32049) (list!2004 lt!206235))))))

(declare-fun lt!207511 () Unit!8113)

(declare-fun e!284282 () Unit!8113)

(assert (=> d!176901 (= lt!207511 e!284282)))

(declare-fun c!93472 () Bool)

(assert (=> d!176901 (= c!93472 (isEmpty!3490 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 (list!2004 call!32049) (list!2004 lt!206235)))))))

(declare-fun lt!207506 () Unit!8113)

(declare-fun lt!207505 () Unit!8113)

(assert (=> d!176901 (= lt!207506 lt!207505)))

(assert (=> d!176901 e!284281))

(declare-fun res!206517 () Bool)

(assert (=> d!176901 (=> (not res!206517) (not e!284281))))

(assert (=> d!176901 (= res!206517 (isDefined!1026 (getRuleFromTag!212 thiss!17480 rules!1920 (tag!1135 (rule!1570 lt!207500)))))))

(assert (=> d!176901 (= lt!207505 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!212 thiss!17480 rules!1920 (list!2004 call!32049) lt!207500))))

(declare-fun lt!207513 () Unit!8113)

(declare-fun lt!207499 () Unit!8113)

(assert (=> d!176901 (= lt!207513 lt!207499)))

(declare-fun lt!207503 () List!4503)

(assert (=> d!176901 (isPrefix!527 lt!207503 (++!1312 (list!2004 call!32049) (list!2004 lt!206235)))))

(assert (=> d!176901 (= lt!207499 (lemmaPrefixStaysPrefixWhenAddingToSuffix!98 lt!207503 (list!2004 call!32049) (list!2004 lt!206235)))))

(assert (=> d!176901 (= lt!207503 (list!2004 (charsOf!518 lt!207500)))))

(declare-fun lt!207497 () Unit!8113)

(declare-fun lt!207498 () Unit!8113)

(assert (=> d!176901 (= lt!207497 lt!207498)))

(declare-fun lt!207509 () List!4503)

(declare-fun lt!207504 () List!4503)

(assert (=> d!176901 (isPrefix!527 lt!207509 (++!1312 lt!207509 lt!207504))))

(assert (=> d!176901 (= lt!207498 (lemmaConcatTwoListThenFirstIsPrefix!412 lt!207509 lt!207504))))

(assert (=> d!176901 (= lt!207504 (_2!2961 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 call!32049)))))))

(assert (=> d!176901 (= lt!207509 (list!2004 (charsOf!518 lt!207500)))))

(assert (=> d!176901 (= lt!207500 (head!1132 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 (list!2004 call!32049)))))))))

(assert (=> d!176901 (not (isEmpty!3482 rules!1920))))

(assert (=> d!176901 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 (list!2004 call!32049) (list!2004 lt!206235)) lt!207511)))

(declare-fun b!464005 () Bool)

(declare-fun Unit!8159 () Unit!8113)

(assert (=> b!464005 (= e!284282 Unit!8159)))

(declare-fun lt!207507 () List!4503)

(assert (=> b!464005 (= lt!207507 (++!1312 (list!2004 call!32049) (list!2004 lt!206235)))))

(declare-fun lt!207510 () Unit!8113)

(assert (=> b!464005 (= lt!207510 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!98 thiss!17480 (rule!1570 lt!207500) rules!1920 lt!207507))))

(assert (=> b!464005 (isEmpty!3490 (maxPrefixOneRule!229 thiss!17480 (rule!1570 lt!207500) lt!207507))))

(declare-fun lt!207512 () Unit!8113)

(assert (=> b!464005 (= lt!207512 lt!207510)))

(declare-fun lt!207502 () List!4503)

(assert (=> b!464005 (= lt!207502 (list!2004 (charsOf!518 lt!207500)))))

(declare-fun lt!207508 () Unit!8113)

(assert (=> b!464005 (= lt!207508 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!98 thiss!17480 (rule!1570 lt!207500) lt!207502 (++!1312 (list!2004 call!32049) (list!2004 lt!206235))))))

(assert (=> b!464005 (not (matchR!417 (regex!875 (rule!1570 lt!207500)) lt!207502))))

(declare-fun lt!207501 () Unit!8113)

(assert (=> b!464005 (= lt!207501 lt!207508)))

(assert (=> b!464005 false))

(declare-fun b!464006 () Bool)

(declare-fun Unit!8160 () Unit!8113)

(assert (=> b!464006 (= e!284282 Unit!8160)))

(assert (= (and d!176901 res!206517) b!464003))

(assert (= (and b!464003 res!206518) b!464004))

(assert (= (and d!176901 c!93472) b!464005))

(assert (= (and d!176901 (not c!93472)) b!464006))

(declare-fun m!735617 () Bool)

(assert (=> b!464004 m!735617))

(assert (=> b!464004 m!735617))

(declare-fun m!735619 () Bool)

(assert (=> b!464004 m!735619))

(declare-fun m!735621 () Bool)

(assert (=> b!464003 m!735621))

(declare-fun m!735623 () Bool)

(assert (=> b!464003 m!735623))

(assert (=> b!464003 m!735623))

(declare-fun m!735625 () Bool)

(assert (=> b!464003 m!735625))

(assert (=> b!464003 m!735617))

(assert (=> b!464003 m!735617))

(assert (=> b!464003 m!735619))

(assert (=> b!464003 m!735621))

(declare-fun m!735627 () Bool)

(assert (=> d!176901 m!735627))

(declare-fun m!735629 () Bool)

(assert (=> d!176901 m!735629))

(assert (=> d!176901 m!730927))

(assert (=> d!176901 m!730929))

(assert (=> d!176901 m!735627))

(assert (=> d!176901 m!730927))

(assert (=> d!176901 m!730929))

(declare-fun m!735631 () Bool)

(assert (=> d!176901 m!735631))

(declare-fun m!735633 () Bool)

(assert (=> d!176901 m!735633))

(declare-fun m!735635 () Bool)

(assert (=> d!176901 m!735635))

(declare-fun m!735637 () Bool)

(assert (=> d!176901 m!735637))

(assert (=> d!176901 m!735621))

(assert (=> d!176901 m!735623))

(assert (=> d!176901 m!730927))

(assert (=> d!176901 m!735635))

(declare-fun m!735639 () Bool)

(assert (=> d!176901 m!735639))

(declare-fun m!735641 () Bool)

(assert (=> d!176901 m!735641))

(assert (=> d!176901 m!735617))

(declare-fun m!735643 () Bool)

(assert (=> d!176901 m!735643))

(assert (=> d!176901 m!735617))

(declare-fun m!735645 () Bool)

(assert (=> d!176901 m!735645))

(declare-fun m!735647 () Bool)

(assert (=> d!176901 m!735647))

(assert (=> d!176901 m!735633))

(declare-fun m!735649 () Bool)

(assert (=> d!176901 m!735649))

(assert (=> d!176901 m!735627))

(assert (=> d!176901 m!735639))

(assert (=> d!176901 m!735621))

(assert (=> d!176901 m!730927))

(declare-fun m!735651 () Bool)

(assert (=> d!176901 m!735651))

(assert (=> d!176901 m!735651))

(declare-fun m!735653 () Bool)

(assert (=> d!176901 m!735653))

(assert (=> d!176901 m!730927))

(declare-fun m!735655 () Bool)

(assert (=> d!176901 m!735655))

(assert (=> d!176901 m!735639))

(declare-fun m!735657 () Bool)

(assert (=> d!176901 m!735657))

(assert (=> d!176901 m!735645))

(declare-fun m!735659 () Bool)

(assert (=> d!176901 m!735659))

(assert (=> d!176901 m!729821))

(assert (=> b!464005 m!735621))

(assert (=> b!464005 m!735623))

(assert (=> b!464005 m!730927))

(assert (=> b!464005 m!730929))

(assert (=> b!464005 m!735627))

(declare-fun m!735661 () Bool)

(assert (=> b!464005 m!735661))

(assert (=> b!464005 m!735621))

(assert (=> b!464005 m!735627))

(declare-fun m!735663 () Bool)

(assert (=> b!464005 m!735663))

(declare-fun m!735665 () Bool)

(assert (=> b!464005 m!735665))

(declare-fun m!735667 () Bool)

(assert (=> b!464005 m!735667))

(assert (=> b!464005 m!735667))

(declare-fun m!735669 () Bool)

(assert (=> b!464005 m!735669))

(assert (=> b!461925 d!176901))

(declare-fun d!176903 () Bool)

(declare-fun lt!207515 () BalanceConc!3152)

(assert (=> d!176903 (= (list!2004 lt!207515) (printListTailRec!216 thiss!17480 (dropList!252 (singletonSeq!421 call!32053) 0) (list!2004 (BalanceConc!3153 Empty!1572))))))

(declare-fun e!284283 () BalanceConc!3152)

(assert (=> d!176903 (= lt!207515 e!284283)))

(declare-fun c!93473 () Bool)

(assert (=> d!176903 (= c!93473 (>= 0 (size!3672 (singletonSeq!421 call!32053))))))

(declare-fun e!284284 () Bool)

(assert (=> d!176903 e!284284))

(declare-fun res!206519 () Bool)

(assert (=> d!176903 (=> (not res!206519) (not e!284284))))

(assert (=> d!176903 (= res!206519 (>= 0 0))))

(assert (=> d!176903 (= (printTailRec!447 thiss!17480 (singletonSeq!421 call!32053) 0 (BalanceConc!3153 Empty!1572)) lt!207515)))

(declare-fun b!464007 () Bool)

(assert (=> b!464007 (= e!284284 (<= 0 (size!3672 (singletonSeq!421 call!32053))))))

(declare-fun b!464008 () Bool)

(assert (=> b!464008 (= e!284283 (BalanceConc!3153 Empty!1572))))

(declare-fun b!464009 () Bool)

(assert (=> b!464009 (= e!284283 (printTailRec!447 thiss!17480 (singletonSeq!421 call!32053) (+ 0 1) (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (apply!1157 (singletonSeq!421 call!32053) 0)))))))

(declare-fun lt!207518 () List!4505)

(assert (=> b!464009 (= lt!207518 (list!2005 (singletonSeq!421 call!32053)))))

(declare-fun lt!207516 () Unit!8113)

(assert (=> b!464009 (= lt!207516 (lemmaDropApply!292 lt!207518 0))))

(assert (=> b!464009 (= (head!1132 (drop!321 lt!207518 0)) (apply!1158 lt!207518 0))))

(declare-fun lt!207514 () Unit!8113)

(assert (=> b!464009 (= lt!207514 lt!207516)))

(declare-fun lt!207520 () List!4505)

(assert (=> b!464009 (= lt!207520 (list!2005 (singletonSeq!421 call!32053)))))

(declare-fun lt!207519 () Unit!8113)

(assert (=> b!464009 (= lt!207519 (lemmaDropTail!284 lt!207520 0))))

(assert (=> b!464009 (= (tail!654 (drop!321 lt!207520 0)) (drop!321 lt!207520 (+ 0 1)))))

(declare-fun lt!207517 () Unit!8113)

(assert (=> b!464009 (= lt!207517 lt!207519)))

(assert (= (and d!176903 res!206519) b!464007))

(assert (= (and d!176903 c!93473) b!464008))

(assert (= (and d!176903 (not c!93473)) b!464009))

(assert (=> d!176903 m!730547))

(declare-fun m!735671 () Bool)

(assert (=> d!176903 m!735671))

(assert (=> d!176903 m!730547))

(declare-fun m!735673 () Bool)

(assert (=> d!176903 m!735673))

(assert (=> d!176903 m!730933))

(assert (=> d!176903 m!735671))

(declare-fun m!735675 () Bool)

(assert (=> d!176903 m!735675))

(assert (=> d!176903 m!730933))

(declare-fun m!735677 () Bool)

(assert (=> d!176903 m!735677))

(assert (=> b!464007 m!730933))

(assert (=> b!464007 m!735677))

(declare-fun m!735679 () Bool)

(assert (=> b!464009 m!735679))

(assert (=> b!464009 m!730933))

(declare-fun m!735681 () Bool)

(assert (=> b!464009 m!735681))

(declare-fun m!735683 () Bool)

(assert (=> b!464009 m!735683))

(declare-fun m!735685 () Bool)

(assert (=> b!464009 m!735685))

(declare-fun m!735687 () Bool)

(assert (=> b!464009 m!735687))

(declare-fun m!735689 () Bool)

(assert (=> b!464009 m!735689))

(declare-fun m!735691 () Bool)

(assert (=> b!464009 m!735691))

(assert (=> b!464009 m!730933))

(assert (=> b!464009 m!735613))

(assert (=> b!464009 m!735689))

(declare-fun m!735693 () Bool)

(assert (=> b!464009 m!735693))

(declare-fun m!735695 () Bool)

(assert (=> b!464009 m!735695))

(declare-fun m!735697 () Bool)

(assert (=> b!464009 m!735697))

(assert (=> b!464009 m!735691))

(declare-fun m!735699 () Bool)

(assert (=> b!464009 m!735699))

(assert (=> b!464009 m!730933))

(assert (=> b!464009 m!735697))

(declare-fun m!735701 () Bool)

(assert (=> b!464009 m!735701))

(assert (=> b!464009 m!735681))

(assert (=> b!464009 m!735695))

(assert (=> b!461925 d!176903))

(declare-fun d!176905 () Bool)

(assert (=> d!176905 (= (list!2004 lt!206235) (list!2009 (c!92854 lt!206235)))))

(declare-fun bs!57667 () Bool)

(assert (= bs!57667 d!176905))

(declare-fun m!735703 () Bool)

(assert (=> bs!57667 m!735703))

(assert (=> b!461925 d!176905))

(declare-fun d!176907 () Bool)

(assert (=> d!176907 (= (list!2004 call!32049) (list!2009 (c!92854 call!32049)))))

(declare-fun bs!57668 () Bool)

(assert (= bs!57668 d!176907))

(declare-fun m!735705 () Bool)

(assert (=> bs!57668 m!735705))

(assert (=> b!461925 d!176907))

(declare-fun d!176909 () Bool)

(declare-fun e!284285 () Bool)

(assert (=> d!176909 e!284285))

(declare-fun res!206520 () Bool)

(assert (=> d!176909 (=> (not res!206520) (not e!284285))))

(declare-fun lt!207521 () BalanceConc!3154)

(assert (=> d!176909 (= res!206520 (= (list!2005 lt!207521) (Cons!4495 call!32053 Nil!4495)))))

(assert (=> d!176909 (= lt!207521 (singleton!201 call!32053))))

(assert (=> d!176909 (= (singletonSeq!421 call!32053) lt!207521)))

(declare-fun b!464010 () Bool)

(assert (=> b!464010 (= e!284285 (isBalanced!480 (c!92856 lt!207521)))))

(assert (= (and d!176909 res!206520) b!464010))

(declare-fun m!735707 () Bool)

(assert (=> d!176909 m!735707))

(declare-fun m!735709 () Bool)

(assert (=> d!176909 m!735709))

(declare-fun m!735711 () Bool)

(assert (=> b!464010 m!735711))

(assert (=> b!461925 d!176909))

(declare-fun d!176911 () Bool)

(assert (=> d!176911 (= (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465)))) (isBalanced!483 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465))))))))

(declare-fun bs!57669 () Bool)

(assert (= bs!57669 d!176911))

(declare-fun m!735713 () Bool)

(assert (=> bs!57669 m!735713))

(assert (=> tb!46087 d!176911))

(declare-fun d!176913 () Bool)

(assert (=> d!176913 (= (get!1652 (maxPrefix!477 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170))) (v!15532 (maxPrefix!477 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(assert (=> b!461491 d!176913))

(assert (=> b!461491 d!176119))

(assert (=> b!461491 d!175677))

(assert (=> b!461491 d!175503))

(declare-fun d!176915 () Bool)

(declare-fun lt!207522 () Int)

(assert (=> d!176915 (>= lt!207522 0)))

(declare-fun e!284286 () Int)

(assert (=> d!176915 (= lt!207522 e!284286)))

(declare-fun c!93474 () Bool)

(assert (=> d!176915 (= c!93474 ((_ is Nil!4493) lt!206335))))

(assert (=> d!176915 (= (size!3674 lt!206335) lt!207522)))

(declare-fun b!464011 () Bool)

(assert (=> b!464011 (= e!284286 0)))

(declare-fun b!464012 () Bool)

(assert (=> b!464012 (= e!284286 (+ 1 (size!3674 (t!71883 lt!206335))))))

(assert (= (and d!176915 c!93474) b!464011))

(assert (= (and d!176915 (not c!93474)) b!464012))

(declare-fun m!735715 () Bool)

(assert (=> b!464012 m!735715))

(assert (=> b!462151 d!176915))

(assert (=> b!462151 d!176819))

(assert (=> b!462151 d!176171))

(assert (=> b!462123 d!175747))

(declare-fun d!176917 () Bool)

(assert (=> d!176917 (= (isEmpty!3490 lt!206011) (not ((_ is Some!1183) lt!206011)))))

(assert (=> d!175553 d!176917))

(declare-fun d!176919 () Bool)

(declare-fun e!284288 () Bool)

(assert (=> d!176919 e!284288))

(declare-fun res!206523 () Bool)

(assert (=> d!176919 (=> res!206523 e!284288)))

(declare-fun lt!207523 () Bool)

(assert (=> d!176919 (= res!206523 (not lt!207523))))

(declare-fun e!284287 () Bool)

(assert (=> d!176919 (= lt!207523 e!284287)))

(declare-fun res!206522 () Bool)

(assert (=> d!176919 (=> res!206522 e!284287)))

(assert (=> d!176919 (= res!206522 ((_ is Nil!4493) lt!205905))))

(assert (=> d!176919 (= (isPrefix!527 lt!205905 lt!205905) lt!207523)))

(declare-fun b!464014 () Bool)

(declare-fun res!206521 () Bool)

(declare-fun e!284289 () Bool)

(assert (=> b!464014 (=> (not res!206521) (not e!284289))))

(assert (=> b!464014 (= res!206521 (= (head!1134 lt!205905) (head!1134 lt!205905)))))

(declare-fun b!464013 () Bool)

(assert (=> b!464013 (= e!284287 e!284289)))

(declare-fun res!206524 () Bool)

(assert (=> b!464013 (=> (not res!206524) (not e!284289))))

(assert (=> b!464013 (= res!206524 (not ((_ is Nil!4493) lt!205905)))))

(declare-fun b!464016 () Bool)

(assert (=> b!464016 (= e!284288 (>= (size!3674 lt!205905) (size!3674 lt!205905)))))

(declare-fun b!464015 () Bool)

(assert (=> b!464015 (= e!284289 (isPrefix!527 (tail!652 lt!205905) (tail!652 lt!205905)))))

(assert (= (and d!176919 (not res!206522)) b!464013))

(assert (= (and b!464013 res!206524) b!464014))

(assert (= (and b!464014 res!206521) b!464015))

(assert (= (and d!176919 (not res!206523)) b!464016))

(assert (=> b!464014 m!730243))

(assert (=> b!464014 m!730243))

(assert (=> b!464016 m!730071))

(assert (=> b!464016 m!730071))

(assert (=> b!464015 m!730249))

(assert (=> b!464015 m!730249))

(assert (=> b!464015 m!730249))

(assert (=> b!464015 m!730249))

(declare-fun m!735717 () Bool)

(assert (=> b!464015 m!735717))

(assert (=> d!175553 d!176919))

(declare-fun d!176921 () Bool)

(assert (=> d!176921 (isPrefix!527 lt!205905 lt!205905)))

(declare-fun lt!207524 () Unit!8113)

(assert (=> d!176921 (= lt!207524 (choose!3483 lt!205905 lt!205905))))

(assert (=> d!176921 (= (lemmaIsPrefixRefl!295 lt!205905 lt!205905) lt!207524)))

(declare-fun bs!57670 () Bool)

(assert (= bs!57670 d!176921))

(assert (=> bs!57670 m!730283))

(declare-fun m!735719 () Bool)

(assert (=> bs!57670 m!735719))

(assert (=> d!175553 d!176921))

(assert (=> d!175553 d!176677))

(declare-fun d!176923 () Bool)

(declare-fun lt!207525 () Bool)

(assert (=> d!176923 (= lt!207525 (isEmpty!3483 (list!2005 (_1!2963 lt!205957))))))

(assert (=> d!176923 (= lt!207525 (isEmpty!3487 (c!92856 (_1!2963 lt!205957))))))

(assert (=> d!176923 (= (isEmpty!3485 (_1!2963 lt!205957)) lt!207525)))

(declare-fun bs!57671 () Bool)

(assert (= bs!57671 d!176923))

(assert (=> bs!57671 m!730113))

(assert (=> bs!57671 m!730113))

(declare-fun m!735721 () Bool)

(assert (=> bs!57671 m!735721))

(declare-fun m!735723 () Bool)

(assert (=> bs!57671 m!735723))

(assert (=> b!461430 d!176923))

(declare-fun d!176925 () Bool)

(assert (=> d!176925 (= (isEmpty!3490 lt!205908) (not ((_ is Some!1183) lt!205908)))))

(assert (=> d!175623 d!176925))

(declare-fun d!176927 () Bool)

(declare-fun e!284291 () Bool)

(assert (=> d!176927 e!284291))

(declare-fun res!206527 () Bool)

(assert (=> d!176927 (=> res!206527 e!284291)))

(declare-fun lt!207526 () Bool)

(assert (=> d!176927 (= res!206527 (not lt!207526))))

(declare-fun e!284290 () Bool)

(assert (=> d!176927 (= lt!207526 e!284290)))

(declare-fun res!206526 () Bool)

(assert (=> d!176927 (=> res!206526 e!284290)))

(assert (=> d!176927 (= res!206526 ((_ is Nil!4493) (tail!652 lt!205905)))))

(assert (=> d!176927 (= (isPrefix!527 (tail!652 lt!205905) (tail!652 lt!205895)) lt!207526)))

(declare-fun b!464018 () Bool)

(declare-fun res!206525 () Bool)

(declare-fun e!284292 () Bool)

(assert (=> b!464018 (=> (not res!206525) (not e!284292))))

(assert (=> b!464018 (= res!206525 (= (head!1134 (tail!652 lt!205905)) (head!1134 (tail!652 lt!205895))))))

(declare-fun b!464017 () Bool)

(assert (=> b!464017 (= e!284290 e!284292)))

(declare-fun res!206528 () Bool)

(assert (=> b!464017 (=> (not res!206528) (not e!284292))))

(assert (=> b!464017 (= res!206528 (not ((_ is Nil!4493) (tail!652 lt!205895))))))

(declare-fun b!464020 () Bool)

(assert (=> b!464020 (= e!284291 (>= (size!3674 (tail!652 lt!205895)) (size!3674 (tail!652 lt!205905))))))

(declare-fun b!464019 () Bool)

(assert (=> b!464019 (= e!284292 (isPrefix!527 (tail!652 (tail!652 lt!205905)) (tail!652 (tail!652 lt!205895))))))

(assert (= (and d!176927 (not res!206526)) b!464017))

(assert (= (and b!464017 res!206528) b!464018))

(assert (= (and b!464018 res!206525) b!464019))

(assert (= (and d!176927 (not res!206527)) b!464020))

(assert (=> b!464018 m!730249))

(assert (=> b!464018 m!732325))

(assert (=> b!464018 m!730251))

(declare-fun m!735725 () Bool)

(assert (=> b!464018 m!735725))

(assert (=> b!464020 m!730251))

(declare-fun m!735727 () Bool)

(assert (=> b!464020 m!735727))

(assert (=> b!464020 m!730249))

(assert (=> b!464020 m!732331))

(assert (=> b!464019 m!730249))

(assert (=> b!464019 m!732333))

(assert (=> b!464019 m!730251))

(declare-fun m!735729 () Bool)

(assert (=> b!464019 m!735729))

(assert (=> b!464019 m!732333))

(assert (=> b!464019 m!735729))

(declare-fun m!735731 () Bool)

(assert (=> b!464019 m!735731))

(assert (=> b!461543 d!176927))

(assert (=> b!461543 d!176053))

(declare-fun d!176929 () Bool)

(assert (=> d!176929 (= (tail!652 lt!205895) (t!71883 lt!205895))))

(assert (=> b!461543 d!176929))

(declare-fun d!176931 () Bool)

(declare-fun lt!207527 () Int)

(assert (=> d!176931 (= lt!207527 (size!3675 (list!2005 (seqFromList!1116 (t!71885 tokens!465)))))))

(assert (=> d!176931 (= lt!207527 (size!3677 (c!92856 (seqFromList!1116 (t!71885 tokens!465)))))))

(assert (=> d!176931 (= (size!3672 (seqFromList!1116 (t!71885 tokens!465))) lt!207527)))

(declare-fun bs!57672 () Bool)

(assert (= bs!57672 d!176931))

(assert (=> bs!57672 m!729933))

(assert (=> bs!57672 m!731197))

(assert (=> bs!57672 m!731197))

(declare-fun m!735733 () Bool)

(assert (=> bs!57672 m!735733))

(declare-fun m!735735 () Bool)

(assert (=> bs!57672 m!735735))

(assert (=> b!462135 d!176931))

(declare-fun d!176933 () Bool)

(declare-fun lt!207528 () Int)

(assert (=> d!176933 (>= lt!207528 0)))

(declare-fun e!284293 () Int)

(assert (=> d!176933 (= lt!207528 e!284293)))

(declare-fun c!93475 () Bool)

(assert (=> d!176933 (= c!93475 ((_ is Nil!4493) (_2!2961 (get!1652 lt!206011))))))

(assert (=> d!176933 (= (size!3674 (_2!2961 (get!1652 lt!206011))) lt!207528)))

(declare-fun b!464021 () Bool)

(assert (=> b!464021 (= e!284293 0)))

(declare-fun b!464022 () Bool)

(assert (=> b!464022 (= e!284293 (+ 1 (size!3674 (t!71883 (_2!2961 (get!1652 lt!206011))))))))

(assert (= (and d!176933 c!93475) b!464021))

(assert (= (and d!176933 (not c!93475)) b!464022))

(declare-fun m!735737 () Bool)

(assert (=> b!464022 m!735737))

(assert (=> b!461576 d!176933))

(assert (=> b!461576 d!176029))

(assert (=> b!461576 d!176129))

(declare-fun b!464026 () Bool)

(declare-fun lt!207529 () List!4503)

(declare-fun e!284295 () Bool)

(assert (=> b!464026 (= e!284295 (or (not (= lt!206300 Nil!4493)) (= lt!207529 call!32069)))))

(declare-fun b!464023 () Bool)

(declare-fun e!284294 () List!4503)

(assert (=> b!464023 (= e!284294 lt!206300)))

(declare-fun b!464025 () Bool)

(declare-fun res!206530 () Bool)

(assert (=> b!464025 (=> (not res!206530) (not e!284295))))

(assert (=> b!464025 (= res!206530 (= (size!3674 lt!207529) (+ (size!3674 call!32069) (size!3674 lt!206300))))))

(declare-fun d!176935 () Bool)

(assert (=> d!176935 e!284295))

(declare-fun res!206529 () Bool)

(assert (=> d!176935 (=> (not res!206529) (not e!284295))))

(assert (=> d!176935 (= res!206529 (= (content!752 lt!207529) ((_ map or) (content!752 call!32069) (content!752 lt!206300))))))

(assert (=> d!176935 (= lt!207529 e!284294)))

(declare-fun c!93476 () Bool)

(assert (=> d!176935 (= c!93476 ((_ is Nil!4493) call!32069))))

(assert (=> d!176935 (= (++!1312 call!32069 lt!206300) lt!207529)))

(declare-fun b!464024 () Bool)

(assert (=> b!464024 (= e!284294 (Cons!4493 (h!9890 call!32069) (++!1312 (t!71883 call!32069) lt!206300)))))

(assert (= (and d!176935 c!93476) b!464023))

(assert (= (and d!176935 (not c!93476)) b!464024))

(assert (= (and d!176935 res!206529) b!464025))

(assert (= (and b!464025 res!206530) b!464026))

(declare-fun m!735739 () Bool)

(assert (=> b!464025 m!735739))

(declare-fun m!735741 () Bool)

(assert (=> b!464025 m!735741))

(declare-fun m!735743 () Bool)

(assert (=> b!464025 m!735743))

(declare-fun m!735745 () Bool)

(assert (=> d!176935 m!735745))

(declare-fun m!735747 () Bool)

(assert (=> d!176935 m!735747))

(declare-fun m!735749 () Bool)

(assert (=> d!176935 m!735749))

(declare-fun m!735751 () Bool)

(assert (=> b!464024 m!735751))

(assert (=> b!462099 d!176935))

(assert (=> b!461917 d!176455))

(declare-fun bs!57673 () Bool)

(declare-fun b!464034 () Bool)

(assert (= bs!57673 (and b!464034 b!461290)))

(declare-fun lambda!13718 () Int)

(assert (=> bs!57673 (not (= lambda!13718 lambda!13617))))

(declare-fun bs!57674 () Bool)

(assert (= bs!57674 (and b!464034 b!462105)))

(assert (=> bs!57674 (= lambda!13718 lambda!13655)))

(declare-fun bs!57675 () Bool)

(assert (= bs!57675 (and b!464034 b!462542)))

(assert (=> bs!57675 (= lambda!13718 lambda!13668)))

(declare-fun bs!57676 () Bool)

(assert (= bs!57676 (and b!464034 b!462992)))

(assert (=> bs!57676 (= lambda!13718 lambda!13688)))

(declare-fun bs!57677 () Bool)

(assert (= bs!57677 (and b!464034 b!462130)))

(assert (=> bs!57677 (= lambda!13718 lambda!13658)))

(declare-fun bs!57678 () Bool)

(assert (= bs!57678 (and b!464034 d!175507)))

(assert (=> bs!57678 (not (= lambda!13718 lambda!13634))))

(declare-fun bs!57679 () Bool)

(assert (= bs!57679 (and b!464034 b!461918)))

(assert (=> bs!57679 (= lambda!13718 lambda!13652)))

(declare-fun bs!57680 () Bool)

(assert (= bs!57680 (and b!464034 b!462125)))

(assert (=> bs!57680 (= lambda!13718 lambda!13656)))

(declare-fun bs!57681 () Bool)

(assert (= bs!57681 (and b!464034 d!176489)))

(assert (=> bs!57681 (not (= lambda!13718 lambda!13701))))

(declare-fun bs!57682 () Bool)

(assert (= bs!57682 (and b!464034 d!175483)))

(assert (=> bs!57682 (= lambda!13718 lambda!13628)))

(declare-fun bs!57683 () Bool)

(assert (= bs!57683 (and b!464034 b!461292)))

(assert (=> bs!57683 (= lambda!13718 lambda!13618)))

(declare-fun bs!57684 () Bool)

(assert (= bs!57684 (and b!464034 d!175635)))

(assert (=> bs!57684 (not (= lambda!13718 lambda!13651))))

(declare-fun bs!57685 () Bool)

(assert (= bs!57685 (and b!464034 d!175745)))

(assert (=> bs!57685 (not (= lambda!13718 lambda!13657))))

(declare-fun b!464037 () Bool)

(declare-fun e!284302 () Bool)

(assert (=> b!464037 (= e!284302 true)))

(declare-fun b!464036 () Bool)

(declare-fun e!284301 () Bool)

(assert (=> b!464036 (= e!284301 e!284302)))

(declare-fun b!464035 () Bool)

(declare-fun e!284300 () Bool)

(assert (=> b!464035 (= e!284300 e!284301)))

(assert (=> b!464034 e!284300))

(assert (= b!464036 b!464037))

(assert (= b!464035 b!464036))

(assert (= (and b!464034 ((_ is Cons!4494) rules!1920)) b!464035))

(assert (=> b!464037 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13718))))

(assert (=> b!464037 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13718))))

(assert (=> b!464034 true))

(declare-fun bm!32196 () Bool)

(declare-fun call!32205 () List!4503)

(declare-fun call!32204 () BalanceConc!3152)

(declare-fun call!32203 () BalanceConc!3152)

(declare-fun c!93479 () Bool)

(assert (=> bm!32196 (= call!32205 (list!2004 (ite c!93479 call!32204 call!32203)))))

(declare-fun b!464027 () Bool)

(declare-fun c!93477 () Bool)

(declare-fun lt!207532 () Option!1184)

(assert (=> b!464027 (= c!93477 (and ((_ is Some!1183) lt!207532) (not (= (_1!2961 (v!15532 lt!207532)) (h!9892 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0))))))))

(declare-fun e!284299 () List!4503)

(declare-fun e!284298 () List!4503)

(assert (=> b!464027 (= e!284299 e!284298)))

(declare-fun b!464028 () Bool)

(declare-fun call!32202 () List!4503)

(declare-fun lt!207530 () List!4503)

(assert (=> b!464028 (= e!284298 (++!1312 call!32202 lt!207530))))

(declare-fun call!32201 () List!4503)

(declare-fun bm!32197 () Bool)

(assert (=> bm!32197 (= call!32202 (++!1312 call!32205 (ite c!93479 lt!207530 call!32201)))))

(declare-fun b!464030 () Bool)

(assert (=> b!464030 (= e!284299 call!32202)))

(declare-fun b!464031 () Bool)

(declare-fun e!284297 () BalanceConc!3152)

(assert (=> b!464031 (= e!284297 call!32203)))

(declare-fun b!464032 () Bool)

(assert (=> b!464032 (= e!284297 (charsOf!518 separatorToken!170))))

(declare-fun bm!32198 () Bool)

(assert (=> bm!32198 (= call!32204 (charsOf!518 (h!9892 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0))))))

(declare-fun bm!32199 () Bool)

(assert (=> bm!32199 (= call!32203 call!32204)))

(declare-fun b!464033 () Bool)

(assert (=> b!464033 (= e!284298 Nil!4493)))

(assert (=> b!464033 (= (print!486 thiss!17480 (singletonSeq!421 (h!9892 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0)))) (printTailRec!447 thiss!17480 (singletonSeq!421 (h!9892 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0))) 0 (BalanceConc!3153 Empty!1572)))))

(declare-fun lt!207531 () Unit!8113)

(declare-fun Unit!8161 () Unit!8113)

(assert (=> b!464033 (= lt!207531 Unit!8161)))

(declare-fun lt!207534 () Unit!8113)

(assert (=> b!464033 (= lt!207534 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 call!32201 lt!207530))))

(assert (=> b!464033 false))

(declare-fun lt!207535 () Unit!8113)

(declare-fun Unit!8162 () Unit!8113)

(assert (=> b!464033 (= lt!207535 Unit!8162)))

(declare-fun d!176937 () Bool)

(declare-fun c!93480 () Bool)

(assert (=> d!176937 (= c!93480 ((_ is Cons!4495) (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0)))))

(declare-fun e!284296 () List!4503)

(assert (=> d!176937 (= (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0) separatorToken!170) e!284296)))

(declare-fun b!464029 () Bool)

(assert (=> b!464029 (= e!284296 Nil!4493)))

(assert (=> b!464034 (= e!284296 e!284299)))

(declare-fun lt!207533 () Unit!8113)

(assert (=> b!464034 (= lt!207533 (forallContained!428 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0) lambda!13718 (h!9892 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0))))))

(assert (=> b!464034 (= lt!207530 (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (t!71885 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0)) separatorToken!170))))

(assert (=> b!464034 (= lt!207532 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 (list!2004 (charsOf!518 (h!9892 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0)))) lt!207530)))))

(assert (=> b!464034 (= c!93479 (and ((_ is Some!1183) lt!207532) (= (_1!2961 (v!15532 lt!207532)) (h!9892 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0)))))))

(declare-fun bm!32200 () Bool)

(assert (=> bm!32200 (= call!32201 (list!2004 e!284297))))

(declare-fun c!93478 () Bool)

(assert (=> bm!32200 (= c!93478 c!93477)))

(assert (= (and d!176937 c!93480) b!464034))

(assert (= (and d!176937 (not c!93480)) b!464029))

(assert (= (and b!464034 c!93479) b!464030))

(assert (= (and b!464034 (not c!93479)) b!464027))

(assert (= (and b!464027 c!93477) b!464028))

(assert (= (and b!464027 (not c!93477)) b!464033))

(assert (= (or b!464028 b!464033) bm!32199))

(assert (= (or b!464028 b!464033) bm!32200))

(assert (= (and bm!32200 c!93478) b!464032))

(assert (= (and bm!32200 (not c!93478)) b!464031))

(assert (= (or b!464030 bm!32199) bm!32198))

(assert (= (or b!464030 b!464028) bm!32196))

(assert (= (or b!464030 b!464028) bm!32197))

(declare-fun m!735753 () Bool)

(assert (=> bm!32197 m!735753))

(declare-fun m!735755 () Bool)

(assert (=> bm!32200 m!735755))

(assert (=> b!464032 m!729937))

(declare-fun m!735757 () Bool)

(assert (=> b!464034 m!735757))

(assert (=> b!464034 m!731191))

(declare-fun m!735759 () Bool)

(assert (=> b!464034 m!735759))

(assert (=> b!464034 m!735757))

(declare-fun m!735761 () Bool)

(assert (=> b!464034 m!735761))

(declare-fun m!735763 () Bool)

(assert (=> b!464034 m!735763))

(assert (=> b!464034 m!735761))

(declare-fun m!735765 () Bool)

(assert (=> b!464034 m!735765))

(assert (=> b!464034 m!735765))

(declare-fun m!735767 () Bool)

(assert (=> b!464034 m!735767))

(assert (=> bm!32198 m!735757))

(declare-fun m!735769 () Bool)

(assert (=> b!464033 m!735769))

(assert (=> b!464033 m!735769))

(declare-fun m!735771 () Bool)

(assert (=> b!464033 m!735771))

(assert (=> b!464033 m!735769))

(declare-fun m!735773 () Bool)

(assert (=> b!464033 m!735773))

(declare-fun m!735775 () Bool)

(assert (=> b!464033 m!735775))

(declare-fun m!735777 () Bool)

(assert (=> b!464028 m!735777))

(declare-fun m!735779 () Bool)

(assert (=> bm!32196 m!735779))

(assert (=> d!175745 d!176937))

(declare-fun d!176939 () Bool)

(assert (=> d!176939 (forall!1308 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0) lambda!13657)))

(declare-fun lt!207536 () Unit!8113)

(assert (=> d!176939 (= lt!207536 (choose!3479 (list!2005 (seqFromList!1116 (t!71885 tokens!465))) (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0) lambda!13657))))

(assert (=> d!176939 (forall!1308 (list!2005 (seqFromList!1116 (t!71885 tokens!465))) lambda!13657)))

(assert (=> d!176939 (= (lemmaContentSubsetPreservesForall!196 (list!2005 (seqFromList!1116 (t!71885 tokens!465))) (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0) lambda!13657) lt!207536)))

(declare-fun bs!57686 () Bool)

(assert (= bs!57686 d!176939))

(assert (=> bs!57686 m!731191))

(declare-fun m!735781 () Bool)

(assert (=> bs!57686 m!735781))

(assert (=> bs!57686 m!731197))

(assert (=> bs!57686 m!731191))

(declare-fun m!735783 () Bool)

(assert (=> bs!57686 m!735783))

(assert (=> bs!57686 m!731197))

(declare-fun m!735785 () Bool)

(assert (=> bs!57686 m!735785))

(assert (=> d!175745 d!176939))

(declare-fun d!176941 () Bool)

(assert (=> d!176941 (= (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) 0) (drop!321 (list!2007 (c!92856 (seqFromList!1116 (t!71885 tokens!465)))) 0))))

(declare-fun bs!57687 () Bool)

(assert (= bs!57687 d!176941))

(declare-fun m!735787 () Bool)

(assert (=> bs!57687 m!735787))

(assert (=> bs!57687 m!735787))

(declare-fun m!735789 () Bool)

(assert (=> bs!57687 m!735789))

(assert (=> d!175745 d!176941))

(declare-fun d!176943 () Bool)

(assert (=> d!176943 (= (list!2004 lt!206316) (list!2009 (c!92854 lt!206316)))))

(declare-fun bs!57688 () Bool)

(assert (= bs!57688 d!176943))

(declare-fun m!735791 () Bool)

(assert (=> bs!57688 m!735791))

(assert (=> d!175745 d!176943))

(assert (=> d!175745 d!176931))

(declare-fun d!176945 () Bool)

(assert (=> d!176945 (= (list!2005 (seqFromList!1116 (t!71885 tokens!465))) (list!2007 (c!92856 (seqFromList!1116 (t!71885 tokens!465)))))))

(declare-fun bs!57689 () Bool)

(assert (= bs!57689 d!176945))

(assert (=> bs!57689 m!735787))

(assert (=> d!175745 d!176945))

(declare-fun d!176947 () Bool)

(assert (=> d!176947 (= (list!2004 lt!206332) (list!2009 (c!92854 lt!206332)))))

(declare-fun bs!57690 () Bool)

(assert (= bs!57690 d!176947))

(declare-fun m!735793 () Bool)

(assert (=> bs!57690 m!735793))

(assert (=> d!175747 d!176947))

(declare-fun d!176949 () Bool)

(assert (=> d!176949 (= (list!2005 (_1!2963 lt!206066)) (list!2007 (c!92856 (_1!2963 lt!206066))))))

(declare-fun bs!57691 () Bool)

(assert (= bs!57691 d!176949))

(declare-fun m!735795 () Bool)

(assert (=> bs!57691 m!735795))

(assert (=> b!461658 d!176949))

(assert (=> b!461658 d!176463))

(assert (=> b!461658 d!175633))

(assert (=> b!462104 d!176653))

(assert (=> b!462104 d!175615))

(declare-fun d!176951 () Bool)

(declare-fun lt!207538 () BalanceConc!3152)

(assert (=> d!176951 (= (list!2004 lt!207538) (printListTailRec!216 thiss!17480 (dropList!252 (singletonSeq!421 (h!9892 tokens!465)) 0) (list!2004 (BalanceConc!3153 Empty!1572))))))

(declare-fun e!284303 () BalanceConc!3152)

(assert (=> d!176951 (= lt!207538 e!284303)))

(declare-fun c!93481 () Bool)

(assert (=> d!176951 (= c!93481 (>= 0 (size!3672 (singletonSeq!421 (h!9892 tokens!465)))))))

(declare-fun e!284304 () Bool)

(assert (=> d!176951 e!284304))

(declare-fun res!206531 () Bool)

(assert (=> d!176951 (=> (not res!206531) (not e!284304))))

(assert (=> d!176951 (= res!206531 (>= 0 0))))

(assert (=> d!176951 (= (printTailRec!447 thiss!17480 (singletonSeq!421 (h!9892 tokens!465)) 0 (BalanceConc!3153 Empty!1572)) lt!207538)))

(declare-fun b!464038 () Bool)

(assert (=> b!464038 (= e!284304 (<= 0 (size!3672 (singletonSeq!421 (h!9892 tokens!465)))))))

(declare-fun b!464039 () Bool)

(assert (=> b!464039 (= e!284303 (BalanceConc!3153 Empty!1572))))

(declare-fun b!464040 () Bool)

(assert (=> b!464040 (= e!284303 (printTailRec!447 thiss!17480 (singletonSeq!421 (h!9892 tokens!465)) (+ 0 1) (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (apply!1157 (singletonSeq!421 (h!9892 tokens!465)) 0)))))))

(declare-fun lt!207541 () List!4505)

(assert (=> b!464040 (= lt!207541 (list!2005 (singletonSeq!421 (h!9892 tokens!465))))))

(declare-fun lt!207539 () Unit!8113)

(assert (=> b!464040 (= lt!207539 (lemmaDropApply!292 lt!207541 0))))

(assert (=> b!464040 (= (head!1132 (drop!321 lt!207541 0)) (apply!1158 lt!207541 0))))

(declare-fun lt!207537 () Unit!8113)

(assert (=> b!464040 (= lt!207537 lt!207539)))

(declare-fun lt!207543 () List!4505)

(assert (=> b!464040 (= lt!207543 (list!2005 (singletonSeq!421 (h!9892 tokens!465))))))

(declare-fun lt!207542 () Unit!8113)

(assert (=> b!464040 (= lt!207542 (lemmaDropTail!284 lt!207543 0))))

(assert (=> b!464040 (= (tail!654 (drop!321 lt!207543 0)) (drop!321 lt!207543 (+ 0 1)))))

(declare-fun lt!207540 () Unit!8113)

(assert (=> b!464040 (= lt!207540 lt!207542)))

(assert (= (and d!176951 res!206531) b!464038))

(assert (= (and d!176951 c!93481) b!464039))

(assert (= (and d!176951 (not c!93481)) b!464040))

(assert (=> d!176951 m!730547))

(declare-fun m!735797 () Bool)

(assert (=> d!176951 m!735797))

(assert (=> d!176951 m!730547))

(declare-fun m!735799 () Bool)

(assert (=> d!176951 m!735799))

(assert (=> d!176951 m!729901))

(assert (=> d!176951 m!735797))

(declare-fun m!735801 () Bool)

(assert (=> d!176951 m!735801))

(assert (=> d!176951 m!729901))

(declare-fun m!735803 () Bool)

(assert (=> d!176951 m!735803))

(assert (=> b!464038 m!729901))

(assert (=> b!464038 m!735803))

(declare-fun m!735805 () Bool)

(assert (=> b!464040 m!735805))

(assert (=> b!464040 m!729901))

(declare-fun m!735807 () Bool)

(assert (=> b!464040 m!735807))

(declare-fun m!735809 () Bool)

(assert (=> b!464040 m!735809))

(declare-fun m!735811 () Bool)

(assert (=> b!464040 m!735811))

(declare-fun m!735813 () Bool)

(assert (=> b!464040 m!735813))

(declare-fun m!735815 () Bool)

(assert (=> b!464040 m!735815))

(declare-fun m!735817 () Bool)

(assert (=> b!464040 m!735817))

(assert (=> b!464040 m!729901))

(assert (=> b!464040 m!730509))

(assert (=> b!464040 m!735815))

(declare-fun m!735819 () Bool)

(assert (=> b!464040 m!735819))

(declare-fun m!735821 () Bool)

(assert (=> b!464040 m!735821))

(declare-fun m!735823 () Bool)

(assert (=> b!464040 m!735823))

(assert (=> b!464040 m!735817))

(declare-fun m!735825 () Bool)

(assert (=> b!464040 m!735825))

(assert (=> b!464040 m!729901))

(assert (=> b!464040 m!735823))

(declare-fun m!735827 () Bool)

(assert (=> b!464040 m!735827))

(assert (=> b!464040 m!735807))

(assert (=> b!464040 m!735821))

(assert (=> b!462104 d!176951))

(declare-fun lt!207547 () Token!1494)

(declare-fun e!284305 () Bool)

(declare-fun b!464042 () Bool)

(assert (=> b!464042 (= e!284305 (= (rule!1570 lt!207547) (get!1656 (getRuleFromTag!212 thiss!17480 rules!1920 (tag!1135 (rule!1570 lt!207547))))))))

(declare-fun b!464041 () Bool)

(declare-fun res!206533 () Bool)

(assert (=> b!464041 (=> (not res!206533) (not e!284305))))

(assert (=> b!464041 (= res!206533 (matchR!417 (regex!875 (get!1656 (getRuleFromTag!212 thiss!17480 rules!1920 (tag!1135 (rule!1570 lt!207547))))) (list!2004 (charsOf!518 lt!207547))))))

(declare-fun d!176953 () Bool)

(assert (=> d!176953 (isDefined!1023 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 call!32068 lt!206300)))))

(declare-fun lt!207558 () Unit!8113)

(declare-fun e!284306 () Unit!8113)

(assert (=> d!176953 (= lt!207558 e!284306)))

(declare-fun c!93482 () Bool)

(assert (=> d!176953 (= c!93482 (isEmpty!3490 (maxPrefix!477 thiss!17480 rules!1920 (++!1312 call!32068 lt!206300))))))

(declare-fun lt!207553 () Unit!8113)

(declare-fun lt!207552 () Unit!8113)

(assert (=> d!176953 (= lt!207553 lt!207552)))

(assert (=> d!176953 e!284305))

(declare-fun res!206532 () Bool)

(assert (=> d!176953 (=> (not res!206532) (not e!284305))))

(assert (=> d!176953 (= res!206532 (isDefined!1026 (getRuleFromTag!212 thiss!17480 rules!1920 (tag!1135 (rule!1570 lt!207547)))))))

(assert (=> d!176953 (= lt!207552 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!212 thiss!17480 rules!1920 call!32068 lt!207547))))

(declare-fun lt!207560 () Unit!8113)

(declare-fun lt!207546 () Unit!8113)

(assert (=> d!176953 (= lt!207560 lt!207546)))

(declare-fun lt!207550 () List!4503)

(assert (=> d!176953 (isPrefix!527 lt!207550 (++!1312 call!32068 lt!206300))))

(assert (=> d!176953 (= lt!207546 (lemmaPrefixStaysPrefixWhenAddingToSuffix!98 lt!207550 call!32068 lt!206300))))

(assert (=> d!176953 (= lt!207550 (list!2004 (charsOf!518 lt!207547)))))

(declare-fun lt!207544 () Unit!8113)

(declare-fun lt!207545 () Unit!8113)

(assert (=> d!176953 (= lt!207544 lt!207545)))

(declare-fun lt!207556 () List!4503)

(declare-fun lt!207551 () List!4503)

(assert (=> d!176953 (isPrefix!527 lt!207556 (++!1312 lt!207556 lt!207551))))

(assert (=> d!176953 (= lt!207545 (lemmaConcatTwoListThenFirstIsPrefix!412 lt!207556 lt!207551))))

(assert (=> d!176953 (= lt!207551 (_2!2961 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 call!32068))))))

(assert (=> d!176953 (= lt!207556 (list!2004 (charsOf!518 lt!207547)))))

(assert (=> d!176953 (= lt!207547 (head!1132 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (seqFromList!1115 call!32068))))))))

(assert (=> d!176953 (not (isEmpty!3482 rules!1920))))

(assert (=> d!176953 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 call!32068 lt!206300) lt!207558)))

(declare-fun b!464043 () Bool)

(declare-fun Unit!8163 () Unit!8113)

(assert (=> b!464043 (= e!284306 Unit!8163)))

(declare-fun lt!207554 () List!4503)

(assert (=> b!464043 (= lt!207554 (++!1312 call!32068 lt!206300))))

(declare-fun lt!207557 () Unit!8113)

(assert (=> b!464043 (= lt!207557 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!98 thiss!17480 (rule!1570 lt!207547) rules!1920 lt!207554))))

(assert (=> b!464043 (isEmpty!3490 (maxPrefixOneRule!229 thiss!17480 (rule!1570 lt!207547) lt!207554))))

(declare-fun lt!207559 () Unit!8113)

(assert (=> b!464043 (= lt!207559 lt!207557)))

(declare-fun lt!207549 () List!4503)

(assert (=> b!464043 (= lt!207549 (list!2004 (charsOf!518 lt!207547)))))

(declare-fun lt!207555 () Unit!8113)

(assert (=> b!464043 (= lt!207555 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!98 thiss!17480 (rule!1570 lt!207547) lt!207549 (++!1312 call!32068 lt!206300)))))

(assert (=> b!464043 (not (matchR!417 (regex!875 (rule!1570 lt!207547)) lt!207549))))

(declare-fun lt!207548 () Unit!8113)

(assert (=> b!464043 (= lt!207548 lt!207555)))

(assert (=> b!464043 false))

(declare-fun b!464044 () Bool)

(declare-fun Unit!8164 () Unit!8113)

(assert (=> b!464044 (= e!284306 Unit!8164)))

(assert (= (and d!176953 res!206532) b!464041))

(assert (= (and b!464041 res!206533) b!464042))

(assert (= (and d!176953 c!93482) b!464043))

(assert (= (and d!176953 (not c!93482)) b!464044))

(declare-fun m!735829 () Bool)

(assert (=> b!464042 m!735829))

(assert (=> b!464042 m!735829))

(declare-fun m!735831 () Bool)

(assert (=> b!464042 m!735831))

(declare-fun m!735833 () Bool)

(assert (=> b!464041 m!735833))

(declare-fun m!735835 () Bool)

(assert (=> b!464041 m!735835))

(assert (=> b!464041 m!735835))

(declare-fun m!735837 () Bool)

(assert (=> b!464041 m!735837))

(assert (=> b!464041 m!735829))

(assert (=> b!464041 m!735829))

(assert (=> b!464041 m!735831))

(assert (=> b!464041 m!735833))

(declare-fun m!735839 () Bool)

(assert (=> d!176953 m!735839))

(declare-fun m!735841 () Bool)

(assert (=> d!176953 m!735841))

(assert (=> d!176953 m!735839))

(declare-fun m!735843 () Bool)

(assert (=> d!176953 m!735843))

(declare-fun m!735845 () Bool)

(assert (=> d!176953 m!735845))

(declare-fun m!735847 () Bool)

(assert (=> d!176953 m!735847))

(declare-fun m!735849 () Bool)

(assert (=> d!176953 m!735849))

(assert (=> d!176953 m!735833))

(assert (=> d!176953 m!735835))

(assert (=> d!176953 m!735847))

(declare-fun m!735851 () Bool)

(assert (=> d!176953 m!735851))

(declare-fun m!735853 () Bool)

(assert (=> d!176953 m!735853))

(assert (=> d!176953 m!735829))

(declare-fun m!735855 () Bool)

(assert (=> d!176953 m!735855))

(assert (=> d!176953 m!735829))

(declare-fun m!735857 () Bool)

(assert (=> d!176953 m!735857))

(declare-fun m!735859 () Bool)

(assert (=> d!176953 m!735859))

(assert (=> d!176953 m!735845))

(declare-fun m!735861 () Bool)

(assert (=> d!176953 m!735861))

(assert (=> d!176953 m!735839))

(assert (=> d!176953 m!735851))

(assert (=> d!176953 m!735833))

(declare-fun m!735863 () Bool)

(assert (=> d!176953 m!735863))

(assert (=> d!176953 m!735863))

(declare-fun m!735865 () Bool)

(assert (=> d!176953 m!735865))

(declare-fun m!735867 () Bool)

(assert (=> d!176953 m!735867))

(assert (=> d!176953 m!735851))

(declare-fun m!735869 () Bool)

(assert (=> d!176953 m!735869))

(assert (=> d!176953 m!735857))

(declare-fun m!735871 () Bool)

(assert (=> d!176953 m!735871))

(assert (=> d!176953 m!729821))

(assert (=> b!464043 m!735833))

(assert (=> b!464043 m!735835))

(assert (=> b!464043 m!735839))

(declare-fun m!735873 () Bool)

(assert (=> b!464043 m!735873))

(assert (=> b!464043 m!735833))

(assert (=> b!464043 m!735839))

(declare-fun m!735875 () Bool)

(assert (=> b!464043 m!735875))

(declare-fun m!735877 () Bool)

(assert (=> b!464043 m!735877))

(declare-fun m!735879 () Bool)

(assert (=> b!464043 m!735879))

(assert (=> b!464043 m!735879))

(declare-fun m!735881 () Bool)

(assert (=> b!464043 m!735881))

(assert (=> b!462104 d!176953))

(declare-fun d!176955 () Bool)

(declare-fun lt!207561 () Bool)

(assert (=> d!176955 (= lt!207561 (select (content!754 rules!1920) (rule!1570 (_1!2961 (get!1652 lt!205988)))))))

(declare-fun e!284307 () Bool)

(assert (=> d!176955 (= lt!207561 e!284307)))

(declare-fun res!206535 () Bool)

(assert (=> d!176955 (=> (not res!206535) (not e!284307))))

(assert (=> d!176955 (= res!206535 ((_ is Cons!4494) rules!1920))))

(assert (=> d!176955 (= (contains!1008 rules!1920 (rule!1570 (_1!2961 (get!1652 lt!205988)))) lt!207561)))

(declare-fun b!464045 () Bool)

(declare-fun e!284308 () Bool)

(assert (=> b!464045 (= e!284307 e!284308)))

(declare-fun res!206534 () Bool)

(assert (=> b!464045 (=> res!206534 e!284308)))

(assert (=> b!464045 (= res!206534 (= (h!9891 rules!1920) (rule!1570 (_1!2961 (get!1652 lt!205988)))))))

(declare-fun b!464046 () Bool)

(assert (=> b!464046 (= e!284308 (contains!1008 (t!71884 rules!1920) (rule!1570 (_1!2961 (get!1652 lt!205988)))))))

(assert (= (and d!176955 res!206535) b!464045))

(assert (= (and b!464045 (not res!206534)) b!464046))

(assert (=> d!176955 m!732257))

(declare-fun m!735883 () Bool)

(assert (=> d!176955 m!735883))

(declare-fun m!735885 () Bool)

(assert (=> b!464046 m!735885))

(assert (=> b!461524 d!176955))

(assert (=> b!461524 d!176063))

(assert (=> b!461923 d!175975))

(declare-fun d!176957 () Bool)

(declare-fun lt!207562 () Int)

(assert (=> d!176957 (= lt!207562 (size!3675 (list!2005 (_1!2963 lt!205957))))))

(assert (=> d!176957 (= lt!207562 (size!3677 (c!92856 (_1!2963 lt!205957))))))

(assert (=> d!176957 (= (size!3672 (_1!2963 lt!205957)) lt!207562)))

(declare-fun bs!57692 () Bool)

(assert (= bs!57692 d!176957))

(assert (=> bs!57692 m!730113))

(assert (=> bs!57692 m!730113))

(declare-fun m!735887 () Bool)

(assert (=> bs!57692 m!735887))

(declare-fun m!735889 () Bool)

(assert (=> bs!57692 m!735889))

(assert (=> d!175515 d!176957))

(declare-fun lt!207585 () BalanceConc!3152)

(declare-fun e!284310 () tuple2!5494)

(declare-fun lt!207595 () Option!1185)

(declare-fun b!464047 () Bool)

(assert (=> b!464047 (= e!284310 (lexTailRecV2!264 thiss!17480 rules!1920 lt!205910 lt!207585 (_2!2962 (v!15533 lt!207595)) (append!153 (BalanceConc!3155 Empty!1573) (_1!2962 (v!15533 lt!207595)))))))

(declare-fun lt!207581 () tuple2!5494)

(assert (=> b!464047 (= lt!207581 (lexRec!132 thiss!17480 rules!1920 (_2!2962 (v!15533 lt!207595))))))

(declare-fun lt!207591 () List!4503)

(assert (=> b!464047 (= lt!207591 (list!2004 (BalanceConc!3153 Empty!1572)))))

(declare-fun lt!207566 () List!4503)

(assert (=> b!464047 (= lt!207566 (list!2004 (charsOf!518 (_1!2962 (v!15533 lt!207595)))))))

(declare-fun lt!207574 () List!4503)

(assert (=> b!464047 (= lt!207574 (list!2004 (_2!2962 (v!15533 lt!207595))))))

(declare-fun lt!207593 () Unit!8113)

(assert (=> b!464047 (= lt!207593 (lemmaConcatAssociativity!612 lt!207591 lt!207566 lt!207574))))

(assert (=> b!464047 (= (++!1312 (++!1312 lt!207591 lt!207566) lt!207574) (++!1312 lt!207591 (++!1312 lt!207566 lt!207574)))))

(declare-fun lt!207573 () Unit!8113)

(assert (=> b!464047 (= lt!207573 lt!207593)))

(declare-fun lt!207568 () Option!1185)

(assert (=> b!464047 (= lt!207568 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 lt!205910))))

(declare-fun c!93484 () Bool)

(assert (=> b!464047 (= c!93484 ((_ is Some!1184) lt!207568))))

(declare-fun e!284311 () tuple2!5494)

(assert (=> b!464047 (= (lexRec!132 thiss!17480 rules!1920 lt!205910) e!284311)))

(declare-fun lt!207594 () Unit!8113)

(declare-fun Unit!8167 () Unit!8113)

(assert (=> b!464047 (= lt!207594 Unit!8167)))

(declare-fun lt!207580 () List!4505)

(assert (=> b!464047 (= lt!207580 (list!2005 (BalanceConc!3155 Empty!1573)))))

(declare-fun lt!207588 () List!4505)

(assert (=> b!464047 (= lt!207588 (Cons!4495 (_1!2962 (v!15533 lt!207595)) Nil!4495))))

(declare-fun lt!207582 () List!4505)

(assert (=> b!464047 (= lt!207582 (list!2005 (_1!2963 lt!207581)))))

(declare-fun lt!207572 () Unit!8113)

(assert (=> b!464047 (= lt!207572 (lemmaConcatAssociativity!614 lt!207580 lt!207588 lt!207582))))

(assert (=> b!464047 (= (++!1318 (++!1318 lt!207580 lt!207588) lt!207582) (++!1318 lt!207580 (++!1318 lt!207588 lt!207582)))))

(declare-fun lt!207583 () Unit!8113)

(assert (=> b!464047 (= lt!207583 lt!207572)))

(declare-fun lt!207584 () List!4503)

(assert (=> b!464047 (= lt!207584 (++!1312 (list!2004 (BalanceConc!3153 Empty!1572)) (list!2004 (charsOf!518 (_1!2962 (v!15533 lt!207595))))))))

(declare-fun lt!207564 () List!4503)

(assert (=> b!464047 (= lt!207564 (list!2004 (_2!2962 (v!15533 lt!207595))))))

(declare-fun lt!207567 () List!4505)

(assert (=> b!464047 (= lt!207567 (list!2005 (append!153 (BalanceConc!3155 Empty!1573) (_1!2962 (v!15533 lt!207595)))))))

(declare-fun lt!207563 () Unit!8113)

(assert (=> b!464047 (= lt!207563 (lemmaLexThenLexPrefix!119 thiss!17480 rules!1920 lt!207584 lt!207564 lt!207567 (list!2005 (_1!2963 lt!207581)) (list!2004 (_2!2963 lt!207581))))))

(assert (=> b!464047 (= (lexList!299 thiss!17480 rules!1920 lt!207584) (tuple2!5499 lt!207567 Nil!4493))))

(declare-fun lt!207579 () Unit!8113)

(assert (=> b!464047 (= lt!207579 lt!207563)))

(declare-fun lt!207578 () BalanceConc!3152)

(assert (=> b!464047 (= lt!207578 (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (_1!2962 (v!15533 lt!207595)))))))

(declare-fun lt!207575 () Option!1185)

(assert (=> b!464047 (= lt!207575 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 lt!207578))))

(declare-fun c!93483 () Bool)

(assert (=> b!464047 (= c!93483 ((_ is Some!1184) lt!207575))))

(declare-fun e!284312 () tuple2!5494)

(assert (=> b!464047 (= (lexRec!132 thiss!17480 rules!1920 (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (_1!2962 (v!15533 lt!207595))))) e!284312)))

(declare-fun lt!207587 () Unit!8113)

(declare-fun Unit!8168 () Unit!8113)

(assert (=> b!464047 (= lt!207587 Unit!8168)))

(assert (=> b!464047 (= lt!207585 (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (_1!2962 (v!15533 lt!207595)))))))

(declare-fun lt!207590 () List!4503)

(assert (=> b!464047 (= lt!207590 (list!2004 lt!207585))))

(declare-fun lt!207589 () List!4503)

(assert (=> b!464047 (= lt!207589 (list!2004 (_2!2962 (v!15533 lt!207595))))))

(declare-fun lt!207576 () Unit!8113)

(assert (=> b!464047 (= lt!207576 (lemmaConcatTwoListThenFSndIsSuffix!117 lt!207590 lt!207589))))

(assert (=> b!464047 (isSuffix!117 lt!207589 (++!1312 lt!207590 lt!207589))))

(declare-fun lt!207565 () Unit!8113)

(assert (=> b!464047 (= lt!207565 lt!207576)))

(declare-fun b!464048 () Bool)

(assert (=> b!464048 (= e!284311 (tuple2!5495 (BalanceConc!3155 Empty!1573) lt!205910))))

(declare-fun b!464049 () Bool)

(declare-fun lt!207596 () tuple2!5494)

(assert (=> b!464049 (= lt!207596 (lexRec!132 thiss!17480 rules!1920 (_2!2962 (v!15533 lt!207568))))))

(assert (=> b!464049 (= e!284311 (tuple2!5495 (prepend!231 (_1!2963 lt!207596) (_1!2962 (v!15533 lt!207568))) (_2!2963 lt!207596)))))

(declare-fun lt!207571 () tuple2!5494)

(declare-fun b!464050 () Bool)

(assert (=> b!464050 (= lt!207571 (lexRec!132 thiss!17480 rules!1920 (_2!2962 (v!15533 lt!207575))))))

(assert (=> b!464050 (= e!284312 (tuple2!5495 (prepend!231 (_1!2963 lt!207571) (_1!2962 (v!15533 lt!207575))) (_2!2963 lt!207571)))))

(declare-fun d!176959 () Bool)

(declare-fun e!284309 () Bool)

(assert (=> d!176959 e!284309))

(declare-fun res!206536 () Bool)

(assert (=> d!176959 (=> (not res!206536) (not e!284309))))

(declare-fun lt!207577 () tuple2!5494)

(assert (=> d!176959 (= res!206536 (= (list!2005 (_1!2963 lt!207577)) (list!2005 (_1!2963 (lexRec!132 thiss!17480 rules!1920 lt!205910)))))))

(assert (=> d!176959 (= lt!207577 e!284310)))

(declare-fun c!93485 () Bool)

(assert (=> d!176959 (= c!93485 ((_ is Some!1184) lt!207595))))

(assert (=> d!176959 (= lt!207595 (maxPrefixZipperSequenceV2!117 thiss!17480 rules!1920 lt!205910 lt!205910))))

(declare-fun lt!207570 () Unit!8113)

(declare-fun lt!207592 () Unit!8113)

(assert (=> d!176959 (= lt!207570 lt!207592)))

(declare-fun lt!207586 () List!4503)

(declare-fun lt!207569 () List!4503)

(assert (=> d!176959 (isSuffix!117 lt!207586 (++!1312 lt!207569 lt!207586))))

(assert (=> d!176959 (= lt!207592 (lemmaConcatTwoListThenFSndIsSuffix!117 lt!207569 lt!207586))))

(assert (=> d!176959 (= lt!207586 (list!2004 lt!205910))))

(assert (=> d!176959 (= lt!207569 (list!2004 (BalanceConc!3153 Empty!1572)))))

(assert (=> d!176959 (= (lexTailRecV2!264 thiss!17480 rules!1920 lt!205910 (BalanceConc!3153 Empty!1572) lt!205910 (BalanceConc!3155 Empty!1573)) lt!207577)))

(declare-fun b!464051 () Bool)

(assert (=> b!464051 (= e!284309 (= (list!2004 (_2!2963 lt!207577)) (list!2004 (_2!2963 (lexRec!132 thiss!17480 rules!1920 lt!205910)))))))

(declare-fun b!464052 () Bool)

(assert (=> b!464052 (= e!284310 (tuple2!5495 (BalanceConc!3155 Empty!1573) lt!205910))))

(declare-fun b!464053 () Bool)

(assert (=> b!464053 (= e!284312 (tuple2!5495 (BalanceConc!3155 Empty!1573) lt!207578))))

(assert (= (and d!176959 c!93485) b!464047))

(assert (= (and d!176959 (not c!93485)) b!464052))

(assert (= (and b!464047 c!93484) b!464049))

(assert (= (and b!464047 (not c!93484)) b!464048))

(assert (= (and b!464047 c!93483) b!464050))

(assert (= (and b!464047 (not c!93483)) b!464053))

(assert (= (and d!176959 res!206536) b!464051))

(declare-fun m!735891 () Bool)

(assert (=> b!464049 m!735891))

(declare-fun m!735893 () Bool)

(assert (=> b!464049 m!735893))

(declare-fun m!735895 () Bool)

(assert (=> d!176959 m!735895))

(declare-fun m!735897 () Bool)

(assert (=> d!176959 m!735897))

(declare-fun m!735899 () Bool)

(assert (=> d!176959 m!735899))

(declare-fun m!735901 () Bool)

(assert (=> d!176959 m!735901))

(assert (=> d!176959 m!730547))

(assert (=> d!176959 m!729945))

(assert (=> d!176959 m!735899))

(declare-fun m!735903 () Bool)

(assert (=> d!176959 m!735903))

(declare-fun m!735905 () Bool)

(assert (=> d!176959 m!735905))

(declare-fun m!735907 () Bool)

(assert (=> d!176959 m!735907))

(declare-fun m!735909 () Bool)

(assert (=> b!464051 m!735909))

(assert (=> b!464051 m!735905))

(declare-fun m!735911 () Bool)

(assert (=> b!464051 m!735911))

(declare-fun m!735913 () Bool)

(assert (=> b!464050 m!735913))

(declare-fun m!735915 () Bool)

(assert (=> b!464050 m!735915))

(declare-fun m!735917 () Bool)

(assert (=> b!464047 m!735917))

(assert (=> b!464047 m!730547))

(declare-fun m!735919 () Bool)

(assert (=> b!464047 m!735919))

(declare-fun m!735921 () Bool)

(assert (=> b!464047 m!735921))

(assert (=> b!464047 m!735917))

(declare-fun m!735923 () Bool)

(assert (=> b!464047 m!735923))

(declare-fun m!735925 () Bool)

(assert (=> b!464047 m!735925))

(assert (=> b!464047 m!730547))

(declare-fun m!735927 () Bool)

(assert (=> b!464047 m!735927))

(declare-fun m!735929 () Bool)

(assert (=> b!464047 m!735929))

(declare-fun m!735931 () Bool)

(assert (=> b!464047 m!735931))

(declare-fun m!735933 () Bool)

(assert (=> b!464047 m!735933))

(declare-fun m!735935 () Bool)

(assert (=> b!464047 m!735935))

(declare-fun m!735937 () Bool)

(assert (=> b!464047 m!735937))

(declare-fun m!735939 () Bool)

(assert (=> b!464047 m!735939))

(declare-fun m!735941 () Bool)

(assert (=> b!464047 m!735941))

(declare-fun m!735943 () Bool)

(assert (=> b!464047 m!735943))

(assert (=> b!464047 m!735905))

(assert (=> b!464047 m!735939))

(declare-fun m!735945 () Bool)

(assert (=> b!464047 m!735945))

(declare-fun m!735947 () Bool)

(assert (=> b!464047 m!735947))

(declare-fun m!735949 () Bool)

(assert (=> b!464047 m!735949))

(declare-fun m!735951 () Bool)

(assert (=> b!464047 m!735951))

(declare-fun m!735953 () Bool)

(assert (=> b!464047 m!735953))

(assert (=> b!464047 m!735943))

(assert (=> b!464047 m!735931))

(declare-fun m!735955 () Bool)

(assert (=> b!464047 m!735955))

(assert (=> b!464047 m!735951))

(declare-fun m!735957 () Bool)

(assert (=> b!464047 m!735957))

(assert (=> b!464047 m!735919))

(assert (=> b!464047 m!735237))

(declare-fun m!735959 () Bool)

(assert (=> b!464047 m!735959))

(assert (=> b!464047 m!735955))

(declare-fun m!735961 () Bool)

(assert (=> b!464047 m!735961))

(declare-fun m!735963 () Bool)

(assert (=> b!464047 m!735963))

(declare-fun m!735965 () Bool)

(assert (=> b!464047 m!735965))

(declare-fun m!735967 () Bool)

(assert (=> b!464047 m!735967))

(declare-fun m!735969 () Bool)

(assert (=> b!464047 m!735969))

(assert (=> b!464047 m!735917))

(declare-fun m!735971 () Bool)

(assert (=> b!464047 m!735971))

(assert (=> b!464047 m!735941))

(declare-fun m!735973 () Bool)

(assert (=> b!464047 m!735973))

(assert (=> b!464047 m!735947))

(assert (=> b!464047 m!735965))

(declare-fun m!735975 () Bool)

(assert (=> b!464047 m!735975))

(assert (=> b!464047 m!735943))

(assert (=> b!464047 m!735927))

(assert (=> d!175515 d!176959))

(declare-fun b!464057 () Bool)

(declare-fun e!284314 () Bool)

(declare-fun lt!207597 () List!4503)

(assert (=> b!464057 (= e!284314 (or (not (= (_2!2961 lt!205912) Nil!4493)) (= lt!207597 (t!71883 lt!205905))))))

(declare-fun b!464054 () Bool)

(declare-fun e!284313 () List!4503)

(assert (=> b!464054 (= e!284313 (_2!2961 lt!205912))))

(declare-fun b!464056 () Bool)

(declare-fun res!206538 () Bool)

(assert (=> b!464056 (=> (not res!206538) (not e!284314))))

(assert (=> b!464056 (= res!206538 (= (size!3674 lt!207597) (+ (size!3674 (t!71883 lt!205905)) (size!3674 (_2!2961 lt!205912)))))))

(declare-fun d!176961 () Bool)

(assert (=> d!176961 e!284314))

(declare-fun res!206537 () Bool)

(assert (=> d!176961 (=> (not res!206537) (not e!284314))))

(assert (=> d!176961 (= res!206537 (= (content!752 lt!207597) ((_ map or) (content!752 (t!71883 lt!205905)) (content!752 (_2!2961 lt!205912)))))))

(assert (=> d!176961 (= lt!207597 e!284313)))

(declare-fun c!93486 () Bool)

(assert (=> d!176961 (= c!93486 ((_ is Nil!4493) (t!71883 lt!205905)))))

(assert (=> d!176961 (= (++!1312 (t!71883 lt!205905) (_2!2961 lt!205912)) lt!207597)))

(declare-fun b!464055 () Bool)

(assert (=> b!464055 (= e!284313 (Cons!4493 (h!9890 (t!71883 lt!205905)) (++!1312 (t!71883 (t!71883 lt!205905)) (_2!2961 lt!205912))))))

(assert (= (and d!176961 c!93486) b!464054))

(assert (= (and d!176961 (not c!93486)) b!464055))

(assert (= (and d!176961 res!206537) b!464056))

(assert (= (and b!464056 res!206538) b!464057))

(declare-fun m!735977 () Bool)

(assert (=> b!464056 m!735977))

(assert (=> b!464056 m!732447))

(assert (=> b!464056 m!730073))

(declare-fun m!735979 () Bool)

(assert (=> d!176961 m!735979))

(assert (=> d!176961 m!732415))

(assert (=> d!176961 m!730079))

(declare-fun m!735981 () Bool)

(assert (=> b!464055 m!735981))

(assert (=> b!461415 d!176961))

(declare-fun d!176963 () Bool)

(declare-fun lt!207598 () BalanceConc!3152)

(assert (=> d!176963 (= (list!2004 lt!207598) (originalCharacters!918 (ite c!93018 separatorToken!170 call!32082)))))

(assert (=> d!176963 (= lt!207598 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (ite c!93018 separatorToken!170 call!32082)))) (value!29253 (ite c!93018 separatorToken!170 call!32082))))))

(assert (=> d!176963 (= (charsOf!518 (ite c!93018 separatorToken!170 call!32082)) lt!207598)))

(declare-fun b_lambda!19329 () Bool)

(assert (=> (not b_lambda!19329) (not d!176963)))

(declare-fun t!72255 () Bool)

(declare-fun tb!46411 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93018 separatorToken!170 call!32082))))) t!72255) tb!46411))

(declare-fun b!464058 () Bool)

(declare-fun e!284315 () Bool)

(declare-fun tp!127918 () Bool)

(assert (=> b!464058 (= e!284315 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (ite c!93018 separatorToken!170 call!32082)))) (value!29253 (ite c!93018 separatorToken!170 call!32082))))) tp!127918))))

(declare-fun result!51100 () Bool)

(assert (=> tb!46411 (= result!51100 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (ite c!93018 separatorToken!170 call!32082)))) (value!29253 (ite c!93018 separatorToken!170 call!32082)))) e!284315))))

(assert (= tb!46411 b!464058))

(declare-fun m!735983 () Bool)

(assert (=> b!464058 m!735983))

(declare-fun m!735985 () Bool)

(assert (=> tb!46411 m!735985))

(assert (=> d!176963 t!72255))

(declare-fun b_and!49863 () Bool)

(assert (= b_and!49853 (and (=> t!72255 result!51100) b_and!49863)))

(declare-fun tb!46413 () Bool)

(declare-fun t!72257 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93018 separatorToken!170 call!32082))))) t!72257) tb!46413))

(declare-fun result!51102 () Bool)

(assert (= result!51102 result!51100))

(assert (=> d!176963 t!72257))

(declare-fun b_and!49865 () Bool)

(assert (= b_and!49861 (and (=> t!72257 result!51102) b_and!49865)))

(declare-fun tb!46415 () Bool)

(declare-fun t!72259 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93018 separatorToken!170 call!32082))))) t!72259) tb!46415))

(declare-fun result!51104 () Bool)

(assert (= result!51104 result!51100))

(assert (=> d!176963 t!72259))

(declare-fun b_and!49867 () Bool)

(assert (= b_and!49855 (and (=> t!72259 result!51104) b_and!49867)))

(declare-fun t!72261 () Bool)

(declare-fun tb!46417 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93018 separatorToken!170 call!32082))))) t!72261) tb!46417))

(declare-fun result!51106 () Bool)

(assert (= result!51106 result!51100))

(assert (=> d!176963 t!72261))

(declare-fun b_and!49869 () Bool)

(assert (= b_and!49857 (and (=> t!72261 result!51106) b_and!49869)))

(declare-fun t!72263 () Bool)

(declare-fun tb!46419 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93018 separatorToken!170 call!32082))))) t!72263) tb!46419))

(declare-fun result!51108 () Bool)

(assert (= result!51108 result!51100))

(assert (=> d!176963 t!72263))

(declare-fun b_and!49871 () Bool)

(assert (= b_and!49859 (and (=> t!72263 result!51108) b_and!49871)))

(declare-fun m!735987 () Bool)

(assert (=> d!176963 m!735987))

(declare-fun m!735989 () Bool)

(assert (=> d!176963 m!735989))

(assert (=> bm!32074 d!176963))

(declare-fun d!176965 () Bool)

(assert (=> d!176965 (= (list!2004 (_2!2963 lt!205932)) (list!2009 (c!92854 (_2!2963 lt!205932))))))

(declare-fun bs!57693 () Bool)

(assert (= bs!57693 d!176965))

(declare-fun m!735991 () Bool)

(assert (=> bs!57693 m!735991))

(assert (=> b!461368 d!176965))

(assert (=> b!461368 d!176645))

(assert (=> b!461368 d!176647))

(assert (=> b!461620 d!176101))

(assert (=> b!461620 d!176103))

(assert (=> b!461620 d!176097))

(assert (=> b!461620 d!176105))

(declare-fun d!176967 () Bool)

(declare-fun c!93487 () Bool)

(assert (=> d!176967 (= c!93487 ((_ is Nil!4493) lt!206335))))

(declare-fun e!284316 () (InoxSet C!3120))

(assert (=> d!176967 (= (content!752 lt!206335) e!284316)))

(declare-fun b!464059 () Bool)

(assert (=> b!464059 (= e!284316 ((as const (Array C!3120 Bool)) false))))

(declare-fun b!464060 () Bool)

(assert (=> b!464060 (= e!284316 ((_ map or) (store ((as const (Array C!3120 Bool)) false) (h!9890 lt!206335) true) (content!752 (t!71883 lt!206335))))))

(assert (= (and d!176967 c!93487) b!464059))

(assert (= (and d!176967 (not c!93487)) b!464060))

(declare-fun m!735993 () Bool)

(assert (=> b!464060 m!735993))

(declare-fun m!735995 () Bool)

(assert (=> b!464060 m!735995))

(assert (=> d!175755 d!176967))

(declare-fun d!176969 () Bool)

(declare-fun c!93488 () Bool)

(assert (=> d!176969 (= c!93488 ((_ is Nil!4493) lt!205896))))

(declare-fun e!284317 () (InoxSet C!3120))

(assert (=> d!176969 (= (content!752 lt!205896) e!284317)))

(declare-fun b!464061 () Bool)

(assert (=> b!464061 (= e!284317 ((as const (Array C!3120 Bool)) false))))

(declare-fun b!464062 () Bool)

(assert (=> b!464062 (= e!284317 ((_ map or) (store ((as const (Array C!3120 Bool)) false) (h!9890 lt!205896) true) (content!752 (t!71883 lt!205896))))))

(assert (= (and d!176969 c!93488) b!464061))

(assert (= (and d!176969 (not c!93488)) b!464062))

(declare-fun m!735997 () Bool)

(assert (=> b!464062 m!735997))

(assert (=> b!464062 m!732493))

(assert (=> d!175755 d!176969))

(assert (=> d!175755 d!176073))

(declare-fun bs!57694 () Bool)

(declare-fun d!176971 () Bool)

(assert (= bs!57694 (and d!176971 b!461290)))

(declare-fun lambda!13721 () Int)

(assert (=> bs!57694 (not (= lambda!13721 lambda!13617))))

(declare-fun bs!57695 () Bool)

(assert (= bs!57695 (and d!176971 b!462105)))

(assert (=> bs!57695 (= lambda!13721 lambda!13655)))

(declare-fun bs!57696 () Bool)

(assert (= bs!57696 (and d!176971 b!462542)))

(assert (=> bs!57696 (= lambda!13721 lambda!13668)))

(declare-fun bs!57697 () Bool)

(assert (= bs!57697 (and d!176971 b!462992)))

(assert (=> bs!57697 (= lambda!13721 lambda!13688)))

(declare-fun bs!57698 () Bool)

(assert (= bs!57698 (and d!176971 b!464034)))

(assert (=> bs!57698 (= lambda!13721 lambda!13718)))

(declare-fun bs!57699 () Bool)

(assert (= bs!57699 (and d!176971 b!462130)))

(assert (=> bs!57699 (= lambda!13721 lambda!13658)))

(declare-fun bs!57700 () Bool)

(assert (= bs!57700 (and d!176971 d!175507)))

(assert (=> bs!57700 (not (= lambda!13721 lambda!13634))))

(declare-fun bs!57701 () Bool)

(assert (= bs!57701 (and d!176971 b!461918)))

(assert (=> bs!57701 (= lambda!13721 lambda!13652)))

(declare-fun bs!57702 () Bool)

(assert (= bs!57702 (and d!176971 b!462125)))

(assert (=> bs!57702 (= lambda!13721 lambda!13656)))

(declare-fun bs!57703 () Bool)

(assert (= bs!57703 (and d!176971 d!176489)))

(assert (=> bs!57703 (not (= lambda!13721 lambda!13701))))

(declare-fun bs!57704 () Bool)

(assert (= bs!57704 (and d!176971 d!175483)))

(assert (=> bs!57704 (= lambda!13721 lambda!13628)))

(declare-fun bs!57705 () Bool)

(assert (= bs!57705 (and d!176971 b!461292)))

(assert (=> bs!57705 (= lambda!13721 lambda!13618)))

(declare-fun bs!57706 () Bool)

(assert (= bs!57706 (and d!176971 d!175635)))

(assert (=> bs!57706 (not (= lambda!13721 lambda!13651))))

(declare-fun bs!57707 () Bool)

(assert (= bs!57707 (and d!176971 d!175745)))

(assert (=> bs!57707 (not (= lambda!13721 lambda!13657))))

(declare-fun b!464071 () Bool)

(declare-fun e!284326 () Bool)

(assert (=> b!464071 (= e!284326 true)))

(declare-fun b!464070 () Bool)

(declare-fun e!284325 () Bool)

(assert (=> b!464070 (= e!284325 e!284326)))

(declare-fun b!464069 () Bool)

(declare-fun e!284324 () Bool)

(assert (=> b!464069 (= e!284324 e!284325)))

(assert (=> d!176971 e!284324))

(assert (= b!464070 b!464071))

(assert (= b!464069 b!464070))

(assert (= (and d!176971 ((_ is Cons!4494) rules!1920)) b!464069))

(assert (=> b!464071 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13721))))

(assert (=> b!464071 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13721))))

(assert (=> d!176971 true))

(declare-fun lt!207601 () Bool)

(assert (=> d!176971 (= lt!207601 (forall!1308 (list!2005 lt!205904) lambda!13721))))

(declare-fun e!284323 () Bool)

(assert (=> d!176971 (= lt!207601 e!284323)))

(declare-fun res!206544 () Bool)

(assert (=> d!176971 (=> res!206544 e!284323)))

(assert (=> d!176971 (= res!206544 (not ((_ is Cons!4495) (list!2005 lt!205904))))))

(assert (=> d!176971 (not (isEmpty!3482 rules!1920))))

(assert (=> d!176971 (= (rulesProduceEachTokenIndividuallyList!327 thiss!17480 rules!1920 (list!2005 lt!205904)) lt!207601)))

(declare-fun b!464067 () Bool)

(declare-fun e!284322 () Bool)

(assert (=> b!464067 (= e!284323 e!284322)))

(declare-fun res!206543 () Bool)

(assert (=> b!464067 (=> (not res!206543) (not e!284322))))

(assert (=> b!464067 (= res!206543 (rulesProduceIndividualToken!510 thiss!17480 rules!1920 (h!9892 (list!2005 lt!205904))))))

(declare-fun b!464068 () Bool)

(assert (=> b!464068 (= e!284322 (rulesProduceEachTokenIndividuallyList!327 thiss!17480 rules!1920 (t!71885 (list!2005 lt!205904))))))

(assert (= (and d!176971 (not res!206544)) b!464067))

(assert (= (and b!464067 res!206543) b!464068))

(assert (=> d!176971 m!730059))

(declare-fun m!735999 () Bool)

(assert (=> d!176971 m!735999))

(assert (=> d!176971 m!729821))

(declare-fun m!736001 () Bool)

(assert (=> b!464067 m!736001))

(declare-fun m!736003 () Bool)

(assert (=> b!464068 m!736003))

(assert (=> b!461402 d!176971))

(assert (=> b!461402 d!175983))

(declare-fun d!176973 () Bool)

(declare-fun lt!207602 () Int)

(assert (=> d!176973 (= lt!207602 (size!3675 (list!2005 (_1!2963 lt!205932))))))

(assert (=> d!176973 (= lt!207602 (size!3677 (c!92856 (_1!2963 lt!205932))))))

(assert (=> d!176973 (= (size!3672 (_1!2963 lt!205932)) lt!207602)))

(declare-fun bs!57708 () Bool)

(assert (= bs!57708 d!176973))

(assert (=> bs!57708 m!730005))

(assert (=> bs!57708 m!730005))

(declare-fun m!736005 () Bool)

(assert (=> bs!57708 m!736005))

(declare-fun m!736007 () Bool)

(assert (=> bs!57708 m!736007))

(assert (=> d!175463 d!176973))

(declare-fun lt!207625 () BalanceConc!3152)

(declare-fun e!284328 () tuple2!5494)

(declare-fun lt!207635 () Option!1185)

(declare-fun b!464072 () Bool)

(assert (=> b!464072 (= e!284328 (lexTailRecV2!264 thiss!17480 rules!1920 (seqFromList!1115 lt!205905) lt!207625 (_2!2962 (v!15533 lt!207635)) (append!153 (BalanceConc!3155 Empty!1573) (_1!2962 (v!15533 lt!207635)))))))

(declare-fun lt!207621 () tuple2!5494)

(assert (=> b!464072 (= lt!207621 (lexRec!132 thiss!17480 rules!1920 (_2!2962 (v!15533 lt!207635))))))

(declare-fun lt!207631 () List!4503)

(assert (=> b!464072 (= lt!207631 (list!2004 (BalanceConc!3153 Empty!1572)))))

(declare-fun lt!207606 () List!4503)

(assert (=> b!464072 (= lt!207606 (list!2004 (charsOf!518 (_1!2962 (v!15533 lt!207635)))))))

(declare-fun lt!207614 () List!4503)

(assert (=> b!464072 (= lt!207614 (list!2004 (_2!2962 (v!15533 lt!207635))))))

(declare-fun lt!207633 () Unit!8113)

(assert (=> b!464072 (= lt!207633 (lemmaConcatAssociativity!612 lt!207631 lt!207606 lt!207614))))

(assert (=> b!464072 (= (++!1312 (++!1312 lt!207631 lt!207606) lt!207614) (++!1312 lt!207631 (++!1312 lt!207606 lt!207614)))))

(declare-fun lt!207613 () Unit!8113)

(assert (=> b!464072 (= lt!207613 lt!207633)))

(declare-fun lt!207608 () Option!1185)

(assert (=> b!464072 (= lt!207608 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (seqFromList!1115 lt!205905)))))

(declare-fun c!93490 () Bool)

(assert (=> b!464072 (= c!93490 ((_ is Some!1184) lt!207608))))

(declare-fun e!284329 () tuple2!5494)

(assert (=> b!464072 (= (lexRec!132 thiss!17480 rules!1920 (seqFromList!1115 lt!205905)) e!284329)))

(declare-fun lt!207634 () Unit!8113)

(declare-fun Unit!8171 () Unit!8113)

(assert (=> b!464072 (= lt!207634 Unit!8171)))

(declare-fun lt!207620 () List!4505)

(assert (=> b!464072 (= lt!207620 (list!2005 (BalanceConc!3155 Empty!1573)))))

(declare-fun lt!207628 () List!4505)

(assert (=> b!464072 (= lt!207628 (Cons!4495 (_1!2962 (v!15533 lt!207635)) Nil!4495))))

(declare-fun lt!207622 () List!4505)

(assert (=> b!464072 (= lt!207622 (list!2005 (_1!2963 lt!207621)))))

(declare-fun lt!207612 () Unit!8113)

(assert (=> b!464072 (= lt!207612 (lemmaConcatAssociativity!614 lt!207620 lt!207628 lt!207622))))

(assert (=> b!464072 (= (++!1318 (++!1318 lt!207620 lt!207628) lt!207622) (++!1318 lt!207620 (++!1318 lt!207628 lt!207622)))))

(declare-fun lt!207623 () Unit!8113)

(assert (=> b!464072 (= lt!207623 lt!207612)))

(declare-fun lt!207624 () List!4503)

(assert (=> b!464072 (= lt!207624 (++!1312 (list!2004 (BalanceConc!3153 Empty!1572)) (list!2004 (charsOf!518 (_1!2962 (v!15533 lt!207635))))))))

(declare-fun lt!207604 () List!4503)

(assert (=> b!464072 (= lt!207604 (list!2004 (_2!2962 (v!15533 lt!207635))))))

(declare-fun lt!207607 () List!4505)

(assert (=> b!464072 (= lt!207607 (list!2005 (append!153 (BalanceConc!3155 Empty!1573) (_1!2962 (v!15533 lt!207635)))))))

(declare-fun lt!207603 () Unit!8113)

(assert (=> b!464072 (= lt!207603 (lemmaLexThenLexPrefix!119 thiss!17480 rules!1920 lt!207624 lt!207604 lt!207607 (list!2005 (_1!2963 lt!207621)) (list!2004 (_2!2963 lt!207621))))))

(assert (=> b!464072 (= (lexList!299 thiss!17480 rules!1920 lt!207624) (tuple2!5499 lt!207607 Nil!4493))))

(declare-fun lt!207619 () Unit!8113)

(assert (=> b!464072 (= lt!207619 lt!207603)))

(declare-fun lt!207618 () BalanceConc!3152)

(assert (=> b!464072 (= lt!207618 (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (_1!2962 (v!15533 lt!207635)))))))

(declare-fun lt!207615 () Option!1185)

(assert (=> b!464072 (= lt!207615 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 lt!207618))))

(declare-fun c!93489 () Bool)

(assert (=> b!464072 (= c!93489 ((_ is Some!1184) lt!207615))))

(declare-fun e!284330 () tuple2!5494)

(assert (=> b!464072 (= (lexRec!132 thiss!17480 rules!1920 (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (_1!2962 (v!15533 lt!207635))))) e!284330)))

(declare-fun lt!207627 () Unit!8113)

(declare-fun Unit!8172 () Unit!8113)

(assert (=> b!464072 (= lt!207627 Unit!8172)))

(assert (=> b!464072 (= lt!207625 (++!1314 (BalanceConc!3153 Empty!1572) (charsOf!518 (_1!2962 (v!15533 lt!207635)))))))

(declare-fun lt!207630 () List!4503)

(assert (=> b!464072 (= lt!207630 (list!2004 lt!207625))))

(declare-fun lt!207629 () List!4503)

(assert (=> b!464072 (= lt!207629 (list!2004 (_2!2962 (v!15533 lt!207635))))))

(declare-fun lt!207616 () Unit!8113)

(assert (=> b!464072 (= lt!207616 (lemmaConcatTwoListThenFSndIsSuffix!117 lt!207630 lt!207629))))

(assert (=> b!464072 (isSuffix!117 lt!207629 (++!1312 lt!207630 lt!207629))))

(declare-fun lt!207605 () Unit!8113)

(assert (=> b!464072 (= lt!207605 lt!207616)))

(declare-fun b!464073 () Bool)

(assert (=> b!464073 (= e!284329 (tuple2!5495 (BalanceConc!3155 Empty!1573) (seqFromList!1115 lt!205905)))))

(declare-fun b!464074 () Bool)

(declare-fun lt!207636 () tuple2!5494)

(assert (=> b!464074 (= lt!207636 (lexRec!132 thiss!17480 rules!1920 (_2!2962 (v!15533 lt!207608))))))

(assert (=> b!464074 (= e!284329 (tuple2!5495 (prepend!231 (_1!2963 lt!207636) (_1!2962 (v!15533 lt!207608))) (_2!2963 lt!207636)))))

(declare-fun lt!207611 () tuple2!5494)

(declare-fun b!464075 () Bool)

(assert (=> b!464075 (= lt!207611 (lexRec!132 thiss!17480 rules!1920 (_2!2962 (v!15533 lt!207615))))))

(assert (=> b!464075 (= e!284330 (tuple2!5495 (prepend!231 (_1!2963 lt!207611) (_1!2962 (v!15533 lt!207615))) (_2!2963 lt!207611)))))

(declare-fun d!176975 () Bool)

(declare-fun e!284327 () Bool)

(assert (=> d!176975 e!284327))

(declare-fun res!206545 () Bool)

(assert (=> d!176975 (=> (not res!206545) (not e!284327))))

(declare-fun lt!207617 () tuple2!5494)

(assert (=> d!176975 (= res!206545 (= (list!2005 (_1!2963 lt!207617)) (list!2005 (_1!2963 (lexRec!132 thiss!17480 rules!1920 (seqFromList!1115 lt!205905))))))))

(assert (=> d!176975 (= lt!207617 e!284328)))

(declare-fun c!93491 () Bool)

(assert (=> d!176975 (= c!93491 ((_ is Some!1184) lt!207635))))

(assert (=> d!176975 (= lt!207635 (maxPrefixZipperSequenceV2!117 thiss!17480 rules!1920 (seqFromList!1115 lt!205905) (seqFromList!1115 lt!205905)))))

(declare-fun lt!207610 () Unit!8113)

(declare-fun lt!207632 () Unit!8113)

(assert (=> d!176975 (= lt!207610 lt!207632)))

(declare-fun lt!207626 () List!4503)

(declare-fun lt!207609 () List!4503)

(assert (=> d!176975 (isSuffix!117 lt!207626 (++!1312 lt!207609 lt!207626))))

(assert (=> d!176975 (= lt!207632 (lemmaConcatTwoListThenFSndIsSuffix!117 lt!207609 lt!207626))))

(assert (=> d!176975 (= lt!207626 (list!2004 (seqFromList!1115 lt!205905)))))

(assert (=> d!176975 (= lt!207609 (list!2004 (BalanceConc!3153 Empty!1572)))))

(assert (=> d!176975 (= (lexTailRecV2!264 thiss!17480 rules!1920 (seqFromList!1115 lt!205905) (BalanceConc!3153 Empty!1572) (seqFromList!1115 lt!205905) (BalanceConc!3155 Empty!1573)) lt!207617)))

(declare-fun b!464076 () Bool)

(assert (=> b!464076 (= e!284327 (= (list!2004 (_2!2963 lt!207617)) (list!2004 (_2!2963 (lexRec!132 thiss!17480 rules!1920 (seqFromList!1115 lt!205905))))))))

(declare-fun b!464077 () Bool)

(assert (=> b!464077 (= e!284328 (tuple2!5495 (BalanceConc!3155 Empty!1573) (seqFromList!1115 lt!205905)))))

(declare-fun b!464078 () Bool)

(assert (=> b!464078 (= e!284330 (tuple2!5495 (BalanceConc!3155 Empty!1573) lt!207618))))

(assert (= (and d!176975 c!93491) b!464072))

(assert (= (and d!176975 (not c!93491)) b!464077))

(assert (= (and b!464072 c!93490) b!464074))

(assert (= (and b!464072 (not c!93490)) b!464073))

(assert (= (and b!464072 c!93489) b!464075))

(assert (= (and b!464072 (not c!93489)) b!464078))

(assert (= (and d!176975 res!206545) b!464076))

(declare-fun m!736009 () Bool)

(assert (=> b!464074 m!736009))

(declare-fun m!736011 () Bool)

(assert (=> b!464074 m!736011))

(declare-fun m!736013 () Bool)

(assert (=> d!176975 m!736013))

(assert (=> d!176975 m!729913))

(assert (=> d!176975 m!729913))

(declare-fun m!736015 () Bool)

(assert (=> d!176975 m!736015))

(declare-fun m!736017 () Bool)

(assert (=> d!176975 m!736017))

(declare-fun m!736019 () Bool)

(assert (=> d!176975 m!736019))

(assert (=> d!176975 m!730547))

(assert (=> d!176975 m!729913))

(assert (=> d!176975 m!730007))

(assert (=> d!176975 m!736017))

(declare-fun m!736021 () Bool)

(assert (=> d!176975 m!736021))

(assert (=> d!176975 m!729913))

(declare-fun m!736023 () Bool)

(assert (=> d!176975 m!736023))

(declare-fun m!736025 () Bool)

(assert (=> d!176975 m!736025))

(declare-fun m!736027 () Bool)

(assert (=> b!464076 m!736027))

(assert (=> b!464076 m!729913))

(assert (=> b!464076 m!736023))

(declare-fun m!736029 () Bool)

(assert (=> b!464076 m!736029))

(declare-fun m!736031 () Bool)

(assert (=> b!464075 m!736031))

(declare-fun m!736033 () Bool)

(assert (=> b!464075 m!736033))

(declare-fun m!736035 () Bool)

(assert (=> b!464072 m!736035))

(assert (=> b!464072 m!730547))

(declare-fun m!736037 () Bool)

(assert (=> b!464072 m!736037))

(declare-fun m!736039 () Bool)

(assert (=> b!464072 m!736039))

(assert (=> b!464072 m!736035))

(declare-fun m!736041 () Bool)

(assert (=> b!464072 m!736041))

(declare-fun m!736043 () Bool)

(assert (=> b!464072 m!736043))

(assert (=> b!464072 m!730547))

(declare-fun m!736045 () Bool)

(assert (=> b!464072 m!736045))

(declare-fun m!736047 () Bool)

(assert (=> b!464072 m!736047))

(declare-fun m!736049 () Bool)

(assert (=> b!464072 m!736049))

(declare-fun m!736051 () Bool)

(assert (=> b!464072 m!736051))

(declare-fun m!736053 () Bool)

(assert (=> b!464072 m!736053))

(declare-fun m!736055 () Bool)

(assert (=> b!464072 m!736055))

(declare-fun m!736057 () Bool)

(assert (=> b!464072 m!736057))

(declare-fun m!736059 () Bool)

(assert (=> b!464072 m!736059))

(declare-fun m!736061 () Bool)

(assert (=> b!464072 m!736061))

(assert (=> b!464072 m!729913))

(assert (=> b!464072 m!736023))

(assert (=> b!464072 m!736057))

(declare-fun m!736063 () Bool)

(assert (=> b!464072 m!736063))

(declare-fun m!736065 () Bool)

(assert (=> b!464072 m!736065))

(declare-fun m!736067 () Bool)

(assert (=> b!464072 m!736067))

(declare-fun m!736069 () Bool)

(assert (=> b!464072 m!736069))

(declare-fun m!736071 () Bool)

(assert (=> b!464072 m!736071))

(assert (=> b!464072 m!736061))

(assert (=> b!464072 m!736049))

(declare-fun m!736073 () Bool)

(assert (=> b!464072 m!736073))

(assert (=> b!464072 m!736069))

(declare-fun m!736075 () Bool)

(assert (=> b!464072 m!736075))

(assert (=> b!464072 m!736037))

(assert (=> b!464072 m!735237))

(declare-fun m!736077 () Bool)

(assert (=> b!464072 m!736077))

(assert (=> b!464072 m!736073))

(declare-fun m!736079 () Bool)

(assert (=> b!464072 m!736079))

(assert (=> b!464072 m!729913))

(declare-fun m!736081 () Bool)

(assert (=> b!464072 m!736081))

(declare-fun m!736083 () Bool)

(assert (=> b!464072 m!736083))

(declare-fun m!736085 () Bool)

(assert (=> b!464072 m!736085))

(declare-fun m!736087 () Bool)

(assert (=> b!464072 m!736087))

(assert (=> b!464072 m!729913))

(assert (=> b!464072 m!736035))

(declare-fun m!736089 () Bool)

(assert (=> b!464072 m!736089))

(assert (=> b!464072 m!736059))

(declare-fun m!736091 () Bool)

(assert (=> b!464072 m!736091))

(assert (=> b!464072 m!736065))

(assert (=> b!464072 m!736083))

(declare-fun m!736093 () Bool)

(assert (=> b!464072 m!736093))

(assert (=> b!464072 m!736061))

(assert (=> b!464072 m!736045))

(assert (=> d!175463 d!176975))

(declare-fun d!176977 () Bool)

(assert (=> d!176977 (= (isEmpty!3484 (originalCharacters!918 (h!9892 tokens!465))) ((_ is Nil!4493) (originalCharacters!918 (h!9892 tokens!465))))))

(assert (=> d!175597 d!176977))

(declare-fun d!176979 () Bool)

(assert (=> d!176979 (= (list!2004 (_2!2963 lt!205957)) (list!2009 (c!92854 (_2!2963 lt!205957))))))

(declare-fun bs!57709 () Bool)

(assert (= bs!57709 d!176979))

(declare-fun m!736095 () Bool)

(assert (=> bs!57709 m!736095))

(assert (=> b!461431 d!176979))

(assert (=> b!461431 d!176221))

(assert (=> b!461431 d!175739))

(declare-fun d!176981 () Bool)

(declare-fun lt!207637 () Bool)

(assert (=> d!176981 (= lt!207637 (isEmpty!3484 (list!2004 (_2!2963 lt!206080))))))

(assert (=> d!176981 (= lt!207637 (isEmpty!3494 (c!92854 (_2!2963 lt!206080))))))

(assert (=> d!176981 (= (isEmpty!3492 (_2!2963 lt!206080)) lt!207637)))

(declare-fun bs!57710 () Bool)

(assert (= bs!57710 d!176981))

(declare-fun m!736097 () Bool)

(assert (=> bs!57710 m!736097))

(assert (=> bs!57710 m!736097))

(declare-fun m!736099 () Bool)

(assert (=> bs!57710 m!736099))

(declare-fun m!736101 () Bool)

(assert (=> bs!57710 m!736101))

(assert (=> b!461736 d!176981))

(declare-fun d!176983 () Bool)

(assert (=> d!176983 (= (tail!654 (drop!321 lt!206327 0)) (drop!321 lt!206327 (+ 0 1)))))

(declare-fun lt!207638 () Unit!8113)

(assert (=> d!176983 (= lt!207638 (choose!3481 lt!206327 0))))

(declare-fun e!284331 () Bool)

(assert (=> d!176983 e!284331))

(declare-fun res!206546 () Bool)

(assert (=> d!176983 (=> (not res!206546) (not e!284331))))

(assert (=> d!176983 (= res!206546 (>= 0 0))))

(assert (=> d!176983 (= (lemmaDropTail!284 lt!206327 0) lt!207638)))

(declare-fun b!464079 () Bool)

(assert (=> b!464079 (= e!284331 (< 0 (size!3675 lt!206327)))))

(assert (= (and d!176983 res!206546) b!464079))

(assert (=> d!176983 m!731209))

(assert (=> d!176983 m!731209))

(assert (=> d!176983 m!731227))

(assert (=> d!176983 m!731223))

(declare-fun m!736103 () Bool)

(assert (=> d!176983 m!736103))

(declare-fun m!736105 () Bool)

(assert (=> b!464079 m!736105))

(assert (=> b!462130 d!176983))

(declare-fun d!176985 () Bool)

(assert (=> d!176985 (= (head!1132 (drop!321 lt!206320 0)) (h!9892 (drop!321 lt!206320 0)))))

(assert (=> b!462130 d!176985))

(declare-fun b!464081 () Bool)

(declare-fun res!206548 () Bool)

(declare-fun e!284332 () Bool)

(assert (=> b!464081 (=> (not res!206548) (not e!284332))))

(assert (=> b!464081 (= res!206548 (<= (height!239 (++!1317 (c!92854 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))) (c!92854 lt!206317))) (+ (max!0 (height!239 (c!92854 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)))) (height!239 (c!92854 lt!206317))) 1)))))

(declare-fun b!464080 () Bool)

(declare-fun res!206547 () Bool)

(assert (=> b!464080 (=> (not res!206547) (not e!284332))))

(assert (=> b!464080 (= res!206547 (isBalanced!483 (++!1317 (c!92854 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))) (c!92854 lt!206317))))))

(declare-fun b!464083 () Bool)

(declare-fun lt!207639 () BalanceConc!3152)

(assert (=> b!464083 (= e!284332 (= (list!2004 lt!207639) (++!1312 (list!2004 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))) (list!2004 lt!206317))))))

(declare-fun b!464082 () Bool)

(declare-fun res!206550 () Bool)

(assert (=> b!464082 (=> (not res!206550) (not e!284332))))

(assert (=> b!464082 (= res!206550 (>= (height!239 (++!1317 (c!92854 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))) (c!92854 lt!206317))) (max!0 (height!239 (c!92854 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)))) (height!239 (c!92854 lt!206317)))))))

(declare-fun d!176987 () Bool)

(assert (=> d!176987 e!284332))

(declare-fun res!206549 () Bool)

(assert (=> d!176987 (=> (not res!206549) (not e!284332))))

(assert (=> d!176987 (= res!206549 (appendAssocInst!105 (c!92854 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))) (c!92854 lt!206317)))))

(assert (=> d!176987 (= lt!207639 (BalanceConc!3153 (++!1317 (c!92854 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))) (c!92854 lt!206317))))))

(assert (=> d!176987 (= (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!206317) lt!207639)))

(assert (= (and d!176987 res!206549) b!464080))

(assert (= (and b!464080 res!206547) b!464081))

(assert (= (and b!464081 res!206548) b!464082))

(assert (= (and b!464082 res!206550) b!464083))

(declare-fun m!736107 () Bool)

(assert (=> b!464080 m!736107))

(assert (=> b!464080 m!736107))

(declare-fun m!736109 () Bool)

(assert (=> b!464080 m!736109))

(declare-fun m!736111 () Bool)

(assert (=> d!176987 m!736111))

(assert (=> d!176987 m!736107))

(declare-fun m!736113 () Bool)

(assert (=> b!464081 m!736113))

(assert (=> b!464081 m!732559))

(declare-fun m!736115 () Bool)

(assert (=> b!464081 m!736115))

(assert (=> b!464081 m!736113))

(assert (=> b!464081 m!732559))

(assert (=> b!464081 m!736107))

(declare-fun m!736117 () Bool)

(assert (=> b!464081 m!736117))

(assert (=> b!464081 m!736107))

(declare-fun m!736119 () Bool)

(assert (=> b!464083 m!736119))

(assert (=> b!464083 m!731207))

(declare-fun m!736121 () Bool)

(assert (=> b!464083 m!736121))

(assert (=> b!464083 m!731233))

(assert (=> b!464083 m!736121))

(assert (=> b!464083 m!731233))

(declare-fun m!736123 () Bool)

(assert (=> b!464083 m!736123))

(assert (=> b!464082 m!736113))

(assert (=> b!464082 m!732559))

(assert (=> b!464082 m!736115))

(assert (=> b!464082 m!736113))

(assert (=> b!464082 m!732559))

(assert (=> b!464082 m!736107))

(assert (=> b!464082 m!736117))

(assert (=> b!464082 m!736107))

(assert (=> b!462130 d!176987))

(declare-fun d!176989 () Bool)

(assert (=> d!176989 (dynLambda!2749 lambda!13658 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))))

(declare-fun lt!207640 () Unit!8113)

(assert (=> d!176989 (= lt!207640 (choose!3471 (list!2005 (seqFromList!1116 (t!71885 tokens!465))) lambda!13658 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)))))

(declare-fun e!284333 () Bool)

(assert (=> d!176989 e!284333))

(declare-fun res!206551 () Bool)

(assert (=> d!176989 (=> (not res!206551) (not e!284333))))

(assert (=> d!176989 (= res!206551 (forall!1308 (list!2005 (seqFromList!1116 (t!71885 tokens!465))) lambda!13658))))

(assert (=> d!176989 (= (forallContained!428 (list!2005 (seqFromList!1116 (t!71885 tokens!465))) lambda!13658 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!207640)))

(declare-fun b!464084 () Bool)

(assert (=> b!464084 (= e!284333 (contains!1009 (list!2005 (seqFromList!1116 (t!71885 tokens!465))) (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)))))

(assert (= (and d!176989 res!206551) b!464084))

(declare-fun b_lambda!19331 () Bool)

(assert (=> (not b_lambda!19331) (not d!176989)))

(assert (=> d!176989 m!731187))

(declare-fun m!736125 () Bool)

(assert (=> d!176989 m!736125))

(assert (=> d!176989 m!731197))

(assert (=> d!176989 m!731187))

(declare-fun m!736127 () Bool)

(assert (=> d!176989 m!736127))

(assert (=> d!176989 m!731197))

(declare-fun m!736129 () Bool)

(assert (=> d!176989 m!736129))

(assert (=> b!464084 m!731197))

(assert (=> b!464084 m!731187))

(declare-fun m!736131 () Bool)

(assert (=> b!464084 m!736131))

(assert (=> b!462130 d!176989))

(assert (=> b!462130 d!176945))

(declare-fun bs!57711 () Bool)

(declare-fun d!176991 () Bool)

(assert (= bs!57711 (and d!176991 b!461290)))

(declare-fun lambda!13722 () Int)

(assert (=> bs!57711 (= lambda!13722 lambda!13617)))

(declare-fun bs!57712 () Bool)

(assert (= bs!57712 (and d!176991 b!462105)))

(assert (=> bs!57712 (not (= lambda!13722 lambda!13655))))

(declare-fun bs!57713 () Bool)

(assert (= bs!57713 (and d!176991 b!462542)))

(assert (=> bs!57713 (not (= lambda!13722 lambda!13668))))

(declare-fun bs!57714 () Bool)

(assert (= bs!57714 (and d!176991 b!462992)))

(assert (=> bs!57714 (not (= lambda!13722 lambda!13688))))

(declare-fun bs!57715 () Bool)

(assert (= bs!57715 (and d!176991 b!464034)))

(assert (=> bs!57715 (not (= lambda!13722 lambda!13718))))

(declare-fun bs!57716 () Bool)

(assert (= bs!57716 (and d!176991 d!175507)))

(assert (=> bs!57716 (= lambda!13722 lambda!13634)))

(declare-fun bs!57717 () Bool)

(assert (= bs!57717 (and d!176991 b!461918)))

(assert (=> bs!57717 (not (= lambda!13722 lambda!13652))))

(declare-fun bs!57718 () Bool)

(assert (= bs!57718 (and d!176991 b!462125)))

(assert (=> bs!57718 (not (= lambda!13722 lambda!13656))))

(declare-fun bs!57719 () Bool)

(assert (= bs!57719 (and d!176991 d!176489)))

(assert (=> bs!57719 (= lambda!13722 lambda!13701)))

(declare-fun bs!57720 () Bool)

(assert (= bs!57720 (and d!176991 d!175483)))

(assert (=> bs!57720 (not (= lambda!13722 lambda!13628))))

(declare-fun bs!57721 () Bool)

(assert (= bs!57721 (and d!176991 b!461292)))

(assert (=> bs!57721 (not (= lambda!13722 lambda!13618))))

(declare-fun bs!57722 () Bool)

(assert (= bs!57722 (and d!176991 b!462130)))

(assert (=> bs!57722 (not (= lambda!13722 lambda!13658))))

(declare-fun bs!57723 () Bool)

(assert (= bs!57723 (and d!176991 d!176971)))

(assert (=> bs!57723 (not (= lambda!13722 lambda!13721))))

(declare-fun bs!57724 () Bool)

(assert (= bs!57724 (and d!176991 d!175635)))

(assert (=> bs!57724 (= lambda!13722 lambda!13651)))

(declare-fun bs!57725 () Bool)

(assert (= bs!57725 (and d!176991 d!175745)))

(assert (=> bs!57725 (= lambda!13722 lambda!13657)))

(declare-fun bs!57726 () Bool)

(declare-fun b!464086 () Bool)

(assert (= bs!57726 (and b!464086 b!461290)))

(declare-fun lambda!13723 () Int)

(assert (=> bs!57726 (not (= lambda!13723 lambda!13617))))

(declare-fun bs!57727 () Bool)

(assert (= bs!57727 (and b!464086 b!462105)))

(assert (=> bs!57727 (= lambda!13723 lambda!13655)))

(declare-fun bs!57728 () Bool)

(assert (= bs!57728 (and b!464086 b!462542)))

(assert (=> bs!57728 (= lambda!13723 lambda!13668)))

(declare-fun bs!57729 () Bool)

(assert (= bs!57729 (and b!464086 b!462992)))

(assert (=> bs!57729 (= lambda!13723 lambda!13688)))

(declare-fun bs!57730 () Bool)

(assert (= bs!57730 (and b!464086 b!464034)))

(assert (=> bs!57730 (= lambda!13723 lambda!13718)))

(declare-fun bs!57731 () Bool)

(assert (= bs!57731 (and b!464086 d!175507)))

(assert (=> bs!57731 (not (= lambda!13723 lambda!13634))))

(declare-fun bs!57732 () Bool)

(assert (= bs!57732 (and b!464086 b!461918)))

(assert (=> bs!57732 (= lambda!13723 lambda!13652)))

(declare-fun bs!57733 () Bool)

(assert (= bs!57733 (and b!464086 d!176489)))

(assert (=> bs!57733 (not (= lambda!13723 lambda!13701))))

(declare-fun bs!57734 () Bool)

(assert (= bs!57734 (and b!464086 d!175483)))

(assert (=> bs!57734 (= lambda!13723 lambda!13628)))

(declare-fun bs!57735 () Bool)

(assert (= bs!57735 (and b!464086 b!461292)))

(assert (=> bs!57735 (= lambda!13723 lambda!13618)))

(declare-fun bs!57736 () Bool)

(assert (= bs!57736 (and b!464086 b!462130)))

(assert (=> bs!57736 (= lambda!13723 lambda!13658)))

(declare-fun bs!57737 () Bool)

(assert (= bs!57737 (and b!464086 d!176971)))

(assert (=> bs!57737 (= lambda!13723 lambda!13721)))

(declare-fun bs!57738 () Bool)

(assert (= bs!57738 (and b!464086 d!176991)))

(assert (=> bs!57738 (not (= lambda!13723 lambda!13722))))

(declare-fun bs!57739 () Bool)

(assert (= bs!57739 (and b!464086 b!462125)))

(assert (=> bs!57739 (= lambda!13723 lambda!13656)))

(declare-fun bs!57740 () Bool)

(assert (= bs!57740 (and b!464086 d!175635)))

(assert (=> bs!57740 (not (= lambda!13723 lambda!13651))))

(declare-fun bs!57741 () Bool)

(assert (= bs!57741 (and b!464086 d!175745)))

(assert (=> bs!57741 (not (= lambda!13723 lambda!13657))))

(declare-fun b!464096 () Bool)

(declare-fun e!284342 () Bool)

(assert (=> b!464096 (= e!284342 true)))

(declare-fun b!464095 () Bool)

(declare-fun e!284341 () Bool)

(assert (=> b!464095 (= e!284341 e!284342)))

(declare-fun b!464094 () Bool)

(declare-fun e!284340 () Bool)

(assert (=> b!464094 (= e!284340 e!284341)))

(assert (=> b!464086 e!284340))

(assert (= b!464095 b!464096))

(assert (= b!464094 b!464095))

(assert (= (and b!464086 ((_ is Cons!4494) rules!1920)) b!464094))

(assert (=> b!464096 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13723))))

(assert (=> b!464096 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13723))))

(assert (=> b!464086 true))

(declare-fun bm!32201 () Bool)

(declare-fun call!32210 () Token!1494)

(declare-fun call!32207 () Token!1494)

(assert (=> bm!32201 (= call!32210 call!32207)))

(declare-fun bm!32202 () Bool)

(declare-fun call!32206 () BalanceConc!3152)

(declare-fun c!93493 () Bool)

(assert (=> bm!32202 (= call!32206 (charsOf!518 (ite c!93493 separatorToken!170 call!32210)))))

(declare-fun b!464085 () Bool)

(declare-fun e!284338 () Bool)

(declare-fun lt!207643 () Option!1185)

(assert (=> b!464085 (= e!284338 (= (_1!2962 (v!15533 lt!207643)) (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) (+ 0 1))))))

(declare-fun e!284337 () BalanceConc!3152)

(declare-fun e!284339 () BalanceConc!3152)

(assert (=> b!464086 (= e!284337 e!284339)))

(declare-fun lt!207645 () List!4505)

(assert (=> b!464086 (= lt!207645 (list!2005 (seqFromList!1116 (t!71885 tokens!465))))))

(declare-fun lt!207644 () Unit!8113)

(assert (=> b!464086 (= lt!207644 (lemmaDropApply!292 lt!207645 (+ 0 1)))))

(assert (=> b!464086 (= (head!1132 (drop!321 lt!207645 (+ 0 1))) (apply!1158 lt!207645 (+ 0 1)))))

(declare-fun lt!207651 () Unit!8113)

(assert (=> b!464086 (= lt!207651 lt!207644)))

(declare-fun lt!207652 () List!4505)

(assert (=> b!464086 (= lt!207652 (list!2005 (seqFromList!1116 (t!71885 tokens!465))))))

(declare-fun lt!207653 () Unit!8113)

(assert (=> b!464086 (= lt!207653 (lemmaDropTail!284 lt!207652 (+ 0 1)))))

(assert (=> b!464086 (= (tail!654 (drop!321 lt!207652 (+ 0 1))) (drop!321 lt!207652 (+ 0 1 1)))))

(declare-fun lt!207648 () Unit!8113)

(assert (=> b!464086 (= lt!207648 lt!207653)))

(declare-fun lt!207649 () Unit!8113)

(assert (=> b!464086 (= lt!207649 (forallContained!428 (list!2005 (seqFromList!1116 (t!71885 tokens!465))) lambda!13723 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) (+ 0 1))))))

(declare-fun lt!207642 () BalanceConc!3152)

(assert (=> b!464086 (= lt!207642 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!464086 (= lt!207643 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) (+ 0 1))) lt!207642)))))

(declare-fun res!206553 () Bool)

(assert (=> b!464086 (= res!206553 ((_ is Some!1184) lt!207643))))

(assert (=> b!464086 (=> (not res!206553) (not e!284338))))

(declare-fun c!93492 () Bool)

(assert (=> b!464086 (= c!93492 e!284338)))

(declare-fun b!464087 () Bool)

(declare-fun e!284334 () Bool)

(assert (=> b!464087 (= e!284334 (not (= (_1!2962 (v!15533 lt!207643)) call!32207)))))

(declare-fun b!464088 () Bool)

(assert (=> b!464088 (= c!93493 e!284334)))

(declare-fun res!206552 () Bool)

(assert (=> b!464088 (=> (not res!206552) (not e!284334))))

(assert (=> b!464088 (= res!206552 ((_ is Some!1184) lt!207643))))

(declare-fun e!284336 () BalanceConc!3152)

(assert (=> b!464088 (= e!284339 e!284336)))

(declare-fun call!32208 () BalanceConc!3152)

(declare-fun bm!32203 () Bool)

(declare-fun call!32209 () BalanceConc!3152)

(assert (=> bm!32203 (= call!32208 (++!1314 call!32209 (ite c!93492 lt!207642 call!32206)))))

(declare-fun b!464089 () Bool)

(assert (=> b!464089 (= e!284339 call!32208)))

(declare-fun b!464090 () Bool)

(assert (=> b!464090 (= e!284336 (++!1314 call!32208 lt!207642))))

(declare-fun b!464091 () Bool)

(declare-fun e!284335 () Bool)

(assert (=> b!464091 (= e!284335 (<= (+ 0 1) (size!3672 (seqFromList!1116 (t!71885 tokens!465)))))))

(declare-fun b!464092 () Bool)

(assert (=> b!464092 (= e!284337 (BalanceConc!3153 Empty!1572))))

(declare-fun lt!207641 () BalanceConc!3152)

(assert (=> d!176991 (= (list!2004 lt!207641) (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) (+ 0 1)) separatorToken!170))))

(assert (=> d!176991 (= lt!207641 e!284337)))

(declare-fun c!93494 () Bool)

(assert (=> d!176991 (= c!93494 (>= (+ 0 1) (size!3672 (seqFromList!1116 (t!71885 tokens!465)))))))

(declare-fun lt!207646 () Unit!8113)

(assert (=> d!176991 (= lt!207646 (lemmaContentSubsetPreservesForall!196 (list!2005 (seqFromList!1116 (t!71885 tokens!465))) (dropList!252 (seqFromList!1116 (t!71885 tokens!465)) (+ 0 1)) lambda!13722))))

(assert (=> d!176991 e!284335))

(declare-fun res!206554 () Bool)

(assert (=> d!176991 (=> (not res!206554) (not e!284335))))

(assert (=> d!176991 (= res!206554 (>= (+ 0 1) 0))))

(assert (=> d!176991 (= (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 (+ 0 1)) lt!207641)))

(declare-fun bm!32204 () Bool)

(assert (=> bm!32204 (= call!32207 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) (+ 0 1)))))

(declare-fun bm!32205 () Bool)

(assert (=> bm!32205 (= call!32209 (charsOf!518 (ite c!93492 call!32207 call!32210)))))

(declare-fun b!464093 () Bool)

(assert (=> b!464093 (= e!284336 (BalanceConc!3153 Empty!1572))))

(assert (=> b!464093 (= (print!486 thiss!17480 (singletonSeq!421 call!32210)) (printTailRec!447 thiss!17480 (singletonSeq!421 call!32210) 0 (BalanceConc!3153 Empty!1572)))))

(declare-fun lt!207650 () Unit!8113)

(declare-fun Unit!8175 () Unit!8113)

(assert (=> b!464093 (= lt!207650 Unit!8175)))

(declare-fun lt!207647 () Unit!8113)

(assert (=> b!464093 (= lt!207647 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 (list!2004 call!32206) (list!2004 lt!207642)))))

(assert (=> b!464093 false))

(declare-fun lt!207654 () Unit!8113)

(declare-fun Unit!8176 () Unit!8113)

(assert (=> b!464093 (= lt!207654 Unit!8176)))

(assert (= (and d!176991 res!206554) b!464091))

(assert (= (and d!176991 c!93494) b!464092))

(assert (= (and d!176991 (not c!93494)) b!464086))

(assert (= (and b!464086 res!206553) b!464085))

(assert (= (and b!464086 c!93492) b!464089))

(assert (= (and b!464086 (not c!93492)) b!464088))

(assert (= (and b!464088 res!206552) b!464087))

(assert (= (and b!464088 c!93493) b!464090))

(assert (= (and b!464088 (not c!93493)) b!464093))

(assert (= (or b!464090 b!464093) bm!32201))

(assert (= (or b!464090 b!464093) bm!32202))

(assert (= (or b!464089 bm!32201 b!464087) bm!32204))

(assert (= (or b!464089 b!464090) bm!32205))

(assert (= (or b!464089 b!464090) bm!32203))

(assert (=> bm!32204 m!729933))

(declare-fun m!736133 () Bool)

(assert (=> bm!32204 m!736133))

(declare-fun m!736135 () Bool)

(assert (=> bm!32203 m!736135))

(assert (=> b!464085 m!729933))

(assert (=> b!464085 m!736133))

(assert (=> d!176991 m!729933))

(declare-fun m!736137 () Bool)

(assert (=> d!176991 m!736137))

(assert (=> d!176991 m!736137))

(declare-fun m!736139 () Bool)

(assert (=> d!176991 m!736139))

(assert (=> d!176991 m!729933))

(assert (=> d!176991 m!731195))

(assert (=> d!176991 m!729933))

(assert (=> d!176991 m!731197))

(declare-fun m!736141 () Bool)

(assert (=> d!176991 m!736141))

(assert (=> d!176991 m!731197))

(assert (=> d!176991 m!736137))

(declare-fun m!736143 () Bool)

(assert (=> d!176991 m!736143))

(declare-fun m!736145 () Bool)

(assert (=> b!464086 m!736145))

(declare-fun m!736147 () Bool)

(assert (=> b!464086 m!736147))

(assert (=> b!464086 m!736133))

(declare-fun m!736149 () Bool)

(assert (=> b!464086 m!736149))

(declare-fun m!736151 () Bool)

(assert (=> b!464086 m!736151))

(assert (=> b!464086 m!731197))

(assert (=> b!464086 m!736133))

(declare-fun m!736153 () Bool)

(assert (=> b!464086 m!736153))

(declare-fun m!736155 () Bool)

(assert (=> b!464086 m!736155))

(declare-fun m!736157 () Bool)

(assert (=> b!464086 m!736157))

(assert (=> b!464086 m!736155))

(declare-fun m!736159 () Bool)

(assert (=> b!464086 m!736159))

(assert (=> b!464086 m!729933))

(assert (=> b!464086 m!736133))

(assert (=> b!464086 m!729933))

(declare-fun m!736161 () Bool)

(assert (=> b!464086 m!736161))

(declare-fun m!736163 () Bool)

(assert (=> b!464086 m!736163))

(declare-fun m!736165 () Bool)

(assert (=> b!464086 m!736165))

(assert (=> b!464086 m!729933))

(assert (=> b!464086 m!731197))

(assert (=> b!464086 m!736149))

(assert (=> b!464086 m!736145))

(declare-fun m!736167 () Bool)

(assert (=> b!464086 m!736167))

(assert (=> b!464086 m!736151))

(declare-fun m!736169 () Bool)

(assert (=> b!464086 m!736169))

(declare-fun m!736171 () Bool)

(assert (=> bm!32202 m!736171))

(declare-fun m!736173 () Bool)

(assert (=> b!464093 m!736173))

(assert (=> b!464093 m!736173))

(declare-fun m!736175 () Bool)

(assert (=> b!464093 m!736175))

(declare-fun m!736177 () Bool)

(assert (=> b!464093 m!736177))

(assert (=> b!464093 m!736175))

(declare-fun m!736179 () Bool)

(assert (=> b!464093 m!736179))

(assert (=> b!464093 m!736179))

(declare-fun m!736181 () Bool)

(assert (=> b!464093 m!736181))

(assert (=> b!464093 m!736179))

(declare-fun m!736183 () Bool)

(assert (=> b!464093 m!736183))

(declare-fun m!736185 () Bool)

(assert (=> bm!32205 m!736185))

(declare-fun m!736187 () Bool)

(assert (=> b!464090 m!736187))

(assert (=> b!464091 m!729933))

(assert (=> b!464091 m!731195))

(assert (=> b!462130 d!176991))

(declare-fun b!464097 () Bool)

(declare-fun e!284343 () List!4505)

(assert (=> b!464097 (= e!284343 (drop!321 (t!71885 lt!206327) (- 0 1)))))

(declare-fun b!464098 () Bool)

(declare-fun e!284345 () Int)

(declare-fun call!32211 () Int)

(assert (=> b!464098 (= e!284345 (- call!32211 0))))

(declare-fun b!464099 () Bool)

(declare-fun e!284346 () Int)

(assert (=> b!464099 (= e!284346 call!32211)))

(declare-fun d!176993 () Bool)

(declare-fun e!284347 () Bool)

(assert (=> d!176993 e!284347))

(declare-fun res!206555 () Bool)

(assert (=> d!176993 (=> (not res!206555) (not e!284347))))

(declare-fun lt!207655 () List!4505)

(assert (=> d!176993 (= res!206555 (= ((_ map implies) (content!753 lt!207655) (content!753 lt!206327)) ((as const (InoxSet Token!1494)) true)))))

(declare-fun e!284344 () List!4505)

(assert (=> d!176993 (= lt!207655 e!284344)))

(declare-fun c!93495 () Bool)

(assert (=> d!176993 (= c!93495 ((_ is Nil!4495) lt!206327))))

(assert (=> d!176993 (= (drop!321 lt!206327 0) lt!207655)))

(declare-fun b!464100 () Bool)

(assert (=> b!464100 (= e!284345 0)))

(declare-fun bm!32206 () Bool)

(assert (=> bm!32206 (= call!32211 (size!3675 lt!206327))))

(declare-fun b!464101 () Bool)

(assert (=> b!464101 (= e!284344 e!284343)))

(declare-fun c!93497 () Bool)

(assert (=> b!464101 (= c!93497 (<= 0 0))))

(declare-fun b!464102 () Bool)

(assert (=> b!464102 (= e!284344 Nil!4495)))

(declare-fun b!464103 () Bool)

(assert (=> b!464103 (= e!284347 (= (size!3675 lt!207655) e!284346))))

(declare-fun c!93498 () Bool)

(assert (=> b!464103 (= c!93498 (<= 0 0))))

(declare-fun b!464104 () Bool)

(assert (=> b!464104 (= e!284346 e!284345)))

(declare-fun c!93496 () Bool)

(assert (=> b!464104 (= c!93496 (>= 0 call!32211))))

(declare-fun b!464105 () Bool)

(assert (=> b!464105 (= e!284343 lt!206327)))

(assert (= (and d!176993 c!93495) b!464102))

(assert (= (and d!176993 (not c!93495)) b!464101))

(assert (= (and b!464101 c!93497) b!464105))

(assert (= (and b!464101 (not c!93497)) b!464097))

(assert (= (and d!176993 res!206555) b!464103))

(assert (= (and b!464103 c!93498) b!464099))

(assert (= (and b!464103 (not c!93498)) b!464104))

(assert (= (and b!464104 c!93496) b!464100))

(assert (= (and b!464104 (not c!93496)) b!464098))

(assert (= (or b!464099 b!464104 b!464098) bm!32206))

(declare-fun m!736189 () Bool)

(assert (=> b!464097 m!736189))

(declare-fun m!736191 () Bool)

(assert (=> d!176993 m!736191))

(declare-fun m!736193 () Bool)

(assert (=> d!176993 m!736193))

(assert (=> bm!32206 m!736105))

(declare-fun m!736195 () Bool)

(assert (=> b!464103 m!736195))

(assert (=> b!462130 d!176993))

(declare-fun d!176995 () Bool)

(declare-fun lt!207656 () Token!1494)

(assert (=> d!176995 (contains!1009 lt!206320 lt!207656)))

(declare-fun e!284348 () Token!1494)

(assert (=> d!176995 (= lt!207656 e!284348)))

(declare-fun c!93499 () Bool)

(assert (=> d!176995 (= c!93499 (= 0 0))))

(declare-fun e!284349 () Bool)

(assert (=> d!176995 e!284349))

(declare-fun res!206556 () Bool)

(assert (=> d!176995 (=> (not res!206556) (not e!284349))))

(assert (=> d!176995 (= res!206556 (<= 0 0))))

(assert (=> d!176995 (= (apply!1158 lt!206320 0) lt!207656)))

(declare-fun b!464106 () Bool)

(assert (=> b!464106 (= e!284349 (< 0 (size!3675 lt!206320)))))

(declare-fun b!464107 () Bool)

(assert (=> b!464107 (= e!284348 (head!1132 lt!206320))))

(declare-fun b!464108 () Bool)

(assert (=> b!464108 (= e!284348 (apply!1158 (tail!654 lt!206320) (- 0 1)))))

(assert (= (and d!176995 res!206556) b!464106))

(assert (= (and d!176995 c!93499) b!464107))

(assert (= (and d!176995 (not c!93499)) b!464108))

(declare-fun m!736197 () Bool)

(assert (=> d!176995 m!736197))

(declare-fun m!736199 () Bool)

(assert (=> b!464106 m!736199))

(declare-fun m!736201 () Bool)

(assert (=> b!464107 m!736201))

(declare-fun m!736203 () Bool)

(assert (=> b!464108 m!736203))

(assert (=> b!464108 m!736203))

(declare-fun m!736205 () Bool)

(assert (=> b!464108 m!736205))

(assert (=> b!462130 d!176995))

(declare-fun b!464109 () Bool)

(declare-fun e!284350 () List!4505)

(assert (=> b!464109 (= e!284350 (drop!321 (t!71885 lt!206327) (- (+ 0 1) 1)))))

(declare-fun b!464110 () Bool)

(declare-fun e!284352 () Int)

(declare-fun call!32212 () Int)

(assert (=> b!464110 (= e!284352 (- call!32212 (+ 0 1)))))

(declare-fun b!464111 () Bool)

(declare-fun e!284353 () Int)

(assert (=> b!464111 (= e!284353 call!32212)))

(declare-fun d!176997 () Bool)

(declare-fun e!284354 () Bool)

(assert (=> d!176997 e!284354))

(declare-fun res!206557 () Bool)

(assert (=> d!176997 (=> (not res!206557) (not e!284354))))

(declare-fun lt!207657 () List!4505)

(assert (=> d!176997 (= res!206557 (= ((_ map implies) (content!753 lt!207657) (content!753 lt!206327)) ((as const (InoxSet Token!1494)) true)))))

(declare-fun e!284351 () List!4505)

(assert (=> d!176997 (= lt!207657 e!284351)))

(declare-fun c!93500 () Bool)

(assert (=> d!176997 (= c!93500 ((_ is Nil!4495) lt!206327))))

(assert (=> d!176997 (= (drop!321 lt!206327 (+ 0 1)) lt!207657)))

(declare-fun b!464112 () Bool)

(assert (=> b!464112 (= e!284352 0)))

(declare-fun bm!32207 () Bool)

(assert (=> bm!32207 (= call!32212 (size!3675 lt!206327))))

(declare-fun b!464113 () Bool)

(assert (=> b!464113 (= e!284351 e!284350)))

(declare-fun c!93502 () Bool)

(assert (=> b!464113 (= c!93502 (<= (+ 0 1) 0))))

(declare-fun b!464114 () Bool)

(assert (=> b!464114 (= e!284351 Nil!4495)))

(declare-fun b!464115 () Bool)

(assert (=> b!464115 (= e!284354 (= (size!3675 lt!207657) e!284353))))

(declare-fun c!93503 () Bool)

(assert (=> b!464115 (= c!93503 (<= (+ 0 1) 0))))

(declare-fun b!464116 () Bool)

(assert (=> b!464116 (= e!284353 e!284352)))

(declare-fun c!93501 () Bool)

(assert (=> b!464116 (= c!93501 (>= (+ 0 1) call!32212))))

(declare-fun b!464117 () Bool)

(assert (=> b!464117 (= e!284350 lt!206327)))

(assert (= (and d!176997 c!93500) b!464114))

(assert (= (and d!176997 (not c!93500)) b!464113))

(assert (= (and b!464113 c!93502) b!464117))

(assert (= (and b!464113 (not c!93502)) b!464109))

(assert (= (and d!176997 res!206557) b!464115))

(assert (= (and b!464115 c!93503) b!464111))

(assert (= (and b!464115 (not c!93503)) b!464116))

(assert (= (and b!464116 c!93501) b!464112))

(assert (= (and b!464116 (not c!93501)) b!464110))

(assert (= (or b!464111 b!464116 b!464110) bm!32207))

(declare-fun m!736207 () Bool)

(assert (=> b!464109 m!736207))

(declare-fun m!736209 () Bool)

(assert (=> d!176997 m!736209))

(assert (=> d!176997 m!736193))

(assert (=> bm!32207 m!736105))

(declare-fun m!736211 () Bool)

(assert (=> b!464115 m!736211))

(assert (=> b!462130 d!176997))

(declare-fun d!176999 () Bool)

(assert (=> d!176999 (= (head!1132 (drop!321 lt!206320 0)) (apply!1158 lt!206320 0))))

(declare-fun lt!207658 () Unit!8113)

(assert (=> d!176999 (= lt!207658 (choose!3482 lt!206320 0))))

(declare-fun e!284355 () Bool)

(assert (=> d!176999 e!284355))

(declare-fun res!206558 () Bool)

(assert (=> d!176999 (=> (not res!206558) (not e!284355))))

(assert (=> d!176999 (= res!206558 (>= 0 0))))

(assert (=> d!176999 (= (lemmaDropApply!292 lt!206320 0) lt!207658)))

(declare-fun b!464118 () Bool)

(assert (=> b!464118 (= e!284355 (< 0 (size!3675 lt!206320)))))

(assert (= (and d!176999 res!206558) b!464118))

(assert (=> d!176999 m!731213))

(assert (=> d!176999 m!731213))

(assert (=> d!176999 m!731217))

(assert (=> d!176999 m!731225))

(declare-fun m!736213 () Bool)

(assert (=> d!176999 m!736213))

(assert (=> b!464118 m!736199))

(assert (=> b!462130 d!176999))

(declare-fun b!464119 () Bool)

(declare-fun e!284356 () Bool)

(declare-fun e!284359 () Bool)

(assert (=> b!464119 (= e!284356 e!284359)))

(declare-fun res!206564 () Bool)

(assert (=> b!464119 (=> (not res!206564) (not e!284359))))

(declare-fun lt!207660 () Option!1185)

(assert (=> b!464119 (= res!206564 (= (_1!2962 (get!1654 lt!207660)) (_1!2961 (get!1652 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!206317)))))))))

(declare-fun b!464120 () Bool)

(declare-fun e!284360 () Option!1185)

(declare-fun lt!207663 () Option!1185)

(declare-fun lt!207661 () Option!1185)

(assert (=> b!464120 (= e!284360 (ite (and ((_ is None!1184) lt!207663) ((_ is None!1184) lt!207661)) None!1184 (ite ((_ is None!1184) lt!207661) lt!207663 (ite ((_ is None!1184) lt!207663) lt!207661 (ite (>= (size!3667 (_1!2962 (v!15533 lt!207663))) (size!3667 (_1!2962 (v!15533 lt!207661)))) lt!207663 lt!207661)))))))

(declare-fun call!32213 () Option!1185)

(assert (=> b!464120 (= lt!207663 call!32213)))

(assert (=> b!464120 (= lt!207661 (maxPrefixZipperSequence!440 thiss!17480 (t!71884 rules!1920) (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!206317)))))

(declare-fun b!464121 () Bool)

(declare-fun e!284361 () Bool)

(declare-fun e!284357 () Bool)

(assert (=> b!464121 (= e!284361 e!284357)))

(declare-fun res!206563 () Bool)

(assert (=> b!464121 (=> res!206563 e!284357)))

(assert (=> b!464121 (= res!206563 (not (isDefined!1024 lt!207660)))))

(declare-fun b!464122 () Bool)

(declare-fun e!284358 () Bool)

(assert (=> b!464122 (= e!284358 (= (list!2004 (_2!2962 (get!1654 lt!207660))) (_2!2961 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!206317)))))))))

(declare-fun b!464123 () Bool)

(declare-fun res!206561 () Bool)

(assert (=> b!464123 (=> (not res!206561) (not e!284361))))

(assert (=> b!464123 (= res!206561 e!284356)))

(declare-fun res!206562 () Bool)

(assert (=> b!464123 (=> res!206562 e!284356)))

(assert (=> b!464123 (= res!206562 (not (isDefined!1024 lt!207660)))))

(declare-fun b!464124 () Bool)

(assert (=> b!464124 (= e!284357 e!284358)))

(declare-fun res!206559 () Bool)

(assert (=> b!464124 (=> (not res!206559) (not e!284358))))

(assert (=> b!464124 (= res!206559 (= (_1!2962 (get!1654 lt!207660)) (_1!2961 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!206317)))))))))

(declare-fun bm!32208 () Bool)

(assert (=> bm!32208 (= call!32213 (maxPrefixOneRuleZipperSequence!199 thiss!17480 (h!9891 rules!1920) (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!206317)))))

(declare-fun b!464126 () Bool)

(assert (=> b!464126 (= e!284359 (= (list!2004 (_2!2962 (get!1654 lt!207660))) (_2!2961 (get!1652 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!206317)))))))))

(declare-fun d!177001 () Bool)

(assert (=> d!177001 e!284361))

(declare-fun res!206560 () Bool)

(assert (=> d!177001 (=> (not res!206560) (not e!284361))))

(assert (=> d!177001 (= res!206560 (= (isDefined!1024 lt!207660) (isDefined!1023 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!206317))))))))

(assert (=> d!177001 (= lt!207660 e!284360)))

(declare-fun c!93504 () Bool)

(assert (=> d!177001 (= c!93504 (and ((_ is Cons!4494) rules!1920) ((_ is Nil!4494) (t!71884 rules!1920))))))

(declare-fun lt!207659 () Unit!8113)

(declare-fun lt!207665 () Unit!8113)

(assert (=> d!177001 (= lt!207659 lt!207665)))

(declare-fun lt!207664 () List!4503)

(declare-fun lt!207662 () List!4503)

(assert (=> d!177001 (isPrefix!527 lt!207664 lt!207662)))

(assert (=> d!177001 (= lt!207665 (lemmaIsPrefixRefl!295 lt!207664 lt!207662))))

(assert (=> d!177001 (= lt!207662 (list!2004 (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!206317)))))

(assert (=> d!177001 (= lt!207664 (list!2004 (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!206317)))))

(assert (=> d!177001 (rulesValidInductive!290 thiss!17480 rules!1920)))

(assert (=> d!177001 (= (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (++!1314 (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!206317)) lt!207660)))

(declare-fun b!464125 () Bool)

(assert (=> b!464125 (= e!284360 call!32213)))

(assert (= (and d!177001 c!93504) b!464125))

(assert (= (and d!177001 (not c!93504)) b!464120))

(assert (= (or b!464125 b!464120) bm!32208))

(assert (= (and d!177001 res!206560) b!464123))

(assert (= (and b!464123 (not res!206562)) b!464119))

(assert (= (and b!464119 res!206564) b!464126))

(assert (= (and b!464123 res!206561) b!464121))

(assert (= (and b!464121 (not res!206563)) b!464124))

(assert (= (and b!464124 res!206559) b!464122))

(assert (=> d!177001 m!730215))

(assert (=> d!177001 m!731203))

(declare-fun m!736215 () Bool)

(assert (=> d!177001 m!736215))

(declare-fun m!736217 () Bool)

(assert (=> d!177001 m!736217))

(declare-fun m!736219 () Bool)

(assert (=> d!177001 m!736219))

(declare-fun m!736221 () Bool)

(assert (=> d!177001 m!736221))

(declare-fun m!736223 () Bool)

(assert (=> d!177001 m!736223))

(declare-fun m!736225 () Bool)

(assert (=> d!177001 m!736225))

(assert (=> d!177001 m!736215))

(assert (=> d!177001 m!736219))

(assert (=> b!464121 m!736217))

(assert (=> b!464123 m!736217))

(declare-fun m!736227 () Bool)

(assert (=> b!464126 m!736227))

(assert (=> b!464126 m!731203))

(assert (=> b!464126 m!736215))

(assert (=> b!464126 m!736219))

(declare-fun m!736229 () Bool)

(assert (=> b!464126 m!736229))

(declare-fun m!736231 () Bool)

(assert (=> b!464126 m!736231))

(assert (=> b!464126 m!736215))

(assert (=> b!464126 m!736219))

(assert (=> b!464120 m!731203))

(declare-fun m!736233 () Bool)

(assert (=> b!464120 m!736233))

(assert (=> b!464119 m!736231))

(assert (=> b!464119 m!731203))

(assert (=> b!464119 m!736215))

(assert (=> b!464119 m!736215))

(assert (=> b!464119 m!736219))

(assert (=> b!464119 m!736219))

(assert (=> b!464119 m!736229))

(assert (=> b!464122 m!736227))

(assert (=> b!464122 m!731203))

(assert (=> b!464122 m!736215))

(declare-fun m!736235 () Bool)

(assert (=> b!464122 m!736235))

(declare-fun m!736237 () Bool)

(assert (=> b!464122 m!736237))

(assert (=> b!464122 m!736231))

(assert (=> b!464122 m!736215))

(assert (=> b!464122 m!736235))

(assert (=> b!464124 m!736231))

(assert (=> b!464124 m!731203))

(assert (=> b!464124 m!736215))

(assert (=> b!464124 m!736215))

(assert (=> b!464124 m!736235))

(assert (=> b!464124 m!736235))

(assert (=> b!464124 m!736237))

(assert (=> bm!32208 m!731203))

(declare-fun m!736239 () Bool)

(assert (=> bm!32208 m!736239))

(assert (=> b!462130 d!177001))

(declare-fun d!177003 () Bool)

(assert (=> d!177003 (= (tail!654 (drop!321 lt!206327 0)) (t!71885 (drop!321 lt!206327 0)))))

(assert (=> b!462130 d!177003))

(declare-fun b!464127 () Bool)

(declare-fun e!284362 () List!4505)

(assert (=> b!464127 (= e!284362 (drop!321 (t!71885 lt!206320) (- 0 1)))))

(declare-fun b!464128 () Bool)

(declare-fun e!284364 () Int)

(declare-fun call!32214 () Int)

(assert (=> b!464128 (= e!284364 (- call!32214 0))))

(declare-fun b!464129 () Bool)

(declare-fun e!284365 () Int)

(assert (=> b!464129 (= e!284365 call!32214)))

(declare-fun d!177005 () Bool)

(declare-fun e!284366 () Bool)

(assert (=> d!177005 e!284366))

(declare-fun res!206565 () Bool)

(assert (=> d!177005 (=> (not res!206565) (not e!284366))))

(declare-fun lt!207666 () List!4505)

(assert (=> d!177005 (= res!206565 (= ((_ map implies) (content!753 lt!207666) (content!753 lt!206320)) ((as const (InoxSet Token!1494)) true)))))

(declare-fun e!284363 () List!4505)

(assert (=> d!177005 (= lt!207666 e!284363)))

(declare-fun c!93505 () Bool)

(assert (=> d!177005 (= c!93505 ((_ is Nil!4495) lt!206320))))

(assert (=> d!177005 (= (drop!321 lt!206320 0) lt!207666)))

(declare-fun b!464130 () Bool)

(assert (=> b!464130 (= e!284364 0)))

(declare-fun bm!32209 () Bool)

(assert (=> bm!32209 (= call!32214 (size!3675 lt!206320))))

(declare-fun b!464131 () Bool)

(assert (=> b!464131 (= e!284363 e!284362)))

(declare-fun c!93507 () Bool)

(assert (=> b!464131 (= c!93507 (<= 0 0))))

(declare-fun b!464132 () Bool)

(assert (=> b!464132 (= e!284363 Nil!4495)))

(declare-fun b!464133 () Bool)

(assert (=> b!464133 (= e!284366 (= (size!3675 lt!207666) e!284365))))

(declare-fun c!93508 () Bool)

(assert (=> b!464133 (= c!93508 (<= 0 0))))

(declare-fun b!464134 () Bool)

(assert (=> b!464134 (= e!284365 e!284364)))

(declare-fun c!93506 () Bool)

(assert (=> b!464134 (= c!93506 (>= 0 call!32214))))

(declare-fun b!464135 () Bool)

(assert (=> b!464135 (= e!284362 lt!206320)))

(assert (= (and d!177005 c!93505) b!464132))

(assert (= (and d!177005 (not c!93505)) b!464131))

(assert (= (and b!464131 c!93507) b!464135))

(assert (= (and b!464131 (not c!93507)) b!464127))

(assert (= (and d!177005 res!206565) b!464133))

(assert (= (and b!464133 c!93508) b!464129))

(assert (= (and b!464133 (not c!93508)) b!464134))

(assert (= (and b!464134 c!93506) b!464130))

(assert (= (and b!464134 (not c!93506)) b!464128))

(assert (= (or b!464129 b!464134 b!464128) bm!32209))

(declare-fun m!736241 () Bool)

(assert (=> b!464127 m!736241))

(declare-fun m!736243 () Bool)

(assert (=> d!177005 m!736243))

(declare-fun m!736245 () Bool)

(assert (=> d!177005 m!736245))

(assert (=> bm!32209 m!736199))

(declare-fun m!736247 () Bool)

(assert (=> b!464133 m!736247))

(assert (=> b!462130 d!177005))

(assert (=> b!462130 d!176341))

(declare-fun d!177007 () Bool)

(declare-fun lt!207667 () BalanceConc!3152)

(assert (=> d!177007 (= (list!2004 lt!207667) (originalCharacters!918 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)))))

(assert (=> d!177007 (= lt!207667 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)))) (value!29253 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))))))

(assert (=> d!177007 (= (charsOf!518 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) lt!207667)))

(declare-fun b_lambda!19333 () Bool)

(assert (=> (not b_lambda!19333) (not d!177007)))

(declare-fun t!72267 () Bool)

(declare-fun tb!46421 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))))) t!72267) tb!46421))

(declare-fun b!464136 () Bool)

(declare-fun e!284367 () Bool)

(declare-fun tp!127919 () Bool)

(assert (=> b!464136 (= e!284367 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)))) (value!29253 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))))) tp!127919))))

(declare-fun result!51110 () Bool)

(assert (=> tb!46421 (= result!51110 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)))) (value!29253 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)))) e!284367))))

(assert (= tb!46421 b!464136))

(declare-fun m!736249 () Bool)

(assert (=> b!464136 m!736249))

(declare-fun m!736251 () Bool)

(assert (=> tb!46421 m!736251))

(assert (=> d!177007 t!72267))

(declare-fun b_and!49873 () Bool)

(assert (= b_and!49865 (and (=> t!72267 result!51110) b_and!49873)))

(declare-fun tb!46423 () Bool)

(declare-fun t!72269 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))))) t!72269) tb!46423))

(declare-fun result!51112 () Bool)

(assert (= result!51112 result!51110))

(assert (=> d!177007 t!72269))

(declare-fun b_and!49875 () Bool)

(assert (= b_and!49867 (and (=> t!72269 result!51112) b_and!49875)))

(declare-fun t!72271 () Bool)

(declare-fun tb!46425 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))))) t!72271) tb!46425))

(declare-fun result!51114 () Bool)

(assert (= result!51114 result!51110))

(assert (=> d!177007 t!72271))

(declare-fun b_and!49877 () Bool)

(assert (= b_and!49869 (and (=> t!72271 result!51114) b_and!49877)))

(declare-fun tb!46427 () Bool)

(declare-fun t!72273 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))))) t!72273) tb!46427))

(declare-fun result!51116 () Bool)

(assert (= result!51116 result!51110))

(assert (=> d!177007 t!72273))

(declare-fun b_and!49879 () Bool)

(assert (= b_and!49871 (and (=> t!72273 result!51116) b_and!49879)))

(declare-fun t!72275 () Bool)

(declare-fun tb!46429 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))))) t!72275) tb!46429))

(declare-fun result!51118 () Bool)

(assert (= result!51118 result!51110))

(assert (=> d!177007 t!72275))

(declare-fun b_and!49881 () Bool)

(assert (= b_and!49863 (and (=> t!72275 result!51118) b_and!49881)))

(declare-fun m!736253 () Bool)

(assert (=> d!177007 m!736253))

(declare-fun m!736255 () Bool)

(assert (=> d!177007 m!736255))

(assert (=> b!462130 d!177007))

(declare-fun d!177009 () Bool)

(declare-fun c!93509 () Bool)

(assert (=> d!177009 (= c!93509 ((_ is Nil!4493) lt!205947))))

(declare-fun e!284368 () (InoxSet C!3120))

(assert (=> d!177009 (= (content!752 lt!205947) e!284368)))

(declare-fun b!464137 () Bool)

(assert (=> b!464137 (= e!284368 ((as const (Array C!3120 Bool)) false))))

(declare-fun b!464138 () Bool)

(assert (=> b!464138 (= e!284368 ((_ map or) (store ((as const (Array C!3120 Bool)) false) (h!9890 lt!205947) true) (content!752 (t!71883 lt!205947))))))

(assert (= (and d!177009 c!93509) b!464137))

(assert (= (and d!177009 (not c!93509)) b!464138))

(declare-fun m!736257 () Bool)

(assert (=> b!464138 m!736257))

(declare-fun m!736259 () Bool)

(assert (=> b!464138 m!736259))

(assert (=> d!175499 d!177009))

(assert (=> d!175499 d!176081))

(declare-fun d!177011 () Bool)

(declare-fun c!93510 () Bool)

(assert (=> d!177011 (= c!93510 ((_ is Nil!4493) (_2!2961 lt!205912)))))

(declare-fun e!284369 () (InoxSet C!3120))

(assert (=> d!177011 (= (content!752 (_2!2961 lt!205912)) e!284369)))

(declare-fun b!464139 () Bool)

(assert (=> b!464139 (= e!284369 ((as const (Array C!3120 Bool)) false))))

(declare-fun b!464140 () Bool)

(assert (=> b!464140 (= e!284369 ((_ map or) (store ((as const (Array C!3120 Bool)) false) (h!9890 (_2!2961 lt!205912)) true) (content!752 (t!71883 (_2!2961 lt!205912)))))))

(assert (= (and d!177011 c!93510) b!464139))

(assert (= (and d!177011 (not c!93510)) b!464140))

(declare-fun m!736261 () Bool)

(assert (=> b!464140 m!736261))

(declare-fun m!736263 () Bool)

(assert (=> b!464140 m!736263))

(assert (=> d!175499 d!177011))

(declare-fun d!177013 () Bool)

(declare-fun res!206566 () Bool)

(declare-fun e!284370 () Bool)

(assert (=> d!177013 (=> res!206566 e!284370)))

(assert (=> d!177013 (= res!206566 ((_ is Nil!4495) (t!71885 tokens!465)))))

(assert (=> d!177013 (= (forall!1308 (t!71885 tokens!465) lambda!13617) e!284370)))

(declare-fun b!464141 () Bool)

(declare-fun e!284371 () Bool)

(assert (=> b!464141 (= e!284370 e!284371)))

(declare-fun res!206567 () Bool)

(assert (=> b!464141 (=> (not res!206567) (not e!284371))))

(assert (=> b!464141 (= res!206567 (dynLambda!2749 lambda!13617 (h!9892 (t!71885 tokens!465))))))

(declare-fun b!464142 () Bool)

(assert (=> b!464142 (= e!284371 (forall!1308 (t!71885 (t!71885 tokens!465)) lambda!13617))))

(assert (= (and d!177013 (not res!206566)) b!464141))

(assert (= (and b!464141 res!206567) b!464142))

(declare-fun b_lambda!19335 () Bool)

(assert (=> (not b_lambda!19335) (not b!464141)))

(declare-fun m!736265 () Bool)

(assert (=> b!464141 m!736265))

(declare-fun m!736267 () Bool)

(assert (=> b!464142 m!736267))

(assert (=> b!461644 d!177013))

(declare-fun d!177015 () Bool)

(declare-fun lt!207668 () Int)

(assert (=> d!177015 (= lt!207668 (size!3674 (list!2004 (_2!2963 lt!205932))))))

(assert (=> d!177015 (= lt!207668 (size!3678 (c!92854 (_2!2963 lt!205932))))))

(assert (=> d!177015 (= (size!3673 (_2!2963 lt!205932)) lt!207668)))

(declare-fun bs!57742 () Bool)

(assert (= bs!57742 d!177015))

(assert (=> bs!57742 m!730021))

(assert (=> bs!57742 m!730021))

(declare-fun m!736269 () Bool)

(assert (=> bs!57742 m!736269))

(declare-fun m!736271 () Bool)

(assert (=> bs!57742 m!736271))

(assert (=> b!461370 d!177015))

(declare-fun d!177017 () Bool)

(declare-fun lt!207669 () Int)

(assert (=> d!177017 (= lt!207669 (size!3674 (list!2004 (seqFromList!1115 lt!205905))))))

(assert (=> d!177017 (= lt!207669 (size!3678 (c!92854 (seqFromList!1115 lt!205905))))))

(assert (=> d!177017 (= (size!3673 (seqFromList!1115 lt!205905)) lt!207669)))

(declare-fun bs!57743 () Bool)

(assert (= bs!57743 d!177017))

(assert (=> bs!57743 m!729913))

(assert (=> bs!57743 m!730007))

(assert (=> bs!57743 m!730007))

(assert (=> bs!57743 m!734471))

(declare-fun m!736273 () Bool)

(assert (=> bs!57743 m!736273))

(assert (=> b!461370 d!177017))

(assert (=> bm!32070 d!176241))

(declare-fun lt!207670 () List!4503)

(declare-fun b!464146 () Bool)

(declare-fun e!284373 () Bool)

(assert (=> b!464146 (= e!284373 (or (not (= lt!205914 Nil!4493)) (= lt!207670 (t!71883 lt!205905))))))

(declare-fun b!464143 () Bool)

(declare-fun e!284372 () List!4503)

(assert (=> b!464143 (= e!284372 lt!205914)))

(declare-fun b!464145 () Bool)

(declare-fun res!206569 () Bool)

(assert (=> b!464145 (=> (not res!206569) (not e!284373))))

(assert (=> b!464145 (= res!206569 (= (size!3674 lt!207670) (+ (size!3674 (t!71883 lt!205905)) (size!3674 lt!205914))))))

(declare-fun d!177019 () Bool)

(assert (=> d!177019 e!284373))

(declare-fun res!206568 () Bool)

(assert (=> d!177019 (=> (not res!206568) (not e!284373))))

(assert (=> d!177019 (= res!206568 (= (content!752 lt!207670) ((_ map or) (content!752 (t!71883 lt!205905)) (content!752 lt!205914))))))

(assert (=> d!177019 (= lt!207670 e!284372)))

(declare-fun c!93511 () Bool)

(assert (=> d!177019 (= c!93511 ((_ is Nil!4493) (t!71883 lt!205905)))))

(assert (=> d!177019 (= (++!1312 (t!71883 lt!205905) lt!205914) lt!207670)))

(declare-fun b!464144 () Bool)

(assert (=> b!464144 (= e!284372 (Cons!4493 (h!9890 (t!71883 lt!205905)) (++!1312 (t!71883 (t!71883 lt!205905)) lt!205914)))))

(assert (= (and d!177019 c!93511) b!464143))

(assert (= (and d!177019 (not c!93511)) b!464144))

(assert (= (and d!177019 res!206568) b!464145))

(assert (= (and b!464145 res!206569) b!464146))

(declare-fun m!736275 () Bool)

(assert (=> b!464145 m!736275))

(assert (=> b!464145 m!732447))

(assert (=> b!464145 m!731151))

(declare-fun m!736277 () Bool)

(assert (=> d!177019 m!736277))

(assert (=> d!177019 m!732415))

(assert (=> d!177019 m!731155))

(declare-fun m!736279 () Bool)

(assert (=> b!464144 m!736279))

(assert (=> b!462115 d!177019))

(declare-fun d!177021 () Bool)

(declare-fun lt!207671 () Int)

(assert (=> d!177021 (>= lt!207671 0)))

(declare-fun e!284374 () Int)

(assert (=> d!177021 (= lt!207671 e!284374)))

(declare-fun c!93512 () Bool)

(assert (=> d!177021 (= c!93512 ((_ is Nil!4493) lt!205895))))

(assert (=> d!177021 (= (size!3674 lt!205895) lt!207671)))

(declare-fun b!464147 () Bool)

(assert (=> b!464147 (= e!284374 0)))

(declare-fun b!464148 () Bool)

(assert (=> b!464148 (= e!284374 (+ 1 (size!3674 (t!71883 lt!205895))))))

(assert (= (and d!177021 c!93512) b!464147))

(assert (= (and d!177021 (not c!93512)) b!464148))

(declare-fun m!736281 () Bool)

(assert (=> b!464148 m!736281))

(assert (=> b!461544 d!177021))

(assert (=> b!461544 d!176129))

(declare-fun d!177023 () Bool)

(declare-fun c!93513 () Bool)

(assert (=> d!177023 (= c!93513 ((_ is Nil!4493) lt!206333))))

(declare-fun e!284375 () (InoxSet C!3120))

(assert (=> d!177023 (= (content!752 lt!206333) e!284375)))

(declare-fun b!464149 () Bool)

(assert (=> b!464149 (= e!284375 ((as const (Array C!3120 Bool)) false))))

(declare-fun b!464150 () Bool)

(assert (=> b!464150 (= e!284375 ((_ map or) (store ((as const (Array C!3120 Bool)) false) (h!9890 lt!206333) true) (content!752 (t!71883 lt!206333))))))

(assert (= (and d!177023 c!93513) b!464149))

(assert (= (and d!177023 (not c!93513)) b!464150))

(declare-fun m!736283 () Bool)

(assert (=> b!464150 m!736283))

(declare-fun m!736285 () Bool)

(assert (=> b!464150 m!736285))

(assert (=> d!175749 d!177023))

(assert (=> d!175749 d!176081))

(assert (=> d!175749 d!176969))

(assert (=> d!175605 d!175615))

(declare-fun d!177025 () Bool)

(assert (=> d!177025 (= (list!2005 (singletonSeq!421 (h!9892 tokens!465))) (list!2007 (c!92856 (singletonSeq!421 (h!9892 tokens!465)))))))

(declare-fun bs!57744 () Bool)

(assert (= bs!57744 d!177025))

(declare-fun m!736287 () Bool)

(assert (=> bs!57744 m!736287))

(assert (=> d!175605 d!177025))

(assert (=> d!175605 d!176651))

(declare-fun d!177027 () Bool)

(assert (=> d!177027 (= (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465)))))) (list!2007 (c!92856 (_1!2963 (lex!553 thiss!17480 rules!1920 (print!486 thiss!17480 (singletonSeq!421 (h!9892 tokens!465))))))))))

(declare-fun bs!57745 () Bool)

(assert (= bs!57745 d!177027))

(declare-fun m!736289 () Bool)

(assert (=> bs!57745 m!736289))

(assert (=> d!175605 d!177027))

(assert (=> d!175605 d!175759))

(declare-fun d!177029 () Bool)

(declare-fun lt!207672 () Int)

(assert (=> d!177029 (= lt!207672 (size!3675 (list!2005 (_1!2963 lt!206080))))))

(assert (=> d!177029 (= lt!207672 (size!3677 (c!92856 (_1!2963 lt!206080))))))

(assert (=> d!177029 (= (size!3672 (_1!2963 lt!206080)) lt!207672)))

(declare-fun bs!57746 () Bool)

(assert (= bs!57746 d!177029))

(declare-fun m!736291 () Bool)

(assert (=> bs!57746 m!736291))

(assert (=> bs!57746 m!736291))

(declare-fun m!736293 () Bool)

(assert (=> bs!57746 m!736293))

(declare-fun m!736295 () Bool)

(assert (=> bs!57746 m!736295))

(assert (=> d!175605 d!177029))

(assert (=> d!175605 d!176653))

(assert (=> b!461577 d!176109))

(assert (=> b!461577 d!176111))

(assert (=> b!461577 d!176029))

(declare-fun d!177031 () Bool)

(declare-fun res!206570 () Bool)

(declare-fun e!284376 () Bool)

(assert (=> d!177031 (=> res!206570 e!284376)))

(assert (=> d!177031 (= res!206570 ((_ is Nil!4495) lt!206062))))

(assert (=> d!177031 (= (forall!1308 lt!206062 lambda!13617) e!284376)))

(declare-fun b!464151 () Bool)

(declare-fun e!284377 () Bool)

(assert (=> b!464151 (= e!284376 e!284377)))

(declare-fun res!206571 () Bool)

(assert (=> b!464151 (=> (not res!206571) (not e!284377))))

(assert (=> b!464151 (= res!206571 (dynLambda!2749 lambda!13617 (h!9892 lt!206062)))))

(declare-fun b!464152 () Bool)

(assert (=> b!464152 (= e!284377 (forall!1308 (t!71885 lt!206062) lambda!13617))))

(assert (= (and d!177031 (not res!206570)) b!464151))

(assert (= (and b!464151 res!206571) b!464152))

(declare-fun b_lambda!19337 () Bool)

(assert (=> (not b_lambda!19337) (not b!464151)))

(declare-fun m!736297 () Bool)

(assert (=> b!464151 m!736297))

(declare-fun m!736299 () Bool)

(assert (=> b!464152 m!736299))

(assert (=> b!461648 d!177031))

(declare-fun bs!57747 () Bool)

(declare-fun d!177033 () Bool)

(assert (= bs!57747 (and d!177033 d!176121)))

(declare-fun lambda!13724 () Int)

(assert (=> bs!57747 (= (= (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toValue!1694 (transformation!875 (rule!1570 separatorToken!170)))) (= lambda!13724 lambda!13681))))

(declare-fun bs!57748 () Bool)

(assert (= bs!57748 (and d!177033 d!176641)))

(assert (=> bs!57748 (= (= (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (= lambda!13724 lambda!13702))))

(assert (=> d!177033 true))

(assert (=> d!177033 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465))))) (dynLambda!2754 order!4021 lambda!13724))))

(assert (=> d!177033 (= (equivClasses!332 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toValue!1694 (transformation!875 (rule!1570 (h!9892 tokens!465))))) (Forall2!190 lambda!13724))))

(declare-fun bs!57749 () Bool)

(assert (= bs!57749 d!177033))

(declare-fun m!736301 () Bool)

(assert (=> bs!57749 m!736301))

(assert (=> b!461569 d!177033))

(assert (=> b!461718 d!176131))

(declare-fun d!177035 () Bool)

(assert (=> d!177035 (= (head!1132 (drop!321 lt!206238 0)) (apply!1158 lt!206238 0))))

(declare-fun lt!207673 () Unit!8113)

(assert (=> d!177035 (= lt!207673 (choose!3482 lt!206238 0))))

(declare-fun e!284378 () Bool)

(assert (=> d!177035 e!284378))

(declare-fun res!206572 () Bool)

(assert (=> d!177035 (=> (not res!206572) (not e!284378))))

(assert (=> d!177035 (= res!206572 (>= 0 0))))

(assert (=> d!177035 (= (lemmaDropApply!292 lt!206238 0) lt!207673)))

(declare-fun b!464153 () Bool)

(assert (=> b!464153 (= e!284378 (< 0 (size!3675 lt!206238)))))

(assert (= (and d!177035 res!206572) b!464153))

(assert (=> d!177035 m!730909))

(assert (=> d!177035 m!730909))

(assert (=> d!177035 m!730913))

(assert (=> d!177035 m!730921))

(declare-fun m!736303 () Bool)

(assert (=> d!177035 m!736303))

(declare-fun m!736305 () Bool)

(assert (=> b!464153 m!736305))

(assert (=> b!461918 d!177035))

(declare-fun d!177037 () Bool)

(assert (=> d!177037 (= (tail!654 (drop!321 lt!206245 0)) (t!71885 (drop!321 lt!206245 0)))))

(assert (=> b!461918 d!177037))

(declare-fun d!177039 () Bool)

(assert (=> d!177039 (= (head!1132 (drop!321 lt!206238 0)) (h!9892 (drop!321 lt!206238 0)))))

(assert (=> b!461918 d!177039))

(declare-fun b!464155 () Bool)

(declare-fun res!206574 () Bool)

(declare-fun e!284379 () Bool)

(assert (=> b!464155 (=> (not res!206574) (not e!284379))))

(assert (=> b!464155 (= res!206574 (<= (height!239 (++!1317 (c!92854 (charsOf!518 (apply!1157 lt!205904 0))) (c!92854 lt!206235))) (+ (max!0 (height!239 (c!92854 (charsOf!518 (apply!1157 lt!205904 0)))) (height!239 (c!92854 lt!206235))) 1)))))

(declare-fun b!464154 () Bool)

(declare-fun res!206573 () Bool)

(assert (=> b!464154 (=> (not res!206573) (not e!284379))))

(assert (=> b!464154 (= res!206573 (isBalanced!483 (++!1317 (c!92854 (charsOf!518 (apply!1157 lt!205904 0))) (c!92854 lt!206235))))))

(declare-fun b!464157 () Bool)

(declare-fun lt!207674 () BalanceConc!3152)

(assert (=> b!464157 (= e!284379 (= (list!2004 lt!207674) (++!1312 (list!2004 (charsOf!518 (apply!1157 lt!205904 0))) (list!2004 lt!206235))))))

(declare-fun b!464156 () Bool)

(declare-fun res!206576 () Bool)

(assert (=> b!464156 (=> (not res!206576) (not e!284379))))

(assert (=> b!464156 (= res!206576 (>= (height!239 (++!1317 (c!92854 (charsOf!518 (apply!1157 lt!205904 0))) (c!92854 lt!206235))) (max!0 (height!239 (c!92854 (charsOf!518 (apply!1157 lt!205904 0)))) (height!239 (c!92854 lt!206235)))))))

(declare-fun d!177041 () Bool)

(assert (=> d!177041 e!284379))

(declare-fun res!206575 () Bool)

(assert (=> d!177041 (=> (not res!206575) (not e!284379))))

(assert (=> d!177041 (= res!206575 (appendAssocInst!105 (c!92854 (charsOf!518 (apply!1157 lt!205904 0))) (c!92854 lt!206235)))))

(assert (=> d!177041 (= lt!207674 (BalanceConc!3153 (++!1317 (c!92854 (charsOf!518 (apply!1157 lt!205904 0))) (c!92854 lt!206235))))))

(assert (=> d!177041 (= (++!1314 (charsOf!518 (apply!1157 lt!205904 0)) lt!206235) lt!207674)))

(assert (= (and d!177041 res!206575) b!464154))

(assert (= (and b!464154 res!206573) b!464155))

(assert (= (and b!464155 res!206574) b!464156))

(assert (= (and b!464156 res!206576) b!464157))

(declare-fun m!736307 () Bool)

(assert (=> b!464154 m!736307))

(assert (=> b!464154 m!736307))

(declare-fun m!736309 () Bool)

(assert (=> b!464154 m!736309))

(declare-fun m!736311 () Bool)

(assert (=> d!177041 m!736311))

(assert (=> d!177041 m!736307))

(declare-fun m!736313 () Bool)

(assert (=> b!464155 m!736313))

(assert (=> b!464155 m!732587))

(declare-fun m!736315 () Bool)

(assert (=> b!464155 m!736315))

(assert (=> b!464155 m!736313))

(assert (=> b!464155 m!732587))

(assert (=> b!464155 m!736307))

(declare-fun m!736317 () Bool)

(assert (=> b!464155 m!736317))

(assert (=> b!464155 m!736307))

(declare-fun m!736319 () Bool)

(assert (=> b!464157 m!736319))

(assert (=> b!464157 m!730903))

(declare-fun m!736321 () Bool)

(assert (=> b!464157 m!736321))

(assert (=> b!464157 m!730929))

(assert (=> b!464157 m!736321))

(assert (=> b!464157 m!730929))

(declare-fun m!736323 () Bool)

(assert (=> b!464157 m!736323))

(assert (=> b!464156 m!736313))

(assert (=> b!464156 m!732587))

(assert (=> b!464156 m!736315))

(assert (=> b!464156 m!736313))

(assert (=> b!464156 m!732587))

(assert (=> b!464156 m!736307))

(assert (=> b!464156 m!736317))

(assert (=> b!464156 m!736307))

(assert (=> b!461918 d!177041))

(assert (=> b!461918 d!175983))

(declare-fun d!177043 () Bool)

(declare-fun lt!207675 () Token!1494)

(assert (=> d!177043 (contains!1009 lt!206238 lt!207675)))

(declare-fun e!284380 () Token!1494)

(assert (=> d!177043 (= lt!207675 e!284380)))

(declare-fun c!93514 () Bool)

(assert (=> d!177043 (= c!93514 (= 0 0))))

(declare-fun e!284381 () Bool)

(assert (=> d!177043 e!284381))

(declare-fun res!206577 () Bool)

(assert (=> d!177043 (=> (not res!206577) (not e!284381))))

(assert (=> d!177043 (= res!206577 (<= 0 0))))

(assert (=> d!177043 (= (apply!1158 lt!206238 0) lt!207675)))

(declare-fun b!464158 () Bool)

(assert (=> b!464158 (= e!284381 (< 0 (size!3675 lt!206238)))))

(declare-fun b!464159 () Bool)

(assert (=> b!464159 (= e!284380 (head!1132 lt!206238))))

(declare-fun b!464160 () Bool)

(assert (=> b!464160 (= e!284380 (apply!1158 (tail!654 lt!206238) (- 0 1)))))

(assert (= (and d!177043 res!206577) b!464158))

(assert (= (and d!177043 c!93514) b!464159))

(assert (= (and d!177043 (not c!93514)) b!464160))

(declare-fun m!736325 () Bool)

(assert (=> d!177043 m!736325))

(assert (=> b!464158 m!736305))

(declare-fun m!736327 () Bool)

(assert (=> b!464159 m!736327))

(declare-fun m!736329 () Bool)

(assert (=> b!464160 m!736329))

(assert (=> b!464160 m!736329))

(declare-fun m!736331 () Bool)

(assert (=> b!464160 m!736331))

(assert (=> b!461918 d!177043))

(declare-fun d!177045 () Bool)

(assert (=> d!177045 (dynLambda!2749 lambda!13652 (apply!1157 lt!205904 0))))

(declare-fun lt!207676 () Unit!8113)

(assert (=> d!177045 (= lt!207676 (choose!3471 (list!2005 lt!205904) lambda!13652 (apply!1157 lt!205904 0)))))

(declare-fun e!284382 () Bool)

(assert (=> d!177045 e!284382))

(declare-fun res!206578 () Bool)

(assert (=> d!177045 (=> (not res!206578) (not e!284382))))

(assert (=> d!177045 (= res!206578 (forall!1308 (list!2005 lt!205904) lambda!13652))))

(assert (=> d!177045 (= (forallContained!428 (list!2005 lt!205904) lambda!13652 (apply!1157 lt!205904 0)) lt!207676)))

(declare-fun b!464161 () Bool)

(assert (=> b!464161 (= e!284382 (contains!1009 (list!2005 lt!205904) (apply!1157 lt!205904 0)))))

(assert (= (and d!177045 res!206578) b!464161))

(declare-fun b_lambda!19339 () Bool)

(assert (=> (not b_lambda!19339) (not d!177045)))

(assert (=> d!177045 m!730885))

(declare-fun m!736333 () Bool)

(assert (=> d!177045 m!736333))

(assert (=> d!177045 m!730059))

(assert (=> d!177045 m!730885))

(declare-fun m!736335 () Bool)

(assert (=> d!177045 m!736335))

(assert (=> d!177045 m!730059))

(declare-fun m!736337 () Bool)

(assert (=> d!177045 m!736337))

(assert (=> b!464161 m!730059))

(assert (=> b!464161 m!730885))

(declare-fun m!736339 () Bool)

(assert (=> b!464161 m!736339))

(assert (=> b!461918 d!177045))

(assert (=> b!461918 d!176455))

(declare-fun b!464162 () Bool)

(declare-fun e!284383 () Bool)

(declare-fun e!284386 () Bool)

(assert (=> b!464162 (= e!284383 e!284386)))

(declare-fun res!206584 () Bool)

(assert (=> b!464162 (=> (not res!206584) (not e!284386))))

(declare-fun lt!207678 () Option!1185)

(assert (=> b!464162 (= res!206584 (= (_1!2962 (get!1654 lt!207678)) (_1!2961 (get!1652 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (++!1314 (charsOf!518 (apply!1157 lt!205904 0)) lt!206235)))))))))

(declare-fun b!464163 () Bool)

(declare-fun e!284387 () Option!1185)

(declare-fun lt!207681 () Option!1185)

(declare-fun lt!207679 () Option!1185)

(assert (=> b!464163 (= e!284387 (ite (and ((_ is None!1184) lt!207681) ((_ is None!1184) lt!207679)) None!1184 (ite ((_ is None!1184) lt!207679) lt!207681 (ite ((_ is None!1184) lt!207681) lt!207679 (ite (>= (size!3667 (_1!2962 (v!15533 lt!207681))) (size!3667 (_1!2962 (v!15533 lt!207679)))) lt!207681 lt!207679)))))))

(declare-fun call!32215 () Option!1185)

(assert (=> b!464163 (= lt!207681 call!32215)))

(assert (=> b!464163 (= lt!207679 (maxPrefixZipperSequence!440 thiss!17480 (t!71884 rules!1920) (++!1314 (charsOf!518 (apply!1157 lt!205904 0)) lt!206235)))))

(declare-fun b!464164 () Bool)

(declare-fun e!284388 () Bool)

(declare-fun e!284384 () Bool)

(assert (=> b!464164 (= e!284388 e!284384)))

(declare-fun res!206583 () Bool)

(assert (=> b!464164 (=> res!206583 e!284384)))

(assert (=> b!464164 (= res!206583 (not (isDefined!1024 lt!207678)))))

(declare-fun b!464165 () Bool)

(declare-fun e!284385 () Bool)

(assert (=> b!464165 (= e!284385 (= (list!2004 (_2!2962 (get!1654 lt!207678))) (_2!2961 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 (++!1314 (charsOf!518 (apply!1157 lt!205904 0)) lt!206235)))))))))

(declare-fun b!464166 () Bool)

(declare-fun res!206581 () Bool)

(assert (=> b!464166 (=> (not res!206581) (not e!284388))))

(assert (=> b!464166 (= res!206581 e!284383)))

(declare-fun res!206582 () Bool)

(assert (=> b!464166 (=> res!206582 e!284383)))

(assert (=> b!464166 (= res!206582 (not (isDefined!1024 lt!207678)))))

(declare-fun b!464167 () Bool)

(assert (=> b!464167 (= e!284384 e!284385)))

(declare-fun res!206579 () Bool)

(assert (=> b!464167 (=> (not res!206579) (not e!284385))))

(assert (=> b!464167 (= res!206579 (= (_1!2962 (get!1654 lt!207678)) (_1!2961 (get!1652 (maxPrefix!477 thiss!17480 rules!1920 (list!2004 (++!1314 (charsOf!518 (apply!1157 lt!205904 0)) lt!206235)))))))))

(declare-fun bm!32210 () Bool)

(assert (=> bm!32210 (= call!32215 (maxPrefixOneRuleZipperSequence!199 thiss!17480 (h!9891 rules!1920) (++!1314 (charsOf!518 (apply!1157 lt!205904 0)) lt!206235)))))

(declare-fun b!464169 () Bool)

(assert (=> b!464169 (= e!284386 (= (list!2004 (_2!2962 (get!1654 lt!207678))) (_2!2961 (get!1652 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (++!1314 (charsOf!518 (apply!1157 lt!205904 0)) lt!206235)))))))))

(declare-fun d!177047 () Bool)

(assert (=> d!177047 e!284388))

(declare-fun res!206580 () Bool)

(assert (=> d!177047 (=> (not res!206580) (not e!284388))))

(assert (=> d!177047 (= res!206580 (= (isDefined!1024 lt!207678) (isDefined!1023 (maxPrefixZipper!198 thiss!17480 rules!1920 (list!2004 (++!1314 (charsOf!518 (apply!1157 lt!205904 0)) lt!206235))))))))

(assert (=> d!177047 (= lt!207678 e!284387)))

(declare-fun c!93515 () Bool)

(assert (=> d!177047 (= c!93515 (and ((_ is Cons!4494) rules!1920) ((_ is Nil!4494) (t!71884 rules!1920))))))

(declare-fun lt!207677 () Unit!8113)

(declare-fun lt!207683 () Unit!8113)

(assert (=> d!177047 (= lt!207677 lt!207683)))

(declare-fun lt!207682 () List!4503)

(declare-fun lt!207680 () List!4503)

(assert (=> d!177047 (isPrefix!527 lt!207682 lt!207680)))

(assert (=> d!177047 (= lt!207683 (lemmaIsPrefixRefl!295 lt!207682 lt!207680))))

(assert (=> d!177047 (= lt!207680 (list!2004 (++!1314 (charsOf!518 (apply!1157 lt!205904 0)) lt!206235)))))

(assert (=> d!177047 (= lt!207682 (list!2004 (++!1314 (charsOf!518 (apply!1157 lt!205904 0)) lt!206235)))))

(assert (=> d!177047 (rulesValidInductive!290 thiss!17480 rules!1920)))

(assert (=> d!177047 (= (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (++!1314 (charsOf!518 (apply!1157 lt!205904 0)) lt!206235)) lt!207678)))

(declare-fun b!464168 () Bool)

(assert (=> b!464168 (= e!284387 call!32215)))

(assert (= (and d!177047 c!93515) b!464168))

(assert (= (and d!177047 (not c!93515)) b!464163))

(assert (= (or b!464168 b!464163) bm!32210))

(assert (= (and d!177047 res!206580) b!464166))

(assert (= (and b!464166 (not res!206582)) b!464162))

(assert (= (and b!464162 res!206584) b!464169))

(assert (= (and b!464166 res!206581) b!464164))

(assert (= (and b!464164 (not res!206583)) b!464167))

(assert (= (and b!464167 res!206579) b!464165))

(assert (=> d!177047 m!730215))

(assert (=> d!177047 m!730899))

(declare-fun m!736341 () Bool)

(assert (=> d!177047 m!736341))

(declare-fun m!736343 () Bool)

(assert (=> d!177047 m!736343))

(declare-fun m!736345 () Bool)

(assert (=> d!177047 m!736345))

(declare-fun m!736347 () Bool)

(assert (=> d!177047 m!736347))

(declare-fun m!736349 () Bool)

(assert (=> d!177047 m!736349))

(declare-fun m!736351 () Bool)

(assert (=> d!177047 m!736351))

(assert (=> d!177047 m!736341))

(assert (=> d!177047 m!736345))

(assert (=> b!464164 m!736343))

(assert (=> b!464166 m!736343))

(declare-fun m!736353 () Bool)

(assert (=> b!464169 m!736353))

(assert (=> b!464169 m!730899))

(assert (=> b!464169 m!736341))

(assert (=> b!464169 m!736345))

(declare-fun m!736355 () Bool)

(assert (=> b!464169 m!736355))

(declare-fun m!736357 () Bool)

(assert (=> b!464169 m!736357))

(assert (=> b!464169 m!736341))

(assert (=> b!464169 m!736345))

(assert (=> b!464163 m!730899))

(declare-fun m!736359 () Bool)

(assert (=> b!464163 m!736359))

(assert (=> b!464162 m!736357))

(assert (=> b!464162 m!730899))

(assert (=> b!464162 m!736341))

(assert (=> b!464162 m!736341))

(assert (=> b!464162 m!736345))

(assert (=> b!464162 m!736345))

(assert (=> b!464162 m!736355))

(assert (=> b!464165 m!736353))

(assert (=> b!464165 m!730899))

(assert (=> b!464165 m!736341))

(declare-fun m!736361 () Bool)

(assert (=> b!464165 m!736361))

(declare-fun m!736363 () Bool)

(assert (=> b!464165 m!736363))

(assert (=> b!464165 m!736357))

(assert (=> b!464165 m!736341))

(assert (=> b!464165 m!736361))

(assert (=> b!464167 m!736357))

(assert (=> b!464167 m!730899))

(assert (=> b!464167 m!736341))

(assert (=> b!464167 m!736341))

(assert (=> b!464167 m!736361))

(assert (=> b!464167 m!736361))

(assert (=> b!464167 m!736363))

(assert (=> bm!32210 m!730899))

(declare-fun m!736365 () Bool)

(assert (=> bm!32210 m!736365))

(assert (=> b!461918 d!177047))

(declare-fun b!464170 () Bool)

(declare-fun e!284389 () List!4505)

(assert (=> b!464170 (= e!284389 (drop!321 (t!71885 lt!206245) (- (+ 0 1) 1)))))

(declare-fun b!464171 () Bool)

(declare-fun e!284391 () Int)

(declare-fun call!32216 () Int)

(assert (=> b!464171 (= e!284391 (- call!32216 (+ 0 1)))))

(declare-fun b!464172 () Bool)

(declare-fun e!284392 () Int)

(assert (=> b!464172 (= e!284392 call!32216)))

(declare-fun d!177049 () Bool)

(declare-fun e!284393 () Bool)

(assert (=> d!177049 e!284393))

(declare-fun res!206585 () Bool)

(assert (=> d!177049 (=> (not res!206585) (not e!284393))))

(declare-fun lt!207684 () List!4505)

(assert (=> d!177049 (= res!206585 (= ((_ map implies) (content!753 lt!207684) (content!753 lt!206245)) ((as const (InoxSet Token!1494)) true)))))

(declare-fun e!284390 () List!4505)

(assert (=> d!177049 (= lt!207684 e!284390)))

(declare-fun c!93516 () Bool)

(assert (=> d!177049 (= c!93516 ((_ is Nil!4495) lt!206245))))

(assert (=> d!177049 (= (drop!321 lt!206245 (+ 0 1)) lt!207684)))

(declare-fun b!464173 () Bool)

(assert (=> b!464173 (= e!284391 0)))

(declare-fun bm!32211 () Bool)

(assert (=> bm!32211 (= call!32216 (size!3675 lt!206245))))

(declare-fun b!464174 () Bool)

(assert (=> b!464174 (= e!284390 e!284389)))

(declare-fun c!93518 () Bool)

(assert (=> b!464174 (= c!93518 (<= (+ 0 1) 0))))

(declare-fun b!464175 () Bool)

(assert (=> b!464175 (= e!284390 Nil!4495)))

(declare-fun b!464176 () Bool)

(assert (=> b!464176 (= e!284393 (= (size!3675 lt!207684) e!284392))))

(declare-fun c!93519 () Bool)

(assert (=> b!464176 (= c!93519 (<= (+ 0 1) 0))))

(declare-fun b!464177 () Bool)

(assert (=> b!464177 (= e!284392 e!284391)))

(declare-fun c!93517 () Bool)

(assert (=> b!464177 (= c!93517 (>= (+ 0 1) call!32216))))

(declare-fun b!464178 () Bool)

(assert (=> b!464178 (= e!284389 lt!206245)))

(assert (= (and d!177049 c!93516) b!464175))

(assert (= (and d!177049 (not c!93516)) b!464174))

(assert (= (and b!464174 c!93518) b!464178))

(assert (= (and b!464174 (not c!93518)) b!464170))

(assert (= (and d!177049 res!206585) b!464176))

(assert (= (and b!464176 c!93519) b!464172))

(assert (= (and b!464176 (not c!93519)) b!464177))

(assert (= (and b!464177 c!93517) b!464173))

(assert (= (and b!464177 (not c!93517)) b!464171))

(assert (= (or b!464172 b!464177 b!464171) bm!32211))

(declare-fun m!736367 () Bool)

(assert (=> b!464170 m!736367))

(declare-fun m!736369 () Bool)

(assert (=> d!177049 m!736369))

(declare-fun m!736371 () Bool)

(assert (=> d!177049 m!736371))

(declare-fun m!736373 () Bool)

(assert (=> bm!32211 m!736373))

(declare-fun m!736375 () Bool)

(assert (=> b!464176 m!736375))

(assert (=> b!461918 d!177049))

(declare-fun b!464179 () Bool)

(declare-fun e!284394 () List!4505)

(assert (=> b!464179 (= e!284394 (drop!321 (t!71885 lt!206238) (- 0 1)))))

(declare-fun b!464180 () Bool)

(declare-fun e!284396 () Int)

(declare-fun call!32217 () Int)

(assert (=> b!464180 (= e!284396 (- call!32217 0))))

(declare-fun b!464181 () Bool)

(declare-fun e!284397 () Int)

(assert (=> b!464181 (= e!284397 call!32217)))

(declare-fun d!177051 () Bool)

(declare-fun e!284398 () Bool)

(assert (=> d!177051 e!284398))

(declare-fun res!206586 () Bool)

(assert (=> d!177051 (=> (not res!206586) (not e!284398))))

(declare-fun lt!207685 () List!4505)

(assert (=> d!177051 (= res!206586 (= ((_ map implies) (content!753 lt!207685) (content!753 lt!206238)) ((as const (InoxSet Token!1494)) true)))))

(declare-fun e!284395 () List!4505)

(assert (=> d!177051 (= lt!207685 e!284395)))

(declare-fun c!93520 () Bool)

(assert (=> d!177051 (= c!93520 ((_ is Nil!4495) lt!206238))))

(assert (=> d!177051 (= (drop!321 lt!206238 0) lt!207685)))

(declare-fun b!464182 () Bool)

(assert (=> b!464182 (= e!284396 0)))

(declare-fun bm!32212 () Bool)

(assert (=> bm!32212 (= call!32217 (size!3675 lt!206238))))

(declare-fun b!464183 () Bool)

(assert (=> b!464183 (= e!284395 e!284394)))

(declare-fun c!93522 () Bool)

(assert (=> b!464183 (= c!93522 (<= 0 0))))

(declare-fun b!464184 () Bool)

(assert (=> b!464184 (= e!284395 Nil!4495)))

(declare-fun b!464185 () Bool)

(assert (=> b!464185 (= e!284398 (= (size!3675 lt!207685) e!284397))))

(declare-fun c!93523 () Bool)

(assert (=> b!464185 (= c!93523 (<= 0 0))))

(declare-fun b!464186 () Bool)

(assert (=> b!464186 (= e!284397 e!284396)))

(declare-fun c!93521 () Bool)

(assert (=> b!464186 (= c!93521 (>= 0 call!32217))))

(declare-fun b!464187 () Bool)

(assert (=> b!464187 (= e!284394 lt!206238)))

(assert (= (and d!177051 c!93520) b!464184))

(assert (= (and d!177051 (not c!93520)) b!464183))

(assert (= (and b!464183 c!93522) b!464187))

(assert (= (and b!464183 (not c!93522)) b!464179))

(assert (= (and d!177051 res!206586) b!464185))

(assert (= (and b!464185 c!93523) b!464181))

(assert (= (and b!464185 (not c!93523)) b!464186))

(assert (= (and b!464186 c!93521) b!464182))

(assert (= (and b!464186 (not c!93521)) b!464180))

(assert (= (or b!464181 b!464186 b!464180) bm!32212))

(declare-fun m!736377 () Bool)

(assert (=> b!464179 m!736377))

(declare-fun m!736379 () Bool)

(assert (=> d!177051 m!736379))

(declare-fun m!736381 () Bool)

(assert (=> d!177051 m!736381))

(assert (=> bm!32212 m!736305))

(declare-fun m!736383 () Bool)

(assert (=> b!464185 m!736383))

(assert (=> b!461918 d!177051))

(declare-fun d!177053 () Bool)

(declare-fun lt!207686 () BalanceConc!3152)

(assert (=> d!177053 (= (list!2004 lt!207686) (originalCharacters!918 (apply!1157 lt!205904 0)))))

(assert (=> d!177053 (= lt!207686 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205904 0)))) (value!29253 (apply!1157 lt!205904 0))))))

(assert (=> d!177053 (= (charsOf!518 (apply!1157 lt!205904 0)) lt!207686)))

(declare-fun b_lambda!19341 () Bool)

(assert (=> (not b_lambda!19341) (not d!177053)))

(declare-fun tb!46431 () Bool)

(declare-fun t!72277 () Bool)

(assert (=> (and b!462189 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205904 0))))) t!72277) tb!46431))

(declare-fun b!464188 () Bool)

(declare-fun e!284399 () Bool)

(declare-fun tp!127920 () Bool)

(assert (=> b!464188 (= e!284399 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205904 0)))) (value!29253 (apply!1157 lt!205904 0))))) tp!127920))))

(declare-fun result!51120 () Bool)

(assert (=> tb!46431 (= result!51120 (and (inv!5578 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205904 0)))) (value!29253 (apply!1157 lt!205904 0)))) e!284399))))

(assert (= tb!46431 b!464188))

(declare-fun m!736385 () Bool)

(assert (=> b!464188 m!736385))

(declare-fun m!736387 () Bool)

(assert (=> tb!46431 m!736387))

(assert (=> d!177053 t!72277))

(declare-fun b_and!49883 () Bool)

(assert (= b_and!49875 (and (=> t!72277 result!51120) b_and!49883)))

(declare-fun t!72279 () Bool)

(declare-fun tb!46433 () Bool)

(assert (=> (and b!461297 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205904 0))))) t!72279) tb!46433))

(declare-fun result!51122 () Bool)

(assert (= result!51122 result!51120))

(assert (=> d!177053 t!72279))

(declare-fun b_and!49885 () Bool)

(assert (= b_and!49881 (and (=> t!72279 result!51122) b_and!49885)))

(declare-fun tb!46435 () Bool)

(declare-fun t!72281 () Bool)

(assert (=> (and b!461281 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205904 0))))) t!72281) tb!46435))

(declare-fun result!51124 () Bool)

(assert (= result!51124 result!51120))

(assert (=> d!177053 t!72281))

(declare-fun b_and!49887 () Bool)

(assert (= b_and!49873 (and (=> t!72281 result!51124) b_and!49887)))

(declare-fun tb!46437 () Bool)

(declare-fun t!72283 () Bool)

(assert (=> (and b!461294 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205904 0))))) t!72283) tb!46437))

(declare-fun result!51126 () Bool)

(assert (= result!51126 result!51120))

(assert (=> d!177053 t!72283))

(declare-fun b_and!49889 () Bool)

(assert (= b_and!49879 (and (=> t!72283 result!51126) b_and!49889)))

(declare-fun t!72285 () Bool)

(declare-fun tb!46439 () Bool)

(assert (=> (and b!462208 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205904 0))))) t!72285) tb!46439))

(declare-fun result!51128 () Bool)

(assert (= result!51128 result!51120))

(assert (=> d!177053 t!72285))

(declare-fun b_and!49891 () Bool)

(assert (= b_and!49877 (and (=> t!72285 result!51128) b_and!49891)))

(declare-fun m!736389 () Bool)

(assert (=> d!177053 m!736389))

(declare-fun m!736391 () Bool)

(assert (=> d!177053 m!736391))

(assert (=> b!461918 d!177053))

(declare-fun b!464189 () Bool)

(declare-fun e!284400 () List!4505)

(assert (=> b!464189 (= e!284400 (drop!321 (t!71885 lt!206245) (- 0 1)))))

(declare-fun b!464190 () Bool)

(declare-fun e!284402 () Int)

(declare-fun call!32218 () Int)

(assert (=> b!464190 (= e!284402 (- call!32218 0))))

(declare-fun b!464191 () Bool)

(declare-fun e!284403 () Int)

(assert (=> b!464191 (= e!284403 call!32218)))

(declare-fun d!177055 () Bool)

(declare-fun e!284404 () Bool)

(assert (=> d!177055 e!284404))

(declare-fun res!206587 () Bool)

(assert (=> d!177055 (=> (not res!206587) (not e!284404))))

(declare-fun lt!207687 () List!4505)

(assert (=> d!177055 (= res!206587 (= ((_ map implies) (content!753 lt!207687) (content!753 lt!206245)) ((as const (InoxSet Token!1494)) true)))))

(declare-fun e!284401 () List!4505)

(assert (=> d!177055 (= lt!207687 e!284401)))

(declare-fun c!93524 () Bool)

(assert (=> d!177055 (= c!93524 ((_ is Nil!4495) lt!206245))))

(assert (=> d!177055 (= (drop!321 lt!206245 0) lt!207687)))

(declare-fun b!464192 () Bool)

(assert (=> b!464192 (= e!284402 0)))

(declare-fun bm!32213 () Bool)

(assert (=> bm!32213 (= call!32218 (size!3675 lt!206245))))

(declare-fun b!464193 () Bool)

(assert (=> b!464193 (= e!284401 e!284400)))

(declare-fun c!93526 () Bool)

(assert (=> b!464193 (= c!93526 (<= 0 0))))

(declare-fun b!464194 () Bool)

(assert (=> b!464194 (= e!284401 Nil!4495)))

(declare-fun b!464195 () Bool)

(assert (=> b!464195 (= e!284404 (= (size!3675 lt!207687) e!284403))))

(declare-fun c!93527 () Bool)

(assert (=> b!464195 (= c!93527 (<= 0 0))))

(declare-fun b!464196 () Bool)

(assert (=> b!464196 (= e!284403 e!284402)))

(declare-fun c!93525 () Bool)

(assert (=> b!464196 (= c!93525 (>= 0 call!32218))))

(declare-fun b!464197 () Bool)

(assert (=> b!464197 (= e!284400 lt!206245)))

(assert (= (and d!177055 c!93524) b!464194))

(assert (= (and d!177055 (not c!93524)) b!464193))

(assert (= (and b!464193 c!93526) b!464197))

(assert (= (and b!464193 (not c!93526)) b!464189))

(assert (= (and d!177055 res!206587) b!464195))

(assert (= (and b!464195 c!93527) b!464191))

(assert (= (and b!464195 (not c!93527)) b!464196))

(assert (= (and b!464196 c!93525) b!464192))

(assert (= (and b!464196 (not c!93525)) b!464190))

(assert (= (or b!464191 b!464196 b!464190) bm!32213))

(declare-fun m!736393 () Bool)

(assert (=> b!464189 m!736393))

(declare-fun m!736395 () Bool)

(assert (=> d!177055 m!736395))

(assert (=> d!177055 m!736371))

(assert (=> bm!32213 m!736373))

(declare-fun m!736397 () Bool)

(assert (=> b!464195 m!736397))

(assert (=> b!461918 d!177055))

(declare-fun d!177057 () Bool)

(assert (=> d!177057 (= (tail!654 (drop!321 lt!206245 0)) (drop!321 lt!206245 (+ 0 1)))))

(declare-fun lt!207688 () Unit!8113)

(assert (=> d!177057 (= lt!207688 (choose!3481 lt!206245 0))))

(declare-fun e!284405 () Bool)

(assert (=> d!177057 e!284405))

(declare-fun res!206588 () Bool)

(assert (=> d!177057 (=> (not res!206588) (not e!284405))))

(assert (=> d!177057 (= res!206588 (>= 0 0))))

(assert (=> d!177057 (= (lemmaDropTail!284 lt!206245 0) lt!207688)))

(declare-fun b!464198 () Bool)

(assert (=> b!464198 (= e!284405 (< 0 (size!3675 lt!206245)))))

(assert (= (and d!177057 res!206588) b!464198))

(assert (=> d!177057 m!730905))

(assert (=> d!177057 m!730905))

(assert (=> d!177057 m!730923))

(assert (=> d!177057 m!730919))

(declare-fun m!736399 () Bool)

(assert (=> d!177057 m!736399))

(assert (=> b!464198 m!736373))

(assert (=> b!461918 d!177057))

(declare-fun bs!57750 () Bool)

(declare-fun d!177059 () Bool)

(assert (= bs!57750 (and d!177059 b!461290)))

(declare-fun lambda!13725 () Int)

(assert (=> bs!57750 (= lambda!13725 lambda!13617)))

(declare-fun bs!57751 () Bool)

(assert (= bs!57751 (and d!177059 b!462105)))

(assert (=> bs!57751 (not (= lambda!13725 lambda!13655))))

(declare-fun bs!57752 () Bool)

(assert (= bs!57752 (and d!177059 b!462542)))

(assert (=> bs!57752 (not (= lambda!13725 lambda!13668))))

(declare-fun bs!57753 () Bool)

(assert (= bs!57753 (and d!177059 b!462992)))

(assert (=> bs!57753 (not (= lambda!13725 lambda!13688))))

(declare-fun bs!57754 () Bool)

(assert (= bs!57754 (and d!177059 b!464034)))

(assert (=> bs!57754 (not (= lambda!13725 lambda!13718))))

(declare-fun bs!57755 () Bool)

(assert (= bs!57755 (and d!177059 b!464086)))

(assert (=> bs!57755 (not (= lambda!13725 lambda!13723))))

(declare-fun bs!57756 () Bool)

(assert (= bs!57756 (and d!177059 d!175507)))

(assert (=> bs!57756 (= lambda!13725 lambda!13634)))

(declare-fun bs!57757 () Bool)

(assert (= bs!57757 (and d!177059 b!461918)))

(assert (=> bs!57757 (not (= lambda!13725 lambda!13652))))

(declare-fun bs!57758 () Bool)

(assert (= bs!57758 (and d!177059 d!176489)))

(assert (=> bs!57758 (= lambda!13725 lambda!13701)))

(declare-fun bs!57759 () Bool)

(assert (= bs!57759 (and d!177059 d!175483)))

(assert (=> bs!57759 (not (= lambda!13725 lambda!13628))))

(declare-fun bs!57760 () Bool)

(assert (= bs!57760 (and d!177059 b!461292)))

(assert (=> bs!57760 (not (= lambda!13725 lambda!13618))))

(declare-fun bs!57761 () Bool)

(assert (= bs!57761 (and d!177059 b!462130)))

(assert (=> bs!57761 (not (= lambda!13725 lambda!13658))))

(declare-fun bs!57762 () Bool)

(assert (= bs!57762 (and d!177059 d!176971)))

(assert (=> bs!57762 (not (= lambda!13725 lambda!13721))))

(declare-fun bs!57763 () Bool)

(assert (= bs!57763 (and d!177059 d!176991)))

(assert (=> bs!57763 (= lambda!13725 lambda!13722)))

(declare-fun bs!57764 () Bool)

(assert (= bs!57764 (and d!177059 b!462125)))

(assert (=> bs!57764 (not (= lambda!13725 lambda!13656))))

(declare-fun bs!57765 () Bool)

(assert (= bs!57765 (and d!177059 d!175635)))

(assert (=> bs!57765 (= lambda!13725 lambda!13651)))

(declare-fun bs!57766 () Bool)

(assert (= bs!57766 (and d!177059 d!175745)))

(assert (=> bs!57766 (= lambda!13725 lambda!13657)))

(declare-fun bs!57767 () Bool)

(declare-fun b!464200 () Bool)

(assert (= bs!57767 (and b!464200 b!461290)))

(declare-fun lambda!13726 () Int)

(assert (=> bs!57767 (not (= lambda!13726 lambda!13617))))

(declare-fun bs!57768 () Bool)

(assert (= bs!57768 (and b!464200 b!462105)))

(assert (=> bs!57768 (= lambda!13726 lambda!13655)))

(declare-fun bs!57769 () Bool)

(assert (= bs!57769 (and b!464200 b!462542)))

(assert (=> bs!57769 (= lambda!13726 lambda!13668)))

(declare-fun bs!57770 () Bool)

(assert (= bs!57770 (and b!464200 b!462992)))

(assert (=> bs!57770 (= lambda!13726 lambda!13688)))

(declare-fun bs!57771 () Bool)

(assert (= bs!57771 (and b!464200 b!464034)))

(assert (=> bs!57771 (= lambda!13726 lambda!13718)))

(declare-fun bs!57772 () Bool)

(assert (= bs!57772 (and b!464200 b!464086)))

(assert (=> bs!57772 (= lambda!13726 lambda!13723)))

(declare-fun bs!57773 () Bool)

(assert (= bs!57773 (and b!464200 d!175507)))

(assert (=> bs!57773 (not (= lambda!13726 lambda!13634))))

(declare-fun bs!57774 () Bool)

(assert (= bs!57774 (and b!464200 d!176489)))

(assert (=> bs!57774 (not (= lambda!13726 lambda!13701))))

(declare-fun bs!57775 () Bool)

(assert (= bs!57775 (and b!464200 d!175483)))

(assert (=> bs!57775 (= lambda!13726 lambda!13628)))

(declare-fun bs!57776 () Bool)

(assert (= bs!57776 (and b!464200 b!461292)))

(assert (=> bs!57776 (= lambda!13726 lambda!13618)))

(declare-fun bs!57777 () Bool)

(assert (= bs!57777 (and b!464200 b!462130)))

(assert (=> bs!57777 (= lambda!13726 lambda!13658)))

(declare-fun bs!57778 () Bool)

(assert (= bs!57778 (and b!464200 d!176971)))

(assert (=> bs!57778 (= lambda!13726 lambda!13721)))

(declare-fun bs!57779 () Bool)

(assert (= bs!57779 (and b!464200 b!461918)))

(assert (=> bs!57779 (= lambda!13726 lambda!13652)))

(declare-fun bs!57780 () Bool)

(assert (= bs!57780 (and b!464200 d!177059)))

(assert (=> bs!57780 (not (= lambda!13726 lambda!13725))))

(declare-fun bs!57781 () Bool)

(assert (= bs!57781 (and b!464200 d!176991)))

(assert (=> bs!57781 (not (= lambda!13726 lambda!13722))))

(declare-fun bs!57782 () Bool)

(assert (= bs!57782 (and b!464200 b!462125)))

(assert (=> bs!57782 (= lambda!13726 lambda!13656)))

(declare-fun bs!57783 () Bool)

(assert (= bs!57783 (and b!464200 d!175635)))

(assert (=> bs!57783 (not (= lambda!13726 lambda!13651))))

(declare-fun bs!57784 () Bool)

(assert (= bs!57784 (and b!464200 d!175745)))

(assert (=> bs!57784 (not (= lambda!13726 lambda!13657))))

(declare-fun b!464210 () Bool)

(declare-fun e!284414 () Bool)

(assert (=> b!464210 (= e!284414 true)))

(declare-fun b!464209 () Bool)

(declare-fun e!284413 () Bool)

(assert (=> b!464209 (= e!284413 e!284414)))

(declare-fun b!464208 () Bool)

(declare-fun e!284412 () Bool)

(assert (=> b!464208 (= e!284412 e!284413)))

(assert (=> b!464200 e!284412))

(assert (= b!464209 b!464210))

(assert (= b!464208 b!464209))

(assert (= (and b!464200 ((_ is Cons!4494) rules!1920)) b!464208))

(assert (=> b!464210 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13726))))

(assert (=> b!464210 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 rules!1920)))) (dynLambda!2745 order!4011 lambda!13726))))

(assert (=> b!464200 true))

(declare-fun bm!32214 () Bool)

(declare-fun call!32223 () Token!1494)

(declare-fun call!32220 () Token!1494)

(assert (=> bm!32214 (= call!32223 call!32220)))

(declare-fun c!93529 () Bool)

(declare-fun call!32219 () BalanceConc!3152)

(declare-fun bm!32215 () Bool)

(assert (=> bm!32215 (= call!32219 (charsOf!518 (ite c!93529 separatorToken!170 call!32223)))))

(declare-fun b!464199 () Bool)

(declare-fun e!284410 () Bool)

(declare-fun lt!207691 () Option!1185)

(assert (=> b!464199 (= e!284410 (= (_1!2962 (v!15533 lt!207691)) (apply!1157 lt!205904 (+ 0 1))))))

(declare-fun e!284409 () BalanceConc!3152)

(declare-fun e!284411 () BalanceConc!3152)

(assert (=> b!464200 (= e!284409 e!284411)))

(declare-fun lt!207693 () List!4505)

(assert (=> b!464200 (= lt!207693 (list!2005 lt!205904))))

(declare-fun lt!207692 () Unit!8113)

(assert (=> b!464200 (= lt!207692 (lemmaDropApply!292 lt!207693 (+ 0 1)))))

(assert (=> b!464200 (= (head!1132 (drop!321 lt!207693 (+ 0 1))) (apply!1158 lt!207693 (+ 0 1)))))

(declare-fun lt!207699 () Unit!8113)

(assert (=> b!464200 (= lt!207699 lt!207692)))

(declare-fun lt!207700 () List!4505)

(assert (=> b!464200 (= lt!207700 (list!2005 lt!205904))))

(declare-fun lt!207701 () Unit!8113)

(assert (=> b!464200 (= lt!207701 (lemmaDropTail!284 lt!207700 (+ 0 1)))))

(assert (=> b!464200 (= (tail!654 (drop!321 lt!207700 (+ 0 1))) (drop!321 lt!207700 (+ 0 1 1)))))

(declare-fun lt!207696 () Unit!8113)

(assert (=> b!464200 (= lt!207696 lt!207701)))

(declare-fun lt!207697 () Unit!8113)

(assert (=> b!464200 (= lt!207697 (forallContained!428 (list!2005 lt!205904) lambda!13726 (apply!1157 lt!205904 (+ 0 1))))))

(declare-fun lt!207690 () BalanceConc!3152)

(assert (=> b!464200 (= lt!207690 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 lt!205904 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!464200 (= lt!207691 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (++!1314 (charsOf!518 (apply!1157 lt!205904 (+ 0 1))) lt!207690)))))

(declare-fun res!206590 () Bool)

(assert (=> b!464200 (= res!206590 ((_ is Some!1184) lt!207691))))

(assert (=> b!464200 (=> (not res!206590) (not e!284410))))

(declare-fun c!93528 () Bool)

(assert (=> b!464200 (= c!93528 e!284410)))

(declare-fun b!464201 () Bool)

(declare-fun e!284406 () Bool)

(assert (=> b!464201 (= e!284406 (not (= (_1!2962 (v!15533 lt!207691)) call!32220)))))

(declare-fun b!464202 () Bool)

(assert (=> b!464202 (= c!93529 e!284406)))

(declare-fun res!206589 () Bool)

(assert (=> b!464202 (=> (not res!206589) (not e!284406))))

(assert (=> b!464202 (= res!206589 ((_ is Some!1184) lt!207691))))

(declare-fun e!284408 () BalanceConc!3152)

(assert (=> b!464202 (= e!284411 e!284408)))

(declare-fun call!32222 () BalanceConc!3152)

(declare-fun bm!32216 () Bool)

(declare-fun call!32221 () BalanceConc!3152)

(assert (=> bm!32216 (= call!32221 (++!1314 call!32222 (ite c!93528 lt!207690 call!32219)))))

(declare-fun b!464203 () Bool)

(assert (=> b!464203 (= e!284411 call!32221)))

(declare-fun b!464204 () Bool)

(assert (=> b!464204 (= e!284408 (++!1314 call!32221 lt!207690))))

(declare-fun b!464205 () Bool)

(declare-fun e!284407 () Bool)

(assert (=> b!464205 (= e!284407 (<= (+ 0 1) (size!3672 lt!205904)))))

(declare-fun b!464206 () Bool)

(assert (=> b!464206 (= e!284409 (BalanceConc!3153 Empty!1572))))

(declare-fun lt!207689 () BalanceConc!3152)

(assert (=> d!177059 (= (list!2004 lt!207689) (printWithSeparatorTokenWhenNeededList!442 thiss!17480 rules!1920 (dropList!252 lt!205904 (+ 0 1)) separatorToken!170))))

(assert (=> d!177059 (= lt!207689 e!284409)))

(declare-fun c!93530 () Bool)

(assert (=> d!177059 (= c!93530 (>= (+ 0 1) (size!3672 lt!205904)))))

(declare-fun lt!207694 () Unit!8113)

(assert (=> d!177059 (= lt!207694 (lemmaContentSubsetPreservesForall!196 (list!2005 lt!205904) (dropList!252 lt!205904 (+ 0 1)) lambda!13725))))

(assert (=> d!177059 e!284407))

(declare-fun res!206591 () Bool)

(assert (=> d!177059 (=> (not res!206591) (not e!284407))))

(assert (=> d!177059 (= res!206591 (>= (+ 0 1) 0))))

(assert (=> d!177059 (= (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 lt!205904 separatorToken!170 (+ 0 1)) lt!207689)))

(declare-fun bm!32217 () Bool)

(assert (=> bm!32217 (= call!32220 (apply!1157 lt!205904 (+ 0 1)))))

(declare-fun bm!32218 () Bool)

(assert (=> bm!32218 (= call!32222 (charsOf!518 (ite c!93528 call!32220 call!32223)))))

(declare-fun b!464207 () Bool)

(assert (=> b!464207 (= e!284408 (BalanceConc!3153 Empty!1572))))

(assert (=> b!464207 (= (print!486 thiss!17480 (singletonSeq!421 call!32223)) (printTailRec!447 thiss!17480 (singletonSeq!421 call!32223) 0 (BalanceConc!3153 Empty!1572)))))

(declare-fun lt!207698 () Unit!8113)

(declare-fun Unit!8177 () Unit!8113)

(assert (=> b!464207 (= lt!207698 Unit!8177)))

(declare-fun lt!207695 () Unit!8113)

(assert (=> b!464207 (= lt!207695 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!200 thiss!17480 rules!1920 (list!2004 call!32219) (list!2004 lt!207690)))))

(assert (=> b!464207 false))

(declare-fun lt!207702 () Unit!8113)

(declare-fun Unit!8178 () Unit!8113)

(assert (=> b!464207 (= lt!207702 Unit!8178)))

(assert (= (and d!177059 res!206591) b!464205))

(assert (= (and d!177059 c!93530) b!464206))

(assert (= (and d!177059 (not c!93530)) b!464200))

(assert (= (and b!464200 res!206590) b!464199))

(assert (= (and b!464200 c!93528) b!464203))

(assert (= (and b!464200 (not c!93528)) b!464202))

(assert (= (and b!464202 res!206589) b!464201))

(assert (= (and b!464202 c!93529) b!464204))

(assert (= (and b!464202 (not c!93529)) b!464207))

(assert (= (or b!464204 b!464207) bm!32214))

(assert (= (or b!464204 b!464207) bm!32215))

(assert (= (or b!464203 bm!32214 b!464201) bm!32217))

(assert (= (or b!464203 b!464204) bm!32218))

(assert (= (or b!464203 b!464204) bm!32216))

(declare-fun m!736401 () Bool)

(assert (=> bm!32217 m!736401))

(declare-fun m!736403 () Bool)

(assert (=> bm!32216 m!736403))

(assert (=> b!464199 m!736401))

(declare-fun m!736405 () Bool)

(assert (=> d!177059 m!736405))

(assert (=> d!177059 m!736405))

(declare-fun m!736407 () Bool)

(assert (=> d!177059 m!736407))

(assert (=> d!177059 m!730893))

(assert (=> d!177059 m!730059))

(declare-fun m!736409 () Bool)

(assert (=> d!177059 m!736409))

(assert (=> d!177059 m!730059))

(assert (=> d!177059 m!736405))

(declare-fun m!736411 () Bool)

(assert (=> d!177059 m!736411))

(declare-fun m!736413 () Bool)

(assert (=> b!464200 m!736413))

(declare-fun m!736415 () Bool)

(assert (=> b!464200 m!736415))

(assert (=> b!464200 m!736401))

(declare-fun m!736417 () Bool)

(assert (=> b!464200 m!736417))

(declare-fun m!736419 () Bool)

(assert (=> b!464200 m!736419))

(assert (=> b!464200 m!730059))

(assert (=> b!464200 m!736401))

(declare-fun m!736421 () Bool)

(assert (=> b!464200 m!736421))

(declare-fun m!736423 () Bool)

(assert (=> b!464200 m!736423))

(declare-fun m!736425 () Bool)

(assert (=> b!464200 m!736425))

(assert (=> b!464200 m!736423))

(declare-fun m!736427 () Bool)

(assert (=> b!464200 m!736427))

(assert (=> b!464200 m!736401))

(declare-fun m!736429 () Bool)

(assert (=> b!464200 m!736429))

(declare-fun m!736431 () Bool)

(assert (=> b!464200 m!736431))

(declare-fun m!736433 () Bool)

(assert (=> b!464200 m!736433))

(assert (=> b!464200 m!730059))

(assert (=> b!464200 m!736417))

(assert (=> b!464200 m!736413))

(declare-fun m!736435 () Bool)

(assert (=> b!464200 m!736435))

(assert (=> b!464200 m!736419))

(declare-fun m!736437 () Bool)

(assert (=> b!464200 m!736437))

(declare-fun m!736439 () Bool)

(assert (=> bm!32215 m!736439))

(declare-fun m!736441 () Bool)

(assert (=> b!464207 m!736441))

(assert (=> b!464207 m!736441))

(declare-fun m!736443 () Bool)

(assert (=> b!464207 m!736443))

(declare-fun m!736445 () Bool)

(assert (=> b!464207 m!736445))

(assert (=> b!464207 m!736443))

(declare-fun m!736447 () Bool)

(assert (=> b!464207 m!736447))

(assert (=> b!464207 m!736447))

(declare-fun m!736449 () Bool)

(assert (=> b!464207 m!736449))

(assert (=> b!464207 m!736447))

(declare-fun m!736451 () Bool)

(assert (=> b!464207 m!736451))

(declare-fun m!736453 () Bool)

(assert (=> bm!32218 m!736453))

(declare-fun m!736455 () Bool)

(assert (=> b!464204 m!736455))

(assert (=> b!464205 m!730893))

(assert (=> b!461918 d!177059))

(declare-fun b!464214 () Bool)

(declare-fun e!284416 () Bool)

(declare-fun lt!207703 () List!4503)

(assert (=> b!464214 (= e!284416 (or (not (= (ite c!93008 lt!206300 call!32068) Nil!4493)) (= lt!207703 call!32072)))))

(declare-fun b!464211 () Bool)

(declare-fun e!284415 () List!4503)

(assert (=> b!464211 (= e!284415 (ite c!93008 lt!206300 call!32068))))

(declare-fun b!464213 () Bool)

(declare-fun res!206593 () Bool)

(assert (=> b!464213 (=> (not res!206593) (not e!284416))))

(assert (=> b!464213 (= res!206593 (= (size!3674 lt!207703) (+ (size!3674 call!32072) (size!3674 (ite c!93008 lt!206300 call!32068)))))))

(declare-fun d!177061 () Bool)

(assert (=> d!177061 e!284416))

(declare-fun res!206592 () Bool)

(assert (=> d!177061 (=> (not res!206592) (not e!284416))))

(assert (=> d!177061 (= res!206592 (= (content!752 lt!207703) ((_ map or) (content!752 call!32072) (content!752 (ite c!93008 lt!206300 call!32068)))))))

(assert (=> d!177061 (= lt!207703 e!284415)))

(declare-fun c!93531 () Bool)

(assert (=> d!177061 (= c!93531 ((_ is Nil!4493) call!32072))))

(assert (=> d!177061 (= (++!1312 call!32072 (ite c!93008 lt!206300 call!32068)) lt!207703)))

(declare-fun b!464212 () Bool)

(assert (=> b!464212 (= e!284415 (Cons!4493 (h!9890 call!32072) (++!1312 (t!71883 call!32072) (ite c!93008 lt!206300 call!32068))))))

(assert (= (and d!177061 c!93531) b!464211))

(assert (= (and d!177061 (not c!93531)) b!464212))

(assert (= (and d!177061 res!206592) b!464213))

(assert (= (and b!464213 res!206593) b!464214))

(declare-fun m!736457 () Bool)

(assert (=> b!464213 m!736457))

(declare-fun m!736459 () Bool)

(assert (=> b!464213 m!736459))

(declare-fun m!736461 () Bool)

(assert (=> b!464213 m!736461))

(declare-fun m!736463 () Bool)

(assert (=> d!177061 m!736463))

(declare-fun m!736465 () Bool)

(assert (=> d!177061 m!736465))

(declare-fun m!736467 () Bool)

(assert (=> d!177061 m!736467))

(declare-fun m!736469 () Bool)

(assert (=> b!464212 m!736469))

(assert (=> bm!32064 d!177061))

(declare-fun b!464218 () Bool)

(declare-fun e!284418 () Bool)

(declare-fun lt!207704 () List!4503)

(assert (=> b!464218 (= e!284418 (or (not (= (_2!2961 (get!1652 lt!205988)) Nil!4493)) (= lt!207704 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988)))))))))

(declare-fun b!464215 () Bool)

(declare-fun e!284417 () List!4503)

(assert (=> b!464215 (= e!284417 (_2!2961 (get!1652 lt!205988)))))

(declare-fun b!464217 () Bool)

(declare-fun res!206595 () Bool)

(assert (=> b!464217 (=> (not res!206595) (not e!284418))))

(assert (=> b!464217 (= res!206595 (= (size!3674 lt!207704) (+ (size!3674 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988))))) (size!3674 (_2!2961 (get!1652 lt!205988))))))))

(declare-fun d!177063 () Bool)

(assert (=> d!177063 e!284418))

(declare-fun res!206594 () Bool)

(assert (=> d!177063 (=> (not res!206594) (not e!284418))))

(assert (=> d!177063 (= res!206594 (= (content!752 lt!207704) ((_ map or) (content!752 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988))))) (content!752 (_2!2961 (get!1652 lt!205988))))))))

(assert (=> d!177063 (= lt!207704 e!284417)))

(declare-fun c!93532 () Bool)

(assert (=> d!177063 (= c!93532 ((_ is Nil!4493) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988))))))))

(assert (=> d!177063 (= (++!1312 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988)))) (_2!2961 (get!1652 lt!205988))) lt!207704)))

(declare-fun b!464216 () Bool)

(assert (=> b!464216 (= e!284417 (Cons!4493 (h!9890 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988))))) (++!1312 (t!71883 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!205988))))) (_2!2961 (get!1652 lt!205988)))))))

(assert (= (and d!177063 c!93532) b!464215))

(assert (= (and d!177063 (not c!93532)) b!464216))

(assert (= (and d!177063 res!206594) b!464217))

(assert (= (and b!464217 res!206595) b!464218))

(declare-fun m!736471 () Bool)

(assert (=> b!464217 m!736471))

(assert (=> b!464217 m!730203))

(declare-fun m!736473 () Bool)

(assert (=> b!464217 m!736473))

(assert (=> b!464217 m!730217))

(declare-fun m!736475 () Bool)

(assert (=> d!177063 m!736475))

(assert (=> d!177063 m!730203))

(declare-fun m!736477 () Bool)

(assert (=> d!177063 m!736477))

(declare-fun m!736479 () Bool)

(assert (=> d!177063 m!736479))

(declare-fun m!736481 () Bool)

(assert (=> b!464216 m!736481))

(assert (=> b!461525 d!177063))

(assert (=> b!461525 d!176065))

(assert (=> b!461525 d!176067))

(assert (=> b!461525 d!176063))

(declare-fun d!177065 () Bool)

(assert (=> d!177065 (= (list!2004 lt!206336) (list!2009 (c!92854 lt!206336)))))

(declare-fun bs!57785 () Bool)

(assert (= bs!57785 d!177065))

(declare-fun m!736483 () Bool)

(assert (=> bs!57785 m!736483))

(assert (=> d!175757 d!177065))

(declare-fun d!177067 () Bool)

(assert (=> d!177067 (= (isEmpty!3490 lt!205902) (not ((_ is Some!1183) lt!205902)))))

(assert (=> d!175551 d!177067))

(declare-fun b!464219 () Bool)

(declare-fun e!284424 () Bool)

(declare-fun lt!207705 () Bool)

(assert (=> b!464219 (= e!284424 (not lt!207705))))

(declare-fun b!464220 () Bool)

(declare-fun res!206600 () Bool)

(declare-fun e!284423 () Bool)

(assert (=> b!464220 (=> (not res!206600) (not e!284423))))

(assert (=> b!464220 (= res!206600 (isEmpty!3484 (tail!652 (tail!652 lt!205905))))))

(declare-fun b!464221 () Bool)

(declare-fun e!284425 () Bool)

(declare-fun call!32224 () Bool)

(assert (=> b!464221 (= e!284425 (= lt!207705 call!32224))))

(declare-fun b!464222 () Bool)

(assert (=> b!464222 (= e!284423 (= (head!1134 (tail!652 lt!205905)) (c!92855 (derivativeStep!217 (regex!875 (rule!1570 (h!9892 tokens!465))) (head!1134 lt!205905)))))))

(declare-fun b!464223 () Bool)

(declare-fun e!284422 () Bool)

(assert (=> b!464223 (= e!284422 (not (= (head!1134 (tail!652 lt!205905)) (c!92855 (derivativeStep!217 (regex!875 (rule!1570 (h!9892 tokens!465))) (head!1134 lt!205905))))))))

(declare-fun bm!32219 () Bool)

(assert (=> bm!32219 (= call!32224 (isEmpty!3484 (tail!652 lt!205905)))))

(declare-fun b!464225 () Bool)

(declare-fun res!206598 () Bool)

(assert (=> b!464225 (=> res!206598 e!284422)))

(assert (=> b!464225 (= res!206598 (not (isEmpty!3484 (tail!652 (tail!652 lt!205905)))))))

(declare-fun b!464226 () Bool)

(declare-fun e!284420 () Bool)

(assert (=> b!464226 (= e!284420 e!284422)))

(declare-fun res!206596 () Bool)

(assert (=> b!464226 (=> res!206596 e!284422)))

(assert (=> b!464226 (= res!206596 call!32224)))

(declare-fun b!464227 () Bool)

(declare-fun res!206602 () Bool)

(declare-fun e!284421 () Bool)

(assert (=> b!464227 (=> res!206602 e!284421)))

(assert (=> b!464227 (= res!206602 (not ((_ is ElementMatch!1099) (derivativeStep!217 (regex!875 (rule!1570 (h!9892 tokens!465))) (head!1134 lt!205905)))))))

(assert (=> b!464227 (= e!284424 e!284421)))

(declare-fun b!464228 () Bool)

(assert (=> b!464228 (= e!284421 e!284420)))

(declare-fun res!206601 () Bool)

(assert (=> b!464228 (=> (not res!206601) (not e!284420))))

(assert (=> b!464228 (= res!206601 (not lt!207705))))

(declare-fun b!464229 () Bool)

(declare-fun e!284419 () Bool)

(assert (=> b!464229 (= e!284419 (matchR!417 (derivativeStep!217 (derivativeStep!217 (regex!875 (rule!1570 (h!9892 tokens!465))) (head!1134 lt!205905)) (head!1134 (tail!652 lt!205905))) (tail!652 (tail!652 lt!205905))))))

(declare-fun b!464230 () Bool)

(declare-fun res!206603 () Bool)

(assert (=> b!464230 (=> (not res!206603) (not e!284423))))

(assert (=> b!464230 (= res!206603 (not call!32224))))

(declare-fun d!177069 () Bool)

(assert (=> d!177069 e!284425))

(declare-fun c!93534 () Bool)

(assert (=> d!177069 (= c!93534 ((_ is EmptyExpr!1099) (derivativeStep!217 (regex!875 (rule!1570 (h!9892 tokens!465))) (head!1134 lt!205905))))))

(assert (=> d!177069 (= lt!207705 e!284419)))

(declare-fun c!93533 () Bool)

(assert (=> d!177069 (= c!93533 (isEmpty!3484 (tail!652 lt!205905)))))

(assert (=> d!177069 (validRegex!326 (derivativeStep!217 (regex!875 (rule!1570 (h!9892 tokens!465))) (head!1134 lt!205905)))))

(assert (=> d!177069 (= (matchR!417 (derivativeStep!217 (regex!875 (rule!1570 (h!9892 tokens!465))) (head!1134 lt!205905)) (tail!652 lt!205905)) lt!207705)))

(declare-fun b!464224 () Bool)

(assert (=> b!464224 (= e!284419 (nullable!251 (derivativeStep!217 (regex!875 (rule!1570 (h!9892 tokens!465))) (head!1134 lt!205905))))))

(declare-fun b!464231 () Bool)

(declare-fun res!206599 () Bool)

(assert (=> b!464231 (=> res!206599 e!284421)))

(assert (=> b!464231 (= res!206599 e!284423)))

(declare-fun res!206597 () Bool)

(assert (=> b!464231 (=> (not res!206597) (not e!284423))))

(assert (=> b!464231 (= res!206597 lt!207705)))

(declare-fun b!464232 () Bool)

(assert (=> b!464232 (= e!284425 e!284424)))

(declare-fun c!93535 () Bool)

(assert (=> b!464232 (= c!93535 ((_ is EmptyLang!1099) (derivativeStep!217 (regex!875 (rule!1570 (h!9892 tokens!465))) (head!1134 lt!205905))))))

(assert (= (and d!177069 c!93533) b!464224))

(assert (= (and d!177069 (not c!93533)) b!464229))

(assert (= (and d!177069 c!93534) b!464221))

(assert (= (and d!177069 (not c!93534)) b!464232))

(assert (= (and b!464232 c!93535) b!464219))

(assert (= (and b!464232 (not c!93535)) b!464227))

(assert (= (and b!464227 (not res!206602)) b!464231))

(assert (= (and b!464231 res!206597) b!464230))

(assert (= (and b!464230 res!206603) b!464220))

(assert (= (and b!464220 res!206600) b!464222))

(assert (= (and b!464231 (not res!206599)) b!464228))

(assert (= (and b!464228 res!206601) b!464226))

(assert (= (and b!464226 (not res!206596)) b!464225))

(assert (= (and b!464225 (not res!206598)) b!464223))

(assert (= (or b!464221 b!464230 b!464226) bm!32219))

(assert (=> b!464222 m!730249))

(assert (=> b!464222 m!732325))

(assert (=> b!464220 m!730249))

(assert (=> b!464220 m!732333))

(assert (=> b!464220 m!732333))

(declare-fun m!736485 () Bool)

(assert (=> b!464220 m!736485))

(assert (=> bm!32219 m!730249))

(assert (=> bm!32219 m!730491))

(assert (=> b!464225 m!730249))

(assert (=> b!464225 m!732333))

(assert (=> b!464225 m!732333))

(assert (=> b!464225 m!736485))

(assert (=> b!464224 m!730497))

(declare-fun m!736487 () Bool)

(assert (=> b!464224 m!736487))

(assert (=> b!464229 m!730249))

(assert (=> b!464229 m!732325))

(assert (=> b!464229 m!730497))

(assert (=> b!464229 m!732325))

(declare-fun m!736489 () Bool)

(assert (=> b!464229 m!736489))

(assert (=> b!464229 m!730249))

(assert (=> b!464229 m!732333))

(assert (=> b!464229 m!736489))

(assert (=> b!464229 m!732333))

(declare-fun m!736491 () Bool)

(assert (=> b!464229 m!736491))

(assert (=> d!177069 m!730249))

(assert (=> d!177069 m!730491))

(assert (=> d!177069 m!730497))

(declare-fun m!736493 () Bool)

(assert (=> d!177069 m!736493))

(assert (=> b!464223 m!730249))

(assert (=> b!464223 m!732325))

(assert (=> b!461725 d!177069))

(declare-fun b!464253 () Bool)

(declare-fun e!284440 () Regex!1099)

(declare-fun call!32234 () Regex!1099)

(assert (=> b!464253 (= e!284440 (Union!1099 (Concat!1997 call!32234 (regTwo!2710 (regex!875 (rule!1570 (h!9892 tokens!465))))) EmptyLang!1099))))

(declare-fun b!464254 () Bool)

(declare-fun e!284436 () Regex!1099)

(declare-fun e!284438 () Regex!1099)

(assert (=> b!464254 (= e!284436 e!284438)))

(declare-fun c!93549 () Bool)

(assert (=> b!464254 (= c!93549 ((_ is Star!1099) (regex!875 (rule!1570 (h!9892 tokens!465)))))))

(declare-fun b!464255 () Bool)

(declare-fun c!93546 () Bool)

(assert (=> b!464255 (= c!93546 ((_ is Union!1099) (regex!875 (rule!1570 (h!9892 tokens!465)))))))

(declare-fun e!284437 () Regex!1099)

(assert (=> b!464255 (= e!284437 e!284436)))

(declare-fun call!32236 () Regex!1099)

(declare-fun bm!32228 () Bool)

(assert (=> bm!32228 (= call!32236 (derivativeStep!217 (ite c!93546 (regTwo!2711 (regex!875 (rule!1570 (h!9892 tokens!465)))) (ite c!93549 (reg!1428 (regex!875 (rule!1570 (h!9892 tokens!465)))) (regOne!2710 (regex!875 (rule!1570 (h!9892 tokens!465)))))) (head!1134 lt!205905)))))

(declare-fun call!32235 () Regex!1099)

(declare-fun b!464256 () Bool)

(assert (=> b!464256 (= e!284440 (Union!1099 (Concat!1997 call!32234 (regTwo!2710 (regex!875 (rule!1570 (h!9892 tokens!465))))) call!32235))))

(declare-fun bm!32229 () Bool)

(declare-fun call!32233 () Regex!1099)

(assert (=> bm!32229 (= call!32234 call!32233)))

(declare-fun b!464257 () Bool)

(assert (=> b!464257 (= e!284436 (Union!1099 call!32235 call!32236))))

(declare-fun b!464258 () Bool)

(declare-fun e!284439 () Regex!1099)

(assert (=> b!464258 (= e!284439 EmptyLang!1099)))

(declare-fun bm!32230 () Bool)

(assert (=> bm!32230 (= call!32233 call!32236)))

(declare-fun d!177071 () Bool)

(declare-fun lt!207708 () Regex!1099)

(assert (=> d!177071 (validRegex!326 lt!207708)))

(assert (=> d!177071 (= lt!207708 e!284439)))

(declare-fun c!93547 () Bool)

(assert (=> d!177071 (= c!93547 (or ((_ is EmptyExpr!1099) (regex!875 (rule!1570 (h!9892 tokens!465)))) ((_ is EmptyLang!1099) (regex!875 (rule!1570 (h!9892 tokens!465))))))))

(assert (=> d!177071 (validRegex!326 (regex!875 (rule!1570 (h!9892 tokens!465))))))

(assert (=> d!177071 (= (derivativeStep!217 (regex!875 (rule!1570 (h!9892 tokens!465))) (head!1134 lt!205905)) lt!207708)))

(declare-fun bm!32231 () Bool)

(assert (=> bm!32231 (= call!32235 (derivativeStep!217 (ite c!93546 (regOne!2711 (regex!875 (rule!1570 (h!9892 tokens!465)))) (regTwo!2710 (regex!875 (rule!1570 (h!9892 tokens!465))))) (head!1134 lt!205905)))))

(declare-fun b!464259 () Bool)

(assert (=> b!464259 (= e!284437 (ite (= (head!1134 lt!205905) (c!92855 (regex!875 (rule!1570 (h!9892 tokens!465))))) EmptyExpr!1099 EmptyLang!1099))))

(declare-fun b!464260 () Bool)

(assert (=> b!464260 (= e!284439 e!284437)))

(declare-fun c!93550 () Bool)

(assert (=> b!464260 (= c!93550 ((_ is ElementMatch!1099) (regex!875 (rule!1570 (h!9892 tokens!465)))))))

(declare-fun b!464261 () Bool)

(assert (=> b!464261 (= e!284438 (Concat!1997 call!32233 (regex!875 (rule!1570 (h!9892 tokens!465)))))))

(declare-fun b!464262 () Bool)

(declare-fun c!93548 () Bool)

(assert (=> b!464262 (= c!93548 (nullable!251 (regOne!2710 (regex!875 (rule!1570 (h!9892 tokens!465))))))))

(assert (=> b!464262 (= e!284438 e!284440)))

(assert (= (and d!177071 c!93547) b!464258))

(assert (= (and d!177071 (not c!93547)) b!464260))

(assert (= (and b!464260 c!93550) b!464259))

(assert (= (and b!464260 (not c!93550)) b!464255))

(assert (= (and b!464255 c!93546) b!464257))

(assert (= (and b!464255 (not c!93546)) b!464254))

(assert (= (and b!464254 c!93549) b!464261))

(assert (= (and b!464254 (not c!93549)) b!464262))

(assert (= (and b!464262 c!93548) b!464256))

(assert (= (and b!464262 (not c!93548)) b!464253))

(assert (= (or b!464256 b!464253) bm!32229))

(assert (= (or b!464261 bm!32229) bm!32230))

(assert (= (or b!464257 bm!32230) bm!32228))

(assert (= (or b!464257 b!464256) bm!32231))

(assert (=> bm!32228 m!730243))

(declare-fun m!736495 () Bool)

(assert (=> bm!32228 m!736495))

(declare-fun m!736497 () Bool)

(assert (=> d!177071 m!736497))

(assert (=> d!177071 m!730501))

(assert (=> bm!32231 m!730243))

(declare-fun m!736499 () Bool)

(assert (=> bm!32231 m!736499))

(declare-fun m!736501 () Bool)

(assert (=> b!464262 m!736501))

(assert (=> b!461725 d!177071))

(assert (=> b!461725 d!176131))

(assert (=> b!461725 d!176053))

(declare-fun d!177073 () Bool)

(assert (=> d!177073 (= (inv!15 (value!29253 separatorToken!170)) (= (charsToBigInt!0 (text!6728 (value!29253 separatorToken!170)) 0) (value!29248 (value!29253 separatorToken!170))))))

(declare-fun bs!57786 () Bool)

(assert (= bs!57786 d!177073))

(declare-fun m!736503 () Bool)

(assert (=> bs!57786 m!736503))

(assert (=> b!462109 d!177073))

(declare-fun d!177075 () Bool)

(assert (=> d!177075 (dynLambda!2749 lambda!13655 (h!9892 tokens!465))))

(declare-fun lt!207709 () Unit!8113)

(assert (=> d!177075 (= lt!207709 (choose!3471 tokens!465 lambda!13655 (h!9892 tokens!465)))))

(declare-fun e!284441 () Bool)

(assert (=> d!177075 e!284441))

(declare-fun res!206604 () Bool)

(assert (=> d!177075 (=> (not res!206604) (not e!284441))))

(assert (=> d!177075 (= res!206604 (forall!1308 tokens!465 lambda!13655))))

(assert (=> d!177075 (= (forallContained!428 tokens!465 lambda!13655 (h!9892 tokens!465)) lt!207709)))

(declare-fun b!464263 () Bool)

(assert (=> b!464263 (= e!284441 (contains!1009 tokens!465 (h!9892 tokens!465)))))

(assert (= (and d!177075 res!206604) b!464263))

(declare-fun b_lambda!19343 () Bool)

(assert (=> (not b_lambda!19343) (not d!177075)))

(declare-fun m!736505 () Bool)

(assert (=> d!177075 m!736505))

(declare-fun m!736507 () Bool)

(assert (=> d!177075 m!736507))

(declare-fun m!736509 () Bool)

(assert (=> d!177075 m!736509))

(assert (=> b!464263 m!730397))

(assert (=> b!462105 d!177075))

(assert (=> b!462105 d!175743))

(declare-fun e!284443 () Bool)

(declare-fun b!464267 () Bool)

(declare-fun lt!207710 () List!4503)

(assert (=> b!464267 (= e!284443 (or (not (= lt!206300 Nil!4493)) (= lt!207710 (list!2004 (charsOf!518 (h!9892 tokens!465))))))))

(declare-fun b!464264 () Bool)

(declare-fun e!284442 () List!4503)

(assert (=> b!464264 (= e!284442 lt!206300)))

(declare-fun b!464266 () Bool)

(declare-fun res!206606 () Bool)

(assert (=> b!464266 (=> (not res!206606) (not e!284443))))

(assert (=> b!464266 (= res!206606 (= (size!3674 lt!207710) (+ (size!3674 (list!2004 (charsOf!518 (h!9892 tokens!465)))) (size!3674 lt!206300))))))

(declare-fun d!177077 () Bool)

(assert (=> d!177077 e!284443))

(declare-fun res!206605 () Bool)

(assert (=> d!177077 (=> (not res!206605) (not e!284443))))

(assert (=> d!177077 (= res!206605 (= (content!752 lt!207710) ((_ map or) (content!752 (list!2004 (charsOf!518 (h!9892 tokens!465)))) (content!752 lt!206300))))))

(assert (=> d!177077 (= lt!207710 e!284442)))

(declare-fun c!93551 () Bool)

(assert (=> d!177077 (= c!93551 ((_ is Nil!4493) (list!2004 (charsOf!518 (h!9892 tokens!465)))))))

(assert (=> d!177077 (= (++!1312 (list!2004 (charsOf!518 (h!9892 tokens!465))) lt!206300) lt!207710)))

(declare-fun b!464265 () Bool)

(assert (=> b!464265 (= e!284442 (Cons!4493 (h!9890 (list!2004 (charsOf!518 (h!9892 tokens!465)))) (++!1312 (t!71883 (list!2004 (charsOf!518 (h!9892 tokens!465)))) lt!206300)))))

(assert (= (and d!177077 c!93551) b!464264))

(assert (= (and d!177077 (not c!93551)) b!464265))

(assert (= (and d!177077 res!206605) b!464266))

(assert (= (and b!464266 res!206606) b!464267))

(declare-fun m!736511 () Bool)

(assert (=> b!464266 m!736511))

(assert (=> b!464266 m!729949))

(declare-fun m!736513 () Bool)

(assert (=> b!464266 m!736513))

(assert (=> b!464266 m!735743))

(declare-fun m!736515 () Bool)

(assert (=> d!177077 m!736515))

(assert (=> d!177077 m!729949))

(declare-fun m!736517 () Bool)

(assert (=> d!177077 m!736517))

(assert (=> d!177077 m!735749))

(declare-fun m!736519 () Bool)

(assert (=> b!464265 m!736519))

(assert (=> b!462105 d!177077))

(declare-fun b!464268 () Bool)

(declare-fun e!284444 () Bool)

(declare-fun e!284446 () Bool)

(assert (=> b!464268 (= e!284444 e!284446)))

(declare-fun res!206607 () Bool)

(assert (=> b!464268 (=> (not res!206607) (not e!284446))))

(declare-fun lt!207715 () Option!1184)

(assert (=> b!464268 (= res!206607 (isDefined!1023 lt!207715))))

(declare-fun b!464269 () Bool)

(declare-fun e!284445 () Option!1184)

(declare-fun lt!207714 () Option!1184)

(declare-fun lt!207712 () Option!1184)

(assert (=> b!464269 (= e!284445 (ite (and ((_ is None!1183) lt!207714) ((_ is None!1183) lt!207712)) None!1183 (ite ((_ is None!1183) lt!207712) lt!207714 (ite ((_ is None!1183) lt!207714) lt!207712 (ite (>= (size!3667 (_1!2961 (v!15532 lt!207714))) (size!3667 (_1!2961 (v!15532 lt!207712)))) lt!207714 lt!207712)))))))

(declare-fun call!32237 () Option!1184)

(assert (=> b!464269 (= lt!207714 call!32237)))

(assert (=> b!464269 (= lt!207712 (maxPrefix!477 thiss!17480 (t!71884 rules!1920) (++!1312 (list!2004 (charsOf!518 (h!9892 tokens!465))) lt!206300)))))

(declare-fun b!464270 () Bool)

(assert (=> b!464270 (= e!284445 call!32237)))

(declare-fun b!464271 () Bool)

(declare-fun res!206608 () Bool)

(assert (=> b!464271 (=> (not res!206608) (not e!284446))))

(assert (=> b!464271 (= res!206608 (matchR!417 (regex!875 (rule!1570 (_1!2961 (get!1652 lt!207715)))) (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!207715))))))))

(declare-fun bm!32232 () Bool)

(assert (=> bm!32232 (= call!32237 (maxPrefixOneRule!229 thiss!17480 (h!9891 rules!1920) (++!1312 (list!2004 (charsOf!518 (h!9892 tokens!465))) lt!206300)))))

(declare-fun d!177079 () Bool)

(assert (=> d!177079 e!284444))

(declare-fun res!206612 () Bool)

(assert (=> d!177079 (=> res!206612 e!284444)))

(assert (=> d!177079 (= res!206612 (isEmpty!3490 lt!207715))))

(assert (=> d!177079 (= lt!207715 e!284445)))

(declare-fun c!93552 () Bool)

(assert (=> d!177079 (= c!93552 (and ((_ is Cons!4494) rules!1920) ((_ is Nil!4494) (t!71884 rules!1920))))))

(declare-fun lt!207713 () Unit!8113)

(declare-fun lt!207711 () Unit!8113)

(assert (=> d!177079 (= lt!207713 lt!207711)))

(assert (=> d!177079 (isPrefix!527 (++!1312 (list!2004 (charsOf!518 (h!9892 tokens!465))) lt!206300) (++!1312 (list!2004 (charsOf!518 (h!9892 tokens!465))) lt!206300))))

(assert (=> d!177079 (= lt!207711 (lemmaIsPrefixRefl!295 (++!1312 (list!2004 (charsOf!518 (h!9892 tokens!465))) lt!206300) (++!1312 (list!2004 (charsOf!518 (h!9892 tokens!465))) lt!206300)))))

(assert (=> d!177079 (rulesValidInductive!290 thiss!17480 rules!1920)))

(assert (=> d!177079 (= (maxPrefix!477 thiss!17480 rules!1920 (++!1312 (list!2004 (charsOf!518 (h!9892 tokens!465))) lt!206300)) lt!207715)))

(declare-fun b!464272 () Bool)

(assert (=> b!464272 (= e!284446 (contains!1008 rules!1920 (rule!1570 (_1!2961 (get!1652 lt!207715)))))))

(declare-fun b!464273 () Bool)

(declare-fun res!206610 () Bool)

(assert (=> b!464273 (=> (not res!206610) (not e!284446))))

(assert (=> b!464273 (= res!206610 (= (++!1312 (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!207715)))) (_2!2961 (get!1652 lt!207715))) (++!1312 (list!2004 (charsOf!518 (h!9892 tokens!465))) lt!206300)))))

(declare-fun b!464274 () Bool)

(declare-fun res!206609 () Bool)

(assert (=> b!464274 (=> (not res!206609) (not e!284446))))

(assert (=> b!464274 (= res!206609 (< (size!3674 (_2!2961 (get!1652 lt!207715))) (size!3674 (++!1312 (list!2004 (charsOf!518 (h!9892 tokens!465))) lt!206300))))))

(declare-fun b!464275 () Bool)

(declare-fun res!206613 () Bool)

(assert (=> b!464275 (=> (not res!206613) (not e!284446))))

(assert (=> b!464275 (= res!206613 (= (list!2004 (charsOf!518 (_1!2961 (get!1652 lt!207715)))) (originalCharacters!918 (_1!2961 (get!1652 lt!207715)))))))

(declare-fun b!464276 () Bool)

(declare-fun res!206611 () Bool)

(assert (=> b!464276 (=> (not res!206611) (not e!284446))))

(assert (=> b!464276 (= res!206611 (= (value!29253 (_1!2961 (get!1652 lt!207715))) (apply!1155 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!207715)))) (seqFromList!1115 (originalCharacters!918 (_1!2961 (get!1652 lt!207715)))))))))

(assert (= (and d!177079 c!93552) b!464270))

(assert (= (and d!177079 (not c!93552)) b!464269))

(assert (= (or b!464270 b!464269) bm!32232))

(assert (= (and d!177079 (not res!206612)) b!464268))

(assert (= (and b!464268 res!206607) b!464275))

(assert (= (and b!464275 res!206613) b!464274))

(assert (= (and b!464274 res!206609) b!464273))

(assert (= (and b!464273 res!206610) b!464276))

(assert (= (and b!464276 res!206611) b!464271))

(assert (= (and b!464271 res!206608) b!464272))

(declare-fun m!736521 () Bool)

(assert (=> b!464271 m!736521))

(declare-fun m!736523 () Bool)

(assert (=> b!464271 m!736523))

(assert (=> b!464271 m!736523))

(declare-fun m!736525 () Bool)

(assert (=> b!464271 m!736525))

(assert (=> b!464271 m!736525))

(declare-fun m!736527 () Bool)

(assert (=> b!464271 m!736527))

(declare-fun m!736529 () Bool)

(assert (=> b!464268 m!736529))

(declare-fun m!736531 () Bool)

(assert (=> d!177079 m!736531))

(assert (=> d!177079 m!731121))

(assert (=> d!177079 m!731121))

(declare-fun m!736533 () Bool)

(assert (=> d!177079 m!736533))

(assert (=> d!177079 m!731121))

(assert (=> d!177079 m!731121))

(declare-fun m!736535 () Bool)

(assert (=> d!177079 m!736535))

(assert (=> d!177079 m!730215))

(assert (=> b!464275 m!736521))

(assert (=> b!464275 m!736523))

(assert (=> b!464275 m!736523))

(assert (=> b!464275 m!736525))

(assert (=> b!464274 m!736521))

(declare-fun m!736537 () Bool)

(assert (=> b!464274 m!736537))

(assert (=> b!464274 m!731121))

(declare-fun m!736539 () Bool)

(assert (=> b!464274 m!736539))

(assert (=> bm!32232 m!731121))

(declare-fun m!736541 () Bool)

(assert (=> bm!32232 m!736541))

(assert (=> b!464272 m!736521))

(declare-fun m!736543 () Bool)

(assert (=> b!464272 m!736543))

(assert (=> b!464269 m!731121))

(declare-fun m!736545 () Bool)

(assert (=> b!464269 m!736545))

(assert (=> b!464276 m!736521))

(declare-fun m!736547 () Bool)

(assert (=> b!464276 m!736547))

(assert (=> b!464276 m!736547))

(declare-fun m!736549 () Bool)

(assert (=> b!464276 m!736549))

(assert (=> b!464273 m!736521))

(assert (=> b!464273 m!736523))

(assert (=> b!464273 m!736523))

(assert (=> b!464273 m!736525))

(assert (=> b!464273 m!736525))

(declare-fun m!736551 () Bool)

(assert (=> b!464273 m!736551))

(assert (=> b!462105 d!177079))

(assert (=> b!462105 d!175753))

(assert (=> b!462105 d!175757))

(declare-fun d!177081 () Bool)

(declare-fun lt!207716 () Int)

(assert (=> d!177081 (>= lt!207716 0)))

(declare-fun e!284447 () Int)

(assert (=> d!177081 (= lt!207716 e!284447)))

(declare-fun c!93553 () Bool)

(assert (=> d!177081 (= c!93553 ((_ is Nil!4493) lt!205947))))

(assert (=> d!177081 (= (size!3674 lt!205947) lt!207716)))

(declare-fun b!464277 () Bool)

(assert (=> b!464277 (= e!284447 0)))

(declare-fun b!464278 () Bool)

(assert (=> b!464278 (= e!284447 (+ 1 (size!3674 (t!71883 lt!205947))))))

(assert (= (and d!177081 c!93553) b!464277))

(assert (= (and d!177081 (not c!93553)) b!464278))

(declare-fun m!736553 () Bool)

(assert (=> b!464278 m!736553))

(assert (=> b!461416 d!177081))

(assert (=> b!461416 d!176129))

(declare-fun d!177083 () Bool)

(declare-fun lt!207717 () Int)

(assert (=> d!177083 (>= lt!207717 0)))

(declare-fun e!284448 () Int)

(assert (=> d!177083 (= lt!207717 e!284448)))

(declare-fun c!93554 () Bool)

(assert (=> d!177083 (= c!93554 ((_ is Nil!4493) (_2!2961 lt!205912)))))

(assert (=> d!177083 (= (size!3674 (_2!2961 lt!205912)) lt!207717)))

(declare-fun b!464279 () Bool)

(assert (=> b!464279 (= e!284448 0)))

(declare-fun b!464280 () Bool)

(assert (=> b!464280 (= e!284448 (+ 1 (size!3674 (t!71883 (_2!2961 lt!205912)))))))

(assert (= (and d!177083 c!93554) b!464279))

(assert (= (and d!177083 (not c!93554)) b!464280))

(declare-fun m!736555 () Bool)

(assert (=> b!464280 m!736555))

(assert (=> b!461416 d!177083))

(declare-fun b!464282 () Bool)

(declare-fun e!284449 () List!4503)

(declare-fun e!284450 () List!4503)

(assert (=> b!464282 (= e!284449 e!284450)))

(declare-fun c!93556 () Bool)

(assert (=> b!464282 (= c!93556 ((_ is Leaf!2349) (c!92854 (charsOf!518 separatorToken!170))))))

(declare-fun b!464281 () Bool)

(assert (=> b!464281 (= e!284449 Nil!4493)))

(declare-fun b!464283 () Bool)

(assert (=> b!464283 (= e!284450 (list!2011 (xs!4203 (c!92854 (charsOf!518 separatorToken!170)))))))

(declare-fun d!177085 () Bool)

(declare-fun c!93555 () Bool)

(assert (=> d!177085 (= c!93555 ((_ is Empty!1572) (c!92854 (charsOf!518 separatorToken!170))))))

(assert (=> d!177085 (= (list!2009 (c!92854 (charsOf!518 separatorToken!170))) e!284449)))

(declare-fun b!464284 () Bool)

(assert (=> b!464284 (= e!284450 (++!1312 (list!2009 (left!3800 (c!92854 (charsOf!518 separatorToken!170)))) (list!2009 (right!4130 (c!92854 (charsOf!518 separatorToken!170))))))))

(assert (= (and d!177085 c!93555) b!464281))

(assert (= (and d!177085 (not c!93555)) b!464282))

(assert (= (and b!464282 c!93556) b!464283))

(assert (= (and b!464282 (not c!93556)) b!464284))

(declare-fun m!736557 () Bool)

(assert (=> b!464283 m!736557))

(declare-fun m!736559 () Bool)

(assert (=> b!464284 m!736559))

(declare-fun m!736561 () Bool)

(assert (=> b!464284 m!736561))

(assert (=> b!464284 m!736559))

(assert (=> b!464284 m!736561))

(declare-fun m!736563 () Bool)

(assert (=> b!464284 m!736563))

(assert (=> d!175735 d!177085))

(declare-fun d!177087 () Bool)

(assert (=> d!177087 (= (list!2004 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170))) (list!2009 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170)))))))

(declare-fun bs!57787 () Bool)

(assert (= bs!57787 d!177087))

(declare-fun m!736565 () Bool)

(assert (=> bs!57787 m!736565))

(assert (=> b!461790 d!177087))

(declare-fun b!464285 () Bool)

(declare-fun e!284451 () Bool)

(declare-fun e!284454 () Bool)

(assert (=> b!464285 (= e!284451 e!284454)))

(declare-fun res!206619 () Bool)

(assert (=> b!464285 (=> (not res!206619) (not e!284454))))

(declare-fun lt!207719 () Option!1185)

(assert (=> b!464285 (= res!206619 (= (_1!2962 (get!1654 lt!207719)) (_1!2961 (get!1652 (maxPrefixZipper!198 thiss!17480 (t!71884 rules!1920) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))))

(declare-fun b!464286 () Bool)

(declare-fun e!284455 () Option!1185)

(declare-fun lt!207722 () Option!1185)

(declare-fun lt!207720 () Option!1185)

(assert (=> b!464286 (= e!284455 (ite (and ((_ is None!1184) lt!207722) ((_ is None!1184) lt!207720)) None!1184 (ite ((_ is None!1184) lt!207720) lt!207722 (ite ((_ is None!1184) lt!207722) lt!207720 (ite (>= (size!3667 (_1!2962 (v!15533 lt!207722))) (size!3667 (_1!2962 (v!15533 lt!207720)))) lt!207722 lt!207720)))))))

(declare-fun call!32238 () Option!1185)

(assert (=> b!464286 (= lt!207722 call!32238)))

(assert (=> b!464286 (= lt!207720 (maxPrefixZipperSequence!440 thiss!17480 (t!71884 (t!71884 rules!1920)) (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))

(declare-fun b!464287 () Bool)

(declare-fun e!284456 () Bool)

(declare-fun e!284452 () Bool)

(assert (=> b!464287 (= e!284456 e!284452)))

(declare-fun res!206618 () Bool)

(assert (=> b!464287 (=> res!206618 e!284452)))

(assert (=> b!464287 (= res!206618 (not (isDefined!1024 lt!207719)))))

(declare-fun e!284453 () Bool)

(declare-fun b!464288 () Bool)

(assert (=> b!464288 (= e!284453 (= (list!2004 (_2!2962 (get!1654 lt!207719))) (_2!2961 (get!1652 (maxPrefix!477 thiss!17480 (t!71884 rules!1920) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))))

(declare-fun b!464289 () Bool)

(declare-fun res!206616 () Bool)

(assert (=> b!464289 (=> (not res!206616) (not e!284456))))

(assert (=> b!464289 (= res!206616 e!284451)))

(declare-fun res!206617 () Bool)

(assert (=> b!464289 (=> res!206617 e!284451)))

(assert (=> b!464289 (= res!206617 (not (isDefined!1024 lt!207719)))))

(declare-fun b!464290 () Bool)

(assert (=> b!464290 (= e!284452 e!284453)))

(declare-fun res!206614 () Bool)

(assert (=> b!464290 (=> (not res!206614) (not e!284453))))

(assert (=> b!464290 (= res!206614 (= (_1!2962 (get!1654 lt!207719)) (_1!2961 (get!1652 (maxPrefix!477 thiss!17480 (t!71884 rules!1920) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))))

(declare-fun bm!32233 () Bool)

(assert (=> bm!32233 (= call!32238 (maxPrefixOneRuleZipperSequence!199 thiss!17480 (h!9891 (t!71884 rules!1920)) (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))

(declare-fun b!464292 () Bool)

(assert (=> b!464292 (= e!284454 (= (list!2004 (_2!2962 (get!1654 lt!207719))) (_2!2961 (get!1652 (maxPrefixZipper!198 thiss!17480 (t!71884 rules!1920) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))))

(declare-fun d!177089 () Bool)

(assert (=> d!177089 e!284456))

(declare-fun res!206615 () Bool)

(assert (=> d!177089 (=> (not res!206615) (not e!284456))))

(assert (=> d!177089 (= res!206615 (= (isDefined!1024 lt!207719) (isDefined!1023 (maxPrefixZipper!198 thiss!17480 (t!71884 rules!1920) (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))))))))

(assert (=> d!177089 (= lt!207719 e!284455)))

(declare-fun c!93557 () Bool)

(assert (=> d!177089 (= c!93557 (and ((_ is Cons!4494) (t!71884 rules!1920)) ((_ is Nil!4494) (t!71884 (t!71884 rules!1920)))))))

(declare-fun lt!207718 () Unit!8113)

(declare-fun lt!207724 () Unit!8113)

(assert (=> d!177089 (= lt!207718 lt!207724)))

(declare-fun lt!207723 () List!4503)

(declare-fun lt!207721 () List!4503)

(assert (=> d!177089 (isPrefix!527 lt!207723 lt!207721)))

(assert (=> d!177089 (= lt!207724 (lemmaIsPrefixRefl!295 lt!207723 lt!207721))))

(assert (=> d!177089 (= lt!207721 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))

(assert (=> d!177089 (= lt!207723 (list!2004 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))

(assert (=> d!177089 (rulesValidInductive!290 thiss!17480 (t!71884 rules!1920))))

(assert (=> d!177089 (= (maxPrefixZipperSequence!440 thiss!17480 (t!71884 rules!1920) (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))) lt!207719)))

(declare-fun b!464291 () Bool)

(assert (=> b!464291 (= e!284455 call!32238)))

(assert (= (and d!177089 c!93557) b!464291))

(assert (= (and d!177089 (not c!93557)) b!464286))

(assert (= (or b!464291 b!464286) bm!32233))

(assert (= (and d!177089 res!206615) b!464289))

(assert (= (and b!464289 (not res!206617)) b!464285))

(assert (= (and b!464285 res!206619) b!464292))

(assert (= (and b!464289 res!206616) b!464287))

(assert (= (and b!464287 (not res!206618)) b!464290))

(assert (= (and b!464290 res!206614) b!464288))

(assert (=> d!177089 m!733181))

(assert (=> d!177089 m!729905))

(assert (=> d!177089 m!730337))

(declare-fun m!736567 () Bool)

(assert (=> d!177089 m!736567))

(assert (=> d!177089 m!732459))

(declare-fun m!736569 () Bool)

(assert (=> d!177089 m!736569))

(declare-fun m!736571 () Bool)

(assert (=> d!177089 m!736571))

(declare-fun m!736573 () Bool)

(assert (=> d!177089 m!736573))

(assert (=> d!177089 m!730337))

(assert (=> d!177089 m!732459))

(assert (=> b!464287 m!736567))

(assert (=> b!464289 m!736567))

(declare-fun m!736575 () Bool)

(assert (=> b!464292 m!736575))

(assert (=> b!464292 m!729905))

(assert (=> b!464292 m!730337))

(assert (=> b!464292 m!732459))

(declare-fun m!736577 () Bool)

(assert (=> b!464292 m!736577))

(declare-fun m!736579 () Bool)

(assert (=> b!464292 m!736579))

(assert (=> b!464292 m!730337))

(assert (=> b!464292 m!732459))

(assert (=> b!464286 m!729905))

(declare-fun m!736581 () Bool)

(assert (=> b!464286 m!736581))

(assert (=> b!464285 m!736579))

(assert (=> b!464285 m!729905))

(assert (=> b!464285 m!730337))

(assert (=> b!464285 m!730337))

(assert (=> b!464285 m!732459))

(assert (=> b!464285 m!732459))

(assert (=> b!464285 m!736577))

(assert (=> b!464288 m!736575))

(assert (=> b!464288 m!729905))

(assert (=> b!464288 m!730337))

(assert (=> b!464288 m!733105))

(declare-fun m!736583 () Bool)

(assert (=> b!464288 m!736583))

(assert (=> b!464288 m!736579))

(assert (=> b!464288 m!730337))

(assert (=> b!464288 m!733105))

(assert (=> b!464290 m!736579))

(assert (=> b!464290 m!729905))

(assert (=> b!464290 m!730337))

(assert (=> b!464290 m!730337))

(assert (=> b!464290 m!733105))

(assert (=> b!464290 m!733105))

(assert (=> b!464290 m!736583))

(assert (=> bm!32233 m!729905))

(declare-fun m!736585 () Bool)

(assert (=> bm!32233 m!736585))

(assert (=> b!461621 d!177089))

(declare-fun d!177091 () Bool)

(declare-fun lt!207725 () Token!1494)

(assert (=> d!177091 (= lt!207725 (apply!1158 (list!2005 (_1!2963 lt!206080)) 0))))

(assert (=> d!177091 (= lt!207725 (apply!1160 (c!92856 (_1!2963 lt!206080)) 0))))

(declare-fun e!284457 () Bool)

(assert (=> d!177091 e!284457))

(declare-fun res!206620 () Bool)

(assert (=> d!177091 (=> (not res!206620) (not e!284457))))

(assert (=> d!177091 (= res!206620 (<= 0 0))))

(assert (=> d!177091 (= (apply!1157 (_1!2963 lt!206080) 0) lt!207725)))

(declare-fun b!464293 () Bool)

(assert (=> b!464293 (= e!284457 (< 0 (size!3672 (_1!2963 lt!206080))))))

(assert (= (and d!177091 res!206620) b!464293))

(assert (=> d!177091 m!736291))

(assert (=> d!177091 m!736291))

(declare-fun m!736587 () Bool)

(assert (=> d!177091 m!736587))

(declare-fun m!736589 () Bool)

(assert (=> d!177091 m!736589))

(assert (=> b!464293 m!730511))

(assert (=> b!461735 d!177091))

(assert (=> b!462129 d!176341))

(declare-fun d!177093 () Bool)

(declare-fun c!93558 () Bool)

(assert (=> d!177093 (= c!93558 ((_ is Node!1572) (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465))))))))

(declare-fun e!284458 () Bool)

(assert (=> d!177093 (= (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465))))) e!284458)))

(declare-fun b!464294 () Bool)

(assert (=> b!464294 (= e!284458 (inv!5581 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465))))))))

(declare-fun b!464295 () Bool)

(declare-fun e!284459 () Bool)

(assert (=> b!464295 (= e!284458 e!284459)))

(declare-fun res!206621 () Bool)

(assert (=> b!464295 (= res!206621 (not ((_ is Leaf!2349) (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465)))))))))

(assert (=> b!464295 (=> res!206621 e!284459)))

(declare-fun b!464296 () Bool)

(assert (=> b!464296 (= e!284459 (inv!5582 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465))))))))

(assert (= (and d!177093 c!93558) b!464294))

(assert (= (and d!177093 (not c!93558)) b!464295))

(assert (= (and b!464295 (not res!206621)) b!464296))

(declare-fun m!736591 () Bool)

(assert (=> b!464294 m!736591))

(declare-fun m!736593 () Bool)

(assert (=> b!464296 m!736593))

(assert (=> b!461677 d!177093))

(declare-fun d!177095 () Bool)

(assert (=> d!177095 (= (isEmpty!3491 (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465))))) (not ((_ is Some!1184) (maxPrefixZipperSequence!440 thiss!17480 rules!1920 (seqFromList!1115 (originalCharacters!918 (h!9892 tokens!465)))))))))

(assert (=> d!175555 d!177095))

(declare-fun lt!207726 () List!4503)

(declare-fun b!464300 () Bool)

(declare-fun e!284461 () Bool)

(assert (=> b!464300 (= e!284461 (or (not (= lt!205896 Nil!4493)) (= lt!207726 (t!71883 lt!205905))))))

(declare-fun b!464297 () Bool)

(declare-fun e!284460 () List!4503)

(assert (=> b!464297 (= e!284460 lt!205896)))

(declare-fun b!464299 () Bool)

(declare-fun res!206623 () Bool)

(assert (=> b!464299 (=> (not res!206623) (not e!284461))))

(assert (=> b!464299 (= res!206623 (= (size!3674 lt!207726) (+ (size!3674 (t!71883 lt!205905)) (size!3674 lt!205896))))))

(declare-fun d!177097 () Bool)

(assert (=> d!177097 e!284461))

(declare-fun res!206622 () Bool)

(assert (=> d!177097 (=> (not res!206622) (not e!284461))))

(assert (=> d!177097 (= res!206622 (= (content!752 lt!207726) ((_ map or) (content!752 (t!71883 lt!205905)) (content!752 lt!205896))))))

(assert (=> d!177097 (= lt!207726 e!284460)))

(declare-fun c!93559 () Bool)

(assert (=> d!177097 (= c!93559 ((_ is Nil!4493) (t!71883 lt!205905)))))

(assert (=> d!177097 (= (++!1312 (t!71883 lt!205905) lt!205896) lt!207726)))

(declare-fun b!464298 () Bool)

(assert (=> b!464298 (= e!284460 (Cons!4493 (h!9890 (t!71883 lt!205905)) (++!1312 (t!71883 (t!71883 lt!205905)) lt!205896)))))

(assert (= (and d!177097 c!93559) b!464297))

(assert (= (and d!177097 (not c!93559)) b!464298))

(assert (= (and d!177097 res!206622) b!464299))

(assert (= (and b!464299 res!206623) b!464300))

(declare-fun m!736595 () Bool)

(assert (=> b!464299 m!736595))

(assert (=> b!464299 m!732447))

(assert (=> b!464299 m!731251))

(declare-fun m!736597 () Bool)

(assert (=> d!177097 m!736597))

(assert (=> d!177097 m!732415))

(assert (=> d!177097 m!731255))

(declare-fun m!736599 () Bool)

(assert (=> b!464298 m!736599))

(assert (=> b!462142 d!177097))

(declare-fun b!464303 () Bool)

(declare-fun e!284464 () Bool)

(assert (=> b!464303 (= e!284464 true)))

(declare-fun b!464302 () Bool)

(declare-fun e!284463 () Bool)

(assert (=> b!464302 (= e!284463 e!284464)))

(declare-fun b!464301 () Bool)

(declare-fun e!284462 () Bool)

(assert (=> b!464301 (= e!284462 e!284463)))

(assert (=> b!462138 e!284462))

(assert (= b!464302 b!464303))

(assert (= b!464301 b!464302))

(assert (= (and b!462138 ((_ is Cons!4494) (t!71884 rules!1920))) b!464301))

(assert (=> b!464303 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 (t!71884 rules!1920))))) (dynLambda!2745 order!4011 lambda!13658))))

(assert (=> b!464303 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920))))) (dynLambda!2745 order!4011 lambda!13658))))

(declare-fun b!464304 () Bool)

(declare-fun e!284465 () Bool)

(assert (=> b!464304 (= e!284465 tp_is_empty!1995)))

(declare-fun b!464307 () Bool)

(declare-fun tp!127923 () Bool)

(declare-fun tp!127921 () Bool)

(assert (=> b!464307 (= e!284465 (and tp!127923 tp!127921))))

(declare-fun b!464305 () Bool)

(declare-fun tp!127925 () Bool)

(declare-fun tp!127924 () Bool)

(assert (=> b!464305 (= e!284465 (and tp!127925 tp!127924))))

(declare-fun b!464306 () Bool)

(declare-fun tp!127922 () Bool)

(assert (=> b!464306 (= e!284465 tp!127922)))

(assert (=> b!462169 (= tp!127751 e!284465)))

(assert (= (and b!462169 ((_ is ElementMatch!1099) (regOne!2710 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464304))

(assert (= (and b!462169 ((_ is Concat!1997) (regOne!2710 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464305))

(assert (= (and b!462169 ((_ is Star!1099) (regOne!2710 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464306))

(assert (= (and b!462169 ((_ is Union!1099) (regOne!2710 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464307))

(declare-fun b!464308 () Bool)

(declare-fun e!284466 () Bool)

(assert (=> b!464308 (= e!284466 tp_is_empty!1995)))

(declare-fun b!464311 () Bool)

(declare-fun tp!127928 () Bool)

(declare-fun tp!127926 () Bool)

(assert (=> b!464311 (= e!284466 (and tp!127928 tp!127926))))

(declare-fun b!464309 () Bool)

(declare-fun tp!127930 () Bool)

(declare-fun tp!127929 () Bool)

(assert (=> b!464309 (= e!284466 (and tp!127930 tp!127929))))

(declare-fun b!464310 () Bool)

(declare-fun tp!127927 () Bool)

(assert (=> b!464310 (= e!284466 tp!127927)))

(assert (=> b!462169 (= tp!127750 e!284466)))

(assert (= (and b!462169 ((_ is ElementMatch!1099) (regTwo!2710 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464308))

(assert (= (and b!462169 ((_ is Concat!1997) (regTwo!2710 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464309))

(assert (= (and b!462169 ((_ is Star!1099) (regTwo!2710 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464310))

(assert (= (and b!462169 ((_ is Union!1099) (regTwo!2710 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464311))

(declare-fun b!464312 () Bool)

(declare-fun e!284467 () Bool)

(assert (=> b!464312 (= e!284467 tp_is_empty!1995)))

(declare-fun b!464315 () Bool)

(declare-fun tp!127933 () Bool)

(declare-fun tp!127931 () Bool)

(assert (=> b!464315 (= e!284467 (and tp!127933 tp!127931))))

(declare-fun b!464313 () Bool)

(declare-fun tp!127935 () Bool)

(declare-fun tp!127934 () Bool)

(assert (=> b!464313 (= e!284467 (and tp!127935 tp!127934))))

(declare-fun b!464314 () Bool)

(declare-fun tp!127932 () Bool)

(assert (=> b!464314 (= e!284467 tp!127932)))

(assert (=> b!462170 (= tp!127748 e!284467)))

(assert (= (and b!462170 ((_ is ElementMatch!1099) (reg!1428 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464312))

(assert (= (and b!462170 ((_ is Concat!1997) (reg!1428 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464313))

(assert (= (and b!462170 ((_ is Star!1099) (reg!1428 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464314))

(assert (= (and b!462170 ((_ is Union!1099) (reg!1428 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464315))

(declare-fun b!464316 () Bool)

(declare-fun e!284468 () Bool)

(assert (=> b!464316 (= e!284468 tp_is_empty!1995)))

(declare-fun b!464319 () Bool)

(declare-fun tp!127938 () Bool)

(declare-fun tp!127936 () Bool)

(assert (=> b!464319 (= e!284468 (and tp!127938 tp!127936))))

(declare-fun b!464317 () Bool)

(declare-fun tp!127940 () Bool)

(declare-fun tp!127939 () Bool)

(assert (=> b!464317 (= e!284468 (and tp!127940 tp!127939))))

(declare-fun b!464318 () Bool)

(declare-fun tp!127937 () Bool)

(assert (=> b!464318 (= e!284468 tp!127937)))

(assert (=> b!462207 (= tp!127786 e!284468)))

(assert (= (and b!462207 ((_ is ElementMatch!1099) (regex!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))) b!464316))

(assert (= (and b!462207 ((_ is Concat!1997) (regex!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))) b!464317))

(assert (= (and b!462207 ((_ is Star!1099) (regex!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))) b!464318))

(assert (= (and b!462207 ((_ is Union!1099) (regex!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))) b!464319))

(declare-fun b!464322 () Bool)

(declare-fun e!284471 () Bool)

(assert (=> b!464322 (= e!284471 true)))

(declare-fun b!464321 () Bool)

(declare-fun e!284470 () Bool)

(assert (=> b!464321 (= e!284470 e!284471)))

(declare-fun b!464320 () Bool)

(declare-fun e!284469 () Bool)

(assert (=> b!464320 (= e!284469 e!284470)))

(assert (=> b!462106 e!284469))

(assert (= b!464321 b!464322))

(assert (= b!464320 b!464321))

(assert (= (and b!462106 ((_ is Cons!4494) (t!71884 rules!1920))) b!464320))

(assert (=> b!464322 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 (t!71884 rules!1920))))) (dynLambda!2745 order!4011 lambda!13655))))

(assert (=> b!464322 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920))))) (dynLambda!2745 order!4011 lambda!13655))))

(declare-fun b!464323 () Bool)

(declare-fun e!284472 () Bool)

(assert (=> b!464323 (= e!284472 tp_is_empty!1995)))

(declare-fun b!464326 () Bool)

(declare-fun tp!127943 () Bool)

(declare-fun tp!127941 () Bool)

(assert (=> b!464326 (= e!284472 (and tp!127943 tp!127941))))

(declare-fun b!464324 () Bool)

(declare-fun tp!127945 () Bool)

(declare-fun tp!127944 () Bool)

(assert (=> b!464324 (= e!284472 (and tp!127945 tp!127944))))

(declare-fun b!464325 () Bool)

(declare-fun tp!127942 () Bool)

(assert (=> b!464325 (= e!284472 tp!127942)))

(assert (=> b!462171 (= tp!127749 e!284472)))

(assert (= (and b!462171 ((_ is ElementMatch!1099) (regOne!2711 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464323))

(assert (= (and b!462171 ((_ is Concat!1997) (regOne!2711 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464324))

(assert (= (and b!462171 ((_ is Star!1099) (regOne!2711 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464325))

(assert (= (and b!462171 ((_ is Union!1099) (regOne!2711 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464326))

(declare-fun b!464327 () Bool)

(declare-fun e!284473 () Bool)

(assert (=> b!464327 (= e!284473 tp_is_empty!1995)))

(declare-fun b!464330 () Bool)

(declare-fun tp!127948 () Bool)

(declare-fun tp!127946 () Bool)

(assert (=> b!464330 (= e!284473 (and tp!127948 tp!127946))))

(declare-fun b!464328 () Bool)

(declare-fun tp!127950 () Bool)

(declare-fun tp!127949 () Bool)

(assert (=> b!464328 (= e!284473 (and tp!127950 tp!127949))))

(declare-fun b!464329 () Bool)

(declare-fun tp!127947 () Bool)

(assert (=> b!464329 (= e!284473 tp!127947)))

(assert (=> b!462171 (= tp!127747 e!284473)))

(assert (= (and b!462171 ((_ is ElementMatch!1099) (regTwo!2711 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464327))

(assert (= (and b!462171 ((_ is Concat!1997) (regTwo!2711 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464328))

(assert (= (and b!462171 ((_ is Star!1099) (regTwo!2711 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464329))

(assert (= (and b!462171 ((_ is Union!1099) (regTwo!2711 (regex!875 (rule!1570 (h!9892 tokens!465)))))) b!464330))

(declare-fun b!464331 () Bool)

(declare-fun e!284474 () Bool)

(declare-fun tp!127951 () Bool)

(assert (=> b!464331 (= e!284474 (and tp_is_empty!1995 tp!127951))))

(assert (=> b!462157 (= tp!127736 e!284474)))

(assert (= (and b!462157 ((_ is Cons!4493) (t!71883 (originalCharacters!918 (h!9892 tokens!465))))) b!464331))

(declare-fun tp!127958 () Bool)

(declare-fun tp!127960 () Bool)

(declare-fun e!284479 () Bool)

(declare-fun b!464340 () Bool)

(assert (=> b!464340 (= e!284479 (and (inv!5577 (left!3800 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170))))) tp!127960 (inv!5577 (right!4130 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170))))) tp!127958))))

(declare-fun b!464342 () Bool)

(declare-fun e!284480 () Bool)

(declare-fun tp!127959 () Bool)

(assert (=> b!464342 (= e!284480 tp!127959)))

(declare-fun b!464341 () Bool)

(declare-fun inv!5584 (IArray!3145) Bool)

(assert (=> b!464341 (= e!284479 (and (inv!5584 (xs!4203 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170))))) e!284480))))

(assert (=> b!461792 (= tp!127676 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170)))) e!284479))))

(assert (= (and b!461792 ((_ is Node!1572) (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170))))) b!464340))

(assert (= b!464341 b!464342))

(assert (= (and b!461792 ((_ is Leaf!2349) (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (value!29253 separatorToken!170))))) b!464341))

(declare-fun m!736601 () Bool)

(assert (=> b!464340 m!736601))

(declare-fun m!736603 () Bool)

(assert (=> b!464340 m!736603))

(declare-fun m!736605 () Bool)

(assert (=> b!464341 m!736605))

(assert (=> b!461792 m!730609))

(declare-fun b!464343 () Bool)

(declare-fun e!284481 () Bool)

(assert (=> b!464343 (= e!284481 tp_is_empty!1995)))

(declare-fun b!464346 () Bool)

(declare-fun tp!127963 () Bool)

(declare-fun tp!127961 () Bool)

(assert (=> b!464346 (= e!284481 (and tp!127963 tp!127961))))

(declare-fun b!464344 () Bool)

(declare-fun tp!127965 () Bool)

(declare-fun tp!127964 () Bool)

(assert (=> b!464344 (= e!284481 (and tp!127965 tp!127964))))

(declare-fun b!464345 () Bool)

(declare-fun tp!127962 () Bool)

(assert (=> b!464345 (= e!284481 tp!127962)))

(assert (=> b!462191 (= tp!127773 e!284481)))

(assert (= (and b!462191 ((_ is ElementMatch!1099) (regOne!2710 (regex!875 (rule!1570 separatorToken!170))))) b!464343))

(assert (= (and b!462191 ((_ is Concat!1997) (regOne!2710 (regex!875 (rule!1570 separatorToken!170))))) b!464344))

(assert (= (and b!462191 ((_ is Star!1099) (regOne!2710 (regex!875 (rule!1570 separatorToken!170))))) b!464345))

(assert (= (and b!462191 ((_ is Union!1099) (regOne!2710 (regex!875 (rule!1570 separatorToken!170))))) b!464346))

(declare-fun b!464347 () Bool)

(declare-fun e!284482 () Bool)

(assert (=> b!464347 (= e!284482 tp_is_empty!1995)))

(declare-fun b!464350 () Bool)

(declare-fun tp!127968 () Bool)

(declare-fun tp!127966 () Bool)

(assert (=> b!464350 (= e!284482 (and tp!127968 tp!127966))))

(declare-fun b!464348 () Bool)

(declare-fun tp!127970 () Bool)

(declare-fun tp!127969 () Bool)

(assert (=> b!464348 (= e!284482 (and tp!127970 tp!127969))))

(declare-fun b!464349 () Bool)

(declare-fun tp!127967 () Bool)

(assert (=> b!464349 (= e!284482 tp!127967)))

(assert (=> b!462191 (= tp!127772 e!284482)))

(assert (= (and b!462191 ((_ is ElementMatch!1099) (regTwo!2710 (regex!875 (rule!1570 separatorToken!170))))) b!464347))

(assert (= (and b!462191 ((_ is Concat!1997) (regTwo!2710 (regex!875 (rule!1570 separatorToken!170))))) b!464348))

(assert (= (and b!462191 ((_ is Star!1099) (regTwo!2710 (regex!875 (rule!1570 separatorToken!170))))) b!464349))

(assert (= (and b!462191 ((_ is Union!1099) (regTwo!2710 (regex!875 (rule!1570 separatorToken!170))))) b!464350))

(declare-fun b!464353 () Bool)

(declare-fun e!284485 () Bool)

(assert (=> b!464353 (= e!284485 true)))

(declare-fun b!464352 () Bool)

(declare-fun e!284484 () Bool)

(assert (=> b!464352 (= e!284484 e!284485)))

(declare-fun b!464351 () Bool)

(declare-fun e!284483 () Bool)

(assert (=> b!464351 (= e!284483 e!284484)))

(assert (=> b!462126 e!284483))

(assert (= b!464352 b!464353))

(assert (= b!464351 b!464352))

(assert (= (and b!462126 ((_ is Cons!4494) (t!71884 rules!1920))) b!464351))

(assert (=> b!464353 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 (t!71884 rules!1920))))) (dynLambda!2745 order!4011 lambda!13656))))

(assert (=> b!464353 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920))))) (dynLambda!2745 order!4011 lambda!13656))))

(declare-fun b!464354 () Bool)

(declare-fun e!284486 () Bool)

(assert (=> b!464354 (= e!284486 tp_is_empty!1995)))

(declare-fun b!464357 () Bool)

(declare-fun tp!127973 () Bool)

(declare-fun tp!127971 () Bool)

(assert (=> b!464357 (= e!284486 (and tp!127973 tp!127971))))

(declare-fun b!464355 () Bool)

(declare-fun tp!127975 () Bool)

(declare-fun tp!127974 () Bool)

(assert (=> b!464355 (= e!284486 (and tp!127975 tp!127974))))

(declare-fun b!464356 () Bool)

(declare-fun tp!127972 () Bool)

(assert (=> b!464356 (= e!284486 tp!127972)))

(assert (=> b!462173 (= tp!127756 e!284486)))

(assert (= (and b!462173 ((_ is ElementMatch!1099) (regOne!2710 (regex!875 (h!9891 rules!1920))))) b!464354))

(assert (= (and b!462173 ((_ is Concat!1997) (regOne!2710 (regex!875 (h!9891 rules!1920))))) b!464355))

(assert (= (and b!462173 ((_ is Star!1099) (regOne!2710 (regex!875 (h!9891 rules!1920))))) b!464356))

(assert (= (and b!462173 ((_ is Union!1099) (regOne!2710 (regex!875 (h!9891 rules!1920))))) b!464357))

(declare-fun b!464358 () Bool)

(declare-fun e!284487 () Bool)

(assert (=> b!464358 (= e!284487 tp_is_empty!1995)))

(declare-fun b!464361 () Bool)

(declare-fun tp!127978 () Bool)

(declare-fun tp!127976 () Bool)

(assert (=> b!464361 (= e!284487 (and tp!127978 tp!127976))))

(declare-fun b!464359 () Bool)

(declare-fun tp!127980 () Bool)

(declare-fun tp!127979 () Bool)

(assert (=> b!464359 (= e!284487 (and tp!127980 tp!127979))))

(declare-fun b!464360 () Bool)

(declare-fun tp!127977 () Bool)

(assert (=> b!464360 (= e!284487 tp!127977)))

(assert (=> b!462173 (= tp!127755 e!284487)))

(assert (= (and b!462173 ((_ is ElementMatch!1099) (regTwo!2710 (regex!875 (h!9891 rules!1920))))) b!464358))

(assert (= (and b!462173 ((_ is Concat!1997) (regTwo!2710 (regex!875 (h!9891 rules!1920))))) b!464359))

(assert (= (and b!462173 ((_ is Star!1099) (regTwo!2710 (regex!875 (h!9891 rules!1920))))) b!464360))

(assert (= (and b!462173 ((_ is Union!1099) (regTwo!2710 (regex!875 (h!9891 rules!1920))))) b!464361))

(declare-fun b!464364 () Bool)

(declare-fun b_free!12981 () Bool)

(declare-fun b_next!12981 () Bool)

(assert (=> b!464364 (= b_free!12981 (not b_next!12981))))

(declare-fun tb!46441 () Bool)

(declare-fun t!72287 () Bool)

(assert (=> (and b!464364 (= (toValue!1694 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!72287) tb!46441))

(declare-fun result!51132 () Bool)

(assert (= result!51132 result!50904))

(assert (=> d!176329 t!72287))

(declare-fun t!72289 () Bool)

(declare-fun tb!46443 () Bool)

(assert (=> (and b!464364 (= (toValue!1694 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72289) tb!46443))

(declare-fun result!51134 () Bool)

(assert (= result!51134 result!50998))

(assert (=> d!176659 t!72289))

(declare-fun tp!127984 () Bool)

(declare-fun b_and!49893 () Bool)

(assert (=> b!464364 (= tp!127984 (and (=> t!72287 result!51132) (=> t!72289 result!51134) b_and!49893))))

(declare-fun b_free!12983 () Bool)

(declare-fun b_next!12983 () Bool)

(assert (=> b!464364 (= b_free!12983 (not b_next!12983))))

(declare-fun tb!46445 () Bool)

(declare-fun t!72291 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92975 call!32050 call!32053))))) t!72291) tb!46445))

(declare-fun result!51136 () Bool)

(assert (= result!51136 result!51080))

(assert (=> d!176823 t!72291))

(declare-fun t!72293 () Bool)

(declare-fun tb!46447 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))) t!72293) tb!46447))

(declare-fun result!51138 () Bool)

(assert (= result!51138 result!50884))

(assert (=> d!176241 t!72293))

(declare-fun tb!46449 () Bool)

(declare-fun t!72295 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))) t!72295) tb!46449))

(declare-fun result!51140 () Bool)

(assert (= result!51140 result!51090))

(assert (=> d!176849 t!72295))

(declare-fun tb!46451 () Bool)

(declare-fun t!72297 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93018 separatorToken!170 call!32082))))) t!72297) tb!46451))

(declare-fun result!51142 () Bool)

(assert (= result!51142 result!51100))

(assert (=> d!176963 t!72297))

(declare-fun tb!46453 () Bool)

(declare-fun t!72299 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72299) tb!46453))

(declare-fun result!51144 () Bool)

(assert (= result!51144 result!50854))

(assert (=> d!176111 t!72299))

(assert (=> b!463997 t!72293))

(declare-fun tb!46455 () Bool)

(declare-fun t!72301 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170)))) t!72301) tb!46455))

(declare-fun result!51146 () Bool)

(assert (= result!51146 result!50760))

(assert (=> b!461790 t!72301))

(declare-fun tb!46457 () Bool)

(declare-fun t!72303 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465))))) t!72303) tb!46457))

(declare-fun result!51148 () Bool)

(assert (= result!51148 result!50752))

(assert (=> b!461671 t!72303))

(declare-fun t!72305 () Bool)

(declare-fun tb!46459 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205904 0))))) t!72305) tb!46459))

(declare-fun result!51150 () Bool)

(assert (= result!51150 result!51120))

(assert (=> d!177053 t!72305))

(declare-fun t!72307 () Bool)

(declare-fun tb!46461 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92976 separatorToken!170 call!32053))))) t!72307) tb!46461))

(declare-fun result!51152 () Bool)

(assert (= result!51152 result!50864))

(assert (=> d!176135 t!72307))

(assert (=> d!175747 t!72301))

(assert (=> d!175757 t!72303))

(declare-fun t!72309 () Bool)

(declare-fun tb!46463 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))))) t!72309) tb!46463))

(declare-fun result!51154 () Bool)

(assert (= result!51154 result!51110))

(assert (=> d!177007 t!72309))

(declare-fun tb!46465 () Bool)

(declare-fun t!72311 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93017 call!32079 call!32082))))) t!72311) tb!46465))

(declare-fun result!51156 () Bool)

(assert (= result!51156 result!50988))

(assert (=> d!176655 t!72311))

(declare-fun tb!46467 () Bool)

(declare-fun t!72313 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!72313) tb!46467))

(declare-fun result!51158 () Bool)

(assert (= result!51158 result!50844))

(assert (=> d!176067 t!72313))

(declare-fun t!72315 () Bool)

(declare-fun tb!46469 () Bool)

(assert (=> (and b!464364 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205900 0))))) t!72315) tb!46469))

(declare-fun result!51160 () Bool)

(assert (= result!51160 result!50874))

(assert (=> d!176185 t!72315))

(declare-fun tp!127981 () Bool)

(declare-fun b_and!49895 () Bool)

(assert (=> b!464364 (= tp!127981 (and (=> t!72311 result!51156) (=> t!72313 result!51158) (=> t!72291 result!51136) (=> t!72293 result!51138) (=> t!72305 result!51150) (=> t!72309 result!51154) (=> t!72301 result!51146) (=> t!72315 result!51160) (=> t!72295 result!51140) (=> t!72307 result!51152) (=> t!72297 result!51142) (=> t!72303 result!51148) (=> t!72299 result!51144) b_and!49895))))

(declare-fun e!284490 () Bool)

(assert (=> b!464364 (= e!284490 (and tp!127984 tp!127981))))

(declare-fun tp!127983 () Bool)

(declare-fun b!464363 () Bool)

(declare-fun e!284488 () Bool)

(assert (=> b!464363 (= e!284488 (and tp!127983 (inv!5570 (tag!1135 (h!9891 (t!71884 (t!71884 rules!1920))))) (inv!5574 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) e!284490))))

(declare-fun b!464362 () Bool)

(declare-fun e!284489 () Bool)

(declare-fun tp!127982 () Bool)

(assert (=> b!464362 (= e!284489 (and e!284488 tp!127982))))

(assert (=> b!462187 (= tp!127766 e!284489)))

(assert (= b!464363 b!464364))

(assert (= b!464362 b!464363))

(assert (= (and b!462187 ((_ is Cons!4494) (t!71884 (t!71884 rules!1920)))) b!464362))

(declare-fun m!736607 () Bool)

(assert (=> b!464363 m!736607))

(declare-fun m!736609 () Bool)

(assert (=> b!464363 m!736609))

(declare-fun b!464367 () Bool)

(declare-fun e!284494 () Bool)

(assert (=> b!464367 (= e!284494 true)))

(declare-fun b!464366 () Bool)

(declare-fun e!284493 () Bool)

(assert (=> b!464366 (= e!284493 e!284494)))

(declare-fun b!464365 () Bool)

(declare-fun e!284492 () Bool)

(assert (=> b!464365 (= e!284492 e!284493)))

(assert (=> b!461926 e!284492))

(assert (= b!464366 b!464367))

(assert (= b!464365 b!464366))

(assert (= (and b!461926 ((_ is Cons!4494) (t!71884 rules!1920))) b!464365))

(assert (=> b!464367 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 (t!71884 rules!1920))))) (dynLambda!2745 order!4011 lambda!13652))))

(assert (=> b!464367 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920))))) (dynLambda!2745 order!4011 lambda!13652))))

(declare-fun b!464368 () Bool)

(declare-fun e!284495 () Bool)

(declare-fun tp!127985 () Bool)

(assert (=> b!464368 (= e!284495 (and tp_is_empty!1995 tp!127985))))

(assert (=> b!462194 (= tp!127774 e!284495)))

(assert (= (and b!462194 ((_ is Cons!4493) (t!71883 (originalCharacters!918 separatorToken!170)))) b!464368))

(declare-fun b!464369 () Bool)

(declare-fun e!284496 () Bool)

(assert (=> b!464369 (= e!284496 tp_is_empty!1995)))

(declare-fun b!464372 () Bool)

(declare-fun tp!127988 () Bool)

(declare-fun tp!127986 () Bool)

(assert (=> b!464372 (= e!284496 (and tp!127988 tp!127986))))

(declare-fun b!464370 () Bool)

(declare-fun tp!127990 () Bool)

(declare-fun tp!127989 () Bool)

(assert (=> b!464370 (= e!284496 (and tp!127990 tp!127989))))

(declare-fun b!464371 () Bool)

(declare-fun tp!127987 () Bool)

(assert (=> b!464371 (= e!284496 tp!127987)))

(assert (=> b!462188 (= tp!127767 e!284496)))

(assert (= (and b!462188 ((_ is ElementMatch!1099) (regex!875 (h!9891 (t!71884 rules!1920))))) b!464369))

(assert (= (and b!462188 ((_ is Concat!1997) (regex!875 (h!9891 (t!71884 rules!1920))))) b!464370))

(assert (= (and b!462188 ((_ is Star!1099) (regex!875 (h!9891 (t!71884 rules!1920))))) b!464371))

(assert (= (and b!462188 ((_ is Union!1099) (regex!875 (h!9891 (t!71884 rules!1920))))) b!464372))

(declare-fun b!464373 () Bool)

(declare-fun e!284497 () Bool)

(assert (=> b!464373 (= e!284497 tp_is_empty!1995)))

(declare-fun b!464376 () Bool)

(declare-fun tp!127993 () Bool)

(declare-fun tp!127991 () Bool)

(assert (=> b!464376 (= e!284497 (and tp!127993 tp!127991))))

(declare-fun b!464374 () Bool)

(declare-fun tp!127995 () Bool)

(declare-fun tp!127994 () Bool)

(assert (=> b!464374 (= e!284497 (and tp!127995 tp!127994))))

(declare-fun b!464375 () Bool)

(declare-fun tp!127992 () Bool)

(assert (=> b!464375 (= e!284497 tp!127992)))

(assert (=> b!462174 (= tp!127753 e!284497)))

(assert (= (and b!462174 ((_ is ElementMatch!1099) (reg!1428 (regex!875 (h!9891 rules!1920))))) b!464373))

(assert (= (and b!462174 ((_ is Concat!1997) (reg!1428 (regex!875 (h!9891 rules!1920))))) b!464374))

(assert (= (and b!462174 ((_ is Star!1099) (reg!1428 (regex!875 (h!9891 rules!1920))))) b!464375))

(assert (= (and b!462174 ((_ is Union!1099) (reg!1428 (regex!875 (h!9891 rules!1920))))) b!464376))

(declare-fun b!464377 () Bool)

(declare-fun e!284498 () Bool)

(assert (=> b!464377 (= e!284498 tp_is_empty!1995)))

(declare-fun b!464380 () Bool)

(declare-fun tp!127998 () Bool)

(declare-fun tp!127996 () Bool)

(assert (=> b!464380 (= e!284498 (and tp!127998 tp!127996))))

(declare-fun b!464378 () Bool)

(declare-fun tp!128000 () Bool)

(declare-fun tp!127999 () Bool)

(assert (=> b!464378 (= e!284498 (and tp!128000 tp!127999))))

(declare-fun b!464379 () Bool)

(declare-fun tp!127997 () Bool)

(assert (=> b!464379 (= e!284498 tp!127997)))

(assert (=> b!462192 (= tp!127770 e!284498)))

(assert (= (and b!462192 ((_ is ElementMatch!1099) (reg!1428 (regex!875 (rule!1570 separatorToken!170))))) b!464377))

(assert (= (and b!462192 ((_ is Concat!1997) (reg!1428 (regex!875 (rule!1570 separatorToken!170))))) b!464378))

(assert (= (and b!462192 ((_ is Star!1099) (reg!1428 (regex!875 (rule!1570 separatorToken!170))))) b!464379))

(assert (= (and b!462192 ((_ is Union!1099) (reg!1428 (regex!875 (rule!1570 separatorToken!170))))) b!464380))

(declare-fun b!464381 () Bool)

(declare-fun e!284499 () Bool)

(assert (=> b!464381 (= e!284499 tp_is_empty!1995)))

(declare-fun b!464384 () Bool)

(declare-fun tp!128003 () Bool)

(declare-fun tp!128001 () Bool)

(assert (=> b!464384 (= e!284499 (and tp!128003 tp!128001))))

(declare-fun b!464382 () Bool)

(declare-fun tp!128005 () Bool)

(declare-fun tp!128004 () Bool)

(assert (=> b!464382 (= e!284499 (and tp!128005 tp!128004))))

(declare-fun b!464383 () Bool)

(declare-fun tp!128002 () Bool)

(assert (=> b!464383 (= e!284499 tp!128002)))

(assert (=> b!462193 (= tp!127771 e!284499)))

(assert (= (and b!462193 ((_ is ElementMatch!1099) (regOne!2711 (regex!875 (rule!1570 separatorToken!170))))) b!464381))

(assert (= (and b!462193 ((_ is Concat!1997) (regOne!2711 (regex!875 (rule!1570 separatorToken!170))))) b!464382))

(assert (= (and b!462193 ((_ is Star!1099) (regOne!2711 (regex!875 (rule!1570 separatorToken!170))))) b!464383))

(assert (= (and b!462193 ((_ is Union!1099) (regOne!2711 (regex!875 (rule!1570 separatorToken!170))))) b!464384))

(declare-fun b!464385 () Bool)

(declare-fun e!284500 () Bool)

(assert (=> b!464385 (= e!284500 tp_is_empty!1995)))

(declare-fun b!464388 () Bool)

(declare-fun tp!128008 () Bool)

(declare-fun tp!128006 () Bool)

(assert (=> b!464388 (= e!284500 (and tp!128008 tp!128006))))

(declare-fun b!464386 () Bool)

(declare-fun tp!128010 () Bool)

(declare-fun tp!128009 () Bool)

(assert (=> b!464386 (= e!284500 (and tp!128010 tp!128009))))

(declare-fun b!464387 () Bool)

(declare-fun tp!128007 () Bool)

(assert (=> b!464387 (= e!284500 tp!128007)))

(assert (=> b!462193 (= tp!127769 e!284500)))

(assert (= (and b!462193 ((_ is ElementMatch!1099) (regTwo!2711 (regex!875 (rule!1570 separatorToken!170))))) b!464385))

(assert (= (and b!462193 ((_ is Concat!1997) (regTwo!2711 (regex!875 (rule!1570 separatorToken!170))))) b!464386))

(assert (= (and b!462193 ((_ is Star!1099) (regTwo!2711 (regex!875 (rule!1570 separatorToken!170))))) b!464387))

(assert (= (and b!462193 ((_ is Union!1099) (regTwo!2711 (regex!875 (rule!1570 separatorToken!170))))) b!464388))

(declare-fun b!464389 () Bool)

(declare-fun e!284501 () Bool)

(assert (=> b!464389 (= e!284501 tp_is_empty!1995)))

(declare-fun b!464392 () Bool)

(declare-fun tp!128013 () Bool)

(declare-fun tp!128011 () Bool)

(assert (=> b!464392 (= e!284501 (and tp!128013 tp!128011))))

(declare-fun b!464390 () Bool)

(declare-fun tp!128015 () Bool)

(declare-fun tp!128014 () Bool)

(assert (=> b!464390 (= e!284501 (and tp!128015 tp!128014))))

(declare-fun b!464391 () Bool)

(declare-fun tp!128012 () Bool)

(assert (=> b!464391 (= e!284501 tp!128012)))

(assert (=> b!462175 (= tp!127754 e!284501)))

(assert (= (and b!462175 ((_ is ElementMatch!1099) (regOne!2711 (regex!875 (h!9891 rules!1920))))) b!464389))

(assert (= (and b!462175 ((_ is Concat!1997) (regOne!2711 (regex!875 (h!9891 rules!1920))))) b!464390))

(assert (= (and b!462175 ((_ is Star!1099) (regOne!2711 (regex!875 (h!9891 rules!1920))))) b!464391))

(assert (= (and b!462175 ((_ is Union!1099) (regOne!2711 (regex!875 (h!9891 rules!1920))))) b!464392))

(declare-fun b!464393 () Bool)

(declare-fun e!284502 () Bool)

(assert (=> b!464393 (= e!284502 tp_is_empty!1995)))

(declare-fun b!464396 () Bool)

(declare-fun tp!128018 () Bool)

(declare-fun tp!128016 () Bool)

(assert (=> b!464396 (= e!284502 (and tp!128018 tp!128016))))

(declare-fun b!464394 () Bool)

(declare-fun tp!128020 () Bool)

(declare-fun tp!128019 () Bool)

(assert (=> b!464394 (= e!284502 (and tp!128020 tp!128019))))

(declare-fun b!464395 () Bool)

(declare-fun tp!128017 () Bool)

(assert (=> b!464395 (= e!284502 tp!128017)))

(assert (=> b!462175 (= tp!127752 e!284502)))

(assert (= (and b!462175 ((_ is ElementMatch!1099) (regTwo!2711 (regex!875 (h!9891 rules!1920))))) b!464393))

(assert (= (and b!462175 ((_ is Concat!1997) (regTwo!2711 (regex!875 (h!9891 rules!1920))))) b!464394))

(assert (= (and b!462175 ((_ is Star!1099) (regTwo!2711 (regex!875 (h!9891 rules!1920))))) b!464395))

(assert (= (and b!462175 ((_ is Union!1099) (regTwo!2711 (regex!875 (h!9891 rules!1920))))) b!464396))

(declare-fun b!464399 () Bool)

(declare-fun e!284505 () Bool)

(assert (=> b!464399 (= e!284505 true)))

(declare-fun b!464398 () Bool)

(declare-fun e!284504 () Bool)

(assert (=> b!464398 (= e!284504 e!284505)))

(declare-fun b!464397 () Bool)

(declare-fun e!284503 () Bool)

(assert (=> b!464397 (= e!284503 e!284504)))

(assert (=> b!461403 e!284503))

(assert (= b!464398 b!464399))

(assert (= b!464397 b!464398))

(assert (= (and b!461403 ((_ is Cons!4494) (t!71884 rules!1920))) b!464397))

(assert (=> b!464399 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 (t!71884 rules!1920))))) (dynLambda!2745 order!4011 lambda!13628))))

(assert (=> b!464399 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920))))) (dynLambda!2745 order!4011 lambda!13628))))

(declare-fun b!464403 () Bool)

(declare-fun b_free!12985 () Bool)

(declare-fun b_next!12985 () Bool)

(assert (=> b!464403 (= b_free!12985 (not b_next!12985))))

(declare-fun t!72317 () Bool)

(declare-fun tb!46471 () Bool)

(assert (=> (and b!464403 (= (toValue!1694 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!72317) tb!46471))

(declare-fun result!51162 () Bool)

(assert (= result!51162 result!50904))

(assert (=> d!176329 t!72317))

(declare-fun t!72319 () Bool)

(declare-fun tb!46473 () Bool)

(assert (=> (and b!464403 (= (toValue!1694 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toValue!1694 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72319) tb!46473))

(declare-fun result!51164 () Bool)

(assert (= result!51164 result!50998))

(assert (=> d!176659 t!72319))

(declare-fun tp!128023 () Bool)

(declare-fun b_and!49897 () Bool)

(assert (=> b!464403 (= tp!128023 (and (=> t!72317 result!51162) (=> t!72319 result!51164) b_and!49897))))

(declare-fun b_free!12987 () Bool)

(declare-fun b_next!12987 () Bool)

(assert (=> b!464403 (= b_free!12987 (not b_next!12987))))

(declare-fun tb!46475 () Bool)

(declare-fun t!72321 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92975 call!32050 call!32053))))) t!72321) tb!46475))

(declare-fun result!51166 () Bool)

(assert (= result!51166 result!51080))

(assert (=> d!176823 t!72321))

(declare-fun t!72323 () Bool)

(declare-fun tb!46477 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465)))))) t!72323) tb!46477))

(declare-fun result!51168 () Bool)

(assert (= result!51168 result!50884))

(assert (=> d!176241 t!72323))

(declare-fun t!72325 () Bool)

(declare-fun tb!46479 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (Cons!4495 (h!9892 tokens!465) Nil!4495)))))) t!72325) tb!46479))

(declare-fun result!51170 () Bool)

(assert (= result!51170 result!51090))

(assert (=> d!176849 t!72325))

(declare-fun t!72327 () Bool)

(declare-fun tb!46481 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93018 separatorToken!170 call!32082))))) t!72327) tb!46481))

(declare-fun result!51172 () Bool)

(assert (= result!51172 result!51100))

(assert (=> d!176963 t!72327))

(declare-fun tb!46483 () Bool)

(declare-fun t!72329 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!206011)))))) t!72329) tb!46483))

(declare-fun result!51174 () Bool)

(assert (= result!51174 result!50854))

(assert (=> d!176111 t!72329))

(assert (=> b!463997 t!72323))

(declare-fun t!72331 () Bool)

(declare-fun tb!46485 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 separatorToken!170)))) t!72331) tb!46485))

(declare-fun result!51176 () Bool)

(assert (= result!51176 result!50760))

(assert (=> b!461790 t!72331))

(declare-fun t!72333 () Bool)

(declare-fun tb!46487 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465))))) t!72333) tb!46487))

(declare-fun result!51178 () Bool)

(assert (= result!51178 result!50752))

(assert (=> b!461671 t!72333))

(declare-fun t!72335 () Bool)

(declare-fun tb!46489 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205904 0))))) t!72335) tb!46489))

(declare-fun result!51180 () Bool)

(assert (= result!51180 result!51120))

(assert (=> d!177053 t!72335))

(declare-fun tb!46491 () Bool)

(declare-fun t!72337 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (ite c!92976 separatorToken!170 call!32053))))) t!72337) tb!46491))

(declare-fun result!51182 () Bool)

(assert (= result!51182 result!50864))

(assert (=> d!176135 t!72337))

(assert (=> d!175747 t!72331))

(assert (=> d!175757 t!72333))

(declare-fun t!72339 () Bool)

(declare-fun tb!46493 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0))))) t!72339) tb!46493))

(declare-fun result!51184 () Bool)

(assert (= result!51184 result!51110))

(assert (=> d!177007 t!72339))

(declare-fun tb!46495 () Bool)

(declare-fun t!72341 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (ite c!93017 call!32079 call!32082))))) t!72341) tb!46495))

(declare-fun result!51186 () Bool)

(assert (= result!51186 result!50988))

(assert (=> d!176655 t!72341))

(declare-fun t!72343 () Bool)

(declare-fun tb!46497 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (_1!2961 (get!1652 lt!205988)))))) t!72343) tb!46497))

(declare-fun result!51188 () Bool)

(assert (= result!51188 result!50844))

(assert (=> d!176067 t!72343))

(declare-fun t!72345 () Bool)

(declare-fun tb!46499 () Bool)

(assert (=> (and b!464403 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (apply!1157 lt!205900 0))))) t!72345) tb!46499))

(declare-fun result!51190 () Bool)

(assert (= result!51190 result!50874))

(assert (=> d!176185 t!72345))

(declare-fun tp!128025 () Bool)

(declare-fun b_and!49899 () Bool)

(assert (=> b!464403 (= tp!128025 (and (=> t!72343 result!51188) (=> t!72325 result!51170) (=> t!72341 result!51186) (=> t!72327 result!51172) (=> t!72337 result!51182) (=> t!72323 result!51168) (=> t!72321 result!51166) (=> t!72345 result!51190) (=> t!72339 result!51184) (=> t!72333 result!51178) (=> t!72331 result!51176) (=> t!72335 result!51180) (=> t!72329 result!51174) b_and!49899))))

(declare-fun e!284506 () Bool)

(assert (=> b!462205 (= tp!127788 e!284506)))

(declare-fun e!284507 () Bool)

(declare-fun b!464402 () Bool)

(declare-fun tp!128022 () Bool)

(declare-fun e!284509 () Bool)

(assert (=> b!464402 (= e!284507 (and tp!128022 (inv!5570 (tag!1135 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (inv!5574 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) e!284509))))

(declare-fun b!464400 () Bool)

(declare-fun e!284508 () Bool)

(declare-fun tp!128024 () Bool)

(assert (=> b!464400 (= e!284506 (and (inv!5573 (h!9892 (t!71885 (t!71885 tokens!465)))) e!284508 tp!128024))))

(declare-fun b!464401 () Bool)

(declare-fun tp!128021 () Bool)

(assert (=> b!464401 (= e!284508 (and (inv!21 (value!29253 (h!9892 (t!71885 (t!71885 tokens!465))))) e!284507 tp!128021))))

(assert (=> b!464403 (= e!284509 (and tp!128023 tp!128025))))

(assert (= b!464402 b!464403))

(assert (= b!464401 b!464402))

(assert (= b!464400 b!464401))

(assert (= (and b!462205 ((_ is Cons!4495) (t!71885 (t!71885 tokens!465)))) b!464400))

(declare-fun m!736611 () Bool)

(assert (=> b!464402 m!736611))

(declare-fun m!736613 () Bool)

(assert (=> b!464402 m!736613))

(declare-fun m!736615 () Bool)

(assert (=> b!464400 m!736615))

(declare-fun m!736617 () Bool)

(assert (=> b!464401 m!736617))

(declare-fun b!464404 () Bool)

(declare-fun tp!128028 () Bool)

(declare-fun tp!128026 () Bool)

(declare-fun e!284512 () Bool)

(assert (=> b!464404 (= e!284512 (and (inv!5577 (left!3800 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465)))))) tp!128028 (inv!5577 (right!4130 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465)))))) tp!128026))))

(declare-fun b!464406 () Bool)

(declare-fun e!284513 () Bool)

(declare-fun tp!128027 () Bool)

(assert (=> b!464406 (= e!284513 tp!128027)))

(declare-fun b!464405 () Bool)

(assert (=> b!464405 (= e!284512 (and (inv!5584 (xs!4203 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465)))))) e!284513))))

(assert (=> b!461677 (= tp!127675 (and (inv!5577 (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465))))) e!284512))))

(assert (= (and b!461677 ((_ is Node!1572) (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465)))))) b!464404))

(assert (= b!464405 b!464406))

(assert (= (and b!461677 ((_ is Leaf!2349) (c!92854 (dynLambda!2750 (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (value!29253 (h!9892 tokens!465)))))) b!464405))

(declare-fun m!736619 () Bool)

(assert (=> b!464404 m!736619))

(declare-fun m!736621 () Bool)

(assert (=> b!464404 m!736621))

(declare-fun m!736623 () Bool)

(assert (=> b!464405 m!736623))

(assert (=> b!461677 m!730471))

(declare-fun b!464407 () Bool)

(declare-fun e!284514 () Bool)

(declare-fun tp!128029 () Bool)

(assert (=> b!464407 (= e!284514 (and tp_is_empty!1995 tp!128029))))

(assert (=> b!462206 (= tp!127785 e!284514)))

(assert (= (and b!462206 ((_ is Cons!4493) (originalCharacters!918 (h!9892 (t!71885 tokens!465))))) b!464407))

(declare-fun b!464410 () Bool)

(declare-fun e!284517 () Bool)

(assert (=> b!464410 (= e!284517 true)))

(declare-fun b!464409 () Bool)

(declare-fun e!284516 () Bool)

(assert (=> b!464409 (= e!284516 e!284517)))

(declare-fun b!464408 () Bool)

(declare-fun e!284515 () Bool)

(assert (=> b!464408 (= e!284515 e!284516)))

(assert (=> b!462176 e!284515))

(assert (= b!464409 b!464410))

(assert (= b!464408 b!464409))

(assert (= (and b!462176 ((_ is Cons!4494) (t!71884 (t!71884 rules!1920)))) b!464408))

(assert (=> b!464410 (< (dynLambda!2744 order!4009 (toValue!1694 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920)))))) (dynLambda!2745 order!4011 lambda!13618))))

(assert (=> b!464410 (< (dynLambda!2746 order!4013 (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920)))))) (dynLambda!2745 order!4011 lambda!13618))))

(declare-fun b_lambda!19345 () Bool)

(assert (= b_lambda!19255 (or d!175483 b_lambda!19345)))

(declare-fun bs!57788 () Bool)

(declare-fun d!177099 () Bool)

(assert (= bs!57788 (and d!177099 d!175483)))

(assert (=> bs!57788 (= (dynLambda!2749 lambda!13628 (h!9892 (list!2005 lt!205904))) (rulesProduceIndividualToken!510 thiss!17480 rules!1920 (h!9892 (list!2005 lt!205904))))))

(assert (=> bs!57788 m!736001))

(assert (=> b!463128 d!177099))

(declare-fun b_lambda!19347 () Bool)

(assert (= b_lambda!19241 (or b!461292 b_lambda!19347)))

(assert (=> d!176215 d!175765))

(declare-fun b_lambda!19349 () Bool)

(assert (= b_lambda!19243 (or b!461292 b_lambda!19349)))

(assert (=> b!462954 d!175765))

(declare-fun b_lambda!19351 () Bool)

(assert (= b_lambda!19339 (or b!461918 b_lambda!19351)))

(declare-fun bs!57789 () Bool)

(declare-fun d!177101 () Bool)

(assert (= bs!57789 (and d!177101 b!461918)))

(assert (=> bs!57789 (= (dynLambda!2749 lambda!13652 (apply!1157 lt!205904 0)) (rulesProduceIndividualToken!510 thiss!17480 rules!1920 (apply!1157 lt!205904 0)))))

(assert (=> bs!57789 m!730885))

(declare-fun m!736625 () Bool)

(assert (=> bs!57789 m!736625))

(assert (=> d!177045 d!177101))

(declare-fun b_lambda!19353 () Bool)

(assert (= b_lambda!19253 (or b!461290 b_lambda!19353)))

(declare-fun bs!57790 () Bool)

(declare-fun d!177103 () Bool)

(assert (= bs!57790 (and d!177103 b!461290)))

(assert (=> bs!57790 (= (dynLambda!2749 lambda!13617 (h!9892 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))) (not (isSeparator!875 (rule!1570 (h!9892 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205910)))))))))))

(assert (=> b!463126 d!177103))

(declare-fun b_lambda!19355 () Bool)

(assert (= b_lambda!19335 (or b!461290 b_lambda!19355)))

(declare-fun bs!57791 () Bool)

(declare-fun d!177105 () Bool)

(assert (= bs!57791 (and d!177105 b!461290)))

(assert (=> bs!57791 (= (dynLambda!2749 lambda!13617 (h!9892 (t!71885 tokens!465))) (not (isSeparator!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))))

(assert (=> b!464141 d!177105))

(declare-fun b_lambda!19357 () Bool)

(assert (= b_lambda!19245 (or b!462125 b_lambda!19357)))

(declare-fun bs!57792 () Bool)

(declare-fun d!177107 () Bool)

(assert (= bs!57792 (and d!177107 b!462125)))

(assert (=> bs!57792 (= (dynLambda!2749 lambda!13656 (h!9892 (t!71885 tokens!465))) (rulesProduceIndividualToken!510 thiss!17480 rules!1920 (h!9892 (t!71885 tokens!465))))))

(declare-fun m!736627 () Bool)

(assert (=> bs!57792 m!736627))

(assert (=> d!176227 d!177107))

(declare-fun b_lambda!19359 () Bool)

(assert (= b_lambda!19343 (or b!462105 b_lambda!19359)))

(declare-fun bs!57793 () Bool)

(declare-fun d!177109 () Bool)

(assert (= bs!57793 (and d!177109 b!462105)))

(assert (=> bs!57793 (= (dynLambda!2749 lambda!13655 (h!9892 tokens!465)) (rulesProduceIndividualToken!510 thiss!17480 rules!1920 (h!9892 tokens!465)))))

(assert (=> bs!57793 m!729931))

(assert (=> d!177075 d!177109))

(declare-fun b_lambda!19361 () Bool)

(assert (= b_lambda!19327 (or (and b!461294 b_free!12951 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))) (and b!462189 b_free!12967 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))) (and b!461297 b_free!12947 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))) (and b!464364 b_free!12983 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))) (and b!464403 b_free!12987 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))) (and b!461281 b_free!12955 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))) (and b!462208 b_free!12971) b_lambda!19361)))

(declare-fun b_lambda!19363 () Bool)

(assert (= b_lambda!19331 (or b!462130 b_lambda!19363)))

(declare-fun bs!57794 () Bool)

(declare-fun d!177111 () Bool)

(assert (= bs!57794 (and d!177111 b!462130)))

(assert (=> bs!57794 (= (dynLambda!2749 lambda!13658 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)) (rulesProduceIndividualToken!510 thiss!17480 rules!1920 (apply!1157 (seqFromList!1116 (t!71885 tokens!465)) 0)))))

(assert (=> bs!57794 m!731187))

(declare-fun m!736629 () Bool)

(assert (=> bs!57794 m!736629))

(assert (=> d!176989 d!177111))

(declare-fun b_lambda!19365 () Bool)

(assert (= b_lambda!19249 (or (and b!461294 b_free!12951 (= (toChars!1553 (transformation!875 (h!9891 rules!1920))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))) (and b!462189 b_free!12967 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 rules!1920)))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))) (and b!461297 b_free!12947 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 tokens!465)))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))) (and b!464364 b_free!12983 (= (toChars!1553 (transformation!875 (h!9891 (t!71884 (t!71884 rules!1920))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))) (and b!464403 b_free!12987 (= (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 (t!71885 tokens!465)))))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))) (and b!461281 b_free!12955 (= (toChars!1553 (transformation!875 (rule!1570 separatorToken!170))) (toChars!1553 (transformation!875 (rule!1570 (h!9892 (t!71885 tokens!465))))))) (and b!462208 b_free!12971) b_lambda!19365)))

(declare-fun b_lambda!19367 () Bool)

(assert (= b_lambda!19337 (or b!461290 b_lambda!19367)))

(declare-fun bs!57795 () Bool)

(declare-fun d!177113 () Bool)

(assert (= bs!57795 (and d!177113 b!461290)))

(assert (=> bs!57795 (= (dynLambda!2749 lambda!13617 (h!9892 lt!206062)) (not (isSeparator!875 (rule!1570 (h!9892 lt!206062)))))))

(assert (=> b!464151 d!177113))

(declare-fun b_lambda!19369 () Bool)

(assert (= b_lambda!19267 (or d!175507 b_lambda!19369)))

(declare-fun bs!57796 () Bool)

(declare-fun d!177115 () Bool)

(assert (= bs!57796 (and d!177115 d!175507)))

(assert (=> bs!57796 (= (dynLambda!2749 lambda!13634 (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0)))))) (not (isSeparator!875 (rule!1570 (h!9892 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!434 thiss!17480 rules!1920 (seqFromList!1116 (t!71885 tokens!465)) separatorToken!170 0)))))))))))

(assert (=> b!463383 d!177115))

(declare-fun b_lambda!19371 () Bool)

(assert (= b_lambda!19229 (or b!461290 b_lambda!19371)))

(declare-fun bs!57797 () Bool)

(declare-fun d!177117 () Bool)

(assert (= bs!57797 (and d!177117 b!461290)))

(assert (=> bs!57797 (= (dynLambda!2749 lambda!13617 (h!9892 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))) (not (isSeparator!875 (rule!1570 (h!9892 (t!71885 (list!2005 (_1!2963 (lex!553 thiss!17480 rules!1920 lt!205918)))))))))))

(assert (=> b!462708 d!177117))

(declare-fun b_lambda!19373 () Bool)

(assert (= b_lambda!19233 (or b!461290 b_lambda!19373)))

(declare-fun bs!57798 () Bool)

(declare-fun d!177119 () Bool)

(assert (= bs!57798 (and d!177119 b!461290)))

(assert (=> bs!57798 (= (dynLambda!2749 lambda!13617 (h!9892 lt!205960)) (not (isSeparator!875 (rule!1570 (h!9892 lt!205960)))))))

(assert (=> b!462770 d!177119))

(check-sat (not b_next!12983) (not d!176267) b_and!49897 (not b!464109) (not b!463590) (not b!464041) (not b!464394) (not b!464148) (not b!462653) (not b!463599) (not b!463030) (not b_lambda!19203) (not d!176191) (not b!462674) (not bm!32200) (not d!176475) (not b!464401) (not b!462701) (not b!464005) (not b!464229) (not b!462540) (not d!176065) (not d!176837) (not d!177087) (not b_next!12967) (not b!463179) (not d!176677) (not b!463047) (not b!462735) (not b!463029) (not d!176093) (not d!176327) (not b!464298) (not b!463573) (not b!464356) (not b!464301) (not d!176999) (not b!464034) (not d!176885) (not b!463903) (not d!176891) (not b!464042) (not b!462986) (not b!463134) (not d!176351) (not d!177079) (not d!176221) (not b!463162) (not b!464314) (not b!464212) (not b!462669) (not b!463579) (not d!176939) (not d!176075) (not b!462541) (not d!176033) (not b!464296) (not b!464280) (not b!463031) (not d!175981) (not bm!32142) (not b_lambda!19363) (not b!464050) (not b!463130) (not b!462972) (not d!176347) (not b!463135) (not d!176887) (not b!462934) (not b!464383) (not b!463154) (not bm!32124) (not b!463956) (not b!463562) (not b!464320) (not b!464122) (not b!463924) (not bm!32195) (not b!464049) (not d!176893) (not bm!32205) (not d!176911) (not b!464074) (not b!462862) (not b!463598) (not b!462750) (not b!464351) (not b!464275) (not b_lambda!19227) (not b!463954) (not bm!32130) (not b_lambda!19195) (not d!176091) (not b!464305) (not b!464200) (not b!462916) (not bm!32114) (not tb!46431) (not b!464269) (not d!176691) (not tb!46421) (not b!463961) (not bm!32211) (not b!464408) (not d!176975) (not b_next!12987) (not b_lambda!19345) (not b!463151) (not b!462858) (not b!462536) (not d!176993) (not b!463617) (not b!464278) (not d!176273) (not b!464376) (not b!462888) (not b!463938) (not b!462683) (not bm!32210) (not b!464199) (not b!464310) (not b!464266) (not b!462861) (not b!462855) (not d!176219) (not b!464068) (not b!464083) (not d!176145) (not b!464348) (not b!462854) (not b!464382) (not b_lambda!19201) (not b!464285) (not b!464126) (not b!464024) (not b!464276) (not b!462676) (not b!464223) (not b!462670) (not b_next!12951) (not d!176631) (not b!462975) (not b!464319) (not b!464107) (not b!463157) (not b_next!12955) (not d!176321) (not d!176185) (not d!176647) (not d!176845) (not b!462659) (not b!464390) (not bm!32134) (not b!464224) (not b!464164) (not b!463584) (not b!463968) (not b!463631) (not b!462754) (not b!463972) (not b!464371) (not b!464084) (not b!463367) (not b!464047) (not d!176237) (not bm!32203) (not b!463014) (not b!463958) (not b!463053) (not d!176223) (not b!463911) (not b_lambda!19205) (not bm!32123) (not d!177035) (not b!464055) (not bm!32207) (not b!463994) (not d!176655) (not d!176187) (not b!463563) (not b!464388) (not b!462703) (not b!464387) (not b!462952) (not bm!32145) (not b!464145) (not b!464046) (not b!463161) (not d!177047) (not b!462971) (not b!462601) (not b!464331) (not b!462806) (not b!464340) (not b!462973) (not b!464085) (not b!464062) (not d!177051) (not d!176111) (not b!464032) (not b!464315) (not b!464159) (not bm!32100) (not b_lambda!19257) (not b_lambda!19235) (not bm!32117) (not b!464284) (not b!464014) (not b!462682) (not tb!46301) (not b_lambda!19361) (not b!462599) (not b!464119) (not b!464056) (not b!464400) (not b_lambda!19193) (not b!462949) (not b!462758) (not b!464392) (not b!464273) (not bm!32209) (not d!176905) (not b!463052) (not b!462857) (not d!176269) (not b!463920) (not b!464265) (not b!464040) (not d!177091) (not d!175977) (not d!177019) (not b!463988) (not b!464108) (not d!176843) (not d!176109) (not b_lambda!19231) (not b!463129) (not d!176085) (not bs!57788) (not b!463026) (not b!463009) (not d!176479) (not tb!46411) (not b_lambda!19239) (not b_lambda!19341) b_and!49895 (not b!463372) (not d!176335) (not d!176461) (not d!176173) (not bm!32099) (not b!462684) (not bm!32231) (not b!462943) (not d!176921) (not b!463585) (not bs!57794) (not b!463993) (not d!177041) (not b!464402) (not b!464263) (not tb!46391) (not d!177075) (not b!462951) (not b!464262) (not bm!32232) (not b!464124) (not d!176189) (not b!464003) (not d!176265) (not b!462759) (not b_next!12971) (not b!464213) (not b!464086) (not d!176213) (not d!176649) (not d!176863) (not d!177033) (not b!462725) (not b!463992) (not b!462991) (not d!176343) (not d!176207) (not d!176177) (not d!175983) (not b!462918) (not d!176909) (not b!464362) (not d!177043) (not d!176181) (not d!176209) (not b!463998) (not b_lambda!19279) (not d!177053) (not d!176861) (not b!464372) (not b!464299) (not d!177071) (not b!464370) (not b!463581) (not b!462760) (not b!463985) (not tb!46401) (not d!175975) (not b!464287) (not tb!46181) (not bm!32125) (not bm!32198) (not b_lambda!19357) (not d!176835) (not b_lambda!19325) (not d!176183) (not b!462673) (not b!463973) (not b!462761) (not b!464091) b_and!49899 (not d!176205) (not b!462966) (not b!464204) (not b!463094) (not b!462751) (not d!176041) (not b!463180) (not b!463113) (not b!462699) (not bm!32213) (not b!463941) (not b!464165) (not b!463153) (not b!463132) (not d!176953) (not b!462866) (not d!177057) (not d!176149) (not b!463589) (not d!176685) (not d!177097) (not b!464350) (not b!464324) (not b!462689) (not b!464342) b_and!49887 (not bm!32217) (not b!463156) (not d!176923) (not b!462807) (not b!463565) (not d!176341) (not tb!46311) (not d!176323) (not bm!32218) (not b!462727) (not b!464378) (not b_next!12947) (not d!176193) (not tb!46221) (not b_next!12981) (not b!464344) (not b!463347) (not d!176319) (not d!177059) (not d!176983) (not b!462693) (not d!177007) (not b!462937) (not b!464386) b_and!49889 (not d!177077) (not d!176115) (not bm!32164) (not b!463939) (not b!463183) (not b!463342) (not b_lambda!19347) (not d!176235) (not d!176105) (not b!463077) (not b!462600) (not b!462983) (not d!176179) (not b!464007) (not d!176651) (not d!176331) (not b!463158) (not b!462746) (not d!176941) (not d!176089) (not b!464004) (not b!464123) (not b!464152) (not d!176477) (not b!463178) (not d!175979) (not d!176997) (not b!463967) (not d!176823) (not b!464120) (not d!176147) (not b!463921) (not b!464136) (not b!463049) (not b!464220) (not b!464379) (not d!177049) (not b_next!12965) (not b!464051) (not d!177055) (not bm!32127) (not b!462903) (not d!177025) (not b!464330) (not bm!32194) (not d!176899) (not b!463629) (not b!464306) (not b!464326) (not b!464060) (not b_lambda!19281) (not b_lambda!19365) (not d!176971) (not b_lambda!19199) (not d!176139) (not d!177001) (not b!462981) (not b!463996) (not b!464289) (not b_lambda!19323) (not b!464155) (not b!463935) (not b!464360) (not d!176315) (not bm!32196) (not d!177017) (not d!176225) (not b!464290) (not b!463184) (not d!176099) (not b!464188) (not d!176857) (not b!464069) (not bs!57789) (not b!463028) (not d!176945) (not b!462685) (not d!177065) b_and!49799 (not b!464216) (not b!463022) (not b!464033) (not bs!57792) (not d!177005) (not b!464208) b_and!49891 (not b!464067) (not d!176901) (not b!464185) (not b!464288) (not b_lambda!19197) (not b!462791) (not b!462945) (not d!176683) (not d!176333) (not d!176123) (not bm!32103) (not b!463560) (not b!464396) (not d!176307) (not b!464318) (not d!176827) (not bm!32208) (not d!176995) (not b!462804) (not b!463615) (not b!463150) (not d!177061) (not d!176989) (not b!462969) (not b!463576) (not b!462908) (not b!462720) (not d!176987) (not b!464158) (not b!463369) (not b!464359) (not d!176931) (not b!464271) (not d!176339) (not bm!32233) b_and!49801 (not b!464313) (not d!176907) (not b!464140) (not b!462894) (not b!463370) (not b!463917) (not b!464043) (not b!464167) (not d!176849) (not b!464375) (not b!464028) (not d!176083) (not b!464405) (not b!463185) (not b!463176) (not b!464349) (not b!463144) (not b!463015) (not b!462797) (not b!464097) (not b!464176) (not b!464161) (not d!176293) (not d!176693) (not d!176943) (not d!176839) b_and!49883 (not d!176121) (not d!177029) (not d!176643) (not b!462705) (not b!462789) tp_is_empty!1995 (not bm!32133) (not b!462923) (not d!176955) (not d!176141) (not b!463019) (not b!462990) (not bm!32113) (not d!176867) (not b!462753) (not b!463373) (not b!464118) (not b!464160) (not b_next!12945) (not d!176965) (not b!463054) (not b!463915) (not b!462757) (not b!462948) (not b!464166) (not b!463046) (not b!462992) (not b!462756) (not b!463051) (not d!176897) (not b!462980) (not b!464094) (not b!464391) (not b!463604) (not b!464058) (not b!464217) (not d!176831) (not b!464075) (not b!462921) (not d!176017) (not b!463351) (not d!176675) (not b!464294) (not b!464317) (not b!464150) (not d!175985) (not b!463984) (not b!462680) (not d!176973) (not d!176489) (not b!463965) (not b!464272) (not b!462864) (not b!463008) (not b!464035) (not b!463017) (not d!176197) (not d!176463) (not b!464138) (not b!464346) (not b!462984) (not b!463140) (not d!176067) (not b!462805) (not b!464274) (not b!463922) (not b!463918) (not bm!32216) (not b!464076) (not d!176979) (not d!176865) (not b!464106) (not b!464268) (not d!177069) (not tb!46201) (not b!464038) (not b!464022) (not b!464293) (not b_lambda!19373) (not d!176875) (not b!462869) (not b!464292) (not b!462777) (not d!177063) (not b!464081) (not b!462543) (not d!177045) (not b!461792) (not b_next!12953) (not bm!32206) (not b!464019) (not b!464072) (not b!464384) (not b!462792) (not b!462733) (not b!464189) (not b!464198) (not b!462677) (not b!462743) (not b!464012) (not b!463582) (not b!463597) (not b!462736) (not b!462860) (not bm!32202) (not d!176363) (not b!464002) (not b!464357) (not b!464009) (not b!463910) (not b!464195) (not b!462672) (not b!462976) (not b!463942) (not b!464307) (not b!464406) (not d!176959) (not d!176961) (not d!176355) (not b!464079) (not b!464163) (not b!464404) (not b!464080) (not b!463175) (not b!463957) (not d!176825) (not b!464328) (not b!464157) (not b!464341) (not b!464144) (not b!463933) (not b!464010) (not b!464093) (not b!462974) (not b!463575) (not bm!32122) (not d!176097) (not b!462771) (not b!463959) (not b!464018) (not b!463018) (not b!464361) (not b!463133) (not d!176841) (not b!462920) (not b!464395) (not b_lambda!19191) (not b_lambda!19355) (not d!176113) (not b!464090) (not b!464115) (not b!464121) (not b!461677) (not b!464311) (not d!177015) (not d!176059) (not b!462598) (not tb!46191) (not b_lambda!19367) (not b!464179) (not d!176137) (not b!462867) (not b!462780) (not b!463021) (not b!464133) (not b!464016) (not d!176087) (not b!462745) (not d!176641) (not d!176361) (not b_lambda!19369) (not b!462859) (not d!176947) (not b!463580) (not b!464325) (not d!176667) (not d!176135) (not b!463634) (not b!464309) (not b!464142) (not b!463159) (not bm!32132) (not d!176251) b_and!49893 (not d!176951) (not b!464154) (not b!463995) (not d!176107) (not b_next!12949) (not d!176117) (not b!463901) (not d!176143) (not d!176991) (not bm!32144) (not b!463177) (not b!464205) (not b!462542) (not bm!32118) (not b!464170) (not b!464020) (not d!177027) (not b!462709) (not b!464127) (not b!463905) (not b!464329) (not d!176455) (not b!463586) (not d!176317) (not b!463123) (not b!463035) (not b!464156) (not d!176949) (not b!464225) (not d!176869) (not b!463043) b_and!49797 (not d!176687) (not bm!32228) (not b!464001) (not d!176935) (not b!462993) (not b!463567) (not b!464283) (not d!176061) (not d!176903) (not b!463594) (not b!462723) (not b!464355) (not d!177073) (not b_lambda!19333) (not d!176695) (not b!463991) (not b!464368) (not b!463997) (not b_lambda!19349) (not d!176981) (not d!176119) (not bm!32197) (not d!176199) (not b!463989) (not b!464345) (not b!462970) (not d!176629) (not b!463963) (not d!176349) (not b!462982) (not b!462790) (not b_lambda!19329) (not b!463343) (not b!463904) (not b_lambda!19351) (not b!463630) (not d!176241) (not d!176211) (not d!176859) (not b!463559) (not b!462897) (not d!176847) (not d!176303) (not b!463020) (not b!463142) (not d!176257) (not d!177089) (not b_next!12985) (not bm!32219) (not bm!32126) (not b_lambda!19359) (not b!463605) (not d!176645) (not d!176661) b_and!49795 (not b!463160) (not b!462732) (not b!463079) (not b!462909) (not d!176833) (not bm!32204) (not b!464103) (not b!462728) (not b!463384) (not b!463127) b_and!49803 (not d!176227) (not d!176963) (not bm!32128) (not b!464015) (not tb!46171) (not d!176309) b_and!49885 (not b!464407) (not b!462922) (not b!463050) (not b!464374) (not b!462978) (not tb!46161) (not b!462979) (not b!462955) (not b!464162) (not b!463595) (not b!462660) (not b!464397) (not b!462929) (not b!462947) (not b!464153) (not d!176669) (not b!464363) (not b!462779) (not b!462748) (not b!463011) (not b_lambda!19371) (not bm!32215) (not d!176957) (not b!464082) (not b!464365) (not b!463592) (not d!176043) (not b!462917) (not b_next!12969) (not b!463131) (not b!463987) (not d!176855) (not b!463145) (not b!462953) (not b!463380) (not b!463350) (not bs!57793) (not b!464286) (not b!462721) (not b!464222) (not b!463934) (not b_lambda!19353) (not b!464380) (not b!464207) (not b!464169) (not b!462919) (not b!464025) (not bm!32212) (not d!176057) (not b!462602) (not bm!32101) (not d!176653) (not b!463913) (not d!176813) (not b!463341) (not b!462661))
(check-sat (not b_next!12987) b_and!49895 (not b_next!12971) (not b_next!12965) b_and!49801 (not b_next!12953) b_and!49797 (not b_next!12985) (not b_next!12983) b_and!49897 (not b_next!12967) (not b_next!12951) (not b_next!12955) b_and!49899 b_and!49887 b_and!49889 (not b_next!12947) (not b_next!12981) b_and!49799 b_and!49891 (not b_next!12945) b_and!49883 b_and!49893 (not b_next!12949) b_and!49803 b_and!49795 b_and!49885 (not b_next!12969))
