; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55912 () Bool)

(assert start!55912)

(declare-fun b!594045 () Bool)

(declare-fun b_free!16741 () Bool)

(declare-fun b_next!16757 () Bool)

(assert (=> b!594045 (= b_free!16741 (not b_next!16757))))

(declare-fun tp!185237 () Bool)

(declare-fun b_and!58571 () Bool)

(assert (=> b!594045 (= tp!185237 b_and!58571)))

(declare-fun b_free!16743 () Bool)

(declare-fun b_next!16759 () Bool)

(assert (=> b!594045 (= b_free!16743 (not b_next!16759))))

(declare-fun tp!185238 () Bool)

(declare-fun b_and!58573 () Bool)

(assert (=> b!594045 (= tp!185238 b_and!58573)))

(declare-fun b!594041 () Bool)

(declare-fun b_free!16745 () Bool)

(declare-fun b_next!16761 () Bool)

(assert (=> b!594041 (= b_free!16745 (not b_next!16761))))

(declare-fun tp!185239 () Bool)

(declare-fun b_and!58575 () Bool)

(assert (=> b!594041 (= tp!185239 b_and!58575)))

(declare-fun b_free!16747 () Bool)

(declare-fun b_next!16763 () Bool)

(assert (=> b!594041 (= b_free!16747 (not b_next!16763))))

(declare-fun tp!185241 () Bool)

(declare-fun b_and!58577 () Bool)

(assert (=> b!594041 (= tp!185241 b_and!58577)))

(declare-fun b!594024 () Bool)

(declare-fun e!359354 () Bool)

(declare-fun e!359346 () Bool)

(assert (=> b!594024 (= e!359354 e!359346)))

(declare-fun res!256238 () Bool)

(assert (=> b!594024 (=> (not res!256238) (not e!359346))))

(declare-datatypes ((C!3912 0))(
  ( (C!3913 (val!2182 Int)) )
))
(declare-datatypes ((List!5898 0))(
  ( (Nil!5888) (Cons!5888 (h!11289 C!3912) (t!79251 List!5898)) )
))
(declare-fun lt!251923 () List!5898)

(declare-fun lt!251911 () List!5898)

(assert (=> b!594024 (= res!256238 (= lt!251923 lt!251911))))

(declare-fun lt!251919 () List!5898)

(declare-fun suffix!1342 () List!5898)

(declare-fun ++!1649 (List!5898 List!5898) List!5898)

(assert (=> b!594024 (= lt!251923 (++!1649 lt!251919 suffix!1342))))

(declare-fun b!594025 () Bool)

(declare-fun e!359352 () Bool)

(declare-fun e!359351 () Bool)

(assert (=> b!594025 (= e!359352 e!359351)))

(declare-fun res!256239 () Bool)

(assert (=> b!594025 (=> (not res!256239) (not e!359351))))

(declare-fun input!2705 () List!5898)

(assert (=> b!594025 (= res!256239 (= lt!251919 input!2705))))

(declare-datatypes ((Regex!1495 0))(
  ( (ElementMatch!1495 (c!110685 C!3912)) (Concat!2680 (regOne!3502 Regex!1495) (regTwo!3502 Regex!1495)) (EmptyExpr!1495) (Star!1495 (reg!1824 Regex!1495)) (EmptyLang!1495) (Union!1495 (regOne!3503 Regex!1495) (regTwo!3503 Regex!1495)) )
))
(declare-datatypes ((List!5899 0))(
  ( (Nil!5889) (Cons!5889 (h!11290 (_ BitVec 16)) (t!79252 List!5899)) )
))
(declare-datatypes ((TokenValue!1185 0))(
  ( (FloatLiteralValue!2370 (text!8740 List!5899)) (TokenValueExt!1184 (__x!4268 Int)) (Broken!5925 (value!37929 List!5899)) (Object!1194) (End!1185) (Def!1185) (Underscore!1185) (Match!1185) (Else!1185) (Error!1185) (Case!1185) (If!1185) (Extends!1185) (Abstract!1185) (Class!1185) (Val!1185) (DelimiterValue!2370 (del!1245 List!5899)) (KeywordValue!1191 (value!37930 List!5899)) (CommentValue!2370 (value!37931 List!5899)) (WhitespaceValue!2370 (value!37932 List!5899)) (IndentationValue!1185 (value!37933 List!5899)) (String!7668) (Int32!1185) (Broken!5926 (value!37934 List!5899)) (Boolean!1186) (Unit!10702) (OperatorValue!1188 (op!1245 List!5899)) (IdentifierValue!2370 (value!37935 List!5899)) (IdentifierValue!2371 (value!37936 List!5899)) (WhitespaceValue!2371 (value!37937 List!5899)) (True!2370) (False!2370) (Broken!5927 (value!37938 List!5899)) (Broken!5928 (value!37939 List!5899)) (True!2371) (RightBrace!1185) (RightBracket!1185) (Colon!1185) (Null!1185) (Comma!1185) (LeftBracket!1185) (False!2371) (LeftBrace!1185) (ImaginaryLiteralValue!1185 (text!8741 List!5899)) (StringLiteralValue!3555 (value!37940 List!5899)) (EOFValue!1185 (value!37941 List!5899)) (IdentValue!1185 (value!37942 List!5899)) (DelimiterValue!2371 (value!37943 List!5899)) (DedentValue!1185 (value!37944 List!5899)) (NewLineValue!1185 (value!37945 List!5899)) (IntegerValue!3555 (value!37946 (_ BitVec 32)) (text!8742 List!5899)) (IntegerValue!3556 (value!37947 Int) (text!8743 List!5899)) (Times!1185) (Or!1185) (Equal!1185) (Minus!1185) (Broken!5929 (value!37948 List!5899)) (And!1185) (Div!1185) (LessEqual!1185) (Mod!1185) (Concat!2681) (Not!1185) (Plus!1185) (SpaceValue!1185 (value!37949 List!5899)) (IntegerValue!3557 (value!37950 Int) (text!8744 List!5899)) (StringLiteralValue!3556 (text!8745 List!5899)) (FloatLiteralValue!2371 (text!8746 List!5899)) (BytesLiteralValue!1185 (value!37951 List!5899)) (CommentValue!2371 (value!37952 List!5899)) (StringLiteralValue!3557 (value!37953 List!5899)) (ErrorTokenValue!1185 (msg!1246 List!5899)) )
))
(declare-datatypes ((String!7669 0))(
  ( (String!7670 (value!37954 String)) )
))
(declare-datatypes ((IArray!3757 0))(
  ( (IArray!3758 (innerList!1936 List!5898)) )
))
(declare-datatypes ((Conc!1878 0))(
  ( (Node!1878 (left!4771 Conc!1878) (right!5101 Conc!1878) (csize!3986 Int) (cheight!2089 Int)) (Leaf!2966 (xs!4515 IArray!3757) (csize!3987 Int)) (Empty!1878) )
))
(declare-datatypes ((BalanceConc!3764 0))(
  ( (BalanceConc!3765 (c!110686 Conc!1878)) )
))
(declare-datatypes ((TokenValueInjection!2138 0))(
  ( (TokenValueInjection!2139 (toValue!2052 Int) (toChars!1911 Int)) )
))
(declare-datatypes ((Rule!2122 0))(
  ( (Rule!2123 (regex!1161 Regex!1495) (tag!1423 String!7669) (isSeparator!1161 Bool) (transformation!1161 TokenValueInjection!2138)) )
))
(declare-datatypes ((Token!2058 0))(
  ( (Token!2059 (value!37955 TokenValue!1185) (rule!1931 Rule!2122) (size!4656 Int) (originalCharacters!1200 List!5898)) )
))
(declare-fun token!491 () Token!2058)

(declare-fun list!2466 (BalanceConc!3764) List!5898)

(declare-fun charsOf!790 (Token!2058) BalanceConc!3764)

(assert (=> b!594025 (= lt!251919 (list!2466 (charsOf!790 token!491)))))

(declare-fun res!256243 () Bool)

(assert (=> start!55912 (=> (not res!256243) (not e!359352))))

(declare-datatypes ((LexerInterface!1047 0))(
  ( (LexerInterfaceExt!1044 (__x!4269 Int)) (Lexer!1045) )
))
(declare-fun thiss!22590 () LexerInterface!1047)

(get-info :version)

(assert (=> start!55912 (= res!256243 ((_ is Lexer!1045) thiss!22590))))

(assert (=> start!55912 e!359352))

(declare-fun e!359355 () Bool)

(assert (=> start!55912 e!359355))

(declare-fun e!359350 () Bool)

(assert (=> start!55912 e!359350))

(declare-fun e!359340 () Bool)

(declare-fun inv!7462 (Token!2058) Bool)

(assert (=> start!55912 (and (inv!7462 token!491) e!359340)))

(assert (=> start!55912 true))

(declare-fun e!359353 () Bool)

(assert (=> start!55912 e!359353))

(declare-fun b!594026 () Bool)

(declare-fun e!359356 () Bool)

(assert (=> b!594026 (= e!359356 e!359354)))

(declare-fun res!256240 () Bool)

(assert (=> b!594026 (=> (not res!256240) (not e!359354))))

(declare-datatypes ((tuple2!6816 0))(
  ( (tuple2!6817 (_1!3672 Token!2058) (_2!3672 List!5898)) )
))
(declare-datatypes ((Option!1512 0))(
  ( (None!1511) (Some!1511 (v!16398 tuple2!6816)) )
))
(declare-fun lt!251902 () Option!1512)

(assert (=> b!594026 (= res!256240 ((_ is Some!1511) lt!251902))))

(declare-datatypes ((List!5900 0))(
  ( (Nil!5890) (Cons!5890 (h!11291 Rule!2122) (t!79253 List!5900)) )
))
(declare-fun rules!3103 () List!5900)

(declare-fun maxPrefix!745 (LexerInterface!1047 List!5900 List!5898) Option!1512)

(assert (=> b!594026 (= lt!251902 (maxPrefix!745 thiss!22590 rules!3103 input!2705))))

(declare-fun b!594027 () Bool)

(declare-fun res!256236 () Bool)

(assert (=> b!594027 (=> (not res!256236) (not e!359352))))

(declare-fun rulesInvariant!1010 (LexerInterface!1047 List!5900) Bool)

(assert (=> b!594027 (= res!256236 (rulesInvariant!1010 thiss!22590 rules!3103))))

(declare-fun b!594028 () Bool)

(declare-datatypes ((Unit!10703 0))(
  ( (Unit!10704) )
))
(declare-fun e!359344 () Unit!10703)

(declare-fun Unit!10705 () Unit!10703)

(assert (=> b!594028 (= e!359344 Unit!10705)))

(assert (=> b!594028 false))

(declare-fun b!594029 () Bool)

(declare-fun e!359341 () Bool)

(assert (=> b!594029 (= e!359346 (not e!359341))))

(declare-fun res!256237 () Bool)

(assert (=> b!594029 (=> res!256237 e!359341)))

(declare-fun isPrefix!789 (List!5898 List!5898) Bool)

(assert (=> b!594029 (= res!256237 (not (isPrefix!789 input!2705 lt!251923)))))

(assert (=> b!594029 (isPrefix!789 lt!251919 lt!251923)))

(declare-fun lt!251924 () Unit!10703)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!634 (List!5898 List!5898) Unit!10703)

(assert (=> b!594029 (= lt!251924 (lemmaConcatTwoListThenFirstIsPrefix!634 lt!251919 suffix!1342))))

(assert (=> b!594029 (isPrefix!789 input!2705 lt!251911)))

(declare-fun lt!251920 () Unit!10703)

(assert (=> b!594029 (= lt!251920 (lemmaConcatTwoListThenFirstIsPrefix!634 input!2705 suffix!1342))))

(declare-fun e!359343 () Bool)

(assert (=> b!594029 e!359343))

(declare-fun res!256242 () Bool)

(assert (=> b!594029 (=> (not res!256242) (not e!359343))))

(declare-fun lt!251903 () TokenValue!1185)

(assert (=> b!594029 (= res!256242 (= (value!37955 (_1!3672 (v!16398 lt!251902))) lt!251903))))

(declare-fun lt!251914 () List!5898)

(declare-fun apply!1414 (TokenValueInjection!2138 BalanceConc!3764) TokenValue!1185)

(declare-fun seqFromList!1337 (List!5898) BalanceConc!3764)

(assert (=> b!594029 (= lt!251903 (apply!1414 (transformation!1161 (rule!1931 (_1!3672 (v!16398 lt!251902)))) (seqFromList!1337 lt!251914)))))

(declare-fun lt!251918 () Unit!10703)

(declare-fun lemmaInv!269 (TokenValueInjection!2138) Unit!10703)

(assert (=> b!594029 (= lt!251918 (lemmaInv!269 (transformation!1161 (rule!1931 token!491))))))

(declare-fun lt!251926 () Unit!10703)

(assert (=> b!594029 (= lt!251926 (lemmaInv!269 (transformation!1161 (rule!1931 (_1!3672 (v!16398 lt!251902))))))))

(declare-fun ruleValid!359 (LexerInterface!1047 Rule!2122) Bool)

(assert (=> b!594029 (ruleValid!359 thiss!22590 (rule!1931 token!491))))

(declare-fun lt!251910 () Unit!10703)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!206 (LexerInterface!1047 Rule!2122 List!5900) Unit!10703)

(assert (=> b!594029 (= lt!251910 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!206 thiss!22590 (rule!1931 token!491) rules!3103))))

(assert (=> b!594029 (ruleValid!359 thiss!22590 (rule!1931 (_1!3672 (v!16398 lt!251902))))))

(declare-fun lt!251907 () Unit!10703)

(assert (=> b!594029 (= lt!251907 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!206 thiss!22590 (rule!1931 (_1!3672 (v!16398 lt!251902))) rules!3103))))

(assert (=> b!594029 (isPrefix!789 input!2705 input!2705)))

(declare-fun lt!251913 () Unit!10703)

(declare-fun lemmaIsPrefixRefl!525 (List!5898 List!5898) Unit!10703)

(assert (=> b!594029 (= lt!251913 (lemmaIsPrefixRefl!525 input!2705 input!2705))))

(declare-fun lt!251917 () List!5898)

(assert (=> b!594029 (= (_2!3672 (v!16398 lt!251902)) lt!251917)))

(declare-fun lt!251909 () Unit!10703)

(declare-fun lemmaSamePrefixThenSameSuffix!502 (List!5898 List!5898 List!5898 List!5898 List!5898) Unit!10703)

(assert (=> b!594029 (= lt!251909 (lemmaSamePrefixThenSameSuffix!502 lt!251914 (_2!3672 (v!16398 lt!251902)) lt!251914 lt!251917 input!2705))))

(declare-fun getSuffix!306 (List!5898 List!5898) List!5898)

(assert (=> b!594029 (= lt!251917 (getSuffix!306 input!2705 lt!251914))))

(assert (=> b!594029 (isPrefix!789 lt!251914 (++!1649 lt!251914 (_2!3672 (v!16398 lt!251902))))))

(declare-fun lt!251922 () Unit!10703)

(assert (=> b!594029 (= lt!251922 (lemmaConcatTwoListThenFirstIsPrefix!634 lt!251914 (_2!3672 (v!16398 lt!251902))))))

(declare-fun lt!251925 () Unit!10703)

(declare-fun lemmaCharactersSize!220 (Token!2058) Unit!10703)

(assert (=> b!594029 (= lt!251925 (lemmaCharactersSize!220 token!491))))

(declare-fun lt!251905 () Unit!10703)

(assert (=> b!594029 (= lt!251905 (lemmaCharactersSize!220 (_1!3672 (v!16398 lt!251902))))))

(declare-fun lt!251908 () Unit!10703)

(assert (=> b!594029 (= lt!251908 e!359344)))

(declare-fun c!110684 () Bool)

(declare-fun lt!251912 () Int)

(declare-fun size!4657 (List!5898) Int)

(assert (=> b!594029 (= c!110684 (> lt!251912 (size!4657 lt!251919)))))

(assert (=> b!594029 (= lt!251912 (size!4657 lt!251914))))

(assert (=> b!594029 (= lt!251914 (list!2466 (charsOf!790 (_1!3672 (v!16398 lt!251902)))))))

(assert (=> b!594029 (= lt!251902 (Some!1511 (v!16398 lt!251902)))))

(declare-fun lt!251916 () Unit!10703)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!234 (List!5898 List!5898 List!5898 List!5898) Unit!10703)

(assert (=> b!594029 (= lt!251916 (lemmaConcatSameAndSameSizesThenSameLists!234 lt!251919 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!594030 () Bool)

(assert (=> b!594030 (= e!359343 (and (= (size!4656 (_1!3672 (v!16398 lt!251902))) lt!251912) (= (originalCharacters!1200 (_1!3672 (v!16398 lt!251902))) lt!251914) (= (v!16398 lt!251902) (tuple2!6817 (Token!2059 lt!251903 (rule!1931 (_1!3672 (v!16398 lt!251902))) lt!251912 lt!251914) lt!251917))))))

(declare-fun b!594031 () Bool)

(declare-fun res!256241 () Bool)

(assert (=> b!594031 (=> (not res!256241) (not e!359352))))

(declare-fun isEmpty!4251 (List!5898) Bool)

(assert (=> b!594031 (= res!256241 (not (isEmpty!4251 input!2705)))))

(declare-fun b!594032 () Bool)

(declare-fun res!256244 () Bool)

(assert (=> b!594032 (=> (not res!256244) (not e!359352))))

(declare-fun isEmpty!4252 (List!5900) Bool)

(assert (=> b!594032 (= res!256244 (not (isEmpty!4252 rules!3103)))))

(declare-fun b!594033 () Bool)

(declare-fun e!359347 () Bool)

(declare-fun e!359348 () Bool)

(declare-fun tp!185242 () Bool)

(declare-fun inv!7459 (String!7669) Bool)

(declare-fun inv!7463 (TokenValueInjection!2138) Bool)

(assert (=> b!594033 (= e!359347 (and tp!185242 (inv!7459 (tag!1423 (h!11291 rules!3103))) (inv!7463 (transformation!1161 (h!11291 rules!3103))) e!359348))))

(declare-fun b!594034 () Bool)

(declare-fun tp!185233 () Bool)

(declare-fun e!359345 () Bool)

(declare-fun inv!21 (TokenValue!1185) Bool)

(assert (=> b!594034 (= e!359340 (and (inv!21 (value!37955 token!491)) e!359345 tp!185233))))

(declare-fun b!594035 () Bool)

(declare-fun Unit!10706 () Unit!10703)

(assert (=> b!594035 (= e!359344 Unit!10706)))

(declare-fun b!594036 () Bool)

(declare-fun tp_is_empty!3345 () Bool)

(declare-fun tp!185235 () Bool)

(assert (=> b!594036 (= e!359355 (and tp_is_empty!3345 tp!185235))))

(declare-fun b!594037 () Bool)

(declare-fun tp!185240 () Bool)

(assert (=> b!594037 (= e!359353 (and tp_is_empty!3345 tp!185240))))

(declare-fun b!594038 () Bool)

(declare-fun res!256233 () Bool)

(assert (=> b!594038 (=> (not res!256233) (not e!359343))))

(assert (=> b!594038 (= res!256233 (= (size!4656 (_1!3672 (v!16398 lt!251902))) (size!4657 (originalCharacters!1200 (_1!3672 (v!16398 lt!251902))))))))

(declare-fun b!594039 () Bool)

(declare-fun e!359342 () Bool)

(assert (=> b!594039 (= e!359351 e!359342)))

(declare-fun res!256234 () Bool)

(assert (=> b!594039 (=> (not res!256234) (not e!359342))))

(declare-fun lt!251921 () Option!1512)

(declare-fun isDefined!1323 (Option!1512) Bool)

(assert (=> b!594039 (= res!256234 (isDefined!1323 lt!251921))))

(assert (=> b!594039 (= lt!251921 (maxPrefix!745 thiss!22590 rules!3103 lt!251911))))

(assert (=> b!594039 (= lt!251911 (++!1649 input!2705 suffix!1342))))

(declare-fun b!594040 () Bool)

(declare-fun tp!185234 () Bool)

(assert (=> b!594040 (= e!359350 (and e!359347 tp!185234))))

(assert (=> b!594041 (= e!359348 (and tp!185239 tp!185241))))

(declare-fun b!594042 () Bool)

(assert (=> b!594042 (= e!359342 e!359356)))

(declare-fun res!256235 () Bool)

(assert (=> b!594042 (=> (not res!256235) (not e!359356))))

(declare-fun lt!251906 () tuple2!6816)

(assert (=> b!594042 (= res!256235 (and (= (_1!3672 lt!251906) token!491) (= (_2!3672 lt!251906) suffix!1342)))))

(declare-fun get!2256 (Option!1512) tuple2!6816)

(assert (=> b!594042 (= lt!251906 (get!2256 lt!251921))))

(declare-fun tp!185236 () Bool)

(declare-fun e!359349 () Bool)

(declare-fun b!594043 () Bool)

(assert (=> b!594043 (= e!359345 (and tp!185236 (inv!7459 (tag!1423 (rule!1931 token!491))) (inv!7463 (transformation!1161 (rule!1931 token!491))) e!359349))))

(declare-fun b!594044 () Bool)

(assert (=> b!594044 (= e!359341 true)))

(declare-fun lt!251904 () Bool)

(assert (=> b!594044 (= lt!251904 (isPrefix!789 lt!251919 lt!251911))))

(declare-fun lt!251915 () List!5898)

(assert (=> b!594044 (= lt!251915 (getSuffix!306 lt!251911 lt!251919))))

(assert (=> b!594045 (= e!359349 (and tp!185237 tp!185238))))

(assert (= (and start!55912 res!256243) b!594032))

(assert (= (and b!594032 res!256244) b!594027))

(assert (= (and b!594027 res!256236) b!594031))

(assert (= (and b!594031 res!256241) b!594025))

(assert (= (and b!594025 res!256239) b!594039))

(assert (= (and b!594039 res!256234) b!594042))

(assert (= (and b!594042 res!256235) b!594026))

(assert (= (and b!594026 res!256240) b!594024))

(assert (= (and b!594024 res!256238) b!594029))

(assert (= (and b!594029 c!110684) b!594028))

(assert (= (and b!594029 (not c!110684)) b!594035))

(assert (= (and b!594029 res!256242) b!594038))

(assert (= (and b!594038 res!256233) b!594030))

(assert (= (and b!594029 (not res!256237)) b!594044))

(assert (= (and start!55912 ((_ is Cons!5888) suffix!1342)) b!594036))

(assert (= b!594033 b!594041))

(assert (= b!594040 b!594033))

(assert (= (and start!55912 ((_ is Cons!5890) rules!3103)) b!594040))

(assert (= b!594043 b!594045))

(assert (= b!594034 b!594043))

(assert (= start!55912 b!594034))

(assert (= (and start!55912 ((_ is Cons!5888) input!2705)) b!594037))

(declare-fun m!856015 () Bool)

(assert (=> b!594043 m!856015))

(declare-fun m!856017 () Bool)

(assert (=> b!594043 m!856017))

(declare-fun m!856019 () Bool)

(assert (=> b!594027 m!856019))

(declare-fun m!856021 () Bool)

(assert (=> b!594029 m!856021))

(declare-fun m!856023 () Bool)

(assert (=> b!594029 m!856023))

(declare-fun m!856025 () Bool)

(assert (=> b!594029 m!856025))

(declare-fun m!856027 () Bool)

(assert (=> b!594029 m!856027))

(declare-fun m!856029 () Bool)

(assert (=> b!594029 m!856029))

(declare-fun m!856031 () Bool)

(assert (=> b!594029 m!856031))

(declare-fun m!856033 () Bool)

(assert (=> b!594029 m!856033))

(declare-fun m!856035 () Bool)

(assert (=> b!594029 m!856035))

(declare-fun m!856037 () Bool)

(assert (=> b!594029 m!856037))

(declare-fun m!856039 () Bool)

(assert (=> b!594029 m!856039))

(declare-fun m!856041 () Bool)

(assert (=> b!594029 m!856041))

(declare-fun m!856043 () Bool)

(assert (=> b!594029 m!856043))

(declare-fun m!856045 () Bool)

(assert (=> b!594029 m!856045))

(declare-fun m!856047 () Bool)

(assert (=> b!594029 m!856047))

(assert (=> b!594029 m!856029))

(declare-fun m!856049 () Bool)

(assert (=> b!594029 m!856049))

(declare-fun m!856051 () Bool)

(assert (=> b!594029 m!856051))

(declare-fun m!856053 () Bool)

(assert (=> b!594029 m!856053))

(assert (=> b!594029 m!856023))

(declare-fun m!856055 () Bool)

(assert (=> b!594029 m!856055))

(declare-fun m!856057 () Bool)

(assert (=> b!594029 m!856057))

(declare-fun m!856059 () Bool)

(assert (=> b!594029 m!856059))

(declare-fun m!856061 () Bool)

(assert (=> b!594029 m!856061))

(declare-fun m!856063 () Bool)

(assert (=> b!594029 m!856063))

(declare-fun m!856065 () Bool)

(assert (=> b!594029 m!856065))

(declare-fun m!856067 () Bool)

(assert (=> b!594029 m!856067))

(assert (=> b!594029 m!856037))

(declare-fun m!856069 () Bool)

(assert (=> b!594029 m!856069))

(declare-fun m!856071 () Bool)

(assert (=> b!594029 m!856071))

(declare-fun m!856073 () Bool)

(assert (=> b!594029 m!856073))

(declare-fun m!856075 () Bool)

(assert (=> b!594026 m!856075))

(declare-fun m!856077 () Bool)

(assert (=> b!594039 m!856077))

(declare-fun m!856079 () Bool)

(assert (=> b!594039 m!856079))

(declare-fun m!856081 () Bool)

(assert (=> b!594039 m!856081))

(declare-fun m!856083 () Bool)

(assert (=> b!594038 m!856083))

(declare-fun m!856085 () Bool)

(assert (=> b!594044 m!856085))

(declare-fun m!856087 () Bool)

(assert (=> b!594044 m!856087))

(declare-fun m!856089 () Bool)

(assert (=> b!594032 m!856089))

(declare-fun m!856091 () Bool)

(assert (=> b!594034 m!856091))

(declare-fun m!856093 () Bool)

(assert (=> b!594042 m!856093))

(declare-fun m!856095 () Bool)

(assert (=> b!594024 m!856095))

(declare-fun m!856097 () Bool)

(assert (=> b!594025 m!856097))

(assert (=> b!594025 m!856097))

(declare-fun m!856099 () Bool)

(assert (=> b!594025 m!856099))

(declare-fun m!856101 () Bool)

(assert (=> start!55912 m!856101))

(declare-fun m!856103 () Bool)

(assert (=> b!594031 m!856103))

(declare-fun m!856105 () Bool)

(assert (=> b!594033 m!856105))

(declare-fun m!856107 () Bool)

(assert (=> b!594033 m!856107))

(check-sat (not b!594024) (not b!594036) (not b!594042) (not b!594025) b_and!58571 (not b!594037) (not b_next!16759) (not b!594027) b_and!58573 b_and!58575 tp_is_empty!3345 (not b!594040) (not b!594034) (not b!594033) (not b!594026) (not b!594029) (not b_next!16761) (not b!594032) (not b!594038) (not b!594039) (not start!55912) (not b!594043) b_and!58577 (not b!594044) (not b!594031) (not b_next!16763) (not b_next!16757))
(check-sat b_and!58571 (not b_next!16759) b_and!58573 b_and!58575 b_and!58577 (not b_next!16761) (not b_next!16763) (not b_next!16757))
