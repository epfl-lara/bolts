; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374852 () Bool)

(assert start!374852)

(declare-fun b!3982935 () Bool)

(declare-fun b_free!110577 () Bool)

(declare-fun b_next!111281 () Bool)

(assert (=> b!3982935 (= b_free!110577 (not b_next!111281))))

(declare-fun tp!1214023 () Bool)

(declare-fun b_and!306127 () Bool)

(assert (=> b!3982935 (= tp!1214023 b_and!306127)))

(declare-fun b_free!110579 () Bool)

(declare-fun b_next!111283 () Bool)

(assert (=> b!3982935 (= b_free!110579 (not b_next!111283))))

(declare-fun tp!1214012 () Bool)

(declare-fun b_and!306129 () Bool)

(assert (=> b!3982935 (= tp!1214012 b_and!306129)))

(declare-fun b!3982950 () Bool)

(declare-fun b_free!110581 () Bool)

(declare-fun b_next!111285 () Bool)

(assert (=> b!3982950 (= b_free!110581 (not b_next!111285))))

(declare-fun tp!1214020 () Bool)

(declare-fun b_and!306131 () Bool)

(assert (=> b!3982950 (= tp!1214020 b_and!306131)))

(declare-fun b_free!110583 () Bool)

(declare-fun b_next!111287 () Bool)

(assert (=> b!3982950 (= b_free!110583 (not b_next!111287))))

(declare-fun tp!1214019 () Bool)

(declare-fun b_and!306133 () Bool)

(assert (=> b!3982950 (= tp!1214019 b_and!306133)))

(declare-fun b!3982926 () Bool)

(declare-fun e!2468468 () Bool)

(declare-fun tp_is_empty!20237 () Bool)

(declare-fun tp!1214021 () Bool)

(assert (=> b!3982926 (= e!2468468 (and tp_is_empty!20237 tp!1214021))))

(declare-fun b!3982927 () Bool)

(declare-fun e!2468479 () Bool)

(declare-fun e!2468478 () Bool)

(assert (=> b!3982927 (= e!2468479 (not e!2468478))))

(declare-fun res!1614628 () Bool)

(assert (=> b!3982927 (=> res!1614628 e!2468478)))

(declare-datatypes ((C!23452 0))(
  ( (C!23453 (val!13820 Int)) )
))
(declare-datatypes ((List!42712 0))(
  ( (Nil!42588) (Cons!42588 (h!48008 C!23452) (t!331415 List!42712)) )
))
(declare-fun lt!1400194 () List!42712)

(declare-fun lt!1400240 () List!42712)

(assert (=> b!3982927 (= res!1614628 (not (= lt!1400194 lt!1400240)))))

(declare-fun lt!1400195 () List!42712)

(declare-fun suffixResult!105 () List!42712)

(declare-fun ++!11130 (List!42712 List!42712) List!42712)

(assert (=> b!3982927 (= lt!1400194 (++!11130 lt!1400195 suffixResult!105))))

(declare-datatypes ((Unit!61261 0))(
  ( (Unit!61262) )
))
(declare-fun lt!1400201 () Unit!61261)

(declare-datatypes ((IArray!25883 0))(
  ( (IArray!25884 (innerList!12999 List!42712)) )
))
(declare-datatypes ((Conc!12939 0))(
  ( (Node!12939 (left!32201 Conc!12939) (right!32531 Conc!12939) (csize!26108 Int) (cheight!13150 Int)) (Leaf!20010 (xs!16245 IArray!25883) (csize!26109 Int)) (Empty!12939) )
))
(declare-datatypes ((BalanceConc!25472 0))(
  ( (BalanceConc!25473 (c!689862 Conc!12939)) )
))
(declare-datatypes ((List!42713 0))(
  ( (Nil!42589) (Cons!42589 (h!48009 (_ BitVec 16)) (t!331416 List!42713)) )
))
(declare-datatypes ((TokenValue!6958 0))(
  ( (FloatLiteralValue!13916 (text!49151 List!42713)) (TokenValueExt!6957 (__x!26133 Int)) (Broken!34790 (value!212356 List!42713)) (Object!7081) (End!6958) (Def!6958) (Underscore!6958) (Match!6958) (Else!6958) (Error!6958) (Case!6958) (If!6958) (Extends!6958) (Abstract!6958) (Class!6958) (Val!6958) (DelimiterValue!13916 (del!7018 List!42713)) (KeywordValue!6964 (value!212357 List!42713)) (CommentValue!13916 (value!212358 List!42713)) (WhitespaceValue!13916 (value!212359 List!42713)) (IndentationValue!6958 (value!212360 List!42713)) (String!48507) (Int32!6958) (Broken!34791 (value!212361 List!42713)) (Boolean!6959) (Unit!61263) (OperatorValue!6961 (op!7018 List!42713)) (IdentifierValue!13916 (value!212362 List!42713)) (IdentifierValue!13917 (value!212363 List!42713)) (WhitespaceValue!13917 (value!212364 List!42713)) (True!13916) (False!13916) (Broken!34792 (value!212365 List!42713)) (Broken!34793 (value!212366 List!42713)) (True!13917) (RightBrace!6958) (RightBracket!6958) (Colon!6958) (Null!6958) (Comma!6958) (LeftBracket!6958) (False!13917) (LeftBrace!6958) (ImaginaryLiteralValue!6958 (text!49152 List!42713)) (StringLiteralValue!20874 (value!212367 List!42713)) (EOFValue!6958 (value!212368 List!42713)) (IdentValue!6958 (value!212369 List!42713)) (DelimiterValue!13917 (value!212370 List!42713)) (DedentValue!6958 (value!212371 List!42713)) (NewLineValue!6958 (value!212372 List!42713)) (IntegerValue!20874 (value!212373 (_ BitVec 32)) (text!49153 List!42713)) (IntegerValue!20875 (value!212374 Int) (text!49154 List!42713)) (Times!6958) (Or!6958) (Equal!6958) (Minus!6958) (Broken!34794 (value!212375 List!42713)) (And!6958) (Div!6958) (LessEqual!6958) (Mod!6958) (Concat!18591) (Not!6958) (Plus!6958) (SpaceValue!6958 (value!212376 List!42713)) (IntegerValue!20876 (value!212377 Int) (text!49155 List!42713)) (StringLiteralValue!20875 (text!49156 List!42713)) (FloatLiteralValue!13917 (text!49157 List!42713)) (BytesLiteralValue!6958 (value!212378 List!42713)) (CommentValue!13917 (value!212379 List!42713)) (StringLiteralValue!20876 (value!212380 List!42713)) (ErrorTokenValue!6958 (msg!7019 List!42713)) )
))
(declare-datatypes ((Regex!11633 0))(
  ( (ElementMatch!11633 (c!689863 C!23452)) (Concat!18592 (regOne!23778 Regex!11633) (regTwo!23778 Regex!11633)) (EmptyExpr!11633) (Star!11633 (reg!11962 Regex!11633)) (EmptyLang!11633) (Union!11633 (regOne!23779 Regex!11633) (regTwo!23779 Regex!11633)) )
))
(declare-datatypes ((String!48508 0))(
  ( (String!48509 (value!212381 String)) )
))
(declare-datatypes ((TokenValueInjection!13344 0))(
  ( (TokenValueInjection!13345 (toValue!9216 Int) (toChars!9075 Int)) )
))
(declare-datatypes ((Rule!13256 0))(
  ( (Rule!13257 (regex!6728 Regex!11633) (tag!7588 String!48508) (isSeparator!6728 Bool) (transformation!6728 TokenValueInjection!13344)) )
))
(declare-datatypes ((Token!12594 0))(
  ( (Token!12595 (value!212382 TokenValue!6958) (rule!9736 Rule!13256) (size!31856 Int) (originalCharacters!7328 List!42712)) )
))
(declare-fun token!484 () Token!12594)

(declare-fun lemmaInv!943 (TokenValueInjection!13344) Unit!61261)

(assert (=> b!3982927 (= lt!1400201 (lemmaInv!943 (transformation!6728 (rule!9736 token!484))))))

(declare-datatypes ((LexerInterface!6317 0))(
  ( (LexerInterfaceExt!6314 (__x!26134 Int)) (Lexer!6315) )
))
(declare-fun thiss!21717 () LexerInterface!6317)

(declare-fun ruleValid!2660 (LexerInterface!6317 Rule!13256) Bool)

(assert (=> b!3982927 (ruleValid!2660 thiss!21717 (rule!9736 token!484))))

(declare-datatypes ((List!42714 0))(
  ( (Nil!42590) (Cons!42590 (h!48010 Rule!13256) (t!331417 List!42714)) )
))
(declare-fun rules!2999 () List!42714)

(declare-fun lt!1400222 () Unit!61261)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1734 (LexerInterface!6317 Rule!13256 List!42714) Unit!61261)

(assert (=> b!3982927 (= lt!1400222 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1734 thiss!21717 (rule!9736 token!484) rules!2999))))

(declare-fun b!3982928 () Bool)

(declare-fun res!1614625 () Bool)

(declare-fun e!2468463 () Bool)

(assert (=> b!3982928 (=> res!1614625 e!2468463)))

(declare-fun lt!1400229 () List!42712)

(declare-fun lt!1400231 () List!42712)

(assert (=> b!3982928 (= res!1614625 (not (= lt!1400229 lt!1400231)))))

(declare-fun b!3982929 () Bool)

(declare-fun e!2468467 () Bool)

(declare-fun e!2468474 () Bool)

(assert (=> b!3982929 (= e!2468467 e!2468474)))

(declare-fun res!1614643 () Bool)

(assert (=> b!3982929 (=> res!1614643 e!2468474)))

(declare-fun lt!1400238 () List!42712)

(declare-fun suffix!1299 () List!42712)

(assert (=> b!3982929 (= res!1614643 (not (= lt!1400238 suffix!1299)))))

(declare-fun newSuffix!27 () List!42712)

(declare-fun lt!1400202 () List!42712)

(assert (=> b!3982929 (= lt!1400238 (++!11130 newSuffix!27 lt!1400202))))

(declare-fun getSuffix!2246 (List!42712 List!42712) List!42712)

(assert (=> b!3982929 (= lt!1400202 (getSuffix!2246 suffix!1299 newSuffix!27))))

(declare-fun b!3982930 () Bool)

(declare-fun e!2468482 () Bool)

(declare-fun tp!1214013 () Bool)

(assert (=> b!3982930 (= e!2468482 (and tp_is_empty!20237 tp!1214013))))

(declare-fun e!2468485 () Bool)

(declare-fun b!3982931 () Bool)

(declare-fun tp!1214024 () Bool)

(declare-fun e!2468488 () Bool)

(declare-fun inv!56888 (String!48508) Bool)

(declare-fun inv!56891 (TokenValueInjection!13344) Bool)

(assert (=> b!3982931 (= e!2468485 (and tp!1214024 (inv!56888 (tag!7588 (h!48010 rules!2999))) (inv!56891 (transformation!6728 (h!48010 rules!2999))) e!2468488))))

(declare-fun b!3982932 () Bool)

(declare-fun e!2468461 () Bool)

(assert (=> b!3982932 (= e!2468463 e!2468461)))

(declare-fun res!1614644 () Bool)

(assert (=> b!3982932 (=> res!1614644 e!2468461)))

(declare-fun lt!1400223 () List!42712)

(assert (=> b!3982932 (= res!1614644 (not (= lt!1400223 lt!1400231)))))

(declare-fun lt!1400232 () List!42712)

(declare-fun lt!1400191 () List!42712)

(assert (=> b!3982932 (= lt!1400223 (++!11130 lt!1400232 lt!1400191))))

(assert (=> b!3982932 (= lt!1400191 (getSuffix!2246 lt!1400231 lt!1400232))))

(declare-fun b!3982933 () Bool)

(declare-fun res!1614619 () Bool)

(declare-fun e!2468475 () Bool)

(assert (=> b!3982933 (=> (not res!1614619) (not e!2468475))))

(declare-fun size!31857 (List!42712) Int)

(assert (=> b!3982933 (= res!1614619 (= (size!31856 token!484) (size!31857 (originalCharacters!7328 token!484))))))

(declare-fun b!3982934 () Bool)

(declare-fun e!2468481 () Bool)

(declare-fun e!2468487 () Bool)

(assert (=> b!3982934 (= e!2468481 e!2468487)))

(declare-fun res!1614642 () Bool)

(assert (=> b!3982934 (=> (not res!1614642) (not e!2468487))))

(declare-fun lt!1400207 () Int)

(declare-fun lt!1400214 () Int)

(assert (=> b!3982934 (= res!1614642 (>= lt!1400207 lt!1400214))))

(assert (=> b!3982934 (= lt!1400214 (size!31857 lt!1400195))))

(declare-fun prefix!494 () List!42712)

(assert (=> b!3982934 (= lt!1400207 (size!31857 prefix!494))))

(declare-fun list!15808 (BalanceConc!25472) List!42712)

(declare-fun charsOf!4544 (Token!12594) BalanceConc!25472)

(assert (=> b!3982934 (= lt!1400195 (list!15808 (charsOf!4544 token!484)))))

(declare-fun e!2468489 () Bool)

(assert (=> b!3982935 (= e!2468489 (and tp!1214023 tp!1214012))))

(declare-fun b!3982936 () Bool)

(declare-fun res!1614638 () Bool)

(assert (=> b!3982936 (=> (not res!1614638) (not e!2468481))))

(declare-fun isPrefix!3815 (List!42712 List!42712) Bool)

(assert (=> b!3982936 (= res!1614638 (isPrefix!3815 newSuffix!27 suffix!1299))))

(declare-fun b!3982937 () Bool)

(declare-fun e!2468491 () Bool)

(assert (=> b!3982937 (= e!2468461 e!2468491)))

(declare-fun res!1614622 () Bool)

(assert (=> b!3982937 (=> res!1614622 e!2468491)))

(declare-fun lt!1400211 () Int)

(assert (=> b!3982937 (= res!1614622 (<= lt!1400211 lt!1400214))))

(declare-datatypes ((tuple2!41808 0))(
  ( (tuple2!41809 (_1!24038 Token!12594) (_2!24038 List!42712)) )
))
(declare-datatypes ((Option!9142 0))(
  ( (None!9141) (Some!9141 (v!39489 tuple2!41808)) )
))
(declare-fun lt!1400209 () Option!9142)

(assert (=> b!3982937 (= (_2!24038 (v!39489 lt!1400209)) lt!1400191)))

(declare-fun lt!1400206 () Unit!61261)

(declare-fun lemmaSamePrefixThenSameSuffix!2002 (List!42712 List!42712 List!42712 List!42712 List!42712) Unit!61261)

(assert (=> b!3982937 (= lt!1400206 (lemmaSamePrefixThenSameSuffix!2002 lt!1400232 (_2!24038 (v!39489 lt!1400209)) lt!1400232 lt!1400191 lt!1400231))))

(assert (=> b!3982937 (isPrefix!3815 lt!1400232 lt!1400223)))

(declare-fun lt!1400228 () Unit!61261)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2658 (List!42712 List!42712) Unit!61261)

(assert (=> b!3982937 (= lt!1400228 (lemmaConcatTwoListThenFirstIsPrefix!2658 lt!1400232 lt!1400191))))

(declare-fun b!3982938 () Bool)

(declare-fun res!1614624 () Bool)

(assert (=> b!3982938 (=> res!1614624 e!2468491)))

(assert (=> b!3982938 (= res!1614624 (not (isPrefix!3815 lt!1400232 lt!1400231)))))

(declare-fun b!3982939 () Bool)

(declare-fun e!2468473 () Bool)

(declare-fun tp!1214022 () Bool)

(assert (=> b!3982939 (= e!2468473 (and tp_is_empty!20237 tp!1214022))))

(declare-fun b!3982940 () Bool)

(declare-fun e!2468492 () Bool)

(assert (=> b!3982940 (= e!2468478 e!2468492)))

(declare-fun res!1614640 () Bool)

(assert (=> b!3982940 (=> res!1614640 e!2468492)))

(assert (=> b!3982940 (= res!1614640 (not (isPrefix!3815 lt!1400195 lt!1400240)))))

(assert (=> b!3982940 (isPrefix!3815 prefix!494 lt!1400240)))

(declare-fun lt!1400190 () Unit!61261)

(assert (=> b!3982940 (= lt!1400190 (lemmaConcatTwoListThenFirstIsPrefix!2658 prefix!494 suffix!1299))))

(assert (=> b!3982940 (isPrefix!3815 lt!1400195 lt!1400194)))

(declare-fun lt!1400205 () Unit!61261)

(assert (=> b!3982940 (= lt!1400205 (lemmaConcatTwoListThenFirstIsPrefix!2658 lt!1400195 suffixResult!105))))

(declare-fun b!3982941 () Bool)

(declare-fun e!2468483 () Bool)

(declare-fun e!2468469 () Bool)

(assert (=> b!3982941 (= e!2468483 e!2468469)))

(declare-fun res!1614627 () Bool)

(assert (=> b!3982941 (=> res!1614627 e!2468469)))

(get-info :version)

(assert (=> b!3982941 (= res!1614627 (not ((_ is Some!9141) lt!1400209)))))

(declare-fun maxPrefix!3615 (LexerInterface!6317 List!42714 List!42712) Option!9142)

(assert (=> b!3982941 (= lt!1400209 (maxPrefix!3615 thiss!21717 rules!2999 lt!1400231))))

(declare-fun lt!1400200 () Token!12594)

(declare-fun lt!1400213 () List!42712)

(declare-fun lt!1400235 () tuple2!41808)

(assert (=> b!3982941 (and (= suffixResult!105 lt!1400213) (= lt!1400235 (tuple2!41809 lt!1400200 lt!1400213)))))

(declare-fun lt!1400233 () Unit!61261)

(assert (=> b!3982941 (= lt!1400233 (lemmaSamePrefixThenSameSuffix!2002 lt!1400195 suffixResult!105 lt!1400195 lt!1400213 lt!1400240))))

(declare-fun lt!1400219 () List!42712)

(assert (=> b!3982941 (isPrefix!3815 lt!1400195 lt!1400219)))

(declare-fun lt!1400226 () Unit!61261)

(assert (=> b!3982941 (= lt!1400226 (lemmaConcatTwoListThenFirstIsPrefix!2658 lt!1400195 lt!1400213))))

(declare-fun b!3982942 () Bool)

(declare-fun e!2468490 () Bool)

(assert (=> b!3982942 (= e!2468490 e!2468463)))

(declare-fun res!1614630 () Bool)

(assert (=> b!3982942 (=> res!1614630 e!2468463)))

(assert (=> b!3982942 (= res!1614630 (not (isPrefix!3815 lt!1400232 lt!1400240)))))

(declare-fun lt!1400220 () List!42712)

(assert (=> b!3982942 (isPrefix!3815 lt!1400232 lt!1400220)))

(declare-fun lt!1400237 () Unit!61261)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!648 (List!42712 List!42712 List!42712) Unit!61261)

(assert (=> b!3982942 (= lt!1400237 (lemmaPrefixStaysPrefixWhenAddingToSuffix!648 lt!1400232 lt!1400231 lt!1400202))))

(declare-fun b!3982943 () Bool)

(assert (=> b!3982943 (= e!2468469 e!2468467)))

(declare-fun res!1614626 () Bool)

(assert (=> b!3982943 (=> res!1614626 e!2468467)))

(declare-fun lt!1400204 () Option!9142)

(assert (=> b!3982943 (= res!1614626 (not (= lt!1400204 (Some!9141 (v!39489 lt!1400209)))))))

(declare-fun newSuffixResult!27 () List!42712)

(assert (=> b!3982943 (isPrefix!3815 lt!1400232 (++!11130 lt!1400232 newSuffixResult!27))))

(declare-fun lt!1400197 () Unit!61261)

(assert (=> b!3982943 (= lt!1400197 (lemmaConcatTwoListThenFirstIsPrefix!2658 lt!1400232 newSuffixResult!27))))

(assert (=> b!3982943 (isPrefix!3815 lt!1400232 lt!1400229)))

(assert (=> b!3982943 (= lt!1400229 (++!11130 lt!1400232 (_2!24038 (v!39489 lt!1400209))))))

(declare-fun lt!1400241 () Unit!61261)

(assert (=> b!3982943 (= lt!1400241 (lemmaConcatTwoListThenFirstIsPrefix!2658 lt!1400232 (_2!24038 (v!39489 lt!1400209))))))

(declare-fun lt!1400234 () TokenValue!6958)

(assert (=> b!3982943 (= lt!1400204 (Some!9141 (tuple2!41809 (Token!12595 lt!1400234 (rule!9736 (_1!24038 (v!39489 lt!1400209))) lt!1400211 lt!1400232) (_2!24038 (v!39489 lt!1400209)))))))

(declare-fun maxPrefixOneRule!2649 (LexerInterface!6317 Rule!13256 List!42712) Option!9142)

(assert (=> b!3982943 (= lt!1400204 (maxPrefixOneRule!2649 thiss!21717 (rule!9736 (_1!24038 (v!39489 lt!1400209))) lt!1400231))))

(assert (=> b!3982943 (= lt!1400211 (size!31857 lt!1400232))))

(declare-fun apply!9939 (TokenValueInjection!13344 BalanceConc!25472) TokenValue!6958)

(declare-fun seqFromList!4967 (List!42712) BalanceConc!25472)

(assert (=> b!3982943 (= lt!1400234 (apply!9939 (transformation!6728 (rule!9736 (_1!24038 (v!39489 lt!1400209)))) (seqFromList!4967 lt!1400232)))))

(declare-fun lt!1400198 () Unit!61261)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1471 (LexerInterface!6317 List!42714 List!42712 List!42712 List!42712 Rule!13256) Unit!61261)

(assert (=> b!3982943 (= lt!1400198 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1471 thiss!21717 rules!2999 lt!1400232 lt!1400231 (_2!24038 (v!39489 lt!1400209)) (rule!9736 (_1!24038 (v!39489 lt!1400209)))))))

(assert (=> b!3982943 (= lt!1400232 (list!15808 (charsOf!4544 (_1!24038 (v!39489 lt!1400209)))))))

(declare-fun lt!1400193 () Unit!61261)

(assert (=> b!3982943 (= lt!1400193 (lemmaInv!943 (transformation!6728 (rule!9736 (_1!24038 (v!39489 lt!1400209))))))))

(assert (=> b!3982943 (ruleValid!2660 thiss!21717 (rule!9736 (_1!24038 (v!39489 lt!1400209))))))

(declare-fun lt!1400203 () Unit!61261)

(assert (=> b!3982943 (= lt!1400203 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1734 thiss!21717 (rule!9736 (_1!24038 (v!39489 lt!1400209))) rules!2999))))

(declare-fun lt!1400227 () Unit!61261)

(declare-fun lemmaCharactersSize!1323 (Token!12594) Unit!61261)

(assert (=> b!3982943 (= lt!1400227 (lemmaCharactersSize!1323 token!484))))

(declare-fun lt!1400215 () Unit!61261)

(assert (=> b!3982943 (= lt!1400215 (lemmaCharactersSize!1323 (_1!24038 (v!39489 lt!1400209))))))

(declare-fun b!3982944 () Bool)

(declare-fun e!2468460 () Bool)

(assert (=> b!3982944 (= e!2468492 e!2468460)))

(declare-fun res!1614617 () Bool)

(assert (=> b!3982944 (=> res!1614617 e!2468460)))

(declare-fun lt!1400212 () List!42712)

(assert (=> b!3982944 (= res!1614617 (not (= lt!1400212 prefix!494)))))

(declare-fun lt!1400196 () List!42712)

(assert (=> b!3982944 (= lt!1400212 (++!11130 lt!1400195 lt!1400196))))

(assert (=> b!3982944 (= lt!1400196 (getSuffix!2246 prefix!494 lt!1400195))))

(assert (=> b!3982944 (isPrefix!3815 lt!1400195 prefix!494)))

(declare-fun lt!1400188 () Unit!61261)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!393 (List!42712 List!42712 List!42712) Unit!61261)

(assert (=> b!3982944 (= lt!1400188 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!393 prefix!494 lt!1400195 lt!1400240))))

(declare-fun b!3982945 () Bool)

(declare-fun res!1614636 () Bool)

(assert (=> b!3982945 (=> res!1614636 e!2468491)))

(declare-fun contains!8473 (List!42714 Rule!13256) Bool)

(assert (=> b!3982945 (= res!1614636 (not (contains!8473 rules!2999 (rule!9736 token!484))))))

(declare-fun b!3982946 () Bool)

(declare-fun e!2468472 () Bool)

(declare-fun tp!1214018 () Bool)

(assert (=> b!3982946 (= e!2468472 (and e!2468485 tp!1214018))))

(declare-fun b!3982948 () Bool)

(assert (=> b!3982948 (= e!2468491 true)))

(declare-fun lt!1400208 () Bool)

(assert (=> b!3982948 (= lt!1400208 (contains!8473 rules!2999 (rule!9736 (_1!24038 (v!39489 lt!1400209)))))))

(declare-fun res!1614632 () Bool)

(assert (=> start!374852 (=> (not res!1614632) (not e!2468481))))

(assert (=> start!374852 (= res!1614632 ((_ is Lexer!6315) thiss!21717))))

(assert (=> start!374852 e!2468481))

(assert (=> start!374852 e!2468482))

(declare-fun e!2468464 () Bool)

(declare-fun inv!56892 (Token!12594) Bool)

(assert (=> start!374852 (and (inv!56892 token!484) e!2468464)))

(assert (=> start!374852 e!2468473))

(declare-fun e!2468466 () Bool)

(assert (=> start!374852 e!2468466))

(assert (=> start!374852 e!2468468))

(assert (=> start!374852 true))

(assert (=> start!374852 e!2468472))

(declare-fun e!2468484 () Bool)

(assert (=> start!374852 e!2468484))

(declare-fun b!3982947 () Bool)

(declare-fun e!2468476 () Bool)

(assert (=> b!3982947 (= e!2468460 e!2468476)))

(declare-fun res!1614623 () Bool)

(assert (=> b!3982947 (=> res!1614623 e!2468476)))

(declare-fun lt!1400230 () List!42712)

(declare-fun lt!1400236 () List!42712)

(assert (=> b!3982947 (= res!1614623 (or (not (= lt!1400240 lt!1400230)) (not (= lt!1400240 lt!1400236))))))

(assert (=> b!3982947 (= lt!1400230 lt!1400236)))

(declare-fun lt!1400216 () List!42712)

(assert (=> b!3982947 (= lt!1400236 (++!11130 lt!1400195 lt!1400216))))

(assert (=> b!3982947 (= lt!1400230 (++!11130 lt!1400212 suffix!1299))))

(assert (=> b!3982947 (= lt!1400216 (++!11130 lt!1400196 suffix!1299))))

(declare-fun lt!1400210 () Unit!61261)

(declare-fun lemmaConcatAssociativity!2450 (List!42712 List!42712 List!42712) Unit!61261)

(assert (=> b!3982947 (= lt!1400210 (lemmaConcatAssociativity!2450 lt!1400195 lt!1400196 suffix!1299))))

(declare-fun b!3982949 () Bool)

(declare-fun res!1614633 () Bool)

(assert (=> b!3982949 (=> (not res!1614633) (not e!2468481))))

(assert (=> b!3982949 (= res!1614633 (>= (size!31857 suffix!1299) (size!31857 newSuffix!27)))))

(assert (=> b!3982950 (= e!2468488 (and tp!1214020 tp!1214019))))

(declare-fun b!3982951 () Bool)

(declare-fun tp!1214015 () Bool)

(assert (=> b!3982951 (= e!2468466 (and tp_is_empty!20237 tp!1214015))))

(declare-fun b!3982952 () Bool)

(declare-fun e!2468480 () Bool)

(assert (=> b!3982952 (= e!2468480 e!2468483)))

(declare-fun res!1614637 () Bool)

(assert (=> b!3982952 (=> res!1614637 e!2468483)))

(assert (=> b!3982952 (= res!1614637 (not (= lt!1400219 lt!1400240)))))

(assert (=> b!3982952 (= lt!1400219 (++!11130 lt!1400195 lt!1400213))))

(assert (=> b!3982952 (= lt!1400213 (getSuffix!2246 lt!1400240 lt!1400195))))

(assert (=> b!3982952 e!2468475))

(declare-fun res!1614634 () Bool)

(assert (=> b!3982952 (=> (not res!1614634) (not e!2468475))))

(assert (=> b!3982952 (= res!1614634 (isPrefix!3815 lt!1400240 lt!1400240))))

(declare-fun lt!1400224 () Unit!61261)

(declare-fun lemmaIsPrefixRefl!2407 (List!42712 List!42712) Unit!61261)

(assert (=> b!3982952 (= lt!1400224 (lemmaIsPrefixRefl!2407 lt!1400240 lt!1400240))))

(declare-fun b!3982953 () Bool)

(declare-fun e!2468471 () Bool)

(assert (=> b!3982953 (= e!2468476 e!2468471)))

(declare-fun res!1614618 () Bool)

(assert (=> b!3982953 (=> res!1614618 e!2468471)))

(declare-fun lt!1400186 () Option!9142)

(declare-fun lt!1400221 () Option!9142)

(assert (=> b!3982953 (= res!1614618 (not (= lt!1400186 lt!1400221)))))

(assert (=> b!3982953 (= lt!1400186 (Some!9141 (tuple2!41809 lt!1400200 suffixResult!105)))))

(assert (=> b!3982953 (= lt!1400186 (maxPrefixOneRule!2649 thiss!21717 (rule!9736 token!484) lt!1400240))))

(declare-fun lt!1400239 () TokenValue!6958)

(assert (=> b!3982953 (= lt!1400200 (Token!12595 lt!1400239 (rule!9736 token!484) lt!1400214 lt!1400195))))

(assert (=> b!3982953 (= lt!1400239 (apply!9939 (transformation!6728 (rule!9736 token!484)) (seqFromList!4967 lt!1400195)))))

(declare-fun lt!1400218 () Unit!61261)

(assert (=> b!3982953 (= lt!1400218 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1471 thiss!21717 rules!2999 lt!1400195 lt!1400240 suffixResult!105 (rule!9736 token!484)))))

(assert (=> b!3982953 (= lt!1400216 suffixResult!105)))

(declare-fun lt!1400189 () Unit!61261)

(assert (=> b!3982953 (= lt!1400189 (lemmaSamePrefixThenSameSuffix!2002 lt!1400195 lt!1400216 lt!1400195 suffixResult!105 lt!1400240))))

(assert (=> b!3982953 (isPrefix!3815 lt!1400195 lt!1400236)))

(declare-fun lt!1400187 () Unit!61261)

(assert (=> b!3982953 (= lt!1400187 (lemmaConcatTwoListThenFirstIsPrefix!2658 lt!1400195 lt!1400216))))

(declare-fun b!3982954 () Bool)

(declare-fun e!2468477 () Bool)

(assert (=> b!3982954 (= e!2468477 e!2468479)))

(declare-fun res!1614639 () Bool)

(assert (=> b!3982954 (=> (not res!1614639) (not e!2468479))))

(assert (=> b!3982954 (= res!1614639 (= (maxPrefix!3615 thiss!21717 rules!2999 lt!1400240) lt!1400221))))

(assert (=> b!3982954 (= lt!1400221 (Some!9141 lt!1400235))))

(assert (=> b!3982954 (= lt!1400235 (tuple2!41809 token!484 suffixResult!105))))

(assert (=> b!3982954 (= lt!1400240 (++!11130 prefix!494 suffix!1299))))

(declare-fun b!3982955 () Bool)

(assert (=> b!3982955 (= e!2468474 e!2468490)))

(declare-fun res!1614629 () Bool)

(assert (=> b!3982955 (=> res!1614629 e!2468490)))

(assert (=> b!3982955 (= res!1614629 (not (= lt!1400220 lt!1400240)))))

(assert (=> b!3982955 (= lt!1400220 (++!11130 prefix!494 lt!1400238))))

(assert (=> b!3982955 (= lt!1400220 (++!11130 lt!1400231 lt!1400202))))

(declare-fun lt!1400225 () Unit!61261)

(assert (=> b!3982955 (= lt!1400225 (lemmaConcatAssociativity!2450 prefix!494 newSuffix!27 lt!1400202))))

(declare-fun b!3982956 () Bool)

(assert (=> b!3982956 (= e!2468487 e!2468477)))

(declare-fun res!1614620 () Bool)

(assert (=> b!3982956 (=> (not res!1614620) (not e!2468477))))

(declare-fun lt!1400192 () List!42712)

(assert (=> b!3982956 (= res!1614620 (= lt!1400192 lt!1400231))))

(assert (=> b!3982956 (= lt!1400231 (++!11130 prefix!494 newSuffix!27))))

(assert (=> b!3982956 (= lt!1400192 (++!11130 lt!1400195 newSuffixResult!27))))

(declare-fun tp!1214017 () Bool)

(declare-fun e!2468462 () Bool)

(declare-fun b!3982957 () Bool)

(declare-fun inv!21 (TokenValue!6958) Bool)

(assert (=> b!3982957 (= e!2468464 (and (inv!21 (value!212382 token!484)) e!2468462 tp!1214017))))

(declare-fun b!3982958 () Bool)

(declare-fun res!1614635 () Bool)

(assert (=> b!3982958 (=> (not res!1614635) (not e!2468475))))

(assert (=> b!3982958 (= res!1614635 (= (value!212382 token!484) lt!1400239))))

(declare-fun b!3982959 () Bool)

(declare-fun tp!1214016 () Bool)

(assert (=> b!3982959 (= e!2468484 (and tp_is_empty!20237 tp!1214016))))

(declare-fun b!3982960 () Bool)

(assert (=> b!3982960 (= e!2468471 e!2468480)))

(declare-fun res!1614641 () Bool)

(assert (=> b!3982960 (=> res!1614641 e!2468480)))

(declare-fun matchR!5610 (Regex!11633 List!42712) Bool)

(assert (=> b!3982960 (= res!1614641 (not (matchR!5610 (regex!6728 (rule!9736 token!484)) lt!1400195)))))

(assert (=> b!3982960 (isPrefix!3815 lt!1400195 lt!1400231)))

(declare-fun lt!1400199 () Unit!61261)

(assert (=> b!3982960 (= lt!1400199 (lemmaPrefixStaysPrefixWhenAddingToSuffix!648 lt!1400195 prefix!494 newSuffix!27))))

(declare-fun lt!1400217 () Unit!61261)

(assert (=> b!3982960 (= lt!1400217 (lemmaPrefixStaysPrefixWhenAddingToSuffix!648 lt!1400195 prefix!494 suffix!1299))))

(declare-fun b!3982961 () Bool)

(declare-fun res!1614631 () Bool)

(assert (=> b!3982961 (=> (not res!1614631) (not e!2468481))))

(declare-fun rulesInvariant!5660 (LexerInterface!6317 List!42714) Bool)

(assert (=> b!3982961 (= res!1614631 (rulesInvariant!5660 thiss!21717 rules!2999))))

(declare-fun b!3982962 () Bool)

(declare-fun tp!1214014 () Bool)

(assert (=> b!3982962 (= e!2468462 (and tp!1214014 (inv!56888 (tag!7588 (rule!9736 token!484))) (inv!56891 (transformation!6728 (rule!9736 token!484))) e!2468489))))

(declare-fun b!3982963 () Bool)

(declare-fun res!1614621 () Bool)

(assert (=> b!3982963 (=> (not res!1614621) (not e!2468481))))

(declare-fun isEmpty!25460 (List!42714) Bool)

(assert (=> b!3982963 (= res!1614621 (not (isEmpty!25460 rules!2999)))))

(declare-fun b!3982964 () Bool)

(assert (=> b!3982964 (= e!2468475 (and (= (size!31856 token!484) lt!1400214) (= (originalCharacters!7328 token!484) lt!1400195)))))

(assert (= (and start!374852 res!1614632) b!3982963))

(assert (= (and b!3982963 res!1614621) b!3982961))

(assert (= (and b!3982961 res!1614631) b!3982949))

(assert (= (and b!3982949 res!1614633) b!3982936))

(assert (= (and b!3982936 res!1614638) b!3982934))

(assert (= (and b!3982934 res!1614642) b!3982956))

(assert (= (and b!3982956 res!1614620) b!3982954))

(assert (= (and b!3982954 res!1614639) b!3982927))

(assert (= (and b!3982927 (not res!1614628)) b!3982940))

(assert (= (and b!3982940 (not res!1614640)) b!3982944))

(assert (= (and b!3982944 (not res!1614617)) b!3982947))

(assert (= (and b!3982947 (not res!1614623)) b!3982953))

(assert (= (and b!3982953 (not res!1614618)) b!3982960))

(assert (= (and b!3982960 (not res!1614641)) b!3982952))

(assert (= (and b!3982952 res!1614634) b!3982958))

(assert (= (and b!3982958 res!1614635) b!3982933))

(assert (= (and b!3982933 res!1614619) b!3982964))

(assert (= (and b!3982952 (not res!1614637)) b!3982941))

(assert (= (and b!3982941 (not res!1614627)) b!3982943))

(assert (= (and b!3982943 (not res!1614626)) b!3982929))

(assert (= (and b!3982929 (not res!1614643)) b!3982955))

(assert (= (and b!3982955 (not res!1614629)) b!3982942))

(assert (= (and b!3982942 (not res!1614630)) b!3982928))

(assert (= (and b!3982928 (not res!1614625)) b!3982932))

(assert (= (and b!3982932 (not res!1614644)) b!3982937))

(assert (= (and b!3982937 (not res!1614622)) b!3982938))

(assert (= (and b!3982938 (not res!1614624)) b!3982945))

(assert (= (and b!3982945 (not res!1614636)) b!3982948))

(assert (= (and start!374852 ((_ is Cons!42588) prefix!494)) b!3982930))

(assert (= b!3982962 b!3982935))

(assert (= b!3982957 b!3982962))

(assert (= start!374852 b!3982957))

(assert (= (and start!374852 ((_ is Cons!42588) suffixResult!105)) b!3982939))

(assert (= (and start!374852 ((_ is Cons!42588) suffix!1299)) b!3982951))

(assert (= (and start!374852 ((_ is Cons!42588) newSuffix!27)) b!3982926))

(assert (= b!3982931 b!3982950))

(assert (= b!3982946 b!3982931))

(assert (= (and start!374852 ((_ is Cons!42590) rules!2999)) b!3982946))

(assert (= (and start!374852 ((_ is Cons!42588) newSuffixResult!27)) b!3982959))

(declare-fun m!4557493 () Bool)

(assert (=> b!3982944 m!4557493))

(declare-fun m!4557495 () Bool)

(assert (=> b!3982944 m!4557495))

(declare-fun m!4557497 () Bool)

(assert (=> b!3982944 m!4557497))

(declare-fun m!4557499 () Bool)

(assert (=> b!3982944 m!4557499))

(declare-fun m!4557501 () Bool)

(assert (=> b!3982945 m!4557501))

(declare-fun m!4557503 () Bool)

(assert (=> b!3982943 m!4557503))

(declare-fun m!4557505 () Bool)

(assert (=> b!3982943 m!4557505))

(assert (=> b!3982943 m!4557503))

(declare-fun m!4557507 () Bool)

(assert (=> b!3982943 m!4557507))

(declare-fun m!4557509 () Bool)

(assert (=> b!3982943 m!4557509))

(declare-fun m!4557511 () Bool)

(assert (=> b!3982943 m!4557511))

(declare-fun m!4557513 () Bool)

(assert (=> b!3982943 m!4557513))

(declare-fun m!4557515 () Bool)

(assert (=> b!3982943 m!4557515))

(declare-fun m!4557517 () Bool)

(assert (=> b!3982943 m!4557517))

(declare-fun m!4557519 () Bool)

(assert (=> b!3982943 m!4557519))

(declare-fun m!4557521 () Bool)

(assert (=> b!3982943 m!4557521))

(declare-fun m!4557523 () Bool)

(assert (=> b!3982943 m!4557523))

(declare-fun m!4557525 () Bool)

(assert (=> b!3982943 m!4557525))

(declare-fun m!4557527 () Bool)

(assert (=> b!3982943 m!4557527))

(declare-fun m!4557529 () Bool)

(assert (=> b!3982943 m!4557529))

(declare-fun m!4557531 () Bool)

(assert (=> b!3982943 m!4557531))

(assert (=> b!3982943 m!4557521))

(declare-fun m!4557533 () Bool)

(assert (=> b!3982943 m!4557533))

(declare-fun m!4557535 () Bool)

(assert (=> b!3982943 m!4557535))

(assert (=> b!3982943 m!4557529))

(declare-fun m!4557537 () Bool)

(assert (=> b!3982943 m!4557537))

(declare-fun m!4557539 () Bool)

(assert (=> b!3982941 m!4557539))

(declare-fun m!4557541 () Bool)

(assert (=> b!3982941 m!4557541))

(declare-fun m!4557543 () Bool)

(assert (=> b!3982941 m!4557543))

(declare-fun m!4557545 () Bool)

(assert (=> b!3982941 m!4557545))

(declare-fun m!4557547 () Bool)

(assert (=> b!3982948 m!4557547))

(declare-fun m!4557549 () Bool)

(assert (=> b!3982936 m!4557549))

(declare-fun m!4557551 () Bool)

(assert (=> b!3982933 m!4557551))

(declare-fun m!4557553 () Bool)

(assert (=> b!3982947 m!4557553))

(declare-fun m!4557555 () Bool)

(assert (=> b!3982947 m!4557555))

(declare-fun m!4557557 () Bool)

(assert (=> b!3982947 m!4557557))

(declare-fun m!4557559 () Bool)

(assert (=> b!3982947 m!4557559))

(declare-fun m!4557561 () Bool)

(assert (=> b!3982960 m!4557561))

(declare-fun m!4557563 () Bool)

(assert (=> b!3982960 m!4557563))

(declare-fun m!4557565 () Bool)

(assert (=> b!3982960 m!4557565))

(declare-fun m!4557567 () Bool)

(assert (=> b!3982960 m!4557567))

(declare-fun m!4557569 () Bool)

(assert (=> b!3982940 m!4557569))

(declare-fun m!4557571 () Bool)

(assert (=> b!3982940 m!4557571))

(declare-fun m!4557573 () Bool)

(assert (=> b!3982940 m!4557573))

(declare-fun m!4557575 () Bool)

(assert (=> b!3982940 m!4557575))

(declare-fun m!4557577 () Bool)

(assert (=> b!3982940 m!4557577))

(declare-fun m!4557579 () Bool)

(assert (=> b!3982955 m!4557579))

(declare-fun m!4557581 () Bool)

(assert (=> b!3982955 m!4557581))

(declare-fun m!4557583 () Bool)

(assert (=> b!3982955 m!4557583))

(declare-fun m!4557585 () Bool)

(assert (=> b!3982934 m!4557585))

(declare-fun m!4557587 () Bool)

(assert (=> b!3982934 m!4557587))

(declare-fun m!4557589 () Bool)

(assert (=> b!3982934 m!4557589))

(assert (=> b!3982934 m!4557589))

(declare-fun m!4557591 () Bool)

(assert (=> b!3982934 m!4557591))

(declare-fun m!4557593 () Bool)

(assert (=> b!3982962 m!4557593))

(declare-fun m!4557595 () Bool)

(assert (=> b!3982962 m!4557595))

(declare-fun m!4557597 () Bool)

(assert (=> b!3982957 m!4557597))

(declare-fun m!4557599 () Bool)

(assert (=> b!3982963 m!4557599))

(declare-fun m!4557601 () Bool)

(assert (=> b!3982929 m!4557601))

(declare-fun m!4557603 () Bool)

(assert (=> b!3982929 m!4557603))

(declare-fun m!4557605 () Bool)

(assert (=> b!3982931 m!4557605))

(declare-fun m!4557607 () Bool)

(assert (=> b!3982931 m!4557607))

(declare-fun m!4557609 () Bool)

(assert (=> b!3982938 m!4557609))

(declare-fun m!4557611 () Bool)

(assert (=> b!3982942 m!4557611))

(declare-fun m!4557613 () Bool)

(assert (=> b!3982942 m!4557613))

(declare-fun m!4557615 () Bool)

(assert (=> b!3982942 m!4557615))

(declare-fun m!4557617 () Bool)

(assert (=> b!3982927 m!4557617))

(declare-fun m!4557619 () Bool)

(assert (=> b!3982927 m!4557619))

(declare-fun m!4557621 () Bool)

(assert (=> b!3982927 m!4557621))

(declare-fun m!4557623 () Bool)

(assert (=> b!3982927 m!4557623))

(declare-fun m!4557625 () Bool)

(assert (=> b!3982956 m!4557625))

(declare-fun m!4557627 () Bool)

(assert (=> b!3982956 m!4557627))

(declare-fun m!4557629 () Bool)

(assert (=> start!374852 m!4557629))

(declare-fun m!4557631 () Bool)

(assert (=> b!3982952 m!4557631))

(declare-fun m!4557633 () Bool)

(assert (=> b!3982952 m!4557633))

(declare-fun m!4557635 () Bool)

(assert (=> b!3982952 m!4557635))

(declare-fun m!4557637 () Bool)

(assert (=> b!3982952 m!4557637))

(declare-fun m!4557639 () Bool)

(assert (=> b!3982954 m!4557639))

(declare-fun m!4557641 () Bool)

(assert (=> b!3982954 m!4557641))

(declare-fun m!4557643 () Bool)

(assert (=> b!3982949 m!4557643))

(declare-fun m!4557645 () Bool)

(assert (=> b!3982949 m!4557645))

(declare-fun m!4557647 () Bool)

(assert (=> b!3982937 m!4557647))

(declare-fun m!4557649 () Bool)

(assert (=> b!3982937 m!4557649))

(declare-fun m!4557651 () Bool)

(assert (=> b!3982937 m!4557651))

(declare-fun m!4557653 () Bool)

(assert (=> b!3982961 m!4557653))

(declare-fun m!4557655 () Bool)

(assert (=> b!3982932 m!4557655))

(declare-fun m!4557657 () Bool)

(assert (=> b!3982932 m!4557657))

(declare-fun m!4557659 () Bool)

(assert (=> b!3982953 m!4557659))

(declare-fun m!4557661 () Bool)

(assert (=> b!3982953 m!4557661))

(declare-fun m!4557663 () Bool)

(assert (=> b!3982953 m!4557663))

(assert (=> b!3982953 m!4557661))

(declare-fun m!4557665 () Bool)

(assert (=> b!3982953 m!4557665))

(declare-fun m!4557667 () Bool)

(assert (=> b!3982953 m!4557667))

(declare-fun m!4557669 () Bool)

(assert (=> b!3982953 m!4557669))

(declare-fun m!4557671 () Bool)

(assert (=> b!3982953 m!4557671))

(check-sat (not b!3982934) (not b_next!111281) (not b!3982960) (not b!3982947) (not b!3982963) (not b!3982932) (not b!3982937) (not b!3982959) (not b!3982940) (not b_next!111283) (not b_next!111285) (not b!3982945) (not b!3982933) tp_is_empty!20237 (not b!3982952) (not b!3982927) (not b!3982953) (not b!3982938) (not b_next!111287) (not b!3982929) (not b!3982943) (not b!3982955) (not b!3982930) b_and!306133 b_and!306127 (not b!3982939) (not b!3982936) (not b!3982948) (not b!3982941) (not b!3982961) (not b!3982951) (not b!3982949) (not b!3982942) (not b!3982944) (not b!3982926) (not start!374852) (not b!3982954) b_and!306131 (not b!3982957) (not b!3982962) (not b!3982946) (not b!3982956) (not b!3982931) b_and!306129)
(check-sat (not b_next!111283) (not b_next!111285) (not b_next!111281) (not b_next!111287) b_and!306131 b_and!306129 b_and!306133 b_and!306127)
