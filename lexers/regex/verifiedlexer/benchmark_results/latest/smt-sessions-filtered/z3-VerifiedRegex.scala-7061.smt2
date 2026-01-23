; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374480 () Bool)

(assert start!374480)

(declare-fun b!3978786 () Bool)

(declare-fun b_free!110409 () Bool)

(declare-fun b_next!111113 () Bool)

(assert (=> b!3978786 (= b_free!110409 (not b_next!111113))))

(declare-fun tp!1213054 () Bool)

(declare-fun b_and!305839 () Bool)

(assert (=> b!3978786 (= tp!1213054 b_and!305839)))

(declare-fun b_free!110411 () Bool)

(declare-fun b_next!111115 () Bool)

(assert (=> b!3978786 (= b_free!110411 (not b_next!111115))))

(declare-fun tp!1213055 () Bool)

(declare-fun b_and!305841 () Bool)

(assert (=> b!3978786 (= tp!1213055 b_and!305841)))

(declare-fun b!3978789 () Bool)

(declare-fun b_free!110413 () Bool)

(declare-fun b_next!111117 () Bool)

(assert (=> b!3978789 (= b_free!110413 (not b_next!111117))))

(declare-fun tp!1213052 () Bool)

(declare-fun b_and!305843 () Bool)

(assert (=> b!3978789 (= tp!1213052 b_and!305843)))

(declare-fun b_free!110415 () Bool)

(declare-fun b_next!111119 () Bool)

(assert (=> b!3978789 (= b_free!110415 (not b_next!111119))))

(declare-fun tp!1213046 () Bool)

(declare-fun b_and!305845 () Bool)

(assert (=> b!3978789 (= tp!1213046 b_and!305845)))

(declare-fun b!3978774 () Bool)

(declare-datatypes ((C!23416 0))(
  ( (C!23417 (val!13802 Int)) )
))
(declare-datatypes ((List!42652 0))(
  ( (Nil!42528) (Cons!42528 (h!47948 C!23416) (t!331211 List!42652)) )
))
(declare-datatypes ((IArray!25847 0))(
  ( (IArray!25848 (innerList!12981 List!42652)) )
))
(declare-datatypes ((Conc!12921 0))(
  ( (Node!12921 (left!32174 Conc!12921) (right!32504 Conc!12921) (csize!26072 Int) (cheight!13132 Int)) (Leaf!19983 (xs!16227 IArray!25847) (csize!26073 Int)) (Empty!12921) )
))
(declare-datatypes ((BalanceConc!25436 0))(
  ( (BalanceConc!25437 (c!689478 Conc!12921)) )
))
(declare-datatypes ((List!42653 0))(
  ( (Nil!42529) (Cons!42529 (h!47949 (_ BitVec 16)) (t!331212 List!42653)) )
))
(declare-datatypes ((TokenValue!6940 0))(
  ( (FloatLiteralValue!13880 (text!49025 List!42653)) (TokenValueExt!6939 (__x!26097 Int)) (Broken!34700 (value!211843 List!42653)) (Object!7063) (End!6940) (Def!6940) (Underscore!6940) (Match!6940) (Else!6940) (Error!6940) (Case!6940) (If!6940) (Extends!6940) (Abstract!6940) (Class!6940) (Val!6940) (DelimiterValue!13880 (del!7000 List!42653)) (KeywordValue!6946 (value!211844 List!42653)) (CommentValue!13880 (value!211845 List!42653)) (WhitespaceValue!13880 (value!211846 List!42653)) (IndentationValue!6940 (value!211847 List!42653)) (String!48417) (Int32!6940) (Broken!34701 (value!211848 List!42653)) (Boolean!6941) (Unit!61183) (OperatorValue!6943 (op!7000 List!42653)) (IdentifierValue!13880 (value!211849 List!42653)) (IdentifierValue!13881 (value!211850 List!42653)) (WhitespaceValue!13881 (value!211851 List!42653)) (True!13880) (False!13880) (Broken!34702 (value!211852 List!42653)) (Broken!34703 (value!211853 List!42653)) (True!13881) (RightBrace!6940) (RightBracket!6940) (Colon!6940) (Null!6940) (Comma!6940) (LeftBracket!6940) (False!13881) (LeftBrace!6940) (ImaginaryLiteralValue!6940 (text!49026 List!42653)) (StringLiteralValue!20820 (value!211854 List!42653)) (EOFValue!6940 (value!211855 List!42653)) (IdentValue!6940 (value!211856 List!42653)) (DelimiterValue!13881 (value!211857 List!42653)) (DedentValue!6940 (value!211858 List!42653)) (NewLineValue!6940 (value!211859 List!42653)) (IntegerValue!20820 (value!211860 (_ BitVec 32)) (text!49027 List!42653)) (IntegerValue!20821 (value!211861 Int) (text!49028 List!42653)) (Times!6940) (Or!6940) (Equal!6940) (Minus!6940) (Broken!34704 (value!211862 List!42653)) (And!6940) (Div!6940) (LessEqual!6940) (Mod!6940) (Concat!18555) (Not!6940) (Plus!6940) (SpaceValue!6940 (value!211863 List!42653)) (IntegerValue!20822 (value!211864 Int) (text!49029 List!42653)) (StringLiteralValue!20821 (text!49030 List!42653)) (FloatLiteralValue!13881 (text!49031 List!42653)) (BytesLiteralValue!6940 (value!211865 List!42653)) (CommentValue!13881 (value!211866 List!42653)) (StringLiteralValue!20822 (value!211867 List!42653)) (ErrorTokenValue!6940 (msg!7001 List!42653)) )
))
(declare-datatypes ((Regex!11615 0))(
  ( (ElementMatch!11615 (c!689479 C!23416)) (Concat!18556 (regOne!23742 Regex!11615) (regTwo!23742 Regex!11615)) (EmptyExpr!11615) (Star!11615 (reg!11944 Regex!11615)) (EmptyLang!11615) (Union!11615 (regOne!23743 Regex!11615) (regTwo!23743 Regex!11615)) )
))
(declare-datatypes ((String!48418 0))(
  ( (String!48419 (value!211868 String)) )
))
(declare-datatypes ((TokenValueInjection!13308 0))(
  ( (TokenValueInjection!13309 (toValue!9198 Int) (toChars!9057 Int)) )
))
(declare-datatypes ((Rule!13220 0))(
  ( (Rule!13221 (regex!6710 Regex!11615) (tag!7570 String!48418) (isSeparator!6710 Bool) (transformation!6710 TokenValueInjection!13308)) )
))
(declare-datatypes ((Token!12558 0))(
  ( (Token!12559 (value!211869 TokenValue!6940) (rule!9712 Rule!13220) (size!31814 Int) (originalCharacters!7310 List!42652)) )
))
(declare-fun token!484 () Token!12558)

(declare-fun e!2465519 () Bool)

(declare-fun e!2465505 () Bool)

(declare-fun tp!1213051 () Bool)

(declare-fun inv!56813 (String!48418) Bool)

(declare-fun inv!56816 (TokenValueInjection!13308) Bool)

(assert (=> b!3978774 (= e!2465519 (and tp!1213051 (inv!56813 (tag!7570 (rule!9712 token!484))) (inv!56816 (transformation!6710 (rule!9712 token!484))) e!2465505))))

(declare-fun b!3978775 () Bool)

(declare-fun e!2465510 () Bool)

(declare-fun e!2465513 () Bool)

(declare-fun tp!1213049 () Bool)

(assert (=> b!3978775 (= e!2465510 (and e!2465513 tp!1213049))))

(declare-fun b!3978776 () Bool)

(declare-fun e!2465506 () Bool)

(declare-fun e!2465500 () Bool)

(assert (=> b!3978776 (= e!2465506 e!2465500)))

(declare-fun res!1612011 () Bool)

(assert (=> b!3978776 (=> (not res!1612011) (not e!2465500))))

(declare-fun lt!1396508 () List!42652)

(declare-fun lt!1396510 () List!42652)

(assert (=> b!3978776 (= res!1612011 (= lt!1396508 lt!1396510))))

(declare-fun prefix!494 () List!42652)

(declare-fun newSuffix!27 () List!42652)

(declare-fun ++!11112 (List!42652 List!42652) List!42652)

(assert (=> b!3978776 (= lt!1396510 (++!11112 prefix!494 newSuffix!27))))

(declare-fun lt!1396488 () List!42652)

(declare-fun newSuffixResult!27 () List!42652)

(assert (=> b!3978776 (= lt!1396508 (++!11112 lt!1396488 newSuffixResult!27))))

(declare-fun b!3978777 () Bool)

(declare-fun res!1611999 () Bool)

(declare-fun e!2465511 () Bool)

(assert (=> b!3978777 (=> (not res!1611999) (not e!2465511))))

(declare-fun suffix!1299 () List!42652)

(declare-fun size!31815 (List!42652) Int)

(assert (=> b!3978777 (= res!1611999 (>= (size!31815 suffix!1299) (size!31815 newSuffix!27)))))

(declare-fun b!3978778 () Bool)

(declare-fun e!2465524 () Bool)

(declare-fun e!2465499 () Bool)

(assert (=> b!3978778 (= e!2465524 e!2465499)))

(declare-fun res!1611996 () Bool)

(assert (=> b!3978778 (=> res!1611996 e!2465499)))

(declare-datatypes ((tuple2!41760 0))(
  ( (tuple2!41761 (_1!24014 Token!12558) (_2!24014 List!42652)) )
))
(declare-datatypes ((Option!9124 0))(
  ( (None!9123) (Some!9123 (v!39471 tuple2!41760)) )
))
(declare-fun lt!1396499 () Option!9124)

(declare-fun lt!1396519 () Option!9124)

(assert (=> b!3978778 (= res!1611996 (not (= lt!1396499 (Some!9123 (v!39471 lt!1396519)))))))

(declare-fun lt!1396523 () List!42652)

(declare-fun isPrefix!3797 (List!42652 List!42652) Bool)

(assert (=> b!3978778 (isPrefix!3797 lt!1396523 (++!11112 lt!1396523 newSuffixResult!27))))

(declare-datatypes ((Unit!61184 0))(
  ( (Unit!61185) )
))
(declare-fun lt!1396501 () Unit!61184)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2640 (List!42652 List!42652) Unit!61184)

(assert (=> b!3978778 (= lt!1396501 (lemmaConcatTwoListThenFirstIsPrefix!2640 lt!1396523 newSuffixResult!27))))

(declare-fun lt!1396486 () List!42652)

(assert (=> b!3978778 (isPrefix!3797 lt!1396523 lt!1396486)))

(assert (=> b!3978778 (= lt!1396486 (++!11112 lt!1396523 (_2!24014 (v!39471 lt!1396519))))))

(declare-fun lt!1396533 () Unit!61184)

(assert (=> b!3978778 (= lt!1396533 (lemmaConcatTwoListThenFirstIsPrefix!2640 lt!1396523 (_2!24014 (v!39471 lt!1396519))))))

(declare-fun lt!1396491 () TokenValue!6940)

(declare-fun lt!1396506 () Int)

(assert (=> b!3978778 (= lt!1396499 (Some!9123 (tuple2!41761 (Token!12559 lt!1396491 (rule!9712 (_1!24014 (v!39471 lt!1396519))) lt!1396506 lt!1396523) (_2!24014 (v!39471 lt!1396519)))))))

(declare-datatypes ((LexerInterface!6299 0))(
  ( (LexerInterfaceExt!6296 (__x!26098 Int)) (Lexer!6297) )
))
(declare-fun thiss!21717 () LexerInterface!6299)

(declare-fun maxPrefixOneRule!2631 (LexerInterface!6299 Rule!13220 List!42652) Option!9124)

(assert (=> b!3978778 (= lt!1396499 (maxPrefixOneRule!2631 thiss!21717 (rule!9712 (_1!24014 (v!39471 lt!1396519))) lt!1396510))))

(assert (=> b!3978778 (= lt!1396506 (size!31815 lt!1396523))))

(declare-fun apply!9921 (TokenValueInjection!13308 BalanceConc!25436) TokenValue!6940)

(declare-fun seqFromList!4949 (List!42652) BalanceConc!25436)

(assert (=> b!3978778 (= lt!1396491 (apply!9921 (transformation!6710 (rule!9712 (_1!24014 (v!39471 lt!1396519)))) (seqFromList!4949 lt!1396523)))))

(declare-datatypes ((List!42654 0))(
  ( (Nil!42530) (Cons!42530 (h!47950 Rule!13220) (t!331213 List!42654)) )
))
(declare-fun rules!2999 () List!42654)

(declare-fun lt!1396512 () Unit!61184)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1453 (LexerInterface!6299 List!42654 List!42652 List!42652 List!42652 Rule!13220) Unit!61184)

(assert (=> b!3978778 (= lt!1396512 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1453 thiss!21717 rules!2999 lt!1396523 lt!1396510 (_2!24014 (v!39471 lt!1396519)) (rule!9712 (_1!24014 (v!39471 lt!1396519)))))))

(declare-fun list!15784 (BalanceConc!25436) List!42652)

(declare-fun charsOf!4526 (Token!12558) BalanceConc!25436)

(assert (=> b!3978778 (= lt!1396523 (list!15784 (charsOf!4526 (_1!24014 (v!39471 lt!1396519)))))))

(declare-fun lt!1396509 () Unit!61184)

(declare-fun lemmaInv!925 (TokenValueInjection!13308) Unit!61184)

(assert (=> b!3978778 (= lt!1396509 (lemmaInv!925 (transformation!6710 (rule!9712 (_1!24014 (v!39471 lt!1396519))))))))

(declare-fun ruleValid!2642 (LexerInterface!6299 Rule!13220) Bool)

(assert (=> b!3978778 (ruleValid!2642 thiss!21717 (rule!9712 (_1!24014 (v!39471 lt!1396519))))))

(declare-fun lt!1396528 () Unit!61184)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1716 (LexerInterface!6299 Rule!13220 List!42654) Unit!61184)

(assert (=> b!3978778 (= lt!1396528 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1716 thiss!21717 (rule!9712 (_1!24014 (v!39471 lt!1396519))) rules!2999))))

(declare-fun lt!1396494 () Unit!61184)

(declare-fun lemmaCharactersSize!1305 (Token!12558) Unit!61184)

(assert (=> b!3978778 (= lt!1396494 (lemmaCharactersSize!1305 token!484))))

(declare-fun lt!1396500 () Unit!61184)

(assert (=> b!3978778 (= lt!1396500 (lemmaCharactersSize!1305 (_1!24014 (v!39471 lt!1396519))))))

(declare-fun b!3978779 () Bool)

(declare-fun e!2465527 () Bool)

(declare-fun e!2465518 () Bool)

(assert (=> b!3978779 (= e!2465527 (not e!2465518))))

(declare-fun res!1611991 () Bool)

(assert (=> b!3978779 (=> res!1611991 e!2465518)))

(declare-fun lt!1396531 () List!42652)

(declare-fun lt!1396517 () List!42652)

(assert (=> b!3978779 (= res!1611991 (not (= lt!1396531 lt!1396517)))))

(declare-fun suffixResult!105 () List!42652)

(assert (=> b!3978779 (= lt!1396531 (++!11112 lt!1396488 suffixResult!105))))

(declare-fun lt!1396507 () Unit!61184)

(assert (=> b!3978779 (= lt!1396507 (lemmaInv!925 (transformation!6710 (rule!9712 token!484))))))

(assert (=> b!3978779 (ruleValid!2642 thiss!21717 (rule!9712 token!484))))

(declare-fun lt!1396515 () Unit!61184)

(assert (=> b!3978779 (= lt!1396515 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1716 thiss!21717 (rule!9712 token!484) rules!2999))))

(declare-fun e!2465508 () Bool)

(declare-fun b!3978780 () Bool)

(declare-fun tp!1213057 () Bool)

(declare-fun inv!21 (TokenValue!6940) Bool)

(assert (=> b!3978780 (= e!2465508 (and (inv!21 (value!211869 token!484)) e!2465519 tp!1213057))))

(declare-fun b!3978781 () Bool)

(declare-fun e!2465504 () Bool)

(declare-fun tp_is_empty!20201 () Bool)

(declare-fun tp!1213047 () Bool)

(assert (=> b!3978781 (= e!2465504 (and tp_is_empty!20201 tp!1213047))))

(declare-fun b!3978782 () Bool)

(declare-fun e!2465528 () Bool)

(declare-fun e!2465520 () Bool)

(assert (=> b!3978782 (= e!2465528 e!2465520)))

(declare-fun res!1611988 () Bool)

(assert (=> b!3978782 (=> res!1611988 e!2465520)))

(declare-fun lt!1396527 () List!42652)

(assert (=> b!3978782 (= res!1611988 (not (= lt!1396527 prefix!494)))))

(declare-fun lt!1396487 () List!42652)

(assert (=> b!3978782 (= lt!1396527 (++!11112 lt!1396488 lt!1396487))))

(declare-fun getSuffix!2228 (List!42652 List!42652) List!42652)

(assert (=> b!3978782 (= lt!1396487 (getSuffix!2228 prefix!494 lt!1396488))))

(assert (=> b!3978782 (isPrefix!3797 lt!1396488 prefix!494)))

(declare-fun lt!1396495 () Unit!61184)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!375 (List!42652 List!42652 List!42652) Unit!61184)

(assert (=> b!3978782 (= lt!1396495 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!375 prefix!494 lt!1396488 lt!1396517))))

(declare-fun b!3978783 () Bool)

(declare-fun e!2465503 () Bool)

(declare-fun e!2465523 () Bool)

(assert (=> b!3978783 (= e!2465503 e!2465523)))

(declare-fun res!1612012 () Bool)

(assert (=> b!3978783 (=> res!1612012 e!2465523)))

(assert (=> b!3978783 (= res!1612012 (not (isPrefix!3797 lt!1396523 lt!1396517)))))

(declare-fun lt!1396492 () List!42652)

(assert (=> b!3978783 (isPrefix!3797 lt!1396523 lt!1396492)))

(declare-fun lt!1396525 () List!42652)

(declare-fun lt!1396514 () Unit!61184)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!630 (List!42652 List!42652 List!42652) Unit!61184)

(assert (=> b!3978783 (= lt!1396514 (lemmaPrefixStaysPrefixWhenAddingToSuffix!630 lt!1396523 lt!1396510 lt!1396525))))

(declare-fun b!3978784 () Bool)

(assert (=> b!3978784 (= e!2465500 e!2465527)))

(declare-fun res!1612003 () Bool)

(assert (=> b!3978784 (=> (not res!1612003) (not e!2465527))))

(declare-fun lt!1396520 () Option!9124)

(declare-fun maxPrefix!3597 (LexerInterface!6299 List!42654 List!42652) Option!9124)

(assert (=> b!3978784 (= res!1612003 (= (maxPrefix!3597 thiss!21717 rules!2999 lt!1396517) lt!1396520))))

(declare-fun lt!1396485 () tuple2!41760)

(assert (=> b!3978784 (= lt!1396520 (Some!9123 lt!1396485))))

(assert (=> b!3978784 (= lt!1396485 (tuple2!41761 token!484 suffixResult!105))))

(assert (=> b!3978784 (= lt!1396517 (++!11112 prefix!494 suffix!1299))))

(declare-fun res!1612008 () Bool)

(assert (=> start!374480 (=> (not res!1612008) (not e!2465511))))

(get-info :version)

(assert (=> start!374480 (= res!1612008 ((_ is Lexer!6297) thiss!21717))))

(assert (=> start!374480 e!2465511))

(declare-fun e!2465498 () Bool)

(assert (=> start!374480 e!2465498))

(declare-fun inv!56817 (Token!12558) Bool)

(assert (=> start!374480 (and (inv!56817 token!484) e!2465508)))

(declare-fun e!2465502 () Bool)

(assert (=> start!374480 e!2465502))

(declare-fun e!2465526 () Bool)

(assert (=> start!374480 e!2465526))

(assert (=> start!374480 e!2465504))

(assert (=> start!374480 true))

(assert (=> start!374480 e!2465510))

(declare-fun e!2465514 () Bool)

(assert (=> start!374480 e!2465514))

(declare-fun b!3978773 () Bool)

(declare-fun e!2465517 () Bool)

(declare-fun e!2465512 () Bool)

(assert (=> b!3978773 (= e!2465517 e!2465512)))

(declare-fun res!1611993 () Bool)

(assert (=> b!3978773 (=> res!1611993 e!2465512)))

(declare-fun matchR!5592 (Regex!11615 List!42652) Bool)

(assert (=> b!3978773 (= res!1611993 (not (matchR!5592 (regex!6710 (rule!9712 token!484)) lt!1396488)))))

(assert (=> b!3978773 (isPrefix!3797 lt!1396488 lt!1396510)))

(declare-fun lt!1396493 () Unit!61184)

(assert (=> b!3978773 (= lt!1396493 (lemmaPrefixStaysPrefixWhenAddingToSuffix!630 lt!1396488 prefix!494 newSuffix!27))))

(declare-fun lt!1396518 () Unit!61184)

(assert (=> b!3978773 (= lt!1396518 (lemmaPrefixStaysPrefixWhenAddingToSuffix!630 lt!1396488 prefix!494 suffix!1299))))

(declare-fun b!3978785 () Bool)

(assert (=> b!3978785 (= e!2465511 e!2465506)))

(declare-fun res!1612010 () Bool)

(assert (=> b!3978785 (=> (not res!1612010) (not e!2465506))))

(declare-fun lt!1396534 () Int)

(declare-fun lt!1396535 () Int)

(assert (=> b!3978785 (= res!1612010 (>= lt!1396534 lt!1396535))))

(assert (=> b!3978785 (= lt!1396535 (size!31815 lt!1396488))))

(assert (=> b!3978785 (= lt!1396534 (size!31815 prefix!494))))

(assert (=> b!3978785 (= lt!1396488 (list!15784 (charsOf!4526 token!484)))))

(assert (=> b!3978786 (= e!2465505 (and tp!1213054 tp!1213055))))

(declare-fun b!3978787 () Bool)

(declare-fun res!1611990 () Bool)

(assert (=> b!3978787 (=> res!1611990 e!2465523)))

(assert (=> b!3978787 (= res!1611990 (not (= lt!1396486 lt!1396510)))))

(declare-fun b!3978788 () Bool)

(declare-fun res!1612000 () Bool)

(assert (=> b!3978788 (=> res!1612000 e!2465523)))

(assert (=> b!3978788 (= res!1612000 (< (size!31815 lt!1396510) lt!1396506))))

(declare-fun e!2465521 () Bool)

(assert (=> b!3978789 (= e!2465521 (and tp!1213052 tp!1213046))))

(declare-fun b!3978790 () Bool)

(declare-fun tp!1213056 () Bool)

(assert (=> b!3978790 (= e!2465498 (and tp_is_empty!20201 tp!1213056))))

(declare-fun b!3978791 () Bool)

(declare-fun res!1611989 () Bool)

(assert (=> b!3978791 (=> (not res!1611989) (not e!2465511))))

(declare-fun isEmpty!25430 (List!42654) Bool)

(assert (=> b!3978791 (= res!1611989 (not (isEmpty!25430 rules!2999)))))

(declare-fun tp!1213048 () Bool)

(declare-fun b!3978792 () Bool)

(assert (=> b!3978792 (= e!2465513 (and tp!1213048 (inv!56813 (tag!7570 (h!47950 rules!2999))) (inv!56816 (transformation!6710 (h!47950 rules!2999))) e!2465521))))

(declare-fun b!3978793 () Bool)

(declare-fun res!1612006 () Bool)

(declare-fun e!2465515 () Bool)

(assert (=> b!3978793 (=> (not res!1612006) (not e!2465515))))

(assert (=> b!3978793 (= res!1612006 (= (size!31814 token!484) (size!31815 (originalCharacters!7310 token!484))))))

(declare-fun b!3978794 () Bool)

(declare-fun res!1611992 () Bool)

(assert (=> b!3978794 (=> (not res!1611992) (not e!2465515))))

(declare-fun lt!1396505 () TokenValue!6940)

(assert (=> b!3978794 (= res!1611992 (= (value!211869 token!484) lt!1396505))))

(declare-fun b!3978795 () Bool)

(declare-fun res!1612009 () Bool)

(assert (=> b!3978795 (=> (not res!1612009) (not e!2465511))))

(declare-fun rulesInvariant!5642 (LexerInterface!6299 List!42654) Bool)

(assert (=> b!3978795 (= res!1612009 (rulesInvariant!5642 thiss!21717 rules!2999))))

(declare-fun b!3978796 () Bool)

(declare-fun e!2465507 () Bool)

(assert (=> b!3978796 (= e!2465512 e!2465507)))

(declare-fun res!1612001 () Bool)

(assert (=> b!3978796 (=> res!1612001 e!2465507)))

(declare-fun lt!1396498 () List!42652)

(assert (=> b!3978796 (= res!1612001 (not (= lt!1396498 lt!1396517)))))

(declare-fun lt!1396522 () List!42652)

(assert (=> b!3978796 (= lt!1396498 (++!11112 lt!1396488 lt!1396522))))

(assert (=> b!3978796 (= lt!1396522 (getSuffix!2228 lt!1396517 lt!1396488))))

(assert (=> b!3978796 e!2465515))

(declare-fun res!1612004 () Bool)

(assert (=> b!3978796 (=> (not res!1612004) (not e!2465515))))

(assert (=> b!3978796 (= res!1612004 (isPrefix!3797 lt!1396517 lt!1396517))))

(declare-fun lt!1396503 () Unit!61184)

(declare-fun lemmaIsPrefixRefl!2389 (List!42652 List!42652) Unit!61184)

(assert (=> b!3978796 (= lt!1396503 (lemmaIsPrefixRefl!2389 lt!1396517 lt!1396517))))

(declare-fun b!3978797 () Bool)

(assert (=> b!3978797 (= e!2465523 (isPrefix!3797 lt!1396523 lt!1396510))))

(declare-fun b!3978798 () Bool)

(assert (=> b!3978798 (= e!2465518 e!2465528)))

(declare-fun res!1611997 () Bool)

(assert (=> b!3978798 (=> res!1611997 e!2465528)))

(assert (=> b!3978798 (= res!1611997 (not (isPrefix!3797 lt!1396488 lt!1396517)))))

(assert (=> b!3978798 (isPrefix!3797 prefix!494 lt!1396517)))

(declare-fun lt!1396524 () Unit!61184)

(assert (=> b!3978798 (= lt!1396524 (lemmaConcatTwoListThenFirstIsPrefix!2640 prefix!494 suffix!1299))))

(assert (=> b!3978798 (isPrefix!3797 lt!1396488 lt!1396531)))

(declare-fun lt!1396496 () Unit!61184)

(assert (=> b!3978798 (= lt!1396496 (lemmaConcatTwoListThenFirstIsPrefix!2640 lt!1396488 suffixResult!105))))

(declare-fun b!3978799 () Bool)

(assert (=> b!3978799 (= e!2465507 e!2465524)))

(declare-fun res!1611994 () Bool)

(assert (=> b!3978799 (=> res!1611994 e!2465524)))

(assert (=> b!3978799 (= res!1611994 (not ((_ is Some!9123) lt!1396519)))))

(assert (=> b!3978799 (= lt!1396519 (maxPrefix!3597 thiss!21717 rules!2999 lt!1396510))))

(declare-fun lt!1396529 () Token!12558)

(assert (=> b!3978799 (and (= suffixResult!105 lt!1396522) (= lt!1396485 (tuple2!41761 lt!1396529 lt!1396522)))))

(declare-fun lt!1396490 () Unit!61184)

(declare-fun lemmaSamePrefixThenSameSuffix!1984 (List!42652 List!42652 List!42652 List!42652 List!42652) Unit!61184)

(assert (=> b!3978799 (= lt!1396490 (lemmaSamePrefixThenSameSuffix!1984 lt!1396488 suffixResult!105 lt!1396488 lt!1396522 lt!1396517))))

(assert (=> b!3978799 (isPrefix!3797 lt!1396488 lt!1396498)))

(declare-fun lt!1396504 () Unit!61184)

(assert (=> b!3978799 (= lt!1396504 (lemmaConcatTwoListThenFirstIsPrefix!2640 lt!1396488 lt!1396522))))

(declare-fun b!3978800 () Bool)

(declare-fun tp!1213058 () Bool)

(assert (=> b!3978800 (= e!2465502 (and tp_is_empty!20201 tp!1213058))))

(declare-fun b!3978801 () Bool)

(declare-fun e!2465522 () Bool)

(assert (=> b!3978801 (= e!2465522 e!2465517)))

(declare-fun res!1612002 () Bool)

(assert (=> b!3978801 (=> res!1612002 e!2465517)))

(declare-fun lt!1396502 () Option!9124)

(assert (=> b!3978801 (= res!1612002 (not (= lt!1396502 lt!1396520)))))

(assert (=> b!3978801 (= lt!1396502 (Some!9123 (tuple2!41761 lt!1396529 suffixResult!105)))))

(assert (=> b!3978801 (= lt!1396502 (maxPrefixOneRule!2631 thiss!21717 (rule!9712 token!484) lt!1396517))))

(assert (=> b!3978801 (= lt!1396529 (Token!12559 lt!1396505 (rule!9712 token!484) lt!1396535 lt!1396488))))

(assert (=> b!3978801 (= lt!1396505 (apply!9921 (transformation!6710 (rule!9712 token!484)) (seqFromList!4949 lt!1396488)))))

(declare-fun lt!1396526 () Unit!61184)

(assert (=> b!3978801 (= lt!1396526 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1453 thiss!21717 rules!2999 lt!1396488 lt!1396517 suffixResult!105 (rule!9712 token!484)))))

(declare-fun lt!1396489 () List!42652)

(assert (=> b!3978801 (= lt!1396489 suffixResult!105)))

(declare-fun lt!1396521 () Unit!61184)

(assert (=> b!3978801 (= lt!1396521 (lemmaSamePrefixThenSameSuffix!1984 lt!1396488 lt!1396489 lt!1396488 suffixResult!105 lt!1396517))))

(declare-fun lt!1396511 () List!42652)

(assert (=> b!3978801 (isPrefix!3797 lt!1396488 lt!1396511)))

(declare-fun lt!1396497 () Unit!61184)

(assert (=> b!3978801 (= lt!1396497 (lemmaConcatTwoListThenFirstIsPrefix!2640 lt!1396488 lt!1396489))))

(declare-fun b!3978802 () Bool)

(assert (=> b!3978802 (= e!2465520 e!2465522)))

(declare-fun res!1611998 () Bool)

(assert (=> b!3978802 (=> res!1611998 e!2465522)))

(declare-fun lt!1396530 () List!42652)

(assert (=> b!3978802 (= res!1611998 (or (not (= lt!1396517 lt!1396530)) (not (= lt!1396517 lt!1396511))))))

(assert (=> b!3978802 (= lt!1396530 lt!1396511)))

(assert (=> b!3978802 (= lt!1396511 (++!11112 lt!1396488 lt!1396489))))

(assert (=> b!3978802 (= lt!1396530 (++!11112 lt!1396527 suffix!1299))))

(assert (=> b!3978802 (= lt!1396489 (++!11112 lt!1396487 suffix!1299))))

(declare-fun lt!1396513 () Unit!61184)

(declare-fun lemmaConcatAssociativity!2432 (List!42652 List!42652 List!42652) Unit!61184)

(assert (=> b!3978802 (= lt!1396513 (lemmaConcatAssociativity!2432 lt!1396488 lt!1396487 suffix!1299))))

(declare-fun b!3978803 () Bool)

(declare-fun e!2465501 () Bool)

(assert (=> b!3978803 (= e!2465499 e!2465501)))

(declare-fun res!1611995 () Bool)

(assert (=> b!3978803 (=> res!1611995 e!2465501)))

(declare-fun lt!1396532 () List!42652)

(assert (=> b!3978803 (= res!1611995 (not (= lt!1396532 suffix!1299)))))

(assert (=> b!3978803 (= lt!1396532 (++!11112 newSuffix!27 lt!1396525))))

(assert (=> b!3978803 (= lt!1396525 (getSuffix!2228 suffix!1299 newSuffix!27))))

(declare-fun b!3978804 () Bool)

(declare-fun tp!1213053 () Bool)

(assert (=> b!3978804 (= e!2465526 (and tp_is_empty!20201 tp!1213053))))

(declare-fun b!3978805 () Bool)

(declare-fun tp!1213050 () Bool)

(assert (=> b!3978805 (= e!2465514 (and tp_is_empty!20201 tp!1213050))))

(declare-fun b!3978806 () Bool)

(assert (=> b!3978806 (= e!2465501 e!2465503)))

(declare-fun res!1612005 () Bool)

(assert (=> b!3978806 (=> res!1612005 e!2465503)))

(assert (=> b!3978806 (= res!1612005 (not (= lt!1396492 lt!1396517)))))

(assert (=> b!3978806 (= lt!1396492 (++!11112 prefix!494 lt!1396532))))

(assert (=> b!3978806 (= lt!1396492 (++!11112 lt!1396510 lt!1396525))))

(declare-fun lt!1396516 () Unit!61184)

(assert (=> b!3978806 (= lt!1396516 (lemmaConcatAssociativity!2432 prefix!494 newSuffix!27 lt!1396525))))

(declare-fun b!3978807 () Bool)

(declare-fun res!1612007 () Bool)

(assert (=> b!3978807 (=> (not res!1612007) (not e!2465511))))

(assert (=> b!3978807 (= res!1612007 (isPrefix!3797 newSuffix!27 suffix!1299))))

(declare-fun b!3978808 () Bool)

(assert (=> b!3978808 (= e!2465515 (and (= (size!31814 token!484) lt!1396535) (= (originalCharacters!7310 token!484) lt!1396488)))))

(assert (= (and start!374480 res!1612008) b!3978791))

(assert (= (and b!3978791 res!1611989) b!3978795))

(assert (= (and b!3978795 res!1612009) b!3978777))

(assert (= (and b!3978777 res!1611999) b!3978807))

(assert (= (and b!3978807 res!1612007) b!3978785))

(assert (= (and b!3978785 res!1612010) b!3978776))

(assert (= (and b!3978776 res!1612011) b!3978784))

(assert (= (and b!3978784 res!1612003) b!3978779))

(assert (= (and b!3978779 (not res!1611991)) b!3978798))

(assert (= (and b!3978798 (not res!1611997)) b!3978782))

(assert (= (and b!3978782 (not res!1611988)) b!3978802))

(assert (= (and b!3978802 (not res!1611998)) b!3978801))

(assert (= (and b!3978801 (not res!1612002)) b!3978773))

(assert (= (and b!3978773 (not res!1611993)) b!3978796))

(assert (= (and b!3978796 res!1612004) b!3978794))

(assert (= (and b!3978794 res!1611992) b!3978793))

(assert (= (and b!3978793 res!1612006) b!3978808))

(assert (= (and b!3978796 (not res!1612001)) b!3978799))

(assert (= (and b!3978799 (not res!1611994)) b!3978778))

(assert (= (and b!3978778 (not res!1611996)) b!3978803))

(assert (= (and b!3978803 (not res!1611995)) b!3978806))

(assert (= (and b!3978806 (not res!1612005)) b!3978783))

(assert (= (and b!3978783 (not res!1612012)) b!3978787))

(assert (= (and b!3978787 (not res!1611990)) b!3978788))

(assert (= (and b!3978788 (not res!1612000)) b!3978797))

(assert (= (and start!374480 ((_ is Cons!42528) prefix!494)) b!3978790))

(assert (= b!3978774 b!3978786))

(assert (= b!3978780 b!3978774))

(assert (= start!374480 b!3978780))

(assert (= (and start!374480 ((_ is Cons!42528) suffixResult!105)) b!3978800))

(assert (= (and start!374480 ((_ is Cons!42528) suffix!1299)) b!3978804))

(assert (= (and start!374480 ((_ is Cons!42528) newSuffix!27)) b!3978781))

(assert (= b!3978792 b!3978789))

(assert (= b!3978775 b!3978792))

(assert (= (and start!374480 ((_ is Cons!42530) rules!2999)) b!3978775))

(assert (= (and start!374480 ((_ is Cons!42528) newSuffixResult!27)) b!3978805))

(declare-fun m!4550989 () Bool)

(assert (=> b!3978797 m!4550989))

(declare-fun m!4550991 () Bool)

(assert (=> b!3978801 m!4550991))

(declare-fun m!4550993 () Bool)

(assert (=> b!3978801 m!4550993))

(declare-fun m!4550995 () Bool)

(assert (=> b!3978801 m!4550995))

(declare-fun m!4550997 () Bool)

(assert (=> b!3978801 m!4550997))

(declare-fun m!4550999 () Bool)

(assert (=> b!3978801 m!4550999))

(declare-fun m!4551001 () Bool)

(assert (=> b!3978801 m!4551001))

(assert (=> b!3978801 m!4550999))

(declare-fun m!4551003 () Bool)

(assert (=> b!3978801 m!4551003))

(declare-fun m!4551005 () Bool)

(assert (=> b!3978795 m!4551005))

(declare-fun m!4551007 () Bool)

(assert (=> b!3978778 m!4551007))

(declare-fun m!4551009 () Bool)

(assert (=> b!3978778 m!4551009))

(declare-fun m!4551011 () Bool)

(assert (=> b!3978778 m!4551011))

(declare-fun m!4551013 () Bool)

(assert (=> b!3978778 m!4551013))

(declare-fun m!4551015 () Bool)

(assert (=> b!3978778 m!4551015))

(declare-fun m!4551017 () Bool)

(assert (=> b!3978778 m!4551017))

(declare-fun m!4551019 () Bool)

(assert (=> b!3978778 m!4551019))

(declare-fun m!4551021 () Bool)

(assert (=> b!3978778 m!4551021))

(assert (=> b!3978778 m!4551015))

(declare-fun m!4551023 () Bool)

(assert (=> b!3978778 m!4551023))

(declare-fun m!4551025 () Bool)

(assert (=> b!3978778 m!4551025))

(declare-fun m!4551027 () Bool)

(assert (=> b!3978778 m!4551027))

(declare-fun m!4551029 () Bool)

(assert (=> b!3978778 m!4551029))

(declare-fun m!4551031 () Bool)

(assert (=> b!3978778 m!4551031))

(assert (=> b!3978778 m!4551027))

(declare-fun m!4551033 () Bool)

(assert (=> b!3978778 m!4551033))

(assert (=> b!3978778 m!4551009))

(declare-fun m!4551035 () Bool)

(assert (=> b!3978778 m!4551035))

(declare-fun m!4551037 () Bool)

(assert (=> b!3978778 m!4551037))

(declare-fun m!4551039 () Bool)

(assert (=> b!3978778 m!4551039))

(declare-fun m!4551041 () Bool)

(assert (=> b!3978778 m!4551041))

(declare-fun m!4551043 () Bool)

(assert (=> b!3978784 m!4551043))

(declare-fun m!4551045 () Bool)

(assert (=> b!3978784 m!4551045))

(declare-fun m!4551047 () Bool)

(assert (=> b!3978777 m!4551047))

(declare-fun m!4551049 () Bool)

(assert (=> b!3978777 m!4551049))

(declare-fun m!4551051 () Bool)

(assert (=> b!3978807 m!4551051))

(declare-fun m!4551053 () Bool)

(assert (=> b!3978773 m!4551053))

(declare-fun m!4551055 () Bool)

(assert (=> b!3978773 m!4551055))

(declare-fun m!4551057 () Bool)

(assert (=> b!3978773 m!4551057))

(declare-fun m!4551059 () Bool)

(assert (=> b!3978773 m!4551059))

(declare-fun m!4551061 () Bool)

(assert (=> b!3978791 m!4551061))

(declare-fun m!4551063 () Bool)

(assert (=> b!3978779 m!4551063))

(declare-fun m!4551065 () Bool)

(assert (=> b!3978779 m!4551065))

(declare-fun m!4551067 () Bool)

(assert (=> b!3978779 m!4551067))

(declare-fun m!4551069 () Bool)

(assert (=> b!3978779 m!4551069))

(declare-fun m!4551071 () Bool)

(assert (=> b!3978799 m!4551071))

(declare-fun m!4551073 () Bool)

(assert (=> b!3978799 m!4551073))

(declare-fun m!4551075 () Bool)

(assert (=> b!3978799 m!4551075))

(declare-fun m!4551077 () Bool)

(assert (=> b!3978799 m!4551077))

(declare-fun m!4551079 () Bool)

(assert (=> b!3978783 m!4551079))

(declare-fun m!4551081 () Bool)

(assert (=> b!3978783 m!4551081))

(declare-fun m!4551083 () Bool)

(assert (=> b!3978783 m!4551083))

(declare-fun m!4551085 () Bool)

(assert (=> b!3978792 m!4551085))

(declare-fun m!4551087 () Bool)

(assert (=> b!3978792 m!4551087))

(declare-fun m!4551089 () Bool)

(assert (=> b!3978774 m!4551089))

(declare-fun m!4551091 () Bool)

(assert (=> b!3978774 m!4551091))

(declare-fun m!4551093 () Bool)

(assert (=> b!3978788 m!4551093))

(declare-fun m!4551095 () Bool)

(assert (=> b!3978803 m!4551095))

(declare-fun m!4551097 () Bool)

(assert (=> b!3978803 m!4551097))

(declare-fun m!4551099 () Bool)

(assert (=> b!3978793 m!4551099))

(declare-fun m!4551101 () Bool)

(assert (=> start!374480 m!4551101))

(declare-fun m!4551103 () Bool)

(assert (=> b!3978802 m!4551103))

(declare-fun m!4551105 () Bool)

(assert (=> b!3978802 m!4551105))

(declare-fun m!4551107 () Bool)

(assert (=> b!3978802 m!4551107))

(declare-fun m!4551109 () Bool)

(assert (=> b!3978802 m!4551109))

(declare-fun m!4551111 () Bool)

(assert (=> b!3978785 m!4551111))

(declare-fun m!4551113 () Bool)

(assert (=> b!3978785 m!4551113))

(declare-fun m!4551115 () Bool)

(assert (=> b!3978785 m!4551115))

(assert (=> b!3978785 m!4551115))

(declare-fun m!4551117 () Bool)

(assert (=> b!3978785 m!4551117))

(declare-fun m!4551119 () Bool)

(assert (=> b!3978796 m!4551119))

(declare-fun m!4551121 () Bool)

(assert (=> b!3978796 m!4551121))

(declare-fun m!4551123 () Bool)

(assert (=> b!3978796 m!4551123))

(declare-fun m!4551125 () Bool)

(assert (=> b!3978796 m!4551125))

(declare-fun m!4551127 () Bool)

(assert (=> b!3978780 m!4551127))

(declare-fun m!4551129 () Bool)

(assert (=> b!3978782 m!4551129))

(declare-fun m!4551131 () Bool)

(assert (=> b!3978782 m!4551131))

(declare-fun m!4551133 () Bool)

(assert (=> b!3978782 m!4551133))

(declare-fun m!4551135 () Bool)

(assert (=> b!3978782 m!4551135))

(declare-fun m!4551137 () Bool)

(assert (=> b!3978798 m!4551137))

(declare-fun m!4551139 () Bool)

(assert (=> b!3978798 m!4551139))

(declare-fun m!4551141 () Bool)

(assert (=> b!3978798 m!4551141))

(declare-fun m!4551143 () Bool)

(assert (=> b!3978798 m!4551143))

(declare-fun m!4551145 () Bool)

(assert (=> b!3978798 m!4551145))

(declare-fun m!4551147 () Bool)

(assert (=> b!3978806 m!4551147))

(declare-fun m!4551149 () Bool)

(assert (=> b!3978806 m!4551149))

(declare-fun m!4551151 () Bool)

(assert (=> b!3978806 m!4551151))

(declare-fun m!4551153 () Bool)

(assert (=> b!3978776 m!4551153))

(declare-fun m!4551155 () Bool)

(assert (=> b!3978776 m!4551155))

(check-sat (not b!3978785) (not b!3978798) (not b!3978806) b_and!305843 (not b!3978780) (not b!3978784) (not b!3978788) tp_is_empty!20201 (not b!3978778) (not start!374480) (not b!3978781) b_and!305845 (not b!3978805) (not b!3978792) (not b!3978796) (not b!3978795) (not b!3978791) (not b!3978775) (not b!3978797) (not b_next!111117) (not b!3978774) (not b!3978777) (not b!3978802) (not b!3978782) (not b!3978783) (not b!3978773) (not b!3978800) (not b!3978799) (not b_next!111113) (not b!3978776) (not b!3978790) (not b!3978807) (not b!3978779) b_and!305841 (not b!3978801) (not b!3978793) (not b_next!111119) b_and!305839 (not b!3978803) (not b_next!111115) (not b!3978804))
(check-sat b_and!305845 b_and!305843 (not b_next!111117) (not b_next!111113) b_and!305841 (not b_next!111115) (not b_next!111119) b_and!305839)
