; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!172546 () Bool)

(assert start!172546)

(declare-fun b!1749875 () Bool)

(declare-fun b_free!48235 () Bool)

(declare-fun b_next!48939 () Bool)

(assert (=> b!1749875 (= b_free!48235 (not b_next!48939))))

(declare-fun tp!497786 () Bool)

(declare-fun b_and!130747 () Bool)

(assert (=> b!1749875 (= tp!497786 b_and!130747)))

(declare-fun b_free!48237 () Bool)

(declare-fun b_next!48941 () Bool)

(assert (=> b!1749875 (= b_free!48237 (not b_next!48941))))

(declare-fun tp!497793 () Bool)

(declare-fun b_and!130749 () Bool)

(assert (=> b!1749875 (= tp!497793 b_and!130749)))

(declare-fun b!1749852 () Bool)

(declare-fun b_free!48239 () Bool)

(declare-fun b_next!48943 () Bool)

(assert (=> b!1749852 (= b_free!48239 (not b_next!48943))))

(declare-fun tp!497794 () Bool)

(declare-fun b_and!130751 () Bool)

(assert (=> b!1749852 (= tp!497794 b_and!130751)))

(declare-fun b_free!48241 () Bool)

(declare-fun b_next!48945 () Bool)

(assert (=> b!1749852 (= b_free!48241 (not b_next!48945))))

(declare-fun tp!497796 () Bool)

(declare-fun b_and!130753 () Bool)

(assert (=> b!1749852 (= tp!497796 b_and!130753)))

(declare-fun b!1749879 () Bool)

(declare-fun b_free!48243 () Bool)

(declare-fun b_next!48947 () Bool)

(assert (=> b!1749879 (= b_free!48243 (not b_next!48947))))

(declare-fun tp!497789 () Bool)

(declare-fun b_and!130755 () Bool)

(assert (=> b!1749879 (= tp!497789 b_and!130755)))

(declare-fun b_free!48245 () Bool)

(declare-fun b_next!48949 () Bool)

(assert (=> b!1749879 (= b_free!48245 (not b_next!48949))))

(declare-fun tp!497790 () Bool)

(declare-fun b_and!130757 () Bool)

(assert (=> b!1749879 (= tp!497790 b_and!130757)))

(declare-fun b!1749892 () Bool)

(declare-fun e!1119965 () Bool)

(assert (=> b!1749892 (= e!1119965 true)))

(declare-fun b!1749891 () Bool)

(declare-fun e!1119964 () Bool)

(assert (=> b!1749891 (= e!1119964 e!1119965)))

(declare-fun b!1749890 () Bool)

(declare-fun e!1119963 () Bool)

(assert (=> b!1749890 (= e!1119963 e!1119964)))

(declare-fun b!1749878 () Bool)

(assert (=> b!1749878 e!1119963))

(assert (= b!1749891 b!1749892))

(assert (= b!1749890 b!1749891))

(assert (= b!1749878 b!1749890))

(declare-fun lambda!69842 () Int)

(declare-fun order!12083 () Int)

(declare-fun order!12085 () Int)

(declare-datatypes ((List!19312 0))(
  ( (Nil!19242) (Cons!19242 (h!24643 (_ BitVec 16)) (t!162799 List!19312)) )
))
(declare-datatypes ((TokenValue!3523 0))(
  ( (FloatLiteralValue!7046 (text!25106 List!19312)) (TokenValueExt!3522 (__x!12348 Int)) (Broken!17615 (value!107487 List!19312)) (Object!3592) (End!3523) (Def!3523) (Underscore!3523) (Match!3523) (Else!3523) (Error!3523) (Case!3523) (If!3523) (Extends!3523) (Abstract!3523) (Class!3523) (Val!3523) (DelimiterValue!7046 (del!3583 List!19312)) (KeywordValue!3529 (value!107488 List!19312)) (CommentValue!7046 (value!107489 List!19312)) (WhitespaceValue!7046 (value!107490 List!19312)) (IndentationValue!3523 (value!107491 List!19312)) (String!21946) (Int32!3523) (Broken!17616 (value!107492 List!19312)) (Boolean!3524) (Unit!33330) (OperatorValue!3526 (op!3583 List!19312)) (IdentifierValue!7046 (value!107493 List!19312)) (IdentifierValue!7047 (value!107494 List!19312)) (WhitespaceValue!7047 (value!107495 List!19312)) (True!7046) (False!7046) (Broken!17617 (value!107496 List!19312)) (Broken!17618 (value!107497 List!19312)) (True!7047) (RightBrace!3523) (RightBracket!3523) (Colon!3523) (Null!3523) (Comma!3523) (LeftBracket!3523) (False!7047) (LeftBrace!3523) (ImaginaryLiteralValue!3523 (text!25107 List!19312)) (StringLiteralValue!10569 (value!107498 List!19312)) (EOFValue!3523 (value!107499 List!19312)) (IdentValue!3523 (value!107500 List!19312)) (DelimiterValue!7047 (value!107501 List!19312)) (DedentValue!3523 (value!107502 List!19312)) (NewLineValue!3523 (value!107503 List!19312)) (IntegerValue!10569 (value!107504 (_ BitVec 32)) (text!25108 List!19312)) (IntegerValue!10570 (value!107505 Int) (text!25109 List!19312)) (Times!3523) (Or!3523) (Equal!3523) (Minus!3523) (Broken!17619 (value!107506 List!19312)) (And!3523) (Div!3523) (LessEqual!3523) (Mod!3523) (Concat!8284) (Not!3523) (Plus!3523) (SpaceValue!3523 (value!107507 List!19312)) (IntegerValue!10571 (value!107508 Int) (text!25110 List!19312)) (StringLiteralValue!10570 (text!25111 List!19312)) (FloatLiteralValue!7047 (text!25112 List!19312)) (BytesLiteralValue!3523 (value!107509 List!19312)) (CommentValue!7047 (value!107510 List!19312)) (StringLiteralValue!10571 (value!107511 List!19312)) (ErrorTokenValue!3523 (msg!3584 List!19312)) )
))
(declare-datatypes ((C!9696 0))(
  ( (C!9697 (val!5444 Int)) )
))
(declare-datatypes ((List!19313 0))(
  ( (Nil!19243) (Cons!19243 (h!24644 C!9696) (t!162800 List!19313)) )
))
(declare-datatypes ((Regex!4761 0))(
  ( (ElementMatch!4761 (c!285352 C!9696)) (Concat!8285 (regOne!10034 Regex!4761) (regTwo!10034 Regex!4761)) (EmptyExpr!4761) (Star!4761 (reg!5090 Regex!4761)) (EmptyLang!4761) (Union!4761 (regOne!10035 Regex!4761) (regTwo!10035 Regex!4761)) )
))
(declare-datatypes ((String!21947 0))(
  ( (String!21948 (value!107512 String)) )
))
(declare-datatypes ((IArray!12807 0))(
  ( (IArray!12808 (innerList!6461 List!19313)) )
))
(declare-datatypes ((Conc!6401 0))(
  ( (Node!6401 (left!15395 Conc!6401) (right!15725 Conc!6401) (csize!13032 Int) (cheight!6612 Int)) (Leaf!9338 (xs!9277 IArray!12807) (csize!13033 Int)) (Empty!6401) )
))
(declare-datatypes ((BalanceConc!12746 0))(
  ( (BalanceConc!12747 (c!285353 Conc!6401)) )
))
(declare-datatypes ((TokenValueInjection!6706 0))(
  ( (TokenValueInjection!6707 (toValue!4948 Int) (toChars!4807 Int)) )
))
(declare-datatypes ((Rule!6666 0))(
  ( (Rule!6667 (regex!3433 Regex!4761) (tag!3783 String!21947) (isSeparator!3433 Bool) (transformation!3433 TokenValueInjection!6706)) )
))
(declare-datatypes ((Token!6432 0))(
  ( (Token!6433 (value!107513 TokenValue!3523) (rule!5441 Rule!6666) (size!15286 Int) (originalCharacters!4247 List!19313)) )
))
(declare-datatypes ((tuple2!18878 0))(
  ( (tuple2!18879 (_1!10841 Token!6432) (_2!10841 List!19313)) )
))
(declare-fun lt!675303 () tuple2!18878)

(declare-fun dynLambda!9166 (Int Int) Int)

(declare-fun dynLambda!9167 (Int Int) Int)

(assert (=> b!1749892 (< (dynLambda!9166 order!12083 (toValue!4948 (transformation!3433 (rule!5441 (_1!10841 lt!675303))))) (dynLambda!9167 order!12085 lambda!69842))))

(declare-fun order!12087 () Int)

(declare-fun dynLambda!9168 (Int Int) Int)

(assert (=> b!1749892 (< (dynLambda!9168 order!12087 (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303))))) (dynLambda!9167 order!12085 lambda!69842))))

(declare-fun e!1119930 () Bool)

(declare-fun e!1119942 () Bool)

(declare-fun tp!497785 () Bool)

(declare-datatypes ((List!19314 0))(
  ( (Nil!19244) (Cons!19244 (h!24645 Rule!6666) (t!162801 List!19314)) )
))
(declare-fun rules!3447 () List!19314)

(declare-fun b!1749848 () Bool)

(declare-fun inv!24953 (String!21947) Bool)

(declare-fun inv!24958 (TokenValueInjection!6706) Bool)

(assert (=> b!1749848 (= e!1119930 (and tp!497785 (inv!24953 (tag!3783 (h!24645 rules!3447))) (inv!24958 (transformation!3433 (h!24645 rules!3447))) e!1119942))))

(declare-fun b!1749849 () Bool)

(declare-datatypes ((Unit!33331 0))(
  ( (Unit!33332) )
))
(declare-fun e!1119929 () Unit!33331)

(declare-fun Unit!33333 () Unit!33331)

(assert (=> b!1749849 (= e!1119929 Unit!33333)))

(declare-fun b!1749850 () Bool)

(declare-fun res!787053 () Bool)

(declare-fun e!1119953 () Bool)

(assert (=> b!1749850 (=> (not res!787053) (not e!1119953))))

(declare-datatypes ((LexerInterface!3062 0))(
  ( (LexerInterfaceExt!3059 (__x!12349 Int)) (Lexer!3060) )
))
(declare-fun thiss!24550 () LexerInterface!3062)

(declare-fun rulesInvariant!2731 (LexerInterface!3062 List!19314) Bool)

(assert (=> b!1749850 (= res!787053 (rulesInvariant!2731 thiss!24550 rules!3447))))

(declare-fun b!1749851 () Bool)

(declare-fun res!787046 () Bool)

(declare-fun e!1119951 () Bool)

(assert (=> b!1749851 (=> res!787046 e!1119951)))

(declare-fun lt!675314 () BalanceConc!12746)

(declare-fun dynLambda!9169 (Int TokenValue!3523) BalanceConc!12746)

(assert (=> b!1749851 (= res!787046 (not (= lt!675314 (dynLambda!9169 (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303)))) (value!107513 (_1!10841 lt!675303))))))))

(declare-fun e!1119936 () Bool)

(assert (=> b!1749852 (= e!1119936 (and tp!497794 tp!497796))))

(declare-fun b!1749853 () Bool)

(declare-fun res!787057 () Bool)

(assert (=> b!1749853 (=> (not res!787057) (not e!1119953))))

(declare-fun rule!422 () Rule!6666)

(declare-fun contains!3459 (List!19314 Rule!6666) Bool)

(assert (=> b!1749853 (= res!787057 (contains!3459 rules!3447 rule!422))))

(declare-fun b!1749854 () Bool)

(declare-fun e!1119935 () Unit!33331)

(declare-fun Unit!33334 () Unit!33331)

(assert (=> b!1749854 (= e!1119935 Unit!33334)))

(declare-fun res!787056 () Bool)

(assert (=> start!172546 (=> (not res!787056) (not e!1119953))))

(get-info :version)

(assert (=> start!172546 (= res!787056 ((_ is Lexer!3060) thiss!24550))))

(assert (=> start!172546 e!1119953))

(declare-fun e!1119938 () Bool)

(assert (=> start!172546 e!1119938))

(declare-fun e!1119934 () Bool)

(assert (=> start!172546 e!1119934))

(assert (=> start!172546 true))

(declare-fun token!523 () Token!6432)

(declare-fun e!1119940 () Bool)

(declare-fun inv!24959 (Token!6432) Bool)

(assert (=> start!172546 (and (inv!24959 token!523) e!1119940)))

(declare-fun e!1119952 () Bool)

(assert (=> start!172546 e!1119952))

(declare-fun b!1749855 () Bool)

(declare-fun Unit!33335 () Unit!33331)

(assert (=> b!1749855 (= e!1119929 Unit!33335)))

(declare-fun lt!675332 () Unit!33331)

(declare-fun lt!675328 () List!19313)

(declare-fun lt!675302 () List!19313)

(declare-fun lt!675309 () List!19313)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!204 (LexerInterface!3062 List!19314 Rule!6666 List!19313 List!19313 List!19313 Rule!6666) Unit!33331)

(assert (=> b!1749855 (= lt!675332 (lemmaMaxPrefixOutputsMaxPrefix!204 thiss!24550 rules!3447 (rule!5441 (_1!10841 lt!675303)) lt!675302 lt!675328 lt!675309 rule!422))))

(assert (=> b!1749855 false))

(declare-fun b!1749856 () Bool)

(declare-fun e!1119945 () Bool)

(declare-fun lt!675315 () Int)

(declare-fun lt!675299 () Int)

(assert (=> b!1749856 (= e!1119945 (= lt!675315 lt!675299))))

(declare-fun lt!675301 () Unit!33331)

(assert (=> b!1749856 (= lt!675301 e!1119929)))

(declare-fun c!285351 () Bool)

(assert (=> b!1749856 (= c!285351 (< lt!675315 lt!675299))))

(declare-fun b!1749857 () Bool)

(declare-fun e!1119949 () Bool)

(declare-fun lt!675312 () Rule!6666)

(assert (=> b!1749857 (= e!1119949 (= (rule!5441 (_1!10841 lt!675303)) lt!675312))))

(declare-fun tp!497791 () Bool)

(declare-fun e!1119941 () Bool)

(declare-fun b!1749858 () Bool)

(assert (=> b!1749858 (= e!1119934 (and tp!497791 (inv!24953 (tag!3783 rule!422)) (inv!24958 (transformation!3433 rule!422)) e!1119941))))

(declare-fun e!1119955 () Bool)

(declare-fun tp!497795 () Bool)

(declare-fun b!1749859 () Bool)

(declare-fun inv!21 (TokenValue!3523) Bool)

(assert (=> b!1749859 (= e!1119940 (and (inv!21 (value!107513 token!523)) e!1119955 tp!497795))))

(declare-fun b!1749860 () Bool)

(declare-fun res!787055 () Bool)

(declare-fun e!1119937 () Bool)

(assert (=> b!1749860 (=> res!787055 e!1119937)))

(declare-fun matchR!2235 (Regex!4761 List!19313) Bool)

(assert (=> b!1749860 (= res!787055 (not (matchR!2235 (regex!3433 (rule!5441 (_1!10841 lt!675303))) lt!675302)))))

(declare-fun b!1749861 () Bool)

(declare-fun e!1119943 () Bool)

(assert (=> b!1749861 (= e!1119943 e!1119945)))

(declare-fun res!787048 () Bool)

(assert (=> b!1749861 (=> res!787048 e!1119945)))

(declare-fun lt!675334 () Bool)

(assert (=> b!1749861 (= res!787048 lt!675334)))

(declare-fun lt!675318 () Unit!33331)

(assert (=> b!1749861 (= lt!675318 e!1119935)))

(declare-fun c!285350 () Bool)

(assert (=> b!1749861 (= c!285350 lt!675334)))

(assert (=> b!1749861 (= lt!675334 (> lt!675315 lt!675299))))

(declare-fun lt!675338 () BalanceConc!12746)

(declare-fun size!15287 (BalanceConc!12746) Int)

(assert (=> b!1749861 (= lt!675299 (size!15287 lt!675338))))

(declare-fun lt!675331 () Regex!4761)

(assert (=> b!1749861 (matchR!2235 lt!675331 lt!675309)))

(declare-fun lt!675319 () Unit!33331)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!164 (LexerInterface!3062 List!19314 List!19313 Token!6432 Rule!6666 List!19313) Unit!33331)

(assert (=> b!1749861 (= lt!675319 (lemmaMaxPrefixThenMatchesRulesRegex!164 thiss!24550 rules!3447 lt!675309 token!523 rule!422 Nil!19243))))

(declare-fun tp!497792 () Bool)

(declare-fun b!1749862 () Bool)

(assert (=> b!1749862 (= e!1119955 (and tp!497792 (inv!24953 (tag!3783 (rule!5441 token!523))) (inv!24958 (transformation!3433 (rule!5441 token!523))) e!1119936))))

(declare-fun b!1749863 () Bool)

(declare-fun res!787052 () Bool)

(declare-fun e!1119932 () Bool)

(assert (=> b!1749863 (=> res!787052 e!1119932)))

(declare-fun suffix!1421 () List!19313)

(declare-fun isEmpty!12127 (List!19313) Bool)

(assert (=> b!1749863 (= res!787052 (isEmpty!12127 suffix!1421))))

(declare-fun b!1749864 () Bool)

(declare-fun e!1119956 () Bool)

(assert (=> b!1749864 (= e!1119951 e!1119956)))

(declare-fun res!787059 () Bool)

(assert (=> b!1749864 (=> res!787059 e!1119956)))

(declare-datatypes ((Option!3890 0))(
  ( (None!3889) (Some!3889 (v!25332 tuple2!18878)) )
))
(declare-fun lt!675327 () Option!3890)

(declare-fun lt!675337 () TokenValue!3523)

(assert (=> b!1749864 (= res!787059 (not (= lt!675327 (Some!3889 (tuple2!18879 (Token!6433 lt!675337 (rule!5441 (_1!10841 lt!675303)) lt!675315 lt!675302) (_2!10841 lt!675303))))))))

(assert (=> b!1749864 (= lt!675315 (size!15287 lt!675314))))

(declare-fun apply!5234 (TokenValueInjection!6706 BalanceConc!12746) TokenValue!3523)

(assert (=> b!1749864 (= lt!675337 (apply!5234 (transformation!3433 (rule!5441 (_1!10841 lt!675303))) lt!675314))))

(declare-fun lt!675308 () Unit!33331)

(declare-fun lemmaCharactersSize!493 (Token!6432) Unit!33331)

(assert (=> b!1749864 (= lt!675308 (lemmaCharactersSize!493 (_1!10841 lt!675303)))))

(declare-fun lt!675333 () Unit!33331)

(declare-fun lemmaEqSameImage!346 (TokenValueInjection!6706 BalanceConc!12746 BalanceConc!12746) Unit!33331)

(declare-fun seqFromList!2403 (List!19313) BalanceConc!12746)

(assert (=> b!1749864 (= lt!675333 (lemmaEqSameImage!346 (transformation!3433 (rule!5441 (_1!10841 lt!675303))) lt!675314 (seqFromList!2403 (originalCharacters!4247 (_1!10841 lt!675303)))))))

(declare-fun b!1749865 () Bool)

(declare-fun res!787042 () Bool)

(assert (=> b!1749865 (=> (not res!787042) (not e!1119953))))

(declare-fun isEmpty!12128 (List!19314) Bool)

(assert (=> b!1749865 (= res!787042 (not (isEmpty!12128 rules!3447)))))

(declare-fun b!1749866 () Bool)

(assert (=> b!1749866 (= e!1119956 e!1119943)))

(declare-fun res!787049 () Bool)

(assert (=> b!1749866 (=> res!787049 e!1119943)))

(declare-fun lt!675307 () List!19313)

(declare-fun lt!675300 () Option!3890)

(assert (=> b!1749866 (= res!787049 (or (not (= lt!675307 (_2!10841 lt!675303))) (not (= lt!675300 (Some!3889 (tuple2!18879 (_1!10841 lt!675303) lt!675307))))))))

(assert (=> b!1749866 (= (_2!10841 lt!675303) lt!675307)))

(declare-fun lt!675311 () Unit!33331)

(declare-fun lemmaSamePrefixThenSameSuffix!804 (List!19313 List!19313 List!19313 List!19313 List!19313) Unit!33331)

(assert (=> b!1749866 (= lt!675311 (lemmaSamePrefixThenSameSuffix!804 lt!675302 (_2!10841 lt!675303) lt!675302 lt!675307 lt!675328))))

(declare-fun getSuffix!854 (List!19313 List!19313) List!19313)

(assert (=> b!1749866 (= lt!675307 (getSuffix!854 lt!675328 lt!675302))))

(declare-fun lt!675322 () TokenValue!3523)

(declare-fun lt!675305 () Int)

(assert (=> b!1749866 (= lt!675300 (Some!3889 (tuple2!18879 (Token!6433 lt!675322 (rule!5441 (_1!10841 lt!675303)) lt!675305 lt!675302) (_2!10841 lt!675303))))))

(declare-fun maxPrefixOneRule!988 (LexerInterface!3062 Rule!6666 List!19313) Option!3890)

(assert (=> b!1749866 (= lt!675300 (maxPrefixOneRule!988 thiss!24550 (rule!5441 (_1!10841 lt!675303)) lt!675328))))

(declare-fun size!15288 (List!19313) Int)

(assert (=> b!1749866 (= lt!675305 (size!15288 lt!675302))))

(assert (=> b!1749866 (= lt!675322 (apply!5234 (transformation!3433 (rule!5441 (_1!10841 lt!675303))) (seqFromList!2403 lt!675302)))))

(declare-fun lt!675304 () Unit!33331)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!377 (LexerInterface!3062 List!19314 List!19313 List!19313 List!19313 Rule!6666) Unit!33331)

(assert (=> b!1749866 (= lt!675304 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!377 thiss!24550 rules!3447 lt!675302 lt!675328 (_2!10841 lt!675303) (rule!5441 (_1!10841 lt!675303))))))

(declare-fun b!1749867 () Bool)

(declare-fun e!1119931 () Bool)

(declare-fun e!1119950 () Bool)

(assert (=> b!1749867 (= e!1119931 e!1119950)))

(declare-fun res!787044 () Bool)

(assert (=> b!1749867 (=> (not res!787044) (not e!1119950))))

(declare-fun lt!675326 () tuple2!18878)

(assert (=> b!1749867 (= res!787044 (= (_1!10841 lt!675326) token!523))))

(declare-fun lt!675313 () Option!3890)

(declare-fun get!5824 (Option!3890) tuple2!18878)

(assert (=> b!1749867 (= lt!675326 (get!5824 lt!675313))))

(declare-fun b!1749868 () Bool)

(declare-fun e!1119948 () Bool)

(assert (=> b!1749868 (= e!1119932 e!1119948)))

(declare-fun res!787061 () Bool)

(assert (=> b!1749868 (=> res!787061 e!1119948)))

(declare-fun lt!675330 () List!19313)

(declare-fun prefixMatch!646 (Regex!4761 List!19313) Bool)

(assert (=> b!1749868 (= res!787061 (prefixMatch!646 lt!675331 lt!675330))))

(declare-fun ++!5258 (List!19313 List!19313) List!19313)

(declare-fun head!4030 (List!19313) C!9696)

(assert (=> b!1749868 (= lt!675330 (++!5258 lt!675309 (Cons!19243 (head!4030 suffix!1421) Nil!19243)))))

(declare-fun rulesRegex!791 (LexerInterface!3062 List!19314) Regex!4761)

(assert (=> b!1749868 (= lt!675331 (rulesRegex!791 thiss!24550 rules!3447))))

(declare-fun b!1749869 () Bool)

(declare-fun res!787060 () Bool)

(assert (=> b!1749869 (=> (not res!787060) (not e!1119950))))

(assert (=> b!1749869 (= res!787060 (isEmpty!12127 (_2!10841 lt!675326)))))

(declare-fun b!1749870 () Bool)

(assert (=> b!1749870 (= e!1119950 (not e!1119932))))

(declare-fun res!787054 () Bool)

(assert (=> b!1749870 (=> res!787054 e!1119932)))

(assert (=> b!1749870 (= res!787054 (not (matchR!2235 (regex!3433 rule!422) lt!675309)))))

(declare-fun ruleValid!932 (LexerInterface!3062 Rule!6666) Bool)

(assert (=> b!1749870 (ruleValid!932 thiss!24550 rule!422)))

(declare-fun lt!675324 () Unit!33331)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!456 (LexerInterface!3062 Rule!6666 List!19314) Unit!33331)

(assert (=> b!1749870 (= lt!675324 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!456 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1749871 () Bool)

(assert (=> b!1749871 (= e!1119948 e!1119937)))

(declare-fun res!787058 () Bool)

(assert (=> b!1749871 (=> res!787058 e!1119937)))

(declare-fun isPrefix!1674 (List!19313 List!19313) Bool)

(assert (=> b!1749871 (= res!787058 (not (isPrefix!1674 lt!675302 lt!675328)))))

(assert (=> b!1749871 (isPrefix!1674 lt!675302 (++!5258 lt!675302 (_2!10841 lt!675303)))))

(declare-fun lt!675321 () Unit!33331)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1184 (List!19313 List!19313) Unit!33331)

(assert (=> b!1749871 (= lt!675321 (lemmaConcatTwoListThenFirstIsPrefix!1184 lt!675302 (_2!10841 lt!675303)))))

(declare-fun list!7794 (BalanceConc!12746) List!19313)

(assert (=> b!1749871 (= lt!675302 (list!7794 lt!675314))))

(declare-fun charsOf!2082 (Token!6432) BalanceConc!12746)

(assert (=> b!1749871 (= lt!675314 (charsOf!2082 (_1!10841 lt!675303)))))

(declare-fun e!1119933 () Bool)

(assert (=> b!1749871 e!1119933))

(declare-fun res!787047 () Bool)

(assert (=> b!1749871 (=> (not res!787047) (not e!1119933))))

(declare-datatypes ((Option!3891 0))(
  ( (None!3890) (Some!3890 (v!25333 Rule!6666)) )
))
(declare-fun lt!675336 () Option!3891)

(declare-fun isDefined!3233 (Option!3891) Bool)

(assert (=> b!1749871 (= res!787047 (isDefined!3233 lt!675336))))

(declare-fun getRuleFromTag!483 (LexerInterface!3062 List!19314 String!21947) Option!3891)

(assert (=> b!1749871 (= lt!675336 (getRuleFromTag!483 thiss!24550 rules!3447 (tag!3783 (rule!5441 (_1!10841 lt!675303)))))))

(declare-fun lt!675323 () Unit!33331)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!483 (LexerInterface!3062 List!19314 List!19313 Token!6432) Unit!33331)

(assert (=> b!1749871 (= lt!675323 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!483 thiss!24550 rules!3447 lt!675328 (_1!10841 lt!675303)))))

(assert (=> b!1749871 (= lt!675303 (get!5824 lt!675327))))

(declare-fun lt!675306 () Unit!33331)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!586 (LexerInterface!3062 List!19314 List!19313 List!19313) Unit!33331)

(assert (=> b!1749871 (= lt!675306 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!586 thiss!24550 rules!3447 lt!675309 suffix!1421))))

(declare-fun maxPrefix!1616 (LexerInterface!3062 List!19314 List!19313) Option!3890)

(assert (=> b!1749871 (= lt!675327 (maxPrefix!1616 thiss!24550 rules!3447 lt!675328))))

(assert (=> b!1749871 (isPrefix!1674 lt!675309 lt!675328)))

(declare-fun lt!675325 () Unit!33331)

(assert (=> b!1749871 (= lt!675325 (lemmaConcatTwoListThenFirstIsPrefix!1184 lt!675309 suffix!1421))))

(assert (=> b!1749871 (= lt!675328 (++!5258 lt!675309 suffix!1421))))

(declare-fun b!1749872 () Bool)

(declare-fun res!787051 () Bool)

(assert (=> b!1749872 (=> (not res!787051) (not e!1119950))))

(assert (=> b!1749872 (= res!787051 (= (rule!5441 token!523) rule!422))))

(declare-fun b!1749873 () Bool)

(declare-fun e!1119946 () Bool)

(assert (=> b!1749873 (= e!1119946 e!1119951)))

(declare-fun res!787045 () Bool)

(assert (=> b!1749873 (=> res!787045 e!1119951)))

(declare-fun dynLambda!9170 (Int BalanceConc!12746) TokenValue!3523)

(assert (=> b!1749873 (= res!787045 (not (= (list!7794 (dynLambda!9169 (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303)))) (dynLambda!9170 (toValue!4948 (transformation!3433 (rule!5441 (_1!10841 lt!675303)))) lt!675314))) lt!675302)))))

(declare-fun lt!675320 () Unit!33331)

(declare-fun lemmaSemiInverse!573 (TokenValueInjection!6706 BalanceConc!12746) Unit!33331)

(assert (=> b!1749873 (= lt!675320 (lemmaSemiInverse!573 (transformation!3433 (rule!5441 (_1!10841 lt!675303))) lt!675314))))

(declare-fun b!1749874 () Bool)

(declare-fun tp_is_empty!7765 () Bool)

(declare-fun tp!497788 () Bool)

(assert (=> b!1749874 (= e!1119938 (and tp_is_empty!7765 tp!497788))))

(assert (=> b!1749875 (= e!1119942 (and tp!497786 tp!497793))))

(declare-fun b!1749876 () Bool)

(assert (=> b!1749876 (= e!1119953 e!1119931)))

(declare-fun res!787050 () Bool)

(assert (=> b!1749876 (=> (not res!787050) (not e!1119931))))

(declare-fun isDefined!3234 (Option!3890) Bool)

(assert (=> b!1749876 (= res!787050 (isDefined!3234 lt!675313))))

(assert (=> b!1749876 (= lt!675313 (maxPrefix!1616 thiss!24550 rules!3447 lt!675309))))

(assert (=> b!1749876 (= lt!675309 (list!7794 lt!675338))))

(assert (=> b!1749876 (= lt!675338 (charsOf!2082 token!523))))

(declare-fun b!1749877 () Bool)

(assert (=> b!1749877 (= e!1119933 e!1119949)))

(declare-fun res!787062 () Bool)

(assert (=> b!1749877 (=> (not res!787062) (not e!1119949))))

(assert (=> b!1749877 (= res!787062 (matchR!2235 (regex!3433 lt!675312) (list!7794 (charsOf!2082 (_1!10841 lt!675303)))))))

(declare-fun get!5825 (Option!3891) Rule!6666)

(assert (=> b!1749877 (= lt!675312 (get!5825 lt!675336))))

(assert (=> b!1749878 (= e!1119937 e!1119946)))

(declare-fun res!787043 () Bool)

(assert (=> b!1749878 (=> res!787043 e!1119946)))

(declare-fun Forall!802 (Int) Bool)

(assert (=> b!1749878 (= res!787043 (not (Forall!802 lambda!69842)))))

(declare-fun lt!675335 () Unit!33331)

(declare-fun lemmaInv!634 (TokenValueInjection!6706) Unit!33331)

(assert (=> b!1749878 (= lt!675335 (lemmaInv!634 (transformation!3433 (rule!5441 (_1!10841 lt!675303)))))))

(assert (=> b!1749879 (= e!1119941 (and tp!497789 tp!497790))))

(declare-fun b!1749880 () Bool)

(declare-fun Unit!33336 () Unit!33331)

(assert (=> b!1749880 (= e!1119935 Unit!33336)))

(declare-fun lt!675340 () Unit!33331)

(assert (=> b!1749880 (= lt!675340 (lemmaMaxPrefixThenMatchesRulesRegex!164 thiss!24550 rules!3447 lt!675328 (_1!10841 lt!675303) (rule!5441 (_1!10841 lt!675303)) (_2!10841 lt!675303)))))

(assert (=> b!1749880 (matchR!2235 lt!675331 lt!675302)))

(declare-fun lt!675310 () List!19313)

(assert (=> b!1749880 (= lt!675310 (getSuffix!854 lt!675328 lt!675309))))

(declare-fun lt!675317 () Unit!33331)

(assert (=> b!1749880 (= lt!675317 (lemmaSamePrefixThenSameSuffix!804 lt!675309 suffix!1421 lt!675309 lt!675310 lt!675328))))

(assert (=> b!1749880 (= suffix!1421 lt!675310)))

(declare-fun lt!675329 () Unit!33331)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!249 (List!19313 List!19313) Unit!33331)

(assert (=> b!1749880 (= lt!675329 (lemmaAddHeadSuffixToPrefixStillPrefix!249 lt!675309 lt!675328))))

(assert (=> b!1749880 (isPrefix!1674 (++!5258 lt!675309 (Cons!19243 (head!4030 lt!675310) Nil!19243)) lt!675328)))

(declare-fun lt!675316 () Unit!33331)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!125 (List!19313 List!19313 List!19313) Unit!33331)

(assert (=> b!1749880 (= lt!675316 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!125 lt!675302 lt!675330 lt!675328))))

(assert (=> b!1749880 (isPrefix!1674 lt!675330 lt!675302)))

(declare-fun lt!675339 () Unit!33331)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!118 (Regex!4761 List!19313 List!19313) Unit!33331)

(assert (=> b!1749880 (= lt!675339 (lemmaNotPrefixMatchThenCannotMatchLonger!118 lt!675331 lt!675330 lt!675302))))

(assert (=> b!1749880 false))

(declare-fun b!1749881 () Bool)

(declare-fun tp!497787 () Bool)

(assert (=> b!1749881 (= e!1119952 (and e!1119930 tp!497787))))

(assert (= (and start!172546 res!787056) b!1749865))

(assert (= (and b!1749865 res!787042) b!1749850))

(assert (= (and b!1749850 res!787053) b!1749853))

(assert (= (and b!1749853 res!787057) b!1749876))

(assert (= (and b!1749876 res!787050) b!1749867))

(assert (= (and b!1749867 res!787044) b!1749869))

(assert (= (and b!1749869 res!787060) b!1749872))

(assert (= (and b!1749872 res!787051) b!1749870))

(assert (= (and b!1749870 (not res!787054)) b!1749863))

(assert (= (and b!1749863 (not res!787052)) b!1749868))

(assert (= (and b!1749868 (not res!787061)) b!1749871))

(assert (= (and b!1749871 res!787047) b!1749877))

(assert (= (and b!1749877 res!787062) b!1749857))

(assert (= (and b!1749871 (not res!787058)) b!1749860))

(assert (= (and b!1749860 (not res!787055)) b!1749878))

(assert (= (and b!1749878 (not res!787043)) b!1749873))

(assert (= (and b!1749873 (not res!787045)) b!1749851))

(assert (= (and b!1749851 (not res!787046)) b!1749864))

(assert (= (and b!1749864 (not res!787059)) b!1749866))

(assert (= (and b!1749866 (not res!787049)) b!1749861))

(assert (= (and b!1749861 c!285350) b!1749880))

(assert (= (and b!1749861 (not c!285350)) b!1749854))

(assert (= (and b!1749861 (not res!787048)) b!1749856))

(assert (= (and b!1749856 c!285351) b!1749855))

(assert (= (and b!1749856 (not c!285351)) b!1749849))

(assert (= (and start!172546 ((_ is Cons!19243) suffix!1421)) b!1749874))

(assert (= b!1749858 b!1749879))

(assert (= start!172546 b!1749858))

(assert (= b!1749862 b!1749852))

(assert (= b!1749859 b!1749862))

(assert (= start!172546 b!1749859))

(assert (= b!1749848 b!1749875))

(assert (= b!1749881 b!1749848))

(assert (= (and start!172546 ((_ is Cons!19244) rules!3447)) b!1749881))

(declare-fun b_lambda!56227 () Bool)

(assert (=> (not b_lambda!56227) (not b!1749851)))

(declare-fun t!162782 () Bool)

(declare-fun tb!104897 () Bool)

(assert (=> (and b!1749875 (= (toChars!4807 (transformation!3433 (h!24645 rules!3447))) (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303))))) t!162782) tb!104897))

(declare-fun b!1749897 () Bool)

(declare-fun e!1119968 () Bool)

(declare-fun tp!497799 () Bool)

(declare-fun inv!24960 (Conc!6401) Bool)

(assert (=> b!1749897 (= e!1119968 (and (inv!24960 (c!285353 (dynLambda!9169 (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303)))) (value!107513 (_1!10841 lt!675303))))) tp!497799))))

(declare-fun result!126180 () Bool)

(declare-fun inv!24961 (BalanceConc!12746) Bool)

(assert (=> tb!104897 (= result!126180 (and (inv!24961 (dynLambda!9169 (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303)))) (value!107513 (_1!10841 lt!675303)))) e!1119968))))

(assert (= tb!104897 b!1749897))

(declare-fun m!2163103 () Bool)

(assert (=> b!1749897 m!2163103))

(declare-fun m!2163105 () Bool)

(assert (=> tb!104897 m!2163105))

(assert (=> b!1749851 t!162782))

(declare-fun b_and!130759 () Bool)

(assert (= b_and!130749 (and (=> t!162782 result!126180) b_and!130759)))

(declare-fun tb!104899 () Bool)

(declare-fun t!162784 () Bool)

(assert (=> (and b!1749852 (= (toChars!4807 (transformation!3433 (rule!5441 token!523))) (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303))))) t!162784) tb!104899))

(declare-fun result!126184 () Bool)

(assert (= result!126184 result!126180))

(assert (=> b!1749851 t!162784))

(declare-fun b_and!130761 () Bool)

(assert (= b_and!130753 (and (=> t!162784 result!126184) b_and!130761)))

(declare-fun tb!104901 () Bool)

(declare-fun t!162786 () Bool)

(assert (=> (and b!1749879 (= (toChars!4807 (transformation!3433 rule!422)) (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303))))) t!162786) tb!104901))

(declare-fun result!126186 () Bool)

(assert (= result!126186 result!126180))

(assert (=> b!1749851 t!162786))

(declare-fun b_and!130763 () Bool)

(assert (= b_and!130757 (and (=> t!162786 result!126186) b_and!130763)))

(declare-fun b_lambda!56229 () Bool)

(assert (=> (not b_lambda!56229) (not b!1749873)))

(declare-fun tb!104903 () Bool)

(declare-fun t!162788 () Bool)

(assert (=> (and b!1749875 (= (toChars!4807 (transformation!3433 (h!24645 rules!3447))) (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303))))) t!162788) tb!104903))

(declare-fun e!1119969 () Bool)

(declare-fun b!1749898 () Bool)

(declare-fun tp!497800 () Bool)

(assert (=> b!1749898 (= e!1119969 (and (inv!24960 (c!285353 (dynLambda!9169 (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303)))) (dynLambda!9170 (toValue!4948 (transformation!3433 (rule!5441 (_1!10841 lt!675303)))) lt!675314)))) tp!497800))))

(declare-fun result!126188 () Bool)

(assert (=> tb!104903 (= result!126188 (and (inv!24961 (dynLambda!9169 (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303)))) (dynLambda!9170 (toValue!4948 (transformation!3433 (rule!5441 (_1!10841 lt!675303)))) lt!675314))) e!1119969))))

(assert (= tb!104903 b!1749898))

(declare-fun m!2163107 () Bool)

(assert (=> b!1749898 m!2163107))

(declare-fun m!2163109 () Bool)

(assert (=> tb!104903 m!2163109))

(assert (=> b!1749873 t!162788))

(declare-fun b_and!130765 () Bool)

(assert (= b_and!130759 (and (=> t!162788 result!126188) b_and!130765)))

(declare-fun tb!104905 () Bool)

(declare-fun t!162790 () Bool)

(assert (=> (and b!1749852 (= (toChars!4807 (transformation!3433 (rule!5441 token!523))) (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303))))) t!162790) tb!104905))

(declare-fun result!126190 () Bool)

(assert (= result!126190 result!126188))

(assert (=> b!1749873 t!162790))

(declare-fun b_and!130767 () Bool)

(assert (= b_and!130761 (and (=> t!162790 result!126190) b_and!130767)))

(declare-fun t!162792 () Bool)

(declare-fun tb!104907 () Bool)

(assert (=> (and b!1749879 (= (toChars!4807 (transformation!3433 rule!422)) (toChars!4807 (transformation!3433 (rule!5441 (_1!10841 lt!675303))))) t!162792) tb!104907))

(declare-fun result!126192 () Bool)

(assert (= result!126192 result!126188))

(assert (=> b!1749873 t!162792))

(declare-fun b_and!130769 () Bool)

(assert (= b_and!130763 (and (=> t!162792 result!126192) b_and!130769)))

(declare-fun b_lambda!56231 () Bool)

(assert (=> (not b_lambda!56231) (not b!1749873)))

(declare-fun tb!104909 () Bool)

(declare-fun t!162794 () Bool)

(assert (=> (and b!1749875 (= (toValue!4948 (transformation!3433 (h!24645 rules!3447))) (toValue!4948 (transformation!3433 (rule!5441 (_1!10841 lt!675303))))) t!162794) tb!104909))

(declare-fun result!126194 () Bool)

(assert (=> tb!104909 (= result!126194 (inv!21 (dynLambda!9170 (toValue!4948 (transformation!3433 (rule!5441 (_1!10841 lt!675303)))) lt!675314)))))

(declare-fun m!2163111 () Bool)

(assert (=> tb!104909 m!2163111))

(assert (=> b!1749873 t!162794))

(declare-fun b_and!130771 () Bool)

(assert (= b_and!130747 (and (=> t!162794 result!126194) b_and!130771)))

(declare-fun tb!104911 () Bool)

(declare-fun t!162796 () Bool)

(assert (=> (and b!1749852 (= (toValue!4948 (transformation!3433 (rule!5441 token!523))) (toValue!4948 (transformation!3433 (rule!5441 (_1!10841 lt!675303))))) t!162796) tb!104911))

(declare-fun result!126198 () Bool)

(assert (= result!126198 result!126194))

(assert (=> b!1749873 t!162796))

(declare-fun b_and!130773 () Bool)

(assert (= b_and!130751 (and (=> t!162796 result!126198) b_and!130773)))

(declare-fun t!162798 () Bool)

(declare-fun tb!104913 () Bool)

(assert (=> (and b!1749879 (= (toValue!4948 (transformation!3433 rule!422)) (toValue!4948 (transformation!3433 (rule!5441 (_1!10841 lt!675303))))) t!162798) tb!104913))

(declare-fun result!126200 () Bool)

(assert (= result!126200 result!126194))

(assert (=> b!1749873 t!162798))

(declare-fun b_and!130775 () Bool)

(assert (= b_and!130755 (and (=> t!162798 result!126200) b_and!130775)))

(declare-fun m!2163113 () Bool)

(assert (=> b!1749867 m!2163113))

(declare-fun m!2163115 () Bool)

(assert (=> b!1749865 m!2163115))

(declare-fun m!2163117 () Bool)

(assert (=> b!1749873 m!2163117))

(assert (=> b!1749873 m!2163117))

(declare-fun m!2163119 () Bool)

(assert (=> b!1749873 m!2163119))

(assert (=> b!1749873 m!2163119))

(declare-fun m!2163121 () Bool)

(assert (=> b!1749873 m!2163121))

(declare-fun m!2163123 () Bool)

(assert (=> b!1749873 m!2163123))

(declare-fun m!2163125 () Bool)

(assert (=> b!1749862 m!2163125))

(declare-fun m!2163127 () Bool)

(assert (=> b!1749862 m!2163127))

(declare-fun m!2163129 () Bool)

(assert (=> b!1749869 m!2163129))

(declare-fun m!2163131 () Bool)

(assert (=> b!1749868 m!2163131))

(declare-fun m!2163133 () Bool)

(assert (=> b!1749868 m!2163133))

(declare-fun m!2163135 () Bool)

(assert (=> b!1749868 m!2163135))

(declare-fun m!2163137 () Bool)

(assert (=> b!1749868 m!2163137))

(declare-fun m!2163139 () Bool)

(assert (=> b!1749871 m!2163139))

(declare-fun m!2163141 () Bool)

(assert (=> b!1749871 m!2163141))

(declare-fun m!2163143 () Bool)

(assert (=> b!1749871 m!2163143))

(declare-fun m!2163145 () Bool)

(assert (=> b!1749871 m!2163145))

(declare-fun m!2163147 () Bool)

(assert (=> b!1749871 m!2163147))

(declare-fun m!2163149 () Bool)

(assert (=> b!1749871 m!2163149))

(declare-fun m!2163151 () Bool)

(assert (=> b!1749871 m!2163151))

(declare-fun m!2163153 () Bool)

(assert (=> b!1749871 m!2163153))

(declare-fun m!2163155 () Bool)

(assert (=> b!1749871 m!2163155))

(declare-fun m!2163157 () Bool)

(assert (=> b!1749871 m!2163157))

(declare-fun m!2163159 () Bool)

(assert (=> b!1749871 m!2163159))

(declare-fun m!2163161 () Bool)

(assert (=> b!1749871 m!2163161))

(declare-fun m!2163163 () Bool)

(assert (=> b!1749871 m!2163163))

(assert (=> b!1749871 m!2163155))

(declare-fun m!2163165 () Bool)

(assert (=> b!1749871 m!2163165))

(declare-fun m!2163167 () Bool)

(assert (=> b!1749871 m!2163167))

(declare-fun m!2163169 () Bool)

(assert (=> b!1749866 m!2163169))

(declare-fun m!2163171 () Bool)

(assert (=> b!1749866 m!2163171))

(declare-fun m!2163173 () Bool)

(assert (=> b!1749866 m!2163173))

(assert (=> b!1749866 m!2163171))

(declare-fun m!2163175 () Bool)

(assert (=> b!1749866 m!2163175))

(declare-fun m!2163177 () Bool)

(assert (=> b!1749866 m!2163177))

(declare-fun m!2163179 () Bool)

(assert (=> b!1749866 m!2163179))

(declare-fun m!2163181 () Bool)

(assert (=> b!1749866 m!2163181))

(declare-fun m!2163183 () Bool)

(assert (=> b!1749860 m!2163183))

(declare-fun m!2163185 () Bool)

(assert (=> b!1749861 m!2163185))

(declare-fun m!2163187 () Bool)

(assert (=> b!1749861 m!2163187))

(declare-fun m!2163189 () Bool)

(assert (=> b!1749861 m!2163189))

(declare-fun m!2163191 () Bool)

(assert (=> b!1749864 m!2163191))

(declare-fun m!2163193 () Bool)

(assert (=> b!1749864 m!2163193))

(declare-fun m!2163195 () Bool)

(assert (=> b!1749864 m!2163195))

(declare-fun m!2163197 () Bool)

(assert (=> b!1749864 m!2163197))

(assert (=> b!1749864 m!2163195))

(declare-fun m!2163199 () Bool)

(assert (=> b!1749864 m!2163199))

(declare-fun m!2163201 () Bool)

(assert (=> b!1749859 m!2163201))

(declare-fun m!2163203 () Bool)

(assert (=> start!172546 m!2163203))

(declare-fun m!2163205 () Bool)

(assert (=> b!1749851 m!2163205))

(declare-fun m!2163207 () Bool)

(assert (=> b!1749880 m!2163207))

(declare-fun m!2163209 () Bool)

(assert (=> b!1749880 m!2163209))

(declare-fun m!2163211 () Bool)

(assert (=> b!1749880 m!2163211))

(declare-fun m!2163213 () Bool)

(assert (=> b!1749880 m!2163213))

(declare-fun m!2163215 () Bool)

(assert (=> b!1749880 m!2163215))

(declare-fun m!2163217 () Bool)

(assert (=> b!1749880 m!2163217))

(declare-fun m!2163219 () Bool)

(assert (=> b!1749880 m!2163219))

(declare-fun m!2163221 () Bool)

(assert (=> b!1749880 m!2163221))

(declare-fun m!2163223 () Bool)

(assert (=> b!1749880 m!2163223))

(assert (=> b!1749880 m!2163215))

(declare-fun m!2163225 () Bool)

(assert (=> b!1749880 m!2163225))

(declare-fun m!2163227 () Bool)

(assert (=> b!1749880 m!2163227))

(declare-fun m!2163229 () Bool)

(assert (=> b!1749855 m!2163229))

(declare-fun m!2163231 () Bool)

(assert (=> b!1749848 m!2163231))

(declare-fun m!2163233 () Bool)

(assert (=> b!1749848 m!2163233))

(declare-fun m!2163235 () Bool)

(assert (=> b!1749878 m!2163235))

(declare-fun m!2163237 () Bool)

(assert (=> b!1749878 m!2163237))

(declare-fun m!2163239 () Bool)

(assert (=> b!1749876 m!2163239))

(declare-fun m!2163241 () Bool)

(assert (=> b!1749876 m!2163241))

(declare-fun m!2163243 () Bool)

(assert (=> b!1749876 m!2163243))

(declare-fun m!2163245 () Bool)

(assert (=> b!1749876 m!2163245))

(declare-fun m!2163247 () Bool)

(assert (=> b!1749863 m!2163247))

(assert (=> b!1749877 m!2163145))

(assert (=> b!1749877 m!2163145))

(declare-fun m!2163249 () Bool)

(assert (=> b!1749877 m!2163249))

(assert (=> b!1749877 m!2163249))

(declare-fun m!2163251 () Bool)

(assert (=> b!1749877 m!2163251))

(declare-fun m!2163253 () Bool)

(assert (=> b!1749877 m!2163253))

(declare-fun m!2163255 () Bool)

(assert (=> b!1749858 m!2163255))

(declare-fun m!2163257 () Bool)

(assert (=> b!1749858 m!2163257))

(declare-fun m!2163259 () Bool)

(assert (=> b!1749870 m!2163259))

(declare-fun m!2163261 () Bool)

(assert (=> b!1749870 m!2163261))

(declare-fun m!2163263 () Bool)

(assert (=> b!1749870 m!2163263))

(declare-fun m!2163265 () Bool)

(assert (=> b!1749850 m!2163265))

(declare-fun m!2163267 () Bool)

(assert (=> b!1749853 m!2163267))

(check-sat (not b!1749898) (not b!1749861) (not b!1749865) (not tb!104897) (not b!1749876) b_and!130767 (not tb!104903) (not b!1749877) (not b!1749867) (not b_lambda!56227) (not b_lambda!56229) (not b_next!48947) (not b!1749858) (not b!1749868) (not b!1749881) (not b!1749897) (not b!1749869) b_and!130771 (not b!1749855) (not b!1749848) (not b!1749871) (not b!1749860) b_and!130769 (not b!1749863) tp_is_empty!7765 (not b!1749866) (not b_lambda!56231) (not b!1749859) (not b_next!48945) (not b!1749862) (not b!1749850) (not tb!104909) (not b!1749874) (not start!172546) (not b_next!48939) b_and!130773 (not b!1749873) (not b_next!48943) (not b!1749878) (not b!1749880) (not b!1749853) (not b!1749864) (not b!1749870) b_and!130765 (not b_next!48949) b_and!130775 (not b_next!48941))
(check-sat b_and!130771 b_and!130767 b_and!130769 (not b_next!48945) (not b_next!48939) b_and!130773 (not b_next!48947) (not b_next!48943) b_and!130765 (not b_next!48949) b_and!130775 (not b_next!48941))
