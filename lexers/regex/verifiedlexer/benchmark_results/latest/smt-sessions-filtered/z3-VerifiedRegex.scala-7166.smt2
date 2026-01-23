; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!380688 () Bool)

(assert start!380688)

(declare-fun b!4038253 () Bool)

(declare-fun b_free!112489 () Bool)

(declare-fun b_next!113193 () Bool)

(assert (=> b!4038253 (= b_free!112489 (not b_next!113193))))

(declare-fun tp!1226451 () Bool)

(declare-fun b_and!310347 () Bool)

(assert (=> b!4038253 (= tp!1226451 b_and!310347)))

(declare-fun b_free!112491 () Bool)

(declare-fun b_next!113195 () Bool)

(assert (=> b!4038253 (= b_free!112491 (not b_next!113195))))

(declare-fun tp!1226459 () Bool)

(declare-fun b_and!310349 () Bool)

(assert (=> b!4038253 (= tp!1226459 b_and!310349)))

(declare-fun b!4038259 () Bool)

(declare-fun b_free!112493 () Bool)

(declare-fun b_next!113197 () Bool)

(assert (=> b!4038259 (= b_free!112493 (not b_next!113197))))

(declare-fun tp!1226461 () Bool)

(declare-fun b_and!310351 () Bool)

(assert (=> b!4038259 (= tp!1226461 b_and!310351)))

(declare-fun b_free!112495 () Bool)

(declare-fun b_next!113199 () Bool)

(assert (=> b!4038259 (= b_free!112495 (not b_next!113199))))

(declare-fun tp!1226462 () Bool)

(declare-fun b_and!310353 () Bool)

(assert (=> b!4038259 (= tp!1226462 b_and!310353)))

(declare-fun b!4038236 () Bool)

(declare-fun res!1644498 () Bool)

(declare-fun e!2505681 () Bool)

(assert (=> b!4038236 (=> (not res!1644498) (not e!2505681))))

(declare-datatypes ((C!23836 0))(
  ( (C!23837 (val!14012 Int)) )
))
(declare-datatypes ((List!43357 0))(
  ( (Nil!43233) (Cons!43233 (h!48653 C!23836) (t!334776 List!43357)) )
))
(declare-datatypes ((IArray!26267 0))(
  ( (IArray!26268 (innerList!13191 List!43357)) )
))
(declare-datatypes ((Conc!13131 0))(
  ( (Node!13131 (left!32561 Conc!13131) (right!32891 Conc!13131) (csize!26492 Int) (cheight!13342 Int)) (Leaf!20298 (xs!16437 IArray!26267) (csize!26493 Int)) (Empty!13131) )
))
(declare-datatypes ((BalanceConc!25856 0))(
  ( (BalanceConc!25857 (c!697516 Conc!13131)) )
))
(declare-datatypes ((List!43358 0))(
  ( (Nil!43234) (Cons!43234 (h!48654 (_ BitVec 16)) (t!334777 List!43358)) )
))
(declare-datatypes ((TokenValue!7150 0))(
  ( (FloatLiteralValue!14300 (text!50495 List!43358)) (TokenValueExt!7149 (__x!26517 Int)) (Broken!35750 (value!217828 List!43358)) (Object!7273) (End!7150) (Def!7150) (Underscore!7150) (Match!7150) (Else!7150) (Error!7150) (Case!7150) (If!7150) (Extends!7150) (Abstract!7150) (Class!7150) (Val!7150) (DelimiterValue!14300 (del!7210 List!43358)) (KeywordValue!7156 (value!217829 List!43358)) (CommentValue!14300 (value!217830 List!43358)) (WhitespaceValue!14300 (value!217831 List!43358)) (IndentationValue!7150 (value!217832 List!43358)) (String!49467) (Int32!7150) (Broken!35751 (value!217833 List!43358)) (Boolean!7151) (Unit!62436) (OperatorValue!7153 (op!7210 List!43358)) (IdentifierValue!14300 (value!217834 List!43358)) (IdentifierValue!14301 (value!217835 List!43358)) (WhitespaceValue!14301 (value!217836 List!43358)) (True!14300) (False!14300) (Broken!35752 (value!217837 List!43358)) (Broken!35753 (value!217838 List!43358)) (True!14301) (RightBrace!7150) (RightBracket!7150) (Colon!7150) (Null!7150) (Comma!7150) (LeftBracket!7150) (False!14301) (LeftBrace!7150) (ImaginaryLiteralValue!7150 (text!50496 List!43358)) (StringLiteralValue!21450 (value!217839 List!43358)) (EOFValue!7150 (value!217840 List!43358)) (IdentValue!7150 (value!217841 List!43358)) (DelimiterValue!14301 (value!217842 List!43358)) (DedentValue!7150 (value!217843 List!43358)) (NewLineValue!7150 (value!217844 List!43358)) (IntegerValue!21450 (value!217845 (_ BitVec 32)) (text!50497 List!43358)) (IntegerValue!21451 (value!217846 Int) (text!50498 List!43358)) (Times!7150) (Or!7150) (Equal!7150) (Minus!7150) (Broken!35754 (value!217847 List!43358)) (And!7150) (Div!7150) (LessEqual!7150) (Mod!7150) (Concat!18975) (Not!7150) (Plus!7150) (SpaceValue!7150 (value!217848 List!43358)) (IntegerValue!21452 (value!217849 Int) (text!50499 List!43358)) (StringLiteralValue!21451 (text!50500 List!43358)) (FloatLiteralValue!14301 (text!50501 List!43358)) (BytesLiteralValue!7150 (value!217850 List!43358)) (CommentValue!14301 (value!217851 List!43358)) (StringLiteralValue!21452 (value!217852 List!43358)) (ErrorTokenValue!7150 (msg!7211 List!43358)) )
))
(declare-datatypes ((Regex!11825 0))(
  ( (ElementMatch!11825 (c!697517 C!23836)) (Concat!18976 (regOne!24162 Regex!11825) (regTwo!24162 Regex!11825)) (EmptyExpr!11825) (Star!11825 (reg!12154 Regex!11825)) (EmptyLang!11825) (Union!11825 (regOne!24163 Regex!11825) (regTwo!24163 Regex!11825)) )
))
(declare-datatypes ((String!49468 0))(
  ( (String!49469 (value!217853 String)) )
))
(declare-datatypes ((TokenValueInjection!13728 0))(
  ( (TokenValueInjection!13729 (toValue!9456 Int) (toChars!9315 Int)) )
))
(declare-datatypes ((Rule!13640 0))(
  ( (Rule!13641 (regex!6920 Regex!11825) (tag!7780 String!49468) (isSeparator!6920 Bool) (transformation!6920 TokenValueInjection!13728)) )
))
(declare-datatypes ((List!43359 0))(
  ( (Nil!43235) (Cons!43235 (h!48655 Rule!13640) (t!334778 List!43359)) )
))
(declare-fun rules!2999 () List!43359)

(declare-fun isEmpty!25802 (List!43359) Bool)

(assert (=> b!4038236 (= res!1644498 (not (isEmpty!25802 rules!2999)))))

(declare-fun b!4038237 () Bool)

(declare-fun res!1644508 () Bool)

(declare-fun e!2505680 () Bool)

(assert (=> b!4038237 (=> res!1644508 e!2505680)))

(declare-fun lt!1436852 () List!43357)

(declare-fun isEmpty!25803 (List!43357) Bool)

(assert (=> b!4038237 (= res!1644508 (isEmpty!25803 lt!1436852))))

(declare-fun b!4038238 () Bool)

(declare-fun e!2505657 () Bool)

(declare-fun e!2505679 () Bool)

(assert (=> b!4038238 (= e!2505657 e!2505679)))

(declare-fun res!1644499 () Bool)

(assert (=> b!4038238 (=> res!1644499 e!2505679)))

(declare-fun lt!1436874 () List!43357)

(declare-fun prefix!494 () List!43357)

(assert (=> b!4038238 (= res!1644499 (not (= lt!1436874 prefix!494)))))

(declare-fun lt!1436870 () List!43357)

(declare-fun lt!1436845 () List!43357)

(declare-fun ++!11322 (List!43357 List!43357) List!43357)

(assert (=> b!4038238 (= lt!1436874 (++!11322 lt!1436870 lt!1436845))))

(declare-fun getSuffix!2424 (List!43357 List!43357) List!43357)

(assert (=> b!4038238 (= lt!1436845 (getSuffix!2424 prefix!494 lt!1436870))))

(declare-fun isPrefix!4007 (List!43357 List!43357) Bool)

(assert (=> b!4038238 (isPrefix!4007 lt!1436870 prefix!494)))

(declare-datatypes ((Unit!62437 0))(
  ( (Unit!62438) )
))
(declare-fun lt!1436875 () Unit!62437)

(declare-fun lt!1436879 () List!43357)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!571 (List!43357 List!43357 List!43357) Unit!62437)

(assert (=> b!4038238 (= lt!1436875 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!571 prefix!494 lt!1436870 lt!1436879))))

(declare-fun b!4038239 () Bool)

(declare-fun e!2505675 () Bool)

(declare-fun e!2505663 () Bool)

(declare-fun tp!1226454 () Bool)

(assert (=> b!4038239 (= e!2505675 (and e!2505663 tp!1226454))))

(declare-fun e!2505655 () Bool)

(declare-fun b!4038240 () Bool)

(declare-fun tp!1226460 () Bool)

(declare-fun inv!57768 (String!49468) Bool)

(declare-fun inv!57771 (TokenValueInjection!13728) Bool)

(assert (=> b!4038240 (= e!2505663 (and tp!1226460 (inv!57768 (tag!7780 (h!48655 rules!2999))) (inv!57771 (transformation!6920 (h!48655 rules!2999))) e!2505655))))

(declare-fun b!4038241 () Bool)

(declare-fun res!1644510 () Bool)

(assert (=> b!4038241 (=> (not res!1644510) (not e!2505681))))

(declare-fun suffix!1299 () List!43357)

(declare-fun newSuffix!27 () List!43357)

(declare-fun size!32317 (List!43357) Int)

(assert (=> b!4038241 (= res!1644510 (>= (size!32317 suffix!1299) (size!32317 newSuffix!27)))))

(declare-fun b!4038242 () Bool)

(declare-fun lt!1436864 () BalanceConc!25856)

(declare-datatypes ((Token!12978 0))(
  ( (Token!12979 (value!217854 TokenValue!7150) (rule!9990 Rule!13640) (size!32318 Int) (originalCharacters!7520 List!43357)) )
))
(declare-datatypes ((tuple2!42314 0))(
  ( (tuple2!42315 (_1!24291 Token!12978) (_2!24291 List!43357)) )
))
(declare-datatypes ((Option!9334 0))(
  ( (None!9333) (Some!9333 (v!39731 tuple2!42314)) )
))
(declare-fun lt!1436869 () Option!9334)

(declare-fun apply!10109 (TokenValueInjection!13728 BalanceConc!25856) TokenValue!7150)

(assert (=> b!4038242 (= e!2505680 (= lt!1436869 (Some!9333 (tuple2!42315 (Token!12979 (apply!10109 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))) lt!1436864) (rule!9990 (_1!24291 (v!39731 lt!1436869))) (size!32317 lt!1436852) lt!1436852) (_2!24291 (v!39731 lt!1436869))))))))

(declare-fun lt!1436860 () Unit!62437)

(declare-fun lemmaSemiInverse!1905 (TokenValueInjection!13728 BalanceConc!25856) Unit!62437)

(assert (=> b!4038242 (= lt!1436860 (lemmaSemiInverse!1905 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))) lt!1436864))))

(declare-fun seqFromList!5137 (List!43357) BalanceConc!25856)

(assert (=> b!4038242 (= lt!1436864 (seqFromList!5137 lt!1436852))))

(declare-fun b!4038243 () Bool)

(declare-fun token!484 () Token!12978)

(declare-fun e!2505672 () Bool)

(declare-fun tp!1226450 () Bool)

(declare-fun e!2505667 () Bool)

(declare-fun inv!21 (TokenValue!7150) Bool)

(assert (=> b!4038243 (= e!2505667 (and (inv!21 (value!217854 token!484)) e!2505672 tp!1226450))))

(declare-fun b!4038244 () Bool)

(declare-fun e!2505659 () Bool)

(declare-fun e!2505668 () Bool)

(assert (=> b!4038244 (= e!2505659 e!2505668)))

(declare-fun res!1644512 () Bool)

(assert (=> b!4038244 (=> res!1644512 e!2505668)))

(declare-fun lt!1436866 () Option!9334)

(declare-fun lt!1436878 () Option!9334)

(assert (=> b!4038244 (= res!1644512 (not (= lt!1436866 lt!1436878)))))

(declare-fun lt!1436842 () Token!12978)

(declare-fun suffixResult!105 () List!43357)

(assert (=> b!4038244 (= lt!1436866 (Some!9333 (tuple2!42315 lt!1436842 suffixResult!105)))))

(declare-datatypes ((LexerInterface!6509 0))(
  ( (LexerInterfaceExt!6506 (__x!26518 Int)) (Lexer!6507) )
))
(declare-fun thiss!21717 () LexerInterface!6509)

(declare-fun maxPrefixOneRule!2819 (LexerInterface!6509 Rule!13640 List!43357) Option!9334)

(assert (=> b!4038244 (= lt!1436866 (maxPrefixOneRule!2819 thiss!21717 (rule!9990 token!484) lt!1436879))))

(declare-fun lt!1436846 () TokenValue!7150)

(declare-fun lt!1436857 () Int)

(assert (=> b!4038244 (= lt!1436842 (Token!12979 lt!1436846 (rule!9990 token!484) lt!1436857 lt!1436870))))

(assert (=> b!4038244 (= lt!1436846 (apply!10109 (transformation!6920 (rule!9990 token!484)) (seqFromList!5137 lt!1436870)))))

(declare-fun lt!1436841 () Unit!62437)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1625 (LexerInterface!6509 List!43359 List!43357 List!43357 List!43357 Rule!13640) Unit!62437)

(assert (=> b!4038244 (= lt!1436841 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1625 thiss!21717 rules!2999 lt!1436870 lt!1436879 suffixResult!105 (rule!9990 token!484)))))

(declare-fun lt!1436858 () List!43357)

(assert (=> b!4038244 (= lt!1436858 suffixResult!105)))

(declare-fun lt!1436876 () Unit!62437)

(declare-fun lemmaSamePrefixThenSameSuffix!2168 (List!43357 List!43357 List!43357 List!43357 List!43357) Unit!62437)

(assert (=> b!4038244 (= lt!1436876 (lemmaSamePrefixThenSameSuffix!2168 lt!1436870 lt!1436858 lt!1436870 suffixResult!105 lt!1436879))))

(declare-fun lt!1436854 () List!43357)

(assert (=> b!4038244 (isPrefix!4007 lt!1436870 lt!1436854)))

(declare-fun lt!1436865 () Unit!62437)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2842 (List!43357 List!43357) Unit!62437)

(assert (=> b!4038244 (= lt!1436865 (lemmaConcatTwoListThenFirstIsPrefix!2842 lt!1436870 lt!1436858))))

(declare-fun b!4038245 () Bool)

(declare-fun e!2505670 () Bool)

(assert (=> b!4038245 (= e!2505670 (and (= (size!32318 token!484) lt!1436857) (= (originalCharacters!7520 token!484) lt!1436870)))))

(declare-fun b!4038246 () Bool)

(declare-fun res!1644503 () Bool)

(assert (=> b!4038246 (=> (not res!1644503) (not e!2505670))))

(assert (=> b!4038246 (= res!1644503 (= (size!32318 token!484) (size!32317 (originalCharacters!7520 token!484))))))

(declare-fun b!4038247 () Bool)

(declare-fun e!2505656 () Bool)

(declare-fun e!2505664 () Bool)

(assert (=> b!4038247 (= e!2505656 (not e!2505664))))

(declare-fun res!1644492 () Bool)

(assert (=> b!4038247 (=> res!1644492 e!2505664)))

(declare-fun lt!1436849 () List!43357)

(assert (=> b!4038247 (= res!1644492 (not (= lt!1436849 lt!1436879)))))

(assert (=> b!4038247 (= lt!1436849 (++!11322 lt!1436870 suffixResult!105))))

(declare-fun lt!1436871 () Unit!62437)

(declare-fun lemmaInv!1129 (TokenValueInjection!13728) Unit!62437)

(assert (=> b!4038247 (= lt!1436871 (lemmaInv!1129 (transformation!6920 (rule!9990 token!484))))))

(declare-fun ruleValid!2850 (LexerInterface!6509 Rule!13640) Bool)

(assert (=> b!4038247 (ruleValid!2850 thiss!21717 (rule!9990 token!484))))

(declare-fun lt!1436847 () Unit!62437)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1920 (LexerInterface!6509 Rule!13640 List!43359) Unit!62437)

(assert (=> b!4038247 (= lt!1436847 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1920 thiss!21717 (rule!9990 token!484) rules!2999))))

(declare-fun b!4038248 () Bool)

(declare-fun res!1644495 () Bool)

(assert (=> b!4038248 (=> (not res!1644495) (not e!2505681))))

(assert (=> b!4038248 (= res!1644495 (isPrefix!4007 newSuffix!27 suffix!1299))))

(declare-fun b!4038249 () Bool)

(declare-fun e!2505674 () Bool)

(assert (=> b!4038249 (= e!2505674 e!2505680)))

(declare-fun res!1644511 () Bool)

(assert (=> b!4038249 (=> res!1644511 e!2505680)))

(declare-fun contains!8588 (List!43359 Rule!13640) Bool)

(assert (=> b!4038249 (= res!1644511 (not (contains!8588 rules!2999 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))))

(declare-fun list!16094 (BalanceConc!25856) List!43357)

(declare-fun charsOf!4736 (Token!12978) BalanceConc!25856)

(assert (=> b!4038249 (= lt!1436852 (list!16094 (charsOf!4736 (_1!24291 (v!39731 lt!1436869)))))))

(declare-fun lt!1436851 () Unit!62437)

(assert (=> b!4038249 (= lt!1436851 (lemmaInv!1129 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))))

(assert (=> b!4038249 (ruleValid!2850 thiss!21717 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))

(declare-fun lt!1436868 () Unit!62437)

(assert (=> b!4038249 (= lt!1436868 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1920 thiss!21717 (rule!9990 (_1!24291 (v!39731 lt!1436869))) rules!2999))))

(declare-fun lt!1436843 () Unit!62437)

(declare-fun lemmaCharactersSize!1439 (Token!12978) Unit!62437)

(assert (=> b!4038249 (= lt!1436843 (lemmaCharactersSize!1439 token!484))))

(declare-fun lt!1436848 () Unit!62437)

(assert (=> b!4038249 (= lt!1436848 (lemmaCharactersSize!1439 (_1!24291 (v!39731 lt!1436869))))))

(declare-fun b!4038250 () Bool)

(declare-fun e!2505665 () Bool)

(declare-fun tp_is_empty!20621 () Bool)

(declare-fun tp!1226455 () Bool)

(assert (=> b!4038250 (= e!2505665 (and tp_is_empty!20621 tp!1226455))))

(declare-fun b!4038251 () Bool)

(declare-fun e!2505678 () Bool)

(declare-fun tp!1226456 () Bool)

(assert (=> b!4038251 (= e!2505678 (and tp_is_empty!20621 tp!1226456))))

(declare-fun b!4038252 () Bool)

(declare-fun e!2505658 () Bool)

(declare-fun tp!1226457 () Bool)

(assert (=> b!4038252 (= e!2505658 (and tp_is_empty!20621 tp!1226457))))

(declare-fun e!2505660 () Bool)

(assert (=> b!4038253 (= e!2505660 (and tp!1226451 tp!1226459))))

(declare-fun b!4038254 () Bool)

(assert (=> b!4038254 (= e!2505679 e!2505659)))

(declare-fun res!1644507 () Bool)

(assert (=> b!4038254 (=> res!1644507 e!2505659)))

(declare-fun lt!1436862 () List!43357)

(assert (=> b!4038254 (= res!1644507 (or (not (= lt!1436879 lt!1436862)) (not (= lt!1436879 lt!1436854))))))

(assert (=> b!4038254 (= lt!1436862 lt!1436854)))

(assert (=> b!4038254 (= lt!1436854 (++!11322 lt!1436870 lt!1436858))))

(assert (=> b!4038254 (= lt!1436862 (++!11322 lt!1436874 suffix!1299))))

(assert (=> b!4038254 (= lt!1436858 (++!11322 lt!1436845 suffix!1299))))

(declare-fun lt!1436859 () Unit!62437)

(declare-fun lemmaConcatAssociativity!2624 (List!43357 List!43357 List!43357) Unit!62437)

(assert (=> b!4038254 (= lt!1436859 (lemmaConcatAssociativity!2624 lt!1436870 lt!1436845 suffix!1299))))

(declare-fun b!4038255 () Bool)

(declare-fun e!2505671 () Bool)

(assert (=> b!4038255 (= e!2505671 e!2505656)))

(declare-fun res!1644504 () Bool)

(assert (=> b!4038255 (=> (not res!1644504) (not e!2505656))))

(declare-fun maxPrefix!3807 (LexerInterface!6509 List!43359 List!43357) Option!9334)

(assert (=> b!4038255 (= res!1644504 (= (maxPrefix!3807 thiss!21717 rules!2999 lt!1436879) lt!1436878))))

(declare-fun lt!1436844 () tuple2!42314)

(assert (=> b!4038255 (= lt!1436878 (Some!9333 lt!1436844))))

(assert (=> b!4038255 (= lt!1436844 (tuple2!42315 token!484 suffixResult!105))))

(assert (=> b!4038255 (= lt!1436879 (++!11322 prefix!494 suffix!1299))))

(declare-fun b!4038256 () Bool)

(declare-fun e!2505676 () Bool)

(declare-fun tp!1226458 () Bool)

(assert (=> b!4038256 (= e!2505676 (and tp_is_empty!20621 tp!1226458))))

(declare-fun b!4038257 () Bool)

(declare-fun res!1644493 () Bool)

(assert (=> b!4038257 (=> res!1644493 e!2505680)))

(declare-fun lt!1436861 () List!43357)

(assert (=> b!4038257 (= res!1644493 (not (= lt!1436861 (++!11322 lt!1436852 (_2!24291 (v!39731 lt!1436869))))))))

(declare-fun b!4038258 () Bool)

(declare-fun e!2505673 () Bool)

(declare-fun e!2505662 () Bool)

(assert (=> b!4038258 (= e!2505673 e!2505662)))

(declare-fun res!1644494 () Bool)

(assert (=> b!4038258 (=> res!1644494 e!2505662)))

(declare-fun lt!1436855 () List!43357)

(assert (=> b!4038258 (= res!1644494 (not (= lt!1436855 lt!1436879)))))

(declare-fun lt!1436867 () List!43357)

(assert (=> b!4038258 (= lt!1436855 (++!11322 lt!1436870 lt!1436867))))

(assert (=> b!4038258 (= lt!1436867 (getSuffix!2424 lt!1436879 lt!1436870))))

(assert (=> b!4038258 e!2505670))

(declare-fun res!1644501 () Bool)

(assert (=> b!4038258 (=> (not res!1644501) (not e!2505670))))

(assert (=> b!4038258 (= res!1644501 (isPrefix!4007 lt!1436879 lt!1436879))))

(declare-fun lt!1436850 () Unit!62437)

(declare-fun lemmaIsPrefixRefl!2574 (List!43357 List!43357) Unit!62437)

(assert (=> b!4038258 (= lt!1436850 (lemmaIsPrefixRefl!2574 lt!1436879 lt!1436879))))

(assert (=> b!4038259 (= e!2505655 (and tp!1226461 tp!1226462))))

(declare-fun b!4038260 () Bool)

(declare-fun e!2505669 () Bool)

(assert (=> b!4038260 (= e!2505681 e!2505669)))

(declare-fun res!1644500 () Bool)

(assert (=> b!4038260 (=> (not res!1644500) (not e!2505669))))

(declare-fun lt!1436873 () Int)

(assert (=> b!4038260 (= res!1644500 (>= lt!1436873 lt!1436857))))

(assert (=> b!4038260 (= lt!1436857 (size!32317 lt!1436870))))

(assert (=> b!4038260 (= lt!1436873 (size!32317 prefix!494))))

(assert (=> b!4038260 (= lt!1436870 (list!16094 (charsOf!4736 token!484)))))

(declare-fun b!4038261 () Bool)

(assert (=> b!4038261 (= e!2505668 e!2505673)))

(declare-fun res!1644513 () Bool)

(assert (=> b!4038261 (=> res!1644513 e!2505673)))

(declare-fun matchR!5778 (Regex!11825 List!43357) Bool)

(assert (=> b!4038261 (= res!1644513 (not (matchR!5778 (regex!6920 (rule!9990 token!484)) lt!1436870)))))

(assert (=> b!4038261 (isPrefix!4007 lt!1436870 lt!1436861)))

(declare-fun lt!1436872 () Unit!62437)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!800 (List!43357 List!43357 List!43357) Unit!62437)

(assert (=> b!4038261 (= lt!1436872 (lemmaPrefixStaysPrefixWhenAddingToSuffix!800 lt!1436870 prefix!494 newSuffix!27))))

(declare-fun lt!1436840 () Unit!62437)

(assert (=> b!4038261 (= lt!1436840 (lemmaPrefixStaysPrefixWhenAddingToSuffix!800 lt!1436870 prefix!494 suffix!1299))))

(declare-fun b!4038262 () Bool)

(assert (=> b!4038262 (= e!2505669 e!2505671)))

(declare-fun res!1644505 () Bool)

(assert (=> b!4038262 (=> (not res!1644505) (not e!2505671))))

(declare-fun lt!1436839 () List!43357)

(assert (=> b!4038262 (= res!1644505 (= lt!1436839 lt!1436861))))

(assert (=> b!4038262 (= lt!1436861 (++!11322 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43357)

(assert (=> b!4038262 (= lt!1436839 (++!11322 lt!1436870 newSuffixResult!27))))

(declare-fun b!4038263 () Bool)

(assert (=> b!4038263 (= e!2505664 e!2505657)))

(declare-fun res!1644502 () Bool)

(assert (=> b!4038263 (=> res!1644502 e!2505657)))

(assert (=> b!4038263 (= res!1644502 (not (isPrefix!4007 lt!1436870 lt!1436879)))))

(assert (=> b!4038263 (isPrefix!4007 prefix!494 lt!1436879)))

(declare-fun lt!1436877 () Unit!62437)

(assert (=> b!4038263 (= lt!1436877 (lemmaConcatTwoListThenFirstIsPrefix!2842 prefix!494 suffix!1299))))

(assert (=> b!4038263 (isPrefix!4007 lt!1436870 lt!1436849)))

(declare-fun lt!1436856 () Unit!62437)

(assert (=> b!4038263 (= lt!1436856 (lemmaConcatTwoListThenFirstIsPrefix!2842 lt!1436870 suffixResult!105))))

(declare-fun b!4038264 () Bool)

(declare-fun tp!1226453 () Bool)

(assert (=> b!4038264 (= e!2505672 (and tp!1226453 (inv!57768 (tag!7780 (rule!9990 token!484))) (inv!57771 (transformation!6920 (rule!9990 token!484))) e!2505660))))

(declare-fun b!4038265 () Bool)

(assert (=> b!4038265 (= e!2505662 e!2505674)))

(declare-fun res!1644509 () Bool)

(assert (=> b!4038265 (=> res!1644509 e!2505674)))

(get-info :version)

(assert (=> b!4038265 (= res!1644509 (not ((_ is Some!9333) lt!1436869)))))

(assert (=> b!4038265 (= lt!1436869 (maxPrefix!3807 thiss!21717 rules!2999 lt!1436861))))

(assert (=> b!4038265 (and (= suffixResult!105 lt!1436867) (= lt!1436844 (tuple2!42315 lt!1436842 lt!1436867)))))

(declare-fun lt!1436863 () Unit!62437)

(assert (=> b!4038265 (= lt!1436863 (lemmaSamePrefixThenSameSuffix!2168 lt!1436870 suffixResult!105 lt!1436870 lt!1436867 lt!1436879))))

(assert (=> b!4038265 (isPrefix!4007 lt!1436870 lt!1436855)))

(declare-fun lt!1436853 () Unit!62437)

(assert (=> b!4038265 (= lt!1436853 (lemmaConcatTwoListThenFirstIsPrefix!2842 lt!1436870 lt!1436867))))

(declare-fun b!4038266 () Bool)

(declare-fun e!2505677 () Bool)

(declare-fun tp!1226452 () Bool)

(assert (=> b!4038266 (= e!2505677 (and tp_is_empty!20621 tp!1226452))))

(declare-fun res!1644496 () Bool)

(assert (=> start!380688 (=> (not res!1644496) (not e!2505681))))

(assert (=> start!380688 (= res!1644496 ((_ is Lexer!6507) thiss!21717))))

(assert (=> start!380688 e!2505681))

(assert (=> start!380688 e!2505678))

(declare-fun inv!57772 (Token!12978) Bool)

(assert (=> start!380688 (and (inv!57772 token!484) e!2505667)))

(assert (=> start!380688 e!2505676))

(assert (=> start!380688 e!2505658))

(assert (=> start!380688 e!2505665))

(assert (=> start!380688 true))

(assert (=> start!380688 e!2505675))

(assert (=> start!380688 e!2505677))

(declare-fun b!4038267 () Bool)

(declare-fun res!1644506 () Bool)

(assert (=> b!4038267 (=> (not res!1644506) (not e!2505681))))

(declare-fun rulesInvariant!5852 (LexerInterface!6509 List!43359) Bool)

(assert (=> b!4038267 (= res!1644506 (rulesInvariant!5852 thiss!21717 rules!2999))))

(declare-fun b!4038268 () Bool)

(declare-fun res!1644497 () Bool)

(assert (=> b!4038268 (=> (not res!1644497) (not e!2505670))))

(assert (=> b!4038268 (= res!1644497 (= (value!217854 token!484) lt!1436846))))

(assert (= (and start!380688 res!1644496) b!4038236))

(assert (= (and b!4038236 res!1644498) b!4038267))

(assert (= (and b!4038267 res!1644506) b!4038241))

(assert (= (and b!4038241 res!1644510) b!4038248))

(assert (= (and b!4038248 res!1644495) b!4038260))

(assert (= (and b!4038260 res!1644500) b!4038262))

(assert (= (and b!4038262 res!1644505) b!4038255))

(assert (= (and b!4038255 res!1644504) b!4038247))

(assert (= (and b!4038247 (not res!1644492)) b!4038263))

(assert (= (and b!4038263 (not res!1644502)) b!4038238))

(assert (= (and b!4038238 (not res!1644499)) b!4038254))

(assert (= (and b!4038254 (not res!1644507)) b!4038244))

(assert (= (and b!4038244 (not res!1644512)) b!4038261))

(assert (= (and b!4038261 (not res!1644513)) b!4038258))

(assert (= (and b!4038258 res!1644501) b!4038268))

(assert (= (and b!4038268 res!1644497) b!4038246))

(assert (= (and b!4038246 res!1644503) b!4038245))

(assert (= (and b!4038258 (not res!1644494)) b!4038265))

(assert (= (and b!4038265 (not res!1644509)) b!4038249))

(assert (= (and b!4038249 (not res!1644511)) b!4038257))

(assert (= (and b!4038257 (not res!1644493)) b!4038237))

(assert (= (and b!4038237 (not res!1644508)) b!4038242))

(assert (= (and start!380688 ((_ is Cons!43233) prefix!494)) b!4038251))

(assert (= b!4038264 b!4038253))

(assert (= b!4038243 b!4038264))

(assert (= start!380688 b!4038243))

(assert (= (and start!380688 ((_ is Cons!43233) suffixResult!105)) b!4038256))

(assert (= (and start!380688 ((_ is Cons!43233) suffix!1299)) b!4038252))

(assert (= (and start!380688 ((_ is Cons!43233) newSuffix!27)) b!4038250))

(assert (= b!4038240 b!4038259))

(assert (= b!4038239 b!4038240))

(assert (= (and start!380688 ((_ is Cons!43235) rules!2999)) b!4038239))

(assert (= (and start!380688 ((_ is Cons!43233) newSuffixResult!27)) b!4038266))

(declare-fun m!4633153 () Bool)

(assert (=> b!4038264 m!4633153))

(declare-fun m!4633155 () Bool)

(assert (=> b!4038264 m!4633155))

(declare-fun m!4633157 () Bool)

(assert (=> b!4038263 m!4633157))

(declare-fun m!4633159 () Bool)

(assert (=> b!4038263 m!4633159))

(declare-fun m!4633161 () Bool)

(assert (=> b!4038263 m!4633161))

(declare-fun m!4633163 () Bool)

(assert (=> b!4038263 m!4633163))

(declare-fun m!4633165 () Bool)

(assert (=> b!4038263 m!4633165))

(declare-fun m!4633167 () Bool)

(assert (=> b!4038248 m!4633167))

(declare-fun m!4633169 () Bool)

(assert (=> b!4038265 m!4633169))

(declare-fun m!4633171 () Bool)

(assert (=> b!4038265 m!4633171))

(declare-fun m!4633173 () Bool)

(assert (=> b!4038265 m!4633173))

(declare-fun m!4633175 () Bool)

(assert (=> b!4038265 m!4633175))

(declare-fun m!4633177 () Bool)

(assert (=> b!4038236 m!4633177))

(declare-fun m!4633179 () Bool)

(assert (=> b!4038249 m!4633179))

(declare-fun m!4633181 () Bool)

(assert (=> b!4038249 m!4633181))

(declare-fun m!4633183 () Bool)

(assert (=> b!4038249 m!4633183))

(declare-fun m!4633185 () Bool)

(assert (=> b!4038249 m!4633185))

(declare-fun m!4633187 () Bool)

(assert (=> b!4038249 m!4633187))

(declare-fun m!4633189 () Bool)

(assert (=> b!4038249 m!4633189))

(assert (=> b!4038249 m!4633187))

(declare-fun m!4633191 () Bool)

(assert (=> b!4038249 m!4633191))

(declare-fun m!4633193 () Bool)

(assert (=> b!4038249 m!4633193))

(declare-fun m!4633195 () Bool)

(assert (=> b!4038238 m!4633195))

(declare-fun m!4633197 () Bool)

(assert (=> b!4038238 m!4633197))

(declare-fun m!4633199 () Bool)

(assert (=> b!4038238 m!4633199))

(declare-fun m!4633201 () Bool)

(assert (=> b!4038238 m!4633201))

(declare-fun m!4633203 () Bool)

(assert (=> b!4038240 m!4633203))

(declare-fun m!4633205 () Bool)

(assert (=> b!4038240 m!4633205))

(declare-fun m!4633207 () Bool)

(assert (=> b!4038254 m!4633207))

(declare-fun m!4633209 () Bool)

(assert (=> b!4038254 m!4633209))

(declare-fun m!4633211 () Bool)

(assert (=> b!4038254 m!4633211))

(declare-fun m!4633213 () Bool)

(assert (=> b!4038254 m!4633213))

(declare-fun m!4633215 () Bool)

(assert (=> b!4038261 m!4633215))

(declare-fun m!4633217 () Bool)

(assert (=> b!4038261 m!4633217))

(declare-fun m!4633219 () Bool)

(assert (=> b!4038261 m!4633219))

(declare-fun m!4633221 () Bool)

(assert (=> b!4038261 m!4633221))

(declare-fun m!4633223 () Bool)

(assert (=> b!4038255 m!4633223))

(declare-fun m!4633225 () Bool)

(assert (=> b!4038255 m!4633225))

(declare-fun m!4633227 () Bool)

(assert (=> b!4038257 m!4633227))

(declare-fun m!4633229 () Bool)

(assert (=> b!4038244 m!4633229))

(declare-fun m!4633231 () Bool)

(assert (=> b!4038244 m!4633231))

(declare-fun m!4633233 () Bool)

(assert (=> b!4038244 m!4633233))

(declare-fun m!4633235 () Bool)

(assert (=> b!4038244 m!4633235))

(declare-fun m!4633237 () Bool)

(assert (=> b!4038244 m!4633237))

(declare-fun m!4633239 () Bool)

(assert (=> b!4038244 m!4633239))

(assert (=> b!4038244 m!4633235))

(declare-fun m!4633241 () Bool)

(assert (=> b!4038244 m!4633241))

(declare-fun m!4633243 () Bool)

(assert (=> b!4038237 m!4633243))

(declare-fun m!4633245 () Bool)

(assert (=> b!4038267 m!4633245))

(declare-fun m!4633247 () Bool)

(assert (=> b!4038246 m!4633247))

(declare-fun m!4633249 () Bool)

(assert (=> b!4038243 m!4633249))

(declare-fun m!4633251 () Bool)

(assert (=> b!4038262 m!4633251))

(declare-fun m!4633253 () Bool)

(assert (=> b!4038262 m!4633253))

(declare-fun m!4633255 () Bool)

(assert (=> b!4038247 m!4633255))

(declare-fun m!4633257 () Bool)

(assert (=> b!4038247 m!4633257))

(declare-fun m!4633259 () Bool)

(assert (=> b!4038247 m!4633259))

(declare-fun m!4633261 () Bool)

(assert (=> b!4038247 m!4633261))

(declare-fun m!4633263 () Bool)

(assert (=> b!4038260 m!4633263))

(declare-fun m!4633265 () Bool)

(assert (=> b!4038260 m!4633265))

(declare-fun m!4633267 () Bool)

(assert (=> b!4038260 m!4633267))

(assert (=> b!4038260 m!4633267))

(declare-fun m!4633269 () Bool)

(assert (=> b!4038260 m!4633269))

(declare-fun m!4633271 () Bool)

(assert (=> b!4038258 m!4633271))

(declare-fun m!4633273 () Bool)

(assert (=> b!4038258 m!4633273))

(declare-fun m!4633275 () Bool)

(assert (=> b!4038258 m!4633275))

(declare-fun m!4633277 () Bool)

(assert (=> b!4038258 m!4633277))

(declare-fun m!4633279 () Bool)

(assert (=> b!4038241 m!4633279))

(declare-fun m!4633281 () Bool)

(assert (=> b!4038241 m!4633281))

(declare-fun m!4633283 () Bool)

(assert (=> b!4038242 m!4633283))

(declare-fun m!4633285 () Bool)

(assert (=> b!4038242 m!4633285))

(declare-fun m!4633287 () Bool)

(assert (=> b!4038242 m!4633287))

(declare-fun m!4633289 () Bool)

(assert (=> b!4038242 m!4633289))

(declare-fun m!4633291 () Bool)

(assert (=> start!380688 m!4633291))

(check-sat (not b!4038264) (not b!4038255) (not b!4038266) (not b!4038260) (not b!4038262) (not b!4038251) (not b!4038237) (not b!4038254) (not b_next!113199) (not b!4038256) (not b!4038236) (not b_next!113193) (not b!4038238) (not b!4038250) (not b!4038240) tp_is_empty!20621 (not b_next!113197) (not b!4038239) (not b!4038257) (not b!4038252) b_and!310347 (not b!4038249) (not b!4038263) (not b!4038246) (not b!4038265) (not b!4038241) (not b_next!113195) (not start!380688) b_and!310349 (not b!4038243) (not b!4038242) (not b!4038261) (not b!4038244) (not b!4038247) (not b!4038267) b_and!310353 (not b!4038248) (not b!4038258) b_and!310351)
(check-sat (not b_next!113197) b_and!310347 (not b_next!113195) b_and!310349 b_and!310353 (not b_next!113199) (not b_next!113193) b_and!310351)
(get-model)

(declare-fun b!4038305 () Bool)

(declare-fun res!1644552 () Bool)

(declare-fun e!2505698 () Bool)

(assert (=> b!4038305 (=> (not res!1644552) (not e!2505698))))

(declare-fun lt!1436904 () Option!9334)

(declare-fun get!14186 (Option!9334) tuple2!42314)

(assert (=> b!4038305 (= res!1644552 (= (value!217854 (_1!24291 (get!14186 lt!1436904))) (apply!10109 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436904)))))))))

(declare-fun bm!287252 () Bool)

(declare-fun call!287257 () Option!9334)

(assert (=> bm!287252 (= call!287257 (maxPrefixOneRule!2819 thiss!21717 (h!48655 rules!2999) lt!1436879))))

(declare-fun b!4038306 () Bool)

(declare-fun e!2505697 () Option!9334)

(declare-fun lt!1436900 () Option!9334)

(declare-fun lt!1436901 () Option!9334)

(assert (=> b!4038306 (= e!2505697 (ite (and ((_ is None!9333) lt!1436900) ((_ is None!9333) lt!1436901)) None!9333 (ite ((_ is None!9333) lt!1436901) lt!1436900 (ite ((_ is None!9333) lt!1436900) lt!1436901 (ite (>= (size!32318 (_1!24291 (v!39731 lt!1436900))) (size!32318 (_1!24291 (v!39731 lt!1436901)))) lt!1436900 lt!1436901)))))))

(assert (=> b!4038306 (= lt!1436900 call!287257)))

(assert (=> b!4038306 (= lt!1436901 (maxPrefix!3807 thiss!21717 (t!334778 rules!2999) lt!1436879))))

(declare-fun b!4038307 () Bool)

(assert (=> b!4038307 (= e!2505698 (contains!8588 rules!2999 (rule!9990 (_1!24291 (get!14186 lt!1436904)))))))

(declare-fun b!4038308 () Bool)

(declare-fun res!1644553 () Bool)

(assert (=> b!4038308 (=> (not res!1644553) (not e!2505698))))

(assert (=> b!4038308 (= res!1644553 (< (size!32317 (_2!24291 (get!14186 lt!1436904))) (size!32317 lt!1436879)))))

(declare-fun b!4038309 () Bool)

(declare-fun res!1644551 () Bool)

(assert (=> b!4038309 (=> (not res!1644551) (not e!2505698))))

(assert (=> b!4038309 (= res!1644551 (= (++!11322 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904)))) (_2!24291 (get!14186 lt!1436904))) lt!1436879))))

(declare-fun b!4038310 () Bool)

(assert (=> b!4038310 (= e!2505697 call!287257)))

(declare-fun b!4038311 () Bool)

(declare-fun res!1644554 () Bool)

(assert (=> b!4038311 (=> (not res!1644554) (not e!2505698))))

(assert (=> b!4038311 (= res!1644554 (= (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904)))) (originalCharacters!7520 (_1!24291 (get!14186 lt!1436904)))))))

(declare-fun b!4038312 () Bool)

(declare-fun e!2505699 () Bool)

(assert (=> b!4038312 (= e!2505699 e!2505698)))

(declare-fun res!1644556 () Bool)

(assert (=> b!4038312 (=> (not res!1644556) (not e!2505698))))

(declare-fun isDefined!7101 (Option!9334) Bool)

(assert (=> b!4038312 (= res!1644556 (isDefined!7101 lt!1436904))))

(declare-fun b!4038313 () Bool)

(declare-fun res!1644550 () Bool)

(assert (=> b!4038313 (=> (not res!1644550) (not e!2505698))))

(assert (=> b!4038313 (= res!1644550 (matchR!5778 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))))))

(declare-fun d!1197071 () Bool)

(assert (=> d!1197071 e!2505699))

(declare-fun res!1644555 () Bool)

(assert (=> d!1197071 (=> res!1644555 e!2505699)))

(declare-fun isEmpty!25805 (Option!9334) Bool)

(assert (=> d!1197071 (= res!1644555 (isEmpty!25805 lt!1436904))))

(assert (=> d!1197071 (= lt!1436904 e!2505697)))

(declare-fun c!697522 () Bool)

(assert (=> d!1197071 (= c!697522 (and ((_ is Cons!43235) rules!2999) ((_ is Nil!43235) (t!334778 rules!2999))))))

(declare-fun lt!1436902 () Unit!62437)

(declare-fun lt!1436903 () Unit!62437)

(assert (=> d!1197071 (= lt!1436902 lt!1436903)))

(assert (=> d!1197071 (isPrefix!4007 lt!1436879 lt!1436879)))

(assert (=> d!1197071 (= lt!1436903 (lemmaIsPrefixRefl!2574 lt!1436879 lt!1436879))))

(declare-fun rulesValidInductive!2522 (LexerInterface!6509 List!43359) Bool)

(assert (=> d!1197071 (rulesValidInductive!2522 thiss!21717 rules!2999)))

(assert (=> d!1197071 (= (maxPrefix!3807 thiss!21717 rules!2999 lt!1436879) lt!1436904)))

(assert (= (and d!1197071 c!697522) b!4038310))

(assert (= (and d!1197071 (not c!697522)) b!4038306))

(assert (= (or b!4038310 b!4038306) bm!287252))

(assert (= (and d!1197071 (not res!1644555)) b!4038312))

(assert (= (and b!4038312 res!1644556) b!4038311))

(assert (= (and b!4038311 res!1644554) b!4038308))

(assert (= (and b!4038308 res!1644553) b!4038309))

(assert (= (and b!4038309 res!1644551) b!4038305))

(assert (= (and b!4038305 res!1644552) b!4038313))

(assert (= (and b!4038313 res!1644550) b!4038307))

(declare-fun m!4633295 () Bool)

(assert (=> b!4038306 m!4633295))

(declare-fun m!4633297 () Bool)

(assert (=> bm!287252 m!4633297))

(declare-fun m!4633299 () Bool)

(assert (=> b!4038307 m!4633299))

(declare-fun m!4633301 () Bool)

(assert (=> b!4038307 m!4633301))

(declare-fun m!4633303 () Bool)

(assert (=> b!4038312 m!4633303))

(declare-fun m!4633305 () Bool)

(assert (=> d!1197071 m!4633305))

(assert (=> d!1197071 m!4633275))

(assert (=> d!1197071 m!4633277))

(declare-fun m!4633307 () Bool)

(assert (=> d!1197071 m!4633307))

(assert (=> b!4038311 m!4633299))

(declare-fun m!4633309 () Bool)

(assert (=> b!4038311 m!4633309))

(assert (=> b!4038311 m!4633309))

(declare-fun m!4633311 () Bool)

(assert (=> b!4038311 m!4633311))

(assert (=> b!4038309 m!4633299))

(assert (=> b!4038309 m!4633309))

(assert (=> b!4038309 m!4633309))

(assert (=> b!4038309 m!4633311))

(assert (=> b!4038309 m!4633311))

(declare-fun m!4633313 () Bool)

(assert (=> b!4038309 m!4633313))

(assert (=> b!4038313 m!4633299))

(assert (=> b!4038313 m!4633309))

(assert (=> b!4038313 m!4633309))

(assert (=> b!4038313 m!4633311))

(assert (=> b!4038313 m!4633311))

(declare-fun m!4633315 () Bool)

(assert (=> b!4038313 m!4633315))

(assert (=> b!4038305 m!4633299))

(declare-fun m!4633323 () Bool)

(assert (=> b!4038305 m!4633323))

(assert (=> b!4038305 m!4633323))

(declare-fun m!4633337 () Bool)

(assert (=> b!4038305 m!4633337))

(assert (=> b!4038308 m!4633299))

(declare-fun m!4633343 () Bool)

(assert (=> b!4038308 m!4633343))

(declare-fun m!4633345 () Bool)

(assert (=> b!4038308 m!4633345))

(assert (=> b!4038255 d!1197071))

(declare-fun b!4038333 () Bool)

(declare-fun res!1644568 () Bool)

(declare-fun e!2505709 () Bool)

(assert (=> b!4038333 (=> (not res!1644568) (not e!2505709))))

(declare-fun lt!1436912 () List!43357)

(assert (=> b!4038333 (= res!1644568 (= (size!32317 lt!1436912) (+ (size!32317 prefix!494) (size!32317 suffix!1299))))))

(declare-fun b!4038331 () Bool)

(declare-fun e!2505708 () List!43357)

(assert (=> b!4038331 (= e!2505708 suffix!1299)))

(declare-fun b!4038332 () Bool)

(assert (=> b!4038332 (= e!2505708 (Cons!43233 (h!48653 prefix!494) (++!11322 (t!334776 prefix!494) suffix!1299)))))

(declare-fun d!1197077 () Bool)

(assert (=> d!1197077 e!2505709))

(declare-fun res!1644569 () Bool)

(assert (=> d!1197077 (=> (not res!1644569) (not e!2505709))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6573 (List!43357) (InoxSet C!23836))

(assert (=> d!1197077 (= res!1644569 (= (content!6573 lt!1436912) ((_ map or) (content!6573 prefix!494) (content!6573 suffix!1299))))))

(assert (=> d!1197077 (= lt!1436912 e!2505708)))

(declare-fun c!697526 () Bool)

(assert (=> d!1197077 (= c!697526 ((_ is Nil!43233) prefix!494))))

(assert (=> d!1197077 (= (++!11322 prefix!494 suffix!1299) lt!1436912)))

(declare-fun b!4038334 () Bool)

(assert (=> b!4038334 (= e!2505709 (or (not (= suffix!1299 Nil!43233)) (= lt!1436912 prefix!494)))))

(assert (= (and d!1197077 c!697526) b!4038331))

(assert (= (and d!1197077 (not c!697526)) b!4038332))

(assert (= (and d!1197077 res!1644569) b!4038333))

(assert (= (and b!4038333 res!1644568) b!4038334))

(declare-fun m!4633369 () Bool)

(assert (=> b!4038333 m!4633369))

(assert (=> b!4038333 m!4633265))

(assert (=> b!4038333 m!4633279))

(declare-fun m!4633371 () Bool)

(assert (=> b!4038332 m!4633371))

(declare-fun m!4633373 () Bool)

(assert (=> d!1197077 m!4633373))

(declare-fun m!4633375 () Bool)

(assert (=> d!1197077 m!4633375))

(declare-fun m!4633377 () Bool)

(assert (=> d!1197077 m!4633377))

(assert (=> b!4038255 d!1197077))

(declare-fun b!4038337 () Bool)

(declare-fun res!1644570 () Bool)

(declare-fun e!2505711 () Bool)

(assert (=> b!4038337 (=> (not res!1644570) (not e!2505711))))

(declare-fun lt!1436913 () List!43357)

(assert (=> b!4038337 (= res!1644570 (= (size!32317 lt!1436913) (+ (size!32317 lt!1436870) (size!32317 lt!1436858))))))

(declare-fun b!4038335 () Bool)

(declare-fun e!2505710 () List!43357)

(assert (=> b!4038335 (= e!2505710 lt!1436858)))

(declare-fun b!4038336 () Bool)

(assert (=> b!4038336 (= e!2505710 (Cons!43233 (h!48653 lt!1436870) (++!11322 (t!334776 lt!1436870) lt!1436858)))))

(declare-fun d!1197081 () Bool)

(assert (=> d!1197081 e!2505711))

(declare-fun res!1644571 () Bool)

(assert (=> d!1197081 (=> (not res!1644571) (not e!2505711))))

(assert (=> d!1197081 (= res!1644571 (= (content!6573 lt!1436913) ((_ map or) (content!6573 lt!1436870) (content!6573 lt!1436858))))))

(assert (=> d!1197081 (= lt!1436913 e!2505710)))

(declare-fun c!697527 () Bool)

(assert (=> d!1197081 (= c!697527 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197081 (= (++!11322 lt!1436870 lt!1436858) lt!1436913)))

(declare-fun b!4038338 () Bool)

(assert (=> b!4038338 (= e!2505711 (or (not (= lt!1436858 Nil!43233)) (= lt!1436913 lt!1436870)))))

(assert (= (and d!1197081 c!697527) b!4038335))

(assert (= (and d!1197081 (not c!697527)) b!4038336))

(assert (= (and d!1197081 res!1644571) b!4038337))

(assert (= (and b!4038337 res!1644570) b!4038338))

(declare-fun m!4633379 () Bool)

(assert (=> b!4038337 m!4633379))

(assert (=> b!4038337 m!4633263))

(declare-fun m!4633381 () Bool)

(assert (=> b!4038337 m!4633381))

(declare-fun m!4633383 () Bool)

(assert (=> b!4038336 m!4633383))

(declare-fun m!4633385 () Bool)

(assert (=> d!1197081 m!4633385))

(declare-fun m!4633387 () Bool)

(assert (=> d!1197081 m!4633387))

(declare-fun m!4633389 () Bool)

(assert (=> d!1197081 m!4633389))

(assert (=> b!4038254 d!1197081))

(declare-fun b!4038341 () Bool)

(declare-fun res!1644572 () Bool)

(declare-fun e!2505713 () Bool)

(assert (=> b!4038341 (=> (not res!1644572) (not e!2505713))))

(declare-fun lt!1436914 () List!43357)

(assert (=> b!4038341 (= res!1644572 (= (size!32317 lt!1436914) (+ (size!32317 lt!1436874) (size!32317 suffix!1299))))))

(declare-fun b!4038339 () Bool)

(declare-fun e!2505712 () List!43357)

(assert (=> b!4038339 (= e!2505712 suffix!1299)))

(declare-fun b!4038340 () Bool)

(assert (=> b!4038340 (= e!2505712 (Cons!43233 (h!48653 lt!1436874) (++!11322 (t!334776 lt!1436874) suffix!1299)))))

(declare-fun d!1197083 () Bool)

(assert (=> d!1197083 e!2505713))

(declare-fun res!1644573 () Bool)

(assert (=> d!1197083 (=> (not res!1644573) (not e!2505713))))

(assert (=> d!1197083 (= res!1644573 (= (content!6573 lt!1436914) ((_ map or) (content!6573 lt!1436874) (content!6573 suffix!1299))))))

(assert (=> d!1197083 (= lt!1436914 e!2505712)))

(declare-fun c!697528 () Bool)

(assert (=> d!1197083 (= c!697528 ((_ is Nil!43233) lt!1436874))))

(assert (=> d!1197083 (= (++!11322 lt!1436874 suffix!1299) lt!1436914)))

(declare-fun b!4038342 () Bool)

(assert (=> b!4038342 (= e!2505713 (or (not (= suffix!1299 Nil!43233)) (= lt!1436914 lt!1436874)))))

(assert (= (and d!1197083 c!697528) b!4038339))

(assert (= (and d!1197083 (not c!697528)) b!4038340))

(assert (= (and d!1197083 res!1644573) b!4038341))

(assert (= (and b!4038341 res!1644572) b!4038342))

(declare-fun m!4633391 () Bool)

(assert (=> b!4038341 m!4633391))

(declare-fun m!4633393 () Bool)

(assert (=> b!4038341 m!4633393))

(assert (=> b!4038341 m!4633279))

(declare-fun m!4633395 () Bool)

(assert (=> b!4038340 m!4633395))

(declare-fun m!4633397 () Bool)

(assert (=> d!1197083 m!4633397))

(declare-fun m!4633399 () Bool)

(assert (=> d!1197083 m!4633399))

(assert (=> d!1197083 m!4633377))

(assert (=> b!4038254 d!1197083))

(declare-fun b!4038345 () Bool)

(declare-fun res!1644574 () Bool)

(declare-fun e!2505715 () Bool)

(assert (=> b!4038345 (=> (not res!1644574) (not e!2505715))))

(declare-fun lt!1436915 () List!43357)

(assert (=> b!4038345 (= res!1644574 (= (size!32317 lt!1436915) (+ (size!32317 lt!1436845) (size!32317 suffix!1299))))))

(declare-fun b!4038343 () Bool)

(declare-fun e!2505714 () List!43357)

(assert (=> b!4038343 (= e!2505714 suffix!1299)))

(declare-fun b!4038344 () Bool)

(assert (=> b!4038344 (= e!2505714 (Cons!43233 (h!48653 lt!1436845) (++!11322 (t!334776 lt!1436845) suffix!1299)))))

(declare-fun d!1197085 () Bool)

(assert (=> d!1197085 e!2505715))

(declare-fun res!1644575 () Bool)

(assert (=> d!1197085 (=> (not res!1644575) (not e!2505715))))

(assert (=> d!1197085 (= res!1644575 (= (content!6573 lt!1436915) ((_ map or) (content!6573 lt!1436845) (content!6573 suffix!1299))))))

(assert (=> d!1197085 (= lt!1436915 e!2505714)))

(declare-fun c!697529 () Bool)

(assert (=> d!1197085 (= c!697529 ((_ is Nil!43233) lt!1436845))))

(assert (=> d!1197085 (= (++!11322 lt!1436845 suffix!1299) lt!1436915)))

(declare-fun b!4038346 () Bool)

(assert (=> b!4038346 (= e!2505715 (or (not (= suffix!1299 Nil!43233)) (= lt!1436915 lt!1436845)))))

(assert (= (and d!1197085 c!697529) b!4038343))

(assert (= (and d!1197085 (not c!697529)) b!4038344))

(assert (= (and d!1197085 res!1644575) b!4038345))

(assert (= (and b!4038345 res!1644574) b!4038346))

(declare-fun m!4633401 () Bool)

(assert (=> b!4038345 m!4633401))

(declare-fun m!4633403 () Bool)

(assert (=> b!4038345 m!4633403))

(assert (=> b!4038345 m!4633279))

(declare-fun m!4633405 () Bool)

(assert (=> b!4038344 m!4633405))

(declare-fun m!4633407 () Bool)

(assert (=> d!1197085 m!4633407))

(declare-fun m!4633409 () Bool)

(assert (=> d!1197085 m!4633409))

(assert (=> d!1197085 m!4633377))

(assert (=> b!4038254 d!1197085))

(declare-fun d!1197087 () Bool)

(assert (=> d!1197087 (= (++!11322 (++!11322 lt!1436870 lt!1436845) suffix!1299) (++!11322 lt!1436870 (++!11322 lt!1436845 suffix!1299)))))

(declare-fun lt!1436924 () Unit!62437)

(declare-fun choose!24463 (List!43357 List!43357 List!43357) Unit!62437)

(assert (=> d!1197087 (= lt!1436924 (choose!24463 lt!1436870 lt!1436845 suffix!1299))))

(assert (=> d!1197087 (= (lemmaConcatAssociativity!2624 lt!1436870 lt!1436845 suffix!1299) lt!1436924)))

(declare-fun bs!590694 () Bool)

(assert (= bs!590694 d!1197087))

(assert (=> bs!590694 m!4633211))

(declare-fun m!4633417 () Bool)

(assert (=> bs!590694 m!4633417))

(assert (=> bs!590694 m!4633195))

(declare-fun m!4633419 () Bool)

(assert (=> bs!590694 m!4633419))

(assert (=> bs!590694 m!4633195))

(declare-fun m!4633421 () Bool)

(assert (=> bs!590694 m!4633421))

(assert (=> bs!590694 m!4633211))

(assert (=> b!4038254 d!1197087))

(declare-fun d!1197093 () Bool)

(declare-fun res!1644592 () Bool)

(declare-fun e!2505727 () Bool)

(assert (=> d!1197093 (=> (not res!1644592) (not e!2505727))))

(assert (=> d!1197093 (= res!1644592 (not (isEmpty!25803 (originalCharacters!7520 token!484))))))

(assert (=> d!1197093 (= (inv!57772 token!484) e!2505727)))

(declare-fun b!4038363 () Bool)

(declare-fun res!1644593 () Bool)

(assert (=> b!4038363 (=> (not res!1644593) (not e!2505727))))

(declare-fun dynLambda!18344 (Int TokenValue!7150) BalanceConc!25856)

(assert (=> b!4038363 (= res!1644593 (= (originalCharacters!7520 token!484) (list!16094 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484)))))))

(declare-fun b!4038364 () Bool)

(assert (=> b!4038364 (= e!2505727 (= (size!32318 token!484) (size!32317 (originalCharacters!7520 token!484))))))

(assert (= (and d!1197093 res!1644592) b!4038363))

(assert (= (and b!4038363 res!1644593) b!4038364))

(declare-fun b_lambda!117847 () Bool)

(assert (=> (not b_lambda!117847) (not b!4038363)))

(declare-fun t!334780 () Bool)

(declare-fun tb!242657 () Bool)

(assert (=> (and b!4038253 (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (rule!9990 token!484)))) t!334780) tb!242657))

(declare-fun b!4038371 () Bool)

(declare-fun e!2505733 () Bool)

(declare-fun tp!1226465 () Bool)

(declare-fun inv!57775 (Conc!13131) Bool)

(assert (=> b!4038371 (= e!2505733 (and (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484)))) tp!1226465))))

(declare-fun result!294130 () Bool)

(declare-fun inv!57776 (BalanceConc!25856) Bool)

(assert (=> tb!242657 (= result!294130 (and (inv!57776 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484))) e!2505733))))

(assert (= tb!242657 b!4038371))

(declare-fun m!4633441 () Bool)

(assert (=> b!4038371 m!4633441))

(declare-fun m!4633443 () Bool)

(assert (=> tb!242657 m!4633443))

(assert (=> b!4038363 t!334780))

(declare-fun b_and!310359 () Bool)

(assert (= b_and!310349 (and (=> t!334780 result!294130) b_and!310359)))

(declare-fun t!334786 () Bool)

(declare-fun tb!242663 () Bool)

(assert (=> (and b!4038259 (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 token!484)))) t!334786) tb!242663))

(declare-fun result!294140 () Bool)

(assert (= result!294140 result!294130))

(assert (=> b!4038363 t!334786))

(declare-fun b_and!310361 () Bool)

(assert (= b_and!310353 (and (=> t!334786 result!294140) b_and!310361)))

(declare-fun m!4633445 () Bool)

(assert (=> d!1197093 m!4633445))

(declare-fun m!4633447 () Bool)

(assert (=> b!4038363 m!4633447))

(assert (=> b!4038363 m!4633447))

(declare-fun m!4633449 () Bool)

(assert (=> b!4038363 m!4633449))

(assert (=> b!4038364 m!4633247))

(assert (=> start!380688 d!1197093))

(declare-fun d!1197101 () Bool)

(declare-fun lt!1436936 () Bool)

(declare-fun content!6574 (List!43359) (InoxSet Rule!13640))

(assert (=> d!1197101 (= lt!1436936 (select (content!6574 rules!2999) (rule!9990 (_1!24291 (v!39731 lt!1436869)))))))

(declare-fun e!2505745 () Bool)

(assert (=> d!1197101 (= lt!1436936 e!2505745)))

(declare-fun res!1644605 () Bool)

(assert (=> d!1197101 (=> (not res!1644605) (not e!2505745))))

(assert (=> d!1197101 (= res!1644605 ((_ is Cons!43235) rules!2999))))

(assert (=> d!1197101 (= (contains!8588 rules!2999 (rule!9990 (_1!24291 (v!39731 lt!1436869)))) lt!1436936)))

(declare-fun b!4038388 () Bool)

(declare-fun e!2505744 () Bool)

(assert (=> b!4038388 (= e!2505745 e!2505744)))

(declare-fun res!1644604 () Bool)

(assert (=> b!4038388 (=> res!1644604 e!2505744)))

(assert (=> b!4038388 (= res!1644604 (= (h!48655 rules!2999) (rule!9990 (_1!24291 (v!39731 lt!1436869)))))))

(declare-fun b!4038389 () Bool)

(assert (=> b!4038389 (= e!2505744 (contains!8588 (t!334778 rules!2999) (rule!9990 (_1!24291 (v!39731 lt!1436869)))))))

(assert (= (and d!1197101 res!1644605) b!4038388))

(assert (= (and b!4038388 (not res!1644604)) b!4038389))

(declare-fun m!4633463 () Bool)

(assert (=> d!1197101 m!4633463))

(declare-fun m!4633465 () Bool)

(assert (=> d!1197101 m!4633465))

(declare-fun m!4633467 () Bool)

(assert (=> b!4038389 m!4633467))

(assert (=> b!4038249 d!1197101))

(declare-fun d!1197107 () Bool)

(assert (=> d!1197107 (= (size!32318 (_1!24291 (v!39731 lt!1436869))) (size!32317 (originalCharacters!7520 (_1!24291 (v!39731 lt!1436869)))))))

(declare-fun Unit!62439 () Unit!62437)

(assert (=> d!1197107 (= (lemmaCharactersSize!1439 (_1!24291 (v!39731 lt!1436869))) Unit!62439)))

(declare-fun bs!590696 () Bool)

(assert (= bs!590696 d!1197107))

(declare-fun m!4633469 () Bool)

(assert (=> bs!590696 m!4633469))

(assert (=> b!4038249 d!1197107))

(declare-fun d!1197109 () Bool)

(assert (=> d!1197109 (ruleValid!2850 thiss!21717 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))

(declare-fun lt!1436944 () Unit!62437)

(declare-fun choose!24464 (LexerInterface!6509 Rule!13640 List!43359) Unit!62437)

(assert (=> d!1197109 (= lt!1436944 (choose!24464 thiss!21717 (rule!9990 (_1!24291 (v!39731 lt!1436869))) rules!2999))))

(assert (=> d!1197109 (contains!8588 rules!2999 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))

(assert (=> d!1197109 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1920 thiss!21717 (rule!9990 (_1!24291 (v!39731 lt!1436869))) rules!2999) lt!1436944)))

(declare-fun bs!590697 () Bool)

(assert (= bs!590697 d!1197109))

(assert (=> bs!590697 m!4633191))

(declare-fun m!4633485 () Bool)

(assert (=> bs!590697 m!4633485))

(assert (=> bs!590697 m!4633193))

(assert (=> b!4038249 d!1197109))

(declare-fun d!1197123 () Bool)

(declare-fun res!1644613 () Bool)

(declare-fun e!2505757 () Bool)

(assert (=> d!1197123 (=> (not res!1644613) (not e!2505757))))

(declare-fun validRegex!5348 (Regex!11825) Bool)

(assert (=> d!1197123 (= res!1644613 (validRegex!5348 (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))))

(assert (=> d!1197123 (= (ruleValid!2850 thiss!21717 (rule!9990 (_1!24291 (v!39731 lt!1436869)))) e!2505757)))

(declare-fun b!4038407 () Bool)

(declare-fun res!1644614 () Bool)

(assert (=> b!4038407 (=> (not res!1644614) (not e!2505757))))

(declare-fun nullable!4148 (Regex!11825) Bool)

(assert (=> b!4038407 (= res!1644614 (not (nullable!4148 (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))))))

(declare-fun b!4038408 () Bool)

(assert (=> b!4038408 (= e!2505757 (not (= (tag!7780 (rule!9990 (_1!24291 (v!39731 lt!1436869)))) (String!49469 ""))))))

(assert (= (and d!1197123 res!1644613) b!4038407))

(assert (= (and b!4038407 res!1644614) b!4038408))

(declare-fun m!4633487 () Bool)

(assert (=> d!1197123 m!4633487))

(declare-fun m!4633489 () Bool)

(assert (=> b!4038407 m!4633489))

(assert (=> b!4038249 d!1197123))

(declare-fun d!1197125 () Bool)

(declare-fun lt!1436949 () BalanceConc!25856)

(assert (=> d!1197125 (= (list!16094 lt!1436949) (originalCharacters!7520 (_1!24291 (v!39731 lt!1436869))))))

(assert (=> d!1197125 (= lt!1436949 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869)))))))

(assert (=> d!1197125 (= (charsOf!4736 (_1!24291 (v!39731 lt!1436869))) lt!1436949)))

(declare-fun b_lambda!117853 () Bool)

(assert (=> (not b_lambda!117853) (not d!1197125)))

(declare-fun t!334792 () Bool)

(declare-fun tb!242669 () Bool)

(assert (=> (and b!4038253 (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) t!334792) tb!242669))

(declare-fun b!4038409 () Bool)

(declare-fun e!2505758 () Bool)

(declare-fun tp!1226466 () Bool)

(assert (=> b!4038409 (= e!2505758 (and (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869)))))) tp!1226466))))

(declare-fun result!294146 () Bool)

(assert (=> tb!242669 (= result!294146 (and (inv!57776 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869))))) e!2505758))))

(assert (= tb!242669 b!4038409))

(declare-fun m!4633491 () Bool)

(assert (=> b!4038409 m!4633491))

(declare-fun m!4633493 () Bool)

(assert (=> tb!242669 m!4633493))

(assert (=> d!1197125 t!334792))

(declare-fun b_and!310367 () Bool)

(assert (= b_and!310359 (and (=> t!334792 result!294146) b_and!310367)))

(declare-fun t!334794 () Bool)

(declare-fun tb!242671 () Bool)

(assert (=> (and b!4038259 (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) t!334794) tb!242671))

(declare-fun result!294148 () Bool)

(assert (= result!294148 result!294146))

(assert (=> d!1197125 t!334794))

(declare-fun b_and!310369 () Bool)

(assert (= b_and!310361 (and (=> t!334794 result!294148) b_and!310369)))

(declare-fun m!4633495 () Bool)

(assert (=> d!1197125 m!4633495))

(declare-fun m!4633497 () Bool)

(assert (=> d!1197125 m!4633497))

(assert (=> b!4038249 d!1197125))

(declare-fun d!1197127 () Bool)

(declare-fun e!2505761 () Bool)

(assert (=> d!1197127 e!2505761))

(declare-fun res!1644617 () Bool)

(assert (=> d!1197127 (=> (not res!1644617) (not e!2505761))))

(declare-fun semiInverseModEq!2956 (Int Int) Bool)

(assert (=> d!1197127 (= res!1644617 (semiInverseModEq!2956 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))))))

(declare-fun Unit!62440 () Unit!62437)

(assert (=> d!1197127 (= (lemmaInv!1129 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) Unit!62440)))

(declare-fun b!4038412 () Bool)

(declare-fun equivClasses!2855 (Int Int) Bool)

(assert (=> b!4038412 (= e!2505761 (equivClasses!2855 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))))))

(assert (= (and d!1197127 res!1644617) b!4038412))

(declare-fun m!4633499 () Bool)

(assert (=> d!1197127 m!4633499))

(declare-fun m!4633501 () Bool)

(assert (=> b!4038412 m!4633501))

(assert (=> b!4038249 d!1197127))

(declare-fun d!1197129 () Bool)

(declare-fun list!16095 (Conc!13131) List!43357)

(assert (=> d!1197129 (= (list!16094 (charsOf!4736 (_1!24291 (v!39731 lt!1436869)))) (list!16095 (c!697516 (charsOf!4736 (_1!24291 (v!39731 lt!1436869))))))))

(declare-fun bs!590698 () Bool)

(assert (= bs!590698 d!1197129))

(declare-fun m!4633503 () Bool)

(assert (=> bs!590698 m!4633503))

(assert (=> b!4038249 d!1197129))

(declare-fun d!1197131 () Bool)

(assert (=> d!1197131 (= (size!32318 token!484) (size!32317 (originalCharacters!7520 token!484)))))

(declare-fun Unit!62441 () Unit!62437)

(assert (=> d!1197131 (= (lemmaCharactersSize!1439 token!484) Unit!62441)))

(declare-fun bs!590699 () Bool)

(assert (= bs!590699 d!1197131))

(assert (=> bs!590699 m!4633247))

(assert (=> b!4038249 d!1197131))

(declare-fun b!4038421 () Bool)

(declare-fun e!2505770 () Bool)

(declare-fun e!2505769 () Bool)

(assert (=> b!4038421 (= e!2505770 e!2505769)))

(declare-fun res!1644629 () Bool)

(assert (=> b!4038421 (=> (not res!1644629) (not e!2505769))))

(assert (=> b!4038421 (= res!1644629 (not ((_ is Nil!43233) suffix!1299)))))

(declare-fun b!4038423 () Bool)

(declare-fun tail!6283 (List!43357) List!43357)

(assert (=> b!4038423 (= e!2505769 (isPrefix!4007 (tail!6283 newSuffix!27) (tail!6283 suffix!1299)))))

(declare-fun b!4038422 () Bool)

(declare-fun res!1644628 () Bool)

(assert (=> b!4038422 (=> (not res!1644628) (not e!2505769))))

(declare-fun head!8551 (List!43357) C!23836)

(assert (=> b!4038422 (= res!1644628 (= (head!8551 newSuffix!27) (head!8551 suffix!1299)))))

(declare-fun d!1197133 () Bool)

(declare-fun e!2505768 () Bool)

(assert (=> d!1197133 e!2505768))

(declare-fun res!1644627 () Bool)

(assert (=> d!1197133 (=> res!1644627 e!2505768)))

(declare-fun lt!1436952 () Bool)

(assert (=> d!1197133 (= res!1644627 (not lt!1436952))))

(assert (=> d!1197133 (= lt!1436952 e!2505770)))

(declare-fun res!1644626 () Bool)

(assert (=> d!1197133 (=> res!1644626 e!2505770)))

(assert (=> d!1197133 (= res!1644626 ((_ is Nil!43233) newSuffix!27))))

(assert (=> d!1197133 (= (isPrefix!4007 newSuffix!27 suffix!1299) lt!1436952)))

(declare-fun b!4038424 () Bool)

(assert (=> b!4038424 (= e!2505768 (>= (size!32317 suffix!1299) (size!32317 newSuffix!27)))))

(assert (= (and d!1197133 (not res!1644626)) b!4038421))

(assert (= (and b!4038421 res!1644629) b!4038422))

(assert (= (and b!4038422 res!1644628) b!4038423))

(assert (= (and d!1197133 (not res!1644627)) b!4038424))

(declare-fun m!4633505 () Bool)

(assert (=> b!4038423 m!4633505))

(declare-fun m!4633507 () Bool)

(assert (=> b!4038423 m!4633507))

(assert (=> b!4038423 m!4633505))

(assert (=> b!4038423 m!4633507))

(declare-fun m!4633509 () Bool)

(assert (=> b!4038423 m!4633509))

(declare-fun m!4633511 () Bool)

(assert (=> b!4038422 m!4633511))

(declare-fun m!4633513 () Bool)

(assert (=> b!4038422 m!4633513))

(assert (=> b!4038424 m!4633279))

(assert (=> b!4038424 m!4633281))

(assert (=> b!4038248 d!1197133))

(declare-fun b!4038427 () Bool)

(declare-fun res!1644630 () Bool)

(declare-fun e!2505772 () Bool)

(assert (=> b!4038427 (=> (not res!1644630) (not e!2505772))))

(declare-fun lt!1436953 () List!43357)

(assert (=> b!4038427 (= res!1644630 (= (size!32317 lt!1436953) (+ (size!32317 lt!1436870) (size!32317 suffixResult!105))))))

(declare-fun b!4038425 () Bool)

(declare-fun e!2505771 () List!43357)

(assert (=> b!4038425 (= e!2505771 suffixResult!105)))

(declare-fun b!4038426 () Bool)

(assert (=> b!4038426 (= e!2505771 (Cons!43233 (h!48653 lt!1436870) (++!11322 (t!334776 lt!1436870) suffixResult!105)))))

(declare-fun d!1197135 () Bool)

(assert (=> d!1197135 e!2505772))

(declare-fun res!1644631 () Bool)

(assert (=> d!1197135 (=> (not res!1644631) (not e!2505772))))

(assert (=> d!1197135 (= res!1644631 (= (content!6573 lt!1436953) ((_ map or) (content!6573 lt!1436870) (content!6573 suffixResult!105))))))

(assert (=> d!1197135 (= lt!1436953 e!2505771)))

(declare-fun c!697539 () Bool)

(assert (=> d!1197135 (= c!697539 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197135 (= (++!11322 lt!1436870 suffixResult!105) lt!1436953)))

(declare-fun b!4038428 () Bool)

(assert (=> b!4038428 (= e!2505772 (or (not (= suffixResult!105 Nil!43233)) (= lt!1436953 lt!1436870)))))

(assert (= (and d!1197135 c!697539) b!4038425))

(assert (= (and d!1197135 (not c!697539)) b!4038426))

(assert (= (and d!1197135 res!1644631) b!4038427))

(assert (= (and b!4038427 res!1644630) b!4038428))

(declare-fun m!4633515 () Bool)

(assert (=> b!4038427 m!4633515))

(assert (=> b!4038427 m!4633263))

(declare-fun m!4633517 () Bool)

(assert (=> b!4038427 m!4633517))

(declare-fun m!4633519 () Bool)

(assert (=> b!4038426 m!4633519))

(declare-fun m!4633521 () Bool)

(assert (=> d!1197135 m!4633521))

(assert (=> d!1197135 m!4633387))

(declare-fun m!4633523 () Bool)

(assert (=> d!1197135 m!4633523))

(assert (=> b!4038247 d!1197135))

(declare-fun d!1197137 () Bool)

(declare-fun e!2505773 () Bool)

(assert (=> d!1197137 e!2505773))

(declare-fun res!1644632 () Bool)

(assert (=> d!1197137 (=> (not res!1644632) (not e!2505773))))

(assert (=> d!1197137 (= res!1644632 (semiInverseModEq!2956 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))))))

(declare-fun Unit!62442 () Unit!62437)

(assert (=> d!1197137 (= (lemmaInv!1129 (transformation!6920 (rule!9990 token!484))) Unit!62442)))

(declare-fun b!4038429 () Bool)

(assert (=> b!4038429 (= e!2505773 (equivClasses!2855 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))))))

(assert (= (and d!1197137 res!1644632) b!4038429))

(declare-fun m!4633525 () Bool)

(assert (=> d!1197137 m!4633525))

(declare-fun m!4633527 () Bool)

(assert (=> b!4038429 m!4633527))

(assert (=> b!4038247 d!1197137))

(declare-fun d!1197139 () Bool)

(declare-fun res!1644633 () Bool)

(declare-fun e!2505774 () Bool)

(assert (=> d!1197139 (=> (not res!1644633) (not e!2505774))))

(assert (=> d!1197139 (= res!1644633 (validRegex!5348 (regex!6920 (rule!9990 token!484))))))

(assert (=> d!1197139 (= (ruleValid!2850 thiss!21717 (rule!9990 token!484)) e!2505774)))

(declare-fun b!4038430 () Bool)

(declare-fun res!1644634 () Bool)

(assert (=> b!4038430 (=> (not res!1644634) (not e!2505774))))

(assert (=> b!4038430 (= res!1644634 (not (nullable!4148 (regex!6920 (rule!9990 token!484)))))))

(declare-fun b!4038431 () Bool)

(assert (=> b!4038431 (= e!2505774 (not (= (tag!7780 (rule!9990 token!484)) (String!49469 ""))))))

(assert (= (and d!1197139 res!1644633) b!4038430))

(assert (= (and b!4038430 res!1644634) b!4038431))

(declare-fun m!4633529 () Bool)

(assert (=> d!1197139 m!4633529))

(declare-fun m!4633531 () Bool)

(assert (=> b!4038430 m!4633531))

(assert (=> b!4038247 d!1197139))

(declare-fun d!1197141 () Bool)

(assert (=> d!1197141 (ruleValid!2850 thiss!21717 (rule!9990 token!484))))

(declare-fun lt!1436954 () Unit!62437)

(assert (=> d!1197141 (= lt!1436954 (choose!24464 thiss!21717 (rule!9990 token!484) rules!2999))))

(assert (=> d!1197141 (contains!8588 rules!2999 (rule!9990 token!484))))

(assert (=> d!1197141 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1920 thiss!21717 (rule!9990 token!484) rules!2999) lt!1436954)))

(declare-fun bs!590700 () Bool)

(assert (= bs!590700 d!1197141))

(assert (=> bs!590700 m!4633259))

(declare-fun m!4633533 () Bool)

(assert (=> bs!590700 m!4633533))

(declare-fun m!4633535 () Bool)

(assert (=> bs!590700 m!4633535))

(assert (=> b!4038247 d!1197141))

(declare-fun d!1197143 () Bool)

(declare-fun lt!1436957 () Int)

(assert (=> d!1197143 (>= lt!1436957 0)))

(declare-fun e!2505777 () Int)

(assert (=> d!1197143 (= lt!1436957 e!2505777)))

(declare-fun c!697542 () Bool)

(assert (=> d!1197143 (= c!697542 ((_ is Nil!43233) (originalCharacters!7520 token!484)))))

(assert (=> d!1197143 (= (size!32317 (originalCharacters!7520 token!484)) lt!1436957)))

(declare-fun b!4038436 () Bool)

(assert (=> b!4038436 (= e!2505777 0)))

(declare-fun b!4038437 () Bool)

(assert (=> b!4038437 (= e!2505777 (+ 1 (size!32317 (t!334776 (originalCharacters!7520 token!484)))))))

(assert (= (and d!1197143 c!697542) b!4038436))

(assert (= (and d!1197143 (not c!697542)) b!4038437))

(declare-fun m!4633537 () Bool)

(assert (=> b!4038437 m!4633537))

(assert (=> b!4038246 d!1197143))

(declare-fun d!1197145 () Bool)

(declare-fun res!1644637 () Bool)

(declare-fun e!2505780 () Bool)

(assert (=> d!1197145 (=> (not res!1644637) (not e!2505780))))

(declare-fun rulesValid!2689 (LexerInterface!6509 List!43359) Bool)

(assert (=> d!1197145 (= res!1644637 (rulesValid!2689 thiss!21717 rules!2999))))

(assert (=> d!1197145 (= (rulesInvariant!5852 thiss!21717 rules!2999) e!2505780)))

(declare-fun b!4038440 () Bool)

(declare-datatypes ((List!43360 0))(
  ( (Nil!43236) (Cons!43236 (h!48656 String!49468) (t!334839 List!43360)) )
))
(declare-fun noDuplicateTag!2690 (LexerInterface!6509 List!43359 List!43360) Bool)

(assert (=> b!4038440 (= e!2505780 (noDuplicateTag!2690 thiss!21717 rules!2999 Nil!43236))))

(assert (= (and d!1197145 res!1644637) b!4038440))

(declare-fun m!4633539 () Bool)

(assert (=> d!1197145 m!4633539))

(declare-fun m!4633541 () Bool)

(assert (=> b!4038440 m!4633541))

(assert (=> b!4038267 d!1197145))

(declare-fun b!4038441 () Bool)

(declare-fun e!2505783 () Bool)

(declare-fun e!2505782 () Bool)

(assert (=> b!4038441 (= e!2505783 e!2505782)))

(declare-fun res!1644641 () Bool)

(assert (=> b!4038441 (=> (not res!1644641) (not e!2505782))))

(assert (=> b!4038441 (= res!1644641 (not ((_ is Nil!43233) lt!1436854)))))

(declare-fun b!4038443 () Bool)

(assert (=> b!4038443 (= e!2505782 (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 lt!1436854)))))

(declare-fun b!4038442 () Bool)

(declare-fun res!1644640 () Bool)

(assert (=> b!4038442 (=> (not res!1644640) (not e!2505782))))

(assert (=> b!4038442 (= res!1644640 (= (head!8551 lt!1436870) (head!8551 lt!1436854)))))

(declare-fun d!1197147 () Bool)

(declare-fun e!2505781 () Bool)

(assert (=> d!1197147 e!2505781))

(declare-fun res!1644639 () Bool)

(assert (=> d!1197147 (=> res!1644639 e!2505781)))

(declare-fun lt!1436958 () Bool)

(assert (=> d!1197147 (= res!1644639 (not lt!1436958))))

(assert (=> d!1197147 (= lt!1436958 e!2505783)))

(declare-fun res!1644638 () Bool)

(assert (=> d!1197147 (=> res!1644638 e!2505783)))

(assert (=> d!1197147 (= res!1644638 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197147 (= (isPrefix!4007 lt!1436870 lt!1436854) lt!1436958)))

(declare-fun b!4038444 () Bool)

(assert (=> b!4038444 (= e!2505781 (>= (size!32317 lt!1436854) (size!32317 lt!1436870)))))

(assert (= (and d!1197147 (not res!1644638)) b!4038441))

(assert (= (and b!4038441 res!1644641) b!4038442))

(assert (= (and b!4038442 res!1644640) b!4038443))

(assert (= (and d!1197147 (not res!1644639)) b!4038444))

(declare-fun m!4633543 () Bool)

(assert (=> b!4038443 m!4633543))

(declare-fun m!4633545 () Bool)

(assert (=> b!4038443 m!4633545))

(assert (=> b!4038443 m!4633543))

(assert (=> b!4038443 m!4633545))

(declare-fun m!4633547 () Bool)

(assert (=> b!4038443 m!4633547))

(declare-fun m!4633549 () Bool)

(assert (=> b!4038442 m!4633549))

(declare-fun m!4633551 () Bool)

(assert (=> b!4038442 m!4633551))

(declare-fun m!4633553 () Bool)

(assert (=> b!4038444 m!4633553))

(assert (=> b!4038444 m!4633263))

(assert (=> b!4038244 d!1197147))

(declare-fun d!1197149 () Bool)

(declare-fun fromListB!2342 (List!43357) BalanceConc!25856)

(assert (=> d!1197149 (= (seqFromList!5137 lt!1436870) (fromListB!2342 lt!1436870))))

(declare-fun bs!590701 () Bool)

(assert (= bs!590701 d!1197149))

(declare-fun m!4633555 () Bool)

(assert (=> bs!590701 m!4633555))

(assert (=> b!4038244 d!1197149))

(declare-fun d!1197151 () Bool)

(assert (=> d!1197151 (= (maxPrefixOneRule!2819 thiss!21717 (rule!9990 token!484) lt!1436879) (Some!9333 (tuple2!42315 (Token!12979 (apply!10109 (transformation!6920 (rule!9990 token!484)) (seqFromList!5137 lt!1436870)) (rule!9990 token!484) (size!32317 lt!1436870) lt!1436870) suffixResult!105)))))

(declare-fun lt!1436961 () Unit!62437)

(declare-fun choose!24467 (LexerInterface!6509 List!43359 List!43357 List!43357 List!43357 Rule!13640) Unit!62437)

(assert (=> d!1197151 (= lt!1436961 (choose!24467 thiss!21717 rules!2999 lt!1436870 lt!1436879 suffixResult!105 (rule!9990 token!484)))))

(assert (=> d!1197151 (not (isEmpty!25802 rules!2999))))

(assert (=> d!1197151 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1625 thiss!21717 rules!2999 lt!1436870 lt!1436879 suffixResult!105 (rule!9990 token!484)) lt!1436961)))

(declare-fun bs!590702 () Bool)

(assert (= bs!590702 d!1197151))

(assert (=> bs!590702 m!4633233))

(assert (=> bs!590702 m!4633263))

(assert (=> bs!590702 m!4633177))

(declare-fun m!4633557 () Bool)

(assert (=> bs!590702 m!4633557))

(assert (=> bs!590702 m!4633235))

(assert (=> bs!590702 m!4633237))

(assert (=> bs!590702 m!4633235))

(assert (=> b!4038244 d!1197151))

(declare-fun d!1197153 () Bool)

(declare-fun e!2505794 () Bool)

(assert (=> d!1197153 e!2505794))

(declare-fun res!1644656 () Bool)

(assert (=> d!1197153 (=> res!1644656 e!2505794)))

(declare-fun lt!1436974 () Option!9334)

(assert (=> d!1197153 (= res!1644656 (isEmpty!25805 lt!1436974))))

(declare-fun e!2505792 () Option!9334)

(assert (=> d!1197153 (= lt!1436974 e!2505792)))

(declare-fun c!697545 () Bool)

(declare-datatypes ((tuple2!42318 0))(
  ( (tuple2!42319 (_1!24293 List!43357) (_2!24293 List!43357)) )
))
(declare-fun lt!1436972 () tuple2!42318)

(assert (=> d!1197153 (= c!697545 (isEmpty!25803 (_1!24293 lt!1436972)))))

(declare-fun findLongestMatch!1298 (Regex!11825 List!43357) tuple2!42318)

(assert (=> d!1197153 (= lt!1436972 (findLongestMatch!1298 (regex!6920 (rule!9990 token!484)) lt!1436879))))

(assert (=> d!1197153 (ruleValid!2850 thiss!21717 (rule!9990 token!484))))

(assert (=> d!1197153 (= (maxPrefixOneRule!2819 thiss!21717 (rule!9990 token!484) lt!1436879) lt!1436974)))

(declare-fun b!4038463 () Bool)

(declare-fun size!32320 (BalanceConc!25856) Int)

(assert (=> b!4038463 (= e!2505792 (Some!9333 (tuple2!42315 (Token!12979 (apply!10109 (transformation!6920 (rule!9990 token!484)) (seqFromList!5137 (_1!24293 lt!1436972))) (rule!9990 token!484) (size!32320 (seqFromList!5137 (_1!24293 lt!1436972))) (_1!24293 lt!1436972)) (_2!24293 lt!1436972))))))

(declare-fun lt!1436975 () Unit!62437)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1358 (Regex!11825 List!43357) Unit!62437)

(assert (=> b!4038463 (= lt!1436975 (longestMatchIsAcceptedByMatchOrIsEmpty!1358 (regex!6920 (rule!9990 token!484)) lt!1436879))))

(declare-fun res!1644659 () Bool)

(declare-fun findLongestMatchInner!1385 (Regex!11825 List!43357 Int List!43357 List!43357 Int) tuple2!42318)

(assert (=> b!4038463 (= res!1644659 (isEmpty!25803 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))))))

(declare-fun e!2505793 () Bool)

(assert (=> b!4038463 (=> res!1644659 e!2505793)))

(assert (=> b!4038463 e!2505793))

(declare-fun lt!1436976 () Unit!62437)

(assert (=> b!4038463 (= lt!1436976 lt!1436975)))

(declare-fun lt!1436973 () Unit!62437)

(assert (=> b!4038463 (= lt!1436973 (lemmaSemiInverse!1905 (transformation!6920 (rule!9990 token!484)) (seqFromList!5137 (_1!24293 lt!1436972))))))

(declare-fun b!4038464 () Bool)

(declare-fun e!2505795 () Bool)

(assert (=> b!4038464 (= e!2505794 e!2505795)))

(declare-fun res!1644661 () Bool)

(assert (=> b!4038464 (=> (not res!1644661) (not e!2505795))))

(assert (=> b!4038464 (= res!1644661 (matchR!5778 (regex!6920 (rule!9990 token!484)) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))))))

(declare-fun b!4038465 () Bool)

(assert (=> b!4038465 (= e!2505792 None!9333)))

(declare-fun b!4038466 () Bool)

(declare-fun res!1644657 () Bool)

(assert (=> b!4038466 (=> (not res!1644657) (not e!2505795))))

(assert (=> b!4038466 (= res!1644657 (< (size!32317 (_2!24291 (get!14186 lt!1436974))) (size!32317 lt!1436879)))))

(declare-fun b!4038467 () Bool)

(assert (=> b!4038467 (= e!2505795 (= (size!32318 (_1!24291 (get!14186 lt!1436974))) (size!32317 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436974))))))))

(declare-fun b!4038468 () Bool)

(declare-fun res!1644660 () Bool)

(assert (=> b!4038468 (=> (not res!1644660) (not e!2505795))))

(assert (=> b!4038468 (= res!1644660 (= (value!217854 (_1!24291 (get!14186 lt!1436974))) (apply!10109 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974)))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436974)))))))))

(declare-fun b!4038469 () Bool)

(declare-fun res!1644662 () Bool)

(assert (=> b!4038469 (=> (not res!1644662) (not e!2505795))))

(assert (=> b!4038469 (= res!1644662 (= (rule!9990 (_1!24291 (get!14186 lt!1436974))) (rule!9990 token!484)))))

(declare-fun b!4038470 () Bool)

(declare-fun res!1644658 () Bool)

(assert (=> b!4038470 (=> (not res!1644658) (not e!2505795))))

(assert (=> b!4038470 (= res!1644658 (= (++!11322 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974)))) (_2!24291 (get!14186 lt!1436974))) lt!1436879))))

(declare-fun b!4038471 () Bool)

(assert (=> b!4038471 (= e!2505793 (matchR!5778 (regex!6920 (rule!9990 token!484)) (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))))))

(assert (= (and d!1197153 c!697545) b!4038465))

(assert (= (and d!1197153 (not c!697545)) b!4038463))

(assert (= (and b!4038463 (not res!1644659)) b!4038471))

(assert (= (and d!1197153 (not res!1644656)) b!4038464))

(assert (= (and b!4038464 res!1644661) b!4038470))

(assert (= (and b!4038470 res!1644658) b!4038466))

(assert (= (and b!4038466 res!1644657) b!4038469))

(assert (= (and b!4038469 res!1644662) b!4038468))

(assert (= (and b!4038468 res!1644660) b!4038467))

(declare-fun m!4633559 () Bool)

(assert (=> b!4038467 m!4633559))

(declare-fun m!4633561 () Bool)

(assert (=> b!4038467 m!4633561))

(assert (=> b!4038469 m!4633559))

(declare-fun m!4633563 () Bool)

(assert (=> d!1197153 m!4633563))

(declare-fun m!4633565 () Bool)

(assert (=> d!1197153 m!4633565))

(declare-fun m!4633567 () Bool)

(assert (=> d!1197153 m!4633567))

(assert (=> d!1197153 m!4633259))

(assert (=> b!4038466 m!4633559))

(declare-fun m!4633569 () Bool)

(assert (=> b!4038466 m!4633569))

(assert (=> b!4038466 m!4633345))

(assert (=> b!4038464 m!4633559))

(declare-fun m!4633571 () Bool)

(assert (=> b!4038464 m!4633571))

(assert (=> b!4038464 m!4633571))

(declare-fun m!4633573 () Bool)

(assert (=> b!4038464 m!4633573))

(assert (=> b!4038464 m!4633573))

(declare-fun m!4633575 () Bool)

(assert (=> b!4038464 m!4633575))

(assert (=> b!4038470 m!4633559))

(assert (=> b!4038470 m!4633571))

(assert (=> b!4038470 m!4633571))

(assert (=> b!4038470 m!4633573))

(assert (=> b!4038470 m!4633573))

(declare-fun m!4633577 () Bool)

(assert (=> b!4038470 m!4633577))

(assert (=> b!4038468 m!4633559))

(declare-fun m!4633579 () Bool)

(assert (=> b!4038468 m!4633579))

(assert (=> b!4038468 m!4633579))

(declare-fun m!4633581 () Bool)

(assert (=> b!4038468 m!4633581))

(declare-fun m!4633583 () Bool)

(assert (=> b!4038471 m!4633583))

(assert (=> b!4038471 m!4633345))

(assert (=> b!4038471 m!4633583))

(assert (=> b!4038471 m!4633345))

(declare-fun m!4633585 () Bool)

(assert (=> b!4038471 m!4633585))

(declare-fun m!4633587 () Bool)

(assert (=> b!4038471 m!4633587))

(declare-fun m!4633589 () Bool)

(assert (=> b!4038463 m!4633589))

(declare-fun m!4633591 () Bool)

(assert (=> b!4038463 m!4633591))

(assert (=> b!4038463 m!4633589))

(declare-fun m!4633593 () Bool)

(assert (=> b!4038463 m!4633593))

(assert (=> b!4038463 m!4633589))

(declare-fun m!4633595 () Bool)

(assert (=> b!4038463 m!4633595))

(assert (=> b!4038463 m!4633345))

(declare-fun m!4633597 () Bool)

(assert (=> b!4038463 m!4633597))

(assert (=> b!4038463 m!4633589))

(declare-fun m!4633599 () Bool)

(assert (=> b!4038463 m!4633599))

(assert (=> b!4038463 m!4633583))

(assert (=> b!4038463 m!4633345))

(assert (=> b!4038463 m!4633585))

(assert (=> b!4038463 m!4633583))

(assert (=> b!4038244 d!1197153))

(declare-fun d!1197155 () Bool)

(assert (=> d!1197155 (= lt!1436858 suffixResult!105)))

(declare-fun lt!1436979 () Unit!62437)

(declare-fun choose!24468 (List!43357 List!43357 List!43357 List!43357 List!43357) Unit!62437)

(assert (=> d!1197155 (= lt!1436979 (choose!24468 lt!1436870 lt!1436858 lt!1436870 suffixResult!105 lt!1436879))))

(assert (=> d!1197155 (isPrefix!4007 lt!1436870 lt!1436879)))

(assert (=> d!1197155 (= (lemmaSamePrefixThenSameSuffix!2168 lt!1436870 lt!1436858 lt!1436870 suffixResult!105 lt!1436879) lt!1436979)))

(declare-fun bs!590703 () Bool)

(assert (= bs!590703 d!1197155))

(declare-fun m!4633601 () Bool)

(assert (=> bs!590703 m!4633601))

(assert (=> bs!590703 m!4633163))

(assert (=> b!4038244 d!1197155))

(declare-fun d!1197157 () Bool)

(declare-fun dynLambda!18345 (Int BalanceConc!25856) TokenValue!7150)

(assert (=> d!1197157 (= (apply!10109 (transformation!6920 (rule!9990 token!484)) (seqFromList!5137 lt!1436870)) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 lt!1436870)))))

(declare-fun b_lambda!117855 () Bool)

(assert (=> (not b_lambda!117855) (not d!1197157)))

(declare-fun t!334796 () Bool)

(declare-fun tb!242673 () Bool)

(assert (=> (and b!4038253 (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))) t!334796) tb!242673))

(declare-fun result!294150 () Bool)

(assert (=> tb!242673 (= result!294150 (inv!21 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 lt!1436870))))))

(declare-fun m!4633603 () Bool)

(assert (=> tb!242673 m!4633603))

(assert (=> d!1197157 t!334796))

(declare-fun b_and!310371 () Bool)

(assert (= b_and!310347 (and (=> t!334796 result!294150) b_and!310371)))

(declare-fun tb!242675 () Bool)

(declare-fun t!334798 () Bool)

(assert (=> (and b!4038259 (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))) t!334798) tb!242675))

(declare-fun result!294154 () Bool)

(assert (= result!294154 result!294150))

(assert (=> d!1197157 t!334798))

(declare-fun b_and!310373 () Bool)

(assert (= b_and!310351 (and (=> t!334798 result!294154) b_and!310373)))

(assert (=> d!1197157 m!4633235))

(declare-fun m!4633605 () Bool)

(assert (=> d!1197157 m!4633605))

(assert (=> b!4038244 d!1197157))

(declare-fun d!1197159 () Bool)

(assert (=> d!1197159 (isPrefix!4007 lt!1436870 (++!11322 lt!1436870 lt!1436858))))

(declare-fun lt!1436982 () Unit!62437)

(declare-fun choose!24469 (List!43357 List!43357) Unit!62437)

(assert (=> d!1197159 (= lt!1436982 (choose!24469 lt!1436870 lt!1436858))))

(assert (=> d!1197159 (= (lemmaConcatTwoListThenFirstIsPrefix!2842 lt!1436870 lt!1436858) lt!1436982)))

(declare-fun bs!590704 () Bool)

(assert (= bs!590704 d!1197159))

(assert (=> bs!590704 m!4633207))

(assert (=> bs!590704 m!4633207))

(declare-fun m!4633607 () Bool)

(assert (=> bs!590704 m!4633607))

(declare-fun m!4633609 () Bool)

(assert (=> bs!590704 m!4633609))

(assert (=> b!4038244 d!1197159))

(declare-fun b!4038474 () Bool)

(declare-fun res!1644665 () Bool)

(declare-fun e!2505800 () Bool)

(assert (=> b!4038474 (=> (not res!1644665) (not e!2505800))))

(declare-fun lt!1436987 () Option!9334)

(assert (=> b!4038474 (= res!1644665 (= (value!217854 (_1!24291 (get!14186 lt!1436987))) (apply!10109 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436987)))))))))

(declare-fun bm!287253 () Bool)

(declare-fun call!287258 () Option!9334)

(assert (=> bm!287253 (= call!287258 (maxPrefixOneRule!2819 thiss!21717 (h!48655 rules!2999) lt!1436861))))

(declare-fun b!4038475 () Bool)

(declare-fun e!2505799 () Option!9334)

(declare-fun lt!1436983 () Option!9334)

(declare-fun lt!1436984 () Option!9334)

(assert (=> b!4038475 (= e!2505799 (ite (and ((_ is None!9333) lt!1436983) ((_ is None!9333) lt!1436984)) None!9333 (ite ((_ is None!9333) lt!1436984) lt!1436983 (ite ((_ is None!9333) lt!1436983) lt!1436984 (ite (>= (size!32318 (_1!24291 (v!39731 lt!1436983))) (size!32318 (_1!24291 (v!39731 lt!1436984)))) lt!1436983 lt!1436984)))))))

(assert (=> b!4038475 (= lt!1436983 call!287258)))

(assert (=> b!4038475 (= lt!1436984 (maxPrefix!3807 thiss!21717 (t!334778 rules!2999) lt!1436861))))

(declare-fun b!4038476 () Bool)

(assert (=> b!4038476 (= e!2505800 (contains!8588 rules!2999 (rule!9990 (_1!24291 (get!14186 lt!1436987)))))))

(declare-fun b!4038477 () Bool)

(declare-fun res!1644666 () Bool)

(assert (=> b!4038477 (=> (not res!1644666) (not e!2505800))))

(assert (=> b!4038477 (= res!1644666 (< (size!32317 (_2!24291 (get!14186 lt!1436987))) (size!32317 lt!1436861)))))

(declare-fun b!4038478 () Bool)

(declare-fun res!1644664 () Bool)

(assert (=> b!4038478 (=> (not res!1644664) (not e!2505800))))

(assert (=> b!4038478 (= res!1644664 (= (++!11322 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987)))) (_2!24291 (get!14186 lt!1436987))) lt!1436861))))

(declare-fun b!4038479 () Bool)

(assert (=> b!4038479 (= e!2505799 call!287258)))

(declare-fun b!4038480 () Bool)

(declare-fun res!1644667 () Bool)

(assert (=> b!4038480 (=> (not res!1644667) (not e!2505800))))

(assert (=> b!4038480 (= res!1644667 (= (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987)))) (originalCharacters!7520 (_1!24291 (get!14186 lt!1436987)))))))

(declare-fun b!4038481 () Bool)

(declare-fun e!2505801 () Bool)

(assert (=> b!4038481 (= e!2505801 e!2505800)))

(declare-fun res!1644669 () Bool)

(assert (=> b!4038481 (=> (not res!1644669) (not e!2505800))))

(assert (=> b!4038481 (= res!1644669 (isDefined!7101 lt!1436987))))

(declare-fun b!4038482 () Bool)

(declare-fun res!1644663 () Bool)

(assert (=> b!4038482 (=> (not res!1644663) (not e!2505800))))

(assert (=> b!4038482 (= res!1644663 (matchR!5778 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))))))

(declare-fun d!1197161 () Bool)

(assert (=> d!1197161 e!2505801))

(declare-fun res!1644668 () Bool)

(assert (=> d!1197161 (=> res!1644668 e!2505801)))

(assert (=> d!1197161 (= res!1644668 (isEmpty!25805 lt!1436987))))

(assert (=> d!1197161 (= lt!1436987 e!2505799)))

(declare-fun c!697546 () Bool)

(assert (=> d!1197161 (= c!697546 (and ((_ is Cons!43235) rules!2999) ((_ is Nil!43235) (t!334778 rules!2999))))))

(declare-fun lt!1436985 () Unit!62437)

(declare-fun lt!1436986 () Unit!62437)

(assert (=> d!1197161 (= lt!1436985 lt!1436986)))

(assert (=> d!1197161 (isPrefix!4007 lt!1436861 lt!1436861)))

(assert (=> d!1197161 (= lt!1436986 (lemmaIsPrefixRefl!2574 lt!1436861 lt!1436861))))

(assert (=> d!1197161 (rulesValidInductive!2522 thiss!21717 rules!2999)))

(assert (=> d!1197161 (= (maxPrefix!3807 thiss!21717 rules!2999 lt!1436861) lt!1436987)))

(assert (= (and d!1197161 c!697546) b!4038479))

(assert (= (and d!1197161 (not c!697546)) b!4038475))

(assert (= (or b!4038479 b!4038475) bm!287253))

(assert (= (and d!1197161 (not res!1644668)) b!4038481))

(assert (= (and b!4038481 res!1644669) b!4038480))

(assert (= (and b!4038480 res!1644667) b!4038477))

(assert (= (and b!4038477 res!1644666) b!4038478))

(assert (= (and b!4038478 res!1644664) b!4038474))

(assert (= (and b!4038474 res!1644665) b!4038482))

(assert (= (and b!4038482 res!1644663) b!4038476))

(declare-fun m!4633611 () Bool)

(assert (=> b!4038475 m!4633611))

(declare-fun m!4633613 () Bool)

(assert (=> bm!287253 m!4633613))

(declare-fun m!4633615 () Bool)

(assert (=> b!4038476 m!4633615))

(declare-fun m!4633617 () Bool)

(assert (=> b!4038476 m!4633617))

(declare-fun m!4633619 () Bool)

(assert (=> b!4038481 m!4633619))

(declare-fun m!4633621 () Bool)

(assert (=> d!1197161 m!4633621))

(declare-fun m!4633623 () Bool)

(assert (=> d!1197161 m!4633623))

(declare-fun m!4633625 () Bool)

(assert (=> d!1197161 m!4633625))

(assert (=> d!1197161 m!4633307))

(assert (=> b!4038480 m!4633615))

(declare-fun m!4633627 () Bool)

(assert (=> b!4038480 m!4633627))

(assert (=> b!4038480 m!4633627))

(declare-fun m!4633629 () Bool)

(assert (=> b!4038480 m!4633629))

(assert (=> b!4038478 m!4633615))

(assert (=> b!4038478 m!4633627))

(assert (=> b!4038478 m!4633627))

(assert (=> b!4038478 m!4633629))

(assert (=> b!4038478 m!4633629))

(declare-fun m!4633631 () Bool)

(assert (=> b!4038478 m!4633631))

(assert (=> b!4038482 m!4633615))

(assert (=> b!4038482 m!4633627))

(assert (=> b!4038482 m!4633627))

(assert (=> b!4038482 m!4633629))

(assert (=> b!4038482 m!4633629))

(declare-fun m!4633633 () Bool)

(assert (=> b!4038482 m!4633633))

(assert (=> b!4038474 m!4633615))

(declare-fun m!4633635 () Bool)

(assert (=> b!4038474 m!4633635))

(assert (=> b!4038474 m!4633635))

(declare-fun m!4633637 () Bool)

(assert (=> b!4038474 m!4633637))

(assert (=> b!4038477 m!4633615))

(declare-fun m!4633639 () Bool)

(assert (=> b!4038477 m!4633639))

(declare-fun m!4633641 () Bool)

(assert (=> b!4038477 m!4633641))

(assert (=> b!4038265 d!1197161))

(declare-fun d!1197163 () Bool)

(assert (=> d!1197163 (= suffixResult!105 lt!1436867)))

(declare-fun lt!1436988 () Unit!62437)

(assert (=> d!1197163 (= lt!1436988 (choose!24468 lt!1436870 suffixResult!105 lt!1436870 lt!1436867 lt!1436879))))

(assert (=> d!1197163 (isPrefix!4007 lt!1436870 lt!1436879)))

(assert (=> d!1197163 (= (lemmaSamePrefixThenSameSuffix!2168 lt!1436870 suffixResult!105 lt!1436870 lt!1436867 lt!1436879) lt!1436988)))

(declare-fun bs!590705 () Bool)

(assert (= bs!590705 d!1197163))

(declare-fun m!4633643 () Bool)

(assert (=> bs!590705 m!4633643))

(assert (=> bs!590705 m!4633163))

(assert (=> b!4038265 d!1197163))

(declare-fun b!4038483 () Bool)

(declare-fun e!2505804 () Bool)

(declare-fun e!2505803 () Bool)

(assert (=> b!4038483 (= e!2505804 e!2505803)))

(declare-fun res!1644673 () Bool)

(assert (=> b!4038483 (=> (not res!1644673) (not e!2505803))))

(assert (=> b!4038483 (= res!1644673 (not ((_ is Nil!43233) lt!1436855)))))

(declare-fun b!4038485 () Bool)

(assert (=> b!4038485 (= e!2505803 (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 lt!1436855)))))

(declare-fun b!4038484 () Bool)

(declare-fun res!1644672 () Bool)

(assert (=> b!4038484 (=> (not res!1644672) (not e!2505803))))

(assert (=> b!4038484 (= res!1644672 (= (head!8551 lt!1436870) (head!8551 lt!1436855)))))

(declare-fun d!1197165 () Bool)

(declare-fun e!2505802 () Bool)

(assert (=> d!1197165 e!2505802))

(declare-fun res!1644671 () Bool)

(assert (=> d!1197165 (=> res!1644671 e!2505802)))

(declare-fun lt!1436989 () Bool)

(assert (=> d!1197165 (= res!1644671 (not lt!1436989))))

(assert (=> d!1197165 (= lt!1436989 e!2505804)))

(declare-fun res!1644670 () Bool)

(assert (=> d!1197165 (=> res!1644670 e!2505804)))

(assert (=> d!1197165 (= res!1644670 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197165 (= (isPrefix!4007 lt!1436870 lt!1436855) lt!1436989)))

(declare-fun b!4038486 () Bool)

(assert (=> b!4038486 (= e!2505802 (>= (size!32317 lt!1436855) (size!32317 lt!1436870)))))

(assert (= (and d!1197165 (not res!1644670)) b!4038483))

(assert (= (and b!4038483 res!1644673) b!4038484))

(assert (= (and b!4038484 res!1644672) b!4038485))

(assert (= (and d!1197165 (not res!1644671)) b!4038486))

(assert (=> b!4038485 m!4633543))

(declare-fun m!4633645 () Bool)

(assert (=> b!4038485 m!4633645))

(assert (=> b!4038485 m!4633543))

(assert (=> b!4038485 m!4633645))

(declare-fun m!4633647 () Bool)

(assert (=> b!4038485 m!4633647))

(assert (=> b!4038484 m!4633549))

(declare-fun m!4633649 () Bool)

(assert (=> b!4038484 m!4633649))

(declare-fun m!4633651 () Bool)

(assert (=> b!4038486 m!4633651))

(assert (=> b!4038486 m!4633263))

(assert (=> b!4038265 d!1197165))

(declare-fun d!1197167 () Bool)

(assert (=> d!1197167 (isPrefix!4007 lt!1436870 (++!11322 lt!1436870 lt!1436867))))

(declare-fun lt!1436990 () Unit!62437)

(assert (=> d!1197167 (= lt!1436990 (choose!24469 lt!1436870 lt!1436867))))

(assert (=> d!1197167 (= (lemmaConcatTwoListThenFirstIsPrefix!2842 lt!1436870 lt!1436867) lt!1436990)))

(declare-fun bs!590706 () Bool)

(assert (= bs!590706 d!1197167))

(assert (=> bs!590706 m!4633271))

(assert (=> bs!590706 m!4633271))

(declare-fun m!4633653 () Bool)

(assert (=> bs!590706 m!4633653))

(declare-fun m!4633655 () Bool)

(assert (=> bs!590706 m!4633655))

(assert (=> b!4038265 d!1197167))

(declare-fun b!4038497 () Bool)

(declare-fun e!2505812 () Bool)

(declare-fun e!2505811 () Bool)

(assert (=> b!4038497 (= e!2505812 e!2505811)))

(declare-fun c!697552 () Bool)

(assert (=> b!4038497 (= c!697552 ((_ is IntegerValue!21451) (value!217854 token!484)))))

(declare-fun b!4038498 () Bool)

(declare-fun inv!16 (TokenValue!7150) Bool)

(assert (=> b!4038498 (= e!2505812 (inv!16 (value!217854 token!484)))))

(declare-fun b!4038499 () Bool)

(declare-fun res!1644676 () Bool)

(declare-fun e!2505813 () Bool)

(assert (=> b!4038499 (=> res!1644676 e!2505813)))

(assert (=> b!4038499 (= res!1644676 (not ((_ is IntegerValue!21452) (value!217854 token!484))))))

(assert (=> b!4038499 (= e!2505811 e!2505813)))

(declare-fun d!1197169 () Bool)

(declare-fun c!697551 () Bool)

(assert (=> d!1197169 (= c!697551 ((_ is IntegerValue!21450) (value!217854 token!484)))))

(assert (=> d!1197169 (= (inv!21 (value!217854 token!484)) e!2505812)))

(declare-fun b!4038500 () Bool)

(declare-fun inv!17 (TokenValue!7150) Bool)

(assert (=> b!4038500 (= e!2505811 (inv!17 (value!217854 token!484)))))

(declare-fun b!4038501 () Bool)

(declare-fun inv!15 (TokenValue!7150) Bool)

(assert (=> b!4038501 (= e!2505813 (inv!15 (value!217854 token!484)))))

(assert (= (and d!1197169 c!697551) b!4038498))

(assert (= (and d!1197169 (not c!697551)) b!4038497))

(assert (= (and b!4038497 c!697552) b!4038500))

(assert (= (and b!4038497 (not c!697552)) b!4038499))

(assert (= (and b!4038499 (not res!1644676)) b!4038501))

(declare-fun m!4633657 () Bool)

(assert (=> b!4038498 m!4633657))

(declare-fun m!4633659 () Bool)

(assert (=> b!4038500 m!4633659))

(declare-fun m!4633661 () Bool)

(assert (=> b!4038501 m!4633661))

(assert (=> b!4038243 d!1197169))

(declare-fun d!1197171 () Bool)

(assert (=> d!1197171 (= (inv!57768 (tag!7780 (rule!9990 token!484))) (= (mod (str.len (value!217853 (tag!7780 (rule!9990 token!484)))) 2) 0))))

(assert (=> b!4038264 d!1197171))

(declare-fun d!1197173 () Bool)

(declare-fun res!1644679 () Bool)

(declare-fun e!2505816 () Bool)

(assert (=> d!1197173 (=> (not res!1644679) (not e!2505816))))

(assert (=> d!1197173 (= res!1644679 (semiInverseModEq!2956 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))))))

(assert (=> d!1197173 (= (inv!57771 (transformation!6920 (rule!9990 token!484))) e!2505816)))

(declare-fun b!4038504 () Bool)

(assert (=> b!4038504 (= e!2505816 (equivClasses!2855 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))))))

(assert (= (and d!1197173 res!1644679) b!4038504))

(assert (=> d!1197173 m!4633525))

(assert (=> b!4038504 m!4633527))

(assert (=> b!4038264 d!1197173))

(declare-fun d!1197175 () Bool)

(assert (=> d!1197175 (= (apply!10109 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))) lt!1436864) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))))

(declare-fun b_lambda!117857 () Bool)

(assert (=> (not b_lambda!117857) (not d!1197175)))

(declare-fun tb!242677 () Bool)

(declare-fun t!334800 () Bool)

(assert (=> (and b!4038253 (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) t!334800) tb!242677))

(declare-fun result!294156 () Bool)

(assert (=> tb!242677 (= result!294156 (inv!21 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))))

(declare-fun m!4633663 () Bool)

(assert (=> tb!242677 m!4633663))

(assert (=> d!1197175 t!334800))

(declare-fun b_and!310375 () Bool)

(assert (= b_and!310371 (and (=> t!334800 result!294156) b_and!310375)))

(declare-fun tb!242679 () Bool)

(declare-fun t!334802 () Bool)

(assert (=> (and b!4038259 (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) t!334802) tb!242679))

(declare-fun result!294158 () Bool)

(assert (= result!294158 result!294156))

(assert (=> d!1197175 t!334802))

(declare-fun b_and!310377 () Bool)

(assert (= b_and!310373 (and (=> t!334802 result!294158) b_and!310377)))

(declare-fun m!4633665 () Bool)

(assert (=> d!1197175 m!4633665))

(assert (=> b!4038242 d!1197175))

(declare-fun d!1197177 () Bool)

(declare-fun lt!1436991 () Int)

(assert (=> d!1197177 (>= lt!1436991 0)))

(declare-fun e!2505818 () Int)

(assert (=> d!1197177 (= lt!1436991 e!2505818)))

(declare-fun c!697553 () Bool)

(assert (=> d!1197177 (= c!697553 ((_ is Nil!43233) lt!1436852))))

(assert (=> d!1197177 (= (size!32317 lt!1436852) lt!1436991)))

(declare-fun b!4038505 () Bool)

(assert (=> b!4038505 (= e!2505818 0)))

(declare-fun b!4038506 () Bool)

(assert (=> b!4038506 (= e!2505818 (+ 1 (size!32317 (t!334776 lt!1436852))))))

(assert (= (and d!1197177 c!697553) b!4038505))

(assert (= (and d!1197177 (not c!697553)) b!4038506))

(declare-fun m!4633667 () Bool)

(assert (=> b!4038506 m!4633667))

(assert (=> b!4038242 d!1197177))

(declare-fun b!4038765 () Bool)

(declare-fun e!2505965 () Bool)

(assert (=> b!4038765 (= e!2505965 true)))

(declare-fun d!1197179 () Bool)

(assert (=> d!1197179 e!2505965))

(assert (= d!1197179 b!4038765))

(declare-fun lambda!127345 () Int)

(declare-fun order!22631 () Int)

(declare-fun order!22629 () Int)

(declare-fun dynLambda!18346 (Int Int) Int)

(declare-fun dynLambda!18347 (Int Int) Int)

(assert (=> b!4038765 (< (dynLambda!18346 order!22629 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) (dynLambda!18347 order!22631 lambda!127345))))

(declare-fun order!22633 () Int)

(declare-fun dynLambda!18348 (Int Int) Int)

(assert (=> b!4038765 (< (dynLambda!18348 order!22633 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) (dynLambda!18347 order!22631 lambda!127345))))

(assert (=> d!1197179 (= (list!16094 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))) (list!16094 lt!1436864))))

(declare-fun lt!1437070 () Unit!62437)

(declare-fun ForallOf!823 (Int BalanceConc!25856) Unit!62437)

(assert (=> d!1197179 (= lt!1437070 (ForallOf!823 lambda!127345 lt!1436864))))

(assert (=> d!1197179 (= (lemmaSemiInverse!1905 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))) lt!1436864) lt!1437070)))

(declare-fun b_lambda!117875 () Bool)

(assert (=> (not b_lambda!117875) (not d!1197179)))

(declare-fun t!334826 () Bool)

(declare-fun tb!242703 () Bool)

(assert (=> (and b!4038253 (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) t!334826) tb!242703))

(declare-fun tp!1226512 () Bool)

(declare-fun b!4038766 () Bool)

(declare-fun e!2505966 () Bool)

(assert (=> b!4038766 (= e!2505966 (and (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))) tp!1226512))))

(declare-fun result!294190 () Bool)

(assert (=> tb!242703 (= result!294190 (and (inv!57776 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))) e!2505966))))

(assert (= tb!242703 b!4038766))

(declare-fun m!4633999 () Bool)

(assert (=> b!4038766 m!4633999))

(declare-fun m!4634001 () Bool)

(assert (=> tb!242703 m!4634001))

(assert (=> d!1197179 t!334826))

(declare-fun b_and!310403 () Bool)

(assert (= b_and!310367 (and (=> t!334826 result!294190) b_and!310403)))

(declare-fun t!334828 () Bool)

(declare-fun tb!242705 () Bool)

(assert (=> (and b!4038259 (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) t!334828) tb!242705))

(declare-fun result!294192 () Bool)

(assert (= result!294192 result!294190))

(assert (=> d!1197179 t!334828))

(declare-fun b_and!310405 () Bool)

(assert (= b_and!310369 (and (=> t!334828 result!294192) b_and!310405)))

(declare-fun b_lambda!117877 () Bool)

(assert (=> (not b_lambda!117877) (not d!1197179)))

(assert (=> d!1197179 t!334800))

(declare-fun b_and!310407 () Bool)

(assert (= b_and!310375 (and (=> t!334800 result!294156) b_and!310407)))

(assert (=> d!1197179 t!334802))

(declare-fun b_and!310409 () Bool)

(assert (= b_and!310377 (and (=> t!334802 result!294158) b_and!310409)))

(declare-fun m!4634003 () Bool)

(assert (=> d!1197179 m!4634003))

(declare-fun m!4634005 () Bool)

(assert (=> d!1197179 m!4634005))

(assert (=> d!1197179 m!4633665))

(declare-fun m!4634007 () Bool)

(assert (=> d!1197179 m!4634007))

(declare-fun m!4634009 () Bool)

(assert (=> d!1197179 m!4634009))

(assert (=> d!1197179 m!4633665))

(assert (=> d!1197179 m!4634007))

(assert (=> b!4038242 d!1197179))

(declare-fun d!1197289 () Bool)

(assert (=> d!1197289 (= (seqFromList!5137 lt!1436852) (fromListB!2342 lt!1436852))))

(declare-fun bs!590723 () Bool)

(assert (= bs!590723 d!1197289))

(declare-fun m!4634011 () Bool)

(assert (=> bs!590723 m!4634011))

(assert (=> b!4038242 d!1197289))

(declare-fun b!4038767 () Bool)

(declare-fun e!2505969 () Bool)

(declare-fun e!2505968 () Bool)

(assert (=> b!4038767 (= e!2505969 e!2505968)))

(declare-fun res!1644816 () Bool)

(assert (=> b!4038767 (=> (not res!1644816) (not e!2505968))))

(assert (=> b!4038767 (= res!1644816 (not ((_ is Nil!43233) lt!1436879)))))

(declare-fun b!4038769 () Bool)

(assert (=> b!4038769 (= e!2505968 (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 lt!1436879)))))

(declare-fun b!4038768 () Bool)

(declare-fun res!1644815 () Bool)

(assert (=> b!4038768 (=> (not res!1644815) (not e!2505968))))

(assert (=> b!4038768 (= res!1644815 (= (head!8551 lt!1436870) (head!8551 lt!1436879)))))

(declare-fun d!1197291 () Bool)

(declare-fun e!2505967 () Bool)

(assert (=> d!1197291 e!2505967))

(declare-fun res!1644814 () Bool)

(assert (=> d!1197291 (=> res!1644814 e!2505967)))

(declare-fun lt!1437071 () Bool)

(assert (=> d!1197291 (= res!1644814 (not lt!1437071))))

(assert (=> d!1197291 (= lt!1437071 e!2505969)))

(declare-fun res!1644813 () Bool)

(assert (=> d!1197291 (=> res!1644813 e!2505969)))

(assert (=> d!1197291 (= res!1644813 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197291 (= (isPrefix!4007 lt!1436870 lt!1436879) lt!1437071)))

(declare-fun b!4038770 () Bool)

(assert (=> b!4038770 (= e!2505967 (>= (size!32317 lt!1436879) (size!32317 lt!1436870)))))

(assert (= (and d!1197291 (not res!1644813)) b!4038767))

(assert (= (and b!4038767 res!1644816) b!4038768))

(assert (= (and b!4038768 res!1644815) b!4038769))

(assert (= (and d!1197291 (not res!1644814)) b!4038770))

(assert (=> b!4038769 m!4633543))

(declare-fun m!4634013 () Bool)

(assert (=> b!4038769 m!4634013))

(assert (=> b!4038769 m!4633543))

(assert (=> b!4038769 m!4634013))

(declare-fun m!4634015 () Bool)

(assert (=> b!4038769 m!4634015))

(assert (=> b!4038768 m!4633549))

(declare-fun m!4634017 () Bool)

(assert (=> b!4038768 m!4634017))

(assert (=> b!4038770 m!4633345))

(assert (=> b!4038770 m!4633263))

(assert (=> b!4038263 d!1197291))

(declare-fun b!4038771 () Bool)

(declare-fun e!2505972 () Bool)

(declare-fun e!2505971 () Bool)

(assert (=> b!4038771 (= e!2505972 e!2505971)))

(declare-fun res!1644820 () Bool)

(assert (=> b!4038771 (=> (not res!1644820) (not e!2505971))))

(assert (=> b!4038771 (= res!1644820 (not ((_ is Nil!43233) lt!1436849)))))

(declare-fun b!4038773 () Bool)

(assert (=> b!4038773 (= e!2505971 (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 lt!1436849)))))

(declare-fun b!4038772 () Bool)

(declare-fun res!1644819 () Bool)

(assert (=> b!4038772 (=> (not res!1644819) (not e!2505971))))

(assert (=> b!4038772 (= res!1644819 (= (head!8551 lt!1436870) (head!8551 lt!1436849)))))

(declare-fun d!1197293 () Bool)

(declare-fun e!2505970 () Bool)

(assert (=> d!1197293 e!2505970))

(declare-fun res!1644818 () Bool)

(assert (=> d!1197293 (=> res!1644818 e!2505970)))

(declare-fun lt!1437072 () Bool)

(assert (=> d!1197293 (= res!1644818 (not lt!1437072))))

(assert (=> d!1197293 (= lt!1437072 e!2505972)))

(declare-fun res!1644817 () Bool)

(assert (=> d!1197293 (=> res!1644817 e!2505972)))

(assert (=> d!1197293 (= res!1644817 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197293 (= (isPrefix!4007 lt!1436870 lt!1436849) lt!1437072)))

(declare-fun b!4038774 () Bool)

(assert (=> b!4038774 (= e!2505970 (>= (size!32317 lt!1436849) (size!32317 lt!1436870)))))

(assert (= (and d!1197293 (not res!1644817)) b!4038771))

(assert (= (and b!4038771 res!1644820) b!4038772))

(assert (= (and b!4038772 res!1644819) b!4038773))

(assert (= (and d!1197293 (not res!1644818)) b!4038774))

(assert (=> b!4038773 m!4633543))

(declare-fun m!4634019 () Bool)

(assert (=> b!4038773 m!4634019))

(assert (=> b!4038773 m!4633543))

(assert (=> b!4038773 m!4634019))

(declare-fun m!4634021 () Bool)

(assert (=> b!4038773 m!4634021))

(assert (=> b!4038772 m!4633549))

(declare-fun m!4634023 () Bool)

(assert (=> b!4038772 m!4634023))

(declare-fun m!4634025 () Bool)

(assert (=> b!4038774 m!4634025))

(assert (=> b!4038774 m!4633263))

(assert (=> b!4038263 d!1197293))

(declare-fun d!1197295 () Bool)

(assert (=> d!1197295 (isPrefix!4007 lt!1436870 (++!11322 lt!1436870 suffixResult!105))))

(declare-fun lt!1437073 () Unit!62437)

(assert (=> d!1197295 (= lt!1437073 (choose!24469 lt!1436870 suffixResult!105))))

(assert (=> d!1197295 (= (lemmaConcatTwoListThenFirstIsPrefix!2842 lt!1436870 suffixResult!105) lt!1437073)))

(declare-fun bs!590724 () Bool)

(assert (= bs!590724 d!1197295))

(assert (=> bs!590724 m!4633255))

(assert (=> bs!590724 m!4633255))

(declare-fun m!4634027 () Bool)

(assert (=> bs!590724 m!4634027))

(declare-fun m!4634029 () Bool)

(assert (=> bs!590724 m!4634029))

(assert (=> b!4038263 d!1197295))

(declare-fun d!1197297 () Bool)

(assert (=> d!1197297 (isPrefix!4007 prefix!494 (++!11322 prefix!494 suffix!1299))))

(declare-fun lt!1437074 () Unit!62437)

(assert (=> d!1197297 (= lt!1437074 (choose!24469 prefix!494 suffix!1299))))

(assert (=> d!1197297 (= (lemmaConcatTwoListThenFirstIsPrefix!2842 prefix!494 suffix!1299) lt!1437074)))

(declare-fun bs!590725 () Bool)

(assert (= bs!590725 d!1197297))

(assert (=> bs!590725 m!4633225))

(assert (=> bs!590725 m!4633225))

(declare-fun m!4634031 () Bool)

(assert (=> bs!590725 m!4634031))

(declare-fun m!4634033 () Bool)

(assert (=> bs!590725 m!4634033))

(assert (=> b!4038263 d!1197297))

(declare-fun b!4038775 () Bool)

(declare-fun e!2505975 () Bool)

(declare-fun e!2505974 () Bool)

(assert (=> b!4038775 (= e!2505975 e!2505974)))

(declare-fun res!1644824 () Bool)

(assert (=> b!4038775 (=> (not res!1644824) (not e!2505974))))

(assert (=> b!4038775 (= res!1644824 (not ((_ is Nil!43233) lt!1436879)))))

(declare-fun b!4038777 () Bool)

(assert (=> b!4038777 (= e!2505974 (isPrefix!4007 (tail!6283 prefix!494) (tail!6283 lt!1436879)))))

(declare-fun b!4038776 () Bool)

(declare-fun res!1644823 () Bool)

(assert (=> b!4038776 (=> (not res!1644823) (not e!2505974))))

(assert (=> b!4038776 (= res!1644823 (= (head!8551 prefix!494) (head!8551 lt!1436879)))))

(declare-fun d!1197299 () Bool)

(declare-fun e!2505973 () Bool)

(assert (=> d!1197299 e!2505973))

(declare-fun res!1644822 () Bool)

(assert (=> d!1197299 (=> res!1644822 e!2505973)))

(declare-fun lt!1437075 () Bool)

(assert (=> d!1197299 (= res!1644822 (not lt!1437075))))

(assert (=> d!1197299 (= lt!1437075 e!2505975)))

(declare-fun res!1644821 () Bool)

(assert (=> d!1197299 (=> res!1644821 e!2505975)))

(assert (=> d!1197299 (= res!1644821 ((_ is Nil!43233) prefix!494))))

(assert (=> d!1197299 (= (isPrefix!4007 prefix!494 lt!1436879) lt!1437075)))

(declare-fun b!4038778 () Bool)

(assert (=> b!4038778 (= e!2505973 (>= (size!32317 lt!1436879) (size!32317 prefix!494)))))

(assert (= (and d!1197299 (not res!1644821)) b!4038775))

(assert (= (and b!4038775 res!1644824) b!4038776))

(assert (= (and b!4038776 res!1644823) b!4038777))

(assert (= (and d!1197299 (not res!1644822)) b!4038778))

(declare-fun m!4634035 () Bool)

(assert (=> b!4038777 m!4634035))

(assert (=> b!4038777 m!4634013))

(assert (=> b!4038777 m!4634035))

(assert (=> b!4038777 m!4634013))

(declare-fun m!4634037 () Bool)

(assert (=> b!4038777 m!4634037))

(declare-fun m!4634039 () Bool)

(assert (=> b!4038776 m!4634039))

(assert (=> b!4038776 m!4634017))

(assert (=> b!4038778 m!4633345))

(assert (=> b!4038778 m!4633265))

(assert (=> b!4038263 d!1197299))

(declare-fun d!1197301 () Bool)

(declare-fun lt!1437076 () Int)

(assert (=> d!1197301 (>= lt!1437076 0)))

(declare-fun e!2505976 () Int)

(assert (=> d!1197301 (= lt!1437076 e!2505976)))

(declare-fun c!697590 () Bool)

(assert (=> d!1197301 (= c!697590 ((_ is Nil!43233) suffix!1299))))

(assert (=> d!1197301 (= (size!32317 suffix!1299) lt!1437076)))

(declare-fun b!4038779 () Bool)

(assert (=> b!4038779 (= e!2505976 0)))

(declare-fun b!4038780 () Bool)

(assert (=> b!4038780 (= e!2505976 (+ 1 (size!32317 (t!334776 suffix!1299))))))

(assert (= (and d!1197301 c!697590) b!4038779))

(assert (= (and d!1197301 (not c!697590)) b!4038780))

(declare-fun m!4634041 () Bool)

(assert (=> b!4038780 m!4634041))

(assert (=> b!4038241 d!1197301))

(declare-fun d!1197303 () Bool)

(declare-fun lt!1437077 () Int)

(assert (=> d!1197303 (>= lt!1437077 0)))

(declare-fun e!2505977 () Int)

(assert (=> d!1197303 (= lt!1437077 e!2505977)))

(declare-fun c!697591 () Bool)

(assert (=> d!1197303 (= c!697591 ((_ is Nil!43233) newSuffix!27))))

(assert (=> d!1197303 (= (size!32317 newSuffix!27) lt!1437077)))

(declare-fun b!4038781 () Bool)

(assert (=> b!4038781 (= e!2505977 0)))

(declare-fun b!4038782 () Bool)

(assert (=> b!4038782 (= e!2505977 (+ 1 (size!32317 (t!334776 newSuffix!27))))))

(assert (= (and d!1197303 c!697591) b!4038781))

(assert (= (and d!1197303 (not c!697591)) b!4038782))

(declare-fun m!4634043 () Bool)

(assert (=> b!4038782 m!4634043))

(assert (=> b!4038241 d!1197303))

(declare-fun b!4038785 () Bool)

(declare-fun res!1644825 () Bool)

(declare-fun e!2505979 () Bool)

(assert (=> b!4038785 (=> (not res!1644825) (not e!2505979))))

(declare-fun lt!1437078 () List!43357)

(assert (=> b!4038785 (= res!1644825 (= (size!32317 lt!1437078) (+ (size!32317 prefix!494) (size!32317 newSuffix!27))))))

(declare-fun b!4038783 () Bool)

(declare-fun e!2505978 () List!43357)

(assert (=> b!4038783 (= e!2505978 newSuffix!27)))

(declare-fun b!4038784 () Bool)

(assert (=> b!4038784 (= e!2505978 (Cons!43233 (h!48653 prefix!494) (++!11322 (t!334776 prefix!494) newSuffix!27)))))

(declare-fun d!1197305 () Bool)

(assert (=> d!1197305 e!2505979))

(declare-fun res!1644826 () Bool)

(assert (=> d!1197305 (=> (not res!1644826) (not e!2505979))))

(assert (=> d!1197305 (= res!1644826 (= (content!6573 lt!1437078) ((_ map or) (content!6573 prefix!494) (content!6573 newSuffix!27))))))

(assert (=> d!1197305 (= lt!1437078 e!2505978)))

(declare-fun c!697592 () Bool)

(assert (=> d!1197305 (= c!697592 ((_ is Nil!43233) prefix!494))))

(assert (=> d!1197305 (= (++!11322 prefix!494 newSuffix!27) lt!1437078)))

(declare-fun b!4038786 () Bool)

(assert (=> b!4038786 (= e!2505979 (or (not (= newSuffix!27 Nil!43233)) (= lt!1437078 prefix!494)))))

(assert (= (and d!1197305 c!697592) b!4038783))

(assert (= (and d!1197305 (not c!697592)) b!4038784))

(assert (= (and d!1197305 res!1644826) b!4038785))

(assert (= (and b!4038785 res!1644825) b!4038786))

(declare-fun m!4634045 () Bool)

(assert (=> b!4038785 m!4634045))

(assert (=> b!4038785 m!4633265))

(assert (=> b!4038785 m!4633281))

(declare-fun m!4634047 () Bool)

(assert (=> b!4038784 m!4634047))

(declare-fun m!4634049 () Bool)

(assert (=> d!1197305 m!4634049))

(assert (=> d!1197305 m!4633375))

(declare-fun m!4634051 () Bool)

(assert (=> d!1197305 m!4634051))

(assert (=> b!4038262 d!1197305))

(declare-fun b!4038789 () Bool)

(declare-fun res!1644827 () Bool)

(declare-fun e!2505981 () Bool)

(assert (=> b!4038789 (=> (not res!1644827) (not e!2505981))))

(declare-fun lt!1437079 () List!43357)

(assert (=> b!4038789 (= res!1644827 (= (size!32317 lt!1437079) (+ (size!32317 lt!1436870) (size!32317 newSuffixResult!27))))))

(declare-fun b!4038787 () Bool)

(declare-fun e!2505980 () List!43357)

(assert (=> b!4038787 (= e!2505980 newSuffixResult!27)))

(declare-fun b!4038788 () Bool)

(assert (=> b!4038788 (= e!2505980 (Cons!43233 (h!48653 lt!1436870) (++!11322 (t!334776 lt!1436870) newSuffixResult!27)))))

(declare-fun d!1197307 () Bool)

(assert (=> d!1197307 e!2505981))

(declare-fun res!1644828 () Bool)

(assert (=> d!1197307 (=> (not res!1644828) (not e!2505981))))

(assert (=> d!1197307 (= res!1644828 (= (content!6573 lt!1437079) ((_ map or) (content!6573 lt!1436870) (content!6573 newSuffixResult!27))))))

(assert (=> d!1197307 (= lt!1437079 e!2505980)))

(declare-fun c!697593 () Bool)

(assert (=> d!1197307 (= c!697593 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197307 (= (++!11322 lt!1436870 newSuffixResult!27) lt!1437079)))

(declare-fun b!4038790 () Bool)

(assert (=> b!4038790 (= e!2505981 (or (not (= newSuffixResult!27 Nil!43233)) (= lt!1437079 lt!1436870)))))

(assert (= (and d!1197307 c!697593) b!4038787))

(assert (= (and d!1197307 (not c!697593)) b!4038788))

(assert (= (and d!1197307 res!1644828) b!4038789))

(assert (= (and b!4038789 res!1644827) b!4038790))

(declare-fun m!4634053 () Bool)

(assert (=> b!4038789 m!4634053))

(assert (=> b!4038789 m!4633263))

(declare-fun m!4634055 () Bool)

(assert (=> b!4038789 m!4634055))

(declare-fun m!4634057 () Bool)

(assert (=> b!4038788 m!4634057))

(declare-fun m!4634059 () Bool)

(assert (=> d!1197307 m!4634059))

(assert (=> d!1197307 m!4633387))

(declare-fun m!4634061 () Bool)

(assert (=> d!1197307 m!4634061))

(assert (=> b!4038262 d!1197307))

(declare-fun d!1197309 () Bool)

(assert (=> d!1197309 (= (inv!57768 (tag!7780 (h!48655 rules!2999))) (= (mod (str.len (value!217853 (tag!7780 (h!48655 rules!2999)))) 2) 0))))

(assert (=> b!4038240 d!1197309))

(declare-fun d!1197311 () Bool)

(declare-fun res!1644829 () Bool)

(declare-fun e!2505982 () Bool)

(assert (=> d!1197311 (=> (not res!1644829) (not e!2505982))))

(assert (=> d!1197311 (= res!1644829 (semiInverseModEq!2956 (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (h!48655 rules!2999)))))))

(assert (=> d!1197311 (= (inv!57771 (transformation!6920 (h!48655 rules!2999))) e!2505982)))

(declare-fun b!4038791 () Bool)

(assert (=> b!4038791 (= e!2505982 (equivClasses!2855 (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (h!48655 rules!2999)))))))

(assert (= (and d!1197311 res!1644829) b!4038791))

(declare-fun m!4634063 () Bool)

(assert (=> d!1197311 m!4634063))

(declare-fun m!4634065 () Bool)

(assert (=> b!4038791 m!4634065))

(assert (=> b!4038240 d!1197311))

(declare-fun b!4038820 () Bool)

(declare-fun e!2506002 () Bool)

(declare-fun e!2506001 () Bool)

(assert (=> b!4038820 (= e!2506002 e!2506001)))

(declare-fun res!1644851 () Bool)

(assert (=> b!4038820 (=> res!1644851 e!2506001)))

(declare-fun call!287268 () Bool)

(assert (=> b!4038820 (= res!1644851 call!287268)))

(declare-fun b!4038821 () Bool)

(declare-fun res!1644850 () Bool)

(declare-fun e!2506000 () Bool)

(assert (=> b!4038821 (=> (not res!1644850) (not e!2506000))))

(assert (=> b!4038821 (= res!1644850 (not call!287268))))

(declare-fun b!4038822 () Bool)

(declare-fun e!2505997 () Bool)

(assert (=> b!4038822 (= e!2505997 e!2506002)))

(declare-fun res!1644849 () Bool)

(assert (=> b!4038822 (=> (not res!1644849) (not e!2506002))))

(declare-fun lt!1437082 () Bool)

(assert (=> b!4038822 (= res!1644849 (not lt!1437082))))

(declare-fun b!4038823 () Bool)

(assert (=> b!4038823 (= e!2506000 (= (head!8551 lt!1436870) (c!697517 (regex!6920 (rule!9990 token!484)))))))

(declare-fun d!1197313 () Bool)

(declare-fun e!2505998 () Bool)

(assert (=> d!1197313 e!2505998))

(declare-fun c!697602 () Bool)

(assert (=> d!1197313 (= c!697602 ((_ is EmptyExpr!11825) (regex!6920 (rule!9990 token!484))))))

(declare-fun e!2505999 () Bool)

(assert (=> d!1197313 (= lt!1437082 e!2505999)))

(declare-fun c!697600 () Bool)

(assert (=> d!1197313 (= c!697600 (isEmpty!25803 lt!1436870))))

(assert (=> d!1197313 (validRegex!5348 (regex!6920 (rule!9990 token!484)))))

(assert (=> d!1197313 (= (matchR!5778 (regex!6920 (rule!9990 token!484)) lt!1436870) lt!1437082)))

(declare-fun b!4038824 () Bool)

(assert (=> b!4038824 (= e!2505999 (nullable!4148 (regex!6920 (rule!9990 token!484))))))

(declare-fun b!4038825 () Bool)

(assert (=> b!4038825 (= e!2505998 (= lt!1437082 call!287268))))

(declare-fun bm!287263 () Bool)

(assert (=> bm!287263 (= call!287268 (isEmpty!25803 lt!1436870))))

(declare-fun b!4038826 () Bool)

(declare-fun derivativeStep!3553 (Regex!11825 C!23836) Regex!11825)

(assert (=> b!4038826 (= e!2505999 (matchR!5778 (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 lt!1436870)) (tail!6283 lt!1436870)))))

(declare-fun b!4038827 () Bool)

(declare-fun res!1644847 () Bool)

(assert (=> b!4038827 (=> res!1644847 e!2505997)))

(assert (=> b!4038827 (= res!1644847 e!2506000)))

(declare-fun res!1644852 () Bool)

(assert (=> b!4038827 (=> (not res!1644852) (not e!2506000))))

(assert (=> b!4038827 (= res!1644852 lt!1437082)))

(declare-fun b!4038828 () Bool)

(declare-fun res!1644853 () Bool)

(assert (=> b!4038828 (=> res!1644853 e!2506001)))

(assert (=> b!4038828 (= res!1644853 (not (isEmpty!25803 (tail!6283 lt!1436870))))))

(declare-fun b!4038829 () Bool)

(declare-fun res!1644846 () Bool)

(assert (=> b!4038829 (=> (not res!1644846) (not e!2506000))))

(assert (=> b!4038829 (= res!1644846 (isEmpty!25803 (tail!6283 lt!1436870)))))

(declare-fun b!4038830 () Bool)

(declare-fun e!2506003 () Bool)

(assert (=> b!4038830 (= e!2505998 e!2506003)))

(declare-fun c!697601 () Bool)

(assert (=> b!4038830 (= c!697601 ((_ is EmptyLang!11825) (regex!6920 (rule!9990 token!484))))))

(declare-fun b!4038831 () Bool)

(declare-fun res!1644848 () Bool)

(assert (=> b!4038831 (=> res!1644848 e!2505997)))

(assert (=> b!4038831 (= res!1644848 (not ((_ is ElementMatch!11825) (regex!6920 (rule!9990 token!484)))))))

(assert (=> b!4038831 (= e!2506003 e!2505997)))

(declare-fun b!4038832 () Bool)

(assert (=> b!4038832 (= e!2506001 (not (= (head!8551 lt!1436870) (c!697517 (regex!6920 (rule!9990 token!484))))))))

(declare-fun b!4038833 () Bool)

(assert (=> b!4038833 (= e!2506003 (not lt!1437082))))

(assert (= (and d!1197313 c!697600) b!4038824))

(assert (= (and d!1197313 (not c!697600)) b!4038826))

(assert (= (and d!1197313 c!697602) b!4038825))

(assert (= (and d!1197313 (not c!697602)) b!4038830))

(assert (= (and b!4038830 c!697601) b!4038833))

(assert (= (and b!4038830 (not c!697601)) b!4038831))

(assert (= (and b!4038831 (not res!1644848)) b!4038827))

(assert (= (and b!4038827 res!1644852) b!4038821))

(assert (= (and b!4038821 res!1644850) b!4038829))

(assert (= (and b!4038829 res!1644846) b!4038823))

(assert (= (and b!4038827 (not res!1644847)) b!4038822))

(assert (= (and b!4038822 res!1644849) b!4038820))

(assert (= (and b!4038820 (not res!1644851)) b!4038828))

(assert (= (and b!4038828 (not res!1644853)) b!4038832))

(assert (= (or b!4038825 b!4038820 b!4038821) bm!287263))

(assert (=> b!4038824 m!4633531))

(assert (=> b!4038829 m!4633543))

(assert (=> b!4038829 m!4633543))

(declare-fun m!4634067 () Bool)

(assert (=> b!4038829 m!4634067))

(assert (=> b!4038826 m!4633549))

(assert (=> b!4038826 m!4633549))

(declare-fun m!4634069 () Bool)

(assert (=> b!4038826 m!4634069))

(assert (=> b!4038826 m!4633543))

(assert (=> b!4038826 m!4634069))

(assert (=> b!4038826 m!4633543))

(declare-fun m!4634071 () Bool)

(assert (=> b!4038826 m!4634071))

(assert (=> b!4038828 m!4633543))

(assert (=> b!4038828 m!4633543))

(assert (=> b!4038828 m!4634067))

(assert (=> b!4038832 m!4633549))

(declare-fun m!4634073 () Bool)

(assert (=> d!1197313 m!4634073))

(assert (=> d!1197313 m!4633529))

(assert (=> bm!287263 m!4634073))

(assert (=> b!4038823 m!4633549))

(assert (=> b!4038261 d!1197313))

(declare-fun b!4038834 () Bool)

(declare-fun e!2506006 () Bool)

(declare-fun e!2506005 () Bool)

(assert (=> b!4038834 (= e!2506006 e!2506005)))

(declare-fun res!1644857 () Bool)

(assert (=> b!4038834 (=> (not res!1644857) (not e!2506005))))

(assert (=> b!4038834 (= res!1644857 (not ((_ is Nil!43233) lt!1436861)))))

(declare-fun b!4038836 () Bool)

(assert (=> b!4038836 (= e!2506005 (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 lt!1436861)))))

(declare-fun b!4038835 () Bool)

(declare-fun res!1644856 () Bool)

(assert (=> b!4038835 (=> (not res!1644856) (not e!2506005))))

(assert (=> b!4038835 (= res!1644856 (= (head!8551 lt!1436870) (head!8551 lt!1436861)))))

(declare-fun d!1197315 () Bool)

(declare-fun e!2506004 () Bool)

(assert (=> d!1197315 e!2506004))

(declare-fun res!1644855 () Bool)

(assert (=> d!1197315 (=> res!1644855 e!2506004)))

(declare-fun lt!1437083 () Bool)

(assert (=> d!1197315 (= res!1644855 (not lt!1437083))))

(assert (=> d!1197315 (= lt!1437083 e!2506006)))

(declare-fun res!1644854 () Bool)

(assert (=> d!1197315 (=> res!1644854 e!2506006)))

(assert (=> d!1197315 (= res!1644854 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197315 (= (isPrefix!4007 lt!1436870 lt!1436861) lt!1437083)))

(declare-fun b!4038837 () Bool)

(assert (=> b!4038837 (= e!2506004 (>= (size!32317 lt!1436861) (size!32317 lt!1436870)))))

(assert (= (and d!1197315 (not res!1644854)) b!4038834))

(assert (= (and b!4038834 res!1644857) b!4038835))

(assert (= (and b!4038835 res!1644856) b!4038836))

(assert (= (and d!1197315 (not res!1644855)) b!4038837))

(assert (=> b!4038836 m!4633543))

(declare-fun m!4634075 () Bool)

(assert (=> b!4038836 m!4634075))

(assert (=> b!4038836 m!4633543))

(assert (=> b!4038836 m!4634075))

(declare-fun m!4634077 () Bool)

(assert (=> b!4038836 m!4634077))

(assert (=> b!4038835 m!4633549))

(declare-fun m!4634079 () Bool)

(assert (=> b!4038835 m!4634079))

(assert (=> b!4038837 m!4633641))

(assert (=> b!4038837 m!4633263))

(assert (=> b!4038261 d!1197315))

(declare-fun d!1197317 () Bool)

(assert (=> d!1197317 (isPrefix!4007 lt!1436870 (++!11322 prefix!494 newSuffix!27))))

(declare-fun lt!1437086 () Unit!62437)

(declare-fun choose!24472 (List!43357 List!43357 List!43357) Unit!62437)

(assert (=> d!1197317 (= lt!1437086 (choose!24472 lt!1436870 prefix!494 newSuffix!27))))

(assert (=> d!1197317 (isPrefix!4007 lt!1436870 prefix!494)))

(assert (=> d!1197317 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!800 lt!1436870 prefix!494 newSuffix!27) lt!1437086)))

(declare-fun bs!590726 () Bool)

(assert (= bs!590726 d!1197317))

(assert (=> bs!590726 m!4633251))

(assert (=> bs!590726 m!4633251))

(declare-fun m!4634081 () Bool)

(assert (=> bs!590726 m!4634081))

(declare-fun m!4634083 () Bool)

(assert (=> bs!590726 m!4634083))

(assert (=> bs!590726 m!4633199))

(assert (=> b!4038261 d!1197317))

(declare-fun d!1197319 () Bool)

(assert (=> d!1197319 (isPrefix!4007 lt!1436870 (++!11322 prefix!494 suffix!1299))))

(declare-fun lt!1437087 () Unit!62437)

(assert (=> d!1197319 (= lt!1437087 (choose!24472 lt!1436870 prefix!494 suffix!1299))))

(assert (=> d!1197319 (isPrefix!4007 lt!1436870 prefix!494)))

(assert (=> d!1197319 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!800 lt!1436870 prefix!494 suffix!1299) lt!1437087)))

(declare-fun bs!590727 () Bool)

(assert (= bs!590727 d!1197319))

(assert (=> bs!590727 m!4633225))

(assert (=> bs!590727 m!4633225))

(declare-fun m!4634085 () Bool)

(assert (=> bs!590727 m!4634085))

(declare-fun m!4634087 () Bool)

(assert (=> bs!590727 m!4634087))

(assert (=> bs!590727 m!4633199))

(assert (=> b!4038261 d!1197319))

(declare-fun d!1197321 () Bool)

(declare-fun lt!1437088 () Int)

(assert (=> d!1197321 (>= lt!1437088 0)))

(declare-fun e!2506007 () Int)

(assert (=> d!1197321 (= lt!1437088 e!2506007)))

(declare-fun c!697603 () Bool)

(assert (=> d!1197321 (= c!697603 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197321 (= (size!32317 lt!1436870) lt!1437088)))

(declare-fun b!4038838 () Bool)

(assert (=> b!4038838 (= e!2506007 0)))

(declare-fun b!4038839 () Bool)

(assert (=> b!4038839 (= e!2506007 (+ 1 (size!32317 (t!334776 lt!1436870))))))

(assert (= (and d!1197321 c!697603) b!4038838))

(assert (= (and d!1197321 (not c!697603)) b!4038839))

(declare-fun m!4634089 () Bool)

(assert (=> b!4038839 m!4634089))

(assert (=> b!4038260 d!1197321))

(declare-fun d!1197323 () Bool)

(declare-fun lt!1437089 () Int)

(assert (=> d!1197323 (>= lt!1437089 0)))

(declare-fun e!2506008 () Int)

(assert (=> d!1197323 (= lt!1437089 e!2506008)))

(declare-fun c!697604 () Bool)

(assert (=> d!1197323 (= c!697604 ((_ is Nil!43233) prefix!494))))

(assert (=> d!1197323 (= (size!32317 prefix!494) lt!1437089)))

(declare-fun b!4038840 () Bool)

(assert (=> b!4038840 (= e!2506008 0)))

(declare-fun b!4038841 () Bool)

(assert (=> b!4038841 (= e!2506008 (+ 1 (size!32317 (t!334776 prefix!494))))))

(assert (= (and d!1197323 c!697604) b!4038840))

(assert (= (and d!1197323 (not c!697604)) b!4038841))

(declare-fun m!4634091 () Bool)

(assert (=> b!4038841 m!4634091))

(assert (=> b!4038260 d!1197323))

(declare-fun d!1197325 () Bool)

(assert (=> d!1197325 (= (list!16094 (charsOf!4736 token!484)) (list!16095 (c!697516 (charsOf!4736 token!484))))))

(declare-fun bs!590728 () Bool)

(assert (= bs!590728 d!1197325))

(declare-fun m!4634093 () Bool)

(assert (=> bs!590728 m!4634093))

(assert (=> b!4038260 d!1197325))

(declare-fun d!1197327 () Bool)

(declare-fun lt!1437090 () BalanceConc!25856)

(assert (=> d!1197327 (= (list!16094 lt!1437090) (originalCharacters!7520 token!484))))

(assert (=> d!1197327 (= lt!1437090 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484)))))

(assert (=> d!1197327 (= (charsOf!4736 token!484) lt!1437090)))

(declare-fun b_lambda!117879 () Bool)

(assert (=> (not b_lambda!117879) (not d!1197327)))

(assert (=> d!1197327 t!334780))

(declare-fun b_and!310411 () Bool)

(assert (= b_and!310403 (and (=> t!334780 result!294130) b_and!310411)))

(assert (=> d!1197327 t!334786))

(declare-fun b_and!310413 () Bool)

(assert (= b_and!310405 (and (=> t!334786 result!294140) b_and!310413)))

(declare-fun m!4634095 () Bool)

(assert (=> d!1197327 m!4634095))

(assert (=> d!1197327 m!4633447))

(assert (=> b!4038260 d!1197327))

(declare-fun b!4038844 () Bool)

(declare-fun res!1644858 () Bool)

(declare-fun e!2506010 () Bool)

(assert (=> b!4038844 (=> (not res!1644858) (not e!2506010))))

(declare-fun lt!1437091 () List!43357)

(assert (=> b!4038844 (= res!1644858 (= (size!32317 lt!1437091) (+ (size!32317 lt!1436870) (size!32317 lt!1436845))))))

(declare-fun b!4038842 () Bool)

(declare-fun e!2506009 () List!43357)

(assert (=> b!4038842 (= e!2506009 lt!1436845)))

(declare-fun b!4038843 () Bool)

(assert (=> b!4038843 (= e!2506009 (Cons!43233 (h!48653 lt!1436870) (++!11322 (t!334776 lt!1436870) lt!1436845)))))

(declare-fun d!1197329 () Bool)

(assert (=> d!1197329 e!2506010))

(declare-fun res!1644859 () Bool)

(assert (=> d!1197329 (=> (not res!1644859) (not e!2506010))))

(assert (=> d!1197329 (= res!1644859 (= (content!6573 lt!1437091) ((_ map or) (content!6573 lt!1436870) (content!6573 lt!1436845))))))

(assert (=> d!1197329 (= lt!1437091 e!2506009)))

(declare-fun c!697605 () Bool)

(assert (=> d!1197329 (= c!697605 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197329 (= (++!11322 lt!1436870 lt!1436845) lt!1437091)))

(declare-fun b!4038845 () Bool)

(assert (=> b!4038845 (= e!2506010 (or (not (= lt!1436845 Nil!43233)) (= lt!1437091 lt!1436870)))))

(assert (= (and d!1197329 c!697605) b!4038842))

(assert (= (and d!1197329 (not c!697605)) b!4038843))

(assert (= (and d!1197329 res!1644859) b!4038844))

(assert (= (and b!4038844 res!1644858) b!4038845))

(declare-fun m!4634097 () Bool)

(assert (=> b!4038844 m!4634097))

(assert (=> b!4038844 m!4633263))

(assert (=> b!4038844 m!4633403))

(declare-fun m!4634099 () Bool)

(assert (=> b!4038843 m!4634099))

(declare-fun m!4634101 () Bool)

(assert (=> d!1197329 m!4634101))

(assert (=> d!1197329 m!4633387))

(assert (=> d!1197329 m!4633409))

(assert (=> b!4038238 d!1197329))

(declare-fun d!1197331 () Bool)

(declare-fun lt!1437094 () List!43357)

(assert (=> d!1197331 (= (++!11322 lt!1436870 lt!1437094) prefix!494)))

(declare-fun e!2506013 () List!43357)

(assert (=> d!1197331 (= lt!1437094 e!2506013)))

(declare-fun c!697608 () Bool)

(assert (=> d!1197331 (= c!697608 ((_ is Cons!43233) lt!1436870))))

(assert (=> d!1197331 (>= (size!32317 prefix!494) (size!32317 lt!1436870))))

(assert (=> d!1197331 (= (getSuffix!2424 prefix!494 lt!1436870) lt!1437094)))

(declare-fun b!4038850 () Bool)

(assert (=> b!4038850 (= e!2506013 (getSuffix!2424 (tail!6283 prefix!494) (t!334776 lt!1436870)))))

(declare-fun b!4038851 () Bool)

(assert (=> b!4038851 (= e!2506013 prefix!494)))

(assert (= (and d!1197331 c!697608) b!4038850))

(assert (= (and d!1197331 (not c!697608)) b!4038851))

(declare-fun m!4634103 () Bool)

(assert (=> d!1197331 m!4634103))

(assert (=> d!1197331 m!4633265))

(assert (=> d!1197331 m!4633263))

(assert (=> b!4038850 m!4634035))

(assert (=> b!4038850 m!4634035))

(declare-fun m!4634105 () Bool)

(assert (=> b!4038850 m!4634105))

(assert (=> b!4038238 d!1197331))

(declare-fun b!4038852 () Bool)

(declare-fun e!2506016 () Bool)

(declare-fun e!2506015 () Bool)

(assert (=> b!4038852 (= e!2506016 e!2506015)))

(declare-fun res!1644863 () Bool)

(assert (=> b!4038852 (=> (not res!1644863) (not e!2506015))))

(assert (=> b!4038852 (= res!1644863 (not ((_ is Nil!43233) prefix!494)))))

(declare-fun b!4038854 () Bool)

(assert (=> b!4038854 (= e!2506015 (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 prefix!494)))))

(declare-fun b!4038853 () Bool)

(declare-fun res!1644862 () Bool)

(assert (=> b!4038853 (=> (not res!1644862) (not e!2506015))))

(assert (=> b!4038853 (= res!1644862 (= (head!8551 lt!1436870) (head!8551 prefix!494)))))

(declare-fun d!1197333 () Bool)

(declare-fun e!2506014 () Bool)

(assert (=> d!1197333 e!2506014))

(declare-fun res!1644861 () Bool)

(assert (=> d!1197333 (=> res!1644861 e!2506014)))

(declare-fun lt!1437095 () Bool)

(assert (=> d!1197333 (= res!1644861 (not lt!1437095))))

(assert (=> d!1197333 (= lt!1437095 e!2506016)))

(declare-fun res!1644860 () Bool)

(assert (=> d!1197333 (=> res!1644860 e!2506016)))

(assert (=> d!1197333 (= res!1644860 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197333 (= (isPrefix!4007 lt!1436870 prefix!494) lt!1437095)))

(declare-fun b!4038855 () Bool)

(assert (=> b!4038855 (= e!2506014 (>= (size!32317 prefix!494) (size!32317 lt!1436870)))))

(assert (= (and d!1197333 (not res!1644860)) b!4038852))

(assert (= (and b!4038852 res!1644863) b!4038853))

(assert (= (and b!4038853 res!1644862) b!4038854))

(assert (= (and d!1197333 (not res!1644861)) b!4038855))

(assert (=> b!4038854 m!4633543))

(assert (=> b!4038854 m!4634035))

(assert (=> b!4038854 m!4633543))

(assert (=> b!4038854 m!4634035))

(declare-fun m!4634107 () Bool)

(assert (=> b!4038854 m!4634107))

(assert (=> b!4038853 m!4633549))

(assert (=> b!4038853 m!4634039))

(assert (=> b!4038855 m!4633265))

(assert (=> b!4038855 m!4633263))

(assert (=> b!4038238 d!1197333))

(declare-fun d!1197335 () Bool)

(assert (=> d!1197335 (isPrefix!4007 lt!1436870 prefix!494)))

(declare-fun lt!1437098 () Unit!62437)

(declare-fun choose!24473 (List!43357 List!43357 List!43357) Unit!62437)

(assert (=> d!1197335 (= lt!1437098 (choose!24473 prefix!494 lt!1436870 lt!1436879))))

(assert (=> d!1197335 (isPrefix!4007 prefix!494 lt!1436879)))

(assert (=> d!1197335 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!571 prefix!494 lt!1436870 lt!1436879) lt!1437098)))

(declare-fun bs!590729 () Bool)

(assert (= bs!590729 d!1197335))

(assert (=> bs!590729 m!4633199))

(declare-fun m!4634109 () Bool)

(assert (=> bs!590729 m!4634109))

(assert (=> bs!590729 m!4633165))

(assert (=> b!4038238 d!1197335))

(declare-fun d!1197337 () Bool)

(assert (=> d!1197337 (= (isEmpty!25803 lt!1436852) ((_ is Nil!43233) lt!1436852))))

(assert (=> b!4038237 d!1197337))

(declare-fun b!4038858 () Bool)

(declare-fun res!1644864 () Bool)

(declare-fun e!2506018 () Bool)

(assert (=> b!4038858 (=> (not res!1644864) (not e!2506018))))

(declare-fun lt!1437099 () List!43357)

(assert (=> b!4038858 (= res!1644864 (= (size!32317 lt!1437099) (+ (size!32317 lt!1436870) (size!32317 lt!1436867))))))

(declare-fun b!4038856 () Bool)

(declare-fun e!2506017 () List!43357)

(assert (=> b!4038856 (= e!2506017 lt!1436867)))

(declare-fun b!4038857 () Bool)

(assert (=> b!4038857 (= e!2506017 (Cons!43233 (h!48653 lt!1436870) (++!11322 (t!334776 lt!1436870) lt!1436867)))))

(declare-fun d!1197339 () Bool)

(assert (=> d!1197339 e!2506018))

(declare-fun res!1644865 () Bool)

(assert (=> d!1197339 (=> (not res!1644865) (not e!2506018))))

(assert (=> d!1197339 (= res!1644865 (= (content!6573 lt!1437099) ((_ map or) (content!6573 lt!1436870) (content!6573 lt!1436867))))))

(assert (=> d!1197339 (= lt!1437099 e!2506017)))

(declare-fun c!697609 () Bool)

(assert (=> d!1197339 (= c!697609 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197339 (= (++!11322 lt!1436870 lt!1436867) lt!1437099)))

(declare-fun b!4038859 () Bool)

(assert (=> b!4038859 (= e!2506018 (or (not (= lt!1436867 Nil!43233)) (= lt!1437099 lt!1436870)))))

(assert (= (and d!1197339 c!697609) b!4038856))

(assert (= (and d!1197339 (not c!697609)) b!4038857))

(assert (= (and d!1197339 res!1644865) b!4038858))

(assert (= (and b!4038858 res!1644864) b!4038859))

(declare-fun m!4634111 () Bool)

(assert (=> b!4038858 m!4634111))

(assert (=> b!4038858 m!4633263))

(declare-fun m!4634113 () Bool)

(assert (=> b!4038858 m!4634113))

(declare-fun m!4634115 () Bool)

(assert (=> b!4038857 m!4634115))

(declare-fun m!4634117 () Bool)

(assert (=> d!1197339 m!4634117))

(assert (=> d!1197339 m!4633387))

(declare-fun m!4634119 () Bool)

(assert (=> d!1197339 m!4634119))

(assert (=> b!4038258 d!1197339))

(declare-fun d!1197341 () Bool)

(declare-fun lt!1437100 () List!43357)

(assert (=> d!1197341 (= (++!11322 lt!1436870 lt!1437100) lt!1436879)))

(declare-fun e!2506019 () List!43357)

(assert (=> d!1197341 (= lt!1437100 e!2506019)))

(declare-fun c!697610 () Bool)

(assert (=> d!1197341 (= c!697610 ((_ is Cons!43233) lt!1436870))))

(assert (=> d!1197341 (>= (size!32317 lt!1436879) (size!32317 lt!1436870))))

(assert (=> d!1197341 (= (getSuffix!2424 lt!1436879 lt!1436870) lt!1437100)))

(declare-fun b!4038860 () Bool)

(assert (=> b!4038860 (= e!2506019 (getSuffix!2424 (tail!6283 lt!1436879) (t!334776 lt!1436870)))))

(declare-fun b!4038861 () Bool)

(assert (=> b!4038861 (= e!2506019 lt!1436879)))

(assert (= (and d!1197341 c!697610) b!4038860))

(assert (= (and d!1197341 (not c!697610)) b!4038861))

(declare-fun m!4634121 () Bool)

(assert (=> d!1197341 m!4634121))

(assert (=> d!1197341 m!4633345))

(assert (=> d!1197341 m!4633263))

(assert (=> b!4038860 m!4634013))

(assert (=> b!4038860 m!4634013))

(declare-fun m!4634123 () Bool)

(assert (=> b!4038860 m!4634123))

(assert (=> b!4038258 d!1197341))

(declare-fun b!4038862 () Bool)

(declare-fun e!2506022 () Bool)

(declare-fun e!2506021 () Bool)

(assert (=> b!4038862 (= e!2506022 e!2506021)))

(declare-fun res!1644869 () Bool)

(assert (=> b!4038862 (=> (not res!1644869) (not e!2506021))))

(assert (=> b!4038862 (= res!1644869 (not ((_ is Nil!43233) lt!1436879)))))

(declare-fun b!4038864 () Bool)

(assert (=> b!4038864 (= e!2506021 (isPrefix!4007 (tail!6283 lt!1436879) (tail!6283 lt!1436879)))))

(declare-fun b!4038863 () Bool)

(declare-fun res!1644868 () Bool)

(assert (=> b!4038863 (=> (not res!1644868) (not e!2506021))))

(assert (=> b!4038863 (= res!1644868 (= (head!8551 lt!1436879) (head!8551 lt!1436879)))))

(declare-fun d!1197343 () Bool)

(declare-fun e!2506020 () Bool)

(assert (=> d!1197343 e!2506020))

(declare-fun res!1644867 () Bool)

(assert (=> d!1197343 (=> res!1644867 e!2506020)))

(declare-fun lt!1437101 () Bool)

(assert (=> d!1197343 (= res!1644867 (not lt!1437101))))

(assert (=> d!1197343 (= lt!1437101 e!2506022)))

(declare-fun res!1644866 () Bool)

(assert (=> d!1197343 (=> res!1644866 e!2506022)))

(assert (=> d!1197343 (= res!1644866 ((_ is Nil!43233) lt!1436879))))

(assert (=> d!1197343 (= (isPrefix!4007 lt!1436879 lt!1436879) lt!1437101)))

(declare-fun b!4038865 () Bool)

(assert (=> b!4038865 (= e!2506020 (>= (size!32317 lt!1436879) (size!32317 lt!1436879)))))

(assert (= (and d!1197343 (not res!1644866)) b!4038862))

(assert (= (and b!4038862 res!1644869) b!4038863))

(assert (= (and b!4038863 res!1644868) b!4038864))

(assert (= (and d!1197343 (not res!1644867)) b!4038865))

(assert (=> b!4038864 m!4634013))

(assert (=> b!4038864 m!4634013))

(assert (=> b!4038864 m!4634013))

(assert (=> b!4038864 m!4634013))

(declare-fun m!4634125 () Bool)

(assert (=> b!4038864 m!4634125))

(assert (=> b!4038863 m!4634017))

(assert (=> b!4038863 m!4634017))

(assert (=> b!4038865 m!4633345))

(assert (=> b!4038865 m!4633345))

(assert (=> b!4038258 d!1197343))

(declare-fun d!1197345 () Bool)

(assert (=> d!1197345 (isPrefix!4007 lt!1436879 lt!1436879)))

(declare-fun lt!1437104 () Unit!62437)

(declare-fun choose!24474 (List!43357 List!43357) Unit!62437)

(assert (=> d!1197345 (= lt!1437104 (choose!24474 lt!1436879 lt!1436879))))

(assert (=> d!1197345 (= (lemmaIsPrefixRefl!2574 lt!1436879 lt!1436879) lt!1437104)))

(declare-fun bs!590730 () Bool)

(assert (= bs!590730 d!1197345))

(assert (=> bs!590730 m!4633275))

(declare-fun m!4634127 () Bool)

(assert (=> bs!590730 m!4634127))

(assert (=> b!4038258 d!1197345))

(declare-fun d!1197347 () Bool)

(assert (=> d!1197347 (= (isEmpty!25802 rules!2999) ((_ is Nil!43235) rules!2999))))

(assert (=> b!4038236 d!1197347))

(declare-fun b!4038868 () Bool)

(declare-fun res!1644870 () Bool)

(declare-fun e!2506024 () Bool)

(assert (=> b!4038868 (=> (not res!1644870) (not e!2506024))))

(declare-fun lt!1437105 () List!43357)

(assert (=> b!4038868 (= res!1644870 (= (size!32317 lt!1437105) (+ (size!32317 lt!1436852) (size!32317 (_2!24291 (v!39731 lt!1436869))))))))

(declare-fun b!4038866 () Bool)

(declare-fun e!2506023 () List!43357)

(assert (=> b!4038866 (= e!2506023 (_2!24291 (v!39731 lt!1436869)))))

(declare-fun b!4038867 () Bool)

(assert (=> b!4038867 (= e!2506023 (Cons!43233 (h!48653 lt!1436852) (++!11322 (t!334776 lt!1436852) (_2!24291 (v!39731 lt!1436869)))))))

(declare-fun d!1197349 () Bool)

(assert (=> d!1197349 e!2506024))

(declare-fun res!1644871 () Bool)

(assert (=> d!1197349 (=> (not res!1644871) (not e!2506024))))

(assert (=> d!1197349 (= res!1644871 (= (content!6573 lt!1437105) ((_ map or) (content!6573 lt!1436852) (content!6573 (_2!24291 (v!39731 lt!1436869))))))))

(assert (=> d!1197349 (= lt!1437105 e!2506023)))

(declare-fun c!697611 () Bool)

(assert (=> d!1197349 (= c!697611 ((_ is Nil!43233) lt!1436852))))

(assert (=> d!1197349 (= (++!11322 lt!1436852 (_2!24291 (v!39731 lt!1436869))) lt!1437105)))

(declare-fun b!4038869 () Bool)

(assert (=> b!4038869 (= e!2506024 (or (not (= (_2!24291 (v!39731 lt!1436869)) Nil!43233)) (= lt!1437105 lt!1436852)))))

(assert (= (and d!1197349 c!697611) b!4038866))

(assert (= (and d!1197349 (not c!697611)) b!4038867))

(assert (= (and d!1197349 res!1644871) b!4038868))

(assert (= (and b!4038868 res!1644870) b!4038869))

(declare-fun m!4634129 () Bool)

(assert (=> b!4038868 m!4634129))

(assert (=> b!4038868 m!4633285))

(declare-fun m!4634131 () Bool)

(assert (=> b!4038868 m!4634131))

(declare-fun m!4634133 () Bool)

(assert (=> b!4038867 m!4634133))

(declare-fun m!4634135 () Bool)

(assert (=> d!1197349 m!4634135))

(declare-fun m!4634137 () Bool)

(assert (=> d!1197349 m!4634137))

(declare-fun m!4634139 () Bool)

(assert (=> d!1197349 m!4634139))

(assert (=> b!4038257 d!1197349))

(declare-fun b!4038874 () Bool)

(declare-fun e!2506027 () Bool)

(declare-fun tp!1226515 () Bool)

(assert (=> b!4038874 (= e!2506027 (and tp_is_empty!20621 tp!1226515))))

(assert (=> b!4038243 (= tp!1226450 e!2506027)))

(assert (= (and b!4038243 ((_ is Cons!43233) (originalCharacters!7520 token!484))) b!4038874))

(declare-fun b!4038886 () Bool)

(declare-fun e!2506030 () Bool)

(declare-fun tp!1226528 () Bool)

(declare-fun tp!1226526 () Bool)

(assert (=> b!4038886 (= e!2506030 (and tp!1226528 tp!1226526))))

(declare-fun b!4038888 () Bool)

(declare-fun tp!1226527 () Bool)

(declare-fun tp!1226529 () Bool)

(assert (=> b!4038888 (= e!2506030 (and tp!1226527 tp!1226529))))

(assert (=> b!4038264 (= tp!1226453 e!2506030)))

(declare-fun b!4038887 () Bool)

(declare-fun tp!1226530 () Bool)

(assert (=> b!4038887 (= e!2506030 tp!1226530)))

(declare-fun b!4038885 () Bool)

(assert (=> b!4038885 (= e!2506030 tp_is_empty!20621)))

(assert (= (and b!4038264 ((_ is ElementMatch!11825) (regex!6920 (rule!9990 token!484)))) b!4038885))

(assert (= (and b!4038264 ((_ is Concat!18976) (regex!6920 (rule!9990 token!484)))) b!4038886))

(assert (= (and b!4038264 ((_ is Star!11825) (regex!6920 (rule!9990 token!484)))) b!4038887))

(assert (= (and b!4038264 ((_ is Union!11825) (regex!6920 (rule!9990 token!484)))) b!4038888))

(declare-fun b!4038889 () Bool)

(declare-fun e!2506031 () Bool)

(declare-fun tp!1226531 () Bool)

(assert (=> b!4038889 (= e!2506031 (and tp_is_empty!20621 tp!1226531))))

(assert (=> b!4038252 (= tp!1226457 e!2506031)))

(assert (= (and b!4038252 ((_ is Cons!43233) (t!334776 suffix!1299))) b!4038889))

(declare-fun b!4038890 () Bool)

(declare-fun e!2506032 () Bool)

(declare-fun tp!1226532 () Bool)

(assert (=> b!4038890 (= e!2506032 (and tp_is_empty!20621 tp!1226532))))

(assert (=> b!4038251 (= tp!1226456 e!2506032)))

(assert (= (and b!4038251 ((_ is Cons!43233) (t!334776 prefix!494))) b!4038890))

(declare-fun b!4038892 () Bool)

(declare-fun e!2506033 () Bool)

(declare-fun tp!1226535 () Bool)

(declare-fun tp!1226533 () Bool)

(assert (=> b!4038892 (= e!2506033 (and tp!1226535 tp!1226533))))

(declare-fun b!4038894 () Bool)

(declare-fun tp!1226534 () Bool)

(declare-fun tp!1226536 () Bool)

(assert (=> b!4038894 (= e!2506033 (and tp!1226534 tp!1226536))))

(assert (=> b!4038240 (= tp!1226460 e!2506033)))

(declare-fun b!4038893 () Bool)

(declare-fun tp!1226537 () Bool)

(assert (=> b!4038893 (= e!2506033 tp!1226537)))

(declare-fun b!4038891 () Bool)

(assert (=> b!4038891 (= e!2506033 tp_is_empty!20621)))

(assert (= (and b!4038240 ((_ is ElementMatch!11825) (regex!6920 (h!48655 rules!2999)))) b!4038891))

(assert (= (and b!4038240 ((_ is Concat!18976) (regex!6920 (h!48655 rules!2999)))) b!4038892))

(assert (= (and b!4038240 ((_ is Star!11825) (regex!6920 (h!48655 rules!2999)))) b!4038893))

(assert (= (and b!4038240 ((_ is Union!11825) (regex!6920 (h!48655 rules!2999)))) b!4038894))

(declare-fun b!4038895 () Bool)

(declare-fun e!2506034 () Bool)

(declare-fun tp!1226538 () Bool)

(assert (=> b!4038895 (= e!2506034 (and tp_is_empty!20621 tp!1226538))))

(assert (=> b!4038250 (= tp!1226455 e!2506034)))

(assert (= (and b!4038250 ((_ is Cons!43233) (t!334776 newSuffix!27))) b!4038895))

(declare-fun b!4038906 () Bool)

(declare-fun b_free!112501 () Bool)

(declare-fun b_next!113205 () Bool)

(assert (=> b!4038906 (= b_free!112501 (not b_next!113205))))

(declare-fun tb!242707 () Bool)

(declare-fun t!334830 () Bool)

(assert (=> (and b!4038906 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))) t!334830) tb!242707))

(declare-fun result!294200 () Bool)

(assert (= result!294200 result!294150))

(assert (=> d!1197157 t!334830))

(declare-fun tb!242709 () Bool)

(declare-fun t!334832 () Bool)

(assert (=> (and b!4038906 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) t!334832) tb!242709))

(declare-fun result!294202 () Bool)

(assert (= result!294202 result!294156))

(assert (=> d!1197175 t!334832))

(assert (=> d!1197179 t!334832))

(declare-fun b_and!310415 () Bool)

(declare-fun tp!1226549 () Bool)

(assert (=> b!4038906 (= tp!1226549 (and (=> t!334830 result!294200) (=> t!334832 result!294202) b_and!310415))))

(declare-fun b_free!112503 () Bool)

(declare-fun b_next!113207 () Bool)

(assert (=> b!4038906 (= b_free!112503 (not b_next!113207))))

(declare-fun tb!242711 () Bool)

(declare-fun t!334834 () Bool)

(assert (=> (and b!4038906 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toChars!9315 (transformation!6920 (rule!9990 token!484)))) t!334834) tb!242711))

(declare-fun result!294204 () Bool)

(assert (= result!294204 result!294130))

(assert (=> b!4038363 t!334834))

(declare-fun t!334836 () Bool)

(declare-fun tb!242713 () Bool)

(assert (=> (and b!4038906 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) t!334836) tb!242713))

(declare-fun result!294206 () Bool)

(assert (= result!294206 result!294146))

(assert (=> d!1197125 t!334836))

(declare-fun t!334838 () Bool)

(declare-fun tb!242715 () Bool)

(assert (=> (and b!4038906 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) t!334838) tb!242715))

(declare-fun result!294208 () Bool)

(assert (= result!294208 result!294190))

(assert (=> d!1197179 t!334838))

(assert (=> d!1197327 t!334834))

(declare-fun tp!1226547 () Bool)

(declare-fun b_and!310417 () Bool)

(assert (=> b!4038906 (= tp!1226547 (and (=> t!334834 result!294204) (=> t!334836 result!294206) (=> t!334838 result!294208) b_and!310417))))

(declare-fun e!2506046 () Bool)

(assert (=> b!4038906 (= e!2506046 (and tp!1226549 tp!1226547))))

(declare-fun b!4038905 () Bool)

(declare-fun e!2506043 () Bool)

(declare-fun tp!1226550 () Bool)

(assert (=> b!4038905 (= e!2506043 (and tp!1226550 (inv!57768 (tag!7780 (h!48655 (t!334778 rules!2999)))) (inv!57771 (transformation!6920 (h!48655 (t!334778 rules!2999)))) e!2506046))))

(declare-fun b!4038904 () Bool)

(declare-fun e!2506044 () Bool)

(declare-fun tp!1226548 () Bool)

(assert (=> b!4038904 (= e!2506044 (and e!2506043 tp!1226548))))

(assert (=> b!4038239 (= tp!1226454 e!2506044)))

(assert (= b!4038905 b!4038906))

(assert (= b!4038904 b!4038905))

(assert (= (and b!4038239 ((_ is Cons!43235) (t!334778 rules!2999))) b!4038904))

(declare-fun m!4634141 () Bool)

(assert (=> b!4038905 m!4634141))

(declare-fun m!4634143 () Bool)

(assert (=> b!4038905 m!4634143))

(declare-fun b!4038907 () Bool)

(declare-fun e!2506047 () Bool)

(declare-fun tp!1226551 () Bool)

(assert (=> b!4038907 (= e!2506047 (and tp_is_empty!20621 tp!1226551))))

(assert (=> b!4038256 (= tp!1226458 e!2506047)))

(assert (= (and b!4038256 ((_ is Cons!43233) (t!334776 suffixResult!105))) b!4038907))

(declare-fun b!4038908 () Bool)

(declare-fun e!2506048 () Bool)

(declare-fun tp!1226552 () Bool)

(assert (=> b!4038908 (= e!2506048 (and tp_is_empty!20621 tp!1226552))))

(assert (=> b!4038266 (= tp!1226452 e!2506048)))

(assert (= (and b!4038266 ((_ is Cons!43233) (t!334776 newSuffixResult!27))) b!4038908))

(declare-fun b_lambda!117881 () Bool)

(assert (= b_lambda!117847 (or (and b!4038253 b_free!112491) (and b!4038259 b_free!112495 (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 token!484))))) (and b!4038906 b_free!112503 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toChars!9315 (transformation!6920 (rule!9990 token!484))))) b_lambda!117881)))

(declare-fun b_lambda!117883 () Bool)

(assert (= b_lambda!117855 (or (and b!4038253 b_free!112489) (and b!4038259 b_free!112493 (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 token!484))))) (and b!4038906 b_free!112501 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (rule!9990 token!484))))) b_lambda!117883)))

(declare-fun b_lambda!117885 () Bool)

(assert (= b_lambda!117879 (or (and b!4038253 b_free!112491) (and b!4038259 b_free!112495 (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 token!484))))) (and b!4038906 b_free!112503 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toChars!9315 (transformation!6920 (rule!9990 token!484))))) b_lambda!117885)))

(check-sat (not b!4038774) (not b!4038333) (not b_lambda!117875) (not b!4038860) (not tb!242677) (not d!1197151) (not b!4038506) tp_is_empty!20621 (not b!4038340) (not b!4038892) (not b!4038485) (not d!1197167) (not b!4038839) (not b!4038908) (not b_next!113197) (not b!4038424) (not d!1197085) b_and!310407 (not b_lambda!117885) (not d!1197311) (not b!4038904) (not d!1197155) (not b!4038469) (not b!4038854) b_and!310409 (not d!1197331) (not d!1197137) (not b!4038344) (not b!4038476) (not b!4038893) (not tb!242657) (not b!4038889) (not b!4038309) (not b!4038766) (not d!1197153) (not b!4038423) (not b!4038486) (not b!4038858) (not d!1197071) (not b!4038907) (not d!1197109) (not b!4038443) b_and!310415 (not b_lambda!117877) (not b_next!113207) (not d!1197083) (not b!4038311) (not d!1197297) (not b!4038484) (not b!4038864) (not b!4038855) (not b!4038409) (not d!1197305) (not d!1197327) (not b!4038778) (not b!4038482) (not bm!287253) b_and!310413 (not d!1197141) (not b!4038504) (not b!4038467) (not tb!242673) (not b!4038823) (not b!4038837) (not b!4038868) (not b_lambda!117853) (not b!4038824) (not b!4038791) (not b!4038895) (not b!4038430) (not d!1197145) (not d!1197349) (not d!1197159) (not b!4038828) (not d!1197077) (not d!1197087) (not d!1197179) (not b!4038886) (not b!4038841) (not b!4038887) (not b!4038905) (not b!4038863) (not d!1197325) (not b_next!113205) (not b!4038464) (not b!4038480) (not b!4038777) (not b!4038364) (not b_next!113195) (not d!1197335) (not b!4038389) (not b!4038782) (not b!4038337) (not d!1197339) (not b!4038478) (not b!4038307) (not b_lambda!117883) (not d!1197139) (not b!4038306) (not d!1197093) (not b!4038305) (not d!1197173) (not d!1197345) (not b!4038773) (not b!4038477) (not b!4038363) (not d!1197313) (not b!4038835) (not d!1197129) (not b!4038475) (not b!4038874) (not b!4038857) (not b!4038832) (not d!1197081) (not b!4038836) (not b_lambda!117857) (not b_lambda!117881) (not d!1197149) (not b!4038888) (not tb!242669) (not b!4038468) (not b!4038312) (not b!4038336) (not b!4038444) (not tb!242703) (not d!1197317) (not b!4038426) (not d!1197295) (not b!4038788) (not b!4038308) (not b!4038463) (not b!4038422) (not b!4038501) (not b!4038784) b_and!310411 (not b!4038345) (not b!4038894) (not d!1197319) (not b!4038770) (not d!1197161) (not b!4038785) (not b!4038498) (not b!4038341) (not b!4038371) (not b_next!113199) (not b!4038332) (not b!4038890) (not d!1197307) b_and!310417 (not b!4038865) (not b!4038768) (not b!4038829) (not b!4038442) (not d!1197123) (not d!1197107) (not b!4038772) (not b!4038313) (not b!4038776) (not b!4038440) (not b!4038427) (not b!4038466) (not b!4038437) (not b!4038500) (not d!1197289) (not b!4038843) (not d!1197135) (not b_next!113193) (not b!4038826) (not d!1197131) (not b!4038407) (not b!4038789) (not b!4038470) (not bm!287252) (not b!4038429) (not d!1197127) (not b!4038474) (not d!1197341) (not d!1197101) (not b!4038769) (not b!4038844) (not b!4038412) (not b!4038481) (not b!4038780) (not d!1197329) (not bm!287263) (not b!4038471) (not b!4038853) (not d!1197125) (not d!1197163) (not b!4038850) (not b!4038867))
(check-sat (not b_next!113197) b_and!310407 b_and!310409 b_and!310415 (not b_next!113207) b_and!310413 (not b_next!113205) (not b_next!113195) b_and!310411 (not b_next!113193) (not b_next!113199) b_and!310417)
(get-model)

(declare-fun d!1197403 () Bool)

(assert (=> d!1197403 (= (isEmpty!25805 lt!1436904) (not ((_ is Some!9333) lt!1436904)))))

(assert (=> d!1197071 d!1197403))

(assert (=> d!1197071 d!1197343))

(assert (=> d!1197071 d!1197345))

(declare-fun d!1197405 () Bool)

(assert (=> d!1197405 true))

(declare-fun lt!1437149 () Bool)

(declare-fun lambda!127351 () Int)

(declare-fun forall!8372 (List!43359 Int) Bool)

(assert (=> d!1197405 (= lt!1437149 (forall!8372 rules!2999 lambda!127351))))

(declare-fun e!2506091 () Bool)

(assert (=> d!1197405 (= lt!1437149 e!2506091)))

(declare-fun res!1644905 () Bool)

(assert (=> d!1197405 (=> res!1644905 e!2506091)))

(assert (=> d!1197405 (= res!1644905 (not ((_ is Cons!43235) rules!2999)))))

(assert (=> d!1197405 (= (rulesValidInductive!2522 thiss!21717 rules!2999) lt!1437149)))

(declare-fun b!4038984 () Bool)

(declare-fun e!2506092 () Bool)

(assert (=> b!4038984 (= e!2506091 e!2506092)))

(declare-fun res!1644906 () Bool)

(assert (=> b!4038984 (=> (not res!1644906) (not e!2506092))))

(assert (=> b!4038984 (= res!1644906 (ruleValid!2850 thiss!21717 (h!48655 rules!2999)))))

(declare-fun b!4038985 () Bool)

(assert (=> b!4038985 (= e!2506092 (rulesValidInductive!2522 thiss!21717 (t!334778 rules!2999)))))

(assert (= (and d!1197405 (not res!1644905)) b!4038984))

(assert (= (and b!4038984 res!1644906) b!4038985))

(declare-fun m!4634255 () Bool)

(assert (=> d!1197405 m!4634255))

(declare-fun m!4634257 () Bool)

(assert (=> b!4038984 m!4634257))

(declare-fun m!4634259 () Bool)

(assert (=> b!4038985 m!4634259))

(assert (=> d!1197071 d!1197405))

(declare-fun d!1197407 () Bool)

(declare-fun c!697636 () Bool)

(assert (=> d!1197407 (= c!697636 ((_ is Empty!13131) (c!697516 (charsOf!4736 token!484))))))

(declare-fun e!2506097 () List!43357)

(assert (=> d!1197407 (= (list!16095 (c!697516 (charsOf!4736 token!484))) e!2506097)))

(declare-fun b!4038996 () Bool)

(assert (=> b!4038996 (= e!2506097 Nil!43233)))

(declare-fun b!4038998 () Bool)

(declare-fun e!2506098 () List!43357)

(declare-fun list!16098 (IArray!26267) List!43357)

(assert (=> b!4038998 (= e!2506098 (list!16098 (xs!16437 (c!697516 (charsOf!4736 token!484)))))))

(declare-fun b!4038999 () Bool)

(assert (=> b!4038999 (= e!2506098 (++!11322 (list!16095 (left!32561 (c!697516 (charsOf!4736 token!484)))) (list!16095 (right!32891 (c!697516 (charsOf!4736 token!484))))))))

(declare-fun b!4038997 () Bool)

(assert (=> b!4038997 (= e!2506097 e!2506098)))

(declare-fun c!697637 () Bool)

(assert (=> b!4038997 (= c!697637 ((_ is Leaf!20298) (c!697516 (charsOf!4736 token!484))))))

(assert (= (and d!1197407 c!697636) b!4038996))

(assert (= (and d!1197407 (not c!697636)) b!4038997))

(assert (= (and b!4038997 c!697637) b!4038998))

(assert (= (and b!4038997 (not c!697637)) b!4038999))

(declare-fun m!4634261 () Bool)

(assert (=> b!4038998 m!4634261))

(declare-fun m!4634263 () Bool)

(assert (=> b!4038999 m!4634263))

(declare-fun m!4634265 () Bool)

(assert (=> b!4038999 m!4634265))

(assert (=> b!4038999 m!4634263))

(assert (=> b!4038999 m!4634265))

(declare-fun m!4634267 () Bool)

(assert (=> b!4038999 m!4634267))

(assert (=> d!1197325 d!1197407))

(declare-fun d!1197409 () Bool)

(declare-fun c!697638 () Bool)

(assert (=> d!1197409 (= c!697638 ((_ is Empty!13131) (c!697516 (charsOf!4736 (_1!24291 (v!39731 lt!1436869))))))))

(declare-fun e!2506099 () List!43357)

(assert (=> d!1197409 (= (list!16095 (c!697516 (charsOf!4736 (_1!24291 (v!39731 lt!1436869))))) e!2506099)))

(declare-fun b!4039000 () Bool)

(assert (=> b!4039000 (= e!2506099 Nil!43233)))

(declare-fun b!4039002 () Bool)

(declare-fun e!2506100 () List!43357)

(assert (=> b!4039002 (= e!2506100 (list!16098 (xs!16437 (c!697516 (charsOf!4736 (_1!24291 (v!39731 lt!1436869)))))))))

(declare-fun b!4039003 () Bool)

(assert (=> b!4039003 (= e!2506100 (++!11322 (list!16095 (left!32561 (c!697516 (charsOf!4736 (_1!24291 (v!39731 lt!1436869)))))) (list!16095 (right!32891 (c!697516 (charsOf!4736 (_1!24291 (v!39731 lt!1436869))))))))))

(declare-fun b!4039001 () Bool)

(assert (=> b!4039001 (= e!2506099 e!2506100)))

(declare-fun c!697639 () Bool)

(assert (=> b!4039001 (= c!697639 ((_ is Leaf!20298) (c!697516 (charsOf!4736 (_1!24291 (v!39731 lt!1436869))))))))

(assert (= (and d!1197409 c!697638) b!4039000))

(assert (= (and d!1197409 (not c!697638)) b!4039001))

(assert (= (and b!4039001 c!697639) b!4039002))

(assert (= (and b!4039001 (not c!697639)) b!4039003))

(declare-fun m!4634269 () Bool)

(assert (=> b!4039002 m!4634269))

(declare-fun m!4634271 () Bool)

(assert (=> b!4039003 m!4634271))

(declare-fun m!4634273 () Bool)

(assert (=> b!4039003 m!4634273))

(assert (=> b!4039003 m!4634271))

(assert (=> b!4039003 m!4634273))

(declare-fun m!4634275 () Bool)

(assert (=> b!4039003 m!4634275))

(assert (=> d!1197129 d!1197409))

(declare-fun d!1197411 () Bool)

(declare-fun lt!1437150 () Int)

(assert (=> d!1197411 (>= lt!1437150 0)))

(declare-fun e!2506101 () Int)

(assert (=> d!1197411 (= lt!1437150 e!2506101)))

(declare-fun c!697640 () Bool)

(assert (=> d!1197411 (= c!697640 ((_ is Nil!43233) lt!1436915))))

(assert (=> d!1197411 (= (size!32317 lt!1436915) lt!1437150)))

(declare-fun b!4039004 () Bool)

(assert (=> b!4039004 (= e!2506101 0)))

(declare-fun b!4039005 () Bool)

(assert (=> b!4039005 (= e!2506101 (+ 1 (size!32317 (t!334776 lt!1436915))))))

(assert (= (and d!1197411 c!697640) b!4039004))

(assert (= (and d!1197411 (not c!697640)) b!4039005))

(declare-fun m!4634277 () Bool)

(assert (=> b!4039005 m!4634277))

(assert (=> b!4038345 d!1197411))

(declare-fun d!1197413 () Bool)

(declare-fun lt!1437151 () Int)

(assert (=> d!1197413 (>= lt!1437151 0)))

(declare-fun e!2506102 () Int)

(assert (=> d!1197413 (= lt!1437151 e!2506102)))

(declare-fun c!697641 () Bool)

(assert (=> d!1197413 (= c!697641 ((_ is Nil!43233) lt!1436845))))

(assert (=> d!1197413 (= (size!32317 lt!1436845) lt!1437151)))

(declare-fun b!4039006 () Bool)

(assert (=> b!4039006 (= e!2506102 0)))

(declare-fun b!4039007 () Bool)

(assert (=> b!4039007 (= e!2506102 (+ 1 (size!32317 (t!334776 lt!1436845))))))

(assert (= (and d!1197413 c!697641) b!4039006))

(assert (= (and d!1197413 (not c!697641)) b!4039007))

(declare-fun m!4634279 () Bool)

(assert (=> b!4039007 m!4634279))

(assert (=> b!4038345 d!1197413))

(assert (=> b!4038345 d!1197301))

(declare-fun d!1197415 () Bool)

(assert (=> d!1197415 (= (get!14186 lt!1436904) (v!39731 lt!1436904))))

(assert (=> b!4038305 d!1197415))

(declare-fun d!1197417 () Bool)

(assert (=> d!1197417 (= (apply!10109 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436904))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904))))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436904))))))))

(declare-fun b_lambda!117887 () Bool)

(assert (=> (not b_lambda!117887) (not d!1197417)))

(declare-fun tb!242717 () Bool)

(declare-fun t!334844 () Bool)

(assert (=> (and b!4038253 (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))))) t!334844) tb!242717))

(declare-fun result!294210 () Bool)

(assert (=> tb!242717 (= result!294210 (inv!21 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904))))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436904)))))))))

(declare-fun m!4634281 () Bool)

(assert (=> tb!242717 m!4634281))

(assert (=> d!1197417 t!334844))

(declare-fun b_and!310419 () Bool)

(assert (= b_and!310407 (and (=> t!334844 result!294210) b_and!310419)))

(declare-fun tb!242719 () Bool)

(declare-fun t!334846 () Bool)

(assert (=> (and b!4038259 (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))))) t!334846) tb!242719))

(declare-fun result!294212 () Bool)

(assert (= result!294212 result!294210))

(assert (=> d!1197417 t!334846))

(declare-fun b_and!310421 () Bool)

(assert (= b_and!310409 (and (=> t!334846 result!294212) b_and!310421)))

(declare-fun tb!242721 () Bool)

(declare-fun t!334848 () Bool)

(assert (=> (and b!4038906 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))))) t!334848) tb!242721))

(declare-fun result!294214 () Bool)

(assert (= result!294214 result!294210))

(assert (=> d!1197417 t!334848))

(declare-fun b_and!310423 () Bool)

(assert (= b_and!310415 (and (=> t!334848 result!294214) b_and!310423)))

(assert (=> d!1197417 m!4633323))

(declare-fun m!4634283 () Bool)

(assert (=> d!1197417 m!4634283))

(assert (=> b!4038305 d!1197417))

(declare-fun d!1197419 () Bool)

(assert (=> d!1197419 (= (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436904)))) (fromListB!2342 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436904)))))))

(declare-fun bs!590735 () Bool)

(assert (= bs!590735 d!1197419))

(declare-fun m!4634285 () Bool)

(assert (=> bs!590735 m!4634285))

(assert (=> b!4038305 d!1197419))

(declare-fun d!1197421 () Bool)

(declare-fun lt!1437152 () Int)

(assert (=> d!1197421 (>= lt!1437152 0)))

(declare-fun e!2506104 () Int)

(assert (=> d!1197421 (= lt!1437152 e!2506104)))

(declare-fun c!697642 () Bool)

(assert (=> d!1197421 (= c!697642 ((_ is Nil!43233) lt!1436879))))

(assert (=> d!1197421 (= (size!32317 lt!1436879) lt!1437152)))

(declare-fun b!4039008 () Bool)

(assert (=> b!4039008 (= e!2506104 0)))

(declare-fun b!4039009 () Bool)

(assert (=> b!4039009 (= e!2506104 (+ 1 (size!32317 (t!334776 lt!1436879))))))

(assert (= (and d!1197421 c!697642) b!4039008))

(assert (= (and d!1197421 (not c!697642)) b!4039009))

(declare-fun m!4634287 () Bool)

(assert (=> b!4039009 m!4634287))

(assert (=> b!4038770 d!1197421))

(assert (=> b!4038770 d!1197321))

(declare-fun d!1197423 () Bool)

(declare-fun c!697645 () Bool)

(assert (=> d!1197423 (= c!697645 ((_ is Nil!43233) lt!1436953))))

(declare-fun e!2506107 () (InoxSet C!23836))

(assert (=> d!1197423 (= (content!6573 lt!1436953) e!2506107)))

(declare-fun b!4039014 () Bool)

(assert (=> b!4039014 (= e!2506107 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039015 () Bool)

(assert (=> b!4039015 (= e!2506107 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1436953) true) (content!6573 (t!334776 lt!1436953))))))

(assert (= (and d!1197423 c!697645) b!4039014))

(assert (= (and d!1197423 (not c!697645)) b!4039015))

(declare-fun m!4634289 () Bool)

(assert (=> b!4039015 m!4634289))

(declare-fun m!4634291 () Bool)

(assert (=> b!4039015 m!4634291))

(assert (=> d!1197135 d!1197423))

(declare-fun d!1197425 () Bool)

(declare-fun c!697646 () Bool)

(assert (=> d!1197425 (= c!697646 ((_ is Nil!43233) lt!1436870))))

(declare-fun e!2506108 () (InoxSet C!23836))

(assert (=> d!1197425 (= (content!6573 lt!1436870) e!2506108)))

(declare-fun b!4039016 () Bool)

(assert (=> b!4039016 (= e!2506108 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039017 () Bool)

(assert (=> b!4039017 (= e!2506108 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1436870) true) (content!6573 (t!334776 lt!1436870))))))

(assert (= (and d!1197425 c!697646) b!4039016))

(assert (= (and d!1197425 (not c!697646)) b!4039017))

(declare-fun m!4634293 () Bool)

(assert (=> b!4039017 m!4634293))

(declare-fun m!4634295 () Bool)

(assert (=> b!4039017 m!4634295))

(assert (=> d!1197135 d!1197425))

(declare-fun d!1197427 () Bool)

(declare-fun c!697647 () Bool)

(assert (=> d!1197427 (= c!697647 ((_ is Nil!43233) suffixResult!105))))

(declare-fun e!2506109 () (InoxSet C!23836))

(assert (=> d!1197427 (= (content!6573 suffixResult!105) e!2506109)))

(declare-fun b!4039018 () Bool)

(assert (=> b!4039018 (= e!2506109 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039019 () Bool)

(assert (=> b!4039019 (= e!2506109 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 suffixResult!105) true) (content!6573 (t!334776 suffixResult!105))))))

(assert (= (and d!1197427 c!697647) b!4039018))

(assert (= (and d!1197427 (not c!697647)) b!4039019))

(declare-fun m!4634297 () Bool)

(assert (=> b!4039019 m!4634297))

(declare-fun m!4634299 () Bool)

(assert (=> b!4039019 m!4634299))

(assert (=> d!1197135 d!1197427))

(assert (=> d!1197141 d!1197139))

(declare-fun d!1197429 () Bool)

(assert (=> d!1197429 (ruleValid!2850 thiss!21717 (rule!9990 token!484))))

(assert (=> d!1197429 true))

(declare-fun _$65!1495 () Unit!62437)

(assert (=> d!1197429 (= (choose!24464 thiss!21717 (rule!9990 token!484) rules!2999) _$65!1495)))

(declare-fun bs!590736 () Bool)

(assert (= bs!590736 d!1197429))

(assert (=> bs!590736 m!4633259))

(assert (=> d!1197141 d!1197429))

(declare-fun d!1197431 () Bool)

(declare-fun lt!1437153 () Bool)

(assert (=> d!1197431 (= lt!1437153 (select (content!6574 rules!2999) (rule!9990 token!484)))))

(declare-fun e!2506111 () Bool)

(assert (=> d!1197431 (= lt!1437153 e!2506111)))

(declare-fun res!1644908 () Bool)

(assert (=> d!1197431 (=> (not res!1644908) (not e!2506111))))

(assert (=> d!1197431 (= res!1644908 ((_ is Cons!43235) rules!2999))))

(assert (=> d!1197431 (= (contains!8588 rules!2999 (rule!9990 token!484)) lt!1437153)))

(declare-fun b!4039020 () Bool)

(declare-fun e!2506110 () Bool)

(assert (=> b!4039020 (= e!2506111 e!2506110)))

(declare-fun res!1644907 () Bool)

(assert (=> b!4039020 (=> res!1644907 e!2506110)))

(assert (=> b!4039020 (= res!1644907 (= (h!48655 rules!2999) (rule!9990 token!484)))))

(declare-fun b!4039021 () Bool)

(assert (=> b!4039021 (= e!2506110 (contains!8588 (t!334778 rules!2999) (rule!9990 token!484)))))

(assert (= (and d!1197431 res!1644908) b!4039020))

(assert (= (and b!4039020 (not res!1644907)) b!4039021))

(assert (=> d!1197431 m!4633463))

(declare-fun m!4634301 () Bool)

(assert (=> d!1197431 m!4634301))

(declare-fun m!4634303 () Bool)

(assert (=> b!4039021 m!4634303))

(assert (=> d!1197141 d!1197431))

(declare-fun d!1197433 () Bool)

(declare-fun c!697648 () Bool)

(assert (=> d!1197433 (= c!697648 ((_ is Nil!43233) lt!1437079))))

(declare-fun e!2506112 () (InoxSet C!23836))

(assert (=> d!1197433 (= (content!6573 lt!1437079) e!2506112)))

(declare-fun b!4039022 () Bool)

(assert (=> b!4039022 (= e!2506112 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039023 () Bool)

(assert (=> b!4039023 (= e!2506112 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1437079) true) (content!6573 (t!334776 lt!1437079))))))

(assert (= (and d!1197433 c!697648) b!4039022))

(assert (= (and d!1197433 (not c!697648)) b!4039023))

(declare-fun m!4634305 () Bool)

(assert (=> b!4039023 m!4634305))

(declare-fun m!4634307 () Bool)

(assert (=> b!4039023 m!4634307))

(assert (=> d!1197307 d!1197433))

(assert (=> d!1197307 d!1197425))

(declare-fun d!1197435 () Bool)

(declare-fun c!697649 () Bool)

(assert (=> d!1197435 (= c!697649 ((_ is Nil!43233) newSuffixResult!27))))

(declare-fun e!2506113 () (InoxSet C!23836))

(assert (=> d!1197435 (= (content!6573 newSuffixResult!27) e!2506113)))

(declare-fun b!4039024 () Bool)

(assert (=> b!4039024 (= e!2506113 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039025 () Bool)

(assert (=> b!4039025 (= e!2506113 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 newSuffixResult!27) true) (content!6573 (t!334776 newSuffixResult!27))))))

(assert (= (and d!1197435 c!697649) b!4039024))

(assert (= (and d!1197435 (not c!697649)) b!4039025))

(declare-fun m!4634309 () Bool)

(assert (=> b!4039025 m!4634309))

(declare-fun m!4634311 () Bool)

(assert (=> b!4039025 m!4634311))

(assert (=> d!1197307 d!1197435))

(declare-fun b!4039068 () Bool)

(declare-fun res!1644920 () Bool)

(declare-fun e!2506143 () Bool)

(assert (=> b!4039068 (=> (not res!1644920) (not e!2506143))))

(declare-fun call!287288 () Bool)

(assert (=> b!4039068 (= res!1644920 call!287288)))

(declare-fun e!2506144 () Bool)

(assert (=> b!4039068 (= e!2506144 e!2506143)))

(declare-fun b!4039069 () Bool)

(declare-fun res!1644923 () Bool)

(declare-fun e!2506146 () Bool)

(assert (=> b!4039069 (=> res!1644923 e!2506146)))

(assert (=> b!4039069 (= res!1644923 (not ((_ is Concat!18976) (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))))))

(assert (=> b!4039069 (= e!2506144 e!2506146)))

(declare-fun b!4039070 () Bool)

(declare-fun e!2506141 () Bool)

(declare-fun e!2506142 () Bool)

(assert (=> b!4039070 (= e!2506141 e!2506142)))

(declare-fun res!1644921 () Bool)

(assert (=> b!4039070 (= res!1644921 (not (nullable!4148 (reg!12154 (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))))))

(assert (=> b!4039070 (=> (not res!1644921) (not e!2506142))))

(declare-fun b!4039071 () Bool)

(declare-fun e!2506145 () Bool)

(assert (=> b!4039071 (= e!2506145 e!2506141)))

(declare-fun c!697667 () Bool)

(assert (=> b!4039071 (= c!697667 ((_ is Star!11825) (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))))

(declare-fun b!4039072 () Bool)

(declare-fun e!2506140 () Bool)

(assert (=> b!4039072 (= e!2506146 e!2506140)))

(declare-fun res!1644922 () Bool)

(assert (=> b!4039072 (=> (not res!1644922) (not e!2506140))))

(assert (=> b!4039072 (= res!1644922 call!287288)))

(declare-fun b!4039073 () Bool)

(assert (=> b!4039073 (= e!2506141 e!2506144)))

(declare-fun c!697666 () Bool)

(assert (=> b!4039073 (= c!697666 ((_ is Union!11825) (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))))

(declare-fun b!4039074 () Bool)

(declare-fun call!287285 () Bool)

(assert (=> b!4039074 (= e!2506142 call!287285)))

(declare-fun b!4039075 () Bool)

(declare-fun call!287289 () Bool)

(assert (=> b!4039075 (= e!2506143 call!287289)))

(declare-fun b!4039076 () Bool)

(assert (=> b!4039076 (= e!2506140 call!287289)))

(declare-fun bm!287281 () Bool)

(assert (=> bm!287281 (= call!287285 (validRegex!5348 (ite c!697667 (reg!12154 (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (ite c!697666 (regTwo!24163 (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (regTwo!24162 (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))))))))

(declare-fun bm!287282 () Bool)

(assert (=> bm!287282 (= call!287289 call!287285)))

(declare-fun d!1197437 () Bool)

(declare-fun res!1644919 () Bool)

(assert (=> d!1197437 (=> res!1644919 e!2506145)))

(assert (=> d!1197437 (= res!1644919 ((_ is ElementMatch!11825) (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))))

(assert (=> d!1197437 (= (validRegex!5348 (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) e!2506145)))

(declare-fun bm!287280 () Bool)

(assert (=> bm!287280 (= call!287288 (validRegex!5348 (ite c!697666 (regOne!24163 (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (regOne!24162 (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))))))

(assert (= (and d!1197437 (not res!1644919)) b!4039071))

(assert (= (and b!4039071 c!697667) b!4039070))

(assert (= (and b!4039071 (not c!697667)) b!4039073))

(assert (= (and b!4039070 res!1644921) b!4039074))

(assert (= (and b!4039073 c!697666) b!4039068))

(assert (= (and b!4039073 (not c!697666)) b!4039069))

(assert (= (and b!4039068 res!1644920) b!4039075))

(assert (= (and b!4039069 (not res!1644923)) b!4039072))

(assert (= (and b!4039072 res!1644922) b!4039076))

(assert (= (or b!4039075 b!4039076) bm!287282))

(assert (= (or b!4039068 b!4039072) bm!287280))

(assert (= (or b!4039074 bm!287282) bm!287281))

(declare-fun m!4634313 () Bool)

(assert (=> b!4039070 m!4634313))

(declare-fun m!4634315 () Bool)

(assert (=> bm!287281 m!4634315))

(declare-fun m!4634317 () Bool)

(assert (=> bm!287280 m!4634317))

(assert (=> d!1197123 d!1197437))

(declare-fun b!4039077 () Bool)

(declare-fun e!2506152 () Bool)

(declare-fun e!2506151 () Bool)

(assert (=> b!4039077 (= e!2506152 e!2506151)))

(declare-fun res!1644929 () Bool)

(assert (=> b!4039077 (=> res!1644929 e!2506151)))

(declare-fun call!287294 () Bool)

(assert (=> b!4039077 (= res!1644929 call!287294)))

(declare-fun b!4039078 () Bool)

(declare-fun res!1644928 () Bool)

(declare-fun e!2506150 () Bool)

(assert (=> b!4039078 (=> (not res!1644928) (not e!2506150))))

(assert (=> b!4039078 (= res!1644928 (not call!287294))))

(declare-fun b!4039079 () Bool)

(declare-fun e!2506147 () Bool)

(assert (=> b!4039079 (= e!2506147 e!2506152)))

(declare-fun res!1644927 () Bool)

(assert (=> b!4039079 (=> (not res!1644927) (not e!2506152))))

(declare-fun lt!1437210 () Bool)

(assert (=> b!4039079 (= res!1644927 (not lt!1437210))))

(declare-fun b!4039080 () Bool)

(assert (=> b!4039080 (= e!2506150 (= (head!8551 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))) (c!697517 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))))))))

(declare-fun d!1197439 () Bool)

(declare-fun e!2506148 () Bool)

(assert (=> d!1197439 e!2506148))

(declare-fun c!697670 () Bool)

(assert (=> d!1197439 (= c!697670 ((_ is EmptyExpr!11825) (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987))))))))

(declare-fun e!2506149 () Bool)

(assert (=> d!1197439 (= lt!1437210 e!2506149)))

(declare-fun c!697668 () Bool)

(assert (=> d!1197439 (= c!697668 (isEmpty!25803 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))))))

(assert (=> d!1197439 (validRegex!5348 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))))))

(assert (=> d!1197439 (= (matchR!5778 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))) lt!1437210)))

(declare-fun b!4039081 () Bool)

(assert (=> b!4039081 (= e!2506149 (nullable!4148 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987))))))))

(declare-fun b!4039082 () Bool)

(assert (=> b!4039082 (= e!2506148 (= lt!1437210 call!287294))))

(declare-fun bm!287289 () Bool)

(assert (=> bm!287289 (= call!287294 (isEmpty!25803 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))))))

(declare-fun b!4039083 () Bool)

(assert (=> b!4039083 (= e!2506149 (matchR!5778 (derivativeStep!3553 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))) (head!8551 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987)))))) (tail!6283 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987)))))))))

(declare-fun b!4039084 () Bool)

(declare-fun res!1644925 () Bool)

(assert (=> b!4039084 (=> res!1644925 e!2506147)))

(assert (=> b!4039084 (= res!1644925 e!2506150)))

(declare-fun res!1644930 () Bool)

(assert (=> b!4039084 (=> (not res!1644930) (not e!2506150))))

(assert (=> b!4039084 (= res!1644930 lt!1437210)))

(declare-fun b!4039085 () Bool)

(declare-fun res!1644931 () Bool)

(assert (=> b!4039085 (=> res!1644931 e!2506151)))

(assert (=> b!4039085 (= res!1644931 (not (isEmpty!25803 (tail!6283 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))))))))

(declare-fun b!4039086 () Bool)

(declare-fun res!1644924 () Bool)

(assert (=> b!4039086 (=> (not res!1644924) (not e!2506150))))

(assert (=> b!4039086 (= res!1644924 (isEmpty!25803 (tail!6283 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987)))))))))

(declare-fun b!4039087 () Bool)

(declare-fun e!2506153 () Bool)

(assert (=> b!4039087 (= e!2506148 e!2506153)))

(declare-fun c!697669 () Bool)

(assert (=> b!4039087 (= c!697669 ((_ is EmptyLang!11825) (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987))))))))

(declare-fun b!4039088 () Bool)

(declare-fun res!1644926 () Bool)

(assert (=> b!4039088 (=> res!1644926 e!2506147)))

(assert (=> b!4039088 (= res!1644926 (not ((_ is ElementMatch!11825) (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))))))))

(assert (=> b!4039088 (= e!2506153 e!2506147)))

(declare-fun b!4039089 () Bool)

(assert (=> b!4039089 (= e!2506151 (not (= (head!8551 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))) (c!697517 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987))))))))))

(declare-fun b!4039090 () Bool)

(assert (=> b!4039090 (= e!2506153 (not lt!1437210))))

(assert (= (and d!1197439 c!697668) b!4039081))

(assert (= (and d!1197439 (not c!697668)) b!4039083))

(assert (= (and d!1197439 c!697670) b!4039082))

(assert (= (and d!1197439 (not c!697670)) b!4039087))

(assert (= (and b!4039087 c!697669) b!4039090))

(assert (= (and b!4039087 (not c!697669)) b!4039088))

(assert (= (and b!4039088 (not res!1644926)) b!4039084))

(assert (= (and b!4039084 res!1644930) b!4039078))

(assert (= (and b!4039078 res!1644928) b!4039086))

(assert (= (and b!4039086 res!1644924) b!4039080))

(assert (= (and b!4039084 (not res!1644925)) b!4039079))

(assert (= (and b!4039079 res!1644927) b!4039077))

(assert (= (and b!4039077 (not res!1644929)) b!4039085))

(assert (= (and b!4039085 (not res!1644931)) b!4039089))

(assert (= (or b!4039082 b!4039077 b!4039078) bm!287289))

(declare-fun m!4634319 () Bool)

(assert (=> b!4039081 m!4634319))

(assert (=> b!4039086 m!4633629))

(declare-fun m!4634321 () Bool)

(assert (=> b!4039086 m!4634321))

(assert (=> b!4039086 m!4634321))

(declare-fun m!4634323 () Bool)

(assert (=> b!4039086 m!4634323))

(assert (=> b!4039083 m!4633629))

(declare-fun m!4634325 () Bool)

(assert (=> b!4039083 m!4634325))

(assert (=> b!4039083 m!4634325))

(declare-fun m!4634327 () Bool)

(assert (=> b!4039083 m!4634327))

(assert (=> b!4039083 m!4633629))

(assert (=> b!4039083 m!4634321))

(assert (=> b!4039083 m!4634327))

(assert (=> b!4039083 m!4634321))

(declare-fun m!4634329 () Bool)

(assert (=> b!4039083 m!4634329))

(assert (=> b!4039085 m!4633629))

(assert (=> b!4039085 m!4634321))

(assert (=> b!4039085 m!4634321))

(assert (=> b!4039085 m!4634323))

(assert (=> b!4039089 m!4633629))

(assert (=> b!4039089 m!4634325))

(assert (=> d!1197439 m!4633629))

(declare-fun m!4634331 () Bool)

(assert (=> d!1197439 m!4634331))

(declare-fun m!4634333 () Bool)

(assert (=> d!1197439 m!4634333))

(assert (=> bm!287289 m!4633629))

(assert (=> bm!287289 m!4634331))

(assert (=> b!4039080 m!4633629))

(assert (=> b!4039080 m!4634325))

(assert (=> b!4038482 d!1197439))

(declare-fun d!1197441 () Bool)

(assert (=> d!1197441 (= (get!14186 lt!1436987) (v!39731 lt!1436987))))

(assert (=> b!4038482 d!1197441))

(declare-fun d!1197443 () Bool)

(assert (=> d!1197443 (= (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987)))) (list!16095 (c!697516 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))))))

(declare-fun bs!590737 () Bool)

(assert (= bs!590737 d!1197443))

(declare-fun m!4634335 () Bool)

(assert (=> bs!590737 m!4634335))

(assert (=> b!4038482 d!1197443))

(declare-fun d!1197445 () Bool)

(declare-fun lt!1437211 () BalanceConc!25856)

(assert (=> d!1197445 (= (list!16094 lt!1437211) (originalCharacters!7520 (_1!24291 (get!14186 lt!1436987))))))

(assert (=> d!1197445 (= lt!1437211 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987))))) (value!217854 (_1!24291 (get!14186 lt!1436987)))))))

(assert (=> d!1197445 (= (charsOf!4736 (_1!24291 (get!14186 lt!1436987))) lt!1437211)))

(declare-fun b_lambda!117889 () Bool)

(assert (=> (not b_lambda!117889) (not d!1197445)))

(declare-fun tb!242723 () Bool)

(declare-fun t!334850 () Bool)

(assert (=> (and b!4038253 (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))))) t!334850) tb!242723))

(declare-fun b!4039095 () Bool)

(declare-fun e!2506158 () Bool)

(declare-fun tp!1226553 () Bool)

(assert (=> b!4039095 (= e!2506158 (and (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987))))) (value!217854 (_1!24291 (get!14186 lt!1436987)))))) tp!1226553))))

(declare-fun result!294216 () Bool)

(assert (=> tb!242723 (= result!294216 (and (inv!57776 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987))))) (value!217854 (_1!24291 (get!14186 lt!1436987))))) e!2506158))))

(assert (= tb!242723 b!4039095))

(declare-fun m!4634337 () Bool)

(assert (=> b!4039095 m!4634337))

(declare-fun m!4634339 () Bool)

(assert (=> tb!242723 m!4634339))

(assert (=> d!1197445 t!334850))

(declare-fun b_and!310425 () Bool)

(assert (= b_and!310411 (and (=> t!334850 result!294216) b_and!310425)))

(declare-fun t!334852 () Bool)

(declare-fun tb!242725 () Bool)

(assert (=> (and b!4038259 (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))))) t!334852) tb!242725))

(declare-fun result!294218 () Bool)

(assert (= result!294218 result!294216))

(assert (=> d!1197445 t!334852))

(declare-fun b_and!310427 () Bool)

(assert (= b_and!310413 (and (=> t!334852 result!294218) b_and!310427)))

(declare-fun t!334854 () Bool)

(declare-fun tb!242727 () Bool)

(assert (=> (and b!4038906 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))))) t!334854) tb!242727))

(declare-fun result!294220 () Bool)

(assert (= result!294220 result!294216))

(assert (=> d!1197445 t!334854))

(declare-fun b_and!310429 () Bool)

(assert (= b_and!310417 (and (=> t!334854 result!294220) b_and!310429)))

(declare-fun m!4634341 () Bool)

(assert (=> d!1197445 m!4634341))

(declare-fun m!4634343 () Bool)

(assert (=> d!1197445 m!4634343))

(assert (=> b!4038482 d!1197445))

(declare-fun d!1197447 () Bool)

(declare-fun c!697671 () Bool)

(assert (=> d!1197447 (= c!697671 ((_ is Nil!43233) lt!1437078))))

(declare-fun e!2506159 () (InoxSet C!23836))

(assert (=> d!1197447 (= (content!6573 lt!1437078) e!2506159)))

(declare-fun b!4039096 () Bool)

(assert (=> b!4039096 (= e!2506159 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039097 () Bool)

(assert (=> b!4039097 (= e!2506159 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1437078) true) (content!6573 (t!334776 lt!1437078))))))

(assert (= (and d!1197447 c!697671) b!4039096))

(assert (= (and d!1197447 (not c!697671)) b!4039097))

(declare-fun m!4634345 () Bool)

(assert (=> b!4039097 m!4634345))

(declare-fun m!4634347 () Bool)

(assert (=> b!4039097 m!4634347))

(assert (=> d!1197305 d!1197447))

(declare-fun d!1197449 () Bool)

(declare-fun c!697672 () Bool)

(assert (=> d!1197449 (= c!697672 ((_ is Nil!43233) prefix!494))))

(declare-fun e!2506160 () (InoxSet C!23836))

(assert (=> d!1197449 (= (content!6573 prefix!494) e!2506160)))

(declare-fun b!4039098 () Bool)

(assert (=> b!4039098 (= e!2506160 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039099 () Bool)

(assert (=> b!4039099 (= e!2506160 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 prefix!494) true) (content!6573 (t!334776 prefix!494))))))

(assert (= (and d!1197449 c!697672) b!4039098))

(assert (= (and d!1197449 (not c!697672)) b!4039099))

(declare-fun m!4634349 () Bool)

(assert (=> b!4039099 m!4634349))

(declare-fun m!4634351 () Bool)

(assert (=> b!4039099 m!4634351))

(assert (=> d!1197305 d!1197449))

(declare-fun d!1197451 () Bool)

(declare-fun c!697673 () Bool)

(assert (=> d!1197451 (= c!697673 ((_ is Nil!43233) newSuffix!27))))

(declare-fun e!2506161 () (InoxSet C!23836))

(assert (=> d!1197451 (= (content!6573 newSuffix!27) e!2506161)))

(declare-fun b!4039100 () Bool)

(assert (=> b!4039100 (= e!2506161 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039101 () Bool)

(assert (=> b!4039101 (= e!2506161 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 newSuffix!27) true) (content!6573 (t!334776 newSuffix!27))))))

(assert (= (and d!1197451 c!697673) b!4039100))

(assert (= (and d!1197451 (not c!697673)) b!4039101))

(declare-fun m!4634353 () Bool)

(assert (=> b!4039101 m!4634353))

(declare-fun m!4634355 () Bool)

(assert (=> b!4039101 m!4634355))

(assert (=> d!1197305 d!1197451))

(declare-fun d!1197453 () Bool)

(declare-fun lt!1437212 () Int)

(assert (=> d!1197453 (>= lt!1437212 0)))

(declare-fun e!2506162 () Int)

(assert (=> d!1197453 (= lt!1437212 e!2506162)))

(declare-fun c!697674 () Bool)

(assert (=> d!1197453 (= c!697674 ((_ is Nil!43233) (t!334776 prefix!494)))))

(assert (=> d!1197453 (= (size!32317 (t!334776 prefix!494)) lt!1437212)))

(declare-fun b!4039102 () Bool)

(assert (=> b!4039102 (= e!2506162 0)))

(declare-fun b!4039103 () Bool)

(assert (=> b!4039103 (= e!2506162 (+ 1 (size!32317 (t!334776 (t!334776 prefix!494)))))))

(assert (= (and d!1197453 c!697674) b!4039102))

(assert (= (and d!1197453 (not c!697674)) b!4039103))

(declare-fun m!4634357 () Bool)

(assert (=> b!4039103 m!4634357))

(assert (=> b!4038841 d!1197453))

(assert (=> d!1197345 d!1197343))

(declare-fun d!1197455 () Bool)

(assert (=> d!1197455 (isPrefix!4007 lt!1436879 lt!1436879)))

(assert (=> d!1197455 true))

(declare-fun _$45!1982 () Unit!62437)

(assert (=> d!1197455 (= (choose!24474 lt!1436879 lt!1436879) _$45!1982)))

(declare-fun bs!590738 () Bool)

(assert (= bs!590738 d!1197455))

(assert (=> bs!590738 m!4633275))

(assert (=> d!1197345 d!1197455))

(declare-fun d!1197457 () Bool)

(declare-fun lt!1437213 () Int)

(assert (=> d!1197457 (>= lt!1437213 0)))

(declare-fun e!2506163 () Int)

(assert (=> d!1197457 (= lt!1437213 e!2506163)))

(declare-fun c!697675 () Bool)

(assert (=> d!1197457 (= c!697675 ((_ is Nil!43233) lt!1436913))))

(assert (=> d!1197457 (= (size!32317 lt!1436913) lt!1437213)))

(declare-fun b!4039104 () Bool)

(assert (=> b!4039104 (= e!2506163 0)))

(declare-fun b!4039105 () Bool)

(assert (=> b!4039105 (= e!2506163 (+ 1 (size!32317 (t!334776 lt!1436913))))))

(assert (= (and d!1197457 c!697675) b!4039104))

(assert (= (and d!1197457 (not c!697675)) b!4039105))

(declare-fun m!4634359 () Bool)

(assert (=> b!4039105 m!4634359))

(assert (=> b!4038337 d!1197457))

(assert (=> b!4038337 d!1197321))

(declare-fun d!1197459 () Bool)

(declare-fun lt!1437214 () Int)

(assert (=> d!1197459 (>= lt!1437214 0)))

(declare-fun e!2506164 () Int)

(assert (=> d!1197459 (= lt!1437214 e!2506164)))

(declare-fun c!697676 () Bool)

(assert (=> d!1197459 (= c!697676 ((_ is Nil!43233) lt!1436858))))

(assert (=> d!1197459 (= (size!32317 lt!1436858) lt!1437214)))

(declare-fun b!4039106 () Bool)

(assert (=> b!4039106 (= e!2506164 0)))

(declare-fun b!4039107 () Bool)

(assert (=> b!4039107 (= e!2506164 (+ 1 (size!32317 (t!334776 lt!1436858))))))

(assert (= (and d!1197459 c!697676) b!4039106))

(assert (= (and d!1197459 (not c!697676)) b!4039107))

(declare-fun m!4634361 () Bool)

(assert (=> b!4039107 m!4634361))

(assert (=> b!4038337 d!1197459))

(declare-fun b!4039108 () Bool)

(declare-fun e!2506167 () Bool)

(declare-fun e!2506166 () Bool)

(assert (=> b!4039108 (= e!2506167 e!2506166)))

(declare-fun res!1644939 () Bool)

(assert (=> b!4039108 (=> (not res!1644939) (not e!2506166))))

(assert (=> b!4039108 (= res!1644939 (not ((_ is Nil!43233) (++!11322 prefix!494 suffix!1299))))))

(declare-fun b!4039110 () Bool)

(assert (=> b!4039110 (= e!2506166 (isPrefix!4007 (tail!6283 prefix!494) (tail!6283 (++!11322 prefix!494 suffix!1299))))))

(declare-fun b!4039109 () Bool)

(declare-fun res!1644938 () Bool)

(assert (=> b!4039109 (=> (not res!1644938) (not e!2506166))))

(assert (=> b!4039109 (= res!1644938 (= (head!8551 prefix!494) (head!8551 (++!11322 prefix!494 suffix!1299))))))

(declare-fun d!1197461 () Bool)

(declare-fun e!2506165 () Bool)

(assert (=> d!1197461 e!2506165))

(declare-fun res!1644937 () Bool)

(assert (=> d!1197461 (=> res!1644937 e!2506165)))

(declare-fun lt!1437215 () Bool)

(assert (=> d!1197461 (= res!1644937 (not lt!1437215))))

(assert (=> d!1197461 (= lt!1437215 e!2506167)))

(declare-fun res!1644936 () Bool)

(assert (=> d!1197461 (=> res!1644936 e!2506167)))

(assert (=> d!1197461 (= res!1644936 ((_ is Nil!43233) prefix!494))))

(assert (=> d!1197461 (= (isPrefix!4007 prefix!494 (++!11322 prefix!494 suffix!1299)) lt!1437215)))

(declare-fun b!4039111 () Bool)

(assert (=> b!4039111 (= e!2506165 (>= (size!32317 (++!11322 prefix!494 suffix!1299)) (size!32317 prefix!494)))))

(assert (= (and d!1197461 (not res!1644936)) b!4039108))

(assert (= (and b!4039108 res!1644939) b!4039109))

(assert (= (and b!4039109 res!1644938) b!4039110))

(assert (= (and d!1197461 (not res!1644937)) b!4039111))

(assert (=> b!4039110 m!4634035))

(assert (=> b!4039110 m!4633225))

(declare-fun m!4634363 () Bool)

(assert (=> b!4039110 m!4634363))

(assert (=> b!4039110 m!4634035))

(assert (=> b!4039110 m!4634363))

(declare-fun m!4634365 () Bool)

(assert (=> b!4039110 m!4634365))

(assert (=> b!4039109 m!4634039))

(assert (=> b!4039109 m!4633225))

(declare-fun m!4634367 () Bool)

(assert (=> b!4039109 m!4634367))

(assert (=> b!4039111 m!4633225))

(declare-fun m!4634369 () Bool)

(assert (=> b!4039111 m!4634369))

(assert (=> b!4039111 m!4633265))

(assert (=> d!1197297 d!1197461))

(assert (=> d!1197297 d!1197077))

(declare-fun d!1197463 () Bool)

(assert (=> d!1197463 (isPrefix!4007 prefix!494 (++!11322 prefix!494 suffix!1299))))

(assert (=> d!1197463 true))

(declare-fun _$46!1750 () Unit!62437)

(assert (=> d!1197463 (= (choose!24469 prefix!494 suffix!1299) _$46!1750)))

(declare-fun bs!590739 () Bool)

(assert (= bs!590739 d!1197463))

(assert (=> bs!590739 m!4633225))

(assert (=> bs!590739 m!4633225))

(assert (=> bs!590739 m!4634031))

(assert (=> d!1197297 d!1197463))

(declare-fun d!1197465 () Bool)

(declare-fun charsToBigInt!1 (List!43358) Int)

(assert (=> d!1197465 (= (inv!17 (value!217854 token!484)) (= (charsToBigInt!1 (text!50498 (value!217854 token!484))) (value!217846 (value!217854 token!484))))))

(declare-fun bs!590740 () Bool)

(assert (= bs!590740 d!1197465))

(declare-fun m!4634371 () Bool)

(assert (=> bs!590740 m!4634371))

(assert (=> b!4038500 d!1197465))

(declare-fun d!1197467 () Bool)

(declare-fun lt!1437216 () Int)

(assert (=> d!1197467 (>= lt!1437216 0)))

(declare-fun e!2506168 () Int)

(assert (=> d!1197467 (= lt!1437216 e!2506168)))

(declare-fun c!697677 () Bool)

(assert (=> d!1197467 (= c!697677 ((_ is Nil!43233) lt!1436861))))

(assert (=> d!1197467 (= (size!32317 lt!1436861) lt!1437216)))

(declare-fun b!4039112 () Bool)

(assert (=> b!4039112 (= e!2506168 0)))

(declare-fun b!4039113 () Bool)

(assert (=> b!4039113 (= e!2506168 (+ 1 (size!32317 (t!334776 lt!1436861))))))

(assert (= (and d!1197467 c!697677) b!4039112))

(assert (= (and d!1197467 (not c!697677)) b!4039113))

(declare-fun m!4634373 () Bool)

(assert (=> b!4039113 m!4634373))

(assert (=> b!4038837 d!1197467))

(assert (=> b!4038837 d!1197321))

(declare-fun d!1197469 () Bool)

(declare-fun lt!1437217 () Int)

(assert (=> d!1197469 (>= lt!1437217 0)))

(declare-fun e!2506169 () Int)

(assert (=> d!1197469 (= lt!1437217 e!2506169)))

(declare-fun c!697678 () Bool)

(assert (=> d!1197469 (= c!697678 ((_ is Nil!43233) (originalCharacters!7520 (_1!24291 (v!39731 lt!1436869)))))))

(assert (=> d!1197469 (= (size!32317 (originalCharacters!7520 (_1!24291 (v!39731 lt!1436869)))) lt!1437217)))

(declare-fun b!4039114 () Bool)

(assert (=> b!4039114 (= e!2506169 0)))

(declare-fun b!4039115 () Bool)

(assert (=> b!4039115 (= e!2506169 (+ 1 (size!32317 (t!334776 (originalCharacters!7520 (_1!24291 (v!39731 lt!1436869)))))))))

(assert (= (and d!1197469 c!697678) b!4039114))

(assert (= (and d!1197469 (not c!697678)) b!4039115))

(declare-fun m!4634375 () Bool)

(assert (=> b!4039115 m!4634375))

(assert (=> d!1197107 d!1197469))

(declare-fun b!4039118 () Bool)

(declare-fun res!1644940 () Bool)

(declare-fun e!2506171 () Bool)

(assert (=> b!4039118 (=> (not res!1644940) (not e!2506171))))

(declare-fun lt!1437218 () List!43357)

(assert (=> b!4039118 (= res!1644940 (= (size!32317 lt!1437218) (+ (size!32317 lt!1436870) (size!32317 lt!1437094))))))

(declare-fun b!4039116 () Bool)

(declare-fun e!2506170 () List!43357)

(assert (=> b!4039116 (= e!2506170 lt!1437094)))

(declare-fun b!4039117 () Bool)

(assert (=> b!4039117 (= e!2506170 (Cons!43233 (h!48653 lt!1436870) (++!11322 (t!334776 lt!1436870) lt!1437094)))))

(declare-fun d!1197471 () Bool)

(assert (=> d!1197471 e!2506171))

(declare-fun res!1644941 () Bool)

(assert (=> d!1197471 (=> (not res!1644941) (not e!2506171))))

(assert (=> d!1197471 (= res!1644941 (= (content!6573 lt!1437218) ((_ map or) (content!6573 lt!1436870) (content!6573 lt!1437094))))))

(assert (=> d!1197471 (= lt!1437218 e!2506170)))

(declare-fun c!697679 () Bool)

(assert (=> d!1197471 (= c!697679 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197471 (= (++!11322 lt!1436870 lt!1437094) lt!1437218)))

(declare-fun b!4039119 () Bool)

(assert (=> b!4039119 (= e!2506171 (or (not (= lt!1437094 Nil!43233)) (= lt!1437218 lt!1436870)))))

(assert (= (and d!1197471 c!697679) b!4039116))

(assert (= (and d!1197471 (not c!697679)) b!4039117))

(assert (= (and d!1197471 res!1644941) b!4039118))

(assert (= (and b!4039118 res!1644940) b!4039119))

(declare-fun m!4634377 () Bool)

(assert (=> b!4039118 m!4634377))

(assert (=> b!4039118 m!4633263))

(declare-fun m!4634379 () Bool)

(assert (=> b!4039118 m!4634379))

(declare-fun m!4634381 () Bool)

(assert (=> b!4039117 m!4634381))

(declare-fun m!4634383 () Bool)

(assert (=> d!1197471 m!4634383))

(assert (=> d!1197471 m!4633387))

(declare-fun m!4634385 () Bool)

(assert (=> d!1197471 m!4634385))

(assert (=> d!1197331 d!1197471))

(assert (=> d!1197331 d!1197323))

(assert (=> d!1197331 d!1197321))

(declare-fun d!1197473 () Bool)

(assert (=> d!1197473 (= (head!8551 lt!1436870) (h!48653 lt!1436870))))

(assert (=> b!4038442 d!1197473))

(declare-fun d!1197475 () Bool)

(assert (=> d!1197475 (= (head!8551 lt!1436854) (h!48653 lt!1436854))))

(assert (=> b!4038442 d!1197475))

(declare-fun b!4039136 () Bool)

(declare-fun res!1644944 () Bool)

(declare-fun e!2506181 () Bool)

(assert (=> b!4039136 (=> (not res!1644944) (not e!2506181))))

(declare-fun lt!1437247 () List!43357)

(assert (=> b!4039136 (= res!1644944 (= (size!32317 lt!1437247) (+ (size!32317 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))) (size!32317 (_2!24291 (get!14186 lt!1436987))))))))

(declare-fun b!4039134 () Bool)

(declare-fun e!2506180 () List!43357)

(assert (=> b!4039134 (= e!2506180 (_2!24291 (get!14186 lt!1436987)))))

(declare-fun b!4039135 () Bool)

(assert (=> b!4039135 (= e!2506180 (Cons!43233 (h!48653 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))) (++!11322 (t!334776 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))) (_2!24291 (get!14186 lt!1436987)))))))

(declare-fun d!1197477 () Bool)

(assert (=> d!1197477 e!2506181))

(declare-fun res!1644945 () Bool)

(assert (=> d!1197477 (=> (not res!1644945) (not e!2506181))))

(assert (=> d!1197477 (= res!1644945 (= (content!6573 lt!1437247) ((_ map or) (content!6573 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))) (content!6573 (_2!24291 (get!14186 lt!1436987))))))))

(assert (=> d!1197477 (= lt!1437247 e!2506180)))

(declare-fun c!697686 () Bool)

(assert (=> d!1197477 (= c!697686 ((_ is Nil!43233) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987))))))))

(assert (=> d!1197477 (= (++!11322 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987)))) (_2!24291 (get!14186 lt!1436987))) lt!1437247)))

(declare-fun b!4039137 () Bool)

(assert (=> b!4039137 (= e!2506181 (or (not (= (_2!24291 (get!14186 lt!1436987)) Nil!43233)) (= lt!1437247 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436987)))))))))

(assert (= (and d!1197477 c!697686) b!4039134))

(assert (= (and d!1197477 (not c!697686)) b!4039135))

(assert (= (and d!1197477 res!1644945) b!4039136))

(assert (= (and b!4039136 res!1644944) b!4039137))

(declare-fun m!4634387 () Bool)

(assert (=> b!4039136 m!4634387))

(assert (=> b!4039136 m!4633629))

(declare-fun m!4634389 () Bool)

(assert (=> b!4039136 m!4634389))

(assert (=> b!4039136 m!4633639))

(declare-fun m!4634391 () Bool)

(assert (=> b!4039135 m!4634391))

(declare-fun m!4634393 () Bool)

(assert (=> d!1197477 m!4634393))

(assert (=> d!1197477 m!4633629))

(declare-fun m!4634395 () Bool)

(assert (=> d!1197477 m!4634395))

(declare-fun m!4634397 () Bool)

(assert (=> d!1197477 m!4634397))

(assert (=> b!4038478 d!1197477))

(assert (=> b!4038478 d!1197443))

(assert (=> b!4038478 d!1197445))

(assert (=> b!4038478 d!1197441))

(declare-fun d!1197479 () Bool)

(declare-fun lt!1437248 () Int)

(assert (=> d!1197479 (>= lt!1437248 0)))

(declare-fun e!2506182 () Int)

(assert (=> d!1197479 (= lt!1437248 e!2506182)))

(declare-fun c!697687 () Bool)

(assert (=> d!1197479 (= c!697687 ((_ is Nil!43233) (t!334776 newSuffix!27)))))

(assert (=> d!1197479 (= (size!32317 (t!334776 newSuffix!27)) lt!1437248)))

(declare-fun b!4039138 () Bool)

(assert (=> b!4039138 (= e!2506182 0)))

(declare-fun b!4039139 () Bool)

(assert (=> b!4039139 (= e!2506182 (+ 1 (size!32317 (t!334776 (t!334776 newSuffix!27)))))))

(assert (= (and d!1197479 c!697687) b!4039138))

(assert (= (and d!1197479 (not c!697687)) b!4039139))

(declare-fun m!4634399 () Bool)

(assert (=> b!4039139 m!4634399))

(assert (=> b!4038782 d!1197479))

(assert (=> b!4038865 d!1197421))

(assert (=> d!1197335 d!1197333))

(declare-fun d!1197481 () Bool)

(assert (=> d!1197481 (isPrefix!4007 lt!1436870 prefix!494)))

(assert (=> d!1197481 true))

(declare-fun _$69!283 () Unit!62437)

(assert (=> d!1197481 (= (choose!24473 prefix!494 lt!1436870 lt!1436879) _$69!283)))

(declare-fun bs!590741 () Bool)

(assert (= bs!590741 d!1197481))

(assert (=> bs!590741 m!4633199))

(assert (=> d!1197335 d!1197481))

(assert (=> d!1197335 d!1197299))

(assert (=> d!1197109 d!1197123))

(declare-fun d!1197483 () Bool)

(assert (=> d!1197483 (ruleValid!2850 thiss!21717 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))

(assert (=> d!1197483 true))

(declare-fun _$65!1496 () Unit!62437)

(assert (=> d!1197483 (= (choose!24464 thiss!21717 (rule!9990 (_1!24291 (v!39731 lt!1436869))) rules!2999) _$65!1496)))

(declare-fun bs!590742 () Bool)

(assert (= bs!590742 d!1197483))

(assert (=> bs!590742 m!4633191))

(assert (=> d!1197109 d!1197483))

(assert (=> d!1197109 d!1197101))

(declare-fun d!1197485 () Bool)

(declare-fun e!2506185 () Bool)

(assert (=> d!1197485 e!2506185))

(declare-fun res!1644946 () Bool)

(assert (=> d!1197485 (=> res!1644946 e!2506185)))

(declare-fun lt!1437251 () Option!9334)

(assert (=> d!1197485 (= res!1644946 (isEmpty!25805 lt!1437251))))

(declare-fun e!2506183 () Option!9334)

(assert (=> d!1197485 (= lt!1437251 e!2506183)))

(declare-fun c!697688 () Bool)

(declare-fun lt!1437249 () tuple2!42318)

(assert (=> d!1197485 (= c!697688 (isEmpty!25803 (_1!24293 lt!1437249)))))

(assert (=> d!1197485 (= lt!1437249 (findLongestMatch!1298 (regex!6920 (h!48655 rules!2999)) lt!1436861))))

(assert (=> d!1197485 (ruleValid!2850 thiss!21717 (h!48655 rules!2999))))

(assert (=> d!1197485 (= (maxPrefixOneRule!2819 thiss!21717 (h!48655 rules!2999) lt!1436861) lt!1437251)))

(declare-fun b!4039140 () Bool)

(assert (=> b!4039140 (= e!2506183 (Some!9333 (tuple2!42315 (Token!12979 (apply!10109 (transformation!6920 (h!48655 rules!2999)) (seqFromList!5137 (_1!24293 lt!1437249))) (h!48655 rules!2999) (size!32320 (seqFromList!5137 (_1!24293 lt!1437249))) (_1!24293 lt!1437249)) (_2!24293 lt!1437249))))))

(declare-fun lt!1437252 () Unit!62437)

(assert (=> b!4039140 (= lt!1437252 (longestMatchIsAcceptedByMatchOrIsEmpty!1358 (regex!6920 (h!48655 rules!2999)) lt!1436861))))

(declare-fun res!1644949 () Bool)

(assert (=> b!4039140 (= res!1644949 (isEmpty!25803 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (h!48655 rules!2999)) Nil!43233 (size!32317 Nil!43233) lt!1436861 lt!1436861 (size!32317 lt!1436861)))))))

(declare-fun e!2506184 () Bool)

(assert (=> b!4039140 (=> res!1644949 e!2506184)))

(assert (=> b!4039140 e!2506184))

(declare-fun lt!1437253 () Unit!62437)

(assert (=> b!4039140 (= lt!1437253 lt!1437252)))

(declare-fun lt!1437250 () Unit!62437)

(assert (=> b!4039140 (= lt!1437250 (lemmaSemiInverse!1905 (transformation!6920 (h!48655 rules!2999)) (seqFromList!5137 (_1!24293 lt!1437249))))))

(declare-fun b!4039141 () Bool)

(declare-fun e!2506186 () Bool)

(assert (=> b!4039141 (= e!2506185 e!2506186)))

(declare-fun res!1644951 () Bool)

(assert (=> b!4039141 (=> (not res!1644951) (not e!2506186))))

(assert (=> b!4039141 (= res!1644951 (matchR!5778 (regex!6920 (h!48655 rules!2999)) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1437251))))))))

(declare-fun b!4039142 () Bool)

(assert (=> b!4039142 (= e!2506183 None!9333)))

(declare-fun b!4039143 () Bool)

(declare-fun res!1644947 () Bool)

(assert (=> b!4039143 (=> (not res!1644947) (not e!2506186))))

(assert (=> b!4039143 (= res!1644947 (< (size!32317 (_2!24291 (get!14186 lt!1437251))) (size!32317 lt!1436861)))))

(declare-fun b!4039144 () Bool)

(assert (=> b!4039144 (= e!2506186 (= (size!32318 (_1!24291 (get!14186 lt!1437251))) (size!32317 (originalCharacters!7520 (_1!24291 (get!14186 lt!1437251))))))))

(declare-fun b!4039145 () Bool)

(declare-fun res!1644950 () Bool)

(assert (=> b!4039145 (=> (not res!1644950) (not e!2506186))))

(assert (=> b!4039145 (= res!1644950 (= (value!217854 (_1!24291 (get!14186 lt!1437251))) (apply!10109 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1437251)))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1437251)))))))))

(declare-fun b!4039146 () Bool)

(declare-fun res!1644952 () Bool)

(assert (=> b!4039146 (=> (not res!1644952) (not e!2506186))))

(assert (=> b!4039146 (= res!1644952 (= (rule!9990 (_1!24291 (get!14186 lt!1437251))) (h!48655 rules!2999)))))

(declare-fun b!4039147 () Bool)

(declare-fun res!1644948 () Bool)

(assert (=> b!4039147 (=> (not res!1644948) (not e!2506186))))

(assert (=> b!4039147 (= res!1644948 (= (++!11322 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1437251)))) (_2!24291 (get!14186 lt!1437251))) lt!1436861))))

(declare-fun b!4039148 () Bool)

(assert (=> b!4039148 (= e!2506184 (matchR!5778 (regex!6920 (h!48655 rules!2999)) (_1!24293 (findLongestMatchInner!1385 (regex!6920 (h!48655 rules!2999)) Nil!43233 (size!32317 Nil!43233) lt!1436861 lt!1436861 (size!32317 lt!1436861)))))))

(assert (= (and d!1197485 c!697688) b!4039142))

(assert (= (and d!1197485 (not c!697688)) b!4039140))

(assert (= (and b!4039140 (not res!1644949)) b!4039148))

(assert (= (and d!1197485 (not res!1644946)) b!4039141))

(assert (= (and b!4039141 res!1644951) b!4039147))

(assert (= (and b!4039147 res!1644948) b!4039143))

(assert (= (and b!4039143 res!1644947) b!4039146))

(assert (= (and b!4039146 res!1644952) b!4039145))

(assert (= (and b!4039145 res!1644950) b!4039144))

(declare-fun m!4634453 () Bool)

(assert (=> b!4039144 m!4634453))

(declare-fun m!4634455 () Bool)

(assert (=> b!4039144 m!4634455))

(assert (=> b!4039146 m!4634453))

(declare-fun m!4634457 () Bool)

(assert (=> d!1197485 m!4634457))

(declare-fun m!4634459 () Bool)

(assert (=> d!1197485 m!4634459))

(declare-fun m!4634461 () Bool)

(assert (=> d!1197485 m!4634461))

(assert (=> d!1197485 m!4634257))

(assert (=> b!4039143 m!4634453))

(declare-fun m!4634463 () Bool)

(assert (=> b!4039143 m!4634463))

(assert (=> b!4039143 m!4633641))

(assert (=> b!4039141 m!4634453))

(declare-fun m!4634465 () Bool)

(assert (=> b!4039141 m!4634465))

(assert (=> b!4039141 m!4634465))

(declare-fun m!4634467 () Bool)

(assert (=> b!4039141 m!4634467))

(assert (=> b!4039141 m!4634467))

(declare-fun m!4634469 () Bool)

(assert (=> b!4039141 m!4634469))

(assert (=> b!4039147 m!4634453))

(assert (=> b!4039147 m!4634465))

(assert (=> b!4039147 m!4634465))

(assert (=> b!4039147 m!4634467))

(assert (=> b!4039147 m!4634467))

(declare-fun m!4634471 () Bool)

(assert (=> b!4039147 m!4634471))

(assert (=> b!4039145 m!4634453))

(declare-fun m!4634473 () Bool)

(assert (=> b!4039145 m!4634473))

(assert (=> b!4039145 m!4634473))

(declare-fun m!4634475 () Bool)

(assert (=> b!4039145 m!4634475))

(assert (=> b!4039148 m!4633583))

(assert (=> b!4039148 m!4633641))

(assert (=> b!4039148 m!4633583))

(assert (=> b!4039148 m!4633641))

(declare-fun m!4634477 () Bool)

(assert (=> b!4039148 m!4634477))

(declare-fun m!4634479 () Bool)

(assert (=> b!4039148 m!4634479))

(declare-fun m!4634481 () Bool)

(assert (=> b!4039140 m!4634481))

(declare-fun m!4634483 () Bool)

(assert (=> b!4039140 m!4634483))

(assert (=> b!4039140 m!4634481))

(declare-fun m!4634485 () Bool)

(assert (=> b!4039140 m!4634485))

(assert (=> b!4039140 m!4634481))

(declare-fun m!4634487 () Bool)

(assert (=> b!4039140 m!4634487))

(assert (=> b!4039140 m!4633641))

(declare-fun m!4634489 () Bool)

(assert (=> b!4039140 m!4634489))

(assert (=> b!4039140 m!4634481))

(declare-fun m!4634491 () Bool)

(assert (=> b!4039140 m!4634491))

(assert (=> b!4039140 m!4633583))

(assert (=> b!4039140 m!4633641))

(assert (=> b!4039140 m!4634477))

(assert (=> b!4039140 m!4633583))

(assert (=> bm!287253 d!1197485))

(declare-fun d!1197501 () Bool)

(assert (=> d!1197501 (= suffixResult!105 lt!1436867)))

(assert (=> d!1197501 true))

(declare-fun _$63!1104 () Unit!62437)

(assert (=> d!1197501 (= (choose!24468 lt!1436870 suffixResult!105 lt!1436870 lt!1436867 lt!1436879) _$63!1104)))

(assert (=> d!1197163 d!1197501))

(assert (=> d!1197163 d!1197291))

(assert (=> b!4038855 d!1197323))

(assert (=> b!4038855 d!1197321))

(declare-fun b!4039168 () Bool)

(declare-fun res!1644960 () Bool)

(declare-fun e!2506195 () Bool)

(assert (=> b!4039168 (=> (not res!1644960) (not e!2506195))))

(declare-fun lt!1437263 () List!43357)

(assert (=> b!4039168 (= res!1644960 (= (size!32317 lt!1437263) (+ (size!32317 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))) (size!32317 (_2!24291 (get!14186 lt!1436974))))))))

(declare-fun b!4039166 () Bool)

(declare-fun e!2506194 () List!43357)

(assert (=> b!4039166 (= e!2506194 (_2!24291 (get!14186 lt!1436974)))))

(declare-fun b!4039167 () Bool)

(assert (=> b!4039167 (= e!2506194 (Cons!43233 (h!48653 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))) (++!11322 (t!334776 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))) (_2!24291 (get!14186 lt!1436974)))))))

(declare-fun d!1197503 () Bool)

(assert (=> d!1197503 e!2506195))

(declare-fun res!1644961 () Bool)

(assert (=> d!1197503 (=> (not res!1644961) (not e!2506195))))

(assert (=> d!1197503 (= res!1644961 (= (content!6573 lt!1437263) ((_ map or) (content!6573 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))) (content!6573 (_2!24291 (get!14186 lt!1436974))))))))

(assert (=> d!1197503 (= lt!1437263 e!2506194)))

(declare-fun c!697694 () Bool)

(assert (=> d!1197503 (= c!697694 ((_ is Nil!43233) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))))))

(assert (=> d!1197503 (= (++!11322 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974)))) (_2!24291 (get!14186 lt!1436974))) lt!1437263)))

(declare-fun b!4039169 () Bool)

(assert (=> b!4039169 (= e!2506195 (or (not (= (_2!24291 (get!14186 lt!1436974)) Nil!43233)) (= lt!1437263 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974)))))))))

(assert (= (and d!1197503 c!697694) b!4039166))

(assert (= (and d!1197503 (not c!697694)) b!4039167))

(assert (= (and d!1197503 res!1644961) b!4039168))

(assert (= (and b!4039168 res!1644960) b!4039169))

(declare-fun m!4634511 () Bool)

(assert (=> b!4039168 m!4634511))

(assert (=> b!4039168 m!4633573))

(declare-fun m!4634513 () Bool)

(assert (=> b!4039168 m!4634513))

(assert (=> b!4039168 m!4633569))

(declare-fun m!4634517 () Bool)

(assert (=> b!4039167 m!4634517))

(declare-fun m!4634519 () Bool)

(assert (=> d!1197503 m!4634519))

(assert (=> d!1197503 m!4633573))

(declare-fun m!4634521 () Bool)

(assert (=> d!1197503 m!4634521))

(declare-fun m!4634523 () Bool)

(assert (=> d!1197503 m!4634523))

(assert (=> b!4038470 d!1197503))

(declare-fun d!1197505 () Bool)

(assert (=> d!1197505 (= (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974)))) (list!16095 (c!697516 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))))))

(declare-fun bs!590744 () Bool)

(assert (= bs!590744 d!1197505))

(declare-fun m!4634527 () Bool)

(assert (=> bs!590744 m!4634527))

(assert (=> b!4038470 d!1197505))

(declare-fun d!1197507 () Bool)

(declare-fun lt!1437264 () BalanceConc!25856)

(assert (=> d!1197507 (= (list!16094 lt!1437264) (originalCharacters!7520 (_1!24291 (get!14186 lt!1436974))))))

(assert (=> d!1197507 (= lt!1437264 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974))))) (value!217854 (_1!24291 (get!14186 lt!1436974)))))))

(assert (=> d!1197507 (= (charsOf!4736 (_1!24291 (get!14186 lt!1436974))) lt!1437264)))

(declare-fun b_lambda!117891 () Bool)

(assert (=> (not b_lambda!117891) (not d!1197507)))

(declare-fun t!334856 () Bool)

(declare-fun tb!242729 () Bool)

(assert (=> (and b!4038253 (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974)))))) t!334856) tb!242729))

(declare-fun b!4039170 () Bool)

(declare-fun e!2506196 () Bool)

(declare-fun tp!1226554 () Bool)

(assert (=> b!4039170 (= e!2506196 (and (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974))))) (value!217854 (_1!24291 (get!14186 lt!1436974)))))) tp!1226554))))

(declare-fun result!294222 () Bool)

(assert (=> tb!242729 (= result!294222 (and (inv!57776 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974))))) (value!217854 (_1!24291 (get!14186 lt!1436974))))) e!2506196))))

(assert (= tb!242729 b!4039170))

(declare-fun m!4634533 () Bool)

(assert (=> b!4039170 m!4634533))

(declare-fun m!4634535 () Bool)

(assert (=> tb!242729 m!4634535))

(assert (=> d!1197507 t!334856))

(declare-fun b_and!310431 () Bool)

(assert (= b_and!310425 (and (=> t!334856 result!294222) b_and!310431)))

(declare-fun t!334858 () Bool)

(declare-fun tb!242731 () Bool)

(assert (=> (and b!4038259 (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974)))))) t!334858) tb!242731))

(declare-fun result!294224 () Bool)

(assert (= result!294224 result!294222))

(assert (=> d!1197507 t!334858))

(declare-fun b_and!310433 () Bool)

(assert (= b_and!310427 (and (=> t!334858 result!294224) b_and!310433)))

(declare-fun tb!242733 () Bool)

(declare-fun t!334860 () Bool)

(assert (=> (and b!4038906 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974)))))) t!334860) tb!242733))

(declare-fun result!294226 () Bool)

(assert (= result!294226 result!294222))

(assert (=> d!1197507 t!334860))

(declare-fun b_and!310435 () Bool)

(assert (= b_and!310429 (and (=> t!334860 result!294226) b_and!310435)))

(declare-fun m!4634537 () Bool)

(assert (=> d!1197507 m!4634537))

(declare-fun m!4634539 () Bool)

(assert (=> d!1197507 m!4634539))

(assert (=> b!4038470 d!1197507))

(declare-fun d!1197511 () Bool)

(assert (=> d!1197511 (= (get!14186 lt!1436974) (v!39731 lt!1436974))))

(assert (=> b!4038470 d!1197511))

(declare-fun b!4039171 () Bool)

(declare-fun e!2506199 () Bool)

(declare-fun e!2506198 () Bool)

(assert (=> b!4039171 (= e!2506199 e!2506198)))

(declare-fun res!1644965 () Bool)

(assert (=> b!4039171 (=> (not res!1644965) (not e!2506198))))

(assert (=> b!4039171 (= res!1644965 (not ((_ is Nil!43233) (++!11322 lt!1436870 suffixResult!105))))))

(declare-fun b!4039173 () Bool)

(assert (=> b!4039173 (= e!2506198 (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 (++!11322 lt!1436870 suffixResult!105))))))

(declare-fun b!4039172 () Bool)

(declare-fun res!1644964 () Bool)

(assert (=> b!4039172 (=> (not res!1644964) (not e!2506198))))

(assert (=> b!4039172 (= res!1644964 (= (head!8551 lt!1436870) (head!8551 (++!11322 lt!1436870 suffixResult!105))))))

(declare-fun d!1197513 () Bool)

(declare-fun e!2506197 () Bool)

(assert (=> d!1197513 e!2506197))

(declare-fun res!1644963 () Bool)

(assert (=> d!1197513 (=> res!1644963 e!2506197)))

(declare-fun lt!1437265 () Bool)

(assert (=> d!1197513 (= res!1644963 (not lt!1437265))))

(assert (=> d!1197513 (= lt!1437265 e!2506199)))

(declare-fun res!1644962 () Bool)

(assert (=> d!1197513 (=> res!1644962 e!2506199)))

(assert (=> d!1197513 (= res!1644962 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197513 (= (isPrefix!4007 lt!1436870 (++!11322 lt!1436870 suffixResult!105)) lt!1437265)))

(declare-fun b!4039174 () Bool)

(assert (=> b!4039174 (= e!2506197 (>= (size!32317 (++!11322 lt!1436870 suffixResult!105)) (size!32317 lt!1436870)))))

(assert (= (and d!1197513 (not res!1644962)) b!4039171))

(assert (= (and b!4039171 res!1644965) b!4039172))

(assert (= (and b!4039172 res!1644964) b!4039173))

(assert (= (and d!1197513 (not res!1644963)) b!4039174))

(assert (=> b!4039173 m!4633543))

(assert (=> b!4039173 m!4633255))

(declare-fun m!4634541 () Bool)

(assert (=> b!4039173 m!4634541))

(assert (=> b!4039173 m!4633543))

(assert (=> b!4039173 m!4634541))

(declare-fun m!4634543 () Bool)

(assert (=> b!4039173 m!4634543))

(assert (=> b!4039172 m!4633549))

(assert (=> b!4039172 m!4633255))

(declare-fun m!4634545 () Bool)

(assert (=> b!4039172 m!4634545))

(assert (=> b!4039174 m!4633255))

(declare-fun m!4634547 () Bool)

(assert (=> b!4039174 m!4634547))

(assert (=> b!4039174 m!4633263))

(assert (=> d!1197295 d!1197513))

(assert (=> d!1197295 d!1197135))

(declare-fun d!1197515 () Bool)

(assert (=> d!1197515 (isPrefix!4007 lt!1436870 (++!11322 lt!1436870 suffixResult!105))))

(assert (=> d!1197515 true))

(declare-fun _$46!1751 () Unit!62437)

(assert (=> d!1197515 (= (choose!24469 lt!1436870 suffixResult!105) _$46!1751)))

(declare-fun bs!590745 () Bool)

(assert (= bs!590745 d!1197515))

(assert (=> bs!590745 m!4633255))

(assert (=> bs!590745 m!4633255))

(assert (=> bs!590745 m!4634027))

(assert (=> d!1197295 d!1197515))

(declare-fun b!4039175 () Bool)

(declare-fun e!2506205 () Bool)

(declare-fun e!2506204 () Bool)

(assert (=> b!4039175 (= e!2506205 e!2506204)))

(declare-fun res!1644971 () Bool)

(assert (=> b!4039175 (=> res!1644971 e!2506204)))

(declare-fun call!287306 () Bool)

(assert (=> b!4039175 (= res!1644971 call!287306)))

(declare-fun b!4039176 () Bool)

(declare-fun res!1644970 () Bool)

(declare-fun e!2506203 () Bool)

(assert (=> b!4039176 (=> (not res!1644970) (not e!2506203))))

(assert (=> b!4039176 (= res!1644970 (not call!287306))))

(declare-fun b!4039177 () Bool)

(declare-fun e!2506200 () Bool)

(assert (=> b!4039177 (= e!2506200 e!2506205)))

(declare-fun res!1644969 () Bool)

(assert (=> b!4039177 (=> (not res!1644969) (not e!2506205))))

(declare-fun lt!1437266 () Bool)

(assert (=> b!4039177 (= res!1644969 (not lt!1437266))))

(declare-fun b!4039178 () Bool)

(assert (=> b!4039178 (= e!2506203 (= (head!8551 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))) (c!697517 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))))))))

(declare-fun d!1197517 () Bool)

(declare-fun e!2506201 () Bool)

(assert (=> d!1197517 e!2506201))

(declare-fun c!697697 () Bool)

(assert (=> d!1197517 (= c!697697 ((_ is EmptyExpr!11825) (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904))))))))

(declare-fun e!2506202 () Bool)

(assert (=> d!1197517 (= lt!1437266 e!2506202)))

(declare-fun c!697695 () Bool)

(assert (=> d!1197517 (= c!697695 (isEmpty!25803 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))))))

(assert (=> d!1197517 (validRegex!5348 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))))))

(assert (=> d!1197517 (= (matchR!5778 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))) lt!1437266)))

(declare-fun b!4039179 () Bool)

(assert (=> b!4039179 (= e!2506202 (nullable!4148 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904))))))))

(declare-fun b!4039180 () Bool)

(assert (=> b!4039180 (= e!2506201 (= lt!1437266 call!287306))))

(declare-fun bm!287301 () Bool)

(assert (=> bm!287301 (= call!287306 (isEmpty!25803 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))))))

(declare-fun b!4039181 () Bool)

(assert (=> b!4039181 (= e!2506202 (matchR!5778 (derivativeStep!3553 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))) (head!8551 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904)))))) (tail!6283 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904)))))))))

(declare-fun b!4039182 () Bool)

(declare-fun res!1644967 () Bool)

(assert (=> b!4039182 (=> res!1644967 e!2506200)))

(assert (=> b!4039182 (= res!1644967 e!2506203)))

(declare-fun res!1644972 () Bool)

(assert (=> b!4039182 (=> (not res!1644972) (not e!2506203))))

(assert (=> b!4039182 (= res!1644972 lt!1437266)))

(declare-fun b!4039183 () Bool)

(declare-fun res!1644973 () Bool)

(assert (=> b!4039183 (=> res!1644973 e!2506204)))

(assert (=> b!4039183 (= res!1644973 (not (isEmpty!25803 (tail!6283 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))))))))

(declare-fun b!4039184 () Bool)

(declare-fun res!1644966 () Bool)

(assert (=> b!4039184 (=> (not res!1644966) (not e!2506203))))

(assert (=> b!4039184 (= res!1644966 (isEmpty!25803 (tail!6283 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904)))))))))

(declare-fun b!4039185 () Bool)

(declare-fun e!2506206 () Bool)

(assert (=> b!4039185 (= e!2506201 e!2506206)))

(declare-fun c!697696 () Bool)

(assert (=> b!4039185 (= c!697696 ((_ is EmptyLang!11825) (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904))))))))

(declare-fun b!4039186 () Bool)

(declare-fun res!1644968 () Bool)

(assert (=> b!4039186 (=> res!1644968 e!2506200)))

(assert (=> b!4039186 (= res!1644968 (not ((_ is ElementMatch!11825) (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))))))))

(assert (=> b!4039186 (= e!2506206 e!2506200)))

(declare-fun b!4039187 () Bool)

(assert (=> b!4039187 (= e!2506204 (not (= (head!8551 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))) (c!697517 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904))))))))))

(declare-fun b!4039188 () Bool)

(assert (=> b!4039188 (= e!2506206 (not lt!1437266))))

(assert (= (and d!1197517 c!697695) b!4039179))

(assert (= (and d!1197517 (not c!697695)) b!4039181))

(assert (= (and d!1197517 c!697697) b!4039180))

(assert (= (and d!1197517 (not c!697697)) b!4039185))

(assert (= (and b!4039185 c!697696) b!4039188))

(assert (= (and b!4039185 (not c!697696)) b!4039186))

(assert (= (and b!4039186 (not res!1644968)) b!4039182))

(assert (= (and b!4039182 res!1644972) b!4039176))

(assert (= (and b!4039176 res!1644970) b!4039184))

(assert (= (and b!4039184 res!1644966) b!4039178))

(assert (= (and b!4039182 (not res!1644967)) b!4039177))

(assert (= (and b!4039177 res!1644969) b!4039175))

(assert (= (and b!4039175 (not res!1644971)) b!4039183))

(assert (= (and b!4039183 (not res!1644973)) b!4039187))

(assert (= (or b!4039180 b!4039175 b!4039176) bm!287301))

(declare-fun m!4634549 () Bool)

(assert (=> b!4039179 m!4634549))

(assert (=> b!4039184 m!4633311))

(declare-fun m!4634551 () Bool)

(assert (=> b!4039184 m!4634551))

(assert (=> b!4039184 m!4634551))

(declare-fun m!4634553 () Bool)

(assert (=> b!4039184 m!4634553))

(assert (=> b!4039181 m!4633311))

(declare-fun m!4634555 () Bool)

(assert (=> b!4039181 m!4634555))

(assert (=> b!4039181 m!4634555))

(declare-fun m!4634557 () Bool)

(assert (=> b!4039181 m!4634557))

(assert (=> b!4039181 m!4633311))

(assert (=> b!4039181 m!4634551))

(assert (=> b!4039181 m!4634557))

(assert (=> b!4039181 m!4634551))

(declare-fun m!4634559 () Bool)

(assert (=> b!4039181 m!4634559))

(assert (=> b!4039183 m!4633311))

(assert (=> b!4039183 m!4634551))

(assert (=> b!4039183 m!4634551))

(assert (=> b!4039183 m!4634553))

(assert (=> b!4039187 m!4633311))

(assert (=> b!4039187 m!4634555))

(assert (=> d!1197517 m!4633311))

(declare-fun m!4634561 () Bool)

(assert (=> d!1197517 m!4634561))

(declare-fun m!4634563 () Bool)

(assert (=> d!1197517 m!4634563))

(assert (=> bm!287301 m!4633311))

(assert (=> bm!287301 m!4634561))

(assert (=> b!4039178 m!4633311))

(assert (=> b!4039178 m!4634555))

(assert (=> b!4038313 d!1197517))

(assert (=> b!4038313 d!1197415))

(declare-fun d!1197519 () Bool)

(assert (=> d!1197519 (= (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904)))) (list!16095 (c!697516 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))))))

(declare-fun bs!590746 () Bool)

(assert (= bs!590746 d!1197519))

(declare-fun m!4634565 () Bool)

(assert (=> bs!590746 m!4634565))

(assert (=> b!4038313 d!1197519))

(declare-fun d!1197521 () Bool)

(declare-fun lt!1437267 () BalanceConc!25856)

(assert (=> d!1197521 (= (list!16094 lt!1437267) (originalCharacters!7520 (_1!24291 (get!14186 lt!1436904))))))

(assert (=> d!1197521 (= lt!1437267 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904))))) (value!217854 (_1!24291 (get!14186 lt!1436904)))))))

(assert (=> d!1197521 (= (charsOf!4736 (_1!24291 (get!14186 lt!1436904))) lt!1437267)))

(declare-fun b_lambda!117893 () Bool)

(assert (=> (not b_lambda!117893) (not d!1197521)))

(declare-fun tb!242735 () Bool)

(declare-fun t!334862 () Bool)

(assert (=> (and b!4038253 (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))))) t!334862) tb!242735))

(declare-fun b!4039202 () Bool)

(declare-fun e!2506216 () Bool)

(declare-fun tp!1226555 () Bool)

(assert (=> b!4039202 (= e!2506216 (and (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904))))) (value!217854 (_1!24291 (get!14186 lt!1436904)))))) tp!1226555))))

(declare-fun result!294228 () Bool)

(assert (=> tb!242735 (= result!294228 (and (inv!57776 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904))))) (value!217854 (_1!24291 (get!14186 lt!1436904))))) e!2506216))))

(assert (= tb!242735 b!4039202))

(declare-fun m!4634573 () Bool)

(assert (=> b!4039202 m!4634573))

(declare-fun m!4634575 () Bool)

(assert (=> tb!242735 m!4634575))

(assert (=> d!1197521 t!334862))

(declare-fun b_and!310437 () Bool)

(assert (= b_and!310431 (and (=> t!334862 result!294228) b_and!310437)))

(declare-fun t!334864 () Bool)

(declare-fun tb!242737 () Bool)

(assert (=> (and b!4038259 (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))))) t!334864) tb!242737))

(declare-fun result!294230 () Bool)

(assert (= result!294230 result!294228))

(assert (=> d!1197521 t!334864))

(declare-fun b_and!310439 () Bool)

(assert (= b_and!310433 (and (=> t!334864 result!294230) b_and!310439)))

(declare-fun t!334866 () Bool)

(declare-fun tb!242739 () Bool)

(assert (=> (and b!4038906 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))))) t!334866) tb!242739))

(declare-fun result!294232 () Bool)

(assert (= result!294232 result!294228))

(assert (=> d!1197521 t!334866))

(declare-fun b_and!310441 () Bool)

(assert (= b_and!310435 (and (=> t!334866 result!294232) b_and!310441)))

(declare-fun m!4634583 () Bool)

(assert (=> d!1197521 m!4634583))

(declare-fun m!4634585 () Bool)

(assert (=> d!1197521 m!4634585))

(assert (=> b!4038313 d!1197521))

(declare-fun d!1197529 () Bool)

(declare-fun lt!1437270 () Int)

(assert (=> d!1197529 (>= lt!1437270 0)))

(declare-fun e!2506218 () Int)

(assert (=> d!1197529 (= lt!1437270 e!2506218)))

(declare-fun c!697702 () Bool)

(assert (=> d!1197529 (= c!697702 ((_ is Nil!43233) lt!1436953))))

(assert (=> d!1197529 (= (size!32317 lt!1436953) lt!1437270)))

(declare-fun b!4039205 () Bool)

(assert (=> b!4039205 (= e!2506218 0)))

(declare-fun b!4039206 () Bool)

(assert (=> b!4039206 (= e!2506218 (+ 1 (size!32317 (t!334776 lt!1436953))))))

(assert (= (and d!1197529 c!697702) b!4039205))

(assert (= (and d!1197529 (not c!697702)) b!4039206))

(declare-fun m!4634589 () Bool)

(assert (=> b!4039206 m!4634589))

(assert (=> b!4038427 d!1197529))

(assert (=> b!4038427 d!1197321))

(declare-fun d!1197531 () Bool)

(declare-fun lt!1437271 () Int)

(assert (=> d!1197531 (>= lt!1437271 0)))

(declare-fun e!2506219 () Int)

(assert (=> d!1197531 (= lt!1437271 e!2506219)))

(declare-fun c!697703 () Bool)

(assert (=> d!1197531 (= c!697703 ((_ is Nil!43233) suffixResult!105))))

(assert (=> d!1197531 (= (size!32317 suffixResult!105) lt!1437271)))

(declare-fun b!4039207 () Bool)

(assert (=> b!4039207 (= e!2506219 0)))

(declare-fun b!4039208 () Bool)

(assert (=> b!4039208 (= e!2506219 (+ 1 (size!32317 (t!334776 suffixResult!105))))))

(assert (= (and d!1197531 c!697703) b!4039207))

(assert (= (and d!1197531 (not c!697703)) b!4039208))

(declare-fun m!4634591 () Bool)

(assert (=> b!4039208 m!4634591))

(assert (=> b!4038427 d!1197531))

(declare-fun b!4039215 () Bool)

(declare-fun e!2506228 () Bool)

(declare-fun e!2506227 () Bool)

(assert (=> b!4039215 (= e!2506228 e!2506227)))

(declare-fun res!1644988 () Bool)

(assert (=> b!4039215 (=> res!1644988 e!2506227)))

(declare-fun call!287307 () Bool)

(assert (=> b!4039215 (= res!1644988 call!287307)))

(declare-fun b!4039216 () Bool)

(declare-fun res!1644987 () Bool)

(declare-fun e!2506226 () Bool)

(assert (=> b!4039216 (=> (not res!1644987) (not e!2506226))))

(assert (=> b!4039216 (= res!1644987 (not call!287307))))

(declare-fun b!4039217 () Bool)

(declare-fun e!2506223 () Bool)

(assert (=> b!4039217 (= e!2506223 e!2506228)))

(declare-fun res!1644986 () Bool)

(assert (=> b!4039217 (=> (not res!1644986) (not e!2506228))))

(declare-fun lt!1437274 () Bool)

(assert (=> b!4039217 (= res!1644986 (not lt!1437274))))

(declare-fun b!4039218 () Bool)

(assert (=> b!4039218 (= e!2506226 (= (head!8551 (tail!6283 lt!1436870)) (c!697517 (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 lt!1436870)))))))

(declare-fun d!1197537 () Bool)

(declare-fun e!2506224 () Bool)

(assert (=> d!1197537 e!2506224))

(declare-fun c!697708 () Bool)

(assert (=> d!1197537 (= c!697708 ((_ is EmptyExpr!11825) (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 lt!1436870))))))

(declare-fun e!2506225 () Bool)

(assert (=> d!1197537 (= lt!1437274 e!2506225)))

(declare-fun c!697706 () Bool)

(assert (=> d!1197537 (= c!697706 (isEmpty!25803 (tail!6283 lt!1436870)))))

(assert (=> d!1197537 (validRegex!5348 (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 lt!1436870)))))

(assert (=> d!1197537 (= (matchR!5778 (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 lt!1436870)) (tail!6283 lt!1436870)) lt!1437274)))

(declare-fun b!4039219 () Bool)

(assert (=> b!4039219 (= e!2506225 (nullable!4148 (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 lt!1436870))))))

(declare-fun b!4039220 () Bool)

(assert (=> b!4039220 (= e!2506224 (= lt!1437274 call!287307))))

(declare-fun bm!287302 () Bool)

(assert (=> bm!287302 (= call!287307 (isEmpty!25803 (tail!6283 lt!1436870)))))

(declare-fun b!4039221 () Bool)

(assert (=> b!4039221 (= e!2506225 (matchR!5778 (derivativeStep!3553 (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 lt!1436870)) (head!8551 (tail!6283 lt!1436870))) (tail!6283 (tail!6283 lt!1436870))))))

(declare-fun b!4039222 () Bool)

(declare-fun res!1644984 () Bool)

(assert (=> b!4039222 (=> res!1644984 e!2506223)))

(assert (=> b!4039222 (= res!1644984 e!2506226)))

(declare-fun res!1644989 () Bool)

(assert (=> b!4039222 (=> (not res!1644989) (not e!2506226))))

(assert (=> b!4039222 (= res!1644989 lt!1437274)))

(declare-fun b!4039223 () Bool)

(declare-fun res!1644990 () Bool)

(assert (=> b!4039223 (=> res!1644990 e!2506227)))

(assert (=> b!4039223 (= res!1644990 (not (isEmpty!25803 (tail!6283 (tail!6283 lt!1436870)))))))

(declare-fun b!4039224 () Bool)

(declare-fun res!1644983 () Bool)

(assert (=> b!4039224 (=> (not res!1644983) (not e!2506226))))

(assert (=> b!4039224 (= res!1644983 (isEmpty!25803 (tail!6283 (tail!6283 lt!1436870))))))

(declare-fun b!4039225 () Bool)

(declare-fun e!2506229 () Bool)

(assert (=> b!4039225 (= e!2506224 e!2506229)))

(declare-fun c!697707 () Bool)

(assert (=> b!4039225 (= c!697707 ((_ is EmptyLang!11825) (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 lt!1436870))))))

(declare-fun b!4039226 () Bool)

(declare-fun res!1644985 () Bool)

(assert (=> b!4039226 (=> res!1644985 e!2506223)))

(assert (=> b!4039226 (= res!1644985 (not ((_ is ElementMatch!11825) (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 lt!1436870)))))))

(assert (=> b!4039226 (= e!2506229 e!2506223)))

(declare-fun b!4039227 () Bool)

(assert (=> b!4039227 (= e!2506227 (not (= (head!8551 (tail!6283 lt!1436870)) (c!697517 (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 lt!1436870))))))))

(declare-fun b!4039228 () Bool)

(assert (=> b!4039228 (= e!2506229 (not lt!1437274))))

(assert (= (and d!1197537 c!697706) b!4039219))

(assert (= (and d!1197537 (not c!697706)) b!4039221))

(assert (= (and d!1197537 c!697708) b!4039220))

(assert (= (and d!1197537 (not c!697708)) b!4039225))

(assert (= (and b!4039225 c!697707) b!4039228))

(assert (= (and b!4039225 (not c!697707)) b!4039226))

(assert (= (and b!4039226 (not res!1644985)) b!4039222))

(assert (= (and b!4039222 res!1644989) b!4039216))

(assert (= (and b!4039216 res!1644987) b!4039224))

(assert (= (and b!4039224 res!1644983) b!4039218))

(assert (= (and b!4039222 (not res!1644984)) b!4039217))

(assert (= (and b!4039217 res!1644986) b!4039215))

(assert (= (and b!4039215 (not res!1644988)) b!4039223))

(assert (= (and b!4039223 (not res!1644990)) b!4039227))

(assert (= (or b!4039220 b!4039215 b!4039216) bm!287302))

(assert (=> b!4039219 m!4634069))

(declare-fun m!4634605 () Bool)

(assert (=> b!4039219 m!4634605))

(assert (=> b!4039224 m!4633543))

(declare-fun m!4634609 () Bool)

(assert (=> b!4039224 m!4634609))

(assert (=> b!4039224 m!4634609))

(declare-fun m!4634611 () Bool)

(assert (=> b!4039224 m!4634611))

(assert (=> b!4039221 m!4633543))

(declare-fun m!4634613 () Bool)

(assert (=> b!4039221 m!4634613))

(assert (=> b!4039221 m!4634069))

(assert (=> b!4039221 m!4634613))

(declare-fun m!4634615 () Bool)

(assert (=> b!4039221 m!4634615))

(assert (=> b!4039221 m!4633543))

(assert (=> b!4039221 m!4634609))

(assert (=> b!4039221 m!4634615))

(assert (=> b!4039221 m!4634609))

(declare-fun m!4634617 () Bool)

(assert (=> b!4039221 m!4634617))

(assert (=> b!4039223 m!4633543))

(assert (=> b!4039223 m!4634609))

(assert (=> b!4039223 m!4634609))

(assert (=> b!4039223 m!4634611))

(assert (=> b!4039227 m!4633543))

(assert (=> b!4039227 m!4634613))

(assert (=> d!1197537 m!4633543))

(assert (=> d!1197537 m!4634067))

(assert (=> d!1197537 m!4634069))

(declare-fun m!4634619 () Bool)

(assert (=> d!1197537 m!4634619))

(assert (=> bm!287302 m!4633543))

(assert (=> bm!287302 m!4634067))

(assert (=> b!4039218 m!4633543))

(assert (=> b!4039218 m!4634613))

(assert (=> b!4038826 d!1197537))

(declare-fun b!4039265 () Bool)

(declare-fun e!2506253 () Regex!11825)

(declare-fun e!2506251 () Regex!11825)

(assert (=> b!4039265 (= e!2506253 e!2506251)))

(declare-fun c!697727 () Bool)

(assert (=> b!4039265 (= c!697727 ((_ is Star!11825) (regex!6920 (rule!9990 token!484))))))

(declare-fun b!4039266 () Bool)

(declare-fun e!2506249 () Regex!11825)

(assert (=> b!4039266 (= e!2506249 (ite (= (head!8551 lt!1436870) (c!697517 (regex!6920 (rule!9990 token!484)))) EmptyExpr!11825 EmptyLang!11825))))

(declare-fun b!4039267 () Bool)

(declare-fun call!287318 () Regex!11825)

(assert (=> b!4039267 (= e!2506251 (Concat!18976 call!287318 (regex!6920 (rule!9990 token!484))))))

(declare-fun b!4039269 () Bool)

(declare-fun e!2506250 () Regex!11825)

(declare-fun call!287316 () Regex!11825)

(assert (=> b!4039269 (= e!2506250 (Union!11825 (Concat!18976 call!287316 (regTwo!24162 (regex!6920 (rule!9990 token!484)))) EmptyLang!11825))))

(declare-fun c!697726 () Bool)

(declare-fun call!287319 () Regex!11825)

(declare-fun bm!287311 () Bool)

(assert (=> bm!287311 (= call!287319 (derivativeStep!3553 (ite c!697726 (regOne!24163 (regex!6920 (rule!9990 token!484))) (regTwo!24162 (regex!6920 (rule!9990 token!484)))) (head!8551 lt!1436870)))))

(declare-fun b!4039270 () Bool)

(declare-fun call!287317 () Regex!11825)

(assert (=> b!4039270 (= e!2506253 (Union!11825 call!287319 call!287317))))

(declare-fun bm!287312 () Bool)

(assert (=> bm!287312 (= call!287317 (derivativeStep!3553 (ite c!697726 (regTwo!24163 (regex!6920 (rule!9990 token!484))) (ite c!697727 (reg!12154 (regex!6920 (rule!9990 token!484))) (regOne!24162 (regex!6920 (rule!9990 token!484))))) (head!8551 lt!1436870)))))

(declare-fun bm!287313 () Bool)

(assert (=> bm!287313 (= call!287318 call!287317)))

(declare-fun b!4039268 () Bool)

(assert (=> b!4039268 (= e!2506250 (Union!11825 (Concat!18976 call!287316 (regTwo!24162 (regex!6920 (rule!9990 token!484)))) call!287319))))

(declare-fun d!1197543 () Bool)

(declare-fun lt!1437281 () Regex!11825)

(assert (=> d!1197543 (validRegex!5348 lt!1437281)))

(declare-fun e!2506252 () Regex!11825)

(assert (=> d!1197543 (= lt!1437281 e!2506252)))

(declare-fun c!697724 () Bool)

(assert (=> d!1197543 (= c!697724 (or ((_ is EmptyExpr!11825) (regex!6920 (rule!9990 token!484))) ((_ is EmptyLang!11825) (regex!6920 (rule!9990 token!484)))))))

(assert (=> d!1197543 (validRegex!5348 (regex!6920 (rule!9990 token!484)))))

(assert (=> d!1197543 (= (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 lt!1436870)) lt!1437281)))

(declare-fun bm!287314 () Bool)

(assert (=> bm!287314 (= call!287316 call!287318)))

(declare-fun b!4039271 () Bool)

(assert (=> b!4039271 (= e!2506252 e!2506249)))

(declare-fun c!697723 () Bool)

(assert (=> b!4039271 (= c!697723 ((_ is ElementMatch!11825) (regex!6920 (rule!9990 token!484))))))

(declare-fun b!4039272 () Bool)

(declare-fun c!697725 () Bool)

(assert (=> b!4039272 (= c!697725 (nullable!4148 (regOne!24162 (regex!6920 (rule!9990 token!484)))))))

(assert (=> b!4039272 (= e!2506251 e!2506250)))

(declare-fun b!4039273 () Bool)

(assert (=> b!4039273 (= c!697726 ((_ is Union!11825) (regex!6920 (rule!9990 token!484))))))

(assert (=> b!4039273 (= e!2506249 e!2506253)))

(declare-fun b!4039274 () Bool)

(assert (=> b!4039274 (= e!2506252 EmptyLang!11825)))

(assert (= (and d!1197543 c!697724) b!4039274))

(assert (= (and d!1197543 (not c!697724)) b!4039271))

(assert (= (and b!4039271 c!697723) b!4039266))

(assert (= (and b!4039271 (not c!697723)) b!4039273))

(assert (= (and b!4039273 c!697726) b!4039270))

(assert (= (and b!4039273 (not c!697726)) b!4039265))

(assert (= (and b!4039265 c!697727) b!4039267))

(assert (= (and b!4039265 (not c!697727)) b!4039272))

(assert (= (and b!4039272 c!697725) b!4039268))

(assert (= (and b!4039272 (not c!697725)) b!4039269))

(assert (= (or b!4039268 b!4039269) bm!287314))

(assert (= (or b!4039267 bm!287314) bm!287313))

(assert (= (or b!4039270 b!4039268) bm!287311))

(assert (= (or b!4039270 bm!287313) bm!287312))

(assert (=> bm!287311 m!4633549))

(declare-fun m!4634651 () Bool)

(assert (=> bm!287311 m!4634651))

(assert (=> bm!287312 m!4633549))

(declare-fun m!4634653 () Bool)

(assert (=> bm!287312 m!4634653))

(declare-fun m!4634655 () Bool)

(assert (=> d!1197543 m!4634655))

(assert (=> d!1197543 m!4633529))

(declare-fun m!4634657 () Bool)

(assert (=> b!4039272 m!4634657))

(assert (=> b!4038826 d!1197543))

(assert (=> b!4038826 d!1197473))

(declare-fun d!1197563 () Bool)

(assert (=> d!1197563 (= (tail!6283 lt!1436870) (t!334776 lt!1436870))))

(assert (=> b!4038826 d!1197563))

(assert (=> b!4038424 d!1197301))

(assert (=> b!4038424 d!1197303))

(declare-fun b!4039287 () Bool)

(declare-fun e!2506262 () Bool)

(declare-fun e!2506261 () Bool)

(assert (=> b!4039287 (= e!2506262 e!2506261)))

(declare-fun c!697733 () Bool)

(assert (=> b!4039287 (= c!697733 ((_ is IntegerValue!21451) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))))

(declare-fun b!4039288 () Bool)

(assert (=> b!4039288 (= e!2506262 (inv!16 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))))

(declare-fun b!4039289 () Bool)

(declare-fun res!1645001 () Bool)

(declare-fun e!2506263 () Bool)

(assert (=> b!4039289 (=> res!1645001 e!2506263)))

(assert (=> b!4039289 (= res!1645001 (not ((_ is IntegerValue!21452) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))))))

(assert (=> b!4039289 (= e!2506261 e!2506263)))

(declare-fun d!1197567 () Bool)

(declare-fun c!697732 () Bool)

(assert (=> d!1197567 (= c!697732 ((_ is IntegerValue!21450) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))))

(assert (=> d!1197567 (= (inv!21 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)) e!2506262)))

(declare-fun b!4039290 () Bool)

(assert (=> b!4039290 (= e!2506261 (inv!17 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))))

(declare-fun b!4039291 () Bool)

(assert (=> b!4039291 (= e!2506263 (inv!15 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))))

(assert (= (and d!1197567 c!697732) b!4039288))

(assert (= (and d!1197567 (not c!697732)) b!4039287))

(assert (= (and b!4039287 c!697733) b!4039290))

(assert (= (and b!4039287 (not c!697733)) b!4039289))

(assert (= (and b!4039289 (not res!1645001)) b!4039291))

(declare-fun m!4634673 () Bool)

(assert (=> b!4039288 m!4634673))

(declare-fun m!4634677 () Bool)

(assert (=> b!4039290 m!4634677))

(declare-fun m!4634681 () Bool)

(assert (=> b!4039291 m!4634681))

(assert (=> tb!242677 d!1197567))

(declare-fun d!1197571 () Bool)

(declare-fun lt!1437285 () Int)

(assert (=> d!1197571 (>= lt!1437285 0)))

(declare-fun e!2506264 () Int)

(assert (=> d!1197571 (= lt!1437285 e!2506264)))

(declare-fun c!697734 () Bool)

(assert (=> d!1197571 (= c!697734 ((_ is Nil!43233) lt!1437079))))

(assert (=> d!1197571 (= (size!32317 lt!1437079) lt!1437285)))

(declare-fun b!4039292 () Bool)

(assert (=> b!4039292 (= e!2506264 0)))

(declare-fun b!4039293 () Bool)

(assert (=> b!4039293 (= e!2506264 (+ 1 (size!32317 (t!334776 lt!1437079))))))

(assert (= (and d!1197571 c!697734) b!4039292))

(assert (= (and d!1197571 (not c!697734)) b!4039293))

(declare-fun m!4634683 () Bool)

(assert (=> b!4039293 m!4634683))

(assert (=> b!4038789 d!1197571))

(assert (=> b!4038789 d!1197321))

(declare-fun d!1197575 () Bool)

(declare-fun lt!1437287 () Int)

(assert (=> d!1197575 (>= lt!1437287 0)))

(declare-fun e!2506266 () Int)

(assert (=> d!1197575 (= lt!1437287 e!2506266)))

(declare-fun c!697736 () Bool)

(assert (=> d!1197575 (= c!697736 ((_ is Nil!43233) newSuffixResult!27))))

(assert (=> d!1197575 (= (size!32317 newSuffixResult!27) lt!1437287)))

(declare-fun b!4039296 () Bool)

(assert (=> b!4039296 (= e!2506266 0)))

(declare-fun b!4039297 () Bool)

(assert (=> b!4039297 (= e!2506266 (+ 1 (size!32317 (t!334776 newSuffixResult!27))))))

(assert (= (and d!1197575 c!697736) b!4039296))

(assert (= (and d!1197575 (not c!697736)) b!4039297))

(declare-fun m!4634687 () Bool)

(assert (=> b!4039297 m!4634687))

(assert (=> b!4038789 d!1197575))

(declare-fun d!1197579 () Bool)

(declare-fun lt!1437288 () Int)

(assert (=> d!1197579 (>= lt!1437288 0)))

(declare-fun e!2506267 () Int)

(assert (=> d!1197579 (= lt!1437288 e!2506267)))

(declare-fun c!697737 () Bool)

(assert (=> d!1197579 (= c!697737 ((_ is Nil!43233) lt!1437078))))

(assert (=> d!1197579 (= (size!32317 lt!1437078) lt!1437288)))

(declare-fun b!4039298 () Bool)

(assert (=> b!4039298 (= e!2506267 0)))

(declare-fun b!4039299 () Bool)

(assert (=> b!4039299 (= e!2506267 (+ 1 (size!32317 (t!334776 lt!1437078))))))

(assert (= (and d!1197579 c!697737) b!4039298))

(assert (= (and d!1197579 (not c!697737)) b!4039299))

(declare-fun m!4634689 () Bool)

(assert (=> b!4039299 m!4634689))

(assert (=> b!4038785 d!1197579))

(assert (=> b!4038785 d!1197323))

(assert (=> b!4038785 d!1197303))

(declare-fun d!1197581 () Bool)

(declare-fun c!697738 () Bool)

(assert (=> d!1197581 (= c!697738 ((_ is Nil!43233) lt!1436912))))

(declare-fun e!2506268 () (InoxSet C!23836))

(assert (=> d!1197581 (= (content!6573 lt!1436912) e!2506268)))

(declare-fun b!4039300 () Bool)

(assert (=> b!4039300 (= e!2506268 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039301 () Bool)

(assert (=> b!4039301 (= e!2506268 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1436912) true) (content!6573 (t!334776 lt!1436912))))))

(assert (= (and d!1197581 c!697738) b!4039300))

(assert (= (and d!1197581 (not c!697738)) b!4039301))

(declare-fun m!4634691 () Bool)

(assert (=> b!4039301 m!4634691))

(declare-fun m!4634693 () Bool)

(assert (=> b!4039301 m!4634693))

(assert (=> d!1197077 d!1197581))

(assert (=> d!1197077 d!1197449))

(declare-fun d!1197583 () Bool)

(declare-fun c!697739 () Bool)

(assert (=> d!1197583 (= c!697739 ((_ is Nil!43233) suffix!1299))))

(declare-fun e!2506269 () (InoxSet C!23836))

(assert (=> d!1197583 (= (content!6573 suffix!1299) e!2506269)))

(declare-fun b!4039302 () Bool)

(assert (=> b!4039302 (= e!2506269 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039303 () Bool)

(assert (=> b!4039303 (= e!2506269 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 suffix!1299) true) (content!6573 (t!334776 suffix!1299))))))

(assert (= (and d!1197583 c!697739) b!4039302))

(assert (= (and d!1197583 (not c!697739)) b!4039303))

(declare-fun m!4634695 () Bool)

(assert (=> b!4039303 m!4634695))

(declare-fun m!4634697 () Bool)

(assert (=> b!4039303 m!4634697))

(assert (=> d!1197077 d!1197583))

(declare-fun d!1197585 () Bool)

(assert (=> d!1197585 (= (list!16094 lt!1437090) (list!16095 (c!697516 lt!1437090)))))

(declare-fun bs!590752 () Bool)

(assert (= bs!590752 d!1197585))

(declare-fun m!4634699 () Bool)

(assert (=> bs!590752 m!4634699))

(assert (=> d!1197327 d!1197585))

(declare-fun bs!590756 () Bool)

(declare-fun d!1197587 () Bool)

(assert (= bs!590756 (and d!1197587 d!1197405)))

(declare-fun lambda!127357 () Int)

(assert (=> bs!590756 (= lambda!127357 lambda!127351)))

(assert (=> d!1197587 true))

(declare-fun lt!1437294 () Bool)

(assert (=> d!1197587 (= lt!1437294 (rulesValidInductive!2522 thiss!21717 rules!2999))))

(assert (=> d!1197587 (= lt!1437294 (forall!8372 rules!2999 lambda!127357))))

(assert (=> d!1197587 (= (rulesValid!2689 thiss!21717 rules!2999) lt!1437294)))

(declare-fun bs!590757 () Bool)

(assert (= bs!590757 d!1197587))

(assert (=> bs!590757 m!4633307))

(declare-fun m!4634717 () Bool)

(assert (=> bs!590757 m!4634717))

(assert (=> d!1197145 d!1197587))

(declare-fun b!4039318 () Bool)

(declare-fun e!2506282 () Bool)

(declare-fun e!2506281 () Bool)

(assert (=> b!4039318 (= e!2506282 e!2506281)))

(declare-fun res!1645017 () Bool)

(assert (=> b!4039318 (=> (not res!1645017) (not e!2506281))))

(assert (=> b!4039318 (= res!1645017 (not ((_ is Nil!43233) (tail!6283 lt!1436855))))))

(declare-fun b!4039320 () Bool)

(assert (=> b!4039320 (= e!2506281 (isPrefix!4007 (tail!6283 (tail!6283 lt!1436870)) (tail!6283 (tail!6283 lt!1436855))))))

(declare-fun b!4039319 () Bool)

(declare-fun res!1645016 () Bool)

(assert (=> b!4039319 (=> (not res!1645016) (not e!2506281))))

(assert (=> b!4039319 (= res!1645016 (= (head!8551 (tail!6283 lt!1436870)) (head!8551 (tail!6283 lt!1436855))))))

(declare-fun d!1197601 () Bool)

(declare-fun e!2506280 () Bool)

(assert (=> d!1197601 e!2506280))

(declare-fun res!1645015 () Bool)

(assert (=> d!1197601 (=> res!1645015 e!2506280)))

(declare-fun lt!1437296 () Bool)

(assert (=> d!1197601 (= res!1645015 (not lt!1437296))))

(assert (=> d!1197601 (= lt!1437296 e!2506282)))

(declare-fun res!1645014 () Bool)

(assert (=> d!1197601 (=> res!1645014 e!2506282)))

(assert (=> d!1197601 (= res!1645014 ((_ is Nil!43233) (tail!6283 lt!1436870)))))

(assert (=> d!1197601 (= (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 lt!1436855)) lt!1437296)))

(declare-fun b!4039321 () Bool)

(assert (=> b!4039321 (= e!2506280 (>= (size!32317 (tail!6283 lt!1436855)) (size!32317 (tail!6283 lt!1436870))))))

(assert (= (and d!1197601 (not res!1645014)) b!4039318))

(assert (= (and b!4039318 res!1645017) b!4039319))

(assert (= (and b!4039319 res!1645016) b!4039320))

(assert (= (and d!1197601 (not res!1645015)) b!4039321))

(assert (=> b!4039320 m!4633543))

(assert (=> b!4039320 m!4634609))

(assert (=> b!4039320 m!4633645))

(declare-fun m!4634729 () Bool)

(assert (=> b!4039320 m!4634729))

(assert (=> b!4039320 m!4634609))

(assert (=> b!4039320 m!4634729))

(declare-fun m!4634731 () Bool)

(assert (=> b!4039320 m!4634731))

(assert (=> b!4039319 m!4633543))

(assert (=> b!4039319 m!4634613))

(assert (=> b!4039319 m!4633645))

(declare-fun m!4634735 () Bool)

(assert (=> b!4039319 m!4634735))

(assert (=> b!4039321 m!4633645))

(declare-fun m!4634737 () Bool)

(assert (=> b!4039321 m!4634737))

(assert (=> b!4039321 m!4633543))

(declare-fun m!4634739 () Bool)

(assert (=> b!4039321 m!4634739))

(assert (=> b!4038485 d!1197601))

(assert (=> b!4038485 d!1197563))

(declare-fun d!1197611 () Bool)

(assert (=> d!1197611 (= (tail!6283 lt!1436855) (t!334776 lt!1436855))))

(assert (=> b!4038485 d!1197611))

(declare-fun d!1197613 () Bool)

(declare-fun lt!1437300 () Int)

(assert (=> d!1197613 (>= lt!1437300 0)))

(declare-fun e!2506287 () Int)

(assert (=> d!1197613 (= lt!1437300 e!2506287)))

(declare-fun c!697744 () Bool)

(assert (=> d!1197613 (= c!697744 ((_ is Nil!43233) (_2!24291 (get!14186 lt!1436974))))))

(assert (=> d!1197613 (= (size!32317 (_2!24291 (get!14186 lt!1436974))) lt!1437300)))

(declare-fun b!4039330 () Bool)

(assert (=> b!4039330 (= e!2506287 0)))

(declare-fun b!4039331 () Bool)

(assert (=> b!4039331 (= e!2506287 (+ 1 (size!32317 (t!334776 (_2!24291 (get!14186 lt!1436974))))))))

(assert (= (and d!1197613 c!697744) b!4039330))

(assert (= (and d!1197613 (not c!697744)) b!4039331))

(declare-fun m!4634743 () Bool)

(assert (=> b!4039331 m!4634743))

(assert (=> b!4038466 d!1197613))

(assert (=> b!4038466 d!1197511))

(assert (=> b!4038466 d!1197421))

(declare-fun b!4039336 () Bool)

(declare-fun res!1645020 () Bool)

(declare-fun e!2506290 () Bool)

(assert (=> b!4039336 (=> (not res!1645020) (not e!2506290))))

(declare-fun lt!1437302 () List!43357)

(assert (=> b!4039336 (= res!1645020 (= (size!32317 lt!1437302) (+ (size!32317 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))) (size!32317 (_2!24291 (get!14186 lt!1436904))))))))

(declare-fun b!4039334 () Bool)

(declare-fun e!2506289 () List!43357)

(assert (=> b!4039334 (= e!2506289 (_2!24291 (get!14186 lt!1436904)))))

(declare-fun b!4039335 () Bool)

(assert (=> b!4039335 (= e!2506289 (Cons!43233 (h!48653 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))) (++!11322 (t!334776 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))) (_2!24291 (get!14186 lt!1436904)))))))

(declare-fun d!1197615 () Bool)

(assert (=> d!1197615 e!2506290))

(declare-fun res!1645021 () Bool)

(assert (=> d!1197615 (=> (not res!1645021) (not e!2506290))))

(assert (=> d!1197615 (= res!1645021 (= (content!6573 lt!1437302) ((_ map or) (content!6573 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))) (content!6573 (_2!24291 (get!14186 lt!1436904))))))))

(assert (=> d!1197615 (= lt!1437302 e!2506289)))

(declare-fun c!697746 () Bool)

(assert (=> d!1197615 (= c!697746 ((_ is Nil!43233) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904))))))))

(assert (=> d!1197615 (= (++!11322 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904)))) (_2!24291 (get!14186 lt!1436904))) lt!1437302)))

(declare-fun b!4039337 () Bool)

(assert (=> b!4039337 (= e!2506290 (or (not (= (_2!24291 (get!14186 lt!1436904)) Nil!43233)) (= lt!1437302 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436904)))))))))

(assert (= (and d!1197615 c!697746) b!4039334))

(assert (= (and d!1197615 (not c!697746)) b!4039335))

(assert (= (and d!1197615 res!1645021) b!4039336))

(assert (= (and b!4039336 res!1645020) b!4039337))

(declare-fun m!4634751 () Bool)

(assert (=> b!4039336 m!4634751))

(assert (=> b!4039336 m!4633311))

(declare-fun m!4634753 () Bool)

(assert (=> b!4039336 m!4634753))

(assert (=> b!4039336 m!4633343))

(declare-fun m!4634755 () Bool)

(assert (=> b!4039335 m!4634755))

(declare-fun m!4634757 () Bool)

(assert (=> d!1197615 m!4634757))

(assert (=> d!1197615 m!4633311))

(declare-fun m!4634759 () Bool)

(assert (=> d!1197615 m!4634759))

(declare-fun m!4634761 () Bool)

(assert (=> d!1197615 m!4634761))

(assert (=> b!4038309 d!1197615))

(assert (=> b!4038309 d!1197519))

(assert (=> b!4038309 d!1197521))

(assert (=> b!4038309 d!1197415))

(assert (=> b!4038823 d!1197473))

(declare-fun d!1197621 () Bool)

(declare-fun lt!1437303 () Int)

(assert (=> d!1197621 (>= lt!1437303 0)))

(declare-fun e!2506291 () Int)

(assert (=> d!1197621 (= lt!1437303 e!2506291)))

(declare-fun c!697747 () Bool)

(assert (=> d!1197621 (= c!697747 ((_ is Nil!43233) (t!334776 (originalCharacters!7520 token!484))))))

(assert (=> d!1197621 (= (size!32317 (t!334776 (originalCharacters!7520 token!484))) lt!1437303)))

(declare-fun b!4039338 () Bool)

(assert (=> b!4039338 (= e!2506291 0)))

(declare-fun b!4039339 () Bool)

(assert (=> b!4039339 (= e!2506291 (+ 1 (size!32317 (t!334776 (t!334776 (originalCharacters!7520 token!484))))))))

(assert (= (and d!1197621 c!697747) b!4039338))

(assert (= (and d!1197621 (not c!697747)) b!4039339))

(declare-fun m!4634763 () Bool)

(assert (=> b!4039339 m!4634763))

(assert (=> b!4038437 d!1197621))

(declare-fun d!1197623 () Bool)

(declare-fun lt!1437304 () Bool)

(assert (=> d!1197623 (= lt!1437304 (select (content!6574 rules!2999) (rule!9990 (_1!24291 (get!14186 lt!1436904)))))))

(declare-fun e!2506293 () Bool)

(assert (=> d!1197623 (= lt!1437304 e!2506293)))

(declare-fun res!1645023 () Bool)

(assert (=> d!1197623 (=> (not res!1645023) (not e!2506293))))

(assert (=> d!1197623 (= res!1645023 ((_ is Cons!43235) rules!2999))))

(assert (=> d!1197623 (= (contains!8588 rules!2999 (rule!9990 (_1!24291 (get!14186 lt!1436904)))) lt!1437304)))

(declare-fun b!4039340 () Bool)

(declare-fun e!2506292 () Bool)

(assert (=> b!4039340 (= e!2506293 e!2506292)))

(declare-fun res!1645022 () Bool)

(assert (=> b!4039340 (=> res!1645022 e!2506292)))

(assert (=> b!4039340 (= res!1645022 (= (h!48655 rules!2999) (rule!9990 (_1!24291 (get!14186 lt!1436904)))))))

(declare-fun b!4039341 () Bool)

(assert (=> b!4039341 (= e!2506292 (contains!8588 (t!334778 rules!2999) (rule!9990 (_1!24291 (get!14186 lt!1436904)))))))

(assert (= (and d!1197623 res!1645023) b!4039340))

(assert (= (and b!4039340 (not res!1645022)) b!4039341))

(assert (=> d!1197623 m!4633463))

(declare-fun m!4634765 () Bool)

(assert (=> d!1197623 m!4634765))

(declare-fun m!4634767 () Bool)

(assert (=> b!4039341 m!4634767))

(assert (=> b!4038307 d!1197623))

(assert (=> b!4038307 d!1197415))

(declare-fun bs!590759 () Bool)

(declare-fun d!1197625 () Bool)

(assert (= bs!590759 (and d!1197625 d!1197179)))

(declare-fun lambda!127363 () Int)

(assert (=> bs!590759 (= (and (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (= lambda!127363 lambda!127345))))

(assert (=> d!1197625 true))

(assert (=> d!1197625 (< (dynLambda!18348 order!22633 (toChars!9315 (transformation!6920 (h!48655 rules!2999)))) (dynLambda!18347 order!22631 lambda!127363))))

(assert (=> d!1197625 true))

(assert (=> d!1197625 (< (dynLambda!18346 order!22629 (toValue!9456 (transformation!6920 (h!48655 rules!2999)))) (dynLambda!18347 order!22631 lambda!127363))))

(declare-fun Forall!1489 (Int) Bool)

(assert (=> d!1197625 (= (semiInverseModEq!2956 (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (h!48655 rules!2999)))) (Forall!1489 lambda!127363))))

(declare-fun bs!590760 () Bool)

(assert (= bs!590760 d!1197625))

(declare-fun m!4634771 () Bool)

(assert (=> bs!590760 m!4634771))

(assert (=> d!1197311 d!1197625))

(declare-fun d!1197629 () Bool)

(declare-fun lt!1437310 () Int)

(assert (=> d!1197629 (>= lt!1437310 0)))

(declare-fun e!2506300 () Int)

(assert (=> d!1197629 (= lt!1437310 e!2506300)))

(declare-fun c!697749 () Bool)

(assert (=> d!1197629 (= c!697749 ((_ is Nil!43233) lt!1436914))))

(assert (=> d!1197629 (= (size!32317 lt!1436914) lt!1437310)))

(declare-fun b!4039359 () Bool)

(assert (=> b!4039359 (= e!2506300 0)))

(declare-fun b!4039360 () Bool)

(assert (=> b!4039360 (= e!2506300 (+ 1 (size!32317 (t!334776 lt!1436914))))))

(assert (= (and d!1197629 c!697749) b!4039359))

(assert (= (and d!1197629 (not c!697749)) b!4039360))

(declare-fun m!4634773 () Bool)

(assert (=> b!4039360 m!4634773))

(assert (=> b!4038341 d!1197629))

(declare-fun d!1197631 () Bool)

(declare-fun lt!1437311 () Int)

(assert (=> d!1197631 (>= lt!1437311 0)))

(declare-fun e!2506301 () Int)

(assert (=> d!1197631 (= lt!1437311 e!2506301)))

(declare-fun c!697750 () Bool)

(assert (=> d!1197631 (= c!697750 ((_ is Nil!43233) lt!1436874))))

(assert (=> d!1197631 (= (size!32317 lt!1436874) lt!1437311)))

(declare-fun b!4039361 () Bool)

(assert (=> b!4039361 (= e!2506301 0)))

(declare-fun b!4039362 () Bool)

(assert (=> b!4039362 (= e!2506301 (+ 1 (size!32317 (t!334776 lt!1436874))))))

(assert (= (and d!1197631 c!697750) b!4039361))

(assert (= (and d!1197631 (not c!697750)) b!4039362))

(declare-fun m!4634775 () Bool)

(assert (=> b!4039362 m!4634775))

(assert (=> b!4038341 d!1197631))

(assert (=> b!4038341 d!1197301))

(declare-fun d!1197633 () Bool)

(declare-fun isBalanced!3679 (Conc!13131) Bool)

(assert (=> d!1197633 (= (inv!57776 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869))))) (isBalanced!3679 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869)))))))))

(declare-fun bs!590761 () Bool)

(assert (= bs!590761 d!1197633))

(declare-fun m!4634793 () Bool)

(assert (=> bs!590761 m!4634793))

(assert (=> tb!242669 d!1197633))

(declare-fun b!4039365 () Bool)

(declare-fun res!1645033 () Bool)

(declare-fun e!2506303 () Bool)

(assert (=> b!4039365 (=> (not res!1645033) (not e!2506303))))

(declare-fun lt!1437312 () List!43357)

(assert (=> b!4039365 (= res!1645033 (= (size!32317 lt!1437312) (+ (size!32317 (t!334776 lt!1436845)) (size!32317 suffix!1299))))))

(declare-fun b!4039363 () Bool)

(declare-fun e!2506302 () List!43357)

(assert (=> b!4039363 (= e!2506302 suffix!1299)))

(declare-fun b!4039364 () Bool)

(assert (=> b!4039364 (= e!2506302 (Cons!43233 (h!48653 (t!334776 lt!1436845)) (++!11322 (t!334776 (t!334776 lt!1436845)) suffix!1299)))))

(declare-fun d!1197635 () Bool)

(assert (=> d!1197635 e!2506303))

(declare-fun res!1645034 () Bool)

(assert (=> d!1197635 (=> (not res!1645034) (not e!2506303))))

(assert (=> d!1197635 (= res!1645034 (= (content!6573 lt!1437312) ((_ map or) (content!6573 (t!334776 lt!1436845)) (content!6573 suffix!1299))))))

(assert (=> d!1197635 (= lt!1437312 e!2506302)))

(declare-fun c!697751 () Bool)

(assert (=> d!1197635 (= c!697751 ((_ is Nil!43233) (t!334776 lt!1436845)))))

(assert (=> d!1197635 (= (++!11322 (t!334776 lt!1436845) suffix!1299) lt!1437312)))

(declare-fun b!4039366 () Bool)

(assert (=> b!4039366 (= e!2506303 (or (not (= suffix!1299 Nil!43233)) (= lt!1437312 (t!334776 lt!1436845))))))

(assert (= (and d!1197635 c!697751) b!4039363))

(assert (= (and d!1197635 (not c!697751)) b!4039364))

(assert (= (and d!1197635 res!1645034) b!4039365))

(assert (= (and b!4039365 res!1645033) b!4039366))

(declare-fun m!4634805 () Bool)

(assert (=> b!4039365 m!4634805))

(assert (=> b!4039365 m!4634279))

(assert (=> b!4039365 m!4633279))

(declare-fun m!4634811 () Bool)

(assert (=> b!4039364 m!4634811))

(declare-fun m!4634813 () Bool)

(assert (=> d!1197635 m!4634813))

(declare-fun m!4634815 () Bool)

(assert (=> d!1197635 m!4634815))

(assert (=> d!1197635 m!4633377))

(assert (=> b!4038344 d!1197635))

(declare-fun b!4039367 () Bool)

(declare-fun e!2506306 () Bool)

(declare-fun e!2506305 () Bool)

(assert (=> b!4039367 (= e!2506306 e!2506305)))

(declare-fun res!1645038 () Bool)

(assert (=> b!4039367 (=> (not res!1645038) (not e!2506305))))

(assert (=> b!4039367 (= res!1645038 (not ((_ is Nil!43233) (++!11322 prefix!494 suffix!1299))))))

(declare-fun b!4039369 () Bool)

(assert (=> b!4039369 (= e!2506305 (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 (++!11322 prefix!494 suffix!1299))))))

(declare-fun b!4039368 () Bool)

(declare-fun res!1645037 () Bool)

(assert (=> b!4039368 (=> (not res!1645037) (not e!2506305))))

(assert (=> b!4039368 (= res!1645037 (= (head!8551 lt!1436870) (head!8551 (++!11322 prefix!494 suffix!1299))))))

(declare-fun d!1197637 () Bool)

(declare-fun e!2506304 () Bool)

(assert (=> d!1197637 e!2506304))

(declare-fun res!1645036 () Bool)

(assert (=> d!1197637 (=> res!1645036 e!2506304)))

(declare-fun lt!1437313 () Bool)

(assert (=> d!1197637 (= res!1645036 (not lt!1437313))))

(assert (=> d!1197637 (= lt!1437313 e!2506306)))

(declare-fun res!1645035 () Bool)

(assert (=> d!1197637 (=> res!1645035 e!2506306)))

(assert (=> d!1197637 (= res!1645035 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197637 (= (isPrefix!4007 lt!1436870 (++!11322 prefix!494 suffix!1299)) lt!1437313)))

(declare-fun b!4039370 () Bool)

(assert (=> b!4039370 (= e!2506304 (>= (size!32317 (++!11322 prefix!494 suffix!1299)) (size!32317 lt!1436870)))))

(assert (= (and d!1197637 (not res!1645035)) b!4039367))

(assert (= (and b!4039367 res!1645038) b!4039368))

(assert (= (and b!4039368 res!1645037) b!4039369))

(assert (= (and d!1197637 (not res!1645036)) b!4039370))

(assert (=> b!4039369 m!4633543))

(assert (=> b!4039369 m!4633225))

(assert (=> b!4039369 m!4634363))

(assert (=> b!4039369 m!4633543))

(assert (=> b!4039369 m!4634363))

(declare-fun m!4634827 () Bool)

(assert (=> b!4039369 m!4634827))

(assert (=> b!4039368 m!4633549))

(assert (=> b!4039368 m!4633225))

(assert (=> b!4039368 m!4634367))

(assert (=> b!4039370 m!4633225))

(assert (=> b!4039370 m!4634369))

(assert (=> b!4039370 m!4633263))

(assert (=> d!1197319 d!1197637))

(assert (=> d!1197319 d!1197077))

(declare-fun d!1197641 () Bool)

(assert (=> d!1197641 (isPrefix!4007 lt!1436870 (++!11322 prefix!494 suffix!1299))))

(assert (=> d!1197641 true))

(declare-fun _$58!581 () Unit!62437)

(assert (=> d!1197641 (= (choose!24472 lt!1436870 prefix!494 suffix!1299) _$58!581)))

(declare-fun bs!590762 () Bool)

(assert (= bs!590762 d!1197641))

(assert (=> bs!590762 m!4633225))

(assert (=> bs!590762 m!4633225))

(assert (=> bs!590762 m!4634085))

(assert (=> d!1197319 d!1197641))

(assert (=> d!1197319 d!1197333))

(declare-fun d!1197655 () Bool)

(declare-fun lt!1437319 () Int)

(assert (=> d!1197655 (>= lt!1437319 0)))

(declare-fun e!2506314 () Int)

(assert (=> d!1197655 (= lt!1437319 e!2506314)))

(declare-fun c!697756 () Bool)

(assert (=> d!1197655 (= c!697756 ((_ is Nil!43233) lt!1436849))))

(assert (=> d!1197655 (= (size!32317 lt!1436849) lt!1437319)))

(declare-fun b!4039383 () Bool)

(assert (=> b!4039383 (= e!2506314 0)))

(declare-fun b!4039384 () Bool)

(assert (=> b!4039384 (= e!2506314 (+ 1 (size!32317 (t!334776 lt!1436849))))))

(assert (= (and d!1197655 c!697756) b!4039383))

(assert (= (and d!1197655 (not c!697756)) b!4039384))

(declare-fun m!4634845 () Bool)

(assert (=> b!4039384 m!4634845))

(assert (=> b!4038774 d!1197655))

(assert (=> b!4038774 d!1197321))

(declare-fun b!4039389 () Bool)

(declare-fun e!2506319 () Bool)

(declare-fun e!2506318 () Bool)

(assert (=> b!4039389 (= e!2506319 e!2506318)))

(declare-fun res!1645048 () Bool)

(assert (=> b!4039389 (=> (not res!1645048) (not e!2506318))))

(assert (=> b!4039389 (= res!1645048 (not ((_ is Nil!43233) (tail!6283 lt!1436879))))))

(declare-fun b!4039391 () Bool)

(assert (=> b!4039391 (= e!2506318 (isPrefix!4007 (tail!6283 (tail!6283 lt!1436870)) (tail!6283 (tail!6283 lt!1436879))))))

(declare-fun b!4039390 () Bool)

(declare-fun res!1645047 () Bool)

(assert (=> b!4039390 (=> (not res!1645047) (not e!2506318))))

(assert (=> b!4039390 (= res!1645047 (= (head!8551 (tail!6283 lt!1436870)) (head!8551 (tail!6283 lt!1436879))))))

(declare-fun d!1197659 () Bool)

(declare-fun e!2506317 () Bool)

(assert (=> d!1197659 e!2506317))

(declare-fun res!1645046 () Bool)

(assert (=> d!1197659 (=> res!1645046 e!2506317)))

(declare-fun lt!1437321 () Bool)

(assert (=> d!1197659 (= res!1645046 (not lt!1437321))))

(assert (=> d!1197659 (= lt!1437321 e!2506319)))

(declare-fun res!1645045 () Bool)

(assert (=> d!1197659 (=> res!1645045 e!2506319)))

(assert (=> d!1197659 (= res!1645045 ((_ is Nil!43233) (tail!6283 lt!1436870)))))

(assert (=> d!1197659 (= (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 lt!1436879)) lt!1437321)))

(declare-fun b!4039392 () Bool)

(assert (=> b!4039392 (= e!2506317 (>= (size!32317 (tail!6283 lt!1436879)) (size!32317 (tail!6283 lt!1436870))))))

(assert (= (and d!1197659 (not res!1645045)) b!4039389))

(assert (= (and b!4039389 res!1645048) b!4039390))

(assert (= (and b!4039390 res!1645047) b!4039391))

(assert (= (and d!1197659 (not res!1645046)) b!4039392))

(assert (=> b!4039391 m!4633543))

(assert (=> b!4039391 m!4634609))

(assert (=> b!4039391 m!4634013))

(declare-fun m!4634853 () Bool)

(assert (=> b!4039391 m!4634853))

(assert (=> b!4039391 m!4634609))

(assert (=> b!4039391 m!4634853))

(declare-fun m!4634855 () Bool)

(assert (=> b!4039391 m!4634855))

(assert (=> b!4039390 m!4633543))

(assert (=> b!4039390 m!4634613))

(assert (=> b!4039390 m!4634013))

(declare-fun m!4634857 () Bool)

(assert (=> b!4039390 m!4634857))

(assert (=> b!4039392 m!4634013))

(declare-fun m!4634859 () Bool)

(assert (=> b!4039392 m!4634859))

(assert (=> b!4039392 m!4633543))

(assert (=> b!4039392 m!4634739))

(assert (=> b!4038769 d!1197659))

(assert (=> b!4038769 d!1197563))

(declare-fun d!1197663 () Bool)

(assert (=> d!1197663 (= (tail!6283 lt!1436879) (t!334776 lt!1436879))))

(assert (=> b!4038769 d!1197663))

(assert (=> d!1197151 d!1197157))

(assert (=> d!1197151 d!1197321))

(assert (=> d!1197151 d!1197149))

(assert (=> d!1197151 d!1197347))

(assert (=> d!1197151 d!1197153))

(declare-fun d!1197665 () Bool)

(assert (=> d!1197665 (= (maxPrefixOneRule!2819 thiss!21717 (rule!9990 token!484) lt!1436879) (Some!9333 (tuple2!42315 (Token!12979 (apply!10109 (transformation!6920 (rule!9990 token!484)) (seqFromList!5137 lt!1436870)) (rule!9990 token!484) (size!32317 lt!1436870) lt!1436870) suffixResult!105)))))

(assert (=> d!1197665 true))

(declare-fun _$59!686 () Unit!62437)

(assert (=> d!1197665 (= (choose!24467 thiss!21717 rules!2999 lt!1436870 lt!1436879 suffixResult!105 (rule!9990 token!484)) _$59!686)))

(declare-fun bs!590768 () Bool)

(assert (= bs!590768 d!1197665))

(assert (=> bs!590768 m!4633233))

(assert (=> bs!590768 m!4633235))

(assert (=> bs!590768 m!4633235))

(assert (=> bs!590768 m!4633237))

(assert (=> bs!590768 m!4633263))

(assert (=> d!1197151 d!1197665))

(declare-fun d!1197701 () Bool)

(declare-fun lt!1437333 () Int)

(assert (=> d!1197701 (>= lt!1437333 0)))

(declare-fun e!2506339 () Int)

(assert (=> d!1197701 (= lt!1437333 e!2506339)))

(declare-fun c!697763 () Bool)

(assert (=> d!1197701 (= c!697763 ((_ is Nil!43233) lt!1436912))))

(assert (=> d!1197701 (= (size!32317 lt!1436912) lt!1437333)))

(declare-fun b!4039424 () Bool)

(assert (=> b!4039424 (= e!2506339 0)))

(declare-fun b!4039425 () Bool)

(assert (=> b!4039425 (= e!2506339 (+ 1 (size!32317 (t!334776 lt!1436912))))))

(assert (= (and d!1197701 c!697763) b!4039424))

(assert (= (and d!1197701 (not c!697763)) b!4039425))

(declare-fun m!4634949 () Bool)

(assert (=> b!4039425 m!4634949))

(assert (=> b!4038333 d!1197701))

(assert (=> b!4038333 d!1197323))

(assert (=> b!4038333 d!1197301))

(declare-fun d!1197703 () Bool)

(assert (=> d!1197703 (= (isDefined!7101 lt!1436987) (not (isEmpty!25805 lt!1436987)))))

(declare-fun bs!590772 () Bool)

(assert (= bs!590772 d!1197703))

(assert (=> bs!590772 m!4633621))

(assert (=> b!4038481 d!1197703))

(declare-fun d!1197705 () Bool)

(declare-fun c!697764 () Bool)

(assert (=> d!1197705 (= c!697764 ((_ is Nil!43233) lt!1437091))))

(declare-fun e!2506341 () (InoxSet C!23836))

(assert (=> d!1197705 (= (content!6573 lt!1437091) e!2506341)))

(declare-fun b!4039427 () Bool)

(assert (=> b!4039427 (= e!2506341 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039428 () Bool)

(assert (=> b!4039428 (= e!2506341 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1437091) true) (content!6573 (t!334776 lt!1437091))))))

(assert (= (and d!1197705 c!697764) b!4039427))

(assert (= (and d!1197705 (not c!697764)) b!4039428))

(declare-fun m!4634951 () Bool)

(assert (=> b!4039428 m!4634951))

(declare-fun m!4634953 () Bool)

(assert (=> b!4039428 m!4634953))

(assert (=> d!1197329 d!1197705))

(assert (=> d!1197329 d!1197425))

(declare-fun d!1197707 () Bool)

(declare-fun c!697765 () Bool)

(assert (=> d!1197707 (= c!697765 ((_ is Nil!43233) lt!1436845))))

(declare-fun e!2506342 () (InoxSet C!23836))

(assert (=> d!1197707 (= (content!6573 lt!1436845) e!2506342)))

(declare-fun b!4039429 () Bool)

(assert (=> b!4039429 (= e!2506342 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039430 () Bool)

(assert (=> b!4039430 (= e!2506342 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1436845) true) (content!6573 (t!334776 lt!1436845))))))

(assert (= (and d!1197707 c!697765) b!4039429))

(assert (= (and d!1197707 (not c!697765)) b!4039430))

(declare-fun m!4634955 () Bool)

(assert (=> b!4039430 m!4634955))

(assert (=> b!4039430 m!4634815))

(assert (=> d!1197329 d!1197707))

(declare-fun b!4039434 () Bool)

(declare-fun res!1645070 () Bool)

(declare-fun e!2506345 () Bool)

(assert (=> b!4039434 (=> (not res!1645070) (not e!2506345))))

(declare-fun lt!1437334 () List!43357)

(assert (=> b!4039434 (= res!1645070 (= (size!32317 lt!1437334) (+ (size!32317 (t!334776 lt!1436870)) (size!32317 lt!1436858))))))

(declare-fun b!4039432 () Bool)

(declare-fun e!2506344 () List!43357)

(assert (=> b!4039432 (= e!2506344 lt!1436858)))

(declare-fun b!4039433 () Bool)

(assert (=> b!4039433 (= e!2506344 (Cons!43233 (h!48653 (t!334776 lt!1436870)) (++!11322 (t!334776 (t!334776 lt!1436870)) lt!1436858)))))

(declare-fun d!1197709 () Bool)

(assert (=> d!1197709 e!2506345))

(declare-fun res!1645071 () Bool)

(assert (=> d!1197709 (=> (not res!1645071) (not e!2506345))))

(assert (=> d!1197709 (= res!1645071 (= (content!6573 lt!1437334) ((_ map or) (content!6573 (t!334776 lt!1436870)) (content!6573 lt!1436858))))))

(assert (=> d!1197709 (= lt!1437334 e!2506344)))

(declare-fun c!697766 () Bool)

(assert (=> d!1197709 (= c!697766 ((_ is Nil!43233) (t!334776 lt!1436870)))))

(assert (=> d!1197709 (= (++!11322 (t!334776 lt!1436870) lt!1436858) lt!1437334)))

(declare-fun b!4039435 () Bool)

(assert (=> b!4039435 (= e!2506345 (or (not (= lt!1436858 Nil!43233)) (= lt!1437334 (t!334776 lt!1436870))))))

(assert (= (and d!1197709 c!697766) b!4039432))

(assert (= (and d!1197709 (not c!697766)) b!4039433))

(assert (= (and d!1197709 res!1645071) b!4039434))

(assert (= (and b!4039434 res!1645070) b!4039435))

(declare-fun m!4634961 () Bool)

(assert (=> b!4039434 m!4634961))

(assert (=> b!4039434 m!4634089))

(assert (=> b!4039434 m!4633381))

(declare-fun m!4634963 () Bool)

(assert (=> b!4039433 m!4634963))

(declare-fun m!4634965 () Bool)

(assert (=> d!1197709 m!4634965))

(assert (=> d!1197709 m!4634295))

(assert (=> d!1197709 m!4633389))

(assert (=> b!4038336 d!1197709))

(declare-fun b!4039436 () Bool)

(declare-fun e!2506349 () Bool)

(declare-fun e!2506348 () Bool)

(assert (=> b!4039436 (= e!2506349 e!2506348)))

(declare-fun res!1645075 () Bool)

(assert (=> b!4039436 (=> (not res!1645075) (not e!2506348))))

(assert (=> b!4039436 (= res!1645075 (not ((_ is Nil!43233) (++!11322 lt!1436870 lt!1436867))))))

(declare-fun b!4039438 () Bool)

(assert (=> b!4039438 (= e!2506348 (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 (++!11322 lt!1436870 lt!1436867))))))

(declare-fun b!4039437 () Bool)

(declare-fun res!1645074 () Bool)

(assert (=> b!4039437 (=> (not res!1645074) (not e!2506348))))

(assert (=> b!4039437 (= res!1645074 (= (head!8551 lt!1436870) (head!8551 (++!11322 lt!1436870 lt!1436867))))))

(declare-fun d!1197711 () Bool)

(declare-fun e!2506347 () Bool)

(assert (=> d!1197711 e!2506347))

(declare-fun res!1645073 () Bool)

(assert (=> d!1197711 (=> res!1645073 e!2506347)))

(declare-fun lt!1437335 () Bool)

(assert (=> d!1197711 (= res!1645073 (not lt!1437335))))

(assert (=> d!1197711 (= lt!1437335 e!2506349)))

(declare-fun res!1645072 () Bool)

(assert (=> d!1197711 (=> res!1645072 e!2506349)))

(assert (=> d!1197711 (= res!1645072 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197711 (= (isPrefix!4007 lt!1436870 (++!11322 lt!1436870 lt!1436867)) lt!1437335)))

(declare-fun b!4039439 () Bool)

(assert (=> b!4039439 (= e!2506347 (>= (size!32317 (++!11322 lt!1436870 lt!1436867)) (size!32317 lt!1436870)))))

(assert (= (and d!1197711 (not res!1645072)) b!4039436))

(assert (= (and b!4039436 res!1645075) b!4039437))

(assert (= (and b!4039437 res!1645074) b!4039438))

(assert (= (and d!1197711 (not res!1645073)) b!4039439))

(assert (=> b!4039438 m!4633543))

(assert (=> b!4039438 m!4633271))

(declare-fun m!4634969 () Bool)

(assert (=> b!4039438 m!4634969))

(assert (=> b!4039438 m!4633543))

(assert (=> b!4039438 m!4634969))

(declare-fun m!4634971 () Bool)

(assert (=> b!4039438 m!4634971))

(assert (=> b!4039437 m!4633549))

(assert (=> b!4039437 m!4633271))

(declare-fun m!4634975 () Bool)

(assert (=> b!4039437 m!4634975))

(assert (=> b!4039439 m!4633271))

(declare-fun m!4634979 () Bool)

(assert (=> b!4039439 m!4634979))

(assert (=> b!4039439 m!4633263))

(assert (=> d!1197167 d!1197711))

(assert (=> d!1197167 d!1197339))

(declare-fun d!1197713 () Bool)

(assert (=> d!1197713 (isPrefix!4007 lt!1436870 (++!11322 lt!1436870 lt!1436867))))

(assert (=> d!1197713 true))

(declare-fun _$46!1755 () Unit!62437)

(assert (=> d!1197713 (= (choose!24469 lt!1436870 lt!1436867) _$46!1755)))

(declare-fun bs!590773 () Bool)

(assert (= bs!590773 d!1197713))

(assert (=> bs!590773 m!4633271))

(assert (=> bs!590773 m!4633271))

(assert (=> bs!590773 m!4633653))

(assert (=> d!1197167 d!1197713))

(declare-fun d!1197717 () Bool)

(declare-fun c!697769 () Bool)

(assert (=> d!1197717 (= c!697769 ((_ is Node!13131) (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))))))

(declare-fun e!2506354 () Bool)

(assert (=> d!1197717 (= (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))) e!2506354)))

(declare-fun b!4039446 () Bool)

(declare-fun inv!57779 (Conc!13131) Bool)

(assert (=> b!4039446 (= e!2506354 (inv!57779 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))))))

(declare-fun b!4039447 () Bool)

(declare-fun e!2506355 () Bool)

(assert (=> b!4039447 (= e!2506354 e!2506355)))

(declare-fun res!1645078 () Bool)

(assert (=> b!4039447 (= res!1645078 (not ((_ is Leaf!20298) (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))))))))

(assert (=> b!4039447 (=> res!1645078 e!2506355)))

(declare-fun b!4039448 () Bool)

(declare-fun inv!57780 (Conc!13131) Bool)

(assert (=> b!4039448 (= e!2506355 (inv!57780 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))))))

(assert (= (and d!1197717 c!697769) b!4039446))

(assert (= (and d!1197717 (not c!697769)) b!4039447))

(assert (= (and b!4039447 (not res!1645078)) b!4039448))

(declare-fun m!4634991 () Bool)

(assert (=> b!4039446 m!4634991))

(declare-fun m!4634993 () Bool)

(assert (=> b!4039448 m!4634993))

(assert (=> b!4038766 d!1197717))

(assert (=> b!4038778 d!1197421))

(assert (=> b!4038778 d!1197323))

(declare-fun b!4039449 () Bool)

(declare-fun e!2506357 () Bool)

(declare-fun e!2506356 () Bool)

(assert (=> b!4039449 (= e!2506357 e!2506356)))

(declare-fun c!697771 () Bool)

(assert (=> b!4039449 (= c!697771 ((_ is IntegerValue!21451) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 lt!1436870))))))

(declare-fun b!4039450 () Bool)

(assert (=> b!4039450 (= e!2506357 (inv!16 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 lt!1436870))))))

(declare-fun b!4039451 () Bool)

(declare-fun res!1645079 () Bool)

(declare-fun e!2506358 () Bool)

(assert (=> b!4039451 (=> res!1645079 e!2506358)))

(assert (=> b!4039451 (= res!1645079 (not ((_ is IntegerValue!21452) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 lt!1436870)))))))

(assert (=> b!4039451 (= e!2506356 e!2506358)))

(declare-fun d!1197725 () Bool)

(declare-fun c!697770 () Bool)

(assert (=> d!1197725 (= c!697770 ((_ is IntegerValue!21450) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 lt!1436870))))))

(assert (=> d!1197725 (= (inv!21 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 lt!1436870))) e!2506357)))

(declare-fun b!4039452 () Bool)

(assert (=> b!4039452 (= e!2506356 (inv!17 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 lt!1436870))))))

(declare-fun b!4039453 () Bool)

(assert (=> b!4039453 (= e!2506358 (inv!15 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 lt!1436870))))))

(assert (= (and d!1197725 c!697770) b!4039450))

(assert (= (and d!1197725 (not c!697770)) b!4039449))

(assert (= (and b!4039449 c!697771) b!4039452))

(assert (= (and b!4039449 (not c!697771)) b!4039451))

(assert (= (and b!4039451 (not res!1645079)) b!4039453))

(declare-fun m!4634995 () Bool)

(assert (=> b!4039450 m!4634995))

(declare-fun m!4634997 () Bool)

(assert (=> b!4039452 m!4634997))

(declare-fun m!4634999 () Bool)

(assert (=> b!4039453 m!4634999))

(assert (=> tb!242673 d!1197725))

(declare-fun b!4039454 () Bool)

(declare-fun e!2506361 () Bool)

(declare-fun e!2506360 () Bool)

(assert (=> b!4039454 (= e!2506361 e!2506360)))

(declare-fun res!1645083 () Bool)

(assert (=> b!4039454 (=> (not res!1645083) (not e!2506360))))

(assert (=> b!4039454 (= res!1645083 (not ((_ is Nil!43233) (tail!6283 lt!1436861))))))

(declare-fun b!4039456 () Bool)

(assert (=> b!4039456 (= e!2506360 (isPrefix!4007 (tail!6283 (tail!6283 lt!1436870)) (tail!6283 (tail!6283 lt!1436861))))))

(declare-fun b!4039455 () Bool)

(declare-fun res!1645082 () Bool)

(assert (=> b!4039455 (=> (not res!1645082) (not e!2506360))))

(assert (=> b!4039455 (= res!1645082 (= (head!8551 (tail!6283 lt!1436870)) (head!8551 (tail!6283 lt!1436861))))))

(declare-fun d!1197727 () Bool)

(declare-fun e!2506359 () Bool)

(assert (=> d!1197727 e!2506359))

(declare-fun res!1645081 () Bool)

(assert (=> d!1197727 (=> res!1645081 e!2506359)))

(declare-fun lt!1437339 () Bool)

(assert (=> d!1197727 (= res!1645081 (not lt!1437339))))

(assert (=> d!1197727 (= lt!1437339 e!2506361)))

(declare-fun res!1645080 () Bool)

(assert (=> d!1197727 (=> res!1645080 e!2506361)))

(assert (=> d!1197727 (= res!1645080 ((_ is Nil!43233) (tail!6283 lt!1436870)))))

(assert (=> d!1197727 (= (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 lt!1436861)) lt!1437339)))

(declare-fun b!4039457 () Bool)

(assert (=> b!4039457 (= e!2506359 (>= (size!32317 (tail!6283 lt!1436861)) (size!32317 (tail!6283 lt!1436870))))))

(assert (= (and d!1197727 (not res!1645080)) b!4039454))

(assert (= (and b!4039454 res!1645083) b!4039455))

(assert (= (and b!4039455 res!1645082) b!4039456))

(assert (= (and d!1197727 (not res!1645081)) b!4039457))

(assert (=> b!4039456 m!4633543))

(assert (=> b!4039456 m!4634609))

(assert (=> b!4039456 m!4634075))

(declare-fun m!4635001 () Bool)

(assert (=> b!4039456 m!4635001))

(assert (=> b!4039456 m!4634609))

(assert (=> b!4039456 m!4635001))

(declare-fun m!4635003 () Bool)

(assert (=> b!4039456 m!4635003))

(assert (=> b!4039455 m!4633543))

(assert (=> b!4039455 m!4634613))

(assert (=> b!4039455 m!4634075))

(declare-fun m!4635005 () Bool)

(assert (=> b!4039455 m!4635005))

(assert (=> b!4039457 m!4634075))

(declare-fun m!4635007 () Bool)

(assert (=> b!4039457 m!4635007))

(assert (=> b!4039457 m!4633543))

(assert (=> b!4039457 m!4634739))

(assert (=> b!4038836 d!1197727))

(assert (=> b!4038836 d!1197563))

(declare-fun d!1197729 () Bool)

(assert (=> d!1197729 (= (tail!6283 lt!1436861) (t!334776 lt!1436861))))

(assert (=> b!4038836 d!1197729))

(declare-fun d!1197731 () Bool)

(assert (=> d!1197731 (= (list!16094 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))) (list!16095 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))))))

(declare-fun bs!590775 () Bool)

(assert (= bs!590775 d!1197731))

(declare-fun m!4635009 () Bool)

(assert (=> bs!590775 m!4635009))

(assert (=> d!1197179 d!1197731))

(declare-fun d!1197733 () Bool)

(assert (=> d!1197733 (= (list!16094 lt!1436864) (list!16095 (c!697516 lt!1436864)))))

(declare-fun bs!590776 () Bool)

(assert (= bs!590776 d!1197733))

(declare-fun m!4635011 () Bool)

(assert (=> bs!590776 m!4635011))

(assert (=> d!1197179 d!1197733))

(declare-fun d!1197735 () Bool)

(declare-fun dynLambda!18350 (Int BalanceConc!25856) Bool)

(assert (=> d!1197735 (dynLambda!18350 lambda!127345 lt!1436864)))

(declare-fun lt!1437342 () Unit!62437)

(declare-fun choose!24476 (Int BalanceConc!25856) Unit!62437)

(assert (=> d!1197735 (= lt!1437342 (choose!24476 lambda!127345 lt!1436864))))

(assert (=> d!1197735 (Forall!1489 lambda!127345)))

(assert (=> d!1197735 (= (ForallOf!823 lambda!127345 lt!1436864) lt!1437342)))

(declare-fun b_lambda!117905 () Bool)

(assert (=> (not b_lambda!117905) (not d!1197735)))

(declare-fun bs!590777 () Bool)

(assert (= bs!590777 d!1197735))

(declare-fun m!4635013 () Bool)

(assert (=> bs!590777 m!4635013))

(declare-fun m!4635015 () Bool)

(assert (=> bs!590777 m!4635015))

(declare-fun m!4635017 () Bool)

(assert (=> bs!590777 m!4635017))

(assert (=> d!1197179 d!1197735))

(declare-fun d!1197737 () Bool)

(declare-fun lt!1437343 () Int)

(assert (=> d!1197737 (>= lt!1437343 0)))

(declare-fun e!2506362 () Int)

(assert (=> d!1197737 (= lt!1437343 e!2506362)))

(declare-fun c!697772 () Bool)

(assert (=> d!1197737 (= c!697772 ((_ is Nil!43233) (_2!24291 (get!14186 lt!1436987))))))

(assert (=> d!1197737 (= (size!32317 (_2!24291 (get!14186 lt!1436987))) lt!1437343)))

(declare-fun b!4039458 () Bool)

(assert (=> b!4039458 (= e!2506362 0)))

(declare-fun b!4039459 () Bool)

(assert (=> b!4039459 (= e!2506362 (+ 1 (size!32317 (t!334776 (_2!24291 (get!14186 lt!1436987))))))))

(assert (= (and d!1197737 c!697772) b!4039458))

(assert (= (and d!1197737 (not c!697772)) b!4039459))

(declare-fun m!4635019 () Bool)

(assert (=> b!4039459 m!4635019))

(assert (=> b!4038477 d!1197737))

(assert (=> b!4038477 d!1197441))

(assert (=> b!4038477 d!1197467))

(declare-fun b!4039460 () Bool)

(declare-fun e!2506365 () Bool)

(declare-fun e!2506364 () Bool)

(assert (=> b!4039460 (= e!2506365 e!2506364)))

(declare-fun res!1645087 () Bool)

(assert (=> b!4039460 (=> (not res!1645087) (not e!2506364))))

(assert (=> b!4039460 (= res!1645087 (not ((_ is Nil!43233) (tail!6283 lt!1436879))))))

(declare-fun b!4039462 () Bool)

(assert (=> b!4039462 (= e!2506364 (isPrefix!4007 (tail!6283 (tail!6283 lt!1436879)) (tail!6283 (tail!6283 lt!1436879))))))

(declare-fun b!4039461 () Bool)

(declare-fun res!1645086 () Bool)

(assert (=> b!4039461 (=> (not res!1645086) (not e!2506364))))

(assert (=> b!4039461 (= res!1645086 (= (head!8551 (tail!6283 lt!1436879)) (head!8551 (tail!6283 lt!1436879))))))

(declare-fun d!1197739 () Bool)

(declare-fun e!2506363 () Bool)

(assert (=> d!1197739 e!2506363))

(declare-fun res!1645085 () Bool)

(assert (=> d!1197739 (=> res!1645085 e!2506363)))

(declare-fun lt!1437344 () Bool)

(assert (=> d!1197739 (= res!1645085 (not lt!1437344))))

(assert (=> d!1197739 (= lt!1437344 e!2506365)))

(declare-fun res!1645084 () Bool)

(assert (=> d!1197739 (=> res!1645084 e!2506365)))

(assert (=> d!1197739 (= res!1645084 ((_ is Nil!43233) (tail!6283 lt!1436879)))))

(assert (=> d!1197739 (= (isPrefix!4007 (tail!6283 lt!1436879) (tail!6283 lt!1436879)) lt!1437344)))

(declare-fun b!4039463 () Bool)

(assert (=> b!4039463 (= e!2506363 (>= (size!32317 (tail!6283 lt!1436879)) (size!32317 (tail!6283 lt!1436879))))))

(assert (= (and d!1197739 (not res!1645084)) b!4039460))

(assert (= (and b!4039460 res!1645087) b!4039461))

(assert (= (and b!4039461 res!1645086) b!4039462))

(assert (= (and d!1197739 (not res!1645085)) b!4039463))

(assert (=> b!4039462 m!4634013))

(assert (=> b!4039462 m!4634853))

(assert (=> b!4039462 m!4634013))

(assert (=> b!4039462 m!4634853))

(assert (=> b!4039462 m!4634853))

(assert (=> b!4039462 m!4634853))

(declare-fun m!4635021 () Bool)

(assert (=> b!4039462 m!4635021))

(assert (=> b!4039461 m!4634013))

(assert (=> b!4039461 m!4634857))

(assert (=> b!4039461 m!4634013))

(assert (=> b!4039461 m!4634857))

(assert (=> b!4039463 m!4634013))

(assert (=> b!4039463 m!4634859))

(assert (=> b!4039463 m!4634013))

(assert (=> b!4039463 m!4634859))

(assert (=> b!4038864 d!1197739))

(assert (=> b!4038864 d!1197663))

(declare-fun d!1197741 () Bool)

(declare-fun c!697773 () Bool)

(assert (=> d!1197741 (= c!697773 ((_ is Nil!43233) lt!1436915))))

(declare-fun e!2506366 () (InoxSet C!23836))

(assert (=> d!1197741 (= (content!6573 lt!1436915) e!2506366)))

(declare-fun b!4039464 () Bool)

(assert (=> b!4039464 (= e!2506366 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039465 () Bool)

(assert (=> b!4039465 (= e!2506366 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1436915) true) (content!6573 (t!334776 lt!1436915))))))

(assert (= (and d!1197741 c!697773) b!4039464))

(assert (= (and d!1197741 (not c!697773)) b!4039465))

(declare-fun m!4635023 () Bool)

(assert (=> b!4039465 m!4635023))

(declare-fun m!4635025 () Bool)

(assert (=> b!4039465 m!4635025))

(assert (=> d!1197085 d!1197741))

(assert (=> d!1197085 d!1197707))

(assert (=> d!1197085 d!1197583))

(declare-fun d!1197743 () Bool)

(declare-fun lt!1437345 () Int)

(assert (=> d!1197743 (>= lt!1437345 0)))

(declare-fun e!2506367 () Int)

(assert (=> d!1197743 (= lt!1437345 e!2506367)))

(declare-fun c!697774 () Bool)

(assert (=> d!1197743 (= c!697774 ((_ is Nil!43233) (t!334776 lt!1436870)))))

(assert (=> d!1197743 (= (size!32317 (t!334776 lt!1436870)) lt!1437345)))

(declare-fun b!4039466 () Bool)

(assert (=> b!4039466 (= e!2506367 0)))

(declare-fun b!4039467 () Bool)

(assert (=> b!4039467 (= e!2506367 (+ 1 (size!32317 (t!334776 (t!334776 lt!1436870)))))))

(assert (= (and d!1197743 c!697774) b!4039466))

(assert (= (and d!1197743 (not c!697774)) b!4039467))

(declare-fun m!4635027 () Bool)

(assert (=> b!4039467 m!4635027))

(assert (=> b!4038839 d!1197743))

(declare-fun d!1197745 () Bool)

(declare-fun lt!1437346 () Int)

(assert (=> d!1197745 (>= lt!1437346 0)))

(declare-fun e!2506368 () Int)

(assert (=> d!1197745 (= lt!1437346 e!2506368)))

(declare-fun c!697775 () Bool)

(assert (=> d!1197745 (= c!697775 ((_ is Nil!43233) (t!334776 lt!1436852)))))

(assert (=> d!1197745 (= (size!32317 (t!334776 lt!1436852)) lt!1437346)))

(declare-fun b!4039468 () Bool)

(assert (=> b!4039468 (= e!2506368 0)))

(declare-fun b!4039469 () Bool)

(assert (=> b!4039469 (= e!2506368 (+ 1 (size!32317 (t!334776 (t!334776 lt!1436852)))))))

(assert (= (and d!1197745 c!697775) b!4039468))

(assert (= (and d!1197745 (not c!697775)) b!4039469))

(declare-fun m!4635029 () Bool)

(assert (=> b!4039469 m!4635029))

(assert (=> b!4038506 d!1197745))

(declare-fun d!1197747 () Bool)

(assert (=> d!1197747 (= lt!1436858 suffixResult!105)))

(assert (=> d!1197747 true))

(declare-fun _$63!1108 () Unit!62437)

(assert (=> d!1197747 (= (choose!24468 lt!1436870 lt!1436858 lt!1436870 suffixResult!105 lt!1436879) _$63!1108)))

(assert (=> d!1197155 d!1197747))

(assert (=> d!1197155 d!1197291))

(declare-fun d!1197749 () Bool)

(assert (=> d!1197749 (= (isEmpty!25803 (tail!6283 lt!1436870)) ((_ is Nil!43233) (tail!6283 lt!1436870)))))

(assert (=> b!4038829 d!1197749))

(assert (=> b!4038829 d!1197563))

(declare-fun d!1197751 () Bool)

(assert (=> d!1197751 (= (isEmpty!25803 lt!1436870) ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197313 d!1197751))

(declare-fun b!4039470 () Bool)

(declare-fun res!1645089 () Bool)

(declare-fun e!2506372 () Bool)

(assert (=> b!4039470 (=> (not res!1645089) (not e!2506372))))

(declare-fun call!287321 () Bool)

(assert (=> b!4039470 (= res!1645089 call!287321)))

(declare-fun e!2506373 () Bool)

(assert (=> b!4039470 (= e!2506373 e!2506372)))

(declare-fun b!4039471 () Bool)

(declare-fun res!1645092 () Bool)

(declare-fun e!2506375 () Bool)

(assert (=> b!4039471 (=> res!1645092 e!2506375)))

(assert (=> b!4039471 (= res!1645092 (not ((_ is Concat!18976) (regex!6920 (rule!9990 token!484)))))))

(assert (=> b!4039471 (= e!2506373 e!2506375)))

(declare-fun b!4039472 () Bool)

(declare-fun e!2506370 () Bool)

(declare-fun e!2506371 () Bool)

(assert (=> b!4039472 (= e!2506370 e!2506371)))

(declare-fun res!1645090 () Bool)

(assert (=> b!4039472 (= res!1645090 (not (nullable!4148 (reg!12154 (regex!6920 (rule!9990 token!484))))))))

(assert (=> b!4039472 (=> (not res!1645090) (not e!2506371))))

(declare-fun b!4039473 () Bool)

(declare-fun e!2506374 () Bool)

(assert (=> b!4039473 (= e!2506374 e!2506370)))

(declare-fun c!697777 () Bool)

(assert (=> b!4039473 (= c!697777 ((_ is Star!11825) (regex!6920 (rule!9990 token!484))))))

(declare-fun b!4039474 () Bool)

(declare-fun e!2506369 () Bool)

(assert (=> b!4039474 (= e!2506375 e!2506369)))

(declare-fun res!1645091 () Bool)

(assert (=> b!4039474 (=> (not res!1645091) (not e!2506369))))

(assert (=> b!4039474 (= res!1645091 call!287321)))

(declare-fun b!4039475 () Bool)

(assert (=> b!4039475 (= e!2506370 e!2506373)))

(declare-fun c!697776 () Bool)

(assert (=> b!4039475 (= c!697776 ((_ is Union!11825) (regex!6920 (rule!9990 token!484))))))

(declare-fun b!4039476 () Bool)

(declare-fun call!287320 () Bool)

(assert (=> b!4039476 (= e!2506371 call!287320)))

(declare-fun b!4039477 () Bool)

(declare-fun call!287322 () Bool)

(assert (=> b!4039477 (= e!2506372 call!287322)))

(declare-fun b!4039478 () Bool)

(assert (=> b!4039478 (= e!2506369 call!287322)))

(declare-fun bm!287316 () Bool)

(assert (=> bm!287316 (= call!287320 (validRegex!5348 (ite c!697777 (reg!12154 (regex!6920 (rule!9990 token!484))) (ite c!697776 (regTwo!24163 (regex!6920 (rule!9990 token!484))) (regTwo!24162 (regex!6920 (rule!9990 token!484)))))))))

(declare-fun bm!287317 () Bool)

(assert (=> bm!287317 (= call!287322 call!287320)))

(declare-fun d!1197753 () Bool)

(declare-fun res!1645088 () Bool)

(assert (=> d!1197753 (=> res!1645088 e!2506374)))

(assert (=> d!1197753 (= res!1645088 ((_ is ElementMatch!11825) (regex!6920 (rule!9990 token!484))))))

(assert (=> d!1197753 (= (validRegex!5348 (regex!6920 (rule!9990 token!484))) e!2506374)))

(declare-fun bm!287315 () Bool)

(assert (=> bm!287315 (= call!287321 (validRegex!5348 (ite c!697776 (regOne!24163 (regex!6920 (rule!9990 token!484))) (regOne!24162 (regex!6920 (rule!9990 token!484))))))))

(assert (= (and d!1197753 (not res!1645088)) b!4039473))

(assert (= (and b!4039473 c!697777) b!4039472))

(assert (= (and b!4039473 (not c!697777)) b!4039475))

(assert (= (and b!4039472 res!1645090) b!4039476))

(assert (= (and b!4039475 c!697776) b!4039470))

(assert (= (and b!4039475 (not c!697776)) b!4039471))

(assert (= (and b!4039470 res!1645089) b!4039477))

(assert (= (and b!4039471 (not res!1645092)) b!4039474))

(assert (= (and b!4039474 res!1645091) b!4039478))

(assert (= (or b!4039477 b!4039478) bm!287317))

(assert (= (or b!4039470 b!4039474) bm!287315))

(assert (= (or b!4039476 bm!287317) bm!287316))

(declare-fun m!4635031 () Bool)

(assert (=> b!4039472 m!4635031))

(declare-fun m!4635033 () Bool)

(assert (=> bm!287316 m!4635033))

(declare-fun m!4635035 () Bool)

(assert (=> bm!287315 m!4635035))

(assert (=> d!1197313 d!1197753))

(declare-fun b!4039481 () Bool)

(declare-fun e!2506380 () Bool)

(declare-fun e!2506379 () Bool)

(assert (=> b!4039481 (= e!2506380 e!2506379)))

(declare-fun res!1645098 () Bool)

(assert (=> b!4039481 (=> (not res!1645098) (not e!2506379))))

(assert (=> b!4039481 (= res!1645098 (not ((_ is Nil!43233) (tail!6283 prefix!494))))))

(declare-fun b!4039483 () Bool)

(assert (=> b!4039483 (= e!2506379 (isPrefix!4007 (tail!6283 (tail!6283 lt!1436870)) (tail!6283 (tail!6283 prefix!494))))))

(declare-fun b!4039482 () Bool)

(declare-fun res!1645097 () Bool)

(assert (=> b!4039482 (=> (not res!1645097) (not e!2506379))))

(assert (=> b!4039482 (= res!1645097 (= (head!8551 (tail!6283 lt!1436870)) (head!8551 (tail!6283 prefix!494))))))

(declare-fun d!1197755 () Bool)

(declare-fun e!2506378 () Bool)

(assert (=> d!1197755 e!2506378))

(declare-fun res!1645096 () Bool)

(assert (=> d!1197755 (=> res!1645096 e!2506378)))

(declare-fun lt!1437349 () Bool)

(assert (=> d!1197755 (= res!1645096 (not lt!1437349))))

(assert (=> d!1197755 (= lt!1437349 e!2506380)))

(declare-fun res!1645095 () Bool)

(assert (=> d!1197755 (=> res!1645095 e!2506380)))

(assert (=> d!1197755 (= res!1645095 ((_ is Nil!43233) (tail!6283 lt!1436870)))))

(assert (=> d!1197755 (= (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 prefix!494)) lt!1437349)))

(declare-fun b!4039484 () Bool)

(assert (=> b!4039484 (= e!2506378 (>= (size!32317 (tail!6283 prefix!494)) (size!32317 (tail!6283 lt!1436870))))))

(assert (= (and d!1197755 (not res!1645095)) b!4039481))

(assert (= (and b!4039481 res!1645098) b!4039482))

(assert (= (and b!4039482 res!1645097) b!4039483))

(assert (= (and d!1197755 (not res!1645096)) b!4039484))

(assert (=> b!4039483 m!4633543))

(assert (=> b!4039483 m!4634609))

(assert (=> b!4039483 m!4634035))

(declare-fun m!4635037 () Bool)

(assert (=> b!4039483 m!4635037))

(assert (=> b!4039483 m!4634609))

(assert (=> b!4039483 m!4635037))

(declare-fun m!4635039 () Bool)

(assert (=> b!4039483 m!4635039))

(assert (=> b!4039482 m!4633543))

(assert (=> b!4039482 m!4634613))

(assert (=> b!4039482 m!4634035))

(declare-fun m!4635041 () Bool)

(assert (=> b!4039482 m!4635041))

(assert (=> b!4039484 m!4634035))

(declare-fun m!4635043 () Bool)

(assert (=> b!4039484 m!4635043))

(assert (=> b!4039484 m!4633543))

(assert (=> b!4039484 m!4634739))

(assert (=> b!4038854 d!1197755))

(assert (=> b!4038854 d!1197563))

(declare-fun d!1197757 () Bool)

(assert (=> d!1197757 (= (tail!6283 prefix!494) (t!334776 prefix!494))))

(assert (=> b!4038854 d!1197757))

(declare-fun d!1197759 () Bool)

(declare-fun e!2506388 () Bool)

(assert (=> d!1197759 e!2506388))

(declare-fun res!1645103 () Bool)

(assert (=> d!1197759 (=> (not res!1645103) (not e!2506388))))

(declare-fun lt!1437353 () BalanceConc!25856)

(assert (=> d!1197759 (= res!1645103 (= (list!16094 lt!1437353) lt!1436870))))

(declare-fun fromList!859 (List!43357) Conc!13131)

(assert (=> d!1197759 (= lt!1437353 (BalanceConc!25857 (fromList!859 lt!1436870)))))

(assert (=> d!1197759 (= (fromListB!2342 lt!1436870) lt!1437353)))

(declare-fun b!4039493 () Bool)

(assert (=> b!4039493 (= e!2506388 (isBalanced!3679 (fromList!859 lt!1436870)))))

(assert (= (and d!1197759 res!1645103) b!4039493))

(declare-fun m!4635057 () Bool)

(assert (=> d!1197759 m!4635057))

(declare-fun m!4635059 () Bool)

(assert (=> d!1197759 m!4635059))

(assert (=> b!4039493 m!4635059))

(assert (=> b!4039493 m!4635059))

(declare-fun m!4635061 () Bool)

(assert (=> b!4039493 m!4635061))

(assert (=> d!1197149 d!1197759))

(assert (=> b!4038474 d!1197441))

(declare-fun d!1197771 () Bool)

(assert (=> d!1197771 (= (apply!10109 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436987))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987))))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436987))))))))

(declare-fun b_lambda!117909 () Bool)

(assert (=> (not b_lambda!117909) (not d!1197771)))

(declare-fun t!334898 () Bool)

(declare-fun tb!242771 () Bool)

(assert (=> (and b!4038253 (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))))) t!334898) tb!242771))

(declare-fun result!294264 () Bool)

(assert (=> tb!242771 (= result!294264 (inv!21 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987))))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436987)))))))))

(declare-fun m!4635067 () Bool)

(assert (=> tb!242771 m!4635067))

(assert (=> d!1197771 t!334898))

(declare-fun b_and!310479 () Bool)

(assert (= b_and!310419 (and (=> t!334898 result!294264) b_and!310479)))

(declare-fun tb!242773 () Bool)

(declare-fun t!334900 () Bool)

(assert (=> (and b!4038259 (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))))) t!334900) tb!242773))

(declare-fun result!294266 () Bool)

(assert (= result!294266 result!294264))

(assert (=> d!1197771 t!334900))

(declare-fun b_and!310481 () Bool)

(assert (= b_and!310421 (and (=> t!334900 result!294266) b_and!310481)))

(declare-fun tb!242775 () Bool)

(declare-fun t!334902 () Bool)

(assert (=> (and b!4038906 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))))) t!334902) tb!242775))

(declare-fun result!294268 () Bool)

(assert (= result!294268 result!294264))

(assert (=> d!1197771 t!334902))

(declare-fun b_and!310483 () Bool)

(assert (= b_and!310423 (and (=> t!334902 result!294268) b_and!310483)))

(assert (=> d!1197771 m!4633635))

(declare-fun m!4635073 () Bool)

(assert (=> d!1197771 m!4635073))

(assert (=> b!4038474 d!1197771))

(declare-fun d!1197779 () Bool)

(assert (=> d!1197779 (= (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436987)))) (fromListB!2342 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436987)))))))

(declare-fun bs!590780 () Bool)

(assert (= bs!590780 d!1197779))

(declare-fun m!4635075 () Bool)

(assert (=> bs!590780 m!4635075))

(assert (=> b!4038474 d!1197779))

(declare-fun d!1197781 () Bool)

(declare-fun c!697782 () Bool)

(assert (=> d!1197781 (= c!697782 ((_ is Nil!43233) lt!1436913))))

(declare-fun e!2506392 () (InoxSet C!23836))

(assert (=> d!1197781 (= (content!6573 lt!1436913) e!2506392)))

(declare-fun b!4039497 () Bool)

(assert (=> b!4039497 (= e!2506392 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039498 () Bool)

(assert (=> b!4039498 (= e!2506392 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1436913) true) (content!6573 (t!334776 lt!1436913))))))

(assert (= (and d!1197781 c!697782) b!4039497))

(assert (= (and d!1197781 (not c!697782)) b!4039498))

(declare-fun m!4635077 () Bool)

(assert (=> b!4039498 m!4635077))

(declare-fun m!4635079 () Bool)

(assert (=> b!4039498 m!4635079))

(assert (=> d!1197081 d!1197781))

(assert (=> d!1197081 d!1197425))

(declare-fun d!1197783 () Bool)

(declare-fun c!697783 () Bool)

(assert (=> d!1197783 (= c!697783 ((_ is Nil!43233) lt!1436858))))

(declare-fun e!2506393 () (InoxSet C!23836))

(assert (=> d!1197783 (= (content!6573 lt!1436858) e!2506393)))

(declare-fun b!4039499 () Bool)

(assert (=> b!4039499 (= e!2506393 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039500 () Bool)

(assert (=> b!4039500 (= e!2506393 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1436858) true) (content!6573 (t!334776 lt!1436858))))))

(assert (= (and d!1197783 c!697783) b!4039499))

(assert (= (and d!1197783 (not c!697783)) b!4039500))

(declare-fun m!4635081 () Bool)

(assert (=> b!4039500 m!4635081))

(declare-fun m!4635083 () Bool)

(assert (=> b!4039500 m!4635083))

(assert (=> d!1197081 d!1197783))

(declare-fun d!1197785 () Bool)

(declare-fun c!697784 () Bool)

(assert (=> d!1197785 (= c!697784 ((_ is Node!13131) (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484)))))))

(declare-fun e!2506394 () Bool)

(assert (=> d!1197785 (= (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484)))) e!2506394)))

(declare-fun b!4039501 () Bool)

(assert (=> b!4039501 (= e!2506394 (inv!57779 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484)))))))

(declare-fun b!4039502 () Bool)

(declare-fun e!2506395 () Bool)

(assert (=> b!4039502 (= e!2506394 e!2506395)))

(declare-fun res!1645105 () Bool)

(assert (=> b!4039502 (= res!1645105 (not ((_ is Leaf!20298) (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484))))))))

(assert (=> b!4039502 (=> res!1645105 e!2506395)))

(declare-fun b!4039503 () Bool)

(assert (=> b!4039503 (= e!2506395 (inv!57780 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484)))))))

(assert (= (and d!1197785 c!697784) b!4039501))

(assert (= (and d!1197785 (not c!697784)) b!4039502))

(assert (= (and b!4039502 (not res!1645105)) b!4039503))

(declare-fun m!4635085 () Bool)

(assert (=> b!4039501 m!4635085))

(declare-fun m!4635087 () Bool)

(assert (=> b!4039503 m!4635087))

(assert (=> b!4038371 d!1197785))

(declare-fun d!1197787 () Bool)

(assert (=> d!1197787 (= (list!16094 lt!1436949) (list!16095 (c!697516 lt!1436949)))))

(declare-fun bs!590781 () Bool)

(assert (= bs!590781 d!1197787))

(declare-fun m!4635089 () Bool)

(assert (=> bs!590781 m!4635089))

(assert (=> d!1197125 d!1197787))

(assert (=> d!1197131 d!1197143))

(declare-fun b!4039504 () Bool)

(declare-fun e!2506398 () Bool)

(declare-fun e!2506397 () Bool)

(assert (=> b!4039504 (= e!2506398 e!2506397)))

(declare-fun res!1645109 () Bool)

(assert (=> b!4039504 (=> (not res!1645109) (not e!2506397))))

(assert (=> b!4039504 (= res!1645109 (not ((_ is Nil!43233) (tail!6283 suffix!1299))))))

(declare-fun b!4039506 () Bool)

(assert (=> b!4039506 (= e!2506397 (isPrefix!4007 (tail!6283 (tail!6283 newSuffix!27)) (tail!6283 (tail!6283 suffix!1299))))))

(declare-fun b!4039505 () Bool)

(declare-fun res!1645108 () Bool)

(assert (=> b!4039505 (=> (not res!1645108) (not e!2506397))))

(assert (=> b!4039505 (= res!1645108 (= (head!8551 (tail!6283 newSuffix!27)) (head!8551 (tail!6283 suffix!1299))))))

(declare-fun d!1197789 () Bool)

(declare-fun e!2506396 () Bool)

(assert (=> d!1197789 e!2506396))

(declare-fun res!1645107 () Bool)

(assert (=> d!1197789 (=> res!1645107 e!2506396)))

(declare-fun lt!1437354 () Bool)

(assert (=> d!1197789 (= res!1645107 (not lt!1437354))))

(assert (=> d!1197789 (= lt!1437354 e!2506398)))

(declare-fun res!1645106 () Bool)

(assert (=> d!1197789 (=> res!1645106 e!2506398)))

(assert (=> d!1197789 (= res!1645106 ((_ is Nil!43233) (tail!6283 newSuffix!27)))))

(assert (=> d!1197789 (= (isPrefix!4007 (tail!6283 newSuffix!27) (tail!6283 suffix!1299)) lt!1437354)))

(declare-fun b!4039507 () Bool)

(assert (=> b!4039507 (= e!2506396 (>= (size!32317 (tail!6283 suffix!1299)) (size!32317 (tail!6283 newSuffix!27))))))

(assert (= (and d!1197789 (not res!1645106)) b!4039504))

(assert (= (and b!4039504 res!1645109) b!4039505))

(assert (= (and b!4039505 res!1645108) b!4039506))

(assert (= (and d!1197789 (not res!1645107)) b!4039507))

(assert (=> b!4039506 m!4633505))

(declare-fun m!4635091 () Bool)

(assert (=> b!4039506 m!4635091))

(assert (=> b!4039506 m!4633507))

(declare-fun m!4635093 () Bool)

(assert (=> b!4039506 m!4635093))

(assert (=> b!4039506 m!4635091))

(assert (=> b!4039506 m!4635093))

(declare-fun m!4635095 () Bool)

(assert (=> b!4039506 m!4635095))

(assert (=> b!4039505 m!4633505))

(declare-fun m!4635097 () Bool)

(assert (=> b!4039505 m!4635097))

(assert (=> b!4039505 m!4633507))

(declare-fun m!4635099 () Bool)

(assert (=> b!4039505 m!4635099))

(assert (=> b!4039507 m!4633507))

(declare-fun m!4635101 () Bool)

(assert (=> b!4039507 m!4635101))

(assert (=> b!4039507 m!4633505))

(declare-fun m!4635103 () Bool)

(assert (=> b!4039507 m!4635103))

(assert (=> b!4038423 d!1197789))

(declare-fun d!1197791 () Bool)

(assert (=> d!1197791 (= (tail!6283 newSuffix!27) (t!334776 newSuffix!27))))

(assert (=> b!4038423 d!1197791))

(declare-fun d!1197793 () Bool)

(assert (=> d!1197793 (= (tail!6283 suffix!1299) (t!334776 suffix!1299))))

(assert (=> b!4038423 d!1197793))

(declare-fun d!1197795 () Bool)

(assert (=> d!1197795 (= (isDefined!7101 lt!1436904) (not (isEmpty!25805 lt!1436904)))))

(declare-fun bs!590782 () Bool)

(assert (= bs!590782 d!1197795))

(assert (=> bs!590782 m!4633305))

(assert (=> b!4038312 d!1197795))

(assert (=> b!4038469 d!1197511))

(declare-fun b!4039510 () Bool)

(declare-fun res!1645110 () Bool)

(declare-fun e!2506400 () Bool)

(assert (=> b!4039510 (=> (not res!1645110) (not e!2506400))))

(declare-fun lt!1437355 () List!43357)

(assert (=> b!4039510 (= res!1645110 (= (size!32317 lt!1437355) (+ (size!32317 (t!334776 lt!1436870)) (size!32317 suffixResult!105))))))

(declare-fun b!4039508 () Bool)

(declare-fun e!2506399 () List!43357)

(assert (=> b!4039508 (= e!2506399 suffixResult!105)))

(declare-fun b!4039509 () Bool)

(assert (=> b!4039509 (= e!2506399 (Cons!43233 (h!48653 (t!334776 lt!1436870)) (++!11322 (t!334776 (t!334776 lt!1436870)) suffixResult!105)))))

(declare-fun d!1197797 () Bool)

(assert (=> d!1197797 e!2506400))

(declare-fun res!1645111 () Bool)

(assert (=> d!1197797 (=> (not res!1645111) (not e!2506400))))

(assert (=> d!1197797 (= res!1645111 (= (content!6573 lt!1437355) ((_ map or) (content!6573 (t!334776 lt!1436870)) (content!6573 suffixResult!105))))))

(assert (=> d!1197797 (= lt!1437355 e!2506399)))

(declare-fun c!697785 () Bool)

(assert (=> d!1197797 (= c!697785 ((_ is Nil!43233) (t!334776 lt!1436870)))))

(assert (=> d!1197797 (= (++!11322 (t!334776 lt!1436870) suffixResult!105) lt!1437355)))

(declare-fun b!4039511 () Bool)

(assert (=> b!4039511 (= e!2506400 (or (not (= suffixResult!105 Nil!43233)) (= lt!1437355 (t!334776 lt!1436870))))))

(assert (= (and d!1197797 c!697785) b!4039508))

(assert (= (and d!1197797 (not c!697785)) b!4039509))

(assert (= (and d!1197797 res!1645111) b!4039510))

(assert (= (and b!4039510 res!1645110) b!4039511))

(declare-fun m!4635105 () Bool)

(assert (=> b!4039510 m!4635105))

(assert (=> b!4039510 m!4634089))

(assert (=> b!4039510 m!4633517))

(declare-fun m!4635107 () Bool)

(assert (=> b!4039509 m!4635107))

(declare-fun m!4635109 () Bool)

(assert (=> d!1197797 m!4635109))

(assert (=> d!1197797 m!4634295))

(assert (=> d!1197797 m!4633523))

(assert (=> b!4038426 d!1197797))

(assert (=> bm!287263 d!1197751))

(declare-fun b!4039514 () Bool)

(declare-fun res!1645112 () Bool)

(declare-fun e!2506402 () Bool)

(assert (=> b!4039514 (=> (not res!1645112) (not e!2506402))))

(declare-fun lt!1437356 () List!43357)

(assert (=> b!4039514 (= res!1645112 (= (size!32317 lt!1437356) (+ (size!32317 (t!334776 lt!1436870)) (size!32317 newSuffixResult!27))))))

(declare-fun b!4039512 () Bool)

(declare-fun e!2506401 () List!43357)

(assert (=> b!4039512 (= e!2506401 newSuffixResult!27)))

(declare-fun b!4039513 () Bool)

(assert (=> b!4039513 (= e!2506401 (Cons!43233 (h!48653 (t!334776 lt!1436870)) (++!11322 (t!334776 (t!334776 lt!1436870)) newSuffixResult!27)))))

(declare-fun d!1197799 () Bool)

(assert (=> d!1197799 e!2506402))

(declare-fun res!1645113 () Bool)

(assert (=> d!1197799 (=> (not res!1645113) (not e!2506402))))

(assert (=> d!1197799 (= res!1645113 (= (content!6573 lt!1437356) ((_ map or) (content!6573 (t!334776 lt!1436870)) (content!6573 newSuffixResult!27))))))

(assert (=> d!1197799 (= lt!1437356 e!2506401)))

(declare-fun c!697786 () Bool)

(assert (=> d!1197799 (= c!697786 ((_ is Nil!43233) (t!334776 lt!1436870)))))

(assert (=> d!1197799 (= (++!11322 (t!334776 lt!1436870) newSuffixResult!27) lt!1437356)))

(declare-fun b!4039515 () Bool)

(assert (=> b!4039515 (= e!2506402 (or (not (= newSuffixResult!27 Nil!43233)) (= lt!1437356 (t!334776 lt!1436870))))))

(assert (= (and d!1197799 c!697786) b!4039512))

(assert (= (and d!1197799 (not c!697786)) b!4039513))

(assert (= (and d!1197799 res!1645113) b!4039514))

(assert (= (and b!4039514 res!1645112) b!4039515))

(declare-fun m!4635111 () Bool)

(assert (=> b!4039514 m!4635111))

(assert (=> b!4039514 m!4634089))

(assert (=> b!4039514 m!4634055))

(declare-fun m!4635113 () Bool)

(assert (=> b!4039513 m!4635113))

(declare-fun m!4635115 () Bool)

(assert (=> d!1197799 m!4635115))

(assert (=> d!1197799 m!4634295))

(assert (=> d!1197799 m!4634061))

(assert (=> b!4038788 d!1197799))

(declare-fun b!4039518 () Bool)

(declare-fun res!1645114 () Bool)

(declare-fun e!2506404 () Bool)

(assert (=> b!4039518 (=> (not res!1645114) (not e!2506404))))

(declare-fun lt!1437357 () List!43357)

(assert (=> b!4039518 (= res!1645114 (= (size!32317 lt!1437357) (+ (size!32317 (t!334776 prefix!494)) (size!32317 newSuffix!27))))))

(declare-fun b!4039516 () Bool)

(declare-fun e!2506403 () List!43357)

(assert (=> b!4039516 (= e!2506403 newSuffix!27)))

(declare-fun b!4039517 () Bool)

(assert (=> b!4039517 (= e!2506403 (Cons!43233 (h!48653 (t!334776 prefix!494)) (++!11322 (t!334776 (t!334776 prefix!494)) newSuffix!27)))))

(declare-fun d!1197801 () Bool)

(assert (=> d!1197801 e!2506404))

(declare-fun res!1645115 () Bool)

(assert (=> d!1197801 (=> (not res!1645115) (not e!2506404))))

(assert (=> d!1197801 (= res!1645115 (= (content!6573 lt!1437357) ((_ map or) (content!6573 (t!334776 prefix!494)) (content!6573 newSuffix!27))))))

(assert (=> d!1197801 (= lt!1437357 e!2506403)))

(declare-fun c!697787 () Bool)

(assert (=> d!1197801 (= c!697787 ((_ is Nil!43233) (t!334776 prefix!494)))))

(assert (=> d!1197801 (= (++!11322 (t!334776 prefix!494) newSuffix!27) lt!1437357)))

(declare-fun b!4039519 () Bool)

(assert (=> b!4039519 (= e!2506404 (or (not (= newSuffix!27 Nil!43233)) (= lt!1437357 (t!334776 prefix!494))))))

(assert (= (and d!1197801 c!697787) b!4039516))

(assert (= (and d!1197801 (not c!697787)) b!4039517))

(assert (= (and d!1197801 res!1645115) b!4039518))

(assert (= (and b!4039518 res!1645114) b!4039519))

(declare-fun m!4635117 () Bool)

(assert (=> b!4039518 m!4635117))

(assert (=> b!4039518 m!4634091))

(assert (=> b!4039518 m!4633281))

(declare-fun m!4635119 () Bool)

(assert (=> b!4039517 m!4635119))

(declare-fun m!4635121 () Bool)

(assert (=> d!1197801 m!4635121))

(assert (=> d!1197801 m!4634351))

(assert (=> d!1197801 m!4634051))

(assert (=> b!4038784 d!1197801))

(declare-fun d!1197803 () Bool)

(declare-fun lt!1437358 () Int)

(assert (=> d!1197803 (>= lt!1437358 0)))

(declare-fun e!2506405 () Int)

(assert (=> d!1197803 (= lt!1437358 e!2506405)))

(declare-fun c!697788 () Bool)

(assert (=> d!1197803 (= c!697788 ((_ is Nil!43233) lt!1437091))))

(assert (=> d!1197803 (= (size!32317 lt!1437091) lt!1437358)))

(declare-fun b!4039520 () Bool)

(assert (=> b!4039520 (= e!2506405 0)))

(declare-fun b!4039521 () Bool)

(assert (=> b!4039521 (= e!2506405 (+ 1 (size!32317 (t!334776 lt!1437091))))))

(assert (= (and d!1197803 c!697788) b!4039520))

(assert (= (and d!1197803 (not c!697788)) b!4039521))

(declare-fun m!4635123 () Bool)

(assert (=> b!4039521 m!4635123))

(assert (=> b!4038844 d!1197803))

(assert (=> b!4038844 d!1197321))

(assert (=> b!4038844 d!1197413))

(declare-fun d!1197805 () Bool)

(declare-fun lt!1437359 () Int)

(assert (=> d!1197805 (>= lt!1437359 0)))

(declare-fun e!2506406 () Int)

(assert (=> d!1197805 (= lt!1437359 e!2506406)))

(declare-fun c!697789 () Bool)

(assert (=> d!1197805 (= c!697789 ((_ is Nil!43233) (t!334776 suffix!1299)))))

(assert (=> d!1197805 (= (size!32317 (t!334776 suffix!1299)) lt!1437359)))

(declare-fun b!4039522 () Bool)

(assert (=> b!4039522 (= e!2506406 0)))

(declare-fun b!4039523 () Bool)

(assert (=> b!4039523 (= e!2506406 (+ 1 (size!32317 (t!334776 (t!334776 suffix!1299)))))))

(assert (= (and d!1197805 c!697789) b!4039522))

(assert (= (and d!1197805 (not c!697789)) b!4039523))

(declare-fun m!4635125 () Bool)

(assert (=> b!4039523 m!4635125))

(assert (=> b!4038780 d!1197805))

(declare-fun d!1197807 () Bool)

(declare-fun c!697790 () Bool)

(assert (=> d!1197807 (= c!697790 ((_ is Node!13131) (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869)))))))))

(declare-fun e!2506407 () Bool)

(assert (=> d!1197807 (= (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869)))))) e!2506407)))

(declare-fun b!4039524 () Bool)

(assert (=> b!4039524 (= e!2506407 (inv!57779 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869)))))))))

(declare-fun b!4039525 () Bool)

(declare-fun e!2506408 () Bool)

(assert (=> b!4039525 (= e!2506407 e!2506408)))

(declare-fun res!1645116 () Bool)

(assert (=> b!4039525 (= res!1645116 (not ((_ is Leaf!20298) (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869))))))))))

(assert (=> b!4039525 (=> res!1645116 e!2506408)))

(declare-fun b!4039526 () Bool)

(assert (=> b!4039526 (= e!2506408 (inv!57780 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869)))))))))

(assert (= (and d!1197807 c!697790) b!4039524))

(assert (= (and d!1197807 (not c!697790)) b!4039525))

(assert (= (and b!4039525 (not res!1645116)) b!4039526))

(declare-fun m!4635127 () Bool)

(assert (=> b!4039524 m!4635127))

(declare-fun m!4635129 () Bool)

(assert (=> b!4039526 m!4635129))

(assert (=> b!4038409 d!1197807))

(assert (=> b!4038484 d!1197473))

(declare-fun d!1197809 () Bool)

(assert (=> d!1197809 (= (head!8551 lt!1436855) (h!48653 lt!1436855))))

(assert (=> b!4038484 d!1197809))

(declare-fun d!1197811 () Bool)

(declare-fun lt!1437360 () Int)

(assert (=> d!1197811 (>= lt!1437360 0)))

(declare-fun e!2506409 () Int)

(assert (=> d!1197811 (= lt!1437360 e!2506409)))

(declare-fun c!697791 () Bool)

(assert (=> d!1197811 (= c!697791 ((_ is Nil!43233) (_2!24291 (get!14186 lt!1436904))))))

(assert (=> d!1197811 (= (size!32317 (_2!24291 (get!14186 lt!1436904))) lt!1437360)))

(declare-fun b!4039527 () Bool)

(assert (=> b!4039527 (= e!2506409 0)))

(declare-fun b!4039528 () Bool)

(assert (=> b!4039528 (= e!2506409 (+ 1 (size!32317 (t!334776 (_2!24291 (get!14186 lt!1436904))))))))

(assert (= (and d!1197811 c!697791) b!4039527))

(assert (= (and d!1197811 (not c!697791)) b!4039528))

(declare-fun m!4635131 () Bool)

(assert (=> b!4039528 m!4635131))

(assert (=> b!4038308 d!1197811))

(assert (=> b!4038308 d!1197415))

(assert (=> b!4038308 d!1197421))

(declare-fun b!4039529 () Bool)

(declare-fun e!2506412 () Bool)

(declare-fun e!2506411 () Bool)

(assert (=> b!4039529 (= e!2506412 e!2506411)))

(declare-fun res!1645120 () Bool)

(assert (=> b!4039529 (=> (not res!1645120) (not e!2506411))))

(assert (=> b!4039529 (= res!1645120 (not ((_ is Nil!43233) (++!11322 prefix!494 newSuffix!27))))))

(declare-fun b!4039531 () Bool)

(assert (=> b!4039531 (= e!2506411 (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 (++!11322 prefix!494 newSuffix!27))))))

(declare-fun b!4039530 () Bool)

(declare-fun res!1645119 () Bool)

(assert (=> b!4039530 (=> (not res!1645119) (not e!2506411))))

(assert (=> b!4039530 (= res!1645119 (= (head!8551 lt!1436870) (head!8551 (++!11322 prefix!494 newSuffix!27))))))

(declare-fun d!1197813 () Bool)

(declare-fun e!2506410 () Bool)

(assert (=> d!1197813 e!2506410))

(declare-fun res!1645118 () Bool)

(assert (=> d!1197813 (=> res!1645118 e!2506410)))

(declare-fun lt!1437361 () Bool)

(assert (=> d!1197813 (= res!1645118 (not lt!1437361))))

(assert (=> d!1197813 (= lt!1437361 e!2506412)))

(declare-fun res!1645117 () Bool)

(assert (=> d!1197813 (=> res!1645117 e!2506412)))

(assert (=> d!1197813 (= res!1645117 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197813 (= (isPrefix!4007 lt!1436870 (++!11322 prefix!494 newSuffix!27)) lt!1437361)))

(declare-fun b!4039532 () Bool)

(assert (=> b!4039532 (= e!2506410 (>= (size!32317 (++!11322 prefix!494 newSuffix!27)) (size!32317 lt!1436870)))))

(assert (= (and d!1197813 (not res!1645117)) b!4039529))

(assert (= (and b!4039529 res!1645120) b!4039530))

(assert (= (and b!4039530 res!1645119) b!4039531))

(assert (= (and d!1197813 (not res!1645118)) b!4039532))

(assert (=> b!4039531 m!4633543))

(assert (=> b!4039531 m!4633251))

(declare-fun m!4635133 () Bool)

(assert (=> b!4039531 m!4635133))

(assert (=> b!4039531 m!4633543))

(assert (=> b!4039531 m!4635133))

(declare-fun m!4635135 () Bool)

(assert (=> b!4039531 m!4635135))

(assert (=> b!4039530 m!4633549))

(assert (=> b!4039530 m!4633251))

(declare-fun m!4635137 () Bool)

(assert (=> b!4039530 m!4635137))

(assert (=> b!4039532 m!4633251))

(declare-fun m!4635139 () Bool)

(assert (=> b!4039532 m!4635139))

(assert (=> b!4039532 m!4633263))

(assert (=> d!1197317 d!1197813))

(assert (=> d!1197317 d!1197305))

(declare-fun d!1197815 () Bool)

(assert (=> d!1197815 (isPrefix!4007 lt!1436870 (++!11322 prefix!494 newSuffix!27))))

(assert (=> d!1197815 true))

(declare-fun _$58!582 () Unit!62437)

(assert (=> d!1197815 (= (choose!24472 lt!1436870 prefix!494 newSuffix!27) _$58!582)))

(declare-fun bs!590783 () Bool)

(assert (= bs!590783 d!1197815))

(assert (=> bs!590783 m!4633251))

(assert (=> bs!590783 m!4633251))

(assert (=> bs!590783 m!4634081))

(assert (=> d!1197317 d!1197815))

(assert (=> d!1197317 d!1197333))

(declare-fun d!1197817 () Bool)

(assert (=> d!1197817 true))

(declare-fun lambda!127368 () Int)

(declare-fun order!22637 () Int)

(declare-fun dynLambda!18351 (Int Int) Int)

(assert (=> d!1197817 (< (dynLambda!18346 order!22629 (toValue!9456 (transformation!6920 (rule!9990 token!484)))) (dynLambda!18351 order!22637 lambda!127368))))

(declare-fun Forall2!1089 (Int) Bool)

(assert (=> d!1197817 (= (equivClasses!2855 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))) (Forall2!1089 lambda!127368))))

(declare-fun bs!590786 () Bool)

(assert (= bs!590786 d!1197817))

(declare-fun m!4635143 () Bool)

(assert (=> bs!590786 m!4635143))

(assert (=> b!4038429 d!1197817))

(declare-fun d!1197823 () Bool)

(declare-fun e!2506415 () Bool)

(assert (=> d!1197823 e!2506415))

(declare-fun res!1645123 () Bool)

(assert (=> d!1197823 (=> (not res!1645123) (not e!2506415))))

(declare-fun lt!1437362 () BalanceConc!25856)

(assert (=> d!1197823 (= res!1645123 (= (list!16094 lt!1437362) lt!1436852))))

(assert (=> d!1197823 (= lt!1437362 (BalanceConc!25857 (fromList!859 lt!1436852)))))

(assert (=> d!1197823 (= (fromListB!2342 lt!1436852) lt!1437362)))

(declare-fun b!4039537 () Bool)

(assert (=> b!4039537 (= e!2506415 (isBalanced!3679 (fromList!859 lt!1436852)))))

(assert (= (and d!1197823 res!1645123) b!4039537))

(declare-fun m!4635145 () Bool)

(assert (=> d!1197823 m!4635145))

(declare-fun m!4635147 () Bool)

(assert (=> d!1197823 m!4635147))

(assert (=> b!4039537 m!4635147))

(assert (=> b!4039537 m!4635147))

(declare-fun m!4635149 () Bool)

(assert (=> b!4039537 m!4635149))

(assert (=> d!1197289 d!1197823))

(declare-fun b!4039540 () Bool)

(declare-fun res!1645124 () Bool)

(declare-fun e!2506417 () Bool)

(assert (=> b!4039540 (=> (not res!1645124) (not e!2506417))))

(declare-fun lt!1437363 () List!43357)

(assert (=> b!4039540 (= res!1645124 (= (size!32317 lt!1437363) (+ (size!32317 (t!334776 lt!1436852)) (size!32317 (_2!24291 (v!39731 lt!1436869))))))))

(declare-fun b!4039538 () Bool)

(declare-fun e!2506416 () List!43357)

(assert (=> b!4039538 (= e!2506416 (_2!24291 (v!39731 lt!1436869)))))

(declare-fun b!4039539 () Bool)

(assert (=> b!4039539 (= e!2506416 (Cons!43233 (h!48653 (t!334776 lt!1436852)) (++!11322 (t!334776 (t!334776 lt!1436852)) (_2!24291 (v!39731 lt!1436869)))))))

(declare-fun d!1197825 () Bool)

(assert (=> d!1197825 e!2506417))

(declare-fun res!1645125 () Bool)

(assert (=> d!1197825 (=> (not res!1645125) (not e!2506417))))

(assert (=> d!1197825 (= res!1645125 (= (content!6573 lt!1437363) ((_ map or) (content!6573 (t!334776 lt!1436852)) (content!6573 (_2!24291 (v!39731 lt!1436869))))))))

(assert (=> d!1197825 (= lt!1437363 e!2506416)))

(declare-fun c!697792 () Bool)

(assert (=> d!1197825 (= c!697792 ((_ is Nil!43233) (t!334776 lt!1436852)))))

(assert (=> d!1197825 (= (++!11322 (t!334776 lt!1436852) (_2!24291 (v!39731 lt!1436869))) lt!1437363)))

(declare-fun b!4039541 () Bool)

(assert (=> b!4039541 (= e!2506417 (or (not (= (_2!24291 (v!39731 lt!1436869)) Nil!43233)) (= lt!1437363 (t!334776 lt!1436852))))))

(assert (= (and d!1197825 c!697792) b!4039538))

(assert (= (and d!1197825 (not c!697792)) b!4039539))

(assert (= (and d!1197825 res!1645125) b!4039540))

(assert (= (and b!4039540 res!1645124) b!4039541))

(declare-fun m!4635151 () Bool)

(assert (=> b!4039540 m!4635151))

(assert (=> b!4039540 m!4633667))

(assert (=> b!4039540 m!4634131))

(declare-fun m!4635153 () Bool)

(assert (=> b!4039539 m!4635153))

(declare-fun m!4635155 () Bool)

(assert (=> d!1197825 m!4635155))

(declare-fun m!4635157 () Bool)

(assert (=> d!1197825 m!4635157))

(assert (=> d!1197825 m!4634139))

(assert (=> b!4038867 d!1197825))

(declare-fun b!4039544 () Bool)

(declare-fun res!1645126 () Bool)

(declare-fun e!2506419 () Bool)

(assert (=> b!4039544 (=> (not res!1645126) (not e!2506419))))

(declare-fun lt!1437364 () List!43357)

(assert (=> b!4039544 (= res!1645126 (= (size!32317 lt!1437364) (+ (size!32317 lt!1436870) (size!32317 (++!11322 lt!1436845 suffix!1299)))))))

(declare-fun b!4039542 () Bool)

(declare-fun e!2506418 () List!43357)

(assert (=> b!4039542 (= e!2506418 (++!11322 lt!1436845 suffix!1299))))

(declare-fun b!4039543 () Bool)

(assert (=> b!4039543 (= e!2506418 (Cons!43233 (h!48653 lt!1436870) (++!11322 (t!334776 lt!1436870) (++!11322 lt!1436845 suffix!1299))))))

(declare-fun d!1197827 () Bool)

(assert (=> d!1197827 e!2506419))

(declare-fun res!1645127 () Bool)

(assert (=> d!1197827 (=> (not res!1645127) (not e!2506419))))

(assert (=> d!1197827 (= res!1645127 (= (content!6573 lt!1437364) ((_ map or) (content!6573 lt!1436870) (content!6573 (++!11322 lt!1436845 suffix!1299)))))))

(assert (=> d!1197827 (= lt!1437364 e!2506418)))

(declare-fun c!697793 () Bool)

(assert (=> d!1197827 (= c!697793 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1197827 (= (++!11322 lt!1436870 (++!11322 lt!1436845 suffix!1299)) lt!1437364)))

(declare-fun b!4039545 () Bool)

(assert (=> b!4039545 (= e!2506419 (or (not (= (++!11322 lt!1436845 suffix!1299) Nil!43233)) (= lt!1437364 lt!1436870)))))

(assert (= (and d!1197827 c!697793) b!4039542))

(assert (= (and d!1197827 (not c!697793)) b!4039543))

(assert (= (and d!1197827 res!1645127) b!4039544))

(assert (= (and b!4039544 res!1645126) b!4039545))

(declare-fun m!4635161 () Bool)

(assert (=> b!4039544 m!4635161))

(assert (=> b!4039544 m!4633263))

(assert (=> b!4039544 m!4633211))

(declare-fun m!4635163 () Bool)

(assert (=> b!4039544 m!4635163))

(assert (=> b!4039543 m!4633211))

(declare-fun m!4635165 () Bool)

(assert (=> b!4039543 m!4635165))

(declare-fun m!4635167 () Bool)

(assert (=> d!1197827 m!4635167))

(assert (=> d!1197827 m!4633387))

(assert (=> d!1197827 m!4633211))

(declare-fun m!4635171 () Bool)

(assert (=> d!1197827 m!4635171))

(assert (=> d!1197087 d!1197827))

(assert (=> d!1197087 d!1197329))

(assert (=> d!1197087 d!1197085))

(declare-fun b!4039550 () Bool)

(declare-fun res!1645128 () Bool)

(declare-fun e!2506422 () Bool)

(assert (=> b!4039550 (=> (not res!1645128) (not e!2506422))))

(declare-fun lt!1437365 () List!43357)

(assert (=> b!4039550 (= res!1645128 (= (size!32317 lt!1437365) (+ (size!32317 (++!11322 lt!1436870 lt!1436845)) (size!32317 suffix!1299))))))

(declare-fun b!4039548 () Bool)

(declare-fun e!2506421 () List!43357)

(assert (=> b!4039548 (= e!2506421 suffix!1299)))

(declare-fun b!4039549 () Bool)

(assert (=> b!4039549 (= e!2506421 (Cons!43233 (h!48653 (++!11322 lt!1436870 lt!1436845)) (++!11322 (t!334776 (++!11322 lt!1436870 lt!1436845)) suffix!1299)))))

(declare-fun d!1197831 () Bool)

(assert (=> d!1197831 e!2506422))

(declare-fun res!1645129 () Bool)

(assert (=> d!1197831 (=> (not res!1645129) (not e!2506422))))

(assert (=> d!1197831 (= res!1645129 (= (content!6573 lt!1437365) ((_ map or) (content!6573 (++!11322 lt!1436870 lt!1436845)) (content!6573 suffix!1299))))))

(assert (=> d!1197831 (= lt!1437365 e!2506421)))

(declare-fun c!697795 () Bool)

(assert (=> d!1197831 (= c!697795 ((_ is Nil!43233) (++!11322 lt!1436870 lt!1436845)))))

(assert (=> d!1197831 (= (++!11322 (++!11322 lt!1436870 lt!1436845) suffix!1299) lt!1437365)))

(declare-fun b!4039551 () Bool)

(assert (=> b!4039551 (= e!2506422 (or (not (= suffix!1299 Nil!43233)) (= lt!1437365 (++!11322 lt!1436870 lt!1436845))))))

(assert (= (and d!1197831 c!697795) b!4039548))

(assert (= (and d!1197831 (not c!697795)) b!4039549))

(assert (= (and d!1197831 res!1645129) b!4039550))

(assert (= (and b!4039550 res!1645128) b!4039551))

(declare-fun m!4635179 () Bool)

(assert (=> b!4039550 m!4635179))

(assert (=> b!4039550 m!4633195))

(declare-fun m!4635181 () Bool)

(assert (=> b!4039550 m!4635181))

(assert (=> b!4039550 m!4633279))

(declare-fun m!4635183 () Bool)

(assert (=> b!4039549 m!4635183))

(declare-fun m!4635185 () Bool)

(assert (=> d!1197831 m!4635185))

(assert (=> d!1197831 m!4633195))

(declare-fun m!4635187 () Bool)

(assert (=> d!1197831 m!4635187))

(assert (=> d!1197831 m!4633377))

(assert (=> d!1197087 d!1197831))

(declare-fun d!1197837 () Bool)

(assert (=> d!1197837 (= (++!11322 (++!11322 lt!1436870 lt!1436845) suffix!1299) (++!11322 lt!1436870 (++!11322 lt!1436845 suffix!1299)))))

(assert (=> d!1197837 true))

(declare-fun _$52!2307 () Unit!62437)

(assert (=> d!1197837 (= (choose!24463 lt!1436870 lt!1436845 suffix!1299) _$52!2307)))

(declare-fun bs!590792 () Bool)

(assert (= bs!590792 d!1197837))

(assert (=> bs!590792 m!4633195))

(assert (=> bs!590792 m!4633195))

(assert (=> bs!590792 m!4633419))

(assert (=> bs!590792 m!4633211))

(assert (=> bs!590792 m!4633211))

(assert (=> bs!590792 m!4633417))

(assert (=> d!1197087 d!1197837))

(declare-fun b!4039562 () Bool)

(declare-fun res!1645134 () Bool)

(declare-fun e!2506429 () Bool)

(assert (=> b!4039562 (=> (not res!1645134) (not e!2506429))))

(declare-fun lt!1437373 () Option!9334)

(assert (=> b!4039562 (= res!1645134 (= (value!217854 (_1!24291 (get!14186 lt!1437373))) (apply!10109 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1437373)))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1437373)))))))))

(declare-fun call!287323 () Option!9334)

(declare-fun bm!287318 () Bool)

(assert (=> bm!287318 (= call!287323 (maxPrefixOneRule!2819 thiss!21717 (h!48655 (t!334778 rules!2999)) lt!1436879))))

(declare-fun b!4039563 () Bool)

(declare-fun e!2506428 () Option!9334)

(declare-fun lt!1437369 () Option!9334)

(declare-fun lt!1437370 () Option!9334)

(assert (=> b!4039563 (= e!2506428 (ite (and ((_ is None!9333) lt!1437369) ((_ is None!9333) lt!1437370)) None!9333 (ite ((_ is None!9333) lt!1437370) lt!1437369 (ite ((_ is None!9333) lt!1437369) lt!1437370 (ite (>= (size!32318 (_1!24291 (v!39731 lt!1437369))) (size!32318 (_1!24291 (v!39731 lt!1437370)))) lt!1437369 lt!1437370)))))))

(assert (=> b!4039563 (= lt!1437369 call!287323)))

(assert (=> b!4039563 (= lt!1437370 (maxPrefix!3807 thiss!21717 (t!334778 (t!334778 rules!2999)) lt!1436879))))

(declare-fun b!4039564 () Bool)

(assert (=> b!4039564 (= e!2506429 (contains!8588 (t!334778 rules!2999) (rule!9990 (_1!24291 (get!14186 lt!1437373)))))))

(declare-fun b!4039565 () Bool)

(declare-fun res!1645135 () Bool)

(assert (=> b!4039565 (=> (not res!1645135) (not e!2506429))))

(assert (=> b!4039565 (= res!1645135 (< (size!32317 (_2!24291 (get!14186 lt!1437373))) (size!32317 lt!1436879)))))

(declare-fun b!4039566 () Bool)

(declare-fun res!1645133 () Bool)

(assert (=> b!4039566 (=> (not res!1645133) (not e!2506429))))

(assert (=> b!4039566 (= res!1645133 (= (++!11322 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1437373)))) (_2!24291 (get!14186 lt!1437373))) lt!1436879))))

(declare-fun b!4039567 () Bool)

(assert (=> b!4039567 (= e!2506428 call!287323)))

(declare-fun b!4039568 () Bool)

(declare-fun res!1645136 () Bool)

(assert (=> b!4039568 (=> (not res!1645136) (not e!2506429))))

(assert (=> b!4039568 (= res!1645136 (= (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1437373)))) (originalCharacters!7520 (_1!24291 (get!14186 lt!1437373)))))))

(declare-fun b!4039569 () Bool)

(declare-fun e!2506430 () Bool)

(assert (=> b!4039569 (= e!2506430 e!2506429)))

(declare-fun res!1645138 () Bool)

(assert (=> b!4039569 (=> (not res!1645138) (not e!2506429))))

(assert (=> b!4039569 (= res!1645138 (isDefined!7101 lt!1437373))))

(declare-fun b!4039570 () Bool)

(declare-fun res!1645132 () Bool)

(assert (=> b!4039570 (=> (not res!1645132) (not e!2506429))))

(assert (=> b!4039570 (= res!1645132 (matchR!5778 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1437373)))) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1437373))))))))

(declare-fun d!1197847 () Bool)

(assert (=> d!1197847 e!2506430))

(declare-fun res!1645137 () Bool)

(assert (=> d!1197847 (=> res!1645137 e!2506430)))

(assert (=> d!1197847 (= res!1645137 (isEmpty!25805 lt!1437373))))

(assert (=> d!1197847 (= lt!1437373 e!2506428)))

(declare-fun c!697800 () Bool)

(assert (=> d!1197847 (= c!697800 (and ((_ is Cons!43235) (t!334778 rules!2999)) ((_ is Nil!43235) (t!334778 (t!334778 rules!2999)))))))

(declare-fun lt!1437371 () Unit!62437)

(declare-fun lt!1437372 () Unit!62437)

(assert (=> d!1197847 (= lt!1437371 lt!1437372)))

(assert (=> d!1197847 (isPrefix!4007 lt!1436879 lt!1436879)))

(assert (=> d!1197847 (= lt!1437372 (lemmaIsPrefixRefl!2574 lt!1436879 lt!1436879))))

(assert (=> d!1197847 (rulesValidInductive!2522 thiss!21717 (t!334778 rules!2999))))

(assert (=> d!1197847 (= (maxPrefix!3807 thiss!21717 (t!334778 rules!2999) lt!1436879) lt!1437373)))

(assert (= (and d!1197847 c!697800) b!4039567))

(assert (= (and d!1197847 (not c!697800)) b!4039563))

(assert (= (or b!4039567 b!4039563) bm!287318))

(assert (= (and d!1197847 (not res!1645137)) b!4039569))

(assert (= (and b!4039569 res!1645138) b!4039568))

(assert (= (and b!4039568 res!1645136) b!4039565))

(assert (= (and b!4039565 res!1645135) b!4039566))

(assert (= (and b!4039566 res!1645133) b!4039562))

(assert (= (and b!4039562 res!1645134) b!4039570))

(assert (= (and b!4039570 res!1645132) b!4039564))

(declare-fun m!4635203 () Bool)

(assert (=> b!4039563 m!4635203))

(declare-fun m!4635205 () Bool)

(assert (=> bm!287318 m!4635205))

(declare-fun m!4635207 () Bool)

(assert (=> b!4039564 m!4635207))

(declare-fun m!4635209 () Bool)

(assert (=> b!4039564 m!4635209))

(declare-fun m!4635211 () Bool)

(assert (=> b!4039569 m!4635211))

(declare-fun m!4635213 () Bool)

(assert (=> d!1197847 m!4635213))

(assert (=> d!1197847 m!4633275))

(assert (=> d!1197847 m!4633277))

(assert (=> d!1197847 m!4634259))

(assert (=> b!4039568 m!4635207))

(declare-fun m!4635215 () Bool)

(assert (=> b!4039568 m!4635215))

(assert (=> b!4039568 m!4635215))

(declare-fun m!4635217 () Bool)

(assert (=> b!4039568 m!4635217))

(assert (=> b!4039566 m!4635207))

(assert (=> b!4039566 m!4635215))

(assert (=> b!4039566 m!4635215))

(assert (=> b!4039566 m!4635217))

(assert (=> b!4039566 m!4635217))

(declare-fun m!4635223 () Bool)

(assert (=> b!4039566 m!4635223))

(assert (=> b!4039570 m!4635207))

(assert (=> b!4039570 m!4635215))

(assert (=> b!4039570 m!4635215))

(assert (=> b!4039570 m!4635217))

(assert (=> b!4039570 m!4635217))

(declare-fun m!4635227 () Bool)

(assert (=> b!4039570 m!4635227))

(assert (=> b!4039562 m!4635207))

(declare-fun m!4635229 () Bool)

(assert (=> b!4039562 m!4635229))

(assert (=> b!4039562 m!4635229))

(declare-fun m!4635233 () Bool)

(assert (=> b!4039562 m!4635233))

(assert (=> b!4039565 m!4635207))

(declare-fun m!4635235 () Bool)

(assert (=> b!4039565 m!4635235))

(assert (=> b!4039565 m!4633345))

(assert (=> b!4038306 d!1197847))

(declare-fun bs!590793 () Bool)

(declare-fun d!1197855 () Bool)

(assert (= bs!590793 (and d!1197855 d!1197179)))

(declare-fun lambda!127370 () Int)

(assert (=> bs!590793 (= (and (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (= lambda!127370 lambda!127345))))

(declare-fun bs!590794 () Bool)

(assert (= bs!590794 (and d!1197855 d!1197625)))

(assert (=> bs!590794 (= (and (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (h!48655 rules!2999)))) (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (h!48655 rules!2999))))) (= lambda!127370 lambda!127363))))

(declare-fun b!4039589 () Bool)

(declare-fun e!2506444 () Bool)

(assert (=> b!4039589 (= e!2506444 true)))

(assert (=> d!1197855 e!2506444))

(assert (= d!1197855 b!4039589))

(assert (=> b!4039589 (< (dynLambda!18346 order!22629 (toValue!9456 (transformation!6920 (rule!9990 token!484)))) (dynLambda!18347 order!22631 lambda!127370))))

(assert (=> b!4039589 (< (dynLambda!18348 order!22633 (toChars!9315 (transformation!6920 (rule!9990 token!484)))) (dynLambda!18347 order!22631 lambda!127370))))

(assert (=> d!1197855 (= (list!16094 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 (_1!24293 lt!1436972))))) (list!16094 (seqFromList!5137 (_1!24293 lt!1436972))))))

(declare-fun lt!1437377 () Unit!62437)

(assert (=> d!1197855 (= lt!1437377 (ForallOf!823 lambda!127370 (seqFromList!5137 (_1!24293 lt!1436972))))))

(assert (=> d!1197855 (= (lemmaSemiInverse!1905 (transformation!6920 (rule!9990 token!484)) (seqFromList!5137 (_1!24293 lt!1436972))) lt!1437377)))

(declare-fun b_lambda!117911 () Bool)

(assert (=> (not b_lambda!117911) (not d!1197855)))

(declare-fun t!334904 () Bool)

(declare-fun tb!242777 () Bool)

(assert (=> (and b!4038253 (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (rule!9990 token!484)))) t!334904) tb!242777))

(declare-fun b!4039604 () Bool)

(declare-fun e!2506452 () Bool)

(declare-fun tp!1226557 () Bool)

(assert (=> b!4039604 (= e!2506452 (and (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 (_1!24293 lt!1436972)))))) tp!1226557))))

(declare-fun result!294270 () Bool)

(assert (=> tb!242777 (= result!294270 (and (inv!57776 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 (_1!24293 lt!1436972))))) e!2506452))))

(assert (= tb!242777 b!4039604))

(declare-fun m!4635251 () Bool)

(assert (=> b!4039604 m!4635251))

(declare-fun m!4635253 () Bool)

(assert (=> tb!242777 m!4635253))

(assert (=> d!1197855 t!334904))

(declare-fun b_and!310485 () Bool)

(assert (= b_and!310437 (and (=> t!334904 result!294270) b_and!310485)))

(declare-fun t!334906 () Bool)

(declare-fun tb!242779 () Bool)

(assert (=> (and b!4038259 (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 token!484)))) t!334906) tb!242779))

(declare-fun result!294272 () Bool)

(assert (= result!294272 result!294270))

(assert (=> d!1197855 t!334906))

(declare-fun b_and!310487 () Bool)

(assert (= b_and!310439 (and (=> t!334906 result!294272) b_and!310487)))

(declare-fun t!334908 () Bool)

(declare-fun tb!242781 () Bool)

(assert (=> (and b!4038906 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toChars!9315 (transformation!6920 (rule!9990 token!484)))) t!334908) tb!242781))

(declare-fun result!294274 () Bool)

(assert (= result!294274 result!294270))

(assert (=> d!1197855 t!334908))

(declare-fun b_and!310489 () Bool)

(assert (= b_and!310441 (and (=> t!334908 result!294274) b_and!310489)))

(declare-fun b_lambda!117913 () Bool)

(assert (=> (not b_lambda!117913) (not d!1197855)))

(declare-fun t!334910 () Bool)

(declare-fun tb!242783 () Bool)

(assert (=> (and b!4038253 (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))) t!334910) tb!242783))

(declare-fun result!294276 () Bool)

(assert (=> tb!242783 (= result!294276 (inv!21 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 (_1!24293 lt!1436972)))))))

(declare-fun m!4635257 () Bool)

(assert (=> tb!242783 m!4635257))

(assert (=> d!1197855 t!334910))

(declare-fun b_and!310491 () Bool)

(assert (= b_and!310479 (and (=> t!334910 result!294276) b_and!310491)))

(declare-fun t!334912 () Bool)

(declare-fun tb!242785 () Bool)

(assert (=> (and b!4038259 (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))) t!334912) tb!242785))

(declare-fun result!294278 () Bool)

(assert (= result!294278 result!294276))

(assert (=> d!1197855 t!334912))

(declare-fun b_and!310493 () Bool)

(assert (= b_and!310481 (and (=> t!334912 result!294278) b_and!310493)))

(declare-fun t!334914 () Bool)

(declare-fun tb!242787 () Bool)

(assert (=> (and b!4038906 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))) t!334914) tb!242787))

(declare-fun result!294280 () Bool)

(assert (= result!294280 result!294276))

(assert (=> d!1197855 t!334914))

(declare-fun b_and!310495 () Bool)

(assert (= b_and!310483 (and (=> t!334914 result!294280) b_and!310495)))

(assert (=> d!1197855 m!4633589))

(declare-fun m!4635267 () Bool)

(assert (=> d!1197855 m!4635267))

(assert (=> d!1197855 m!4633589))

(declare-fun m!4635269 () Bool)

(assert (=> d!1197855 m!4635269))

(assert (=> d!1197855 m!4633589))

(declare-fun m!4635271 () Bool)

(assert (=> d!1197855 m!4635271))

(declare-fun m!4635273 () Bool)

(assert (=> d!1197855 m!4635273))

(declare-fun m!4635275 () Bool)

(assert (=> d!1197855 m!4635275))

(assert (=> d!1197855 m!4635271))

(assert (=> d!1197855 m!4635273))

(assert (=> b!4038463 d!1197855))

(declare-fun d!1197865 () Bool)

(declare-fun e!2506466 () Bool)

(assert (=> d!1197865 e!2506466))

(declare-fun res!1645161 () Bool)

(assert (=> d!1197865 (=> res!1645161 e!2506466)))

(assert (=> d!1197865 (= res!1645161 (isEmpty!25803 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))))))

(declare-fun lt!1437384 () Unit!62437)

(declare-fun choose!24478 (Regex!11825 List!43357) Unit!62437)

(assert (=> d!1197865 (= lt!1437384 (choose!24478 (regex!6920 (rule!9990 token!484)) lt!1436879))))

(assert (=> d!1197865 (validRegex!5348 (regex!6920 (rule!9990 token!484)))))

(assert (=> d!1197865 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1358 (regex!6920 (rule!9990 token!484)) lt!1436879) lt!1437384)))

(declare-fun b!4039627 () Bool)

(assert (=> b!4039627 (= e!2506466 (matchR!5778 (regex!6920 (rule!9990 token!484)) (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))))))

(assert (= (and d!1197865 (not res!1645161)) b!4039627))

(assert (=> d!1197865 m!4633345))

(declare-fun m!4635277 () Bool)

(assert (=> d!1197865 m!4635277))

(assert (=> d!1197865 m!4633599))

(assert (=> d!1197865 m!4633529))

(assert (=> d!1197865 m!4633583))

(assert (=> d!1197865 m!4633345))

(assert (=> d!1197865 m!4633585))

(assert (=> d!1197865 m!4633583))

(assert (=> b!4039627 m!4633583))

(assert (=> b!4039627 m!4633345))

(assert (=> b!4039627 m!4633583))

(assert (=> b!4039627 m!4633345))

(assert (=> b!4039627 m!4633585))

(assert (=> b!4039627 m!4633587))

(assert (=> b!4038463 d!1197865))

(declare-fun d!1197867 () Bool)

(declare-fun lt!1437385 () Int)

(assert (=> d!1197867 (>= lt!1437385 0)))

(declare-fun e!2506467 () Int)

(assert (=> d!1197867 (= lt!1437385 e!2506467)))

(declare-fun c!697817 () Bool)

(assert (=> d!1197867 (= c!697817 ((_ is Nil!43233) Nil!43233))))

(assert (=> d!1197867 (= (size!32317 Nil!43233) lt!1437385)))

(declare-fun b!4039628 () Bool)

(assert (=> b!4039628 (= e!2506467 0)))

(declare-fun b!4039629 () Bool)

(assert (=> b!4039629 (= e!2506467 (+ 1 (size!32317 (t!334776 Nil!43233))))))

(assert (= (and d!1197867 c!697817) b!4039628))

(assert (= (and d!1197867 (not c!697817)) b!4039629))

(declare-fun m!4635279 () Bool)

(assert (=> b!4039629 m!4635279))

(assert (=> b!4038463 d!1197867))

(assert (=> b!4038463 d!1197421))

(declare-fun d!1197869 () Bool)

(assert (=> d!1197869 (= (seqFromList!5137 (_1!24293 lt!1436972)) (fromListB!2342 (_1!24293 lt!1436972)))))

(declare-fun bs!590795 () Bool)

(assert (= bs!590795 d!1197869))

(declare-fun m!4635281 () Bool)

(assert (=> bs!590795 m!4635281))

(assert (=> b!4038463 d!1197869))

(declare-fun d!1197871 () Bool)

(assert (=> d!1197871 (= (apply!10109 (transformation!6920 (rule!9990 token!484)) (seqFromList!5137 (_1!24293 lt!1436972))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 token!484))) (seqFromList!5137 (_1!24293 lt!1436972))))))

(declare-fun b_lambda!117915 () Bool)

(assert (=> (not b_lambda!117915) (not d!1197871)))

(assert (=> d!1197871 t!334910))

(declare-fun b_and!310497 () Bool)

(assert (= b_and!310491 (and (=> t!334910 result!294276) b_and!310497)))

(assert (=> d!1197871 t!334912))

(declare-fun b_and!310499 () Bool)

(assert (= b_and!310493 (and (=> t!334912 result!294278) b_and!310499)))

(assert (=> d!1197871 t!334914))

(declare-fun b_and!310501 () Bool)

(assert (= b_and!310495 (and (=> t!334914 result!294280) b_and!310501)))

(assert (=> d!1197871 m!4633589))

(assert (=> d!1197871 m!4635271))

(assert (=> b!4038463 d!1197871))

(declare-fun d!1197873 () Bool)

(declare-fun lt!1437389 () Int)

(assert (=> d!1197873 (= lt!1437389 (size!32317 (list!16094 (seqFromList!5137 (_1!24293 lt!1436972)))))))

(declare-fun size!32322 (Conc!13131) Int)

(assert (=> d!1197873 (= lt!1437389 (size!32322 (c!697516 (seqFromList!5137 (_1!24293 lt!1436972)))))))

(assert (=> d!1197873 (= (size!32320 (seqFromList!5137 (_1!24293 lt!1436972))) lt!1437389)))

(declare-fun bs!590796 () Bool)

(assert (= bs!590796 d!1197873))

(assert (=> bs!590796 m!4633589))

(assert (=> bs!590796 m!4635267))

(assert (=> bs!590796 m!4635267))

(declare-fun m!4635291 () Bool)

(assert (=> bs!590796 m!4635291))

(declare-fun m!4635293 () Bool)

(assert (=> bs!590796 m!4635293))

(assert (=> b!4038463 d!1197873))

(declare-fun d!1197879 () Bool)

(assert (=> d!1197879 (= (isEmpty!25803 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))) ((_ is Nil!43233) (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))))))

(assert (=> b!4038463 d!1197879))

(declare-fun b!4039942 () Bool)

(declare-fun e!2506646 () Unit!62437)

(declare-fun Unit!62450 () Unit!62437)

(assert (=> b!4039942 (= e!2506646 Unit!62450)))

(declare-fun lt!1437488 () Unit!62437)

(declare-fun call!287374 () Unit!62437)

(assert (=> b!4039942 (= lt!1437488 call!287374)))

(declare-fun call!287371 () Bool)

(assert (=> b!4039942 call!287371))

(declare-fun lt!1437501 () Unit!62437)

(assert (=> b!4039942 (= lt!1437501 lt!1437488)))

(declare-fun lt!1437502 () Unit!62437)

(declare-fun call!287373 () Unit!62437)

(assert (=> b!4039942 (= lt!1437502 call!287373)))

(assert (=> b!4039942 (= lt!1436879 Nil!43233)))

(declare-fun lt!1437489 () Unit!62437)

(assert (=> b!4039942 (= lt!1437489 lt!1437502)))

(assert (=> b!4039942 false))

(declare-fun b!4039943 () Bool)

(declare-fun Unit!62451 () Unit!62437)

(assert (=> b!4039943 (= e!2506646 Unit!62451)))

(declare-fun b!4039944 () Bool)

(declare-fun e!2506650 () tuple2!42318)

(declare-fun lt!1437499 () tuple2!42318)

(assert (=> b!4039944 (= e!2506650 lt!1437499)))

(declare-fun call!287369 () tuple2!42318)

(declare-fun bm!287363 () Bool)

(declare-fun call!287375 () Regex!11825)

(declare-fun call!287368 () List!43357)

(declare-fun lt!1437487 () List!43357)

(assert (=> bm!287363 (= call!287369 (findLongestMatchInner!1385 call!287375 lt!1437487 (+ (size!32317 Nil!43233) 1) call!287368 lt!1436879 (size!32317 lt!1436879)))))

(declare-fun d!1197881 () Bool)

(declare-fun e!2506645 () Bool)

(assert (=> d!1197881 e!2506645))

(declare-fun res!1645258 () Bool)

(assert (=> d!1197881 (=> (not res!1645258) (not e!2506645))))

(declare-fun lt!1437505 () tuple2!42318)

(assert (=> d!1197881 (= res!1645258 (= (++!11322 (_1!24293 lt!1437505) (_2!24293 lt!1437505)) lt!1436879))))

(declare-fun e!2506644 () tuple2!42318)

(assert (=> d!1197881 (= lt!1437505 e!2506644)))

(declare-fun c!697890 () Bool)

(declare-fun lostCause!1009 (Regex!11825) Bool)

(assert (=> d!1197881 (= c!697890 (lostCause!1009 (regex!6920 (rule!9990 token!484))))))

(declare-fun lt!1437496 () Unit!62437)

(declare-fun Unit!62452 () Unit!62437)

(assert (=> d!1197881 (= lt!1437496 Unit!62452)))

(assert (=> d!1197881 (= (getSuffix!2424 lt!1436879 Nil!43233) lt!1436879)))

(declare-fun lt!1437504 () Unit!62437)

(declare-fun lt!1437495 () Unit!62437)

(assert (=> d!1197881 (= lt!1437504 lt!1437495)))

(declare-fun lt!1437510 () List!43357)

(assert (=> d!1197881 (= lt!1436879 lt!1437510)))

(assert (=> d!1197881 (= lt!1437495 (lemmaSamePrefixThenSameSuffix!2168 Nil!43233 lt!1436879 Nil!43233 lt!1437510 lt!1436879))))

(assert (=> d!1197881 (= lt!1437510 (getSuffix!2424 lt!1436879 Nil!43233))))

(declare-fun lt!1437490 () Unit!62437)

(declare-fun lt!1437497 () Unit!62437)

(assert (=> d!1197881 (= lt!1437490 lt!1437497)))

(assert (=> d!1197881 (isPrefix!4007 Nil!43233 (++!11322 Nil!43233 lt!1436879))))

(assert (=> d!1197881 (= lt!1437497 (lemmaConcatTwoListThenFirstIsPrefix!2842 Nil!43233 lt!1436879))))

(assert (=> d!1197881 (validRegex!5348 (regex!6920 (rule!9990 token!484)))))

(assert (=> d!1197881 (= (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)) lt!1437505)))

(declare-fun b!4039945 () Bool)

(declare-fun c!697892 () Bool)

(declare-fun call!287370 () Bool)

(assert (=> b!4039945 (= c!697892 call!287370)))

(declare-fun lt!1437512 () Unit!62437)

(declare-fun lt!1437500 () Unit!62437)

(assert (=> b!4039945 (= lt!1437512 lt!1437500)))

(declare-fun lt!1437491 () C!23836)

(declare-fun lt!1437506 () List!43357)

(assert (=> b!4039945 (= (++!11322 (++!11322 Nil!43233 (Cons!43233 lt!1437491 Nil!43233)) lt!1437506) lt!1436879)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1253 (List!43357 C!23836 List!43357 List!43357) Unit!62437)

(assert (=> b!4039945 (= lt!1437500 (lemmaMoveElementToOtherListKeepsConcatEq!1253 Nil!43233 lt!1437491 lt!1437506 lt!1436879))))

(assert (=> b!4039945 (= lt!1437506 (tail!6283 lt!1436879))))

(assert (=> b!4039945 (= lt!1437491 (head!8551 lt!1436879))))

(declare-fun lt!1437508 () Unit!62437)

(declare-fun lt!1437486 () Unit!62437)

(assert (=> b!4039945 (= lt!1437508 lt!1437486)))

(assert (=> b!4039945 (isPrefix!4007 (++!11322 Nil!43233 (Cons!43233 (head!8551 (getSuffix!2424 lt!1436879 Nil!43233)) Nil!43233)) lt!1436879)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!635 (List!43357 List!43357) Unit!62437)

(assert (=> b!4039945 (= lt!1437486 (lemmaAddHeadSuffixToPrefixStillPrefix!635 Nil!43233 lt!1436879))))

(declare-fun lt!1437492 () Unit!62437)

(declare-fun lt!1437507 () Unit!62437)

(assert (=> b!4039945 (= lt!1437492 lt!1437507)))

(assert (=> b!4039945 (= lt!1437507 (lemmaAddHeadSuffixToPrefixStillPrefix!635 Nil!43233 lt!1436879))))

(assert (=> b!4039945 (= lt!1437487 (++!11322 Nil!43233 (Cons!43233 (head!8551 lt!1436879) Nil!43233)))))

(declare-fun lt!1437511 () Unit!62437)

(assert (=> b!4039945 (= lt!1437511 e!2506646)))

(declare-fun c!697894 () Bool)

(assert (=> b!4039945 (= c!697894 (= (size!32317 Nil!43233) (size!32317 lt!1436879)))))

(declare-fun lt!1437498 () Unit!62437)

(declare-fun lt!1437494 () Unit!62437)

(assert (=> b!4039945 (= lt!1437498 lt!1437494)))

(assert (=> b!4039945 (<= (size!32317 Nil!43233) (size!32317 lt!1436879))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!443 (List!43357 List!43357) Unit!62437)

(assert (=> b!4039945 (= lt!1437494 (lemmaIsPrefixThenSmallerEqSize!443 Nil!43233 lt!1436879))))

(declare-fun e!2506647 () tuple2!42318)

(declare-fun e!2506649 () tuple2!42318)

(assert (=> b!4039945 (= e!2506647 e!2506649)))

(declare-fun b!4039946 () Bool)

(assert (=> b!4039946 (= e!2506649 call!287369)))

(declare-fun bm!287364 () Bool)

(declare-fun call!287372 () C!23836)

(assert (=> bm!287364 (= call!287375 (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) call!287372))))

(declare-fun b!4039947 () Bool)

(declare-fun c!697895 () Bool)

(assert (=> b!4039947 (= c!697895 call!287370)))

(declare-fun lt!1437503 () Unit!62437)

(declare-fun lt!1437493 () Unit!62437)

(assert (=> b!4039947 (= lt!1437503 lt!1437493)))

(assert (=> b!4039947 (= lt!1436879 Nil!43233)))

(assert (=> b!4039947 (= lt!1437493 call!287373)))

(declare-fun lt!1437509 () Unit!62437)

(declare-fun lt!1437513 () Unit!62437)

(assert (=> b!4039947 (= lt!1437509 lt!1437513)))

(assert (=> b!4039947 call!287371))

(assert (=> b!4039947 (= lt!1437513 call!287374)))

(declare-fun e!2506643 () tuple2!42318)

(assert (=> b!4039947 (= e!2506647 e!2506643)))

(declare-fun bm!287365 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!919 (List!43357 List!43357 List!43357) Unit!62437)

(assert (=> bm!287365 (= call!287373 (lemmaIsPrefixSameLengthThenSameList!919 lt!1436879 Nil!43233 lt!1436879))))

(declare-fun b!4039948 () Bool)

(assert (=> b!4039948 (= e!2506643 (tuple2!42319 Nil!43233 Nil!43233))))

(declare-fun b!4039949 () Bool)

(assert (=> b!4039949 (= e!2506644 e!2506647)))

(declare-fun c!697891 () Bool)

(assert (=> b!4039949 (= c!697891 (= (size!32317 Nil!43233) (size!32317 lt!1436879)))))

(declare-fun bm!287366 () Bool)

(assert (=> bm!287366 (= call!287370 (nullable!4148 (regex!6920 (rule!9990 token!484))))))

(declare-fun bm!287367 () Bool)

(assert (=> bm!287367 (= call!287372 (head!8551 lt!1436879))))

(declare-fun b!4039950 () Bool)

(assert (=> b!4039950 (= e!2506650 (tuple2!42319 Nil!43233 lt!1436879))))

(declare-fun b!4039951 () Bool)

(assert (=> b!4039951 (= e!2506644 (tuple2!42319 Nil!43233 lt!1436879))))

(declare-fun b!4039952 () Bool)

(assert (=> b!4039952 (= e!2506649 e!2506650)))

(assert (=> b!4039952 (= lt!1437499 call!287369)))

(declare-fun c!697893 () Bool)

(assert (=> b!4039952 (= c!697893 (isEmpty!25803 (_1!24293 lt!1437499)))))

(declare-fun bm!287368 () Bool)

(assert (=> bm!287368 (= call!287374 (lemmaIsPrefixRefl!2574 lt!1436879 lt!1436879))))

(declare-fun bm!287369 () Bool)

(assert (=> bm!287369 (= call!287371 (isPrefix!4007 lt!1436879 lt!1436879))))

(declare-fun b!4039953 () Bool)

(declare-fun e!2506648 () Bool)

(assert (=> b!4039953 (= e!2506648 (>= (size!32317 (_1!24293 lt!1437505)) (size!32317 Nil!43233)))))

(declare-fun b!4039954 () Bool)

(assert (=> b!4039954 (= e!2506643 (tuple2!42319 Nil!43233 lt!1436879))))

(declare-fun b!4039955 () Bool)

(assert (=> b!4039955 (= e!2506645 e!2506648)))

(declare-fun res!1645257 () Bool)

(assert (=> b!4039955 (=> res!1645257 e!2506648)))

(assert (=> b!4039955 (= res!1645257 (isEmpty!25803 (_1!24293 lt!1437505)))))

(declare-fun bm!287370 () Bool)

(assert (=> bm!287370 (= call!287368 (tail!6283 lt!1436879))))

(assert (= (and d!1197881 c!697890) b!4039951))

(assert (= (and d!1197881 (not c!697890)) b!4039949))

(assert (= (and b!4039949 c!697891) b!4039947))

(assert (= (and b!4039949 (not c!697891)) b!4039945))

(assert (= (and b!4039947 c!697895) b!4039948))

(assert (= (and b!4039947 (not c!697895)) b!4039954))

(assert (= (and b!4039945 c!697894) b!4039942))

(assert (= (and b!4039945 (not c!697894)) b!4039943))

(assert (= (and b!4039945 c!697892) b!4039952))

(assert (= (and b!4039945 (not c!697892)) b!4039946))

(assert (= (and b!4039952 c!697893) b!4039950))

(assert (= (and b!4039952 (not c!697893)) b!4039944))

(assert (= (or b!4039952 b!4039946) bm!287367))

(assert (= (or b!4039952 b!4039946) bm!287370))

(assert (= (or b!4039952 b!4039946) bm!287364))

(assert (= (or b!4039952 b!4039946) bm!287363))

(assert (= (or b!4039947 b!4039942) bm!287369))

(assert (= (or b!4039947 b!4039945) bm!287366))

(assert (= (or b!4039947 b!4039942) bm!287365))

(assert (= (or b!4039947 b!4039942) bm!287368))

(assert (= (and d!1197881 res!1645258) b!4039955))

(assert (= (and b!4039955 (not res!1645257)) b!4039953))

(declare-fun m!4635655 () Bool)

(assert (=> bm!287365 m!4635655))

(declare-fun m!4635657 () Bool)

(assert (=> b!4039952 m!4635657))

(declare-fun m!4635659 () Bool)

(assert (=> b!4039955 m!4635659))

(assert (=> bm!287369 m!4633275))

(declare-fun m!4635661 () Bool)

(assert (=> bm!287364 m!4635661))

(declare-fun m!4635663 () Bool)

(assert (=> b!4039953 m!4635663))

(assert (=> b!4039953 m!4633583))

(assert (=> bm!287367 m!4634017))

(assert (=> bm!287368 m!4633277))

(assert (=> bm!287363 m!4633345))

(declare-fun m!4635665 () Bool)

(assert (=> bm!287363 m!4635665))

(declare-fun m!4635667 () Bool)

(assert (=> d!1197881 m!4635667))

(declare-fun m!4635669 () Bool)

(assert (=> d!1197881 m!4635669))

(declare-fun m!4635671 () Bool)

(assert (=> d!1197881 m!4635671))

(assert (=> d!1197881 m!4633529))

(declare-fun m!4635673 () Bool)

(assert (=> d!1197881 m!4635673))

(declare-fun m!4635675 () Bool)

(assert (=> d!1197881 m!4635675))

(declare-fun m!4635677 () Bool)

(assert (=> d!1197881 m!4635677))

(assert (=> d!1197881 m!4635669))

(declare-fun m!4635679 () Bool)

(assert (=> d!1197881 m!4635679))

(declare-fun m!4635681 () Bool)

(assert (=> b!4039945 m!4635681))

(declare-fun m!4635683 () Bool)

(assert (=> b!4039945 m!4635683))

(declare-fun m!4635685 () Bool)

(assert (=> b!4039945 m!4635685))

(assert (=> b!4039945 m!4634017))

(declare-fun m!4635687 () Bool)

(assert (=> b!4039945 m!4635687))

(declare-fun m!4635689 () Bool)

(assert (=> b!4039945 m!4635689))

(declare-fun m!4635691 () Bool)

(assert (=> b!4039945 m!4635691))

(assert (=> b!4039945 m!4635673))

(declare-fun m!4635693 () Bool)

(assert (=> b!4039945 m!4635693))

(assert (=> b!4039945 m!4633345))

(assert (=> b!4039945 m!4635681))

(declare-fun m!4635695 () Bool)

(assert (=> b!4039945 m!4635695))

(assert (=> b!4039945 m!4634013))

(assert (=> b!4039945 m!4635673))

(assert (=> b!4039945 m!4635687))

(declare-fun m!4635697 () Bool)

(assert (=> b!4039945 m!4635697))

(assert (=> b!4039945 m!4633583))

(assert (=> bm!287366 m!4633531))

(assert (=> bm!287370 m!4634013))

(assert (=> b!4038463 d!1197881))

(declare-fun d!1198053 () Bool)

(declare-fun lt!1437514 () Int)

(assert (=> d!1198053 (>= lt!1437514 0)))

(declare-fun e!2506651 () Int)

(assert (=> d!1198053 (= lt!1437514 e!2506651)))

(declare-fun c!697896 () Bool)

(assert (=> d!1198053 (= c!697896 ((_ is Nil!43233) lt!1437099))))

(assert (=> d!1198053 (= (size!32317 lt!1437099) lt!1437514)))

(declare-fun b!4039956 () Bool)

(assert (=> b!4039956 (= e!2506651 0)))

(declare-fun b!4039957 () Bool)

(assert (=> b!4039957 (= e!2506651 (+ 1 (size!32317 (t!334776 lt!1437099))))))

(assert (= (and d!1198053 c!697896) b!4039956))

(assert (= (and d!1198053 (not c!697896)) b!4039957))

(declare-fun m!4635699 () Bool)

(assert (=> b!4039957 m!4635699))

(assert (=> b!4038858 d!1198053))

(assert (=> b!4038858 d!1197321))

(declare-fun d!1198055 () Bool)

(declare-fun lt!1437515 () Int)

(assert (=> d!1198055 (>= lt!1437515 0)))

(declare-fun e!2506652 () Int)

(assert (=> d!1198055 (= lt!1437515 e!2506652)))

(declare-fun c!697897 () Bool)

(assert (=> d!1198055 (= c!697897 ((_ is Nil!43233) lt!1436867))))

(assert (=> d!1198055 (= (size!32317 lt!1436867) lt!1437515)))

(declare-fun b!4039958 () Bool)

(assert (=> b!4039958 (= e!2506652 0)))

(declare-fun b!4039959 () Bool)

(assert (=> b!4039959 (= e!2506652 (+ 1 (size!32317 (t!334776 lt!1436867))))))

(assert (= (and d!1198055 c!697897) b!4039958))

(assert (= (and d!1198055 (not c!697897)) b!4039959))

(declare-fun m!4635701 () Bool)

(assert (=> b!4039959 m!4635701))

(assert (=> b!4038858 d!1198055))

(declare-fun b!4039962 () Bool)

(declare-fun res!1645259 () Bool)

(declare-fun e!2506654 () Bool)

(assert (=> b!4039962 (=> (not res!1645259) (not e!2506654))))

(declare-fun lt!1437516 () List!43357)

(assert (=> b!4039962 (= res!1645259 (= (size!32317 lt!1437516) (+ (size!32317 (t!334776 lt!1436874)) (size!32317 suffix!1299))))))

(declare-fun b!4039960 () Bool)

(declare-fun e!2506653 () List!43357)

(assert (=> b!4039960 (= e!2506653 suffix!1299)))

(declare-fun b!4039961 () Bool)

(assert (=> b!4039961 (= e!2506653 (Cons!43233 (h!48653 (t!334776 lt!1436874)) (++!11322 (t!334776 (t!334776 lt!1436874)) suffix!1299)))))

(declare-fun d!1198057 () Bool)

(assert (=> d!1198057 e!2506654))

(declare-fun res!1645260 () Bool)

(assert (=> d!1198057 (=> (not res!1645260) (not e!2506654))))

(assert (=> d!1198057 (= res!1645260 (= (content!6573 lt!1437516) ((_ map or) (content!6573 (t!334776 lt!1436874)) (content!6573 suffix!1299))))))

(assert (=> d!1198057 (= lt!1437516 e!2506653)))

(declare-fun c!697898 () Bool)

(assert (=> d!1198057 (= c!697898 ((_ is Nil!43233) (t!334776 lt!1436874)))))

(assert (=> d!1198057 (= (++!11322 (t!334776 lt!1436874) suffix!1299) lt!1437516)))

(declare-fun b!4039963 () Bool)

(assert (=> b!4039963 (= e!2506654 (or (not (= suffix!1299 Nil!43233)) (= lt!1437516 (t!334776 lt!1436874))))))

(assert (= (and d!1198057 c!697898) b!4039960))

(assert (= (and d!1198057 (not c!697898)) b!4039961))

(assert (= (and d!1198057 res!1645260) b!4039962))

(assert (= (and b!4039962 res!1645259) b!4039963))

(declare-fun m!4635703 () Bool)

(assert (=> b!4039962 m!4635703))

(assert (=> b!4039962 m!4634775))

(assert (=> b!4039962 m!4633279))

(declare-fun m!4635705 () Bool)

(assert (=> b!4039961 m!4635705))

(declare-fun m!4635707 () Bool)

(assert (=> d!1198057 m!4635707))

(declare-fun m!4635709 () Bool)

(assert (=> d!1198057 m!4635709))

(assert (=> d!1198057 m!4633377))

(assert (=> b!4038340 d!1198057))

(assert (=> b!4038768 d!1197473))

(declare-fun d!1198059 () Bool)

(assert (=> d!1198059 (= (head!8551 lt!1436879) (h!48653 lt!1436879))))

(assert (=> b!4038768 d!1198059))

(declare-fun b!4039964 () Bool)

(declare-fun e!2506657 () Bool)

(declare-fun e!2506656 () Bool)

(assert (=> b!4039964 (= e!2506657 e!2506656)))

(declare-fun res!1645264 () Bool)

(assert (=> b!4039964 (=> (not res!1645264) (not e!2506656))))

(assert (=> b!4039964 (= res!1645264 (not ((_ is Nil!43233) (tail!6283 lt!1436849))))))

(declare-fun b!4039966 () Bool)

(assert (=> b!4039966 (= e!2506656 (isPrefix!4007 (tail!6283 (tail!6283 lt!1436870)) (tail!6283 (tail!6283 lt!1436849))))))

(declare-fun b!4039965 () Bool)

(declare-fun res!1645263 () Bool)

(assert (=> b!4039965 (=> (not res!1645263) (not e!2506656))))

(assert (=> b!4039965 (= res!1645263 (= (head!8551 (tail!6283 lt!1436870)) (head!8551 (tail!6283 lt!1436849))))))

(declare-fun d!1198061 () Bool)

(declare-fun e!2506655 () Bool)

(assert (=> d!1198061 e!2506655))

(declare-fun res!1645262 () Bool)

(assert (=> d!1198061 (=> res!1645262 e!2506655)))

(declare-fun lt!1437517 () Bool)

(assert (=> d!1198061 (= res!1645262 (not lt!1437517))))

(assert (=> d!1198061 (= lt!1437517 e!2506657)))

(declare-fun res!1645261 () Bool)

(assert (=> d!1198061 (=> res!1645261 e!2506657)))

(assert (=> d!1198061 (= res!1645261 ((_ is Nil!43233) (tail!6283 lt!1436870)))))

(assert (=> d!1198061 (= (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 lt!1436849)) lt!1437517)))

(declare-fun b!4039967 () Bool)

(assert (=> b!4039967 (= e!2506655 (>= (size!32317 (tail!6283 lt!1436849)) (size!32317 (tail!6283 lt!1436870))))))

(assert (= (and d!1198061 (not res!1645261)) b!4039964))

(assert (= (and b!4039964 res!1645264) b!4039965))

(assert (= (and b!4039965 res!1645263) b!4039966))

(assert (= (and d!1198061 (not res!1645262)) b!4039967))

(assert (=> b!4039966 m!4633543))

(assert (=> b!4039966 m!4634609))

(assert (=> b!4039966 m!4634019))

(declare-fun m!4635711 () Bool)

(assert (=> b!4039966 m!4635711))

(assert (=> b!4039966 m!4634609))

(assert (=> b!4039966 m!4635711))

(declare-fun m!4635713 () Bool)

(assert (=> b!4039966 m!4635713))

(assert (=> b!4039965 m!4633543))

(assert (=> b!4039965 m!4634613))

(assert (=> b!4039965 m!4634019))

(declare-fun m!4635715 () Bool)

(assert (=> b!4039965 m!4635715))

(assert (=> b!4039967 m!4634019))

(declare-fun m!4635717 () Bool)

(assert (=> b!4039967 m!4635717))

(assert (=> b!4039967 m!4633543))

(assert (=> b!4039967 m!4634739))

(assert (=> b!4038773 d!1198061))

(assert (=> b!4038773 d!1197563))

(declare-fun d!1198063 () Bool)

(assert (=> d!1198063 (= (tail!6283 lt!1436849) (t!334776 lt!1436849))))

(assert (=> b!4038773 d!1198063))

(declare-fun d!1198065 () Bool)

(declare-fun lt!1437518 () Int)

(assert (=> d!1198065 (>= lt!1437518 0)))

(declare-fun e!2506658 () Int)

(assert (=> d!1198065 (= lt!1437518 e!2506658)))

(declare-fun c!697899 () Bool)

(assert (=> d!1198065 (= c!697899 ((_ is Nil!43233) lt!1436854))))

(assert (=> d!1198065 (= (size!32317 lt!1436854) lt!1437518)))

(declare-fun b!4039968 () Bool)

(assert (=> b!4039968 (= e!2506658 0)))

(declare-fun b!4039969 () Bool)

(assert (=> b!4039969 (= e!2506658 (+ 1 (size!32317 (t!334776 lt!1436854))))))

(assert (= (and d!1198065 c!697899) b!4039968))

(assert (= (and d!1198065 (not c!697899)) b!4039969))

(declare-fun m!4635719 () Bool)

(assert (=> b!4039969 m!4635719))

(assert (=> b!4038444 d!1198065))

(assert (=> b!4038444 d!1197321))

(assert (=> b!4038480 d!1197443))

(assert (=> b!4038480 d!1197445))

(assert (=> b!4038480 d!1197441))

(declare-fun b!4039972 () Bool)

(declare-fun res!1645265 () Bool)

(declare-fun e!2506660 () Bool)

(assert (=> b!4039972 (=> (not res!1645265) (not e!2506660))))

(declare-fun lt!1437519 () List!43357)

(assert (=> b!4039972 (= res!1645265 (= (size!32317 lt!1437519) (+ (size!32317 (t!334776 prefix!494)) (size!32317 suffix!1299))))))

(declare-fun b!4039970 () Bool)

(declare-fun e!2506659 () List!43357)

(assert (=> b!4039970 (= e!2506659 suffix!1299)))

(declare-fun b!4039971 () Bool)

(assert (=> b!4039971 (= e!2506659 (Cons!43233 (h!48653 (t!334776 prefix!494)) (++!11322 (t!334776 (t!334776 prefix!494)) suffix!1299)))))

(declare-fun d!1198067 () Bool)

(assert (=> d!1198067 e!2506660))

(declare-fun res!1645266 () Bool)

(assert (=> d!1198067 (=> (not res!1645266) (not e!2506660))))

(assert (=> d!1198067 (= res!1645266 (= (content!6573 lt!1437519) ((_ map or) (content!6573 (t!334776 prefix!494)) (content!6573 suffix!1299))))))

(assert (=> d!1198067 (= lt!1437519 e!2506659)))

(declare-fun c!697900 () Bool)

(assert (=> d!1198067 (= c!697900 ((_ is Nil!43233) (t!334776 prefix!494)))))

(assert (=> d!1198067 (= (++!11322 (t!334776 prefix!494) suffix!1299) lt!1437519)))

(declare-fun b!4039973 () Bool)

(assert (=> b!4039973 (= e!2506660 (or (not (= suffix!1299 Nil!43233)) (= lt!1437519 (t!334776 prefix!494))))))

(assert (= (and d!1198067 c!697900) b!4039970))

(assert (= (and d!1198067 (not c!697900)) b!4039971))

(assert (= (and d!1198067 res!1645266) b!4039972))

(assert (= (and b!4039972 res!1645265) b!4039973))

(declare-fun m!4635721 () Bool)

(assert (=> b!4039972 m!4635721))

(assert (=> b!4039972 m!4634091))

(assert (=> b!4039972 m!4633279))

(declare-fun m!4635723 () Bool)

(assert (=> b!4039971 m!4635723))

(declare-fun m!4635725 () Bool)

(assert (=> d!1198067 m!4635725))

(assert (=> d!1198067 m!4634351))

(assert (=> d!1198067 m!4633377))

(assert (=> b!4038332 d!1198067))

(declare-fun d!1198069 () Bool)

(assert (=> d!1198069 (= (inv!57768 (tag!7780 (h!48655 (t!334778 rules!2999)))) (= (mod (str.len (value!217853 (tag!7780 (h!48655 (t!334778 rules!2999))))) 2) 0))))

(assert (=> b!4038905 d!1198069))

(declare-fun d!1198071 () Bool)

(declare-fun res!1645267 () Bool)

(declare-fun e!2506661 () Bool)

(assert (=> d!1198071 (=> (not res!1645267) (not e!2506661))))

(assert (=> d!1198071 (= res!1645267 (semiInverseModEq!2956 (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999))))))))

(assert (=> d!1198071 (= (inv!57771 (transformation!6920 (h!48655 (t!334778 rules!2999)))) e!2506661)))

(declare-fun b!4039974 () Bool)

(assert (=> b!4039974 (= e!2506661 (equivClasses!2855 (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999))))))))

(assert (= (and d!1198071 res!1645267) b!4039974))

(declare-fun m!4635727 () Bool)

(assert (=> d!1198071 m!4635727))

(declare-fun m!4635729 () Bool)

(assert (=> b!4039974 m!4635729))

(assert (=> b!4038905 d!1198071))

(declare-fun bs!590825 () Bool)

(declare-fun d!1198073 () Bool)

(assert (= bs!590825 (and d!1198073 d!1197817)))

(declare-fun lambda!127376 () Int)

(assert (=> bs!590825 (= (= (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))) (= lambda!127376 lambda!127368))))

(assert (=> d!1198073 true))

(assert (=> d!1198073 (< (dynLambda!18346 order!22629 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) (dynLambda!18351 order!22637 lambda!127376))))

(assert (=> d!1198073 (= (equivClasses!2855 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) (Forall2!1089 lambda!127376))))

(declare-fun bs!590826 () Bool)

(assert (= bs!590826 d!1198073))

(declare-fun m!4635731 () Bool)

(assert (=> bs!590826 m!4635731))

(assert (=> b!4038412 d!1198073))

(assert (=> b!4038832 d!1197473))

(declare-fun d!1198075 () Bool)

(declare-fun c!697903 () Bool)

(assert (=> d!1198075 (= c!697903 ((_ is Nil!43235) rules!2999))))

(declare-fun e!2506664 () (InoxSet Rule!13640))

(assert (=> d!1198075 (= (content!6574 rules!2999) e!2506664)))

(declare-fun b!4039979 () Bool)

(assert (=> b!4039979 (= e!2506664 ((as const (Array Rule!13640 Bool)) false))))

(declare-fun b!4039980 () Bool)

(assert (=> b!4039980 (= e!2506664 ((_ map or) (store ((as const (Array Rule!13640 Bool)) false) (h!48655 rules!2999) true) (content!6574 (t!334778 rules!2999))))))

(assert (= (and d!1198075 c!697903) b!4039979))

(assert (= (and d!1198075 (not c!697903)) b!4039980))

(declare-fun m!4635733 () Bool)

(assert (=> b!4039980 m!4635733))

(declare-fun m!4635735 () Bool)

(assert (=> b!4039980 m!4635735))

(assert (=> d!1197101 d!1198075))

(declare-fun d!1198077 () Bool)

(declare-fun c!697904 () Bool)

(assert (=> d!1198077 (= c!697904 ((_ is Nil!43233) lt!1437105))))

(declare-fun e!2506665 () (InoxSet C!23836))

(assert (=> d!1198077 (= (content!6573 lt!1437105) e!2506665)))

(declare-fun b!4039981 () Bool)

(assert (=> b!4039981 (= e!2506665 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039982 () Bool)

(assert (=> b!4039982 (= e!2506665 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1437105) true) (content!6573 (t!334776 lt!1437105))))))

(assert (= (and d!1198077 c!697904) b!4039981))

(assert (= (and d!1198077 (not c!697904)) b!4039982))

(declare-fun m!4635737 () Bool)

(assert (=> b!4039982 m!4635737))

(declare-fun m!4635739 () Bool)

(assert (=> b!4039982 m!4635739))

(assert (=> d!1197349 d!1198077))

(declare-fun d!1198079 () Bool)

(declare-fun c!697905 () Bool)

(assert (=> d!1198079 (= c!697905 ((_ is Nil!43233) lt!1436852))))

(declare-fun e!2506666 () (InoxSet C!23836))

(assert (=> d!1198079 (= (content!6573 lt!1436852) e!2506666)))

(declare-fun b!4039983 () Bool)

(assert (=> b!4039983 (= e!2506666 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039984 () Bool)

(assert (=> b!4039984 (= e!2506666 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1436852) true) (content!6573 (t!334776 lt!1436852))))))

(assert (= (and d!1198079 c!697905) b!4039983))

(assert (= (and d!1198079 (not c!697905)) b!4039984))

(declare-fun m!4635741 () Bool)

(assert (=> b!4039984 m!4635741))

(assert (=> b!4039984 m!4635157))

(assert (=> d!1197349 d!1198079))

(declare-fun d!1198081 () Bool)

(declare-fun c!697906 () Bool)

(assert (=> d!1198081 (= c!697906 ((_ is Nil!43233) (_2!24291 (v!39731 lt!1436869))))))

(declare-fun e!2506667 () (InoxSet C!23836))

(assert (=> d!1198081 (= (content!6573 (_2!24291 (v!39731 lt!1436869))) e!2506667)))

(declare-fun b!4039985 () Bool)

(assert (=> b!4039985 (= e!2506667 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4039986 () Bool)

(assert (=> b!4039986 (= e!2506667 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 (_2!24291 (v!39731 lt!1436869))) true) (content!6573 (t!334776 (_2!24291 (v!39731 lt!1436869))))))))

(assert (= (and d!1198081 c!697906) b!4039985))

(assert (= (and d!1198081 (not c!697906)) b!4039986))

(declare-fun m!4635743 () Bool)

(assert (=> b!4039986 m!4635743))

(declare-fun m!4635745 () Bool)

(assert (=> b!4039986 m!4635745))

(assert (=> d!1197349 d!1198081))

(declare-fun d!1198083 () Bool)

(declare-fun charsToInt!0 (List!43358) (_ BitVec 32))

(assert (=> d!1198083 (= (inv!16 (value!217854 token!484)) (= (charsToInt!0 (text!50497 (value!217854 token!484))) (value!217845 (value!217854 token!484))))))

(declare-fun bs!590827 () Bool)

(assert (= bs!590827 d!1198083))

(declare-fun m!4635747 () Bool)

(assert (=> bs!590827 m!4635747))

(assert (=> b!4038498 d!1198083))

(declare-fun d!1198085 () Bool)

(declare-fun lt!1437520 () List!43357)

(assert (=> d!1198085 (= (++!11322 (t!334776 lt!1436870) lt!1437520) (tail!6283 lt!1436879))))

(declare-fun e!2506668 () List!43357)

(assert (=> d!1198085 (= lt!1437520 e!2506668)))

(declare-fun c!697907 () Bool)

(assert (=> d!1198085 (= c!697907 ((_ is Cons!43233) (t!334776 lt!1436870)))))

(assert (=> d!1198085 (>= (size!32317 (tail!6283 lt!1436879)) (size!32317 (t!334776 lt!1436870)))))

(assert (=> d!1198085 (= (getSuffix!2424 (tail!6283 lt!1436879) (t!334776 lt!1436870)) lt!1437520)))

(declare-fun b!4039987 () Bool)

(assert (=> b!4039987 (= e!2506668 (getSuffix!2424 (tail!6283 (tail!6283 lt!1436879)) (t!334776 (t!334776 lt!1436870))))))

(declare-fun b!4039988 () Bool)

(assert (=> b!4039988 (= e!2506668 (tail!6283 lt!1436879))))

(assert (= (and d!1198085 c!697907) b!4039987))

(assert (= (and d!1198085 (not c!697907)) b!4039988))

(declare-fun m!4635749 () Bool)

(assert (=> d!1198085 m!4635749))

(assert (=> d!1198085 m!4634013))

(assert (=> d!1198085 m!4634859))

(assert (=> d!1198085 m!4634089))

(assert (=> b!4039987 m!4634013))

(assert (=> b!4039987 m!4634853))

(assert (=> b!4039987 m!4634853))

(declare-fun m!4635751 () Bool)

(assert (=> b!4039987 m!4635751))

(assert (=> b!4038860 d!1198085))

(assert (=> b!4038860 d!1197663))

(declare-fun b!4039989 () Bool)

(declare-fun e!2506671 () Bool)

(declare-fun e!2506670 () Bool)

(assert (=> b!4039989 (= e!2506671 e!2506670)))

(declare-fun res!1645271 () Bool)

(assert (=> b!4039989 (=> (not res!1645271) (not e!2506670))))

(assert (=> b!4039989 (= res!1645271 (not ((_ is Nil!43233) (tail!6283 lt!1436879))))))

(declare-fun b!4039991 () Bool)

(assert (=> b!4039991 (= e!2506670 (isPrefix!4007 (tail!6283 (tail!6283 prefix!494)) (tail!6283 (tail!6283 lt!1436879))))))

(declare-fun b!4039990 () Bool)

(declare-fun res!1645270 () Bool)

(assert (=> b!4039990 (=> (not res!1645270) (not e!2506670))))

(assert (=> b!4039990 (= res!1645270 (= (head!8551 (tail!6283 prefix!494)) (head!8551 (tail!6283 lt!1436879))))))

(declare-fun d!1198087 () Bool)

(declare-fun e!2506669 () Bool)

(assert (=> d!1198087 e!2506669))

(declare-fun res!1645269 () Bool)

(assert (=> d!1198087 (=> res!1645269 e!2506669)))

(declare-fun lt!1437521 () Bool)

(assert (=> d!1198087 (= res!1645269 (not lt!1437521))))

(assert (=> d!1198087 (= lt!1437521 e!2506671)))

(declare-fun res!1645268 () Bool)

(assert (=> d!1198087 (=> res!1645268 e!2506671)))

(assert (=> d!1198087 (= res!1645268 ((_ is Nil!43233) (tail!6283 prefix!494)))))

(assert (=> d!1198087 (= (isPrefix!4007 (tail!6283 prefix!494) (tail!6283 lt!1436879)) lt!1437521)))

(declare-fun b!4039992 () Bool)

(assert (=> b!4039992 (= e!2506669 (>= (size!32317 (tail!6283 lt!1436879)) (size!32317 (tail!6283 prefix!494))))))

(assert (= (and d!1198087 (not res!1645268)) b!4039989))

(assert (= (and b!4039989 res!1645271) b!4039990))

(assert (= (and b!4039990 res!1645270) b!4039991))

(assert (= (and d!1198087 (not res!1645269)) b!4039992))

(assert (=> b!4039991 m!4634035))

(assert (=> b!4039991 m!4635037))

(assert (=> b!4039991 m!4634013))

(assert (=> b!4039991 m!4634853))

(assert (=> b!4039991 m!4635037))

(assert (=> b!4039991 m!4634853))

(declare-fun m!4635753 () Bool)

(assert (=> b!4039991 m!4635753))

(assert (=> b!4039990 m!4634035))

(assert (=> b!4039990 m!4635041))

(assert (=> b!4039990 m!4634013))

(assert (=> b!4039990 m!4634857))

(assert (=> b!4039992 m!4634013))

(assert (=> b!4039992 m!4634859))

(assert (=> b!4039992 m!4634035))

(assert (=> b!4039992 m!4635043))

(assert (=> b!4038777 d!1198087))

(assert (=> b!4038777 d!1197757))

(assert (=> b!4038777 d!1197663))

(assert (=> b!4038835 d!1197473))

(declare-fun d!1198089 () Bool)

(assert (=> d!1198089 (= (head!8551 lt!1436861) (h!48653 lt!1436861))))

(assert (=> b!4038835 d!1198089))

(declare-fun d!1198091 () Bool)

(declare-fun lt!1437522 () Bool)

(assert (=> d!1198091 (= lt!1437522 (select (content!6574 rules!2999) (rule!9990 (_1!24291 (get!14186 lt!1436987)))))))

(declare-fun e!2506673 () Bool)

(assert (=> d!1198091 (= lt!1437522 e!2506673)))

(declare-fun res!1645273 () Bool)

(assert (=> d!1198091 (=> (not res!1645273) (not e!2506673))))

(assert (=> d!1198091 (= res!1645273 ((_ is Cons!43235) rules!2999))))

(assert (=> d!1198091 (= (contains!8588 rules!2999 (rule!9990 (_1!24291 (get!14186 lt!1436987)))) lt!1437522)))

(declare-fun b!4039993 () Bool)

(declare-fun e!2506672 () Bool)

(assert (=> b!4039993 (= e!2506673 e!2506672)))

(declare-fun res!1645272 () Bool)

(assert (=> b!4039993 (=> res!1645272 e!2506672)))

(assert (=> b!4039993 (= res!1645272 (= (h!48655 rules!2999) (rule!9990 (_1!24291 (get!14186 lt!1436987)))))))

(declare-fun b!4039994 () Bool)

(assert (=> b!4039994 (= e!2506672 (contains!8588 (t!334778 rules!2999) (rule!9990 (_1!24291 (get!14186 lt!1436987)))))))

(assert (= (and d!1198091 res!1645273) b!4039993))

(assert (= (and b!4039993 (not res!1645272)) b!4039994))

(assert (=> d!1198091 m!4633463))

(declare-fun m!4635755 () Bool)

(assert (=> d!1198091 m!4635755))

(declare-fun m!4635757 () Bool)

(assert (=> b!4039994 m!4635757))

(assert (=> b!4038476 d!1198091))

(assert (=> b!4038476 d!1197441))

(declare-fun d!1198093 () Bool)

(assert (=> d!1198093 (= (isEmpty!25805 lt!1436987) (not ((_ is Some!9333) lt!1436987)))))

(assert (=> d!1197161 d!1198093))

(declare-fun b!4039995 () Bool)

(declare-fun e!2506676 () Bool)

(declare-fun e!2506675 () Bool)

(assert (=> b!4039995 (= e!2506676 e!2506675)))

(declare-fun res!1645277 () Bool)

(assert (=> b!4039995 (=> (not res!1645277) (not e!2506675))))

(assert (=> b!4039995 (= res!1645277 (not ((_ is Nil!43233) lt!1436861)))))

(declare-fun b!4039997 () Bool)

(assert (=> b!4039997 (= e!2506675 (isPrefix!4007 (tail!6283 lt!1436861) (tail!6283 lt!1436861)))))

(declare-fun b!4039996 () Bool)

(declare-fun res!1645276 () Bool)

(assert (=> b!4039996 (=> (not res!1645276) (not e!2506675))))

(assert (=> b!4039996 (= res!1645276 (= (head!8551 lt!1436861) (head!8551 lt!1436861)))))

(declare-fun d!1198095 () Bool)

(declare-fun e!2506674 () Bool)

(assert (=> d!1198095 e!2506674))

(declare-fun res!1645275 () Bool)

(assert (=> d!1198095 (=> res!1645275 e!2506674)))

(declare-fun lt!1437523 () Bool)

(assert (=> d!1198095 (= res!1645275 (not lt!1437523))))

(assert (=> d!1198095 (= lt!1437523 e!2506676)))

(declare-fun res!1645274 () Bool)

(assert (=> d!1198095 (=> res!1645274 e!2506676)))

(assert (=> d!1198095 (= res!1645274 ((_ is Nil!43233) lt!1436861))))

(assert (=> d!1198095 (= (isPrefix!4007 lt!1436861 lt!1436861) lt!1437523)))

(declare-fun b!4039998 () Bool)

(assert (=> b!4039998 (= e!2506674 (>= (size!32317 lt!1436861) (size!32317 lt!1436861)))))

(assert (= (and d!1198095 (not res!1645274)) b!4039995))

(assert (= (and b!4039995 res!1645277) b!4039996))

(assert (= (and b!4039996 res!1645276) b!4039997))

(assert (= (and d!1198095 (not res!1645275)) b!4039998))

(assert (=> b!4039997 m!4634075))

(assert (=> b!4039997 m!4634075))

(assert (=> b!4039997 m!4634075))

(assert (=> b!4039997 m!4634075))

(declare-fun m!4635759 () Bool)

(assert (=> b!4039997 m!4635759))

(assert (=> b!4039996 m!4634079))

(assert (=> b!4039996 m!4634079))

(assert (=> b!4039998 m!4633641))

(assert (=> b!4039998 m!4633641))

(assert (=> d!1197161 d!1198095))

(declare-fun d!1198097 () Bool)

(assert (=> d!1198097 (isPrefix!4007 lt!1436861 lt!1436861)))

(declare-fun lt!1437524 () Unit!62437)

(assert (=> d!1198097 (= lt!1437524 (choose!24474 lt!1436861 lt!1436861))))

(assert (=> d!1198097 (= (lemmaIsPrefixRefl!2574 lt!1436861 lt!1436861) lt!1437524)))

(declare-fun bs!590828 () Bool)

(assert (= bs!590828 d!1198097))

(assert (=> bs!590828 m!4633623))

(declare-fun m!4635761 () Bool)

(assert (=> bs!590828 m!4635761))

(assert (=> d!1197161 d!1198097))

(assert (=> d!1197161 d!1197405))

(declare-fun d!1198099 () Bool)

(assert (=> d!1198099 (= (isEmpty!25805 lt!1436974) (not ((_ is Some!9333) lt!1436974)))))

(assert (=> d!1197153 d!1198099))

(declare-fun d!1198101 () Bool)

(assert (=> d!1198101 (= (isEmpty!25803 (_1!24293 lt!1436972)) ((_ is Nil!43233) (_1!24293 lt!1436972)))))

(assert (=> d!1197153 d!1198101))

(declare-fun d!1198103 () Bool)

(declare-fun lt!1437541 () tuple2!42318)

(assert (=> d!1198103 (= (++!11322 (_1!24293 lt!1437541) (_2!24293 lt!1437541)) lt!1436879)))

(declare-fun sizeTr!272 (List!43357 Int) Int)

(assert (=> d!1198103 (= lt!1437541 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 0 lt!1436879 lt!1436879 (sizeTr!272 lt!1436879 0)))))

(declare-fun lt!1437542 () Unit!62437)

(declare-fun lt!1437546 () Unit!62437)

(assert (=> d!1198103 (= lt!1437542 lt!1437546)))

(declare-fun lt!1437547 () List!43357)

(declare-fun lt!1437543 () Int)

(assert (=> d!1198103 (= (sizeTr!272 lt!1437547 lt!1437543) (+ (size!32317 lt!1437547) lt!1437543))))

(declare-fun lemmaSizeTrEqualsSize!271 (List!43357 Int) Unit!62437)

(assert (=> d!1198103 (= lt!1437546 (lemmaSizeTrEqualsSize!271 lt!1437547 lt!1437543))))

(assert (=> d!1198103 (= lt!1437543 0)))

(assert (=> d!1198103 (= lt!1437547 Nil!43233)))

(declare-fun lt!1437548 () Unit!62437)

(declare-fun lt!1437545 () Unit!62437)

(assert (=> d!1198103 (= lt!1437548 lt!1437545)))

(declare-fun lt!1437544 () Int)

(assert (=> d!1198103 (= (sizeTr!272 lt!1436879 lt!1437544) (+ (size!32317 lt!1436879) lt!1437544))))

(assert (=> d!1198103 (= lt!1437545 (lemmaSizeTrEqualsSize!271 lt!1436879 lt!1437544))))

(assert (=> d!1198103 (= lt!1437544 0)))

(assert (=> d!1198103 (validRegex!5348 (regex!6920 (rule!9990 token!484)))))

(assert (=> d!1198103 (= (findLongestMatch!1298 (regex!6920 (rule!9990 token!484)) lt!1436879) lt!1437541)))

(declare-fun bs!590829 () Bool)

(assert (= bs!590829 d!1198103))

(declare-fun m!4635763 () Bool)

(assert (=> bs!590829 m!4635763))

(declare-fun m!4635765 () Bool)

(assert (=> bs!590829 m!4635765))

(assert (=> bs!590829 m!4633345))

(assert (=> bs!590829 m!4633529))

(declare-fun m!4635767 () Bool)

(assert (=> bs!590829 m!4635767))

(declare-fun m!4635769 () Bool)

(assert (=> bs!590829 m!4635769))

(declare-fun m!4635771 () Bool)

(assert (=> bs!590829 m!4635771))

(declare-fun m!4635773 () Bool)

(assert (=> bs!590829 m!4635773))

(declare-fun m!4635775 () Bool)

(assert (=> bs!590829 m!4635775))

(assert (=> bs!590829 m!4635763))

(declare-fun m!4635777 () Bool)

(assert (=> bs!590829 m!4635777))

(assert (=> d!1197153 d!1198103))

(assert (=> d!1197153 d!1197139))

(declare-fun d!1198105 () Bool)

(declare-fun lt!1437549 () List!43357)

(assert (=> d!1198105 (= (++!11322 (t!334776 lt!1436870) lt!1437549) (tail!6283 prefix!494))))

(declare-fun e!2506677 () List!43357)

(assert (=> d!1198105 (= lt!1437549 e!2506677)))

(declare-fun c!697908 () Bool)

(assert (=> d!1198105 (= c!697908 ((_ is Cons!43233) (t!334776 lt!1436870)))))

(assert (=> d!1198105 (>= (size!32317 (tail!6283 prefix!494)) (size!32317 (t!334776 lt!1436870)))))

(assert (=> d!1198105 (= (getSuffix!2424 (tail!6283 prefix!494) (t!334776 lt!1436870)) lt!1437549)))

(declare-fun b!4039999 () Bool)

(assert (=> b!4039999 (= e!2506677 (getSuffix!2424 (tail!6283 (tail!6283 prefix!494)) (t!334776 (t!334776 lt!1436870))))))

(declare-fun b!4040000 () Bool)

(assert (=> b!4040000 (= e!2506677 (tail!6283 prefix!494))))

(assert (= (and d!1198105 c!697908) b!4039999))

(assert (= (and d!1198105 (not c!697908)) b!4040000))

(declare-fun m!4635779 () Bool)

(assert (=> d!1198105 m!4635779))

(assert (=> d!1198105 m!4634035))

(assert (=> d!1198105 m!4635043))

(assert (=> d!1198105 m!4634089))

(assert (=> b!4039999 m!4634035))

(assert (=> b!4039999 m!4635037))

(assert (=> b!4039999 m!4635037))

(declare-fun m!4635781 () Bool)

(assert (=> b!4039999 m!4635781))

(assert (=> b!4038850 d!1198105))

(assert (=> b!4038850 d!1197757))

(declare-fun d!1198107 () Bool)

(declare-fun c!697909 () Bool)

(assert (=> d!1198107 (= c!697909 ((_ is Nil!43233) lt!1436914))))

(declare-fun e!2506678 () (InoxSet C!23836))

(assert (=> d!1198107 (= (content!6573 lt!1436914) e!2506678)))

(declare-fun b!4040001 () Bool)

(assert (=> b!4040001 (= e!2506678 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4040002 () Bool)

(assert (=> b!4040002 (= e!2506678 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1436914) true) (content!6573 (t!334776 lt!1436914))))))

(assert (= (and d!1198107 c!697909) b!4040001))

(assert (= (and d!1198107 (not c!697909)) b!4040002))

(declare-fun m!4635783 () Bool)

(assert (=> b!4040002 m!4635783))

(declare-fun m!4635785 () Bool)

(assert (=> b!4040002 m!4635785))

(assert (=> d!1197083 d!1198107))

(declare-fun d!1198109 () Bool)

(declare-fun c!697910 () Bool)

(assert (=> d!1198109 (= c!697910 ((_ is Nil!43233) lt!1436874))))

(declare-fun e!2506679 () (InoxSet C!23836))

(assert (=> d!1198109 (= (content!6573 lt!1436874) e!2506679)))

(declare-fun b!4040003 () Bool)

(assert (=> b!4040003 (= e!2506679 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4040004 () Bool)

(assert (=> b!4040004 (= e!2506679 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1436874) true) (content!6573 (t!334776 lt!1436874))))))

(assert (= (and d!1198109 c!697910) b!4040003))

(assert (= (and d!1198109 (not c!697910)) b!4040004))

(declare-fun m!4635787 () Bool)

(assert (=> b!4040004 m!4635787))

(assert (=> b!4040004 m!4635709))

(assert (=> d!1197083 d!1198109))

(assert (=> d!1197083 d!1197583))

(assert (=> b!4038828 d!1197749))

(assert (=> b!4038828 d!1197563))

(declare-fun d!1198111 () Bool)

(assert (=> d!1198111 (= (inv!57776 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))) (isBalanced!3679 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))))))

(declare-fun bs!590830 () Bool)

(assert (= bs!590830 d!1198111))

(declare-fun m!4635789 () Bool)

(assert (=> bs!590830 m!4635789))

(assert (=> tb!242703 d!1198111))

(assert (=> b!4038863 d!1198059))

(declare-fun b!4040007 () Bool)

(declare-fun res!1645278 () Bool)

(declare-fun e!2506681 () Bool)

(assert (=> b!4040007 (=> (not res!1645278) (not e!2506681))))

(declare-fun lt!1437550 () List!43357)

(assert (=> b!4040007 (= res!1645278 (= (size!32317 lt!1437550) (+ (size!32317 lt!1436870) (size!32317 lt!1437100))))))

(declare-fun b!4040005 () Bool)

(declare-fun e!2506680 () List!43357)

(assert (=> b!4040005 (= e!2506680 lt!1437100)))

(declare-fun b!4040006 () Bool)

(assert (=> b!4040006 (= e!2506680 (Cons!43233 (h!48653 lt!1436870) (++!11322 (t!334776 lt!1436870) lt!1437100)))))

(declare-fun d!1198113 () Bool)

(assert (=> d!1198113 e!2506681))

(declare-fun res!1645279 () Bool)

(assert (=> d!1198113 (=> (not res!1645279) (not e!2506681))))

(assert (=> d!1198113 (= res!1645279 (= (content!6573 lt!1437550) ((_ map or) (content!6573 lt!1436870) (content!6573 lt!1437100))))))

(assert (=> d!1198113 (= lt!1437550 e!2506680)))

(declare-fun c!697911 () Bool)

(assert (=> d!1198113 (= c!697911 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1198113 (= (++!11322 lt!1436870 lt!1437100) lt!1437550)))

(declare-fun b!4040008 () Bool)

(assert (=> b!4040008 (= e!2506681 (or (not (= lt!1437100 Nil!43233)) (= lt!1437550 lt!1436870)))))

(assert (= (and d!1198113 c!697911) b!4040005))

(assert (= (and d!1198113 (not c!697911)) b!4040006))

(assert (= (and d!1198113 res!1645279) b!4040007))

(assert (= (and b!4040007 res!1645278) b!4040008))

(declare-fun m!4635791 () Bool)

(assert (=> b!4040007 m!4635791))

(assert (=> b!4040007 m!4633263))

(declare-fun m!4635793 () Bool)

(assert (=> b!4040007 m!4635793))

(declare-fun m!4635795 () Bool)

(assert (=> b!4040006 m!4635795))

(declare-fun m!4635797 () Bool)

(assert (=> d!1198113 m!4635797))

(assert (=> d!1198113 m!4633387))

(declare-fun m!4635799 () Bool)

(assert (=> d!1198113 m!4635799))

(assert (=> d!1197341 d!1198113))

(assert (=> d!1197341 d!1197421))

(assert (=> d!1197341 d!1197321))

(assert (=> b!4038853 d!1197473))

(declare-fun d!1198115 () Bool)

(assert (=> d!1198115 (= (head!8551 prefix!494) (h!48653 prefix!494))))

(assert (=> b!4038853 d!1198115))

(assert (=> b!4038468 d!1197511))

(declare-fun d!1198117 () Bool)

(assert (=> d!1198117 (= (apply!10109 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974)))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436974))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974))))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436974))))))))

(declare-fun b_lambda!117945 () Bool)

(assert (=> (not b_lambda!117945) (not d!1198117)))

(declare-fun t!334960 () Bool)

(declare-fun tb!242833 () Bool)

(assert (=> (and b!4038253 (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974)))))) t!334960) tb!242833))

(declare-fun result!294328 () Bool)

(assert (=> tb!242833 (= result!294328 (inv!21 (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974))))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436974)))))))))

(declare-fun m!4635801 () Bool)

(assert (=> tb!242833 m!4635801))

(assert (=> d!1198117 t!334960))

(declare-fun b_and!310541 () Bool)

(assert (= b_and!310497 (and (=> t!334960 result!294328) b_and!310541)))

(declare-fun tb!242835 () Bool)

(declare-fun t!334962 () Bool)

(assert (=> (and b!4038259 (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974)))))) t!334962) tb!242835))

(declare-fun result!294330 () Bool)

(assert (= result!294330 result!294328))

(assert (=> d!1198117 t!334962))

(declare-fun b_and!310543 () Bool)

(assert (= b_and!310499 (and (=> t!334962 result!294330) b_and!310543)))

(declare-fun tb!242837 () Bool)

(declare-fun t!334964 () Bool)

(assert (=> (and b!4038906 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974)))))) t!334964) tb!242837))

(declare-fun result!294332 () Bool)

(assert (= result!294332 result!294328))

(assert (=> d!1198117 t!334964))

(declare-fun b_and!310545 () Bool)

(assert (= b_and!310501 (and (=> t!334964 result!294332) b_and!310545)))

(assert (=> d!1198117 m!4633579))

(declare-fun m!4635803 () Bool)

(assert (=> d!1198117 m!4635803))

(assert (=> b!4038468 d!1198117))

(declare-fun d!1198119 () Bool)

(assert (=> d!1198119 (= (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436974)))) (fromListB!2342 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436974)))))))

(declare-fun bs!590831 () Bool)

(assert (= bs!590831 d!1198119))

(declare-fun m!4635805 () Bool)

(assert (=> bs!590831 m!4635805))

(assert (=> b!4038468 d!1198119))

(assert (=> b!4038311 d!1197519))

(assert (=> b!4038311 d!1197521))

(assert (=> b!4038311 d!1197415))

(declare-fun d!1198121 () Bool)

(assert (=> d!1198121 (= (head!8551 newSuffix!27) (h!48653 newSuffix!27))))

(assert (=> b!4038422 d!1198121))

(declare-fun d!1198123 () Bool)

(assert (=> d!1198123 (= (head!8551 suffix!1299) (h!48653 suffix!1299))))

(assert (=> b!4038422 d!1198123))

(declare-fun d!1198125 () Bool)

(declare-fun lt!1437551 () Bool)

(assert (=> d!1198125 (= lt!1437551 (select (content!6574 (t!334778 rules!2999)) (rule!9990 (_1!24291 (v!39731 lt!1436869)))))))

(declare-fun e!2506684 () Bool)

(assert (=> d!1198125 (= lt!1437551 e!2506684)))

(declare-fun res!1645281 () Bool)

(assert (=> d!1198125 (=> (not res!1645281) (not e!2506684))))

(assert (=> d!1198125 (= res!1645281 ((_ is Cons!43235) (t!334778 rules!2999)))))

(assert (=> d!1198125 (= (contains!8588 (t!334778 rules!2999) (rule!9990 (_1!24291 (v!39731 lt!1436869)))) lt!1437551)))

(declare-fun b!4040009 () Bool)

(declare-fun e!2506683 () Bool)

(assert (=> b!4040009 (= e!2506684 e!2506683)))

(declare-fun res!1645280 () Bool)

(assert (=> b!4040009 (=> res!1645280 e!2506683)))

(assert (=> b!4040009 (= res!1645280 (= (h!48655 (t!334778 rules!2999)) (rule!9990 (_1!24291 (v!39731 lt!1436869)))))))

(declare-fun b!4040010 () Bool)

(assert (=> b!4040010 (= e!2506683 (contains!8588 (t!334778 (t!334778 rules!2999)) (rule!9990 (_1!24291 (v!39731 lt!1436869)))))))

(assert (= (and d!1198125 res!1645281) b!4040009))

(assert (= (and b!4040009 (not res!1645280)) b!4040010))

(assert (=> d!1198125 m!4635735))

(declare-fun m!4635807 () Bool)

(assert (=> d!1198125 m!4635807))

(declare-fun m!4635809 () Bool)

(assert (=> b!4040010 m!4635809))

(assert (=> b!4038389 d!1198125))

(assert (=> b!4038364 d!1197143))

(declare-fun b!4040013 () Bool)

(declare-fun res!1645282 () Bool)

(declare-fun e!2506686 () Bool)

(assert (=> b!4040013 (=> (not res!1645282) (not e!2506686))))

(declare-fun lt!1437552 () List!43357)

(assert (=> b!4040013 (= res!1645282 (= (size!32317 lt!1437552) (+ (size!32317 (t!334776 lt!1436870)) (size!32317 lt!1436845))))))

(declare-fun b!4040011 () Bool)

(declare-fun e!2506685 () List!43357)

(assert (=> b!4040011 (= e!2506685 lt!1436845)))

(declare-fun b!4040012 () Bool)

(assert (=> b!4040012 (= e!2506685 (Cons!43233 (h!48653 (t!334776 lt!1436870)) (++!11322 (t!334776 (t!334776 lt!1436870)) lt!1436845)))))

(declare-fun d!1198127 () Bool)

(assert (=> d!1198127 e!2506686))

(declare-fun res!1645283 () Bool)

(assert (=> d!1198127 (=> (not res!1645283) (not e!2506686))))

(assert (=> d!1198127 (= res!1645283 (= (content!6573 lt!1437552) ((_ map or) (content!6573 (t!334776 lt!1436870)) (content!6573 lt!1436845))))))

(assert (=> d!1198127 (= lt!1437552 e!2506685)))

(declare-fun c!697912 () Bool)

(assert (=> d!1198127 (= c!697912 ((_ is Nil!43233) (t!334776 lt!1436870)))))

(assert (=> d!1198127 (= (++!11322 (t!334776 lt!1436870) lt!1436845) lt!1437552)))

(declare-fun b!4040014 () Bool)

(assert (=> b!4040014 (= e!2506686 (or (not (= lt!1436845 Nil!43233)) (= lt!1437552 (t!334776 lt!1436870))))))

(assert (= (and d!1198127 c!697912) b!4040011))

(assert (= (and d!1198127 (not c!697912)) b!4040012))

(assert (= (and d!1198127 res!1645283) b!4040013))

(assert (= (and b!4040013 res!1645282) b!4040014))

(declare-fun m!4635811 () Bool)

(assert (=> b!4040013 m!4635811))

(assert (=> b!4040013 m!4634089))

(assert (=> b!4040013 m!4633403))

(declare-fun m!4635813 () Bool)

(assert (=> b!4040012 m!4635813))

(declare-fun m!4635815 () Bool)

(assert (=> d!1198127 m!4635815))

(assert (=> d!1198127 m!4634295))

(assert (=> d!1198127 m!4633409))

(assert (=> b!4038843 d!1198127))

(declare-fun bs!590832 () Bool)

(declare-fun d!1198129 () Bool)

(assert (= bs!590832 (and d!1198129 d!1197179)))

(declare-fun lambda!127377 () Int)

(assert (=> bs!590832 (= lambda!127377 lambda!127345)))

(declare-fun bs!590833 () Bool)

(assert (= bs!590833 (and d!1198129 d!1197625)))

(assert (=> bs!590833 (= (and (= (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (toChars!9315 (transformation!6920 (h!48655 rules!2999)))) (= (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (toValue!9456 (transformation!6920 (h!48655 rules!2999))))) (= lambda!127377 lambda!127363))))

(declare-fun bs!590834 () Bool)

(assert (= bs!590834 (and d!1198129 d!1197855)))

(assert (=> bs!590834 (= (and (= (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (toChars!9315 (transformation!6920 (rule!9990 token!484)))) (= (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (toValue!9456 (transformation!6920 (rule!9990 token!484))))) (= lambda!127377 lambda!127370))))

(assert (=> d!1198129 true))

(assert (=> d!1198129 (< (dynLambda!18348 order!22633 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) (dynLambda!18347 order!22631 lambda!127377))))

(assert (=> d!1198129 true))

(assert (=> d!1198129 (< (dynLambda!18346 order!22629 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) (dynLambda!18347 order!22631 lambda!127377))))

(assert (=> d!1198129 (= (semiInverseModEq!2956 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) (Forall!1489 lambda!127377))))

(declare-fun bs!590835 () Bool)

(assert (= bs!590835 d!1198129))

(declare-fun m!4635817 () Bool)

(assert (=> bs!590835 m!4635817))

(assert (=> d!1197127 d!1198129))

(declare-fun d!1198131 () Bool)

(declare-fun lt!1437553 () Int)

(assert (=> d!1198131 (>= lt!1437553 0)))

(declare-fun e!2506687 () Int)

(assert (=> d!1198131 (= lt!1437553 e!2506687)))

(declare-fun c!697913 () Bool)

(assert (=> d!1198131 (= c!697913 ((_ is Nil!43233) lt!1437105))))

(assert (=> d!1198131 (= (size!32317 lt!1437105) lt!1437553)))

(declare-fun b!4040015 () Bool)

(assert (=> b!4040015 (= e!2506687 0)))

(declare-fun b!4040016 () Bool)

(assert (=> b!4040016 (= e!2506687 (+ 1 (size!32317 (t!334776 lt!1437105))))))

(assert (= (and d!1198131 c!697913) b!4040015))

(assert (= (and d!1198131 (not c!697913)) b!4040016))

(declare-fun m!4635819 () Bool)

(assert (=> b!4040016 m!4635819))

(assert (=> b!4038868 d!1198131))

(assert (=> b!4038868 d!1197177))

(declare-fun d!1198133 () Bool)

(declare-fun lt!1437554 () Int)

(assert (=> d!1198133 (>= lt!1437554 0)))

(declare-fun e!2506688 () Int)

(assert (=> d!1198133 (= lt!1437554 e!2506688)))

(declare-fun c!697914 () Bool)

(assert (=> d!1198133 (= c!697914 ((_ is Nil!43233) (_2!24291 (v!39731 lt!1436869))))))

(assert (=> d!1198133 (= (size!32317 (_2!24291 (v!39731 lt!1436869))) lt!1437554)))

(declare-fun b!4040017 () Bool)

(assert (=> b!4040017 (= e!2506688 0)))

(declare-fun b!4040018 () Bool)

(assert (=> b!4040018 (= e!2506688 (+ 1 (size!32317 (t!334776 (_2!24291 (v!39731 lt!1436869))))))))

(assert (= (and d!1198133 c!697914) b!4040017))

(assert (= (and d!1198133 (not c!697914)) b!4040018))

(declare-fun m!4635821 () Bool)

(assert (=> b!4040018 m!4635821))

(assert (=> b!4038868 d!1198133))

(declare-fun b!4040019 () Bool)

(declare-fun e!2506694 () Bool)

(declare-fun e!2506693 () Bool)

(assert (=> b!4040019 (= e!2506694 e!2506693)))

(declare-fun res!1645289 () Bool)

(assert (=> b!4040019 (=> res!1645289 e!2506693)))

(declare-fun call!287376 () Bool)

(assert (=> b!4040019 (= res!1645289 call!287376)))

(declare-fun b!4040020 () Bool)

(declare-fun res!1645288 () Bool)

(declare-fun e!2506692 () Bool)

(assert (=> b!4040020 (=> (not res!1645288) (not e!2506692))))

(assert (=> b!4040020 (= res!1645288 (not call!287376))))

(declare-fun b!4040021 () Bool)

(declare-fun e!2506689 () Bool)

(assert (=> b!4040021 (= e!2506689 e!2506694)))

(declare-fun res!1645287 () Bool)

(assert (=> b!4040021 (=> (not res!1645287) (not e!2506694))))

(declare-fun lt!1437555 () Bool)

(assert (=> b!4040021 (= res!1645287 (not lt!1437555))))

(declare-fun b!4040022 () Bool)

(assert (=> b!4040022 (= e!2506692 (= (head!8551 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))) (c!697517 (regex!6920 (rule!9990 token!484)))))))

(declare-fun d!1198135 () Bool)

(declare-fun e!2506690 () Bool)

(assert (=> d!1198135 e!2506690))

(declare-fun c!697917 () Bool)

(assert (=> d!1198135 (= c!697917 ((_ is EmptyExpr!11825) (regex!6920 (rule!9990 token!484))))))

(declare-fun e!2506691 () Bool)

(assert (=> d!1198135 (= lt!1437555 e!2506691)))

(declare-fun c!697915 () Bool)

(assert (=> d!1198135 (= c!697915 (isEmpty!25803 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))))))

(assert (=> d!1198135 (validRegex!5348 (regex!6920 (rule!9990 token!484)))))

(assert (=> d!1198135 (= (matchR!5778 (regex!6920 (rule!9990 token!484)) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))) lt!1437555)))

(declare-fun b!4040023 () Bool)

(assert (=> b!4040023 (= e!2506691 (nullable!4148 (regex!6920 (rule!9990 token!484))))))

(declare-fun b!4040024 () Bool)

(assert (=> b!4040024 (= e!2506690 (= lt!1437555 call!287376))))

(declare-fun bm!287371 () Bool)

(assert (=> bm!287371 (= call!287376 (isEmpty!25803 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))))))

(declare-fun b!4040025 () Bool)

(assert (=> b!4040025 (= e!2506691 (matchR!5778 (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974)))))) (tail!6283 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974)))))))))

(declare-fun b!4040026 () Bool)

(declare-fun res!1645285 () Bool)

(assert (=> b!4040026 (=> res!1645285 e!2506689)))

(assert (=> b!4040026 (= res!1645285 e!2506692)))

(declare-fun res!1645290 () Bool)

(assert (=> b!4040026 (=> (not res!1645290) (not e!2506692))))

(assert (=> b!4040026 (= res!1645290 lt!1437555)))

(declare-fun b!4040027 () Bool)

(declare-fun res!1645291 () Bool)

(assert (=> b!4040027 (=> res!1645291 e!2506693)))

(assert (=> b!4040027 (= res!1645291 (not (isEmpty!25803 (tail!6283 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))))))))

(declare-fun b!4040028 () Bool)

(declare-fun res!1645284 () Bool)

(assert (=> b!4040028 (=> (not res!1645284) (not e!2506692))))

(assert (=> b!4040028 (= res!1645284 (isEmpty!25803 (tail!6283 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974)))))))))

(declare-fun b!4040029 () Bool)

(declare-fun e!2506695 () Bool)

(assert (=> b!4040029 (= e!2506690 e!2506695)))

(declare-fun c!697916 () Bool)

(assert (=> b!4040029 (= c!697916 ((_ is EmptyLang!11825) (regex!6920 (rule!9990 token!484))))))

(declare-fun b!4040030 () Bool)

(declare-fun res!1645286 () Bool)

(assert (=> b!4040030 (=> res!1645286 e!2506689)))

(assert (=> b!4040030 (= res!1645286 (not ((_ is ElementMatch!11825) (regex!6920 (rule!9990 token!484)))))))

(assert (=> b!4040030 (= e!2506695 e!2506689)))

(declare-fun b!4040031 () Bool)

(assert (=> b!4040031 (= e!2506693 (not (= (head!8551 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1436974))))) (c!697517 (regex!6920 (rule!9990 token!484))))))))

(declare-fun b!4040032 () Bool)

(assert (=> b!4040032 (= e!2506695 (not lt!1437555))))

(assert (= (and d!1198135 c!697915) b!4040023))

(assert (= (and d!1198135 (not c!697915)) b!4040025))

(assert (= (and d!1198135 c!697917) b!4040024))

(assert (= (and d!1198135 (not c!697917)) b!4040029))

(assert (= (and b!4040029 c!697916) b!4040032))

(assert (= (and b!4040029 (not c!697916)) b!4040030))

(assert (= (and b!4040030 (not res!1645286)) b!4040026))

(assert (= (and b!4040026 res!1645290) b!4040020))

(assert (= (and b!4040020 res!1645288) b!4040028))

(assert (= (and b!4040028 res!1645284) b!4040022))

(assert (= (and b!4040026 (not res!1645285)) b!4040021))

(assert (= (and b!4040021 res!1645287) b!4040019))

(assert (= (and b!4040019 (not res!1645289)) b!4040027))

(assert (= (and b!4040027 (not res!1645291)) b!4040031))

(assert (= (or b!4040024 b!4040019 b!4040020) bm!287371))

(assert (=> b!4040023 m!4633531))

(assert (=> b!4040028 m!4633573))

(declare-fun m!4635823 () Bool)

(assert (=> b!4040028 m!4635823))

(assert (=> b!4040028 m!4635823))

(declare-fun m!4635825 () Bool)

(assert (=> b!4040028 m!4635825))

(assert (=> b!4040025 m!4633573))

(declare-fun m!4635827 () Bool)

(assert (=> b!4040025 m!4635827))

(assert (=> b!4040025 m!4635827))

(declare-fun m!4635829 () Bool)

(assert (=> b!4040025 m!4635829))

(assert (=> b!4040025 m!4633573))

(assert (=> b!4040025 m!4635823))

(assert (=> b!4040025 m!4635829))

(assert (=> b!4040025 m!4635823))

(declare-fun m!4635831 () Bool)

(assert (=> b!4040025 m!4635831))

(assert (=> b!4040027 m!4633573))

(assert (=> b!4040027 m!4635823))

(assert (=> b!4040027 m!4635823))

(assert (=> b!4040027 m!4635825))

(assert (=> b!4040031 m!4633573))

(assert (=> b!4040031 m!4635827))

(assert (=> d!1198135 m!4633573))

(declare-fun m!4635833 () Bool)

(assert (=> d!1198135 m!4635833))

(assert (=> d!1198135 m!4633529))

(assert (=> bm!287371 m!4633573))

(assert (=> bm!287371 m!4635833))

(assert (=> b!4040022 m!4633573))

(assert (=> b!4040022 m!4635827))

(assert (=> b!4038464 d!1198135))

(assert (=> b!4038464 d!1197505))

(assert (=> b!4038464 d!1197507))

(assert (=> b!4038464 d!1197511))

(declare-fun d!1198137 () Bool)

(declare-fun nullableFct!1164 (Regex!11825) Bool)

(assert (=> d!1198137 (= (nullable!4148 (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (nullableFct!1164 (regex!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))))

(declare-fun bs!590836 () Bool)

(assert (= bs!590836 d!1198137))

(declare-fun m!4635835 () Bool)

(assert (=> bs!590836 m!4635835))

(assert (=> b!4038407 d!1198137))

(declare-fun d!1198139 () Bool)

(declare-fun e!2506698 () Bool)

(assert (=> d!1198139 e!2506698))

(declare-fun res!1645292 () Bool)

(assert (=> d!1198139 (=> res!1645292 e!2506698)))

(declare-fun lt!1437558 () Option!9334)

(assert (=> d!1198139 (= res!1645292 (isEmpty!25805 lt!1437558))))

(declare-fun e!2506696 () Option!9334)

(assert (=> d!1198139 (= lt!1437558 e!2506696)))

(declare-fun c!697918 () Bool)

(declare-fun lt!1437556 () tuple2!42318)

(assert (=> d!1198139 (= c!697918 (isEmpty!25803 (_1!24293 lt!1437556)))))

(assert (=> d!1198139 (= lt!1437556 (findLongestMatch!1298 (regex!6920 (h!48655 rules!2999)) lt!1436879))))

(assert (=> d!1198139 (ruleValid!2850 thiss!21717 (h!48655 rules!2999))))

(assert (=> d!1198139 (= (maxPrefixOneRule!2819 thiss!21717 (h!48655 rules!2999) lt!1436879) lt!1437558)))

(declare-fun b!4040033 () Bool)

(assert (=> b!4040033 (= e!2506696 (Some!9333 (tuple2!42315 (Token!12979 (apply!10109 (transformation!6920 (h!48655 rules!2999)) (seqFromList!5137 (_1!24293 lt!1437556))) (h!48655 rules!2999) (size!32320 (seqFromList!5137 (_1!24293 lt!1437556))) (_1!24293 lt!1437556)) (_2!24293 lt!1437556))))))

(declare-fun lt!1437559 () Unit!62437)

(assert (=> b!4040033 (= lt!1437559 (longestMatchIsAcceptedByMatchOrIsEmpty!1358 (regex!6920 (h!48655 rules!2999)) lt!1436879))))

(declare-fun res!1645295 () Bool)

(assert (=> b!4040033 (= res!1645295 (isEmpty!25803 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (h!48655 rules!2999)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))))))

(declare-fun e!2506697 () Bool)

(assert (=> b!4040033 (=> res!1645295 e!2506697)))

(assert (=> b!4040033 e!2506697))

(declare-fun lt!1437560 () Unit!62437)

(assert (=> b!4040033 (= lt!1437560 lt!1437559)))

(declare-fun lt!1437557 () Unit!62437)

(assert (=> b!4040033 (= lt!1437557 (lemmaSemiInverse!1905 (transformation!6920 (h!48655 rules!2999)) (seqFromList!5137 (_1!24293 lt!1437556))))))

(declare-fun b!4040034 () Bool)

(declare-fun e!2506699 () Bool)

(assert (=> b!4040034 (= e!2506698 e!2506699)))

(declare-fun res!1645297 () Bool)

(assert (=> b!4040034 (=> (not res!1645297) (not e!2506699))))

(assert (=> b!4040034 (= res!1645297 (matchR!5778 (regex!6920 (h!48655 rules!2999)) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1437558))))))))

(declare-fun b!4040035 () Bool)

(assert (=> b!4040035 (= e!2506696 None!9333)))

(declare-fun b!4040036 () Bool)

(declare-fun res!1645293 () Bool)

(assert (=> b!4040036 (=> (not res!1645293) (not e!2506699))))

(assert (=> b!4040036 (= res!1645293 (< (size!32317 (_2!24291 (get!14186 lt!1437558))) (size!32317 lt!1436879)))))

(declare-fun b!4040037 () Bool)

(assert (=> b!4040037 (= e!2506699 (= (size!32318 (_1!24291 (get!14186 lt!1437558))) (size!32317 (originalCharacters!7520 (_1!24291 (get!14186 lt!1437558))))))))

(declare-fun b!4040038 () Bool)

(declare-fun res!1645296 () Bool)

(assert (=> b!4040038 (=> (not res!1645296) (not e!2506699))))

(assert (=> b!4040038 (= res!1645296 (= (value!217854 (_1!24291 (get!14186 lt!1437558))) (apply!10109 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1437558)))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1437558)))))))))

(declare-fun b!4040039 () Bool)

(declare-fun res!1645298 () Bool)

(assert (=> b!4040039 (=> (not res!1645298) (not e!2506699))))

(assert (=> b!4040039 (= res!1645298 (= (rule!9990 (_1!24291 (get!14186 lt!1437558))) (h!48655 rules!2999)))))

(declare-fun b!4040040 () Bool)

(declare-fun res!1645294 () Bool)

(assert (=> b!4040040 (=> (not res!1645294) (not e!2506699))))

(assert (=> b!4040040 (= res!1645294 (= (++!11322 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1437558)))) (_2!24291 (get!14186 lt!1437558))) lt!1436879))))

(declare-fun b!4040041 () Bool)

(assert (=> b!4040041 (= e!2506697 (matchR!5778 (regex!6920 (h!48655 rules!2999)) (_1!24293 (findLongestMatchInner!1385 (regex!6920 (h!48655 rules!2999)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))))))

(assert (= (and d!1198139 c!697918) b!4040035))

(assert (= (and d!1198139 (not c!697918)) b!4040033))

(assert (= (and b!4040033 (not res!1645295)) b!4040041))

(assert (= (and d!1198139 (not res!1645292)) b!4040034))

(assert (= (and b!4040034 res!1645297) b!4040040))

(assert (= (and b!4040040 res!1645294) b!4040036))

(assert (= (and b!4040036 res!1645293) b!4040039))

(assert (= (and b!4040039 res!1645298) b!4040038))

(assert (= (and b!4040038 res!1645296) b!4040037))

(declare-fun m!4635837 () Bool)

(assert (=> b!4040037 m!4635837))

(declare-fun m!4635839 () Bool)

(assert (=> b!4040037 m!4635839))

(assert (=> b!4040039 m!4635837))

(declare-fun m!4635841 () Bool)

(assert (=> d!1198139 m!4635841))

(declare-fun m!4635843 () Bool)

(assert (=> d!1198139 m!4635843))

(declare-fun m!4635845 () Bool)

(assert (=> d!1198139 m!4635845))

(assert (=> d!1198139 m!4634257))

(assert (=> b!4040036 m!4635837))

(declare-fun m!4635847 () Bool)

(assert (=> b!4040036 m!4635847))

(assert (=> b!4040036 m!4633345))

(assert (=> b!4040034 m!4635837))

(declare-fun m!4635849 () Bool)

(assert (=> b!4040034 m!4635849))

(assert (=> b!4040034 m!4635849))

(declare-fun m!4635851 () Bool)

(assert (=> b!4040034 m!4635851))

(assert (=> b!4040034 m!4635851))

(declare-fun m!4635853 () Bool)

(assert (=> b!4040034 m!4635853))

(assert (=> b!4040040 m!4635837))

(assert (=> b!4040040 m!4635849))

(assert (=> b!4040040 m!4635849))

(assert (=> b!4040040 m!4635851))

(assert (=> b!4040040 m!4635851))

(declare-fun m!4635855 () Bool)

(assert (=> b!4040040 m!4635855))

(assert (=> b!4040038 m!4635837))

(declare-fun m!4635857 () Bool)

(assert (=> b!4040038 m!4635857))

(assert (=> b!4040038 m!4635857))

(declare-fun m!4635859 () Bool)

(assert (=> b!4040038 m!4635859))

(assert (=> b!4040041 m!4633583))

(assert (=> b!4040041 m!4633345))

(assert (=> b!4040041 m!4633583))

(assert (=> b!4040041 m!4633345))

(declare-fun m!4635861 () Bool)

(assert (=> b!4040041 m!4635861))

(declare-fun m!4635863 () Bool)

(assert (=> b!4040041 m!4635863))

(declare-fun m!4635865 () Bool)

(assert (=> b!4040033 m!4635865))

(declare-fun m!4635867 () Bool)

(assert (=> b!4040033 m!4635867))

(assert (=> b!4040033 m!4635865))

(declare-fun m!4635869 () Bool)

(assert (=> b!4040033 m!4635869))

(assert (=> b!4040033 m!4635865))

(declare-fun m!4635871 () Bool)

(assert (=> b!4040033 m!4635871))

(assert (=> b!4040033 m!4633345))

(declare-fun m!4635873 () Bool)

(assert (=> b!4040033 m!4635873))

(assert (=> b!4040033 m!4635865))

(declare-fun m!4635875 () Bool)

(assert (=> b!4040033 m!4635875))

(assert (=> b!4040033 m!4633583))

(assert (=> b!4040033 m!4633345))

(assert (=> b!4040033 m!4635861))

(assert (=> b!4040033 m!4633583))

(assert (=> bm!287252 d!1198139))

(assert (=> b!4038504 d!1197817))

(declare-fun bs!590837 () Bool)

(declare-fun d!1198141 () Bool)

(assert (= bs!590837 (and d!1198141 d!1197179)))

(declare-fun lambda!127378 () Int)

(assert (=> bs!590837 (= (and (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (= lambda!127378 lambda!127345))))

(declare-fun bs!590838 () Bool)

(assert (= bs!590838 (and d!1198141 d!1197625)))

(assert (=> bs!590838 (= (and (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (h!48655 rules!2999)))) (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (h!48655 rules!2999))))) (= lambda!127378 lambda!127363))))

(declare-fun bs!590839 () Bool)

(assert (= bs!590839 (and d!1198141 d!1197855)))

(assert (=> bs!590839 (= lambda!127378 lambda!127370)))

(declare-fun bs!590840 () Bool)

(assert (= bs!590840 (and d!1198141 d!1198129)))

(assert (=> bs!590840 (= (and (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (= lambda!127378 lambda!127377))))

(assert (=> d!1198141 true))

(assert (=> d!1198141 (< (dynLambda!18348 order!22633 (toChars!9315 (transformation!6920 (rule!9990 token!484)))) (dynLambda!18347 order!22631 lambda!127378))))

(assert (=> d!1198141 true))

(assert (=> d!1198141 (< (dynLambda!18346 order!22629 (toValue!9456 (transformation!6920 (rule!9990 token!484)))) (dynLambda!18347 order!22631 lambda!127378))))

(assert (=> d!1198141 (= (semiInverseModEq!2956 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))) (Forall!1489 lambda!127378))))

(declare-fun bs!590841 () Bool)

(assert (= bs!590841 d!1198141))

(declare-fun m!4635877 () Bool)

(assert (=> bs!590841 m!4635877))

(assert (=> d!1197137 d!1198141))

(declare-fun d!1198143 () Bool)

(declare-fun res!1645303 () Bool)

(declare-fun e!2506704 () Bool)

(assert (=> d!1198143 (=> res!1645303 e!2506704)))

(assert (=> d!1198143 (= res!1645303 ((_ is Nil!43235) rules!2999))))

(assert (=> d!1198143 (= (noDuplicateTag!2690 thiss!21717 rules!2999 Nil!43236) e!2506704)))

(declare-fun b!4040046 () Bool)

(declare-fun e!2506705 () Bool)

(assert (=> b!4040046 (= e!2506704 e!2506705)))

(declare-fun res!1645304 () Bool)

(assert (=> b!4040046 (=> (not res!1645304) (not e!2506705))))

(declare-fun contains!8590 (List!43360 String!49468) Bool)

(assert (=> b!4040046 (= res!1645304 (not (contains!8590 Nil!43236 (tag!7780 (h!48655 rules!2999)))))))

(declare-fun b!4040047 () Bool)

(assert (=> b!4040047 (= e!2506705 (noDuplicateTag!2690 thiss!21717 (t!334778 rules!2999) (Cons!43236 (tag!7780 (h!48655 rules!2999)) Nil!43236)))))

(assert (= (and d!1198143 (not res!1645303)) b!4040046))

(assert (= (and b!4040046 res!1645304) b!4040047))

(declare-fun m!4635879 () Bool)

(assert (=> b!4040046 m!4635879))

(declare-fun m!4635881 () Bool)

(assert (=> b!4040047 m!4635881))

(assert (=> b!4038440 d!1198143))

(declare-fun b!4040048 () Bool)

(declare-fun e!2506708 () Bool)

(declare-fun e!2506707 () Bool)

(assert (=> b!4040048 (= e!2506708 e!2506707)))

(declare-fun res!1645308 () Bool)

(assert (=> b!4040048 (=> (not res!1645308) (not e!2506707))))

(assert (=> b!4040048 (= res!1645308 (not ((_ is Nil!43233) (++!11322 lt!1436870 lt!1436858))))))

(declare-fun b!4040050 () Bool)

(assert (=> b!4040050 (= e!2506707 (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 (++!11322 lt!1436870 lt!1436858))))))

(declare-fun b!4040049 () Bool)

(declare-fun res!1645307 () Bool)

(assert (=> b!4040049 (=> (not res!1645307) (not e!2506707))))

(assert (=> b!4040049 (= res!1645307 (= (head!8551 lt!1436870) (head!8551 (++!11322 lt!1436870 lt!1436858))))))

(declare-fun d!1198145 () Bool)

(declare-fun e!2506706 () Bool)

(assert (=> d!1198145 e!2506706))

(declare-fun res!1645306 () Bool)

(assert (=> d!1198145 (=> res!1645306 e!2506706)))

(declare-fun lt!1437561 () Bool)

(assert (=> d!1198145 (= res!1645306 (not lt!1437561))))

(assert (=> d!1198145 (= lt!1437561 e!2506708)))

(declare-fun res!1645305 () Bool)

(assert (=> d!1198145 (=> res!1645305 e!2506708)))

(assert (=> d!1198145 (= res!1645305 ((_ is Nil!43233) lt!1436870))))

(assert (=> d!1198145 (= (isPrefix!4007 lt!1436870 (++!11322 lt!1436870 lt!1436858)) lt!1437561)))

(declare-fun b!4040051 () Bool)

(assert (=> b!4040051 (= e!2506706 (>= (size!32317 (++!11322 lt!1436870 lt!1436858)) (size!32317 lt!1436870)))))

(assert (= (and d!1198145 (not res!1645305)) b!4040048))

(assert (= (and b!4040048 res!1645308) b!4040049))

(assert (= (and b!4040049 res!1645307) b!4040050))

(assert (= (and d!1198145 (not res!1645306)) b!4040051))

(assert (=> b!4040050 m!4633543))

(assert (=> b!4040050 m!4633207))

(declare-fun m!4635883 () Bool)

(assert (=> b!4040050 m!4635883))

(assert (=> b!4040050 m!4633543))

(assert (=> b!4040050 m!4635883))

(declare-fun m!4635885 () Bool)

(assert (=> b!4040050 m!4635885))

(assert (=> b!4040049 m!4633549))

(assert (=> b!4040049 m!4633207))

(declare-fun m!4635887 () Bool)

(assert (=> b!4040049 m!4635887))

(assert (=> b!4040051 m!4633207))

(declare-fun m!4635889 () Bool)

(assert (=> b!4040051 m!4635889))

(assert (=> b!4040051 m!4633263))

(assert (=> d!1197159 d!1198145))

(assert (=> d!1197159 d!1197081))

(declare-fun d!1198147 () Bool)

(assert (=> d!1198147 (isPrefix!4007 lt!1436870 (++!11322 lt!1436870 lt!1436858))))

(assert (=> d!1198147 true))

(declare-fun _$46!1759 () Unit!62437)

(assert (=> d!1198147 (= (choose!24469 lt!1436870 lt!1436858) _$46!1759)))

(declare-fun bs!590842 () Bool)

(assert (= bs!590842 d!1198147))

(assert (=> bs!590842 m!4633207))

(assert (=> bs!590842 m!4633207))

(assert (=> bs!590842 m!4633607))

(assert (=> d!1197159 d!1198147))

(declare-fun b!4040054 () Bool)

(declare-fun res!1645309 () Bool)

(declare-fun e!2506710 () Bool)

(assert (=> b!4040054 (=> (not res!1645309) (not e!2506710))))

(declare-fun lt!1437562 () List!43357)

(assert (=> b!4040054 (= res!1645309 (= (size!32317 lt!1437562) (+ (size!32317 (t!334776 lt!1436870)) (size!32317 lt!1436867))))))

(declare-fun b!4040052 () Bool)

(declare-fun e!2506709 () List!43357)

(assert (=> b!4040052 (= e!2506709 lt!1436867)))

(declare-fun b!4040053 () Bool)

(assert (=> b!4040053 (= e!2506709 (Cons!43233 (h!48653 (t!334776 lt!1436870)) (++!11322 (t!334776 (t!334776 lt!1436870)) lt!1436867)))))

(declare-fun d!1198149 () Bool)

(assert (=> d!1198149 e!2506710))

(declare-fun res!1645310 () Bool)

(assert (=> d!1198149 (=> (not res!1645310) (not e!2506710))))

(assert (=> d!1198149 (= res!1645310 (= (content!6573 lt!1437562) ((_ map or) (content!6573 (t!334776 lt!1436870)) (content!6573 lt!1436867))))))

(assert (=> d!1198149 (= lt!1437562 e!2506709)))

(declare-fun c!697919 () Bool)

(assert (=> d!1198149 (= c!697919 ((_ is Nil!43233) (t!334776 lt!1436870)))))

(assert (=> d!1198149 (= (++!11322 (t!334776 lt!1436870) lt!1436867) lt!1437562)))

(declare-fun b!4040055 () Bool)

(assert (=> b!4040055 (= e!2506710 (or (not (= lt!1436867 Nil!43233)) (= lt!1437562 (t!334776 lt!1436870))))))

(assert (= (and d!1198149 c!697919) b!4040052))

(assert (= (and d!1198149 (not c!697919)) b!4040053))

(assert (= (and d!1198149 res!1645310) b!4040054))

(assert (= (and b!4040054 res!1645309) b!4040055))

(declare-fun m!4635891 () Bool)

(assert (=> b!4040054 m!4635891))

(assert (=> b!4040054 m!4634089))

(assert (=> b!4040054 m!4634113))

(declare-fun m!4635893 () Bool)

(assert (=> b!4040053 m!4635893))

(declare-fun m!4635895 () Bool)

(assert (=> d!1198149 m!4635895))

(assert (=> d!1198149 m!4634295))

(assert (=> d!1198149 m!4634119))

(assert (=> b!4038857 d!1198149))

(declare-fun d!1198151 () Bool)

(declare-fun charsToBigInt!0 (List!43358 Int) Int)

(assert (=> d!1198151 (= (inv!15 (value!217854 token!484)) (= (charsToBigInt!0 (text!50499 (value!217854 token!484)) 0) (value!217849 (value!217854 token!484))))))

(declare-fun bs!590843 () Bool)

(assert (= bs!590843 d!1198151))

(declare-fun m!4635897 () Bool)

(assert (=> bs!590843 m!4635897))

(assert (=> b!4038501 d!1198151))

(assert (=> b!4038772 d!1197473))

(declare-fun d!1198153 () Bool)

(assert (=> d!1198153 (= (head!8551 lt!1436849) (h!48653 lt!1436849))))

(assert (=> b!4038772 d!1198153))

(declare-fun d!1198155 () Bool)

(assert (=> d!1198155 (= (isEmpty!25803 (originalCharacters!7520 token!484)) ((_ is Nil!43233) (originalCharacters!7520 token!484)))))

(assert (=> d!1197093 d!1198155))

(declare-fun b!4040056 () Bool)

(declare-fun e!2506713 () Bool)

(declare-fun e!2506712 () Bool)

(assert (=> b!4040056 (= e!2506713 e!2506712)))

(declare-fun res!1645314 () Bool)

(assert (=> b!4040056 (=> (not res!1645314) (not e!2506712))))

(assert (=> b!4040056 (= res!1645314 (not ((_ is Nil!43233) (tail!6283 lt!1436854))))))

(declare-fun b!4040058 () Bool)

(assert (=> b!4040058 (= e!2506712 (isPrefix!4007 (tail!6283 (tail!6283 lt!1436870)) (tail!6283 (tail!6283 lt!1436854))))))

(declare-fun b!4040057 () Bool)

(declare-fun res!1645313 () Bool)

(assert (=> b!4040057 (=> (not res!1645313) (not e!2506712))))

(assert (=> b!4040057 (= res!1645313 (= (head!8551 (tail!6283 lt!1436870)) (head!8551 (tail!6283 lt!1436854))))))

(declare-fun d!1198157 () Bool)

(declare-fun e!2506711 () Bool)

(assert (=> d!1198157 e!2506711))

(declare-fun res!1645312 () Bool)

(assert (=> d!1198157 (=> res!1645312 e!2506711)))

(declare-fun lt!1437563 () Bool)

(assert (=> d!1198157 (= res!1645312 (not lt!1437563))))

(assert (=> d!1198157 (= lt!1437563 e!2506713)))

(declare-fun res!1645311 () Bool)

(assert (=> d!1198157 (=> res!1645311 e!2506713)))

(assert (=> d!1198157 (= res!1645311 ((_ is Nil!43233) (tail!6283 lt!1436870)))))

(assert (=> d!1198157 (= (isPrefix!4007 (tail!6283 lt!1436870) (tail!6283 lt!1436854)) lt!1437563)))

(declare-fun b!4040059 () Bool)

(assert (=> b!4040059 (= e!2506711 (>= (size!32317 (tail!6283 lt!1436854)) (size!32317 (tail!6283 lt!1436870))))))

(assert (= (and d!1198157 (not res!1645311)) b!4040056))

(assert (= (and b!4040056 res!1645314) b!4040057))

(assert (= (and b!4040057 res!1645313) b!4040058))

(assert (= (and d!1198157 (not res!1645312)) b!4040059))

(assert (=> b!4040058 m!4633543))

(assert (=> b!4040058 m!4634609))

(assert (=> b!4040058 m!4633545))

(declare-fun m!4635899 () Bool)

(assert (=> b!4040058 m!4635899))

(assert (=> b!4040058 m!4634609))

(assert (=> b!4040058 m!4635899))

(declare-fun m!4635901 () Bool)

(assert (=> b!4040058 m!4635901))

(assert (=> b!4040057 m!4633543))

(assert (=> b!4040057 m!4634613))

(assert (=> b!4040057 m!4633545))

(declare-fun m!4635903 () Bool)

(assert (=> b!4040057 m!4635903))

(assert (=> b!4040059 m!4633545))

(declare-fun m!4635905 () Bool)

(assert (=> b!4040059 m!4635905))

(assert (=> b!4040059 m!4633543))

(assert (=> b!4040059 m!4634739))

(assert (=> b!4038443 d!1198157))

(assert (=> b!4038443 d!1197563))

(declare-fun d!1198159 () Bool)

(assert (=> d!1198159 (= (tail!6283 lt!1436854) (t!334776 lt!1436854))))

(assert (=> b!4038443 d!1198159))

(declare-fun d!1198161 () Bool)

(assert (=> d!1198161 (= (nullable!4148 (regex!6920 (rule!9990 token!484))) (nullableFct!1164 (regex!6920 (rule!9990 token!484))))))

(declare-fun bs!590844 () Bool)

(assert (= bs!590844 d!1198161))

(declare-fun m!4635907 () Bool)

(assert (=> bs!590844 m!4635907))

(assert (=> b!4038430 d!1198161))

(assert (=> b!4038776 d!1198115))

(assert (=> b!4038776 d!1198059))

(declare-fun b!4040060 () Bool)

(declare-fun res!1645317 () Bool)

(declare-fun e!2506715 () Bool)

(assert (=> b!4040060 (=> (not res!1645317) (not e!2506715))))

(declare-fun lt!1437568 () Option!9334)

(assert (=> b!4040060 (= res!1645317 (= (value!217854 (_1!24291 (get!14186 lt!1437568))) (apply!10109 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1437568)))) (seqFromList!5137 (originalCharacters!7520 (_1!24291 (get!14186 lt!1437568)))))))))

(declare-fun call!287377 () Option!9334)

(declare-fun bm!287372 () Bool)

(assert (=> bm!287372 (= call!287377 (maxPrefixOneRule!2819 thiss!21717 (h!48655 (t!334778 rules!2999)) lt!1436861))))

(declare-fun b!4040061 () Bool)

(declare-fun e!2506714 () Option!9334)

(declare-fun lt!1437564 () Option!9334)

(declare-fun lt!1437565 () Option!9334)

(assert (=> b!4040061 (= e!2506714 (ite (and ((_ is None!9333) lt!1437564) ((_ is None!9333) lt!1437565)) None!9333 (ite ((_ is None!9333) lt!1437565) lt!1437564 (ite ((_ is None!9333) lt!1437564) lt!1437565 (ite (>= (size!32318 (_1!24291 (v!39731 lt!1437564))) (size!32318 (_1!24291 (v!39731 lt!1437565)))) lt!1437564 lt!1437565)))))))

(assert (=> b!4040061 (= lt!1437564 call!287377)))

(assert (=> b!4040061 (= lt!1437565 (maxPrefix!3807 thiss!21717 (t!334778 (t!334778 rules!2999)) lt!1436861))))

(declare-fun b!4040062 () Bool)

(assert (=> b!4040062 (= e!2506715 (contains!8588 (t!334778 rules!2999) (rule!9990 (_1!24291 (get!14186 lt!1437568)))))))

(declare-fun b!4040063 () Bool)

(declare-fun res!1645318 () Bool)

(assert (=> b!4040063 (=> (not res!1645318) (not e!2506715))))

(assert (=> b!4040063 (= res!1645318 (< (size!32317 (_2!24291 (get!14186 lt!1437568))) (size!32317 lt!1436861)))))

(declare-fun b!4040064 () Bool)

(declare-fun res!1645316 () Bool)

(assert (=> b!4040064 (=> (not res!1645316) (not e!2506715))))

(assert (=> b!4040064 (= res!1645316 (= (++!11322 (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1437568)))) (_2!24291 (get!14186 lt!1437568))) lt!1436861))))

(declare-fun b!4040065 () Bool)

(assert (=> b!4040065 (= e!2506714 call!287377)))

(declare-fun b!4040066 () Bool)

(declare-fun res!1645319 () Bool)

(assert (=> b!4040066 (=> (not res!1645319) (not e!2506715))))

(assert (=> b!4040066 (= res!1645319 (= (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1437568)))) (originalCharacters!7520 (_1!24291 (get!14186 lt!1437568)))))))

(declare-fun b!4040067 () Bool)

(declare-fun e!2506716 () Bool)

(assert (=> b!4040067 (= e!2506716 e!2506715)))

(declare-fun res!1645321 () Bool)

(assert (=> b!4040067 (=> (not res!1645321) (not e!2506715))))

(assert (=> b!4040067 (= res!1645321 (isDefined!7101 lt!1437568))))

(declare-fun b!4040068 () Bool)

(declare-fun res!1645315 () Bool)

(assert (=> b!4040068 (=> (not res!1645315) (not e!2506715))))

(assert (=> b!4040068 (= res!1645315 (matchR!5778 (regex!6920 (rule!9990 (_1!24291 (get!14186 lt!1437568)))) (list!16094 (charsOf!4736 (_1!24291 (get!14186 lt!1437568))))))))

(declare-fun d!1198163 () Bool)

(assert (=> d!1198163 e!2506716))

(declare-fun res!1645320 () Bool)

(assert (=> d!1198163 (=> res!1645320 e!2506716)))

(assert (=> d!1198163 (= res!1645320 (isEmpty!25805 lt!1437568))))

(assert (=> d!1198163 (= lt!1437568 e!2506714)))

(declare-fun c!697920 () Bool)

(assert (=> d!1198163 (= c!697920 (and ((_ is Cons!43235) (t!334778 rules!2999)) ((_ is Nil!43235) (t!334778 (t!334778 rules!2999)))))))

(declare-fun lt!1437566 () Unit!62437)

(declare-fun lt!1437567 () Unit!62437)

(assert (=> d!1198163 (= lt!1437566 lt!1437567)))

(assert (=> d!1198163 (isPrefix!4007 lt!1436861 lt!1436861)))

(assert (=> d!1198163 (= lt!1437567 (lemmaIsPrefixRefl!2574 lt!1436861 lt!1436861))))

(assert (=> d!1198163 (rulesValidInductive!2522 thiss!21717 (t!334778 rules!2999))))

(assert (=> d!1198163 (= (maxPrefix!3807 thiss!21717 (t!334778 rules!2999) lt!1436861) lt!1437568)))

(assert (= (and d!1198163 c!697920) b!4040065))

(assert (= (and d!1198163 (not c!697920)) b!4040061))

(assert (= (or b!4040065 b!4040061) bm!287372))

(assert (= (and d!1198163 (not res!1645320)) b!4040067))

(assert (= (and b!4040067 res!1645321) b!4040066))

(assert (= (and b!4040066 res!1645319) b!4040063))

(assert (= (and b!4040063 res!1645318) b!4040064))

(assert (= (and b!4040064 res!1645316) b!4040060))

(assert (= (and b!4040060 res!1645317) b!4040068))

(assert (= (and b!4040068 res!1645315) b!4040062))

(declare-fun m!4635909 () Bool)

(assert (=> b!4040061 m!4635909))

(declare-fun m!4635911 () Bool)

(assert (=> bm!287372 m!4635911))

(declare-fun m!4635913 () Bool)

(assert (=> b!4040062 m!4635913))

(declare-fun m!4635915 () Bool)

(assert (=> b!4040062 m!4635915))

(declare-fun m!4635917 () Bool)

(assert (=> b!4040067 m!4635917))

(declare-fun m!4635919 () Bool)

(assert (=> d!1198163 m!4635919))

(assert (=> d!1198163 m!4633623))

(assert (=> d!1198163 m!4633625))

(assert (=> d!1198163 m!4634259))

(assert (=> b!4040066 m!4635913))

(declare-fun m!4635921 () Bool)

(assert (=> b!4040066 m!4635921))

(assert (=> b!4040066 m!4635921))

(declare-fun m!4635923 () Bool)

(assert (=> b!4040066 m!4635923))

(assert (=> b!4040064 m!4635913))

(assert (=> b!4040064 m!4635921))

(assert (=> b!4040064 m!4635921))

(assert (=> b!4040064 m!4635923))

(assert (=> b!4040064 m!4635923))

(declare-fun m!4635925 () Bool)

(assert (=> b!4040064 m!4635925))

(assert (=> b!4040068 m!4635913))

(assert (=> b!4040068 m!4635921))

(assert (=> b!4040068 m!4635921))

(assert (=> b!4040068 m!4635923))

(assert (=> b!4040068 m!4635923))

(declare-fun m!4635927 () Bool)

(assert (=> b!4040068 m!4635927))

(assert (=> b!4040060 m!4635913))

(declare-fun m!4635929 () Bool)

(assert (=> b!4040060 m!4635929))

(assert (=> b!4040060 m!4635929))

(declare-fun m!4635931 () Bool)

(assert (=> b!4040060 m!4635931))

(assert (=> b!4040063 m!4635913))

(declare-fun m!4635933 () Bool)

(assert (=> b!4040063 m!4635933))

(assert (=> b!4040063 m!4633641))

(assert (=> b!4038475 d!1198163))

(declare-fun d!1198165 () Bool)

(declare-fun c!697921 () Bool)

(assert (=> d!1198165 (= c!697921 ((_ is Nil!43233) lt!1437099))))

(declare-fun e!2506717 () (InoxSet C!23836))

(assert (=> d!1198165 (= (content!6573 lt!1437099) e!2506717)))

(declare-fun b!4040069 () Bool)

(assert (=> b!4040069 (= e!2506717 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4040070 () Bool)

(assert (=> b!4040070 (= e!2506717 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1437099) true) (content!6573 (t!334776 lt!1437099))))))

(assert (= (and d!1198165 c!697921) b!4040069))

(assert (= (and d!1198165 (not c!697921)) b!4040070))

(declare-fun m!4635935 () Bool)

(assert (=> b!4040070 m!4635935))

(declare-fun m!4635937 () Bool)

(assert (=> b!4040070 m!4635937))

(assert (=> d!1197339 d!1198165))

(assert (=> d!1197339 d!1197425))

(declare-fun d!1198167 () Bool)

(declare-fun c!697922 () Bool)

(assert (=> d!1198167 (= c!697922 ((_ is Nil!43233) lt!1436867))))

(declare-fun e!2506718 () (InoxSet C!23836))

(assert (=> d!1198167 (= (content!6573 lt!1436867) e!2506718)))

(declare-fun b!4040071 () Bool)

(assert (=> b!4040071 (= e!2506718 ((as const (Array C!23836 Bool)) false))))

(declare-fun b!4040072 () Bool)

(assert (=> b!4040072 (= e!2506718 ((_ map or) (store ((as const (Array C!23836 Bool)) false) (h!48653 lt!1436867) true) (content!6573 (t!334776 lt!1436867))))))

(assert (= (and d!1198167 c!697922) b!4040071))

(assert (= (and d!1198167 (not c!697922)) b!4040072))

(declare-fun m!4635939 () Bool)

(assert (=> b!4040072 m!4635939))

(declare-fun m!4635941 () Bool)

(assert (=> b!4040072 m!4635941))

(assert (=> d!1197339 d!1198167))

(assert (=> d!1197173 d!1198141))

(declare-fun b!4040073 () Bool)

(declare-fun e!2506724 () Bool)

(declare-fun e!2506723 () Bool)

(assert (=> b!4040073 (= e!2506724 e!2506723)))

(declare-fun res!1645327 () Bool)

(assert (=> b!4040073 (=> res!1645327 e!2506723)))

(declare-fun call!287378 () Bool)

(assert (=> b!4040073 (= res!1645327 call!287378)))

(declare-fun b!4040074 () Bool)

(declare-fun res!1645326 () Bool)

(declare-fun e!2506722 () Bool)

(assert (=> b!4040074 (=> (not res!1645326) (not e!2506722))))

(assert (=> b!4040074 (= res!1645326 (not call!287378))))

(declare-fun b!4040075 () Bool)

(declare-fun e!2506719 () Bool)

(assert (=> b!4040075 (= e!2506719 e!2506724)))

(declare-fun res!1645325 () Bool)

(assert (=> b!4040075 (=> (not res!1645325) (not e!2506724))))

(declare-fun lt!1437569 () Bool)

(assert (=> b!4040075 (= res!1645325 (not lt!1437569))))

(declare-fun b!4040076 () Bool)

(assert (=> b!4040076 (= e!2506722 (= (head!8551 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))) (c!697517 (regex!6920 (rule!9990 token!484)))))))

(declare-fun d!1198169 () Bool)

(declare-fun e!2506720 () Bool)

(assert (=> d!1198169 e!2506720))

(declare-fun c!697925 () Bool)

(assert (=> d!1198169 (= c!697925 ((_ is EmptyExpr!11825) (regex!6920 (rule!9990 token!484))))))

(declare-fun e!2506721 () Bool)

(assert (=> d!1198169 (= lt!1437569 e!2506721)))

(declare-fun c!697923 () Bool)

(assert (=> d!1198169 (= c!697923 (isEmpty!25803 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))))))

(assert (=> d!1198169 (validRegex!5348 (regex!6920 (rule!9990 token!484)))))

(assert (=> d!1198169 (= (matchR!5778 (regex!6920 (rule!9990 token!484)) (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))) lt!1437569)))

(declare-fun b!4040077 () Bool)

(assert (=> b!4040077 (= e!2506721 (nullable!4148 (regex!6920 (rule!9990 token!484))))))

(declare-fun b!4040078 () Bool)

(assert (=> b!4040078 (= e!2506720 (= lt!1437569 call!287378))))

(declare-fun bm!287373 () Bool)

(assert (=> bm!287373 (= call!287378 (isEmpty!25803 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))))))

(declare-fun b!4040079 () Bool)

(assert (=> b!4040079 (= e!2506721 (matchR!5778 (derivativeStep!3553 (regex!6920 (rule!9990 token!484)) (head!8551 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879))))) (tail!6283 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879))))))))

(declare-fun b!4040080 () Bool)

(declare-fun res!1645323 () Bool)

(assert (=> b!4040080 (=> res!1645323 e!2506719)))

(assert (=> b!4040080 (= res!1645323 e!2506722)))

(declare-fun res!1645328 () Bool)

(assert (=> b!4040080 (=> (not res!1645328) (not e!2506722))))

(assert (=> b!4040080 (= res!1645328 lt!1437569)))

(declare-fun b!4040081 () Bool)

(declare-fun res!1645329 () Bool)

(assert (=> b!4040081 (=> res!1645329 e!2506723)))

(assert (=> b!4040081 (= res!1645329 (not (isEmpty!25803 (tail!6283 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))))))))

(declare-fun b!4040082 () Bool)

(declare-fun res!1645322 () Bool)

(assert (=> b!4040082 (=> (not res!1645322) (not e!2506722))))

(assert (=> b!4040082 (= res!1645322 (isEmpty!25803 (tail!6283 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879))))))))

(declare-fun b!4040083 () Bool)

(declare-fun e!2506725 () Bool)

(assert (=> b!4040083 (= e!2506720 e!2506725)))

(declare-fun c!697924 () Bool)

(assert (=> b!4040083 (= c!697924 ((_ is EmptyLang!11825) (regex!6920 (rule!9990 token!484))))))

(declare-fun b!4040084 () Bool)

(declare-fun res!1645324 () Bool)

(assert (=> b!4040084 (=> res!1645324 e!2506719)))

(assert (=> b!4040084 (= res!1645324 (not ((_ is ElementMatch!11825) (regex!6920 (rule!9990 token!484)))))))

(assert (=> b!4040084 (= e!2506725 e!2506719)))

(declare-fun b!4040085 () Bool)

(assert (=> b!4040085 (= e!2506723 (not (= (head!8551 (_1!24293 (findLongestMatchInner!1385 (regex!6920 (rule!9990 token!484)) Nil!43233 (size!32317 Nil!43233) lt!1436879 lt!1436879 (size!32317 lt!1436879)))) (c!697517 (regex!6920 (rule!9990 token!484))))))))

(declare-fun b!4040086 () Bool)

(assert (=> b!4040086 (= e!2506725 (not lt!1437569))))

(assert (= (and d!1198169 c!697923) b!4040077))

(assert (= (and d!1198169 (not c!697923)) b!4040079))

(assert (= (and d!1198169 c!697925) b!4040078))

(assert (= (and d!1198169 (not c!697925)) b!4040083))

(assert (= (and b!4040083 c!697924) b!4040086))

(assert (= (and b!4040083 (not c!697924)) b!4040084))

(assert (= (and b!4040084 (not res!1645324)) b!4040080))

(assert (= (and b!4040080 res!1645328) b!4040074))

(assert (= (and b!4040074 res!1645326) b!4040082))

(assert (= (and b!4040082 res!1645322) b!4040076))

(assert (= (and b!4040080 (not res!1645323)) b!4040075))

(assert (= (and b!4040075 res!1645325) b!4040073))

(assert (= (and b!4040073 (not res!1645327)) b!4040081))

(assert (= (and b!4040081 (not res!1645329)) b!4040085))

(assert (= (or b!4040078 b!4040073 b!4040074) bm!287373))

(assert (=> b!4040077 m!4633531))

(declare-fun m!4635943 () Bool)

(assert (=> b!4040082 m!4635943))

(assert (=> b!4040082 m!4635943))

(declare-fun m!4635945 () Bool)

(assert (=> b!4040082 m!4635945))

(declare-fun m!4635947 () Bool)

(assert (=> b!4040079 m!4635947))

(assert (=> b!4040079 m!4635947))

(declare-fun m!4635949 () Bool)

(assert (=> b!4040079 m!4635949))

(assert (=> b!4040079 m!4635943))

(assert (=> b!4040079 m!4635949))

(assert (=> b!4040079 m!4635943))

(declare-fun m!4635951 () Bool)

(assert (=> b!4040079 m!4635951))

(assert (=> b!4040081 m!4635943))

(assert (=> b!4040081 m!4635943))

(assert (=> b!4040081 m!4635945))

(assert (=> b!4040085 m!4635947))

(assert (=> d!1198169 m!4633599))

(assert (=> d!1198169 m!4633529))

(assert (=> bm!287373 m!4633599))

(assert (=> b!4040076 m!4635947))

(assert (=> b!4038471 d!1198169))

(assert (=> b!4038471 d!1197881))

(assert (=> b!4038471 d!1197867))

(assert (=> b!4038471 d!1197421))

(assert (=> d!1197139 d!1197753))

(declare-fun d!1198171 () Bool)

(declare-fun lt!1437570 () Int)

(assert (=> d!1198171 (>= lt!1437570 0)))

(declare-fun e!2506726 () Int)

(assert (=> d!1198171 (= lt!1437570 e!2506726)))

(declare-fun c!697926 () Bool)

(assert (=> d!1198171 (= c!697926 ((_ is Nil!43233) lt!1436855))))

(assert (=> d!1198171 (= (size!32317 lt!1436855) lt!1437570)))

(declare-fun b!4040087 () Bool)

(assert (=> b!4040087 (= e!2506726 0)))

(declare-fun b!4040088 () Bool)

(assert (=> b!4040088 (= e!2506726 (+ 1 (size!32317 (t!334776 lt!1436855))))))

(assert (= (and d!1198171 c!697926) b!4040087))

(assert (= (and d!1198171 (not c!697926)) b!4040088))

(declare-fun m!4635953 () Bool)

(assert (=> b!4040088 m!4635953))

(assert (=> b!4038486 d!1198171))

(assert (=> b!4038486 d!1197321))

(assert (=> b!4038824 d!1198161))

(assert (=> b!4038467 d!1197511))

(declare-fun d!1198173 () Bool)

(declare-fun lt!1437571 () Int)

(assert (=> d!1198173 (>= lt!1437571 0)))

(declare-fun e!2506727 () Int)

(assert (=> d!1198173 (= lt!1437571 e!2506727)))

(declare-fun c!697927 () Bool)

(assert (=> d!1198173 (= c!697927 ((_ is Nil!43233) (originalCharacters!7520 (_1!24291 (get!14186 lt!1436974)))))))

(assert (=> d!1198173 (= (size!32317 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436974)))) lt!1437571)))

(declare-fun b!4040089 () Bool)

(assert (=> b!4040089 (= e!2506727 0)))

(declare-fun b!4040090 () Bool)

(assert (=> b!4040090 (= e!2506727 (+ 1 (size!32317 (t!334776 (originalCharacters!7520 (_1!24291 (get!14186 lt!1436974)))))))))

(assert (= (and d!1198173 c!697927) b!4040089))

(assert (= (and d!1198173 (not c!697927)) b!4040090))

(declare-fun m!4635955 () Bool)

(assert (=> b!4040090 m!4635955))

(assert (=> b!4038467 d!1198173))

(declare-fun d!1198175 () Bool)

(assert (=> d!1198175 (= (list!16094 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484))) (list!16095 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484)))))))

(declare-fun bs!590845 () Bool)

(assert (= bs!590845 d!1198175))

(declare-fun m!4635957 () Bool)

(assert (=> bs!590845 m!4635957))

(assert (=> b!4038363 d!1198175))

(declare-fun d!1198177 () Bool)

(assert (=> d!1198177 (= (inv!57776 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484))) (isBalanced!3679 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484)))))))

(declare-fun bs!590846 () Bool)

(assert (= bs!590846 d!1198177))

(declare-fun m!4635959 () Bool)

(assert (=> bs!590846 m!4635959))

(assert (=> tb!242657 d!1198177))

(declare-fun bs!590847 () Bool)

(declare-fun d!1198179 () Bool)

(assert (= bs!590847 (and d!1198179 d!1197817)))

(declare-fun lambda!127379 () Int)

(assert (=> bs!590847 (= (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))) (= lambda!127379 lambda!127368))))

(declare-fun bs!590848 () Bool)

(assert (= bs!590848 (and d!1198179 d!1198073)))

(assert (=> bs!590848 (= (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) (= lambda!127379 lambda!127376))))

(assert (=> d!1198179 true))

(assert (=> d!1198179 (< (dynLambda!18346 order!22629 (toValue!9456 (transformation!6920 (h!48655 rules!2999)))) (dynLambda!18351 order!22637 lambda!127379))))

(assert (=> d!1198179 (= (equivClasses!2855 (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (h!48655 rules!2999)))) (Forall2!1089 lambda!127379))))

(declare-fun bs!590849 () Bool)

(assert (= bs!590849 d!1198179))

(declare-fun m!4635961 () Bool)

(assert (=> bs!590849 m!4635961))

(assert (=> b!4038791 d!1198179))

(declare-fun b!4040092 () Bool)

(declare-fun e!2506728 () Bool)

(declare-fun tp!1226643 () Bool)

(declare-fun tp!1226641 () Bool)

(assert (=> b!4040092 (= e!2506728 (and tp!1226643 tp!1226641))))

(declare-fun b!4040094 () Bool)

(declare-fun tp!1226642 () Bool)

(declare-fun tp!1226644 () Bool)

(assert (=> b!4040094 (= e!2506728 (and tp!1226642 tp!1226644))))

(assert (=> b!4038887 (= tp!1226530 e!2506728)))

(declare-fun b!4040093 () Bool)

(declare-fun tp!1226645 () Bool)

(assert (=> b!4040093 (= e!2506728 tp!1226645)))

(declare-fun b!4040091 () Bool)

(assert (=> b!4040091 (= e!2506728 tp_is_empty!20621)))

(assert (= (and b!4038887 ((_ is ElementMatch!11825) (reg!12154 (regex!6920 (rule!9990 token!484))))) b!4040091))

(assert (= (and b!4038887 ((_ is Concat!18976) (reg!12154 (regex!6920 (rule!9990 token!484))))) b!4040092))

(assert (= (and b!4038887 ((_ is Star!11825) (reg!12154 (regex!6920 (rule!9990 token!484))))) b!4040093))

(assert (= (and b!4038887 ((_ is Union!11825) (reg!12154 (regex!6920 (rule!9990 token!484))))) b!4040094))

(declare-fun b!4040095 () Bool)

(declare-fun e!2506729 () Bool)

(declare-fun tp!1226646 () Bool)

(assert (=> b!4040095 (= e!2506729 (and tp_is_empty!20621 tp!1226646))))

(assert (=> b!4038895 (= tp!1226538 e!2506729)))

(assert (= (and b!4038895 ((_ is Cons!43233) (t!334776 (t!334776 newSuffix!27)))) b!4040095))

(declare-fun b!4040097 () Bool)

(declare-fun e!2506730 () Bool)

(declare-fun tp!1226649 () Bool)

(declare-fun tp!1226647 () Bool)

(assert (=> b!4040097 (= e!2506730 (and tp!1226649 tp!1226647))))

(declare-fun b!4040099 () Bool)

(declare-fun tp!1226648 () Bool)

(declare-fun tp!1226650 () Bool)

(assert (=> b!4040099 (= e!2506730 (and tp!1226648 tp!1226650))))

(assert (=> b!4038886 (= tp!1226528 e!2506730)))

(declare-fun b!4040098 () Bool)

(declare-fun tp!1226651 () Bool)

(assert (=> b!4040098 (= e!2506730 tp!1226651)))

(declare-fun b!4040096 () Bool)

(assert (=> b!4040096 (= e!2506730 tp_is_empty!20621)))

(assert (= (and b!4038886 ((_ is ElementMatch!11825) (regOne!24162 (regex!6920 (rule!9990 token!484))))) b!4040096))

(assert (= (and b!4038886 ((_ is Concat!18976) (regOne!24162 (regex!6920 (rule!9990 token!484))))) b!4040097))

(assert (= (and b!4038886 ((_ is Star!11825) (regOne!24162 (regex!6920 (rule!9990 token!484))))) b!4040098))

(assert (= (and b!4038886 ((_ is Union!11825) (regOne!24162 (regex!6920 (rule!9990 token!484))))) b!4040099))

(declare-fun b!4040101 () Bool)

(declare-fun e!2506731 () Bool)

(declare-fun tp!1226654 () Bool)

(declare-fun tp!1226652 () Bool)

(assert (=> b!4040101 (= e!2506731 (and tp!1226654 tp!1226652))))

(declare-fun b!4040103 () Bool)

(declare-fun tp!1226653 () Bool)

(declare-fun tp!1226655 () Bool)

(assert (=> b!4040103 (= e!2506731 (and tp!1226653 tp!1226655))))

(assert (=> b!4038886 (= tp!1226526 e!2506731)))

(declare-fun b!4040102 () Bool)

(declare-fun tp!1226656 () Bool)

(assert (=> b!4040102 (= e!2506731 tp!1226656)))

(declare-fun b!4040100 () Bool)

(assert (=> b!4040100 (= e!2506731 tp_is_empty!20621)))

(assert (= (and b!4038886 ((_ is ElementMatch!11825) (regTwo!24162 (regex!6920 (rule!9990 token!484))))) b!4040100))

(assert (= (and b!4038886 ((_ is Concat!18976) (regTwo!24162 (regex!6920 (rule!9990 token!484))))) b!4040101))

(assert (= (and b!4038886 ((_ is Star!11825) (regTwo!24162 (regex!6920 (rule!9990 token!484))))) b!4040102))

(assert (= (and b!4038886 ((_ is Union!11825) (regTwo!24162 (regex!6920 (rule!9990 token!484))))) b!4040103))

(declare-fun b!4040104 () Bool)

(declare-fun e!2506732 () Bool)

(declare-fun tp!1226657 () Bool)

(assert (=> b!4040104 (= e!2506732 (and tp_is_empty!20621 tp!1226657))))

(assert (=> b!4038874 (= tp!1226515 e!2506732)))

(assert (= (and b!4038874 ((_ is Cons!43233) (t!334776 (originalCharacters!7520 token!484)))) b!4040104))

(declare-fun b!4040106 () Bool)

(declare-fun e!2506733 () Bool)

(declare-fun tp!1226660 () Bool)

(declare-fun tp!1226658 () Bool)

(assert (=> b!4040106 (= e!2506733 (and tp!1226660 tp!1226658))))

(declare-fun b!4040108 () Bool)

(declare-fun tp!1226659 () Bool)

(declare-fun tp!1226661 () Bool)

(assert (=> b!4040108 (= e!2506733 (and tp!1226659 tp!1226661))))

(assert (=> b!4038894 (= tp!1226534 e!2506733)))

(declare-fun b!4040107 () Bool)

(declare-fun tp!1226662 () Bool)

(assert (=> b!4040107 (= e!2506733 tp!1226662)))

(declare-fun b!4040105 () Bool)

(assert (=> b!4040105 (= e!2506733 tp_is_empty!20621)))

(assert (= (and b!4038894 ((_ is ElementMatch!11825) (regOne!24163 (regex!6920 (h!48655 rules!2999))))) b!4040105))

(assert (= (and b!4038894 ((_ is Concat!18976) (regOne!24163 (regex!6920 (h!48655 rules!2999))))) b!4040106))

(assert (= (and b!4038894 ((_ is Star!11825) (regOne!24163 (regex!6920 (h!48655 rules!2999))))) b!4040107))

(assert (= (and b!4038894 ((_ is Union!11825) (regOne!24163 (regex!6920 (h!48655 rules!2999))))) b!4040108))

(declare-fun b!4040110 () Bool)

(declare-fun e!2506734 () Bool)

(declare-fun tp!1226665 () Bool)

(declare-fun tp!1226663 () Bool)

(assert (=> b!4040110 (= e!2506734 (and tp!1226665 tp!1226663))))

(declare-fun b!4040112 () Bool)

(declare-fun tp!1226664 () Bool)

(declare-fun tp!1226666 () Bool)

(assert (=> b!4040112 (= e!2506734 (and tp!1226664 tp!1226666))))

(assert (=> b!4038894 (= tp!1226536 e!2506734)))

(declare-fun b!4040111 () Bool)

(declare-fun tp!1226667 () Bool)

(assert (=> b!4040111 (= e!2506734 tp!1226667)))

(declare-fun b!4040109 () Bool)

(assert (=> b!4040109 (= e!2506734 tp_is_empty!20621)))

(assert (= (and b!4038894 ((_ is ElementMatch!11825) (regTwo!24163 (regex!6920 (h!48655 rules!2999))))) b!4040109))

(assert (= (and b!4038894 ((_ is Concat!18976) (regTwo!24163 (regex!6920 (h!48655 rules!2999))))) b!4040110))

(assert (= (and b!4038894 ((_ is Star!11825) (regTwo!24163 (regex!6920 (h!48655 rules!2999))))) b!4040111))

(assert (= (and b!4038894 ((_ is Union!11825) (regTwo!24163 (regex!6920 (h!48655 rules!2999))))) b!4040112))

(declare-fun e!2506739 () Bool)

(declare-fun b!4040121 () Bool)

(declare-fun tp!1226676 () Bool)

(declare-fun tp!1226675 () Bool)

(assert (=> b!4040121 (= e!2506739 (and (inv!57775 (left!32561 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484))))) tp!1226675 (inv!57775 (right!32891 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484))))) tp!1226676))))

(declare-fun b!4040123 () Bool)

(declare-fun e!2506740 () Bool)

(declare-fun tp!1226674 () Bool)

(assert (=> b!4040123 (= e!2506740 tp!1226674)))

(declare-fun b!4040122 () Bool)

(declare-fun inv!57781 (IArray!26267) Bool)

(assert (=> b!4040122 (= e!2506739 (and (inv!57781 (xs!16437 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484))))) e!2506740))))

(assert (=> b!4038371 (= tp!1226465 (and (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484)))) e!2506739))))

(assert (= (and b!4038371 ((_ is Node!13131) (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484))))) b!4040121))

(assert (= b!4040122 b!4040123))

(assert (= (and b!4038371 ((_ is Leaf!20298) (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 token!484))) (value!217854 token!484))))) b!4040122))

(declare-fun m!4635963 () Bool)

(assert (=> b!4040121 m!4635963))

(declare-fun m!4635965 () Bool)

(assert (=> b!4040121 m!4635965))

(declare-fun m!4635967 () Bool)

(assert (=> b!4040122 m!4635967))

(assert (=> b!4038371 m!4633441))

(declare-fun b!4040124 () Bool)

(declare-fun e!2506741 () Bool)

(declare-fun tp!1226677 () Bool)

(assert (=> b!4040124 (= e!2506741 (and tp_is_empty!20621 tp!1226677))))

(assert (=> b!4038890 (= tp!1226532 e!2506741)))

(assert (= (and b!4038890 ((_ is Cons!43233) (t!334776 (t!334776 prefix!494)))) b!4040124))

(declare-fun b!4040126 () Bool)

(declare-fun e!2506742 () Bool)

(declare-fun tp!1226680 () Bool)

(declare-fun tp!1226678 () Bool)

(assert (=> b!4040126 (= e!2506742 (and tp!1226680 tp!1226678))))

(declare-fun b!4040128 () Bool)

(declare-fun tp!1226679 () Bool)

(declare-fun tp!1226681 () Bool)

(assert (=> b!4040128 (= e!2506742 (and tp!1226679 tp!1226681))))

(assert (=> b!4038893 (= tp!1226537 e!2506742)))

(declare-fun b!4040127 () Bool)

(declare-fun tp!1226682 () Bool)

(assert (=> b!4040127 (= e!2506742 tp!1226682)))

(declare-fun b!4040125 () Bool)

(assert (=> b!4040125 (= e!2506742 tp_is_empty!20621)))

(assert (= (and b!4038893 ((_ is ElementMatch!11825) (reg!12154 (regex!6920 (h!48655 rules!2999))))) b!4040125))

(assert (= (and b!4038893 ((_ is Concat!18976) (reg!12154 (regex!6920 (h!48655 rules!2999))))) b!4040126))

(assert (= (and b!4038893 ((_ is Star!11825) (reg!12154 (regex!6920 (h!48655 rules!2999))))) b!4040127))

(assert (= (and b!4038893 ((_ is Union!11825) (reg!12154 (regex!6920 (h!48655 rules!2999))))) b!4040128))

(declare-fun b!4040131 () Bool)

(declare-fun b_free!112509 () Bool)

(declare-fun b_next!113213 () Bool)

(assert (=> b!4040131 (= b_free!112509 (not b_next!113213))))

(declare-fun t!334966 () Bool)

(declare-fun tb!242839 () Bool)

(assert (=> (and b!4040131 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))))) t!334966) tb!242839))

(declare-fun result!294336 () Bool)

(assert (= result!294336 result!294264))

(assert (=> d!1197771 t!334966))

(declare-fun t!334968 () Bool)

(declare-fun tb!242841 () Bool)

(assert (=> (and b!4040131 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))) t!334968) tb!242841))

(declare-fun result!294338 () Bool)

(assert (= result!294338 result!294276))

(assert (=> d!1197855 t!334968))

(declare-fun tb!242843 () Bool)

(declare-fun t!334970 () Bool)

(assert (=> (and b!4040131 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974)))))) t!334970) tb!242843))

(declare-fun result!294340 () Bool)

(assert (= result!294340 result!294328))

(assert (=> d!1198117 t!334970))

(declare-fun t!334972 () Bool)

(declare-fun tb!242845 () Bool)

(assert (=> (and b!4040131 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))))) t!334972) tb!242845))

(declare-fun result!294342 () Bool)

(assert (= result!294342 result!294210))

(assert (=> d!1197417 t!334972))

(assert (=> d!1197871 t!334968))

(declare-fun t!334974 () Bool)

(declare-fun tb!242847 () Bool)

(assert (=> (and b!4040131 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) t!334974) tb!242847))

(declare-fun result!294344 () Bool)

(assert (= result!294344 result!294156))

(assert (=> d!1197175 t!334974))

(assert (=> d!1197179 t!334974))

(declare-fun tb!242849 () Bool)

(declare-fun t!334976 () Bool)

(assert (=> (and b!4040131 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toValue!9456 (transformation!6920 (rule!9990 token!484)))) t!334976) tb!242849))

(declare-fun result!294346 () Bool)

(assert (= result!294346 result!294150))

(assert (=> d!1197157 t!334976))

(declare-fun tp!1226685 () Bool)

(declare-fun b_and!310547 () Bool)

(assert (=> b!4040131 (= tp!1226685 (and (=> t!334972 result!294342) (=> t!334974 result!294344) (=> t!334976 result!294346) (=> t!334968 result!294338) (=> t!334966 result!294336) (=> t!334970 result!294340) b_and!310547))))

(declare-fun b_free!112511 () Bool)

(declare-fun b_next!113215 () Bool)

(assert (=> b!4040131 (= b_free!112511 (not b_next!113215))))

(declare-fun t!334978 () Bool)

(declare-fun tb!242851 () Bool)

(assert (=> (and b!4040131 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436987)))))) t!334978) tb!242851))

(declare-fun result!294348 () Bool)

(assert (= result!294348 result!294216))

(assert (=> d!1197445 t!334978))

(declare-fun tb!242853 () Bool)

(declare-fun t!334980 () Bool)

(assert (=> (and b!4040131 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toChars!9315 (transformation!6920 (rule!9990 token!484)))) t!334980) tb!242853))

(declare-fun result!294350 () Bool)

(assert (= result!294350 result!294130))

(assert (=> d!1197327 t!334980))

(declare-fun tb!242855 () Bool)

(declare-fun t!334982 () Bool)

(assert (=> (and b!4040131 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436904)))))) t!334982) tb!242855))

(declare-fun result!294352 () Bool)

(assert (= result!294352 result!294228))

(assert (=> d!1197521 t!334982))

(assert (=> b!4038363 t!334980))

(declare-fun t!334984 () Bool)

(declare-fun tb!242857 () Bool)

(assert (=> (and b!4040131 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (get!14186 lt!1436974)))))) t!334984) tb!242857))

(declare-fun result!294354 () Bool)

(assert (= result!294354 result!294222))

(assert (=> d!1197507 t!334984))

(declare-fun t!334986 () Bool)

(declare-fun tb!242859 () Bool)

(assert (=> (and b!4040131 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) t!334986) tb!242859))

(declare-fun result!294356 () Bool)

(assert (= result!294356 result!294190))

(assert (=> d!1197179 t!334986))

(declare-fun t!334988 () Bool)

(declare-fun tb!242861 () Bool)

(assert (=> (and b!4040131 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869)))))) t!334988) tb!242861))

(declare-fun result!294358 () Bool)

(assert (= result!294358 result!294146))

(assert (=> d!1197125 t!334988))

(declare-fun t!334990 () Bool)

(declare-fun tb!242863 () Bool)

(assert (=> (and b!4040131 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toChars!9315 (transformation!6920 (rule!9990 token!484)))) t!334990) tb!242863))

(declare-fun result!294360 () Bool)

(assert (= result!294360 result!294270))

(assert (=> d!1197855 t!334990))

(declare-fun tp!1226683 () Bool)

(declare-fun b_and!310549 () Bool)

(assert (=> b!4040131 (= tp!1226683 (and (=> t!334988 result!294358) (=> t!334982 result!294352) (=> t!334978 result!294348) (=> t!334984 result!294354) (=> t!334986 result!294356) (=> t!334990 result!294360) (=> t!334980 result!294350) b_and!310549))))

(declare-fun e!2506746 () Bool)

(assert (=> b!4040131 (= e!2506746 (and tp!1226685 tp!1226683))))

(declare-fun b!4040130 () Bool)

(declare-fun e!2506743 () Bool)

(declare-fun tp!1226686 () Bool)

(assert (=> b!4040130 (= e!2506743 (and tp!1226686 (inv!57768 (tag!7780 (h!48655 (t!334778 (t!334778 rules!2999))))) (inv!57771 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) e!2506746))))

(declare-fun b!4040129 () Bool)

(declare-fun e!2506744 () Bool)

(declare-fun tp!1226684 () Bool)

(assert (=> b!4040129 (= e!2506744 (and e!2506743 tp!1226684))))

(assert (=> b!4038904 (= tp!1226548 e!2506744)))

(assert (= b!4040130 b!4040131))

(assert (= b!4040129 b!4040130))

(assert (= (and b!4038904 ((_ is Cons!43235) (t!334778 (t!334778 rules!2999)))) b!4040129))

(declare-fun m!4635969 () Bool)

(assert (=> b!4040130 m!4635969))

(declare-fun m!4635971 () Bool)

(assert (=> b!4040130 m!4635971))

(declare-fun tp!1226688 () Bool)

(declare-fun b!4040132 () Bool)

(declare-fun e!2506747 () Bool)

(declare-fun tp!1226689 () Bool)

(assert (=> b!4040132 (= e!2506747 (and (inv!57775 (left!32561 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))))) tp!1226688 (inv!57775 (right!32891 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))))) tp!1226689))))

(declare-fun b!4040134 () Bool)

(declare-fun e!2506748 () Bool)

(declare-fun tp!1226687 () Bool)

(assert (=> b!4040134 (= e!2506748 tp!1226687)))

(declare-fun b!4040133 () Bool)

(assert (=> b!4040133 (= e!2506747 (and (inv!57781 (xs!16437 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))))) e!2506748))))

(assert (=> b!4038766 (= tp!1226512 (and (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864)))) e!2506747))))

(assert (= (and b!4038766 ((_ is Node!13131) (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))))) b!4040132))

(assert (= b!4040133 b!4040134))

(assert (= (and b!4038766 ((_ is Leaf!20298) (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))))) b!4040133))

(declare-fun m!4635973 () Bool)

(assert (=> b!4040132 m!4635973))

(declare-fun m!4635975 () Bool)

(assert (=> b!4040132 m!4635975))

(declare-fun m!4635977 () Bool)

(assert (=> b!4040133 m!4635977))

(assert (=> b!4038766 m!4633999))

(declare-fun b!4040135 () Bool)

(declare-fun e!2506749 () Bool)

(declare-fun tp!1226690 () Bool)

(assert (=> b!4040135 (= e!2506749 (and tp_is_empty!20621 tp!1226690))))

(assert (=> b!4038889 (= tp!1226531 e!2506749)))

(assert (= (and b!4038889 ((_ is Cons!43233) (t!334776 (t!334776 suffix!1299)))) b!4040135))

(declare-fun b!4040137 () Bool)

(declare-fun e!2506750 () Bool)

(declare-fun tp!1226693 () Bool)

(declare-fun tp!1226691 () Bool)

(assert (=> b!4040137 (= e!2506750 (and tp!1226693 tp!1226691))))

(declare-fun b!4040139 () Bool)

(declare-fun tp!1226692 () Bool)

(declare-fun tp!1226694 () Bool)

(assert (=> b!4040139 (= e!2506750 (and tp!1226692 tp!1226694))))

(assert (=> b!4038892 (= tp!1226535 e!2506750)))

(declare-fun b!4040138 () Bool)

(declare-fun tp!1226695 () Bool)

(assert (=> b!4040138 (= e!2506750 tp!1226695)))

(declare-fun b!4040136 () Bool)

(assert (=> b!4040136 (= e!2506750 tp_is_empty!20621)))

(assert (= (and b!4038892 ((_ is ElementMatch!11825) (regOne!24162 (regex!6920 (h!48655 rules!2999))))) b!4040136))

(assert (= (and b!4038892 ((_ is Concat!18976) (regOne!24162 (regex!6920 (h!48655 rules!2999))))) b!4040137))

(assert (= (and b!4038892 ((_ is Star!11825) (regOne!24162 (regex!6920 (h!48655 rules!2999))))) b!4040138))

(assert (= (and b!4038892 ((_ is Union!11825) (regOne!24162 (regex!6920 (h!48655 rules!2999))))) b!4040139))

(declare-fun b!4040141 () Bool)

(declare-fun e!2506751 () Bool)

(declare-fun tp!1226698 () Bool)

(declare-fun tp!1226696 () Bool)

(assert (=> b!4040141 (= e!2506751 (and tp!1226698 tp!1226696))))

(declare-fun b!4040143 () Bool)

(declare-fun tp!1226697 () Bool)

(declare-fun tp!1226699 () Bool)

(assert (=> b!4040143 (= e!2506751 (and tp!1226697 tp!1226699))))

(assert (=> b!4038892 (= tp!1226533 e!2506751)))

(declare-fun b!4040142 () Bool)

(declare-fun tp!1226700 () Bool)

(assert (=> b!4040142 (= e!2506751 tp!1226700)))

(declare-fun b!4040140 () Bool)

(assert (=> b!4040140 (= e!2506751 tp_is_empty!20621)))

(assert (= (and b!4038892 ((_ is ElementMatch!11825) (regTwo!24162 (regex!6920 (h!48655 rules!2999))))) b!4040140))

(assert (= (and b!4038892 ((_ is Concat!18976) (regTwo!24162 (regex!6920 (h!48655 rules!2999))))) b!4040141))

(assert (= (and b!4038892 ((_ is Star!11825) (regTwo!24162 (regex!6920 (h!48655 rules!2999))))) b!4040142))

(assert (= (and b!4038892 ((_ is Union!11825) (regTwo!24162 (regex!6920 (h!48655 rules!2999))))) b!4040143))

(declare-fun b!4040144 () Bool)

(declare-fun e!2506752 () Bool)

(declare-fun tp!1226701 () Bool)

(assert (=> b!4040144 (= e!2506752 (and tp_is_empty!20621 tp!1226701))))

(assert (=> b!4038908 (= tp!1226552 e!2506752)))

(assert (= (and b!4038908 ((_ is Cons!43233) (t!334776 (t!334776 newSuffixResult!27)))) b!4040144))

(declare-fun b!4040146 () Bool)

(declare-fun e!2506753 () Bool)

(declare-fun tp!1226704 () Bool)

(declare-fun tp!1226702 () Bool)

(assert (=> b!4040146 (= e!2506753 (and tp!1226704 tp!1226702))))

(declare-fun b!4040148 () Bool)

(declare-fun tp!1226703 () Bool)

(declare-fun tp!1226705 () Bool)

(assert (=> b!4040148 (= e!2506753 (and tp!1226703 tp!1226705))))

(assert (=> b!4038905 (= tp!1226550 e!2506753)))

(declare-fun b!4040147 () Bool)

(declare-fun tp!1226706 () Bool)

(assert (=> b!4040147 (= e!2506753 tp!1226706)))

(declare-fun b!4040145 () Bool)

(assert (=> b!4040145 (= e!2506753 tp_is_empty!20621)))

(assert (= (and b!4038905 ((_ is ElementMatch!11825) (regex!6920 (h!48655 (t!334778 rules!2999))))) b!4040145))

(assert (= (and b!4038905 ((_ is Concat!18976) (regex!6920 (h!48655 (t!334778 rules!2999))))) b!4040146))

(assert (= (and b!4038905 ((_ is Star!11825) (regex!6920 (h!48655 (t!334778 rules!2999))))) b!4040147))

(assert (= (and b!4038905 ((_ is Union!11825) (regex!6920 (h!48655 (t!334778 rules!2999))))) b!4040148))

(declare-fun b!4040149 () Bool)

(declare-fun e!2506754 () Bool)

(declare-fun tp!1226709 () Bool)

(declare-fun tp!1226708 () Bool)

(assert (=> b!4040149 (= e!2506754 (and (inv!57775 (left!32561 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869))))))) tp!1226708 (inv!57775 (right!32891 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869))))))) tp!1226709))))

(declare-fun b!4040151 () Bool)

(declare-fun e!2506755 () Bool)

(declare-fun tp!1226707 () Bool)

(assert (=> b!4040151 (= e!2506755 tp!1226707)))

(declare-fun b!4040150 () Bool)

(assert (=> b!4040150 (= e!2506754 (and (inv!57781 (xs!16437 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869))))))) e!2506755))))

(assert (=> b!4038409 (= tp!1226466 (and (inv!57775 (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869)))))) e!2506754))))

(assert (= (and b!4038409 ((_ is Node!13131) (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869))))))) b!4040149))

(assert (= b!4040150 b!4040151))

(assert (= (and b!4038409 ((_ is Leaf!20298) (c!697516 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (value!217854 (_1!24291 (v!39731 lt!1436869))))))) b!4040150))

(declare-fun m!4635979 () Bool)

(assert (=> b!4040149 m!4635979))

(declare-fun m!4635981 () Bool)

(assert (=> b!4040149 m!4635981))

(declare-fun m!4635983 () Bool)

(assert (=> b!4040150 m!4635983))

(assert (=> b!4038409 m!4633491))

(declare-fun b!4040153 () Bool)

(declare-fun e!2506756 () Bool)

(declare-fun tp!1226712 () Bool)

(declare-fun tp!1226710 () Bool)

(assert (=> b!4040153 (= e!2506756 (and tp!1226712 tp!1226710))))

(declare-fun b!4040155 () Bool)

(declare-fun tp!1226711 () Bool)

(declare-fun tp!1226713 () Bool)

(assert (=> b!4040155 (= e!2506756 (and tp!1226711 tp!1226713))))

(assert (=> b!4038888 (= tp!1226527 e!2506756)))

(declare-fun b!4040154 () Bool)

(declare-fun tp!1226714 () Bool)

(assert (=> b!4040154 (= e!2506756 tp!1226714)))

(declare-fun b!4040152 () Bool)

(assert (=> b!4040152 (= e!2506756 tp_is_empty!20621)))

(assert (= (and b!4038888 ((_ is ElementMatch!11825) (regOne!24163 (regex!6920 (rule!9990 token!484))))) b!4040152))

(assert (= (and b!4038888 ((_ is Concat!18976) (regOne!24163 (regex!6920 (rule!9990 token!484))))) b!4040153))

(assert (= (and b!4038888 ((_ is Star!11825) (regOne!24163 (regex!6920 (rule!9990 token!484))))) b!4040154))

(assert (= (and b!4038888 ((_ is Union!11825) (regOne!24163 (regex!6920 (rule!9990 token!484))))) b!4040155))

(declare-fun b!4040157 () Bool)

(declare-fun e!2506757 () Bool)

(declare-fun tp!1226717 () Bool)

(declare-fun tp!1226715 () Bool)

(assert (=> b!4040157 (= e!2506757 (and tp!1226717 tp!1226715))))

(declare-fun b!4040159 () Bool)

(declare-fun tp!1226716 () Bool)

(declare-fun tp!1226718 () Bool)

(assert (=> b!4040159 (= e!2506757 (and tp!1226716 tp!1226718))))

(assert (=> b!4038888 (= tp!1226529 e!2506757)))

(declare-fun b!4040158 () Bool)

(declare-fun tp!1226719 () Bool)

(assert (=> b!4040158 (= e!2506757 tp!1226719)))

(declare-fun b!4040156 () Bool)

(assert (=> b!4040156 (= e!2506757 tp_is_empty!20621)))

(assert (= (and b!4038888 ((_ is ElementMatch!11825) (regTwo!24163 (regex!6920 (rule!9990 token!484))))) b!4040156))

(assert (= (and b!4038888 ((_ is Concat!18976) (regTwo!24163 (regex!6920 (rule!9990 token!484))))) b!4040157))

(assert (= (and b!4038888 ((_ is Star!11825) (regTwo!24163 (regex!6920 (rule!9990 token!484))))) b!4040158))

(assert (= (and b!4038888 ((_ is Union!11825) (regTwo!24163 (regex!6920 (rule!9990 token!484))))) b!4040159))

(declare-fun b!4040160 () Bool)

(declare-fun e!2506758 () Bool)

(declare-fun tp!1226720 () Bool)

(assert (=> b!4040160 (= e!2506758 (and tp_is_empty!20621 tp!1226720))))

(assert (=> b!4038907 (= tp!1226551 e!2506758)))

(assert (= (and b!4038907 ((_ is Cons!43233) (t!334776 (t!334776 suffixResult!105)))) b!4040160))

(declare-fun b_lambda!117947 () Bool)

(assert (= b_lambda!117857 (or (and b!4038253 b_free!112489 (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (and b!4038259 b_free!112493 (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (and b!4038906 b_free!112501 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (and b!4040131 b_free!112509 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) b_lambda!117947)))

(declare-fun b_lambda!117949 () Bool)

(assert (= b_lambda!117853 (or (and b!4038253 b_free!112491 (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (and b!4038259 b_free!112495 (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (and b!4038906 b_free!112503 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (and b!4040131 b_free!112511 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) b_lambda!117949)))

(declare-fun b_lambda!117951 () Bool)

(assert (= b_lambda!117911 (or (and b!4038253 b_free!112491) (and b!4038259 b_free!112495 (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 token!484))))) (and b!4038906 b_free!112503 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toChars!9315 (transformation!6920 (rule!9990 token!484))))) (and b!4040131 b_free!112511 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toChars!9315 (transformation!6920 (rule!9990 token!484))))) b_lambda!117951)))

(declare-fun b_lambda!117953 () Bool)

(assert (= b_lambda!117913 (or (and b!4038253 b_free!112489) (and b!4038259 b_free!112493 (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 token!484))))) (and b!4038906 b_free!112501 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (rule!9990 token!484))))) (and b!4040131 b_free!112509 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toValue!9456 (transformation!6920 (rule!9990 token!484))))) b_lambda!117953)))

(declare-fun b_lambda!117955 () Bool)

(assert (= b_lambda!117905 (or d!1197179 b_lambda!117955)))

(declare-fun bs!590850 () Bool)

(declare-fun d!1198181 () Bool)

(assert (= bs!590850 (and d!1198181 d!1197179)))

(assert (=> bs!590850 (= (dynLambda!18350 lambda!127345 lt!1436864) (= (list!16094 (dynLambda!18344 (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) (dynLambda!18345 (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))) lt!1436864))) (list!16094 lt!1436864)))))

(declare-fun b_lambda!117963 () Bool)

(assert (=> (not b_lambda!117963) (not bs!590850)))

(assert (=> bs!590850 t!334826))

(declare-fun b_and!310551 () Bool)

(assert (= b_and!310485 (and (=> t!334826 result!294190) b_and!310551)))

(assert (=> bs!590850 t!334828))

(declare-fun b_and!310553 () Bool)

(assert (= b_and!310487 (and (=> t!334828 result!294192) b_and!310553)))

(assert (=> bs!590850 t!334838))

(declare-fun b_and!310555 () Bool)

(assert (= b_and!310489 (and (=> t!334838 result!294208) b_and!310555)))

(assert (=> bs!590850 t!334986))

(declare-fun b_and!310557 () Bool)

(assert (= b_and!310549 (and (=> t!334986 result!294356) b_and!310557)))

(declare-fun b_lambda!117965 () Bool)

(assert (=> (not b_lambda!117965) (not bs!590850)))

(assert (=> bs!590850 t!334800))

(declare-fun b_and!310559 () Bool)

(assert (= b_and!310541 (and (=> t!334800 result!294156) b_and!310559)))

(assert (=> bs!590850 t!334802))

(declare-fun b_and!310561 () Bool)

(assert (= b_and!310543 (and (=> t!334802 result!294158) b_and!310561)))

(assert (=> bs!590850 t!334832))

(declare-fun b_and!310563 () Bool)

(assert (= b_and!310545 (and (=> t!334832 result!294202) b_and!310563)))

(assert (=> bs!590850 t!334974))

(declare-fun b_and!310565 () Bool)

(assert (= b_and!310547 (and (=> t!334974 result!294344) b_and!310565)))

(assert (=> bs!590850 m!4634007))

(assert (=> bs!590850 m!4634009))

(assert (=> bs!590850 m!4633665))

(assert (=> bs!590850 m!4634007))

(assert (=> bs!590850 m!4634003))

(assert (=> bs!590850 m!4633665))

(assert (=> d!1197735 d!1198181))

(declare-fun b_lambda!117957 () Bool)

(assert (= b_lambda!117915 (or (and b!4038253 b_free!112489) (and b!4038259 b_free!112493 (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 token!484))))) (and b!4038906 b_free!112501 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (rule!9990 token!484))))) (and b!4040131 b_free!112509 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toValue!9456 (transformation!6920 (rule!9990 token!484))))) b_lambda!117957)))

(declare-fun b_lambda!117959 () Bool)

(assert (= b_lambda!117875 (or (and b!4038253 b_free!112491 (= (toChars!9315 (transformation!6920 (rule!9990 token!484))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (and b!4038259 b_free!112495 (= (toChars!9315 (transformation!6920 (h!48655 rules!2999))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (and b!4038906 b_free!112503 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (and b!4040131 b_free!112511 (= (toChars!9315 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toChars!9315 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) b_lambda!117959)))

(declare-fun b_lambda!117961 () Bool)

(assert (= b_lambda!117877 (or (and b!4038253 b_free!112489 (= (toValue!9456 (transformation!6920 (rule!9990 token!484))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (and b!4038259 b_free!112493 (= (toValue!9456 (transformation!6920 (h!48655 rules!2999))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (and b!4038906 b_free!112501 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 rules!2999)))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) (and b!4040131 b_free!112509 (= (toValue!9456 (transformation!6920 (h!48655 (t!334778 (t!334778 rules!2999))))) (toValue!9456 (transformation!6920 (rule!9990 (_1!24291 (v!39731 lt!1436869))))))) b_lambda!117961)))

(check-sat (not b!4039972) (not b!4040137) (not d!1197505) (not d!1197455) (not b!4039523) (not b!4040133) (not b!4040061) (not b!4039457) (not b!4039370) (not b!4039181) (not d!1197831) (not b!4039097) (not d!1198125) (not bm!287365) (not b!4040144) (not b!4039339) (not bm!287373) (not b!4039015) (not b!4039368) (not bs!590850) (not b!4040002) (not b!4039465) tp_is_empty!20621 (not tb!242723) (not b!4039503) (not b!4039982) (not b!4039293) (not b!4039003) (not b_next!113197) (not b!4040135) (not d!1197543) (not b!4039456) (not b!4039081) (not b!4040070) (not d!1197445) b_and!310553 (not b!4039462) (not b!4039453) (not b_lambda!117951) (not b_lambda!117965) (not b!4039320) (not b_next!113213) (not b!4039957) (not b!4040141) (not b!4039391) (not b!4039272) (not b!4039987) (not d!1197585) (not b!4039550) (not b!4040134) (not b_lambda!117885) (not d!1198147) (not d!1197799) (not d!1198151) (not b!4039335) (not b!4040128) (not d!1197483) (not b!4039095) (not b!4039483) (not b_lambda!117947) (not bm!287315) (not b!4040099) (not b!4039002) (not b!4039530) (not b!4039459) (not b!4040093) (not bm!287301) (not b!4039953) (not b!4040066) (not b!4039962) (not b!4039961) (not b!4040027) (not b!4039301) (not b!4039570) (not b!4039507) (not d!1198179) (not b!4039170) (not b!4039430) (not b!4039455) (not b!4039532) (not b!4040132) (not d!1198083) (not b!4039364) (not b!4040006) (not b!4039174) (not b!4039482) (not b!4039146) (not b!4039971) (not b!4040148) (not b!4040023) (not b!4040053) (not b!4038766) b_and!310561 (not d!1197625) (not bm!287316) (not b_next!113215) (not b!4039110) (not b!4039537) (not b!4040047) (not b!4040160) (not b!4040107) (not d!1197709) (not b!4039341) (not b!4039505) (not b!4040025) (not b!4040050) (not b!4039173) (not b!4038984) (not b!4039528) (not b!4039513) (not d!1198097) (not b!4039493) (not b!4039996) (not b_next!113207) (not d!1197815) (not b!4040098) (not d!1197881) b_and!310557 (not b!4039172) (not d!1198071) (not b!4039967) (not b!4038409) (not b!4039085) (not d!1197817) (not b!4040076) (not d!1197439) (not b!4039109) (not b!4039227) (not b!4039365) (not b_lambda!117963) (not d!1197465) (not b!4039461) (not bm!287364) (not b!4039500) (not d!1197405) (not b!4039966) (not b!4039539) (not b_lambda!117949) (not b!4039450) (not b!4039446) (not b!4039969) (not d!1197481) (not tb!242777) (not b!4039506) (not d!1197787) (not b!4039467) (not b!4039562) (not b!4039433) (not b!4039974) (not b!4040121) (not d!1197665) (not b!4039187) (not d!1198111) (not b!4039221) (not bm!287302) b_and!310555 (not b!4040079) (not b!4039007) (not d!1197795) (not b!4039437) (not b!4039549) (not b!4039392) (not d!1197825) (not b!4039168) (not b!4039425) (not b!4039452) (not b!4039140) (not b!4039360) (not b!4039223) (not b!4039297) (not bm!287370) (not b!4039101) (not d!1198135) (not b!4039070) (not b!4039997) (not b!4039080) (not b!4039569) (not b!4039565) (not bm!287371) (not b!4039524) b_and!310565 (not bm!287368) (not b!4040155) (not b_lambda!117893) (not b!4040112) (not bm!287366) (not b_next!113205) (not b!4040072) (not d!1197847) b_and!310563 (not b!4039115) (not b!4039009) (not b!4040077) (not b!4040142) (not d!1198175) (not b!4039099) (not d!1198169) (not b_next!113195) (not b!4039139) (not b!4040094) (not d!1197521) (not d!1197429) (not d!1197865) (not d!1198141) (not b!4039472) (not b!4040039) (not b!4039568) (not b!4039965) (not d!1198057) (not b!4040085) (not b_lambda!117959) (not b_lambda!117953) (not b_lambda!117957) (not b!4040060) (not b!4040108) (not b!4040082) (not d!1198137) (not d!1198067) (not b!4039566) (not d!1198085) (not d!1198113) (not b!4039083) (not b!4040018) b_and!310559 (not b!4040151) (not b!4040110) (not b!4040012) (not b!4039439) (not b!4039517) (not d!1197641) (not b_lambda!117891) (not b_lambda!117883) (not d!1197759) (not b!4039498) (not bm!287363) (not b!4040104) (not tb!242771) (not b!4039021) (not b!4039959) (not d!1197587) (not b_lambda!117909) (not b!4039208) (not d!1198177) (not b!4039629) (not b!4039362) (not b!4040111) (not b!4040154) (not b!4039563) (not b!4040103) (not b!4040149) (not b!4040090) (not b!4039219) (not b!4039448) (not d!1197635) (not b!4039463) (not b!4040034) (not d!1197623) (not b!4040067) (not b!4039113) (not b!4039501) (not d!1198103) (not d!1198073) (not bm!287281) (not d!1198119) (not b!4039017) (not d!1197463) (not b!4039514) (not b!4039952) (not b!4039117) (not b!4039428) (not b!4039986) (not b!4039179) (not tb!242833) (not b!4039564) (not bm!287369) (not b!4039147) (not d!1197731) (not b!4039148) (not d!1197633) (not b!4038998) (not b!4039145) (not b!4040013) (not b_lambda!117881) (not b!4039336) (not b!4039384) (not b!4039136) (not tb!242735) (not b!4040037) (not b!4040124) (not d!1197823) (not b!4039224) (not b!4039526) (not bm!287318) (not b!4040038) (not b_lambda!117961) (not d!1198127) (not b!4039540) (not d!1197515) (not b!4040139) (not b!4040059) (not b!4040041) (not b!4039143) (not tb!242783) (not bm!287372) (not b!4039438) (not bm!287312) (not d!1197443) (not b!4040092) (not b!4039331) (not b!4039023) (not b!4040088) (not d!1197471) (not b!4040064) (not b!4040049) (not b!4039945) (not b!4039107) (not d!1197503) (not b!4039321) (not b!4039992) (not b!4040127) (not b!4039319) (not b!4040101) (not b!4039990) (not b_lambda!117887) (not b!4039019) (not b!4040147) (not d!1198139) (not b!4039288) (not d!1197477) (not b!4038999) (not b!4039604) (not b!4039627) (not d!1197797) (not b!4039984) (not b!4038371) (not b!4040129) (not b!4040150) (not b!4040157) (not d!1197507) (not b!4039509) (not b!4039303) (not b!4040097) (not d!1197855) (not bm!287367) (not b!4040130) (not b!4039991) (not d!1198163) (not b_next!113199) (not b!4040146) (not b!4039955) (not b!4039999) (not b!4039135) (not d!1198149) (not b!4039469) (not d!1197485) (not bm!287280) (not b!4038985) (not b!4040033) (not b!4040036) (not d!1197537) (not d!1197837) (not d!1197517) (not b!4040158) (not b!4039998) (not b!4039184) (not b!4040054) (not b!4040062) (not d!1197827) (not b!4039144) (not b!4039290) (not b!4040102) (not d!1197713) (not b!4039178) (not d!1197733) (not b!4039299) (not b!4040051) (not d!1197873) (not d!1197703) (not b!4039111) (not b!4039167) (not b!4040068) (not b!4039118) (not b!4039484) (not b!4040031) (not b!4040095) (not b_lambda!117889) (not b!4039521) (not b!4039980) (not b!4040010) (not d!1197735) (not b!4039183) (not b!4039089) (not b!4040058) (not b_next!113193) (not b!4039390) (not b!4039994) (not b!4039510) (not tb!242717) (not b!4040040) (not b!4039086) (not b!4039218) (not b!4039434) (not b!4040046) (not b!4039291) (not d!1198129) (not d!1197431) (not b!4040159) (not b!4039544) (not b!4040153) (not b!4040063) (not d!1197615) (not b!4039518) b_and!310551 (not b!4040057) (not d!1197869) (not b!4040016) (not b!4039105) (not b!4040138) (not b!4039543) (not d!1197801) (not b!4039103) (not b_lambda!117945) (not b!4040106) (not b!4039206) (not d!1198105) (not b!4039531) (not bm!287289) (not b!4040022) (not b!4039141) (not b!4039202) (not b!4040028) (not b!4040081) (not b!4040004) (not b!4040007) (not b!4039005) (not b!4039025) (not d!1197519) (not d!1198091) (not d!1197419) (not b!4040122) (not b!4039369) (not b!4040126) (not bm!287311) (not tb!242729) (not b!4040123) (not b_lambda!117955) (not d!1198161) (not d!1197779) (not b!4040143))
(check-sat (not b_next!113213) b_and!310555 (not b_next!113195) b_and!310559 (not b_next!113199) (not b_next!113193) b_and!310551 (not b_next!113197) b_and!310553 b_and!310561 (not b_next!113215) (not b_next!113207) b_and!310557 b_and!310565 (not b_next!113205) b_and!310563)
