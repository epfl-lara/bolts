; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120234 () Bool)

(assert start!120234)

(declare-fun b!1344360 () Bool)

(declare-fun b_free!32835 () Bool)

(declare-fun b_next!33539 () Bool)

(assert (=> b!1344360 (= b_free!32835 (not b_next!33539))))

(declare-fun tp!389202 () Bool)

(declare-fun b_and!90067 () Bool)

(assert (=> b!1344360 (= tp!389202 b_and!90067)))

(declare-fun b_free!32837 () Bool)

(declare-fun b_next!33541 () Bool)

(assert (=> b!1344360 (= b_free!32837 (not b_next!33541))))

(declare-fun tp!389195 () Bool)

(declare-fun b_and!90069 () Bool)

(assert (=> b!1344360 (= tp!389195 b_and!90069)))

(declare-fun b!1344348 () Bool)

(declare-fun b_free!32839 () Bool)

(declare-fun b_next!33543 () Bool)

(assert (=> b!1344348 (= b_free!32839 (not b_next!33543))))

(declare-fun tp!389200 () Bool)

(declare-fun b_and!90071 () Bool)

(assert (=> b!1344348 (= tp!389200 b_and!90071)))

(declare-fun b_free!32841 () Bool)

(declare-fun b_next!33545 () Bool)

(assert (=> b!1344348 (= b_free!32841 (not b_next!33545))))

(declare-fun tp!389199 () Bool)

(declare-fun b_and!90073 () Bool)

(assert (=> b!1344348 (= tp!389199 b_and!90073)))

(declare-fun b!1344369 () Bool)

(declare-fun b_free!32843 () Bool)

(declare-fun b_next!33547 () Bool)

(assert (=> b!1344369 (= b_free!32843 (not b_next!33547))))

(declare-fun tp!389194 () Bool)

(declare-fun b_and!90075 () Bool)

(assert (=> b!1344369 (= tp!389194 b_and!90075)))

(declare-fun b_free!32845 () Bool)

(declare-fun b_next!33549 () Bool)

(assert (=> b!1344369 (= b_free!32845 (not b_next!33549))))

(declare-fun tp!389197 () Bool)

(declare-fun b_and!90077 () Bool)

(assert (=> b!1344369 (= tp!389197 b_and!90077)))

(declare-fun b!1344359 () Bool)

(assert (=> b!1344359 true))

(assert (=> b!1344359 true))

(declare-fun b!1344375 () Bool)

(assert (=> b!1344375 true))

(declare-fun b!1344365 () Bool)

(assert (=> b!1344365 true))

(declare-fun e!860994 () Bool)

(assert (=> b!1344348 (= e!860994 (and tp!389200 tp!389199))))

(declare-fun tp!389201 () Bool)

(declare-fun e!860995 () Bool)

(declare-fun e!860992 () Bool)

(declare-datatypes ((List!13822 0))(
  ( (Nil!13756) (Cons!13756 (h!19157 (_ BitVec 16)) (t!119691 List!13822)) )
))
(declare-datatypes ((TokenValue!2475 0))(
  ( (FloatLiteralValue!4950 (text!17770 List!13822)) (TokenValueExt!2474 (__x!8779 Int)) (Broken!12375 (value!77579 List!13822)) (Object!2540) (End!2475) (Def!2475) (Underscore!2475) (Match!2475) (Else!2475) (Error!2475) (Case!2475) (If!2475) (Extends!2475) (Abstract!2475) (Class!2475) (Val!2475) (DelimiterValue!4950 (del!2535 List!13822)) (KeywordValue!2481 (value!77580 List!13822)) (CommentValue!4950 (value!77581 List!13822)) (WhitespaceValue!4950 (value!77582 List!13822)) (IndentationValue!2475 (value!77583 List!13822)) (String!16610) (Int32!2475) (Broken!12376 (value!77584 List!13822)) (Boolean!2476) (Unit!19860) (OperatorValue!2478 (op!2535 List!13822)) (IdentifierValue!4950 (value!77585 List!13822)) (IdentifierValue!4951 (value!77586 List!13822)) (WhitespaceValue!4951 (value!77587 List!13822)) (True!4950) (False!4950) (Broken!12377 (value!77588 List!13822)) (Broken!12378 (value!77589 List!13822)) (True!4951) (RightBrace!2475) (RightBracket!2475) (Colon!2475) (Null!2475) (Comma!2475) (LeftBracket!2475) (False!4951) (LeftBrace!2475) (ImaginaryLiteralValue!2475 (text!17771 List!13822)) (StringLiteralValue!7425 (value!77590 List!13822)) (EOFValue!2475 (value!77591 List!13822)) (IdentValue!2475 (value!77592 List!13822)) (DelimiterValue!4951 (value!77593 List!13822)) (DedentValue!2475 (value!77594 List!13822)) (NewLineValue!2475 (value!77595 List!13822)) (IntegerValue!7425 (value!77596 (_ BitVec 32)) (text!17772 List!13822)) (IntegerValue!7426 (value!77597 Int) (text!17773 List!13822)) (Times!2475) (Or!2475) (Equal!2475) (Minus!2475) (Broken!12379 (value!77598 List!13822)) (And!2475) (Div!2475) (LessEqual!2475) (Mod!2475) (Concat!6174) (Not!2475) (Plus!2475) (SpaceValue!2475 (value!77599 List!13822)) (IntegerValue!7427 (value!77600 Int) (text!17774 List!13822)) (StringLiteralValue!7426 (text!17775 List!13822)) (FloatLiteralValue!4951 (text!17776 List!13822)) (BytesLiteralValue!2475 (value!77601 List!13822)) (CommentValue!4951 (value!77602 List!13822)) (StringLiteralValue!7427 (value!77603 List!13822)) (ErrorTokenValue!2475 (msg!2536 List!13822)) )
))
(declare-datatypes ((C!7688 0))(
  ( (C!7689 (val!4404 Int)) )
))
(declare-datatypes ((List!13823 0))(
  ( (Nil!13757) (Cons!13757 (h!19158 C!7688) (t!119692 List!13823)) )
))
(declare-datatypes ((IArray!9069 0))(
  ( (IArray!9070 (innerList!4592 List!13823)) )
))
(declare-datatypes ((Conc!4532 0))(
  ( (Node!4532 (left!11794 Conc!4532) (right!12124 Conc!4532) (csize!9294 Int) (cheight!4743 Int)) (Leaf!6921 (xs!7251 IArray!9069) (csize!9295 Int)) (Empty!4532) )
))
(declare-datatypes ((BalanceConc!9004 0))(
  ( (BalanceConc!9005 (c!220090 Conc!4532)) )
))
(declare-datatypes ((Regex!3699 0))(
  ( (ElementMatch!3699 (c!220091 C!7688)) (Concat!6175 (regOne!7910 Regex!3699) (regTwo!7910 Regex!3699)) (EmptyExpr!3699) (Star!3699 (reg!4028 Regex!3699)) (EmptyLang!3699) (Union!3699 (regOne!7911 Regex!3699) (regTwo!7911 Regex!3699)) )
))
(declare-datatypes ((String!16611 0))(
  ( (String!16612 (value!77604 String)) )
))
(declare-datatypes ((TokenValueInjection!4610 0))(
  ( (TokenValueInjection!4611 (toValue!3628 Int) (toChars!3487 Int)) )
))
(declare-datatypes ((Rule!4570 0))(
  ( (Rule!4571 (regex!2385 Regex!3699) (tag!2647 String!16611) (isSeparator!2385 Bool) (transformation!2385 TokenValueInjection!4610)) )
))
(declare-datatypes ((List!13824 0))(
  ( (Nil!13758) (Cons!13758 (h!19159 Rule!4570) (t!119693 List!13824)) )
))
(declare-fun rules!2550 () List!13824)

(declare-fun b!1344349 () Bool)

(declare-fun inv!18087 (String!16611) Bool)

(declare-fun inv!18090 (TokenValueInjection!4610) Bool)

(assert (=> b!1344349 (= e!860995 (and tp!389201 (inv!18087 (tag!2647 (h!19159 rules!2550))) (inv!18090 (transformation!2385 (h!19159 rules!2550))) e!860992))))

(declare-fun b!1344350 () Bool)

(declare-fun res!605950 () Bool)

(declare-fun e!861004 () Bool)

(assert (=> b!1344350 (=> (not res!605950) (not e!861004))))

(declare-datatypes ((Token!4432 0))(
  ( (Token!4433 (value!77605 TokenValue!2475) (rule!4130 Rule!4570) (size!11217 Int) (originalCharacters!3247 List!13823)) )
))
(declare-fun t1!34 () Token!4432)

(declare-datatypes ((LexerInterface!2080 0))(
  ( (LexerInterfaceExt!2077 (__x!8780 Int)) (Lexer!2078) )
))
(declare-fun thiss!19762 () LexerInterface!2080)

(declare-fun rulesProduceIndividualToken!1049 (LexerInterface!2080 List!13824 Token!4432) Bool)

(assert (=> b!1344350 (= res!605950 (rulesProduceIndividualToken!1049 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1344351 () Bool)

(declare-fun res!605936 () Bool)

(declare-fun e!861003 () Bool)

(assert (=> b!1344351 (=> (not res!605936) (not e!861003))))

(declare-fun sepAndNonSepRulesDisjointChars!758 (List!13824 List!13824) Bool)

(assert (=> b!1344351 (= res!605936 (sepAndNonSepRulesDisjointChars!758 rules!2550 rules!2550))))

(declare-fun b!1344352 () Bool)

(declare-fun res!605944 () Bool)

(assert (=> b!1344352 (=> (not res!605944) (not e!861004))))

(declare-fun t2!34 () Token!4432)

(assert (=> b!1344352 (= res!605944 (rulesProduceIndividualToken!1049 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1344353 () Bool)

(declare-fun res!605939 () Bool)

(assert (=> b!1344353 (=> (not res!605939) (not e!861003))))

(declare-fun separableTokensPredicate!363 (LexerInterface!2080 Token!4432 Token!4432 List!13824) Bool)

(assert (=> b!1344353 (= res!605939 (not (separableTokensPredicate!363 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1344354 () Bool)

(declare-fun res!605951 () Bool)

(assert (=> b!1344354 (=> (not res!605951) (not e!861004))))

(assert (=> b!1344354 (= res!605951 (not (= (isSeparator!2385 (rule!4130 t1!34)) (isSeparator!2385 (rule!4130 t2!34)))))))

(declare-fun b!1344355 () Bool)

(declare-fun res!605934 () Bool)

(declare-fun e!861006 () Bool)

(assert (=> b!1344355 (=> res!605934 e!861006)))

(declare-fun lt!444724 () Regex!3699)

(declare-fun lt!444720 () List!13823)

(declare-fun matchR!1692 (Regex!3699 List!13823) Bool)

(assert (=> b!1344355 (= res!605934 (not (matchR!1692 lt!444724 lt!444720)))))

(declare-fun b!1344356 () Bool)

(declare-fun res!605947 () Bool)

(assert (=> b!1344356 (=> (not res!605947) (not e!861004))))

(declare-fun isEmpty!8206 (List!13824) Bool)

(assert (=> b!1344356 (= res!605947 (not (isEmpty!8206 rules!2550)))))

(declare-fun b!1344357 () Bool)

(declare-fun e!860993 () Bool)

(declare-fun e!861014 () Bool)

(assert (=> b!1344357 (= e!860993 e!861014)))

(declare-fun res!605935 () Bool)

(assert (=> b!1344357 (=> res!605935 e!861014)))

(declare-datatypes ((List!13825 0))(
  ( (Nil!13759) (Cons!13759 (h!19160 Token!4432) (t!119694 List!13825)) )
))
(declare-datatypes ((IArray!9071 0))(
  ( (IArray!9072 (innerList!4593 List!13825)) )
))
(declare-datatypes ((Conc!4533 0))(
  ( (Node!4533 (left!11795 Conc!4533) (right!12125 Conc!4533) (csize!9296 Int) (cheight!4744 Int)) (Leaf!6922 (xs!7252 IArray!9071) (csize!9297 Int)) (Empty!4533) )
))
(declare-datatypes ((BalanceConc!9006 0))(
  ( (BalanceConc!9007 (c!220092 Conc!4533)) )
))
(declare-datatypes ((tuple2!13322 0))(
  ( (tuple2!13323 (_1!7547 BalanceConc!9006) (_2!7547 BalanceConc!9004)) )
))
(declare-fun lt!444727 () tuple2!13322)

(declare-fun list!5246 (BalanceConc!9006) List!13825)

(assert (=> b!1344357 (= res!605935 (not (= (list!5246 (_1!7547 lt!444727)) (Cons!13759 t1!34 Nil!13759))))))

(declare-fun lex!907 (LexerInterface!2080 List!13824 BalanceConc!9004) tuple2!13322)

(declare-fun print!846 (LexerInterface!2080 BalanceConc!9006) BalanceConc!9004)

(declare-fun singletonSeq!996 (Token!4432) BalanceConc!9006)

(assert (=> b!1344357 (= lt!444727 (lex!907 thiss!19762 rules!2550 (print!846 thiss!19762 (singletonSeq!996 t1!34))))))

(declare-fun lt!444726 () Rule!4570)

(declare-fun lambda!56593 () Int)

(declare-fun getWitness!316 (List!13824 Int) Rule!4570)

(assert (=> b!1344357 (= lt!444726 (getWitness!316 rules!2550 lambda!56593))))

(declare-fun b!1344358 () Bool)

(declare-fun e!861005 () Bool)

(assert (=> b!1344358 (= e!861005 e!861006)))

(declare-fun res!605942 () Bool)

(assert (=> b!1344358 (=> res!605942 e!861006)))

(declare-fun lt!444728 () List!13823)

(declare-fun lt!444722 () C!7688)

(declare-fun contains!2522 (List!13823 C!7688) Bool)

(assert (=> b!1344358 (= res!605942 (not (contains!2522 lt!444728 lt!444722)))))

(declare-fun lt!444716 () BalanceConc!9004)

(declare-fun apply!3269 (BalanceConc!9004 Int) C!7688)

(assert (=> b!1344358 (= lt!444722 (apply!3269 lt!444716 0))))

(declare-fun e!860996 () Bool)

(declare-fun e!861000 () Bool)

(assert (=> b!1344359 (= e!860996 (not e!861000))))

(declare-fun res!605949 () Bool)

(assert (=> b!1344359 (=> res!605949 e!861000)))

(declare-fun lambda!56590 () Int)

(declare-fun Exists!851 (Int) Bool)

(assert (=> b!1344359 (= res!605949 (not (Exists!851 lambda!56590)))))

(assert (=> b!1344359 (Exists!851 lambda!56590)))

(declare-datatypes ((Unit!19861 0))(
  ( (Unit!19862) )
))
(declare-fun lt!444714 () Unit!19861)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!169 (Regex!3699 List!13823) Unit!19861)

(assert (=> b!1344359 (= lt!444714 (lemmaPrefixMatchThenExistsStringThatMatches!169 lt!444724 lt!444728))))

(assert (=> b!1344360 (= e!860992 (and tp!389202 tp!389195))))

(declare-fun b!1344361 () Bool)

(declare-fun isEmpty!8207 (BalanceConc!9004) Bool)

(assert (=> b!1344361 (= e!861014 (isEmpty!8207 (_2!7547 lt!444727)))))

(declare-fun b!1344362 () Bool)

(assert (=> b!1344362 (= e!861003 e!860996)))

(declare-fun res!605946 () Bool)

(assert (=> b!1344362 (=> (not res!605946) (not e!860996))))

(declare-fun prefixMatch!208 (Regex!3699 List!13823) Bool)

(assert (=> b!1344362 (= res!605946 (prefixMatch!208 lt!444724 lt!444728))))

(declare-fun rulesRegex!268 (LexerInterface!2080 List!13824) Regex!3699)

(assert (=> b!1344362 (= lt!444724 (rulesRegex!268 thiss!19762 rules!2550))))

(declare-fun lt!444721 () List!13823)

(declare-fun lt!444718 () C!7688)

(declare-fun ++!3526 (List!13823 List!13823) List!13823)

(assert (=> b!1344362 (= lt!444728 (++!3526 lt!444721 (Cons!13757 lt!444718 Nil!13757)))))

(declare-fun lt!444715 () BalanceConc!9004)

(assert (=> b!1344362 (= lt!444718 (apply!3269 lt!444715 0))))

(declare-fun list!5247 (BalanceConc!9004) List!13823)

(assert (=> b!1344362 (= lt!444721 (list!5247 lt!444716))))

(declare-fun charsOf!1357 (Token!4432) BalanceConc!9004)

(assert (=> b!1344362 (= lt!444716 (charsOf!1357 t1!34))))

(declare-fun e!861013 () Bool)

(declare-fun tp!389196 () Bool)

(declare-fun e!860999 () Bool)

(declare-fun b!1344363 () Bool)

(assert (=> b!1344363 (= e!860999 (and tp!389196 (inv!18087 (tag!2647 (rule!4130 t2!34))) (inv!18090 (transformation!2385 (rule!4130 t2!34))) e!861013))))

(declare-fun b!1344364 () Bool)

(assert (=> b!1344364 (= e!861000 e!861005)))

(declare-fun res!605948 () Bool)

(assert (=> b!1344364 (=> res!605948 e!861005)))

(declare-fun getSuffix!547 (List!13823 List!13823) List!13823)

(assert (=> b!1344364 (= res!605948 (not (= lt!444720 (++!3526 lt!444728 (getSuffix!547 lt!444720 lt!444728)))))))

(declare-fun pickWitness!154 (Int) List!13823)

(assert (=> b!1344364 (= lt!444720 (pickWitness!154 lambda!56590))))

(declare-fun e!861002 () Bool)

(assert (=> b!1344365 (= e!861002 e!860993)))

(declare-fun res!605941 () Bool)

(assert (=> b!1344365 (=> res!605941 e!860993)))

(declare-fun exists!428 (List!13824 Int) Bool)

(assert (=> b!1344365 (= res!605941 (not (exists!428 rules!2550 lambda!56593)))))

(assert (=> b!1344365 (exists!428 rules!2550 lambda!56593)))

(declare-fun lt!444723 () Regex!3699)

(declare-fun lambda!56591 () Int)

(declare-fun lt!444717 () Unit!19861)

(declare-fun lemmaMapContains!104 (List!13824 Int Regex!3699) Unit!19861)

(assert (=> b!1344365 (= lt!444717 (lemmaMapContains!104 rules!2550 lambda!56591 lt!444723))))

(declare-fun b!1344366 () Bool)

(declare-fun res!605954 () Bool)

(assert (=> b!1344366 (=> res!605954 e!861006)))

(assert (=> b!1344366 (= res!605954 (not (contains!2522 lt!444728 lt!444718)))))

(declare-fun res!605952 () Bool)

(assert (=> start!120234 (=> (not res!605952) (not e!861004))))

(get-info :version)

(assert (=> start!120234 (= res!605952 ((_ is Lexer!2078) thiss!19762))))

(assert (=> start!120234 e!861004))

(assert (=> start!120234 true))

(declare-fun e!861008 () Bool)

(assert (=> start!120234 e!861008))

(declare-fun e!861009 () Bool)

(declare-fun inv!18091 (Token!4432) Bool)

(assert (=> start!120234 (and (inv!18091 t1!34) e!861009)))

(declare-fun e!861012 () Bool)

(assert (=> start!120234 (and (inv!18091 t2!34) e!861012)))

(declare-fun b!1344367 () Bool)

(declare-fun res!605938 () Bool)

(assert (=> b!1344367 (=> res!605938 e!861006)))

(assert (=> b!1344367 (= res!605938 (not (contains!2522 lt!444720 lt!444722)))))

(declare-fun tp!389204 () Bool)

(declare-fun b!1344368 () Bool)

(declare-fun e!860997 () Bool)

(assert (=> b!1344368 (= e!860997 (and tp!389204 (inv!18087 (tag!2647 (rule!4130 t1!34))) (inv!18090 (transformation!2385 (rule!4130 t1!34))) e!860994))))

(assert (=> b!1344369 (= e!861013 (and tp!389194 tp!389197))))

(declare-fun b!1344370 () Bool)

(declare-fun e!861010 () Bool)

(assert (=> b!1344370 (= e!861010 e!861002)))

(declare-fun res!605945 () Bool)

(assert (=> b!1344370 (=> res!605945 e!861002)))

(declare-datatypes ((List!13826 0))(
  ( (Nil!13760) (Cons!13760 (h!19161 Regex!3699) (t!119695 List!13826)) )
))
(declare-fun contains!2523 (List!13826 Regex!3699) Bool)

(declare-fun map!3038 (List!13824 Int) List!13826)

(assert (=> b!1344370 (= res!605945 (not (contains!2523 (map!3038 rules!2550 lambda!56591) lt!444723)))))

(declare-fun lambda!56592 () Int)

(declare-fun getWitness!317 (List!13826 Int) Regex!3699)

(assert (=> b!1344370 (= lt!444723 (getWitness!317 (map!3038 rules!2550 lambda!56591) lambda!56592))))

(declare-fun b!1344371 () Bool)

(declare-fun tp!389198 () Bool)

(declare-fun inv!21 (TokenValue!2475) Bool)

(assert (=> b!1344371 (= e!861012 (and (inv!21 (value!77605 t2!34)) e!860999 tp!389198))))

(declare-fun tp!389193 () Bool)

(declare-fun b!1344372 () Bool)

(assert (=> b!1344372 (= e!861009 (and (inv!21 (value!77605 t1!34)) e!860997 tp!389193))))

(declare-fun b!1344373 () Bool)

(declare-fun res!605940 () Bool)

(assert (=> b!1344373 (=> res!605940 e!861006)))

(assert (=> b!1344373 (= res!605940 (not (contains!2522 lt!444720 lt!444718)))))

(declare-fun b!1344374 () Bool)

(assert (=> b!1344374 (= e!861004 e!861003)))

(declare-fun res!605937 () Bool)

(assert (=> b!1344374 (=> (not res!605937) (not e!861003))))

(declare-fun size!11218 (BalanceConc!9004) Int)

(assert (=> b!1344374 (= res!605937 (> (size!11218 lt!444715) 0))))

(assert (=> b!1344374 (= lt!444715 (charsOf!1357 t2!34))))

(assert (=> b!1344375 (= e!861006 e!861010)))

(declare-fun res!605953 () Bool)

(assert (=> b!1344375 (=> res!605953 e!861010)))

(declare-fun exists!429 (List!13826 Int) Bool)

(assert (=> b!1344375 (= res!605953 (not (exists!429 (map!3038 rules!2550 lambda!56591) lambda!56592)))))

(declare-fun lt!444719 () List!13826)

(assert (=> b!1344375 (exists!429 lt!444719 lambda!56592)))

(declare-fun lt!444725 () Unit!19861)

(declare-fun matchRGenUnionSpec!116 (Regex!3699 List!13826 List!13823) Unit!19861)

(assert (=> b!1344375 (= lt!444725 (matchRGenUnionSpec!116 lt!444724 lt!444719 lt!444720))))

(assert (=> b!1344375 (= lt!444719 (map!3038 rules!2550 lambda!56591))))

(declare-fun b!1344376 () Bool)

(declare-fun res!605943 () Bool)

(assert (=> b!1344376 (=> (not res!605943) (not e!861004))))

(declare-fun rulesInvariant!1950 (LexerInterface!2080 List!13824) Bool)

(assert (=> b!1344376 (= res!605943 (rulesInvariant!1950 thiss!19762 rules!2550))))

(declare-fun b!1344377 () Bool)

(declare-fun tp!389203 () Bool)

(assert (=> b!1344377 (= e!861008 (and e!860995 tp!389203))))

(assert (= (and start!120234 res!605952) b!1344356))

(assert (= (and b!1344356 res!605947) b!1344376))

(assert (= (and b!1344376 res!605943) b!1344350))

(assert (= (and b!1344350 res!605950) b!1344352))

(assert (= (and b!1344352 res!605944) b!1344354))

(assert (= (and b!1344354 res!605951) b!1344374))

(assert (= (and b!1344374 res!605937) b!1344351))

(assert (= (and b!1344351 res!605936) b!1344353))

(assert (= (and b!1344353 res!605939) b!1344362))

(assert (= (and b!1344362 res!605946) b!1344359))

(assert (= (and b!1344359 (not res!605949)) b!1344364))

(assert (= (and b!1344364 (not res!605948)) b!1344358))

(assert (= (and b!1344358 (not res!605942)) b!1344367))

(assert (= (and b!1344367 (not res!605938)) b!1344366))

(assert (= (and b!1344366 (not res!605954)) b!1344373))

(assert (= (and b!1344373 (not res!605940)) b!1344355))

(assert (= (and b!1344355 (not res!605934)) b!1344375))

(assert (= (and b!1344375 (not res!605953)) b!1344370))

(assert (= (and b!1344370 (not res!605945)) b!1344365))

(assert (= (and b!1344365 (not res!605941)) b!1344357))

(assert (= (and b!1344357 (not res!605935)) b!1344361))

(assert (= b!1344349 b!1344360))

(assert (= b!1344377 b!1344349))

(assert (= (and start!120234 ((_ is Cons!13758) rules!2550)) b!1344377))

(assert (= b!1344368 b!1344348))

(assert (= b!1344372 b!1344368))

(assert (= start!120234 b!1344372))

(assert (= b!1344363 b!1344369))

(assert (= b!1344371 b!1344363))

(assert (= start!120234 b!1344371))

(declare-fun m!1502985 () Bool)

(assert (=> b!1344364 m!1502985))

(assert (=> b!1344364 m!1502985))

(declare-fun m!1502987 () Bool)

(assert (=> b!1344364 m!1502987))

(declare-fun m!1502989 () Bool)

(assert (=> b!1344364 m!1502989))

(declare-fun m!1502991 () Bool)

(assert (=> b!1344356 m!1502991))

(declare-fun m!1502993 () Bool)

(assert (=> b!1344349 m!1502993))

(declare-fun m!1502995 () Bool)

(assert (=> b!1344349 m!1502995))

(declare-fun m!1502997 () Bool)

(assert (=> b!1344363 m!1502997))

(declare-fun m!1502999 () Bool)

(assert (=> b!1344363 m!1502999))

(declare-fun m!1503001 () Bool)

(assert (=> b!1344353 m!1503001))

(declare-fun m!1503003 () Bool)

(assert (=> b!1344351 m!1503003))

(declare-fun m!1503005 () Bool)

(assert (=> b!1344373 m!1503005))

(declare-fun m!1503007 () Bool)

(assert (=> start!120234 m!1503007))

(declare-fun m!1503009 () Bool)

(assert (=> start!120234 m!1503009))

(declare-fun m!1503011 () Bool)

(assert (=> b!1344376 m!1503011))

(declare-fun m!1503013 () Bool)

(assert (=> b!1344358 m!1503013))

(declare-fun m!1503015 () Bool)

(assert (=> b!1344358 m!1503015))

(declare-fun m!1503017 () Bool)

(assert (=> b!1344367 m!1503017))

(declare-fun m!1503019 () Bool)

(assert (=> b!1344375 m!1503019))

(assert (=> b!1344375 m!1503019))

(declare-fun m!1503021 () Bool)

(assert (=> b!1344375 m!1503021))

(declare-fun m!1503023 () Bool)

(assert (=> b!1344375 m!1503023))

(assert (=> b!1344375 m!1503019))

(declare-fun m!1503025 () Bool)

(assert (=> b!1344375 m!1503025))

(declare-fun m!1503027 () Bool)

(assert (=> b!1344350 m!1503027))

(declare-fun m!1503029 () Bool)

(assert (=> b!1344374 m!1503029))

(declare-fun m!1503031 () Bool)

(assert (=> b!1344374 m!1503031))

(declare-fun m!1503033 () Bool)

(assert (=> b!1344355 m!1503033))

(declare-fun m!1503035 () Bool)

(assert (=> b!1344357 m!1503035))

(declare-fun m!1503037 () Bool)

(assert (=> b!1344357 m!1503037))

(declare-fun m!1503039 () Bool)

(assert (=> b!1344357 m!1503039))

(declare-fun m!1503041 () Bool)

(assert (=> b!1344357 m!1503041))

(assert (=> b!1344357 m!1503037))

(assert (=> b!1344357 m!1503041))

(declare-fun m!1503043 () Bool)

(assert (=> b!1344357 m!1503043))

(declare-fun m!1503045 () Bool)

(assert (=> b!1344371 m!1503045))

(declare-fun m!1503047 () Bool)

(assert (=> b!1344359 m!1503047))

(assert (=> b!1344359 m!1503047))

(declare-fun m!1503049 () Bool)

(assert (=> b!1344359 m!1503049))

(declare-fun m!1503051 () Bool)

(assert (=> b!1344352 m!1503051))

(declare-fun m!1503053 () Bool)

(assert (=> b!1344366 m!1503053))

(declare-fun m!1503055 () Bool)

(assert (=> b!1344365 m!1503055))

(assert (=> b!1344365 m!1503055))

(declare-fun m!1503057 () Bool)

(assert (=> b!1344365 m!1503057))

(declare-fun m!1503059 () Bool)

(assert (=> b!1344372 m!1503059))

(declare-fun m!1503061 () Bool)

(assert (=> b!1344368 m!1503061))

(declare-fun m!1503063 () Bool)

(assert (=> b!1344368 m!1503063))

(declare-fun m!1503065 () Bool)

(assert (=> b!1344361 m!1503065))

(assert (=> b!1344370 m!1503019))

(assert (=> b!1344370 m!1503019))

(declare-fun m!1503067 () Bool)

(assert (=> b!1344370 m!1503067))

(assert (=> b!1344370 m!1503019))

(assert (=> b!1344370 m!1503019))

(declare-fun m!1503069 () Bool)

(assert (=> b!1344370 m!1503069))

(declare-fun m!1503071 () Bool)

(assert (=> b!1344362 m!1503071))

(declare-fun m!1503073 () Bool)

(assert (=> b!1344362 m!1503073))

(declare-fun m!1503075 () Bool)

(assert (=> b!1344362 m!1503075))

(declare-fun m!1503077 () Bool)

(assert (=> b!1344362 m!1503077))

(declare-fun m!1503079 () Bool)

(assert (=> b!1344362 m!1503079))

(declare-fun m!1503081 () Bool)

(assert (=> b!1344362 m!1503081))

(check-sat (not b!1344352) (not b!1344365) (not b_next!33541) b_and!90073 (not b_next!33549) (not b_next!33547) (not b!1344363) (not b!1344353) (not b_next!33545) (not b!1344361) (not b!1344358) (not b_next!33539) (not b!1344356) (not b!1344362) (not b!1344350) (not b!1344364) (not b!1344366) (not b_next!33543) (not b!1344372) (not b!1344357) (not b!1344367) (not b!1344375) (not b!1344359) b_and!90077 (not b!1344351) (not b!1344370) b_and!90069 (not b!1344376) b_and!90075 (not b!1344368) b_and!90067 (not b!1344355) (not b!1344377) (not b!1344371) (not b!1344349) b_and!90071 (not start!120234) (not b!1344374) (not b!1344373))
(check-sat (not b_next!33539) (not b_next!33543) (not b_next!33541) b_and!90073 (not b_next!33549) b_and!90077 b_and!90069 b_and!90075 b_and!90067 (not b_next!33547) (not b_next!33545) b_and!90071)
(get-model)

(declare-fun lt!444745 () Bool)

(declare-fun d!379197 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1959 (List!13826) (InoxSet Regex!3699))

(assert (=> d!379197 (= lt!444745 (select (content!1959 (map!3038 rules!2550 lambda!56591)) lt!444723))))

(declare-fun e!861038 () Bool)

(assert (=> d!379197 (= lt!444745 e!861038)))

(declare-fun res!605979 () Bool)

(assert (=> d!379197 (=> (not res!605979) (not e!861038))))

(assert (=> d!379197 (= res!605979 ((_ is Cons!13760) (map!3038 rules!2550 lambda!56591)))))

(assert (=> d!379197 (= (contains!2523 (map!3038 rules!2550 lambda!56591) lt!444723) lt!444745)))

(declare-fun b!1344419 () Bool)

(declare-fun e!861037 () Bool)

(assert (=> b!1344419 (= e!861038 e!861037)))

(declare-fun res!605980 () Bool)

(assert (=> b!1344419 (=> res!605980 e!861037)))

(assert (=> b!1344419 (= res!605980 (= (h!19161 (map!3038 rules!2550 lambda!56591)) lt!444723))))

(declare-fun b!1344420 () Bool)

(assert (=> b!1344420 (= e!861037 (contains!2523 (t!119695 (map!3038 rules!2550 lambda!56591)) lt!444723))))

(assert (= (and d!379197 res!605979) b!1344419))

(assert (= (and b!1344419 (not res!605980)) b!1344420))

(assert (=> d!379197 m!1503019))

(declare-fun m!1503141 () Bool)

(assert (=> d!379197 m!1503141))

(declare-fun m!1503143 () Bool)

(assert (=> d!379197 m!1503143))

(declare-fun m!1503145 () Bool)

(assert (=> b!1344420 m!1503145))

(assert (=> b!1344370 d!379197))

(declare-fun d!379205 () Bool)

(declare-fun lt!444753 () List!13826)

(declare-fun size!11224 (List!13826) Int)

(declare-fun size!11225 (List!13824) Int)

(assert (=> d!379205 (= (size!11224 lt!444753) (size!11225 rules!2550))))

(declare-fun e!861048 () List!13826)

(assert (=> d!379205 (= lt!444753 e!861048)))

(declare-fun c!220101 () Bool)

(assert (=> d!379205 (= c!220101 ((_ is Nil!13758) rules!2550))))

(assert (=> d!379205 (= (map!3038 rules!2550 lambda!56591) lt!444753)))

(declare-fun b!1344434 () Bool)

(assert (=> b!1344434 (= e!861048 Nil!13760)))

(declare-fun b!1344435 () Bool)

(declare-fun $colon$colon!181 (List!13826 Regex!3699) List!13826)

(declare-fun dynLambda!6085 (Int Rule!4570) Regex!3699)

(assert (=> b!1344435 (= e!861048 ($colon$colon!181 (map!3038 (t!119693 rules!2550) lambda!56591) (dynLambda!6085 lambda!56591 (h!19159 rules!2550))))))

(assert (= (and d!379205 c!220101) b!1344434))

(assert (= (and d!379205 (not c!220101)) b!1344435))

(declare-fun b_lambda!39865 () Bool)

(assert (=> (not b_lambda!39865) (not b!1344435)))

(declare-fun m!1503163 () Bool)

(assert (=> d!379205 m!1503163))

(declare-fun m!1503165 () Bool)

(assert (=> d!379205 m!1503165))

(declare-fun m!1503167 () Bool)

(assert (=> b!1344435 m!1503167))

(declare-fun m!1503169 () Bool)

(assert (=> b!1344435 m!1503169))

(assert (=> b!1344435 m!1503167))

(assert (=> b!1344435 m!1503169))

(declare-fun m!1503171 () Bool)

(assert (=> b!1344435 m!1503171))

(assert (=> b!1344370 d!379205))

(declare-fun d!379215 () Bool)

(declare-fun e!861072 () Bool)

(assert (=> d!379215 e!861072))

(declare-fun res!606006 () Bool)

(assert (=> d!379215 (=> (not res!606006) (not e!861072))))

(declare-fun lt!444764 () Regex!3699)

(declare-fun dynLambda!6086 (Int Regex!3699) Bool)

(assert (=> d!379215 (= res!606006 (dynLambda!6086 lambda!56592 lt!444764))))

(declare-fun e!861071 () Regex!3699)

(assert (=> d!379215 (= lt!444764 e!861071)))

(declare-fun c!220109 () Bool)

(declare-fun e!861073 () Bool)

(assert (=> d!379215 (= c!220109 e!861073)))

(declare-fun res!606005 () Bool)

(assert (=> d!379215 (=> (not res!606005) (not e!861073))))

(assert (=> d!379215 (= res!606005 ((_ is Cons!13760) (map!3038 rules!2550 lambda!56591)))))

(assert (=> d!379215 (exists!429 (map!3038 rules!2550 lambda!56591) lambda!56592)))

(assert (=> d!379215 (= (getWitness!317 (map!3038 rules!2550 lambda!56591) lambda!56592) lt!444764)))

(declare-fun b!1344468 () Bool)

(assert (=> b!1344468 (= e!861073 (dynLambda!6086 lambda!56592 (h!19161 (map!3038 rules!2550 lambda!56591))))))

(declare-fun b!1344469 () Bool)

(declare-fun e!861070 () Regex!3699)

(assert (=> b!1344469 (= e!861070 (getWitness!317 (t!119695 (map!3038 rules!2550 lambda!56591)) lambda!56592))))

(declare-fun b!1344470 () Bool)

(declare-fun lt!444765 () Unit!19861)

(declare-fun Unit!19863 () Unit!19861)

(assert (=> b!1344470 (= lt!444765 Unit!19863)))

(assert (=> b!1344470 false))

(declare-fun head!2395 (List!13826) Regex!3699)

(assert (=> b!1344470 (= e!861070 (head!2395 (map!3038 rules!2550 lambda!56591)))))

(declare-fun b!1344471 () Bool)

(assert (=> b!1344471 (= e!861072 (contains!2523 (map!3038 rules!2550 lambda!56591) lt!444764))))

(declare-fun b!1344472 () Bool)

(assert (=> b!1344472 (= e!861071 (h!19161 (map!3038 rules!2550 lambda!56591)))))

(declare-fun b!1344473 () Bool)

(assert (=> b!1344473 (= e!861071 e!861070)))

(declare-fun c!220110 () Bool)

(assert (=> b!1344473 (= c!220110 ((_ is Cons!13760) (map!3038 rules!2550 lambda!56591)))))

(assert (= (and d!379215 res!606005) b!1344468))

(assert (= (and d!379215 c!220109) b!1344472))

(assert (= (and d!379215 (not c!220109)) b!1344473))

(assert (= (and b!1344473 c!220110) b!1344469))

(assert (= (and b!1344473 (not c!220110)) b!1344470))

(assert (= (and d!379215 res!606006) b!1344471))

(declare-fun b_lambda!39873 () Bool)

(assert (=> (not b_lambda!39873) (not d!379215)))

(declare-fun b_lambda!39875 () Bool)

(assert (=> (not b_lambda!39875) (not b!1344468)))

(declare-fun m!1503211 () Bool)

(assert (=> d!379215 m!1503211))

(assert (=> d!379215 m!1503019))

(assert (=> d!379215 m!1503025))

(assert (=> b!1344470 m!1503019))

(declare-fun m!1503213 () Bool)

(assert (=> b!1344470 m!1503213))

(assert (=> b!1344471 m!1503019))

(declare-fun m!1503215 () Bool)

(assert (=> b!1344471 m!1503215))

(declare-fun m!1503217 () Bool)

(assert (=> b!1344468 m!1503217))

(declare-fun m!1503219 () Bool)

(assert (=> b!1344469 m!1503219))

(assert (=> b!1344370 d!379215))

(declare-fun d!379229 () Bool)

(assert (=> d!379229 (= (inv!18087 (tag!2647 (h!19159 rules!2550))) (= (mod (str.len (value!77604 (tag!2647 (h!19159 rules!2550)))) 2) 0))))

(assert (=> b!1344349 d!379229))

(declare-fun d!379233 () Bool)

(declare-fun res!606018 () Bool)

(declare-fun e!861091 () Bool)

(assert (=> d!379233 (=> (not res!606018) (not e!861091))))

(declare-fun semiInverseModEq!908 (Int Int) Bool)

(assert (=> d!379233 (= res!606018 (semiInverseModEq!908 (toChars!3487 (transformation!2385 (h!19159 rules!2550))) (toValue!3628 (transformation!2385 (h!19159 rules!2550)))))))

(assert (=> d!379233 (= (inv!18090 (transformation!2385 (h!19159 rules!2550))) e!861091)))

(declare-fun b!1344499 () Bool)

(declare-fun equivClasses!867 (Int Int) Bool)

(assert (=> b!1344499 (= e!861091 (equivClasses!867 (toChars!3487 (transformation!2385 (h!19159 rules!2550))) (toValue!3628 (transformation!2385 (h!19159 rules!2550)))))))

(assert (= (and d!379233 res!606018) b!1344499))

(declare-fun m!1503253 () Bool)

(assert (=> d!379233 m!1503253))

(declare-fun m!1503255 () Bool)

(assert (=> b!1344499 m!1503255))

(assert (=> b!1344349 d!379233))

(declare-fun b!1344516 () Bool)

(declare-fun res!606021 () Bool)

(declare-fun e!861101 () Bool)

(assert (=> b!1344516 (=> res!606021 e!861101)))

(assert (=> b!1344516 (= res!606021 (not ((_ is IntegerValue!7427) (value!77605 t2!34))))))

(declare-fun e!861102 () Bool)

(assert (=> b!1344516 (= e!861102 e!861101)))

(declare-fun b!1344517 () Bool)

(declare-fun e!861103 () Bool)

(declare-fun inv!16 (TokenValue!2475) Bool)

(assert (=> b!1344517 (= e!861103 (inv!16 (value!77605 t2!34)))))

(declare-fun b!1344519 () Bool)

(declare-fun inv!17 (TokenValue!2475) Bool)

(assert (=> b!1344519 (= e!861102 (inv!17 (value!77605 t2!34)))))

(declare-fun b!1344520 () Bool)

(declare-fun inv!15 (TokenValue!2475) Bool)

(assert (=> b!1344520 (= e!861101 (inv!15 (value!77605 t2!34)))))

(declare-fun d!379243 () Bool)

(declare-fun c!220125 () Bool)

(assert (=> d!379243 (= c!220125 ((_ is IntegerValue!7425) (value!77605 t2!34)))))

(assert (=> d!379243 (= (inv!21 (value!77605 t2!34)) e!861103)))

(declare-fun b!1344518 () Bool)

(assert (=> b!1344518 (= e!861103 e!861102)))

(declare-fun c!220126 () Bool)

(assert (=> b!1344518 (= c!220126 ((_ is IntegerValue!7426) (value!77605 t2!34)))))

(assert (= (and d!379243 c!220125) b!1344517))

(assert (= (and d!379243 (not c!220125)) b!1344518))

(assert (= (and b!1344518 c!220126) b!1344519))

(assert (= (and b!1344518 (not c!220126)) b!1344516))

(assert (= (and b!1344516 (not res!606021)) b!1344520))

(declare-fun m!1503275 () Bool)

(assert (=> b!1344517 m!1503275))

(declare-fun m!1503277 () Bool)

(assert (=> b!1344519 m!1503277))

(declare-fun m!1503279 () Bool)

(assert (=> b!1344520 m!1503279))

(assert (=> b!1344371 d!379243))

(declare-fun d!379253 () Bool)

(declare-fun lt!444807 () Bool)

(declare-fun e!861160 () Bool)

(assert (=> d!379253 (= lt!444807 e!861160)))

(declare-fun res!606079 () Bool)

(assert (=> d!379253 (=> (not res!606079) (not e!861160))))

(assert (=> d!379253 (= res!606079 (= (list!5246 (_1!7547 (lex!907 thiss!19762 rules!2550 (print!846 thiss!19762 (singletonSeq!996 t1!34))))) (list!5246 (singletonSeq!996 t1!34))))))

(declare-fun e!861161 () Bool)

(assert (=> d!379253 (= lt!444807 e!861161)))

(declare-fun res!606078 () Bool)

(assert (=> d!379253 (=> (not res!606078) (not e!861161))))

(declare-fun lt!444806 () tuple2!13322)

(declare-fun size!11226 (BalanceConc!9006) Int)

(assert (=> d!379253 (= res!606078 (= (size!11226 (_1!7547 lt!444806)) 1))))

(assert (=> d!379253 (= lt!444806 (lex!907 thiss!19762 rules!2550 (print!846 thiss!19762 (singletonSeq!996 t1!34))))))

(assert (=> d!379253 (not (isEmpty!8206 rules!2550))))

(assert (=> d!379253 (= (rulesProduceIndividualToken!1049 thiss!19762 rules!2550 t1!34) lt!444807)))

(declare-fun b!1344618 () Bool)

(declare-fun res!606077 () Bool)

(assert (=> b!1344618 (=> (not res!606077) (not e!861161))))

(declare-fun apply!3272 (BalanceConc!9006 Int) Token!4432)

(assert (=> b!1344618 (= res!606077 (= (apply!3272 (_1!7547 lt!444806) 0) t1!34))))

(declare-fun b!1344619 () Bool)

(assert (=> b!1344619 (= e!861161 (isEmpty!8207 (_2!7547 lt!444806)))))

(declare-fun b!1344620 () Bool)

(assert (=> b!1344620 (= e!861160 (isEmpty!8207 (_2!7547 (lex!907 thiss!19762 rules!2550 (print!846 thiss!19762 (singletonSeq!996 t1!34))))))))

(assert (= (and d!379253 res!606078) b!1344618))

(assert (= (and b!1344618 res!606077) b!1344619))

(assert (= (and d!379253 res!606079) b!1344620))

(assert (=> d!379253 m!1503041))

(declare-fun m!1503351 () Bool)

(assert (=> d!379253 m!1503351))

(assert (=> d!379253 m!1503041))

(assert (=> d!379253 m!1503037))

(assert (=> d!379253 m!1503037))

(assert (=> d!379253 m!1503039))

(assert (=> d!379253 m!1502991))

(declare-fun m!1503353 () Bool)

(assert (=> d!379253 m!1503353))

(declare-fun m!1503355 () Bool)

(assert (=> d!379253 m!1503355))

(assert (=> d!379253 m!1503041))

(declare-fun m!1503357 () Bool)

(assert (=> b!1344618 m!1503357))

(declare-fun m!1503359 () Bool)

(assert (=> b!1344619 m!1503359))

(assert (=> b!1344620 m!1503041))

(assert (=> b!1344620 m!1503041))

(assert (=> b!1344620 m!1503037))

(assert (=> b!1344620 m!1503037))

(assert (=> b!1344620 m!1503039))

(declare-fun m!1503361 () Bool)

(assert (=> b!1344620 m!1503361))

(assert (=> b!1344350 d!379253))

(declare-fun b!1344621 () Bool)

(declare-fun res!606080 () Bool)

(declare-fun e!861162 () Bool)

(assert (=> b!1344621 (=> res!606080 e!861162)))

(assert (=> b!1344621 (= res!606080 (not ((_ is IntegerValue!7427) (value!77605 t1!34))))))

(declare-fun e!861163 () Bool)

(assert (=> b!1344621 (= e!861163 e!861162)))

(declare-fun b!1344622 () Bool)

(declare-fun e!861164 () Bool)

(assert (=> b!1344622 (= e!861164 (inv!16 (value!77605 t1!34)))))

(declare-fun b!1344624 () Bool)

(assert (=> b!1344624 (= e!861163 (inv!17 (value!77605 t1!34)))))

(declare-fun b!1344625 () Bool)

(assert (=> b!1344625 (= e!861162 (inv!15 (value!77605 t1!34)))))

(declare-fun d!379279 () Bool)

(declare-fun c!220146 () Bool)

(assert (=> d!379279 (= c!220146 ((_ is IntegerValue!7425) (value!77605 t1!34)))))

(assert (=> d!379279 (= (inv!21 (value!77605 t1!34)) e!861164)))

(declare-fun b!1344623 () Bool)

(assert (=> b!1344623 (= e!861164 e!861163)))

(declare-fun c!220147 () Bool)

(assert (=> b!1344623 (= c!220147 ((_ is IntegerValue!7426) (value!77605 t1!34)))))

(assert (= (and d!379279 c!220146) b!1344622))

(assert (= (and d!379279 (not c!220146)) b!1344623))

(assert (= (and b!1344623 c!220147) b!1344624))

(assert (= (and b!1344623 (not c!220147)) b!1344621))

(assert (= (and b!1344621 (not res!606080)) b!1344625))

(declare-fun m!1503363 () Bool)

(assert (=> b!1344622 m!1503363))

(declare-fun m!1503365 () Bool)

(assert (=> b!1344624 m!1503365))

(declare-fun m!1503367 () Bool)

(assert (=> b!1344625 m!1503367))

(assert (=> b!1344372 d!379279))

(declare-fun d!379281 () Bool)

(declare-fun res!606085 () Bool)

(declare-fun e!861169 () Bool)

(assert (=> d!379281 (=> res!606085 e!861169)))

(assert (=> d!379281 (= res!606085 (not ((_ is Cons!13758) rules!2550)))))

(assert (=> d!379281 (= (sepAndNonSepRulesDisjointChars!758 rules!2550 rules!2550) e!861169)))

(declare-fun b!1344630 () Bool)

(declare-fun e!861170 () Bool)

(assert (=> b!1344630 (= e!861169 e!861170)))

(declare-fun res!606086 () Bool)

(assert (=> b!1344630 (=> (not res!606086) (not e!861170))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!350 (Rule!4570 List!13824) Bool)

(assert (=> b!1344630 (= res!606086 (ruleDisjointCharsFromAllFromOtherType!350 (h!19159 rules!2550) rules!2550))))

(declare-fun b!1344631 () Bool)

(assert (=> b!1344631 (= e!861170 (sepAndNonSepRulesDisjointChars!758 rules!2550 (t!119693 rules!2550)))))

(assert (= (and d!379281 (not res!606085)) b!1344630))

(assert (= (and b!1344630 res!606086) b!1344631))

(declare-fun m!1503369 () Bool)

(assert (=> b!1344630 m!1503369))

(declare-fun m!1503371 () Bool)

(assert (=> b!1344631 m!1503371))

(assert (=> b!1344351 d!379281))

(declare-fun d!379283 () Bool)

(declare-fun lt!444810 () Bool)

(declare-fun content!1960 (List!13823) (InoxSet C!7688))

(assert (=> d!379283 (= lt!444810 (select (content!1960 lt!444720) lt!444718))))

(declare-fun e!861176 () Bool)

(assert (=> d!379283 (= lt!444810 e!861176)))

(declare-fun res!606091 () Bool)

(assert (=> d!379283 (=> (not res!606091) (not e!861176))))

(assert (=> d!379283 (= res!606091 ((_ is Cons!13757) lt!444720))))

(assert (=> d!379283 (= (contains!2522 lt!444720 lt!444718) lt!444810)))

(declare-fun b!1344636 () Bool)

(declare-fun e!861175 () Bool)

(assert (=> b!1344636 (= e!861176 e!861175)))

(declare-fun res!606092 () Bool)

(assert (=> b!1344636 (=> res!606092 e!861175)))

(assert (=> b!1344636 (= res!606092 (= (h!19158 lt!444720) lt!444718))))

(declare-fun b!1344637 () Bool)

(assert (=> b!1344637 (= e!861175 (contains!2522 (t!119692 lt!444720) lt!444718))))

(assert (= (and d!379283 res!606091) b!1344636))

(assert (= (and b!1344636 (not res!606092)) b!1344637))

(declare-fun m!1503373 () Bool)

(assert (=> d!379283 m!1503373))

(declare-fun m!1503375 () Bool)

(assert (=> d!379283 m!1503375))

(declare-fun m!1503377 () Bool)

(assert (=> b!1344637 m!1503377))

(assert (=> b!1344373 d!379283))

(declare-fun d!379285 () Bool)

(declare-fun lt!444812 () Bool)

(declare-fun e!861177 () Bool)

(assert (=> d!379285 (= lt!444812 e!861177)))

(declare-fun res!606095 () Bool)

(assert (=> d!379285 (=> (not res!606095) (not e!861177))))

(assert (=> d!379285 (= res!606095 (= (list!5246 (_1!7547 (lex!907 thiss!19762 rules!2550 (print!846 thiss!19762 (singletonSeq!996 t2!34))))) (list!5246 (singletonSeq!996 t2!34))))))

(declare-fun e!861178 () Bool)

(assert (=> d!379285 (= lt!444812 e!861178)))

(declare-fun res!606094 () Bool)

(assert (=> d!379285 (=> (not res!606094) (not e!861178))))

(declare-fun lt!444811 () tuple2!13322)

(assert (=> d!379285 (= res!606094 (= (size!11226 (_1!7547 lt!444811)) 1))))

(assert (=> d!379285 (= lt!444811 (lex!907 thiss!19762 rules!2550 (print!846 thiss!19762 (singletonSeq!996 t2!34))))))

(assert (=> d!379285 (not (isEmpty!8206 rules!2550))))

(assert (=> d!379285 (= (rulesProduceIndividualToken!1049 thiss!19762 rules!2550 t2!34) lt!444812)))

(declare-fun b!1344638 () Bool)

(declare-fun res!606093 () Bool)

(assert (=> b!1344638 (=> (not res!606093) (not e!861178))))

(assert (=> b!1344638 (= res!606093 (= (apply!3272 (_1!7547 lt!444811) 0) t2!34))))

(declare-fun b!1344639 () Bool)

(assert (=> b!1344639 (= e!861178 (isEmpty!8207 (_2!7547 lt!444811)))))

(declare-fun b!1344640 () Bool)

(assert (=> b!1344640 (= e!861177 (isEmpty!8207 (_2!7547 (lex!907 thiss!19762 rules!2550 (print!846 thiss!19762 (singletonSeq!996 t2!34))))))))

(assert (= (and d!379285 res!606094) b!1344638))

(assert (= (and b!1344638 res!606093) b!1344639))

(assert (= (and d!379285 res!606095) b!1344640))

(declare-fun m!1503379 () Bool)

(assert (=> d!379285 m!1503379))

(declare-fun m!1503381 () Bool)

(assert (=> d!379285 m!1503381))

(assert (=> d!379285 m!1503379))

(declare-fun m!1503383 () Bool)

(assert (=> d!379285 m!1503383))

(assert (=> d!379285 m!1503383))

(declare-fun m!1503385 () Bool)

(assert (=> d!379285 m!1503385))

(assert (=> d!379285 m!1502991))

(declare-fun m!1503387 () Bool)

(assert (=> d!379285 m!1503387))

(declare-fun m!1503389 () Bool)

(assert (=> d!379285 m!1503389))

(assert (=> d!379285 m!1503379))

(declare-fun m!1503391 () Bool)

(assert (=> b!1344638 m!1503391))

(declare-fun m!1503393 () Bool)

(assert (=> b!1344639 m!1503393))

(assert (=> b!1344640 m!1503379))

(assert (=> b!1344640 m!1503379))

(assert (=> b!1344640 m!1503383))

(assert (=> b!1344640 m!1503383))

(assert (=> b!1344640 m!1503385))

(declare-fun m!1503395 () Bool)

(assert (=> b!1344640 m!1503395))

(assert (=> b!1344352 d!379285))

(declare-fun d!379287 () Bool)

(declare-fun lt!444815 () Int)

(declare-fun size!11227 (List!13823) Int)

(assert (=> d!379287 (= lt!444815 (size!11227 (list!5247 lt!444715)))))

(declare-fun size!11228 (Conc!4532) Int)

(assert (=> d!379287 (= lt!444815 (size!11228 (c!220090 lt!444715)))))

(assert (=> d!379287 (= (size!11218 lt!444715) lt!444815)))

(declare-fun bs!332546 () Bool)

(assert (= bs!332546 d!379287))

(declare-fun m!1503397 () Bool)

(assert (=> bs!332546 m!1503397))

(assert (=> bs!332546 m!1503397))

(declare-fun m!1503399 () Bool)

(assert (=> bs!332546 m!1503399))

(declare-fun m!1503401 () Bool)

(assert (=> bs!332546 m!1503401))

(assert (=> b!1344374 d!379287))

(declare-fun d!379289 () Bool)

(declare-fun lt!444818 () BalanceConc!9004)

(assert (=> d!379289 (= (list!5247 lt!444818) (originalCharacters!3247 t2!34))))

(declare-fun dynLambda!6088 (Int TokenValue!2475) BalanceConc!9004)

(assert (=> d!379289 (= lt!444818 (dynLambda!6088 (toChars!3487 (transformation!2385 (rule!4130 t2!34))) (value!77605 t2!34)))))

(assert (=> d!379289 (= (charsOf!1357 t2!34) lt!444818)))

(declare-fun b_lambda!39885 () Bool)

(assert (=> (not b_lambda!39885) (not d!379289)))

(declare-fun t!119711 () Bool)

(declare-fun tb!70733 () Bool)

(assert (=> (and b!1344360 (= (toChars!3487 (transformation!2385 (h!19159 rules!2550))) (toChars!3487 (transformation!2385 (rule!4130 t2!34)))) t!119711) tb!70733))

(declare-fun b!1344645 () Bool)

(declare-fun e!861181 () Bool)

(declare-fun tp!389211 () Bool)

(declare-fun inv!18094 (Conc!4532) Bool)

(assert (=> b!1344645 (= e!861181 (and (inv!18094 (c!220090 (dynLambda!6088 (toChars!3487 (transformation!2385 (rule!4130 t2!34))) (value!77605 t2!34)))) tp!389211))))

(declare-fun result!86000 () Bool)

(declare-fun inv!18095 (BalanceConc!9004) Bool)

(assert (=> tb!70733 (= result!86000 (and (inv!18095 (dynLambda!6088 (toChars!3487 (transformation!2385 (rule!4130 t2!34))) (value!77605 t2!34))) e!861181))))

(assert (= tb!70733 b!1344645))

(declare-fun m!1503403 () Bool)

(assert (=> b!1344645 m!1503403))

(declare-fun m!1503405 () Bool)

(assert (=> tb!70733 m!1503405))

(assert (=> d!379289 t!119711))

(declare-fun b_and!90103 () Bool)

(assert (= b_and!90069 (and (=> t!119711 result!86000) b_and!90103)))

(declare-fun tb!70735 () Bool)

(declare-fun t!119713 () Bool)

(assert (=> (and b!1344348 (= (toChars!3487 (transformation!2385 (rule!4130 t1!34))) (toChars!3487 (transformation!2385 (rule!4130 t2!34)))) t!119713) tb!70735))

(declare-fun result!86004 () Bool)

(assert (= result!86004 result!86000))

(assert (=> d!379289 t!119713))

(declare-fun b_and!90105 () Bool)

(assert (= b_and!90073 (and (=> t!119713 result!86004) b_and!90105)))

(declare-fun t!119715 () Bool)

(declare-fun tb!70737 () Bool)

(assert (=> (and b!1344369 (= (toChars!3487 (transformation!2385 (rule!4130 t2!34))) (toChars!3487 (transformation!2385 (rule!4130 t2!34)))) t!119715) tb!70737))

(declare-fun result!86006 () Bool)

(assert (= result!86006 result!86000))

(assert (=> d!379289 t!119715))

(declare-fun b_and!90107 () Bool)

(assert (= b_and!90077 (and (=> t!119715 result!86006) b_and!90107)))

(declare-fun m!1503407 () Bool)

(assert (=> d!379289 m!1503407))

(declare-fun m!1503409 () Bool)

(assert (=> d!379289 m!1503409))

(assert (=> b!1344374 d!379289))

(declare-fun d!379291 () Bool)

(declare-fun prefixMatchZipperSequence!225 (Regex!3699 BalanceConc!9004) Bool)

(declare-fun ++!3527 (BalanceConc!9004 BalanceConc!9004) BalanceConc!9004)

(declare-fun singletonSeq!997 (C!7688) BalanceConc!9004)

(assert (=> d!379291 (= (separableTokensPredicate!363 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!225 (rulesRegex!268 thiss!19762 rules!2550) (++!3527 (charsOf!1357 t1!34) (singletonSeq!997 (apply!3269 (charsOf!1357 t2!34) 0))))))))

(declare-fun bs!332547 () Bool)

(assert (= bs!332547 d!379291))

(assert (=> bs!332547 m!1503073))

(declare-fun m!1503411 () Bool)

(assert (=> bs!332547 m!1503411))

(declare-fun m!1503413 () Bool)

(assert (=> bs!332547 m!1503413))

(assert (=> bs!332547 m!1503031))

(declare-fun m!1503415 () Bool)

(assert (=> bs!332547 m!1503415))

(assert (=> bs!332547 m!1503077))

(assert (=> bs!332547 m!1503413))

(declare-fun m!1503417 () Bool)

(assert (=> bs!332547 m!1503417))

(assert (=> bs!332547 m!1503077))

(assert (=> bs!332547 m!1503031))

(assert (=> bs!332547 m!1503415))

(assert (=> bs!332547 m!1503411))

(assert (=> bs!332547 m!1503073))

(assert (=> b!1344353 d!379291))

(declare-fun bs!332548 () Bool)

(declare-fun d!379293 () Bool)

(assert (= bs!332548 (and d!379293 b!1344375)))

(declare-fun lambda!56620 () Int)

(assert (=> bs!332548 (not (= lambda!56620 lambda!56592))))

(declare-fun lambda!56621 () Int)

(assert (=> bs!332548 (= lambda!56621 lambda!56592)))

(declare-fun bs!332549 () Bool)

(assert (= bs!332549 d!379293))

(assert (=> bs!332549 (not (= lambda!56621 lambda!56620))))

(assert (=> d!379293 true))

(assert (=> d!379293 (= (matchR!1692 lt!444724 lt!444720) (exists!429 lt!444719 lambda!56621))))

(declare-fun lt!444821 () Unit!19861)

(declare-fun choose!8259 (Regex!3699 List!13826 List!13823) Unit!19861)

(assert (=> d!379293 (= lt!444821 (choose!8259 lt!444724 lt!444719 lt!444720))))

(declare-fun forall!3353 (List!13826 Int) Bool)

(assert (=> d!379293 (forall!3353 lt!444719 lambda!56620)))

(assert (=> d!379293 (= (matchRGenUnionSpec!116 lt!444724 lt!444719 lt!444720) lt!444821)))

(assert (=> bs!332549 m!1503033))

(declare-fun m!1503419 () Bool)

(assert (=> bs!332549 m!1503419))

(declare-fun m!1503421 () Bool)

(assert (=> bs!332549 m!1503421))

(declare-fun m!1503423 () Bool)

(assert (=> bs!332549 m!1503423))

(assert (=> b!1344375 d!379293))

(declare-fun bs!332550 () Bool)

(declare-fun d!379295 () Bool)

(assert (= bs!332550 (and d!379295 b!1344375)))

(declare-fun lambda!56624 () Int)

(assert (=> bs!332550 (not (= lambda!56624 lambda!56592))))

(declare-fun bs!332551 () Bool)

(assert (= bs!332551 (and d!379295 d!379293)))

(assert (=> bs!332551 (not (= lambda!56624 lambda!56620))))

(assert (=> bs!332551 (not (= lambda!56624 lambda!56621))))

(assert (=> d!379295 true))

(declare-fun order!8245 () Int)

(declare-fun dynLambda!6090 (Int Int) Int)

(assert (=> d!379295 (< (dynLambda!6090 order!8245 lambda!56592) (dynLambda!6090 order!8245 lambda!56624))))

(assert (=> d!379295 (= (exists!429 (map!3038 rules!2550 lambda!56591) lambda!56592) (not (forall!3353 (map!3038 rules!2550 lambda!56591) lambda!56624)))))

(declare-fun bs!332552 () Bool)

(assert (= bs!332552 d!379295))

(assert (=> bs!332552 m!1503019))

(declare-fun m!1503425 () Bool)

(assert (=> bs!332552 m!1503425))

(assert (=> b!1344375 d!379295))

(declare-fun bs!332553 () Bool)

(declare-fun d!379297 () Bool)

(assert (= bs!332553 (and d!379297 b!1344375)))

(declare-fun lambda!56625 () Int)

(assert (=> bs!332553 (not (= lambda!56625 lambda!56592))))

(declare-fun bs!332554 () Bool)

(assert (= bs!332554 (and d!379297 d!379293)))

(assert (=> bs!332554 (not (= lambda!56625 lambda!56620))))

(assert (=> bs!332554 (not (= lambda!56625 lambda!56621))))

(declare-fun bs!332555 () Bool)

(assert (= bs!332555 (and d!379297 d!379295)))

(assert (=> bs!332555 (= lambda!56625 lambda!56624)))

(assert (=> d!379297 true))

(assert (=> d!379297 (< (dynLambda!6090 order!8245 lambda!56592) (dynLambda!6090 order!8245 lambda!56625))))

(assert (=> d!379297 (= (exists!429 lt!444719 lambda!56592) (not (forall!3353 lt!444719 lambda!56625)))))

(declare-fun bs!332556 () Bool)

(assert (= bs!332556 d!379297))

(declare-fun m!1503427 () Bool)

(assert (=> bs!332556 m!1503427))

(assert (=> b!1344375 d!379297))

(assert (=> b!1344375 d!379205))

(declare-fun bs!332557 () Bool)

(declare-fun d!379299 () Bool)

(assert (= bs!332557 (and d!379299 b!1344365)))

(declare-fun lambda!56628 () Int)

(assert (=> bs!332557 (not (= lambda!56628 lambda!56593))))

(assert (=> d!379299 true))

(declare-fun order!8247 () Int)

(declare-fun dynLambda!6091 (Int Int) Int)

(assert (=> d!379299 (< (dynLambda!6091 order!8247 lambda!56593) (dynLambda!6091 order!8247 lambda!56628))))

(declare-fun forall!3354 (List!13824 Int) Bool)

(assert (=> d!379299 (= (exists!428 rules!2550 lambda!56593) (not (forall!3354 rules!2550 lambda!56628)))))

(declare-fun bs!332558 () Bool)

(assert (= bs!332558 d!379299))

(declare-fun m!1503429 () Bool)

(assert (=> bs!332558 m!1503429))

(assert (=> b!1344365 d!379299))

(declare-fun bs!332559 () Bool)

(declare-fun d!379301 () Bool)

(assert (= bs!332559 (and d!379301 b!1344365)))

(declare-fun lambda!56631 () Int)

(assert (=> bs!332559 (not (= lambda!56631 lambda!56593))))

(declare-fun bs!332560 () Bool)

(assert (= bs!332560 (and d!379301 d!379299)))

(assert (=> bs!332560 (not (= lambda!56631 lambda!56628))))

(assert (=> d!379301 true))

(assert (=> d!379301 true))

(declare-fun order!8249 () Int)

(declare-fun dynLambda!6092 (Int Int) Int)

(assert (=> d!379301 (< (dynLambda!6092 order!8249 lambda!56591) (dynLambda!6091 order!8247 lambda!56631))))

(assert (=> d!379301 (exists!428 rules!2550 lambda!56631)))

(declare-fun lt!444824 () Unit!19861)

(declare-fun choose!8260 (List!13824 Int Regex!3699) Unit!19861)

(assert (=> d!379301 (= lt!444824 (choose!8260 rules!2550 lambda!56591 lt!444723))))

(assert (=> d!379301 (contains!2523 (map!3038 rules!2550 lambda!56591) lt!444723)))

(assert (=> d!379301 (= (lemmaMapContains!104 rules!2550 lambda!56591 lt!444723) lt!444824)))

(declare-fun bs!332561 () Bool)

(assert (= bs!332561 d!379301))

(declare-fun m!1503431 () Bool)

(assert (=> bs!332561 m!1503431))

(declare-fun m!1503433 () Bool)

(assert (=> bs!332561 m!1503433))

(assert (=> bs!332561 m!1503019))

(assert (=> bs!332561 m!1503019))

(assert (=> bs!332561 m!1503067))

(assert (=> b!1344365 d!379301))

(declare-fun d!379303 () Bool)

(declare-fun lt!444825 () Bool)

(assert (=> d!379303 (= lt!444825 (select (content!1960 lt!444728) lt!444718))))

(declare-fun e!861185 () Bool)

(assert (=> d!379303 (= lt!444825 e!861185)))

(declare-fun res!606098 () Bool)

(assert (=> d!379303 (=> (not res!606098) (not e!861185))))

(assert (=> d!379303 (= res!606098 ((_ is Cons!13757) lt!444728))))

(assert (=> d!379303 (= (contains!2522 lt!444728 lt!444718) lt!444825)))

(declare-fun b!1344656 () Bool)

(declare-fun e!861184 () Bool)

(assert (=> b!1344656 (= e!861185 e!861184)))

(declare-fun res!606099 () Bool)

(assert (=> b!1344656 (=> res!606099 e!861184)))

(assert (=> b!1344656 (= res!606099 (= (h!19158 lt!444728) lt!444718))))

(declare-fun b!1344657 () Bool)

(assert (=> b!1344657 (= e!861184 (contains!2522 (t!119692 lt!444728) lt!444718))))

(assert (= (and d!379303 res!606098) b!1344656))

(assert (= (and b!1344656 (not res!606099)) b!1344657))

(declare-fun m!1503435 () Bool)

(assert (=> d!379303 m!1503435))

(declare-fun m!1503437 () Bool)

(assert (=> d!379303 m!1503437))

(declare-fun m!1503439 () Bool)

(assert (=> b!1344657 m!1503439))

(assert (=> b!1344366 d!379303))

(declare-fun d!379305 () Bool)

(declare-fun lt!444826 () Bool)

(assert (=> d!379305 (= lt!444826 (select (content!1960 lt!444720) lt!444722))))

(declare-fun e!861187 () Bool)

(assert (=> d!379305 (= lt!444826 e!861187)))

(declare-fun res!606100 () Bool)

(assert (=> d!379305 (=> (not res!606100) (not e!861187))))

(assert (=> d!379305 (= res!606100 ((_ is Cons!13757) lt!444720))))

(assert (=> d!379305 (= (contains!2522 lt!444720 lt!444722) lt!444826)))

(declare-fun b!1344658 () Bool)

(declare-fun e!861186 () Bool)

(assert (=> b!1344658 (= e!861187 e!861186)))

(declare-fun res!606101 () Bool)

(assert (=> b!1344658 (=> res!606101 e!861186)))

(assert (=> b!1344658 (= res!606101 (= (h!19158 lt!444720) lt!444722))))

(declare-fun b!1344659 () Bool)

(assert (=> b!1344659 (= e!861186 (contains!2522 (t!119692 lt!444720) lt!444722))))

(assert (= (and d!379305 res!606100) b!1344658))

(assert (= (and b!1344658 (not res!606101)) b!1344659))

(assert (=> d!379305 m!1503373))

(declare-fun m!1503441 () Bool)

(assert (=> d!379305 m!1503441))

(declare-fun m!1503443 () Bool)

(assert (=> b!1344659 m!1503443))

(assert (=> b!1344367 d!379305))

(declare-fun d!379307 () Bool)

(assert (=> d!379307 (= (inv!18087 (tag!2647 (rule!4130 t1!34))) (= (mod (str.len (value!77604 (tag!2647 (rule!4130 t1!34)))) 2) 0))))

(assert (=> b!1344368 d!379307))

(declare-fun d!379309 () Bool)

(declare-fun res!606102 () Bool)

(declare-fun e!861188 () Bool)

(assert (=> d!379309 (=> (not res!606102) (not e!861188))))

(assert (=> d!379309 (= res!606102 (semiInverseModEq!908 (toChars!3487 (transformation!2385 (rule!4130 t1!34))) (toValue!3628 (transformation!2385 (rule!4130 t1!34)))))))

(assert (=> d!379309 (= (inv!18090 (transformation!2385 (rule!4130 t1!34))) e!861188)))

(declare-fun b!1344660 () Bool)

(assert (=> b!1344660 (= e!861188 (equivClasses!867 (toChars!3487 (transformation!2385 (rule!4130 t1!34))) (toValue!3628 (transformation!2385 (rule!4130 t1!34)))))))

(assert (= (and d!379309 res!606102) b!1344660))

(declare-fun m!1503445 () Bool)

(assert (=> d!379309 m!1503445))

(declare-fun m!1503447 () Bool)

(assert (=> b!1344660 m!1503447))

(assert (=> b!1344368 d!379309))

(declare-fun d!379311 () Bool)

(declare-fun lt!444829 () Bool)

(declare-fun isEmpty!8211 (List!13823) Bool)

(assert (=> d!379311 (= lt!444829 (isEmpty!8211 (list!5247 (_2!7547 lt!444727))))))

(declare-fun isEmpty!8212 (Conc!4532) Bool)

(assert (=> d!379311 (= lt!444829 (isEmpty!8212 (c!220090 (_2!7547 lt!444727))))))

(assert (=> d!379311 (= (isEmpty!8207 (_2!7547 lt!444727)) lt!444829)))

(declare-fun bs!332562 () Bool)

(assert (= bs!332562 d!379311))

(declare-fun m!1503449 () Bool)

(assert (=> bs!332562 m!1503449))

(assert (=> bs!332562 m!1503449))

(declare-fun m!1503451 () Bool)

(assert (=> bs!332562 m!1503451))

(declare-fun m!1503453 () Bool)

(assert (=> bs!332562 m!1503453))

(assert (=> b!1344361 d!379311))

(declare-fun d!379313 () Bool)

(declare-fun lt!444832 () C!7688)

(declare-fun apply!3274 (List!13823 Int) C!7688)

(assert (=> d!379313 (= lt!444832 (apply!3274 (list!5247 lt!444715) 0))))

(declare-fun apply!3275 (Conc!4532 Int) C!7688)

(assert (=> d!379313 (= lt!444832 (apply!3275 (c!220090 lt!444715) 0))))

(declare-fun e!861191 () Bool)

(assert (=> d!379313 e!861191))

(declare-fun res!606105 () Bool)

(assert (=> d!379313 (=> (not res!606105) (not e!861191))))

(assert (=> d!379313 (= res!606105 (<= 0 0))))

(assert (=> d!379313 (= (apply!3269 lt!444715 0) lt!444832)))

(declare-fun b!1344663 () Bool)

(assert (=> b!1344663 (= e!861191 (< 0 (size!11218 lt!444715)))))

(assert (= (and d!379313 res!606105) b!1344663))

(assert (=> d!379313 m!1503397))

(assert (=> d!379313 m!1503397))

(declare-fun m!1503455 () Bool)

(assert (=> d!379313 m!1503455))

(declare-fun m!1503457 () Bool)

(assert (=> d!379313 m!1503457))

(assert (=> b!1344663 m!1503029))

(assert (=> b!1344362 d!379313))

(declare-fun d!379315 () Bool)

(declare-fun list!5250 (Conc!4532) List!13823)

(assert (=> d!379315 (= (list!5247 lt!444716) (list!5250 (c!220090 lt!444716)))))

(declare-fun bs!332563 () Bool)

(assert (= bs!332563 d!379315))

(declare-fun m!1503459 () Bool)

(assert (=> bs!332563 m!1503459))

(assert (=> b!1344362 d!379315))

(declare-fun lt!444835 () List!13823)

(declare-fun b!1344675 () Bool)

(declare-fun e!861197 () Bool)

(assert (=> b!1344675 (= e!861197 (or (not (= (Cons!13757 lt!444718 Nil!13757) Nil!13757)) (= lt!444835 lt!444721)))))

(declare-fun b!1344672 () Bool)

(declare-fun e!861196 () List!13823)

(assert (=> b!1344672 (= e!861196 (Cons!13757 lt!444718 Nil!13757))))

(declare-fun b!1344674 () Bool)

(declare-fun res!606111 () Bool)

(assert (=> b!1344674 (=> (not res!606111) (not e!861197))))

(assert (=> b!1344674 (= res!606111 (= (size!11227 lt!444835) (+ (size!11227 lt!444721) (size!11227 (Cons!13757 lt!444718 Nil!13757)))))))

(declare-fun d!379317 () Bool)

(assert (=> d!379317 e!861197))

(declare-fun res!606110 () Bool)

(assert (=> d!379317 (=> (not res!606110) (not e!861197))))

(assert (=> d!379317 (= res!606110 (= (content!1960 lt!444835) ((_ map or) (content!1960 lt!444721) (content!1960 (Cons!13757 lt!444718 Nil!13757)))))))

(assert (=> d!379317 (= lt!444835 e!861196)))

(declare-fun c!220150 () Bool)

(assert (=> d!379317 (= c!220150 ((_ is Nil!13757) lt!444721))))

(assert (=> d!379317 (= (++!3526 lt!444721 (Cons!13757 lt!444718 Nil!13757)) lt!444835)))

(declare-fun b!1344673 () Bool)

(assert (=> b!1344673 (= e!861196 (Cons!13757 (h!19158 lt!444721) (++!3526 (t!119692 lt!444721) (Cons!13757 lt!444718 Nil!13757))))))

(assert (= (and d!379317 c!220150) b!1344672))

(assert (= (and d!379317 (not c!220150)) b!1344673))

(assert (= (and d!379317 res!606110) b!1344674))

(assert (= (and b!1344674 res!606111) b!1344675))

(declare-fun m!1503461 () Bool)

(assert (=> b!1344674 m!1503461))

(declare-fun m!1503463 () Bool)

(assert (=> b!1344674 m!1503463))

(declare-fun m!1503465 () Bool)

(assert (=> b!1344674 m!1503465))

(declare-fun m!1503467 () Bool)

(assert (=> d!379317 m!1503467))

(declare-fun m!1503469 () Bool)

(assert (=> d!379317 m!1503469))

(declare-fun m!1503471 () Bool)

(assert (=> d!379317 m!1503471))

(declare-fun m!1503473 () Bool)

(assert (=> b!1344673 m!1503473))

(assert (=> b!1344362 d!379317))

(declare-fun d!379319 () Bool)

(declare-fun lt!444836 () BalanceConc!9004)

(assert (=> d!379319 (= (list!5247 lt!444836) (originalCharacters!3247 t1!34))))

(assert (=> d!379319 (= lt!444836 (dynLambda!6088 (toChars!3487 (transformation!2385 (rule!4130 t1!34))) (value!77605 t1!34)))))

(assert (=> d!379319 (= (charsOf!1357 t1!34) lt!444836)))

(declare-fun b_lambda!39887 () Bool)

(assert (=> (not b_lambda!39887) (not d!379319)))

(declare-fun t!119717 () Bool)

(declare-fun tb!70739 () Bool)

(assert (=> (and b!1344360 (= (toChars!3487 (transformation!2385 (h!19159 rules!2550))) (toChars!3487 (transformation!2385 (rule!4130 t1!34)))) t!119717) tb!70739))

(declare-fun b!1344676 () Bool)

(declare-fun e!861198 () Bool)

(declare-fun tp!389212 () Bool)

(assert (=> b!1344676 (= e!861198 (and (inv!18094 (c!220090 (dynLambda!6088 (toChars!3487 (transformation!2385 (rule!4130 t1!34))) (value!77605 t1!34)))) tp!389212))))

(declare-fun result!86008 () Bool)

(assert (=> tb!70739 (= result!86008 (and (inv!18095 (dynLambda!6088 (toChars!3487 (transformation!2385 (rule!4130 t1!34))) (value!77605 t1!34))) e!861198))))

(assert (= tb!70739 b!1344676))

(declare-fun m!1503475 () Bool)

(assert (=> b!1344676 m!1503475))

(declare-fun m!1503477 () Bool)

(assert (=> tb!70739 m!1503477))

(assert (=> d!379319 t!119717))

(declare-fun b_and!90109 () Bool)

(assert (= b_and!90103 (and (=> t!119717 result!86008) b_and!90109)))

(declare-fun t!119719 () Bool)

(declare-fun tb!70741 () Bool)

(assert (=> (and b!1344348 (= (toChars!3487 (transformation!2385 (rule!4130 t1!34))) (toChars!3487 (transformation!2385 (rule!4130 t1!34)))) t!119719) tb!70741))

(declare-fun result!86010 () Bool)

(assert (= result!86010 result!86008))

(assert (=> d!379319 t!119719))

(declare-fun b_and!90111 () Bool)

(assert (= b_and!90105 (and (=> t!119719 result!86010) b_and!90111)))

(declare-fun t!119721 () Bool)

(declare-fun tb!70743 () Bool)

(assert (=> (and b!1344369 (= (toChars!3487 (transformation!2385 (rule!4130 t2!34))) (toChars!3487 (transformation!2385 (rule!4130 t1!34)))) t!119721) tb!70743))

(declare-fun result!86012 () Bool)

(assert (= result!86012 result!86008))

(assert (=> d!379319 t!119721))

(declare-fun b_and!90113 () Bool)

(assert (= b_and!90107 (and (=> t!119721 result!86012) b_and!90113)))

(declare-fun m!1503479 () Bool)

(assert (=> d!379319 m!1503479))

(declare-fun m!1503481 () Bool)

(assert (=> d!379319 m!1503481))

(assert (=> b!1344362 d!379319))

(declare-fun bs!332564 () Bool)

(declare-fun d!379321 () Bool)

(assert (= bs!332564 (and d!379321 b!1344375)))

(declare-fun lambda!56634 () Int)

(assert (=> bs!332564 (= lambda!56634 lambda!56591)))

(declare-fun lt!444843 () Unit!19861)

(declare-fun lemma!107 (List!13824 LexerInterface!2080 List!13824) Unit!19861)

(assert (=> d!379321 (= lt!444843 (lemma!107 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!115 (List!13826) Regex!3699)

(assert (=> d!379321 (= (rulesRegex!268 thiss!19762 rules!2550) (generalisedUnion!115 (map!3038 rules!2550 lambda!56634)))))

(declare-fun bs!332565 () Bool)

(assert (= bs!332565 d!379321))

(declare-fun m!1503483 () Bool)

(assert (=> bs!332565 m!1503483))

(declare-fun m!1503485 () Bool)

(assert (=> bs!332565 m!1503485))

(assert (=> bs!332565 m!1503485))

(declare-fun m!1503487 () Bool)

(assert (=> bs!332565 m!1503487))

(assert (=> b!1344362 d!379321))

(declare-fun d!379323 () Bool)

(declare-fun c!220153 () Bool)

(assert (=> d!379323 (= c!220153 (isEmpty!8211 lt!444728))))

(declare-fun e!861207 () Bool)

(assert (=> d!379323 (= (prefixMatch!208 lt!444724 lt!444728) e!861207)))

(declare-fun b!1344690 () Bool)

(declare-fun lostCause!313 (Regex!3699) Bool)

(assert (=> b!1344690 (= e!861207 (not (lostCause!313 lt!444724)))))

(declare-fun b!1344691 () Bool)

(declare-fun derivativeStep!937 (Regex!3699 C!7688) Regex!3699)

(declare-fun head!2398 (List!13823) C!7688)

(declare-fun tail!1938 (List!13823) List!13823)

(assert (=> b!1344691 (= e!861207 (prefixMatch!208 (derivativeStep!937 lt!444724 (head!2398 lt!444728)) (tail!1938 lt!444728)))))

(assert (= (and d!379323 c!220153) b!1344690))

(assert (= (and d!379323 (not c!220153)) b!1344691))

(declare-fun m!1503507 () Bool)

(assert (=> d!379323 m!1503507))

(declare-fun m!1503509 () Bool)

(assert (=> b!1344690 m!1503509))

(declare-fun m!1503511 () Bool)

(assert (=> b!1344691 m!1503511))

(assert (=> b!1344691 m!1503511))

(declare-fun m!1503513 () Bool)

(assert (=> b!1344691 m!1503513))

(declare-fun m!1503515 () Bool)

(assert (=> b!1344691 m!1503515))

(assert (=> b!1344691 m!1503513))

(assert (=> b!1344691 m!1503515))

(declare-fun m!1503517 () Bool)

(assert (=> b!1344691 m!1503517))

(assert (=> b!1344362 d!379323))

(declare-fun d!379327 () Bool)

(assert (=> d!379327 (= (inv!18087 (tag!2647 (rule!4130 t2!34))) (= (mod (str.len (value!77604 (tag!2647 (rule!4130 t2!34)))) 2) 0))))

(assert (=> b!1344363 d!379327))

(declare-fun d!379329 () Bool)

(declare-fun res!606123 () Bool)

(declare-fun e!861210 () Bool)

(assert (=> d!379329 (=> (not res!606123) (not e!861210))))

(assert (=> d!379329 (= res!606123 (semiInverseModEq!908 (toChars!3487 (transformation!2385 (rule!4130 t2!34))) (toValue!3628 (transformation!2385 (rule!4130 t2!34)))))))

(assert (=> d!379329 (= (inv!18090 (transformation!2385 (rule!4130 t2!34))) e!861210)))

(declare-fun b!1344694 () Bool)

(assert (=> b!1344694 (= e!861210 (equivClasses!867 (toChars!3487 (transformation!2385 (rule!4130 t2!34))) (toValue!3628 (transformation!2385 (rule!4130 t2!34)))))))

(assert (= (and d!379329 res!606123) b!1344694))

(declare-fun m!1503523 () Bool)

(assert (=> d!379329 m!1503523))

(declare-fun m!1503525 () Bool)

(assert (=> b!1344694 m!1503525))

(assert (=> b!1344363 d!379329))

(declare-fun b!1344698 () Bool)

(declare-fun lt!444847 () List!13823)

(declare-fun e!861212 () Bool)

(assert (=> b!1344698 (= e!861212 (or (not (= (getSuffix!547 lt!444720 lt!444728) Nil!13757)) (= lt!444847 lt!444728)))))

(declare-fun b!1344695 () Bool)

(declare-fun e!861211 () List!13823)

(assert (=> b!1344695 (= e!861211 (getSuffix!547 lt!444720 lt!444728))))

(declare-fun b!1344697 () Bool)

(declare-fun res!606125 () Bool)

(assert (=> b!1344697 (=> (not res!606125) (not e!861212))))

(assert (=> b!1344697 (= res!606125 (= (size!11227 lt!444847) (+ (size!11227 lt!444728) (size!11227 (getSuffix!547 lt!444720 lt!444728)))))))

(declare-fun d!379333 () Bool)

(assert (=> d!379333 e!861212))

(declare-fun res!606124 () Bool)

(assert (=> d!379333 (=> (not res!606124) (not e!861212))))

(assert (=> d!379333 (= res!606124 (= (content!1960 lt!444847) ((_ map or) (content!1960 lt!444728) (content!1960 (getSuffix!547 lt!444720 lt!444728)))))))

(assert (=> d!379333 (= lt!444847 e!861211)))

(declare-fun c!220154 () Bool)

(assert (=> d!379333 (= c!220154 ((_ is Nil!13757) lt!444728))))

(assert (=> d!379333 (= (++!3526 lt!444728 (getSuffix!547 lt!444720 lt!444728)) lt!444847)))

(declare-fun b!1344696 () Bool)

(assert (=> b!1344696 (= e!861211 (Cons!13757 (h!19158 lt!444728) (++!3526 (t!119692 lt!444728) (getSuffix!547 lt!444720 lt!444728))))))

(assert (= (and d!379333 c!220154) b!1344695))

(assert (= (and d!379333 (not c!220154)) b!1344696))

(assert (= (and d!379333 res!606124) b!1344697))

(assert (= (and b!1344697 res!606125) b!1344698))

(declare-fun m!1503527 () Bool)

(assert (=> b!1344697 m!1503527))

(declare-fun m!1503529 () Bool)

(assert (=> b!1344697 m!1503529))

(assert (=> b!1344697 m!1502985))

(declare-fun m!1503531 () Bool)

(assert (=> b!1344697 m!1503531))

(declare-fun m!1503533 () Bool)

(assert (=> d!379333 m!1503533))

(assert (=> d!379333 m!1503435))

(assert (=> d!379333 m!1502985))

(declare-fun m!1503535 () Bool)

(assert (=> d!379333 m!1503535))

(assert (=> b!1344696 m!1502985))

(declare-fun m!1503537 () Bool)

(assert (=> b!1344696 m!1503537))

(assert (=> b!1344364 d!379333))

(declare-fun d!379335 () Bool)

(declare-fun lt!444853 () List!13823)

(assert (=> d!379335 (= (++!3526 lt!444728 lt!444853) lt!444720)))

(declare-fun e!861221 () List!13823)

(assert (=> d!379335 (= lt!444853 e!861221)))

(declare-fun c!220157 () Bool)

(assert (=> d!379335 (= c!220157 ((_ is Cons!13757) lt!444728))))

(assert (=> d!379335 (>= (size!11227 lt!444720) (size!11227 lt!444728))))

(assert (=> d!379335 (= (getSuffix!547 lt!444720 lt!444728) lt!444853)))

(declare-fun b!1344709 () Bool)

(assert (=> b!1344709 (= e!861221 (getSuffix!547 (tail!1938 lt!444720) (t!119692 lt!444728)))))

(declare-fun b!1344710 () Bool)

(assert (=> b!1344710 (= e!861221 lt!444720)))

(assert (= (and d!379335 c!220157) b!1344709))

(assert (= (and d!379335 (not c!220157)) b!1344710))

(declare-fun m!1503545 () Bool)

(assert (=> d!379335 m!1503545))

(declare-fun m!1503547 () Bool)

(assert (=> d!379335 m!1503547))

(assert (=> d!379335 m!1503529))

(declare-fun m!1503549 () Bool)

(assert (=> b!1344709 m!1503549))

(assert (=> b!1344709 m!1503549))

(declare-fun m!1503551 () Bool)

(assert (=> b!1344709 m!1503551))

(assert (=> b!1344364 d!379335))

(declare-fun d!379339 () Bool)

(declare-fun lt!444856 () List!13823)

(declare-fun dynLambda!6093 (Int List!13823) Bool)

(assert (=> d!379339 (dynLambda!6093 lambda!56590 lt!444856)))

(declare-fun choose!8261 (Int) List!13823)

(assert (=> d!379339 (= lt!444856 (choose!8261 lambda!56590))))

(assert (=> d!379339 (Exists!851 lambda!56590)))

(assert (=> d!379339 (= (pickWitness!154 lambda!56590) lt!444856)))

(declare-fun b_lambda!39889 () Bool)

(assert (=> (not b_lambda!39889) (not d!379339)))

(declare-fun bs!332566 () Bool)

(assert (= bs!332566 d!379339))

(declare-fun m!1503553 () Bool)

(assert (=> bs!332566 m!1503553))

(declare-fun m!1503555 () Bool)

(assert (=> bs!332566 m!1503555))

(assert (=> bs!332566 m!1503047))

(assert (=> b!1344364 d!379339))

(declare-fun d!379341 () Bool)

(declare-fun res!606138 () Bool)

(declare-fun e!861232 () Bool)

(assert (=> d!379341 (=> (not res!606138) (not e!861232))))

(declare-fun rulesValid!877 (LexerInterface!2080 List!13824) Bool)

(assert (=> d!379341 (= res!606138 (rulesValid!877 thiss!19762 rules!2550))))

(assert (=> d!379341 (= (rulesInvariant!1950 thiss!19762 rules!2550) e!861232)))

(declare-fun b!1344725 () Bool)

(declare-datatypes ((List!13828 0))(
  ( (Nil!13762) (Cons!13762 (h!19163 String!16611) (t!119733 List!13828)) )
))
(declare-fun noDuplicateTag!877 (LexerInterface!2080 List!13824 List!13828) Bool)

(assert (=> b!1344725 (= e!861232 (noDuplicateTag!877 thiss!19762 rules!2550 Nil!13762))))

(assert (= (and d!379341 res!606138) b!1344725))

(declare-fun m!1503557 () Bool)

(assert (=> d!379341 m!1503557))

(declare-fun m!1503559 () Bool)

(assert (=> b!1344725 m!1503559))

(assert (=> b!1344376 d!379341))

(declare-fun b!1344769 () Bool)

(declare-fun e!861263 () Bool)

(declare-fun e!861259 () Bool)

(assert (=> b!1344769 (= e!861263 e!861259)))

(declare-fun res!606167 () Bool)

(assert (=> b!1344769 (=> (not res!606167) (not e!861259))))

(declare-fun lt!444867 () Bool)

(assert (=> b!1344769 (= res!606167 (not lt!444867))))

(declare-fun b!1344770 () Bool)

(declare-fun res!606164 () Bool)

(declare-fun e!861262 () Bool)

(assert (=> b!1344770 (=> res!606164 e!861262)))

(assert (=> b!1344770 (= res!606164 (not (isEmpty!8211 (tail!1938 lt!444720))))))

(declare-fun b!1344771 () Bool)

(assert (=> b!1344771 (= e!861262 (not (= (head!2398 lt!444720) (c!220091 lt!444724))))))

(declare-fun b!1344772 () Bool)

(declare-fun res!606166 () Bool)

(declare-fun e!861260 () Bool)

(assert (=> b!1344772 (=> (not res!606166) (not e!861260))))

(assert (=> b!1344772 (= res!606166 (isEmpty!8211 (tail!1938 lt!444720)))))

(declare-fun b!1344773 () Bool)

(assert (=> b!1344773 (= e!861260 (= (head!2398 lt!444720) (c!220091 lt!444724)))))

(declare-fun b!1344774 () Bool)

(declare-fun res!606165 () Bool)

(assert (=> b!1344774 (=> res!606165 e!861263)))

(assert (=> b!1344774 (= res!606165 e!861260)))

(declare-fun res!606163 () Bool)

(assert (=> b!1344774 (=> (not res!606163) (not e!861260))))

(assert (=> b!1344774 (= res!606163 lt!444867)))

(declare-fun d!379343 () Bool)

(declare-fun e!861261 () Bool)

(assert (=> d!379343 e!861261))

(declare-fun c!220174 () Bool)

(assert (=> d!379343 (= c!220174 ((_ is EmptyExpr!3699) lt!444724))))

(declare-fun e!861257 () Bool)

(assert (=> d!379343 (= lt!444867 e!861257)))

(declare-fun c!220172 () Bool)

(assert (=> d!379343 (= c!220172 (isEmpty!8211 lt!444720))))

(declare-fun validRegex!1599 (Regex!3699) Bool)

(assert (=> d!379343 (validRegex!1599 lt!444724)))

(assert (=> d!379343 (= (matchR!1692 lt!444724 lt!444720) lt!444867)))

(declare-fun b!1344775 () Bool)

(declare-fun e!861258 () Bool)

(assert (=> b!1344775 (= e!861258 (not lt!444867))))

(declare-fun b!1344776 () Bool)

(declare-fun res!606162 () Bool)

(assert (=> b!1344776 (=> (not res!606162) (not e!861260))))

(declare-fun call!90517 () Bool)

(assert (=> b!1344776 (= res!606162 (not call!90517))))

(declare-fun b!1344777 () Bool)

(assert (=> b!1344777 (= e!861257 (matchR!1692 (derivativeStep!937 lt!444724 (head!2398 lt!444720)) (tail!1938 lt!444720)))))

(declare-fun b!1344778 () Bool)

(assert (=> b!1344778 (= e!861259 e!861262)))

(declare-fun res!606169 () Bool)

(assert (=> b!1344778 (=> res!606169 e!861262)))

(assert (=> b!1344778 (= res!606169 call!90517)))

(declare-fun b!1344779 () Bool)

(assert (=> b!1344779 (= e!861261 e!861258)))

(declare-fun c!220173 () Bool)

(assert (=> b!1344779 (= c!220173 ((_ is EmptyLang!3699) lt!444724))))

(declare-fun b!1344780 () Bool)

(declare-fun res!606168 () Bool)

(assert (=> b!1344780 (=> res!606168 e!861263)))

(assert (=> b!1344780 (= res!606168 (not ((_ is ElementMatch!3699) lt!444724)))))

(assert (=> b!1344780 (= e!861258 e!861263)))

(declare-fun bm!90512 () Bool)

(assert (=> bm!90512 (= call!90517 (isEmpty!8211 lt!444720))))

(declare-fun b!1344781 () Bool)

(assert (=> b!1344781 (= e!861261 (= lt!444867 call!90517))))

(declare-fun b!1344782 () Bool)

(declare-fun nullable!1179 (Regex!3699) Bool)

(assert (=> b!1344782 (= e!861257 (nullable!1179 lt!444724))))

(assert (= (and d!379343 c!220172) b!1344782))

(assert (= (and d!379343 (not c!220172)) b!1344777))

(assert (= (and d!379343 c!220174) b!1344781))

(assert (= (and d!379343 (not c!220174)) b!1344779))

(assert (= (and b!1344779 c!220173) b!1344775))

(assert (= (and b!1344779 (not c!220173)) b!1344780))

(assert (= (and b!1344780 (not res!606168)) b!1344774))

(assert (= (and b!1344774 res!606163) b!1344776))

(assert (= (and b!1344776 res!606162) b!1344772))

(assert (= (and b!1344772 res!606166) b!1344773))

(assert (= (and b!1344774 (not res!606165)) b!1344769))

(assert (= (and b!1344769 res!606167) b!1344778))

(assert (= (and b!1344778 (not res!606169)) b!1344770))

(assert (= (and b!1344770 (not res!606164)) b!1344771))

(assert (= (or b!1344781 b!1344776 b!1344778) bm!90512))

(declare-fun m!1503591 () Bool)

(assert (=> bm!90512 m!1503591))

(assert (=> b!1344772 m!1503549))

(assert (=> b!1344772 m!1503549))

(declare-fun m!1503593 () Bool)

(assert (=> b!1344772 m!1503593))

(declare-fun m!1503595 () Bool)

(assert (=> b!1344771 m!1503595))

(assert (=> b!1344770 m!1503549))

(assert (=> b!1344770 m!1503549))

(assert (=> b!1344770 m!1503593))

(assert (=> b!1344773 m!1503595))

(assert (=> d!379343 m!1503591))

(declare-fun m!1503597 () Bool)

(assert (=> d!379343 m!1503597))

(assert (=> b!1344777 m!1503595))

(assert (=> b!1344777 m!1503595))

(declare-fun m!1503599 () Bool)

(assert (=> b!1344777 m!1503599))

(assert (=> b!1344777 m!1503549))

(assert (=> b!1344777 m!1503599))

(assert (=> b!1344777 m!1503549))

(declare-fun m!1503601 () Bool)

(assert (=> b!1344777 m!1503601))

(declare-fun m!1503603 () Bool)

(assert (=> b!1344782 m!1503603))

(assert (=> b!1344355 d!379343))

(declare-fun d!379355 () Bool)

(declare-fun res!606174 () Bool)

(declare-fun e!861266 () Bool)

(assert (=> d!379355 (=> (not res!606174) (not e!861266))))

(assert (=> d!379355 (= res!606174 (not (isEmpty!8211 (originalCharacters!3247 t1!34))))))

(assert (=> d!379355 (= (inv!18091 t1!34) e!861266)))

(declare-fun b!1344787 () Bool)

(declare-fun res!606175 () Bool)

(assert (=> b!1344787 (=> (not res!606175) (not e!861266))))

(assert (=> b!1344787 (= res!606175 (= (originalCharacters!3247 t1!34) (list!5247 (dynLambda!6088 (toChars!3487 (transformation!2385 (rule!4130 t1!34))) (value!77605 t1!34)))))))

(declare-fun b!1344788 () Bool)

(assert (=> b!1344788 (= e!861266 (= (size!11217 t1!34) (size!11227 (originalCharacters!3247 t1!34))))))

(assert (= (and d!379355 res!606174) b!1344787))

(assert (= (and b!1344787 res!606175) b!1344788))

(declare-fun b_lambda!39895 () Bool)

(assert (=> (not b_lambda!39895) (not b!1344787)))

(assert (=> b!1344787 t!119717))

(declare-fun b_and!90115 () Bool)

(assert (= b_and!90109 (and (=> t!119717 result!86008) b_and!90115)))

(assert (=> b!1344787 t!119719))

(declare-fun b_and!90117 () Bool)

(assert (= b_and!90111 (and (=> t!119719 result!86010) b_and!90117)))

(assert (=> b!1344787 t!119721))

(declare-fun b_and!90119 () Bool)

(assert (= b_and!90113 (and (=> t!119721 result!86012) b_and!90119)))

(declare-fun m!1503605 () Bool)

(assert (=> d!379355 m!1503605))

(assert (=> b!1344787 m!1503481))

(assert (=> b!1344787 m!1503481))

(declare-fun m!1503607 () Bool)

(assert (=> b!1344787 m!1503607))

(declare-fun m!1503609 () Bool)

(assert (=> b!1344788 m!1503609))

(assert (=> start!120234 d!379355))

(declare-fun d!379357 () Bool)

(declare-fun res!606176 () Bool)

(declare-fun e!861267 () Bool)

(assert (=> d!379357 (=> (not res!606176) (not e!861267))))

(assert (=> d!379357 (= res!606176 (not (isEmpty!8211 (originalCharacters!3247 t2!34))))))

(assert (=> d!379357 (= (inv!18091 t2!34) e!861267)))

(declare-fun b!1344789 () Bool)

(declare-fun res!606177 () Bool)

(assert (=> b!1344789 (=> (not res!606177) (not e!861267))))

(assert (=> b!1344789 (= res!606177 (= (originalCharacters!3247 t2!34) (list!5247 (dynLambda!6088 (toChars!3487 (transformation!2385 (rule!4130 t2!34))) (value!77605 t2!34)))))))

(declare-fun b!1344790 () Bool)

(assert (=> b!1344790 (= e!861267 (= (size!11217 t2!34) (size!11227 (originalCharacters!3247 t2!34))))))

(assert (= (and d!379357 res!606176) b!1344789))

(assert (= (and b!1344789 res!606177) b!1344790))

(declare-fun b_lambda!39897 () Bool)

(assert (=> (not b_lambda!39897) (not b!1344789)))

(assert (=> b!1344789 t!119711))

(declare-fun b_and!90121 () Bool)

(assert (= b_and!90115 (and (=> t!119711 result!86000) b_and!90121)))

(assert (=> b!1344789 t!119713))

(declare-fun b_and!90123 () Bool)

(assert (= b_and!90117 (and (=> t!119713 result!86004) b_and!90123)))

(assert (=> b!1344789 t!119715))

(declare-fun b_and!90125 () Bool)

(assert (= b_and!90119 (and (=> t!119715 result!86006) b_and!90125)))

(declare-fun m!1503611 () Bool)

(assert (=> d!379357 m!1503611))

(assert (=> b!1344789 m!1503409))

(assert (=> b!1344789 m!1503409))

(declare-fun m!1503613 () Bool)

(assert (=> b!1344789 m!1503613))

(declare-fun m!1503615 () Bool)

(assert (=> b!1344790 m!1503615))

(assert (=> start!120234 d!379357))

(declare-fun d!379359 () Bool)

(assert (=> d!379359 (= (isEmpty!8206 rules!2550) ((_ is Nil!13758) rules!2550))))

(assert (=> b!1344356 d!379359))

(declare-fun d!379361 () Bool)

(declare-fun list!5251 (Conc!4533) List!13825)

(assert (=> d!379361 (= (list!5246 (_1!7547 lt!444727)) (list!5251 (c!220092 (_1!7547 lt!444727))))))

(declare-fun bs!332567 () Bool)

(assert (= bs!332567 d!379361))

(declare-fun m!1503617 () Bool)

(assert (=> bs!332567 m!1503617))

(assert (=> b!1344357 d!379361))

(declare-fun b!1344845 () Bool)

(declare-fun e!861302 () Bool)

(declare-fun e!861300 () Bool)

(assert (=> b!1344845 (= e!861302 e!861300)))

(declare-fun res!606191 () Bool)

(declare-fun lt!444871 () tuple2!13322)

(assert (=> b!1344845 (= res!606191 (< (size!11218 (_2!7547 lt!444871)) (size!11218 (print!846 thiss!19762 (singletonSeq!996 t1!34)))))))

(assert (=> b!1344845 (=> (not res!606191) (not e!861300))))

(declare-fun d!379363 () Bool)

(declare-fun e!861301 () Bool)

(assert (=> d!379363 e!861301))

(declare-fun res!606190 () Bool)

(assert (=> d!379363 (=> (not res!606190) (not e!861301))))

(assert (=> d!379363 (= res!606190 e!861302)))

(declare-fun c!220178 () Bool)

(assert (=> d!379363 (= c!220178 (> (size!11226 (_1!7547 lt!444871)) 0))))

(declare-fun lexTailRecV2!393 (LexerInterface!2080 List!13824 BalanceConc!9004 BalanceConc!9004 BalanceConc!9004 BalanceConc!9006) tuple2!13322)

(assert (=> d!379363 (= lt!444871 (lexTailRecV2!393 thiss!19762 rules!2550 (print!846 thiss!19762 (singletonSeq!996 t1!34)) (BalanceConc!9005 Empty!4532) (print!846 thiss!19762 (singletonSeq!996 t1!34)) (BalanceConc!9007 Empty!4533)))))

(assert (=> d!379363 (= (lex!907 thiss!19762 rules!2550 (print!846 thiss!19762 (singletonSeq!996 t1!34))) lt!444871)))

(declare-fun b!1344846 () Bool)

(declare-fun isEmpty!8213 (BalanceConc!9006) Bool)

(assert (=> b!1344846 (= e!861300 (not (isEmpty!8213 (_1!7547 lt!444871))))))

(declare-fun b!1344847 () Bool)

(declare-datatypes ((tuple2!13326 0))(
  ( (tuple2!13327 (_1!7549 List!13825) (_2!7549 List!13823)) )
))
(declare-fun lexList!598 (LexerInterface!2080 List!13824 List!13823) tuple2!13326)

(assert (=> b!1344847 (= e!861301 (= (list!5247 (_2!7547 lt!444871)) (_2!7549 (lexList!598 thiss!19762 rules!2550 (list!5247 (print!846 thiss!19762 (singletonSeq!996 t1!34)))))))))

(declare-fun b!1344848 () Bool)

(assert (=> b!1344848 (= e!861302 (= (_2!7547 lt!444871) (print!846 thiss!19762 (singletonSeq!996 t1!34))))))

(declare-fun b!1344849 () Bool)

(declare-fun res!606189 () Bool)

(assert (=> b!1344849 (=> (not res!606189) (not e!861301))))

(assert (=> b!1344849 (= res!606189 (= (list!5246 (_1!7547 lt!444871)) (_1!7549 (lexList!598 thiss!19762 rules!2550 (list!5247 (print!846 thiss!19762 (singletonSeq!996 t1!34)))))))))

(assert (= (and d!379363 c!220178) b!1344845))

(assert (= (and d!379363 (not c!220178)) b!1344848))

(assert (= (and b!1344845 res!606191) b!1344846))

(assert (= (and d!379363 res!606190) b!1344849))

(assert (= (and b!1344849 res!606189) b!1344847))

(declare-fun m!1503647 () Bool)

(assert (=> b!1344847 m!1503647))

(assert (=> b!1344847 m!1503037))

(declare-fun m!1503649 () Bool)

(assert (=> b!1344847 m!1503649))

(assert (=> b!1344847 m!1503649))

(declare-fun m!1503651 () Bool)

(assert (=> b!1344847 m!1503651))

(declare-fun m!1503653 () Bool)

(assert (=> b!1344849 m!1503653))

(assert (=> b!1344849 m!1503037))

(assert (=> b!1344849 m!1503649))

(assert (=> b!1344849 m!1503649))

(assert (=> b!1344849 m!1503651))

(declare-fun m!1503655 () Bool)

(assert (=> d!379363 m!1503655))

(assert (=> d!379363 m!1503037))

(assert (=> d!379363 m!1503037))

(declare-fun m!1503657 () Bool)

(assert (=> d!379363 m!1503657))

(declare-fun m!1503659 () Bool)

(assert (=> b!1344846 m!1503659))

(declare-fun m!1503661 () Bool)

(assert (=> b!1344845 m!1503661))

(assert (=> b!1344845 m!1503037))

(declare-fun m!1503663 () Bool)

(assert (=> b!1344845 m!1503663))

(assert (=> b!1344357 d!379363))

(declare-fun d!379379 () Bool)

(declare-fun lt!444874 () BalanceConc!9004)

(declare-fun printList!588 (LexerInterface!2080 List!13825) List!13823)

(assert (=> d!379379 (= (list!5247 lt!444874) (printList!588 thiss!19762 (list!5246 (singletonSeq!996 t1!34))))))

(declare-fun printTailRec!570 (LexerInterface!2080 BalanceConc!9006 Int BalanceConc!9004) BalanceConc!9004)

(assert (=> d!379379 (= lt!444874 (printTailRec!570 thiss!19762 (singletonSeq!996 t1!34) 0 (BalanceConc!9005 Empty!4532)))))

(assert (=> d!379379 (= (print!846 thiss!19762 (singletonSeq!996 t1!34)) lt!444874)))

(declare-fun bs!332575 () Bool)

(assert (= bs!332575 d!379379))

(declare-fun m!1503665 () Bool)

(assert (=> bs!332575 m!1503665))

(assert (=> bs!332575 m!1503041))

(assert (=> bs!332575 m!1503351))

(assert (=> bs!332575 m!1503351))

(declare-fun m!1503667 () Bool)

(assert (=> bs!332575 m!1503667))

(assert (=> bs!332575 m!1503041))

(declare-fun m!1503669 () Bool)

(assert (=> bs!332575 m!1503669))

(assert (=> b!1344357 d!379379))

(declare-fun b!1344862 () Bool)

(declare-fun e!861314 () Rule!4570)

(assert (=> b!1344862 (= e!861314 (getWitness!316 (t!119693 rules!2550) lambda!56593))))

(declare-fun b!1344863 () Bool)

(declare-fun e!861313 () Rule!4570)

(assert (=> b!1344863 (= e!861313 e!861314)))

(declare-fun c!220184 () Bool)

(assert (=> b!1344863 (= c!220184 ((_ is Cons!13758) rules!2550))))

(declare-fun b!1344864 () Bool)

(declare-fun lt!444880 () Unit!19861)

(declare-fun Unit!19866 () Unit!19861)

(assert (=> b!1344864 (= lt!444880 Unit!19866)))

(assert (=> b!1344864 false))

(declare-fun head!2399 (List!13824) Rule!4570)

(assert (=> b!1344864 (= e!861314 (head!2399 rules!2550))))

(declare-fun d!379381 () Bool)

(declare-fun e!861311 () Bool)

(assert (=> d!379381 e!861311))

(declare-fun res!606197 () Bool)

(assert (=> d!379381 (=> (not res!606197) (not e!861311))))

(declare-fun lt!444879 () Rule!4570)

(declare-fun dynLambda!6094 (Int Rule!4570) Bool)

(assert (=> d!379381 (= res!606197 (dynLambda!6094 lambda!56593 lt!444879))))

(assert (=> d!379381 (= lt!444879 e!861313)))

(declare-fun c!220183 () Bool)

(declare-fun e!861312 () Bool)

(assert (=> d!379381 (= c!220183 e!861312)))

(declare-fun res!606196 () Bool)

(assert (=> d!379381 (=> (not res!606196) (not e!861312))))

(assert (=> d!379381 (= res!606196 ((_ is Cons!13758) rules!2550))))

(assert (=> d!379381 (exists!428 rules!2550 lambda!56593)))

(assert (=> d!379381 (= (getWitness!316 rules!2550 lambda!56593) lt!444879)))

(declare-fun b!1344865 () Bool)

(declare-fun contains!2525 (List!13824 Rule!4570) Bool)

(assert (=> b!1344865 (= e!861311 (contains!2525 rules!2550 lt!444879))))

(declare-fun b!1344866 () Bool)

(assert (=> b!1344866 (= e!861312 (dynLambda!6094 lambda!56593 (h!19159 rules!2550)))))

(declare-fun b!1344867 () Bool)

(assert (=> b!1344867 (= e!861313 (h!19159 rules!2550))))

(assert (= (and d!379381 res!606196) b!1344866))

(assert (= (and d!379381 c!220183) b!1344867))

(assert (= (and d!379381 (not c!220183)) b!1344863))

(assert (= (and b!1344863 c!220184) b!1344862))

(assert (= (and b!1344863 (not c!220184)) b!1344864))

(assert (= (and d!379381 res!606197) b!1344865))

(declare-fun b_lambda!39919 () Bool)

(assert (=> (not b_lambda!39919) (not d!379381)))

(declare-fun b_lambda!39921 () Bool)

(assert (=> (not b_lambda!39921) (not b!1344866)))

(declare-fun m!1503671 () Bool)

(assert (=> b!1344862 m!1503671))

(declare-fun m!1503673 () Bool)

(assert (=> b!1344865 m!1503673))

(declare-fun m!1503675 () Bool)

(assert (=> d!379381 m!1503675))

(assert (=> d!379381 m!1503055))

(declare-fun m!1503677 () Bool)

(assert (=> b!1344864 m!1503677))

(declare-fun m!1503679 () Bool)

(assert (=> b!1344866 m!1503679))

(assert (=> b!1344357 d!379381))

(declare-fun d!379383 () Bool)

(declare-fun e!861317 () Bool)

(assert (=> d!379383 e!861317))

(declare-fun res!606200 () Bool)

(assert (=> d!379383 (=> (not res!606200) (not e!861317))))

(declare-fun lt!444883 () BalanceConc!9006)

(assert (=> d!379383 (= res!606200 (= (list!5246 lt!444883) (Cons!13759 t1!34 Nil!13759)))))

(declare-fun singleton!420 (Token!4432) BalanceConc!9006)

(assert (=> d!379383 (= lt!444883 (singleton!420 t1!34))))

(assert (=> d!379383 (= (singletonSeq!996 t1!34) lt!444883)))

(declare-fun b!1344870 () Bool)

(declare-fun isBalanced!1314 (Conc!4533) Bool)

(assert (=> b!1344870 (= e!861317 (isBalanced!1314 (c!220092 lt!444883)))))

(assert (= (and d!379383 res!606200) b!1344870))

(declare-fun m!1503681 () Bool)

(assert (=> d!379383 m!1503681))

(declare-fun m!1503683 () Bool)

(assert (=> d!379383 m!1503683))

(declare-fun m!1503685 () Bool)

(assert (=> b!1344870 m!1503685))

(assert (=> b!1344357 d!379383))

(declare-fun d!379385 () Bool)

(declare-fun lt!444884 () Bool)

(assert (=> d!379385 (= lt!444884 (select (content!1960 lt!444728) lt!444722))))

(declare-fun e!861319 () Bool)

(assert (=> d!379385 (= lt!444884 e!861319)))

(declare-fun res!606201 () Bool)

(assert (=> d!379385 (=> (not res!606201) (not e!861319))))

(assert (=> d!379385 (= res!606201 ((_ is Cons!13757) lt!444728))))

(assert (=> d!379385 (= (contains!2522 lt!444728 lt!444722) lt!444884)))

(declare-fun b!1344871 () Bool)

(declare-fun e!861318 () Bool)

(assert (=> b!1344871 (= e!861319 e!861318)))

(declare-fun res!606202 () Bool)

(assert (=> b!1344871 (=> res!606202 e!861318)))

(assert (=> b!1344871 (= res!606202 (= (h!19158 lt!444728) lt!444722))))

(declare-fun b!1344872 () Bool)

(assert (=> b!1344872 (= e!861318 (contains!2522 (t!119692 lt!444728) lt!444722))))

(assert (= (and d!379385 res!606201) b!1344871))

(assert (= (and b!1344871 (not res!606202)) b!1344872))

(assert (=> d!379385 m!1503435))

(declare-fun m!1503687 () Bool)

(assert (=> d!379385 m!1503687))

(declare-fun m!1503689 () Bool)

(assert (=> b!1344872 m!1503689))

(assert (=> b!1344358 d!379385))

(declare-fun d!379387 () Bool)

(declare-fun lt!444885 () C!7688)

(assert (=> d!379387 (= lt!444885 (apply!3274 (list!5247 lt!444716) 0))))

(assert (=> d!379387 (= lt!444885 (apply!3275 (c!220090 lt!444716) 0))))

(declare-fun e!861320 () Bool)

(assert (=> d!379387 e!861320))

(declare-fun res!606203 () Bool)

(assert (=> d!379387 (=> (not res!606203) (not e!861320))))

(assert (=> d!379387 (= res!606203 (<= 0 0))))

(assert (=> d!379387 (= (apply!3269 lt!444716 0) lt!444885)))

(declare-fun b!1344873 () Bool)

(assert (=> b!1344873 (= e!861320 (< 0 (size!11218 lt!444716)))))

(assert (= (and d!379387 res!606203) b!1344873))

(assert (=> d!379387 m!1503071))

(assert (=> d!379387 m!1503071))

(declare-fun m!1503691 () Bool)

(assert (=> d!379387 m!1503691))

(declare-fun m!1503693 () Bool)

(assert (=> d!379387 m!1503693))

(declare-fun m!1503695 () Bool)

(assert (=> b!1344873 m!1503695))

(assert (=> b!1344358 d!379387))

(declare-fun d!379389 () Bool)

(declare-fun choose!8262 (Int) Bool)

(assert (=> d!379389 (= (Exists!851 lambda!56590) (choose!8262 lambda!56590))))

(declare-fun bs!332576 () Bool)

(assert (= bs!332576 d!379389))

(declare-fun m!1503697 () Bool)

(assert (=> bs!332576 m!1503697))

(assert (=> b!1344359 d!379389))

(declare-fun bs!332577 () Bool)

(declare-fun d!379391 () Bool)

(assert (= bs!332577 (and d!379391 b!1344359)))

(declare-fun lambda!56637 () Int)

(assert (=> bs!332577 (= lambda!56637 lambda!56590)))

(assert (=> d!379391 true))

(assert (=> d!379391 true))

(assert (=> d!379391 (Exists!851 lambda!56637)))

(declare-fun lt!444888 () Unit!19861)

(declare-fun choose!8263 (Regex!3699 List!13823) Unit!19861)

(assert (=> d!379391 (= lt!444888 (choose!8263 lt!444724 lt!444728))))

(assert (=> d!379391 (validRegex!1599 lt!444724)))

(assert (=> d!379391 (= (lemmaPrefixMatchThenExistsStringThatMatches!169 lt!444724 lt!444728) lt!444888)))

(declare-fun bs!332578 () Bool)

(assert (= bs!332578 d!379391))

(declare-fun m!1503699 () Bool)

(assert (=> bs!332578 m!1503699))

(declare-fun m!1503701 () Bool)

(assert (=> bs!332578 m!1503701))

(assert (=> bs!332578 m!1503597))

(assert (=> b!1344359 d!379391))

(declare-fun e!861325 () Bool)

(assert (=> b!1344349 (= tp!389201 e!861325)))

(declare-fun b!1344889 () Bool)

(declare-fun tp!389266 () Bool)

(declare-fun tp!389265 () Bool)

(assert (=> b!1344889 (= e!861325 (and tp!389266 tp!389265))))

(declare-fun b!1344886 () Bool)

(declare-fun tp_is_empty!6707 () Bool)

(assert (=> b!1344886 (= e!861325 tp_is_empty!6707)))

(declare-fun b!1344888 () Bool)

(declare-fun tp!389268 () Bool)

(assert (=> b!1344888 (= e!861325 tp!389268)))

(declare-fun b!1344887 () Bool)

(declare-fun tp!389267 () Bool)

(declare-fun tp!389264 () Bool)

(assert (=> b!1344887 (= e!861325 (and tp!389267 tp!389264))))

(assert (= (and b!1344349 ((_ is ElementMatch!3699) (regex!2385 (h!19159 rules!2550)))) b!1344886))

(assert (= (and b!1344349 ((_ is Concat!6175) (regex!2385 (h!19159 rules!2550)))) b!1344887))

(assert (= (and b!1344349 ((_ is Star!3699) (regex!2385 (h!19159 rules!2550)))) b!1344888))

(assert (= (and b!1344349 ((_ is Union!3699) (regex!2385 (h!19159 rules!2550)))) b!1344889))

(declare-fun b!1344894 () Bool)

(declare-fun e!861328 () Bool)

(declare-fun tp!389271 () Bool)

(assert (=> b!1344894 (= e!861328 (and tp_is_empty!6707 tp!389271))))

(assert (=> b!1344371 (= tp!389198 e!861328)))

(assert (= (and b!1344371 ((_ is Cons!13757) (originalCharacters!3247 t2!34))) b!1344894))

(declare-fun b!1344905 () Bool)

(declare-fun b_free!32851 () Bool)

(declare-fun b_next!33555 () Bool)

(assert (=> b!1344905 (= b_free!32851 (not b_next!33555))))

(declare-fun tp!389280 () Bool)

(declare-fun b_and!90131 () Bool)

(assert (=> b!1344905 (= tp!389280 b_and!90131)))

(declare-fun b_free!32853 () Bool)

(declare-fun b_next!33557 () Bool)

(assert (=> b!1344905 (= b_free!32853 (not b_next!33557))))

(declare-fun tb!70749 () Bool)

(declare-fun t!119730 () Bool)

(assert (=> (and b!1344905 (= (toChars!3487 (transformation!2385 (h!19159 (t!119693 rules!2550)))) (toChars!3487 (transformation!2385 (rule!4130 t2!34)))) t!119730) tb!70749))

(declare-fun result!86030 () Bool)

(assert (= result!86030 result!86000))

(assert (=> d!379289 t!119730))

(declare-fun t!119732 () Bool)

(declare-fun tb!70751 () Bool)

(assert (=> (and b!1344905 (= (toChars!3487 (transformation!2385 (h!19159 (t!119693 rules!2550)))) (toChars!3487 (transformation!2385 (rule!4130 t1!34)))) t!119732) tb!70751))

(declare-fun result!86032 () Bool)

(assert (= result!86032 result!86008))

(assert (=> d!379319 t!119732))

(assert (=> b!1344787 t!119732))

(assert (=> b!1344789 t!119730))

(declare-fun b_and!90133 () Bool)

(declare-fun tp!389283 () Bool)

(assert (=> b!1344905 (= tp!389283 (and (=> t!119730 result!86030) (=> t!119732 result!86032) b_and!90133))))

(declare-fun e!861337 () Bool)

(assert (=> b!1344905 (= e!861337 (and tp!389280 tp!389283))))

(declare-fun b!1344904 () Bool)

(declare-fun e!861339 () Bool)

(declare-fun tp!389282 () Bool)

(assert (=> b!1344904 (= e!861339 (and tp!389282 (inv!18087 (tag!2647 (h!19159 (t!119693 rules!2550)))) (inv!18090 (transformation!2385 (h!19159 (t!119693 rules!2550)))) e!861337))))

(declare-fun b!1344903 () Bool)

(declare-fun e!861338 () Bool)

(declare-fun tp!389281 () Bool)

(assert (=> b!1344903 (= e!861338 (and e!861339 tp!389281))))

(assert (=> b!1344377 (= tp!389203 e!861338)))

(assert (= b!1344904 b!1344905))

(assert (= b!1344903 b!1344904))

(assert (= (and b!1344377 ((_ is Cons!13758) (t!119693 rules!2550))) b!1344903))

(declare-fun m!1503703 () Bool)

(assert (=> b!1344904 m!1503703))

(declare-fun m!1503705 () Bool)

(assert (=> b!1344904 m!1503705))

(declare-fun b!1344906 () Bool)

(declare-fun e!861341 () Bool)

(declare-fun tp!389284 () Bool)

(assert (=> b!1344906 (= e!861341 (and tp_is_empty!6707 tp!389284))))

(assert (=> b!1344372 (= tp!389193 e!861341)))

(assert (= (and b!1344372 ((_ is Cons!13757) (originalCharacters!3247 t1!34))) b!1344906))

(declare-fun e!861342 () Bool)

(assert (=> b!1344368 (= tp!389204 e!861342)))

(declare-fun b!1344910 () Bool)

(declare-fun tp!389287 () Bool)

(declare-fun tp!389286 () Bool)

(assert (=> b!1344910 (= e!861342 (and tp!389287 tp!389286))))

(declare-fun b!1344907 () Bool)

(assert (=> b!1344907 (= e!861342 tp_is_empty!6707)))

(declare-fun b!1344909 () Bool)

(declare-fun tp!389289 () Bool)

(assert (=> b!1344909 (= e!861342 tp!389289)))

(declare-fun b!1344908 () Bool)

(declare-fun tp!389288 () Bool)

(declare-fun tp!389285 () Bool)

(assert (=> b!1344908 (= e!861342 (and tp!389288 tp!389285))))

(assert (= (and b!1344368 ((_ is ElementMatch!3699) (regex!2385 (rule!4130 t1!34)))) b!1344907))

(assert (= (and b!1344368 ((_ is Concat!6175) (regex!2385 (rule!4130 t1!34)))) b!1344908))

(assert (= (and b!1344368 ((_ is Star!3699) (regex!2385 (rule!4130 t1!34)))) b!1344909))

(assert (= (and b!1344368 ((_ is Union!3699) (regex!2385 (rule!4130 t1!34)))) b!1344910))

(declare-fun e!861343 () Bool)

(assert (=> b!1344363 (= tp!389196 e!861343)))

(declare-fun b!1344914 () Bool)

(declare-fun tp!389292 () Bool)

(declare-fun tp!389291 () Bool)

(assert (=> b!1344914 (= e!861343 (and tp!389292 tp!389291))))

(declare-fun b!1344911 () Bool)

(assert (=> b!1344911 (= e!861343 tp_is_empty!6707)))

(declare-fun b!1344913 () Bool)

(declare-fun tp!389294 () Bool)

(assert (=> b!1344913 (= e!861343 tp!389294)))

(declare-fun b!1344912 () Bool)

(declare-fun tp!389293 () Bool)

(declare-fun tp!389290 () Bool)

(assert (=> b!1344912 (= e!861343 (and tp!389293 tp!389290))))

(assert (= (and b!1344363 ((_ is ElementMatch!3699) (regex!2385 (rule!4130 t2!34)))) b!1344911))

(assert (= (and b!1344363 ((_ is Concat!6175) (regex!2385 (rule!4130 t2!34)))) b!1344912))

(assert (= (and b!1344363 ((_ is Star!3699) (regex!2385 (rule!4130 t2!34)))) b!1344913))

(assert (= (and b!1344363 ((_ is Union!3699) (regex!2385 (rule!4130 t2!34)))) b!1344914))

(declare-fun b_lambda!39923 () Bool)

(assert (= b_lambda!39889 (or b!1344359 b_lambda!39923)))

(declare-fun bs!332579 () Bool)

(declare-fun d!379393 () Bool)

(assert (= bs!332579 (and d!379393 b!1344359)))

(declare-fun res!606206 () Bool)

(declare-fun e!861344 () Bool)

(assert (=> bs!332579 (=> (not res!606206) (not e!861344))))

(assert (=> bs!332579 (= res!606206 (matchR!1692 lt!444724 lt!444856))))

(assert (=> bs!332579 (= (dynLambda!6093 lambda!56590 lt!444856) e!861344)))

(declare-fun b!1344915 () Bool)

(declare-fun isPrefix!1109 (List!13823 List!13823) Bool)

(assert (=> b!1344915 (= e!861344 (isPrefix!1109 lt!444728 lt!444856))))

(assert (= (and bs!332579 res!606206) b!1344915))

(declare-fun m!1503707 () Bool)

(assert (=> bs!332579 m!1503707))

(declare-fun m!1503709 () Bool)

(assert (=> b!1344915 m!1503709))

(assert (=> d!379339 d!379393))

(declare-fun b_lambda!39925 () Bool)

(assert (= b_lambda!39875 (or b!1344375 b_lambda!39925)))

(declare-fun bs!332580 () Bool)

(declare-fun d!379395 () Bool)

(assert (= bs!332580 (and d!379395 b!1344375)))

(declare-fun res!606207 () Bool)

(declare-fun e!861345 () Bool)

(assert (=> bs!332580 (=> (not res!606207) (not e!861345))))

(assert (=> bs!332580 (= res!606207 (validRegex!1599 (h!19161 (map!3038 rules!2550 lambda!56591))))))

(assert (=> bs!332580 (= (dynLambda!6086 lambda!56592 (h!19161 (map!3038 rules!2550 lambda!56591))) e!861345)))

(declare-fun b!1344916 () Bool)

(assert (=> b!1344916 (= e!861345 (matchR!1692 (h!19161 (map!3038 rules!2550 lambda!56591)) lt!444720))))

(assert (= (and bs!332580 res!606207) b!1344916))

(declare-fun m!1503711 () Bool)

(assert (=> bs!332580 m!1503711))

(declare-fun m!1503713 () Bool)

(assert (=> b!1344916 m!1503713))

(assert (=> b!1344468 d!379395))

(declare-fun b_lambda!39927 () Bool)

(assert (= b_lambda!39885 (or (and b!1344360 b_free!32837 (= (toChars!3487 (transformation!2385 (h!19159 rules!2550))) (toChars!3487 (transformation!2385 (rule!4130 t2!34))))) (and b!1344348 b_free!32841 (= (toChars!3487 (transformation!2385 (rule!4130 t1!34))) (toChars!3487 (transformation!2385 (rule!4130 t2!34))))) (and b!1344369 b_free!32845) (and b!1344905 b_free!32853 (= (toChars!3487 (transformation!2385 (h!19159 (t!119693 rules!2550)))) (toChars!3487 (transformation!2385 (rule!4130 t2!34))))) b_lambda!39927)))

(declare-fun b_lambda!39929 () Bool)

(assert (= b_lambda!39873 (or b!1344375 b_lambda!39929)))

(declare-fun bs!332581 () Bool)

(declare-fun d!379397 () Bool)

(assert (= bs!332581 (and d!379397 b!1344375)))

(declare-fun res!606208 () Bool)

(declare-fun e!861346 () Bool)

(assert (=> bs!332581 (=> (not res!606208) (not e!861346))))

(assert (=> bs!332581 (= res!606208 (validRegex!1599 lt!444764))))

(assert (=> bs!332581 (= (dynLambda!6086 lambda!56592 lt!444764) e!861346)))

(declare-fun b!1344917 () Bool)

(assert (=> b!1344917 (= e!861346 (matchR!1692 lt!444764 lt!444720))))

(assert (= (and bs!332581 res!606208) b!1344917))

(declare-fun m!1503715 () Bool)

(assert (=> bs!332581 m!1503715))

(declare-fun m!1503717 () Bool)

(assert (=> b!1344917 m!1503717))

(assert (=> d!379215 d!379397))

(declare-fun b_lambda!39931 () Bool)

(assert (= b_lambda!39887 (or (and b!1344360 b_free!32837 (= (toChars!3487 (transformation!2385 (h!19159 rules!2550))) (toChars!3487 (transformation!2385 (rule!4130 t1!34))))) (and b!1344348 b_free!32841) (and b!1344369 b_free!32845 (= (toChars!3487 (transformation!2385 (rule!4130 t2!34))) (toChars!3487 (transformation!2385 (rule!4130 t1!34))))) (and b!1344905 b_free!32853 (= (toChars!3487 (transformation!2385 (h!19159 (t!119693 rules!2550)))) (toChars!3487 (transformation!2385 (rule!4130 t1!34))))) b_lambda!39931)))

(declare-fun b_lambda!39933 () Bool)

(assert (= b_lambda!39865 (or b!1344375 b_lambda!39933)))

(declare-fun bs!332582 () Bool)

(declare-fun d!379399 () Bool)

(assert (= bs!332582 (and d!379399 b!1344375)))

(assert (=> bs!332582 (= (dynLambda!6085 lambda!56591 (h!19159 rules!2550)) (regex!2385 (h!19159 rules!2550)))))

(assert (=> b!1344435 d!379399))

(declare-fun b_lambda!39935 () Bool)

(assert (= b_lambda!39921 (or b!1344365 b_lambda!39935)))

(declare-fun bs!332583 () Bool)

(declare-fun d!379401 () Bool)

(assert (= bs!332583 (and d!379401 b!1344365)))

(assert (=> bs!332583 (= (dynLambda!6094 lambda!56593 (h!19159 rules!2550)) (= (regex!2385 (h!19159 rules!2550)) lt!444723))))

(assert (=> b!1344866 d!379401))

(declare-fun b_lambda!39937 () Bool)

(assert (= b_lambda!39897 (or (and b!1344360 b_free!32837 (= (toChars!3487 (transformation!2385 (h!19159 rules!2550))) (toChars!3487 (transformation!2385 (rule!4130 t2!34))))) (and b!1344348 b_free!32841 (= (toChars!3487 (transformation!2385 (rule!4130 t1!34))) (toChars!3487 (transformation!2385 (rule!4130 t2!34))))) (and b!1344369 b_free!32845) (and b!1344905 b_free!32853 (= (toChars!3487 (transformation!2385 (h!19159 (t!119693 rules!2550)))) (toChars!3487 (transformation!2385 (rule!4130 t2!34))))) b_lambda!39937)))

(declare-fun b_lambda!39939 () Bool)

(assert (= b_lambda!39895 (or (and b!1344360 b_free!32837 (= (toChars!3487 (transformation!2385 (h!19159 rules!2550))) (toChars!3487 (transformation!2385 (rule!4130 t1!34))))) (and b!1344348 b_free!32841) (and b!1344369 b_free!32845 (= (toChars!3487 (transformation!2385 (rule!4130 t2!34))) (toChars!3487 (transformation!2385 (rule!4130 t1!34))))) (and b!1344905 b_free!32853 (= (toChars!3487 (transformation!2385 (h!19159 (t!119693 rules!2550)))) (toChars!3487 (transformation!2385 (rule!4130 t1!34))))) b_lambda!39939)))

(declare-fun b_lambda!39941 () Bool)

(assert (= b_lambda!39919 (or b!1344365 b_lambda!39941)))

(declare-fun bs!332584 () Bool)

(declare-fun d!379403 () Bool)

(assert (= bs!332584 (and d!379403 b!1344365)))

(assert (=> bs!332584 (= (dynLambda!6094 lambda!56593 lt!444879) (= (regex!2385 lt!444879) lt!444723))))

(assert (=> d!379381 d!379403))

(check-sat (not d!379313) (not b!1344645) (not b!1344659) (not b!1344630) (not b_next!33539) (not b_lambda!39937) (not d!379233) (not d!379293) (not d!379215) (not b!1344673) (not b!1344788) (not d!379385) (not d!379291) (not d!379287) (not d!379303) (not b_next!33555) (not b_lambda!39933) (not b!1344770) (not d!379315) (not b!1344420) (not bs!332581) (not b!1344638) (not d!379321) (not b!1344789) (not d!379301) (not b!1344777) b_and!90133 (not bm!90512) (not b!1344916) (not b!1344790) (not b!1344709) tp_is_empty!6707 (not b!1344625) (not b!1344640) (not b!1344887) (not d!379333) (not d!379297) (not tb!70733) (not b_next!33543) b_and!90125 (not b!1344470) (not b!1344772) (not d!379205) (not b!1344499) (not d!379311) (not b_lambda!39923) (not b!1344469) (not b!1344676) (not b_lambda!39931) (not b!1344663) (not b!1344519) (not b!1344903) (not d!379343) (not b!1344674) (not b!1344917) (not b_next!33557) (not b!1344847) (not b_lambda!39925) (not d!379361) (not bs!332579) (not b_next!33541) (not d!379197) (not d!379379) (not b!1344517) (not b!1344624) (not b!1344771) (not b_lambda!39927) (not b_lambda!39935) (not b!1344889) (not b!1344910) (not d!379387) (not b_next!33549) (not b!1344904) (not b!1344872) (not b!1344619) (not b!1344912) (not d!379299) b_and!90121 (not b!1344520) (not b!1344657) (not d!379355) (not d!379317) (not b!1344622) (not d!379309) (not d!379319) (not tb!70739) (not b!1344697) (not d!379391) (not b!1344906) (not b!1344435) (not b!1344660) (not b!1344865) (not d!379357) b_and!90123 b_and!90075 (not d!379339) (not b!1344873) (not b!1344908) (not d!379389) (not d!379285) (not b_lambda!39941) (not b!1344845) b_and!90131 b_and!90067 (not b!1344787) (not b!1344773) (not d!379253) (not d!379341) (not b_next!33547) (not d!379295) (not d!379335) (not d!379329) (not d!379305) (not bs!332580) (not d!379323) (not b!1344725) (not b!1344471) (not d!379381) (not b!1344639) (not d!379283) (not b!1344620) (not b!1344914) (not b!1344694) (not b!1344690) (not b!1344862) (not d!379363) (not b_lambda!39939) (not b!1344915) (not d!379383) (not b!1344637) (not b!1344870) (not b!1344696) (not b_next!33545) (not b!1344894) (not b!1344631) (not b!1344888) (not b!1344691) (not b_lambda!39929) (not b!1344849) (not b!1344782) (not b!1344618) (not b!1344913) (not b!1344846) (not b!1344909) (not b!1344864) (not d!379289) b_and!90071)
(check-sat (not b_next!33539) (not b_next!33555) b_and!90133 (not b_next!33557) (not b_next!33541) (not b_next!33549) b_and!90121 b_and!90131 b_and!90067 (not b_next!33547) (not b_next!33545) b_and!90071 (not b_next!33543) b_and!90125 b_and!90123 b_and!90075)
