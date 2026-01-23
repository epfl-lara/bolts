; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374108 () Bool)

(assert start!374108)

(declare-fun b!3975035 () Bool)

(declare-fun b_free!110225 () Bool)

(declare-fun b_next!110929 () Bool)

(assert (=> b!3975035 (= b_free!110225 (not b_next!110929))))

(declare-fun tp!1212013 () Bool)

(declare-fun b_and!305567 () Bool)

(assert (=> b!3975035 (= tp!1212013 b_and!305567)))

(declare-fun b_free!110227 () Bool)

(declare-fun b_next!110931 () Bool)

(assert (=> b!3975035 (= b_free!110227 (not b_next!110931))))

(declare-fun tp!1212012 () Bool)

(declare-fun b_and!305569 () Bool)

(assert (=> b!3975035 (= tp!1212012 b_and!305569)))

(declare-fun b!3975014 () Bool)

(declare-fun b_free!110229 () Bool)

(declare-fun b_next!110933 () Bool)

(assert (=> b!3975014 (= b_free!110229 (not b_next!110933))))

(declare-fun tp!1212016 () Bool)

(declare-fun b_and!305571 () Bool)

(assert (=> b!3975014 (= tp!1212016 b_and!305571)))

(declare-fun b_free!110231 () Bool)

(declare-fun b_next!110935 () Bool)

(assert (=> b!3975014 (= b_free!110231 (not b_next!110935))))

(declare-fun tp!1212008 () Bool)

(declare-fun b_and!305573 () Bool)

(assert (=> b!3975014 (= tp!1212008 b_and!305573)))

(declare-fun b!3975008 () Bool)

(declare-fun e!2462770 () Bool)

(declare-fun tp_is_empty!20161 () Bool)

(declare-fun tp!1212009 () Bool)

(assert (=> b!3975008 (= e!2462770 (and tp_is_empty!20161 tp!1212009))))

(declare-fun b!3975009 () Bool)

(declare-fun e!2462780 () Bool)

(declare-fun e!2462773 () Bool)

(assert (=> b!3975009 (= e!2462780 e!2462773)))

(declare-fun res!1609719 () Bool)

(assert (=> b!3975009 (=> res!1609719 e!2462773)))

(declare-datatypes ((C!23376 0))(
  ( (C!23377 (val!13782 Int)) )
))
(declare-datatypes ((List!42586 0))(
  ( (Nil!42462) (Cons!42462 (h!47882 C!23376) (t!331049 List!42586)) )
))
(declare-fun lt!1393433 () List!42586)

(declare-fun lt!1393437 () List!42586)

(declare-fun lt!1393421 () List!42586)

(assert (=> b!3975009 (= res!1609719 (or (not (= lt!1393437 lt!1393421)) (not (= lt!1393437 lt!1393433))))))

(assert (=> b!3975009 (= lt!1393421 lt!1393433)))

(declare-fun lt!1393448 () List!42586)

(declare-fun lt!1393426 () List!42586)

(declare-fun ++!11092 (List!42586 List!42586) List!42586)

(assert (=> b!3975009 (= lt!1393433 (++!11092 lt!1393448 lt!1393426))))

(declare-fun lt!1393425 () List!42586)

(declare-fun suffix!1299 () List!42586)

(assert (=> b!3975009 (= lt!1393421 (++!11092 lt!1393425 suffix!1299))))

(declare-fun lt!1393424 () List!42586)

(assert (=> b!3975009 (= lt!1393426 (++!11092 lt!1393424 suffix!1299))))

(declare-datatypes ((Unit!61112 0))(
  ( (Unit!61113) )
))
(declare-fun lt!1393442 () Unit!61112)

(declare-fun lemmaConcatAssociativity!2412 (List!42586 List!42586 List!42586) Unit!61112)

(assert (=> b!3975009 (= lt!1393442 (lemmaConcatAssociativity!2412 lt!1393448 lt!1393424 suffix!1299))))

(declare-fun b!3975010 () Bool)

(declare-fun res!1609723 () Bool)

(declare-fun e!2462760 () Bool)

(assert (=> b!3975010 (=> (not res!1609723) (not e!2462760))))

(declare-fun newSuffix!27 () List!42586)

(declare-fun size!31768 (List!42586) Int)

(assert (=> b!3975010 (= res!1609723 (>= (size!31768 suffix!1299) (size!31768 newSuffix!27)))))

(declare-fun b!3975011 () Bool)

(declare-fun e!2462782 () Bool)

(declare-fun e!2462769 () Bool)

(assert (=> b!3975011 (= e!2462782 e!2462769)))

(declare-fun res!1609722 () Bool)

(assert (=> b!3975011 (=> (not res!1609722) (not e!2462769))))

(declare-datatypes ((IArray!25807 0))(
  ( (IArray!25808 (innerList!12961 List!42586)) )
))
(declare-datatypes ((Conc!12901 0))(
  ( (Node!12901 (left!32140 Conc!12901) (right!32470 Conc!12901) (csize!26032 Int) (cheight!13112 Int)) (Leaf!19953 (xs!16207 IArray!25807) (csize!26033 Int)) (Empty!12901) )
))
(declare-datatypes ((BalanceConc!25396 0))(
  ( (BalanceConc!25397 (c!689138 Conc!12901)) )
))
(declare-datatypes ((List!42587 0))(
  ( (Nil!42463) (Cons!42463 (h!47883 (_ BitVec 16)) (t!331050 List!42587)) )
))
(declare-datatypes ((TokenValue!6920 0))(
  ( (FloatLiteralValue!13840 (text!48885 List!42587)) (TokenValueExt!6919 (__x!26057 Int)) (Broken!34600 (value!211273 List!42587)) (Object!7043) (End!6920) (Def!6920) (Underscore!6920) (Match!6920) (Else!6920) (Error!6920) (Case!6920) (If!6920) (Extends!6920) (Abstract!6920) (Class!6920) (Val!6920) (DelimiterValue!13840 (del!6980 List!42587)) (KeywordValue!6926 (value!211274 List!42587)) (CommentValue!13840 (value!211275 List!42587)) (WhitespaceValue!13840 (value!211276 List!42587)) (IndentationValue!6920 (value!211277 List!42587)) (String!48317) (Int32!6920) (Broken!34601 (value!211278 List!42587)) (Boolean!6921) (Unit!61114) (OperatorValue!6923 (op!6980 List!42587)) (IdentifierValue!13840 (value!211279 List!42587)) (IdentifierValue!13841 (value!211280 List!42587)) (WhitespaceValue!13841 (value!211281 List!42587)) (True!13840) (False!13840) (Broken!34602 (value!211282 List!42587)) (Broken!34603 (value!211283 List!42587)) (True!13841) (RightBrace!6920) (RightBracket!6920) (Colon!6920) (Null!6920) (Comma!6920) (LeftBracket!6920) (False!13841) (LeftBrace!6920) (ImaginaryLiteralValue!6920 (text!48886 List!42587)) (StringLiteralValue!20760 (value!211284 List!42587)) (EOFValue!6920 (value!211285 List!42587)) (IdentValue!6920 (value!211286 List!42587)) (DelimiterValue!13841 (value!211287 List!42587)) (DedentValue!6920 (value!211288 List!42587)) (NewLineValue!6920 (value!211289 List!42587)) (IntegerValue!20760 (value!211290 (_ BitVec 32)) (text!48887 List!42587)) (IntegerValue!20761 (value!211291 Int) (text!48888 List!42587)) (Times!6920) (Or!6920) (Equal!6920) (Minus!6920) (Broken!34604 (value!211292 List!42587)) (And!6920) (Div!6920) (LessEqual!6920) (Mod!6920) (Concat!18515) (Not!6920) (Plus!6920) (SpaceValue!6920 (value!211293 List!42587)) (IntegerValue!20762 (value!211294 Int) (text!48889 List!42587)) (StringLiteralValue!20761 (text!48890 List!42587)) (FloatLiteralValue!13841 (text!48891 List!42587)) (BytesLiteralValue!6920 (value!211295 List!42587)) (CommentValue!13841 (value!211296 List!42587)) (StringLiteralValue!20762 (value!211297 List!42587)) (ErrorTokenValue!6920 (msg!6981 List!42587)) )
))
(declare-datatypes ((Regex!11595 0))(
  ( (ElementMatch!11595 (c!689139 C!23376)) (Concat!18516 (regOne!23702 Regex!11595) (regTwo!23702 Regex!11595)) (EmptyExpr!11595) (Star!11595 (reg!11924 Regex!11595)) (EmptyLang!11595) (Union!11595 (regOne!23703 Regex!11595) (regTwo!23703 Regex!11595)) )
))
(declare-datatypes ((String!48318 0))(
  ( (String!48319 (value!211298 String)) )
))
(declare-datatypes ((TokenValueInjection!13268 0))(
  ( (TokenValueInjection!13269 (toValue!9178 Int) (toChars!9037 Int)) )
))
(declare-datatypes ((Rule!13180 0))(
  ( (Rule!13181 (regex!6690 Regex!11595) (tag!7550 String!48318) (isSeparator!6690 Bool) (transformation!6690 TokenValueInjection!13268)) )
))
(declare-datatypes ((Token!12518 0))(
  ( (Token!12519 (value!211299 TokenValue!6920) (rule!9686 Rule!13180) (size!31769 Int) (originalCharacters!7290 List!42586)) )
))
(declare-datatypes ((tuple2!41708 0))(
  ( (tuple2!41709 (_1!23988 Token!12518) (_2!23988 List!42586)) )
))
(declare-datatypes ((Option!9104 0))(
  ( (None!9103) (Some!9103 (v!39451 tuple2!41708)) )
))
(declare-fun lt!1393440 () Option!9104)

(declare-datatypes ((LexerInterface!6279 0))(
  ( (LexerInterfaceExt!6276 (__x!26058 Int)) (Lexer!6277) )
))
(declare-fun thiss!21717 () LexerInterface!6279)

(declare-datatypes ((List!42588 0))(
  ( (Nil!42464) (Cons!42464 (h!47884 Rule!13180) (t!331051 List!42588)) )
))
(declare-fun rules!2999 () List!42588)

(declare-fun maxPrefix!3577 (LexerInterface!6279 List!42588 List!42586) Option!9104)

(assert (=> b!3975011 (= res!1609722 (= (maxPrefix!3577 thiss!21717 rules!2999 lt!1393437) lt!1393440))))

(declare-fun token!484 () Token!12518)

(declare-fun suffixResult!105 () List!42586)

(assert (=> b!3975011 (= lt!1393440 (Some!9103 (tuple2!41709 token!484 suffixResult!105)))))

(declare-fun prefix!494 () List!42586)

(assert (=> b!3975011 (= lt!1393437 (++!11092 prefix!494 suffix!1299))))

(declare-fun b!3975012 () Bool)

(declare-fun e!2462774 () Bool)

(declare-fun tp!1212006 () Bool)

(assert (=> b!3975012 (= e!2462774 (and tp_is_empty!20161 tp!1212006))))

(declare-fun e!2462775 () Bool)

(assert (=> b!3975014 (= e!2462775 (and tp!1212016 tp!1212008))))

(declare-fun tp!1212011 () Bool)

(declare-fun e!2462778 () Bool)

(declare-fun b!3975015 () Bool)

(declare-fun inv!56731 (String!48318) Bool)

(declare-fun inv!56734 (TokenValueInjection!13268) Bool)

(assert (=> b!3975015 (= e!2462778 (and tp!1212011 (inv!56731 (tag!7550 (rule!9686 token!484))) (inv!56734 (transformation!6690 (rule!9686 token!484))) e!2462775))))

(declare-fun b!3975016 () Bool)

(declare-fun e!2462771 () Bool)

(declare-fun lt!1393429 () Int)

(assert (=> b!3975016 (= e!2462771 (>= (size!31768 lt!1393437) lt!1393429))))

(declare-fun lt!1393436 () List!42586)

(assert (=> b!3975016 (= suffixResult!105 lt!1393436)))

(declare-fun lt!1393432 () Unit!61112)

(declare-fun lemmaSamePrefixThenSameSuffix!1964 (List!42586 List!42586 List!42586 List!42586 List!42586) Unit!61112)

(assert (=> b!3975016 (= lt!1393432 (lemmaSamePrefixThenSameSuffix!1964 lt!1393448 suffixResult!105 lt!1393448 lt!1393436 lt!1393437))))

(declare-fun lt!1393449 () List!42586)

(declare-fun isPrefix!3777 (List!42586 List!42586) Bool)

(assert (=> b!3975016 (isPrefix!3777 lt!1393448 lt!1393449)))

(declare-fun lt!1393445 () Unit!61112)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2620 (List!42586 List!42586) Unit!61112)

(assert (=> b!3975016 (= lt!1393445 (lemmaConcatTwoListThenFirstIsPrefix!2620 lt!1393448 lt!1393436))))

(declare-fun b!3975017 () Bool)

(declare-fun e!2462776 () Bool)

(assert (=> b!3975017 (= e!2462776 e!2462771)))

(declare-fun res!1609715 () Bool)

(assert (=> b!3975017 (=> res!1609715 e!2462771)))

(assert (=> b!3975017 (= res!1609715 (not (= lt!1393449 lt!1393437)))))

(assert (=> b!3975017 (= lt!1393449 (++!11092 lt!1393448 lt!1393436))))

(declare-fun getSuffix!2208 (List!42586 List!42586) List!42586)

(assert (=> b!3975017 (= lt!1393436 (getSuffix!2208 lt!1393437 lt!1393448))))

(declare-fun e!2462764 () Bool)

(assert (=> b!3975017 e!2462764))

(declare-fun res!1609718 () Bool)

(assert (=> b!3975017 (=> (not res!1609718) (not e!2462764))))

(assert (=> b!3975017 (= res!1609718 (isPrefix!3777 lt!1393437 lt!1393437))))

(declare-fun lt!1393431 () Unit!61112)

(declare-fun lemmaIsPrefixRefl!2369 (List!42586 List!42586) Unit!61112)

(assert (=> b!3975017 (= lt!1393431 (lemmaIsPrefixRefl!2369 lt!1393437 lt!1393437))))

(declare-fun b!3975018 () Bool)

(declare-fun e!2462777 () Bool)

(declare-fun e!2462763 () Bool)

(assert (=> b!3975018 (= e!2462777 e!2462763)))

(declare-fun res!1609720 () Bool)

(assert (=> b!3975018 (=> res!1609720 e!2462763)))

(assert (=> b!3975018 (= res!1609720 (not (isPrefix!3777 lt!1393448 lt!1393437)))))

(assert (=> b!3975018 (isPrefix!3777 prefix!494 lt!1393437)))

(declare-fun lt!1393441 () Unit!61112)

(assert (=> b!3975018 (= lt!1393441 (lemmaConcatTwoListThenFirstIsPrefix!2620 prefix!494 suffix!1299))))

(declare-fun lt!1393439 () List!42586)

(assert (=> b!3975018 (isPrefix!3777 lt!1393448 lt!1393439)))

(declare-fun lt!1393450 () Unit!61112)

(assert (=> b!3975018 (= lt!1393450 (lemmaConcatTwoListThenFirstIsPrefix!2620 lt!1393448 suffixResult!105))))

(declare-fun tp!1212018 () Bool)

(declare-fun e!2462765 () Bool)

(declare-fun e!2462768 () Bool)

(declare-fun b!3975019 () Bool)

(assert (=> b!3975019 (= e!2462768 (and tp!1212018 (inv!56731 (tag!7550 (h!47884 rules!2999))) (inv!56734 (transformation!6690 (h!47884 rules!2999))) e!2462765))))

(declare-fun b!3975020 () Bool)

(assert (=> b!3975020 (= e!2462769 (not e!2462777))))

(declare-fun res!1609714 () Bool)

(assert (=> b!3975020 (=> res!1609714 e!2462777)))

(assert (=> b!3975020 (= res!1609714 (not (= lt!1393439 lt!1393437)))))

(assert (=> b!3975020 (= lt!1393439 (++!11092 lt!1393448 suffixResult!105))))

(declare-fun lt!1393430 () Unit!61112)

(declare-fun lemmaInv!905 (TokenValueInjection!13268) Unit!61112)

(assert (=> b!3975020 (= lt!1393430 (lemmaInv!905 (transformation!6690 (rule!9686 token!484))))))

(declare-fun ruleValid!2622 (LexerInterface!6279 Rule!13180) Bool)

(assert (=> b!3975020 (ruleValid!2622 thiss!21717 (rule!9686 token!484))))

(declare-fun lt!1393434 () Unit!61112)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1696 (LexerInterface!6279 Rule!13180 List!42588) Unit!61112)

(assert (=> b!3975020 (= lt!1393434 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1696 thiss!21717 (rule!9686 token!484) rules!2999))))

(declare-fun b!3975021 () Bool)

(assert (=> b!3975021 (= e!2462764 (and (= (size!31769 token!484) lt!1393429) (= (originalCharacters!7290 token!484) lt!1393448)))))

(declare-fun b!3975022 () Bool)

(declare-fun res!1609724 () Bool)

(assert (=> b!3975022 (=> (not res!1609724) (not e!2462764))))

(assert (=> b!3975022 (= res!1609724 (= (size!31769 token!484) (size!31768 (originalCharacters!7290 token!484))))))

(declare-fun b!3975023 () Bool)

(declare-fun e!2462783 () Bool)

(assert (=> b!3975023 (= e!2462783 e!2462782)))

(declare-fun res!1609729 () Bool)

(assert (=> b!3975023 (=> (not res!1609729) (not e!2462782))))

(declare-fun lt!1393427 () List!42586)

(declare-fun lt!1393451 () List!42586)

(assert (=> b!3975023 (= res!1609729 (= lt!1393427 lt!1393451))))

(assert (=> b!3975023 (= lt!1393451 (++!11092 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42586)

(assert (=> b!3975023 (= lt!1393427 (++!11092 lt!1393448 newSuffixResult!27))))

(declare-fun b!3975024 () Bool)

(declare-fun res!1609728 () Bool)

(assert (=> b!3975024 (=> (not res!1609728) (not e!2462760))))

(declare-fun isEmpty!25396 (List!42588) Bool)

(assert (=> b!3975024 (= res!1609728 (not (isEmpty!25396 rules!2999)))))

(declare-fun b!3975025 () Bool)

(declare-fun res!1609726 () Bool)

(assert (=> b!3975025 (=> (not res!1609726) (not e!2462764))))

(declare-fun lt!1393444 () TokenValue!6920)

(assert (=> b!3975025 (= res!1609726 (= (value!211299 token!484) lt!1393444))))

(declare-fun b!3975026 () Bool)

(declare-fun e!2462762 () Bool)

(declare-fun tp!1212015 () Bool)

(assert (=> b!3975026 (= e!2462762 (and e!2462768 tp!1212015))))

(declare-fun b!3975027 () Bool)

(declare-fun e!2462772 () Bool)

(declare-fun tp!1212007 () Bool)

(assert (=> b!3975027 (= e!2462772 (and tp_is_empty!20161 tp!1212007))))

(declare-fun b!3975028 () Bool)

(declare-fun tp!1212017 () Bool)

(declare-fun e!2462766 () Bool)

(declare-fun inv!21 (TokenValue!6920) Bool)

(assert (=> b!3975028 (= e!2462766 (and (inv!21 (value!211299 token!484)) e!2462778 tp!1212017))))

(declare-fun res!1609721 () Bool)

(assert (=> start!374108 (=> (not res!1609721) (not e!2462760))))

(get-info :version)

(assert (=> start!374108 (= res!1609721 ((_ is Lexer!6277) thiss!21717))))

(assert (=> start!374108 e!2462760))

(assert (=> start!374108 e!2462774))

(declare-fun inv!56735 (Token!12518) Bool)

(assert (=> start!374108 (and (inv!56735 token!484) e!2462766)))

(declare-fun e!2462781 () Bool)

(assert (=> start!374108 e!2462781))

(assert (=> start!374108 e!2462772))

(declare-fun e!2462784 () Bool)

(assert (=> start!374108 e!2462784))

(assert (=> start!374108 true))

(assert (=> start!374108 e!2462762))

(assert (=> start!374108 e!2462770))

(declare-fun b!3975013 () Bool)

(declare-fun tp!1212010 () Bool)

(assert (=> b!3975013 (= e!2462781 (and tp_is_empty!20161 tp!1212010))))

(declare-fun b!3975029 () Bool)

(assert (=> b!3975029 (= e!2462763 e!2462780)))

(declare-fun res!1609727 () Bool)

(assert (=> b!3975029 (=> res!1609727 e!2462780)))

(assert (=> b!3975029 (= res!1609727 (not (= lt!1393425 prefix!494)))))

(assert (=> b!3975029 (= lt!1393425 (++!11092 lt!1393448 lt!1393424))))

(assert (=> b!3975029 (= lt!1393424 (getSuffix!2208 prefix!494 lt!1393448))))

(assert (=> b!3975029 (isPrefix!3777 lt!1393448 prefix!494)))

(declare-fun lt!1393443 () Unit!61112)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!355 (List!42586 List!42586 List!42586) Unit!61112)

(assert (=> b!3975029 (= lt!1393443 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!355 prefix!494 lt!1393448 lt!1393437))))

(declare-fun b!3975030 () Bool)

(declare-fun res!1609717 () Bool)

(assert (=> b!3975030 (=> (not res!1609717) (not e!2462760))))

(assert (=> b!3975030 (= res!1609717 (isPrefix!3777 newSuffix!27 suffix!1299))))

(declare-fun b!3975031 () Bool)

(declare-fun e!2462779 () Bool)

(assert (=> b!3975031 (= e!2462773 e!2462779)))

(declare-fun res!1609725 () Bool)

(assert (=> b!3975031 (=> res!1609725 e!2462779)))

(declare-fun lt!1393422 () Option!9104)

(assert (=> b!3975031 (= res!1609725 (not (= lt!1393422 lt!1393440)))))

(assert (=> b!3975031 (= lt!1393422 (Some!9103 (tuple2!41709 (Token!12519 lt!1393444 (rule!9686 token!484) lt!1393429 lt!1393448) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2611 (LexerInterface!6279 Rule!13180 List!42586) Option!9104)

(assert (=> b!3975031 (= lt!1393422 (maxPrefixOneRule!2611 thiss!21717 (rule!9686 token!484) lt!1393437))))

(declare-fun apply!9901 (TokenValueInjection!13268 BalanceConc!25396) TokenValue!6920)

(declare-fun seqFromList!4929 (List!42586) BalanceConc!25396)

(assert (=> b!3975031 (= lt!1393444 (apply!9901 (transformation!6690 (rule!9686 token!484)) (seqFromList!4929 lt!1393448)))))

(declare-fun lt!1393435 () Unit!61112)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1433 (LexerInterface!6279 List!42588 List!42586 List!42586 List!42586 Rule!13180) Unit!61112)

(assert (=> b!3975031 (= lt!1393435 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1433 thiss!21717 rules!2999 lt!1393448 lt!1393437 suffixResult!105 (rule!9686 token!484)))))

(assert (=> b!3975031 (= lt!1393426 suffixResult!105)))

(declare-fun lt!1393446 () Unit!61112)

(assert (=> b!3975031 (= lt!1393446 (lemmaSamePrefixThenSameSuffix!1964 lt!1393448 lt!1393426 lt!1393448 suffixResult!105 lt!1393437))))

(assert (=> b!3975031 (isPrefix!3777 lt!1393448 lt!1393433)))

(declare-fun lt!1393428 () Unit!61112)

(assert (=> b!3975031 (= lt!1393428 (lemmaConcatTwoListThenFirstIsPrefix!2620 lt!1393448 lt!1393426))))

(declare-fun b!3975032 () Bool)

(declare-fun res!1609713 () Bool)

(assert (=> b!3975032 (=> (not res!1609713) (not e!2462760))))

(declare-fun rulesInvariant!5622 (LexerInterface!6279 List!42588) Bool)

(assert (=> b!3975032 (= res!1609713 (rulesInvariant!5622 thiss!21717 rules!2999))))

(declare-fun b!3975033 () Bool)

(assert (=> b!3975033 (= e!2462760 e!2462783)))

(declare-fun res!1609716 () Bool)

(assert (=> b!3975033 (=> (not res!1609716) (not e!2462783))))

(declare-fun lt!1393438 () Int)

(assert (=> b!3975033 (= res!1609716 (>= lt!1393438 lt!1393429))))

(assert (=> b!3975033 (= lt!1393429 (size!31768 lt!1393448))))

(assert (=> b!3975033 (= lt!1393438 (size!31768 prefix!494))))

(declare-fun list!15758 (BalanceConc!25396) List!42586)

(declare-fun charsOf!4506 (Token!12518) BalanceConc!25396)

(assert (=> b!3975033 (= lt!1393448 (list!15758 (charsOf!4506 token!484)))))

(declare-fun b!3975034 () Bool)

(assert (=> b!3975034 (= e!2462779 e!2462776)))

(declare-fun res!1609730 () Bool)

(assert (=> b!3975034 (=> res!1609730 e!2462776)))

(declare-fun matchR!5572 (Regex!11595 List!42586) Bool)

(assert (=> b!3975034 (= res!1609730 (not (matchR!5572 (regex!6690 (rule!9686 token!484)) lt!1393448)))))

(assert (=> b!3975034 (isPrefix!3777 lt!1393448 lt!1393451)))

(declare-fun lt!1393447 () Unit!61112)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!610 (List!42586 List!42586 List!42586) Unit!61112)

(assert (=> b!3975034 (= lt!1393447 (lemmaPrefixStaysPrefixWhenAddingToSuffix!610 lt!1393448 prefix!494 newSuffix!27))))

(declare-fun lt!1393423 () Unit!61112)

(assert (=> b!3975034 (= lt!1393423 (lemmaPrefixStaysPrefixWhenAddingToSuffix!610 lt!1393448 prefix!494 suffix!1299))))

(assert (=> b!3975035 (= e!2462765 (and tp!1212013 tp!1212012))))

(declare-fun b!3975036 () Bool)

(declare-fun tp!1212014 () Bool)

(assert (=> b!3975036 (= e!2462784 (and tp_is_empty!20161 tp!1212014))))

(assert (= (and start!374108 res!1609721) b!3975024))

(assert (= (and b!3975024 res!1609728) b!3975032))

(assert (= (and b!3975032 res!1609713) b!3975010))

(assert (= (and b!3975010 res!1609723) b!3975030))

(assert (= (and b!3975030 res!1609717) b!3975033))

(assert (= (and b!3975033 res!1609716) b!3975023))

(assert (= (and b!3975023 res!1609729) b!3975011))

(assert (= (and b!3975011 res!1609722) b!3975020))

(assert (= (and b!3975020 (not res!1609714)) b!3975018))

(assert (= (and b!3975018 (not res!1609720)) b!3975029))

(assert (= (and b!3975029 (not res!1609727)) b!3975009))

(assert (= (and b!3975009 (not res!1609719)) b!3975031))

(assert (= (and b!3975031 (not res!1609725)) b!3975034))

(assert (= (and b!3975034 (not res!1609730)) b!3975017))

(assert (= (and b!3975017 res!1609718) b!3975025))

(assert (= (and b!3975025 res!1609726) b!3975022))

(assert (= (and b!3975022 res!1609724) b!3975021))

(assert (= (and b!3975017 (not res!1609715)) b!3975016))

(assert (= (and start!374108 ((_ is Cons!42462) prefix!494)) b!3975012))

(assert (= b!3975015 b!3975014))

(assert (= b!3975028 b!3975015))

(assert (= start!374108 b!3975028))

(assert (= (and start!374108 ((_ is Cons!42462) suffixResult!105)) b!3975013))

(assert (= (and start!374108 ((_ is Cons!42462) suffix!1299)) b!3975027))

(assert (= (and start!374108 ((_ is Cons!42462) newSuffix!27)) b!3975036))

(assert (= b!3975019 b!3975035))

(assert (= b!3975026 b!3975019))

(assert (= (and start!374108 ((_ is Cons!42464) rules!2999)) b!3975026))

(assert (= (and start!374108 ((_ is Cons!42462) newSuffixResult!27)) b!3975008))

(declare-fun m!4545917 () Bool)

(assert (=> b!3975034 m!4545917))

(declare-fun m!4545919 () Bool)

(assert (=> b!3975034 m!4545919))

(declare-fun m!4545921 () Bool)

(assert (=> b!3975034 m!4545921))

(declare-fun m!4545923 () Bool)

(assert (=> b!3975034 m!4545923))

(declare-fun m!4545925 () Bool)

(assert (=> b!3975015 m!4545925))

(declare-fun m!4545927 () Bool)

(assert (=> b!3975015 m!4545927))

(declare-fun m!4545929 () Bool)

(assert (=> b!3975022 m!4545929))

(declare-fun m!4545931 () Bool)

(assert (=> b!3975011 m!4545931))

(declare-fun m!4545933 () Bool)

(assert (=> b!3975011 m!4545933))

(declare-fun m!4545935 () Bool)

(assert (=> b!3975023 m!4545935))

(declare-fun m!4545937 () Bool)

(assert (=> b!3975023 m!4545937))

(declare-fun m!4545939 () Bool)

(assert (=> b!3975019 m!4545939))

(declare-fun m!4545941 () Bool)

(assert (=> b!3975019 m!4545941))

(declare-fun m!4545943 () Bool)

(assert (=> b!3975017 m!4545943))

(declare-fun m!4545945 () Bool)

(assert (=> b!3975017 m!4545945))

(declare-fun m!4545947 () Bool)

(assert (=> b!3975017 m!4545947))

(declare-fun m!4545949 () Bool)

(assert (=> b!3975017 m!4545949))

(declare-fun m!4545951 () Bool)

(assert (=> b!3975028 m!4545951))

(declare-fun m!4545953 () Bool)

(assert (=> b!3975010 m!4545953))

(declare-fun m!4545955 () Bool)

(assert (=> b!3975010 m!4545955))

(declare-fun m!4545957 () Bool)

(assert (=> b!3975032 m!4545957))

(declare-fun m!4545959 () Bool)

(assert (=> b!3975009 m!4545959))

(declare-fun m!4545961 () Bool)

(assert (=> b!3975009 m!4545961))

(declare-fun m!4545963 () Bool)

(assert (=> b!3975009 m!4545963))

(declare-fun m!4545965 () Bool)

(assert (=> b!3975009 m!4545965))

(declare-fun m!4545967 () Bool)

(assert (=> b!3975029 m!4545967))

(declare-fun m!4545969 () Bool)

(assert (=> b!3975029 m!4545969))

(declare-fun m!4545971 () Bool)

(assert (=> b!3975029 m!4545971))

(declare-fun m!4545973 () Bool)

(assert (=> b!3975029 m!4545973))

(declare-fun m!4545975 () Bool)

(assert (=> start!374108 m!4545975))

(declare-fun m!4545977 () Bool)

(assert (=> b!3975031 m!4545977))

(declare-fun m!4545979 () Bool)

(assert (=> b!3975031 m!4545979))

(declare-fun m!4545981 () Bool)

(assert (=> b!3975031 m!4545981))

(declare-fun m!4545983 () Bool)

(assert (=> b!3975031 m!4545983))

(assert (=> b!3975031 m!4545983))

(declare-fun m!4545985 () Bool)

(assert (=> b!3975031 m!4545985))

(declare-fun m!4545987 () Bool)

(assert (=> b!3975031 m!4545987))

(declare-fun m!4545989 () Bool)

(assert (=> b!3975031 m!4545989))

(declare-fun m!4545991 () Bool)

(assert (=> b!3975016 m!4545991))

(declare-fun m!4545993 () Bool)

(assert (=> b!3975016 m!4545993))

(declare-fun m!4545995 () Bool)

(assert (=> b!3975016 m!4545995))

(declare-fun m!4545997 () Bool)

(assert (=> b!3975016 m!4545997))

(declare-fun m!4545999 () Bool)

(assert (=> b!3975024 m!4545999))

(declare-fun m!4546001 () Bool)

(assert (=> b!3975020 m!4546001))

(declare-fun m!4546003 () Bool)

(assert (=> b!3975020 m!4546003))

(declare-fun m!4546005 () Bool)

(assert (=> b!3975020 m!4546005))

(declare-fun m!4546007 () Bool)

(assert (=> b!3975020 m!4546007))

(declare-fun m!4546009 () Bool)

(assert (=> b!3975030 m!4546009))

(declare-fun m!4546011 () Bool)

(assert (=> b!3975033 m!4546011))

(declare-fun m!4546013 () Bool)

(assert (=> b!3975033 m!4546013))

(declare-fun m!4546015 () Bool)

(assert (=> b!3975033 m!4546015))

(assert (=> b!3975033 m!4546015))

(declare-fun m!4546017 () Bool)

(assert (=> b!3975033 m!4546017))

(declare-fun m!4546019 () Bool)

(assert (=> b!3975018 m!4546019))

(declare-fun m!4546021 () Bool)

(assert (=> b!3975018 m!4546021))

(declare-fun m!4546023 () Bool)

(assert (=> b!3975018 m!4546023))

(declare-fun m!4546025 () Bool)

(assert (=> b!3975018 m!4546025))

(declare-fun m!4546027 () Bool)

(assert (=> b!3975018 m!4546027))

(check-sat (not b!3975011) (not b!3975016) (not b!3975031) (not b!3975018) (not b_next!110931) (not b_next!110935) (not b!3975034) (not b!3975022) (not b!3975032) (not b!3975027) b_and!305569 (not b!3975036) (not b!3975015) tp_is_empty!20161 (not b!3975017) (not b!3975008) (not b!3975012) (not b!3975024) (not b!3975013) b_and!305567 (not b!3975033) (not start!374108) b_and!305573 (not b_next!110933) b_and!305571 (not b!3975030) (not b!3975028) (not b!3975009) (not b_next!110929) (not b!3975029) (not b!3975020) (not b!3975019) (not b!3975023) (not b!3975026) (not b!3975010))
(check-sat (not b_next!110931) b_and!305567 b_and!305573 (not b_next!110935) b_and!305569 (not b_next!110929) (not b_next!110933) b_and!305571)
(get-model)

(declare-fun b!3975116 () Bool)

(declare-fun res!1609782 () Bool)

(declare-fun e!2462836 () Bool)

(assert (=> b!3975116 (=> (not res!1609782) (not e!2462836))))

(declare-fun isEmpty!25399 (List!42586) Bool)

(declare-fun tail!6201 (List!42586) List!42586)

(assert (=> b!3975116 (= res!1609782 (isEmpty!25399 (tail!6201 lt!1393448)))))

(declare-fun b!3975117 () Bool)

(declare-fun e!2462834 () Bool)

(declare-fun lt!1393476 () Bool)

(declare-fun call!285663 () Bool)

(assert (=> b!3975117 (= e!2462834 (= lt!1393476 call!285663))))

(declare-fun b!3975118 () Bool)

(declare-fun e!2462833 () Bool)

(declare-fun head!8469 (List!42586) C!23376)

(assert (=> b!3975118 (= e!2462833 (not (= (head!8469 lt!1393448) (c!689139 (regex!6690 (rule!9686 token!484))))))))

(declare-fun b!3975119 () Bool)

(declare-fun res!1609783 () Bool)

(assert (=> b!3975119 (=> res!1609783 e!2462833)))

(assert (=> b!3975119 (= res!1609783 (not (isEmpty!25399 (tail!6201 lt!1393448))))))

(declare-fun b!3975120 () Bool)

(declare-fun e!2462831 () Bool)

(assert (=> b!3975120 (= e!2462831 (not lt!1393476))))

(declare-fun b!3975121 () Bool)

(declare-fun e!2462832 () Bool)

(declare-fun derivativeStep!3479 (Regex!11595 C!23376) Regex!11595)

(assert (=> b!3975121 (= e!2462832 (matchR!5572 (derivativeStep!3479 (regex!6690 (rule!9686 token!484)) (head!8469 lt!1393448)) (tail!6201 lt!1393448)))))

(declare-fun b!3975122 () Bool)

(declare-fun res!1609779 () Bool)

(declare-fun e!2462835 () Bool)

(assert (=> b!3975122 (=> res!1609779 e!2462835)))

(assert (=> b!3975122 (= res!1609779 e!2462836)))

(declare-fun res!1609785 () Bool)

(assert (=> b!3975122 (=> (not res!1609785) (not e!2462836))))

(assert (=> b!3975122 (= res!1609785 lt!1393476)))

(declare-fun d!1177072 () Bool)

(assert (=> d!1177072 e!2462834))

(declare-fun c!689159 () Bool)

(assert (=> d!1177072 (= c!689159 ((_ is EmptyExpr!11595) (regex!6690 (rule!9686 token!484))))))

(assert (=> d!1177072 (= lt!1393476 e!2462832)))

(declare-fun c!689158 () Bool)

(assert (=> d!1177072 (= c!689158 (isEmpty!25399 lt!1393448))))

(declare-fun validRegex!5268 (Regex!11595) Bool)

(assert (=> d!1177072 (validRegex!5268 (regex!6690 (rule!9686 token!484)))))

(assert (=> d!1177072 (= (matchR!5572 (regex!6690 (rule!9686 token!484)) lt!1393448) lt!1393476)))

(declare-fun b!3975123 () Bool)

(declare-fun res!1609784 () Bool)

(assert (=> b!3975123 (=> res!1609784 e!2462835)))

(assert (=> b!3975123 (= res!1609784 (not ((_ is ElementMatch!11595) (regex!6690 (rule!9686 token!484)))))))

(assert (=> b!3975123 (= e!2462831 e!2462835)))

(declare-fun b!3975124 () Bool)

(declare-fun nullable!4068 (Regex!11595) Bool)

(assert (=> b!3975124 (= e!2462832 (nullable!4068 (regex!6690 (rule!9686 token!484))))))

(declare-fun b!3975125 () Bool)

(declare-fun e!2462830 () Bool)

(assert (=> b!3975125 (= e!2462830 e!2462833)))

(declare-fun res!1609781 () Bool)

(assert (=> b!3975125 (=> res!1609781 e!2462833)))

(assert (=> b!3975125 (= res!1609781 call!285663)))

(declare-fun b!3975126 () Bool)

(declare-fun res!1609780 () Bool)

(assert (=> b!3975126 (=> (not res!1609780) (not e!2462836))))

(assert (=> b!3975126 (= res!1609780 (not call!285663))))

(declare-fun b!3975127 () Bool)

(assert (=> b!3975127 (= e!2462835 e!2462830)))

(declare-fun res!1609778 () Bool)

(assert (=> b!3975127 (=> (not res!1609778) (not e!2462830))))

(assert (=> b!3975127 (= res!1609778 (not lt!1393476))))

(declare-fun b!3975128 () Bool)

(assert (=> b!3975128 (= e!2462836 (= (head!8469 lt!1393448) (c!689139 (regex!6690 (rule!9686 token!484)))))))

(declare-fun bm!285658 () Bool)

(assert (=> bm!285658 (= call!285663 (isEmpty!25399 lt!1393448))))

(declare-fun b!3975129 () Bool)

(assert (=> b!3975129 (= e!2462834 e!2462831)))

(declare-fun c!689160 () Bool)

(assert (=> b!3975129 (= c!689160 ((_ is EmptyLang!11595) (regex!6690 (rule!9686 token!484))))))

(assert (= (and d!1177072 c!689158) b!3975124))

(assert (= (and d!1177072 (not c!689158)) b!3975121))

(assert (= (and d!1177072 c!689159) b!3975117))

(assert (= (and d!1177072 (not c!689159)) b!3975129))

(assert (= (and b!3975129 c!689160) b!3975120))

(assert (= (and b!3975129 (not c!689160)) b!3975123))

(assert (= (and b!3975123 (not res!1609784)) b!3975122))

(assert (= (and b!3975122 res!1609785) b!3975126))

(assert (= (and b!3975126 res!1609780) b!3975116))

(assert (= (and b!3975116 res!1609782) b!3975128))

(assert (= (and b!3975122 (not res!1609779)) b!3975127))

(assert (= (and b!3975127 res!1609778) b!3975125))

(assert (= (and b!3975125 (not res!1609781)) b!3975119))

(assert (= (and b!3975119 (not res!1609783)) b!3975118))

(assert (= (or b!3975117 b!3975125 b!3975126) bm!285658))

(declare-fun m!4546087 () Bool)

(assert (=> bm!285658 m!4546087))

(declare-fun m!4546089 () Bool)

(assert (=> b!3975116 m!4546089))

(assert (=> b!3975116 m!4546089))

(declare-fun m!4546091 () Bool)

(assert (=> b!3975116 m!4546091))

(declare-fun m!4546093 () Bool)

(assert (=> b!3975128 m!4546093))

(declare-fun m!4546095 () Bool)

(assert (=> b!3975124 m!4546095))

(assert (=> b!3975121 m!4546093))

(assert (=> b!3975121 m!4546093))

(declare-fun m!4546097 () Bool)

(assert (=> b!3975121 m!4546097))

(assert (=> b!3975121 m!4546089))

(assert (=> b!3975121 m!4546097))

(assert (=> b!3975121 m!4546089))

(declare-fun m!4546099 () Bool)

(assert (=> b!3975121 m!4546099))

(assert (=> b!3975119 m!4546089))

(assert (=> b!3975119 m!4546089))

(assert (=> b!3975119 m!4546091))

(assert (=> b!3975118 m!4546093))

(assert (=> d!1177072 m!4546087))

(declare-fun m!4546101 () Bool)

(assert (=> d!1177072 m!4546101))

(assert (=> b!3975034 d!1177072))

(declare-fun b!3975168 () Bool)

(declare-fun e!2462852 () Bool)

(assert (=> b!3975168 (= e!2462852 (>= (size!31768 lt!1393451) (size!31768 lt!1393448)))))

(declare-fun d!1177086 () Bool)

(assert (=> d!1177086 e!2462852))

(declare-fun res!1609818 () Bool)

(assert (=> d!1177086 (=> res!1609818 e!2462852)))

(declare-fun lt!1393494 () Bool)

(assert (=> d!1177086 (= res!1609818 (not lt!1393494))))

(declare-fun e!2462854 () Bool)

(assert (=> d!1177086 (= lt!1393494 e!2462854)))

(declare-fun res!1609816 () Bool)

(assert (=> d!1177086 (=> res!1609816 e!2462854)))

(assert (=> d!1177086 (= res!1609816 ((_ is Nil!42462) lt!1393448))))

(assert (=> d!1177086 (= (isPrefix!3777 lt!1393448 lt!1393451) lt!1393494)))

(declare-fun b!3975165 () Bool)

(declare-fun e!2462853 () Bool)

(assert (=> b!3975165 (= e!2462854 e!2462853)))

(declare-fun res!1609815 () Bool)

(assert (=> b!3975165 (=> (not res!1609815) (not e!2462853))))

(assert (=> b!3975165 (= res!1609815 (not ((_ is Nil!42462) lt!1393451)))))

(declare-fun b!3975167 () Bool)

(assert (=> b!3975167 (= e!2462853 (isPrefix!3777 (tail!6201 lt!1393448) (tail!6201 lt!1393451)))))

(declare-fun b!3975166 () Bool)

(declare-fun res!1609817 () Bool)

(assert (=> b!3975166 (=> (not res!1609817) (not e!2462853))))

(assert (=> b!3975166 (= res!1609817 (= (head!8469 lt!1393448) (head!8469 lt!1393451)))))

(assert (= (and d!1177086 (not res!1609816)) b!3975165))

(assert (= (and b!3975165 res!1609815) b!3975166))

(assert (= (and b!3975166 res!1609817) b!3975167))

(assert (= (and d!1177086 (not res!1609818)) b!3975168))

(declare-fun m!4546131 () Bool)

(assert (=> b!3975168 m!4546131))

(assert (=> b!3975168 m!4546011))

(assert (=> b!3975167 m!4546089))

(declare-fun m!4546141 () Bool)

(assert (=> b!3975167 m!4546141))

(assert (=> b!3975167 m!4546089))

(assert (=> b!3975167 m!4546141))

(declare-fun m!4546145 () Bool)

(assert (=> b!3975167 m!4546145))

(assert (=> b!3975166 m!4546093))

(declare-fun m!4546147 () Bool)

(assert (=> b!3975166 m!4546147))

(assert (=> b!3975034 d!1177086))

(declare-fun d!1177092 () Bool)

(assert (=> d!1177092 (isPrefix!3777 lt!1393448 (++!11092 prefix!494 newSuffix!27))))

(declare-fun lt!1393500 () Unit!61112)

(declare-fun choose!23811 (List!42586 List!42586 List!42586) Unit!61112)

(assert (=> d!1177092 (= lt!1393500 (choose!23811 lt!1393448 prefix!494 newSuffix!27))))

(assert (=> d!1177092 (isPrefix!3777 lt!1393448 prefix!494)))

(assert (=> d!1177092 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!610 lt!1393448 prefix!494 newSuffix!27) lt!1393500)))

(declare-fun bs!587731 () Bool)

(assert (= bs!587731 d!1177092))

(assert (=> bs!587731 m!4545935))

(assert (=> bs!587731 m!4545935))

(declare-fun m!4546149 () Bool)

(assert (=> bs!587731 m!4546149))

(declare-fun m!4546151 () Bool)

(assert (=> bs!587731 m!4546151))

(assert (=> bs!587731 m!4545971))

(assert (=> b!3975034 d!1177092))

(declare-fun d!1177094 () Bool)

(assert (=> d!1177094 (isPrefix!3777 lt!1393448 (++!11092 prefix!494 suffix!1299))))

(declare-fun lt!1393501 () Unit!61112)

(assert (=> d!1177094 (= lt!1393501 (choose!23811 lt!1393448 prefix!494 suffix!1299))))

(assert (=> d!1177094 (isPrefix!3777 lt!1393448 prefix!494)))

(assert (=> d!1177094 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!610 lt!1393448 prefix!494 suffix!1299) lt!1393501)))

(declare-fun bs!587732 () Bool)

(assert (= bs!587732 d!1177094))

(assert (=> bs!587732 m!4545933))

(assert (=> bs!587732 m!4545933))

(declare-fun m!4546153 () Bool)

(assert (=> bs!587732 m!4546153))

(declare-fun m!4546155 () Bool)

(assert (=> bs!587732 m!4546155))

(assert (=> bs!587732 m!4545971))

(assert (=> b!3975034 d!1177094))

(declare-fun d!1177096 () Bool)

(declare-fun res!1609853 () Bool)

(declare-fun e!2462883 () Bool)

(assert (=> d!1177096 (=> (not res!1609853) (not e!2462883))))

(assert (=> d!1177096 (= res!1609853 (not (isEmpty!25399 (originalCharacters!7290 token!484))))))

(assert (=> d!1177096 (= (inv!56735 token!484) e!2462883)))

(declare-fun b!3975223 () Bool)

(declare-fun res!1609854 () Bool)

(assert (=> b!3975223 (=> (not res!1609854) (not e!2462883))))

(declare-fun dynLambda!18087 (Int TokenValue!6920) BalanceConc!25396)

(assert (=> b!3975223 (= res!1609854 (= (originalCharacters!7290 token!484) (list!15758 (dynLambda!18087 (toChars!9037 (transformation!6690 (rule!9686 token!484))) (value!211299 token!484)))))))

(declare-fun b!3975224 () Bool)

(assert (=> b!3975224 (= e!2462883 (= (size!31769 token!484) (size!31768 (originalCharacters!7290 token!484))))))

(assert (= (and d!1177096 res!1609853) b!3975223))

(assert (= (and b!3975223 res!1609854) b!3975224))

(declare-fun b_lambda!116159 () Bool)

(assert (=> (not b_lambda!116159) (not b!3975223)))

(declare-fun tb!239725 () Bool)

(declare-fun t!331053 () Bool)

(assert (=> (and b!3975035 (= (toChars!9037 (transformation!6690 (h!47884 rules!2999))) (toChars!9037 (transformation!6690 (rule!9686 token!484)))) t!331053) tb!239725))

(declare-fun b!3975233 () Bool)

(declare-fun e!2462889 () Bool)

(declare-fun tp!1212021 () Bool)

(declare-fun inv!56738 (Conc!12901) Bool)

(assert (=> b!3975233 (= e!2462889 (and (inv!56738 (c!689138 (dynLambda!18087 (toChars!9037 (transformation!6690 (rule!9686 token!484))) (value!211299 token!484)))) tp!1212021))))

(declare-fun result!290346 () Bool)

(declare-fun inv!56739 (BalanceConc!25396) Bool)

(assert (=> tb!239725 (= result!290346 (and (inv!56739 (dynLambda!18087 (toChars!9037 (transformation!6690 (rule!9686 token!484))) (value!211299 token!484))) e!2462889))))

(assert (= tb!239725 b!3975233))

(declare-fun m!4546187 () Bool)

(assert (=> b!3975233 m!4546187))

(declare-fun m!4546193 () Bool)

(assert (=> tb!239725 m!4546193))

(assert (=> b!3975223 t!331053))

(declare-fun b_and!305575 () Bool)

(assert (= b_and!305569 (and (=> t!331053 result!290346) b_and!305575)))

(declare-fun t!331055 () Bool)

(declare-fun tb!239727 () Bool)

(assert (=> (and b!3975014 (= (toChars!9037 (transformation!6690 (rule!9686 token!484))) (toChars!9037 (transformation!6690 (rule!9686 token!484)))) t!331055) tb!239727))

(declare-fun result!290350 () Bool)

(assert (= result!290350 result!290346))

(assert (=> b!3975223 t!331055))

(declare-fun b_and!305577 () Bool)

(assert (= b_and!305573 (and (=> t!331055 result!290350) b_and!305577)))

(declare-fun m!4546199 () Bool)

(assert (=> d!1177096 m!4546199))

(declare-fun m!4546203 () Bool)

(assert (=> b!3975223 m!4546203))

(assert (=> b!3975223 m!4546203))

(declare-fun m!4546205 () Bool)

(assert (=> b!3975223 m!4546205))

(assert (=> b!3975224 m!4545929))

(assert (=> start!374108 d!1177096))

(declare-fun d!1177112 () Bool)

(assert (=> d!1177112 (= (isEmpty!25396 rules!2999) ((_ is Nil!42464) rules!2999))))

(assert (=> b!3975024 d!1177112))

(declare-fun d!1177114 () Bool)

(declare-fun lt!1393518 () Int)

(assert (=> d!1177114 (>= lt!1393518 0)))

(declare-fun e!2462903 () Int)

(assert (=> d!1177114 (= lt!1393518 e!2462903)))

(declare-fun c!689177 () Bool)

(assert (=> d!1177114 (= c!689177 ((_ is Nil!42462) lt!1393448))))

(assert (=> d!1177114 (= (size!31768 lt!1393448) lt!1393518)))

(declare-fun b!3975253 () Bool)

(assert (=> b!3975253 (= e!2462903 0)))

(declare-fun b!3975254 () Bool)

(assert (=> b!3975254 (= e!2462903 (+ 1 (size!31768 (t!331049 lt!1393448))))))

(assert (= (and d!1177114 c!689177) b!3975253))

(assert (= (and d!1177114 (not c!689177)) b!3975254))

(declare-fun m!4546225 () Bool)

(assert (=> b!3975254 m!4546225))

(assert (=> b!3975033 d!1177114))

(declare-fun d!1177124 () Bool)

(declare-fun lt!1393519 () Int)

(assert (=> d!1177124 (>= lt!1393519 0)))

(declare-fun e!2462904 () Int)

(assert (=> d!1177124 (= lt!1393519 e!2462904)))

(declare-fun c!689178 () Bool)

(assert (=> d!1177124 (= c!689178 ((_ is Nil!42462) prefix!494))))

(assert (=> d!1177124 (= (size!31768 prefix!494) lt!1393519)))

(declare-fun b!3975255 () Bool)

(assert (=> b!3975255 (= e!2462904 0)))

(declare-fun b!3975256 () Bool)

(assert (=> b!3975256 (= e!2462904 (+ 1 (size!31768 (t!331049 prefix!494))))))

(assert (= (and d!1177124 c!689178) b!3975255))

(assert (= (and d!1177124 (not c!689178)) b!3975256))

(declare-fun m!4546227 () Bool)

(assert (=> b!3975256 m!4546227))

(assert (=> b!3975033 d!1177124))

(declare-fun d!1177126 () Bool)

(declare-fun list!15760 (Conc!12901) List!42586)

(assert (=> d!1177126 (= (list!15758 (charsOf!4506 token!484)) (list!15760 (c!689138 (charsOf!4506 token!484))))))

(declare-fun bs!587737 () Bool)

(assert (= bs!587737 d!1177126))

(declare-fun m!4546229 () Bool)

(assert (=> bs!587737 m!4546229))

(assert (=> b!3975033 d!1177126))

(declare-fun d!1177130 () Bool)

(declare-fun lt!1393527 () BalanceConc!25396)

(assert (=> d!1177130 (= (list!15758 lt!1393527) (originalCharacters!7290 token!484))))

(assert (=> d!1177130 (= lt!1393527 (dynLambda!18087 (toChars!9037 (transformation!6690 (rule!9686 token!484))) (value!211299 token!484)))))

(assert (=> d!1177130 (= (charsOf!4506 token!484) lt!1393527)))

(declare-fun b_lambda!116161 () Bool)

(assert (=> (not b_lambda!116161) (not d!1177130)))

(assert (=> d!1177130 t!331053))

(declare-fun b_and!305579 () Bool)

(assert (= b_and!305575 (and (=> t!331053 result!290346) b_and!305579)))

(assert (=> d!1177130 t!331055))

(declare-fun b_and!305581 () Bool)

(assert (= b_and!305577 (and (=> t!331055 result!290350) b_and!305581)))

(declare-fun m!4546245 () Bool)

(assert (=> d!1177130 m!4546245))

(assert (=> d!1177130 m!4546203))

(assert (=> b!3975033 d!1177130))

(declare-fun d!1177142 () Bool)

(declare-fun lt!1393528 () Int)

(assert (=> d!1177142 (>= lt!1393528 0)))

(declare-fun e!2462913 () Int)

(assert (=> d!1177142 (= lt!1393528 e!2462913)))

(declare-fun c!689181 () Bool)

(assert (=> d!1177142 (= c!689181 ((_ is Nil!42462) (originalCharacters!7290 token!484)))))

(assert (=> d!1177142 (= (size!31768 (originalCharacters!7290 token!484)) lt!1393528)))

(declare-fun b!3975270 () Bool)

(assert (=> b!3975270 (= e!2462913 0)))

(declare-fun b!3975271 () Bool)

(assert (=> b!3975271 (= e!2462913 (+ 1 (size!31768 (t!331049 (originalCharacters!7290 token!484)))))))

(assert (= (and d!1177142 c!689181) b!3975270))

(assert (= (and d!1177142 (not c!689181)) b!3975271))

(declare-fun m!4546247 () Bool)

(assert (=> b!3975271 m!4546247))

(assert (=> b!3975022 d!1177142))

(declare-fun b!3975305 () Bool)

(declare-fun e!2462932 () List!42586)

(assert (=> b!3975305 (= e!2462932 newSuffix!27)))

(declare-fun b!3975307 () Bool)

(declare-fun res!1609896 () Bool)

(declare-fun e!2462933 () Bool)

(assert (=> b!3975307 (=> (not res!1609896) (not e!2462933))))

(declare-fun lt!1393547 () List!42586)

(assert (=> b!3975307 (= res!1609896 (= (size!31768 lt!1393547) (+ (size!31768 prefix!494) (size!31768 newSuffix!27))))))

(declare-fun b!3975306 () Bool)

(assert (=> b!3975306 (= e!2462932 (Cons!42462 (h!47882 prefix!494) (++!11092 (t!331049 prefix!494) newSuffix!27)))))

(declare-fun b!3975308 () Bool)

(assert (=> b!3975308 (= e!2462933 (or (not (= newSuffix!27 Nil!42462)) (= lt!1393547 prefix!494)))))

(declare-fun d!1177144 () Bool)

(assert (=> d!1177144 e!2462933))

(declare-fun res!1609895 () Bool)

(assert (=> d!1177144 (=> (not res!1609895) (not e!2462933))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6443 (List!42586) (InoxSet C!23376))

(assert (=> d!1177144 (= res!1609895 (= (content!6443 lt!1393547) ((_ map or) (content!6443 prefix!494) (content!6443 newSuffix!27))))))

(assert (=> d!1177144 (= lt!1393547 e!2462932)))

(declare-fun c!689189 () Bool)

(assert (=> d!1177144 (= c!689189 ((_ is Nil!42462) prefix!494))))

(assert (=> d!1177144 (= (++!11092 prefix!494 newSuffix!27) lt!1393547)))

(assert (= (and d!1177144 c!689189) b!3975305))

(assert (= (and d!1177144 (not c!689189)) b!3975306))

(assert (= (and d!1177144 res!1609895) b!3975307))

(assert (= (and b!3975307 res!1609896) b!3975308))

(declare-fun m!4546307 () Bool)

(assert (=> b!3975307 m!4546307))

(assert (=> b!3975307 m!4546013))

(assert (=> b!3975307 m!4545955))

(declare-fun m!4546309 () Bool)

(assert (=> b!3975306 m!4546309))

(declare-fun m!4546311 () Bool)

(assert (=> d!1177144 m!4546311))

(declare-fun m!4546313 () Bool)

(assert (=> d!1177144 m!4546313))

(declare-fun m!4546315 () Bool)

(assert (=> d!1177144 m!4546315))

(assert (=> b!3975023 d!1177144))

(declare-fun b!3975313 () Bool)

(declare-fun e!2462936 () List!42586)

(assert (=> b!3975313 (= e!2462936 newSuffixResult!27)))

(declare-fun b!3975315 () Bool)

(declare-fun res!1609902 () Bool)

(declare-fun e!2462937 () Bool)

(assert (=> b!3975315 (=> (not res!1609902) (not e!2462937))))

(declare-fun lt!1393548 () List!42586)

(assert (=> b!3975315 (= res!1609902 (= (size!31768 lt!1393548) (+ (size!31768 lt!1393448) (size!31768 newSuffixResult!27))))))

(declare-fun b!3975314 () Bool)

(assert (=> b!3975314 (= e!2462936 (Cons!42462 (h!47882 lt!1393448) (++!11092 (t!331049 lt!1393448) newSuffixResult!27)))))

(declare-fun b!3975316 () Bool)

(assert (=> b!3975316 (= e!2462937 (or (not (= newSuffixResult!27 Nil!42462)) (= lt!1393548 lt!1393448)))))

(declare-fun d!1177166 () Bool)

(assert (=> d!1177166 e!2462937))

(declare-fun res!1609901 () Bool)

(assert (=> d!1177166 (=> (not res!1609901) (not e!2462937))))

(assert (=> d!1177166 (= res!1609901 (= (content!6443 lt!1393548) ((_ map or) (content!6443 lt!1393448) (content!6443 newSuffixResult!27))))))

(assert (=> d!1177166 (= lt!1393548 e!2462936)))

(declare-fun c!689190 () Bool)

(assert (=> d!1177166 (= c!689190 ((_ is Nil!42462) lt!1393448))))

(assert (=> d!1177166 (= (++!11092 lt!1393448 newSuffixResult!27) lt!1393548)))

(assert (= (and d!1177166 c!689190) b!3975313))

(assert (= (and d!1177166 (not c!689190)) b!3975314))

(assert (= (and d!1177166 res!1609901) b!3975315))

(assert (= (and b!3975315 res!1609902) b!3975316))

(declare-fun m!4546319 () Bool)

(assert (=> b!3975315 m!4546319))

(assert (=> b!3975315 m!4546011))

(declare-fun m!4546323 () Bool)

(assert (=> b!3975315 m!4546323))

(declare-fun m!4546325 () Bool)

(assert (=> b!3975314 m!4546325))

(declare-fun m!4546327 () Bool)

(assert (=> d!1177166 m!4546327))

(declare-fun m!4546329 () Bool)

(assert (=> d!1177166 m!4546329))

(declare-fun m!4546331 () Bool)

(assert (=> d!1177166 m!4546331))

(assert (=> b!3975023 d!1177166))

(declare-fun d!1177172 () Bool)

(declare-fun lt!1393549 () Int)

(assert (=> d!1177172 (>= lt!1393549 0)))

(declare-fun e!2462940 () Int)

(assert (=> d!1177172 (= lt!1393549 e!2462940)))

(declare-fun c!689191 () Bool)

(assert (=> d!1177172 (= c!689191 ((_ is Nil!42462) lt!1393437))))

(assert (=> d!1177172 (= (size!31768 lt!1393437) lt!1393549)))

(declare-fun b!3975320 () Bool)

(assert (=> b!3975320 (= e!2462940 0)))

(declare-fun b!3975321 () Bool)

(assert (=> b!3975321 (= e!2462940 (+ 1 (size!31768 (t!331049 lt!1393437))))))

(assert (= (and d!1177172 c!689191) b!3975320))

(assert (= (and d!1177172 (not c!689191)) b!3975321))

(declare-fun m!4546337 () Bool)

(assert (=> b!3975321 m!4546337))

(assert (=> b!3975016 d!1177172))

(declare-fun d!1177176 () Bool)

(assert (=> d!1177176 (= suffixResult!105 lt!1393436)))

(declare-fun lt!1393555 () Unit!61112)

(declare-fun choose!23814 (List!42586 List!42586 List!42586 List!42586 List!42586) Unit!61112)

(assert (=> d!1177176 (= lt!1393555 (choose!23814 lt!1393448 suffixResult!105 lt!1393448 lt!1393436 lt!1393437))))

(assert (=> d!1177176 (isPrefix!3777 lt!1393448 lt!1393437)))

(assert (=> d!1177176 (= (lemmaSamePrefixThenSameSuffix!1964 lt!1393448 suffixResult!105 lt!1393448 lt!1393436 lt!1393437) lt!1393555)))

(declare-fun bs!587743 () Bool)

(assert (= bs!587743 d!1177176))

(declare-fun m!4546373 () Bool)

(assert (=> bs!587743 m!4546373))

(assert (=> bs!587743 m!4546027))

(assert (=> b!3975016 d!1177176))

(declare-fun b!3975352 () Bool)

(declare-fun e!2462957 () Bool)

(assert (=> b!3975352 (= e!2462957 (>= (size!31768 lt!1393449) (size!31768 lt!1393448)))))

(declare-fun d!1177186 () Bool)

(assert (=> d!1177186 e!2462957))

(declare-fun res!1609920 () Bool)

(assert (=> d!1177186 (=> res!1609920 e!2462957)))

(declare-fun lt!1393556 () Bool)

(assert (=> d!1177186 (= res!1609920 (not lt!1393556))))

(declare-fun e!2462959 () Bool)

(assert (=> d!1177186 (= lt!1393556 e!2462959)))

(declare-fun res!1609918 () Bool)

(assert (=> d!1177186 (=> res!1609918 e!2462959)))

(assert (=> d!1177186 (= res!1609918 ((_ is Nil!42462) lt!1393448))))

(assert (=> d!1177186 (= (isPrefix!3777 lt!1393448 lt!1393449) lt!1393556)))

(declare-fun b!3975349 () Bool)

(declare-fun e!2462958 () Bool)

(assert (=> b!3975349 (= e!2462959 e!2462958)))

(declare-fun res!1609917 () Bool)

(assert (=> b!3975349 (=> (not res!1609917) (not e!2462958))))

(assert (=> b!3975349 (= res!1609917 (not ((_ is Nil!42462) lt!1393449)))))

(declare-fun b!3975351 () Bool)

(assert (=> b!3975351 (= e!2462958 (isPrefix!3777 (tail!6201 lt!1393448) (tail!6201 lt!1393449)))))

(declare-fun b!3975350 () Bool)

(declare-fun res!1609919 () Bool)

(assert (=> b!3975350 (=> (not res!1609919) (not e!2462958))))

(assert (=> b!3975350 (= res!1609919 (= (head!8469 lt!1393448) (head!8469 lt!1393449)))))

(assert (= (and d!1177186 (not res!1609918)) b!3975349))

(assert (= (and b!3975349 res!1609917) b!3975350))

(assert (= (and b!3975350 res!1609919) b!3975351))

(assert (= (and d!1177186 (not res!1609920)) b!3975352))

(declare-fun m!4546375 () Bool)

(assert (=> b!3975352 m!4546375))

(assert (=> b!3975352 m!4546011))

(assert (=> b!3975351 m!4546089))

(declare-fun m!4546377 () Bool)

(assert (=> b!3975351 m!4546377))

(assert (=> b!3975351 m!4546089))

(assert (=> b!3975351 m!4546377))

(declare-fun m!4546381 () Bool)

(assert (=> b!3975351 m!4546381))

(assert (=> b!3975350 m!4546093))

(declare-fun m!4546383 () Bool)

(assert (=> b!3975350 m!4546383))

(assert (=> b!3975016 d!1177186))

(declare-fun d!1177188 () Bool)

(assert (=> d!1177188 (isPrefix!3777 lt!1393448 (++!11092 lt!1393448 lt!1393436))))

(declare-fun lt!1393559 () Unit!61112)

(declare-fun choose!23815 (List!42586 List!42586) Unit!61112)

(assert (=> d!1177188 (= lt!1393559 (choose!23815 lt!1393448 lt!1393436))))

(assert (=> d!1177188 (= (lemmaConcatTwoListThenFirstIsPrefix!2620 lt!1393448 lt!1393436) lt!1393559)))

(declare-fun bs!587744 () Bool)

(assert (= bs!587744 d!1177188))

(assert (=> bs!587744 m!4545943))

(assert (=> bs!587744 m!4545943))

(declare-fun m!4546387 () Bool)

(assert (=> bs!587744 m!4546387))

(declare-fun m!4546389 () Bool)

(assert (=> bs!587744 m!4546389))

(assert (=> b!3975016 d!1177188))

(declare-fun d!1177192 () Bool)

(assert (=> d!1177192 (= (inv!56731 (tag!7550 (rule!9686 token!484))) (= (mod (str.len (value!211298 (tag!7550 (rule!9686 token!484)))) 2) 0))))

(assert (=> b!3975015 d!1177192))

(declare-fun d!1177194 () Bool)

(declare-fun res!1609923 () Bool)

(declare-fun e!2462965 () Bool)

(assert (=> d!1177194 (=> (not res!1609923) (not e!2462965))))

(declare-fun semiInverseModEq!2875 (Int Int) Bool)

(assert (=> d!1177194 (= res!1609923 (semiInverseModEq!2875 (toChars!9037 (transformation!6690 (rule!9686 token!484))) (toValue!9178 (transformation!6690 (rule!9686 token!484)))))))

(assert (=> d!1177194 (= (inv!56734 (transformation!6690 (rule!9686 token!484))) e!2462965)))

(declare-fun b!3975357 () Bool)

(declare-fun equivClasses!2774 (Int Int) Bool)

(assert (=> b!3975357 (= e!2462965 (equivClasses!2774 (toChars!9037 (transformation!6690 (rule!9686 token!484))) (toValue!9178 (transformation!6690 (rule!9686 token!484)))))))

(assert (= (and d!1177194 res!1609923) b!3975357))

(declare-fun m!4546391 () Bool)

(assert (=> d!1177194 m!4546391))

(declare-fun m!4546393 () Bool)

(assert (=> b!3975357 m!4546393))

(assert (=> b!3975015 d!1177194))

(declare-fun b!3975358 () Bool)

(declare-fun e!2462966 () List!42586)

(assert (=> b!3975358 (= e!2462966 lt!1393424)))

(declare-fun b!3975360 () Bool)

(declare-fun res!1609925 () Bool)

(declare-fun e!2462967 () Bool)

(assert (=> b!3975360 (=> (not res!1609925) (not e!2462967))))

(declare-fun lt!1393560 () List!42586)

(assert (=> b!3975360 (= res!1609925 (= (size!31768 lt!1393560) (+ (size!31768 lt!1393448) (size!31768 lt!1393424))))))

(declare-fun b!3975359 () Bool)

(assert (=> b!3975359 (= e!2462966 (Cons!42462 (h!47882 lt!1393448) (++!11092 (t!331049 lt!1393448) lt!1393424)))))

(declare-fun b!3975361 () Bool)

(assert (=> b!3975361 (= e!2462967 (or (not (= lt!1393424 Nil!42462)) (= lt!1393560 lt!1393448)))))

(declare-fun d!1177196 () Bool)

(assert (=> d!1177196 e!2462967))

(declare-fun res!1609924 () Bool)

(assert (=> d!1177196 (=> (not res!1609924) (not e!2462967))))

(assert (=> d!1177196 (= res!1609924 (= (content!6443 lt!1393560) ((_ map or) (content!6443 lt!1393448) (content!6443 lt!1393424))))))

(assert (=> d!1177196 (= lt!1393560 e!2462966)))

(declare-fun c!689200 () Bool)

(assert (=> d!1177196 (= c!689200 ((_ is Nil!42462) lt!1393448))))

(assert (=> d!1177196 (= (++!11092 lt!1393448 lt!1393424) lt!1393560)))

(assert (= (and d!1177196 c!689200) b!3975358))

(assert (= (and d!1177196 (not c!689200)) b!3975359))

(assert (= (and d!1177196 res!1609924) b!3975360))

(assert (= (and b!3975360 res!1609925) b!3975361))

(declare-fun m!4546395 () Bool)

(assert (=> b!3975360 m!4546395))

(assert (=> b!3975360 m!4546011))

(declare-fun m!4546397 () Bool)

(assert (=> b!3975360 m!4546397))

(declare-fun m!4546399 () Bool)

(assert (=> b!3975359 m!4546399))

(declare-fun m!4546401 () Bool)

(assert (=> d!1177196 m!4546401))

(assert (=> d!1177196 m!4546329))

(declare-fun m!4546403 () Bool)

(assert (=> d!1177196 m!4546403))

(assert (=> b!3975029 d!1177196))

(declare-fun d!1177198 () Bool)

(declare-fun lt!1393563 () List!42586)

(assert (=> d!1177198 (= (++!11092 lt!1393448 lt!1393563) prefix!494)))

(declare-fun e!2462970 () List!42586)

(assert (=> d!1177198 (= lt!1393563 e!2462970)))

(declare-fun c!689203 () Bool)

(assert (=> d!1177198 (= c!689203 ((_ is Cons!42462) lt!1393448))))

(assert (=> d!1177198 (>= (size!31768 prefix!494) (size!31768 lt!1393448))))

(assert (=> d!1177198 (= (getSuffix!2208 prefix!494 lt!1393448) lt!1393563)))

(declare-fun b!3975366 () Bool)

(assert (=> b!3975366 (= e!2462970 (getSuffix!2208 (tail!6201 prefix!494) (t!331049 lt!1393448)))))

(declare-fun b!3975367 () Bool)

(assert (=> b!3975367 (= e!2462970 prefix!494)))

(assert (= (and d!1177198 c!689203) b!3975366))

(assert (= (and d!1177198 (not c!689203)) b!3975367))

(declare-fun m!4546405 () Bool)

(assert (=> d!1177198 m!4546405))

(assert (=> d!1177198 m!4546013))

(assert (=> d!1177198 m!4546011))

(declare-fun m!4546407 () Bool)

(assert (=> b!3975366 m!4546407))

(assert (=> b!3975366 m!4546407))

(declare-fun m!4546409 () Bool)

(assert (=> b!3975366 m!4546409))

(assert (=> b!3975029 d!1177198))

(declare-fun b!3975371 () Bool)

(declare-fun e!2462971 () Bool)

(assert (=> b!3975371 (= e!2462971 (>= (size!31768 prefix!494) (size!31768 lt!1393448)))))

(declare-fun d!1177200 () Bool)

(assert (=> d!1177200 e!2462971))

(declare-fun res!1609929 () Bool)

(assert (=> d!1177200 (=> res!1609929 e!2462971)))

(declare-fun lt!1393564 () Bool)

(assert (=> d!1177200 (= res!1609929 (not lt!1393564))))

(declare-fun e!2462973 () Bool)

(assert (=> d!1177200 (= lt!1393564 e!2462973)))

(declare-fun res!1609927 () Bool)

(assert (=> d!1177200 (=> res!1609927 e!2462973)))

(assert (=> d!1177200 (= res!1609927 ((_ is Nil!42462) lt!1393448))))

(assert (=> d!1177200 (= (isPrefix!3777 lt!1393448 prefix!494) lt!1393564)))

(declare-fun b!3975368 () Bool)

(declare-fun e!2462972 () Bool)

(assert (=> b!3975368 (= e!2462973 e!2462972)))

(declare-fun res!1609926 () Bool)

(assert (=> b!3975368 (=> (not res!1609926) (not e!2462972))))

(assert (=> b!3975368 (= res!1609926 (not ((_ is Nil!42462) prefix!494)))))

(declare-fun b!3975370 () Bool)

(assert (=> b!3975370 (= e!2462972 (isPrefix!3777 (tail!6201 lt!1393448) (tail!6201 prefix!494)))))

(declare-fun b!3975369 () Bool)

(declare-fun res!1609928 () Bool)

(assert (=> b!3975369 (=> (not res!1609928) (not e!2462972))))

(assert (=> b!3975369 (= res!1609928 (= (head!8469 lt!1393448) (head!8469 prefix!494)))))

(assert (= (and d!1177200 (not res!1609927)) b!3975368))

(assert (= (and b!3975368 res!1609926) b!3975369))

(assert (= (and b!3975369 res!1609928) b!3975370))

(assert (= (and d!1177200 (not res!1609929)) b!3975371))

(assert (=> b!3975371 m!4546013))

(assert (=> b!3975371 m!4546011))

(assert (=> b!3975370 m!4546089))

(assert (=> b!3975370 m!4546407))

(assert (=> b!3975370 m!4546089))

(assert (=> b!3975370 m!4546407))

(declare-fun m!4546411 () Bool)

(assert (=> b!3975370 m!4546411))

(assert (=> b!3975369 m!4546093))

(declare-fun m!4546413 () Bool)

(assert (=> b!3975369 m!4546413))

(assert (=> b!3975029 d!1177200))

(declare-fun d!1177202 () Bool)

(assert (=> d!1177202 (isPrefix!3777 lt!1393448 prefix!494)))

(declare-fun lt!1393567 () Unit!61112)

(declare-fun choose!23816 (List!42586 List!42586 List!42586) Unit!61112)

(assert (=> d!1177202 (= lt!1393567 (choose!23816 prefix!494 lt!1393448 lt!1393437))))

(assert (=> d!1177202 (isPrefix!3777 prefix!494 lt!1393437)))

(assert (=> d!1177202 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!355 prefix!494 lt!1393448 lt!1393437) lt!1393567)))

(declare-fun bs!587745 () Bool)

(assert (= bs!587745 d!1177202))

(assert (=> bs!587745 m!4545971))

(declare-fun m!4546415 () Bool)

(assert (=> bs!587745 m!4546415))

(assert (=> bs!587745 m!4546019))

(assert (=> b!3975029 d!1177202))

(declare-fun b!3975375 () Bool)

(declare-fun e!2462974 () Bool)

(assert (=> b!3975375 (= e!2462974 (>= (size!31768 lt!1393437) (size!31768 lt!1393448)))))

(declare-fun d!1177204 () Bool)

(assert (=> d!1177204 e!2462974))

(declare-fun res!1609933 () Bool)

(assert (=> d!1177204 (=> res!1609933 e!2462974)))

(declare-fun lt!1393568 () Bool)

(assert (=> d!1177204 (= res!1609933 (not lt!1393568))))

(declare-fun e!2462976 () Bool)

(assert (=> d!1177204 (= lt!1393568 e!2462976)))

(declare-fun res!1609931 () Bool)

(assert (=> d!1177204 (=> res!1609931 e!2462976)))

(assert (=> d!1177204 (= res!1609931 ((_ is Nil!42462) lt!1393448))))

(assert (=> d!1177204 (= (isPrefix!3777 lt!1393448 lt!1393437) lt!1393568)))

(declare-fun b!3975372 () Bool)

(declare-fun e!2462975 () Bool)

(assert (=> b!3975372 (= e!2462976 e!2462975)))

(declare-fun res!1609930 () Bool)

(assert (=> b!3975372 (=> (not res!1609930) (not e!2462975))))

(assert (=> b!3975372 (= res!1609930 (not ((_ is Nil!42462) lt!1393437)))))

(declare-fun b!3975374 () Bool)

(assert (=> b!3975374 (= e!2462975 (isPrefix!3777 (tail!6201 lt!1393448) (tail!6201 lt!1393437)))))

(declare-fun b!3975373 () Bool)

(declare-fun res!1609932 () Bool)

(assert (=> b!3975373 (=> (not res!1609932) (not e!2462975))))

(assert (=> b!3975373 (= res!1609932 (= (head!8469 lt!1393448) (head!8469 lt!1393437)))))

(assert (= (and d!1177204 (not res!1609931)) b!3975372))

(assert (= (and b!3975372 res!1609930) b!3975373))

(assert (= (and b!3975373 res!1609932) b!3975374))

(assert (= (and d!1177204 (not res!1609933)) b!3975375))

(assert (=> b!3975375 m!4545991))

(assert (=> b!3975375 m!4546011))

(assert (=> b!3975374 m!4546089))

(declare-fun m!4546417 () Bool)

(assert (=> b!3975374 m!4546417))

(assert (=> b!3975374 m!4546089))

(assert (=> b!3975374 m!4546417))

(declare-fun m!4546419 () Bool)

(assert (=> b!3975374 m!4546419))

(assert (=> b!3975373 m!4546093))

(declare-fun m!4546421 () Bool)

(assert (=> b!3975373 m!4546421))

(assert (=> b!3975018 d!1177204))

(declare-fun d!1177206 () Bool)

(assert (=> d!1177206 (isPrefix!3777 lt!1393448 (++!11092 lt!1393448 suffixResult!105))))

(declare-fun lt!1393569 () Unit!61112)

(assert (=> d!1177206 (= lt!1393569 (choose!23815 lt!1393448 suffixResult!105))))

(assert (=> d!1177206 (= (lemmaConcatTwoListThenFirstIsPrefix!2620 lt!1393448 suffixResult!105) lt!1393569)))

(declare-fun bs!587746 () Bool)

(assert (= bs!587746 d!1177206))

(assert (=> bs!587746 m!4546001))

(assert (=> bs!587746 m!4546001))

(declare-fun m!4546423 () Bool)

(assert (=> bs!587746 m!4546423))

(declare-fun m!4546425 () Bool)

(assert (=> bs!587746 m!4546425))

(assert (=> b!3975018 d!1177206))

(declare-fun b!3975379 () Bool)

(declare-fun e!2462977 () Bool)

(assert (=> b!3975379 (= e!2462977 (>= (size!31768 lt!1393437) (size!31768 prefix!494)))))

(declare-fun d!1177208 () Bool)

(assert (=> d!1177208 e!2462977))

(declare-fun res!1609937 () Bool)

(assert (=> d!1177208 (=> res!1609937 e!2462977)))

(declare-fun lt!1393570 () Bool)

(assert (=> d!1177208 (= res!1609937 (not lt!1393570))))

(declare-fun e!2462979 () Bool)

(assert (=> d!1177208 (= lt!1393570 e!2462979)))

(declare-fun res!1609935 () Bool)

(assert (=> d!1177208 (=> res!1609935 e!2462979)))

(assert (=> d!1177208 (= res!1609935 ((_ is Nil!42462) prefix!494))))

(assert (=> d!1177208 (= (isPrefix!3777 prefix!494 lt!1393437) lt!1393570)))

(declare-fun b!3975376 () Bool)

(declare-fun e!2462978 () Bool)

(assert (=> b!3975376 (= e!2462979 e!2462978)))

(declare-fun res!1609934 () Bool)

(assert (=> b!3975376 (=> (not res!1609934) (not e!2462978))))

(assert (=> b!3975376 (= res!1609934 (not ((_ is Nil!42462) lt!1393437)))))

(declare-fun b!3975378 () Bool)

(assert (=> b!3975378 (= e!2462978 (isPrefix!3777 (tail!6201 prefix!494) (tail!6201 lt!1393437)))))

(declare-fun b!3975377 () Bool)

(declare-fun res!1609936 () Bool)

(assert (=> b!3975377 (=> (not res!1609936) (not e!2462978))))

(assert (=> b!3975377 (= res!1609936 (= (head!8469 prefix!494) (head!8469 lt!1393437)))))

(assert (= (and d!1177208 (not res!1609935)) b!3975376))

(assert (= (and b!3975376 res!1609934) b!3975377))

(assert (= (and b!3975377 res!1609936) b!3975378))

(assert (= (and d!1177208 (not res!1609937)) b!3975379))

(assert (=> b!3975379 m!4545991))

(assert (=> b!3975379 m!4546013))

(assert (=> b!3975378 m!4546407))

(assert (=> b!3975378 m!4546417))

(assert (=> b!3975378 m!4546407))

(assert (=> b!3975378 m!4546417))

(declare-fun m!4546427 () Bool)

(assert (=> b!3975378 m!4546427))

(assert (=> b!3975377 m!4546413))

(assert (=> b!3975377 m!4546421))

(assert (=> b!3975018 d!1177208))

(declare-fun b!3975383 () Bool)

(declare-fun e!2462980 () Bool)

(assert (=> b!3975383 (= e!2462980 (>= (size!31768 lt!1393439) (size!31768 lt!1393448)))))

(declare-fun d!1177210 () Bool)

(assert (=> d!1177210 e!2462980))

(declare-fun res!1609941 () Bool)

(assert (=> d!1177210 (=> res!1609941 e!2462980)))

(declare-fun lt!1393571 () Bool)

(assert (=> d!1177210 (= res!1609941 (not lt!1393571))))

(declare-fun e!2462982 () Bool)

(assert (=> d!1177210 (= lt!1393571 e!2462982)))

(declare-fun res!1609939 () Bool)

(assert (=> d!1177210 (=> res!1609939 e!2462982)))

(assert (=> d!1177210 (= res!1609939 ((_ is Nil!42462) lt!1393448))))

(assert (=> d!1177210 (= (isPrefix!3777 lt!1393448 lt!1393439) lt!1393571)))

(declare-fun b!3975380 () Bool)

(declare-fun e!2462981 () Bool)

(assert (=> b!3975380 (= e!2462982 e!2462981)))

(declare-fun res!1609938 () Bool)

(assert (=> b!3975380 (=> (not res!1609938) (not e!2462981))))

(assert (=> b!3975380 (= res!1609938 (not ((_ is Nil!42462) lt!1393439)))))

(declare-fun b!3975382 () Bool)

(assert (=> b!3975382 (= e!2462981 (isPrefix!3777 (tail!6201 lt!1393448) (tail!6201 lt!1393439)))))

(declare-fun b!3975381 () Bool)

(declare-fun res!1609940 () Bool)

(assert (=> b!3975381 (=> (not res!1609940) (not e!2462981))))

(assert (=> b!3975381 (= res!1609940 (= (head!8469 lt!1393448) (head!8469 lt!1393439)))))

(assert (= (and d!1177210 (not res!1609939)) b!3975380))

(assert (= (and b!3975380 res!1609938) b!3975381))

(assert (= (and b!3975381 res!1609940) b!3975382))

(assert (= (and d!1177210 (not res!1609941)) b!3975383))

(declare-fun m!4546429 () Bool)

(assert (=> b!3975383 m!4546429))

(assert (=> b!3975383 m!4546011))

(assert (=> b!3975382 m!4546089))

(declare-fun m!4546431 () Bool)

(assert (=> b!3975382 m!4546431))

(assert (=> b!3975382 m!4546089))

(assert (=> b!3975382 m!4546431))

(declare-fun m!4546433 () Bool)

(assert (=> b!3975382 m!4546433))

(assert (=> b!3975381 m!4546093))

(declare-fun m!4546435 () Bool)

(assert (=> b!3975381 m!4546435))

(assert (=> b!3975018 d!1177210))

(declare-fun d!1177212 () Bool)

(assert (=> d!1177212 (isPrefix!3777 prefix!494 (++!11092 prefix!494 suffix!1299))))

(declare-fun lt!1393572 () Unit!61112)

(assert (=> d!1177212 (= lt!1393572 (choose!23815 prefix!494 suffix!1299))))

(assert (=> d!1177212 (= (lemmaConcatTwoListThenFirstIsPrefix!2620 prefix!494 suffix!1299) lt!1393572)))

(declare-fun bs!587747 () Bool)

(assert (= bs!587747 d!1177212))

(assert (=> bs!587747 m!4545933))

(assert (=> bs!587747 m!4545933))

(declare-fun m!4546437 () Bool)

(assert (=> bs!587747 m!4546437))

(declare-fun m!4546439 () Bool)

(assert (=> bs!587747 m!4546439))

(assert (=> b!3975018 d!1177212))

(declare-fun d!1177214 () Bool)

(assert (=> d!1177214 (= (inv!56731 (tag!7550 (h!47884 rules!2999))) (= (mod (str.len (value!211298 (tag!7550 (h!47884 rules!2999)))) 2) 0))))

(assert (=> b!3975019 d!1177214))

(declare-fun d!1177216 () Bool)

(declare-fun res!1609942 () Bool)

(declare-fun e!2462983 () Bool)

(assert (=> d!1177216 (=> (not res!1609942) (not e!2462983))))

(assert (=> d!1177216 (= res!1609942 (semiInverseModEq!2875 (toChars!9037 (transformation!6690 (h!47884 rules!2999))) (toValue!9178 (transformation!6690 (h!47884 rules!2999)))))))

(assert (=> d!1177216 (= (inv!56734 (transformation!6690 (h!47884 rules!2999))) e!2462983)))

(declare-fun b!3975384 () Bool)

(assert (=> b!3975384 (= e!2462983 (equivClasses!2774 (toChars!9037 (transformation!6690 (h!47884 rules!2999))) (toValue!9178 (transformation!6690 (h!47884 rules!2999)))))))

(assert (= (and d!1177216 res!1609942) b!3975384))

(declare-fun m!4546441 () Bool)

(assert (=> d!1177216 m!4546441))

(declare-fun m!4546443 () Bool)

(assert (=> b!3975384 m!4546443))

(assert (=> b!3975019 d!1177216))

(declare-fun b!3975385 () Bool)

(declare-fun e!2462984 () List!42586)

(assert (=> b!3975385 (= e!2462984 lt!1393436)))

(declare-fun b!3975387 () Bool)

(declare-fun res!1609944 () Bool)

(declare-fun e!2462985 () Bool)

(assert (=> b!3975387 (=> (not res!1609944) (not e!2462985))))

(declare-fun lt!1393573 () List!42586)

(assert (=> b!3975387 (= res!1609944 (= (size!31768 lt!1393573) (+ (size!31768 lt!1393448) (size!31768 lt!1393436))))))

(declare-fun b!3975386 () Bool)

(assert (=> b!3975386 (= e!2462984 (Cons!42462 (h!47882 lt!1393448) (++!11092 (t!331049 lt!1393448) lt!1393436)))))

(declare-fun b!3975388 () Bool)

(assert (=> b!3975388 (= e!2462985 (or (not (= lt!1393436 Nil!42462)) (= lt!1393573 lt!1393448)))))

(declare-fun d!1177218 () Bool)

(assert (=> d!1177218 e!2462985))

(declare-fun res!1609943 () Bool)

(assert (=> d!1177218 (=> (not res!1609943) (not e!2462985))))

(assert (=> d!1177218 (= res!1609943 (= (content!6443 lt!1393573) ((_ map or) (content!6443 lt!1393448) (content!6443 lt!1393436))))))

(assert (=> d!1177218 (= lt!1393573 e!2462984)))

(declare-fun c!689204 () Bool)

(assert (=> d!1177218 (= c!689204 ((_ is Nil!42462) lt!1393448))))

(assert (=> d!1177218 (= (++!11092 lt!1393448 lt!1393436) lt!1393573)))

(assert (= (and d!1177218 c!689204) b!3975385))

(assert (= (and d!1177218 (not c!689204)) b!3975386))

(assert (= (and d!1177218 res!1609943) b!3975387))

(assert (= (and b!3975387 res!1609944) b!3975388))

(declare-fun m!4546445 () Bool)

(assert (=> b!3975387 m!4546445))

(assert (=> b!3975387 m!4546011))

(declare-fun m!4546447 () Bool)

(assert (=> b!3975387 m!4546447))

(declare-fun m!4546449 () Bool)

(assert (=> b!3975386 m!4546449))

(declare-fun m!4546451 () Bool)

(assert (=> d!1177218 m!4546451))

(assert (=> d!1177218 m!4546329))

(declare-fun m!4546453 () Bool)

(assert (=> d!1177218 m!4546453))

(assert (=> b!3975017 d!1177218))

(declare-fun d!1177220 () Bool)

(declare-fun lt!1393574 () List!42586)

(assert (=> d!1177220 (= (++!11092 lt!1393448 lt!1393574) lt!1393437)))

(declare-fun e!2462986 () List!42586)

(assert (=> d!1177220 (= lt!1393574 e!2462986)))

(declare-fun c!689205 () Bool)

(assert (=> d!1177220 (= c!689205 ((_ is Cons!42462) lt!1393448))))

(assert (=> d!1177220 (>= (size!31768 lt!1393437) (size!31768 lt!1393448))))

(assert (=> d!1177220 (= (getSuffix!2208 lt!1393437 lt!1393448) lt!1393574)))

(declare-fun b!3975389 () Bool)

(assert (=> b!3975389 (= e!2462986 (getSuffix!2208 (tail!6201 lt!1393437) (t!331049 lt!1393448)))))

(declare-fun b!3975390 () Bool)

(assert (=> b!3975390 (= e!2462986 lt!1393437)))

(assert (= (and d!1177220 c!689205) b!3975389))

(assert (= (and d!1177220 (not c!689205)) b!3975390))

(declare-fun m!4546455 () Bool)

(assert (=> d!1177220 m!4546455))

(assert (=> d!1177220 m!4545991))

(assert (=> d!1177220 m!4546011))

(assert (=> b!3975389 m!4546417))

(assert (=> b!3975389 m!4546417))

(declare-fun m!4546457 () Bool)

(assert (=> b!3975389 m!4546457))

(assert (=> b!3975017 d!1177220))

(declare-fun b!3975394 () Bool)

(declare-fun e!2462987 () Bool)

(assert (=> b!3975394 (= e!2462987 (>= (size!31768 lt!1393437) (size!31768 lt!1393437)))))

(declare-fun d!1177222 () Bool)

(assert (=> d!1177222 e!2462987))

(declare-fun res!1609948 () Bool)

(assert (=> d!1177222 (=> res!1609948 e!2462987)))

(declare-fun lt!1393575 () Bool)

(assert (=> d!1177222 (= res!1609948 (not lt!1393575))))

(declare-fun e!2462989 () Bool)

(assert (=> d!1177222 (= lt!1393575 e!2462989)))

(declare-fun res!1609946 () Bool)

(assert (=> d!1177222 (=> res!1609946 e!2462989)))

(assert (=> d!1177222 (= res!1609946 ((_ is Nil!42462) lt!1393437))))

(assert (=> d!1177222 (= (isPrefix!3777 lt!1393437 lt!1393437) lt!1393575)))

(declare-fun b!3975391 () Bool)

(declare-fun e!2462988 () Bool)

(assert (=> b!3975391 (= e!2462989 e!2462988)))

(declare-fun res!1609945 () Bool)

(assert (=> b!3975391 (=> (not res!1609945) (not e!2462988))))

(assert (=> b!3975391 (= res!1609945 (not ((_ is Nil!42462) lt!1393437)))))

(declare-fun b!3975393 () Bool)

(assert (=> b!3975393 (= e!2462988 (isPrefix!3777 (tail!6201 lt!1393437) (tail!6201 lt!1393437)))))

(declare-fun b!3975392 () Bool)

(declare-fun res!1609947 () Bool)

(assert (=> b!3975392 (=> (not res!1609947) (not e!2462988))))

(assert (=> b!3975392 (= res!1609947 (= (head!8469 lt!1393437) (head!8469 lt!1393437)))))

(assert (= (and d!1177222 (not res!1609946)) b!3975391))

(assert (= (and b!3975391 res!1609945) b!3975392))

(assert (= (and b!3975392 res!1609947) b!3975393))

(assert (= (and d!1177222 (not res!1609948)) b!3975394))

(assert (=> b!3975394 m!4545991))

(assert (=> b!3975394 m!4545991))

(assert (=> b!3975393 m!4546417))

(assert (=> b!3975393 m!4546417))

(assert (=> b!3975393 m!4546417))

(assert (=> b!3975393 m!4546417))

(declare-fun m!4546459 () Bool)

(assert (=> b!3975393 m!4546459))

(assert (=> b!3975392 m!4546421))

(assert (=> b!3975392 m!4546421))

(assert (=> b!3975017 d!1177222))

(declare-fun d!1177224 () Bool)

(assert (=> d!1177224 (isPrefix!3777 lt!1393437 lt!1393437)))

(declare-fun lt!1393578 () Unit!61112)

(declare-fun choose!23818 (List!42586 List!42586) Unit!61112)

(assert (=> d!1177224 (= lt!1393578 (choose!23818 lt!1393437 lt!1393437))))

(assert (=> d!1177224 (= (lemmaIsPrefixRefl!2369 lt!1393437 lt!1393437) lt!1393578)))

(declare-fun bs!587748 () Bool)

(assert (= bs!587748 d!1177224))

(assert (=> bs!587748 m!4545947))

(declare-fun m!4546461 () Bool)

(assert (=> bs!587748 m!4546461))

(assert (=> b!3975017 d!1177224))

(declare-fun b!3975423 () Bool)

(declare-fun e!2463004 () Bool)

(declare-fun inv!15 (TokenValue!6920) Bool)

(assert (=> b!3975423 (= e!2463004 (inv!15 (value!211299 token!484)))))

(declare-fun b!3975424 () Bool)

(declare-fun e!2463006 () Bool)

(declare-fun inv!16 (TokenValue!6920) Bool)

(assert (=> b!3975424 (= e!2463006 (inv!16 (value!211299 token!484)))))

(declare-fun b!3975425 () Bool)

(declare-fun res!1609965 () Bool)

(assert (=> b!3975425 (=> res!1609965 e!2463004)))

(assert (=> b!3975425 (= res!1609965 (not ((_ is IntegerValue!20762) (value!211299 token!484))))))

(declare-fun e!2463005 () Bool)

(assert (=> b!3975425 (= e!2463005 e!2463004)))

(declare-fun b!3975427 () Bool)

(assert (=> b!3975427 (= e!2463006 e!2463005)))

(declare-fun c!689212 () Bool)

(assert (=> b!3975427 (= c!689212 ((_ is IntegerValue!20761) (value!211299 token!484)))))

(declare-fun d!1177226 () Bool)

(declare-fun c!689213 () Bool)

(assert (=> d!1177226 (= c!689213 ((_ is IntegerValue!20760) (value!211299 token!484)))))

(assert (=> d!1177226 (= (inv!21 (value!211299 token!484)) e!2463006)))

(declare-fun b!3975426 () Bool)

(declare-fun inv!17 (TokenValue!6920) Bool)

(assert (=> b!3975426 (= e!2463005 (inv!17 (value!211299 token!484)))))

(assert (= (and d!1177226 c!689213) b!3975424))

(assert (= (and d!1177226 (not c!689213)) b!3975427))

(assert (= (and b!3975427 c!689212) b!3975426))

(assert (= (and b!3975427 (not c!689212)) b!3975425))

(assert (= (and b!3975425 (not res!1609965)) b!3975423))

(declare-fun m!4546463 () Bool)

(assert (=> b!3975423 m!4546463))

(declare-fun m!4546465 () Bool)

(assert (=> b!3975424 m!4546465))

(declare-fun m!4546467 () Bool)

(assert (=> b!3975426 m!4546467))

(assert (=> b!3975028 d!1177226))

(declare-fun d!1177228 () Bool)

(declare-fun lt!1393589 () Int)

(assert (=> d!1177228 (>= lt!1393589 0)))

(declare-fun e!2463007 () Int)

(assert (=> d!1177228 (= lt!1393589 e!2463007)))

(declare-fun c!689214 () Bool)

(assert (=> d!1177228 (= c!689214 ((_ is Nil!42462) suffix!1299))))

(assert (=> d!1177228 (= (size!31768 suffix!1299) lt!1393589)))

(declare-fun b!3975428 () Bool)

(assert (=> b!3975428 (= e!2463007 0)))

(declare-fun b!3975429 () Bool)

(assert (=> b!3975429 (= e!2463007 (+ 1 (size!31768 (t!331049 suffix!1299))))))

(assert (= (and d!1177228 c!689214) b!3975428))

(assert (= (and d!1177228 (not c!689214)) b!3975429))

(declare-fun m!4546469 () Bool)

(assert (=> b!3975429 m!4546469))

(assert (=> b!3975010 d!1177228))

(declare-fun d!1177230 () Bool)

(declare-fun lt!1393590 () Int)

(assert (=> d!1177230 (>= lt!1393590 0)))

(declare-fun e!2463008 () Int)

(assert (=> d!1177230 (= lt!1393590 e!2463008)))

(declare-fun c!689215 () Bool)

(assert (=> d!1177230 (= c!689215 ((_ is Nil!42462) newSuffix!27))))

(assert (=> d!1177230 (= (size!31768 newSuffix!27) lt!1393590)))

(declare-fun b!3975430 () Bool)

(assert (=> b!3975430 (= e!2463008 0)))

(declare-fun b!3975431 () Bool)

(assert (=> b!3975431 (= e!2463008 (+ 1 (size!31768 (t!331049 newSuffix!27))))))

(assert (= (and d!1177230 c!689215) b!3975430))

(assert (= (and d!1177230 (not c!689215)) b!3975431))

(declare-fun m!4546471 () Bool)

(assert (=> b!3975431 m!4546471))

(assert (=> b!3975010 d!1177230))

(declare-fun b!3975502 () Bool)

(declare-fun e!2463046 () Bool)

(declare-fun e!2463048 () Bool)

(assert (=> b!3975502 (= e!2463046 e!2463048)))

(declare-fun res!1609996 () Bool)

(assert (=> b!3975502 (=> (not res!1609996) (not e!2463048))))

(declare-fun lt!1393616 () Option!9104)

(declare-fun isDefined!7020 (Option!9104) Bool)

(assert (=> b!3975502 (= res!1609996 (isDefined!7020 lt!1393616))))

(declare-fun b!3975503 () Bool)

(declare-fun res!1609997 () Bool)

(assert (=> b!3975503 (=> (not res!1609997) (not e!2463048))))

(declare-fun get!13989 (Option!9104) tuple2!41708)

(assert (=> b!3975503 (= res!1609997 (= (++!11092 (list!15758 (charsOf!4506 (_1!23988 (get!13989 lt!1393616)))) (_2!23988 (get!13989 lt!1393616))) lt!1393437))))

(declare-fun b!3975504 () Bool)

(declare-fun e!2463047 () Option!9104)

(declare-fun call!285672 () Option!9104)

(assert (=> b!3975504 (= e!2463047 call!285672)))

(declare-fun b!3975505 () Bool)

(declare-fun contains!8457 (List!42588 Rule!13180) Bool)

(assert (=> b!3975505 (= e!2463048 (contains!8457 rules!2999 (rule!9686 (_1!23988 (get!13989 lt!1393616)))))))

(declare-fun bm!285667 () Bool)

(assert (=> bm!285667 (= call!285672 (maxPrefixOneRule!2611 thiss!21717 (h!47884 rules!2999) lt!1393437))))

(declare-fun b!3975506 () Bool)

(declare-fun res!1609992 () Bool)

(assert (=> b!3975506 (=> (not res!1609992) (not e!2463048))))

(assert (=> b!3975506 (= res!1609992 (= (value!211299 (_1!23988 (get!13989 lt!1393616))) (apply!9901 (transformation!6690 (rule!9686 (_1!23988 (get!13989 lt!1393616)))) (seqFromList!4929 (originalCharacters!7290 (_1!23988 (get!13989 lt!1393616)))))))))

(declare-fun b!3975507 () Bool)

(declare-fun res!1609995 () Bool)

(assert (=> b!3975507 (=> (not res!1609995) (not e!2463048))))

(assert (=> b!3975507 (= res!1609995 (< (size!31768 (_2!23988 (get!13989 lt!1393616))) (size!31768 lt!1393437)))))

(declare-fun b!3975508 () Bool)

(declare-fun res!1609993 () Bool)

(assert (=> b!3975508 (=> (not res!1609993) (not e!2463048))))

(assert (=> b!3975508 (= res!1609993 (= (list!15758 (charsOf!4506 (_1!23988 (get!13989 lt!1393616)))) (originalCharacters!7290 (_1!23988 (get!13989 lt!1393616)))))))

(declare-fun d!1177232 () Bool)

(assert (=> d!1177232 e!2463046))

(declare-fun res!1609994 () Bool)

(assert (=> d!1177232 (=> res!1609994 e!2463046)))

(declare-fun isEmpty!25400 (Option!9104) Bool)

(assert (=> d!1177232 (= res!1609994 (isEmpty!25400 lt!1393616))))

(assert (=> d!1177232 (= lt!1393616 e!2463047)))

(declare-fun c!689219 () Bool)

(assert (=> d!1177232 (= c!689219 (and ((_ is Cons!42464) rules!2999) ((_ is Nil!42464) (t!331051 rules!2999))))))

(declare-fun lt!1393612 () Unit!61112)

(declare-fun lt!1393614 () Unit!61112)

(assert (=> d!1177232 (= lt!1393612 lt!1393614)))

(assert (=> d!1177232 (isPrefix!3777 lt!1393437 lt!1393437)))

(assert (=> d!1177232 (= lt!1393614 (lemmaIsPrefixRefl!2369 lt!1393437 lt!1393437))))

(declare-fun rulesValidInductive!2427 (LexerInterface!6279 List!42588) Bool)

(assert (=> d!1177232 (rulesValidInductive!2427 thiss!21717 rules!2999)))

(assert (=> d!1177232 (= (maxPrefix!3577 thiss!21717 rules!2999 lt!1393437) lt!1393616)))

(declare-fun b!3975509 () Bool)

(declare-fun res!1609991 () Bool)

(assert (=> b!3975509 (=> (not res!1609991) (not e!2463048))))

(assert (=> b!3975509 (= res!1609991 (matchR!5572 (regex!6690 (rule!9686 (_1!23988 (get!13989 lt!1393616)))) (list!15758 (charsOf!4506 (_1!23988 (get!13989 lt!1393616))))))))

(declare-fun b!3975510 () Bool)

(declare-fun lt!1393615 () Option!9104)

(declare-fun lt!1393613 () Option!9104)

(assert (=> b!3975510 (= e!2463047 (ite (and ((_ is None!9103) lt!1393615) ((_ is None!9103) lt!1393613)) None!9103 (ite ((_ is None!9103) lt!1393613) lt!1393615 (ite ((_ is None!9103) lt!1393615) lt!1393613 (ite (>= (size!31769 (_1!23988 (v!39451 lt!1393615))) (size!31769 (_1!23988 (v!39451 lt!1393613)))) lt!1393615 lt!1393613)))))))

(assert (=> b!3975510 (= lt!1393615 call!285672)))

(assert (=> b!3975510 (= lt!1393613 (maxPrefix!3577 thiss!21717 (t!331051 rules!2999) lt!1393437))))

(assert (= (and d!1177232 c!689219) b!3975504))

(assert (= (and d!1177232 (not c!689219)) b!3975510))

(assert (= (or b!3975504 b!3975510) bm!285667))

(assert (= (and d!1177232 (not res!1609994)) b!3975502))

(assert (= (and b!3975502 res!1609996) b!3975508))

(assert (= (and b!3975508 res!1609993) b!3975507))

(assert (= (and b!3975507 res!1609995) b!3975503))

(assert (= (and b!3975503 res!1609997) b!3975506))

(assert (= (and b!3975506 res!1609992) b!3975509))

(assert (= (and b!3975509 res!1609991) b!3975505))

(declare-fun m!4546537 () Bool)

(assert (=> b!3975503 m!4546537))

(declare-fun m!4546539 () Bool)

(assert (=> b!3975503 m!4546539))

(assert (=> b!3975503 m!4546539))

(declare-fun m!4546541 () Bool)

(assert (=> b!3975503 m!4546541))

(assert (=> b!3975503 m!4546541))

(declare-fun m!4546543 () Bool)

(assert (=> b!3975503 m!4546543))

(declare-fun m!4546545 () Bool)

(assert (=> b!3975510 m!4546545))

(assert (=> b!3975505 m!4546537))

(declare-fun m!4546547 () Bool)

(assert (=> b!3975505 m!4546547))

(assert (=> b!3975509 m!4546537))

(assert (=> b!3975509 m!4546539))

(assert (=> b!3975509 m!4546539))

(assert (=> b!3975509 m!4546541))

(assert (=> b!3975509 m!4546541))

(declare-fun m!4546549 () Bool)

(assert (=> b!3975509 m!4546549))

(assert (=> b!3975507 m!4546537))

(declare-fun m!4546551 () Bool)

(assert (=> b!3975507 m!4546551))

(assert (=> b!3975507 m!4545991))

(assert (=> b!3975508 m!4546537))

(assert (=> b!3975508 m!4546539))

(assert (=> b!3975508 m!4546539))

(assert (=> b!3975508 m!4546541))

(assert (=> b!3975506 m!4546537))

(declare-fun m!4546553 () Bool)

(assert (=> b!3975506 m!4546553))

(assert (=> b!3975506 m!4546553))

(declare-fun m!4546555 () Bool)

(assert (=> b!3975506 m!4546555))

(declare-fun m!4546557 () Bool)

(assert (=> d!1177232 m!4546557))

(assert (=> d!1177232 m!4545947))

(assert (=> d!1177232 m!4545949))

(declare-fun m!4546559 () Bool)

(assert (=> d!1177232 m!4546559))

(declare-fun m!4546561 () Bool)

(assert (=> bm!285667 m!4546561))

(declare-fun m!4546563 () Bool)

(assert (=> b!3975502 m!4546563))

(assert (=> b!3975011 d!1177232))

(declare-fun b!3975511 () Bool)

(declare-fun e!2463049 () List!42586)

(assert (=> b!3975511 (= e!2463049 suffix!1299)))

(declare-fun b!3975513 () Bool)

(declare-fun res!1609999 () Bool)

(declare-fun e!2463050 () Bool)

(assert (=> b!3975513 (=> (not res!1609999) (not e!2463050))))

(declare-fun lt!1393617 () List!42586)

(assert (=> b!3975513 (= res!1609999 (= (size!31768 lt!1393617) (+ (size!31768 prefix!494) (size!31768 suffix!1299))))))

(declare-fun b!3975512 () Bool)

(assert (=> b!3975512 (= e!2463049 (Cons!42462 (h!47882 prefix!494) (++!11092 (t!331049 prefix!494) suffix!1299)))))

(declare-fun b!3975514 () Bool)

(assert (=> b!3975514 (= e!2463050 (or (not (= suffix!1299 Nil!42462)) (= lt!1393617 prefix!494)))))

(declare-fun d!1177244 () Bool)

(assert (=> d!1177244 e!2463050))

(declare-fun res!1609998 () Bool)

(assert (=> d!1177244 (=> (not res!1609998) (not e!2463050))))

(assert (=> d!1177244 (= res!1609998 (= (content!6443 lt!1393617) ((_ map or) (content!6443 prefix!494) (content!6443 suffix!1299))))))

(assert (=> d!1177244 (= lt!1393617 e!2463049)))

(declare-fun c!689220 () Bool)

(assert (=> d!1177244 (= c!689220 ((_ is Nil!42462) prefix!494))))

(assert (=> d!1177244 (= (++!11092 prefix!494 suffix!1299) lt!1393617)))

(assert (= (and d!1177244 c!689220) b!3975511))

(assert (= (and d!1177244 (not c!689220)) b!3975512))

(assert (= (and d!1177244 res!1609998) b!3975513))

(assert (= (and b!3975513 res!1609999) b!3975514))

(declare-fun m!4546565 () Bool)

(assert (=> b!3975513 m!4546565))

(assert (=> b!3975513 m!4546013))

(assert (=> b!3975513 m!4545953))

(declare-fun m!4546567 () Bool)

(assert (=> b!3975512 m!4546567))

(declare-fun m!4546569 () Bool)

(assert (=> d!1177244 m!4546569))

(assert (=> d!1177244 m!4546313))

(declare-fun m!4546571 () Bool)

(assert (=> d!1177244 m!4546571))

(assert (=> b!3975011 d!1177244))

(declare-fun d!1177246 () Bool)

(declare-fun res!1610002 () Bool)

(declare-fun e!2463053 () Bool)

(assert (=> d!1177246 (=> (not res!1610002) (not e!2463053))))

(declare-fun rulesValid!2609 (LexerInterface!6279 List!42588) Bool)

(assert (=> d!1177246 (= res!1610002 (rulesValid!2609 thiss!21717 rules!2999))))

(assert (=> d!1177246 (= (rulesInvariant!5622 thiss!21717 rules!2999) e!2463053)))

(declare-fun b!3975517 () Bool)

(declare-datatypes ((List!42590 0))(
  ( (Nil!42466) (Cons!42466 (h!47886 String!48318) (t!331077 List!42590)) )
))
(declare-fun noDuplicateTag!2610 (LexerInterface!6279 List!42588 List!42590) Bool)

(assert (=> b!3975517 (= e!2463053 (noDuplicateTag!2610 thiss!21717 rules!2999 Nil!42466))))

(assert (= (and d!1177246 res!1610002) b!3975517))

(declare-fun m!4546573 () Bool)

(assert (=> d!1177246 m!4546573))

(declare-fun m!4546575 () Bool)

(assert (=> b!3975517 m!4546575))

(assert (=> b!3975032 d!1177246))

(declare-fun b!3975518 () Bool)

(declare-fun e!2463054 () List!42586)

(assert (=> b!3975518 (= e!2463054 lt!1393426)))

(declare-fun b!3975520 () Bool)

(declare-fun res!1610004 () Bool)

(declare-fun e!2463055 () Bool)

(assert (=> b!3975520 (=> (not res!1610004) (not e!2463055))))

(declare-fun lt!1393618 () List!42586)

(assert (=> b!3975520 (= res!1610004 (= (size!31768 lt!1393618) (+ (size!31768 lt!1393448) (size!31768 lt!1393426))))))

(declare-fun b!3975519 () Bool)

(assert (=> b!3975519 (= e!2463054 (Cons!42462 (h!47882 lt!1393448) (++!11092 (t!331049 lt!1393448) lt!1393426)))))

(declare-fun b!3975521 () Bool)

(assert (=> b!3975521 (= e!2463055 (or (not (= lt!1393426 Nil!42462)) (= lt!1393618 lt!1393448)))))

(declare-fun d!1177248 () Bool)

(assert (=> d!1177248 e!2463055))

(declare-fun res!1610003 () Bool)

(assert (=> d!1177248 (=> (not res!1610003) (not e!2463055))))

(assert (=> d!1177248 (= res!1610003 (= (content!6443 lt!1393618) ((_ map or) (content!6443 lt!1393448) (content!6443 lt!1393426))))))

(assert (=> d!1177248 (= lt!1393618 e!2463054)))

(declare-fun c!689221 () Bool)

(assert (=> d!1177248 (= c!689221 ((_ is Nil!42462) lt!1393448))))

(assert (=> d!1177248 (= (++!11092 lt!1393448 lt!1393426) lt!1393618)))

(assert (= (and d!1177248 c!689221) b!3975518))

(assert (= (and d!1177248 (not c!689221)) b!3975519))

(assert (= (and d!1177248 res!1610003) b!3975520))

(assert (= (and b!3975520 res!1610004) b!3975521))

(declare-fun m!4546577 () Bool)

(assert (=> b!3975520 m!4546577))

(assert (=> b!3975520 m!4546011))

(declare-fun m!4546579 () Bool)

(assert (=> b!3975520 m!4546579))

(declare-fun m!4546581 () Bool)

(assert (=> b!3975519 m!4546581))

(declare-fun m!4546583 () Bool)

(assert (=> d!1177248 m!4546583))

(assert (=> d!1177248 m!4546329))

(declare-fun m!4546585 () Bool)

(assert (=> d!1177248 m!4546585))

(assert (=> b!3975009 d!1177248))

(declare-fun b!3975522 () Bool)

(declare-fun e!2463056 () List!42586)

(assert (=> b!3975522 (= e!2463056 suffix!1299)))

(declare-fun b!3975524 () Bool)

(declare-fun res!1610006 () Bool)

(declare-fun e!2463057 () Bool)

(assert (=> b!3975524 (=> (not res!1610006) (not e!2463057))))

(declare-fun lt!1393619 () List!42586)

(assert (=> b!3975524 (= res!1610006 (= (size!31768 lt!1393619) (+ (size!31768 lt!1393425) (size!31768 suffix!1299))))))

(declare-fun b!3975523 () Bool)

(assert (=> b!3975523 (= e!2463056 (Cons!42462 (h!47882 lt!1393425) (++!11092 (t!331049 lt!1393425) suffix!1299)))))

(declare-fun b!3975525 () Bool)

(assert (=> b!3975525 (= e!2463057 (or (not (= suffix!1299 Nil!42462)) (= lt!1393619 lt!1393425)))))

(declare-fun d!1177250 () Bool)

(assert (=> d!1177250 e!2463057))

(declare-fun res!1610005 () Bool)

(assert (=> d!1177250 (=> (not res!1610005) (not e!2463057))))

(assert (=> d!1177250 (= res!1610005 (= (content!6443 lt!1393619) ((_ map or) (content!6443 lt!1393425) (content!6443 suffix!1299))))))

(assert (=> d!1177250 (= lt!1393619 e!2463056)))

(declare-fun c!689222 () Bool)

(assert (=> d!1177250 (= c!689222 ((_ is Nil!42462) lt!1393425))))

(assert (=> d!1177250 (= (++!11092 lt!1393425 suffix!1299) lt!1393619)))

(assert (= (and d!1177250 c!689222) b!3975522))

(assert (= (and d!1177250 (not c!689222)) b!3975523))

(assert (= (and d!1177250 res!1610005) b!3975524))

(assert (= (and b!3975524 res!1610006) b!3975525))

(declare-fun m!4546587 () Bool)

(assert (=> b!3975524 m!4546587))

(declare-fun m!4546589 () Bool)

(assert (=> b!3975524 m!4546589))

(assert (=> b!3975524 m!4545953))

(declare-fun m!4546591 () Bool)

(assert (=> b!3975523 m!4546591))

(declare-fun m!4546593 () Bool)

(assert (=> d!1177250 m!4546593))

(declare-fun m!4546595 () Bool)

(assert (=> d!1177250 m!4546595))

(assert (=> d!1177250 m!4546571))

(assert (=> b!3975009 d!1177250))

(declare-fun b!3975526 () Bool)

(declare-fun e!2463058 () List!42586)

(assert (=> b!3975526 (= e!2463058 suffix!1299)))

(declare-fun b!3975528 () Bool)

(declare-fun res!1610008 () Bool)

(declare-fun e!2463059 () Bool)

(assert (=> b!3975528 (=> (not res!1610008) (not e!2463059))))

(declare-fun lt!1393620 () List!42586)

(assert (=> b!3975528 (= res!1610008 (= (size!31768 lt!1393620) (+ (size!31768 lt!1393424) (size!31768 suffix!1299))))))

(declare-fun b!3975527 () Bool)

(assert (=> b!3975527 (= e!2463058 (Cons!42462 (h!47882 lt!1393424) (++!11092 (t!331049 lt!1393424) suffix!1299)))))

(declare-fun b!3975529 () Bool)

(assert (=> b!3975529 (= e!2463059 (or (not (= suffix!1299 Nil!42462)) (= lt!1393620 lt!1393424)))))

(declare-fun d!1177252 () Bool)

(assert (=> d!1177252 e!2463059))

(declare-fun res!1610007 () Bool)

(assert (=> d!1177252 (=> (not res!1610007) (not e!2463059))))

(assert (=> d!1177252 (= res!1610007 (= (content!6443 lt!1393620) ((_ map or) (content!6443 lt!1393424) (content!6443 suffix!1299))))))

(assert (=> d!1177252 (= lt!1393620 e!2463058)))

(declare-fun c!689223 () Bool)

(assert (=> d!1177252 (= c!689223 ((_ is Nil!42462) lt!1393424))))

(assert (=> d!1177252 (= (++!11092 lt!1393424 suffix!1299) lt!1393620)))

(assert (= (and d!1177252 c!689223) b!3975526))

(assert (= (and d!1177252 (not c!689223)) b!3975527))

(assert (= (and d!1177252 res!1610007) b!3975528))

(assert (= (and b!3975528 res!1610008) b!3975529))

(declare-fun m!4546597 () Bool)

(assert (=> b!3975528 m!4546597))

(assert (=> b!3975528 m!4546397))

(assert (=> b!3975528 m!4545953))

(declare-fun m!4546599 () Bool)

(assert (=> b!3975527 m!4546599))

(declare-fun m!4546601 () Bool)

(assert (=> d!1177252 m!4546601))

(assert (=> d!1177252 m!4546403))

(assert (=> d!1177252 m!4546571))

(assert (=> b!3975009 d!1177252))

(declare-fun d!1177254 () Bool)

(assert (=> d!1177254 (= (++!11092 (++!11092 lt!1393448 lt!1393424) suffix!1299) (++!11092 lt!1393448 (++!11092 lt!1393424 suffix!1299)))))

(declare-fun lt!1393623 () Unit!61112)

(declare-fun choose!23819 (List!42586 List!42586 List!42586) Unit!61112)

(assert (=> d!1177254 (= lt!1393623 (choose!23819 lt!1393448 lt!1393424 suffix!1299))))

(assert (=> d!1177254 (= (lemmaConcatAssociativity!2412 lt!1393448 lt!1393424 suffix!1299) lt!1393623)))

(declare-fun bs!587753 () Bool)

(assert (= bs!587753 d!1177254))

(assert (=> bs!587753 m!4545963))

(declare-fun m!4546603 () Bool)

(assert (=> bs!587753 m!4546603))

(assert (=> bs!587753 m!4545967))

(declare-fun m!4546605 () Bool)

(assert (=> bs!587753 m!4546605))

(assert (=> bs!587753 m!4545963))

(declare-fun m!4546607 () Bool)

(assert (=> bs!587753 m!4546607))

(assert (=> bs!587753 m!4545967))

(assert (=> b!3975009 d!1177254))

(declare-fun b!3975533 () Bool)

(declare-fun e!2463060 () Bool)

(assert (=> b!3975533 (= e!2463060 (>= (size!31768 suffix!1299) (size!31768 newSuffix!27)))))

(declare-fun d!1177256 () Bool)

(assert (=> d!1177256 e!2463060))

(declare-fun res!1610012 () Bool)

(assert (=> d!1177256 (=> res!1610012 e!2463060)))

(declare-fun lt!1393624 () Bool)

(assert (=> d!1177256 (= res!1610012 (not lt!1393624))))

(declare-fun e!2463062 () Bool)

(assert (=> d!1177256 (= lt!1393624 e!2463062)))

(declare-fun res!1610010 () Bool)

(assert (=> d!1177256 (=> res!1610010 e!2463062)))

(assert (=> d!1177256 (= res!1610010 ((_ is Nil!42462) newSuffix!27))))

(assert (=> d!1177256 (= (isPrefix!3777 newSuffix!27 suffix!1299) lt!1393624)))

(declare-fun b!3975530 () Bool)

(declare-fun e!2463061 () Bool)

(assert (=> b!3975530 (= e!2463062 e!2463061)))

(declare-fun res!1610009 () Bool)

(assert (=> b!3975530 (=> (not res!1610009) (not e!2463061))))

(assert (=> b!3975530 (= res!1610009 (not ((_ is Nil!42462) suffix!1299)))))

(declare-fun b!3975532 () Bool)

(assert (=> b!3975532 (= e!2463061 (isPrefix!3777 (tail!6201 newSuffix!27) (tail!6201 suffix!1299)))))

(declare-fun b!3975531 () Bool)

(declare-fun res!1610011 () Bool)

(assert (=> b!3975531 (=> (not res!1610011) (not e!2463061))))

(assert (=> b!3975531 (= res!1610011 (= (head!8469 newSuffix!27) (head!8469 suffix!1299)))))

(assert (= (and d!1177256 (not res!1610010)) b!3975530))

(assert (= (and b!3975530 res!1610009) b!3975531))

(assert (= (and b!3975531 res!1610011) b!3975532))

(assert (= (and d!1177256 (not res!1610012)) b!3975533))

(assert (=> b!3975533 m!4545953))

(assert (=> b!3975533 m!4545955))

(declare-fun m!4546609 () Bool)

(assert (=> b!3975532 m!4546609))

(declare-fun m!4546611 () Bool)

(assert (=> b!3975532 m!4546611))

(assert (=> b!3975532 m!4546609))

(assert (=> b!3975532 m!4546611))

(declare-fun m!4546613 () Bool)

(assert (=> b!3975532 m!4546613))

(declare-fun m!4546615 () Bool)

(assert (=> b!3975531 m!4546615))

(declare-fun m!4546617 () Bool)

(assert (=> b!3975531 m!4546617))

(assert (=> b!3975030 d!1177256))

(declare-fun d!1177258 () Bool)

(declare-fun dynLambda!18089 (Int BalanceConc!25396) TokenValue!6920)

(assert (=> d!1177258 (= (apply!9901 (transformation!6690 (rule!9686 token!484)) (seqFromList!4929 lt!1393448)) (dynLambda!18089 (toValue!9178 (transformation!6690 (rule!9686 token!484))) (seqFromList!4929 lt!1393448)))))

(declare-fun b_lambda!116175 () Bool)

(assert (=> (not b_lambda!116175) (not d!1177258)))

(declare-fun t!331069 () Bool)

(declare-fun tb!239741 () Bool)

(assert (=> (and b!3975035 (= (toValue!9178 (transformation!6690 (h!47884 rules!2999))) (toValue!9178 (transformation!6690 (rule!9686 token!484)))) t!331069) tb!239741))

(declare-fun result!290374 () Bool)

(assert (=> tb!239741 (= result!290374 (inv!21 (dynLambda!18089 (toValue!9178 (transformation!6690 (rule!9686 token!484))) (seqFromList!4929 lt!1393448))))))

(declare-fun m!4546619 () Bool)

(assert (=> tb!239741 m!4546619))

(assert (=> d!1177258 t!331069))

(declare-fun b_and!305599 () Bool)

(assert (= b_and!305567 (and (=> t!331069 result!290374) b_and!305599)))

(declare-fun t!331071 () Bool)

(declare-fun tb!239743 () Bool)

(assert (=> (and b!3975014 (= (toValue!9178 (transformation!6690 (rule!9686 token!484))) (toValue!9178 (transformation!6690 (rule!9686 token!484)))) t!331071) tb!239743))

(declare-fun result!290378 () Bool)

(assert (= result!290378 result!290374))

(assert (=> d!1177258 t!331071))

(declare-fun b_and!305601 () Bool)

(assert (= b_and!305571 (and (=> t!331071 result!290378) b_and!305601)))

(assert (=> d!1177258 m!4545983))

(declare-fun m!4546621 () Bool)

(assert (=> d!1177258 m!4546621))

(assert (=> b!3975031 d!1177258))

(declare-fun b!3975539 () Bool)

(declare-fun e!2463066 () Bool)

(assert (=> b!3975539 (= e!2463066 (>= (size!31768 lt!1393433) (size!31768 lt!1393448)))))

(declare-fun d!1177260 () Bool)

(assert (=> d!1177260 e!2463066))

(declare-fun res!1610016 () Bool)

(assert (=> d!1177260 (=> res!1610016 e!2463066)))

(declare-fun lt!1393625 () Bool)

(assert (=> d!1177260 (= res!1610016 (not lt!1393625))))

(declare-fun e!2463068 () Bool)

(assert (=> d!1177260 (= lt!1393625 e!2463068)))

(declare-fun res!1610014 () Bool)

(assert (=> d!1177260 (=> res!1610014 e!2463068)))

(assert (=> d!1177260 (= res!1610014 ((_ is Nil!42462) lt!1393448))))

(assert (=> d!1177260 (= (isPrefix!3777 lt!1393448 lt!1393433) lt!1393625)))

(declare-fun b!3975536 () Bool)

(declare-fun e!2463067 () Bool)

(assert (=> b!3975536 (= e!2463068 e!2463067)))

(declare-fun res!1610013 () Bool)

(assert (=> b!3975536 (=> (not res!1610013) (not e!2463067))))

(assert (=> b!3975536 (= res!1610013 (not ((_ is Nil!42462) lt!1393433)))))

(declare-fun b!3975538 () Bool)

(assert (=> b!3975538 (= e!2463067 (isPrefix!3777 (tail!6201 lt!1393448) (tail!6201 lt!1393433)))))

(declare-fun b!3975537 () Bool)

(declare-fun res!1610015 () Bool)

(assert (=> b!3975537 (=> (not res!1610015) (not e!2463067))))

(assert (=> b!3975537 (= res!1610015 (= (head!8469 lt!1393448) (head!8469 lt!1393433)))))

(assert (= (and d!1177260 (not res!1610014)) b!3975536))

(assert (= (and b!3975536 res!1610013) b!3975537))

(assert (= (and b!3975537 res!1610015) b!3975538))

(assert (= (and d!1177260 (not res!1610016)) b!3975539))

(declare-fun m!4546623 () Bool)

(assert (=> b!3975539 m!4546623))

(assert (=> b!3975539 m!4546011))

(assert (=> b!3975538 m!4546089))

(declare-fun m!4546625 () Bool)

(assert (=> b!3975538 m!4546625))

(assert (=> b!3975538 m!4546089))

(assert (=> b!3975538 m!4546625))

(declare-fun m!4546627 () Bool)

(assert (=> b!3975538 m!4546627))

(assert (=> b!3975537 m!4546093))

(declare-fun m!4546629 () Bool)

(assert (=> b!3975537 m!4546629))

(assert (=> b!3975031 d!1177260))

(declare-fun b!3975558 () Bool)

(declare-fun e!2463079 () Bool)

(declare-fun lt!1393640 () Option!9104)

(assert (=> b!3975558 (= e!2463079 (= (size!31769 (_1!23988 (get!13989 lt!1393640))) (size!31768 (originalCharacters!7290 (_1!23988 (get!13989 lt!1393640))))))))

(declare-fun b!3975559 () Bool)

(declare-fun e!2463077 () Option!9104)

(declare-datatypes ((tuple2!41712 0))(
  ( (tuple2!41713 (_1!23990 List!42586) (_2!23990 List!42586)) )
))
(declare-fun lt!1393636 () tuple2!41712)

(declare-fun size!31771 (BalanceConc!25396) Int)

(assert (=> b!3975559 (= e!2463077 (Some!9103 (tuple2!41709 (Token!12519 (apply!9901 (transformation!6690 (rule!9686 token!484)) (seqFromList!4929 (_1!23990 lt!1393636))) (rule!9686 token!484) (size!31771 (seqFromList!4929 (_1!23990 lt!1393636))) (_1!23990 lt!1393636)) (_2!23990 lt!1393636))))))

(declare-fun lt!1393639 () Unit!61112)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1285 (Regex!11595 List!42586) Unit!61112)

(assert (=> b!3975559 (= lt!1393639 (longestMatchIsAcceptedByMatchOrIsEmpty!1285 (regex!6690 (rule!9686 token!484)) lt!1393437))))

(declare-fun res!1610037 () Bool)

(declare-fun findLongestMatchInner!1312 (Regex!11595 List!42586 Int List!42586 List!42586 Int) tuple2!41712)

(assert (=> b!3975559 (= res!1610037 (isEmpty!25399 (_1!23990 (findLongestMatchInner!1312 (regex!6690 (rule!9686 token!484)) Nil!42462 (size!31768 Nil!42462) lt!1393437 lt!1393437 (size!31768 lt!1393437)))))))

(declare-fun e!2463078 () Bool)

(assert (=> b!3975559 (=> res!1610037 e!2463078)))

(assert (=> b!3975559 e!2463078))

(declare-fun lt!1393638 () Unit!61112)

(assert (=> b!3975559 (= lt!1393638 lt!1393639)))

(declare-fun lt!1393637 () Unit!61112)

(declare-fun lemmaSemiInverse!1822 (TokenValueInjection!13268 BalanceConc!25396) Unit!61112)

(assert (=> b!3975559 (= lt!1393637 (lemmaSemiInverse!1822 (transformation!6690 (rule!9686 token!484)) (seqFromList!4929 (_1!23990 lt!1393636))))))

(declare-fun b!3975560 () Bool)

(declare-fun e!2463080 () Bool)

(assert (=> b!3975560 (= e!2463080 e!2463079)))

(declare-fun res!1610036 () Bool)

(assert (=> b!3975560 (=> (not res!1610036) (not e!2463079))))

(assert (=> b!3975560 (= res!1610036 (matchR!5572 (regex!6690 (rule!9686 token!484)) (list!15758 (charsOf!4506 (_1!23988 (get!13989 lt!1393640))))))))

(declare-fun b!3975561 () Bool)

(declare-fun res!1610033 () Bool)

(assert (=> b!3975561 (=> (not res!1610033) (not e!2463079))))

(assert (=> b!3975561 (= res!1610033 (= (value!211299 (_1!23988 (get!13989 lt!1393640))) (apply!9901 (transformation!6690 (rule!9686 (_1!23988 (get!13989 lt!1393640)))) (seqFromList!4929 (originalCharacters!7290 (_1!23988 (get!13989 lt!1393640)))))))))

(declare-fun d!1177262 () Bool)

(assert (=> d!1177262 e!2463080))

(declare-fun res!1610034 () Bool)

(assert (=> d!1177262 (=> res!1610034 e!2463080)))

(assert (=> d!1177262 (= res!1610034 (isEmpty!25400 lt!1393640))))

(assert (=> d!1177262 (= lt!1393640 e!2463077)))

(declare-fun c!689226 () Bool)

(assert (=> d!1177262 (= c!689226 (isEmpty!25399 (_1!23990 lt!1393636)))))

(declare-fun findLongestMatch!1225 (Regex!11595 List!42586) tuple2!41712)

(assert (=> d!1177262 (= lt!1393636 (findLongestMatch!1225 (regex!6690 (rule!9686 token!484)) lt!1393437))))

(assert (=> d!1177262 (ruleValid!2622 thiss!21717 (rule!9686 token!484))))

(assert (=> d!1177262 (= (maxPrefixOneRule!2611 thiss!21717 (rule!9686 token!484) lt!1393437) lt!1393640)))

(declare-fun b!3975562 () Bool)

(declare-fun res!1610035 () Bool)

(assert (=> b!3975562 (=> (not res!1610035) (not e!2463079))))

(assert (=> b!3975562 (= res!1610035 (= (rule!9686 (_1!23988 (get!13989 lt!1393640))) (rule!9686 token!484)))))

(declare-fun b!3975563 () Bool)

(declare-fun res!1610032 () Bool)

(assert (=> b!3975563 (=> (not res!1610032) (not e!2463079))))

(assert (=> b!3975563 (= res!1610032 (< (size!31768 (_2!23988 (get!13989 lt!1393640))) (size!31768 lt!1393437)))))

(declare-fun b!3975564 () Bool)

(assert (=> b!3975564 (= e!2463077 None!9103)))

(declare-fun b!3975565 () Bool)

(declare-fun res!1610031 () Bool)

(assert (=> b!3975565 (=> (not res!1610031) (not e!2463079))))

(assert (=> b!3975565 (= res!1610031 (= (++!11092 (list!15758 (charsOf!4506 (_1!23988 (get!13989 lt!1393640)))) (_2!23988 (get!13989 lt!1393640))) lt!1393437))))

(declare-fun b!3975566 () Bool)

(assert (=> b!3975566 (= e!2463078 (matchR!5572 (regex!6690 (rule!9686 token!484)) (_1!23990 (findLongestMatchInner!1312 (regex!6690 (rule!9686 token!484)) Nil!42462 (size!31768 Nil!42462) lt!1393437 lt!1393437 (size!31768 lt!1393437)))))))

(assert (= (and d!1177262 c!689226) b!3975564))

(assert (= (and d!1177262 (not c!689226)) b!3975559))

(assert (= (and b!3975559 (not res!1610037)) b!3975566))

(assert (= (and d!1177262 (not res!1610034)) b!3975560))

(assert (= (and b!3975560 res!1610036) b!3975565))

(assert (= (and b!3975565 res!1610031) b!3975563))

(assert (= (and b!3975563 res!1610032) b!3975562))

(assert (= (and b!3975562 res!1610035) b!3975561))

(assert (= (and b!3975561 res!1610033) b!3975558))

(declare-fun m!4546631 () Bool)

(assert (=> b!3975566 m!4546631))

(assert (=> b!3975566 m!4545991))

(assert (=> b!3975566 m!4546631))

(assert (=> b!3975566 m!4545991))

(declare-fun m!4546633 () Bool)

(assert (=> b!3975566 m!4546633))

(declare-fun m!4546635 () Bool)

(assert (=> b!3975566 m!4546635))

(declare-fun m!4546637 () Bool)

(assert (=> b!3975560 m!4546637))

(declare-fun m!4546639 () Bool)

(assert (=> b!3975560 m!4546639))

(assert (=> b!3975560 m!4546639))

(declare-fun m!4546641 () Bool)

(assert (=> b!3975560 m!4546641))

(assert (=> b!3975560 m!4546641))

(declare-fun m!4546643 () Bool)

(assert (=> b!3975560 m!4546643))

(declare-fun m!4546645 () Bool)

(assert (=> d!1177262 m!4546645))

(declare-fun m!4546647 () Bool)

(assert (=> d!1177262 m!4546647))

(declare-fun m!4546649 () Bool)

(assert (=> d!1177262 m!4546649))

(assert (=> d!1177262 m!4546005))

(assert (=> b!3975561 m!4546637))

(declare-fun m!4546651 () Bool)

(assert (=> b!3975561 m!4546651))

(assert (=> b!3975561 m!4546651))

(declare-fun m!4546653 () Bool)

(assert (=> b!3975561 m!4546653))

(assert (=> b!3975563 m!4546637))

(declare-fun m!4546655 () Bool)

(assert (=> b!3975563 m!4546655))

(assert (=> b!3975563 m!4545991))

(assert (=> b!3975565 m!4546637))

(assert (=> b!3975565 m!4546639))

(assert (=> b!3975565 m!4546639))

(assert (=> b!3975565 m!4546641))

(assert (=> b!3975565 m!4546641))

(declare-fun m!4546657 () Bool)

(assert (=> b!3975565 m!4546657))

(assert (=> b!3975559 m!4546631))

(assert (=> b!3975559 m!4545991))

(assert (=> b!3975559 m!4546633))

(declare-fun m!4546659 () Bool)

(assert (=> b!3975559 m!4546659))

(declare-fun m!4546661 () Bool)

(assert (=> b!3975559 m!4546661))

(assert (=> b!3975559 m!4546659))

(declare-fun m!4546663 () Bool)

(assert (=> b!3975559 m!4546663))

(assert (=> b!3975559 m!4545991))

(declare-fun m!4546665 () Bool)

(assert (=> b!3975559 m!4546665))

(assert (=> b!3975559 m!4546659))

(declare-fun m!4546667 () Bool)

(assert (=> b!3975559 m!4546667))

(assert (=> b!3975559 m!4546631))

(declare-fun m!4546669 () Bool)

(assert (=> b!3975559 m!4546669))

(assert (=> b!3975559 m!4546659))

(assert (=> b!3975562 m!4546637))

(assert (=> b!3975558 m!4546637))

(declare-fun m!4546671 () Bool)

(assert (=> b!3975558 m!4546671))

(assert (=> b!3975031 d!1177262))

(declare-fun d!1177264 () Bool)

(assert (=> d!1177264 (= lt!1393426 suffixResult!105)))

(declare-fun lt!1393641 () Unit!61112)

(assert (=> d!1177264 (= lt!1393641 (choose!23814 lt!1393448 lt!1393426 lt!1393448 suffixResult!105 lt!1393437))))

(assert (=> d!1177264 (isPrefix!3777 lt!1393448 lt!1393437)))

(assert (=> d!1177264 (= (lemmaSamePrefixThenSameSuffix!1964 lt!1393448 lt!1393426 lt!1393448 suffixResult!105 lt!1393437) lt!1393641)))

(declare-fun bs!587754 () Bool)

(assert (= bs!587754 d!1177264))

(declare-fun m!4546673 () Bool)

(assert (=> bs!587754 m!4546673))

(assert (=> bs!587754 m!4546027))

(assert (=> b!3975031 d!1177264))

(declare-fun d!1177266 () Bool)

(assert (=> d!1177266 (isPrefix!3777 lt!1393448 (++!11092 lt!1393448 lt!1393426))))

(declare-fun lt!1393642 () Unit!61112)

(assert (=> d!1177266 (= lt!1393642 (choose!23815 lt!1393448 lt!1393426))))

(assert (=> d!1177266 (= (lemmaConcatTwoListThenFirstIsPrefix!2620 lt!1393448 lt!1393426) lt!1393642)))

(declare-fun bs!587755 () Bool)

(assert (= bs!587755 d!1177266))

(assert (=> bs!587755 m!4545959))

(assert (=> bs!587755 m!4545959))

(declare-fun m!4546675 () Bool)

(assert (=> bs!587755 m!4546675))

(declare-fun m!4546677 () Bool)

(assert (=> bs!587755 m!4546677))

(assert (=> b!3975031 d!1177266))

(declare-fun d!1177268 () Bool)

(assert (=> d!1177268 (= (maxPrefixOneRule!2611 thiss!21717 (rule!9686 token!484) lt!1393437) (Some!9103 (tuple2!41709 (Token!12519 (apply!9901 (transformation!6690 (rule!9686 token!484)) (seqFromList!4929 lt!1393448)) (rule!9686 token!484) (size!31768 lt!1393448) lt!1393448) suffixResult!105)))))

(declare-fun lt!1393645 () Unit!61112)

(declare-fun choose!23820 (LexerInterface!6279 List!42588 List!42586 List!42586 List!42586 Rule!13180) Unit!61112)

(assert (=> d!1177268 (= lt!1393645 (choose!23820 thiss!21717 rules!2999 lt!1393448 lt!1393437 suffixResult!105 (rule!9686 token!484)))))

(assert (=> d!1177268 (not (isEmpty!25396 rules!2999))))

(assert (=> d!1177268 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1433 thiss!21717 rules!2999 lt!1393448 lt!1393437 suffixResult!105 (rule!9686 token!484)) lt!1393645)))

(declare-fun bs!587756 () Bool)

(assert (= bs!587756 d!1177268))

(assert (=> bs!587756 m!4545983))

(assert (=> bs!587756 m!4545985))

(assert (=> bs!587756 m!4545983))

(assert (=> bs!587756 m!4545999))

(assert (=> bs!587756 m!4545979))

(assert (=> bs!587756 m!4546011))

(declare-fun m!4546679 () Bool)

(assert (=> bs!587756 m!4546679))

(assert (=> b!3975031 d!1177268))

(declare-fun d!1177270 () Bool)

(declare-fun fromListB!2270 (List!42586) BalanceConc!25396)

(assert (=> d!1177270 (= (seqFromList!4929 lt!1393448) (fromListB!2270 lt!1393448))))

(declare-fun bs!587757 () Bool)

(assert (= bs!587757 d!1177270))

(declare-fun m!4546681 () Bool)

(assert (=> bs!587757 m!4546681))

(assert (=> b!3975031 d!1177270))

(declare-fun b!3975567 () Bool)

(declare-fun e!2463081 () List!42586)

(assert (=> b!3975567 (= e!2463081 suffixResult!105)))

(declare-fun b!3975569 () Bool)

(declare-fun res!1610039 () Bool)

(declare-fun e!2463082 () Bool)

(assert (=> b!3975569 (=> (not res!1610039) (not e!2463082))))

(declare-fun lt!1393646 () List!42586)

(assert (=> b!3975569 (= res!1610039 (= (size!31768 lt!1393646) (+ (size!31768 lt!1393448) (size!31768 suffixResult!105))))))

(declare-fun b!3975568 () Bool)

(assert (=> b!3975568 (= e!2463081 (Cons!42462 (h!47882 lt!1393448) (++!11092 (t!331049 lt!1393448) suffixResult!105)))))

(declare-fun b!3975570 () Bool)

(assert (=> b!3975570 (= e!2463082 (or (not (= suffixResult!105 Nil!42462)) (= lt!1393646 lt!1393448)))))

(declare-fun d!1177272 () Bool)

(assert (=> d!1177272 e!2463082))

(declare-fun res!1610038 () Bool)

(assert (=> d!1177272 (=> (not res!1610038) (not e!2463082))))

(assert (=> d!1177272 (= res!1610038 (= (content!6443 lt!1393646) ((_ map or) (content!6443 lt!1393448) (content!6443 suffixResult!105))))))

(assert (=> d!1177272 (= lt!1393646 e!2463081)))

(declare-fun c!689227 () Bool)

(assert (=> d!1177272 (= c!689227 ((_ is Nil!42462) lt!1393448))))

(assert (=> d!1177272 (= (++!11092 lt!1393448 suffixResult!105) lt!1393646)))

(assert (= (and d!1177272 c!689227) b!3975567))

(assert (= (and d!1177272 (not c!689227)) b!3975568))

(assert (= (and d!1177272 res!1610038) b!3975569))

(assert (= (and b!3975569 res!1610039) b!3975570))

(declare-fun m!4546683 () Bool)

(assert (=> b!3975569 m!4546683))

(assert (=> b!3975569 m!4546011))

(declare-fun m!4546685 () Bool)

(assert (=> b!3975569 m!4546685))

(declare-fun m!4546687 () Bool)

(assert (=> b!3975568 m!4546687))

(declare-fun m!4546689 () Bool)

(assert (=> d!1177272 m!4546689))

(assert (=> d!1177272 m!4546329))

(declare-fun m!4546691 () Bool)

(assert (=> d!1177272 m!4546691))

(assert (=> b!3975020 d!1177272))

(declare-fun d!1177274 () Bool)

(declare-fun e!2463085 () Bool)

(assert (=> d!1177274 e!2463085))

(declare-fun res!1610042 () Bool)

(assert (=> d!1177274 (=> (not res!1610042) (not e!2463085))))

(assert (=> d!1177274 (= res!1610042 (semiInverseModEq!2875 (toChars!9037 (transformation!6690 (rule!9686 token!484))) (toValue!9178 (transformation!6690 (rule!9686 token!484)))))))

(declare-fun Unit!61116 () Unit!61112)

(assert (=> d!1177274 (= (lemmaInv!905 (transformation!6690 (rule!9686 token!484))) Unit!61116)))

(declare-fun b!3975573 () Bool)

(assert (=> b!3975573 (= e!2463085 (equivClasses!2774 (toChars!9037 (transformation!6690 (rule!9686 token!484))) (toValue!9178 (transformation!6690 (rule!9686 token!484)))))))

(assert (= (and d!1177274 res!1610042) b!3975573))

(assert (=> d!1177274 m!4546391))

(assert (=> b!3975573 m!4546393))

(assert (=> b!3975020 d!1177274))

(declare-fun d!1177276 () Bool)

(declare-fun res!1610047 () Bool)

(declare-fun e!2463088 () Bool)

(assert (=> d!1177276 (=> (not res!1610047) (not e!2463088))))

(assert (=> d!1177276 (= res!1610047 (validRegex!5268 (regex!6690 (rule!9686 token!484))))))

(assert (=> d!1177276 (= (ruleValid!2622 thiss!21717 (rule!9686 token!484)) e!2463088)))

(declare-fun b!3975578 () Bool)

(declare-fun res!1610048 () Bool)

(assert (=> b!3975578 (=> (not res!1610048) (not e!2463088))))

(assert (=> b!3975578 (= res!1610048 (not (nullable!4068 (regex!6690 (rule!9686 token!484)))))))

(declare-fun b!3975579 () Bool)

(assert (=> b!3975579 (= e!2463088 (not (= (tag!7550 (rule!9686 token!484)) (String!48319 ""))))))

(assert (= (and d!1177276 res!1610047) b!3975578))

(assert (= (and b!3975578 res!1610048) b!3975579))

(assert (=> d!1177276 m!4546101))

(assert (=> b!3975578 m!4546095))

(assert (=> b!3975020 d!1177276))

(declare-fun d!1177278 () Bool)

(assert (=> d!1177278 (ruleValid!2622 thiss!21717 (rule!9686 token!484))))

(declare-fun lt!1393649 () Unit!61112)

(declare-fun choose!23821 (LexerInterface!6279 Rule!13180 List!42588) Unit!61112)

(assert (=> d!1177278 (= lt!1393649 (choose!23821 thiss!21717 (rule!9686 token!484) rules!2999))))

(assert (=> d!1177278 (contains!8457 rules!2999 (rule!9686 token!484))))

(assert (=> d!1177278 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1696 thiss!21717 (rule!9686 token!484) rules!2999) lt!1393649)))

(declare-fun bs!587758 () Bool)

(assert (= bs!587758 d!1177278))

(assert (=> bs!587758 m!4546005))

(declare-fun m!4546693 () Bool)

(assert (=> bs!587758 m!4546693))

(declare-fun m!4546695 () Bool)

(assert (=> bs!587758 m!4546695))

(assert (=> b!3975020 d!1177278))

(declare-fun b!3975584 () Bool)

(declare-fun e!2463091 () Bool)

(declare-fun tp!1212067 () Bool)

(assert (=> b!3975584 (= e!2463091 (and tp_is_empty!20161 tp!1212067))))

(assert (=> b!3975013 (= tp!1212010 e!2463091)))

(assert (= (and b!3975013 ((_ is Cons!42462) (t!331049 suffixResult!105))) b!3975584))

(declare-fun b!3975596 () Bool)

(declare-fun e!2463094 () Bool)

(declare-fun tp!1212081 () Bool)

(declare-fun tp!1212078 () Bool)

(assert (=> b!3975596 (= e!2463094 (and tp!1212081 tp!1212078))))

(declare-fun b!3975597 () Bool)

(declare-fun tp!1212082 () Bool)

(assert (=> b!3975597 (= e!2463094 tp!1212082)))

(declare-fun b!3975598 () Bool)

(declare-fun tp!1212079 () Bool)

(declare-fun tp!1212080 () Bool)

(assert (=> b!3975598 (= e!2463094 (and tp!1212079 tp!1212080))))

(declare-fun b!3975595 () Bool)

(assert (=> b!3975595 (= e!2463094 tp_is_empty!20161)))

(assert (=> b!3975019 (= tp!1212018 e!2463094)))

(assert (= (and b!3975019 ((_ is ElementMatch!11595) (regex!6690 (h!47884 rules!2999)))) b!3975595))

(assert (= (and b!3975019 ((_ is Concat!18516) (regex!6690 (h!47884 rules!2999)))) b!3975596))

(assert (= (and b!3975019 ((_ is Star!11595) (regex!6690 (h!47884 rules!2999)))) b!3975597))

(assert (= (and b!3975019 ((_ is Union!11595) (regex!6690 (h!47884 rules!2999)))) b!3975598))

(declare-fun b!3975599 () Bool)

(declare-fun e!2463095 () Bool)

(declare-fun tp!1212083 () Bool)

(assert (=> b!3975599 (= e!2463095 (and tp_is_empty!20161 tp!1212083))))

(assert (=> b!3975008 (= tp!1212009 e!2463095)))

(assert (= (and b!3975008 ((_ is Cons!42462) (t!331049 newSuffixResult!27))) b!3975599))

(declare-fun b!3975600 () Bool)

(declare-fun e!2463096 () Bool)

(declare-fun tp!1212084 () Bool)

(assert (=> b!3975600 (= e!2463096 (and tp_is_empty!20161 tp!1212084))))

(assert (=> b!3975012 (= tp!1212006 e!2463096)))

(assert (= (and b!3975012 ((_ is Cons!42462) (t!331049 prefix!494))) b!3975600))

(declare-fun b!3975601 () Bool)

(declare-fun e!2463097 () Bool)

(declare-fun tp!1212085 () Bool)

(assert (=> b!3975601 (= e!2463097 (and tp_is_empty!20161 tp!1212085))))

(assert (=> b!3975028 (= tp!1212017 e!2463097)))

(assert (= (and b!3975028 ((_ is Cons!42462) (originalCharacters!7290 token!484))) b!3975601))

(declare-fun b!3975612 () Bool)

(declare-fun b_free!110237 () Bool)

(declare-fun b_next!110941 () Bool)

(assert (=> b!3975612 (= b_free!110237 (not b_next!110941))))

(declare-fun tb!239745 () Bool)

(declare-fun t!331073 () Bool)

(assert (=> (and b!3975612 (= (toValue!9178 (transformation!6690 (h!47884 (t!331051 rules!2999)))) (toValue!9178 (transformation!6690 (rule!9686 token!484)))) t!331073) tb!239745))

(declare-fun result!290386 () Bool)

(assert (= result!290386 result!290374))

(assert (=> d!1177258 t!331073))

(declare-fun b_and!305603 () Bool)

(declare-fun tp!1212095 () Bool)

(assert (=> b!3975612 (= tp!1212095 (and (=> t!331073 result!290386) b_and!305603))))

(declare-fun b_free!110239 () Bool)

(declare-fun b_next!110943 () Bool)

(assert (=> b!3975612 (= b_free!110239 (not b_next!110943))))

(declare-fun t!331075 () Bool)

(declare-fun tb!239747 () Bool)

(assert (=> (and b!3975612 (= (toChars!9037 (transformation!6690 (h!47884 (t!331051 rules!2999)))) (toChars!9037 (transformation!6690 (rule!9686 token!484)))) t!331075) tb!239747))

(declare-fun result!290388 () Bool)

(assert (= result!290388 result!290346))

(assert (=> b!3975223 t!331075))

(assert (=> d!1177130 t!331075))

(declare-fun b_and!305605 () Bool)

(declare-fun tp!1212094 () Bool)

(assert (=> b!3975612 (= tp!1212094 (and (=> t!331075 result!290388) b_and!305605))))

(declare-fun e!2463107 () Bool)

(assert (=> b!3975612 (= e!2463107 (and tp!1212095 tp!1212094))))

(declare-fun b!3975611 () Bool)

(declare-fun tp!1212096 () Bool)

(declare-fun e!2463109 () Bool)

(assert (=> b!3975611 (= e!2463109 (and tp!1212096 (inv!56731 (tag!7550 (h!47884 (t!331051 rules!2999)))) (inv!56734 (transformation!6690 (h!47884 (t!331051 rules!2999)))) e!2463107))))

(declare-fun b!3975610 () Bool)

(declare-fun e!2463108 () Bool)

(declare-fun tp!1212097 () Bool)

(assert (=> b!3975610 (= e!2463108 (and e!2463109 tp!1212097))))

(assert (=> b!3975026 (= tp!1212015 e!2463108)))

(assert (= b!3975611 b!3975612))

(assert (= b!3975610 b!3975611))

(assert (= (and b!3975026 ((_ is Cons!42464) (t!331051 rules!2999))) b!3975610))

(declare-fun m!4546697 () Bool)

(assert (=> b!3975611 m!4546697))

(declare-fun m!4546699 () Bool)

(assert (=> b!3975611 m!4546699))

(declare-fun b!3975613 () Bool)

(declare-fun e!2463110 () Bool)

(declare-fun tp!1212098 () Bool)

(assert (=> b!3975613 (= e!2463110 (and tp_is_empty!20161 tp!1212098))))

(assert (=> b!3975027 (= tp!1212007 e!2463110)))

(assert (= (and b!3975027 ((_ is Cons!42462) (t!331049 suffix!1299))) b!3975613))

(declare-fun b!3975615 () Bool)

(declare-fun e!2463111 () Bool)

(declare-fun tp!1212102 () Bool)

(declare-fun tp!1212099 () Bool)

(assert (=> b!3975615 (= e!2463111 (and tp!1212102 tp!1212099))))

(declare-fun b!3975616 () Bool)

(declare-fun tp!1212103 () Bool)

(assert (=> b!3975616 (= e!2463111 tp!1212103)))

(declare-fun b!3975617 () Bool)

(declare-fun tp!1212100 () Bool)

(declare-fun tp!1212101 () Bool)

(assert (=> b!3975617 (= e!2463111 (and tp!1212100 tp!1212101))))

(declare-fun b!3975614 () Bool)

(assert (=> b!3975614 (= e!2463111 tp_is_empty!20161)))

(assert (=> b!3975015 (= tp!1212011 e!2463111)))

(assert (= (and b!3975015 ((_ is ElementMatch!11595) (regex!6690 (rule!9686 token!484)))) b!3975614))

(assert (= (and b!3975015 ((_ is Concat!18516) (regex!6690 (rule!9686 token!484)))) b!3975615))

(assert (= (and b!3975015 ((_ is Star!11595) (regex!6690 (rule!9686 token!484)))) b!3975616))

(assert (= (and b!3975015 ((_ is Union!11595) (regex!6690 (rule!9686 token!484)))) b!3975617))

(declare-fun b!3975618 () Bool)

(declare-fun e!2463112 () Bool)

(declare-fun tp!1212104 () Bool)

(assert (=> b!3975618 (= e!2463112 (and tp_is_empty!20161 tp!1212104))))

(assert (=> b!3975036 (= tp!1212014 e!2463112)))

(assert (= (and b!3975036 ((_ is Cons!42462) (t!331049 newSuffix!27))) b!3975618))

(declare-fun b_lambda!116177 () Bool)

(assert (= b_lambda!116175 (or (and b!3975035 b_free!110225 (= (toValue!9178 (transformation!6690 (h!47884 rules!2999))) (toValue!9178 (transformation!6690 (rule!9686 token!484))))) (and b!3975014 b_free!110229) (and b!3975612 b_free!110237 (= (toValue!9178 (transformation!6690 (h!47884 (t!331051 rules!2999)))) (toValue!9178 (transformation!6690 (rule!9686 token!484))))) b_lambda!116177)))

(declare-fun b_lambda!116179 () Bool)

(assert (= b_lambda!116161 (or (and b!3975035 b_free!110227 (= (toChars!9037 (transformation!6690 (h!47884 rules!2999))) (toChars!9037 (transformation!6690 (rule!9686 token!484))))) (and b!3975014 b_free!110231) (and b!3975612 b_free!110239 (= (toChars!9037 (transformation!6690 (h!47884 (t!331051 rules!2999)))) (toChars!9037 (transformation!6690 (rule!9686 token!484))))) b_lambda!116179)))

(declare-fun b_lambda!116181 () Bool)

(assert (= b_lambda!116159 (or (and b!3975035 b_free!110227 (= (toChars!9037 (transformation!6690 (h!47884 rules!2999))) (toChars!9037 (transformation!6690 (rule!9686 token!484))))) (and b!3975014 b_free!110231) (and b!3975612 b_free!110239 (= (toChars!9037 (transformation!6690 (h!47884 (t!331051 rules!2999)))) (toChars!9037 (transformation!6690 (rule!9686 token!484))))) b_lambda!116181)))

(check-sat (not b!3975254) (not b!3975321) (not d!1177264) (not b!3975559) (not b!3975167) (not d!1177212) b_and!305579 (not d!1177254) (not b!3975600) (not b!3975563) (not b!3975533) (not b!3975116) (not b!3975314) (not b!3975507) (not b!3975315) (not d!1177232) (not d!1177262) (not b!3975524) (not b!3975618) (not b!3975366) (not b!3975128) tp_is_empty!20161 b_and!305581 (not b!3975382) (not b!3975384) (not b!3975429) (not d!1177126) (not tb!239741) (not b!3975377) (not b!3975519) (not b!3975596) (not d!1177278) (not b!3975350) (not b!3975527) (not b!3975509) (not b!3975371) b_and!305603 (not b!3975124) (not b!3975118) (not b!3975560) (not b!3975616) (not b_lambda!116181) (not b!3975373) (not b!3975613) (not d!1177206) (not b!3975370) (not b!3975523) (not b!3975537) (not b_next!110931) b_and!305605 (not d!1177196) (not b!3975565) (not b!3975510) (not b!3975539) (not b!3975306) (not b!3975532) (not d!1177096) (not b!3975393) (not b!3975168) (not b!3975531) (not b!3975598) (not b!3975513) (not b!3975271) (not d!1177276) (not b!3975352) (not b!3975389) (not b!3975431) b_and!305599 (not b!3975119) (not b!3975426) (not d!1177246) (not b_next!110935) (not b!3975569) (not d!1177216) (not d!1177188) (not b_next!110933) (not d!1177274) (not b!3975378) (not d!1177072) (not b_lambda!116179) (not b!3975424) (not b!3975512) (not b_next!110941) (not b!3975561) (not d!1177224) (not d!1177268) (not b!3975562) (not b!3975599) (not d!1177220) (not d!1177218) (not b!3975379) (not b!3975423) (not b!3975505) (not b!3975617) (not d!1177252) (not b_next!110943) b_and!305601 (not b!3975357) (not b!3975375) (not d!1177272) (not b!3975503) (not b!3975360) (not d!1177144) (not d!1177092) (not d!1177244) (not b!3975351) (not b!3975386) (not b!3975520) (not d!1177166) (not d!1177198) (not b!3975121) (not d!1177250) (not d!1177130) (not b!3975394) (not d!1177266) (not b!3975578) (not b!3975558) (not b!3975359) (not b!3975584) (not b!3975307) (not b!3975256) (not b!3975597) (not d!1177194) (not b!3975506) (not b!3975224) (not b!3975392) (not b!3975374) (not b!3975369) (not tb!239725) (not b!3975568) (not b!3975566) (not b!3975538) (not b!3975502) (not d!1177270) (not b!3975233) (not b!3975508) (not d!1177202) (not bm!285658) (not b!3975528) (not b!3975383) (not b!3975381) (not d!1177248) (not b_next!110929) (not b_lambda!116177) (not bm!285667) (not b!3975601) (not b!3975166) (not b!3975615) (not b!3975387) (not d!1177176) (not b!3975573) (not b!3975610) (not b!3975223) (not b!3975517) (not d!1177094) (not b!3975611))
(check-sat b_and!305579 b_and!305581 b_and!305603 b_and!305599 (not b_next!110935) (not b_next!110929) (not b_next!110931) b_and!305605 (not b_next!110933) (not b_next!110941) (not b_next!110943) b_and!305601)
