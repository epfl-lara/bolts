; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49388 () Bool)

(assert start!49388)

(declare-fun b!535250 () Bool)

(declare-fun b_free!14593 () Bool)

(declare-fun b_next!14609 () Bool)

(assert (=> b!535250 (= b_free!14593 (not b_next!14609))))

(declare-fun tp!170796 () Bool)

(declare-fun b_and!52347 () Bool)

(assert (=> b!535250 (= tp!170796 b_and!52347)))

(declare-fun b_free!14595 () Bool)

(declare-fun b_next!14611 () Bool)

(assert (=> b!535250 (= b_free!14595 (not b_next!14611))))

(declare-fun tp!170792 () Bool)

(declare-fun b_and!52349 () Bool)

(assert (=> b!535250 (= tp!170792 b_and!52349)))

(declare-fun b!535238 () Bool)

(declare-fun b_free!14597 () Bool)

(declare-fun b_next!14613 () Bool)

(assert (=> b!535238 (= b_free!14597 (not b_next!14613))))

(declare-fun tp!170797 () Bool)

(declare-fun b_and!52351 () Bool)

(assert (=> b!535238 (= tp!170797 b_and!52351)))

(declare-fun b_free!14599 () Bool)

(declare-fun b_next!14615 () Bool)

(assert (=> b!535238 (= b_free!14599 (not b_next!14615))))

(declare-fun tp!170790 () Bool)

(declare-fun b_and!52353 () Bool)

(assert (=> b!535238 (= tp!170790 b_and!52353)))

(declare-fun tp!170791 () Bool)

(declare-datatypes ((C!3484 0))(
  ( (C!3485 (val!1968 Int)) )
))
(declare-datatypes ((Regex!1281 0))(
  ( (ElementMatch!1281 (c!101906 C!3484)) (Concat!2252 (regOne!3074 Regex!1281) (regTwo!3074 Regex!1281)) (EmptyExpr!1281) (Star!1281 (reg!1610 Regex!1281)) (EmptyLang!1281) (Union!1281 (regOne!3075 Regex!1281) (regTwo!3075 Regex!1281)) )
))
(declare-datatypes ((List!5175 0))(
  ( (Nil!5165) (Cons!5165 (h!10566 (_ BitVec 16)) (t!74080 List!5175)) )
))
(declare-datatypes ((TokenValue!971 0))(
  ( (FloatLiteralValue!1942 (text!7242 List!5175)) (TokenValueExt!970 (__x!3840 Int)) (Broken!4855 (value!31830 List!5175)) (Object!980) (End!971) (Def!971) (Underscore!971) (Match!971) (Else!971) (Error!971) (Case!971) (If!971) (Extends!971) (Abstract!971) (Class!971) (Val!971) (DelimiterValue!1942 (del!1031 List!5175)) (KeywordValue!977 (value!31831 List!5175)) (CommentValue!1942 (value!31832 List!5175)) (WhitespaceValue!1942 (value!31833 List!5175)) (IndentationValue!971 (value!31834 List!5175)) (String!6598) (Int32!971) (Broken!4856 (value!31835 List!5175)) (Boolean!972) (Unit!9018) (OperatorValue!974 (op!1031 List!5175)) (IdentifierValue!1942 (value!31836 List!5175)) (IdentifierValue!1943 (value!31837 List!5175)) (WhitespaceValue!1943 (value!31838 List!5175)) (True!1942) (False!1942) (Broken!4857 (value!31839 List!5175)) (Broken!4858 (value!31840 List!5175)) (True!1943) (RightBrace!971) (RightBracket!971) (Colon!971) (Null!971) (Comma!971) (LeftBracket!971) (False!1943) (LeftBrace!971) (ImaginaryLiteralValue!971 (text!7243 List!5175)) (StringLiteralValue!2913 (value!31841 List!5175)) (EOFValue!971 (value!31842 List!5175)) (IdentValue!971 (value!31843 List!5175)) (DelimiterValue!1943 (value!31844 List!5175)) (DedentValue!971 (value!31845 List!5175)) (NewLineValue!971 (value!31846 List!5175)) (IntegerValue!2913 (value!31847 (_ BitVec 32)) (text!7244 List!5175)) (IntegerValue!2914 (value!31848 Int) (text!7245 List!5175)) (Times!971) (Or!971) (Equal!971) (Minus!971) (Broken!4859 (value!31849 List!5175)) (And!971) (Div!971) (LessEqual!971) (Mod!971) (Concat!2253) (Not!971) (Plus!971) (SpaceValue!971 (value!31850 List!5175)) (IntegerValue!2915 (value!31851 Int) (text!7246 List!5175)) (StringLiteralValue!2914 (text!7247 List!5175)) (FloatLiteralValue!1943 (text!7248 List!5175)) (BytesLiteralValue!971 (value!31852 List!5175)) (CommentValue!1943 (value!31853 List!5175)) (StringLiteralValue!2915 (value!31854 List!5175)) (ErrorTokenValue!971 (msg!1032 List!5175)) )
))
(declare-datatypes ((String!6599 0))(
  ( (String!6600 (value!31855 String)) )
))
(declare-datatypes ((List!5176 0))(
  ( (Nil!5166) (Cons!5166 (h!10567 C!3484) (t!74081 List!5176)) )
))
(declare-datatypes ((IArray!3329 0))(
  ( (IArray!3330 (innerList!1722 List!5176)) )
))
(declare-datatypes ((Conc!1664 0))(
  ( (Node!1664 (left!4334 Conc!1664) (right!4664 Conc!1664) (csize!3558 Int) (cheight!1875 Int)) (Leaf!2645 (xs!4301 IArray!3329) (csize!3559 Int)) (Empty!1664) )
))
(declare-datatypes ((BalanceConc!3336 0))(
  ( (BalanceConc!3337 (c!101907 Conc!1664)) )
))
(declare-datatypes ((TokenValueInjection!1710 0))(
  ( (TokenValueInjection!1711 (toValue!1794 Int) (toChars!1653 Int)) )
))
(declare-datatypes ((Rule!1694 0))(
  ( (Rule!1695 (regex!947 Regex!1281) (tag!1209 String!6599) (isSeparator!947 Bool) (transformation!947 TokenValueInjection!1710)) )
))
(declare-datatypes ((Token!1630 0))(
  ( (Token!1631 (value!31856 TokenValue!971) (rule!1649 Rule!1694) (size!4164 Int) (originalCharacters!986 List!5176)) )
))
(declare-fun token!491 () Token!1630)

(declare-fun e!322623 () Bool)

(declare-fun e!322635 () Bool)

(declare-fun b!535236 () Bool)

(declare-fun inv!6483 (String!6599) Bool)

(declare-fun inv!6486 (TokenValueInjection!1710) Bool)

(assert (=> b!535236 (= e!322623 (and tp!170791 (inv!6483 (tag!1209 (rule!1649 token!491))) (inv!6486 (transformation!947 (rule!1649 token!491))) e!322635))))

(declare-fun tp!170793 () Bool)

(declare-fun b!535237 () Bool)

(declare-fun e!322636 () Bool)

(declare-datatypes ((List!5177 0))(
  ( (Nil!5167) (Cons!5167 (h!10568 Rule!1694) (t!74082 List!5177)) )
))
(declare-fun rules!3103 () List!5177)

(declare-fun e!322640 () Bool)

(assert (=> b!535237 (= e!322640 (and tp!170793 (inv!6483 (tag!1209 (h!10568 rules!3103))) (inv!6486 (transformation!947 (h!10568 rules!3103))) e!322636))))

(assert (=> b!535238 (= e!322635 (and tp!170797 tp!170790))))

(declare-fun b!535239 () Bool)

(declare-fun e!322622 () Bool)

(declare-fun tp!170795 () Bool)

(assert (=> b!535239 (= e!322622 (and e!322640 tp!170795))))

(declare-fun b!535240 () Bool)

(declare-fun e!322631 () Bool)

(declare-fun e!322633 () Bool)

(assert (=> b!535240 (= e!322631 e!322633)))

(declare-fun res!226361 () Bool)

(assert (=> b!535240 (=> (not res!226361) (not e!322633))))

(declare-fun lt!220836 () List!5176)

(declare-fun input!2705 () List!5176)

(assert (=> b!535240 (= res!226361 (= lt!220836 input!2705))))

(declare-fun list!2149 (BalanceConc!3336) List!5176)

(declare-fun charsOf!576 (Token!1630) BalanceConc!3336)

(assert (=> b!535240 (= lt!220836 (list!2149 (charsOf!576 token!491)))))

(declare-fun b!535241 () Bool)

(declare-fun res!226364 () Bool)

(declare-fun e!322639 () Bool)

(assert (=> b!535241 (=> (not res!226364) (not e!322639))))

(declare-fun size!4165 (List!5176) Int)

(assert (=> b!535241 (= res!226364 (= (size!4164 token!491) (size!4165 (originalCharacters!986 token!491))))))

(declare-fun b!535242 () Bool)

(declare-fun e!322632 () Bool)

(declare-fun e!322627 () Bool)

(assert (=> b!535242 (= e!322632 (not e!322627))))

(declare-fun res!226363 () Bool)

(assert (=> b!535242 (=> res!226363 e!322627)))

(declare-fun lt!220839 () List!5176)

(declare-fun isPrefix!589 (List!5176 List!5176) Bool)

(assert (=> b!535242 (= res!226363 (not (isPrefix!589 input!2705 lt!220839)))))

(assert (=> b!535242 (isPrefix!589 lt!220836 lt!220839)))

(declare-datatypes ((Unit!9019 0))(
  ( (Unit!9020) )
))
(declare-fun lt!220833 () Unit!9019)

(declare-fun suffix!1342 () List!5176)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!440 (List!5176 List!5176) Unit!9019)

(assert (=> b!535242 (= lt!220833 (lemmaConcatTwoListThenFirstIsPrefix!440 lt!220836 suffix!1342))))

(declare-fun lt!220835 () List!5176)

(assert (=> b!535242 (isPrefix!589 input!2705 lt!220835)))

(declare-fun lt!220831 () Unit!9019)

(assert (=> b!535242 (= lt!220831 (lemmaConcatTwoListThenFirstIsPrefix!440 input!2705 suffix!1342))))

(declare-fun e!322629 () Bool)

(assert (=> b!535242 e!322629))

(declare-fun res!226367 () Bool)

(assert (=> b!535242 (=> (not res!226367) (not e!322629))))

(declare-datatypes ((tuple2!6252 0))(
  ( (tuple2!6253 (_1!3390 Token!1630) (_2!3390 List!5176)) )
))
(declare-datatypes ((Option!1297 0))(
  ( (None!1296) (Some!1296 (v!16103 tuple2!6252)) )
))
(declare-fun lt!220842 () Option!1297)

(declare-fun lt!220837 () TokenValue!971)

(assert (=> b!535242 (= res!226367 (= (value!31856 (_1!3390 (v!16103 lt!220842))) lt!220837))))

(declare-fun lt!220843 () List!5176)

(declare-fun apply!1222 (TokenValueInjection!1710 BalanceConc!3336) TokenValue!971)

(declare-fun seqFromList!1145 (List!5176) BalanceConc!3336)

(assert (=> b!535242 (= lt!220837 (apply!1222 (transformation!947 (rule!1649 (_1!3390 (v!16103 lt!220842)))) (seqFromList!1145 lt!220843)))))

(declare-fun lt!220818 () Unit!9019)

(declare-fun lemmaInv!95 (TokenValueInjection!1710) Unit!9019)

(assert (=> b!535242 (= lt!220818 (lemmaInv!95 (transformation!947 (rule!1649 token!491))))))

(declare-fun lt!220825 () Unit!9019)

(assert (=> b!535242 (= lt!220825 (lemmaInv!95 (transformation!947 (rule!1649 (_1!3390 (v!16103 lt!220842))))))))

(declare-datatypes ((LexerInterface!833 0))(
  ( (LexerInterfaceExt!830 (__x!3841 Int)) (Lexer!831) )
))
(declare-fun thiss!22590 () LexerInterface!833)

(declare-fun ruleValid!167 (LexerInterface!833 Rule!1694) Bool)

(assert (=> b!535242 (ruleValid!167 thiss!22590 (rule!1649 token!491))))

(declare-fun lt!220828 () Unit!9019)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!26 (LexerInterface!833 Rule!1694 List!5177) Unit!9019)

(assert (=> b!535242 (= lt!220828 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!26 thiss!22590 (rule!1649 token!491) rules!3103))))

(assert (=> b!535242 (ruleValid!167 thiss!22590 (rule!1649 (_1!3390 (v!16103 lt!220842))))))

(declare-fun lt!220821 () Unit!9019)

(assert (=> b!535242 (= lt!220821 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!26 thiss!22590 (rule!1649 (_1!3390 (v!16103 lt!220842))) rules!3103))))

(assert (=> b!535242 (isPrefix!589 input!2705 input!2705)))

(declare-fun lt!220819 () Unit!9019)

(declare-fun lemmaIsPrefixRefl!329 (List!5176 List!5176) Unit!9019)

(assert (=> b!535242 (= lt!220819 (lemmaIsPrefixRefl!329 input!2705 input!2705))))

(declare-fun lt!220830 () List!5176)

(assert (=> b!535242 (= (_2!3390 (v!16103 lt!220842)) lt!220830)))

(declare-fun lt!220824 () Unit!9019)

(declare-fun lemmaSamePrefixThenSameSuffix!316 (List!5176 List!5176 List!5176 List!5176 List!5176) Unit!9019)

(assert (=> b!535242 (= lt!220824 (lemmaSamePrefixThenSameSuffix!316 lt!220843 (_2!3390 (v!16103 lt!220842)) lt!220843 lt!220830 input!2705))))

(declare-fun getSuffix!112 (List!5176 List!5176) List!5176)

(assert (=> b!535242 (= lt!220830 (getSuffix!112 input!2705 lt!220843))))

(declare-fun ++!1435 (List!5176 List!5176) List!5176)

(assert (=> b!535242 (isPrefix!589 lt!220843 (++!1435 lt!220843 (_2!3390 (v!16103 lt!220842))))))

(declare-fun lt!220823 () Unit!9019)

(assert (=> b!535242 (= lt!220823 (lemmaConcatTwoListThenFirstIsPrefix!440 lt!220843 (_2!3390 (v!16103 lt!220842))))))

(declare-fun lt!220829 () Unit!9019)

(declare-fun lemmaCharactersSize!26 (Token!1630) Unit!9019)

(assert (=> b!535242 (= lt!220829 (lemmaCharactersSize!26 token!491))))

(declare-fun lt!220832 () Unit!9019)

(assert (=> b!535242 (= lt!220832 (lemmaCharactersSize!26 (_1!3390 (v!16103 lt!220842))))))

(declare-fun lt!220827 () Unit!9019)

(declare-fun e!322625 () Unit!9019)

(assert (=> b!535242 (= lt!220827 e!322625)))

(declare-fun c!101905 () Bool)

(declare-fun lt!220820 () Int)

(declare-fun lt!220841 () Int)

(assert (=> b!535242 (= c!101905 (> lt!220820 lt!220841))))

(assert (=> b!535242 (= lt!220841 (size!4165 lt!220836))))

(assert (=> b!535242 (= lt!220820 (size!4165 lt!220843))))

(assert (=> b!535242 (= lt!220843 (list!2149 (charsOf!576 (_1!3390 (v!16103 lt!220842)))))))

(assert (=> b!535242 (= lt!220842 (Some!1296 (v!16103 lt!220842)))))

(declare-fun lt!220826 () Unit!9019)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!32 (List!5176 List!5176 List!5176 List!5176) Unit!9019)

(assert (=> b!535242 (= lt!220826 (lemmaConcatSameAndSameSizesThenSameLists!32 lt!220836 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!535243 () Bool)

(declare-fun res!226372 () Bool)

(assert (=> b!535243 (=> (not res!226372) (not e!322631))))

(declare-fun isEmpty!3736 (List!5176) Bool)

(assert (=> b!535243 (= res!226372 (not (isEmpty!3736 input!2705)))))

(declare-fun b!535245 () Bool)

(declare-fun e!322638 () Bool)

(assert (=> b!535245 (= e!322638 e!322632)))

(declare-fun res!226370 () Bool)

(assert (=> b!535245 (=> (not res!226370) (not e!322632))))

(assert (=> b!535245 (= res!226370 (= lt!220839 lt!220835))))

(assert (=> b!535245 (= lt!220839 (++!1435 lt!220836 suffix!1342))))

(declare-fun tp!170794 () Bool)

(declare-fun b!535246 () Bool)

(declare-fun e!322621 () Bool)

(declare-fun inv!21 (TokenValue!971) Bool)

(assert (=> b!535246 (= e!322621 (and (inv!21 (value!31856 token!491)) e!322623 tp!170794))))

(declare-fun b!535247 () Bool)

(declare-fun res!226365 () Bool)

(assert (=> b!535247 (=> (not res!226365) (not e!322631))))

(declare-fun isEmpty!3737 (List!5177) Bool)

(assert (=> b!535247 (= res!226365 (not (isEmpty!3737 rules!3103)))))

(declare-fun b!535248 () Bool)

(assert (=> b!535248 (= e!322639 (and (= (size!4164 token!491) lt!220841) (= (originalCharacters!986 token!491) lt!220836)))))

(declare-fun b!535249 () Bool)

(declare-fun e!322626 () Bool)

(assert (=> b!535249 (= e!322633 e!322626)))

(declare-fun res!226374 () Bool)

(assert (=> b!535249 (=> (not res!226374) (not e!322626))))

(declare-fun lt!220840 () Option!1297)

(declare-fun isDefined!1109 (Option!1297) Bool)

(assert (=> b!535249 (= res!226374 (isDefined!1109 lt!220840))))

(declare-fun maxPrefix!531 (LexerInterface!833 List!5177 List!5176) Option!1297)

(assert (=> b!535249 (= lt!220840 (maxPrefix!531 thiss!22590 rules!3103 lt!220835))))

(assert (=> b!535249 (= lt!220835 (++!1435 input!2705 suffix!1342))))

(assert (=> b!535250 (= e!322636 (and tp!170796 tp!170792))))

(declare-fun b!535251 () Bool)

(declare-fun Unit!9021 () Unit!9019)

(assert (=> b!535251 (= e!322625 Unit!9021)))

(declare-fun b!535252 () Bool)

(declare-fun e!322630 () Bool)

(assert (=> b!535252 (= e!322626 e!322630)))

(declare-fun res!226375 () Bool)

(assert (=> b!535252 (=> (not res!226375) (not e!322630))))

(declare-fun lt!220822 () tuple2!6252)

(assert (=> b!535252 (= res!226375 (and (= (_1!3390 lt!220822) token!491) (= (_2!3390 lt!220822) suffix!1342)))))

(declare-fun get!1935 (Option!1297) tuple2!6252)

(assert (=> b!535252 (= lt!220822 (get!1935 lt!220840))))

(declare-fun b!535253 () Bool)

(assert (=> b!535253 (= e!322630 e!322638)))

(declare-fun res!226368 () Bool)

(assert (=> b!535253 (=> (not res!226368) (not e!322638))))

(get-info :version)

(assert (=> b!535253 (= res!226368 ((_ is Some!1296) lt!220842))))

(assert (=> b!535253 (= lt!220842 (maxPrefix!531 thiss!22590 rules!3103 input!2705))))

(declare-fun b!535254 () Bool)

(declare-fun res!226366 () Bool)

(assert (=> b!535254 (=> (not res!226366) (not e!322631))))

(declare-fun rulesInvariant!796 (LexerInterface!833 List!5177) Bool)

(assert (=> b!535254 (= res!226366 (rulesInvariant!796 thiss!22590 rules!3103))))

(declare-fun b!535255 () Bool)

(declare-fun Unit!9022 () Unit!9019)

(assert (=> b!535255 (= e!322625 Unit!9022)))

(assert (=> b!535255 false))

(declare-fun b!535256 () Bool)

(declare-fun e!322642 () Bool)

(assert (=> b!535256 (= e!322627 e!322642)))

(declare-fun res!226376 () Bool)

(assert (=> b!535256 (=> res!226376 e!322642)))

(assert (=> b!535256 (= res!226376 (< (size!4165 lt!220835) lt!220841))))

(assert (=> b!535256 e!322639))

(declare-fun res!226373 () Bool)

(assert (=> b!535256 (=> (not res!226373) (not e!322639))))

(declare-fun lt!220834 () List!5176)

(assert (=> b!535256 (= res!226373 (= suffix!1342 lt!220834))))

(declare-fun lt!220838 () Unit!9019)

(assert (=> b!535256 (= lt!220838 (lemmaSamePrefixThenSameSuffix!316 lt!220836 suffix!1342 lt!220836 lt!220834 lt!220835))))

(assert (=> b!535256 (= lt!220834 (getSuffix!112 lt!220835 lt!220836))))

(declare-fun b!535257 () Bool)

(declare-fun res!226362 () Bool)

(assert (=> b!535257 (=> (not res!226362) (not e!322639))))

(assert (=> b!535257 (= res!226362 (= (value!31856 token!491) (apply!1222 (transformation!947 (rule!1649 token!491)) (seqFromList!1145 lt!220836))))))

(declare-fun b!535258 () Bool)

(declare-fun res!226369 () Bool)

(assert (=> b!535258 (=> (not res!226369) (not e!322629))))

(assert (=> b!535258 (= res!226369 (= (size!4164 (_1!3390 (v!16103 lt!220842))) (size!4165 (originalCharacters!986 (_1!3390 (v!16103 lt!220842))))))))

(declare-fun b!535259 () Bool)

(assert (=> b!535259 (= e!322642 (isPrefix!589 lt!220836 lt!220835))))

(declare-fun b!535244 () Bool)

(declare-fun e!322634 () Bool)

(declare-fun tp_is_empty!2917 () Bool)

(declare-fun tp!170798 () Bool)

(assert (=> b!535244 (= e!322634 (and tp_is_empty!2917 tp!170798))))

(declare-fun res!226371 () Bool)

(assert (=> start!49388 (=> (not res!226371) (not e!322631))))

(assert (=> start!49388 (= res!226371 ((_ is Lexer!831) thiss!22590))))

(assert (=> start!49388 e!322631))

(declare-fun e!322628 () Bool)

(assert (=> start!49388 e!322628))

(assert (=> start!49388 e!322622))

(declare-fun inv!6487 (Token!1630) Bool)

(assert (=> start!49388 (and (inv!6487 token!491) e!322621)))

(assert (=> start!49388 true))

(assert (=> start!49388 e!322634))

(declare-fun b!535260 () Bool)

(assert (=> b!535260 (= e!322629 (and (= (size!4164 (_1!3390 (v!16103 lt!220842))) lt!220820) (= (originalCharacters!986 (_1!3390 (v!16103 lt!220842))) lt!220843) (= (v!16103 lt!220842) (tuple2!6253 (Token!1631 lt!220837 (rule!1649 (_1!3390 (v!16103 lt!220842))) lt!220820 lt!220843) lt!220830))))))

(declare-fun b!535261 () Bool)

(declare-fun tp!170789 () Bool)

(assert (=> b!535261 (= e!322628 (and tp_is_empty!2917 tp!170789))))

(assert (= (and start!49388 res!226371) b!535247))

(assert (= (and b!535247 res!226365) b!535254))

(assert (= (and b!535254 res!226366) b!535243))

(assert (= (and b!535243 res!226372) b!535240))

(assert (= (and b!535240 res!226361) b!535249))

(assert (= (and b!535249 res!226374) b!535252))

(assert (= (and b!535252 res!226375) b!535253))

(assert (= (and b!535253 res!226368) b!535245))

(assert (= (and b!535245 res!226370) b!535242))

(assert (= (and b!535242 c!101905) b!535255))

(assert (= (and b!535242 (not c!101905)) b!535251))

(assert (= (and b!535242 res!226367) b!535258))

(assert (= (and b!535258 res!226369) b!535260))

(assert (= (and b!535242 (not res!226363)) b!535256))

(assert (= (and b!535256 res!226373) b!535257))

(assert (= (and b!535257 res!226362) b!535241))

(assert (= (and b!535241 res!226364) b!535248))

(assert (= (and b!535256 (not res!226376)) b!535259))

(assert (= (and start!49388 ((_ is Cons!5166) suffix!1342)) b!535261))

(assert (= b!535237 b!535250))

(assert (= b!535239 b!535237))

(assert (= (and start!49388 ((_ is Cons!5167) rules!3103)) b!535239))

(assert (= b!535236 b!535238))

(assert (= b!535246 b!535236))

(assert (= start!49388 b!535246))

(assert (= (and start!49388 ((_ is Cons!5166) input!2705)) b!535244))

(declare-fun m!781131 () Bool)

(assert (=> b!535242 m!781131))

(declare-fun m!781133 () Bool)

(assert (=> b!535242 m!781133))

(declare-fun m!781135 () Bool)

(assert (=> b!535242 m!781135))

(declare-fun m!781137 () Bool)

(assert (=> b!535242 m!781137))

(declare-fun m!781139 () Bool)

(assert (=> b!535242 m!781139))

(declare-fun m!781141 () Bool)

(assert (=> b!535242 m!781141))

(declare-fun m!781143 () Bool)

(assert (=> b!535242 m!781143))

(declare-fun m!781145 () Bool)

(assert (=> b!535242 m!781145))

(declare-fun m!781147 () Bool)

(assert (=> b!535242 m!781147))

(declare-fun m!781149 () Bool)

(assert (=> b!535242 m!781149))

(declare-fun m!781151 () Bool)

(assert (=> b!535242 m!781151))

(declare-fun m!781153 () Bool)

(assert (=> b!535242 m!781153))

(declare-fun m!781155 () Bool)

(assert (=> b!535242 m!781155))

(declare-fun m!781157 () Bool)

(assert (=> b!535242 m!781157))

(declare-fun m!781159 () Bool)

(assert (=> b!535242 m!781159))

(declare-fun m!781161 () Bool)

(assert (=> b!535242 m!781161))

(assert (=> b!535242 m!781135))

(declare-fun m!781163 () Bool)

(assert (=> b!535242 m!781163))

(declare-fun m!781165 () Bool)

(assert (=> b!535242 m!781165))

(declare-fun m!781167 () Bool)

(assert (=> b!535242 m!781167))

(declare-fun m!781169 () Bool)

(assert (=> b!535242 m!781169))

(declare-fun m!781171 () Bool)

(assert (=> b!535242 m!781171))

(declare-fun m!781173 () Bool)

(assert (=> b!535242 m!781173))

(declare-fun m!781175 () Bool)

(assert (=> b!535242 m!781175))

(declare-fun m!781177 () Bool)

(assert (=> b!535242 m!781177))

(assert (=> b!535242 m!781139))

(assert (=> b!535242 m!781169))

(declare-fun m!781179 () Bool)

(assert (=> b!535242 m!781179))

(declare-fun m!781181 () Bool)

(assert (=> b!535242 m!781181))

(declare-fun m!781183 () Bool)

(assert (=> b!535242 m!781183))

(declare-fun m!781185 () Bool)

(assert (=> b!535236 m!781185))

(declare-fun m!781187 () Bool)

(assert (=> b!535236 m!781187))

(declare-fun m!781189 () Bool)

(assert (=> b!535245 m!781189))

(declare-fun m!781191 () Bool)

(assert (=> start!49388 m!781191))

(declare-fun m!781193 () Bool)

(assert (=> b!535257 m!781193))

(assert (=> b!535257 m!781193))

(declare-fun m!781195 () Bool)

(assert (=> b!535257 m!781195))

(declare-fun m!781197 () Bool)

(assert (=> b!535237 m!781197))

(declare-fun m!781199 () Bool)

(assert (=> b!535237 m!781199))

(declare-fun m!781201 () Bool)

(assert (=> b!535256 m!781201))

(declare-fun m!781203 () Bool)

(assert (=> b!535256 m!781203))

(declare-fun m!781205 () Bool)

(assert (=> b!535256 m!781205))

(declare-fun m!781207 () Bool)

(assert (=> b!535247 m!781207))

(declare-fun m!781209 () Bool)

(assert (=> b!535249 m!781209))

(declare-fun m!781211 () Bool)

(assert (=> b!535249 m!781211))

(declare-fun m!781213 () Bool)

(assert (=> b!535249 m!781213))

(declare-fun m!781215 () Bool)

(assert (=> b!535258 m!781215))

(declare-fun m!781217 () Bool)

(assert (=> b!535259 m!781217))

(declare-fun m!781219 () Bool)

(assert (=> b!535252 m!781219))

(declare-fun m!781221 () Bool)

(assert (=> b!535254 m!781221))

(declare-fun m!781223 () Bool)

(assert (=> b!535240 m!781223))

(assert (=> b!535240 m!781223))

(declare-fun m!781225 () Bool)

(assert (=> b!535240 m!781225))

(declare-fun m!781227 () Bool)

(assert (=> b!535241 m!781227))

(declare-fun m!781229 () Bool)

(assert (=> b!535243 m!781229))

(declare-fun m!781231 () Bool)

(assert (=> b!535246 m!781231))

(declare-fun m!781233 () Bool)

(assert (=> b!535253 m!781233))

(check-sat (not b!535258) (not b!535236) b_and!52349 (not b!535261) b_and!52353 (not b!535241) (not b!535246) (not b!535254) (not b!535239) (not b_next!14609) (not b_next!14611) (not b!535242) (not b!535249) tp_is_empty!2917 (not b!535237) (not start!49388) (not b!535244) (not b_next!14613) (not b_next!14615) b_and!52347 (not b!535245) (not b!535256) (not b!535259) b_and!52351 (not b!535257) (not b!535253) (not b!535243) (not b!535252) (not b!535247) (not b!535240))
(check-sat b_and!52349 b_and!52353 b_and!52351 (not b_next!14609) (not b_next!14611) (not b_next!14613) (not b_next!14615) b_and!52347)
