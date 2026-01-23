; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113182 () Bool)

(assert start!113182)

(declare-fun b!1289945 () Bool)

(declare-fun b_free!30459 () Bool)

(declare-fun b_next!31163 () Bool)

(assert (=> b!1289945 (= b_free!30459 (not b_next!31163))))

(declare-fun tp!375972 () Bool)

(declare-fun b_and!85879 () Bool)

(assert (=> b!1289945 (= tp!375972 b_and!85879)))

(declare-fun b_free!30461 () Bool)

(declare-fun b_next!31165 () Bool)

(assert (=> b!1289945 (= b_free!30461 (not b_next!31165))))

(declare-fun tp!375970 () Bool)

(declare-fun b_and!85881 () Bool)

(assert (=> b!1289945 (= tp!375970 b_and!85881)))

(declare-fun b!1289958 () Bool)

(declare-fun b_free!30463 () Bool)

(declare-fun b_next!31167 () Bool)

(assert (=> b!1289958 (= b_free!30463 (not b_next!31167))))

(declare-fun tp!375977 () Bool)

(declare-fun b_and!85883 () Bool)

(assert (=> b!1289958 (= tp!375977 b_and!85883)))

(declare-fun b_free!30465 () Bool)

(declare-fun b_next!31169 () Bool)

(assert (=> b!1289958 (= b_free!30465 (not b_next!31169))))

(declare-fun tp!375976 () Bool)

(declare-fun b_and!85885 () Bool)

(assert (=> b!1289958 (= tp!375976 b_and!85885)))

(declare-fun b!1289962 () Bool)

(declare-fun b_free!30467 () Bool)

(declare-fun b_next!31171 () Bool)

(assert (=> b!1289962 (= b_free!30467 (not b_next!31171))))

(declare-fun tp!375973 () Bool)

(declare-fun b_and!85887 () Bool)

(assert (=> b!1289962 (= tp!375973 b_and!85887)))

(declare-fun b_free!30469 () Bool)

(declare-fun b_next!31173 () Bool)

(assert (=> b!1289962 (= b_free!30469 (not b_next!31173))))

(declare-fun tp!375971 () Bool)

(declare-fun b_and!85889 () Bool)

(assert (=> b!1289962 (= tp!375971 b_and!85889)))

(declare-fun b!1289954 () Bool)

(assert (=> b!1289954 true))

(assert (=> b!1289954 true))

(declare-fun b!1289944 () Bool)

(declare-datatypes ((List!12949 0))(
  ( (Nil!12883) (Cons!12883 (h!18284 (_ BitVec 16)) (t!117086 List!12949)) )
))
(declare-datatypes ((TokenValue!2309 0))(
  ( (FloatLiteralValue!4618 (text!16608 List!12949)) (TokenValueExt!2308 (__x!8447 Int)) (Broken!11545 (value!72848 List!12949)) (Object!2374) (End!2309) (Def!2309) (Underscore!2309) (Match!2309) (Else!2309) (Error!2309) (Case!2309) (If!2309) (Extends!2309) (Abstract!2309) (Class!2309) (Val!2309) (DelimiterValue!4618 (del!2369 List!12949)) (KeywordValue!2315 (value!72849 List!12949)) (CommentValue!4618 (value!72850 List!12949)) (WhitespaceValue!4618 (value!72851 List!12949)) (IndentationValue!2309 (value!72852 List!12949)) (String!15780) (Int32!2309) (Broken!11546 (value!72853 List!12949)) (Boolean!2310) (Unit!19045) (OperatorValue!2312 (op!2369 List!12949)) (IdentifierValue!4618 (value!72854 List!12949)) (IdentifierValue!4619 (value!72855 List!12949)) (WhitespaceValue!4619 (value!72856 List!12949)) (True!4618) (False!4618) (Broken!11547 (value!72857 List!12949)) (Broken!11548 (value!72858 List!12949)) (True!4619) (RightBrace!2309) (RightBracket!2309) (Colon!2309) (Null!2309) (Comma!2309) (LeftBracket!2309) (False!4619) (LeftBrace!2309) (ImaginaryLiteralValue!2309 (text!16609 List!12949)) (StringLiteralValue!6927 (value!72859 List!12949)) (EOFValue!2309 (value!72860 List!12949)) (IdentValue!2309 (value!72861 List!12949)) (DelimiterValue!4619 (value!72862 List!12949)) (DedentValue!2309 (value!72863 List!12949)) (NewLineValue!2309 (value!72864 List!12949)) (IntegerValue!6927 (value!72865 (_ BitVec 32)) (text!16610 List!12949)) (IntegerValue!6928 (value!72866 Int) (text!16611 List!12949)) (Times!2309) (Or!2309) (Equal!2309) (Minus!2309) (Broken!11549 (value!72867 List!12949)) (And!2309) (Div!2309) (LessEqual!2309) (Mod!2309) (Concat!5842) (Not!2309) (Plus!2309) (SpaceValue!2309 (value!72868 List!12949)) (IntegerValue!6929 (value!72869 Int) (text!16612 List!12949)) (StringLiteralValue!6928 (text!16613 List!12949)) (FloatLiteralValue!4619 (text!16614 List!12949)) (BytesLiteralValue!2309 (value!72870 List!12949)) (CommentValue!4619 (value!72871 List!12949)) (StringLiteralValue!6929 (value!72872 List!12949)) (ErrorTokenValue!2309 (msg!2370 List!12949)) )
))
(declare-datatypes ((C!7356 0))(
  ( (C!7357 (val!4238 Int)) )
))
(declare-datatypes ((List!12950 0))(
  ( (Nil!12884) (Cons!12884 (h!18285 C!7356) (t!117087 List!12950)) )
))
(declare-datatypes ((IArray!8471 0))(
  ( (IArray!8472 (innerList!4293 List!12950)) )
))
(declare-datatypes ((Conc!4233 0))(
  ( (Node!4233 (left!11088 Conc!4233) (right!11418 Conc!4233) (csize!8696 Int) (cheight!4444 Int)) (Leaf!6539 (xs!6944 IArray!8471) (csize!8697 Int)) (Empty!4233) )
))
(declare-datatypes ((BalanceConc!8406 0))(
  ( (BalanceConc!8407 (c!212311 Conc!4233)) )
))
(declare-datatypes ((TokenValueInjection!4278 0))(
  ( (TokenValueInjection!4279 (toValue!3414 Int) (toChars!3273 Int)) )
))
(declare-datatypes ((Regex!3533 0))(
  ( (ElementMatch!3533 (c!212312 C!7356)) (Concat!5843 (regOne!7578 Regex!3533) (regTwo!7578 Regex!3533)) (EmptyExpr!3533) (Star!3533 (reg!3862 Regex!3533)) (EmptyLang!3533) (Union!3533 (regOne!7579 Regex!3533) (regTwo!7579 Regex!3533)) )
))
(declare-datatypes ((String!15781 0))(
  ( (String!15782 (value!72873 String)) )
))
(declare-datatypes ((Rule!4238 0))(
  ( (Rule!4239 (regex!2219 Regex!3533) (tag!2481 String!15781) (isSeparator!2219 Bool) (transformation!2219 TokenValueInjection!4278)) )
))
(declare-datatypes ((Token!4100 0))(
  ( (Token!4101 (value!72874 TokenValue!2309) (rule!3958 Rule!4238) (size!10509 Int) (originalCharacters!3081 List!12950)) )
))
(declare-fun t1!34 () Token!4100)

(declare-fun tp!375974 () Bool)

(declare-fun e!827278 () Bool)

(declare-fun e!827293 () Bool)

(declare-fun inv!17300 (String!15781) Bool)

(declare-fun inv!17303 (TokenValueInjection!4278) Bool)

(assert (=> b!1289944 (= e!827278 (and tp!375974 (inv!17300 (tag!2481 (rule!3958 t1!34))) (inv!17303 (transformation!2219 (rule!3958 t1!34))) e!827293))))

(declare-fun e!827280 () Bool)

(assert (=> b!1289945 (= e!827280 (and tp!375972 tp!375970))))

(declare-fun b!1289946 () Bool)

(declare-fun e!827284 () Bool)

(declare-fun e!827290 () Bool)

(declare-fun tp!375969 () Bool)

(assert (=> b!1289946 (= e!827284 (and e!827290 tp!375969))))

(declare-fun res!578173 () Bool)

(declare-fun e!827288 () Bool)

(assert (=> start!113182 (=> (not res!578173) (not e!827288))))

(declare-datatypes ((LexerInterface!1914 0))(
  ( (LexerInterfaceExt!1911 (__x!8448 Int)) (Lexer!1912) )
))
(declare-fun thiss!19762 () LexerInterface!1914)

(get-info :version)

(assert (=> start!113182 (= res!578173 ((_ is Lexer!1912) thiss!19762))))

(assert (=> start!113182 e!827288))

(assert (=> start!113182 true))

(assert (=> start!113182 e!827284))

(declare-fun e!827279 () Bool)

(declare-fun inv!17304 (Token!4100) Bool)

(assert (=> start!113182 (and (inv!17304 t1!34) e!827279)))

(declare-fun t2!34 () Token!4100)

(declare-fun e!827281 () Bool)

(assert (=> start!113182 (and (inv!17304 t2!34) e!827281)))

(declare-fun b!1289947 () Bool)

(declare-fun e!827294 () Bool)

(assert (=> b!1289947 (= e!827288 e!827294)))

(declare-fun res!578169 () Bool)

(assert (=> b!1289947 (=> (not res!578169) (not e!827294))))

(declare-fun lt!424775 () BalanceConc!8406)

(declare-fun size!10510 (BalanceConc!8406) Int)

(assert (=> b!1289947 (= res!578169 (> (size!10510 lt!424775) 0))))

(declare-fun charsOf!1191 (Token!4100) BalanceConc!8406)

(assert (=> b!1289947 (= lt!424775 (charsOf!1191 t2!34))))

(declare-fun e!827292 () Bool)

(declare-fun tp!375978 () Bool)

(declare-fun b!1289948 () Bool)

(declare-fun inv!21 (TokenValue!2309) Bool)

(assert (=> b!1289948 (= e!827281 (and (inv!21 (value!72874 t2!34)) e!827292 tp!375978))))

(declare-fun tp!375980 () Bool)

(declare-fun e!827289 () Bool)

(declare-datatypes ((List!12951 0))(
  ( (Nil!12885) (Cons!12885 (h!18286 Rule!4238) (t!117088 List!12951)) )
))
(declare-fun rules!2550 () List!12951)

(declare-fun b!1289949 () Bool)

(assert (=> b!1289949 (= e!827290 (and tp!375980 (inv!17300 (tag!2481 (h!18286 rules!2550))) (inv!17303 (transformation!2219 (h!18286 rules!2550))) e!827289))))

(declare-fun b!1289950 () Bool)

(declare-fun res!578179 () Bool)

(assert (=> b!1289950 (=> (not res!578179) (not e!827288))))

(declare-fun rulesProduceIndividualToken!883 (LexerInterface!1914 List!12951 Token!4100) Bool)

(assert (=> b!1289950 (= res!578179 (rulesProduceIndividualToken!883 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1289951 () Bool)

(declare-fun res!578170 () Bool)

(assert (=> b!1289951 (=> (not res!578170) (not e!827288))))

(declare-fun isEmpty!7645 (List!12951) Bool)

(assert (=> b!1289951 (= res!578170 (not (isEmpty!7645 rules!2550)))))

(declare-fun b!1289952 () Bool)

(declare-fun res!578172 () Bool)

(assert (=> b!1289952 (=> (not res!578172) (not e!827294))))

(declare-fun separableTokensPredicate!197 (LexerInterface!1914 Token!4100 Token!4100 List!12951) Bool)

(assert (=> b!1289952 (= res!578172 (not (separableTokensPredicate!197 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun tp!375979 () Bool)

(declare-fun b!1289953 () Bool)

(assert (=> b!1289953 (= e!827279 (and (inv!21 (value!72874 t1!34)) e!827278 tp!375979))))

(declare-fun e!827287 () Bool)

(declare-fun e!827283 () Bool)

(assert (=> b!1289954 (= e!827287 (not e!827283))))

(declare-fun res!578176 () Bool)

(assert (=> b!1289954 (=> res!578176 e!827283)))

(declare-fun lambda!50631 () Int)

(declare-fun Exists!691 (Int) Bool)

(assert (=> b!1289954 (= res!578176 (not (Exists!691 lambda!50631)))))

(assert (=> b!1289954 (Exists!691 lambda!50631)))

(declare-datatypes ((Unit!19046 0))(
  ( (Unit!19047) )
))
(declare-fun lt!424774 () Unit!19046)

(declare-fun lt!424773 () Regex!3533)

(declare-fun lt!424776 () List!12950)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!9 (Regex!3533 List!12950) Unit!19046)

(assert (=> b!1289954 (= lt!424774 (lemmaPrefixMatchThenExistsStringThatMatches!9 lt!424773 lt!424776))))

(declare-fun b!1289955 () Bool)

(declare-fun rulesValidInductive!702 (LexerInterface!1914 List!12951) Bool)

(assert (=> b!1289955 (= e!827283 (rulesValidInductive!702 thiss!19762 rules!2550))))

(declare-fun b!1289956 () Bool)

(declare-fun res!578171 () Bool)

(assert (=> b!1289956 (=> (not res!578171) (not e!827288))))

(assert (=> b!1289956 (= res!578171 (not (= (isSeparator!2219 (rule!3958 t1!34)) (isSeparator!2219 (rule!3958 t2!34)))))))

(declare-fun b!1289957 () Bool)

(declare-fun res!578175 () Bool)

(assert (=> b!1289957 (=> (not res!578175) (not e!827288))))

(assert (=> b!1289957 (= res!578175 (rulesProduceIndividualToken!883 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1289958 (= e!827293 (and tp!375977 tp!375976))))

(declare-fun b!1289959 () Bool)

(declare-fun res!578177 () Bool)

(assert (=> b!1289959 (=> (not res!578177) (not e!827294))))

(declare-fun sepAndNonSepRulesDisjointChars!592 (List!12951 List!12951) Bool)

(assert (=> b!1289959 (= res!578177 (sepAndNonSepRulesDisjointChars!592 rules!2550 rules!2550))))

(declare-fun tp!375975 () Bool)

(declare-fun b!1289960 () Bool)

(assert (=> b!1289960 (= e!827292 (and tp!375975 (inv!17300 (tag!2481 (rule!3958 t2!34))) (inv!17303 (transformation!2219 (rule!3958 t2!34))) e!827280))))

(declare-fun b!1289961 () Bool)

(assert (=> b!1289961 (= e!827294 e!827287)))

(declare-fun res!578174 () Bool)

(assert (=> b!1289961 (=> (not res!578174) (not e!827287))))

(declare-fun prefixMatch!46 (Regex!3533 List!12950) Bool)

(assert (=> b!1289961 (= res!578174 (prefixMatch!46 lt!424773 lt!424776))))

(declare-fun rulesRegex!104 (LexerInterface!1914 List!12951) Regex!3533)

(assert (=> b!1289961 (= lt!424773 (rulesRegex!104 thiss!19762 rules!2550))))

(declare-fun ++!3261 (List!12950 List!12950) List!12950)

(declare-fun list!4803 (BalanceConc!8406) List!12950)

(declare-fun apply!2799 (BalanceConc!8406 Int) C!7356)

(assert (=> b!1289961 (= lt!424776 (++!3261 (list!4803 (charsOf!1191 t1!34)) (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)))))

(assert (=> b!1289962 (= e!827289 (and tp!375973 tp!375971))))

(declare-fun b!1289963 () Bool)

(declare-fun res!578178 () Bool)

(assert (=> b!1289963 (=> (not res!578178) (not e!827288))))

(declare-fun rulesInvariant!1784 (LexerInterface!1914 List!12951) Bool)

(assert (=> b!1289963 (= res!578178 (rulesInvariant!1784 thiss!19762 rules!2550))))

(assert (= (and start!113182 res!578173) b!1289951))

(assert (= (and b!1289951 res!578170) b!1289963))

(assert (= (and b!1289963 res!578178) b!1289950))

(assert (= (and b!1289950 res!578179) b!1289957))

(assert (= (and b!1289957 res!578175) b!1289956))

(assert (= (and b!1289956 res!578171) b!1289947))

(assert (= (and b!1289947 res!578169) b!1289959))

(assert (= (and b!1289959 res!578177) b!1289952))

(assert (= (and b!1289952 res!578172) b!1289961))

(assert (= (and b!1289961 res!578174) b!1289954))

(assert (= (and b!1289954 (not res!578176)) b!1289955))

(assert (= b!1289949 b!1289962))

(assert (= b!1289946 b!1289949))

(assert (= (and start!113182 ((_ is Cons!12885) rules!2550)) b!1289946))

(assert (= b!1289944 b!1289958))

(assert (= b!1289953 b!1289944))

(assert (= start!113182 b!1289953))

(assert (= b!1289960 b!1289945))

(assert (= b!1289948 b!1289960))

(assert (= start!113182 b!1289948))

(declare-fun m!1440573 () Bool)

(assert (=> b!1289955 m!1440573))

(declare-fun m!1440575 () Bool)

(assert (=> b!1289954 m!1440575))

(assert (=> b!1289954 m!1440575))

(declare-fun m!1440577 () Bool)

(assert (=> b!1289954 m!1440577))

(declare-fun m!1440579 () Bool)

(assert (=> b!1289948 m!1440579))

(declare-fun m!1440581 () Bool)

(assert (=> b!1289959 m!1440581))

(declare-fun m!1440583 () Bool)

(assert (=> b!1289957 m!1440583))

(declare-fun m!1440585 () Bool)

(assert (=> b!1289960 m!1440585))

(declare-fun m!1440587 () Bool)

(assert (=> b!1289960 m!1440587))

(declare-fun m!1440589 () Bool)

(assert (=> start!113182 m!1440589))

(declare-fun m!1440591 () Bool)

(assert (=> start!113182 m!1440591))

(declare-fun m!1440593 () Bool)

(assert (=> b!1289961 m!1440593))

(declare-fun m!1440595 () Bool)

(assert (=> b!1289961 m!1440595))

(declare-fun m!1440597 () Bool)

(assert (=> b!1289961 m!1440597))

(declare-fun m!1440599 () Bool)

(assert (=> b!1289961 m!1440599))

(assert (=> b!1289961 m!1440599))

(assert (=> b!1289961 m!1440595))

(declare-fun m!1440601 () Bool)

(assert (=> b!1289961 m!1440601))

(declare-fun m!1440603 () Bool)

(assert (=> b!1289961 m!1440603))

(declare-fun m!1440605 () Bool)

(assert (=> b!1289950 m!1440605))

(declare-fun m!1440607 () Bool)

(assert (=> b!1289963 m!1440607))

(declare-fun m!1440609 () Bool)

(assert (=> b!1289952 m!1440609))

(declare-fun m!1440611 () Bool)

(assert (=> b!1289947 m!1440611))

(declare-fun m!1440613 () Bool)

(assert (=> b!1289947 m!1440613))

(declare-fun m!1440615 () Bool)

(assert (=> b!1289951 m!1440615))

(declare-fun m!1440617 () Bool)

(assert (=> b!1289944 m!1440617))

(declare-fun m!1440619 () Bool)

(assert (=> b!1289944 m!1440619))

(declare-fun m!1440621 () Bool)

(assert (=> b!1289953 m!1440621))

(declare-fun m!1440623 () Bool)

(assert (=> b!1289949 m!1440623))

(declare-fun m!1440625 () Bool)

(assert (=> b!1289949 m!1440625))

(check-sat (not b!1289949) (not b_next!31167) b_and!85885 b_and!85887 (not b!1289947) b_and!85889 (not b!1289959) (not b!1289953) (not b_next!31171) (not b!1289946) (not b!1289950) (not b_next!31169) b_and!85879 (not b_next!31163) (not b!1289961) (not b!1289955) (not b!1289952) (not b_next!31173) b_and!85881 b_and!85883 (not b!1289948) (not b!1289957) (not start!113182) (not b!1289944) (not b!1289951) (not b!1289963) (not b!1289960) (not b_next!31165) (not b!1289954))
(check-sat (not b_next!31167) b_and!85885 b_and!85887 b_and!85889 (not b_next!31171) (not b_next!31165) (not b_next!31169) b_and!85879 (not b_next!31163) (not b_next!31173) b_and!85881 b_and!85883)
(get-model)

(declare-fun b!1289978 () Bool)

(declare-fun res!578186 () Bool)

(declare-fun e!827303 () Bool)

(assert (=> b!1289978 (=> res!578186 e!827303)))

(assert (=> b!1289978 (= res!578186 (not ((_ is IntegerValue!6929) (value!72874 t2!34))))))

(declare-fun e!827302 () Bool)

(assert (=> b!1289978 (= e!827302 e!827303)))

(declare-fun b!1289979 () Bool)

(declare-fun e!827301 () Bool)

(assert (=> b!1289979 (= e!827301 e!827302)))

(declare-fun c!212318 () Bool)

(assert (=> b!1289979 (= c!212318 ((_ is IntegerValue!6928) (value!72874 t2!34)))))

(declare-fun b!1289980 () Bool)

(declare-fun inv!17 (TokenValue!2309) Bool)

(assert (=> b!1289980 (= e!827302 (inv!17 (value!72874 t2!34)))))

(declare-fun b!1289981 () Bool)

(declare-fun inv!15 (TokenValue!2309) Bool)

(assert (=> b!1289981 (= e!827303 (inv!15 (value!72874 t2!34)))))

(declare-fun b!1289982 () Bool)

(declare-fun inv!16 (TokenValue!2309) Bool)

(assert (=> b!1289982 (= e!827301 (inv!16 (value!72874 t2!34)))))

(declare-fun d!363546 () Bool)

(declare-fun c!212317 () Bool)

(assert (=> d!363546 (= c!212317 ((_ is IntegerValue!6927) (value!72874 t2!34)))))

(assert (=> d!363546 (= (inv!21 (value!72874 t2!34)) e!827301)))

(assert (= (and d!363546 c!212317) b!1289982))

(assert (= (and d!363546 (not c!212317)) b!1289979))

(assert (= (and b!1289979 c!212318) b!1289980))

(assert (= (and b!1289979 (not c!212318)) b!1289978))

(assert (= (and b!1289978 (not res!578186)) b!1289981))

(declare-fun m!1440627 () Bool)

(assert (=> b!1289980 m!1440627))

(declare-fun m!1440629 () Bool)

(assert (=> b!1289981 m!1440629))

(declare-fun m!1440631 () Bool)

(assert (=> b!1289982 m!1440631))

(assert (=> b!1289948 d!363546))

(declare-fun d!363548 () Bool)

(declare-fun res!578191 () Bool)

(declare-fun e!827308 () Bool)

(assert (=> d!363548 (=> res!578191 e!827308)))

(assert (=> d!363548 (= res!578191 (not ((_ is Cons!12885) rules!2550)))))

(assert (=> d!363548 (= (sepAndNonSepRulesDisjointChars!592 rules!2550 rules!2550) e!827308)))

(declare-fun b!1289987 () Bool)

(declare-fun e!827309 () Bool)

(assert (=> b!1289987 (= e!827308 e!827309)))

(declare-fun res!578192 () Bool)

(assert (=> b!1289987 (=> (not res!578192) (not e!827309))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!283 (Rule!4238 List!12951) Bool)

(assert (=> b!1289987 (= res!578192 (ruleDisjointCharsFromAllFromOtherType!283 (h!18286 rules!2550) rules!2550))))

(declare-fun b!1289988 () Bool)

(assert (=> b!1289988 (= e!827309 (sepAndNonSepRulesDisjointChars!592 rules!2550 (t!117088 rules!2550)))))

(assert (= (and d!363548 (not res!578191)) b!1289987))

(assert (= (and b!1289987 res!578192) b!1289988))

(declare-fun m!1440633 () Bool)

(assert (=> b!1289987 m!1440633))

(declare-fun m!1440635 () Bool)

(assert (=> b!1289988 m!1440635))

(assert (=> b!1289959 d!363548))

(declare-fun d!363550 () Bool)

(declare-fun lt!424788 () Bool)

(declare-fun e!827327 () Bool)

(assert (=> d!363550 (= lt!424788 e!827327)))

(declare-fun res!578217 () Bool)

(assert (=> d!363550 (=> (not res!578217) (not e!827327))))

(declare-datatypes ((List!12952 0))(
  ( (Nil!12886) (Cons!12886 (h!18287 Token!4100) (t!117119 List!12952)) )
))
(declare-datatypes ((IArray!8473 0))(
  ( (IArray!8474 (innerList!4294 List!12952)) )
))
(declare-datatypes ((Conc!4234 0))(
  ( (Node!4234 (left!11089 Conc!4234) (right!11419 Conc!4234) (csize!8698 Int) (cheight!4445 Int)) (Leaf!6540 (xs!6945 IArray!8473) (csize!8699 Int)) (Empty!4234) )
))
(declare-datatypes ((BalanceConc!8408 0))(
  ( (BalanceConc!8409 (c!212341 Conc!4234)) )
))
(declare-fun list!4804 (BalanceConc!8408) List!12952)

(declare-datatypes ((tuple2!12656 0))(
  ( (tuple2!12657 (_1!7214 BalanceConc!8408) (_2!7214 BalanceConc!8406)) )
))
(declare-fun lex!778 (LexerInterface!1914 List!12951 BalanceConc!8406) tuple2!12656)

(declare-fun print!715 (LexerInterface!1914 BalanceConc!8408) BalanceConc!8406)

(declare-fun singletonSeq!796 (Token!4100) BalanceConc!8408)

(assert (=> d!363550 (= res!578217 (= (list!4804 (_1!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t2!34))))) (list!4804 (singletonSeq!796 t2!34))))))

(declare-fun e!827326 () Bool)

(assert (=> d!363550 (= lt!424788 e!827326)))

(declare-fun res!578216 () Bool)

(assert (=> d!363550 (=> (not res!578216) (not e!827326))))

(declare-fun lt!424787 () tuple2!12656)

(declare-fun size!10511 (BalanceConc!8408) Int)

(assert (=> d!363550 (= res!578216 (= (size!10511 (_1!7214 lt!424787)) 1))))

(assert (=> d!363550 (= lt!424787 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t2!34))))))

(assert (=> d!363550 (not (isEmpty!7645 rules!2550))))

(assert (=> d!363550 (= (rulesProduceIndividualToken!883 thiss!19762 rules!2550 t2!34) lt!424788)))

(declare-fun b!1290013 () Bool)

(declare-fun res!578215 () Bool)

(assert (=> b!1290013 (=> (not res!578215) (not e!827326))))

(declare-fun apply!2800 (BalanceConc!8408 Int) Token!4100)

(assert (=> b!1290013 (= res!578215 (= (apply!2800 (_1!7214 lt!424787) 0) t2!34))))

(declare-fun b!1290014 () Bool)

(declare-fun isEmpty!7646 (BalanceConc!8406) Bool)

(assert (=> b!1290014 (= e!827326 (isEmpty!7646 (_2!7214 lt!424787)))))

(declare-fun b!1290015 () Bool)

(assert (=> b!1290015 (= e!827327 (isEmpty!7646 (_2!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t2!34))))))))

(assert (= (and d!363550 res!578216) b!1290013))

(assert (= (and b!1290013 res!578215) b!1290014))

(assert (= (and d!363550 res!578217) b!1290015))

(declare-fun m!1440677 () Bool)

(assert (=> d!363550 m!1440677))

(declare-fun m!1440679 () Bool)

(assert (=> d!363550 m!1440679))

(assert (=> d!363550 m!1440677))

(declare-fun m!1440681 () Bool)

(assert (=> d!363550 m!1440681))

(assert (=> d!363550 m!1440677))

(assert (=> d!363550 m!1440615))

(declare-fun m!1440683 () Bool)

(assert (=> d!363550 m!1440683))

(assert (=> d!363550 m!1440679))

(declare-fun m!1440685 () Bool)

(assert (=> d!363550 m!1440685))

(declare-fun m!1440687 () Bool)

(assert (=> d!363550 m!1440687))

(declare-fun m!1440689 () Bool)

(assert (=> b!1290013 m!1440689))

(declare-fun m!1440691 () Bool)

(assert (=> b!1290014 m!1440691))

(assert (=> b!1290015 m!1440677))

(assert (=> b!1290015 m!1440677))

(assert (=> b!1290015 m!1440679))

(assert (=> b!1290015 m!1440679))

(assert (=> b!1290015 m!1440685))

(declare-fun m!1440693 () Bool)

(assert (=> b!1290015 m!1440693))

(assert (=> b!1289957 d!363550))

(declare-fun d!363572 () Bool)

(declare-fun lt!424791 () Int)

(declare-fun size!10513 (List!12950) Int)

(assert (=> d!363572 (= lt!424791 (size!10513 (list!4803 lt!424775)))))

(declare-fun size!10514 (Conc!4233) Int)

(assert (=> d!363572 (= lt!424791 (size!10514 (c!212311 lt!424775)))))

(assert (=> d!363572 (= (size!10510 lt!424775) lt!424791)))

(declare-fun bs!328440 () Bool)

(assert (= bs!328440 d!363572))

(declare-fun m!1440695 () Bool)

(assert (=> bs!328440 m!1440695))

(assert (=> bs!328440 m!1440695))

(declare-fun m!1440697 () Bool)

(assert (=> bs!328440 m!1440697))

(declare-fun m!1440699 () Bool)

(assert (=> bs!328440 m!1440699))

(assert (=> b!1289947 d!363572))

(declare-fun d!363574 () Bool)

(declare-fun lt!424794 () BalanceConc!8406)

(assert (=> d!363574 (= (list!4803 lt!424794) (originalCharacters!3081 t2!34))))

(declare-fun dynLambda!5620 (Int TokenValue!2309) BalanceConc!8406)

(assert (=> d!363574 (= lt!424794 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34)))))

(assert (=> d!363574 (= (charsOf!1191 t2!34) lt!424794)))

(declare-fun b_lambda!36821 () Bool)

(assert (=> (not b_lambda!36821) (not d!363574)))

(declare-fun t!117103 () Bool)

(declare-fun tb!69293 () Bool)

(assert (=> (and b!1289945 (= (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (toChars!3273 (transformation!2219 (rule!3958 t2!34)))) t!117103) tb!69293))

(declare-fun b!1290020 () Bool)

(declare-fun e!827330 () Bool)

(declare-fun tp!375987 () Bool)

(declare-fun inv!17307 (Conc!4233) Bool)

(assert (=> b!1290020 (= e!827330 (and (inv!17307 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34)))) tp!375987))))

(declare-fun result!83956 () Bool)

(declare-fun inv!17308 (BalanceConc!8406) Bool)

(assert (=> tb!69293 (= result!83956 (and (inv!17308 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34))) e!827330))))

(assert (= tb!69293 b!1290020))

(declare-fun m!1440701 () Bool)

(assert (=> b!1290020 m!1440701))

(declare-fun m!1440703 () Bool)

(assert (=> tb!69293 m!1440703))

(assert (=> d!363574 t!117103))

(declare-fun b_and!85909 () Bool)

(assert (= b_and!85881 (and (=> t!117103 result!83956) b_and!85909)))

(declare-fun t!117105 () Bool)

(declare-fun tb!69295 () Bool)

(assert (=> (and b!1289958 (= (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (toChars!3273 (transformation!2219 (rule!3958 t2!34)))) t!117105) tb!69295))

(declare-fun result!83960 () Bool)

(assert (= result!83960 result!83956))

(assert (=> d!363574 t!117105))

(declare-fun b_and!85911 () Bool)

(assert (= b_and!85885 (and (=> t!117105 result!83960) b_and!85911)))

(declare-fun tb!69297 () Bool)

(declare-fun t!117107 () Bool)

(assert (=> (and b!1289962 (= (toChars!3273 (transformation!2219 (h!18286 rules!2550))) (toChars!3273 (transformation!2219 (rule!3958 t2!34)))) t!117107) tb!69297))

(declare-fun result!83962 () Bool)

(assert (= result!83962 result!83956))

(assert (=> d!363574 t!117107))

(declare-fun b_and!85913 () Bool)

(assert (= b_and!85889 (and (=> t!117107 result!83962) b_and!85913)))

(declare-fun m!1440705 () Bool)

(assert (=> d!363574 m!1440705))

(declare-fun m!1440707 () Bool)

(assert (=> d!363574 m!1440707))

(assert (=> b!1289947 d!363574))

(declare-fun d!363576 () Bool)

(declare-fun choose!7917 (Int) Bool)

(assert (=> d!363576 (= (Exists!691 lambda!50631) (choose!7917 lambda!50631))))

(declare-fun bs!328441 () Bool)

(assert (= bs!328441 d!363576))

(declare-fun m!1440709 () Bool)

(assert (=> bs!328441 m!1440709))

(assert (=> b!1289954 d!363576))

(declare-fun bs!328442 () Bool)

(declare-fun d!363578 () Bool)

(assert (= bs!328442 (and d!363578 b!1289954)))

(declare-fun lambda!50634 () Int)

(assert (=> bs!328442 (= lambda!50634 lambda!50631)))

(assert (=> d!363578 true))

(assert (=> d!363578 true))

(assert (=> d!363578 (Exists!691 lambda!50634)))

(declare-fun lt!424797 () Unit!19046)

(declare-fun choose!7918 (Regex!3533 List!12950) Unit!19046)

(assert (=> d!363578 (= lt!424797 (choose!7918 lt!424773 lt!424776))))

(declare-fun validRegex!1520 (Regex!3533) Bool)

(assert (=> d!363578 (validRegex!1520 lt!424773)))

(assert (=> d!363578 (= (lemmaPrefixMatchThenExistsStringThatMatches!9 lt!424773 lt!424776) lt!424797)))

(declare-fun bs!328443 () Bool)

(assert (= bs!328443 d!363578))

(declare-fun m!1440711 () Bool)

(assert (=> bs!328443 m!1440711))

(declare-fun m!1440713 () Bool)

(assert (=> bs!328443 m!1440713))

(declare-fun m!1440715 () Bool)

(assert (=> bs!328443 m!1440715))

(assert (=> b!1289954 d!363578))

(declare-fun d!363580 () Bool)

(assert (=> d!363580 (= (inv!17300 (tag!2481 (rule!3958 t1!34))) (= (mod (str.len (value!72873 (tag!2481 (rule!3958 t1!34)))) 2) 0))))

(assert (=> b!1289944 d!363580))

(declare-fun d!363582 () Bool)

(declare-fun res!578222 () Bool)

(declare-fun e!827335 () Bool)

(assert (=> d!363582 (=> (not res!578222) (not e!827335))))

(declare-fun semiInverseModEq!840 (Int Int) Bool)

(assert (=> d!363582 (= res!578222 (semiInverseModEq!840 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (toValue!3414 (transformation!2219 (rule!3958 t1!34)))))))

(assert (=> d!363582 (= (inv!17303 (transformation!2219 (rule!3958 t1!34))) e!827335)))

(declare-fun b!1290025 () Bool)

(declare-fun equivClasses!799 (Int Int) Bool)

(assert (=> b!1290025 (= e!827335 (equivClasses!799 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (toValue!3414 (transformation!2219 (rule!3958 t1!34)))))))

(assert (= (and d!363582 res!578222) b!1290025))

(declare-fun m!1440717 () Bool)

(assert (=> d!363582 m!1440717))

(declare-fun m!1440719 () Bool)

(assert (=> b!1290025 m!1440719))

(assert (=> b!1289944 d!363582))

(declare-fun d!363584 () Bool)

(assert (=> d!363584 true))

(declare-fun lt!424800 () Bool)

(declare-fun lambda!50637 () Int)

(declare-fun forall!3245 (List!12951 Int) Bool)

(assert (=> d!363584 (= lt!424800 (forall!3245 rules!2550 lambda!50637))))

(declare-fun e!827341 () Bool)

(assert (=> d!363584 (= lt!424800 e!827341)))

(declare-fun res!578227 () Bool)

(assert (=> d!363584 (=> res!578227 e!827341)))

(assert (=> d!363584 (= res!578227 (not ((_ is Cons!12885) rules!2550)))))

(assert (=> d!363584 (= (rulesValidInductive!702 thiss!19762 rules!2550) lt!424800)))

(declare-fun b!1290030 () Bool)

(declare-fun e!827340 () Bool)

(assert (=> b!1290030 (= e!827341 e!827340)))

(declare-fun res!578228 () Bool)

(assert (=> b!1290030 (=> (not res!578228) (not e!827340))))

(declare-fun ruleValid!544 (LexerInterface!1914 Rule!4238) Bool)

(assert (=> b!1290030 (= res!578228 (ruleValid!544 thiss!19762 (h!18286 rules!2550)))))

(declare-fun b!1290031 () Bool)

(assert (=> b!1290031 (= e!827340 (rulesValidInductive!702 thiss!19762 (t!117088 rules!2550)))))

(assert (= (and d!363584 (not res!578227)) b!1290030))

(assert (= (and b!1290030 res!578228) b!1290031))

(declare-fun m!1440721 () Bool)

(assert (=> d!363584 m!1440721))

(declare-fun m!1440723 () Bool)

(assert (=> b!1290030 m!1440723))

(declare-fun m!1440725 () Bool)

(assert (=> b!1290031 m!1440725))

(assert (=> b!1289955 d!363584))

(declare-fun b!1290034 () Bool)

(declare-fun res!578229 () Bool)

(declare-fun e!827344 () Bool)

(assert (=> b!1290034 (=> res!578229 e!827344)))

(assert (=> b!1290034 (= res!578229 (not ((_ is IntegerValue!6929) (value!72874 t1!34))))))

(declare-fun e!827343 () Bool)

(assert (=> b!1290034 (= e!827343 e!827344)))

(declare-fun b!1290035 () Bool)

(declare-fun e!827342 () Bool)

(assert (=> b!1290035 (= e!827342 e!827343)))

(declare-fun c!212320 () Bool)

(assert (=> b!1290035 (= c!212320 ((_ is IntegerValue!6928) (value!72874 t1!34)))))

(declare-fun b!1290036 () Bool)

(assert (=> b!1290036 (= e!827343 (inv!17 (value!72874 t1!34)))))

(declare-fun b!1290037 () Bool)

(assert (=> b!1290037 (= e!827344 (inv!15 (value!72874 t1!34)))))

(declare-fun b!1290038 () Bool)

(assert (=> b!1290038 (= e!827342 (inv!16 (value!72874 t1!34)))))

(declare-fun d!363586 () Bool)

(declare-fun c!212319 () Bool)

(assert (=> d!363586 (= c!212319 ((_ is IntegerValue!6927) (value!72874 t1!34)))))

(assert (=> d!363586 (= (inv!21 (value!72874 t1!34)) e!827342)))

(assert (= (and d!363586 c!212319) b!1290038))

(assert (= (and d!363586 (not c!212319)) b!1290035))

(assert (= (and b!1290035 c!212320) b!1290036))

(assert (= (and b!1290035 (not c!212320)) b!1290034))

(assert (= (and b!1290034 (not res!578229)) b!1290037))

(declare-fun m!1440727 () Bool)

(assert (=> b!1290036 m!1440727))

(declare-fun m!1440729 () Bool)

(assert (=> b!1290037 m!1440729))

(declare-fun m!1440731 () Bool)

(assert (=> b!1290038 m!1440731))

(assert (=> b!1289953 d!363586))

(declare-fun d!363588 () Bool)

(declare-fun res!578234 () Bool)

(declare-fun e!827347 () Bool)

(assert (=> d!363588 (=> (not res!578234) (not e!827347))))

(declare-fun isEmpty!7648 (List!12950) Bool)

(assert (=> d!363588 (= res!578234 (not (isEmpty!7648 (originalCharacters!3081 t1!34))))))

(assert (=> d!363588 (= (inv!17304 t1!34) e!827347)))

(declare-fun b!1290043 () Bool)

(declare-fun res!578235 () Bool)

(assert (=> b!1290043 (=> (not res!578235) (not e!827347))))

(assert (=> b!1290043 (= res!578235 (= (originalCharacters!3081 t1!34) (list!4803 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34)))))))

(declare-fun b!1290044 () Bool)

(assert (=> b!1290044 (= e!827347 (= (size!10509 t1!34) (size!10513 (originalCharacters!3081 t1!34))))))

(assert (= (and d!363588 res!578234) b!1290043))

(assert (= (and b!1290043 res!578235) b!1290044))

(declare-fun b_lambda!36823 () Bool)

(assert (=> (not b_lambda!36823) (not b!1290043)))

(declare-fun tb!69299 () Bool)

(declare-fun t!117110 () Bool)

(assert (=> (and b!1289945 (= (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (toChars!3273 (transformation!2219 (rule!3958 t1!34)))) t!117110) tb!69299))

(declare-fun b!1290045 () Bool)

(declare-fun e!827348 () Bool)

(declare-fun tp!375988 () Bool)

(assert (=> b!1290045 (= e!827348 (and (inv!17307 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34)))) tp!375988))))

(declare-fun result!83964 () Bool)

(assert (=> tb!69299 (= result!83964 (and (inv!17308 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34))) e!827348))))

(assert (= tb!69299 b!1290045))

(declare-fun m!1440733 () Bool)

(assert (=> b!1290045 m!1440733))

(declare-fun m!1440735 () Bool)

(assert (=> tb!69299 m!1440735))

(assert (=> b!1290043 t!117110))

(declare-fun b_and!85915 () Bool)

(assert (= b_and!85909 (and (=> t!117110 result!83964) b_and!85915)))

(declare-fun t!117112 () Bool)

(declare-fun tb!69301 () Bool)

(assert (=> (and b!1289958 (= (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (toChars!3273 (transformation!2219 (rule!3958 t1!34)))) t!117112) tb!69301))

(declare-fun result!83966 () Bool)

(assert (= result!83966 result!83964))

(assert (=> b!1290043 t!117112))

(declare-fun b_and!85917 () Bool)

(assert (= b_and!85911 (and (=> t!117112 result!83966) b_and!85917)))

(declare-fun t!117114 () Bool)

(declare-fun tb!69303 () Bool)

(assert (=> (and b!1289962 (= (toChars!3273 (transformation!2219 (h!18286 rules!2550))) (toChars!3273 (transformation!2219 (rule!3958 t1!34)))) t!117114) tb!69303))

(declare-fun result!83968 () Bool)

(assert (= result!83968 result!83964))

(assert (=> b!1290043 t!117114))

(declare-fun b_and!85919 () Bool)

(assert (= b_and!85913 (and (=> t!117114 result!83968) b_and!85919)))

(declare-fun m!1440737 () Bool)

(assert (=> d!363588 m!1440737))

(declare-fun m!1440739 () Bool)

(assert (=> b!1290043 m!1440739))

(assert (=> b!1290043 m!1440739))

(declare-fun m!1440741 () Bool)

(assert (=> b!1290043 m!1440741))

(declare-fun m!1440743 () Bool)

(assert (=> b!1290044 m!1440743))

(assert (=> start!113182 d!363588))

(declare-fun d!363590 () Bool)

(declare-fun res!578242 () Bool)

(declare-fun e!827353 () Bool)

(assert (=> d!363590 (=> (not res!578242) (not e!827353))))

(assert (=> d!363590 (= res!578242 (not (isEmpty!7648 (originalCharacters!3081 t2!34))))))

(assert (=> d!363590 (= (inv!17304 t2!34) e!827353)))

(declare-fun b!1290052 () Bool)

(declare-fun res!578243 () Bool)

(assert (=> b!1290052 (=> (not res!578243) (not e!827353))))

(assert (=> b!1290052 (= res!578243 (= (originalCharacters!3081 t2!34) (list!4803 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34)))))))

(declare-fun b!1290053 () Bool)

(assert (=> b!1290053 (= e!827353 (= (size!10509 t2!34) (size!10513 (originalCharacters!3081 t2!34))))))

(assert (= (and d!363590 res!578242) b!1290052))

(assert (= (and b!1290052 res!578243) b!1290053))

(declare-fun b_lambda!36825 () Bool)

(assert (=> (not b_lambda!36825) (not b!1290052)))

(assert (=> b!1290052 t!117103))

(declare-fun b_and!85921 () Bool)

(assert (= b_and!85915 (and (=> t!117103 result!83956) b_and!85921)))

(assert (=> b!1290052 t!117105))

(declare-fun b_and!85923 () Bool)

(assert (= b_and!85917 (and (=> t!117105 result!83960) b_and!85923)))

(assert (=> b!1290052 t!117107))

(declare-fun b_and!85925 () Bool)

(assert (= b_and!85919 (and (=> t!117107 result!83962) b_and!85925)))

(declare-fun m!1440745 () Bool)

(assert (=> d!363590 m!1440745))

(assert (=> b!1290052 m!1440707))

(assert (=> b!1290052 m!1440707))

(declare-fun m!1440747 () Bool)

(assert (=> b!1290052 m!1440747))

(declare-fun m!1440749 () Bool)

(assert (=> b!1290053 m!1440749))

(assert (=> start!113182 d!363590))

(declare-fun d!363592 () Bool)

(declare-fun prefixMatchZipperSequence!134 (Regex!3533 BalanceConc!8406) Bool)

(declare-fun ++!3262 (BalanceConc!8406 BalanceConc!8406) BalanceConc!8406)

(declare-fun singletonSeq!798 (C!7356) BalanceConc!8406)

(assert (=> d!363592 (= (separableTokensPredicate!197 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!134 (rulesRegex!104 thiss!19762 rules!2550) (++!3262 (charsOf!1191 t1!34) (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))))))))

(declare-fun bs!328447 () Bool)

(assert (= bs!328447 d!363592))

(assert (=> bs!328447 m!1440613))

(declare-fun m!1440793 () Bool)

(assert (=> bs!328447 m!1440793))

(assert (=> bs!328447 m!1440599))

(declare-fun m!1440795 () Bool)

(assert (=> bs!328447 m!1440795))

(declare-fun m!1440797 () Bool)

(assert (=> bs!328447 m!1440797))

(assert (=> bs!328447 m!1440603))

(assert (=> bs!328447 m!1440613))

(assert (=> bs!328447 m!1440793))

(assert (=> bs!328447 m!1440795))

(assert (=> bs!328447 m!1440599))

(assert (=> bs!328447 m!1440603))

(assert (=> bs!328447 m!1440797))

(declare-fun m!1440799 () Bool)

(assert (=> bs!328447 m!1440799))

(assert (=> b!1289952 d!363592))

(declare-fun d!363608 () Bool)

(declare-fun res!578261 () Bool)

(declare-fun e!827376 () Bool)

(assert (=> d!363608 (=> (not res!578261) (not e!827376))))

(declare-fun rulesValid!809 (LexerInterface!1914 List!12951) Bool)

(assert (=> d!363608 (= res!578261 (rulesValid!809 thiss!19762 rules!2550))))

(assert (=> d!363608 (= (rulesInvariant!1784 thiss!19762 rules!2550) e!827376)))

(declare-fun b!1290085 () Bool)

(declare-datatypes ((List!12954 0))(
  ( (Nil!12888) (Cons!12888 (h!18289 String!15781) (t!117125 List!12954)) )
))
(declare-fun noDuplicateTag!809 (LexerInterface!1914 List!12951 List!12954) Bool)

(assert (=> b!1290085 (= e!827376 (noDuplicateTag!809 thiss!19762 rules!2550 Nil!12888))))

(assert (= (and d!363608 res!578261) b!1290085))

(declare-fun m!1440801 () Bool)

(assert (=> d!363608 m!1440801))

(declare-fun m!1440803 () Bool)

(assert (=> b!1290085 m!1440803))

(assert (=> b!1289963 d!363608))

(declare-fun d!363610 () Bool)

(declare-fun lt!424814 () Bool)

(declare-fun e!827378 () Bool)

(assert (=> d!363610 (= lt!424814 e!827378)))

(declare-fun res!578264 () Bool)

(assert (=> d!363610 (=> (not res!578264) (not e!827378))))

(assert (=> d!363610 (= res!578264 (= (list!4804 (_1!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t1!34))))) (list!4804 (singletonSeq!796 t1!34))))))

(declare-fun e!827377 () Bool)

(assert (=> d!363610 (= lt!424814 e!827377)))

(declare-fun res!578263 () Bool)

(assert (=> d!363610 (=> (not res!578263) (not e!827377))))

(declare-fun lt!424813 () tuple2!12656)

(assert (=> d!363610 (= res!578263 (= (size!10511 (_1!7214 lt!424813)) 1))))

(assert (=> d!363610 (= lt!424813 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t1!34))))))

(assert (=> d!363610 (not (isEmpty!7645 rules!2550))))

(assert (=> d!363610 (= (rulesProduceIndividualToken!883 thiss!19762 rules!2550 t1!34) lt!424814)))

(declare-fun b!1290086 () Bool)

(declare-fun res!578262 () Bool)

(assert (=> b!1290086 (=> (not res!578262) (not e!827377))))

(assert (=> b!1290086 (= res!578262 (= (apply!2800 (_1!7214 lt!424813) 0) t1!34))))

(declare-fun b!1290087 () Bool)

(assert (=> b!1290087 (= e!827377 (isEmpty!7646 (_2!7214 lt!424813)))))

(declare-fun b!1290088 () Bool)

(assert (=> b!1290088 (= e!827378 (isEmpty!7646 (_2!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t1!34))))))))

(assert (= (and d!363610 res!578263) b!1290086))

(assert (= (and b!1290086 res!578262) b!1290087))

(assert (= (and d!363610 res!578264) b!1290088))

(declare-fun m!1440805 () Bool)

(assert (=> d!363610 m!1440805))

(declare-fun m!1440807 () Bool)

(assert (=> d!363610 m!1440807))

(assert (=> d!363610 m!1440805))

(declare-fun m!1440809 () Bool)

(assert (=> d!363610 m!1440809))

(assert (=> d!363610 m!1440805))

(assert (=> d!363610 m!1440615))

(declare-fun m!1440811 () Bool)

(assert (=> d!363610 m!1440811))

(assert (=> d!363610 m!1440807))

(declare-fun m!1440813 () Bool)

(assert (=> d!363610 m!1440813))

(declare-fun m!1440815 () Bool)

(assert (=> d!363610 m!1440815))

(declare-fun m!1440817 () Bool)

(assert (=> b!1290086 m!1440817))

(declare-fun m!1440819 () Bool)

(assert (=> b!1290087 m!1440819))

(assert (=> b!1290088 m!1440805))

(assert (=> b!1290088 m!1440805))

(assert (=> b!1290088 m!1440807))

(assert (=> b!1290088 m!1440807))

(assert (=> b!1290088 m!1440813))

(declare-fun m!1440821 () Bool)

(assert (=> b!1290088 m!1440821))

(assert (=> b!1289950 d!363610))

(declare-fun d!363612 () Bool)

(declare-fun c!212329 () Bool)

(assert (=> d!363612 (= c!212329 (isEmpty!7648 lt!424776))))

(declare-fun e!827381 () Bool)

(assert (=> d!363612 (= (prefixMatch!46 lt!424773 lt!424776) e!827381)))

(declare-fun b!1290093 () Bool)

(declare-fun lostCause!247 (Regex!3533) Bool)

(assert (=> b!1290093 (= e!827381 (not (lostCause!247 lt!424773)))))

(declare-fun b!1290094 () Bool)

(declare-fun derivativeStep!870 (Regex!3533 C!7356) Regex!3533)

(declare-fun head!2207 (List!12950) C!7356)

(declare-fun tail!1835 (List!12950) List!12950)

(assert (=> b!1290094 (= e!827381 (prefixMatch!46 (derivativeStep!870 lt!424773 (head!2207 lt!424776)) (tail!1835 lt!424776)))))

(assert (= (and d!363612 c!212329) b!1290093))

(assert (= (and d!363612 (not c!212329)) b!1290094))

(declare-fun m!1440823 () Bool)

(assert (=> d!363612 m!1440823))

(declare-fun m!1440825 () Bool)

(assert (=> b!1290093 m!1440825))

(declare-fun m!1440827 () Bool)

(assert (=> b!1290094 m!1440827))

(assert (=> b!1290094 m!1440827))

(declare-fun m!1440829 () Bool)

(assert (=> b!1290094 m!1440829))

(declare-fun m!1440831 () Bool)

(assert (=> b!1290094 m!1440831))

(assert (=> b!1290094 m!1440829))

(assert (=> b!1290094 m!1440831))

(declare-fun m!1440833 () Bool)

(assert (=> b!1290094 m!1440833))

(assert (=> b!1289961 d!363612))

(declare-fun d!363614 () Bool)

(declare-fun list!4806 (Conc!4233) List!12950)

(assert (=> d!363614 (= (list!4803 (charsOf!1191 t1!34)) (list!4806 (c!212311 (charsOf!1191 t1!34))))))

(declare-fun bs!328448 () Bool)

(assert (= bs!328448 d!363614))

(declare-fun m!1440835 () Bool)

(assert (=> bs!328448 m!1440835))

(assert (=> b!1289961 d!363614))

(declare-fun d!363616 () Bool)

(declare-fun lt!424815 () BalanceConc!8406)

(assert (=> d!363616 (= (list!4803 lt!424815) (originalCharacters!3081 t1!34))))

(assert (=> d!363616 (= lt!424815 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34)))))

(assert (=> d!363616 (= (charsOf!1191 t1!34) lt!424815)))

(declare-fun b_lambda!36827 () Bool)

(assert (=> (not b_lambda!36827) (not d!363616)))

(assert (=> d!363616 t!117110))

(declare-fun b_and!85927 () Bool)

(assert (= b_and!85921 (and (=> t!117110 result!83964) b_and!85927)))

(assert (=> d!363616 t!117112))

(declare-fun b_and!85929 () Bool)

(assert (= b_and!85923 (and (=> t!117112 result!83966) b_and!85929)))

(assert (=> d!363616 t!117114))

(declare-fun b_and!85931 () Bool)

(assert (= b_and!85925 (and (=> t!117114 result!83968) b_and!85931)))

(declare-fun m!1440837 () Bool)

(assert (=> d!363616 m!1440837))

(assert (=> d!363616 m!1440739))

(assert (=> b!1289961 d!363616))

(declare-fun d!363618 () Bool)

(declare-fun lt!424818 () C!7356)

(declare-fun apply!2802 (List!12950 Int) C!7356)

(assert (=> d!363618 (= lt!424818 (apply!2802 (list!4803 lt!424775) 0))))

(declare-fun apply!2803 (Conc!4233 Int) C!7356)

(assert (=> d!363618 (= lt!424818 (apply!2803 (c!212311 lt!424775) 0))))

(declare-fun e!827384 () Bool)

(assert (=> d!363618 e!827384))

(declare-fun res!578267 () Bool)

(assert (=> d!363618 (=> (not res!578267) (not e!827384))))

(assert (=> d!363618 (= res!578267 (<= 0 0))))

(assert (=> d!363618 (= (apply!2799 lt!424775 0) lt!424818)))

(declare-fun b!1290097 () Bool)

(assert (=> b!1290097 (= e!827384 (< 0 (size!10510 lt!424775)))))

(assert (= (and d!363618 res!578267) b!1290097))

(assert (=> d!363618 m!1440695))

(assert (=> d!363618 m!1440695))

(declare-fun m!1440839 () Bool)

(assert (=> d!363618 m!1440839))

(declare-fun m!1440841 () Bool)

(assert (=> d!363618 m!1440841))

(assert (=> b!1290097 m!1440611))

(assert (=> b!1289961 d!363618))

(declare-fun d!363620 () Bool)

(declare-fun lt!424823 () Unit!19046)

(declare-fun lemma!41 (List!12951 LexerInterface!1914 List!12951) Unit!19046)

(assert (=> d!363620 (= lt!424823 (lemma!41 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!50646 () Int)

(declare-datatypes ((List!12955 0))(
  ( (Nil!12889) (Cons!12889 (h!18290 Regex!3533) (t!117126 List!12955)) )
))
(declare-fun generalisedUnion!45 (List!12955) Regex!3533)

(declare-fun map!2804 (List!12951 Int) List!12955)

(assert (=> d!363620 (= (rulesRegex!104 thiss!19762 rules!2550) (generalisedUnion!45 (map!2804 rules!2550 lambda!50646)))))

(declare-fun bs!328450 () Bool)

(assert (= bs!328450 d!363620))

(declare-fun m!1440879 () Bool)

(assert (=> bs!328450 m!1440879))

(declare-fun m!1440881 () Bool)

(assert (=> bs!328450 m!1440881))

(assert (=> bs!328450 m!1440881))

(declare-fun m!1440883 () Bool)

(assert (=> bs!328450 m!1440883))

(assert (=> b!1289961 d!363620))

(declare-fun e!827406 () Bool)

(declare-fun b!1290128 () Bool)

(declare-fun lt!424828 () List!12950)

(assert (=> b!1290128 (= e!827406 (or (not (= (Cons!12884 (apply!2799 lt!424775 0) Nil!12884) Nil!12884)) (= lt!424828 (list!4803 (charsOf!1191 t1!34)))))))

(declare-fun b!1290126 () Bool)

(declare-fun e!827405 () List!12950)

(assert (=> b!1290126 (= e!827405 (Cons!12884 (h!18285 (list!4803 (charsOf!1191 t1!34))) (++!3261 (t!117087 (list!4803 (charsOf!1191 t1!34))) (Cons!12884 (apply!2799 lt!424775 0) Nil!12884))))))

(declare-fun d!363630 () Bool)

(assert (=> d!363630 e!827406))

(declare-fun res!578288 () Bool)

(assert (=> d!363630 (=> (not res!578288) (not e!827406))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1820 (List!12950) (InoxSet C!7356))

(assert (=> d!363630 (= res!578288 (= (content!1820 lt!424828) ((_ map or) (content!1820 (list!4803 (charsOf!1191 t1!34))) (content!1820 (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)))))))

(assert (=> d!363630 (= lt!424828 e!827405)))

(declare-fun c!212334 () Bool)

(assert (=> d!363630 (= c!212334 ((_ is Nil!12884) (list!4803 (charsOf!1191 t1!34))))))

(assert (=> d!363630 (= (++!3261 (list!4803 (charsOf!1191 t1!34)) (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)) lt!424828)))

(declare-fun b!1290125 () Bool)

(assert (=> b!1290125 (= e!827405 (Cons!12884 (apply!2799 lt!424775 0) Nil!12884))))

(declare-fun b!1290127 () Bool)

(declare-fun res!578287 () Bool)

(assert (=> b!1290127 (=> (not res!578287) (not e!827406))))

(assert (=> b!1290127 (= res!578287 (= (size!10513 lt!424828) (+ (size!10513 (list!4803 (charsOf!1191 t1!34))) (size!10513 (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)))))))

(assert (= (and d!363630 c!212334) b!1290125))

(assert (= (and d!363630 (not c!212334)) b!1290126))

(assert (= (and d!363630 res!578288) b!1290127))

(assert (= (and b!1290127 res!578287) b!1290128))

(declare-fun m!1440889 () Bool)

(assert (=> b!1290126 m!1440889))

(declare-fun m!1440891 () Bool)

(assert (=> d!363630 m!1440891))

(assert (=> d!363630 m!1440595))

(declare-fun m!1440893 () Bool)

(assert (=> d!363630 m!1440893))

(declare-fun m!1440895 () Bool)

(assert (=> d!363630 m!1440895))

(declare-fun m!1440897 () Bool)

(assert (=> b!1290127 m!1440897))

(assert (=> b!1290127 m!1440595))

(declare-fun m!1440899 () Bool)

(assert (=> b!1290127 m!1440899))

(declare-fun m!1440901 () Bool)

(assert (=> b!1290127 m!1440901))

(assert (=> b!1289961 d!363630))

(declare-fun d!363634 () Bool)

(assert (=> d!363634 (= (isEmpty!7645 rules!2550) ((_ is Nil!12885) rules!2550))))

(assert (=> b!1289951 d!363634))

(declare-fun d!363638 () Bool)

(assert (=> d!363638 (= (inv!17300 (tag!2481 (h!18286 rules!2550))) (= (mod (str.len (value!72873 (tag!2481 (h!18286 rules!2550)))) 2) 0))))

(assert (=> b!1289949 d!363638))

(declare-fun d!363640 () Bool)

(declare-fun res!578290 () Bool)

(declare-fun e!827408 () Bool)

(assert (=> d!363640 (=> (not res!578290) (not e!827408))))

(assert (=> d!363640 (= res!578290 (semiInverseModEq!840 (toChars!3273 (transformation!2219 (h!18286 rules!2550))) (toValue!3414 (transformation!2219 (h!18286 rules!2550)))))))

(assert (=> d!363640 (= (inv!17303 (transformation!2219 (h!18286 rules!2550))) e!827408)))

(declare-fun b!1290130 () Bool)

(assert (=> b!1290130 (= e!827408 (equivClasses!799 (toChars!3273 (transformation!2219 (h!18286 rules!2550))) (toValue!3414 (transformation!2219 (h!18286 rules!2550)))))))

(assert (= (and d!363640 res!578290) b!1290130))

(declare-fun m!1440907 () Bool)

(assert (=> d!363640 m!1440907))

(declare-fun m!1440909 () Bool)

(assert (=> b!1290130 m!1440909))

(assert (=> b!1289949 d!363640))

(declare-fun d!363642 () Bool)

(assert (=> d!363642 (= (inv!17300 (tag!2481 (rule!3958 t2!34))) (= (mod (str.len (value!72873 (tag!2481 (rule!3958 t2!34)))) 2) 0))))

(assert (=> b!1289960 d!363642))

(declare-fun d!363644 () Bool)

(declare-fun res!578291 () Bool)

(declare-fun e!827409 () Bool)

(assert (=> d!363644 (=> (not res!578291) (not e!827409))))

(assert (=> d!363644 (= res!578291 (semiInverseModEq!840 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (toValue!3414 (transformation!2219 (rule!3958 t2!34)))))))

(assert (=> d!363644 (= (inv!17303 (transformation!2219 (rule!3958 t2!34))) e!827409)))

(declare-fun b!1290131 () Bool)

(assert (=> b!1290131 (= e!827409 (equivClasses!799 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (toValue!3414 (transformation!2219 (rule!3958 t2!34)))))))

(assert (= (and d!363644 res!578291) b!1290131))

(declare-fun m!1440911 () Bool)

(assert (=> d!363644 m!1440911))

(declare-fun m!1440913 () Bool)

(assert (=> b!1290131 m!1440913))

(assert (=> b!1289960 d!363644))

(declare-fun b!1290136 () Bool)

(declare-fun e!827412 () Bool)

(declare-fun tp_is_empty!6561 () Bool)

(declare-fun tp!375991 () Bool)

(assert (=> b!1290136 (= e!827412 (and tp_is_empty!6561 tp!375991))))

(assert (=> b!1289953 (= tp!375979 e!827412)))

(assert (= (and b!1289953 ((_ is Cons!12884) (originalCharacters!3081 t1!34))) b!1290136))

(declare-fun b!1290137 () Bool)

(declare-fun e!827413 () Bool)

(declare-fun tp!375992 () Bool)

(assert (=> b!1290137 (= e!827413 (and tp_is_empty!6561 tp!375992))))

(assert (=> b!1289948 (= tp!375978 e!827413)))

(assert (= (and b!1289948 ((_ is Cons!12884) (originalCharacters!3081 t2!34))) b!1290137))

(declare-fun b!1290148 () Bool)

(declare-fun b_free!30471 () Bool)

(declare-fun b_next!31175 () Bool)

(assert (=> b!1290148 (= b_free!30471 (not b_next!31175))))

(declare-fun tp!376003 () Bool)

(declare-fun b_and!85939 () Bool)

(assert (=> b!1290148 (= tp!376003 b_and!85939)))

(declare-fun b_free!30473 () Bool)

(declare-fun b_next!31177 () Bool)

(assert (=> b!1290148 (= b_free!30473 (not b_next!31177))))

(declare-fun tb!69305 () Bool)

(declare-fun t!117116 () Bool)

(assert (=> (and b!1290148 (= (toChars!3273 (transformation!2219 (h!18286 (t!117088 rules!2550)))) (toChars!3273 (transformation!2219 (rule!3958 t2!34)))) t!117116) tb!69305))

(declare-fun result!83974 () Bool)

(assert (= result!83974 result!83956))

(assert (=> d!363574 t!117116))

(declare-fun tb!69307 () Bool)

(declare-fun t!117118 () Bool)

(assert (=> (and b!1290148 (= (toChars!3273 (transformation!2219 (h!18286 (t!117088 rules!2550)))) (toChars!3273 (transformation!2219 (rule!3958 t1!34)))) t!117118) tb!69307))

(declare-fun result!83976 () Bool)

(assert (= result!83976 result!83964))

(assert (=> b!1290043 t!117118))

(assert (=> b!1290052 t!117116))

(assert (=> d!363616 t!117118))

(declare-fun b_and!85941 () Bool)

(declare-fun tp!376002 () Bool)

(assert (=> b!1290148 (= tp!376002 (and (=> t!117116 result!83974) (=> t!117118 result!83976) b_and!85941))))

(declare-fun e!827424 () Bool)

(assert (=> b!1290148 (= e!827424 (and tp!376003 tp!376002))))

(declare-fun e!827425 () Bool)

(declare-fun tp!376001 () Bool)

(declare-fun b!1290147 () Bool)

(assert (=> b!1290147 (= e!827425 (and tp!376001 (inv!17300 (tag!2481 (h!18286 (t!117088 rules!2550)))) (inv!17303 (transformation!2219 (h!18286 (t!117088 rules!2550)))) e!827424))))

(declare-fun b!1290146 () Bool)

(declare-fun e!827422 () Bool)

(declare-fun tp!376004 () Bool)

(assert (=> b!1290146 (= e!827422 (and e!827425 tp!376004))))

(assert (=> b!1289946 (= tp!375969 e!827422)))

(assert (= b!1290147 b!1290148))

(assert (= b!1290146 b!1290147))

(assert (= (and b!1289946 ((_ is Cons!12885) (t!117088 rules!2550))) b!1290146))

(declare-fun m!1440919 () Bool)

(assert (=> b!1290147 m!1440919))

(declare-fun m!1440921 () Bool)

(assert (=> b!1290147 m!1440921))

(declare-fun b!1290166 () Bool)

(declare-fun e!827431 () Bool)

(declare-fun tp!376015 () Bool)

(declare-fun tp!376016 () Bool)

(assert (=> b!1290166 (= e!827431 (and tp!376015 tp!376016))))

(assert (=> b!1289949 (= tp!375980 e!827431)))

(declare-fun b!1290168 () Bool)

(declare-fun tp!376017 () Bool)

(declare-fun tp!376018 () Bool)

(assert (=> b!1290168 (= e!827431 (and tp!376017 tp!376018))))

(declare-fun b!1290167 () Bool)

(declare-fun tp!376019 () Bool)

(assert (=> b!1290167 (= e!827431 tp!376019)))

(declare-fun b!1290165 () Bool)

(assert (=> b!1290165 (= e!827431 tp_is_empty!6561)))

(assert (= (and b!1289949 ((_ is ElementMatch!3533) (regex!2219 (h!18286 rules!2550)))) b!1290165))

(assert (= (and b!1289949 ((_ is Concat!5843) (regex!2219 (h!18286 rules!2550)))) b!1290166))

(assert (= (and b!1289949 ((_ is Star!3533) (regex!2219 (h!18286 rules!2550)))) b!1290167))

(assert (= (and b!1289949 ((_ is Union!3533) (regex!2219 (h!18286 rules!2550)))) b!1290168))

(declare-fun b!1290170 () Bool)

(declare-fun e!827432 () Bool)

(declare-fun tp!376020 () Bool)

(declare-fun tp!376021 () Bool)

(assert (=> b!1290170 (= e!827432 (and tp!376020 tp!376021))))

(assert (=> b!1289944 (= tp!375974 e!827432)))

(declare-fun b!1290172 () Bool)

(declare-fun tp!376022 () Bool)

(declare-fun tp!376023 () Bool)

(assert (=> b!1290172 (= e!827432 (and tp!376022 tp!376023))))

(declare-fun b!1290171 () Bool)

(declare-fun tp!376024 () Bool)

(assert (=> b!1290171 (= e!827432 tp!376024)))

(declare-fun b!1290169 () Bool)

(assert (=> b!1290169 (= e!827432 tp_is_empty!6561)))

(assert (= (and b!1289944 ((_ is ElementMatch!3533) (regex!2219 (rule!3958 t1!34)))) b!1290169))

(assert (= (and b!1289944 ((_ is Concat!5843) (regex!2219 (rule!3958 t1!34)))) b!1290170))

(assert (= (and b!1289944 ((_ is Star!3533) (regex!2219 (rule!3958 t1!34)))) b!1290171))

(assert (= (and b!1289944 ((_ is Union!3533) (regex!2219 (rule!3958 t1!34)))) b!1290172))

(declare-fun b!1290174 () Bool)

(declare-fun e!827433 () Bool)

(declare-fun tp!376025 () Bool)

(declare-fun tp!376026 () Bool)

(assert (=> b!1290174 (= e!827433 (and tp!376025 tp!376026))))

(assert (=> b!1289960 (= tp!375975 e!827433)))

(declare-fun b!1290176 () Bool)

(declare-fun tp!376027 () Bool)

(declare-fun tp!376028 () Bool)

(assert (=> b!1290176 (= e!827433 (and tp!376027 tp!376028))))

(declare-fun b!1290175 () Bool)

(declare-fun tp!376029 () Bool)

(assert (=> b!1290175 (= e!827433 tp!376029)))

(declare-fun b!1290173 () Bool)

(assert (=> b!1290173 (= e!827433 tp_is_empty!6561)))

(assert (= (and b!1289960 ((_ is ElementMatch!3533) (regex!2219 (rule!3958 t2!34)))) b!1290173))

(assert (= (and b!1289960 ((_ is Concat!5843) (regex!2219 (rule!3958 t2!34)))) b!1290174))

(assert (= (and b!1289960 ((_ is Star!3533) (regex!2219 (rule!3958 t2!34)))) b!1290175))

(assert (= (and b!1289960 ((_ is Union!3533) (regex!2219 (rule!3958 t2!34)))) b!1290176))

(declare-fun b_lambda!36831 () Bool)

(assert (= b_lambda!36825 (or (and b!1289945 b_free!30461) (and b!1289958 b_free!30465 (= (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (toChars!3273 (transformation!2219 (rule!3958 t2!34))))) (and b!1289962 b_free!30469 (= (toChars!3273 (transformation!2219 (h!18286 rules!2550))) (toChars!3273 (transformation!2219 (rule!3958 t2!34))))) (and b!1290148 b_free!30473 (= (toChars!3273 (transformation!2219 (h!18286 (t!117088 rules!2550)))) (toChars!3273 (transformation!2219 (rule!3958 t2!34))))) b_lambda!36831)))

(declare-fun b_lambda!36833 () Bool)

(assert (= b_lambda!36821 (or (and b!1289945 b_free!30461) (and b!1289958 b_free!30465 (= (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (toChars!3273 (transformation!2219 (rule!3958 t2!34))))) (and b!1289962 b_free!30469 (= (toChars!3273 (transformation!2219 (h!18286 rules!2550))) (toChars!3273 (transformation!2219 (rule!3958 t2!34))))) (and b!1290148 b_free!30473 (= (toChars!3273 (transformation!2219 (h!18286 (t!117088 rules!2550)))) (toChars!3273 (transformation!2219 (rule!3958 t2!34))))) b_lambda!36833)))

(declare-fun b_lambda!36835 () Bool)

(assert (= b_lambda!36823 (or (and b!1289945 b_free!30461 (= (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (toChars!3273 (transformation!2219 (rule!3958 t1!34))))) (and b!1289958 b_free!30465) (and b!1289962 b_free!30469 (= (toChars!3273 (transformation!2219 (h!18286 rules!2550))) (toChars!3273 (transformation!2219 (rule!3958 t1!34))))) (and b!1290148 b_free!30473 (= (toChars!3273 (transformation!2219 (h!18286 (t!117088 rules!2550)))) (toChars!3273 (transformation!2219 (rule!3958 t1!34))))) b_lambda!36835)))

(declare-fun b_lambda!36837 () Bool)

(assert (= b_lambda!36827 (or (and b!1289945 b_free!30461 (= (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (toChars!3273 (transformation!2219 (rule!3958 t1!34))))) (and b!1289958 b_free!30465) (and b!1289962 b_free!30469 (= (toChars!3273 (transformation!2219 (h!18286 rules!2550))) (toChars!3273 (transformation!2219 (rule!3958 t1!34))))) (and b!1290148 b_free!30473 (= (toChars!3273 (transformation!2219 (h!18286 (t!117088 rules!2550)))) (toChars!3273 (transformation!2219 (rule!3958 t1!34))))) b_lambda!36837)))

(check-sat (not d!363576) (not b!1290053) (not tb!69299) (not b!1290126) (not b!1290025) (not d!363574) (not b!1290030) (not d!363612) (not d!363630) (not b_next!31167) (not b!1290146) (not b!1290168) b_and!85931 (not b!1290131) (not d!363584) (not b!1290036) b_and!85887 (not b!1290166) (not b!1290043) (not b!1290045) (not b!1290087) b_and!85941 b_and!85939 (not b_lambda!36831) (not d!363614) (not b!1290086) (not b!1290172) (not b!1289988) (not b_next!31175) (not d!363578) (not b_next!31173) (not b!1290085) b_and!85883 (not d!363616) (not b!1290097) (not b!1290147) (not d!363618) (not b!1290037) (not b!1289980) (not d!363644) (not b!1290020) (not b_lambda!36837) (not b!1290136) (not tb!69293) (not b!1290167) (not d!363620) (not b_lambda!36833) (not b!1290174) (not b_next!31171) (not b!1290038) (not b!1290127) (not b!1289982) tp_is_empty!6561 b_and!85927 (not b!1290014) (not b!1290088) (not d!363590) (not d!363550) (not b!1290094) (not d!363610) (not b!1290044) (not b_lambda!36835) (not b!1290052) (not b_next!31165) (not b!1290130) (not b!1290013) (not b!1290031) (not d!363608) (not b_next!31169) (not b!1290093) b_and!85929 (not d!363582) (not b!1290137) (not b!1290015) (not b!1290175) (not b_next!31177) (not b!1289987) (not b!1290171) (not d!363572) (not b!1289981) (not d!363588) b_and!85879 (not d!363592) (not b!1290176) (not b!1290170) (not d!363640) (not b_next!31163))
(check-sat (not b_next!31167) b_and!85931 b_and!85887 (not b_next!31175) (not b_next!31171) b_and!85927 (not b_next!31165) (not b_next!31177) b_and!85879 (not b_next!31163) b_and!85941 b_and!85939 (not b_next!31173) b_and!85883 (not b_next!31169) b_and!85929)
(get-model)

(declare-fun d!363654 () Bool)

(assert (=> d!363654 (= (list!4803 lt!424794) (list!4806 (c!212311 lt!424794)))))

(declare-fun bs!328453 () Bool)

(assert (= bs!328453 d!363654))

(declare-fun m!1440959 () Bool)

(assert (=> bs!328453 m!1440959))

(assert (=> d!363574 d!363654))

(declare-fun d!363656 () Bool)

(declare-fun lt!424839 () Int)

(assert (=> d!363656 (>= lt!424839 0)))

(declare-fun e!827463 () Int)

(assert (=> d!363656 (= lt!424839 e!827463)))

(declare-fun c!212345 () Bool)

(assert (=> d!363656 (= c!212345 ((_ is Nil!12884) (originalCharacters!3081 t2!34)))))

(assert (=> d!363656 (= (size!10513 (originalCharacters!3081 t2!34)) lt!424839)))

(declare-fun b!1290232 () Bool)

(assert (=> b!1290232 (= e!827463 0)))

(declare-fun b!1290233 () Bool)

(assert (=> b!1290233 (= e!827463 (+ 1 (size!10513 (t!117087 (originalCharacters!3081 t2!34)))))))

(assert (= (and d!363656 c!212345) b!1290232))

(assert (= (and d!363656 (not c!212345)) b!1290233))

(declare-fun m!1440961 () Bool)

(assert (=> b!1290233 m!1440961))

(assert (=> b!1290053 d!363656))

(declare-fun d!363658 () Bool)

(assert (=> d!363658 (= (Exists!691 lambda!50634) (choose!7917 lambda!50634))))

(declare-fun bs!328454 () Bool)

(assert (= bs!328454 d!363658))

(declare-fun m!1440963 () Bool)

(assert (=> bs!328454 m!1440963))

(assert (=> d!363578 d!363658))

(declare-fun bs!328455 () Bool)

(declare-fun d!363660 () Bool)

(assert (= bs!328455 (and d!363660 b!1289954)))

(declare-fun lambda!50652 () Int)

(assert (=> bs!328455 (= lambda!50652 lambda!50631)))

(declare-fun bs!328456 () Bool)

(assert (= bs!328456 (and d!363660 d!363578)))

(assert (=> bs!328456 (= lambda!50652 lambda!50634)))

(assert (=> d!363660 true))

(assert (=> d!363660 true))

(assert (=> d!363660 (Exists!691 lambda!50652)))

(assert (=> d!363660 true))

(declare-fun _$103!32 () Unit!19046)

(assert (=> d!363660 (= (choose!7918 lt!424773 lt!424776) _$103!32)))

(declare-fun bs!328457 () Bool)

(assert (= bs!328457 d!363660))

(declare-fun m!1440965 () Bool)

(assert (=> bs!328457 m!1440965))

(assert (=> d!363578 d!363660))

(declare-fun c!212350 () Bool)

(declare-fun call!88602 () Bool)

(declare-fun c!212351 () Bool)

(declare-fun bm!88597 () Bool)

(assert (=> bm!88597 (= call!88602 (validRegex!1520 (ite c!212350 (reg!3862 lt!424773) (ite c!212351 (regTwo!7579 lt!424773) (regTwo!7578 lt!424773)))))))

(declare-fun b!1290254 () Bool)

(declare-fun e!827483 () Bool)

(assert (=> b!1290254 (= e!827483 call!88602)))

(declare-fun b!1290255 () Bool)

(declare-fun e!827486 () Bool)

(declare-fun call!88603 () Bool)

(assert (=> b!1290255 (= e!827486 call!88603)))

(declare-fun b!1290256 () Bool)

(declare-fun res!578318 () Bool)

(declare-fun e!827484 () Bool)

(assert (=> b!1290256 (=> (not res!578318) (not e!827484))))

(declare-fun call!88604 () Bool)

(assert (=> b!1290256 (= res!578318 call!88604)))

(declare-fun e!827481 () Bool)

(assert (=> b!1290256 (= e!827481 e!827484)))

(declare-fun b!1290257 () Bool)

(declare-fun res!578316 () Bool)

(declare-fun e!827485 () Bool)

(assert (=> b!1290257 (=> res!578316 e!827485)))

(assert (=> b!1290257 (= res!578316 (not ((_ is Concat!5843) lt!424773)))))

(assert (=> b!1290257 (= e!827481 e!827485)))

(declare-fun b!1290258 () Bool)

(declare-fun e!827482 () Bool)

(assert (=> b!1290258 (= e!827482 e!827483)))

(declare-fun res!578315 () Bool)

(declare-fun nullable!1122 (Regex!3533) Bool)

(assert (=> b!1290258 (= res!578315 (not (nullable!1122 (reg!3862 lt!424773))))))

(assert (=> b!1290258 (=> (not res!578315) (not e!827483))))

(declare-fun b!1290259 () Bool)

(assert (=> b!1290259 (= e!827485 e!827486)))

(declare-fun res!578317 () Bool)

(assert (=> b!1290259 (=> (not res!578317) (not e!827486))))

(assert (=> b!1290259 (= res!578317 call!88604)))

(declare-fun b!1290260 () Bool)

(assert (=> b!1290260 (= e!827484 call!88603)))

(declare-fun d!363662 () Bool)

(declare-fun res!578314 () Bool)

(declare-fun e!827480 () Bool)

(assert (=> d!363662 (=> res!578314 e!827480)))

(assert (=> d!363662 (= res!578314 ((_ is ElementMatch!3533) lt!424773))))

(assert (=> d!363662 (= (validRegex!1520 lt!424773) e!827480)))

(declare-fun b!1290261 () Bool)

(assert (=> b!1290261 (= e!827482 e!827481)))

(assert (=> b!1290261 (= c!212351 ((_ is Union!3533) lt!424773))))

(declare-fun bm!88598 () Bool)

(assert (=> bm!88598 (= call!88604 (validRegex!1520 (ite c!212351 (regOne!7579 lt!424773) (regOne!7578 lt!424773))))))

(declare-fun bm!88599 () Bool)

(assert (=> bm!88599 (= call!88603 call!88602)))

(declare-fun b!1290262 () Bool)

(assert (=> b!1290262 (= e!827480 e!827482)))

(assert (=> b!1290262 (= c!212350 ((_ is Star!3533) lt!424773))))

(assert (= (and d!363662 (not res!578314)) b!1290262))

(assert (= (and b!1290262 c!212350) b!1290258))

(assert (= (and b!1290262 (not c!212350)) b!1290261))

(assert (= (and b!1290258 res!578315) b!1290254))

(assert (= (and b!1290261 c!212351) b!1290256))

(assert (= (and b!1290261 (not c!212351)) b!1290257))

(assert (= (and b!1290256 res!578318) b!1290260))

(assert (= (and b!1290257 (not res!578316)) b!1290259))

(assert (= (and b!1290259 res!578317) b!1290255))

(assert (= (or b!1290256 b!1290259) bm!88598))

(assert (= (or b!1290260 b!1290255) bm!88599))

(assert (= (or b!1290254 bm!88599) bm!88597))

(declare-fun m!1440967 () Bool)

(assert (=> bm!88597 m!1440967))

(declare-fun m!1440969 () Bool)

(assert (=> b!1290258 m!1440969))

(declare-fun m!1440971 () Bool)

(assert (=> bm!88598 m!1440971))

(assert (=> d!363578 d!363662))

(assert (=> b!1290097 d!363572))

(declare-fun b!1290271 () Bool)

(declare-fun e!827494 () Bool)

(declare-fun call!88607 () Bool)

(assert (=> b!1290271 (= e!827494 call!88607)))

(declare-fun b!1290272 () Bool)

(declare-fun e!827493 () Bool)

(assert (=> b!1290272 (= e!827493 e!827494)))

(declare-fun res!578323 () Bool)

(declare-fun rulesUseDisjointChars!145 (Rule!4238 Rule!4238) Bool)

(assert (=> b!1290272 (= res!578323 (rulesUseDisjointChars!145 (h!18286 rules!2550) (h!18286 rules!2550)))))

(assert (=> b!1290272 (=> (not res!578323) (not e!827494))))

(declare-fun b!1290273 () Bool)

(declare-fun e!827495 () Bool)

(assert (=> b!1290273 (= e!827495 call!88607)))

(declare-fun b!1290274 () Bool)

(assert (=> b!1290274 (= e!827493 e!827495)))

(declare-fun res!578324 () Bool)

(assert (=> b!1290274 (= res!578324 (not ((_ is Cons!12885) rules!2550)))))

(assert (=> b!1290274 (=> res!578324 e!827495)))

(declare-fun d!363664 () Bool)

(declare-fun c!212354 () Bool)

(assert (=> d!363664 (= c!212354 (and ((_ is Cons!12885) rules!2550) (not (= (isSeparator!2219 (h!18286 rules!2550)) (isSeparator!2219 (h!18286 rules!2550))))))))

(assert (=> d!363664 (= (ruleDisjointCharsFromAllFromOtherType!283 (h!18286 rules!2550) rules!2550) e!827493)))

(declare-fun bm!88602 () Bool)

(assert (=> bm!88602 (= call!88607 (ruleDisjointCharsFromAllFromOtherType!283 (h!18286 rules!2550) (t!117088 rules!2550)))))

(assert (= (and d!363664 c!212354) b!1290272))

(assert (= (and d!363664 (not c!212354)) b!1290274))

(assert (= (and b!1290272 res!578323) b!1290271))

(assert (= (and b!1290274 (not res!578324)) b!1290273))

(assert (= (or b!1290271 b!1290273) bm!88602))

(declare-fun m!1440973 () Bool)

(assert (=> b!1290272 m!1440973))

(declare-fun m!1440975 () Bool)

(assert (=> bm!88602 m!1440975))

(assert (=> b!1289987 d!363664))

(declare-fun d!363666 () Bool)

(declare-fun lt!424842 () Bool)

(assert (=> d!363666 (= lt!424842 (isEmpty!7648 (list!4803 (_2!7214 lt!424813))))))

(declare-fun isEmpty!7650 (Conc!4233) Bool)

(assert (=> d!363666 (= lt!424842 (isEmpty!7650 (c!212311 (_2!7214 lt!424813))))))

(assert (=> d!363666 (= (isEmpty!7646 (_2!7214 lt!424813)) lt!424842)))

(declare-fun bs!328458 () Bool)

(assert (= bs!328458 d!363666))

(declare-fun m!1440977 () Bool)

(assert (=> bs!328458 m!1440977))

(assert (=> bs!328458 m!1440977))

(declare-fun m!1440979 () Bool)

(assert (=> bs!328458 m!1440979))

(declare-fun m!1440981 () Bool)

(assert (=> bs!328458 m!1440981))

(assert (=> b!1290087 d!363666))

(declare-fun d!363668 () Bool)

(assert (=> d!363668 (= (isEmpty!7648 lt!424776) ((_ is Nil!12884) lt!424776))))

(assert (=> d!363612 d!363668))

(declare-fun d!363670 () Bool)

(declare-fun lt!424843 () Int)

(assert (=> d!363670 (>= lt!424843 0)))

(declare-fun e!827496 () Int)

(assert (=> d!363670 (= lt!424843 e!827496)))

(declare-fun c!212355 () Bool)

(assert (=> d!363670 (= c!212355 ((_ is Nil!12884) lt!424828))))

(assert (=> d!363670 (= (size!10513 lt!424828) lt!424843)))

(declare-fun b!1290275 () Bool)

(assert (=> b!1290275 (= e!827496 0)))

(declare-fun b!1290276 () Bool)

(assert (=> b!1290276 (= e!827496 (+ 1 (size!10513 (t!117087 lt!424828))))))

(assert (= (and d!363670 c!212355) b!1290275))

(assert (= (and d!363670 (not c!212355)) b!1290276))

(declare-fun m!1440983 () Bool)

(assert (=> b!1290276 m!1440983))

(assert (=> b!1290127 d!363670))

(declare-fun d!363672 () Bool)

(declare-fun lt!424844 () Int)

(assert (=> d!363672 (>= lt!424844 0)))

(declare-fun e!827497 () Int)

(assert (=> d!363672 (= lt!424844 e!827497)))

(declare-fun c!212356 () Bool)

(assert (=> d!363672 (= c!212356 ((_ is Nil!12884) (list!4803 (charsOf!1191 t1!34))))))

(assert (=> d!363672 (= (size!10513 (list!4803 (charsOf!1191 t1!34))) lt!424844)))

(declare-fun b!1290277 () Bool)

(assert (=> b!1290277 (= e!827497 0)))

(declare-fun b!1290278 () Bool)

(assert (=> b!1290278 (= e!827497 (+ 1 (size!10513 (t!117087 (list!4803 (charsOf!1191 t1!34))))))))

(assert (= (and d!363672 c!212356) b!1290277))

(assert (= (and d!363672 (not c!212356)) b!1290278))

(declare-fun m!1440985 () Bool)

(assert (=> b!1290278 m!1440985))

(assert (=> b!1290127 d!363672))

(declare-fun d!363674 () Bool)

(declare-fun lt!424845 () Int)

(assert (=> d!363674 (>= lt!424845 0)))

(declare-fun e!827498 () Int)

(assert (=> d!363674 (= lt!424845 e!827498)))

(declare-fun c!212357 () Bool)

(assert (=> d!363674 (= c!212357 ((_ is Nil!12884) (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)))))

(assert (=> d!363674 (= (size!10513 (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)) lt!424845)))

(declare-fun b!1290279 () Bool)

(assert (=> b!1290279 (= e!827498 0)))

(declare-fun b!1290280 () Bool)

(assert (=> b!1290280 (= e!827498 (+ 1 (size!10513 (t!117087 (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)))))))

(assert (= (and d!363674 c!212357) b!1290279))

(assert (= (and d!363674 (not c!212357)) b!1290280))

(declare-fun m!1440987 () Bool)

(assert (=> b!1290280 m!1440987))

(assert (=> b!1290127 d!363674))

(declare-fun d!363676 () Bool)

(declare-fun lostCauseFct!97 (Regex!3533) Bool)

(assert (=> d!363676 (= (lostCause!247 lt!424773) (lostCauseFct!97 lt!424773))))

(declare-fun bs!328459 () Bool)

(assert (= bs!328459 d!363676))

(declare-fun m!1440989 () Bool)

(assert (=> bs!328459 m!1440989))

(assert (=> b!1290093 d!363676))

(declare-fun d!363678 () Bool)

(declare-fun charsToInt!0 (List!12949) (_ BitVec 32))

(assert (=> d!363678 (= (inv!16 (value!72874 t2!34)) (= (charsToInt!0 (text!16610 (value!72874 t2!34))) (value!72865 (value!72874 t2!34))))))

(declare-fun bs!328460 () Bool)

(assert (= bs!328460 d!363678))

(declare-fun m!1440991 () Bool)

(assert (=> bs!328460 m!1440991))

(assert (=> b!1289982 d!363678))

(declare-fun d!363680 () Bool)

(assert (=> d!363680 true))

(assert (=> d!363680 true))

(declare-fun res!578327 () Bool)

(assert (=> d!363680 (= (choose!7917 lambda!50631) res!578327)))

(assert (=> d!363576 d!363680))

(declare-fun d!363682 () Bool)

(assert (=> d!363682 (= (list!4803 lt!424815) (list!4806 (c!212311 lt!424815)))))

(declare-fun bs!328461 () Bool)

(assert (= bs!328461 d!363682))

(declare-fun m!1440993 () Bool)

(assert (=> bs!328461 m!1440993))

(assert (=> d!363616 d!363682))

(declare-fun d!363684 () Bool)

(assert (=> d!363684 true))

(declare-fun lambda!50655 () Int)

(declare-fun order!7843 () Int)

(declare-fun order!7845 () Int)

(declare-fun dynLambda!5621 (Int Int) Int)

(declare-fun dynLambda!5622 (Int Int) Int)

(assert (=> d!363684 (< (dynLambda!5621 order!7843 (toChars!3273 (transformation!2219 (h!18286 rules!2550)))) (dynLambda!5622 order!7845 lambda!50655))))

(assert (=> d!363684 true))

(declare-fun order!7847 () Int)

(declare-fun dynLambda!5623 (Int Int) Int)

(assert (=> d!363684 (< (dynLambda!5623 order!7847 (toValue!3414 (transformation!2219 (h!18286 rules!2550)))) (dynLambda!5622 order!7845 lambda!50655))))

(declare-fun Forall!502 (Int) Bool)

(assert (=> d!363684 (= (semiInverseModEq!840 (toChars!3273 (transformation!2219 (h!18286 rules!2550))) (toValue!3414 (transformation!2219 (h!18286 rules!2550)))) (Forall!502 lambda!50655))))

(declare-fun bs!328462 () Bool)

(assert (= bs!328462 d!363684))

(declare-fun m!1440995 () Bool)

(assert (=> bs!328462 m!1440995))

(assert (=> d!363640 d!363684))

(declare-fun d!363686 () Bool)

(declare-fun c!212360 () Bool)

(assert (=> d!363686 (= c!212360 ((_ is Nil!12884) lt!424828))))

(declare-fun e!827501 () (InoxSet C!7356))

(assert (=> d!363686 (= (content!1820 lt!424828) e!827501)))

(declare-fun b!1290289 () Bool)

(assert (=> b!1290289 (= e!827501 ((as const (Array C!7356 Bool)) false))))

(declare-fun b!1290290 () Bool)

(assert (=> b!1290290 (= e!827501 ((_ map or) (store ((as const (Array C!7356 Bool)) false) (h!18285 lt!424828) true) (content!1820 (t!117087 lt!424828))))))

(assert (= (and d!363686 c!212360) b!1290289))

(assert (= (and d!363686 (not c!212360)) b!1290290))

(declare-fun m!1440997 () Bool)

(assert (=> b!1290290 m!1440997))

(declare-fun m!1440999 () Bool)

(assert (=> b!1290290 m!1440999))

(assert (=> d!363630 d!363686))

(declare-fun d!363688 () Bool)

(declare-fun c!212361 () Bool)

(assert (=> d!363688 (= c!212361 ((_ is Nil!12884) (list!4803 (charsOf!1191 t1!34))))))

(declare-fun e!827502 () (InoxSet C!7356))

(assert (=> d!363688 (= (content!1820 (list!4803 (charsOf!1191 t1!34))) e!827502)))

(declare-fun b!1290291 () Bool)

(assert (=> b!1290291 (= e!827502 ((as const (Array C!7356 Bool)) false))))

(declare-fun b!1290292 () Bool)

(assert (=> b!1290292 (= e!827502 ((_ map or) (store ((as const (Array C!7356 Bool)) false) (h!18285 (list!4803 (charsOf!1191 t1!34))) true) (content!1820 (t!117087 (list!4803 (charsOf!1191 t1!34))))))))

(assert (= (and d!363688 c!212361) b!1290291))

(assert (= (and d!363688 (not c!212361)) b!1290292))

(declare-fun m!1441001 () Bool)

(assert (=> b!1290292 m!1441001))

(declare-fun m!1441003 () Bool)

(assert (=> b!1290292 m!1441003))

(assert (=> d!363630 d!363688))

(declare-fun d!363690 () Bool)

(declare-fun c!212362 () Bool)

(assert (=> d!363690 (= c!212362 ((_ is Nil!12884) (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)))))

(declare-fun e!827503 () (InoxSet C!7356))

(assert (=> d!363690 (= (content!1820 (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)) e!827503)))

(declare-fun b!1290293 () Bool)

(assert (=> b!1290293 (= e!827503 ((as const (Array C!7356 Bool)) false))))

(declare-fun b!1290294 () Bool)

(assert (=> b!1290294 (= e!827503 ((_ map or) (store ((as const (Array C!7356 Bool)) false) (h!18285 (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)) true) (content!1820 (t!117087 (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)))))))

(assert (= (and d!363690 c!212362) b!1290293))

(assert (= (and d!363690 (not c!212362)) b!1290294))

(declare-fun m!1441005 () Bool)

(assert (=> b!1290294 m!1441005))

(declare-fun m!1441007 () Bool)

(assert (=> b!1290294 m!1441007))

(assert (=> d!363630 d!363690))

(declare-fun d!363692 () Bool)

(declare-fun lt!424846 () Int)

(assert (=> d!363692 (>= lt!424846 0)))

(declare-fun e!827504 () Int)

(assert (=> d!363692 (= lt!424846 e!827504)))

(declare-fun c!212363 () Bool)

(assert (=> d!363692 (= c!212363 ((_ is Nil!12884) (originalCharacters!3081 t1!34)))))

(assert (=> d!363692 (= (size!10513 (originalCharacters!3081 t1!34)) lt!424846)))

(declare-fun b!1290295 () Bool)

(assert (=> b!1290295 (= e!827504 0)))

(declare-fun b!1290296 () Bool)

(assert (=> b!1290296 (= e!827504 (+ 1 (size!10513 (t!117087 (originalCharacters!3081 t1!34)))))))

(assert (= (and d!363692 c!212363) b!1290295))

(assert (= (and d!363692 (not c!212363)) b!1290296))

(declare-fun m!1441009 () Bool)

(assert (=> b!1290296 m!1441009))

(assert (=> b!1290044 d!363692))

(declare-fun d!363694 () Bool)

(declare-fun charsToBigInt!1 (List!12949) Int)

(assert (=> d!363694 (= (inv!17 (value!72874 t2!34)) (= (charsToBigInt!1 (text!16611 (value!72874 t2!34))) (value!72866 (value!72874 t2!34))))))

(declare-fun bs!328463 () Bool)

(assert (= bs!328463 d!363694))

(declare-fun m!1441011 () Bool)

(assert (=> bs!328463 m!1441011))

(assert (=> b!1289980 d!363694))

(declare-fun d!363696 () Bool)

(declare-fun res!578332 () Bool)

(declare-fun e!827509 () Bool)

(assert (=> d!363696 (=> res!578332 e!827509)))

(assert (=> d!363696 (= res!578332 ((_ is Nil!12885) rules!2550))))

(assert (=> d!363696 (= (forall!3245 rules!2550 lambda!50637) e!827509)))

(declare-fun b!1290301 () Bool)

(declare-fun e!827510 () Bool)

(assert (=> b!1290301 (= e!827509 e!827510)))

(declare-fun res!578333 () Bool)

(assert (=> b!1290301 (=> (not res!578333) (not e!827510))))

(declare-fun dynLambda!5624 (Int Rule!4238) Bool)

(assert (=> b!1290301 (= res!578333 (dynLambda!5624 lambda!50637 (h!18286 rules!2550)))))

(declare-fun b!1290302 () Bool)

(assert (=> b!1290302 (= e!827510 (forall!3245 (t!117088 rules!2550) lambda!50637))))

(assert (= (and d!363696 (not res!578332)) b!1290301))

(assert (= (and b!1290301 res!578333) b!1290302))

(declare-fun b_lambda!36847 () Bool)

(assert (=> (not b_lambda!36847) (not b!1290301)))

(declare-fun m!1441013 () Bool)

(assert (=> b!1290301 m!1441013))

(declare-fun m!1441015 () Bool)

(assert (=> b!1290302 m!1441015))

(assert (=> d!363584 d!363696))

(declare-fun lt!424847 () Bool)

(declare-fun d!363698 () Bool)

(assert (=> d!363698 (= lt!424847 (isEmpty!7648 (list!4803 (_2!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t2!34)))))))))

(assert (=> d!363698 (= lt!424847 (isEmpty!7650 (c!212311 (_2!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t2!34)))))))))

(assert (=> d!363698 (= (isEmpty!7646 (_2!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t2!34))))) lt!424847)))

(declare-fun bs!328464 () Bool)

(assert (= bs!328464 d!363698))

(declare-fun m!1441017 () Bool)

(assert (=> bs!328464 m!1441017))

(assert (=> bs!328464 m!1441017))

(declare-fun m!1441019 () Bool)

(assert (=> bs!328464 m!1441019))

(declare-fun m!1441021 () Bool)

(assert (=> bs!328464 m!1441021))

(assert (=> b!1290015 d!363698))

(declare-fun d!363700 () Bool)

(declare-fun e!827517 () Bool)

(assert (=> d!363700 e!827517))

(declare-fun res!578343 () Bool)

(assert (=> d!363700 (=> (not res!578343) (not e!827517))))

(declare-fun e!827519 () Bool)

(assert (=> d!363700 (= res!578343 e!827519)))

(declare-fun c!212367 () Bool)

(declare-fun lt!424850 () tuple2!12656)

(assert (=> d!363700 (= c!212367 (> (size!10511 (_1!7214 lt!424850)) 0))))

(declare-fun lexTailRecV2!344 (LexerInterface!1914 List!12951 BalanceConc!8406 BalanceConc!8406 BalanceConc!8406 BalanceConc!8408) tuple2!12656)

(assert (=> d!363700 (= lt!424850 (lexTailRecV2!344 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t2!34)) (BalanceConc!8407 Empty!4233) (print!715 thiss!19762 (singletonSeq!796 t2!34)) (BalanceConc!8409 Empty!4234)))))

(assert (=> d!363700 (= (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t2!34))) lt!424850)))

(declare-fun b!1290313 () Bool)

(declare-fun e!827518 () Bool)

(declare-fun isEmpty!7651 (BalanceConc!8408) Bool)

(assert (=> b!1290313 (= e!827518 (not (isEmpty!7651 (_1!7214 lt!424850))))))

(declare-fun b!1290314 () Bool)

(declare-datatypes ((tuple2!12660 0))(
  ( (tuple2!12661 (_1!7216 List!12952) (_2!7216 List!12950)) )
))
(declare-fun lexList!495 (LexerInterface!1914 List!12951 List!12950) tuple2!12660)

(assert (=> b!1290314 (= e!827517 (= (list!4803 (_2!7214 lt!424850)) (_2!7216 (lexList!495 thiss!19762 rules!2550 (list!4803 (print!715 thiss!19762 (singletonSeq!796 t2!34)))))))))

(declare-fun b!1290315 () Bool)

(assert (=> b!1290315 (= e!827519 e!827518)))

(declare-fun res!578341 () Bool)

(assert (=> b!1290315 (= res!578341 (< (size!10510 (_2!7214 lt!424850)) (size!10510 (print!715 thiss!19762 (singletonSeq!796 t2!34)))))))

(assert (=> b!1290315 (=> (not res!578341) (not e!827518))))

(declare-fun b!1290316 () Bool)

(assert (=> b!1290316 (= e!827519 (= (_2!7214 lt!424850) (print!715 thiss!19762 (singletonSeq!796 t2!34))))))

(declare-fun b!1290317 () Bool)

(declare-fun res!578342 () Bool)

(assert (=> b!1290317 (=> (not res!578342) (not e!827517))))

(assert (=> b!1290317 (= res!578342 (= (list!4804 (_1!7214 lt!424850)) (_1!7216 (lexList!495 thiss!19762 rules!2550 (list!4803 (print!715 thiss!19762 (singletonSeq!796 t2!34)))))))))

(assert (= (and d!363700 c!212367) b!1290315))

(assert (= (and d!363700 (not c!212367)) b!1290316))

(assert (= (and b!1290315 res!578341) b!1290313))

(assert (= (and d!363700 res!578343) b!1290317))

(assert (= (and b!1290317 res!578342) b!1290314))

(declare-fun m!1441023 () Bool)

(assert (=> b!1290315 m!1441023))

(assert (=> b!1290315 m!1440679))

(declare-fun m!1441025 () Bool)

(assert (=> b!1290315 m!1441025))

(declare-fun m!1441027 () Bool)

(assert (=> b!1290317 m!1441027))

(assert (=> b!1290317 m!1440679))

(declare-fun m!1441029 () Bool)

(assert (=> b!1290317 m!1441029))

(assert (=> b!1290317 m!1441029))

(declare-fun m!1441031 () Bool)

(assert (=> b!1290317 m!1441031))

(declare-fun m!1441033 () Bool)

(assert (=> d!363700 m!1441033))

(assert (=> d!363700 m!1440679))

(assert (=> d!363700 m!1440679))

(declare-fun m!1441035 () Bool)

(assert (=> d!363700 m!1441035))

(declare-fun m!1441037 () Bool)

(assert (=> b!1290313 m!1441037))

(declare-fun m!1441039 () Bool)

(assert (=> b!1290314 m!1441039))

(assert (=> b!1290314 m!1440679))

(assert (=> b!1290314 m!1441029))

(assert (=> b!1290314 m!1441029))

(assert (=> b!1290314 m!1441031))

(assert (=> b!1290015 d!363700))

(declare-fun d!363706 () Bool)

(declare-fun lt!424853 () BalanceConc!8406)

(declare-fun printList!539 (LexerInterface!1914 List!12952) List!12950)

(assert (=> d!363706 (= (list!4803 lt!424853) (printList!539 thiss!19762 (list!4804 (singletonSeq!796 t2!34))))))

(declare-fun printTailRec!521 (LexerInterface!1914 BalanceConc!8408 Int BalanceConc!8406) BalanceConc!8406)

(assert (=> d!363706 (= lt!424853 (printTailRec!521 thiss!19762 (singletonSeq!796 t2!34) 0 (BalanceConc!8407 Empty!4233)))))

(assert (=> d!363706 (= (print!715 thiss!19762 (singletonSeq!796 t2!34)) lt!424853)))

(declare-fun bs!328471 () Bool)

(assert (= bs!328471 d!363706))

(declare-fun m!1441055 () Bool)

(assert (=> bs!328471 m!1441055))

(assert (=> bs!328471 m!1440677))

(assert (=> bs!328471 m!1440681))

(assert (=> bs!328471 m!1440681))

(declare-fun m!1441057 () Bool)

(assert (=> bs!328471 m!1441057))

(assert (=> bs!328471 m!1440677))

(declare-fun m!1441059 () Bool)

(assert (=> bs!328471 m!1441059))

(assert (=> b!1290015 d!363706))

(declare-fun d!363720 () Bool)

(declare-fun e!827527 () Bool)

(assert (=> d!363720 e!827527))

(declare-fun res!578354 () Bool)

(assert (=> d!363720 (=> (not res!578354) (not e!827527))))

(declare-fun lt!424856 () BalanceConc!8408)

(assert (=> d!363720 (= res!578354 (= (list!4804 lt!424856) (Cons!12886 t2!34 Nil!12886)))))

(declare-fun singleton!347 (Token!4100) BalanceConc!8408)

(assert (=> d!363720 (= lt!424856 (singleton!347 t2!34))))

(assert (=> d!363720 (= (singletonSeq!796 t2!34) lt!424856)))

(declare-fun b!1290334 () Bool)

(declare-fun isBalanced!1241 (Conc!4234) Bool)

(assert (=> b!1290334 (= e!827527 (isBalanced!1241 (c!212341 lt!424856)))))

(assert (= (and d!363720 res!578354) b!1290334))

(declare-fun m!1441065 () Bool)

(assert (=> d!363720 m!1441065))

(declare-fun m!1441067 () Bool)

(assert (=> d!363720 m!1441067))

(declare-fun m!1441069 () Bool)

(assert (=> b!1290334 m!1441069))

(assert (=> b!1290015 d!363720))

(declare-fun d!363726 () Bool)

(declare-fun list!4808 (Conc!4234) List!12952)

(assert (=> d!363726 (= (list!4804 (_1!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t2!34))))) (list!4808 (c!212341 (_1!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t2!34)))))))))

(declare-fun bs!328474 () Bool)

(assert (= bs!328474 d!363726))

(declare-fun m!1441071 () Bool)

(assert (=> bs!328474 m!1441071))

(assert (=> d!363550 d!363726))

(declare-fun d!363728 () Bool)

(declare-fun lt!424859 () Int)

(declare-fun size!10517 (List!12952) Int)

(assert (=> d!363728 (= lt!424859 (size!10517 (list!4804 (_1!7214 lt!424787))))))

(declare-fun size!10518 (Conc!4234) Int)

(assert (=> d!363728 (= lt!424859 (size!10518 (c!212341 (_1!7214 lt!424787))))))

(assert (=> d!363728 (= (size!10511 (_1!7214 lt!424787)) lt!424859)))

(declare-fun bs!328476 () Bool)

(assert (= bs!328476 d!363728))

(declare-fun m!1441079 () Bool)

(assert (=> bs!328476 m!1441079))

(assert (=> bs!328476 m!1441079))

(declare-fun m!1441081 () Bool)

(assert (=> bs!328476 m!1441081))

(declare-fun m!1441083 () Bool)

(assert (=> bs!328476 m!1441083))

(assert (=> d!363550 d!363728))

(assert (=> d!363550 d!363706))

(assert (=> d!363550 d!363720))

(assert (=> d!363550 d!363634))

(assert (=> d!363550 d!363700))

(declare-fun d!363734 () Bool)

(assert (=> d!363734 (= (list!4804 (singletonSeq!796 t2!34)) (list!4808 (c!212341 (singletonSeq!796 t2!34))))))

(declare-fun bs!328477 () Bool)

(assert (= bs!328477 d!363734))

(declare-fun m!1441085 () Bool)

(assert (=> bs!328477 m!1441085))

(assert (=> d!363550 d!363734))

(declare-fun d!363736 () Bool)

(assert (=> d!363736 true))

(declare-fun order!7857 () Int)

(declare-fun lambda!50665 () Int)

(declare-fun dynLambda!5625 (Int Int) Int)

(assert (=> d!363736 (< (dynLambda!5623 order!7847 (toValue!3414 (transformation!2219 (rule!3958 t1!34)))) (dynLambda!5625 order!7857 lambda!50665))))

(declare-fun Forall2!404 (Int) Bool)

(assert (=> d!363736 (= (equivClasses!799 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (toValue!3414 (transformation!2219 (rule!3958 t1!34)))) (Forall2!404 lambda!50665))))

(declare-fun bs!328478 () Bool)

(assert (= bs!328478 d!363736))

(declare-fun m!1441089 () Bool)

(assert (=> bs!328478 m!1441089))

(assert (=> b!1290025 d!363736))

(declare-fun d!363740 () Bool)

(declare-fun charsToBigInt!0 (List!12949 Int) Int)

(assert (=> d!363740 (= (inv!15 (value!72874 t1!34)) (= (charsToBigInt!0 (text!16612 (value!72874 t1!34)) 0) (value!72869 (value!72874 t1!34))))))

(declare-fun bs!328479 () Bool)

(assert (= bs!328479 d!363740))

(declare-fun m!1441095 () Bool)

(assert (=> bs!328479 m!1441095))

(assert (=> b!1290037 d!363740))

(declare-fun b!1290376 () Bool)

(declare-fun e!827554 () List!12950)

(assert (=> b!1290376 (= e!827554 (++!3261 (list!4806 (left!11088 (c!212311 (charsOf!1191 t1!34)))) (list!4806 (right!11418 (c!212311 (charsOf!1191 t1!34))))))))

(declare-fun b!1290373 () Bool)

(declare-fun e!827553 () List!12950)

(assert (=> b!1290373 (= e!827553 Nil!12884)))

(declare-fun d!363744 () Bool)

(declare-fun c!212379 () Bool)

(assert (=> d!363744 (= c!212379 ((_ is Empty!4233) (c!212311 (charsOf!1191 t1!34))))))

(assert (=> d!363744 (= (list!4806 (c!212311 (charsOf!1191 t1!34))) e!827553)))

(declare-fun b!1290375 () Bool)

(declare-fun list!4809 (IArray!8471) List!12950)

(assert (=> b!1290375 (= e!827554 (list!4809 (xs!6944 (c!212311 (charsOf!1191 t1!34)))))))

(declare-fun b!1290374 () Bool)

(assert (=> b!1290374 (= e!827553 e!827554)))

(declare-fun c!212380 () Bool)

(assert (=> b!1290374 (= c!212380 ((_ is Leaf!6539) (c!212311 (charsOf!1191 t1!34))))))

(assert (= (and d!363744 c!212379) b!1290373))

(assert (= (and d!363744 (not c!212379)) b!1290374))

(assert (= (and b!1290374 c!212380) b!1290375))

(assert (= (and b!1290374 (not c!212380)) b!1290376))

(declare-fun m!1441115 () Bool)

(assert (=> b!1290376 m!1441115))

(declare-fun m!1441117 () Bool)

(assert (=> b!1290376 m!1441117))

(assert (=> b!1290376 m!1441115))

(assert (=> b!1290376 m!1441117))

(declare-fun m!1441119 () Bool)

(assert (=> b!1290376 m!1441119))

(declare-fun m!1441121 () Bool)

(assert (=> b!1290375 m!1441121))

(assert (=> d!363614 d!363744))

(declare-fun d!363750 () Bool)

(declare-fun lt!424870 () C!7356)

(declare-fun contains!2152 (List!12950 C!7356) Bool)

(assert (=> d!363750 (contains!2152 (list!4803 lt!424775) lt!424870)))

(declare-fun e!827561 () C!7356)

(assert (=> d!363750 (= lt!424870 e!827561)))

(declare-fun c!212383 () Bool)

(assert (=> d!363750 (= c!212383 (= 0 0))))

(declare-fun e!827559 () Bool)

(assert (=> d!363750 e!827559))

(declare-fun res!578371 () Bool)

(assert (=> d!363750 (=> (not res!578371) (not e!827559))))

(assert (=> d!363750 (= res!578371 (<= 0 0))))

(assert (=> d!363750 (= (apply!2802 (list!4803 lt!424775) 0) lt!424870)))

(declare-fun b!1290387 () Bool)

(assert (=> b!1290387 (= e!827559 (< 0 (size!10513 (list!4803 lt!424775))))))

(declare-fun b!1290388 () Bool)

(assert (=> b!1290388 (= e!827561 (head!2207 (list!4803 lt!424775)))))

(declare-fun b!1290389 () Bool)

(assert (=> b!1290389 (= e!827561 (apply!2802 (tail!1835 (list!4803 lt!424775)) (- 0 1)))))

(assert (= (and d!363750 res!578371) b!1290387))

(assert (= (and d!363750 c!212383) b!1290388))

(assert (= (and d!363750 (not c!212383)) b!1290389))

(assert (=> d!363750 m!1440695))

(declare-fun m!1441123 () Bool)

(assert (=> d!363750 m!1441123))

(assert (=> b!1290387 m!1440695))

(assert (=> b!1290387 m!1440697))

(assert (=> b!1290388 m!1440695))

(declare-fun m!1441125 () Bool)

(assert (=> b!1290388 m!1441125))

(assert (=> b!1290389 m!1440695))

(declare-fun m!1441127 () Bool)

(assert (=> b!1290389 m!1441127))

(assert (=> b!1290389 m!1441127))

(declare-fun m!1441129 () Bool)

(assert (=> b!1290389 m!1441129))

(assert (=> d!363618 d!363750))

(declare-fun d!363752 () Bool)

(assert (=> d!363752 (= (list!4803 lt!424775) (list!4806 (c!212311 lt!424775)))))

(declare-fun bs!328481 () Bool)

(assert (= bs!328481 d!363752))

(declare-fun m!1441131 () Bool)

(assert (=> bs!328481 m!1441131))

(assert (=> d!363618 d!363752))

(declare-fun d!363754 () Bool)

(declare-fun lt!424877 () C!7356)

(assert (=> d!363754 (= lt!424877 (apply!2802 (list!4806 (c!212311 lt!424775)) 0))))

(declare-fun e!827590 () C!7356)

(assert (=> d!363754 (= lt!424877 e!827590)))

(declare-fun c!212407 () Bool)

(assert (=> d!363754 (= c!212407 ((_ is Leaf!6539) (c!212311 lt!424775)))))

(declare-fun e!827592 () Bool)

(assert (=> d!363754 e!827592))

(declare-fun res!578380 () Bool)

(assert (=> d!363754 (=> (not res!578380) (not e!827592))))

(assert (=> d!363754 (= res!578380 (<= 0 0))))

(assert (=> d!363754 (= (apply!2803 (c!212311 lt!424775) 0) lt!424877)))

(declare-fun b!1290436 () Bool)

(declare-fun e!827593 () C!7356)

(assert (=> b!1290436 (= e!827590 e!827593)))

(declare-fun lt!424876 () Bool)

(declare-fun appendIndex!124 (List!12950 List!12950 Int) Bool)

(assert (=> b!1290436 (= lt!424876 (appendIndex!124 (list!4806 (left!11088 (c!212311 lt!424775))) (list!4806 (right!11418 (c!212311 lt!424775))) 0))))

(declare-fun c!212405 () Bool)

(assert (=> b!1290436 (= c!212405 (< 0 (size!10514 (left!11088 (c!212311 lt!424775)))))))

(declare-fun b!1290437 () Bool)

(declare-fun e!827591 () Int)

(assert (=> b!1290437 (= e!827591 0)))

(declare-fun b!1290438 () Bool)

(assert (=> b!1290438 (= e!827591 (- 0 (size!10514 (left!11088 (c!212311 lt!424775)))))))

(declare-fun b!1290439 () Bool)

(declare-fun apply!2806 (IArray!8471 Int) C!7356)

(assert (=> b!1290439 (= e!827590 (apply!2806 (xs!6944 (c!212311 lt!424775)) 0))))

(declare-fun b!1290440 () Bool)

(declare-fun call!88625 () C!7356)

(assert (=> b!1290440 (= e!827593 call!88625)))

(declare-fun b!1290441 () Bool)

(assert (=> b!1290441 (= e!827593 call!88625)))

(declare-fun bm!88620 () Bool)

(declare-fun c!212406 () Bool)

(assert (=> bm!88620 (= c!212406 c!212405)))

(assert (=> bm!88620 (= call!88625 (apply!2803 (ite c!212405 (left!11088 (c!212311 lt!424775)) (right!11418 (c!212311 lt!424775))) e!827591))))

(declare-fun b!1290442 () Bool)

(assert (=> b!1290442 (= e!827592 (< 0 (size!10514 (c!212311 lt!424775))))))

(assert (= (and d!363754 res!578380) b!1290442))

(assert (= (and d!363754 c!212407) b!1290439))

(assert (= (and d!363754 (not c!212407)) b!1290436))

(assert (= (and b!1290436 c!212405) b!1290440))

(assert (= (and b!1290436 (not c!212405)) b!1290441))

(assert (= (or b!1290440 b!1290441) bm!88620))

(assert (= (and bm!88620 c!212406) b!1290437))

(assert (= (and bm!88620 (not c!212406)) b!1290438))

(declare-fun m!1441145 () Bool)

(assert (=> b!1290436 m!1441145))

(declare-fun m!1441147 () Bool)

(assert (=> b!1290436 m!1441147))

(assert (=> b!1290436 m!1441145))

(assert (=> b!1290436 m!1441147))

(declare-fun m!1441149 () Bool)

(assert (=> b!1290436 m!1441149))

(declare-fun m!1441151 () Bool)

(assert (=> b!1290436 m!1441151))

(assert (=> b!1290438 m!1441151))

(assert (=> d!363754 m!1441131))

(assert (=> d!363754 m!1441131))

(declare-fun m!1441153 () Bool)

(assert (=> d!363754 m!1441153))

(assert (=> b!1290442 m!1440699))

(declare-fun m!1441155 () Bool)

(assert (=> b!1290439 m!1441155))

(declare-fun m!1441157 () Bool)

(assert (=> bm!88620 m!1441157))

(assert (=> d!363618 d!363754))

(declare-fun d!363764 () Bool)

(declare-fun lt!424884 () Token!4100)

(declare-fun apply!2807 (List!12952 Int) Token!4100)

(assert (=> d!363764 (= lt!424884 (apply!2807 (list!4804 (_1!7214 lt!424787)) 0))))

(declare-fun apply!2808 (Conc!4234 Int) Token!4100)

(assert (=> d!363764 (= lt!424884 (apply!2808 (c!212341 (_1!7214 lt!424787)) 0))))

(declare-fun e!827596 () Bool)

(assert (=> d!363764 e!827596))

(declare-fun res!578383 () Bool)

(assert (=> d!363764 (=> (not res!578383) (not e!827596))))

(assert (=> d!363764 (= res!578383 (<= 0 0))))

(assert (=> d!363764 (= (apply!2800 (_1!7214 lt!424787) 0) lt!424884)))

(declare-fun b!1290445 () Bool)

(assert (=> b!1290445 (= e!827596 (< 0 (size!10511 (_1!7214 lt!424787))))))

(assert (= (and d!363764 res!578383) b!1290445))

(assert (=> d!363764 m!1441079))

(assert (=> d!363764 m!1441079))

(declare-fun m!1441167 () Bool)

(assert (=> d!363764 m!1441167))

(declare-fun m!1441169 () Bool)

(assert (=> d!363764 m!1441169))

(assert (=> b!1290445 m!1440687))

(assert (=> b!1290013 d!363764))

(declare-fun d!363770 () Bool)

(declare-fun isBalanced!1242 (Conc!4233) Bool)

(assert (=> d!363770 (= (inv!17308 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34))) (isBalanced!1242 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34)))))))

(declare-fun bs!328485 () Bool)

(assert (= bs!328485 d!363770))

(declare-fun m!1441171 () Bool)

(assert (=> bs!328485 m!1441171))

(assert (=> tb!69299 d!363770))

(declare-fun bs!328486 () Bool)

(declare-fun d!363772 () Bool)

(assert (= bs!328486 (and d!363772 d!363736)))

(declare-fun lambda!50669 () Int)

(assert (=> bs!328486 (= (= (toValue!3414 (transformation!2219 (rule!3958 t2!34))) (toValue!3414 (transformation!2219 (rule!3958 t1!34)))) (= lambda!50669 lambda!50665))))

(assert (=> d!363772 true))

(assert (=> d!363772 (< (dynLambda!5623 order!7847 (toValue!3414 (transformation!2219 (rule!3958 t2!34)))) (dynLambda!5625 order!7857 lambda!50669))))

(assert (=> d!363772 (= (equivClasses!799 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (toValue!3414 (transformation!2219 (rule!3958 t2!34)))) (Forall2!404 lambda!50669))))

(declare-fun bs!328487 () Bool)

(assert (= bs!328487 d!363772))

(declare-fun m!1441173 () Bool)

(assert (=> bs!328487 m!1441173))

(assert (=> b!1290131 d!363772))

(declare-fun bs!328488 () Bool)

(declare-fun d!363774 () Bool)

(assert (= bs!328488 (and d!363774 d!363584)))

(declare-fun lambda!50670 () Int)

(assert (=> bs!328488 (= lambda!50670 lambda!50637)))

(assert (=> d!363774 true))

(declare-fun lt!424885 () Bool)

(assert (=> d!363774 (= lt!424885 (forall!3245 (t!117088 rules!2550) lambda!50670))))

(declare-fun e!827598 () Bool)

(assert (=> d!363774 (= lt!424885 e!827598)))

(declare-fun res!578384 () Bool)

(assert (=> d!363774 (=> res!578384 e!827598)))

(assert (=> d!363774 (= res!578384 (not ((_ is Cons!12885) (t!117088 rules!2550))))))

(assert (=> d!363774 (= (rulesValidInductive!702 thiss!19762 (t!117088 rules!2550)) lt!424885)))

(declare-fun b!1290446 () Bool)

(declare-fun e!827597 () Bool)

(assert (=> b!1290446 (= e!827598 e!827597)))

(declare-fun res!578385 () Bool)

(assert (=> b!1290446 (=> (not res!578385) (not e!827597))))

(assert (=> b!1290446 (= res!578385 (ruleValid!544 thiss!19762 (h!18286 (t!117088 rules!2550))))))

(declare-fun b!1290447 () Bool)

(assert (=> b!1290447 (= e!827597 (rulesValidInductive!702 thiss!19762 (t!117088 (t!117088 rules!2550))))))

(assert (= (and d!363774 (not res!578384)) b!1290446))

(assert (= (and b!1290446 res!578385) b!1290447))

(declare-fun m!1441175 () Bool)

(assert (=> d!363774 m!1441175))

(declare-fun m!1441177 () Bool)

(assert (=> b!1290446 m!1441177))

(declare-fun m!1441179 () Bool)

(assert (=> b!1290447 m!1441179))

(assert (=> b!1290031 d!363774))

(declare-fun lt!424886 () Bool)

(declare-fun d!363776 () Bool)

(assert (=> d!363776 (= lt!424886 (isEmpty!7648 (list!4803 (_2!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t1!34)))))))))

(assert (=> d!363776 (= lt!424886 (isEmpty!7650 (c!212311 (_2!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t1!34)))))))))

(assert (=> d!363776 (= (isEmpty!7646 (_2!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t1!34))))) lt!424886)))

(declare-fun bs!328489 () Bool)

(assert (= bs!328489 d!363776))

(declare-fun m!1441181 () Bool)

(assert (=> bs!328489 m!1441181))

(assert (=> bs!328489 m!1441181))

(declare-fun m!1441183 () Bool)

(assert (=> bs!328489 m!1441183))

(declare-fun m!1441185 () Bool)

(assert (=> bs!328489 m!1441185))

(assert (=> b!1290088 d!363776))

(declare-fun d!363778 () Bool)

(declare-fun e!827599 () Bool)

(assert (=> d!363778 e!827599))

(declare-fun res!578388 () Bool)

(assert (=> d!363778 (=> (not res!578388) (not e!827599))))

(declare-fun e!827601 () Bool)

(assert (=> d!363778 (= res!578388 e!827601)))

(declare-fun c!212408 () Bool)

(declare-fun lt!424887 () tuple2!12656)

(assert (=> d!363778 (= c!212408 (> (size!10511 (_1!7214 lt!424887)) 0))))

(assert (=> d!363778 (= lt!424887 (lexTailRecV2!344 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t1!34)) (BalanceConc!8407 Empty!4233) (print!715 thiss!19762 (singletonSeq!796 t1!34)) (BalanceConc!8409 Empty!4234)))))

(assert (=> d!363778 (= (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t1!34))) lt!424887)))

(declare-fun b!1290448 () Bool)

(declare-fun e!827600 () Bool)

(assert (=> b!1290448 (= e!827600 (not (isEmpty!7651 (_1!7214 lt!424887))))))

(declare-fun b!1290449 () Bool)

(assert (=> b!1290449 (= e!827599 (= (list!4803 (_2!7214 lt!424887)) (_2!7216 (lexList!495 thiss!19762 rules!2550 (list!4803 (print!715 thiss!19762 (singletonSeq!796 t1!34)))))))))

(declare-fun b!1290450 () Bool)

(assert (=> b!1290450 (= e!827601 e!827600)))

(declare-fun res!578386 () Bool)

(assert (=> b!1290450 (= res!578386 (< (size!10510 (_2!7214 lt!424887)) (size!10510 (print!715 thiss!19762 (singletonSeq!796 t1!34)))))))

(assert (=> b!1290450 (=> (not res!578386) (not e!827600))))

(declare-fun b!1290451 () Bool)

(assert (=> b!1290451 (= e!827601 (= (_2!7214 lt!424887) (print!715 thiss!19762 (singletonSeq!796 t1!34))))))

(declare-fun b!1290452 () Bool)

(declare-fun res!578387 () Bool)

(assert (=> b!1290452 (=> (not res!578387) (not e!827599))))

(assert (=> b!1290452 (= res!578387 (= (list!4804 (_1!7214 lt!424887)) (_1!7216 (lexList!495 thiss!19762 rules!2550 (list!4803 (print!715 thiss!19762 (singletonSeq!796 t1!34)))))))))

(assert (= (and d!363778 c!212408) b!1290450))

(assert (= (and d!363778 (not c!212408)) b!1290451))

(assert (= (and b!1290450 res!578386) b!1290448))

(assert (= (and d!363778 res!578388) b!1290452))

(assert (= (and b!1290452 res!578387) b!1290449))

(declare-fun m!1441187 () Bool)

(assert (=> b!1290450 m!1441187))

(assert (=> b!1290450 m!1440807))

(declare-fun m!1441189 () Bool)

(assert (=> b!1290450 m!1441189))

(declare-fun m!1441191 () Bool)

(assert (=> b!1290452 m!1441191))

(assert (=> b!1290452 m!1440807))

(declare-fun m!1441193 () Bool)

(assert (=> b!1290452 m!1441193))

(assert (=> b!1290452 m!1441193))

(declare-fun m!1441195 () Bool)

(assert (=> b!1290452 m!1441195))

(declare-fun m!1441197 () Bool)

(assert (=> d!363778 m!1441197))

(assert (=> d!363778 m!1440807))

(assert (=> d!363778 m!1440807))

(declare-fun m!1441199 () Bool)

(assert (=> d!363778 m!1441199))

(declare-fun m!1441201 () Bool)

(assert (=> b!1290448 m!1441201))

(declare-fun m!1441203 () Bool)

(assert (=> b!1290449 m!1441203))

(assert (=> b!1290449 m!1440807))

(assert (=> b!1290449 m!1441193))

(assert (=> b!1290449 m!1441193))

(assert (=> b!1290449 m!1441195))

(assert (=> b!1290088 d!363778))

(declare-fun d!363780 () Bool)

(declare-fun lt!424888 () BalanceConc!8406)

(assert (=> d!363780 (= (list!4803 lt!424888) (printList!539 thiss!19762 (list!4804 (singletonSeq!796 t1!34))))))

(assert (=> d!363780 (= lt!424888 (printTailRec!521 thiss!19762 (singletonSeq!796 t1!34) 0 (BalanceConc!8407 Empty!4233)))))

(assert (=> d!363780 (= (print!715 thiss!19762 (singletonSeq!796 t1!34)) lt!424888)))

(declare-fun bs!328490 () Bool)

(assert (= bs!328490 d!363780))

(declare-fun m!1441205 () Bool)

(assert (=> bs!328490 m!1441205))

(assert (=> bs!328490 m!1440805))

(assert (=> bs!328490 m!1440809))

(assert (=> bs!328490 m!1440809))

(declare-fun m!1441207 () Bool)

(assert (=> bs!328490 m!1441207))

(assert (=> bs!328490 m!1440805))

(declare-fun m!1441209 () Bool)

(assert (=> bs!328490 m!1441209))

(assert (=> b!1290088 d!363780))

(declare-fun d!363782 () Bool)

(declare-fun e!827602 () Bool)

(assert (=> d!363782 e!827602))

(declare-fun res!578389 () Bool)

(assert (=> d!363782 (=> (not res!578389) (not e!827602))))

(declare-fun lt!424889 () BalanceConc!8408)

(assert (=> d!363782 (= res!578389 (= (list!4804 lt!424889) (Cons!12886 t1!34 Nil!12886)))))

(assert (=> d!363782 (= lt!424889 (singleton!347 t1!34))))

(assert (=> d!363782 (= (singletonSeq!796 t1!34) lt!424889)))

(declare-fun b!1290453 () Bool)

(assert (=> b!1290453 (= e!827602 (isBalanced!1241 (c!212341 lt!424889)))))

(assert (= (and d!363782 res!578389) b!1290453))

(declare-fun m!1441211 () Bool)

(assert (=> d!363782 m!1441211))

(declare-fun m!1441213 () Bool)

(assert (=> d!363782 m!1441213))

(declare-fun m!1441215 () Bool)

(assert (=> b!1290453 m!1441215))

(assert (=> b!1290088 d!363782))

(declare-fun d!363784 () Bool)

(declare-fun res!578390 () Bool)

(declare-fun e!827603 () Bool)

(assert (=> d!363784 (=> res!578390 e!827603)))

(assert (=> d!363784 (= res!578390 (not ((_ is Cons!12885) (t!117088 rules!2550))))))

(assert (=> d!363784 (= (sepAndNonSepRulesDisjointChars!592 rules!2550 (t!117088 rules!2550)) e!827603)))

(declare-fun b!1290454 () Bool)

(declare-fun e!827604 () Bool)

(assert (=> b!1290454 (= e!827603 e!827604)))

(declare-fun res!578391 () Bool)

(assert (=> b!1290454 (=> (not res!578391) (not e!827604))))

(assert (=> b!1290454 (= res!578391 (ruleDisjointCharsFromAllFromOtherType!283 (h!18286 (t!117088 rules!2550)) rules!2550))))

(declare-fun b!1290455 () Bool)

(assert (=> b!1290455 (= e!827604 (sepAndNonSepRulesDisjointChars!592 rules!2550 (t!117088 (t!117088 rules!2550))))))

(assert (= (and d!363784 (not res!578390)) b!1290454))

(assert (= (and b!1290454 res!578391) b!1290455))

(declare-fun m!1441217 () Bool)

(assert (=> b!1290454 m!1441217))

(declare-fun m!1441219 () Bool)

(assert (=> b!1290455 m!1441219))

(assert (=> b!1289988 d!363784))

(declare-fun d!363786 () Bool)

(assert (=> d!363786 (= (inv!17300 (tag!2481 (h!18286 (t!117088 rules!2550)))) (= (mod (str.len (value!72873 (tag!2481 (h!18286 (t!117088 rules!2550))))) 2) 0))))

(assert (=> b!1290147 d!363786))

(declare-fun d!363788 () Bool)

(declare-fun res!578392 () Bool)

(declare-fun e!827605 () Bool)

(assert (=> d!363788 (=> (not res!578392) (not e!827605))))

(assert (=> d!363788 (= res!578392 (semiInverseModEq!840 (toChars!3273 (transformation!2219 (h!18286 (t!117088 rules!2550)))) (toValue!3414 (transformation!2219 (h!18286 (t!117088 rules!2550))))))))

(assert (=> d!363788 (= (inv!17303 (transformation!2219 (h!18286 (t!117088 rules!2550)))) e!827605)))

(declare-fun b!1290456 () Bool)

(assert (=> b!1290456 (= e!827605 (equivClasses!799 (toChars!3273 (transformation!2219 (h!18286 (t!117088 rules!2550)))) (toValue!3414 (transformation!2219 (h!18286 (t!117088 rules!2550))))))))

(assert (= (and d!363788 res!578392) b!1290456))

(declare-fun m!1441221 () Bool)

(assert (=> d!363788 m!1441221))

(declare-fun m!1441223 () Bool)

(assert (=> b!1290456 m!1441223))

(assert (=> b!1290147 d!363788))

(declare-fun d!363790 () Bool)

(declare-fun lt!424890 () Token!4100)

(assert (=> d!363790 (= lt!424890 (apply!2807 (list!4804 (_1!7214 lt!424813)) 0))))

(assert (=> d!363790 (= lt!424890 (apply!2808 (c!212341 (_1!7214 lt!424813)) 0))))

(declare-fun e!827606 () Bool)

(assert (=> d!363790 e!827606))

(declare-fun res!578393 () Bool)

(assert (=> d!363790 (=> (not res!578393) (not e!827606))))

(assert (=> d!363790 (= res!578393 (<= 0 0))))

(assert (=> d!363790 (= (apply!2800 (_1!7214 lt!424813) 0) lt!424890)))

(declare-fun b!1290457 () Bool)

(assert (=> b!1290457 (= e!827606 (< 0 (size!10511 (_1!7214 lt!424813))))))

(assert (= (and d!363790 res!578393) b!1290457))

(declare-fun m!1441225 () Bool)

(assert (=> d!363790 m!1441225))

(assert (=> d!363790 m!1441225))

(declare-fun m!1441227 () Bool)

(assert (=> d!363790 m!1441227))

(declare-fun m!1441229 () Bool)

(assert (=> d!363790 m!1441229))

(assert (=> b!1290457 m!1440815))

(assert (=> b!1290086 d!363790))

(declare-fun b!1290461 () Bool)

(declare-fun e!827608 () Bool)

(declare-fun lt!424891 () List!12950)

(assert (=> b!1290461 (= e!827608 (or (not (= (Cons!12884 (apply!2799 lt!424775 0) Nil!12884) Nil!12884)) (= lt!424891 (t!117087 (list!4803 (charsOf!1191 t1!34))))))))

(declare-fun b!1290459 () Bool)

(declare-fun e!827607 () List!12950)

(assert (=> b!1290459 (= e!827607 (Cons!12884 (h!18285 (t!117087 (list!4803 (charsOf!1191 t1!34)))) (++!3261 (t!117087 (t!117087 (list!4803 (charsOf!1191 t1!34)))) (Cons!12884 (apply!2799 lt!424775 0) Nil!12884))))))

(declare-fun d!363792 () Bool)

(assert (=> d!363792 e!827608))

(declare-fun res!578395 () Bool)

(assert (=> d!363792 (=> (not res!578395) (not e!827608))))

(assert (=> d!363792 (= res!578395 (= (content!1820 lt!424891) ((_ map or) (content!1820 (t!117087 (list!4803 (charsOf!1191 t1!34)))) (content!1820 (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)))))))

(assert (=> d!363792 (= lt!424891 e!827607)))

(declare-fun c!212409 () Bool)

(assert (=> d!363792 (= c!212409 ((_ is Nil!12884) (t!117087 (list!4803 (charsOf!1191 t1!34)))))))

(assert (=> d!363792 (= (++!3261 (t!117087 (list!4803 (charsOf!1191 t1!34))) (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)) lt!424891)))

(declare-fun b!1290458 () Bool)

(assert (=> b!1290458 (= e!827607 (Cons!12884 (apply!2799 lt!424775 0) Nil!12884))))

(declare-fun b!1290460 () Bool)

(declare-fun res!578394 () Bool)

(assert (=> b!1290460 (=> (not res!578394) (not e!827608))))

(assert (=> b!1290460 (= res!578394 (= (size!10513 lt!424891) (+ (size!10513 (t!117087 (list!4803 (charsOf!1191 t1!34)))) (size!10513 (Cons!12884 (apply!2799 lt!424775 0) Nil!12884)))))))

(assert (= (and d!363792 c!212409) b!1290458))

(assert (= (and d!363792 (not c!212409)) b!1290459))

(assert (= (and d!363792 res!578395) b!1290460))

(assert (= (and b!1290460 res!578394) b!1290461))

(declare-fun m!1441231 () Bool)

(assert (=> b!1290459 m!1441231))

(declare-fun m!1441233 () Bool)

(assert (=> d!363792 m!1441233))

(assert (=> d!363792 m!1441003))

(assert (=> d!363792 m!1440895))

(declare-fun m!1441235 () Bool)

(assert (=> b!1290460 m!1441235))

(assert (=> b!1290460 m!1440985))

(assert (=> b!1290460 m!1440901))

(assert (=> b!1290126 d!363792))

(declare-fun d!363794 () Bool)

(assert (=> d!363794 (= (list!4803 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34))) (list!4806 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34)))))))

(declare-fun bs!328491 () Bool)

(assert (= bs!328491 d!363794))

(declare-fun m!1441237 () Bool)

(assert (=> bs!328491 m!1441237))

(assert (=> b!1290052 d!363794))

(declare-fun d!363796 () Bool)

(assert (=> d!363796 (= (isEmpty!7648 (originalCharacters!3081 t2!34)) ((_ is Nil!12884) (originalCharacters!3081 t2!34)))))

(assert (=> d!363590 d!363796))

(declare-fun b!1290470 () Bool)

(declare-fun res!578406 () Bool)

(declare-fun e!827611 () Bool)

(assert (=> b!1290470 (=> (not res!578406) (not e!827611))))

(declare-fun ++!3264 (Conc!4233 Conc!4233) Conc!4233)

(assert (=> b!1290470 (= res!578406 (isBalanced!1242 (++!3264 (c!212311 (charsOf!1191 t1!34)) (c!212311 (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))))))))

(declare-fun d!363798 () Bool)

(assert (=> d!363798 e!827611))

(declare-fun res!578405 () Bool)

(assert (=> d!363798 (=> (not res!578405) (not e!827611))))

(declare-fun appendAssocInst!244 (Conc!4233 Conc!4233) Bool)

(assert (=> d!363798 (= res!578405 (appendAssocInst!244 (c!212311 (charsOf!1191 t1!34)) (c!212311 (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0)))))))

(declare-fun lt!424894 () BalanceConc!8406)

(assert (=> d!363798 (= lt!424894 (BalanceConc!8407 (++!3264 (c!212311 (charsOf!1191 t1!34)) (c!212311 (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))))))))

(assert (=> d!363798 (= (++!3262 (charsOf!1191 t1!34) (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))) lt!424894)))

(declare-fun b!1290473 () Bool)

(assert (=> b!1290473 (= e!827611 (= (list!4803 lt!424894) (++!3261 (list!4803 (charsOf!1191 t1!34)) (list!4803 (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))))))))

(declare-fun b!1290472 () Bool)

(declare-fun res!578407 () Bool)

(assert (=> b!1290472 (=> (not res!578407) (not e!827611))))

(declare-fun height!604 (Conc!4233) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1290472 (= res!578407 (>= (height!604 (++!3264 (c!212311 (charsOf!1191 t1!34)) (c!212311 (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))))) (max!0 (height!604 (c!212311 (charsOf!1191 t1!34))) (height!604 (c!212311 (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0)))))))))

(declare-fun b!1290471 () Bool)

(declare-fun res!578404 () Bool)

(assert (=> b!1290471 (=> (not res!578404) (not e!827611))))

(assert (=> b!1290471 (= res!578404 (<= (height!604 (++!3264 (c!212311 (charsOf!1191 t1!34)) (c!212311 (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))))) (+ (max!0 (height!604 (c!212311 (charsOf!1191 t1!34))) (height!604 (c!212311 (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))))) 1)))))

(assert (= (and d!363798 res!578405) b!1290470))

(assert (= (and b!1290470 res!578406) b!1290471))

(assert (= (and b!1290471 res!578404) b!1290472))

(assert (= (and b!1290472 res!578407) b!1290473))

(declare-fun m!1441239 () Bool)

(assert (=> b!1290471 m!1441239))

(declare-fun m!1441241 () Bool)

(assert (=> b!1290471 m!1441241))

(assert (=> b!1290471 m!1441241))

(declare-fun m!1441243 () Bool)

(assert (=> b!1290471 m!1441243))

(declare-fun m!1441245 () Bool)

(assert (=> b!1290471 m!1441245))

(assert (=> b!1290471 m!1441243))

(assert (=> b!1290471 m!1441239))

(declare-fun m!1441247 () Bool)

(assert (=> b!1290471 m!1441247))

(declare-fun m!1441249 () Bool)

(assert (=> b!1290473 m!1441249))

(assert (=> b!1290473 m!1440599))

(assert (=> b!1290473 m!1440595))

(assert (=> b!1290473 m!1440795))

(declare-fun m!1441251 () Bool)

(assert (=> b!1290473 m!1441251))

(assert (=> b!1290473 m!1440595))

(assert (=> b!1290473 m!1441251))

(declare-fun m!1441253 () Bool)

(assert (=> b!1290473 m!1441253))

(declare-fun m!1441255 () Bool)

(assert (=> d!363798 m!1441255))

(assert (=> d!363798 m!1441239))

(assert (=> b!1290470 m!1441239))

(assert (=> b!1290470 m!1441239))

(declare-fun m!1441257 () Bool)

(assert (=> b!1290470 m!1441257))

(assert (=> b!1290472 m!1441239))

(assert (=> b!1290472 m!1441241))

(assert (=> b!1290472 m!1441241))

(assert (=> b!1290472 m!1441243))

(assert (=> b!1290472 m!1441245))

(assert (=> b!1290472 m!1441243))

(assert (=> b!1290472 m!1441239))

(assert (=> b!1290472 m!1441247))

(assert (=> d!363592 d!363798))

(declare-fun lt!424923 () Bool)

(declare-fun d!363800 () Bool)

(assert (=> d!363800 (= lt!424923 (prefixMatch!46 (rulesRegex!104 thiss!19762 rules!2550) (list!4803 (++!3262 (charsOf!1191 t1!34) (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))))))))

(declare-datatypes ((Context!1132 0))(
  ( (Context!1133 (exprs!1066 List!12955)) )
))
(declare-fun prefixMatchZipperSequence!136 ((InoxSet Context!1132) BalanceConc!8406 Int) Bool)

(declare-fun focus!57 (Regex!3533) (InoxSet Context!1132))

(assert (=> d!363800 (= lt!424923 (prefixMatchZipperSequence!136 (focus!57 (rulesRegex!104 thiss!19762 rules!2550)) (++!3262 (charsOf!1191 t1!34) (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))) 0))))

(declare-fun lt!424916 () Unit!19046)

(declare-fun lt!424920 () Unit!19046)

(assert (=> d!363800 (= lt!424916 lt!424920)))

(declare-fun lt!424915 () List!12950)

(declare-fun lt!424918 () (InoxSet Context!1132))

(declare-fun prefixMatchZipper!37 ((InoxSet Context!1132) List!12950) Bool)

(assert (=> d!363800 (= (prefixMatch!46 (rulesRegex!104 thiss!19762 rules!2550) lt!424915) (prefixMatchZipper!37 lt!424918 lt!424915))))

(declare-datatypes ((List!12958 0))(
  ( (Nil!12892) (Cons!12892 (h!18293 Context!1132) (t!117147 List!12958)) )
))
(declare-fun lt!424921 () List!12958)

(declare-fun prefixMatchZipperRegexEquiv!37 ((InoxSet Context!1132) List!12958 Regex!3533 List!12950) Unit!19046)

(assert (=> d!363800 (= lt!424920 (prefixMatchZipperRegexEquiv!37 lt!424918 lt!424921 (rulesRegex!104 thiss!19762 rules!2550) lt!424915))))

(assert (=> d!363800 (= lt!424915 (list!4803 (++!3262 (charsOf!1191 t1!34) (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0)))))))

(declare-fun toList!721 ((InoxSet Context!1132)) List!12958)

(assert (=> d!363800 (= lt!424921 (toList!721 (focus!57 (rulesRegex!104 thiss!19762 rules!2550))))))

(assert (=> d!363800 (= lt!424918 (focus!57 (rulesRegex!104 thiss!19762 rules!2550)))))

(declare-fun lt!424919 () Unit!19046)

(declare-fun lt!424917 () Unit!19046)

(assert (=> d!363800 (= lt!424919 lt!424917)))

(declare-fun lt!424924 () (InoxSet Context!1132))

(declare-fun lt!424922 () Int)

(declare-fun dropList!347 (BalanceConc!8406 Int) List!12950)

(assert (=> d!363800 (= (prefixMatchZipper!37 lt!424924 (dropList!347 (++!3262 (charsOf!1191 t1!34) (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))) lt!424922)) (prefixMatchZipperSequence!136 lt!424924 (++!3262 (charsOf!1191 t1!34) (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))) lt!424922))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!37 ((InoxSet Context!1132) BalanceConc!8406 Int) Unit!19046)

(assert (=> d!363800 (= lt!424917 (lemmaprefixMatchZipperSequenceEquivalent!37 lt!424924 (++!3262 (charsOf!1191 t1!34) (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0))) lt!424922))))

(assert (=> d!363800 (= lt!424922 0)))

(assert (=> d!363800 (= lt!424924 (focus!57 (rulesRegex!104 thiss!19762 rules!2550)))))

(assert (=> d!363800 (validRegex!1520 (rulesRegex!104 thiss!19762 rules!2550))))

(assert (=> d!363800 (= (prefixMatchZipperSequence!134 (rulesRegex!104 thiss!19762 rules!2550) (++!3262 (charsOf!1191 t1!34) (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0)))) lt!424923)))

(declare-fun bs!328492 () Bool)

(assert (= bs!328492 d!363800))

(declare-fun m!1441259 () Bool)

(assert (=> bs!328492 m!1441259))

(declare-fun m!1441261 () Bool)

(assert (=> bs!328492 m!1441261))

(assert (=> bs!328492 m!1440797))

(declare-fun m!1441263 () Bool)

(assert (=> bs!328492 m!1441263))

(assert (=> bs!328492 m!1440603))

(declare-fun m!1441265 () Bool)

(assert (=> bs!328492 m!1441265))

(declare-fun m!1441267 () Bool)

(assert (=> bs!328492 m!1441267))

(declare-fun m!1441269 () Bool)

(assert (=> bs!328492 m!1441269))

(declare-fun m!1441271 () Bool)

(assert (=> bs!328492 m!1441271))

(assert (=> bs!328492 m!1440797))

(declare-fun m!1441273 () Bool)

(assert (=> bs!328492 m!1441273))

(declare-fun m!1441275 () Bool)

(assert (=> bs!328492 m!1441275))

(assert (=> bs!328492 m!1440797))

(assert (=> bs!328492 m!1441265))

(assert (=> bs!328492 m!1440603))

(declare-fun m!1441277 () Bool)

(assert (=> bs!328492 m!1441277))

(assert (=> bs!328492 m!1440603))

(declare-fun m!1441279 () Bool)

(assert (=> bs!328492 m!1441279))

(assert (=> bs!328492 m!1441259))

(assert (=> bs!328492 m!1440797))

(declare-fun m!1441281 () Bool)

(assert (=> bs!328492 m!1441281))

(assert (=> bs!328492 m!1440797))

(assert (=> bs!328492 m!1441269))

(assert (=> bs!328492 m!1440603))

(assert (=> bs!328492 m!1441259))

(assert (=> bs!328492 m!1440603))

(declare-fun m!1441283 () Bool)

(assert (=> bs!328492 m!1441283))

(assert (=> d!363592 d!363800))

(declare-fun d!363802 () Bool)

(declare-fun e!827614 () Bool)

(assert (=> d!363802 e!827614))

(declare-fun res!578410 () Bool)

(assert (=> d!363802 (=> (not res!578410) (not e!827614))))

(declare-fun lt!424927 () BalanceConc!8406)

(assert (=> d!363802 (= res!578410 (= (list!4803 lt!424927) (Cons!12884 (apply!2799 (charsOf!1191 t2!34) 0) Nil!12884)))))

(declare-fun singleton!348 (C!7356) BalanceConc!8406)

(assert (=> d!363802 (= lt!424927 (singleton!348 (apply!2799 (charsOf!1191 t2!34) 0)))))

(assert (=> d!363802 (= (singletonSeq!798 (apply!2799 (charsOf!1191 t2!34) 0)) lt!424927)))

(declare-fun b!1290476 () Bool)

(assert (=> b!1290476 (= e!827614 (isBalanced!1242 (c!212311 lt!424927)))))

(assert (= (and d!363802 res!578410) b!1290476))

(declare-fun m!1441285 () Bool)

(assert (=> d!363802 m!1441285))

(assert (=> d!363802 m!1440793))

(declare-fun m!1441287 () Bool)

(assert (=> d!363802 m!1441287))

(declare-fun m!1441289 () Bool)

(assert (=> b!1290476 m!1441289))

(assert (=> d!363592 d!363802))

(assert (=> d!363592 d!363620))

(declare-fun d!363804 () Bool)

(declare-fun lt!424928 () C!7356)

(assert (=> d!363804 (= lt!424928 (apply!2802 (list!4803 (charsOf!1191 t2!34)) 0))))

(assert (=> d!363804 (= lt!424928 (apply!2803 (c!212311 (charsOf!1191 t2!34)) 0))))

(declare-fun e!827615 () Bool)

(assert (=> d!363804 e!827615))

(declare-fun res!578411 () Bool)

(assert (=> d!363804 (=> (not res!578411) (not e!827615))))

(assert (=> d!363804 (= res!578411 (<= 0 0))))

(assert (=> d!363804 (= (apply!2799 (charsOf!1191 t2!34) 0) lt!424928)))

(declare-fun b!1290477 () Bool)

(assert (=> b!1290477 (= e!827615 (< 0 (size!10510 (charsOf!1191 t2!34))))))

(assert (= (and d!363804 res!578411) b!1290477))

(assert (=> d!363804 m!1440613))

(declare-fun m!1441291 () Bool)

(assert (=> d!363804 m!1441291))

(assert (=> d!363804 m!1441291))

(declare-fun m!1441293 () Bool)

(assert (=> d!363804 m!1441293))

(declare-fun m!1441295 () Bool)

(assert (=> d!363804 m!1441295))

(assert (=> b!1290477 m!1440613))

(declare-fun m!1441297 () Bool)

(assert (=> b!1290477 m!1441297))

(assert (=> d!363592 d!363804))

(assert (=> d!363592 d!363616))

(assert (=> d!363592 d!363574))

(declare-fun d!363806 () Bool)

(assert (=> d!363806 (= (isEmpty!7648 (originalCharacters!3081 t1!34)) ((_ is Nil!12884) (originalCharacters!3081 t1!34)))))

(assert (=> d!363588 d!363806))

(declare-fun bs!328493 () Bool)

(declare-fun d!363808 () Bool)

(assert (= bs!328493 (and d!363808 d!363736)))

(declare-fun lambda!50671 () Int)

(assert (=> bs!328493 (= (= (toValue!3414 (transformation!2219 (h!18286 rules!2550))) (toValue!3414 (transformation!2219 (rule!3958 t1!34)))) (= lambda!50671 lambda!50665))))

(declare-fun bs!328494 () Bool)

(assert (= bs!328494 (and d!363808 d!363772)))

(assert (=> bs!328494 (= (= (toValue!3414 (transformation!2219 (h!18286 rules!2550))) (toValue!3414 (transformation!2219 (rule!3958 t2!34)))) (= lambda!50671 lambda!50669))))

(assert (=> d!363808 true))

(assert (=> d!363808 (< (dynLambda!5623 order!7847 (toValue!3414 (transformation!2219 (h!18286 rules!2550)))) (dynLambda!5625 order!7857 lambda!50671))))

(assert (=> d!363808 (= (equivClasses!799 (toChars!3273 (transformation!2219 (h!18286 rules!2550))) (toValue!3414 (transformation!2219 (h!18286 rules!2550)))) (Forall2!404 lambda!50671))))

(declare-fun bs!328495 () Bool)

(assert (= bs!328495 d!363808))

(declare-fun m!1441299 () Bool)

(assert (=> bs!328495 m!1441299))

(assert (=> b!1290130 d!363808))

(declare-fun bs!328496 () Bool)

(declare-fun d!363810 () Bool)

(assert (= bs!328496 (and d!363810 d!363584)))

(declare-fun lambda!50674 () Int)

(assert (=> bs!328496 (= lambda!50674 lambda!50637)))

(declare-fun bs!328497 () Bool)

(assert (= bs!328497 (and d!363810 d!363774)))

(assert (=> bs!328497 (= lambda!50674 lambda!50670)))

(assert (=> d!363810 true))

(declare-fun lt!424931 () Bool)

(assert (=> d!363810 (= lt!424931 (rulesValidInductive!702 thiss!19762 rules!2550))))

(assert (=> d!363810 (= lt!424931 (forall!3245 rules!2550 lambda!50674))))

(assert (=> d!363810 (= (rulesValid!809 thiss!19762 rules!2550) lt!424931)))

(declare-fun bs!328498 () Bool)

(assert (= bs!328498 d!363810))

(assert (=> bs!328498 m!1440573))

(declare-fun m!1441301 () Bool)

(assert (=> bs!328498 m!1441301))

(assert (=> d!363608 d!363810))

(declare-fun bs!328499 () Bool)

(declare-fun d!363812 () Bool)

(assert (= bs!328499 (and d!363812 d!363684)))

(declare-fun lambda!50675 () Int)

(assert (=> bs!328499 (= (and (= (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (toChars!3273 (transformation!2219 (h!18286 rules!2550)))) (= (toValue!3414 (transformation!2219 (rule!3958 t1!34))) (toValue!3414 (transformation!2219 (h!18286 rules!2550))))) (= lambda!50675 lambda!50655))))

(assert (=> d!363812 true))

(assert (=> d!363812 (< (dynLambda!5621 order!7843 (toChars!3273 (transformation!2219 (rule!3958 t1!34)))) (dynLambda!5622 order!7845 lambda!50675))))

(assert (=> d!363812 true))

(assert (=> d!363812 (< (dynLambda!5623 order!7847 (toValue!3414 (transformation!2219 (rule!3958 t1!34)))) (dynLambda!5622 order!7845 lambda!50675))))

(assert (=> d!363812 (= (semiInverseModEq!840 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (toValue!3414 (transformation!2219 (rule!3958 t1!34)))) (Forall!502 lambda!50675))))

(declare-fun bs!328500 () Bool)

(assert (= bs!328500 d!363812))

(declare-fun m!1441303 () Bool)

(assert (=> bs!328500 m!1441303))

(assert (=> d!363582 d!363812))

(declare-fun d!363814 () Bool)

(declare-fun c!212416 () Bool)

(assert (=> d!363814 (= c!212416 ((_ is Node!4233) (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34)))))))

(declare-fun e!827620 () Bool)

(assert (=> d!363814 (= (inv!17307 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34)))) e!827620)))

(declare-fun b!1290484 () Bool)

(declare-fun inv!17309 (Conc!4233) Bool)

(assert (=> b!1290484 (= e!827620 (inv!17309 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34)))))))

(declare-fun b!1290485 () Bool)

(declare-fun e!827621 () Bool)

(assert (=> b!1290485 (= e!827620 e!827621)))

(declare-fun res!578414 () Bool)

(assert (=> b!1290485 (= res!578414 (not ((_ is Leaf!6539) (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34))))))))

(assert (=> b!1290485 (=> res!578414 e!827621)))

(declare-fun b!1290486 () Bool)

(declare-fun inv!17310 (Conc!4233) Bool)

(assert (=> b!1290486 (= e!827621 (inv!17310 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34)))))))

(assert (= (and d!363814 c!212416) b!1290484))

(assert (= (and d!363814 (not c!212416)) b!1290485))

(assert (= (and b!1290485 (not res!578414)) b!1290486))

(declare-fun m!1441305 () Bool)

(assert (=> b!1290484 m!1441305))

(declare-fun m!1441307 () Bool)

(assert (=> b!1290486 m!1441307))

(assert (=> b!1290045 d!363814))

(declare-fun d!363816 () Bool)

(declare-fun c!212417 () Bool)

(assert (=> d!363816 (= c!212417 (isEmpty!7648 (tail!1835 lt!424776)))))

(declare-fun e!827622 () Bool)

(assert (=> d!363816 (= (prefixMatch!46 (derivativeStep!870 lt!424773 (head!2207 lt!424776)) (tail!1835 lt!424776)) e!827622)))

(declare-fun b!1290487 () Bool)

(assert (=> b!1290487 (= e!827622 (not (lostCause!247 (derivativeStep!870 lt!424773 (head!2207 lt!424776)))))))

(declare-fun b!1290488 () Bool)

(assert (=> b!1290488 (= e!827622 (prefixMatch!46 (derivativeStep!870 (derivativeStep!870 lt!424773 (head!2207 lt!424776)) (head!2207 (tail!1835 lt!424776))) (tail!1835 (tail!1835 lt!424776))))))

(assert (= (and d!363816 c!212417) b!1290487))

(assert (= (and d!363816 (not c!212417)) b!1290488))

(assert (=> d!363816 m!1440831))

(declare-fun m!1441309 () Bool)

(assert (=> d!363816 m!1441309))

(assert (=> b!1290487 m!1440829))

(declare-fun m!1441311 () Bool)

(assert (=> b!1290487 m!1441311))

(assert (=> b!1290488 m!1440831))

(declare-fun m!1441313 () Bool)

(assert (=> b!1290488 m!1441313))

(assert (=> b!1290488 m!1440829))

(assert (=> b!1290488 m!1441313))

(declare-fun m!1441315 () Bool)

(assert (=> b!1290488 m!1441315))

(assert (=> b!1290488 m!1440831))

(declare-fun m!1441317 () Bool)

(assert (=> b!1290488 m!1441317))

(assert (=> b!1290488 m!1441315))

(assert (=> b!1290488 m!1441317))

(declare-fun m!1441319 () Bool)

(assert (=> b!1290488 m!1441319))

(assert (=> b!1290094 d!363816))

(declare-fun bm!88629 () Bool)

(declare-fun call!88636 () Regex!3533)

(declare-fun call!88634 () Regex!3533)

(assert (=> bm!88629 (= call!88636 call!88634)))

(declare-fun b!1290524 () Bool)

(declare-fun e!827646 () Regex!3533)

(declare-fun call!88637 () Regex!3533)

(assert (=> b!1290524 (= e!827646 (Union!3533 (Concat!5843 call!88637 (regTwo!7578 lt!424773)) EmptyLang!3533))))

(declare-fun bm!88630 () Bool)

(declare-fun c!212431 () Bool)

(declare-fun call!88635 () Regex!3533)

(assert (=> bm!88630 (= call!88635 (derivativeStep!870 (ite c!212431 (regTwo!7579 lt!424773) (regOne!7578 lt!424773)) (head!2207 lt!424776)))))

(declare-fun b!1290525 () Bool)

(declare-fun e!827643 () Regex!3533)

(declare-fun e!827644 () Regex!3533)

(assert (=> b!1290525 (= e!827643 e!827644)))

(declare-fun c!212435 () Bool)

(assert (=> b!1290525 (= c!212435 ((_ is Star!3533) lt!424773))))

(declare-fun bm!88631 () Bool)

(declare-fun c!212434 () Bool)

(assert (=> bm!88631 (= call!88634 (derivativeStep!870 (ite c!212431 (regOne!7579 lt!424773) (ite c!212435 (reg!3862 lt!424773) (ite c!212434 (regTwo!7578 lt!424773) (regOne!7578 lt!424773)))) (head!2207 lt!424776)))))

(declare-fun b!1290526 () Bool)

(assert (=> b!1290526 (= c!212434 (nullable!1122 (regOne!7578 lt!424773)))))

(assert (=> b!1290526 (= e!827644 e!827646)))

(declare-fun b!1290527 () Bool)

(assert (=> b!1290527 (= c!212431 ((_ is Union!3533) lt!424773))))

(declare-fun e!827642 () Regex!3533)

(assert (=> b!1290527 (= e!827642 e!827643)))

(declare-fun b!1290528 () Bool)

(assert (=> b!1290528 (= e!827646 (Union!3533 (Concat!5843 call!88635 (regTwo!7578 lt!424773)) call!88637))))

(declare-fun b!1290529 () Bool)

(assert (=> b!1290529 (= e!827642 (ite (= (head!2207 lt!424776) (c!212312 lt!424773)) EmptyExpr!3533 EmptyLang!3533))))

(declare-fun b!1290531 () Bool)

(declare-fun e!827645 () Regex!3533)

(assert (=> b!1290531 (= e!827645 EmptyLang!3533)))

(declare-fun bm!88632 () Bool)

(assert (=> bm!88632 (= call!88637 call!88636)))

(declare-fun b!1290532 () Bool)

(assert (=> b!1290532 (= e!827643 (Union!3533 call!88634 call!88635))))

(declare-fun b!1290533 () Bool)

(assert (=> b!1290533 (= e!827644 (Concat!5843 call!88636 lt!424773))))

(declare-fun b!1290530 () Bool)

(assert (=> b!1290530 (= e!827645 e!827642)))

(declare-fun c!212432 () Bool)

(assert (=> b!1290530 (= c!212432 ((_ is ElementMatch!3533) lt!424773))))

(declare-fun d!363818 () Bool)

(declare-fun lt!424939 () Regex!3533)

(assert (=> d!363818 (validRegex!1520 lt!424939)))

(assert (=> d!363818 (= lt!424939 e!827645)))

(declare-fun c!212433 () Bool)

(assert (=> d!363818 (= c!212433 (or ((_ is EmptyExpr!3533) lt!424773) ((_ is EmptyLang!3533) lt!424773)))))

(assert (=> d!363818 (validRegex!1520 lt!424773)))

(assert (=> d!363818 (= (derivativeStep!870 lt!424773 (head!2207 lt!424776)) lt!424939)))

(assert (= (and d!363818 c!212433) b!1290531))

(assert (= (and d!363818 (not c!212433)) b!1290530))

(assert (= (and b!1290530 c!212432) b!1290529))

(assert (= (and b!1290530 (not c!212432)) b!1290527))

(assert (= (and b!1290527 c!212431) b!1290532))

(assert (= (and b!1290527 (not c!212431)) b!1290525))

(assert (= (and b!1290525 c!212435) b!1290533))

(assert (= (and b!1290525 (not c!212435)) b!1290526))

(assert (= (and b!1290526 c!212434) b!1290528))

(assert (= (and b!1290526 (not c!212434)) b!1290524))

(assert (= (or b!1290528 b!1290524) bm!88632))

(assert (= (or b!1290533 bm!88632) bm!88629))

(assert (= (or b!1290532 bm!88629) bm!88631))

(assert (= (or b!1290532 b!1290528) bm!88630))

(assert (=> bm!88630 m!1440827))

(declare-fun m!1441345 () Bool)

(assert (=> bm!88630 m!1441345))

(assert (=> bm!88631 m!1440827))

(declare-fun m!1441347 () Bool)

(assert (=> bm!88631 m!1441347))

(declare-fun m!1441349 () Bool)

(assert (=> b!1290526 m!1441349))

(declare-fun m!1441351 () Bool)

(assert (=> d!363818 m!1441351))

(assert (=> d!363818 m!1440715))

(assert (=> b!1290094 d!363818))

(declare-fun d!363824 () Bool)

(assert (=> d!363824 (= (head!2207 lt!424776) (h!18285 lt!424776))))

(assert (=> b!1290094 d!363824))

(declare-fun d!363826 () Bool)

(assert (=> d!363826 (= (tail!1835 lt!424776) (t!117087 lt!424776))))

(assert (=> b!1290094 d!363826))

(declare-fun d!363828 () Bool)

(assert (=> d!363828 (= (inv!15 (value!72874 t2!34)) (= (charsToBigInt!0 (text!16612 (value!72874 t2!34)) 0) (value!72869 (value!72874 t2!34))))))

(declare-fun bs!328502 () Bool)

(assert (= bs!328502 d!363828))

(declare-fun m!1441353 () Bool)

(assert (=> bs!328502 m!1441353))

(assert (=> b!1289981 d!363828))

(assert (=> d!363610 d!363780))

(assert (=> d!363610 d!363782))

(declare-fun d!363830 () Bool)

(assert (=> d!363830 (= (list!4804 (_1!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t1!34))))) (list!4808 (c!212341 (_1!7214 (lex!778 thiss!19762 rules!2550 (print!715 thiss!19762 (singletonSeq!796 t1!34)))))))))

(declare-fun bs!328503 () Bool)

(assert (= bs!328503 d!363830))

(declare-fun m!1441355 () Bool)

(assert (=> bs!328503 m!1441355))

(assert (=> d!363610 d!363830))

(declare-fun d!363832 () Bool)

(declare-fun lt!424941 () Int)

(assert (=> d!363832 (= lt!424941 (size!10517 (list!4804 (_1!7214 lt!424813))))))

(assert (=> d!363832 (= lt!424941 (size!10518 (c!212341 (_1!7214 lt!424813))))))

(assert (=> d!363832 (= (size!10511 (_1!7214 lt!424813)) lt!424941)))

(declare-fun bs!328504 () Bool)

(assert (= bs!328504 d!363832))

(assert (=> bs!328504 m!1441225))

(assert (=> bs!328504 m!1441225))

(declare-fun m!1441357 () Bool)

(assert (=> bs!328504 m!1441357))

(declare-fun m!1441359 () Bool)

(assert (=> bs!328504 m!1441359))

(assert (=> d!363610 d!363832))

(assert (=> d!363610 d!363778))

(declare-fun d!363834 () Bool)

(assert (=> d!363834 (= (list!4804 (singletonSeq!796 t1!34)) (list!4808 (c!212341 (singletonSeq!796 t1!34))))))

(declare-fun bs!328505 () Bool)

(assert (= bs!328505 d!363834))

(declare-fun m!1441361 () Bool)

(assert (=> bs!328505 m!1441361))

(assert (=> d!363610 d!363834))

(assert (=> d!363610 d!363634))

(declare-fun d!363836 () Bool)

(assert (=> d!363836 (= (inv!17308 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34))) (isBalanced!1242 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34)))))))

(declare-fun bs!328506 () Bool)

(assert (= bs!328506 d!363836))

(declare-fun m!1441363 () Bool)

(assert (=> bs!328506 m!1441363))

(assert (=> tb!69293 d!363836))

(declare-fun d!363838 () Bool)

(assert (=> d!363838 (= (list!4803 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34))) (list!4806 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34)))))))

(declare-fun bs!328507 () Bool)

(assert (= bs!328507 d!363838))

(declare-fun m!1441365 () Bool)

(assert (=> bs!328507 m!1441365))

(assert (=> b!1290043 d!363838))

(declare-fun d!363840 () Bool)

(declare-fun c!212436 () Bool)

(assert (=> d!363840 (= c!212436 ((_ is Node!4233) (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34)))))))

(declare-fun e!827649 () Bool)

(assert (=> d!363840 (= (inv!17307 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34)))) e!827649)))

(declare-fun b!1290536 () Bool)

(assert (=> b!1290536 (= e!827649 (inv!17309 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34)))))))

(declare-fun b!1290537 () Bool)

(declare-fun e!827650 () Bool)

(assert (=> b!1290537 (= e!827649 e!827650)))

(declare-fun res!578426 () Bool)

(assert (=> b!1290537 (= res!578426 (not ((_ is Leaf!6539) (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34))))))))

(assert (=> b!1290537 (=> res!578426 e!827650)))

(declare-fun b!1290538 () Bool)

(assert (=> b!1290538 (= e!827650 (inv!17310 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34)))))))

(assert (= (and d!363840 c!212436) b!1290536))

(assert (= (and d!363840 (not c!212436)) b!1290537))

(assert (= (and b!1290537 (not res!578426)) b!1290538))

(declare-fun m!1441367 () Bool)

(assert (=> b!1290536 m!1441367))

(declare-fun m!1441369 () Bool)

(assert (=> b!1290538 m!1441369))

(assert (=> b!1290020 d!363840))

(declare-fun d!363842 () Bool)

(assert (=> d!363842 (= (inv!16 (value!72874 t1!34)) (= (charsToInt!0 (text!16610 (value!72874 t1!34))) (value!72865 (value!72874 t1!34))))))

(declare-fun bs!328508 () Bool)

(assert (= bs!328508 d!363842))

(declare-fun m!1441371 () Bool)

(assert (=> bs!328508 m!1441371))

(assert (=> b!1290038 d!363842))

(declare-fun d!363844 () Bool)

(assert (=> d!363844 (= (inv!17 (value!72874 t1!34)) (= (charsToBigInt!1 (text!16611 (value!72874 t1!34))) (value!72866 (value!72874 t1!34))))))

(declare-fun bs!328509 () Bool)

(assert (= bs!328509 d!363844))

(declare-fun m!1441373 () Bool)

(assert (=> bs!328509 m!1441373))

(assert (=> b!1290036 d!363844))

(declare-fun d!363846 () Bool)

(declare-fun res!578432 () Bool)

(declare-fun e!827660 () Bool)

(assert (=> d!363846 (=> res!578432 e!827660)))

(assert (=> d!363846 (= res!578432 ((_ is Nil!12885) rules!2550))))

(assert (=> d!363846 (= (noDuplicateTag!809 thiss!19762 rules!2550 Nil!12888) e!827660)))

(declare-fun b!1290552 () Bool)

(declare-fun e!827661 () Bool)

(assert (=> b!1290552 (= e!827660 e!827661)))

(declare-fun res!578433 () Bool)

(assert (=> b!1290552 (=> (not res!578433) (not e!827661))))

(declare-fun contains!2154 (List!12954 String!15781) Bool)

(assert (=> b!1290552 (= res!578433 (not (contains!2154 Nil!12888 (tag!2481 (h!18286 rules!2550)))))))

(declare-fun b!1290553 () Bool)

(assert (=> b!1290553 (= e!827661 (noDuplicateTag!809 thiss!19762 (t!117088 rules!2550) (Cons!12888 (tag!2481 (h!18286 rules!2550)) Nil!12888)))))

(assert (= (and d!363846 (not res!578432)) b!1290552))

(assert (= (and b!1290552 res!578433) b!1290553))

(declare-fun m!1441381 () Bool)

(assert (=> b!1290552 m!1441381))

(declare-fun m!1441383 () Bool)

(assert (=> b!1290553 m!1441383))

(assert (=> b!1290085 d!363846))

(declare-fun d!363850 () Bool)

(declare-fun lt!424945 () Bool)

(assert (=> d!363850 (= lt!424945 (isEmpty!7648 (list!4803 (_2!7214 lt!424787))))))

(assert (=> d!363850 (= lt!424945 (isEmpty!7650 (c!212311 (_2!7214 lt!424787))))))

(assert (=> d!363850 (= (isEmpty!7646 (_2!7214 lt!424787)) lt!424945)))

(declare-fun bs!328510 () Bool)

(assert (= bs!328510 d!363850))

(declare-fun m!1441385 () Bool)

(assert (=> bs!328510 m!1441385))

(assert (=> bs!328510 m!1441385))

(declare-fun m!1441387 () Bool)

(assert (=> bs!328510 m!1441387))

(declare-fun m!1441391 () Bool)

(assert (=> bs!328510 m!1441391))

(assert (=> b!1290014 d!363850))

(declare-fun bs!328512 () Bool)

(declare-fun d!363852 () Bool)

(assert (= bs!328512 (and d!363852 d!363620)))

(declare-fun lambda!50680 () Int)

(assert (=> bs!328512 (= lambda!50680 lambda!50646)))

(declare-fun lambda!50681 () Int)

(declare-fun forall!3247 (List!12955 Int) Bool)

(assert (=> d!363852 (forall!3247 (map!2804 rules!2550 lambda!50680) lambda!50681)))

(declare-fun lt!424954 () Unit!19046)

(declare-fun e!827671 () Unit!19046)

(assert (=> d!363852 (= lt!424954 e!827671)))

(declare-fun c!212446 () Bool)

(assert (=> d!363852 (= c!212446 ((_ is Nil!12885) rules!2550))))

(assert (=> d!363852 (rulesValidInductive!702 thiss!19762 rules!2550)))

(assert (=> d!363852 (= (lemma!41 rules!2550 thiss!19762 rules!2550) lt!424954)))

(declare-fun b!1290569 () Bool)

(declare-fun Unit!19048 () Unit!19046)

(assert (=> b!1290569 (= e!827671 Unit!19048)))

(declare-fun b!1290570 () Bool)

(declare-fun Unit!19049 () Unit!19046)

(assert (=> b!1290570 (= e!827671 Unit!19049)))

(declare-fun lt!424955 () Unit!19046)

(assert (=> b!1290570 (= lt!424955 (lemma!41 rules!2550 thiss!19762 (t!117088 rules!2550)))))

(assert (= (and d!363852 c!212446) b!1290569))

(assert (= (and d!363852 (not c!212446)) b!1290570))

(declare-fun m!1441417 () Bool)

(assert (=> d!363852 m!1441417))

(assert (=> d!363852 m!1441417))

(declare-fun m!1441419 () Bool)

(assert (=> d!363852 m!1441419))

(assert (=> d!363852 m!1440573))

(declare-fun m!1441421 () Bool)

(assert (=> b!1290570 m!1441421))

(assert (=> d!363620 d!363852))

(declare-fun bs!328513 () Bool)

(declare-fun d!363862 () Bool)

(assert (= bs!328513 (and d!363862 d!363852)))

(declare-fun lambda!50684 () Int)

(assert (=> bs!328513 (= lambda!50684 lambda!50681)))

(declare-fun b!1290599 () Bool)

(declare-fun e!827691 () Bool)

(declare-fun lt!424960 () Regex!3533)

(declare-fun isEmptyLang!8 (Regex!3533) Bool)

(assert (=> b!1290599 (= e!827691 (isEmptyLang!8 lt!424960))))

(declare-fun e!827687 () Bool)

(assert (=> d!363862 e!827687))

(declare-fun res!578451 () Bool)

(assert (=> d!363862 (=> (not res!578451) (not e!827687))))

(assert (=> d!363862 (= res!578451 (validRegex!1520 lt!424960))))

(declare-fun e!827686 () Regex!3533)

(assert (=> d!363862 (= lt!424960 e!827686)))

(declare-fun c!212459 () Bool)

(declare-fun e!827688 () Bool)

(assert (=> d!363862 (= c!212459 e!827688)))

(declare-fun res!578452 () Bool)

(assert (=> d!363862 (=> (not res!578452) (not e!827688))))

(assert (=> d!363862 (= res!578452 ((_ is Cons!12889) (map!2804 rules!2550 lambda!50646)))))

(assert (=> d!363862 (forall!3247 (map!2804 rules!2550 lambda!50646) lambda!50684)))

(assert (=> d!363862 (= (generalisedUnion!45 (map!2804 rules!2550 lambda!50646)) lt!424960)))

(declare-fun b!1290600 () Bool)

(assert (=> b!1290600 (= e!827686 (h!18290 (map!2804 rules!2550 lambda!50646)))))

(declare-fun b!1290601 () Bool)

(declare-fun e!827690 () Bool)

(assert (=> b!1290601 (= e!827691 e!827690)))

(declare-fun c!212458 () Bool)

(declare-fun isEmpty!7654 (List!12955) Bool)

(declare-fun tail!1837 (List!12955) List!12955)

(assert (=> b!1290601 (= c!212458 (isEmpty!7654 (tail!1837 (map!2804 rules!2550 lambda!50646))))))

(declare-fun b!1290602 () Bool)

(declare-fun e!827689 () Regex!3533)

(assert (=> b!1290602 (= e!827689 (Union!3533 (h!18290 (map!2804 rules!2550 lambda!50646)) (generalisedUnion!45 (t!117126 (map!2804 rules!2550 lambda!50646)))))))

(declare-fun b!1290603 () Bool)

(assert (=> b!1290603 (= e!827688 (isEmpty!7654 (t!117126 (map!2804 rules!2550 lambda!50646))))))

(declare-fun b!1290604 () Bool)

(assert (=> b!1290604 (= e!827687 e!827691)))

(declare-fun c!212461 () Bool)

(assert (=> b!1290604 (= c!212461 (isEmpty!7654 (map!2804 rules!2550 lambda!50646)))))

(declare-fun b!1290605 () Bool)

(declare-fun head!2209 (List!12955) Regex!3533)

(assert (=> b!1290605 (= e!827690 (= lt!424960 (head!2209 (map!2804 rules!2550 lambda!50646))))))

(declare-fun b!1290606 () Bool)

(assert (=> b!1290606 (= e!827686 e!827689)))

(declare-fun c!212460 () Bool)

(assert (=> b!1290606 (= c!212460 ((_ is Cons!12889) (map!2804 rules!2550 lambda!50646)))))

(declare-fun b!1290607 () Bool)

(declare-fun isUnion!8 (Regex!3533) Bool)

(assert (=> b!1290607 (= e!827690 (isUnion!8 lt!424960))))

(declare-fun b!1290608 () Bool)

(assert (=> b!1290608 (= e!827689 EmptyLang!3533)))

(assert (= (and d!363862 res!578452) b!1290603))

(assert (= (and d!363862 c!212459) b!1290600))

(assert (= (and d!363862 (not c!212459)) b!1290606))

(assert (= (and b!1290606 c!212460) b!1290602))

(assert (= (and b!1290606 (not c!212460)) b!1290608))

(assert (= (and d!363862 res!578451) b!1290604))

(assert (= (and b!1290604 c!212461) b!1290599))

(assert (= (and b!1290604 (not c!212461)) b!1290601))

(assert (= (and b!1290601 c!212458) b!1290605))

(assert (= (and b!1290601 (not c!212458)) b!1290607))

(declare-fun m!1441423 () Bool)

(assert (=> d!363862 m!1441423))

(assert (=> d!363862 m!1440881))

(declare-fun m!1441425 () Bool)

(assert (=> d!363862 m!1441425))

(assert (=> b!1290604 m!1440881))

(declare-fun m!1441427 () Bool)

(assert (=> b!1290604 m!1441427))

(declare-fun m!1441429 () Bool)

(assert (=> b!1290607 m!1441429))

(declare-fun m!1441431 () Bool)

(assert (=> b!1290602 m!1441431))

(assert (=> b!1290601 m!1440881))

(declare-fun m!1441433 () Bool)

(assert (=> b!1290601 m!1441433))

(assert (=> b!1290601 m!1441433))

(declare-fun m!1441435 () Bool)

(assert (=> b!1290601 m!1441435))

(declare-fun m!1441437 () Bool)

(assert (=> b!1290603 m!1441437))

(declare-fun m!1441439 () Bool)

(assert (=> b!1290599 m!1441439))

(assert (=> b!1290605 m!1440881))

(declare-fun m!1441443 () Bool)

(assert (=> b!1290605 m!1441443))

(assert (=> d!363620 d!363862))

(declare-fun d!363864 () Bool)

(declare-fun lt!424964 () List!12955)

(declare-fun size!10519 (List!12955) Int)

(declare-fun size!10520 (List!12951) Int)

(assert (=> d!363864 (= (size!10519 lt!424964) (size!10520 rules!2550))))

(declare-fun e!827695 () List!12955)

(assert (=> d!363864 (= lt!424964 e!827695)))

(declare-fun c!212464 () Bool)

(assert (=> d!363864 (= c!212464 ((_ is Nil!12885) rules!2550))))

(assert (=> d!363864 (= (map!2804 rules!2550 lambda!50646) lt!424964)))

(declare-fun b!1290617 () Bool)

(assert (=> b!1290617 (= e!827695 Nil!12889)))

(declare-fun b!1290618 () Bool)

(declare-fun $colon$colon!130 (List!12955 Regex!3533) List!12955)

(declare-fun dynLambda!5631 (Int Rule!4238) Regex!3533)

(assert (=> b!1290618 (= e!827695 ($colon$colon!130 (map!2804 (t!117088 rules!2550) lambda!50646) (dynLambda!5631 lambda!50646 (h!18286 rules!2550))))))

(assert (= (and d!363864 c!212464) b!1290617))

(assert (= (and d!363864 (not c!212464)) b!1290618))

(declare-fun b_lambda!36851 () Bool)

(assert (=> (not b_lambda!36851) (not b!1290618)))

(declare-fun m!1441463 () Bool)

(assert (=> d!363864 m!1441463))

(declare-fun m!1441465 () Bool)

(assert (=> d!363864 m!1441465))

(declare-fun m!1441467 () Bool)

(assert (=> b!1290618 m!1441467))

(declare-fun m!1441469 () Bool)

(assert (=> b!1290618 m!1441469))

(assert (=> b!1290618 m!1441467))

(assert (=> b!1290618 m!1441469))

(declare-fun m!1441471 () Bool)

(assert (=> b!1290618 m!1441471))

(assert (=> d!363620 d!363864))

(declare-fun d!363868 () Bool)

(declare-fun lt!424965 () Int)

(assert (=> d!363868 (>= lt!424965 0)))

(declare-fun e!827696 () Int)

(assert (=> d!363868 (= lt!424965 e!827696)))

(declare-fun c!212465 () Bool)

(assert (=> d!363868 (= c!212465 ((_ is Nil!12884) (list!4803 lt!424775)))))

(assert (=> d!363868 (= (size!10513 (list!4803 lt!424775)) lt!424965)))

(declare-fun b!1290619 () Bool)

(assert (=> b!1290619 (= e!827696 0)))

(declare-fun b!1290620 () Bool)

(assert (=> b!1290620 (= e!827696 (+ 1 (size!10513 (t!117087 (list!4803 lt!424775)))))))

(assert (= (and d!363868 c!212465) b!1290619))

(assert (= (and d!363868 (not c!212465)) b!1290620))

(declare-fun m!1441473 () Bool)

(assert (=> b!1290620 m!1441473))

(assert (=> d!363572 d!363868))

(assert (=> d!363572 d!363752))

(declare-fun d!363870 () Bool)

(declare-fun lt!424968 () Int)

(assert (=> d!363870 (= lt!424968 (size!10513 (list!4806 (c!212311 lt!424775))))))

(assert (=> d!363870 (= lt!424968 (ite ((_ is Empty!4233) (c!212311 lt!424775)) 0 (ite ((_ is Leaf!6539) (c!212311 lt!424775)) (csize!8697 (c!212311 lt!424775)) (csize!8696 (c!212311 lt!424775)))))))

(assert (=> d!363870 (= (size!10514 (c!212311 lt!424775)) lt!424968)))

(declare-fun bs!328514 () Bool)

(assert (= bs!328514 d!363870))

(assert (=> bs!328514 m!1441131))

(assert (=> bs!328514 m!1441131))

(declare-fun m!1441475 () Bool)

(assert (=> bs!328514 m!1441475))

(assert (=> d!363572 d!363870))

(declare-fun d!363872 () Bool)

(declare-fun res!578461 () Bool)

(declare-fun e!827699 () Bool)

(assert (=> d!363872 (=> (not res!578461) (not e!827699))))

(assert (=> d!363872 (= res!578461 (validRegex!1520 (regex!2219 (h!18286 rules!2550))))))

(assert (=> d!363872 (= (ruleValid!544 thiss!19762 (h!18286 rules!2550)) e!827699)))

(declare-fun b!1290625 () Bool)

(declare-fun res!578462 () Bool)

(assert (=> b!1290625 (=> (not res!578462) (not e!827699))))

(assert (=> b!1290625 (= res!578462 (not (nullable!1122 (regex!2219 (h!18286 rules!2550)))))))

(declare-fun b!1290626 () Bool)

(assert (=> b!1290626 (= e!827699 (not (= (tag!2481 (h!18286 rules!2550)) (String!15782 ""))))))

(assert (= (and d!363872 res!578461) b!1290625))

(assert (= (and b!1290625 res!578462) b!1290626))

(declare-fun m!1441477 () Bool)

(assert (=> d!363872 m!1441477))

(declare-fun m!1441479 () Bool)

(assert (=> b!1290625 m!1441479))

(assert (=> b!1290030 d!363872))

(declare-fun bs!328515 () Bool)

(declare-fun d!363874 () Bool)

(assert (= bs!328515 (and d!363874 d!363684)))

(declare-fun lambda!50685 () Int)

(assert (=> bs!328515 (= (and (= (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (toChars!3273 (transformation!2219 (h!18286 rules!2550)))) (= (toValue!3414 (transformation!2219 (rule!3958 t2!34))) (toValue!3414 (transformation!2219 (h!18286 rules!2550))))) (= lambda!50685 lambda!50655))))

(declare-fun bs!328516 () Bool)

(assert (= bs!328516 (and d!363874 d!363812)))

(assert (=> bs!328516 (= (and (= (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (toChars!3273 (transformation!2219 (rule!3958 t1!34)))) (= (toValue!3414 (transformation!2219 (rule!3958 t2!34))) (toValue!3414 (transformation!2219 (rule!3958 t1!34))))) (= lambda!50685 lambda!50675))))

(assert (=> d!363874 true))

(assert (=> d!363874 (< (dynLambda!5621 order!7843 (toChars!3273 (transformation!2219 (rule!3958 t2!34)))) (dynLambda!5622 order!7845 lambda!50685))))

(assert (=> d!363874 true))

(assert (=> d!363874 (< (dynLambda!5623 order!7847 (toValue!3414 (transformation!2219 (rule!3958 t2!34)))) (dynLambda!5622 order!7845 lambda!50685))))

(assert (=> d!363874 (= (semiInverseModEq!840 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (toValue!3414 (transformation!2219 (rule!3958 t2!34)))) (Forall!502 lambda!50685))))

(declare-fun bs!328517 () Bool)

(assert (= bs!328517 d!363874))

(declare-fun m!1441481 () Bool)

(assert (=> bs!328517 m!1441481))

(assert (=> d!363644 d!363874))

(declare-fun b!1290629 () Bool)

(declare-fun b_free!30479 () Bool)

(declare-fun b_next!31183 () Bool)

(assert (=> b!1290629 (= b_free!30479 (not b_next!31183))))

(declare-fun tp!376073 () Bool)

(declare-fun b_and!85947 () Bool)

(assert (=> b!1290629 (= tp!376073 b_and!85947)))

(declare-fun b_free!30481 () Bool)

(declare-fun b_next!31185 () Bool)

(assert (=> b!1290629 (= b_free!30481 (not b_next!31185))))

(declare-fun t!117137 () Bool)

(declare-fun tb!69313 () Bool)

(assert (=> (and b!1290629 (= (toChars!3273 (transformation!2219 (h!18286 (t!117088 (t!117088 rules!2550))))) (toChars!3273 (transformation!2219 (rule!3958 t2!34)))) t!117137) tb!69313))

(declare-fun result!83990 () Bool)

(assert (= result!83990 result!83956))

(assert (=> d!363574 t!117137))

(declare-fun t!117139 () Bool)

(declare-fun tb!69315 () Bool)

(assert (=> (and b!1290629 (= (toChars!3273 (transformation!2219 (h!18286 (t!117088 (t!117088 rules!2550))))) (toChars!3273 (transformation!2219 (rule!3958 t1!34)))) t!117139) tb!69315))

(declare-fun result!83992 () Bool)

(assert (= result!83992 result!83964))

(assert (=> b!1290043 t!117139))

(assert (=> b!1290052 t!117137))

(assert (=> d!363616 t!117139))

(declare-fun tp!376072 () Bool)

(declare-fun b_and!85949 () Bool)

(assert (=> b!1290629 (= tp!376072 (and (=> t!117137 result!83990) (=> t!117139 result!83992) b_and!85949))))

(declare-fun e!827702 () Bool)

(assert (=> b!1290629 (= e!827702 (and tp!376073 tp!376072))))

(declare-fun b!1290628 () Bool)

(declare-fun e!827703 () Bool)

(declare-fun tp!376071 () Bool)

(assert (=> b!1290628 (= e!827703 (and tp!376071 (inv!17300 (tag!2481 (h!18286 (t!117088 (t!117088 rules!2550))))) (inv!17303 (transformation!2219 (h!18286 (t!117088 (t!117088 rules!2550))))) e!827702))))

(declare-fun b!1290627 () Bool)

(declare-fun e!827700 () Bool)

(declare-fun tp!376074 () Bool)

(assert (=> b!1290627 (= e!827700 (and e!827703 tp!376074))))

(assert (=> b!1290146 (= tp!376004 e!827700)))

(assert (= b!1290628 b!1290629))

(assert (= b!1290627 b!1290628))

(assert (= (and b!1290146 ((_ is Cons!12885) (t!117088 (t!117088 rules!2550)))) b!1290627))

(declare-fun m!1441483 () Bool)

(assert (=> b!1290628 m!1441483))

(declare-fun m!1441485 () Bool)

(assert (=> b!1290628 m!1441485))

(declare-fun b!1290631 () Bool)

(declare-fun e!827704 () Bool)

(declare-fun tp!376075 () Bool)

(declare-fun tp!376076 () Bool)

(assert (=> b!1290631 (= e!827704 (and tp!376075 tp!376076))))

(assert (=> b!1290172 (= tp!376022 e!827704)))

(declare-fun b!1290633 () Bool)

(declare-fun tp!376077 () Bool)

(declare-fun tp!376078 () Bool)

(assert (=> b!1290633 (= e!827704 (and tp!376077 tp!376078))))

(declare-fun b!1290632 () Bool)

(declare-fun tp!376079 () Bool)

(assert (=> b!1290632 (= e!827704 tp!376079)))

(declare-fun b!1290630 () Bool)

(assert (=> b!1290630 (= e!827704 tp_is_empty!6561)))

(assert (= (and b!1290172 ((_ is ElementMatch!3533) (regOne!7579 (regex!2219 (rule!3958 t1!34))))) b!1290630))

(assert (= (and b!1290172 ((_ is Concat!5843) (regOne!7579 (regex!2219 (rule!3958 t1!34))))) b!1290631))

(assert (= (and b!1290172 ((_ is Star!3533) (regOne!7579 (regex!2219 (rule!3958 t1!34))))) b!1290632))

(assert (= (and b!1290172 ((_ is Union!3533) (regOne!7579 (regex!2219 (rule!3958 t1!34))))) b!1290633))

(declare-fun b!1290635 () Bool)

(declare-fun e!827705 () Bool)

(declare-fun tp!376080 () Bool)

(declare-fun tp!376081 () Bool)

(assert (=> b!1290635 (= e!827705 (and tp!376080 tp!376081))))

(assert (=> b!1290172 (= tp!376023 e!827705)))

(declare-fun b!1290637 () Bool)

(declare-fun tp!376082 () Bool)

(declare-fun tp!376083 () Bool)

(assert (=> b!1290637 (= e!827705 (and tp!376082 tp!376083))))

(declare-fun b!1290636 () Bool)

(declare-fun tp!376084 () Bool)

(assert (=> b!1290636 (= e!827705 tp!376084)))

(declare-fun b!1290634 () Bool)

(assert (=> b!1290634 (= e!827705 tp_is_empty!6561)))

(assert (= (and b!1290172 ((_ is ElementMatch!3533) (regTwo!7579 (regex!2219 (rule!3958 t1!34))))) b!1290634))

(assert (= (and b!1290172 ((_ is Concat!5843) (regTwo!7579 (regex!2219 (rule!3958 t1!34))))) b!1290635))

(assert (= (and b!1290172 ((_ is Star!3533) (regTwo!7579 (regex!2219 (rule!3958 t1!34))))) b!1290636))

(assert (= (and b!1290172 ((_ is Union!3533) (regTwo!7579 (regex!2219 (rule!3958 t1!34))))) b!1290637))

(declare-fun b!1290639 () Bool)

(declare-fun e!827706 () Bool)

(declare-fun tp!376085 () Bool)

(declare-fun tp!376086 () Bool)

(assert (=> b!1290639 (= e!827706 (and tp!376085 tp!376086))))

(assert (=> b!1290147 (= tp!376001 e!827706)))

(declare-fun b!1290641 () Bool)

(declare-fun tp!376087 () Bool)

(declare-fun tp!376088 () Bool)

(assert (=> b!1290641 (= e!827706 (and tp!376087 tp!376088))))

(declare-fun b!1290640 () Bool)

(declare-fun tp!376089 () Bool)

(assert (=> b!1290640 (= e!827706 tp!376089)))

(declare-fun b!1290638 () Bool)

(assert (=> b!1290638 (= e!827706 tp_is_empty!6561)))

(assert (= (and b!1290147 ((_ is ElementMatch!3533) (regex!2219 (h!18286 (t!117088 rules!2550))))) b!1290638))

(assert (= (and b!1290147 ((_ is Concat!5843) (regex!2219 (h!18286 (t!117088 rules!2550))))) b!1290639))

(assert (= (and b!1290147 ((_ is Star!3533) (regex!2219 (h!18286 (t!117088 rules!2550))))) b!1290640))

(assert (= (and b!1290147 ((_ is Union!3533) (regex!2219 (h!18286 (t!117088 rules!2550))))) b!1290641))

(declare-fun b!1290643 () Bool)

(declare-fun e!827707 () Bool)

(declare-fun tp!376090 () Bool)

(declare-fun tp!376091 () Bool)

(assert (=> b!1290643 (= e!827707 (and tp!376090 tp!376091))))

(assert (=> b!1290170 (= tp!376020 e!827707)))

(declare-fun b!1290645 () Bool)

(declare-fun tp!376092 () Bool)

(declare-fun tp!376093 () Bool)

(assert (=> b!1290645 (= e!827707 (and tp!376092 tp!376093))))

(declare-fun b!1290644 () Bool)

(declare-fun tp!376094 () Bool)

(assert (=> b!1290644 (= e!827707 tp!376094)))

(declare-fun b!1290642 () Bool)

(assert (=> b!1290642 (= e!827707 tp_is_empty!6561)))

(assert (= (and b!1290170 ((_ is ElementMatch!3533) (regOne!7578 (regex!2219 (rule!3958 t1!34))))) b!1290642))

(assert (= (and b!1290170 ((_ is Concat!5843) (regOne!7578 (regex!2219 (rule!3958 t1!34))))) b!1290643))

(assert (= (and b!1290170 ((_ is Star!3533) (regOne!7578 (regex!2219 (rule!3958 t1!34))))) b!1290644))

(assert (= (and b!1290170 ((_ is Union!3533) (regOne!7578 (regex!2219 (rule!3958 t1!34))))) b!1290645))

(declare-fun b!1290647 () Bool)

(declare-fun e!827708 () Bool)

(declare-fun tp!376095 () Bool)

(declare-fun tp!376096 () Bool)

(assert (=> b!1290647 (= e!827708 (and tp!376095 tp!376096))))

(assert (=> b!1290170 (= tp!376021 e!827708)))

(declare-fun b!1290649 () Bool)

(declare-fun tp!376097 () Bool)

(declare-fun tp!376098 () Bool)

(assert (=> b!1290649 (= e!827708 (and tp!376097 tp!376098))))

(declare-fun b!1290648 () Bool)

(declare-fun tp!376099 () Bool)

(assert (=> b!1290648 (= e!827708 tp!376099)))

(declare-fun b!1290646 () Bool)

(assert (=> b!1290646 (= e!827708 tp_is_empty!6561)))

(assert (= (and b!1290170 ((_ is ElementMatch!3533) (regTwo!7578 (regex!2219 (rule!3958 t1!34))))) b!1290646))

(assert (= (and b!1290170 ((_ is Concat!5843) (regTwo!7578 (regex!2219 (rule!3958 t1!34))))) b!1290647))

(assert (= (and b!1290170 ((_ is Star!3533) (regTwo!7578 (regex!2219 (rule!3958 t1!34))))) b!1290648))

(assert (= (and b!1290170 ((_ is Union!3533) (regTwo!7578 (regex!2219 (rule!3958 t1!34))))) b!1290649))

(declare-fun e!827713 () Bool)

(declare-fun b!1290658 () Bool)

(declare-fun tp!376106 () Bool)

(declare-fun tp!376107 () Bool)

(assert (=> b!1290658 (= e!827713 (and (inv!17307 (left!11088 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34))))) tp!376106 (inv!17307 (right!11418 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34))))) tp!376107))))

(declare-fun b!1290660 () Bool)

(declare-fun e!827714 () Bool)

(declare-fun tp!376108 () Bool)

(assert (=> b!1290660 (= e!827714 tp!376108)))

(declare-fun b!1290659 () Bool)

(declare-fun inv!17313 (IArray!8471) Bool)

(assert (=> b!1290659 (= e!827713 (and (inv!17313 (xs!6944 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34))))) e!827714))))

(assert (=> b!1290020 (= tp!375987 (and (inv!17307 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34)))) e!827713))))

(assert (= (and b!1290020 ((_ is Node!4233) (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34))))) b!1290658))

(assert (= b!1290659 b!1290660))

(assert (= (and b!1290020 ((_ is Leaf!6539) (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t2!34))) (value!72874 t2!34))))) b!1290659))

(declare-fun m!1441487 () Bool)

(assert (=> b!1290658 m!1441487))

(declare-fun m!1441489 () Bool)

(assert (=> b!1290658 m!1441489))

(declare-fun m!1441491 () Bool)

(assert (=> b!1290659 m!1441491))

(assert (=> b!1290020 m!1440701))

(declare-fun b!1290662 () Bool)

(declare-fun e!827715 () Bool)

(declare-fun tp!376109 () Bool)

(declare-fun tp!376110 () Bool)

(assert (=> b!1290662 (= e!827715 (and tp!376109 tp!376110))))

(assert (=> b!1290175 (= tp!376029 e!827715)))

(declare-fun b!1290664 () Bool)

(declare-fun tp!376111 () Bool)

(declare-fun tp!376112 () Bool)

(assert (=> b!1290664 (= e!827715 (and tp!376111 tp!376112))))

(declare-fun b!1290663 () Bool)

(declare-fun tp!376113 () Bool)

(assert (=> b!1290663 (= e!827715 tp!376113)))

(declare-fun b!1290661 () Bool)

(assert (=> b!1290661 (= e!827715 tp_is_empty!6561)))

(assert (= (and b!1290175 ((_ is ElementMatch!3533) (reg!3862 (regex!2219 (rule!3958 t2!34))))) b!1290661))

(assert (= (and b!1290175 ((_ is Concat!5843) (reg!3862 (regex!2219 (rule!3958 t2!34))))) b!1290662))

(assert (= (and b!1290175 ((_ is Star!3533) (reg!3862 (regex!2219 (rule!3958 t2!34))))) b!1290663))

(assert (= (and b!1290175 ((_ is Union!3533) (reg!3862 (regex!2219 (rule!3958 t2!34))))) b!1290664))

(declare-fun b!1290666 () Bool)

(declare-fun e!827716 () Bool)

(declare-fun tp!376114 () Bool)

(declare-fun tp!376115 () Bool)

(assert (=> b!1290666 (= e!827716 (and tp!376114 tp!376115))))

(assert (=> b!1290174 (= tp!376025 e!827716)))

(declare-fun b!1290668 () Bool)

(declare-fun tp!376116 () Bool)

(declare-fun tp!376117 () Bool)

(assert (=> b!1290668 (= e!827716 (and tp!376116 tp!376117))))

(declare-fun b!1290667 () Bool)

(declare-fun tp!376118 () Bool)

(assert (=> b!1290667 (= e!827716 tp!376118)))

(declare-fun b!1290665 () Bool)

(assert (=> b!1290665 (= e!827716 tp_is_empty!6561)))

(assert (= (and b!1290174 ((_ is ElementMatch!3533) (regOne!7578 (regex!2219 (rule!3958 t2!34))))) b!1290665))

(assert (= (and b!1290174 ((_ is Concat!5843) (regOne!7578 (regex!2219 (rule!3958 t2!34))))) b!1290666))

(assert (= (and b!1290174 ((_ is Star!3533) (regOne!7578 (regex!2219 (rule!3958 t2!34))))) b!1290667))

(assert (= (and b!1290174 ((_ is Union!3533) (regOne!7578 (regex!2219 (rule!3958 t2!34))))) b!1290668))

(declare-fun b!1290670 () Bool)

(declare-fun e!827717 () Bool)

(declare-fun tp!376119 () Bool)

(declare-fun tp!376120 () Bool)

(assert (=> b!1290670 (= e!827717 (and tp!376119 tp!376120))))

(assert (=> b!1290174 (= tp!376026 e!827717)))

(declare-fun b!1290672 () Bool)

(declare-fun tp!376121 () Bool)

(declare-fun tp!376122 () Bool)

(assert (=> b!1290672 (= e!827717 (and tp!376121 tp!376122))))

(declare-fun b!1290671 () Bool)

(declare-fun tp!376123 () Bool)

(assert (=> b!1290671 (= e!827717 tp!376123)))

(declare-fun b!1290669 () Bool)

(assert (=> b!1290669 (= e!827717 tp_is_empty!6561)))

(assert (= (and b!1290174 ((_ is ElementMatch!3533) (regTwo!7578 (regex!2219 (rule!3958 t2!34))))) b!1290669))

(assert (= (and b!1290174 ((_ is Concat!5843) (regTwo!7578 (regex!2219 (rule!3958 t2!34))))) b!1290670))

(assert (= (and b!1290174 ((_ is Star!3533) (regTwo!7578 (regex!2219 (rule!3958 t2!34))))) b!1290671))

(assert (= (and b!1290174 ((_ is Union!3533) (regTwo!7578 (regex!2219 (rule!3958 t2!34))))) b!1290672))

(declare-fun b!1290674 () Bool)

(declare-fun e!827718 () Bool)

(declare-fun tp!376124 () Bool)

(declare-fun tp!376125 () Bool)

(assert (=> b!1290674 (= e!827718 (and tp!376124 tp!376125))))

(assert (=> b!1290176 (= tp!376027 e!827718)))

(declare-fun b!1290676 () Bool)

(declare-fun tp!376126 () Bool)

(declare-fun tp!376127 () Bool)

(assert (=> b!1290676 (= e!827718 (and tp!376126 tp!376127))))

(declare-fun b!1290675 () Bool)

(declare-fun tp!376128 () Bool)

(assert (=> b!1290675 (= e!827718 tp!376128)))

(declare-fun b!1290673 () Bool)

(assert (=> b!1290673 (= e!827718 tp_is_empty!6561)))

(assert (= (and b!1290176 ((_ is ElementMatch!3533) (regOne!7579 (regex!2219 (rule!3958 t2!34))))) b!1290673))

(assert (= (and b!1290176 ((_ is Concat!5843) (regOne!7579 (regex!2219 (rule!3958 t2!34))))) b!1290674))

(assert (= (and b!1290176 ((_ is Star!3533) (regOne!7579 (regex!2219 (rule!3958 t2!34))))) b!1290675))

(assert (= (and b!1290176 ((_ is Union!3533) (regOne!7579 (regex!2219 (rule!3958 t2!34))))) b!1290676))

(declare-fun b!1290678 () Bool)

(declare-fun e!827719 () Bool)

(declare-fun tp!376129 () Bool)

(declare-fun tp!376130 () Bool)

(assert (=> b!1290678 (= e!827719 (and tp!376129 tp!376130))))

(assert (=> b!1290176 (= tp!376028 e!827719)))

(declare-fun b!1290680 () Bool)

(declare-fun tp!376131 () Bool)

(declare-fun tp!376132 () Bool)

(assert (=> b!1290680 (= e!827719 (and tp!376131 tp!376132))))

(declare-fun b!1290679 () Bool)

(declare-fun tp!376133 () Bool)

(assert (=> b!1290679 (= e!827719 tp!376133)))

(declare-fun b!1290677 () Bool)

(assert (=> b!1290677 (= e!827719 tp_is_empty!6561)))

(assert (= (and b!1290176 ((_ is ElementMatch!3533) (regTwo!7579 (regex!2219 (rule!3958 t2!34))))) b!1290677))

(assert (= (and b!1290176 ((_ is Concat!5843) (regTwo!7579 (regex!2219 (rule!3958 t2!34))))) b!1290678))

(assert (= (and b!1290176 ((_ is Star!3533) (regTwo!7579 (regex!2219 (rule!3958 t2!34))))) b!1290679))

(assert (= (and b!1290176 ((_ is Union!3533) (regTwo!7579 (regex!2219 (rule!3958 t2!34))))) b!1290680))

(declare-fun b!1290682 () Bool)

(declare-fun e!827720 () Bool)

(declare-fun tp!376134 () Bool)

(declare-fun tp!376135 () Bool)

(assert (=> b!1290682 (= e!827720 (and tp!376134 tp!376135))))

(assert (=> b!1290171 (= tp!376024 e!827720)))

(declare-fun b!1290684 () Bool)

(declare-fun tp!376136 () Bool)

(declare-fun tp!376137 () Bool)

(assert (=> b!1290684 (= e!827720 (and tp!376136 tp!376137))))

(declare-fun b!1290683 () Bool)

(declare-fun tp!376138 () Bool)

(assert (=> b!1290683 (= e!827720 tp!376138)))

(declare-fun b!1290681 () Bool)

(assert (=> b!1290681 (= e!827720 tp_is_empty!6561)))

(assert (= (and b!1290171 ((_ is ElementMatch!3533) (reg!3862 (regex!2219 (rule!3958 t1!34))))) b!1290681))

(assert (= (and b!1290171 ((_ is Concat!5843) (reg!3862 (regex!2219 (rule!3958 t1!34))))) b!1290682))

(assert (= (and b!1290171 ((_ is Star!3533) (reg!3862 (regex!2219 (rule!3958 t1!34))))) b!1290683))

(assert (= (and b!1290171 ((_ is Union!3533) (reg!3862 (regex!2219 (rule!3958 t1!34))))) b!1290684))

(declare-fun b!1290685 () Bool)

(declare-fun e!827721 () Bool)

(declare-fun tp!376139 () Bool)

(assert (=> b!1290685 (= e!827721 (and tp_is_empty!6561 tp!376139))))

(assert (=> b!1290137 (= tp!375992 e!827721)))

(assert (= (and b!1290137 ((_ is Cons!12884) (t!117087 (originalCharacters!3081 t2!34)))) b!1290685))

(declare-fun b!1290687 () Bool)

(declare-fun e!827722 () Bool)

(declare-fun tp!376140 () Bool)

(declare-fun tp!376141 () Bool)

(assert (=> b!1290687 (= e!827722 (and tp!376140 tp!376141))))

(assert (=> b!1290167 (= tp!376019 e!827722)))

(declare-fun b!1290689 () Bool)

(declare-fun tp!376142 () Bool)

(declare-fun tp!376143 () Bool)

(assert (=> b!1290689 (= e!827722 (and tp!376142 tp!376143))))

(declare-fun b!1290688 () Bool)

(declare-fun tp!376144 () Bool)

(assert (=> b!1290688 (= e!827722 tp!376144)))

(declare-fun b!1290686 () Bool)

(assert (=> b!1290686 (= e!827722 tp_is_empty!6561)))

(assert (= (and b!1290167 ((_ is ElementMatch!3533) (reg!3862 (regex!2219 (h!18286 rules!2550))))) b!1290686))

(assert (= (and b!1290167 ((_ is Concat!5843) (reg!3862 (regex!2219 (h!18286 rules!2550))))) b!1290687))

(assert (= (and b!1290167 ((_ is Star!3533) (reg!3862 (regex!2219 (h!18286 rules!2550))))) b!1290688))

(assert (= (and b!1290167 ((_ is Union!3533) (reg!3862 (regex!2219 (h!18286 rules!2550))))) b!1290689))

(declare-fun b!1290691 () Bool)

(declare-fun e!827723 () Bool)

(declare-fun tp!376145 () Bool)

(declare-fun tp!376146 () Bool)

(assert (=> b!1290691 (= e!827723 (and tp!376145 tp!376146))))

(assert (=> b!1290166 (= tp!376015 e!827723)))

(declare-fun b!1290693 () Bool)

(declare-fun tp!376147 () Bool)

(declare-fun tp!376148 () Bool)

(assert (=> b!1290693 (= e!827723 (and tp!376147 tp!376148))))

(declare-fun b!1290692 () Bool)

(declare-fun tp!376149 () Bool)

(assert (=> b!1290692 (= e!827723 tp!376149)))

(declare-fun b!1290690 () Bool)

(assert (=> b!1290690 (= e!827723 tp_is_empty!6561)))

(assert (= (and b!1290166 ((_ is ElementMatch!3533) (regOne!7578 (regex!2219 (h!18286 rules!2550))))) b!1290690))

(assert (= (and b!1290166 ((_ is Concat!5843) (regOne!7578 (regex!2219 (h!18286 rules!2550))))) b!1290691))

(assert (= (and b!1290166 ((_ is Star!3533) (regOne!7578 (regex!2219 (h!18286 rules!2550))))) b!1290692))

(assert (= (and b!1290166 ((_ is Union!3533) (regOne!7578 (regex!2219 (h!18286 rules!2550))))) b!1290693))

(declare-fun b!1290695 () Bool)

(declare-fun e!827724 () Bool)

(declare-fun tp!376150 () Bool)

(declare-fun tp!376151 () Bool)

(assert (=> b!1290695 (= e!827724 (and tp!376150 tp!376151))))

(assert (=> b!1290166 (= tp!376016 e!827724)))

(declare-fun b!1290697 () Bool)

(declare-fun tp!376152 () Bool)

(declare-fun tp!376153 () Bool)

(assert (=> b!1290697 (= e!827724 (and tp!376152 tp!376153))))

(declare-fun b!1290696 () Bool)

(declare-fun tp!376154 () Bool)

(assert (=> b!1290696 (= e!827724 tp!376154)))

(declare-fun b!1290694 () Bool)

(assert (=> b!1290694 (= e!827724 tp_is_empty!6561)))

(assert (= (and b!1290166 ((_ is ElementMatch!3533) (regTwo!7578 (regex!2219 (h!18286 rules!2550))))) b!1290694))

(assert (= (and b!1290166 ((_ is Concat!5843) (regTwo!7578 (regex!2219 (h!18286 rules!2550))))) b!1290695))

(assert (= (and b!1290166 ((_ is Star!3533) (regTwo!7578 (regex!2219 (h!18286 rules!2550))))) b!1290696))

(assert (= (and b!1290166 ((_ is Union!3533) (regTwo!7578 (regex!2219 (h!18286 rules!2550))))) b!1290697))

(declare-fun b!1290699 () Bool)

(declare-fun e!827725 () Bool)

(declare-fun tp!376155 () Bool)

(declare-fun tp!376156 () Bool)

(assert (=> b!1290699 (= e!827725 (and tp!376155 tp!376156))))

(assert (=> b!1290168 (= tp!376017 e!827725)))

(declare-fun b!1290701 () Bool)

(declare-fun tp!376157 () Bool)

(declare-fun tp!376158 () Bool)

(assert (=> b!1290701 (= e!827725 (and tp!376157 tp!376158))))

(declare-fun b!1290700 () Bool)

(declare-fun tp!376159 () Bool)

(assert (=> b!1290700 (= e!827725 tp!376159)))

(declare-fun b!1290698 () Bool)

(assert (=> b!1290698 (= e!827725 tp_is_empty!6561)))

(assert (= (and b!1290168 ((_ is ElementMatch!3533) (regOne!7579 (regex!2219 (h!18286 rules!2550))))) b!1290698))

(assert (= (and b!1290168 ((_ is Concat!5843) (regOne!7579 (regex!2219 (h!18286 rules!2550))))) b!1290699))

(assert (= (and b!1290168 ((_ is Star!3533) (regOne!7579 (regex!2219 (h!18286 rules!2550))))) b!1290700))

(assert (= (and b!1290168 ((_ is Union!3533) (regOne!7579 (regex!2219 (h!18286 rules!2550))))) b!1290701))

(declare-fun b!1290703 () Bool)

(declare-fun e!827726 () Bool)

(declare-fun tp!376160 () Bool)

(declare-fun tp!376161 () Bool)

(assert (=> b!1290703 (= e!827726 (and tp!376160 tp!376161))))

(assert (=> b!1290168 (= tp!376018 e!827726)))

(declare-fun b!1290705 () Bool)

(declare-fun tp!376162 () Bool)

(declare-fun tp!376163 () Bool)

(assert (=> b!1290705 (= e!827726 (and tp!376162 tp!376163))))

(declare-fun b!1290704 () Bool)

(declare-fun tp!376164 () Bool)

(assert (=> b!1290704 (= e!827726 tp!376164)))

(declare-fun b!1290702 () Bool)

(assert (=> b!1290702 (= e!827726 tp_is_empty!6561)))

(assert (= (and b!1290168 ((_ is ElementMatch!3533) (regTwo!7579 (regex!2219 (h!18286 rules!2550))))) b!1290702))

(assert (= (and b!1290168 ((_ is Concat!5843) (regTwo!7579 (regex!2219 (h!18286 rules!2550))))) b!1290703))

(assert (= (and b!1290168 ((_ is Star!3533) (regTwo!7579 (regex!2219 (h!18286 rules!2550))))) b!1290704))

(assert (= (and b!1290168 ((_ is Union!3533) (regTwo!7579 (regex!2219 (h!18286 rules!2550))))) b!1290705))

(declare-fun b!1290706 () Bool)

(declare-fun e!827727 () Bool)

(declare-fun tp!376165 () Bool)

(assert (=> b!1290706 (= e!827727 (and tp_is_empty!6561 tp!376165))))

(assert (=> b!1290136 (= tp!375991 e!827727)))

(assert (= (and b!1290136 ((_ is Cons!12884) (t!117087 (originalCharacters!3081 t1!34)))) b!1290706))

(declare-fun e!827728 () Bool)

(declare-fun b!1290707 () Bool)

(declare-fun tp!376167 () Bool)

(declare-fun tp!376166 () Bool)

(assert (=> b!1290707 (= e!827728 (and (inv!17307 (left!11088 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34))))) tp!376166 (inv!17307 (right!11418 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34))))) tp!376167))))

(declare-fun b!1290709 () Bool)

(declare-fun e!827729 () Bool)

(declare-fun tp!376168 () Bool)

(assert (=> b!1290709 (= e!827729 tp!376168)))

(declare-fun b!1290708 () Bool)

(assert (=> b!1290708 (= e!827728 (and (inv!17313 (xs!6944 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34))))) e!827729))))

(assert (=> b!1290045 (= tp!375988 (and (inv!17307 (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34)))) e!827728))))

(assert (= (and b!1290045 ((_ is Node!4233) (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34))))) b!1290707))

(assert (= b!1290708 b!1290709))

(assert (= (and b!1290045 ((_ is Leaf!6539) (c!212311 (dynLambda!5620 (toChars!3273 (transformation!2219 (rule!3958 t1!34))) (value!72874 t1!34))))) b!1290708))

(declare-fun m!1441493 () Bool)

(assert (=> b!1290707 m!1441493))

(declare-fun m!1441495 () Bool)

(assert (=> b!1290707 m!1441495))

(declare-fun m!1441497 () Bool)

(assert (=> b!1290708 m!1441497))

(assert (=> b!1290045 m!1440733))

(declare-fun b_lambda!36853 () Bool)

(assert (= b_lambda!36851 (or d!363620 b_lambda!36853)))

(declare-fun bs!328518 () Bool)

(declare-fun d!363876 () Bool)

(assert (= bs!328518 (and d!363876 d!363620)))

(assert (=> bs!328518 (= (dynLambda!5631 lambda!50646 (h!18286 rules!2550)) (regex!2219 (h!18286 rules!2550)))))

(assert (=> b!1290618 d!363876))

(declare-fun b_lambda!36855 () Bool)

(assert (= b_lambda!36847 (or d!363584 b_lambda!36855)))

(declare-fun bs!328519 () Bool)

(declare-fun d!363878 () Bool)

(assert (= bs!328519 (and d!363878 d!363584)))

(assert (=> bs!328519 (= (dynLambda!5624 lambda!50637 (h!18286 rules!2550)) (ruleValid!544 thiss!19762 (h!18286 rules!2550)))))

(assert (=> bs!328519 m!1440723))

(assert (=> b!1290301 d!363878))

(check-sat (not b!1290705) (not d!363810) (not b!1290682) (not d!363776) (not d!363792) (not b!1290666) (not b!1290442) (not b!1290570) (not b_next!31167) (not bm!88631) (not b!1290296) (not b!1290317) (not b!1290258) b_and!85931 (not b!1290636) (not d!363706) (not b!1290699) (not d!363720) (not b!1290294) (not b!1290632) (not b!1290647) (not b!1290452) (not b!1290272) (not bm!88630) (not b!1290472) (not bm!88598) (not d!363684) (not d!363676) (not d!363834) (not b!1290674) (not b!1290704) (not d!363852) b_and!85887 (not d!363770) (not b!1290389) (not b_lambda!36853) (not b!1290659) (not d!363660) (not b!1290687) (not b!1290620) (not b!1290703) (not b!1290045) (not b!1290276) (not b!1290605) (not b!1290449) b_and!85939 (not b_lambda!36831) (not d!363752) (not b!1290670) b_and!85941 (not b!1290633) (not d!363780) (not d!363658) (not b!1290692) (not b!1290663) (not b_next!31185) (not d!363700) (not b!1290484) (not d!363838) (not d!363818) (not b!1290445) (not d!363754) (not b!1290643) (not b!1290471) (not d!363804) (not d!363790) b_and!85949 (not b!1290280) (not bm!88602) (not b!1290676) (not b!1290460) (not b!1290671) (not b!1290233) (not d!363734) (not b!1290693) (not d!363740) (not b!1290706) (not b!1290696) (not d!363844) (not b!1290685) (not b_next!31175) (not b!1290639) (not d!363774) (not bs!328519) (not b!1290700) (not d!363788) (not b!1290313) (not b_next!31173) (not b!1290628) b_and!85883 (not b!1290618) (not b!1290470) (not b!1290439) (not b!1290635) (not b!1290453) (not b!1290599) (not b!1290448) (not b!1290649) (not d!363800) (not b!1290664) (not b!1290488) (not b!1290315) (not b!1290020) (not b!1290662) (not d!363862) (not b!1290538) (not b!1290536) (not b!1290388) (not b!1290334) (not b!1290553) (not b_lambda!36837) (not b!1290708) (not d!363682) (not b!1290667) (not b!1290678) (not b!1290601) (not d!363728) (not b!1290672) (not d!363678) (not d!363764) (not b_lambda!36833) (not b!1290450) (not b!1290644) (not b!1290552) (not b_next!31171) (not b!1290447) (not b!1290660) (not b!1290436) (not b!1290473) (not bm!88620) (not b!1290709) (not d!363694) (not b!1290688) (not b!1290477) (not b!1290701) tp_is_empty!6561 b_and!85927 (not b!1290640) (not b!1290697) (not b!1290278) (not d!363808) (not b!1290691) (not d!363832) (not d!363726) (not b!1290487) (not b!1290455) (not b!1290648) (not d!363850) (not b!1290627) (not b!1290438) (not d!363772) (not b_lambda!36835) (not b!1290625) (not d!363778) (not b!1290668) (not d!363864) (not b!1290679) (not d!363828) (not b!1290658) (not b!1290290) (not b!1290603) (not b!1290637) (not b!1290607) (not b!1290683) (not d!363666) (not d!363836) (not b_next!31165) (not d!363842) (not b!1290680) (not d!363830) (not b!1290292) (not b!1290526) (not b!1290695) (not bm!88597) (not b!1290645) (not b!1290375) (not d!363654) (not b!1290314) (not d!363870) (not d!363816) (not b!1290486) b_and!85947 (not b!1290631) (not b_next!31169) (not d!363802) b_and!85929 (not b!1290376) (not b!1290675) (not d!363782) (not b_lambda!36855) (not b!1290387) (not b!1290446) (not b!1290707) (not b!1290476) (not d!363812) (not b!1290689) (not b_next!31177) (not d!363874) (not b!1290602) (not d!363798) (not d!363750) (not b!1290302) (not b!1290456) (not b!1290684) (not b!1290454) (not b!1290457) (not b!1290641) b_and!85879 (not d!363736) (not b_next!31183) (not b!1290459) (not d!363872) (not d!363698) (not d!363794) (not b!1290604) (not b_next!31163))
(check-sat (not b_next!31167) b_and!85931 b_and!85887 (not b_next!31185) b_and!85949 (not b_next!31175) (not b_next!31171) b_and!85927 (not b_next!31165) (not b_next!31177) b_and!85879 b_and!85941 b_and!85939 (not b_next!31173) b_and!85883 b_and!85947 (not b_next!31169) b_and!85929 (not b_next!31183) (not b_next!31163))
